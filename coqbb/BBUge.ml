open BBCommon
open BBUle
open CNF

(** val bit_blast_uge :
    generator -> literal list -> literal list -> (generator * cnf) * literal **)

let bit_blast_uge g ls1 ls2 =
  bit_blast_ule g ls2 ls1
