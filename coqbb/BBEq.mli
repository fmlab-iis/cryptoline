open BBCommon
open CNF
open List0
open Seq

val bit_blast_eq_eq_zip : literal -> (literal * literal) list -> cnf

val bit_blast_eq_choice : literal -> word -> cnf

val bit_blast_eq_neq_zip :
  generator -> (literal * literal) list -> (generator * cnf) * word

val bit_blast_eq_zip :
  generator -> (literal * literal) list -> (generator * cnf) * literal

val bit_blast_eq :
  generator -> literal list -> literal list -> (generator * cnf) * literal
