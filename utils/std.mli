
(** {1 Numbers} *)

val logi : int -> int
(** [logi n] is the logarithm base 2 of n, rounded down to an integer. *)

val hex_of_Z : int -> Z.t -> string
(** [hex_of_Z w n] is the hexadecimal representation of [n] with bit width [w]. *)

val bin_of_Z : int -> Z.t -> string
(** [bin_of_Z w n] is the binary representation of [n] with bit width [w]. *)

val to_positive_same_size : Z.t -> int -> Z.t
(** [to_positive_same_size n size] is a positive integer m < 2{^size} such that the two's complement representations of [n] and m from position 0 (lsb) to position size - 1 are the same. *)


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

val tappend : 'a list -> 'a list -> 'a list
(** A tail-recursive concatenation of two lists *)

val tmap : ('a -> 'b) -> 'a list -> 'b list
(** A tail-recursive version of [List.map] *)

val tfilter : ('a -> bool) -> 'a list -> 'a list
(** A tail-recursive version of [List.filter] *)

val (@@) : 'a list -> 'a list -> 'a list
(** [l1 @@ l2] is [tappend l1 l2]. *)

val rcons : 'a list -> 'a -> 'a list
(** [rcons xs x] returns the list [xs@[x]] but is tail-recursive *)

val partition_at : 'a list -> int -> 'a list * 'a list
(** partitition l n = (the first n elements of l, the remaining elements *)

val transpose : 'a list list -> 'a list list
(** transpose xss computes the transpose of xss *)


(** {1 Comments} *)

val make_line_comments : string -> string list -> string
(** [make_line_comments leading comments] returns a comment string.
    Each element in [comments] is a line of comment.
    [leading] is the line comment prefix. *)

val make_block_comments : string -> string -> string list -> string
(** [make_block_comments op cl comments] returns a comment string.
    Each element in [comments] is a line of comment.
    [op] is the opening string of a block comment.
    [cl] is the closing string of a block comment. *)

val rcons_comments_option : string list option -> string -> string list
(** Append a comment *)

val append_comments_option : string list option -> string list -> string list
(** Append comments *)
