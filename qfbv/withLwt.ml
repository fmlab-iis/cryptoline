open Options.Std
open Options.WithLwt
open Common

let smtlib2_write_input file es =
  let input_text = smtlib2_imp_check_sat es in
  let ch = open_out file in
  output_string ch input_text; close_out ch

let btor_write_input m file es =
  let input_text = btor_imp_check_sat m es in
  let ch = open_out file in
  output_string ch input_text; close_out ch

let run_z3 ?timeout:timeout header ifile ofile errfile =
  let cmd =
    !z3_path ^ " -smt2 -nw " ^ !smt_args ^ " "
    ^ (match timeout with None -> "" | Some ti -> "-T:" ^ string_of_int ti) ^ " "
    ^ "\"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2> \"" ^ errfile ^ "\"" in
  let t1 = Unix.gettimeofday() in
  let%lwt _ = Options.WithLwt.unix cmd in
  let t2 = Unix.gettimeofday () in
  let%lwt _ = Options.WithLwt.lock_log () in
  let%lwt _ = Lwt_list.iter_s (fun h ->
                  let%lwt _ = Options.WithLwt.trace h in
                  Lwt.return_unit) header in
  let%lwt _ = Options.WithLwt.trace "INPUT IN SMTLIB2 FORMAT:" in
  let%lwt _ = Options.WithLwt.unix ("cat " ^ ifile ^ " >>  " ^ !logfile) in
  let%lwt _ = Options.WithLwt.trace "" in
  let%lwt _ = Options.WithLwt.trace ("Run Z3 with command: " ^ cmd) in
  let%lwt _ = Options.WithLwt.trace ("Execution time of Z3: " ^
                           string_of_float (t2 -. t1) ^ " seconds") in
  let%lwt _ = Options.WithLwt.trace "OUTPUT FROM Z3:" in
  let%lwt _ = Options.WithLwt.unix ("cat " ^ ofile ^ " >>  " ^ !logfile) in
  let%lwt _ = Options.WithLwt.unix ("cat " ^ errfile ^ " >>  " ^ !logfile) in
  let%lwt _ = Options.WithLwt.trace "" in
  let _ = Options.WithLwt.unlock_log () in
  Lwt.return_unit

let run_mathsat ?timeout:timeout header ifile ofile errfile =
  let mk_task task =
    let t1 = Unix.gettimeofday() in
    let cmd =
      !mathsat_path ^ " " ^ !smt_args ^ " "
      ^ "\"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2> \"" ^ errfile ^ "\"" in
    let%lwt _ =
      match timeout with
      | None -> Options.WithLwt.unix cmd
      | Some ti ->
         try%lwt
               Lwt_unix.with_timeout (float_of_int ti) (fun () -> Options.WithLwt.unix cmd)
         with Lwt_unix.Timeout ->
           let%lwt _ = Options.WithLwt.unix ("echo \"timeout\" >> \"" ^ ofile ^ "\"") in
           let _ = Lwt.cancel task in
           Lwt.return (Unix.WSIGNALED Sys.sigalrm) in
    let t2 = Unix.gettimeofday() in
    let%lwt _ = Options.WithLwt.lock_log () in
    let%lwt _ = Lwt_list.iter_s (fun h ->
                    let%lwt _ = Options.WithLwt.trace h in
                    Lwt.return_unit) header in
    let%lwt _ = Options.WithLwt.trace "INPUT IN SMTLIB2 FORMAT:" in
    let%lwt _ = Options.WithLwt.unix ("cat " ^ ifile ^ " >>  " ^ !logfile) in
    let%lwt _ = Options.WithLwt.trace "" in
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
  task'

