
open Arg
open Options.Std
open Ast.Cryptoline
open Typecheck.Std
open Parsers.Std
open Utils

type action = Verify | Parse | PrintSSA | PrintESpec | PrintRSpec | PrintDataFlow | MoveAssert | SaveCoqCryptoline | Simulation | Debugger

let action = ref Verify

let save_coq_cryptoline_filename = ref ""

let initial_values_string = ref ""

let simulation_steps = ref (-1)

let simulation_dumps_string = ref ""

let args = [
    ("-autocast", Set Options.Std.auto_cast, " Automatically cast variables when parsing untyped programs\n");
    ("-autovpc", Unit (fun () -> Options.Std.auto_cast := true; Options.Std.auto_cast_preserve_value := true), "  Automatically cast variables when parsing untyped programs\n");
    ("-cli", Set Options.Std.use_cli, "\t     Use CLI to run verification tasks (when # of jobs > 1)\n");
    ("-cli_path", String (fun str -> Options.Std.cli_path := str), "PATH\n\t     Set the path to CLI\n");
    ("-disable_algebra", Unit (fun () -> verify_eassertion := false; verify_epost := false), "\n\t     Disable verification of all algebra properties\n");
    ("-disable_range", Unit (fun () -> verify_rassertion := false; verify_rpost := false), "\n\t     Disable verification of all range properties (excluding safety)\n");
    ("-disable_assertion", Unit (fun () -> verify_eassertion := false; verify_rassertion := false), "\n\t     Disable verification of all assertions\n");
    ("-disable_eassertion", Clear verify_eassertion, "\n\t     Disable verification of algebraic assertions\n");
    ("-disable_rassertion", Clear verify_rassertion, "\n\t     Disable verification of range assertions\n");
    ("-disable_epost", Clear verify_epost, "\n\t     Disable verification of algebraic postconditions (including cuts)\n");
    ("-disable_rpost", Clear verify_rpost, "\n\t     Disable verification of range postconditions (including cuts)\n");
    ("-disable_safety", Clear verify_program_safety, "\n\t     Disable verification of program safety\n");
    ("-jobs", Int (fun j -> jobs := j),
     "N    Set number of jobs (default = 4)\n");
    ("-ma", Unit (fun () -> action := MoveAssert), "\t     Convert to SSA and move assertions to post-condition");
    ("-p", Unit (fun () -> action := Parse), "\t     Print the parsed specification\n");
    ("-pespec", Unit (fun () -> action := PrintESpec), "   Print the parsed algebraic specification\n");
    ("-prspec", Unit (fun () -> action := PrintRSpec), "   Print the parsed range specification\n");
    ("-pssa", Unit (fun () -> action := PrintSSA), "     Print the parsed specification in SSA\n");
    ("-pdflow", Unit (fun () -> action := PrintDataFlow), "     Print data flow in SSA as a DOT graph\n");
    ("-debugger", String (fun s -> action := Debugger; initial_values_string := s), "      Run debugger over the parsed specification\n");
    ("-sim", String (fun s -> action := Simulation; initial_values_string := s), "      Simulate the parsed specification\n");
    ("-sim_steps", Int (fun n -> simulation_steps := n), "\n\t     Stop simulate after the specified number of steps \n");
    ("-sim_dumps", String (fun s -> simulation_dumps_string := s), "\n\t     Dump variable tables for the specified ranges of steps \n");
    ("-save_coq_cryptoline", String (fun str -> let _ = save_coq_cryptoline_filename := str in action := SaveCoqCryptoline),
     "FILENAME\n\t     Save the specification in the format acceptable by coq-cryptoline\n");
    ("-typing_file", String (fun f -> Options.Std.typing_file := Some f), "\n\t     Predefined typing in parsing untyped programs\n");
    ("-v", Set verbose, "\t     Display verbose messages\n");
    ("-vecuts", String (fun str -> verify_ecuts := Some ((Str.split (Str.regexp ",") str) |> List.map (parse_range) |> List.map flatten_range |> List.flatten)),
     "INDICES\n\t     Verify the specified algebraic cuts (comma separated). The indices\n\t     start with 0. The algebraic postcondition is the last cut.\n");
    ("-veacuts", String (fun str -> verify_eacuts := Some ((Str.split (Str.regexp ",") str) |> List.map (parse_range) |> List.map flatten_range |> List.flatten)),
     "INDICES\n\t     Verify the specified algebraic assertions before the specified\n\t     cuts (comma separated). The indices For each i in the specified\n\t     indices, the algebraic assertions between the (i-1)-th cut (or\n\t     the precondition if i = 0) and the i-th cut will be checked.\n");
    ("-vrcuts", String (fun str -> verify_rcuts := Some ((Str.split (Str.regexp ",") str) |> List.map (parse_range) |> List.map flatten_range |> List.flatten)),
     "INDICES\n\t     Verify the specified range cuts (comma separated). The indices\n\t     start with 0. The range postcondition is the last cut.\n");
    ("-vracuts", String (fun str -> verify_racuts := Some ((Str.split (Str.regexp ",") str) |> List.map (parse_range) |> List.map flatten_range |> List.flatten)),
     "INDICES\n\t     Verify the specified range assertions before the specified\n\t     cuts (comma separated). The indices For each i in the specified\n\t     indices, the range assertions between the (i-1)-th cut (or\n\t     the precondition if i = 0) and the i-th cut will be checked.\n");
    ("-vscuts", String (fun str -> verify_scuts := Some ((Str.split (Str.regexp ",") str) |> List.map (parse_range) |> List.map flatten_range |> List.flatten)),
     "INDICES\n\t     Verify safety of instructions before the specified cuts (comma\n\t     separated). The indices start with 0. For each i in the specified\n\t     indices, the safety of instructions between the (i-1)-th cut (or\n\t     the precondition if i = 0) and the i-th cut will be checked.\n")
  ]@Common.args
