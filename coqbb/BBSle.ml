open BBCommon
open BBDisj
open BBEq
open BBSlt
open CNF
open Seq

(** val bit_blast_sle :
    generator -> literal list -> literal list -> (generator * cnf) * literal **)

let bit_blast_sle g ls1 ls2 =
  let (p, r_eq) = bit_blast_eq g ls1 ls2 in
  let (g_eq, cs_eq) = p in
  let (p0, r_slt) = bit_blast_slt g_eq ls1 ls2 in
  let (g_slt, cs_slt) = p0 in
  let (p1, r_disj) = bit_blast_disj g_slt r_eq r_slt in
  let (g_disj, cs_disj) = p1 in
  ((g_disj, (catrev cs_eq (catrev cs_slt cs_disj))), r_disj)
