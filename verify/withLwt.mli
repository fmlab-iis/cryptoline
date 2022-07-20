
(** This module provides functions for the parallel verification of specifications in SSA. *)

(** {1 With Lwt} *)

(** The following functions use Lwt to do parallel verification. *)

val verify_safety_inc :
  int -> Ast.Cryptoline.rbexp -> Ast.Cryptoline.program ->
  (int * Ast.Cryptoline.instr * Qfbv.Common.bexp) list ->
  Ast.Cryptoline.VS.t Ast.Cryptoline.atomhash_t option ->
  Common.round_result
(** [verify_safety_inc t f p [(id1; instr1; e1); ...; (idn; instrn; en)] o]
    parallelly verifies the safety conditions [e1; ...; en] of the program [p]
    under the precondition [f]. [t] is the timeout. *)

val verify_assert :
  Common.var_gen -> Ast.Cryptoline.spec ->
  Ast.Cryptoline.VS.t Ast.Cryptoline.atomhash_t option -> bool
(**
   [verify_assert gen s o] parallelly verifies all assertions of the
   specification [s] in SSA. Note that this function does not consider
   {!Options.Std.verify_eacuts} and {!Options.Std.verify_racuts}.
 *)

val verify_eassert :
  Common.var_gen -> Ast.Cryptoline.spec ->
  Ast.Cryptoline.VS.t Ast.Cryptoline.atomhash_t option -> bool
(** [verify_eassert g s o] parallelly verifies all algebraic assertions of the
   specification [s] in SSA. {!Options.Std.verify_eacuts} is considered in this
   function. *)

val verify_rassert :
  Ast.Cryptoline.spec ->
  Ast.Cryptoline.VS.t Ast.Cryptoline.atomhash_t option -> bool
(** [verify_rassert s o] parallelly verifies all range assertions of the
   specification [s] in SSA. {!Options.Std.verify_racuts} is considered in this
   function. *)

val verify_espec :
  Common.var_gen -> Ast.Cryptoline.espec ->
  Ast.Cryptoline.VS.t Ast.Cryptoline.atomhash_t option -> bool
(** [verify_espec g s o] parallelly verifies the algebraic specification [s]
    in SSA. *)

val verify_rspec :
  Ast.Cryptoline.rspec ->
  Ast.Cryptoline.VS.t Ast.Cryptoline.atomhash_t option -> bool
(** [verify_rspec s o] parallelly verifies the range specification [s]
    in SSA. *)


(** {1 With CLI} *)

(** The following functions use the CLI of CryptoLine to do parallel verification. *)

val verify_espec_cli : Ast.Cryptoline.espec -> bool
(** [verify_espec_cli s] parallelly verifies the algebraic specification [s]
    in SSA. *)

val verify_rspec_cli : Ast.Cryptoline.rspec ->
                       Ast.Cryptoline.VS.t Ast.Cryptoline.atomhash_t option -> bool
(** [verify_rspec_cli s o] parallelly verifies the range specification [s]
    in SSA. *)

val verify_safety_cli : Ast.Cryptoline.rbexp -> Ast.Cryptoline.program -> bool
(** [verify_safety_cli f p] parallelly verifies the safety conditions of the
    program [p] in SSA under the precondition [f]. *)

val verify_assert_cli : Ast.Cryptoline.spec -> bool
(** [verify_assert_cli s] parallelly verifies all assertions of the
    specification [s] in SSA. Both {!Options.Std.verify_eacuts} and
    {!Options.Std.verify_racuts} are considered in this function. *)

val verify_eassert_cli : Ast.Cryptoline.spec -> bool
(** [verify_eassert_cli s] parallelly verifies all algebraic assertions of the
    specification [s] in SSA. {!Options.Std.verify_eacuts} is considered in this
    function. *)

val verify_rassert_cli : Ast.Cryptoline.spec -> bool
(** [verify_rassert_cli s] parallelly verifies all range assertions of the
    specification [s] in SSA. {!Options.Std.verify_racuts} is considered in this
    function. *)
