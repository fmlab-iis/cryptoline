
open Options.Std
open Options.WithLwt
open Ast.Cryptoline
open Qfbv.Common
open Qfbv.WithLwt
open Common
(* open Lwt.Infix *)

let work_on_pending delivered_helper res pending =
  let (delivered, promised) = Lwt_main.run (Lwt.nchoose_split pending) in
  let res' = List.fold_left delivered_helper res delivered in
  (res', promised)

let rec finish_pending delivered_helper res pending =
  match pending with
  | [] -> res
  | _ -> let (res', pending') = work_on_pending delivered_helper res pending in
         finish_pending delivered_helper res' pending'

let apply_to_cuts_lwt ids f delivered_helper res pending ss =
  let ids = Option.map (List.map (normalize_index (List.length ss))) ids in
  let rec helper i (res, pending) ss =
    match ss with
    | [] -> finish_pending delivered_helper res pending
    | hd::tl ->
       begin
         match ids with
         | Some ids when not (List.mem i ids) ->
            let _ = trace ("== Skip Cut #" ^ string_of_int i ^ " ==") in
            helper (i+1) (res, pending) tl
         | _ ->
            let cut_header = ("== Cut #" ^ string_of_int i ^ " ==") in
            let (res, pending) = List.fold_left (f [cut_header]) (res, pending) hd in
            helper (i+1) (res, pending) tl
       end in
  helper 0 (res, pending) ss

let rec split_espec_post s =
  match s.espost with
  | Eand (e1, e2) ->
     let res1 = split_espec_post { espre = s.espre; esprog = s.esprog;
                                espost = e1; espwss = s.espwss } in
     let res2 = split_espec_post { espre = s.espre; esprog = s.esprog;
                                espost = e2; espwss = s.espwss } in
     res1@res2
  | _ -> [s]

let rec split_rspec_post s =
  match s.rspost with
  | Rand (e1, e2) ->
     let res1 = split_rspec_post { rspre = s.rspre; rsprog = s.rsprog;
                                rspost = e1; rspwss = s.rspwss } in
     let res2 = split_rspec_post { rspre = s.rspre; rsprog = s.rsprog;
                                rspost = e2; rspwss = s.rspwss } in
     res1@res2
  | _ -> [s]

(* Options.vscuts is handled in Std.verify_safety. *)
let verify_safety_inc timeout f prog qs hashopt =
  let mk_promise (id, i, q, p) =
    let header = ["= Verifying safety condition =";
                  "ID: " ^ string_of_int id ^ "\n"
                  ^ "Instruction: " ^ string_of_instr i] in
    let fp = safety_assumptions f p q hashopt in
    let solve = solve_simp ~timeout:timeout ~header:header (fp@[q]) in
    try%lwt
      let%lwt solve_res = solve in
      match solve_res with
      | Sat -> Lwt.return (id, i, q, "[FAILED]", Solved Sat)
      | Unknown -> Lwt.return (id, i, q, "[FAILED]", Solved Unknown)
      | Unsat -> Lwt.return (id, i, q, "[OK]", Solved Unsat)
    with TimeoutException ->
      Lwt.return (id, i, q, "[TIMEOUT]", Unfinished [(id, i, q)]) in
  let delivered_helper r (id, i, q, ret_str, ret) =
    let _ = vprint ("\t\t Safety condition #" ^
                      string_of_int id ^ "\t") in
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
  let (res, _, _, pending) =
    List.fold_left fold_fun (Solved Unsat, [], prog, []) qs in
  finish_pending delivered_helper res pending

let write_header_to_log header =
   Lwt_list.iter_s (fun h -> let%lwt _ = Options.WithLwt.trace h in
                             Lwt.return_unit) header

let write_singular_input ifile vars gen p =
  let input_text =
    let varseq =
      match vars with
      | [] -> "x"
      | _ -> String.concat "," (List.map string_of_var vars) in
    let generator = if List.length gen = 0 then "0" else (String.concat ",\n  " (List.map singular_of_eexp gen)) in
    let poly = singular_of_eexp p in
    "proc is_generator(poly p, ideal I) {\n"
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

let write_sage_input ifile vars gen p =
  let input_text =
    let varseq =
      match vars with
      | [] -> "x"
      | _ -> String.concat "," (List.map string_of_var vars) in
    let generator = if List.length gen = 0 then "0" else (String.concat ",\n  " (List.map sage_of_eexp gen)) in
    let poly = sage_of_eexp p in
    "R.<" ^ varseq ^ "> = PolynomialRing(ZZ," ^ string_of_int (max 1 (List.length vars)) ^ ")\n"
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

let write_magma_input ifile vars gen p =
  let input_text =
    let varseq =
      match vars with
      | [] -> "x"
      | _ -> String.concat "," (List.map string_of_var vars) in
    let varlen = max 1 (List.length vars) in
    let generator = if List.length gen = 0 then "0" else (String.concat ",\n" (List.map magma_of_eexp gen)) in
    let poly = magma_of_eexp p in
    "function is_generator(p, I)\n"
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

let write_mathematica_input ifile vars gen p =
  let input_text =
    let varseq =
      match vars with
      | [] -> "x"
      | _ -> String.concat "," (List.map mathematica_of_var vars) in
    let generator = if List.length gen = 0 then "0" else (String.concat ",\n" (List.map mathematica_of_eexp gen)) in
    let poly = mathematica_of_eexp p in
    "vars = {" ^ varseq ^ "};\n"
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

let write_macaulay2_input ifile vars gen p =
  let input_text =
    let (vars, gen, p, default_generator) =
      let dummy_var = mkvar "cryptoline'dummy'variable" (Tuint 0) (* The type is no matter here. *) in
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
  let%lwt ifd = Lwt_unix.openfile ifile
                  [Lwt_unix.O_WRONLY; Lwt_unix.O_CREAT; Lwt_unix.O_TRUNC]
                  0o600 in
  let ch = Lwt_io.of_fd ~mode:Lwt_io.output ifd in
  let%lwt _ = Lwt_io.write ch input_text in
  let%lwt _ = Lwt_io.close ch in
  Lwt.return_unit

let write_maple_input ifile vars gen p =
  let input_text =
    let varseq =
      match vars with
      | [] -> "x"
      | _ -> String.concat "," (List.map string_of_var vars) in
    let generator = if List.length gen = 0 then "0" else (String.concat ",\n" (List.map magma_of_eexp gen)) in
    let poly = magma_of_eexp p in
    "interface(prettyprint=0):\n"
    ^ "with(PolynomialIdeals):\n"
    ^ "with(Groebner):\n"
    ^ "Ord := plex(" ^ varseq ^ "):\n"
    ^ "B := [" ^ generator ^ "]:\n"
    ^ "g := " ^ poly ^ ":\n"
    ^ "if member(g, B) then\n"
    ^ "  res := true\n"
    ^ "else\n"
    ^ "  J := PolynomialIdeal(B):\n"
    ^ "  res := IdealMembership(g, J):\n"
    ^ "end if:\n"
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
  let%lwt _ = Options.WithLwt.unix ("cat " ^ ifile ^ " >>  " ^ !logfile) in
  let%lwt _ = Options.WithLwt.trace "" in
  let%lwt _ = Options.WithLwt.trace ("Execution time of Singular: " ^ string_of_float (t2 -. t1) ^ " seconds") in
  let%lwt _ = Options.WithLwt.trace "OUTPUT FROM SINGULAR:" in
  let%lwt _ = Options.WithLwt.unix
                ("cat \"" ^ ofile ^ "\" >>  " ^ !logfile) in
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
  let%lwt _ = Options.WithLwt.unix
                ("cat \"" ^ ifile ^ "\" >>  " ^ !logfile) in
  let%lwt _ = Options.WithLwt.trace "" in
  let%lwt _ = Options.WithLwt.trace ("Execution time of Sage: " ^ string_of_float (t2 -. t1) ^ " seconds") in
  let%lwt _ = Options.WithLwt.trace "OUTPUT FROM SAGE:" in
  let%lwt _ = Options.WithLwt.unix
                ("cat \"" ^ ofile ^ "\" >>  " ^ !logfile) in
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
  let%lwt _ = Options.WithLwt.unix ("cat " ^ ifile ^ " >>  " ^ !logfile) in
  let%lwt _ = Options.WithLwt.trace "" in
  let%lwt _ = Options.WithLwt.trace ("Execution time of Magma: " ^ string_of_float (t2 -. t1) ^ " seconds") in
  let%lwt _ = Options.WithLwt.trace "OUTPUT FROM MAGMA:" in
  let%lwt _ = Options.WithLwt.unix
                ("cat \"" ^ ofile ^ "\" >>  " ^ !logfile) in
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
  let%lwt _ = Options.WithLwt.unix ("cat " ^ ifile ^ " >>  " ^ !logfile) in
  let%lwt _ = Options.WithLwt.trace "" in
  let%lwt _ = Options.WithLwt.trace ("Execution time of Mathematica: " ^ string_of_float (t2 -. t1) ^ " seconds") in
  let%lwt _ = Options.WithLwt.trace "OUTPUT FROM MATHEMATICA:" in
  let%lwt _ = Options.WithLwt.unix
                ("cat \"" ^ ofile ^ "\" >>  " ^ !logfile) in
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
  let%lwt _ = Options.WithLwt.unix ("cat " ^ ifile ^ " >>  " ^ !logfile) in
  let%lwt _ = Options.WithLwt.trace "" in
  let%lwt _ = Options.WithLwt.trace ("Execution time of Macaulay2: " ^ string_of_float (t2 -. t1) ^ " seconds") in
  let%lwt _ = Options.WithLwt.trace "OUTPUT FROM MACAULAY2:" in
  let%lwt _ = Options.WithLwt.unix
                ("cat \"" ^ ofile ^ "\" >>  " ^ !logfile) in
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
  let%lwt _ = Options.WithLwt.unix ("cat " ^ ifile ^ " >>  " ^ !logfile) in
  let%lwt _ = Options.WithLwt.trace "" in
  let%lwt _ = Options.WithLwt.trace ("Execution time of Maple: " ^ string_of_float (t2 -. t1) ^ " seconds") in
  let%lwt _ = Options.WithLwt.trace "OUTPUT FROM MAPLE:" in
  let%lwt _ = Options.WithLwt.unix
                ("cat \"" ^ ofile ^ "\" >>  " ^ !logfile) in
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

let is_in_ideal header vars ideal p =
  let ifile = tmpfile "inputfgb_" "" in
  let ofile = tmpfile "outputfgb_" "" in
  let res =
    match !algebra_solver with
    | Singular ->
       let%lwt _ = write_singular_input ifile vars ideal p in
       let%lwt _ = run_singular header ifile ofile in
       let%lwt res = read_singular_output ofile in
       let%lwt _ = cleanup_lwt [ifile; ofile] in
       Lwt.return (res = "0")
    | Sage ->
       (* The input file to Sage must have file extension ".sage". *)
       let ifile = ifile ^ ".sage" in
       let%lwt _ = write_sage_input ifile vars ideal p in
       let%lwt _ = run_sage header ifile ofile in
       let%lwt res = read_sage_output ofile in
       let%lwt _ = cleanup_lwt [ifile; ofile] in
       Lwt.return (res = "true")
    | Magma ->
       let%lwt _ = write_magma_input ifile vars ideal p in
       let%lwt _ = run_magma header ifile ofile in
       let%lwt res = read_magma_output ofile in
       let%lwt _ = cleanup_lwt [ifile; ofile] in
       Lwt.return (res = "true")
    | Mathematica ->
       let%lwt _ = write_mathematica_input ifile vars ideal p in
       let%lwt _ = run_mathematica header ifile ofile in
       let%lwt res = read_mathematica_output ofile in
       let%lwt _ = cleanup_lwt [ifile; ofile] in
       Lwt.return (res = "0")
    | Macaulay2 ->
       let%lwt _ = write_macaulay2_input ifile vars ideal p in
       let%lwt _ = run_macaulay2 header ifile ofile in
       let%lwt res = read_macaulay2_output ofile in
       let%lwt _ = cleanup_lwt [ifile; ofile] in
       Lwt.return (res = "0")
    | Maple ->
       let%lwt _ = write_maple_input ifile vars ideal p in
       let%lwt _ = run_maple header ifile ofile in
       let%lwt res = read_maple_output ofile in
       let%lwt _ = cleanup_lwt [ifile; ofile] in
       Lwt.return (res = "true")
    | SMTSolver _ -> failwith ("Ideal membership queries are not supported by SMT solver.")
  in
  res

(* Verify range assertions in a rspec containing no rcut *)
let verify_rspec_assert_no_rcut header s hashopt =
  let verify_one cut_header s =
    let f = bexp_rbexp s.rspre in
    let p = bexp_program s.rsprog in
    let g = bexp_rbexp s.rspost in
    let gs = split_bexp g in
    Lwt_list.for_all_p
      (fun g ->
        let rheader = ["range condition: " ^ string_of_bexp g] in
        let%lwt r =
          solve_simp ~header:(cut_header@rheader) (f::p@[g]) in
        Lwt.return (r = Unsat))
      gs in
  let rec verify_ands cut_header s =
    match s.rspost with
    | Rand (e1, e2) ->
       let%lwt r1 =
         verify_ands cut_header
           { rspre = s.rspre; rsprog = s.rsprog; rspost = e1;
             rspwss = s.rspwss } in
       if r1 then
         let%lwt r2 =
           verify_ands cut_header
             { rspre = s.rspre; rsprog = s.rsprog; rspost = e2;
               rspwss = s.rspwss } in
         Lwt.return r2
       else
         Lwt.return_false
    | _ ->
       let%lwt r = if s.rspost = Rtrue then Lwt.return_true
                   else (if !apply_slicing
                         then verify_one cut_header (slice_rspec_ssa s hashopt)
                         else verify_one cut_header s) in
       Lwt.return r in
  verify_ands header s

let verify_espec_single_conjunct_ideal cut_headers vgen s =
  let (_, entailments) = polys_of_espec vgen s in
  Lwt_list.for_all_p
    (fun (post, vars, ideal, p) ->
      let eheader = ["= algebraic condition: " ^ string_of_ebexp post;
                     "Try #0 ="] in
      let%lwt r = is_in_ideal (cut_headers@eheader) vars [] p in
      if r then
        Lwt.return_true
      else
        let eheader = ["= algebraic condition: " ^ string_of_ebexp post;
                       "Try #1 ="] in
        let%lwt r = is_in_ideal (cut_headers@eheader) vars ideal p in
        Lwt.return r) entailments

let verify_espec_single_conjunct_smt solver cut_headers vgen s =
  let (_, smtlib) = smtlib_espec vgen s in
  let ifile = tmpfile "inputfgb_" ".smt2" in
  let ofile = tmpfile "outputfgb_" "" in
  let%lwt _ =
    let%lwt ifd = Lwt_unix.openfile ifile
                [Lwt_unix.O_WRONLY; Lwt_unix.O_CREAT; Lwt_unix.O_TRUNC]
                0o600 in
    let ch = Lwt_io.of_fd ~mode:Lwt_io.output ifd in
    let%lwt _ = Lwt_io.write ch smtlib in
    Lwt_io.close ch in
  let%lwt _ =
    let t1 = Unix.gettimeofday() in
    let%lwt _ = Options.WithLwt.unix (solver ^ "  \"" ^ ifile ^ "\" 1> \"" ^ ofile ^ "\" 2>&1") in
    let t2 = Unix.gettimeofday() in
    let%lwt _ =
      let%lwt _ = Options.WithLwt.log_lock () in
      let%lwt _ = write_header_to_log cut_headers in
      let%lwt _ = Options.WithLwt.trace ("algebraic condition: " ^ string_of_ebexp s.espost) in
      let%lwt _ = Options.WithLwt.trace "INPUT TO SMT Solver:" in
      let%lwt _ = Options.WithLwt.unix ("cat \"" ^ ifile ^ "\"" ^ " >>  " ^ !logfile) in
      let%lwt _ = Options.WithLwt.trace "" in
      let%lwt _ = Options.WithLwt.trace ("Execution time of SMT Solver " ^ solver ^ ": " ^ string_of_float (t2 -. t1) ^ " seconds") in
      let%lwt _ = Options.WithLwt.trace "OUTPUT FROM SMT SOLVER:" in
      let%lwt _ = Options.WithLwt.unix ("cat \"" ^ ofile ^ "\" >>  " ^ !logfile) in
      Options.WithLwt.trace "" in
    Lwt.return_unit in
  let%lwt res = read_one_line ofile in
  let%lwt _ = cleanup_lwt [ifile; ofile] in
  Lwt.return (res = "unsat")

let verify_espec_single_conjunct cut_headers vgen s hashopt =
  let verify_one =
    match !algebra_solver with
    | SMTSolver solver -> verify_espec_single_conjunct_smt solver
    | _ -> verify_espec_single_conjunct_ideal in
  if (s.espost = Etrue)
     || (espre_implies_espost s.espre s.espost)
     || (espost_in_assumes s.esprog s.espost) then Lwt.return_true
  else (if !apply_slicing
        then verify_one cut_headers vgen (slice_espec_ssa s hashopt)
        else verify_one cut_headers vgen s)

(* Verify algebraic assertions in an espec containing no ecut *)
let verify_espec_assert_no_ecut headers vgen s hashopt =
  let rec verify_ands cut_headers vgen s hashopt =
    match s.espost with
    | Eand (e1, e2) ->
       let%lwt r1 = verify_ands cut_headers vgen
                      { espre = s.espre; esprog = s.esprog;
                        espost = e1; espwss = s.espwss } hashopt in
       if r1 then
         let%lwt r2 = verify_ands cut_headers vgen
                        { espre = s.espre; esprog = s.esprog;
                          espost = e2; espwss = s.espwss } hashopt in
         Lwt.return r2
       else
         Lwt.return_false
    | _ ->
       let%lwt r = verify_espec_single_conjunct cut_headers vgen s hashopt in
       Lwt.return r in
  verify_ands headers vgen s hashopt

let verify_eassert vgen s hashopt =
  let _ = trace "===== Verifying algebraic assertions =====" in
  let mkespec f p g = { espre = f; esprog = p; espost = g; espwss = [] } in
  let delivered_helper res (r, _e) = res && r in
  let mk_promise cut_headers epre evisited e =
    let headers = cut_headers@["= Checking algebraic assertion: " ^
                                 Ast.Cryptoline.string_of_bexp e ^ " ="] in
    let%lwt e_res =
      verify_espec_assert_no_ecut headers vgen
        (mkespec epre (List.rev evisited) (eqn_bexp e)) hashopt in
    Lwt.return (e_res, e) in
  let verify_spec cut_headers (res, pending) s =
    let rec verify_program (res, pending) epre evisited p =
      if res then
        if List.length pending < !jobs then
          match p with
          | [] -> (res, pending)
          | Iassert e::tl -> let promise = mk_promise cut_headers epre evisited e in
                             verify_program (res, promise::pending) epre evisited tl
          | hd::tl -> verify_program (res, pending) epre (hd::evisited) tl
        else
          let (res', promised) = work_on_pending delivered_helper res pending in
          verify_program (res', promised) epre evisited p
      else
        (res, pending) in
    verify_program (res, pending) s.espre [] s.esprog in
  apply_to_cuts_lwt !verify_eacuts verify_spec delivered_helper true [] (cut_espec (espec_of_spec s))

let verify_rassert _vgen s hashopt =
  let _ = trace "===== Verifying range assertions =====" in
  let mkrspec f p g = { rspre = f; rsprog = p; rspost = g; rspwss = [] } in
  let delivered_helper res (r, _e) = res && r in
  let mk_promise cut_headers rpre rvisited e =
    let headers = cut_headers@["= Checking range assertion: " ^
                                 Ast.Cryptoline.string_of_bexp e ^ " ="] in
    let%lwt r_res =
      verify_rspec_assert_no_rcut headers
        (mkrspec rpre (List.rev rvisited) (rng_bexp e)) hashopt in
    Lwt.return (r_res, e) in
  let verify_spec cut_headers (res, pending) s =
    let rec verify_program (res, pending) rpre rvisited p =
      if res then
        if List.length pending < !jobs then
          match p with
          | [] -> (res, pending)
          | Iassert e::tl -> let promise = mk_promise cut_headers rpre rvisited e in
                             verify_program (res, promise::pending) rpre rvisited tl
          | hd::tl -> verify_program (res, pending) rpre (hd::rvisited) tl
        else
          let (res', promised) = work_on_pending delivered_helper res pending in
          verify_program (res', promised) rpre rvisited p
      else
        (res, pending) in
    verify_program (res, pending) s.rspre [] s.rsprog in
  apply_to_cuts_lwt !verify_racuts verify_spec delivered_helper true [] (cut_rspec (rspec_of_spec s))

let verify_assert vgen s hashopt =
  let _ = trace "===== Verifying assertions =====" in
  let mkrspec f p g = { rspre = f; rsprog = p; rspost = g; rspwss = [] } in
  let mkespec f p g = { espre = f; esprog = p; espost = g; espwss = [] } in
  let delivered_helper res (r, _e) = res && r in
  let mk_promise (ei, ri) (epre, rpre) (evisited, rvisited) e =
    let headers = ["=== Checking assertion in ecut #" ^ string_of_int ei ^ ", rcut #" ^ string_of_int ri ^ ": " ^
                     Ast.Cryptoline.string_of_bexp e ^ " ==="] in
    let%lwt r_res =
      verify_rspec_assert_no_rcut headers
        (mkrspec rpre (List.rev rvisited) (rng_bexp e)) hashopt in
    let%lwt e_res =
      if r_res then
        verify_espec_assert_no_ecut headers vgen
          (mkespec epre (List.rev evisited) (eqn_bexp e)) hashopt
      else
        Lwt.return_false in
    Lwt.return (e_res, e) in
  let rec verify (ei, ri) res pending (epre, rpre) (evisited, rvisited) p =
    if res then
      if List.length pending < !jobs then
        match p with
        | [] -> finish_pending delivered_helper res pending
        | Iassert e::tl ->
           let promise = mk_promise (ei, ri) (epre, rpre) (evisited, rvisited) e in
           verify (ei, ri) res (promise::pending) (epre, rpre) (evisited, rvisited) tl
        | Icut (ecuts, [])::tl -> verify (ei+1, ri) res pending (eands (fst (List.split ecuts)), rpre) ([], rvisited) tl
        | Icut ([], rcuts)::tl -> verify (ei, ri+1) res pending (epre, rands (fst (List.split rcuts))) (evisited, []) tl
        | Icut (ecuts, rcuts)::tl -> verify (ei+1, ri+1) res pending (eands (fst (List.split ecuts)), rands (fst (List.split rcuts))) ([], []) tl
        | hd::tl ->
           verify (ei, ri) res pending (epre, rpre) (hd::evisited, hd::rvisited) tl
      else
        let (res', promised) = work_on_pending delivered_helper res pending in
        verify (ei, ri) res' promised (epre, rpre) (evisited, rvisited) p
    else
      finish_pending delivered_helper res pending in
  verify (0, 0) true [] (eqn_bexp s.spre, rng_bexp s.spre) ([], []) s.sprog

let verify_rspec s hashopt =
  let _ = trace "===== Verifying range specification =====" in
  let rec rbexp_implies_rspost re se  =
    match re with
    | Rand (re0, re1) ->
       rbexp_implies_rspost re0 se || rbexp_implies_rspost re1 se
    | _ -> re = se in
  let rpost_in_assumes prog rspost =
    List.exists (fun inst ->
        match inst with
        | Iassume (_, r) -> rbexp_implies_rspost r rspost
        | _ -> false) prog in
  let verify_one cut_headers s =
    if rpost_in_assumes s.rsprog s.rspost then
      Lwt.return_true
    else
      let f = bexp_rbexp s.rspre in
      let p = bexp_program s.rsprog in
      let g = bexp_rbexp s.rspost in
      let gs = split_bexp g in
    Lwt_list.for_all_p
      (fun g ->
        let headers = ["range condition: " ^ string_of_bexp g] in
        let%lwt r = solve_simp ~header:(cut_headers@headers) (f::p@[g]) in
        Lwt.return (r = Unsat))
      gs in
  let mk_promise cut_headers s =
    if !apply_slicing then verify_one cut_headers (slice_rspec_ssa s hashopt)
    else verify_one cut_headers s in
  let delivered_helper res r = res && r in
  let verify_ands cut_headers (res, pending) s =
    let rec verify_ands_helper (res, pending) ss =
      if res then
        if List.length pending < !jobs then
          match ss with
          | [] -> (res, pending)
          | hd::tl -> let promise = mk_promise cut_headers hd in
                      verify_ands_helper (res, promise::pending) tl
        else
          let (res', pending') = work_on_pending delivered_helper res pending in
          verify_ands_helper (res', pending') ss
      else
        (res, pending) in
    let ss = split_rspec_post s in
    verify_ands_helper (res, pending) ss in
  apply_to_cuts_lwt !verify_rcuts verify_ands delivered_helper true [] (cut_rspec s)

let verify_espec vgen s hashopt =
  let _ = trace "===== Verifying algebraic specification =====" in
  let mk_promise cut_headers s = verify_espec_single_conjunct cut_headers vgen s hashopt in
  let delivered_helper res r = res && r in
  let verify_ands vgen cut_headers (res, pending) s =
    let rec verify_and_helper vgen (res, pending) ss =
      if res then
        if List.length pending < !jobs then
          match ss with
          | [] -> (res, pending)
          | hd::tl ->
             let promise = mk_promise cut_headers hd in
             verify_and_helper vgen (res, promise::pending) tl
        else
          let (res', pending') = work_on_pending delivered_helper res pending in
          verify_and_helper vgen (res', pending') ss
      else
        (res, pending) in
    let ss = split_espec_post s in
    verify_and_helper vgen (res, pending) ss in
  apply_to_cuts_lwt !verify_ecuts (verify_ands vgen) delivered_helper true [] (cut_espec s)

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
let run_cli_vsafety id timeout idx instr ifile =
  let ofile = tmpfile "safety_output_" "" in
  let lfile = tmpfile "safety_log_" "" in
  (* Run CLI *)
  let cmd = String.concat " "
                          [!cli_path;
                           "-c vsafety";
                           "-instr " ^ string_of_int idx;
                           "-w " ^ string_of_int !wordsize;
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
      let _ = Options.WithLwt.unix ("cat \"" ^ ifile ^ "\" >> \"" ^ !Options.Std.logfile ^ "\"") in
      ()
  in
  let%lwt _ = Options.WithLwt.log_unlock () in
  (* Remove temporary files *)
  let%lwt _ = cleanup_lwt [ofile; lfile] in
  (* Return the result *)
  Lwt.return (match line with
              | "sat" -> (id, timeout, idx, instr, "[FAILED]", Solved Sat)
              | "unsat" -> (id, timeout, idx, instr, "[OK]", Solved Unsat)
              | "unknown" -> (id, timeout, idx, instr, "[FAILED]", Solved Unknown)
              | "timeout" -> (id, timeout, idx, instr, "[TIMEOUT]", Unfinished [(id, timeout, idx, instr)])
              | _ -> failwith ("Unknown result from the CLI: " ^ line))

(* Options.vscuts is handled in Std.verify_safety. *)
let verify_safety_cli f p =
  let ifile = tmpfile "safety_input_" "" in
  let ch = open_out ifile in
  let _ = output_string ch (string_of_rspec ~typ:true {rspre = f; rsprog = p; rspost = Rtrue; rspwss = []}); close_out ch in
  let add_unsolved q res =
    match res with
    | Solved Unsat -> Unfinished [q]
    | Unfinished unsolved -> Unfinished (q::unsolved)
    | _ -> assert false in
  let delivered_helper r (id, timeout, idx, i, ret_str, ret) =
    let _ = vprint ("\t\t Safety condition #" ^ string_of_int id ^ "\t") in
    let _ = vprintln (ret_str ^ (match ret with Unfinished _ -> " timeout = " ^ string_of_int timeout | _ -> "")) in
    match r with
    | Solved Sat | Solved Unknown -> r
    | _ ->
       match ret with
       | Solved Sat | Solved Unknown -> ret
       | Solved Unsat -> r
       | Unfinished qs ->
          let _ = assert (List.length qs = 1) in
          (* Increase timeout for unsolved tasks *)
          add_unsolved (id, timeout * 2, idx, i) r in
  let rec verify_round qs (res, pending) =
    match res with
      Solved Sat
    | Solved Unknown -> (res, pending)
    | _ ->
       if List.length pending < !jobs then
         match qs with
         | [] -> (res, pending)
         | (id, timeout, idx, i)::tl ->
            let promise = run_cli_vsafety id timeout idx i ifile in
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
  let add_index = fun p -> List.mapi (fun idx i -> (!Options.Std.incremental_safety_timeout, idx, i)) p in
  let filter_true = fun qs -> List.filter (fun (_, _, i) -> bexp_instr_safe i <> True) qs in
  let add_id = fun qs -> List.mapi (fun id (timeout, idx, i) -> (id, timeout, idx, i)) qs in
  let res = verify_rec (List.rev (add_id (filter_true (add_index p)))) (Solved Unsat, []) in
  let _ = cleanup [ifile] in
  res

(*
 * Verify a range or an algebraic specification using CLI to run verification tasks.
 * s: a range or an algebraic specification
 * run_cli_verify: a function that verifies an atomic predicate
 * header_gen: string -> string: a function that generats the header output to the log for some cut
 * flatten_spec: a function that converts a specification (containing no cut) into verification
 *               targets (in the form of specifications). For example, to verify algebraic
 *               assertions, convert a specifiction into several specifications where a post-condition
 *               corresponds to an algebraic property in an assertion.
 * cut_spec: a function that cuts the input specification
 * verify_cuts: a list option specifying the indices of cuts to be verified
 *)
let verify_spec_cli s run_cli_verify header_gen flatten_spec cut_spec verify_cuts =
  let delivered_helper res r = res && r in
  let verify_ands cut_headers (res, pending) s =
    let rec verify_ands_helper (res, pending) ss =
      if res then
        if List.length pending < !jobs then
          match ss with
          | [] -> (res, pending)
          | hd::tl ->
             let promise = run_cli_verify (header_gen (String.concat "" cut_headers)) hd in
             verify_ands_helper (res, promise::pending) tl
        else
          let (res', pending') = work_on_pending delivered_helper res pending in
          verify_ands_helper (res', pending') ss
    else
      (res, pending) in
    let ss = flatten_spec s in
    verify_ands_helper (res, pending) ss in
  apply_to_cuts_lwt verify_cuts verify_ands delivered_helper true [] (cut_spec s)

(* Run CLI to verify an espec (no conjunction in the postcondition). *)
let run_cli_vespec header s =
  let ifile = tmpfile "espec_input_" "" in
  let ofile = tmpfile "espec_output_" "" in
  let lfile = tmpfile "espec_log_" "" in
  (* Write the input to CLI *)
  let%lwt ifd = Lwt_unix.openfile ifile [Lwt_unix.O_WRONLY; Lwt_unix.O_CREAT; Lwt_unix.O_TRUNC] 0o600 in
  let ch = Lwt_io.of_fd ~mode:Lwt_io.output ifd in
  let%lwt _ = Lwt_io.write ch (string_of_espec ~typ:true s) in
  let%lwt _ = Lwt_io.close ch in
  (* Run CLI *)
  let cmd = String.concat " "
                          [!cli_path;
                           "-c vespec";
                           "-w " ^ string_of_int !wordsize;
                           ("-qfbv_solver " ^ !Options.Std.range_solver);
                           (if !Options.Std.range_solver_args = "" then ""
                            else "-qfbv_args \"" ^ !Options.Std.range_solver_args ^ "\"");
                           (if !Options.Std.use_btor then "-btor"
                            else "");
                           (if !Options.Std.incremental_safety then "-isafety"
                            else "");
                           (if !Options.Std.incremental_safety then "-isafety_timeout " ^ string_of_int !Options.Std.incremental_safety_timeout
                            else "");
                           (match !Options.Std.algebra_solver with
                            | Options.Std.Singular -> "-singular " ^ !Options.Std.singular_path
                            | Options.Std.Magma -> "-magma " ^ !Options.Std.magma_path
                            | Options.Std.Sage -> "-sage " ^ !Options.Std.sage_path
                            | Options.Std.Mathematica -> "-mathematica " ^ !Options.Std.mathematica_path
                            | Options.Std.Macaulay2 -> "-macaulay2 " ^ !Options.Std.macaulay2_path
                            | Options.Std.SMTSolver solver -> "smt:" ^ solver
                            | _ -> "");
                           (if !Options.Std.algebra_solver_args = "" then ""
                            else "-algebra_args \"" ^ !Options.Std.algebra_solver_args ^ "\"");
                           (if not !Options.Std.apply_rewriting then "-disable_rewriting"
                            else "");
                           (if !Options.Std.carry_constraint then ""
                            else "-no_carry_constraint");
                           "-vo " ^ string_of_variable_ordering !Options.Std.variable_ordering;
                           (if !Options.Std.polys_rewrite_replace_eexp then "-re"
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
  let%lwt _ = Options.WithLwt.unix ("cat \"" ^ lfile ^ "\" >> \"" ^ !Options.Std.logfile ^ "\" 2>&1") in
  let _ =
    (* Log abnormal outputs *)
    if line <> "true" && line <> "false" then
      let _ = Options.WithLwt.trace ("Got abnormal output:") in
      let _ = Options.WithLwt.trace line in
      let _ = Options.WithLwt.trace ("From the input:") in
      let _ = Options.WithLwt.unix ("cat \"" ^ ifile ^ "\" >> \"" ^ !Options.Std.logfile ^ "\" 2>&1") in
      ()
  in
  let%lwt _ = Options.WithLwt.log_unlock () in
  (* Remove temporary files *)
  let%lwt _ = cleanup_lwt [ifile; ofile; lfile] in
  (* Return the result *)
  Lwt.return (String.trim line = "true")

(* Verify an espec using CLI to run verification tasks *)
let verify_espec_cli s =
  let _ = trace "===== Verifying algebraic specification =====" in
  verify_spec_cli s
                  run_cli_vespec (fun cut_header -> cut_header ^ "\n\n= Algebraic Specification =")
                  split_espec_post cut_espec !verify_ecuts

(* Run CLI to verify a rspec (no conjunction in the postcondition). *)
let run_cli_vrspec header s =
  let ifile = tmpfile "rspec_input_" "" in
  let ofile = tmpfile "rspec_output_" "" in
  let lfile = tmpfile "rspec_log_" "" in
  (* Write the input to CLI *)
  let%lwt ifd = Lwt_unix.openfile ifile [Lwt_unix.O_WRONLY; Lwt_unix.O_CREAT; Lwt_unix.O_TRUNC] 0o600 in
  let ch = Lwt_io.of_fd ~mode:Lwt_io.output ifd in
  let%lwt _ = Lwt_io.write ch (string_of_rspec ~typ:true s) in
  let%lwt _ = Lwt_io.close ch in
  (* Run CLI *)
  let cmd = String.concat " "
                          [!cli_path;
                           "-c vrspec";
                           "-w " ^ string_of_int !wordsize;
                           ("-qfbv_solver " ^ !Options.Std.range_solver);
                           (if !Options.Std.range_solver_args = "" then ""
                            else "-qfbv_args \"" ^ !Options.Std.range_solver_args ^ "\"");
                           (if !Options.Std.use_btor then "-btor"
                            else "");
                           (if not !Options.Std.apply_rewriting then "-disable_rewriting"
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
  let%lwt _ = Options.WithLwt.unix ("cat \"" ^ lfile ^ "\" >> \"" ^ !Options.Std.logfile ^ "\" 2>&1") in
  let _ =
    (* Log abnormal outputs *)
    if line <> "true" && line <> "false" then
      let _ = Options.WithLwt.trace ("Got abnormal output:") in
      let _ = Options.WithLwt.trace line in
      let _ = Options.WithLwt.trace ("From the input:") in
      let _ = Options.WithLwt.unix ("cat \"" ^ ifile ^ "\" >> \"" ^ !Options.Std.logfile ^ "\" 2>&1") in
      ()
  in
  let%lwt _ = Options.WithLwt.log_unlock () in
  (* Remove temporary files *)
  let%lwt _ = cleanup_lwt [ifile; ofile; lfile] in
  (* Return the result *)
  Lwt.return (String.trim line = "true")

(* Verify a rspec using CLI to run verification tasks *)
let verify_rspec_cli s _ =
  let _ = trace "===== Verifying range specification =====" in
  verify_spec_cli s
                  run_cli_vrspec (fun cut_header -> cut_header ^ "\n\n= Range Specification =")
                  split_rspec_post cut_rspec !verify_rcuts

let verify_eassert_cli s =
  let _ = trace "===== Verifying algebraic assertions =====" in
  let mkespec f p g = { espre = f; esprog = p; espost = g; espwss = [] } in
  let flatten_assertions s =
    let rec flatten_helper res_rev epre evisited_rev p =
      match p with
      | [] -> List.rev res_rev
      | Iassert e::tl ->
         let ss = split_espec_post (mkespec epre (List.rev evisited_rev) (eqn_bexp e)) in
         flatten_helper (List.rev_append ss res_rev) epre evisited_rev tl
      | hd::tl -> flatten_helper res_rev epre (hd::evisited_rev) tl in
    flatten_helper [] s.espre [] s.esprog in
  verify_spec_cli (espec_of_spec s)
    run_cli_vespec (fun cut_header -> cut_header ^ "\n\n= Algebraic Assertion =")
    flatten_assertions cut_espec !verify_eacuts

let verify_rassert_cli s =
  let _ = trace "===== Verifying range assertions =====" in
  let mkrspec f p g = { rspre = f; rsprog = p; rspost = g; rspwss = [] } in
  let flatten_assertions s =
    let rec flatten_helper res_rev rpre rvisited_rev p =
      match p with
      | [] -> List.rev res_rev
      | Iassert e::tl ->
         let ss = split_rspec_post (mkrspec rpre (List.rev rvisited_rev) (rng_bexp e)) in
         flatten_helper (List.rev_append ss res_rev) rpre rvisited_rev tl
      | hd::tl -> flatten_helper res_rev rpre (hd::rvisited_rev) tl in
    flatten_helper [] s.rspre [] s.rsprog in
  verify_spec_cli (rspec_of_spec s)
    run_cli_vrspec (fun cut_header -> cut_header ^ "\n\n= Algebraic Assertion =")
    flatten_assertions cut_rspec !verify_racuts

let verify_assert_cli s =
  let _ = trace "===== Verifying assertions =====" in
  let mkrspec f p g = { rspre = f; rsprog = p; rspost = g; rspwss = [] } in
  let mkespec f p g = { espre = f; esprog = p; espost = g; espwss = [] } in
  let rec verify (ei, ri) (epre, rpre) (evisited, rvisited) p =
    match p with
    | [] -> true
    | Iassert e::tl ->
       let verifiers = List.flatten [
                           begin
                             match !verify_racuts with
                             | Some cuts when not (List.mem ri cuts) -> []
                             | _ ->
                                (match rng_bexp e with
                                 | Rtrue -> []
                                 | _ -> [fun () -> verify_spec_cli (mkrspec rpre (List.rev rvisited) (rng_bexp e))
                                                     run_cli_vrspec (fun _cutno -> "== Range Properties in Assertion " ^ Ast.Cryptoline.string_of_bexp e ^ " ==")
                                                     split_rspec_post cut_rspec None])
                           end;
                           begin
                             match !verify_eacuts with
                             | Some cuts when not (List.mem ei cuts) -> []
                             | _ ->
                                (match eqn_bexp e with
                                 | Etrue -> []
                                 | _ -> [fun () -> verify_spec_cli (mkespec epre (List.rev evisited) (eqn_bexp e))
                                                     run_cli_vespec (fun _cutno -> "== Algebraic Properties in Assertion " ^ Ast.Cryptoline.string_of_bexp e ^ " ==")
                                                     split_espec_post cut_espec None])
                           end;
                           [fun () -> verify (ei, ri) (epre, rpre) (evisited, rvisited) tl]
                         ] in
       List.for_all (fun f -> f()) verifiers
    | Icut (ecuts, [])::tl -> verify (ei+1, ri) (eands (fst (List.split ecuts)), rpre) ([], rvisited) tl
    | Icut ([], rcuts)::tl -> verify (ei, ri+1) (epre, rands (fst (List.split rcuts))) (evisited, []) tl
    | Icut (ecuts, rcuts)::tl -> verify (ei+1, ri+1) (eands (fst (List.split ecuts)), rands (fst (List.split rcuts))) ([], []) tl
    | hd::tl -> verify (ei, ri) (epre, rpre) (hd::evisited, hd::rvisited) tl in
  verify (0, 0) (eqn_bexp s.spre, rng_bexp s.spre) ([], []) s.sprog
