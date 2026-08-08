
open Options.Std
open Ast.Cryptoline
(*open Ast.MultiTrack
  open Smt*)
open Qfbv.Common
open Qfbv.WithDomains
open Smt
open Common
open Utils
open Utils.Std

(* Apply a verification function to cuts.
   @param ids IDs of cuts to be verified
   @param f verification function
   @param delivered_helper a function merging verification results
   @param res the current result
   @param pending the pending state
   @param ss a list [s0; s1; ...; sN] where each si is a list of
             specifications in cut i *)
let apply_to_cuts ids f delivered_helper res pending ss =
  let ids = ids
            |> Option.map Hashset.to_list
            |> Option.map (List.rev_map (normalize_index (List.length ss)))
            |> Option.map List.rev
            |> Option.map Hashset.of_list in
  let rec helper i (res, pending) ss =
    match ss with
    | [] -> DomainsTasks.finish_pending delivered_helper res pending
    | hd::tl ->
       if Options.Std.mem_hashset_opt ids i
       then let headers = [ "=== Cut #" ^ string_of_int i ^ " ===" ] in
            let (res, pending) =
              List.fold_left (f i headers) (res, pending) hd in
            helper (i+1) (res, pending) tl
       else let _ =
              if !Options.Std.debug then
                DomainsTasks.log_with_lock ("=== Skip Cut #" ^ string_of_int i ^ " ===\n") in
            helper (i+1) (res, pending) tl in
  helper 0 (res, pending) ss

(*
 * This is same as apply_to_cuts except that finish_pending is not invoked
 * after all cuts are processed. It is the caller's responsibility to finish
 * all pending tasks.
*)
let apply_to_cuts_unfinished ids f res pending ss =
  let ids = ids
            |> Option.map Hashset.to_list
            |> Option.map (List.rev_map (normalize_index (List.length ss)))
            |> Option.map List.rev
            |> Option.map Hashset.of_list in
  let rec helper i (res, pending) ss =
    match ss with
    | [] -> (res, pending)
    | hd::tl ->
       if Options.Std.mem_hashset_opt ids i
       then let headers = [ "=== Cut #" ^ string_of_int i ^ " ===" ] in
            let (res, pending) =
              List.fold_left (f i headers) (res, pending) hd in
            helper (i+1) (res, pending) tl
       else let _ =
              if !Options.Std.debug then
                DomainsTasks.log_with_lock ("=== Skip Cut #" ^ string_of_int i ^ " ===\n") in
            helper (i+1) (res, pending) tl in
  helper 0 (res, pending) ss

(* Converting a string of command-line arguments to a list. *)
let args_from_string str =
  String.split_on_char ' ' str
  |> List.filter (fun s -> s <> "")

(** Write input to Singular using Buffer and Out_channel. *)
let write_singular_input ?comments ifile vars gen p =
  let buf = Buffer.create 1024 in
  let _ = Cas.bprint_singular_input ?comments buf vars gen p in
  Out_channel.with_open_bin ifile (
    fun ch ->
      Buffer.output_buffer ch buf
  )

(** Write input to Sage using Buffer and Out_channel. *)
let write_sage_input ?comments ifile vars gen p =
  let buf = Buffer.create 1024 in
  let _ = Cas.bprint_sage_input ?comments buf vars gen p in
  Out_channel.with_open_bin ifile (
      fun ch ->
      Buffer.output_buffer ch buf
    )

(** Write input to Magma using Buffer and Out_channel. *)
let write_magma_input ?comments ifile vars gen p =
  let buf = Buffer.create 1024 in
  let _ = Cas.bprint_magma_input ?comments buf vars gen p in
  Out_channel.with_open_bin ifile (
      fun ch ->
      Buffer.output_buffer ch buf
    )

(** Write input to Mathematica using Buffer and Out_channel. *)
let write_mathematica_input ?comments ifile vars gen p =
  let buf = Buffer.create 1024 in
  let _ = Cas.bprint_mathematica_input ?comments buf vars gen p in
  Out_channel.with_open_bin ifile (
      fun ch ->
      Buffer.output_buffer ch buf
    )

(** Write input to Macaulay2 using Buffer and Out_channel. *)
let write_macaulay2_input ?comments ifile vars gen p =
  let buf = Buffer.create 1024 in
  let _ = Cas.bprint_macaulay2_input ?comments buf vars gen p in
  Out_channel.with_open_bin ifile (
      fun ch ->
      Buffer.output_buffer ch buf
    )

(** Write input to Maple using Buffer and Out_channel. *)
let write_maple_input ?comments ifile vars gen p =
  let buf = Buffer.create 1024 in
  let _ = Cas.bprint_maple_input ?comments buf vars gen p in
  Out_channel.with_open_bin ifile (
      fun ch ->
      Buffer.output_buffer ch buf
    )

(** Write input to Maxima using Buffer and Out_channel. *)
let write_maxima_input ?comments ifile vars gen p =
  let buf = Buffer.create 1024 in
  let _ = Cas.bprint_maxima_input ?comments buf vars gen p in
  Out_channel.with_open_bin ifile (
      fun ch ->
      Buffer.output_buffer ch buf
    )

let read_one_line ofile =
  let line = In_channel.with_open_text ofile input_line in
  String.trim line

(* Read output from Singular using In_channel with comments skipped. *)
let read_singular_output ofile =
  let rec read_skip_comment ch =
    let line = input_line ch in
    if String.sub line 0 (min 2 (String.length line)) = "//" then
      read_skip_comment ch
    else
      line in
  let line = In_channel.with_open_text ofile read_skip_comment in
  String.trim line

let read_sage_output = read_one_line

let read_magma_output = read_one_line

let read_mathematica_output = read_one_line

let read_macaulay2_output = read_one_line

let read_maple_output = read_one_line

let read_maxima_output = read_one_line


(* Write headers to log file. *)
let write_headers_to_log headers =
  List.iter (fun str ->
      DomainsTasks.log str;
      DomainsTasks.log "\n"
    ) headers

(* Run Singular in a compatible way. *)
let run_singular headers ifile ofile =
  let t1 = Unix.gettimeofday() in
  let extra_args = args_from_string !Options.Std.algebra_solver_args in
  let cmd_list = [ !singular_path; "-q" ] @ extra_args @ [ifile] in
  let cmd_array = Array.of_list cmd_list in
  let _ = DomainsTasks.exec_cmd ~ofile cmd_array in
  let t2 = Unix.gettimeofday() in
  if !debug then begin
    DomainsTasks.lock_log();
    write_headers_to_log headers;
    DomainsTasks.log "INPUT TO SINGULAR:\n";
    DomainsTasks.log_file ifile;
    DomainsTasks.log "\n";
    DomainsTasks.log ("Execution time of Singular: " ^ Options.Std.string_of_running_time t1 t2 ^ "\n");
    DomainsTasks.log "OUTPUT FROM SINGULAR:\n";
    DomainsTasks.log_file ofile;
    DomainsTasks.log "\n";
    DomainsTasks.unlock_log()
  end

(* Run Sage in a compatible way. *)
let run_sage headers ifile ofile =
  let t1 = Unix.gettimeofday() in
  let extra_args = args_from_string !Options.Std.algebra_solver_args in
  let cmd_list = [ !sage_path ] @ extra_args @ [ ifile ] in
  let cmd_array = Array.of_list cmd_list in
  let _ = DomainsTasks.exec_cmd ~ofile cmd_array in
  let t2 = Unix.gettimeofday() in
  if !debug then begin
      DomainsTasks.lock_log ();
      write_headers_to_log headers;
      DomainsTasks.log "INPUT TO SAGE:\n";
      DomainsTasks.log_file ifile;
      DomainsTasks.log "\n";
      DomainsTasks.log
        ("Execution time of Sage: " ^ string_of_running_time t1 t2 ^ "\n");
      DomainsTasks.log "OUTPUT FROM SAGE:\n";
      DomainsTasks.log_file ofile;
      DomainsTasks.log "\n";
      DomainsTasks.unlock_log ()
    end

