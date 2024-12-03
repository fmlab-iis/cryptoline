
open Cryptoline


(** {1 Multi-track Specifications} *)

type tagged_ebexp = (ebexp list) SM.t
(** tagged algebraic predicates *)

type tagged_rbexp = (rbexp list) SM.t
(** tagged range predicates *)

type tagged_bexp = tagged_ebexp * tagged_rbexp
(** a tagged predicate *)

type tagged_ebexp_prove_with = ebexp_prove_with list SM.t
(** Tagged algebraic predicates associated with prove-with clauses *)

type tagged_rbexp_prove_with = rbexp_prove_with list SM.t
(** Tagged range predicates associated with prove-with clauses *)

type tagged_bexp_prove_with = tagged_ebexp_prove_with * tagged_rbexp_prove_with
(** Tagged predicates associated with prove-with clauses *)

type tagged_instr =
  | TImov of var * atom                                      (** Assignment *)
  | TIshl of var * atom * atom                               (** Left shift *)
  | TIshls of var * var * atom * Z.t                         (** Left shift *)
  | TIshr of var * atom * atom                               (** Logical right shift *)
  | TIshrs of var * var * atom * Z.t                         (** Logical right shift *)
  | TIsar of var * atom * atom                               (** Arithmetic right shift *)
  | TIsars of var * var * atom * Z.t                         (** Arithmetic right shift *)
  | TIcshl of var * var * atom * atom * Z.t                  (** Concatenated left shift *)
  | TIcshls of var * var * var * atom * atom * Z.t           (** Concatenated left shift *)
  | TIcshr of var * var * atom * atom * Z.t                  (** Concatenated right shift *)
  | TIcshrs of var * var * var * atom * atom * Z.t           (** Concatenated right shift *)
  | TIrol of var * atom * atom                               (** Left rotation *)
  | TIror of var * atom * atom                               (** Right rotation *)
  | TInondet of var                                          (** Nondeterministic assignment *)
  | TIcmov of var * atom * atom * atom                       (** Conditional assignment *)
  | TInop                                                    (** No-op *)
  | TInot of var * atom                                      (** Bit-wise NOT *)
  | TIadd of var * atom * atom                               (** Add *)
  | TIadds of var * var * atom * atom                        (** Add and set carry *)
  | TIadc of var * atom * atom * atom                        (** Add with carry. *)
  | TIadcs of var * var * atom * atom * atom                 (** Add with carry and set carry *)
  | TIsub of var * atom * atom                               (** Subtract *)
  | TIsubc of var * var * atom * atom                        (** Subtract and set carry *)
  | TIsubb of var * var * atom * atom                        (** Subtract and set borrow *)
  | TIsbc of var * atom * atom * atom                        (** Subtract with carry *)
  | TIsbcs of var * var * atom * atom * atom                 (** Subtract with carry and set carry *)
  | TIsbb of var * atom * atom * atom                        (** Subtract with borrow *)
  | TIsbbs of var * var * atom * atom * atom                 (** Subtract with borrow and set borrow *)
  | TImul of var * atom * atom                               (** Half-multiplication *)
  | TImuls of var * var * atom * atom                        (** Half-multiply and set carry. *)
  | TImull of var * var * atom * atom                        (** Full-multiplication *)
  | TImulj of var * atom * atom                              (** Full-multiplication *)
  | TIsplit of var * var * atom * Z.t                        (** Split and extend *)
  | TIspl of var * var * atom * Z.t                          (** Split without extension *)
  (* Comparison *)
  | TIseteq of var * atom * atom                             (** Equality *)
  | TIsetne of var * atom * atom                             (** Inequality *)
  (* Instructions that cannot be translated to polynomials *)
  | TIand of var * atom * atom                               (** Bit-wise AND *)
  | TIor of var * atom * atom                                (** Bit-wise OR *)
  | TIxor of var * atom * atom                               (** Bit-wise XOR *)
  (* Type conversions *)
  | TIcast of var option * var * atom                        (** Casting *)
  | TIvpc of var * atom                                      (** Value-preserving casting *)
  | TIjoin of var * atom * atom                              (** Join *)
  (* Specifications *)
  | TIassert of tagged_bexp_prove_with                       (** Assertion *)
  | TIassume of tagged_bexp                                  (** Assumption *)
  | TIcut of tagged_bexp_prove_with                          (** Cuts *)
  | TIghost of VS.t * tagged_bexp                            (** Ghost variables *) (* *)