let run_boolector ?timeout:timeout header ifile ofile errfile =
  let cmd =
    !boolector_path ^ " "
    ^ (if !use_btor then "" else "--smt2 ")
    ^ !smt_args ^ " "
    ^ (match timeout with None -> "" | Some ti -> "-t " ^ string_of_int ti ^ " ")
    ^ "\"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2> \"" ^ errfile ^ "\"" in
  let t1 = Unix.gettimeofday () in
  let%lwt _ = Options.WithLwt.unix cmd in
  let t2 = Unix.gettimeofday () in
  let%lwt _ = Options.WithLwt.lock_log () in
  let%lwt _ = Lwt_list.iter_s (fun h ->
                  let%lwt _ = Options.WithLwt.trace h in
                  Lwt.return_unit) header in
  let%lwt _ = Options.WithLwt.trace "INPUT IN BTOR FORMAT:" in
  let%lwt _ = Options.WithLwt.unix ("cat " ^ ifile ^ " >>  " ^ !logfile) in
  let%lwt _ = Options.WithLwt.trace "" in
  let%lwt _ = Options.WithLwt.trace ("Run Boolector with command: " ^ cmd) in
  let%lwt _ = Options.WithLwt.trace ("Execution time of Boolector: " ^
                           string_of_float (t2 -. t1) ^ " seconds") in
  let%lwt _ = Options.WithLwt.trace "OUTPUT FROM Boolector:" in
  let%lwt _ = Options.WithLwt.unix ("cat " ^ ofile ^ " >>  " ^ !logfile) in
  let%lwt _ = Options.WithLwt.unix ("cat " ^ errfile ^ " >>  " ^ !logfile) in
  let%lwt _ = Options.WithLwt.trace "" in
  let _ = Options.WithLwt.unlock_log () in
  Lwt.return_unit

let run_stp ?timeout:timeout header ifile ofile errfile =
  let mk_task task =
    let t1 = Unix.gettimeofday() in
    let cmd =
      !stp_path ^ " " ^ !smt_args ^ " "
      ^ "\"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2> \"" ^ errfile ^ "\"" in
    let%lwt _ =
      match timeout with
      | None -> Options.WithLwt.unix cmd
      | Some ti ->
         try%lwt
               Lwt_unix.with_timeout (float_of_int ti) (fun () -> Options.WithLwt.unix cmd)
         with Lwt_unix.Timeout ->
           let%lwt _ = Options.WithLwt.unix ("echo \"timeout\" >> \"" ^ ofile ^ "\"") in
           let _ = Lwt.cancel task in
           Lwt.return (Unix.WSIGNALED Sys.sigalrm) in
    let t2 = Unix.gettimeofday() in
    let%lwt _ = Options.WithLwt.lock_log () in
    let%lwt _ = Lwt_list.iter_s (fun h ->
                    let%lwt _ = Options.WithLwt.trace h in
                    Lwt.return_unit) header in
    let%lwt _ = Options.WithLwt.trace "INPUT IN SMTLIB2 FORMAT:" in
    let%lwt _ = Options.WithLwt.unix ("cat " ^ ifile ^ " >>  " ^ !logfile) in
    let%lwt _ = Options.WithLwt.trace "" in
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
  task'

