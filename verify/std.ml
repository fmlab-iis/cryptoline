
open Options.Std
open Ast.Cryptoline
open Qfbv.Common
open Qfbv.Std
open Common

type 'a gen = 'a Common.gen
type var_gen = Common.var_gen

(** export functions *)

let rec make_vgen v i = fun () -> More (v ^ "_" ^ string_of_int i, make_vgen v (i + 1))

let vgen_of_spec s =  make_vgen (new_name (VS.fold (fun v vs -> SS.add (string_of_var v) vs) (vars_spec s) SS.empty)) 0
let vgen_of_rspec s =  make_vgen (new_name (VS.fold (fun v vs -> SS.add (string_of_var v) vs) (vars_rspec s) SS.empty)) 0
let vgen_of_espec s =  make_vgen (new_name (VS.fold (fun v vs -> SS.add (string_of_var v) vs) (vars_espec s) SS.empty)) 0

(** Verification *)

(*
 * Verify the safety of the n-th instruction in a program in SSA.
 * Raise TimeoutException if the SMT solver timed out.
 *)
let verify_instruction_safety timeout f p n =
  let do_verify f p q =
    match q with
    | True -> Solved Unsat
    | _ ->
       let fp = safety_assumptions f p q in
       Solved (solve_simp ~timeout:timeout (fp@[q]))
  in
  let i =
    try List.nth p n
    with Failure _ -> failwith ("The program does not contain the instruction: #" ^ string_of_int n) in
  let q = bexp_instr_safe i in
  let _ = trace ("= Verifying safety condition =") in
  let _ = trace ("ID: " ^ string_of_int n ^ "\n"
                 ^ "Instruction: " ^ string_of_instr i) in
  do_verify f p q

(*
   f: precondition
   p: program
   qs: safety conditions
 *)
let verify_safety_inc timeout f p qs =
  let add_unsolved q res =
    match res with
    | Solved Unsat -> Unfinished [q]
    | Unfinished unsolved -> Unfinished (q::unsolved)
    | _ -> assert false in
  let fold_fun res (id, i, q) =
    match res with
      Solved Sat
    | Solved Unknown -> res
    | _ ->
       try
         let _ = trace ("= Verifying safety condition =") in
         let _ = trace ("ID: " ^ string_of_int id ^ "\n"
                        ^ "Instruction: " ^ string_of_instr i) in
         let _ = vprint ("\t\t Safety condition #" ^ string_of_int id ^ "\t") in
         let fp = safety_assumptions f p q in
         match solve_simp ~timeout:timeout (fp@[q]) with
         | Sat -> let _ = vprintln "[FAILED]" in Solved Sat
         | Unknown -> let _ = vprintln "[FAILED]" in Solved Unknown
         | Unsat -> let _ = vprintln "[OK]" in res
       with TimeoutException ->
         let _ = vprintln "[TIMEOUT]" in
         add_unsolved (id, i, q) res in
  let res = List.fold_left fold_fun (Solved Unsat) qs in
  res

let verify_safety s =
  let _ = trace "===== Verifying program safety =====" in
  let verify_one (f, p) =
    if !incremental_safety && !Options.Std.use_cli then
      let _ = vprintln "" in
      WithLwt.verify_safety_cli f p
    else if !incremental_safety then
      let round = ref 1 in
      let timeout = ref !incremental_safety_timeout in
      let safety = ref None in
      let qs = ref (bexp_program_safe_conds p) in
      let _ = vprintln "" in
      let _ =
        while !safety = None do
          let _ = trace ("=== Verifying program safety incrementally ===") in
          let _ = trace ("Round: " ^ string_of_int !round ^ "\n"
                         ^ "Timeout: " ^ string_of_int !timeout ^ "\n"
                         ^ "Number of safety conditions to be verified: " ^ string_of_int (List.length !qs)) in
          let _ = vprintln ("\t Round " ^ string_of_int !round ^ " ("
                                 ^ string_of_int (List.length !qs) ^ " safety conditions, timeout = "
                                 ^ string_of_int !timeout ^ " seconds)") in
          let res =
            if !jobs > 1 then
              WithLwt.verify_safety_inc !timeout f p !qs
            else
              verify_safety_inc !timeout f p !qs in
          let _ =
            match res with
              Solved r -> safety := if r = Unsat then Some true else Some false
            | Unfinished rest -> qs := rest in
          let _ = round := !round + 1 in
          let _ = timeout := !timeout * 2 in
          ()
        done in
      let _ = vprint "\t Overall\t\t\t" in
      let res =
        match !safety with
        | Some r -> r
        | None -> assert false in
      res
    else
      let g = bexp_program_safe p in
      let fp = safety_assumptions f p g in
      solve_simp (fp@[g]) = Unsat in
  let rec cut f visited_rev p =
    match p with
    | [] -> [(f, List.rev visited_rev)]
    | Ircut (e, _)::tl -> (f, List.rev visited_rev)::cut e [] tl
    | Iecut _::tl -> cut f visited_rev tl (* Drop Iecut *)
    | hd::tl -> cut f (hd::visited_rev) tl in
  List.for_all verify_one (cut (rng_bexp s.spre) [] s.sprog)