(** Tagged instruction *)

type tagged_program = tagged_instr list
(** Tagged program *)

type lined_tagged_program = (int * tagged_instr) list
(** Tagged program with line numbers *)

type tagged_spec =
  { tspre : tagged_bexp;
    tsprog : tagged_program;
    tspost : tagged_bexp_prove_with }
(** Tagged specification *)

type tagged_espec =
  { tespre : tagged_ebexp;
    tesprog : tagged_program;
    tespost : tagged_ebexp_prove_with }
(** Tagged algebraic specification *)

type tagged_rspec =
  { trspre : tagged_rbexp;
    trsprog : tagged_program;
    trspost : tagged_rbexp_prove_with }
(** Tagged range specification *)


val tagged_ebexp_empty : unit -> tagged_ebexp
(** An empty tagged algebraic predicate *)

val tagged_rbexp_empty : unit -> tagged_rbexp
(** An empty tagged range predicate *)

val tagged_bexp_empty : unit -> tagged_bexp
(** An empty tagged predicate *)

val tagged_ebexp_prove_with_empty : unit -> tagged_ebexp_prove_with
(** An empty tagged algebraic predicate with prove-with clauses *)

val tagged_rbexp_prove_with_empty : unit -> tagged_rbexp_prove_with
(** An empty tagged range predicate with prove-with clauses *)

val tagged_bexp_prove_with_empty : unit -> tagged_bexp_prove_with
(** An empty tagged predicate with prove-with clauses *)


val tagged_ebexp_singleton : string -> ebexp -> tagged_ebexp
(** Return a singleton tagged algebraic predicate *)

val tagged_rbexp_singleton : string -> rbexp -> tagged_rbexp
(** Return a singleton tagged range predicate *)

val tagged_bexp_singleton : string -> bexp -> tagged_bexp
(** Return a singleton tagged predicate *)

val tagged_ebexp_prove_with_singleton : string -> ebexp_prove_with -> tagged_ebexp_prove_with
(** Return a singleton tagged algebraic predicate with prove-with clauses *)

val tagged_rbexp_prove_with_singleton : string -> rbexp_prove_with -> tagged_rbexp_prove_with
(** Return a singleton tagged range predicate with prove-with clauses *)

val tagged_bexp_prove_with_singleton : string -> bexp_prove_with -> tagged_bexp_prove_with
(** Return a singleton tagged predicate with prove-with clauses *)


val tagged_ebexp_init : string -> ebexp list -> tagged_ebexp
(** Return a singleton tagged algebraic predicate *)

val tagged_rbexp_init : string -> rbexp list -> tagged_rbexp
(** Return a singleton tagged range predicate *)

val tagged_ebexp_prove_with_init : string -> ebexp_prove_with list -> tagged_ebexp_prove_with
(** Return a singleton tagged algebraic predicate with prove-with clauses *)

val tagged_rbexp_prove_with_init : string -> rbexp_prove_with list -> tagged_rbexp_prove_with
(** Return a singleton tagged range predicate with prove-with clauses *)


val tagged_ebexp_inits : string list -> ebexp list -> tagged_ebexp
(** Initialize tagged algebraic predicate *)

val tagged_rbexp_inits : string list -> rbexp list -> tagged_rbexp
(** Initialize tagged range predicate *)

val tagged_ebexp_prove_with_inits : string list -> ebexp_prove_with list -> tagged_ebexp_prove_with
(** Initialize tagged algebraic predicate with prove-with clauses *)

