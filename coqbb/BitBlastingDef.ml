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

(** val bit_blast_exp :
    TypEnv.SSATE.env -> word SSAVM.t -> generator -> QFBV.QFBV.exp ->
    ((vm * generator) * cnf) * word **)

let rec bit_blast_exp te m g = function
| QFBV.QFBV.Evar v ->
  (match SSAVM.find v m with
   | Some rs -> (((m, g), []), rs)
   | None ->
     let (p, rs) = bit_blast_var te g v in
     let (g', cs) = p in ((((SSAVM.add v rs m), g'), cs), rs))
| QFBV.QFBV.Econst bs ->
  let (p, rs) = bit_blast_const g bs in
  let (g', cs) = p in (((m, g'), cs), rs)
| QFBV.QFBV.Eunop (op, e1) ->
  (match op with
   | QFBV.QFBV.Unot ->
     let (p, ls1) = bit_blast_exp te m g e1 in
     let (p0, cs1) = p in
     let (m1, g1) = p0 in
     let (p1, lsr0) = bit_blast_not g1 ls1 in
     let (gr, csr) = p1 in (((m1, gr), (cat cs1 csr)), lsr0)
   | QFBV.QFBV.Uneg ->
     let (p, ls1) = bit_blast_exp te m g e1 in
     let (p0, cs1) = p in
     let (m1, g1) = p0 in
     let (p1, lsr0) = bit_blast_neg g1 ls1 in
     let (gr, csr) = p1 in (((m1, gr), (cat cs1 csr)), lsr0)
   | QFBV.QFBV.Uextr (i, j) ->
     let (p, lse) = bit_blast_exp te m g e1 in
     let (p0, cse) = p in
     let (m', ge) = p0 in
     let (p1, ls') = bit_blast_extract ge i j lse in
     let (g', cs) = p1 in (((m', g'), (cat cse cs)), ls')
   | QFBV.QFBV.Uhigh n ->
     let (p, lse) = bit_blast_exp te m g e1 in
     let (p0, cse) = p in
     let (m', ge) = p0 in
     let (p1, ls') = bit_blast_high ge n lse in
     let (g', cs) = p1 in (((m', g'), (cat cse cs)), ls')
   | QFBV.QFBV.Ulow n ->
     let (p, lse) = bit_blast_exp te m g e1 in
     let (p0, cse) = p in
     let (m', ge) = p0 in
     let (p1, ls') = bit_blast_low ge n lse in
     let (g', cs) = p1 in (((m', g'), (cat cse cs)), ls')
   | QFBV.QFBV.Uzext n ->
     let (p, lse) = bit_blast_exp te m g e1 in
     let (p0, cse) = p in
     let (m', ge) = p0 in
     let (p1, ls) = bit_blast_zeroextend n ge lse in
     let (g', cs) = p1 in (((m', g'), (cat cse cs)), ls)
   | QFBV.QFBV.Usext n ->
     let (p, lse) = bit_blast_exp te m g e1 in
     let (p0, cse) = p in
     let (m', ge) = p0 in
     let (p1, ls) = bit_blast_signextend n ge lse in
     let (g', cs) = p1 in (((m', g'), (cat cse cs)), ls))
| QFBV.QFBV.Ebinop (op, e1, e2) ->
  (match op with
   | QFBV.QFBV.Band ->
     let (p, ls1) = bit_blast_exp te m g e1 in
     let (p0, cs1) = p in
     let (m1, g1) = p0 in
     let (p1, ls2) = bit_blast_exp te m1 g1 e2 in
     let (p2, cs2) = p1 in
     let (m2, g2) = p2 in
     let (p3, lsr0) = bit_blast_and g2 ls1 ls2 in
     let (gr, csr) = p3 in (((m2, gr), (cat cs1 (cat cs2 csr))), lsr0)
   | QFBV.QFBV.Bor ->
     let (p, rs1) = bit_blast_exp te m g e1 in
     let (p0, cs1) = p in
     let (m1, g1) = p0 in
     let (p1, rs2) = bit_blast_exp te m1 g1 e2 in
     let (p2, cs2) = p1 in
     let (m2, g2) = p2 in
     let (p3, rs) = bit_blast_or g2 rs1 rs2 in
     let (g', cs) = p3 in (((m2, g'), (cat cs1 (cat cs2 cs))), rs)
   | QFBV.QFBV.Bxor ->
     let (p, ls1) = bit_blast_exp te m g e1 in
     let (p0, cs1) = p in
     let (m1, g1) = p0 in
     let (p1, ls2) = bit_blast_exp te m1 g1 e2 in
     let (p2, cs2) = p1 in
     let (m2, g2) = p2 in
     let (p3, lsr0) = bit_blast_xor g2 ls1 ls2 in
     let (gr, csr) = p3 in (((m2, gr), (cat cs1 (cat cs2 csr))), lsr0)
   | QFBV.QFBV.Badd ->
     let (p, rs1) = bit_blast_exp te m g e1 in
     let (p0, cs1) = p in
     let (m1, g1) = p0 in
     let (p1, rs2) = bit_blast_exp te m1 g1 e2 in
     let (p2, cs2) = p1 in
     let (m2, g2) = p2 in
     let (p3, rs) = bit_blast_add g2 rs1 rs2 in
     let (g', cs) = p3 in (((m2, g'), (cat cs1 (cat cs2 cs))), rs)
   | QFBV.QFBV.Bsub ->
     let (p, rs1) = bit_blast_exp te m g e1 in
     let (p0, cs1) = p in
     let (m1, g1) = p0 in
     let (p1, rs2) = bit_blast_exp te m1 g1 e2 in
     let (p2, cs2) = p1 in
     let (m2, g2) = p2 in
     let (p3, rs) = bit_blast_sub g2 rs1 rs2 in
     let (g', cs) = p3 in (((m2, g'), (cat cs1 (cat cs2 cs))), rs)
   | QFBV.QFBV.Bmul ->
     let (p, rs1) = bit_blast_exp te m g e1 in
     let (p0, cs1) = p in
     let (m1, g1) = p0 in
     let (p1, rs2) = bit_blast_exp te m1 g1 e2 in
     let (p2, cs2) = p1 in
     let (m2, g2) = p2 in
     let (p3, rs) = bit_blast_mul g2 rs1 (Obj.magic rs2) in
     let (g', cs) = p3 in (((m2, g'), (cat cs1 (cat cs2 cs))), rs)
   | QFBV.QFBV.Bshl ->
     let (p, ls1) = bit_blast_exp te m g e1 in
     let (p0, cs1) = p in
     let (m1, g1) = p0 in
     let (p1, ls2) = bit_blast_exp te m1 g1 e2 in
     let (p2, cs2) = p1 in
     let (m', g2) = p2 in
     let (p3, ls) = bit_blast_shl g2 ls1 (Obj.magic ls2) in
     let (g', cs) = p3 in (((m', g'), (cat cs1 (cat cs2 cs))), ls)
   | QFBV.QFBV.Blshr ->
     let (p, ls1) = bit_blast_exp te m g e1 in
     let (p0, cs1) = p in
     let (m1, g1) = p0 in
     let (p1, ls2) = bit_blast_exp te m1 g1 e2 in
     let (p2, cs2) = p1 in
     let (m', g2) = p2 in
     let (p3, ls) = bit_blast_lshr g2 ls1 (Obj.magic ls2) in
     let (g', cs) = p3 in (((m', g'), (cat cs1 (cat cs2 cs))), ls)
   | QFBV.QFBV.Bashr ->
     let (p, ls1) = bit_blast_exp te m g e1 in
     let (p0, cs1) = p in
     let (m1, g1) = p0 in
     let (p1, ls2) = bit_blast_exp te m1 g1 e2 in
     let (p2, cs2) = p1 in
     let (m', g2) = p2 in
     let (p3, ls) = bit_blast_ashr g2 ls1 (Obj.magic ls2) in
     let (g', cs) = p3 in (((m', g'), (cat cs1 (cat cs2 cs))), ls)
   | QFBV.QFBV.Bconcat ->
     let (p, rs1) = bit_blast_exp te m g e1 in
     let (p0, cs1) = p in
     let (m1, g1) = p0 in
     let (p1, rs2) = bit_blast_exp te m1 g1 e2 in
     let (p2, cs2) = p1 in
     let (m', g2) = p2 in
     let (p3, rs) = bit_blast_concat g2 rs1 rs2 in
     let (g', cs) = p3 in (((m', g'), (cat cs1 (cat cs2 cs))), rs)
   | _ ->
     let (p, rs1) = bit_blast_exp te m g e1 in
     let (p0, cs1) = p in
     let (m1, g1) = p0 in
     let (p1, _) = bit_blast_exp te m1 g1 e2 in
     let (p2, cs2) = p1 in ((p2, (cat cs1 cs2)), rs1))
| QFBV.QFBV.Eite (c, e1, e2) ->
  let (p, lc) = bit_blast_bexp te m g c in
  let (p0, csc) = p in
  let (mc, gc) = p0 in
  let (p1, ls1) = bit_blast_exp te mc gc e1 in
  let (p2, cs1) = p1 in
  let (m1, g1) = p2 in
  let (p3, ls2) = bit_blast_exp te m1 g1 e2 in
  let (p4, cs2) = p3 in
  let (m2, g2) = p4 in
  let (p5, lsr0) = bit_blast_ite g2 lc ls1 ls2 in
  let (gr, csr) = p5 in (((m2, gr), (cat csc (cat cs1 (cat cs2 csr)))), lsr0)

(** val bit_blast_bexp :
    TypEnv.SSATE.env -> word SSAVM.t -> generator -> QFBV.QFBV.bexp ->
    ((vm * generator) * cnf) * literal **)

and bit_blast_bexp te m g = function
| QFBV.QFBV.Bfalse -> (((m, g), []), lit_ff)
| QFBV.QFBV.Btrue -> (((m, g), []), lit_tt)
| QFBV.QFBV.Bbinop (op, e1, e2) ->
  (match op with
   | QFBV.QFBV.Beq ->
     let (p, ls1) = bit_blast_exp te m g e1 in
     let (p0, cs1) = p in
     let (m1, g1) = p0 in
     let (p1, ls2) = bit_blast_exp te m1 g1 e2 in
     let (p2, cs2) = p1 in
     let (m2, g2) = p2 in
     let (p3, r) = bit_blast_eq g2 ls1 ls2 in
     let (g', cs) = p3 in (((m2, g'), (cat cs1 (cat cs2 cs))), r)
   | QFBV.QFBV.Bult ->
     let (p, ls1) = bit_blast_exp te m g e1 in
     let (p0, cs1) = p in
     let (m1, g1) = p0 in
     let (p1, ls2) = bit_blast_exp te m1 g1 e2 in
     let (p2, cs2) = p1 in
     let (m2, g2) = p2 in
     let (p3, r) = bit_blast_ult g2 ls1 ls2 in
     let (g', cs) = p3 in (((m2, g'), (cat cs1 (cat cs2 cs))), r)
   | QFBV.QFBV.Bule ->
     let (p, ls1) = bit_blast_exp te m g e1 in
     let (p0, cs1) = p in
     let (m1, g1) = p0 in
     let (p1, ls2) = bit_blast_exp te m1 g1 e2 in
     let (p2, cs2) = p1 in
     let (m2, g2) = p2 in
     let (p3, r) = bit_blast_ule g2 ls1 ls2 in
     let (g', cs) = p3 in (((m2, g'), (cat cs1 (cat cs2 cs))), r)
   | QFBV.QFBV.Bugt ->
     let (p, ls1) = bit_blast_exp te m g e1 in
     let (p0, cs1) = p in
     let (m1, g1) = p0 in
     let (p1, ls2) = bit_blast_exp te m1 g1 e2 in
     let (p2, cs2) = p1 in
     let (m2, g2) = p2 in
     let (p3, r) = bit_blast_ugt g2 ls1 ls2 in
     let (g', cs) = p3 in (((m2, g'), (cat cs1 (cat cs2 cs))), r)
   | QFBV.QFBV.Buge ->
     let (p, ls1) = bit_blast_exp te m g e1 in
     let (p0, cs1) = p in
     let (m1, g1) = p0 in
     let (p1, ls2) = bit_blast_exp te m1 g1 e2 in
     let (p2, cs2) = p1 in
     let (m2, g2) = p2 in
     let (p3, r) = bit_blast_uge g2 ls1 ls2 in
     let (g', cs) = p3 in (((m2, g'), (cat cs1 (cat cs2 cs))), r)
   | QFBV.QFBV.Bslt ->
     let (p, ls1) = bit_blast_exp te m g e1 in
     let (p0, cs1) = p in
     let (m1, g1) = p0 in
     let (p1, ls2) = bit_blast_exp te m1 g1 e2 in
     let (p2, cs2) = p1 in
     let (m2, g2) = p2 in
     let (p3, lr) = bit_blast_slt g2 ls1 ls2 in
     let (gr, csr) = p3 in (((m2, gr), (cat cs1 (cat cs2 csr))), lr)
   | QFBV.QFBV.Bsle ->
     let (p, ls1) = bit_blast_exp te m g e1 in
     let (p0, cs1) = p in
     let (m1, g1) = p0 in
     let (p1, ls2) = bit_blast_exp te m1 g1 e2 in
     let (p2, cs2) = p1 in
     let (m2, g2) = p2 in
     let (p3, lr) = bit_blast_sle g2 ls1 ls2 in
     let (gr, csr) = p3 in (((m2, gr), (cat cs1 (cat cs2 csr))), lr)
   | QFBV.QFBV.Bsgt ->
     let (p, ls1) = bit_blast_exp te m g e1 in
     let (p0, cs1) = p in
     let (m1, g1) = p0 in
     let (p1, ls2) = bit_blast_exp te m1 g1 e2 in
     let (p2, cs2) = p1 in
     let (m2, g2) = p2 in
     let (p3, lr) = bit_blast_sgt g2 ls1 ls2 in
     let (gr, csr) = p3 in (((m2, gr), (cat cs1 (cat cs2 csr))), lr)
   | QFBV.QFBV.Bsge ->
     let (p, ls1) = bit_blast_exp te m g e1 in
     let (p0, cs1) = p in
     let (m1, g1) = p0 in
     let (p1, ls2) = bit_blast_exp te m1 g1 e2 in
     let (p2, cs2) = p1 in
     let (m2, g2) = p2 in
     let (p3, lr) = bit_blast_sge g2 ls1 ls2 in
     let (gr, csr) = p3 in (((m2, gr), (cat cs1 (cat cs2 csr))), lr)
   | QFBV.QFBV.Buaddo ->
     let (p, rs1) = bit_blast_exp te m g e1 in
     let (p0, cs1) = p in
     let (m1, g1) = p0 in
     let (p1, rs2) = bit_blast_exp te m1 g1 e2 in
     let (p2, cs2) = p1 in
     let (m2, g2) = p2 in
     let (p3, lr) = bit_blast_uaddo g2 rs1 rs2 in
     let (g', cs) = p3 in (((m2, g'), (cat cs1 (cat cs2 cs))), lr)
   | QFBV.QFBV.Busubo ->
     let (p, rs1) = bit_blast_exp te m g e1 in
     let (p0, cs1) = p in
     let (m1, g1) = p0 in
     let (p1, rs2) = bit_blast_exp te m1 g1 e2 in
     let (p2, cs2) = p1 in
     let (m2, g2) = p2 in
     let (p3, lr) = bit_blast_usubo g2 rs1 rs2 in
     let (g', cs) = p3 in (((m2, g'), (cat cs1 (cat cs2 cs))), lr)
   | QFBV.QFBV.Bumulo ->
     let (p, rs1) = bit_blast_exp te m g e1 in
     let (p0, cs1) = p in
     let (m1, g1) = p0 in
     let (p1, rs2) = bit_blast_exp te m1 g1 e2 in
     let (p2, cs2) = p1 in
     let (m2, g2) = p2 in
     let (p3, lr) = bit_blast_umulo g2 rs1 rs2 in
     let (g', cs) = p3 in (((m2, g'), (cat cs1 (cat cs2 cs))), lr)
   | QFBV.QFBV.Bsaddo ->
     let (p, ls1) = bit_blast_exp te m g e1 in
     let (p0, cs1) = p in
     let (m1, g1) = p0 in
     let (p1, ls2) = bit_blast_exp te m1 g1 e2 in
     let (p2, cs2) = p1 in
     let (m2, g2) = p2 in
     let (p3, lr) = bit_blast_saddo g2 ls1 ls2 in
     let (gr, csr) = p3 in (((m2, gr), (cat cs1 (cat cs2 csr))), lr)
   | QFBV.QFBV.Bssubo ->
     let (p, ls1) = bit_blast_exp te m g e1 in
     let (p0, cs1) = p in
     let (m1, g1) = p0 in
     let (p1, ls2) = bit_blast_exp te m1 g1 e2 in
     let (p2, cs2) = p1 in
     let (m2, g2) = p2 in
     let (p3, lr) = bit_blast_ssubo g2 ls1 ls2 in
     let (gr, csr) = p3 in (((m2, gr), (cat cs1 (cat cs2 csr))), lr)
   | QFBV.QFBV.Bsmulo ->
     let (p, ls1) = bit_blast_exp te m g e1 in
     let (p0, cs1) = p in
     let (m1, g1) = p0 in
     let (p1, ls2) = bit_blast_exp te m1 g1 e2 in
     let (p2, cs2) = p1 in
     let (m2, g2) = p2 in
     let (p3, lr) = bit_blast_smulo g2 ls1 ls2 in
     let (gr, csr) = p3 in (((m2, gr), (cat cs1 (cat cs2 csr))), lr))
