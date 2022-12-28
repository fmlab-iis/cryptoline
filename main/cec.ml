
open Arg
open Options.Std
open Ast.Cryptoline
open Utils.Std
open Utils
open Verify.Tasks

(** Parsing arguments *)

let input_files_rev = ref []
let outputs1 = ref []
let outputs2 = ref []

let parse_output_variables str =
  Str.split (Str.regexp "#") str |> List.map (Str.split (Str.regexp ",")) |> tmap (tmap String.trim)

let args_spec =
    [
      ("-abc", String (fun str -> abc_path := str), Common.mk_arg_desc(["PATH"; "Set the path to ABC."]));
      ("-boolector", String (fun str -> boolector_path := str), Common.mk_arg_desc(["PATH"; "Set the path to Boolector."]));
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
   converted to And-Inverter Graphs (AIGs) by Boolector (>= 2.1.1). The equivalence\n\
   between the two AIGs are checked by ABC. If the output variable names of the two\n\
   programs are the same, use -ov to specify the output variables. Otherwise, use\n\
   -ov1 and -ov2 to specify the output variables (in the same order) separately.\n"

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
  let _ = trace ("= BTOR file ="); trace_file btor_file in
  (* to AIG *)
  let _ = unix (Printf.sprintf "%s -daa -rwl 0 %s > %s" !boolector_path btor_file aag_file) in
  let _ = trace ("= AAG file ="); trace_file aag_file in
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

(* Prepare AIGs for checking equivalence. *)
let prepare_aig s1 s2 vs1 vs2 outs1 outs2 =
  let _ = trace ("=== Converting first program to AIG ===") in
  let aig1 = convert_program_to_aig s1.sprog vs1 outs1 in
  let _ = trace ("=== Converting second program to AIG ===") in
  let aig2 = convert_program_to_aig s2.sprog vs2 outs2 in
  let _ = trace ("=== Equalize input variables ===") in
  let _ = equalize_aig_inputs aig1 aig2 in
  (aig1, aig2)

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
                  let _ = trace_file output_file in
                  let res =
                    match Unix.system ("grep \"Networks are equivalent\" " ^ output_file ^ " 2>&1 1>/dev/null") with
                    | Unix.WEXITED 0 -> true
                    | _ -> false in
                  let _ = cleanup [aig_file1; aig_file2; output_file] in
                  res
  | Some error, _
  | _, Some error -> let _ = cleanup [aig_file1; aig_file2; output_file] in
                     failwith (error)

(* Invoke the combinational equivalence checking (CEC) of ABC. *)
let apply_cec_lwt aig1 aig2 =
  let aig_file1 = Filename.temp_file "" ".aig" in
  let aig_file2 = Filename.temp_file "" ".aig" in
  let output_file = Filename.temp_file "" ".log" in
  let res1 = Aig.write_to_file aig1 Aig.Binary aig_file1 in
  let res2 = Aig.write_to_file aig2 Aig.Binary aig_file2 in
  match res1, res2 with
  | None, None -> let%lwt _ = Options.WithLwt.unix (Printf.sprintf "%s -q \"cec %s %s\" 2>&1 1>%s" !abc_path aig_file1 aig_file2 output_file) in
                  let%lwt _ = Options.WithLwt.log_lock () in
                  let%lwt _ = Options.WithLwt.trace ("= Outputs from ABC =") in
                  let%lwt _ = Options.WithLwt.trace_file output_file in
                  let%lwt _ = Options.WithLwt.log_unlock () in
                  let res =
                    match Unix.system ("grep \"Networks are equivalent\" " ^ output_file ^ " 2>&1 1>/dev/null") with
                    | Unix.WEXITED 0 -> true
                    | _ -> false in
                  let _ = Options.WithLwt.cleanup_lwt [aig_file1; aig_file2; output_file] in
                  Lwt.return res
  | Some error, _
  | _, Some error -> let _ = Options.WithLwt.cleanup_lwt [aig_file1; aig_file2; output_file] in
                     failwith (error)

let chk_equ_for_out_grp s1 s2 vs1 vs2 i (outs1, outs2) =
  let _ = trace (Printf.sprintf "===== Output Group #%d =====" i) in
  let _ = vprintln (Printf.sprintf "Output group #%d:\t\t" i) in
  let _ = vprint ("  Converting programs to AIG:\t\t") in
  let t1 = Unix.gettimeofday() in
  let (aig1, aig2) = prepare_aig s1 s2 vs1 vs2 outs1 outs2 in
  let t2 = Unix.gettimeofday() in
  let _ = vprintln ("[OK]\t\t" ^ string_of_running_time t1 t2) in
  (* Checking equivalence *)
  let _ = trace ("=== Checking equivalence ===") in
  let _ = vprint ("  Checking equivalence:\t\t\t") in
  let _ = flush stdout in
  let t1 = Unix.gettimeofday() in
  let res = apply_cec aig1 aig2 in
  let t2 = Unix.gettimeofday() in
  let _ =
    if res then vprintln ("[OK]\t\t" ^ string_of_running_time t1 t2)
    else vprintln ("[FAILED]\t" ^ string_of_running_time t1 t2) in
  res

let chk_equ_for_out_grp_task s1 s2 vs1 vs2 i (outs1, outs2) =
  fun () -> let (aig1, aig2) = prepare_aig s1 s2 vs1 vs2 outs1 outs2 in
            let t1 = Unix.gettimeofday() in
            let%lwt r = apply_cec_lwt aig1 aig2 in
            let t2 = Unix.gettimeofday() in
            let _ = vprintln (Printf.sprintf "Equivalence of output group #%d:\t\t%s%s" i (if r then "[OK]\t\t" else "[FAILED]\t") (string_of_running_time t1 t2)) in
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

(* Check equivalence between two CryptoLine programs. *)
let check_equivalence_file file1 file2 =
  let _ =
    if List.length !outputs1 = 0 then failwith("No output specified for the first program")
    else if List.length !outputs2 = 0 then failwith("No output specified for the second program")
    else if List.length !outputs1 <> List.length !outputs2 then failwith("Number of output groups mismatch")
    else List.iter2 (fun outs1 outs2 -> if List.length outs1 <> List.length outs2 then failwith("Number of outputs mismatch")) !outputs1 !outputs2 in
  let (vs1, s1) = Common.parse_and_check file1 in
  let (vs2, s2) = Common.parse_and_check file2 in
  let groups1 = tmap (Common.find_output_vars s1.sprog) !outputs1 in
  let groups2 = tmap (Common.find_output_vars s2.sprog) !outputs2 in
  (* Convert programs to AIG *)
  let t1 = Unix.gettimeofday() in
  let res = if !jobs > 1 then check_equivalence_lwt s1 s2 vs1 vs2 groups1 groups2
            else check_equivalence_seq s1 s2 vs1 vs2 groups1 groups2 in
  let t2 = Unix.gettimeofday() in
  print_endline (Printf.sprintf "Final result:\t\t\t\t%s%s" (if res then "[OK]\t\t" else "[FAILED]\t") (string_of_running_time t1 t2))

(** Main function *)

let run () =
  let _ = Arg.parse args_spec anon_fun usage_msg in
  match List.rev !input_files_rev with
  | file1::file2::[] -> check_equivalence_file file1 file2
  | _ -> Arg.usage args_spec usage_msg
