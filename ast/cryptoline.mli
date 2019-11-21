
val z_two : Z.t



(** Types *)

type size = int

type typ =
  Tuint of size
| Tsint of size

val uint_t : size -> typ
val int_t : size -> typ
val bit_t : typ
val string_of_typ : typ -> string
val size_of_typ : typ -> size
val min_of_typ : typ -> Z.t
val max_of_typ : typ -> Z.t
val typ_is_signed : typ -> bool
val typ_to_signed : typ -> typ
val typ_to_unsigned : typ -> typ



(** Variables with SSA index taken into consideration *)

type var =
  {
    vname : string;     (* name of the variable *)
    vtyp : typ;         (* type of the variable *)
    vsidx : int         (* SSA index of the variable *)
  }

val string_of_var : ?typ:bool -> var -> string
val size_of_var : var -> size
val typ_of_var : var -> typ
val eq_var : var -> var -> bool
val cmp_var : var -> var -> int
val mem_var : var -> var list -> bool
val mkvar : string -> typ -> var
val var_is_uint : var -> bool
val var_is_sint : var -> bool
val var_is_bit : var -> bool
val var_is_signed :  var -> bool
val typ_delim : string

module VS : Set.S with type elt = var
module VM : Map.S with type key = var

val string_of_vs : ?typ:bool -> VS.t -> string
val vs_disjoint : VS.t -> VS.t -> bool



(** Operators *)

type eunop =
  | Eneg

type ebinop =
  | Eadd
  | Esub
  | Emul

type runop =
  | Rnegb
  | Rnotb

