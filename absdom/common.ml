
open Ast.Cryptoline
open Apron
open Utils.Std

type 'a manager_t = 'a Manager.t * Environment.t

type 'a abs_t = 'a Abstract1.t

type domain =
  [
  | `Box
  | `Oct
  | `Polka
  (*
  | `Ppl
  | `PolkaGrid
   *)
  ]

let default_domain = `Box

let domain = ref default_domain

type polka_flavor =
  [
  | `Loose
  | `Strict
  | `Equalities
  ]

let default_polka_flavor = `Strict

let polka_flavor = ref default_polka_flavor

let string_of_domain d =
  match d with
  | `Box -> "box"
  | `Oct -> "oct"
  | `Polka -> "polka"

let domain_of_string s =
  if s = "box" then `Box
  else if s = "oct" then `Oct
  else if s = "polka" then `Polka
  else raise (Invalid_argument ("Unknown domain " ^ s))

(* Auxiliary functions for Apron *)

let string_of_abs abs = String.trim (Format.asprintf "%a@." Abstract1.print abs)
let _string_of_interval iv = String.trim (Format.asprintf "%a@." Interval.print iv)
let _string_of_texpr e = String.trim (Format.asprintf "%a@." Texpr1.print e)
let _string_of_tcons e = String.trim (Format.asprintf "%a@." Tcons1.print e)
let _string_of_dom (_mgr, _env) dom =
  let buf = Buffer.create 16 in
  let buf_fmtter = Format.formatter_of_buffer buf in
  let _ = Abstract1.print buf_fmtter dom in
  let _ = Format.pp_print_flush buf_fmtter () in
  Buffer.contents buf

let top (mgr, env) = Abstract1.top mgr env
let bottom (mgr, env) = Abstract1.bottom mgr env

let is_top (mgr, _) dom = Abstract1.is_top mgr dom
let is_bottom (mgr, _) dom = Abstract1.is_bottom mgr dom

let apvar v = Var.of_string (string_of_var v)

let interval_union i0 i1 =
  let inf0 = i0.Interval.inf in
  let inf1 = i1.Interval.inf in
  let inf = if Scalar.cmp inf0 inf1 < 0 then inf0
            else if Scalar.cmp inf0 inf1 > 0 then inf1
            else inf0 in
  let sup0 = i0.Interval.sup in
  let sup1 = i1.Interval.sup in
  let sup = if Scalar.cmp sup0 sup1 > 0 then sup0
            else if Scalar.cmp sup0 sup1 < 0 then sup1
            else sup0 in
  Interval.of_infsup inf sup

let interval_of_typ typ =
  match typ with
  | Tuint sz ->
     let upper = Mpq.init () in
     let _ = Mpq.mul_2exp upper (Mpq.of_int 1) sz in
     let _ = Mpq.sub upper upper (Mpq.of_int 1) in
     Interval.of_mpq (Mpq.of_int 0) upper
  | Tsint sz ->
     let lower = Mpq.init () in
     let _ = Mpq.mul_2exp lower (Mpq.of_int 1) (pred sz) in
     let _ = Mpq.neg lower lower in
     let upper = Mpq.init () in
     let _ = Mpq.mul_2exp upper (Mpq.of_int 1) (pred sz) in
     let _ = Mpq.sub upper upper (Mpq.of_int 1) in
     Interval.of_mpq lower upper

let interval_of_atom mgr dom a =
  match a with
  | Avar v -> Abstract1.bound_variable mgr dom (apvar v)
  | Aconst (_, z) -> Interval.of_mpq (Mpq.of_string (Z.to_string z))
                       (Mpq.of_string (Z.to_string z))

let _interval_of_texpr mgr abs e = Abstract1.bound_texpr mgr abs e

let interval_of_var mgr dom v =
  Abstract1.bound_variable mgr dom (apvar v)
let zinterval_of_var (mgr, _) dom v =
  let ivl = interval_of_var mgr dom v in
  (Z.of_string (Scalar.to_string (ivl.Interval.inf)),
   Z.of_string (Scalar.to_string (ivl.Interval.sup)))

let texpr_var env v =
  Texpr1.var env (apvar v)
let texpr_cst env z =
  Texpr1.cst env (Coeff.s_of_mpq (Mpq.of_string (Z.to_string z)))
let texpr_neg te =
  Texpr1.unop Texpr1.Neg te Texpr1.Int Texpr1.Near
let texpr_add te' te'' =
  Texpr1.binop Texpr1.Add te' te'' Texpr1.Int Texpr1.Near
let texpr_sub te' te'' =
  Texpr1.binop Texpr1.Sub te' te'' Texpr1.Int Texpr1.Near
let texpr_pow te' te'' =
  Texpr1.binop Texpr1.Pow te' te'' Texpr1.Int Texpr1.Down
let texpr_pow2e env i =
  texpr_pow (texpr_cst env (Z.of_int 2)) i
let texpr_pow2i env i =
  let ret = Mpq.init () in
  let _ = Mpq.mul_2exp ret (Mpq.of_int 1) i in
  Texpr1.cst env (Coeff.s_of_mpq ret)
let texpr_mul te' te'' =
  Texpr1.binop Texpr1.Mul te' te'' Texpr1.Int Texpr1.Near
let texpr_mul2i env e i =
  texpr_mul e (texpr_pow2i env i)
let texpr_mul2e env e i =
  texpr_mul e (texpr_pow2e env i)
(* DO NOT CHANGE THE DEFAULT ROUNDING *)
let texpr_div ?(round=Texpr1.Down) te' te'' =
  Texpr1.binop Texpr1.Div te' te'' Texpr1.Int round
let texpr_div2e ?(round=Texpr1.Down) env e i =
  texpr_div ~round e (texpr_pow2e env i)
let texpr_div2i ?(round=Texpr1.Down) env e i =
  texpr_div ~round e (texpr_pow2i env i)
let texpr_mod ?(round=Texpr1.Down) te' te'' =
  Texpr1.binop Texpr1.Mod te' te'' Texpr1.Int round
let texpr_mod2e ?(round=Texpr1.Down) env e i =
  texpr_mod ~round e (texpr_pow2e env i)
let texpr_mod2i ?(round=Texpr1.Down) env e i =
  texpr_mod ~round e (texpr_pow2i env i)
let texpr_nondet env ty =
  let lo, hi =
    match ty with
    | Tuint sz ->
       let ret = Mpq.init () in
       let _ = Mpq.mul_2exp ret (Mpq.of_int 1) sz in
       let _ = Mpq.sub ret ret (Mpq.of_int 1) in
       Mpq.of_int 0, ret
    | Tsint sz ->
       let h = Mpq.init () in
       let l = Mpq.init () in
       let _ = Mpq.mul_2exp h (Mpq.of_int 1) (pred sz) in
       let _ = Mpq.sub h h (Mpq.of_int 1) in
       let _ = Mpq.mul_2exp l (Mpq.of_int 1) (pred sz) in
       let _ = Mpq.neg l l in
       l, h in
  Texpr1.cst env (Coeff.i_of_mpq lo hi)
let texpr_one env = texpr_cst env Z.one
let texpr_zero env = texpr_cst env Z.zero

let tcons_lt tel ter =
  let te = Texpr1.binop Texpr1.Sub ter tel Texpr1.Int Texpr1.Near in
  Tcons1.make te Tcons1.SUP
let tcons_le tel ter =
  let te = Texpr1.binop Texpr1.Sub ter tel Texpr1.Int Texpr1.Near in
  Tcons1.make te Tcons1.SUPEQ
let tcons_eq tel ter =
  let te = Texpr1.binop Texpr1.Sub ter tel Texpr1.Int Texpr1.Near in
  Tcons1.make te Tcons1.EQ
let tcons_deq tel ter =
  let te = Texpr1.binop Texpr1.Sub ter tel Texpr1.Int Texpr1.Near in
  Tcons1.make te Tcons1.DISEQ

let texpr_of_atom env a =
  match a with
  | Avar v -> texpr_var env v
  | Aconst (_, z) -> texpr_cst env z

let meet (mgr, _env) dom0 dom1 = Abstract1.meet mgr dom0 dom1

(* create_env vs creates an Environment from vs *)
let create_manager vs =
  let vars = List.rev_map apvar
               (VS.elements vs) in
  let ret = Environment.make (Array.of_list vars) [| |] in
  match !domain with
  | `Box -> (Box.manager_of_box (Box.manager_alloc ()), ret)
  | `Oct -> (Oct.manager_of_oct (Oct.manager_alloc ()), ret)
  | `Polka -> let m =
                match !polka_flavor with
                | `Loose -> Polka.manager_of_polka_loose (Polka.manager_alloc_loose ())
                | `Strict -> Polka.manager_of_polka_strict (Polka.manager_alloc_strict ())
                | `Equalities -> Polka.manager_of_polka_equalities (Polka.manager_alloc_equalities ()) in
              (m, ret)
 (*
  | `Ppl -> let m =
                match !ppl_flavor with
                | `Loose -> Ppl.manager_of_ppl_loose (Ppl.manager_alloc_loose ())
                | `Strict -> Ppl.manager_of_ppl_strict (Ppl.manager_alloc_strict ())
                | `Grid -> Ppl.manager_of_ppl_grid (Ppl.manager_alloc_grid ()) in
              (m, ret)
  | `PolkaGrid -> (PolkaGrid.manager_of_polkagrid (PolkaGrid.manager_alloc ()), ret)
 *)

let var_bound_dom mgr env v =
  Abstract1.of_box mgr env [| apvar v |] [| interval_of_typ (typ_of_var v) |]

let vars_bounds_dom mgr env vars =
  let var_ary = Array.of_list vars in
  let apvar_ary = Array.map apvar var_ary in
  let intervals = Array.map (fun v -> interval_of_typ (typ_of_var v))
                    var_ary in
  Abstract1.of_box mgr env apvar_ary intervals

let abs_of_vars (mgr, env) vars = vars_bounds_dom mgr env (VS.elements vars)

let texpr_to_unsigned_i env w e =
  texpr_mod2i env (texpr_add e (texpr_pow2i env w)) w
let texpr_to_signed_i env w e =
  let tmp = texpr_pow2i env (w - 1) in
  texpr_sub (texpr_mod2i env (texpr_add e tmp) w) tmp
let _texpr_to_signed_e env w e =
  let tmp = texpr_pow2e env (texpr_sub w (texpr_one env)) in
  texpr_sub (texpr_mod2e env (texpr_add e tmp) w) tmp
(* apply a signed extension to an unsigned numbe *)
let texpr_sext env w e i =
  if i < 0 then failwith ("The size of signed extension in texpr_sext must be nonnegative.")
  else if i = 0 then e
  else let sign_bit = texpr_div2i env e (w - 1) in
       let grow = texpr_sub (texpr_pow2i env (w + i)) (texpr_pow2i env w) in
       texpr_add e (texpr_mul sign_bit grow)
(* signed split: vh * 2^i + vl = e, 0 <= vl < 2^i, sign of vh follows the sign of e *)
let texpr_split_i env e i =
  let vh = texpr_div2i env e i in
  let vl = texpr_sub e (texpr_mul2i env vh i) in
  (vh, vl)
let texpr_split_e env e i =
  let vh = texpr_div2e env e i in
  let vl = texpr_sub e (texpr_mul2e env vh i) in
  (vh, vl)
let texpr_eucl_rem2i env e i = snd (texpr_split_i env e i)
let _texpr_eucl_rem2e env e i = snd (texpr_split_e env e i)

let rcmpop_is_signed op =
  match op with
  | Rult | Rule | Rugt | Ruge -> false
  | Rslt | Rsle | Rsgt | Rsge -> true

let texpr_bv_add ?(safe=true) env w signed ta0 ta1 =
  if safe then texpr_add ta0 ta1
  else let tsum = let uta0 = if signed then texpr_to_unsigned_i env w ta0 else ta0 in
                  let uta1 = if signed then texpr_to_unsigned_i env w ta1 else ta1 in
                  texpr_add uta0 uta1 in
       let tv = texpr_mod2i env tsum w in
       if signed then texpr_to_signed_i env w tv else tv

let texpr_bv_sub ?(safe=true) env w signed ta0 ta1 =
  if safe then texpr_sub ta0 ta1
  else let tsub = let uta0 = if signed then texpr_to_unsigned_i env w ta0 else ta0 in
                  let uta1 = if signed then texpr_to_unsigned_i env w ta1 else ta1 in
                  texpr_add (texpr_sub uta0 uta1) (texpr_pow2i env w) in
       let tv = texpr_mod2i env tsub w in
       if signed then texpr_to_signed_i env w tv else tv

let texpr_bv_mul ?(safe=true) env w signed ta0 ta1 =
  if safe then texpr_mul ta0 ta1
  else let tmul = texpr_mul ta0 ta1 in
       let tvh = texpr_div2i env tmul w in
       let tv = texpr_sub tmul (texpr_mul tvh (texpr_pow2i env w)) in
       if signed then texpr_to_signed_i env w tv else tv

let texpr_bv_shl ?(safe=true) env w signed ta0 ta1 =
  if safe then texpr_mul ta0 (texpr_pow2e env ta1)
  else let tv = texpr_eucl_rem2i env (texpr_mul2e env ta0 ta1) w in
       if signed then texpr_to_signed_i env w tv else tv

let texpr_bv_shr ?(safe=true) env w signed ta0 ta1 =
  if safe then texpr_div2e env ta0 ta1
  else let uta0 = if signed then texpr_to_unsigned_i env w ta0 else ta0 in
       texpr_div2e env uta0 ta1

let texpr_bv_sar env w signed ta0 ta1 =
  let sta0 = if signed then ta0 else texpr_to_signed_i env w ta0 in
  let re = texpr_div2e env sta0 ta1 in
  if signed then re else texpr_to_unsigned_i env w re

let texpr_bv_cat env sz1 te0 te1 =
  texpr_add (texpr_mul2i env te0 sz1) te1

let texpr_bv_const ~signed env w z =
  let tz = texpr_cst env z in
  let utz = texpr_to_unsigned_i env w tz in
  if signed then texpr_to_signed_i env w utz else utz

let texpr_bv_not ~signed env sz te =
  if signed then texpr_sub (texpr_neg te) (texpr_one env)
  else texpr_sub (texpr_sub (texpr_pow2i env sz) (texpr_one env)) te

let texpr_bv_umod ~signed env sz te0 te1 =
  let ute0 = if signed then texpr_to_unsigned_i env sz te0 else te0 in
  let ute1 = if signed then texpr_to_unsigned_i env sz te1 else te1 in
  let tvh = texpr_div ~round:Apron.Texpr1.Down ute0 ute1 in
  let tvl = texpr_sub te0 (texpr_mul tvh te1) in
  if signed then texpr_to_signed_i env sz tvl else tvl

let texpr_bv_srem ~signed env sz te0 te1 =
  let ste0 = if signed then te0 else texpr_to_signed_i env sz te0 in
  let ste1 = if signed then te1 else texpr_to_signed_i env sz te1 in
  let tvh = texpr_div ~round:Apron.Texpr1.Zero ste0 ste1 in
  let tvl = texpr_sub ste0 (texpr_mul tvh ste1) in
  if signed then tvl else texpr_to_unsigned_i env sz tvl

let texpr_bv_smod ~signed env sz te0 te1 =
  let ste0 = if signed then te0 else texpr_to_signed_i env sz te0 in
  let ste1 = if signed then te1 else texpr_to_signed_i env sz te1 in
  let tvh = texpr_div ~round:Apron.Texpr1.Down ste0 ste1 in
  let tvl = texpr_sub ste0 (texpr_mul tvh ste1) in
  if signed then tvl else texpr_to_unsigned_i env sz tvl

let texpr_bv_rol ~signed_res ~signed_atom0 env w ta0 ta1 =
  let uta0 = if signed_atom0 then texpr_to_unsigned_i env w ta0 else ta0 in
  let (tvh, tvl) = texpr_split_e env uta0 (texpr_sub (texpr_cst env (Z.of_int w)) ta1) in
  let tv = texpr_add tvh (texpr_mul2e env tvl ta1) in
  if signed_res then texpr_to_signed_i env w tv else tv

let texpr_bv_ror ~signed_res ~signed_atom0 env w ta0 ta1 =
  let uta0 = if signed_atom0 then texpr_to_unsigned_i env w ta0 else ta0 in
  let (tvh, tvl) = texpr_split_e env uta0 ta1 in
  let tv = texpr_add tvh (texpr_mul2e env tvl (texpr_sub (texpr_cst env (Z.of_int w)) ta1)) in
  if signed_res then texpr_to_signed_i env w tv else tv

let texpr_of_rexp ~signed mgr env abs re =
  let uext_safe te = if signed then Abstract1.sat_tcons mgr abs (tcons_le (texpr_zero env) te)
                     else true in
  let sext_safe w te = if signed then true
                       else Abstract1.sat_tcons mgr abs (tcons_lt te (texpr_pow2i env (w - 1))) in
  let rneg_safe w te = if signed then Abstract1.sat_tcons mgr abs (tcons_lt (texpr_neg (texpr_pow2i env (w - 1))) te)
                       else false in
  let rec helper ?(signed=signed) re =
    match re with
    | Rvar v -> let re = let tv = texpr_var env v in
                         if var_is_signed v then if signed then tv
                                                 else texpr_to_unsigned_i env (size_of_var v) tv
                         else if signed then texpr_to_signed_i env (size_of_var v) tv
                         else tv in
                Some re
    | Rconst (sz, z) -> Some (texpr_bv_const ~signed env sz z)
    | Ruext (sz, e, i) -> (match helper e with
                           | Some te -> let re =
                                          if i < 0 then assert false
                                          else if i = 0 then te
                                          else if uext_safe te then te
                                          else let extte = if signed then texpr_to_unsigned_i env sz te else te in
                                               extte in
                                        Some re
                           | None -> None)
    | Rsext (sz, e, i) -> (match helper e with
                           | Some te -> let re =
                                          if i < 0 then assert false
                                          else if i = 0 then te
                                          else if sext_safe sz te then te
                                          else let extte = if signed then te else texpr_sext env sz te i in
                                               extte in
                                        Some re
                           | None -> None)
    | Runop (sz, op, e) -> (match helper e with
                            | Some te -> let re =
                                           match op with
                                           | Rnegb -> if rneg_safe sz te then texpr_neg te
                                                      else texpr_bv_sub ~safe:false env sz signed (texpr_zero env) te
                                           | Rnotb -> texpr_bv_not ~signed env sz te in
                                         Some re
                            | None -> None)
    | Rbinop (sz, op, e0, e1) -> let (s0, s1) =
                                   match op with
                                   | Rumod -> (false, false)
                                   | Rsrem -> (true, true)
                                   | Rsmod -> (true, true)
                                   | Rashr -> (true, false)
                                   | _ -> (signed, signed) in
                                 (match helper ~signed:s0 e0, helper ~signed:s1 e1 with
                                  | Some te0, Some te1 -> (match op with
                                                           | Radd -> Some (texpr_bv_add ~safe:false env sz signed te0 te1)
                                                           | Rsub -> Some (texpr_bv_sub ~safe:false env sz signed te0 te1)
                                                           | Rmul -> Some (texpr_bv_mul ~safe:false env sz signed te0 te1)
                                                           | Rumod -> let re =
                                                                        let re = texpr_bv_umod ~signed:false env sz te0 te1 in
                                                                        if signed then texpr_to_signed_i env sz re else re in
                                                                      Some re
                                                           | Rsrem -> let re =
                                                                        let re = texpr_bv_srem ~signed:true env sz te0 te1 in
                                                                        if signed then re else texpr_to_unsigned_i env sz re in
                                                                      Some re
                                                           | Rsmod -> let re =
                                                                        let re = texpr_bv_smod ~signed:true env sz te0 te1 in
                                                                        if signed then re else texpr_to_unsigned_i env sz re in
                                                                      Some re
                                                           | Rshl -> Some (texpr_bv_shl ~safe:false env sz signed te0 te1)
                                                           | Rlshr -> Some (texpr_bv_shr ~safe:false env sz signed te0 te1)
                                                           | Rashr -> let re =
                                                                        let re = texpr_bv_sar env sz true te0 te1 in
                                                                        if signed then re else texpr_to_unsigned_i env sz re in
                                                                      Some re
                                                           | Rrol -> Some (texpr_bv_rol ~signed_res:signed ~signed_atom0:signed env sz te0 te1)
                                                           | Rror -> Some (texpr_bv_ror ~signed_res:signed ~signed_atom0:signed env sz te0 te1)
                                                           | _ -> None)
                                  | _ -> None)
    | Rconcat (_sz0, sz1, e0, e1) -> (match helper e0, helper ~signed:false e1 with
                                      | Some te0, Some te1 -> Some (texpr_bv_cat env sz1 te0 te1)
                                      | _ -> None) in
  helper re

let rexp_suggest_signed e =
  let merge o1 o2 =
    match o1, o2 with
    | Some b0, Some b1 -> if b0 = b1 then Some b0
                          else None
    | Some b, None | None, Some b -> Some b
    | None, None -> None in
  let rec helper e =
    match e with
    | Rvar v -> Some (var_is_signed v)
    | Rconst _ -> None
    | Runop (_, _, e) -> helper e
    | Rbinop (_, op, e0, e1) -> (match op with
                                 | Rumod -> Some false
                                 | Rsrem | Rsmod -> Some true
                                 | Rashr -> Some true
                                 | _ -> merge (helper e0) (helper e1))
    | Ruext (_, _, _) -> Some false
    | Rsext (_, _, _) -> Some true
    | Rconcat (_, _, e0, _) -> helper e0 in
  helper e

let tcons_req mgr env abs e0 e1 =
  let signed = Option.value (rexp_suggest_signed (radd 0 e0 e1)) ~default:false in
  match texpr_of_rexp ~signed mgr env abs e0, texpr_of_rexp ~signed mgr env abs e1 with
  | Some te0, Some te1 -> Some (tcons_eq te0 te1)
  | _ -> None
let tcons_rneq mgr env abs e0 e1 =
  let signed = Option.value (rexp_suggest_signed (radd 0 e0 e1)) ~default:false in
  match texpr_of_rexp ~signed mgr env abs e0, texpr_of_rexp ~signed mgr env abs e1 with
  | Some te0, Some te1 -> Some (tcons_deq te0 te1)
  | _ -> None
let tcons_rcmp mgr env abs op e0 e1 =
  let signed = rcmpop_is_signed op in
  match texpr_of_rexp ~signed mgr env abs e0, texpr_of_rexp ~signed mgr env abs e1 with
  | Some te0, Some te1 -> (match op with
                           | Rult | Rslt -> Some (tcons_lt te0 te1)
                           | Rule | Rsle -> Some (tcons_le te0 te1)
                           | Rugt | Rsgt -> Some (tcons_lt te1 te0)
                           | Ruge | Rsge -> Some (tcons_le te1 te0))
  | _ -> None
let neg_cmpop op =
  match op with
  | Rult -> Ruge
  | Rule -> Rugt
  | Rugt -> Rule
  | Ruge -> Rult
  | Rslt -> Rsge
  | Rsle -> Rsgt
  | Rsgt -> Rsle
  | Rsge -> Rslt

let tconses_of_rbexp mgr abs env e =
  let singleton a = [a] in
  let rec helper e =
    match e with
    | Rtrue -> Some []
    | Req (_, e0, e1) -> Option.map singleton (tcons_req mgr env abs e0 e1)
    | Rcmp (_, op, e0, e1) -> Option.map singleton (tcons_rcmp mgr env abs op e0 e1)
    | Rneg (Req (_, e0, e1)) -> Option.map singleton (tcons_rneq mgr env abs e0 e1)
    | Rneg (Rcmp (_, op, e0, e1)) -> Option.map singleton (tcons_rcmp mgr env abs (neg_cmpop op) e0 e1)
    | Rneg (Rneg e) -> helper e
    | Rneg (Ror (e0, e1)) -> (match helper (Rneg e0), helper (Rneg e1) with
                              | Some ts0, Some ts1 -> Some (ts0 @@ ts1)
                              | _ -> None)
    | Rneg _ -> None
    | Rand (e1, e2) -> (match helper e1, helper e2 with
                        | Some ts1, Some ts2 -> Some (ts1 @@ ts2)
                        | _ -> None)
    | Ror _ -> None in
  helper e

let abs_of_rbexp (mgr, env) ?abs rbe =
  let abs =
    match abs with
    | Some abs -> abs
    | None -> abs_of_vars (mgr, env) (vars_rbexp rbe) in
  let rec helper abs =
    let tso = tconses_of_rbexp mgr abs env rbe in
    match tso with
    | Some ts -> let tarr = Tcons1.array_make env (List.length ts) in
                 let _ = List.iteri (fun i t -> Tcons1.array_set tarr i t) ts in
                 let abs' = Abstract1.meet_tcons_array mgr abs tarr in
                 if Abstract1.is_eq mgr abs abs' then Some abs'
                 else helper abs'
    | None -> None in
  helper abs

let abs_set_nondet_var (mgr, env) dom v =
  let lo, hi =
    match typ_of_var v with
    | Tuint sz ->
       let ret = Mpq.init () in
       let _ = Mpq.mul_2exp ret (Mpq.of_int 1) sz in
       let _ = Mpq.sub ret ret (Mpq.of_int 1) in
       Mpq.of_int 0, ret
    | Tsint sz ->
       let h = Mpq.init () in
       let l = Mpq.init () in
       let _ = Mpq.mul_2exp h (Mpq.of_int 1) (pred sz) in
       let _ = Mpq.sub h h (Mpq.of_int 1) in
       let _ = Mpq.mul_2exp l (Mpq.of_int 1) (pred sz) in
       let _ = Mpq.neg l l in
       l, h in
  Abstract1.assign_texpr mgr dom (apvar v)
    (Texpr1.cst env (Coeff.i_of_mpq lo hi)) None

(* safe: the instruction is safe *)
let interp_instr ?(safe=true) ?(var_bound=true) (mgr, env) dom instr =
  (* split at position i and returns (vh, vl) where vh is signed/unsigned value and vl is unsigned value *)
  let add_dom mgr dom v a0 a1 =
     let ta0 = texpr_of_atom env a0 in
     let ta1 = texpr_of_atom env a1 in
     let tv = texpr_bv_add ~safe env (size_of_atom a0) (atom_is_signed a0) ta0 ta1 in
     Abstract1.assign_texpr_array mgr dom [| apvar v |] [| tv |]
       (if var_bound then Some (var_bound_dom mgr env v) else None) in
  let adds_dom mgr dom f v a0 a1 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let w = size_of_atom a0 in
    let is_signed = atom_is_signed a0 in
    let tsum = let uta0 = if is_signed then texpr_to_unsigned_i env w ta0 else ta0 in
               let uta1 = if is_signed then texpr_to_unsigned_i env w ta1 else ta1 in
               texpr_add uta0 uta1 in
    let tf = texpr_div2i env tsum w in
    let tv = let tv = texpr_mod2i env tsum w in
             if is_signed then texpr_to_signed_i env w tv else tv in
    Abstract1.assign_texpr_array mgr dom [| apvar f; apvar v |] [| tf; tv |]
      (if var_bound then Some (vars_bounds_dom mgr env [f; v]) else None) in
  let adc_dom mgr dom v a0 a1 a2 =
     let ta0 = texpr_of_atom env a0 in
     let ta1 = texpr_of_atom env a1 in
     let ta2 = texpr_of_atom env a2 in
     if safe then
       let tv = texpr_add (texpr_add ta0 ta1) ta2 in
       Abstract1.assign_texpr_array mgr dom [| apvar v |] [| tv |]
         (if var_bound then Some (var_bound_dom mgr env v) else None)
     else
       let w = size_of_atom a0 in
       let is_signed = atom_is_signed a0 in
       let tsum = let uta0 = if is_signed then texpr_to_unsigned_i env w ta0 else ta0 in
                  let uta1 = if is_signed then texpr_to_unsigned_i env w ta1 else ta1 in
                  texpr_add uta0 uta1 in
       let tv = let tv = texpr_add tsum ta2 in
                if is_signed then texpr_to_signed_i env w tv else tv in
       Abstract1.assign_texpr_array mgr dom [| apvar v |] [| tv |]
         (if var_bound then Some (var_bound_dom mgr env v) else None) in
  let adcs_dom mgr dom f v a0 a1 a2 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let ta2 = texpr_of_atom env a2 in
    let w = size_of_atom a0 in
    let is_signed = atom_is_signed a0 in
    let tsum = let uta0 = if is_signed then texpr_to_unsigned_i env w ta0 else ta0 in
               let uta1 = if is_signed then texpr_to_unsigned_i env w ta1 else ta1 in
               texpr_add (texpr_add uta0 uta1) ta2 in
    let tf = texpr_div2i env tsum w in
    let tv = let tv = texpr_mod2i env tsum w in
             if is_signed then texpr_to_signed_i env w tv else tv in
    Abstract1.assign_texpr_array mgr dom [| apvar f; apvar v |] [| tf; tv |]
      (if var_bound then Some (vars_bounds_dom mgr env [f; v]) else None) in
  let sub_dom mgr dom v a0 a1 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let tv = texpr_bv_sub ~safe env (size_of_atom a0) (atom_is_signed a0) ta0 ta1 in
    Abstract1.assign_texpr_array mgr dom [| apvar v |] [| tv |]
      (if var_bound then Some (var_bound_dom mgr env v) else None) in
  let sbc_dom mgr dom v a0 a1 a2 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let ta2 = texpr_of_atom env a2 in
    if safe then
      let tv = texpr_sub (texpr_sub ta0 ta1)
                 (texpr_sub (texpr_one env) ta2) in
      Abstract1.assign_texpr_array mgr dom [| apvar v |] [| tv |]
        (if var_bound then Some (var_bound_dom mgr env v) else None)
    else
      let w = size_of_atom a0 in
      let is_signed = atom_is_signed a0 in
      let tsub = let uta0 = if is_signed then texpr_to_unsigned_i env w ta0 else ta0 in
                 let uta1 = if is_signed then texpr_to_unsigned_i env w ta1 else ta1 in
                 texpr_add (texpr_sub (texpr_sub uta0 uta1) (texpr_sub (texpr_one env) ta2)) (texpr_pow2i env w) in
      let tv = let tv = texpr_mod2i env tsub w in
                if is_signed then texpr_to_signed_i env w tv else tv in
      Abstract1.assign_texpr_array mgr dom [| apvar v |] [| tv |]
        (if var_bound then Some (var_bound_dom mgr env v) else None) in
  let sbb_dom mgr dom v a0 a1 a2 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let ta2 = texpr_of_atom env a2 in
    if safe then
      let tv = texpr_sub (texpr_sub ta0 ta1) ta2 in
      Abstract1.assign_texpr_array mgr dom [| apvar v |] [| tv |]
        (if var_bound then Some (var_bound_dom mgr env v) else None)
    else
      let w = size_of_atom a0 in
      let is_signed = atom_is_signed a0 in
      let tsub = let uta0 = if is_signed then texpr_to_unsigned_i env w ta0 else ta0 in
                 let uta1 = if is_signed then texpr_to_unsigned_i env w ta1 else ta1 in
                 texpr_add (texpr_sub (texpr_sub uta0 uta1) ta2) (texpr_pow2i env w) in
      let tv = let tv = texpr_mod2i env tsub w in
               if is_signed then texpr_to_signed_i env w tv else tv in
      Abstract1.assign_texpr_array mgr dom [| apvar v |] [| tv |]
        (if var_bound then Some (var_bound_dom mgr env v) else None) in
  let subc_dom mgr dom c v a0 a1 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let w = size_of_atom a0 in
    let is_signed = atom_is_signed a0 in
    let tsub = let uta0 = if is_signed then texpr_to_unsigned_i env w ta0 else ta0 in
               let uta1 = if is_signed then texpr_to_unsigned_i env w ta1 else ta1 in
               texpr_add (texpr_sub uta0 uta1) (texpr_pow2i env w) in
    let tc = texpr_div2i env tsub w in
    let tv = let tv = texpr_mod2i env tsub w in
             if is_signed then texpr_to_signed_i env w tv else tv in
    Abstract1.assign_texpr_array mgr dom [| apvar c; apvar v |] [| tc; tv |]
      (if var_bound then Some (vars_bounds_dom mgr env [c; v]) else None) in
  let subb_dom mgr dom b v a0 a1 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let w = size_of_atom a0 in
    let is_signed = atom_is_signed a0 in
    let tsub = let uta0 = if is_signed then texpr_to_unsigned_i env w ta0 else ta0 in
               let uta1 = if is_signed then texpr_to_unsigned_i env w ta1 else ta1 in
               texpr_add (texpr_sub uta0 uta1) (texpr_pow2i env w) in
    let tb = texpr_sub (texpr_one env) (texpr_div2i env tsub w) in
    let tv = let tv = texpr_mod2i env tsub w in
             if is_signed then texpr_to_signed_i env w tv else tv in
    Abstract1.assign_texpr_array mgr dom [| apvar b; apvar v |] [| tb; tv |]
      (if var_bound then Some (vars_bounds_dom mgr env [b; v]) else None) in
  let sbcs_dom mgr dom c v a0 a1 a2 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let ta2 = texpr_of_atom env a2 in
    let w = size_of_atom a0 in
    let is_signed = atom_is_signed a0 in
    let tsub = let uta0 = if is_signed then texpr_to_unsigned_i env w ta0 else ta0 in
               let uta1 = if is_signed then texpr_to_unsigned_i env w ta1 else ta1 in
               texpr_add (texpr_sub (texpr_sub uta0 uta1) (texpr_sub (texpr_one env) ta2)) (texpr_pow2i env w) in
    let tc = texpr_div2i env tsub w in
    let tv = let tv = texpr_mod2i env tsub w in
             if is_signed then texpr_to_signed_i env w tv else tv in
    Abstract1.assign_texpr_array mgr dom [| apvar c; apvar v |] [| tc; tv |]
      (if var_bound then Some (vars_bounds_dom mgr env [c; v]) else None) in
  let sbbs_dom mgr dom b v a0 a1 a2 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let ta2 = texpr_of_atom env a2 in
    let w = size_of_atom a0 in
    let is_signed = atom_is_signed a0 in
    let tsub = let uta0 = if is_signed then texpr_to_unsigned_i env w ta0 else ta0 in
               let uta1 = if is_signed then texpr_to_unsigned_i env w ta1 else ta1 in
               texpr_add (texpr_sub (texpr_sub uta0 uta1) ta2) (texpr_pow2i env w) in
    let tb = texpr_sub (texpr_one env) (texpr_div2i env tsub w) in
    let tv = let tv = texpr_mod2i env tsub w in
             if is_signed then texpr_to_signed_i env w tv else tv in
    Abstract1.assign_texpr_array mgr dom [| apvar b; apvar v |] [| tb; tv |]
      (if var_bound then Some (vars_bounds_dom mgr env [b; v]) else None) in
  let mul_dom mgr dom v a0 a1 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let tv = texpr_bv_mul ~safe env (size_of_atom a0) (atom_is_signed a0) ta0 ta1 in
    Abstract1.assign_texpr_array mgr dom [| apvar v |] [| tv |]
      (if var_bound then Some (var_bound_dom mgr env v) else None) in
  let muls_dom mgr dom f v a0 a1 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let w = size_of_atom a0 in
    let is_signed = atom_is_signed a0 in
    (* Full multiplication:
       tvh: signed value
       tvl: unsigned value
       tvh * 2**w + tvl = a0 * a1 *)
    let tmul = texpr_mul ta0 ta1 in
    let tvh = texpr_div2i env tmul w in
    let tvl = texpr_sub tmul (texpr_mul tvh (texpr_pow2i env w)) in
    let tf = if is_signed then
               begin
                 let tmul_low_sign = texpr_div2i env tvl (w - 1) in
                 let test = texpr_mod2i env (texpr_add tvh tmul_low_sign) w in
                 if Abstract1.sat_tcons mgr dom (tcons_eq test (texpr_zero env)) then texpr_zero env
                 else if Abstract1.sat_tcons mgr dom (tcons_deq test (texpr_zero env)) then texpr_one env
                 else texpr_nondet env (typ_of_var f)
               end
             else
               begin
                 if Abstract1.sat_tcons mgr dom (tcons_eq tvh (texpr_zero env)) then texpr_zero env
                 else if Abstract1.sat_tcons mgr dom (tcons_deq tvh (texpr_zero env)) then texpr_one env
                 else texpr_nondet env (typ_of_var f)
               end in
    let tv = if is_signed then texpr_to_signed_i env w tvl else tvl in
    Abstract1.assign_texpr_array mgr dom [| apvar f; apvar v |] [| tf; tv |]
      (if var_bound then Some (vars_bounds_dom mgr env [f; v]) else None) in
  let mull_dom mgr dom vh vl a0 a1 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let w = size_of_atom a0 in
    let (tvh, tvl) = texpr_split_i env (texpr_mul ta0 ta1) w in
    Abstract1.assign_texpr_array mgr dom [| apvar vh; apvar vl |] [| tvh; tvl |]
      (if var_bound then Some (vars_bounds_dom mgr env [vh; vl]) else None) in
  let mulj_dom mgr dom v a0 a1 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    Abstract1.assign_texpr_array mgr dom [| apvar v |] [| texpr_mul ta0 ta1 |]
      (if var_bound then Some (var_bound_dom mgr env v) else None) in
  let split_dom mgr dom vh vl a z =
    let ta = texpr_of_atom env a in
    let (tvh, tvl) = texpr_split_i env ta (Z.to_int z) in
    Abstract1.assign_texpr_array mgr dom [| apvar vh; apvar vl |] [| tvh; tvl |]
      (if var_bound then Some (vars_bounds_dom mgr env [vh; vl]) else None) in
  let join_dom mgr dom v a0 a1 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let tv =
      let tpow2 = texpr_pow2i env (size_of_atom a1) in
      texpr_add ta1 (texpr_mul ta0 tpow2) in
    Abstract1.assign_texpr_array mgr dom [| apvar v |] [| tv |]
      (if var_bound then Some (var_bound_dom mgr env v) else None) in
  let shl_dom mgr dom v a0 a1 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let tv = texpr_bv_shl ~safe env (size_of_atom a0) (atom_is_signed a0) ta0 ta1 in
      (*
      let uta0 = if is_signed then texpr_to_unsigned_i env w ta0 else ta0 in
      let tv = let tv = texpr_mod2i env (texpr_mul uta0 (texpr_pow2e env ta1)) w in
               if is_signed then texpr_to_signed_i env w tv else tv in
       *)
    Abstract1.assign_texpr_array mgr dom [| apvar v |] [| tv |]
      (if var_bound then Some (var_bound_dom mgr env v) else None) in
  let shls_dom mgr dom f v a0 a1 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let w = size_of_atom a0 in
    let is_signed = atom_is_signed a0 in
    let (tf, tv) = let (tf, tv) = texpr_split_i env (texpr_mul ta0 (texpr_pow2e env ta1)) w in
                   (tf, if is_signed then texpr_to_signed_i env w tv else tv) in
    (*
    let uta0 = if is_signed then texpr_to_unsigned_i env w ta0 else ta0 in
    let (tv, tf) =
      let t = texpr_mul uta0 (texpr_pow2e env ta1) in
      let tv = texpr_mod2i env t w in
      let tf = texpr_div2i env t w in
      ((if is_signed then texpr_to_signed_i env w tv else tv),
       (if is_signed then _texpr_to_signed_e env ta1 tf else tf)) in
     *)
    Abstract1.assign_texpr_array mgr dom [| apvar v; apvar f |]
      [| tv; tf |]
      (if var_bound then Some (vars_bounds_dom mgr env [v; f]) else None) in
  let shr_dom mgr dom v a0 a1 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let tv = texpr_bv_shr ~safe env (size_of_atom a0) (atom_is_signed a0) ta0 ta1 in
    Abstract1.assign_texpr_array mgr dom [| apvar v |] [| tv |]
      (if var_bound then Some (var_bound_dom mgr env v) else None) in
  let shrs_dom mgr dom v l a z =
    let ta = texpr_of_atom env a in
    let w = size_of_atom a in
    let is_signed = atom_is_signed a in
    let uta = if is_signed then texpr_to_unsigned_i env w ta else ta in
    let (tv, tl) = texpr_split_i env uta (Z.to_int z) in
    Abstract1.assign_texpr_array mgr dom [| apvar v; apvar l |] [| tv; tl |]
      (if var_bound then Some (vars_bounds_dom mgr env [v; l]) else None) in
  let sar_dom mgr dom v a0 a1 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let tv = texpr_bv_sar env (size_of_atom a0) (atom_is_signed a0) ta0 ta1 in
    Abstract1.assign_texpr_array mgr dom [| apvar v |] [| tv |]
      (if var_bound then Some (var_bound_dom mgr env v) else None) in
  let sars_dom mgr dom v l a z =
    let ta = texpr_of_atom env a in
    let (tv, tl) = texpr_split_i env ta (Z.to_int z) in
    Abstract1.assign_texpr_array mgr dom [| apvar v; apvar l |] [| tv; tl |]
      (if var_bound then Some (vars_bounds_dom mgr env [v; l]) else None) in
  let seteq_dom mgr dom v al ar =
    let tel = texpr_of_atom env al in
    let ter = texpr_of_atom env ar in
    let tv =
      if Abstract1.sat_tcons mgr dom (tcons_eq tel ter) then texpr_one env
      else if Abstract1.sat_tcons mgr dom (tcons_deq tel ter) then texpr_zero env
      else texpr_nondet env (typ_of_var v) in
    Abstract1.assign_texpr_array mgr dom [| apvar v |] [| tv |]
      (if var_bound then Some (var_bound_dom mgr env v) else None) in
  let setne_dom mgr dom v al ar =
    let tel = texpr_of_atom env al in
    let ter = texpr_of_atom env ar in
    let tv =
      if Abstract1.sat_tcons mgr dom (tcons_eq tel ter) then texpr_zero env
      else if Abstract1.sat_tcons mgr dom (tcons_deq tel ter) then texpr_one env
      else texpr_nondet env (typ_of_var v) in
    Abstract1.assign_texpr_array mgr dom [| apvar v |] [| tv |]
      (if var_bound then Some (var_bound_dom mgr env v) else None) in
  let cmov_dom mgr dom v ca a0 a1 =
    let tca = texpr_of_atom env ca in
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let tv =
      if Abstract1.sat_tcons mgr dom (tcons_eq tca (texpr_one env)) then ta0
      else if Abstract1.sat_tcons mgr dom (tcons_eq tca (texpr_zero env)) then ta1
      else let int0 = interval_of_atom mgr dom a0 in
           let int1 = interval_of_atom mgr dom a1 in
           let uint = interval_union int0 int1 in
           Texpr1.cst env
             (Coeff.i_of_scalar uint.Interval.inf uint.Interval.sup) in
    Abstract1.assign_texpr mgr dom (apvar v) tv
      (if var_bound then Some (var_bound_dom mgr env v) else None) in
  let cshl_dom mgr dom vh vl a0 a1 z =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let w = size_of_atom a1 in
    let is_signed = atom_is_signed a0 in
    let tjoin = texpr_add ta1 (texpr_mul2i env ta0 w) in
    if safe then
      let tshl = texpr_mul2i env tjoin (Z.to_int z) in
      let (tvh, tvl_shifted) = texpr_split_i env tshl w in
      let tvl = texpr_div2i env tvl_shifted (Z.to_int z) in
      Abstract1.assign_texpr_array mgr dom [| apvar vh; apvar vl |] [| tvh; tvl |]
        (if var_bound then Some (vars_bounds_dom mgr env [vh; vl]) else None)
    else
      let tshl = let utjoin = if is_signed then texpr_to_unsigned_i env (2 * w) tjoin else tjoin in
                 let utshl = texpr_mul2i env utjoin (Z.to_int z) in
                 texpr_mod2i env utshl (2 * w) in
      let (utvh, tvl_shifted) = texpr_split_i env tshl w in
      let tvh = if is_signed then texpr_to_signed_i env w utvh else utvh in
      let tvl = texpr_div2i env tvl_shifted (Z.to_int z) in
      Abstract1.assign_texpr_array mgr dom [| apvar vh; apvar vl |] [| tvh; tvl |]
        (if var_bound then Some (vars_bounds_dom mgr env [vh; vl]) else None) in
  let cshls_dom mgr dom l vh vl a0 a1 z =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let w = size_of_atom a1 in
    let is_signed = atom_is_signed a0 in
    let tjoin = texpr_add ta1 (texpr_mul2i env ta0 w) in
    let (tl, tshl) = let tshl = texpr_mul2i env tjoin (Z.to_int z) in
                     texpr_split_i env tshl (2 * w) in
    let (utvh, tvl_shifted) = texpr_split_i env tshl w in
    let tvh = if is_signed then texpr_to_signed_i env w utvh else utvh in
    let tvl = texpr_div2i env tvl_shifted (Z.to_int z) in
    Abstract1.assign_texpr_array mgr dom [| apvar l; apvar vh; apvar vl |] [| tl; tvh; tvl |]
      (if var_bound then Some (vars_bounds_dom mgr env [l; vh; vl]) else None) in
  let cshr_dom mgr dom vh vl a0 a1 z =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let w = size_of_atom a1 in
    let is_signed = atom_is_signed a0 in
    let tjoin = texpr_add ta1 (texpr_mul2i env ta0 w) in
    if safe then
      let tshr = texpr_div2i env tjoin (Z.to_int z) in
      let (tvh, tvl) = texpr_split_i env tshr w in
      Abstract1.assign_texpr_array mgr dom [| apvar vh; apvar vl |] [| tvh; tvl |]
        (if var_bound then Some (vars_bounds_dom mgr env [vh; vl]) else None)
    else
      let tshr = let utjoin = if is_signed then texpr_to_unsigned_i env (2 * w) tjoin else tjoin in
                 texpr_div2i env utjoin (Z.to_int z) in
      let (tvh, tvl) = texpr_split_i env tshr w in
      Abstract1.assign_texpr_array mgr dom [| apvar vh; apvar vl |] [| tvh; tvl |]
        (if var_bound then Some (vars_bounds_dom mgr env [vh; vl]) else None) in
  let cshrs_dom mgr dom vh vl l a0 a1 z =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let w = size_of_atom a1 in
    let is_signed = atom_is_signed a0 in
    let tjoin = texpr_add ta1 (texpr_mul2i env ta0 w) in
    let (tshr, tl) = let utjoin = if is_signed then texpr_to_unsigned_i env (2 * w) tjoin else tjoin in
                     texpr_split_i env utjoin (Z.to_int z) in
    let (tvh, tvl) = texpr_split_i env tshr w in
    Abstract1.assign_texpr_array mgr dom [| apvar vh; apvar vl; apvar l |] [| tvh; tvl; tl |]
      (if var_bound then Some (vars_bounds_dom mgr env [vh; vl; l]) else None) in
  let rol_dom mgr dom v a0 a1 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let w = size_of_atom a0 in
    let tv = texpr_bv_rol ~signed_res:(var_is_signed v) ~signed_atom0:(atom_is_signed a0) env w ta0 ta1 in
    Abstract1.assign_texpr_array mgr dom [| apvar v |] [| tv |]
      (if var_bound then Some (vars_bounds_dom mgr env [v]) else None) in
  let ror_dom mgr dom v a0 a1 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let w = size_of_atom a0 in
    let tv = texpr_bv_ror ~signed_res:(var_is_signed v) ~signed_atom0:(atom_is_signed a0) env w ta0 ta1 in
    Abstract1.assign_texpr_array mgr dom [| apvar v |] [| tv |]
      (if var_bound then Some (vars_bounds_dom mgr env [v]) else None) in
  let not_dom mgr dom v a =
    let ta = texpr_of_atom env a in
    let sv = var_is_signed v in
    let sa = atom_is_signed a in
    let w = size_of_atom a in
    let tv = let tv = texpr_bv_not ~signed:sa env w ta in
             if sv && not sa then texpr_to_signed_i env w tv
             else if not sv && sa then texpr_to_unsigned_i env w tv
             else tv in
    Abstract1.assign_texpr_array mgr dom [| apvar v |] [| tv |]
      (if var_bound then Some (vars_bounds_dom mgr env [v]) else None) in
  let cast_dom mgr dom v a =
    let ta = texpr_of_atom env a in
    let tv =
      let int_a = interval_of_atom mgr dom a in
      let int_v = interval_of_typ (typ_of_var v) in
      if Interval.is_leq int_a int_v then ta
      else match typ_of_var v, typ_of_atom a with
           | Tuint wv, Tuint wa ->
              if wv >= wa then ta
              else let tvl = texpr_eucl_rem2i env ta wv in
                   tvl
           | Tsint wv, Tuint wa ->
              if wv > wa then ta
              else if wv = wa then texpr_to_signed_i env wv ta
              else let tvl = texpr_eucl_rem2i env ta wv in
                   texpr_to_signed_i env wv tvl
           | Tuint wv, Tsint wa ->
              if wv >= wa then let uta = texpr_to_unsigned_i env wa ta in
                               let utaext = texpr_sext env wa uta (wv - wa) in
                               utaext
              else let utv = texpr_eucl_rem2i env ta wv in
                   utv
           | Tsint wv, Tsint wa ->
              if wv >= wa then ta
              else let utv = texpr_eucl_rem2i env ta wv in
                   texpr_to_signed_i env wv utv in
    Abstract1.assign_texpr mgr dom (apvar v) tv
      (if var_bound then Some (vars_bounds_dom mgr env [v]) else None) in
  let vpc_dom mgr dom v a =
    if safe then let tv = texpr_of_atom env a in
                 Abstract1.assign_texpr mgr dom (apvar v) tv
                   (if var_bound then Some (var_bound_dom mgr env v) else None)
    else cast_dom mgr dom v a in
  match instr with
  | Imov (v, a) ->
     let ta = texpr_of_atom env a in
     Abstract1.assign_texpr_array mgr dom [| apvar v |] [| ta |]
       (if var_bound then Some (var_bound_dom mgr env v) else None)
  | Iadd (v, a0, a1) -> add_dom mgr dom v a0 a1
  | Iadc  (v, a0, a1, a2) -> adc_dom mgr dom v a0 a1 a2
  | Iadds (f, v, a0, a1) -> adds_dom mgr dom f v a0 a1
  | Iadcs (f, v, a0, a1, a2) -> adcs_dom mgr dom f v a0 a1 a2
  | Isub (v, a0, a1) -> sub_dom mgr dom v a0 a1
  | Isbc (v, a0, a1, a2) -> sbc_dom mgr dom v a0 a1 a2
  | Isbb (v, a0, a1, a2) -> sbb_dom mgr dom v a0 a1 a2
  | Isubc (c, v, a0, a1) -> subc_dom mgr dom c v a0 a1
  | Isubb (b, v, a0, a1) -> subb_dom mgr dom b v a0 a1
  | Isbcs (c, v, a0, a1, a2) -> sbcs_dom mgr dom c v a0 a1 a2
  | Isbbs (b, v, a0, a1, a2) -> sbbs_dom mgr dom b v a0 a1 a2
  | Imul (v, a0, a1) -> mul_dom mgr dom v a0 a1
  | Imuls (f, v, a0, a1) -> muls_dom mgr dom f v a0 a1
  | Imull (vh, vl, a0, a1) -> mull_dom mgr dom vh vl a0 a1
  | Imulj (v, a0, a1) -> mulj_dom mgr dom v a0 a1
  | Isplit (vh, vl, a, z) | Ispl (vh, vl, a, z) -> split_dom mgr dom vh vl a z
  | Ijoin (v, a0, a1) -> join_dom mgr dom v a0 a1
  | Ighost (_, (_, rbe)) | Iassume (_, rbe) ->
     (match abs_of_rbexp (mgr, env) ~abs:dom rbe with
      | Some rdom -> Abstract1.meet mgr dom rdom
      | None -> dom)
  | Ishl (v, a0, a1) -> shl_dom mgr dom v a0 a1
  | Ishls (vf, v, a0, z) -> shls_dom mgr dom vf v a0 (mkatom_const (typ_of_var v) z)
  | Isar (v, a0, a1) -> sar_dom mgr dom v a0 a1
  | Isars (v, l, a0, z) -> sars_dom mgr dom v l a0 z
  | Ishr (v, a0, a1) -> shr_dom mgr dom v a0 a1
  | Ishrs (v, l, a0, z) -> shrs_dom mgr dom v l a0 z
  | Iseteq (v, al, ar) -> seteq_dom mgr dom v al ar
  | Isetne (v, al, ar) -> setne_dom mgr dom v al ar
  | Icmov (v, ca, a0, a1) -> cmov_dom mgr dom v ca a0 a1
  | Icshl (vh, vl, a0, a1, z) -> cshl_dom mgr dom vh vl a0 a1 z
  | Icshls (vf, vh, vl, a0, a1, z) -> cshls_dom mgr dom vf vh vl a0 a1 z
  | Icshr (vh, vl, a0, a1, z) -> cshr_dom mgr dom vh vl a0 a1 z
  | Icshrs (vh, vl, l, a0, a1, z) -> cshrs_dom mgr dom vh vl l a0 a1 z
  | Inondet v | Iand (v, _, _) | Ior (v, _, _) | Ixor (v, _, _) ->
     abs_set_nondet_var (mgr, env) dom v
  | Irol (v, a0, a1) -> rol_dom mgr dom v a0 a1
  | Iror (v, a0, a1) -> ror_dom mgr dom v a0 a1
  | Inot (v, a) -> not_dom mgr dom v a
  | Icast (_, v, a) -> cast_dom mgr dom v a
  | Ivpc (v, a) -> vpc_dom mgr dom v a
  | Inop | Iassert _ -> dom

  | Icut _ -> assert false

let rec interp_prog ?(safe=true) ?(var_bound=true) (mgr, env) dom prog =
  match prog with
  | instr::prog' ->
     let dom' = interp_instr ~safe ~var_bound (mgr, env) dom instr in
     interp_prog ~safe ~var_bound (mgr, env) dom' prog'
  | _ -> dom

let sat_rbexp (mgr, env) dom e =
  let rec helper e =
    match e with
    | Rtrue -> true
    | Req (_, e0, e1) -> (match tcons_req mgr env dom e0 e1 with
                          | Some tc -> Abstract1.sat_tcons mgr dom tc
                          | None -> false)
    | Rcmp (_, op, e0, e1) -> (match tcons_rcmp mgr env dom op e0 e1 with
                               | Some tc -> Abstract1.sat_tcons mgr dom tc
                               | None -> false)
    | Rneg (Req (_, e0, e1)) -> (match tcons_rneq mgr env dom e0 e1 with
                                 | Some tc -> Abstract1.sat_tcons mgr dom tc
                                 | None -> false)
    | Rneg (Rcmp (_, op, e0, e1)) -> (match tcons_rcmp mgr env dom (neg_cmpop op) e0 e1 with
                                      | Some tc -> Abstract1.sat_tcons mgr dom tc
                                      | None -> false)
    | Rneg (Ror (e0, e1)) -> helper (Rneg e0) && helper (Rneg e1)
    | Rneg _ -> false
    | Rand (e0, e1) -> helper e0 && helper e1
    | Ror (e0, e1) -> helper e0 || helper e1 in
  helper e

let instr_safe (mgr, env) dom instr =
  let add_safe mgr env dom v a0 a1 =
     let ta0 = texpr_of_atom env a0 in
     let ta1 = texpr_of_atom env a1 in
     let dom' = Abstract1.assign_texpr_array mgr dom [| apvar v |]
                  [| texpr_add ta0 ta1 |] None in
     Abstract1.sat_interval mgr dom' (apvar v)
       (interval_of_typ (typ_of_var v)) in
  let adc_safe mgr env dom v a0 a1 a2 =
     let ta0 = texpr_of_atom env a0 in
     let ta1 = texpr_of_atom env a1 in
     let ta2 = texpr_of_atom env a2 in
     let dom' = Abstract1.assign_texpr_array mgr dom [| apvar v |]
                  [| texpr_add (texpr_add ta0 ta1) ta2 |] None in
     Abstract1.sat_interval mgr dom' (apvar v)
       (interval_of_typ (typ_of_var v)) in
  let sub_safe mgr env dom v a0 a1 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let dom' = Abstract1.assign_texpr_array mgr dom [| apvar v |]
                 [| texpr_sub ta0 ta1 |] None in
     Abstract1.sat_interval mgr dom' (apvar v)
       (interval_of_typ (typ_of_var v)) in
  let sbc_safe mgr env dom v a0 a1 a2 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let ta2 = texpr_of_atom env a2 in
    let dom' = Abstract1.assign_texpr_array mgr dom [| apvar v |]
                 [| texpr_sub (texpr_sub ta0 ta1)
                      (texpr_sub (texpr_one env) ta2) |] None in
     Abstract1.sat_interval mgr dom' (apvar v)
       (interval_of_typ (typ_of_var v)) in
  let sbb_safe mgr env dom v a0 a1 a2 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let ta2 = texpr_of_atom env a2 in
    let dom' = Abstract1.assign_texpr_array mgr dom [| apvar v |]
                 [| texpr_sub (texpr_sub ta0 ta1) ta2 |] None in
     Abstract1.sat_interval mgr dom' (apvar v)
       (interval_of_typ (typ_of_var v)) in
  let mul_safe mgr env dom v a0 a1 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let dom' = Abstract1.assign_texpr_array mgr dom [| apvar v |]
                 [| texpr_mul ta0 ta1 |] None in
     Abstract1.sat_interval mgr dom' (apvar v)
       (interval_of_typ (typ_of_var v)) in
  let shl_safe mgr env dom v a0 a1 =
    match a1 with
    | Avar _ -> false
    | Aconst (_, z) ->
       let ta0 = texpr_of_atom env a0 in
       let tpow2 = texpr_pow2i env (Z.to_int z) in
       let dom' = Abstract1.assign_texpr_array mgr dom [| apvar v |]
                    [| texpr_mul ta0 tpow2 |] None in
     Abstract1.sat_interval mgr dom' (apvar v)
       (interval_of_typ (typ_of_var v)) in
  let cshl_safe mgr env dom vh _vl a0 a1 z =
    let te0 = texpr_of_atom env a0 in
    let te1 = texpr_of_atom env a1 in
    let sz = size_of_atom a0 in
    let tpow2sz = texpr_pow2i env sz in
    let tejoin = texpr_add te1 (texpr_mul te0 tpow2sz) in
    let tpow2z = texpr_pow2i env (Z.to_int z) in
    let teshl = texpr_mul tejoin tpow2z in
    let dom' = Abstract1.assign_texpr_array mgr dom [| apvar vh |]
                 [| texpr_div teshl tpow2sz |] None in
    Abstract1.sat_interval mgr dom' (apvar vh)
      (interval_of_typ (typ_of_var vh)) in
  let vpc_safe mgr env dom v a =
    let te = texpr_of_atom env a in
    let dom' = Abstract1.assign_texpr mgr dom (apvar v) te None in
    Abstract1.sat_interval mgr dom' (apvar v)
      (interval_of_typ (typ_of_var v)) in
  let shr_safe _mgr _env _dom _v _a0 _a1 =
    (* a better domain is needed *)
    (*
      let te0 = texpr_of_atom env _a0 in
      let te1 = texpr_of_atom env _a1 in
      let (te0h, te0l) = texpr_split_e _env te0 te1 in
      if atom_is_signed _a0 then Abstract1.sat_tcons _mgr _dom (tcons_le (texpr_zero env) te0h)
                                 && Abstract1.sat_tcons _mgr _dom (tcons_eq te0l (texpr_zero env))
      else Abstract1.sat_tcons _mgr _dom (tcons_eq te0l (texpr_zero env))
   *)
    false in
  let sar_safe _mgr _env _dom _v _a0 _a1 = false in
  let cshr_safe _mgr _env _dom _vh _vl _a0 _a1 _z = false
  in
  match instr with
  | Imov _ | Icmov _ | Inop | Iassert _ | Iassume _ | Ighost _
  | Iadds _ | Iadcs _ | Isubc _ | Isubb _ | Isbcs _ | Isbbs _
  | Ishls _ | Isars _ | Ishrs _ | Icshls _ | Icshrs _
  | Imull _ | Imulj _ | Imuls _ | Isplit _ | Ispl _ | Ijoin _
  | Iseteq _ | Isetne _ | Inondet _ | Iand _ | Ior _ | Ixor _
  | Irol _ | Iror _ | Inot _ | Icast _ -> true
  | Iadd (v, a0, a1) -> add_safe mgr env dom v a0 a1
  | Iadc  (v, a0, a1, a2) -> adc_safe mgr env dom v a0 a1 a2
  | Isub (v, a0, a1) -> sub_safe mgr env dom v a0 a1
  | Isbc (v, a0, a1, a2) -> sbc_safe mgr env dom v a0 a1 a2
  | Isbb (v, a0, a1, a2) -> sbb_safe mgr env dom v a0 a1 a2
  | Imul (v, a0, a1) -> mul_safe mgr env dom v a0 a1
  | Ishl (v, a0, a1) -> shl_safe mgr env dom v a0 a1
  | Isar (v, a0, a1) -> sar_safe mgr env dom v a0 a1
  | Ishr (v, a0, a1) -> shr_safe mgr env dom v a0 a1
  | Icshl (vh, vl, a0, a1, z) -> cshl_safe mgr env dom vh vl a0 a1 z
  | Icshr (vh, vl, a0, a1, z) -> cshr_safe mgr env dom vh vl a0 a1 z
  | Ivpc (v, a) -> vpc_safe mgr env dom v a
  | Icut _ -> assert false

let rec rbexp_apply_abs_interp e =
  match e with
  | Rtrue -> true
  | Req _ -> VS.cardinal (vars_rbexp e) <= 1
  | Rneg e -> rbexp_apply_abs_interp e
  | Rcmp _ -> false
  | Rand (e1, e2)
    | Ror (e1, e2) -> rbexp_apply_abs_interp e1 || rbexp_apply_abs_interp e2
