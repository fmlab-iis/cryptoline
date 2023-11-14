open Ast.Cryptoline

type manager_t

type abs_t

val create_manager : VS.t -> manager_t

val abstract_bounds : manager_t -> VS.t -> abs_t

val dom_of_rbexp : manager_t -> rbexp -> abs_t option

val interp_prog : manager_t -> abs_t -> program -> abs_t

val sat_rbexp : manager_t -> abs_t -> rbexp -> bool

val print_dom : manager_t -> abs_t -> unit