val tagged_rbexp_prove_with_inits : string list -> rbexp_prove_with list -> tagged_rbexp_prove_with
(** Initialize tagged range predicate with prove-with clauses *)


val tagged_ebexp_add : string -> ebexp -> tagged_ebexp -> tagged_ebexp
(** Add a tagged algebraic predicate *)

val tagged_rbexp_add : string -> rbexp -> tagged_rbexp -> tagged_rbexp
(** Add a tagged range predicate *)

val tagged_ebexp_prove_with_add : string -> ebexp_prove_with -> tagged_ebexp_prove_with -> tagged_ebexp_prove_with
(** Add a tagged algebraic predicate with prove with clauses *)

val tagged_rbexp_prove_with_add : string -> rbexp_prove_with -> tagged_rbexp_prove_with -> tagged_rbexp_prove_with
(** Add a tagged range predicate with prove with clauses *)


val tagged_ebexp_adds : string -> ebexp list -> tagged_ebexp -> tagged_ebexp
(** Add tagged algebraic predicates *)

val tagged_rbexp_adds : string -> rbexp list -> tagged_rbexp -> tagged_rbexp
(** Add tagged range predicates *)

val tagged_ebexp_prove_with_adds : string -> ebexp_prove_with list -> tagged_ebexp_prove_with -> tagged_ebexp_prove_with
(** Add tagged algebraic predicates with prove with clauses *)

val tagged_rbexp_prove_with_adds : string -> rbexp_prove_with list -> tagged_rbexp_prove_with -> tagged_rbexp_prove_with
(** Add tagged range predicates with prove with clauses *)


val tagged_ebexp_union : tagged_ebexp -> tagged_ebexp -> tagged_ebexp
(** Union two tagged algebraic predicates *)

val tagged_rbexp_union : tagged_rbexp -> tagged_rbexp -> tagged_rbexp
(** Union two tagged range predicates *)

val tagged_bexp_union : tagged_bexp -> tagged_bexp -> tagged_bexp
(** Union two tagged predicates *)

val tagged_ebexp_prove_with_union : tagged_ebexp_prove_with -> tagged_ebexp_prove_with -> tagged_ebexp_prove_with
(** Union two tagged algebraic predicates with prove-with clauses *)

val tagged_rbexp_prove_with_union : tagged_rbexp_prove_with -> tagged_rbexp_prove_with -> tagged_rbexp_prove_with
(** Union two tagged range predicates with prove-with clauses *)

val tagged_bexp_prove_with_union : tagged_bexp_prove_with -> tagged_bexp_prove_with -> tagged_bexp_prove_with
(** Union two tagged predicates with prove-with clauses *)


val tagged_ebexp_find : string -> tagged_ebexp -> ebexp list
(** Find algebraic predicates associated with a specified tag (including the {all_track}) *)

val tagged_rbexp_find : string -> tagged_rbexp -> rbexp list
(** Find range predicates associated with a specified tag (including the {all_track}) *)

val tagged_ebexp_prove_with_find : string -> tagged_ebexp_prove_with -> ebexp_prove_with list
(** Find algebraic predicates (with prove with clauses) associated with a specified tag (including the {all_track}) *)

val tagged_rbexp_prove_with_find : string -> tagged_rbexp_prove_with -> rbexp_prove_with list
(** Find range predicates (with prove with clauses) associated with a specified tag (including the {all_track}) *)


val tagged_ebexp_tags : tagged_ebexp -> SS.t
(** Return all tags (excluding the {all_track}) *)

val tagged_rbexp_tags : tagged_rbexp -> SS.t
(** Return all tags (excluding the {all_track}) *)

val tagged_bexp_tags : tagged_bexp -> SS.t
(** Return all tags (excluding the {all_track}) *)

val tagged_ebexp_prove_with_tags : tagged_ebexp_prove_with -> SS.t
(** Return all tags (excluding the {all_track}) *)

val tagged_rbexp_prove_with_tags : tagged_rbexp_prove_with -> SS.t
(** Return all tags (excluding the {all_track}) *)

