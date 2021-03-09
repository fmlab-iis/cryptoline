(* open Big_int *)
(* open Set *)
open Options.Std
(* open Ast.Cryptoline *)
open Common
(* open Lwt.Infix *)

type result = Common.result

type exp = Common.exp

type bexp = Common.bexp

let string_of_exp = Common.string_of_exp
let string_of_bexp = Common.string_of_bexp


let smtlib2_write_input file es =
  let input_text = smtlib2_imp_check_sat es in
  let ch = open_out file in
  let _ = output_string ch input_text; close_out ch in
  trace "INPUT IN SMTLIB2 FORMAT:";
  unix ("cat " ^ file ^ " >>  " ^ !logfile);
  trace ""

let btor_write_input m file es =
  let input_text = btor_imp_check_sat m es in
  let ch = open_out file in
  let _ = output_string ch input_text; close_out ch in
  trace "INPUT IN BTOR FORMAT:";
  unix ("cat " ^ file ^ " >>  " ^ !logfile);
  trace ""

let run_z3 ?timeout:timeout ifile ofile errfile =
  let t1 = Unix.gettimeofday() in
  let cmd =
    !z3_path ^ " -smt2 -nw " ^ !smt_args ^ " "
    ^ (match timeout with None -> "" | Some ti -> "-T:" ^ string_of_int ti) ^ " "
    ^ "\"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2> \"" ^ errfile ^ "\"" in
  let _ = trace ("Run Z3 with command: " ^ cmd) in
  unix cmd;
  let t2 = Unix.gettimeofday() in
  trace ("Execution time of Z3: " ^ string_of_float (t2 -. t1) ^ " seconds");
  trace "OUTPUT FROM Z3:";
  unix ("cat " ^ ofile ^ " >>  " ^ !logfile);
  unix ("cat " ^ errfile ^ " >>  " ^ !logfile);
  trace ""

let run_mathsat ?timeout:timeout ifile ofile errfile =
  let mk_task task =
    let t1 = Unix.gettimeofday() in
    let cmd =
      !mathsat_path ^ " " ^ !smt_args ^ " "
      ^ "\"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2> \"" ^ errfile ^ "\"" in
    let%lwt _ =
      match timeout with
      | None -> Options.WithLwt.unix cmd
      | Some ti -> try%lwt
                         Lwt_unix.with_timeout (float_of_int ti) (fun () -> Options.WithLwt.unix cmd)
                   with Lwt_unix.Timeout ->
                     let%lwt _ = Options.WithLwt.unix ("echo \"timeout\" >> \"" ^ ofile ^ "\"") in
                     let _ = Lwt.cancel task in
                     Lwt.return (Unix.WSIGNALED Sys.sigalrm) in
    let t2 = Unix.gettimeofday() in
    let%lwt _ = Options.WithLwt.lock_log () in
    let%lwt _ = Options.WithLwt.trace ("Run MathSAT with command: " ^ cmd) in
    let%lwt _ = Options.WithLwt.trace ("Execution time of MathSAT: " ^ string_of_float (t2 -. t1) ^ " seconds") in
    let%lwt _ = Options.WithLwt.trace "OUTPUT FROM MathSAT:" in
    let%lwt _ = Options.WithLwt.unix ("cat " ^ ofile ^ " >>  " ^ !logfile) in
    let%lwt _ = Options.WithLwt.unix ("cat " ^ errfile ^ " >>  " ^ !logfile) in
    let%lwt _ = Options.WithLwt.trace "" in
    let _ = Options.WithLwt.unlock_log () in
    Lwt.return () in
  let task, r = Lwt.task () in
  let task' = Lwt.bind task (fun _ -> mk_task task) in
  let _ = Lwt.wakeup r () in
  Lwt_main.run task'

