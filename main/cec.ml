
open Arg
open Options.Std
open Ast.Cryptoline
open Utils
open Utils.Std
open Utils.Tasks


exception AbcError of string
exception AigError of string

(** Options *)

let include_precondition = ref false

let construct_miter_in_generator = ref true

type cec_engine =
    CEC          (** Use cec *)
  | SAT          (** Use miter, sat *)
  | IPROVE       (** Use miter, prove *)
  | KISSAT       (** write_cnf in abc and then invoke kissat *)
  | ABC9_CEC     (** Use miter, &get, &cec -m *)
  | ABC9_CEC_TWO (** Use &cec *)

let cec_engine = ref ABC9_CEC

type aig_generator = Boolector | Yosys

let aig_generator = ref Boolector

let string_of_aig_generator = function
  | Boolector -> "boolector"
  | Yosys -> "yosys"

let aig_generator_of_string str =
  if str = "boolector" then Boolector
  else if str = "yosys" then Yosys
  else failwith (Printf.sprintf "Unknown AIG generator %s" str)

let string_of_cec_engine = function
  | CEC -> "cec"
  | SAT -> "sat"
  | KISSAT -> "kissat"
  | IPROVE -> "iprove"
  | ABC9_CEC -> "&cec"
  | ABC9_CEC_TWO -> "&cec-two"

let cec_engine_of_string str =
  if str = "cec" then CEC
  else if str = "sat" then SAT
  else if str = "kissat" then KISSAT
  else if str = "iprove" then IPROVE
  else if str = "&cec" then ABC9_CEC
  else if str = "&cec-two" then ABC9_CEC_TWO
  else failwith (Printf.sprintf "Unknown CEC engine %s" str)

let abc_args = ref None

let abc_cmds = ref None

let abc_preprocess = ref false

(* the rwsat command defined in abc.rc *)
let abc_preprocess_cmd = "strash; rewrite -l; balance -l; rewrite -l; refactor -l;"

let kissat_path = ref "kissat"


(** Parsing arguments *)

let input_files_rev = ref []
let outputs1 = ref []
let outputs2 = ref []

let parse_output_variables str =
  Str.split (Str.regexp "#") str |> List.map (Str.split (Str.regexp ",")) |> tmap (tmap String.trim)

let args_spec =
    [
      ("-abc", String (fun str -> abc_path := str), Common.mk_arg_desc(["PATH"; "Set the path to ABC."]));
      (
        "-abc-miter",
        Unit (fun _ -> construct_miter_in_generator := false),
        Common.mk_arg_desc(["Construct miter in ABC. Without this argument, the miter is";
                            "constructed by the AIG generator."])
      );
      ("-ea", String (fun str -> abc_args := Some str), Common.mk_arg_desc(["ARGS"; "Append extra arguments to the cec command or the miter command"; "depending on the engine."]));
      ("-ec", String (fun str -> abc_cmds := Some str), Common.mk_arg_desc(["CMDS"; "Apply extra commands (semicolon separated) to the miter if the"; "engine is not \"cec\"."]));
      ("-pp", Set abc_preprocess, Common.mk_arg_desc([""; "Apply preprocessing (rwsat defined in abc.rc) to the miter if the"; "engine is not \"cec\"."]));
      ("-boolector", String (fun str -> boolector_path := str; aig_generator := Boolector), Common.mk_arg_desc(["PATH"; "Set the path to Boolector and use Boolector to generate AIG."]));
      ("-yosys", String (fun str -> yosys_path := str; aig_generator := Yosys), Common.mk_arg_desc(["PATH"; "Set the path to Yosys and use Yosys to generate AIG."]));
      ("-gen", Symbol (["yosys"; "boolector"],
                       fun str -> aig_generator := aig_generator_of_string str),
       Common.mk_arg_desc(
         [
           "";
           Printf.sprintf "Set the tool to generate AIG (default: %s)."
             (string_of_aig_generator !aig_generator)
         ]));
      (
        "-e",
        Symbol (["cec"; "sat"; "iprove"; "kissat"; "&cec"],
                fun str -> cec_engine := cec_engine_of_string str),
        Common.mk_arg_desc(
          [
            "";
            "Use the selected prover for equivalence checking. For sat, iprove,";
            "kissat, and &cec, a miter is constructed first, preprocessing may";
            "be applied, extra commands may be executed, and finally the";
            Printf.sprintf "selected prover is invoked. For %s and %s, the miter is"
              (string_of_cec_engine CEC) (string_of_cec_engine ABC9_CEC_TWO);
            Printf.sprintf "always constructed in ABC. (default prover: %s)"
              (string_of_cec_engine !cec_engine)
          ])
      );
      ("-ip", Set include_precondition, Common.mk_arg_desc([""; "Include preconditions in circuits."]));
      ("-jobs", Int (fun j -> jobs := j), Common.mk_arg_desc(["N    Set number of jobs (default = 4)."]));
      ("-ov1", String (fun str -> outputs1 := parse_output_variables str),
       Common.mk_arg_desc(["VARIABLES";
                           "Specify the output variables (comma separated) of the first";
                           "CryptoLine program. See -ov for more details."]));
      ("-ov2", String (fun str -> outputs2 := parse_output_variables str),
       Common.mk_arg_desc(["VARIABLES";
                           "Specify the output variables (comma separated) of the second";
                           "CryptoLine program. See -ov for more details."]));
      ("-ov", String (
                  fun str -> let vars = parse_output_variables str in
                             outputs1 := vars; outputs2 := vars
                ),
       Common.mk_arg_desc(["VARIABLES";
                           "Specify the output variables (comma separated) of both CryptoLine";
                           "programs. Output variables may be grouped using \"#\". For example,";
                           "\"a,b#c,d#e,f\" has three groups \"a,b\", \"c,d\", and \"e,f\". Checking";
                           "the equivalence w.r.t. one group is done at a time. "]))
    ]
    @Common.args_parsing@Common.args_io
