open BBCommon
open CNF
open Seq

val bit_blast_ult_rev'_zip :
  generator -> (literal * literal) list -> (generator * cnf) * literal

val bit_blast_ult :
  generator -> literal list -> literal list -> (generator * cnf) * literal
