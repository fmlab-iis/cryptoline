open BBCommon
open BBUlt
open CNF

(** val bit_blast_ugt :
    generator -> literal list -> literal list -> (generator * cnf) * literal **)

let bit_blast_ugt g ls1 ls2 =
  bit_blast_ult g ls2 ls1