let args_spec = List.sort Stdlib.compare args_spec

let usage_msg =
  "Usage: cv_cec OPTIONS FILE1 FILE2\n\
   \n\
   Check the equivalence between two CryptoLine programs. The two programs are\n\
   converted to And-Inverter Graphs (AIGs) by Boolector or Yosys. The equivalence\n\
   between the two AIGs are checked by ABC. If the output variable names of the two\n\
   programs are the same, use -ov to specify the output variables. Otherwise, use\n\
   -ov1 and -ov2 to specify the output variables (in the same order) separately.\n"

let anon_fun file = input_files_rev := file::!input_files_rev


(** Equivalence checking *)

(* Convert a program to AIG by Boolector. *)
let convert_program_to_aig_boolector fopt p ins outs =
  let btor_file = tmpfile "" ".btor" in
  let aag_file = tmpfile "" ".aag" in
  (* to BTOR *)
  let btor = Aig.Btor.btor_program ~rename:true ~pre:fopt (new Qfbv.Common.btor_manager) p ins outs in
  let outch = open_out btor_file in
  let _ = output_string outch btor in
  let _ = close_out outch in
  let _ = trace ("= BTOR file ="); trace_file btor_file in
  (* to AIG *)
  let _ = unix (Printf.sprintf "%s -daa -rwl 0 %s > %s" !boolector_path btor_file aag_file) in
  let _ = trace ("= AAG file ="); trace_file aag_file in
  let aig = Aig.Std.init () in
  match Aig.Std.open_and_read_from_file aig aag_file with
  | None -> let _ = cleanup [btor_file; aag_file] in
            aig
  | Some error -> let _ = cleanup [btor_file; aag_file] in
                  raise (AigError error)

(* Convert two programs to a miter in AIG by Boolector. *)
let convert_programs_to_miter_boolector fopt (p1, ins1, outs1) (p2, ins2, outs2) =
  let btor_file = tmpfile "" ".btor" in
  let aag_file = tmpfile "" ".aag" in
  (* to BTOR *)
  let btor =
    Aig.Btor.btor_miter ~rename:true ~pre:fopt
      (new Qfbv.Common.btor_manager)
      (p1, ins1, outs1) (p2, ins2, outs2) in
  let outch = open_out btor_file in
  let _ = output_string outch btor in
  let _ = close_out outch in
  let _ = trace ("= BTOR file ="); trace_file btor_file in
  (* to AIG *)
  let _ = unix (Printf.sprintf "%s -daa -rwl 0 %s > %s" !boolector_path btor_file aag_file) in
  let _ = trace ("= AAG file ="); trace_file aag_file in
  let aig = Aig.Std.init () in
  match Aig.Std.open_and_read_from_file aig aag_file with
  | None -> let _ = cleanup [btor_file; aag_file] in
            aig
  | Some error -> let _ = cleanup [btor_file; aag_file] in
                  raise (AigError error)

(* Convert a program to AIG by Yosys. *)
let convert_program_to_aig_yosys fopt p ins outs =
  let v_file = tmpfile "" ".v" in
  let aag_file = tmpfile "" ".aag" in
  (* to Verilog *)
  let v = Aig.Verilog.verilog_program ~rename:true ~pre:fopt p ins outs in
  let outch = open_out v_file in
  let _ = output_string outch v in
  let _ = close_out outch in
  let _ = trace ("= Verilog file ="); trace_file v_file in
  (* to AIG *)
  let _ = Aig.Verilog.verilog_file_to_aiger_file ~yosys:!yosys_path ~ascii:true v_file aag_file in
  let _ = trace ("= AAG file ="); trace_file aag_file in
  let aig = Aig.Std.init () in
  match Aig.Std.open_and_read_from_file aig aag_file with
  | None -> let _ = cleanup [v_file; aag_file] in
            aig
  | Some error -> let _ = cleanup [v_file; aag_file] in
                  raise (AigError error)

(* Convert a program to AIG by Yosys. *)
let convert_programs_to_miter_yosys fopt (p1, ins1, outs1) (p2, ins2, outs2) =
  (* to Verilog *)
  let write_to_verilog_file p ins outs =
    let v_file = tmpfile "" ".v" in
    let v =
      Aig.Verilog.verilog_program ~rename:false ~pre:fopt
        p ins outs in
    let outch = open_out v_file in
    let _ = output_string outch v in
    let _ = close_out outch in
    let _ = trace ("= Verilog file ="); trace_file v_file in
    v_file in
  let v_file1 = write_to_verilog_file p1 ins1 outs1 in
  let v_file2 = write_to_verilog_file p2 ins2 outs2 in
  let aag_file = tmpfile "" ".aag" in
  (* to AIG *)
  let _ = Aig.Verilog.verilog_files_to_miter_file ~yosys:!yosys_path ~ascii:true v_file1 v_file2 aag_file in
  let _ = trace ("= AAG file ="); trace_file aag_file in
  let aig = Aig.Std.init () in
  match Aig.Std.open_and_read_from_file aig aag_file with
  | None -> let _ = cleanup [v_file1; v_file2; aag_file] in
            aig
  | Some error -> let _ = cleanup [v_file1; v_file2; aag_file] in
                  raise (AigError error)

