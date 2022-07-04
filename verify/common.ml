
open Ast.Cryptoline
open Qfbv.Common
open Options.Std

type round_result =
  Solved of Qfbv.Common.result
| Unfinished of (int * instr * Qfbv.Common.bexp) list

type 'a gen = More of ('a * (unit -> 'a gen))
type var_gen = unit -> string gen

let gen_var gen =
  match gen() with
  | More (v, cont) -> (v, cont)

let rec make_vgen v i = fun () -> More (v ^ "_" ^ string_of_int i, make_vgen v (i + 1))

let vgen_of_spec s =  make_vgen (new_name (VS.fold (fun v vs -> SS.add (string_of_var v) vs) (vars_spec s) SS.empty)) 0
let vgen_of_rspec s =  make_vgen (new_name (VS.fold (fun v vs -> SS.add (string_of_var v) vs) (vars_rspec s) SS.empty)) 0
let vgen_of_espec s =  make_vgen (new_name (VS.fold (fun v vs -> SS.add (string_of_var v) vs) (vars_espec s) SS.empty)) 0


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
      | Rxorb -> Xor (w, exp_rexp e1, exp_rexp e2)
      | Rshl -> Shl (w, exp_rexp e1, exp_rexp e2)
      | Rlshr -> Lshr (w, exp_rexp e1, exp_rexp e2)
      | Rashr -> Ashr (w, exp_rexp e1, exp_rexp e2))
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
let bexp_shls l v a p =
  let w = size_of_var v in
  let ip = Z.to_int p in
  Conj
    (Eq (ip, exp_var l, High (w - ip, ip, exp_atomic a)),
     Eq (w, exp_var v, Shl (w, exp_atomic a, Const (w, p))))
let bexp_shr v a p =
  let w = size_of_var v in
  Eq (w, exp_var v, Lshr (w, exp_atomic a, Const (w, p)))
let bexp_shrs v l a p =
  let w = size_of_var v in
  let ip = Z.to_int p in
  Conj
    (Eq (w, exp_var v, Lshr (w, exp_atomic a, Const (w, p))),
     Eq (ip, exp_var l, Low (ip, w - ip, exp_atomic a)))
let bexp_sar v a p =
  let w = size_of_var v in
  Eq (w, exp_var v, Ashr (w, exp_atomic a, Const (w, p)))
let bexp_sars v l a p =
  let w = size_of_var v in
  let ip = Z.to_int p in
  Conj
    (Eq (w, exp_var v, Ashr (w, exp_atomic a, Const (w, p))),
     Eq (ip, exp_var l, Low (ip, w - ip, exp_atomic a)))
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
let bexp_adc v a1 a2 y =
  let w = size_of_var v in
  Eq (w, exp_var v, exp_adc ~extend:false w a1 a2 y)
let bexp_adcs c v a1 a2 y =
  let w = size_of_var v in
  Conj
    (Eq (1, exp_var c, High (w, 1, exp_adc ~extend:true w a1 a2 y)),
     Eq (w, exp_var v, Low (w, 1, exp_adc ~extend:true w a1 a2 y)))
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
let bexp_sbc v a1 a2 y =
  let w = size_of_var v in
  Eq (w, exp_var v, exp_sbc ~extend:false w a1 a2 y)
let bexp_sbcs c v a1 a2 y =
  let w = size_of_var v in
  Conj
    (Eq (1, exp_var c, High (w, 1, exp_sbc ~extend:true w a1 a2 y)),
     Eq (w, exp_var v, Low (w, 1, exp_sbc ~extend:true w a1 a2 y)))
let bexp_sbb v a1 a2 y =
  let w = size_of_var v in
  Eq (w, exp_var v, exp_sbb ~extend:false w a1 a2 y)
let bexp_sbbs c v a1 a2 y =
  let w = size_of_var v in
  Conj
    (Eq (1, exp_var c, High (w, 1, exp_sbb ~extend:true w a1 a2 y)),
     Eq (w, exp_var v, Low (w, 1, exp_sbb ~extend:true w a1 a2 y)))
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
let bexp_cast od v a =
  let bcast =
    match v.vtyp, typ_of_atomic a with
    | Tuint wv, Tuint wa
      | Tsint wv, Tuint wa ->
       if wv = wa then Eq (wv, exp_var v, exp_atomic a)
       else if wv < wa then Eq (wv, exp_var v, Low (wv, wa - wv, exp_atomic a))
       else Eq (wv, exp_var v, ZeroExtend (wa, wv - wa, exp_atomic a))
    | Tuint wv, Tsint wa
      | Tsint wv, Tsint wa ->
       if wv = wa then Eq (wv, exp_var v, exp_atomic a)
       else if wv < wa then Eq (wv, exp_var v, Low (wv, wa - wv, exp_atomic a))
       else Eq (wv, exp_var v, SignExtend (wa, wv - wa, exp_atomic a)) in
  let bextra =
    match od with
    | None -> None
    | Some d ->
       (match v.vtyp, typ_of_atomic a with
        | Tuint wv, Tuint wa ->
           if wv >= wa then Some (Eq (wv - wa, exp_var d, Const (wv - wa, Z.zero)))
           else Some (Eq (wa - wv, exp_var d, High (wv, wa - wv, exp_atomic a)))
        | Tuint wv, Tsint wa ->
           if wv >= wa then Some (Eq (1, exp_var d, High (wa - 1, 1, exp_atomic a)))
           else Some (Eq (wa - wv, exp_var d, High (wv, wa - wv, exp_atomic a)))
        | Tsint wv, Tuint wa ->
           if wv > wa then Some (Eq (wv - wa, exp_var d, Const (wv - wa, Z.zero)))
           else if wv = wa then Some (Eq (1, exp_var d, High (wa - 1, 1, exp_atomic a)))
           else Some (Eq (wa - wv + 1,
                          exp_var d,
                          Add (wa - wv + 1,
                               ZeroExtend (wa - wv, 1, High (wv, wa - wv, exp_atomic a)), (* ZeroExtend is used to avoid overflow *)
                               ZeroExtend (1, wa - wv, High (wv - 1, 1, Low (wv, wa - wv, exp_atomic a))) (* the sign bit of v *)
                  )))
        | Tsint wv, Tsint wa ->
           if wv >= wa then Some (Eq (wv - wa, exp_var d, Const (wv - wa, Z.zero)))
           else Some (Eq (wa - wv + 1,
                          exp_var d,
                          Add (wa - wv + 1,
                               SignExtend (wa - wv, 1, High (wv, wa - wv, exp_atomic a)), (* SignExtend is used to avoid overflow *)
                               ZeroExtend (1, wa - wv, High (wv - 1, 1, Low (wv, wa - wv, exp_atomic a))) (* the sign bit of v *)
                  )))
       )
  in
  match bextra with
  | None -> bcast
  | Some e -> Conj (bcast, e)

let bexp_vpc v a = bexp_cast None v a
let bexp_join v ah al =
  let w = size_of_var v in
  Eq (w,
      exp_var v,
      Concat (size_of_atomic ah, size_of_atomic al, exp_atomic ah, exp_atomic al))

