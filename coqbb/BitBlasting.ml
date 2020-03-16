open BinPos
open BitBlastingDef
open CNF
open Var

(** val init_vm : word SSAVM.t **)

let init_vm =
  SSAVM.empty

(** val init_gen : int **)

let init_gen =
  Pos.add var_tt 1

(** val bexp_to_cnf :
    TypEnv.SSATE.env -> QFBV.QFBV.bexp -> literal list list **)

let bexp_to_cnf te e =
  let (p, lr) = bit_blast_bexp te init_vm init_gen e in
  let (_, cs) = p in add_prelude (((neg_lit lr) :: []) :: cs)
