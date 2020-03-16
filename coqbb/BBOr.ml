open BBCommon
open CNF
open Eqtype
open Seq

(** val bit_blast_or1 :
    generator -> literal -> literal -> (generator * cnf) * literal **)

let bit_blast_or1 g a1 a2 =
  if (||) (eq_op lit_eqType (Obj.magic a1) (Obj.magic lit_tt))
       (eq_op lit_eqType (Obj.magic a2) (Obj.magic lit_tt))
  then ((g, []), lit_tt)
  else if eq_op lit_eqType (Obj.magic a1) (Obj.magic lit_ff)
       then ((g, []), a2)
       else if eq_op lit_eqType (Obj.magic a2) (Obj.magic lit_ff)
            then ((g, []), a1)
            else let (g', r) = gen g in
                 ((g',
                 (((neg_lit r) :: (a1 :: (a2 :: []))) :: ((r :: ((neg_lit a1) :: [])) :: ((r :: (
                 (neg_lit a2) :: [])) :: [])))), r)

(** val bit_blast_or_zip :
    generator -> (literal * literal) list -> (generator * cnf) * word **)

let rec bit_blast_or_zip g = function
| [] -> ((g, []), [])
| y :: tl ->
  let (l1, l2) = y in
  let (p, lrs_hd) = bit_blast_or1 g l1 l2 in
  let (g_hd, cs_hd) = p in
  let (p0, lrs_tl) = bit_blast_or_zip g_hd tl in
  let (g_tl, cs_tl) = p0 in ((g_tl, (catrev cs_hd cs_tl)), (lrs_hd :: lrs_tl))

(** val bit_blast_or :
    generator -> literal list -> literal list -> (generator * cnf) * word **)

let bit_blast_or g ls1 ls2 =
  bit_blast_or_zip g (extzip_ff ls1 ls2)
