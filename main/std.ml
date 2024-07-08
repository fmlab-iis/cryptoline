
open Arg
open Options.Std
open Ast.Cryptoline
open Ast.MultiTrack
open Typecheck.Std
open Parsers.Std
open Utils
open Utils.Std
open Sim

type action = Verify | Parse | Simulation | TestAbsdom
              | SaveCoqCryptoline | SaveBvCryptoline | SaveREP | SaveCuts
              | PrintSSA | PrintESpec | PrintRSpec | PrintDataFlow | PrintBtor | PrintProfile | PrintAbsdom

let action = ref Verify

let save_coqcryptoline_filename = ref ""

let save_bvcryptoline_filename = ref ""

let save_rep_filename = ref ""

let save_cuts_filename = ref ""

let initial_values_string_none = "none"

let initial_values_string_random = "random"

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

let absdom_assume_safe = ref false

let tmp_arg1 = ref ""

let str_of_hasset str =
  Str.split (Str.regexp ",") str |> Hashset.of_list

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
    ("-abs_interp", Unit (fun () -> Options.Std.abs_interp := true),
     Common.mk_arg_desc([""; "Use abstract interpretation."]));
    ("-abs_dom", Symbol (["box"; "oct"; "polka"], fun s -> Absdom.Common.domain := Absdom.Common.domain_of_string s),
     Common.mk_arg_desc([""; "Set abstract domain. The default domain is " ^ Absdom.Common.string_of_domain !Absdom.Common.domain ^ "."]));
    ("-abs_safe", Bool (fun b -> absdom_assume_safe := b),
     Common.mk_arg_desc(["b";
                         "Assume the program is safe iff b is true when doing abstract";
                         "interpretation with -pabsdom or -abs_test."]));
    ("-abs_test", Unit (fun () -> action := TestAbsdom),
     Common.mk_arg_desc([""; "Verify abstract domains computed by abstract interpretation."]));
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
    ("-f", String (fun s -> veri_proc_name := Some s),
     Common.mk_arg_desc(["PROC"; "Limit the verification to a specified procedure."]));
    ("-jobs", Int (fun j -> jobs := j),
     Common.mk_arg_desc(["N    Set number of jobs (default = 4)."]));
    ("-ma", Set apply_move_assert, Common.mk_arg_desc(["\t     Move assertions of an SSA specification to its post-condition. Use";
                                                       "with -pssa. Note that if the specification contains assume";
                                                       "instructions, the move of assertions may be unsound."]));
    ("-p", Unit (fun () -> action := Parse), Common.mk_arg_desc(["\t     Print the parsed specification."]));
    ("-pabsdom", Unit (fun () -> action := PrintAbsdom),
     Common.mk_arg_desc(["  Print the final abstract domain without considering cuts. Variables";
                         "are in SSA form."]));
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
    ("-safety-track", String (fun str -> safety_track := str), Common.mk_arg_desc(["NAME"; "Verify safety conditions on the specified track."]));
    ("-save-rep-uniform-types", Set save_rep_uniform_types, Common.mk_arg_desc([""; "Make the types of variables uniform when -save-rep is specified."]));
    ("-pbtor",
     String (fun str -> output_vars := Str.split (Str.regexp ",") str |> tmap String.trim;
                        action := PrintBtor),
     Common.mk_arg_desc(["VARS"; "Print the output variables (VARS, comma separated) in BTOR format."; "Input variables are renamed uniformly."]));
    ("-pdflow", Unit (fun () -> action := PrintDataFlow), Common.mk_arg_desc(["   Print data flow in SSA as a DOT graph."]));
    ("-pprof", Unit (fun () -> action := PrintProfile), Common.mk_arg_desc(["    Print the profile of a specification."]));
    ("-interactive", Set interactive_simulation,
     Common.mk_arg_desc([""; "Run simulator in interactive mode."]));
    ("-rmcuts", Set apply_remove_cuts, Common.mk_arg_desc(["   Remove cuts. Use with -pssa."]));
    ("-rmecuts", Set apply_remove_ecuts, Common.mk_arg_desc(["  Remove algebraic cuts. Use with -pssa."]));
    ("-rmrcuts", Set apply_remove_rcuts, Common.mk_arg_desc(["  Remove range cuts. Use with -pssa."]));
    ("-rmalg", Set apply_remove_algebra, Common.mk_arg_desc(["    Remove all algebraic predicates from assertions, cuts, and"; "postconditions in a specification. Use with -p or -pssa."]));
    ("-rmrng", Set apply_remove_range, Common.mk_arg_desc(["    Remove all range predicates from assertions, cuts, and"; "postconditions in a specification. Use with -p or -pssa."]));
    ("-sim", String (
                 fun s ->
                 action := Simulation;
                 initial_values_string := if s = initial_values_string_none then ""
                                          else s
               ),
     Common.mk_arg_desc(["INPUTS";
                         "Simulate the parsed specification starting with a list of initial";
                         "input values (comma separated). The input values should be an empty";
                         "string \"\" or \"none\" if the specification has no input variable.";
                         "Use \"random\" to simulate with random input values."]));
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
     Common.mk_arg_desc(["FILENAME"; "Cut the specification and save cuts separatedly. Multi-track cuts,"; "ecuts, and rcuts are not supported."]));
    ("-vecuts", Tuple [
                 String (fun str -> tmp_arg1 := str);
                 String (fun str -> let tbl =
                                      match mt_options.mt_verify_ecuts with
                                      | None -> let tbl = Hashtbl.create 10 in
                                                let _ = mt_options.mt_verify_ecuts <- Some tbl in
                                                tbl
                                      | Some tbl -> tbl in
                                    let _ = Options.Std.parse_and_add_ids !tmp_arg1 str tbl in
                                    tmp_arg1 := "")
               ],
     Common.mk_arg_desc(["TRACK INDICES"; "Verify the specified algebraic cuts (comma separated). The indices"; "start with 0. The algebraic postcondition is the last cut."]));
    ("-vea", Tuple [
                 String (fun str -> tmp_arg1 := str);
                 String (fun str -> let tbl =
                                      match mt_options.mt_verify_eassert_ids with
                                      | None -> let tbl = Hashtbl.create 10 in
                                                let _ = mt_options.mt_verify_eassert_ids <- Some tbl in
                                                tbl
                                      | Some tbl -> tbl in
                                    let _ = Options.Std.parse_and_add_ids !tmp_arg1 str tbl in
                                    tmp_arg1 := "")
               ],
     Common.mk_arg_desc(["TRACK INDICES"; "Verify algebraic assertions of specific IDs."]));
    ("-veacuts", Tuple [
                 String (fun str -> tmp_arg1 := str);
                 String (fun str -> let tbl =
                                      match mt_options.mt_verify_eacuts with
                                      | None -> let tbl = Hashtbl.create 10 in
                                                let _ = mt_options.mt_verify_eacuts <- Some tbl in
                                                tbl
                                      | Some tbl -> tbl in
                                    let _ = Options.Std.parse_and_add_ids !tmp_arg1 str tbl in
                                    tmp_arg1 := "")
               ],
     Common.mk_arg_desc(["TRACK INDICES"; "Verify the specified algebraic assertions before the specified";
                         "cuts (comma separated). The indices For each i in the specified"; "indices, the algebraic assertions between the (i-1)-th cut (or";
                         "the precondition if i = 0) and the i-th cut will be checked."]));
    ("-vrcuts", Tuple [
                 String (fun str -> tmp_arg1 := str);
                 String (fun str -> let tbl =
                                      match mt_options.mt_verify_rcuts with
                                      | None -> let tbl = Hashtbl.create 10 in
                                                let _ = mt_options.mt_verify_rcuts <- Some tbl in
                                                tbl
                                      | Some tbl -> tbl in
                                    let _ = Options.Std.parse_and_add_ids !tmp_arg1 str tbl in
                                    tmp_arg1 := "")
               ],
     Common.mk_arg_desc(["TRACK INDICES"; "Verify the specified range cuts (comma separated). The indices";
                         "start with 0. The range postcondition is the last cut."]));
    ("-vra", Tuple [
                 String (fun str -> tmp_arg1 := str);
                 String (fun str -> let tbl =
                                      match mt_options.mt_verify_rassert_ids with
                                      | None -> let tbl = Hashtbl.create 10 in
                                                let _ = mt_options.mt_verify_rassert_ids <- Some tbl in
                                                tbl
                                      | Some tbl -> tbl in
                                    let _ = Options.Std.parse_and_add_ids !tmp_arg1 str tbl in
                                    tmp_arg1 := "")
               ],
     Common.mk_arg_desc(["TRACK INDICES"; "Verify range assertions of specific IDs."]));
    ("-vracuts", Tuple [
                 String (fun str -> tmp_arg1 := str);
                 String (fun str -> let tbl =
                                      match mt_options.mt_verify_racuts with
                                      | None -> let tbl = Hashtbl.create 10 in
                                                let _ = mt_options.mt_verify_racuts <- Some tbl in
                                                tbl
                                      | Some tbl -> tbl in
                                    let _ = Options.Std.parse_and_add_ids !tmp_arg1 str tbl in
                                    tmp_arg1 := "")
               ],
     Common.mk_arg_desc(["TRACK INDICES"; "Verify the specified range assertions before the specified";
                         "cuts (comma separated). The indices For each i in the specified"; "indices, the range assertions between the (i-1)-th cut (or";
                         "the precondition if i = 0) and the i-th cut will be checked."]));
     ("-vs", Tuple [
                 String (fun str -> tmp_arg1 := str);
                 String (fun str -> let tbl =
                                      match mt_options.mt_verify_safety_ids with
                                      | None -> let tbl = Hashtbl.create 10 in
                                                let _ = mt_options.mt_verify_safety_ids <- Some tbl in
                                                tbl
                                      | Some tbl -> tbl in
                                    let _ = Options.Std.parse_and_add_ids !tmp_arg1 str tbl in
                                    tmp_arg1 := "")
               ],
      Common.mk_arg_desc(["TRACK INDICES"; "Verify safety conditions of specific IDs. Use with -isafety. Note"; "that -vscuts may change the IDs of safety conditions."]));
     ("-vt", String (fun str -> verify_tracks := Some (str_of_hasset str)),
      Common.mk_arg_desc(["TRACKS"; "Verify tracks of specific names."]));
     ("-vscuts", Tuple [
                 String (fun str -> tmp_arg1 := str);
                 String (fun str -> let tbl =
                                      match mt_options.mt_verify_scuts with
                                      | None -> let tbl = Hashtbl.create 10 in
                                                let _ = mt_options.mt_verify_scuts <- Some tbl in
                                                tbl
                                      | Some tbl -> tbl in
                                    let _ = Options.Std.parse_and_add_ids !tmp_arg1 str tbl in
                                    tmp_arg1 := "")
               ],
      Common.mk_arg_desc(["TRACK INDICES"; "Verify safety of instructions before the specified cuts (comma";
                          "separated). The indices start with 0. For each i in the specified"; "indices, the safety of instructions between the (i-1)-th cut (or";
                          "the precondition if i = 0) and the i-th cut will be checked."]))
  ]@Common.args_parsing@Common.args_io@Common.args_verifier
