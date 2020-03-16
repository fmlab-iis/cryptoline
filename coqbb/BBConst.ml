open BBCommon
open CNF
open NBitsDef
open Seq

(** val bit_blast_const : generator -> bits -> (generator * cnf) * word **)

let bit_blast_const g bs =
  ((g, []), (map lit_of_bool bs))
