
(** This module provides functions for the parallel verification of specifications in SSA. *)

(** {1 With Lwt} *)

(** The following functions use Lwt to do parallel verification. *)

val verify_safety_conditions :
  ?comments:(string list) ->
  int -> Ast.Cryptoline.rbexp -> Ast.Cryptoline.program ->
  (int * Ast.Cryptoline.instr * Qfbv.Common.bexp) list ->
  Ast.Cryptoline.VS.t Ast.Cryptoline.atomhash_t option ->
  Common.round_result
(** [verify_safety_conditions ?comments t f p [(id1; instr1; e1); ...; (idn; instrn; en)] o]
    parallelly verifies the safety conditions [e1; ...; en] of the program [p]
    under the precondition [f]. [t] is the timeout. [comments] are comments
    written to input files for external solvers if {!Options.Std.debug}
    is enabled. *)

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

val verify_safety_cli : ?comments:(string list) -> int -> Ast.Cryptoline.rbexp -> Ast.Cryptoline.program -> bool * int
(** [verify_safety_cli ?comments i f p] parallelly verifies the safety conditions of the
    program [p] in SSA under the precondition [f]. The first safety condition in
    [p] is numbered by [i]. This function returns a pair [(b, j)] where [b]
    indicates if the safety conditions in [p] are successfully verified and
    [j] denotes the ID of the next safety condition. *)

val verify_eassert_cli : Ast.Cryptoline.spec -> bool
(** [verify_eassert_cli s] parallelly verifies all algebraic assertions of the
    specification [s] in SSA. {!Options.Std.verify_eacuts} is considered in this
    function. *)

val verify_rassert_cli : Ast.Cryptoline.spec -> bool
(** [verify_rassert_cli s] parallelly verifies all range assertions of the
    specification [s] in SSA. {!Options.Std.verify_racuts} is considered in this
    function. *)
