
open Ast.Cryptoline

val smtlib_spec_no_cut :
  ?expn:bool -> ?epost:bool -> ?rpost:bool ->
  Cas.var_gen -> spec -> Cas.var_gen * string

val smtlib_spec_ssa :
  ?expn:bool -> Options.Std.st_options -> spec ->
  ((int * string) list * (int * (int * string) list) list)
(** [smtlib_spec_ssa ~expn options s] returns the SMTLIB encoding of cuts
    and assertions in the specification [s]. Cuts and assertions are
    filtered according to [options]. The returned SMTLIB of cuts are
    numbered with their cut ID. The returned SMTLIB of assertions are
    numbered with their assertion ID. The assertions at the same cut
    are grouped and numbered with the cut ID.
*)
