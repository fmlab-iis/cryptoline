open BBCommon
open CNF
open Eqtype
open Seq

(** val bit_blast_and1 :
    generator -> Equality.sort -> Equality.sort ->
    (generator * cnf) * literal **)

let bit_blast_and1 g l1 l2 =
  if (||) (eq_op lit_eqType l1 (Obj.magic lit_ff))
       (eq_op lit_eqType l2 (Obj.magic lit_ff))
  then ((g, []), lit_ff)
  else if eq_op lit_eqType l1 (Obj.magic lit_tt)
       then ((g, []), (Obj.magic l2))
       else if eq_op lit_eqType l2 (Obj.magic lit_tt)
            then ((g, []), (Obj.magic l1))
            else let (g', r) = gen g in
                 let cs =
                   ((neg_lit r) :: ((Obj.magic l1) :: [])) :: (((neg_lit r) :: (
                   (Obj.magic l2) :: [])) :: ((r :: ((neg_lit (Obj.magic l1)) :: (
                   (neg_lit (Obj.magic l2)) :: []))) :: []))
                 in
                 ((g', cs), r)

(** val bit_blast_and_zip :
    generator -> (Equality.sort * Equality.sort) list ->
    (generator * cnf) * word **)

let rec bit_blast_and_zip g = function
| [] -> ((g, []), [])
| y :: tl ->
  let (l1, l2) = y in
  let (p, lrs_hd) = bit_blast_and1 g l1 l2 in
  let (g_hd, cs_hd) = p in
  let (p0, lrs_tl) = bit_blast_and_zip g_hd tl in
  let (g_tl, cs_tl) = p0 in ((g_tl, (catrev cs_hd cs_tl)), (lrs_hd :: lrs_tl))

(** val bit_blast_and :
    generator -> literal list -> literal list -> (generator * cnf) * word **)

let bit_blast_and g ls1 ls2 =
  bit_blast_and_zip g (Obj.magic extzip_ff ls1 ls2)