(* Run Magma in a compatible way. *)
let run_magma headers ifile ofile =
  let t1 = Unix.gettimeofday() in
  let extra_args = args_from_string !Options.Std.algebra_solver_args in
  let cmd_list = [ !sage_path ] @ extra_args @ [ ifile ] in
  let cmd_array = Array.of_list cmd_list in
  let _ = DomainsTasks.exec_cmd ~ofile cmd_array in
  let t2 = Unix.gettimeofday() in
  if !debug then begin
      DomainsTasks.lock_log ();
      write_headers_to_log headers;
      DomainsTasks.log "INPUT TO MAGMA:\n";
      DomainsTasks.log_file ifile;
      DomainsTasks.log "\n";
      DomainsTasks.log
        ("Execution time of Magma: " ^ string_of_running_time t1 t2 ^ "\n");
      DomainsTasks.log "OUTPUT FROM MAGMA:\n";
      DomainsTasks.log_file ofile;
      DomainsTasks.log "\n";
      DomainsTasks.unlock_log ();
    end

(* Run Mathematica in a compatible way. *)
let run_mathematica headers ifile ofile =
  let t1 = Unix.gettimeofday() in
  let extra_args = args_from_string !Options.Std.algebra_solver_args in
  let cmd_list = [ !sage_path ] @ extra_args @ [ ifile ] in
  let cmd_array = Array.of_list cmd_list in
  let _ = DomainsTasks.exec_cmd ~ofile cmd_array in
  let t2 = Unix.gettimeofday() in
  if !debug then begin
      DomainsTasks.lock_log ();
      write_headers_to_log headers;
      DomainsTasks.log "INPUT TO MATHEMATICA:\n";
      DomainsTasks.log_file ifile;
      DomainsTasks.log "\n";
      DomainsTasks.log
        ("Execution time of Mathematica: " ^ string_of_running_time t1 t2 ^ "\n");
      DomainsTasks.log "OUTPUT FROM MATHEMATICA:\n";
      DomainsTasks.log_file ofile;
      DomainsTasks.log "\n";
      DomainsTasks.unlock_log ()
    end

(* Run Macaulay2 in a compatible way. *)
let run_macaulay2 headers ifile ofile =
  let t1 = Unix.gettimeofday() in
  let extra_args = args_from_string !Options.Std.algebra_solver_args in
  let cmd_list = [ !singular_path; "-q" ] @ extra_args @ [ifile] in
  let cmd_array = Array.of_list cmd_list in
  let _ = DomainsTasks.exec_cmd ~ofile cmd_array in
  let t2 = Unix.gettimeofday() in
  if !debug then begin
      DomainsTasks.lock_log ();
      write_headers_to_log headers;
      DomainsTasks.log "INPUT TO MACAULAY2:\n";
      DomainsTasks.log_file ifile;
      DomainsTasks.log "\n";
      DomainsTasks.log
        ("Execution time of Macaulay2: " ^ string_of_running_time t1 t2 ^ "\n");
      DomainsTasks.log "OUTPUT FROM MACAULAY2:\n";
      DomainsTasks.log_file ofile;
      DomainsTasks.log "\n";
      DomainsTasks.unlock_log ()
    end

(* Run Maple in a compatible way. *)
let run_maple headers ifile ofile =
  let t1 = Unix.gettimeofday() in
  let extra_args = args_from_string !Options.Std.algebra_solver_args in
  let cmd_list = [ !singular_path; "-q" ] @ extra_args @ [ifile] in
  let cmd_array = Array.of_list cmd_list in
  let _ = DomainsTasks.exec_cmd ~ofile cmd_array in
  let t2 = Unix.gettimeofday() in
  if !debug then begin
      DomainsTasks.lock_log ();
      write_headers_to_log headers;
      DomainsTasks.log "INPUT TO MAPLE:\n";
      DomainsTasks.log_file ifile;
      DomainsTasks.log "\n";
      DomainsTasks.log
        ("Execution time of Maple: " ^ string_of_running_time t1 t2 ^ "\n");
      DomainsTasks.log "OUTPUT FROM MAPLE:\n";
      DomainsTasks.log_file ofile;
      DomainsTasks.log "\n";
      DomainsTasks.unlock_log ();
    end

(* Run Maxima. *)
let run_maxima headers ifile ofile =
  let t1 = Unix.gettimeofday() in
  let extra_args = args_from_string !Options.Std.algebra_solver_args in
  let cmd_list = [ !maxima_path; "--very-quiet"; "--suppress-input-echo" ] @ extra_args @ ["-b"; ifile] in
  let cmd_array = Array.of_list cmd_list in
  let _ = DomainsTasks.exec_cmd ~ofile cmd_array in
  let t2 = Unix.gettimeofday() in
  if !debug then begin
      DomainsTasks.lock_log ();
      write_headers_to_log headers;
      DomainsTasks.log "INPUT TO MAXIMA:\n";
      DomainsTasks.log_file ifile;
      DomainsTasks.log "\n";
      DomainsTasks.log
        ("Execution time of Maxima: " ^ string_of_running_time t1 t2 ^ "\n");
      DomainsTasks.log "OUTPUT FROM MAXIMA:\n";
      DomainsTasks.log_file ofile;
      DomainsTasks.log "\n";
      DomainsTasks.unlock_log ();
    end


(** Low-Level Interaction of MIP Solvers *)

let write_ppl_input ?comments ifile mipvars constr =
  let partition_variables mipvars =
    List.fold_left (fun (i, c) mv ->
        if is_mip_cvar mv then (i, mv::c) else (mv::i, c))
      ([], []) mipvars in
  let ppl_variables buf mipvars =
    List.iteri (fun i mv ->
        Buffer.add_string buf (string_of_var (var_of_mip mv));
        Buffer.add_string buf (" Variable(" ^ string_of_int i ^ ")\n"))
      mipvars in
  let ppl_constraint buf mip constr =
    List.iter (fun c ->
        Buffer.add_string buf
          (mip ^ ".add_constraint(" ^ ppl_of_ebexp c ^ ")\n"))
      constr in
  let set_ppl_ivariable buf delimiter mipvars =
    let (_, rev_ppl_cmds) =
      List.fold_left (fun (i, ret) mv ->
          (succ i,
           if is_mip_cvar mv then ret
           else ("mip.add_to_integer_space_dimensions(Variables_Set("
                 ^ string_of_int i ^ "))")::ret))
        (0, []) mipvars in
    Buffer.add_string buf (String.concat delimiter rev_ppl_cmds) in
  let input_text buf =
    let comment =
      if !debug then
        Option.value (Option.map (make_line_comments "#") comments) ~default:""
      else
        "" in
    let (rev_ivars, rev_cvars) = partition_variables mipvars in
    let (nivars, icvars) = (List.length rev_ivars, List.length rev_cvars) in
    let ordered_mipvars = List.rev_append rev_ivars (List.rev rev_cvars) in
    let nvars = nivars + icvars in
    Buffer.add_string buf comment;
    Buffer.add_char buf '\n';
    Buffer.add_string buf
      "from ppl import Variable, Variables_Set, C_Polyhedron, MIP_Problem\n";
    ppl_variables buf ordered_mipvars;
    Buffer.add_char buf '\n';
    Buffer.add_string buf ("ph = C_Polyhedron(" ^ string_of_int nvars ^ ")\n");
    ppl_constraint buf "ph" constr;
    Buffer.add_char buf '\n';
    if !Options.Std.minimize_constraint then
      Buffer.add_string buf
        ("ph.remove_higher_space_dimensions(" ^ string_of_int nivars ^ ")\n");
    Buffer.add_string buf "mip = MIP_Problem(";
    Buffer.add_string buf (string_of_int (if !Options.Std.minimize_constraint
                                          then nivars else nvars));
    Buffer.add_string buf ")\n";
    Buffer.add_string buf "mip.add_constraints(";
    Buffer.add_string buf
      (if !Options.Std.minimize_constraint
       then "ph.minimized_constraints ())\n" else "ph.constraints())\n");
    set_ppl_ivariable buf
      "\nif not mip.is_satisfiable():\n    print('False')\n    exit()\n"
      ordered_mipvars;
    Buffer.add_string buf "\nprint(mip.is_satisfiable())\nexit()\n" in
  Out_channel.with_open_bin ifile (
      fun ch ->
      let buf = Buffer.create 1024 in
      let _ = input_text buf in
      Buffer.output_buffer ch buf)

