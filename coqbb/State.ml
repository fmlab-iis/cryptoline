open Bool
open Datatypes
open FMaps
open NBitsDef
open Var
open Eqtype

type __ = Obj.t

module BitsValueType =
 struct
  type t = bits

  (** val default : t **)

  let default =
    []
 end

module MakeBitsStore =
 functor (V:SsrOrder.SsrOrder) ->
 functor (TE:TypEnv.TypEnv with module SE = V) ->
 struct
  module S =
   struct
    (** val var : Equality.coq_type **)

    let var =
      V.coq_T

    type 'value t = Equality.sort -> 'value

    (** val empty : 'a1 -> Equality.sort -> 'a1 **)

    let empty d _ =
      d

    (** val acc : Equality.sort -> 'a1 t -> 'a1 **)

    let acc x s =
      s x

    (** val upd : Equality.sort -> 'a1 -> 'a1 t -> Equality.sort -> 'a1 **)

    let upd x v s y =
      if eq_op var y x then v else acc y s

    (** val upd2 :
        Equality.sort -> 'a1 -> Equality.sort -> 'a1 -> 'a1 t -> 'a1 t **)

    let upd2 x1 v1 x2 v2 s =
      upd x2 v2 (upd x1 v1 s)
   end

  type value = bits

  (** val var : Equality.coq_type **)

  let var =
    S.var

  type t = value S.t

  (** val empty : t **)

  let empty =
    S.empty BitsValueType.default

  (** val acc : Equality.sort -> t -> value **)

  let acc =
    S.acc

  (** val upd : Equality.sort -> value -> t -> Equality.sort -> value **)

  let upd =
    S.upd

  (** val upd2 :
      Equality.sort -> value -> Equality.sort -> value -> t -> value S.t **)

  let upd2 =
    S.upd2

  module Lemmas = FMapLemmas(TE)
 end

module SSAStore = MakeBitsStore(SSAVarOrder)(TypEnv.SSATE)
