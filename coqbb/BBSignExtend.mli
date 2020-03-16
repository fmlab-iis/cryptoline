open BBCommon
open CNF
open Datatypes
open Seq

val bit_blast_signextend :
  nat -> generator -> word -> (generator * cnf) * word
