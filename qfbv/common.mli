
open Ast.Cryptoline


(** This modules provides QF_BV. *)

type result = Sat | Unsat | Unknown (* *)
(** the result of solving a QF_BV query *)

type exp =
  | Var of var                          (** variable *)
  | Const of size * Z.t                 (** constant *)
  | Not of size * exp                   (** bit-wise NOT *)
  | And of size * exp * exp             (** bit-wise AND *)
  | Or of size * exp * exp              (** bit-wise OR *)
  | Xor of size * exp * exp             (** bit-wise XOR *)
  | Neg of size * exp                   (** negation *)
  | Comp of size * exp * exp            (** equality, the expression is one bit *)
  | Add of size * exp * exp             (** addition *)
  | Sub of size * exp * exp             (** subtraction *)
  | Mul of size * exp * exp             (** multiplication *)
  | Udiv of size * exp * exp             (** unsigned division *)
  | Mod of size * exp * exp             (** unsigned mod *)
  | Sdiv of size * exp * exp            (** 2's complement signed division *)
  | Srem of size * exp * exp            (** 2's complement signed remainder (sign follows dividend) *)
  | Smod of size * exp * exp            (** 2's complement signed remainder (sign follows divisor) *)
  | Shl of size * exp * exp             (** left shift *)
  | Lshr of size * exp * exp            (** logical right shift *)
  | Ashr of size * exp * exp            (** arithmetic right shift *)
  | Rol of size * exp * exp             (** left rotation *)
  | Ror of size * exp * exp             (** right rotation *)
  | Concat of size * size * exp * exp   (** [Concat (wh, wl, vh, vl)] concatenates bit-vectors [vh] and [vl]. *)
  | Extract of size * int * int * exp   (** [Extract (size_of_exp, i, j, e)] extracts bits of [e] from position [i] down to position [j] where i >= j .*)
  | Slice of size * int * int * exp     (** [Slice (w1, w2, w3, exp)] extracts a slice of the bit-vector [exp] where
                                            [w1] is the width before the slice, [w2] is the width of the slice, and
                                            [w3] is the width after the slice. *)
  | High of size * size * exp           (** [High (lo, hi, exp)] extracts [hi] high bits of [exp] *)
  | Low of size * size * exp            (** [Low (lo, hi, exp)] extracts [lo] low bits of [exp] *)
  | ZeroExtend of size * int * exp      (** [ZeroExtend (size_of_exp, bit_to_extend, exp)] applies unsigned extension to [exp] *)
  | SignExtend of size * int * exp      (** [SignExtend (size_of_exp, bit_to_extend, exp)] applies signed extension to [exp] *)
  | Ite of size * bexp * exp * exp      (** if-then-else *) (* *)
(** QF_BV expressions *)

and bexp =
  | True                                (** true *)
  | Ult of size * exp * exp             (** unsigned less than *)
  | Ule of size * exp * exp             (** unsigned less than or equal to *)
  | Ugt of size * exp * exp             (** unsigned greater than *)
  | Uge of size * exp * exp             (** unsigned greater than or equal to *)
  | Slt of size * exp * exp             (** signed less than *)
  | Sle of size * exp * exp             (** signed less than or equal to *)
  | Sgt of size * exp * exp             (** signed greater than *)
  | Sge of size * exp * exp             (** signed greater than or equal to *)
  | Eq of size * exp * exp              (** equality *)
  | Uaddo of size * exp * exp           (** unsigned addition overflow *)
  | Usubo of size * exp * exp           (** unsigned subtraction underflow *)
  | Umulo of size * exp * exp           (** unsigned multiplication overflow *)
  | Saddo of size * exp * exp           (** signed addition overflow *)
  | Ssubo of size * exp * exp           (** signed subtraction underflow *)
  | Smulo of size * exp * exp           (** signed multiplication overflow *)
  | Lneg of bexp                        (** logical negation *)
  | Conj of bexp * bexp                 (** conjunction *)
  | Disj of bexp * bexp                 (** disjunction *) (* *)
(** QF_BV predicates *)

val string_of_exp : exp -> string
(** string representation of a QF_BV expression *)

val string_of_bexp : bexp -> string
(** string representation of a QF_BV predicate *)

val vars_exp : exp -> VS.t
(** variables in a QF_BV expression *)

val vars_bexp : bexp -> VS.t
(** variables in a QF_BV predicate *)

val split_bexp : bexp -> bexp list
(** Split the top-level conjunctions of a QF_BV predicate. *)


class btor_manager :
  object
    method addstmt : string -> unit
    method getstmts : string list
    method mkcomment : string -> unit
    method mkadd : size -> int -> int -> int
    method mkand : size -> int -> int -> int
    method mkconcat : size -> int -> int -> int -> int
    method mkcond : size -> int -> int -> int -> int
    method mkconstd : size -> Z.t -> int
    method mkconstd_for_shift : size -> Z.t -> int
    method mkconstd_for_rotate : size -> Z.t -> int
    method mkeq : size -> int -> int
    method mkne : size -> int -> int
    method mkextract : size -> int -> int -> int -> int
    method mkhigh : size -> int -> int -> int
    method mklow : size -> int -> int -> int
    method mkmod : size -> int -> int -> int
    method mkmul : size -> int -> int -> int
    method mkudiv : size -> int -> int -> int
    method mkneg : size -> int -> int
    method mknot : size -> int -> int
    method mkor : size -> int -> int -> int
    method mkrol : size -> int -> int -> int
    method mkror : size -> int -> int -> int
    method mksaddo : size -> int -> int
    method mksge : size -> int -> int
    method mksgt : size -> int -> int
    method mksext : size -> int -> int -> int
    method mksle : size -> int -> int
    method mkslice : size -> int -> int -> int -> int
    method mksll : size -> int -> int -> int
    method mkslt : size -> int -> int
    method mksdiv : size -> int -> int -> int
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
    method mkvar : Ast.Cryptoline.var -> int
    (** [mkvar v] is a BTOR variable corresponding to [v]. *)

    method mkvar_with_name : Ast.Cryptoline.var -> string -> int
    (** [mkvar_with_name v vn] is a BTOR variable corresponding to [v] but has name [vn] in BTOR. *)

    method mkxor : size -> int -> int -> int
    (** [mkxor w b1 b2] returns exclusive-OR of two bit-vectors [b1] and [b2], of which both have width [w]. *)

    method mkzext : size -> int -> int -> int
    (** [mkzext w i b] returns a zero-extension of a bit-vector [b] of width [w] by [i]. *)

    method newvar : int
    (** [newvar] returns a new BTOR variable. *)

    method setvar : Ast.Cryptoline.var -> int -> unit
    (** [setvar v b] relates variable [v] to a BTOR bit-vector [b]. *)
  end
(** a manager used to generate BTOR files *)


val smtlib2_of_exp : exp -> string
(** Convert an exp to an SMTLIB string. *)

val smtlib2_of_bexp : bexp -> string
(** Convert a bexp to an SMTLIB string. *)

val smtlib2_declare_vars : VS.t -> string
(** Declare bit-vector variables. *)

val smtlib2_of_imp : bexp list -> string
(** Convert the implication e1 -> e2 -> e3 -> ... -> en into an SMTLIB string.
    The implication is given as a list [e1; e2; e3; ...; en]. *)

val smtlib2_imp_check_sat : bexp list -> string
(** [smtlib2_imp_check_sat [e1; e2; ...; en]] returns a query in SMTLIB format.
    If the result is unsat, e{_ n} is implied by the conjunction of
    e{_ 1}, ..., and e{_ n-1}. *)

val btor_imp_check_sat : btor_manager -> bexp list -> string
(** [btor_imp_check_sat m [e1; e2; ...; en]] returns a query in BTOR format.
    If the result is unsat, e{_ n} is implied by the conjunction of
    e{_ 1}, ..., and e{_ n-1}. *)

val cnf_imp_check_sat : out_channel -> bexp list -> unit
(** [cnf_imp_check_sat ch [e1; e2; ...; en]] writes a query in DIMACS format
    to [ch]. If the result is unsat, e{_ n} is implied by the conjunction of
    e{_ 1}, ..., and e{_ n-1}. *)

val btor_program : ?rename:bool -> ?pre:(bexp option) -> btor_manager -> program -> var list -> var list -> string
(** [btor_program ~rename:b ~pre:fopt m p ins outs] is a bit-vector program
    in BTOR format with input variables [ins] and output variables [outs] as
    the roots. The output variables [outs] are sliced into bits in order
    (from LSB to MSB). Specification-related instructions such as [Iassert]
    are ignored. Input variables are renamed in the output BTOR if [b] is
    [true]. If [fopt] is [Some f], then [f], the precondition, is taken into
    consideration. *)
