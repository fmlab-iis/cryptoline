open BBCommon
open BBDisj
open BBEq
open BBUlt
open CNF
open Seq

(** val bit_blast_ule :
    generator -> literal list -> literal list -> (generator * cnf) * literal **)

let bit_blast_ule g ls1 ls2 =
  let (p, r_eq) = bit_blast_eq g ls1 ls2 in
  let (g_eq, cs_eq) = p in
  let (p0, r_ult) = bit_blast_ult g_eq ls1 ls2 in
  let (g_ult, cs_ult) = p0 in
  let (p1, r_disj) = bit_blast_disj g_ult r_eq r_ult in
  let (g_disj, cs_disj) = p1 in
  ((g_disj, (catrev cs_eq (catrev cs_ult cs_disj))), r_disj)
