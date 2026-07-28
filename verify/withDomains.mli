
val verify_espec :
  Options.Std.st_options ->
  Common.var_gen -> Ast.Cryptoline.espec ->
  Ast.Cryptoline.VS.t Ast.Cryptoline.atomhash_t option -> bool
(** Verify algebraic specification parallelly with Domains. *)

val verify_eassert :
  Options.Std.st_options ->
  Common.var_gen -> Ast.Cryptoline.spec ->
  Ast.Cryptoline.VS.t Ast.Cryptoline.atomhash_t option -> bool
(** Verify algebraic assertions parallelly with Domains. *)

val verify_rspec :
  Options.Std.st_options ->
  Ast.Cryptoline.rspec ->
  Ast.Cryptoline.VS.t Ast.Cryptoline.atomhash_t option -> bool
(** Verify range specification parallelly with Domains. *)

val verify_rassert :
  Options.Std.st_options ->
  Ast.Cryptoline.spec ->
  Ast.Cryptoline.VS.t Ast.Cryptoline.atomhash_t option -> bool
(** Verify range assertions parallelly with Domains. *)

val verify_safety_conditions :
  ?comments:(string list) ->
  float -> Ast.Cryptoline.rbexp -> Ast.Cryptoline.program ->
  (int * Ast.Cryptoline.instr * Qfbv.Common.bexp) list ->
  Ast.Cryptoline.VS.t Ast.Cryptoline.atomhash_t option ->
  (int * Ast.Cryptoline.instr * Qfbv.Common.bexp) Common.round_result
(** [verify_safety_conditions ?comments t f p [(id1; instr1; e1); ...; (idn; instrn; en)] o]
    parallelly verifies the safety conditions [e1; ...; en] of the program [p]
    under the precondition [f]. [t] is the timeout. [comments] are comments
    written to input files for external solvers if {!Options.Std.debug}
    is enabled. *)

val verify_safety_cross_cut_domains :
  Options.Std.st_options ->
  ?comments:(string list) -> Ast.Cryptoline.spec ->
  Ast.Cryptoline.VS.t Ast.Cryptoline.atomhash_t option -> bool
(** Verify safety conditions of a specification cross cuts. *)

val verify_safety_mip_conditions :
  ?comments:(string list) ->
  float ->
  (int * Mip.mip_safety_condition_info) list ->
  Cas.var_gen ->
  Ast.Cryptoline.VS.t Ast.Cryptoline.atomhash_t option ->
  (int * Mip.mip_safety_condition_info) Common.round_result
(** Verify safety conditions. *)


val verify_safety_mip_cross_cuts_domains :
  Options.Std.st_options ->
  ?comments:(string list) ->
  Cas.var_gen ->
  Ast.Cryptoline.spec ->
  Ast.Cryptoline.VS.t Ast.Cryptoline.atomhash_t option -> bool
(** Verify safety conditions of a specification parallelly cross cuts *)
