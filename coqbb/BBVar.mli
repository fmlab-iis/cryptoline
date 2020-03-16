open BBCommon
open CNF
open Datatypes
open Var

val bit_blast_var' : generator -> nat -> generator * word

val bit_blast_var :
  TypEnv.SSATE.env -> generator -> ssavar -> (generator * cnf) * word