let write_singular_input ifile vars gen p =
  let input_text =
    let varseq =
      match vars with
      | [] -> "x"
      | _ -> String.concat "," (List.map string_of_var vars) in
    let generator = if List.length gen = 0 then "0" else (String.concat ",\n  " (List.map singular_of_eexp gen)) in
    let poly = singular_of_eexp p in
    "ring r = integer, (" ^ varseq ^ "), lp;\n"
    ^ "ideal gs = " ^ generator ^ ";\n"
    ^ "poly p = " ^ poly ^ ";\n"
    ^ "ideal I = groebner(gs);\n"
    ^ "reduce(p, I);\n"
    ^ "exit;\n" in
  let ch = open_out ifile in
  let _ = output_string ch input_text; close_out ch in
  trace "INPUT TO SINGULAR:";
  unix ("cat " ^ ifile ^ " >>  " ^ !logfile);
  trace ""

let write_sage_input ifile vars gen p =
  let input_text =
    let varseq =
      match vars with
      | [] -> "x"
      | _ -> String.concat "," (List.map string_of_var vars) in
    let generator = if List.length gen = 0 then "0" else (String.concat ",\n  " (List.map sage_of_eexp gen)) in
    let poly = sage_of_eexp p in
    "R.<" ^ varseq ^ "> = PolynomialRing(ZZ," ^ string_of_int (List.length vars) ^ ")\n"
    ^ "I = (" ^ generator ^ ") * R\n"
    ^ "P = " ^ poly ^ "\n"
    ^ "assert P in I\n" in
  let ch = open_out ifile in
  let _ = output_string ch input_text; close_out ch in
  trace "INPUT TO SAGE:";
  unix ("cat \"" ^ ifile ^ "\"" ^ " >>  " ^ !logfile);
  trace ""

let write_magma_input ifile vars gen p =
  let input_text =
    let varseq =
      match vars with
      | [] -> "x"
      | _ -> String.concat "," (List.map string_of_var vars) in
    let varlen = max 1 (List.length vars) in
    let generator = if List.length gen = 0 then "0" else (String.concat ",\n" (List.map magma_of_eexp gen)) in
    let poly = magma_of_eexp p in
    "R := IntegerRing();\n"
    ^ "S<" ^ varseq ^ "> := PolynomialRing(R, " ^ string_of_int varlen ^ ");\n"
      ^ "I := [\n"
      ^ generator ^ "\n];\n"
      ^ "J := GroebnerBasis(I);\n"
    ^ "g := " ^ poly ^ ";\n"
    ^ "g in J;\n"
    ^ "exit;\n" in
  let ch = open_out ifile in
  let _ = output_string ch input_text; close_out ch in
  trace "INPUT TO MAGMA:";
  unix ("cat " ^ ifile ^ " >>  " ^ !logfile);
  trace ""

