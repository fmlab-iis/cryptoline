
open Ast.Cryptoline
open Apron

type manager_t = Box.t Manager.t * Environment.t

type abs_t = Box.t Abstract1.t


(* Auxiliary functions for Apron *)
let apvar v = Var.of_string (string_of_var v)

let texpr_var env v =
  Texpr1.var env (apvar v)
let texpr_cst env z =
  Texpr1.cst env (Coeff.s_of_mpq (Mpq.of_string (Z.to_string z)))
let texpr_pow2 env i =
  let ret = Mpq.init () in
  let _ = Mpq.mul_2exp ret (Mpq.of_int 1) i in
  Texpr1.cst env (Coeff.s_of_mpq ret)
let texpr_neg te =
  Texpr1.unop Texpr1.Neg te Texpr1.Int Texpr1.Near
let texpr_add te' te'' =
  Texpr1.binop Texpr1.Add te' te'' Texpr1.Int Texpr1.Near
let texpr_sub te' te'' =
  Texpr1.binop Texpr1.Sub te' te'' Texpr1.Int Texpr1.Near
let texpr_mul te' te'' =
  Texpr1.binop Texpr1.Mul te' te'' Texpr1.Int Texpr1.Near
let texpr_div te' te'' =
  Texpr1.binop Texpr1.Div te' te'' Texpr1.Int Texpr1.Down

let tcons_lt tel ter =
  let te = Texpr1.binop  Texpr1.Sub ter tel Texpr1.Int Texpr1.Near in
  Tcons1.make te Tcons1.SUP
let tcons_le tel ter =
  let te = Texpr1.binop  Texpr1.Sub ter tel Texpr1.Int Texpr1.Near in
  Tcons1.make te Tcons1.SUPEQ

(* create_env vs creates an Environment from vs *)
let create_manager vs =
  let vars = List.rev_map apvar
               (VS.elements vs) in
  let ret = Environment.make (Array.of_list vars) [| |] in
  (Box.manager_alloc (), ret)

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

let var_bound_dom mgr env v =
  Abstract1.of_box mgr env [| apvar v |] [| interval_of_typ (typ_of_var v) |]

let vars_bounds_dom mgr env vars =
  let var_ary = Array.of_list vars in 
  let apvar_ary = Array.map apvar var_ary in
  let intervals = Array.map (fun v -> interval_of_typ (typ_of_var v))
                    var_ary in
  Abstract1.of_box mgr env apvar_ary intervals

let texpr_of_atom env a =
  match a with
  | Avar v -> texpr_var env v
  | Aconst (_, z) -> texpr_cst env z

let rec texpr_of_rexp env re =
  match re with
  | Rvar v -> Some (texpr_var env v)
  | Rconst (_sz, z) -> Some (texpr_cst env z)
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
  | _ -> None   

(* meet {dom} with an abstract domain with a primitive rbexp,
   returns {dom} if the primitive rbexp is not supported *)
let meet_primitive_rbexp mgr env dom cmpop rel rer =
  let texpr_zero = texpr_cst env Z.zero in
  let sz = size_of_rexp rel in
  let rec helper dom cmpop tel ter =
    match cmpop with
    | Rult -> let tcons = Tcons1.array_make env 3 in
              let _ = Tcons1.array_set tcons 0 (tcons_lt tel ter);
                      Tcons1.array_set tcons 1 (tcons_le texpr_zero tel);
                      Tcons1.array_set tcons 2
                        (tcons_lt ter (texpr_pow2 env sz)) in
              Abstract1.meet_tcons_array mgr dom tcons
    | Rule -> let tcons = Tcons1.array_make env 3 in
              let _ = Tcons1.array_set tcons 0 (tcons_le tel ter);
                      Tcons1.array_set tcons 1 (tcons_le texpr_zero tel);
                      Tcons1.array_set tcons 2
                        (tcons_lt ter (texpr_pow2 env sz)) in
              Abstract1.meet_tcons_array mgr dom tcons
    | Rugt -> helper dom Rult ter tel
    | Ruge -> helper dom Rule ter tel
    | Rslt -> let tcons = Tcons1.array_make env 3 in
              let _ = Tcons1.array_set tcons 0 (tcons_lt tel ter);
                      Tcons1.array_set tcons 1
                        (tcons_le (texpr_neg (texpr_pow2 env (sz-1))) tel);
                      Tcons1.array_set tcons 2
                        (tcons_lt ter (texpr_pow2 env (sz-1))) in
              Abstract1.meet_tcons_array mgr dom tcons
    | Rsle -> let tcons = Tcons1.array_make env 3 in
              let _ = Tcons1.array_set tcons 0 (tcons_le tel ter);
                      Tcons1.array_set tcons 1
                        (tcons_le (texpr_neg (texpr_pow2 env (sz-1))) tel);
                      Tcons1.array_set tcons 2
                        (tcons_lt ter (texpr_pow2 env (sz-1))) in
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
        | Rcmp (_, cmpop, rel, rer) ->
           let ret' = meet_primitive_rbexp mgr env ret cmpop rel rer in
           helper ret' rbes'
        | _ -> None)
    | [] -> Some ret in
  let ret = Abstract1.top mgr env in
  helper ret [rbe]

