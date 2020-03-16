open BinNat
open BinPos
open Bool
open Datatypes
open Eqtype

let __ = let rec f _ = Obj.repr f in Obj.repr f

(** val pos_eqP : int -> int -> reflect **)

let pos_eqP n m =
  let _evar_0_ = fun _ -> ReflectT in
  let _evar_0_0 = fun _ -> ReflectF in
  if Pos.eqb n m then _evar_0_ __ else _evar_0_0 __

(** val pos_eqMixin : int Equality.mixin_of **)

let pos_eqMixin =
  { Equality.op = Pos.eqb; Equality.mixin_of__1 = pos_eqP }

(** val pos_eqType : Equality.coq_type **)

let pos_eqType =
  Obj.magic pos_eqMixin

(** val coq_N_eqP : int -> int -> reflect **)

let coq_N_eqP n m =
  let _evar_0_ = fun _ -> ReflectT in
  let _evar_0_0 = fun _ -> ReflectF in
  if N.eqb n m then _evar_0_ __ else _evar_0_0 __

(** val coq_N_eqMixin : int Equality.mixin_of **)

let coq_N_eqMixin =
  { Equality.op = N.eqb; Equality.mixin_of__1 = coq_N_eqP }

(** val coq_N_eqType : Equality.coq_type **)

let coq_N_eqType =
  Obj.magic coq_N_eqMixin

module PositiveOrderMinimal =
 struct
  (** val t : Equality.coq_type **)

  let t =
    pos_eqType

  (** val eqn : Equality.sort -> Equality.sort -> bool **)

  let eqn x y =
    eq_op t x y

  (** val ltn : Equality.sort -> Equality.sort -> bool **)

  let ltn x y =
    Pos.ltb (Obj.magic x) (Obj.magic y)

  (** val compare :
      Equality.sort -> Equality.sort -> Equality.sort OrderedType.coq_Compare **)

  let compare x y =
    let _evar_0_ = fun _ -> OrderedType.EQ in
    let _evar_0_0 = fun _ -> OrderedType.LT in
    let _evar_0_1 = fun _ -> OrderedType.GT in
    (match Pos.compare (Obj.magic x) (Obj.magic y) with
     | Eq -> _evar_0_ __
     | Lt -> _evar_0_0 __
     | Gt -> _evar_0_1 __)
 end

module PositiveOrder = SsrOrder.MakeSsrOrder(PositiveOrderMinimal)

module NOrderMinimal =
 struct
  (** val t : Equality.coq_type **)

  let t =
    coq_N_eqType

  (** val eqn : Equality.sort -> Equality.sort -> bool **)

  let eqn x y =
    eq_op t x y

  (** val ltn : Equality.sort -> Equality.sort -> bool **)

  let ltn x y =
    N.ltb (Obj.magic x) (Obj.magic y)

  (** val compare :
      Equality.sort -> Equality.sort -> Equality.sort OrderedType.coq_Compare **)

  let compare x y =
    let _evar_0_ = fun _ -> OrderedType.EQ in
    let _evar_0_0 = fun _ -> OrderedType.LT in
    let _evar_0_1 = fun _ -> OrderedType.GT in
    (match N.compare (Obj.magic x) (Obj.magic y) with
     | Eq -> _evar_0_ __
     | Lt -> _evar_0_0 __
     | Gt -> _evar_0_1 __)
 end

module NOrder = SsrOrder.MakeSsrOrder(NOrderMinimal)
