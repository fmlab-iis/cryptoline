
open Ast.Cryptoline
open Qfbv.Common
open Options.Std
open Utils.Std


type 'a round_result =
  Solved of Qfbv.Common.result
| Unfinished of 'a list


(** Conversion from range specifications to QFBV. *)

let exp_var v = Var v

let exp_const w n = Const (w, n)

let exp_atom a =
  match a with
  | Avar v -> exp_var v
  | Aconst (ty, n) -> exp_const (size_of_typ ty) n

let exp_carry n c =
  ZeroExtend (1, n - 1, exp_atom c)

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
      | Rudiv -> Udiv (w, exp_rexp e1, exp_rexp e2)
      | Rumod -> Mod (w, exp_rexp e1, exp_rexp e2)
      | Rsdiv -> Sdiv (w, exp_rexp e1, exp_rexp e2)
      | Rsrem -> Srem (w, exp_rexp e1, exp_rexp e2)
      | Rsmod -> Smod (w, exp_rexp e1, exp_rexp e2)
      | Randb -> And (w, exp_rexp e1, exp_rexp e2)
      | Rorb -> Or (w, exp_rexp e1, exp_rexp e2)
      | Rxorb -> Xor (w, exp_rexp e1, exp_rexp e2)
      | Rshl -> Shl (w, exp_rexp e1, exp_rexp e2)
      | Rlshr -> Lshr (w, exp_rexp e1, exp_rexp e2)
      | Rashr -> Ashr (w, exp_rexp e1, exp_rexp e2)
      | Rrol -> Rol (w, exp_rexp e1, exp_rexp e2)
      | Rror -> Ror (w, exp_rexp e1, exp_rexp e2)
     )
  | Ruext (w, e, i) -> ZeroExtend (w, i, exp_rexp e)
  | Rsext (w, e, i) -> SignExtend (w, i, exp_rexp e)
  | Rconcat (w1, w2, e1, e2) -> Concat (w1, w2, exp_rexp e1, exp_rexp e2)

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
         ZeroExtend (w, 1, exp_atom a1),
         ZeroExtend (w, 1, exp_atom a2))
  else
    Add (w, exp_atom a1, exp_atom a2)

let exp_adc ?extend:(ext=false) w a1 a2 y =
  if ext then
    Add (w + 1,
         Add (w + 1,
              ZeroExtend (w, 1, exp_atom a1),
              ZeroExtend (w, 1, exp_atom a2)),
         exp_carry (w + 1) y)
  else
    Add (w,
         Add (w,
              exp_atom a1,
              exp_atom a2),
         exp_carry w y)

let exp_subc ?extend:(ext=false) w a1 a2 =
  if ext then
    Add(w + 1,
        Add (w + 1,
             ZeroExtend (w, 1, exp_atom a1),
             ZeroExtend (w, 1, Not (w, exp_atom a2))),
        Const (w + 1, Z.one))
  else
    Add(w,
        Add (w,
             exp_atom a1,
             Not (w, exp_atom a2)),
        Const (w, Z.one))

let exp_subb ?extend:(ext=false) w a1 a2 =
  if ext then
    Sub (w + 1,
         ZeroExtend (w, 1, exp_atom a1),
         ZeroExtend (w, 1, exp_atom a2))
  else
    Sub (w, exp_atom a1, exp_atom a2)

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
              ZeroExtend (w, 1, exp_atom a1),
              ZeroExtend (w, 1, Not(w, exp_atom a2))),
         exp_carry (w + 1) y)
  else
    Add (w,
         Add (w,
              exp_atom a1,
              Not(w, exp_atom a2)),
         exp_carry w y)

let exp_sbb ?extend:(ext=false) w a1 a2 y =
  if ext then
    Sub (w + 1,
         ZeroExtend (w, 1, exp_atom a1),
         Add(w + 1,
             ZeroExtend (w, 1, exp_atom a2),
             exp_carry (w + 1) y))
  else
    Sub (w,
         exp_atom a1,
         Add(w,
             exp_atom a2,
             exp_carry w y))

