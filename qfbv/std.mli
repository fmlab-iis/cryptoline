
(** This module provides functions that solve QF_BV queries sequentially. *)

open Common

val solve_simp : ?comments:(string list) -> ?timeout:int -> ?solver:string -> bexp list -> result
(** [solve_simp ?comments ?timeout ?solver [e1; e2; ...; en]] verifies if e{_ n} is
    implied by the conjunction of e{_ 1}, ..., and e{_ n-1} using the SMT QF_BV
    solver [solver]. [comments] are comments written to the input files for the
    SMT QF_BV solver if {!Options.Std.debug} is enabled. *)
