
open Set
open NBits

exception IndexOutOfBound of int


(** Auxiliary Functions *)

let z_two = Z.of_int 2

let _eq_symbol = "="
let add_symbol = "+"
let sub_symbol = "-"
let mul_symbol = "*"
let pow_symbol = "**"
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

let apply_to_some f ox =
  match ox with
  | None -> None
  | Some x -> Some (f x)

let apply_to_option f d ox =
  match ox with
  | None -> d
  | Some x -> f x

let map_fst f pairs =
  List.map (fun (e1, e2) -> (f e1, e2)) pairs

let map_snd f pairs =
  List.map (fun (e1, e2) -> (e1, f e2)) pairs


(** Types *)

type size = int

type typ =
  Tuint of size
| Tsint of size

let uint_t w = Tuint w
let int_t w = Tsint w
let bit_t = Tuint 1

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

let typ_is_unsigned ty =
  match ty with
  | Tsint _ -> false
  | Tuint _ -> true

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


(** Variables *)

type var =
  {
    vname : string;     (** name of the variable *)
    vtyp  : typ;        (** type of the variable *)
    vsidx : int;        (** SSA index of the variable *)
    mutable vid : int;  (** variable ID *)
  }

let uninitialized_vid = -1
let global_next_vid = ref 0

let incr_global_next_vid () =
  let res = !global_next_vid in
  let _ = incr global_next_vid in
  res

let invalid_sidx i = i < 0
let default_non_ssa_idx = -1

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

let mkvar ?(newvid=false) vn vt =
  let i = if newvid then incr_global_next_vid ()
          else uninitialized_vid in
  { vname = vn; vtyp = vt; vsidx = default_non_ssa_idx; vid = i }

let var_is_bit v = v.vtyp = bit_t
let var_is_unsigned v = typ_is_unsigned v.vtyp
let var_is_signed v = typ_is_signed v.vtyp

module VarElem : OrderedType with type t = var =
  struct
    type t = var
    let compare = cmp_var
  end
module VS = Set.Make(VarElem)
module VM = Map.Make(VarElem)


(** Operators *)

type eunop =
  | Eneg

type ebinop =
  | Eadd
  | Esub
  | Emul
  | Epow

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
  | Rshl
  | Rlshr
  | Rashr

type rcmpop =
  | Rult
  | Rule
  | Rugt
  | Ruge
  | Rslt
  | Rsle
  | Rsgt
  | Rsge


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
let epow e1 e2 =
  match e2 with
  | Econst _ -> Ebinop (Epow, e1, e2)
  | _ -> failwith "Epow must have integer exponentials"
let esq e = Ebinop (Epow, e, Econst z_two)
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
                 else emul e (epow (econst z_two) (econst (Z.mul (Z.of_int i) (Z.of_int r))))) es in
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
  | Epow -> 2

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
  | _, Ebinop (_op, _, _) -> false

let eexp_ebinop_open e op =
  match e, op with
  | Evar _, _ -> true
  | Econst _, _ -> true
  | Eunop (_op, _), _ -> false
  | Ebinop (op, _, _), Eadd -> op = Eadd || op = Esub
  | Ebinop (op, _, _), Esub -> op = Eadd || op = Esub
  | Ebinop (op, _, _), Emul -> op = Emul
  | Ebinop (_op, _, _), _ -> false

(* An eexp is atomic if it is a variable or a constant. *)
let is_eexp_atomic e =
  match e with
  | Evar _ | Econst _ -> true
  | _ -> false

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
let rshl w e1 e2 = Rbinop (w, Rshl, e1, e2)
let rlshr w e1 e2 = Rbinop (w, Rlshr, e1, e2)
let rashr w e1 e2 = Rbinop (w, Rashr, e1, e2)
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

let rec eq_rexp e1 e2 =
  match e1, e2 with
  | Rvar v1, Rvar v2 -> eq_var v1 v2
  | Rconst (w1, n1), Rconst (w2, n2) -> w1 = w2 && Z.equal n1 n2
  | Runop (w1, op1, e1), Runop (w2, op2, e2) -> w1 = w2 && op1 = op2 && eq_rexp e1 e2
  | Rbinop (w1, op1, e1a, e1b), Rbinop (w2, op2, e2a, e2b) -> w1 = w2 && op1 = op2 && eq_rexp e1a e2a && eq_rexp e1b e2b
  | Ruext (w1, e1, n1), Ruext (w2, e2, n2)
    | Rsext (w1, e1, n1), Rsext (w2, e2, n2) -> w1 = w2 && eq_rexp e1 e2 && n1 = n2
  | _, _ -> false


(** Algebraic Predicates *)

type ebexp =
  | Etrue
  | Eeq of eexp * eexp
  | Eeqmod of eexp * eexp * eexp list
  | Eand of ebexp * ebexp

let etrue = Etrue
let eeq e1 e2 = Eeq (e1, e2)
let eeqmod e1 e2 m = Eeqmod (e1, e2, [ m ])
(*let eand b1 b2 = Eand (b1, b2)*)

let eand e1 e2 =
  match e1, e2 with
  | Etrue, _ -> e2
  | _, Etrue -> e1
  | _, _ -> Eand (e1, e2)

(*let eands es = List.fold_left (fun res e -> eand e res) Etrue es*)
let eands es =
  match conj_assoc with
  | LeftAssoc -> List.fold_left (fun res e -> eand res e) Etrue es
  | RightAssoc -> List.fold_left (fun res e -> eand e res) Etrue es

let rec split_eand e =
  match e with
  | Eand (e1, e2) -> (split_eand e1)@(split_eand e2)
  | _ -> [e]

let rec eq_ebexp e1 e2 =
  match e1, e2 with
  | Etrue, Etrue -> true
  | Eeq (e1a, e1b), Eeq (e2a, e2b) -> eq_eexp e1a e2a && eq_eexp e1b e2b
  | Eeqmod (e1a, e1b, e1cs), Eeqmod (e2a, e2b, e2cs) -> eq_eexp e1a e2a && eq_eexp e1b e2b && (List.for_all2 eq_eexp e1cs e2cs)
  | Eand (e1a, e1b), Eand (e2a, e2b) -> eq_ebexp e1a e2a && eq_ebexp e1b e2b
  | _, _ -> false

let rec simplify_ebexp e =
  match e with
  | Eeq (e1, e2) -> Eeq (simplify_eexp e1, simplify_eexp e2)
  | Eeqmod (e1, e2, ms) -> Eeqmod (simplify_eexp e1, simplify_eexp e2, List.rev (List.rev_map simplify_eexp ms))
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
(* unsigned version of eqmod *)
(* `reqmod w e1 e2 m` holds iff `((to_int e1) - (to_int e2)) mod (to_int m) = 0` *)
let reqmod w e1 e2 m =
  req (w+1) (rsmod (w+1)
               (rsub (w+1) (Ruext (w, e1, 1)) (Ruext (w, e2, 1)))
               (Ruext (w, m, 1)))
            (rconst (w+1) Z.zero)
let requmod w e1 e2 m = reqmod w e1 e2 m
(* signed version of eqmod *)
let reqsmod w e1 e2 m =
  req (w+1) (rsmod (w+1)
               (rsub (w+1) (Rsext (w, e1, 1)) (Rsext (w, e2, 1)))
               (Rsext (w, m, 1)))
            (rconst (w+1) Z.zero)
let reqsrem w e1 e2 m =
  req (w+1) (rsrem (w+1)
               (rsub (w+1) (Rsext (w, e1, 1)) (Rsext (w, e2, 1)))
               (Rsext (w, m, 1)))
            (rconst (w+1) Z.zero)

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
  | Ror _ -> true
  | _ -> false

let rec eq_rbexp e1 e2 =
  match e1, e2 with
  | Rtrue, Rtrue -> true
  | Req (w1, e1a, e1b), Req (w2, e2a, e2b) -> w1 = w2 && eq_rexp e1a e2a && eq_rexp e1b e2b
  | Rcmp (w1, op1, e1a, e1b), Rcmp (w2, op2, e2a, e2b) -> w1 = w2 && op1 = op2 && eq_rexp e1a e2a && eq_rexp e1b e2b
  | Rneg e1, Rneg e2 -> eq_rbexp e1 e2
  | Rand (e1a, e1b), Rand (e2a, e2b)
    | Ror (e1a, e1b), Ror (e2a, e2b) -> eq_rbexp e1a e2a && eq_rbexp e1b e2b
  | _, _ -> false


(** Predicates *)

type bexp = ebexp * rbexp

let bexp_separator = "&&"

let btrue = (Etrue, Rtrue)

let eqn_bexp e = fst e
let rng_bexp e = snd e

let band (e1, r1) (e2, r2) = (eand e1 e2, rand r1 r2)

(*let bvands es = List.fold_left (fun res e -> bvand e res) bvTrue es*)
let bands es =
  match conj_assoc with
  | LeftAssoc -> List.fold_left (fun res e -> band res e) btrue es
  | RightAssoc -> List.fold_left (fun res e -> band e res) btrue es
let bands2 es rs = (eands es, rands rs)

let eq_bexp e1 e2 = eq_ebexp (eqn_bexp e1) (eqn_bexp e2) && eq_rbexp (rng_bexp e1) (rng_bexp e2)


(** Instructions *)

type prove_with_spec =
  | Precondition
  | Cuts of int list
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
  | Iadc of var * atomic * atomic * atomic        (* Iadc (v, a1, a2, y): v = a1 + a2 + y, overflow is forbidden *)
  | Iadcs of var * var * atomic * atomic * atomic (* Iadcs (c, v, a1, a2, y): v = a1 + a2 + y, c = carry flag *)
  | Isub of var * atomic * atomic                 (* Isub (v, a1, a2): v = a1 - a2, overflow is forbidden *)
  | Isubc of var * var * atomic * atomic          (* Isubc (c, v, a1, a2): v = a1 + not(a2) + 1, c = carry flag *)
  | Isubb of var * var * atomic * atomic          (* Isous (b, v, a1, a2): v = a1 - a2, b = borrow flag *)
  | Isbc of var * atomic * atomic * atomic        (* Isbc (v, a1, a2, y): v = a1 + not(a2) + y *)
  | Isbcs of var * var * atomic * atomic * atomic (* Isbcs (c, v, a1, a2, y): v = a1 + not(a2) + y, c = carry flag *)
  | Isbb of var * atomic * atomic * atomic        (* Isbb (v, a1, a2, y): v = a1 - a2 - y *)
  | Isbbs of var * var * atomic * atomic * atomic (* Isbbs (b, v, a1, a2, y): v = a1 - a2 - y, b = borrow flag *)
  | Imul of var * atomic * atomic                 (* Imul (v, a1, a2): v = a1 * a2, overflow is forbidden *)
  | Imuls of var * var * atomic * atomic
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
  | Icast of var option * var * atomic            (* Icast (od, v, a): v = the value of a represented by the type of v,
                                                     od = a value used to compute the difference between a and v, the meaning depends on
                                                     the signs of a and v *)
  | Ivpc of var * atomic                          (* Ivpc (v, a): v = a, value preserved casting *)
  | Ijoin of var * atomic * atomic                (* Ijoin (v, ah, al): v = ah * 2^w + al where w is the bit-width of al *)
  (* Specifications *)
  | Iassert of bexp
  | Iassume of bexp
  | Icut of (ebexp * prove_with_spec list) list * (rbexp * prove_with_spec list) list (* Icut (ecuts, rcuts): cuts both algebra and range.
                                                                                         Icut ([], rcuts): cuts only range.
                                                                                         Icut (ecuts, []): cuts only algebra *)
  | Ighost of VS.t * bexp

type program = instr list
type lined_program = (int * instr) list


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

let eq_atomic a1 a2 =
  match a1, a2 with
  | Avar v1, Avar v2 -> eq_var v1 v2
  | Aconst (ty1, n1), Aconst (ty2, n2) -> ty1 = ty2 && Z.equal n1 n2
  | _, _ -> false

let is_assert i =
  match i with
  | Iassert _ -> true
  | _ -> false

let is_assume i =
  match i with
  | Iassume _ -> true
  | _ -> false

let is_cut i =
  match i with
  | Icut _ -> true
  | _ -> false

(* Test if the instruction is a cut over algebra properties *)
let is_ecut i =
  match i with
  | Icut (_::_, _) -> true
  | _ -> false

(* Test if the instruction is a cut over range properties *)
let is_rcut i =
  match i with
  | Icut (_, _::_) -> true
  | _ -> false

let is_annotation i =
  match i with
  | Iassert _ | Iassume _ | Ighost _ | Icut _ -> true
  | _ -> false

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

(* Find all required algebraic predicates in instrs according to pwss. *)
let eprove_with_filter pwss (pre, cuts_rev, instrs) =
  let extract_ebexps instrs =
    let extractor i =
      match i with
        Icut (ecuts, _) -> fst (List.split ecuts)
      | Iassume e -> [eqn_bexp e]
      | Ighost (_, e) -> [eqn_bexp e]
      | _ -> [] in
    List.flatten (List.map extractor instrs) in
  let filter_of_pws pws =
    match pws with
      Precondition -> (fun _i -> false)
    | Cuts _ -> (fun _ -> false)
    | AllCuts -> (fun i -> match i with Icut _ -> true | _ -> false)
    | AllAssumes -> (fun i -> match i with Iassume _ -> true | _ -> false)
    | AllGhosts -> (fun i -> match i with Ighost _ -> true | _ -> false) in
  let filter =
    let filters = List.map filter_of_pws pwss in
    fun i -> List.exists (fun f -> f i) filters in
  let ebexps = extract_ebexps (List.filter filter instrs) in
  let cut_idxs =
    let idxss = List.rev_map
                  (fun pws -> match pws with | Cuts idxs -> idxs | _ -> [])
                  pwss in
    List.flatten idxss in
  let needed_cutss =
    List.mapi (fun i cut ->
        if List.mem i cut_idxs then [cut] else []) (List.rev cuts_rev) in
  let cuts_bexps = extract_ebexps (List.flatten needed_cutss) in
  if List.mem Precondition pwss then
    pre::(List.rev_append cuts_bexps ebexps)
  else List.rev_append cuts_bexps ebexps

(* Find all required range predicates in instrs according to pwss. *)
let rprove_with_filter pwss (pre, cuts_rev, instrs) =
  let extract_rbexps instrs =
    let extractor i =
      match i with
        Icut (_, rcuts) -> fst (List.split rcuts)
      | Iassume e -> [rng_bexp e]
      | Ighost (_, e) -> [rng_bexp e]
      | _ -> [] in
    List.flatten (List.map extractor instrs) in
  let filter_of_pws pws =
    match pws with
      Precondition -> (fun _i -> false)
    | Cuts _ -> (fun _ -> false)
    | AllCuts -> (fun i -> match i with Icut _ -> true | _ -> false)
    | AllAssumes -> (fun i -> match i with Iassume _ -> true | _ -> false)
    | AllGhosts -> (fun i -> match i with Ighost _ -> true | _ -> false) in
  let filter =
    let filters = List.map filter_of_pws pwss in
    fun i -> List.exists (fun f -> f i) filters in
  let rbexps = extract_rbexps (List.filter filter instrs) in
  let cut_idxs =
    let idxss = List.rev_map
                  (fun pws -> match pws with | Cuts idxs -> idxs | _ -> [])
                  pwss in
    List.flatten idxss in
  let needed_cutss =
    List.mapi (fun i cut ->
        if List.mem i cut_idxs then [cut] else []) (List.rev cuts_rev) in
  let cuts_rbexps = extract_rbexps (List.flatten needed_cutss) in
  if List.mem Precondition pwss
  then pre::(List.rev_append cuts_rbexps rbexps)
  else List.rev_append cuts_rbexps rbexps


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


