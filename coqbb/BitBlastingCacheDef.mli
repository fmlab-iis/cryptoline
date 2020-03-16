open BBCommon
open BBConj
open BBConst
open BBDisj
open BBIte
open BBLneg
open BBVar
open BitBlastingCCacheDef
open CNF
open Cache
open Var
open Seq

val bit_blast_exp_cache :
  TypEnv.SSATE.env -> vm -> cache -> generator -> QFBV.QFBV.exp ->
  (((vm * cache) * generator) * cnf) * word

val bit_blast_bexp_cache :
  TypEnv.SSATE.env -> vm -> cache -> generator -> QFBV.QFBV.bexp ->
  (((vm * cache) * generator) * cnf) * literal
