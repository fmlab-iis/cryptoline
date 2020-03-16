open BBCommon
open CNF
open Seq

(** val bit_blast_concat :
    generator -> literal list -> literal list -> (generator * cnf) * word **)

let bit_blast_concat g ls1 ls0 =
  ((g, []), (cat ls0 ls1))
