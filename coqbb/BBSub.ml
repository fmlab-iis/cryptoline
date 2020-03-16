open BBAdd
open BBCommon
open BBNeg
open CNF
open Seq

(** val bit_blast_sub :
    generator -> literal list -> literal list -> (generator * cnf) * word **)

let bit_blast_sub g ls1 ls2 =
  let (p, lrs_neg) = bit_blast_neg g ls2 in
  let (g_neg, cs_neg) = p in
  let (p0, lrs_add) = bit_blast_add g_neg ls1 lrs_neg in
  let (g_add, cs_add) = p0 in ((g_add, (catrev cs_neg cs_add)), lrs_add)
