open BBCommon
open CNF
open Datatypes
open Seq
open Ssrnat

(** val bit_blast_extract :
    generator -> nat -> nat -> literal list -> (generator * cnf) * word **)

let bit_blast_extract g i j ls =
  let lowls =
    cat (take (addn i (S O)) ls) (nseq (subn (addn i (S O)) (size ls)) lit_ff)
  in
  ((g, []),
  (cat (drop (subn (size lowls) (addn (subn i j) (S O))) lowls)
    (nseq (subn (addn (subn i j) (S O)) (size lowls)) lit_ff)))
