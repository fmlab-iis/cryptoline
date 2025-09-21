
open Ast.Cryptoline
open Utils.Std

let smtlib_true = "true"

(* Declare program variables and algebraic variables.
   TODO: how about ghost variables? *)
let smtlib2_declare_vars_mix pvs avs =
  let printer v is_pvar =
    Printf.sprintf
      "(declare-fun %s () %s)"
      (string_of_var v)
      (if is_pvar
       then Printf.sprintf "(_ BitVec %d)" (size_of_var v)
       else "Int") in
  let decls = VS.fold (fun v res -> (printer v (VS.mem v pvs))::res) (VS.union pvs avs) [] in
  String.concat "\n" decls

let smtlib_bv2int v = Printf.sprintf "(bv2int %s)" (string_of_var v)
let smtlib_bv2nat v = Printf.sprintf "(bv2nat %s)" (string_of_var v)
let smtlib_bv2i v =
  if var_is_signed v
  then smtlib_bv2int v
  else smtlib_bv2nat v

let rec smtlib_eexp_mix ?(expn=true) is_pvar e =
  let string_of_z c =
    if Z.lt c Z.zero then "(- " ^ Z.to_string (Z.abs c) ^ ")"
    else Z.to_string c in
  match e with
  | Evar v -> if is_pvar v
              then smtlib_bv2i v
              else string_of_var v
  | Econst c -> string_of_z c
  | Eunop (op, e) -> Printf.sprintf
                       "(%s %s)"
                       (Smt.smtlib_eunop op)
                       (smtlib_eexp_mix ~expn:expn is_pvar e)
  | Ebinop (op, e1, e2) ->
     if not expn && op = Epow && is_eexp_over_const e1 && is_eexp_over_const e2 then
       string_of_z (Z.pow (eval_eexp_const e1) (Z.to_int (eval_eexp_const e2)))
     else
       Printf.sprintf
         "(%s %s %s)"
         (Smt.smtlib_ebinop op)
         (smtlib_eexp_mix ~expn:expn is_pvar e1)
         (smtlib_eexp_mix ~expn:expn is_pvar e2)

let smtlib_eeqmod e1 e2 ms =
  match ms with
  | [] -> assert false
  | m::[] ->
     Printf.sprintf "(eqmod %s %s %s)" e1 e2 m
  | _ ->
     raise (Utils.Std.UnsupportedException "eqmod with more than one modulus is not supported")

let rec smtlib_ebexp_mix ?(expn=true) is_pvar e =
  match e with
  | Etrue -> smtlib_true
  | Eeq (e1, e2) ->
     let smt1 = smtlib_eexp_mix ~expn:expn is_pvar e1 in
     let smt2 = smtlib_eexp_mix ~expn:expn is_pvar e2 in
     Smt.smtlib_eq smt1 smt2
  | Eeqmod (e1, e2, ms) ->
     let smt1 = smtlib_eexp_mix ~expn:expn is_pvar e1 in
     let smt2 = smtlib_eexp_mix ~expn:expn is_pvar e2 in
     let smtms = tmap (smtlib_eexp_mix ~expn:expn is_pvar) ms in
     smtlib_eeqmod smt1 smt2 smtms
  | Ecmp (op, e1, e2) ->
     let smt1 = smtlib_eexp_mix ~expn:expn is_pvar e1 in
     let smt2 = smtlib_eexp_mix ~expn:expn is_pvar e2 in
     Smt.smtlib_ecmpop_of op smt1 smt2
  | Eand (e1, e2) ->
     let smt1 = smtlib_ebexp_mix ~expn:expn is_pvar e1 in
     let smt2 = smtlib_ebexp_mix ~expn:expn is_pvar e2 in
     Smt.smtlib_and smt1 smt2

let smtlib_var_range_mix v =
  let ty = typ_of_var v in
  let min_Z = min_of_typ ty in
  let max_Z = max_of_typ ty in
  let min_smtlib =
    Printf.sprintf
      "(%s %s %s)"
      (Smt.smtlib_ecmpop Ele)
      (Z.to_string min_Z)
      (smtlib_bv2i v) in
  let max_smtlib =
    Printf.sprintf
      "(%s %s %s)"
      (Smt.smtlib_ecmpop Ele)
      (smtlib_bv2i v)
      (Z.to_string max_Z) in
  Smt.smtlib_and min_smtlib max_smtlib

let smtlib_var_ranges_mix vs =
  let smtlib_var_range_acc_mix res v =
    let smtlib = smtlib_var_range_mix v in
    smtlib::res in
  List.fold_left smtlib_var_range_acc_mix [] vs

(* Convert a specification to SMTLIB. The output will use integer theory and
   bit-vector theory. Cuts and assertions are not allowed in the input
   specification. *)
