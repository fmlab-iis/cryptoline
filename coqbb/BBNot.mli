open BBCommon
open CNF
open Seq

val bit_blast_not1 : generator -> literal -> (generator * cnf) * literal

val bit_blast_not : generator -> literal list -> (generator * cnf) * word