val tagged_bexp_prove_with_tags : tagged_bexp_prove_with -> SS.t
(** Return all tags (excluding the {all_track}) *)

val tagged_instr_tags : tagged_instr -> SS.t
(** Return all tags (excluding the {all_track}) *)

val tagged_program_tags : tagged_program -> SS.t
(** Return all tags (excluding the {all_track}) *)

val tagged_spec_tags : tagged_spec -> SS.t
(** Return all tags (excluding the {all_track}) *)

val tagged_espec_tags : tagged_espec -> SS.t
(** Return all tags (excluding the {all_track}) *)

val tagged_rspec_tags : tagged_rspec -> SS.t
(** Return all tags (excluding the {all_track}) *)


val tagged_ebexp_untag : tagged_ebexp -> ebexp
(** Return an untagged version of tagged algebraic predicates *)

val tagged_rbexp_untag : tagged_rbexp -> rbexp
(** Return an untagged version of tagged range predicates *)

val tagged_bexp_untag : tagged_bexp -> bexp
(** Return an untagged version of tagged predicates *)

val tagged_ebexp_prove_with_untag : tagged_ebexp_prove_with -> ebexp_prove_with
(** Return an untagged version of tagged algebraic predicates with prove-with clauses *)

val tagged_rbexp_prove_with_untag : tagged_rbexp_prove_with -> rbexp_prove_with
(** Return an untagged version of tagged range predicates with prove-with clauses *)

val tagged_bexp_prove_with_untag : tagged_bexp_prove_with -> bexp_prove_with
(** Return an untagged version of tagged predicates with prove-with clauses *)

val tagged_instr_untag : tagged_instr -> instr
(** Return an untagged version of a tagged instruction *)

val tagged_program_untag : tagged_program -> program
(** Return an untagged version of a tagged program *)

val lined_tagged_program_untag : lined_tagged_program -> lined_program
(** Return an untagged version of a lined tagged program *)

val tagged_spec_untag : tagged_spec -> spec
(** Return an untagged version of a tagged specification *)

val tagged_espec_untag : tagged_espec -> espec
(** Return an untagged version of a tagged algebraic specification *)

val tagged_rspec_untag : tagged_rspec -> rspec
(** Return an untagged version of a tagged range specification *)


val tagged_ebexp_prove_with_of_tagged_ebexp : tagged_ebexp -> tagged_ebexp_prove_with
(** Insert empty prove-with clauses *)

val tagged_rbexp_prove_with_of_tagged_rbexp : tagged_rbexp -> tagged_rbexp_prove_with
(** Insert empty prove-with clauses *)

val tagged_bexp_prove_with_of_tagged_bexp : tagged_bexp -> tagged_bexp_prove_with
(** Insert empty prove-with clauses *)

val tagged_ebexp_of_tagged_ebexp_prove_with : tagged_ebexp_prove_with -> tagged_ebexp
(** Remove prove-with clauses *)

val tagged_rbexp_of_tagged_rbexp_prove_with : tagged_rbexp_prove_with -> tagged_rbexp
(** Remove prove-with clauses *)

val tagged_bexp_of_tagged_bexp_prove_with : tagged_bexp_prove_with -> tagged_bexp
(** Remove prove-with clauses *)

val tagged_espec_of_tagged_spec : tagged_spec -> tagged_espec
(** Return the algebraic part of a tagged specification *)

val tagged_rspec_of_tagged_spec : tagged_spec -> tagged_rspec
(** Return the range part of a tagged specification *)


val bexp_of_tag : string -> tagged_bexp -> bexp
(** Find predicates associated with a specified tag *)

val bexp_prove_with_of_tag : string -> tagged_bexp_prove_with -> bexp_prove_with
(** Find predicates (with prove with clauses) associated with a specified tag *)

val instr_of_tag : string -> tagged_instr -> instr
(** Return instruction for a specified tag *)

val program_of_tag : string -> tagged_program -> program
(** Return program for a specified tag *)

