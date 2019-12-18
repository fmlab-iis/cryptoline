
open Set

let z_two = Z.of_int 2

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
let typ_delim = "@"

type associativity = LeftAssoc | RightAssoc

(* LeftAssoc: add [n0, n1, ..., nm] = (...((n0 + n1) + n2)...) + nm *)
(* RightAssoc: add [n0, n1, ..., nm] = nm + (...(n2 + (n1 + n0))...) *)
let add_assoc = LeftAssoc
let mul_assoc = LeftAssoc
let conj_assoc = LeftAssoc
let disj_assoc = LeftAssoc
let _unused_assoc = RightAssoc



(** Types *)

type size = int

type typ =
  Tuint of size
| Tsint of size

let uint_t w = Tuint w
let int_t w = Tsint w
let bit_t = Tuint 1

let string_of_typ ty =
  match ty with
  | Tuint w -> "uint" ^ string_of_int w
  | Tsint w -> "int" ^ string_of_int w
let size_of_typ ty =
  match ty with
  | Tuint w -> w
  | Tsint w -> w
let min_of_typ ty =
  match ty with
  | Tuint _w -> Z.zero
  | Tsint w -> Z.neg (Z.pow z_two (w - 1))
let max_of_typ ty =
  match ty with
  | Tuint w -> Z.sub (Z.pow z_two w) Z.one
  | Tsint w -> Z.sub (Z.pow z_two (w - 1)) Z.one
let typ_is_signed ty =
  match ty with
  | Tsint _ -> true
  | Tuint _ -> false
let typ_to_signed ty =
  match ty with
  | Tuint w -> Tsint w
  | Tsint _w -> ty
let typ_to_unsigned ty =
  match ty with
  | Tuint _w -> ty
  | Tsint w -> Tuint w



(** Variables with SSA index taken into consideration *)

type var =
  {
    vname : string;     (* name of the variable *)
    vtyp : typ;         (* type of the variable *)
    vsidx : int         (* SSA index of the variable *)
  }

let invalid_sidx i = i < 0
let default_non_ssa_idx = -1
(*
 * The string representation of a variable with SSA index taken into consideration
 * If the argument labeled with vtyp is true, the variable type is also output.
 *)
let string_of_var ?typ:(typ=false) v =
  let str =
    if invalid_sidx v.vsidx then v.vname
    else v.vname ^ "_" ^ string_of_int v.vsidx in
  if typ then str ^ typ_delim ^ string_of_typ v.vtyp
  else str
let size_of_var v = size_of_typ v.vtyp
let typ_of_var v = v.vtyp
(* Two variables are equal if
 * - they have the same name and
 * - their SSA indices are equal.
 *)
let eq_var v1 v2 = v1.vname = v2.vname && v1.vsidx = v2.vsidx
let cmp_var v1 v2 =
  let c = Pervasives.compare v1.vname v2.vname in
  if c = 0 then Pervasives.compare v1.vsidx v2.vsidx
  else c
let mem_var v vs = List.exists (fun u -> eq_var u v) vs
let mkvar vn vt = { vname = vn; vtyp = vt; vsidx = default_non_ssa_idx }
let var_is_uint v =
  match v.vtyp with
  | Tuint _ -> true
  | _ -> false
let var_is_sint v =
  match v.vtyp with
  | Tsint _ -> true
  | _ -> false
let var_is_bit v = v.vtyp = bit_t
let var_is_signed v = typ_is_signed v.vtyp

module VarElem : OrderedType with type t = var =
  struct
    type t = var
    let compare = cmp_var
  end
module VS = Set.Make(VarElem)
module VM = Map.Make(VarElem)


let vs_disjoint vs1 vs2 = VS.is_empty (VS.inter vs1 vs2)
let string_of_vs ?typ:(typ=false) vs = String.concat ", " (List.map (fun v -> string_of_var ~typ:typ v) (VS.elements vs))



(** Operators *)

type eunop =
  | Eneg

type ebinop =
  | Eadd
  | Esub
  | Emul

type runop =
  | Rnegb
  | Rnotb