let write_scip_input ?comments ifile mipvars constr =
  let scip_variables buf mip mipvars =
    List.iter (fun mv ->
        Buffer.add_string buf
          (string_of_var (var_of_mip mv) ^ " = " ^ mip ^ ".addVar(vtype=" ^
             (if is_mip_cvar mv then "'C'" else "'I'") ^ ")\n"))
      mipvars in
  let scip_constraint buf mip constr =
    List.iter (fun c ->
        Buffer.add_string buf (mip ^ ".addCons(" ^ ppl_of_ebexp c ^ ")\n"))
      constr in
  let input_text buf =
    let comment =
      if !debug then
        Option.value (Option.map (make_line_comments "#") comments) ~default:""
      else
        "" in
    Buffer.add_string buf comment;
    Buffer.add_char buf '\n';
    Buffer.add_string buf "from pyscipopt import Model\n";
    Buffer.add_string buf "mip = Model('SCIP Solver')\n";
    scip_variables buf "mip" mipvars;
    Buffer.add_char buf '\n';
    scip_constraint buf "mip" constr;
    Buffer.add_char buf '\n';
    Buffer.add_string buf "mip.optimize()\n";
    Buffer.add_string buf "print(mip.getStatus())\n";
    Buffer.add_string buf "exit()\n" in
  Out_channel.with_open_bin ifile (
      fun ch ->
      let buf = Buffer.create 1024 in
      let _ = input_text buf in
      Buffer.output_buffer ch buf)

let write_isl_input ?comments ifile mipvars constr =
  let isl_variables buf mipvars =
    Buffer.add_string buf
      (String.concat ", "
         (tmap (fun mv -> "'" ^ string_of_var (var_of_mip mv) ^ "'")
            mipvars)) in
  let isl_set_header buf mipvars =
    Buffer.add_string buf
      ("{[" ^ String.concat ", "
                (tmap (fun mv -> string_of_var (var_of_mip mv))
                   mipvars) ^ "]:") in
  let isl_constraint buf constr =
    Buffer.add_string buf
      (String.concat " and '\\\n"
         (tmap (fun eb -> "'" ^ isl_of_ebexp eb) constr)) in
  let input_text buf =
    let comment =
      if !debug then
        Option.value (Option.map (make_line_comments "#") comments) ~default:""
      else
        "" in
    Buffer.add_string buf comment;
    Buffer.add_char buf '\n';
    Buffer.add_string buf "from islpy import Space, BasicSet, DEFAULT_CONTEXT\n";
    Buffer.add_string buf "variables = [";
    isl_variables buf mipvars;
    Buffer.add_string buf "]\n";
    Buffer.add_string buf "space = Space.create_from_names(DEFAULT_CONTEXT, set = variables)\n";
    Buffer.add_string buf "bset = '";
    isl_set_header buf mipvars;
    Buffer.add_string buf "'\\\n";
    isl_constraint buf constr;
    Buffer.add_string buf "}'\n";
    Buffer.add_string buf "print(BasicSet(bset).is_empty())\n";
    Buffer.add_string buf "exit()\n" in
  Out_channel.with_open_bin ifile (
      fun ch ->
      let buf = Buffer.create 1024 in
      let _ = input_text buf in
      Buffer.output_buffer ch buf)

let write_smt_input ~comments ifile vgen constr =
  Out_channel.with_open_bin ifile (
      fun ch ->
        let (_, smtlib) = smtlib_ebexps_lia ~expn:false vgen constr in
        if !debug then
          Out_channel.output_string ch (make_line_comments ";" comments);
        Out_channel.output_string ch smtlib )



let run_ppl ?timeout headers ifile ofile =
  let t1 = Unix.gettimeofday() in
  let cmd_list = [ !python_path; "-q"; ifile ] in
  let cmd_array = Array.of_list cmd_list in
  let _ = DomainsTasks.exec_cmd ?timeout ~ofile cmd_array in
  let t2 = Unix.gettimeofday() in
  if !debug then begin
      DomainsTasks.lock_log ();
      write_headers_to_log headers;
      DomainsTasks.log "\n";
      DomainsTasks.log "INPUT TO PPLPY:\n";
      DomainsTasks.log_file ifile;
      DomainsTasks.log "\n";
      DomainsTasks.log
        ("Execution time of PPLPY: " ^ string_of_running_time t1 t2);
      DomainsTasks.log "\n";
      DomainsTasks.log "OUTPUT FROM PPLPY:\n";
      DomainsTasks.log_file ofile;
      DomainsTasks.log "\n";
      DomainsTasks.unlock_log ()
    end

let run_scip ?timeout headers ifile ofile =
  let t1 = Unix.gettimeofday() in
  let cmd_list = [ !python_path; "-q"; ifile ] in
  let cmd_array = Array.of_list cmd_list in
  let _ = DomainsTasks.exec_cmd ?timeout ~ofile cmd_array in
  let t2 = Unix.gettimeofday() in
  if !debug then begin
      DomainsTasks.lock_log ();
      write_headers_to_log headers;
      DomainsTasks.log "\n";
      DomainsTasks.log "INPUT TO PYSCIPOPT:\n";
      DomainsTasks.log_file ifile;
      DomainsTasks.log "\n";
      DomainsTasks.log
        ("Execution time of PYSCIPOPT: " ^ string_of_running_time t1 t2 ^ "\n");
      DomainsTasks.log "OUTPUT FROM PYSCIPOPT:\n";
      DomainsTasks.log_file ofile;
      DomainsTasks.log "\n";
      DomainsTasks.unlock_log ()
    end

let run_isl ?timeout headers ifile ofile =
  let t1 = Unix.gettimeofday() in
  let cmd_list = [ !python_path; "-q"; ifile ] in
  let cmd_array = Array.of_list cmd_list in
  let _ = DomainsTasks.exec_cmd ?timeout ~ofile cmd_array in
  let t2 = Unix.gettimeofday() in
  if !debug then begin
      DomainsTasks.lock_log ();
      write_headers_to_log headers;
      DomainsTasks.log "\n";
      DomainsTasks.log "INPUT TO ISLPY:\n";
      DomainsTasks.log_file ifile;
      DomainsTasks.log "\n";
      DomainsTasks.log
        ("Execution time of ISLPY: " ^ string_of_running_time t1 t2 ^ "\n");
      DomainsTasks.log "OUTPUT FROM ISLPY:\n";
      DomainsTasks.log_file ofile;
      DomainsTasks.log "\n";
      DomainsTasks.unlock_log ()
    end

let run_smt ?timeout headers algsmt_path ifile ofile =
  let t1 = Unix.gettimeofday() in
  let cmd_list = [ algsmt_path; ifile ] in
  let cmd_array = Array.of_list cmd_list in
  let _ = DomainsTasks.exec_cmd ?timeout ~ofile cmd_array in
  let t2 = Unix.gettimeofday() in
  if !debug then begin
      DomainsTasks.lock_log ();
      write_headers_to_log headers;
      DomainsTasks.log "INPUT TO SMT Solver:\n";
      DomainsTasks.log_file ifile;
      DomainsTasks.log "\n";
      DomainsTasks.log
        ("Execution time of SMT Solver " ^ algsmt_path ^ ": " ^ Options.Std.string_of_running_time t1 t2 ^ "\n");
      DomainsTasks.log "OUTPUT FROM SMT SOLVER:\n";
      DomainsTasks.log_file ofile;
      DomainsTasks.log "\n";
      DomainsTasks.unlock_log ()
    end

