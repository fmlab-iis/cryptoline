open Ast.Cryptoline

type manager_t

type abs_t

val create_manager : VS.t -> manager_t

val dom_of_rbexp : manager_t -> rbexp -> abs_t option

val interp_prog : manager_t -> abs_t -> program -> abs_t

val sat_rbexp : manager_t -> abs_t -> rbexp -> bool

val string_of_dom : manager_t -> abs_t -> string
