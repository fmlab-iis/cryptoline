open BBCommon
open BBSle
open CNF

(** val bit_blast_sge :
    generator -> literal list -> literal list -> (generator * cnf) * literal **)

let bit_blast_sge g ls1 ls2 =
  bit_blast_sle g ls2 ls1