let bexp_instr i =
  match i with
  | Imov (v, a) -> bexp_mov v a
  | Ishl (v, a, p) -> bexp_shl v a p
  | Ishls (l, v, a, p) -> bexp_shls l v a p
  | Ishr (v, a, p) -> bexp_shr v a p
  | Ishrs (v, l, a, p) -> bexp_shrs v l a p
  | Isar (v, a, p) -> bexp_sar v a p
  | Isars (v, l, a, p) -> bexp_sars v l a p
  | Icshl (vh, vl, a1, a2, p) -> bexp_cshl vh vl a1 a2 p
  | Inondet _ -> True
  | Icmov (v, c, a1, a2) -> bexp_cmov v c a1 a2
  | Inop -> True
  | Iadd (v, a1, a2) -> bexp_add v a1 a2
  | Iadds (c, v, a1, a2) -> bexp_adds c v a1 a2
  | Iadc (v, a1, a2, y) -> bexp_adc v a1 a2 y
  | Iadcs (c, v, a1, a2, y) -> bexp_adcs c v a1 a2 y
  | Isub (v, a1, a2) -> bexp_sub v a1 a2
  | Isubc (c, v, a1, a2) -> bexp_subc c v a1 a2
  | Isubb (c, v, a1, a2) -> bexp_subb c v a1 a2
  | Isbc (v, a1, a2, y) -> bexp_sbc v a1 a2 y
  | Isbcs (c, v, a1, a2, y) -> bexp_sbcs c v a1 a2 y
  | Isbb (v, a1, a2, y) -> bexp_sbb v a1 a2 y
  | Isbbs (c, v, a1, a2, y) -> bexp_sbbs c v a1 a2 y
  | Imul (v, a1, a2) -> bexp_mul v a1 a2
  | Imuls (c, v, a1, a2) -> bexp_muls c v a1 a2
  | Imull (vh, vl, a1, a2) -> bexp_mull vh vl a1 a2
  | Imulj (v, a1, a2) -> bexp_mulj v a1 a2
  | Isplit (vh, vl, a, p) -> bexp_split vh vl a p
  | Iand (v, a1, a2) -> bexp_and v a1 a2
  | Ior (v, a1, a2) -> bexp_or v a1 a2
  | Ixor (v, a1, a2) -> bexp_xor v a1 a2
  | Inot (v, a) -> bexp_not v a
  | Icast (t, v, a) -> bexp_cast t v a
  | Ivpc (v, a) -> bexp_vpc v a
  | Ijoin (v, ah, al) -> bexp_join v ah al
  | Iassert _e -> True
  | Iassume e -> bexp_rbexp (rng_bexp e)
  | Icut (_, _hd::_tl) -> failwith "Internal error: Icut with range properties cannot appear in a program when verifying the range part."
  | Icut _ -> True (* Ignore other cases of Icut. *)
  | Ighost (_vs, e) -> bexp_rbexp (rng_bexp e)

let bexp_program p = List.rev (List.rev_map bexp_instr p)



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

let bexp_atomic_ushr_safe w a n =
  let n = Z.to_int n in
  Eq (n,
      Low (n, w - n, exp_atomic a),
      Const (n, Z.zero))

let bexp_atomic_sshr_safe w a n =
  let n = Z.to_int n in
  Conj
    (Eq (1, High (w - 1, 1, exp_atomic a), Const (1, Z.zero)),
     Eq (w, Low (n, w - n, exp_atomic a), Const (n, Z.zero)))

let bexp_atomic_usar_safe w a n =
  let n = Z.to_int n in
  Conj
    (Eq (n, Low (n, w - n, exp_atomic a), Const (n, Z.zero)),
     Eq (1, High (w - 1, 1, exp_atomic a), Const (1, Z.zero)))

let bexp_atomic_ssar_safe w a n =
  let n = Z.to_int n in
  Eq (n,
      Low (n, w - n, exp_atomic a),
      Const (n, Z.zero))

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
  | Ishls _ -> True
  | Ishr (v, a, n) ->
     (match v.vtyp with
      | Tuint w -> bexp_atomic_ushr_safe w a n
      | Tsint w -> bexp_atomic_sshr_safe w a n)
  | Ishrs _ -> True
  | Isar (v, a, n) ->
     (match v.vtyp with
      | Tuint w -> bexp_atomic_usar_safe w a n
      | Tsint w -> bexp_atomic_ssar_safe w a n)
  | Isars _ -> True
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
  | Iadds _ -> True
  | Iadc (v, a1, a2, y) ->
     (match v.vtyp with
      | Tuint w -> bexp_atomic_uadc_safe w a1 a2 y
      | Tsint w -> bexp_atomic_sadc_safe w a1 a2 y)
  | Iadcs _ -> True
  | Isub (v, a1, a2) ->
     (match v.vtyp with
      | Tuint w -> bexp_atomic_usub_safe w a1 a2
      | Tsint w -> bexp_atomic_ssub_safe w a1 a2)
  | Isubc _ -> True
  | Isubb _ -> True
  | Isbc (v, a1, a2, y) ->
     (match v.vtyp with
      | Tuint w -> bexp_atomic_usbc_safe w a1 a2 y
      | Tsint w -> bexp_atomic_ssbc_safe w a1 a2 y)
  | Isbcs _ -> True
  | Isbb (v, a1, a2, y) ->
     (match v.vtyp with
      | Tuint w -> bexp_atomic_usbb_safe w a1 a2 y
      | Tsint w -> bexp_atomic_ssbb_safe w a1 a2 y)
  | Isbbs _ -> True
  | Imul (v, a1, a2) ->
     (match v.vtyp with
      | Tuint w -> bexp_atomic_umul_safe w a1 a2
      | Tsint w -> bexp_atomic_smul_safe w a1 a2)
  | Imuls _ -> True
  | Imull _
    | Imulj _ -> True
  | Isplit _ -> True
  | Iand _ -> True
  | Ior _ -> True
  | Ixor _ -> True
  | Inot _ -> True
  | Icast (_, _v, _a) -> True
  | Ivpc (v, a) -> bexp_vpc_safe v a
  | Ijoin (_v, _ah, _al) -> True
  | Iassert _ -> True
  | Iassume _ -> True
  | Icut _ -> True
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

