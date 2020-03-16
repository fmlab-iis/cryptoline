open Datatypes
open Nat0
open Eqtype
open Ssrbool

val eqn : nat -> nat -> bool

val eqnP : nat Equality.axiom

val nat_eqMixin : nat Equality.mixin_of

val nat_eqType : Equality.coq_type

val addn_rec : nat -> nat -> nat

val addn : nat -> nat -> nat

val subn_rec : nat -> nat -> nat

val subn : nat -> nat -> nat

val leq : nat -> nat -> bool

val iter : nat -> ('a1 -> 'a1) -> 'a1 -> 'a1

val muln_rec : nat -> nat -> nat

val muln : nat -> nat -> nat

val nat_of_bool : bool -> nat

val odd : nat -> bool

val double_rec : nat -> nat

val double : nat -> nat

val half : nat -> nat

val uphalf : nat -> nat
