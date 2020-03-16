open BBCommon
open CNF
open Datatypes
open Seq
open Ssrnat

val bit_blast_high :
  generator -> nat -> literal list -> (generator * cnf) * word
