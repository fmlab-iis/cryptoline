
open Arg
open Options.Std
open Typecheck.Std
open Parsers.Std
open Ast.Cryptoline
open Ast.MultiTrack
open Utils.Std

let mk_arg_desc lines = (String.concat "\n\t     " lines) ^ "\n"

let args_parsing =
  [
    ("-rename_local", Set rename_local, mk_arg_desc([""; "Rename local variables when inlining a call to a procedure."]))
  ]

let args_io =
  [
    ("-debug", Set Options.Std.debug, mk_arg_desc(["    Log debug messages"]));
    ("-keep", Set keep_temp_files, mk_arg_desc(["     Keep temporary files."]));
    ("-o", String (fun str -> logfile := str), mk_arg_desc(["FILE    Save log messages to files with the specified prefix. The log file";
                                                            "appended with \".FN.log\" stores the messages for verifying the";
                                                            "function FN. If the specified prefix ends with filename extension";
                                                            "\".log\" or \".txt\", the function name FN will be prepended to the";
                                                            "extension. The default is " ^ !logfile ^ "."]));
    ("-tmpdir", String (fun str -> tmpdir := Some str), mk_arg_desc(["PATH"; "Specify a directory for temporary files."]));
    ("-v", Set verbose, mk_arg_desc(["\t     Display verbose messages."]))
  ]

