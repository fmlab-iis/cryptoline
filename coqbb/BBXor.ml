open BBCommon
open CNF
open Seq

(** val bit_blast_xor1 :
    generator -> literal -> literal -> (generator * cnf) * literal **)

let bit_blast_xor1 g a1 a2 =
  let (g', r) = gen g in
  let cs =
    ((neg_lit r) :: (a1 :: (a2 :: []))) :: (((neg_lit r) :: ((neg_lit a1) :: (
    (neg_lit a2) :: []))) :: ((r :: ((neg_lit a1) :: (a2 :: []))) :: ((r :: (a1 :: (
    (neg_lit a2) :: []))) :: [])))
  in
  ((g', cs), r)

(** val bit_blast_xor_zip :
    generator -> (literal * literal) list -> (generator * cnf) * word **)

let rec bit_blast_xor_zip g = function
| [] -> ((g, []), [])
| y :: tl ->
  let (l1, l2) = y in
  let (p, lrs_hd) = bit_blast_xor1 g l1 l2 in
  let (g_hd, cs_hd) = p in
  let (p0, lrs_tl) = bit_blast_xor_zip g_hd tl in
  let (g_tl, cs_tl) = p0 in ((g_tl, (catrev cs_hd cs_tl)), (lrs_hd :: lrs_tl))

(** val bit_blast_xor :
    generator -> literal list -> literal list -> (generator * cnf) * word **)

let bit_blast_xor g ls1 ls2 =
  bit_blast_xor_zip g (extzip_ff ls1 ls2)