let write_mathematica_input ifile vars gen p =
  let input_text =
    let varseq =
      match vars with
      | [] -> "x"
      | _ -> String.concat "," (List.map mathematica_of_var vars) in
    let generator = if List.length gen = 0 then "0" else (String.concat ",\n  " (List.map mathematica_of_eexp gen)) in
    let poly = mathematica_of_eexp p in
    "vars = {" ^ varseq ^ "};\n"
    ^ "gs = {" ^ generator ^ "};\n"
    ^ "p = " ^ poly ^ ";\n"
    ^ "gb = GroebnerBasis[gs, vars, CoefficientDomain -> Integers];\n"
    ^ "{q, r} = PolynomialReduce[p, gb, vars, CoefficientDomain -> Integers];\n"
    ^ "Print[r];\n" in
  let ch = open_out ifile in
  let _ = output_string ch input_text; close_out ch in
  trace "INPUT TO MATHEMATICA:";
  unix ("cat " ^ ifile ^ " >>  " ^ !logfile);
  trace ""

let write_macaulay2_input ifile vars gen p =
  let input_text =
    let (vars, gen, p, default_generator) =
      let dummy_var = mkvar "cryptoline'dummy'variable" (Tuint 0) (* The variable type does not matter *) in
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
    "myRing = ZZ[" ^ varseq ^ ",MonomialOrder=>Lex]\n"
    ^ "myIdeal = ideal(" ^ generator ^ ")\n"
    ^ "myPoly = " ^ poly ^ "\n"
    ^ "myBasis = groebnerBasis myIdeal\n"
    ^ "myRes = toString (myPoly % myBasis)\n"
    ^ "print myRes\n" in
  let ch = open_out ifile in
  let _ = output_string ch input_text; close_out ch in
  trace "INPUT TO MACAULAY2:";
  unix ("cat " ^ ifile ^ " >>  " ^ !logfile);
  trace ""

let run_singular ifile ofile =
  let t1 = Unix.gettimeofday() in
  unix (!singular_path ^ " -q " ^ !Options.Std.algebra_args ^ " \"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2>&1");
  let t2 = Unix.gettimeofday() in
  trace ("Execution time of Singular: " ^ string_of_float (t2 -. t1) ^ " seconds");
  trace "OUTPUT FROM SINGULAR:";
  unix ("cat \"" ^ ofile ^ "\" >>  " ^ !logfile);
  trace ""

let run_sage ifile ofile =
  let t1 = Unix.gettimeofday() in
  unix (!sage_path ^ " " ^ !Options.Std.algebra_args ^ " \"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2>&1");
  let t2 = Unix.gettimeofday() in
  trace ("Execution time of Sage: " ^ string_of_float (t2 -. t1) ^ " seconds");
  trace "OUTPUT FROM SAGE:";
  unix ("cat \"" ^ ofile ^ "\" >>  " ^ !logfile);
  trace ""

let run_magma ifile ofile =
  let t1 = Unix.gettimeofday() in
  unix (!magma_path ^ " -b " ^ !Options.Std.algebra_args ^ " \"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2>&1");
  let t2 = Unix.gettimeofday() in
  trace ("Execution time of Magma: " ^ string_of_float (t2 -. t1) ^ " seconds");
  trace "OUTPUT FROM MAGMA:";
  unix ("cat \"" ^ ofile ^ "\" >>  " ^ !logfile);
  trace ""

let run_mathematica ifile ofile =
  let t1 = Unix.gettimeofday() in
  unix (!mathematica_path ^ " " ^ !Options.Std.algebra_args ^ " -file \"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2>&1");
  let t2 = Unix.gettimeofday() in
  trace ("Execution time of Mathematica: " ^ string_of_float (t2 -. t1) ^ " seconds");
  trace "OUTPUT FROM MATHEMATICA:";
  unix ("cat \"" ^ ofile ^ "\" >>  " ^ !logfile);
  trace ""

let run_macaulay2 ifile ofile =
  let t1 = Unix.gettimeofday() in
  unix (!macaulay2_path ^ " --script \"" ^ ifile ^ "\" --silent " ^ !Options.Std.algebra_args ^ " 1> \"" ^ ofile ^ "\" 2>&1");
  let t2 = Unix.gettimeofday() in
  trace ("Execution time of Macaulay2: " ^ string_of_float (t2 -. t1) ^ " seconds");
  trace "OUTPUT FROM MACAULAY2:";
  unix ("cat \"" ^ ofile ^ "\" >>  " ^ !logfile);
  trace ""

