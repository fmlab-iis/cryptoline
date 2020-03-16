open BBCommon
open BBMul
open BBOr
open BBSignExtend
open BBUmulo
open BBXor
open CNF
open Datatypes
open Seq

val bit_blast_smulo_rec :
  generator -> literal list -> literal list ->
  ((generator * cnf) * literal) * literal

val bit_blast_smulo : generator -> word -> word -> (generator * cnf) * literal