(** String Outputs *)

(* Output the string representation of a constant. Negative numbers are enclosed in parentheses. *)
let string_of_const n = if Z.lt n Z.zero then "(" ^ Z.to_string n ^ ")" else Z.to_string n

let string_of_typ ty =
  match ty with
  | Tuint w -> "uint" ^ string_of_int w
  | Tsint w -> "int" ^ string_of_int w

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

let string_of_vs ?typ:(typ=false) vs = String.concat ", " (List.map (fun v -> string_of_var ~typ:typ v) (VS.elements vs))

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
  | Epow -> "pow"

let symbol_of_ebinop op =
  match op with
  | Eadd -> add_symbol
  | Esub -> sub_symbol
  | Emul -> mul_symbol
  | Epow -> pow_symbol

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
  | Rshl -> "shl"
  | Rlshr -> "lshr"
  | Rashr -> "ashr"

let rec string_of_eexp ?typ:(typ=false) e =
  match e with
  | Evar v -> string_of_var ~typ:typ v
  | Econst n -> string_of_const n
  | Eunop (op, e) -> symbol_of_eunop op ^ (if is_eexp_atomic e then string_of_eexp ~typ:typ e else " (" ^ string_of_eexp ~typ:typ e ^ ")")
  | Ebinop (op, e1, e2) ->
     (if eexp_ebinop_open e1 op then string_of_eexp ~typ:typ e1 else "(" ^ string_of_eexp ~typ:typ e1 ^ ")")
     ^ " " ^ symbol_of_ebinop op ^ " "
     ^ (if ebinop_eexp_open op e2 then string_of_eexp ~typ:typ e2 else "(" ^ string_of_eexp ~typ:typ e2 ^ ")")

let rec string_of_rexp ?typ:(typ=false) e =
  match e with
  | Rvar v -> string_of_var ~typ:typ v
  | Rconst (w, n) -> if Z.lt n Z.zero then "(" ^ Z.to_string n ^ ")" ^ typ_delim ^ string_of_int w else Z.to_string n ^ typ_delim ^ string_of_int w
  | Runop (_w, op, e) -> string_of_runop op ^ " " ^ (if is_rexp_atomic e then string_of_rexp ~typ:typ e else "(" ^ string_of_rexp ~typ:typ e ^ ")")
  | Rbinop (_w, op, e1, e2) -> string_of_rbinop op ^ " (" ^ string_of_rexp ~typ:typ e1 ^ ") (" ^ string_of_rexp ~typ:typ e2 ^ ")"
  | Ruext (_w, e, i) -> "uext " ^ (if is_rexp_atomic e then string_of_rexp ~typ:typ e else "(" ^ string_of_rexp ~typ:typ e ^ ")") ^ " " ^ string_of_int i
  | Rsext (_w, e, i) -> "sext " ^ (if is_rexp_atomic e then string_of_rexp ~typ:typ e else "(" ^ string_of_rexp ~typ:typ e ^ ")") ^ " " ^ string_of_int i

let rec string_of_ebexp ?typ:(typ=false) e =
  match e with
  | Etrue -> "true"
  | Eeq (e1, e2) -> string_of_eexp ~typ:typ e1 ^ " = " ^ string_of_eexp ~typ:typ e2
  | Eeqmod (e1, e2, ms) ->
     string_of_eexp ~typ:typ e1 ^ " = " ^ string_of_eexp ~typ:typ e2
     ^ (match ms with
        | [] -> ""
        | [m] -> " (mod " ^ (string_of_eexp ~typ:typ m) ^ ")"
        | _ -> " (mod [" ^ (String.concat ", " (List.map (string_of_eexp ~typ:typ) ms)) ^ "])")
  | Eand (e1, e2) ->
     let es = split_eand e in
     match es with
     | _::_::[] -> string_of_ebexp ~typ:typ e1 ^ " /\\ " ^ string_of_ebexp ~typ:typ e2
     | _ -> "and [" ^ String.concat ", " (List.map (fun e -> string_of_ebexp ~typ:typ e) es) ^ "]"

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
     | _::_::[] -> string_of_rbexp ~typ:typ e1 ^ " \\/ " ^ string_of_rbexp ~typ:typ e2
     | _ -> "or [" ^ String.concat ", " (List.map (fun e -> string_of_rbexp ~typ:typ e) es) ^ "]"

let string_of_bexp ?typ:(typ=false) e =
  match e with
  | (ee, re) -> string_of_ebexp ~typ:typ ee ^ " " ^ bexp_separator ^ " " ^ string_of_rbexp ~typ:typ re

let string_of_prove_with_spec ps =
  match ps with
    Precondition -> "precondition"
  | Cuts idxs ->
            "cuts [" ^
              (String.concat ", "
                 (List.rev_map string_of_int (List.rev idxs))) ^ "]"
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
  | Iadc (v, a1, a2, y) -> "adc " ^ vstr v ^ " " ^ astr a1 ^ " " ^ astr a2 ^ " " ^ astr y
  | Iadcs (c, v, a1, a2, y) -> "adcs " ^ vstr c ^ " " ^ vstr v ^ " " ^ astr a1 ^ " " ^ astr a2 ^ " " ^ astr y
  | Isub (v, a1, a2) -> "sub " ^ vstr v ^ " " ^ astr a1 ^ " " ^ astr a2
  | Isubc (c, v, a1, a2) -> "subc " ^ vstr c ^ " " ^ vstr v ^ " " ^ astr a1 ^ " " ^ astr a2
  | Isubb (c, v, a1, a2) -> "subb " ^ vstr c ^ " " ^ vstr v ^ " " ^ astr a1 ^ " " ^ astr a2
  | Isbc (v, a1, a2, y) -> "sbc " ^ vstr v ^ " " ^ astr a1 ^ " " ^ astr a2 ^ " " ^ astr y
  | Isbcs (c, v, a1, a2, y) -> "sbcs " ^ vstr c ^ " " ^ vstr v ^ " " ^ astr a1 ^ " " ^ astr a2 ^ " " ^ astr y
  | Isbb (v, a1, a2, y) -> "sbb " ^ vstr v ^ " " ^ astr a1 ^ " " ^ astr a2 ^ " " ^ astr y
  | Isbbs (c, v, a1, a2, y) -> "sbbs " ^ vstr c ^ " " ^ vstr v ^ " " ^ astr a1 ^ " " ^ astr a2 ^ " " ^ astr y
  | Imul (v, a1, a2) -> "mul " ^ vstr v ^ " " ^ astr a1 ^ " " ^ astr a2
  | Imuls (c, v, a1, a2) -> "muls " ^ vstr c ^ " " ^ vstr v ^ " " ^ astr a1 ^ " " ^ astr a2
  | Imull (vh, vl, a1, a2) -> "mull " ^ vstr vh ^ " " ^ vstr vl ^ " " ^ astr a1 ^ " " ^ astr a2
  | Imulj (v, a1, a2) -> "mulj " ^ vstr v ^ " " ^ astr a1 ^ " " ^ astr a2
  | Isplit (vh, vl, a, n) -> "split " ^ vstr vh ^ " " ^ vstr vl ^ " " ^ astr a ^ " " ^ Z.to_string n
  (* Instructions that cannot be translated to polynomials *)
  | Iand (v, a1, a2) -> "and " ^ string_of_var ~typ:true v ^ " " ^ astr a1 ^ " " ^ astr a2
  | Ior (v, a1, a2) -> "or " ^ string_of_var ~typ:true v ^ " " ^ astr a1 ^ " " ^ astr a2
  | Ixor (v, a1, a2) -> "xor " ^ string_of_var ~typ:true v ^ " " ^ astr a1 ^ " " ^ astr a2
  | Inot (v, a) -> "not " ^ string_of_var ~typ:true v ^ " " ^ astr a
  (* Type conversions *)
  | Icast (od, v, a) ->
     (match od with
      | None -> "cast " ^ string_of_var ~typ:true v ^ " " ^ astr a
      | Some d -> "cast [ " ^ string_of_var ~typ:true d ^ " ] " ^ string_of_var ~typ:true v ^ " " ^ astr a)
  | Ivpc (v, a) -> "vpc " ^ string_of_var ~typ:true v ^ " " ^ astr a
  | Ijoin (v, ah, al) -> "join " ^ vstr v ^ " " ^ astr ah ^ " " ^ astr al
  (* Specifications *)
  | Iassert e -> "assert " ^ string_of_bexp ~typ:typ e
  | Iassume e -> "assume " ^ string_of_bexp ~typ:typ e
  | Icut (ecuts, rcuts) ->
     let string_of_ecut (e, pwss) = string_of_ebexp ~typ:typ e ^ (if pwss = [] then "" else (" prove with [" ^ string_of_prove_with_specs pwss ^ "]")) in
     let string_of_rcut (e, pwss) = string_of_rbexp ~typ:typ e ^ (if pwss = [] then "" else (" prove with [" ^ string_of_prove_with_specs pwss ^ "]")) in
     (match ecuts, rcuts with
      | [], [] -> "skip"
      | [], _ -> "rcut " ^ String.concat ", " (List.map string_of_rcut rcuts)
      | _, [] -> "ecut " ^ String.concat ", " (List.map string_of_ecut ecuts)
      | _, _ -> "cut " ^ String.concat ", " (List.map string_of_ecut ecuts) ^ " && " ^ String.concat ", " (List.map string_of_rcut rcuts))
  | Ighost (vs, e) -> "ghost " ^ String.concat ", " (List.map (fun v -> string_of_var ~typ:true v) (VS.elements vs)) ^ ": " ^ string_of_bexp ~typ:typ e

let string_of_instr ?typ:(typ=false) i = string_of_instr ~typ:typ i ^ ";"

let string_of_program ?insert_nop:(insert=true) ?typ:(typ=false) p =
  let p =
    match p with
    | [] -> if insert then [Inop]
            else p
    | _ -> p in
  String.concat "\n" (List.rev_map (fun i -> string_of_instr ~typ:typ i) (List.rev p))

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
    ^ (if s.sepwss = [] then "" else " prove with [" ^ string_of_prove_with_specs s.sepwss ^ "]")
    ^ " " ^ bexp_separator ^ " "
    ^ string_of_rbexp ~typ:typ (rng_bexp s.spost)
    ^ (if s.srpwss = [] then "" else " prove with [" ^ string_of_prove_with_specs s.srpwss ^ "]")
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
    ^ (if s.espwss = [] then "" else " prove with [" ^ string_of_prove_with_specs s.espwss ^ "]")
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
    ^ (if s.rspwss = [] then "" else " prove with [" ^ string_of_prove_with_specs s.rspwss ^ "]")
    ^ " }"


(** Variable Sets *)


let rec vars_eexp e =
  match e with
  | Evar x -> VS.singleton x
  | Econst _ -> VS.empty
  | Eunop (_, e) -> vars_eexp e
  | Ebinop (_, e1, e2) -> VS.union (vars_eexp e1) (vars_eexp e2)

let rec vars_rexp e =
  match e with
  | Rvar x -> VS.singleton x
  | Rconst _ -> VS.empty
  | Runop (_, _, e) -> vars_rexp e
  | Rbinop (_, _, e1, e2) -> VS.union (vars_rexp e1) (vars_rexp e2)
  | Ruext (_, e, _)
  | Rsext (_, e, _) -> vars_rexp e

let rec vars_ebexp e =
  match e with
  | Etrue -> VS.empty
  | Eeq (e1, e2) -> VS.union (vars_eexp e1) (vars_eexp e2)
  | Eeqmod (e1, e2, ps) -> VS.union (vars_eexp e1) (List.fold_left (fun vs p -> VS.union vs (vars_eexp p)) (vars_eexp e2) ps)
  | Eand (e1, e2) -> VS.union (vars_ebexp e1) (vars_ebexp e2)

let rec vars_rbexp e =
  match e with
  | Rtrue -> VS.empty
  | Req (_, e1, e2) -> VS.union (vars_rexp e1) (vars_rexp e2)
  | Rcmp (_, _, e1, e2) -> VS.union (vars_rexp e1) (vars_rexp e2)
  | Rneg e -> vars_rbexp e
  | Rand (e1, e2)
  | Ror (e1, e2) -> VS.union (vars_rbexp e1) (vars_rbexp e2)

let vars_bexp e =
  VS.union (vars_ebexp (eqn_bexp e)) (vars_rbexp (rng_bexp e))

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
    | Isubc (c, v, a1, a2)
    | Isubb (c, v, a1, a2)
    | Imuls (c, v, a1, a2) ->
     VS.add c (VS.add v (VS.union (vars_atomic a1) (vars_atomic a2)))
  | Iadcs (c, v, a1, a2, y)
    | Isbcs (c, v, a1, a2, y)
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
  | Icast (od, v, a) ->
     (match od with
      | None -> VS.add v (vars_atomic a)
      | Some d -> VS.add d (VS.add v (vars_atomic a)))
  | Ivpc (v, a) -> VS.add v (vars_atomic a)
  | Ijoin (v, ah, al) -> VS.add v (VS.union (vars_atomic ah) (vars_atomic al))
  | Iassert e
  | Iassume e -> vars_bexp e
  | Icut (ecuts, rcuts) ->
     let evars = List.map vars_ebexp (fst (List.split ecuts)) in
     let rvars = List.map vars_rbexp (fst (List.split rcuts)) in
     VS.union (List.fold_left VS.union VS.empty evars) (List.fold_left VS.union VS.empty rvars)
  | Ighost (vs, e) -> VS.union vs (vars_bexp e)

let vars_program p = List.fold_left (fun res i -> VS.union (vars_instr i) res) VS.empty p

let lvs_instr i =
  match i with
  | Imov (v, _) -> VS.singleton v
  | Iadd (v, _, _) -> VS.singleton v
  | Iadds (c, v, _, _) -> VS.add c (VS.singleton v)
  | Iadc (v, _, _, _) -> VS.singleton v
  | Iadcs (c, v, _, _, _) -> VS.add c (VS.singleton v)
  | Isub (v, _, _) -> VS.singleton v
  | Isubc (c, v, _, _) -> VS.add c (VS.singleton v)
  | Isubb (c, v, _, _) -> VS.add c (VS.singleton v)
  | Isbc (v, _, _, _) -> VS.singleton v
  | Isbcs (c, v, _, _, _) -> VS.add c (VS.singleton v)
  | Isbb (v, _, _, _) -> VS.singleton v
  | Isbbs (c, v, _, _, _) -> VS.add c (VS.singleton v)
  | Imul (v, _, _) -> VS.singleton v
  | Imuls (c, v, _, _) -> VS.add c (VS.singleton v)
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
  | Icast (_, v, _) -> VS.singleton v
  | Ivpc (v, _) -> VS.singleton v
  | Ijoin (v, _, _) -> VS.singleton v
  | Iassert _
  | Iassume _
  | Icut _
  | Ighost _ -> VS.empty

let lvs_program p = List.fold_left (fun res i -> VS.union (lvs_instr i) res) VS.empty p

