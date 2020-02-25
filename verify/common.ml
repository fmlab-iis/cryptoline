
open Ast.Cryptoline
open Qfbv.Common
open Qfbv.Std
open Options.Std

type round_result =
  Solved of result
| Unfinished of (int * instr * bexp) list

type var_order_calculation = BeforeRewriting | AfterRewriting
let var_order_calculation = AfterRewriting
let _unused_calculation = BeforeRewriting

type 'a gen = More of ('a * (unit -> 'a gen))
type var_gen = unit -> string gen

let gen_var gen =
  match gen() with
  | More (v, cont) -> (v, cont)



(** Conversion from range specifications to QFBV. *)

let exp_var v = Var v

let exp_const w n = Const (w, n)

let exp_atomic a =
  match a with
  | Avar v -> exp_var v
  | Aconst (ty, n) -> exp_const (size_of_typ ty) n

let exp_carry n c =
  ZeroExtend (1, n - 1, exp_atomic c)

let rec exp_rexp e =
  match e with
  | Rvar v -> Var v
  | Rconst (w, n) -> Const (w, n)
  | Runop (w, op, e) ->
     (match op with
      | Rnegb -> Neg (w, exp_rexp e)
      | Rnotb -> Not (w, exp_rexp e))
  | Rbinop (w, op, e1, e2) ->
     (match op with
      | Radd -> Add (w, exp_rexp e1, exp_rexp e2)
      | Rsub -> Sub (w, exp_rexp e1, exp_rexp e2)
      | Rmul -> Mul (w, exp_rexp e1, exp_rexp e2)
      | Rumod -> Mod (w, exp_rexp e1, exp_rexp e2)
      | Rsrem -> Srem (w, exp_rexp e1, exp_rexp e2)
      | Rsmod -> Smod (w, exp_rexp e1, exp_rexp e2)
      | Randb -> And (w, exp_rexp e1, exp_rexp e2)
      | Rorb -> Or (w, exp_rexp e1, exp_rexp e2)
      | Rxorb -> Xor (w, exp_rexp e1, exp_rexp e2))
  | Ruext (w, e, i) -> ZeroExtend (w, i, exp_rexp e)
  | Rsext (w, e, i) -> SignExtend (w, i, exp_rexp e)

let rec bexp_rbexp e =
  match e with
  | Rtrue -> True
  | Req (w, e1, e2) -> Eq (w, exp_rexp e1, exp_rexp e2)
  | Rcmp (w, op, e1, e2) ->
    (match op with
     | Rult -> Ult (w, exp_rexp e1, exp_rexp e2)
     | Rule -> Ule (w, exp_rexp e1, exp_rexp e2)
     | Rugt -> Ugt (w, exp_rexp e1, exp_rexp e2)
     | Ruge -> Uge (w, exp_rexp e1, exp_rexp e2)
     | Rslt -> Slt (w, exp_rexp e1, exp_rexp e2)
     | Rsle -> Sle (w, exp_rexp e1, exp_rexp e2)
     | Rsgt -> Sgt (w, exp_rexp e1, exp_rexp e2)
     | Rsge -> Sge (w, exp_rexp e1, exp_rexp e2)
    )
  | Rneg e -> Lneg (bexp_rbexp e)
  | Rand (e1, e2) -> Conj (bexp_rbexp e1, bexp_rbexp e2)
  | Ror (e1, e2) -> Disj (bexp_rbexp e1, bexp_rbexp e2)

let rec split_bexp e =
  match e with
  | Conj (e1, e2) -> (split_bexp e1)@(split_bexp e2)
  | _ -> [e]

let exp_add ?extend:(ext=false) w a1 a2 =
  if ext then
    Add (w + 1,
         ZeroExtend (w, 1, exp_atomic a1),
         ZeroExtend (w, 1, exp_atomic a2))
  else
    Add (w, exp_atomic a1, exp_atomic a2)

let exp_adc ?extend:(ext=false) w a1 a2 y =
  if ext then
    Add (w + 1,
         Add (w + 1,
              ZeroExtend (w, 1, exp_atomic a1),
              ZeroExtend (w, 1, exp_atomic a2)),
         exp_carry (w + 1) y)
  else
    Add (w,
         Add (w,
              exp_atomic a1,
              exp_atomic a2),
         exp_carry w y)

let exp_subc ?extend:(ext=false) w a1 a2 =
  if ext then
    Add(w + 1,
        Add (w + 1,
             ZeroExtend (w, 1, exp_atomic a1),
             ZeroExtend (w, 1, Not (w, exp_atomic a2))),
        Const (w + 1, Z.one))
  else
    Add(w,
        Add (w,
             exp_atomic a1,
             Not (w, exp_atomic a2)),
        Const (w, Z.one))

let exp_subb ?extend:(ext=false) w a1 a2 =
  if ext then
    Sub (w + 1,
         ZeroExtend (w, 1, exp_atomic a1),
         ZeroExtend (w, 1, exp_atomic a2))
  else
    Sub (w, exp_atomic a1, exp_atomic a2)

(*
 * b: borrow, c: carry
 * x - y - b = x + (-y) - b
 *           = x + (not(y) + 1) - b
 *           = x + not(y) + (1 - b)
 *           = x + not(y) + c
 * sbc x y c = x - y - (1 - c)
 *           = x + (-y) - (1 - c)
 *           = x + (not(y) + 1) - 1 + c
 *           = x + not(y) + c
 *)
let exp_sbc ?extend:(ext=false) w a1 a2 y =
  if ext then
    Add (w + 1,
         Add (w + 1,
              ZeroExtend (w, 1, exp_atomic a1),
              ZeroExtend (w, 1, Not(w, exp_atomic a2))),
         exp_carry (w + 1) y)
  else
    Add (w,
         Add (w,
              exp_atomic a1,
              Not(w, exp_atomic a2)),
         exp_carry w y)

let exp_sbb ?extend:(ext=false) w a1 a2 y =
  if ext then
    Sub (w + 1,
         ZeroExtend (w, 1, exp_atomic a1),
         Add(w + 1,
             ZeroExtend (w, 1, exp_atomic a2),
             exp_carry (w + 1) y))
  else
    Sub (w,
         exp_atomic a1,
         Add(w,
             exp_atomic a2,
             exp_carry w y))

let exp_umul ?extend:(ext=false) w a1 a2 =
  if ext then
    Mul (w + w,
         ZeroExtend (w, w, exp_atomic a1),
         ZeroExtend (w, w, exp_atomic a2))
  else
    Mul (w, exp_atomic a1, exp_atomic a2)

let exp_smul ?extend:(ext=false) w a1 a2 =
  if ext then
    Mul (w + w,
         SignExtend (w, w, exp_atomic a1),
         SignExtend (w, w, exp_atomic a2))
  else
    Mul (w, exp_atomic a1, exp_atomic a2)

let exp_cshl w a1 a2 n =
  Shl (w + w,
       Concat (w, w, exp_atomic a1, exp_atomic a2),
       Const (w + w, n))

let bexp_mov v a = Eq (size_of_var v, exp_var v, exp_atomic a)
let bexp_shl v a p =
  let w = size_of_var v in
  Eq (w, exp_var v, Shl (w, exp_atomic a, Const (w, p)))
let bexp_cshl vh vl a1 a2 p =
  let w = size_of_var vh in
  Conj
    (Eq (w,
         exp_var vh,
         High (w, w, exp_cshl w a1 a2 p)),
     Eq (w,
         exp_var vl,
         Lshr (w,
               Low (w, w, exp_cshl w a1 a2 p),
               Const (w, p))))
let bexp_cmov v c a1 a2 =
  let w = size_of_var v in
  let cond = Eq (1, exp_atomic c, exp_const 1 Z.one) in
  Eq (w, exp_var v, Ite (w, cond, exp_atomic a1, exp_atomic a2))
let bexp_add v a1 a2 =
  let w = size_of_var v in
  Eq (w, exp_var v, exp_add ~extend:false w a1 a2)
let bexp_adds c v a1 a2 =
  let w = size_of_var v in
  Conj
    (Eq (1, exp_var c, High (w, 1, exp_add ~extend:true w a1 a2)),
     Eq (w, exp_var v, Low (w, 1, exp_add ~extend:true w a1 a2)))
let bexp_addr c v a1 a2 =
  let w = size_of_var v in
  Conj
    (Eq (1, exp_var c, Const (1, Z.zero)),
     Eq (w, exp_var v, exp_add ~extend:false w a1 a2))
let bexp_adc v a1 a2 y =
  let w = size_of_var v in
  Eq (w, exp_var v, exp_adc ~extend:false w a1 a2 y)
let bexp_adcs c v a1 a2 y =
  let w = size_of_var v in
  Conj
    (Eq (1, exp_var c, High (w, 1, exp_adc ~extend:true w a1 a2 y)),
     Eq (w, exp_var v, Low (w, 1, exp_adc ~extend:true w a1 a2 y)))
let bexp_adcr c v a1 a2 y =
  let w = size_of_var v in
  Conj
    (Eq (1, exp_var c, Const (1, Z.zero)),
     Eq (w, exp_var v, exp_adc ~extend:false w a1 a2 y))
let bexp_sub v a1 a2 =
  let w = size_of_var v in
  Eq (w, exp_var v, exp_subb ~extend:false w a1 a2)
let bexp_subc c v a1 a2 =
  let w = size_of_var v in
  Conj
    (Eq (1, exp_var c, High (w, 1, exp_subc ~extend:true w a1 a2)),
     Eq (w, exp_var v, Low (w, 1, exp_subc ~extend:true w a1 a2)))
let bexp_subb c v a1 a2 =
  let w = size_of_var v in
  Conj
    (Eq (1, exp_var c, High (w, 1, exp_subb ~extend:true w a1 a2)),
     Eq (w, exp_var v, Low (w, 1, exp_subb ~extend:true w a1 a2)))
let bexp_subr c v a1 a2 =
  let w = size_of_var v in
  Conj
    (Eq (1, exp_var c, Const (1, Z.zero)),
     Eq (w, exp_var v, exp_subb ~extend:false w a1 a2))
let bexp_sbc v a1 a2 y =
  let w = size_of_var v in
  Eq (w, exp_var v, exp_sbc ~extend:false w a1 a2 y)
let bexp_sbcs c v a1 a2 y =
  let w = size_of_var v in
  Conj
    (Eq (1, exp_var c, High (w, 1, exp_sbc ~extend:true w a1 a2 y)),
     Eq (w, exp_var v, Low (w, 1, exp_sbc ~extend:true w a1 a2 y)))
let bexp_sbcr c v a1 a2 y =
  let w = size_of_var v in
  Conj
    (Eq (1, exp_var c, Const (1, Z.zero)),
     Eq (w, exp_var v, exp_sbc ~extend:false w a1 a2 y))
let bexp_sbb v a1 a2 y =
  let w = size_of_var v in
  Eq (w, exp_var v, exp_sbb ~extend:false w a1 a2 y)
let bexp_sbbs c v a1 a2 y =
  let w = size_of_var v in
  Conj
    (Eq (1, exp_var c, High (w, 1, exp_sbb ~extend:true w a1 a2 y)),
     Eq (w, exp_var v, Low (w, 1, exp_sbb ~extend:true w a1 a2 y)))
let bexp_sbbr c v a1 a2 y =
  let w = size_of_var v in
  Conj
    (Eq (1, exp_var c, Const (1, Z.zero)),
     Eq (w, exp_var v, exp_sbb ~extend:false w a1 a2 y))
let bexp_mul v a1 a2 =
  let w = size_of_var v in
  Eq (w, exp_var v, exp_umul ~extend:false w a1 a2)
let bexp_muls c v a1 a2 =
  match v.vtyp with
  | Tuint w ->
     Conj
       (Eq (1,
            exp_var c,
            Ite (w,
                 Eq (w, High (w, w, exp_umul ~extend:true w a1 a2), Const (w, Z.zero)),
                 Const (1, Z.zero),
                 Const (1, Z.one))),
        Eq (w,
            exp_var v,
            Low (w, w, exp_umul ~extend:true w a1 a2)))
  | Tsint w ->
     Conj
       (Eq (1,
            exp_var c,
            Ite (1,
                 Eq (w + w,
                     SignExtend (w, w, Low (w, w, exp_smul ~extend:true w a1 a2)),
                     exp_smul ~extend:true w a1 a2),
                 Const (1, Z.zero),
                 Const (1, Z.one))),
        Eq (w,
            exp_var v,
            Low (w, w, exp_smul ~extend:true w a1 a2)))
let bexp_mulr c v a1 a2 =
  let w = size_of_var v in
  Conj
    (Eq (1, exp_var c, Const (1, Z.zero)),
     Eq (w, exp_var v, exp_umul ~extend:false w a1 a2))
let bexp_mull vh vl a1 a2 =
  match vh.vtyp with
  | Tuint w ->
     Conj
       (Eq (w, exp_var vh, High (w, w, exp_umul ~extend:true w a1 a2)),
        Eq (w, exp_var vl, Low (w, w, exp_umul ~extend:true w a1 a2)))
  | Tsint w ->
     Conj
       (Eq (w, exp_var vh, High (w, w, exp_smul ~extend:true w a1 a2)),
        Eq (w, exp_var vl, Low (w, w, exp_smul ~extend:true w a1 a2)))
let bexp_mulj v a1 a2 =
  match v.vtyp with
  | Tuint w ->
     Eq (w,
         exp_var v,
         exp_umul ~extend:true (w / 2) a1 a2)
  | Tsint w ->
     Eq (w,
         exp_var v,
         exp_smul ~extend:true (w / 2) a1 a2)
let bexp_split vh vl a p =
  let p = Z.to_int p in
  match vh.vtyp with
  | Tuint w ->
     Conj
       (Eq (w,
            exp_var vh,
            ZeroExtend (w - p, p, High (p, w - p, exp_atomic a))),
        Eq (w,
            exp_var vl,
            ZeroExtend (p, w - p, Low (p, w - p, exp_atomic a))))
  | Tsint w ->
     Conj
       (Eq (w,
            exp_var vh,
            SignExtend (w - p, p, High (p, w - p, exp_atomic a))),
        Eq (w,
            exp_var vl,
            ZeroExtend (p, w - p, Low (p, w - p, exp_atomic a))))
let bexp_and v a1 a2 =
  let w = size_of_var v in
  Eq (w, exp_var v, And (w, exp_atomic a1, exp_atomic a2))
let bexp_or v a1 a2 =
  let w = size_of_var v in
  Eq (w, exp_var v, Or (w, exp_atomic a1, exp_atomic a2))
let bexp_xor v a1 a2 =
  let w = size_of_var v in
  Eq (w, exp_var v, Xor (w, exp_atomic a1, exp_atomic a2))
let bexp_not v a =
  let w = size_of_var v in
  Eq (w, exp_var v, Not (w, exp_atomic a))
(*
 * - Upcast: do signed or unsigned extension (depending on the source type), and then interpret depending on the destination type
 * - Downcast: discard the most significant bits that are not present in the destination type, and then interpret depending on the destination type
 *)
let bexp_cast v a =
  match v.vtyp, typ_of_atomic a with
  | Tuint wv, Tuint wa
    | Tsint wv, Tuint wa ->
     if wv = wa then Eq (wv, exp_var v, exp_atomic a)
     else if wv < wa then Eq (wv, exp_var v, Extract (wa, wv - 1, 0, exp_atomic a))
     else Eq (wv, exp_var v, ZeroExtend (wa, wv - wa, exp_atomic a))
  | Tuint wv, Tsint wa
    | Tsint wv, Tsint wa ->
     if wv = wa then Eq (wv, exp_var v, exp_atomic a)
     else if wv < wa then Eq (wv, exp_var v, Extract (wa, wv - 1, 0, exp_atomic a))
     else Eq (wv, exp_var v, SignExtend (wa, wv - wa, exp_atomic a))
let bexp_vpc v a = bexp_cast v a
let bexp_join v ah al =
  let w = size_of_var v in
  Eq (w,
      exp_var v,
      Concat (size_of_atomic ah, size_of_atomic al, exp_atomic ah, exp_atomic al))

let bexp_instr i =
  match i with
  | Imov (v, a) -> bexp_mov v a
  | Ishl (v, a, p) -> bexp_shl v a p
  | Icshl (vh, vl, a1, a2, p) -> bexp_cshl vh vl a1 a2 p
  | Inondet _ -> True
  | Icmov (v, c, a1, a2) -> bexp_cmov v c a1 a2
  | Inop -> True
  | Iadd (v, a1, a2) -> bexp_add v a1 a2
  | Iadds (c, v, a1, a2) -> bexp_adds c v a1 a2
  | Iaddr (c, v, a1, a2) -> bexp_addr c v a1 a2
  | Iadc (v, a1, a2, y) -> bexp_adc v a1 a2 y
  | Iadcs (c, v, a1, a2, y) -> bexp_adcs c v a1 a2 y
  | Iadcr (c, v, a1, a2, y) -> bexp_adcr c v a1 a2 y
  | Isub (v, a1, a2) -> bexp_sub v a1 a2
  | Isubc (c, v, a1, a2) -> bexp_subc c v a1 a2
  | Isubb (c, v, a1, a2) -> bexp_subb c v a1 a2
  | Isubr (c, v, a1, a2) -> bexp_subr c v a1 a2
  | Isbc (v, a1, a2, y) -> bexp_sbc v a1 a2 y
  | Isbcs (c, v, a1, a2, y) -> bexp_sbcs c v a1 a2 y
  | Isbcr (c, v, a1, a2, y) -> bexp_sbcr c v a1 a2 y
  | Isbb (v, a1, a2, y) -> bexp_sbb v a1 a2 y
  | Isbbs (c, v, a1, a2, y) -> bexp_sbbs c v a1 a2 y
  | Isbbr (c, v, a1, a2, y) -> bexp_sbbr c v a1 a2 y
  | Imul (v, a1, a2) -> bexp_mul v a1 a2
  | Imuls (c, v, a1, a2) -> bexp_muls c v a1 a2
  | Imulr (c, v, a1, a2) -> bexp_mulr c v a1 a2
  | Imull (vh, vl, a1, a2) -> bexp_mull vh vl a1 a2
  | Imulj (v, a1, a2) -> bexp_mulj v a1 a2
  | Isplit (vh, vl, a, p) -> bexp_split vh vl a p
  | Iand (v, a1, a2) -> bexp_and v a1 a2
  | Ior (v, a1, a2) -> bexp_or v a1 a2
  | Ixor (v, a1, a2) -> bexp_xor v a1 a2
  | Inot (v, a) -> bexp_not v a
  | Icast (v, a) -> bexp_cast v a
  | Ivpc (v, a) -> bexp_vpc v a
  | Ijoin (v, ah, al) -> bexp_join v ah al
  | Iassert _e -> True
  | Iassume e -> bexp_rbexp (rng_bexp e)
  | Iecut (_e, _) -> True (* Ignore the algebraic part when verifying the range part. *)
  | Ircut (_e, _) -> failwith "Internal error: rcut cannot appear in a program when verifying the range part."
  | Ighost (_vs, e) -> bexp_rbexp (rng_bexp e)

let bexp_program p = List.map bexp_instr p



(** Conversion from program safety to QFBV *)

let bexp_atomic_uadd_safe w a1 a2 =
  Lneg (Uaddo (w, exp_atomic a1, exp_atomic a2))

let bexp_atomic_sadd_safe w a1 a2 =
  Lneg (Saddo (w, exp_atomic a1, exp_atomic a2))

let bexp_atomic_uadc_safe w a1 a2 y =
  let a1 = exp_atomic a1 in
  let a2 = exp_atomic a2 in
  let y = exp_carry w y in
  Conj
    (Lneg (Uaddo (w, a2, y)),
     Lneg (Uaddo (w, a1, Add (w, a2, y))))

let bexp_atomic_sadc_safe w a1 a2 y =
  let a1 = exp_atomic a1 in
  let a2 = exp_atomic a2 in
  let y = exp_carry w y in
  Conj
    (Lneg (Saddo (w, a2, y)),
     Lneg (Saddo (w, a1, Add (w, a2, y))))

let bexp_atomic_usub_safe w a1 a2 =
  Lneg (Usubo (w, exp_atomic a1, exp_atomic a2))

let bexp_atomic_ssub_safe w a1 a2 =
  Lneg (Ssubo (w, exp_atomic a1, exp_atomic a2))

let bexp_atomic_usbc_safe w a1 a2 y =
  let a1 = exp_atomic a1 in
  let a2 = exp_atomic a2 in
  let borrow = Sub (w, Const (w, Z.one), exp_carry w y) in
  Conj
    (Lneg (Uaddo (w, a2, borrow)),
     Lneg (Usubo (w, a1, Add (w, a2, borrow))))

let bexp_atomic_ssbc_safe w a1 a2 y =
  let a1 = exp_atomic a1 in
  let a2 = exp_atomic a2 in
  let borrow = Sub (w, Const (w, Z.one), exp_carry w y) in
  Conj
    (Lneg (Saddo (w, a2, borrow)),
     Lneg (Ssubo (w, a1, Add (w, a2, borrow))))

let bexp_atomic_usbb_safe w a1 a2 y =
  let a1 = exp_atomic a1 in
  let a2 = exp_atomic a2 in
  let y = exp_carry w y in
  Conj
    (Lneg (Uaddo (w, a2, y)),
     Lneg (Usubo (w, a1, Add (w, a2, y))))

let bexp_atomic_ssbb_safe w a1 a2 y =
  let a1 = exp_atomic a1 in
  let a2 = exp_atomic a2 in
  let y = exp_carry w y in
  Conj
    (Lneg (Saddo (w, a2, y)),
     Lneg (Ssubo (w, a1, Add (w, a2, y))))

let bexp_atomic_umul_safe w a1 a2 =
  Lneg (Umulo (w, exp_atomic a1, exp_atomic a2))

let bexp_atomic_smul_safe w a1 a2 =
  Lneg (Smulo (w, exp_atomic a1, exp_atomic a2))

let bexp_atomic_ushl_safe w a n =
  let n = Z.to_int n in
  Eq (n,
      High (w - n, n, exp_atomic a),
      Const (n, Z.zero))

let bexp_atomic_sshl_safe w a n =
  let n = Z.to_int n in
  Eq (w,
      SignExtend (w - n, n, Low (w - n, n, exp_atomic a)),
      exp_atomic a)

let bexp_atomic_ucshl_safe w a1 _a2 n =
  Conj
    (Ule (w, Const (w, n), Const (w, Z.of_int w)),
     bexp_atomic_ushl_safe w a1 n)

let bexp_atomic_scshl_safe w a1 _a2 n =
  Conj
    (Ule (w, Const (w, n), Const (w, Z.of_int w)),
     bexp_atomic_sshl_safe w a1 n)

let bexp_vpc_safe v a =
  match v.vtyp, typ_of_atomic a with
  | Tuint wv, Tuint wa ->
     if wv >= wa then True
     else Eq (wa - wv,
              High (wv, wa - wv, exp_atomic a),
              Const (wa - wv, Z.zero))
  | Tsint wv, Tuint wa ->
     if wv > wa then True
     else Eq (wa - wv + 1,
              High (wv - 1, wa - wv + 1, exp_atomic a),
              Const (wa - wv + 1, Z.zero))
  | Tuint wv, Tsint wa ->
     if wv >= wa - 1 then Eq (1, High (wa - 1, 1, exp_atomic a), Const (1, Z.zero))
     else Eq (wa - wv,
              High (wv, wa - wv, exp_atomic a),
              Const (wa - wv, Z.zero))
  | Tsint wv, Tsint wa ->
     if wv >= wa then True
     else Eq (wa,
              SignExtend (wv, wa - wv, Low (wv, wa - wv, exp_atomic a)),
              exp_atomic a)

let bexp_instr_safe i =
  match i with
  | Imov _ -> True
  | Ishl (v, a, n) ->
     (match v.vtyp with
      | Tuint w -> bexp_atomic_ushl_safe w a n
      | Tsint w -> bexp_atomic_sshl_safe w a n)
  | Icshl (vh, _, a1, a2, n) ->
     (match vh.vtyp with
      | Tuint w -> bexp_atomic_ucshl_safe w a1 a2 n
      | Tsint w -> bexp_atomic_scshl_safe w a1 a2 n)
  | Inondet _ -> True
  | Icmov _ -> True
  | Inop -> True
  | Iadd (v, a1, a2) ->
     (match v.vtyp with
      | Tuint w -> bexp_atomic_uadd_safe w a1 a2
      | Tsint w -> bexp_atomic_sadd_safe w a1 a2)
  | Iadds (_, v, a1, a2) ->
     (match v.vtyp with
      | Tuint _w -> True
      | Tsint w -> bexp_atomic_sadd_safe w a1 a2)
  | Iaddr (_, v, a1, a2) ->
     (match v.vtyp with
      | Tuint w -> bexp_atomic_uadd_safe w a1 a2
      | Tsint w -> bexp_atomic_sadd_safe w a1 a2)
  | Iadc (v, a1, a2, y) ->
     (match v.vtyp with
      | Tuint w -> bexp_atomic_uadc_safe w a1 a2 y
      | Tsint w -> bexp_atomic_sadc_safe w a1 a2 y)
  | Iadcs (_, v, a1, a2, y) ->
     (match v.vtyp with
      | Tuint _w -> True
      | Tsint w -> bexp_atomic_sadc_safe w a1 a2 y)
  | Iadcr (_, v, a1, a2, y) ->
     (match v.vtyp with
      | Tuint w -> bexp_atomic_uadc_safe w a1 a2 y
      | Tsint w -> bexp_atomic_sadc_safe w a1 a2 y)
  | Isub (v, a1, a2) ->
     (match v.vtyp with
      | Tuint w -> bexp_atomic_usub_safe w a1 a2
      | Tsint w -> bexp_atomic_ssub_safe w a1 a2)
  | Isubc (_, v, a1, a2) ->
     (match v.vtyp with
      | Tuint _w -> True
      | Tsint w -> bexp_atomic_ssub_safe w a1 a2)
  | Isubb (_, v, a1, a2) ->
     (match v.vtyp with
      | Tuint _w -> True
      | Tsint w -> bexp_atomic_ssub_safe w a1 a2)
  | Isubr (_, v, a1, a2) ->
     (match v.vtyp with
      | Tuint w -> bexp_atomic_usub_safe w a1 a2
      | Tsint w -> bexp_atomic_ssub_safe w a1 a2)
  | Isbc (v, a1, a2, y) ->
     (match v.vtyp with
      | Tuint w -> bexp_atomic_usbc_safe w a1 a2 y
      | Tsint w -> bexp_atomic_ssbc_safe w a1 a2 y)
  | Isbcs (_, v, a1, a2, y) ->
     (match v.vtyp with
      | Tuint _w -> True
      | Tsint w -> bexp_atomic_ssbc_safe w a1 a2 y)
  | Isbcr (_, v, a1, a2, y) ->
     (match v.vtyp with
      | Tuint w -> bexp_atomic_usbc_safe w a1 a2 y
      | Tsint w -> bexp_atomic_ssbc_safe w a1 a2 y)
  | Isbb (v, a1, a2, y) ->
     (match v.vtyp with
      | Tuint w -> bexp_atomic_usbb_safe w a1 a2 y
      | Tsint w -> bexp_atomic_ssbb_safe w a1 a2 y)
  | Isbbs (_, v, a1, a2, y) ->
     (match v.vtyp with
      | Tuint _w -> True
      | Tsint w -> bexp_atomic_ssbb_safe w a1 a2 y)
  | Isbbr (_, v, a1, a2, y) ->
     (match v.vtyp with
      | Tuint w -> bexp_atomic_usbb_safe w a1 a2 y
      | Tsint w -> bexp_atomic_ssbb_safe w a1 a2 y)
  | Imul (v, a1, a2) ->
     (match v.vtyp with
      | Tuint w -> bexp_atomic_umul_safe w a1 a2
      | Tsint w -> bexp_atomic_smul_safe w a1 a2)
  | Imuls (_, _, _a1, _a2) -> True
  | Imulr (_, v, a1, a2) ->
     (match v.vtyp with
      | Tuint w -> bexp_atomic_umul_safe w a1 a2
      | Tsint w -> bexp_atomic_smul_safe w a1 a2)
  | Imull _
    | Imulj _ -> True
  | Isplit _ -> True
  | Iand _ -> True
  | Ior _ -> True
  | Ixor _ -> True
  | Inot _ -> True
  | Icast (_v, _a) -> True
  | Ivpc (v, a) -> bexp_vpc_safe v a
  | Ijoin (_v, _ah, _al) -> True
  | Iassert _ -> True
  | Iassume _ -> True
  | Iecut _ -> True
  | Ircut _ -> True
  | Ighost _ -> True

(* A safety condition to be verified is a tuple (id, instr, cond) *)
let bexp_program_safe_conds p =
  List.mapi (fun id (i, e) -> (id, i, e))
            (List.filter (fun (_i, e) -> e <> True)
                         (List.map (fun i -> (i, bexp_instr_safe i)) p))

let bexp_program_safe p =
  List.fold_left (fun res i -> Conj (res, bexp_instr_safe i)) True p


(** Conversion from algebraic specification to polynomials. *)

let bv2z_atomic a =
  match a with
  | Avar v -> Evar v
  | Aconst (_ty, n) -> Econst n

let bv2z_assign v e = Eeq (evar v, e)
let bv2z_join e h l p = Eeq (eadd l (emul h (econst (e2pow p))), e)
let bv2z_split vh vl e p = bv2z_join e (evar vh) (evar vl) p

let bv2z_cast vgen v a =
  match v.vtyp, typ_of_atomic a with
  | Tuint wv, Tuint wa ->
     if wv >= wa then
       (vgen, [Eeq (evar v, bv2z_atomic a)])
     else
       let (discarded, vgen) = gen_var vgen in
       let discarded = mkvar discarded (uint_t (wa - wv)) in
       (vgen, [bv2z_split discarded v (bv2z_atomic a) wv])
  | Tuint wv, Tsint wa ->
     (* a_sign and discarded have different meanings but the polynomial equation is equivalent. *)
     if wv >= wa then
       let (a_sign, vgen) = gen_var vgen in
       let a_sign = mkvar a_sign bit_t in
       (vgen, [bv2z_join (evar v) (evar a_sign) (bv2z_atomic a) wv])
     else
       let (discarded, vgen) = gen_var vgen in
       let discarded = mkvar discarded (int_t (wa - wv)) in
       (vgen, [bv2z_split discarded v (bv2z_atomic a) wv])
  | Tsint wv, Tuint wa ->
     if wv > wa then
       (vgen, [Eeq (evar v, bv2z_atomic a)])
     else
       let (discarded, vgen) = gen_var vgen in
       let discarded = mkvar discarded (uint_t (wa - wv)) in
       (vgen, [bv2z_split discarded v (bv2z_atomic a) wv])
  | Tsint wv, Tsint wa ->
     if wv >= wa then
       (vgen, [Eeq (evar v, bv2z_atomic a)])
     else
       let (discarded, vgen) = gen_var vgen in
       let discarded = mkvar discarded (int_t (wa - wv)) in
       (vgen, [bv2z_split discarded v (bv2z_atomic a) wv])

let bv2z_vpc vgen v a = (vgen, [Eeq (evar v, bv2z_atomic a)])

(* With c = c^2, we cannot prove c(c - 1) = 0 (mod 2^64). *)
(* With c(c - 1) = 0, we can prove c(c - 1) = 0 (mod 2^64) but c(c - 1) will remain in the generator. *)
let bv2z_is_carry c =
  Eeq (emul (evar c) (esub (evar c) (econst Z.one)), econst Z.zero)

let bv2z_instr vgen i =
  let carry_constr c =
    if !carry_constraint
    then [bv2z_is_carry c]
    else [] in
  match i with
  | Imov (v, a) -> (vgen, [bv2z_assign v (bv2z_atomic a)])
  | Ishl (v, a, n) ->
     (vgen, [bv2z_assign v (emul (bv2z_atomic a) (econst (e2pow (Z.to_int n))))])
  | Icshl (vh, vl, a1, a2, n) ->
     let w = size_of_var vh in
     (vgen, [bv2z_split
               vh vl
               (eadd (emul (bv2z_atomic a1) (econst (e2pow w))) (bv2z_atomic a2))
               (w - (Z.to_int n))])
  | Inondet v ->
     if var_is_bit v then (vgen, carry_constr v)
     else (vgen, [])
  | Icmov (v, c, a1, a2) ->
     (vgen, [bv2z_assign
               v
               (eadd
                  (emul (bv2z_atomic c) (bv2z_atomic a1))
                  (emul (esub (econst Z.one) (bv2z_atomic c)) (bv2z_atomic a2)))])
  | Inop -> (vgen, [])
  | Iadd (v, a1, a2) ->
     (vgen, [bv2z_assign v (eadd (bv2z_atomic a1) (bv2z_atomic a2))])
  | Iadds (c, v, a1, a2) ->
     (match v.vtyp with
      | Tuint w -> (vgen, [bv2z_split c v (eadd (bv2z_atomic a1) (bv2z_atomic a2)) w]
                          @(carry_constr c))
      | Tsint _ -> (vgen, [bv2z_assign v (eadd (bv2z_atomic a1) (bv2z_atomic a2))]))
  | Iaddr (c, v, a1, a2) ->
     (vgen, [bv2z_assign v (eadd (bv2z_atomic a1) (bv2z_atomic a2));
             bv2z_assign c (econst Z.one)])
  | Iadc (v, a1, a2, y) ->
     (vgen, [bv2z_assign v (eadd (eadd (bv2z_atomic a1) (bv2z_atomic a2)) (bv2z_atomic y))])
  | Iadcs (c, v, a1, a2, y) ->
     (match v.vtyp with
      | Tuint w -> (vgen, [bv2z_split c v (eadd (eadd (bv2z_atomic a1) (bv2z_atomic a2)) (bv2z_atomic y)) w]
                          @(carry_constr c))
      | Tsint _ -> (vgen, [bv2z_assign v (eadd (eadd (bv2z_atomic a1) (bv2z_atomic a2)) (bv2z_atomic y))]))
  | Iadcr (c, v, a1, a2, y) ->
     (vgen, [bv2z_assign v (eadd (eadd (bv2z_atomic a1) (bv2z_atomic a2)) (bv2z_atomic y));
             bv2z_assign c (econst Z.zero)])
  | Isub (v, a1, a2) ->
     (vgen, [bv2z_assign v (esub (bv2z_atomic a1) (bv2z_atomic a2))])
  | Isubc (c, v, a1, a2) ->
     (match v.vtyp with
      | Tuint w -> (vgen, [bv2z_join (evar v) (esub (econst Z.one) (evar c)) (esub (bv2z_atomic a1) (bv2z_atomic a2)) w]
                          @(carry_constr c))
      | Tsint _w -> (vgen, [bv2z_assign v (esub (bv2z_atomic a1) (bv2z_atomic a2))]))
  | Isubb (c, v, a1, a2) ->
     (match v.vtyp with
      | Tuint w -> (vgen, [bv2z_join (evar v) (evar c) (esub (bv2z_atomic a1) (bv2z_atomic a2)) w]
                          @(carry_constr c))
      | Tsint _w -> (vgen, [bv2z_assign v (esub (bv2z_atomic a1) (bv2z_atomic a2))]))
  | Isubr (c, v, a1, a2) ->
     (vgen, [bv2z_assign v (esub (bv2z_atomic a1) (bv2z_atomic a2));
             bv2z_assign c (econst Z.zero)])
  | Isbc (v, a1, a2, y) ->
     (vgen, [bv2z_assign v (esub (esub (bv2z_atomic a1) (bv2z_atomic a2)) (esub (econst Z.one) (bv2z_atomic y)))])
  | Isbcs (c, v, a1, a2, y) ->
     (match v.vtyp with
      | Tuint w ->
         (vgen, [bv2z_join (evar v) (esub (econst Z.one) (evar c)) (esub (esub (bv2z_atomic a1) (bv2z_atomic a2)) (esub (econst Z.one) (bv2z_atomic y))) w]
                @(carry_constr c))
      | Tsint _w -> (vgen, [bv2z_assign v (esub (esub (bv2z_atomic a1) (bv2z_atomic a2)) (esub (econst Z.one) (bv2z_atomic y)))]))
  | Isbcr (c, v, a1, a2, y) ->
     (vgen, [bv2z_assign v (esub (esub (bv2z_atomic a1) (bv2z_atomic a2)) (esub (econst Z.one) (bv2z_atomic y)));
             bv2z_assign c (econst Z.zero)])
  | Isbb (v, a1, a2, y) ->
     (vgen, [bv2z_assign v (esub (esub (bv2z_atomic a1) (bv2z_atomic a2)) (bv2z_atomic y))])
  | Isbbs (c, v, a1, a2, y) ->
     (match v.vtyp with
      | Tuint w -> (vgen, [bv2z_join (esub (esub (bv2z_atomic a1) (bv2z_atomic a2)) (bv2z_atomic y)) (eneg (evar c)) (evar v) w]
                          @(carry_constr c))
      | Tsint _w -> (vgen, [bv2z_assign v (esub (esub (bv2z_atomic a1) (bv2z_atomic a2)) (bv2z_atomic y))]))
  | Isbbr (c, v, a1, a2, y) ->
     (vgen, [bv2z_assign v (esub (esub (bv2z_atomic a1) (bv2z_atomic a2)) (bv2z_atomic y));
             bv2z_assign c (econst Z.zero)])
  | Imul (v, a1, a2) ->
     (vgen, [bv2z_assign v (emul (bv2z_atomic a1) (bv2z_atomic a2))])
  | Imuls (_c, v, a1, a2) ->
     (vgen, [bv2z_assign v (emul (bv2z_atomic a1) (bv2z_atomic a2))]) (* how to set c? *)
  | Imulr (c, v, a1, a2) ->
     (vgen, [bv2z_assign v (emul (bv2z_atomic a1) (bv2z_atomic a2));
             bv2z_assign c (econst Z.zero)])
  | Imull (vh, vl, a1, a2) ->
     let w = size_of_var vl in
     (vgen, [bv2z_split vh vl (emul (bv2z_atomic a1) (bv2z_atomic a2)) w])
  | Imulj (v, a1, a2) ->
     (vgen, [bv2z_assign v (emul (bv2z_atomic a1) (bv2z_atomic a2))])
  | Isplit (vh, vl, a, n) -> (vgen, [bv2z_split vh vl (bv2z_atomic a) (Z.to_int n)])
  | Iand _
    | Ior _
    | Ixor _ -> (vgen, [])
  | Inot (v, a) ->
     (match v.vtyp with
      | Tuint w -> (vgen, [bv2z_assign v (esub (econst (Z.sub (e2pow w) Z.one)) (bv2z_atomic a))])
      | Tsint _w -> (vgen, [bv2z_assign v (esub (eneg (bv2z_atomic a)) (econst Z.one))]))
  | Icast (v, a) ->
     bv2z_cast vgen v a
  | Ivpc (v, a) ->
     bv2z_vpc vgen v a
  | Ijoin (v, ah, al) ->
     (vgen,
      [bv2z_join (evar v) (bv2z_atomic ah) (bv2z_atomic al) (size_of_atomic al)])
  | Iassert _e -> (vgen, [])
  | Iassume e -> (vgen, split_eand (eqn_bexp e))
  | Iecut (_e, _) -> failwith "Internal error: ecut cannot appear in a program when verifying the algebraic part."
  | Ircut (_e, _) -> (vgen, []) (* Ignore the range part when verifying the algebraic part. *)
  | Ighost (_, e) -> (vgen, split_eand (eqn_bexp e))

let rec bv2z_program vgen p =
  match p with
  | [] -> (vgen, [])
  | hd::tl ->
    let (vgen, hd) = (bv2z_instr vgen hd) in
    let (vgen, tl) = (bv2z_program vgen tl) in
    (vgen, hd@tl)

type poly_spec =
  { ppre : ebexp;
    pprog : ebexp list;
    ppost : ebexp }

let bv2z_espec vgen s =
  let (vgen, zp) = bv2z_program vgen s.esprog in
  (vgen, { ppre = s.espre;
           pprog = zp;
           ppost = s.espost })

(* Returns the new vgen, created temporary variables, and polynomials.
   We need created temporary variables to quantify them in redlog. *)
let rec polys_of_ebexp vgen e =
  match e with
  | Etrue -> (vgen, [], [])
  | Eeq (e1, e2) when eq_eexp e1 e2 -> (vgen, [], [])
  | Eeq (e, Econst n) when Z.equal n Z.zero -> (vgen, [], [e])
  | Eeq (e1, e2) -> (vgen, [], [esub e1 e2])
  | Eeqmod (e1, e2, m) ->
     let (tmp, vgen) = gen_var vgen in
     let tmp = mkvar tmp (Tuint 0) (* The variable type does not matter *) in
     (vgen, [tmp], [esub (esub e1 e2) (emul (evar tmp) m)])
  | Eand (e1, e2) ->
     let (vgen, tmps1, ps1) = polys_of_ebexp vgen e1 in
     let (vgen, tmps2, ps2) = polys_of_ebexp vgen e2 in
     (vgen, tmps1@tmps2, ps1@ps2)

let get_rewrite_pattern e =
  let rec single_variables e =
    match e with
    | Evar v -> VS.singleton v
    | Econst _ -> VS.empty
    | Eunop (_, e) -> single_variables e
    | Ebinop (op, e1, e2) when op = Eadd || op = Esub -> VS.union (single_variables e1) (single_variables e2)
    | _ -> VS.empty in
  let rec num_occurrence v e =
    match e with
    | Evar x when eq_var x v -> 1
    | Eunop (_, e) -> num_occurrence v e
    | Ebinop (_, e1, e2) -> num_occurrence v e1 + num_occurrence v e2
    | _ -> 0 in
  let rec separate v e pat =
    match e with
    | Evar x when eq_var x v -> pat
    | Eunop (Eneg, e) when VS.mem v (vars_eexp e) -> separate v e (eneg pat)
    | Ebinop (op, e1, e2) ->
       let in1 = VS.mem v (vars_eexp e1) in
       let in2 = VS.mem v (vars_eexp e2) in
       let (has_v, add_pat, pat) =
         match op, in1, in2 with
         | Eadd, true, false -> (e1, eneg e2, pat)
         | Eadd, false, true -> (e2, eneg e1, pat)
         | Esub, true, false -> (e1, e2, pat)
         | Esub, false, true -> (e2, e1, eneg pat)
         | _ -> failwith "Impossible Ebinop case in get_rewrite_pattern." in
       separate v has_v (eadd pat add_pat)
    | _ -> failwith "Impossible case in get_rewrite_pattern." in
  let candidates = VS.filter (fun v -> num_occurrence v e = 1) (single_variables e) in
  if VS.cardinal candidates = 0 then
    None
  else
    let v = VS.min_elt candidates in
    let pat = separate v e (econst Z.zero) in
    let pat = simplify_eexp pat in
    Some (v, pat)

exception RewriteSeparationException

let get_rewrite_pattern' e others =
  let rec num_occurrence sub e =
    if eq_eexp sub e then 1
    else match e with
         | Eunop (_, e) -> num_occurrence sub e
         | Ebinop (_, e1, e2) -> num_occurrence sub e1 + num_occurrence sub e2
         | _ -> 0 in
  let vars_disjoint_except_eq sub e =
    let vars_sub = vars_eexp sub in
    let rec helper e =
      if eq_eexp sub e then true
      else match e with
           | Evar v -> not (VS.mem v vars_sub)
           | Eunop (_, e) -> helper e
           | Ebinop (_, e1, e2) -> helper e1 && helper e2
           | _ -> true in
    helper e in
  let rec sub_exprs_with_var e =
    if VS.is_empty (vars_eexp e) then []
    else e::(match e with
             | Eunop (_, e) -> sub_exprs_with_var e
             | Ebinop (_, e1, e2) -> (sub_exprs_with_var e1)@(sub_exprs_with_var e2)
             | _ -> []) in
  let rec separate sub e pat =
    if eq_eexp sub e then pat
    else
      match e with
      | Eunop (Eneg, e) when eexp_has_sub e sub -> separate sub e (eneg pat)
      | Ebinop (op, e1, e2) ->
         let in1 = eexp_has_sub e1 sub in
         let in2 = eexp_has_sub e2 sub in
         let (has_sub, add_pat, pat) =
           match op, in1, in2 with
         | Eadd, true, false -> (e1, eneg e2, pat)
         | Eadd, false, true -> (e2, eneg e1, pat)
         | Esub, true, false -> (e1, e2, pat)
         | Esub, false, true -> (e2, e1, eneg pat)
           | _ -> raise RewriteSeparationException in
         separate sub has_sub (eadd pat add_pat)
      | _ -> raise RewriteSeparationException in
  (* Check shorter eexp first. *)
  let sort_by_length es =
    snd (List.split (List.sort (fun (l1, _) (l2, _) -> Pervasives.compare l1 l2)
                               (List.map (fun e -> (len_eexp e, e)) es))) in
  let is_candidate sub = num_occurrence sub e = 1
                         && vars_disjoint_except_eq sub e
                         && List.for_all (vars_disjoint_except_eq sub) others in
  let rec find_separable subs =
    match subs with
    | [] -> None
    | hd::tl when is_candidate hd ->
       (try
         let pat = separate hd e (econst Z.zero) in
         let pat = simplify_eexp pat in
         Some (hd, pat)
       with RewriteSeparationException ->
         find_separable tl)
    | _::tl -> find_separable tl in
  find_separable (sort_by_length (sub_exprs_with_var e))

(* Rewrite equalities *)
let rewrite_assignments ideal p modulus_opt =
  (* There are matching rules for common patterns from program instructions.
     For general cases, use get_rewrite_pattern. Note that predicates from
     cut, assume, and ghost may match the common patterns but they are not
     instructions. Thus in v - e, variable v may occur in e. *)
  let is_assignment e =
    match e, modulus_opt with
    | Econst _, _ -> None
    (* v = e (mod m), e = v (mod m) *)
    | Ebinop (Esub, (Ebinop (Esub, Evar v, e)), (Ebinop (Emul, _, m))), Some modulus
         when eq_eexp m modulus && not (VS.mem v (VS.union (vars_eexp e) (vars_eexp m))) ->
       Some (v, e)
    | Ebinop (Esub, (Ebinop (Esub, e, Evar v)), (Ebinop (Emul, _, m))), Some modulus
         when eq_eexp m modulus && not (VS.mem v (VS.union (vars_eexp e) (vars_eexp m))) ->
       Some (v, e)
    (* v = e, e = v *)
    | Ebinop (Esub, Evar v, e), _ when not (VS.mem v (vars_eexp e)) -> Some (v, e)
    | Ebinop (Esub, e, Evar v), _ when not (VS.mem v (vars_eexp e)) -> Some (v, e)
    (* v + e1 = e2, e2 = v + e1 *)
    | Ebinop (Esub, Ebinop (Eadd, Evar v, e1), e2), _
     when not (VS.mem v (VS.union (vars_eexp e1) (vars_eexp e2))) -> Some (v, esub e2 e1)
    | Ebinop (Esub, e2, Ebinop (Eadd, Evar v, e1)), _
         when not (VS.mem v (VS.union (vars_eexp e1) (vars_eexp e2))) -> Some (v, esub e2 e1)
    | _ -> get_rewrite_pattern e in
  let rec do_rewrite finished ideal p =
    match ideal with
    | [] -> (finished, p)
    | hd::tl ->
       (match is_assignment hd with
        | None -> do_rewrite (hd::finished) tl p
        | Some (v, e) ->
           do_rewrite (List.map (subst_eexp [(v, e)]) finished)
             (List.map (subst_eexp [(v, e)]) tl)
             (subst_eexp [(v, e)] p)) in
  let (finished, p) = do_rewrite [] ideal p in
  (List.rev finished, p)

let rewrite_assignments' ideal p modulus_opt =
  let is_assignment e others =
    match e, modulus_opt with
    | Econst _, _ -> None
    (* v = e (mod m), e = v (mod m) *)
    | Ebinop (Esub, (Ebinop (Esub, Evar v, e)), (Ebinop (Emul, _, m))), Some modulus
         when eq_eexp m modulus && not (VS.mem v (VS.union (vars_eexp e) (vars_eexp m))) ->
       Some (evar v, e)
    | Ebinop (Esub, (Ebinop (Esub, e, Evar v)), (Ebinop (Emul, _, m))), Some modulus
         when eq_eexp m modulus && not (VS.mem v (VS.union (vars_eexp e) (vars_eexp m))) ->
       Some (evar v, e)
    (* v = e, e = v *)
    | Ebinop (Esub, Evar v, e), _ when not (VS.mem v (vars_eexp e)) -> Some (evar v, e)
    | Ebinop (Esub, e, Evar v), _ when not (VS.mem v (vars_eexp e)) -> Some (evar v, e)
    (* v + e1 = e2, e2 = v + e1 *)
    | Ebinop (Esub, Ebinop (Eadd, Evar v, e1), e2), _
     when not (VS.mem v (VS.union (vars_eexp e1) (vars_eexp e2))) -> Some (evar v, esub e2 e1)
    | Ebinop (Esub, e2, Ebinop (Eadd, Evar v, e1)), _
         when not (VS.mem v (VS.union (vars_eexp e1) (vars_eexp e2))) -> Some (evar v, esub e2 e1)
    | _ -> get_rewrite_pattern' e others in
  let rec do_rewrite finished ideal p =
    match ideal with
    | [] -> (finished, p)
    | hd::tl ->
       (match is_assignment hd (p::finished@tl) with
        | None -> do_rewrite (hd::finished) tl p
        | Some (sub, e) ->
           do_rewrite (List.map (replace_eexp [(sub, e)]) finished)
                      (List.map (replace_eexp [(sub, e)]) tl)
                      (replace_eexp [(sub, e)] p)) in
  let (finished, p) = do_rewrite [] ideal p in
  (List.rev finished, p)

(* Used for redlog output *)
let rewrite_assignments_ebexp ideal p =
  let is_assignment e =
    match e with
    | Ebinop (Esub, Evar v, e) | Ebinop (Esub, e, Evar v) -> Some (v, e)
    | Ebinop (Esub, Ebinop (Eadd, Evar v, e1), e2)
      | Ebinop (Esub, e2, Ebinop (Eadd, Evar v, e1)) -> Some (v, esub e2 e1)
    | _ -> get_rewrite_pattern e in
  let rec do_rewrite finished ideal p =
    match ideal with
    | [] -> (finished, p)
    | hd::tl ->
       (match is_assignment hd with
        | None -> do_rewrite (hd::finished) tl p
        | Some (v, e) -> do_rewrite (List.map (subst_eexp [(v, e)]) finished)
                                    (List.map (subst_eexp [(v, e)]) tl)
                                    (subst_ebexp [(v, e)] p)) in
  let (finished, p) = do_rewrite [] ideal p in
  (List.rev finished, p)

let vars_in_appearing_order es =
  let add_var (vlist, vset) v =
    if VS.mem v vset then (vlist, vset)
    else (v::vlist, VS.add v vset) in
  let rec add_vars vpair e =
    match e with
    | Evar v -> add_var vpair v
    | Econst _ -> vpair
    | Eunop (_, e) -> add_vars vpair e
    | Ebinop (_, e1, e2) -> add_vars (add_vars vpair e1) e2 in
  let (vlist_rev, _vset) = List.fold_left (fun vpair e -> add_vars vpair e) ([], VS.empty) es in
  List.rev vlist_rev

let vars_in_lex_order es =
  VS.elements (List.fold_left (fun res e -> VS.union res (vars_eexp e)) VS.empty es)

let vars_in_order es =
  match !variable_ordering with
  | LexOrder -> vars_in_lex_order es
  | AppearingOrder -> vars_in_appearing_order es
  | RevLexOrder -> List.rev (vars_in_lex_order es)
  | RevAppearingOrder -> List.rev (vars_in_appearing_order es)

let polys_of_espec vgen s =
  (* Convert to polynomial equations. *)
  let (vgen, pspec) = bv2z_espec vgen s in
  (* Convert premises to polynomials. *)
  let (vgen, generator_ps) =
    let (vgen, _, pre_ps) = polys_of_ebexp vgen pspec.ppre in
    let (vgen, prog_ps) =
      List.fold_left
        (fun (vgen, polys) e ->
          let (vgen', _, polys') = polys_of_ebexp vgen e in
          (vgen', polys@polys')
        )
        (vgen, [])
        pspec.pprog in
    (vgen, pre_ps@prog_ps) in
  let do_rewriting generator_ps p modulus_opt =
    if !apply_rewriting
    then (if !polys_rewrite_replace_eexp then rewrite_assignments' else rewrite_assignments) generator_ps p modulus_opt
    else (generator_ps, p) in
  let rec convert generator_ps post =
    match post with
    | Etrue -> []
    | Eeq (e1, e2) ->
       let (ideal, p) = do_rewriting generator_ps (esub e1 e2) None in
       let vars = vars_in_order
                    (match var_order_calculation with
                     | BeforeRewriting -> generator_ps@[p]
                     | AfterRewriting -> ideal@[p]) in
       [(post, vars, ideal, p)]
    | Eeqmod (e1, e2, m) ->
       let (ideal, p) = do_rewriting (m::generator_ps) (esub e1 e2) (Some m) in
       let vars = vars_in_order
                    (match var_order_calculation with
                     | BeforeRewriting -> generator_ps@[p]
                     | AfterRewriting -> ideal@[p]) in
       [(post, vars, ideal, p)]
    | Eand (e1, e2) -> convert generator_ps e1 @ convert generator_ps e2 in
  (vgen, convert generator_ps pspec.ppost)


(** Solve poly_spec with Groebner basis *)

let rec singular_of_eexp e =
  match e with
  | Evar v -> string_of_var v
  | Econst n -> Z.to_string n
  | Eunop (op, e) ->
     symbol_of_eunop op ^ (if is_eexp_atomic e then singular_of_eexp e else " (" ^ singular_of_eexp e ^ ")")
  | Ebinop (op, e1, e2) ->
     (if eexp_ebinop_open e1 op then singular_of_eexp e1 else "(" ^ singular_of_eexp e1 ^ ")")
     ^ " " ^ symbol_of_ebinop op ^ " "
     ^ (if ebinop_eexp_open op e2 then singular_of_eexp e2 else "(" ^ singular_of_eexp e2 ^ ")")

let rec sage_of_eexp e =
  match e with
  | Evar v -> string_of_var v
  | Econst n -> Z.to_string n
  | Eunop (op, e) ->
     symbol_of_eunop op ^ (if is_eexp_atomic e then sage_of_eexp e else " (" ^ sage_of_eexp e ^ ")")
  | Ebinop (op, e1, e2) ->
     (if eexp_ebinop_open e1 op then sage_of_eexp e1 else "(" ^ sage_of_eexp e1 ^ ")")
     ^ " " ^ symbol_of_ebinop op ^ " "
     ^ (if ebinop_eexp_open op e2 then sage_of_eexp e2 else "(" ^ sage_of_eexp e2 ^ ")")

let rec magma_of_eexp e =
  match e with
  | Evar v -> string_of_var v
  | Econst n -> Z.to_string n
  | Eunop (op, e) ->
     symbol_of_eunop op ^ (if is_eexp_atomic e then magma_of_eexp e else " (" ^ magma_of_eexp e ^ ")")
  | Ebinop (op, e1, e2) ->
     (if is_eexp_atomic e1 then magma_of_eexp e1 else "(" ^ magma_of_eexp e1 ^ ")")
     ^ " " ^ symbol_of_ebinop op ^ " "
     ^ (if is_eexp_atomic e2 then magma_of_eexp e2 else "(" ^ magma_of_eexp e2 ^ ")")

(* Underscore is not allowed in variable names in Mathematica. *)
let mathematica_of_var v = "v[\"" ^ string_of_var v ^ "\"]"
let rec mathematica_of_eexp e =
  match e with
  | Evar v -> mathematica_of_var v
  | Econst n -> Z.to_string n
  | Eunop (op, e) ->
     symbol_of_eunop op ^ (if is_eexp_atomic e then mathematica_of_eexp e else " (" ^ mathematica_of_eexp e ^ ")")
  | Ebinop (op, e1, e2) ->
     (if eexp_ebinop_open e1 op then mathematica_of_eexp e1 else "(" ^ mathematica_of_eexp e1 ^ ")")
     ^ " " ^ symbol_of_ebinop op ^ " "
     ^ (if ebinop_eexp_open op e2 then mathematica_of_eexp e2 else "(" ^ mathematica_of_eexp e2 ^ ")")

let macaulay2_of_var v = String.map (fun c -> if c = '_' then '\'' else c) (string_of_var v)
let rec macaulay2_of_eexp e =
  match e with
  | Evar v -> macaulay2_of_var v
  | Econst n -> Z.to_string n
  | Eunop (op, e) ->
     symbol_of_eunop op ^ (if is_eexp_atomic e then macaulay2_of_eexp e else " (" ^ macaulay2_of_eexp e ^ ")")
  | Ebinop (op, e1, e2) ->
     (if eexp_ebinop_open e1 op then macaulay2_of_eexp e1 else "(" ^ macaulay2_of_eexp e1 ^ ")")
     ^ " " ^ symbol_of_ebinop op ^ " "
     ^ (if ebinop_eexp_open op e2 then macaulay2_of_eexp e2 else "(" ^ macaulay2_of_eexp e2 ^ ")")

(* Slice at the polynomial level. Currently functions with names slice_*_ssa in Cryptoline are used. *)
let _slice_polys ideal p =
  let vars = eexp_vars_sat (vars_eexp p) ideal in
  let rec helper res es =
    match es with
    | [] -> res
    | hd::tl ->
       let vs = vars_eexp hd in
       if VS.is_empty vs || not (VS.is_empty (VS.inter vs vars)) then helper (hd::res) tl
       else helper res tl in
  helper [] (List.rev ideal)

(* Slice a precondition and a program according to a safety condition. *)
let slice_for_safety f p safety_cond =
  let vars = program_pre_vars_sat (vars_bexp safety_cond) rbexp_vars_sat f p in
  (slice_rbexp vars f, slice_program_ssa vars p)

(*
 * Convert a precondition and a program to QFBV bexps according to a safety condition.
 * The precondition and the program may be sliced.
 *)
let safety_assumptions f p safety_cond =
  let (f, p) =
    if !apply_slicing then slice_for_safety f p safety_cond
    else (f, p) in
  (bexp_rbexp f)::(bexp_program p)
