
open Options.Std
open Options.WithLwt
open Ast.Cryptoline
open Ast.MultiTrack
open Qfbv.Common
open Qfbv.WithLwt
open Smt
open Common
open Utils
open Utils.Std
open Tasks


(** Apply Verification Functions to Cuts *)

let apply_to_cuts_lwt ids f delivered_helper res pending ss =
  let ids = ids |> Option.map Hashset.to_list |> Option.map (List.rev_map (normalize_index (List.length ss))) |> Option.map List.rev |> Option.map Hashset.of_list in
  let rec helper i (res, pending) ss =
    match ss with
    | [] -> finish_pending delivered_helper res pending
    | hd::tl -> if Options.Std.mem_hashset_opt ids i then
                  let cut_header = ("=== Cut #" ^ string_of_int i ^ " ===") in
                  let (res, pending) = List.fold_left (f i [cut_header]) (res, pending) hd in
                  helper (i+1) (res, pending) tl
                else
                  let _ = safe_trace ("=== Skip Cut #" ^ string_of_int i ^ " ===") in
                  helper (i+1) (res, pending) tl in
  helper 0 (res, pending) ss

(*
 * This is same as apply_to_cuts_lwt except that finish_pending is not invoked
 * after all cuts are processed. It is the caller's responsibility to finish
 * all pending tasks.
*)
let apply_to_cuts_lwt_unfinished ids f res pending ss =
  let ids = ids |> Option.map Hashset.to_list |> Option.map (List.rev_map (normalize_index (List.length ss))) |> Option.map List.rev |> Option.map Hashset.of_list in
  let rec helper i (res, pending) ss =
    match ss with
    | [] -> (res, pending)
    | hd::tl -> if Options.Std.mem_hashset_opt ids i then
                  let cut_header = ("=== Cut #" ^ string_of_int i ^ " ===") in
                  let (res, pending) = List.fold_left (f i [cut_header]) (res, pending) hd in
                  helper (i+1) (res, pending) tl
                else
                  let _ = safe_trace ("=== Skip Cut #" ^ string_of_int i ^ " ===") in
                  helper (i+1) (res, pending) tl in
  helper 0 (res, pending) ss



(** Low-Level Interaction of CAS *)

let write_header_to_log header =
   Lwt_list.iter_s (fun h -> let%lwt _ = Options.WithLwt.trace h in
                             Lwt.return_unit) header

let write_singular_input ?comments ifile vars gen p =
  let input_text =
    let varseq =
      match vars with
      | [] -> "x"
      | _ -> String.concat "," (List.rev_map string_of_var vars |> List.rev) in
    let generator = if List.length gen = 0 then "0" else (String.concat ",\n  " (List.rev_map singular_of_eexp gen |> List.rev)) in
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
  let%lwt ifd = Lwt_unix.openfile ifile
                  [Lwt_unix.O_WRONLY; Lwt_unix.O_CREAT; Lwt_unix.O_TRUNC]
                  0o600 in
  let ch = Lwt_io.of_fd ~mode:Lwt_io.output ifd in
  let%lwt _ = Lwt_io.write ch input_text in
  let%lwt _ = Lwt_io.close ch in
  Lwt.return_unit

let write_sage_input ?comments ifile vars gen p =
  let input_text =
    let varseq =
      match vars with
      | [] -> "x"
      | _ -> String.concat "," (List.rev_map string_of_var vars |> List.rev) in
    let generator = if List.length gen = 0 then "0" else (String.concat ",\n  " (List.rev_map sage_of_eexp gen |> List.rev)) in
    let poly = sage_of_eexp p in
    let comment = if !debug then Option.value (Option.map (make_line_comments "#") comments) ~default:"" else "" in
    comment
    ^ "R.<" ^ varseq ^ "> = PolynomialRing(ZZ," ^ string_of_int (max 1 (List.length vars)) ^ ")\n"
    ^ "I = (" ^ generator ^ ") * R\n"
    ^ "P = " ^ poly ^ "\n"
    ^ "assert P in I\n" in
  let%lwt ifd = Lwt_unix.openfile ifile
                  [Lwt_unix.O_WRONLY; Lwt_unix.O_CREAT; Lwt_unix.O_TRUNC]
                  0o600 in
  let ch = Lwt_io.of_fd ~mode:Lwt_io.output ifd in
  let%lwt _ = Lwt_io.write ch input_text in
  let%lwt _ = Lwt_io.close ch in
  Lwt.return_unit

let write_magma_input ?comments ifile vars gen p =
  let input_text =
    let varseq =
      match vars with
      | [] -> "x"
      | _ -> String.concat "," (List.rev_map string_of_var vars |> List.rev) in
    let varlen = max 1 (List.length vars) in
    let generator = if List.length gen = 0 then "0" else (String.concat ",\n" (List.rev_map magma_of_eexp gen |> List.rev)) in
    let poly = magma_of_eexp p in
    let comment = if !debug then Option.value (Option.map (make_line_comments "//") comments) ~default:"" else "" in
    comment
    ^ "function is_generator(p, I)\n"
    ^ "  for q in I do\n"
    ^ "    if p eq q then\n"
    ^ "      return true;\n"
    ^ "    end if;\n"
    ^ "  end for;\n"
    ^ "  return false;\n"
    ^ "end function;\n\n"
    ^ "R := IntegerRing();\n"
    ^ "S<" ^ varseq ^ "> := PolynomialRing(R, " ^ string_of_int varlen ^ ");\n"
    ^ "B := [" ^ generator ^ "];\n"
    ^ "I := ideal<S|B>;\n"
    ^ "g := " ^ poly ^ ";\n"
    ^ "if is_generator(g, B) or g in I then\n"
    ^ "  true;\n"
    ^ "else\n"
    ^ "  J := GroebnerBasis(I);\n"
    ^ "  g in J;\n"
    ^ "end if;\n"
    ^ "exit;\n" in
  let%lwt ifd = Lwt_unix.openfile ifile
                  [Lwt_unix.O_WRONLY; Lwt_unix.O_CREAT; Lwt_unix.O_TRUNC]
                  0o600 in
  let ch = Lwt_io.of_fd ~mode:Lwt_io.output ifd in
  let%lwt _ = Lwt_io.write ch input_text in
  let%lwt _ = Lwt_io.close ch in
  Lwt.return_unit

let write_mathematica_input ?comments ifile vars gen p =
  let input_text =
    let varseq =
      match vars with
      | [] -> "x"
      | _ -> String.concat "," (List.rev_map mathematica_of_var vars |> List.rev) in
    let generator = if List.length gen = 0 then "0" else (String.concat ",\n" (List.rev_map mathematica_of_eexp gen |> List.rev)) in
    let poly = mathematica_of_eexp p in
    let comment = if !debug then Option.value (Option.map (make_block_comments "(*" "*)") comments) ~default:"" else "" in
    comment
    ^ "vars = {" ^ varseq ^ "};\n"
    ^ "gs = {" ^ generator ^ "};\n"
    ^ "p = " ^ poly ^ ";\n"
    ^ "gb = GroebnerBasis[gs, vars, CoefficientDomain -> Integers];\n"
    ^ "{q, r} = PolynomialReduce[p, gb, vars, CoefficientDomain -> Integers];\n"
    ^ "Print[r];\n" in
  let%lwt ifd = Lwt_unix.openfile ifile
                  [Lwt_unix.O_WRONLY; Lwt_unix.O_CREAT; Lwt_unix.O_TRUNC]
                  0o600 in
  let ch = Lwt_io.of_fd ~mode:Lwt_io.output ifd in
  let%lwt _ = Lwt_io.write ch input_text in
  let%lwt _ = Lwt_io.close ch in
  Lwt.return_unit

let write_macaulay2_input ?comments ifile vars gen p =
  let input_text =
    let (vars, gen, p, default_generator) =
      let dummy_var = mkvar ~newvid:true "cryptoline'dummy'variable" (Tuint 0) (* The type is no matter here. *) in
      let no_var_in_generator = VS.is_empty (List.fold_left (fun vs e -> VS.union vs (vars_eexp e)) VS.empty gen) in
      if no_var_in_generator then
        (dummy_var::vars,
         List.rev_map (emul (evar dummy_var)) gen |> List.rev,
         emul (evar dummy_var) p,
         string_of_var dummy_var ^ "*0")
      else
        (vars, gen, p, "0") in
    let varseq =
      match vars with
      | [] -> "x"
      | _ -> String.concat "," (List.rev_map macaulay2_of_var vars |> List.rev) in
    let generator = if List.length gen = 0 then default_generator else (String.concat ",\n  " (List.rev_map macaulay2_of_eexp gen |> List.rev)) in
    let poly = macaulay2_of_eexp p in
    let comment = if !debug then Option.value (Option.map (make_line_comments "--") comments) ~default:"" else "" in
    comment
    ^ "myRing = ZZ[" ^ varseq ^ ",MonomialOrder=>Lex]\n"
    ^ "myIdeal = ideal(" ^ generator ^ ")\n"
    ^ "myPoly = " ^ poly ^ "\n"
    ^ "myBasis = groebnerBasis myIdeal\n"
    ^ "myRes = toString (myPoly % myBasis)\n"
    ^ "print myRes\n" in
  let%lwt ifd = Lwt_unix.openfile ifile
                  [Lwt_unix.O_WRONLY; Lwt_unix.O_CREAT; Lwt_unix.O_TRUNC]
                  0o600 in
  let ch = Lwt_io.of_fd ~mode:Lwt_io.output ifd in
  let%lwt _ = Lwt_io.write ch input_text in
  let%lwt _ = Lwt_io.close ch in
  Lwt.return_unit

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
      | _ -> String.concat "," (List.rev_map string_of_var vars |> List.rev) in
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
  let%lwt ifd = Lwt_unix.openfile ifile
                  [Lwt_unix.O_WRONLY; Lwt_unix.O_CREAT; Lwt_unix.O_TRUNC]
                  0o600 in
  let ch = Lwt_io.of_fd ~mode:Lwt_io.output ifd in
  let%lwt _ = Lwt_io.write ch input_text in
  let%lwt _ = Lwt_io.close ch in
  Lwt.return_unit

let run_singular header ifile ofile =
  let t1 = Unix.gettimeofday() in
  let%lwt _ =
    Options.WithLwt.unix (!singular_path ^ " -q " ^ !Options.Std.algebra_solver_args ^ " \"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2>&1") in
  let t2 = Unix.gettimeofday() in
  let%lwt _ = Options.WithLwt.log_lock () in
  let%lwt _ = write_header_to_log header in
  let%lwt _ = Options.WithLwt.trace "INPUT TO SINGULAR:" in
  let%lwt _ = Options.WithLwt.trace_file ifile in
  let%lwt _ = Options.WithLwt.trace "" in
  let%lwt _ = Options.WithLwt.trace ("Execution time of Singular: " ^ string_of_running_time t1 t2) in
  let%lwt _ = Options.WithLwt.trace "OUTPUT FROM SINGULAR:" in
  let%lwt _ = Options.WithLwt.trace_file ofile in
  let%lwt _ = Options.WithLwt.trace "" in
  let%lwt _ = Options.WithLwt.log_unlock () in
  Lwt.return_unit

let run_sage header ifile ofile =
  let t1 = Unix.gettimeofday() in
  let%lwt _ =
    Options.WithLwt.unix (!sage_path ^ " " ^ !Options.Std.algebra_solver_args ^ " \"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2>&1") in
  let t2 = Unix.gettimeofday() in
  let%lwt _ = Options.WithLwt.log_lock () in
  let%lwt _ = write_header_to_log header in
  let%lwt _ = Options.WithLwt.trace "INPUT TO SAGE:" in
  let%lwt _ = Options.WithLwt.trace_file ifile in
  let%lwt _ = Options.WithLwt.trace "" in
  let%lwt _ = Options.WithLwt.trace ("Execution time of Sage: " ^ string_of_running_time t1 t2) in
  let%lwt _ = Options.WithLwt.trace "OUTPUT FROM SAGE:" in
  let%lwt _ = Options.WithLwt.trace_file ofile in
  let%lwt _ = Options.WithLwt.trace "" in
  let%lwt _ = Options.WithLwt.log_unlock () in
  Lwt.return_unit

