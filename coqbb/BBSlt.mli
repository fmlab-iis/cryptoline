open BBCommon
open BBUlt
open CNF
open Datatypes
open Seq

val bit_blast_slt : generator -> word -> word -> (generator * cnf) * literal