let args = List.sort Pervasives.compare args

let usage = "Usage: cv OPTIONS FILE\n"

let parse_spec file =
  let t1 = Unix.gettimeofday() in
  let _ = vprint ("Parsing Cryptoline file:\t\t") in
  try
    let spec = spec_from_file file in
    let t2 = Unix.gettimeofday() in
    let _ = vprintln ("[OK]\t\t" ^ string_of_running_time t1 t2) in
    spec
  with ex ->
    let t2 = Unix.gettimeofday() in
    let _ = vprintln ("[FAILED]\t" ^ string_of_running_time t1 t2) in
    raise ex

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

let check_well_formedness vs s =
  let t1 = Unix.gettimeofday() in
  let _ = vprint ("Checking well-formedness:\t\t") in
  let ropt = illformed_spec_reason vs s in
  let wf = ropt = None in
  let t2 = Unix.gettimeofday() in
  let _ = vprintln ((if wf then "[OK]\t" else "[FAILED]") ^ "\t" ^ string_of_running_time t1 t2) in
  let _ =
    match ropt with
    | Some (IllPrecondition e, r) -> vprintln("Ill-formed precondition: " ^ string_of_bexp e ^ ".\nReason: " ^ r)
    | Some (IllInstruction i, r) -> vprintln("Ill-formed instruction: " ^ string_of_instr i ^ ".\nReason: " ^ r)
    | Some (IllPostcondition e, r) -> vprintln("Ill-formed postcondition: " ^ string_of_bexp e ^ ".\nReason: " ^ r)
    | _ -> () in
  wf

let parse_initial_values vars =
  let vals = split_on_char_nonempty ',' !initial_values_string in
  List.map2 (
      fun x v ->
      let w = size_of_var x in
      let bs = if Str.string_match (Str.regexp "0b([0-1]+)") v 0 then NBits.bits_of_binary (String.trim (Str.matched_group 1 v))
               else if Str.string_match (Str.regexp "0x[0-9a-fA-F]+") v 0 then NBits.bits_of_hex (String.trim (Str.matched_group 1 v))
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
  let parse_and_check file =
    let (vs, s) = parse_spec file in
    if check_well_formedness (VS.of_list vs) s then (vs, from_typecheck_spec s)
    else if not !verbose then failwith ("The program is not well-formed. Run again with \"-v\" to see the detailed error.")
    else exit 1 in
  let t1 = Unix.gettimeofday() in
  let _ = Random.self_init() in
  match !action with
  | Verify ->
     let (_, s) = parse_and_check file in
     let res = Verify.Std.verify_spec s in
     let t2 = Unix.gettimeofday() in
     let _ = print_endline ("Verification result:\t\t\t"
                            ^ (if res then "[OK]\t" else "[FAILED]") ^ "\t"
                            ^ string_of_running_time t1 t2) in
     if res then exit 0 else exit 1
  | Parse ->
     let (vs, s) = parse_and_check file in
     print_endline ("proc main(" ^ string_of_inputs vs ^ ") =");
     print_endline (string_of_spec s)
  | PrintSSA ->
     let (vs, s) = parse_and_check file in
     let vs = List.map (ssa_var VM.empty) vs in
     let s = ssa_spec s in
     print_endline ("proc main(" ^ string_of_inputs vs ^ ") =");
     print_endline (string_of_spec s)
  | PrintESpec ->
     let s = from_typecheck_espec (espec_from_file file) in
     print_endline (string_of_espec s)
  | PrintRSpec ->
     let s = from_typecheck_rspec (rspec_from_file file) in
     print_endline (string_of_rspec s)
  | PrintDataFlow ->
     let (_, s) = parse_and_check file in
     let s = ssa_spec s in
     print_data_flow s.sprog stdout
  | MoveAssert ->
     let (vs, s) = parse_and_check file in
     let vs = List.map (ssa_var VM.empty) vs in
     let ssa = ssa_spec s in
     let moved = move_asserts ssa in
     print_endline ("proc main(" ^ string_of_inputs vs ^ ") =");
     print_endline (string_of_spec moved)
  | SaveCoqCryptoline ->
     let str_of_spec s =
       "proc main(" ^ string_of_inputs (VS.elements (infer_input_variables s)) ^ ") =\n"
       ^ string_of_spec s in
     let nth_name id = !save_coq_cryptoline_filename ^ "_" ^ string_of_int id in
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
     let (_, s) = parse_and_check file in
     let coq_specs = spec_to_coq_cryptoline s in
     List.iteri output coq_specs
  | Simulation ->
     let _ = Random.self_init () in
     let (vs, s) = parse_and_check file in
     let vals = parse_initial_values vs in
     let m = Simulator.make_map vs vals in
     Simulator.simulate ~steps:!simulation_steps ~dumps:(parse_simulation_dump_ranges()) m s.sprog
  | Debugger ->
     let _ = Random.self_init () in
     let (vs, s) = parse_and_check file in
     let vals = parse_initial_values vs in
     let m = Simulator.make_map vs vals in
     Simulator.shell m s.sprog


(*
let _ =
  parse args anon usage
*)
