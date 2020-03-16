open BinPos
open CNF
open Cache
open Var

(** val init_vm : word SSAVM.t **)

let init_vm =
  SSAVM.empty

(** val init_gen : int **)

let init_gen =
  Pos.add var_tt 1

(** val init_cache : cache **)

let init_cache =
  empty
