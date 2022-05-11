
(** This module provides functions that solve QF_BV queries sequentially. *)

open Common

val solve_simp : ?timeout:int -> bexp list -> result
(** [solve_simp ~timeout:t [e1; e2; ...; en]] verifies if e{_ n} is implied by the conjunction of e{_ 1}, ..., and e{_ n-1}. *)
