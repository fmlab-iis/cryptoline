open Datatypes
open Nat0
open Eqtype
open Ssrbool

(** val eqn : nat -> nat -> bool **)

let rec eqn m n =
  match m with
  | O -> (match n with
          | O -> true
          | S _ -> false)
  | S m' -> (match n with
             | O -> false
             | S n' -> eqn m' n')

(** val eqnP : nat Equality.axiom **)

let eqnP n m =
  iffP (eqn n m) (idP (eqn n m))

(** val nat_eqMixin : nat Equality.mixin_of **)

let nat_eqMixin =
  { Equality.op = eqn; Equality.mixin_of__1 = eqnP }

(** val nat_eqType : Equality.coq_type **)

let nat_eqType =
  Obj.magic nat_eqMixin

(** val addn_rec : nat -> nat -> nat **)

let addn_rec =
  add

(** val addn : nat -> nat -> nat **)

let addn =
  addn_rec

(** val subn_rec : nat -> nat -> nat **)

let subn_rec =
  sub

(** val subn : nat -> nat -> nat **)

let subn =
  subn_rec

(** val leq : nat -> nat -> bool **)

let leq m n =
  eq_op nat_eqType (Obj.magic subn m n) (Obj.magic O)

(** val iter : nat -> ('a1 -> 'a1) -> 'a1 -> 'a1 **)

let rec iter n f x =
  match n with
  | O -> x
  | S i -> f (iter i f x)

(** val muln_rec : nat -> nat -> nat **)

let muln_rec =
  mul

(** val muln : nat -> nat -> nat **)

let muln =
  muln_rec

(** val nat_of_bool : bool -> nat **)

let nat_of_bool = function
| true -> S O
| false -> O

(** val odd : nat -> bool **)

let rec odd = function
| O -> false
| S n' -> negb (odd n')

(** val double_rec : nat -> nat **)

let rec double_rec = function
| O -> O
| S n' -> S (S (double_rec n'))

(** val double : nat -> nat **)

let double =
  double_rec

(** val half : nat -> nat **)

let rec half n = match n with
| O -> n
| S n' -> uphalf n'

(** val uphalf : nat -> nat **)

and uphalf n = match n with
| O -> n
| S n' -> S (half n')
