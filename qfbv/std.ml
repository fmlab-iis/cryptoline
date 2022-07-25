open Options.Std
open Common

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

let run_smt_solver ?timeout:timeout ?(solver=(!range_solver)) ifile ofile errfile =
  let mk_task task =
    let t1 = Unix.gettimeofday() in
    let cmd =
      solver ^ " " ^ !range_solver_args ^ " "
      ^ "\"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2> \"" ^ errfile ^ "\"" in
    let%lwt _ =
      match timeout with
      | None -> Options.WithLwt.unix cmd
      | Some ti -> try%lwt
                         Lwt_unix.with_timeout (float_of_int ti) (fun () -> Options.WithLwt.unix cmd)
                   with Lwt_unix.Timeout ->
                     let%lwt _ = Options.WithLwt.unix ("echo \"timeout\" >> \"" ^ errfile ^ "\"") in
                     let _ = Lwt.cancel task in
                     Lwt.return (Unix.WSIGNALED Sys.sigalrm) in
    let t2 = Unix.gettimeofday() in
    let%lwt _ = Options.WithLwt.log_lock () in
    let%lwt _ = Options.WithLwt.trace ("Run " ^ solver ^ " with command: " ^ cmd) in
    let%lwt _ = Options.WithLwt.trace ("Execution time of " ^ solver ^ ": " ^ string_of_running_time t1 t2) in
    let%lwt _ = Options.WithLwt.trace ("OUTPUT FROM " ^ solver ^ ":") in
    let%lwt _ = Options.WithLwt.unix ("cat " ^ ofile ^ " >>  " ^ !logfile) in
    let%lwt _ = Options.WithLwt.unix ("cat " ^ errfile ^ " >>  " ^ !logfile) in
    let%lwt _ = Options.WithLwt.trace "" in
    let%lwt _ = Options.WithLwt.log_unlock () in
    Lwt.return_unit in
  let task, r = Lwt.task () in
  let task' = Lwt.bind task (fun _ -> mk_task task) in
  let _ = Lwt.wakeup r () in
  Lwt_main.run task'

let read_smt_output ofile errfile =
  let cmd = "grep timeout " ^ errfile ^ " 2>&1 1>/dev/null" in (* `&>/dev/null` works on Mac but not on Linux *)
  match Unix.system cmd with
  | Unix.WEXITED 0 -> raise TimeoutException (* grep found *)
  | _ ->
     (* read the output *)
     let line = ref "" in
     let ch = open_in ofile in
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
     else failwith ("Unknown result from the SMT solver: " ^ res)

(**
 * Solve the implication e1 /\ e2 /\ ... /\ en -> e wheren fs = [e1; e2; ...; en; e].
 * Throw TimeoutException if timeout.
*)
let solve_simp ?timeout:timeout ?(solver=(!range_solver)) fs =
  let ifile = tmpfile "inputqfbv_" (if !use_btor then ".btor" else ".smt2") in
  let ofile = tmpfile "outputqfbv_" ".log" in
  let errfile = tmpfile "errorqfbv_" ".log" in
  let res =
    try
      let _ =
        if !use_btor
        then btor_write_input (new btor_manager) ifile fs
        else smtlib2_write_input ifile fs in
      let _ =
        match timeout with
        | None -> run_smt_solver ~solver:solver ifile ofile errfile
        | Some ti -> run_smt_solver ~timeout:ti ~solver:solver ifile ofile errfile in
      let res = read_smt_output ofile errfile in
      let _ = cleanup [ifile; ofile; errfile] in
      res
    with e ->
        let _ = cleanup [ifile; ofile; errfile] in
        raise e
  in
  res
