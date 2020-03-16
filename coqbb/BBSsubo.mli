open BBCommon
open BBSub
open CNF
open Datatypes
open Seq

val bit_blast_ssubo :
  generator -> word -> word -> (generator * cnf) * literal