val spec_of_tag : string -> tagged_spec -> spec
(** Return specification for a specified tag *)

val espec_of_tag : string -> tagged_espec -> espec
(** Return algebraic specification for a specified tag *)

val rspec_of_tag : string -> tagged_rspec -> rspec
(** Return range specification for a specified tag *)


val string_of_tagged_ebexp : ?typ:bool -> tagged_ebexp -> string
(** Return the string representation of a tagged algebraic predicate *)

val string_of_tagged_rbexp : ?typ:bool -> tagged_rbexp -> string
(** Return the string representation of a tagged range predicate *)

val string_of_tagged_bexp : ?typ:bool -> tagged_bexp -> string
(** Return the string representation of a tagged predicate *)

val string_of_tagged_ebexp_prove_with : ?typ:bool -> tagged_ebexp_prove_with -> string
(** Return the string representation of a tagged algebraic predicate with prove-with clauses *)

val string_of_tagged_rbexp_prove_with : ?typ:bool -> tagged_rbexp_prove_with -> string
(** Return the string representation of a tagged range predicate with prove-with clauses *)

val string_of_tagged_bexp_prove_with : ?typ:bool -> tagged_bexp_prove_with -> string
(** Return the string representation of a tagged predicate with prove-with clauses *)

val string_of_tagged_instr : ?semicolon:bool -> ?typ:bool -> tagged_instr -> string
(** Return the string representation of a tagged instruction *)

val string_of_tagged_program : ?insert_nop:bool -> ?typ:bool -> tagged_program -> string
(** Return the string representation of a tagged program *)

val string_of_tagged_spec : ?typ:bool -> tagged_spec -> string
(** Return the string representation of a tagged specification *)

val string_of_tagged_espec : ?typ:bool -> tagged_espec -> string
(** Return the string representation of a tagged algebraic specification *)

val string_of_tagged_rspec : ?typ:bool -> tagged_rspec -> string
(** Return the string representation of a tagged range specification *)


(** {1 Visitors for Multi-track Specifications} *)

class type tvisitor =
object
  method tvspec : tagged_spec -> tagged_spec vaction
  (** visit a specification *)

  method tvprogram : tagged_program -> tagged_program vaction
  (** visit a program *)

  method tvlined_program : lined_tagged_program -> lined_tagged_program vaction
  (** visit a program annotated with line numbers *)

  method tvinstr : tagged_instr -> tagged_instr vaction
  (** visit an instruction *)

  method tvbexp : bexp -> bexp vaction
  (** visit a predicate *)

  method tvebexp : ebexp -> ebexp vaction
  (** visit an algebraic predicate *)

  method tvrbexp : rbexp -> rbexp vaction
  (** visit a range predicate *)

  method tveexp : eexp -> eexp vaction
  (** visit an algebraic expression *)

  method tvrexp : rexp -> rexp vaction
  (** visit a range expression *)

  method tvatom : atom -> atom vaction
  (** visit an atom *)

  method tvaconst : (typ * Z.t) -> (typ * Z.t) vaction
  (** visit a constant in an atom *)

  method tveconst : Z.t -> Z.t vaction
  (** visit a constant in an algebraic expression *)

  method tvrconst : (size * Z.t) -> (size * Z.t) vaction
  (** visit a constant in a range expression *)

  method tvvar : var -> var vaction
  (** visit a read of a variable (including program variables and ghost variables) *)

  method tvlval : var -> var vaction
  (** visit a program lval *)

  method tvgvar : var -> var vaction
  (** visit a declaration of a ghost variable *)
end
(** tagged visitors *)

class tnop_visitor : tvisitor
(** a visitor that does nothing *)

val tvisit_var : tvisitor -> var -> var
(** Visit a read of a variable by a visitor. *)

val tvisit_lval : tvisitor -> var -> var
(** Visit a program lval by a visitor. *)

val tvisit_gvar : tvisitor -> var -> var
(** Visit a declaration of a ghost variable by a visitor. *)

