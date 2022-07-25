open Options.Std
open Options.WithLwt
open Common

let smtlib2_write_input ifile es =
  let%lwt ifd = Lwt_unix.openfile ifile
                  [Lwt_unix.O_WRONLY; Lwt_unix.O_CREAT; Lwt_unix.O_TRUNC]
                  0o600 in
  let ch = Lwt_io.of_fd ~mode:Lwt_io.output ifd in
  let input_text = smtlib2_imp_check_sat es in
  let%lwt _ = Lwt_io.write ch input_text in
  let%lwt _ = Lwt_io.close ch in
  Lwt.return_unit

let btor_write_input m ifile es =
  let%lwt ifd = Lwt_unix.openfile ifile
                  [Lwt_unix.O_WRONLY; Lwt_unix.O_CREAT; Lwt_unix.O_TRUNC]
                  0o600 in
  let ch = Lwt_io.of_fd ~mode:Lwt_io.output ifd in
  let input_text = btor_imp_check_sat m es in
  let%lwt _ = Lwt_io.write ch input_text in
  let%lwt _ = Lwt_io.close ch in
  Lwt.return_unit

let run_smt_solver ?timeout:timeout ?(solver=(!range_solver)) header ifile ofile errfile =
  let mk_task task =
    let t1 = Unix.gettimeofday() in
    let cmd =
      solver ^ " " ^ !range_solver_args ^ " "
      ^ "\"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2> \"" ^ errfile ^ "\"" in
    let%lwt _ =
      match timeout with
      | None -> Options.WithLwt.unix cmd
      | Some ti ->
         try%lwt
               Lwt_unix.with_timeout (float_of_int ti) (fun () -> Options.WithLwt.unix cmd)
         with Lwt_unix.Timeout ->
           let%lwt _ = Options.WithLwt.unix ("echo \"timeout\" >> \"" ^ errfile ^ "\"") in
           let _ = Lwt.cancel task in
           Lwt.return (Unix.WSIGNALED Sys.sigalrm) in
    let t2 = Unix.gettimeofday() in
    let%lwt _ = Options.WithLwt.log_lock () in
    let%lwt _ = Lwt_list.iter_s
                  (fun h -> let%lwt _ = Options.WithLwt.trace h in
                            Lwt.return_unit) header in
    let%lwt _ = Options.WithLwt.trace "INPUT IN SMTLIB2 FORMAT:" in
    let%lwt _ = Options.WithLwt.unix ("cat " ^ ifile ^ " >>  " ^ !logfile) in
    let%lwt _ = Options.WithLwt.trace "" in
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
  task'

let read_smt_output ofile errfile =
  let cmd = "grep timeout " ^ errfile ^ " 2>&1 1>/dev/null" in (* `&>/dev/null` works on Mac but not on Linux *)
  match%lwt Options.WithLwt.unix cmd with
  | Lwt_unix.WEXITED 0 -> raise TimeoutException (* grep found *)
  | _ ->
     (* read the output *)
     let%lwt ch = Lwt_io.open_file ~mode:Lwt_io.input ofile in
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
     else failwith ("Unknown result from the SMT solver: " ^ res)

let solve_simp ?timeout:timeout ?(solver=(!range_solver)) ?(header=[]) fs =
  let ifile = tmpfile "inputqfbv_" (if !use_btor then ".btor" else ".smt2") in
  let ofile = tmpfile "outputqfbv_" ".log" in
  let errfile = tmpfile "errorqfbv_" ".log" in
  let res =
    try
      let%lwt _ =
        if !use_btor
        then btor_write_input (new btor_manager) ifile fs
        else smtlib2_write_input ifile fs in
      let%lwt _ =
        match timeout with
        | None -> run_smt_solver ~solver:solver header ifile ofile errfile
        | Some ti -> run_smt_solver ~timeout:ti ~solver:solver header ifile ofile errfile in
      let%lwt res = read_smt_output ofile errfile in
      let%lwt _ = cleanup_lwt [ifile; ofile; errfile] in
      Lwt.return res
    with e ->
      let%lwt _ = cleanup_lwt [ifile; ofile; errfile] in
      raise e
  in
  res
