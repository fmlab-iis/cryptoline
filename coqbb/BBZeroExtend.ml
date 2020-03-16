open BBCommon
open CNF
open Datatypes
open Seq

(** val bit_blast_zeroextend :
    nat -> generator -> word -> (generator * cnf) * word **)

let bit_blast_zeroextend n g ls =
  ((g, []), (cat ls (nseq n lit_ff)))
