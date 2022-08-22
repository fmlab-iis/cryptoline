
open Arg
open Options.Std
open Ast.Cryptoline
open Utils.Std
open Utils

(** Parsing arguments *)

let input_files_rev = ref []
let outputs1 = ref []
let outputs2 = ref []

let args_spec =
    [
      ("-abc", String (fun str -> abc_path := str), Common.mk_arg_desc(["PATH"; "Set the path to ABC."]));
      ("-boolector", String (fun str -> boolector_path := str), Common.mk_arg_desc(["PATH"; "Set the path to Boolector."]));
      ("-ov1", String (fun str -> outputs1 := Str.split (Str.regexp ",") str |> tmap String.trim),
       Common.mk_arg_desc(["VARIABLES"; "Specify the output variables (comma separated) of the first"; "CryptoLine program."]));
      ("-ov2", String (fun str -> outputs2 := Str.split (Str.regexp ",") str |> tmap String.trim),
       Common.mk_arg_desc(["VARIABLES"; "Specify the output variables (comma separated) of the second"; "CryptoLine program."]));
      ("-ov", String (
                  fun str -> let vars = Str.split (Str.regexp ",") str |> tmap String.trim in
                             outputs1 := vars; outputs2 := vars
                ),
       Common.mk_arg_desc(["VARIABLES"; "Specify the output variables (comma separated) of both CryptoLine"; "programs."]));
      ("-v", Set verbose, Common.mk_arg_desc(["\t     Display verbose messages."]))
    ]
    @Common.args_parsing@Common.args_io
let args_spec = List.sort Pervasives.compare args_spec

let usage_msg =
  "Usage: cv_cec OPTIONS FILE1 FILE2\n\
   \n\
   Check the equivalence between two CryptoLine programs. The two programs are\n\
   converted to And-Inverter Graphs (AIGs) by Boolector. The equivalence between\n\
   the two AIGs are checked by ABC. If the output variable names of the two\n\
   programs are the same, use -out to specify the output variables. Otherwise, use\n\
   -out1 and -out2 to specify the output variables (in the same order) separately.\n"

let anon_fun file = input_files_rev := file::!input_files_rev


(** Equivalence checking *)

(* Convert a program to AIG by Boolector. *)
let convert_program_to_aig p ins outs =
  let btor_file = Filename.temp_file "" ".btor" in
  let aag_file = Filename.temp_file "" ".aag" in
  (* to BTOR *)
  let btor = Qfbv.Common.btor_program ~rename:true (new Qfbv.Common.btor_manager) p ins outs in
  let outch = open_out btor_file in
  let _ = output_string outch btor in
  let _ = close_out outch in
  let _ =
    trace ("= BTOR file =");
    unix (Printf.sprintf "cat %s >> %s" btor_file !logfile) in
  (* to AIG *)
  let _ = unix (Printf.sprintf "%s -daa -rwl 0 %s > %s" !boolector_path btor_file aag_file) in
  let _ =
    trace ("= AAG file =");
    unix (Printf.sprintf "cat %s >> %s" aag_file !logfile) in
  let aig = Aig.init () in
  match Aig.open_and_read_from_file aig aag_file with
  | None -> let _ = cleanup [btor_file; aag_file] in
            aig
  | Some error -> let _ = cleanup [btor_file; aag_file] in
                  failwith (error)

(* Make two AIGs have the same number of inputs. *)
let equalize_aig_inputs aig1 aig2 =
  let ins1 = Hashset.of_list (Aig.aig_inputs aig1) in
  let ins2 = Hashset.of_list (Aig.aig_inputs aig2) in
  let maxvar1 = ref (Aig.aig_maxvar aig1) in
  let maxvar2 = ref (Aig.aig_maxvar aig2) in
  let add_to aig vs maxvar v =
    if not (Hashset.mem vs v) then
      let _ = maxvar := !maxvar + 1 in
      Aig.add_input aig (Aig.var2lit !maxvar) v in
  let _ = Hashset.iter (add_to aig2 ins2 maxvar2) ins1 in
  let _ = Hashset.iter (add_to aig1 ins1 maxvar1) ins2 in
  ()

(* Invoke the combinational equivalence checking (CEC) of ABC. *)
let apply_cec aig1 aig2 =
  let aig_file1 = Filename.temp_file "" ".aig" in
  let aig_file2 = Filename.temp_file "" ".aig" in
  let output_file = Filename.temp_file "" ".log" in
  let res1 = Aig.write_to_file aig1 Aig.Binary aig_file1 in
  let res2 = Aig.write_to_file aig2 Aig.Binary aig_file2 in
  match res1, res2 with
  | None, None -> let _ = unix (Printf.sprintf "%s -q \"cec %s %s\" 2>&1 1>%s" !abc_path aig_file1 aig_file2 output_file) in
                  let _ = trace ("= Outputs from ABC =") in
                  let _ = unix (Printf.sprintf "cat %s >> %s" output_file !logfile) in
                  let res =
                    match Unix.system ("grep \"Networks are equivalent\" " ^ output_file ^ " 2>&1 1>/dev/null") with
                    | Unix.WEXITED 0 -> true
                    | _ -> false in
                  let _ = cleanup [aig_file1; aig_file2; output_file] in
                  res
  | Some error, _
  | _, Some error -> let _ = cleanup [aig_file1; aig_file2; output_file] in
                     failwith (error)

(* Check equivalence between two CryptoLine programs. *)
let check_equivalence file1 file2 =
  let _ =
    if List.length !outputs1 = 0 then failwith("No output specified for the first program")
    else if List.length !outputs2 = 0 then failwith("No output specified for the second program")
    else if List.length !outputs1 <> List.length !outputs2 then failwith("Number of outputs mismatch") in
  let (vs1, s1) = Common.parse_and_check file1 in
  let (vs2, s2) = Common.parse_and_check file2 in
  let outs1 = Common.find_output_vars s1.sprog !outputs1 in
  let outs2 = Common.find_output_vars s2.sprog !outputs2 in
  (* Convert programs to AIG *)
  let _ = vprint("Converting programs to AIG:\t\t") in
  let t1 = Unix.gettimeofday() in
  let _ = trace ("=== Converting first program to AIG ===") in
  let aig1 = convert_program_to_aig s1.sprog vs1 outs1 in
  let _ = trace ("=== Converting second program to AIG ===") in
  let aig2 = convert_program_to_aig s2.sprog vs2 outs2 in
  let _ = trace ("=== Equalize input variables ===") in
  let _ = equalize_aig_inputs aig1 aig2 in
  let t2 = Unix.gettimeofday() in
  let _ = vprintln ("[OK]\t\t" ^ string_of_running_time t1 t2) in
  (* Checking equivalence *)
  let _ = trace ("=== Checking equivalence ===") in
  let _ = print_string ("Checking equivalence:\t\t\t") in
  let _ = flush stdout in
  let t1 = Unix.gettimeofday() in
  let res = apply_cec aig1 aig2 in
  let t2 = Unix.gettimeofday() in
  if res then print_endline ("[OK]\t\t" ^ string_of_running_time t1 t2)
  else print_endline ("[FAILED]\t" ^ string_of_running_time t1 t2)


(** Main function *)

let run () =
  let _ = Arg.parse args_spec anon_fun usage_msg in
  match List.rev !input_files_rev with
  | file1::file2::[] -> check_equivalence file1 file2
  | _ -> Arg.usage args_spec usage_msg
