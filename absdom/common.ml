
open Ast.Cryptoline
open Apron

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

let _string_of_texpr e = String.trim (Format.asprintf "%a@." Texpr1.print e)

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

let zinterval_of_var (mgr, _) dom v =
  let ivl = Abstract1.bound_variable mgr dom (apvar v) in
  (Z.of_string (Scalar.to_string (ivl.Interval.inf)), Z.of_string (Scalar.to_string (ivl.Interval.sup)))

let interval_of_atom mgr dom a =
  match a with
  | Avar v -> Abstract1.bound_variable mgr dom (apvar v)
  | Aconst (_, z) -> Interval.of_mpq (Mpq.of_string (Z.to_string z))
                       (Mpq.of_string (Z.to_string z))

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
let texpr_mul te' te'' =
  Texpr1.binop Texpr1.Mul te' te'' Texpr1.Int Texpr1.Near
let texpr_pow te' te'' =
  Texpr1.binop Texpr1.Pow te' te'' Texpr1.Int Texpr1.Down
let texpr_pow2e env i =
  texpr_pow (texpr_cst env (Z.of_int 2)) i
let texpr_pow2i env i =
  let ret = Mpq.init () in
  let _ = Mpq.mul_2exp ret (Mpq.of_int 1) i in
  Texpr1.cst env (Coeff.s_of_mpq ret)
let texpr_div te' te'' =
  Texpr1.binop Texpr1.Div te' te'' Texpr1.Int Texpr1.Down
let texpr_div2e env e i =
  texpr_div e (texpr_pow2e env i)
let texpr_div2i env e i =
  texpr_div e (texpr_pow2i env i)
let texpr_mod te' te'' =
  Texpr1.binop Texpr1.Mod te' te'' Texpr1.Int Texpr1.Down
let _texpr_mod2e env e i =
  texpr_mod e (texpr_pow2e env i)
let texpr_mod2i env e i =
  texpr_mod e (texpr_pow2i env i)

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

let dom_of_vars (mgr, env) vars = vars_bounds_dom mgr env (VS.elements vars)

