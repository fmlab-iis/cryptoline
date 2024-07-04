
type round_result =
  Solved of Qfbv.Common.result                          (** Safety conditions are solved with a result *)
| Unfinished of (int * Ast.Cryptoline.instr * Qfbv.Common.bexp) list   (** Safety conditions are not finished due to some timed-out safety conditions *) (* *)
(** results in verifying safety conditions incrementally *)

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


val smtlib_ebexp_premise : Cas.var_gen -> Ast.Cryptoline.ebexp ->
                           Cas.var_gen * string
(** Convert a premise to SMTLIB format *)

val smtlib_ebexp_consequence : Cas.var_gen -> Ast.Cryptoline.ebexp ->
                               Cas.var_gen * string list * string
(**
 * Convert a consequence to SMTLIB format.
 * [smtlib_ebexp_premise] and [smtlib_ebexp_consequence] are different
 * in translating eqmod formulas. The second returned element is a list
 * of existentially quantified variables in translating eqmod formulas.
 *)

val smtlib_ebexps_lia : Cas.var_gen -> Ast.Cryptoline.ebexp list ->
                        Cas.var_gen * string
(**
 * Assert a list of linear algebraic predicates in SMTLIB format.
 * The predicates have to be linear but not checked in this function.
 *)

val smtlib_espec : Cas.var_gen -> Ast.Cryptoline.espec ->
                   Cas.var_gen * string
(** Converts an algebraic specification to SMTLIB format. *)
