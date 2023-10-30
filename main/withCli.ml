
open Arg
open Options.Std
open Ast.Cryptoline
open Typecheck.Std
open Parsers.Std

type action = VerifyESpec | VerifyRSpec | VerifySafety | ParseESpec | ParseRSpec

let action = ref VerifyESpec

let parse_action str =
  if str = "vespec" then action := VerifyESpec
  else if str = "vrspec" then action := VerifyRSpec
  else if str = "vsafety" then action := VerifySafety
  else if str = "pespec" then action := ParseESpec
  else if str = "prspec" then action := ParseRSpec
  else failwith("Unknown command: " ^ str)

let instr_index = ref 0

let id = ref 0

let args =
  [
    ("-c", String (fun str -> parse_action str), "CMD\t\t Specify the command to be executed");
    ("-instr", Int (fun i -> instr_index := i), "N\t\t Specify the n-th instruction in safety checking");
    ("-id", Int (fun i -> id := i), "N\t\t Specify the ID of this action")
  ]@Common.args_parsing@Common.args_io@Common.args_verifier
let args = List.sort Stdlib.compare args

let usage = "Usage: cv_cli -c CMD OPTIONS FILE"

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
    | Some (IllPostcondition e, r) -> vprintln("Ill-formed postcondition: " ^ string_of_bexp_prove_with e ^ ".\nReason: " ^ r)
    | _ -> () in
  wf

let anon file =
  let _ = Random.self_init() in
  (* Always use a single thread *)
  let _ = Options.Std.jobs := 1 in
  match !action with
  | VerifyESpec ->
     let spec = from_typecheck_espec (espec_from_file file) in
     let spec = normalize_espec spec in
     let vgen = Verify.Common.vgen_of_espec spec in
     let res = Verify.Std.verify_espec_single_conjunct vgen spec None in
     print_endline (string_of_bool res)
  | VerifyRSpec ->
     let spec = from_typecheck_rspec (rspec_from_file file) in
     let spec = normalize_rspec spec in
     let res = Verify.Std.verify_rspec_single_conjunct spec None in
     print_endline (string_of_bool res)
  | VerifySafety ->
     let spec = from_typecheck_rspec (rspec_from_file file) in
     let spec = normalize_rspec spec in
     (try
        (match Verify.Std.verify_instruction_safety !Options.Std.incremental_safety_timeout !id spec.rspre spec.rsprog !instr_index None with
         | Verify.Common.Solved Qfbv.Common.Sat -> print_endline "sat"
         | Verify.Common.Solved Qfbv.Common.Unsat -> print_endline "unsat"
         | Verify.Common.Solved Qfbv.Common.Unknown -> print_endline "unknown"
         | _ -> failwith "Unfinished tasks. Should not happen!")
      with Utils.Tasks.TimeoutException ->
        print_endline "timeout")
  | ParseESpec ->
     let spec = from_typecheck_espec (espec_from_file file) in
     print_endline (string_of_espec spec)
  | ParseRSpec ->
     let spec = from_typecheck_rspec (rspec_from_file file) in
     print_endline (string_of_rspec spec)
