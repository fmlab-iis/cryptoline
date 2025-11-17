
open Utils

exception UnknownAlgebraSolver of string


(** General Options *)

let debug = ref false

let main_proc_name = "main"

let veri_proc_name = ref None

let apply_slicing = ref false

let verify_program_safety = ref true
let verify_epost = ref true
let verify_rpost = ref true
let verify_eassertion = ref true
let verify_rassertion = ref true

let ids_separator = ","     (* the separator between IDs in a tag *)

let parse_and_add_ids tag idsstr tbl =
  let parse_ids str =
    if str = "-" then Hashset.of_list []
    else try (Str.split (Str.regexp ids_separator) str) |> List.map (Utils.Std.parse_range) |> List.map Utils.Std.flatten_range |> List.flatten |> Hashset.of_list
         with Failure _ -> Stdlib.invalid_arg ("Invalid string of IDs: " ^ idsstr)
  in
  Hashtbl.add tbl tag (parse_ids idsstr)

let default_track = "default"

let all_track = "*"

let safety_track = ref default_track

let verify_tracks = ref None

type st_options =
  {
    mutable st_tag : string;                                       (** The track where these options are applied *)
    mutable st_verify_ecuts : (int Utils.Hashset.t) option;        (** Verify the algebraic postconditions in the ecut of the specified IDs; None to verify all *)
    mutable st_verify_rcuts : (int Utils.Hashset.t) option;        (** Verify the range postconditions in the rcut of the specified IDs; None to verify all *)
    mutable st_verify_eacuts : (int Utils.Hashset.t) option;       (** Verify the algebraic assertions in the ecut of the specified IDs; None to verify all *)
    mutable st_verify_racuts : (int Utils.Hashset.t) option;       (** Verify the range assertions in the rcut of the specified IDs; None to verify all *)
    mutable st_verify_scuts : (int Utils.Hashset.t) option;        (** Verify the safety conditions in the rcut of the specified IDs; None to verify all *)
    mutable st_verify_eassert_ids : (int Utils.Hashset.t) option;  (** Verify the algebraic assertions of the specified IDs; None to verify all *)
    mutable st_verify_rassert_ids : (int Utils.Hashset.t) option;  (** Verify the algebraic assertions of the specified IDs; None to verify all *)
    mutable st_verify_safety_ids : (int Utils.Hashset.t) option;   (** Verify the safety conditions of the specified IDs; None to verify all *)
  }
(** Verification options specific to single track specifications *)

type mt_options =
  {
    mutable mt_verify_ecuts : (string, int Utils.Hashset.t) Hashtbl.t option;        (** Verify the algebraic postconditions in the ecut of the specified IDs for each specified track; None to verify all *)
    mutable mt_verify_rcuts : (string, int Utils.Hashset.t) Hashtbl.t option;        (** Verify the range postconditions in the rcut of the specified IDs for each specified track; None to verify all *)
    mutable mt_verify_eacuts : (string, int Utils.Hashset.t) Hashtbl.t option;       (** Verify the algebraic assertions in the ecut of the specified IDs for each specified track; None to verify all *)
    mutable mt_verify_racuts : (string, int Utils.Hashset.t) Hashtbl.t option;       (** Verify the range assertions in the rcut of the specified IDs for each specified track; None to verify all *)
    mutable mt_verify_scuts : (string, int Utils.Hashset.t) Hashtbl.t option;        (** Verify the safety conditions in the rcut of the specified IDs for each specified track; None to verify all *)
    mutable mt_verify_eassert_ids : (string, int Utils.Hashset.t) Hashtbl.t option;  (** Verify the algebraic assertions of the specified IDs; None to verify all *)
    mutable mt_verify_rassert_ids : (string, int Utils.Hashset.t) Hashtbl.t option;  (** Verify the algebraic assertions of the specified IDs; None to verify all *)
    mutable mt_verify_safety_ids : (string, int Utils.Hashset.t) Hashtbl.t option;   (** Verify the safety conditions of the specified IDs for each specified track; None to verify all *)
  }
(** Verification options specific to multi-track specifications *)

let default_st_options : st_options =
  {
    st_tag = default_track;
    st_verify_ecuts = None;
    st_verify_rcuts = None;
    st_verify_eacuts = None;
    st_verify_racuts = None;
    st_verify_scuts = None;
    st_verify_eassert_ids = None;
    st_verify_rassert_ids = None;
    st_verify_safety_ids = None;
  }

let default_mt_options : mt_options =
  {
    mt_verify_ecuts = None;
    mt_verify_rcuts = None;
    mt_verify_eacuts = None;
    mt_verify_racuts = None;
    mt_verify_scuts = None;
    mt_verify_eassert_ids = None;
    mt_verify_rassert_ids = None;
    mt_verify_safety_ids = None;
  }

let mt_options =
  { default_mt_options with mt_verify_ecuts = default_mt_options.mt_verify_ecuts }

let st_options_of_tag tag mto =
  let helper mo t =
    match mo with
    | None -> None
    | Some m -> Some (try Hashtbl.find m t
                      with Not_found -> Utils.Hashset.create 0) in
  {
    st_tag = tag;
    st_verify_ecuts = helper mto.mt_verify_ecuts tag;
    st_verify_rcuts = helper mto.mt_verify_rcuts tag;
    st_verify_eacuts = helper mto.mt_verify_eacuts tag;
    st_verify_racuts = helper mto.mt_verify_racuts tag;
    st_verify_scuts = helper mto.mt_verify_scuts tag;
    st_verify_eassert_ids = helper mto.mt_verify_eassert_ids tag;
    st_verify_rassert_ids = helper mto.mt_verify_rassert_ids tag;
    st_verify_safety_ids = helper mto.mt_verify_safety_ids tag;
  }