let rvs_instr i =
  match i with
  | Imov (_, a) -> vars_atomic a
  | Iadd (_, a1, a2) -> VS.union (vars_atomic a1) (vars_atomic a2)
  | Iadds (_, _, a1, a2) -> VS.union (vars_atomic a1) (vars_atomic a2)
  | Iadc (_, a1, a2, c) -> VS.union (VS.union (vars_atomic a1) (vars_atomic a2)) (vars_atomic c)
  | Iadcs (_, _, a1, a2, c) -> VS.union (VS.union (vars_atomic a1) (vars_atomic a2)) (vars_atomic c)
  | Isub (_, a1, a2) -> VS.union (vars_atomic a1) (vars_atomic a2)
  | Isubc (_, _, a1, a2) -> VS.union (vars_atomic a1) (vars_atomic a2)
  | Isubb (_, _, a1, a2) -> VS.union (vars_atomic a1) (vars_atomic a2)
  | Isbc (_, a1, a2, c) -> VS.union (VS.union (vars_atomic a1) (vars_atomic a2)) (vars_atomic c)
  | Isbcs (_, _, a1, a2, c) -> VS.union (VS.union (vars_atomic a1) (vars_atomic a2)) (vars_atomic c)
  | Isbb (_, a1, a2, c) -> VS.union (VS.union (vars_atomic a1) (vars_atomic a2)) (vars_atomic c)
  | Isbbs (_, _, a1, a2, c) -> VS.union (VS.union (vars_atomic a1) (vars_atomic a2)) (vars_atomic c)
  | Imul (_, a1, a2) -> VS.union (vars_atomic a1) (vars_atomic a2)
  | Imuls (_, _, a1, a2) -> VS.union (vars_atomic a1) (vars_atomic a2)
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
  | Icast (_, _, a) -> vars_atomic a
  | Ivpc (_, a) -> vars_atomic a
  | Ijoin (_, ah, al) -> VS.union (vars_atomic ah) (vars_atomic al)
  | Iassert e
  | Iassume e -> vars_bexp e
  | Icut (ecuts, rcuts) ->
     let evars = List.map vars_ebexp (fst (List.split ecuts)) in
     let rvars = List.map vars_rbexp (fst (List.split rcuts)) in
     VS.union (List.fold_left VS.union VS.empty evars) (List.fold_left VS.union VS.empty rvars)
  | Ighost (_, e) -> vars_bexp e

let rvs_program p = List.fold_left (fun res i -> VS.union (rvs_instr i) res) VS.empty p

(* Assigned carry variables. Bit variables are considered carry variables. *)
let lcarries_instr i =
  match i with
  | Imov (v, _) -> if var_is_bit v then VS.singleton v else VS.empty
  | Iadd (v, _, _) -> if var_is_bit v then VS.singleton v else VS.empty
  | Iadds (c, v, _, _) -> if var_is_bit v then VS.of_list [c; v] else VS.singleton c
  | Iadc (v, _, _, _) -> if var_is_bit v then VS.singleton v else VS.empty
  | Iadcs (c, v, _, _, _) -> if var_is_bit v then VS.of_list [c; v] else VS.singleton c
  | Isub (v, _, _) -> if var_is_bit v then VS.singleton v else VS.empty
  | Isubc (c, v, _, _) -> if var_is_bit v then VS.of_list [c; v] else VS.singleton c
  | Isubb (c, v, _, _) -> if var_is_bit v then VS.of_list [c; v] else VS.singleton c
  | Isbc (v, _, _, _) -> if var_is_bit v then VS.singleton v else VS.empty
  | Isbcs (c, v, _, _, _) -> if var_is_bit v then VS.of_list [c; v] else VS.singleton c
  | Isbb (v, _, _, _) -> if var_is_bit v then VS.singleton v else VS.empty
  | Isbbs (c, v, _, _, _) -> if var_is_bit v then VS.of_list [c; v] else VS.singleton c
  | Imul (v, _, _) -> if var_is_bit v then VS.singleton v else VS.empty
  | Imuls (c, v, _, _) -> if var_is_bit v then VS.of_list [c; v] else VS.singleton c
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
  | Icast (_, v, _) -> if var_is_bit v then VS.singleton v else VS.empty
  | Ivpc (v, _) -> if var_is_bit v then VS.singleton v else VS.empty
  | Ijoin _
  | Iassert _
  | Iassume _
  | Icut _
  | Ighost _ -> VS.empty

let lcarries_program p = List.fold_left (fun res i -> VS.union (lcarries_instr i) res) VS.empty p

let gvs_instr i =
  match i with
  | Ighost (vs, _) -> vs
  | _ -> VS.empty

let gvs_program p = List.fold_left (fun res i -> VS.union res (gvs_instr i)) VS.empty p

let vars_spec s = VS.union (vars_bexp s.spre) (VS.union (vars_program s.sprog) (vars_bexp s.spost))
let vars_espec s = VS.union (vars_ebexp s.espre) (VS.union (vars_program s.esprog) (vars_ebexp s.espost))
let vars_rspec s = VS.union (vars_rbexp s.rspre) (VS.union (vars_program s.rsprog) (vars_rbexp s.rspost))


(** Variable ID Sets *)

module IS = Set.Make(Int)

let union_iss iss = List.fold_left IS.union IS.empty iss

let vids_of_vs vs = VS.fold (fun v s -> IS.add v.vid s) vs IS.empty

let rec vids_eexp e =
  match e with
  | Evar x -> IS.singleton x.vid
  | Econst _ -> IS.empty
  | Eunop (_, e) -> vids_eexp e
  | Ebinop (_, e1, e2) -> IS.union (vids_eexp e1) (vids_eexp e2)

let rec vids_ebexp e =
  match e with
  | Etrue -> IS.empty
  | Eeq (e1, e2) -> IS.union (vids_eexp e1) (vids_eexp e2)
  | Eeqmod (e1, e2, ps) -> List.fold_left IS.union (IS.union (vids_eexp e1) (vids_eexp e2)) (List.map vids_eexp ps)
  | Eand (e1, e2) -> IS.union (vids_ebexp e1) (vids_ebexp e2)

let rec vids_rexp e =
  match e with
  | Rvar x -> IS.singleton x.vid
  | Rconst _ -> IS.empty
  | Runop (_, _, e) -> vids_rexp e
  | Rbinop (_, _, e1, e2) -> IS.union (vids_rexp e1) (vids_rexp e2)
  | Ruext (_, e, _)
  | Rsext (_, e, _) -> vids_rexp e

let rec vids_rbexp e =
  match e with
  | Rtrue -> IS.empty
  | Req (_, e1, e2) -> IS.union (vids_rexp e1) (vids_rexp e2)
  | Rcmp (_, _, e1, e2) -> IS.union (vids_rexp e1) (vids_rexp e2)
  | Rneg e -> vids_rbexp e
  | Rand (e1, e2)
  | Ror (e1, e2) -> IS.union (vids_rbexp e1) (vids_rbexp e2)

let vids_bexp e = IS.union (vids_ebexp (eqn_bexp e)) (vids_rbexp (rng_bexp e))

let vids_atomic a =
  match a with
  | Avar v -> IS.singleton v.vid
  | _ -> IS.empty

let vids_instr i =
  match i with
  | Imov (v, a)
    | Ishl (v, a, _) -> IS.add v.vid (vids_atomic a)
  | Iadd (v, a1, a2)
    | Isub (v, a1, a2)
    | Imul (v, a1, a2)
    | Imulj (v, a1, a2) -> IS.add v.vid (IS.union (vids_atomic a1) (vids_atomic a2))
    | Iadc (v, a1, a2, c)
    | Isbc (v, a1, a2, c)
    | Isbb (v, a1, a2, c) -> IS.add v.vid (IS.union (IS.union (vids_atomic a1) (vids_atomic a2)) (vids_atomic c))
    | Iadds (c, v, a1, a2)
    | Isubc (c, v, a1, a2)
    | Isubb (c, v, a1, a2)
    | Imuls (c, v, a1, a2) ->
     IS.add c.vid (IS.add v.vid (IS.union (vids_atomic a1) (vids_atomic a2)))
  | Iadcs (c, v, a1, a2, y)
    | Isbcs (c, v, a1, a2, y)
    | Isbbs (c, v, a1, a2, y) ->
     IS.add c.vid (IS.add v.vid (IS.union (IS.union (vids_atomic a1) (vids_atomic a2)) (vids_atomic y)))
  | Isplit (vh, vl, a, _) -> IS.add vh.vid (IS.add vl.vid (vids_atomic a))
  | Imull (vh, vl, a1, a2)
    | Icshl (vh, vl, a1, a2, _) ->
     IS.add vh.vid (IS.add vl.vid (IS.union (vids_atomic a1) (vids_atomic a2)))
  | Inondet v -> IS.singleton v.vid
  | Icmov (v, c, a1, a2) -> IS.add v.vid (IS.union (vids_atomic c) (IS.union (vids_atomic a1) (vids_atomic a2)))
  | Inop -> IS.empty
  | Iand (v, a1, a2)
    | Ior (v, a1, a2)
    | Ixor (v, a1, a2) ->  IS.add v.vid (IS.union (vids_atomic a1) (vids_atomic a2))
  | Inot (v, a) -> IS.add v.vid (vids_atomic a)
  | Icast (od, v, a) ->
     (match od with
      | None -> IS.add v.vid (vids_atomic a)
      | Some d -> IS.add d.vid (IS.add v.vid (vids_atomic a)))
  | Ivpc (v, a) -> IS.add v.vid (vids_atomic a)
  | Ijoin (v, ah, al) -> IS.add v.vid (IS.union (vids_atomic ah) (vids_atomic al))
  | Iassert e
  | Iassume e -> vids_bexp e
  | Icut (ecuts, rcuts) ->
     let evars = List.map vids_ebexp (fst (List.split ecuts)) in
     let rvars = List.map vids_rbexp (fst (List.split rcuts)) in
     IS.union (List.fold_left IS.union IS.empty evars) (List.fold_left IS.union IS.empty rvars)
  | Ighost (vs, e) -> IS.union (vids_of_vs vs) (vids_bexp e)

let vids_program p = List.fold_left (fun res i -> IS.union (vids_instr i) res) IS.empty p

let lvids_instr i =
  match i with
  | Imov (v, _) -> IS.singleton v.vid
  | Iadd (v, _, _) -> IS.singleton v.vid
  | Iadds (c, v, _, _) -> IS.add c.vid (IS.singleton v.vid)
  | Iadc (v, _, _, _) -> IS.singleton v.vid
  | Iadcs (c, v, _, _, _) -> IS.add c.vid (IS.singleton v.vid)
  | Isub (v, _, _) -> IS.singleton v.vid
  | Isubc (c, v, _, _) -> IS.add c.vid (IS.singleton v.vid)
  | Isubb (c, v, _, _) -> IS.add c.vid (IS.singleton v.vid)
  | Isbc (v, _, _, _) -> IS.singleton v.vid
  | Isbcs (c, v, _, _, _) -> IS.add c.vid (IS.singleton v.vid)
  | Isbb (v, _, _, _) -> IS.singleton v.vid
  | Isbbs (c, v, _, _, _) -> IS.add c.vid (IS.singleton v.vid)
  | Imul (v, _, _) -> IS.singleton v.vid
  | Imuls (c, v, _, _) -> IS.add c.vid (IS.singleton v.vid)
  | Imull (vh, vl, _, _) -> IS.add vh.vid (IS.singleton vl.vid)
  | Imulj (v, _, _) -> IS.singleton v.vid
  | Ishl (v, _, _) -> IS.singleton v.vid
  | Isplit (vh, vl, _, _) -> IS.add vh.vid (IS.singleton vl.vid)
  | Icshl (vh, vl, _, _, _) -> IS.add vh.vid (IS.singleton vl.vid)
  | Inondet v -> IS.singleton v.vid
  | Icmov (v, _, _, _) -> IS.singleton v.vid
  | Inop -> IS.empty
  | Iand (v, _, _)
  | Ior (v, _, _)
  | Ixor (v, _, _)
  | Inot (v, _) -> IS.singleton v.vid
  | Icast (_, v, _) -> IS.singleton v.vid
  | Ivpc (v, _) -> IS.singleton v.vid
  | Ijoin (v, _, _) -> IS.singleton v.vid
  | Iassert _
  | Iassume _
  | Icut _
  | Ighost _ -> IS.empty

let lvids_program p = List.fold_left (fun res i -> IS.union (lvids_instr i) res) IS.empty p

let rvids_instr i =
  match i with
  | Imov (_, a) -> vids_atomic a
  | Iadd (_, a1, a2) -> IS.union (vids_atomic a1) (vids_atomic a2)
  | Iadds (_, _, a1, a2) -> IS.union (vids_atomic a1) (vids_atomic a2)
  | Iadc (_, a1, a2, c) -> IS.union (IS.union (vids_atomic a1) (vids_atomic a2)) (vids_atomic c)
  | Iadcs (_, _, a1, a2, c) -> IS.union (IS.union (vids_atomic a1) (vids_atomic a2)) (vids_atomic c)
  | Isub (_, a1, a2) -> IS.union (vids_atomic a1) (vids_atomic a2)
  | Isubc (_, _, a1, a2) -> IS.union (vids_atomic a1) (vids_atomic a2)
  | Isubb (_, _, a1, a2) -> IS.union (vids_atomic a1) (vids_atomic a2)
  | Isbc (_, a1, a2, c) -> IS.union (IS.union (vids_atomic a1) (vids_atomic a2)) (vids_atomic c)
  | Isbcs (_, _, a1, a2, c) -> IS.union (IS.union (vids_atomic a1) (vids_atomic a2)) (vids_atomic c)
  | Isbb (_, a1, a2, c) -> IS.union (IS.union (vids_atomic a1) (vids_atomic a2)) (vids_atomic c)
  | Isbbs (_, _, a1, a2, c) -> IS.union (IS.union (vids_atomic a1) (vids_atomic a2)) (vids_atomic c)
  | Imul (_, a1, a2) -> IS.union (vids_atomic a1) (vids_atomic a2)
  | Imuls (_, _, a1, a2) -> IS.union (vids_atomic a1) (vids_atomic a2)
  | Imull (_, _, a1, a2) -> IS.union (vids_atomic a1) (vids_atomic a2)
  | Imulj (_, a1, a2) -> IS.union (vids_atomic a1) (vids_atomic a2)
  | Ishl (_, a, _) -> vids_atomic a
  | Isplit (_, _, a, _) -> vids_atomic a
  | Icshl (_, _, a1, a2, _) ->
     IS.union (vids_atomic a1) (vids_atomic a2)
  | Inondet _ -> IS.empty
  | Icmov (_, c, a1, a2) -> IS.union (vids_atomic c) (IS.union (vids_atomic a1) (vids_atomic a2))
  | Inop -> IS.empty
  | Iand (_, a1, a2)
    | Ior (_, a1, a2)
    | Ixor (_, a1, a2) ->  IS.union (vids_atomic a1) (vids_atomic a2)
  | Inot (_, a) -> vids_atomic a
  | Icast (_, _, a) -> vids_atomic a
  | Ivpc (_, a) -> vids_atomic a
  | Ijoin (_, ah, al) -> IS.union (vids_atomic ah) (vids_atomic al)
  | Iassert e
  | Iassume e -> vids_bexp e
  | Icut (ecuts, rcuts) ->
     let evars = List.map vids_ebexp (fst (List.split ecuts)) in
     let rvars = List.map vids_rbexp (fst (List.split rcuts)) in
     IS.union (List.fold_left IS.union IS.empty evars) (List.fold_left IS.union IS.empty rvars)
  | Ighost (_, e) -> vids_bexp e

let rvids_program p = List.fold_left (fun res i -> IS.union (rvids_instr i) res) IS.empty p

