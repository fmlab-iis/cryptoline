open BBCommon
open BBSle
open CNF

val bit_blast_sge :
  generator -> literal list -> literal list -> (generator * cnf) * literal
