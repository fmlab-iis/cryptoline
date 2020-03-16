open BBAdd
open BBAnd
open BBAshr
open BBCommon
open BBConcat
open BBConj
open BBConst
open BBDisj
open BBEq
open BBExtract
open BBHigh
open BBIte
open BBLneg
open BBLow
open BBLshr
open BBMul
open BBNeg
open BBNot
open BBOr
open BBSaddo
open BBSge
open BBSgt
open BBShl
open BBSignExtend
open BBSle
open BBSlt
open BBSmulo
open BBSsubo
open BBSub
open BBUaddo
open BBUge
open BBUgt
open BBUle
open BBUlt
open BBUmulo
open BBUsubo
open BBVar
open BBXor
open BBZeroExtend
open CNF
open Var
open Seq

val bit_blast_exp :
  TypEnv.SSATE.env -> word SSAVM.t -> generator -> QFBV.QFBV.exp ->
  ((vm * generator) * cnf) * word

val bit_blast_bexp :
  TypEnv.SSATE.env -> word SSAVM.t -> generator -> QFBV.QFBV.bexp ->
  ((vm * generator) * cnf) * literal
