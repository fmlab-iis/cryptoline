
(** This module provides functions for the verification of specifications in SSA. *)

open Ast.Cryptoline
open Ast.MultiTrack

(** {1 Top-level Verification Functions} *)

val verify_safety : Options.Std.st_options -> spec -> VS.t atomhash_t option -> bool
(** [verify_safety options s o] is [true] if the safety conditions of the specification
    [s] in SSA are verified successfully. *)

val verify_spec : Options.Std.st_options -> spec -> bool
(** [verify_spec options s] is [true] if the specification [s] is valid. SSA
    transformation, normalization, safety verification, assertion verification,
    algebraic specification verification, and range specification verification
    are performed in this function. Depending on {!Options.Std.jobs}, sequential
    verification functions in this module or parallel verification functions in
    {!WithLwt} are invoked. *)

val verify_tagged_spec : Options.Std.mt_options -> tagged_spec -> bool
(** Verify a multi-track specification. Soundness conditions (safety conditions) are only verified on the default track. *)


(** {1 Sequential Verification Functions} *)

val verify_safety_conditions :
  ?comments:(string list) ->
  int -> Ast.Cryptoline.rbexp -> Ast.Cryptoline.program ->
  (int * Ast.Cryptoline.instr * Qfbv.Common.bexp) list ->
  Ast.Cryptoline.VS.t Ast.Cryptoline.atomhash_t option ->
  (int * Ast.Cryptoline.instr * Qfbv.Common.bexp) Common.round_result
(** [verify_safety_conditions ?comments t f p [(id1; instr1; e1); ...; (idn; instrn; en)] o]
    sequentially verifies the safety conditions [e1; ...; en] of the program [p]
    under the precondition [f]. [t] is the timeout.
    [comments] are comments written to input files for external solvers if
    {!Options.Std.debug} is enabled. *)

val verify_safety_of_cut :
  Options.Std.st_options ->
  ?comments:(string list) -> int -> rspec ->
  Ast.Cryptoline.VS.t Ast.Cryptoline.atomhash_t option ->
  bool * int
(** Verify safety condition of a whole specification containing no cut. *)

val verify_eassert : Options.Std.st_options -> Common.var_gen -> spec -> VS.t atomhash_t option -> bool
(** [verify_eassert g s o] sequentially verifies all algebraic assertions of the
   specification [s] in SSA. {!Options.Std.verify_eacuts} is considered in this
   function. *)

val verify_rassert : Options.Std.st_options -> spec -> VS.t atomhash_t option -> bool
(** [verify_rassert s o] sequentially verifies all range assertions of the
   specification [s] in SSA. {!Options.Std.verify_racuts} is considered in this
   function. *)

val verify_espec : Options.Std.st_options -> Common.var_gen -> espec -> VS.t atomhash_t option -> bool
(** [verify_espec g s o] sequentially verifies the algebraic specification [s]
    in SSA. *)

val verify_rspec : Options.Std.st_options -> rspec -> VS.t atomhash_t option -> bool
(** [verify_rspec s o] sequentially verifies the range specification [s]
    in SSA. *)


(** {1 Low-level Verification Functions} *)

val verify_instruction_safety : ?comments:(string list) -> int -> int -> rbexp -> program -> int ->
                                VS.t atomhash_t option ->
                                (int * Ast.Cryptoline.instr * Qfbv.Common.bexp) Common.round_result
(**
   [verify_instruction_safety ?comments t j f p i o] verifies the safety condition of the
   [i]-th instruction of the program [p] in SSA under the precondition [f]. [t]
   is the timeout. [j] is used as the ID of the safety condition.
   [comments] are comments written to input files for external solvers if
   {!Options.Std.debug} is enabled.
   @raise Utils.Tasks.TimeoutException if the range solver times out.
 *)

val verify_espec_single_conjunct : ?comments:(string list) ->
                                   Common.var_gen -> espec ->
                                   VS.t atomhash_t option -> bool
(** [verify_espec_single_conjunct ?comments g s o] is [true] if the algebraic
    specification [s] in SSA is valid. Note that the specification [s] must
    not contain any cut and its postcondition must be an atomic predicate.
    [comments] are written to input files for external solvers if
    {!Options.Std.debug} is enabled. *)

val verify_rspec_single_conjunct : ?comments:(string list) -> rspec -> VS.t atomhash_t option -> bool
(** [verify_rspec_single_conjunct comments s o] is [true] if the range
    specification [s] in SSA is valid. Note that the specification [s]
    must not contain any cut and its postcondition must be an atomic
    predicate. [comments] are written to input files for external solvers
    if {!Options.Std.debug} is enabled. *)
