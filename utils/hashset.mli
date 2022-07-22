
(** This module provides interfaces of hashsets backed by Hashtbl. *)


type 'a t
(** the type of hashsets *)

val create : ?random:bool -> int -> 'a t
(** Create an empty hashset. *)

val clear : 'a t -> unit
(** Clear a hashset. *)

val reset : 'a t -> unit
(** Reset a hashset. *)

val copy : 'a t -> 'a t
(** Copy a hashset. *)

val add : 'a t -> 'a -> unit
(** Add an element to a hashset. *)

val remove : 'a t -> 'a -> unit
(** Remove an element from a hashset. *)

val mem : 'a t -> 'a -> bool
(** Test if an element is in a hashset. *)

val iter : ('a -> unit) -> 'a t -> unit
(** Apply a function to all elements in a hashset. *)

val fold : ('a -> 'b -> 'b) -> 'a t -> 'b -> 'b
(** [fold f s d] returns [f en (... (f e2 (f e1 d)) ...)] where [e1 ... en] are the elements in [s]. *)

val size : 'a t -> int
(** Return the size of a hashset. *)

val of_list : 'a list -> 'a t
(** Construct a hashset from a list. *)

val to_list : 'a t -> 'a list
(** Construct a list from a hashset. *)
