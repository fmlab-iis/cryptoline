open Datatypes

val int_of_nat : nat -> int

val int_of_pos : int -> int

val int_of_n : int -> int

val int_natlike_rec : 'a1 -> ('a1 -> 'a1) -> int -> 'a1

val nat_of_int : int -> nat

val int_poslike_rec : 'a1 -> ('a1 -> 'a1) -> ('a1 -> 'a1) -> int -> 'a1

val pos_of_int : int -> int

val int_zlike_case : 'a1 -> (int -> 'a1) -> (int -> 'a1) -> int -> 'a1

val n_of_int : int -> int
