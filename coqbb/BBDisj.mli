open BBCommon
open CNF

val bit_blast_disj :
  generator -> literal -> literal -> (generator * cnf) * literal
