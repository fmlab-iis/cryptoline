open BBCommon
open CNF
open Datatypes
open Seq

val bit_blast_zeroextend :
  nat -> generator -> word -> (generator * cnf) * word
