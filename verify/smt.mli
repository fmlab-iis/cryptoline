
type 'a round_result =
  Solved of Qfbv.Common.result        (** Safety conditions are solved with a result *)
| Unfinished of 'a list               (** Safety conditions that are not finished due to some timed-out safety conditions *) (* *)
(** results in verifying safety conditions incrementally *)

val translate_eeqmod : Cas.var_gen -> Ast.Cryptoline.ebexp -> Cas.var_gen * Ast.Cryptoline.ebexp
(** Convert `eeqmod e1 e2 [m1; m2; ...; mn]` to `e1 - e2 = k1 * m1 + k2 * m2 + ... + kn * mn`
    where k1, k2, ..., kn are new variables of type bit. *)

val bexp_rbexp : Ast.Cryptoline.rbexp -> Qfbv.Common.bexp
(** Convert a range predicate to a QF_BV predicate. *)

val bexp_program : Ast.Cryptoline.program -> Qfbv.Common.bexp list
(** Convert a program to QF_BV predicates. *)

val bexp_instr_safe : Ast.Cryptoline.instr -> Qfbv.Common.bexp
(** Convert the safety condition of an instruction to a QF_BV predicate. *)

val bexp_program_safe_conds :
  Ast.Cryptoline.instr list -> (int * Ast.Cryptoline.instr * Qfbv.Common.bexp) list
(**
   Convert the safety of a program to QF_BV predicates.
   @return [(id1, instr1, e1); ...; (idn, instrn, en)] where [instri] is the
           [idi]-th instruction (instructions that do not have safety conditions
           are not counted) with safety condition [ei]
 *)

val bexp_program_safe : Ast.Cryptoline.instr list -> Qfbv.Common.bexp
(** Convert the safety of a program to a QF_BV predicate, which is the
    conjunction of the safety conditions returned by
    [bexp_program_safe_conds]. *)

val smtlib_var_range : ?expn:bool -> Cas.var_gen -> Ast.Cryptoline.var -> Cas.var_gen * string
(** Construct variable range constraint in SMTLIB *)

val smtlib_var_ranges : ?expn:bool -> Cas.var_gen -> Ast.Cryptoline.var list -> Cas.var_gen * string list
(** Construct variable range constraints in SMTLIB *)

val smtlib_eunop : Ast.Cryptoline.eunop -> string
(** Return the string representation of a unary operator in SMTLIB. *)

val smtlib_ebinop : Ast.Cryptoline.ebinop -> string
(** Return the string representation of a binary operator in SMTLIB. *)

val smtlib_ecmpop : Ast.Cryptoline.ecmpop -> string
(** Return the string representation of a comparison operator in SMTLIB. *)

val smtlib_add : string -> string -> string
(** Construct an integer addition expression. *)

val smtlib_adds : string list -> string
(** Construct an integer addition expression. *)

val smtlib_mul : string -> string -> string
(** Construct an integer multiplication expression. *)

val smtlib_eq : string -> string -> string
(** Construct an equality. *)

val smtlib_and : string -> string -> string
(** Construct a conjunction. *)

val smtlib_ands : string list -> string
(** Construct a conjunction. *)

val smtlib_or : string -> string -> string
(** Construct a disjunction. *)

val smtlib_ors : string list -> string
(** Construct a disjunction. *)

val smtlib_ecmpop_of : Ast.Cryptoline.ecmpop -> string -> string -> string
(** Construct an application of ecmpop *)

val smtlib_exists : string -> string -> string
(** Construct an existential. *)

val smtlib_not : string -> string
(** Construct a not expression. *)

val smtlib_assert : string -> string
(** Construct an assert. *)

val smtlib_eexp : ?expn:bool -> Ast.Cryptoline.eexp -> string
(** Return the string representation of an algebraic expression in SMTLIB. *)

val smtlib_ebexp_premise : ?expn:bool ->
                           Cas.var_gen -> Ast.Cryptoline.ebexp ->
                           Cas.var_gen * string
(**
 * Convert a premise to SMTLIB format.
 * If the argument expn is false, this function will try to avoid using expn.
*)

val smtlib_ebexp_consequence : ?expn:bool ->
                               Cas.var_gen -> Ast.Cryptoline.ebexp ->
                               Cas.var_gen * string list * string
(**
 * Convert a consequence to SMTLIB format.
 * [smtlib_ebexp_premise] and [smtlib_ebexp_consequence] are different
 * in translating eqmod formulas. The second returned element is a list
 * of existentially quantified variables in translating eqmod formulas.
 * If the argument expn is false, this function will try to avoid using expn.
 *)

val smtlib_ebexps_lia : ?expn:bool ->
                        Cas.var_gen -> Ast.Cryptoline.ebexp list ->
                        Cas.var_gen * string
(**
 * Assert a list of linear algebraic predicates in SMTLIB format.
 * The predicates have to be linear but not checked in this function.
 * If the argument expn is false, this function will try to avoid using expn.
 *)

val smtlib_espec : ?expn:bool ->
                   Cas.var_gen -> Ast.Cryptoline.espec ->
                   Cas.var_gen * string
(**
 * Converts an algebraic specification to SMTLIB format.
 * If the argument expn is false, this function will try to avoid using expn.
*)
