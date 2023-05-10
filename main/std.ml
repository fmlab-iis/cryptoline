
open Arg
open Options.Std
open Ast.Cryptoline
open Typecheck.Std
open Parsers.Std
open Utils
open Utils.Std
open Sim

type action = Verify | Parse | PrintSSA | PrintESpec | PrintRSpec | PrintDataFlow | PrintBtor | PrintProfile | SaveCoqCryptoline | SaveBvCryptoline | SaveREP | SaveCuts | Simulation

let action = ref Verify

let save_coqcryptoline_filename = ref ""

let save_bvcryptoline_filename = ref ""

let save_rep_filename = ref ""

let save_cuts_filename = ref ""

let initial_values_string_none = "none"

let initial_values_string = ref ""

let simulation_steps = ref (-1)

let simulation_dumps_string = ref ""

let interactive_simulation = ref false

let output_vars = ref []

let coq_filename_extension = ".v"

let apply_move_assert = ref false

let apply_remove_cuts = ref false

let apply_remove_ecuts = ref false

let apply_remove_rcuts = ref false

let apply_remove_algebra = ref false

let apply_remove_range = ref false

let save_rep_uniform_types = ref false

let print_with_types = ref false

let str_to_ids str =
  if str = "-" then Hashset.of_list []
  else (Str.split (Str.regexp ",") str) |> List.map (parse_range) |> List.map flatten_range |> List.flatten |> Hashset.of_list

let suggest_name name ext id =
  let nth_name id = !name ^ "_" ^ string_of_int id in
  let rec helper i =
    let fn = nth_name id ^ "_" ^ string_of_int i ^ ext in
    if Sys.file_exists fn then helper (i + 1)
    else fn in
  let fn = nth_name id ^ ext in
  if Sys.file_exists fn then helper 0
  else fn