let exp_umul ?extend:(ext=false) w a1 a2 =
  if ext then
    Mul (w + w,
         ZeroExtend (w, w, exp_atom a1),
         ZeroExtend (w, w, exp_atom a2))
  else
    Mul (w, exp_atom a1, exp_atom a2)

let exp_smul ?extend:(ext=false) w a1 a2 =
  if ext then
    Mul (w + w,
         SignExtend (w, w, exp_atom a1),
         SignExtend (w, w, exp_atom a2))
  else
    Mul (w, exp_atom a1, exp_atom a2)

let exp_cshl w a1 a2 n =
  Shl (w + w,
       Concat (w, w, exp_atom a1, exp_atom a2),
       Const (w + w, n))

let bexp_mov v a = Eq (size_of_var v, exp_var v, exp_atom a)
let bexp_shl v a p =
  let w = size_of_var v in
  Eq (w, exp_var v, Shl (w, exp_atom a, exp_atom p))
let bexp_shls l v a p =
  let w = size_of_var v in
  let ip = Z.to_int p in
  Conj
    (Eq (ip, exp_var l, High (w - ip, ip, exp_atom a)),
     Eq (w, exp_var v, Shl (w, exp_atom a, Const (w, p))))
let bexp_shr v a p =
  let w = size_of_var v in
  Eq (w, exp_var v, Lshr (w, exp_atom a, exp_atom p))
let bexp_shrs v l a p =
  let w = size_of_var v in
  let ip = Z.to_int p in
  Conj
    (Eq (w, exp_var v, Lshr (w, exp_atom a, Const (w, p))),
     Eq (ip, exp_var l, Low (ip, w - ip, exp_atom a)))
let bexp_sar v a p =
  let w = size_of_var v in
  Eq (w, exp_var v, Ashr (w, exp_atom a, exp_atom p))
let bexp_sars v l a p =
  let w = size_of_var v in
  let ip = Z.to_int p in
  Conj
    (Eq (w, exp_var v, Ashr (w, exp_atom a, Const (w, p))),
     Eq (ip, exp_var l, Low (ip, w - ip, exp_atom a)))
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
let bexp_cshls l vh vl a1 a2 p =
  let w = size_of_var vh in
  let ip = Z.to_int p in
  Conj
    (Conj
       (Eq (w,
            exp_var vh,
            High (w, w, exp_cshl w a1 a2 p)),
        Eq (w,
            exp_var vl,
            Lshr (w,
                  Low (w, w, exp_cshl w a1 a2 p),
                  Const (w, p)))),
     (Eq (ip, exp_var l, High (w - ip, ip, exp_atom a1)))
    )
let bexp_cshr vh vl a1 a2 p =
  let w = size_of_var vh in
  let ip = Z.to_int p in
  Conj
    ((Eq (w, exp_var vh, Lshr (w, exp_atom a1, Const (w, p)))),
     (Eq (w, exp_var vl, Concat (ip, w - ip, Low (ip, w - ip, exp_atom a1), High (ip, w - ip, exp_atom a2)))))
let bexp_cshrs vh vl l a1 a2 p =
  let w = size_of_var vh in
  let ip = Z.to_int p in
  Conj
    (Conj
       ((Eq (w, exp_var vh, Lshr (w, exp_atom a1, Const (w, p)))),
        (Eq (w, exp_var vl, Concat (ip, w - ip, Low (ip, w - ip, exp_atom a1), High (ip, w - ip, exp_atom a2))))),
     (Eq (ip, exp_var l, Low (ip, w - ip, exp_atom a2))))

let bexp_rol v a n =
  let w = size_of_var v in
  Eq (w, exp_var v, Rol (w, exp_atom a, exp_atom n))

let bexp_ror v a n =
  let w = size_of_var v in
  Eq (w, exp_var v, Ror (w, exp_atom a, exp_atom n))

let bexp_cmov v c a1 a2 =
  let w = size_of_var v in
  let cond = Eq (1, exp_atom c, exp_const 1 Z.one) in
  Eq (w, exp_var v, Ite (w, cond, exp_atom a1, exp_atom a2))
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
            ZeroExtend (w - p, p, High (p, w - p, exp_atom a))),
        Eq (w,
            exp_var vl,
            ZeroExtend (p, w - p, Low (p, w - p, exp_atom a))))
  | Tsint w ->
     Conj
       (Eq (w,
            exp_var vh,
            SignExtend (w - p, p, High (p, w - p, exp_atom a))),
        Eq (w,
            exp_var vl,
            ZeroExtend (p, w - p, Low (p, w - p, exp_atom a))))
