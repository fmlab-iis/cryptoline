
open Options.Std
open Ast.Cryptoline
open Qfbv.Common
open Qfbv.Std
open Common
open Utils
open Utils.Std

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
                  let _ = trace ("=== Cut #" ^ string_of_int i ^ " ===") in
                  let res = List.fold_left (f i) res hd in
                  helper (i+1) res tl
                else
                  let _ = trace ("=== Skip Cut #" ^ string_of_int i ^ " ===") in
                  helper (i+1) res tl in
  helper 0 res ss

(** Verification *)

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
  let q = bexp_instr_safe i in
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
           let _ = vprint ("\t\tSafety condition #" ^ string_of_int id ^ "\t\t") in
           let (revp', p') = find_program_prefix i revp p in
           let fp = safety_assumptions f (List.rev revp') q hashopt in
           match solve_simp ~comments:(append_comments_option comments [ "Safety condition: #" ^ string_of_int id;
                                                                         "Instruction: " ^ string_of_instr i ]) ~timeout:timeout (fp@[q]) with
           | Sat -> let _ = vprintln "[FAILED]" in (Solved Sat, revp', p')
           | Unknown -> let _ = vprintln "[FAILED]" in (Solved Unknown, revp', p')
           | Unsat -> let _ = vprintln "[OK]" in (res, revp', p')
         with Tasks.TimeoutException ->
           let _ = vprintln "[TIMEOUT]" in
           (add_unsolved (id, i, q) res, revp, p) in
       let t2 = Unix.gettimeofday() in
       let _ = Options.Std.trace("Execution of safety task: " ^ string_of_running_time t1 t2 ^ "\n") in
       res in
  let (res, _, _) = List.fold_left fold_fun (Solved Unsat, [], p) qs in
  res

(*
 * Verify safety conditions of a cut incrementally.
 * sid: the ID of the next safety condition
 * s: a cut (of type rspec) to be verified
 *)
let verify_safety_of_cut_inc ?comments sid s hashopt =
  let add_offset_to_safety_ids offset (id, instr, cond) = (id + offset, instr, cond) in
  let in_verify_safety_ids (id, _, _) = Options.Std.mem_hashset_opt !Options.Std.verify_safety_ids id in
  let round = ref 1 in
  let timeout = ref !incremental_safety_timeout in
  let safety = ref None in
  let all_conds = bexp_program_safe_conds s.rsprog in
  let next_sid = sid + List.length all_conds in
  let qs = ref (all_conds |> tmap (add_offset_to_safety_ids sid) |> List.filter in_verify_safety_ids) in
  let _ =
    while !safety = None do
      let _ = trace ("== Number of safety conditions to be verified: " ^ string_of_int (List.length !qs) ^ " ==") in
      let _ = vprintln ("\t     Round " ^ string_of_int !round ^ " ("
                        ^ string_of_int (List.length !qs) ^ " safety conditions, timeout = "
                        ^ string_of_int !timeout ^ " seconds)") in
      let comments = append_comments_option comments [ "Round: " ^ string_of_int !round;
                                                       "Timeout: " ^ string_of_int !timeout ] in
      let res =
        if !jobs > 1 then
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
let verify_safety_of_cut ?comments sid s hashopt =
  let t1 = Unix.gettimeofday() in
  let g = bexp_program_safe s.rsprog in
  let fp = safety_assumptions s.rspre s.rsprog g hashopt in
  let res = solve_simp ~comments:(rcons_comments_option comments "Target: all instructions in this cut") (fp@[g]) = Unsat in
  let t2 = Unix.gettimeofday() in
  let _ = Options.Std.trace("Execution of safety task: " ^ string_of_running_time t1 t2) in
  (res, sid + 1)

(* Verify safety conditions cut by cut.
   Verify the safety conditions of the next cut when all the safety conditions
   of the previous cut have been verified. *)
let verify_safety_cut_by_cut s hashopt =
  let _ = trace "===== Verifying program safety =====" in
  let _ = if !incremental_safety then vprintln "" in
  let verify_safety_without_cuts cid (_, sid) s =
    let msgs = [ "Verify: safety";
                 "Cut: #" ^ string_of_int cid ] in
    if !incremental_safety then
      let _ = vprintln ("\tCut " ^ string_of_int cid) in
      if !jobs > 1 && !Options.Std.use_cli then WithLwt.verify_safety_conditions_cli ~comments:msgs sid s.rspre s.rsprog
      else verify_safety_of_cut_inc ~comments:msgs sid s hashopt
    else verify_safety_of_cut ~comments:msgs sid s hashopt in
  (* Check previous result, cid: cut id, sid: id of the next safety condition *)
  let verify_safety_without_cuts cid (res, sid) (_, s) =
    if res then verify_safety_without_cuts cid (res, sid) s
    else (res, sid) in
  let (res, _) = apply_to_cuts !verify_scuts verify_safety_without_cuts (true, 0) (cut_safety (rspec_of_spec s)) in
  let _ = if !incremental_safety then vprint "\tOverall\t\t\t\t\t" in
  res



(* Verify safety of a cut per instruction incrementally and sequentially *)
let verify_safety_inc_seq ?comments sid s hashopt =
  let add_offset_to_safety_ids offset (id, instr, cond) = (id + offset, instr, cond) in
  let in_verify_safety_ids (id, _, _) = Options.Std.mem_hashset_opt !Options.Std.verify_safety_ids id in
  let round = ref 1 in
  let timeout = ref !incremental_safety_timeout in
  let safety = ref None in
  let all_conds = bexp_program_safe_conds s.rsprog in
  let next_sid = sid + List.length all_conds in
  let qs = ref (all_conds |> tmap (add_offset_to_safety_ids sid) |> List.filter in_verify_safety_ids) in
  let _ =
    while !safety = None do
      let _ = trace ("== Number of safety conditions to be verified: " ^ string_of_int (List.length !qs) ^ " ==") in
      let _ = vprintln ("\t     Round " ^ string_of_int !round ^ " ("
                        ^ string_of_int (List.length !qs) ^ " safety conditions, timeout = "
                        ^ string_of_int !timeout ^ " seconds)") in
      let comments = append_comments_option comments [ "Round: " ^ string_of_int !round;
                                                       "Timeout: " ^ string_of_int !timeout ] in
      let res = verify_safety_conditions ~comments !timeout s.rspre s.rsprog !qs hashopt in
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

(* Verify safety of a cut as a single predicate. *)
let verify_safety_all_seq ?comments sid s hashopt =
  if Options.Std.mem_hashset_opt !Options.Std.verify_safety_ids sid
  then let t1 = Unix.gettimeofday() in
       let g = bexp_program_safe s.rsprog in
       let fp = safety_assumptions s.rspre s.rsprog g hashopt in
       let res = solve_simp ~comments:(rcons_comments_option comments "Verify: safety (all in one query)") (fp@[g]) = Unsat in
       let t2 = Unix.gettimeofday() in
       let _ = Options.Std.trace("Execution of safety task: " ^ string_of_running_time t1 t2) in
       (res, sid + 1)
  else (true, sid + 1)

(* Verify safety of a specification sequentially *)
let verify_safety_seq ?comments s hashopt =
  (* cid: cut id, sid: id of the next safety condition *)
  let verify_cut cid (res, sid) (_, s) =
    if res then let comments = rcons_comments_option comments ("Cut: #" ^ string_of_int cid) in
                if !incremental_safety then let _ = vprintln ("\tCut " ^ string_of_int cid) in
                                            verify_safety_inc_seq ~comments sid s hashopt
                else verify_safety_all_seq ~comments sid s hashopt
    else (res, sid) in
  let (res, _) = apply_to_cuts !verify_scuts verify_cut (true, 0) (cut_safety (rspec_of_spec s)) in
  res

(* Verify safety of a specification across cuts.
   Verify the safety conditions of the next cut whenever there are free
   job workers.
 *)
let verify_safety_across_cuts s hashopt =
  let _ = trace "===== Verifying program safety =====" in
  let _ = if !incremental_safety then vprintln "" in
  let comments = [ "Verify: safety" ] in
  let res =
    if !jobs > 1 then
      if !use_cli then WithLwt.verify_safety_cli ~comments s hashopt
      else WithLwt.verify_safety_lwt ~comments s hashopt
    else verify_safety_seq ~comments s hashopt in
  let _ = if !incremental_safety then vprint "\tOverall safety\t\t\t\t" in
  res

(*
 * The top function of verifying safety conditions.
 *
 * cross_cuts? -- verify_safety_across_cuts -- jobs > 1? -- use_cli? -- WithLwt.verify_safety_cli -- incremental_safety? -- WithLwt.verify_safety_inc_cli
 *             |                                         |           |                                                   |- WithLiwt.verify_safety_all_cli
 *             |                                         |           |- WithLwt.verify_safety_lwt -- incremental_safety? -- WithLwt.verify_safety_inc_lwt
 *             |                                         |                                                               |- WithLwt.verify_safety_all_lwt
 *             |                                         |- verify_safety_seq -- incremental_safety? -- verify_safety_inc_seq
 *             |                                                                                     |- verify_safety_all_seq
 *             |- verify_safety_cut_by_cut -- incremental_safety? -- jobs > 1? &% use_cli? -- WithLwt.verify_safety_conditions_cli
 *                                                                |                        |- verify_safety_of_cut_inc (sequential or parallel with Lwt)
 *                                                                |- verify_safety_of_cut
 *)
let verify_safety s hashopt =
  if !cross_cuts then verify_safety_across_cuts s hashopt
  else verify_safety_cut_by_cut s hashopt





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
  trace "INPUT TO SINGULAR:";
  trace_file ifile;
  trace ""

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
  trace "INPUT TO SAGE:";
  trace_file ifile;
  trace ""

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
  trace "INPUT TO MAGMA:";
  trace_file ifile;
  trace ""

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
  trace "INPUT TO MATHEMATICA:";
  trace_file ifile;
  trace ""

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
  trace "INPUT TO MACAULAY2:";
  trace_file ifile;
  trace ""

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
  trace "INPUT TO MAPLE:";
  trace_file ifile;
  trace ""

let run_singular ifile ofile =
  let t1 = Unix.gettimeofday() in
  unix (!singular_path ^ " -q " ^ !Options.Std.algebra_solver_args ^ " \"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2>&1");
  let t2 = Unix.gettimeofday() in
  trace ("Execution time of Singular: " ^ string_of_running_time t1 t2);
  trace "OUTPUT FROM SINGULAR:";
  trace_file ofile;
  trace ""

let run_sage ifile ofile =
  let t1 = Unix.gettimeofday() in
  unix (!sage_path ^ " " ^ !Options.Std.algebra_solver_args ^ " \"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2>&1");
  let t2 = Unix.gettimeofday() in
  trace ("Execution time of Sage: " ^ string_of_running_time t1 t2);
  trace "OUTPUT FROM SAGE:";
  trace_file ofile;
  trace ""

let run_magma ifile ofile =
  let t1 = Unix.gettimeofday() in
  unix (!magma_path ^ " -b " ^ !Options.Std.algebra_solver_args ^ " \"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2>&1");
  let t2 = Unix.gettimeofday() in
  trace ("Execution time of Magma: " ^ string_of_running_time t1 t2);
  trace "OUTPUT FROM MAGMA:";
  trace_file ofile;
  trace ""

let run_mathematica ifile ofile =
  let t1 = Unix.gettimeofday() in
  unix (!mathematica_path ^ " " ^ !Options.Std.algebra_solver_args ^ " -file \"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2>&1");
  let t2 = Unix.gettimeofday() in
  trace ("Execution time of Mathematica: " ^ string_of_running_time t1 t2);
  trace "OUTPUT FROM MATHEMATICA:";
  trace_file ofile;
  trace ""

let run_macaulay2 ifile ofile =
  let t1 = Unix.gettimeofday() in
  unix (!macaulay2_path ^ " --script \"" ^ ifile ^ "\" --silent " ^ !Options.Std.algebra_solver_args ^ " 1> \"" ^ ofile ^ "\" 2>&1");
  let t2 = Unix.gettimeofday() in
  trace ("Execution time of Macaulay2: " ^ string_of_running_time t1 t2);
  trace "OUTPUT FROM MACAULAY2:";
  trace_file ofile;
  trace ""

let run_maple ifile ofile =
  let t1 = Unix.gettimeofday() in
  unix (!maple_path ^ " -q " ^ !Options.Std.algebra_solver_args ^ " \"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2>&1");
  let t2 = Unix.gettimeofday() in
  trace ("Execution time of Maple: " ^ string_of_running_time t1 t2);
  trace "OUTPUT FROM MAPLE:";
  trace_file ofile;
  trace ""

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
  in
  let _ = cleanup [ifile; ofile] in
  res


let verify_rspec_single_conjunct_abs_interp ?_comments s hashopt =
  let s' = if !apply_slicing then slice_rspec_ssa s hashopt else s in
  let vs = vars_rspec s' in
  let mgr = Absdom.Std.create_manager vs in
  match Absdom.Std.dom_of_rbexp mgr s'.rspre with
  | Some dom ->
     let dom' = Absdom.Std.interp_prog mgr dom s'.rsprog in
     let _ = Absdom.Std.print_dom mgr dom' in
     let (rs, _) = merge_rbexp_prove_with s'.rspost in
     Absdom.Std.sat_rbexp mgr dom' rs
  | _ -> false

(* Applied in this function: slicing, solving *)
let verify_rspec_single_conjunct ?comments s hashopt =
  let heuristics s =
    !Options.Std.abs_interp &&
      (verify_rspec_single_conjunct_abs_interp s hashopt) in
  let verify s =
    let f = bexp_rbexp s.rspre in
    let p = bexp_program s.rsprog in
    let g = bexp_rbexp (rbexp_prove_with_rands s.rspost) in
    let solver = range_solver_of_prove_with (rbexp_prove_with_specs s.rspost) in
    solve_simp
      ~comments:(rcons_comments_option comments ("Range condition: " ^ string_of_bexp g))
      ~solver:solver (f::p@[g]) = Unsat in
  (is_rspec_trivial s) || heuristics s ||
    (verify (if !apply_slicing then slice_rspec_ssa s hashopt else s))

(* Applied in this function: split conjunctions *)
let verify_rspec_without_cuts ?comments hashopt s =
  let verify res s = if res then verify_rspec_single_conjunct ?comments s hashopt
                     else res in
  List.fold_left verify true (split_rspec_post s)

(* Applied in this function: split cuts *)
let verify_rspec_with_cuts ?comments hashopt s =
  (* Check previous result *)
  let verify cid res (sid, s) =
    if res then verify_rspec_without_cuts
                  ~comments:(append_comments_option comments [ "Cut: #" ^ string_of_int cid;
                                                               "Range specification #" ^ string_of_int sid ^ ": " ^ string_of_rbexp_prove_with s.rspost ])
                  hashopt s
    else res in
  apply_to_cuts !verify_rcuts verify true (cut_rspec s)

(* The top function of verifying range specifications when !jobs <= 1 *)
let verify_rspec s hashopt =
  let _ = trace "===== Verifying range specifications =====" in
  verify_rspec_with_cuts ~comments:["Verify: range specifications"] hashopt s

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
  let (_, smtlib) = smtlib_espec vgen s in
  let ifile = tmpfile "inputfgb_" ".smt2" in
  let ofile = tmpfile "outputfgb_" "" in
  let comments = append_comments_option comments [ "Algebraic condition: " ^ string_of_ebexp_prove_with s.espost;
                                                   "Output file: " ^ ofile ] |> make_line_comments ";" in
  let _ =
    let ch = open_out ifile in
    let _ = if !debug then output_string ch comments in
    let _ = output_string ch smtlib; close_out ch in
    trace "INPUT TO SMT Solver:";
    trace_file ifile;
    trace "" in
  let _ =
    let t1 = Unix.gettimeofday() in
    let _ = unix (solver ^ "  \"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2>&1") in
    let t2 = Unix.gettimeofday() in
    trace ("Execution time of SMT Solver " ^ solver ^ ": " ^ string_of_running_time t1 t2);
    trace "OUTPUT FROM SMT SOLVER:";
    trace_file ofile;
    trace "" in
  let res = read_one_line ofile = "unsat" in
  let _ = cleanup [ifile; ofile] in
  res

(* Verify an algebraic specification. The solver used can be specified in the
   prove-with clauses of the specification.
   Applied in this function: slicing *)
let verify_espec_single_conjunct ?comments vgen s hashopt =
  let verify =
    match algebra_solver_of_prove_with (ebexp_prove_with_specs s.espost) with
    | SMTSolver solver -> verify_espec_single_conjunct_smt solver ?comments
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
let verify_espec_with_cuts ?comments hashopt vgen s =
  (* Check previous result (verify cut_id previous_result (specification_id, specification)) *)
  let verify cid res (sid, s) =
    if res then verify_espec_without_cuts
                  ~comments:(append_comments_option comments [ "Cut: #" ^ string_of_int cid;
                                                               "Algebraic specification #" ^ string_of_int sid ^ ": " ^ string_of_ebexp_prove_with s.espost ])
                  hashopt vgen s
    else res in
  apply_to_cuts !verify_ecuts verify true (cut_espec s)

(* The top function of verifying algebraic specifications when !jobs <= 1 *)
let verify_espec vgen s hashopt =
  let _ = trace "===== Verifying algebraic specifications =====" in
  verify_espec_with_cuts ~comments:[ "Verify: algebraic specifications" ] hashopt vgen s

(* The top function of verifying algebraic assertions when !jobs <= 1.
   Applied in this function: split cuts *)
let verify_eassert vgen s hashopt =
  let _ = trace "===== Verifying algebraic assertions =====" in
  (* Check previous result (verify cut_id previous_result (specification_id, specification)) *)
  let verify cid res (sid, s) =
    if res && Options.Std.mem_hashset_opt !Options.Std.verify_eassert_ids sid then
      verify_espec_without_cuts
        ~comments:[ "Verify: algebraic assertions";
                    "Cut: #" ^ string_of_int cid;
                    "Algebraic assertion #" ^ string_of_int sid ^ ": " ^ Ast.Cryptoline.string_of_ebexp_prove_with s.espost ]
        hashopt vgen s
    else
      res in
  apply_to_cuts !verify_eacuts verify true (cut_eassert (espec_of_spec s))

(* The top function of verifying range assertions when !jobs <= 1.
   Applied in this function: split cuts *)
let verify_rassert s hashopt =
  let _ = trace "===== Verifying range assertions =====" in
  (* Check previous result (verify cut_id previous_result (specification_id, specification)) *)
  let verify cid res (sid, s) =
    if res && Options.Std.mem_hashset_opt !Options.Std.verify_rassert_ids sid then
      verify_rspec_without_cuts
        ~comments:[ "Verify: range assertions";
                    "Cut: #" ^ string_of_int cid;
                    "Range assertion #" ^ string_of_int sid ^ ": " ^ Ast.Cryptoline.string_of_rbexp_prove_with s.rspost ]
        hashopt s
    else
      res in
  apply_to_cuts !verify_racuts verify true (cut_rassert (rspec_of_spec s))

(* The main verification process *)
let verify_spec s =
  let vgen = vgen_of_spec s in
  let has_assert p = List.exists
                       (fun i ->
                         match i with
                         | Iassert _ -> true
                         | _ -> false) p in
  let spec_to_ssa (s, hashopt) =
    let t1 = Unix.gettimeofday() in
    let _ = vprint ("Transforming to SSA form:\t\t\t") in
    let ssa = ssa_spec s in
    let t2 = Unix.gettimeofday() in
    let _ = vprintln ("[OK]\t\t" ^ string_of_running_time t1 t2) in
    (true, ssa, hashopt) in
  let normalize_spec (s, hashopt) =
    let t1 = Unix.gettimeofday() in
    let _ = vprint ("Normalizing specification:\t\t\t") in
    let ns = normalize_spec s in
    let t2 = Unix.gettimeofday() in
    let _ = vprintln ("[OK]\t\t" ^ string_of_running_time t1 t2) in
    (true, ns, hashopt) in
  let rewrite_assignments (s, hashopt) =
    let t1 = Unix.gettimeofday() in
    let _ = vprint ("Rewriting assignments:\t\t\t\t") in
    let s = rewrite_mov_ssa_spec s in
    let t2 = Unix.gettimeofday() in
    let _ = vprintln ("[OK]\t\t" ^ string_of_running_time t1 t2) in
    (true, s, hashopt) in
  let _build_var_dep_hash (s, _) =
    let t1 = Unix.gettimeofday() in
    let _ = vprint "Computing Variable Dependency:\t\t\t" in
    let hash = Ast.Cryptoline.mk_var_dep_hash s.sprog in
    let t2 = Unix.gettimeofday() in
    let _ = vprintln ("[OK]\t\t" ^ string_of_running_time t1 t2) in
    (true, s, Some hash) in
  let program_safe (s, hashopt) =
    let t1 = Unix.gettimeofday() in
    let _ = vprint "Verifying program safety:\t\t\t" in
    let b = verify_safety s hashopt in
    let t2 = Unix.gettimeofday() in
    let _ = vprintln ((if b then "[OK]\t" else "[FAILED]") ^ "\t" ^ string_of_running_time t1 t2) in
    (b, s, hashopt) in
  let rewrite_vpc (s, hashopt) =
    let t1 = Unix.gettimeofday() in
    let _ = vprint ("Rewriting value-preserved casting:\t\t") in
    let s = rewrite_vpc_ssa_spec s in
    let t2 = Unix.gettimeofday() in
    let _ = vprintln ("[OK]\t\t" ^ string_of_running_time t1 t2) in
    (true, s, hashopt) in
  let valid_eassert (s, hashopt) =
    let t1 = Unix.gettimeofday() in
    let _ = vprint "Verifying algebraic assertions:\t\t\t" in
    let b = if !jobs > 1 then
              (if !Options.Std.use_cli then WithLwt.verify_eassert_cli s
               else WithLwt.verify_eassert vgen s hashopt)
            else
              verify_eassert vgen s hashopt in
    let t2 = Unix.gettimeofday() in
    let _ = vprintln ((if b then "[OK]\t" else "[FAILED]") ^ "\t" ^ string_of_running_time t1 t2) in
    (b, s, hashopt) in
  let valid_rassert (s, hashopt) =
    let t1 = Unix.gettimeofday() in
    let _ = vprint "Verifying range assertions:\t\t\t" in
    let b = if !jobs > 1 then
              (if !Options.Std.use_cli then WithLwt.verify_rassert_cli s
               else WithLwt.verify_rassert s hashopt)
            else
              verify_rassert s hashopt in
    let t2 = Unix.gettimeofday() in
    let _ = vprintln ((if b then "[OK]\t" else "[FAILED]") ^ "\t" ^ string_of_running_time t1 t2) in
    (b, s, hashopt) in
  let valid_rspec (s, hashopt) =
    let t1 = Unix.gettimeofday() in
    let _ = vprint "Verifying range specification:\t\t\t" in
    let b = if !jobs > 1 then
              (if !Options.Std.use_cli
               then WithLwt.verify_rspec_cli else WithLwt.verify_rspec)
                (rspec_of_spec s) hashopt
            else
              verify_rspec (rspec_of_spec s) hashopt in
    let t2 = Unix.gettimeofday() in
    let _ = vprintln ((if b then "[OK]\t" else "[FAILED]") ^ "\t" ^ string_of_running_time t1 t2) in
    (b, s, hashopt) in
  let valid_espec (s, hashopt) =
    let t1 = Unix.gettimeofday() in
    let _ = vprint "Verifying algebraic specification:\t\t" in
    let b = if !jobs > 1 then
              (if !Options.Std.use_cli then WithLwt.verify_espec_cli (espec_of_spec s)
               else WithLwt.verify_espec vgen (espec_of_spec s) hashopt)
            else
              verify_espec vgen (espec_of_spec s) hashopt in
    let t2 = Unix.gettimeofday() in
    let _ = vprintln ((if b then "[OK]\t" else "[FAILED]") ^ "\t" ^ string_of_running_time t1 t2) in
    (b, s, hashopt) in
  let verifiers : (Ast.Cryptoline.spec * VS.t Ast.Cryptoline.atomhash_t option
                   -> bool * Ast.Cryptoline.spec * VS.t Ast.Cryptoline.atomhash_t option) list =
    [spec_to_ssa; normalize_spec]
    @(if !apply_rewrite_mov then [rewrite_assignments] else [])
    (* @(if !apply_slicing then [build_var_dep_hash] else []) *)
    @(if !verify_program_safety then [program_safe] else [])
    @(if !verify_rassertion && has_assert s.sprog then [valid_rassert] else [])
    @(if !verify_rpost then [valid_rspec] else [])
    (* It is important that rewriting of value-preserved casting must be done after all range properties. *)
    @(if !apply_rewrite_vpc then [rewrite_vpc] else [])
    @(if !verify_eassertion && has_assert s.sprog then [valid_eassert] else [])
    @(if !verify_epost then [valid_espec] else []) in
  let (result, _, _) = List.fold_left
                         (fun (res, s, hashopt) verifier ->
                           if res then verifier (s, hashopt)
                           else (res, s, hashopt))
                         (true, s, None)
                         verifiers in
  result
