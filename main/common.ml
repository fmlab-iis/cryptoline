
open Arg
open Options.Std

let mk_arg_desc lines = (String.concat "\n\t     " lines) ^ "\n"

(* Do not use -c or -instr below. *)
let args =
  [
    ("-algebra_args", String (fun str -> algebra_solver_args := str),
     mk_arg_desc(["ARGS"; "Specify additional arguments passed to the algebra solver."]));
    ("-algebra_smt_expn_op", String (fun str -> native_smtlib_expn_operator := Some str),
     mk_arg_desc(["OP"; "Specify the exponential operator nativelly supported by SMT solver"; "(specified by -algebra_solver) for algebraic properties."]));
    ("-algebra_solver",
     String (fun str ->
         if str = Options.Std.string_of_algebra_solver Options.Std.Singular then algebra_solver := Singular
         else if str = Options.Std.string_of_algebra_solver Options.Std.Sage then algebra_solver := Sage
         else if str = Options.Std.string_of_algebra_solver Options.Std.Magma then algebra_solver := Magma
         else if str = Options.Std.string_of_algebra_solver Options.Std.Mathematica then algebra_solver := Mathematica
         else if str = Options.Std.string_of_algebra_solver Options.Std.Macaulay2 then algebra_solver := Macaulay2
         else if str = Options.Std.string_of_algebra_solver Options.Std.Maple then algebra_solver := Maple
         else if Str.string_match (Str.regexp "^smt:\\(.*\\)") str 0 then algebra_solver := SMTSolver (Str.matched_group 1 str)
         else failwith ("Unknown algebra solver: " ^ str)),
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
    ("-disable_rewriting", Clear apply_rewriting, mk_arg_desc([""; "Disable rewriting of assignments (at program level) and equalities"; "(at polynomial level)."]));
    ("-isafety", Set incremental_safety, mk_arg_desc(["  Verify program safety incrementally."]));
    ("-isafety_timeout", Int (fun i -> incremental_safety_timeout := i), mk_arg_desc(["INT"; "Set initial timeout for incremental verification of program safety."]));
    ("-keep", Set keep_temp_files, mk_arg_desc(["     Keep temporary files."]));
    ("-macaulay2", String (fun str -> macaulay2_path := str; algebra_solver := Macaulay2),
     mk_arg_desc(["PATH"; "Use Macaulay2 at the specified path."]));
    ("-magma", String (fun str -> magma_path := str; algebra_solver := Magma),
     mk_arg_desc(["PATH"; "Use Magma at the specified path."]));
    ("-maple", String (fun str -> maple_path := str; algebra_solver := Maple),
     mk_arg_desc(["PATH"; "Use Maple at the specified path."]));
    ("-mathematica", String (fun str -> mathematica_path := str; algebra_solver := Mathematica),
     mk_arg_desc(["PATH"; "Use Mathematica command-line script interpreter at the specified"; "path."]));
    ("-no_carry_constraint", Clear carry_constraint, mk_arg_desc([""; "Do not add carry constraints."]));
    ("-o", String (fun str -> logfile := str),
     mk_arg_desc(["FILE    Save log messages to the specified file (default is"; !logfile ^ ")."]));
    ("-qfbv_args", String (fun str -> range_solver_args := str),
     mk_arg_desc(["ARGS"; "Specify additional arguments passed to the QF_BV solver."]));
    ("-qfbv_solver", String (fun str -> range_solver := str),
     mk_arg_desc(["PATH"; "Specify the QF_BV solver (default is " ^ default_range_solver ^ "). The QF_BV solver";
                  "must output one of \"sat\", \"unsat\", or \"unknown\" for any QF_BV";
                  "query in SMTLIB format."]));
    ("-re", Set polys_rewrite_replace_eexp, mk_arg_desc(["\t     Replace expressions rather than variables in the rewriting of"; "polynomials (experimental)."]));
    ("-rename_local", Set rename_local, mk_arg_desc([""; "Rename local variables when inlining a call to a procedure."]));
    ("-sage", String (fun str -> sage_path := str; algebra_solver := Sage),
     mk_arg_desc(["PATH"; "Use Sage at the specified path."]));
    ("-singular", String (fun str -> singular_path := str; algebra_solver := Singular),
     mk_arg_desc(["PATH"; "Use Singular at the specified path."]));
    ("-slicing", Set apply_slicing, mk_arg_desc(["  Enable slicing."]));
    ("-tmpdir", String (fun str -> tmpdir := Some str),
     mk_arg_desc(["PATH"; "Specify a directory for temporary files."]));
    ("-two_phase_rewriting", Set two_phase_rewriting, mk_arg_desc [""; "Use two-phase rewriting in verifying algebraic specifications."; "Note that single-phase rewriting is still used when -cli is"; "enabled."]);
    ("-vo", Symbol (["lex"; "appearing"; "rev_lex"; "rev_appearing"],
                    (fun str ->
                      try
                        variable_ordering := parse_variable_ordering str
                      with Not_found ->
                        failwith ("Unknown variable ordering: " ^ str))),
     mk_arg_desc([""; "Set variable ordering in algebra solver (default is " ^ string_of_variable_ordering !variable_ordering ^ ")."]));
    ("-w", Int (fun i -> if i > 0 then wordsize := i else failwith "The specified wordsize should be positive."),
     mk_arg_desc(["WORDSIZE"; "Set the word size (default is " ^ string_of_int !wordsize ^ ")."]))
  ]
