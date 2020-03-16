open BBCommon
open BBMul
open BBOr
open BBSignExtend
open BBUmulo
open BBXor
open CNF
open Datatypes
open Seq

(** val bit_blast_smulo_rec :
    generator -> literal list -> literal list ->
    ((generator * cnf) * literal) * literal **)

let bit_blast_smulo_rec =
  bit_blast_umulo_rec

(** val bit_blast_smulo :
    generator -> word -> word -> (generator * cnf) * literal **)

let bit_blast_smulo g ls1 ls2 =
  let ls1_tl = fst (splitmsl ls1) in
  let ls1_sign = snd (splitmsl ls1) in
  let ls2_tl = fst (splitmsl ls2) in
  let ls2_sign = snd (splitmsl ls2) in
  let wsign1 = nseq (size ls1_tl) ls1_sign in
  let wsign2 = nseq (size ls2_tl) ls2_sign in
  let (p, xls1) = bit_blast_xor g ls1_tl wsign1 in
  let (g_xls1, cs_xls1) = p in
  let (p0, xls2) = bit_blast_xor g_xls1 ls2_tl wsign2 in
  let (g_xls2, cs_xls2) = p0 in
  let xls1_hightl = snd (splitlsl xls1) in
  let xls2_hightl = snd (splitlsl xls2) in
  let (p1, r_or_and_rec) = bit_blast_smulo_rec g_xls2 xls1_hightl xls2_hightl
  in
  let (p2, _) = p1 in
  let (g_rec, cs_rec) = p2 in
  let (p3, wls1) = bit_blast_signextend (S O) g_rec ls1 in
  let (g_wls1, cs_wls1) = p3 in
  let (p4, wls2) = bit_blast_signextend (S O) g_wls1 ls2 in
  let (g_wls2, cs_wls2) = p4 in
  let (p5, mul) = bit_blast_mul g_wls2 wls1 (Obj.magic wls2) in
  let (g_mul, cs_mul) = p5 in
  let mul_tl = fst (splitmsl mul) in
  let mul_n = snd (splitmsl mul) in
  let mul_n_minus1 = snd (splitmsl mul_tl) in
  let (p6, xor1) = bit_blast_xor1 g_mul mul_n mul_n_minus1 in
  let (g_xor1, cs_xor1) = p6 in
  let (p7, or1) = bit_blast_or1 g_xor1 r_or_and_rec xor1 in
  let (g_or1, cs_or1) = p7 in
  ((g_or1,
  (catrev cs_xls1
    (catrev cs_xls2
      (catrev cs_rec
        (catrev cs_wls1
          (catrev cs_wls2 (catrev cs_mul (catrev cs_xor1 cs_or1)))))))), or1)
