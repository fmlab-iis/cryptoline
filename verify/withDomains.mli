
val verify_espec_domains :
  Options.Std.st_options ->
  Common.var_gen -> Ast.Cryptoline.espec ->
  Ast.Cryptoline.VS.t Ast.Cryptoline.atomhash_t option -> bool
(** Verify algebraic specification parallelly with Domains. *)

val verify_eassert_domains :
  Options.Std.st_options ->
  Common.var_gen -> Ast.Cryptoline.spec ->
  Ast.Cryptoline.VS.t Ast.Cryptoline.atomhash_t option -> bool
(** Verify algebraic assertions parallelly with Domains. *)

