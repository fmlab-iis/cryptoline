
exception InvalidRange of string

type range = int * int

val range_delimiter : char

val make_range : int -> int -> range

val in_range : int -> range -> bool

val flatten_range : range -> int list

val parse_range : string -> range

(* Same as String.split_on_char but only nonempty strings are returned. *)
val split_on_char_nonempty : char -> string -> string list
