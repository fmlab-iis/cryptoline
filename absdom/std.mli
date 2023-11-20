open Ast.Cryptoline

type 'a manager_t

type 'a abs_t

val create_manager : VS.t -> 'a manager_t

val dom_of_rbexp : 'a manager_t -> rbexp -> 'a abs_t option

val interp_prog : 'a manager_t -> 'a abs_t -> program -> 'a abs_t

val sat_rbexp : 'a manager_t -> 'a abs_t -> rbexp -> bool

val string_of_dom : 'a manager_t -> 'a abs_t -> string
