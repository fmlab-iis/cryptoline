open BBCommon
open CNF
open Seq

(** val bit_blast_ite1 :
    generator -> literal -> literal -> literal -> (generator * cnf) * literal **)

let bit_blast_ite1 g c l1 l2 =
  let (g', r) = gen g in
  let cs =
    ((neg_lit r) :: ((neg_lit c) :: (l1 :: []))) :: (((neg_lit r) :: (c :: (l2 :: []))) :: ((r :: (c :: (
    (neg_lit l2) :: []))) :: ((r :: ((neg_lit c) :: ((neg_lit l1) :: []))) :: ((r :: (
    (neg_lit l1) :: ((neg_lit l2) :: []))) :: []))))
  in
  ((g', cs), r)

(** val bit_blast_ite_zip :
    generator -> literal -> (literal * literal) list ->
    (generator * cnf) * word **)

let rec bit_blast_ite_zip g c = function
| [] -> ((g, []), [])
| y :: tl ->
  let (l1, l2) = y in
  let (p, lrs_hd) = bit_blast_ite1 g c l1 l2 in
  let (g_hd, cs_hd) = p in
  let (p0, lrs_tl) = bit_blast_ite_zip g_hd c tl in
  let (g_tl, cs_tl) = p0 in ((g_tl, (catrev cs_hd cs_tl)), (lrs_hd :: lrs_tl))

(** val bit_blast_ite :
    generator -> literal -> literal list -> literal list ->
    (generator * cnf) * word **)

let bit_blast_ite g c ls1 ls2 =
  bit_blast_ite_zip g c (extzip_ff ls1 ls2)