let read_ppl_output = read_one_line

let read_scip_output ofile =
  let lines = In_channel.with_open_text ofile In_channel.input_lines in
  lines |> List.rev |> List.hd

let read_isl_output = read_one_line

let read_smt_output = read_one_line

(* Check if polynomial [p] is in the ideal generated by the polynoimals
   [ideal]. *)
let is_in_ideal ?comments ?(expand=(!expand_poly)) ?(solver=(!algebra_solver)) headers vars ideal p =
  (* The input file to Sage must have file extension ".sage". *)
  let propose_input_suffix solver =
    match solver with
    | Sage -> ".sage"
    | _ -> "" in
  let ideal = if expand then tmap expand_eexp ideal else ideal in
  let p = if expand then expand_eexp p else p in
  let ifile = tmpfile "inputfgb_" (propose_input_suffix solver) in
  let ofile = tmpfile "outputfgb_" "" in
  let comments = rcons_comments_option comments ("Output file: " ^ ofile) in
  let res =
    match solver with
    | Singular ->
       let _ = write_singular_input ~comments ifile vars ideal p in
       let _ = run_singular headers ifile ofile in
       let res = read_singular_output ofile in
       res = "0"
    | Sage ->
       let _ = write_sage_input ~comments ifile vars ideal p in
       let _ = run_sage headers ifile ofile in
       let res = read_sage_output ofile in
       res = "True"
    | Magma ->
       let _ = write_magma_input ~comments ifile vars ideal p in
       let _ = run_magma headers ifile ofile in
       let res = read_magma_output ofile in
       res = "0"
    | Mathematica ->
       let _ = write_mathematica_input ~comments ifile vars ideal p in
       let _ = run_mathematica headers ifile ofile in
       let res = read_mathematica_output ofile in
       res = "0"
    | Macaulay2 ->
       let _ = write_macaulay2_input ~comments ifile vars ideal p in
       let _ = run_macaulay2 headers ifile ofile in
       let res = read_macaulay2_output ofile in
       res = "0"
    | Maple ->
       let _ = write_maple_input ~comments ifile vars ideal p in
       let _ = run_maple headers ifile ofile in
       let res = read_maple_output ofile in
       res = "true"
    | Maxima ->
       let _ = write_maxima_input ~comments ifile vars ideal p in
       let _ = run_maxima headers ifile ofile in
       let res = read_maxima_output ofile in
       res = "0"
    | SMTSolver _ -> failwith ("Ideal membership queries are not supported by SMT solver.")
    | PPL | SCIP | ISL -> failwith ("Ideal membership queries are not supported by MIP solver.")
  in
  let _ = cleanup [ifile; ofile] in
  res

let is_constr_feasible ?timeout ?comments headers ?(solver=(!Options.Std.algebra_solver))
      vgen mipvars constr =
  let gen_files_py () =
    let ifile = tmpfile "inputfmip_" ".py" in
    let ofile = tmpfile "outputfmip_" ".log" in
    let comments =
      if !debug then
        rcons_comments_option comments ("Output file: " ^ ofile)
      else
        [] in
    (ifile, ofile, comments) in
  let gen_files_smt () =
    let ifile = tmpfile "inputfgb_" ".smt2" in
    let ofile = tmpfile "outputfgb_" ".log" in
    let comments =
      if !debug then
        rcons_comments_option comments ("Output file: " ^ ofile)
      else
        [] in
    (ifile, ofile, comments) in
  match solver with
  | PPL ->
     let (ifile, ofile, comments) = gen_files_py() in
     let _ = write_ppl_input ~comments ifile mipvars constr in
     let _ = run_ppl ?timeout headers ifile ofile in
     let res = read_ppl_output ofile in
     let _ = cleanup [ifile; ofile] in
     res = "False"
  | SCIP ->
     let (ifile, ofile, comments) = gen_files_py() in
     let _ = write_scip_input ~comments ifile mipvars constr in
     let _ = run_scip ?timeout headers ifile ofile in
     let res = read_scip_output ofile in
     let _ = cleanup [ifile; ofile] in
     res = "infeasible"
  | ISL ->
     let (ifile, ofile, comments) = gen_files_py() in
     let _ = write_isl_input ~comments ifile mipvars constr in
     let _ = run_isl ?timeout headers ifile ofile in
     let res = read_isl_output ofile in
     let _ = cleanup [ifile; ofile] in
     res = "True"
  | SMTSolver o when o.algsmt_logic = LIA ->
     let (ifile, ofile, comments) = gen_files_smt() in
     let _ = write_smt_input ~comments ifile vgen constr in
     let _ = run_smt ?timeout headers o.algsmt_path ifile ofile in
     let res = read_smt_output ofile in
     let _ = cleanup [ifile; ofile] in
     res = "unsat"
  | _ -> failwith "Algebraic range condition needs MIP solver."


(* Verify a list of entailments. *)
let verify_entailments ?comments ?(solver=(!algebra_solver)) ?(eqfirst=(!Options.Std.check_eq_first)) headers entailments =
  List.fold_left
    (fun res (post, vars, ideal, p) ->
       if res then (
         if eqfirst &&
            is_in_ideal
              ~comments:(
                if !debug then
                  append_comments_option comments
                    [ "Algebraic condition: " ^ string_of_ebexp post;
                      "Try: #0 (pure equality)" ]
                else
                  []
              )
              ~solver:solver headers vars [] p then true
         else is_in_ideal
             ~comments:(
               if !debug then
                 append_comments_option comments
                   [ "Algebraic condition: " ^ string_of_ebexp post;
                     "Try: #1 (modular equality)" ]
               else
                 []
             )
             ~solver:solver headers vars ideal p
       )
       else res) true entailments

(* Verify an algebraic specification using a computer algebra system.
   Applied in this function:
   - converting to ideal membership problems,
   - polynomial rewriting,
   - solving *)
let verify_espec_single_conjunct_ideal ?comments headers vgen s =
  let (_, entailments) = polys_of_espec vgen s in
  let pwss = ebexp_prove_with_specs s.espost in
  let solver = algebra_solver_of_prove_with pwss in
  let eqfirst = eqfirst_of_prove_with pwss in
  verify_entailments ?comments ~solver ~eqfirst headers entailments

(* TODO: LIA queries from mip_of_espec are solved sequentially *)
let verify_espec_single_conjunct_smt solver ?comments:comments headers vgen s =
  let verify_one_smtlib smtlib =
    let ifile = tmpfile "inputfgb_" ".smt2" in
    let ofile = tmpfile "outputfgb_" "" in
    let comments =
      if !debug then
        append_comments_option comments [ "Algebraic condition: " ^ string_of_ebexp_prove_with s.espost;
                                          "Output file: " ^ ofile ] |> make_line_comments ";"
      else
        "" in
    let _ = Out_channel.with_open_bin ifile (
                fun ch ->
                Out_channel.output_string ch comments;
                Out_channel.output_string ch smtlib  ) in
    let t1 = Unix.gettimeofday() in
    let cmd_list = [ solver.algsmt_path; ifile ] in
    let cmd_array = Array.of_list cmd_list in
    let _ = DomainsTasks.exec_cmd ~ofile cmd_array in
    let t2 = Unix.gettimeofday() in
    let _ = if !debug then begin
                DomainsTasks.lock_log ();
                write_headers_to_log headers;
                DomainsTasks.log "INPUT TO SMT Solver:\n";
                DomainsTasks.log_file ifile;
                DomainsTasks.log "\n";
                DomainsTasks.log ("Execution time of SMT Solver " ^ solver.algsmt_path ^ ": " ^ string_of_running_time t1 t2 ^ "\n");
                DomainsTasks.log "OUTPUT FROM SMT SOLVER:\n";
                DomainsTasks.log_file ofile;
                DomainsTasks.log "\n";
                DomainsTasks.unlock_log ()
              end in
    let res = read_one_line ofile in
    let _ = cleanup [ifile; ofile] in
    res = "unsat" in
  let verify_one_mipvars_constr vgen (_mipvars, constrs) =
    let (_, smtlib) = smtlib_ebexps_lia vgen constrs in
    verify_one_smtlib smtlib in
  let res =
    match solver.algsmt_logic with
    | NIA ->
      let (_, smtlib) = smtlib_espec vgen s in
      verify_one_smtlib smtlib
    | LIA ->
      let (_, mipvars_constrs) = mip_of_espec vgen s in
      List.for_all (verify_one_mipvars_constr vgen) mipvars_constrs in
  res

