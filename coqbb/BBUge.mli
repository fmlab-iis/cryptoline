open BBCommon
open BBUle
open CNF

val bit_blast_uge :
  generator -> literal list -> literal list -> (generator * cnf) * literal
