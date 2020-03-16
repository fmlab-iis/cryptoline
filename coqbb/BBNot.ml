open BBCommon
open CNF
open Seq

(** val bit_blast_not1 :
    generator -> literal -> (generator * cnf) * literal **)

let bit_blast_not1 g l =
  let (g', r) = gen g in
  let cs = (r :: (l :: [])) :: (((neg_lit r) :: ((neg_lit l) :: [])) :: []) in
  ((g', cs), r)

(** val bit_blast_not :
    generator -> literal list -> (generator * cnf) * word **)

let rec bit_blast_not g = function
| [] -> ((g, []), [])
| hd :: tl ->
  let (p, lrs_hd) = bit_blast_not1 g hd in
  let (g_hd, cs_hd) = p in
  let (p0, lrs_tl) = bit_blast_not g_hd tl in
  let (g_tl, cs_tl) = p0 in ((g_tl, (catrev cs_hd cs_tl)), (lrs_hd :: lrs_tl))
