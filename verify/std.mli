
(** This module provides functions for the verification of specifications in SSA. *)

open Ast.Cryptoline


(** {1 Top-level Verification Functions} *)

val verify_safety : spec -> VS.t atomhash_t option -> bool
(** [verify_safety s o] is [true] if the safety conditions of the specification
    [s] in SSA are verified successfully. Depending on {!Options.Std.jobs},
    either {!verify_safety_conditions} or {!WithLwt.verify_safety_conditions}
    is invoked. *)

val verify_spec : spec -> bool
(** [verify_spec s] is [true] if the specification [s] is valid. SSA
    transformation, normalization, safety verification, assertion verification,
    algebraic specification verification, and range specification verification
    are performed in this function. Depending on {!Options.Std.jobs}, sequential
    verification functions in this module or parallel verification functions in
    {!WithLwt} are invoked. *)


(** {1 Sequential Verification Functions} *)

val verify_safety_conditions :
  int -> Ast.Cryptoline.rbexp -> Ast.Cryptoline.program ->
  (int * Ast.Cryptoline.instr * Qfbv.Common.bexp) list ->
  Ast.Cryptoline.VS.t Ast.Cryptoline.atomhash_t option ->
  Common.round_result
(** [verify_safety_inc t f p [(id1; instr1; e1); ...; (idn; instrn; en)] o]
    sequentially verifies the safety conditions [e1; ...; en] of the program [p]
    under the precondition [f]. [t] is the timeout. *)

val verify_eassert : Common.var_gen -> spec -> VS.t atomhash_t option -> bool
(** [verify_eassert g s o] sequentially verifies all algebraic assertions of the
   specification [s] in SSA. {!Options.Std.verify_eacuts} is considered in this
   function. *)

val verify_rassert : spec -> VS.t atomhash_t option -> bool
(** [verify_rassert s o] sequentially verifies all range assertions of the
   specification [s] in SSA. {!Options.Std.verify_racuts} is considered in this
   function. *)

val verify_espec : Common.var_gen -> espec -> VS.t atomhash_t option -> bool
(** [verify_espec g s o] sequentially verifies the algebraic specification [s]
    in SSA. *)

val verify_rspec : rspec -> VS.t atomhash_t option -> bool
(** [verify_rspec s o] sequentially verifies the range specification [s]
    in SSA. *)


(** {1 Low-level Verification Functions} *)

val verify_instruction_safety : int -> int -> rbexp -> program -> int ->
                                VS.t atomhash_t option ->
                                Common.round_result
(**
   [verify_instruction_safety t j f p i o] verifies the safety condition of the
   [i]-th instruction of the program [p] in SSA under the precondition [f]. [t]
   is the timeout. [j] is used as the ID of the safety condition.
   @raise TimeoutException if the range solver times out.
 *)

val verify_espec_single_conjunct : Common.var_gen -> espec ->
                                   VS.t atomhash_t option -> bool
(** [verify_espec_single_conjunct g s o] is [true] if the algebraic
    specification [s] in SSA is valid. Note that the specification [s] must
    not contain any cut and its postcondition must be an atomic predicate. *)

val verify_rspec_single_conjunct : rspec -> VS.t atomhash_t option -> bool
(** [verify_rspec_single_conjunct s o] is [true] if the range specification [s]
    in SSA is valid. Note that the specification [s] must not contain any
    cut and its postcondition must be an atomic predicate. *)
