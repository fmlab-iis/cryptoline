
open Ast.Cryptoline

type result = Sat | Unsat | Unknown
exception TimeoutException

(** QFBV *)

type exp =
  | Var of var
  | Const of size * Z.t
  | Not of size * exp
  | And of size * exp * exp
  | Or of size * exp * exp
  | Xor of size * exp * exp
  | Neg of size * exp
  | Add of size * exp * exp
  | Sub of size * exp * exp
  | Mul of size * exp * exp
  | Mod of size * exp * exp
  | Srem of size * exp * exp
  | Smod of size * exp * exp
  | Shl of size * exp * exp
  | Lshr of size * exp * exp
  | Ashr of size * exp * exp
  | Concat of size * size * exp * exp   (* Concat (wh, wl, vh, vl) *)
  | Extract of size * int * int * exp   (* Extract (size_of_exp, i, j, e) where i >= j *)
  | Slice of size * int * int * exp     (* Slice (w1, w2, w3, exp), w1: the width before the slice, w2: the width of the slice, w3: the width after the slice *)
  | High of size * size * exp           (* High (lo, hi, exp) *)
  | Low of size * size * exp            (* Low (lo, hi, exp) *)
  | ZeroExtend of size * int * exp      (* ZeroExtend (size_of_exp, bit_to_extend, exp) *)
  | SignExtend of size * int * exp      (* SignExtend (size_of_exp, bit_to_extend, exp) *)
  | Ite of size * bexp * exp * exp
and bexp =
  | True
  | Ult of size * exp * exp
  | Ule of size * exp * exp
  | Ugt of size * exp * exp
  | Uge of size * exp * exp
  | Slt of size * exp * exp
  | Sle of size * exp * exp
  | Sgt of size * exp * exp
  | Sge of size * exp * exp
  | Eq of size * exp * exp
  | Uaddo of size * exp * exp
  | Usubo of size * exp * exp
  | Umulo of size * exp * exp
  | Saddo of size * exp * exp
  | Ssubo of size * exp * exp
  | Smulo of size * exp * exp
  | Lneg of bexp
  | Conj of bexp * bexp
  | Disj of bexp * bexp

class btor_manager : int ->
  object
    method addstmt : string -> unit
    method getstmts : string list
    method mkadd : size -> int -> int -> int
    method mkand : size -> int -> int -> int
    method mkconcat : size -> int -> int -> int -> int
    method mkcond : size -> int -> int -> int -> int
    method mkconstd : size -> Z.t -> int
    method mkeq : size -> int -> int
    method mkextract : size -> int -> int -> int -> int
    method mkhigh : size -> int -> int -> int
    method mklow : size -> int -> int -> int
    method mkmod : size -> int -> int -> int
    method mkmul : size -> int -> int -> int
    method mkneg : size -> int -> int
    method mkneq : size -> int -> int
    method mknot : size -> int -> int
    method mkor : size -> int -> int -> int
    method mksaddo : size -> int -> int
    method mksge : size -> int -> int
    method mksgt : size -> int -> int
    method mksignextend : size -> int -> int -> int
    method mksle : size -> int -> int
    method mkslice : size -> int -> int -> int -> int
    method mksll : size -> int -> int -> int
    method mkslt : size -> int -> int
    method mksmod : size -> int -> int -> int
    method mksmulo : size -> int -> int
    method mksra : size -> int -> int -> int
    method mksrem : size -> int -> int -> int
    method mksrl : size -> int -> int -> int
    method mkssubo : size -> int -> int
    method mksub : size -> int -> int -> int
    method mkuaddo : size -> int -> int
    method mkuge : size -> int -> int
    method mkugt : size -> int -> int
    method mkule : size -> int -> int
    method mkult : size -> int -> int
    method mkumulo : size -> int -> int
    method mkusubo : size -> int -> int
    method mkvar : Ast.Cryptoline.VM.key -> int
    method mkxor : size -> int -> int -> int
    method mkzeroextend : size -> int -> int -> int
    method newvar : int
    method setvar : Ast.Cryptoline.VM.key -> int -> unit
  end

val string_of_exp : exp -> string
val string_of_bexp : bexp -> string

val smtlib2_imp_check_sat : bexp list -> string
val btor_imp_check_sat : btor_manager -> bexp list -> string
val cnf_imp_check_sat : out_channel -> bexp list -> unit

val vars_exp : exp -> VS.t
val vars_bexp : bexp -> VS.t
