
open Ast.Cryptoline

val smtlib_spec : ?expn:bool -> ?rpost:bool -> ?epost:bool -> Cas.var_gen -> spec -> Cas.var_gen * string