let verify_espec_single_conjunct_mip ?comments:comments headers vgen s =
  let (_, mipvars_constrs) = mip_of_espec vgen s in
  let solver =
    algebra_solver_of_prove_with (ebexp_prove_with_specs s.espost) in
  let helper (mipvars, constr) =
    let epoststr = string_of_ebexp (fst (List.hd s.espost)) in
    is_constr_feasible ~comments:(
      if !debug then
        append_comments_option comments [ "Algebraic condition: " ^ epoststr ]
      else
        []
      ) ~solver:solver headers vgen mipvars constr in
  List.for_all helper mipvars_constrs

(* Verify an algebraic specification. The solver used can be specified
   in the prove-with clauses of the specification.
   Applied in this function: slicing *)
let verify_espec_single_conjunct ?comments headers vgen s hashopt =
  let verify vgen s =
    match algebra_solver_of_prove_with (ebexp_prove_with_specs s.espost) with
    | SMTSolver solver ->
       verify_espec_single_conjunct_smt solver ?comments headers vgen s
    | PPL | SCIP | ISL ->
      verify_espec_single_conjunct_mip ?comments headers vgen s
    | _ ->
      verify_espec_single_conjunct_ideal ?comments headers vgen s in
  is_espec_trivial s || Deduce.espec_prover s ||
  (verify vgen (if !apply_slicing then slice_espec_ssa s hashopt else s))

let verify_espec_no_ecut ?comments headers vgen s hashopt =
  if !Options.Std.two_phase_rewriting then
    let pwss = ebexp_prove_with_specs s.espost in
    let solver = algebra_solver_of_prove_with pwss in
    let eqfirst = eqfirst_of_prove_with pwss in
    let mk_task entailment =
      fun () ->
      verify_entailments ?comments ~solver ~eqfirst headers [entailment] in
    let s = remove_trivial_epost s in
    (* We don't need the full is_espec_trivial test. espre_implies_espost and
       espost_in_assumes are considered in remove_trivial_epost. *)
    match s.espost with
    | [] -> []
    | (e, _)::[] ->
       let (s, sliced) =
         match e with
         | Eand _ -> (s, false)
         | _ ->
            (* If the postcondition is an atomic predicate, apply slicing at
               the beginning. *)
            (slice_espec_ssa s None, true) in
       (* Convert to ideal membership problems, rewriting and slicing (if the
          postcondition is a conjunction) are done in polys_of_espec_two_phase. *)
       let (_, entailments) = polys_of_espec_two_phase ~sliced:sliced vgen s in
       let tasks = tmap mk_task entailments in
       tasks
    | _ -> assert false
  else
    let verify_task tasks s =
      match s.espost with
      | [] -> List.rev tasks
      | _ ->
        let task =
          fun () ->
          verify_espec_single_conjunct
            ?comments headers vgen s hashopt in
        task::tasks in
    List.fold_left verify_task [] (split_espec_post s) |> List.rev

(* The top function of verifying range specifications when !jobs > 1.
   @param vgen a variable generator
   @param s an algebraic specification
   @param hashopt
   @return [true] if the algebraic specification is verified successfully *)
let verify_espec options vgen s hashopt =
  let _ =
    if !Options.Std.debug then
      DomainsTasks.log_with_lock "===== Verifying algebraic specifications =====\n" in
  let delivered_helper = (&&) in
  let mk_tasks ?comments headers s =
    verify_espec_no_ecut ?comments headers vgen s hashopt in
  let verify_ands ?comments headers (res, pending) s =
    DomainsTasks.add_to_pending Fun.id delivered_helper res
      pending (mk_tasks ?comments headers s) in
  (* Check previous result *)
  let verify cid headers (res, pending) (sid, s) =
    if res then
      verify_ands
        ~comments:(
          if !debug then
            [ "Verify: algebraic specifications";
              Printf.sprintf "Track: %s" options.st_tag;
              Printf.sprintf "Cut: #%d" cid;
              Printf.sprintf "Algebraic specification #%d: %s" sid (string_of_ebexp_prove_with s.espost) ]
          else
            []
        )
        headers (res, pending) s
    else (res, pending) in
  apply_to_cuts options.st_verify_ecuts
    verify (&&) true (DomainsTasks.empty_pending()) (cut_espec s)


let verify_rspec_single_conjunct ?comments header s hashopt =
  let solver = range_solver_of_prove_with (List.split s.rspost |> snd |> tflatten) in
  let verify_one header s =
    let f = bexp_rbexp s.rspre in
    let p = bexp_program s.rsprog in
    let g = bexp_rbexp (rbexp_prove_with_rands s.rspost) in
    let r =
      solve_simp
        ~comments:(
          if !debug then
            rcons_comments_option comments ("Range condition: " ^ string_of_bexp g)
          else
            []
        )
        ~solver:solver
        ~header:header
        (f::(rcons p g)) in
    r = Unsat in
  (* NOTE: any logging here increases the verification time pretty much for trivial specifications/assertions *)
  if is_rspec_trivial s then true
  else verify_one header (if !apply_slicing then slice_rspec_ssa s hashopt else s)

