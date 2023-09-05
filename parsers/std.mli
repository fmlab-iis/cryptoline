
open Ast.Cryptoline

val specs_from_file : string -> ((var list * var list) * Typecheck.Std.spec) SM.t
(** Parse all specifications in a file and return a map from a procedure name to
    [((ivs, ovs), s)] where [ivs] is the list of input variables, [ovs] is the
    list of output variables, and [s] is the specification of the procedure. *)

val spec_from_file : string -> var list * Typecheck.Std.spec
(** Parse the specification of the main procedure in a file and return
    [(ivs, s)] where [ivs] is the list of input variables and [s] is the
    specification of the main procedure. *)

val spec_from_string : string -> var list * Typecheck.Std.spec
(** Parse the specification of the main procedure in a string and return
    [(ivs, s)] where [ivs] is the list of input variables and [s] is the
    specification of the main procedure. *)

val program_from_file : string -> lined_program
(** Parse the instructions of the main procedure in a file *)

val program_from_string : string -> lined_program
(** Parse the instructions of the main procedure in a string *)

val espec_from_file : string -> Typecheck.Std.espec
(** Parse an algebraic specification in a file *)

val espec_from_string : string -> Typecheck.Std.espec
(** Parse an algebraic specification in a string *)

val rspec_from_file : string -> Typecheck.Std.rspec
(** Parse a range specification in a file *)

val rspec_from_string : string -> Typecheck.Std.rspec
(** Parse a range specification in a string *)
