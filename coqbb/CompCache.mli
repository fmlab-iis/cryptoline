open CNF
open CompTable

type compcache = { ht : comptable; ct : comptable }

val ht : compcache -> comptable

val ct : compcache -> comptable

val empty : compcache

val find_het : ExpMap.key -> compcache -> (cnf * word) option

val find_hbt : BexpMap.key -> compcache -> (cnf * literal) option

val find_cet : ExpMap.key -> compcache -> (cnf * word) option

val find_cbt : BexpMap.key -> compcache -> (cnf * literal) option

val add_het : ExpMap.key -> cnf -> word -> compcache -> compcache

val add_hbt : BexpMap.key -> cnf -> literal -> compcache -> compcache

val add_cet : ExpMap.key -> cnf -> word -> compcache -> compcache

val add_cbt : BexpMap.key -> cnf -> literal -> compcache -> compcache

val reset_ct : compcache -> compcache
