open BBCommon
open CNF
open Seq

val bit_blast_xor1 :
  generator -> literal -> literal -> (generator * cnf) * literal

val bit_blast_xor_zip :
  generator -> (literal * literal) list -> (generator * cnf) * word

val bit_blast_xor :
  generator -> literal list -> literal list -> (generator * cnf) * word