let run_magma header ifile ofile =
  let t1 = Unix.gettimeofday() in
  let%lwt _ = Options.WithLwt.unix (!magma_path ^ " " ^ !Options.Std.algebra_solver_args ^ " -b \"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2>&1") in
  let t2 = Unix.gettimeofday() in
  let%lwt _ = Options.WithLwt.log_lock () in
  let%lwt _ = write_header_to_log header in
  let%lwt _ = Options.WithLwt.trace "INPUT TO MAGMA:" in
  let%lwt _ = Options.WithLwt.trace_file ifile in
  let%lwt _ = Options.WithLwt.trace "" in
  let%lwt _ = Options.WithLwt.trace ("Execution time of Magma: " ^ string_of_running_time t1 t2) in
  let%lwt _ = Options.WithLwt.trace "OUTPUT FROM MAGMA:" in
  let%lwt _ = Options.WithLwt.trace_file ofile in
  let%lwt _ = Options.WithLwt.trace "" in
  let%lwt _ = Options.WithLwt.log_unlock () in
  Lwt.return_unit

let run_mathematica header ifile ofile =
  let t1 = Unix.gettimeofday() in
  let%lwt _ = Options.WithLwt.unix (!mathematica_path ^ " " ^ !Options.Std.algebra_solver_args ^ " -file \"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2>&1") in
  let t2 = Unix.gettimeofday() in
  let%lwt _ = Options.WithLwt.log_lock () in
  let%lwt _ = write_header_to_log header in
  let%lwt _ = Options.WithLwt.trace "INPUT TO MATHEMATICA:" in
  let%lwt _ = Options.WithLwt.trace_file ifile in
  let%lwt _ = Options.WithLwt.trace "" in
  let%lwt _ = Options.WithLwt.trace ("Execution time of Mathematica: " ^ string_of_running_time t1 t2) in
  let%lwt _ = Options.WithLwt.trace "OUTPUT FROM MATHEMATICA:" in
  let%lwt _ = Options.WithLwt.trace_file ofile in
  let%lwt _ = Options.WithLwt.trace "" in
  let%lwt _ = Options.WithLwt.log_unlock () in
  Lwt.return_unit

let run_macaulay2 header ifile ofile =
  let t1 = Unix.gettimeofday() in
  let%lwt _ =
    Options.WithLwt.unix (!macaulay2_path ^ " --script \"" ^ ifile ^ "\" " ^ !Options.Std.algebra_solver_args ^ " 1> \"" ^ ofile ^ "\" 2>&1") in
  let t2 = Unix.gettimeofday() in
  let%lwt _ = Options.WithLwt.log_lock () in
  let%lwt _ = write_header_to_log header in
  let%lwt _ = Options.WithLwt.trace "INPUT TO MACAULAY2:" in
  let%lwt _ = Options.WithLwt.trace_file ifile in
  let%lwt _ = Options.WithLwt.trace "" in
  let%lwt _ = Options.WithLwt.trace ("Execution time of Macaulay2: " ^ string_of_running_time t1 t2) in
  let%lwt _ = Options.WithLwt.trace "OUTPUT FROM MACAULAY2:" in
  let%lwt _ = Options.WithLwt.trace_file ofile in
  let%lwt _ = Options.WithLwt.trace "" in
  let%lwt _ = Options.WithLwt.log_unlock () in
  Lwt.return_unit

let run_maple header ifile ofile =
  let t1 = Unix.gettimeofday() in
  let%lwt _ = Options.WithLwt.unix (!maple_path ^ " -q " ^ !Options.Std.algebra_solver_args ^ " \"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2>&1") in
  let t2 = Unix.gettimeofday() in
  let%lwt _ = Options.WithLwt.log_lock () in
  let%lwt _ = write_header_to_log header in
  let%lwt _ = Options.WithLwt.trace "INPUT TO MAPLE:" in
  let%lwt _ = Options.WithLwt.trace_file ifile in
  let%lwt _ = Options.WithLwt.trace "" in
  let%lwt _ = Options.WithLwt.trace ("Execution time of Maple: " ^ string_of_running_time t1 t2) in
  let%lwt _ = Options.WithLwt.trace "OUTPUT FROM MAPLE:" in
  let%lwt _ = Options.WithLwt.trace_file ofile in
  let%lwt _ = Options.WithLwt.trace "" in
  let%lwt _ = Options.WithLwt.log_unlock () in
  Lwt.return_unit

let read_one_line ofile =
  let%lwt ofd = Lwt_unix.openfile ofile [Lwt_unix.O_RDONLY] 0o600 in
  let ch = Lwt_io.of_fd ~mode:Lwt_io.input ofd in
  let%lwt line =
    try%lwt
          Lwt_io.read_line ch
    with _ -> failwith "Failed to read the output file" in
  let%lwt _ = Lwt_io.close ch in
  Lwt.return (String.trim line)

let read_singular_output ofile =
  let%lwt ofd = Lwt_unix.openfile ofile [Lwt_unix.O_RDONLY] 0o600 in
  let ch = Lwt_io.of_fd ~mode:Lwt_io.input ofd in
  let%lwt first =
    try%lwt
          Lwt_io.read_line ch
    with _ -> failwith "Failed to read the output file" in
  let%lwt line =
    if String.sub first 0 (min 2 (String.length first)) = "//" then
      try%lwt
            Lwt_io.read_line ch
      with _ -> failwith "Failed to read the output file"
    else
      Lwt.return first in
  let%lwt _ = Lwt_io.close ch in
  Lwt.return (String.trim line)

let read_sage_output ofile =
  let%lwt ofd = Lwt_unix.openfile ofile [Lwt_unix.O_RDONLY] 0o600 in
  let ch = Lwt_io.of_fd ~mode:Lwt_io.input ofd in
  let%lwt lines =
    try%lwt
      Lwt.return (Lwt_io.read_lines ch)
    with _ -> failwith "Failed to read the output file" in
  let%lwt lines = Lwt_stream.to_list lines in
  let%lwt _ = Lwt_io.close ch in
  if List.mem "AssertionError" lines then Lwt.return "false"
  else if List.length lines = 0 then Lwt.return "true"
  else failwith "Unknown error in Sage"

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
    (* ^ set_ppl_ivariable "\n" ordered_mipvars ^ "\n" *)
    ^ set_ppl_ivariable "\nif not mip.is_satisfiable():\n    print('False')\n    exit()\n" ordered_mipvars ^ "\n"
    ^ "print(mip.is_satisfiable())\n"
    ^ "exit()\n" in
  let%lwt ifd = Lwt_unix.openfile ifile
                  [Lwt_unix.O_WRONLY; Lwt_unix.O_CREAT; Lwt_unix.O_TRUNC]
                  0o600 in
  let ch = Lwt_io.of_fd ~mode:Lwt_io.output ifd in
  let%lwt _ = Lwt_io.write ch input_text in
  let%lwt _ = Lwt_io.close ch in
  Lwt.return_unit

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
  let%lwt ifd = Lwt_unix.openfile ifile
                  [Lwt_unix.O_WRONLY; Lwt_unix.O_CREAT; Lwt_unix.O_TRUNC]
                  0o600 in
  let ch = Lwt_io.of_fd ~mode:Lwt_io.output ifd in
  let%lwt _ = Lwt_io.write ch input_text in
  let%lwt _ = Lwt_io.close ch in
  Lwt.return_unit

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
  let%lwt ifd = Lwt_unix.openfile ifile
                  [Lwt_unix.O_WRONLY; Lwt_unix.O_CREAT; Lwt_unix.O_TRUNC]
                  0o600 in
  let ch = Lwt_io.of_fd ~mode:Lwt_io.output ifd in
  let%lwt _ = Lwt_io.write ch input_text in
  let%lwt _ = Lwt_io.close ch in
  Lwt.return_unit

let run_ppl header ifile ofile =
  let t1 = Unix.gettimeofday() in
  let%lwt _ =
    Options.WithLwt.unix (!python_path ^ " -q \"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2>&1") in
  let t2 = Unix.gettimeofday() in
  let%lwt _ = Options.WithLwt.log_lock () in
  let%lwt _ = write_header_to_log header in
  let%lwt _ = Options.WithLwt.trace "INPUT TO PPLPY:" in
  let%lwt _ = Options.WithLwt.trace_file ifile in
  let%lwt _ = Options.WithLwt.trace "" in
  let%lwt _ = Options.WithLwt.trace ("Execution time of PPLPY: " ^ string_of_running_time t1 t2) in
  let%lwt _ = Options.WithLwt.trace "OUTPUT FROM PPLPY:" in
  let%lwt _ = Options.WithLwt.trace_file ofile in
  let%lwt _ = Options.WithLwt.trace "" in
  let%lwt _ = Options.WithLwt.log_unlock () in
  Lwt.return_unit

let run_scip header ifile ofile =
  let t1 = Unix.gettimeofday() in
  let%lwt _ =
    Options.WithLwt.unix (!python_path ^ " -q \"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2>&1") in
  let t2 = Unix.gettimeofday() in
  let%lwt _ = Options.WithLwt.log_lock () in
  let%lwt _ = write_header_to_log header in
  let%lwt _ = Options.WithLwt.trace "INPUT TO PYSCIPOPT:" in
  let%lwt _ = Options.WithLwt.trace_file ifile in
  let%lwt _ = Options.WithLwt.trace "" in
  let%lwt _ = Options.WithLwt.trace ("Execution time of PYSCIPOPT: " ^ string_of_running_time t1 t2) in
  let%lwt _ = Options.WithLwt.trace "OUTPUT FROM PYSCIPOPT:" in
  let%lwt _ = Options.WithLwt.trace_file ofile in
  let%lwt _ = Options.WithLwt.trace "" in
  let%lwt _ = Options.WithLwt.log_unlock () in
  Lwt.return_unit

let run_isl header ifile ofile =
  let t1 = Unix.gettimeofday() in
  let%lwt _ =
    Options.WithLwt.unix (!python_path ^ " -q \"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2>&1") in
  let t2 = Unix.gettimeofday() in
  let%lwt _ = Options.WithLwt.log_lock () in
  let%lwt _ = write_header_to_log header in
  let%lwt _ = Options.WithLwt.trace "INPUT TO ISLPY:" in
  let%lwt _ = Options.WithLwt.trace_file ifile in
  let%lwt _ = Options.WithLwt.trace "" in
  let%lwt _ = Options.WithLwt.trace ("Execution time of ISLPY: " ^ string_of_running_time t1 t2) in
  let%lwt _ = Options.WithLwt.trace "OUTPUT FROM ISLPY:" in
  let%lwt _ = Options.WithLwt.trace_file ofile in
  let%lwt _ = Options.WithLwt.trace "" in
  let%lwt _ = Options.WithLwt.log_unlock () in
  Lwt.return_unit

let read_ppl_output = read_one_line

let read_scip_output ofile =
  let%lwt ofd = Lwt_unix.openfile ofile [Lwt_unix.O_RDONLY] 0o600 in
  let ch = Lwt_io.of_fd ~mode:Lwt_io.input ofd in
  let%lwt lines =
    try%lwt
      Lwt.return (Lwt_io.read_lines ch)
    with _ -> failwith "Failed to read the output file" in
  let%lwt lines = Lwt_stream.to_list lines in
  let%lwt _ = Lwt_io.close ch in
  Lwt.return (lines |> List.rev |> List.hd)

let read_isl_output = read_one_line



(** Interfaces of Solvers *)

