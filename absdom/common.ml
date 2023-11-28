
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
let _string_of_interval iv = String.trim (Format.asprintf "%a@." Interval.print iv)
let _string_of_texpr e = String.trim (Format.asprintf "%a@." Texpr1.print e)
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
let abs_of_rbexp (mgr, env) rbe =
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
  let texpr_to_unsigned_i env w e =
    texpr_mod (texpr_add e (texpr_pow2i env w)) (texpr_pow2i env w) in
  let texpr_to_signed_i env w e =
    let tmp = texpr_pow2i env (w - 1) in
    texpr_sub (texpr_mod2i env (texpr_add e tmp) w) tmp in
  let _texpr_to_signed_e env w e =
    let tmp = texpr_pow2e env (texpr_sub w (texpr_one env)) in
    texpr_sub (texpr_mod2e env (texpr_add e tmp) w) tmp in
  (* apply a signed extension to an unsigned numbe *)
  let texpr_sext env w e i =
    if i < 0 then failwith ("The size of signed extension in texpr_sext must be nonnegative.")
    else if i = 0 then e
    else let sign_bit = texpr_div2i env e (w - 1) in
         let grow = texpr_sub (texpr_pow2i env (w + i)) (texpr_pow2i env w) in
         texpr_add e (texpr_mul sign_bit grow) in
  (* split at position i and returns (vh, vl) where vh is signed/unsigned value and vl is unsigned value *)
  let texpr_split_i env e i =
    let vh = texpr_div2i env e i in
    let vl = texpr_sub e (texpr_mul2i env vh i) in
    (vh, vl) in
  let texpr_split_e env e i =
    let vh = texpr_div2e env e i in
    let vl = texpr_sub e (texpr_mul2e env vh i) in
    (vh, vl) in
  let add_dom mgr dom v a0 a1 =
     let ta0 = texpr_of_atom env a0 in
     let ta1 = texpr_of_atom env a1 in
     if safe then
       let tv = texpr_add ta0 ta1 in
       Abstract1.assign_texpr_array mgr dom [| apvar v |] [| tv |]
         (if var_bound then Some (var_bound_dom mgr env v) else None)
     else
       let w = size_of_atom a0 in
       let is_signed = atom_is_signed a0 in
       let tsum = let uta0 = if is_signed then texpr_to_unsigned_i env w ta0 else ta0 in
                  let uta1 = if is_signed then texpr_to_unsigned_i env w ta1 else ta1 in
                  texpr_add uta0 uta1 in
       let tv = let tv = texpr_mod2i env tsum w in
                if is_signed then texpr_to_signed_i env w tv else tv in
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
    if safe then
      let tv = texpr_sub ta0 ta1 in
      Abstract1.assign_texpr_array mgr dom [| apvar v |] [| tv |]
        (if var_bound then Some (var_bound_dom mgr env v) else None)
    else
      let w = size_of_atom a0 in
      let is_signed = atom_is_signed a0 in
      let tsub = let uta0 = if is_signed then texpr_to_unsigned_i env w ta0 else ta0 in
                 let uta1 = if is_signed then texpr_to_unsigned_i env w ta1 else ta1 in
                 texpr_add (texpr_sub uta0 uta1) (texpr_pow2i env w) in
      let tv = let tv = texpr_mod2i env tsub w in
               if is_signed then texpr_to_signed_i env w tv else tv in
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
    if safe then
      let tv = texpr_mul ta0 ta1 in
      Abstract1.assign_texpr_array mgr dom [| apvar v |] [| tv |]
        (if var_bound then Some (var_bound_dom mgr env v) else None)
    else
      let w = size_of_atom a0 in
      let is_signed = atom_is_signed a0 in
      let tmul = texpr_mul ta0 ta1 in
      let tv = let tvh = texpr_div2i env tmul w in
               let tv = texpr_sub tmul (texpr_mul tvh (texpr_pow2i env w)) in
               if is_signed then texpr_to_signed_i env w tv else tv in
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
    if safe then
      let tv = texpr_mul ta0 (texpr_pow2e env ta1) in
      Abstract1.assign_texpr_array mgr dom [| apvar v |] [| tv |]
        (if var_bound then Some (var_bound_dom mgr env v) else None)
    else
      let w = size_of_atom a0 in
      let is_signed = atom_is_signed a0 in
      let tv = let (_, tv) = texpr_split_i env (texpr_mul ta0 (texpr_pow2e env ta1)) w in
               if is_signed then texpr_to_signed_i env w tv else tv in
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
    if safe then
      let tv = texpr_div2e env ta0 ta1 in
      Abstract1.assign_texpr_array mgr dom [| apvar v |] [| tv |]
        (if var_bound then Some (var_bound_dom mgr env v) else None)
    else
      let w = size_of_atom a0 in
      let is_signed = atom_is_signed a0 in
      let uta0 = if is_signed then texpr_to_unsigned_i env w ta0 else ta0 in
      let tv = texpr_div2e env uta0 ta1 in
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
    if safe then
      let tv = texpr_div2e env ta0 ta1 in
      Abstract1.assign_texpr_array mgr dom [| apvar v |] [| tv |]
        (if var_bound then Some (var_bound_dom mgr env v) else None)
    else
      let tv = texpr_div2e env ta0 ta1 in
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
    let is_signed = atom_is_signed a0 in
    let tv = let uta0 = if is_signed then texpr_to_unsigned_i env w ta0 else ta0 in
             let (tvh, tvl) = texpr_split_e env uta0 (texpr_sub (texpr_cst env (Z.of_int w)) ta1) in
             let tv = texpr_add tvh (texpr_mul2e env tvl ta1) in
             if var_is_signed v then texpr_to_signed_i env w tv else tv in
    Abstract1.assign_texpr_array mgr dom [| apvar v |] [| tv |]
      (if var_bound then Some (vars_bounds_dom mgr env [v]) else None) in
  let ror_dom mgr dom v a0 a1 =
    let ta0 = texpr_of_atom env a0 in
    let ta1 = texpr_of_atom env a1 in
    let w = size_of_atom a0 in
    let is_signed = atom_is_signed a0 in
    let tv = let uta0 = if is_signed then texpr_to_unsigned_i env w ta0 else ta0 in
             let (tvh, tvl) = texpr_split_e env uta0 ta1 in
             let tv = texpr_add tvh (texpr_mul2e env tvl (texpr_sub (texpr_cst env (Z.of_int w)) ta1)) in
             if var_is_signed v then texpr_to_signed_i env w tv else tv in
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
              else let (_, tvl) = texpr_split_i env ta wv in
                   tvl
           | Tsint wv, Tuint wa ->
              if wv > wa then ta
              else if wv = wa then texpr_to_signed_i env wv ta
              else let (_, tvl) = texpr_split_i env ta wv in
                   texpr_to_signed_i env wv tvl
           | Tuint wv, Tsint wa ->
              if wv >= wa then let uta = texpr_to_unsigned_i env wa ta in
                               let utaext = texpr_sext env wa uta (wv - wa) in
                               utaext
              else let (_, utv) = texpr_split_i env ta wv in
                   utv
           | Tsint wv, Tsint wa ->
              if wv >= wa then ta
              else let (_, utv) = texpr_split_i env ta wv in
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
     (match abs_of_rbexp (mgr, env) rbe with
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
  | Inot (v, _) -> abs_set_nondet_var (mgr, env) dom v
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
