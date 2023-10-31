
(** This module provides functions that solve QF_BV queries concurrently with Lwt. *)

open Common

val solve_simp : ?comments:(string list) -> ?timeout:int -> ?solver:string -> ?header:(string list) -> bexp list -> result Lwt.t
(** [solve_simp ?comments ~timeout:t ~solver:s ~header:ss [e1; e2; ...; en]]
    verifies if e{_ n} is implied by the conjunction of e{_ 1}, ..., and
    e{_ n-1} using SMT QF_BV solver [s]. [comments] are comments written to
    input files for external solvers if {!Options.Std.debug} is enabled. *)