(**
   [is_in_ideal header vars ideal p] returns [true] if the polynomial [p] is in
   the ideal generated by [ideal].
   @param ?solver the computer algebra system to be used
   @param header a header to be outputted to the log file
   @param vars a list of variables in some order
   @param ideal the generator of an ideal
   @param p a polynomial
*)
let is_in_ideal ?comments ?(expand=(!Options.Std.expand_poly)) ?(solver=(!Options.Std.algebra_solver)) header vars ideal p =
  let ideal = if expand then tmap expand_eexp ideal else ideal in
  let p = if expand then expand_eexp p else p in
  let ifile = tmpfile "inputfgb_" "" in
  let ofile = tmpfile "outputfgb_" "" in
  let comments = rcons_comments_option comments ("Output file: " ^ ofile) in
  let res =
    match solver with
    | Singular ->
       let%lwt _ = write_singular_input ~comments ifile vars ideal p in
       let%lwt _ = run_singular header ifile ofile in
       let%lwt res = read_singular_output ofile in
       let%lwt _ = cleanup_lwt [ifile; ofile] in
       Lwt.return (res = "0")
    | Sage ->
       (* The input file to Sage must have file extension ".sage". *)
       let ifile = ifile ^ ".sage" in
       let%lwt _ = write_sage_input ~comments ifile vars ideal p in
       let%lwt _ = run_sage header ifile ofile in
       let%lwt res = read_sage_output ofile in
       let%lwt _ = cleanup_lwt [ifile; ofile] in
       Lwt.return (res = "true")
    | Magma ->
       let%lwt _ = write_magma_input ~comments ifile vars ideal p in
       let%lwt _ = run_magma header ifile ofile in
       let%lwt res = read_magma_output ofile in
       let%lwt _ = cleanup_lwt [ifile; ofile] in
       Lwt.return (res = "true")
    | Mathematica ->
       let%lwt _ = write_mathematica_input ~comments ifile vars ideal p in
       let%lwt _ = run_mathematica header ifile ofile in
       let%lwt res = read_mathematica_output ofile in
       let%lwt _ = cleanup_lwt [ifile; ofile] in
       Lwt.return (res = "0")
    | Macaulay2 ->
       let%lwt _ = write_macaulay2_input ~comments ifile vars ideal p in
       let%lwt _ = run_macaulay2 header ifile ofile in
       let%lwt res = read_macaulay2_output ofile in
       let%lwt _ = cleanup_lwt [ifile; ofile] in
       Lwt.return (res = "0")
    | Maple ->
       let%lwt _ = write_maple_input ~comments ifile vars ideal p in
       let%lwt _ = run_maple header ifile ofile in
       let%lwt res = read_maple_output ofile in
       let%lwt _ = cleanup_lwt [ifile; ofile] in
       Lwt.return (res = "true")
    | SMTSolver _ -> failwith ("Ideal membership queries are not supported by SMT solver.")
    | PPL | SCIP | ISL -> failwith ("Ideal membership queries are not supported by MIP solver.")
  in
  res

let is_constr_feasible ?comments headers ?(solver=(!Options.Std.algebra_solver))
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
     let%lwt _ = write_ppl_input ~comments ifile mipvars constr in
     let%lwt _ = run_ppl headers ifile ofile in
     let%lwt res = read_ppl_output ofile in
     let%lwt _ = cleanup_lwt [ifile; ofile] in
     Lwt.return (res = "False")
  | SCIP ->
     let (ifile, ofile, comments) = gen_files_py() in
     let%lwt _ = write_scip_input ~comments ifile mipvars constr in
     let%lwt _ = run_scip headers ifile ofile in
     let%lwt res = read_scip_output ofile in
     let%lwt _ = cleanup_lwt [ifile; ofile] in
     Lwt.return (res = "infeasible")
  | ISL ->
     let (ifile, ofile, comments) = gen_files_py() in
     let%lwt _ = write_isl_input ~comments ifile mipvars constr in
     let%lwt _ = run_isl headers ifile ofile in
     let%lwt res = read_isl_output ofile in
     let%lwt _ = cleanup_lwt [ifile; ofile] in
     Lwt.return (res = "True")
  | SMTSolver o when o.algsmt_logic = LIA ->
     let (ifile, ofile, comments) = gen_files_smt() in
     let verify_one_smtlib smtlib =
       let%lwt _ =
         let%lwt ifd = Lwt_unix.openfile ifile
                         [Lwt_unix.O_WRONLY; Lwt_unix.O_CREAT; Lwt_unix.O_TRUNC]
                         0o600 in
         let ch = Lwt_io.of_fd ~mode:Lwt_io.output ifd in
         let%lwt _ = if !debug then Lwt_io.write ch (make_line_comments ";" comments) else Lwt.return_unit in
         let%lwt _ = Lwt_io.write ch smtlib in
         let%lwt _ = Lwt_io.close ch in
         let%lwt _ =
           let%lwt _ = Options.WithLwt.log_lock () in
           let%lwt _ = Options.WithLwt.trace "INPUT TO SMT Solver:" in
           let%lwt _ = Options.WithLwt.trace_file ifile in
           let%lwt _ = Options.WithLwt.trace "" in
           let%lwt _ = Options.WithLwt.log_unlock () in
           Lwt.return_unit in
         Lwt.return_unit in
       let%lwt _ =
         let t1 = Unix.gettimeofday() in
         let%lwt _ = Options.WithLwt.unix (o.algsmt_path ^ "  \"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2>&1") in
         let t2 = Unix.gettimeofday() in
         let%lwt _ = Options.WithLwt.log_lock () in
         let%lwt _ = Options.WithLwt.trace ("Execution time of SMT Solver " ^ o.algsmt_path ^ ": " ^ Options.Std.string_of_running_time t1 t2) in
         let%lwt _ = Options.WithLwt.trace "OUTPUT FROM SMT SOLVER:" in
         let%lwt _ = Options.WithLwt.trace_file ofile in
         let%lwt _ = Options.WithLwt.trace "" in
         let%lwt _ = Options.WithLwt.log_unlock () in
         Lwt.return_unit in
       let%lwt line = read_one_line ofile in
       let%lwt res = Lwt.return (line = "unsat") in
       let%lwt _ = cleanup_lwt [ifile; ofile] in
       Lwt.return res in
     let verify_one_mipvars_constr vgen (_mipvars, constrs) =
       let (_, smtlib) = smtlib_ebexps_lia ~expn:false vgen constrs in
       verify_one_smtlib smtlib in
     let%lwt res = verify_one_mipvars_constr vgen (mipvars, constr) in
     Lwt.return res
  | _ -> failwith "Algebraic range condition needs MIP solver."



(** Verification of Safety Conditions *)

