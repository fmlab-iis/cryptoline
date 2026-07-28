open Options.Std
open Common
open Utils.Std
open Utils

let btor_write_input ?comments m ifile es =
  let input_text = btor_imp_check_sat m es in
  Out_channel.with_open_bin ifile (
      fun ch ->
      let _ = if !debug then
                output_string ch
                  (Option.value (Option.map (make_line_comments ";")
                                   comments) ~default:"") in
      output_string ch input_text)

let smtlib2_write_input ?comments ifile es =
  let input_text = smtlib2_imp_check_sat es in
  Out_channel.with_open_bin ifile (
      fun ch ->
      let _ = if !debug then
                output_string ch
                  (Option.value (Option.map (make_line_comments ";")
                                   comments) ~default:"") in
      output_string ch input_text)

let read_smt_output ofile _errfile =
  (* read the output *)
  let line =
    try
      In_channel.with_open_text ofile (fun ch -> input_line ch)
    with exn ->
          let _ = if !debug then
                    DomainsTasks.log_with_lock
                      ((Printexc.to_string exn) ^ "\n"
                       ^ "Failed to read the output file "
                       ^ ofile
                       ^ ". Please check the log file for error messages.") in
          "" in
  (* parse the output *)
  let res = String.trim line in
  if res = "unsat" then Unsat
  else if res = "sat" then Sat
  else if res = "unknown" then Unknown
  else failwith ("Unknown result from the SMT solver: " ^ res)

let run_smt_solver ?timeout:timeout ?(solver=(!range_solver)) headers ifile ofile errfile =
  let t1 = Unix.gettimeofday() in
  let solver_args = String.split_on_char ' ' !range_solver_args |>
                      List.filter (fun s -> s <> "") in
  let cmd_list = [ solver ] @ solver_args @ [ ifile ] in
  let cmd_array = Array.of_list cmd_list in
  let _ = DomainsTasks.exec_cmd ?timeout ~ofile ~errfile cmd_array in
  let t2 = Unix.gettimeofday() in
  if !debug then begin
      let cmd = String.concat " " cmd_list in
      DomainsTasks.lock_log ();
      List.iter (fun str -> DomainsTasks.log str; DomainsTasks.log "\n")
        headers;
      DomainsTasks.log "INPUT IN SMTLIB2 FORMAT:\n";
      DomainsTasks.log_file ifile;
      DomainsTasks.log "\n";
      DomainsTasks.log ("Run " ^ solver ^ " with command: " ^ cmd ^ "\n");
      DomainsTasks.log ("Execution time of " ^ solver ^ ": " ^ string_of_running_time t1 t2 ^ "\n");
      DomainsTasks.log ("OUTPUT FROM " ^ solver ^ ":\n");
      DomainsTasks.log_file ofile;
      DomainsTasks.log "\n";
      DomainsTasks.log_file errfile;
      DomainsTasks.log "\n";
      DomainsTasks.unlock_log ()
    end

let solve_simp ?comments ?timeout:timeout ?(solver=(!range_solver)) ?(header=[]) fs =
  let ifile = tmpfile "inputqfbv_" (if !use_btor then ".btor" else ".smt2") in
  let ofile = tmpfile "outputqfbv_" ".log" in
  let errfile = tmpfile "errorqfbv_" ".log" in
  let comments = rcons_comments_option comments ("Output file: " ^ ofile) in
  let _ =
    if !use_btor
    then btor_write_input ~comments (new btor_manager) ifile fs
    else smtlib2_write_input ~comments ifile fs in
  let _ = run_smt_solver ?timeout:timeout ~solver:solver header
            ifile ofile errfile in
  let res = read_smt_output ofile errfile in
  let _ = cleanup [ifile; ofile; errfile] in
  res
