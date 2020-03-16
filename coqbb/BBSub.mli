open BBAdd
open BBCommon
open BBNeg
open CNF
open Seq

val bit_blast_sub :
  generator -> literal list -> literal list -> (generator * cnf) * word
