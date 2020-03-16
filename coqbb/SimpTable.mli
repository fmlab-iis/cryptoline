open CNF
open CompTable

type expm = word ExpMap.t

type bexpm = literal BexpMap.t

type simptable = { et : expm; bt : bexpm }

val et : simptable -> expm

val bt : simptable -> bexpm

val empty : simptable

val find_et : ExpMap.key -> simptable -> word option

val find_bt : BexpMap.key -> simptable -> literal option

val add_et : ExpMap.key -> word -> simptable -> simptable

val add_bt : BexpMap.key -> literal -> simptable -> simptable
