open BBCommon
open BBIte
open CNF
open Datatypes
open Eqtype
open Seq
open Ssrnat

val bit_blast_ashr_int1 :
  generator -> literal list -> (generator * cnf) * word

val bit_blast_ashr_int : generator -> word -> nat -> (generator * cnf) * word

val bit_blast_ashr_rec :
  generator -> word -> Equality.sort list -> nat -> (generator * cnf) * word

val bit_blast_ashr :
  generator -> word -> Equality.sort list -> (generator * cnf) * word
