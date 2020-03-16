open BBAdd
open BBAnd
open BBCommon
open BBConst
open BBShl
open CNF
open Datatypes
open NBitsDef
open Eqtype
open Seq
open Ssrnat

val bit_blast_mul_rec :
  generator -> literal list -> Equality.sort list -> nat ->
  (generator * cnf) * word

val bit_blast_mul :
  generator -> literal list -> Equality.sort list -> (generator * cnf) * word
