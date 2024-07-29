
open Ast.Cryptoline
open Utils.Std

type mip_var = IVar of var | CVar of var

let is_ivar mv = match mv with IVar _ -> true | _ -> false
let is_cvar mv = match mv with CVar _ -> true | _ -> false
let var_of_mip mv = match mv with IVar v | CVar v -> v

(* uint0 denotes exact integers *)
let z_pow_2 n = Z.pow (Z.of_int 2) n
let var_range v =
  let t_size = size_of_var v in
  if var_is_unsigned v then
    if t_size = 0 then []
    else [ele (econst Z.zero) (evar v); elt (evar v) (econst (z_pow_2 t_size))]
  else
    [ele (econst (Z.neg (z_pow_2 (pred t_size)))) (evar v);
     elt (evar v) (econst (z_pow_2 (pred t_size)))]

let new_tmp_var = Cas.mk_newvar

let rec is_const_eexp e =
  match e with
  | Evar _ -> false
  | Econst _ -> true
  | Eunop (_, e') -> is_const_eexp e'
  | Ebinop (_, e0, e1) -> is_const_eexp e0 && is_const_eexp e1

let rec is_linear_eexp e =
  match e with
  | Evar _ | Econst _ -> true
  | Eunop (_, e') -> is_linear_eexp e'
  | Ebinop (Eadd, e0, e1) | Ebinop (Esub, e0, e1) ->
     is_linear_eexp e0 && is_linear_eexp e1
  | Ebinop (Emul, e0, e1) ->
     let e0_const = is_const_eexp e0 in
     let e1_const = is_const_eexp e1 in
     (e0_const && e1_const) || (e0_const && is_linear_eexp e1) ||
       (e1_const && is_linear_eexp e0)
  | Ebinop (Epow, e0, Econst z) ->
     z = Z.zero || is_const_eexp e0 || (z = Z.one && is_linear_eexp e0)
  | Ebinop (Epow, e0, _) -> is_const_eexp e0

let is_linear_ebexp b =
  match b with
  | Etrue -> true
  | Eeq (e0, e1) | Ecmp (_, e0, e1) -> is_linear_eexp e0 && is_linear_eexp e1
  | Eeqmod (e0, e1, ms) ->
     List.for_all is_const_eexp ms && is_linear_eexp e0 && is_linear_eexp e1
  | Eand _ -> failwith "Internal error: conjunctive algebraic Boolean expressions are not allowed in is_linear_ebexp"

let slicing_constr constr =
  let rev_var_constr = List.rev_map (fun e -> (vars_ebexp e, e)) constr in
  let start_vars = fst (List.hd rev_var_constr) in
  let (constr_vars, relevant_vars, ret) =
    let helper (cvars, rvars, ret) (vs, e) =
      let cvars' = VS.union cvars vs in
      if VS.is_empty (VS.inter rvars vs)
      then (cvars', rvars, ret)
      else (cvars', VS.union rvars vs, e::ret) in
    List.fold_left helper (VS.empty, start_vars, []) rev_var_constr in
  (* make sure all relevant_vars are from constr_vars *)
  let relevant_vars' = VS.inter constr_vars relevant_vars in
  (relevant_vars', ret)

(* convert_moduli vgen [m0; m1; ...; mk] ivars returns a new generator,
   m0*t0+m1*t1+...+mk*tk, and adds [t0; t1; ...; tk] to ivars *)
let convert_moduli vgen mods ivars =
  let (vgen', tmp) = new_tmp_var vgen (uint_t 0) in
  let m0 = emul' (List.hd mods) (evar tmp) in
  List.fold_left (fun (vgen, res, ivars) m ->
      let (vgen', tmp) = new_tmp_var vgen (uint_t 0) in
      (vgen', eadd' res (emul' m (evar tmp)), tmp::ivars))
    (vgen', m0, tmp::ivars) (List.tl mods)

let split_and_convert_eqmod vgen res ebexp ivars =
  let ebexps = split_eand ebexp in
  let convert_eqmod vgen e0 e1 mods ivars =
    let (vgen'', lmods, ivars') = convert_moduli vgen mods ivars in
    (vgen'', eeq e0 (eadd' e1 lmods), ivars') in
  List.fold_left
    (fun (vgen, res, ivars) be ->
      match be with
      | Eeqmod (e0, e1, mods) ->
         if !Options.Std.apply_rewrite_eqmod then
           let (vgen', e, ivars') = convert_eqmod vgen e0 e1 mods ivars in
           (vgen', e::res, ivars')
         else
           (vgen, res, ivars)
      | _ -> (vgen, be::res, ivars))
    (vgen, res, ivars) ebexps

let convert_post vgen pre_prog_constr post ivars  =
  match post with
  | Etrue -> (vgen, [[eeq (econst Z.zero) (econst Z.one)]], ivars)
  | Eeq (e0, e1) ->
     let (vgen', tmp) = new_tmp_var vgen (uint_t 0) in
     let tmp_gt_0 = egt (evar tmp) (econst Z.zero) in
     (vgen',
      [List.rev (eeq (eadd' e0 (evar tmp)) e1::tmp_gt_0::pre_prog_constr);
       List.rev (eeq e0 (eadd' e1 (evar tmp))::tmp_gt_0::pre_prog_constr)],
      tmp::ivars)
  | Eeqmod (e0, e1, ms) ->
     if !Options.Std.apply_rewrite_eqmod then
       let (vgen', lmods, ivars') = convert_moduli vgen ms ivars in
       let (vgen'', tmp) = new_tmp_var vgen' (uint_t 0) in
       let tmp_gt_0 = egt (evar tmp) (econst Z.zero) in
       let pre_prog_tmp_constr =
         List.fold_left (fun res m -> elt (evar tmp) m::res)
           (tmp_gt_0::pre_prog_constr) ms in
       (vgen'',
        [List.rev (eeq e0 (eadds' [e1; (evar tmp); lmods])::pre_prog_tmp_constr)],
        tmp::ivars')
     else
       (vgen, [pre_prog_constr], ivars)
  | Ecmp (op, e0, e1) ->
     (match op with
      | Elt -> (vgen, [List.rev (ege e0 e1::pre_prog_constr)], ivars)
      | Ele -> (vgen, [List.rev (egt e0 e1::pre_prog_constr)], ivars)
      | Egt -> (vgen, [List.rev (ele e0 e1::pre_prog_constr)], ivars)
      | Ege -> (vgen, [List.rev (elt e0 e1::pre_prog_constr)], ivars))
  | Eand _ -> failwith "Internal error: only atomic algebraic predicates are allowed (Mip.convert_post)"

(* returns (vgen, eq_ebexps, int_vars, cont_vars) where
   - vgen: new variable generator
   - eq_ebexps: ebexps equation constraints
   - int_vars: integer variables
   - cont_vars: continuous variables
 *)
let bv2mip (vgen, constrs, ivars) i =
  let eexp_atom = Cas.bv2z_atom in
  let eexp_assign v e = eeq (evar v) e in
  let emulpow2 e n = emul' (econst (z_pow_2 n)) e in
  let emaddpow2 e0 e1 n = eadd' e0 (emulpow2 e1 n) in
  match i with
  | Imov (v, a) -> (* v == a *)
     (vgen, eexp_assign v (eexp_atom a)::constrs, ivars)
  | Ishl (v, a, n) ->
      if atom_is_const n then
        (* v == a * 2**n *)
        let c = Z.to_int (const_of_atom n) in
        (vgen, eexp_assign v (emulpow2 (eexp_atom a) c)::constrs, ivars)
      else
        (vgen, constrs, ivars)
  | Ishls (f, v, a, n) ->
     (* f * 2**|v| + v == a * 2**n *)
     let l_tsize = size_of_var v in
     let eq = eeq (emaddpow2 (evar v) (evar f) l_tsize)
                (emulpow2 (eexp_atom a) (Z.to_int n)) in
     (vgen, eq::constrs, ivars)
  | Ishr (v, a, n) ->
     if atom_is_const n then
       (* 2**n * v == a *)
       let c = Z.to_int (const_of_atom n) in
       (vgen, eeq (emulpow2 (evar v) c) (eexp_atom a)::constrs, ivars)
     else
       (vgen, constrs, ivars)
  | Ishrs (v, f, a, n) ->
     (* f + 2**n * v == a *)
     let eq = eeq (emaddpow2 (evar f) (evar v) (Z.to_int n)) (eexp_atom a) in
     (vgen, eq::constrs, ivars)
  | Isar (v, a, n) -> (* v * 2**n == a *)
      if atom_is_const n then
        let c = Z.to_int (const_of_atom n) in
        (vgen, eeq (emulpow2 (evar v) c) (eexp_atom a)::constrs, ivars)
      else
        (vgen, constrs, ivars)
  | Isars (v, f, a, n) ->
     (* f + 2**n * v == a *)
     let eq = eeq (emaddpow2 (evar f) (evar v) (Z.to_int n)) (eexp_atom a) in
     (vgen, eq::constrs, ivars)
  | Inondet _ -> (vgen, constrs, ivars)
  | Iadd (v, a0, a1) -> (* v == a0 + a1 *)
     (vgen, eexp_assign v (eadd' (eexp_atom a0) (eexp_atom a1))::constrs,
      ivars)
  | Iadds (c, v, a0, a1) ->
     let sizev = size_of_var v in
     if var_is_unsigned v then
       (* v + 2**|v| * c == a0 + a1 *)
       (vgen, eeq (emaddpow2 (evar v) (evar c) sizev)
                (eadd' (eexp_atom a0) (eexp_atom a1))::constrs,
        c::ivars)
     else
       (* v + 2**|v| * tmp == a0 + a1 *)
       let (vgen', tmp) = new_tmp_var vgen (int_t 2) in
       (vgen', eeq (emaddpow2 (evar v) (evar tmp) sizev)
                 (eadd' (eexp_atom a0) (eexp_atom a1))::constrs,
        tmp::ivars)
  | Iadc (v, a0, a1, y) -> (* v == a0 + a1 + y *)
     (vgen, eexp_assign v
              (eadds' [eexp_atom a0; eexp_atom a1; eexp_atom y])::constrs,
      ivars)
  | Iadcs (c, v, a0, a1, y) ->
     let sizev = size_of_var v in
     if var_is_unsigned v then
       (* v + 2**|v| * c == a0 + a1 + y *)
       (vgen, eeq (emaddpow2 (evar v) (evar c) sizev)
                (eadds' [eexp_atom a0; eexp_atom a1; eexp_atom y])::constrs,
        c::ivars)
     else
       (* v + 2**|v| * tmp == a0 + a1 + y *)
       let (vgen', tmp) = new_tmp_var vgen (int_t 2) in
       (vgen', eeq (emaddpow2 (evar v) (evar tmp) sizev)
                 (eadds' [eexp_atom a0; eexp_atom a1; eexp_atom y])::constrs,
        tmp::ivars)
  | Isub (v, a0, a1) -> (* v + a1 == a0 *)
     (vgen, eeq (eadd' (evar v) (eexp_atom a1)) (eexp_atom a0)::constrs, ivars)
  | Isubc (c, v, a0, a1) ->
     let sizev = size_of_var v in
     if var_is_unsigned v then
       (* v + a1 + 2**|v| * c == a0 + 2**|v| *)
       (vgen,
        eeq (eadd' (evar v) (emaddpow2 (eexp_atom a1) (evar c) sizev))
          (eadd' (eexp_atom a0) (econst (z_pow_2 sizev)))::constrs,
        c::ivars)
     else
       (* v + a1 + 2**|v| * tmp == a0 *)
       let (vgen', tmp) = new_tmp_var vgen (int_t 2) in
       (vgen',
        eeq (eadd' (evar v) (emaddpow2 (eexp_atom a1) (evar tmp) sizev))
          (eexp_atom a0)::constrs,
        tmp::c::ivars)
  | Isubb (b, v, a0, a1) ->
     let sizev = size_of_var v in
     if var_is_unsigned v then
       (* v + a1 == a0 + 2**|v| * b *)
       (vgen, eeq (eadd' (evar v) (eexp_atom a1))
                (emaddpow2 (eexp_atom a0) (evar b) sizev)::constrs,
        b::ivars)
     else
       (* v + a1 == a0 + 2**|v| * tmp *)
       let (vgen', tmp) = new_tmp_var vgen (int_t 2) in
       (vgen', eeq (eadd' (evar v) (eexp_atom a1))
                 (emaddpow2 (eexp_atom a0) (evar tmp) sizev)::constrs,
        tmp::b::ivars)
  | Isbc (v, a0, a1, y) -> (* v + a1 + 1 == a0 + y *)
     (vgen, eeq (eadds' [evar v; eexp_atom a1; econst Z.one])
              (eadd' (eexp_atom a0) (eexp_atom y))::constrs, ivars)
  | Isbcs (c, v, a0, a1, y) ->
     let sizev = size_of_var v in
     if var_is_unsigned v then
       (* v + a1 + 2**|v| * c + 1 == a0 + 2**|v| + y *)
       (vgen,
        eeq (eadds' [evar v; emaddpow2 (eexp_atom a1) (evar c) sizev;
                     econst Z.one])
          (eadds' [eexp_atom a0; econst (z_pow_2 sizev); eexp_atom y])::
          constrs, c::ivars)
     else
       (* v + a1 + 2**|v| * tmp + 1 == a0 + y *)
       let (vgen', tmp) = new_tmp_var vgen (int_t 2) in
       (vgen',
        eeq (eadds' [evar v; emaddpow2 (eexp_atom a1) (evar tmp) sizev;
                     econst Z.one])
          (eadd' (eexp_atom a0) (eexp_atom y))::constrs, tmp::c::ivars)
  | Isbb (v, a0, a1, y) -> (* v + a1 + y == a0 *)
     (vgen, eeq (eadds' [evar v; eexp_atom a1; eexp_atom y])
              (eexp_atom a0)::constrs, ivars)
  | Isbbs (b, v, a0, a1, y) ->
     let sizev = size_of_var v in
     if var_is_unsigned v then
       (* v + a1 + y == a0 + 2**|v| * b *)
       (vgen, eeq (eadds' [evar v; eexp_atom a1; eexp_atom y])
                (emaddpow2 (eexp_atom a0) (evar b) sizev)::constrs, b::ivars)
     else
       (* v + a1 + y == a0 + 2**|v| * tmp *)
       let (vgen', tmp) = new_tmp_var vgen (int_t 2) in
       (vgen',
        eeq (eadds' [evar v; eexp_atom a1; eexp_atom y])
          (emaddpow2 (eexp_atom a0) (evar tmp) sizev)::constrs, tmp::b::ivars)
  | Imulj (v, a0, a1)
  | Imul (v, a0, a1) -> (* v = a0 * a1 *)
     (vgen, eeq (evar v) (emul' (eexp_atom a0) (eexp_atom a1))::constrs, ivars)
  | Imuls (_, v, a0, a1) ->
     (* tmp * 2**|v| + v == a0 * a1 *)
     let (vgen', tmp) = new_tmp_var vgen (uint_t 0) in
     let l_tsize = size_of_var v in
     let eq = eeq (emaddpow2 (evar v) (evar tmp) l_tsize)
                (emul' (eexp_atom a0) (eexp_atom a1)) in
     (vgen', eq::constrs, tmp::ivars)
  | Imull (vh, vl, a0, a1) -> (* vh * 2**|vl| + vl == a0 * a1 *)
     let l_tsize = size_of_var vl in
     (vgen, eeq (emaddpow2 (evar vl) (evar vh) l_tsize)
              (emul' (eexp_atom a0) (eexp_atom a1))::constrs, vh::ivars)
  | Ispl (vh, vl, a, n)
  | Isplit (vh, vl, a, n) -> (* vh * 2**n + vl == a *)
     let c = Z.to_int n in
     let rng = elt (evar vl) (econst (z_pow_2 c)) in
     let eq = eeq (emaddpow2 (evar vl) (evar vh) c) (eexp_atom a) in
     (vgen, eq::rng::constrs, vh::ivars)
  | Ivpc (v, a) -> (* v == a *)
     (vgen, eeq (evar v) (eexp_atom a)::constrs, ivars)
  | Ijoin (v, a0, a1) -> (* v = a0 * 2**|a1| + a1 *)
     let l_tsize = size_of_atom a1 in
     (vgen,
      eexp_assign v
        (emaddpow2 (eexp_atom a1) (eexp_atom a0) l_tsize)::constrs, ivars)
  | Icshl (vh, vl, a0, a1, n) ->
     (* vh * 2**(|v|-c) + vl == a0 * 2**|v| + a1, vl < 2**(|v|-c) *)
     let l_tsize = size_of_var vl in
     let c = Z.to_int n in
     let rng = elt (evar vl) (econst (z_pow_2 (l_tsize - c))) in
     let eq = eeq (emaddpow2 (evar vl) (evar vh) (l_tsize - c))
                (emaddpow2 (eexp_atom a1) (eexp_atom a0) l_tsize) in
     (vgen, eq::rng::constrs, vh::ivars)
  | Icshls (f, vh, vl, a0, a1, n) ->
     (* f * 2**(2*|v|-c) + vh * 2**(|v|-c) + vl == a0 * 2**|v| + a1,
        vl < 2**(|v|-c) *)
     let l_tsize = size_of_var vl in
     let c = Z.to_int n in
     let rng = elt (evar vl) (econst (z_pow_2 (l_tsize - c))) in
     let eq = eeq (emaddpow2
                     (emaddpow2 (evar vl) (evar vh) (l_tsize - c))
                     (evar f) (2*l_tsize - c))
                (emaddpow2 (eexp_atom a1) (eexp_atom a0) l_tsize) in
     (vgen, eq::rng::constrs, vh::ivars)
  | Icshr (vh, vl, a0, a1, n) ->
     (* (vh * 2**|v| + vl) * 2**c == a0 * 2**|v| + a1 *)
     let l_tsize = size_of_var vl in
     let c = Z.to_int n in
     let eq = eeq (emulpow2 (emaddpow2 (evar vl) (evar vh) l_tsize) c)
                (emaddpow2 (eexp_atom a1) (eexp_atom a0) l_tsize) in
     (vgen, eq::constrs, vh::ivars)
  | Icshrs (vh, vl, f, a0, a1, n) ->
     (* f + (vh * 2**|v| + vl) * 2**c == a0 * 2**|v| + a1 *)
     let l_tsize = size_of_var vl in
     let c = Z.to_int n in
     let eq = eeq (emaddpow2 (evar f)
                     (emaddpow2 (evar vl) (evar vh) l_tsize) c)
                (emaddpow2 (eexp_atom a1) (eexp_atom a0) l_tsize) in
     (vgen, eq::constrs, vh::ivars)
  | Irol (v, a, n) ->
     if atom_is_const n then
       (* h * 2**|a| + l == a * 2**n, v == h + l *)
       let l_tsize = size_of_atom a in
       let c = Z.to_int (const_of_atom n) in
       let (vgen', h) = new_tmp_var vgen (uint_t l_tsize) in
       let (vgen'', l) = new_tmp_var vgen' (uint_t l_tsize) in
       let splita = eeq (emaddpow2 (evar l) (evar h) l_tsize)
                      (emulpow2 (eexp_atom a) c) in
       let rotate = eeq (evar v) (eadd (evar h) (evar l)) in
       (vgen'', rotate::splita::constrs, h::ivars)
     else
       (vgen, constrs, ivars)
  | Iror (v, a, n) ->
     if atom_is_const n then
       (* h * 2**|a| + l == a * 2**(|a|-n), v == h + l *)
       let l_tsize = size_of_atom a in
       let c = Z.to_int (const_of_atom n) in
       let (vgen', h) = new_tmp_var vgen (uint_t l_tsize) in
       let (vgen'', l) = new_tmp_var vgen' (uint_t l_tsize) in
       let splita = eeq (emaddpow2 (evar l) (evar h) l_tsize)
                      (emulpow2 (eexp_atom a) (l_tsize - c)) in
       let rotate = eeq (evar v) (eadd (evar h) (evar l)) in
       (vgen'', rotate::splita::constrs, h::ivars)
     else
       (vgen, constrs, ivars)
  | Icmov (v, c, a0, a1) ->
     (* v - a0 <= 2**(|v|+1)*(1-c), -2**(|v|+1)(1-c) <= v - a0,
        v - a1 <= 2**(|v|+1)*c, -2**(|v|+1)c <= v - a1 *)
     let l_tsize = size_of_atom a0 in
     let (le00, le01) =
       let b0 = emulpow2 (esub (econst Z.one) (eexp_of_atom c)) (succ l_tsize) in
       let sub0 = esub (evar v) (eexp_of_atom a0) in
       (ele sub0 b0, ele (econst Z.zero) (eadd sub0 b0)) in
     let (le10, le11) =
       let b1 = emulpow2 (eexp_of_atom c) (succ l_tsize) in
       let sub1 = esub (evar v) (eexp_of_atom a1) in
       (ele sub1 b1, ele (econst Z.zero) (eadd sub1 b1)) in
     (vgen, le11::le10::le01::le00::constrs, ivars)
  | Iseteq (_, _, _) | Isetne (_, _, _)
  | Inot (_, _) | Iand (_, _, _) | Ior (_, _, _) | Ixor (_, _, _) ->
     (vgen, constrs, ivars)
  | Iassert _ | Inop -> (vgen, constrs, ivars)
  | Iassume (e, _) | Ighost (_, (e, _)) ->
     let (vgen', constrs', ivars') =
       split_and_convert_eqmod vgen constrs e ivars in
     (vgen', constrs', ivars')
  | Icast (l, v, a) ->
     (match typ_of_var v, typ_of_atom a with
      | Tuint wv, Tuint wa ->
         if wv >= wa then
           (* v == a *)
           (vgen, eexp_assign v (eexp_atom a)::constrs, ivars)
         else
           (* tmp * 2**|v| + v == a, 0 <= tmp < 2**(|a|-|v|) *)
           let (vgen', tmp) = match l with
             | None -> new_tmp_var vgen (uint_t (wa - wv))
             | Some t -> (vgen, t) in
           (vgen', eeq (emaddpow2 (evar v) (evar tmp) wv) (eexp_atom a)::
                     constrs, tmp::ivars)
      | Tuint wv, Tsint wa ->
         if wv >= wa then
           (* v == tmp * 2**|v| + a, 0 <= tmp < 2 *)
           let (vgen', tmp) = match l with
             | None -> new_tmp_var vgen (uint_t 1)
             | Some t -> (vgen, t) in
           (vgen', eexp_assign v (emaddpow2 (eexp_atom a) (evar tmp) wv)::
                     constrs, tmp::ivars)
         else
           (* tmp * 2**|v| + v == a, -2**(|a|-|v|) <= tmp < 2**(|a|-|v|) *)
           let (vgen', tmp) = match l with
             | None -> new_tmp_var vgen (int_t (wa - wv))
             | Some t -> (vgen, t) in
           (vgen', eeq (emaddpow2 (evar v) (evar tmp) wv) (eexp_atom a)::
                     constrs, tmp::ivars)
      | Tsint wv, Tuint wa ->
         if wv > wa then (vgen, eexp_assign v (eexp_atom a)::constrs, ivars)
         else
           let (vgen', tmp) = match l with
             | None -> new_tmp_var vgen (uint_t (wa - wv + 1))
             | Some t -> (vgen, t) in
           (vgen', eeq (emaddpow2 (evar v) (evar tmp) wv) (eexp_atom a)::
                     constrs, tmp::ivars)
      | Tsint wv, Tsint wa ->
         if wv >= wa then
           (* v == a *)
           (vgen, eexp_assign v (eexp_atom a)::constrs, ivars)
         else
           (* tmp * 2**|v| + v == a, -2**(|a|-|v|+1) <= tmp < -2**(|a|-|v|+1) *)
           let (vgen', tmp) = match l with
             | None -> new_tmp_var vgen (int_t (wa - wv + 1))
             | Some t -> (vgen, t) in
           (vgen', eeq (emaddpow2 (evar v) (evar tmp) wv) (eexp_atom a)::
                     constrs, tmp::ivars))
  | Icut (_::_, _) -> failwith "Internal error: Icut with algebraic properties cannot appear in a program when verifying the algebraic part."
  | Icut _ -> (vgen, constrs, ivars)

let _reverse_appearing_vars mip_vars constr =
  let (_, vm) = List.fold_left (fun (i, res) be ->
                    let vars = vars_ebexp be in
                    (succ i, VS.fold (fun v vm -> VM.add v i vm) vars res))
                  (0, VM.empty) constr in
  List.sort (fun mu mv ->
      VM.find (var_of_mip mv) vm - VM.find (var_of_mip mu) vm) mip_vars

let appearing_vars mip_vars constr =
  let (_, vm) = List.fold_left (fun (i, res) be ->
                    let vars = vars_ebexp be in
                    (succ i, VS.fold (fun v vm ->
                                 if VM.mem v vm then vm
                                 else VM.add v i vm) vars res))
                  (0, VM.empty) constr in
  List.sort (fun mu mv ->
      VM.find (var_of_mip mu) vm - VM.find (var_of_mip mv) vm) mip_vars

let of_espec vgen es =
  let prevars = VS.elements (vars_ebexp es.espre) in
  let (vgen', pre_constr, ivars) =
    split_and_convert_eqmod vgen [] es.espre prevars in
  let (vgen'', rev_constr, ivars') =
    List.fold_left bv2mip (vgen', pre_constr, ivars) es.esprog in
  let post =
    match es.espost with
    | [ (p, _) ] -> p | _ -> failwith "Internal error: single algebraic post-condition is expected (Mip.of_espec)" in
  let (vgen''', constrs, ivars'') =
    convert_post vgen'' rev_constr post ivars' in
  let constrs' = tmap Rewrite.rewrite_ebexps constrs in
  let linear_constrs = tmap (tfilter is_linear_ebexp) constrs' in
  let rel_vars_linear_constrs = tmap slicing_constr linear_constrs in
  let vars_linear_constrs =
    let ivar_set = VS.of_list ivars'' in
    tmap (fun (vars, constr) ->
        let ivars = VS.elements (VS.inter ivar_set vars) in
        let cvars = VS.elements (VS.diff vars ivar_set) in
        let mipvars = List.rev_append (List.rev_map (fun v -> IVar v) ivars)
                        (List.rev_map (fun v -> CVar v) cvars) in
        let ordered_mipvars = appearing_vars mipvars constr in
        let range_constr =
          List.flatten (tmap var_range (List.rev_append ivars cvars)) in
        (ordered_mipvars, List.rev_append range_constr constr))
      rel_vars_linear_constrs in
  (vgen''', vars_linear_constrs)


(** MIP for Safety Conditions *)

type mip_safety_condition_info =
  {
    mip_sndcond_instr : Ast.Cryptoline.instr;                       (** an instruction *)
    mip_sndcond_cond : Ast.Cryptoline.ebexp;                        (** the safety condition of the instruction *)
    mip_sndcond_constrs : mip_var list * Ast.Cryptoline.ebexp list; (** one of the MIP constraints for the safety condition *)
    mip_sndcond_index : int;                                        (** the index of the MIP constraint for the safety condition *)
  }
(** information about safety conditions *)

let safety_conditions_of_instr vgen i =
  let in_typ_range e t = [ege e (econst (min_of_typ t)); ele e (econst (max_of_typ t))] in
  let in_var_range e v = in_typ_range e (typ_of_var v) in
  match i with
  | Imov _ -> (vgen, [])
  | Ishl (v, a, n) ->
     let a = eexp_of_atom a in
     let n = eexp_of_atom n in
     (vgen, in_var_range (emulpow2e a n) v)
  | Ishls _ -> (vgen, [])
  | Ishr (_v, a, n) ->
     let a = eexp_of_atom a in
     let n = eexp_of_atom n in
     (vgen, [
        ele ezero a; (* 0 <= a *)
        eeqmod a ezero (epow2e n); (* a = 0 (mod 2**n) *)
     ])
  | Ishrs _ -> (vgen, [])
  | Isar (_v, a, n) ->
     let a = eexp_of_atom a in
     let n = eexp_of_atom n in
     (vgen, [
        eeqmod a ezero (epow2e n); (* a = 0 (mod 2**n) *)
     ])
  | Isars _ -> (vgen, [])
  | Icshl (vh, vl, a1, a2, n) ->
     let w = size_of_var vl in
     let a1 = eexp_of_atom a1 in
     let a2 = eexp_of_atom a2 in
     let n = econst n in
     (vgen,
      in_typ_range
        (emulpow2e (eadd (emulpow2i a1 w) a2) n) (* (a1 * 2**w + a2) * 2**n *)
        (typ_to_size (typ_of_var vh) (2 * w))
     )
  | Icshls _ -> (vgen, [])
  | Icshr (_vh, vl, a1, a2, n) ->
     let w = size_of_var vl in
     let a1 = eexp_of_atom a1 in
     let a2 = eexp_of_atom a2 in
     let n = econst n in
     (vgen,
      [
        ele ezero a1; (* 0 <= a1 *)
        eeqmod (eadd (emulpow2i a1 w) a2) ezero (epow2e n) (* eqmod (a1 * 2**w + a2) 0 (2**w) *)
      ])
  | Icshrs _ -> (vgen, [])
  | Irol _ -> (vgen, [])
  | Iror _ -> (vgen, [])
  | Inondet _ -> (vgen, [])
  | Icmov _ -> (vgen, [])
  | Inop -> (vgen, [])
  | Iadd (v, a1, a2) ->
     let a1 = eexp_of_atom a1 in
     let a2 = eexp_of_atom a2 in
     (vgen, in_var_range (eadd a1 a2) v)
  | Iadds _ -> (vgen, [])
  | Iadc (v, a1, a2, y) ->
     let a1 = eexp_of_atom a1 in
     let a2 = eexp_of_atom a2 in
     let y = eexp_of_atom y in
     (vgen, in_var_range (eadd (eadd a1 a2) y) v)
  | Iadcs _ -> (vgen, [])
  | Isub (v, a1, a2) ->
     let a1 = eexp_of_atom a1 in
     let a2 = eexp_of_atom a2 in
     (vgen, in_var_range (esub a1 a2) v)
  | Isubc _ -> (vgen, [])
  | Isubb _ -> (vgen, [])
  | Isbc (v, a1, a2, y) ->
     let a1 = eexp_of_atom a1 in
     let a2 = eexp_of_atom a2 in
     let y = eexp_of_atom y in
     let borrow = eneg y in
     (vgen,
      tappend
        (in_var_range (eadd a2 borrow) v)
        (in_var_range (esub a1 (eadd a2 borrow)) v)
     )
  | Isbcs _ -> (vgen, [])
  | Isbb (v, a1, a2, y) ->
     let a1 = eexp_of_atom a1 in
     let a2 = eexp_of_atom a2 in
     let y = eexp_of_atom y in
     (vgen,
      tappend
        (in_var_range (eadd a2 y) v)
        (in_var_range (esub a1 (eadd a2 y)) v)
     )
  | Isbbs _ -> (vgen, [])
  | Imul (v, a1, a2) ->
     let a1 = eexp_of_atom a1 in
     let a2 = eexp_of_atom a2 in
     (vgen, in_var_range (emul a1 a2) v)
  | Imuls _ -> (vgen, [])
  | Imull _
    | Imulj _ -> (vgen, [])
  | Isplit _ -> (vgen, [])
  | Ispl _ -> (vgen, [])
  | Iseteq _ -> (vgen, [])
  | Isetne _ -> (vgen, [])
  | Iand _ -> (vgen, [])
  | Ior _ -> (vgen, [])
  | Ixor _ -> (vgen, [])
  | Inot _ -> (vgen, [])
  | Icast (_, _v, _a) -> (vgen, [])
  | Ivpc (v, a) ->
     let ea = eexp_of_atom a in
     begin
       match v.vtyp, typ_of_atom a with
       | Tuint wv, Tuint wa ->
          if wv >= wa then (vgen, [])
          else (vgen, in_var_range ea v)
       | Tsint wv, Tuint wa ->
          if wv > wa then (vgen, [])
          else (vgen, in_typ_range ea (Tuint (wv - 1)))
       | Tuint wv, Tsint wa ->
          if wv >= wa - 1 then (vgen, [ele ezero ea])
          else (vgen, in_typ_range ea (Tuint wv))
       | Tsint wv, Tsint wa ->
          if wv >= wa then (vgen, [])
          else (vgen, in_var_range ea v)
     end
  | Ijoin (_v, _ah, _al) -> (vgen, [])
  | Iassert _ -> (vgen, [])
  | Iassume _ -> (vgen, [])
  | Icut _ -> (vgen, [])
  | Ighost _ -> (vgen, [])

let safety_conditions_of_program vgen f p =
  let rec helper vgen rev_res rev_p f p =
    match p with
    | [] -> (vgen, rev_res)
    | i::p ->
       let (vgen, sndconds) = safety_conditions_of_instr vgen i in
       if List.length sndconds = 0 then helper vgen rev_res (i::rev_p) f p
       else let (vgen, rev_sndcond_mips) =
              List.fold_left
                (fun (vgen, rev_sndcond_mips) sndcond ->
                  let (vgen, sndcond_mips) = of_espec vgen { espre = f; esprog = List.rev rev_p; espost = [(sndcond, [])] } in
                  (vgen, List.rev_append sndcond_mips rev_sndcond_mips)) (vgen, []) sndconds in
            let sndconds_in_one = eands sndconds in
            let infos = List.mapi
                          (fun idx constrs ->
                            {
                              mip_sndcond_instr = i;
                              mip_sndcond_cond = sndconds_in_one;
                              mip_sndcond_constrs = constrs;
                              mip_sndcond_index = idx
                            }
                          ) (List.rev rev_sndcond_mips) in
            helper vgen (List.rev_append infos rev_res) (i::rev_p) f p in
  let (vgen, rev_res) = helper vgen [] [] f p in
  (vgen, List.rev rev_res)