let args = List.sort Stdlib.compare args

let usage = "Usage: cv OPTIONS FILE\n"

let parse_program file =
  let t1 = Unix.gettimeofday() in
  let _ = vprint ("Parsing Cryptoline file:\t") in
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
  let vals = if !initial_values_string = initial_values_string_random then List.rev_map typ_of_var vars |> List.rev_map random_value |> List.rev_map Z.to_string |> List.rev
             else split_on_char_nonempty ',' !initial_values_string in
  List.map2 (
      fun x v ->
      let w = size_of_var x in
      let bs = let zv = Z.of_string v in
               let _ = if not (is_representable (typ_of_var x) zv) then
                         failwith (Printf.sprintf "The value %s is not representable by the type %s of variable %s."
                                     v (string_of_typ (typ_of_var x)) (string_of_var x))
               in
               let bs = NBits.bits_of_num v in
               let extlen = w - List.length bs in
               if Z.lt zv Z.zero then NBits.sext extlen bs
               else NBits.zext extlen bs in
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
  let vprintln_title1 title =
    let _ = vprintln ("\n" ^ title) in
    let _ = vprintln (String.concat "" (List.init (String.length title) (fun _ -> "="))) in
    () in
  let vprintln_title2 title =
    let _ = vprintln ("\n" ^ title) in
    let _ = vprintln (String.concat "" (List.init (String.length title) (fun _ -> "-"))) in
    () in
  let string_of_formals vs = String.concat ", " (List.map (fun v -> string_of_typ v.vtyp ^ " " ^ string_of_var v) vs) in
  let print_procedure_sig fn ivs ovs =
    let ivs_str = string_of_formals ivs in
    let ovs_str =
      match ovs with
      | [] -> ""
      | _ -> "; " ^ string_of_formals ovs in
    print_endline ("proc " ^ fn ^ "(" ^ ivs_str ^ ovs_str ^ ") =") in
  let print_procedure fn ivs ovs s =
    print_procedure_sig fn ivs ovs;
    print_endline (string_of_tagged_spec ~typ:!print_with_types s) in
  let t1 = Unix.gettimeofday() in
  let _ = Random.self_init() in
  match !action with
  | Verify ->
     let specs =
       let specs = Common.parse_and_check_all file in
       match !veri_proc_name with
       | None -> specs
       | Some fn -> if SM.mem fn specs then SM.filter (fun n _ -> n = fn) specs
                    else failwith ("Procedure " ^ fn ^ " is not found.") in
     let res = SM.fold (
                   fun fn (_, s) res ->
                   let _ = logfile := propose_logfile (Some fn) in
                   let lt1 = Unix.gettimeofday() in
                   let _ = vprintln_title1 ("Procedure " ^ fn) in
                   let r = Verify.Std.verify_tagged_spec Options.Std.mt_options s in
                   let lt2 = Unix.gettimeofday() in
                   let _ = vprintln_title2 ("Procedure Summary") in
                   let _ = vprintln ("Procedure verification:\t\t\t\t"
                                     ^ (if r then "[OK]\t" else "[FAILED]") ^ "\t"
                                     ^ string_of_running_time lt1 lt2) in
                   r && res) specs true in
     let t2 = Unix.gettimeofday() in
     let _ = vprintln_title1 "Summary" in
     let _ = print_endline ("Verification result:\t\t\t\t"
                            ^ (if res then "[OK]\t" else "[FAILED]") ^ "\t"
                            ^ string_of_running_time t1 t2) in
     if res then exit 0 else exit 1
  | Parse ->
     let specs = Common.parse_and_check_all file in
     let _ = SM.iter (fun fn ((ivs, ovs), s) ->
                 let s = List.fold_left (|>) s
                           ((if !apply_remove_algebra then [remove_algebra_tagged_spec] else [])
                            @(if !apply_remove_range then [remove_range_tagged_spec] else [])) in
                 print_procedure fn ivs ovs s; print_endline "") specs
     in
     ()
  | PrintSSA ->
     let specs = Common.parse_and_check_all file in
     let _ = SM.iter (fun fn ((ivs, ovs), s) ->
                 let ivs = List.map (ssa_var VM.empty) ivs in
                 let (ssa_vm, init_spec) = ssa_tagged_spec_full s in
                 let ovs = List.map (ssa_var ssa_vm) ovs in
                 let post_processes = (if !apply_move_assert then [move_tagged_asserts] else [])
                                      @(if !apply_remove_cuts then [remove_cut_tagged_spec] else [])
                                      @(if !apply_remove_ecuts then [remove_ecut_tagged_spec] else [])
                                      @(if !apply_remove_rcuts then [remove_rcut_tagged_spec] else [])
                                      @(if !apply_remove_algebra then [remove_algebra_tagged_spec] else [])
                                      @(if !apply_remove_range then [remove_range_tagged_spec] else [])
                 in
                 let s = List.fold_left (|>) init_spec post_processes in
                 print_procedure fn ivs ovs s; print_endline "") specs in
     ()
  | PrintESpec ->
     let s = from_typecheck_espec (espec_from_file file |> snd) in
     print_endline (string_of_espec ~typ:!print_with_types s)
  | PrintRSpec ->
     let s = from_typecheck_rspec (rspec_from_file file |> snd) in
     print_endline (string_of_rspec ~typ:!print_with_types s)
  | PrintDataFlow ->
     let (_, s) = Common.parse_and_check file in
     let s = tagged_spec_untag s |> ssa_spec in
     print_data_flow s.sprog stdout
  | PrintBtor ->
     let ((ivs, _), s) = Common.parse_and_check file in
     let s = tagged_spec_untag s in
     let m = new Qfbv.Common.btor_manager in
     let outs = Common.find_output_vars s.sprog !output_vars in
     let str = Qfbv.Common.btor_program ~rename:true m s.sprog ivs outs in
     print_endline str
  | PrintProfile ->
     let (_, s) = Common.parse_and_check file in
     let s = tagged_spec_untag s in
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
       "proc main(" ^ string_of_formals (VS.elements (infer_input_variables s)) ^ ") =\n"
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
     let _ = if SS.cardinal (tagged_spec_tags s) > 1 then failwith ("Multi-track cuts are not supported.") in
     let s = tagged_spec_untag s in
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
     let (_, s) = Common.parse_and_check file in
     let _ = if SS.cardinal (tagged_spec_tags s) > 1 then failwith ("Multi-track cuts are not supported.") in
     let s = tagged_spec_untag s |> normalize_spec |> ssa_spec in
     let vgen = Verify.Common.vgen_of_spec s in
     let ess = s
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
         Ast.Cryptoline.spre = (eands (ps.Verify.Cas.ppre::ps.Verify.Cas.pprog), rtrue);
         Ast.Cryptoline.sprog = [Inop];
         Ast.Cryptoline.spost = ([(ps.Verify.Cas.ppost, [])], [])
       } in
     let vs_of_os os = let uniform_vtyp v = { vname = v.vname;
                                              vtyp = Tuint 64;
                                              vsidx = v.vsidx;
                                              vid = v.vid } in
                       vars_spec os |> (if !save_rep_uniform_types then VS.map uniform_vtyp else Fun.id) |> VS.elements in
     let str_of_spec os =
       let vs = vs_of_os os in
       ("proc main(" ^ string_of_formals vs ^ ") =\n")
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
       "proc main(" ^ string_of_formals (VS.elements (infer_input_variables s)) ^ ") =\n"
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
     let _ = if SS.cardinal (tagged_spec_tags s) > 1 then failwith ("Multi-track cuts are not supported.") in
     let s = tagged_spec_untag s in
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
     let _ = if SS.cardinal (tagged_spec_tags s) > 1 then failwith ("Multi-track cuts are not supported.") in
     let s = tagged_spec_untag s in
     let bvspecs = spec_to_bvcryptoline s in
     List.iteri output bvspecs
  | Simulation ->
     let _ = Random.self_init () in
     let ((ivs, _), s) = Common.parse_and_check file in
     let s = tagged_spec_untag s in
     let vals = parse_initial_values ivs in
     let m = Simulator.make_map ivs vals in
     if !interactive_simulation then Simulator.shell m s.sprog
     else Simulator.simulate ~steps:!simulation_steps ~dumps:(parse_simulation_dump_ranges()) m s.sprog
  | PrintAbsdom ->
     let (_, s) = Common.parse_and_check file in
     let s = tagged_spec_untag s in
     let rs = rspec_of_spec (ssa_spec (remove_cut_spec s)) in
     let vars = vars_rspec rs in
     let mgr = Absdom.Std.create_manager vars in
     let vars_dom = Absdom.Std.abs_of_vars mgr (VS.diff vars (lvs_program rs.rsprog)) in
     begin
       match Absdom.Std.abs_of_rbexp mgr ~abs:vars_dom rs.rspre with
       | Some dom ->
          let start_dom = Absdom.Std.meet mgr dom vars_dom in
          let dom' = Absdom.Std.interp_prog ~safe:!absdom_assume_safe mgr start_dom rs.rsprog in
          let _ = print_endline (Absdom.Std.string_of_abs dom') in
          ()
       | None ->
          print_endline ("None")
     end
  | TestAbsdom ->
     let _ = Options.Std.abs_interp := false in
     let t1 = Unix.gettimeofday() in
     let (_, s) = Common.parse_and_check file in
     let res = Verify.WithLwt.test_tagged_absdom_lwt Options.Std.mt_options ~safe:!absdom_assume_safe (ssa_tagged_spec s) in
     let t2 = Unix.gettimeofday() in
     let _ = print_endline (Printf.sprintf "%-55s%-8s%-14s" "Final result:"  (if res then "[OK]" else "[FAIL]") (string_of_running_time t1 t2)) in
     ()

(*
let _ =
  parse args anon usage
*)
