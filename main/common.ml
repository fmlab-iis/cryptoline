
open Arg
open Options.Std

(* Do not use -c or -instr below. *)
let args =
  [
    ("-algebra_args", String (fun str -> algebra_args := str),
     "ARGS\n\t     Specify additional arguments passed to the algebra solver\n");
    ("-algebra_solver",
     Symbol ([Options.Std.string_of_algebra_system Options.Std.Singular;
              Options.Std.string_of_algebra_system Options.Std.Sage;
              Options.Std.string_of_algebra_system Options.Std.Magma;
              Options.Std.string_of_algebra_system Options.Std.Mathematica;
              Options.Std.string_of_algebra_system Options.Std.Macaulay2],
             (fun str ->
               if str = Options.Std.string_of_algebra_system Options.Std.Singular then algebra_system := Singular
               else if str = Options.Std.string_of_algebra_system Options.Std.Sage then algebra_system := Sage
               else if str = Options.Std.string_of_algebra_system Options.Std.Magma then algebra_system := Magma
               else if str = Options.Std.string_of_algebra_system Options.Std.Mathematica then algebra_system := Mathematica
               else if str = Options.Std.string_of_algebra_system Options.Std.Macaulay2 then algebra_system := Macaulay2
               else failwith ("Unknown algebra solver: " ^ str))),
     "\n\t     Specify the algebra solver (default is singular)\n");
    ("-br", Set use_binary_repr, "       Always use binary representation in SMTLIB outputs. Otherwise,\n\t     hexadecimal representation is used if applicable.\n");
    ("-boolector", String (fun str -> boolector_path := str; smt_solver := Boolector),
     "PATH\n\t     Use Boolector at the specified path\n");
    ("-btor", Set use_btor, "     Output btor format to Boolector\n");
    ("-cryptominisat", String (fun str -> cryptominisat_path := str; smt_solver := Cryptominisat), "PATH\n\t     Use Cryptominisat at the specified path\n");
    ("-disable_rewriting", Clear apply_rewriting, "\n\t     Disable rewriting of assignments (at program level) and equalities\n\t     (at polynomial level)\n");
    ("-isafety", Set incremental_safety, "  Verify program safety incrementally\n");
    ("-isafety_timeout", Int (fun i -> incremental_safety_timeout := i), "INT\n\t     Set initial timeout for incremental verification of program safety\n");
    ("-legacy", Set use_legacy_parser, "   Use the legacy parser\n");
    ("-macaulay2", String (fun str -> macaulay2_path := str; algebra_system := Macaulay2),
     "PATH\n\t     Use Macaulay2 at the specified path\n");
    ("-magma", String (fun str -> magma_path := str; algebra_system := Magma),
     "PATH\n\t     Use Magma at the specified path (not tested)\n");
    ("-mathematica", String (fun str -> mathematica_path := str; algebra_system := Mathematica),
     "PATH\n\t     Use Mathematica command-line script interpreter at the specified\n\t     path\n");
    ("-mathsat", String (fun str -> mathsat_path := str; smt_solver := MathSAT),
     "PATH\n\t     Use mathsat at the specified path\n");
    ("-minisat", String (fun str -> minisat_path := str; smt_solver := Minisat), "PATH\n\t     Use Minisat at the specified path\n");
    ("-no_carry_constraint", Clear carry_constraint, "\n\t     Do not add carry constraints\n");
    ("-o", String (fun str -> logfile := str),
     "FILE    Save log messages to the specified file (default is " ^ !logfile ^ ")\n");
    ("-qfbv_args", String (fun str -> smt_args := str),
     "ARGS\n\t     Specify additional arguments passed to the QF_BV solver\n");
    ("-qfbv_solver", Symbol ([Options.Std.string_of_smt_solver Options.Std.Boolector;
                              Options.Std.string_of_smt_solver Options.Std.MathSAT;
                              Options.Std.string_of_smt_solver Options.Std.Z3;
                              Options.Std.string_of_smt_solver Options.Std.STP;
                              Options.Std.string_of_smt_solver Options.Std.Minisat;
                              Options.Std.string_of_smt_solver Options.Std.Cryptominisat],
                             (fun str ->
                               if str = Options.Std.string_of_smt_solver Options.Std.Z3 then smt_solver := Z3
                               else if str = Options.Std.string_of_smt_solver Options.Std.Boolector then smt_solver := Boolector
                               else if str = Options.Std.string_of_smt_solver Options.Std.MathSAT then smt_solver := MathSAT
                               else if str = Options.Std.string_of_smt_solver Options.Std.STP then smt_solver := STP
                               else if str = Options.Std.string_of_smt_solver Options.Std.Minisat then smt_solver := Minisat
                               else if str = Options.Std.string_of_smt_solver Options.Std.Cryptominisat then smt_solver := Cryptominisat
                               else failwith ("Unknown QF_BV solver: " ^ str))),
     "\n\t     Specify the QF_BV solver (default is boolector)\n");
    ("-re", Set polys_rewrite_replace_eexp, "\t     Replace expressions rather than variables in the rewriting of\n\t     polynomials (experimental)\n");
    ("-rename_local", Set rename_local, "\n\t     Rename local variables when inlining a call to a procedure\n");
    ("-sage", String (fun str -> sage_path := str; algebra_system := Sage),
     "PATH\n\t     Use Sage at the specified path\n");
    ("-singular", String (fun str -> singular_path := str; algebra_system := Singular),
     "PATH\n\t     Use Singular at the specified path\n");
    ("-slicing", Set apply_slicing, "  Enable slicing\n");
    ("-stp", String (fun str -> stp_path := str; smt_solver := STP),
     "PATH  Use STP at the specified path\n");
    ("-untyped", Set use_untyped_parser, "  Use the untyped parser\n");
    ("-vector", Set use_vector_parser, "   Use the vectorized parser\n");
    ("-vo", Symbol (["lex"; "appearing"; "rev_lex"; "rev_appearing"],
                    (fun str ->
                      try
                        variable_ordering := parse_variable_ordering str
                      with Not_found ->
                        failwith ("Unknown variable ordering: " ^ str))),
     "\n\t     Set variable ordering in algebra solver (default is " ^ string_of_variable_ordering !variable_ordering ^ ")\n");
    ("-w", Int (fun i -> if i > 0 then wordsize := i else failwith "The specified wordsize should be positive."),
     "WORDSIZE\n\t     Set the word size (default is " ^ string_of_int !wordsize ^ ")\n");
    ("-z3", String (fun str -> z3_path := str; smt_solver := Z3),
     "PATH   Use Z3 at the specified path\n")
  ]
