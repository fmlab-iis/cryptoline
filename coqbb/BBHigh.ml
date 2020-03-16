open BBCommon
open CNF
open Datatypes
open Seq
open Ssrnat

(** val bit_blast_high :
    generator -> nat -> literal list -> (generator * cnf) * word **)

let bit_blast_high g n ls =
  ((g, []),
    (cat (drop (subn (size ls) n) ls) (nseq (subn n (size ls)) lit_ff)))