(* Minisat process won't be killed after timeout. To be fixed. *)
let run_minisat ?timeout:timeout header ifile ofile errfile =
  let t1 = Unix.gettimeofday() in
  let timeoutarg =
    match timeout with
    | None -> ""
    | Some t -> "-cpu-lim=" ^ string_of_int t in
  let cmd =
    !minisat_path ^ " -verb=0 " ^ timeoutarg ^ " " ^ !smt_args ^ " "
    ^ "\"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2> \"" ^ errfile ^ "\"" in
  let%lwt _ = Options.WithLwt.unix cmd in
  let t2 = Unix.gettimeofday() in
  let%lwt _ = Options.WithLwt.lock_log () in
  let%lwt _ = Lwt_list.iter_s (fun h ->
                  let%lwt _ = Options.WithLwt.trace h in
                  Lwt.return_unit) header in
  let%lwt _ = Options.WithLwt.trace ("Run Minisat with command: " ^ cmd) in
  let%lwt _ = Options.WithLwt.trace ("Execution time of Minisat: " ^ string_of_float (t2 -. t1) ^ " seconds") in
  let%lwt _ = Options.WithLwt.trace "OUTPUT FROM Minisat:" in
  let%lwt _ = Options.WithLwt.unix ("cat " ^ ofile ^ " >>  " ^ !logfile) in
  let%lwt _ = Options.WithLwt.unix ("cat " ^ errfile ^ " >>  " ^ !logfile) in
  let%lwt _ = Options.WithLwt.trace "" in
  let _ = Options.WithLwt.unlock_log () in
  Lwt.return ()

let run_cryptominisat ?timeout:timeout header ifile ofile errfile =
  let t1 = Unix.gettimeofday() in
  let timeoutarg =
    match timeout with
    | None -> ""
    | Some t -> "--maxtime=" ^ string_of_int t in
  let cmd =
    !cryptominisat_path ^ " --verb=0 " ^ timeoutarg ^ " " ^ !smt_args ^ " "
    ^ "\"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2> \"" ^ errfile ^ "\"" in
  let%lwt _ = Options.WithLwt.unix cmd in
  let t2 = Unix.gettimeofday() in
  let%lwt _ = Options.WithLwt.lock_log () in
  let%lwt _ = Lwt_list.iter_s (fun h ->
                  let%lwt _ = Options.WithLwt.trace h in
                  Lwt.return_unit) header in
  let%lwt _ = Options.WithLwt.trace ("Run Cryptominisat with command: " ^ cmd) in
  let%lwt _ = Options.WithLwt.trace ("Execution time of Cryptominisat: " ^ string_of_float (t2 -. t1) ^ " seconds") in
  let%lwt _ = Options.WithLwt.trace "OUTPUT FROM Cryptominisat:" in
  let%lwt _ = Options.WithLwt.unix ("cat " ^ ofile ^ " >>  " ^ !logfile) in
  let%lwt _ = Options.WithLwt.unix ("cat " ^ errfile ^ " >>  " ^ !logfile) in
  let%lwt _ = Options.WithLwt.trace "" in
  let _ = Options.WithLwt.unlock_log () in
  Lwt.return ()

let read_output file =
  (* read the output *)
  let%lwt ch = Lwt_io.open_file ~mode:Lwt_io.input file in
  let%lwt line =
    try%lwt
      Lwt_io.read_line ch
    with _ ->
            Options.WithLwt.fail "Failed to read the output file. Please check the log file for error messages." in
  let%lwt _ = Lwt_io.close ch in
  (* parse the output *)
  let res = String.trim line in
  if res = "unsat" then Lwt.return Unsat
  else if res = "sat" then Lwt.return Sat
  else if res = "unknown" then Lwt.return Unknown
  else if res = "timeout" then Lwt.fail TimeoutException (* Z3 *)
                                   else if Str.string_match (Str.regexp "\\[btor>main\\] ALARM TRIGGERED: time l\
                                                                         imit [0-9]+ seconds reached") res 0 then Lwt.fail TimeoutException (* Boolector *)
  else failwith ("Unknown result from the SMT solver: " ^ res)

let read_minisat_output file =
  (* read the output *)
  let%lwt ch = Lwt_io.open_file ~mode:Lwt_io.input file in
  let%lwt lines =
    try%lwt
      Lwt.return (Lwt_io.read_lines ch)
    with _ -> failwith "Failed to read the output file" in
  let%lwt lines = Lwt_stream.to_list lines in
  let%lwt _ = Lwt_io.close ch in
  (* parse the output *)
  if List.mem "UNSATISFIABLE" lines then Lwt.return Unsat
  else if List.mem "SATISFIABLE" lines then Lwt.return Sat
  else if List.mem "Terminated: 15" lines then Lwt.fail TimeoutException
  else if List.mem "INDETERMINATE" lines then Lwt.fail TimeoutException
  else if List.mem "*** INTERRUPTED ***" lines then raise TimeoutException
  else failwith ("Unknown result from Minisat: " ^ String.concat "\n" lines)

let read_cryptominisat_output file =
  (* read the output *)
  let%lwt ch = Lwt_io.open_file ~mode:Lwt_io.input file in
  let%lwt lines =
    try%lwt
      Lwt.return (Lwt_io.read_lines ch)
    with _ -> failwith "Failed to read the output file" in
  let%lwt lines = Lwt_stream.to_list lines in
  let%lwt _ = Lwt_io.close ch in
  (* parse the output *)
  if List.mem "s UNSATISFIABLE" lines then Lwt.return Unsat
  else if List.mem "s SATISFIABLE" lines then Lwt.return Sat
  else if List.mem "timeout" lines then Lwt.fail TimeoutException
  else if List.mem "s INDETERMINATE" lines then Lwt.fail TimeoutException
  else failwith ("Unknown result from Cryptominisat: " ^ String.concat "\n" lines)

let solve_simp ?timeout:timeout ?(header=[]) fs =
  let ifile = tmpfile "inputqfbv_" "" in
  let ofile = tmpfile "outputqfbv_" "" in
  let errfile = tmpfile "errorqfbv_" "" in
  let res =
    match !smt_solver with
    | Z3 ->
       let _ = smtlib2_write_input ifile fs in
       let%lwt _ =
         match timeout with
         | None -> run_z3 header ifile ofile errfile
         | Some ti -> run_z3 ~timeout:ti header ifile ofile errfile in
       let%lwt z3_ret = read_output ofile in
       let%lwt _ = cleanup_lwt [ifile; ofile; errfile] in
       Lwt.return z3_ret
    | Boolector ->
       let _ =
         if !use_btor
         then btor_write_input (new btor_manager !wordsize) ifile fs
         else smtlib2_write_input ifile fs in
       let%lwt _ =
         match timeout with
         | None -> run_boolector header ifile ofile errfile
         | Some ti -> run_boolector ~timeout:ti header ifile ofile errfile in
       let%lwt btor_ret = read_output ofile in
       let%lwt _ = cleanup_lwt [ifile; ofile; errfile] in
       Lwt.return btor_ret
    | MathSAT ->
       let _ = smtlib2_write_input ifile fs in
       let%lwt _ =
         match timeout with
         | None -> run_mathsat header ifile ofile errfile
         | Some ti -> run_mathsat ~timeout:ti header ifile ofile errfile in
       let%lwt ret = read_output ofile in
       let%lwt _ = cleanup_lwt [ifile; ofile; errfile] in
       Lwt.return ret
    | STP ->
       let _ = smtlib2_write_input ifile fs in
       let%lwt _ =
         match timeout with
         | None -> run_stp header ifile ofile errfile
         | Some ti -> run_stp ~timeout:ti header ifile ofile errfile in
       let%lwt ret = read_output ofile in
       let%lwt _ = cleanup_lwt [ifile; ofile; errfile] in
       Lwt.return ret
    | Minisat ->
       let ch = open_out ifile in
       let _ = cnf_imp_check_sat ch fs in
       let%lwt _ =
         match timeout with
         | None -> run_minisat header ifile ofile errfile
         | Some ti -> run_minisat ~timeout:ti header ifile ofile errfile in
       let%lwt ret = read_minisat_output ofile in
       let%lwt _ = cleanup_lwt [ifile; ofile; errfile] in
       Lwt.return ret
    | Cryptominisat ->
       let ch = open_out ifile in
       let _ = cnf_imp_check_sat ch fs in
       let%lwt _ =
         match timeout with
         | None -> run_cryptominisat header ifile ofile errfile
         | Some ti -> run_cryptominisat ~timeout:ti header ifile ofile errfile in
       let%lwt ret = read_cryptominisat_output ofile in
       let%lwt _ = cleanup_lwt [ifile; ofile; errfile] in
       Lwt.return ret
  in
  res
