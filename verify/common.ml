
open Ast.Cryptoline
open Qfbv.Common
open Options.Std
open Utils.Std

type var_gen = Cas.var_gen

type round_result = Smt.round_result

type poly_spec = Cas.poly_spec

let vgen_of_spec = Cas.vgen_of_spec

let vgen_of_espec = Cas.vgen_of_espec

let vgen_of_rspec = Cas.vgen_of_rspec

let bexp_rbexp = Smt.bexp_rbexp

let bexp_instr_safe = Smt.bexp_instr_safe

let bv2z_espec = Cas.bv2z_espec

let polys_of_espec = Cas.polys_of_espec

let polys_of_espec_two_phase = Cas.polys_of_espec_two_phase

(** Solve poly_spec with Groebner basis *)

let algebra_symbol_of_ebinop op =
  match op with
  | Epow -> "^"
  | _ -> symbol_of_ebinop op

let rec singular_of_eexp e =
  match e with
  | Evar v -> string_of_var v
  | Econst n -> "bigint(" ^ (Z.to_string n) ^ ")"
  | Eunop (op, e) ->
     symbol_of_eunop op ^ (if is_eexp_atom e then singular_of_eexp e else " (" ^ singular_of_eexp e ^ ")")
  | Ebinop (Epow, e, Econst z) ->
     (if eexp_ebinop_open e Epow then singular_of_eexp e
      else "(" ^ singular_of_eexp e ^ ")") ^ algebra_symbol_of_ebinop Epow ^ Z.to_string z
  | Ebinop (op, e1, e2) ->
     (if eexp_ebinop_open e1 op then singular_of_eexp e1 else "(" ^ singular_of_eexp e1 ^ ")")
     ^ " " ^ algebra_symbol_of_ebinop op ^ " "
     ^ (if ebinop_eexp_open op e2 then singular_of_eexp e2 else "(" ^ singular_of_eexp e2 ^ ")")

let rec sage_of_eexp e =
  match e with
  | Evar v -> string_of_var v
  | Econst n -> string_of_const n
  | Eunop (op, e) ->
     symbol_of_eunop op ^ (if is_eexp_atom e then sage_of_eexp e else " (" ^ sage_of_eexp e ^ ")")
  | Ebinop (op, e1, e2) ->
     (if eexp_ebinop_open e1 op then sage_of_eexp e1 else "(" ^ sage_of_eexp e1 ^ ")")
     ^ " " ^ algebra_symbol_of_ebinop op ^ " "
     ^ (if ebinop_eexp_open op e2 then sage_of_eexp e2 else "(" ^ sage_of_eexp e2 ^ ")")

let rec magma_of_eexp e =
  match e with
  | Evar v -> string_of_var v
  | Econst n -> string_of_const n
  | Eunop (op, e) ->
     symbol_of_eunop op ^ (if is_eexp_atom e then magma_of_eexp e else " (" ^ magma_of_eexp e ^ ")")
  | Ebinop (op, e1, e2) ->
     (if is_eexp_atom e1 then magma_of_eexp e1 else "(" ^ magma_of_eexp e1 ^ ")")
     ^ " " ^ algebra_symbol_of_ebinop op ^ " "
     ^ (if is_eexp_atom e2 then magma_of_eexp e2 else "(" ^ magma_of_eexp e2 ^ ")")

let maple_of_eexp e = magma_of_eexp e

(* Underscore is not allowed in variable names in Mathematica. *)
let mathematica_of_var v = "v[\"" ^ string_of_var v ^ "\"]"
let rec mathematica_of_eexp e =
  match e with
  | Evar v -> mathematica_of_var v
  | Econst n -> string_of_const n
  | Eunop (op, e) ->
     symbol_of_eunop op ^ (if is_eexp_atom e then mathematica_of_eexp e else " (" ^ mathematica_of_eexp e ^ ")")
  | Ebinop (op, e1, e2) ->
     (if eexp_ebinop_open e1 op then mathematica_of_eexp e1 else "(" ^ mathematica_of_eexp e1 ^ ")")
     ^ " " ^ algebra_symbol_of_ebinop op ^ " "
     ^ (if ebinop_eexp_open op e2 then mathematica_of_eexp e2 else "(" ^ mathematica_of_eexp e2 ^ ")")

let macaulay2_of_var v = String.map (fun c -> if c = '_' then '\'' else c) (string_of_var v)
let rec macaulay2_of_eexp e =
  match e with
  | Evar v -> macaulay2_of_var v
  | Econst n -> string_of_const n
  | Eunop (op, e) ->
     symbol_of_eunop op ^ (if is_eexp_atom e then macaulay2_of_eexp e else " (" ^ macaulay2_of_eexp e ^ ")")
  | Ebinop (op, e1, e2) ->
     (if eexp_ebinop_open e1 op then macaulay2_of_eexp e1 else "(" ^ macaulay2_of_eexp e1 ^ ")")
     ^ " " ^ algebra_symbol_of_ebinop op ^ " "
     ^ (if ebinop_eexp_open op e2 then macaulay2_of_eexp e2 else "(" ^ macaulay2_of_eexp e2 ^ ")")