(* Options.vscuts is handled in Std.verify_safety. *)
let verify_safety_conditions ?comments timeout f prog qs hashopt =
  let mk_promise (id, i, q, p) =
    let fp = safety_assumptions f p q hashopt in
    let%lwt res =
      try%lwt
            match%lwt solve_simp
                    ~comments:(append_comments_option comments [ "Safety condition: #" ^ string_of_int id;
                                                                 "Instruction: " ^ string_of_instr i ])
                    ~timeout:timeout ~header:[] (rcons fp q) with
            | Sat -> Lwt.return (id, i, q, "[FAILED]", Solved Sat)
            | Unknown -> Lwt.return (id, i, q, "[FAILED]", Solved Unknown)
            | Unsat -> Lwt.return (id, i, q, "[OK]", Solved Unsat)
      with TimeoutException ->
        Lwt.return (id, i, q, "[TIMEOUT]", Unfinished [(id, i, q)]) in
    Lwt.return res in
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
       (finish_pending delivered_helper res pending, revp, p, [])
    | _ ->
       if List.length pending < !jobs then
         let (revp', p') = find_program_prefix i revp p in
         let promise = mk_promise (id, i, q, List.rev revp') in
         (res, revp', p', promise::pending)
       else
         let (res', pending') =
           work_on_pending delivered_helper res pending in
         let (revp', p') = find_program_prefix i revp p in
         let promise = mk_promise (id, i, q, List.rev revp') in
         (res', revp', p', promise::pending') in
  let rec fold_fun_abs_interp (res, revp, p, pending, mgr, dom) (id, i, q) =
    match p with
    | h::t ->
       if h <> i then
         let dom' = Absdom.Std.interp_instr ~safe:true ~var_bound:true mgr dom h in
         (*
         let _ = Format.pp_print_string Format.std_formatter
                   (Absdom.Std.string_of_dom mgr dom);
                 Format.pp_force_newline Format.std_formatter ();
                 Format.pp_print_string Format.std_formatter
                   (string_of_instr i);
                 Format.pp_force_newline Format.std_formatter ();
                 Format.pp_print_flush Format.std_formatter () in
         *)
         fold_fun_abs_interp (res, h::revp, t, pending, mgr, dom') (id, i, q)
       else
         (*
         let _ = Format.pp_print_string Format.std_formatter
                   (Absdom.Std.string_of_dom mgr dom);
                 Format.pp_force_newline Format.std_formatter ();
                 Format.pp_print_string Format.std_formatter
                   (string_of_instr i);
                 Format.pp_force_newline Format.std_formatter ();
                 Format.pp_print_flush Format.std_formatter () in
          *)
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
             (Solved Unsat, [], prog, [], mgr, start_dom) qs in
         (res, revp, p, pending)
      | None -> List.fold_left fold_fun (Solved Unsat, [], prog, []) qs
    else List.fold_left fold_fun (Solved Unsat, [], prog, []) qs in
  finish_pending delivered_helper res pending


(*
 * Verify safety of a specification instruction by instruction parallelly.
 * A single predicate is created for the safety of each instruction.
 *)
let verify_safety_inc_lwt options ?comments s hashopt =
  let continue_helper ((res, _), _) = res in
  let delivered_helper ((rsafe, rsid), rtimedouts) (cid, timeout, header, id, i, q, res_str, timedout, safe) =
    let _ = vprintln (Printf.sprintf "\tCut #%d, Condition #%d, Timeout %d\t%s" cid id timeout res_str) in
    ((rsafe && safe, rsid), if timedout then (cid, timeout * 2, header, id, i, q)::rtimedouts else rtimedouts) in
  let make_promise (cid, timeout, header, id, i, q) () =
    let%lwt res =
      try%lwt
            match%lwt solve_simp
                    ~comments:(append_comments_option comments [ Printf.sprintf "Track: %s" options.st_tag;
                                                                 "Cut: #" ^ string_of_int cid;
                                                                 "Safety condition: #" ^ string_of_int id;
                                                                 "Instruction: " ^ string_of_instr i ])
                    ~timeout ~header q with
            | Sat -> Lwt.return (cid, timeout, header, id, i, q, "[FAILED]", false, false)
            | Unknown -> Lwt.return (cid, timeout, header, id, i, q, "[FAILED]", false, false)
            | Unsat -> Lwt.return (cid, timeout, header, id, i, q, "[OK]", false, true)
      with TimeoutException ->
        Lwt.return (cid, timeout, header, id, i, q, "[TIMEOUT]", true, true) in
    Lwt.return res in
  let verify_cut cid header (((res, sid), timedouts), pending) (_, s) =
    let verify_cut_helper promises_rev (id, i, q) =
      if Options.Std.mem_hashset_opt options.st_verify_safety_ids id
      then let promise =  make_promise (cid, !incremental_safety_timeout,
                                        header, id, i, q) in
           promise::promises_rev
      else promises_rev in
    let rec verify_cut_helper_abs_interp (promises_rev, mgr, dom, p)
              (id, i, q) =
      match p with
      | h::t -> if i <> h then
                  let dom' =
                    Absdom.Std.interp_instr ~safe:true ~var_bound:true mgr dom h in
                  verify_cut_helper_abs_interp (promises_rev, mgr, dom', t)
                    (id, i, q)
                else if Absdom.Std.instr_safe mgr dom i then
                  let dom' =
                    Absdom.Std.interp_instr ~safe:true ~var_bound:true mgr dom i in
                  (promises_rev, mgr, dom', t)
                else
                  let dom' = Absdom.Std.interp_instr ~safe:false ~var_bound:true mgr dom i in
                  (verify_cut_helper promises_rev (id, i, q), mgr, dom', t)
      | [] -> failwith "verify_cut_helper_abs_interp fails" in
    if res then let (next_sid, conds) = bexp_program_safe_numbered_conds sid s.rspre s.rsprog hashopt in
                let promises_rev =
                  if !Options.Std.abs_interp then
                    let vars = VS.union (vars_rbexp s.rspre)
                                 (vars_program s.rsprog) in
                    let mgr = Absdom.Std.create_manager vars in
                    let vars_dom = Absdom.Std.abs_of_vars mgr
                                     (VS.diff vars (lvs_program s.rsprog)) in
                    match Absdom.Std.abs_of_rbexp mgr ~abs:vars_dom s.rspre with
                    | Some dom ->
                       let start_dom = Absdom.Std.meet mgr dom vars_dom in
                       let (ret, _, _, _) = List.fold_left
                                              verify_cut_helper_abs_interp
                                              ([], mgr, start_dom, s.rsprog)
                                              conds in
                       ret
                    | None -> List.fold_left verify_cut_helper [] conds
                  else
                    List.fold_left verify_cut_helper [] conds in
                let _ = if next_sid > sid then vprintln(Printf.sprintf "\t=> Cut #%d: %d safety conditions (#%d - #%d)" cid (List.length conds) sid (next_sid - 1))
                        else vprintln(Printf.sprintf "\t=> Cut #%d: %d safety conditions" cid (List.length conds)) in
                add_to_pending continue_helper delivered_helper ((res, next_sid), timedouts) pending (List.rev promises_rev)
    else (((res, sid), timedouts), pending) in
  let (((res, sid), timedouts_rev), pending) = apply_to_cuts_lwt_unfinished options.st_verify_scuts verify_cut ((true, 0), []) [] (cut_safety (rspec_of_spec s)) in
  let (res, _) = finish_pending_with_timedouts continue_helper delivered_helper (tmap make_promise) ((res, sid), List.rev timedouts_rev) pending in
  res

(*
 * Verify safety of a specification cut by cut parallelly.
 * A single predicate is created for the safety of each cut.
 *)
let verify_safety_all_lwt options ?comments s hashopt =
  let delivered_helper (rsafe, rsid) safe = (rsafe && safe, rsid) in
  let verify_cut cid header ((res, sid), pending) (_, s) =
    if res then if Options.Std.mem_hashset_opt options.st_verify_safety_ids sid
                then let comments = append_comments_option comments [ Printf.sprintf "Track: %s" options.st_tag;
                                                                      "Cut: #" ^ string_of_int cid;
                                                                      "Target: all instructions in this cut" ] in
                     let promise () = let g = bexp_program_safe s.rsprog in
                                      let fp = safety_assumptions s.rspre s.rsprog g hashopt in
                                      let%lwt res = solve_simp ~comments ~header (fp@[g]) in
                                      Lwt.return (res = Unsat) in
                     add_to_pending fst delivered_helper (res, sid + 1) pending [promise]
                else ((res, sid + 1), pending)
    else ((res, sid), pending) in
  let (res, _) = apply_to_cuts_lwt options.st_verify_scuts verify_cut delivered_helper (true, 0) [] (cut_safety (rspec_of_spec s)) in
  res

(* Verify safety of a specification parallelly *)
let verify_safety_lwt options ?comments s hashopt =
  if !incremental_safety then verify_safety_inc_lwt options ?comments s hashopt
  else verify_safety_all_lwt options ?comments s hashopt


let verify_safety_mip_conditions ?comments _timeout indexed_infos vgen _hashopt =
  let headers = [] in
  let mip_verifier ?comments (mipvars, constr) =
    is_constr_feasible ~comments:(append_comments_option comments []) headers ~solver:!Options.Std.mip_safety_solver vgen mipvars constr in
  let mk_promise (id, info) =
    let%lwt res =
      try%lwt
            if%lwt mip_verifier
                 ~comments:(append_comments_option comments [ Printf.sprintf "Safety condition: #%d" id;
                                                              Printf.sprintf "Instruction: %s" (string_of_instr info.Mip.mip_sndcond_instr);
                                                              Printf.sprintf "Condition: %s" (string_of_ebexp info.mip_sndcond_cond);
                                                              Printf.sprintf "Constraint: #%d" info.mip_sndcond_index ])
                 (*~timeout:timeout*) info.mip_sndcond_constrs
            then Lwt.return (id, info, "[OK]", Solved Unsat)
            else Lwt.return (id, info, "[FAILED]", Solved Sat)
      with TimeoutException ->
        Lwt.return (id, info, "[TIMEOUT]", Unfinished [(id, info)]) in
    Lwt.return res in
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
    | Solved Unknown -> (finish_pending delivered_helper res pending, [])
    | _ ->
       if List.length pending < !jobs then
         let promise = mk_promise (id, info) in
         (res, promise::pending)
       else
         let (res', pending') =
           work_on_pending delivered_helper res pending in
         let promise = mk_promise (id, info) in
         (res', promise::pending') in
  let (res, pending) = List.fold_left fold_fun (Solved Unsat, []) indexed_infos in
  finish_pending delivered_helper res pending

(* Verify safety of a specification parallelly *)
let verify_safety_mip_cross_cuts_lwt options ?comments vgen s _hashopt =
  let assoc_safety_ids base i info = (base + i, info) in
  let mip_verifier ?comments header (mipvars, constr) =
    is_constr_feasible ~comments:(append_comments_option comments []) header ~solver:!Options.Std.mip_safety_solver vgen mipvars constr in
  let continue_helper ((res, _), _) = res in
  let delivered_helper ((rsafe, rsid), rtimedouts) (cid, timeout, header, id, info, res_str, timedout, safe) =
    let _ = vprintln (Printf.sprintf "\tCut #%d, Condition #%d, Timeout %d\t%s" cid id timeout res_str) in
    ((rsafe && safe, rsid), if timedout then (cid, timeout * 2, header, id, info)::rtimedouts else rtimedouts) in
  let make_promise (cid, timeout, header, id, info) () =
    let%lwt res =
      try%lwt
            if%lwt mip_verifier
                    ~comments:(append_comments_option comments [ Printf.sprintf "Track: %s" options.st_tag;
                                                                 Printf.sprintf "Cut: #%d" cid;
                                                                 Printf.sprintf "Safety condition: #%d" id;
                                                                 Printf.sprintf "Instruction: %s" (string_of_instr info.Mip.mip_sndcond_instr);
                                                                 Printf.sprintf "Condition: %s" (string_of_ebexp info.mip_sndcond_cond);
                                                                 Printf.sprintf "Constraint: #%d" info.mip_sndcond_index ])
                    (*~timeout*) header info.mip_sndcond_constrs
            then Lwt.return (cid, timeout, header, id, info, "[OK]", false, true)
            else Lwt.return (cid, timeout, header, id, info, "[FAILED]", false, false)
      with TimeoutException ->
        Lwt.return (cid, timeout, header, id, info, "[TIMEOUT]", true, true) in
    Lwt.return res in
  let verify_cut cid header (((res, sid), timedouts), pending) (_, s) =
    let verify_cut_helper promises_rev (id, info) =
      if Options.Std.mem_hashset_opt options.st_verify_safety_ids id
      then let promise = make_promise (cid, !incremental_safety_timeout, header, id, info) in
           promise::promises_rev
      else promises_rev in
    if res
    then let (_, infos) = Mip.safety_conditions_of_program vgen s.espre s.esprog in
         let indexed_infos = List.mapi (assoc_safety_ids sid) infos in
         let next_sid = sid + List.length infos in
         let promises_rev = List.fold_left verify_cut_helper [] indexed_infos in
         let _ = if next_sid > sid then vprintln(Printf.sprintf "\t=> Cut #%d: %d safety conditions (#%d - #%d)" cid (List.length indexed_infos) sid (next_sid - 1))
                 else vprintln(Printf.sprintf "\t=> Cut #%d: %d safety conditions" cid (List.length indexed_infos)) in
         add_to_pending continue_helper delivered_helper ((res, next_sid), timedouts) pending (List.rev promises_rev)
    else (((res, sid), timedouts), pending)
  in
  let (((res, sid), timedouts_rev), pending) = apply_to_cuts_lwt_unfinished options.st_verify_scuts verify_cut ((true, 0), []) [] (cut_esafety (espec_of_spec s)) in
  let (res, _) = finish_pending_with_timedouts continue_helper delivered_helper (tmap make_promise) ((res, sid), List.rev timedouts_rev) pending in
  res



(** Verification of Assertions and Specifications *)

(**
   [verify_rspec_single_conjunct header s hashopt] verifies the range
   specification [s] which contains neither cut nor conjunction. What is done in
   this function: trivial postcondition check, trivial implication check, program
   slicing, solver invocation.
   @param header a header to be outputted to the log file
   @param s a range specification
   @param hashopt
   @return a bool promise
 *)
let verify_rspec_single_conjunct ?comments header s hashopt =
  let solver = range_solver_of_prove_with (List.split s.rspost |> snd |> tflatten) in
  let verify_one header s =
    let f = bexp_rbexp s.rspre in
    let p = bexp_program s.rsprog in
    let g = bexp_rbexp (rbexp_prove_with_rands s.rspost) in
    let%lwt r = solve_simp
                  ~comments:(rcons_comments_option comments ("Range condition: " ^ string_of_bexp g))
                  ~solver:solver
                  ~header:header
                  (f::(rcons p g)) in
    Lwt.return (r = Unsat) in
  (* NOTE: any logging here increases the verification time pretty much for trivial specifications/assertions *)
  let%lwt res = if is_rspec_trivial s then Lwt.return_true
                else verify_one header (if !apply_slicing then slice_rspec_ssa s hashopt else s) in
  Lwt.return res

(**
   [verify_rspec_no_cut_abs_interp ?comments s hashopt]
   verifies the range specification [s] which contains neither cut nor
   conjunction by abstract interpretation.
   @param s a range specification
   @param hashopt
   @return rspec list with splitted rpost
 *)
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
               let _ = safe_trace ("Range condition: " ^
                                     (string_of_rbexp post) ^ " [ok]") in
               let _ = safe_trace ("End abstract domain: " ^
                                     (Absdom.Std.string_of_abs dom')) in
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

(**
  [verify_rspec_no_rcut header s hashopt] creates tasks that verify a range
  specification containing no rcut. What is done in this function: split
  conjunctions.
   @param header a header to be outputted to the log file
   @param s a range specification
   @param hashopt
   @return a list of [task]
 *)
let verify_rspec_no_rcut ?comments header s hashopt : bool task list =
  let verify comments s = fun () -> verify_rspec_single_conjunct ?comments header s hashopt in
  verify_rspec_no_rcut_abs_interp hashopt s |>
  List.rev_map (verify comments) |> List.rev

let verify_entailment ?comments ?(solver=(!Options.Std.algebra_solver)) headers (post, vars, ideal, p) =
  let poststr = string_of_ebexp post in
  let%lwt r = is_in_ideal
                ~comments:(append_comments_option comments [ "Algebraic condition: " ^ poststr;
                                                             "Try: #0 (pure equality)" ])
                ~solver:solver headers vars [] p in
  if r then Lwt.return_true
  else let%lwt r = is_in_ideal
                     ~comments:(append_comments_option comments [ "Algebraic condition: " ^ poststr;
                                                                  "Try: #1 (modular equality)" ])
                     ~solver:solver headers vars ideal p in
       Lwt.return r

(* Verify an algebraic specification using a computer algebra system. *)
let verify_espec_single_conjunct_ideal ?comments headers vgen s =
  let (_, entailments) = polys_of_espec vgen s in
  let solver = algebra_solver_of_prove_with (ebexp_prove_with_specs s.espost) in
  Lwt_list.for_all_p (fun entailment -> verify_entailment ?comments ~solver:solver headers entailment) entailments

(* Verify an algebraic specification using a specified SMT solver. *)
let verify_espec_single_conjunct_smt solver ?comments cut_headers vgen s =
  let verify_one_smtlib smtlib =
    let ifile = tmpfile "inputfgb_" ".smt2" in
    let ofile = tmpfile "outputfgb_" "" in
    let comments = append_comments_option comments [ "Algebraic condition: " ^ string_of_ebexp_prove_with s.espost;
                                                     "Output file: " ^ ofile ] |> make_line_comments ";" in
    let%lwt _ =
      let%lwt ifd = Lwt_unix.openfile ifile [Lwt_unix.O_WRONLY; Lwt_unix.O_CREAT; Lwt_unix.O_TRUNC] 0o600 in
      let ch = Lwt_io.of_fd ~mode:Lwt_io.output ifd in
      let%lwt _ = Lwt_io.write ch comments in
      let%lwt _ = Lwt_io.write ch smtlib in
      Lwt_io.close ch in
    let%lwt _ =
      let t1 = Unix.gettimeofday() in
      let%lwt _ = Options.WithLwt.unix (solver.algsmt_path ^ "  \"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2>&1") in
      let t2 = Unix.gettimeofday() in
      let%lwt _ =
        let%lwt _ = Options.WithLwt.log_lock () in
        let%lwt _ = write_header_to_log cut_headers in
        let%lwt _ = Options.WithLwt.trace "INPUT TO SMT Solver:" in
        let%lwt _ = Options.WithLwt.trace_file ifile in
        let%lwt _ = Options.WithLwt.trace "" in
        let%lwt _ = Options.WithLwt.trace ("Execution time of SMT Solver " ^ solver.algsmt_path ^ ": " ^ string_of_running_time t1 t2) in
        let%lwt _ = Options.WithLwt.trace "OUTPUT FROM SMT SOLVER:" in
        let%lwt _ = Options.WithLwt.trace_file ofile in
        let%lwt _ = Options.WithLwt.trace "" in
        Options.WithLwt.log_unlock () in
      Lwt.return_unit in
    let%lwt res = read_one_line ofile in
    let%lwt _ = cleanup_lwt [ifile; ofile] in
    Lwt.return (res = "unsat") in
  let verify_one_mipvars_constr vgen (_mipvars, constrs) =
    let (_, smtlib) = smtlib_ebexps_lia vgen constrs in
    verify_one_smtlib smtlib in
  let res =
    match solver.algsmt_logic with
    | NIA -> let (_, smtlib) = smtlib_espec vgen s in
             verify_one_smtlib smtlib
    | LIA -> let (_, mipvars_constrs) = mip_of_espec vgen s in
             Lwt_list.for_all_p (verify_one_mipvars_constr vgen) mipvars_constrs in
  res

(* Verify an algebraic specification using a specified SMT solver. *)
let verify_espec_single_conjunct_mip ?comments headers vgen s =
  let (_, mipvars_constrs) = mip_of_espec vgen s in
  let solver =
    algebra_solver_of_prove_with (ebexp_prove_with_specs s.espost) in
  let helper (mipvars, constr) =
    let epoststr = string_of_ebexp (fst (List.hd s.espost)) in
    is_constr_feasible ~comments:(append_comments_option comments [ "Algebraic condition: " ^ epoststr ]) ~solver:solver headers vgen mipvars constr in
  Lwt_list.for_all_p helper mipvars_constrs

(*
 * Verify an algebraic specification containing neither cut nor conjunction.
 * What is done in this function: trivial postcondition check, trivial implication check, program slicing, solver invocation.
 *)
let verify_espec_single_conjunct ?comments cut_headers vgen s hashopt =
  let verify_one =
    match algebra_solver_of_prove_with (ebexp_prove_with_specs s.espost) with
    | SMTSolver solver -> verify_espec_single_conjunct_smt solver ?comments
    | PPL | SCIP | ISL -> verify_espec_single_conjunct_mip ?comments
    | _ -> verify_espec_single_conjunct_ideal ?comments in
  (* NOTE: any logging here increases the verification time pretty much for trivial specifications/assertions *)
  let%lwt res = if is_espec_trivial s || Deduce.espec_prover s
                then Lwt.return_true
                else verify_one cut_headers vgen (if !apply_slicing then slice_espec_ssa s hashopt else s) in
  Lwt.return res

(*
 * Verify an algebraic specification containing no ecut.
 * What is done in this function: split conjunctions.
 *)
let verify_espec_no_ecut ?comments headers vgen s hashopt =
  if !Options.Std.two_phase_rewriting then
    let solver = algebra_solver_of_prove_with (ebexp_prove_with_specs s.espost) in
    let mk_task entailment = fun () -> verify_entailment ?comments ~solver:solver headers entailment in
    let s = remove_trivial_epost s in
    (* We don't need the full is_espec_trivial test. espre_implies_espost and espost_in_assumes are considered in remove_trivial_epost. *)
    match s.espost with
    | [] -> []
    | (e, _)::[] ->
       let (s, sliced) =
         match e with
         | Eand _ -> (s, false)
         | _ ->
            (* If the postcondition is an atomic predicate, apply slicing at the beginning. *)
            (slice_espec_ssa s None, true) in
       (* Convert to ideal membership problems, rewriting and slicing (if the postcondition is a conjunction) are done in polys_of_espec_two_phase. *)
       let (_, entailments) = polys_of_espec_two_phase ~sliced:sliced vgen s in
       let tasks = tmap mk_task entailments in
       tasks
    | _ -> assert false
  else
    let verify_task s =
      match s.espost with
      | [] -> []
      | _ -> [fun () -> verify_espec_single_conjunct ?comments headers vgen s hashopt] in
    tmap verify_task (split_espec_post s) |> tflatten

(* The top function of verifying algebraic assertions when !jobs > 1. *)
let verify_eassert options vgen s hashopt =
  let _ = safe_trace "===== Verifying algebraic assertions =====" in
  let delivered_helper = (&&) in
  let mk_tasks ?comments headers (sid, s) =
    let tasks = verify_espec_no_ecut
                  ~comments:(rcons_comments_option comments ("Algebraic assertion #" ^ string_of_int sid ^ ": " ^ Ast.Cryptoline.string_of_ebexp_prove_with s.espost))
                  headers vgen s hashopt in
    tasks in
  let rec verify_spec ?comments cut_headers (res, pending) s =
    if List.length pending < !jobs then
      let tasks = mk_tasks ?comments cut_headers s in
      add_to_pending Fun.id delivered_helper res pending tasks
    else
      let (res', pending') = work_on_pending delivered_helper res pending in
      verify_spec ?comments cut_headers (res', pending') s in
  (* Check previous result *)
  let verify cid cut_headers (res, pending) (sid, s) =
    if res && Options.Std.mem_hashset_opt options.st_verify_eassert_ids sid
    then verify_spec
           ~comments:[ "Verify: algebraic assertions";
                       Printf.sprintf "Track: %s" options.st_tag;
                       "Cut: #" ^ string_of_int cid ]
           cut_headers (res, pending) (sid, s)
    else (res, pending) in
  apply_to_cuts_lwt options.st_verify_eacuts verify delivered_helper true [] (cut_eassert (espec_of_spec s))

(* The top function of verifying range assertions when !jobs > 1. *)
let verify_rassert options s hashopt =
  let _ = safe_trace "===== Verifying range assertions =====" in
  let delivered_helper = (&&) in
  let mk_tasks ?comments headers (sid, s) =
    let tasks = verify_rspec_no_rcut
                  ~comments:(rcons_comments_option comments ("Range assertion #" ^ string_of_int sid ^ ": " ^ Ast.Cryptoline.string_of_rbexp_prove_with s.rspost))
                  headers s hashopt in
    tasks in
  let rec verify_spec ?comments headers (res, pending) s =
    if List.length pending < !jobs then
      let tasks = mk_tasks ?comments headers s in
      add_to_pending Fun.id delivered_helper res pending tasks
    else
      let (res', promised) = work_on_pending delivered_helper res pending in
      verify_spec ?comments headers (res', promised) s in
  (* Check previous result *)
  let verify cid headers (res, pending) (sid, s) =
    if res && Options.Std.mem_hashset_opt options.st_verify_rassert_ids sid
    then verify_spec
           ~comments:[ "Verify: range assertions";
                       Printf.sprintf "Track: %s" options.st_tag;
                       "Cut: #" ^ string_of_int cid ]
           headers (res, pending) (sid, s)
    else (res, pending) in
  apply_to_cuts_lwt options.st_verify_racuts verify delivered_helper true [] (cut_rassert (rspec_of_spec s))

(* The top function of verifying range specifications when !jobs > 1. *)
let verify_rspec options s hashopt =
  let _ = safe_trace "===== Verifying range specifications =====" in
  let delivered_helper = (&&) in
  let mk_tasks ?comments headers s = verify_rspec_no_rcut ?comments headers s hashopt in
  let verify_ands ?comments headers (res, pending) s = add_to_pending Fun.id delivered_helper res pending (mk_tasks ?comments headers s) in
  (* Check previous result *)
  let verify cid headers (res, pending) (sid, s) =
    if res then verify_ands
                  ~comments:[ "Verify: range specifications";
                              Printf.sprintf "Track: %s" options.st_tag;
                              "Cut: #" ^ string_of_int cid;
                              "Range specification #" ^ string_of_int sid ^ ": " ^ string_of_rbexp_prove_with s.rspost ]
                  headers (res, pending) s
    else (res, pending) in
  apply_to_cuts_lwt options.st_verify_rcuts verify delivered_helper true [] (cut_rspec s)

(**
   The top function of verifying range specifications when !jobs > 1.
   @param vgen a variable generator
   @param s an algebraic specification
   @param hashopt
   @return [true] if the algebraic specification is verified successfully
 *)
let verify_espec options vgen s hashopt =
  let _ = safe_trace "===== Verifying algebraic specifications =====" in
  let delivered_helper = (&&) in
  let mk_tasks ?comments headers s = verify_espec_no_ecut ?comments headers vgen s hashopt in
  let verify_ands ?comments headers (res, pending) s = add_to_pending Fun.id delivered_helper res pending (mk_tasks ?comments headers s) in
  (* Check previous result *)
  let verify cid headers (res, pending) (sid, s) =
    if res then verify_ands
                  ~comments:[ "Verify: algebraic specifications";
                              Printf.sprintf "Track: %s" options.st_tag;
                              "Cut: #" ^ string_of_int cid;
                              "Algebraic specification #" ^ string_of_int sid ^ ": " ^ string_of_ebexp_prove_with s.espost ]
                  headers (res, pending) s
    else (res, pending) in
  apply_to_cuts_lwt options.st_verify_ecuts verify (&&) true [] (cut_espec s)



(** CLI Verification Functions *)

type cli_round_result =
  Solved of result
| Unfinished of (int * int * int * instr) list

(*
 * Run CLI to verify the safety of one instruction.
 * id: the ID of this safety verification
 * timeout: the timeout used in this safety verification
 * idx: the index of the instruction in the program containing the instruction
 * ifile: the range specification containing the program
 *)
let run_cli_visafety id timeout idx instr ifile =
  let ofile = tmpfile "safety_output_" "" in
  let lfile = tmpfile "safety_log_" "" in
  (* Run CLI *)
  let cmd = String.concat " "
                          [!cli_path;
                           if !debug then "-debug" else "";
                           (match !tmpdir with
                            | None -> ""
                            | Some d -> "-tmpdir \"" ^ d ^ "\"");
                           if !keep_temp_files then "-keep" else "";
                           "-c vsafety";
                           "-instr " ^ string_of_int idx;
                           "-id " ^ string_of_int id;
                           ("-qfbv_solver " ^ !Options.Std.range_solver);
                           (if !Options.Std.range_solver_args = "" then ""
                            else "-qfbv_args \"" ^ !Options.Std.range_solver_args ^ "\"");
                           (if !Options.Std.use_btor then "-btor"
                            else "");
                           (if !Options.Std.incremental_safety then "-isafety"
                            else "");
                           (if !Options.Std.incremental_safety then "-isafety_timeout " ^ string_of_int timeout
                            else "");
                           (if !Options.Std.apply_slicing then "-slicing"
                            else "");
                           (if !Options.Std.rename_local then "-rename_local"
                            else "");
                           "-o \"" ^ lfile ^ "\"";
                           "\"" ^ ifile ^ "\"";
                           "1> \"" ^ ofile ^ "\" 2>&1"
                          ] in
  let%lwt _ = Options.WithLwt.unix cmd in
  (* Read the output of CLI *)
  let%lwt ofd = Lwt_unix.openfile ofile [Lwt_unix.O_RDONLY] 0o600 in
  let ch = Lwt_io.of_fd ~mode:Lwt_io.input ofd in
  let%lwt line = try%lwt Lwt_io.read_line ch
                 with _ -> let%lwt _ = Lwt_io.printl "Failed to read the output file" in raise (Failure "Failed to read the output file") in
  let line = String.trim line in
  let%lwt _ = Lwt_io.close ch in
  (* Write to the log file *)
  let%lwt _ = Options.WithLwt.log_lock () in
  let%lwt _ = Options.WithLwt.unix ("cat \"" ^ lfile ^ "\" >> \"" ^ !Options.Std.logfile ^ "\"") in
  let _ =
    (* Log abnormal outputs *)
    if not (List.mem line ["sat"; "unsat"; "unknown"; "timeout"]) then
      let _ = Options.WithLwt.trace ("Got abnormal output:\n"
                                 ^ line ^ "\n"
                                 ^ "From the instruction:\n"
                                 ^ "#" ^ string_of_int idx ^ ": " ^ string_of_instr instr) in
      let _ = Options.WithLwt.trace_file ifile in
      ()
  in
  let%lwt _ = Options.WithLwt.log_unlock () in
  (* Remove temporary files *)
  let%lwt _ = cleanup_lwt [ofile; lfile] in
  (* Return the result *)
  Lwt.return (match line with
              | "sat" -> (id, timeout, idx, instr, ifile, "[FAILED]", false, false)
              | "unsat" -> (id, timeout, idx, instr, ifile, "[OK]", false, true)
              | "unknown" -> (id, timeout, idx, instr, ifile, "[FAILED]", false, false)
              | "timeout" -> (id, timeout, idx, instr, ifile, "[TIMEOUT]", true, true)
              | _ -> failwith ("Unknown result from the CLI: " ^ line))

let run_cli_visafety_with_cut cid id timeout idx instr ifile =
  let%lwt (id, timeout, idx, instr, ifile, ret_str, timedout, safe) = run_cli_visafety id timeout idx instr ifile in
  Lwt.return (cid, id, timeout, idx, instr, ifile, ret_str, timedout, safe)


(*
 * Run CLI to verify the safety of a cut as a single predicate.
 * id: the ID of this safety verification
 * s: a cut
 *)
let run_cli_vsafety ?comments id s =
  let ofile = tmpfile "safety_output_" "" in
  let lfile = tmpfile "safety_log_" "" in
  let ifile = tmpfile "safety_input_" "" in
  (* Write input *)
  let ch = open_out ifile in
  let _ = if !debug then
            let comments = Option.value (Option.map (make_line_comments "#!") comments) ~default:"" in
            output_string ch comments in
  let _ = output_string ch (string_of_rspec ~typ:true {rspre = s.rspre; rsprog = s.rsprog; rspost = [(Rtrue, [])]}); close_out ch in
  (* Run CLI *)
  let cmd = String.concat " "
                          [!cli_path;
                           if !debug then "-debug" else "";
                           (match !tmpdir with
                            | None -> ""
                            | Some d -> "-tmpdir \"" ^ d ^ "\"");
                           if !keep_temp_files then "-keep" else "";
                           "-c vsafety";
                           "-id " ^ string_of_int id;
                           ("-qfbv_solver " ^ !Options.Std.range_solver);
                           (if !Options.Std.range_solver_args = "" then ""
                            else "-qfbv_args \"" ^ !Options.Std.range_solver_args ^ "\"");
                           (if !Options.Std.use_btor then "-btor"
                            else "");
                           (if !Options.Std.apply_slicing then "-slicing"
                            else "");
                           (if !Options.Std.rename_local then "-rename_local"
                            else "");
                           "-o \"" ^ lfile ^ "\"";
                           "\"" ^ ifile ^ "\"";
                           "1> \"" ^ ofile ^ "\" 2>&1"
                          ] in
  let%lwt _ = Options.WithLwt.unix cmd in
  (* Read the output of CLI *)
  let%lwt ofd = Lwt_unix.openfile ofile [Lwt_unix.O_RDONLY] 0o600 in
  let ch = Lwt_io.of_fd ~mode:Lwt_io.input ofd in
  let%lwt line = try%lwt Lwt_io.read_line ch
                 with _ -> let%lwt _ = Lwt_io.printl "Failed to read the output file" in raise (Failure "Failed to read the output file") in
  let line = String.trim line in
  let%lwt _ = Lwt_io.close ch in
  (* Write to the log file *)
  let%lwt _ = Options.WithLwt.log_lock () in
  let%lwt _ = Options.WithLwt.unix ("cat \"" ^ lfile ^ "\" >> \"" ^ !Options.Std.logfile ^ "\"") in
  let _ =
    (* Log abnormal outputs *)
    if not (List.mem line ["sat"; "unsat"; "unknown"; "timeout"]) then
      let _ = Options.WithLwt.trace ("Got abnormal output:\n"
                                     ^ line) in
      let _ = Options.WithLwt.trace_file ifile in
      ()
  in
  let%lwt _ = Options.WithLwt.log_unlock () in
  (* Remove temporary files *)
  let%lwt _ = cleanup_lwt [ofile; lfile] in
  (* Return the result *)
  Lwt.return (match line with
              | "sat" -> false
              | "unsat" -> true
              | "unknown" -> false
              | "timeout" -> assert false
              | _ -> failwith ("Unknown result from the CLI: " ^ line))

(* Options.vscuts is handled in Std.verify_safety. *)
let verify_safety_conditions_cli options ?comments sid f p =
  let ifile = tmpfile "safety_input_" "" in
  let ch = open_out ifile in
  let _ = if !debug then
            let comments = Option.value (Option.map (make_line_comments "#!") comments) ~default:"" in
            output_string ch comments in
  let _ = output_string ch (string_of_rspec ~typ:true {rspre = f; rsprog = p; rspost = [(Rtrue, [])]}); close_out ch in
  let add_unsolved q res =
    match res with
    | Solved Unsat -> Unfinished [q]
    | Unfinished unsolved -> Unfinished (q::unsolved)
    | _ -> assert false in
  let delivered_helper r (id, timeout, idx, i, _ifile, ret_str, timedout, safe) =
    let _ = vprint ("\t\tSafety condition #" ^ string_of_int id ^ "\t\t") in
    let _ = vprintln (ret_str ^ (if timedout then " timeout = " ^ string_of_int timeout else "")) in
    match r with
    | Solved Sat | Solved Unknown -> r
    | _ ->
       if not safe then Solved Sat
       else if timedout then add_unsolved (id, timeout * 2, idx, i) r
       else r in
  let rec verify_round qs (res, pending) =
    match res with
      Solved Sat
    | Solved Unknown -> (res, pending)
    | _ ->
       if List.length pending < !jobs then
         match qs with
         | [] -> (res, pending)
         | (id, timeout, idx, i)::tl ->
            let promise = run_cli_visafety id timeout idx i ifile in
            verify_round tl (res, promise::pending)
       else
         let (res', pending') = work_on_pending delivered_helper res pending in
         verify_round qs (res', pending') in
  let rec verify_rec qs (res, pending) =
    let (res', pending') = verify_round qs (res, pending) in
    match res', pending' with
    | Solved r, [] -> if r = Unsat then true else false
    | Unfinished qs', _ -> verify_rec qs' (Solved Unsat, pending')
    | _ -> let (res'', pending'') = work_on_pending delivered_helper res' pending' in
           verify_rec [] (res'', pending'') in
  let add_instr_index = fun p -> List.mapi (fun idx i -> (!Options.Std.incremental_safety_timeout, idx, i)) p in
  let filter_out_true = fun qs -> List.filter (fun (_, _, i) -> bexp_instr_safe i <> True) qs in
  let in_verify_safety_ids (id, _, _, _) = mem_hashset_opt options.st_verify_safety_ids id in
  let add_cond_id = fun qs -> List.mapi (fun id (timeout, idx, i) -> (sid + id, timeout, idx, i)) qs in
  let all_safety_conds = add_instr_index p |> filter_out_true |> add_cond_id in
  let res = verify_rec (all_safety_conds |> List.filter in_verify_safety_ids |> List.rev) (Solved Unsat, []) in
  let _ = cleanup [ifile] in
  (res, sid + List.length all_safety_conds)


(*
 * Verify a range or an algebraic specification using CLI to run verification tasks.
 * s: a range or an algebraic specification
 * run_cli_verify: a function that verifies an atomic predicate
 * header_gen: int -> string -> string: a function that generats the header output to the log for some cut
 * flatten_spec: a function that converts a specification (containing no cut) into verification
 *               targets (in the form of specifications). For example, to verify algebraic
 *               assertions, convert a specifiction into several specifications where a post-condition
 *               corresponds to an algebraic property in an assertion.
 * cut_spec: a function that cuts the input specification
 * verify_cuts: a list option specifying the indices of cuts to be verified
 * verify_ids: an [(int Hashset.t) option] specifying the indices of specifications to be verified
 *)
let verify_spec_cli s run_cli_verify comments_gen header_gen flatten_spec cut_spec verify_cuts verify_ids =
  let delivered_helper res r = res && r in
  let verify_ands cid cut_headers (res, pending) (sid, s) =
    let header = header_gen cid (sid, s) (String.concat "" cut_headers) in
    let rec verify_ands_helper (res, pending) ss =
      if res then
        if List.length pending < !jobs then
          match ss with
          | [] -> (res, pending)
          | hd::tl ->
             let comments = comments_gen cid (sid, s) in
             let promise = run_cli_verify ?comments header hd in
             verify_ands_helper (res, promise::pending) tl
        else
          let (res', pending') = work_on_pending delivered_helper res pending in
          verify_ands_helper (res', pending') ss
      else
        (res, pending) in
    (* Check previous result *)
    if res && Options.Std.mem_hashset_opt verify_ids sid then
      let ss = flatten_spec s in
      verify_ands_helper (res, pending) ss
    else
      (res, pending) in
  apply_to_cuts_lwt verify_cuts verify_ands delivered_helper true [] (cut_spec s)

(* Run CLI to verify an espec (no conjunction in the postcondition, no cut). *)
let run_cli_vespec ?comments header s =
  let ifile = tmpfile "espec_input_" "" in
  let ofile = tmpfile "espec_output_" "" in
  let lfile = tmpfile "espec_log_" "" in
  (* Write the input to CLI *)
  let%lwt ifd = Lwt_unix.openfile ifile [Lwt_unix.O_WRONLY; Lwt_unix.O_CREAT; Lwt_unix.O_TRUNC] 0o600 in
  let ch = Lwt_io.of_fd ~mode:Lwt_io.output ifd in
  let%lwt _ = if !debug then let comments = Option.value (Option.map (make_line_comments "#!") comments) ~default:"" in
                             Lwt_io.write ch comments
              else Lwt.return_unit in
  let%lwt _ = Lwt_io.write ch (string_of_espec ~typ:true s) in
  let%lwt _ = Lwt_io.close ch in
  (* Run CLI *)
  let cmd = String.concat " "
                          [!cli_path;
                           if !debug then "-debug" else "";
                           (match !tmpdir with
                            | None -> ""
                            | Some d -> "-tmpdir \"" ^ d ^ "\"");
                           if !keep_temp_files then "-keep" else "";
                           "-c vespec";
                           if !debug then "-debug" else "";
                           ("-qfbv_solver " ^ !Options.Std.range_solver);
                           (if !Options.Std.range_solver_args = "" then "" else "-qfbv_args \"" ^ !Options.Std.range_solver_args ^ "\"");
                           (if !Options.Std.use_btor then "-btor" else "");
                           (if !Options.Std.incremental_safety then "-isafety" else "");
                           (if !Options.Std.incremental_safety then "-isafety_timeout " ^ string_of_int !Options.Std.incremental_safety_timeout else "");
                           (match !Options.Std.algebra_solver with
                            | Options.Std.Singular -> "-singular " ^ !Options.Std.singular_path
                            | Options.Std.Magma -> "-magma " ^ !Options.Std.magma_path
                            | Options.Std.Sage -> "-sage " ^ !Options.Std.sage_path
                            | Options.Std.Mathematica -> "-mathematica " ^ !Options.Std.mathematica_path
                            | Options.Std.Macaulay2 -> "-macaulay2 " ^ !Options.Std.macaulay2_path
                            | Options.Std.SMTSolver solver -> "smt:" ^ solver.algsmt_path
                            | _ -> "");
                           (if !Options.Std.algebra_solver_args = "" then ""
                            else "-algebra_args \"" ^ !Options.Std.algebra_solver_args ^ "\"");
                           (if not !Options.Std.apply_rewrite_mov then "-disable_rewriting:mov" else "");
                           (if not !Options.Std.apply_rewrite_vpc then "-disable_rewriting:vpc" else "");
                           (if not !Options.Std.apply_rewrite_poly then "-disable_rewriting:poly" else "");
                           (if !Options.Std.carry_constraint then ""
                            else "-no_carry_constraint");
                           "-vo " ^ string_of_variable_ordering !Options.Std.variable_ordering;
                           (if !Options.Std.polys_rewrite_replace_eexp then "-re" else "");
                           (if !Options.Std.apply_slicing then "-slicing" else "");
                           (if !Options.Std.rename_local then "-rename_local" else "");
                           (if !Options.Std.two_phase_rewriting then "-two_phase_rewriting" else "");
                           (if !Options.Std.track_split then "-track-split" else "");
                           (if !Options.Std.apply_rewrite_eqmod then "-enable_rewriting:eqmod" else "");
                           "-o \"" ^ lfile ^ "\"";
                           "\"" ^ ifile ^ "\"";
                           "1> \"" ^ ofile ^ "\" 2>&1"
                          ] in
  let%lwt _ = Options.WithLwt.unix cmd in
  (* Read the output of CLI *)
  let%lwt ofd = Lwt_unix.openfile ofile [Lwt_unix.O_RDONLY] 0o600 in
  let ch = Lwt_io.of_fd ~mode:Lwt_io.input ofd in
  let%lwt line = try%lwt Lwt_io.read_line ch
                 with _ -> let%lwt _ = Lwt_io.printl "Failed to read the output file" in raise (Failure "Failed to read the output file") in
  let line = String.trim line in
  let%lwt _ = Lwt_io.close ch in
  (* Write to the log file *)
  let%lwt _ = Options.WithLwt.log_lock () in
  let%lwt _ = Options.WithLwt.trace header in
  let%lwt _ = Options.WithLwt.trace_file lfile in
  let _ =
    (* Log abnormal outputs *)
    if line <> "true" && line <> "false" then
      let _ = Options.WithLwt.trace ("Got abnormal output:") in
      let _ = Options.WithLwt.trace line in
      let _ = Options.WithLwt.trace ("From the input:") in
      let _ = Options.WithLwt.trace_file ifile in
      ()
  in
  let%lwt _ = Options.WithLwt.log_unlock () in
  (* Remove temporary files *)
  let%lwt _ = cleanup_lwt [ifile; ofile; lfile] in
  (* Return the result *)
  Lwt.return (String.trim line = "true")

(*
 * Run CLI to verify an espec (no conjunction in the postcondition, no cut).
 * Check if the input specification is trivially valid first.
 *)
let run_cli_vespec ?comments header s =
  (* NOTE: any logging here increases the verification time pretty much for trivial specifications/assertions *)
  let%lwt res =
    if is_espec_trivial s then Lwt.return_true
    else run_cli_vespec ?comments header s in
  Lwt.return res

(* The top function of verifying algebraic specifications when !jobs > 1 and CLI is enabled. *)
let verify_espec_cli options s =
  let _ = safe_trace "===== Verifying algebraic specifications =====" in
  verify_spec_cli
    s
    run_cli_vespec
    (fun cid (sid, s) -> Some [ "Verify: algebraic specifications";
                                Printf.sprintf "Track: %s" options.st_tag;
                                "Cut: #" ^ string_of_int cid;
                                "Algebraic specification #" ^ string_of_int sid ^ ": " ^ string_of_ebexp_prove_with s.espost ])
    (fun _ _ cut_header -> cut_header)
    split_espec_post cut_espec options.st_verify_ecuts None

(* Run CLI to verify a rspec (no conjunction in the postcondition, no cut). *)
let run_cli_vrspec ?comments header s =
  let ifile = tmpfile "rspec_input_" "" in
  let ofile = tmpfile "rspec_output_" "" in
  let lfile = tmpfile "rspec_log_" "" in
  (* Write the input to CLI *)
  let%lwt ifd = Lwt_unix.openfile ifile [Lwt_unix.O_WRONLY; Lwt_unix.O_CREAT; Lwt_unix.O_TRUNC] 0o600 in
  let ch = Lwt_io.of_fd ~mode:Lwt_io.output ifd in
  let _ = if !debug then let comments = Option.value (Option.map (make_line_comments "#!") comments) ~default:"" in
                         Lwt_io.write ch comments
          else Lwt.return_unit in
  let%lwt _ = Lwt_io.write ch (string_of_rspec ~typ:true s) in
  let%lwt _ = Lwt_io.close ch in
  (* Run CLI *)
  let cmd = String.concat " "
                          [!cli_path;
                           if !debug then "-debug" else "";
                           (match !tmpdir with
                            | None -> ""
                            | Some d -> "-tmpdir \"" ^ d ^ "\"");
                           if !keep_temp_files then "-keep" else "";
                           "-c vrspec";
                           ("-qfbv_solver " ^ !Options.Std.range_solver);
                           (if !Options.Std.range_solver_args = "" then ""
                            else "-qfbv_args \"" ^ !Options.Std.range_solver_args ^ "\"");
                           (if !Options.Std.use_btor then "-btor"
                            else "");
                           (if not !Options.Std.apply_rewrite_mov then "-disable_rewriting:mov"
                            else "");
                           (if not !Options.Std.apply_rewrite_vpc then "-disable_rewriting:vpc"
                            else "");
                           (if not !Options.Std.apply_rewrite_poly then "-disable_rewriting:poly"
                            else "");
                           (if !Options.Std.apply_slicing then "-slicing"
                            else "");
                           (if !Options.Std.rename_local then "-rename_local"
                            else "");
                           "-o \"" ^ lfile ^ "\"";
                           "\"" ^ ifile ^ "\"";
                           "1> \"" ^ ofile ^ "\" 2>&1"
                          ] in
  let%lwt _ = Options.WithLwt.unix cmd in
  (* Read the output of CLI *)
  let%lwt ofd = Lwt_unix.openfile ofile [Lwt_unix.O_RDONLY] 0o600 in
  let ch = Lwt_io.of_fd ~mode:Lwt_io.input ofd in
  let%lwt line = try%lwt Lwt_io.read_line ch
                 with _ -> let%lwt _ = Lwt_io.printl "Failed to read the output file" in raise (Failure "Failed to read the output file") in
  let line = String.trim line in
  let%lwt _ = Lwt_io.close ch in
  (* Write to the log file *)
  let%lwt _ = Options.WithLwt.log_lock () in
  let%lwt _ = Options.WithLwt.trace header in
  let%lwt _ = Options.WithLwt.trace_file lfile in
  let _ =
    (* Log abnormal outputs *)
    if line <> "true" && line <> "false" then
      let _ = Options.WithLwt.trace ("Got abnormal output:") in
      let _ = Options.WithLwt.trace line in
      let _ = Options.WithLwt.trace ("From the input:") in
      let _ = Options.WithLwt.trace_file ifile in
      ()
  in
  let%lwt _ = Options.WithLwt.log_unlock () in
  (* Remove temporary files *)
  let%lwt _ = cleanup_lwt [ifile; ofile; lfile] in
  (* Return the result *)
  Lwt.return (String.trim line = "true")

(*
 * Run CLI to verify a rspec (no conjunction in the postcondition, no cut).
 * Check if the input specification is trivially valid first.
 *)
let run_cli_vrspec ?comments header s =
  (* NOTE: any logging here increases the verification time pretty much for trivial specifications/assertions *)
  let%lwt res =
    if is_rspec_trivial s then Lwt.return_true
    else run_cli_vrspec ?comments header s in
  Lwt.return res

(* The top function of verifying range specifications when !jobs > 1 and CLI is enabled. *)
let verify_rspec_cli options s _ =
  let _ = safe_trace "===== Verifying range specifications =====" in
  verify_spec_cli
    s
    run_cli_vrspec
    (fun cid (sid, s) -> Some [ "Verify: range specifications";
                                Printf.sprintf "Track: %s" options.st_tag;
                                "Cut: #" ^ string_of_int cid;
                                "Range specification #" ^ string_of_int sid ^ ": " ^ string_of_rbexp_prove_with s.rspost ])
    (fun _ _ cut_header -> cut_header)
    split_rspec_post cut_rspec options.st_verify_rcuts None

(* The top function of verifying algebraic assertions when !jobs > 1 and CLI is enabled. *)
let verify_eassert_cli options s =
  let _ = safe_trace "===== Verifying algebraic assertions =====" in
  verify_spec_cli
    (espec_of_spec s)
    run_cli_vespec
    (fun cid (sid, s) -> Some [ "Verify: algebraic assertions";
                                Printf.sprintf "Track: %s" options.st_tag;
                                "Cut: #" ^ string_of_int cid;
                                "Algebraic assertion #" ^ string_of_int sid ^ ": " ^ string_of_ebexp_prove_with s.espost ])
    (fun _ _ cut_header -> cut_header)
    split_espec_post cut_eassert options.st_verify_eacuts options.st_verify_eassert_ids

(* The top function of verifying range assertions when !jobs > 1 and CLI is enabled. *)
let verify_rassert_cli options s =
  let _ = safe_trace "===== Verifying range assertions =====" in
  verify_spec_cli
    (rspec_of_spec s)
    run_cli_vrspec
    (fun cid (sid, s) -> Some [ "Verify: range assertions";
                                Printf.sprintf "Track: %s" options.st_tag;
                                "Cut: #" ^ string_of_int cid;
                                "Range assertion #" ^ string_of_int sid ^ ": " ^ string_of_rbexp_prove_with s.rspost ])
    (fun _ _ cut_header -> cut_header)
    split_rspec_post cut_rassert options.st_verify_racuts options.st_verify_rassert_ids

let verify_safety_inc_cli options ?comments s _hashopt =
  let continue_helper ((res, _, _), _) = res in
  let delivered_helper ((rsafe, rsid, rifiles), rtimedouts) (cid, id, timeout, idx, i, ifile, res_str, timedout, safe) =
    let _ = vprintln (Printf.sprintf "\tCut #%d, Condition #%d, Timeout %d\t%s" cid id timeout res_str) in
    ((rsafe && safe, rsid, rifiles), (if timedout then (cid, id, timeout * 2, idx, i, ifile)::rtimedouts else rtimedouts)) in
  let make_promise (cid, id, timeout, idx, i, ifile) () = run_cli_visafety_with_cut cid id timeout idx i ifile in
  let verify_cut cid _header (((res, sid, ifiles), timedouts), pending) (_, s) =
    if res then
      let ifile =
        let ifile = tmpfile "safety_input_" "" in
        let ch = open_out ifile in
        let _ = if !debug then
                  let comments = Option.value (Option.map (make_line_comments "#!") comments) ~default:"" in
                  output_string ch comments in
        let _ = output_string ch (string_of_rspec ~typ:true {rspre = s.rspre; rsprog = s.rsprog; rspost = [(Rtrue, [])]}); close_out ch in
        ifile in
      let add_instr_index = fun p -> List.mapi (fun idx i -> (!Options.Std.incremental_safety_timeout, idx, i)) p in
      let filter_out_true = fun qs -> List.filter (fun (_, _, i) -> bexp_instr_safe i <> True) qs in
      let add_cond_id = fun qs -> List.mapi (fun id (timeout, idx, i) -> (sid + id, timeout, idx, i, ifile)) qs in
      let in_verify_safety_ids (id, _, _, _, _) = mem_hashset_opt options.st_verify_safety_ids id in
      let conds = add_instr_index s.rsprog |> filter_out_true |> add_cond_id |> List.filter in_verify_safety_ids in
      let next_sid = sid + List.length conds in
      let promises_rev = List.fold_left (
                             fun promises_rev (id, timeout, idx, i, ifile) ->
                             let promise = make_promise (cid, id, timeout, idx, i, ifile) in
                             promise::promises_rev
                           ) [] conds in
      let _ = if next_sid > sid then vprintln(Printf.sprintf "\t=> Cut #%d: %d safety conditions (#%d - #%d)" cid (List.length conds) sid (next_sid - 1))
              else vprintln(Printf.sprintf "\t=> Cut #%d: %d safety conditions" cid (List.length conds)) in
      add_to_pending continue_helper delivered_helper ((res, next_sid, ifile::ifiles), timedouts) pending (List.rev promises_rev)
    else (((res, sid, ifiles), timedouts), pending) in
  let (((res, sid, ifiles), timedouts_rev), pending) = apply_to_cuts_lwt_unfinished options.st_verify_scuts verify_cut ((true, 0, []), []) [] (cut_safety (rspec_of_spec s)) in
  let (res, _, _) = finish_pending_with_timedouts continue_helper delivered_helper (tmap make_promise) ((res, sid, ifiles), List.rev timedouts_rev) pending in
  let _ = cleanup_lwt ifiles in
  res

let verify_safety_all_cli options ?comments s _hashopt =
  let delivered_helper (rsafe, rsid) safe = (rsafe && safe, rsid) in
  let verify_cut cid _header ((res, sid), pending) (_, s) =
    if res then if Options.Std.mem_hashset_opt options.st_verify_safety_ids sid
                then let comments = append_comments_option comments [ "Cut: #" ^ string_of_int cid;
                                                                      "Target: all instructions in this cut" ] in
                     let promise () = run_cli_vsafety ~comments sid s in
                     add_to_pending fst delivered_helper (res, sid + 1) pending [promise]
                else ((res, sid + 1), pending)
    else ((res, sid), pending) in
  let (res, _) = apply_to_cuts_lwt options.st_verify_scuts verify_cut delivered_helper (true, 0) [] (cut_safety (rspec_of_spec s)) in
  res

(* verify safety parallelly by CLI *)
let verify_safety_cli options ?comments s hashopt =
  if !incremental_safety then verify_safety_inc_cli options ?comments s hashopt
  else verify_safety_all_cli options ?comments s hashopt


let get_filtered_indexed_sndconds options vgen sid f p =
  let assoc_safety_ids base i sndcond = (base + i, sndcond) in
  let assoc_program_prefix sndconds =
    let rec helper res_rev rev_p p sndconds =
      match p, sndconds with
      | _, [] -> List.rev res_rev
      | [], (i, _)::_ -> failwith (Printf.sprintf "Failed to find the program prefix of instruction: %s" (string_of_instr i))
      | i'::p', (i, sndcond)::sndconds' ->
         if i = i'
                  (* Note that an instruction in sndconds may appear more than once *)
         then helper ((i, f, List.rev rev_p, sndcond)::res_rev) rev_p p sndconds'
         else helper res_rev (i'::rev_p) p' sndconds in
    helper [] [] p sndconds in
  let in_verify_safety_ids (id, _) = Options.Std.mem_hashset_opt options.st_verify_safety_ids id in
  let (vgen, sndconds_rev) =
    List.fold_left
      (fun (vgen, res_rev) i -> let (vgen, conds) = Mip.safety_conditions_of_instr vgen i in
                                (vgen, (List.rev_map (fun cond -> (i, cond)) conds |> List.rev)::res_rev)
      ) (vgen, []) p in
  let sndconds = List.rev sndconds_rev |> tflatten in
  let indexed_sndconds = assoc_program_prefix sndconds |> List.mapi (assoc_safety_ids sid) |> List.filter in_verify_safety_ids in
  (vgen, sid + List.length sndconds, indexed_sndconds)

(* the input specification contains no cut *)
(* todo: support timeout *)
let verify_safety_mip_conditions_cli options ?comments vgen sid s =
  let delivered_helper r (id, safe, ret_str) =
    let _ = vprint ("\t\tSafety condition #" ^ string_of_int id ^ "\t\t") in
    let _ = vprintln ret_str in
    match r with
    | Solved Sat | Solved Unknown -> r
    | _ ->
       if not safe then Solved Sat
       else r in
  let rec verify_round (res, pending) indexed_sndconds =
    match res with
      Solved Sat
    | Solved Unknown -> (res, pending)
    | _ ->
       if List.length pending < !jobs then
         match indexed_sndconds with
         | [] -> (res, pending)
         | (id, (_i, f, p, sndcond))::tl ->
            let espec_for_safety = { espre = f; esprog = p; espost = [(sndcond, [AlgebraSolver !Options.Std.mip_safety_solver])] } in
            let promise =
              let%lwt res = run_cli_vespec ?comments "" espec_for_safety in
              Lwt.return (id, res, if res then "[OK]" else "[FAILED]") in
            verify_round (res, promise::pending) tl
       else
         let (res', pending') = work_on_pending delivered_helper res pending in
         verify_round (res', pending') indexed_sndconds in
  let rec verify_rec (res, pending) indexed_sndconds =
    let (res', pending') = verify_round (res, pending) indexed_sndconds in
    match res', pending' with
    | Solved r, [] -> (if r = Unsat then true else false)
    | Unfinished _, _ -> assert false
    | _ -> let (res'', pending'') = work_on_pending delivered_helper res' pending' in
           verify_rec (res'', pending'') [] in
  let (_, next_sid, indexed_sndconds) = get_filtered_indexed_sndconds options vgen sid s.espre s.esprog in
  let res = verify_rec (Solved Unsat, []) indexed_sndconds in
  (res, next_sid)

let verify_safety_mip_cross_cuts_cli options ?comments vgen s =
  let continue_helper (res, _) = res in
  let delivered_helper (rsafe, rsid) (cid, id, safe, ret_str) =
    let _ = vprintln (Printf.sprintf "\tCut #%d, Condition #%d\t\t%s" cid id ret_str) in
    (rsafe && safe, rsid) in
  let make_promise (cid, id, f, p, sndcond) () =
    let espec_for_safety = { espre = f; esprog = p; espost = [(sndcond, [AlgebraSolver !Options.Std.mip_safety_solver])] } in
    let promise =
      let%lwt res = run_cli_vespec ?comments "" espec_for_safety in
      Lwt.return (cid, id, res, if res then "[OK]" else "[FAILED]") in
    promise in
  let verify_cut cid _header ((res, sid), pending) (_, s) =
    if res then
      let (_, next_sid, indexed_sndconds) = get_filtered_indexed_sndconds options vgen sid s.espre s.esprog in
      let promises_rev = List.fold_left (
                             fun promises_rev (id, (_, f, p, sndcond)) ->
                             let promise = make_promise (cid, id, f, p, sndcond) in
                             promise::promises_rev
                           ) [] indexed_sndconds in
      let _ = if next_sid > sid then vprintln(Printf.sprintf "\t=> Cut #%d: %d safety conditions (#%d - #%d)" cid (List.length indexed_sndconds) sid (next_sid - 1))
              else vprintln(Printf.sprintf "\t=> Cut #%d: %d safety conditions" cid (List.length indexed_sndconds)) in
      add_to_pending continue_helper delivered_helper (res, next_sid) pending (List.rev promises_rev)
    else ((res, sid), pending) in
  let ((res, _), pending) = apply_to_cuts_lwt_unfinished options.st_verify_scuts verify_cut (true, 0) [] (cut_esafety (espec_of_spec s)) in
  let res = finish_pending_with_timedouts continue_helper delivered_helper (tmap make_promise) (res, []) pending in
  res



(** Testers for Abstract Interpretation *)

let test_absdom_lwt options ?(safe=true) s =
  let test_var cid mgr dom s v =
    fun () ->
    let (inf, sup) = Absdom.Std.zinterval_of_var mgr dom v in
    if Z.equal inf (min_of_typ (typ_of_var v)) && Z.equal sup (max_of_typ (typ_of_var v)) then Lwt.return (true, cid, v, inf, sup)
    else let op = if var_is_signed v then rsle else rule in
         let w = size_of_var v in
         let e = rand (op w (rconst w inf) (rvar v)) (op w (rvar v) (rconst w sup)) in
         let%lwt res = verify_rspec_single_conjunct [] { s with rspost = [(e, [])] } None in
         Lwt.return (res, cid, v, inf, sup) in
  let delivered_helper res (resv, cid, v, inf, sup) =
    let _ = let str = Printf.sprintf "    Cut #%d, var %s:" cid (string_of_var v) in
            let _ = vprintln(Printf.sprintf "%-55s%-8s" str (if resv then "[OK]" else "[FAIL]")) in
            () in
    let _ = if not resv then vprintln(Printf.sprintf "    Failed interval: [%s, %s]" (Z.to_string inf) (Z.to_string sup)) in
    res && resv in
  let test_cut cid _ (res, pending) (_, s) =
    if res then let vars = vars_rspec s in
                let lvs = lvs_program s.rsprog in
                let mgr = Absdom.Std.create_manager vars in
                let vars_dom = Absdom.Std.abs_of_vars mgr (VS.diff vars lvs) in
                match Absdom.Std.abs_of_rbexp ~abs:vars_dom mgr s.rspre with
                | Some dom ->
                   let start_dom = Absdom.Std.meet mgr dom vars_dom in
                   let dom' = Absdom.Std.interp_prog ~safe mgr start_dom s.rsprog in
                   if Absdom.Std.is_bottom mgr dom'
                   then let _ = let str = Printf.sprintf "    Cut #%d" cid in
                                vprintln (Printf.sprintf "%-55s%s" str "[BOTTOM]") in
                        (false, pending)
                   else let tasks = List.map (test_var cid mgr dom' s) (VS.elements lvs) in
                        add_to_pending Fun.id delivered_helper res pending tasks
                | None ->
                   let _ = let str = Printf.sprintf "    Cut #%d" cid in
                           vprintln(Printf.sprintf "%-55s%-8s" str "[SKIP]") in
                   (res, pending)
    else (res, pending) in
  let res = apply_to_cuts_lwt options.st_verify_rcuts test_cut delivered_helper true [] (remove_assert_spec s |> merge_bexp_prove_with_spec |> rspec_of_spec |> cut_rspec) in
  res

let test_tagged_absdom_lwt options ?(safe=true) ts =
  let verify_one_track tag =
    let options = st_options_of_tag tag options in
    let s = spec_of_tag tag ts in
    test_absdom_lwt options ~safe:safe s in
  SS.for_all verify_one_track (Common.get_tags_to_be_verified ts)