let bexp_spl vh vl a p =
  let p = Z.to_int p in
  let w = size_of_atom a in
  Conj
    ((Eq (w - p, exp_var vh, High (p, w - p, exp_atom a))),
     (Eq (p, exp_var vl, Low (p, w - p, exp_atom a))))
let bexp_seteq v a1 a2 =
  let w = size_of_atom a1 in
  let sv = size_of_var v in
  if sv = 1 then
    Eq (sv, exp_var v, (Comp (w, exp_atom a1, exp_atom a2)))
  else
    Eq (sv,
        exp_var v,
        (Sub (sv,
              Const (sv, Z.zero),
              ZeroExtend (1, sv - 1, Comp (w, exp_atom a1, exp_atom a2)))))
let bexp_setne v a1 a2 =
  let w = size_of_atom a1 in
  let sv = size_of_var v in
  if sv = 1 then
    Eq (1, exp_var v, (Not (1, Comp (w, exp_atom a1, exp_atom a2))))
  else
    Eq (sv,
        exp_var v,
        Sub (sv,
             Const (sv, Z.zero),
             ZeroExtend (1, sv - 1, Not (1, Comp (w, exp_atom a1, exp_atom a2)))))
let bexp_and v a1 a2 =
  let w = size_of_var v in
  Eq (w, exp_var v, And (w, exp_atom a1, exp_atom a2))
let bexp_or v a1 a2 =
  let w = size_of_var v in
  Eq (w, exp_var v, Or (w, exp_atom a1, exp_atom a2))
let bexp_xor v a1 a2 =
  let w = size_of_var v in
  Eq (w, exp_var v, Xor (w, exp_atom a1, exp_atom a2))
let bexp_not v a =
  let w = size_of_var v in
  Eq (w, exp_var v, Not (w, exp_atom a))
(*
 * - Upcast: do signed or unsigned extension (depending on the source type), and then interpret depending on the destination type
 * - Downcast: discard the most significant bits that are not present in the destination type, and then interpret depending on the destination type
 *)