(* Slice at the polynomial level. Currently functions with names slice_*_ssa in Cryptoline are used. *)
let _slice_polys ideal p =
  let vars = eexp_vars_sat (vars_eexp p) ideal in
  let rec helper res es =
    match es with
    | [] -> res
    | hd::tl ->
       let vs = vars_eexp hd in
       if VS.is_empty vs || not (VS.is_empty (VS.inter vs vars)) then helper (hd::res) tl
       else helper res tl in
  helper [] (List.rev ideal)

(* Slice a precondition and a program according to a safety condition. *)
let slice_for_safety f p safety_cond hashopt =
  let vars =
    match hashopt with
    | Some dep_hash ->
       let root_vars = vars_bexp safety_cond in
       let program_vars =
         VS.fold (fun v ret -> VS.union ret (find_dep_vars dep_hash v))
           root_vars root_vars in
       rbexp_vars_sat program_vars f
    | None ->
       program_pre_vars_sat (vars_bexp safety_cond) rbexp_vars_sat f p in
  (slice_rbexp vars f, slice_program_ssa vars p)

(*
 * Convert a precondition and a program to QFBV bexps according to a safety condition.
 * The precondition and the program may be sliced.
 *)
let safety_assumptions f p safety_cond hashopt =
  let (f, p) =
    if !apply_slicing then
      slice_for_safety f p safety_cond hashopt
    else (f, p) in
  (Smt.bexp_rbexp f)::(Smt.bexp_program p)

let bexp_program_safe_numbered_conds sid f p hashopt =
  let add_ids id (i, cond) = (id + sid, i, cond) in
  let bexp_program_safe_conds' p =
    let rec helper res_rev prefix_rev p =
      match p with
      | [] -> List.rev res_rev
      | i::p -> let q = Smt.bexp_instr_safe i in
                if q = True then helper res_rev (i::prefix_rev) p
                else let fp = safety_assumptions f (List.rev prefix_rev) q hashopt in
                     helper ((i, rcons fp q)::res_rev) (i::prefix_rev) p in
    helper [] [] p in
  let conds = bexp_program_safe_conds' p |> List.mapi add_ids in
  let next_sid = sid + List.length conds in
  (next_sid, conds)


(** Rewriting in root entailment problems *)

let rec eqmod_to_eq vgen eb =
  match eb with
  | Eeqmod (e1, e2, ms) ->
     let gen_and_mul (vgen, newvars_rev, kms_rev) m =
       let (vgen, tmp) = Cas.mk_newvar vgen (Tuint 0) in
       (vgen, tmp::newvars_rev, (emul (evar tmp) m)::kms_rev) in
     let (vgen, newvars_rev, kms_rev) = List.fold_left gen_and_mul (vgen, [], []) ms in
     (vgen, List.rev newvars_rev, Eeq (esub e1 e2, eadds (List.rev kms_rev)))
  | Eand (e1, e2) -> let (vgen, newvars1, e1) = eqmod_to_eq vgen e1 in
                     let (vgen, newvars2, e2) = eqmod_to_eq vgen e2 in
                     (vgen, newvars1 @@ newvars2, Eand (e1, e2))
  | _ -> (vgen, [], eb)

