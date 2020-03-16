open BBCommon
open BitBlastingCCacheDef
open CNF
open CompCache

val bexp_to_cnf_ccache :
  TypEnv.SSATE.env -> vm -> compcache -> generator -> QFBV.QFBV.bexp ->
  ((vm * compcache) * generator) * literal list list
