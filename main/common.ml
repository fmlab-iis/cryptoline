
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
    ("-btor", Set use_btor, "     Output btor format to Boolector\n");
    ("-disable_rewriting", Clear apply_rewriting, "\n\t     Disable rewriting of assignments (at program level) and equalities\n\t     (at polynomial level)\n");
    ("-isafety", Set incremental_safety, "  Verify program safety incrementally\n");
    ("-isafety_timeout", Int (fun i -> incremental_safety_timeout := i), "INT\n\t     Set initial timeout for incremental verification of program safety\n");
    ("-keep", Set keep_temp_files, "     Keep temporary files\n");
    ("-macaulay2", String (fun str -> macaulay2_path := str; algebra_system := Macaulay2),
     "PATH\n\t     Use Macaulay2 at the specified path\n");
    ("-magma", String (fun str -> magma_path := str; algebra_system := Magma),
     "PATH\n\t     Use Magma at the specified path (not tested)\n");
    ("-mathematica", String (fun str -> mathematica_path := str; algebra_system := Mathematica),
     "PATH\n\t     Use Mathematica command-line script interpreter at the specified\n\t     path\n");
    ("-no_carry_constraint", Clear carry_constraint, "\n\t     Do not add carry constraints\n");
    ("-o", String (fun str -> logfile := str),
     "FILE    Save log messages to the specified file (default is " ^ !logfile ^ ")\n");
    ("-qfbv_args", String (fun str -> smt_args := str),
     "ARGS\n\t     Specify additional arguments passed to the QF_BV solver\n");
    ("-qfbv_solver", String (fun str -> smt_solver := str),
     "PATH \n\t     Specify the QF_BV solver (default is " ^ default_solver ^ "). The QF_BV solver"
     ^ "\n\t     must output one of \"sat\", \"unsat\", or \"unknown\" for any QF_BV"
     ^ "\n\t     query.\n");
    ("-re", Set polys_rewrite_replace_eexp, "\t     Replace expressions rather than variables in the rewriting of\n\t     polynomials (experimental)\n");
    ("-rename_local", Set rename_local, "\n\t     Rename local variables when inlining a call to a procedure\n");
    ("-sage", String (fun str -> sage_path := str; algebra_system := Sage),
     "PATH\n\t     Use Sage at the specified path\n");
    ("-singular", String (fun str -> singular_path := str; algebra_system := Singular),
     "PATH\n\t     Use Singular at the specified path\n");
    ("-slicing", Set apply_slicing, "  Enable slicing\n");
    ("-tmpdir", String (fun str -> tmpdir := Some str),
     "PATH\n\t     Specify a directory for temporary files\n");
    ("-vo", Symbol (["lex"; "appearing"; "rev_lex"; "rev_appearing"],
                    (fun str ->
                      try
                        variable_ordering := parse_variable_ordering str
                      with Not_found ->
                        failwith ("Unknown variable ordering: " ^ str))),
     "\n\t     Set variable ordering in algebra solver (default is " ^ string_of_variable_ordering !variable_ordering ^ ")\n");
    ("-w", Int (fun i -> if i > 0 then wordsize := i else failwith "The specified wordsize should be positive."),
     "WORDSIZE\n\t     Set the word size (default is " ^ string_of_int !wordsize ^ ")\n")
  ]
