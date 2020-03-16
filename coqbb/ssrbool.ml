open Bool
open Datatypes

let __ = let rec f _ = Obj.repr f in Obj.repr f

(** val addb : bool -> bool -> bool **)

let addb = function
| true -> negb
| false -> (fun x -> x)

(** val is_left : bool -> bool **)

let is_left = function
| true -> true
| false -> false

(** val iffP : bool -> reflect -> reflect **)

let iffP _ pb =
  let _evar_0_ = fun _ _ _ -> ReflectT in
  let _evar_0_0 = fun _ _ _ -> ReflectF in
  (match pb with
   | ReflectT -> _evar_0_ __ __ __
   | ReflectF -> _evar_0_0 __ __ __)

(** val idP : bool -> reflect **)

let idP = function
| true -> ReflectT
| false -> ReflectF

(** val andP : bool -> bool -> reflect **)

let andP b1 b2 =
  if b1 then if b2 then ReflectT else ReflectF else ReflectF

type 't pred = 't -> bool

type 't rel = 't -> 't pred
