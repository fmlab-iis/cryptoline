open BBAdd
open BBCommon
open BBConst
open BBNot
open CNF
open Datatypes
open NBitsDef
open Seq

(** val bit_blast_neg :
    generator -> literal list -> (generator * cnf) * word **)

let bit_blast_neg g ls =
  let (p, lrs_not) = bit_blast_not g ls in
  let (g_not, cs_not) = p in
  let (p0, lrs_con) = bit_blast_const g_not (from_nat (size ls) (S O)) in
  let (g_con, cs_con) = p0 in
  let (p1, lrs_add) = bit_blast_add g_con lrs_not lrs_con in
  let (g_add, cs_add) = p1 in
  ((g_add, (catrev cs_not (catrev cs_con cs_add))), lrs_add)
