open BBCommon
open CNF
open Eqtype
open Seq

val bit_blast_or1 :
  generator -> literal -> literal -> (generator * cnf) * literal

val bit_blast_or_zip :
  generator -> (literal * literal) list -> (generator * cnf) * word

val bit_blast_or :
  generator -> literal list -> literal list -> (generator * cnf) * word
