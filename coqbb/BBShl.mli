open BBCommon
open BBIte
open CNF
open Datatypes
open Eqtype
open Seq
open Ssrnat

val bit_blast_shl_int1 :
  generator -> literal list -> (generator * cnf) * word

val bit_blast_shl_int : generator -> word -> nat -> (generator * cnf) * word

val bit_blast_shl_rec :
  generator -> word -> Equality.sort list -> nat -> (generator * cnf) * word

val bit_blast_shl :
  generator -> word -> Equality.sort list -> (generator * cnf) * word
