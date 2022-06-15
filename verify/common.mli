
(** This module provides help functions for the verification of specifications in SSA. *)

open Ast.Cryptoline

(** {1 Commons} *)

type 'a gen = More of ('a * (unit -> 'a gen)) (** *) (* *)
(** generators *)

type var_gen = unit -> string gen
(** generator of variable names *)

val make_vgen : string -> int -> var_gen
(** [make_vgen s i] returns a variable name generator which generates names in the form [s_i] and increases [i] in the next generator *)

val vgen_of_spec : spec -> var_gen
(** [vgen_of_spec s] is a variable name generator that generates variable names not in [s]. *)

val vgen_of_espec : espec -> var_gen
(** [vgen_of_sspec s] is a variable name generator that generates variable names not in [s]. *)

val vgen_of_rspec : rspec -> var_gen
(** [vgen_of_rspec s] is a variable name generator that generates variable names not in [s]. *)


(** {1 Verifying Algebraic Specifications} *)

type poly_spec =
  {
    ppre : ebexp;             (** precondition *)
    pprog : ebexp list;       (** program *)
    ppost : ebexp             (** postcondition *)
  }
(** a specification composed of polynomial equations *)

val bv2z_espec : var_gen -> espec -> var_gen * poly_spec
(** Convert an algebraic specification to a system of polynomial equations. *)

val polys_of_espec :
  var_gen -> Ast.Cryptoline.espec ->
  var_gen *
    (Ast.Cryptoline.ebexp * Ast.Cryptoline.VS.elt list * Ast.Cryptoline.eexp list *
       Ast.Cryptoline.eexp) list
(**
   Convert an algebraic specification to polynomials for ideal membership query.
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

val polys_of_ebexp :
  var_gen -> Ast.Cryptoline.ebexp ->
  var_gen * Ast.Cryptoline.var list * Ast.Cryptoline.eexp list
(**
   Convert an algebraic predicate to polynomials.
   @return [(g, vs, es)] where [g] is the updated variable name generator, [vs]
           is the set of temporary variables created in this function, and the
           input predicate is true if for all [e] in [es], [e = 0] is true
 *)

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

val smtlib_espec : var_gen -> Ast.Cryptoline.espec -> var_gen * string
(** Converts an algebraic specification to SMTLIB format. *)

val redlog_of_espec : espec -> string
(** [redlog_of_espec s] returns the input to redlog for the verification of [s] in SSA. *)


(** {1 Verifying Safety and Range Specifications} *)

type round_result =
  Solved of Qfbv.Common.result                          (** Safety conditions are solved with a result *)
| Unfinished of (int * instr * Qfbv.Common.bexp) list   (** Safety conditions are not finished due to some timed-out safety conditions *) (* *)
(** results in verifying safety conditions incrementally *)

val bexp_rbexp : Ast.Cryptoline.rbexp -> Qfbv.Common.bexp
(** Convert a range predicate to a QF_BV predicate. *)

val bexp_program : Ast.Cryptoline.instr list -> Qfbv.Common.bexp list
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

val slice_for_safety : Ast.Cryptoline.rbexp -> Ast.Cryptoline.program -> Qfbv.Common.bexp -> VS.t Ast.Cryptoline.atomichash_t option -> (Ast.Cryptoline.rbexp * Ast.Cryptoline.program)
(** Slice a precondition and a program according to a safety condition. *)

val safety_assumptions : Ast.Cryptoline.rbexp -> Ast.Cryptoline.program -> Qfbv.Common.bexp -> VS.t Ast.Cryptoline.atomichash_t option -> Qfbv.Common.bexp list
(**
   Convert a precondition and a program to QF_BV predicates according to a
   safety condition. The precondition and the program may be sliced.
 *)
