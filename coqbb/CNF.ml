open BinNat
open BinPos
open Bool
open Datatypes
open DecimalString
open FSets
open Int0
open NBitsDef
open String0
open ZAriths
open Eqtype
open Seq

type __ = Obj.t
let __ = let rec f _ = Obj.repr f in Obj.repr f

type bvar = int

type literal =
| Pos of bvar
| Neg of bvar

(** val eq_lit : literal -> literal -> bool **)

let eq_lit l1 l2 =
  match l1 with
  | Pos n1 ->
    (match l2 with
     | Pos n2 -> eq_op pos_eqType (Obj.magic n1) (Obj.magic n2)
     | Neg _ -> false)
  | Neg n1 ->
    (match l2 with
     | Pos _ -> false
     | Neg n2 -> eq_op pos_eqType (Obj.magic n1) (Obj.magic n2))

(** val lit_eqP : literal -> literal -> reflect **)

let lit_eqP l1 l2 =
  let _evar_0_ = fun _ -> ReflectT in
  let _evar_0_0 = fun _ -> ReflectF in
  if eq_lit l1 l2 then _evar_0_ __ else _evar_0_0 __

(** val lit_eqMixin : literal Equality.mixin_of **)

let lit_eqMixin =
  { Equality.op = eq_lit; Equality.mixin_of__1 = lit_eqP }

(** val lit_eqType : Equality.coq_type **)

let lit_eqType =
  Obj.magic lit_eqMixin

(** val var_tt : int **)

let var_tt =
  1

(** val lit_tt : literal **)

let lit_tt =
  Pos var_tt

(** val lit_ff : literal **)

let lit_ff =
  Neg var_tt

(** val lit_of_bool : bool -> literal **)

let lit_of_bool = function
| true -> lit_tt
| false -> lit_ff

(** val var_of_lit : literal -> bvar **)

let var_of_lit = function
| Pos v -> v
| Neg v -> v

(** val neg_lit : literal -> literal **)

let neg_lit = function
| Pos v -> Neg v
| Neg v -> Pos v

type word = literal list

type clause = literal list

type cnf = clause list

(** val splitlsl : word -> literal * literal list **)

let splitlsl ls =
  split_head lit_ff ls

(** val splitmsl : word -> literal list * literal **)

let splitmsl ls =
  split_last lit_ff ls

(** val droplsl : word -> word **)

let droplsl ls =
  snd (splitlsl ls)

(** val dropmsl : word -> word **)

let dropmsl ls =
  fst (splitmsl ls)

(** val joinlsl : 'a1 -> 'a1 list -> 'a1 list **)

let joinlsl x x0 =
  x :: x0

(** val joinmsl : 'a1 list -> 'a1 -> 'a1 list **)

let joinmsl =
  rcons

(** val msl : word -> literal **)

let msl ls =
  snd (splitmsl ls)

(** val add_prelude : literal list list -> literal list list **)

let add_prelude cs =
  (lit_tt :: []) :: cs

module PS = MakeTreeSet(PositiveOrder)

(** val newline : char list **)

let newline =
  '\n'::[]

(** val vs_of_clause : literal list -> PS.t **)

let vs_of_clause c =
  foldl (fun vs l -> PS.add (Obj.magic var_of_lit l) vs) PS.empty c

(** val vs_of_cnf : literal list list -> PS.t **)

let vs_of_cnf cs =
  foldl (fun vs c -> PS.union (vs_of_clause c) vs) PS.empty cs

(** val num_vars : cnf -> int **)

let num_vars cs =
  PS.fold (fun _ n -> N.add n 1) (vs_of_cnf cs) 0

(** val max_var_of_clause : literal list -> int **)

let max_var_of_clause c =
  foldl (fun m l -> Pos.max m (var_of_lit l)) var_tt c

(** val max_var_of_cnf : literal list list -> int **)

let max_var_of_cnf cs =
  foldl (fun m c -> Pos.max m (max_var_of_clause c)) var_tt cs

(** val num_clauses : cnf -> int **)

let num_clauses cs =
  foldl (fun n _ -> N.add n 1) 0 cs

(** val dimacs_header : cnf -> char list **)

let dimacs_header cs =
  append ('p'::(' '::('c'::('n'::('f'::(' '::[]))))))
    (append (NilEmpty.string_of_uint (N.to_uint (num_vars cs)))
      (append (' '::[])
        (NilEmpty.string_of_uint (N.to_uint (num_clauses cs)))))

(** val diamcs_var : bvar -> char list **)

let diamcs_var v =
  NilEmpty.string_of_uint (Pos.to_uint v)

(** val diamcs_lit : literal -> char list **)

let diamcs_lit = function
| Pos v -> diamcs_var v
| Neg v -> append ('-'::[]) (diamcs_var v)

(** val diamcs_clause : clause -> char list **)

let diamcs_clause c =
  append
    (foldl (fun left l -> append left (append (diamcs_lit l) (' '::[]))) [] c)
    (' '::('0'::[]))

(** val dimacs_cnf : cnf -> char list **)

let dimacs_cnf cs =
  foldl (fun left c -> append left (append (diamcs_clause c) newline)) [] cs

(** val dimacs_cnf_with_header : cnf -> char list **)

let dimacs_cnf_with_header cs =
  append (dimacs_header cs) (append newline (dimacs_cnf cs))
