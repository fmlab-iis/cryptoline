open Bool
open CNF
open Datatypes
open FMaps
open Int0
open Eqtype

type __ = Obj.t

module ExpMap = MakeTreeMap(QFBV.QFBV.ExpOrder)

module BexpMap = MakeTreeMap(QFBV.QFBV.BexpOrder)

type expm = (cnf * word) ExpMap.t

type bexpm = (cnf * literal) BexpMap.t

type comptable = { et : expm; bt : bexpm }

(** val et : comptable -> expm **)

let et x = x.et

(** val bt : comptable -> bexpm **)

let bt x = x.bt

(** val empty : comptable **)

let empty =
  { et = ExpMap.empty; bt = BexpMap.empty }

(** val find_et : ExpMap.key -> comptable -> (cnf * word) option **)

let find_et e t0 =
  ExpMap.find e t0.et

(** val find_bt : BexpMap.key -> comptable -> (cnf * literal) option **)

let find_bt e t0 =
  BexpMap.find e t0.bt

(** val add_et : ExpMap.key -> cnf -> word -> comptable -> comptable **)

let add_et e cs ls t0 =
  { et = (ExpMap.add e (cs, ls) t0.et); bt = t0.bt }

(** val add_bt : BexpMap.key -> cnf -> literal -> comptable -> comptable **)

let add_bt e cs l t0 =
  { et = t0.et; bt = (BexpMap.add e (cs, l) t0.bt) }