let args = [
    ("-autocast", Set Options.Std.auto_cast,
     Common.mk_arg_desc([" Automatically cast variables when parsing untyped programs."]));
    ("-autovpc", Unit (fun () -> Options.Std.auto_cast := true; Options.Std.auto_cast_preserve_value := true),
     Common.mk_arg_desc(["  Automatically cast variables when parsing untyped programs."]));
    ("-cli", Set Options.Std.use_cli,
     Common.mk_arg_desc(["\t     Use CLI to run verification tasks (when # of jobs > 1)."]));
    ("-cli_path", String (fun str -> Options.Std.cli_path := str),
     Common.mk_arg_desc(["PATH"; "Set the path to CLI."]));
    ("-disable_algebra", Unit (fun () -> verify_eassertion := false; verify_epost := false),
     Common.mk_arg_desc([""; "Disable verification of all algebra properties."]));
    ("-disable_range", Unit (fun () -> verify_rassertion := false; verify_rpost := false),
     Common.mk_arg_desc([""; "Disable verification of all range properties (excluding safety)."]));
    ("-disable_assertion", Unit (fun () -> verify_eassertion := false; verify_rassertion := false),
     Common.mk_arg_desc([""; "Disable verification of all assertions."]));
    ("-disable_eassertion", Clear verify_eassertion,
     Common.mk_arg_desc([""; "Disable verification of algebraic assertions."]));
    ("-disable_rassertion", Clear verify_rassertion,
     Common.mk_arg_desc([""; "Disable verification of range assertions."]));
    ("-disable_epost", Clear verify_epost,
     Common.mk_arg_desc([""; "Disable verification of algebraic postconditions (including cuts)."]));
    ("-disable_rpost", Clear verify_rpost,
     Common.mk_arg_desc([""; "Disable verification of range postconditions (including cuts)."]));
    ("-disable_safety", Clear verify_program_safety,
     Common.mk_arg_desc([""; "Disable verification of program safety."]));
    ("-jobs", Int (fun j -> jobs := j),
     Common.mk_arg_desc(["N    Set number of jobs (default = 4)."]));
    ("-ma", Set apply_move_assert, Common.mk_arg_desc(["\t     Move assertions of an SSA specification to its post-condition. Use";
                                                       "with -pssa. Note that if the specification contains assume";
                                                       "instructions, the move of assertions may be unsound."]));
    ("-p", Unit (fun () -> action := Parse), Common.mk_arg_desc(["\t     Print the parsed specification."]));
    ("-pespec", Unit (fun () -> action := PrintESpec), Common.mk_arg_desc(["   Print the parsed algebraic specification."]));
    ("-prspec", Unit (fun () -> action := PrintRSpec), Common.mk_arg_desc(["   Print the parsed range specification."]));
    ("-pssa", Unit (fun () -> action := PrintSSA), Common.mk_arg_desc(["     Print the parsed specification in SSA."]));
    ("-ptyp", Unit (fun () -> print_with_types := true), Common.mk_arg_desc(["     Make types explicit when printing the input specification."]));
    ("-save-rep", String (fun str -> action := SaveREP; save_rep_filename := str),
     Common.mk_arg_desc(["FILENAME";
                         "Save algebraic part of the input specification as root";
                         "entailment problems. A root entailment problem is represented";
                         "as a specification containing only algebraic pre- and";
                         "post-conditions."]));
    ("-save-rep-uniform-types", Set save_rep_uniform_types, Common.mk_arg_desc([""; "Make the types of variables uniform when -save-rep is specified."]));
    ("-pbtor", String (fun str -> output_vars := Str.split (Str.regexp ",") str |> tmap String.trim;
                                  action := PrintBtor), Common.mk_arg_desc(["    Print the input program in BTOR format. Input variables are renamed"; "uniformly."]));
    ("-pdflow", Unit (fun () -> action := PrintDataFlow), Common.mk_arg_desc(["   Print data flow in SSA as a DOT graph."]));
    ("-pprof", Unit (fun () -> action := PrintProfile), Common.mk_arg_desc(["    Print the profile of a specification."]));
    ("-interactive", Set interactive_simulation,
     Common.mk_arg_desc([""; "Run simulator in interactive mode."]));
    ("-rmcuts", Set apply_remove_cuts, Common.mk_arg_desc(["   Remove cuts. Use with -pssa."]));
    ("-rmecuts", Set apply_remove_ecuts, Common.mk_arg_desc(["  Remove algebraic cuts. Use with -pssa."]));
    ("-rmrcuts", Set apply_remove_rcuts, Common.mk_arg_desc(["  Remove range cuts. Use with -pssa."]));
    ("-rmalg", Set apply_remove_algebra, Common.mk_arg_desc(["    Remove all algebraic predicates from assertions, cuts, and"; "postconditions in a specification.. Use with -p or -pssa."]));
    ("-rmrng", Set apply_remove_range, Common.mk_arg_desc(["    Remove all range predicates from assertions, cuts, and"; "postconditions in a specification.. Use with -p or -pssa."]));
    ("-sim", String (fun s -> action := Simulation; initial_values_string := if s = initial_values_string_none then "" else s), Common.mk_arg_desc(["INPUTS"; "Simulate the parsed specification starting with a list of initial"; "input values (comma separated), which should be \"none\" if the"; "specification has no input variable."]));
    ("-sim_steps", Int (fun n -> simulation_steps := n),
     Common.mk_arg_desc([""; "Stop simulate after the specified number of steps."]));
    ("-sim_dumps", String (fun s -> simulation_dumps_string := s),
     Common.mk_arg_desc([""; "Dump variable tables for the specified ranges of steps."]));
    ("-sim_hex", Set Simulator.print_hexadecimal, Common.mk_arg_desc(["  Print hexadecimal variable values in simulation."]));
    ("-save_coqcryptoline", String (fun str -> let _ = save_coqcryptoline_filename := str in action := SaveCoqCryptoline),
     Common.mk_arg_desc(["FILENAME"; "Save the specification in the format acceptable by CoqCryptoLine."]));
    ("-save_bvcryptoline", String (fun str -> let _ = save_bvcryptoline_filename := str in action := SaveBvCryptoline),
     Common.mk_arg_desc(["FILENAME"; "Save the specification in the format acceptable by BvCryptoLine."]));
    ("-save-cuts", String (fun str -> let _ = save_cuts_filename := str in action := SaveCuts),
     Common.mk_arg_desc(["FILENAME"; "Cut the specification and save cuts separatedly."]));
    ("-vecuts", String (fun str -> verify_ecuts := Some (str_to_ids str)),
     Common.mk_arg_desc(["INDICES"; "Verify the specified algebraic cuts (comma separated). The indices"; "start with 0. The algebraic postcondition is the last cut."]));
    ("-vea", String (fun str -> verify_eassert_ids := Some (str_to_ids str)),
     Common.mk_arg_desc(["INDICES"; "Verify algebraic assertions of specific IDs."]));
    ("-veacuts", String (fun str -> verify_eacuts := Some (str_to_ids str)),
     Common.mk_arg_desc(["INDICES"; "Verify the specified algebraic assertions before the specified";
                         "cuts (comma separated). The indices For each i in the specified"; "indices, the algebraic assertions between the (i-1)-th cut (or";
                         "the precondition if i = 0) and the i-th cut will be checked."]));
    ("-vrcuts", String (fun str -> verify_rcuts := Some (str_to_ids str)),
     Common.mk_arg_desc(["INDICES"; "Verify the specified range cuts (comma separated). The indices";
                         "start with 0. The range postcondition is the last cut."]));
    ("-vra", String (fun str -> verify_rassert_ids := Some (str_to_ids str)),
     Common.mk_arg_desc(["INDICES"; "Verify range assertions of specific IDs."]));
    ("-vracuts", String (fun str -> verify_racuts := Some (str_to_ids str)),
     Common.mk_arg_desc(["INDICES"; "Verify the specified range assertions before the specified";
                         "cuts (comma separated). The indices For each i in the specified"; "indices, the range assertions between the (i-1)-th cut (or";
                         "the precondition if i = 0) and the i-th cut will be checked."]));
     ("-vs", String (fun str -> verify_safety_ids := Some (str_to_ids str)),
      Common.mk_arg_desc(["INDICES"; "Verify safety conditions of specific IDs. Use with -isafety. Note"; "that -vscuts may change the IDs of safety conditions."]));
     ("-vscuts", String (fun str -> verify_scuts := Some (str_to_ids str)),
      Common.mk_arg_desc(["INDICES"; "Verify safety of instructions before the specified cuts (comma";
                          "separated). The indices start with 0. For each i in the specified"; "indices, the safety of instructions between the (i-1)-th cut (or";
                          "the precondition if i = 0) and the i-th cut will be checked."]))
  ]@Common.args_parsing@Common.args_io@Common.args_verifier
