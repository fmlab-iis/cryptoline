open BBCommon
open CNF
open Seq

(** val bit_blast_full_adder1 :
    generator -> literal -> literal -> literal -> ((generator * literal list
    list) * literal) * literal **)

let bit_blast_full_adder1 g a1 a2 cin =
  let (g', r) = gen g in
  let (g'', cout) = gen g' in
  let sum_cs =
    ((neg_lit r) :: (a1 :: (a2 :: (cin :: [])))) :: (((neg_lit r) :: (
    (neg_lit a1) :: ((neg_lit a2) :: (cin :: [])))) :: (((neg_lit r) :: (
    (neg_lit a1) :: (a2 :: ((neg_lit cin) :: [])))) :: (((neg_lit r) :: (a1 :: (
    (neg_lit a2) :: ((neg_lit cin) :: [])))) :: ((r :: ((neg_lit a1) :: (a2 :: (cin :: [])))) :: ((r :: (a1 :: (
    (neg_lit a2) :: (cin :: [])))) :: ((r :: (a1 :: (a2 :: ((neg_lit cin) :: [])))) :: ((r :: (
    (neg_lit a1) :: ((neg_lit a2) :: ((neg_lit cin) :: [])))) :: [])))))))
  in
  let cout_cs =
    ((neg_lit cout) :: (a1 :: (a2 :: []))) :: (((neg_lit cout) :: (a1 :: (cin :: []))) :: ((
    (neg_lit cout) :: (a2 :: (cin :: []))) :: ((cout :: ((neg_lit a1) :: (
    (neg_lit a2) :: []))) :: ((cout :: ((neg_lit a1) :: (a2 :: ((neg_lit cin) :: [])))) :: ((cout :: (a1 :: (
    (neg_lit a2) :: ((neg_lit cin) :: [])))) :: [])))))
  in
  (((g'', (catrev sum_cs cout_cs)), cout), r)

(** val bit_blast_full_adder_zip :
    generator -> literal -> (literal * literal) list ->
    ((generator * cnf) * literal) * word **)

let rec bit_blast_full_adder_zip g lcin = function
| [] -> (((g, []), lcin), [])
| y :: tl ->
  let (l1, l2) = y in
  let (p, lrs_hd) = bit_blast_full_adder1 g l1 l2 lcin in
  let (p0, lcout_hd) = p in
  let (g_hd, cs_hd) = p0 in
  let (p1, lrs_tl) = bit_blast_full_adder_zip g_hd lcout_hd tl in
  let (p2, lcout_tl) = p1 in
  let (g_tl, cs_tl) = p2 in
  (((g_tl, (catrev cs_hd cs_tl)), lcout_tl), (lrs_hd :: lrs_tl))

(** val bit_blast_full_adder :
    generator -> literal -> literal list -> literal list ->
    ((generator * cnf) * literal) * word **)

let bit_blast_full_adder g lcin ls1 ls2 =
  bit_blast_full_adder_zip g lcin (extzip_ff ls1 ls2)

(** val bit_blast_add :
    generator -> literal list -> literal list -> (generator * cnf) * word **)

let bit_blast_add g ls1 ls2 =
  let (p, lrs) = bit_blast_full_adder g lit_ff ls1 ls2 in
  let (p0, _) = p in (p0, lrs)
