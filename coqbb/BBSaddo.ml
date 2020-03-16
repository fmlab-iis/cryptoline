open BBAdd
open BBCommon
open CNF
open Datatypes
open Seq

(** val bit_blast_saddo :
    generator -> word -> word -> (generator * cnf) * literal **)

let bit_blast_saddo g ls1 ls2 =
  let sign1 = snd (splitmsl ls1) in
  let sign2 = snd (splitmsl ls2) in
  let (p, lrs_fa) = bit_blast_full_adder g lit_ff ls1 ls2 in
  let (p0, _) = p in
  let (g_fa, cs_fa) = p0 in
  let sign_fa = snd (splitmsl lrs_fa) in
  let (gr, r) = gen g_fa in
  let csr =
    ((neg_lit r) :: ((neg_lit sign1) :: (sign2 :: []))) :: (((neg_lit r) :: (sign1 :: (
    (neg_lit sign2) :: []))) :: (((neg_lit r) :: ((neg_lit sign2) :: (
    (neg_lit sign_fa) :: []))) :: (((neg_lit r) :: (sign2 :: (sign_fa :: []))) :: ((r :: (
    (neg_lit sign1) :: ((neg_lit sign2) :: (sign_fa :: [])))) :: ((r :: (sign1 :: (sign2 :: (
    (neg_lit sign_fa) :: [])))) :: [])))))
  in
  ((gr, (catrev cs_fa csr)), r)