type rbinop =
  | Radd
  | Rsub
  | Rmul
  | Rumod
  | Rsrem (* 2's complement signed remainder (sign follows dividend) *)
  | Rsmod (* 2's complement signed remainder (sign follows divisor) *)
  | Randb
  | Rorb
  | Rxorb

type rcmpop =
  | Rult
  | Rule
  | Rugt
  | Ruge
  | Rslt
  | Rsle
  | Rsgt
  | Rsge

let string_of_eunop op =
  match op with
  | Eneg -> "neg"

let symbol_of_eunop op =
  match op with
  | Eneg -> "-"

let string_of_ebinop op =
  match op with
  | Eadd -> "add"
  | Esub -> "sub"
  | Emul -> "mul"

let symbol_of_ebinop op =
  match op with
  | Eadd -> add_symbol
  | Esub -> sub_symbol
  | Emul -> mul_symbol

let string_of_rcmpop op =
  match op with
  | Rult -> "ult"
  | Rule -> "ule"
  | Rugt -> "ugt"
  | Ruge -> "uge"
  | Rslt -> "slt"
  | Rsle -> "sle"
  | Rsgt -> "sgt"
  | Rsge -> "sge"

let symbol_of_rcmpop op =
  match op with
  | Rult -> ult_symbol
  | Rule -> ule_symbol
  | Rugt -> ugt_symbol
  | Ruge -> uge_symbol
  | Rslt -> slt_symbol
  | Rsle -> sle_symbol
  | Rsgt -> sgt_symbol
  | Rsge -> sge_symbol

let string_of_runop op =
  match op with
  | Rnegb -> "neg"
  | Rnotb -> "not"

let string_of_rbinop op =
  match op with
  | Radd -> "add"
  | Rsub -> "sub"
  | Rmul -> "mul"
  | Rumod -> "umod"
  | Rsrem -> "srem"
  | Rsmod -> "smod"
  | Randb -> "and"
  | Rorb -> "or"
  | Rxorb -> "xor"



(** Algebraic Expressions *)

type eexp =
  | Evar of var
  | Econst of Z.t
  | Eunop of eunop * eexp
  | Ebinop of ebinop * eexp * eexp

let evar v = Evar v
let econst n = Econst n
let eneg e = Eunop (Eneg, e)
let eadd e1 e2 = Ebinop (Eadd, e1, e2)
let esub e1 e2 = Ebinop (Esub, e1, e2)
let emul e1 e2 = Ebinop (Emul, e1, e2)
let esq e = Ebinop (Emul, e, e)
(*let eadds es = List.fold_left (fun res e -> eadd e res) (econst Z.zero) es
let emuls es = List.fold_left (fun res e -> emul e res) (econst Z.one) es*)
let eadds es =
  match es with
  | [] -> econst Z.zero
  | e::[] -> e
  | e::es -> (match add_assoc with
              | LeftAssoc -> List.fold_left (fun res e -> eadd res e) e es
              | RightAssoc -> List.fold_left (fun res e -> eadd e res) e es)
let emuls es =
  match es with
  | [] -> econst Z.one
  | e::[] -> e
  | e::es -> (match mul_assoc with
              | LeftAssoc -> List.fold_left (fun res e -> emul res e) e es
              | RightAssoc -> List.fold_left (fun res e -> emul e res) e es)

let e2pow n = Z.pow z_two n

let rec len_eexp e =
  match e with
  | Evar _ -> 1
  | Econst _ -> 1
  | Eunop (_, e) -> 1 + len_eexp e
  | Ebinop (_, e1, e2) -> 1 + len_eexp e1 + len_eexp e2

(* Expressions should not be compared by = and ==. *)
let rec eq_eexp e1 e2 =
  match e1, e2 with
  | Evar v1, Evar v2 -> eq_var v1 v2
  | Econst n1, Econst n2 -> Z.equal n1 n2
  | Eunop (op1, e1), Eunop (op2, e2) -> op1 = op2 && eq_eexp e1 e2
  | Ebinop (op1, e11, e12), Ebinop (op2, e21, e22) -> op1 = op2 && eq_eexp e11 e21 && eq_eexp e12 e22
  | _ -> false

let cmp_eunop op1 op2 = Pervasives.compare op1 op2

let _cmp_ebinop op1 op2 = Pervasives.compare op1 op2

let rec cmp_eexp e1 e2 =
  match e1, e2 with
  | Evar v1, Evar v2 -> cmp_var v1 v2
  | Evar _, _ -> -1
  | Econst _, Evar _ -> 1
  | Econst n1, Econst n2 -> Z.compare n1 n2
  | Econst _, _ -> -1
  | Eunop _, Evar _
    | Eunop _, Econst _ -> 1
  | Eunop (op1, e1), Eunop (op2, e2) ->
     let cmp = cmp_eunop op1 op2 in
     if cmp = 0 then cmp_eexp e1 e2
     else cmp
  | Eunop _, _ -> -1
  | Ebinop (op1, e11, e12), Ebinop (op2, e21, e22) ->
     let cmp = cmp_eunop op1 op2 in
     if cmp = 0 then
       let cmp = cmp_eexp e11 e21 in
       if cmp = 0 then cmp_eexp e12 e22
       else cmp
     else cmp
  | Ebinop _, _ -> 1

module EEElt : Set.OrderedType with type t = eexp =
  struct
    type t = eexp
    let compare = cmp_eexp
  end

module EES : Set.S with type elt = eexp = Set.Make(EEElt)

let rec simplify_eexp e =
  match e with
  | Eunop (Eneg, e) ->
     let e = simplify_eexp e in
     (match e with
      | Econst n when Z.equal n Z.zero -> Econst Z.zero
      | Eunop (Eneg, sub) -> sub
      | _ -> Eunop (Eneg, e))
  | Ebinop (op, e1, e2) ->
     let e1 = simplify_eexp e1 in
     let e2 = simplify_eexp e2 in
     (match op, e1, e2 with
      | Eadd, e, Econst n when Z.equal n Z.zero -> e
      | Eadd, Econst n, e when Z.equal n Z.zero -> e
      | Esub, e, Econst n when Z.equal n Z.zero -> e
      | Esub, Econst n, e when Z.equal n Z.zero -> simplify_eexp (Eunop (Eneg, e))
      | Emul, _e, Econst n when Z.equal n Z.zero -> Econst Z.zero
      | Emul, Econst n, _e when Z.equal n Z.zero -> Econst Z.zero
      | Emul, e, Econst n when Z.equal n Z.one -> e
      | Emul, Econst n, e when Z.equal n Z.one -> e
      | _ -> Ebinop (op, e1, e2))
  | _ -> e

(*
let rec limbs_rec r p es =
  match es with
  | [] -> econst Z.zero
  | hd::[] -> if p = 0 then hd else emul hd (econst (e2pow p))
  | hd::tl ->
     let m = p + r in
     if p = 0 then eadd hd (limbs_rec r m tl)
     else eadd (emul hd (econst (e2pow p))) (limbs_rec r m tl)

let limbs r es = limbs_rec r 0 es
*)
let limbs r es =
  let mons = List.mapi (fun i e ->
                 if i = 0 then e
                 else emul e (econst (e2pow (i * r)))) es in
  match add_assoc with
  | LeftAssoc -> eadds mons
  | RightAssoc -> eadds (List.rev mons)

let eunop_precedence op =
  match op with
  | Eneg -> 2

let ebinop_precedence op =
  match op with
  | Eadd -> 0
  | Esub -> 0
  | Emul -> 1

let eexp_precedence e =
  match e with
  | Evar _ -> 3
  | Econst _ -> 3
  | Eunop (op, _) -> eunop_precedence op
  | Ebinop (op, _, _) -> ebinop_precedence op

let ebinop_eexp_open op e =
  match op, e with
  | _, Evar _ -> true
  | _, Econst _ -> true
  | _, Eunop (_op, _) -> false
  | Eadd, Ebinop (op, _, _) -> op = Eadd || op = Esub
  | Esub, Ebinop (_op, _, _) -> false
  | Emul, Ebinop (op, _, _) -> op = Emul

let eexp_ebinop_open e op =
  match e, op with
  | Evar _, _ -> true
  | Econst _, _ -> true
  | Eunop (_op, _), _ -> false
  | Ebinop (op, _, _), Eadd -> op = Eadd || op = Esub
  | Ebinop (op, _, _), Esub -> op = Eadd || op = Esub
  | Ebinop (op, _, _), Emul -> op = Emul

let is_eexp_atomic e =
  match e with
  | Evar _ | Econst _ -> true
  | _ -> false

let rec string_of_eexp ?typ:(typ=false) e =
  match e with
  | Evar v -> string_of_var ~typ:typ v
  | Econst n -> Z.to_string n
  | Eunop (op, e) -> symbol_of_eunop op ^ (if is_eexp_atomic e then string_of_eexp ~typ:typ e else " (" ^ string_of_eexp ~typ:typ e ^ ")")
  | Ebinop (op, e1, e2) ->
     (if eexp_ebinop_open e1 op then string_of_eexp ~typ:typ e1 else "(" ^ string_of_eexp ~typ:typ e1 ^ ")")
     ^ " " ^ symbol_of_ebinop op ^ " "
     ^ (if ebinop_eexp_open op e2 then string_of_eexp ~typ:typ e2 else "(" ^ string_of_eexp ~typ:typ e2 ^ ")")

let rec vars_eexp e =
  match e with
  | Evar x -> VS.singleton x
  | Econst _ -> VS.empty
  | Eunop (_, e) -> vars_eexp e
  | Ebinop (_, e1, e2) -> VS.union (vars_eexp e1) (vars_eexp e2)

let rec _subst_eexp v r e =
  match e with
  | Evar x when eq_var x v -> r
  | Eunop (op, e) -> Eunop (op, _subst_eexp v r e)
  | Ebinop (op, e1, e2) -> Ebinop (op, _subst_eexp v r e1, _subst_eexp v r e2)
  | _ -> e

let rec subst_evar pats v =
  match pats with
  | [] -> Evar v
  | (x, r)::_tl when eq_var v x -> r
  | _::tl -> subst_evar tl v

let rec subst_eexp pats e =
  match e with
  | Evar v -> subst_evar pats v
  | Econst _n -> e
  | Eunop (op, e) -> Eunop (op, subst_eexp pats e)
  | Ebinop (op, e1, e2) -> Ebinop (op, subst_eexp pats e1, subst_eexp pats e2)

let rec replace_eexp pats e =
  try
    snd (List.find (fun (pat, _repl) -> eq_eexp pat e) pats)
  with Not_found ->
    begin
      match e with
      | Eunop (op, e) -> Eunop (op, replace_eexp pats e)
      | Ebinop (op, e1, e2) -> Ebinop (op, replace_eexp pats e1, replace_eexp pats e2)
      | _ -> e
    end

let rec subs_eexp e =
  EES.add e (match e with
             | Evar _ -> EES.empty
             | Econst _ -> EES.empty
             | Eunop (_, e) -> subs_eexp e
             | Ebinop (_, e1, e2) -> EES.union (subs_eexp e1) (subs_eexp e2)
            )

let rec eexp_has_sub e sub =
  if eq_eexp e sub then true
  else match e with
       | Eunop (_, e) -> eexp_has_sub e sub
       | Ebinop (_, e1, e2) -> eexp_has_sub e1 sub || eexp_has_sub e2 sub
       | _ -> false



(** Range Expressions *)

type rexp =
  | Rvar of var
  | Rconst of size * Z.t
  | Runop of size * runop * rexp
  | Rbinop of size * rbinop * rexp * rexp
  | Ruext of size * rexp * int
  | Rsext of size * rexp * int

let size_of_rexp e =
  match e with
  | Rvar v -> size_of_var v
  | Rconst (w, _) -> w
  | Runop (w, _, _) -> w
  | Rbinop (w, _, _, _) -> w
  | Ruext (w, _, i)
  | Rsext (w, _, i) -> w + i

let rvar v = Rvar v
let rconst w n = Rconst (w, n)
let rposz w n = Rconst (w, n)
let rnegb w e = Runop (w, Rnegb, e)
let rnotb w e = Runop (w, Rnotb, e)
let radd w e1 e2 = Rbinop (w, Radd, e1, e2)
let rsub w e1 e2 = Rbinop (w, Rsub, e1, e2)
let rmul w e1 e2 = Rbinop (w, Rmul, e1, e2)
let rumod w e1 e2 = Rbinop (w, Rumod, e1, e2)
let rsrem w e1 e2 = Rbinop (w, Rsrem, e1, e2)
let rsmod w e1 e2 = Rbinop (w, Rsmod, e1, e2)
let randb w e1 e2 = Rbinop (w, Randb, e1, e2)
let rorb w e1 e2 = Rbinop (w, Rorb, e1, e2)
let rxorb w e1 e2 = Rbinop (w, Rxorb, e1, e2)
let rsq w e = Rbinop (w, Rmul, e, e)
(*let radds w es = List.fold_left (fun res e -> radd w e res) (rconst w Z.zero) es
let rmuls w es = List.fold_left (fun res e -> rmul w e res) (rconst w Z.one) es*)
let radds w es =
  match es with
  | [] -> rconst w Z.zero
  | e::[] -> e
  | e::es -> (match add_assoc with
              | LeftAssoc -> List.fold_left (fun res e -> radd w res e) e es
              | RightAssoc -> List.fold_left (fun res e -> radd w e res) e es)
let rmuls w es =
  match es with
  | [] -> rconst w Z.one
  | e::[] -> e
  | e::es -> (match mul_assoc with
              | LeftAssoc -> List.fold_left (fun res e -> rmul w res e) e es
              | RightAssoc -> List.fold_left (fun res e -> rmul w e res) e es)

let is_rexp_atomic e =
  match e with
  | Rvar _ | Rconst _ -> true
  | _ -> false

let rec string_of_rexp ?typ:(typ=false) e =
  match e with
  | Rvar v -> string_of_var ~typ:typ v
  | Rconst (w, n) -> if Z.lt n Z.zero then "(" ^ Z.to_string n ^ ")" ^ typ_delim ^ string_of_int w else Z.to_string n ^ typ_delim ^ string_of_int w
  | Runop (_w, op, e) -> string_of_runop op ^ " " ^ (if is_rexp_atomic e then string_of_rexp ~typ:typ e else "(" ^ string_of_rexp ~typ:typ e ^ ")")
  | Rbinop (_w, op, e1, e2) -> string_of_rbinop op ^ " (" ^ string_of_rexp ~typ:typ e1 ^ ") (" ^ string_of_rexp ~typ:typ e2 ^ ")"
  | Ruext (_w, e, i) -> "uext " ^ (if is_rexp_atomic e then string_of_rexp ~typ:typ e else "(" ^ string_of_rexp ~typ:typ e ^ ")") ^ " " ^ string_of_int i
  | Rsext (_w, e, i) -> "sext " ^ (if is_rexp_atomic e then string_of_rexp ~typ:typ e else "(" ^ string_of_rexp ~typ:typ e ^ ")") ^ " " ^ string_of_int i

let rec eq_rexp e1 e2 =
  match e1, e2 with
  | Rvar v1, Rvar v2 -> eq_var v1 v2
  | Rconst (w1, n1), Rconst (w2, n2) -> w1 = w2 && Z.equal n1 n2
  | Runop (w1, op1, e1), Runop (w2, op2, e2) -> w1 = w2 && op1 = op2 && eq_rexp e1 e2
  | Rbinop (w1, op1, e1a, e1b), Rbinop (w2, op2, e2a, e2b) -> w1 = w2 && op1 = op2 && eq_rexp e1a e2a && eq_rexp e1b e2b
  | Ruext (w1, e1, n1), Ruext (w2, e2, n2)
    | Rsext (w1, e1, n1), Rsext (w2, e2, n2) -> w1 = w2 && eq_rexp e1 e2 && n1 = n2
  | _, _ -> false

let rec vars_rexp e =
  match e with
  | Rvar x -> VS.singleton x
  | Rconst _ -> VS.empty
  | Runop (_, _, e) -> vars_rexp e
  | Rbinop (_, _, e1, e2) -> VS.union (vars_rexp e1) (vars_rexp e2)
  | Ruext (_, e, _)
  | Rsext (_, e, _) -> vars_rexp e

let rec subst_rvar pats v =
  match pats with
  | [] -> Rvar v
  | (x, r)::_tl when v = x -> r
  | _::tl -> subst_rvar tl v

let rec subst_rexp pats e =
  match e with
  | Rvar v -> subst_rvar pats v
  | Rconst (_w, _n) -> e
  | Runop (w, op, e) -> Runop (w, op, subst_rexp pats e)
  | Rbinop (w, op, e1, e2) -> Rbinop (w, op, subst_rexp pats e1, subst_rexp pats e2)
  | Ruext (w, e, i) -> Ruext (w, subst_rexp pats e, i)
  | Rsext (w, e, i) -> Rsext (w, subst_rexp pats e, i)



(** Algebraic Predicates *)

type ebexp =
  | Etrue
  | Eeq of eexp * eexp
  | Eeqmod of eexp * eexp * eexp
  | Eand of ebexp * ebexp

let _eand e1 e2 =
  match e1, e2 with
  | Etrue, _ -> e2
  | _, Etrue -> e1
  | _, _ -> Eand (e1, e2)

let etrue = Etrue
let eeq e1 e2 = Eeq (e1, e2)
let eeqmod e1 e2 m = Eeqmod (e1, e2, m)
let eand b1 b2 = Eand (b1, b2)

(*let eands es = List.fold_left (fun res e -> eand e res) Etrue es*)
let eands es =
  match conj_assoc with
  | LeftAssoc -> List.fold_left (fun res e -> eand res e) Etrue es
  | RightAssoc -> List.fold_left (fun res e -> eand e res) Etrue es

let rec split_eand e =
  match e with
  | Eand (e1, e2) -> (split_eand e1)@(split_eand e2)
  | _ -> [e]

let rec string_of_ebexp ?typ:(typ=false) e =
  match e with
  | Etrue -> "true"
  | Eeq (e1, e2) -> string_of_eexp ~typ:typ e1 ^ " = " ^ string_of_eexp ~typ:typ e2
  | Eeqmod (e1, e2, m) -> string_of_eexp ~typ:typ e1 ^ " = " ^ string_of_eexp ~typ:typ e2 ^ " (mod " ^ string_of_eexp ~typ:typ m ^ ")"
  | Eand (e1, e2) ->
     let es = split_eand e in
     match es with
     | _::_::[] -> string_of_ebexp ~typ:typ e1 ^ " /\\ " ^ string_of_ebexp ~typ:typ e2
     | _ -> "and [" ^ String.concat ", " (List.map (fun e -> string_of_ebexp ~typ:typ e) es) ^ "]"

let rec eq_ebexp e1 e2 =
  match e1, e2 with
  | Etrue, Etrue -> true
  | Eeq (e1a, e1b), Eeq (e2a, e2b) -> eq_eexp e1a e2a && eq_eexp e1b e2b
  | Eeqmod (e1a, e1b, e1c), Eeqmod (e2a, e2b, e2c) -> eq_eexp e1a e2a && eq_eexp e1b e2b && eq_eexp e1c e2c
  | Eand (e1a, e1b), Eand (e2a, e2b) -> eq_ebexp e1a e2a && eq_ebexp e1b e2b
  | _, _ -> false

let rec vars_ebexp e =
  match e with
  | Etrue -> VS.empty
  | Eeq (e1, e2) -> VS.union (vars_eexp e1) (vars_eexp e2)
  | Eeqmod (e1, e2, p) -> VS.union (vars_eexp e1) (VS.union (vars_eexp e2) (vars_eexp p))
  | Eand (e1, e2) -> VS.union (vars_ebexp e1) (vars_ebexp e2)

let rec subst_ebexp pats e =
  match e with
  | Etrue -> e
  | Eeq (e1, e2) -> Eeq (subst_eexp pats e1, subst_eexp pats e2)
  | Eeqmod (e1, e2, m) -> Eeqmod (subst_eexp pats e1, subst_eexp pats e2, subst_eexp pats m)
  | Eand (e1, e2) -> Eand (subst_ebexp pats e1, subst_ebexp pats e2)

let rec simplify_ebexp e =
  match e with
  | Eeq (e1, e2) -> Eeq (simplify_eexp e1, simplify_eexp e2)
  | Eeqmod (e1, e2, m) -> Eeqmod (simplify_eexp e1, simplify_eexp e2, simplify_eexp m)
  | Eand (e, Etrue) | Eand (Etrue, e) -> simplify_ebexp e
  | _ -> e



(** Range Predicates *)

type rbexp =
  | Rtrue
  | Req of size * rexp * rexp
  | Rcmp of size * rcmpop * rexp * rexp
  | Rneg of rbexp
  | Rand of rbexp * rbexp
  | Ror of rbexp * rbexp

let rtrue = Rtrue
let rfalse = Rneg Rtrue
let req w e1 e2 = Req (w, e1, e2)
let rult w e1 e2 = Rcmp (w, Rult, e1, e2)
let rule w e1 e2 = Rcmp (w, Rule, e1, e2)
let rugt w e1 e2 = Rcmp (w, Rugt, e1, e2)
let ruge w e1 e2 = Rcmp (w, Ruge, e1, e2)
let rslt w e1 e2 = Rcmp (w, Rslt, e1, e2)
let rsle w e1 e2 = Rcmp (w, Rsle, e1, e2)
let rsgt w e1 e2 = Rcmp (w, Rsgt, e1, e2)
let rsge w e1 e2 = Rcmp (w, Rsge, e1, e2)
let reqmod w e1 e2 m = req w (rsrem w (rsub w e1 e2) m) (rconst w Z.zero)

let rneg e =
  match e with
  | Rneg e' -> e'
  | _ -> Rneg e
let rand e1 e2 =
  match e1, e2 with
  | Rtrue, e
  | e, Rtrue -> e
  | Rneg Rtrue, _
  | _, Rneg Rtrue -> Rneg Rtrue
  | _, _ -> Rand (e1, e2)
let ror e1 e2 =
  match e1, e2 with
  | Rtrue, _
  | _, Rtrue -> Rtrue
  | Rneg Rtrue, e
  | e, Rneg Rtrue -> e
  | _, _ -> Ror (e1, e2)

(*
let rands es = List.fold_left (fun res e -> rand e res) Rtrue es
let rors es = List.fold_left (fun res e -> ror e res) (Rneg Rtrue) es
*)
let rands es =
  match conj_assoc with
  | LeftAssoc -> List.fold_left (fun res e -> rand res e) Rtrue es
  | RightAssoc -> List.fold_left (fun res e -> rand e res) Rtrue es
let rors es =
  match disj_assoc with
  | LeftAssoc -> List.fold_left (fun res e -> ror res e) (Rneg Rtrue) es
  | RightAssoc -> List.fold_left (fun res e -> ror e res) (Rneg Rtrue) es

let rec split_rand e =
  match e with
  | Rand (e1, e2) -> (split_rand e1)@(split_rand e2)
  | _ -> [e]

let rec split_ror e =
  match e with
  | Ror (e1, e2) -> (split_ror e1)@(split_ror e2)
  | _ -> [e]

let _rbexp_is_rand e =
  match e with
  | Rand _ -> true
  | _ -> false

let rbexp_is_ror e =
  match e with
  | Rand _ -> true
  | _ -> false

let rec string_of_rbexp ?typ:(typ=false) e =
  match e with
  | Rtrue -> "true"
  | Req (_w, e1, e2) -> string_of_rexp ~typ:typ e1 ^ " = " ^ string_of_rexp ~typ:typ e2
  | Rcmp (_w, op, e1, e2) -> string_of_rexp ~typ:typ e1 ^ " " ^ symbol_of_rcmpop op ^ " " ^ string_of_rexp ~typ:typ e2
  | Rneg e -> "~ (" ^ string_of_rbexp ~typ:typ e ^ ")"
  | Rand (e1, e2) ->
     let es = split_rand e in
     (match es with
      | _::_::[] -> (if rbexp_is_ror e1 then "(" ^ string_of_rbexp ~typ:typ e1 ^ ")" else string_of_rbexp ~typ:typ e1)
                    ^ " /\\ "
                    ^ (if rbexp_is_ror e2 then "(" ^ string_of_rbexp ~typ:typ e2 ^ ")" else string_of_rbexp ~typ:typ e2)
      | _ -> "and [" ^ String.concat ", " (List.map (fun e -> string_of_rbexp ~typ:typ e) es) ^ "]")
  | Ror (e1, e2) ->
     let es = split_ror e in
     match es with
     | _::_::[] -> string_of_rbexp ~typ:typ e1 ^ " \\/ " ^ string_of_rbexp ~typ:typ e2 ^ ")"
     | _ -> "or [" ^ String.concat ", " (List.map (fun e -> string_of_rbexp ~typ:typ e) es) ^ "]"

let rec eq_rbexp e1 e2 =
  match e1, e2 with
  | Rtrue, Rtrue -> true
  | Req (w1, e1a, e1b), Req (w2, e2a, e2b) -> w1 = w2 && eq_rexp e1a e2a && eq_rexp e1b e2b
  | Rcmp (w1, op1, e1a, e1b), Rcmp (w2, op2, e2a, e2b) -> w1 = w2 && op1 = op2 && eq_rexp e1a e2a && eq_rexp e1b e2b
  | Rneg e1, Rneg e2 -> eq_rbexp e1 e2
  | Rand (e1a, e1b), Rand (e2a, e2b)
    | Ror (e1a, e1b), Ror (e2a, e2b) -> eq_rbexp e1a e2a && eq_rbexp e1b e2b
  | _, _ -> false

let rec vars_rbexp e =
  match e with
  | Rtrue -> VS.empty
  | Req (_, e1, e2) -> VS.union (vars_rexp e1) (vars_rexp e2)
  | Rcmp (_, _, e1, e2) -> VS.union (vars_rexp e1) (vars_rexp e2)
  | Rneg e -> vars_rbexp e
  | Rand (e1, e2)
  | Ror (e1, e2) -> VS.union (vars_rbexp e1) (vars_rbexp e2)

let rec subst_rbexp pats e =
  match e with
  | Rtrue -> e
  | Req (w, e1, e2) -> Req (w, subst_rexp pats e1, subst_rexp pats e2)
  | Rcmp (w, op, e1, e2) -> Rcmp (w, op, subst_rexp pats e1, subst_rexp pats e2)
  | Rneg e -> Rneg (subst_rbexp pats e)
  | Rand (e1, e2) -> Rand (subst_rbexp pats e1, subst_rbexp pats e2)
  | Ror (e1, e2) -> Ror (subst_rbexp pats e1, subst_rbexp pats e2)



(** Predicates *)

type bexp = ebexp * rbexp

let bexp_separator = "&&"

let btrue = (Etrue, Rtrue)

let eqn_bexp e = fst e
let rng_bexp e = snd e

let band e1 e2 =
  match e1, e2 with
  | (Etrue, Rtrue), (ee, re)
  | (ee, re), (Etrue, Rtrue) -> (ee, re)
  | (ee1, re1), (ee2, re2) -> (eand ee1 ee2, rand re1 re2)

(*let bvands es = List.fold_left (fun res e -> bvand e res) bvTrue es*)
let bands es =
  match conj_assoc with
  | LeftAssoc -> List.fold_left (fun res e -> band res e) btrue es
  | RightAssoc -> List.fold_left (fun res e -> band e res) btrue es
let bands2 es rs = (eands es, rands rs)

let string_of_bexp ?typ:(typ=false) e =
  match e with
  | (ee, re) -> string_of_ebexp ~typ:typ ee ^ " " ^ bexp_separator ^ " " ^ string_of_rbexp ~typ:typ re

let eq_bexp e1 e2 = eq_ebexp (eqn_bexp e1) (eqn_bexp e2) && eq_rbexp (rng_bexp e1) (rng_bexp e2)

let vars_bexp e =
  VS.union (vars_ebexp (eqn_bexp e)) (vars_rbexp (rng_bexp e))

let subst_bexp epats rpats e = (subst_ebexp epats (eqn_bexp e), subst_rbexp rpats (rng_bexp e))



(** Instructions *)

type prove_with_spec =
  | Precondition
  | AllCuts
  | AllAssumes
  | AllGhosts

type atomic =
  | Avar of var
  | Aconst of typ * Z.t

type instr =
  | Imov of var * atomic                          (* Imov (v, a): v = a *)
  | Ishl of var * atomic * Z.t                    (* Ishl (v, a, n): v = a * 2^n, overflow is forbidden *)
  | Icshl of var * var * atomic * atomic * Z.t    (* Icshl (vh, vl, a1, a2, n) *)
  | Inondet of var                                (* Inondet v: v = a nondeterministic value *)
  | Icmov of var * atomic * atomic * atomic       (* Icmov (v, c, a1, a2): if c then v = a1 else v = a2 *)
  | Inop                                          (* Inop: do nothing *)
  | Inot of var * atomic                          (* Inot (v, a): v = not(a), the one's complement of a *)
  | Iadd of var * atomic * atomic                 (* Iadd (v, a1, a2): v = a1 + a2, overflow is forbidden *)
  | Iadds of var * var * atomic * atomic          (* Iadds (c, v, a1, a2): v = a1 + a2, c = carry flag *)
  | Iaddr of var * var * atomic * atomic          (* Iaddr (c, v, a1, a2): v = a1 + a2, c = 0 *)
  | Iadc of var * atomic * atomic * atomic        (* Iadc (v, a1, a2, y): v = a1 + a2 + y, overflow is forbidden *)
  | Iadcs of var * var * atomic * atomic * atomic (* Iadcs (c, v, a1, a2, y): v = a1 + a2 + y, c = carry flag *)
  | Iadcr of var * var * atomic * atomic * atomic (* Iadcr (c, v, a1, a2, y): v = a1 + a2 + y, c = 0 *)
  | Isub of var * atomic * atomic                 (* Isub (v, a1, a2): v = a1 - a2, overflow is forbidden *)
  | Isubc of var * var * atomic * atomic          (* Isubc (c, v, a1, a2): v = a1 + not(a2) + 1, c = carry flag *)
  | Isubb of var * var * atomic * atomic          (* Isous (b, v, a1, a2): v = a1 - a2, b = borrow flag *)
  | Isubr of var * var * atomic * atomic          (* Isubr (c, v, a1, a2): v = a1 - a2, c = 0 *)
  | Isbc of var * atomic * atomic * atomic        (* Isbc (v, a1, a2, y): v = a1 + not(a2) + y *)
  | Isbcs of var * var * atomic * atomic * atomic (* Isbcs (c, v, a1, a2, y): v = a1 + not(a2) + y, c = carry flag *)
  | Isbcr of var * var * atomic * atomic * atomic (* Isbcr (c, v, a1, a2, y): v = a1 + not(a2) + y, c = 0 *)
  | Isbb of var * atomic * atomic * atomic        (* Isbb (v, a1, a2, y): v = a1 - a2 - y *)
  | Isbbs of var * var * atomic * atomic * atomic (* Isbbs (b, v, a1, a2, y): v = a1 - a2 - y, b = borrow flag *)
  | Isbbr of var * var * atomic * atomic * atomic (* Isbbr (b, v, a1, a2, y): v = a1 - a2 - y, b = 0 *)
  | Imul of var * atomic * atomic                 (* Imul (v, a1, a2): v = a1 * a2, overflow is forbidden *)
  | Imuls of var * var * atomic * atomic
  | Imulr of var * var * atomic * atomic
  | Imull of var * var * atomic * atomic          (* Imull (vh, vl, a1, a2): vh and vl are respectively the high part and
                                                     the low part of the full multiplication a1 * a2, *)
  | Imulj of var * atomic * atomic                (* Iumulj (v, a1, a2): v = the full multiplication of a1 * a2, which is equivalent
                                                     to Iumull (vh, vl, a1, a2); Join (r, vh, vl) *)
  | Isplit of var * var * atomic * Z.t            (* Isplit (vh, vl, a, n): vh is the high (w - n) bits (signed extended to w bits) of a
                                                     and vl is the low n bits (zero extended to w bits) of a
                                                     where w is the bit-width of a *)
  (* Instructions that cannot be translated to polynomials *)
  | Iand of var * atomic * atomic                 (* Iand (v, a1, a2): v = the bitwise AND of a1 and a2 *)
  | Ior of var * atomic * atomic                  (* Ior (v, a1, a2): v = the bitwise OR of a1 and a2 *)
  | Ixor of var * atomic * atomic                 (* Ixor (v, a1, a2): v = the bitwise XOR of a1 and a2 *)
  (* Type conversions *)
  | Icast of var * atomic                         (* Icast (v, a): v = the value of a represented by the type of v *)
  | Ivpc of var * atomic                          (* Ivpc (v, a): v = a, value preserved casting *)
  | Ijoin of var * atomic * atomic                (* Ijoin (v, ah, al): v = ah * 2^w + al where w is the bit-width of al *)
  (* Specifications *)
  | Iassert of bexp
  | Iassume of bexp
  | Iecut of ebexp * prove_with_spec list
  | Ircut of rbexp * prove_with_spec list
  | Ighost of VS.t * bexp

type program = instr list

let mkatomic_var v = Avar v
let mkatomic_const ty n = Aconst (ty, n)

let typ_of_atomic a =
  match a with
  | Avar v -> v.vtyp
  | Aconst (ty, _) -> ty

let size_of_atomic a = size_of_typ (typ_of_atomic a)

let atomic_is_var a =
  match a with
  | Avar _ -> true
  | _ -> false

let var_of_atomic a =
  let _ = assert (atomic_is_var a) in
  match a with
  | Avar v -> v
  | _ -> assert false

let atomic_is_const a =
  match a with
  | Aconst _ -> true
  | _ -> false

let const_of_atomic a =
  let _ = assert (atomic_is_const a) in
  match a with
  | Aconst (_, n) -> n
  | _ -> assert false

let atomic_is_signed a = typ_is_signed (typ_of_atomic a)

let string_of_prove_with_spec ps =
  match ps with
    Precondition -> "precondition"
  | AllCuts -> "all cuts"
  | AllAssumes -> "all assumes"
  | AllGhosts -> "all ghosts"

let string_of_prove_with_specs pss =
  String.concat ", " (List.map string_of_prove_with_spec pss)

let string_of_atomic ?typ:(typ=false) a =
  match a with
  | Avar v -> string_of_var ~typ:typ v
  | Aconst (ty, n) ->
     if Z.lt n Z.zero then "(" ^ Z.to_string n ^ ")" ^ typ_delim ^ string_of_typ ty
     else Z.to_string n ^ typ_delim ^ string_of_typ ty

let string_of_instr ?typ:(typ=false) i =
  let vstr v = string_of_var ~typ:typ v in
  let astr a = string_of_atomic ~typ:typ a in
  match i with
  | Imov (v, a) -> "mov " ^ vstr v ^ " " ^ astr a
  | Ishl (v, a, n) -> "shl " ^ vstr v ^ " " ^ astr a ^ " " ^ Z.to_string n
  | Icshl (vh, vl, a1, a2, n) -> "cshl " ^ vstr vh ^ " " ^ vstr vl ^ " " ^ astr a1 ^ " " ^ astr a2 ^ " " ^ Z.to_string n
  | Inondet v -> "nondet " ^ string_of_var ~typ:true v
  | Icmov (v, c, a1, a2) -> "cmov " ^ vstr v ^ " " ^ astr c ^ " " ^ astr a1 ^ " " ^ astr a2
  | Inop -> "nop"
  | Iadd (v, a1, a2) -> "add " ^ vstr v ^ " " ^ astr a1 ^ " " ^ astr a2
  | Iadds (c, v, a1, a2) -> "adds " ^ vstr c ^ " " ^ vstr v ^ " " ^ astr a1 ^ " " ^ astr a2
  | Iaddr (c, v, a1, a2) -> "addr " ^ vstr c ^ " " ^ vstr v ^ " " ^ astr a1 ^ " " ^ astr a2
  | Iadc (v, a1, a2, y) -> "adc " ^ vstr v ^ " " ^ astr a1 ^ " " ^ astr a2 ^ " " ^ astr y
  | Iadcs (c, v, a1, a2, y) -> "adcs " ^ vstr c ^ " " ^ vstr v ^ " " ^ astr a1 ^ " " ^ astr a2 ^ " " ^ astr y
  | Iadcr (c, v, a1, a2, y) -> "adcr " ^ vstr c ^ " " ^ vstr v ^ " " ^ astr a1 ^ " " ^ astr a2 ^ " " ^ astr y
  | Isub (v, a1, a2) -> "sub " ^ vstr v ^ " " ^ astr a1 ^ " " ^ astr a2
  | Isubc (c, v, a1, a2) -> "subc " ^ vstr c ^ " " ^ vstr v ^ " " ^ astr a1 ^ " " ^ astr a2
  | Isubb (c, v, a1, a2) -> "subb " ^ vstr c ^ " " ^ vstr v ^ " " ^ astr a1 ^ " " ^ astr a2
  | Isubr (c, v, a1, a2) -> "subr " ^ vstr c ^ " " ^ vstr v ^ " " ^ astr a1 ^ " " ^ astr a2
  | Isbc (v, a1, a2, y) -> "sbc " ^ vstr v ^ " " ^ astr a1 ^ " " ^ astr a2 ^ " " ^ astr y
  | Isbcs (c, v, a1, a2, y) -> "sbcs " ^ vstr c ^ " " ^ vstr v ^ " " ^ astr a1 ^ " " ^ astr a2 ^ " " ^ astr y
  | Isbcr (c, v, a1, a2, y) -> "sbcr " ^ vstr c ^ " " ^ vstr v ^ " " ^ astr a1 ^ " " ^ astr a2 ^ " " ^ astr y
  | Isbb (v, a1, a2, y) -> "sbb " ^ vstr v ^ " " ^ astr a1 ^ " " ^ astr a2 ^ " " ^ astr y
  | Isbbs (c, v, a1, a2, y) -> "sbbs " ^ vstr c ^ " " ^ vstr v ^ " " ^ astr a1 ^ " " ^ astr a2 ^ " " ^ astr y
  | Isbbr (c, v, a1, a2, y) -> "sbbr " ^ vstr c ^ " " ^ vstr v ^ " " ^ astr a1 ^ " " ^ astr a2 ^ " " ^ astr y
  | Imul (v, a1, a2) -> "mul " ^ vstr v ^ " " ^ astr a1 ^ " " ^ astr a2
  | Imuls (c, v, a1, a2) -> "muls " ^ vstr c ^ " " ^ vstr v ^ " " ^ astr a1 ^ " " ^ astr a2
  | Imulr (c, v, a1, a2) -> "mulr " ^ vstr c ^ " " ^ vstr v ^ " " ^ astr a1 ^ " " ^ astr a2
  | Imull (vh, vl, a1, a2) -> "mull " ^ vstr vh ^ " " ^ vstr vl ^ " " ^ astr a1 ^ " " ^ astr a2
  | Imulj (v, a1, a2) -> "mulj " ^ vstr v ^ " " ^ astr a1 ^ " " ^ astr a2
  | Isplit (vh, vl, a, n) -> "split " ^ vstr vh ^ " " ^ vstr vl ^ " " ^ astr a ^ " " ^ Z.to_string n
  (* Instructions that cannot be translated to polynomials *)
  | Iand (v, a1, a2) -> "and " ^ string_of_var ~typ:true v ^ " " ^ astr a1 ^ " " ^ astr a2
  | Ior (v, a1, a2) -> "or " ^ string_of_var ~typ:true v ^ " " ^ astr a1 ^ " " ^ astr a2
  | Ixor (v, a1, a2) -> "xor " ^ string_of_var ~typ:true v ^ " " ^ astr a1 ^ " " ^ astr a2
  | Inot (v, a) -> "not " ^ string_of_var ~typ:true v ^ " " ^ astr a
  (* Type conversions *)
  | Icast (v, a) -> "cast " ^ string_of_var ~typ:true v ^ " " ^ astr a
  | Ivpc (v, a) -> "vpc " ^ string_of_var ~typ:true v ^ " " ^ astr a
  | Ijoin (v, ah, al) -> "join " ^ vstr v ^ " " ^ astr ah ^ " " ^ astr al
  (* Specifications *)
  | Iassert e -> "assert " ^ string_of_bexp ~typ:typ e
  | Iassume e -> "assume " ^ string_of_bexp ~typ:typ e
  | Iecut (e, pwss) -> "ecut " ^ string_of_ebexp ~typ:typ e ^ (if pwss = [] then "" else (" prove with " ^ string_of_prove_with_specs pwss))
  | Ircut (e, pwss) -> "rcut " ^ string_of_rbexp ~typ:typ e ^ (if pwss = [] then "" else (" prove with " ^ string_of_prove_with_specs pwss))
  | Ighost (vs, e) -> "ghost " ^ String.concat ", " (List.map (fun v -> string_of_var ~typ:true v) (VS.elements vs)) ^ ": " ^ string_of_bexp ~typ:typ e

let string_of_instr ?typ:(typ=false) i = string_of_instr ~typ:typ i ^ ";"

let string_of_program ?typ:(typ=false) p = String.concat "\n" (List.map (fun i -> string_of_instr ~typ:typ i) p)

let eq_atomic a1 a2 =
  match a1, a2 with
  | Avar v1, Avar v2 -> eq_var v1 v2
  | Aconst (ty1, n1), Aconst (ty2, n2) -> ty1 = ty2 && Z.equal n1 n2
  | _, _ -> false

let vars_atomic a =
  match a with
  | Avar v -> VS.singleton v
  | _ -> VS.empty

let vars_instr i =
  match i with
  | Imov (v, a)
    | Ishl (v, a, _) -> VS.add v (vars_atomic a)
  | Iadd (v, a1, a2)
    | Isub (v, a1, a2)
    | Imul (v, a1, a2)
    | Imulj (v, a1, a2) -> VS.add v (VS.union (vars_atomic a1) (vars_atomic a2))
    | Iadc (v, a1, a2, c)
    | Isbc (v, a1, a2, c)
    | Isbb (v, a1, a2, c) -> VS.add v (VS.union (VS.union (vars_atomic a1) (vars_atomic a2)) (vars_atomic c))
    | Iadds (c, v, a1, a2)
    | Iaddr (c, v, a1, a2)
    | Isubc (c, v, a1, a2)
    | Isubb (c, v, a1, a2)
    | Isubr (c, v, a1, a2)
    | Imuls (c, v, a1, a2)
    | Imulr (c, v, a1, a2) ->
     VS.add c (VS.add v (VS.union (vars_atomic a1) (vars_atomic a2)))
  | Iadcs (c, v, a1, a2, y)
    | Iadcr (c, v, a1, a2, y)
    | Isbcr (c, v, a1, a2, y)
    | Isbcs (c, v, a1, a2, y)
    | Isbbr (c, v, a1, a2, y)
    | Isbbs (c, v, a1, a2, y) ->
     VS.add c (VS.add v (VS.union (VS.union (vars_atomic a1) (vars_atomic a2)) (vars_atomic y)))
  | Isplit (vh, vl, a, _) -> VS.add vh (VS.add vl (vars_atomic a))
  | Imull (vh, vl, a1, a2)
    | Icshl (vh, vl, a1, a2, _) ->
     VS.add vh (VS.add vl (VS.union (vars_atomic a1) (vars_atomic a2)))
  | Inondet v -> VS.singleton v
  | Icmov (v, c, a1, a2) -> VS.add v (VS.union (vars_atomic c) (VS.union (vars_atomic a1) (vars_atomic a2)))
  | Inop -> VS.empty
  | Iand (v, a1, a2)
    | Ior (v, a1, a2)
    | Ixor (v, a1, a2) ->  VS.add v (VS.union (vars_atomic a1) (vars_atomic a2))
  | Inot (v, a) -> VS.add v (vars_atomic a)
  | Icast (v, a) -> VS.add v (vars_atomic a)
  | Ivpc (v, a) -> VS.add v (vars_atomic a)
  | Ijoin (v, ah, al) -> VS.add v (VS.union (vars_atomic ah) (vars_atomic al))
  | Iassert e
  | Iassume e -> vars_bexp e
  | Iecut (e, _) -> vars_ebexp e
  | Ircut (e, _) -> vars_rbexp e
  | Ighost (vs, e) -> VS.union vs (vars_bexp e)

let vars_program p = List.fold_left (fun res i -> VS.union (vars_instr i) res) VS.empty p

let lvs_instr i =
  match i with
  | Imov (v, _) -> VS.singleton v
  | Iadd (v, _, _) -> VS.singleton v
  | Iadds (c, v, _, _) -> VS.add c (VS.singleton v)
  | Iaddr (c, v, _, _) -> VS.add c (VS.singleton v)
  | Iadc (v, _, _, _) -> VS.singleton v
  | Iadcs (c, v, _, _, _) -> VS.add c (VS.singleton v)
  | Iadcr (c, v, _, _, _) -> VS.add c (VS.singleton v)
  | Isub (v, _, _) -> VS.singleton v
  | Isubc (c, v, _, _) -> VS.add c (VS.singleton v)
  | Isubb (c, v, _, _) -> VS.add c (VS.singleton v)
  | Isubr (c, v, _, _) -> VS.add c (VS.singleton v)
  | Isbc (v, _, _, _) -> VS.singleton v
  | Isbcs (c, v, _, _, _) -> VS.add c (VS.singleton v)
  | Isbcr (c, v, _, _, _) -> VS.add c (VS.singleton v)
  | Isbb (v, _, _, _) -> VS.singleton v
  | Isbbs (c, v, _, _, _) -> VS.add c (VS.singleton v)
  | Isbbr (c, v, _, _, _) -> VS.add c (VS.singleton v)
  | Imul (v, _, _) -> VS.singleton v
  | Imuls (c, v, _, _) -> VS.add c (VS.singleton v)
  | Imulr (c, v, _, _) -> VS.add c (VS.singleton v)
  | Imull (vh, vl, _, _) -> VS.add vh (VS.singleton vl)
  | Imulj (v, _, _) -> VS.singleton v
  | Ishl (v, _, _) -> VS.singleton v
  | Isplit (vh, vl, _, _) -> VS.add vh (VS.singleton vl)
  | Icshl (vh, vl, _, _, _) -> VS.add vh (VS.singleton vl)
  | Inondet v -> VS.singleton v
  | Icmov (v, _, _, _) -> VS.singleton v
  | Inop -> VS.empty
  | Iand (v, _, _)
    | Ior (v, _, _)
    | Ixor (v, _, _)
    | Inot (v, _) -> VS.singleton v
  | Icast (v, _) -> VS.singleton v
  | Ivpc (v, _) -> VS.singleton v
  | Ijoin (v, _, _) -> VS.singleton v
  | Iassert _
  | Iassume _
  | Iecut _
  | Ircut _
  | Ighost _ -> VS.empty

let lvs_program p = List.fold_left (fun res i -> VS.union (lvs_instr i) res) VS.empty p

let rvs_instr i =
  match i with
  | Imov (_, a) -> vars_atomic a
  | Iadd (_, a1, a2) -> VS.union (vars_atomic a1) (vars_atomic a2)
  | Iadds (_, _, a1, a2) -> VS.union (vars_atomic a1) (vars_atomic a2)
  | Iaddr (_, _, a1, a2) -> VS.union (vars_atomic a1) (vars_atomic a2)
  | Iadc (_, a1, a2, c) -> VS.union (VS.union (vars_atomic a1) (vars_atomic a2)) (vars_atomic c)
  | Iadcs (_, _, a1, a2, c) -> VS.union (VS.union (vars_atomic a1) (vars_atomic a2)) (vars_atomic c)
  | Iadcr (_, _, a1, a2, c) -> VS.union (VS.union (vars_atomic a1) (vars_atomic a2)) (vars_atomic c)
  | Isub (_, a1, a2) -> VS.union (vars_atomic a1) (vars_atomic a2)
  | Isubc (_, _, a1, a2) -> VS.union (vars_atomic a1) (vars_atomic a2)
  | Isubb (_, _, a1, a2) -> VS.union (vars_atomic a1) (vars_atomic a2)
  | Isubr (_, _, a1, a2) -> VS.union (vars_atomic a1) (vars_atomic a2)
  | Isbc (_, a1, a2, c) -> VS.union (VS.union (vars_atomic a1) (vars_atomic a2)) (vars_atomic c)
  | Isbcs (_, _, a1, a2, c) -> VS.union (VS.union (vars_atomic a1) (vars_atomic a2)) (vars_atomic c)
  | Isbcr (_, _, a1, a2, c) -> VS.union (VS.union (vars_atomic a1) (vars_atomic a2)) (vars_atomic c)
  | Isbb (_, a1, a2, c) -> VS.union (VS.union (vars_atomic a1) (vars_atomic a2)) (vars_atomic c)
  | Isbbs (_, _, a1, a2, c) -> VS.union (VS.union (vars_atomic a1) (vars_atomic a2)) (vars_atomic c)
  | Isbbr (_, _, a1, a2, c) -> VS.union (VS.union (vars_atomic a1) (vars_atomic a2)) (vars_atomic c)
  | Imul (_, a1, a2) -> VS.union (vars_atomic a1) (vars_atomic a2)
  | Imuls (_, _, a1, a2) -> VS.union (vars_atomic a1) (vars_atomic a2)
  | Imulr (_, _, a1, a2) -> VS.union (vars_atomic a1) (vars_atomic a2)
  | Imull (_, _, a1, a2) -> VS.union (vars_atomic a1) (vars_atomic a2)
  | Imulj (_, a1, a2) -> VS.union (vars_atomic a1) (vars_atomic a2)
  | Ishl (_, a, _) -> vars_atomic a
  | Isplit (_, _, a, _) -> vars_atomic a
  | Icshl (_, _, a1, a2, _) ->
     VS.union (vars_atomic a1) (vars_atomic a2)
  | Inondet _ -> VS.empty
  | Icmov (_, c, a1, a2) -> VS.union (vars_atomic c) (VS.union (vars_atomic a1) (vars_atomic a2))
  | Inop -> VS.empty
  | Iand (_, a1, a2)
    | Ior (_, a1, a2)
    | Ixor (_, a1, a2) ->  VS.union (vars_atomic a1) (vars_atomic a2)
  | Inot (_, a) -> vars_atomic a
  | Icast (_, a) -> vars_atomic a
  | Ivpc (_, a) -> vars_atomic a
  | Ijoin (_, ah, al) -> VS.union (vars_atomic ah) (vars_atomic al)
  | Iassert e
  | Iassume e -> vars_bexp e
  | Iecut (e, _) -> vars_ebexp e
  | Ircut (e, _) -> vars_rbexp e
  | Ighost (_, e) -> vars_bexp e

let rvs_program p = List.fold_left (fun res i -> VS.union (rvs_instr i) res) VS.empty p

let gvs_instr i =
  match i with
  | Ighost (vs, _) -> vs
  | _ -> VS.empty

let _gvs_program p = List.fold_left (fun res i -> VS.union (gvs_instr i) res) VS.empty p

(* Assigned carry variables. Bit variables are considered carry variables. *)
let lcarries_instr i =
  match i with
  | Imov (v, _) -> if var_is_bit v then VS.singleton v else VS.empty
  | Iadd (v, _, _) -> if var_is_bit v then VS.singleton v else VS.empty
  | Iadds (c, v, _, _) -> if var_is_bit v then VS.of_list [c; v] else VS.singleton c
  | Iaddr (c, v, _, _) -> if var_is_bit v then VS.of_list [c; v] else VS.singleton c
  | Iadc (v, _, _, _) -> if var_is_bit v then VS.singleton v else VS.empty
  | Iadcs (c, v, _, _, _) -> if var_is_bit v then VS.of_list [c; v] else VS.singleton c
  | Iadcr (c, v, _, _, _) -> if var_is_bit v then VS.of_list [c; v] else VS.singleton c
  | Isub (v, _, _) -> if var_is_bit v then VS.singleton v else VS.empty
  | Isubc (c, v, _, _) -> if var_is_bit v then VS.of_list [c; v] else VS.singleton c
  | Isubb (c, v, _, _) -> if var_is_bit v then VS.of_list [c; v] else VS.singleton c
  | Isubr (c, v, _, _) -> if var_is_bit v then VS.of_list [c; v] else VS.singleton c
  | Isbc (v, _, _, _) -> if var_is_bit v then VS.singleton v else VS.empty
  | Isbcs (c, v, _, _, _) -> if var_is_bit v then VS.of_list [c; v] else VS.singleton c
  | Isbcr (c, v, _, _, _) -> if var_is_bit v then VS.of_list [c; v] else VS.singleton c
  | Isbb (v, _, _, _) -> if var_is_bit v then VS.singleton v else VS.empty
  | Isbbs (c, v, _, _, _) -> if var_is_bit v then VS.of_list [c; v] else VS.singleton c
  | Isbbr (c, v, _, _, _) -> if var_is_bit v then VS.of_list [c; v] else VS.singleton c
  | Imul (v, _, _) -> if var_is_bit v then VS.singleton v else VS.empty
  | Imuls (c, v, _, _) -> if var_is_bit v then VS.of_list [c; v] else VS.singleton c
  | Imulr (c, v, _, _) -> if var_is_bit v then VS.of_list [c; v] else VS.singleton c
  | Imull _
  | Imulj _
  | Ishl _
  | Isplit _
  | Icshl _ -> VS.empty
  | Inondet v -> if var_is_bit v then VS.singleton v else VS.empty
  | Icmov (v, _, _, _) -> if var_is_bit v then VS.singleton v else VS.empty
  | Inop -> VS.empty
  | Iand (v, _, _) -> if var_is_bit v then VS.singleton v else VS.empty
  | Ior (v, _, _) -> if var_is_bit v then VS.singleton v else VS.empty
  | Ixor (v, _, _) -> if var_is_bit v then VS.singleton v else VS.empty
  | Inot (v, _) -> if var_is_bit v then VS.singleton v else VS.empty
  | Icast (v, _) -> if var_is_bit v then VS.singleton v else VS.empty
  | Ivpc (v, _) -> if var_is_bit v then VS.singleton v else VS.empty
  | Ijoin _
  | Iassert _
  | Iassume _
  | Iecut _
  | Ircut _
  | Ighost _ -> VS.empty

let lcarries_program p = List.fold_left (fun res i -> VS.union (lcarries_instr i) res) VS.empty p

module StringElem : OrderedType with type t = string =
  struct
    type t = string
    let compare = Pervasives.compare
  end
module SS = Set.Make(StringElem)
module SM = Map.Make(StringElem)

(* Generate a new name. *)
let new_name ?prefix:prefix names =
  let prefix =
    (match prefix with
     | None -> "tmp"
     | Some name -> name) ^ string_of_int (Random.int 1000000000) in
  if SS.mem prefix names then
    let i = ref 0 in
    let name = ref (prefix ^ string_of_int !i) in
    let _ =
      while SS.mem !name names do
        i := !i + 1;
        name := prefix ^ string_of_int !i
      done in
    !name
  else prefix

let rec subst_lval pats lv =
  match pats with
  | [] -> lv
  | (x, r)::tl ->
     if eq_var lv x then
       match r with
       | Avar v -> v
       | Aconst (_ty, n) -> raise (Failure ("Failed to replace a variable " ^ string_of_var lv ^ " with a constant " ^ Z.to_string n ^ ": a variable is required."))
     else
       subst_lval tl lv

let rec subst_atomic pats a =
  match pats, a with
  | _, Aconst _ -> a
  | [], _ -> a
  | (x, r)::_tl, Avar v when eq_var v x -> r
  | _::tl, _ -> subst_atomic tl a

let rec pats_to_epats pats =
  match pats with
  | [] -> []
  | (x, r)::tl ->
     (x, match r with
         | Avar v -> Evar v
         | Aconst (_ty, n) -> Econst n)::(pats_to_epats tl)

let rec pats_to_rpats pats =
  match pats with
  | [] -> []
  | (x, r)::tl ->
     (x, match r with
         | Avar v -> Rvar v
         | Aconst (ty, n) -> Rconst (size_of_typ ty, n))::(pats_to_rpats tl)

let subst_instr pats i =
  match i with
  | Imov (v, a) -> Imov (subst_lval pats v, subst_atomic pats a)
  | Ishl (v, a, n) -> Ishl (subst_lval pats v, subst_atomic pats a, n)
  | Icshl (vh, vl, a1, a2, n) -> Icshl (subst_lval pats vh, subst_lval pats vl, subst_atomic pats a1, subst_atomic pats a2, n)
  | Inondet v -> Inondet (subst_lval pats v)
  | Icmov (v, c, a1, a2) -> Icmov (subst_lval pats v, subst_atomic pats c, subst_atomic pats a1, subst_atomic pats a2)
  | Inop -> Inop
  | Iadd (v, a1, a2) -> Iadd (subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2)
  | Iadds (c, v, a1, a2) -> Iadds (subst_lval pats c, subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2)
  | Iaddr (c, v, a1, a2) -> Iaddr (subst_lval pats c, subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2)
  | Iadc (v, a1, a2, y) -> Iadc (subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2, subst_atomic pats y)
  | Iadcs (c, v, a1, a2, y) -> Iadcs (subst_lval pats c, subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2, subst_atomic pats y)
  | Iadcr (c, v, a1, a2, y) -> Iadcr (subst_lval pats c, subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2, subst_atomic pats y)
  | Isub (v, a1, a2) -> Isub (subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2)
  | Isubc (c, v, a1, a2) -> Isubc (subst_lval pats c, subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2)
  | Isubb (c, v, a1, a2) -> Isubb (subst_lval pats c, subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2)
  | Isubr (c, v, a1, a2) -> Isubr (subst_lval pats c, subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2)
  | Isbc (v, a1, a2, y) -> Isbc (subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2, subst_atomic pats y)
  | Isbcs (c, v, a1, a2, y) -> Isbcs (subst_lval pats c, subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2, subst_atomic pats y)
  | Isbcr (c, v, a1, a2, y) -> Isbcr (subst_lval pats c, subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2, subst_atomic pats y)
  | Isbb (v, a1, a2, y) -> Isbb (subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2, subst_atomic pats y)
  | Isbbs (c, v, a1, a2, y) -> Isbbs (subst_lval pats c, subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2, subst_atomic pats y)
  | Isbbr (c, v, a1, a2, y) -> Isbbr (subst_lval pats c, subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2, subst_atomic pats y)
  | Imul (v, a1, a2) -> Imul (subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2)
  | Imuls (c, v, a1, a2) -> Imuls (subst_lval pats c, subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2)
  | Imulr (c, v, a1, a2) -> Imulr (subst_lval pats c, subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2)
  | Imull (vh, vl, a1, a2) -> Imull (subst_lval pats vh, subst_lval pats vl, subst_atomic pats a1, subst_atomic pats a2)
  | Imulj (v, a1, a2) -> Imulj (subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2)
  | Isplit (vh, vl, a, n) -> Isplit (subst_lval pats vh, subst_lval pats vl, subst_atomic pats a, n)
  | Iand (v, a1, a2) -> Iand (subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2)
  | Ior (v, a1, a2) -> Ior (subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2)
  | Ixor (v, a1, a2) -> Ixor (subst_lval pats v, subst_atomic pats a1, subst_atomic pats a2)
  | Inot (v, a) -> Inot (subst_lval pats v, subst_atomic pats a)
  | Icast (v, a) -> Icast (subst_lval pats v, subst_atomic pats a)
  | Ivpc (v, a) -> Ivpc (subst_lval pats v, subst_atomic pats a)
  | Ijoin (v, ah, al) -> Ijoin (subst_lval pats v, subst_atomic pats ah, subst_atomic pats al)
  | Iassert e -> Iassert (subst_bexp (pats_to_epats pats) (pats_to_rpats pats) e)
  | Iassume e -> Iassume (subst_bexp (pats_to_epats pats) (pats_to_rpats pats) e)
  | Iecut (e, pwss) -> Iecut (subst_ebexp (pats_to_epats pats) e, pwss)
  | Ircut (e, pwss) -> Ircut (subst_rbexp (pats_to_rpats pats) e, pwss)
  | Ighost (vs, e) -> Ighost (VS.of_list (List.map (subst_lval pats) (VS.elements vs)), subst_bexp (pats_to_epats pats) (pats_to_rpats pats) e)

let subst_program pats p = List.map (subst_instr pats) p

(* Find all required algebraic predicates in instrs according to pwss. *)
let eprove_with_filter pwss (pre, instrs) =
  let extract_ebexps instrs =
    let extractor i =
      match i with
        Iecut (e, _) -> [e]
      | Iassume e -> [eqn_bexp e]
      | Ighost (_, e) -> [eqn_bexp e]
      | _ -> [] in
    List.flatten (List.map extractor instrs) in
  let filter_of_pws pws =
    match pws with
      Precondition -> (fun _i -> false)
    | AllCuts -> (fun i -> match i with Iecut _ -> true | _ -> false)
    | AllAssumes -> (fun i -> match i with Iassume _ -> true | _ -> false)
    | AllGhosts -> (fun i -> match i with Ighost _ -> true | _ -> false) in
  let filter =
    let filters = List.map filter_of_pws pwss in
    fun i -> List.exists (fun f -> f i) filters in
  let ebexps = extract_ebexps (List.filter filter instrs) in
  if List.mem Precondition pwss then pre::ebexps
  else ebexps

(* Find all required range predicates in instrs according to pwss. *)
let rprove_with_filter pwss (pre, instrs) =
  let extract_rbexps instrs =
    let extractor i =
      match i with
        Ircut (e, _) -> [e]
      | Iassume e -> [rng_bexp e]
      | Ighost (_, e) -> [rng_bexp e]
      | _ -> [] in
    List.flatten (List.map extractor instrs) in
  let filter_of_pws pws =
    match pws with
      Precondition -> (fun _i -> false)
    | AllCuts -> (fun i -> match i with Ircut _ -> true | _ -> false)
    | AllAssumes -> (fun i -> match i with Iassume _ -> true | _ -> false)
    | AllGhosts -> (fun i -> match i with Ighost _ -> true | _ -> false) in
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

let string_of_spec ?typ:(typ=false) s =
  if s.sepwss = [] && s.srpwss = [] then
    "{ " ^ string_of_bexp ~typ:typ (s.spre) ^ " }\n"
    ^ string_of_program ~typ:typ (s.sprog) ^ "\n"
    ^ "{ " ^ string_of_bexp ~typ:typ (s.spost) ^ " }"
  else
    "{ " ^ string_of_bexp ~typ:typ (s.spre) ^ " }\n"
    ^ string_of_program ~typ:typ (s.sprog) ^ "\n"
    ^ "{ "
    ^ string_of_ebexp ~typ:typ (eqn_bexp s.spost)
    ^ (if s.sepwss = [] then "" else " prove with " ^ string_of_prove_with_specs s.sepwss)
    ^ " " ^ bexp_separator ^ " "
    ^ string_of_rbexp ~typ:typ (rng_bexp s.spost)
    ^ (if s.srpwss = [] then "" else " prove with " ^ string_of_prove_with_specs s.srpwss)
    ^ " }"

let string_of_espec ?typ:(typ=false) s =
  if s.espwss = [] then
    "{ " ^ string_of_ebexp ~typ:typ (s.espre) ^ " }\n"
    ^ string_of_program ~typ:typ (s.esprog) ^ "\n"
    ^ "{ " ^ string_of_ebexp ~typ:typ (s.espost) ^ " }"
  else
    "{ " ^ string_of_ebexp ~typ:typ (s.espre) ^ " }\n"
    ^ string_of_program ~typ:typ (s.esprog) ^ "\n"
    ^ "{ "
    ^ string_of_ebexp ~typ:typ (s.espost)
    ^ (if s.espwss = [] then "" else " prove with " ^ string_of_prove_with_specs s.espwss)
    ^ " }"

let string_of_rspec ?typ:(typ=false) s =
  if s.rspwss = [] then
    "{ " ^ string_of_rbexp ~typ:typ (s.rspre) ^ " }\n"
    ^ string_of_program ~typ:typ (s.rsprog) ^ "\n"
    ^ "{ " ^ string_of_rbexp ~typ:typ (s.rspost) ^ " }"
  else
    "{ " ^ string_of_rbexp ~typ:typ (s.rspre) ^ " }\n"
    ^ string_of_program ~typ:typ (s.rsprog) ^ "\n"
    ^ "{ "
    ^ string_of_rbexp ~typ:typ (s.rspost)
    ^ (if s.rspwss = [] then "" else " prove with " ^ string_of_prove_with_specs s.rspwss)
    ^ " }"



(** Well-formedness *)

let rec chain_reasons rs =
  match rs with
  | [] -> None
  | r::[] -> r
  | Some r::_tl -> Some r
  | _::tl -> chain_reasons tl

let rec apply_check_to_atomics f atomics =
  match atomics with
  | [] -> None
  | hd::tl ->
     (match f hd with
      | None -> apply_check_to_atomics f tl
      | Some r -> Some r)

let check_const_range ty n =
  let min = min_of_typ ty in
  let max = max_of_typ ty in
  if Z.lt n min then
    Some ("The constant " ^ Z.to_string n ^ " for type " ^ string_of_typ ty ^ " is smaller than the minimum value " ^ Z.to_string min ^ " allowed.")
  else if Z.gt n max then
    Some ("The constant " ^ Z.to_string n ^ " for type " ^ string_of_typ ty ^ " is larger than the maximum value " ^ Z.to_string max ^ " allowed.")
  else
    None

let check_typ_sign signed name ty =
  match ty with
  | Tuint _ -> if signed then Some (name ^ " should be signed but is unsigned") else None
  | Tsint _ -> if not signed then Some (name ^ " should be unsigned but is signed") else None
let check_var_sign signed v = check_typ_sign signed (string_of_var v) v.vtyp
let check_atomic_sign signed a = check_typ_sign signed (string_of_atomic a) (typ_of_atomic a)

let check_unsigned_var v  = check_var_sign false v
let check_signed_var v  = check_var_sign true v
let check_bit_var c =
  if var_is_bit c then None
  else Some (string_of_var c ^ " should be a bit")

let check_unsigned_atomic a = check_atomic_sign false a
let check_signed_atomic a = check_atomic_sign true a

let check_unsigned_atomics atomics = apply_check_to_atomics check_unsigned_atomic atomics
let check_signed_atomics atomics = apply_check_to_atomics check_signed_atomic atomics

let check_same_sign atomics =
  let rec helper (a, signed) atomics =
    match atomics with
    | [] -> None
    | hd::tl ->
       (match check_atomic_sign signed hd with
        | None -> helper (a, signed) tl
        | Some _ -> Some (string_of_atomic a ^ " and " ^ string_of_atomic hd ^ " should be both signed or both unsigned")) in
  match atomics with
  | [] -> None
  | hd::tl -> helper (hd, atomic_is_signed hd) tl

let check_same_size atomics =
  let rec helper (a, sa) atomics =
    match atomics with
    | [] -> None
    | hd::tl ->
       let shd = size_of_atomic hd in
       if sa = shd then helper (a, sa) tl
       else Some ("The bit-width of " ^ string_of_atomic a ^ " (" ^ string_of_int sa ^ ")"
                  ^ " and the bit-width of " ^ string_of_atomic hd ^ " (" ^ string_of_int shd ^ ") should be the same") in
  match atomics with
  | [] -> None
  | hd::tl -> helper (hd, size_of_atomic hd) tl

let rec check_same_typ atomics =
  match atomics with
  | [] -> None
  | _a::[] -> None
  | a1::a2::tl ->
     let t1 = typ_of_atomic a1 in
     let t2 = typ_of_atomic a2 in
     if t1 = t2 then check_same_typ (a1::tl)
     else Some ("The type (" ^ string_of_typ t1 ^ ") of " ^ string_of_atomic a1
                ^ " and the type (" ^ string_of_typ t2 ^ ") of " ^ string_of_atomic a2
                ^ " should be the same")

let check_unsigned_same_typ atomics = chain_reasons [check_unsigned_atomics atomics; check_same_typ atomics]
let check_signed_same_typ atomics = chain_reasons [check_signed_atomics atomics; check_same_typ atomics]

let check_diff_lvs v1 v2 =
  if eq_var v1 v2 then Some ("l-values should be different: " ^ string_of_var v1 ^ ", " ^ string_of_var v2)
  else None

let check_mull_lvs vh vl =
  match vh.vtyp, vl.vtyp with
  | Tuint wh, Tuint wl
    | Tsint wh, Tuint wl -> if wh = wl then None
                            else Some ("The bit-width (" ^ string_of_typ vh.vtyp ^ ") of " ^ string_of_var vh
                                       ^ " and the bit-width (" ^ string_of_typ vl.vtyp ^ ") of " ^ string_of_var vl
                                       ^ " should be the same")
  | _, Tsint _ -> Some ("The low part of a full multiplication is always unsigned")

let check_split_lvs vh vl =
  match vh.vtyp, vl.vtyp with
  | Tuint wh, Tuint wl
    | Tsint wh, Tuint wl -> if wh = wl then None
                            else Some ("The bit-width (" ^ string_of_typ vh.vtyp ^ ") of " ^ string_of_var vh
                                       ^ " and the bit-width (" ^ string_of_typ vl.vtyp ^ ") of " ^ string_of_var vl
                                       ^ " should be the same")
  | _, Tsint _ -> Some ("The low part of a split is always unsigned")

let check_mulj_size v a1 a2 =
  let sv = size_of_var v in
  let sa1 = size_of_atomic a1 in
  let sa2 = size_of_atomic a2 in
  if sv != sa1 + sa2 then
    Some ("The bit-width (" ^ string_of_int sv ^ ") of " ^ string_of_var v
          ^ " should be the sum of the bit-widths of " ^ string_of_atomic a1 ^ " (" ^ string_of_int sa1 ^ ")"
          ^ " and " ^ string_of_atomic a2 ^ " (" ^ string_of_int sa2 ^ ")")
  else
    None

let check_join_size v ah al =
  let sv = size_of_var v in
  let sh = size_of_atomic ah in
  let sl = size_of_atomic al in
  if sh != sl then
    Some ("The bit-width (" ^ string_of_int sh ^ ") of " ^ string_of_atomic ah
          ^ " and the bit-width (" ^ string_of_int sl ^  ") of " ^ string_of_atomic al
          ^ " should be the same")
  else if sv != sh + sl then
    Some ("The bit-width (" ^ string_of_int sv ^ ") of " ^ string_of_var v
          ^ " should be the sum of the bit-width (" ^ string_of_int sh ^ ") of " ^ string_of_atomic ah
          ^ " and the bit-width " ^ string_of_int sl ^ " of " ^ string_of_atomic al)
  else
    None

let illformed_instr_reason vs cs gs i =
  let _defined_var v =
    if not (VS.mem v vs) then Some ("Undefined variable: " ^ string_of_var v)
    else None in
  let defined_vars vars =
    if not (VS.subset vars vs) then Some ("Undefined variables: " ^ string_of_vs (VS.diff vars vs))
    else None in
  let defined_atomic a = defined_vars (vars_atomic a) in
  let defined_atomics atomics = apply_check_to_atomics defined_atomic atomics in
  let defined_carry a =
    match a with
    | Avar y ->
       if not (VS.mem y vs) then Some ("Undefined variable: " ^ string_of_var y)
       else if not (VS.mem y cs) then Some ("Not a carry variable: " ^ string_of_var y)
       else None
    | Aconst (ty, _n) ->
       if ty = bit_t then None
       else Some ("The type of a carry must be \"bit\"") in
  let defined_bexp e =
    if not (VS.subset (vars_bexp e) (VS.union vs gs)) then Some ("Undefined variables: " ^ string_of_vs (VS.diff (vars_bexp e) (VS.union vs gs)))
    else None in
  let defined_ebexp e =
    if not (VS.subset (vars_ebexp e) (VS.union vs gs)) then Some ("Undefined variables: " ^ string_of_vs (VS.diff (vars_ebexp e) (VS.union vs gs)))
    else None in
  let defined_rbexp e =
    if not (VS.subset (vars_rbexp e) (VS.union vs gs)) then Some ("Undefined variables: " ^ string_of_vs (VS.diff (vars_rbexp e) (VS.union vs gs)))
    else None in
  let defined_ghost gvs e =
    if not (vs_disjoint gvs gs) then Some ("Redefined ghost variables: " ^ string_of_vs (VS.inter gvs gs))
    else if not (VS.subset (vars_bexp e) (VS.union gvs (VS.union vs gs))) then Some ("Undefined variables: " ^ string_of_vs (VS.diff (vars_bexp e) (VS.union gvs (VS.union vs gs))))
    else None in
  let ghost_disjoint gvs =
    if not (vs_disjoint gvs vs) then Some ("Ghost variables cannot be program variables: " ^ string_of_vs (VS.inter gvs vs))
    else None in
  let const_in_range atomics =
    let in_range a =
      match a with
      | Aconst (ty, n) -> check_const_range ty n
      | _ -> None in
    apply_check_to_atomics in_range atomics in
  let reasons =
    match i with
    | Imov (v, a) -> [defined_atomic a; check_same_typ [Avar v; a]; const_in_range [a]]
    | Ishl (v, a, _) -> [defined_atomic a; check_same_typ [Avar v; a]; const_in_range [a]]
    | Iadd (v, a1, a2)
      | Isub (v, a1, a2)
      | Imul (v, a1, a2) ->
       [defined_atomics [a1; a2]; check_same_typ [Avar v; a1; a2]; const_in_range [a1; a2]]
    | Iadds (c, v, a1, a2)
      | Iaddr (c, v, a1, a2)
      | Isubc (c, v, a1, a2)
      | Isubb (c, v, a1, a2)
      | Isubr (c, v, a1, a2)
      | Imuls (c, v, a1, a2)
      | Imulr (c, v, a1, a2) ->
       [check_diff_lvs c v; defined_atomics [a1; a2]; check_bit_var c; check_same_typ [Avar v; a1; a2]; const_in_range [a1; a2]]
    | Iadc (v, a1, a2, y)
      | Isbc (v, a1, a2, y)
      | Isbb (v, a1, a2, y) ->
       [defined_atomics [a1; a2]; defined_carry y; check_same_typ [Avar v; a1; a2]; const_in_range [a1; a2; y]]
    | Iadcs (c, v, a1, a2, y)
      | Iadcr (c, v, a1, a2, y)
      | Isbcs (c, v, a1, a2, y)
      | Isbcr (c, v, a1, a2, y)
      | Isbbs (c, v, a1, a2, y)
      | Isbbr (c, v, a1, a2, y) ->
       [check_diff_lvs c v; defined_atomics [a1; a2]; defined_carry y; check_same_typ [Avar v; a1; a2]; check_bit_var c; const_in_range [a1; a2; y]]
    | Imull (vh, vl, a1, a2) ->
       [check_diff_lvs vh vl; check_mull_lvs vh vl; defined_atomics [a1; a2]; check_same_typ [Avar vh; a1; a2]; const_in_range [a1; a2]]
    | Imulj (v, a1, a2) ->
       [defined_atomics [a1; a2]; check_same_typ [a1; a2]; check_same_sign [Avar v; a1; a2]; check_mulj_size v a1 a2; const_in_range [a1; a2]]
    | Isplit (vh, vl, a, _) ->
       [check_diff_lvs vh vl; check_split_lvs vh vl; defined_atomic a; check_same_typ [Avar vh; a]; const_in_range [a]]
    | Icshl (vh, vl, a1, a2, _) ->
       [check_diff_lvs vh vl; defined_atomics [a1; a2]; check_same_size [a1; a2]; check_same_typ [Avar vh; a1]; check_unsigned_same_typ [Avar vl; a2]; const_in_range [a1; a2]]
    | Inondet _ -> []
    | Icmov (v, c, a1, a2) ->
       [defined_carry c; defined_atomics [a1; a2]; check_same_typ [Avar v; a1; a2]; const_in_range [a1; a2; c]]
    | Inop -> []
    | Iand (v, a1, a2)
      | Ior (v, a1, a2)
      | Ixor (v, a1, a2) ->
       [defined_atomics [a1; a2]; check_same_size [Avar v; a1; a2]; const_in_range [a1; a2]]
    | Inot (v, a) -> [defined_atomic a; check_same_size [Avar v; a]; const_in_range [a]]
    | Icast (_v, a) -> [defined_atomic a; const_in_range [a]]
    | Ivpc (_v, a) -> [defined_atomic a; const_in_range [a]]
    | Ijoin (v, ah, al) -> [defined_atomics [ah; al]; check_same_sign [Avar v; ah]; check_unsigned_atomic al; check_join_size v ah al]
    | Iassert e
      | Iassume e -> [defined_bexp e]
    | Iecut (e, _) -> [defined_ebexp e]
    | Ircut (e, _) -> [defined_rbexp e]
    | Ighost (gvs, e) -> [defined_ghost gvs e; ghost_disjoint gvs]
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
    if not (VS.mem v vs) then Some ("Undefined variable: " ^ string_of_var v)
    else None in
  let well_rexp e =
    if not (VS.subset (vars_rexp e) vs) then Some ("Undefined variables: " ^ string_of_vs (VS.diff (vars_rexp e) vs))
    else None in
  let well_size w e =
    if not (size_of_rexp e = w) then Some ("Unmatched bit-size: " ^ string_of_rexp e)
    else None in
  let helper e =
    match e with
    | Rvar v -> [well_var v]
    | Rconst (_w, _n) -> []
    | Runop (w, _op, e) -> [well_size w e; well_rexp e]
    | Rbinop (w, _op, e1, e2) -> [well_size w e1; well_size w e2; well_rexp e1; well_rexp e2]
    | Ruext (w, e, _i) | Rsext (w, e, _i) -> [well_size w e; well_rexp e]
  in
  chain_reasons (helper e)
let illformed_rbexp_reason vs e =
  let well_size w e =
    if not (size_of_rexp e = w) then Some ("Unmatched bit-width: " ^ string_of_rexp e)
    else None in
  let rec helper e =
    match e with
    | Rtrue -> []
    | Req (w, e1, e2)
      | Rcmp (w, _, e1, e2) -> [well_size w e1; well_size w e2; illformed_rexp_reason vs e1; illformed_rexp_reason vs e2]
    | Rneg e -> helper e
    | Rand (e1, e2)
      | Ror (e1, e2) -> helper e1 @ helper e2
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

let initial_sidx = 0
let first_assigned_sidx = 1

let get_sidx v m =
  try
    VM.find v m
  with Not_found ->
    initial_sidx

let upd_sidx v m =
  try
    VM.add v (VM.find v m + 1) m
  with Not_found ->
    VM.add v first_assigned_sidx m

let mksvar vn vt vi = { vname = vn; vtyp = vt; vsidx = vi }
let ssa_var m v = mksvar v.vname v.vtyp (get_sidx v m)

let ssa_atomic m a =
  match a with
  | Avar v -> Avar (ssa_var m v)
  | _ -> a

let rec ssa_eexp m e =
  match e with
  | Evar v -> Evar (ssa_var m v)
  | Econst c -> Econst c
  | Eunop (op, e) -> Eunop (op, ssa_eexp m e)
  | Ebinop (op, e1, e2) -> Ebinop (op, ssa_eexp m e1, ssa_eexp m e2)

let rec ssa_rexp m e =
  match e with
  | Rvar v -> Rvar (ssa_var m v)
  | Rconst (w, n) -> Rconst (w, n)
  | Runop (w, op, e) -> Runop (w, op, ssa_rexp m e)
  | Rbinop (w, op, e1, e2) -> Rbinop (w, op, ssa_rexp m e1, ssa_rexp m e2)
  | Ruext (w, e, i) -> Ruext (w, ssa_rexp m e, i)
  | Rsext (w, e, i) -> Rsext (w, ssa_rexp m e, i)

let rec ssa_ebexp m e =
  match e with
  | Etrue -> Etrue
  | Eeq (e1, e2) -> Eeq (ssa_eexp m e1, ssa_eexp m e2)
  | Eeqmod (e1, e2, p) -> Eeqmod (ssa_eexp m e1, ssa_eexp m e2, ssa_eexp m p)
  | Eand (e1, e2) -> Eand (ssa_ebexp m e1, ssa_ebexp m e2)

let rec ssa_rbexp m e =
  match e with
  | Rtrue -> Rtrue
  | Req (w, e1, e2) -> Req (w, ssa_rexp m e1, ssa_rexp m e2)
  | Rcmp (w, op, e1, e2) -> Rcmp (w, op, ssa_rexp m e1, ssa_rexp m e2)
  | Rneg e -> Rneg (ssa_rbexp m e)
  | Rand (e1, e2) -> Rand (ssa_rbexp m e1, ssa_rbexp m e2)
  | Ror (e1, e2) -> Ror (ssa_rbexp m e1, ssa_rbexp m e2)

let ssa_bexp m e = (ssa_ebexp m (eqn_bexp e), ssa_rbexp m (rng_bexp e))

let ssa_instr m i =
  match i with
  | Imov (v, a) ->
     let a = ssa_atomic m a in
     let m = upd_sidx v m in
     (m, Imov (ssa_var m v, a))
  | Ishl (v, a, n) ->
     let a = ssa_atomic m a in
     let m = upd_sidx v m in
     (m, Ishl (ssa_var m v, a, n))
  | Icshl (vh, vl, a1, a2, n) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let ml = upd_sidx vl m in
     let mh = upd_sidx vh ml in
     (mh, Icshl (ssa_var mh vh, ssa_var ml vl, a1, a2, n))
  | Inondet v ->
     let m = upd_sidx v m in
     (m, Inondet (ssa_var m v))
  | Icmov (v, c, a1, a2) ->
     let c = ssa_atomic m c in
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let m = upd_sidx v m in
     (m, Icmov (ssa_var m v, c, a1, a2))
  | Inop -> (m, Inop)
  | Iadd (v, a1, a2) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let m = upd_sidx v m in
     (m, Iadd (ssa_var m v, a1, a2))
  | Iadds (c, v, a1, a2) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let mv = upd_sidx v m in
     let mc = upd_sidx c mv in
     (mc, Iadds (ssa_var mc c, ssa_var mv v, a1, a2))
  | Iaddr (c, v, a1, a2) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let mv = upd_sidx v m in
     let mc = upd_sidx c mv in
     (mc, Iaddr (ssa_var mc c, ssa_var mv v, a1, a2))
  | Iadc (v, a1, a2, y) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let y = ssa_atomic m y in
     let m = upd_sidx v m in
     (m, Iadc (ssa_var m v, a1, a2, y))
  | Iadcs (c, v, a1, a2, y) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let y = ssa_atomic m y in
     let mv = upd_sidx v m in
     let mc = upd_sidx c mv in
     (mc, Iadcs (ssa_var mc c, ssa_var mv v, a1, a2, y))
  | Iadcr (c, v, a1, a2, y) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let y = ssa_atomic m y in
     let mv = upd_sidx v m in
     let mc = upd_sidx c mv in
     (mc, Iadcr (ssa_var mc c, ssa_var mv v, a1, a2, y))
  | Isub (v, a1, a2) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let m = upd_sidx v m in
     (m, Isub (ssa_var m v, a1, a2))
  | Isubc (c, v, a1, a2) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let mv = upd_sidx v m in
     let mc = upd_sidx c mv in
     (mc, Isubc (ssa_var mc c, ssa_var mv v, a1, a2))
  | Isubb (c, v, a1, a2) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let mv = upd_sidx v m in
     let mc = upd_sidx c mv in
     (mc, Isubb (ssa_var mc c, ssa_var mv v, a1, a2))
  | Isubr (c, v, a1, a2) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let mv = upd_sidx v m in
     let mc = upd_sidx c mv in
     (mc, Isubr (ssa_var mc c, ssa_var mv v, a1, a2))
  | Isbc (v, a1, a2, y) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let y = ssa_atomic m y in
     let m = upd_sidx v m in
     (m, Isbc (ssa_var m v, a1, a2, y))
  | Isbcs (c, v, a1, a2, y) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let y = ssa_atomic m y in
     let mv = upd_sidx v m in
     let mc = upd_sidx c mv in
     (mc, Isbcs (ssa_var mc c, ssa_var mv v, a1, a2, y))
  | Isbcr (c, v, a1, a2, y) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let y = ssa_atomic m y in
     let mv = upd_sidx v m in
     let mc = upd_sidx c mv in
     (mc, Isbcr (ssa_var mc c, ssa_var mv v, a1, a2, y))
  | Isbb (v, a1, a2, y) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let y = ssa_atomic m y in
     let m = upd_sidx v m in
     (m, Isbb (ssa_var m v, a1, a2, y))
  | Isbbs (c, v, a1, a2, y) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let y = ssa_atomic m y in
     let mv = upd_sidx v m in
     let mc = upd_sidx c mv in
     (mc, Isbbs (ssa_var mc c, ssa_var mv v, a1, a2, y))
  | Isbbr (c, v, a1, a2, y) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let y = ssa_atomic m y in
     let mv = upd_sidx v m in
     let mc = upd_sidx c mv in
     (mc, Isbbr (ssa_var mc c, ssa_var mv v, a1, a2, y))
  | Imul (v, a1, a2) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let m = upd_sidx v m in
     (m, Imul (ssa_var m v, a1, a2))
  | Imuls (c, v, a1, a2) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let mv = upd_sidx v m in
     let mc = upd_sidx c mv in
     (mc, Imuls (ssa_var mc c, ssa_var mv v, a1, a2))
  | Imulr (c, v, a1, a2) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let mv = upd_sidx v m in
     let mc = upd_sidx c mv in
     (mc, Imulr (ssa_var mc c, ssa_var mv v, a1, a2))
  | Imull (vh, vl, a1, a2) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let ml = upd_sidx vl m in
     let mh = upd_sidx vh ml in
     (mh, Imull (ssa_var mh vh, ssa_var ml vl, a1, a2))
  | Imulj (v, a1, a2) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let m = upd_sidx v m in
     (m, Imulj (ssa_var m v, a1, a2))
  | Isplit (vh, vl, a, n) ->
     let a = ssa_atomic m a in
     let ml = upd_sidx vl m in
     let mh = upd_sidx vh ml in
     (mh, Isplit (ssa_var mh vh, ssa_var ml vl, a, n))
  | Iand (v, a1, a2) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let m = upd_sidx v m in
     (m, Iand (ssa_var m v, a1, a2))
  | Ior (v, a1, a2) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let m = upd_sidx v m in
     (m, Ior (ssa_var m v, a1, a2))
  | Ixor (v, a1, a2) ->
     let a1 = ssa_atomic m a1 in
     let a2 = ssa_atomic m a2 in
     let m = upd_sidx v m in
     (m, Ixor (ssa_var m v, a1, a2))
  | Inot (v, a) ->
     let a = ssa_atomic m a in
     let m = upd_sidx v m in
     (m, Inot (ssa_var m v, a))
  | Icast (v, a) ->
     let a = ssa_atomic m a in
     let m = upd_sidx v m in
     (m, Icast (ssa_var m v, a))
  | Ivpc (v, a) ->
     let a = ssa_atomic m a in
     let m = upd_sidx v m in
     (m, Ivpc (ssa_var m v, a))
  | Ijoin (v, ah, al) ->
     let ah = ssa_atomic m ah in
     let al = ssa_atomic m al in
     let m = upd_sidx v m in
     (m, Ijoin (ssa_var m v, ah, al))
  | Iassert e -> (m, Iassert (ssa_bexp m e))
  | Iassume e -> (m, Iassume (ssa_bexp m e))
  | Iecut (e, pwss) -> (m, Iecut (ssa_ebexp m e, pwss))
  | Ircut (e, pwss) -> (m, Ircut (ssa_rbexp m e, pwss))
  | Ighost (vs, e) -> (m, Ighost (VS.of_list (List.map (ssa_var m) (VS.elements vs)), ssa_bexp m e))

let ssa_program m p =
  let rec helper (m, ssa_p_rev) p =
    match p with
    | [] -> (m, List.filter (fun i -> i <> Inop) (List.rev ssa_p_rev))
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
 * Note that this function removes all Ircut instructions.
 *)
let cut_espec es =
  let rec helper res (precond, before_rev, after_rev) (pre, visited_rev, prog, post) =
    match prog with
    | [] ->
       let prove_with = List.map (fun e -> Iassume (e, Rtrue)) (eprove_with_filter es.espwss (precond, List.rev before_rev)) in
       let spec = { espre = pre; esprog = prove_with@(List.rev visited_rev); espost = post; espwss = [] } in
       spec::res
    | (Iecut (e, pwss) as hd)::tl ->
       let prove_with = List.map (fun e -> Iassume (e, Rtrue)) (eprove_with_filter pwss (precond, List.rev before_rev)) in
       let spec = { espre = pre; esprog = prove_with@(List.rev visited_rev); espost = e; espwss = [] } in
       helper (spec::res) (precond, after_rev@before_rev, [hd]) (e, [], tl, post)
    | (Iassume _ as hd)::tl -> helper res (precond, before_rev, hd::after_rev) (pre, hd::visited_rev, tl, post)
    | (Ighost _ as hd)::tl -> helper res (precond, before_rev, hd::after_rev) (pre, hd::visited_rev, tl, post)
    | Ircut _::tl -> helper res (precond, before_rev, after_rev) (pre, visited_rev, tl, post)
    | hd::tl -> helper res (precond, before_rev, after_rev) (pre, hd::visited_rev, tl, post) in
  List.rev (helper [] (es.espre, [], []) (es.espre, [], es.esprog, es.espost))

(*
 * Cut range specifications in SSA.
 * Note that this function removes all Iecut instructions.
 *)
let cut_rspec rs =
  let rec helper res (precond, before_rev, after_rev) (pre, visited_rev, prog, post) =
    match prog with
    | [] ->
       let prove_with = List.map (fun e -> Iassume (Etrue, e)) (rprove_with_filter rs.rspwss (precond, List.rev before_rev)) in
       let spec = { rspre = pre; rsprog = prove_with@(List.rev visited_rev); rspost = post; rspwss = [] } in
       spec::res
    | (Ircut (e, pwss) as hd)::tl ->
       let prove_with = List.map (fun e -> Iassume (Etrue, e)) (rprove_with_filter pwss (precond, List.rev before_rev)) in
       let spec = { rspre = pre; rsprog = prove_with@(List.rev visited_rev); rspost = e; rspwss = [] } in
       helper (spec::res) (precond, after_rev@before_rev, [hd]) (e, [], tl, post)
    | (Iassume (_e, _) as hd)::tl -> helper res (precond, before_rev, hd::after_rev) (pre, hd::visited_rev, tl, post)
    | (Ighost _ as hd)::tl -> helper res (precond, before_rev, hd::after_rev) (pre, hd::visited_rev, tl, post)
    | Iecut _::tl -> helper res (precond, before_rev, after_rev) (pre, visited_rev, tl, post)
    | hd::tl -> helper res (precond, before_rev, after_rev) (pre, hd::visited_rev, tl, post) in
  List.rev (helper [] (rs.rspre, [], []) (rs.rspre, [], rs.rsprog, rs.rspost))



(** Assignment rewriting for SSA programs *)

let rewrite_mov_ssa_spec spec =
  let rewrite_mov (prog, post) instr =
    match instr with
    | Imov (v, Avar v') -> (subst_program [(v, Avar v')] prog, subst_bexp [(v, Evar v')] [(v, Rvar v')] post)
    | Imov (v, Aconst (ty, n)) -> (subst_program [(v, Aconst (ty, n))] prog, subst_bexp [(v, Econst n)] [(v, Rconst (size_of_typ ty, n))] post)
    | _ -> (instr::prog, post) in
  let (prog', post') = List.fold_left rewrite_mov ([], spec.spost) (List.rev spec.sprog) in
  { spre = spec.spre; sprog = prog'; spost = post'; sepwss = spec.sepwss; srpwss = spec.srpwss }

