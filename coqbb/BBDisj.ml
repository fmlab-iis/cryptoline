open BBCommon
open CNF

(** val bit_blast_disj :
    generator -> literal -> literal -> (generator * cnf) * literal **)

let bit_blast_disj g l1 l2 =
  let (g', r) = gen g in
  let cs =
    ((neg_lit r) :: (l1 :: (l2 :: []))) :: ((r :: ((neg_lit l1) :: [])) :: ((r :: (
    (neg_lit l2) :: [])) :: []))
  in
  ((g', cs), r)
