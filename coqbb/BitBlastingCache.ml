open BBCommon
open BitBlastingCacheDef
open CNF
open Cache

(** val bexp_to_cnf_cache :
    TypEnv.SSATE.env -> vm -> cache -> generator -> QFBV.QFBV.bexp ->
    ((vm * cache) * generator) * literal list list **)

let bexp_to_cnf_cache te m c g e =
  let (p, lr) = bit_blast_bexp_cache te m c g e in
  let (p0, cs) = p in (p0, (add_prelude (((neg_lit lr) :: []) :: cs)))
