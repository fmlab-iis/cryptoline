open BBAdd
open BBAnd
open BBCommon
open BBConst
open BBShl
open CNF
open Datatypes
open NBitsDef
open Eqtype
open Seq
open Ssrnat

(** val bit_blast_mul_rec :
    generator -> literal list -> Equality.sort list -> nat ->
    (generator * cnf) * word **)

let rec bit_blast_mul_rec g ls1 ls2 i =
  match ls2 with
  | [] -> bit_blast_const g (from_nat (size ls1) O)
  | ls2_hd :: ls2_tl ->
    let (p, lrs_tl) = bit_blast_mul_rec g ls1 ls2_tl (addn i (S O)) in
    let (g_tl, cs_tl) = p in
    let (p0, lrs_hd) = bit_blast_shl_int g_tl ls1 i in
    let (g_hd, cs_hd) = p0 in
    if eq_op lit_eqType ls2_hd (Obj.magic lit_tt)
    then let (p1, lrs_add) = bit_blast_add g_hd lrs_tl lrs_hd in
         let (g_add, cs_add) = p1 in
         ((g_add, (catrev (catrev cs_tl cs_hd) cs_add)), lrs_add)
    else if eq_op lit_eqType ls2_hd (Obj.magic lit_ff)
         then ((g_tl, cs_tl), lrs_tl)
         else let (p1, lrs_and) =
                bit_blast_and g_hd (nseq (size ls1) (Obj.magic ls2_hd)) lrs_hd
              in
              let (g_and, cs_and) = p1 in
              let (p2, lrs_add) = bit_blast_add g_and lrs_tl lrs_and in
              let (g_add, cs_add) = p2 in
              ((g_add, (catrev (catrev (catrev cs_tl cs_hd) cs_and) cs_add)),
              lrs_add)

(** val bit_blast_mul :
    generator -> literal list -> Equality.sort list ->
    (generator * cnf) * word **)

let bit_blast_mul g ls1 ls2 =
  bit_blast_mul_rec g ls1 ls2 O