| QFBV.QFBV.Blneg e0 ->
  let (p, l1) = bit_blast_bexp te m g e0 in
  let (p0, cs1) = p in
  let (m1, g1) = p0 in
  let (p1, r) = bit_blast_lneg g1 l1 in
  let (g', cs) = p1 in (((m1, g'), (cat cs1 cs)), r)
| QFBV.QFBV.Bconj (e1, e2) ->
  let (p, l1) = bit_blast_bexp te m g e1 in
  let (p0, cs1) = p in
  let (m1, g1) = p0 in
  let (p1, l2) = bit_blast_bexp te m1 g1 e2 in
  let (p2, cs2) = p1 in
  let (m2, g2) = p2 in
  let (p3, r) = bit_blast_conj g2 l1 l2 in
  let (g', cs) = p3 in (((m2, g'), (cat cs1 (cat cs2 cs))), r)
| QFBV.QFBV.Bdisj (e1, e2) ->
  let (p, l1) = bit_blast_bexp te m g e1 in
  let (p0, cs1) = p in
  let (m1, g1) = p0 in
  let (p1, l2) = bit_blast_bexp te m1 g1 e2 in
  let (p2, cs2) = p1 in
  let (m2, g2) = p2 in
  let (p3, r) = bit_blast_disj g2 l1 l2 in
  let (g', cs) = p3 in (((m2, g'), (cat cs1 (cat cs2 cs))), r)
