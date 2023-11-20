
open Ast.Cryptoline

type 'a manager_t

type 'a abs_t

type domain =
  [
  | `Box
  | `Oct
  | `Polka
  (*
  | `Ppl
  | `PolkaGrid
   *)
  ]

val default_domain : domain

val domain : domain ref

val string_of_domain : domain -> string

val domain_of_string : string -> domain


type polka_flavor =
  [
  | `Loose
  | `Strict
  | `Equalities
  ]

val default_polka_flavor : polka_flavor

val polka_flavor : polka_flavor ref


val create_manager : VS.t -> 'a manager_t

val dom_of_rbexp : 'a manager_t -> rbexp -> 'a abs_t option

val interp_prog : 'a manager_t -> 'a abs_t -> program -> 'a abs_t

val sat_rbexp : 'a manager_t -> 'a abs_t -> rbexp -> bool

val string_of_dom : 'a manager_t -> 'a abs_t -> string
