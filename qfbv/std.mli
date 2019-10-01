
(** QFBV *)

type result = Common.result

type exp = Common.exp

type bexp = Common.bexp

val string_of_exp : exp -> string
val string_of_bexp : bexp -> string

(** Solver *)

val solve_simp : ?timeout:int -> bexp list -> result