val tvisit_aconst : tvisitor -> (typ * Z.t) -> (typ * Z.t)
(** Visit a constant in an atom by a visitor. *)

val tvisit_econst : tvisitor -> Z.t -> Z.t
(** Visit a constant in an algebraic expression by a visitor. *)

val tvisit_rconst : tvisitor -> (size * Z.t) -> (size * Z.t)
(** Visit a constant in a range expression by a visitor. *)

val tvisit_atom : tvisitor -> atom -> atom
(** Visit an atom by a visitor. *)

val tvisit_eexp : tvisitor -> eexp -> eexp
(** Visit an algebraic expression by a visitor. *)

val tvisit_rexp : tvisitor -> rexp -> rexp
(** Visit a range expression by a visitor. *)

val tvisit_ebexp : tvisitor -> ebexp -> ebexp
(** Visit an algebraic predicate by a visitor. *)

val tvisit_rbexp : tvisitor -> rbexp -> rbexp
(** Visit a range predicate by a visitor. *)

val tvisit_bexp : tvisitor -> bexp -> bexp
(** Visit a predicate by a visitor. *)

val tvisit_tagged_ebexp : tvisitor -> tagged_ebexp -> tagged_ebexp
(** Visit an algebraic predicate by a visitor. *)

val tvisit_tagged_rbexp : tvisitor -> tagged_rbexp -> tagged_rbexp
(** Visit a range predicate by a visitor. *)

val tvisit_tagged_bexp : tvisitor -> tagged_bexp -> tagged_bexp
(** Visit a predicate by a visitor. *)

val tvisit_ebexp_prove_with : tvisitor -> ebexp_prove_with -> ebexp_prove_with
(** Visit an algebraic predicate associated with prove-with clauses by a visitor. *)

val tvisit_rbexp_prove_with : tvisitor -> rbexp_prove_with -> rbexp_prove_with
(** Visit a range predicate associated with prove-with clauses by a visitor. *)

val tvisit_bexp_prove_with : tvisitor -> bexp_prove_with -> bexp_prove_with
(** Visit a predicate associated with prove-with clauses by a visitor. *)

val tvisit_tagged_ebexp_prove_with : tvisitor -> tagged_ebexp_prove_with -> tagged_ebexp_prove_with
(** Visit an algebraic predicate associated with prove-with clauses by a visitor. *)

val tvisit_tagged_rbexp_prove_with : tvisitor -> tagged_rbexp_prove_with -> tagged_rbexp_prove_with
(** Visit a range predicate associated with prove-with clauses by a visitor. *)

val tvisit_tagged_bexp_prove_with : tvisitor -> tagged_bexp_prove_with -> tagged_bexp_prove_with
(** Visit a predicate associated with prove-with clauses by a visitor. *)

val tvisit_instr : ?reverse:bool -> tvisitor -> tagged_instr -> tagged_instr
(**
 * Visit an instruction by a visitor. The visiting order conforms to the
 * execution of an instruction, i.e., r-values first and then l-values.
 * The visiting order is reversed if the flag reverse is true.
 *)

val tvisit_program : ?reverse:bool -> tvisitor -> tagged_program -> tagged_program
(** Visit a program by a visitor. *)

val tvisit_lined_program : ?reverse:bool -> tvisitor -> lined_tagged_program -> lined_tagged_program
(** Visit a program annotated with line numbers by a visitor. *)

val tvisit_spec : tvisitor -> tagged_spec -> tagged_spec
(** Visit a specification by a visitor. *)


(** {1 Substitution for Multi-track Programs} *)

val subst_tagged_ebexp : eexp VM.t -> tagged_ebexp -> tagged_ebexp
(** Apply substitution to tagged algebraic predicates *)

val subst_tagged_rbexp : rexp VM.t -> tagged_rbexp -> tagged_rbexp
(** Apply substitution to tagged range predicates *)

val subst_tagged_bexp : eexp VM.t -> rexp VM.t -> tagged_bexp -> tagged_bexp
(** Apply substitution to tagged predicates *)

