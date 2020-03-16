open BBCommon
open BBDisj
open BBEq
open BBUlt
open CNF
open Seq

val bit_blast_ule :
  generator -> literal list -> literal list -> (generator * cnf) * literal
