
open Ast.Cryptoline
open Qfbv.Std

type 'a gen = More of ('a * (unit -> 'a gen))
type var_gen = unit -> string gen

type poly_spec =
  { ppre : ebexp;
    pprog : ebexp list;
    ppost : ebexp }

type round_result =
  Solved of result
| Unfinished of (int * instr * bexp) list


(* for safety and range specification *)

val bexp_rbexp : Ast.Cryptoline.rbexp -> Qfbv.Std.bexp
val bexp_program : Ast.Cryptoline.instr list -> Qfbv.Std.bexp list
val bexp_instr_safe : Ast.Cryptoline.instr -> Qfbv.Std.bexp
val bexp_program_safe_conds :
  Ast.Cryptoline.instr list -> (int * Ast.Cryptoline.instr * Qfbv.Std.bexp) list
val bexp_program_safe : Ast.Cryptoline.instr list -> Qfbv.Std.bexp
val split_bexp : Qfbv.Std.bexp -> Qfbv.Std.bexp list

(* for algebraic specification *)

val polys_of_espec :
  var_gen -> Ast.Cryptoline.espec ->
  var_gen *
    (Ast.Cryptoline.ebexp * Ast.Cryptoline.VS.elt list * Ast.Cryptoline.eexp list *
       Ast.Cryptoline.eexp) list
val bv2z_espec : var_gen -> Ast.Cryptoline.espec -> var_gen * poly_spec
val rewrite_assignments_ebexp :
  Ast.Cryptoline.eexp list -> Ast.Cryptoline.ebexp ->
  Ast.Cryptoline.eexp list * Ast.Cryptoline.ebexp
val polys_of_ebexp :
  var_gen -> Ast.Cryptoline.ebexp ->
  var_gen * Ast.Cryptoline.var list * Ast.Cryptoline.eexp list
val singular_of_eexp : Ast.Cryptoline.eexp -> string
val sage_of_eexp : Ast.Cryptoline.eexp -> string
val magma_of_eexp : Ast.Cryptoline.eexp -> string
val mathematica_of_var : Ast.Cryptoline.var -> string
val mathematica_of_eexp : Ast.Cryptoline.eexp -> string
val macaulay2_of_var : Ast.Cryptoline.var -> string
val macaulay2_of_eexp : Ast.Cryptoline.eexp -> string
val maple_of_eexp : Ast.Cryptoline.eexp -> string

(* Slice a precondition and a program according to a safety condition. *)
val slice_for_safety : Ast.Cryptoline.rbexp -> Ast.Cryptoline.program -> Qfbv.Std.bexp -> VS.t Ast.Cryptoline.atomichash_t option -> (Ast.Cryptoline.rbexp * Ast.Cryptoline.program)
(*
 * Convert a precondition and a program to QFBV bexps according to a safety condition.
 * The precondition and the program may be sliced.
 *)
val safety_assumptions : Ast.Cryptoline.rbexp -> Ast.Cryptoline.program -> Qfbv.Std.bexp -> VS.t Ast.Cryptoline.atomichash_t option -> Qfbv.Std.bexp list

val smtlib_espec : var_gen -> Ast.Cryptoline.espec -> var_gen * string

(* Returns true if an algebraic postcondition appears in a precondition. *)
val espre_implies_espost : Ast.Cryptoline.ebexp -> Ast.Cryptoline.ebexp -> bool

(* Returns true if an algebraic postcondition appears in some assume instruction in the program. *)
val espost_in_assumes : Ast.Cryptoline.program -> Ast.Cryptoline.ebexp -> bool

(* Returns true if a range postcondition appears in a precondition. *)
val rspre_implies_rspost : Ast.Cryptoline.rbexp -> Ast.Cryptoline.rbexp -> bool

(* Returns true if a range postcondition appears in some assume instruction in the program. *)
val rspost_in_assumes : Ast.Cryptoline.program -> Ast.Cryptoline.rbexp -> bool

(* Returns true if an algebraic specification is trivially valid. *)
val is_espec_trivial : Ast.Cryptoline.espec -> bool

(* Returns true if a range specification is trivially valid. *)
val is_rspec_trivial : Ast.Cryptoline.rspec -> bool
