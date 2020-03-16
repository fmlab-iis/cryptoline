open BBCommon
open CNF

(** val bit_blast_conj :
    generator -> literal -> literal -> (generator * cnf) * literal **)

let bit_blast_conj g a1 a2 =
  let (g', r) = gen g in
  let cs =
    ((neg_lit r) :: (a1 :: [])) :: (((neg_lit r) :: (a2 :: [])) :: ((r :: (
    (neg_lit a1) :: ((neg_lit a2) :: []))) :: []))
  in
  ((g', cs), r)