let convert_program_to_aig fopt p ins outs =
  match !aig_generator with
  | Boolector -> convert_program_to_aig_boolector fopt p ins outs
  | Yosys -> convert_program_to_aig_yosys fopt p ins outs

let convert_programs_to_miter fopt (p1, ins1, outs1) (p2, ins2, outs2) =
  match !aig_generator with
  | Boolector -> convert_programs_to_miter_boolector fopt (p1, ins1, outs1) (p2, ins2, outs2)
  | Yosys -> convert_programs_to_miter_yosys fopt (p1, ins1, outs1) (p2, ins2, outs2)

(* Make two AIGs have the same number of inputs. *)
let equalize_aig_inputs aig1 aig2 =
  let ins1 = Hashset.of_list (Aig.Std.aig_inputs aig1) in
  let ins2 = Hashset.of_list (Aig.Std.aig_inputs aig2) in
  let maxvar1 = ref (Aig.Std.aig_maxvar aig1) in
  let maxvar2 = ref (Aig.Std.aig_maxvar aig2) in
  let add_to aig vs maxvar v =
    if not (Hashset.mem vs v) then
      let _ = maxvar := !maxvar + 1 in
      Aig.Std.add_input aig (Aig.Std.var2lit !maxvar) v in
  let _ = Hashset.iter (add_to aig2 ins2 maxvar2) ins1 in
  let _ = Hashset.iter (add_to aig1 ins1 maxvar1) ins2 in
  ()

(* Prepare AIGs for checking equivalence. *)
let prepare_aig s1 s2 vs1 vs2 outs1 outs2 =
  let _ = trace ("=== Converting first program to AIG ===") in
  let aig1 = convert_program_to_aig (
      if !include_precondition then
        Some (rng_bexp s1.spre)
      else None
    ) s1.sprog vs1 outs1 in
  let _ = trace ("=== Converting second program to AIG ===") in
  let aig2 = convert_program_to_aig (
      if !include_precondition then
        Some (rng_bexp s2.spre)
      else None
    ) s2.sprog vs2 outs2 in
  let _ = trace ("=== Equalize input variables ===") in
  let _ = equalize_aig_inputs aig1 aig2 in
  (aig1, aig2)

let prepare_miter s1 s2 vs1 vs2 outs1 outs2 =
  let _ = trace ("=== Converting programs to a miter in AIG ===") in
  let miter =
    convert_programs_to_miter
      (if !include_precondition then Some (rng_bexp s1.spre) else None)
      (s1.sprog, vs1, outs1) (s2.sprog, vs2, outs2) in
  miter

let rec has_error lines =
  match lines with
  | [] -> false
  | hd::tl ->
    Utils.Std.has_substring ~sub:"Miter computation has failed" hd
    || Utils.Std.has_substring ~sub:"Cannot open input file" hd
    || has_error tl

let rec found_equivalent lines =
  match lines with
  | [] -> false
  | hd::tl ->
    Utils.Std.has_substring ~sub:"Networks are equivalent" hd
    || found_equivalent tl

let rec found_unsat lines =
  match lines with
  | [] -> false
  | hd::tl ->
    Utils.Std.has_substring ~sub:"UNSATISFIABLE" hd
    || found_unsat tl

let read_lines file =
  In_channel.with_open_text file (
    fun ch ->
      In_channel.input_lines ch
  )

let get_extra_args () =
  match !abc_args with
  | None -> ""
  | Some args -> args

let get_preprocess_cmds () =
  if !abc_preprocess then
    abc_preprocess_cmd
  else
    ""

let get_extra_cmds () =
  match !abc_cmds with
  | None -> ""
  | Some cmds -> cmds ^ ";"

let run_abc_cec ?(is_miter=false) aig1 aig2 output =
  let cmd =
    (* if is_miter is true, the miter is provided by aig1 *)
    if is_miter then
      raise (AbcError "Constructing miter outside abc is incompatible with running cec.")
    else
      Printf.sprintf "%s -q \"cec %s %s %s\" 2>&1 1>%s"
        !abc_path (get_extra_args()) aig1 aig2 output in
  let _ = unix cmd in
  let _ = trace ("= Outputs from ABC =") in
  let _ = trace_file output in
  let lines = read_lines output in
  let _ =
    if has_error lines then
      raise (AbcError (String.concat "\n" lines)) in
  let res = found_equivalent lines in
  (*  let _ = cleanup [aig1; aig2; output] in *)
  res

(*
  We construct the miter with `miter` rather than `&r` followed by `&miter`.
  The command `miter` compares inputs by names (default) or order.
  The command `&miter` compares inputs by order.
  It seems that we have no control on the variable order of the AIG files generated by Boolector.
  Boolector may produce AIG files with different variable orders even if the variables in the btor files appear in the same order.
 *)
