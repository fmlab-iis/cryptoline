open CNF
open CompTable
open SimpTable

type cache = { ht : comptable; ct : simptable }

(** val ht : cache -> comptable **)

let ht x = x.ht

(** val ct : cache -> simptable **)

let ct x = x.ct

(** val empty : cache **)

let empty =
  { ht = CompTable.empty; ct = empty }

(** val find_het : ExpMap.key -> cache -> (cnf * word) option **)

let find_het e c =
  CompTable.find_et e c.ht

(** val find_hbt : BexpMap.key -> cache -> (cnf * literal) option **)

let find_hbt e c =
  CompTable.find_bt e c.ht

(** val find_cet : ExpMap.key -> cache -> word option **)

let find_cet e c =
  find_et e c.ct

(** val find_cbt : BexpMap.key -> cache -> literal option **)

let find_cbt e c =
  find_bt e c.ct

(** val add_het : ExpMap.key -> cnf -> word -> cache -> cache **)

let add_het e cs ls c =
  { ht = (CompTable.add_et e cs ls c.ht); ct = c.ct }

(** val add_hbt : BexpMap.key -> cnf -> literal -> cache -> cache **)

let add_hbt e cs l c =
  { ht = (CompTable.add_bt e cs l c.ht); ct = c.ct }

(** val add_cet : ExpMap.key -> word -> cache -> cache **)

let add_cet e ls c =
  { ht = c.ht; ct = (add_et e ls c.ct) }

(** val add_cbt : BexpMap.key -> literal -> cache -> cache **)

let add_cbt e l c =
  { ht = c.ht; ct = (add_bt e l c.ct) }
