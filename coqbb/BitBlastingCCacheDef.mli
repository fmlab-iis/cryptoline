open BBAdd
open BBAnd
open BBAshr
open BBCommon
open BBConcat
open BBEq
open BBExtract
open BBHigh
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
open BBXor
open BBZeroExtend
open CNF

val bit_blast_eunop :
  QFBV.QFBV.eunop -> generator -> literal list -> (generator * cnf) * word

val bit_blast_ebinop :
  QFBV.QFBV.ebinop -> generator -> literal list -> literal list ->
  (generator * cnf) * word

val bit_blast_bbinop :
  QFBV.QFBV.bbinop -> generator -> literal list -> literal list ->
  (generator * cnf) * literal
