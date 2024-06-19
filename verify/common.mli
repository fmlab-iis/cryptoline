
(** This module provides help functions for the verification of specifications in SSA. *)

open Ast.Cryptoline

(** {1 Verifying Algebraic Specifications} *)

type var_gen = Cas.var_gen

type poly_spec = Cas.poly_spec

val vgen_of_spec : Ast.Cryptoline.spec -> var_gen
(** [vgen_of_spec s] is a variable name generator that generates variable names not in [s]. *)

val vgen_of_espec : Ast.Cryptoline.espec -> var_gen
(** [vgen_of_sspec s] is a variable name generator that generates variable names not in [s]. *)

val vgen_of_rspec : Ast.Cryptoline.rspec -> var_gen
(** [vgen_of_rspec s] is a variable name generator that generates variable names not in [s]. *)

val bv2z_espec : var_gen -> Ast.Cryptoline.espec ->
                 var_gen * Cas.poly_spec
(** a specification composed of polynomial equations *)

val polys_of_espec : var_gen -> Ast.Cryptoline.espec ->
                     var_gen * (Ast.Cryptoline.ebexp * Ast.Cryptoline.var list *
                                Ast.Cryptoline.eexp list * Ast.Cryptoline.eexp) list
(**
   Convert an algebraic specification to polynomials for ideal membership query.
   All prove-with clauses are ignored.
   @return a list [(g1, (p1, vs1, es1, e1)), ..., (gn, (pn, vsn, esn, en))]
           where [gi] is the updated variable name generator, [pi] is an atomic
           predicate in the postcondition of the input specification, [vsi] is
           the list of ordered variables in [esi] and [ei], and [pi] is valid if
           [ei] is in the ideal of [esi]
 *)

val polys_of_espec_two_phase :
  ?sliced:bool ->
  var_gen -> Ast.Cryptoline.espec ->
  var_gen *
    (Ast.Cryptoline.ebexp * Ast.Cryptoline.VS.elt list * Ast.Cryptoline.eexp list *
       Ast.Cryptoline.eexp) list
(**
   Convert an algebraic specification to polynomials for ideal membership query
   and uses two-phase rewriting in the conversion.
   @return a list [(g1, (p1, vs1, es1, e1)), ..., (gn, (pn, vsn, esn, en))]
           where [gi] is the updated variable name generator, [pi] is an atomic
           predicate in the postcondition of the input specification, [vsi] is
           the list of ordered variables in [esi] and [ei], and [pi] is valid if
           [ei] is in the ideal of [esi]
 *)

val rewrite_assignments_ebexp :
  Ast.Cryptoline.eexp list -> Ast.Cryptoline.ebexp ->
  Ast.Cryptoline.eexp list * Ast.Cryptoline.ebexp
(** [rewrite_assignments_ebexp es e] rewrites [es] and [e] based on assignments found in [es]. *)

val singular_of_eexp : Ast.Cryptoline.eexp -> string
(** Convert an algebraic expression to an expression in Singular. *)

val sage_of_eexp : Ast.Cryptoline.eexp -> string
(** Convert an algebraic expression to an expression in Sage. *)

val magma_of_eexp : Ast.Cryptoline.eexp -> string
(** Convert an algebraic expression to an expression in Magma. *)

val mathematica_of_var : Ast.Cryptoline.var -> string
(** Convert a variable to a variable in Mathematica. *)

val mathematica_of_eexp : Ast.Cryptoline.eexp -> string
(** Convert an algebraic expression to an expression in Mathematica. *)

val macaulay2_of_var : Ast.Cryptoline.var -> string
(** Convert a variable to a variable in Macaulay2. *)

val macaulay2_of_eexp : Ast.Cryptoline.eexp -> string
(** Convert an algebraic expression to an expression in Macaulay2. *)

val maple_of_eexp : Ast.Cryptoline.eexp -> string
(** Convert an algebraic expression to an expression in Maple. *)

val redlog_of_espec : espec -> string
(** [redlog_of_espec s] returns the input to redlog for the verification of [s] in SSA. *)

val rewrite_poly_spec : Cas.var_gen -> Cas.poly_spec -> Cas.var_gen * Cas.poly_spec
(** [rewrite_poly_spec s] applies rewriting to [s]. *)

(** {1 Verifying Safety and Range Specifications} *)

type round_result = Smt.round_result

val bexp_rbexp : Ast.Cryptoline.rbexp -> Qfbv.Common.bexp
(** Convert a range predicate to a QF_BV predicate. *)

val bexp_instr_safe : Ast.Cryptoline.instr -> Qfbv.Common.bexp
(** Convert the safety condition of an instruction to a QF_BV predicate. *)

val bexp_program_safe_numbered_conds :
  int -> Ast.Cryptoline.rbexp -> Ast.Cryptoline.program ->
  VS.t Ast.Cryptoline.atomhash_t option ->
  int * (int * Ast.Cryptoline.instr * Qfbv.Common.bexp list) list
(**
   [bexp_program_safe_conds_ids id f p hashopt] converts the safety of the
   program [p] under the precondition [f] to numbered QF_BV predicates.
   The number starts with [id].
   @return [(next_id, (id1, instr1, es1); ...; (idn, instrn, esn))] where
           [next_id] is ID for the next QF_BV predicates; [instri] is the
           [idi]-th instruction (instructions that do not have safety conditions
           are not counted) with safety condition [esi] ([esi] is ready for
           [solve_simp])
 *)


val slice_for_safety : Ast.Cryptoline.rbexp -> Ast.Cryptoline.program -> Qfbv.Common.bexp -> VS.t Ast.Cryptoline.atomhash_t option -> (Ast.Cryptoline.rbexp * Ast.Cryptoline.program)
(** Slice a precondition and a program according to a safety condition. *)

val safety_assumptions : Ast.Cryptoline.rbexp -> Ast.Cryptoline.program -> Qfbv.Common.bexp -> VS.t Ast.Cryptoline.atomhash_t option -> Qfbv.Common.bexp list
(**
   Convert a precondition and a program to QF_BV predicates according to a
   safety condition. The precondition and the program may be sliced.
 *)

val mip_of_espec : var_gen -> Ast.Cryptoline.espec ->
    var_gen *
      (Mip.mip_var list *          (* MIP variables *)
       Ast.Cryptoline.ebexp list)  (* constraints *)
        list
(**
   Convert an espec to mixed integer programming problems with integer
   and continuous variable lists
 *)

val is_mip_ivar : Mip.mip_var -> bool
val is_mip_cvar : Mip.mip_var -> bool
val var_of_mip : Mip.mip_var -> Ast.Cryptoline.var

val ppl_of_eexp : eexp -> string
(** Convert an eexp to pplpy string *)

val ppl_of_ebexp : ebexp -> string
(** Convert an ebexp to pplpy string *)

val scip_of_eexp : eexp -> string
(** Convert an eexp to pyscipopt string *)

val scip_of_ebexp : ebexp -> string
(** Convert an ebexp to pyscipopt string *)

val isl_of_eexp : eexp -> string
(** Convert an eexp to islpy string *)

val isl_of_ebexp : ebexp -> string
(** Convert an ebexp to islpy string *)
