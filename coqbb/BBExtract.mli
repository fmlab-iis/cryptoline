open BBCommon
open CNF
open Datatypes
open Seq
open Ssrnat

val bit_blast_extract :
  generator -> nat -> nat -> literal list -> (generator * cnf) * word
