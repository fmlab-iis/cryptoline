open Bool
open Datatypes

val addb : bool -> bool -> bool

val is_left : bool -> bool

val iffP : bool -> reflect -> reflect

val idP : bool -> reflect

val andP : bool -> bool -> reflect

type 't pred = 't -> bool

type 't rel = 't -> 't pred
