open Options.Std
open Options.WithLwt
open Common
open Utils

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
  let t1 = Unix.gettimeofday() in
  let cmd = solver ^ " " ^ !range_solver_args ^ " " ^ "\"" ^ ifile ^ "\"" in
  let%lwt _ = Tasks.exec_shell ?timeout:(Option.map float_of_int timeout) ofile errfile cmd in
  let t2 = Unix.gettimeofday() in
  let%lwt _ = Options.WithLwt.log_lock () in
  let%lwt _ = Lwt_list.iter_s
                (fun h -> let%lwt _ = Options.WithLwt.trace h in
                          Lwt.return_unit) header in
  let%lwt _ = Options.WithLwt.trace "INPUT IN SMTLIB2 FORMAT:" in
  let%lwt _ = Options.WithLwt.trace_file ifile in
  let%lwt _ = Options.WithLwt.trace "" in
  let%lwt _ = Options.WithLwt.trace ("Run " ^ solver ^ " with command: " ^ cmd) in
  let%lwt _ = Options.WithLwt.trace ("Execution time of " ^ solver ^ ": " ^ string_of_running_time t1 t2) in
  let%lwt _ = Options.WithLwt.trace ("OUTPUT FROM " ^ solver ^ ":") in
  let%lwt _ = Options.WithLwt.trace_file ofile in
  let%lwt _ = Options.WithLwt.trace_file errfile in
  let%lwt _ = Options.WithLwt.trace "" in
  let%lwt _ = Options.WithLwt.log_unlock () in
  Lwt.return_unit

let read_smt_output ofile _errfile =
  (* read the output *)
  let%lwt ch = Lwt_io.open_file ~mode:Lwt_io.input ofile in
  let%lwt line =
    try%lwt
          Lwt_io.read_line ch
    with exn ->
      let _ = print_endline (Printexc.to_string exn) in
      Options.WithLwt.fail ("Failed to read the output file "
                            ^ ofile
                            ^ ". Please check the log file for error messages.") in
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
      let%lwt _ = run_smt_solver ?timeout:timeout ~solver:solver header ifile ofile errfile in
      let%lwt res = read_smt_output ofile errfile in
      let%lwt _ = cleanup_lwt [ifile; ofile; errfile] in
      Lwt.return res
    with e ->
      let%lwt _ = cleanup_lwt [ifile; ofile; errfile] in
      raise e
  in
  res