(* Do not use -c or -instr below. *)
let args_verifier =
  [
    ("-algebra_args", String (fun str -> algebra_solver_args := str),
     mk_arg_desc(["ARGS"; "Specify additional arguments passed to the algebra solver."]));
    ("-algebra_smt_expn_op", String (fun str -> native_smtlib_expn_operator := Some str),
     mk_arg_desc(["OP"; "Specify the exponential operator nativelly supported by SMT solver"; "(specified by -algebra_solver) for algebraic properties."]));
    ("-algebra_solver",
     String (fun str -> algebra_solver := Options.Std.parse_algebra_solver str),
     mk_arg_desc(["";
                  "Specify the algebra solver, which can be "
                  ^ Options.Std.string_of_algebra_solver Options.Std.Singular ^ ", "
                  ^ Options.Std.string_of_algebra_solver Options.Std.Sage ^ ", "
                  ^ Options.Std.string_of_algebra_solver Options.Std.Magma ^ ",";
                  Options.Std.string_of_algebra_solver Options.Std.Mathematica ^ ", "
                  ^ Options.Std.string_of_algebra_solver Options.Std.Macaulay2 ^ ", "
                  ^ Options.Std.string_of_algebra_solver Options.Std.Maple ^ ", or "
                  ^ "smt:SMT_SOLVER where SMT_SOLVER";
                  "is the name of the SMT solver which accepts inputs in SMTLIB";
                  "format. The default algebra solver is " ^ Options.Std.string_of_algebra_solver Options.Std.default_algebra_solver ^ "."]));
    ("-br", Set use_binary_repr, mk_arg_desc(["       Always use binary representation in SMTLIB outputs. Otherwise,"; "hexadecimal representation is used if applicable."]));
    ("-btor", Set use_btor, mk_arg_desc(["     Output btor format to Boolector"]));
    ("-disable_rewriting", Unit (fun _ -> Options.Std.disable_rewriting()), mk_arg_desc([""; "Disable all rewriting"]));
    ("-disable_rewriting:mov", Clear apply_rewrite_mov, mk_arg_desc([""; "Disable rewriting based on mov statements"]));
    ("-disable_rewriting:vpc", Clear apply_rewrite_vpc, mk_arg_desc([""; "Disable rewriting based on vpc statements"]));
    ("-disable_rewriting:poly", Clear apply_rewrite_poly, mk_arg_desc([""; "Disable rewriting polynomials"]));
    ("-enable_rewriting:eqmod", Set apply_rewrite_eqmod, mk_arg_desc([""; "Enable rewriting eqmod"]));
    ("-expand-poly", Set Options.Std.expand_poly, mk_arg_desc([""; "Expand polynomials before sending them to computer algebra systems"; "(experimental)"]));
    ("-implicit-const-conversion", Set implicit_const_conversion, mk_arg_desc([""; "Implicitly convert constants to fit into their types"]));
    ("-isafety", Set incremental_safety, mk_arg_desc(["  Verify program safety incrementally."]));
    ("-isafety_timeout", Int (fun i -> incremental_safety_timeout := i), mk_arg_desc(["INT"; "Set initial timeout for incremental verification of program safety."]));
    ("-isafety-across-cuts", Set cross_cuts, mk_arg_desc([""; "Verify safety conditions across cuts."]));
    ("-macaulay2", String (fun str -> macaulay2_path := str; algebra_solver := Macaulay2),
     mk_arg_desc(["PATH"; "Use Macaulay2 at the specified path."]));
    ("-macaulay2_path", String (fun str -> macaulay2_path := str),
     mk_arg_desc(["PATH"; "Set the path to Macaulay2."]));
    ("-magma", String (fun str -> magma_path := str; algebra_solver := Magma),
     mk_arg_desc(["PATH"; "Use Magma at the specified path."]));
    ("-magma_path", String (fun str -> magma_path := str),
     mk_arg_desc(["PATH"; "Set the path to Magma."]));
    ("-maple", String (fun str -> maple_path := str; algebra_solver := Maple),
     mk_arg_desc(["PATH"; "Use Maple at the specified path."]));
    ("-maple_path", String (fun str -> maple_path := str),
     mk_arg_desc(["PATH"; "Set the path to Maple."]));
    ("-mathematica", String (fun str -> mathematica_path := str; algebra_solver := Mathematica),
     mk_arg_desc(["PATH"; "Use Mathematica command-line script interpreter at the specified"; "path."]));
    ("-mathematica_path", String (fun str -> mathematica_path := str),
     mk_arg_desc(["PATH"; "Set the path to Mathematica command-line script interpreter."]));
    ("-mip-safety-solver", Symbol (["isl"; "ppl"; "smt:z3:lia"],
                                   fun solver -> if solver = "isl" then Options.Std.mip_safety_solver := Options.Std.ISL
                                                 else if solver = "ppl" then Options.Std.mip_safety_solver := Options.Std.PPL
                                                 else if solver = "smt:z3:lia" then Options.Std.mip_safety_solver := SMTSolver { algsmt_path = "z3"; algsmt_logic = LIA }
                                                 else Stdlib.invalid_arg (Printf.sprintf "Unknown MIP solver for safety: %s" solver)),
                           mk_arg_desc([""; "Specify the MIP solver for safety checking. Use with the argument"; "`-safety-engine mip`."]));
    ("-no_carry_constraint", Clear carry_constraint, mk_arg_desc([""; "Do not add carry constraints."]));
    ("-minimize_constraint", Set minimize_constraint, mk_arg_desc([""; "Minimize constraints."]));
    ("-python_path", String (fun str -> python_path := str),
     mk_arg_desc(["PATH"; "Set the path to Python with pplpy."]));
    ("-qfbv_args", String (fun str -> range_solver_args := str),
     mk_arg_desc(["ARGS"; "Specify additional arguments passed to the QF_BV solver."]));
    ("-qfbv_solver", String (fun str -> range_solver := str),
     mk_arg_desc(["PATH"; "Specify the QF_BV solver (default is " ^ default_range_solver ^ "). The QF_BV solver";
                  "must output one of \"sat\", \"unsat\", or \"unknown\" for any QF_BV";
                  "query in SMTLIB format."]));
    ("-re", Set polys_rewrite_replace_eexp, mk_arg_desc(["\t     Replace expressions rather than variables in the rewriting of"; "polynomials (experimental)."]));
    ("-safety-engine", Symbol (["smt"; "abs_interp"; "mip"], fun engine -> if engine = "smt" then ()
                                                                           else if engine = "abs_interp" then Options.Std.abs_interp := true
                                                                           else if engine = "mip" then Options.Std.safety_by_mip := true
                                                                           else Stdlib.invalid_arg (Printf.sprintf "Unknown engine for safety checking: %s" engine)),
     mk_arg_desc([""; "Specify the engine for safety checking. The argument `-safety-engine abs_interp` is equivalent to `-abs_interp`."]));
    ("-sage", String (fun str -> sage_path := str; algebra_solver := Sage),
     mk_arg_desc(["PATH"; "Use Sage at the specified path."]));
    ("-sage_path", String (fun str -> sage_path := str),
     mk_arg_desc(["PATH"; "Set the path to Sage."]));
    ("-singular", String (fun str -> singular_path := str; algebra_solver := Singular),
     mk_arg_desc(["PATH"; "Use Singular at the specified path."]));
    ("-singular_path", String (fun str -> singular_path := str),
     mk_arg_desc(["PATH"; "Set the path to Singular."]));
    ("-slicing", Set apply_slicing, mk_arg_desc(["  Enable slicing."]));
    ("-track-split", Set track_split, mk_arg_desc([""; "Track splits of atoms."]));
    ("-two_phase_rewriting", Set two_phase_rewriting, mk_arg_desc [""; "Use two-phase rewriting in verifying algebraic specifications."; "Note that single-phase rewriting is still used when -cli is"; "enabled."]);
    ("-vo", Symbol (["lex"; "appearing"; "rev_lex"; "rev_appearing"],
                    (fun str ->
                      try
                        variable_ordering := parse_variable_ordering str
                      with Not_found ->
                        failwith ("Unknown variable ordering: " ^ str))),
     mk_arg_desc([""; "Set variable ordering in algebra solver (default is " ^ string_of_variable_ordering !variable_ordering ^ ")."]))
  ]

