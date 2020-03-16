open BBCommon
open CNF
open Seq

val bit_blast_concat :
  generator -> literal list -> literal list -> (generator * cnf) * word
