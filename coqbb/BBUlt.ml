open BBCommon
open CNF
open Seq

(** val bit_blast_ult_rev'_zip :
    generator -> (literal * literal) list -> (generator * cnf) * literal **)

let rec bit_blast_ult_rev'_zip g = function
| [] -> ((g, []), lit_ff)
| y :: lsp_tl ->
  let (ls1_hd, ls2_hd) = y in
  let (p, lrult_tl) = bit_blast_ult_rev'_zip g lsp_tl in
  let (gult_tl, csult_tl) = p in
  let (g_r, r) = gen gult_tl in
  let cs =
    ((neg_lit ls1_hd) :: (ls2_hd :: ((neg_lit r) :: []))) :: (((neg_lit
                                                                 ls1_hd) :: (lrult_tl :: (
    (neg_lit r) :: []))) :: ((ls1_hd :: ((neg_lit ls2_hd) :: (r :: []))) :: ((ls1_hd :: (
    (neg_lit lrult_tl) :: (r :: []))) :: (((neg_lit ls2_hd) :: ((neg_lit
                                                                  lrult_tl) :: (r :: []))) :: ((ls2_hd :: (lrult_tl :: (
    (neg_lit r) :: []))) :: [])))))
  in
  ((g_r, (catrev csult_tl cs)), r)

(** val bit_blast_ult :
    generator -> literal list -> literal list -> (generator * cnf) * literal **)

let bit_blast_ult g ls1 ls2 =
  bit_blast_ult_rev'_zip g (extzip_ff (rev ls1) (rev ls2))