let bv2z_cast vgen ot v a =
  match v.vtyp, typ_of_atomic a with
  | Tuint wv, Tuint wa ->
     if wv >= wa then
       (vgen, [Eeq (evar v, bv2z_atomic a)])
     else
       let (discarded, vgen) =
         match ot with
         | None ->
            let (discarded, vgen) = gen_var vgen in
            let discarded = mkvar ~newvid:true discarded (uint_t (wa - wv)) in
            (discarded, vgen)
         | Some t -> (t, vgen) in
       (vgen, [bv2z_split discarded v (bv2z_atomic a) wv])
  | Tuint wv, Tsint wa ->
     (* a_sign and discarded have different meanings but the polynomial equation is equivalent. *)
     if wv >= wa then
       let (a_sign, vgen) =
         match ot with
         | None ->
            let (a_sign, vgen) = gen_var vgen in
            let a_sign = mkvar ~newvid:true a_sign bit_t in
            (a_sign, vgen)
         | Some t -> (t, vgen) in
       (vgen, [bv2z_join (evar v) (evar a_sign) (bv2z_atomic a) wv])
     else
       let (discarded, vgen) =
         match ot with
         | None ->
            let (discarded, vgen) = gen_var vgen in
            let discarded = mkvar ~newvid:true discarded (int_t (wa - wv)) in
            (discarded, vgen)
         | Some t -> (t, vgen) in
       (vgen, [bv2z_split discarded v (bv2z_atomic a) wv])
  | Tsint wv, Tuint wa ->
     if wv > wa then
       (vgen, [Eeq (evar v, bv2z_atomic a)])
     else
       let (discarded, vgen) =
         match ot with
         | None ->
            let (discarded, vgen) = gen_var vgen in
            let discarded = mkvar ~newvid:true discarded (uint_t (wa - wv + 1)) in
            (discarded, vgen)
         | Some t -> (t, vgen) in
       (vgen, [bv2z_split discarded v (bv2z_atomic a) wv])
  | Tsint wv, Tsint wa ->
     if wv >= wa then
       (vgen, [Eeq (evar v, bv2z_atomic a)])
     else
       let (discarded, vgen) =
         match ot with
         | None	->
            let (discarded, vgen) = gen_var vgen in
            let discarded = mkvar ~newvid:true discarded (int_t (wa - wv + 1)) in
            (discarded, vgen)
         | Some t -> (t, vgen) in
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
  | Ishls (l, v, a, n) ->
     (match v.vtyp with
      | Tuint w -> (vgen, [eeq
                             (eadd (evar v) (emul (evar l) (econst (e2pow w))))
                             (emul (bv2z_atomic a) (econst (e2pow (Z.to_int n))))
                   ])
      | Tsint w -> let (discarded, vgen) = gen_var vgen in
                   let discarded = mkvar ~newvid:true discarded (int_t (Z.to_int n)) in
                   (vgen, [eeq
                             (eadds [evar v; emul (evar discarded) (econst (e2pow w)); emul (evar l) (econst (e2pow w))])
                             (emul (bv2z_atomic a) (econst (e2pow (Z.to_int n))))
                   ])
     )
  | Ishr (v, a, n) ->
     if atomic_is_const a then let a_shifted = Z.shift_right (const_of_atomic a) (Z.to_int n) in
                               (vgen, [eeq (evar v) (econst a_shifted)])
     else (vgen, [eeq (emul (evar v) (econst (e2pow (Z.to_int n)))) (bv2z_atomic a)])
  | Ishrs (v, l, a, n) ->
     (match v.vtyp with
      | Tuint _ -> (vgen, [eeq (limbs (Z.to_int n) [evar l; evar v]) (bv2z_atomic a)])
      | Tsint w -> let (discarded, vgen) = gen_var vgen in
                   let discarded = mkvar ~newvid:true discarded (int_t (Z.to_int n)) in
                   (vgen, [eeq
                             (eadd (limbs (Z.to_int n) [evar l; evar v]) (emul (evar discarded) (econst (e2pow w))))
                             (bv2z_atomic a)
                   ])
     )
  | Isar (v, a, n) ->
     if atomic_is_const a then let a_shifted = Z.shift_right (const_of_atomic a) (Z.to_int n) in
                               (vgen, [eeq (evar v) (econst a_shifted)])
     else (vgen, [eeq (emul (evar v) (econst (e2pow (Z.to_int n)))) (bv2z_atomic a)])
  | Isars (v, l, a, n) ->
     (match v.vtyp with
      | Tuint w -> let (discarded, vgen) = gen_var vgen in
                   let discarded = mkvar ~newvid:true discarded (int_t (Z.to_int n)) in
                   (vgen, [eeq
                             (eadd (limbs (Z.to_int n) [evar l; evar v]) (emul (evar discarded) (econst (e2pow (w - Z.to_int n)))))
                             (bv2z_atomic a)])
      | Tsint _ -> (vgen, [eeq (limbs (Z.to_int n) [evar l; evar v]) (bv2z_atomic a)]))
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
      | Tsint w ->
         let (d, vgen) = gen_var vgen in
         let d = mkvar ~newvid:true d (uint_t 1) in
         (vgen, [eeq (limbs w [evar v; evar d]) (eadd (bv2z_atomic a1) (bv2z_atomic a2))]))
  | Iadc (v, a1, a2, y) ->
     (vgen, [bv2z_assign v (eadd (eadd (bv2z_atomic a1) (bv2z_atomic a2)) (bv2z_atomic y))])
  | Iadcs (c, v, a1, a2, y) ->
     (match v.vtyp with
      | Tuint w -> (vgen, [bv2z_split c v (eadd (eadd (bv2z_atomic a1) (bv2z_atomic a2)) (bv2z_atomic y)) w]
                          @(carry_constr c))
      | Tsint w ->
         let (d, vgen) = gen_var vgen in
         let d = mkvar ~newvid:true d (uint_t 1) in
         (vgen, [eeq (limbs w [evar v; evar d]) (eadd (eadd (bv2z_atomic a1) (bv2z_atomic a2)) (bv2z_atomic y))]))
  | Isub (v, a1, a2) ->
     (vgen, [bv2z_assign v (esub (bv2z_atomic a1) (bv2z_atomic a2))])
  | Isubc (c, v, a1, a2) ->
     (match v.vtyp with
      | Tuint w -> (vgen, [bv2z_join (evar v) (esub (econst Z.one) (evar c)) (esub (bv2z_atomic a1) (bv2z_atomic a2)) w]
                          @(carry_constr c))
      | Tsint w ->
         let (d, vgen) = gen_var vgen in
         let d = mkvar ~newvid:true d (uint_t 1) in
         (vgen, [eeq (limbs w [evar v; evar d]) (esub (bv2z_atomic a1) (bv2z_atomic a2))]))
  | Isubb (c, v, a1, a2) ->
     (match v.vtyp with
      | Tuint w -> (vgen, [bv2z_join (evar v) (evar c) (esub (bv2z_atomic a1) (bv2z_atomic a2)) w]
                          @(carry_constr c))
      | Tsint w ->
         let (d, vgen) = gen_var vgen in
         let d = mkvar ~newvid:true d (uint_t 1) in
         (vgen, [eeq (limbs w [evar v; evar d]) (esub (bv2z_atomic a1) (bv2z_atomic a2))]))
  | Isbc (v, a1, a2, y) ->
     (vgen, [bv2z_assign v (esub (esub (bv2z_atomic a1) (bv2z_atomic a2)) (esub (econst Z.one) (bv2z_atomic y)))])
  | Isbcs (c, v, a1, a2, y) ->
     (match v.vtyp with
      | Tuint w ->
         (vgen, [bv2z_join (evar v) (esub (econst Z.one) (evar c)) (esub (esub (bv2z_atomic a1) (bv2z_atomic a2)) (esub (econst Z.one) (bv2z_atomic y))) w]
                @(carry_constr c))
      | Tsint w ->
         let (d, vgen) = gen_var vgen in
         let d = mkvar ~newvid:true d (uint_t 1) in
         (vgen, [eeq (limbs w [evar v; evar d]) (esub (esub (bv2z_atomic a1) (bv2z_atomic a2)) (esub (econst Z.one) (bv2z_atomic y)))]))
  | Isbb (v, a1, a2, y) ->
     (vgen, [bv2z_assign v (esub (esub (bv2z_atomic a1) (bv2z_atomic a2)) (bv2z_atomic y))])
  | Isbbs (c, v, a1, a2, y) ->
     (match v.vtyp with
      | Tuint w -> (vgen, [bv2z_join (esub (esub (bv2z_atomic a1) (bv2z_atomic a2)) (bv2z_atomic y)) (eneg (evar c)) (evar v) w]
                          @(carry_constr c))
      | Tsint w ->
         let (d, vgen) = gen_var vgen in
         let d = mkvar ~newvid:true d (uint_t 1) in
         (vgen, [eeq (limbs w [evar v; evar d]) (esub (esub (bv2z_atomic a1) (bv2z_atomic a2)) (bv2z_atomic y))]))
  | Imul (v, a1, a2) ->
     (vgen, [bv2z_assign v (emul (bv2z_atomic a1) (bv2z_atomic a2))])
  | Imuls (_, v, a1, a2) ->
     let (d, vgen) = gen_var vgen in
     let d = mkvar ~newvid:true d (typ_of_var v) in
     (vgen, [eeq (limbs (size_of_var v) [evar v; evar d]) (emul (bv2z_atomic a1) (bv2z_atomic a2))])
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
  | Icast (t, v, a) ->
     bv2z_cast vgen t v a
  | Ivpc (v, a) ->
     bv2z_vpc vgen v a
  | Ijoin (v, ah, al) ->
     (vgen,
      [bv2z_join (evar v) (bv2z_atomic ah) (bv2z_atomic al) (size_of_atomic al)])
  | Iassert _e -> (vgen, [])
  | Iassume e -> (vgen, split_eand (eqn_bexp e))
  | Icut (_hd::_tl, _) -> failwith "Internal error: Icut with algebraic properties cannot appear in a program when verifying the algebraic part."
  | Icut _ -> (vgen, []) (* Ignore other cases of Icut. *)
  | Ighost (_, e) -> (vgen, split_eand (eqn_bexp e))

let bv2z_program_annot vgen p =
  let (vgen, ies_rev) = List.fold_left (
                            fun (vgen, ies_rev) i ->
                            let (vgen, es) = bv2z_instr vgen i in
                            (vgen, (i, es)::ies_rev)
                          ) (vgen, []) p in
  (vgen, List.rev ies_rev)

let bv2z_program vgen p =
  let (vgen, ies) = bv2z_program_annot vgen p in
  (vgen, Utils.tflatten (snd (List.split ies)))

