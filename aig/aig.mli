type aiger_t
type var_t = int
type lit_t
type sign_t = Pos | Neg
type reset_t = Zero | One | Undefined
type mode_t = Binary | Ascii | Stripped
type tag_t = Constant | Input | Latch | And
type latch_t = { next : lit_t; reset : lit_t; name : string }
type and_t = { rhs0 : lit_t; rhs1 : lit_t }

val faux : lit_t
val vrai : lit_t
val var2lit : var_t -> lit_t
val lit2var : lit_t -> var_t
val sign : lit_t -> sign_t
val strip : lit_t -> lit_t
val not : lit_t -> lit_t

(* val id : unit -> string  *)
val version : unit -> string
val init : unit -> aiger_t
(* val reset : aiger_t -> unit *)
val add_input : aiger_t -> lit_t -> string -> unit
val add_latch : aiger_t -> lit_t -> lit_t -> string -> unit
val add_output : aiger_t -> lit_t -> string -> unit
val add_bad : aiger_t -> lit_t -> string -> unit
val add_constraint : aiger_t -> lit_t -> string -> unit
val add_justice : aiger_t -> lit_t list -> string -> unit
val add_fairness : aiger_t -> lit_t -> string -> unit
val add_reset : aiger_t -> lit_t -> reset_t -> unit
val add_and : aiger_t -> lit_t -> lit_t -> lit_t -> unit
val add_comment : aiger_t -> string -> unit
val check : aiger_t -> string option
val write_to_file : aiger_t -> mode_t -> string -> string option
val open_and_write_to_file : aiger_t -> string -> string option
val is_reencoded : aiger_t -> bool
val reencode : aiger_t -> unit
val open_and_read_from_file : aiger_t -> string -> string option
val error : aiger_t -> string option
val write_symbols_to_file : aiger_t -> string -> string option
val write_comments_to_file : aiger_t -> string -> string option
val strip_symbols_and_comments : aiger_t -> int
val get_symbol : aiger_t -> lit_t -> string
val lit2tag : aiger_t -> lit_t -> tag_t
val is_latch : aiger_t -> lit_t -> latch_t option
val is_and : aiger_t -> lit_t -> and_t option

val string_of_lit : lit_t -> string

val aig_inputs : aiger_t -> string list
val aig_maxvar : aiger_t -> int
