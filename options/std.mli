
(** This module provides options of CryptoLine. *)

open Utils

exception UnknownAlgebraSolver of string
(** Raised if an unknown algebra solver is specified *)

(** {1 General Options} *)

val apply_slicing : bool ref
(** [true] to apply slicing in verifying specifications *)

val verify_program_safety : bool ref
(** [true] to verify program safety *)

val verify_epost : bool ref
(** [true] to verify algebraic postconditions *)

val verify_rpost : bool ref
(** [true] to verify range postconditions *)

val verify_eassertion : bool ref
(** [true] to verify algebraic assertions *)

val verify_rassertion : bool ref
(** [true] to verify range assertions *)

val verify_ecuts : (int Utils.Hashset.t) option ref
(** Limit the algebraic cut conditions to be verified in the specified algebraic cuts *)

val verify_rcuts : (int Hashset.t) option ref
(** Limit the range cut conditions to be verified in the specified range cuts *)

val verify_eacuts : (int Hashset.t) option ref
(** Limit the algebraic assertions to be verified in the specified algebraic cuts *)

val verify_racuts : (int Hashset.t) option ref
(** Limit the range assertions to be verified in the specified range cuts *)

val verify_scuts : (int Hashset.t) option ref
(** Limit the safety conditions to be verified in the specified range cuts *)

val verify_eassert_ids : (int Hashset.t) option ref
(** Skip algebraic assertions not in the specified IDs *)

val verify_rassert_ids : (int Hashset.t) option ref
(** Skip range assertions not in the specified IDs *)

val verify_safety_ids : (int Hashset.t) option ref
(** Skip safety conditions not in the specified IDs *)

val mem_hashset_opt : ('a Hashset.t) option -> 'a -> bool
(** [mem_hashset_opt so a] is true if [so] is [None] and [Hashset.mem s a] if [so] is [Some s]. *)

val incremental_safety : bool ref
(** [true] to verify safety incrementally, i.e. one instruction by one instruction *)

val incremental_safety_timeout : int ref
(** The timeout in incremental safety verification. The range solver may time
    out when verifying the safety condition of an instruction. In this case, the
    range solver will verify the safety condition again with an increased
    timeout. *)

val jobs : int ref
(** number of concurrent jobs to be used *)

val use_cli : bool ref
(** [true] to use fork and the command-line interface of CryptoLine instead of Lwt *)

val cli_path : string ref
(** the path to the command-line interface of CryptoLine *)

val rename_local : bool ref
(** [true] to rename local variables when inlining a call to a procedure *)

val auto_cast : bool ref
(** [true] to automatically cast variables with {!ast.Cryptoline.Icast} when necessary *)

val auto_cast_preserve_value : bool ref
(** [true] to automatically cast variables with {!ast.Cryptoline.Ivpc} when necessary *)

val cryptoline_filename_extension : string
(** the filename extension of a CryptoLine program *)


(** {1 Algebra-Specific Options} *)

type algebra_solver =
  | Singular                 (** {{:https://www.singular.uni-kl.de}Singular} *)
  | Sage                     (** {{:https://www.sagemath.org}Sage} *)
  | Magma                    (** {{:http://magma.maths.usyd.edu.au/magma/}Magma} *)
  | Mathematica              (** {{:https://www.wolfram.com/mathematica/}Mathematica} *)
  | Macaulay2                (** {{:http://www2.macaulay2.com/Macaulay2/}Macaulay2} *)
  | Maple                    (** {{:https://www.maplesoft.com}Maple} *)
  | SMTSolver of string      (** [SMTSolver s] is the SMT solver [s] that supports UFNIA. *) (* *)
(** supported algebra solvers *)

type variable_order =
  | LexOrder
  | AppearingOrder
  | RevLexOrder
  | RevAppearingOrder
(** variable order in computing Groebner basis *)

val default_algebra_solver : algebra_solver
(** the default algebra solver *)

val algebra_solver : algebra_solver ref
(** the algebra solver to be used *)

val algebra_solver_args : string ref
(** additional arguments passed to the algebra solver *)

val string_of_algebra_solver : algebra_solver -> string
(** string representation of an algebra solver *)

val parse_algebra_solver : string -> algebra_solver
(** Parse a string as an algebra solver. Raise [UnknownSolverException] if the
    string is not a solver. *)

val singular_path : string ref
(** the path to Singular *)

val sage_path : string ref
(** the path to Sage *)

val magma_path : string ref
(** the path to magma *)

val mathematica_path : string ref
(** the path to mathematica *)

val macaulay2_path : string ref
(** the path to macaulay2 *)

val maple_path : string ref
(** the path to maple *)

val apply_rewriting : bool ref
(** [true] to apply rewriting (which replaces variables with expressions) in verifying algebraic specifications *)

val two_phase_rewriting : bool ref
(** [true] to apply two-phase rewriting in verifying algebraic specifications *)

val polys_rewrite_replace_eexp : bool ref
(** [true] to apply expression rewriting (which replaces expressions with expressions) in verifying algebraic specifications *)

val carry_constraint : bool ref
(** [true] to add constraints for carries in verifying algebraic specifications *)

val variable_ordering : variable_order ref
(** the variable order to be used in the computation of Groebner basis *)

val string_of_variable_ordering : variable_order -> string
(** the string representation of variable orders *)

val parse_variable_ordering : string -> variable_order
(** parse a variable order from its string representation *)

val track_split : bool ref
(** [true] to track splits of atoms *)

val expand_poly : bool ref
(** [true] to expand polynomials before sending them to computer algebra systems *)

(** {1 Range-Specific Options} *)

val default_range_solver : string
(** the default range solver *)

val range_solver : string ref
(** the path to the range solver *)

val range_solver_args : string ref
(** the arguments passed to the range solver *)

val use_btor : bool ref
(** [true] to use BTOR format instead of SMTLIB format *)

val use_binary_repr : bool ref
(** [true] to use binary representation in SMTLIB outputs and hexadecimal representation otherwise *)

val native_smtlib_expn_operator : string option ref
(** the native exponential operator supported by the chosen SMT solver *)


(** {1 Logging} *)

val verbose : bool ref
(** [true] to print verbose messages *)

val logfile : string ref
(** the file to write log messages to *)

val unix : string -> unit
(** run an Unix command *)

val trace : string -> unit
(** write a message and an ending newline to the log file *)

val fail : string -> 'a
(** write a message to the log file and then fail with the message *)

val string_of_running_time : float -> float -> string
(** [string_of_running_time st ed] returns the string representation of the running time from the starting time [st] to the stop time [ed]. *)

val vprint : string -> unit
(** [vprint s] prints the string [s] if {!verbose} is [true] *)

val vprintln : string -> unit
(** [vprint s] prints the string [s] with an ending newline if {!verbose} is [true] *)

val keep_temp_files : bool ref
(** [true] to keep temporary files *)

val tmpdir : string option ref
(** the directory where the temporary files are stored *)

val tmpfile : string -> string -> string
(** [tmpfile prefix suffix] suggests a filename with prefix [prefix] and suffix [suffix]. *)

val cleanup : string list -> unit
(** [cleanup [f1; ...; fn]] removes temporary files [f1], ..., and [fn]. *)


(** {1 Equivalence checking} *)

val abc_path : string ref
(** The path to ABC *)

val boolector_path : string ref
(** The path to Boolector *)
