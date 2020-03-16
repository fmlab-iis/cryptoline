open BBCommon
open BBSub
open CNF
open Datatypes
open Seq

(** val bit_blast_ssubo :
    generator -> word -> word -> (generator * cnf) * literal **)

let bit_blast_ssubo g ls1 ls2 =
  let sign1 = snd (splitmsl ls1) in
  let sign2 = snd (splitmsl ls2) in
  let (p, lrs_sub) = bit_blast_sub g ls1 ls2 in
  let (g_sub, cs_sub) = p in
  let sign_sub = snd (splitmsl lrs_sub) in
  let (gr, r) = gen g_sub in
  let csr =
    ((neg_lit r) :: ((neg_lit sign1) :: ((neg_lit sign_sub) :: []))) :: ((
    (neg_lit r) :: (sign1 :: (sign2 :: []))) :: (((neg_lit r) :: ((neg_lit
                                                                    sign2) :: (sign_sub :: []))) :: ((r :: (
    (neg_lit sign1) :: (sign2 :: (sign_sub :: [])))) :: ((r :: (sign1 :: (
    (neg_lit sign2) :: ((neg_lit sign_sub) :: [])))) :: []))))
  in
  ((gr, (catrev cs_sub csr)), r)