let parse_and_check_all file =
  let parse_specs file =
    let t1 = Unix.gettimeofday() in
    let _ = vprint ("Parsing CryptoLine file:\t\t\t") in
    try
      let specs = specs_from_file file in
      let t2 = Unix.gettimeofday() in
      let _ = vprintln ("[OK]\t\t" ^ string_of_running_time t1 t2) in
      specs
    with ex ->
      let t2 = Unix.gettimeofday() in
      let _ = vprintln ("[FAILED]\t" ^ string_of_running_time t1 t2) in
      raise ex in
  let check_well_formedness specs =
    let t1 = Unix.gettimeofday() in
    let _ = vprint ("Checking well-formedness:\t\t\t") in
    let ropt = SM.fold (
                   fun _ ((ivs, _), s) ropt ->
                   match ropt with
                   | None -> illformed_tagged_spec_reason (VS.of_list ivs) s
                   | _ -> ropt) specs None in
    let wf = ropt = None in
    let t2 = Unix.gettimeofday() in
    let _ = vprintln ((if wf then "[OK]\t" else "[FAILED]") ^ "\t" ^ string_of_running_time t1 t2) in
    let _ =
      match ropt with
      | Some (TIllPrecondition e, r) -> vprintln("Ill-formed precondition: " ^ string_of_tagged_bexp e ^ ".\nReason: " ^ r)
      | Some (TIllInstruction i, r) -> vprintln("Ill-formed instruction: " ^ string_of_tagged_instr i ^ ".\nReason: " ^ r)
      | Some (TIllPostcondition e, r) -> vprintln("Ill-formed postcondition: " ^ string_of_tagged_bexp_prove_with e ^ ".\nReason: " ^ r)
      | _ -> () in
    wf in
  let specs = parse_specs file in
  if check_well_formedness specs then SM.map (fun (vs, s) -> (vs, from_typecheck_tagged_spec s)) specs
  else if not !verbose then failwith ("The program is not well-formed. Run again with \"-v\" to see the detailed error.")
  else exit 1

let parse_and_check ?(proc = main_proc_name) file =
  let parse_spec file =
    let t1 = Unix.gettimeofday() in
    let _ = vprint ("Parsing CryptoLine file:\t\t\t") in
    try
      let specs = specs_from_file file in
      let spec =
        try
          SM.find proc specs
        with Not_found ->
          failwith ("Procedure " ^ proc ^ " is not defined.") in
      let t2 = Unix.gettimeofday() in
      let _ = vprintln ("[OK]\t\t" ^ string_of_running_time t1 t2) in
      spec
    with ex ->
      let t2 = Unix.gettimeofday() in
      let _ = vprintln ("[FAILED]\t" ^ string_of_running_time t1 t2) in
      raise ex in
  let check_well_formedness vs s =
    let t1 = Unix.gettimeofday() in
    let _ = vprint ("Checking well-formedness:\t\t\t") in
    let ropt = illformed_tagged_spec_reason vs s in
    let wf = ropt = None in
    let t2 = Unix.gettimeofday() in
    let _ = vprintln ((if wf then "[OK]\t" else "[FAILED]") ^ "\t" ^ string_of_running_time t1 t2) in
    let _ =
      match ropt with
      | Some (TIllPrecondition e, r) -> vprintln("Ill-formed precondition: " ^ string_of_tagged_bexp e ^ ".\nReason: " ^ r)
      | Some (TIllInstruction i, r) -> vprintln("Ill-formed instruction: " ^ string_of_tagged_instr i ^ ".\nReason: " ^ r)
      | Some (TIllPostcondition e, r) -> vprintln("Ill-formed postcondition: " ^ string_of_tagged_bexp_prove_with e ^ ".\nReason: " ^ r)
      | _ -> () in
    wf in
  let ((ivs, ovs), s) = parse_spec file in
  if check_well_formedness (VS.of_list ivs) s then ((ivs, ovs), from_typecheck_tagged_spec s)
  else if not !verbose then failwith ("The program is not well-formed. Run again with \"-v\" to see the detailed error.")
  else exit 1

let find_output_vars p vnames =
  let p = List.rev p in
  let rec find_output_var p vname =
    match p with
    | [] -> failwith("Output variable '" ^ vname ^ "' is not found.")
    | hd::tl -> let vs = lvs_instr hd in
                (try
                   VS.filter (fun v -> v.vname = vname) vs |> VS.min_elt
                 with Not_found ->
                   find_output_var tl vname) in
  tmap (find_output_var p) vnames
