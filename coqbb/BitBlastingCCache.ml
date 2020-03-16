open BBCommon
open BitBlastingCCacheDef
open CNF
open CompCache

(** val bexp_to_cnf_ccache :
    TypEnv.SSATE.env -> vm -> compcache -> generator -> QFBV.QFBV.bexp ->
    ((vm * compcache) * generator) * literal list list **)

let bexp_to_cnf_ccache te m c g e =
  let (p, lr) = bit_blast_bexp_ccache te m c g e in
  let (p0, cs) = p in (p0, (add_prelude (((neg_lit lr) :: []) :: cs)))
