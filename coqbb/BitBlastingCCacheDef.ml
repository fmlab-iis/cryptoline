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
open CompCache
open Var
open Seq

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

(** val bit_blast_exp_ccache :
    TypEnv.SSATE.env -> vm -> compcache -> generator -> QFBV.QFBV.exp ->
    (((vm * compcache) * generator) * cnf) * word **)

let rec bit_blast_exp_ccache te m cc g e =
  let bit_blast_exp_nocet = fun te0 m0 cc0 g0 e0 ->
    match e0 with
    | QFBV.QFBV.Evar v ->
      (match find_het (Obj.magic e0) cc0 with
       | Some p -> let (cs, ls) = p in (((((m0, cc0), g0), cs), ls), cs)
       | None ->
         (match SSAVM.find v m0 with
          | Some rs ->
            (((((m0, (add_het (Obj.magic e0) [] rs cc0)), g0), []), rs), [])
          | None ->
            let (p, rs) = bit_blast_var te0 g0 v in
            let (g', cs) = p in
            ((((((SSAVM.add v rs m0), (add_het (Obj.magic e0) cs rs cc0)),
            g'), cs), rs), cs)))
    | QFBV.QFBV.Econst bs ->
      (match find_het (Obj.magic e0) cc0 with
       | Some p -> let (cs, ls) = p in (((((m0, cc0), g0), cs), ls), cs)
       | None ->
         let (p, rs) = bit_blast_const g0 bs in
         let (g', cs) = p in
         (((((m0, (add_het (Obj.magic e0) cs rs cc0)), g'), cs), rs), cs))
    | QFBV.QFBV.Eunop (op, e1) ->
      let (p, ls1) = bit_blast_exp_ccache te0 m0 cc0 g0 e1 in
      let (p0, cs1) = p in
      let (p1, g1) = p0 in
      let (m1, cc1) = p1 in
      (match find_het (Obj.magic e0) cc1 with
       | Some p2 ->
         let (csop, lsop) = p2 in
         (((((m1, cc1), g1), (catrev cs1 csop)), lsop), csop)
       | None ->
         let (p2, lsop) = bit_blast_eunop op g1 ls1 in
         let (gop, csop) = p2 in
         (((((m1, (add_het (Obj.magic e0) csop lsop cc1)), gop),
         (catrev cs1 csop)), lsop), csop))
    | QFBV.QFBV.Ebinop (op, e1, e2) ->
      let (p, ls1) = bit_blast_exp_ccache te0 m0 cc0 g0 e1 in
      let (p0, cs1) = p in
      let (p1, g1) = p0 in
      let (m1, cc1) = p1 in
      let (p2, ls2) = bit_blast_exp_ccache te0 m1 cc1 g1 e2 in
      let (p3, cs2) = p2 in
      let (p4, g2) = p3 in
      let (m2, cc2) = p4 in
      (match find_het (Obj.magic e0) cc2 with
       | Some p5 ->
         let (csop, lsop) = p5 in
         (((((m2, cc2), g2), (catrev cs1 (catrev cs2 csop))), lsop), csop)
       | None ->
         let (p5, lsop) = bit_blast_ebinop op g2 ls1 ls2 in
         let (gop, csop) = p5 in
         (((((m2, (add_het (Obj.magic e0) csop lsop cc2)), gop),
         (catrev cs1 (catrev cs2 csop))), lsop), csop))
    | QFBV.QFBV.Eite (c, e1, e2) ->
      let (p, lc) = bit_blast_bexp_ccache te0 m0 cc0 g0 c in
      let (p0, csc) = p in
      let (p1, gc) = p0 in
      let (mc, ccc) = p1 in
      let (p2, ls1) = bit_blast_exp_ccache te0 mc ccc gc e1 in
      let (p3, cs1) = p2 in
      let (p4, g1) = p3 in
      let (m1, cc1) = p4 in
      let (p5, ls2) = bit_blast_exp_ccache te0 m1 cc1 g1 e2 in
      let (p6, cs2) = p5 in
      let (p7, g2) = p6 in
      let (m2, cc2) = p7 in
      (match find_het (Obj.magic e0) cc2 with
       | Some p8 ->
         let (csop, lsop) = p8 in
         (((((m2, cc2), g2), (catrev csc (catrev cs1 (catrev cs2 csop)))),
         lsop), csop)
       | None ->
         let (p8, lsop) = bit_blast_ite g2 lc ls1 ls2 in
         let (gop, csop) = p8 in
         (((((m2, (add_het (Obj.magic e0) csop lsop cc2)), gop),
         (catrev csc (catrev cs1 (catrev cs2 csop)))), lsop), csop))
  in
  (match find_cet (Obj.magic e) cc with
   | Some p -> let (_, ls) = p in ((((m, cc), g), []), ls)
   | None ->
     let (p, csop) = bit_blast_exp_nocet te m cc g e in
     let (p0, lrs) = p in
     let (p1, cs) = p0 in
     let (p2, g') = p1 in
     let (m', cc') = p2 in
     ((((m', (add_cet (Obj.magic e) csop lrs cc')), g'), cs), lrs))

(** val bit_blast_bexp_ccache :
    TypEnv.SSATE.env -> vm -> compcache -> generator -> QFBV.QFBV.bexp ->
    (((vm * compcache) * generator) * cnf) * literal **)

and bit_blast_bexp_ccache te m cc g e =
  let bit_blast_bexp_nocbt = fun te0 m0 cc0 g0 e0 ->
    match e0 with
    | QFBV.QFBV.Bfalse ->
      (match find_hbt (Obj.magic e0) cc0 with
       | Some p -> let (cs, l) = p in (((((m0, cc0), g0), cs), l), cs)
       | None ->
         (((((m0, (add_hbt (Obj.magic e0) [] lit_ff cc0)), g0), []), lit_ff),
           []))
    | QFBV.QFBV.Btrue ->
      (match find_hbt (Obj.magic e0) cc0 with
       | Some p -> let (cs, l) = p in (((((m0, cc0), g0), cs), l), cs)
       | None ->
         (((((m0, (add_hbt (Obj.magic e0) [] lit_tt cc0)), g0), []), lit_tt),
           []))
    | QFBV.QFBV.Bbinop (op, e1, e2) ->
      let (p, ls1) = bit_blast_exp_ccache te0 m0 cc0 g0 e1 in
      let (p0, cs1) = p in
      let (p1, g1) = p0 in
      let (m1, cc1) = p1 in
      let (p2, ls2) = bit_blast_exp_ccache te0 m1 cc1 g1 e2 in
      let (p3, cs2) = p2 in
      let (p4, g2) = p3 in
      let (m2, cc2) = p4 in
      (match find_hbt (Obj.magic e0) cc2 with
       | Some p5 ->
         let (csop, lop) = p5 in
         (((((m2, cc2), g2), (catrev cs1 (catrev cs2 csop))), lop), csop)
       | None ->
         let (p5, lop) = bit_blast_bbinop op g2 ls1 ls2 in
         let (gop, csop) = p5 in
         (((((m2, (add_hbt (Obj.magic e0) csop lop cc2)), gop),
         (catrev cs1 (catrev cs2 csop))), lop), csop))
    | QFBV.QFBV.Blneg e1 ->
      let (p, l1) = bit_blast_bexp_ccache te0 m0 cc0 g0 e1 in
      let (p0, cs1) = p in
      let (p1, g1) = p0 in
      let (m1, cc1) = p1 in
      (match find_hbt (Obj.magic e0) cc1 with
       | Some p2 ->
         let (csop, lop) = p2 in
         (((((m1, cc1), g1), (catrev cs1 csop)), lop), csop)
       | None ->
         let (p2, lop) = bit_blast_lneg g1 l1 in
         let (gop, csop) = p2 in
         (((((m1, (add_hbt (Obj.magic e0) csop lop cc1)), gop),
         (catrev cs1 csop)), lop), csop))
    | QFBV.QFBV.Bconj (e1, e2) ->
      let (p, l1) = bit_blast_bexp_ccache te0 m0 cc0 g0 e1 in
      let (p0, cs1) = p in
      let (p1, g1) = p0 in
      let (m1, cc1) = p1 in
      let (p2, l2) = bit_blast_bexp_ccache te0 m1 cc1 g1 e2 in
      let (p3, cs2) = p2 in
      let (p4, g2) = p3 in
      let (m2, cc2) = p4 in
      (match find_hbt (Obj.magic e0) cc2 with
       | Some p5 ->
         let (csop, lop) = p5 in
         (((((m2, cc2), g2), (catrev cs1 (catrev cs2 csop))), lop), csop)
       | None ->
         let (p5, lop) = bit_blast_conj g2 l1 l2 in
         let (gop, csop) = p5 in
         (((((m2, (add_hbt (Obj.magic e0) csop lop cc2)), gop),
         (catrev cs1 (catrev cs2 csop))), lop), csop))
    | QFBV.QFBV.Bdisj (e1, e2) ->
      let (p, l1) = bit_blast_bexp_ccache te0 m0 cc0 g0 e1 in
      let (p0, cs1) = p in
      let (p1, g1) = p0 in
      let (m1, cc1) = p1 in
      let (p2, l2) = bit_blast_bexp_ccache te0 m1 cc1 g1 e2 in
      let (p3, cs2) = p2 in
      let (p4, g2) = p3 in
      let (m2, cc2) = p4 in
      (match find_hbt (Obj.magic e0) cc2 with
       | Some p5 ->
         let (csop, lop) = p5 in
         (((((m2, cc2), g2), (catrev cs1 (catrev cs2 csop))), lop), csop)
       | None ->
         let (p5, lop) = bit_blast_disj g2 l1 l2 in
         let (gop, csop) = p5 in
         (((((m2, (add_hbt (Obj.magic e0) csop lop cc2)), gop),
         (catrev cs1 (catrev cs2 csop))), lop), csop))
  in
  (match find_cbt (Obj.magic e) cc with
   | Some p -> let (_, l) = p in ((((m, cc), g), []), l)
   | None ->
     let (p, csop) = bit_blast_bexp_nocbt te m cc g e in
     let (p0, lr) = p in
     let (p1, cs) = p0 in
     let (p2, g') = p1 in
     let (m', cc') = p2 in
     ((((m', (add_cbt (Obj.magic e) csop lr cc')), g'), cs), lr))
