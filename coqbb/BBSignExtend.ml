open BBCommon
open CNF
open Datatypes
open Seq

(** val bit_blast_signextend :
    nat -> generator -> word -> (generator * cnf) * word **)

let bit_blast_signextend n g ls =
  ((g, []), (cat ls (nseq n (msl ls))))