let args = List.sort Stdlib.compare args

let usage = "Usage: cv OPTIONS FILE\n"

let parse_program file =
  let t1 = Unix.gettimeofday() in
  let _ = vprint ("Parsing Cryptoline file: ") in
  try
    let p = program_from_file file in
    let t2 = Unix.gettimeofday() in
    let _ = vprintln ("[OK]\t\t" ^ string_of_running_time t1 t2) in
    p
  with ex ->
    let t2 = Unix.gettimeofday() in
    let _ = vprintln ("[FAILED]\t" ^ string_of_running_time t1 t2) in
    raise ex

let parse_initial_values vars =
  let vals = split_on_char_nonempty ',' !initial_values_string in
  List.map2 (
      fun x v ->
      let w = size_of_var x in
      let bs = if Str.string_match (Str.regexp "0b\\([0-1]+\\)") v 0 then NBits.bits_of_binary (String.trim (Str.matched_group 1 v))
               else if Str.string_match (Str.regexp "0x\\([0-9a-fA-F]+\\)") v 0 then
                 let _ = print_endline (Str.matched_group 1 v) in
                 NBits.bits_of_hex (String.trim (Str.matched_group 1 v))
               else let bs = NBits.bits_of_num v in
                    let negative = String.length v > 0 && String.get v 0 = '-' in
                    if negative then NBits.sext (w - List.length bs) bs
                    else NBits.zext (w - List.length bs) bs in
      if List.length bs <> w then failwith ("Bit width mismatch: variable " ^ string_of_var x ^ ", value " ^ v)
      else bs
    ) vars vals

let parse_simulation_dump_ranges () =
  let str = String.trim !simulation_dumps_string in
  if str = "" then []
  else List.map parse_range (split_on_char_nonempty ',' str)

let print_data_flow p fout =
  output_string fout "digraph {\n";
  List.iter (fun i ->
      let lvs = lvs_instr i in
      let rvs = rvs_instr i in
      if not (VS.is_empty lvs) && not (VS.is_empty rvs) then
        VS.iter (fun lv -> VS.iter (fun rv -> output_string fout (string_of_var rv ^ " -> " ^ string_of_var lv ^ ";\n")) rvs) lvs
    ) p;
  output_string fout "}\n"

