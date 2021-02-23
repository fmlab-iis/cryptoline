
open Ast.Cryptoline

val spec_from_file : string -> VS.t * Typecheck.Std.spec
val spec_from_string : string -> VS.t * Typecheck.Std.spec

val program_from_file : string -> lined_program
val program_from_string : string -> lined_program

val espec_from_file : string -> Typecheck.Std.espec
val espec_from_string : string -> Typecheck.Std.espec
val rspec_from_file : string -> Typecheck.Std.rspec
val rspec_from_string : string -> Typecheck.Std.rspec
