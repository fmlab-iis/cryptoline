open BBCommon
open CNF

val bit_blast_conj :
  generator -> literal -> literal -> (generator * cnf) * literal
