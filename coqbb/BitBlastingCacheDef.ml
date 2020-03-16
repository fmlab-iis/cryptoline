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

(** val bit_blast_exp_cache :
    TypEnv.SSATE.env -> vm -> cache -> generator -> QFBV.QFBV.exp ->
    (((vm * cache) * generator) * cnf) * word **)

let rec bit_blast_exp_cache te m c g e =
  let bit_blast_exp_nocet = fun te0 m0 c0 g0 e0 ->
    match e0 with
    | QFBV.QFBV.Evar v ->
      (match find_het (Obj.magic e0) c0 with
       | Some p -> let (cs, ls) = p in ((((m0, c0), g0), cs), ls)
       | None ->
         (match SSAVM.find v m0 with
          | Some rs ->
            ((((m0, (add_het (Obj.magic e0) [] rs c0)), g0), []), rs)
          | None ->
            let (p, rs) = bit_blast_var te0 g0 v in
            let (g', cs) = p in
            (((((SSAVM.add v rs m0), (add_het (Obj.magic e0) cs rs c0)), g'),
            cs), rs)))
    | QFBV.QFBV.Econst bs ->
      (match find_het (Obj.magic e0) c0 with
       | Some p -> let (cs, ls) = p in ((((m0, c0), g0), cs), ls)
       | None ->
         let (p, rs) = bit_blast_const g0 bs in
         let (g', cs) = p in
         ((((m0, (add_het (Obj.magic e0) cs rs c0)), g'), cs), rs))
    | QFBV.QFBV.Eunop (op, e1) ->
      let (p, ls1) = bit_blast_exp_cache te0 m0 c0 g0 e1 in
      let (p0, cs1) = p in
      let (p1, g1) = p0 in
      let (m1, c1) = p1 in
      (match find_het (Obj.magic e0) c1 with
       | Some p2 ->
         let (csop, lsop) = p2 in ((((m1, c1), g1), (catrev cs1 csop)), lsop)
       | None ->
         let (p2, lsop) = bit_blast_eunop op g1 ls1 in
         let (gop, csop) = p2 in
         ((((m1, (add_het (Obj.magic e0) csop lsop c1)), gop),
         (catrev cs1 csop)), lsop))
    | QFBV.QFBV.Ebinop (op, e1, e2) ->
      let (p, ls1) = bit_blast_exp_cache te0 m0 c0 g0 e1 in
      let (p0, cs1) = p in
      let (p1, g1) = p0 in
      let (m1, c1) = p1 in
      let (p2, ls2) = bit_blast_exp_cache te0 m1 c1 g1 e2 in
      let (p3, cs2) = p2 in
      let (p4, g2) = p3 in
      let (m2, c2) = p4 in
      (match find_het (Obj.magic e0) c2 with
       | Some p5 ->
         let (csop, lsop) = p5 in
         ((((m2, c2), g2), (catrev cs1 (catrev cs2 csop))), lsop)
       | None ->
         let (p5, lsop) = bit_blast_ebinop op g2 ls1 ls2 in
         let (gop, csop) = p5 in
         ((((m2, (add_het (Obj.magic e0) csop lsop c2)), gop),
         (catrev cs1 (catrev cs2 csop))), lsop))
    | QFBV.QFBV.Eite (b, e1, e2) ->
      let (p, lb) = bit_blast_bexp_cache te0 m0 c0 g0 b in
      let (p0, csb) = p in
      let (p1, gb) = p0 in
      let (mb, cb) = p1 in
      let (p2, ls1) = bit_blast_exp_cache te0 mb cb gb e1 in
      let (p3, cs1) = p2 in
      let (p4, g1) = p3 in
      let (m1, c1) = p4 in
      let (p5, ls2) = bit_blast_exp_cache te0 m1 c1 g1 e2 in
      let (p6, cs2) = p5 in
      let (p7, g2) = p6 in
      let (m2, c2) = p7 in
      (match find_het (Obj.magic e0) c2 with
       | Some p8 ->
         let (csop, lsop) = p8 in
         ((((m2, c2), g2), (catrev csb (catrev cs1 (catrev cs2 csop)))), lsop)
       | None ->
         let (p8, lsop) = bit_blast_ite g2 lb ls1 ls2 in
         let (gop, csop) = p8 in
         ((((m2, (add_het (Obj.magic e0) csop lsop c2)), gop),
         (catrev csb (catrev cs1 (catrev cs2 csop)))), lsop))
  in
  (match find_cet (Obj.magic e) c with
   | Some ls -> ((((m, c), g), []), ls)
   | None ->
     let (p, lrs) = bit_blast_exp_nocet te m c g e in
     let (p0, cs) = p in
     let (p1, g') = p0 in
     let (m', c') = p1 in
     ((((m', (add_cet (Obj.magic e) lrs c')), g'), cs), lrs))

(** val bit_blast_bexp_cache :
    TypEnv.SSATE.env -> vm -> cache -> generator -> QFBV.QFBV.bexp ->
    (((vm * cache) * generator) * cnf) * literal **)

and bit_blast_bexp_cache te m c g e =
  let bit_blast_bexp_nocbt = fun te0 m0 c0 g0 e0 ->
    match e0 with
    | QFBV.QFBV.Bfalse ->
      (match find_hbt (Obj.magic e0) c0 with
       | Some p -> let (cs, l) = p in ((((m0, c0), g0), cs), l)
       | None ->
         ((((m0, (add_hbt (Obj.magic e0) [] lit_ff c0)), g0), []), lit_ff))
    | QFBV.QFBV.Btrue ->
      (match find_hbt (Obj.magic e0) c0 with
       | Some p -> let (cs, l) = p in ((((m0, c0), g0), cs), l)
       | None ->
         ((((m0, (add_hbt (Obj.magic e0) [] lit_tt c0)), g0), []), lit_tt))
    | QFBV.QFBV.Bbinop (op, e1, e2) ->
      let (p, ls1) = bit_blast_exp_cache te0 m0 c0 g0 e1 in
      let (p0, cs1) = p in
      let (p1, g1) = p0 in
      let (m1, c1) = p1 in
      let (p2, ls2) = bit_blast_exp_cache te0 m1 c1 g1 e2 in
      let (p3, cs2) = p2 in
      let (p4, g2) = p3 in
      let (m2, c2) = p4 in
      (match find_hbt (Obj.magic e0) c2 with
       | Some p5 ->
         let (csop, lop) = p5 in
         ((((m2, c2), g2), (catrev cs1 (catrev cs2 csop))), lop)
       | None ->
         let (p5, lop) = bit_blast_bbinop op g2 ls1 ls2 in
         let (gop, csop) = p5 in
         ((((m2, (add_hbt (Obj.magic e0) csop lop c2)), gop),
         (catrev cs1 (catrev cs2 csop))), lop))
    | QFBV.QFBV.Blneg e1 ->
      let (p, l1) = bit_blast_bexp_cache te0 m0 c0 g0 e1 in
      let (p0, cs1) = p in
      let (p1, g1) = p0 in
      let (m1, c1) = p1 in
      (match find_hbt (Obj.magic e0) c1 with
       | Some p2 ->
         let (csop, lop) = p2 in ((((m1, c1), g1), (catrev cs1 csop)), lop)
       | None ->
         let (p2, lop) = bit_blast_lneg g1 l1 in
         let (gop, csop) = p2 in
         ((((m1, (add_hbt (Obj.magic e0) csop lop c1)), gop),
         (catrev cs1 csop)), lop))
    | QFBV.QFBV.Bconj (e1, e2) ->
      let (p, l1) = bit_blast_bexp_cache te0 m0 c0 g0 e1 in
      let (p0, cs1) = p in
      let (p1, g1) = p0 in
      let (m1, c1) = p1 in
      let (p2, l2) = bit_blast_bexp_cache te0 m1 c1 g1 e2 in
      let (p3, cs2) = p2 in
      let (p4, g2) = p3 in
      let (m2, c2) = p4 in
      (match find_hbt (Obj.magic e0) c2 with
       | Some p5 ->
         let (csop, lop) = p5 in
         ((((m2, c2), g2), (catrev cs1 (catrev cs2 csop))), lop)
       | None ->
         let (p5, lop) = bit_blast_conj g2 l1 l2 in
         let (gop, csop) = p5 in
         ((((m2, (add_hbt (Obj.magic e0) csop lop c2)), gop),
         (catrev cs1 (catrev cs2 csop))), lop))
    | QFBV.QFBV.Bdisj (e1, e2) ->
      let (p, l1) = bit_blast_bexp_cache te0 m0 c0 g0 e1 in
      let (p0, cs1) = p in
      let (p1, g1) = p0 in
      let (m1, c1) = p1 in
      let (p2, l2) = bit_blast_bexp_cache te0 m1 c1 g1 e2 in
      let (p3, cs2) = p2 in
      let (p4, g2) = p3 in
      let (m2, c2) = p4 in
      (match find_hbt (Obj.magic e0) c2 with
       | Some p5 ->
         let (csop, lop) = p5 in
         ((((m2, c2), g2), (catrev cs1 (catrev cs2 csop))), lop)
       | None ->
         let (p5, lop) = bit_blast_disj g2 l1 l2 in
         let (gop, csop) = p5 in
         ((((m2, (add_hbt (Obj.magic e0) csop lop c2)), gop),
         (catrev cs1 (catrev cs2 csop))), lop))
  in
  (match find_cbt (Obj.magic e) c with
   | Some l -> ((((m, c), g), []), l)
   | None ->
     let (p, lr) = bit_blast_bexp_nocbt te m c g e in
     let (p0, cs) = p in
     let (p1, g') = p0 in
     let (m', c') = p1 in
     ((((m', (add_cbt (Obj.magic e) lr c')), g'), cs), lr))
