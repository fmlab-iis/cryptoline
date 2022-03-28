

type algebra_solver =
  | Singular
  | Sage
  | Magma
  | Mathematica
  | Macaulay2
  | Maple
  | SMTSolver of string

type variable_order =
  | LexOrder
  | AppearingOrder
  | RevLexOrder
  | RevAppearingOrder

val default_range_solver : string
val default_algebra_solver : algebra_solver

val wordsize : int ref

val boolector_path : string ref
val z3_path : string ref
val mathsat_path : string ref
val stp_path : string ref
val minisat_path : string ref
val cryptominisat_path : string ref

val range_solver : string ref
val range_solver_args : string ref

val use_btor : bool ref

val singular_path : string ref
val sage_path : string ref
val magma_path : string ref
val mathematica_path : string ref
val macaulay2_path : string ref
val maple_path : string ref

val algebra_solver : algebra_solver ref
val algebra_solver_args : string ref
val string_of_algebra_solver : algebra_solver -> string

val apply_rewriting : bool ref
val polys_rewrite_replace_eexp : bool ref
val apply_slicing : bool ref

val variable_ordering : variable_order ref
val string_of_variable_ordering : variable_order -> string
val parse_variable_ordering : string -> variable_order

val verify_program_safety : bool ref
val verify_epost : bool ref
val verify_rpost : bool ref
val verify_eassertion : bool ref
val verify_rassertion : bool ref
val verify_ecuts : (int list) option ref
val verify_rcuts : (int list) option ref
val verify_eacuts : (int list) option ref
val verify_racuts : (int list) option ref
val verify_scuts : (int list) option ref
val incremental_safety : bool ref
val incremental_safety_timeout : int ref

val carry_constraint : bool ref

val verbose : bool ref

val unix : string -> unit

val logfile : string ref

val trace : string -> unit

val fail : string -> 'a

val string_of_running_time : float -> float -> string

val vprint : string -> unit
val vprintln : string -> unit

val jobs : int ref

val use_cli : bool ref
val cli_path : string ref

(* Rename local variables when inlining a call to a procedure. *)
val rename_local : bool ref

val auto_cast : bool ref
val auto_cast_preserve_value : bool ref
val typing_file : (string option) ref
val use_binary_repr : bool ref

val keep_temp_files : bool ref
val tmpdir : string option ref
val tmpfile : string -> string -> string
val cleanup : string list -> unit

val cryptoline_filename_extension : string

val native_smtlib_expn_operator : string option ref