(* Assigned carry variables. Bit variables are considered carry variables. *)
let lcids_instr i =
  match i with
  | Imov (v, _) -> if var_is_bit v then IS.singleton v.vid else IS.empty
  | Iadd (v, _, _) -> if var_is_bit v then IS.singleton v.vid else IS.empty
  | Iadds (c, v, _, _) -> if var_is_bit v then IS.of_list [c.vid; v.vid] else IS.singleton c.vid
  | Iadc (v, _, _, _) -> if var_is_bit v then IS.singleton v.vid else IS.empty
  | Iadcs (c, v, _, _, _) -> if var_is_bit v then IS.of_list [c.vid; v.vid] else IS.singleton c.vid
  | Isub (v, _, _) -> if var_is_bit v then IS.singleton v.vid else IS.empty
  | Isubc (c, v, _, _) -> if var_is_bit v then IS.of_list [c.vid; v.vid] else IS.singleton c.vid
  | Isubb (c, v, _, _) -> if var_is_bit v then IS.of_list [c.vid; v.vid] else IS.singleton c.vid
  | Isbc (v, _, _, _) -> if var_is_bit v then IS.singleton v.vid else IS.empty
  | Isbcs (c, v, _, _, _) -> if var_is_bit v then IS.of_list [c.vid; v.vid] else IS.singleton c.vid
  | Isbb (v, _, _, _) -> if var_is_bit v then IS.singleton v.vid else IS.empty
  | Isbbs (c, v, _, _, _) -> if var_is_bit v then IS.of_list [c.vid; v.vid] else IS.singleton c.vid
  | Imul (v, _, _) -> if var_is_bit v then IS.singleton v.vid else IS.empty
  | Imuls (c, v, _, _) -> if var_is_bit v then IS.of_list [c.vid; v.vid] else IS.singleton c.vid
  | Imull _
  | Imulj _
  | Ishl _
  | Isplit _
  | Icshl _ -> IS.empty
  | Inondet v -> if var_is_bit v then IS.singleton v.vid else IS.empty
  | Icmov (v, _, _, _) -> if var_is_bit v then IS.singleton v.vid else IS.empty
  | Inop -> IS.empty
  | Iand (v, _, _) -> if var_is_bit v then IS.singleton v.vid else IS.empty
  | Ior (v, _, _) -> if var_is_bit v then IS.singleton v.vid else IS.empty
  | Ixor (v, _, _) -> if var_is_bit v then IS.singleton v.vid else IS.empty
  | Inot (v, _) -> if var_is_bit v then IS.singleton v.vid else IS.empty
  | Icast (_, v, _) -> if var_is_bit v then IS.singleton v.vid else IS.empty
  | Ivpc (v, _) -> if var_is_bit v then IS.singleton v.vid else IS.empty
  | Ijoin _
  | Iassert _
  | Iassume _
  | Icut _
  | Ighost _ -> IS.empty

let lcids_program p = List.fold_left (fun res i -> IS.union (lcids_instr i) res) IS.empty p

let vids_spec s = union_iss [vids_bexp s.spre; vids_program s.sprog; vids_bexp s.spost]
let vids_espec s = union_iss [vids_ebexp s.espre; vids_program s.esprog; vids_ebexp s.espost]
let vids_rspec s = union_iss [vids_rbexp s.rspre; vids_program s.rsprog; vids_rbexp s.rspost]


(** Static Single Assignment (SSA) *)

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

let mksvar ?(newvid=false) vn vt vi =
  let i = if newvid then incr_global_next_vid ()
          else uninitialized_vid in
  { vname = vn; vtyp = vt; vsidx = vi; vid = i }

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
  | Eeqmod (e1, e2, ps) -> Eeqmod (ssa_eexp m e1, ssa_eexp m e2, List.rev (List.rev_map (ssa_eexp m) ps))
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
  | Icast (od, v, a) ->
     let a = ssa_atomic m a in
     let md = apply_to_option (fun v -> upd_sidx v m) m od in
     let mv = upd_sidx v md in
     (mv, Icast (apply_to_some (ssa_var md) od, ssa_var mv v, a))
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
  | Icut (ecuts, rcuts) -> (m, Icut (map_fst (fun e -> ssa_ebexp m e) ecuts, map_fst (fun e -> ssa_rbexp m e) rcuts))
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
 * Cut algebra specifications in SSA and return `(espec list) list`
 * The i-th item in the returned list represents the specifications for
 * the i-th cut. Each cut corresponds to one `espec list` because different
 * prove-with clauses may be used. Note that this function removes all range
 * properties in Icut instructions.
 *)
let cut_espec es =
  let rec helper res (precond, before_rev, after_rev, cuts_rev) (pre, visited_rev, prog, post) =
    match prog with
    | [] ->
       let prove_with = List.map (fun e -> Iassume (e, Rtrue)) (eprove_with_filter es.espwss (precond, cuts_rev, List.rev before_rev)) in
       let spec = { espre = pre; esprog = prove_with@(List.rev visited_rev); espost = post; espwss = [] } in
       [spec]::res
    | (Icut ([], _))::tl -> helper res (precond, before_rev, after_rev, cuts_rev) (pre, visited_rev, tl, post)
    | (Icut (ecuts, _) as hd)::tl ->
       let specs =
         let visited = List.rev visited_rev in
         let before = List.rev before_rev in
         List.fold_left (
             fun res (e, pwss) ->
             let prove_with = List.map (fun e -> Iassume (e, Rtrue)) (eprove_with_filter pwss (precond, cuts_rev, before)) in
             let spec = { espre = pre; esprog = prove_with@visited; espost = e; espwss = [] } in
             spec::res
           ) [] ecuts in
       helper (specs::res) (precond, after_rev@before_rev, [hd], hd::cuts_rev) (eands (fst (List.split ecuts)), [], tl, post)
    | (Iassume _ as hd)::tl -> helper res (precond, before_rev, hd::after_rev, cuts_rev) (pre, hd::visited_rev, tl, post)
    | (Ighost _ as hd)::tl -> helper res (precond, before_rev, hd::after_rev, cuts_rev) (pre, hd::visited_rev, tl, post)
    | hd::tl -> helper res (precond, before_rev, after_rev, cuts_rev) (pre, hd::visited_rev, tl, post) in
  List.rev (helper [] (es.espre, [], [], []) (es.espre, [], es.esprog, es.espost))

(*
 * Cut range specifications in SSA and return `(rspec list) list`
 * The i-th item in the returned list represents the specifications for
 * the i-th cut. Each cut corresponds to one `rspec list` because different
 * prove-with clauses may be used. Note that this function removes all algebraic
 * properties in Icut instructions.
 *)
let cut_rspec rs =
  let rec helper res (precond, before_rev, after_rev, cuts_rev) (pre, visited_rev, prog, post) =
    match prog with
    | [] ->
       let prove_with = List.map (fun e -> Iassume (Etrue, e)) (rprove_with_filter rs.rspwss (precond, cuts_rev, List.rev before_rev)) in
       let spec = { rspre = pre; rsprog = prove_with@(List.rev visited_rev); rspost = post; rspwss = [] } in
       [spec]::res
    | (Icut (_, []))::tl -> helper res (precond, before_rev, after_rev, cuts_rev) (pre, visited_rev, tl, post)
    | (Icut (_, rcuts) as hd)::tl ->
       let specs =
         let visited = List.rev visited_rev in
         let before = List.rev before_rev in
         List.fold_left (
             fun res (e, pwss) ->
             let prove_with = List.map (fun e -> Iassume (Etrue, e)) (rprove_with_filter pwss (precond, cuts_rev, before)) in
             let spec = { rspre = pre; rsprog = prove_with@visited; rspost = e; rspwss = [] } in
             spec::res
           ) [] rcuts in
       helper (specs::res) (precond, after_rev@before_rev, [hd], hd::cuts_rev) (rands (fst (List.split rcuts)), [], tl, post)
    | (Iassume (_e, _) as hd)::tl -> helper res (precond, before_rev, hd::after_rev, cuts_rev) (pre, hd::visited_rev, tl, post)
    | (Ighost _ as hd)::tl -> helper res (precond, before_rev, hd::after_rev, cuts_rev) (pre, hd::visited_rev, tl, post)
    | hd::tl -> helper res (precond, before_rev, after_rev, cuts_rev) (pre, hd::visited_rev, tl, post) in
  List.rev (helper [] (rs.rspre, [], [], []) (rs.rspre, [], rs.rsprog, rs.rspost))


(** Substitution *)

let eexp_of_atomic a =
  match a with
  | Avar v -> Evar v
  | Aconst (_, n) -> Econst n

let rexp_of_atomic a =
  match a with
  | Avar v -> Rvar v
  | Aconst (ty, n) -> Rconst (size_of_typ ty, n)

let rec amap_find_transitive v am =
  if VM.mem v am then match VM.find v am with
                      | Avar v' -> amap_find_transitive v' am
                      | _ as a -> a
  else Avar v

let rec emap_find_transitive v em =
  if VM.mem v em then match VM.find v em with
                      | Evar v' -> emap_find_transitive v' em
                      | _ as e -> e
  else Evar v

let rec rmap_find_transitive v rm =
  if VM.mem v rm then match VM.find v rm with
                      | Rvar v' -> rmap_find_transitive v' rm
                      | _ as e -> e
  else Rvar v

let amap_trans am = VM.fold (fun v _ res -> VM.add v (amap_find_transitive v am) res) am VM.empty

let emap_trans em = VM.fold (fun v _ res -> VM.add v (emap_find_transitive v em) res) em VM.empty

let rmap_trans rm = VM.fold (fun v _ res -> VM.add v (rmap_find_transitive v rm) res) rm VM.empty

let emap_of_amap am = VM.fold (fun v a em -> VM.add v (eexp_of_atomic a) em) am VM.empty

let rmap_of_amap am = VM.fold (fun v a rm -> VM.add v (rexp_of_atomic a) rm) am VM.empty