let read_singular_output ofile =
  let line = ref "" in
  let ch = open_in ofile in
  let _ =
    try
	  line := input_line ch
    with _ ->
      failwith "Failed to read the output file" in
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

let read_magma_output ofile =
  let line = ref "" in
  let ch = open_in ofile in
  let _ =
    try
	  line := input_line ch
    with _ ->
      failwith "Failed to read the output file" in
  let _ = close_in ch in
  String.trim !line

let read_mathematica_output ofile =
  let line = ref "" in
  let ch = open_in ofile in
  let _ =
    try
	  line := input_line ch
    with _ ->
      failwith "Failed to read the output file" in
  let _ = close_in ch in
  String.trim !line

let read_macaulay2_output ofile =
  let line = ref "" in
  let ch = open_in ofile in
  let _ =
    try
	  line := input_line ch
    with _ ->
      failwith "Failed to read the output file" in
  let _ = close_in ch in
  String.trim !line

let is_in_ideal vars ideal p =
  let ifile = Filename.temp_file "inputfgb_" "" in
  let ofile = Filename.temp_file "outputfgb_" "" in
  let res =
    match !algebra_system with
    | Singular ->
       let _ = write_singular_input ifile vars ideal p in
       let _ = run_singular ifile ofile in
       let res = read_singular_output ofile in
       res = "0"
    | Sage ->
       (* The input file to Sage must have file extension ".sage". *)
       let ifile = ifile ^ ".sage" in
       let _ = write_sage_input ifile vars ideal p in
       let _ = run_sage ifile ofile in
       let res = read_sage_output ofile in
       res = "true"
    | Magma ->
       let _ = write_magma_input ifile vars ideal p in
       let _ = run_magma ifile ofile in
       let res = read_magma_output ofile in
       res = "true"
    | Mathematica ->
       let _ = write_mathematica_input ifile vars ideal p in
       let _ = run_mathematica ifile ofile in
       let res = read_mathematica_output ofile in
       res = "0"
    | Macaulay2 ->
       let _ = write_macaulay2_input ifile vars ideal p in
       let _ = run_macaulay2 ifile ofile in
       let res = read_macaulay2_output ofile in
       res = "0"
  in
  let _ = Unix.unlink ifile in
  let _ = Unix.unlink ofile in
  res

let verify_rspec_single_conjunct s =
  let verify_one s =
    let f = bexp_rbexp s.rspre in
    let p = bexp_program s.rsprog in
    let g = bexp_rbexp s.rspost in
    let gs = split_bexp g in
    List.for_all
      (fun g ->
        let _ = trace ("range condition: " ^ string_of_bexp g) in
        solve_simp (f::p@[g]) = Unsat)
      gs in
  if !apply_slicing then verify_one (slice_rspec_ssa s)
  else verify_one s

let verify_rspec' s =
  let rec verify_ands s =
    match s.rspost with
    | Rand (e1, e2) ->
       verify_ands { rspre = s.rspre; rsprog = s.rsprog; rspost = e1; rspwss = s.rspwss } &&
         verify_ands { rspre = s.rspre; rsprog = s.rsprog; rspost = e2; rspwss = s.rspwss }
    | _ -> verify_rspec_single_conjunct s in
  let rec verify_rec i ss =
    match ss with
    | [] -> true
    | hd::tl ->
       begin
         match !verify_rcuts with
         | Some cuts when not (List.mem i cuts) ->
            let _ = trace ("== Skip Cut #" ^ string_of_int i ^ " ==") in
            verify_rec (i+1) tl
         | _ ->
            let _ = trace ("== Cut #" ^ string_of_int i ^ " ==") in
            verify_ands hd && verify_rec (i+1) tl
       end in
  verify_rec 0 (cut_rspec s)

let verify_rspec s =
  let _ = trace "===== Verifying range specification =====" in
  verify_rspec' s