let run_abc9_cec ?(is_miter=false) aig1 aig2 output =
  let cmd =
    (* if is_miter is true, the miter is provided by aig1 *)
    if is_miter then
      Printf.sprintf
        "%s -q \"read_aiger %s; %s &get; %s &cec -m %s\" 2>&1 1>%s"
        !abc_path aig1 (get_preprocess_cmds()) (get_extra_cmds())
        (get_extra_args()) output
    else
      Printf.sprintf
        "%s -q \"miter %s %s %s; %s &get; %s &cec -m\" 2>&1 1>%s"
        !abc_path (get_extra_args()) aig1 aig2
        (get_preprocess_cmds()) (get_extra_cmds()) output in
  let _ = unix cmd in
  let _ = trace ("= Outputs from ABC =") in
  let _ = trace_file output in
  let lines = read_lines output in
  let _ =
    if has_error lines then
      raise (AbcError (String.concat "\n" lines)) in
  let res = found_equivalent lines in
  (*  let _ = cleanup [aig1; aig2; output] in*)
  res

let run_abc9_cec_two ?(is_miter=false) aig1 aig2 output =
  let cmd =
    (* if is_miter is true, the miter is provided by aig1 *)
    if is_miter then
      raise (AbcError "Constructing miter outside abc is incompatible with running &cec on two aiger files.")
    else
      Printf.sprintf "%s -q \"&cec %s %s %s\" 2>&1 1>%s"
        !abc_path (get_extra_args())
        aig1 aig2 output in
  let _ = unix cmd in
  let _ = trace ("= Outputs from ABC =") in
  let _ = trace_file output in
  let lines = read_lines output in
  let _ =
    if has_error lines then
      raise (AbcError (String.concat "\n" lines)) in
  let res = found_equivalent lines in
  (*  let _ = cleanup [aig1; aig2; output] in*)
  res

let run_abc_miter_prover ?(is_miter=false) prover aig1 aig2 output =
  let cmd =
    (* if is_miter is true, the miter is provided by aig1 *)
    if is_miter then
      Printf.sprintf "%s -q \"read_aiger %s; %s %s %s %s\" 2>&1 1>%s"
        !abc_path aig1 (get_preprocess_cmds()) (get_extra_cmds())
        prover (get_extra_args()) output
    else
      Printf.sprintf "%s -q \"miter %s %s %s; %s %s %s\" 2>&1 1>%s"
        !abc_path (get_extra_args()) aig1 aig2
        (get_preprocess_cmds()) (get_extra_cmds())
        prover output in
  let _ = unix cmd in
  let _ = trace ("= Outputs from ABC =") in
  let _ = trace_file output in
  let lines = read_lines output in
  let _ =
    if has_error lines then
      raise (AbcError (String.concat "\n" lines)) in
  let res = found_unsat lines in
  (*  let _ = cleanup [aig1; aig2; output] in*)
  res

let is_not_empty_file (path : string) : bool =
  if not (Sys.file_exists path) then
    false
  else
    try
      let stats = Unix.stat path in
      stats.st_kind = Unix.S_REG && stats.st_size > 0
    with Unix.Unix_error _ -> false

let run_abc_miter_cnf ?(is_miter=false) aig1 aig2 cnf output =
  let cmd =
    (* if is_miter is true, the miter is provided by aig1 *)
    if is_miter then
      Printf.sprintf "%s -q \"read_aiger %s; %s %s write_cnf %s %s\" 2>&1 1>/dev/null"
        !abc_path aig1 (get_preprocess_cmds()) (get_extra_cmds())
        (get_extra_args()) cnf
    else
      Printf.sprintf "%s -q \"miter %s %s %s; %s %s write_cnf %s\" 2>&1 1>/dev/null"
        !abc_path (get_extra_args()) aig1 aig2
        (get_preprocess_cmds()) (get_extra_cmds()) cnf in
  let _ = unix cmd in
  let _ =
    if not (is_not_empty_file cnf) then
      raise (AbcError "Failed to generate the CNF file.") in
  let _ = unix (Printf.sprintf "%s -q \"%s\" 2>&1 1>%s" !kissat_path cnf output) in
  let _ = trace ("= Outputs from KISSAT =") in
  let _ = trace_file output in
  let lines = read_lines output in
  let _ =
    if has_error lines then
      raise (AbcError (String.concat "\n" lines)) in
  let res = found_unsat lines in
  (*  let _ = cleanup [aig1; aig2; cnf; output] in*)
  res

let run_abc_cec_lwt ?(is_miter=false) aig1 aig2 output =
  let cmd =
    (* if is_miter is true, the miter is provided by aig1 *)
    if is_miter then
      raise (AbcError "Constructing miter outside abc is incompatible with running cec.")
    else
      Printf.sprintf "%s -q \"cec %s %s %s\" 2>&1 1>%s"
        !abc_path (get_extra_args()) aig1 aig2 output in
  let%lwt _ = Options.WithLwt.unix cmd in
  let%lwt _ = Options.WithLwt.log_lock () in
  let%lwt _ = Options.WithLwt.trace ("= Outputs from ABC =") in
  let%lwt _ = Options.WithLwt.trace_file output in
  let%lwt _ = Options.WithLwt.log_unlock () in
  let lines = read_lines output in
  let _ =
    if has_error lines then
      raise (AbcError (String.concat "\n" lines)) in
  let res = found_equivalent lines in
  (*  let _ = Options.WithLwt.cleanup_lwt [aig1; aig2; output] in*)
  Lwt.return res