let get_subst_maps p =
  let rec helper (am, not_assignments) p_rev =
    match p_rev with
    | [] -> (amap_trans am, not_assignments)
    | Imov (v, a)::tl -> helper (VM.add v a am, not_assignments) tl
    | hd::tl -> helper (am, hd::not_assignments) tl in
  let (am, p') = helper (VM.empty, []) (List.rev p) in
  (am, emap_of_amap am, rmap_of_amap am, p')

let get_subst_maps_vpc p =
  let rec helper (am, not_assignments) p_rev =
    match p_rev with
    | [] -> (amap_trans am, not_assignments)
    | Ivpc (v, a)::tl -> helper (VM.add v a am, not_assignments) tl
    | hd::tl -> helper (am, hd::not_assignments) tl in
  let (am, p') = helper (VM.empty, []) (List.rev p) in
  (am, emap_of_amap am, rmap_of_amap am, p')

let subst_maps_of_list vas =
  List.fold_left (fun (am, em, rm) (v, a) -> (VM.add v a am, VM.add v (eexp_of_atomic a) em, VM.add v (rexp_of_atomic a) rm)) (VM.empty, VM.empty, VM.empty) vas

let rec subst_eexp em e =
  match e with
  | Evar v -> if VM.mem v em then VM.find v em
              else e
  | Econst _ -> e
  | Eunop (op, e) -> Eunop (op, subst_eexp em e)
  | Ebinop (op, e1, e2) -> Ebinop (op, subst_eexp em e1, subst_eexp em e2)

let rec subst_rexp rm e =
  match e with
  | Rvar v -> if VM.mem v rm then VM.find v rm
              else e
  | Rconst _ -> e
  | Runop (w, op, e) -> Runop (w, op, subst_rexp rm e)
  | Rbinop (w, op, e1, e2) -> Rbinop (w, op, subst_rexp rm e1, subst_rexp rm e2)
  | Ruext (w, e, i) -> Ruext (w, subst_rexp rm e, i)
  | Rsext (w, e, i) -> Rsext (w, subst_rexp rm e, i)

let rec subst_ebexp em e =
  match e with
  | Etrue -> e
  | Eeq (e1, e2) -> Eeq (subst_eexp em e1, subst_eexp em e2)
  | Eeqmod (e1, e2, ms) -> Eeqmod (subst_eexp em e1, subst_eexp em e2, List.rev (List.rev_map (subst_eexp em) ms))
  | Eand (e1, e2) -> Eand (subst_ebexp em e1, subst_ebexp em e2)

let rec subst_rbexp rm e =
  match e with
  | Rtrue -> e
  | Req (w, e1, e2) -> Req (w, subst_rexp rm e1, subst_rexp rm e2)
  | Rcmp (w, op, e1, e2) -> Rcmp (w, op, subst_rexp rm e1, subst_rexp rm e2)
  | Rneg e -> Rneg (subst_rbexp rm e)
  | Rand (e1, e2) -> Rand (subst_rbexp rm e1, subst_rbexp rm e2)
  | Ror (e1, e2) -> Ror (subst_rbexp rm e1, subst_rbexp rm e2)

let subst_bexp em rm e = (subst_ebexp em (eqn_bexp e), subst_rbexp rm (rng_bexp e))

let subst_lval am lv =
  if VM.mem lv am then match VM.find lv am with
                       | Avar v -> v
                       | Aconst (_, n) -> raise (Failure ("Failed to replace a variable " ^ string_of_var lv ^ " with a constant " ^ Z.to_string n ^ ": a variable is required."))
  else lv

let subst_atomic am a =
  match a with
  | Avar v -> if VM.mem v am then VM.find v am
              else a
  | Aconst _ -> a

let subst_instr am em rm i =
  match i with
  | Imov (v, a) -> Imov (subst_lval am v, subst_atomic am a)
  | Ishl (v, a, n) -> Ishl (subst_lval am v, subst_atomic am a, n)
  | Icshl (vh, vl, a1, a2, n) -> Icshl (subst_lval am vh, subst_lval am vl, subst_atomic am a1, subst_atomic am a2, n)
  | Inondet v -> Inondet (subst_lval am v)
  | Icmov (v, c, a1, a2) -> Icmov (subst_lval am v, subst_atomic am c, subst_atomic am a1, subst_atomic am a2)
  | Inop -> Inop
  | Iadd (v, a1, a2) -> Iadd (subst_lval am v, subst_atomic am a1, subst_atomic am a2)
  | Iadds (c, v, a1, a2) -> Iadds (subst_lval am c, subst_lval am v, subst_atomic am a1, subst_atomic am a2)
  | Iadc (v, a1, a2, y) -> Iadc (subst_lval am v, subst_atomic am a1, subst_atomic am a2, subst_atomic am y)
  | Iadcs (c, v, a1, a2, y) -> Iadcs (subst_lval am c, subst_lval am v, subst_atomic am a1, subst_atomic am a2, subst_atomic am y)
  | Isub (v, a1, a2) -> Isub (subst_lval am v, subst_atomic am a1, subst_atomic am a2)
  | Isubc (c, v, a1, a2) -> Isubc (subst_lval am c, subst_lval am v, subst_atomic am a1, subst_atomic am a2)
  | Isubb (c, v, a1, a2) -> Isubb (subst_lval am c, subst_lval am v, subst_atomic am a1, subst_atomic am a2)
  | Isbc (v, a1, a2, y) -> Isbc (subst_lval am v, subst_atomic am a1, subst_atomic am a2, subst_atomic am y)
  | Isbcs (c, v, a1, a2, y) -> Isbcs (subst_lval am c, subst_lval am v, subst_atomic am a1, subst_atomic am a2, subst_atomic am y)
  | Isbb (v, a1, a2, y) -> Isbb (subst_lval am v, subst_atomic am a1, subst_atomic am a2, subst_atomic am y)
  | Isbbs (c, v, a1, a2, y) -> Isbbs (subst_lval am c, subst_lval am v, subst_atomic am a1, subst_atomic am a2, subst_atomic am y)
  | Imul (v, a1, a2) -> Imul (subst_lval am v, subst_atomic am a1, subst_atomic am a2)
  | Imuls (c, v, a1, a2) -> Imuls (subst_lval am c, subst_lval am v, subst_atomic am a1, subst_atomic am a2)
  | Imull (vh, vl, a1, a2) -> Imull (subst_lval am vh, subst_lval am vl, subst_atomic am a1, subst_atomic am a2)
  | Imulj (v, a1, a2) -> Imulj (subst_lval am v, subst_atomic am a1, subst_atomic am a2)
  | Isplit (vh, vl, a, n) -> Isplit (subst_lval am vh, subst_lval am vl, subst_atomic am a, n)
  | Iand (v, a1, a2) -> Iand (subst_lval am v, subst_atomic am a1, subst_atomic am a2)
  | Ior (v, a1, a2) -> Ior (subst_lval am v, subst_atomic am a1, subst_atomic am a2)
  | Ixor (v, a1, a2) -> Ixor (subst_lval am v, subst_atomic am a1, subst_atomic am a2)
  | Inot (v, a) -> Inot (subst_lval am v, subst_atomic am a)
  | Icast (od, v, a) -> Icast (apply_to_some (subst_lval am) od, subst_lval am v, subst_atomic am a)
  | Ivpc (v, a) -> Ivpc (subst_lval am v, subst_atomic am a)
  | Ijoin (v, ah, al) -> Ijoin (subst_lval am v, subst_atomic am ah, subst_atomic am al)
  | Iassert e -> Iassert (subst_bexp em rm e)
  | Iassume e -> Iassume (subst_bexp em rm e)
  | Icut (ecuts, rcuts) -> Icut (map_fst (fun e -> subst_ebexp em e) ecuts, map_fst (fun e -> subst_rbexp rm e) rcuts)
  | Ighost (vs, e) -> Ighost (VS.of_list (List.map (subst_lval am) (VS.elements vs)), subst_bexp em rm e)

let subst_program am em rm p = List.map (subst_instr am em rm) p

let subst_lined_program am em rm p = List.map (fun (lno, i) -> lno, subst_instr am em rm i) p

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


(** Assignment rewriting for SSA programs *)

let rewrite_mov_ssa_spec spec =
  let (am, em, rm, prog') = get_subst_maps spec.sprog in
  { spre = spec.spre;
    sprog = subst_program am em rm prog';
    spost = subst_bexp em rm spec.spost;
    sepwss = spec.sepwss; srpwss = spec.srpwss }

let rewrite_vpc_ssa_spec spec =
 let (am, em, rm, prog') = get_subst_maps_vpc spec.sprog in
  { spre = spec.spre;
    sprog = subst_program am em rm prog';
    spost = subst_bexp em rm spec.spost;
    sepwss = spec.sepwss; srpwss = spec.srpwss }


(** Slicing *)

module AtomicHashType =
  struct
    type t = atomic
    let equal = eq_atomic
    let hash = Hashtbl.hash
  end

module AtomicHashtbl = Hashtbl.Make (AtomicHashType)

type 'a atomichash_t = 'a AtomicHashtbl.t

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
  vars_sat (fun vars e -> VS.disjoint vars (vars_eexp e))
           (fun vars e -> VS.union vars (vars_eexp e)) vars es
let ebexp_vars_sat vars e =
  vars_sat (fun vars e -> VS.disjoint vars (vars_ebexp e))
           (fun vars e -> VS.union vars (vars_ebexp e)) vars (split_eand e)
let rbexp_vars_sat vars e =
  vars_sat (fun vars e -> VS.disjoint vars (vars_rbexp e))
           (fun vars e -> VS.union vars (vars_rbexp e)) vars (split_rand e)
let bexp_vars_sat vars e =
  let vars1 = ebexp_vars_sat vars (eqn_bexp e) in
  let vars2 = rbexp_vars_sat vars1 (rng_bexp e) in
  vars2

let rec vids_sat_rec b f vars es =
  match es with
  | [] -> vars
  | hd::tl -> if b vars hd then vids_sat_rec b f vars tl
              else vids_sat_rec b f (f vars hd) tl
let rec vids_sat b f vars es =
  let vars' = vids_sat_rec b f vars es in
  if IS.cardinal vars' > IS.cardinal vars then vids_sat b f vars' es
  else vars'
let eexp_vids_sat vars es =
  vids_sat (fun vars e -> IS.disjoint vars (vids_eexp e))
           (fun vars e -> IS.union vars (vids_eexp e)) vars es
let ebexp_vids_sat vars e =
  vids_sat (fun vars e -> IS.disjoint vars (vids_ebexp e))
           (fun vars e -> IS.union vars (vids_ebexp e)) vars (split_eand e)
let rbexp_vids_sat vars e =
  vids_sat (fun vars e -> IS.disjoint vars (vids_rbexp e))
           (fun vars e -> IS.union vars (vids_rbexp e)) vars (split_rand e)
let bexp_vids_sat vars e =
  let vars1 = ebexp_vids_sat vars (eqn_bexp e) in
  let vars2 = rbexp_vids_sat vars1 (rng_bexp e) in
  vars2

let rec slice_ebexp vars e =
  match e with
  | Etrue -> e
  | Eeq (e1, e2) -> if VS.disjoint vars (vars_eexp e1) && VS.disjoint vars (vars_eexp e2) then Etrue
                    else e
  | Eeqmod (e1, e2, ps) -> if VS.disjoint vars (vars_eexp e1) && VS.disjoint vars (vars_eexp e2) && (List.for_all (VS.disjoint vars) (List.rev (List.rev_map vars_eexp ps))) then Etrue
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
  | Req (_w, e1, e2) -> if VS.disjoint vars (vars_rexp e1) && VS.disjoint vars (vars_rexp e2) then Rtrue
                        else e
  | Rcmp (_w, _op, e1, e2) -> if VS.disjoint vars (vars_rexp e1) && VS.disjoint vars (vars_rexp e2) then Rtrue
                              else e
  | Rneg e' -> if VS.disjoint vars (vars_rbexp e') then Rtrue
               else e
  | Rand (e1, e2) ->
     begin
       match slice_rbexp vars e1, slice_rbexp vars e2 with
       | Rtrue, Rtrue -> Rtrue
       | e1, Rtrue -> e1
       | Rtrue, e2 -> e2
       | e1, e2 -> Rand (e1, e2)
     end
  | Ror (e1, e2) -> if VS.disjoint vars (vars_rbexp e1) && VS.disjoint vars (vars_rbexp e2) then Rtrue
                    else e

let slice_bexp vars e = (slice_ebexp vars (eqn_bexp e), slice_rbexp vars (rng_bexp e))

let find_dep_vars dep_hash v =
  if AtomicHashtbl.mem dep_hash (Avar v) then
    AtomicHashtbl.find dep_hash (Avar v)
  else
    VS.empty

let mk_var_dep_hash p =
  let dep_hash = AtomicHashtbl.create 103 in
  let update_dep_hash lvs rvs v =
    let _ = assert (not (AtomicHashtbl.mem dep_hash (Avar v))) in
    let deps = VS.fold (fun rv ret ->
                   if AtomicHashtbl.mem dep_hash (Avar rv) then
                     VS.union ret (AtomicHashtbl.find dep_hash (Avar rv))
                   else ret) rvs (VS.union lvs rvs) in
    AtomicHashtbl.add dep_hash (Avar v) deps in
  let helper instr =
    let lvs = lvs_instr instr in
    let rvs = rvs_instr instr in
    VS.iter (update_dep_hash lvs rvs) lvs in
  let _ = List.iter helper p in
  dep_hash

(*
 * Slice a program according to a specified initial set of variables.
 * The set of variables will be increased during slicing.
 * The program should not contain any Icut.
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
         | Icut _ -> failwith ("A program with Icut cannot be sliced.")
         | Ighost (vs, e) -> if VS.disjoint vars vs then helper vars res tl
                              else helper (VS.union vars (vars_bexp e)) (hd::res) tl
         | _ ->
            if VS.disjoint (lvs_instr hd) vars then helper vars res tl
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
         | Icut _ -> failwith ("A program with Icut cannot be sliced.")
         | Ighost (vs, e) -> let e' = slice_bexp vars e in
                             helper vars (if e' = btrue then res else Ighost (vs, e')::res) tl
         | _ ->
            if VS.disjoint (lvs_instr hd) vars then helper vars res tl
            else helper vars (hd::res) tl
       end in
  helper vars [] (List.rev p)

let program_vars_sat vars p_rev =
  vars_sat (fun vars i -> match i with
                          | Iassert _ -> true
                          | Iassume _ -> false
                          | Icut _ -> failwith ("A program with Icut cannot be sliced.")
                          | Ighost _ -> false
                          | _ -> VS.disjoint vars (lvs_instr i))
           (fun vars i -> match i with
                          | Iassert _ -> failwith "Iassert should not appear in program_vars_sat"
                          | Iassume e -> bexp_vars_sat vars e
                          | Icut _ -> failwith "Icut should not appear in program_vars_sat"
                          | Ighost (_vs, e) -> bexp_vars_sat vars e
                          | _ -> VS.union vars (vars_instr i))
           vars p_rev

let rec program_pre_vars_sat vars pre_vars_sat pre p_rev =
  let vars' = program_vars_sat vars p_rev in
  let vars' = pre_vars_sat vars' pre in
  if VS.cardinal vars' > VS.cardinal vars then program_pre_vars_sat vars' pre_vars_sat pre p_rev
  else vars'

let program_vids_sat vars p_rev =
  vids_sat (fun vars i -> match i with
                          | Iassert _ -> true
                          | Iassume _ -> false
                          | Icut _ -> failwith ("A program with Icut cannot be sliced.")
                          | Ighost _ -> false
                          | _ -> IS.disjoint vars (lvids_instr i))
           (fun vars i -> match i with
                          | Iassert _ -> failwith "Iassert should not appear in program_vars_sat"
                          | Iassume e -> bexp_vids_sat vars e
                          | Icut _ -> failwith "Icut should not appear in program_vars_sat"
                          | Ighost (_vs, e) -> bexp_vids_sat vars e
                          | _ -> IS.union vars (vids_instr i))
           vars p_rev

let rec program_pre_vids_sat vars pre_vids_sat pre p_rev =
  let vars' = program_vids_sat vars p_rev in
  let vars' = pre_vids_sat vars' pre in
  if IS.cardinal vars' > IS.cardinal vars then program_pre_vids_sat vars' pre_vids_sat pre p_rev
  else vars'

(*
 * Consider the following instruction:
 *   bvUaddC carry_i x_j .. ..
 * If x_j is in the set of relevant variables, carry_i will also be added to the set
 * because there may be some assumption about the value of carry_i and
 * x_j depends whether carry_i is zero or one.
 *)
let slice_spec_ssa s hashopt =
  let vars =
    match hashopt with
    | Some dep_hash ->
       let root_vars = vars_bexp s.spost in
       let program_vars =
         VS.fold (fun v ret -> VS.union ret (find_dep_vars dep_hash v))
           root_vars root_vars in
       bexp_vars_sat program_vars s.spre
    | None -> program_pre_vars_sat (vars_bexp s.spost)
                bexp_vars_sat s.spre (List.rev s.sprog) in
  let p = slice_program_ssa vars s.sprog in
  let pre = slice_bexp vars s.spre in
  { spre = pre; sprog = p; spost = s.spost; srpwss = s.srpwss; sepwss = s.sepwss }

let slice_espec_ssa s hashopt =
  let vars =
    match hashopt with
    | Some dep_hash ->
       let root_vars = vars_ebexp s.espost in
       let program_vars =
         VS.fold (fun v ret -> VS.union ret (find_dep_vars dep_hash v))
           root_vars root_vars in
       ebexp_vars_sat program_vars s.espre
    | None -> program_pre_vars_sat (vars_ebexp s.espost)
                ebexp_vars_sat s.espre (List.rev s.esprog) in
  let p = slice_program_ssa vars s.esprog in
  let pre = slice_ebexp vars s.espre in
  { espre = pre; esprog = p; espost = s.espost; espwss = s.espwss }

let slice_rspec_ssa s hashopt =
  let vars =
    match hashopt with
    | Some dep_hash ->
       let root_vars = vars_rbexp s.rspost in
       let program_vars =
         VS.fold (fun v ret -> VS.union ret (find_dep_vars dep_hash v))
           root_vars root_vars in
       rbexp_vars_sat program_vars s.rspre
    | None ->
       program_pre_vars_sat (vars_rbexp s.rspost)
         rbexp_vars_sat s.rspre (List.rev s.rsprog) in
  let p = slice_program_ssa vars s.rsprog in
  let pre = slice_rbexp vars s.rspre in
  { rspre = pre; rsprog = p; rspost = s.rspost; rspwss = s.rspwss }


(** Auto-casting *)

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
      else ([Icast (None, v', Avar v)], v')

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
    else ([Icast (None, v, Aconst (nty, n))], Avar v)

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
  | Iadc (v, a1, a2, y) -> let (casts1, a1) = auto_cast_atomic ~preserve:preserve t v.vtyp a1 in
                           let (casts2, a2) = auto_cast_atomic ~preserve:preserve t v.vtyp a2 in
                           let (casts, y) = auto_cast_atomic ~preserve:preserve t bit_t y in
                           casts1@casts2@casts@[Iadc (v, a1, a2, y)]
  | Iadcs (c, v, a1, a2, y) -> let (casts1, a1) = auto_cast_atomic ~preserve:preserve t v.vtyp a1 in
                               let (casts2, a2) = auto_cast_atomic ~preserve:preserve t v.vtyp a2 in
                               let (casts, y) = auto_cast_atomic ~preserve:preserve t bit_t y in
                               casts1@casts2@casts@[Iadcs (c, v, a1, a2, y)]
  | Isub (v, a1, a2) -> let (casts1, a1) = auto_cast_atomic ~preserve:preserve t v.vtyp a1 in
                        let (casts2, a2) = auto_cast_atomic ~preserve:preserve t v.vtyp a2 in
                        casts1@casts2@[Isub (v, a1, a2)]
  | Isubc (c, v, a1, a2) -> let (casts1, a1) = auto_cast_atomic ~preserve:preserve t v.vtyp a1 in
                            let (casts2, a2) = auto_cast_atomic ~preserve:preserve t v.vtyp a2 in
                            casts1@casts2@[Isubc (c, v, a1, a2)]
  | Isubb (c, v, a1, a2) -> let (casts1, a1) = auto_cast_atomic ~preserve:preserve t v.vtyp a1 in
                            let (casts2, a2) = auto_cast_atomic ~preserve:preserve t v.vtyp a2 in
                            casts1@casts2@[Isubb (c, v, a1, a2)]
  | Isbc (v, a1, a2, y) -> let (casts1, a1) = auto_cast_atomic ~preserve:preserve t v.vtyp a1 in
                           let (casts2, a2) = auto_cast_atomic ~preserve:preserve t v.vtyp a2 in
                           let (casts, y) = auto_cast_atomic ~preserve:preserve t bit_t y in
                           casts1@casts2@casts@[Isbc (v, a1, a2, y)]
  | Isbcs (c, v, a1, a2, y) -> let (casts1, a1) = auto_cast_atomic ~preserve:preserve t v.vtyp a1 in
                               let (casts2, a2) = auto_cast_atomic ~preserve:preserve t v.vtyp a2 in
                               let (casts, y) = auto_cast_atomic ~preserve:preserve t bit_t y in
                               casts1@casts2@casts@[Isbcs (c, v, a1, a2, y)]
  | Isbb (v, a1, a2, y) -> let (casts1, a1) = auto_cast_atomic ~preserve:preserve t v.vtyp a1 in
                           let (casts2, a2) = auto_cast_atomic ~preserve:preserve t v.vtyp a2 in
                           let (casts, y) = auto_cast_atomic ~preserve:preserve t bit_t y in
                           casts1@casts2@casts@[Isbb (v, a1, a2, y)]
  | Isbbs (c, v, a1, a2, y) -> let (casts1, a1) = auto_cast_atomic ~preserve:preserve t v.vtyp a1 in
                               let (casts2, a2) = auto_cast_atomic ~preserve:preserve t v.vtyp a2 in
                               let (casts, y) = auto_cast_atomic ~preserve:preserve t bit_t y in
                               casts1@casts2@casts@[Isbbs (c, v, a1, a2, y)]
  | Imul (v, a1, a2) -> let (casts1, a1) = auto_cast_atomic ~preserve:preserve t v.vtyp a1 in
                        let (casts2, a2) = auto_cast_atomic ~preserve:preserve t v.vtyp a2 in
                        casts1@casts2@[Imul (v, a1, a2)]
  | Imuls (c, v, a1, a2) -> let (casts1, a1) = auto_cast_atomic ~preserve:preserve t v.vtyp a1 in
                            let (casts2, a2) = auto_cast_atomic ~preserve:preserve t v.vtyp a2 in
                            casts1@casts2@[Imuls (c, v, a1, a2)]
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
  | Icast (_, _, _) -> [i]
  | Ivpc (_, _) -> [i]
  | Ijoin (v, ah, al) -> let (castsh, ah) = auto_cast_atomic ~preserve:preserve t v.vtyp ah in
                         let (castsl, al) = auto_cast_atomic ~preserve:preserve t (typ_to_unsigned v.vtyp) al in
                         castsh@castsl@[Ijoin (v, ah, al)]
  (* Specifications *)
  | Iassert _e -> [i]
  | Iassume _e -> [i]
  | Icut _ -> [i]
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
  method vlined_program : lined_program -> lined_program vaction
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
  method vlined_program _p = DoChildren
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
        | Eeqmod (e1, e2, ms) -> Eeqmod (visit_eexp visitor e1, visit_eexp visitor e2, List.rev (List.rev_map (visit_eexp visitor) ms))
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
        | Iadc (v, a1, a2, y) -> Iadc (visit_var visitor v, visit_atomic visitor a1, visit_atomic visitor a2, visit_atomic visitor y)
        | Iadcs (c, v, a1, a2, y) -> Iadcs (visit_var visitor c, visit_var visitor v, visit_atomic visitor a1, visit_atomic visitor a2, visit_atomic visitor y)
        | Isub (v, a1, a2) -> Isub (visit_var visitor v, visit_atomic visitor a1, visit_atomic visitor a2)
        | Isubc (c, v, a1, a2) -> Isubc (visit_var visitor c, visit_var visitor v, visit_atomic visitor a1, visit_atomic visitor a2)
        | Isubb (c, v, a1, a2) -> Isubb (visit_var visitor c, visit_var visitor v, visit_atomic visitor a1, visit_atomic visitor a2)
        | Isbc (v, a1, a2, y) -> Isbc (visit_var visitor v, visit_atomic visitor a1, visit_atomic visitor a2, visit_atomic visitor y)
        | Isbcs (c, v, a1, a2, y) -> Isbcs (visit_var visitor c, visit_var visitor v, visit_atomic visitor a1, visit_atomic visitor a2, visit_atomic visitor y)
        | Isbb (v, a1, a2, y) -> Isbb (visit_var visitor v, visit_atomic visitor a1, visit_atomic visitor a2, visit_atomic visitor y)
        | Isbbs (c, v, a1, a2, y) -> Isbbs (visit_var visitor c, visit_var visitor v, visit_atomic visitor a1, visit_atomic visitor a2, visit_atomic visitor y)
        | Imul (v, a1, a2) -> Imul (visit_var visitor v, visit_atomic visitor a1, visit_atomic visitor a2)
        | Imuls (c, v, a1, a2) -> Imuls (visit_var visitor c, visit_var visitor v, visit_atomic visitor a1, visit_atomic visitor a2)
        | Imull (vh, vl, a1, a2) -> Imull (visit_var visitor vh, visit_var visitor vl, visit_atomic visitor a1, visit_atomic visitor a2)
        | Imulj (v, a1, a2) -> Imulj (visit_var visitor v, visit_atomic visitor a1, visit_atomic visitor a2)
        | Isplit (vh, vl, a, n) -> Isplit (visit_var visitor vh, visit_var visitor vl, visit_atomic visitor a, n)
        (* Instructions that cannot be translated to polynomials *)
        | Iand (v, a1, a2) -> Iand (visit_var visitor v, visit_atomic visitor a1, visit_atomic visitor a2)
        | Ior (v, a1, a2) -> Ior (visit_var visitor v, visit_atomic visitor a1, visit_atomic visitor a2)
        | Ixor (v, a1, a2) -> Ixor (visit_var visitor v, visit_atomic visitor a1, visit_atomic visitor a2)
        | Inot (v, a) -> Inot (visit_var visitor v, visit_atomic visitor a)
        (* Type conversions *)
        | Icast (od, v, a) -> Icast (apply_to_some (visit_var visitor) od, visit_var visitor v, visit_atomic visitor a)
        | Ivpc (v, a) -> Ivpc (visit_var visitor v, visit_atomic visitor a)
        | Ijoin (v, ah, al) -> Ijoin (visit_var visitor v, visit_atomic visitor ah, visit_atomic visitor al)
        (* Specifications *)
        | Iassert e -> Iassert (visit_bexp visitor e)
        | Iassume e -> Iassume (visit_bexp visitor e)
        | Icut (ecuts, rcuts) -> Icut (map_fst (visit_ebexp visitor) ecuts, map_fst (visit_rbexp visitor) rcuts)
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

let visit_lined_program visitor p =
  let act = visitor#vlined_program p in
  match act with
  | SkipChildren -> p
  | ChangeTo p' -> p'
  | DoChildren | ChangeDoChildrenPost _ ->
     let (p, f) =
       match act with
       | DoChildren -> (p, id)
       | ChangeDoChildrenPost (p', f) -> (p', f)
       | _ -> failwith ("Never happen") in
     f (List.map (fun (lno, i) -> lno, visit_instr visitor i) p)

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


(** Convert specifications to format that can be accepted by coq-cryptoline *)

(*
 * Cut specifications in SSA. After cutting, prove-with clauses will disappear.
 * Note that cutting only algebra or range side is not supported by this function.
 *)
let cut_spec s =
  let rec helper res (precond, before_rev, after_rev, cuts_rev) (pre, visited_rev, prog, post) =
    match prog with
    | [] ->
       let (eprove_with, rprove_with) =
         let before = List.rev before_rev in
         (List.map (fun e -> Iassume (e, Rtrue)) (eprove_with_filter s.sepwss (eqn_bexp precond, cuts_rev, before)),
          List.map (fun e -> Iassume (Etrue, e)) (rprove_with_filter s.srpwss (rng_bexp precond, cuts_rev, before))) in
       let spec = { spre = pre; sprog = eprove_with@rprove_with@(List.rev visited_rev); spost = post; sepwss = []; srpwss = [] } in
       spec::res
    | (Icut ([], _))::_
      | (Icut (_, []))::_ -> failwith("The function cut_spec cannot cut single algebra or range side")
    | (Icut (ecuts, rcuts) as hd)::tl ->
       let (eposts, epwsss) = List.split ecuts in
       let (rposts, rpwsss) = List.split rcuts in
       let cut_post = (eands eposts, rands rposts) in
       let (eprove_with, rprove_with) =
         let before = List.rev before_rev in
         (List.map (fun e -> Iassume (e, Rtrue)) (eprove_with_filter (List.flatten epwsss) (eqn_bexp precond, cuts_rev, before)),
          List.map (fun e -> Iassume (Etrue, e)) (rprove_with_filter (List.flatten rpwsss) (rng_bexp precond, cuts_rev, before))) in
       let spec = { spre = pre; sprog = eprove_with@rprove_with@(List.rev visited_rev); spost = cut_post; sepwss = []; srpwss = [] } in
       helper (spec::res) (precond, after_rev@before_rev, [hd], hd::cuts_rev) (cut_post, [], tl, post)
    | (Iassume _ as hd)::tl -> helper res (precond, before_rev, hd::after_rev, cuts_rev) (pre, hd::visited_rev, tl, post)
    | (Ighost _ as hd)::tl -> helper res (precond, before_rev, hd::after_rev, cuts_rev) (pre, hd::visited_rev, tl, post)
    | hd::tl -> helper res (precond, before_rev, after_rev, cuts_rev) (pre, hd::visited_rev, tl, post) in
  List.rev (helper [] (s.spre, [], [], []) (s.spre, [], s.sprog, s.spost))

(*
 * Make an assertion a single specification and remove assertions.
 * Assume the input specification is in SSA form.
 * Note that this function does not handle cut instructions.
 *)
let separate_assertions s =
  let rec helper res visited_rev instrs =
    match instrs with
    | [] ->
       (* add the input spec with assertion removed *)
       { spre = s.spre; sprog = List.rev visited_rev; spost = s.spost; sepwss = s.sepwss; srpwss = s.srpwss }::res
    | (Iassert e)::tl ->
       helper ({ spre = s.spre; sprog = List.rev visited_rev; spost = e; sepwss = []; srpwss = [] }::res)
         visited_rev tl
    | hd::tl -> helper res (hd::visited_rev) tl in
  helper [] [] s.sprog

(* Move assertions to postcondition. Assume the input specification is in SSA form. *)
let move_asserts s =
  let bexp_of_assert i =
    match i with
    | Iassert e -> e
    | _ -> assert false in
  let (es, is) = List.partition is_assert s.sprog in
  let post = band (bands (List.map bexp_of_assert es)) s.spost in
  { spre = s.spre;
    sprog = is;
    spost = post;
    sepwss = s.sepwss;
    srpwss = s.srpwss }

let infer_input_variables s =
  let vars_used = VS.union (vars_program s.sprog) (vars_bexp s.spost) in
  let vars_defined = VS.union (lvs_program s.sprog) (gvs_program s.sprog) in
  VS.union (vars_bexp s.spre) (VS.diff vars_used vars_defined)

(* Change all ghost instructions to assume instructions. *)
let ghost_to_assume s =
  let helper i =
    match i with
    | Ighost (vs, e) -> List.rev ((Iassume e)::(VS.fold (fun v instrs_rev -> (Inondet v)::instrs_rev) vs []))
    | _ -> [i] in
  { spre = s.spre;
    sprog  = Utils.tflatten (List.rev_map helper (List.rev s.sprog));
    spost = s.spost;
    sepwss = s.sepwss;
    srpwss = s.srpwss }

let spec_to_coqcryptoline s =
  (ssa_spec s)
  |> (if !Options.Std.apply_rewriting then rewrite_mov_ssa_spec else Fun.id)
  |> ghost_to_assume
  |> cut_spec
  |> List.rev_map move_asserts
  |> List.rev


(** Convert specifications to BvCryptoLine format. *)

exception UnsupportedException of string
exception EvaluationException of string

let rec is_eexp_over_const e =
  match e with
  | Evar _ -> false
  | Econst _ -> true
  | Eunop (_, e) -> is_eexp_over_const e
  | Ebinop (_, e1, e2) -> (is_eexp_over_const e1) && (is_eexp_over_const e2)
let rec eval_eexp_const e =
  match e with
  | Evar v -> raise (EvaluationException ("Variable " ^ string_of_var v ^ " is not a constant."))
  | Econst n -> n
  | Eunop (op, e) -> let v = eval_eexp_const e in
                     (match op with
                      | Eneg -> Z.neg v)
  | Ebinop (op, e1, e2) -> let v1 = eval_eexp_const e1 in
                           let v2 = eval_eexp_const e2 in
                           (match op with
                            | Eadd -> Z.add v1 v2
                            | Esub -> Z.sub v1 v2
                            | Emul -> Z.mul v1 v2
                            | Epow -> Z.pow v1 (Z.to_int v2))
let rec is_rexp_over_const e =
  match e with
  | Rvar _ -> false
  | Rconst _ -> true
  | Runop (_, _, e) -> is_rexp_over_const e
  | Rbinop (_, _, e1, e2) -> (is_rexp_over_const e1) && (is_rexp_over_const e2)
  | Ruext (_, e, _)
    | Rsext (_, e, _) -> is_rexp_over_const e
let rec eval_rexp_const e =
  match e with
  | Rvar v -> raise (EvaluationException ("Variable " ^ string_of_var v ^ " is not a constant."))
  | Rconst (w, n) -> bits_of_z w n
  | Runop (_, op, e) -> let v = eval_rexp_const e in
                        (match op with
                         | Rnegb -> negB v
                         | Rnotb -> invB v)
  | Rbinop (_, op, e1, e2) -> let v1 = eval_rexp_const e1 in
                              let v2 = eval_rexp_const e2 in
                              (match op with
                               | Radd -> addB v1 v2
                               | Rsub -> subB v1 v2
                               | Rmul -> mulB v1 v2
                               | Rumod -> uremB v1 v2
                               | Rsrem -> sremB v1 v2
                               | Rsmod -> smodB v1 v2
                               | Randb -> andB v1 v2
                               | Rorb -> orB v1 v2
                               | Rxorb -> xorB v1 v2
                               | Rshl -> shlBB v1 v2
                               | Rlshr -> shrBB v1 v2
                               | Rashr -> sarBB v1 v2)
  | Ruext (_, e, i) -> let v = eval_rexp_const e in
                       zext i v
  | Rsext (_, e, i) -> let v = eval_rexp_const e in
                       sext i v
let bvcryptoline_of_var v = string_of_var v
let bvcryptoline_of_eunop op =
  match op with
  | Eneg -> "bveneg"
let bvcryptoline_of_ebinop op =
  match op with
  | Eadd -> "bveadd"
  | Esub -> "bvesub"
  | Emul -> "bvemul"
  | Epow -> raise (UnsupportedException "Exponential operator is not supported by BvCryptoLine.")
let rec bvcryptoline_of_eexp e =
  match e with
  | Evar v -> Printf.sprintf "(bvevar %s)" (bvcryptoline_of_var v)
  | Econst n -> Printf.sprintf "(bveconst %s%%Z)" (Z.to_string n)
  | Eunop (op, e) -> Printf.sprintf "(%s %s)" (bvcryptoline_of_eunop op) (bvcryptoline_of_eexp e)
  | Ebinop (Epow, e1, e2) when (is_eexp_over_const e1) && (is_eexp_over_const e2) ->
     let v = eval_eexp_const e in
     bvcryptoline_of_eexp (Econst v)
  | Ebinop (Epow, e1, e2) when (is_eexp_over_const e2) ->
     let n = eval_eexp_const e2 in
     bvcryptoline_of_eexp (emuls (List.init (Z.to_int n) (fun _ -> e1)))
  | Ebinop (op, e1, e2) -> Printf.sprintf "(%s %s %s)" (bvcryptoline_of_ebinop op) (bvcryptoline_of_eexp e1) (bvcryptoline_of_eexp e2)
let rec bvcryptoline_of_ebexp e =
  match e with
  | Etrue -> "bveTrue"
  | Eeq (e1, e2) -> Printf.sprintf "(bveEq %s %s)" (bvcryptoline_of_eexp e1) (bvcryptoline_of_eexp e2)
  | Eeqmod (e1, e2, ms) ->
     begin
       match ms with
       | [] -> bvcryptoline_of_ebexp (Eeq (e1, e2))
       | m::[] -> Printf.sprintf "(bveEqMod %s %s %s)" (bvcryptoline_of_eexp e1) (bvcryptoline_of_eexp e2) (bvcryptoline_of_eexp m)
       | _ -> raise (UnsupportedException "Multi-moduli is not supported by BvCryptoLine.")
     end
  | Eand (e1, e2) -> Printf.sprintf "(bveAnd %s %s)" (bvcryptoline_of_ebexp e1) (bvcryptoline_of_ebexp e2)
let bvcryptoline_of_runop op =
  match op with
  | Rnegb -> raise (UnsupportedException "Two's complement negation is not supported by BvCryptoLine.")
  | Rnotb -> raise (UnsupportedException "Bit-wise NOT is not supported by BvCryptoLine.")
let bvcryptoline_of_rbinop op =
  match op with
  | Radd -> "bvradd"
  | Rsub -> "bvrsub"
  | Rmul -> "bvrmul"
  | Rumod -> raise (UnsupportedException "The unsigned modulo operation over range expressions is not supported by BvCryptoLine.")
  | Rsrem -> raise (UnsupportedException "The 2's complement signed remainder operation over range expressions is not supported by BvCryptoLine.")
  | Rsmod -> raise (UnsupportedException "The 2's complement signed remainder operation over range expressions is not supported by BvCryptoLine.")
  | Randb -> raise (UnsupportedException "The bit-wise AND operation over range expressions is not supported by BvCryptoLine.")
  | Rorb -> raise (UnsupportedException "The bit-wise OR operation over range expressions is not supported by BvCryptoLine.")
  | Rxorb -> raise (UnsupportedException "The bit-wise XOR operation over range expressions is not supported by BvCryptoLine.")
  | Rshl -> raise (UnsupportedException "Shift operations over range expressions are not supported by BvCryptoLine.")
  | Rlshr -> raise (UnsupportedException "Shift operations over range expressions are not supported by BvCryptoLine.")
  | Rashr -> raise (UnsupportedException "Shift operations over range expressions are not supported by BvCryptoLine.")
let bvcryptoline_of_rcmpop op =
  match op with
  | Rult -> "bvult"
  | Rule -> "bvule"
  | Rugt -> "bvugt"
  | Ruge -> "bvuge"
  | Rslt -> raise (UnsupportedException "Signed comparison is not supported by BvCryptoLine.")
  | Rsle -> raise (UnsupportedException "Signed comparison is not supported by BvCryptoLine.")
  | Rsgt -> raise (UnsupportedException "Signed comparison is not supported by BvCryptoLine.")
  | Rsge -> raise (UnsupportedException "Signed comparison is not supported by BvCryptoLine.")
let rec bvcryptoline_of_rexp e =
  match e with
  | Rvar v -> Printf.sprintf "(bvrvar %s)" (bvcryptoline_of_var v)
  | Rconst (_, n) -> if Z.lt n Z.zero then raise (UnsupportedException ("Only unsigned values are supported by BvCryptoLine"))
                     else Printf.sprintf "(bvrposz %s%%Z)" (Z.to_string n)
  | Runop (_, op, e) -> Printf.sprintf "(%s %s)" (bvcryptoline_of_runop op) (bvcryptoline_of_rexp e)
  | Rbinop (_, op, e1, e2) -> Printf.sprintf "(%s %s %s)" (bvcryptoline_of_rbinop op) (bvcryptoline_of_rexp e1) (bvcryptoline_of_rexp e2)
  | Ruext (_, e, i) -> Printf.sprintf "(bvrExt _ %s %d)" (bvcryptoline_of_rexp e) i
  | Rsext _ -> raise (UnsupportedException "Signed extension is not supported by BvCryptoLine.")
let rec bvcryptoline_of_rbexp e =
  match e with
  | Rtrue -> "bvrTrue"
  | Req (w, e1, e2) -> bvcryptoline_of_rbexp (Rand (Rcmp (w, Rule, e1, e2), Rcmp (w, Ruge, e1, e2)))
  | Rcmp (_, op, e1, e2) -> Printf.sprintf "(%s %s %s)" (bvcryptoline_of_rcmpop op) (bvcryptoline_of_rexp e1) (bvcryptoline_of_rexp e2)
  | Rneg _ -> raise (UnsupportedException "Negation over range predicates is not supported by BvCryptoLine.")
  | Rand (e1, e2) -> Printf.sprintf "(bvrand %s %s)" (bvcryptoline_of_rbexp e1) (bvcryptoline_of_rbexp e2)
  | Ror (e1, e2) -> Printf.sprintf "(bvror %s %s)" (bvcryptoline_of_rbexp e1) (bvcryptoline_of_rbexp e2)
let bvcryptoline_of_bexp (e, r) =
  Printf.sprintf "bvands2 [:: %s ] [:: %s ]"
    (e |> split_eand |> List.map bvcryptoline_of_ebexp |> String.concat "; ")
    (r |> split_rand |> List.map bvcryptoline_of_rbexp |> String.concat "; ")
let bvcryptoline_of_atomic a =
  match a with
  | Avar v -> Printf.sprintf "(bvVar %s)" (bvcryptoline_of_var v)
  | Aconst (_, n) -> Printf.sprintf "(bvConst (fromPosZ %s%%Z))" (Z.to_string n)
let bvcryptoline_of_instr i =
  match i with
  | Imov (v, a) -> Printf.sprintf "(bvAssign %s %s)" (bvcryptoline_of_var v) (bvcryptoline_of_atomic a)
  | Ishl (v, a, n) -> Printf.sprintf "(bvShl %s %s %d)" (bvcryptoline_of_var v) (bvcryptoline_of_atomic a) (Z.to_int n)
  | Icshl (vh, vl, a1, a2, n) -> Printf.sprintf "(bvConcatShl %s %s %s %s %d)" (bvcryptoline_of_var vh) (bvcryptoline_of_var vl) (bvcryptoline_of_atomic a1) (bvcryptoline_of_atomic a2) (Z.to_int n)
  | Inondet _ -> raise (UnsupportedException "Instruction nondet is not supported by BvCryptoLine.")
  | Icmov _ -> raise (UnsupportedException "Instruction cmov is not supported by BvCryptoLine.")
  | Inop -> raise (UnsupportedException "Instruction nop is not supported by BvCryptoLine.")
  | Iadd (v, a1, a2) -> Printf.sprintf "(bvAdd %s %s %s)" (bvcryptoline_of_var v) (bvcryptoline_of_atomic a1) (bvcryptoline_of_atomic a2)
  | Iadds (c, v, a1, a2) -> Printf.sprintf "(bvAddC %s %s %s %s)" (bvcryptoline_of_var c) (bvcryptoline_of_var v) (bvcryptoline_of_atomic a1) (bvcryptoline_of_atomic a2)
  | Iadc (v, a1, a2, (Avar y)) -> Printf.sprintf "(bvAdc %s %s %s %s)" (bvcryptoline_of_var v) (bvcryptoline_of_atomic a1) (bvcryptoline_of_atomic a2) (bvcryptoline_of_var y)
  | Iadc (_, _, _, (Aconst _)) -> raise (UnsupportedException ("Adding a carry constant in adc is not supported by BvCryptoLine."))
  | Iadcs (c, v, a1, a2, (Avar y)) -> Printf.sprintf "(bvAdcC %s %s %s %s %s)" (bvcryptoline_of_var c) (bvcryptoline_of_var v) (bvcryptoline_of_atomic a1) (bvcryptoline_of_atomic a2) (bvcryptoline_of_var y)
  | Iadcs (_, _, _, _, (Aconst _)) -> raise (UnsupportedException ("Adding a carry constant in adcs is not supported by BvCryptoLine."))
  | Isub (v, a1, a2) -> Printf.sprintf "(bvSub %s %s %s)" (bvcryptoline_of_var v) (bvcryptoline_of_atomic a1) (bvcryptoline_of_atomic a2)
  | Isubc _ -> raise (UnsupportedException "Instruction subc is not supported by BvCryptoLine.")
  | Isubb (c, v, a1, a2) -> Printf.sprintf "(bvSubC %s %s %s %s)" (bvcryptoline_of_var c) (bvcryptoline_of_var v) (bvcryptoline_of_atomic a1) (bvcryptoline_of_atomic a2)
  | Isbc _ -> raise (UnsupportedException "Instruction sbc is not supported by BvCryptoLine.")
  | Isbcs _ -> raise (UnsupportedException "Instruction sbcs is not supported by BvCryptoLine.")
  | Isbb (v, a1, a2, (Avar y)) -> Printf.sprintf "(bvSbb %s %s %s %s)" (bvcryptoline_of_var v) (bvcryptoline_of_atomic a1) (bvcryptoline_of_atomic a2) (bvcryptoline_of_var y)
  | Isbb (_, _, _, (Aconst _)) -> raise (UnsupportedException ("Subtracting a borrow constant in sbb is not supported by BvCryptoLine."))
  | Isbbs (c, v, a1, a2, (Avar y)) -> Printf.sprintf "(bvSbbC %s %s %s %s %s)" (bvcryptoline_of_var c) (bvcryptoline_of_var v) (bvcryptoline_of_atomic a1) (bvcryptoline_of_atomic a2) (bvcryptoline_of_var y)
  | Isbbs (_, _, _, _, (Aconst _)) -> raise (UnsupportedException ("Subtracting a borrow constant in sbbs is not supported by BvCryptoLine."))
  | Imul (v, a1, a2) -> Printf.sprintf "(bvMul %s %s %s)" (bvcryptoline_of_var v) (bvcryptoline_of_atomic a1) (bvcryptoline_of_atomic a2)
  | Imuls _ -> raise (UnsupportedException "Instruction muls is not supported by BvCryptoLine.")
  | Imull (vh, vl, a1, a2) -> Printf.sprintf "(bvMulf %s %s %s %s)" (bvcryptoline_of_var vh) (bvcryptoline_of_var vl) (bvcryptoline_of_atomic a1) (bvcryptoline_of_atomic a2)
  | Imulj _ -> raise (UnsupportedException "Instruction mulj is not supported by BvCryptoLine.")
  | Isplit (vh, vl, a, n) -> Printf.sprintf "(bvSplit %s %s %s %d)" (bvcryptoline_of_var vh) (bvcryptoline_of_var vl) (bvcryptoline_of_atomic a) (Z.to_int n)
  (* Instructions that cannot be translated to polynomials *)
  | Iand _ -> raise (UnsupportedException "Instruction and is not supported by BvCryptoLine.")
  | Ior _ -> raise (UnsupportedException "Instruction or is not supported by BvCryptoLine.")
  | Ixor _ -> raise (UnsupportedException "Instruction xor is not supported by BvCryptoLine.")
  | Inot _ -> raise (UnsupportedException "Instruction not is not supported by BvCryptoLine.")
  (* Type conversions *)
  | Icast _ -> raise (UnsupportedException "Instruction cast is not supported by BvCryptoLine.")
  | Ivpc _ -> raise (UnsupportedException "Instruction vpc is not supported by BvCryptoLine.")
  | Ijoin _ -> raise (UnsupportedException "Instruction join is not supported by BvCryptoLine.")
  (* Specifications *)
  | Iassert _ -> raise (UnsupportedException "Instruction assert is not supported by BvCryptoLine.")
  | Iassume _ -> raise (UnsupportedException "Instruction assume is not supported by BvCryptoLine.")
  | Icut _ -> raise (UnsupportedException "Instruction cut is not supported by BvCryptoLine.")
  | Ighost _ -> raise (UnsupportedException "Instruction ghost is not supported by BvCryptoLine.")
let bvcryptoline_of_program p = Printf.sprintf "[::\n%s\n]" (List.map bvcryptoline_of_instr p |> String.concat ";\n")
let spec_to_bvcryptoline s =
  let let_var_in i v = Printf.sprintf "let %s := %d in" (bvcryptoline_of_var v) i in
  let preamble =
    "From Coq Require Import ZArith.\n"
    ^ "From mathcomp Require Import ssreflect ssrbool ssrnat seq.\n"
    ^ "From Common Require Import Var Bits.\n"
    ^ "From mQhasm Require Import bvDSL bvVerify Options zVerify.\n"
    ^ "Set Implicit Arguments.\n"
    ^ "Unset Strict Implicit.\n"
    ^ "Import Prenex Implicits.\n"
    ^ "Open Scope N_scope.\n"
    ^ "Open Scope bvdsl_scope." in
  let define_inputs vs =
    "Definition input_variables :=\n"
    ^ String.concat "\n" (List.mapi let_var_in vs)
    ^ "\n"
    ^ "VSLemmas.OP.P.of_list [:: " ^ String.concat "; " (List.map bvcryptoline_of_var vs) ^ " ]." in
  let define_spec vs s =
    let define_vars vs = String.concat "\n" (List.mapi let_var_in vs) in
    let define_precondition e = Printf.sprintf "let precondition := \n%s in" (bvcryptoline_of_bexp e) in
    let define_program p = Printf.sprintf "let program := \n%s in" (bvcryptoline_of_program p) in
    let define_postcondition e = Printf.sprintf "let postcondition := \n%s in" (bvcryptoline_of_bexp e) in
    String.concat "\n" [
        "Definition specification :=";
        (define_vars vs);
        (define_precondition s.spre);
        (define_program s.sprog);
        (define_postcondition s.spost);
        "{| spre := precondition;";
        "   sprog := program;";
        "   spost := postcondition |}."
      ] in
  let define_lemma =
    String.concat "\n" [
        "Lemma specification_is_valid : valid_bvspec (input_variables, specification).";
        "Proof.";
        "  time \"valid_specification\" verify_bvspec.";
        "Qed."
      ] in
  let footer = "Close Scope bvdsl_scope.\n"
               ^ "Close Scope N_scope." in
  let helper s =
    let (inputs, others) = let ins = infer_input_variables s in
                           (VS.elements ins, VS.elements (VS.diff (vars_spec s) ins)) in
    let all_vars = List.rev_append (List.rev inputs) others in
    String.concat "\n" [
        preamble;
        "";
        define_inputs inputs;
        "";
        define_spec all_vars s;
        "";
        define_lemma;
        "";
        footer
      ] in
  let _ = let vars = vars_spec s in
          if VS.exists var_is_signed vars then raise (UnsupportedException ("Signed variables are not supported by BvCryptoLine."))
          else let vars' = VS.diff vars (lcarries_program s.sprog) in
               try
                 let w = size_of_var (VS.choose vars') in
                 if VS.exists (fun v -> size_of_var v <> w) vars' then raise (UnsupportedException ("Variables of different widths are not supported by BvCryptoLine."))
               with Not_found ->
                 () in
  (ssa_spec s)
  |> (if !Options.Std.apply_rewriting then rewrite_mov_ssa_spec else Fun.id)
  |> ghost_to_assume
  |> cut_spec
  |> List.rev_map move_asserts
  |> List.rev_map helper


(** Normalization *)

let update_variable_id_var m v =
  let (m', i) = try (m, VM.find v m)
                with Not_found -> let i = incr_global_next_vid () in
                                  let m' = VM.add v i m in
                                  (m', i) in
  let _ = v.vid <- i in
  m'

let rec update_variable_id_eexp m e =
  match e with
  | Evar v -> update_variable_id_var m v
  | Econst _ -> m
  | Eunop (_, e) -> update_variable_id_eexp m e
  | Ebinop (_, e1, e2) -> update_variable_id_eexp (update_variable_id_eexp m e1) e2

let rec update_variable_id_ebexp m e =
  match e with
  | Etrue -> m
  | Eeq (e1, e2) -> update_variable_id_eexp (update_variable_id_eexp m e1) e2
  | Eeqmod (e1, e2, es) -> List.fold_left update_variable_id_eexp (update_variable_id_eexp (update_variable_id_eexp m e1) e2) es
  | Eand (e1, e2) -> update_variable_id_ebexp (update_variable_id_ebexp m e1) e2

let rec update_variable_id_rexp m e =
  match e with
  | Rvar v -> update_variable_id_var m v
  | Rconst _ -> m
  | Runop (_, _, e) -> update_variable_id_rexp m e
  | Rbinop (_, _, e1, e2) -> update_variable_id_rexp (update_variable_id_rexp m e1) e2
  | Ruext (_, e, _)
  | Rsext (_, e, _) -> update_variable_id_rexp m e

let rec update_variable_id_rbexp m e =
  match e with
  | Rtrue -> m
  | Req (_, e1, e2)
  | Rcmp (_, _, e1, e2) -> update_variable_id_rexp (update_variable_id_rexp m e1) e2
  | Rneg e -> update_variable_id_rbexp m e
  | Rand (e1, e2)
  | Ror (e1, e2) -> update_variable_id_rbexp (update_variable_id_rbexp m e1) e2

let update_variable_id_bexp m (e, r) = update_variable_id_rbexp (update_variable_id_ebexp m e) r

let update_variable_id_atomic m a =
  match a with
  | Avar v -> update_variable_id_var m v
  | Aconst _ -> m

let update_variable_id_atomics m atomics = List.fold_left update_variable_id_atomic m atomics

let update_variable_id_instr m i =
  match i with
  | Imov (v, a)
  | Ishl (v, a, _) -> update_variable_id_atomics m [Avar v; a]
  | Icshl (vh, vl, a1, a2, _) -> update_variable_id_atomics m [Avar vh; Avar vl; a1; a2]
  | Inondet v -> update_variable_id_var m v
  | Icmov (v, c, a1, a2) -> update_variable_id_atomics m [Avar v; c; a1; a2]
  | Inop -> m
  | Inot (v, a) -> update_variable_id_atomics m [Avar v; a]
  | Iadd (v, a1, a2) -> update_variable_id_atomics m [Avar v; a1; a2]
  | Iadds (c, v, a1, a2) -> update_variable_id_atomics m [Avar c; Avar v; a1; a2]
  | Iadc (v, a1, a2, y) -> update_variable_id_atomics m [Avar v; a1; a2; y]
  | Iadcs (c, v, a1, a2, y) -> update_variable_id_atomics m [Avar c; Avar v; a1; a2; y]
  | Isub (v, a1, a2) -> update_variable_id_atomics m [Avar v; a1; a2]
  | Isubc (c, v, a1, a2) -> update_variable_id_atomics m [Avar c; Avar v; a1; a2]
  | Isubb (b, v, a1, a2) -> update_variable_id_atomics m [Avar b; Avar v; a1; a2]
  | Isbc (v, a1, a2, y) -> update_variable_id_atomics m [Avar v; a1; a2; y]
  | Isbcs (c, v, a1, a2, y) -> update_variable_id_atomics m [Avar c; Avar v; a1; a2; y]
  | Isbb (v, a1, a2, y) -> update_variable_id_atomics m [Avar v; a1; a2; y]
  | Isbbs (b, v, a1, a2, y) -> update_variable_id_atomics m [Avar b; Avar v; a1; a2; y]
  | Imul (v, a1, a2) -> update_variable_id_atomics m [Avar v; a1; a2]
  | Imuls (vh, vl, a1, a2)
  | Imull (vh, vl, a1, a2) -> update_variable_id_atomics m [Avar vh; Avar vl; a1; a2]
  | Imulj (v, a1, a2) -> update_variable_id_atomics m [Avar v; a1; a2]
  | Isplit (vh, vl, a, _) -> update_variable_id_atomics m [Avar vh; Avar vl; a]
  | Iand (v, a1, a2)
  | Ior (v, a1, a2)
  | Ixor (v, a1, a2) -> update_variable_id_atomics m [Avar v; a1; a2]
  | Icast (od, v, a) ->
     let m' =
       match od with
       | Some v -> update_variable_id_var m v
       | None -> m in
     update_variable_id_atomics m' [Avar v; a]
  | Ivpc (v, a) -> update_variable_id_atomics m [Avar v; a]
  | Ijoin (v, ah, al) -> update_variable_id_atomics m [Avar v; ah; al]
  | Iassert e
  | Iassume e -> update_variable_id_bexp m e
  | Icut (es, rs) -> List.fold_left update_variable_id_rbexp (List.fold_left update_variable_id_ebexp m (fst (List.split es))) (fst (List.split rs))
  | Ighost (vs, e) -> update_variable_id_bexp (VS.fold (fun v m -> update_variable_id_var m v) vs m) e

let update_variable_id_program m p = List.fold_left update_variable_id_instr m p

let update_variable_id_spec m s = update_variable_id_bexp (update_variable_id_program (update_variable_id_bexp m (s.spre)) s.sprog) s.spost

let update_variable_id_espec m s = update_variable_id_ebexp (update_variable_id_program (update_variable_id_ebexp m (s.espre)) s.esprog) s.espost

let update_variable_id_rspec m s = update_variable_id_rbexp (update_variable_id_program (update_variable_id_rbexp m (s.rspre)) s.rsprog) s.rspost

(*
 * Normalize an index. If `n - 1` is the maximal index.
 * `normal n i` is `i` if i is non-negative.
 * `normal n i` is `n + i` if i is negative.
 *)
let normalize_index num id =
  let res =
    if id >= 0 then id
    else num + id in
  if res < 0 then raise (IndexOutOfBound id)
  else res

let normalize_pws num_cuts pws =
  match pws with
  | Cuts ids -> Cuts (List.map (normalize_index num_cuts) ids)
  | _ -> pws

let normalize_epwss num_ecuts (e, pwss) = (e, List.map (normalize_pws num_ecuts) pwss)
let normalize_rpwss num_rcuts (r, pwss) = (r, List.map (normalize_pws num_rcuts) pwss)

(*
 * Normalize program. After normalization:
 * - All indices in prove-with clauses are positive.
 *)
let normalize_program ?num_ecuts ?num_rcuts p =
  let num_ecuts =
    match num_ecuts with
    | None -> List.length (List.filter is_ecut p) + 1
    | Some i -> i in
  let num_rcuts =
    match num_rcuts with
    | None -> List.length (List.filter is_rcut p) + 1
    | Some i -> i in
  (* Convert negative indices to positive indices *)
  let normalize_prove_with p =
    let update_instruction i =
      match i with
      | Icut (espwss, rspwss) ->
         (try
            Icut (List.map (normalize_epwss num_ecuts) espwss, List.map (normalize_rpwss num_rcuts) rspwss)
          with IndexOutOfBound id ->
            failwith("Index out of bound in " ^ string_of_instr i ^ ": " ^ string_of_int id)
         )
      | _ -> i in
    List.rev_map update_instruction (List.rev p) in
  normalize_prove_with p

(**
   [normalize_spec s] normalizes a specification [s]. The followings are
   guaranteed after normalization:
   - Variables IDs are updated.
   - All indices in prove-with clauses are positive.
   @param s a specification
   @return a normalized specification of [s]
 *)
let normalize_spec s =
  (* Update variable IDs. *)
  let _ = update_variable_id_spec VM.empty s in
  (* Note that postcondition is always the last cut. *)
  let (num_ecuts, num_rcuts) = (List.length (List.filter is_ecut s.sprog) + 1, List.length (List.filter is_rcut s.sprog) + 1) in
  let np = normalize_program ~num_ecuts:num_ecuts ~num_rcuts:num_rcuts s.sprog in
  let nepwss =
    try
      List.map (normalize_pws num_ecuts) s.sepwss
    with IndexOutOfBound id ->
      failwith("Index out of bound in algebraic postcondition: " ^ string_of_int id) in
  let nrpwss = try
      List.map (normalize_pws num_rcuts) s.srpwss
    with IndexOutOfBound id ->
      failwith("Index out of bound in range postcondition: " ^ string_of_int id) in
  { spre = s.spre;
    sprog = np;
    spost = s.spost;
    sepwss = nepwss;
    srpwss = nrpwss }

(**
   [normalize_espec s] normalizes an algebraic specification. The followings are
   guaranteed after normalization:
   - Variables IDs are updated.
   - All indices in prove-with clauses are positive.
   @param s an algebraic specification
   @return a normalized specification of [s]
 *)
let normalize_espec s =
  (* Update variable IDs. *)
  let _ = update_variable_id_espec VM.empty s in
  (* Note that postcondition is always the last cut. *)
  let (num_ecuts, num_rcuts) = (List.length (List.filter is_ecut s.esprog) + 1, 0) in
  let np = normalize_program ~num_ecuts:num_ecuts ~num_rcuts:num_rcuts s.esprog in
  let nepwss =
    try
      List.map (normalize_pws num_ecuts) s.espwss
    with IndexOutOfBound id ->
      failwith("Index out of bound in algebraic postcondition: " ^ string_of_int id) in
  { espre = s.espre;
    esprog = np;
    espost = s.espost;
    espwss = nepwss }

(**
   [normalize_rspec s] normalizes a range specification. The followings are
   guaranteed after normalization:
   - Variables IDs are updated.
   - All indices in prove-with clauses are positive.
   @param s a range specification
   @return a normalized specification of [s]
 *)
let normalize_rspec s =
  (* Update variable IDs. *)
  let _ = update_variable_id_rspec VM.empty s in
  (* Note that postcondition is always the last cut. *)
  let (num_ecuts, num_rcuts) = (0, List.length (List.filter is_rcut s.rsprog) + 1) in
  let np = normalize_program ~num_ecuts:num_ecuts ~num_rcuts:num_rcuts s.rsprog in
  let nrpwss =
    try
      List.map (normalize_pws num_rcuts) s.rspwss
    with IndexOutOfBound id ->
      failwith("Index out of bound in range postcondition: " ^ string_of_int id) in
  { rspre = s.rspre;
    rsprog = np;
    rspost = s.rspost;
    rspwss = nrpwss }


(** Trivial Specification *)

let assumes_of_program p =
  List.fold_left (fun res i -> match i with
                               | Iassume e -> e::res
                               | _ -> res) [] (List.rev p)

let eassumes_of_program p = fst (List.split (assumes_of_program p))
let rassumes_of_program p = snd (List.split (assumes_of_program p))

(* Returns true if espost appears in espre. *)
let rec espre_implies_espost espre espost =
  match espre with
  | Eand (e0, e1) ->
     espre_implies_espost e0 espost ||
       espre_implies_espost e1 espost
  | _ -> eq_ebexp espre espost

let rec rspre_implies_rspost re se  =
  match re with
  | Rand (re0, re1) ->
     rspre_implies_rspost re0 se || rspre_implies_rspost re1 se
  | _ -> re = se

let is_epost_trivial epre eassumes epost =
  (epost = Etrue) || (List.exists (fun epre -> espre_implies_espost epre epost) (epre::eassumes))

let is_rpost_trivial rpre rassumes rpost =
  (rpost = Rtrue) || (List.exists (fun rpre -> rspre_implies_rspost rpre rpost) (rpre::rassumes))

let rspost_in_assumes prog rspost =
  List.exists (fun inst ->
      match inst with
      | Iassume (_, r) -> rspre_implies_rspost r rspost
      | _ -> false) prog

(* Returns true if espost appears in some assume instruction in prog. *)
let espost_in_assumes prog espost =
  List.exists (fun inst ->
      match inst with
      | Iassume (e, _) -> espre_implies_espost e espost
      | _ -> false) prog

let is_espec_trivial s =
  (s.espost = Etrue)
  || (espre_implies_espost s.espre s.espost)
  || (espost_in_assumes s.esprog s.espost)

let is_rspec_trivial s =
  (s.rspost = Rtrue)
  || (rspre_implies_rspost s.rspre s.rspost)
  || (rspost_in_assumes s.rsprog s.rspost)

let remove_trivial_epost s =
  let eassumes = eassumes_of_program s.esprog in
  let rec remove_trivial e =
    match e with
    | Etrue -> []
    | Eand (e1, e2) -> (remove_trivial e1)@(remove_trivial e2)
    | _ -> if is_epost_trivial s.espre eassumes e then []
           else [e] in
  { espre = s.espre;
    esprog = s.esprog;
    espost = eands (remove_trivial s.espost);
    espwss = s.espwss }

let remove_trivial_rpost s =
  let rassumes = rassumes_of_program s.rsprog in
  let rec remove_trivial e =
    match e with
    | Rtrue -> []
    | Rand (e1, e2) -> (remove_trivial e1)@(remove_trivial e2)
    | Ror (e1, e2) -> if is_rpost_trivial s.rspre rassumes e1 || is_rpost_trivial s.rspre rassumes e2 then []
                      else [e]
    | _ -> if is_rpost_trivial s.rspre rassumes e then []
           else [e] in
  { rspre = s.rspre;
    rsprog = s.rsprog;
    rspost = rands (remove_trivial s.rspost);
    rspwss = s.rspwss }

let rec split_espec_post s =
  match s.espost with
  | Eand (e1, e2) ->
     let res1 = split_espec_post { espre = s.espre; esprog = s.esprog;
                                espost = e1; espwss = s.espwss } in
     let res2 = split_espec_post { espre = s.espre; esprog = s.esprog;
                                espost = e2; espwss = s.espwss } in
     res1@res2
  | _ -> [s]

let rec split_rspec_post s =
  match s.rspost with
  | Rand (e1, e2) ->
     let res1 = split_rspec_post { rspre = s.rspre; rsprog = s.rsprog;
                                rspost = e1; rspwss = s.rspwss } in
     let res2 = split_rspec_post { rspre = s.rspre; rsprog = s.rsprog;
                                rspost = e2; rspwss = s.rspwss } in
     res1@res2
  | _ -> [s]


(** deSSA *)

class dessa_visitor : visitor =
object (* (self) *)
  method vspec _ = DoChildren
  method vprogram _ = DoChildren
  method vlined_program _ = DoChildren
  method vinstr _ = DoChildren
  method vbexp _ = DoChildren
  method vebexp _ = DoChildren
  method vrbexp _ = DoChildren
  method veexp _ = DoChildren
  method vrexp _ = DoChildren
  method vatomic _ = DoChildren
  method vaconst _ = DoChildren
  method veconst _ = DoChildren
  method vrconst _ = DoChildren
  method vvar v = ChangeTo {
                      vname = v.vname;
                      vtyp = v.vtyp;
                      vsidx = default_non_ssa_idx;
                      vid = v.vid
                    }
end

let dessa_visitor = new dessa_visitor

let dessa_program p = let p = visit_program dessa_visitor p in
                      let _ = update_variable_id_program VM.empty p in
                      p

let dessa_spec s = let s = visit_spec dessa_visitor s in
                   let _ = update_variable_id_spec VM.empty s in
                   s

(** Others *)

let remove_cut_program p = List.filter (fun i -> not (is_cut i)) p

let remove_ecut_program p = List.map
                              (fun i ->
                                match i with
                                | Icut (_, rcuts) -> Icut ([], rcuts)
                                | _ -> i) p

let remove_rcut_program p = List.map
                              (fun i ->
                                match i with
                                | Icut (ecuts, _) -> Icut (ecuts, [])
                                | _ -> i) p

let remove_cut_prove_with_list pwss =
  let is_not_cut p =
    match p with
    | Precondition
      | AllAssumes
      | AllGhosts -> true
    | _ -> false in
  List.filter is_not_cut pwss

let remove_cut_spec s =
  { spre = s.spre;
    sprog = remove_cut_program s.sprog;
    spost = s.spost;
    sepwss = remove_cut_prove_with_list s.sepwss;
    srpwss = remove_cut_prove_with_list s.srpwss }

let remove_ecut_spec s =
  { spre = s.spre;
    sprog = remove_ecut_program s.sprog;
    spost = s.spost;
    sepwss = remove_cut_prove_with_list s.sepwss;
    srpwss = s.srpwss }

let remove_rcut_spec s =
  { spre = s.spre;
    sprog = remove_rcut_program s.sprog;
    spost = s.spost;
    sepwss = s.sepwss;
    srpwss = remove_cut_prove_with_list s.srpwss }