let bexp_cast od v a =
  let bcast =
    match v.vtyp, typ_of_atom a with
    | Tuint wv, Tuint wa
      | Tsint wv, Tuint wa ->
       if wv = wa then Eq (wv, exp_var v, exp_atom a)
       else if wv < wa then Eq (wv, exp_var v, Low (wv, wa - wv, exp_atom a))
       else Eq (wv, exp_var v, ZeroExtend (wa, wv - wa, exp_atom a))
    | Tuint wv, Tsint wa
      | Tsint wv, Tsint wa ->
       if wv = wa then Eq (wv, exp_var v, exp_atom a)
       else if wv < wa then Eq (wv, exp_var v, Low (wv, wa - wv, exp_atom a))
       else Eq (wv, exp_var v, SignExtend (wa, wv - wa, exp_atom a)) in
  let bextra =
    match od with
    | None -> None
    | Some d ->
       (match v.vtyp, typ_of_atom a with
        | Tuint wv, Tuint wa ->
           if wv >= wa then Some (Eq (wv - wa, exp_var d, Const (wv - wa, Z.zero)))
           else Some (Eq (wa - wv, exp_var d, High (wv, wa - wv, exp_atom a)))
        | Tuint wv, Tsint wa ->
           if wv >= wa then Some (Eq (1, exp_var d, High (wa - 1, 1, exp_atom a)))
           else Some (Eq (wa - wv, exp_var d, High (wv, wa - wv, exp_atom a)))
        | Tsint wv, Tuint wa ->
           if wv > wa then Some (Eq (wv - wa, exp_var d, Const (wv - wa, Z.zero)))
           else if wv = wa then Some (Eq (1, exp_var d, High (wa - 1, 1, exp_atom a)))
           else Some (Eq (wa - wv + 1,
                          exp_var d,
                          Add (wa - wv + 1,
                               ZeroExtend (wa - wv, 1, High (wv, wa - wv, exp_atom a)), (* ZeroExtend is used to avoid overflow *)
                               ZeroExtend (1, wa - wv, High (wv - 1, 1, Low (wv, wa - wv, exp_atom a))) (* the sign bit of v *)
                  )))
        | Tsint wv, Tsint wa ->
           if wv >= wa then Some (Eq (wv - wa, exp_var d, Const (wv - wa, Z.zero)))
           else Some (Eq (wa - wv + 1,
                          exp_var d,
                          Add (wa - wv + 1,
                               SignExtend (wa - wv, 1, High (wv, wa - wv, exp_atom a)), (* SignExtend is used to avoid overflow *)
                               ZeroExtend (1, wa - wv, High (wv - 1, 1, Low (wv, wa - wv, exp_atom a))) (* the sign bit of v *)
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
      Concat (size_of_atom ah, size_of_atom al, exp_atom ah, exp_atom al))

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
  | Icshls (l, vh, vl, a1, a2, p) -> bexp_cshls l vh vl a1 a2 p
  | Icshr (vh, vl, a1, a2, p) -> bexp_cshr vh vl a1 a2 p
  | Icshrs (vh, vl, l, a1, a2, p) -> bexp_cshrs vh vl l a1 a2 p
  | Irol (v, a, n) -> bexp_rol v a n
  | Iror (v, a, n) -> bexp_ror v a n
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
  | Ispl (vh, vl, a, p) -> bexp_spl vh vl a p
  | Iseteq (v, a1, a2) -> bexp_seteq v a1 a2
  | Isetne (v, a1, a2) -> bexp_setne v a1 a2
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

let bexp_atom_uadd_safe w a1 a2 =
  Lneg (Uaddo (w, exp_atom a1, exp_atom a2))

let bexp_atom_sadd_safe w a1 a2 =
  Lneg (Saddo (w, exp_atom a1, exp_atom a2))

let bexp_atom_uadc_safe w a1 a2 y =
  let a1 = exp_atom a1 in
  let a2 = exp_atom a2 in
  let y = exp_carry w y in
  Conj
    (Lneg (Uaddo (w, a2, y)),
     Lneg (Uaddo (w, a1, Add (w, a2, y))))

let bexp_atom_sadc_safe w a1 a2 y =
  let a1 = exp_atom a1 in
  let a2 = exp_atom a2 in
  let y = exp_carry w y in
  Conj
    (Lneg (Saddo (w, a2, y)),
     Lneg (Saddo (w, a1, Add (w, a2, y))))

let bexp_atom_usub_safe w a1 a2 =
  Lneg (Usubo (w, exp_atom a1, exp_atom a2))

let bexp_atom_ssub_safe w a1 a2 =
  Lneg (Ssubo (w, exp_atom a1, exp_atom a2))

let bexp_atom_usbc_safe w a1 a2 y =
  let a1 = exp_atom a1 in
  let a2 = exp_atom a2 in
  let borrow = Sub (w, Const (w, Z.one), exp_carry w y) in
  Conj
    (Lneg (Uaddo (w, a2, borrow)),
     Lneg (Usubo (w, a1, Add (w, a2, borrow))))

let bexp_atom_ssbc_safe w a1 a2 y =
  let a1 = exp_atom a1 in
  let a2 = exp_atom a2 in
  let borrow = Sub (w, Const (w, Z.one), exp_carry w y) in
  Conj
    (Lneg (Saddo (w, a2, borrow)),
     Lneg (Ssubo (w, a1, Add (w, a2, borrow))))

let bexp_atom_usbb_safe w a1 a2 y =
  let a1 = exp_atom a1 in
  let a2 = exp_atom a2 in
  let y = exp_carry w y in
  Conj
    (Lneg (Uaddo (w, a2, y)),
     Lneg (Usubo (w, a1, Add (w, a2, y))))

let bexp_atom_ssbb_safe w a1 a2 y =
  let a1 = exp_atom a1 in
  let a2 = exp_atom a2 in
  let y = exp_carry w y in
  Conj
    (Lneg (Saddo (w, a2, y)),
     Lneg (Ssubo (w, a1, Add (w, a2, y))))

let bexp_atom_umul_safe w a1 a2 =
  Lneg (Umulo (w, exp_atom a1, exp_atom a2))

let bexp_atom_smul_safe w a1 a2 =
  Lneg (Smulo (w, exp_atom a1, exp_atom a2))

let bexp_atom_ushl_safe w a p =
  if atom_is_const p then
    let n = Z.to_int (const_of_atom p) in
    Eq (n,
        High (w - n, n, exp_atom a),
        Const (n, Z.zero))
  else
    Eq (w,
        Lshr (w, exp_atom a, Sub (w, Const (w, Z.of_int w), exp_atom p)),
        Const (w, Z.zero))

let bexp_atom_sshl_safe w a p =
  if atom_is_const p then
    let n = Z.to_int (const_of_atom p) in
    Eq (w,
        SignExtend (w - n, n, Low (w - n, n, exp_atom a)),
        exp_atom a)
  else
    let shifted =
      Ashr (w,
            exp_atom a,
            Sub (w,
                 Sub (w, Const (w, Z.of_int w), exp_atom p),
                 Const (w, Z.one))) in
    Disj
      (Eq (w, shifted, Const (w, Z.zero)),
       Eq (w, shifted, Sub (w, Const (w, Z.zero), Const (w, Z.one))))

let bexp_atom_ushr_safe w a p =
  if atom_is_const p then
    let n = Z.to_int (const_of_atom p) in
    Eq (n,
        Low (n, w - n, exp_atom a),
        Const (n, Z.zero))
  else
    Eq (w,
        Shl (w, exp_atom a, Sub (w, Const (w, Z.of_int w), exp_atom p)),
        Const (w, Z.zero))

let bexp_atom_sshr_safe w a p =
  if atom_is_const p then
    let n = Z.to_int (const_of_atom p) in
    Conj
      (Eq (1, High (w - 1, 1, exp_atom a), Const (1, Z.zero)),
       Eq (w, Low (n, w - n, exp_atom a), Const (n, Z.zero)))
  else
    Conj
      (Eq (w, Lshr (w, exp_atom a, Const (w, Z.of_int (w - 1))), Const (w, Z.zero)),
       Eq (w, Shl (w, exp_atom a, Sub (w, Const (w, Z.of_int w), exp_atom p)), Const (w, Z.zero)))

let bexp_atom_usar_safe w a p =
  if atom_is_const p then
    let n = Z.to_int (const_of_atom p) in
    Conj
      (Eq (n, Low (n, w - n, exp_atom a), Const (n, Z.zero)),
       Eq (1, High (w - 1, 1, exp_atom a), Const (1, Z.zero)))
  else
    Conj
      (Eq (w, Lshr (w, exp_atom a, Const (w, Z.of_int (w - 1))), Const (w, Z.zero)),
       Eq (w, Shl (w, exp_atom a, Sub (w, Const (w, Z.of_int w), exp_atom p)), Const (w, Z.zero)))

let bexp_atom_ssar_safe w a p =
  if atom_is_const p then
    let n = Z.to_int (const_of_atom p) in
    Eq (n,
        Low (n, w - n, exp_atom a),
        Const (n, Z.zero))
  else
    Eq (w,
        Shl (w, exp_atom a, Sub (w, Const (w, Z.of_int w), exp_atom p)),
        Const (w, Z.zero))

let bexp_atom_ucshl_safe w a1 _a2 n =
  Conj
    (Ule (w, Const (w, n), Const (w, Z.of_int w)),
     bexp_atom_ushl_safe w a1 (mkatom_const (uint_t w) n))

let bexp_atom_scshl_safe w a1 _a2 n =
  Conj
    (Ule (w, Const (w, n), Const (w, Z.of_int w)),
     bexp_atom_sshl_safe w a1 (mkatom_const (uint_t w) n))

let bexp_atom_ucshr_safe w _a1 a2 n =
  let ni = Z.to_int n in
  Conj
    (Ule (w, Const (w, n), Const (w, Z.of_int w)),
     Eq (ni, Low (ni, w - ni, exp_atom a2), Const (ni, Z.zero)))

let bexp_atom_scshr_safe w a1 a2 n =
  let ni = Z.to_int n in
  Conj
    (Ule (w, Const (w, n), Const (w, Z.of_int w)),
     Conj (Eq (ni, Low (ni, w - ni, exp_atom a2), Const (ni, Z.zero)),
           Eq (1, High (w - 1, 1, exp_atom a1), Const (1, Z.zero))))

let bexp_vpc_safe v a =
  match v.vtyp, typ_of_atom a with
  | Tuint wv, Tuint wa ->
     if wv >= wa then True
     else Eq (wa - wv,
              High (wv, wa - wv, exp_atom a),
              Const (wa - wv, Z.zero))
  | Tsint wv, Tuint wa ->
     if wv > wa then True
     else Eq (wa - wv + 1,
              High (wv - 1, wa - wv + 1, exp_atom a),
              Const (wa - wv + 1, Z.zero))
  | Tuint wv, Tsint wa ->
     if wv >= wa - 1 then Eq (1, High (wa - 1, 1, exp_atom a), Const (1, Z.zero))
     else Eq (wa - wv,
              High (wv, wa - wv, exp_atom a),
              Const (wa - wv, Z.zero))
  | Tsint wv, Tsint wa ->
     if wv >= wa then True
     else Eq (wa,
              SignExtend (wv, wa - wv, Low (wv, wa - wv, exp_atom a)),
              exp_atom a)

let bexp_instr_safe i =
  match i with
  | Imov _ -> True
  | Ishl (v, a, n) ->
     (match v.vtyp with
      | Tuint w -> bexp_atom_ushl_safe w a n
      | Tsint w -> bexp_atom_sshl_safe w a n)
  | Ishls _ -> True
  | Ishr (v, a, n) ->
     (match v.vtyp with
      | Tuint w -> bexp_atom_ushr_safe w a n
      | Tsint w -> bexp_atom_sshr_safe w a n)
  | Ishrs _ -> True
  | Isar (v, a, n) ->
     (match v.vtyp with
      | Tuint w -> bexp_atom_usar_safe w a n
      | Tsint w -> bexp_atom_ssar_safe w a n)
  | Isars _ -> True
  | Icshl (vh, _, a1, a2, n) ->
     (match vh.vtyp with
      | Tuint w -> bexp_atom_ucshl_safe w a1 a2 n
      | Tsint w -> bexp_atom_scshl_safe w a1 a2 n)
  | Icshls _ -> True
  | Icshr (vh, _, a1, a2, n) ->
     (match vh.vtyp with
      | Tuint w -> bexp_atom_ucshr_safe w a1 a2 n
      | Tsint w -> bexp_atom_scshr_safe w a1 a2 n)
  | Icshrs _ -> True
  | Irol _ -> True
  | Iror _ -> True
  | Inondet _ -> True
  | Icmov _ -> True
  | Inop -> True
  | Iadd (v, a1, a2) ->
     (match v.vtyp with
      | Tuint w -> bexp_atom_uadd_safe w a1 a2
      | Tsint w -> bexp_atom_sadd_safe w a1 a2)
  | Iadds _ -> True
  | Iadc (v, a1, a2, y) ->
     (match v.vtyp with
      | Tuint w -> bexp_atom_uadc_safe w a1 a2 y
      | Tsint w -> bexp_atom_sadc_safe w a1 a2 y)
  | Iadcs _ -> True
  | Isub (v, a1, a2) ->
     (match v.vtyp with
      | Tuint w -> bexp_atom_usub_safe w a1 a2
      | Tsint w -> bexp_atom_ssub_safe w a1 a2)
  | Isubc _ -> True
  | Isubb _ -> True
  | Isbc (v, a1, a2, y) ->
     (match v.vtyp with
      | Tuint w -> bexp_atom_usbc_safe w a1 a2 y
      | Tsint w -> bexp_atom_ssbc_safe w a1 a2 y)
  | Isbcs _ -> True
  | Isbb (v, a1, a2, y) ->
     (match v.vtyp with
      | Tuint w -> bexp_atom_usbb_safe w a1 a2 y
      | Tsint w -> bexp_atom_ssbb_safe w a1 a2 y)
  | Isbbs _ -> True
  | Imul (v, a1, a2) ->
     (match v.vtyp with
      | Tuint w -> bexp_atom_umul_safe w a1 a2
      | Tsint w -> bexp_atom_smul_safe w a1 a2)
  | Imuls _ -> True
  | Imull _
    | Imulj _ -> True
  | Isplit _ -> True
  | Ispl _ -> True
  | Iseteq _ -> True
  | Isetne _ -> True
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

let smt_of_ecmpop op = match op with
  | Elt -> "<" | Ele -> "<=" | Egt -> ">" | Ege -> ">="

let smtlib_eq e1 e2 = String.concat "" ["(= "; e1; " "; e2; ")"]
let smtlib_and e1 e2 = String.concat "" ["(and "; e1; " "; e2; ")"]
let smtlib_ecmpop op e1 e2 = String.concat "" ["("; smt_of_ecmpop op; " "; e1; " "; e2; ")"]

let rec smtlib_ebexp_premise vgen e =
  match e with
  | Etrue -> (vgen, "true")
  | Eeq (e1, e2) -> (vgen, smtlib_eq (smtlib_eexp e1) (smtlib_eexp e2))
  | Eeqmod (e1, e2, ms) ->
     let (vgen, ks_rev) = List.fold_left (fun (vgen, ks_rev) _ ->
        let (k, vgen) = Cas.gen_var vgen in (vgen, k::ks_rev)) (vgen, []) ms in
     (vgen, String.concat "" ["(= "; smtlib_eexp (esub e1 e2); " "; smtlib_adds (List.map2 (fun k m -> smtlib_mul k (smtlib_eexp m)) (List.rev ks_rev) ms); ")"])
  | Ecmp (op, e1, e2) -> (vgen, smtlib_ecmpop op (smtlib_eexp e1) (smtlib_eexp e2))
  | Eand (e1, e2) ->
     let (vgen, e1) = smtlib_ebexp_premise vgen e1 in
     let (vgen, e2) = smtlib_ebexp_premise vgen e2 in
     (vgen, smtlib_and e1 e2)

let rec smtlib_ebexp_consequence vgen e =
  match e with
  | Etrue -> (vgen, [], "true")
  | Eeq (e1, e2) -> (vgen, [], smtlib_eq (smtlib_eexp e1) (smtlib_eexp e2))
  | Eeqmod (e1, e2, ms) ->
     let (vgen, ks_rev) = List.fold_left (fun (vgen, ks_rev) _ ->
        let (k, vgen) = Cas.gen_var vgen in (vgen, k::ks_rev)) (vgen, []) ms in
     let unquantified = smtlib_eq (smtlib_eexp (esub e1 e2)) (smtlib_adds (List.map2 (fun k m -> smtlib_mul k (smtlib_eexp m)) (List.rev ks_rev) ms)) in
     let quantified = List.fold_left (fun quantified k -> smtlib_exists k quantified) unquantified ks_rev in
     (vgen, ks_rev, quantified)
  | Ecmp (op, e1, e2) -> (vgen, [], smtlib_ecmpop op (smtlib_eexp e1) (smtlib_eexp e2))
  | Eand (e1, e2) ->
     let (vgen, ks_rev1, e1) = smtlib_ebexp_consequence vgen e1 in
     let (vgen, ks_rev2, e2) = smtlib_ebexp_consequence vgen e2 in
     (vgen, List.rev_append ks_rev1 ks_rev2, smtlib_and e1 e2)

(*
 * Convert `eeqmod e1 e2 [m1; m2; ...; mn]` to `e1 - e2 = k1 * m1 + k2 * m2 + ... + kn * mn`
 * where k1, k2, ..., kn are new variables of type bit.
 *)
let rec translate_eeqmod vgen e =
  match e with
  | Eeqmod (e1, e2, ms) ->
     let (vgen, ks_rev) = List.fold_left (fun (vgen, ks_rev) _ ->
         let (k, vgen) = Cas.gen_var vgen in (vgen, k::ks_rev)) (vgen, []) ms in
     let ks = List.rev_map (fun k -> evar (mkvar ~newvid:true k bit_t)) ks_rev in
     (vgen, eeq (esub e1 e2) (eadds (List.map2 (fun k m -> emul k m) ks ms)))
  | Eand (e1, e2) ->
     let (vgen, e1) = translate_eeqmod vgen e1 in
     let (vgen, e2) = translate_eeqmod vgen e2 in
     (vgen, Eand (e1, e2))
  | _ -> (vgen, e)

let smtlib_var_ranges vgen vs =
  let smtlib_var_range_acc (vgen, res) v =
    let ty = typ_of_var v in
    let min_Z = min_of_typ ty in
    let max_Z = max_of_typ ty in
    let (vgen, min_smtlib) = smtlib_ebexp_premise vgen (Ecmp (Ele, Econst min_Z, Evar v)) in
    let (vgen, max_smtlib) = smtlib_ebexp_premise vgen (Ecmp (Ele, Evar v, Econst max_Z)) in
    (vgen, (smtlib_and min_smtlib max_smtlib)::res) in
  List.fold_left smtlib_var_range_acc (vgen, []) vs

let smtlib_ebexps_lia vgen es =
  let vars = VS.elements (List.fold_left (fun res e -> VS.union res (vars_ebexp e)) VS.empty es) in
  (* Convert to SMTLIB format *)
  let (vgen, smtlibs) =
    let (vgen, smtlibs_rev) =
      List.fold_left (
          fun (vgen, smtlibs_rev) e ->
          let (vgen, _, e) = smtlib_ebexp_consequence vgen e in (vgen, e::smtlibs_rev)
        ) (vgen, []) es in
    (vgen, List.rev smtlibs_rev) in
  (* Return the string representation in SMTLIB *)
  (vgen,
   String.concat "\n" [
       "(set-logic LIA)";
       String.concat "\n" (List.map smtlib_declare_int (List.map string_of_var vars));
       String.concat "\n" (List.map smtlib_assert smtlibs);
       "(check-sat)"
  ])

let smtlib_espec vgen es =
  let (vgen, zs) = Cas.bv2z_espec vgen es in
  (* Convert to ebexp *)
  let (vgen, zf, zp, zg) =
    let (vgen, zf) = translate_eeqmod vgen zs.ppre in
    let (vgen, zp_rev) = List.fold_left (fun (vgen, zp_rev) i -> let (vgen, zi) = translate_eeqmod vgen i in (vgen, zi::zp_rev)) (vgen, []) zs.pprog in
    (vgen, zf, List.rev zp_rev, zs.ppost) in
  (* Collect free variables *)
  let vars = VS.elements (List.fold_left (fun res e -> VS.union res (vars_ebexp e)) VS.empty (zf::(rcons zp zg))) in
  (* Convert to SMTLIB format *)
  let (vgen, _ks_rev, f, p, g) =
    let (vgen, f) = smtlib_ebexp_premise vgen zf in
    let (vgen, p_rev) = List.fold_left (fun (vgen, p_rev) e -> let (vgen, e) = smtlib_ebexp_premise vgen e in (vgen, e::p_rev)) (vgen, []) zp in
    let (vgen, ks_rev, g) = smtlib_ebexp_consequence vgen zg in
    (vgen, ks_rev, f, List.rev p_rev, g) in
  (*
    Variable ranges
    Ghost variables are excluded because their ranges may be unbounded.
   *)
  let (vgen, var_ranges) =
    let program_vars = VS.diff (vars_espec es) (gvs_program es.esprog) in
    smtlib_var_ranges vgen (VS.elements program_vars) in
  (* Return the string representation in SMTLIB *)
  (vgen,
   String.concat "\n" [
       "(set-logic NIA)";
       smtlib_define_expn();
       String.concat "\n" (List.map smtlib_declare_int (List.map string_of_var vars));
       String.concat "\n" (List.map smtlib_assert var_ranges);
       smtlib_assert f;
       String.concat "\n" (List.map smtlib_assert p);
       (smtlib_assert (smtlib_not g));
       "(check-sat)"
  ])
