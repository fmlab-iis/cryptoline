open BBAdd
open BBCommon
open CNF
open Datatypes
open Seq

val bit_blast_saddo :
  generator -> word -> word -> (generator * cnf) * literal
