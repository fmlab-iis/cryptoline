
open Options.Std
open Ast.Cryptoline
open Ast.MultiTrack
open Qfbv.Common
open Qfbv.Std
open Smt
open Common
open Utils
open Utils.Std



(** Apply Verification Functions to Cuts *)

(*
 * `apply_to_cuts ids vf res combine cuts` applies verifiction function vf to cuts with ID specified in ids.
 * The verification function vf has three arguments: the previous result, the ID of a cut to be verified, and the cut.
 * res is the initial result.
 * Note that cuts must be all cuts (including the poscondition as the last cut) of the specification to be verified.
 *)
let apply_to_cuts ids f res ss =
  let ids = ids |> Option.map Hashset.to_list |> Option.map (List.map (normalize_index (List.length ss))) |> Option.map Hashset.of_list in
  (* [helper i res ss] verifies the [i]-th cut [ss]. [res] is the previous result. *)
  let rec helper i res ss =
    match ss with
    | [] -> res
    | hd::tl -> if Options.Std.mem_hashset_opt ids i then
                  let _ = Options.Std.trace ("=== Cut #" ^ string_of_int i ^ " ===") in
                  let res = List.fold_left (f i) res hd in
                  helper (i+1) res tl
                else
                  let _ = Options.Std.trace ("=== Skip Cut #" ^ string_of_int i ^ " ===") in
                  helper (i+1) res tl in
  helper 0 res ss



(** Low-Level Interaction of CAS *)

(*
 * groebner: https://www.singular.uni-kl.de/Manual/4-3-2/sing_261.htm#SEC301
 * reduce: https://www.singular.uni-kl.de/Manual/4-3-2/sing_337.htm#SEC377
 *)
let write_singular_input ?comments ifile vars gen p =
  let input_text =
    let varseq =
      match vars with
      | [] -> "x"
      | _ -> String.concat "," (List.map string_of_var vars) in
    let generator = if List.length gen = 0 then "0" else (String.concat ",\n  " (List.map singular_of_eexp gen)) in
    let poly = singular_of_eexp p in
    let comment = if !debug then Option.value (Option.map (make_line_comments "//") comments) ~default:"" else "" in
    comment
    ^ "proc is_generator(poly p, ideal I) {\n"
    ^ "  int idx;\n"
    ^ "  for (idx=1; idx<=size(I); idx++) {\n"
    ^ "    if (p == I[idx]) { return (0==0); }\n"
    ^ "  }\n"
    ^ "  return (0==1);\n"
    ^ "}\n\n"
    ^ "ring r = integer, (" ^ varseq ^ "), lp;\n"
    ^ "ideal gs = " ^ generator ^ ";\n"
    ^ "poly p = " ^ poly ^ ";\n"
    ^ "if (is_generator(p, gs) || reduce(p, gs) == 0) {\n"
    ^ "  0;\n"
    ^ "} else {\n"
    ^ "  ideal I = groebner(gs);\n"
    ^ "  reduce(p, I);\n"
    ^ "}\n"
    ^ "exit;\n" in
  let ch = open_out ifile in
  let _ = output_string ch input_text; close_out ch in
  Options.Std.trace "INPUT TO SINGULAR:";
  Options.Std.trace_file ifile;
  Options.Std.trace ""

(*
 * ideals: https://doc.sagemath.org/html/en/reference/rings/sage/rings/ideal.html
 *)
let write_sage_input ?comments ifile vars gen p =
  let input_text =
    let varseq =
      match vars with
      | [] -> "x"
      | _ -> String.concat "," (List.map string_of_var vars) in
    let generator = if List.length gen = 0 then "0" else (String.concat ",\n  " (List.map sage_of_eexp gen)) in
    let poly = sage_of_eexp p in
    let comment = if !debug then Option.value (Option.map (make_line_comments "#") comments) ~default:"" else "" in
    comment
    ^ "R.<" ^ varseq ^ "> = PolynomialRing(ZZ," ^ string_of_int (List.length vars) ^ ")\n"
    ^ "I = (" ^ generator ^ ") * R\n"
    ^ "P = " ^ poly ^ "\n"
    ^ "assert P in I\n" in
  let ch = open_out ifile in
  let _ = output_string ch input_text; close_out ch in
  Options.Std.trace "INPUT TO SAGE:";
  Options.Std.trace_file ifile;
  Options.Std.trace ""

(*
 * ideals: https://magma.maths.usyd.edu.au/magma/handbook/text/413
 *)
let write_magma_input ?comments ifile vars gen p =
  let input_text =
    let varseq =
      match vars with
      | [] -> "x"
      | _ -> String.concat "," (List.map string_of_var vars) in
    let varlen = max 1 (List.length vars) in
    let generator = if List.length gen = 0 then "0" else (String.concat ",\n" (List.map magma_of_eexp gen)) in
    let poly = magma_of_eexp p in
    let comment = if !debug then Option.value (Option.map (make_line_comments "//") comments) ~default:"" else "" in
    comment
    ^ "Z := IntegerRing();\n"
    ^ "R<" ^ varseq ^ "> := PolynomialRing(Z, " ^ string_of_int varlen ^ ");\n"
    ^ "G := [" ^ generator ^ "];\n"
    ^ "p := " ^ poly ^ ";\n"
    ^ "if p in G then\n"
    ^ "  true;\n"
    ^ "else\n"
    ^ "  I := ideal<R|G>;\n"
    ^ "  p in I;\n"
    ^ "end if;\n"
    ^ "exit;\n" in
  let ch = open_out ifile in
  let _ = output_string ch input_text; close_out ch in
  Options.Std.trace "INPUT TO MAGMA:";
  Options.Std.trace_file ifile;
  Options.Std.trace ""

let write_mathematica_input ?comments ifile vars gen p =
  let input_text =
    let varseq =
      match vars with
      | [] -> "x"
      | _ -> String.concat "," (List.map mathematica_of_var vars) in
    let generator = if List.length gen = 0 then "0" else (String.concat ",\n  " (List.map mathematica_of_eexp gen)) in
    let poly = mathematica_of_eexp p in
    let comment = if !debug then Option.value (Option.map (make_block_comments "(*" "*)") comments) ~default:"" else "" in
    comment
    ^ "vars = {" ^ varseq ^ "};\n"
    ^ "gs = {" ^ generator ^ "};\n"
    ^ "p = " ^ poly ^ ";\n"
    ^ "gb = GroebnerBasis[gs, vars, CoefficientDomain -> Integers];\n"
    ^ "{q, r} = PolynomialReduce[p, gb, vars, CoefficientDomain -> Integers];\n"
    ^ "Print[r];\n" in
  let ch = open_out ifile in
  let _ = output_string ch input_text; close_out ch in
  Options.Std.trace "INPUT TO MATHEMATICA:";
  Options.Std.trace_file ifile;
  Options.Std.trace ""

let write_macaulay2_input ?comments ifile vars gen p =
  let input_text =
    let (vars, gen, p, default_generator) =
      let dummy_var = mkvar ~newvid:true "cryptoline'dummy'variable" (Tuint 0) (* The variable type does not matter *) in
      let no_var_in_generator = VS.is_empty (List.fold_left (fun vs e -> VS.union vs (vars_eexp e)) VS.empty gen) in
      if no_var_in_generator then
        (dummy_var::vars,
         List.map (fun e -> emul (evar dummy_var) e) gen,
         emul (evar dummy_var) p,
         string_of_var dummy_var ^ "*0")
      else
        (vars, gen, p, "0") in
    let varseq =
      match vars with
      | [] -> "x"
      | _ -> String.concat "," (List.map macaulay2_of_var vars) in
    let generator = if List.length gen = 0 then default_generator else (String.concat ",\n  " (List.map macaulay2_of_eexp gen)) in
    let poly = macaulay2_of_eexp p in
    let comment = if !debug then Option.value (Option.map (make_line_comments "--") comments) ~default:"" else "" in
    comment
    ^ "myRing = ZZ[" ^ varseq ^ ",MonomialOrder=>Lex]\n"
    ^ "myIdeal = ideal(" ^ generator ^ ")\n"
    ^ "myPoly = " ^ poly ^ "\n"
    ^ "myBasis = groebnerBasis myIdeal\n"
    ^ "myRes = toString (myPoly % myBasis)\n"
    ^ "print myRes\n" in
  let ch = open_out ifile in
  let _ = output_string ch input_text; close_out ch in
  Options.Std.trace "INPUT TO MACAULAY2:";
  Options.Std.trace_file ifile;
  Options.Std.trace ""

