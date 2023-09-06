
type pos = { pfname: string option;
             plnum: int;
             pcnum: int }
(** a position used in parsing *)

val string_of_pos : pos -> string
(** return the string representation of a position *)

val get_line_start : unit -> int
(** return the starting line number *)

val get_line_end : unit -> int
(** return the ending line number *)

val get_rule_start : unit -> pos
(** return the starting position of a parsing rule *)

val get_rule_end : unit -> pos
(** return the ending position of a parsing rule *)

val get_rhs_start : int -> pos
(** return the starting position of a symbol on the right-hand side of a
    parsing rule *)

val get_rhs_end : int -> pos
(** return the ending position of a symbol on the right-hand side of a
    parsing rule *)

val get_rhs_starts : int -> pos list
(** [get_rhs_starts n] return the first [n] starting positions of symbols on
    the right-hand side of a parsing rule *)

val big_pow : Z.t -> Z.t -> Z.t
