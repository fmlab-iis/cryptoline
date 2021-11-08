
open NBits
open Ast.Cryptoline

type range

val make_range : int -> int -> range
val in_range : int -> range -> bool

val make_map : var list -> bits list -> bits VM.t
val simulate : ?steps:int -> ?dumps:(range list) -> bits VM.t -> program -> unit
val shell : bits VM.t -> program -> unit