let run_stp ?timeout:timeout ifile ofile errfile =
  let mk_task task =
    let t1 = Unix.gettimeofday() in
    let cmd =
      !stp_path ^ " " ^ !smt_args ^ " "
      ^ "\"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2> \"" ^ errfile ^ "\"" in
    let%lwt _ =
      match timeout with
      | None -> Options.WithLwt.unix cmd
      | Some ti -> try%lwt
                         Lwt_unix.with_timeout (float_of_int ti) (fun () -> Options.WithLwt.unix cmd)
                   with Lwt_unix.Timeout ->
                     let%lwt _ = Options.WithLwt.unix ("echo \"timeout\" >> \"" ^ ofile ^ "\"") in
                     let _ = Lwt.cancel task in
                     Lwt.return (Unix.WSIGNALED Sys.sigalrm) in
    let t2 = Unix.gettimeofday() in
    let%lwt _ = Options.WithLwt.lock_log () in
    let%lwt _ = Options.WithLwt.trace ("Run STP with command: " ^ cmd) in
    let%lwt _ = Options.WithLwt.trace ("Execution time of STP: " ^ string_of_float (t2 -. t1) ^ " seconds") in
    let%lwt _ = Options.WithLwt.trace "OUTPUT FROM STP:" in
    let%lwt _ = Options.WithLwt.unix ("cat " ^ ofile ^ " >>  " ^ !logfile) in
    let%lwt _ = Options.WithLwt.unix ("cat " ^ errfile ^ " >>  " ^ !logfile) in
    let%lwt _ = Options.WithLwt.trace "" in
    let _ = Options.WithLwt.unlock_log () in
    Lwt.return () in
  let task, r = Lwt.task () in
  let task' = Lwt.bind task (fun _ -> mk_task task) in
  let _ = Lwt.wakeup r () in
  Lwt_main.run task'

let run_boolector ?timeout:timeout ifile ofile errfile =
  let t1 = Unix.gettimeofday() in
  let cmd =
    !boolector_path ^ " "
    ^ (if !use_btor then "" else "--smt2 ")
    ^ !smt_args ^ " "
    ^ (match timeout with None -> "" | Some ti -> "-t " ^ string_of_int ti ^ " ")
    ^ "\"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2> \"" ^ errfile ^ "\"" in
  let _ = trace ("Run Boolector with command: " ^ cmd) in
  let _ = unix cmd in
  let t2 = Unix.gettimeofday() in
  trace ("Execution time of Boolector: "
         ^ string_of_float (t2 -. t1) ^ " seconds");
  trace "OUTPUT FROM Boolector:";
  unix ("cat " ^ ofile ^ " >>  " ^ !logfile);
  unix ("cat " ^ errfile ^ " >>  " ^ !logfile);
  trace ""

let run_minisat ?timeout:timeout ifile ofile errfile =
  let t1 = Unix.gettimeofday() in
  let timeoutarg =
    match timeout with
    | None -> ""
    | Some t -> "-cpu-lim=" ^ string_of_int t in
  let cmd =
    !minisat_path ^ " -verb=0 " ^ timeoutarg ^ " " ^ !smt_args ^ " "
    ^ "\"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2> \"" ^ errfile ^ "\"" in
  let _ = trace ("Run Minisat with command: " ^ cmd) in
  unix cmd;
  let t2 = Unix.gettimeofday() in
  trace ("Execution time of Minisat: " ^ string_of_float (t2 -. t1) ^ " seconds");
  trace "OUTPUT FROM Minisat:";
  unix ("cat " ^ ofile ^ " >>  " ^ !logfile);
  unix ("cat " ^ errfile ^ " >>  " ^ !logfile);
  trace ""

let run_cryptominisat ?timeout:timeout ifile ofile errfile =
  let t1 = Unix.gettimeofday() in
  let timeoutarg =
    match timeout with
    | None -> ""
    | Some t -> "--maxtime " ^ string_of_int t in
  let cmd =
    !cryptominisat_path ^ " --verb 0 " ^ timeoutarg ^ " " ^ !smt_args ^ " "
    ^ "\"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2> \"" ^ errfile ^ "\"" in
  let _ = trace ("Run Cryptominisat with command: " ^ cmd) in
  unix cmd;
  let t2 = Unix.gettimeofday() in
  trace ("Execution time of Cryptominisat: " ^ string_of_float (t2 -. t1) ^ " seconds");
  trace "OUTPUT FROM Cryptominisat:";
  unix ("cat " ^ ofile ^ " >>  " ^ !logfile);
  unix ("cat " ^ errfile ^ " >>  " ^ !logfile);
  trace ""

