open Bool
open Datatypes
open Ssrbool

type __ = Obj.t

module Equality :
 sig
  type 't axiom = 't -> 't -> reflect

  type 't mixin_of = { op : 't rel; mixin_of__1 : 't axiom }

  val op : 'a1 mixin_of -> 'a1 rel

  type coq_type =
    __ mixin_of
    (* singleton inductive, whose constructor was Pack *)

  type sort = __

  val coq_class : coq_type -> sort mixin_of
 end

val eq_op : Equality.coq_type -> Equality.sort rel

val eqP : Equality.coq_type -> Equality.sort Equality.axiom

val eqb : bool -> bool -> bool

val eqbP : bool Equality.axiom

val bool_eqMixin : bool Equality.mixin_of

val bool_eqType : Equality.coq_type

val pair_eq :
  Equality.coq_type -> Equality.coq_type -> (Equality.sort * Equality.sort)
  rel

val pair_eqP :
  Equality.coq_type -> Equality.coq_type -> (Equality.sort * Equality.sort)
  Equality.axiom

val prod_eqMixin :
  Equality.coq_type -> Equality.coq_type -> (Equality.sort * Equality.sort)
  Equality.mixin_of

val prod_eqType : Equality.coq_type -> Equality.coq_type -> Equality.coq_type
