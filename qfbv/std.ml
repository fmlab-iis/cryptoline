open Options.Std
open Utils
open Utils.Std
open Common

let smtlib2_write_input ?comments file es =
  let input_text = smtlib2_imp_check_sat es in
  let ch = open_out file in
  let _ = if !debug then
            let comments = Option.value (Option.map (make_line_comments ";") comments) ~default:"" in
            output_string ch comments in
  let _ = output_string ch input_text; close_out ch in
  trace "INPUT IN SMTLIB2 FORMAT:";
  trace_file file;
  trace ""

let btor_write_input ?comments m file es =
  let input_text = btor_imp_check_sat m es in
  let ch = open_out file in
  let _ = if !debug then
            let comments = Option.value (Option.map (make_line_comments ";") comments) ~default:"" in
            output_string ch comments in
  let _ = output_string ch input_text; close_out ch in
  trace "INPUT IN BTOR FORMAT:";
  trace_file file;
  trace ""

let run_smt_solver ?timeout:timeout ?(solver=(!range_solver)) ifile ofile errfile =
  let task =
    let t1 = Unix.gettimeofday() in
    let cmd = solver ^ " " ^ !range_solver_args ^ " " ^ "\"" ^ ifile ^ "\"" in
    let%lwt _ = Tasks.exec_shell ?timeout:(Option.map float_of_int timeout) ofile errfile cmd in
    let t2 = Unix.gettimeofday() in
    let%lwt _ = Options.WithLwt.log_lock () in
    let%lwt _ = Options.WithLwt.trace ("Run " ^ solver ^ " with command: " ^ cmd) in
    let%lwt _ = Options.WithLwt.trace ("Execution time of " ^ solver ^ ": " ^ string_of_running_time t1 t2) in
    let%lwt _ = Options.WithLwt.trace ("OUTPUT FROM " ^ solver ^ ":") in
    let%lwt _ = Options.WithLwt.trace_file ofile in
    let%lwt _ = Options.WithLwt.trace_file errfile in
    let%lwt _ = Options.WithLwt.trace "" in
    let%lwt _ = Options.WithLwt.log_unlock () in
    Lwt.return_unit in
  Lwt_main.run task

let read_smt_output ofile _errfile =
  (* read the output *)
  let line = ref "" in
  let ch = open_in ofile in
  let _ =
    try
	  line := input_line ch
    with exn ->
      let _ = print_endline (Printexc.to_string exn) in
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
let solve_simp ?comments ?timeout:timeout ?(solver=(!range_solver)) fs =
  let ifile = tmpfile "inputqfbv_" (if !use_btor then ".btor" else ".smt2") in
  let ofile = tmpfile "outputqfbv_" ".log" in
  let errfile = tmpfile "errorqfbv_" ".log" in
  let res =
    try
      let comments = rcons_comments_option comments ("Output file: " ^ ofile) in
      let _ =
        if !use_btor
        then btor_write_input ~comments (new btor_manager) ifile fs
        else smtlib2_write_input ~comments ifile fs in
      let _ = run_smt_solver ?timeout:timeout ~solver:solver ifile ofile errfile in
      let res = read_smt_output ofile errfile in
      let _ = cleanup [ifile; ofile; errfile] in
      res
    with e ->
        let _ = cleanup [ifile; ofile; errfile] in
        raise e
  in
  res
