open BBCommon
open BBIte
open CNF
open Datatypes
open Eqtype
open Seq
open Ssrnat

(** val bit_blast_lshr_int1 :
    generator -> literal list -> (generator * cnf) * word **)

let bit_blast_lshr_int1 g ls =
  ((g, []), (droplsl (joinmsl ls lit_ff)))

(** val bit_blast_lshr_int :
    generator -> word -> nat -> (generator * cnf) * word **)

let rec bit_blast_lshr_int g ls = function
| O -> ((g, []), ls)
| S m ->
  let (p, ls_m) = bit_blast_lshr_int g ls m in
  let (g_m, cs_m) = p in
  let (p0, ls1) = bit_blast_lshr_int1 g_m ls_m in
  let (g1, cs1) = p0 in ((g1, (catrev cs_m cs1)), ls1)

(** val bit_blast_lshr_rec :
    generator -> word -> Equality.sort list -> nat -> (generator * cnf) * word **)

let rec bit_blast_lshr_rec g ls ns i =
  match ns with
  | [] -> ((g, []), ls)
  | ns_hd :: ns_tl ->
    let (p, ls_tl) = bit_blast_lshr_rec g ls ns_tl (muln (S (S O)) i) in
    let (g_tl, cs_tl) = p in
    let (p0, ls_hd) = bit_blast_lshr_int g_tl ls_tl i in
    let (g_hd, cs_hd) = p0 in
    if eq_op lit_eqType ns_hd (Obj.magic lit_tt)
    then ((g_hd, (catrev cs_tl cs_hd)), ls_hd)
    else if eq_op lit_eqType ns_hd (Obj.magic lit_ff)
         then ((g_tl, cs_tl), ls_tl)
         else let (p1, ls_ite) =
                bit_blast_ite g_hd (Obj.magic ns_hd) ls_hd ls_tl
              in
              let (g_ite, cs_ite) = p1 in
              ((g_ite, (catrev cs_tl (catrev cs_hd cs_ite))), ls_ite)

(** val bit_blast_lshr :
    generator -> word -> Equality.sort list -> (generator * cnf) * word **)

let bit_blast_lshr g ls ns =
  bit_blast_lshr_rec g ls ns (S O)
