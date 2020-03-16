open BBCommon
open BBMul
open BBZeroExtend
open CNF
open Datatypes
open Seq

val bit_blast_umulo_rec_zip :
  generator -> (literal * literal) list ->
  ((generator * cnf) * literal) * literal

val bit_blast_umulo_rec :
  generator -> literal list -> literal list ->
  ((generator * cnf) * literal) * literal

val bit_blast_umulo : generator -> word -> word -> (generator * cnf) * literal