let run_abc9_cec_lwt ?(is_miter=false) aig1 aig2 output =
  let cmd =
    (* if is_miter is true, the miter is provided by aig1 *)
    if is_miter then
      Printf.sprintf
        "%s -q \"read_aiger %s; %s &get; %s &cec -m %s\" 2>&1 1>%s"
        !abc_path aig1 (get_preprocess_cmds()) (get_extra_cmds())
        (get_extra_args()) output
    else
      Printf.sprintf
        "%s -q \"miter %s %s %s; %s &get; %s &cec -m\" 2>&1 1>%s"
        !abc_path (get_extra_args()) aig1 aig2
        (get_preprocess_cmds()) (get_extra_cmds()) output in
  let%lwt _ = Options.WithLwt.unix cmd in
  let%lwt _ = Options.WithLwt.log_lock () in
  let%lwt _ = Options.WithLwt.trace ("= Outputs from ABC =") in
  let%lwt _ = Options.WithLwt.trace_file output in
  let%lwt _ = Options.WithLwt.log_unlock () in
  let lines = read_lines output in
  let _ =
    if has_error lines then
      raise (AbcError (String.concat "\n" lines)) in
  let res = found_equivalent lines in
  (*  let _ = Options.WithLwt.cleanup_lwt [aig1; aig2; output] in*)
  Lwt.return res

let run_abc9_cec_two_lwt ?(is_miter=false) aig1 aig2 output =
  let cmd =
    (* if is_miter is true, the miter is provided by aig1 *)
    if is_miter then
      raise (AbcError "Constructing miter outside abc is incompatible with running &cec on two aiger files.")
    else
      Printf.sprintf "%s -q \"&cec %s %s %s\" 2>&1 1>%s"
        !abc_path (get_extra_args())
        aig1 aig2 output in
  let%lwt _ = Options.WithLwt.unix cmd in
  let%lwt _ = Options.WithLwt.log_lock () in
  let%lwt _ = Options.WithLwt.trace ("= Outputs from ABC =") in
  let%lwt _ = Options.WithLwt.trace_file output in
  let%lwt _ = Options.WithLwt.log_unlock () in
  let lines = read_lines output in
  let _ =
    if has_error lines then
      raise (AbcError (String.concat "\n" lines)) in
  let res = found_equivalent lines in
  (*  let _ = Options.WithLwt.cleanup_lwt [aig1; aig2; output] in*)
  Lwt.return res

let run_abc_miter_prover_lwt ?(is_miter=false) prover aig1 aig2 output =
  let cmd =
    if is_miter then
      Printf.sprintf "%s -q \"read_aiger %s; %s %s %s %s\" 2>&1 1>%s"
        !abc_path aig1 (get_preprocess_cmds()) (get_extra_cmds())
        prover (get_extra_args()) output
    else
      Printf.sprintf "%s -q \"miter %s %s %s; %s %s %s\" 2>&1 1>%s"
        !abc_path (get_extra_args()) aig1 aig2
        (get_preprocess_cmds()) (get_extra_cmds())
        prover output in
  let%lwt _ = Options.WithLwt.unix cmd in
  let%lwt _ = Options.WithLwt.log_lock () in
  let%lwt _ = Options.WithLwt.trace ("= Outputs from ABC =") in
  let%lwt _ = Options.WithLwt.trace_file output in
  let%lwt _ = Options.WithLwt.log_unlock () in
  let lines = read_lines output in
  let _ =
    if has_error lines then
      raise (AbcError (String.concat "\n" lines)) in
  let res = found_unsat lines in
  (*  let _ = Options.WithLwt.cleanup_lwt [aig1; aig2; output] in*)
  Lwt.return res

let run_abc_miter_cnf_lwt ?(is_miter=false) aig1 aig2 cnf output =
  let cmd =
    (* if is_miter is true, the miter is provided by aig1 *)
    if is_miter then
      Printf.sprintf "%s -q \"read_aiger %s; %s %s write_cnf %s %s\" 2>&1 1>/dev/null"
        !abc_path aig1 (get_preprocess_cmds()) (get_extra_cmds())
        (get_extra_args()) cnf
    else
      Printf.sprintf "%s -q \"miter %s %s %s; %s %s write_cnf %s\" 2>&1 1>/dev/null"
        !abc_path (get_extra_args()) aig1 aig2
        (get_preprocess_cmds()) (get_extra_cmds()) cnf in
  let%lwt _ = Options.WithLwt.unix cmd in
  let _ =
    if not (is_not_empty_file cnf) then
      raise (AbcError "Failed to generate the CNF file.") in
  let%lwt _ = Options.WithLwt.unix (Printf.sprintf "%s -q \"%s\" 2>&1 1>%s" !kissat_path cnf output) in
  let%lwt _ = Options.WithLwt.log_lock () in
  let%lwt _ = Options.WithLwt.trace ("= Outputs from KISSAT =") in
  let%lwt _ = Options.WithLwt.trace_file output in
  let%lwt _ = Options.WithLwt.log_unlock () in
  let lines = read_lines output in
  let _ =
    if has_error lines then
      raise (AbcError (String.concat "\n" lines)) in
  let res = found_unsat lines in
  (*  let _ = Options.WithLwt.cleanup_lwt [aig1; aig2; cnf; output] in*)
  Lwt.return res

