open BBCommon
open BBUlt
open CNF

val bit_blast_usubo :
  generator -> literal list -> literal list -> (generator * cnf) * literal
