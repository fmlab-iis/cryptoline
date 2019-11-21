
open Ast.Cryptoline

val spec_from_file : ?legacy:bool -> ?untyped:bool -> ?vector:bool ->
                     string -> VS.t * spec
val spec_from_string : ?legacy:bool -> ?untyped:bool -> ?vector:bool ->
                       string -> VS.t * spec

val program_from_file : ?legacy:bool -> ?untyped:bool -> ?vector:bool ->
                        string -> program
val program_from_string : ?legacy:bool -> ?untyped:bool -> ?vector:bool ->
                          string -> program

val espec_from_file : string -> espec
val espec_from_string : string -> espec
val rspec_from_file : string -> rspec
val rspec_from_string : string -> rspec
