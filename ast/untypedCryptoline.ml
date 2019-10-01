
open Big_int_Z
open Set
open Options.Std

let two_big_int = big_int_of_int 2

let _eq_symbol = "="
let add_symbol = "+"
let sub_symbol = "-"
let mul_symbol = "*"
let ult_symbol = "<u"
let ule_symbol = "<=u"
let ugt_symbol = ">u"
let uge_symbol = ">=u"
let slt_symbol = "<s"
let sle_symbol = "<=s"
let sgt_symbol = ">s"
let sge_symbol = ">=s"

type associativity = LeftAssoc | RightAssoc

(* LeftAssoc: add [n0, n1, ..., nm] = (...((n0 + n1) + n2)...) + nm *)
(* RightAssoc: add [n0, n1, ..., nm] = nm + (...(n2 + (n1 + n0))...) *)
let add_assoc = LeftAssoc
let mul_assoc = LeftAssoc
let conj_assoc = LeftAssoc
let disj_assoc = LeftAssoc
let _unused_assoc = RightAssoc

(** General types *)

type width = int

type var = string

type const = big_int

let string_of_const n = string_of_big_int n


(** Variable sets and maps *)

module VarElem : OrderedType with type t = var =
  struct
    type t = var
    let compare = Pervasives.compare
  end
module VS = Set.Make(VarElem)
module VM = Map.Make(VarElem)

let vs_disjoint vs1 vs2 = VS.is_empty (VS.inter vs1 vs2)
let string_of_vs vs = String.concat ", " (VS.elements vs)


(** Operators *)

type eunop =
  | BveNeg

type ebinop =
  | BveAdd
  | BveSub
  | BveMul

type runop =
  | BvrNegb
  | BvrNotb

