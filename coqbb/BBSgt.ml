open BBCommon
open BBSlt
open CNF

(** val bit_blast_sgt :
    generator -> word -> word -> (generator * cnf) * literal **)

let bit_blast_sgt g ls1 ls2 =
  bit_blast_slt g ls2 ls1