let interp_instr mgr env dom instr =
  let texpr_flag mgr dom v =
    let v_interval = interval_of_typ (typ_of_var v) in
    if typ_is_signed (typ_of_var v) then
      Texpr1.cst env (Coeff.i_of_int 0 1)
    else
    if Abstract1.sat_interval mgr dom (apvar v) v_interval then
      texpr_cst env Z.zero else texpr_cst env Z.one in
  match instr with
  | Imov (v, a) ->
     let ta = texpr_of_atom env a in
     Abstract1.assign_texpr_array mgr dom [| apvar v |] [| ta |] None
  | Iadd (v, a0, a1) ->
     let ta0 = texpr_of_atom env a0 in
     let ta1 = texpr_of_atom env a1 in
     Abstract1.assign_texpr_array mgr dom [| apvar v |]
       [| texpr_add ta0 ta1 |] (Some (var_bound_dom mgr env v))
  | Iadc  (v, a0, a1, a2) ->
     let ta0 = texpr_of_atom env a0 in
     let ta1 = texpr_of_atom env a1 in
     let ta2 = texpr_of_atom env a2 in
     Abstract1.assign_texpr_array mgr dom [| apvar v |]
       [| texpr_add (texpr_add ta0 ta1) ta2 |] (Some (var_bound_dom mgr env v))
  | Iadds (f, v, a0, a1) ->
     let ta0 = texpr_of_atom env a0 in
     let ta1 = texpr_of_atom env a1 in
     let dom' = Abstract1.assign_texpr_array mgr dom [| apvar v |]
                  [| texpr_add ta0 ta1 |] None in
     let texpr_f = texpr_flag mgr dom' v in
     Abstract1.assign_texpr_array mgr dom' [| apvar f |]
       [| texpr_f |] (Some (var_bound_dom mgr env v))
  | Iadcs (f, v, a0, a1, a2) ->
     let ta0 = texpr_of_atom env a0 in
     let ta1 = texpr_of_atom env a1 in
     let ta2 = texpr_of_atom env a2 in
     let dom' = Abstract1.assign_texpr_array mgr dom [| apvar v |]
                  [| texpr_add (texpr_add ta0 ta1) ta2 |] None in
     let texpr_f = texpr_flag mgr dom' v in
     Abstract1.assign_texpr_array mgr dom' [| apvar f |]
       [| texpr_f |] (Some (var_bound_dom mgr env v))
  | Isub (v, a0, a1) ->
     let ta0 = texpr_of_atom env a0 in
     let ta1 = texpr_of_atom env a1 in
     Abstract1.assign_texpr_array mgr dom [| apvar v |]
       [| texpr_sub ta0 ta1 |] (Some (var_bound_dom mgr env v))
  | Isbc (v, a0, a1, a2) ->
     let ta0 = texpr_of_atom env a0 in
     let ta1 = texpr_of_atom env a1 in
     let ta2 = texpr_of_atom env a2 in
     Abstract1.assign_texpr_array mgr dom [| apvar v |]
       [| texpr_sub (texpr_sub ta0 ta1)
            (texpr_sub (texpr_cst env Z.one) ta2) |] 
       (Some (var_bound_dom mgr env v))
  | Isbb (v, a0, a1, a2) ->
     let ta0 = texpr_of_atom env a0 in
     let ta1 = texpr_of_atom env a1 in
     let ta2 = texpr_of_atom env a2 in
     Abstract1.assign_texpr_array mgr dom [| apvar v |]
       [| texpr_sub (texpr_sub ta0 ta1) ta2 |] 
       (Some (var_bound_dom mgr env v))
  | Isubc (c, v, a0, a1) ->
     let ta0 = texpr_of_atom env a0 in
     let ta1 = texpr_of_atom env a1 in
     let dom' = Abstract1.assign_texpr_array mgr dom [| apvar v |]
                  [| texpr_sub ta0 ta1 |] None in
     let texpr_c = texpr_sub (texpr_cst env Z.one) (texpr_flag mgr dom' v) in
     Abstract1.assign_texpr_array mgr dom' [| apvar c |]
       [| texpr_c |] (Some (var_bound_dom mgr env v))
  | Isubb (b, v, a0, a1) ->
     let ta0 = texpr_of_atom env a0 in
     let ta1 = texpr_of_atom env a1 in
     let dom' = Abstract1.assign_texpr_array mgr dom [| apvar v |]
                  [| texpr_sub ta0 ta1 |] None in
     let texpr_b = texpr_flag mgr dom' v in
     Abstract1.assign_texpr_array mgr dom' [| apvar b |]
       [| texpr_b |] (Some (var_bound_dom mgr env v))
  | Isbcs (c, v, a0, a1, a2) ->
     let ta0 = texpr_of_atom env a0 in
     let ta1 = texpr_of_atom env a1 in
     let ta2 = texpr_of_atom env a2 in
     let dom' = Abstract1.assign_texpr_array mgr dom [| apvar v |]
                  [| texpr_sub (texpr_sub ta0 ta1)
                       (texpr_sub (texpr_cst env Z.one) ta2) |] None in
     let texpr_c = texpr_sub (texpr_cst env Z.one) (texpr_flag mgr dom' v) in
     Abstract1.assign_texpr_array mgr dom' [| apvar c |]
       [| texpr_c |] (Some (var_bound_dom mgr env v))
  | Isbbs (b, v, a0, a1, a2) ->
     let ta0 = texpr_of_atom env a0 in
     let ta1 = texpr_of_atom env a1 in
     let ta2 = texpr_of_atom env a2 in
     let dom' = Abstract1.assign_texpr_array mgr dom [| apvar v |]
                  [| texpr_sub (texpr_sub ta0 ta1) ta2 |] None in
     let texpr_b = texpr_flag mgr dom' v in
     Abstract1.assign_texpr_array mgr dom' [| apvar b |]
       [| texpr_b |] (Some (var_bound_dom mgr env v))
  | Imul (v, a0, a1) ->
     let ta0 = texpr_of_atom env a0 in
     let ta1 = texpr_of_atom env a1 in
     Abstract1.assign_texpr_array mgr dom [| apvar v |]
       [| texpr_mul ta0 ta1 |] (Some (var_bound_dom mgr env v))
  | Imuls (f, v, a0, a1) ->
     let ta0 = texpr_of_atom env a0 in
     let ta1 = texpr_of_atom env a1 in
     let dom' = Abstract1.assign_texpr_array mgr dom [| apvar v |]
                  [| texpr_mul ta0 ta1 |] None in
     let texpr_f = texpr_flag mgr dom v in
     Abstract1.assign_texpr_array mgr dom' [| apvar f |]
       [| texpr_f |] (Some (var_bound_dom mgr env v))
  | Imull (vh, vl, a0, a1) ->
     let ta0 = texpr_of_atom env a0 in
     let ta1 = texpr_of_atom env a1 in
     let tpow2 = texpr_pow2 env (size_of_var vl) in
     Abstract1.assign_texpr_array mgr dom [| apvar vh; apvar vl |]
       [| texpr_div (texpr_mul ta0 ta1) tpow2; texpr_mul ta0 ta1 |]
       (Some (vars_bounds_dom mgr env [vh; vl]))
  | Imulj (v, a0, a1) ->
     let ta0 = texpr_of_atom env a0 in
     let ta1 = texpr_of_atom env a1 in
     Abstract1.assign_texpr_array mgr dom [| apvar v |]
       [| texpr_mul ta0 ta1 |] None
  | Inondet v | Iand (v, _, _) | Ior (v, _, _) | Ixor (v, _, _)
  | Irol (v, _, _)  | Iror (v, _, _) | Inot (v, _) ->
     let lo, hi =
       match typ_of_var v with
       | Tuint sz ->
          let ret = Mpq.init () in
          let _ = Mpq.mul_2exp ret (Mpq.of_int 1) sz in
          Mpq.of_int 0, ret
       | Tsint sz ->
          let h = Mpq.init () in
          let l = Mpq.init () in
          let _ = Mpq.mul_2exp h (Mpq.of_int 1) (pred sz) in
          let _ = Mpq.neg l h in
          l, h in
     Abstract1.assign_texpr mgr dom (apvar v)
       (Texpr1.cst env (Coeff.i_of_mpq lo hi)) None
  | Ishl _
  | Ishls _
  | Ishr _
  | Ishrs _
  | Isar _
  | Isars _
  | Icshl _
  | Icshls _
  | Icshr _
  | Icshrs _
  | Icmov _
  | Inop
  | Isplit _
  | Ispl _
  | Iseteq _
  | Isetne _
  | Icast _
  | Ivpc _
  | Ijoin _
  | Iassert _
  | Iassume _
  | Icut _
  | Ighost _ -> dom

let rec interp_prog (mgr, env) dom prog =
  match prog with
  | instr::prog' ->
     let dom' = interp_instr mgr env dom instr in
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

let print_dom (_mgr, _env) dom =
  Abstract1.print Format.std_formatter dom