(* Let ABC construct the miter of two AIG models and check the equivalence. *)
let apply_cec_aigs aig1 aig2 =
  let aig_file1 = tmpfile "" ".aig" in
  let aig_file2 = tmpfile "" ".aig" in
  let cnf_file = tmpfile "" ".cnf" in
  let output_file = tmpfile "" ".log" in
  let ret1 = Aig.Std.write_to_file aig1 Aig.Std.Binary aig_file1 in
  let ret2 = Aig.Std.write_to_file aig2 Aig.Std.Binary aig_file2 in
  try
    let res =
      match ret1, ret2 with
      | None, None ->
        begin
          match !cec_engine with
          | CEC -> run_abc_cec aig_file1 aig_file2 output_file
          | ABC9_CEC -> run_abc9_cec aig_file1 aig_file2 output_file
          | ABC9_CEC_TWO -> run_abc9_cec_two aig_file1 aig_file2 output_file
          | SAT -> run_abc_miter_prover "sat" aig_file1 aig_file2 output_file
          | IPROVE -> run_abc_miter_prover "iprove" aig_file1 aig_file2 output_file
          | KISSAT -> run_abc_miter_cnf aig_file1 aig_file2 cnf_file output_file
        end
      | Some error, _
      | _, Some error ->
        raise (AigError error) in
    let _ = cleanup [aig_file1; aig_file2; cnf_file; output_file] in
    res
  with
    AigError err | AbcError err ->
    let _ = cleanup [aig_file1; aig_file2; cnf_file; output_file] in
    failwith err
  | _ ->
    let _ = cleanup [aig_file1; aig_file2; cnf_file; output_file] in
    failwith ""

(* Let ABC check equivalence with the given miter. *)
let apply_cec_miter miter =
  let aig_file = tmpfile "" ".aig" in
  let cnf_file = tmpfile "" ".cnf" in
  let output_file = tmpfile "" ".log" in
  let ret = Aig.Std.write_to_file miter Aig.Std.Binary aig_file in
  try
    let res =
      match ret with
      | None ->
        begin
          match !cec_engine with
          | CEC -> run_abc_cec ~is_miter:true aig_file aig_file output_file
          | ABC9_CEC -> run_abc9_cec ~is_miter:true aig_file aig_file output_file
          | ABC9_CEC_TWO -> run_abc9_cec_two ~is_miter:true aig_file aig_file output_file
          | SAT -> run_abc_miter_prover ~is_miter:true "sat" aig_file aig_file output_file
          | IPROVE -> run_abc_miter_prover ~is_miter:true "iprove" aig_file aig_file output_file
          | KISSAT -> run_abc_miter_cnf ~is_miter:true aig_file aig_file cnf_file output_file
        end
      | Some error ->
        raise (AigError error) in
    let _ = cleanup [aig_file; cnf_file; output_file] in
    res
  with
    AigError err | AbcError err ->
    let _ = cleanup [aig_file; cnf_file; output_file] in
    failwith err
  | _ ->
    let _ = cleanup [aig_file; cnf_file; output_file] in
    failwith ""

(* Let ABC construct the miter of two AIG models and check the equivalence. *)
let apply_cec_aigs_lwt aig1 aig2 =
  let aig_file1 = tmpfile "" ".aig" in
  let aig_file2 = tmpfile "" ".aig" in
  let cnf_file = tmpfile "" ".cnf" in
  let output_file = tmpfile "" ".log" in
  let clean () = Options.WithLwt.cleanup_lwt [aig_file1; aig_file2; cnf_file; output_file] in
  let handler = function
    | AigError err | AbcError err -> failwith err
    | _ -> failwith "" in
  let ret1 = Aig.Std.write_to_file aig1 Aig.Std.Binary aig_file1 in
  let ret2 = Aig.Std.write_to_file aig2 Aig.Std.Binary aig_file2 in
  let run () =
    match ret1, ret2 with
    | None, None ->
      begin
        match !cec_engine with
        | CEC -> run_abc_cec_lwt aig_file1 aig_file2 output_file
        | ABC9_CEC -> run_abc9_cec_lwt aig_file1 aig_file2 output_file
        | ABC9_CEC_TWO -> run_abc9_cec_two_lwt aig_file1 aig_file2 output_file
        | SAT -> run_abc_miter_prover_lwt "sat" aig_file1 aig_file2 output_file
        | IPROVE -> run_abc_miter_prover_lwt "iprove" aig_file1 aig_file2 output_file
        | KISSAT -> run_abc_miter_cnf_lwt aig_file1 aig_file2 cnf_file output_file
      end
    | Some error, _
    | _, Some error ->
      Lwt.fail (AigError error) in
  Lwt.catch
    (fun () -> Lwt.finalize run clean)
    handler

