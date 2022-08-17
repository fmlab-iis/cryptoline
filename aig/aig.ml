
type aiger_t
type var_t = int
type lit_t = int
type sign_t = Pos | Neg
type reset_t = Zero | One | Undefined
type mode_t = Binary | Ascii | Stripped
type tag_t = Constant | Input | Latch | And
type latch_t = { next : lit_t; reset : lit_t; name : string }
type and_t = { rhs0 : lit_t; rhs1 : lit_t }

let faux = 0
let vrai = 1

let var2lit v = v lsl 1
let lit2var l = l lsr 1

let sign l = if l land 1 == 0 then Pos else Neg
let strip l = l land (lnot 1)
let not l = l lxor 1

let string_of_lit l =
  let strv = string_of_int (lit2var l) in
  (if sign l = Pos then " " else "-") ^ strv

(*
external id : unit -> string
  = "aig_id"
 *)
external version : unit -> string
  = "aig_version"
external init : unit -> aiger_t
  = "aig_init"
(*
external reset : aiger_t -> unit
  = "aig_reset"
 *)
external add_input : aiger_t -> lit_t -> string -> unit
  = "aig_add_input"
external add_latch : aiger_t -> lit_t -> lit_t -> string -> unit
  = "aig_add_latch"
external add_output : aiger_t -> lit_t -> string -> unit
  = "aig_add_output"
external add_bad : aiger_t -> lit_t -> string -> unit
  = "aig_add_bad"
external add_constraint : aiger_t -> lit_t -> string -> unit
  = "aig_add_constraint"
external add_justice : aiger_t -> lit_t list -> string -> unit
  = "aig_add_justice"
external add_fairness : aiger_t -> lit_t -> string -> unit
  = "aig_add_fairness"
external add_reset : aiger_t -> lit_t -> reset_t -> unit
  = "aig_add_reset"
external add_and : aiger_t -> lit_t -> lit_t -> lit_t -> unit
  = "aig_add_and"
external add_comment : aiger_t -> string -> unit
  = "aig_add_comment"
external check : aiger_t -> string option
  = "aig_check"
external write_to_file : aiger_t -> mode_t -> string -> string option
  = "aig_write_to_file"
external open_and_write_to_file : aiger_t -> string -> string option
  = "aig_open_and_write_to_file"
external is_reencoded : aiger_t -> bool
  = "aig_is_reencoded"
external reencode : aiger_t -> unit
  = "aig_reencode"
external open_and_read_from_file : aiger_t -> string -> string option
  = "aig_open_and_read_from_file"
external error : aiger_t -> string option
  = "aig_error"
external write_symbols_to_file : aiger_t -> string -> string option
  = "aig_write_symbols_to_file"
external write_comments_to_file : aiger_t -> string -> string option
  = "aig_write_comments_to_file"
external strip_symbols_and_comments : aiger_t -> int
  = "aig_strip_symbols_and_comments"
external get_symbol : aiger_t -> lit_t -> string
  = "aig_get_symbol"
external lit2tag : aiger_t -> lit_t -> tag_t
  = "aig_lit2tag"
external is_latch : aiger_t -> lit_t -> latch_t option
  = "aig_is_latch"
external is_and : aiger_t -> lit_t -> and_t option
  = "aig_is_and"

external aig_inputs : aiger_t -> string list
  = "aig_inputs"
external aig_maxvar : aiger_t -> int
  = "aig_maxvar"