let verify_rspec_no_rcut_abs_interp hashopt s =
  let splitted_s = split_rspec_post s in
  if !Options.Std.abs_interp && List.for_all (fun (e, _) -> Absdom.Common.rbexp_apply_abs_interp e) s.rspost then
    let s = if !apply_slicing then slice_rspec_ssa s hashopt else s in
    let vs = vars_rspec s in
    let mgr = Absdom.Std.create_manager vs in
    let vars_dom = Absdom.Std.abs_of_vars mgr
                     (VS.diff vs (lvs_program s.rsprog)) in
    match Absdom.Std.abs_of_rbexp mgr ~abs:vars_dom s.rspre with
    | Some dom ->
       let start_dom = Absdom.Std.meet mgr dom vars_dom in
       let dom' = Absdom.Std.interp_prog mgr start_dom s.rsprog in
       (*
       let _ = Format.pp_force_newline Format.std_formatter ();
               Format.pp_print_string Format.std_formatter "Start domain:";
               Format.pp_force_newline Format.std_formatter ();
               Format.pp_print_string Format.std_formatter
                 (Absdom.Std.string_of_abs dom);
               Format.pp_force_newline Format.std_formatter ();
               Format.pp_print_string Format.std_formatter "End domain:";
               Format.pp_force_newline Format.std_formatter ();
               Format.pp_print_string Format.std_formatter
                 (Absdom.Std.string_of_abs dom');
               Format.pp_force_newline Format.std_formatter ();
               Format.pp_print_flush Format.std_formatter () in
        *)
       let rev_ret =
         List.fold_left (fun ret rs ->
             let (post, _) = merge_rbexp_prove_with rs.rspost in
             if Absdom.Std.sat_rbexp mgr dom' post then
               let _ = if !Options.Std.debug then begin
                           DomainsTasks.lock_log ();
                           DomainsTasks.log "Range condition: ";
                           DomainsTasks.log (string_of_rbexp post);
                           DomainsTasks.log " [ok]\n";
                           DomainsTasks.log "End abstract domain: ";
                           DomainsTasks.log (Absdom.Std.string_of_abs dom');
                           DomainsTasks.log "\n";
                           DomainsTasks.unlock_log ()
                         end in
               ret
             else
               (*
               let _ = safe_trace ("Range condition: " ^
                                     (string_of_rbexp post) ^ " [fail]") in
               let _ = safe_trace ("End abstract domain: " ^
                                     (Absdom.Std.string_of_abs dom')) in
               *)
               rs::ret) [] splitted_s in
       List.rev rev_ret
    | None -> splitted_s
  else
    splitted_s


let verify_rspec_no_rcut ?comments header s hashopt =
  let verify comments s = fun () ->
    verify_rspec_single_conjunct ?comments header s hashopt in
  verify_rspec_no_rcut_abs_interp hashopt s |>
  List.rev_map (verify comments) |> List.rev


(* The top function of verifying range specifications when !jobs > 1. *)
let verify_rspec options s hashopt =
  let _ = if !Options.Std.debug then
    DomainsTasks.log_with_lock "===== Verifying range specifications =====\n" in
  let delivered_helper = (&&) in
  let mk_tasks ?comments headers s = verify_rspec_no_rcut ?comments headers s hashopt in
  let verify_ands ?comments headers (res, pending) s =
    DomainsTasks.add_to_pending Fun.id delivered_helper res
      pending (mk_tasks ?comments headers s) in
  (* Check previous result *)
  let verify cid headers (res, pending) (sid, s) =
    if res then
      verify_ands
        ~comments:(
          if !debug then
            [ "Verify: range specifications";
              Printf.sprintf "Track: %s" options.st_tag;
              Printf.sprintf "Cut: #%d" cid;
              Printf.sprintf "Range specification #%d: %s" sid (string_of_rbexp_prove_with s.rspost) ]
          else
            []
        )
        headers (res, pending) s
    else (res, pending) in
  apply_to_cuts
    options.st_verify_rcuts         (* cut IDs to be verified *)
    verify                          (* verification function *)
    delivered_helper                (* function for delivering results *)
    true                            (* initial result *)
    (DomainsTasks.empty_pending ()) (* initial pending state *)
    (cut_rspec s)                   (* all cuts *)

(* The top function of verifying algebraic assertions when !jobs > 1. *)
let verify_eassert options vgen s hashopt =
  let _ =
    if !Options.Std.debug then
      DomainsTasks.log_with_lock "===== Verifying algebraic assertions =====\n" in
  let delivered_helper = (&&) in
  let mk_tasks ?comments headers (sid, s) =
    let tasks =
      verify_espec_no_ecut
        ~comments:(
          if !debug then
            rcons_comments_option
              comments
              ("Algebraic assertion #" ^ string_of_int sid
               ^ ": " ^ Ast.Cryptoline.string_of_ebexp_prove_with s.espost)
          else
            []
        )
        headers vgen s hashopt in
    tasks in
  let verify_spec ?comments headers (res, pending) s =
    let tasks = mk_tasks ?comments headers s in
    DomainsTasks.add_to_pending Fun.id delivered_helper res pending tasks in
  (* Check previous result *)
  let verify cid headers (res, pending) (sid, s) =
    if res && Options.Std.mem_hashset_opt options.st_verify_eassert_ids sid
    then verify_spec
        ~comments:(
          if !debug then
            [ "Verify: algebraic assertions";
              Printf.sprintf "Track: %s" options.st_tag;
              "Cut: #" ^ string_of_int cid ]
          else
            []
        )
        headers (res, pending) (sid, s)
    else (res, pending) in
  apply_to_cuts
    options.st_verify_eacuts        (* cut IDs to be verified *)
    verify                          (* verification function *)
    delivered_helper                (* function for delivering results *)
    true                            (* initial result *)
    (DomainsTasks.empty_pending())  (* initial pending state *)
    (cut_eassert (espec_of_spec s)) (* all cuts *)


(* The top function of verifying range assertions when !jobs > 1. *)
let verify_rassert options s hashopt =
  let _ = if !Options.Std.debug then
    DomainsTasks.log_with_lock "===== Verifying range assertions =====\n" in
  let delivered_helper = (&&) in
  let mk_tasks ?comments headers (sid, s) =
    let tasks =
      verify_rspec_no_rcut
        ~comments:(
          if !debug then
            rcons_comments_option comments ("Range assertion #" ^ string_of_int sid ^ ": " ^ Ast.Cryptoline.string_of_rbexp_prove_with s.rspost)
          else
            []
        )
        headers s hashopt in
    tasks in
  let verify_spec ?comments headers (res, pending) s =
      let tasks = mk_tasks ?comments headers s in
      DomainsTasks.add_to_pending Fun.id delivered_helper res pending tasks in
  (* Check previous result *)
  let verify cid headers (res, pending) (sid, s) =
    if res && Options.Std.mem_hashset_opt options.st_verify_rassert_ids sid
    then
      verify_spec
        ~comments:(
          if !debug then
            [ "Verify: range assertions";
              Printf.sprintf "Track: %s" options.st_tag;
              "Cut: #" ^ string_of_int cid ]
          else
            []
        )
        headers (res, pending) (sid, s)
    else (res, pending) in
  apply_to_cuts
    options.st_verify_racuts        (* cut IDs to be verified *)
    verify                          (* verification function *)
    delivered_helper                (* function for delivering results *)
    true                            (* initial result *)
    (DomainsTasks.empty_pending ()) (* initial pending state *)
    (cut_rassert (rspec_of_spec s)) (* all cuts *)



(** Verification of Safety Conditions *)

(* This function is used in Std.verify_safety_of_cut_inc, which verifies
   safety conditions incrementally cut by cut. Options.vscuts is handled
   in Std.verify_safety. *)
let verify_safety_conditions ?comments timeout f prog qs hashopt =
  let mk_task (id, i, q, p) = fun () ->
    let fp = safety_assumptions f p q hashopt in
    try
      let simp_res =
        Qfbv.WithDomains.solve_simp
          ~comments:(
            if !debug then
              append_comments_option comments
                [ "Safety condition: #" ^ string_of_int id;
                  "Instruction: " ^ string_of_instr i ]
            else
              []
          )
          ~timeout:timeout (rcons fp q) in
      match simp_res with
      | Sat -> (id, i, q, "[FAILED]", Solved Sat)
      | Unknown -> (id, i, q, "[FAILED]", Solved Unknown)
      | Unsat -> (id, i, q, "[OK]", Solved Unsat)
    with Tasks.TimeoutException ->
      (id, i, q, "[TIMEOUT]", Unfinished [(id, i, q)]) in
  let continue_helper r =
    match r with
    | Solved Unsat | Unfinished _ -> true
    | _ -> false in
  let delivered_helper r (id, i, q, ret_str, ret) =
    let _ = vprint ("\t\tSafety condition #" ^
                      string_of_int id ^ "\t\t") in
    let _ = vprintln ret_str in
    let add_unsolved q res =
      match res with
      | Solved Unsat -> Unfinished [q]
      | Unfinished unsolved -> Unfinished (q::unsolved)
      | _ -> assert false in
    match r with
    | Solved Sat | Solved Unknown -> r
    | _ ->
       match ret with
       | Solved Sat | Solved Unknown -> ret
       | Solved Unsat -> r
       | Unfinished qs ->
          let _ = assert (List.length qs = 1) in
          add_unsolved (id, i, q) r in
  let rec find_program_prefix i revp p =
    match p with
    | [] -> failwith "find_program_prefix fails"
    | hd::tl -> if i = hd then (hd::revp, tl)
                else find_program_prefix i (hd::revp) tl in
  let fold_fun (res, revp, p, pending) (id, i, q) =
    match res with
      Solved Sat
    | Solved Unknown ->
      let res' = DomainsTasks.finish_pending delivered_helper res pending in
      (res', revp, p, pending)
    | _ ->
      let (revp', p') = find_program_prefix i revp p in
      let task = mk_task (id, i, q, List.rev revp') in
      let (res', pending') = DomainsTasks.add_to_pending continue_helper delivered_helper res pending [task] in
      (res', revp', p', pending') in
  let rec fold_fun_abs_interp (res, revp, p, pending, mgr, dom) (id, i, q) =
    match p with
    | h::t ->
       if h <> i then
         let dom' = Absdom.Std.interp_instr ~safe:true ~var_bound:true mgr dom h in
         fold_fun_abs_interp (res, h::revp, t, pending, mgr, dom') (id, i, q)
       else
         if Absdom.Std.instr_safe mgr dom i then
           let _ = vprint ("\t\tSafety condition #" ^ string_of_int id ^
                             "\t\t[ok]\n") in
           let dom' = Absdom.Std.interp_instr ~safe:true ~var_bound:true mgr dom h in
           (res, h::revp, t, pending, mgr, dom')
         else
           let dom' = Absdom.Std.interp_instr ~safe:false ~var_bound:true mgr dom h in
           let (res', revp', p', pending') =
             fold_fun (res, revp, p, pending) (id, i, q) in
           let _ = assert (p' == t) in
           (res', revp', p', pending', mgr, dom')
    | [] -> failwith "fold_fun_abs_interp fails" in
  let (res, _, _, pending) =
    if !Options.Std.abs_interp then
      let vars = VS.union (vars_rbexp f) (vars_program prog) in
      let mgr = Absdom.Std.create_manager vars in
      let vars_dom = Absdom.Std.abs_of_vars mgr
                       (VS.diff vars (lvs_program prog)) in
      match Absdom.Std.abs_of_rbexp mgr ~abs:vars_dom f with
      | Some dom ->
         let start_dom = Absdom.Std.meet mgr dom vars_dom in
         let (res, revp, p, pending, _, _) =
           List.fold_left fold_fun_abs_interp
             (Solved Unsat, [], prog, DomainsTasks.empty_pending(), mgr, start_dom) qs in
         (res, revp, p, pending)
      | None -> List.fold_left fold_fun (Solved Unsat, [], prog, DomainsTasks.empty_pending()) qs
    else
      List.fold_left fold_fun (Solved Unsat, [], prog, DomainsTasks.empty_pending()) qs in
  DomainsTasks.finish_pending delivered_helper res pending



(*
 * Verify safety of a specification instruction by instruction parallelly.
 * A single predicate is created for the safety of each instruction.
 *)
let verify_safety_cross_cut_inc_domains options ?comments s hashopt =
  let continue_helper ((res, _), _) = res in
  let delivered_helper ((rsafe, rsid), rtimedouts) (cid, timeout, header, id, i, q, res_str, timedout, safe) =
    let _ = vprintln (Printf.sprintf "\tCut %4s, Condition %5s, Timeout %8s\t%s" (Printf.sprintf "#%d" cid) (Printf.sprintf "#%d" id) (Printf.sprintf "%5.2f" timeout) res_str) in
    ((rsafe && safe, rsid), if timedout then (cid, timeout *. 2.0, header, id, i, q)::rtimedouts else rtimedouts) in
  let make_task (cid, timeout, header, id, i, q) = fun () ->
    let res =
      try
        let simp_res =
          Qfbv.WithDomains.solve_simp
            ~comments:(
              if !debug then
                append_comments_option comments [ Printf.sprintf "Track: %s" options.st_tag;
                                                  "Cut: #" ^ string_of_int cid;
                                                  "Safety condition: #" ^ string_of_int id;
                                                  "Instruction: " ^ string_of_instr i ]
              else
                []
            )
            ~timeout ~header q in
        match simp_res with
        | Sat -> (cid, timeout, header, id, i, q, "[FAILED]", false, false)
        | Unknown -> (cid, timeout, header, id, i, q, "[FAILED]", false, false)
        | Unsat -> (cid, timeout, header, id, i, q, "[OK]", false, true)
      with Tasks.TimeoutException ->
        (cid, timeout, header, id, i, q, "[TIMEOUT]", true, true) in
    res in
  let verify_cut cid header (((res, sid), timedouts), pending) (_, s) =
    let verify_cut_helper (res_with_timedouts, pending) (id, i, q) =
      if Options.Std.mem_hashset_opt options.st_verify_safety_ids id then
        let task =  make_task (cid, !incremental_safety_timeout,
                               header, id, i, q) in
        DomainsTasks.add_to_pending continue_helper delivered_helper res_with_timedouts pending [task]
      else
        (res_with_timedouts, pending) in
    let rec verify_cut_helper_abs_interp ((res_with_timedouts, pending), mgr, dom, p) (id, i, q) =
      match p with
      | h::t ->
        if i <> h then
          let dom' =
            Absdom.Std.interp_instr ~safe:true ~var_bound:true mgr dom h in
          verify_cut_helper_abs_interp ((res_with_timedouts, pending), mgr, dom', t)
            (id, i, q)
        else if Absdom.Std.instr_safe mgr dom i then
          let dom' =
            Absdom.Std.interp_instr ~safe:true ~var_bound:true mgr dom i in
          ((res_with_timedouts, pending), mgr, dom', t)
        else
          let dom' = Absdom.Std.interp_instr ~safe:false ~var_bound:true mgr dom i in
          (verify_cut_helper (res_with_timedouts, pending) (id, i, q), mgr, dom', t)
      | [] -> failwith "verify_cut_helper_abs_interp fails" in
    if res then
      let (next_sid, conds) = bexp_program_safe_numbered_conds sid s.rspre s.rsprog hashopt in
      let (res_with_timedouts', pending') =
        if !Options.Std.abs_interp then
          let vars = VS.union (vars_rbexp s.rspre)
              (vars_program s.rsprog) in
          let mgr = Absdom.Std.create_manager vars in
          let vars_dom = Absdom.Std.abs_of_vars mgr
              (VS.diff vars (lvs_program s.rsprog)) in
          match Absdom.Std.abs_of_rbexp mgr ~abs:vars_dom s.rspre with
          | Some dom ->
            let start_dom = Absdom.Std.meet mgr dom vars_dom in
            let ((res_with_timedouts', pending'), _, _, _) = List.fold_left
                verify_cut_helper_abs_interp
                ((((res, sid), timedouts), pending), mgr, start_dom, s.rsprog)
                conds in
            (res_with_timedouts', pending')
          | None -> List.fold_left verify_cut_helper (((res, sid), timedouts), pending) conds
        else
          List.fold_left verify_cut_helper (((res, sid), timedouts), pending) conds in
      let _ =
        if next_sid > sid then
          vprintln(Printf.sprintf "\t=> Cut #%d: %d safety conditions (#%d - #%d)" cid (List.length conds) sid (next_sid - 1))
        else
          vprintln(Printf.sprintf "\t=> Cut #%d: %d safety conditions" cid (List.length conds)) in
      (res_with_timedouts', pending')
    else
      (((res, sid), timedouts), pending) in
  let (((res, sid), timedouts_rev), pending) = apply_to_cuts_unfinished options.st_verify_scuts verify_cut ((true, 0), []) (DomainsTasks.empty_pending()) (cut_safety (rspec_of_spec s)) in
  let (res, _) = DomainsTasks.finish_pending_with_timedouts continue_helper delivered_helper (tmap make_task) ((res, sid), List.rev timedouts_rev) pending in
  res

(*
 * Verify safety of a specification cut by cut parallelly.
 * A single predicate is created for the safety of each cut.
 *)
let verify_safety_cruss_cut_all_domains options ?comments s hashopt =
  let delivered_helper (rsafe, rsid) safe = (rsafe && safe, rsid) in
  let verify_cut cid header ((res, sid), pending) (_, s) =
    if res then
      if Options.Std.mem_hashset_opt options.st_verify_safety_ids sid then
        let comments =
          if !debug then
            append_comments_option comments [ Printf.sprintf "Track: %s" options.st_tag;
                                              "Cut: #" ^ string_of_int cid;
                                              "Target: all instructions in this cut" ]
          else
            [] in
        let task () =
          let g = bexp_program_safe s.rsprog in
          let fp = safety_assumptions s.rspre s.rsprog g hashopt in
          let res = Qfbv.WithDomains.solve_simp ~comments ~header (fp@[g]) in
          (res = Unsat) in
        DomainsTasks.add_to_pending fst delivered_helper (res, sid + 1) pending [task]
      else ((res, sid + 1), pending)
    else ((res, sid), pending) in
  let (res, _) = apply_to_cuts options.st_verify_scuts verify_cut delivered_helper (true, 0) (DomainsTasks.empty_pending()) (cut_safety (rspec_of_spec s)) in
  res

(* Verify safety of a specification parallelly. Safety conditions cross
   different cuts may be verified at the same time. *)
let verify_safety_cross_cut_domains options ?comments s hashopt =
  if !incremental_safety then verify_safety_cross_cut_inc_domains options ?comments s hashopt
  else verify_safety_cruss_cut_all_domains options ?comments s hashopt



(* This function is used in Std.verify_safety_mip_of_cut_inc, which verifies
   safety conditions incrementally cut by cut. Options.vscuts is handled
   in Std.verify_safety. Abstract interpretation is not supported. *)
let verify_safety_mip_conditions ?comments timeout indexed_infos vgen _hashopt =
  let headers = [] in
  let mip_verifier ?comments ?timeout (mipvars, constr) =
    is_constr_feasible ?timeout ~comments:(
      if !debug then
        append_comments_option comments []
      else
        []
    ) headers ~solver:!Options.Std.mip_safety_solver vgen mipvars constr in
  let mk_task (id, info) = fun () ->
    try
      let mip_res =
        mip_verifier
          ~comments:(
            if !debug then
              append_comments_option comments [ Printf.sprintf "Safety condition: #%d" id;
                                                Printf.sprintf "Instruction: %s" (string_of_instr info.Mip.mip_sndcond_instr);
                                                Printf.sprintf "Condition: %s" (string_of_ebexp info.mip_sndcond_cond);
                                                Printf.sprintf "Constraint: #%d" info.mip_sndcond_index ]
            else
              []
          )
          ~timeout
          info.mip_sndcond_constrs in
      if mip_res
      then (id, info, "[OK]", Solved Unsat)
      else (id, info, "[FAILED]", Solved Sat)
    with Tasks.TimeoutException ->
      (id, info, "[TIMEOUT]", Unfinished [(id, info)]) in
  let continue_helper r =
    match r with
    | Solved Unsat | Unfinished _ -> true
    | _ -> false in
  let delivered_helper r (id, info, ret_str, ret) =
    let _ = vprint ("\t\tSafety condition #" ^
                      string_of_int id ^ "\t\t") in
    let _ = vprintln ret_str in
    let add_unsolved q res =
      match res with
      | Solved Unsat -> Unfinished [q]
      | Unfinished unsolved -> Unfinished (q::unsolved)
      | _ -> assert false in
    match r with
    | Solved Sat | Solved Unknown -> r
    | _ ->
       (match ret with
        | Solved Sat | Solved Unknown -> ret
        | Solved Unsat -> r
        | Unfinished qs ->
           let _ = assert (List.length qs = 1) in
           add_unsolved (id, info) r) in
  let fold_fun (res, pending) (id, info) =
    match res with
      Solved Sat
    | Solved Unknown -> (res, pending)
    | _ ->
      let task = mk_task (id, info) in
      DomainsTasks.add_to_pending continue_helper delivered_helper res pending [task] in
  let (res, pending) = List.fold_left fold_fun (Solved Unsat, DomainsTasks.empty_pending()) indexed_infos in
  DomainsTasks.finish_pending delivered_helper res pending

(* Verify safety of a specification parallelly cross cuts. Abstract
   interpretation is not supported. *)
let verify_safety_mip_cross_cuts_domains options ?comments vgen s _hashopt =
  let assoc_safety_ids base i info = (base + i, info) in
  let mip_verifier ?comments ?timeout header (mipvars, constr) =
    is_constr_feasible ?timeout ~comments:(
      if !debug then
        append_comments_option comments []
      else
        []
    ) header ~solver:!Options.Std.mip_safety_solver vgen mipvars constr in
  let continue_helper ((res, _), _) = res in
  let delivered_helper ((rsafe, rsid), rtimedouts) (cid, timeout, header, id, info, res_str, timedout, safe) =
    let _ = vprintln (Printf.sprintf "\tCut %4s, Condition %5s, Timeout %8s\t%s" (Printf.sprintf "#%d" cid) (Printf.sprintf "#%d" id) (Printf.sprintf "%5.2f" timeout) res_str) in
    ((rsafe && safe, rsid), if timedout then (cid, timeout *. 2.0, header, id, info)::rtimedouts else rtimedouts) in
  let make_task (cid, timeout, header, id, info) = fun () ->
    try
      let mip_res =
        mip_verifier
          ~comments:(
            if !debug then
              append_comments_option comments [ Printf.sprintf "Track: %s" options.st_tag;
                                                Printf.sprintf "Cut: #%d" cid;
                                                Printf.sprintf "Safety condition: #%d" id;
                                                Printf.sprintf "Instruction: %s" (string_of_instr info.Mip.mip_sndcond_instr);
                                                Printf.sprintf "Condition: %s" (string_of_ebexp info.mip_sndcond_cond);
                                                Printf.sprintf "Constraint: #%d" info.mip_sndcond_index ]
            else
              []
          )
          ~timeout header info.mip_sndcond_constrs in
      if mip_res
      then (cid, timeout, header, id, info, "[OK]", false, true)
      else (cid, timeout, header, id, info, "[FAILED]", false, false)
    with Tasks.TimeoutException ->
      (cid, timeout, header, id, info, "[TIMEOUT]", true, true) in
  let verify_cut cid header (((res, sid), timedouts), pending) (_, s) =
    let verify_cut_helper (res_with_timedouts, pending) (id, info) =
      if Options.Std.mem_hashset_opt options.st_verify_safety_ids id
      then let task = make_task (cid, !incremental_safety_timeout, header, id, info) in
           DomainsTasks.add_to_pending continue_helper delivered_helper res_with_timedouts pending [task]
      else (res_with_timedouts, pending) in
    if res
    then let (_, infos) = Mip.safety_conditions_of_program vgen s.espre s.esprog in
         let indexed_infos = List.mapi (assoc_safety_ids sid) infos in
         let next_sid = sid + List.length infos in
         let (res_with_timedouts', pending') = List.fold_left verify_cut_helper (((res, sid), timedouts), pending) indexed_infos in
         let _ = if next_sid > sid then vprintln(Printf.sprintf "\t=> Cut #%d: %d safety conditions (#%d - #%d)" cid (List.length indexed_infos) sid (next_sid - 1))
                 else vprintln(Printf.sprintf "\t=> Cut #%d: %d safety conditions" cid (List.length indexed_infos)) in
         (res_with_timedouts', pending')
    else (((res, sid), timedouts), pending)
  in
  let (((res, sid), timedouts_rev), pending) = apply_to_cuts_unfinished options.st_verify_scuts verify_cut ((true, 0), []) (DomainsTasks.empty_pending()) (cut_esafety (espec_of_spec s)) in
  let (res, _) = DomainsTasks.finish_pending_with_timedouts continue_helper delivered_helper (tmap make_task) ((res, sid), List.rev timedouts_rev) pending in
  res
