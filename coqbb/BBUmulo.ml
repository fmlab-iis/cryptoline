open BBCommon
open BBMul
open BBZeroExtend
open CNF
open Datatypes
open Seq

(** val bit_blast_umulo_rec_zip :
    generator -> (literal * literal) list ->
    ((generator * cnf) * literal) * literal **)

let rec bit_blast_umulo_rec_zip g = function
| [] -> (((g, []), lit_ff), lit_ff)
| y :: tl ->
  let (ls1_low, ls2_high) = y in
  let (p, r_and_or_tl) = bit_blast_umulo_rec_zip g tl in
  let (p0, r_or_tl) = p in
  let (g1, cs_tl) = p0 in
  let (g2, r_or) = gen g1 in
  let (g3, r_and_or) = gen g2 in
  let cs_prefix_or =
    ((neg_lit r_or_tl) :: (r_or :: [])) :: ((r_or_tl :: (ls1_low :: (
    (neg_lit r_or) :: []))) :: (((neg_lit ls1_low) :: (r_or :: [])) :: []))
  in
  let cs_and_or =
    ((neg_lit r_or) :: ((neg_lit ls2_high) :: (r_and_or :: []))) :: ((r_or :: (r_and_or_tl :: (
    (neg_lit r_and_or) :: []))) :: ((ls2_high :: (r_and_or_tl :: ((neg_lit
                                                                    r_and_or) :: []))) :: ((
    (neg_lit r_and_or_tl) :: (r_and_or :: [])) :: [])))
  in
  (((g3, (catrev cs_tl (catrev cs_prefix_or cs_and_or))), r_or), r_and_or)

(** val bit_blast_umulo_rec :
    generator -> literal list -> literal list ->
    ((generator * cnf) * literal) * literal **)

let bit_blast_umulo_rec g ls1 ls2 =
  bit_blast_umulo_rec_zip g (extzip_ff ls1 (rev ls2))

(** val bit_blast_umulo :
    generator -> word -> word -> (generator * cnf) * literal **)

let bit_blast_umulo g ls1 ls2 =
  let ls1_hightl = snd (splitlsl ls1) in
  let ls2_hightl = snd (splitlsl ls2) in
  let (p, lrs_wls1) = bit_blast_zeroextend (S O) g ls1 in
  let (g_wls1, cs_wls1) = p in
  let (p0, lrs_wls2) = bit_blast_zeroextend (S O) g_wls1 ls2 in
  let (g_wls2, cs_wls2) = p0 in
  let (p1, r_or_and_rec1) = bit_blast_umulo_rec g_wls2 ls1_hightl ls2_hightl
  in
  let (p2, _) = p1 in
  let (g_rec1, cs_rec1) = p2 in
  let (p3, lrs_mul) = bit_blast_mul g_rec1 lrs_wls1 (Obj.magic lrs_wls2) in
  let (g_mul, cs_mul) = p3 in
  let lrs_msb = msl lrs_mul in
  let (g_r, r) = gen g_mul in
  let cs =
    ((neg_lit r_or_and_rec1) :: (r :: [])) :: ((r_or_and_rec1 :: (lrs_msb :: (
    (neg_lit r) :: []))) :: (((neg_lit lrs_msb) :: (r :: [])) :: []))
  in
  ((g_r,
  (catrev cs_rec1 (catrev cs_wls1 (catrev cs_wls2 (catrev cs_mul cs))))), r)