let write_maple_input ?comments ifile vars gen p =
  let const_gen =
    let (const_gen, poly_gen) = List.partition is_eexp_over_const gen in
    let _ = if List.length poly_gen > 0 then failwith("Only prime modulus is supported when using maple.") in
    match const_gen with
    | [] -> Econst Z.zero
    | c::[] -> c
    | _ -> failwith("Multi-moduli is not supported when using maple.") in
  let input_text =
    let varseq =
      match vars with
      | [] -> "x"
      | _ -> String.concat "," (List.map string_of_var vars) in
    let poly = magma_of_eexp p in
    let comment = if !debug then Option.value (Option.map (make_line_comments "#") comments) ~default:"" else "" in
    comment
    ^ "interface(prettyprint=0):\n"
    ^ "with(PolynomialIdeals):\n"
    ^ "with(Groebner):\n"
    ^ "Ord := plex(" ^ varseq ^ "):\n"
    ^ "g := " ^ poly ^ ":\n"
    ^ "J := PolynomialIdeal([], characteristic=" ^ magma_of_eexp const_gen ^ "):\n"
    ^ "res := IdealMembership(g, J):\n"
    ^ "res;\n"
    ^ "quit:\n" in
  let ch = open_out ifile in
  let _ = output_string ch input_text; close_out ch in
  Options.Std.trace "INPUT TO MAPLE:";
  Options.Std.trace_file ifile;
  Options.Std.trace ""

let run_singular ifile ofile =
  let t1 = Unix.gettimeofday() in
  unix (!singular_path ^ " -q " ^ !Options.Std.algebra_solver_args ^ " \"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2>&1");
  let t2 = Unix.gettimeofday() in
  Options.Std.trace ("Execution time of Singular: " ^ Options.Std.string_of_running_time t1 t2);
  Options.Std.trace "OUTPUT FROM SINGULAR:";
  Options.Std.trace_file ofile;
  Options.Std.trace ""

let run_sage ifile ofile =
  let t1 = Unix.gettimeofday() in
  unix (!sage_path ^ " " ^ !Options.Std.algebra_solver_args ^ " \"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2>&1");
  let t2 = Unix.gettimeofday() in
  Options.Std.trace ("Execution time of Sage: " ^ Options.Std.string_of_running_time t1 t2);
  Options.Std.trace "OUTPUT FROM SAGE:";
  Options.Std.trace_file ofile;
  Options.Std.trace ""

let run_magma ifile ofile =
  let t1 = Unix.gettimeofday() in
  unix (!magma_path ^ " -b " ^ !Options.Std.algebra_solver_args ^ " \"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2>&1");
  let t2 = Unix.gettimeofday() in
  Options.Std.trace ("Execution time of Magma: " ^ Options.Std.string_of_running_time t1 t2);
  Options.Std.trace "OUTPUT FROM MAGMA:";
  Options.Std.trace_file ofile;
  Options.Std.trace ""

let run_mathematica ifile ofile =
  let t1 = Unix.gettimeofday() in
  unix (!mathematica_path ^ " " ^ !Options.Std.algebra_solver_args ^ " -file \"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2>&1");
  let t2 = Unix.gettimeofday() in
  Options.Std.trace ("Execution time of Mathematica: " ^ Options.Std.string_of_running_time t1 t2);
  Options.Std.trace "OUTPUT FROM MATHEMATICA:";
  Options.Std.trace_file ofile;
  Options.Std.trace ""

let run_macaulay2 ifile ofile =
  let t1 = Unix.gettimeofday() in
  unix (!macaulay2_path ^ " --script \"" ^ ifile ^ "\" --silent " ^ !Options.Std.algebra_solver_args ^ " 1> \"" ^ ofile ^ "\" 2>&1");
  let t2 = Unix.gettimeofday() in
  Options.Std.trace ("Execution time of Macaulay2: " ^ Options.Std.string_of_running_time t1 t2);
  Options.Std.trace "OUTPUT FROM MACAULAY2:";
  Options.Std.trace_file ofile;
  Options.Std.trace ""

let run_maple ifile ofile =
  let t1 = Unix.gettimeofday() in
  unix (!maple_path ^ " -q " ^ !Options.Std.algebra_solver_args ^ " \"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2>&1");
  let t2 = Unix.gettimeofday() in
  Options.Std.trace ("Execution time of Maple: " ^ Options.Std.string_of_running_time t1 t2);
  Options.Std.trace "OUTPUT FROM MAPLE:";
  Options.Std.trace_file ofile;
  Options.Std.trace ""

let read_singular_output ofile =
  let line = ref "" in
  let ch = open_in ofile in
  let _ =
    try
        line := input_line ch
    with _ ->
      failwith "Failed to read the output file" in
  let _ =
    if String.sub (!line) 0 (min 2 (String.length !line)) = "//" then
      try
        line := input_line ch
      with _ ->
        failwith "Failed to read the output file"
    else
      () in
  let _ = close_in ch in
  String.trim !line

let read_sage_output ofile =
  let line = ref "true" in
  let has_output = ref false in
  let ch = open_in ofile in
  let _ =
    try
      while true do
        let str = input_line ch in
        let _ = has_output := true in
	    if str = "AssertionError" then line := "false"
      done
    with
      End_of_file -> ()
    | _ ->
       failwith "Failed to read the output file" in
  let _ = close_in ch in
  if !has_output && !line = "true" then failwith "Unknown error in Sage"
  else !line

let read_one_line ofile =
  let line = ref "" in
  let ch = open_in ofile in
  let _ =
    try
      line := input_line ch
    with _ ->
      failwith "Failed to read the output file" in
  let _ = close_in ch in
  String.trim !line

let read_magma_output = read_one_line

let read_mathematica_output = read_one_line

let read_macaulay2_output = read_one_line

let read_maple_output = read_one_line



(** Low-Level Interaction of MIP Solvers *)

let write_ppl_input ?comments ifile mipvars constr =
  let partition_variables mipvars =
    List.fold_left (fun (i, c) mv ->
        if is_mip_cvar mv then (i, mv::c) else (mv::i, c))
      ([], []) mipvars in
  let ppl_variables mipvars =
    String.concat "\n"
      (List.mapi (fun i mv ->
           (string_of_var (var_of_mip mv)) ^
             " = Variable(" ^ (string_of_int i) ^ ")") mipvars) in
  let ppl_constraint mip constr =
    String.concat "\n"
      (List.map (fun c -> mip ^ ".add_constraint(" ^ ppl_of_ebexp c ^ ")")
         constr) in
  let set_ppl_ivariable delimiter mipvars =
    let (_, rev_ppl_cmds) =
      List.fold_left (fun (i, ret) mv ->
          (succ i,
           if is_mip_cvar mv then ret
           else ("mip.add_to_integer_space_dimensions(Variables_Set("
                 ^ string_of_int i ^ "))")::ret))
        (0, []) mipvars in
    String.concat delimiter rev_ppl_cmds in
  let input_text =
    let comment = if !debug then Option.value (Option.map (make_line_comments "#") comments) ~default:"" else "" in
    let (rev_ivars, rev_cvars) = partition_variables mipvars in
    let (nivars, icvars) = (List.length rev_ivars, List.length rev_cvars) in
    let ordered_mipvars = List.rev_append rev_ivars (List.rev rev_cvars) in
    let nvars = nivars + icvars in
    comment
    ^ "from ppl import Variable, Variables_Set, C_Polyhedron, MIP_Problem\n"
    ^ (ppl_variables ordered_mipvars) ^ "\n"
    ^ "ph = C_Polyhedron(" ^ string_of_int nvars ^ ")\n"
    ^ ppl_constraint "ph" constr ^ "\n"
    ^ (if !Options.Std.minimize_constraint
       then "ph.remove_higher_space_dimensions(" ^ string_of_int nivars ^ ")\n"
       else "")
    ^ "mip = MIP_Problem("
    ^ string_of_int (if !Options.Std.minimize_constraint
                     then nivars else nvars)
    ^ ")\n"
    ^ "mip.add_constraints("
    ^ (if !Options.Std.minimize_constraint
       then "ph.minimized_constraints ())\n" else "ph.constraints())\n")
    (* ^ set_ppl_ivariable "\n" oredered_mipvars ^ "\n" *)
    ^ set_ppl_ivariable "\nif not mip.is_satisfiable():\n    print('False')\n    exit()\n" ordered_mipvars ^ "\n"
    ^ "print(mip.is_satisfiable())\n"
    ^ "exit()\n" in
  let ch = open_out ifile in
  let _ = output_string ch input_text; close_out ch in
  Options.Std.trace "INPUT TO PPLPY:";
  Options.Std.trace_file ifile;
  Options.Std.trace ""