let rewrite_vpc_ssa_spec spec =
  let rewrite_vpc (prog, post) instr =
    match instr with
    | Ivpc (v, Avar v') -> (subst_program [(v, Avar v')] prog, subst_bexp [(v, Evar v')] [(v, Rvar v')] post)
    | Ivpc (v, Aconst (ty, n)) -> (subst_program [(v, Aconst (ty, n))] prog, subst_bexp [(v, Econst n)] [(v, Rconst (size_of_typ ty, n))] post)
    | _ -> (instr::prog, post) in
  let (prog', post') = List.fold_left rewrite_vpc ([], spec.spost) (List.rev spec.sprog) in
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
           (fun vars e -> VS.union vars (vars_ebexp e)) vars (split_eand e)
let rbexp_vars_sat vars e =
  vars_sat (fun vars e -> vs_disjoint vars (vars_rbexp e))
           (fun vars e -> VS.union vars (vars_rbexp e)) vars (split_rand e)
let bexp_vars_sat vars e =
  let vars1 = ebexp_vars_sat vars (eqn_bexp e) in
  let vars2 = rbexp_vars_sat vars1 (rng_bexp e) in
  vars2

let rec slice_ebexp vars e =
  match e with
  | Etrue -> e
  | Eeq (e1, e2) -> if vs_disjoint vars (vars_eexp e1) && vs_disjoint vars (vars_eexp e2) then Etrue
                      else e
  | Eeqmod (e1, e2, p) -> if vs_disjoint vars (vars_eexp e1) && vs_disjoint vars (vars_eexp e2) && vs_disjoint vars (vars_eexp p) then Etrue
                            else e
  | Eand (e1, e2) ->
     begin
       match slice_ebexp vars e1, slice_ebexp vars e2 with
       | Etrue, Etrue -> Etrue
       | e1, Etrue -> e1
       | Etrue, e2 -> e2
       | e1, e2 -> Eand (e1, e2)
     end

