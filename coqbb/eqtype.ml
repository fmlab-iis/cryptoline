open Bool
open Datatypes
open Ssrbool

type __ = Obj.t

module Equality =
 struct
  type 't axiom = 't -> 't -> reflect

  type 't mixin_of = { op : 't rel; mixin_of__1 : 't axiom }

  (** val op : 'a1 mixin_of -> 'a1 rel **)

  let op x = x.op

  type coq_type =
    __ mixin_of
    (* singleton inductive, whose constructor was Pack *)

  type sort = __

  (** val coq_class : coq_type -> sort mixin_of **)

  let coq_class cT =
    cT
 end

(** val eq_op : Equality.coq_type -> Equality.sort rel **)

let eq_op t =
  (Equality.coq_class t).Equality.op

(** val eqP : Equality.coq_type -> Equality.sort Equality.axiom **)

let eqP t =
  let _evar_0_ = fun _ a -> a in
  let { Equality.op = x; Equality.mixin_of__1 = x0 } = t in _evar_0_ x x0

(** val eqb : bool -> bool -> bool **)

let eqb b =
  addb (negb b)

(** val eqbP : bool Equality.axiom **)

let eqbP __top_assumption_ =
  let _evar_0_ = fun __top_assumption_0 ->
    let _evar_0_ = ReflectT in
    let _evar_0_0 = ReflectF in
    if __top_assumption_0 then _evar_0_ else _evar_0_0
  in
  let _evar_0_0 = fun __top_assumption_0 ->
    let _evar_0_0 = ReflectF in
    let _evar_0_1 = ReflectT in
    if __top_assumption_0 then _evar_0_0 else _evar_0_1
  in
  if __top_assumption_ then _evar_0_ else _evar_0_0

(** val bool_eqMixin : bool Equality.mixin_of **)

let bool_eqMixin =
  { Equality.op = eqb; Equality.mixin_of__1 = eqbP }

(** val bool_eqType : Equality.coq_type **)

let bool_eqType =
  Obj.magic bool_eqMixin

(** val pair_eq :
    Equality.coq_type -> Equality.coq_type -> (Equality.sort * Equality.sort)
    rel **)

let pair_eq t1 t2 u v =
  (&&) (eq_op t1 (fst u) (fst v)) (eq_op t2 (snd u) (snd v))

(** val pair_eqP :
    Equality.coq_type -> Equality.coq_type -> (Equality.sort * Equality.sort)
    Equality.axiom **)

let pair_eqP t1 t2 __top_assumption_ =
  let _evar_0_ = fun x1 x2 __top_assumption_0 ->
    let _evar_0_ = fun y1 y2 ->
      iffP
        ((&&) (eq_op t1 (fst (x1, x2)) (fst (y1, y2)))
          (eq_op t2 (snd (x1, x2)) (snd (y1, y2))))
        (andP (eq_op t1 (fst (x1, x2)) (fst (y1, y2)))
          (eq_op t2 (snd (x1, x2)) (snd (y1, y2))))
    in
    let (x, x0) = __top_assumption_0 in _evar_0_ x x0
  in
  let (x, x0) = __top_assumption_ in _evar_0_ x x0

(** val prod_eqMixin :
    Equality.coq_type -> Equality.coq_type -> (Equality.sort * Equality.sort)
    Equality.mixin_of **)

let prod_eqMixin t1 t2 =
  { Equality.op = (pair_eq t1 t2); Equality.mixin_of__1 = (pair_eqP t1 t2) }

(** val prod_eqType :
    Equality.coq_type -> Equality.coq_type -> Equality.coq_type **)

let prod_eqType t1 t2 =
  Obj.magic prod_eqMixin t1 t2