let rec texpr_of_rexp env re =
  match re with
  | Rvar v -> Some (texpr_var env v)
  | Rconst (_sz, z) -> Some (texpr_cst env z)
  | Ruext (_, re', _) -> texpr_of_rexp env re'
  | Rsext (_, re', _) -> texpr_of_rexp env re'
  | Runop (_sz, Rnegb, re') ->
     (match texpr_of_rexp env re' with
      | Some te' -> Some (texpr_neg te')
      | _ -> None)
  | Rbinop (_sz, Radd, re', re'') ->
     (match texpr_of_rexp env re', texpr_of_rexp env re'' with
      | Some te', Some te'' -> Some (texpr_add te' te'')
      | _ -> None)
  | Rbinop (_sz, Rsub, re', re'') ->
     (match texpr_of_rexp env re', texpr_of_rexp env re'' with
      | Some te', Some te'' -> Some (texpr_sub te' te'')
      | _ -> None)
  | Rbinop (_sz, Rmul, re', re'') ->
     (match texpr_of_rexp env re', texpr_of_rexp env re'' with
      | Some te', Some te'' -> Some (texpr_mul te' te'')
      | _ -> None)
  | Rbinop (_sz, Rshl, re', re'') ->
     (match texpr_of_rexp env re', texpr_of_rexp env re'' with
      | Some teb, Some tee ->
         if Texpr1.is_scalar tee then
           match Texpr1.to_expr tee with
           | Texpr1.Cst (Coeff.Scalar (Scalar.Mpqf mpqf)) ->
              let mpqf_str = Mpqf.to_string mpqf in
              (* check if mpqf represents an integer *)
              let _ = assert (Str.string_match
                                (Str.regexp "[1-9][0-9]*") mpqf_str 0) in
              let z = Z.to_int (Z.of_string mpqf_str) in
              let sz = size_of_rexp re' in
              let pow2z = Z.pow (Z.of_int 2) sz in
              Some (texpr_mod (texpr_mul teb (texpr_pow2i env z))
                      (texpr_cst env pow2z))
           | _ -> None
         else None
      | _ -> None)
  | _ -> None

(* meet {dom} with an abstract domain with a primitive rbexp,
   returns {dom} if the primitive rbexp is not supported *)
let meet_primitive_rbexp mgr env dom cmpop rel rer =
  let sz = size_of_rexp rel in
  (* normalize for unsigned comparison *)
  let _unormalize texprv =
    let texprm = texpr_pow2i env sz in
    let texprmod =
      Texpr1.binop Texpr1.Mod texprv texprm Texpr1.Int Texpr1.Down in
    let texpradd =
      Texpr1.binop Texpr1.Add texprmod texprm Texpr1.Int Texpr1.Down in
      Texpr1.binop Texpr1.Mod texpradd texprm Texpr1.Int Texpr1.Down in
  (* normalize for signed comparison *)
  let _snormalize texprv =
    let texprm = texpr_pow2i env sz in
    let texprm1 = texpr_pow2i env (pred sz) in
    let texprmod =
      Texpr1.binop Texpr1.Mod texprv texprm Texpr1.Int Texpr1.Down in
    let texpradd =
      Texpr1.binop Texpr1.Add texprmod texprm Texpr1.Int Texpr1.Down in
    let texprmod' =
      Texpr1.binop Texpr1.Mod texpradd texprm Texpr1.Int Texpr1.Down in
    let texprdiv =
      Texpr1.binop Texpr1.Div texprmod' texprm1 Texpr1.Int Texpr1.Down in
    let texprmul =
      Texpr1.binop Texpr1.Mul texprdiv texprm Texpr1.Int Texpr1.Down in
    Texpr1.binop Texpr1.Sub texprmod' texprmul Texpr1.Int Texpr1.Down in
  let rec helper dom cmpop tel ter =
    match cmpop with
    | Rult -> let tcons = Tcons1.array_make env 1 in
              let _ = Tcons1.array_set tcons 0 (tcons_lt tel ter) in
              Abstract1.meet_tcons_array mgr dom tcons
    | Rule -> let tcons = Tcons1.array_make env 1 in
              let _ = Tcons1.array_set tcons 0 (tcons_le tel ter) in
              Abstract1.meet_tcons_array mgr dom tcons
    | Rugt -> helper dom Rult ter tel
    | Ruge -> helper dom Rule ter tel
    | Rslt -> let tcons = Tcons1.array_make env 1 in
              let _ = Tcons1.array_set tcons 0 (tcons_lt tel ter) in
              Abstract1.meet_tcons_array mgr dom tcons
    | Rsle -> let tcons = Tcons1.array_make env 1 in
              let _ = Tcons1.array_set tcons 0 (tcons_le tel ter) in
              Abstract1.meet_tcons_array mgr dom tcons
    | Rsgt -> helper dom Rslt ter tel
    | Rsge -> helper dom Rsle ter tel in
  match texpr_of_rexp env rel, texpr_of_rexp env rer with
  | Some tel, Some ter -> helper dom cmpop tel ter
  | _ -> dom

(* build an abstract domain from a rbexp, returns None if not supported *)
let dom_of_rbexp (mgr, env) rbe =
  let rec helper ret rbes =
    match rbes with
    | rbe'::rbes' ->
       (match rbe' with
        | Rtrue -> helper ret rbes'
        | Rand (rbe0, rbe1) -> helper ret (rbe0::rbe1::rbes')
        | Req (_, rel, rer) ->
           (match texpr_of_rexp env rel, texpr_of_rexp env rer with
            | Some tel, Some ter ->
               let tcons = Tcons1.array_make env 1 in
               let _ = Tcons1.array_set tcons 0 (tcons_eq tel ter) in
               let ret' = Abstract1.meet_tcons_array mgr ret tcons in
               helper ret' rbes'
            | _ -> None)
        | Rcmp (_, cmpop, rel, rer) ->
           let ret' = meet_primitive_rbexp mgr env ret cmpop rel rer in
           helper ret' rbes'
        | _ -> None)
    | [] -> Some ret in
  let ret = Abstract1.top mgr env in
  helper ret [rbe]

let dom_set_nondet_var (mgr, env) dom v =
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

let interp_instr ?(var_bound=true) (mgr, env) dom instr =
  let texpr_to_unsigned_i env w e =
    texpr_mod (texpr_add e (texpr_pow2i env w)) (texpr_pow2i env w) in
  let texpr_to_signed_i env w e =
    let sign_bit = texpr_div2i env e (w - 1) in
    texpr_sub e (texpr_mul sign_bit (texpr_pow2i env w)) in
  let texpr_to_signed_e env w e =
    let sign_bit = texpr_div2e env e (texpr_sub w (texpr_cst env Z.one)) in
    texpr_sub e (texpr_mul sign_bit (texpr_pow2e env w)) in
  let texpr_flag mgr dom v =
    let v_interval = interval_of_typ (typ_of_var v) in
    if typ_is_signed (typ_of_var v) then
      Texpr1.cst env (Coeff.i_of_int 0 1)
    else
    if Abstract1.sat_interval mgr dom (apvar v) v_interval then
      texpr_cst env Z.zero else texpr_cst env Z.one in
  let add_dom mgr dom v a0 a1 =
     let ta0 = texpr_of_atom env a0 in
     let ta1 = texpr_of_atom env a1 in
     Abstract1.assign_texpr_array mgr dom [| apvar v |] [| texpr_add ta0 ta1 |]
       (if var_bound then Some (var_bound_dom mgr env v) else None) in
  let adds_dom mgr dom f v a0 a1 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let dom' = Abstract1.assign_texpr_array mgr dom [| apvar v |]
                 [| texpr_add ta0 ta1 |] None in
    let texpr_f = texpr_flag mgr dom' v in
    Abstract1.assign_texpr_array mgr dom' [| apvar f |] [| texpr_f |]
      (if var_bound then Some (var_bound_dom mgr env v) else None) in
  let adc_dom mgr dom v a0 a1 a2 =
     let ta0 = texpr_of_atom env a0 in
     let ta1 = texpr_of_atom env a1 in
     let ta2 = texpr_of_atom env a2 in
     Abstract1.assign_texpr_array mgr dom [| apvar v |]
       [| texpr_add (texpr_add ta0 ta1) ta2 |]
       (if var_bound then Some (var_bound_dom mgr env v) else None) in
  let adcs_dom mgr dom f v a0 a1 a2 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let ta2 = texpr_of_atom env a2 in
    let dom' = Abstract1.assign_texpr_array mgr dom [| apvar v |]
                 [| texpr_add (texpr_add ta0 ta1) ta2 |] None in
    let texpr_f = texpr_flag mgr dom' v in
    Abstract1.assign_texpr_array mgr dom' [| apvar f |] [| texpr_f |]
      (if var_bound then Some (var_bound_dom mgr env v) else None) in
  let sub_dom mgr dom v a0 a1 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    Abstract1.assign_texpr_array mgr dom [| apvar v |] [| texpr_sub ta0 ta1 |]
      (if var_bound then Some (var_bound_dom mgr env v) else None) in
  let sbc_dom mgr dom v a0 a1 a2 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let ta2 = texpr_of_atom env a2 in
    Abstract1.assign_texpr_array mgr dom [| apvar v |]
      [| texpr_sub (texpr_sub ta0 ta1)
           (texpr_sub (texpr_cst env Z.one) ta2) |]
      (if var_bound then Some (var_bound_dom mgr env v) else None) in
  let sbb_dom mgr dom v a0 a1 a2 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let ta2 = texpr_of_atom env a2 in
    Abstract1.assign_texpr_array mgr dom [| apvar v |]
      [| texpr_sub (texpr_sub ta0 ta1) ta2 |]
      (if var_bound then Some (var_bound_dom mgr env v) else None) in
  let subc_dom mgr dom c v a0 a1 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let dom' = Abstract1.assign_texpr_array mgr dom [| apvar v |]
                 [| texpr_sub ta0 ta1 |] None in
    let texpr_c = texpr_sub (texpr_cst env Z.one) (texpr_flag mgr dom' v) in
    Abstract1.assign_texpr_array mgr dom' [| apvar c |] [| texpr_c |]
      (if var_bound then Some (var_bound_dom mgr env v) else None) in
  let subb_dom mgr dom b v a0 a1 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let dom' = Abstract1.assign_texpr_array mgr dom [| apvar v |]
                 [| texpr_sub ta0 ta1 |] None in
    let texpr_b = texpr_flag mgr dom' v in
    Abstract1.assign_texpr_array mgr dom' [| apvar b |] [| texpr_b |]
      (if var_bound then Some (var_bound_dom mgr env v) else None) in
  let sbcs_dom mgr dom c v a0 a1 a2 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let ta2 = texpr_of_atom env a2 in
    let dom' = Abstract1.assign_texpr_array mgr dom [| apvar v |]
                 [| texpr_sub (texpr_sub ta0 ta1)
                      (texpr_sub (texpr_cst env Z.one) ta2) |] None in
    let texpr_c = texpr_sub (texpr_cst env Z.one) (texpr_flag mgr dom' v) in
    Abstract1.assign_texpr_array mgr dom' [| apvar c |] [| texpr_c |]
      (if var_bound then Some (var_bound_dom mgr env v) else None) in
  let sbbs_dom mgr dom b v a0 a1 a2 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let ta2 = texpr_of_atom env a2 in
    let dom' = Abstract1.assign_texpr_array mgr dom [| apvar v |]
                 [| texpr_sub (texpr_sub ta0 ta1) ta2 |] None in
    let texpr_b = texpr_flag mgr dom' v in
    Abstract1.assign_texpr_array mgr dom' [| apvar b |] [| texpr_b |]
      (if var_bound then Some (var_bound_dom mgr env v) else None) in
  let mul_dom mgr dom v a0 a1 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    Abstract1.assign_texpr_array mgr dom [| apvar v |] [| texpr_mul ta0 ta1 |]
      (if var_bound then Some (var_bound_dom mgr env v) else None) in
  let muls_dom mgr dom f v a0 a1 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let dom' = Abstract1.assign_texpr_array mgr dom [| apvar v |]
                 [| texpr_mul ta0 ta1 |] None in
    let texpr_f = texpr_flag mgr dom v in
    Abstract1.assign_texpr_array mgr dom' [| apvar f |] [| texpr_f |]
      (if var_bound then Some (var_bound_dom mgr env v) else None) in
  let mull_dom mgr dom vh vl a0 a1 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let tpow2 = texpr_pow2i env (size_of_var vl) in
    Abstract1.assign_texpr_array mgr dom [| apvar vh; apvar vl |]
      [| texpr_div (texpr_mul ta0 ta1) tpow2; texpr_mul ta0 ta1 |]
      (if var_bound then Some (vars_bounds_dom mgr env [vh; vl]) else None) in
  let mulj_dom mgr dom v a0 a1 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    Abstract1.assign_texpr_array mgr dom [| apvar v |] [| texpr_mul ta0 ta1 |]
      None in
  let split_dom mgr dom vh vl a z =
    match a with
    | Aconst (_, za) ->
       let zpow2 = Z.pow (Z.of_int 2) (Z.to_int z) in
       let h = Z.div za zpow2 in
       let l = Z.rem za zpow2 in
       if Z.geq l Z.zero then
         Abstract1.assign_texpr_array mgr dom
           [| apvar vh; apvar vl |]
           [| texpr_cst env h; texpr_cst env l |] None
       else
         let h' = Z.sub h Z.one in
         let l' = Z.add l zpow2 in
         Abstract1.assign_texpr_array mgr dom
           [| apvar vh; apvar vl |]
           [| texpr_cst env h'; texpr_cst env l' |] None
    | Avar va ->
       let upper = Mpq.init () in
       let _ = Mpq.mul_2exp upper (Mpq.of_int 1) (Z.to_int z) in
       let _ = Mpq.sub upper upper (Mpq.of_int 1) in
       let ilow = Interval.of_mpq (Mpq.of_int 0) upper in
       if Abstract1.sat_interval mgr dom (apvar va) ilow then
         Abstract1.assign_texpr_array mgr dom
           [| apvar vh; apvar vl |]
           [| texpr_cst env Z.zero; texpr_var env va |] None
       else
         let lbound = Abstract1.of_box mgr env [| apvar vl |] [| ilow |] in
         let tpow2 = texpr_pow2i env (Z.to_int z) in
         Abstract1.assign_texpr_array mgr dom
           [| apvar vh; apvar vl |]
           [| texpr_div (texpr_var env va) tpow2; texpr_var env va |]
           (Some lbound) in
  let join_dom mgr dom v a0 a1 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let tpow2 = texpr_pow2i env (size_of_atom a1) in
    Abstract1.assign_texpr_array mgr dom [| apvar v |]
      [| texpr_add ta1 (texpr_mul ta0 tpow2) |] None in
  let shl_dom mgr dom v a0 a1 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let w = size_of_atom a0 in
    let is_signed = atom_is_signed a0 in
    let uta0 = if is_signed then texpr_to_unsigned_i env w ta0 else ta0 in
    let tv = let tv = texpr_mod2i env (texpr_mul uta0 (texpr_pow2e env ta1)) w in
             if is_signed then texpr_to_signed_i env w tv else tv in
    Abstract1.assign_texpr_array mgr dom [| apvar v |]
      [| tv |]
      (if var_bound then Some (var_bound_dom mgr env v) else None) in
  let shls_dom mgr dom f v a0 a1 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let w = size_of_atom a0 in
    let is_signed = atom_is_signed a0 in
    let uta0 = if is_signed then texpr_to_unsigned_i env w ta0 else ta0 in
    let (tv, tf) =
      let t = texpr_mul uta0 (texpr_pow2e env ta1) in
      let tv = texpr_mod2i env t w in
      let tf = texpr_div2i env t w in
      ((if is_signed then texpr_to_signed_i env w tv else tv),
       (if is_signed then texpr_to_signed_e env ta1 tf else tf)) in
    Abstract1.assign_texpr_array mgr dom [| apvar v; apvar f |]
      [| tv; tf |]
      (if var_bound then Some (vars_bounds_dom mgr env [v; f]) else None) in
  let shr_dom mgr dom v a0 a1 =
     match a1 with
     | Avar _ -> dom_set_nondet_var (mgr, env) dom v
     | Aconst (_, z) ->
        if typ_is_signed (typ_of_var v) then
          let ta0 = texpr_of_atom env a0 in
          let tpow2 = texpr_pow2i env (Z.to_int z) in
          Abstract1.assign_texpr_array mgr dom [| apvar v |]
            [| texpr_div ta0 tpow2 |]
            (if var_bound then Some (var_bound_dom mgr env v) else None)
        else dom_set_nondet_var (mgr, env) dom v in
  let sar_dom mgr dom v a0 a1 =
    match a1 with
    | Avar _ -> dom_set_nondet_var (mgr, env) dom v
    | Aconst (_, z) ->
       let ta0 = texpr_of_atom env a0 in
       let tpow2 = texpr_pow2i env (Z.to_int z) in
       Abstract1.assign_texpr_array mgr dom [| apvar v |]
         [| texpr_div ta0 tpow2 |]
         (if var_bound then Some (var_bound_dom mgr env v) else None) in
  let seteq_dom mgr dom v al ar =
    let tel = texpr_of_atom env al in
    let ter = texpr_of_atom env ar in
    if Abstract1.sat_tcons mgr dom (tcons_eq tel ter) then
      Abstract1.assign_texpr_array mgr dom [| apvar v |]
        [| texpr_cst env (Z.of_int 1) |] None
    else
      dom_set_nondet_var (mgr, env) dom v in
  let setne_dom mgr dom v al ar =
    let tel = texpr_of_atom env al in
    let ter = texpr_of_atom env ar in
    if Abstract1.sat_tcons mgr dom (tcons_deq tel ter) then
      Abstract1.assign_texpr_array mgr dom [| apvar v |]
        [| texpr_cst env (Z.of_int 1) |] None
    else
      dom_set_nondet_var (mgr, env) dom v in
  let cmov_dom mgr dom v a0 a1 =
    let int0 = interval_of_atom mgr dom a0 in
    let int1 = interval_of_atom mgr dom a1 in
    let uint = interval_union int0 int1 in
    let texpr = Texpr1.cst env
                  (Coeff.i_of_scalar uint.Interval.inf uint.Interval.sup) in
    Abstract1.assign_texpr mgr dom (apvar v) texpr None in
  let cshl_dom mgr dom vh vl a0 a1 z =
    let te0 = texpr_of_atom env a0 in
    let te1 = texpr_of_atom env a1 in
    let sz = size_of_atom a0 in
    let tpow2sz = texpr_pow2i env sz in
    let tejoin = texpr_add te1 (texpr_mul te0 tpow2sz) in
    let tpow2z = texpr_pow2i env (Z.to_int z) in
    let teshl = texpr_mul tejoin tpow2z in
    Abstract1.assign_texpr_array mgr dom [| apvar vh; apvar vl |]
      [| texpr_div teshl tpow2sz; teshl |]
      (if var_bound then Some (vars_bounds_dom mgr env [vh; vl]) else None) in
  let cshr_dom mgr dom vh vl a0 a1 z =
    let te0 = texpr_of_atom env a0 in
    let te1 = texpr_of_atom env a1 in
    let sz = size_of_atom a0 in
    let tpow2sz = texpr_pow2i env sz in
    let tejoin = texpr_add te1 (texpr_mul te0 tpow2sz) in
    let tpow2z = texpr_pow2i env (Z.to_int z) in
    let teshr = texpr_div tejoin tpow2z in
    Abstract1.assign_texpr_array mgr dom [| apvar vh; apvar vl |]
      [| texpr_div teshr tpow2sz; teshr |]
      (if var_bound then Some (vars_bounds_dom mgr env [vh; vl]) else None) in
  let vpc_dom mgr dom v a =
    let int_a = interval_of_atom mgr dom a in
    let int_v = interval_of_typ (typ_of_var v) in
    if Interval.is_leq int_a int_v then
      Abstract1.assign_texpr mgr dom (apvar v) (texpr_of_atom env a) None
    else
      dom_set_nondet_var (mgr, env) dom v in
  match instr with
  | Imov (v, a) ->
     let ta = texpr_of_atom env a in
     Abstract1.assign_texpr_array mgr dom [| apvar v |] [| ta |] None
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
     (match dom_of_rbexp (mgr, env) rbe with
      | Some rdom -> Abstract1.meet mgr dom rdom
      | None -> dom)
  | Ishl (v, a0, a1) -> shl_dom mgr dom v a0 a1
  | Ishls (vf, v, a0, z) -> shls_dom mgr dom vf v a0 (mkatom_const (typ_of_var v) z)
  | Isar (v, a0, a1) -> sar_dom mgr dom v a0 a1
  | Isars (vf, v, a0, z) ->
     let a1 = mkatom_const (typ_of_var v) z in
     dom_set_nondet_var (mgr, env) (sar_dom mgr dom v a0 a1) vf
  | Ishr (v, a0, a1) -> shr_dom mgr dom v a0 a1
  | Ishrs (vf, v, a0, z) ->
     let a1 = mkatom_const (typ_of_var v) z in
     dom_set_nondet_var (mgr, env) (shr_dom mgr dom v a0 a1) vf
  | Iseteq (v, al, ar) -> seteq_dom mgr dom v al ar
  | Isetne (v, al, ar) -> setne_dom mgr dom v al ar
  | Icmov (v, _, a0, a1) -> cmov_dom mgr dom v a0 a1
  | Icshl (vh, vl, a0, a1, z) -> cshl_dom mgr dom vh vl a0 a1 z
  | Icshls (vf, vh, vl, a0, a1, z) ->
     dom_set_nondet_var (mgr, env) (cshl_dom mgr dom vh vl a0 a1 z) vf
  | Icshr (vh, vl, a0, a1, z) -> cshr_dom mgr dom vh vl a0 a1 z
  | Icshrs (vf, vh, vl, a0, a1, z) ->
     dom_set_nondet_var (mgr, env) (cshr_dom mgr dom vh vl a0 a1 z) vf
  | Inondet v | Iand (v, _, _) | Ior (v, _, _) | Ixor (v, _, _)
  | Irol (v, _, _)  | Iror (v, _, _) | Inot (v, _) ->
     dom_set_nondet_var (mgr, env) dom v
  | Icast (_, v, a)
  | Ivpc (v, a) -> vpc_dom mgr dom v a
  | Inop | Iassert _ -> dom

  | Icut _ -> assert false

let rec interp_prog (mgr, env) dom prog =
  match prog with
  | instr::prog' ->
     let dom' = interp_instr (mgr, env) dom instr in
     interp_prog (mgr, env) dom' prog'
  | _ -> dom

let sat_primitive_rbexp mgr env dom cmpop rel rer =
  let rec helper cmpop tel ter =
    match cmpop with
    | Rult -> Abstract1.sat_tcons mgr dom (tcons_lt tel ter)
    | Rule -> Abstract1.sat_tcons mgr dom (tcons_le tel ter)
    | Rugt -> helper Rult ter tel
    | Ruge -> helper Rule ter tel
    | Rslt -> Abstract1.sat_tcons mgr dom (tcons_lt tel ter)
    | Rsle -> Abstract1.sat_tcons mgr dom (tcons_le tel ter)
    | Rsgt -> helper Rslt ter tel
    | Rsge -> helper Rsle ter tel in
  match texpr_of_rexp env rel, texpr_of_rexp env rer with
  | Some tel, Some ter -> helper cmpop tel ter
  | _ -> false

let sat_rbexp (mgr, env) dom rbe =
  let rec helper rbes =
    match rbes with
    | rbe'::rbes' ->
       (match rbe' with
        | Rtrue -> helper rbes'
        | Rand (rbe0, rbe1) -> helper (rbe0::rbe1::rbes')
        | Rcmp (_, cmpop, rel, rer) ->
               (sat_primitive_rbexp mgr env dom cmpop rel rer) &&
                 (helper rbes')
        | _ -> false)
    | [] -> true in
  helper [rbe]

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
                      (texpr_sub (texpr_cst env Z.one) ta2) |] None in
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
  let shr_safe _mgr _env _dom _v _a0 _a1 = false in
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

let string_of_dom (_mgr, _env) dom =
  let buf = Buffer.create 16 in
  let buf_fmtter = Format.formatter_of_buffer buf in
  let _ = Abstract1.print buf_fmtter dom in
  let _ = Format.pp_print_flush buf_fmtter () in
  Buffer.contents buf