let mem_hashset_opt so e =
  match so with
  | None -> true
  | Some s -> Hashset.mem s e

let incremental_safety = ref false

let incremental_safety_timeout = ref 300

let cross_cuts = ref false

let jobs = Utils.Tasks.jobs

let use_cli = ref false

let cli_path = ref "cv_cli"

let rename_local = ref false

let auto_cast = ref false
let auto_cast_preserve_value = ref false

let cryptoline_filename_extension = ".cl"

let implicit_const_conversion = ref false


(** Algebra-Specific Options *)

type algsmt_logic =
  NIA
| LIA

type algsmt_option =
  { algsmt_path : string;
    algsmt_logic : algsmt_logic }

let default_algsmt_option =
  { algsmt_path = "z3";
    algsmt_logic = NIA }

type algebra_solver =
  | Singular
  | Sage
  | Magma
  | Mathematica
  | Macaulay2
  | Maple
  | SMTSolver of algsmt_option
  | PPL
  | SCIP
  | ISL

type variable_order =
  | LexOrder
  | AppearingOrder
  | RevLexOrder
  | RevAppearingOrder

let default_algebra_solver = Singular

let algebra_solver = ref default_algebra_solver

let algebra_solver_args = ref ""

let string_of_algsmt_logic l =
  match l with
  | NIA -> "nia"
  | LIA -> "lia"

let string_of_algsmt_option o =
  let path = o.algsmt_path in
  let logic = string_of_algsmt_logic (o.algsmt_logic) in
  ":\"" ^ path ^ "\":" ^ logic

let string_of_algebra_solver s =
  match s with
  | Singular -> "singular"
  | Magma -> "magma"
  | Sage -> "sage"
  | Mathematica -> "mathematica"
  | Macaulay2 -> "macaulay2"
  | Maple -> "maple"
  | SMTSolver o -> "smt:" ^ string_of_algsmt_option o ^ ""
  | PPL -> "ppl"
  | SCIP -> "scip"
  | ISL -> "isl"

let algsmt_logic_of_string l =
  let l = String.uppercase_ascii l in
  if l = "NIA" then NIA
  else if l = "LIA" then LIA
  else Stdlib.invalid_arg ("Invalid SMT logic: " ^ l)

let parse_algebra_solver str =
  if str = string_of_algebra_solver Singular then Singular
  else if str = string_of_algebra_solver Sage then Sage
  else if str = string_of_algebra_solver Magma then Magma
  else if str = string_of_algebra_solver Mathematica then Mathematica
  else if str = string_of_algebra_solver Macaulay2 then Macaulay2
  else if str = string_of_algebra_solver Maple then Maple
  else if Str.string_match (Str.regexp "^smt\\(:[^:]+\\)\\(:[^:]+\\)?") str 0 then
    let path =
      match String.split_on_char ':' (Str.matched_group 1 str) with
      | _::p::_ -> p
      | _ -> Stdlib.invalid_arg "Invalid path to SMT solver" in
    let logic =
      try
        match String.split_on_char ':' (Str.matched_group 2 str) with
        | _::l::_ -> algsmt_logic_of_string l
        | _ -> Stdlib.invalid_arg "Invalid SMT logic"
      with Not_found ->
        default_algsmt_option.algsmt_logic
    in
    SMTSolver { algsmt_path = path;
                algsmt_logic = logic }
  else if str = string_of_algebra_solver PPL then PPL
  else if str = string_of_algebra_solver SCIP then SCIP
  else if str = string_of_algebra_solver ISL then ISL
  else raise (UnknownAlgebraSolver ("Unknown algebra solver: " ^ str))

let singular_path = ref "Singular"
let sage_path = ref "sage"
let magma_path = ref "magma"
let mathematica_path = ref "wolframscript"
let macaulay2_path = ref "M2"
let maple_path = ref "maple"
let python_path = ref "python"

let apply_rewrite_mov = ref true
let apply_rewrite_vpc = ref true
let apply_rewrite_poly = ref true
let apply_rewrite_eqmod = ref false

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

let two_phase_rewriting = ref false

let polys_rewrite_replace_eexp = ref false

let carry_constraint = ref true

let minimize_constraint = ref false

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

let track_split = ref false

let expand_poly = ref false

let check_eq_first = ref false

(** Range-Specific Options *)

let default_range_solver = "boolector"

let range_solver = ref default_range_solver

let range_solver_args = ref ""

let use_btor = ref false

let use_binary_repr = ref false

let native_smtlib_expn_operator = ref None

let abs_interp = ref false

let mip_safety_solver = ref ISL

let safety_by_mip = ref false


(** Logging *)

let verbose = ref false

let logfile = ref "cryptoline.log"

let propose_logfile fnopt =
  let fnstr =
    match fnopt with
    | None -> ""
    | Some fn -> "." ^ fn in
  let (fn, ext) = if Str.string_match (Str.regexp "^\\(.*\\)\\(\\.log\\|\\.txt\\)$") !logfile 0 then (Str.matched_group 1 !logfile, Str.matched_group 2 !logfile)
                  else (!logfile, ".log") in
  fn ^ fnstr ^ ext

let unix cmd =
  let r = Unix.system cmd in
  if r = r then ()
  else ()

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

let keep_temp_files = ref false

let tmpdir = ref None

let tmpfile prefix suffix =
  match !tmpdir with
  | None -> Filename.temp_file prefix suffix
  | Some dir -> Filename.temp_file ~temp_dir:dir prefix suffix

let cleanup files =
  if not !keep_temp_files then List.iter Unix.unlink files


(** Equivalence checking *)

let abc_path = ref "abc"

let boolector_path = ref "boolector"
