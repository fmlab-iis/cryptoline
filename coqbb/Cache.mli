open CNF
open CompTable
open SimpTable

type cache = { ht : comptable; ct : simptable }

val ht : cache -> comptable

val ct : cache -> simptable

val empty : cache

val find_het : ExpMap.key -> cache -> (cnf * word) option

val find_hbt : BexpMap.key -> cache -> (cnf * literal) option

val find_cet : ExpMap.key -> cache -> word option

val find_cbt : BexpMap.key -> cache -> literal option

val add_het : ExpMap.key -> cnf -> word -> cache -> cache

val add_hbt : BexpMap.key -> cnf -> literal -> cache -> cache

val add_cet : ExpMap.key -> word -> cache -> cache

val add_cbt : BexpMap.key -> literal -> cache -> cache

val reset_ct : cache -> cache