type poly_spec_annot =
  { appre : ebexp;
    approg : (instr * ebexp list) list;
    appost : ebexp }

type poly_spec =
  { ppre : ebexp;
    pprog : ebexp list;
    ppost : ebexp }

let bv2z_espec_annot vgen s =
  let (vgen, ies) = bv2z_program_annot vgen s.esprog in
  (vgen, { appre = s.espre;
           approg = ies;
           appost = s.espost })

let bv2z_espec vgen s =
  let (vgen, es) = bv2z_program vgen s.esprog in
  (vgen, { ppre = s.espre;
           pprog = es;
           ppost = s.espost })

(* Returns the new vgen, created temporary variables, and polynomials.
   We need created temporary variables to quantify them in redlog. *)
let rec polys_of_ebexp vgen e =
  match e with
  | Etrue -> (vgen, [], [])
  | Eeq (e1, e2) when eq_eexp e1 e2 -> (vgen, [], [])
  | Eeq (e, Econst n) when Z.equal n Z.zero -> (vgen, [], [e])
  | Eeq (e1, e2) -> (vgen, [], [esub e1 e2])
  | Eeqmod (e1, e2, ms) ->
     let mk_tmp vgen =
       let (tmp, vgen) = gen_var vgen in
       let tmp = mkvar ~newvid:true tmp (Tuint 0) (* The variable type does not matter *) in
       (vgen, tmp) in
     let helper (vgen, tmps, res) m =
       let (vgen, tmp) = mk_tmp vgen in
       (vgen, tmp::tmps, (eadd (emul (evar tmp) m) res)) in
     let (vgen, tmps, eadds) =
       let (vgen, tmp) = mk_tmp vgen in
       List.fold_left helper (vgen, [tmp], (emul (evar tmp) (List.hd ms)))
         (List.tl ms) in
     (vgen, tmps, [esub (esub e1 e2) eadds])
  | Eand (e1, e2) ->
     let (vgen, tmps1, ps1) = polys_of_ebexp vgen e1 in
     let (vgen, tmps2, ps2) = polys_of_ebexp vgen e2 in
     (vgen, tmps1@tmps2, ps1@ps2)

