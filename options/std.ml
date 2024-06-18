
open Utils

exception UnknownAlgebraSolver of string

let debug = ref false

let main_proc_name = "main"

let veri_proc_name = ref None

type algebra_solver =
  | Singular
  | Sage
  | Magma
  | Mathematica
  | Macaulay2
  | Maple
  | SMTSolver of string
  | PPL
  | SCIP

type variable_order =
  | LexOrder
  | AppearingOrder
  | RevLexOrder
  | RevAppearingOrder

let default_range_solver = "boolector"

let default_algebra_solver = Singular

let range_solver = ref default_range_solver

let range_solver_args = ref ""

let use_btor = ref false

let singular_path = ref "Singular"
let sage_path = ref "sage"
let magma_path = ref "magma"
let mathematica_path = ref "wolframscript"
let macaulay2_path = ref "M2"
let maple_path = ref "maple"
let python_path = ref "python"

let algebra_solver = ref default_algebra_solver
let algebra_solver_args = ref ""
let string_of_algebra_solver s =
  match s with
  | Singular -> "singular"
  | Magma -> "magma"
  | Sage -> "sage"
  | Mathematica -> "mathematica"
  | Macaulay2 -> "macaulay2"
  | Maple -> "maple"
  | SMTSolver solver -> "smt:\"" ^ solver ^ "\""
  | PPL -> "ppl"
  | SCIP -> "scip"
let parse_algebra_solver str =
  if str = string_of_algebra_solver Singular then Singular
  else if str = string_of_algebra_solver Sage then Sage
  else if str = string_of_algebra_solver Magma then Magma
  else if str = string_of_algebra_solver Mathematica then Mathematica
  else if str = string_of_algebra_solver Macaulay2 then Macaulay2
  else if str = string_of_algebra_solver Maple then Maple
  else if Str.string_match (Str.regexp "^smt:\\(.*\\)") str 0 then SMTSolver (Str.matched_group 1 str)
  else if str = string_of_algebra_solver PPL then PPL
  else if str = string_of_algebra_solver SCIP then SCIP
  else raise (UnknownAlgebraSolver ("Unknown algebra solver: " ^ str))

let apply_rewrite_mov = ref true
let apply_rewrite_vpc = ref true
let apply_rewrite_poly = ref true
let apply_rewrite_eqmod = ref false
let polys_rewrite_replace_eexp = ref false

let disable_rewriting () =
  apply_rewrite_mov := false;
  apply_rewrite_vpc := false;
  apply_rewrite_poly := false;
  apply_rewrite_eqmod := false

let enable_rewriting () =
  apply_rewrite_mov := true;
  apply_rewrite_vpc := true;
  apply_rewrite_poly := true;
  apply_rewrite_eqmod := false

let apply_slicing = ref false

let variable_ordering = ref RevAppearingOrder
let string_of_variable_ordering o =
  match o with
  | LexOrder -> "lex"
  | AppearingOrder -> "appearing"
  | RevLexOrder -> "rev_lex"
  | RevAppearingOrder -> "rev_appearing"
let parse_variable_ordering str =
  if str = "lex" then LexOrder
  else if str = "appearing" then AppearingOrder
  else if str = "rev_lex" then RevLexOrder
  else if str = "rev_appearing" then RevAppearingOrder
  else raise Not_found

let verify_program_safety = ref true
let verify_epost = ref true
let verify_rpost = ref true
let verify_eassertion = ref true
let verify_rassertion = ref true
let verify_ecuts = ref None
let verify_rcuts = ref None
let verify_eacuts = ref None
let verify_racuts = ref None
let verify_scuts = ref None
let verify_eassert_ids = ref None
let verify_rassert_ids = ref None
let verify_safety_ids = ref None
let mem_hashset_opt so e =
  match so with
  | None -> true
  | Some s -> Hashset.mem s e
let incremental_safety = ref false
let incremental_safety_timeout = ref 300

let carry_constraint = ref true
let minimize_constraint = ref false

let verbose = ref false

let unix cmd =
  let r = Unix.system cmd in
  if r = r then ()
  else ()

let logfile = ref "cryptoline.log"

let propose_logfile fnopt =
  let fnstr =
    match fnopt with
    | None -> ""
    | Some fn -> "." ^ fn in
  let (fn, ext) = if Str.string_match (Str.regexp "^\\(.*\\)\\(\\.log\\|\\.txt\\)$") !logfile 0 then (Str.matched_group 1 !logfile, Str.matched_group 2 !logfile)
                  else (!logfile, ".log") in
  fn ^ fnstr ^ ext

let trace ?log:(lf=(!logfile)) msg =
  if !debug then
    let ch = open_out_gen [Open_append; Open_creat; Open_text] 0o640 lf in
    let _ = output_string ch msg in
    let _ = output_string ch "\n" in
    let _ = close_out ch in
    ()

let trace_file ?log:(lf=(!logfile)) file =
  if !debug then
    ignore(unix ("cat " ^ file ^ " >>  " ^ lf))

let fail s = trace s; failwith s

let string_of_running_time st ed = (Printf.sprintf "%.4f" (ed -. st)) ^ " seconds"

let vprint msg = if !verbose then print_string msg; flush stdout

let vprintln msg = if !verbose then print_endline msg; flush stdout

let jobs = Utils.Tasks.jobs

let use_cli = ref false

let cli_path = ref "cv_cli"

let rename_local = ref false

let auto_cast = ref false
let auto_cast_preserve_value = ref false
let use_binary_repr = ref false

let keep_temp_files = ref false
let tmpdir = ref None
let tmpfile prefix suffix =
  match !tmpdir with
  | None -> Filename.temp_file prefix suffix
  | Some dir -> Filename.temp_file ~temp_dir:dir prefix suffix
let cleanup files =
  if not !keep_temp_files then List.iter Unix.unlink files

let cryptoline_filename_extension = ".cl"

let native_smtlib_expn_operator = ref None

let two_phase_rewriting = ref false

let abc_path = ref "abc"
let boolector_path = ref "boolector"

let track_split = ref false

let expand_poly = ref false

let implicit_const_conversion = ref false

let cross_cuts = ref false

let abs_interp = ref false