let write_scip_input ?comments ifile mipvars constr =
  let scip_variables mip mipvars =
    String.concat "\n"
      (List.map (fun mv ->
           (string_of_var (var_of_mip mv)) ^
             " = " ^ mip ^ ".addVar(vtype=" ^
               (if is_mip_cvar mv then "'C'" else "'I'") ^
                 ")") mipvars) in
  let scip_constraint mip constr =
    String.concat "\n"
      (List.map (fun c -> mip ^ ".addCons(" ^ ppl_of_ebexp c ^ ")")
         constr) in
  let input_text =
    let comment = if !debug then Option.value (Option.map (make_line_comments "#") comments) ~default:"" else "" in
    comment
    ^ "from pyscipopt import Model\n"
    ^ "mip = Model('SCIP Solver')\n"
    ^ (scip_variables "mip" mipvars) ^ "\n"
    ^ scip_constraint "mip" constr ^ "\n"
    ^ "mip.optimize()\n"
    ^ "print(mip.getStatus())\n"
    ^ "exit()\n" in
  let ch = open_out ifile in
  let _ = output_string ch input_text; close_out ch in
  Options.Std.trace "INPUT TO PYSCIPOPT:";
  Options.Std.trace_file ifile;
  Options.Std.trace ""

let write_isl_input ?comments ifile mipvars constr =
  let isl_variables mipvars =
    String.concat ", "
      (tmap (fun mv -> "'" ^ string_of_var (var_of_mip mv) ^ "'") mipvars) in
  let isl_set_header mipvars =
    "{[" ^ String.concat ", "
             (tmap (fun mv -> string_of_var (var_of_mip mv)) mipvars) ^ "]:" in
  let isl_constraint constr =
    String.concat " and '\\\n"
      (tmap (fun eb -> "'" ^ isl_of_ebexp eb) constr) in
  let input_text =
    let comment = if !debug then Option.value (Option.map (make_line_comments "#") comments) ~default:"" else "" in
    comment
    ^ "from islpy import Space, BasicSet, DEFAULT_CONTEXT\n"
    ^ "variables = [" ^ isl_variables mipvars ^ "]\n"
    ^ "space = Space.create_from_names(DEFAULT_CONTEXT, set = variables)\n"
    ^ "bset = "
    ^ "'" ^ isl_set_header mipvars ^ "'\\\n"
    ^ isl_constraint constr ^ "}'\n"
    ^ "print(BasicSet(bset).is_empty())\n"
    ^ "exit()\n" in
  let ch = open_out ifile in
  let _ = output_string ch input_text; close_out ch in
  Options.Std.trace "INPUT TO ISLPY:";
  Options.Std.trace_file ifile;
  Options.Std.trace ""

let run_ppl ifile ofile =
  let t1 = Unix.gettimeofday() in
  let _ = unix (!python_path ^ " -q \"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2>&1") in
  let t2 = Unix.gettimeofday() in
  Options.Std.trace ("Execution time of PPLPY: " ^ Options.Std.string_of_running_time t1 t2);
  Options.Std.trace "OUTPUT FROM PPLPY:";
  Options.Std.trace_file ofile;
  Options.Std.trace ""

let run_scip ifile ofile =
  let t1 = Unix.gettimeofday() in
  let _ = unix (!python_path ^ " -q \"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2>&1") in
  let t2 = Unix.gettimeofday() in
  Options.Std.trace ("Execution time of PYSCIPOPT: " ^ Options.Std.string_of_running_time t1 t2);
  Options.Std.trace "OUTPUT FROM PYSCIPOPT:";
  Options.Std.trace_file ofile;
  Options.Std.trace ""

let run_isl ifile ofile =
  let t1 = Unix.gettimeofday() in
  let _ = unix (!python_path ^ " -q \"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2>&1") in
  let t2 = Unix.gettimeofday() in
  Options.Std.trace ("Execution time of ISLPY: " ^ Options.Std.string_of_running_time t1 t2);
  Options.Std.trace "OUTPUT FROM ISLPY:";
  Options.Std.trace_file ofile;
  Options.Std.trace ""

let read_ppl_output = read_one_line

let read_scip_output ofile =
  let ch = open_in ofile in
  let last_line =
    let rec help line =
      try help (input_line ch) with End_of_file -> line in
    try help (input_line ch) with _ ->
       failwith "Failed to read the output file" in
  let _ = close_in ch in
  last_line

let read_isl_output = read_one_line



(** Interfaces of Solvers *)

let is_in_ideal ?comments ?(expand=(!expand_poly)) ?(solver=(!algebra_solver)) vars ideal p =
  let ideal = if expand then tmap expand_eexp ideal else ideal in
  let p = if expand then expand_eexp p else p in
  let ifile = tmpfile "inputfgb_" "" in
  let ofile = tmpfile "outputfgb_" "" in
  let comments = rcons_comments_option comments ("Output file: " ^ ofile) in
  let res =
    match solver with
    | Singular ->
       let _ = write_singular_input ~comments ifile vars ideal p in
       let _ = run_singular ifile ofile in
       let res = read_singular_output ofile in
       res = "0"
    | Sage ->
       (* The input file to Sage must have file extension ".sage". *)
       let ifile = ifile ^ ".sage" in
       let _ = write_sage_input ~comments ifile vars ideal p in
       let _ = run_sage ifile ofile in
       let res = read_sage_output ofile in
       res = "true"
    | Magma ->
       let _ = write_magma_input ~comments ifile vars ideal p in
       let _ = run_magma ifile ofile in
       let res = read_magma_output ofile in
       res = "true"
    | Mathematica ->
       let _ = write_mathematica_input ~comments ifile vars ideal p in
       let _ = run_mathematica ifile ofile in
       let res = read_mathematica_output ofile in
       res = "0"
    | Macaulay2 ->
       let _ = write_macaulay2_input ~comments ifile vars ideal p in
       let _ = run_macaulay2 ifile ofile in
       let res = read_macaulay2_output ofile in
       res = "0"
    | Maple ->
       let _ = write_maple_input ~comments ifile vars ideal p in
       let _ = run_maple ifile ofile in
       let res = read_maple_output ofile in
       res = "true"
    | SMTSolver _ -> failwith ("Ideal membership queries are not supported by SMT solver.")
    | PPL | SCIP | ISL -> failwith ("Ideal membership queries are not supported by MIP solver.")
  in
  let _ = cleanup [ifile; ofile] in
  res

