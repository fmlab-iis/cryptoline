open BBAdd
open BBCommon
open CNF

val bit_blast_uaddo :
  generator -> literal list -> literal list -> (generator * cnf) * literal
