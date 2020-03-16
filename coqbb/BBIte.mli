open BBCommon
open CNF
open Seq

val bit_blast_ite1 :
  generator -> literal -> literal -> literal -> (generator * cnf) * literal

val bit_blast_ite_zip :
  generator -> literal -> (literal * literal) list -> (generator * cnf) * word

val bit_blast_ite :
  generator -> literal -> literal list -> literal list ->
  (generator * cnf) * word
