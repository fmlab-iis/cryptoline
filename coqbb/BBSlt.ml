open BBCommon
open BBUlt
open CNF
open Datatypes
open Seq

(** val bit_blast_slt :
    generator -> word -> word -> (generator * cnf) * literal **)

let bit_blast_slt g ls1 ls2 =
  let tls1 = fst (splitmsl ls1) in
  let sign1 = snd (splitmsl ls1) in
  let tls2 = fst (splitmsl ls2) in
  let sign2 = snd (splitmsl ls2) in
  let (p, r_tl) = bit_blast_ult g tls1 tls2 in
  let (g_tl, cs_tl) = p in
  let (gr, r) = gen g_tl in
  let csr =
    ((neg_lit r) :: (sign1 :: ((neg_lit sign2) :: []))) :: (((neg_lit r) :: (sign1 :: (r_tl :: []))) :: ((
    (neg_lit r) :: ((neg_lit sign2) :: (r_tl :: []))) :: ((r :: ((neg_lit
                                                                   sign1) :: (sign2 :: []))) :: ((r :: (
    (neg_lit sign1) :: ((neg_lit r_tl) :: []))) :: ((r :: (sign2 :: (
    (neg_lit r_tl) :: []))) :: [])))))
  in
  ((gr, (catrev cs_tl csr)), r)
