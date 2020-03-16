open BBCommon
open CNF
open Datatypes
open Var

(** val bit_blast_var' : generator -> nat -> generator * word **)

let rec bit_blast_var' g = function
| O -> (g, [])
| S n ->
  let (g', hd) = gen g in
  let (g'', tl) = bit_blast_var' g' n in (g'', (hd :: tl))

(** val bit_blast_var :
    TypEnv.SSATE.env -> generator -> ssavar -> (generator * cnf) * word **)

let bit_blast_var tenv g v =
  let (g', vs) = bit_blast_var' g (TypEnv.SSATE.vsize v tenv) in
  ((g', []), vs)