let smtlib_spec ?(expn=true) vgen s =
  let rs = rspec_of_spec s in
  let es = espec_of_spec s in
  (* === range === *)
  let rng_f = Smt.bexp_rbexp rs.rspre |> Qfbv.Common.smtlib2_of_bexp in
  let rng_p =  Smt.bexp_program rs.rsprog |> tmap Qfbv.Common.smtlib2_of_bexp in
  let rng_g =
    let rng_g = Smt.bexp_rbexp (rbexp_prove_with_rands rs.rspost) in
    if is_rspec_trivial rs
    then smtlib_true
    else Qfbv.Common.smtlib2_of_bexp rng_g in
  (* === algebra === *)
  let (vgen, zs) = Cas.bv2z_espec vgen es in
  (* pvs: bit-vector variables *)
  let pvs = VS.diff (Cas.vars_poly_spec zs) (alg_gvs_spec s) in
  let is_pvar v = VS.mem v pvs in
  let _pvs_ranges = smtlib_var_ranges_mix (VS.elements pvs) in
  let alg_f = smtlib_ebexp_mix ~expn:expn is_pvar zs.ppre in
  let alg_p = tmap (smtlib_ebexp_mix ~expn:expn is_pvar) zs.pprog in
  let alg_g =
    let alg_g = smtlib_ebexp_mix ~expn:expn is_pvar zs.ppost in
    if is_espec_trivial es
    then smtlib_true
    else alg_g in
  let alg_post_disj = List.rev_map (smtlib_eexp_mix ~expn:expn is_pvar) zs.pextra
                      |> List.rev_map (fun e -> Smt.smtlib_eq e "0") in
  (* All variables *)
  let vars = Cas.vars_poly_spec zs in
  (* === SMTLIB output === *)
  let res_smtlib =
    Printf.sprintf
      "(set-info :smt-lib-version 2.0)\n\
       (set-logic ALL)\n\
       (declare-fun eqmod (Int Int Int) Bool)\n\
       ; variable declaration\n\
       %s\n\
       ; range precondition and program \n\
       %s\n\
       %s\n\
       ; algebraic precondition and program\n\
       %s\n\
       %s\n\
       ; postcondition\n\
       %s\n\
       ; check\n\
       (check-sat)\n\
       (exit)\n"
      (* Program variables*)
      (smtlib2_declare_vars_mix pvs (VS.diff vars pvs
      ))
      (* (String.concat "\n" (tmap Smt.smtlib_assert pvs_ranges)) *)
      (* range precondition and program *)
      (Smt.smtlib_assert rng_f)
      (String.concat "\n" (tmap Smt.smtlib_assert rng_p))
      (* algebra precondition and program *)
      (Smt.smtlib_assert alg_f)
      (String.concat "\n" (List.rev_map Smt.smtlib_assert (List.rev alg_p)))
      (* postcondition *)
      (Smt.smtlib_assert
         (Smt.smtlib_not
            (Smt.smtlib_and
               rng_g
               (Smt.smtlib_ors (alg_g::alg_post_disj))
      )))
  in
  (vgen, res_smtlib)


         (*

  let (vgen, zs) = Cas.bv2z_espec vgen es in
  (* Convert to ebexp *)
  let (vgen, zf, zp, zg) =
    let (vgen, zf) = translate_eeqmod vgen zs.ppre in
    let (vgen, zp_rev) = List.fold_left (fun (vgen, zp_rev) i -> let (vgen, zi) = translate_eeqmod vgen i in (vgen, zi::zp_rev)) (vgen, []) zs.pprog in
    (vgen, zf, List.rev zp_rev, zs.ppost) in
  (* Collect free variables *)
  let vars = VS.elements (List.fold_left (fun res e -> VS.union res (vars_ebexp e)) VS.empty (zf::(rcons zp zg))) in
  (* Convert to SMTLIB format *)
  let (vgen, _ks_rev, f, p, g) =
    let (vgen, f) = smtlib_ebexp_mix ~expn:expn vgen zf in
    let (vgen, p_rev) = List.fold_left (fun (vgen, p_rev) e -> let (vgen, e) = smtlib_ebexp_mix ~expn:expn vgen e in (vgen, e::p_rev)) (vgen, []) zp in
    let (vgen, ks_rev, g) = smtlib_ebexp_consequence_mix ~expn:expn vgen zg in
    (vgen, ks_rev, f, List.rev p_rev, g) in
  (*
    Variable ranges
    Ghost variables are excluded because their ranges may be unbounded.
   *)
  let (vgen, var_ranges) =
    (* Collection variables from polynomial equations rather than the input specification *)
    let program_vars = VS.diff (VS.of_list vars) (gvs_program es.esprog) in
    smtlib_var_ranges ~expn:expn vgen (VS.elements program_vars) in
  (* Return the string representation in SMTLIB *)
  (vgen,
   String.concat "\n" [
       "(set-logic NIA)";
       smtlib_define_expn();
       String.concat "\n" (List.map smtlib_declare_int (List.map string_of_var vars));
       String.concat "\n" (List.map smtlib_assert var_ranges);
       smtlib_assert f;
       String.concat "\n" (List.map smtlib_assert p);
       (smtlib_assert (smtlib_not g));
       "(check-sat)"
  ])
*)
