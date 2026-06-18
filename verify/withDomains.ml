
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

let read_sage_output ofile =
  let lines = In_channel.with_open_text ofile In_channel.input_lines in
  if List.mem "AssertionError" lines then "false"
  else if List.length lines = 0 then "true"
  else failwith "Unknown error in Sage"

let read_magma_output = read_one_line

let read_mathematica_output = read_one_line

let read_macaulay2_output = read_one_line

let read_maple_output = read_one_line


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
    Buffer.add_string buf "bset = ";
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
  
  

let run_ppl headers ifile ofile =
  let t1 = Unix.gettimeofday() in
  let cmd_list = [ !python_path; "-q"; ifile ] in
  let cmd_array = Array.of_list cmd_list in
  let _ = DomainsTasks.exec_cmd ~ofile cmd_array in
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

let run_scip headers ifile ofile =
  let t1 = Unix.gettimeofday() in
  let cmd_list = [ !python_path; "-q"; ifile ] in
  let cmd_array = Array.of_list cmd_list in
  let _ = DomainsTasks.exec_cmd ~ofile cmd_array in
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

let run_isl headers ifile ofile =
  let t1 = Unix.gettimeofday() in
  let cmd_list = [ !python_path; "-q"; ifile ] in
  let cmd_array = Array.of_list cmd_list in
  let _ = DomainsTasks.exec_cmd ~ofile cmd_array in
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

let run_smt headers algsmt_path ifile ofile =
  let t1 = Unix.gettimeofday() in
  let cmd_list = [ algsmt_path; ifile ] in
  let cmd_array = Array.of_list cmd_list in
  let _ = DomainsTasks.exec_cmd ~ofile cmd_array in
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
  let ideal = if expand then tmap expand_eexp ideal else ideal in
  let p = if expand then expand_eexp p else p in
  let ifile = tmpfile "inputfgb_" "" in
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
      (* The input file to Sage must have file extension ".sage". *)
       let ifile = ifile ^ ".sage" in
       let _ = write_sage_input ~comments ifile vars ideal p in
       let _ = run_sage headers ifile ofile in
       let res = read_sage_output ofile in
       res = "true"
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
    | SMTSolver _ -> failwith ("Ideal membership queries are not supported by SMT solver.")
    | PPL | SCIP | ISL -> failwith ("Ideal membership queries are not supported by MIP solver.")
  in
  let _ = cleanup [ifile; ofile] in
  res

let is_constr_feasible ?comments headers ?(solver=(!Options.Std.algebra_solver))
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
     let _ = run_ppl headers ifile ofile in
     let res = read_ppl_output ofile in
     res = "False"
  | SCIP ->
     let (ifile, ofile, comments) = gen_files_py() in
     let _ = write_scip_input ~comments ifile mipvars constr in
     let _ = run_scip headers ifile ofile in
     let res = read_scip_output ofile in
     res = "infeasible"
  | ISL ->
     let (ifile, ofile, comments) = gen_files_py() in
     let _ = write_isl_input ~comments ifile mipvars constr in
     let _ = run_isl headers ifile ofile in
     let res = read_isl_output ofile in
     res = "True"
  | SMTSolver o when o.algsmt_logic = LIA ->
     let (ifile, ofile, comments) = gen_files_smt() in
     let _ = write_smt_input ~comments ifile vgen constr in
     let _ = run_smt headers o.algsmt_path ifile ofile in
     let res = read_smt_output ofile in
     res = "unsat"
  | _ -> failwith "Algebraic range condition needs MIP solver."


(* Verify a list of entailments. *)
let verify_entailments ?comments ?(solver=(!algebra_solver)) headers entailments =
  List.fold_left
    (fun res (post, vars, ideal, p) ->
       if res then (
         if !Options.Std.check_eq_first &&
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
  let solver = algebra_solver_of_prove_with (ebexp_prove_with_specs s.espost) in
  verify_entailments ?comments ~solver:solver headers entailments

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
    res = "unsat" in
  let verify_one_mipvars_constr vgen (_mipvars, constrs) =
    let (_, smtlib) = smtlib_ebexps_lia vgen constrs in
    verify_one_smtlib smtlib in
  let res =
    match solver.algsmt_logic with
    | NIA -> let (_, smtlib) = smtlib_espec vgen s in
             verify_one_smtlib smtlib
    | LIA -> let (_, mipvars_constrs) = mip_of_espec vgen s in
             (* TODO: parallelize this *)
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
  (* TODO: parallelize this *)
  List.for_all helper mipvars_constrs

(* Verify an algebraic specification. The solver used can be specified
   in the prove-with clauses of the specification.
   Applied in this function: slicing *)
let verify_espec_single_conjunct ?comments headers vgen s hashopt =
  let verify =
    match algebra_solver_of_prove_with (ebexp_prove_with_specs s.espost) with
    | SMTSolver solver ->
      verify_espec_single_conjunct_smt solver ?comments headers
    | PPL | SCIP | ISL ->
      verify_espec_single_conjunct_mip ?comments headers
    | _ ->
      verify_espec_single_conjunct_ideal ?comments headers in
  is_espec_trivial s || Deduce.espec_prover s ||
    (verify vgen (if !apply_slicing then slice_espec_ssa s hashopt else s))

let verify_espec_no_ecut ?comments headers vgen s hashopt =
  if !Options.Std.two_phase_rewriting then
    let solver = algebra_solver_of_prove_with (ebexp_prove_with_specs s.espost) in
    let mk_task entailment =
      fun () ->
      verify_entailments ?comments ~solver:solver headers [entailment] in
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
      | [] -> tasks
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


