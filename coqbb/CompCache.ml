open CNF
open CompTable

type compcache = { ht : comptable; ct : comptable }

(** val ht : compcache -> comptable **)

let ht x = x.ht

(** val ct : compcache -> comptable **)

let ct x = x.ct

(** val empty : compcache **)

let empty =
  { ht = empty; ct = empty }

(** val find_het : ExpMap.key -> compcache -> (cnf * word) option **)

let find_het e c =
  find_et e c.ht

(** val find_hbt : BexpMap.key -> compcache -> (cnf * literal) option **)

let find_hbt e c =
  find_bt e c.ht

(** val find_cet : ExpMap.key -> compcache -> (cnf * word) option **)

let find_cet e c =
  find_et e c.ct

(** val find_cbt : BexpMap.key -> compcache -> (cnf * literal) option **)

let find_cbt e c =
  find_bt e c.ct

(** val add_het : ExpMap.key -> cnf -> word -> compcache -> compcache **)

let add_het e cs ls c =
  { ht = (add_et e cs ls c.ht); ct = c.ct }

(** val add_hbt : BexpMap.key -> cnf -> literal -> compcache -> compcache **)

let add_hbt e cs l c =
  { ht = (add_bt e cs l c.ht); ct = c.ct }

(** val add_cet : ExpMap.key -> cnf -> word -> compcache -> compcache **)

let add_cet e cs ls c =
  { ht = c.ht; ct = (add_et e cs ls c.ct) }

(** val add_cbt : BexpMap.key -> cnf -> literal -> compcache -> compcache **)

let add_cbt e cs l c =
  { ht = c.ht; ct = (add_bt e cs l c.ct) }

(** val reset_ct : compcache -> compcache **)

let reset_ct c =
  { ht = c.ht; ct = CompTable.empty }
