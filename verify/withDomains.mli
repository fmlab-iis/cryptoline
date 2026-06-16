
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
