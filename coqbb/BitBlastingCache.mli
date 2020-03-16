open BBCommon
open BitBlastingCacheDef
open CNF
open Cache

val bexp_to_cnf_cache :
  TypEnv.SSATE.env -> vm -> cache -> generator -> QFBV.QFBV.bexp ->
  ((vm * cache) * generator) * literal list list
