open BBCommon
open CNF

(** val bit_blast_lneg :
    generator -> literal -> (generator * cnf) * literal **)

let bit_blast_lneg g a =
  let (g', r) = gen g in
  let cs = (r :: (a :: [])) :: (((neg_lit r) :: ((neg_lit a) :: [])) :: []) in
  ((g', cs), r)