(* Let ABC check equivalence with the given miter. *)
let apply_cec_miter_lwt miter =
  let aig_file = tmpfile "" ".aig" in
  let cnf_file = tmpfile "" ".cnf" in
  let output_file = tmpfile "" ".log" in
  let clean () = Options.WithLwt.cleanup_lwt [aig_file; cnf_file; output_file] in
  let handler = function
    | AigError err | AbcError err -> failwith err
    | _ -> failwith "" in
  let ret = Aig.Std.write_to_file miter Aig.Std.Binary aig_file in
  let run () =
    match ret with
    | None ->
      begin
        match !cec_engine with
        | CEC -> run_abc_cec_lwt ~is_miter:true aig_file aig_file output_file
        | ABC9_CEC -> run_abc9_cec_lwt ~is_miter:true aig_file aig_file output_file
        | ABC9_CEC_TWO -> run_abc9_cec_two_lwt ~is_miter:true aig_file aig_file output_file
        | SAT -> run_abc_miter_prover_lwt ~is_miter:true "sat" aig_file aig_file output_file
        | IPROVE -> run_abc_miter_prover_lwt ~is_miter:true "iprove" aig_file aig_file output_file
        | KISSAT -> run_abc_miter_cnf_lwt ~is_miter:true aig_file aig_file cnf_file output_file
      end
    | Some error ->
      Lwt.fail (AigError error) in
  Lwt.catch
    (fun () -> Lwt.finalize run clean)
    handler

let chk_equ_for_out_grp s1 s2 vs1 vs2 i (outs1, outs2) =
  let check_aigs () =
    let _ = vprint ("  Converting programs to AIG:\t\t\t") in
    let t1 = Unix.gettimeofday() in
    let (aig1, aig2) = prepare_aig s1 s2 vs1 vs2 outs1 outs2 in
    let t2 = Unix.gettimeofday() in
    let _ = vprintln ("[OK]\t\t" ^ string_of_running_time t1 t2) in
    (* Checking equivalence *)
    let _ = trace ("=== Checking equivalence ===") in
    let _ = vprint ("  Checking equivalence:\t\t\t\t") in
    let _ = flush stdout in
    let t1 = Unix.gettimeofday() in
    let res = apply_cec_aigs aig1 aig2 in
    let t2 = Unix.gettimeofday() in
    let _ =
      if res then vprintln ("[OK]\t\t" ^ string_of_running_time t1 t2)
      else vprintln ("[FAILED]\t" ^ string_of_running_time t1 t2) in
    res in
  let check_miter () =
    let _ = vprint ("  Converting programs to a miter in AIG:\t") in
    let t1 = Unix.gettimeofday() in
    let miter = prepare_miter s1 s2 vs1 vs2 outs1 outs2 in
    let t2 = Unix.gettimeofday() in
    let _ = vprintln ("[OK]\t\t" ^ string_of_running_time t1 t2) in
    (* Checking equivalence *)
    let _ = trace ("=== Checking equivalence ===") in
    let _ = vprint ("  Checking equivalence:\t\t\t\t") in
    let _ = flush stdout in
    let t1 = Unix.gettimeofday() in
    let res = apply_cec_miter miter in
    let t2 = Unix.gettimeofday() in
    let _ =
      if res then vprintln ("[OK]\t\t" ^ string_of_running_time t1 t2)
      else vprintln ("[FAILED]\t" ^ string_of_running_time t1 t2) in
    res in
  let _ = trace (Printf.sprintf "===== Output Group #%d =====" i) in
  let _ = vprintln (Printf.sprintf "Output group #%d:\t\t" i) in
  if !construct_miter_in_generator then
    check_miter ()
  else
    check_aigs ()

let chk_equ_for_out_grp_task s1 s2 vs1 vs2 i (outs1, outs2) =
  if !construct_miter_in_generator then
    fun () ->
      let miter = prepare_miter s1 s2 vs1 vs2 outs1 outs2 in
      let t1 = Unix.gettimeofday() in
      let%lwt r = apply_cec_miter_lwt miter in
      let t2 = Unix.gettimeofday() in
      let _ = vprintln (
          Printf.sprintf
            "Equivalence of output group #%d:\t\t\t%s%s"
            i
            (if r then "[OK]\t\t" else "[FAILED]\t")
            (string_of_running_time t1 t2)
        ) in
      Lwt.return r
  else
    fun () ->
      let (aig1, aig2) = prepare_aig s1 s2 vs1 vs2 outs1 outs2 in
      let t1 = Unix.gettimeofday() in
      let%lwt r = apply_cec_aigs_lwt aig1 aig2 in
      let t2 = Unix.gettimeofday() in
      let _ = vprintln (
          Printf.sprintf
            "Equivalence of output group #%d:\t\t\t%s%s"
            i
            (if r then "[OK]\t\t" else "[FAILED]\t")
            (string_of_running_time t1 t2)
        ) in
      Lwt.return r

let check_equivalence_seq s1 s2 vs1 vs2 groups1 groups2 =
  List.combine groups1 groups2
  |> List.mapi (fun i g -> (i, g))
  |> List.fold_left (
    fun res (i, g) ->
      if res then chk_equ_for_out_grp s1 s2 vs1 vs2 i g
      else res
  ) true

let check_equivalence_lwt s1 s2 vs1 vs2 groups1 groups2 =
  List.combine groups1 groups2
  |> List.mapi (fun i g -> (i, g))
  |> List.fold_left (
    fun (res, pending) (i, g) ->
      let task = chk_equ_for_out_grp_task s1 s2 vs1 vs2 i g in
      add_to_pending continue_true delivered_band res pending [task]
  ) (true, [])
  |> fun (res, pending) ->
  if res then finish_pending delivered_band res pending
  else res