let verify_espec_single_conjunct vgen s =
  let verify_one vgen s =
    let (_, entailments) = polys_of_espec vgen s in
    List.fold_left
      (fun res (post, vars, ideal, p) ->
        if res then (
          let _ = trace ("algebraic condition: " ^ string_of_ebexp post) in
          if let _ = trace ("Try #0") in is_in_ideal vars [] p then true
          else let _ = trace ("Try #1") in is_in_ideal vars ideal p
        )
        else res) true entailments in
  if !apply_slicing then verify_one vgen (slice_espec_ssa s)
  else verify_one vgen s

let verify_espec' vgen s =
  let rec verify_ands vgen s =
    match s.espost with
    | Eand (e1, e2) ->
       verify_ands vgen { espre = s.espre; esprog = s.esprog; espost = e1; espwss = s.espwss } &&
         verify_ands vgen { espre = s.espre; esprog = s.esprog; espost = e2; espwss = s.espwss }
    | _ -> verify_espec_single_conjunct vgen s in
  let rec verify_rec i vgen ss =
    match ss with
    | [] -> true
    | hd::tl ->
       begin
         match !verify_ecuts with
         | Some cuts when not (List.mem i cuts) ->
            let _ = trace ("== Skip Cut #" ^ string_of_int i ^ " ==") in
            verify_rec (i+1) vgen tl
         | _ ->
            let _ = trace ("== Cut #" ^ string_of_int i ^ " ==") in
            verify_ands vgen hd && verify_rec (i+1) vgen tl
       end in
  verify_rec 0 vgen (cut_espec s)

let verify_espec vgen s =
  let _ = trace "===== Verifying algebraic specification =====" in
  verify_espec' vgen s

