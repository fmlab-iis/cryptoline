open Bool
open Datatypes
open FMaps
open Typ
open Var

type __ = Obj.t

module type TypEnv =
 sig
  module SE :
   SsrOrder.SsrOrder

  module E :
   OrderedType.OrderedType with type t = SE.t

  type key = SE.t

  type 'x t

  val empty : 'a1 t

  val is_empty : 'a1 t -> bool

  val add : key -> 'a1 -> 'a1 t -> 'a1 t

  val find : key -> 'a1 t -> 'a1 option

  val remove : key -> 'a1 t -> 'a1 t

  val mem : key -> 'a1 t -> bool

  val map : ('a1 -> 'a2) -> 'a1 t -> 'a2 t

  val mapi : (key -> 'a1 -> 'a2) -> 'a1 t -> 'a2 t

  val map2 :
    ('a1 option -> 'a2 option -> 'a3 option) -> 'a1 t -> 'a2 t -> 'a3 t

  val elements : 'a1 t -> (key * 'a1) list

  val cardinal : 'a1 t -> nat

  val fold : (key -> 'a1 -> 'a2 -> 'a2) -> 'a1 t -> 'a2 -> 'a2

  val equal : ('a1 -> 'a1 -> bool) -> 'a1 t -> 'a1 t -> bool

  type env = typ t

  val deftyp : typ

  val vtyp : SE.t -> env -> typ

  val vsize : SE.t -> env -> nat
 end

module MakeTypEnv =
 functor (V:SsrOrder.SsrOrder) ->
 functor (VM:SsrFMap with module SE = V) ->
 struct
  module SE = V

  module E = VM.E

  type key = SE.t

  type 'x t = 'x VM.t

  (** val empty : 'a1 t **)

  let empty =
    VM.empty

  (** val is_empty : 'a1 t -> bool **)

  let is_empty =
    VM.is_empty

  (** val add : key -> 'a1 -> 'a1 t -> 'a1 t **)

  let add =
    VM.add

  (** val find : key -> 'a1 t -> 'a1 option **)

  let find =
    VM.find

  (** val remove : key -> 'a1 t -> 'a1 t **)

  let remove =
    VM.remove

  (** val mem : key -> 'a1 t -> bool **)

  let mem =
    VM.mem

  (** val map : ('a1 -> 'a2) -> 'a1 t -> 'a2 t **)

  let map =
    VM.map

  (** val mapi : (key -> 'a1 -> 'a2) -> 'a1 t -> 'a2 t **)

  let mapi =
    VM.mapi

  (** val map2 :
      ('a1 option -> 'a2 option -> 'a3 option) -> 'a1 t -> 'a2 t -> 'a3 t **)

  let map2 =
    VM.map2

  (** val elements : 'a1 t -> (key * 'a1) list **)

  let elements =
    VM.elements

  (** val cardinal : 'a1 t -> nat **)

  let cardinal =
    VM.cardinal

  (** val fold : (key -> 'a1 -> 'a2 -> 'a2) -> 'a1 t -> 'a2 -> 'a2 **)

  let fold =
    VM.fold

  (** val equal : ('a1 -> 'a1 -> bool) -> 'a1 t -> 'a1 t -> bool **)

  let equal =
    VM.equal

  module Lemmas = FMapLemmas(VM)

  type env = typ t

  (** val deftyp : typ **)

  let deftyp =
    Tuint O

  (** val vtyp : V.t -> env -> typ **)

  let vtyp v e =
    match VM.find v e with
    | Some ty -> ty
    | None -> deftyp

  (** val vsize : V.t -> env -> nat **)

  let vsize v e =
    sizeof_typ (vtyp v e)
 end

module SSATE = MakeTypEnv(SSAVarOrder)(SSAVM)
