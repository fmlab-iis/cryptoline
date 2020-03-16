open BBCommon
open BBUlt
open CNF

val bit_blast_ugt :
  generator -> literal list -> literal list -> (generator * cnf) * literal
