open BinPos
open BitBlastingDef
open CNF
open Var

val init_vm : word SSAVM.t

val init_gen : int

val bexp_to_cnf : TypEnv.SSATE.env -> QFBV.QFBV.bexp -> literal list list
