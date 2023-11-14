
open Ast.Cryptoline
open Apron

type manager_t = Box.t Manager.t * Environment.t

type abs_t = Box.t Abstract1.t


(* Auxiliary functions for Apron *)
let texpr_var env v =
  Texpr1.var env (Var.of_string (string_of_var v))
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

let tcons_lt tel ter =
  let te = Texpr1.binop  Texpr1.Sub ter tel Texpr1.Int Texpr1.Near in
  Tcons1.make te Tcons1.SUP
let tcons_le tel ter =
  let te = Texpr1.binop  Texpr1.Sub ter tel Texpr1.Int Texpr1.Near in
  Tcons1.make te Tcons1.SUPEQ

(* create_env vs creates an Environment from vs *)
let create_manager vs =
  let vars = List.rev_map (fun v -> Var.of_string (string_of_var v))
               (VS.elements vs) in
  let ret = Environment.make (Array.of_list vars) [| |] in
  (Box.manager_alloc (), ret)

let abstract_bounds (mgr, env) vs =
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
       Interval.of_mpq lower upper in
  let vars = Array.of_list (VS.elements vs) in
  let var_ary = Array.map (fun v -> Var.of_string (string_of_var v)) vars in
  let intervals = Array.map (fun v -> interval_of_typ (typ_of_var v)) vars in
  Abstract1.of_box mgr env var_ary intervals

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
  match instr with
  | Imov (v, a) ->
     let ta = texpr_of_atom env a in
     Abstract1.assign_texpr_array mgr dom
       [| Var.of_string (string_of_var v) |] [| ta |] None
  | Iadd (v, a0, a1) ->
     let ta0 = texpr_of_atom env a0 in
     let ta1 = texpr_of_atom env a1 in
     Abstract1.assign_texpr_array mgr dom
       [| Var.of_string (string_of_var v) |] [| texpr_add ta0 ta1 |] None
  | Iadc  (v, a0, a1, a2) ->
     let ta0 = texpr_of_atom env a0 in
     let ta1 = texpr_of_atom env a1 in
     let ta2 = texpr_of_atom env a2 in
     Abstract1.assign_texpr_array mgr dom
       [| Var.of_string (string_of_var v) |]
       [| texpr_add (texpr_add ta0 ta1) ta2 |] None
  | Isub (v, a0, a1) ->
     let ta0 = texpr_of_atom env a0 in
     let ta1 = texpr_of_atom env a1 in
     Abstract1.assign_texpr_array mgr dom
       [| Var.of_string (string_of_var v) |] [| texpr_sub ta0 ta1 |] None
  | Iadds _
  | Iadcs _
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
  | Irol _
  | Iror _
  | Inondet _
  | Icmov _
  | Inop
  | Inot _
  | Isubc _
  | Isubb _
  | Isbc _
  | Isbcs _
  | Isbb _
  | Isbbs _
  | Imul _
  | Imuls _
  | Imull _
  | Imulj _
  | Isplit _
  | Ispl _
  | Iseteq _
  | Isetne _
  | Iand _
  | Ior _
  | Ixor _
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

let print_dom (mgr, _env) dom =
  Abstract1.fdump mgr dom
