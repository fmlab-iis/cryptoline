
(** This module provides functions that solve QF_BV queries sequentially. *)

open Common

val solve_simp : ?timeout:int -> ?solver:string -> bexp list -> result
(** [solve_simp ~timeout:t ?solver:s [e1; e2; ...; en]] verifies if e{_ n} is
    implied by the conjunction of e{_ 1}, ..., and e{_ n-1} using the SMT QF_BV
    solver [s]. *)
