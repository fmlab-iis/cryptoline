open Ast.Cryptoline

type 'a manager_t

type 'a abs_t

val create_manager : VS.t -> 'a manager_t

val meet : 'a manager_t -> 'a abs_t -> 'a abs_t -> 'a abs_t

val dom_of_rbexp : 'a manager_t -> rbexp -> 'a abs_t option

val dom_of_vars : 'a manager_t -> VS.t -> 'a abs_t

val dom_set_nondet_var : 'a manager_t -> 'a abs_t -> var -> 'a abs_t

val interp_instr : ?var_bound:bool ->
                   'a manager_t -> 'a abs_t -> instr -> 'a abs_t

val interp_prog : 'a manager_t -> 'a abs_t -> program -> 'a abs_t

val sat_rbexp : 'a manager_t -> 'a abs_t -> rbexp -> bool

val instr_safe : 'a manager_t -> 'a abs_t -> instr -> bool

val string_of_dom : 'a manager_t -> 'a abs_t -> string
