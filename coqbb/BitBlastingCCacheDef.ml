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

(** val bit_blast_eunop :
    QFBV.QFBV.eunop -> generator -> literal list -> (generator * cnf) * word **)

let bit_blast_eunop = function
| QFBV.QFBV.Unot -> bit_blast_not
| QFBV.QFBV.Uneg -> bit_blast_neg
| QFBV.QFBV.Uextr (i, j) -> (fun g ls -> bit_blast_extract g i j ls)
| QFBV.QFBV.Uhigh n -> (fun g ls -> bit_blast_high g n ls)
| QFBV.QFBV.Ulow n -> (fun g ls -> bit_blast_low g n ls)
| QFBV.QFBV.Uzext n -> bit_blast_zeroextend n
| QFBV.QFBV.Usext n -> bit_blast_signextend n

(** val bit_blast_ebinop :
    QFBV.QFBV.ebinop -> generator -> literal list -> literal list ->
    (generator * cnf) * word **)

let bit_blast_ebinop = function
| QFBV.QFBV.Band -> bit_blast_and
| QFBV.QFBV.Bor -> bit_blast_or
| QFBV.QFBV.Bxor -> bit_blast_xor
| QFBV.QFBV.Badd -> bit_blast_add
| QFBV.QFBV.Bsub -> bit_blast_sub
| QFBV.QFBV.Bmul -> Obj.magic bit_blast_mul
| QFBV.QFBV.Bshl -> Obj.magic bit_blast_shl
| QFBV.QFBV.Blshr -> Obj.magic bit_blast_lshr
| QFBV.QFBV.Bashr -> Obj.magic bit_blast_ashr
| QFBV.QFBV.Bconcat -> bit_blast_concat
| _ -> (fun g ls1 _ -> ((g, []), ls1))

(** val bit_blast_bbinop :
    QFBV.QFBV.bbinop -> generator -> literal list -> literal list ->
    (generator * cnf) * literal **)

let bit_blast_bbinop = function
| QFBV.QFBV.Beq -> bit_blast_eq
| QFBV.QFBV.Bult -> bit_blast_ult
| QFBV.QFBV.Bule -> bit_blast_ule
| QFBV.QFBV.Bugt -> bit_blast_ugt
| QFBV.QFBV.Buge -> bit_blast_uge
| QFBV.QFBV.Bslt -> bit_blast_slt
| QFBV.QFBV.Bsle -> bit_blast_sle
| QFBV.QFBV.Bsgt -> bit_blast_sgt
| QFBV.QFBV.Bsge -> bit_blast_sge
| QFBV.QFBV.Buaddo -> bit_blast_uaddo
| QFBV.QFBV.Busubo -> bit_blast_usubo
| QFBV.QFBV.Bumulo -> bit_blast_umulo
| QFBV.QFBV.Bsaddo -> bit_blast_saddo
| QFBV.QFBV.Bssubo -> bit_blast_ssubo
| QFBV.QFBV.Bsmulo -> bit_blast_smulo