let anon file =
  let string_of_inputs vs = String.concat ", " (List.map (fun v -> string_of_typ v.vtyp ^ " " ^ string_of_var v) vs) in
  let t1 = Unix.gettimeofday() in
  let _ = Random.self_init() in
  match !action with
  | Verify ->
     let (_, s) = Common.parse_and_check file in
     let res = Verify.Std.verify_spec s in
     let t2 = Unix.gettimeofday() in
     let _ = print_endline ("Verification result:\t\t\t"
                            ^ (if res then "[OK]\t" else "[FAILED]") ^ "\t"
                            ^ string_of_running_time t1 t2) in
     if res then exit 0 else exit 1
  | Parse ->
     let (vs, s) = Common.parse_and_check file in
     let s = List.fold_left (|>) s
               ((if !apply_remove_algebra then [remove_algebra_spec] else [])
                @(if !apply_remove_range then [remove_range_spec] else [])) in
     print_endline ("proc main(" ^ string_of_inputs vs ^ ") =");
     print_endline (string_of_spec ~typ:!print_with_types s)
  | PrintSSA ->
     let (vs, s) = Common.parse_and_check file in
     let vs = List.map (ssa_var VM.empty) vs in
     let init_spec = ssa_spec s in
     let post_processes = (if !apply_move_assert then [move_asserts] else [])
                          @(if !apply_remove_cuts then [remove_cut_spec] else [])
                          @(if !apply_remove_ecuts then [remove_ecut_spec] else [])
                          @(if !apply_remove_rcuts then [remove_rcut_spec] else [])
                          @(if !apply_remove_algebra then [remove_algebra_spec] else [])
                          @(if !apply_remove_range then [remove_range_spec] else [])
     in
     let s = List.fold_left (|>) init_spec post_processes in
     print_endline ("proc main(" ^ string_of_inputs vs ^ ") =");
     print_endline (string_of_spec ~typ:!print_with_types s)
  | PrintESpec ->
     let s = from_typecheck_espec (espec_from_file file) in
     print_endline (string_of_espec ~typ:!print_with_types s)
  | PrintRSpec ->
     let s = from_typecheck_rspec (rspec_from_file file) in
     print_endline (string_of_rspec ~typ:!print_with_types s)
  | PrintDataFlow ->
     let (_, s) = Common.parse_and_check file in
     let s = ssa_spec s in
     print_data_flow s.sprog stdout
  | PrintBtor ->
     let (vs, s) = Common.parse_and_check file in
     let m = new Qfbv.Common.btor_manager in
     let outs = Common.find_output_vars s.sprog !output_vars in
     let str = Qfbv.Common.btor_program ~rename:true m s.sprog vs outs in
     print_endline str
  | PrintProfile ->
     let (_, s) = Common.parse_and_check file in
     let p = profile_spec s in
     print_endline (String.concat "\n" [
                        "Types (excluding carries and annotations): " ^ String.concat ", " (List.map string_of_typ p.program_typs_exclude_carries);
                        "Types (excluding carries): " ^ String.concat ", " (List.map string_of_typ p.typs_exclude_carries);
                        "Number of variables (excluding annotations): " ^ string_of_int p.num_program_vars;
                        "Number of variables: " ^ string_of_int p.num_vars;
                        "Number of SSA variables (excluding annotations): " ^ string_of_int p.num_program_ssa_vars;
                        "Number of SSA variables: " ^ string_of_int p.num_ssa_vars;
                        "Number of instructions (excluding annotations): " ^ string_of_int p.num_program_instrs;
                        "Number of instructions: " ^ string_of_int p.num_instrs;
                        "Has carries: " ^ string_of_bool p.has_carries;
                        "Has assumes: " ^ string_of_bool p.has_assumes;
                        "Has signed: " ^ string_of_bool p.has_signed;
                        "Has algebraic precondition: " ^ string_of_bool p.has_algebraic_precondition;
                        "Has range precondition: " ^ string_of_bool p.has_range_precondition;
                        "Has algebraic postcondition: " ^ string_of_bool p.has_algebraic_postcondition;
                        "Has range postcondition: " ^ string_of_bool p.has_range_postcondition
       ])
  | SaveCuts ->
     let str_of_spec s =
       "proc main(" ^ string_of_inputs (VS.elements (infer_input_variables s)) ^ ") =\n"
       ^ string_of_spec ~typ:!print_with_types s in
     let nth_name id = !save_cuts_filename ^ "_" ^ string_of_int id in
     let suggest_name sid =
       let rec helper i =
         let fn = nth_name sid ^ "_" ^ string_of_int i ^ cryptoline_filename_extension in
         if Sys.file_exists fn then helper (i + 1)
         else fn in
       let fn = nth_name sid ^ cryptoline_filename_extension in
       if Sys.file_exists fn then helper 0
       else fn in
     let output sid s =
       let ch = open_out (suggest_name sid) in
       let _ = output_string ch (str_of_spec s) in
       let _ = close_out ch in
       () in
     let (_, s) = Common.parse_and_check file in
     let postprocess s =
       List.fold_left (|>) s
         ((if !apply_remove_algebra then [remove_algebra_spec] else [])
          @(if !apply_remove_range then [remove_range_spec] else [])) in
     let ss = normalize_spec s
              |> ssa_spec
              |> (if !apply_rewrite_vpc then rewrite_mov_ssa_spec else Fun.id)
              |> cut_spec in
     List.iteri output (List.rev_map postprocess (List.rev ss))
  | SaveREP ->
     (* Print the algebraic part as root entailment problems *)
     let s = Common.parse_and_check file |> snd |> normalize_spec |> ssa_spec in
     let vgen = Verify.Common.vgen_of_spec s in
     let ess = normalize_spec s
               |> (if !apply_rewrite_mov then rewrite_mov_ssa_spec else Fun.id)
               |> (if !apply_rewrite_vpc then rewrite_vpc_ssa_spec else Fun.id)
               |> espec_of_spec
               |> (fun s -> tappend (cut_eassert s) (cut_espec s))
               |> tflatten |> List.split |> snd
               |> tmap split_espec_post
               |> tflatten
               |> tmap (fun s -> slice_espec_ssa s None) in
     let ps_of_es es = Verify.Common.bv2z_espec vgen es
                       |> (fun (vgen, ps) -> if !apply_rewrite_poly then Verify.Common.rewrite_poly_spec vgen ps else (vgen, ps))
                       |> snd in
     let os_of_ps ps = {
         Ast.Cryptoline.spre = (eands (ps.Verify.Common.ppre::ps.Verify.Common.pprog), rtrue);
         Ast.Cryptoline.sprog = [Inop];
         Ast.Cryptoline.spost = ([(ps.Verify.Common.ppost, [])], [])
       } in
     let vs_of_os os = let uniform_vtyp v = { vname = v.vname;
                                              vtyp = Tuint 64;
                                              vsidx = v.vsidx;
                                              vid = v.vid } in
                       vars_spec os |> (if !save_rep_uniform_types then VS.map uniform_vtyp else Fun.id) |> VS.elements in
     let str_of_spec os =
       let vs = vs_of_os os in
       ("proc main(" ^ string_of_inputs vs ^ ") =\n")
       ^ (string_of_spec ~typ:!print_with_types os)
       ^ "\n" in
     let is_rep_spec_nontrivial s = not (is_espec_trivial (espec_of_spec s)) in
     let output sid s =
       let ch = open_out (suggest_name save_rep_filename cryptoline_filename_extension sid) in
       let _ = output_string ch (str_of_spec s) in
       let _ = close_out ch in
       () in
     tmap ps_of_es ess
     |> tmap os_of_ps
     |> List.filter is_rep_spec_nontrivial
     |> List.iteri (fun i os -> output i os)
  | SaveCoqCryptoline ->
     let str_of_spec s =
       "proc main(" ^ string_of_inputs (VS.elements (infer_input_variables s)) ^ ") =\n"
       ^ string_of_spec s in
     let nth_name id = !save_coqcryptoline_filename ^ "_" ^ string_of_int id in
     let suggest_name sid =
       let rec helper i =
         let fn = nth_name sid ^ "_" ^ string_of_int i ^ cryptoline_filename_extension in
         if Sys.file_exists fn then helper (i + 1)
         else fn in
       let fn = nth_name sid ^ cryptoline_filename_extension in
       if Sys.file_exists fn then helper 0
       else fn in
     let output sid s =
       let ch = open_out (suggest_name sid) in
       let _ = output_string ch (str_of_spec s) in
       let _ = close_out ch in
       () in
     let (_, s) = Common.parse_and_check file in
     let coq_specs = spec_to_coqcryptoline s in
     List.iteri output coq_specs
  | SaveBvCryptoline ->
     let nth_name id = !save_bvcryptoline_filename ^ "_" ^ string_of_int id in
     let suggest_name sid =
       let rec helper i =
         let fn = nth_name sid ^ "_" ^ string_of_int i ^ coq_filename_extension in
         if Sys.file_exists fn then helper (i + 1)
         else fn in
       let fn = nth_name sid ^ coq_filename_extension in
       if Sys.file_exists fn then helper 0
       else fn in
     let output sid s =
       let ch = open_out (suggest_name sid) in
       let _ = output_string ch s in
       let _ = close_out ch in
       () in
     let (_, s) = Common.parse_and_check file in
     let bvspecs = spec_to_bvcryptoline s in
     List.iteri output bvspecs
  | Simulation ->
     let _ = Random.self_init () in
     let (vs, s) = Common.parse_and_check file in
     let vals = parse_initial_values vs in
     let m = Simulator.make_map vs vals in
     if !interactive_simulation then Simulator.shell m s.sprog
     else Simulator.simulate ~steps:!simulation_steps ~dumps:(parse_simulation_dump_ranges()) m s.sprog


(*
let _ =
  parse args anon usage
*)
