
open Ast.Cryptoline

let z_pow_2 n = Z.pow (Z.of_int 2) n
let var_range v =
  let t_size = size_of_var v in
  if var_is_unsigned v then
    [ele (econst Z.zero) (evar v); elt (evar v) (econst (z_pow_2 t_size))]
  else
    [ele (econst (Z.neg (z_pow_2 (pred t_size)))) (evar v);
     elt (evar v) (econst (z_pow_2 (pred t_size)))]

(* returns (vgen, eq_ebexps, int_vars, cont_vars) where
   - vgen: new variable generator
   - eq_ebexps: ebexps equation constraints
   - int_vars: integer variables
   - cont_vars: continuous variables
 *)
let bv2mip vgen i constrs ivars cvars =
  let eexp_atom = Cas.bv2z_atom in
  let eexp_assign v e = eeq (evar v) e in
  let emulpow2 e n = emul' (econst (z_pow_2 n)) e in
  let emaddpow2 e0 e1 n = eadd' e0 (emulpow2 e1 n) in
  let new_tmp_var = Cas.mk_newvar in
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
  | Iassume e ->
  | Ighost (_, e) ->
*)

let of_espec _vgen _es = failwith "not implemented"