type rbinop =
  | BvrAdd
  | BvrSub
  | BvrMul
  | BvrUmod
  | BvrSrem (* 2's complement signed remainder (sign follows dividend) *)
  | BvrSmod (* 2's complement signed remainder (sign follows divisor) *)
  | BvrAndb
  | BvrOrb
  | BvrXorb

type rcmpop =
  | BvrUlt
  | BvrUle
  | BvrUgt
  | BvrUge
  | BvrSlt
  | BvrSle
  | BvrSgt
  | BvrSge

let string_of_eunop op =
  match op with
  | BveNeg -> "neg"

let symbol_of_eunop op =
  match op with
  | BveNeg -> "-"

let string_of_ebinop op =
  match op with
  | BveAdd -> "add"
  | BveSub -> "sub"
  | BveMul -> "mul"

let symbol_of_ebinop op =
  match op with
  | BveAdd -> add_symbol
  | BveSub -> sub_symbol
  | BveMul -> mul_symbol

let string_of_rcmpop op =
  match op with
  | BvrUlt -> "ult"
  | BvrUle -> "ule"
  | BvrUgt -> "ugt"
  | BvrUge -> "uge"
  | BvrSlt -> "slt"
  | BvrSle -> "sle"
  | BvrSgt -> "sgt"
  | BvrSge -> "sge"

let symbol_of_rcmpop op =
  match op with
  | BvrUlt -> ult_symbol
  | BvrUle -> ule_symbol
  | BvrUgt -> ugt_symbol
  | BvrUge -> uge_symbol
  | BvrSlt -> slt_symbol
  | BvrSle -> sle_symbol
  | BvrSgt -> sgt_symbol
  | BvrSge -> sge_symbol

let string_of_runop op =
  match op with
  | BvrNegb -> "bvrNeg"
  | BvrNotb -> "bvrNotb"

let string_of_rbinop op =
  match op with
  | BvrAdd -> "add"
  | BvrSub -> "sub"
  | BvrMul -> "mul"
  | BvrUmod -> "umod"
  | BvrSrem -> "srem"
  | BvrSmod -> "smod"
  | BvrAndb -> "and"
  | BvrOrb -> "orb"
  | BvrXorb -> "xor"


(** Algebraic Expressions *)

type eexp =
  | BveVar of var
  | BveConst of const
  | BveUnop of eunop * eexp
  | BveBinop of ebinop * eexp * eexp

let bvevar v = BveVar v
let bveconst n = BveConst n
let bvconst n = BveConst n
let bveneg e = BveUnop (BveNeg, e)
let bveadd e1 e2 = BveBinop (BveAdd, e1, e2)
let bvesub e1 e2 = BveBinop (BveSub, e1, e2)
let bvemul e1 e2 = BveBinop (BveMul, e1, e2)
let bvesq e = BveBinop (BveMul, e, e)
(*let bveadds es = List.fold_left (fun res e -> bveadd e res) (bveconst zero_big_int) es
let bvemuls es = List.fold_left (fun res e -> bvemul e res) (bveconst unit_big_int) es*)
let bveadds es =
  match es with
  | [] -> bveconst zero_big_int
  | e::[] -> e
  | e::es -> (match add_assoc with
              | LeftAssoc -> List.fold_left (fun res e -> bveadd res e) e es
              | RightAssoc -> List.fold_left (fun res e -> bveadd e res) e es)
let bvemuls es =
  match es with
  | [] -> bveconst unit_big_int
  | e::[] -> e
  | e::es -> (match mul_assoc with
              | LeftAssoc -> List.fold_left (fun res e -> bvemul res e) e es
              | RightAssoc -> List.fold_left (fun res e -> bvemul e res) e es)

let bve2pow n = power_big_int_positive_int two_big_int n

let rec len_eexp e =
  match e with
  | BveVar _ -> 1
  | BveConst _ -> 1
  | BveUnop (_, e) -> 1 + len_eexp e
  | BveBinop (_, e1, e2) -> 1 + len_eexp e1 + len_eexp e2

(* We cannot compare two expressions with = because of big_int. *)
let rec eq_eexp e1 e2 =
  match e1, e2 with
  | BveVar v1, BveVar v2 -> v1 = v2
  | BveConst n1, BveConst n2 -> eq_big_int n1 n2
  | BveUnop (op1, e1), BveUnop (op2, e2) -> op1 = op2 && eq_eexp e1 e2
  | BveBinop (op1, e11, e12), BveBinop (op2, e21, e22) -> op1 = op2 && eq_eexp e11 e21 && eq_eexp e12 e22
  | _ -> false

let cmp_eunop op1 op2 = Pervasives.compare op1 op2

let _cmp_ebinop op1 op2 = Pervasives.compare op1 op2

let rec cmp_eexp e1 e2 =
  match e1, e2 with
  | BveVar v1, BveVar v2 -> Pervasives.compare v1 v2
  | BveVar _, _ -> -1
  | BveConst _, BveVar _ -> 1
  | BveConst n1, BveConst n2 -> compare_big_int n1 n2
  | BveConst _, _ -> -1
  | BveUnop _, BveVar _
    | BveUnop _, BveConst _ -> 1
  | BveUnop (op1, e1), BveUnop (op2, e2) ->
     let cmp = cmp_eunop op1 op2 in
     if cmp = 0 then cmp_eexp e1 e2
     else cmp
  | BveUnop _, _ -> -1
  | BveBinop (op1, e11, e12), BveBinop (op2, e21, e22) ->
     let cmp = cmp_eunop op1 op2 in
     if cmp = 0 then
       let cmp = cmp_eexp e11 e21 in
       if cmp = 0 then cmp_eexp e12 e22
       else cmp
     else cmp
  | BveBinop _, _ -> 1

module EEElt : Set.OrderedType with type t = eexp =
  struct
    type t = eexp
    let compare = cmp_eexp
  end

module EES : Set.S with type elt = eexp = Set.Make(EEElt)

let rec simplify_eexp e =
  match e with
  | BveUnop (BveNeg, e) ->
     let e = simplify_eexp e in
     (match e with
      | BveConst n when eq_big_int n zero_big_int -> BveConst zero_big_int
      | BveUnop (BveNeg, sub) -> sub
      | _ -> BveUnop (BveNeg, e))
  | BveBinop (op, e1, e2) ->
     let e1 = simplify_eexp e1 in
     let e2 = simplify_eexp e2 in
     (match op, e1, e2 with
      | BveAdd, e, BveConst n when eq_big_int n zero_big_int -> e
      | BveAdd, BveConst n, e when eq_big_int n zero_big_int -> e
      | BveSub, e, BveConst n when eq_big_int n zero_big_int -> e
      | BveSub, BveConst n, e when eq_big_int n zero_big_int -> simplify_eexp (BveUnop (BveNeg, e))
      | BveMul, _e, BveConst n when eq_big_int n zero_big_int -> BveConst zero_big_int
      | BveMul, BveConst n, _e when eq_big_int n zero_big_int -> BveConst zero_big_int
      | BveMul, e, BveConst n when eq_big_int n unit_big_int -> e
      | BveMul, BveConst n, e when eq_big_int n unit_big_int -> e
      | _ -> BveBinop (op, e1, e2))
  | _ -> e

(*
let rec limbs_rec r p es =
  match es with
  | [] -> bveconst zero_big_int
  | hd::[] -> if p = 0 then hd else bvemul hd (bveconst (bve2pow p))
  | hd::tl ->
     let m = p + r in
     if p = 0 then bveadd hd (limbs_rec r m tl)
     else bveadd (bvemul hd (bveconst (bve2pow p))) (limbs_rec r m tl)

let limbs r es = limbs_rec r 0 es
*)
let limbs r es =
  let mons = List.mapi (fun i e ->
                 if i = 0 then e
                 else bvemul e (bveconst (bve2pow (i * r)))) es in
  match add_assoc with
  | LeftAssoc -> bveadds mons
  | RightAssoc -> bveadds (List.rev mons)

let eunop_precedence op =
  match op with
  | BveNeg -> 2

let ebinop_precedence op =
  match op with
  | BveAdd -> 0
  | BveSub -> 0
  | BveMul -> 1

let eexp_precedence e =
  match e with
  | BveVar _ -> 3
  | BveConst _ -> 3
  | BveUnop (op, _) -> eunop_precedence op
  | BveBinop (op, _, _) -> ebinop_precedence op

let ebinop_eexp_open op e =
  match op, e with
  | _, BveVar _ -> true
  | _, BveConst _ -> true
  | _, BveUnop (_op, _) -> false
  | BveAdd, BveBinop (op, _, _) -> op == BveAdd || op == BveSub
  | BveSub, BveBinop (_op, _, _) -> false
  | BveMul, BveBinop (op, _, _) -> op == BveMul

let eexp_ebinop_open e op =
  match e, op with
  | BveVar _, _ -> true
  | BveConst _, _ -> true
  | BveUnop (_op, _), _ -> false
  | BveBinop (op, _, _), BveAdd -> op == BveAdd || op == BveSub
  | BveBinop (op, _, _), BveSub -> op == BveAdd || op == BveSub
  | BveBinop (op, _, _), BveMul -> op == BveMul

let is_eexp_atomic e =
  match e with
  | BveVar _ | BveConst _ -> true
  | _ -> false

let rec string_of_eexp e =
  match e with
  | BveVar v -> v
  | BveConst n -> string_of_const n
  | BveUnop (op, e) -> symbol_of_eunop op ^ (if is_eexp_atomic e then string_of_eexp e else " (" ^ string_of_eexp e ^ ")")
  | BveBinop (op, e1, e2) ->
       (if eexp_ebinop_open e1 op then string_of_eexp e1 else "(" ^ string_of_eexp e1 ^ ")")
       ^ " " ^ symbol_of_ebinop op ^ " "
       ^ (if ebinop_eexp_open op e2 then string_of_eexp e2 else "(" ^ string_of_eexp e2 ^ ")")

let rec vars_eexp e =
  match e with
  | BveVar x -> VS.singleton x
  | BveConst _ -> VS.empty
  | BveUnop (_, e) -> vars_eexp e
  | BveBinop (_, e1, e2) -> VS.union (vars_eexp e1) (vars_eexp e2)

let rec _subst_eexp v r e =
  match e with
  | BveVar x when x = v -> r
  | BveUnop (op, e) -> BveUnop (op, _subst_eexp v r e)
  | BveBinop (op, e1, e2) -> BveBinop (op, _subst_eexp v r e1, _subst_eexp v r e2)
  | _ -> e

let rec subst_evar pats v =
  match pats with
  | [] -> BveVar v
  | (x, r)::_tl when v = x -> r
  | _::tl -> subst_evar tl v

let rec subst_eexp pats e =
  match e with
  | BveVar v -> subst_evar pats v
  | BveConst _n -> e
  | BveUnop (op, e) -> BveUnop (op, subst_eexp pats e)
  | BveBinop (op, e1, e2) -> BveBinop (op, subst_eexp pats e1, subst_eexp pats e2)

let rec replace_eexp pats e =
  try
    snd (List.find (fun (pat, _repl) -> eq_eexp pat e) pats)
  with Not_found ->
       begin
         match e with
         | BveUnop (op, e) -> BveUnop (op, replace_eexp pats e)
         | BveBinop (op, e1, e2) -> BveBinop (op, replace_eexp pats e1, replace_eexp pats e2)
         | _ -> e
       end

let rec subs_eexp e =
  EES.add e (match e with
             | BveVar _ -> EES.empty
             | BveConst _ -> EES.empty
             | BveUnop (_, e) -> subs_eexp e
             | BveBinop (_, e1, e2) -> EES.union (subs_eexp e1) (subs_eexp e2)
            )

let rec eexp_has_sub e sub =
  if eq_eexp e sub then true
  else match e with
       | BveUnop (_, e) -> eexp_has_sub e sub
       | BveBinop (_, e1, e2) -> eexp_has_sub e1 sub || eexp_has_sub e2 sub
       | _ -> false


(** Range Expressions *)

type rexp =
  | BvrVar of var
  | BvrConst of width * const
  | BvrUnop of width * runop * rexp
  | BvrBinop of width * rbinop * rexp * rexp
  | BvrUext of width * rexp * int
  | BvrSext of width * rexp * int

let width_of_rexp e =
  match e with
  | BvrVar _v -> !wordsize
  | BvrConst (w, _) -> w
  | BvrUnop (w, _, _) -> w
  | BvrBinop (w, _, _, _) -> w
  | BvrUext (w, _, i)
  | BvrSext (w, _, i) -> w + i

let bvrvar v = BvrVar v
let bvrconst w n = BvrConst (w, n)
let bvrposz w n = BvrConst (w, n)
let bvrnegb w e = BvrUnop (w, BvrNegb, e)
let bvrnotb w e = BvrUnop (w, BvrNotb, e)
let bvradd w e1 e2 = BvrBinop (w, BvrAdd, e1, e2)
let bvrsub w e1 e2 = BvrBinop (w, BvrSub, e1, e2)
let bvrmul w e1 e2 = BvrBinop (w, BvrMul, e1, e2)
let bvrumod w e1 e2 = BvrBinop (w, BvrUmod, e1, e2)
let bvrsrem w e1 e2 = BvrBinop (w, BvrSrem, e1, e2)
let bvrsmod w e1 e2 = BvrBinop (w, BvrSmod, e1, e2)
let bvrandb w e1 e2 = BvrBinop (w, BvrAndb, e1, e2)
let bvrorb w e1 e2 = BvrBinop (w, BvrOrb, e1, e2)
let bvrxorb w e1 e2 = BvrBinop (w, BvrXorb, e1, e2)
let bvrsq w e = BvrBinop (w, BvrMul, e, e)
(*let bvradds w es = List.fold_left (fun res e -> bvradd w e res) (bvrconst w zero_big_int) es
let bvrmuls w es = List.fold_left (fun res e -> bvrmul w e res) (bvrconst w unit_big_int) es*)
let bvradds w es =
  match es with
  | [] -> bvrconst w zero_big_int
  | e::[] -> e
  | e::es -> (match add_assoc with
              | LeftAssoc -> List.fold_left (fun res e -> bvradd w res e) e es
              | RightAssoc -> List.fold_left (fun res e -> bvradd w e res) e es)
let bvrmuls w es =
  match es with
  | [] -> bvrconst w unit_big_int
  | e::[] -> e
  | e::es -> (match mul_assoc with
              | LeftAssoc -> List.fold_left (fun res e -> bvrmul w res e) e es
              | RightAssoc -> List.fold_left (fun res e -> bvrmul w e res) e es)

let _is_rexp_atomic e =
  match e with
  | BvrVar _ | BvrConst _ -> true
  | _ -> false

let rec string_of_rexp e =
  match e with
  | BvrVar v -> v
  | BvrConst (w, n) -> "const " ^ string_of_int w ^ " " ^ string_of_const n
  | BvrUnop (_w, op, e) -> string_of_runop op ^ " (" ^ string_of_rexp e ^ ")"
  | BvrBinop (_w, op, e1, e2) -> string_of_rbinop op ^ " (" ^ string_of_rexp e1 ^ ") (" ^ string_of_rexp e2 ^ ")"
  | BvrUext (_w, e, i) -> "uext " ^ " (" ^ string_of_rexp e ^ ") (" ^ string_of_int i ^ ")"
  | BvrSext (_w, e, i) -> "sext " ^ " (" ^ string_of_rexp e ^ ") (" ^ string_of_int i ^ ")"

let rec vars_rexp e =
  match e with
  | BvrVar x -> VS.singleton x
  | BvrConst (_, _) -> VS.empty
  | BvrUnop (_, _, e) -> vars_rexp e
  | BvrBinop (_, _, e1, e2) -> VS.union (vars_rexp e1) (vars_rexp e2)
  | BvrUext (_, e, _)
  | BvrSext (_, e, _) -> vars_rexp e

let rec subst_rvar pats v =
  match pats with
  | [] -> BvrVar v
  | (x, r)::_tl when v = x -> r
  | _::tl -> subst_rvar tl v

let rec subst_rexp pats e =
  match e with
  | BvrVar v -> subst_rvar pats v
  | BvrConst (_w, _n) -> e
  | BvrUnop (w, op, e) -> BvrUnop (w, op, subst_rexp pats e)
  | BvrBinop (w, op, e1, e2) -> BvrBinop (w, op, subst_rexp pats e1, subst_rexp pats e2)
  | BvrUext (w, e, i) -> BvrUext (w, subst_rexp pats e, i)
  | BvrSext (w, e, i) -> BvrSext (w, subst_rexp pats e, i)


(** Algebraic Predicates *)

type ebexp =
  | BveTrue
  | BveEq of eexp * eexp
  | BveEqMod of eexp * eexp * eexp
  | BveAnd of ebexp * ebexp

let bveand e1 e2 =
  match e1, e2 with
  | BveTrue, _ -> e2
  | _, BveTrue -> e1
  | _, _ -> BveAnd (e1, e2)

(*let bveands es = List.fold_left (fun res e -> bveand e res) BveTrue es*)
let bveands es =
  match conj_assoc with
  | LeftAssoc -> List.fold_left (fun res e -> bveand res e) BveTrue es
  | RightAssoc -> List.fold_left (fun res e -> bveand e res) BveTrue es

let rec split_bveand e =
  match e with
  | BveAnd (e1, e2) -> (split_bveand e1)@(split_bveand e2)
  | _ -> [e]

let rec string_of_ebexp e =
  match e with
  | BveTrue -> "true"
  | BveEq (e1, e2) -> "(" ^ string_of_eexp e1 ^ ") = (" ^ string_of_eexp e2 ^ ")"
  | BveEqMod (e1, e2, m) -> "eqmod (" ^ string_of_eexp e1 ^ ") (" ^ string_of_eexp e2 ^ ") (" ^ string_of_eexp m ^ ")"
  | BveAnd (e1, e2) ->
     let es = split_bveand e in
     match es with
     | _::_::[] -> "and (" ^ string_of_ebexp e1 ^ ") (" ^ string_of_ebexp e2 ^ ")"
     | _ -> "and [" ^ String.concat ", " (List.map string_of_ebexp es) ^ "]"

let rec vars_ebexp e =
  match e with
  | BveTrue -> VS.empty
  | BveEq (e1, e2) -> VS.union (vars_eexp e1) (vars_eexp e2)
  | BveEqMod (e1, e2, p) -> VS.union (vars_eexp e1) (VS.union (vars_eexp e2) (vars_eexp p))
  | BveAnd (e1, e2) -> VS.union (vars_ebexp e1) (vars_ebexp e2)

let rec subst_ebexp pats e =
  match e with
  | BveTrue -> e
  | BveEq (e1, e2) -> BveEq (subst_eexp pats e1, subst_eexp pats e2)
  | BveEqMod (e1, e2, m) -> BveEqMod (subst_eexp pats e1, subst_eexp pats e2, subst_eexp pats m)
  | BveAnd (e1, e2) -> BveAnd (subst_ebexp pats e1, subst_ebexp pats e2)

let rec simplify_ebexp e =
  match e with
  | BveEq (e1, e2) -> BveEq (simplify_eexp e1, simplify_eexp e2)
  | BveEqMod (e1, e2, m) -> BveEqMod (simplify_eexp e1, simplify_eexp e2, simplify_eexp m)
  | BveAnd (e, BveTrue)
    | BveAnd (BveTrue, e) -> simplify_ebexp e
  | _ -> e


(** Range Predicates *)

type rbexp =
  | BvrTrue
  | BvrEq of width * rexp * rexp
  | BvrCmp of width * rcmpop * rexp * rexp
  | BvrNeg of rbexp
  | BvrAnd of rbexp * rbexp
  | BvrOr of rbexp * rbexp

let bvrtrue = BvrTrue
let bvrfalse = BvrNeg BvrTrue
let bvreq w e1 e2 = BvrEq (w, e1, e2)
let bvrult w e1 e2 = BvrCmp (w, BvrUlt, e1, e2)
let bvrule w e1 e2 = BvrCmp (w, BvrUle, e1, e2)
let bvrugt w e1 e2 = BvrCmp (w, BvrUgt, e1, e2)
let bvruge w e1 e2 = BvrCmp (w, BvrUge, e1, e2)
let bvrslt w e1 e2 = BvrCmp (w, BvrSlt, e1, e2)
let bvrsle w e1 e2 = BvrCmp (w, BvrSle, e1, e2)
let bvrsgt w e1 e2 = BvrCmp (w, BvrSgt, e1, e2)
let bvrsge w e1 e2 = BvrCmp (w, BvrSge, e1, e2)
let bvreqmod w e1 e2 m = bvreq w (bvrsrem w (bvrsub w e1 e2) m) (bvrconst w zero_big_int)

let bvrneg e =
  match e with
  | BvrNeg e' -> e'
  | _ -> BvrNeg e
let bvrand e1 e2 =
  match e1, e2 with
  | BvrTrue, e
  | e, BvrTrue -> e
  | BvrNeg BvrTrue, _
  | _, BvrNeg BvrTrue -> BvrNeg BvrTrue
  | _, _ -> BvrAnd (e1, e2)
let bvror e1 e2 =
  match e1, e2 with
  | BvrTrue, _
  | _, BvrTrue -> BvrTrue
  | BvrNeg BvrTrue, e
  | e, BvrNeg BvrTrue -> e
  | _, _ -> BvrOr (e1, e2)

(*
let bvrands es = List.fold_left (fun res e -> bvrand e res) BvrTrue es
let bvrors es = List.fold_left (fun res e -> bvror e res) (BvrNeg BvrTrue) es
*)
let bvrands es =
  match conj_assoc with
  | LeftAssoc -> List.fold_left (fun res e -> bvrand res e) BvrTrue es
  | RightAssoc -> List.fold_left (fun res e -> bvrand e res) BvrTrue es
let bvrors es =
  match disj_assoc with
  | LeftAssoc -> List.fold_left (fun res e -> bvror res e) (BvrNeg BvrTrue) es
  | RightAssoc -> List.fold_left (fun res e -> bvror e res) (BvrNeg BvrTrue) es

let rec split_bvrand e =
  match e with
  | BvrAnd (e1, e2) -> (split_bvrand e1)@(split_bvrand e2)
  | _ -> [e]

let rec split_bvror e =
  match e with
  | BvrOr (e1, e2) -> (split_bvror e1)@(split_bvror e2)
  | _ -> [e]

let rec string_of_rbexp e =
  match e with
  | BvrTrue -> "true"
  | BvrEq (_w, e1, e2) -> "eq " ^ " (" ^ string_of_rexp e1 ^ ") (" ^ string_of_rexp e2 ^ ")"
  | BvrCmp (_w, op, e1, e2) -> string_of_rexp e1 ^ " " ^ symbol_of_rcmpop op ^ " " ^ string_of_rexp e2
  | BvrNeg e -> "neg (" ^ string_of_rbexp e ^ ")"
  | BvrAnd (e1, e2) ->
     let es = split_bvrand e in
     (match es with
      | _::_::[] -> "and (" ^ string_of_rbexp e1 ^ ") (" ^ string_of_rbexp e2 ^ ")"
      | _ -> "and [" ^ String.concat ", " (List.map string_of_rbexp es) ^ "]")
  | BvrOr (e1, e2) ->
     let es = split_bvror e in
     match es with
     | _::_::[] -> "or (" ^ string_of_rbexp e1 ^ ") (" ^ string_of_rbexp e2 ^ ")"
     | _ -> "or [" ^ String.concat ", " (List.map string_of_rbexp es) ^ "]"

let rec vars_rbexp e =
  match e with
  | BvrTrue -> VS.empty
  | BvrEq (_, e1, e2) -> VS.union (vars_rexp e1) (vars_rexp e2)
  | BvrCmp (_, _, e1, e2) -> VS.union (vars_rexp e1) (vars_rexp e2)
  | BvrNeg e -> vars_rbexp e
  | BvrAnd (e1, e2)
  | BvrOr (e1, e2) -> VS.union (vars_rbexp e1) (vars_rbexp e2)

let rec subst_rbexp pats e =
  match e with
  | BvrTrue -> e
  | BvrEq (w, e1, e2) -> BvrEq (w, subst_rexp pats e1, subst_rexp pats e2)
  | BvrCmp (w, op, e1, e2) -> BvrCmp (w, op, subst_rexp pats e1, subst_rexp pats e2)
  | BvrNeg e -> BvrNeg (subst_rbexp pats e)
  | BvrAnd (e1, e2) -> BvrAnd (subst_rbexp pats e1, subst_rbexp pats e2)
  | BvrOr (e1, e2) -> BvrOr (subst_rbexp pats e1, subst_rbexp pats e2)


(** Predicates *)

type bexp = ebexp * rbexp

let bexp_separator = "&&"

let bvTrue = (BveTrue, BvrTrue)

let eqn_bexp e = fst e
let rng_bexp e = snd e

let bvand e1 e2 =
  match e1, e2 with
  | (BveTrue, BvrTrue), (ee, re)
  | (ee, re), (BveTrue, BvrTrue) -> (ee, re)
  | (ee1, re1), (ee2, re2) -> (bveand ee1 ee2, bvrand re1 re2)

(*let bvands es = List.fold_left (fun res e -> bvand e res) bvTrue es*)
let bvands es =
  match conj_assoc with
  | LeftAssoc -> List.fold_left (fun res e -> bvand res e) bvTrue es
  | RightAssoc -> List.fold_left (fun res e -> bvand e res) bvTrue es
let bvands2 es rs = (bveands es, bvrands rs)

let string_of_bexp e =
  match e with
  | (ee, re) -> string_of_ebexp ee ^ " " ^ bexp_separator ^ " " ^ string_of_rbexp re

let vars_bexp e =
  VS.union (vars_ebexp (eqn_bexp e)) (vars_rbexp (rng_bexp e))

let subst_bexp epats rpats e = (subst_ebexp epats (eqn_bexp e), subst_rbexp rpats (rng_bexp e))


(** Instructions *)

type prove_with_spec =
  Precondition
| AllCuts
| AllAssumes
| AllGhosts

type atomic =
  | BvVar of var
  | BvConst of const

type instr =
  | BvAssign of var * atomic
  | BvShl of var * atomic * const
  | BvConcatShl of var * var * atomic * atomic * const
  | BvSet of var
  | BvClear of var
  | BvNondet of var
  | BvCmove of var * var * atomic * atomic
  | BvSkip
  | BvNotb of var * atomic (* One's Complement Negation *)
  (* Unsigned instructions *)
  | BvUadd of var * atomic * atomic
  | BvUadds of var * var * atomic * atomic
  | BvUaddr of var * var * atomic * atomic
  | BvUadc of var * atomic * atomic * var
  | BvUadcs of var * var * atomic * atomic * var
  | BvUadcr of var * var * atomic * atomic * var
  | BvUsub of var * atomic * atomic
  | BvUsubs of var * var * atomic * atomic
  | BvUsubr of var * var * atomic * atomic
  | BvUsbb of var * atomic * atomic * var
  | BvUsbbs of var * var * atomic * atomic * var
  | BvUsbbr of var * var * atomic * atomic * var
  | BvUmul of var * atomic * atomic
  | BvUmuls of var * var * atomic * atomic
  | BvUmulr of var * var * atomic * atomic
  | BvUmull of var * var * atomic * atomic
  | BvUsplit of var * var * atomic * const
  | BvSsplit of var * var * atomic * const
  (* Signed instructions *)
  | BvSadd of var * atomic * atomic
  | BvSadds of var * var * atomic * atomic
  | BvSaddr of var * var * atomic * atomic
  | BvSadc of var * atomic * atomic * var
  | BvSadcs of var * var * atomic * atomic * var
  | BvSadcr of var * var * atomic * atomic * var
  | BvSsub of var * atomic * atomic
  | BvSsubs of var * var * atomic * atomic
  | BvSsubr of var * var * atomic * atomic
  | BvSsbb of var * atomic * atomic * var
  | BvSsbbs of var * var * atomic * atomic * var
  | BvSsbbr of var * var * atomic * atomic * var
  | BvSmul of var * atomic * atomic
  | BvSmuls of var * var * atomic * atomic
  | BvSmulr of var * var * atomic * atomic
  | BvSmull of var * var * atomic * atomic
  (* Instructions that cannot be translated to polynomials *)
  | BvAndb of var * atomic * atomic
  | BvOrb of var * atomic * atomic
  (* Specifications *)
  | BvAssert of bexp
  | BvAssume of bexp
  | BveCut of ebexp * prove_with_spec list
  | BvrCut of rbexp * prove_with_spec list
  | BvGhost of VS.t * bexp

type program = instr list

let string_of_prove_with_spec ps =
  match ps with
    Precondition -> "precondition"
  | AllCuts -> "all cuts"
  | AllAssumes -> "all assumes"
  | AllGhosts -> "all ghosts"

let string_of_prove_with_specs pss =
  String.concat ", " (List.map string_of_prove_with_spec pss)

let string_of_atomic a =
  match a with
  | BvVar v -> v
  | BvConst n -> string_of_const n

let string_of_instr i =
  match i with
  | BvAssign (v, a) -> "mov " ^ v ^ " " ^ string_of_atomic a
  | BvShl (v, a, n) -> "shl " ^ v ^ " " ^ string_of_atomic a ^ " " ^ string_of_const n
  | BvConcatShl (vh, vl, a1, a2, n) -> "cshl " ^ vh ^ " " ^ vl ^ " " ^ string_of_atomic a1 ^ " " ^ string_of_atomic a2 ^ " " ^ string_of_const n
  | BvSet c -> "set " ^ c
  | BvClear c -> "clear " ^ c
  | BvNondet v -> "nondet " ^ v
  | BvCmove (v, c, a1, a2) -> "cmov " ^ v ^ " " ^ c ^ " " ^ string_of_atomic a1 ^ " " ^ string_of_atomic a2
  | BvSkip -> ""
  (* Unsigned instructions *)
  | BvUadd (v, a1, a2) -> "uadd " ^ v ^ " " ^ string_of_atomic a1 ^ " " ^ string_of_atomic a2
  | BvUadds (c, v, a1, a2) -> "uadds " ^ c ^ " " ^ v ^ " " ^ string_of_atomic a1 ^ " " ^ string_of_atomic a2
  | BvUaddr (c, v, a1, a2) -> "uaddr " ^ c ^ " " ^ v ^ " " ^ string_of_atomic a1 ^ " " ^ string_of_atomic a2
  | BvUadc (v, a1, a2, y) -> "uadc " ^ v ^ " " ^ string_of_atomic a1 ^ " " ^ string_of_atomic a2 ^ " " ^ y
  | BvUadcs (c, v, a1, a2, y) -> "uadcs " ^ c ^ " " ^ v ^ " " ^ string_of_atomic a1 ^ " " ^ string_of_atomic a2 ^ " " ^ y
  | BvUadcr (c, v, a1, a2, y) -> "uadcr " ^ c ^ " " ^ v ^ " " ^ string_of_atomic a1 ^ " " ^ string_of_atomic a2 ^ " " ^ y
  | BvUsub (v, a1, a2) -> "usub " ^ v ^ " " ^ string_of_atomic a1 ^ " " ^ string_of_atomic a2
  | BvUsubs (c, v, a1, a2) -> "usubs " ^ c ^ " " ^ v ^ " " ^ string_of_atomic a1 ^ " " ^ string_of_atomic a2
  | BvUsubr (c, v, a1, a2) -> "usubr " ^ c ^ " " ^ v ^ " " ^ string_of_atomic a1 ^ " " ^ string_of_atomic a2
  | BvUsbb (v, a1, a2, y) -> "usbb " ^ v ^ " " ^ string_of_atomic a1 ^ " " ^ string_of_atomic a2 ^ " " ^ y
  | BvUsbbs (c, v, a1, a2, y) -> "usbbs " ^ c ^ " " ^ v ^ " " ^ string_of_atomic a1 ^ " " ^ string_of_atomic a2 ^ " " ^ y
  | BvUsbbr (c, v, a1, a2, y) -> "usbbr " ^ c ^ " " ^ v ^ " " ^ string_of_atomic a1 ^ " " ^ string_of_atomic a2 ^ " " ^ y
  | BvUmul (v, a1, a2) -> "umul " ^ v ^ " " ^ string_of_atomic a1 ^ " " ^ string_of_atomic a2
  | BvUmuls (c, v, a1, a2) -> "umuls " ^ c ^ " " ^ v ^ " " ^ string_of_atomic a1 ^ " " ^ string_of_atomic a2
  | BvUmulr (c, v, a1, a2) -> "umulr " ^ c ^ " " ^ v ^ " " ^ string_of_atomic a1 ^ " " ^ string_of_atomic a2
  | BvUmull (vh, vl, a1, a2) -> "umull " ^ vh ^ " " ^ vl ^ " " ^ string_of_atomic a1 ^ " " ^ string_of_atomic a2
  | BvUsplit (vh, vl, a, n) -> "usplit " ^ vh ^ " " ^ vl ^ " " ^ string_of_atomic a ^ " " ^ string_of_const n
  (* Signed instructions *)
  | BvSadd (v, a1, a2) -> "sadd " ^ v ^ " " ^ string_of_atomic a1 ^ " " ^ string_of_atomic a2
  | BvSadds (c, v, a1, a2) -> "sadds " ^ c ^ " " ^ v ^ " " ^ string_of_atomic a1 ^ " " ^ string_of_atomic a2
  | BvSaddr (c, v, a1, a2) -> "saddr " ^ c ^ " " ^ v ^ " " ^ string_of_atomic a1 ^ " " ^ string_of_atomic a2
  | BvSadc (v, a1, a2, y) -> "sadc " ^ v ^ " " ^ string_of_atomic a1 ^ " " ^ string_of_atomic a2 ^ " " ^ y
  | BvSadcs (c, v, a1, a2, y) -> "sadcs " ^ c ^ " " ^ v ^ " " ^ string_of_atomic a1 ^ " " ^ string_of_atomic a2 ^ " " ^ y
  | BvSadcr (c, v, a1, a2, y) -> "sadcr " ^ c ^ " " ^ v ^ " " ^ string_of_atomic a1 ^ " " ^ string_of_atomic a2 ^ " " ^ y
  | BvSsub (v, a1, a2) -> "ssub " ^ v ^ " " ^ string_of_atomic a1 ^ " " ^ string_of_atomic a2
  | BvSsubs (c, v, a1, a2) -> "ssubs " ^ c ^ " " ^ v ^ " " ^ string_of_atomic a1 ^ " " ^ string_of_atomic a2
  | BvSsubr (c, v, a1, a2) -> "ssubr " ^ c ^ " " ^ v ^ " " ^ string_of_atomic a1 ^ " " ^ string_of_atomic a2
  | BvSsbb (v, a1, a2, y) -> "ssbb " ^ v ^ " " ^ string_of_atomic a1 ^ " " ^ string_of_atomic a2 ^ " " ^ y
  | BvSsbbs (c, v, a1, a2, y) -> "ssbbs " ^ c ^ " " ^ v ^ " " ^ string_of_atomic a1 ^ " " ^ string_of_atomic a2 ^ " " ^ y
  | BvSsbbr (c, v, a1, a2, y) -> "ssbbr " ^ c ^ " " ^ v ^ " " ^ string_of_atomic a1 ^ " " ^ string_of_atomic a2 ^ " " ^ y
  | BvSmul (v, a1, a2) -> "smul " ^ v ^ " " ^ string_of_atomic a1 ^ " " ^ string_of_atomic a2
  | BvSmuls (c, v, a1, a2) -> "smuls " ^ c ^ " " ^ v ^ " " ^ string_of_atomic a1 ^ " " ^ string_of_atomic a2
  | BvSmulr (c, v, a1, a2) -> "smulr " ^ c ^ " " ^ v ^ " " ^ string_of_atomic a1 ^ " " ^ string_of_atomic a2
  | BvSmull (vh, vl, a1, a2) -> "smull " ^ vh ^ " " ^ vl ^ " " ^ string_of_atomic a1 ^ " " ^ string_of_atomic a2
  | BvSsplit (vh, vl, a, n) -> "ssplit " ^ vh ^ " " ^ vl ^ " " ^ string_of_atomic a ^ " " ^ string_of_const n
  (* Instructions that cannot be translated to polynomials *)
  | BvAndb (v, a1, a2) -> "and " ^ v ^ " " ^ string_of_atomic a1 ^ " " ^ string_of_atomic a2
  | BvOrb (v, a1, a2) -> "or " ^ v ^ " " ^ string_of_atomic a1 ^ " " ^ string_of_atomic a2
  | BvNotb (v, a) -> "not " ^ v ^ " " ^ string_of_atomic a
  (* Specifications *)
  | BvAssert e -> "assert " ^ string_of_bexp e
  | BvAssume e -> "assume " ^ string_of_bexp e
  | BveCut (e, pwss) -> "cut " ^ string_of_ebexp e ^ (if pwss = [] then "" else (" prove with " ^ string_of_prove_with_specs pwss))
  | BvrCut (e, pwss) -> "cut " ^ string_of_rbexp e ^ (if pwss = [] then "" else (" prove with " ^ string_of_prove_with_specs pwss))
  | BvGhost (vs, e) -> "ghost " ^ String.concat ", " (VS.elements vs) ^ ": " ^ string_of_bexp e

let string_of_instr i = string_of_instr i ^ ";"

let string_of_program p = String.concat "\n" (List.map string_of_instr p)

let eq_atomic a1 a2 =
  match a1, a2 with
  | BvVar v1, BvVar v2 -> v1 = v2
  | BvConst c1, BvConst c2 -> eq_big_int c1 c2
  | _, _ -> false

let vars_atomic a =
  match a with
  | BvVar v -> VS.singleton v
  | _ -> VS.empty

let vars_instr i =
  match i with
  | BvAssign (v, a)
    | BvShl (v, a, _) -> VS.add v (vars_atomic a)
  | BvUadd (v, a1, a2) | BvSadd (v, a1, a2)
    | BvUsub (v, a1, a2) | BvSsub (v, a1, a2)
    | BvUmul (v, a1, a2) | BvSmul (v, a1, a2) -> VS.add v (VS.union (vars_atomic a1) (vars_atomic a2))
  | BvUadds (c, v, a1, a2) | BvSadds (c, v, a1, a2)
    | BvUaddr (c, v, a1, a2) | BvSaddr (c, v, a1, a2)
    | BvUadc (v, a1, a2, c) | BvSadc (v, a1, a2, c)
    | BvUsubs (c, v, a1, a2) | BvSsubs (c, v, a1, a2)
    | BvUsubr (c, v, a1, a2) | BvSsubr (c, v, a1, a2)
    | BvUsbb (v, a1, a2, c) | BvSsbb (v, a1, a2, c)
    | BvUmuls (c, v, a1, a2) | BvSmuls (c, v, a1, a2)
    | BvUmulr (c, v, a1, a2) | BvSmulr (c, v, a1, a2) ->
     VS.add c (VS.add v (VS.union (vars_atomic a1) (vars_atomic a2)))
  | BvUadcs (c, v, a1, a2, y) | BvSadcs (c, v, a1, a2, y)
    | BvUadcr (c, v, a1, a2, y) | BvSadcr (c, v, a1, a2, y)
    | BvUsbbr (c, v, a1, a2, y) | BvSsbbr (c, v, a1, a2, y)
    | BvUsbbs (c, v, a1, a2, y) | BvSsbbs (c, v, a1, a2, y) ->
     VS.add y (VS.add c (VS.add v (VS.union (vars_atomic a1) (vars_atomic a2))))
  | BvUsplit (vh, vl, a, _)
    | BvSsplit (vh, vl, a, _) -> VS.add vh (VS.add vl (vars_atomic a))
  | BvUmull (vh, vl, a1, a2) | BvSmull (vh, vl, a1, a2)
    | BvConcatShl (vh, vl, a1, a2, _) ->
     VS.add vh (VS.add vl (VS.union (vars_atomic a1) (vars_atomic a2)))
  | BvSet v
  | BvClear v
  | BvNondet v -> VS.singleton v
  | BvCmove (v, c, a1, a2) -> VS.add v (VS.add c (VS.union (vars_atomic a1) (vars_atomic a2)))
  | BvSkip -> VS.empty
  | BvAndb (v, a1, a2)
    | BvOrb (v, a1, a2) ->  VS.add v (VS.union (vars_atomic a1) (vars_atomic a2))
  | BvNotb (v, a) -> VS.add v (vars_atomic a)
  | BvAssert e
  | BvAssume e -> vars_bexp e
  | BveCut (e, _) -> vars_ebexp e
  | BvrCut (e, _) -> vars_rbexp e
  | BvGhost (vs, e) -> VS.union vs (vars_bexp e)

let vars_program p = List.fold_left (fun res i -> VS.union (vars_instr i) res) VS.empty p

let lvs_instr i =
  match i with
  | BvAssign (v, _) -> VS.singleton v
  | BvUadd (v, _, _) | BvSadd (v, _, _) -> VS.singleton v
  | BvUadds (c, v, _, _) | BvSadds (c, v, _, _) -> VS.add c (VS.singleton v)
  | BvUaddr (c, v, _, _) | BvSaddr (c, v, _, _) -> VS.add c (VS.singleton v)
  | BvUadc (v, _, _, _) | BvSadc (v, _, _, _) -> VS.singleton v
  | BvUadcs (c, v, _, _, _) | BvSadcs (c, v, _, _, _) -> VS.add c (VS.singleton v)
  | BvUadcr (c, v, _, _, _) | BvSadcr (c, v, _, _, _) -> VS.add c (VS.singleton v)
  | BvUsub (v, _, _) | BvSsub (v, _, _) -> VS.singleton v
  | BvUsubs (c, v, _, _) | BvSsubs (c, v, _, _) -> VS.add c (VS.singleton v)
  | BvUsubr (c, v, _, _) | BvSsubr (c, v, _, _) -> VS.add c (VS.singleton v)
  | BvUsbb (v, _, _, _) | BvSsbb (v, _, _, _) -> VS.singleton v
  | BvUsbbs (c, v, _, _, _) | BvSsbbs (c, v, _, _, _) -> VS.add c (VS.singleton v)
  | BvUsbbr (c, v, _, _, _) | BvSsbbr (c, v, _, _, _) -> VS.add c (VS.singleton v)
  | BvUmul (v, _, _) | BvSmul (v, _, _) -> VS.singleton v
  | BvUmuls (c, v, _, _) | BvSmuls (c, v, _, _) -> VS.add c (VS.singleton v)
  | BvUmulr (c, v, _, _) | BvSmulr (c, v, _, _) -> VS.add c (VS.singleton v)
  | BvUmull (vh, vl, _, _) | BvSmull (vh, vl, _, _) -> VS.add vh (VS.singleton vl)
  | BvShl (v, _, _) -> VS.singleton v
  | BvUsplit (vh, vl, _, _) | BvSsplit (vh, vl, _, _) -> VS.add vh (VS.singleton vl)
  | BvConcatShl (vh, vl, _, _, _) -> VS.add vh (VS.singleton vl)
  | BvSet v
  | BvClear v
  | BvNondet v -> VS.singleton v
  | BvCmove (v, _, _, _) -> VS.singleton v
  | BvSkip -> VS.empty
  | BvAndb (v, _, _)
    | BvOrb (v, _, _)
    | BvNotb (v, _) -> VS.singleton v
  | BvAssert _
  | BvAssume _
  | BveCut _
  | BvrCut _
  | BvGhost _ -> VS.empty

let lvs_program p = List.fold_left (fun res i -> VS.union (lvs_instr i) res) VS.empty p

let rvs_instr i =
  match i with
  | BvAssign (_, a) -> vars_atomic a
  | BvUadd (_, a1, a2) | BvSadd (_, a1, a2) -> VS.union (vars_atomic a1) (vars_atomic a2)
  | BvUadds (_, _, a1, a2) | BvSadds (_, _, a1, a2) -> VS.union (vars_atomic a1) (vars_atomic a2)
  | BvUaddr (_, _, a1, a2) | BvSaddr (_, _, a1, a2) -> VS.union (vars_atomic a1) (vars_atomic a2)
  | BvUadc (_, a1, a2, c) | BvSadc (_, a1, a2, c) -> VS.add c (VS.union (vars_atomic a1) (vars_atomic a2))
  | BvUadcs (_, _, a1, a2, c) | BvSadcs (_, _, a1, a2, c) -> VS.add c (VS.union (vars_atomic a1) (vars_atomic a2))
  | BvUadcr (_, _, a1, a2, c) | BvSadcr (_, _, a1, a2, c) -> VS.add c (VS.union (vars_atomic a1) (vars_atomic a2))
  | BvUsub (_, a1, a2) | BvSsub (_, a1, a2) -> VS.union (vars_atomic a1) (vars_atomic a2)
  | BvUsubs (_, _, a1, a2) | BvSsubs (_, _, a1, a2) -> VS.union (vars_atomic a1) (vars_atomic a2)
  | BvUsubr (_, _, a1, a2) | BvSsubr (_, _, a1, a2) -> VS.union (vars_atomic a1) (vars_atomic a2)
  | BvUsbb (_, a1, a2, c) | BvSsbb (_, a1, a2, c) -> VS.add c (VS.union (vars_atomic a1) (vars_atomic a2))
  | BvUsbbs (_, _, a1, a2, c)  | BvSsbbs (_, _, a1, a2, c)-> VS.add c (VS.union (vars_atomic a1) (vars_atomic a2))
  | BvUsbbr (_, _, a1, a2, c)  | BvSsbbr (_, _, a1, a2, c)-> VS.add c (VS.union (vars_atomic a1) (vars_atomic a2))
  | BvUmul (_, a1, a2) | BvSmul (_, a1, a2) -> VS.union (vars_atomic a1) (vars_atomic a2)
  | BvUmuls (_, _, a1, a2) | BvSmuls (_, _, a1, a2) -> VS.union (vars_atomic a1) (vars_atomic a2)
  | BvUmulr (_, _, a1, a2) | BvSmulr (_, _, a1, a2) -> VS.union (vars_atomic a1) (vars_atomic a2)
  | BvUmull (_, _, a1, a2) | BvSmull (_, _, a1, a2) -> VS.union (vars_atomic a1) (vars_atomic a2)
  | BvShl (_, a, _) -> vars_atomic a
  | BvUsplit (_, _, a, _) | BvSsplit (_, _, a, _) -> vars_atomic a
  | BvConcatShl (_, _, a1, a2, _) ->
     VS.union (vars_atomic a1) (vars_atomic a2)
  | BvSet _
  | BvClear _
  | BvNondet _ -> VS.empty
  | BvCmove (_, c, a1, a2) -> VS.add c (VS.union (vars_atomic a1) (vars_atomic a2))
  | BvSkip -> VS.empty
  | BvAndb (_, a1, a2)
    | BvOrb (_, a1, a2) ->  VS.union (vars_atomic a1) (vars_atomic a2)
  | BvNotb (_, a) -> vars_atomic a
  | BvAssert e
  | BvAssume e -> vars_bexp e
  | BveCut (e, _) -> vars_ebexp e
  | BvrCut (e, _) -> vars_rbexp e
  | BvGhost (_, e) -> vars_bexp e

let rvs_program p = List.fold_left (fun res i -> VS.union (rvs_instr i) res) VS.empty p

let gvs_instr i =
  match i with
  | BvGhost (vs, _) -> vs
  | _ -> VS.empty

let _gvs_program p = List.fold_left (fun res i -> VS.union (gvs_instr i) res) VS.empty p

(* Assigned carry variables *)
let lcarries_instr i =
  match i with
  | BvAssign _ -> VS.empty
  | BvUadd _ | BvSadd _ -> VS.empty
  | BvUadds (c, _, _, _) | BvSadds (c, _, _, _) -> VS.singleton c
  | BvUaddr (c, _, _, _) | BvSaddr (c, _, _, _) -> VS.singleton c
  | BvUadc _ | BvSadc _ -> VS.empty
  | BvUadcs (c, _, _, _, _) | BvSadcs (c, _, _, _, _) -> VS.singleton c
  | BvUadcr (c, _, _, _, _) | BvSadcr (c, _, _, _, _) -> VS.singleton c
  | BvUsub _ | BvSsub _ -> VS.empty
  | BvUsubs (c, _, _, _) | BvSsubs (c, _, _, _) -> VS.singleton c
  | BvUsubr (c, _, _, _) | BvSsubr (c, _, _, _) -> VS.singleton c
  | BvUsbb _ | BvSsbb _ -> VS.empty
  | BvUsbbs (c, _, _, _, _) | BvSsbbs (c, _, _, _, _) -> VS.singleton c
  | BvUsbbr (c, _, _, _, _) | BvSsbbr (c, _, _, _, _) -> VS.singleton c
  | BvUmul _ | BvSmul _ -> VS.empty
  | BvUmuls (c, _, _, _) | BvSmuls (c, _, _, _) -> VS.singleton c
  | BvUmulr (c, _, _, _) | BvSmulr (c, _, _, _) -> VS.singleton c
  | BvUmull _ | BvSmull _
  | BvShl _
  | BvUsplit _ | BvSsplit _
  | BvConcatShl _ -> VS.empty
  | BvSet c
  | BvClear c -> VS.singleton c
  | BvNondet _
  | BvCmove _
  | BvSkip
  | BvAndb _
  | BvOrb _
  | BvNotb _
  | BvAssert _
  | BvAssume _
  | BveCut _
  | BvrCut _
  | BvGhost _ -> VS.empty

let lcarries_program p = List.fold_left (fun res i -> VS.union (lcarries_instr i) res) VS.empty p

let new_var ?prefix:prefix vs =
  let prefix =
    (match prefix with
     | None -> "tmp"
     | Some name -> name) ^ string_of_int (Random.int 1000000000) in
  if VS.mem prefix vs then
    let i = ref 0 in
    let name = ref (prefix ^ string_of_int !i) in
    let _ =
      while VS.mem !name vs do
        i := !i + 1;
        name := prefix ^ string_of_int !i
      done in
    !name
  else prefix

let rec subst_lval pats lv =
  match pats with
  | [] -> lv
  | (x, r)::tl ->
     if lv = x then
       match r with
       | BvVar v -> v
       | _ -> raise (Failure "Failed to replace a variable with a constant: a variable is required.")
     else
       subst_lval tl lv

let rec subst_atomic pats a =
  match pats, a with
  | _, BvConst _ -> a
  | [], _ -> a
  | (x, r)::_tl, BvVar v when v = x -> r
  | _::tl, _ -> subst_atomic tl a

let rec pats_to_epats pats =
  match pats with
  | [] -> []
  | (x, r)::tl ->
     (x, match r with
         | BvVar v -> BveVar v
         | BvConst n -> BveConst n)::(pats_to_epats tl)

let rec pats_to_rpats pats =
  match pats with
  | [] -> []
  | (x, r)::tl ->
     (x, match r with
         | BvVar v -> BvrVar v
         | BvConst n -> BvrConst (!wordsize, n))::(pats_to_rpats tl)

let subst_instr pats i =
  match i with
  | BvAssign (v, a) -> BvAssign (subst_lval pats v, subst_atomic pats a)
  | BvShl (v, a, n) -> BvShl (subst_lval pats v, subst_atomic pats a, n)
  | BvConcatShl (vh, vl, a1, a2, n) -> BvConcatShl (subst_lval pats vh, subst_lval pats vl, subst_atomic pats a1, subst_atomic pats a2, n)
  | BvSet c -> BvSet (subst_lval pats c)
  | BvClear c -> BvClear (subst_lval pats c)
  | BvNondet v -> BvNondet (subst_lval pats v)
  | BvCmove (v, c, a1, a2) -> BvCmove (subst_lval pats v, subst_lval pats c, subst_atomic pats a1, subst_atomic pats a2)
  | BvSkip -> BvSkip
  | BvUadd (v, a1, a2) -> BvUadd (subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2)
  | BvUadds (c, v, a1, a2) -> BvUadds (subst_lval pats c, subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2)
  | BvUaddr (c, v, a1, a2) -> BvUaddr (subst_lval pats c, subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2)
  | BvUadc (v, a1, a2, y) -> BvUadc (subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2, subst_lval pats y)
  | BvUadcs (c, v, a1, a2, y) -> BvUadcs (subst_lval pats c, subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2, subst_lval pats y)
  | BvUadcr (c, v, a1, a2, y) -> BvUadcr (subst_lval pats c, subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2, subst_lval pats y)
  | BvUsub (v, a1, a2) -> BvUsub (subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2)
  | BvUsubs (c, v, a1, a2) -> BvUsubs (subst_lval pats c, subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2)
  | BvUsubr (c, v, a1, a2) -> BvUsubr (subst_lval pats c, subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2)
  | BvUsbb (v, a1, a2, y) -> BvUsbb (subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2, subst_lval pats y)
  | BvUsbbs (c, v, a1, a2, y) -> BvUsbbs (subst_lval pats c, subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2, subst_lval pats y)
  | BvUsbbr (c, v, a1, a2, y) -> BvUsbbr (subst_lval pats c, subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2, subst_lval pats y)
  | BvUmul (v, a1, a2) -> BvUmul (subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2)
  | BvUmuls (c, v, a1, a2) -> BvUmuls (subst_lval pats c, subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2)
  | BvUmulr (c, v, a1, a2) -> BvUmulr (subst_lval pats c, subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2)
  | BvUmull (vh, vl, a1, a2) -> BvUmull (subst_lval pats vh, subst_lval pats vl, subst_atomic pats a1, subst_atomic pats a2)
  | BvUsplit (vh, vl, a, n) -> BvUsplit (subst_lval pats vh, subst_lval pats vl, subst_atomic pats a, n)
  | BvSadd (v, a1, a2) -> BvSadd (subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2)
  | BvSadds (c, v, a1, a2) -> BvSadds (subst_lval pats c, subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2)
  | BvSaddr (c, v, a1, a2) -> BvSaddr (subst_lval pats c, subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2)
  | BvSadc (v, a1, a2, y) -> BvSadc (subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2, subst_lval pats y)
  | BvSadcs (c, v, a1, a2, y) -> BvSadcs (subst_lval pats c, subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2, subst_lval pats y)
  | BvSadcr (c, v, a1, a2, y) -> BvSadcr (subst_lval pats c, subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2, subst_lval pats y)
  | BvSsub (v, a1, a2) -> BvSsub (subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2)
  | BvSsubs (c, v, a1, a2) -> BvSsubs (subst_lval pats c, subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2)
  | BvSsubr (c, v, a1, a2) -> BvSsubr (subst_lval pats c, subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2)
  | BvSsbb (v, a1, a2, y) -> BvSsbb (subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2, subst_lval pats y)
  | BvSsbbs (c, v, a1, a2, y) -> BvSsbbs (subst_lval pats c, subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2, subst_lval pats y)
  | BvSsbbr (c, v, a1, a2, y) -> BvSsbbr (subst_lval pats c, subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2, subst_lval pats y)
  | BvSmul (v, a1, a2) -> BvSmul (subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2)
  | BvSmuls (c, v, a1, a2) -> BvSmuls (subst_lval pats c, subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2)
  | BvSmulr (c, v, a1, a2) -> BvSmulr (subst_lval pats c, subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2)
  | BvSmull (vh, vl, a1, a2) -> BvSmull (subst_lval pats vh, subst_lval pats vl, subst_atomic pats a1, subst_atomic pats a2)
  | BvSsplit (vh, vl, a, n) -> BvSsplit (subst_lval pats vh, subst_lval pats vl, subst_atomic pats a, n)
  | BvAndb (v, a1, a2) -> BvAndb (subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2)
  | BvOrb (v, a1, a2) -> BvOrb (subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2)
  | BvNotb (v, a) -> BvNotb (subst_lval pats v, subst_atomic pats a)
  | BvAssert e -> BvAssert (subst_bexp (pats_to_epats pats) (pats_to_rpats pats) e)
  | BvAssume e -> BvAssume (subst_bexp (pats_to_epats pats) (pats_to_rpats pats) e)
  | BveCut (e, pwss) -> BveCut (subst_ebexp (pats_to_epats pats) e, pwss)
  | BvrCut (e, pwss) -> BvrCut (subst_rbexp (pats_to_rpats pats) e, pwss)
  | BvGhost (vs, e) -> BvGhost (VS.of_list (List.map (subst_lval pats) (VS.elements vs)), subst_bexp (pats_to_epats pats) (pats_to_rpats pats) e)

let subst_program pats p = List.map (subst_instr pats) p

let eprove_with_filter pwss (pre, instrs) =
  let extract_ebexps instrs =
    let extractor i =
      match i with
        BveCut (e, _) -> [e]
      | BvAssume e -> [eqn_bexp e]
      | BvGhost (_, e) -> [eqn_bexp e]
      | _ -> [] in
    List.flatten (List.map extractor instrs) in
  let filter_of_pws pws =
    match pws with
      Precondition -> (fun _i -> false)
    | AllCuts -> (fun i -> match i with BveCut _ -> true | _ -> false)
    | AllAssumes -> (fun i -> match i with BvAssume _ -> true | _ -> false)
    | AllGhosts -> (fun i -> match i with BvGhost _ -> true | _ -> false) in
  let filter =
    let filters = List.map filter_of_pws pwss in
    fun i -> List.exists (fun f -> f i) filters in
  let ebexps = extract_ebexps (List.filter filter instrs) in
  if List.mem Precondition pwss then pre::ebexps
  else ebexps

let rprove_with_filter pwss (pre, instrs) =
  let extract_rbexps instrs =
    let extractor i =
      match i with
        BvrCut (e, _) -> [e]
      | BvAssume e -> [rng_bexp e]
      | BvGhost (_, e) -> [rng_bexp e]
      | _ -> [] in
    List.flatten (List.map extractor instrs) in
  let filter_of_pws pws =
    match pws with
      Precondition -> (fun _i -> false)
    | AllCuts -> (fun i -> match i with BvrCut _ -> true | _ -> false)
    | AllAssumes -> (fun i -> match i with BvAssume _ -> true | _ -> false)
    | AllGhosts -> (fun i -> match i with BvGhost _ -> true | _ -> false) in
  let filter =
    let filters = List.map filter_of_pws pwss in
    fun i -> List.exists (fun f -> f i) filters in
  let rbexps = extract_rbexps (List.filter filter instrs) in
  if List.mem Precondition pwss then pre::rbexps
  else rbexps


(** Specifications *)

type spec =
  { spre : bexp;
    sprog : program;
    spost : bexp;
    sepwss : prove_with_spec list;
    srpwss : prove_with_spec list }

type espec =
  { espre : ebexp;
    esprog : program;
    espost : ebexp;
    espwss : prove_with_spec list }

type rspec =
  { rspre : rbexp;
    rsprog : program;
    rspost : rbexp;
    rspwss : prove_with_spec list }

let vars_spec s = VS.union (vars_bexp s.spre) (VS.union (vars_program s.sprog) (vars_bexp s.spost))
let vars_espec s = VS.union (vars_ebexp s.espre) (VS.union (vars_program s.esprog) (vars_ebexp s.espost))
let vars_rspec s = VS.union (vars_rbexp s.rspre) (VS.union (vars_program s.rsprog) (vars_rbexp s.rspost))

let espec_of_spec s =
  { espre = eqn_bexp s.spre;
    esprog = s.sprog;
    espost = eqn_bexp s.spost;
    espwss = s.sepwss }

let rspec_of_spec s =
  { rspre = rng_bexp s.spre;
    rsprog = s.sprog;
    rspost = rng_bexp s.spost;
    rspwss = s.srpwss }

let string_of_spec s =
  if s.sepwss = [] && s.srpwss = [] then
    "{ " ^ string_of_bexp (s.spre) ^ " }\n"
    ^ string_of_program (s.sprog) ^ "\n"
    ^ "{ " ^ string_of_bexp (s.spost) ^ " }"
  else
    "{ " ^ string_of_bexp (s.spre) ^ " }\n"
    ^ string_of_program (s.sprog) ^ "\n"
    ^ "{ "
    ^ string_of_ebexp (eqn_bexp s.spost)
    ^ (if s.sepwss = [] then "" else " prove with " ^ string_of_prove_with_specs s.sepwss)
    ^ " " ^ bexp_separator ^ " "
    ^ string_of_rbexp (rng_bexp s.spost)
    ^ (if s.srpwss = [] then "" else " prove with " ^ string_of_prove_with_specs s.srpwss)
    ^ " }"

let string_of_espec s =
  if s.espwss = [] then
    "{ " ^ string_of_ebexp (s.espre) ^ " }\n"
    ^ string_of_program (s.esprog) ^ "\n"
    ^ "{ " ^ string_of_ebexp (s.espost) ^ " }"
  else
    "{ " ^ string_of_ebexp (s.espre) ^ " }\n"
    ^ string_of_program (s.esprog) ^ "\n"
    ^ "{ "
    ^ string_of_ebexp (s.espost)
    ^ (if s.espwss = [] then "" else " prove with " ^ string_of_prove_with_specs s.espwss)
    ^ " }"

let string_of_rspec s =
  if s.rspwss = [] then
    "{ " ^ string_of_rbexp (s.rspre) ^ " }\n"
    ^ string_of_program (s.rsprog) ^ "\n"
    ^ "{ " ^ string_of_rbexp (s.rspost) ^ " }"
  else
    "{ " ^ string_of_rbexp (s.rspre) ^ " }\n"
    ^ string_of_program (s.rsprog) ^ "\n"
    ^ "{ "
    ^ string_of_rbexp (s.rspost)
    ^ (if s.rspwss = [] then "" else " prove with " ^ string_of_prove_with_specs s.rspwss)
    ^ " }"


(** Well-formedness *)

let rec chain_reasons rs =
  match rs with
  | [] -> None
  | r::[] -> r
  | Some r::_tl -> Some r
  | _::tl -> chain_reasons tl

let illformed_instr_reason vs cs gs i =
  let well_atomic a =
    if not (VS.subset (vars_atomic a) vs) then Some ("Undefined variables: " ^ string_of_vs (VS.diff (vars_atomic a) vs))
    else None in
  let well_lvs v1 v2 =
    if not (v1 <> v2) then Some ("l-values should be different: " ^ v1 ^ ", " ^ v2)
    else None in
  let well_carry y =
    if not (VS.mem y vs) then Some ("Undefined variable: " ^ y)
    else if not (VS.mem y cs) then Some ("Not a carry variable: " ^ y)
    else None in
  let well_bexp e =
    if not (VS.subset (vars_bexp e) (VS.union vs gs)) then Some ("Undefined variables: " ^ string_of_vs (VS.diff (vars_bexp e) (VS.union vs gs)))
    else None in
  let well_ebexp e =
    if not (VS.subset (vars_ebexp e) (VS.union vs gs)) then Some ("Undefined variables: " ^ string_of_vs (VS.diff (vars_ebexp e) (VS.union vs gs)))
    else None in
  let well_rbexp e =
    if not (VS.subset (vars_rbexp e) (VS.union vs gs)) then Some ("Undefined variables: " ^ string_of_vs (VS.diff (vars_rbexp e) (VS.union vs gs)))
    else None in
  let well_ghost gvs e =
    if not (vs_disjoint gvs gs) then Some ("Redefined ghost variables: " ^ string_of_vs (VS.inter gvs gs))
    else if not (VS.subset (vars_bexp e) (VS.union gvs (VS.union vs gs))) then Some ("Undefined variables: " ^ string_of_vs (VS.diff (vars_bexp e) (VS.union gvs (VS.union vs gs))))
    else None in
  let reasons =
    match i with
    | BvAssign (_, a)
      | BvShl (_, a, _) ->
       [well_atomic a]
    | BvUadd (_, a1, a2) | BvSadd (_, a1, a2)
      | BvUsub (_, a1, a2) | BvSsub (_, a1, a2)
      | BvUmul (_, a1, a2) | BvSmul (_, a1, a2) ->
       [well_atomic a1; well_atomic a2]
    | BvUadds (c, v, a1, a2) | BvSadds (c, v, a1, a2)
      | BvUaddr (c, v, a1, a2) | BvSaddr (c, v, a1, a2)
      | BvUsubs (c, v, a1, a2) | BvSsubs (c, v, a1, a2)
      | BvUsubr (c, v, a1, a2) | BvSsubr (c, v, a1, a2)
      | BvUmuls (c, v, a1, a2) | BvSmuls (c, v, a1, a2)
      | BvUmulr (c, v, a1, a2) | BvSmulr (c, v, a1, a2) ->
       [well_lvs c v; well_atomic a1; well_atomic a2]
    | BvUadc (_, a1, a2, y) | BvSadc (_, a1, a2, y)
      | BvUsbb (_, a1, a2, y) | BvSsbb (_, a1, a2, y) ->
       [well_carry y; well_atomic a1; well_atomic a2]
    | BvUadcs (c, v, a1, a2, y) | BvSadcs (c, v, a1, a2, y)
      | BvUadcr (c, v, a1, a2, y) | BvSadcr (c, v, a1, a2, y)
      | BvUsbbs (c, v, a1, a2, y) | BvSsbbs (c, v, a1, a2, y)
      | BvUsbbr (c, v, a1, a2, y) | BvSsbbr (c, v, a1, a2, y) ->
       [well_lvs c v; well_carry y; well_atomic a1; well_atomic a2]
    | BvUmull (vh, vl, a1, a2) | BvSmull (vh, vl, a1, a2) ->
       [well_lvs vh vl; well_atomic a1; well_atomic a2]
    | BvUsplit (vh, vl, a, _) | BvSsplit (vh, vl, a, _) ->
       [well_lvs vh vl; well_atomic a]
    | BvConcatShl (vh, vl, a1, a2, _) ->
       [well_lvs vh vl; well_atomic a1; well_atomic a2]
    | BvSet _
      | BvClear _
      | BvNondet _ -> []
    | BvCmove (_, c, a1, a2) ->
       [well_carry c; well_atomic a1; well_atomic a2]
    | BvSkip -> []
    | BvAndb (_, a1, a2)
      | BvOrb (_, a1, a2) ->
       [well_atomic a1; well_atomic a2]
    | BvNotb (_, a) -> [well_atomic a]
  | BvAssert e
    | BvAssume e -> [well_bexp e]
  | BveCut (e, _) -> [well_ebexp e]
  | BvrCut (e, _) -> [well_rbexp e]
  | BvGhost (gvs, e) -> [well_ghost gvs e]
  in
  chain_reasons reasons

let rec illformed_program_reason vs cs gs p =
  match p with
  | [] -> None
  | hd::tl ->
     (match illformed_instr_reason vs cs gs hd with
      | Some r -> Some (hd, r)
      | None -> illformed_program_reason (VS.union vs (lvs_instr hd)) (VS.union (VS.diff cs (lvs_instr hd)) (lcarries_instr hd)) (VS.union gs (gvs_instr hd)) tl
     )

let illformed_eexp_reason vs e =
  if not (VS.subset (vars_eexp e) vs) then Some ("Undefined variables: " ^ string_of_vs (VS.diff (vars_eexp e) vs))
  else None
let illformed_ebexp_reason vs e =
  if not (VS.subset (vars_ebexp e) vs) then Some ("Undefined variables: " ^ string_of_vs (VS.diff (vars_ebexp e) vs))
  else None
let illformed_rexp_reason vs e =
  let well_var v =
    if not (VS.mem v vs) then Some ("Undefined variable: " ^ v)
    else None in
  let well_rexp e =
    if not (VS.subset (vars_rexp e) vs) then Some ("Undefined variables: " ^ string_of_vs (VS.diff (vars_rexp e) vs))
    else None in
  let well_width w e =
    if not (width_of_rexp e = w) then Some ("Unmatched bit-width: " ^ string_of_rexp e)
    else None in
  let helper e =
    match e with
    | BvrVar v -> [well_var v]
    | BvrConst (_, _n) -> []
    | BvrUnop (w, _op, e) -> [well_width w e; well_rexp e]
    | BvrBinop (w, _op, e1, e2) -> [well_width w e1; well_width w e2; well_rexp e1; well_rexp e2]
    | BvrUext (w, e, _i) | BvrSext (w, e, _i) -> [well_width w e; well_rexp e]
  in
  chain_reasons (helper e)
let illformed_rbexp_reason vs e =
  let well_width w e =
    if not (width_of_rexp e = w) then Some ("Unmatched bit-width: " ^ string_of_rexp e)
    else None in
  let rec helper e =
    match e with
    | BvrTrue -> []
    | BvrEq (w, e1, e2)
      | BvrCmp (w, _, e1, e2) -> [well_width w e1; well_width w e2; illformed_rexp_reason vs e1; illformed_rexp_reason vs e2]
    | BvrNeg e -> helper e
    | BvrAnd (e1, e2)
      | BvrOr (e1, e2) -> helper e1 @ helper e2
  in
  chain_reasons (helper e)
let illformed_bexp_reason vs e = chain_reasons [illformed_ebexp_reason vs (eqn_bexp e); illformed_rbexp_reason vs (rng_bexp e)]

type ill_formed = IllPrecondition of bexp | IllInstruction of instr | IllPostcondition of bexp

let illformed_spec_reason vs s =
  match illformed_bexp_reason vs s.spre with
  | Some r -> Some (IllPrecondition s.spre, r)
  | None ->
    (match illformed_program_reason vs VS.empty VS.empty s.sprog with
     | Some (i, r) -> Some (IllInstruction i, r)
     | None ->
        (match illformed_bexp_reason (VS.union vs (vars_program s.sprog)) s.spost with
         | Some r -> Some (IllPostcondition s.spost, r)
         | None -> None))

let well_formed_instr vs cs gs i = (illformed_instr_reason vs cs gs i = None)
let well_formed_program vs cs gs p = (illformed_program_reason vs cs gs p = None)
let _well_formed_eexp vs e = (illformed_eexp_reason vs e = None)
let _well_formed_ebexp vs e = (illformed_ebexp_reason vs e = None)
let _well_formed_rexp vs e = (illformed_rexp_reason vs e = None)
let _well_formed_rbexp vs e = (illformed_rbexp_reason vs e = None)
let _well_formed_bexp vs e = (illformed_bexp_reason vs e = None)
let well_formed_spec vs s = (illformed_spec_reason vs s = None)

(** Static single assignment *)

let initial_index = 0
let first_assigned_index = 1

let get_index v m =
  try
    VM.find v m
  with Not_found ->
    initial_index

let upd_index v m =
  try
    VM.add v (VM.find v m + 1) m
  with Not_found ->
    VM.add v first_assigned_index m

let ssa_var m v = v ^ "_" ^ string_of_int (get_index v m)

let svar v = String.sub v 0 (String.rindex v '_')
let sidx v =
  let i = (String.rindex v '_') + 1 in
  int_of_string (String.sub v i (String.length v - i))

module SSAVarElem : OrderedType with type t = var =
  struct
    type t = var
    let compare v1 v2 =
      let cvar = Pervasives.compare (svar v1) (svar v2) in
      if cvar = 0 then Pervasives.compare (sidx v1) (sidx v2)
      else cvar
  end
module SSAVS = Set.Make(SSAVarElem)
module SSAVM = Map.Make(SSAVarElem)

let ssa_atomic m a =
  match a with
  | BvVar v -> BvVar (ssa_var m v)
  | _ -> a

let rec ssa_eexp m e =
  match e with
  | BveVar v -> BveVar (ssa_var m v)
  | BveConst c -> BveConst c
  | BveUnop (op, e) -> BveUnop (op, ssa_eexp m e)
  | BveBinop (op, e1, e2) -> BveBinop (op, ssa_eexp m e1, ssa_eexp m e2)

let rec ssa_rexp m e =
  match e with
  | BvrVar v -> BvrVar (ssa_var m v)
  | BvrConst (w, c) -> BvrConst (w, c)
  | BvrUnop (w, op, e) -> BvrUnop (w, op, ssa_rexp m e)
  | BvrBinop (w, op, e1, e2) -> BvrBinop (w, op, ssa_rexp m e1, ssa_rexp m e2)
  | BvrUext (w, e, i) -> BvrUext (w, ssa_rexp m e, i)
  | BvrSext (w, e, i) -> BvrSext (w, ssa_rexp m e, i)

let rec ssa_ebexp m e =
  match e with
  | BveTrue -> BveTrue
  | BveEq (e1, e2) -> BveEq (ssa_eexp m e1, ssa_eexp m e2)
  | BveEqMod (e1, e2, p) -> BveEqMod (ssa_eexp m e1, ssa_eexp m e2, ssa_eexp m p)
  | BveAnd (e1, e2) -> BveAnd (ssa_ebexp m e1, ssa_ebexp m e2)

let rec ssa_rbexp m e =
  match e with
  | BvrTrue -> BvrTrue
  | BvrEq (w, e1, e2) -> BvrEq (w, ssa_rexp m e1, ssa_rexp m e2)
  | BvrCmp (w, op, e1, e2) -> BvrCmp (w, op, ssa_rexp m e1, ssa_rexp m e2)
  | BvrNeg e -> BvrNeg (ssa_rbexp m e)
  | BvrAnd (e1, e2) -> BvrAnd (ssa_rbexp m e1, ssa_rbexp m e2)
  | BvrOr (e1, e2) -> BvrOr (ssa_rbexp m e1, ssa_rbexp m e2)

let ssa_bexp m e = (ssa_ebexp m (eqn_bexp e), ssa_rbexp m (rng_bexp e))

let ssa_instr m i =
  match i with
  | BvAssign (v, a) ->
     let a = ssa_atomic m a in
     let m = upd_index v m in
     (m, BvAssign (ssa_var m v, a))
  | BvShl (v, a, n) ->
     let a = ssa_atomic m a in
     let m = upd_index v m in
     (m, BvShl (ssa_var m v, a, n))
  | BvConcatShl (vh, vl, a1, a2, n) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let ml = upd_index vl m in
     let mh = upd_index vh ml in
     (mh, BvConcatShl (ssa_var mh vh, ssa_var ml vl, a1, a2, n))
  | BvSet v ->
     let m = upd_index v m in
     (m, BvSet (ssa_var m v))
  | BvClear v ->
     let m = upd_index v m in
     (m, BvClear (ssa_var m v))
  | BvNondet v ->
     let m = upd_index v m in
     (m, BvNondet (ssa_var m v))
  | BvCmove (v, c, a1, a2) ->
     let c = ssa_var m c in
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let m = upd_index v m in
     (m, BvCmove (ssa_var m v, c, a1, a2))
  | BvSkip -> (m, BvSkip)
  | BvUadd (v, a1, a2) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let m = upd_index v m in
     (m, BvUadd (ssa_var m v, a1, a2))
  | BvUadds (c, v, a1, a2) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let mv = upd_index v m in
     let mc = upd_index c mv in
     (mc, BvUadds (ssa_var mc c, ssa_var mv v, a1, a2))
  | BvUaddr (c, v, a1, a2) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let mv = upd_index v m in
     let mc = upd_index c mv in
     (mc, BvUaddr (ssa_var mc c, ssa_var mv v, a1, a2))
  | BvUadc (v, a1, a2, y) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let y = ssa_var m y in
     let m = upd_index v m in
     (m, BvUadc (ssa_var m v, a1, a2, y))
  | BvUadcs (c, v, a1, a2, y) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let y = ssa_var m y in
     let mv = upd_index v m in
     let mc = upd_index c mv in
     (mc, BvUadcs (ssa_var mc c, ssa_var mv v, a1, a2, y))
  | BvUadcr (c, v, a1, a2, y) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let y = ssa_var m y in
     let mv = upd_index v m in
     let mc = upd_index c mv in
     (mc, BvUadcr (ssa_var mc c, ssa_var mv v, a1, a2, y))
  | BvUsub (v, a1, a2) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let m = upd_index v m in
     (m, BvUsub (ssa_var m v, a1, a2))
  | BvUsubs (c, v, a1, a2) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let mv = upd_index v m in
     let mc = upd_index c mv in
     (mc, BvUsubs (ssa_var mc c, ssa_var mv v, a1, a2))
  | BvUsubr (c, v, a1, a2) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let mv = upd_index v m in
     let mc = upd_index c mv in
     (mc, BvUsubr (ssa_var mc c, ssa_var mv v, a1, a2))
  | BvUsbb (v, a1, a2, y) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let y = ssa_var m y in
     let m = upd_index v m in
     (m, BvUsbb (ssa_var m v, a1, a2, y))
  | BvUsbbs (c, v, a1, a2, y) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let y = ssa_var m y in
     let mv = upd_index v m in
     let mc = upd_index c mv in
     (mc, BvUsbbs (ssa_var mc c, ssa_var mv v, a1, a2, y))
  | BvUsbbr (c, v, a1, a2, y) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let y = ssa_var m y in
     let mv = upd_index v m in
     let mc = upd_index c mv in
     (mc, BvUsbbr (ssa_var mc c, ssa_var mv v, a1, a2, y))
  | BvUmul (v, a1, a2) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let m = upd_index v m in
     (m, BvUmul (ssa_var m v, a1, a2))
  | BvUmuls (c, v, a1, a2) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let mv = upd_index v m in
     let mc = upd_index c mv in
     (mc, BvUmuls (ssa_var mc c, ssa_var mv v, a1, a2))
  | BvUmulr (c, v, a1, a2) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let mv = upd_index v m in
     let mc = upd_index c mv in
     (mc, BvUmulr (ssa_var mc c, ssa_var mv v, a1, a2))
  | BvUmull (vh, vl, a1, a2) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let ml = upd_index vl m in
     let mh = upd_index vh ml in
     (mh, BvUmull (ssa_var mh vh, ssa_var ml vl, a1, a2))
  | BvUsplit (vh, vl, a, n) ->
     let a = ssa_atomic m a in
     let ml = upd_index vl m in
     let mh = upd_index vh ml in
     (mh, BvUsplit (ssa_var mh vh, ssa_var ml vl, a, n))
  | BvSadd (v, a1, a2) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let m = upd_index v m in
     (m, BvSadd (ssa_var m v, a1, a2))
  | BvSadds (c, v, a1, a2) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let mv = upd_index v m in
     let mc = upd_index c mv in
     (mc, BvSadds (ssa_var mc c, ssa_var mv v, a1, a2))
  | BvSaddr (c, v, a1, a2) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let mv = upd_index v m in
     let mc = upd_index c mv in
     (mc, BvSaddr (ssa_var mc c, ssa_var mv v, a1, a2))
  | BvSadc (v, a1, a2, y) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let y = ssa_var m y in
     let m = upd_index v m in
     (m, BvSadc (ssa_var m v, a1, a2, y))
  | BvSadcs (c, v, a1, a2, y) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let y = ssa_var m y in
     let mv = upd_index v m in
     let mc = upd_index c mv in
     (mc, BvSadcs (ssa_var mc c, ssa_var mv v, a1, a2, y))
  | BvSadcr (c, v, a1, a2, y) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let y = ssa_var m y in
     let mv = upd_index v m in
     let mc = upd_index c mv in
     (mc, BvSadcr (ssa_var mc c, ssa_var mv v, a1, a2, y))
  | BvSsub (v, a1, a2) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let m = upd_index v m in
     (m, BvSsub (ssa_var m v, a1, a2))
  | BvSsubs (c, v, a1, a2) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let mv = upd_index v m in
     let mc = upd_index c mv in
     (mc, BvSsubs (ssa_var mc c, ssa_var mv v, a1, a2))
  | BvSsubr (c, v, a1, a2) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let mv = upd_index v m in
     let mc = upd_index c mv in
     (mc, BvSsubr (ssa_var mc c, ssa_var mv v, a1, a2))
  | BvSsbb (v, a1, a2, y) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let y = ssa_var m y in
     let m = upd_index v m in
     (m, BvSsbb (ssa_var m v, a1, a2, y))
  | BvSsbbs (c, v, a1, a2, y) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let y = ssa_var m y in
     let mv = upd_index v m in
     let mc = upd_index c mv in
     (mc, BvSsbbs (ssa_var mc c, ssa_var mv v, a1, a2, y))
  | BvSsbbr (c, v, a1, a2, y) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let y = ssa_var m y in
     let mv = upd_index v m in
     let mc = upd_index c mv in
     (mc, BvSsbbr (ssa_var mc c, ssa_var mv v, a1, a2, y))
  | BvSmul (v, a1, a2) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let m = upd_index v m in
     (m, BvSmul (ssa_var m v, a1, a2))
  | BvSmuls (c, v, a1, a2) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let mv = upd_index v m in
     let mc = upd_index c mv in
     (mc, BvSmuls (ssa_var mc c, ssa_var mv v, a1, a2))
  | BvSmulr (c, v, a1, a2) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let mv = upd_index v m in
     let mc = upd_index c mv in
     (mc, BvSmulr (ssa_var mc c, ssa_var mv v, a1, a2))
  | BvSmull (vh, vl, a1, a2) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let ml = upd_index vl m in
     let mh = upd_index vh ml in
     (mh, BvSmull (ssa_var mh vh, ssa_var ml vl, a1, a2))
  | BvSsplit (vh, vl, a, n) ->
     let a = ssa_atomic m a in
     let ml = upd_index vl m in
     let mh = upd_index vh ml in
     (mh, BvSsplit (ssa_var mh vh, ssa_var ml vl, a, n))
  | BvAndb (v, a1, a2) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let m = upd_index v m in
     (m, BvAndb (ssa_var m v, a1, a2))
  | BvOrb (v, a1, a2) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let m = upd_index v m in
     (m, BvOrb (ssa_var m v, a1, a2))
  | BvNotb (v, a) ->
     let a = ssa_atomic m a in
     let m = upd_index v m in
     (m, BvNotb (ssa_var m v, a))
  | BvAssert e -> (m, BvAssert (ssa_bexp m e))
  | BvAssume e -> (m, BvAssume (ssa_bexp m e))
  | BveCut (e, pwss) -> (m, BveCut (ssa_ebexp m e, pwss))
  | BvrCut (e, pwss) -> (m, BvrCut (ssa_rbexp m e, pwss))
  | BvGhost (vs, e) -> (m, BvGhost (VS.of_list (List.map (ssa_var m) (VS.elements vs)), ssa_bexp m e))

let ssa_program m p =
  let rec helper (m, ssa_p_rev) p =
    match p with
    | [] -> (m, List.filter (fun i -> i <> BvSkip) (List.rev ssa_p_rev))
    | hd::tl ->
       let (m, hd) = ssa_instr m hd in
       helper (m, hd::ssa_p_rev) tl
  in
  helper (m, []) p

let ssa_spec s =
  let m = VM.empty in
  let f = ssa_bexp m s.spre in
  let (m, p) = ssa_program m s.sprog in
  let g = ssa_bexp m s.spost in
  { spre = f; sprog = p; spost = g; sepwss = s.sepwss; srpwss = s.srpwss }


(** Cut *)

(*
 * Cut algebra specifications in SSA.
 * Note that this function removes all bvrCut instructions.
 *)
let cut_espec es =
  let rec helper res (precond, before_rev, after_rev) (pre, visited_rev, prog, post) =
    match prog with
    | [] ->
       let prove_with = List.map (fun e -> BvAssume (e, BvrTrue)) (eprove_with_filter es.espwss (precond, List.rev before_rev)) in
       let spec = { espre = pre; esprog = prove_with@(List.rev visited_rev); espost = post; espwss = [] } in
       spec::res
    | (BveCut (e, pwss) as hd)::tl ->
       let prove_with = List.map (fun e -> BvAssume (e, BvrTrue)) (eprove_with_filter pwss (precond, List.rev before_rev)) in
       let spec = { espre = pre; esprog = prove_with@(List.rev visited_rev); espost = e; espwss = [] } in
       helper (spec::res) (precond, after_rev@before_rev, [hd]) (e, [], tl, post)
    | (BvAssume _ as hd)::tl -> helper res (precond, before_rev, hd::after_rev) (pre, hd::visited_rev, tl, post)
    | (BvGhost _ as hd)::tl -> helper res (precond, before_rev, hd::after_rev) (pre, hd::visited_rev, tl, post)
    | BvrCut _::tl -> helper res (precond, before_rev, after_rev) (pre, visited_rev, tl, post)
    | hd::tl -> helper res (precond, before_rev, after_rev) (pre, hd::visited_rev, tl, post) in
  List.rev (helper [] (es.espre, [], []) (es.espre, [], es.esprog, es.espost))

(*
 * Cut range specifications in SSA.
 * Note that this function removes all bveCut instructions.
 *)
let cut_rspec rs =
  let rec helper res (precond, before_rev, after_rev) (pre, visited_rev, prog, post) =
    match prog with
    | [] ->
       let prove_with = List.map (fun e -> BvAssume (BveTrue, e)) (rprove_with_filter rs.rspwss (precond, List.rev before_rev)) in
       let spec = { rspre = pre; rsprog = prove_with@(List.rev visited_rev); rspost = post; rspwss = [] } in
       spec::res
    | (BvrCut (e, pwss) as hd)::tl ->
       let prove_with = List.map (fun e -> BvAssume (BveTrue, e)) (rprove_with_filter pwss (precond, List.rev before_rev)) in
       let spec = { rspre = pre; rsprog = prove_with@(List.rev visited_rev); rspost = e; rspwss = [] } in
       helper (spec::res) (precond, after_rev@before_rev, [hd]) (e, [], tl, post)
    | (BvAssume (_e, _) as hd)::tl -> helper res (precond, before_rev, hd::after_rev) (pre, hd::visited_rev, tl, post)
    | (BvGhost _ as hd)::tl -> helper res (precond, before_rev, hd::after_rev) (pre, hd::visited_rev, tl, post)
    | BveCut _::tl -> helper res (precond, before_rev, after_rev) (pre, visited_rev, tl, post)
    | hd::tl -> helper res (precond, before_rev, after_rev) (pre, hd::visited_rev, tl, post) in
  List.rev (helper [] (rs.rspre, [], []) (rs.rspre, [], rs.rsprog, rs.rspost))


(** Assignment rewriting for SSA programs *)

let rewrite_assignments_ssa_spec spec =
  let rewrite_assign (prog, post) instr =
    match instr with
    | BvAssign (v, BvVar v') -> (subst_program [(v, BvVar v')] prog, subst_bexp [(v, BveVar v')] [(v, BvrVar v')] post)
    | BvAssign (v, BvConst c) -> (subst_program [(v, BvConst c)] prog, subst_bexp [(v, BveConst c)] [(v, BvrConst (!wordsize, c))] post)
    | _ -> (instr::prog, post) in
  let (prog', post') = List.fold_left rewrite_assign ([], spec.spost) (List.rev spec.sprog) in
  { spre = spec.spre; sprog = prog'; spost = post'; sepwss = spec.sepwss; srpwss = spec.srpwss }


(** Slicing *)

let rec vars_sat_rec b f vars es =
  match es with
  | [] -> vars
  | hd::tl -> if b vars hd then vars_sat_rec b f vars tl
              else vars_sat_rec b f (f vars hd) tl
let rec vars_sat b f vars es =
  let vars' = vars_sat_rec b f vars es in
  if VS.cardinal vars' > VS.cardinal vars then vars_sat b f vars' es
  else vars'
let eexp_vars_sat vars es =
  vars_sat (fun vars e -> vs_disjoint vars (vars_eexp e))
           (fun vars e -> VS.union vars (vars_eexp e)) vars es
let ebexp_vars_sat vars e =
  vars_sat (fun vars e -> vs_disjoint vars (vars_ebexp e))
           (fun vars e -> VS.union vars (vars_ebexp e)) vars (split_bveand e)
let rbexp_vars_sat vars e =
  vars_sat (fun vars e -> vs_disjoint vars (vars_rbexp e))
           (fun vars e -> VS.union vars (vars_rbexp e)) vars (split_bvrand e)
let bexp_vars_sat vars e =
  let vars1 = ebexp_vars_sat vars (eqn_bexp e) in
  let vars2 = rbexp_vars_sat vars1 (rng_bexp e) in
  vars2

let rec slice_ebexp vars e =
  match e with
  | BveTrue -> e
  | BveEq (e1, e2) -> if vs_disjoint vars (vars_eexp e1) && vs_disjoint vars (vars_eexp e2) then BveTrue
                      else e
  | BveEqMod (e1, e2, p) -> if vs_disjoint vars (vars_eexp e1) && vs_disjoint vars (vars_eexp e2) && vs_disjoint vars (vars_eexp p) then BveTrue
                            else e
  | BveAnd (e1, e2) ->
     begin
       match slice_ebexp vars e1, slice_ebexp vars e2 with
       | BveTrue, BveTrue -> BveTrue
       | e1, BveTrue -> e1
       | BveTrue, e2 -> e2
       | e1, e2 -> BveAnd (e1, e2)
     end

let rec slice_rbexp vars e =
  match e with
  | BvrTrue -> e
  | BvrEq (_w, e1, e2) -> if vs_disjoint vars (vars_rexp e1) && vs_disjoint vars (vars_rexp e2) then BvrTrue
                         else e
  | BvrCmp (_w, _op, e1, e2) -> if vs_disjoint vars (vars_rexp e1) && vs_disjoint vars (vars_rexp e2) then BvrTrue
                              else e
  | BvrNeg e' -> if vs_disjoint vars (vars_rbexp e') then BvrTrue
                 else e
  | BvrAnd (e1, e2) ->
     begin
       match slice_rbexp vars e1, slice_rbexp vars e2 with
       | BvrTrue, BvrTrue -> BvrTrue
       | e1, BvrTrue -> e1
       | BvrTrue, e2 -> e2
       | e1, e2 -> BvrAnd (e1, e2)
     end
  | BvrOr (e1, e2) -> if vs_disjoint vars (vars_rbexp e1) && vs_disjoint vars (vars_rbexp e2) then BvrTrue
                      else e