type rbinop =
  | Radd
  | Rsub
  | Rmul
  | Rumod
  | Rsrem (* 2's complement signed remainder (sign follows dividend) *)
  | Rsmod (* 2's complement signed remainder (sign follows divisor) *)
  | Randb
  | Rorb
  | Rxorb

type rcmpop =
  | Rult
  | Rule
  | Rugt
  | Ruge
  | Rslt
  | Rsle
  | Rsgt
  | Rsge

val string_of_eunop : eunop -> string
val symbol_of_eunop : eunop -> string
val string_of_ebinop : ebinop -> string
val symbol_of_ebinop : ebinop -> string
val string_of_rcmpop : rcmpop -> string
val string_of_runop : runop -> string
val string_of_rbinop : rbinop -> string



(** Algebraic Expressions *)

type eexp =
  | Evar of var
  | Econst of Z.t
  | Eunop of eunop * eexp
  | Ebinop of ebinop * eexp * eexp

val evar : var -> eexp
val econst : Z.t -> eexp
val eneg : eexp -> eexp
val eadd : eexp -> eexp -> eexp
val esub : eexp -> eexp -> eexp
val emul : eexp -> eexp -> eexp
val esq : eexp -> eexp
val eadds : eexp list -> eexp
val emuls : eexp list -> eexp
val e2pow : int -> Z.t

val len_eexp : eexp -> int
val eq_eexp : eexp -> eexp -> bool
val cmp_eexp : eexp -> eexp -> int

module EEElt : Set.OrderedType with type t = eexp
module EES : Set.S with type elt = eexp

val subs_eexp : eexp -> EES.t
val simplify_eexp : eexp -> eexp
val limbs : int -> eexp list -> eexp

val eunop_precedence : eunop -> int
val ebinop_precedence : ebinop -> int
val eexp_precedence : eexp -> int
val ebinop_eexp_open : ebinop -> eexp -> bool
val eexp_ebinop_open : eexp -> ebinop -> bool

val is_eexp_atomic : eexp -> bool
val string_of_eexp : ?typ:bool -> eexp -> string
val vars_eexp : eexp -> VS.t
val subst_eexp : (var * eexp) list -> eexp -> eexp
val replace_eexp : (eexp * eexp) list -> eexp -> eexp

(* "eexp_has_sub e sub" returns true if e has the sub-expression sub. *)
val eexp_has_sub : eexp -> eexp -> bool


(** Range Expressions *)

type rexp =
  | Rvar of var
  | Rconst of size * Z.t
  | Runop of size * runop * rexp
  | Rbinop of size * rbinop * rexp * rexp
  | Ruext of size * rexp * int
  | Rsext of size * rexp * int

val size_of_rexp : rexp -> size

val rvar : var -> rexp
val rconst : size -> Z.t -> rexp
val rposz : size -> Z.t -> rexp
val rnegb : size -> rexp -> rexp
val rnotb : size -> rexp -> rexp
val radd : size -> rexp -> rexp -> rexp
val rsub : size -> rexp -> rexp -> rexp
val rmul : size -> rexp -> rexp -> rexp
val rumod : size -> rexp -> rexp -> rexp
val rsrem : size -> rexp -> rexp -> rexp
val rsmod : size -> rexp -> rexp -> rexp
val randb : size -> rexp -> rexp -> rexp
val rorb : size -> rexp -> rexp -> rexp
val rxorb : size -> rexp -> rexp -> rexp
val rsq : size -> rexp -> rexp
val radds : size -> rexp list -> rexp
val rmuls : size -> rexp list -> rexp

val string_of_rexp : ?typ:bool -> rexp -> string
val eq_rexp : rexp -> rexp -> bool
val vars_rexp : rexp -> VS.t
val subst_rexp : (var * rexp) list -> rexp -> rexp



(** Algebraic Predicates *)

type ebexp =
  | Etrue
  | Eeq of eexp * eexp
  | Eeqmod of eexp * eexp * eexp
  | Eand of ebexp * ebexp

val etrue : ebexp
val eeq : eexp -> eexp -> ebexp
val eeqmod : eexp -> eexp -> eexp -> ebexp
val eand : ebexp -> ebexp -> ebexp
val eands : ebexp list -> ebexp

val string_of_ebexp : ?typ:bool -> ebexp -> string
val eq_ebexp : ebexp -> ebexp -> bool
val vars_ebexp : ebexp -> VS.t
val subst_ebexp : (var * eexp) list -> ebexp -> ebexp
val split_eand : ebexp -> ebexp list
val simplify_ebexp : ebexp -> ebexp



(** Range Predicates *)

type rbexp =
  | Rtrue
  | Req of size * rexp * rexp
  | Rcmp of size * rcmpop * rexp * rexp
  | Rneg of rbexp
  | Rand of rbexp * rbexp
  | Ror of rbexp * rbexp

val rtrue : rbexp
val rfalse : rbexp
val req : size -> rexp -> rexp -> rbexp
val rult : size -> rexp -> rexp -> rbexp
val rule : size -> rexp -> rexp -> rbexp
val rugt : size -> rexp -> rexp -> rbexp
val ruge : size -> rexp -> rexp -> rbexp
val rslt : size -> rexp -> rexp -> rbexp
val rsle : size -> rexp -> rexp -> rbexp
val rsgt : size -> rexp -> rexp -> rbexp
val rsge : size -> rexp -> rexp -> rbexp
val reqmod : size -> rexp -> rexp -> rexp -> rbexp
val rneg : rbexp -> rbexp
val rand : rbexp -> rbexp -> rbexp
val ror : rbexp -> rbexp -> rbexp
val rands : rbexp list -> rbexp
val rors : rbexp list -> rbexp

val string_of_rbexp : ?typ:bool -> rbexp -> string
val eq_rbexp : rbexp -> rbexp -> bool
val vars_rbexp : rbexp -> VS.t
val subst_rbexp : (var * rexp) list -> rbexp -> rbexp
val split_rand : rbexp -> rbexp list
val split_ror : rbexp -> rbexp list



(** Predicates *)

type bexp = ebexp * rbexp

val btrue : bexp
val eqn_bexp : bexp -> ebexp
val rng_bexp : bexp -> rbexp
val band : bexp -> bexp -> bexp
val bands : bexp list -> bexp
val bands2 : ebexp list -> rbexp list -> bexp

val string_of_bexp : ?typ:bool -> bexp -> string
val eq_bexp : bexp -> bexp -> bool
val vars_bexp : bexp -> VS.t
val subst_bexp : (var * eexp) list -> (var * rexp) list -> bexp -> bexp



(** Instructions *)

type prove_with_spec =
  Precondition
| AllCuts
| AllAssumes
| AllGhosts

type atomic =
  | Avar of var
  | Aconst of typ * Z.t

type instr =
  | Imov of var * atomic                          (* Imov (v, a): v = a *)
  | Ishl of var * atomic * Z.t                    (* Ishl (v, a, n): v = a * 2^n, overflow is forbidden *)
  | Icshl of var * var * atomic * atomic * Z.t    (* Icshl (vh, vl, a1, a2, n) *)
  | Inondet of var                                (* Inondet v: v = a nondeterministic value *)
  | Icmov of var * atomic * atomic * atomic       (* Icmov (v, c, a1, a2): if c then v = a1 else v = a2 *)
  | Inop                                          (* Inop: do nothing *)
  | Inot of var * atomic                          (* Inot (v, a): v = not(a), the one's complement of a *)
  | Iadd of var * atomic * atomic                 (* Iadd (v, a1, a2): v = a1 + a2, overflow is forbidden *)
  | Iadds of var * var * atomic * atomic          (* Iadds (c, v, a1, a2): v = a1 + a2, c = carry flag *)
  | Iaddr of var * var * atomic * atomic          (* Iaddr (c, v, a1, a2): v = a1 + a2, c = 0 *)
  | Iadc of var * atomic * atomic * atomic        (* Iadc (v, a1, a2, y): v = a1 + a2 + y, overflow is forbidden *)
  | Iadcs of var * var * atomic * atomic * atomic (* Iadcs (c, v, a1, a2, y): v = a1 + a2 + y, c = carry flag *)
  | Iadcr of var * var * atomic * atomic * atomic (* Iadcr (c, v, a1, a2, y): v = a1 + a2 + y, c = 0 *)
  | Isub of var * atomic * atomic                 (* Isub (v, a1, a2): v = a1 + not(a2) + 1, overflow is forbidden *)
  | Isubc of var * var * atomic * atomic          (* Isubc (c, v, a1, a2): v = a1 + not(a2) + 1, c = carry flag *)
  | Isubb of var * var * atomic * atomic          (* Isous (b, v, a1, a2): v = a1 - a2, b = borrow flag *)
  | Isubr of var * var * atomic * atomic          (* Isubr (c, v, a1, a2): v = a1 + not(a2) + 1, c = 0 *)
  | Isbc of var * atomic * atomic * atomic        (* Isbc (v, a1, a2, y): v = a1 + not(a2) + y *)
  | Isbcs of var * var * atomic * atomic * atomic (* Isbcs (c, v, a1, a2, y): v = a1 + not(a2) + y, c = carry flag *)
  | Isbcr of var * var * atomic * atomic * atomic (* Isbcr (c, v, a1, a2, y): v = a1 + not(a2) + y, c = 0 *)
  | Isbb of var * atomic * atomic * atomic        (* Isbb (v, a1, a2, y): v = a1 - a2 - y *)
  | Isbbs of var * var * atomic * atomic * atomic (* Isbbs (b, v, a1, a2, y): v = a1 - a2 - y, b = borrow flag *)
  | Isbbr of var * var * atomic * atomic * atomic (* Isbbr (b, v, a1, a2, y): v = a1 - a2 - y, b = 0 *)
  | Imul of var * atomic * atomic                 (* Imul (v, a1, a2): v = a1 * a2, overflow is forbidden *)
  | Imuls of var * var * atomic * atomic
  | Imulr of var * var * atomic * atomic
  | Imull of var * var * atomic * atomic          (* Imull (vh, vl, a1, a2): vh and vl are respectively the high part and
                                                     the low part of the full multiplication a1 * a2, *)
  | Imulj of var * atomic * atomic                (* Iumulj (v, a1, a2): v = the full multiplication of a1 * a2, which is equivalent
                                                     to Iumull (vh, vl, a1, a2); Join (r, vh, vl) *)
  | Isplit of var * var * atomic * Z.t            (* Isplit (vh, vl, a, n): vh is the high (w - n) bits (signed extended to w bits) of a
                                                     and vl is the low n bits (zero extended to w bits) of a
                                                     where w is the bit-width of a *)
  (* Instructions that cannot be translated to polynomials *)
  | Iand of var * atomic * atomic                 (* Iand (v, a1, a2): v = the bitwise AND of a1 and a2 *)
  | Ior of var * atomic * atomic                  (* Ior (v, a1, a2): v = the bitwise OR of a1 and a2 *)
  | Ixor of var * atomic * atomic                 (* Ixor (v, a1, a2): v = the bitwise XOR of a1 and a2 *)
  (* Type conversions *)
  | Icast of var * atomic                         (* Icast (v, a): v = the value of a represented by the type of v *)
  | Ivpc of var * atomic                          (* Ivpc (v, a): v = a, value preserved casting *)
  | Ijoin of var * atomic * atomic                (* Ijoin (v, ah, al): v = ah * 2^w + al where w is the bit-width of al *)
  (* Specifications *)
  | Iassert of bexp
  | Iassume of bexp
  | Iecut of ebexp * prove_with_spec list
  | Ircut of rbexp * prove_with_spec list
  | Ighost of VS.t * bexp

type program = instr list

val mkatomic_var : var -> atomic
val mkatomic_const : typ -> Z.t -> atomic
val size_of_atomic : atomic -> size
val typ_of_atomic : atomic -> typ
val var_of_atomic : atomic -> var
val const_of_atomic : atomic -> Z.t
val atomic_is_var : atomic -> bool
val atomic_is_const : atomic -> bool
val atomic_is_signed : atomic -> bool
val string_of_atomic : ?typ:bool -> atomic -> string
val string_of_instr : ?typ:bool -> instr -> string
val string_of_program : ?typ:bool -> program -> string

val vars_atomic : atomic -> VS.t
val vars_instr : instr -> VS.t
val vars_program : program -> VS.t
val lvs_instr : instr -> VS.t
val lvs_program : program -> VS.t
val rvs_instr : instr -> VS.t
val rvs_program : program -> VS.t
val lcarries_instr : instr -> VS.t
val lcarries_program : program -> VS.t

val eq_atomic : atomic -> atomic -> bool
(* Substitute lval *)
val subst_lval : (var * atomic) list -> var -> var
val subst_atomic : (var * atomic) list -> atomic -> atomic
val subst_instr : (var * atomic) list -> instr -> instr
val subst_program : (var * atomic) list -> program -> program
val pats_to_epats : (var * atomic) list -> (var * eexp) list
val pats_to_rpats : (var * atomic) list -> (var * rexp) list

module SS : Set.S with type elt = string
module SM : Map.S with type key = string
val new_name : ?prefix:string -> SS.t -> string



(** Specifications *)

type spec =
  { spre : bexp;
    sprog : program;
    spost : bexp;
    sepwss : prove_with_spec list;
    srpwss : prove_with_spec list }

type espec =
  { espre : ebexp;
    esprog : program;
    espost : ebexp;
    espwss : prove_with_spec list }

type rspec =
  { rspre : rbexp;
    rsprog : program;
    rspost : rbexp;
    rspwss : prove_with_spec list }

val vars_spec : spec -> VS.t
val vars_espec : espec -> VS.t
val vars_rspec : rspec -> VS.t

val espec_of_spec : spec -> espec
val rspec_of_spec : spec -> rspec

val string_of_spec : ?typ:bool -> spec -> string
val string_of_espec : ?typ:bool -> espec -> string
val string_of_rspec : ?typ:bool -> rspec -> string



(** Well-formedness *)

type ill_formed = IllPrecondition of bexp | IllInstruction of instr | IllPostcondition of bexp
val chain_reasons : (string option) list -> string option
val check_const_range : typ -> Z.t -> string option
val check_unsigned_var : var -> string option
val check_signed_var : var -> string option
val check_bit_var : var -> string option
val check_unsigned_atomic : atomic -> string option
val check_signed_atomic : atomic -> string option
val check_unsigned_atomics : atomic list -> string option
val check_signed_atomics : atomic list -> string option
val check_same_sign : atomic list -> string option
val check_same_size : atomic list -> string option
val check_same_typ : atomic list -> string option
val check_unsigned_same_typ : atomic list -> string option
val check_signed_same_typ : atomic list -> string option
val check_diff_lvs : var -> var -> string option
val check_mull_lvs : var -> var -> string option
val check_split_lvs : var -> var -> string option
val check_mulj_size : var -> atomic -> atomic -> string option
val check_join_size : var -> atomic -> atomic -> string option
val illformed_instr_reason : VS.t -> VS.t -> VS.t -> instr -> string option
val illformed_program_reason : VS.t -> VS.t -> VS.t -> program -> (instr * string) option
val illformed_eexp_reason : VS.t -> eexp -> string option
val illformed_ebexp_reason : VS.t -> ebexp -> string option
val illformed_rexp_reason : VS.t -> rexp -> string option
val illformed_rbexp_reason : VS.t -> rbexp -> string option
val illformed_bexp_reason : VS.t -> bexp -> string option
val illformed_spec_reason : VS.t -> spec -> (ill_formed * string) option
val well_formed_instr : VS.t -> VS.t -> VS.t -> instr -> bool
val well_formed_program : VS.t -> VS.t -> VS.t -> program -> bool
val well_formed_spec : VS.t -> spec -> bool



(** Static single assignment *)

val mksvar : string -> typ -> int -> var
val ssa_var : int VM.t -> var -> var
val ssa_atomic : int VM.t -> atomic -> atomic
val ssa_eexp : int VM.t -> eexp -> eexp
val ssa_rexp : int VM.t -> rexp -> rexp
val ssa_ebexp : int VM.t -> ebexp -> ebexp
val ssa_rbexp : int VM.t -> rbexp -> rbexp
val ssa_bexp : int VM.t -> bexp -> bexp
val ssa_instr : int VM.t -> instr -> int VM.t * instr
val ssa_program : int VM.t -> program -> int VM.t * program
val ssa_spec : spec -> spec



(** Cut *)

(*
 * Cut algebra specifications in SSA.
 * Note that this function removes all rcut instructions.
 *)
val cut_espec : espec -> espec list

(*
 * Cut range specifications in SSA.
 * Note that this function removes all ecut instructions.
 *)
val cut_rspec : rspec -> rspec list



(** Assignment rewriting for SSA programs *)

val rewrite_mov_ssa_spec : spec -> spec
val rewrite_vpc_ssa_spec : spec -> spec



(** Slicing *)

(* Calculate variables related to a specified set of variables.*)
val eexp_vars_sat : VS.t -> eexp list -> VS.t
val ebexp_vars_sat : VS.t -> ebexp -> VS.t
val rbexp_vars_sat : VS.t -> rbexp -> VS.t
val bexp_vars_sat : VS.t -> bexp -> VS.t
val program_pre_vars_sat : VS.t -> (VS.t -> 'a -> VS.t) -> 'a -> program -> VS.t

(* Slice Boolean expressions according to a specified set of variables. *)
val slice_ebexp : VS.t -> ebexp -> ebexp
val slice_rbexp : VS.t -> rbexp -> rbexp
val slice_bexp : VS.t -> bexp -> bexp

(*
 * Slice a program according to a specified initial set of variables.
 * The set of variables will be increased during slicing.
 * The program should not contain any ecut or rcut.
 * Assertions will be removed by this function.
 * This function may remove some necessary assumptions.
 * For example, vars = {x, y}.
 * Consider the program:
 *   mull tmp x z w;
 *   assume z = ...;
 * When the function visit the assume instruction, it does not know that z is needed.
 * Consider the following instruction as another example:
 *   uadds carry z x y;
 * If the set of variable is {z}, then x and y will be added to the set of variables.
 * However, there may be assumptions about the value of carry, which x depends on.
 *)
val slice_program : VS.t -> program -> (VS.t * program)

val slice_spec : spec -> spec
val slice_espec : espec -> espec
val slice_rspec : rspec -> rspec

(*
 * Slice a program in SSA according to a fixed set of variables.
 * All assertions will be removed by this function.
 *)
val slice_program_ssa : VS.t -> program -> program
(*
 * Consider the following instruction:
 *   uadds carry_i x_j .. ..
 * If x_j is in the set of relevant variables, carry_i will also be added to the set
 * because there may be some assumption about the value of carry_i and
 * x_j depends whether carry_i is zero or one.
 *)
val slice_spec_ssa : spec -> spec
val slice_espec_ssa : espec -> espec
val slice_rspec_ssa : rspec -> rspec

val auto_cast_program : ?preserve:bool -> program -> program


(** Visitors *)

type 'a vaction =
  | SkipChildren
  | DoChildren
  | ChangeTo of 'a
  | ChangeDoChildrenPost of 'a * ('a -> 'a)

class type visitor =
object
  method vspec : spec -> spec vaction
  method vprogram : program -> program vaction
  method vinstr : instr -> instr vaction
  method vbexp : bexp -> bexp vaction
  method vebexp : ebexp -> ebexp vaction
  method vrbexp : rbexp -> rbexp vaction
  method veexp : eexp -> eexp vaction
  method vrexp : rexp -> rexp vaction
  method vatomic : atomic -> atomic vaction
  method vaconst : (typ * Z.t) -> (typ * Z.t) vaction
  method veconst : Z.t -> Z.t vaction
  method vrconst : (size * Z.t) -> (size * Z.t) vaction
  method vvar : var -> var vaction
end

class nop_visitor : visitor

val visit_var : visitor -> var -> var
val visit_aconst : visitor -> (typ * Z.t) -> (typ * Z.t)
val visit_econst : visitor -> Z.t -> Z.t
val visit_rconst : visitor -> (size * Z.t) -> (size * Z.t)
val visit_atomic : visitor -> atomic -> atomic
val visit_eexp : visitor -> eexp -> eexp
val visit_rexp : visitor -> rexp -> rexp
val visit_ebexp : visitor -> ebexp -> ebexp
val visit_rbexp : visitor -> rbexp -> rbexp
val visit_bexp : visitor -> bexp -> bexp
val visit_instr : visitor -> instr -> instr
val visit_program : visitor -> program -> program
val visit_spec : visitor -> spec -> spec