let polys_of_ebexps vgen es =
  let (vgen, tmps_rev, ps_rev) = List.fold_left (
                                     fun (vgen, tmps_rev, ps_rev) e ->
                                     let (vgen', tmps, ps) = polys_of_ebexp vgen e in
                                     (vgen', List.rev_append tmps tmps_rev, List.rev_append ps ps_rev)
                                   ) (vgen, [], []) es in
  (vgen, List.rev tmps_rev, List.rev ps_rev)

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

let subsumed_by_moduli e moduli =
  let rec helper e moduli =
    match e with
    | Ebinop (Emul, _, m) -> List.exists (eq_eexp m) moduli
    | Ebinop (Eadd, e0, e1)
      | Ebinop (Esub, e0, e1) -> helper e0 moduli && helper e1 moduli
    | _ -> false in
  (* We don't need to traverse e when moduli is empty. *)
  match moduli with
  | [] -> false
  | _ -> helper e moduli

(* There are matching rules for common patterns from program instructions.
   For general cases, use get_rewrite_pattern. Note that predicates from
   cut, assume, and ghost may match the common patterns but they are not
   instructions. Thus in v - e, variable v may occur in e. *)
let is_assignment_under_moduli e moduli =
  match e with
  | Econst _ -> None
  (* v = e (mod em), e = v (mod em) *)
  | Ebinop (Esub, (Ebinop (Esub, Evar v, e)), em)
       when subsumed_by_moduli em moduli && not (IS.mem v.vid (IS.union (vids_eexp e) (vids_eexp em))) ->
     Some (v, e)
  | Ebinop (Esub, (Ebinop (Esub, e, Evar v)), em)
       when subsumed_by_moduli em moduli && not (IS.mem v.vid (IS.union (vids_eexp e) (vids_eexp em))) ->
     Some (v, e)
  (* v = e, e = v *)
  | Ebinop (Esub, Evar v, e) when not (IS.mem v.vid (vids_eexp e)) -> Some (v, e)
  | Ebinop (Esub, e, Evar v) when not (IS.mem v.vid (vids_eexp e)) -> Some (v, e)
  (* v + e1 = e2, e2 = v + e1 *)
  | Ebinop (Esub, Ebinop (Eadd, Evar v, e1), e2)
       when not (IS.mem v.vid (IS.union (vids_eexp e1) (vids_eexp e2))) -> Some (v, esub e2 e1)
  | Ebinop (Esub, e2, Ebinop (Eadd, Evar v, e1))
       when not (IS.mem v.vid (IS.union (vids_eexp e1) (vids_eexp e2))) -> Some (v, esub e2 e1)
  | _ -> get_rewrite_pattern e

let is_assignment_under_moduli' e others moduli =
  match e with
  | Econst _ -> None
  (* v = e (mod em), e = v (mod em) *)
  | Ebinop (Esub, (Ebinop (Esub, Evar v, e)), em)
       when subsumed_by_moduli em moduli && not (VS.mem v (VS.union (vars_eexp e) (vars_eexp em))) ->
     Some (evar v, e)
  | Ebinop (Esub, (Ebinop (Esub, e, Evar v)), em)
       when subsumed_by_moduli em moduli && not (VS.mem v (VS.union (vars_eexp e) (vars_eexp em))) ->
     Some (evar v, e)
  (* v = e, e = v *)
  | Ebinop (Esub, Evar v, e) when not (VS.mem v (vars_eexp e)) -> Some (evar v, e)
  | Ebinop (Esub, e, Evar v) when not (VS.mem v (vars_eexp e)) -> Some (evar v, e)
  (* v + e1 = e2, e2 = v + e1 *)
  | Ebinop (Esub, Ebinop (Eadd, Evar v, e1), e2)
       when not (VS.mem v (VS.union (vars_eexp e1) (vars_eexp e2))) -> Some (evar v, esub e2 e1)
  | Ebinop (Esub, e2, Ebinop (Eadd, Evar v, e1))
       when not (VS.mem v (VS.union (vars_eexp e1) (vars_eexp e2))) -> Some (evar v, esub e2 e1)
  | _ -> get_rewrite_pattern' e others

let rewrite_assignments ideal p moduli =
  let add_varsets polys =
    List.rev (List.rev_map (fun poly -> (poly, vids_eexp poly)) polys) in
  let subst_poly_vs (v, e) (poly, vs) =
    if IS.mem v.vid vs then (subst_eexp (VM.singleton v e) poly, IS.union (IS.remove v.vid vs) (vids_eexp e))
    else (poly, vs) in
  let subst_poly_vss (v, e) poly_vss =
    List.rev (List.rev_map (subst_poly_vs (v, e)) poly_vss) in
  let rec do_rewrite idx finished_vs ideal_vs p_vs =
    match ideal_vs with
    | [] -> (fst (List.split finished_vs), fst p_vs)
    | (hd_poly, hd_vs)::tl ->
       (match is_assignment_under_moduli hd_poly moduli with
        | None ->
           do_rewrite (idx+1) ((hd_poly, hd_vs)::finished_vs) tl p_vs
        | Some (v, e) ->
           do_rewrite (idx+1) (subst_poly_vss (v, e) finished_vs)
             (subst_poly_vss (v, e) tl) (subst_poly_vs (v, e) p_vs)) in
  let (finished, p) =
    do_rewrite 0 [] (add_varsets ideal) (p, vids_eexp p) in
  (List.rev finished, p)

(**
   [rewrite_assignments_two_phase ideal_aps post_p_ms_list moduli] rewrites
   [ideal_aps] and [post_p_ms_list] according to assignments in [ideal_aps]
   and moduli [moduli].
   @param ideal_aps a list [[(p1, a1); ...; (pn, an)]] of annotated polynomials
                    where [pi] is a polynomial and [ai] is its annotation
   @param post_p_ms_list a list [[(post1, p1, ms1); ...; (postn, pn, msn)]]
                         where [posti] is a postcondition, [pi] is a polynomial
                         asserted to be [0] modulo the moduli [msi]
   @param moduli moduli in the postcondition
   @return rewritten [(ideal_aps, post_p_ms_list)]
 *)
let rewrite_assignments_two_phase ideal_aps (post_p_ms_list : (ebexp * eexp * eexp list) list) moduli =
  let add_vids aps = List.rev_map (fun (poly, annot) -> ((poly, annot), vids_eexp poly)) (List.rev aps) in
  let add_vids_post_p_ms_list post_p_ms_list = List.rev_map (fun (post, p, ms) -> ((post, p, ms), (vids_eexp p, (List.map vids_eexp ms)))) (List.rev post_p_ms_list) in
  let subst_poly_vs (v, e) (poly, vs) = if IS.mem v.vid vs
                                        then (subst_eexp (VM.singleton v e) poly, IS.union (IS.remove v.vid vs) (vids_eexp e))
                                        else (poly, vs) in
  let subst_apoly_vs (v, e) ((poly, annot), vs) = let (poly', vs') = subst_poly_vs (v, e) (poly, vs) in
                                                  ((poly', annot), vs') in
  let subst_apoly_vss (v, e) apoly_vss = List.rev (List.rev_map (subst_apoly_vs (v, e)) apoly_vss) in
  let subst_post_p_ms_vs_list (v, e) post_p_ms_vs_list =
    List.rev_map
      (fun ((post, p, ms), (vs, ms_vs)) -> let (p', vs') = subst_poly_vs (v, e) (p, vs) in
                                           let ms_ms_vs' = List.map2 (fun m m_vs -> subst_poly_vs (v, e) (m, m_vs)) ms ms_vs in
                                           let (ms', ms_vs') = List.split ms_ms_vs' in
                                           ((post, p', ms'), (vs', ms_vs')))
      (List.rev post_p_ms_vs_list) in
  let rec do_rewrite finished_aps_vs_rev ideal_aps_vs post_p_ms_vs_list =
    match ideal_aps_vs with
    | [] -> (fst (List.split (List.rev finished_aps_vs_rev)), fst (List.split post_p_ms_vs_list))
    | (((hd_poly, _), _) as hd)::tl ->
       (match is_assignment_under_moduli hd_poly moduli with
        | None -> do_rewrite (hd::finished_aps_vs_rev) tl post_p_ms_vs_list
        | Some (v, e) -> do_rewrite (subst_apoly_vss (v, e) finished_aps_vs_rev)
                           (subst_apoly_vss (v, e) tl) (subst_post_p_ms_vs_list (v, e) post_p_ms_vs_list)) in
  do_rewrite [] (add_vids ideal_aps) (add_vids_post_p_ms_list post_p_ms_list)

let rewrite_assignments' ideal p moduli =
  let rec do_rewrite finished ideal p =
    match ideal with
    | [] -> (finished, p)
    | hd::tl ->
       (match is_assignment_under_moduli' hd (p::finished@tl) moduli with
        | None -> do_rewrite (hd::finished) tl p
        | Some (sub, e) ->
           do_rewrite (List.rev (List.rev_map (replace_eexp [(sub, e)]) finished))
                      (List.rev (List.rev_map (replace_eexp [(sub, e)]) tl))
                      (replace_eexp [(sub, e)] p)) in
  let (finished, p) = do_rewrite [] ideal p in
  (List.rev finished, p)

let rewrite_assignments_two_phase' ideal_aps (post_p_ms_list : (ebexp * eexp * eexp list) list) moduli =
  let add_vids aps = List.rev_map (fun (poly, annot) -> ((poly, annot), vids_eexp poly)) (List.rev aps) in
  let add_vids_post_p_ms_list post_p_ms_list = List.rev_map (fun (post, p, ms) -> ((post, p, ms), vids_eexp p)) (List.rev post_p_ms_list) in
  let subst_poly_vs (sub, sub_vs, e, e_vs) (poly, vs) = if IS.disjoint sub_vs vs then (poly, vs)
                                                        else (replace_eexp [(sub, e)] poly, IS.union (IS.diff vs sub_vs) e_vs) in
  let subst_apoly_vs pat ((poly, annot), vs) = let (poly', vs') = subst_poly_vs pat (poly, vs) in
                                               ((poly', annot), vs') in
  let subst_apoly_vss pat apoly_vss = List.rev (List.rev_map (subst_apoly_vs pat) apoly_vss) in
  let subst_post_p_ms_vs_list pat post_p_ms_vs_list =
    List.rev_map
      (fun ((post, p, ms), vs) -> let (p', vs') = subst_poly_vs pat (p, vs) in
                                  ((post, p', ms), vs'))
      (List.rev post_p_ms_vs_list) in
  let get_others finished_aps_vs_rev tl post_p_ms_vs_list : eexp list =
    let ps1 : eexp list = fst (List.split (fst (List.split finished_aps_vs_rev))) in
    let ps2 : eexp list = fst (List.split (fst (List.split tl))) in
    let ps3 : eexp list = Utils.tflatten (List.map (fun (_, p, ms) -> p::ms) (fst (List.split post_p_ms_vs_list))) in
    List.rev_append ps1 (List.rev_append ps2 ps3) in
  let rec do_rewrite finished_aps_vs_rev ideal_aps_vs post_p_ms_vs_list =
    match ideal_aps_vs with
    | [] -> (fst (List.split (List.rev finished_aps_vs_rev)), fst (List.split post_p_ms_vs_list))
    | (((hd_poly, _), _) as hd)::tl ->
       (match is_assignment_under_moduli' hd_poly (get_others finished_aps_vs_rev tl post_p_ms_vs_list) moduli with
        | None -> do_rewrite (hd::finished_aps_vs_rev) tl post_p_ms_vs_list
        | Some (sub, e) -> let pat = (sub, vids_eexp sub, e, vids_eexp e) in
                           do_rewrite (subst_apoly_vss pat finished_aps_vs_rev)
                             (subst_apoly_vss pat tl) (subst_post_p_ms_vs_list pat post_p_ms_vs_list)) in
  do_rewrite [] (add_vids ideal_aps) (add_vids_post_p_ms_list post_p_ms_list)

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
        | Some (v, e) -> let em = VM.singleton v e in
                         do_rewrite (List.rev (List.rev_map (subst_eexp em) finished))
                           (List.rev (List.rev_map (subst_eexp em) tl))
                           (subst_ebexp em p)) in
  let (finished, p) = do_rewrite [] ideal p in
  (List.rev finished, p)

let _vars_in_appearing_order es =
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

let vars_in_appearing_order cmp es =
  let freq_hash = Hashtbl.create 101 in
  let add_var vs v =
    if Hashtbl.mem freq_hash v
    then let cur_freq = Hashtbl.find freq_hash v in
         let _ = Hashtbl.replace freq_hash v (succ cur_freq) in
         vs
    else let _ = Hashtbl.add freq_hash v 0 in
         v::vs in
  let rec add_vars vs e =
    match e with
    | Evar v -> add_var vs v
    | Econst _ -> vs
    | Eunop (_, e) -> add_vars vs e
    | Ebinop (_, e1, e2) -> add_vars (add_vars vs e1) e2 in
  let rev_vss =
    List.fold_left (fun vss e -> (add_vars [] e)::vss) [] es in
  let freq_vss =
    List.rev_map (List.rev_map (fun v -> (v, Hashtbl.find freq_hash v)))
      rev_vss in
  let rev_sorted_vss =
    let mycmp (_, u) (_, v) = cmp u v in
    List.rev_map
      (fun freq_vs -> List.map fst (List.sort mycmp freq_vs)) freq_vss in
  List.flatten (List.rev rev_sorted_vss)

let vars_in_lex_order es =
  VS.elements (List.fold_left (fun res e -> VS.union res (vars_eexp e)) VS.empty es)

let vars_in_order es =
  match !variable_ordering with
  | LexOrder -> vars_in_lex_order es
  | AppearingOrder ->
     List.rev (vars_in_appearing_order (fun u v -> v - u) (List.rev es))
  | RevLexOrder -> List.rev (vars_in_lex_order es)
  | RevAppearingOrder ->
     List.rev (vars_in_appearing_order (fun u v -> v - u) es)

let polys_of_espec vgen s =
  (* Convert to polynomial equations. *)
  let (vgen, pspec) = bv2z_espec vgen s in
  (* Convert premises to polynomials. *)
  let (vgen, generator_ps) =
    let (vgen, _, pre_ps) = polys_of_ebexp vgen pspec.ppre in
    let (vgen, prog_ps_rev) =
      List.fold_left
        (fun (vgen, ps_rev) e ->
          let (vgen', _, ps) = polys_of_ebexp vgen e in
          (vgen', List.rev_append ps ps_rev)
        )
        (vgen, [])
        pspec.pprog in
    (vgen, List.rev_append (List.rev pre_ps) (List.rev prog_ps_rev)) in
  let do_rewriting generator_ps p modulus_opt =
    if !apply_rewriting
    then (if !polys_rewrite_replace_eexp then rewrite_assignments' else rewrite_assignments) generator_ps p modulus_opt
    else (generator_ps, p) in
  let rec convert generator_ps post =
    match post with
    | Etrue -> []
    | Eeq (e1, e2) ->
       let (ideal, p) = do_rewriting generator_ps (esub e1 e2) [] in
       let vars = vars_in_order (ideal@[p]) in
       [(post, vars, ideal, p)]
    | Eeqmod (e1, e2, ms) ->
       let (ideal, p) = do_rewriting (List.rev_append ms generator_ps) (esub e1 e2) ms in
       let vars = vars_in_order (ideal@[p]) in
       [(post, vars, ideal, p)]
    | Eand (e1, e2) ->
       convert generator_ps e1 @ convert generator_ps e2 in
  (vgen, convert generator_ps pspec.ppost)

(**
   [slice_entailments aps vids] applies slicing to a list of annotated
   polynomials (premises).
   @param aps a list [(p1, (i1, vids_to_check1, vids_to_add1)); ...; (pn, (in, vids_to_checkn, vids_to_addn))]
              where [pi] is the polynomial converted from an instruction [ii],
              [vids_to_checki] is a set of variable IDs to check if the
              polynomial is related, and [vids_to_addi] is a set of variable IDs
              to be included if the polynomial [pi] is related to proving the
              postcondition
   @param vids the set of IDs of variables appearing in a postcondition
   @return sliced list of annotated polynomials
 *)
let slice_entailments aps vids =
  let (aps, _) = List.fold_left (
                     fun (aps, vids) (p, (i, vids_to_check, vids_to_add)) ->
                     if IS.is_empty (IS.inter vids vids_to_check)
                     then (aps, vids)
                     else ((p, (i, vids_to_check, vids_to_add))::aps, IS.union vids vids_to_add)
                   ) ([], vids) (List.rev aps) in
  aps

(**
   [polys_of_espec_two_phase ~sliced:b vgen s] returns the polynomial
   entailments proving whether an algebraic specification [s] is valid or not.
   This function converts [s] to polynomials first, applies the first rewriting,
   applies slicing if [b] is [false], and finally applies the second rewriting
   for each atomic predicate in the postcondition.
   @param sliced indicates if the specification [s] has been sliced
   @param vgen a variable generator
   @param s an algebraic specification
   @return a list of entailments [(post1, vars1, ideal1, p1); ...; (postn, varsn, idealn, pn)]
           where the validity of a postcondition [posti] is proved by checking
           if [pi] is in the ideal generated by [ideali] using the variable
           order [varsi]
 *)
let polys_of_espec_two_phase ?(sliced=false) vgen s =
  (* Convert algebraic specification to polynomial equations. *)
  let (vgen, apspec) = bv2z_espec_annot vgen s in
  (* Add more annotations for slicing. If the input instruction is Iassume or Ighost, the predicate must be atomic. *)
  let aps_of_aies (vgen, res_aps_rev) (i, es) = let (vgen', _, ps) = polys_of_ebexps vgen es in
                                                let (vids_to_check, vids_to_add) =
                                                  match i with
                                                  | Iassume e
                                                    | Ighost (_, e) -> let vids = vids_ebexp (eqn_bexp e) in
                                                                       (vids, vids)
                                                  | _ -> (lvids_instr i, vids_instr i) in
                                                let aps = List.rev_map (fun p -> (p, (i, vids_to_check, vids_to_add))) (List.rev ps) in
                                                (vgen', List.rev_append aps res_aps_rev) in
  (* Convert polynomial equations to polynomials. *)
  let (vgen, ideal_aps) =
    (* Split the precondition and convert atomic predicates to polynomials separately to get better slicing result. *)
    let (vgen, pre_aps_rev) = let ies_list = List.rev_map
                                               (fun e -> (Iassume (e, Rtrue), [e]))
                                               (List.rev (split_eand apspec.appre)) in
                              List.fold_left aps_of_aies (vgen, []) ies_list in
    let (vgen, prog_aps_rev) = List.fold_left
                                 (fun (vgen, aps_rev) (i, es) ->
                                   match i with
                                   | Iassume _ | Ighost _ -> (* split assumptions *)
                                      let ies_list = List.rev_map (fun e -> (Iassume (e, Rtrue), [e])) (List.rev es) in
                                      List.fold_left aps_of_aies (vgen, aps_rev) ies_list
                                   | _ -> aps_of_aies (vgen, aps_rev) (i, es)
                                 )
                                 (vgen, [])
                                 apspec.approg in
    (vgen, List.rev_append pre_aps_rev (List.rev prog_aps_rev)) in
  (* A function that performs rewriting *)
  let do_rewriting ideal_aps (post_p_ms_list : (ebexp * eexp * eexp list) list) modulus_opt =
    if !apply_rewriting
    then (if !polys_rewrite_replace_eexp then rewrite_assignments_two_phase' else rewrite_assignments_two_phase) ideal_aps post_p_ms_list modulus_opt
    else (ideal_aps, post_p_ms_list) in
  (* Perform two-phase rewriting and slicing. *)
  let convert ideal_aps post =
    let rec split_post e =
      match e with
      | Etrue -> []
      | Eeq (e1, e2) -> [(e, esub e1 e2, [])]
      | Eeqmod (e1, e2, ms) -> [(e, esub e1 e2, ms)]
      | Eand (e1, e2) -> (split_post e1)@(split_post e2) in
    (* First phase rewriting, do not consider moduli *)
    let first_phase_rewriting ideal_aps post_p_ms_list = do_rewriting ideal_aps post_p_ms_list [] in
    (* Second phase rewriting, add moduli *)
    let second_phase_rewriting ideal_aps post_p_ms_list =
      let add_dummy_annot m = (m, (Inop, IS.empty, IS.empty)) in
      let remove_annots aps = fst (List.split aps) in
      List.rev (List.rev_map
                  (fun (post, p, ms) ->
                    let sliced_ideal_aps =
                      if !Options.Std.apply_slicing && not sliced then
                        let vids = program_pre_vids_sat (vids_ebexp post) ebexp_vids_sat s.espre (List.rev s.esprog) in
                        slice_entailments ideal_aps vids
                      else ideal_aps in
                    match ms with
                    | [] -> (* skip rewriting in this case *)
                            let sliced_ideal = remove_annots sliced_ideal_aps in
                            (post, vars_in_order (sliced_ideal@[p]), sliced_ideal, p)
                    | _ -> let (rewritten_ideal_aps, post_p_ms_list) = do_rewriting (List.rev_append (List.rev_map add_dummy_annot (List.rev ms)) sliced_ideal_aps) [(post, p, ms)] ms in
                           (match post_p_ms_list with
                            | (post, p, _)::[] -> let rewritten_ideal = remove_annots rewritten_ideal_aps in
                                                  (post, vars_in_order (rewritten_ideal@[p]), rewritten_ideal, p)
                            | _ -> failwith("Unexpected case"))
                  ) post_p_ms_list) in
    let post_p_ms_list = split_post post in
    let (ideal_aps, post_p_ms_list) = first_phase_rewriting ideal_aps post_p_ms_list in
    let entailments = second_phase_rewriting ideal_aps post_p_ms_list in
    entailments in
  (vgen, convert ideal_aps apspec.appost)

(** Solve poly_spec with Groebner basis *)

let algebra_symbol_of_ebinop op =
  match op with
  | Epow -> "^"
  | _ -> symbol_of_ebinop op

let rec singular_of_eexp e =
  match e with
  | Evar v -> string_of_var v
  | Econst n -> "bigint(" ^ (Z.to_string n) ^ ")"
  | Eunop (op, e) ->
     symbol_of_eunop op ^ (if is_eexp_atomic e then singular_of_eexp e else " (" ^ singular_of_eexp e ^ ")")
  | Ebinop (Epow, e, Econst z) ->
     "(" ^ singular_of_eexp e ^ ")" ^ algebra_symbol_of_ebinop Epow ^ Z.to_string z
  | Ebinop (op, e1, e2) ->
     (if eexp_ebinop_open e1 op then singular_of_eexp e1 else "(" ^ singular_of_eexp e1 ^ ")")
     ^ " " ^ algebra_symbol_of_ebinop op ^ " "
     ^ (if ebinop_eexp_open op e2 then singular_of_eexp e2 else "(" ^ singular_of_eexp e2 ^ ")")

let rec sage_of_eexp e =
  match e with
  | Evar v -> string_of_var v
  | Econst n -> string_of_const n
  | Eunop (op, e) ->
     symbol_of_eunop op ^ (if is_eexp_atomic e then sage_of_eexp e else " (" ^ sage_of_eexp e ^ ")")
  | Ebinop (Epow, e, Econst z) ->
     "(" ^ sage_of_eexp e ^ ")" ^ algebra_symbol_of_ebinop Epow ^ Z.to_string z
  | Ebinop (op, e1, e2) ->
     (if eexp_ebinop_open e1 op then sage_of_eexp e1 else "(" ^ sage_of_eexp e1 ^ ")")
     ^ " " ^ algebra_symbol_of_ebinop op ^ " "
     ^ (if ebinop_eexp_open op e2 then sage_of_eexp e2 else "(" ^ sage_of_eexp e2 ^ ")")

let rec magma_of_eexp e =
  match e with
  | Evar v -> string_of_var v
  | Econst n -> string_of_const n
  | Eunop (op, e) ->
     symbol_of_eunop op ^ (if is_eexp_atomic e then magma_of_eexp e else " (" ^ magma_of_eexp e ^ ")")
  | Ebinop (Epow, e, Econst z) ->
     "(" ^ magma_of_eexp e ^ ")" ^ algebra_symbol_of_ebinop Epow ^ Z.to_string z
  | Ebinop (op, e1, e2) ->
     (if is_eexp_atomic e1 then magma_of_eexp e1 else "(" ^ magma_of_eexp e1 ^ ")")
     ^ " " ^ algebra_symbol_of_ebinop op ^ " "
     ^ (if is_eexp_atomic e2 then magma_of_eexp e2 else "(" ^ magma_of_eexp e2 ^ ")")

let maple_of_eexp e = magma_of_eexp e

(* Underscore is not allowed in variable names in Mathematica. *)
let mathematica_of_var v = "v[\"" ^ string_of_var v ^ "\"]"
let rec mathematica_of_eexp e =
  match e with
  | Evar v -> mathematica_of_var v
  | Econst n -> string_of_const n
  | Eunop (op, e) ->
     symbol_of_eunop op ^ (if is_eexp_atomic e then mathematica_of_eexp e else " (" ^ mathematica_of_eexp e ^ ")")
  | Ebinop (Epow, e, Econst z) ->
     "(" ^ mathematica_of_eexp e ^ ")" ^ algebra_symbol_of_ebinop Epow ^ Z.to_string z
  | Ebinop (op, e1, e2) ->
     (if eexp_ebinop_open e1 op then mathematica_of_eexp e1 else "(" ^ mathematica_of_eexp e1 ^ ")")
     ^ " " ^ algebra_symbol_of_ebinop op ^ " "
     ^ (if ebinop_eexp_open op e2 then mathematica_of_eexp e2 else "(" ^ mathematica_of_eexp e2 ^ ")")

let macaulay2_of_var v = String.map (fun c -> if c = '_' then '\'' else c) (string_of_var v)
let rec macaulay2_of_eexp e =
  match e with
  | Evar v -> macaulay2_of_var v
  | Econst n -> string_of_const n
  | Eunop (op, e) ->
     symbol_of_eunop op ^ (if is_eexp_atomic e then macaulay2_of_eexp e else " (" ^ macaulay2_of_eexp e ^ ")")
  | Ebinop (Epow, e, Econst z) ->
     "(" ^ macaulay2_of_eexp e ^ ")" ^ algebra_symbol_of_ebinop Epow ^ Z.to_string z
  | Ebinop (op, e1, e2) ->
     (if eexp_ebinop_open e1 op then macaulay2_of_eexp e1 else "(" ^ macaulay2_of_eexp e1 ^ ")")
     ^ " " ^ algebra_symbol_of_ebinop op ^ " "
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
let slice_for_safety f p safety_cond hashopt =
  let vars =
    match hashopt with
    | Some dep_hash ->
       let root_vars = vars_bexp safety_cond in
       let program_vars =
         VS.fold (fun v ret -> VS.union ret (find_dep_vars dep_hash v))
           root_vars root_vars in
       rbexp_vars_sat program_vars f
    | None ->
       program_pre_vars_sat (vars_bexp safety_cond) rbexp_vars_sat f p in
  (slice_rbexp vars f, slice_program_ssa vars p)

(*
 * Convert a precondition and a program to QFBV bexps according to a safety condition.
 * The precondition and the program may be sliced.
 *)
let safety_assumptions f p safety_cond hashopt =
  let (f, p) =
    if !apply_slicing then
      slice_for_safety f p safety_cond hashopt
    else (f, p) in
  (bexp_rbexp f)::(bexp_program p)


(*
 * Convert `eeqmod e1 e2 [m1; m2; ...; mn]` to `e1 - e2 = k1 * m1 + k2 * m2 + ... + kn * mn`
 * where k1, k2, ..., kn are new variables of type bit.
 *)
let rec translate_eeqmod vgen e =
  match e with
  | Eeqmod (e1, e2, ms) ->
     let (vgen, ks_rev) = List.fold_left (fun (vgen, ks_rev) _ -> let (k, vgen) = gen_var vgen in (vgen, k::ks_rev)) (vgen, []) ms in
     let ks = List.rev_map (fun k -> evar (mkvar ~newvid:true k bit_t)) ks_rev in
     (vgen, eeq (esub e1 e2) (eadds (List.map2 (fun k m -> emul k m) ks ms)))
  | Eand (e1, e2) ->
     let (vgen, e1) = translate_eeqmod vgen e1 in
     let (vgen, e2) = translate_eeqmod vgen e2 in
     (vgen, Eand (e1, e2))
  | _ -> (vgen, e)


(** Conversion from algebraic specifications to SMTLIB format *)

let smtlib_eunop op =
  match op with
  | Eneg -> "-"

let smtlib_ebinop op =
  match op with
  | Eadd -> "+"
  | Esub -> "-"
  | Emul -> "*"
  | Epow -> "expn"

let rec smtlib_eexp e =
  match e with
  | Evar v -> string_of_var v
  | Econst c -> if Z.lt c Z.zero then "(- " ^ Z.to_string (Z.abs c) ^ ")"
                else Z.to_string c
  | Eunop (op, e) -> String.concat "" ["("; smtlib_eunop op; " "; smtlib_eexp e; ")"]
  | Ebinop (op, e1, e2) -> String.concat "" ["("; smtlib_ebinop op; " "; smtlib_eexp e1; " "; smtlib_eexp e2; ")"]

let smtlib_add e1 e2 = "(+ " ^ e1 ^ " " ^ e2 ^ ")"
let rec smtlib_adds es =
  match es with
  | [] -> ""
  | e::[] -> e
  | hd::tl -> smtlib_add hd (smtlib_adds tl)
let smtlib_mul e1 e2 = "(* " ^ e1 ^ " " ^ e2 ^ ")"
let smtlib_not e = "(not " ^ e ^ ")"
let smtlib_assert e = "(assert " ^ e ^ ")"
let smtlib_declare_int v = "(declare-fun " ^ v ^ " () Int)"
let smtlib_exists k e = "(exists ((" ^ k ^ " Int)) " ^ e ^ ")"
let smtlib_define_expn () =
  match !native_smtlib_expn_operator with
  | Some op -> "(define-fun expn ((x Int) (n Int)) Int (" ^ op ^ " x n))"
  | _ -> "(define-fun-rec expn ((x Int) (n Int)) Int (ite (= n 0) 1 (* x (expn x (- n 1)))))"

let rec smtlib_ebexp_premise vgen e =
  match e with
  | Etrue -> (vgen, "true")
  | Eeq (e1, e2) -> (vgen, String.concat "" ["(= "; smtlib_eexp e1; " "; smtlib_eexp e2; ")"])
  | Eeqmod (e1, e2, ms) ->
     let (vgen, ks_rev) = List.fold_left (fun (vgen, ks_rev) _ -> let (k, vgen) = gen_var vgen in (vgen, k::ks_rev)) (vgen, []) ms in
     (vgen, String.concat "" ["(= "; smtlib_eexp (esub e1 e2); " "; smtlib_adds (List.map2 (fun k m -> smtlib_mul k (smtlib_eexp m)) (List.rev ks_rev) ms); ")"])
  | Eand (e1, e2) ->
     let (vgen, e1) = smtlib_ebexp_premise vgen e1 in
     let (vgen, e2) = smtlib_ebexp_premise vgen e2 in
     (vgen, String.concat "" ["(and "; e1; " "; e2; ")"])

let rec smtlib_ebexp_consequence vgen e =
  match e with
  | Etrue -> (vgen, [], "true")
  | Eeq (e1, e2) -> (vgen, [], String.concat "" ["(= "; smtlib_eexp e1; " "; smtlib_eexp e2; ")"])
  | Eeqmod (e1, e2, ms) ->
     let (vgen, ks_rev) = List.fold_left (fun (vgen, ks_rev) _ -> let (k, vgen) = gen_var vgen in (vgen, k::ks_rev)) (vgen, []) ms in
     let unquantified = String.concat "" ["(= "; smtlib_eexp (esub e1 e2); " "; smtlib_adds (List.map2 (fun k m -> smtlib_mul k (smtlib_eexp m)) (List.rev ks_rev) ms); ")"] in
     let quantified = List.fold_left (fun quantified k -> smtlib_exists k quantified) unquantified ks_rev in
     (vgen, ks_rev, quantified)
  | Eand (e1, e2) ->
     let (vgen, ks_rev1, e1) = smtlib_ebexp_consequence vgen e1 in
     let (vgen, ks_rev2, e2) = smtlib_ebexp_consequence vgen e2 in
     (vgen, List.rev_append ks_rev1 ks_rev2, String.concat "" ["(and "; e1; " "; e2; ")"])

let smtlib_espec vgen es =
  let (vgen, zs) = bv2z_espec vgen es in
  (* Convert to ebexp *)
  let (vgen, zf, zp, zg) =
    let (vgen, zf) = translate_eeqmod vgen zs.ppre in
    let (vgen, zp_rev) = List.fold_left (fun (vgen, zp_rev) i -> let (vgen, zi) = translate_eeqmod vgen i in (vgen, zi::zp_rev)) (vgen, []) zs.pprog in
    (vgen, zf, List.rev zp_rev, zs.ppost) in
  (* Collect free variables *)
  let vars = VS.elements (List.fold_left (fun res e -> VS.union res (vars_ebexp e)) VS.empty ([zf]@zp@[zg])) in
  (* Convert to SMTLIB format *)
  let (vgen, _ks_rev, f, p, g) =
    let (vgen, f) = smtlib_ebexp_premise vgen zf in
    let (vgen, p_rev) = List.fold_left (fun (vgen, p_rev) e -> let (vgen, e) = smtlib_ebexp_premise vgen e in (vgen, e::p_rev)) (vgen, []) zp in
    let (vgen, ks_rev, g) = smtlib_ebexp_consequence vgen zg in
    (vgen, ks_rev, f, List.rev p_rev, g) in
  (* Return the string representation in SMTLIB *)
  (vgen,
   String.concat "\n" [
       "(set-logic UFNIA)";
       smtlib_define_expn();
       String.concat "\n" (List.map smtlib_declare_int (List.map string_of_var vars));
       smtlib_assert f;
       String.concat "\n" (List.map smtlib_assert p);
       (smtlib_assert (smtlib_not g));
       "(check-sat)"
     ])


(** For redlog *)

let redlog_of_espec es =
  let eqn_of_eexp e =
    let redlog_string_of_eunop op =
      match op with
      | Eneg -> "-" in
    let redlog_string_of_ebinop op =
      match op with
      | Eadd -> "+"
      | Esub -> "-"
      | Emul -> "*"
      | Epow -> "^" in
    let rec redlog_string_of_eexp e =
      match e with
      | Evar v -> string_of_var v
      | Econst n -> Z.to_string n
      | Eunop (op, e) -> redlog_string_of_eunop op ^ " (" ^ redlog_string_of_eexp e ^ ")"
      | Ebinop (op, e1, e2) -> "(" ^ redlog_string_of_eexp e1 ^ ") " ^ redlog_string_of_ebinop op ^ " (" ^ redlog_string_of_eexp e2 ^ ")" in
    (* Change "c*(c-1)=0" to "c=0 or c=1". *)
    (*
      match e with
    | BveBinop (BveMul, BveVar v, BveBinop (BveSub, BveVar v', BveConst c)) when v == v' && eq_big_int c (unit_big_int) -> "(" ^ v ^ " = 0 or " ^ v ^ " = 1)"
    | _ -> redlog_string_of_eexp e ^ " = 0" *)
    redlog_string_of_eexp e ^ " = 0" in
  let vgen = vgen_of_espec es in
  let (vgen, zssa) = bv2z_espec vgen es in
  let (vgen, premises) =
    let (vgen, _, pre_ps) =
      polys_of_ebexp vgen zssa.ppre in
    let (vgen, prog_ps) =
      List.fold_left
        (fun (vgen, res) e ->
          let (vgen, _, ps) = polys_of_ebexp vgen e in
          (vgen, res@ps)
        ) (vgen, []) zssa.pprog in
    (vgen, pre_ps@prog_ps) in
  let (_vgen, tmps, premises, posts) =
    let (premises, post) = rewrite_assignments_ebexp premises zssa.ppost in
    let (vgen, tmps, posts) = polys_of_ebexp vgen post in
    (vgen, tmps, premises, posts) in
  let phi =
    let conj es = String.concat " and " (List.map eqn_of_eexp es) in
    match premises, tmps with
    | [], [] -> conj posts
    | [], _ -> "ex({" ^ String.concat ", " (List.map string_of_var tmps) ^ "}, " ^ conj posts ^ ")"
    | _, [] -> "(" ^ conj premises ^ ") impl (" ^ conj posts ^ ")"
    | _ -> "ex({" ^ String.concat ", " (List.map string_of_var tmps) ^ "}, (" ^ conj premises ^ ") impl (" ^ conj posts ^ "))"
  in
  String.concat "\n" [ "load_package redlog;";
                       "rlset Z;";
                       "phi := " ^ phi ^ ";";
                       "rlwqe phi;" ]

let redlog_of_espec es =
  let ess = cut_espec es in
  String.concat "\n\n" (List.map redlog_of_espec (List.flatten ess))
