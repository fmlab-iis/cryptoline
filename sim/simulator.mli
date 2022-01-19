
open NBits
open Ast.Cryptoline
open Utils

val make_map : var list -> bits list -> bits VM.t
val simulate : ?steps:int -> ?dumps:(range list) -> bits VM.t -> program -> unit
val shell : bits VM.t -> program -> unit
