
open NBits
open Ast.Cryptoline
open Utils

(** This module provides a simulator. *)

val make_map : var list -> bits list -> bits VM.t
(** [make_map [v1; v2; ...; vn] [b1; b2; ...; bn]] returns a map where the
    variable [vi] is mapped to its value [bi]. *)

val simulate : ?steps:int -> ?dumps:(range list) -> bits VM.t -> program -> unit
(** [simulate ~steps:n ~dumps:rs m p] simulates the execution of a program [p]
    with the initial values of inputs specified in [m]. *)

val shell : bits VM.t -> program -> unit
(** [shell m p] creates an interactive shell for simulating the execution of the
    program [p] with the initial values of inputs specified in [m]. *)
