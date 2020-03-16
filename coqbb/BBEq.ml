open BBCommon
open CNF
open List0
open Seq

(** val bit_blast_eq_eq_zip : literal -> (literal * literal) list -> cnf **)

let rec bit_blast_eq_eq_zip r = function
| [] -> []
| y :: tl ->
  let (l1, l2) = y in
  let cs_hd = List0.map (fun cs -> (neg_lit r) :: cs) (cnf_lit_eq l1 l2) in
  let cs_tl = bit_blast_eq_eq_zip r tl in catrev cs_hd cs_tl

(** val bit_blast_eq_choice : literal -> word -> cnf **)

let bit_blast_eq_choice r auxs =
  (r :: auxs) :: []

(** val bit_blast_eq_neq_zip :
    generator -> (literal * literal) list -> (generator * cnf) * word **)

let rec bit_blast_eq_neq_zip g = function
| [] -> ((g, []), [])
| y :: tl ->
  let (l1, l2) = y in
  let (g_hd, auxs_hd) = gen g in
  let cs_hd =
    ((neg_lit auxs_hd) :: (l1 :: (l2 :: []))) :: (((neg_lit auxs_hd) :: (
    (neg_lit l1) :: ((neg_lit l2) :: []))) :: ((auxs_hd :: ((neg_lit l1) :: (l2 :: []))) :: ((auxs_hd :: (l1 :: (
    (neg_lit l2) :: []))) :: [])))
  in
  let (p, auxs_tl) = bit_blast_eq_neq_zip g_hd tl in
  let (g_tl, cs_tl) = p in
  ((g_tl, (catrev cs_hd cs_tl)), (auxs_hd :: auxs_tl))

(** val bit_blast_eq_zip :
    generator -> (literal * literal) list -> (generator * cnf) * literal **)

let bit_blast_eq_zip g lsp =
  let (g_r, r) = gen g in
  let (p, auxs) = bit_blast_eq_neq_zip g_r lsp in
  let (g_aux, cs_neq) = p in
  let cs_aux = bit_blast_eq_choice r auxs in
  let cs_eq = bit_blast_eq_eq_zip r lsp in
  ((g_aux, (catrev cs_neq (catrev cs_aux cs_eq))), r)

(** val bit_blast_eq :
    generator -> literal list -> literal list -> (generator * cnf) * literal **)

let bit_blast_eq g ls1 ls2 =
  bit_blast_eq_zip g (extzip_ff ls1 ls2)