let is_constr_feasible ?comments ?(solver=(!Options.Std.algebra_solver))
      vgen mipvars constr =
  let gen_files_py () =
    let ifile = tmpfile "inputfmip_" ".py" in
    let ofile = tmpfile "outputfmip_" ".log" in
    let comments = rcons_comments_option comments ("Output file: " ^ ofile) in
    (ifile, ofile, comments) in
  let gen_files_smt () =
    let ifile = tmpfile "inputfgb_" ".smt2" in
    let ofile = tmpfile "outputfgb_" ".log" in
    let comments = rcons_comments_option comments ("Output file: " ^ ofile) in
    (ifile, ofile, comments) in
  match solver with
  | PPL ->
     let (ifile, ofile, comments) = gen_files_py() in
     let _ = write_ppl_input ~comments ifile mipvars constr in
     let _ = run_ppl ifile ofile in
     let res = read_ppl_output ofile in
     let _ = cleanup [ifile; ofile] in
     res = "False"
  | SCIP ->
     let (ifile, ofile, comments) = gen_files_py() in
     let _ = write_scip_input ~comments ifile mipvars constr in
     let _ = run_scip ifile ofile in
     let res = read_scip_output ofile in
     let _ = cleanup [ifile; ofile] in
     res = "infeasible"
  | ISL ->
     let (ifile, ofile, comments) = gen_files_py() in
     let _ = write_isl_input ~comments ifile mipvars constr in
     let _ = run_isl ifile ofile in
     let res = read_isl_output ofile in
     let _ = cleanup [ifile; ofile] in
     res = "True"
  | SMTSolver o when o.algsmt_logic = LIA ->
     let (ifile, ofile, comments) = gen_files_smt() in
     let verify_one_smtlib smtlib =
       let _ =
         let ch = open_out ifile in
         let _ = if !debug then output_string ch (make_line_comments ";" comments) in
         let _ = output_string ch smtlib; close_out ch in
         Options.Std.trace "INPUT TO SMT Solver:";
         Options.Std.trace_file ifile;
         Options.Std.trace "" in
       let _ =
         let t1 = Unix.gettimeofday() in
         let _ = unix (o.algsmt_path ^ "  \"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2>&1") in
         let t2 = Unix.gettimeofday() in
         Options.Std.trace ("Execution time of SMT Solver " ^ o.algsmt_path ^ ": " ^ Options.Std.string_of_running_time t1 t2);
         Options.Std.trace "OUTPUT FROM SMT SOLVER:";
         Options.Std.trace_file ofile;
         Options.Std.trace "" in
       let res = read_one_line ofile = "unsat" in
       let _ = cleanup [ifile; ofile] in
       res in
     let verify_one_mipvars_constr vgen (_mipvars, constrs) =
       let (_, smtlib) = smtlib_ebexps_lia ~expn:false vgen constrs in
       verify_one_smtlib smtlib in
     verify_one_mipvars_constr vgen (mipvars, constr)
  | _ -> failwith "Algebraic range condition needs MIP solver."



(** Verification of Safety Conditions *)

(*
 * Verify the safety of the n-th instruction in a program in SSA.
 * Raise TimeoutException if the SMT solver timed out.
 * Currently, this function is only used in the CLI mode.
 *)
let verify_instruction_safety ?comments timeout sid f p n hashopt =
  let i =
    try List.nth p n
    with Failure _ -> failwith ("The program does not contain the instruction: #" ^ string_of_int n) in
  let do_verify f p q =
    match q with
    | True -> Solved Unsat
    | _ ->
       let fp = safety_assumptions f p q hashopt in
       Solved (solve_simp
                 ~comments:(append_comments_option comments [ "Safety condition: #" ^ string_of_int sid;
                                                              "Instruction: " ^ string_of_instr i ])
                 ~timeout:timeout (fp@[q]))
  in
  let q = Common.bexp_instr_safe i in
  do_verify f p q

(*
 * Verify safety conditions [qs].
 * f: precondition
 * p: program
 * qs: safety conditions represented as a list of tuples (id, i, q) where
 *     id is the safety condition ID, i is the instruction, q is the safety
 *     condition of i (without any premises)
 *)