let eqmods_to_eqs vgen ebs =
  let (vgen, newvars_rev, ebs_rev) =
    List.fold_left (
        fun (vgen, newvars, ebs) eb ->
        let (vgen, newvars', eb) = eqmod_to_eq vgen eb in
        (vgen, List.rev_append newvars' newvars, eb::ebs)
      ) (vgen, [], []) ebs in
  (vgen, List.rev newvars_rev, List.rev ebs_rev)

let poly_spec_elim_eqmod vgen ps =
  let (vgen, newvars1, pre) = eqmod_to_eq vgen ps.Cas.ppre in
  let (vgen, newvars2, prog) = eqmods_to_eqs vgen ps.pprog in
  (vgen, newvars1 @@ newvars2, { Cas.ppre = pre; pprog = prog; ppost = ps.ppost; pextra = ps.pextra  })

let poly_spec_elim_eand_prog ps =
  { Cas.ppre = ps.Cas.ppre;
    pprog = tflatten (List.rev_map split_eand (List.rev ps.pprog));
    ppost = ps.ppost;
    pextra = ps.pextra }

let rewrite_poly_spec vgen ps =
  let add_varset eb = (eb, vids_ebexp eb) in
  let add_varsets ebs = List.rev (List.rev_map add_varset ebs) in
  let subst_ebexp_vs (v, e) (eb, vs) =
    if IS.mem v.vid vs then (subst_ebexp (VM.singleton v e) eb, IS.union (IS.remove v.vid vs) (vids_eexp e))
    else (eb, vs) in
  let subst_ebexp_vss (v, e) ebexp_vss =
    List.rev (List.rev_map (subst_ebexp_vs (v, e)) ebexp_vss) in
  let is_assignment eb =
    match eb with
    | Eeq (e1, e2) -> Rewrite.is_assignment_under_moduli (esub e1 e2) []
    | _ -> None in
  let do_rewrite (pres_vs, prog_vs, post_vs) =
    let rec rewrite_using_pre (pres_vs, prog_vs, post_vs) ebs_vs =
      match ebs_vs with
      | [] -> (List.rev pres_vs, prog_vs, post_vs)
      | (hd_eb, hd_vs)::tl ->
         begin
           match is_assignment hd_eb with
           | None ->
              rewrite_using_pre ((hd_eb, hd_vs)::pres_vs, prog_vs, post_vs) tl
           | Some (v, e) ->
              rewrite_using_pre (subst_ebexp_vss (v, e) pres_vs,
                                 subst_ebexp_vss (v, e) prog_vs,
                                 subst_ebexp_vs (v, e) post_vs)
                (subst_ebexp_vss (v, e) tl)
         end in
    let rec rewrite_using_prog (pres_vs, prog_vs, post_vs) ebs_vs =
      match ebs_vs with
      | [] -> (pres_vs, List.rev prog_vs, post_vs)
      | (hd_eb, hd_vs)::tl ->
         begin
           match is_assignment hd_eb with
           | None ->
              rewrite_using_prog (pres_vs, (hd_eb, hd_vs)::prog_vs, post_vs) tl
           | Some (v, e) ->
              rewrite_using_prog (subst_ebexp_vss (v, e) pres_vs,
                                  subst_ebexp_vss (v, e) prog_vs,
                                  subst_ebexp_vs (v, e) post_vs)
                (subst_ebexp_vss (v, e) tl)
         end in
    rewrite_using_pre ([], prog_vs, post_vs) pres_vs
    |> (fun (pres_vs, prog_vs, post_vs) -> rewrite_using_prog (pres_vs, [], post_vs) prog_vs)
    |> (fun (pres_vs, prog_vs, post_vs) -> { Cas.ppre = List.split pres_vs |> fst |> eands;
                                             pprog = List.split prog_vs |> fst;
                                             ppost = fst post_vs;
                                             pextra = [] }) in
  let (vgen, _, ps) = poly_spec_elim_eand_prog ps |> poly_spec_elim_eqmod vgen in
  (vgen, do_rewrite (add_varsets (split_eand ps.ppre), add_varsets ps.pprog, add_varset ps.ppost))


(** For redlog *)

(* Used for redlog output *)
let rewrite_assignments_ebexp ideal p =
  let is_assignment e =
    match e with
    | Ebinop (Esub, Evar v, e) | Ebinop (Esub, e, Evar v) -> Some (v, e)
    | Ebinop (Esub, Ebinop (Eadd, Evar v, e1), e2)
      | Ebinop (Esub, e2, Ebinop (Eadd, Evar v, e1)) -> Some (v, esub e2 e1)
    | _ -> Rewrite.get_rewrite_pattern e in
  let rec do_rewrite finished ideal p =
    match ideal with
    | [] -> (finished, p)
    | hd::tl ->
       (match is_assignment hd with
        | None -> do_rewrite (hd::finished) tl p
        | Some (v, e) -> let em = VM.singleton v e in
                         do_rewrite (List.rev (List.rev_map (subst_eexp em) finished))
                           (List.rev (List.rev_map (subst_eexp em) tl))
                           (subst_ebexp em p)) in
  let (finished, p) = do_rewrite [] ideal p in
  (List.rev finished, p)

let redlog_of_espec es =
  let eqn_of_eexp e =
    let redlog_string_of_eunop op =
      match op with
      | Eneg -> "-" in
    let redlog_string_of_ebinop op =
      match op with
      | Eadd -> "+"
      | Esub -> "-"
      | Emul -> "*"
      | Epow -> "^" in
    let rec redlog_string_of_eexp e =
      match e with
      | Evar v -> string_of_var v
      | Econst n -> Z.to_string n
      | Eunop (op, e) -> redlog_string_of_eunop op ^ " (" ^ redlog_string_of_eexp e ^ ")"
      | Ebinop (op, e1, e2) -> "(" ^ redlog_string_of_eexp e1 ^ ") " ^ redlog_string_of_ebinop op ^ " (" ^ redlog_string_of_eexp e2 ^ ")" in
    (* Change "c*(c-1)=0" to "c=0 or c=1". *)
    (*
      match e with
    | BveBinop (BveMul, BveVar v, BveBinop (BveSub, BveVar v', BveConst c)) when v == v' && eq_big_int c (unit_big_int) -> "(" ^ v ^ " = 0 or " ^ v ^ " = 1)"
    | _ -> redlog_string_of_eexp e ^ " = 0" *)
    redlog_string_of_eexp e ^ " = 0" in
  let vgen = Cas.vgen_of_espec es in
  let (vgen, zssa) = Cas.bv2z_espec vgen es in
  let (vgen, premises) =
    let (vgen, _, pre_ps) =
      Cas.polys_of_ebexp vgen zssa.ppre in
    let (vgen, prog_ps) =
      List.fold_left
        (fun (vgen, res) e ->
          let (vgen, _, ps) = Cas.polys_of_ebexp vgen e in
          (vgen, res @@ ps)
        ) (vgen, []) zssa.pprog in
    (vgen, pre_ps @@ prog_ps) in
  let (_vgen, tmps, premises, posts) =
    let (premises, post) = rewrite_assignments_ebexp premises zssa.ppost in
    let (vgen, tmps, posts) = Cas.polys_of_ebexp vgen post in
    (vgen, tmps, premises, posts) in
  let phi =
    let conj es = String.concat " and " (List.map eqn_of_eexp es) in
    match premises, tmps with
    | [], [] -> conj posts
    | [], _ -> "ex({" ^ String.concat ", " (List.map string_of_var tmps) ^ "}, " ^ conj posts ^ ")"
    | _, [] -> "(" ^ conj premises ^ ") impl (" ^ conj posts ^ ")"
    | _ -> "ex({" ^ String.concat ", " (List.map string_of_var tmps) ^ "}, (" ^ conj premises ^ ") impl (" ^ conj posts ^ "))"
  in
  String.concat "\n" [ "load_package redlog;";
                       "rlset Z;";
                       "phi := " ^ phi ^ ";";
                       "rlwqe phi;" ]

let redlog_of_espec es =
  let ess = cut_espec es |> List.map List.split |> List.map snd in
  String.concat "\n\n" (List.map redlog_of_espec (List.flatten ess))

let is_mip_ivar = Mip.is_ivar
let is_mip_cvar = Mip.is_cvar
let var_of_mip = Mip.var_of_mip

let mip_of_espec = Mip.of_espec

let rec ppl_of_eexp e =
  let ppl_symbol_of_ebinop op =
    match op with
    | Esub -> "+ (-1) *"
    | _ -> algebra_symbol_of_ebinop op in
  match e with
  | Evar v -> string_of_var v
  | Econst n -> Z.to_string n
  | Eunop (op, e) ->
     symbol_of_eunop op ^ (if is_eexp_atom e then ppl_of_eexp e
                           else " (" ^ ppl_of_eexp e ^ ")")
  | Ebinop (Epow, e, Econst z) ->
     (if eexp_ebinop_open e Epow then ppl_of_eexp e
      else "(" ^ ppl_of_eexp e ^ ")") ^ "**" ^ Z.to_string z
  | Ebinop (op, e1, e2) ->
     (if eexp_ebinop_open e1 op then ppl_of_eexp e1
      else "(" ^ ppl_of_eexp e1 ^ ")")
     ^ " " ^ ppl_symbol_of_ebinop op ^ " "
     ^ (if ebinop_eexp_open op e2 then ppl_of_eexp e2
        else "(" ^ ppl_of_eexp e2 ^ ")")

let ppl_of_ebexp eb =
  match eb with
  | Eeq (e0, e1) -> ppl_of_eexp e0 ^ " == " ^ ppl_of_eexp e1
  | Ecmp (Elt, e0, e1) -> ppl_of_eexp e0 ^ " <= " ^ ppl_of_eexp e1 ^ " - 1"
  | Ecmp (Ele, e0, e1) -> ppl_of_eexp e0 ^ " <= " ^ ppl_of_eexp e1
  | Ecmp (Egt, e0, e1) -> ppl_of_eexp e0 ^ " >= " ^ ppl_of_eexp e1 ^ " + 1"
  | Ecmp (Ege, e0, e1) -> ppl_of_eexp e0 ^ " >= " ^ ppl_of_eexp e1
  | Etrue | Eeqmod _ | Eand _ ->
     failwith "Internal error: Etrue, Eeqmod, and Eand are not allowed in ppl_of_ebexp"

let scip_of_eexp = ppl_of_eexp
let scip_of_ebexp = ppl_of_ebexp

