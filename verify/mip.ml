
open Ast.Cryptoline

(* uint0 denotes exact integers *)
let z_pow_2 n = Z.pow (Z.of_int 2) n
let var_range v =
  let t_size = size_of_var v in
  if var_is_unsigned v then
    [ele (econst Z.zero) (evar v); elt (evar v) (econst (z_pow_2 t_size))]
  else
    [ele (econst (Z.neg (z_pow_2 (pred t_size)))) (evar v);
     elt (evar v) (econst (z_pow_2 (pred t_size)))]

let new_tmp_var = Cas.mk_newvar

(* convert_moduli vgen [m0; m1; ...; mk] ivars returns a new generator,
   m0*t0+m1*t1+...+mk*tk, and adds [t0; t1; ...; tk] to ivars *)
let convert_moduli vgen mods ivars =
  let (vgen', tmp) = new_tmp_var vgen (uint_t 0) in
  let m0 = emul' (List.hd mods) (evar tmp) in
  List.fold_left (fun (vgen, res, ivars) m ->
      let (vgen', tmp) = new_tmp_var vgen (uint_t 0) in
      (vgen', eadd' res (emul' m (evar tmp)), tmp::ivars))
    (vgen', m0, ivars) (List.tl mods)

let split_and_convert_eqmod vgen res ebexp ivars =
  let ebexps = split_eand ebexp in
  let convert_eqmod vgen e0 e1 mods ivars =
    let (vgen'', lmods, ivars') = convert_moduli vgen mods ivars in
    (vgen'', eeq e0 (eadd' e1 lmods), ivars') in
  List.fold_left
    (fun (vgen, res, ivars) be ->
      match be with
      | Eeqmod (e0, e1, mods) ->
         let (vgen', e, ivars') = convert_eqmod vgen e0 e1 mods ivars in
         (vgen', e::res, ivars')
      | _ -> (vgen, be::res, ivars))
    (vgen, res, ivars) ebexps

let convert_post vgen pre_prog_constr post ivars  =
  match post with
  | Etrue -> (vgen, [[eeq (econst Z.zero) (econst Z.one)]], ivars)
  | Eeq (e0, e1) ->
     let (vgen', tmp) = new_tmp_var vgen (uint_t 0) in
     let tmp_gt_0 = egt (evar tmp) (econst Z.zero) in
     (vgen',
      [List.rev (tmp_gt_0::eeq (eadd' e0 (evar tmp)) e1::pre_prog_constr);
       List.rev (tmp_gt_0::eeq e0 (eadd' e1 (evar tmp))::pre_prog_constr)],
      tmp::ivars)
  | Eeqmod (e0, e1, ms) ->
     let (vgen', lmods, ivars') = convert_moduli vgen ms ivars in
     let (vgen'', tmp) = new_tmp_var vgen' (uint_t 0) in
     let tmp_gt_0 = egt (evar tmp) (econst Z.zero) in
     let pre_prog_tmp_constr = List.fold_left (fun res m -> elt (evar tmp) m::res)
                     (tmp_gt_0::pre_prog_constr) ms in
     (vgen'',
      [List.rev (eeq e0 (eadds' [e1; (evar tmp); lmods])::pre_prog_tmp_constr);
       List.rev (eeq (eadd' e0 (evar tmp)) (eadd' e1 lmods)::pre_prog_tmp_constr)],
      tmp::ivars')
  | Ecmp (op, e0, e1) ->
     (match op with
      | Elt -> (vgen, [List.rev (ege e0 e1::pre_prog_constr)], ivars)
      | Ele -> (vgen, [List.rev (egt e0 e1::pre_prog_constr)], ivars)
      | Egt -> (vgen, [List.rev (ele e0 e1::pre_prog_constr)], ivars)
      | Ege -> (vgen, [List.rev (elt e0 e1::pre_prog_constr)], ivars))
  | Eand _ -> failwith "Internal error: only atomic algebraic predicates are sllowed (Mip.convert_post)"

(* returns (vgen, eq_ebexps, int_vars, cont_vars) where
   - vgen: new variable generator
   - eq_ebexps: ebexps equation constraints
   - int_vars: integer variables
   - cont_vars: continuous variables
 *)
let bv2mip (vgen, constrs, ivars, cvars) i =
  let eexp_atom = Cas.bv2z_atom in
  let eexp_assign v e = eeq (evar v) e in
  let emulpow2 e n = emul' (econst (z_pow_2 n)) e in
  let emaddpow2 e0 e1 n = eadd' e0 (emulpow2 e1 n) in
  match i with
  | Imov (v, a) -> (* v == a *)
     (vgen, eexp_assign v (eexp_atom a)::constrs, ivars, v::cvars)
  | Ishl (v, a, n) -> (* v == a * 2**n *)
      if atom_is_const n then
        let c = Z.to_int (const_of_atom n) in
        (vgen, eexp_assign v (emulpow2 (eexp_atom a) c)::constrs,
         ivars, v::cvars)
      else
        (vgen, constrs, ivars, v::cvars)
  | Ishr (v, a, n) ->
     if atom_is_const n then
       if atom_is_signed a then
         (* CHECK *)
         (* 0 <= tmp0 < 2**|a|,
            tmp0 == a + 2**|a| * tmp1, 2**n * v == tmp0 *)
         let sizea = size_of_atom a in
         let c = Z.to_int (const_of_atom n) in
         let (vgen', tmp0) =
           new_tmp_var vgen (typ_to_unsigned (typ_of_atom a)) in
         let (vgen'', tmp1) = new_tmp_var vgen' (uint_t 1) in
         (vgen'', eexp_assign tmp0
                    (emaddpow2 (eexp_atom a) (evar tmp1) sizea)::
                    eeq (emulpow2 (evar v) c) (evar tmp0)::constrs,
          tmp1::ivars, v::cvars)
       else
         (* 2**n * v == a *)
         let c = Z.to_int (const_of_atom n) in
         (vgen, eeq (emulpow2 (evar v) c) (eexp_atom a)::constrs,
          ivars, v::cvars)
     else
       (vgen, constrs, ivars, v::cvars)
  | Isar (v, a, n) -> (* v * 2**n == a *)
      if atom_is_const n then
        let c = Z.to_int (const_of_atom n) in
        (vgen, eeq (emulpow2 (evar v) c) (eexp_atom a)::constrs,
         ivars, v::cvars)
      else
        (vgen, constrs, ivars, v::cvars)
  | Inondet v -> (vgen, constrs, ivars, v::cvars)
  | Iadd (v, a0, a1) -> (* v == a0 + a1 *)
     (vgen, eexp_assign v (eadd' (eexp_atom a0) (eexp_atom a1))::constrs,
      ivars, v::cvars)
  | Iadds (c, v, a0, a1) ->
     let sizev = size_of_var v in
     if var_is_unsigned v then
       (* v + 2**|v| * c == a0 + a1 *)
       (vgen, eeq (emaddpow2 (evar v) (evar c) sizev)
                (eadd' (eexp_atom a0) (eexp_atom a1))::constrs,
        c::ivars, v::cvars)
     else
       (* v + 2**|v| * tmp == a0 + a1 *)
       let (vgen', tmp) = new_tmp_var vgen (uint_t 1) in
       (vgen', eeq (emaddpow2 (evar v) (evar tmp) sizev)
                 (eadd' (eexp_atom a0) (eexp_atom a1))::constrs,
        tmp::ivars, v::cvars)
  | Iadc (v, a0, a1, y) -> (* v == a0 + a1 + y *)
     (vgen, eexp_assign v
              (eadds' [eexp_atom a0; eexp_atom a1; eexp_atom y])::constrs,
      ivars, v::cvars)
  | Iadcs (c, v, a0, a1, y) ->
     let sizev = size_of_var v in
     if var_is_unsigned v then
       (* v + 2**|v| * c == a0 + a1 + y *)
       (vgen, eeq (emaddpow2 (evar v) (evar c) sizev)
                (eadds' [eexp_atom a0; eexp_atom a1; eexp_atom y])::constrs,
        c::ivars, v::ivars)
     else
       (* v + 2**|v| * tmp == a0 + a1 + y *)
       let (vgen', tmp) = new_tmp_var vgen (uint_t 1) in
       (vgen', eeq (emaddpow2 (evar v) (evar tmp) sizev)
                 (eadds' [eexp_atom a0; eexp_atom a1; eexp_atom y])::constrs,
        tmp::ivars, v::cvars)
  | Isub (v, a0, a1) -> (* v + a1 == a0 *)
     (vgen, eeq (eadd' (evar v) (eexp_atom a1)) (eexp_atom a0)::constrs,
      ivars, v::cvars)
  | Isubc (c, v, a0, a1) ->
     let sizev = size_of_var v in
     if var_is_unsigned v then
       (* v + a1 + 2**|v| * c == a0 + 2**|v| *)
       (vgen,
        eeq (eadd' (evar v) (emaddpow2 (eexp_atom a1) (evar c) sizev))
          (eadd' (eexp_atom a0) (econst (z_pow_2 sizev)))::constrs,
        c::ivars, v::cvars)
     else
       (* v + a1 + 2**|v| * tmp == a0 *)
       let (vgen', tmp) = new_tmp_var vgen (uint_t 1) in
       (vgen',
        eeq (eadd' (evar v) (emaddpow2 (eexp_atom a1) (evar tmp) sizev))
          (eexp_atom a0)::constrs, tmp::c::ivars, v::cvars)
  | Isubb (b, v, a0, a1) ->
     let sizev = size_of_var v in
     if var_is_unsigned v then
       (* v + a1 == a0 + 2**|v| * b *)
       (vgen, eeq (eadd' (evar v) (eexp_atom a1))
                (emaddpow2 (eexp_atom a0) (evar b) sizev)::constrs,
        b::ivars, v::cvars)
     else
       (* v + a1 == a0 + 2**|v| * tmp *)
       let (vgen', tmp) = new_tmp_var vgen (uint_t 1) in
       (vgen', eeq (eadd' (evar v) (eexp_atom a1))
                 (emaddpow2 (eexp_atom a0) (evar tmp) sizev)::constrs,
        tmp::b::ivars, v::cvars)
  | Isbc (v, a0, a1, y) -> (* v + a1 + 1 == a0 + y *)
     (vgen, eeq (eadds' [evar v; eexp_atom a1; econst Z.one])
              (eadd' (eexp_atom a0) (eexp_atom y))::constrs,
      ivars, v::cvars)
  | Isbcs (c, v, a0, a1, y) ->
     let sizev = size_of_var v in
     if var_is_unsigned v then
       (* v + a1 + 2**|v| * c + 1 == a0 + 2**|v| + y *)
       (vgen,
        eeq (eadds' [evar v; emaddpow2 (eexp_atom a1) (evar c) sizev;
                     econst Z.one])
          (eadds' [eexp_atom a0; econst (z_pow_2 sizev); eexp_atom y])::
          constrs,
        c::ivars, v::cvars)
     else
       (* v + a1 + 2**|v| * tmp + 1 == a0 + y *)
       let (vgen', tmp) = new_tmp_var vgen (uint_t 1) in
       (vgen',
        eeq (eadds' [evar v; emaddpow2 (eexp_atom a1) (evar tmp) sizev;
                     econst Z.one])
          (eadd' (eexp_atom a0) (eexp_atom y))::constrs,
        tmp::c::ivars, v::cvars)
  | Isbb (v, a0, a1, y) -> (* v + a1 + y == a0 *)
     (vgen, eeq (eadds' [evar v; eexp_atom a1; eexp_atom y])
              (eexp_atom a0)::constrs,
      ivars, v::cvars)
  | Isbbs (b, v, a0, a1, y) ->
     let sizev = size_of_var v in
     if var_is_unsigned v then
       (* v + a1 + y == a0 + 2**|v| * b *)
       (vgen, eeq (eadds' [evar v; eexp_atom a1; eexp_atom y])
                (emaddpow2 (eexp_atom a0) (evar b) sizev)::constrs,
        b::ivars, v::cvars)
     else
       (* v + a1 + y == a0 + 2**|v| * tmp *)
       let (vgen', tmp) = new_tmp_var vgen (uint_t 1) in
       (vgen',
        eeq (eadds' [evar v; eexp_atom a1; eexp_atom y])
          (emaddpow2 (eexp_atom a0) (evar tmp) sizev)::constrs,
        tmp::b::ivars, v::cvars)
  | Imulj (v, a0, a1)
  | Imul (v, a0, a1) -> (* v = a0 * a1 *)
     (vgen, eeq (evar v) (emul' (eexp_atom a0) (eexp_atom a1))::constrs,
      ivars, v::cvars)
  | Imull (vh, vl, a0, a1) -> (* vh * 2**|vl| + vl == a0 * a1 *)
     let l_tsize = size_of_var vl in
     (vgen, eeq (emaddpow2 (evar vl) (evar vh) l_tsize)
              (emul' (eexp_atom a0) (eexp_atom a1))::constrs,
      vh::ivars, vl::cvars)
  | Ispl (vh, vl, a, n)
  | Isplit (vh, vl, a, n) -> (* vh * 2**n + vl == a *)
     let c = Z.to_int n in
     (vgen, eeq (emaddpow2 (evar vl) (evar vh) c) (eexp_atom a)::constrs,
      vh::ivars, vl::cvars)
  | Ivpc (v, a) -> (* v == a *)
     (vgen, eeq (evar v) (eexp_atom a)::constrs, ivars, v::cvars)
  | Ijoin (v, a0, a1) -> (* v = a0 * 2**|a1| + a1 *)
     let tsize1 = size_of_atom a1 in
     (vgen, eexp_assign v
              (emaddpow2 (eexp_atom a1) (eexp_atom a0) tsize1)::constrs,
      ivars, v::cvars)
  | Iseteq (v, _, _) | Isetne (v, _, _)
  | Inot (v, _) | Iand (v, _, _) | Ior (v, _, _) | Ixor (v, _, _) ->
     (vgen, constrs, ivars, v::cvars)
  | Iassert _ | Inop -> (vgen, constrs, ivars, cvars)
  | Iassume (e, _) | Ighost (_, (e, _)) ->
     let (vgen', constrs', ivars') =
       split_and_convert_eqmod vgen constrs e ivars in
     (vgen', constrs', ivars', cvars)
  | Icut (_::_, _) -> failwith "Internal error: Icut with algebraic properties cannot appear in a program when verifying the algebraic part."
  | Icut _ -> (vgen, constrs, ivars, cvars)
  | _ -> failwith "unfinished"
(*
  | Ishls (l, v, a, n) ->
  | Ishrs (l, v, a, n) ->
  | Isars (l, v, a, n) ->
  | Icshl (vh, vl, a0, a1, n) ->
  | Icshls (l, vh, vl, a0, a1, n) ->
  | Icshr (vh, vl, a0, a1, n) ->
  | Icshrs (l, vh, vl, a0, a1, n) ->
  | Irol (v, a, n) ->
  | Iror (v, a, n) ->
  | Icmov (v, c, a0, a1) ->
  | Imuls (l, v, a0, a1) ->
  | Icast (l, v, a) ->
*)

let of_espec vgen es =
  let (vgen', pre_constr, ivars) =
    split_and_convert_eqmod vgen [] es.espre [] in
  let pre_vars = vars_ebexp es.espre in
  let (vgen'', rev_constr, ivars', cvars) =
    List.fold_left bv2mip (vgen', pre_constr, ivars, VS.elements pre_vars)
      es.esprog in
  let post =
    match es.espost with
    | [ (p, _) ] -> p | _ -> failwith "Internal error: single algebraic post-condition is expected (Mip.of_espec)" in
  let (vgen''', constrs, ivars'') =
    convert_post vgen'' rev_constr post ivars' in
  let constrs' = List.rev_map Rewrite.rewrite_ebexps constrs |> List.rev in
  (vgen''', constrs', ivars'', cvars)

