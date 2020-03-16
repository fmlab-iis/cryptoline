open BBAdd
open BBCommon
open CNF

(** val bit_blast_uaddo :
    generator -> literal list -> literal list -> (generator * cnf) * literal **)

let bit_blast_uaddo g ls1 ls2 =
  let (p, _) = bit_blast_full_adder g lit_ff ls1 ls2 in p
