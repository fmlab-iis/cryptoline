open CNF
open CompTable

type expm = word ExpMap.t

type bexpm = literal BexpMap.t

type simptable = { et : expm; bt : bexpm }

(** val et : simptable -> expm **)

let et x = x.et

(** val bt : simptable -> bexpm **)

let bt x = x.bt

(** val empty : simptable **)

let empty =
  { et = ExpMap.empty; bt = BexpMap.empty }

(** val find_et : ExpMap.key -> simptable -> word option **)

let find_et e t0 =
  ExpMap.find e t0.et

(** val find_bt : BexpMap.key -> simptable -> literal option **)

let find_bt e t0 =
  BexpMap.find e t0.bt

(** val add_et : ExpMap.key -> word -> simptable -> simptable **)

let add_et e ls t0 =
  { et = (ExpMap.add e ls t0.et); bt = t0.bt }

(** val add_bt : BexpMap.key -> literal -> simptable -> simptable **)

let add_bt e l t0 =
  { et = t0.et; bt = (BexpMap.add e l t0.bt) }
