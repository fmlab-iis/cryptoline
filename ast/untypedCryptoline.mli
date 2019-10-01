
open Big_int_Z

val two_big_int : big_int


(** General types *)

type width = int

type var = string

type const = big_int

val string_of_const : const -> string


(** Variable sets and maps *)

module VS : Set.S with type elt = var
module VM : Map.S with type key = var

val string_of_vs : VS.t -> string
val vs_disjoint : VS.t -> VS.t -> bool


(** Operators *)

type eunop =
  | BveNeg

type ebinop =
  | BveAdd
  | BveSub
  | BveMul

type runop =
  | BvrNegb
  | BvrNotb

type rbinop =
  | BvrAdd
  | BvrSub
  | BvrMul
  | BvrUmod
  | BvrSrem (* 2's complement signed remainder (sign follows dividend) *)
  | BvrSmod (* 2's complement signed remainder (sign follows divisor) *)
  | BvrAndb
  | BvrOrb
  | BvrXorb

type rcmpop =
  | BvrUlt
  | BvrUle
  | BvrUgt
  | BvrUge
  | BvrSlt
  | BvrSle
  | BvrSgt
  | BvrSge

val string_of_eunop : eunop -> string
val symbol_of_eunop : eunop -> string
val string_of_ebinop : ebinop -> string
val symbol_of_ebinop : ebinop -> string
val string_of_rcmpop : rcmpop -> string
val string_of_runop : runop -> string
val string_of_rbinop : rbinop -> string


(** Algebraic Expressions *)

type eexp =
  | BveVar of var
  | BveConst of const
  | BveUnop of eunop * eexp
  | BveBinop of ebinop * eexp * eexp

val bvevar : var -> eexp
val bveconst : const -> eexp
val bvconst : const -> eexp
val bveneg : eexp -> eexp
val bveadd : eexp -> eexp -> eexp
val bvesub : eexp -> eexp -> eexp
val bvemul : eexp -> eexp -> eexp
val bvesq : eexp -> eexp
val bveadds : eexp list -> eexp
val bvemuls : eexp list -> eexp
val bve2pow : int -> const

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
val string_of_eexp : eexp -> string
val vars_eexp : eexp -> VS.t
val subst_eexp : (var * eexp) list -> eexp -> eexp
val replace_eexp : (eexp * eexp) list -> eexp -> eexp

(* "eexp_has_sub e sub" returns true if e has the sub-expression sub. *)
val eexp_has_sub : eexp -> eexp -> bool


(** Range Expressions *)

type rexp =
  | BvrVar of var
  | BvrConst of width * const
  | BvrUnop of width * runop * rexp
  | BvrBinop of width * rbinop * rexp * rexp
  | BvrUext of width * rexp * int
  | BvrSext of width * rexp * int

val width_of_rexp : rexp -> int

val bvrvar : var -> rexp
val bvrconst : width -> const -> rexp
val bvrposz : width -> const -> rexp
val bvrnegb : width -> rexp -> rexp
val bvrnotb : width -> rexp -> rexp
val bvradd : width -> rexp -> rexp -> rexp
val bvrsub : width -> rexp -> rexp -> rexp
val bvrmul : width -> rexp -> rexp -> rexp
val bvrumod : width -> rexp -> rexp -> rexp
val bvrsrem : width -> rexp -> rexp -> rexp
val bvrsmod : width -> rexp -> rexp -> rexp
val bvrandb : width -> rexp -> rexp -> rexp
val bvrorb : width -> rexp -> rexp -> rexp
val bvrxorb : width -> rexp -> rexp -> rexp
val bvrsq : width -> rexp -> rexp
val bvradds : width -> rexp list -> rexp
val bvrmuls : width -> rexp list -> rexp

val string_of_rexp : rexp -> string
val vars_rexp : rexp -> VS.t
val subst_rexp : (var * rexp) list -> rexp -> rexp


(** Algebraic Predicates *)

type ebexp =
  | BveTrue
  | BveEq of eexp * eexp
  | BveEqMod of eexp * eexp * eexp
  | BveAnd of ebexp * ebexp

val bveand : ebexp -> ebexp -> ebexp
val bveands : ebexp list -> ebexp

val string_of_ebexp : ebexp -> string
val vars_ebexp : ebexp -> VS.t
val subst_ebexp : (var * eexp) list -> ebexp -> ebexp
val split_bveand : ebexp -> ebexp list
val simplify_ebexp : ebexp -> ebexp


(** Range Predicates *)

type rbexp =
  | BvrTrue
  | BvrEq of width * rexp * rexp
  | BvrCmp of width * rcmpop * rexp * rexp
  | BvrNeg of rbexp
  | BvrAnd of rbexp * rbexp
  | BvrOr of rbexp * rbexp

val bvrtrue : rbexp
val bvrfalse : rbexp
val bvreq : width -> rexp -> rexp -> rbexp
val bvrult : width -> rexp -> rexp -> rbexp
val bvrule : width -> rexp -> rexp -> rbexp
val bvrugt : width -> rexp -> rexp -> rbexp
val bvruge : width -> rexp -> rexp -> rbexp
val bvrslt : width -> rexp -> rexp -> rbexp
val bvrsle : width -> rexp -> rexp -> rbexp
val bvrsgt : width -> rexp -> rexp -> rbexp
val bvrsge : width -> rexp -> rexp -> rbexp
val bvreqmod : width -> rexp -> rexp -> rexp -> rbexp

val bvrneg : rbexp -> rbexp
val bvrand : rbexp -> rbexp -> rbexp
val bvror : rbexp -> rbexp -> rbexp
val bvrands : rbexp list -> rbexp
val bvrors : rbexp list -> rbexp

val string_of_rbexp : rbexp -> string
val vars_rbexp : rbexp -> VS.t
val subst_rbexp : (var * rexp) list -> rbexp -> rbexp
val split_bvrand : rbexp -> rbexp list
val split_bvror : rbexp -> rbexp list


(** Predicates *)

type bexp = ebexp * rbexp

val bvTrue : bexp
val eqn_bexp : bexp -> ebexp
val rng_bexp : bexp -> rbexp
val bvand : bexp -> bexp -> bexp
val bvands : bexp list -> bexp
val bvands2 : ebexp list -> rbexp list -> bexp

val string_of_bexp : bexp -> string
val vars_bexp : bexp -> VS.t
val subst_bexp : (var * eexp) list -> (var * rexp) list -> bexp -> bexp


(** Instructions *)

type prove_with_spec =
  Precondition
| AllCuts
| AllAssumes
| AllGhosts

type atomic =
  | BvVar of var
  | BvConst of const

type instr =
  | BvAssign of var * atomic
  | BvShl of var * atomic * const
  | BvConcatShl of var * var * atomic * atomic * const
  | BvSet of var
  | BvClear of var
  | BvNondet of var
  | BvCmove of var * var * atomic * atomic
  | BvSkip
  | BvNotb of var * atomic (* One's Complement Negation *)
  (* Unsigned instructions *)
  | BvUadd of var * atomic * atomic
  | BvUadds of var * var * atomic * atomic
  | BvUaddr of var * var * atomic * atomic
  | BvUadc of var * atomic * atomic * var
  | BvUadcs of var * var * atomic * atomic * var
  | BvUadcr of var * var * atomic * atomic * var
  | BvUsub of var * atomic * atomic
  | BvUsubs of var * var * atomic * atomic
  | BvUsubr of var * var * atomic * atomic
  | BvUsbb of var * atomic * atomic * var
  | BvUsbbs of var * var * atomic * atomic * var
  | BvUsbbr of var * var * atomic * atomic * var
  | BvUmul of var * atomic * atomic
  | BvUmuls of var * var * atomic * atomic
  | BvUmulr of var * var * atomic * atomic
  | BvUmull of var * var * atomic * atomic
  | BvUsplit of var * var * atomic * const
  | BvSsplit of var * var * atomic * const
  (* Signed instructions *)
  | BvSadd of var * atomic * atomic
  | BvSadds of var * var * atomic * atomic
  | BvSaddr of var * var * atomic * atomic
  | BvSadc of var * atomic * atomic * var
  | BvSadcs of var * var * atomic * atomic * var
  | BvSadcr of var * var * atomic * atomic * var
  | BvSsub of var * atomic * atomic
  | BvSsubs of var * var * atomic * atomic
  | BvSsubr of var * var * atomic * atomic
  | BvSsbb of var * atomic * atomic * var
  | BvSsbbs of var * var * atomic * atomic * var
  | BvSsbbr of var * var * atomic * atomic * var
  | BvSmul of var * atomic * atomic
  | BvSmuls of var * var * atomic * atomic
  | BvSmulr of var * var * atomic * atomic
  | BvSmull of var * var * atomic * atomic
  (* Instructions that cannot be translated to polynomials *)
  | BvAndb of var * atomic * atomic
  | BvOrb of var * atomic * atomic
  (* Specifications *)
  | BvAssert of bexp
  | BvAssume of bexp
  | BveCut of ebexp * prove_with_spec list
  | BvrCut of rbexp * prove_with_spec list
  | BvGhost of VS.t * bexp

type program = instr list

val string_of_atomic : atomic -> string
val string_of_instr : instr -> string
val string_of_program : program -> string

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
val new_var : ?prefix:string -> VS.t -> var
val subst_lval : (var * atomic) list -> var -> var
val subst_atomic : (var * atomic) list -> atomic -> atomic
val subst_instr : (var * atomic) list -> instr -> instr
val subst_program : (var * atomic) list -> program -> program
val pats_to_epats : (var * atomic) list -> (var * eexp) list
val pats_to_rpats : (var * atomic) list -> (var * rexp) list


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

val string_of_spec : spec -> string
val string_of_espec : espec -> string
val string_of_rspec : rspec -> string


(** Well-formedness *)

type ill_formed = IllPrecondition of bexp | IllInstruction of instr | IllPostcondition of bexp
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

val ssa_var : int VM.t -> var -> var
val svar : var -> var
val sidx : var -> int
module SSAVS : Set.S with type elt = var
module SSAVM : Map.S with type key = var
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
 * Note that this function removes all bvrCut instructions.
 *)
val cut_espec : espec -> espec list
(*
 * Cut range specifications in SSA.
 * Note that this function removes all bveCut instructions.
 *)
val cut_rspec : rspec -> rspec list

(** Assignment rewriting for SSA programs *)

val rewrite_assignments_ssa_spec : spec -> spec


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
 * The program should not contain any BveCut or BvrCut.
 * Assertions will be removed by this function.
 * This function may remove some necessary assumptions.
 * For example, vars = {x, y}.
 * Consider the program:
 *   bvMulf tmp x (bvVar z) (bvVar w);
 *   bvAssume (bvVar z) = ...;
 * When the function visit the bvAssume instruction, it does not know that z is needed.
 * Consider the following instruction as another example:
 *   bvUaddC carry z (bvVar x) (bvVar y);
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
 *   bvUaddC carry_i x_j .. ..
 * If x_j is in the set of relevant variables, carry_i will also be added to the set
 * because there may be some assumption about the value of carry_i and
 * x_j depends whether carry_i is zero or one.
 *)
val slice_spec_ssa : spec -> spec
val slice_espec_ssa : espec -> espec
val slice_rspec_ssa : rspec -> rspec

val program_to_typed : ?typing:(string, Cryptoline.typ) Hashtbl.t -> Cryptoline.var VM.t -> program -> Cryptoline.var VM.t * Cryptoline.program
val spec_to_typed : ?typing:(string, Cryptoline.typ) Hashtbl.t -> VS.t * spec -> Cryptoline.VS.t * Cryptoline.spec
val espec_to_typed : ?typing:(string, Cryptoline.typ) Hashtbl.t -> VS.t * espec -> Cryptoline.VS.t * Cryptoline.espec
val rspec_to_typed : ?typing:(string, Cryptoline.typ) Hashtbl.t -> VS.t * rspec -> Cryptoline.VS.t * Cryptoline.rspec