let prepare_specs (s1, ins1, outs1) (s2, ins2, outs2) =
  let subst_var am v = subst_lval am v |> fst in
  let find_nondet_vars p =
    List.fold_left (
      fun vs i ->
        match i with
        | Inondet v -> VS.add v vs
        | _ -> vs
    ) VS.empty p in
  (* Convert to SSA; otherwise, the same btor variable may be used for
     variables of the same name but of different types, for example
     nondet v@t1; nondet v@t2 where t1 != t2. *)
  let ssa_s1 = ssa_spec s1 in
  let ssa_s2 = ssa_spec s2 in
  let ssa_ins1 = tmap (ssa_var VM.empty) ins1 in
  let ssa_ins2 = tmap (ssa_var VM.empty) ins2 in
  (* Find output variables by names *)
  let ssa_outs1 = tmap (Common.find_output_vars ssa_s1.sprog) outs1 in
  let ssa_outs2 = tmap (Common.find_output_vars ssa_s2.sprog) outs2 in
  (* Nondeterministic variables are treated as inputs. *)
  let nondets1 = find_nondet_vars ssa_s1.sprog |> VS.elements in
  let nondets2 = find_nondet_vars ssa_s2.sprog |> VS.elements in
  (* Make input names consistent *)
  let (am1_0, am2_0, ins_rev) =
    try
      List.fold_left2 (
        fun (am1, am2, ins_rev) i1 i2 ->
          if i1.vtyp = i2.vtyp then
            let nv = { i1 with vname = Printf.sprintf "p1_%s_p2_%s" (string_of_var i1) (string_of_var i2) } in
            let na = Avar nv in
            (VM.add i1 na am1, VM.add i2 na am2, nv::ins_rev)
          else
            raise (Failure (
                Printf.sprintf
                  "Incompatible types of two inputs: %s of type %s in the first program, %s of type %s in the second program"
                  i1.vname (string_of_typ i1.vtyp)
                  i2.vname (string_of_typ i2.vtyp)
              ))
      ) (VM.empty, VM.empty, []) ssa_ins1 ssa_ins2
    with Invalid_argument _ ->
      raise (Failure "The number of inputs of the two programs must be the same") in
  let am1 =
    List.fold_left (
      fun am v ->
        VM.add v (Avar {v with vname = Printf.sprintf "_p1_%s_p2_None" (string_of_var v)}) am
    ) am1_0 nondets1 in
  let am2 =
    List.fold_left (
      fun am v ->
        VM.add v (Avar {v with vname = Printf.sprintf "_p1_None_p2_%s" (string_of_var v)}) am
    ) am2_0 nondets2 in
  let (em1, rm1) = (emap_of_amap am1, rmap_of_amap am1) in
  let (em2, rm2) = (emap_of_amap am2, rmap_of_amap am2) in
  let ssa_s1' = subst_spec am1 em1 rm1 ssa_s1 |> fst in
  let ssa_s2' = subst_spec am2 em2 rm2 ssa_s2 |> fst in
  let ssa_outs1' = tmap (fun vs -> tmap (subst_var am1) vs) ssa_outs1 in
  let ssa_outs2' = tmap (fun vs -> tmap (subst_var am2) vs) ssa_outs2 in
  let nondets1' = tmap (subst_var am1) nondets1 in
  let nondets2' = tmap (subst_var am2) nondets2 in
  let unified_ins = tflatten [ins_rev; nondets1'; nondets2'] in
  ((ssa_s1', unified_ins, ssa_outs1'),
   (ssa_s2', unified_ins, ssa_outs2'))

(* Check equivalence between two CryptoLine programs. *)
let check_equivalence_file file1 file2 =
  let _ =
    if List.length !outputs1 = 0 then failwith("No output specified for the first program")
    else if List.length !outputs2 = 0 then failwith("No output specified for the second program")
    else if List.length !outputs1 <> List.length !outputs2 then failwith("Number of output groups mismatch")
    else List.iter2 (
        fun outs1 outs2 ->
          if List.length outs1 <> List.length outs2 then
            failwith("Number of outputs mismatch")
      ) !outputs1 !outputs2 in
  let ((ins1, _), s1) = Common.parse_and_check file1 in
  let ((ins2, _), s2) = Common.parse_and_check file2 in
  let (s1, s2) = (Ast.MultiTrack.tagged_spec_untag s1, Ast.MultiTrack.tagged_spec_untag s2) in
  let ((s1, ins1, outs1),
       (s2, ins2, outs2)) = prepare_specs (s1, ins1, !outputs1) (s2, ins2, !outputs2) in
  (* Convert programs to AIG *)
  let t1 = Unix.gettimeofday() in
  let res =
    if !jobs > 1 then
      check_equivalence_lwt s1 s2 ins1 ins2 outs1 outs2
    else
      check_equivalence_seq s1 s2 ins1 ins2 outs1 outs2 in
  let t2 = Unix.gettimeofday() in
  Printf.printf "Final result:\t\t\t\t\t%s%s\n"
    (if res then "[OK]\t\t" else "[FAILED]\t")
    (string_of_running_time t1 t2)

(** Main function *)

let run () =
  let _ = Arg.parse args_spec anon_fun usage_msg in
  let _ =
    match !cec_engine with
    | CEC | ABC9_CEC_TWO -> construct_miter_in_generator := false
    | _ -> () in
  match List.rev !input_files_rev with
  | file1::file2::[] -> check_equivalence_file file1 file2
  | _ -> Arg.usage args_spec usage_msg
