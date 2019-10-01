
open Ast.Cryptoline

(*
type 'a gen = More of ('a * (unit -> 'a gen))
type var_gen = unit -> var gen
 *)
type 'a gen = 'a Common.gen
type var_gen = Common.var_gen

val make_vgen : string -> int -> var_gen
val vgen_of_spec : spec -> var_gen
val vgen_of_espec : espec -> var_gen
val vgen_of_rspec : rspec -> var_gen

(* Returns outputs to redlog for the verification of an espec in SSA. *)
val redlog_of_espec : espec -> string

(* Verifies the safety of a spec in SSA. *)
val verify_safety : spec -> bool
(*
 * Verify the safety of the n-th instruction in a program in SSA.
 * Raise TimeoutException if the SMT solver timed out.
 *)
val verify_instruction_safety : int -> rbexp -> program -> int -> Common.round_result

(* Verifies assertions of a specification in SSA. *)
val verify_assert : var_gen -> spec -> bool

(* Verifies an algebraic spec in SSA. *)
val verify_espec : var_gen -> espec -> bool
(* Verifies an algebraic spec in SSA. The spec should only contain one atomic predicate. *)
val verify_espec_single_conjunct : var_gen -> espec -> bool

(* Verifies a range spec in SSA. *)
val verify_rspec : rspec -> bool
(* Verifies a range spec in SSA. The spec should only contain one atomic predicate. *)
val verify_rspec_single_conjunct : rspec -> bool

(* Verifies a spec. *)
val verify_spec : spec -> bool