let rec slice_rbexp vars e =
  match e with
  | Rtrue -> e
  | Req (_w, e1, e2) -> if vs_disjoint vars (vars_rexp e1) && vs_disjoint vars (vars_rexp e2) then Rtrue
                         else e
  | Rcmp (_w, _op, e1, e2) -> if vs_disjoint vars (vars_rexp e1) && vs_disjoint vars (vars_rexp e2) then Rtrue
                              else e
  | Rneg e' -> if vs_disjoint vars (vars_rbexp e') then Rtrue
                 else e
  | Rand (e1, e2) ->
     begin
       match slice_rbexp vars e1, slice_rbexp vars e2 with
       | Rtrue, Rtrue -> Rtrue
       | e1, Rtrue -> e1
       | Rtrue, e2 -> e2
       | e1, e2 -> Rand (e1, e2)
     end
  | Ror (e1, e2) -> if vs_disjoint vars (vars_rbexp e1) && vs_disjoint vars (vars_rbexp e2) then Rtrue
                      else e

let slice_bexp vars e = (slice_ebexp vars (eqn_bexp e), slice_rbexp vars (rng_bexp e))

(*
 * Slice a program according to a specified initial set of variables.
 * The set of variables will be increased during slicing.
 * The program should not contain any Iecut or Ircut.
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
         | Iassert _e -> helper vars res tl
         | Iassume e -> let e' = slice_bexp vars e in
                         helper (VS.union vars (vars_bexp e')) (if e' = btrue then res else Iassume e'::res) tl
         | Iecut (_e, _pwss) -> failwith ("A program with Iecut cannot be sliced.")
         | Ircut (_e, _pwss) -> failwith ("A program with Ircut cannot be sliced.")
         | Ighost (vs, e) -> if vs_disjoint vars vs then helper vars res tl
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
         | Iassert _e -> helper vars res tl
         | Iassume e -> let e' = slice_bexp vars e in
                         helper vars (if e' = btrue then res else Iassume e'::res) tl
         | Iecut _ -> failwith ("A program with Iecut cannot be sliced.")
         | Ircut _ -> failwith ("A program with Ircut cannot be sliced.")
         | Ighost (vs, e) -> let e' = slice_bexp vars e in
                              helper vars (if e' = btrue then res else Ighost (vs, e')::res) tl
         | _ ->
            if vs_disjoint (lvs_instr hd) vars then helper vars res tl
            else helper vars (hd::res) tl
       end in
  helper vars [] (List.rev p)

let program_vars_sat vars p_rev =
  vars_sat (fun vars i -> match i with
                          | Iassert _ -> true
                          | Iassume _ -> false
                          | Iecut _ -> failwith ("A program with Iecut cannot be sliced.")
                          | Ircut _ -> failwith ("A program with Ircut cannot be sliced.")
                          | Ighost _ -> false
                          | _ -> vs_disjoint vars (lvs_instr i))
           (fun vars i -> match i with
                          | Iassert _ -> failwith "Iassert should not appear in program_vars_sat"
                          | Iassume e -> bexp_vars_sat vars e
                          | Iecut _ -> failwith "Iecut should not appear in program_vars_sat"
                          | Ircut _ -> failwith "Ircut should not appear in program_vars_sat"
                          | Ighost (_vs, e) -> bexp_vars_sat vars e
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



(* Auto-casting *)

let auto_cast_name = "auto_cast"

let auto_cast_var ?preserve:(preserve=false) vt ty v =
  if v.vtyp = ty then ([], v)
  else
    try
      ([], Hashtbl.find vt (v.vname, ty))
    with Not_found ->
      let v' = mkvar (v.vname ^ "_" ^ auto_cast_name ^ "_" ^ string_of_typ ty) ty in
      let _ = Hashtbl.add vt (v.vname, ty) v' in
      if preserve then ([Ivpc (v', Avar v)], v')
      else ([Icast (v', Avar v)], v')

let auto_cast_const ?preserve:(preserve=false) ct ty (nty, n) =
  if nty = ty then ([], Aconst (ty, n))
  else
    try
      ([], Avar (Hashtbl.find ct (n, ty)))
    with Not_found ->
    let vn = "auto_cast_" ^ (if Z.lt n Z.zero then "minus" else "") ^ Z.to_string (Z.abs n) ^ "_" ^ string_of_typ ty in
    let v = mkvar vn ty in
    let _ = Hashtbl.add ct (n, ty) v in
    if preserve then ([Ivpc (v, Aconst (nty, n))], Avar v)
    else ([Icast (v, Aconst (nty, n))], Avar v)

let auto_cast_atomic ?preserve:(preserve=false) (vt, ct) ty a =
  match a with
  | Avar v -> let (casts, v) = auto_cast_var ~preserve:preserve vt ty v in
              (casts, Avar v)
  | Aconst (nty, n) -> auto_cast_const ~preserve:preserve ct ty (nty, n)

let clear_cast vt v =
  Hashtbl.filter_map_inplace (fun (vn, _ty) casted -> if vn = v.vname then None else Some casted) vt

let auto_cast_instr ?preserve:(preserve=false) t i =
  match i with
  | Imov (v, a) -> let (casts, a) = auto_cast_atomic ~preserve:preserve t v.vtyp a in
                   casts@[Imov (v, a)]
  | Ishl (v, a, n) -> let (casts, a) = auto_cast_atomic ~preserve:preserve t v.vtyp a in
                      casts@[Ishl (v, a, n)]
  | Icshl (vh, vl, a1, a2, n) -> let (casts1, a1) = auto_cast_atomic ~preserve:preserve t vh.vtyp a1 in
                                 let (casts2, a2) = auto_cast_atomic ~preserve:preserve t vl.vtyp a2 in
                                 casts1@casts2@[Icshl (vh, vl, a1, a2, n)]
  | Inondet _v -> [i]
  | Icmov (v, c, a1, a2) -> let (casts, c) = auto_cast_atomic ~preserve:preserve t bit_t c in
                            let (casts1, a1) = auto_cast_atomic ~preserve:preserve t v.vtyp a1 in
                            let (casts2, a2) = auto_cast_atomic ~preserve:preserve t v.vtyp a2 in
                            casts@casts1@casts2@[Icmov (v, c, a1, a2)]
  | Inop -> [i]
  | Iadd (v, a1, a2) -> let (casts1, a1) = auto_cast_atomic ~preserve:preserve t v.vtyp a1 in
                        let (casts2, a2) = auto_cast_atomic ~preserve:preserve t v.vtyp a2 in
                        casts1@casts2@[Iadd (v, a1, a2)]
  | Iadds (c, v, a1, a2) -> let (casts1, a1) = auto_cast_atomic ~preserve:preserve t v.vtyp a1 in
                            let (casts2, a2) = auto_cast_atomic ~preserve:preserve t v.vtyp a2 in
                            casts1@casts2@[Iadds (c, v, a1, a2)]
  | Iaddr (c, v, a1, a2) -> let (casts1, a1) = auto_cast_atomic ~preserve:preserve t v.vtyp a1 in
                            let (casts2, a2) = auto_cast_atomic ~preserve:preserve t v.vtyp a2 in
                            casts1@casts2@[Iaddr (c, v, a1, a2)]
  | Iadc (v, a1, a2, y) -> let (casts1, a1) = auto_cast_atomic ~preserve:preserve t v.vtyp a1 in
                           let (casts2, a2) = auto_cast_atomic ~preserve:preserve t v.vtyp a2 in
                           let (casts, y) = auto_cast_atomic ~preserve:preserve t bit_t y in
                           casts1@casts2@casts@[Iadc (v, a1, a2, y)]
  | Iadcs (c, v, a1, a2, y) -> let (casts1, a1) = auto_cast_atomic ~preserve:preserve t v.vtyp a1 in
                               let (casts2, a2) = auto_cast_atomic ~preserve:preserve t v.vtyp a2 in
                               let (casts, y) = auto_cast_atomic ~preserve:preserve t bit_t y in
                               casts1@casts2@casts@[Iadcs (c, v, a1, a2, y)]
  | Iadcr (c, v, a1, a2, y) -> let (casts1, a1) = auto_cast_atomic ~preserve:preserve t v.vtyp a1 in
                               let (casts2, a2) = auto_cast_atomic ~preserve:preserve t v.vtyp a2 in
                               let (casts, y) = auto_cast_atomic ~preserve:preserve t bit_t y in
                               casts1@casts2@casts@[Iadcr (c, v, a1, a2, y)]
  | Isub (v, a1, a2) -> let (casts1, a1) = auto_cast_atomic ~preserve:preserve t v.vtyp a1 in
                        let (casts2, a2) = auto_cast_atomic ~preserve:preserve t v.vtyp a2 in
                        casts1@casts2@[Isub (v, a1, a2)]
  | Isubc (c, v, a1, a2) -> let (casts1, a1) = auto_cast_atomic ~preserve:preserve t v.vtyp a1 in
                            let (casts2, a2) = auto_cast_atomic ~preserve:preserve t v.vtyp a2 in
                            casts1@casts2@[Isubc (c, v, a1, a2)]
  | Isubb (c, v, a1, a2) -> let (casts1, a1) = auto_cast_atomic ~preserve:preserve t v.vtyp a1 in
                            let (casts2, a2) = auto_cast_atomic ~preserve:preserve t v.vtyp a2 in
                            casts1@casts2@[Isubb (c, v, a1, a2)]
  | Isubr (c, v, a1, a2) -> let (casts1, a1) = auto_cast_atomic ~preserve:preserve t v.vtyp a1 in
                            let (casts2, a2) = auto_cast_atomic ~preserve:preserve t v.vtyp a2 in
                            casts1@casts2@[Isubr (c, v, a1, a2)]
  | Isbc (v, a1, a2, y) -> let (casts1, a1) = auto_cast_atomic ~preserve:preserve t v.vtyp a1 in
                           let (casts2, a2) = auto_cast_atomic ~preserve:preserve t v.vtyp a2 in
                           let (casts, y) = auto_cast_atomic ~preserve:preserve t bit_t y in
                           casts1@casts2@casts@[Isbc (v, a1, a2, y)]
  | Isbcs (c, v, a1, a2, y) -> let (casts1, a1) = auto_cast_atomic ~preserve:preserve t v.vtyp a1 in
                               let (casts2, a2) = auto_cast_atomic ~preserve:preserve t v.vtyp a2 in
                               let (casts, y) = auto_cast_atomic ~preserve:preserve t bit_t y in
                               casts1@casts2@casts@[Isbcs (c, v, a1, a2, y)]
  | Isbcr (c, v, a1, a2, y) -> let (casts1, a1) = auto_cast_atomic ~preserve:preserve t v.vtyp a1 in
                               let (casts2, a2) = auto_cast_atomic ~preserve:preserve t v.vtyp a2 in
                               let (casts, y) = auto_cast_atomic ~preserve:preserve t bit_t y in
                               casts1@casts2@casts@[Isbcr (c, v, a1, a2, y)]
  | Isbb (v, a1, a2, y) -> let (casts1, a1) = auto_cast_atomic ~preserve:preserve t v.vtyp a1 in
                           let (casts2, a2) = auto_cast_atomic ~preserve:preserve t v.vtyp a2 in
                           let (casts, y) = auto_cast_atomic ~preserve:preserve t bit_t y in
                           casts1@casts2@casts@[Isbb (v, a1, a2, y)]
  | Isbbs (c, v, a1, a2, y) -> let (casts1, a1) = auto_cast_atomic ~preserve:preserve t v.vtyp a1 in
                               let (casts2, a2) = auto_cast_atomic ~preserve:preserve t v.vtyp a2 in
                               let (casts, y) = auto_cast_atomic ~preserve:preserve t bit_t y in
                               casts1@casts2@casts@[Isbbs (c, v, a1, a2, y)]
  | Isbbr (c, v, a1, a2, y) -> let (casts1, a1) = auto_cast_atomic ~preserve:preserve t v.vtyp a1 in
                               let (casts2, a2) = auto_cast_atomic ~preserve:preserve t v.vtyp a2 in
                               let (casts, y) = auto_cast_atomic ~preserve:preserve t bit_t y in
                               casts1@casts2@casts@[Isbbr (c, v, a1, a2, y)]
  | Imul (v, a1, a2) -> let (casts1, a1) = auto_cast_atomic ~preserve:preserve t v.vtyp a1 in
                        let (casts2, a2) = auto_cast_atomic ~preserve:preserve t v.vtyp a2 in
                        casts1@casts2@[Imul (v, a1, a2)]
  | Imuls (c, v, a1, a2) -> let (casts1, a1) = auto_cast_atomic ~preserve:preserve t v.vtyp a1 in
                            let (casts2, a2) = auto_cast_atomic ~preserve:preserve t v.vtyp a2 in
                            casts1@casts2@[Imuls (c, v, a1, a2)]
  | Imulr (c, v, a1, a2) -> let (casts1, a1) = auto_cast_atomic ~preserve:preserve t v.vtyp a1 in
                            let (casts2, a2) = auto_cast_atomic ~preserve:preserve t v.vtyp a2 in
                            casts1@casts2@[Imulr (c, v, a1, a2)]
  | Imull (vh, vl, a1, a2) -> let (casts1, a1) = auto_cast_atomic ~preserve:preserve t vh.vtyp a1 in
                              let (casts2, a2) = auto_cast_atomic ~preserve:preserve t vh.vtyp a2 in
                              casts1@casts2@[Imull (vh, vl, a1, a2)]
  | Imulj (v, a1, a2) -> let (casts1, a1) = auto_cast_atomic ~preserve:preserve t v.vtyp a1 in
                         let (casts2, a2) = auto_cast_atomic ~preserve:preserve t v.vtyp a2 in
                         casts1@casts2@[Imulj (v, a1, a2)]
  | Isplit (vh, vl, a, n) -> let (casts, a) = auto_cast_atomic ~preserve:preserve t vh.vtyp a in
                             casts@[Isplit (vh, vl, a, n)]
  (* Instructions that cannot be translated to polynomials *)
  | Iand (v, a1, a2) -> let (casts1, a1) = auto_cast_atomic ~preserve:preserve t v.vtyp a1 in
                        let (casts2, a2) = auto_cast_atomic ~preserve:preserve t v.vtyp a2 in
                        casts1@casts2@[Iand (v, a1, a2)]
  | Ior (v, a1, a2) -> let (casts1, a1) = auto_cast_atomic ~preserve:preserve t v.vtyp a1 in
                       let (casts2, a2) = auto_cast_atomic ~preserve:preserve t v.vtyp a2 in
                       casts1@casts2@[Ior (v, a1, a2)]
  | Ixor (v, a1, a2) -> let (casts1, a1) = auto_cast_atomic ~preserve:preserve t v.vtyp a1 in
                        let (casts2, a2) = auto_cast_atomic ~preserve:preserve t v.vtyp a2 in
                        casts1@casts2@[Ixor (v, a1, a2)]
  | Inot (v, a) -> let (casts, a) = auto_cast_atomic ~preserve:preserve t v.vtyp a in
                   casts@[Inot (v, a)]
  (* Type conversions *)
  | Icast (_v, _a) -> [i]
  | Ivpc (_v, _a) -> [i]
  | Ijoin (v, ah, al) -> let (castsh, ah) = auto_cast_atomic ~preserve:preserve t v.vtyp ah in
                         let (castsl, al) = auto_cast_atomic ~preserve:preserve t (typ_to_unsigned v.vtyp) al in
                         castsh@castsl@[Ijoin (v, ah, al)]
  (* Specifications *)
  | Iassert _e -> [i]
  | Iassume _e -> [i]
  | Iecut (_e, _pwss) -> [i]
  | Ircut (_e, _pwss) -> [i]
  | Ighost (_vs, _e) -> [i]

let auto_cast_instr ?preserve:(preserve=false) (vt, ct) i =
  let res = auto_cast_instr ~preserve:preserve (vt, ct) i in
  let _ = VS.iter (fun v -> clear_cast vt v) (lvs_instr i) in
  res

let auto_cast_program ?preserve:(preserve=false) p =
  let vt = Hashtbl.create 100 in
  let ct = Hashtbl.create 100 in
  let rec helper t res p =
    match p with
    | [] -> res
    | hd::tl -> let casted = auto_cast_instr ~preserve:preserve t hd in
                helper t (res@casted) tl in
  helper (vt, ct) [] p



(** Visitors *)

type 'a vaction =
  | SkipChildren
  | DoChildren
  | ChangeTo of 'a
  | ChangeDoChildrenPost of 'a * ('a -> 'a)

class type visitor =
object
  method vspec : spec -> spec vaction
  method vprogram : program -> program vaction
  method vinstr : instr -> instr vaction
  method vbexp : bexp -> bexp vaction
  method vebexp : ebexp -> ebexp vaction
  method vrbexp : rbexp -> rbexp vaction
  method veexp : eexp -> eexp vaction
  method vrexp : rexp -> rexp vaction
  method vatomic : atomic -> atomic vaction
  method vaconst : (typ * Z.t) -> (typ * Z.t) vaction
  method veconst : Z.t -> Z.t vaction
  method vrconst : (size * Z.t) -> (size * Z.t) vaction
  method vvar : var -> var vaction
end

class nop_visitor : visitor =
object (* (self) *)
  method vspec _s = DoChildren
  method vprogram _p = DoChildren
  method vinstr _i = DoChildren
  method vbexp _e = DoChildren
  method vebexp _e = DoChildren
  method vrbexp _e = DoChildren
  method veexp _e = DoChildren
  method vrexp _e = DoChildren
  method vatomic _a = DoChildren
  method vaconst (_ty, _n) = DoChildren
  method veconst _n = DoChildren
  method vrconst (_size, _n) = DoChildren
  method vvar _v = DoChildren
end

let id x = x

let visit_var visitor v =
  match visitor#vvar v with
  | SkipChildren | DoChildren -> v
  | ChangeTo v' -> v'
  | ChangeDoChildrenPost (v', f) -> f v'

let visit_aconst visitor (ty, n) =
  match visitor#vaconst (ty, n) with
  | SkipChildren | DoChildren -> (ty, n)
  | ChangeTo (ty', n') -> (ty', n')
  | ChangeDoChildrenPost ((ty', n'), f) -> f (ty', n')

let visit_econst visitor n =
  match visitor#veconst n with
  | SkipChildren | DoChildren -> n
  | ChangeTo n' -> n'
  | ChangeDoChildrenPost (n', f) -> f n'

let visit_rconst visitor (size, n) =
  match visitor#vrconst (size, n) with
  | SkipChildren | DoChildren -> (size, n)
  | ChangeTo (size', n') -> (size', n')
  | ChangeDoChildrenPost ((size', n'), f) -> f (size', n')

let visit_atomic visitor a =
  let act = visitor#vatomic a in
  match act with
  | SkipChildren -> a
  | ChangeTo a' -> a'
  | DoChildren | ChangeDoChildrenPost _ ->
     let (a, f) =
       match act with
       | DoChildren -> (a, id)
       | ChangeDoChildrenPost (a', f) -> (a', f)
       | _ -> failwith ("Never happen") in
     f (match a with
        | Avar v -> Avar (visit_var visitor v)
        | Aconst (ty, n) -> let (ty', n') = (visit_aconst visitor (ty, n)) in Aconst (ty', n'))

let rec visit_eexp visitor e =
  let act = visitor#veexp e in
  match act with
  | SkipChildren -> e
  | ChangeTo e' -> e'
  | DoChildren | ChangeDoChildrenPost _ ->
     let (e, f) =
       match act with
       | DoChildren -> (e, id)
       | ChangeDoChildrenPost (e', f) -> (e', f)
       | _ -> failwith ("Never happen") in
     f (match e with
        | Evar v -> Evar (visit_var visitor v)
        | Econst n -> Econst (visit_econst visitor n)
        | Eunop (op, e) -> Eunop (op, visit_eexp visitor e)
        | Ebinop (op, e1, e2) -> Ebinop (op, visit_eexp visitor e1, visit_eexp visitor e2))

let rec visit_rexp visitor e =
  let act = visitor#vrexp e in
  match act with
  | SkipChildren -> e
  | ChangeTo e' -> e'
  | DoChildren | ChangeDoChildrenPost _ ->
     let (e, f) =
       match act with
       | DoChildren -> (e, id)
       | ChangeDoChildrenPost (e', f) -> (e', f)
       | _ -> failwith ("Never happen") in
     f (match e with
        | Rvar v -> Rvar (visit_var visitor v)
        | Rconst (size, n) -> let (size, n) = visit_rconst visitor (size, n) in Rconst (size, n)
        | Runop (size, op, e) -> Runop (size, op, visit_rexp visitor e)
        | Rbinop (size, op, e1, e2) -> Rbinop (size, op, visit_rexp visitor e1, visit_rexp visitor e2)
        | Ruext (size, e, n) -> Ruext (size, visit_rexp visitor e, n)
        | Rsext (size, e, n) -> Rsext (size, visit_rexp visitor e, n))

let rec visit_ebexp visitor e =
  let act = visitor#vebexp e in
  match act with
  | SkipChildren -> e
  | ChangeTo e' -> e'
  | DoChildren | ChangeDoChildrenPost _ ->
     let (e, f) =
       match act with
       | DoChildren -> (e, id)
       | ChangeDoChildrenPost (e', f) -> (e', f)
       | _ -> failwith ("Never happen") in
     f (match e with
        | Etrue -> Etrue
        | Eeq (e1, e2) -> Eeq (visit_eexp visitor e1, visit_eexp visitor e2)
        | Eeqmod (e1, e2, m) -> Eeqmod (visit_eexp visitor e1, visit_eexp visitor e2, visit_eexp visitor m)
        | Eand (e1, e2) -> Eand (visit_ebexp visitor e1, visit_ebexp visitor e2))

let rec visit_rbexp visitor e =
  let act = visitor#vrbexp e in
  match act with
  | SkipChildren -> e
  | ChangeTo e' -> e'
  | DoChildren | ChangeDoChildrenPost _ ->
     let (e, f) =
       match act with
       | DoChildren -> (e, id)
       | ChangeDoChildrenPost (e', f) -> (e', f)
       | _ -> failwith ("Never happen") in
     f (match e with
        | Rtrue -> Rtrue
        | Req (size, e1, e2) -> Req (size, visit_rexp visitor e1, visit_rexp visitor e2)
        | Rcmp (size, op, e1, e2) -> Rcmp (size, op, visit_rexp visitor e1, visit_rexp visitor e2)
        | Rneg e -> Rneg (visit_rbexp visitor e)
        | Rand (e1, e2) -> Rand (visit_rbexp visitor e1, visit_rbexp visitor e2)
        | Ror (e1, e2) -> Ror (visit_rbexp visitor e1, visit_rbexp visitor e2))

let visit_bexp visitor e =
  let act = visitor#vbexp e in
  match act with
  | SkipChildren -> e
  | ChangeTo e' -> e'
  | DoChildren | ChangeDoChildrenPost _ ->
     let (e, f) =
       match act with
       | DoChildren -> (e, id)
       | ChangeDoChildrenPost (e', f) -> (e', f)
       | _ -> failwith ("Never happen") in
     f (match e with
        | (eb, rb) -> (visit_ebexp visitor eb, visit_rbexp visitor rb))

let visit_instr visitor i =
  let act = visitor#vinstr i in
  match act with
  | SkipChildren -> i
  | ChangeTo i' -> i'
  | DoChildren | ChangeDoChildrenPost _ ->
     let (i, f) =
       match act with
       | DoChildren -> (i, id)
       | ChangeDoChildrenPost (i', f) -> (i', f)
       | _ -> failwith ("Never happen") in
     f (match i with
        | Imov (v, a) -> Imov (visit_var visitor v, visit_atomic visitor a)
        | Ishl (v, a, n) -> Ishl (visit_var visitor v, visit_atomic visitor a, n)
        | Icshl (vh, vl, a1, a2, n) -> Icshl (visit_var visitor vh, visit_var visitor vl, visit_atomic visitor a1, visit_atomic visitor a2, n)
        | Inondet v -> Inondet (visit_var visitor v)
        | Icmov (v, c, a1, a2) -> Icmov (visit_var visitor v, c, visit_atomic visitor a1, visit_atomic visitor a2)
        | Inop -> Inop
        | Iadd (v, a1, a2) -> Iadd (visit_var visitor v, visit_atomic visitor a1, visit_atomic visitor a2)
        | Iadds (c, v, a1, a2) -> Iadds (visit_var visitor c, visit_var visitor v, visit_atomic visitor a1, visit_atomic visitor a2)
        | Iaddr (c, v, a1, a2) -> Iaddr (visit_var visitor c, visit_var visitor v, visit_atomic visitor a1, visit_atomic visitor a2)
        | Iadc (v, a1, a2, y) -> Iadc (visit_var visitor v, visit_atomic visitor a1, visit_atomic visitor a2, visit_atomic visitor y)
        | Iadcs (c, v, a1, a2, y) -> Iadcs (visit_var visitor c, visit_var visitor v, visit_atomic visitor a1, visit_atomic visitor a2, visit_atomic visitor y)
        | Iadcr (c, v, a1, a2, y) -> Iadcr (visit_var visitor c, visit_var visitor v, visit_atomic visitor a1, visit_atomic visitor a2, visit_atomic visitor y)
        | Isub (v, a1, a2) -> Isub (visit_var visitor v, visit_atomic visitor a1, visit_atomic visitor a2)
        | Isubc (c, v, a1, a2) -> Isubc (visit_var visitor c, visit_var visitor v, visit_atomic visitor a1, visit_atomic visitor a2)
        | Isubb (c, v, a1, a2) -> Isubb (visit_var visitor c, visit_var visitor v, visit_atomic visitor a1, visit_atomic visitor a2)
        | Isubr (c, v, a1, a2) -> Isubr (visit_var visitor c, visit_var visitor v, visit_atomic visitor a1, visit_atomic visitor a2)
        | Isbc (v, a1, a2, y) -> Isbc (visit_var visitor v, visit_atomic visitor a1, visit_atomic visitor a2, visit_atomic visitor y)
        | Isbcs (c, v, a1, a2, y) -> Isbcs (visit_var visitor c, visit_var visitor v, visit_atomic visitor a1, visit_atomic visitor a2, visit_atomic visitor y)
        | Isbcr (c, v, a1, a2, y) -> Isbcr (visit_var visitor c, visit_var visitor v, visit_atomic visitor a1, visit_atomic visitor a2, visit_atomic visitor y)
        | Isbb (v, a1, a2, y) -> Isbb (visit_var visitor v, visit_atomic visitor a1, visit_atomic visitor a2, visit_atomic visitor y)
        | Isbbs (c, v, a1, a2, y) -> Isbbs (visit_var visitor c, visit_var visitor v, visit_atomic visitor a1, visit_atomic visitor a2, visit_atomic visitor y)
        | Isbbr (c, v, a1, a2, y) -> Isbbr (visit_var visitor c, visit_var visitor v, visit_atomic visitor a1, visit_atomic visitor a2, visit_atomic visitor y)
        | Imul (v, a1, a2) -> Imul (visit_var visitor v, visit_atomic visitor a1, visit_atomic visitor a2)
        | Imuls (c, v, a1, a2) -> Imuls (visit_var visitor c, visit_var visitor v, visit_atomic visitor a1, visit_atomic visitor a2)
        | Imulr (c, v, a1, a2) -> Imulr (visit_var visitor c, visit_var visitor v, visit_atomic visitor a1, visit_atomic visitor a2)
        | Imull (vh, vl, a1, a2) -> Imull (visit_var visitor vh, visit_var visitor vl, visit_atomic visitor a1, visit_atomic visitor a2)
        | Imulj (v, a1, a2) -> Imulj (visit_var visitor v, visit_atomic visitor a1, visit_atomic visitor a2)
        | Isplit (vh, vl, a, n) -> Isplit (visit_var visitor vh, visit_var visitor vl, visit_atomic visitor a, n)
        (* Instructions that cannot be translated to polynomials *)
        | Iand (v, a1, a2) -> Iand (visit_var visitor v, visit_atomic visitor a1, visit_atomic visitor a2)
        | Ior (v, a1, a2) -> Ior (visit_var visitor v, visit_atomic visitor a1, visit_atomic visitor a2)
        | Ixor (v, a1, a2) -> Ixor (visit_var visitor v, visit_atomic visitor a1, visit_atomic visitor a2)
        | Inot (v, a) -> Inot (visit_var visitor v, visit_atomic visitor a)
        (* Type conversions *)
        | Icast (v, a) -> Icast (visit_var visitor v, visit_atomic visitor a)
        | Ivpc (v, a) -> Ivpc (visit_var visitor v, visit_atomic visitor a)
        | Ijoin (v, ah, al) -> Ijoin (visit_var visitor v, visit_atomic visitor ah, visit_atomic visitor al)
        (* Specifications *)
        | Iassert e -> Iassert (visit_bexp visitor e)
        | Iassume e -> Iassume (visit_bexp visitor e)
        | Iecut (e, pwss) -> Iecut (visit_ebexp visitor e, pwss)
        | Ircut (e, pwss) -> Ircut (visit_rbexp visitor e, pwss)
        | Ighost (vs, e) -> Ighost (VS.map (visit_var visitor) vs, visit_bexp visitor e))

let visit_program visitor p =
  let act = visitor#vprogram p in
  match act with
  | SkipChildren -> p
  | ChangeTo p' -> p'
  | DoChildren | ChangeDoChildrenPost _ ->
     let (p, f) =
       match act with
       | DoChildren -> (p, id)
       | ChangeDoChildrenPost (p', f) -> (p', f)
       | _ -> failwith ("Never happen") in
     f (List.map (visit_instr visitor) p)

let visit_spec visitor s =
  let act = visitor#vspec s in
  match act with
  | SkipChildren -> s
  | ChangeTo s' -> s'
  | DoChildren | ChangeDoChildrenPost _ ->
     let (s, f) =
       match act with
       | DoChildren -> (s, id)
       | ChangeDoChildrenPost (s', f) -> (s', f)
       | _ -> failwith ("Never happen") in
     f ({ spre = visit_bexp visitor s.spre;
          sprog = visit_program visitor s.sprog;
          spost = visit_bexp visitor s.spost;
          sepwss = s.sepwss;
          srpwss = s.srpwss })