let verify_safety_conditions ?comments timeout f p qs hashopt =
  let add_unsolved q res =
    match res with
    | Solved Unsat -> Unfinished [q]
    | Unfinished unsolved -> Unfinished (q::unsolved)
    | _ -> assert false in
  let rec find_program_prefix i revp p =
    match p with
    | [] -> failwith "find_program_prefix fails"
    | hd::tl -> if i = hd then (hd::revp, tl)
                else find_program_prefix i (hd::revp) tl in
  let fold_fun (res, revp, p) (id, i, q) =
    match res with
      Solved Sat
    | Solved Unknown -> (res, revp, p)
    | _ ->
       let t1 = Unix.gettimeofday() in
       let res =
         try
           let _ = Options.Std.vprint ("\t\tSafety condition #" ^ string_of_int id ^ "\t\t") in
           let (revp', p') = find_program_prefix i revp p in
           let fp = safety_assumptions f (List.rev revp') q hashopt in
           match solve_simp ~comments:(append_comments_option comments [ "Safety condition: #" ^ string_of_int id;
                                                                         "Instruction: " ^ string_of_instr i ]) ~timeout:timeout (fp@[q]) with
           | Sat -> let _ = Options.Std.vprintln "[FAILED]" in (Solved Sat, revp', p')
           | Unknown -> let _ = Options.Std.vprintln "[FAILED]" in (Solved Unknown, revp', p')
           | Unsat -> let _ = Options.Std.vprintln "[OK]" in (res, revp', p')
         with Tasks.TimeoutException ->
           let _ = Options.Std.vprintln "[TIMEOUT]" in
           (add_unsolved (id, i, q) res, revp, p) in
       let t2 = Unix.gettimeofday() in
       let _ = Options.Std.trace("Execution of safety task: " ^ Options.Std.string_of_running_time t1 t2 ^ "\n") in
       res in
  let rec fold_fun_abs_interp (res, revp, p, mgr, dom) (id, i, q) =
    match res with
      Solved Sat
    | Solved Unknown -> (res, revp, p, mgr, dom)
    | _ -> match p with
           | h::t -> if i <> h then
                       let dom' = Absdom.Std.interp_instr ~safe:true ~var_bound:true
                                    mgr dom h in
                       fold_fun_abs_interp (res, h::revp, t, mgr, dom')
                         (id, i, q)
                     else if Absdom.Std.instr_safe mgr dom i then
                       let dom' = Absdom.Std.interp_instr ~safe:true ~var_bound:true
                                    mgr dom i in
                       (res, h::revp, t, mgr, dom')
                     else let dom' = Absdom.Std.interp_instr ~safe:false ~var_bound:true mgr dom i in
                          let (res', revp', p') =
                            fold_fun (res, revp, p) (id, i, q) in
                          let _ = assert (t == p') in
                          (res', revp', p', mgr, dom')
           | [] -> failwith "fold_fun_abs_interp fails" in
  let res =
    if !Options.Std.abs_interp then
      let vars = VS.union (vars_rbexp f) (vars_program p) in
      let mgr = Absdom.Std.create_manager vars in
      let vars_dom = Absdom.Std.abs_of_vars mgr
                       (VS.diff vars (lvs_program p)) in
      match Absdom.Std.abs_of_rbexp mgr ~abs:vars_dom f with
      | Some dom ->
         let start_dom = Absdom.Std.meet mgr dom vars_dom in
         let (res, _, _, _, _) = List.fold_left fold_fun_abs_interp
                                   (Solved Unsat, [], p, mgr, start_dom) qs in
         res
      | None -> let (res, _, _) =
                  List.fold_left fold_fun (Solved Unsat, [], p) qs in
                res
    else
      let (res, _, _) = List.fold_left fold_fun (Solved Unsat, [], p) qs in
      res in
  res

(*
 * Verify safety conditions of a cut incrementally.
 * Use multi-cores if Options.Std.jobs is greater than 1.
 * sid: the ID of the next safety condition
 * s: a cut (of type rspec) to be verified
 *)
let verify_safety_of_cut_inc options ?comments sid s hashopt =
  let add_offset_to_safety_ids offset (id, instr, cond) = (id + offset, instr, cond) in
  let in_verify_safety_ids (id, _, _) = Options.Std.mem_hashset_opt options.st_verify_safety_ids id in
  let round = ref 1 in
  let timeout = ref !Options.Std.incremental_safety_timeout in
  let safety = ref None in
  let all_conds = bexp_program_safe_conds s.rsprog in
  let next_sid = sid + List.length all_conds in
  let qs = ref (all_conds |> tmap (add_offset_to_safety_ids sid) |> List.filter in_verify_safety_ids) in
  let _ =
    while !safety = None do
      let _ = Options.Std.trace ("== Number of safety conditions to be verified: " ^ string_of_int (List.length !qs) ^ " ==") in
      let _ = Options.Std.vprintln ("\t     Round " ^ string_of_int !round ^ " ("
                        ^ string_of_int (List.length !qs) ^ " safety conditions, timeout = "
                        ^ string_of_int !timeout ^ " seconds)") in
      let comments = append_comments_option comments [ "Round: " ^ string_of_int !round;
                                                       "Timeout: " ^ string_of_int !timeout ] in
      let res =
        if !Options.Std.jobs > 1 then
          WithLwt.verify_safety_conditions ~comments !timeout s.rspre s.rsprog !qs hashopt
        else
          verify_safety_conditions ~comments !timeout s.rspre s.rsprog !qs hashopt in
      let _ =
        match res with
          Solved r -> safety := if r = Unsat then Some true else Some false
        | Unfinished rest ->
           qs := List.sort
                   (fun (id0, _, _) (id1, _, _) -> compare id0 id1)
                   rest in
      let _ = round := !round + 1 in
      let _ = timeout := !timeout * 2 in
      ()
    done in
  let res =
    match !safety with
    | Some r -> r
    | None -> assert false in
  (res, next_sid)

(*
 * Verify safety conditions of a whole cut as a single predicate.
 * sid: the ID of the next safety condition
 * s: a cut (of type rspec) to be verified
 *)
let verify_safety_of_cut options ?comments sid s hashopt =
  if Options.Std.mem_hashset_opt options.st_verify_safety_ids sid
  then let t1 = Unix.gettimeofday() in
       let g = bexp_program_safe s.rsprog in
       let fp = safety_assumptions s.rspre s.rsprog g hashopt in
       let res = solve_simp ~comments:(rcons_comments_option comments "Verify: safety (all in one query)") (fp@[g]) = Unsat in
       let t2 = Unix.gettimeofday() in
       let _ = Options.Std.trace("Execution of safety task: " ^ Options.Std.string_of_running_time t1 t2) in
       (res, sid + 1)
  else (true, sid + 1)

(* Verify safety conditions cut by cut.
   Verify the safety conditions of the next cut when all the safety conditions
   of the previous cut have been verified. *)
let verify_safety_cut_by_cut options s hashopt =
  let _ = Options.Std.trace "===== Verifying program safety =====" in
  let _ = if !Options.Std.incremental_safety then Options.Std.vprintln "" in
  let verify_safety_without_cuts cid (_, sid) s =
    let msgs = [ "Verify: safety";
                 Printf.sprintf "Track: %s" options.st_tag;
                 "Cut: #" ^ string_of_int cid ] in
    if !Options.Std.incremental_safety then
      let _ = Options.Std.vprintln ("\tCut " ^ string_of_int cid) in
      if !Options.Std.jobs > 1 && !Options.Std.use_cli then WithLwt.verify_safety_conditions_cli options ~comments:msgs sid s.rspre s.rsprog
      else verify_safety_of_cut_inc options ~comments:msgs sid s hashopt
    else verify_safety_of_cut options ~comments:msgs sid s hashopt in
  (* Check previous result, cid: cut id, sid: id of the next safety condition *)
  let verify_safety_without_cuts cid (res, sid) (_, s) =
    if res then verify_safety_without_cuts cid (res, sid) s
    else (res, sid) in
  let (res, _) = apply_to_cuts options.st_verify_scuts verify_safety_without_cuts (true, 0) (cut_safety (rspec_of_spec s)) in
  let _ = if !Options.Std.incremental_safety then Options.Std.vprint "\tOverall\t\t\t\t\t" in
  res

(* Verify safety of a specification across cuts.
   Verify the safety conditions of the next cut whenever there are free
   job workers.
 *)
let verify_safety_across_cuts options s hashopt =
  let _ = Options.Std.trace "===== Verifying program safety =====" in
  let _ = if !Options.Std.incremental_safety then Options.Std.vprintln "" in
  let comments = [ "Verify: safety" ] in
  let res =
    if !Options.Std.jobs > 1 then
      if !Options.Std.use_cli then WithLwt.verify_safety_cli options ~comments s hashopt
      else WithLwt.verify_safety_lwt options ~comments s hashopt
    else verify_safety_cut_by_cut options s hashopt in
  let _ = if !Options.Std.incremental_safety then Options.Std.vprint "\tOverall safety\t\t\t\t" in
  res


(* Verify safety conditions using MIP solvers. *)
let verify_safety_mip_conditions ?comments _timeout indexed_infos vgen _hashopt =
  let add_unsolved q res =
    match res with
    | Solved Unsat -> Unfinished [q]
    | Unfinished unsolved -> Unfinished (q::unsolved)
    | _ -> assert false in
  let mip_verifier ?comments (mipvars, constr) =
    is_constr_feasible ~comments:(append_comments_option comments []) ~solver:!Options.Std.mip_safety_solver vgen mipvars constr in
  let fold_fun res (id, info) =
    match res with
      Solved Sat
    | Solved Unknown -> res
    | _ ->
       let t1 = Unix.gettimeofday() in
       let res =
         try
           let _ = Options.Std.vprint ("\t\tSafety condition #" ^ string_of_int id ^ "\t\t") in
           if mip_verifier ~comments:(append_comments_option comments [ Printf.sprintf "Safety condition: #%d" id;
                                                                        Printf.sprintf "Instruction: %s" (string_of_instr info.Mip.mip_sndcond_instr);
                                                                        Printf.sprintf "Condition: %s" (string_of_ebexp info.mip_sndcond_cond);
                                                                        Printf.sprintf "Constraint: #%d" info.mip_sndcond_index ]) (*~timeout:timeout*) info.mip_sndcond_constrs
           then let _ = Options.Std.vprintln "[OK]" in res
           else let _ = Options.Std.vprintln "[FAILED]" in Solved Sat
         with Tasks.TimeoutException ->
           let _ = Options.Std.vprintln "[TIMEOUT]" in
           (add_unsolved (id, info) res) in
       let t2 = Unix.gettimeofday() in
       let _ = Options.Std.trace("Execution of safety task: " ^ Options.Std.string_of_running_time t1 t2 ^ "\n") in
       res in
  List.fold_left fold_fun (Solved Unsat) indexed_infos

(*
 * Verify safety conditions of a cut incrementally.
 * sid: the ID of the next safety condition
 * s: a cut (of type rspec) to be verified
 *)
let verify_safety_mip_of_cut_inc options ?comments vgen sid s hashopt =
  let assoc_safety_ids base i info = (base + i, info) in
  let in_verify_safety_ids (id, _) = Options.Std.mem_hashset_opt options.st_verify_safety_ids id in
  let round = ref 1 in
  let timeout = ref !Options.Std.incremental_safety_timeout in
  let safe = ref None in
  let (_, infos) = Mip.safety_conditions_of_program vgen s.espre s.esprog in
  let next_sid = sid + List.length infos in
  let indexed_infos = ref (List.mapi (assoc_safety_ids sid) infos |> List.filter in_verify_safety_ids) in
  let _ =
    while !safe = None do
      let _ = Options.Std.trace ("== Number of safety conditions to be verified: " ^ string_of_int (List.length !indexed_infos) ^ " ==") in
      let _ = Options.Std.vprintln ("\t     Round " ^ string_of_int !round ^ " ("
                        ^ string_of_int (List.length !indexed_infos) ^ " safety conditions, timeout = "
                        ^ string_of_int !timeout ^ " seconds)") in
      let comments = append_comments_option comments [ "Round: " ^ string_of_int !round;
                                                       "Timeout: " ^ string_of_int !timeout ] in
      let res =
        if !Options.Std.jobs > 1 then
          WithLwt.verify_safety_mip_conditions ~comments !timeout !indexed_infos vgen hashopt
        else
          verify_safety_mip_conditions ~comments !timeout !indexed_infos vgen hashopt in
      let _ =
        match res with
          Solved r -> safe := if r = Unsat then Some true else Some false
        | Unfinished rest ->
           indexed_infos := List.sort
                              (fun (id0, _) (id1, _) -> compare id0 id1)
                              rest in
      let _ = round := !round + 1 in
      let _ = timeout := !timeout * 2 in
      ()
    done in
  let res =
    match !safe with
    | Some r -> r
    | None -> assert false in
  (res, next_sid)

(* Verify safety conditions cut by cut.
   Verify the safety conditions of the next cut when all the safety conditions
   of the previous cut have been verified. *)
let verify_safety_mip_cut_by_cut options vgen s hashopt =
  let _ = Options.Std.trace "===== Verifying program safety =====" in
  let _ = if !Options.Std.incremental_safety then Options.Std.vprintln "" in
  let verify_safety_without_cuts cid (_, sid) s =
    let msgs = [ "Verify: safety";
                 Printf.sprintf "Track: %s" options.st_tag;
                 "Cut: #" ^ string_of_int cid ] in
    let _ = Options.Std.vprintln ("\tCut " ^ string_of_int cid) in
    if !Options.Std.jobs > 1 && !Options.Std.use_cli then WithLwt.verify_safety_mip_conditions_cli options ~comments:msgs vgen sid s
    else verify_safety_mip_of_cut_inc options ~comments:msgs vgen sid s hashopt in
  (* Check previous result, cid: cut id, sid: id of the next safety condition *)
  let verify_safety_without_cuts cid (res, sid) (_, s) =
    if res then verify_safety_without_cuts cid (res, sid) s
    else (res, sid) in
  let (res, _) = apply_to_cuts options.st_verify_scuts verify_safety_without_cuts (true, 0) (cut_esafety (espec_of_spec s)) in
  let _ = Options.Std.vprint "\tOverall\t\t\t\t\t" in
  res

(* Verify safety of a specification across cuts.
   Verify the safety conditions of the next cut whenever there are free
   job workers.
 *)
let verify_safety_mip_across_cuts options vgen s hashopt =
  let _ = Options.Std.trace "===== Verifying program safety =====" in
  let _ = Options.Std.vprintln "" in
  let comments = [ "Verify: safety" ] in
  let res =
    if !Options.Std.jobs > 1 then
      if !Options.Std.use_cli then WithLwt.verify_safety_mip_cross_cuts_cli options ~comments vgen s
      else WithLwt.verify_safety_mip_cross_cuts_lwt options ~comments vgen s hashopt
    else verify_safety_mip_cut_by_cut options vgen s hashopt in
  let _ = Options.Std.vprint "\tOverall safety\t\t\t\t" in
  res

let verify_safety_mip options s hashopt =
  let vgen = vgen_of_spec s in
  if !Options.Std.cross_cuts then verify_safety_mip_across_cuts options vgen s hashopt
  else verify_safety_mip_cut_by_cut options vgen s hashopt

(*
 * The top function of verifying safety conditions.
 *
 * if verify_safety_mip then:
 *
 * cross_cuts? -- verify_safety_mip_across_cuts -- jobs > 1? -- use_cli? -- WithLwt.verify_safety_mip_cross_cuts_cli
 *             |                                         |               |- WithLwt.verify_safety_mip_cross_cuts_lwt
 *             |                                         |- verify_safety_mip_cut_by_cut
 *             |- verify_safety_mip_cut_by_cut -- jobs > 1? && use_cli? -- WithLwt.verify_safety_mip_conditions_cli
 *                                                                      |- verify_safety_mip_of_cut_inc (sequential or parallel with Lwt)
 *
 * else:
 *
 * cross_cuts? -- verify_safety_across_cuts -- jobs > 1? -- use_cli? -- WithLwt.verify_safety_cli -- incremental_safety? -- WithLwt.verify_safety_inc_cli
 *             |           (dispatch)                    |           |                                                   |
 *             |                                         |           |                                                   |- WithLiwt.verify_safety_all_cli
 *             |                                         |           |- WithLwt.verify_safety_lwt -- incremental_safety? -- WithLwt.verify_safety_inc_lwt
 *             |                                         |                                                               |- WithLwt.verify_safety_all_lwt
 *             |                                         |- verify_safety_cut_by_cut (same as cross_cuts = false)
 *             |
 *             |- verify_safety_cut_by_cut -- incremental_safety? -- jobs > 1? && use_cli? -- WithLwt.verify_safety_conditions_cli
 *                     (cut specs)                                |                        |
 *                                                                |                        |- verify_safety_of_cut_inc (sequential or parallel with Lwt)
 *                                                                |                               (Verify safety of each instruction in a cut)
 *                                                                |- verify_safety_of_cut
 *                                                              (verify safety of a whole cut)
 *)
let verify_safety options s hashopt =
  if !Options.Std.safety_by_mip then verify_safety_mip options s hashopt
  else
    if !cross_cuts then verify_safety_across_cuts options s hashopt
    else verify_safety_cut_by_cut options s hashopt



(** Verification of Assertions and Specifications *)

let verify_rspec_single_conjunct_abs_interp s hashopt =
  let s' = if !apply_slicing then slice_rspec_ssa s hashopt else s in
  let vs = vars_rspec s' in
  let mgr = Absdom.Std.create_manager vs in
  let _ = Options.Std.trace "Running abstract interpreter" in
  match Absdom.Std.abs_of_rbexp mgr s'.rspre with
  | Some dom ->
     let _ = Options.Std.trace ("Start abstract domain:") in
     let _ = Options.Std.trace (Absdom.Std.string_of_abs dom) in
     let dom' = Absdom.Std.interp_prog mgr dom s'.rsprog in
     let _ = Options.Std.trace ("Final abstract domain:") in
     let _ = Options.Std.trace (Absdom.Std.string_of_abs dom') in
     let (rs, _) = merge_rbexp_prove_with s'.rspost in
     if Absdom.Std.sat_rbexp mgr dom' rs then
       let _ = Options.Std.trace "Proved range condition:" in
       let _ = Options.Std.trace (string_of_rbexp rs) in
       true
     else
       false
  | _ -> false

(* Applied in this function: slicing, solving *)
let verify_rspec_single_conjunct ?comments s hashopt =
  let heuristics s =
    !Options.Std.abs_interp
    && List.for_all (fun (e, _) -> Absdom.Common.rbexp_apply_abs_interp e) s.rspost
    && verify_rspec_single_conjunct_abs_interp s hashopt in
  let verify s =
    let f = bexp_rbexp s.rspre in
    let p = bexp_program s.rsprog in
    let g = bexp_rbexp (rbexp_prove_with_rands s.rspost) in
    let solver = range_solver_of_prove_with (rbexp_prove_with_specs s.rspost) in
    solve_simp
      ~comments:(rcons_comments_option comments ("Range condition: " ^ string_of_bexp g))
      ~solver:solver (f::p@[g]) = Unsat in
  is_rspec_trivial s || heuristics s ||
  verify (if !apply_slicing then slice_rspec_ssa s hashopt else s)

(* Applied in this function: split conjunctions *)
let verify_rspec_without_cuts ?comments hashopt s =
  let verify res s = if res then verify_rspec_single_conjunct ?comments s hashopt
                     else res in
  List.fold_left verify true (split_rspec_post s)

(* Applied in this function: split cuts *)
let verify_rspec_with_cuts options ?comments hashopt s =
  (* Check previous result *)
  let verify cid res (sid, s) =
    if res then verify_rspec_without_cuts
                  ~comments:(append_comments_option comments [ Printf.sprintf "Track: %s" options.st_tag;
                                                               "Cut: #" ^ string_of_int cid;
                                                               "Range specification #" ^ string_of_int sid ^ ": " ^ string_of_rbexp_prove_with s.rspost ])
                  hashopt s
    else res in
  apply_to_cuts options.st_verify_rcuts verify true (cut_rspec s)

(* The top function of verifying range specifications when !jobs <= 1 *)
let verify_rspec options s hashopt =
  let _ = Options.Std.trace "===== Verifying range specifications =====" in
  verify_rspec_with_cuts options ~comments:["Verify: range specifications"] hashopt s

let verify_entailments ?comments ?(solver=(!algebra_solver)) entailments =
  List.fold_left
    (fun res (post, vars, ideal, p) ->
      if res then (
        if is_in_ideal
             ~comments:(append_comments_option comments [ "Algebraic condition: " ^ string_of_ebexp post;
                                                          "Try: #0 (pure equality)" ])
             ~solver:solver vars [] p then true
        else is_in_ideal
               ~comments:(append_comments_option comments [ "Algebraic condition: " ^ string_of_ebexp post;
                                                            "Try: #1 (modular equality)" ])
               ~solver:solver vars ideal p
      )
      else res) true entailments

(* Verify an algebraic specification using a computer algebra system.
   Applied in this function: converting to ideal membership problems, polynomial rewriting, solving *)
let verify_espec_single_conjunct_ideal ?comments vgen s =
  let (_, entailments) = polys_of_espec vgen s in
  verify_entailments ?comments ~solver:(algebra_solver_of_prove_with (ebexp_prove_with_specs s.espost)) entailments

(* Verify an algebraic specification using a specified SMT solver.
   Applied in this function: solving *)
let verify_espec_single_conjunct_smt solver ?comments vgen s =
  let verify_one_smtlib smtlib =
    let ifile = tmpfile "inputfgb_" ".smt2" in
    let ofile = tmpfile "outputfgb_" "" in
    let comments = append_comments_option comments [ "Algebraic condition: " ^ string_of_ebexp_prove_with s.espost;
                                                     "Output file: " ^ ofile ] |> make_line_comments ";" in
    let _ =
      let ch = open_out ifile in
      let _ = if !debug then output_string ch comments in
      let _ = output_string ch smtlib; close_out ch in
      Options.Std.trace "INPUT TO SMT Solver:";
      Options.Std.trace_file ifile;
      Options.Std.trace "" in
    let _ =
      let t1 = Unix.gettimeofday() in
      let _ = unix (solver.algsmt_path ^ "  \"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2>&1") in
      let t2 = Unix.gettimeofday() in
      Options.Std.trace ("Execution time of SMT Solver " ^ solver.algsmt_path ^ ": " ^ Options.Std.string_of_running_time t1 t2);
      Options.Std.trace "OUTPUT FROM SMT SOLVER:";
      Options.Std.trace_file ofile;
      Options.Std.trace "" in
    let res = read_one_line ofile = "unsat" in
    let _ = cleanup [ifile; ofile] in
    res in
  let verify_one_mipvars_constr vgen (_mipvars, constrs) =
    let (_, smtlib) = smtlib_ebexps_lia vgen constrs in
    verify_one_smtlib smtlib in
  let res =
    match solver.algsmt_logic with
    | NIA -> let (_, smtlib) = smtlib_espec vgen s in
             verify_one_smtlib smtlib
    | LIA -> let (_, mipvars_constrs) = mip_of_espec vgen s in
             List.for_all (verify_one_mipvars_constr vgen) mipvars_constrs
  in
  res

(* Verify an algebraic specification using a mixed integer programming solver.
    *)
let verify_espec_single_conjunct_mip ?comments vgen s =
  let (_, mipvars_constrs) = mip_of_espec vgen s in
  let solver =
    algebra_solver_of_prove_with (ebexp_prove_with_specs s.espost) in
  let helper (mipvars, constr) =
    let epoststr = string_of_ebexp (fst (List.hd s.espost)) in
    is_constr_feasible ~comments:(append_comments_option comments [ "Algebraic condition: " ^ epoststr ]) ~solver:solver vgen mipvars constr in
  List.for_all helper mipvars_constrs

(* Verify an algebraic specification. The solver used can be specified in the
   prove-with clauses of the specification.
   Applied in this function: slicing *)
let verify_espec_single_conjunct ?comments vgen s hashopt =
  let verify =
    match algebra_solver_of_prove_with (ebexp_prove_with_specs s.espost) with
    | SMTSolver solver -> verify_espec_single_conjunct_smt solver ?comments
    | PPL | SCIP | ISL -> verify_espec_single_conjunct_mip ?comments
    | _ -> verify_espec_single_conjunct_ideal ?comments in
  is_espec_trivial s || Deduce.espec_prover s ||
    (verify vgen (if !apply_slicing then slice_espec_ssa s hashopt else s))

(* Applied in this function:
   - With two_phase_rewriting: converting to ideal membership problems, polynomial rewriting, slicing, solving
   - Without two_phase_rewriting: split conjunctions *)
let verify_espec_without_cuts ?comments hashopt vgen s =
  if !Options.Std.two_phase_rewriting then
    let s = remove_trivial_epost s in
    match s.espost with
    | [] -> true
    | (e, pwss)::[] ->
       let (s, sliced) =
         match e with
         | Eand _ -> (s, false)
         | _ -> (slice_espec_ssa s None, true) in
       (* Convert to ideal membership problems, rewriting is done in polys_of_espec_two_phase *)
       let (_, entailments) = polys_of_espec_two_phase ~sliced:sliced vgen s in
       verify_entailments ?comments ~solver:(algebra_solver_of_prove_with pwss) entailments
    | _ -> assert false
  else
    let verify res s =
      if res then verify_espec_single_conjunct ?comments vgen s hashopt
      else res in
    List.fold_left verify true (split_espec_post s)

(* Applied in this function: split cuts *)
let verify_espec_with_cuts options ?comments hashopt vgen s =
  (* Check previous result (verify cut_id previous_result (specification_id, specification)) *)
  let verify cid res (sid, s) =
    if res then verify_espec_without_cuts
                  ~comments:(append_comments_option comments [ Printf.sprintf "Track: %s" options.st_tag;
                                                               "Cut: #" ^ string_of_int cid;
                                                               "Algebraic specification #" ^ string_of_int sid ^ ": " ^ string_of_ebexp_prove_with s.espost ])
                  hashopt vgen s
    else res in
  apply_to_cuts options.st_verify_ecuts verify true (cut_espec s)

(* The top function of verifying algebraic specifications when !jobs <= 1 *)
let verify_espec options vgen s hashopt =
  let _ = Options.Std.trace "===== Verifying algebraic specifications =====" in
  verify_espec_with_cuts options ~comments:[ "Verify: algebraic specifications" ] hashopt vgen s

(* The top function of verifying algebraic assertions when !jobs <= 1.
   Applied in this function: split cuts *)
let verify_eassert options vgen s hashopt =
  let _ = Options.Std.trace "===== Verifying algebraic assertions =====" in
  (* Check previous result (verify cut_id previous_result (specification_id, specification)) *)
  let verify cid res (sid, s) =
    if res && Options.Std.mem_hashset_opt options.st_verify_eassert_ids sid then
      verify_espec_without_cuts
        ~comments:[ "Verify: algebraic assertions";
                    Printf.sprintf "Track: %s" options.st_tag;
                    "Cut: #" ^ string_of_int cid;
                    "Algebraic assertion #" ^ string_of_int sid ^ ": " ^ Ast.Cryptoline.string_of_ebexp_prove_with s.espost ]
        hashopt vgen s
    else
      res in
  apply_to_cuts options.st_verify_eacuts verify true (cut_eassert (espec_of_spec s))

(* The top function of verifying range assertions when !jobs <= 1.
   Applied in this function: split cuts *)
let verify_rassert options s hashopt =
  let _ = Options.Std.trace "===== Verifying range assertions =====" in
  (* Check previous result (verify cut_id previous_result (specification_id, specification)) *)
  let verify cid res (sid, s) =
    if res && Options.Std.mem_hashset_opt options.st_verify_rassert_ids sid then
      verify_rspec_without_cuts
        ~comments:[ "Verify: range assertions";
                    Printf.sprintf "Track: %s" options.st_tag;
                    "Cut: #" ^ string_of_int cid;
                    "Range assertion #" ^ string_of_int sid ^ ": " ^ Ast.Cryptoline.string_of_rbexp_prove_with s.rspost ]
        hashopt s
    else
      res in
  apply_to_cuts options.st_verify_racuts verify true (cut_rassert (rspec_of_spec s))



(** Top-Level Verification Functions *)

(* The main verification process for a specification *)
let verify_spec options s =
  let vgen = vgen_of_spec s in
  let has_assert p = List.exists
                       (fun i ->
                         match i with
                         | Iassert _ -> true
                         | _ -> false) p in
  let spec_to_ssa (s, hashopt) =
    let t1 = Unix.gettimeofday() in
    let _ = Options.Std.vprint ("Transforming to SSA form:\t\t\t") in
    let ssa = ssa_spec s in
    let t2 = Unix.gettimeofday() in
    let _ = Options.Std.vprintln ("[OK]\t\t" ^ Options.Std.string_of_running_time t1 t2) in
    (true, ssa, hashopt) in
  let normalize_spec (s, hashopt) =
    let t1 = Unix.gettimeofday() in
    let _ = Options.Std.vprint ("Normalizing specification:\t\t\t") in
    let ns = normalize_spec s in
    let t2 = Unix.gettimeofday() in
    let _ = Options.Std.vprintln ("[OK]\t\t" ^ Options.Std.string_of_running_time t1 t2) in
    (true, ns, hashopt) in
  let rewrite_assignments (s, hashopt) =
    let t1 = Unix.gettimeofday() in
    let _ = Options.Std.vprint ("Rewriting assignments:\t\t\t\t") in
    let s = rewrite_mov_ssa_spec s in
    let t2 = Unix.gettimeofday() in
    let _ = Options.Std.vprintln ("[OK]\t\t" ^ Options.Std.string_of_running_time t1 t2) in
    (true, s, hashopt) in
  let _build_var_dep_hash (s, _) =
    let t1 = Unix.gettimeofday() in
    let _ = Options.Std.vprint "Computing Variable Dependency:\t\t\t" in
    let hash = Ast.Cryptoline.mk_var_dep_hash s.sprog in
    let t2 = Unix.gettimeofday() in
    let _ = Options.Std.vprintln ("[OK]\t\t" ^ Options.Std.string_of_running_time t1 t2) in
    (true, s, Some hash) in
  let program_safe (s, hashopt) =
    let t1 = Unix.gettimeofday() in
    let _ = Options.Std.vprint "Verifying program safety:\t\t\t" in
    let b = verify_safety options s hashopt in
    let t2 = Unix.gettimeofday() in
    let _ = Options.Std.vprintln ((if b then "[OK]\t" else "[FAILED]") ^ "\t" ^ Options.Std.string_of_running_time t1 t2) in
    (b, s, hashopt) in
  let rewrite_vpc (s, hashopt) =
    let t1 = Unix.gettimeofday() in
    let _ = Options.Std.vprint ("Rewriting value-preserved casting:\t\t") in
    let s = rewrite_vpc_ssa_spec s in
    let t2 = Unix.gettimeofday() in
    let _ = Options.Std.vprintln ("[OK]\t\t" ^ Options.Std.string_of_running_time t1 t2) in
    (true, s, hashopt) in
  let valid_eassert (s, hashopt) =
    let t1 = Unix.gettimeofday() in
    let _ = Options.Std.vprint "Verifying algebraic assertions:\t\t\t" in
    let b = if !Options.Std.jobs > 1 then
              (if !Options.Std.use_cli then WithLwt.verify_eassert_cli options s
               else WithLwt.verify_eassert options vgen s hashopt)
            else
              verify_eassert options vgen s hashopt in
    let t2 = Unix.gettimeofday() in
    let _ = Options.Std.vprintln ((if b then "[OK]\t" else "[FAILED]") ^ "\t" ^ Options.Std.string_of_running_time t1 t2) in
    (b, s, hashopt) in
  let valid_rassert (s, hashopt) =
    let t1 = Unix.gettimeofday() in
    let _ = Options.Std.vprint "Verifying range assertions:\t\t\t" in
    let b = if !Options.Std.jobs > 1 then
              (if !Options.Std.use_cli then WithLwt.verify_rassert_cli options s
               else WithLwt.verify_rassert options s hashopt)
            else
              verify_rassert options s hashopt in
    let t2 = Unix.gettimeofday() in
    let _ = Options.Std.vprintln ((if b then "[OK]\t" else "[FAILED]") ^ "\t" ^ Options.Std.string_of_running_time t1 t2) in
    (b, s, hashopt) in
  let valid_rspec (s, hashopt) =
    let t1 = Unix.gettimeofday() in
    let _ = Options.Std.vprint "Verifying range specification:\t\t\t" in
    let b = if !Options.Std.jobs > 1 then
              (if !Options.Std.use_cli
               then WithLwt.verify_rspec_cli else WithLwt.verify_rspec)
                options (rspec_of_spec s) hashopt
            else
              verify_rspec options (rspec_of_spec s) hashopt in
    let t2 = Unix.gettimeofday() in
    let _ = Options.Std.vprintln ((if b then "[OK]\t" else "[FAILED]") ^ "\t" ^ Options.Std.string_of_running_time t1 t2) in
    (b, s, hashopt) in
  let valid_espec (s, hashopt) =
    let t1 = Unix.gettimeofday() in
    let _ = Options.Std.vprint "Verifying algebraic specification:\t\t" in
    let b = if !Options.Std.jobs > 1 then
              (if !Options.Std.use_cli then WithLwt.verify_espec_cli options (espec_of_spec s)
               else WithLwt.verify_espec options vgen (espec_of_spec s) hashopt)
            else
              verify_espec options vgen (espec_of_spec s) hashopt in
    let t2 = Unix.gettimeofday() in
    let _ = Options.Std.vprintln ((if b then "[OK]\t" else "[FAILED]") ^ "\t" ^ Options.Std.string_of_running_time t1 t2) in
    (b, s, hashopt) in
  let verifiers : (Ast.Cryptoline.spec * VS.t Ast.Cryptoline.atomhash_t option
                   -> bool * Ast.Cryptoline.spec * VS.t Ast.Cryptoline.atomhash_t option) list =
    [spec_to_ssa; normalize_spec]
    @(if !apply_rewrite_mov then [rewrite_assignments] else [])
    (* @(if !apply_slicing then [build_var_dep_hash] else []) *)
    @(if !Options.Std.verify_program_safety && options.st_tag = !Options.Std.safety_track then [program_safe] else [])
    @(if !Options.Std.verify_rassertion && has_assert s.sprog then [valid_rassert] else [])
    @(if !Options.Std.verify_rpost then [valid_rspec] else [])
    (* It is important that rewriting of value-preserved casting must be done after all range properties. *)
    @(if !apply_rewrite_vpc then [rewrite_vpc] else [])
    @(if !Options.Std.verify_eassertion && has_assert s.sprog then [valid_eassert] else [])
    @(if !Options.Std.verify_epost then [valid_espec] else []) in
  let (result, _, _) = List.fold_left
                         (fun (res, s, hashopt) verifier ->
                           if res then verifier (s, hashopt)
                           else (res, s, hashopt))
                         (true, s, None)
                         verifiers in
  result

(* The main verification process for a tagged specification *)
let verify_tagged_spec options ts =
  let vprintln_title title =
    let _ = Options.Std.vprintln ("\n" ^ title) in
    let _ = Options.Std.vprintln (String.concat "" (List.init (String.length title) (fun _ -> "-"))) in
    () in
  let tags = Common.get_tags_to_be_verified ts in
  let n_tags = SS.cardinal tags in
  if n_tags = 0 then failwith ("No tag is specified")
  else if n_tags = 1 then let tag = SS.choose tags in
                          verify_spec (st_options_of_tag tag options) (spec_of_tag tag ts)
  else SS.for_all (
           fun tag ->
           let t1 = Unix.gettimeofday() in
           let _ = vprintln_title ("Track " ^ tag) in
           let b = verify_spec (st_options_of_tag tag options) (spec_of_tag tag ts) in
           let t2 = Unix.gettimeofday() in
           let _ = Options.Std.vprint("Track verification:\t\t\t\t") in
           let _ = Options.Std.vprintln ((if b then "[OK]\t" else "[FAILED]") ^ "\t" ^ Options.Std.string_of_running_time t1 t2) in
           b
         ) tags
