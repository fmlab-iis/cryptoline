
(** {1 Strings} *)

val split_on_char_nonempty : char -> string -> string list
(** Same as {{:https://v2.ocaml.org/api/String.html?#VALsplit_on_char}String.split_on_char} but only nonempty strings are returned. *)


(** {1 Ranges} *)

exception InvalidRange of string

type range = int * int
(** a range is a pair [(i, j)] where [i] is the start index and [j] is the stop index. *)

val range_delimiter : char
(** Use [range_delimiter] to separate the start index and the stop index in the string representation. *)

val make_range : int -> int -> range
(**
   [make_range i j] creates a range from [i] to [j] where [i] is smaller than or equal to [j].
   @raise InvalidRange if [i > j]
 *)

val in_range : int -> range -> bool
(** [in_range i r] is [true] if [i] is in the range [r]. *)

val flatten_range : range -> int list
(** [flatten_range r] returns a list of integers that are in the range [r]. *)

val parse_range : string -> range
(** [parse_range s] parses a string representation of a range. *)


(** {1 Lists} *)

val tflatten : 'a list list -> 'a list
(** A tail-recursive flatten of lists of list of elements. *)