let slice_bexp vars e = (slice_ebexp vars (eqn_bexp e), slice_rbexp vars (rng_bexp e))

(*
 * Slice a program according to a specified initial set of variables.
 * The set of variables will be increased during slicing.
 * The program should not contain any BveCut or BvrCut.
 * Assertions will be removed by this function.
 * This function may remove some necessary assumptions.
 * For example, vars = {x, y}.
 * Consider the program:
 *   bvMulf tmp x (bvVar z) (bvVar w);
 *   bvAssume (bvVar z) = ...;
 * When the function visit the bvAssume instruction, it does not know that z is needed.
 * Consider the following instruction as another example:
 *   bvUaddC carry z (bvVar x) (bvVar y);
 * If the set of variable is {z}, then x and y will be added to the set of variables.
 * However, there may be assumptions about the value of carry, which x depends on.
 *)
let slice_program vars p =
  let rec helper vars res p_rev =
    match p_rev with
    | [] -> (vars, res)
    | hd::tl ->
       begin
         match hd with
         | BvAssert _e -> helper vars res tl
         | BvAssume e -> let e' = slice_bexp vars e in
                         helper (VS.union vars (vars_bexp e')) (if e' = bvTrue then res else BvAssume e'::res) tl
         | BveCut (_e, _pwss) -> failwith ("A program with bveCut cannot be sliced.")
         | BvrCut (_e, _pwss) -> failwith ("A program with bvrCut cannot be sliced.")
         | BvGhost (vs, e) -> if vs_disjoint vars vs then helper vars res tl
                              else helper (VS.union vars (vars_bexp e)) (hd::res) tl
         | _ ->
            if vs_disjoint (lvs_instr hd) vars then helper vars res tl
            else helper (VS.union vars (rvs_instr hd)) (hd::res) tl
       end in
  helper vars [] (List.rev p)

let slice_spec s =
  let vars = vars_bexp s.spost in
  let (vars', p) = slice_program vars s.sprog in
  let pre = slice_bexp (bexp_vars_sat vars' s.spre) s.spre in
  { spre = pre; sprog = p; spost = s.spost; srpwss = s.srpwss; sepwss = s.sepwss }

let slice_espec s =
  let vars = vars_ebexp s.espost in
  let (vars', p) = slice_program vars s.esprog in
  let pre = slice_ebexp (ebexp_vars_sat vars' s.espre) s.espre in
  { espre = pre; esprog = p; espost = s.espost; espwss = s.espwss }

let slice_rspec s =
  let vars = vars_rbexp s.rspost in
  let (vars', p) = slice_program vars s.rsprog in
  let pre = slice_rbexp (rbexp_vars_sat vars' s.rspre) s.rspre in
  { rspre = pre; rsprog = p; rspost = s.rspost; rspwss = s.rspwss }

(*
 * Slice a program in SSA according to a fixed set of variables.
 * All assertions will be removed by this function.
 *)
let slice_program_ssa vars p =
  let rec helper vars res p_rev =
    match p_rev with
    | [] -> res
    | hd::tl ->
       begin
         match hd with
         | BvAssert _e -> helper vars res tl
         | BvAssume e -> let e' = slice_bexp vars e in
                         helper vars (if e' = bvTrue then res else BvAssume e'::res) tl
         | BveCut _ -> failwith ("A program with bveCut cannot be sliced.")
         | BvrCut _ -> failwith ("A program with bvrCut cannot be sliced.")
         | BvGhost (vs, e) -> let e' = slice_bexp vars e in
                              helper vars (if e' = bvTrue then res else BvGhost (vs, e')::res) tl
         | _ ->
            if vs_disjoint (lvs_instr hd) vars then helper vars res tl
            else helper vars (hd::res) tl
       end in
  helper vars [] (List.rev p)

let program_vars_sat vars p_rev =
  vars_sat (fun vars i -> match i with
                          | BvAssert _ -> true
                          | BvAssume _ -> false
                          | BveCut _ -> failwith ("A program with bveCut cannot be sliced.")
                          | BvrCut _ -> failwith ("A program with bvrCut cannot be sliced.")
                          | BvGhost _ -> false
                          | _ -> vs_disjoint vars (lvs_instr i))
           (fun vars i -> match i with
                          | BvAssert _ -> failwith "bvAssert should not appear in program_vars_sat"
                          | BvAssume e -> bexp_vars_sat vars e
                          | BveCut _ -> failwith "bvAssert should not appear in program_vars_sat"
                          | BvrCut _ -> failwith "bvAssert should not appear in program_vars_sat"
                          | BvGhost (_vs, e) -> bexp_vars_sat vars e
                          | _ -> VS.union vars (vars_instr i))
           vars p_rev

let rec program_pre_vars_sat vars pre_vars_sat pre p_rev =
  let vars' = program_vars_sat vars p_rev in
  let vars' = pre_vars_sat vars' pre in
  if VS.cardinal vars' > VS.cardinal vars then program_pre_vars_sat vars' pre_vars_sat pre p_rev
  else vars'

(*
 * Consider the following instruction:
 *   bvUaddC carry_i x_j .. ..
 * If x_j is in the set of relevant variables, carry_i will also be added to the set
 * because there may be some assumption about the value of carry_i and
 * x_j depends whether carry_i is zero or one.
 *)
let slice_spec_ssa s =
  let vars = program_pre_vars_sat (vars_bexp s.spost) bexp_vars_sat s.spre (List.rev s.sprog) in
  let p = slice_program_ssa vars s.sprog in
  let pre = slice_bexp vars s.spre in
  { spre = pre; sprog = p; spost = s.spost; srpwss = s.srpwss; sepwss = s.sepwss }

let slice_espec_ssa s =
  let vars = program_pre_vars_sat (vars_ebexp s.espost) ebexp_vars_sat s.espre (List.rev s.esprog) in
  let p = slice_program_ssa vars s.esprog in
  let pre = slice_ebexp vars s.espre in
  { espre = pre; esprog = p; espost = s.espost; espwss = s.espwss }

let slice_rspec_ssa s =
  let vars = program_pre_vars_sat (vars_rbexp s.rspost) rbexp_vars_sat s.rspre (List.rev s.rsprog) in
  let p = slice_program_ssa vars s.rsprog in
  let pre = slice_rbexp vars s.rspre in
  { rspre = pre; rsprog = p; rspost = s.rspost; rspwss = s.rspwss }



(** Conversion to typed Cryptoline *)

let uint_t () = Cryptoline.uint_t !wordsize
let int_t () = Cryptoline.int_t !wordsize
let bit_t () = Cryptoline.bit_t
let default_type = uint_t

let var_to_typed vm v =
  try
    VM.find v vm
  with Not_found ->
    failwith ("Failed to determine the type of " ^ v)

let eunop_to_typed op =
  match op with
  | BveNeg -> Cryptoline.Eneg

let ebinop_to_typed op =
  match op with
  | BveAdd -> Cryptoline.Eadd
  | BveSub -> Cryptoline.Esub
  | BveMul -> Cryptoline.Emul

let runop_to_typed op =
  match op with
  | BvrNegb -> Cryptoline.Rnegb
  | BvrNotb -> Cryptoline.Rnotb

let rbinop_to_typed op =
  match op with
  | BvrAdd -> Cryptoline.Radd
  | BvrSub -> Cryptoline.Rsub
  | BvrMul -> Cryptoline.Rmul
  | BvrUmod -> Cryptoline.Rumod
  | BvrSrem -> Cryptoline.Rsrem
  | BvrSmod -> Cryptoline.Rsmod
  | BvrAndb -> Cryptoline.Randb
  | BvrOrb -> Cryptoline.Rorb
  | BvrXorb -> Cryptoline.Rxorb

let rcmpop_to_typed op =
  match op with
  | BvrUlt -> Cryptoline.Rult
  | BvrUle -> Cryptoline.Rule
  | BvrUgt -> Cryptoline.Rugt
  | BvrUge -> Cryptoline.Ruge
  | BvrSlt -> Cryptoline.Rslt
  | BvrSle -> Cryptoline.Rsle
  | BvrSgt -> Cryptoline.Rsgt
  | BvrSge -> Cryptoline.Rsge

let big_int_to_z n = Z.of_string (string_of_big_int n)

let rec eexp_to_typed vm e =
  match e with
  | BveVar v -> Cryptoline.Evar (var_to_typed vm v)
  | BveConst n -> Cryptoline.Econst (big_int_to_z n)
  | BveUnop (op, e) -> Cryptoline.Eunop (eunop_to_typed op, eexp_to_typed vm e)
  | BveBinop (op, e1, e2) -> Cryptoline.Ebinop (ebinop_to_typed op, eexp_to_typed vm e1, eexp_to_typed vm e2)

let rec ebexp_to_typed vm e =
  match e with
  | BveTrue -> Cryptoline.Etrue
  | BveEq (e1, e2) -> Cryptoline.Eeq (eexp_to_typed vm e1, eexp_to_typed vm e2)
  | BveEqMod (e1, e2, m) -> Cryptoline.Eeqmod (eexp_to_typed vm e1, eexp_to_typed vm e2, eexp_to_typed vm m)
  | BveAnd (e1, e2) -> Cryptoline.Eand (ebexp_to_typed vm e1, ebexp_to_typed vm e2)

let rec rexp_to_typed vm e =
  match e with
  | BvrVar v ->
     let v = var_to_typed vm v in
     if Cryptoline.var_is_bit v then Cryptoline.Ruext (1, Cryptoline.Rvar v, !wordsize - 1)
     else Cryptoline.Rvar v
  | BvrConst (w, n) -> Cryptoline.Rconst (w, big_int_to_z n)
  | BvrUnop (w, op, e) -> Cryptoline.Runop (w, runop_to_typed op, rexp_to_typed vm e)
  | BvrBinop (w, op, e1, e2) -> Cryptoline.Rbinop (w, rbinop_to_typed op, rexp_to_typed vm e1, rexp_to_typed vm e2)
  | BvrUext (w, e, i) -> Cryptoline.Ruext (w, rexp_to_typed vm e, i)
  | BvrSext (w, e, i) -> Cryptoline.Rsext (w, rexp_to_typed vm e, i)

let rec rbexp_to_typed vm e =
  match e with
  | BvrTrue -> Cryptoline.Rtrue
  | BvrEq (w, e1, e2) -> Cryptoline.Req (w, rexp_to_typed vm e1, rexp_to_typed vm e2)
  | BvrCmp (w, op, e1, e2) -> Cryptoline.Rcmp (w, rcmpop_to_typed op, rexp_to_typed vm e1, rexp_to_typed vm e2)
  | BvrNeg e -> Cryptoline.Rneg (rbexp_to_typed vm e)
  | BvrAnd (e1, e2) -> Cryptoline.Rand (rbexp_to_typed vm e1, rbexp_to_typed vm e2)
  | BvrOr (e1, e2) -> Cryptoline.Ror (rbexp_to_typed vm e1, rbexp_to_typed vm e2)

let bexp_to_typed vm e =
  (ebexp_to_typed vm (eqn_bexp e), rbexp_to_typed vm (rng_bexp e))

let pws_to_typed pws =
  match pws with
    Precondition -> Cryptoline.Precondition
  | AllCuts -> Cryptoline.AllCuts
  | AllAssumes -> Cryptoline.AllAssumes
  | AllGhosts -> Cryptoline.AllGhosts

let infer_read_type_instr x i =
  match i with
  (* Unsigned instructions *)
  | BvUadd (_v, a1, a2) ->
     if VS.mem x (vars_atomic a1) || VS.mem x (vars_atomic a2) then Some (uint_t())
     else None
  | BvUadds (c, _v, a1, a2)
    | BvUaddr (c, _v, a1, a2) ->
     if VS.mem x (vars_atomic a1) || VS.mem x (vars_atomic a2) then Some (uint_t())
     else if x = c then Some (bit_t())
     else None
  | BvUadc (_v, a1, a2, y) ->
     if VS.mem x (vars_atomic a1) || VS.mem x (vars_atomic a2) then Some (uint_t())
     else if x = y then Some (bit_t())
     else None
  | BvUadcs (c, _v, a1, a2, y)
    | BvUadcr (c, _v, a1, a2, y) ->
     if VS.mem x (vars_atomic a1) || VS.mem x (vars_atomic a2) then Some (uint_t())
     else if x = c || x = y then Some (bit_t())
     else None
  | BvUsub (_v, a1, a2) ->
     if VS.mem x (vars_atomic a1) || VS.mem x (vars_atomic a2) then Some (uint_t())
     else None
  | BvUsubs (c, _v, a1, a2)
    | BvUsubr (c, _v, a1, a2) ->
     if VS.mem x (vars_atomic a1) || VS.mem x (vars_atomic a2) then Some (uint_t())
     else if x = c then Some (bit_t())
     else None
  | BvUsbb (_v, a1, a2, y) ->
     if VS.mem x (vars_atomic a1) || VS.mem x (vars_atomic a2) then Some (uint_t())
     else if x = y then Some (bit_t())
     else None
  | BvUsbbs (c, _v, a1, a2, y)
    | BvUsbbr (c, _v, a1, a2, y) ->
     if VS.mem x (vars_atomic a1) || VS.mem x (vars_atomic a2) then Some (uint_t())
     else if x = c || x = y then Some (bit_t())
     else None
  | BvUmul (_v, a1, a2) ->
     if VS.mem x (vars_atomic a1) || VS.mem x (vars_atomic a2) then Some (uint_t())
     else None
  | BvUmuls (c, _v, a1, a2)
    | BvUmulr (c, _v, a1, a2) ->
     if VS.mem x (vars_atomic a1) || VS.mem x (vars_atomic a2) then Some (uint_t())
     else if x = c then Some (bit_t())
     else None
  | BvUmull (_vh, _vl, a1, a2) ->
     if VS.mem x (vars_atomic a1) || VS.mem x (vars_atomic a2) then Some (uint_t())
     else None
  | BvUsplit (_vh, _vl, a, _n) ->
     if VS.mem x (vars_atomic a) then Some (uint_t())
     else None
  (* Signed instructions *)
  | BvSadd (_v, a1, a2) ->
     if VS.mem x (vars_atomic a1) || VS.mem x (vars_atomic a2) then Some (int_t())
     else None
  | BvSadds (c, _v, a1, a2)
    | BvSaddr (c, _v, a1, a2) ->
     if VS.mem x (vars_atomic a1) || VS.mem x (vars_atomic a2) then Some (int_t())
     else if x = c then Some (bit_t())
     else None
  | BvSadc (_v, a1, a2, y) ->
     if VS.mem x (vars_atomic a1) || VS.mem x (vars_atomic a2) then Some (int_t())
     else if x = y then Some (bit_t())
     else None
  | BvSadcs (c, _v, a1, a2, y)
    | BvSadcr (c, _v, a1, a2, y) ->
     if VS.mem x (vars_atomic a1) || VS.mem x (vars_atomic a2) then Some (int_t())
     else if x = c || x = y then Some (bit_t())
     else None
  | BvSsub (_v, a1, a2) ->
     if VS.mem x (vars_atomic a1) || VS.mem x (vars_atomic a2) then Some (int_t())
     else None
  | BvSsubs (c, _v, a1, a2)
    | BvSsubr (c, _v, a1, a2) ->
     if VS.mem x (vars_atomic a1) || VS.mem x (vars_atomic a2) then Some (int_t())
     else if x = c then Some (bit_t())
     else None
  | BvSsbb (_v, a1, a2, y) ->
     if VS.mem x (vars_atomic a1) || VS.mem x (vars_atomic a2) then Some (int_t())
     else if x = y then Some (bit_t())
     else None
  | BvSsbbs (c, _v, a1, a2, y)
    | BvSsbbr (c, _v, a1, a2, y) ->
     if VS.mem x (vars_atomic a1) || VS.mem x (vars_atomic a2) then Some (int_t())
     else if x = c || x = y then Some (bit_t())
     else None
  | BvSmul (_v, a1, a2) ->
     if VS.mem x (vars_atomic a1) || VS.mem x (vars_atomic a2) then Some (int_t())
     else None
  | BvSmuls (c, _v, a1, a2)
    | BvSmulr (c, _v, a1, a2) ->
     if VS.mem x (vars_atomic a1) || VS.mem x (vars_atomic a2) then Some (int_t())
     else if x = c then Some (bit_t())
     else None
  | BvSmull (_vh, _vl, a1, a2) ->
     if VS.mem x (vars_atomic a1) || VS.mem x (vars_atomic a2) then Some (int_t())
     else None
  | BvSsplit (_vh, _vl, a, _n) ->
     if VS.mem x (vars_atomic a) then Some (int_t())
     else None
  (* Other instructions *)
  | _ -> None

let infer_read_type_program x p =
  let infer_read_type_instr' xs i =
    VS.fold
      (fun v tyopt ->
        match tyopt with
        | None -> infer_read_type_instr v i
        | Some _ -> tyopt)
      xs None in
  let rec helper xs p =
    match p with
    | [] -> None
    | hd::tl ->
       begin
         match infer_read_type_instr' xs hd with
         | None -> if vs_disjoint xs (rvs_instr hd) then helper xs tl
                   else helper (VS.diff (VS.union (lvs_instr hd) xs) (lcarries_instr hd)) tl
         | Some ty -> Some ty
       end in
  helper (VS.singleton x) p

  (*
let infer_read_type_program v p =
  let ty = infer_read_type_program v p in
  let _ =
    match ty with
    | None -> print_endline ("Inferred type of " ^ v ^ ": N/A")
    | Some ty -> print_endline ("Inferred type of " ^ v ^ ": " ^ Cryptoline.string_of_typ ty) in
  ty
   *)

let ivar_to_typed vm v ty =
  try
    (vm, VM.find v vm)
  with Not_found ->
    let v' = Cryptoline.mkvar v ty in
    (VM.add v v' vm, v')

let atomic_to_typed vm a ty =
  match a with
  | BvVar v -> let (vm, v') = ivar_to_typed vm v ty in
               (vm, Cryptoline.Avar v')
  | BvConst n -> (vm, Cryptoline.Aconst (ty, big_int_to_z n))

let lv_to_typed vm v ty =
  let v' = Cryptoline.mkvar v ty in
  (VM.add v v' vm, v')

let instr_to_typed typing vm i rest =
  let uint_t = uint_t () in
  let int_t = int_t () in
  let bit_t = bit_t () in
  let infer_typ_from_program x = infer_read_type_program x rest in
  let rec infer_typ_from_atomics vm atomics =
    match atomics with
    | [] -> None
    | BvVar v::tl -> if VM.mem v vm then Some ((VM.find v vm).Cryptoline.vtyp) else infer_typ_from_atomics vm tl
    | _::tl -> infer_typ_from_atomics vm tl in
  let infer_typ vm lv atomics =
    try Hashtbl.find typing lv
    with Not_found ->
      (match infer_typ_from_program lv with
       | None ->
          (match infer_typ_from_atomics vm atomics with
           | None -> default_type ()
           | Some ty -> ty)
       | Some ty -> ty) in
  let cv vm x ty = ivar_to_typed vm x ty in
  let ca vm a ty = atomic_to_typed vm a ty in
  let cl = lv_to_typed in
  match i with
  | BvAssign (v, a) ->
     let ty = infer_typ vm v [a] in
     let (vm, a) = ca vm a ty in
     let (vm, v) = cl vm v ty in
     (vm, Cryptoline.Imov (v, a))
  | BvShl (v, a, n) ->
     let ty = infer_typ vm v [a] in
     let (vm, a) = ca vm a ty in
     let (vm, v) = cl vm v ty in
     (vm, Cryptoline.Ishl (v, a, big_int_to_z n))
  | BvConcatShl (vh, vl, a1, a2, n) ->
     let ty = infer_typ vm vh [a1; a2] in
     let (vm, a1) = ca vm a1 ty in
     let (vm, a2) = ca vm a2 ty in
     let (vm, vh) = cl vm vh ty in
     let (vm, vl) = cl vm vl uint_t in
     (vm, Cryptoline.Icshl (vh, vl, a1, a2, big_int_to_z n))
  | BvSet c ->
     let (vm, c) = cl vm c bit_t in
     (vm, Cryptoline.Imov (c, Aconst (bit_t, Z.one)))
  | BvClear c ->
     let (vm, c) = cl vm c bit_t in
     (vm, Cryptoline.Imov (c, Aconst (bit_t, Z.zero)))
  | BvNondet v ->
     let ty = infer_typ vm v [] in
     let (vm, v) = cv vm v ty in
     (vm, Cryptoline.Inondet v)
  | BvCmove (v, c, a1, a2) ->
     let ty = infer_typ vm v [a1; a2] in
     let (vm, a1) = ca vm a1 ty in
     let (vm, a2) = ca vm a2 ty in
     let (vm, c) = cv vm c bit_t in
     let (vm, v) = cl vm v ty in
     (vm, Cryptoline.Icmov (v, Avar c, a1, a2))
  | BvSkip -> (vm, Cryptoline.Inop)
  (* Unsigned instructions *)
  | BvUadd (v, a1, a2) ->
     let (vm, a1) = ca vm a1 uint_t in
     let (vm, a2) = ca vm a2 uint_t in
     let (vm, v) = cl vm v uint_t in
     (vm, Cryptoline.Iadd (v, a1, a2))
  | BvUadds (c, v, a1, a2) ->
     let (vm, a1) = ca vm a1 uint_t in
     let (vm, a2) = ca vm a2 uint_t in
     let (vm, c) = cl vm c bit_t in
     let (vm, v) = cl vm v uint_t in
     (vm, Cryptoline.Iadds (c, v, a1, a2))
  | BvUaddr (c, v, a1, a2) ->
     let (vm, a1) = ca vm a1 uint_t in
     let (vm, a2) = ca vm a2 uint_t in
     let (vm, c) = cl vm c bit_t in
     let (vm, v) = cl vm v uint_t in
     (vm, Cryptoline.Iaddr (c, v, a1, a2))
  | BvUadc (v, a1, a2, y) ->
     let (vm, a1) = ca vm a1 uint_t in
     let (vm, a2) = ca vm a2 uint_t in
     let (vm, y) = cv vm y bit_t in
     let (vm, v) = cl vm v uint_t in
     (vm, Cryptoline.Iadc (v, a1, a2, Avar y))
  | BvUadcs (c, v, a1, a2, y) ->
     let (vm, a1) = ca vm a1 uint_t in
     let (vm, a2) = ca vm a2 uint_t in
     let (vm, y) = cv vm y bit_t in
     let (vm, c) = cl vm c bit_t in
     let (vm, v) = cl vm v uint_t in
     (vm, Cryptoline.Iadcs (c, v, a1, a2, Avar y))
  | BvUadcr (c, v, a1, a2, y) ->
     let (vm, a1) = ca vm a1 uint_t in
     let (vm, a2) = ca vm a2 uint_t in
     let (vm, y) = cv vm y bit_t in
     let (vm, c) = cl vm c bit_t in
     let (vm, v) = cl vm v uint_t in
     (vm, Cryptoline.Iadcr (c, v, a1, a2, Avar y))
  | BvUsub (v, a1, a2) ->
     let (vm, a1) = ca vm a1 uint_t in
     let (vm, a2) = ca vm a2 uint_t in
     let (vm, v) = cl vm v uint_t in
     (vm, Cryptoline.Isub (v, a1, a2))
  | BvUsubs (c, v, a1, a2) ->
     let (vm, a1) = ca vm a1 uint_t in
     let (vm, a2) = ca vm a2 uint_t in
     let (vm, c) = cl vm c bit_t in
     let (vm, v) = cl vm v uint_t in
     (vm, Cryptoline.Isubb (c, v, a1, a2))
  | BvUsubr (c, v, a1, a2) ->
     let (vm, a1) = ca vm a1 uint_t in
     let (vm, a2) = ca vm a2 uint_t in
     let (vm, c) = cl vm c bit_t in
     let (vm, v) = cl vm v uint_t in
     (vm, Cryptoline.Isubr (c, v, a1, a2))
  | BvUsbb (v, a1, a2, y) ->
     let (vm, a1) = ca vm a1 uint_t in
     let (vm, a2) = ca vm a2 uint_t in
     let (vm, y) = cv vm y bit_t in
     let (vm, v) = cl vm v uint_t in
     (vm, Cryptoline.Isbb (v, a1, a2, Avar y))
  | BvUsbbs (c, v, a1, a2, y) ->
     let (vm, a1) = ca vm a1 uint_t in
     let (vm, a2) = ca vm a2 uint_t in
     let (vm, y) = cv vm y bit_t in
     let (vm, c) = cl vm c bit_t in
     let (vm, v) = cl vm v uint_t in
     (vm, Cryptoline.Isbbs (c, v, a1, a2, Avar y))
  | BvUsbbr (c, v, a1, a2, y) ->
     let (vm, a1) = ca vm a1 uint_t in
     let (vm, a2) = ca vm a2 uint_t in
     let (vm, y) = cv vm y bit_t in
     let (vm, c) = cl vm c bit_t in
     let (vm, v) = cl vm v uint_t in
     (vm, Cryptoline.Isbbr (c, v, a1, a2, Avar y))
  | BvUmul (v, a1, a2) ->
     let (vm, a1) = ca vm a1 uint_t in
     let (vm, a2) = ca vm a2 uint_t in
     let (vm, v) = cl vm v uint_t in
     (vm, Cryptoline.Imul (v, a1, a2))
  | BvUmuls (c, v, a1, a2) ->
     let (vm, a1) = ca vm a1 uint_t in
     let (vm, a2) = ca vm a2 uint_t in
     let (vm, c) = cl vm c bit_t in
     let (vm, v) = cl vm v uint_t in
     (vm, Cryptoline.Imuls (c, v, a1, a2))
  | BvUmulr (c, v, a1, a2) ->
     let (vm, a1) = ca vm a1 uint_t in
     let (vm, a2) = ca vm a2 uint_t in
     let (vm, c) = cl vm c bit_t in
     let (vm, v) = cl vm v uint_t in
     (vm, Cryptoline.Imulr (c, v, a1, a2))
  | BvUmull (vh, vl, a1, a2) ->
     let (vm, a1) = ca vm a1 uint_t in
     let (vm, a2) = ca vm a2 uint_t in
     let (vm, vh) = cl vm vh uint_t in
     let (vm, vl) = cl vm vl uint_t in
     (vm, Cryptoline.Imull (vh, vl, a1, a2))
  | BvUsplit (vh, vl, a, n) ->
     let (vm, a) = ca vm a uint_t in
     let (vm, vh) = cl vm vh uint_t in
     let (vm, vl) = cl vm vl uint_t in
     (vm, Cryptoline.Isplit (vh, vl, a, big_int_to_z n))
  (* Signed instructions *)
  | BvSadd (v, a1, a2) ->
     let (vm, a1) = ca vm a1 int_t in
     let (vm, a2) = ca vm a2 int_t in
     let (vm, v) = cl vm v int_t in
     (vm, Cryptoline.Iadd (v, a1, a2))
  | BvSadds (c, v, a1, a2) ->
     let (vm, a1) = ca vm a1 int_t in
     let (vm, a2) = ca vm a2 int_t in
     let (vm, c) = cl vm c bit_t in
     let (vm, v) = cl vm v int_t in
     (vm, Cryptoline.Iadds (c, v, a1, a2))
  | BvSaddr (c, v, a1, a2) ->
     let (vm, a1) = ca vm a1 int_t in
     let (vm, a2) = ca vm a2 int_t in
     let (vm, c) = cl vm c bit_t in
     let (vm, v) = cl vm v int_t in
     (vm, Cryptoline.Iaddr (c, v, a1, a2))
  | BvSadc (v, a1, a2, y) ->
     let (vm, a1) = ca vm a1 int_t in
     let (vm, a2) = ca vm a2 int_t in
     let (vm, y) = cv vm y bit_t in
     let (vm, v) = cl vm v int_t in
     (vm, Cryptoline.Iadc (v, a1, a2, Avar y))
  | BvSadcs (c, v, a1, a2, y) ->
     let (vm, a1) = ca vm a1 int_t in
     let (vm, a2) = ca vm a2 int_t in
     let (vm, y) = cv vm y bit_t in
     let (vm, c) = cl vm c bit_t in
     let (vm, v) = cl vm v int_t in
     (vm, Cryptoline.Iadcs (c, v, a1, a2, Avar y))
  | BvSadcr (c, v, a1, a2, y) ->
     let (vm, a1) = ca vm a1 int_t in
     let (vm, a2) = ca vm a2 int_t in
     let (vm, y) = cv vm y bit_t in
     let (vm, c) = cl vm c bit_t in
     let (vm, v) = cl vm v int_t in
     (vm, Cryptoline.Iadcr (c, v, a1, a2, Avar y))
  | BvSsub (v, a1, a2) ->
     let (vm, a1) = ca vm a1 int_t in
     let (vm, a2) = ca vm a2 int_t in
     let (vm, v) = cl vm v int_t in
     (vm, Cryptoline.Isub (v, a1, a2))
  | BvSsubs (c, v, a1, a2) ->
     let (vm, a1) = ca vm a1 int_t in
     let (vm, a2) = ca vm a2 int_t in
     let (vm, c) = cl vm c bit_t in
     let (vm, v) = cl vm v int_t in
     (vm, Cryptoline.Isubb (c, v, a1, a2))
  | BvSsubr (c, v, a1, a2) ->
     let (vm, a1) = ca vm a1 int_t in
     let (vm, a2) = ca vm a2 int_t in
     let (vm, c) = cl vm c bit_t in
     let (vm, v) = cl vm v int_t in
     (vm, Cryptoline.Isubr (c, v, a1, a2))
  | BvSsbb (v, a1, a2, y) ->
     let (vm, a1) = ca vm a1 int_t in
     let (vm, a2) = ca vm a2 int_t in
     let (vm, y) = cv vm y bit_t in
     let (vm, v) = cl vm v int_t in
     (vm, Cryptoline.Isbb (v, a1, a2, Avar y))
  | BvSsbbs (c, v, a1, a2, y) ->
     let (vm, a1) = ca vm a1 int_t in
     let (vm, a2) = ca vm a2 int_t in
     let (vm, y) = cv vm y bit_t in
     let (vm, c) = cl vm c bit_t in
     let (vm, v) = cl vm v int_t in
     (vm, Cryptoline.Isbbs (c, v, a1, a2, Avar y))
  | BvSsbbr (c, v, a1, a2, y) ->
     let (vm, a1) = ca vm a1 int_t in
     let (vm, a2) = ca vm a2 int_t in
     let (vm, y) = cv vm y bit_t in
     let (vm, c) = cl vm c bit_t in
     let (vm, v) = cl vm v int_t in
     (vm, Cryptoline.Isbbr (c, v, a1, a2, Avar y))
  | BvSmul (v, a1, a2) ->
     let (vm, a1) = ca vm a1 int_t in
     let (vm, a2) = ca vm a2 int_t in
     let (vm, v) = cl vm v int_t in
     (vm, Cryptoline.Imul (v, a1, a2))
  | BvSmuls (c, v, a1, a2) ->
     let (vm, a1) = ca vm a1 int_t in
     let (vm, a2) = ca vm a2 int_t in
     let (vm, c) = cl vm c bit_t in
     let (vm, v) = cl vm v int_t in
     (vm, Cryptoline.Imuls (c, v, a1, a2))
  | BvSmulr (c, v, a1, a2) ->
     let (vm, a1) = ca vm a1 int_t in
     let (vm, a2) = ca vm a2 int_t in
     let (vm, c) = cl vm c bit_t in
     let (vm, v) = cl vm v int_t in
     (vm, Cryptoline.Imulr (c, v, a1, a2))
  | BvSmull (vh, vl, a1, a2) ->
     let (vm, a1) = ca vm a1 int_t in
     let (vm, a2) = ca vm a2 int_t in
     let (vm, vh) = cl vm vh int_t in
     let (vm, vl) = cl vm vl uint_t in
     (vm, Cryptoline.Imull (vh, vl, a1, a2))
  | BvSsplit (vh, vl, a, n) ->
     let (vm, a) = ca vm a int_t in
     let (vm, vh) = cl vm vh int_t in
     let (vm, vl) = cl vm vl uint_t in
     (vm, Cryptoline.Isplit (vh, vl, a, big_int_to_z n))
  (* Instructions that cannot be translated to polynomials *)
  | BvAndb (v, a1, a2) ->
     let ty = infer_typ vm v [a1] in
     let (vm, a1) = ca vm a1 ty in
     let (vm, a2) = ca vm a2 ty in
     let (vm, v) = cl vm v ty in
     (vm, Cryptoline.Iand (v, a1, a2))
  | BvOrb (v, a1, a2) ->
     let ty = infer_typ vm v [a1] in
     let (vm, a1) = ca vm a1 ty in
     let (vm, a2) = ca vm a2 ty in
     let (vm, v) = cl vm v ty in
     (vm, Cryptoline.Ior (v, a1, a2))
  | BvNotb (v, a) ->
     let ty = infer_typ vm v [a] in
     let (vm, a) = ca vm a ty in
     let (vm, v) = cl vm v ty in
     (vm, Cryptoline.Inot (v, a))
  (* Specifications *)
  | BvAssert e -> (vm, Cryptoline.Iassert (bexp_to_typed vm e))
  | BvAssume e -> (vm, Cryptoline.Iassume (bexp_to_typed vm e))
  | BveCut (e, pwss) -> (vm, Cryptoline.Iecut (ebexp_to_typed vm e, List.map pws_to_typed pwss))
  | BvrCut (e, pwss) -> (vm, Cryptoline.Ircut (rbexp_to_typed vm e, List.map pws_to_typed pwss))
  | BvGhost (vs, e) ->
     let vs' = List.map (fun v -> Cryptoline.mkvar v uint_t) (VS.elements vs) in
     let vm = List.fold_left (fun vm v -> VM.add v.Cryptoline.vname v vm) vm vs' in
     (vm, Cryptoline.Ighost (Cryptoline.VS.of_list vs', bexp_to_typed vm e))

let program_to_typed ?typing:(typing=Hashtbl.create 100) vm p =
  let rec helper typing vm processed_rev p =
    match p with
    | [] -> (vm, List.rev processed_rev)
    | hd::tl ->
       let (vm, i) = instr_to_typed typing vm hd tl in
       helper typing vm (i::processed_rev) tl in
  helper typing vm [] p

let spec_to_typed ?typing:(typing=Hashtbl.create 100) (vs, s) =
  let vm = VS.fold (fun v vm ->
               let ty =
                 try Hashtbl.find typing v
                 with Not_found ->
                   (match infer_read_type_program v s.sprog with
                    | None -> failwith ("Failed to determine the type of " ^ v)
                    | Some ty -> ty) in
               let v' = Cryptoline.mkvar v ty in
               VM.add v v' vm) vs VM.empty in
  let typed_vs = VM.fold (fun _vn v vs -> Cryptoline.VS.add v vs) vm Cryptoline.VS.empty in
  let pre = bexp_to_typed vm s.spre in
  let (vm, prog) = program_to_typed ~typing:typing vm s.sprog in
  let post = bexp_to_typed vm s.spost in
  let epwss = List.map pws_to_typed s.sepwss in
  let rpwss = List.map pws_to_typed s.srpwss in
  (typed_vs,
   { Cryptoline.spre = pre; Cryptoline.sprog = prog; Cryptoline.spost = post; sepwss = epwss; srpwss = rpwss })

let espec_to_typed ?typing:(typing=Hashtbl.create 100) (vs, s) =
  let vm = VS.fold (fun v vm ->
               let ty =
                 try Hashtbl.find typing v
                 with Not_found ->
                   (match infer_read_type_program v s.esprog with
                    | None -> failwith ("Failed to determine the type of " ^ v)
                    | Some ty -> ty) in
               let v' = Cryptoline.mkvar v ty in
               VM.add v v' vm) vs VM.empty in
  let pre = ebexp_to_typed vm s.espre in
  let (vm, prog) = program_to_typed ~typing:typing vm s.esprog in
  let post = ebexp_to_typed vm s.espost in
  let epwss = List.map pws_to_typed s.espwss in
  (VM.fold (fun _vn v vs -> Cryptoline.VS.add v vs) vm Cryptoline.VS.empty,
   { Cryptoline.espre = pre; Cryptoline.esprog = prog; Cryptoline.espost = post; espwss = epwss })

let rspec_to_typed ?typing:(typing=Hashtbl.create 100) (vs, s) =
  let vm = VS.fold (fun v vm ->
               let ty =
                 try Hashtbl.find typing v
                 with Not_found ->
                   (match infer_read_type_program v s.rsprog with
                    | None -> failwith ("Failed to determine the type of " ^ v)
                    | Some ty -> ty) in
               let v' = Cryptoline.mkvar v ty in
               VM.add v v' vm) vs VM.empty in
  let pre = rbexp_to_typed vm s.rspre in
  let (vm, prog) = program_to_typed ~typing:typing vm s.rsprog in
  let post = rbexp_to_typed vm s.rspost in
  let rpwss = List.map pws_to_typed s.rspwss in
  (VM.fold (fun _vn v vs -> Cryptoline.VS.add v vs) vm Cryptoline.VS.empty,
   { Cryptoline.rspre = pre; Cryptoline.rsprog = prog; Cryptoline.rspost = post; rspwss = rpwss })