let read_output file =
  (* read the output *)
  let line = ref "" in
  let ch = open_in file in
  let _ =
    try
	  line := input_line ch
    with _ ->
      fail "Failed to read the output file. Please check the log file for error messages." in
  let _ = close_in ch in
  (* parse the output *)
  let res = String.trim !line in
  if res = "unsat" then Unsat
  else if res = "sat" then Sat
  else if res = "unknown" then Unknown
  else if res = "timeout" then raise TimeoutException (* Z3 *)
  else if Str.string_match (Str.regexp "\\[btor>main\\] ALARM TRIGGERED: time limit [0-9]+ seconds reached") res 0 then raise TimeoutException (* Boolector 3.0.0 *)
  else if Str.string_match (Str.regexp "\\[btormain\\] ALARM TRIGGERED: time limit [0-9]+ seconds reached") res 0 then raise TimeoutException (* Boolector 1.6.0 *)
  else failwith ("Unknown result from the SMT solver: " ^ res)

let read_minisat_output file =
  (* read the output *)
  let line = ref "" in
  let ch = open_in file in
  let _ =
    try
      while true do
        let _ = line := input_line ch in
        if Str.string_match (Str.regexp "WARNING:") !line 0 then ()
        else raise End_of_file
      done
    with End_of_file -> ()
       | _ ->
          fail "Failed to read the output file. Please check the log file for error messages."
  in
  let _ = close_in ch in
  (* parse the output *)
  let res = String.trim !line in
  if res = "UNSATISFIABLE" then Unsat
  else if res = "SATISFIABLE" then Sat
  else if res = "Terminated: 15" then raise TimeoutException
  else if res = "INDETERMINATE" then raise TimeoutException
  else if res = "*** INTERRUPTED ***" then raise TimeoutException
  else failwith ("Unknown result from Minisat: " ^ res)

let read_cryptominisat_output file =
  (* read the output *)
  let line = ref "" in
  let ch = open_in file in
  let _ =
    try
      while true do
        let _ = line := input_line ch in
        if Str.string_match (Str.regexp "s \\(SATISFIABLE\\|UNSATISFIABLE\\)") !line 0 then
          raise End_of_file
      done
    with End_of_file -> ()
       | _ ->
          fail "Failed to read the output file. Please check the log file for error messages."
  in
  let _ = close_in ch in
  (* parse the output *)
  let res = String.trim !line in
  if res = "s UNSATISFIABLE" then Unsat
  else if res = "s SATISFIABLE" then Sat
  else if res = "s INDETERMINATE" then raise TimeoutException
  else failwith ("Unknown result from Cryptominisat: " ^ res)

(**
 * Solve the implication e1 /\ e2 /\ ... /\ en -> e wheren fs = [e1; e2; ...; en; e].
 * Throw TimeoutException if timeout.
*)
let solve_simp ?timeout:timeout fs =
  let ifile = tmpfile "inputqfbv_" "" in
  let ofile = tmpfile "outputqfbv_" "" in
  let errfile = tmpfile "errorqfbv_" "" in
  let res =
    match !smt_solver with
    | Z3 ->
       let _ = smtlib2_write_input ifile fs in
       let _ =
         match timeout with
         | None -> run_z3 ifile ofile errfile
         | Some ti -> run_z3 ~timeout:ti ifile ofile errfile in
       read_output ofile
    | Boolector ->
       let _ =
         if !use_btor
         then btor_write_input (new btor_manager !wordsize) ifile fs
         else smtlib2_write_input ifile fs in
       let _ =
         match timeout with
         | None -> run_boolector ifile ofile errfile
         | Some ti -> run_boolector ~timeout:ti ifile ofile errfile in
       read_output ofile
    | MathSAT ->
       let _ = smtlib2_write_input ifile fs in
       let _ =
         match timeout with
         | None -> run_mathsat ifile ofile errfile
         | Some ti -> run_mathsat ~timeout:ti ifile ofile errfile in
       read_output ofile
    | STP ->
       let _ = smtlib2_write_input ifile fs in
       let _ =
         match timeout with
         | None -> run_stp ifile ofile errfile
         | Some ti -> run_stp ~timeout:ti ifile ofile errfile in
       read_output ofile
    | Minisat ->
       let ch = open_out ifile in
       let _ = cnf_imp_check_sat ch fs in
       let _ =
         match timeout with
         | None -> run_minisat ifile ofile errfile
         | Some ti -> run_minisat ~timeout:ti ifile ofile errfile in
       read_minisat_output ofile
    | Cryptominisat ->
       let ch = open_out ifile in
       let _ = cnf_imp_check_sat ch fs in
       let _ =
         match timeout with
         | None -> run_cryptominisat ifile ofile errfile
         | Some ti -> run_cryptominisat ~timeout:ti ifile ofile errfile in
       read_cryptominisat_output ofile
  in
  let _ = cleanup [ifile; ofile; errfile] in
  res
