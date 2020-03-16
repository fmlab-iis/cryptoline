open BBCommon
open BBDisj
open BBEq
open BBSlt
open CNF
open Seq

val bit_blast_sle :
  generator -> literal list -> literal list -> (generator * cnf) * literal