let verify_eassert vgen s =
  let _ = trace "===== Verifying algebraic assertions =====" in
  let mkespec f p g = { espre = f; esprog = p; espost = g; espwss = [] } in
  let rec verify epre evisited p =
    match p with
    | [] -> true
    | Iassert e::tl ->
       let _ = trace ("=== Checking algebraic assertion: " ^ Ast.Cryptoline.string_of_bexp e ^ " ===") in
       List.for_all (fun f -> f())
         [ (fun () -> verify_espec' vgen (mkespec epre (List.rev evisited) (eqn_bexp e)));
           (fun () -> verify epre evisited tl) ]
    | Iecut (e, _)::tl -> verify e [] tl
    | hd::tl -> verify epre (hd::evisited) tl in
  verify (eqn_bexp s.spre) [] s.sprog

let verify_rassert _vgen s =
  let _ = trace "===== Verifying range assertions =====" in
  let mkrspec f p g = { rspre = f; rsprog = p; rspost = g; rspwss = [] } in
  let rec verify rpre rvisited p =
    match p with
    | [] -> true
    | Iassert e::tl ->
       let _ = trace ("=== Checking range assertion: " ^ Ast.Cryptoline.string_of_bexp e ^ " ===") in
       List.for_all (fun f -> f())
         [ (fun () -> verify_rspec' (mkrspec rpre (List.rev rvisited) (rng_bexp e)));
           (fun () -> verify rpre rvisited tl) ]
    | Ircut (e, _)::tl -> verify e [] tl
    | hd::tl -> verify rpre (hd::rvisited) tl in
  verify (rng_bexp s.spre) [] s.sprog

let verify_assert vgen s =
  let _ = trace "===== Verifying assertions =====" in
  let mkrspec f p g = { rspre = f; rsprog = p; rspost = g; rspwss = [] } in
  let mkespec f p g = { espre = f; esprog = p; espost = g; espwss = [] } in
  let rec verify (epre, rpre) (evisited, rvisited) p =
    match p with
    | [] -> true
    | Iassert e::tl ->
       let _ = trace ("=== Checking assertion: " ^ Ast.Cryptoline.string_of_bexp e ^ " ===") in
       List.for_all (fun f -> f())
         [ (fun () -> verify_rspec' (mkrspec rpre (List.rev rvisited) (rng_bexp e)));
           (fun () -> verify_espec' vgen (mkespec epre (List.rev evisited) (eqn_bexp e)));
           (fun () -> verify (epre, rpre) (evisited, rvisited) tl) ]
    | Iecut (e, _)::tl -> verify (e, rpre) ([], rvisited) tl
    | Ircut (e, _)::tl -> verify (epre, e) (evisited, []) tl
    | hd::tl -> verify (epre, rpre) (hd::evisited, hd::rvisited) tl in
  verify (eqn_bexp s.spre, rng_bexp s.spre) ([], []) s.sprog

let redlog_of_espec es =
  let eqn_of_eexp e =
    let redlog_string_of_eunop op =
      match op with
      | Eneg -> "-" in
    let redlog_string_of_ebinop op =
      match op with
      | Eadd -> "+"
      | Esub -> "-"
      | Emul -> "*" in
    let rec redlog_string_of_eexp e =
      match e with
      | Evar v -> string_of_var v
      | Econst n -> Z.to_string n
      | Eunop (op, e) -> redlog_string_of_eunop op ^ " (" ^ redlog_string_of_eexp e ^ ")"
      | Ebinop (op, e1, e2) -> "(" ^ redlog_string_of_eexp e1 ^ ") " ^ redlog_string_of_ebinop op ^ " (" ^ redlog_string_of_eexp e2 ^ ")" in
    (* Change "c*(c-1)=0" to "c=0 or c=1". *)
    (*
      match e with
    | BveBinop (BveMul, BveVar v, BveBinop (BveSub, BveVar v', BveConst c)) when v == v' && eq_big_int c (unit_big_int) -> "(" ^ v ^ " = 0 or " ^ v ^ " = 1)"
    | _ -> redlog_string_of_eexp e ^ " = 0" *)
    redlog_string_of_eexp e ^ " = 0" in
  let vgen = vgen_of_espec es in
  let (vgen, zssa) = bv2z_espec vgen es in
  let (vgen, premises) =
    let (vgen, _, pre_ps) = polys_of_ebexp vgen zssa.ppre in
    let (vgen, prog_ps) =
      List.fold_left
        (fun (vgen, res) e ->
          let (vgen, _, ps) = polys_of_ebexp vgen e in
          (vgen, res@ps)
        ) (vgen, []) zssa.pprog in
    (vgen, pre_ps@prog_ps) in
  let (_vgen, tmps, premises, posts) =
    let (premises, post) = rewrite_assignments_ebexp premises zssa.ppost in
    let (vgen, tmps, posts) = polys_of_ebexp vgen post in
    (vgen, tmps, premises, posts) in
  let phi =
    let conj es = String.concat " and " (List.map eqn_of_eexp es) in
    match premises, tmps with
    | [], [] -> conj posts
    | [], _ -> "ex({" ^ String.concat ", " (List.map string_of_var tmps) ^ "}, " ^ conj posts ^ ")"
    | _, [] -> "(" ^ conj premises ^ ") impl (" ^ conj posts ^ ")"
    | _ -> "ex({" ^ String.concat ", " (List.map string_of_var tmps) ^ "}, (" ^ conj premises ^ ") impl (" ^ conj posts ^ "))"
  in
  String.concat "\n" [ "load_package redlog;";
                       "rlset Z;";
                       "phi := " ^ phi ^ ";";
                       "rlwqe phi;" ]

let redlog_of_espec es =
  let ess = cut_espec es in
  String.concat "\n\n" (List.map redlog_of_espec ess)

let verify_spec s =
  let vgen = vgen_of_spec s in
  let has_assert p = List.exists
                       (fun i ->
                         match i with
                         | Iassert _ -> true
                         | _ -> false) p in
  let spec_to_ssa s =
    let t1 = Unix.gettimeofday() in
    let _ = vprint ("Transforming to SSA form:\t\t") in
    let ssa = ssa_spec s in
    let t2 = Unix.gettimeofday() in
    let _ = vprintln ("[OK]\t\t" ^ string_of_running_time t1 t2) in
    (true, ssa) in
  let rewrite_assignments s =
    let t1 = Unix.gettimeofday() in
    let _ = vprint ("Rewriting assignments:\t\t\t") in
    let s = rewrite_mov_ssa_spec s in
    let t2 = Unix.gettimeofday() in
    let _ = vprintln ("[OK]\t\t" ^ string_of_running_time t1 t2) in
    (true, s) in
  let program_safe s =
    let t1 = Unix.gettimeofday() in
    let _ = vprint "Verifying program safety:\t\t" in
    let b = verify_safety s in
    let t2 = Unix.gettimeofday() in
    let _ = vprintln ((if b then "[OK]\t" else "[FAILED]") ^ "\t" ^ string_of_running_time t1 t2) in
    (b, s) in
  let rewrite_vpc s =
    let t1 = Unix.gettimeofday() in
    let _ = vprint ("Rewriting value-preserved casting:\t") in
    let s = rewrite_vpc_ssa_spec s in
    let t2 = Unix.gettimeofday() in
    let _ = vprintln ("[OK]\t\t" ^ string_of_running_time t1 t2) in
    (true, s) in
  let valid_eassert s =
    let t1 = Unix.gettimeofday() in
    let _ = vprint "Verifying algebraic assertions:\t\t" in
    let b = if !jobs > 1 then
              (if !Options.Std.use_cli then WithLwt.verify_eassert_cli s
               else WithLwt.verify_eassert vgen s)
            else
              verify_eassert vgen s in
    let t2 = Unix.gettimeofday() in
    let _ = vprintln ((if b then "[OK]\t" else "[FAILED]") ^ "\t" ^ string_of_running_time t1 t2) in
    (b, s) in
  let valid_rassert s =
    let t1 = Unix.gettimeofday() in
    let _ = vprint "Verifying range assertions:\t\t" in
    let b = if !jobs > 1 then
              (if !Options.Std.use_cli then WithLwt.verify_rassert_cli s
               else WithLwt.verify_rassert vgen s)
            else
              verify_rassert vgen s in
    let t2 = Unix.gettimeofday() in
    let _ = vprintln ((if b then "[OK]\t" else "[FAILED]") ^ "\t" ^ string_of_running_time t1 t2) in
    (b, s) in
  let valid_rspec s =
    let t1 = Unix.gettimeofday() in
    let _ = vprint "Verifying range specification:\t\t" in
    let b = if !jobs > 1 then
              (if !Options.Std.use_cli then WithLwt.verify_rspec_cli else WithLwt.verify_rspec) (rspec_of_spec s)
            else
              verify_rspec (rspec_of_spec s) in
    let t2 = Unix.gettimeofday() in
    let _ = vprintln ((if b then "[OK]\t" else "[FAILED]") ^ "\t" ^ string_of_running_time t1 t2) in
    (b, s) in
  let valid_espec s =
    let t1 = Unix.gettimeofday() in
    let _ = vprint "Verifying algebraic specification:\t" in
    let b = if !jobs > 1 then
              (if !Options.Std.use_cli then WithLwt.verify_espec_cli (espec_of_spec s)
               else WithLwt.verify_espec vgen (espec_of_spec s))
            else
              verify_espec vgen (espec_of_spec s) in
    let t2 = Unix.gettimeofday() in
    let _ = vprintln ((if b then "[OK]\t" else "[FAILED]") ^ "\t" ^ string_of_running_time t1 t2) in
    (b, s) in
  let verifiers : (Ast.Cryptoline.spec -> bool * Ast.Cryptoline.spec) list=
    [spec_to_ssa]
    @(if !apply_rewriting then [rewrite_assignments] else [])
    @(if !verify_program_safety then [program_safe] else [])
    @(if !verify_rassertion && has_assert s.sprog then [valid_rassert] else [])
    @(if !verify_rpost then [valid_rspec] else [])
    (* It is important that rewriting of value-preserved casting must be done after all range properties. *)
    @(if !apply_rewriting then [rewrite_vpc] else [])
    @(if !verify_eassertion && has_assert s.sprog then [valid_eassert] else [])
    @(if !verify_epost then [valid_espec] else []) in
  fst (List.fold_left
         (fun (res, s) verifier -> if res then verifier s else (res, s))
         (true, s)
         verifiers)
