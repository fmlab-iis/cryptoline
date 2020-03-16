open Bool
open Datatypes
open Eqtype
open Ssrbool
open Ssrnat

let __ = let rec f _ = Obj.repr f in Obj.repr f

(** val size : 'a1 list -> nat **)

let rec size = function
| [] -> O
| _ :: s' -> S (size s')

(** val head : 'a1 -> 'a1 list -> 'a1 **)

let head x0 = function
| [] -> x0
| x :: _ -> x

(** val behead : 'a1 list -> 'a1 list **)

let behead = function
| [] -> []
| _ :: s' -> s'

(** val ncons : nat -> 'a1 -> 'a1 list -> 'a1 list **)

let ncons n x =
  iter n (fun x0 -> x :: x0)

(** val nseq : nat -> 'a1 -> 'a1 list **)

let nseq n x =
  ncons n x []

(** val cat : 'a1 list -> 'a1 list -> 'a1 list **)

let rec cat s1 s2 =
  match s1 with
  | [] -> s2
  | x :: s1' -> x :: (cat s1' s2)

(** val rcons : 'a1 list -> 'a1 -> 'a1 list **)

let rec rcons s z =
  match s with
  | [] -> z :: []
  | x :: s' -> x :: (rcons s' z)

(** val last : 'a1 -> 'a1 list -> 'a1 **)

let rec last x = function
| [] -> x
| x' :: s' -> last x' s'

(** val belast : 'a1 -> 'a1 list -> 'a1 list **)

let rec belast x = function
| [] -> []
| x' :: s' -> x :: (belast x' s')

(** val drop : nat -> 'a1 list -> 'a1 list **)

let rec drop n s = match s with
| [] -> s
| _ :: s' -> (match n with
              | O -> s
              | S n' -> drop n' s')

(** val take : nat -> 'a1 list -> 'a1 list **)

let rec take n = function
| [] -> []
| x :: s' -> (match n with
              | O -> []
              | S n' -> x :: (take n' s'))

(** val catrev : 'a1 list -> 'a1 list -> 'a1 list **)

let rec catrev s1 s2 =
  match s1 with
  | [] -> s2
  | x :: s1' -> catrev s1' (x :: s2)

(** val rev : 'a1 list -> 'a1 list **)

let rev s =
  catrev s []

(** val eqseq :
    Equality.coq_type -> Equality.sort list -> Equality.sort list -> bool **)

let rec eqseq t s1 s2 =
  match s1 with
  | [] -> (match s2 with
           | [] -> true
           | _ :: _ -> false)
  | x1 :: s1' ->
    (match s2 with
     | [] -> false
     | x2 :: s2' -> (&&) (eq_op t x1 x2) (eqseq t s1' s2'))

(** val eqseqP : Equality.coq_type -> Equality.sort list Equality.axiom **)

let eqseqP t _top_assumption_ =
  let _evar_0_ = fun __top_assumption_ ->
    let _evar_0_ = ReflectT in
    let _evar_0_0 = fun _ _ -> ReflectF in
    (match __top_assumption_ with
     | [] -> _evar_0_
     | x :: x0 -> _evar_0_0 x x0)
  in
  let _evar_0_0 = fun x1 s1 iHs __top_assumption_ ->
    let _evar_0_0 = ReflectF in
    let _evar_0_1 = fun x2 s2 ->
      let _evar_0_1 = fun _ -> iffP (eqseq t s1 s2) (iHs s2) in
      let _evar_0_2 = fun _ -> ReflectF in
      (match eqP t x1 x2 with
       | ReflectT -> _evar_0_1 __
       | ReflectF -> _evar_0_2 __)
    in
    (match __top_assumption_ with
     | [] -> _evar_0_0
     | x :: x0 -> _evar_0_1 x x0)
  in
  let rec f = function
  | [] -> _evar_0_
  | y :: l0 -> _evar_0_0 y l0 (f l0)
  in f _top_assumption_

(** val seq_eqMixin :
    Equality.coq_type -> Equality.sort list Equality.mixin_of **)

let seq_eqMixin t =
  { Equality.op = (eqseq t); Equality.mixin_of__1 = (eqseqP t) }

(** val seq_eqType : Equality.coq_type -> Equality.coq_type **)

let seq_eqType t =
  Obj.magic seq_eqMixin t

type bitseq = bool list

(** val bitseq_eqType : Equality.coq_type **)

let bitseq_eqType =
  Obj.magic seq_eqMixin bool_eqType

(** val map : ('a1 -> 'a2) -> 'a1 list -> 'a2 list **)

let rec map f = function
| [] -> []
| x :: s' -> (f x) :: (map f s')

(** val foldr : ('a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 list -> 'a2 **)

let rec foldr f z0 = function
| [] -> z0
| x :: s' -> f x (foldr f z0 s')

(** val foldl : ('a2 -> 'a1 -> 'a2) -> 'a2 -> 'a1 list -> 'a2 **)

let rec foldl f z = function
| [] -> z
| x :: s' -> foldl f (f z x) s'

(** val zip : 'a1 list -> 'a2 list -> ('a1 * 'a2) list **)

let rec zip s t =
  match s with
  | [] -> []
  | x :: s' -> (match t with
                | [] -> []
                | y :: t' -> (x, y) :: (zip s' t'))

(** val unzip1 : ('a1 * 'a2) list -> 'a1 list **)

let unzip1 s =
  map fst s

(** val unzip2 : ('a1 * 'a2) list -> 'a2 list **)

let unzip2 s =
  map snd s
