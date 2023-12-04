open Ast.Cryptoline

type 'a manager_t
(** abstract interpretation manager *)

type 'a abs_t
(** abstract values *)

val create_manager : VS.t -> 'a manager_t
(** create a new abstract interpretation manager *)

val top : 'a manager_t -> 'a abs_t
(** the top abstract value *)

val bottom : 'a manager_t -> 'a abs_t
(** the bottom abstract value *)

val is_top : 'a manager_t -> 'a abs_t -> bool
(** check if an abstract value is top *)

val is_bottom : 'a manager_t -> 'a abs_t -> bool
(** check if an abstract value is bottom *)

val meet : 'a manager_t -> 'a abs_t -> 'a abs_t -> 'a abs_t
(** return the meet of two abstract values *)

val abs_of_rbexp : 'a manager_t -> ?abs:'a abs_t -> rbexp -> 'a abs_t option
(** return an abstract value containing all scalar numbers that satisfy a range predicate *)

val abs_of_vars : 'a manager_t -> VS.t -> 'a abs_t
(**
 * [abs_of_vars mgr vs] returns an abstract value for a set of variables [vs].
 * For each variable [v], the value of [v] in the abstract value is bounded by
 * the range of [v]'s type.
 *)

val abs_set_nondet_var : 'a manager_t -> 'a abs_t -> var -> 'a abs_t
(**
 * [abs_set_nondet_var mgr abs v] makes the value of a variable [v] in an
 * abstract value [abs] nondeterministic. The value of [v] in the returned
 * abstract value is bounded by the range of [v]'s type.
 *)

val interp_instr : ?safe:bool -> ?var_bound:bool ->
                   'a manager_t -> 'a abs_t -> instr -> 'a abs_t
(**
 * [interp_instr ~safe ~var_bound mgr abs i] computes the abstract
 * interpretation of instruction [i] over the abstract value [abs]. The flag
 * [safe] indicates whether the instruction is safe. The returned value is more
 * precise if [safe] is true but this depends on the safety of the instruction.
 * If the flag [var_bound] is true, the resulting abstract value will be
 * intersected with the range of the types of the l-values of [i].
 *)

val interp_prog : ?safe:bool -> ?var_bound:bool ->
                  'a manager_t -> 'a abs_t -> program -> 'a abs_t
(** compute the abstract interpretation of a program *)

val sat_rbexp : 'a manager_t -> 'a abs_t -> rbexp -> bool
(**
 * [sat_rbexp mgr abs r] returns [true] if the abstract value [abs] satisfies
 * the range predicate [r].
 *)

val instr_safe : 'a manager_t -> 'a abs_t -> instr -> bool
(**
 * [instr_safe mgr abs i] returns [true] if the instruction [i] is safe at the
 * abstract value [abs].
 *)

val string_of_abs : 'a abs_t -> string
(** return the string representation of an abstract value *)

val zinterval_of_var : 'a manager_t -> 'a abs_t -> Ast.Cryptoline.var -> Z.t * Z.t
(** return the interval of a variable in an abstract value *)

val rbexp_apply_abs_interp : rbexp -> bool
(** [rbexp_apply_abs_interp e] is [true] if abstract interpretation may be good
    in verifying the range predicate [e] *)
