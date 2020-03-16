open BBAdd
open BBCommon
open BBConst
open BBNot
open CNF
open Datatypes
open NBitsDef
open Seq

val bit_blast_neg : generator -> literal list -> (generator * cnf) * word
