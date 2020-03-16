open BBCommon
open CNF
open Eqtype
open Seq

val bit_blast_and1 :
  generator -> Equality.sort -> Equality.sort -> (generator * cnf) * literal

val bit_blast_and_zip :
  generator -> (Equality.sort * Equality.sort) list ->
  (generator * cnf) * word

val bit_blast_and :
  generator -> literal list -> literal list -> (generator * cnf) * word