val subst_tagged_ebexp_prove_with : eexp VM.t -> tagged_ebexp_prove_with -> tagged_ebexp_prove_with
(** Apply substitution to tagged algebraic predicates with prove-with clauses *)

val subst_tagged_rbexp_prove_with : rexp VM.t -> tagged_rbexp_prove_with -> tagged_rbexp_prove_with
(** Apply substitution to tagged range predicates with prove-with clauses *)

val subst_tagged_bexp_prove_with : eexp VM.t -> rexp VM.t -> tagged_bexp_prove_with -> tagged_bexp_prove_with
(** Apply substitution to tagged predicates with prove-with clauses *)

val subst_tagged_instr : atom VM.t -> eexp VM.t -> rexp VM.t -> tagged_instr -> tagged_instr
(** Apply substitution to tagged instructions *)

val subst_tagged_program : atom VM.t -> eexp VM.t -> rexp VM.t -> tagged_program -> tagged_program
(** Apply substitution to tagged programs *)

val subst_lined_tagged_program : atom VM.t -> eexp VM.t -> rexp VM.t -> lined_tagged_program -> lined_tagged_program
(** Apply substitution to lined tagged programs *)


(** {1 SSA for Multi-track Specifications} *)

val ssa_tagged_ebexp : int VM.t -> tagged_ebexp -> tagged_ebexp
(** Transform tagged algebraic predicates to SSA *)

val ssa_tagged_rbexp : int VM.t -> tagged_rbexp -> tagged_rbexp
(** Transform tagged range predicates to SSA *)

val ssa_tagged_bexp : int VM.t -> tagged_bexp -> tagged_bexp
(** Transform tagged predicates to SSA *)

val ssa_tagged_ebexp_prove_with : int VM.t -> tagged_ebexp_prove_with -> tagged_ebexp_prove_with
(** Transform tagged algebraic predicates with prove-with clauses to SSA *)

val ssa_tagged_rbexp_prove_with : int VM.t -> tagged_rbexp_prove_with -> tagged_rbexp_prove_with
(** Transform tagged range predicates with prove-with clauses to SSA *)

val ssa_tagged_bexp_prove_with : int VM.t -> tagged_bexp_prove_with -> tagged_bexp_prove_with
(** Transform tagged predicates with prove-with clauses to SSA *)

val ssa_tagged_instr : int VM.t -> tagged_instr -> int VM.t * tagged_instr
(** Transform tagged instructions to SSA *)

val ssa_tagged_program : int VM.t -> tagged_program -> int VM.t * tagged_program
(** Transform tagged programs to SSA *)

val ssa_tagged_spec_full : tagged_spec -> int VM.t * tagged_spec
(** Transform tagged specifications to SSA *)

val ssa_tagged_spec : tagged_spec -> tagged_spec
(** Transform tagged specifications to SSA *)


(** {1 Utility Functions for Multi-track Specifications} *)

val remove_cut_tagged_spec : tagged_spec -> tagged_spec
(** Remove all cuts in a specification. *)

val remove_ecut_tagged_spec : tagged_spec -> tagged_spec
(** Remove all algebraic cuts in a specification. *)

val remove_rcut_tagged_spec : tagged_spec -> tagged_spec
(** Remove all range cuts in a specification. *)

val remove_assert_tagged_spec : tagged_spec -> tagged_spec
(** Remove all assertions in a specification. *)

val remove_algebra_tagged_spec : tagged_spec -> tagged_spec
(** Remove all algebraic predicates from assertions, cuts, and postconditions in a specification. *)

val remove_range_tagged_spec : tagged_spec -> tagged_spec
(** Remove all range predicates from assertions, cuts, and postconditions in a specification. *)

val move_tagged_asserts : tagged_spec -> tagged_spec
(**
   Move assertions in a specification to its postcondition. The input
   specification must be in SSA. If the specification contains assume
   instructions, the move of assertions may be unsound.
 *)
