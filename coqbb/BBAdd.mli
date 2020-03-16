open BBCommon
open CNF
open Seq

val bit_blast_full_adder1 :
  generator -> literal -> literal -> literal -> ((generator * literal list
  list) * literal) * literal

val bit_blast_full_adder_zip :
  generator -> literal -> (literal * literal) list ->
  ((generator * cnf) * literal) * word

val bit_blast_full_adder :
  generator -> literal -> literal list -> literal list ->
  ((generator * cnf) * literal) * word

val bit_blast_add :
  generator -> literal list -> literal list -> (generator * cnf) * word
