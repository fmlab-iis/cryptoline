
open Ast.Cryptoline

val args_parsing : (Arg.key * Arg.spec * Arg.doc) list
(** Some common command-line arguments for parsing. *)

val args_io : (Arg.key * Arg.spec * Arg.doc) list
(** Some common command-line arguments for inputs and outputs. *)

val args_verifier : (Arg.key * Arg.spec * Arg.doc) list
(** Some common command-line arguments for the verifier and the CLI mode. *)

val mk_arg_desc : string list -> string
(** [mk_arg_desc [s1; ...; sN]] returns a string as the description of a
    command-line argument. A string [sI] represents a line of the
    description. *)

val parse_and_check_all : string -> ((var list * var list) * Ast.MultiTrack.tagged_spec) SM.t
(** Parse and check well-formedness for all procedures in a file. *)

val parse_and_check : ?proc:string -> string -> (var list * var list) * Ast.MultiTrack.tagged_spec
(** [parse_and_check ~proc:pn file] parses the CryptoLine specification [pn]
    in the file [file], checks its well-formedness, and returns the input
    variables of the specification and the internal representation of the
    specification. If [pn] is not specified, [Options.Std.main_proc_name]
    is the default specification. *)

val find_output_vars : program -> string list -> var list
(** [find_output_vars p [n1; ...; nN]] returns a list of variables [v1; ...; vN]
    where [vI] has name [nI] (ignoring SSA indices). *)
