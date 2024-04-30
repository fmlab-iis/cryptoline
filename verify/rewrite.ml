(** Rewriting patterns *)

open Ast.Cryptoline
open Utils.Std


let get_rewrite_pattern e =
  let rec single_variables e =
    match e with
    | Evar v -> VS.singleton v
    | Econst _ -> VS.empty
    | Eunop (_, e) -> single_variables e
    | Ebinop (op, e1, e2) when op = Eadd || op = Esub -> VS.union (single_variables e1) (single_variables e2)
    | _ -> VS.empty in
  let rec num_occurrence v e =
    match e with
    | Evar x when eq_var x v -> 1
    | Eunop (_, e) -> num_occurrence v e
    | Ebinop (_, e1, e2) -> num_occurrence v e1 + num_occurrence v e2
    | _ -> 0 in
  let rec separate v e pat =
    match e with
    | Evar x when eq_var x v -> pat
    | Eunop (Eneg, e) when VS.mem v (vars_eexp e) -> separate v e (eneg pat)
    | Ebinop (op, e1, e2) ->
       let in1 = VS.mem v (vars_eexp e1) in
       let in2 = VS.mem v (vars_eexp e2) in
       let (has_v, add_pat, pat) =
         match op, in1, in2 with
         | Eadd, true, false -> (e1, eneg e2, pat)
         | Eadd, false, true -> (e2, eneg e1, pat)
         | Esub, true, false -> (e1, e2, pat)
         | Esub, false, true -> (e2, e1, eneg pat)
         | _ -> failwith "Impossible Ebinop case in get_rewrite_pattern." in
       separate v has_v (eadd pat add_pat)
    | _ -> failwith "Impossible case in get_rewrite_pattern." in
  let candidates = VS.filter (fun v -> num_occurrence v e = 1) (single_variables e) in
  if VS.cardinal candidates = 0 then
    None
  else
    let v = VS.min_elt candidates in
    let pat = separate v e (econst Z.zero) in
    let pat = simplify_eexp pat in
    Some (v, pat)

exception RewriteSeparationException

let get_rewrite_pattern' e others =
  let rec num_occurrence sub e =
    if eq_eexp sub e then 1
    else match e with
         | Eunop (_, e) -> num_occurrence sub e
         | Ebinop (_, e1, e2) -> num_occurrence sub e1 + num_occurrence sub e2
         | _ -> 0 in
  let vars_disjoint_except_eq sub e =
    let vars_sub = vars_eexp sub in
    let rec helper e =
      if eq_eexp sub e then true
      else match e with
           | Evar v -> not (VS.mem v vars_sub)
           | Eunop (_, e) -> helper e
           | Ebinop (_, e1, e2) -> helper e1 && helper e2
           | _ -> true in
    helper e in
  let rec sub_exprs_with_var e =
    if VS.is_empty (vars_eexp e) then []
    else e::(match e with
             | Eunop (_, e) -> sub_exprs_with_var e
             | Ebinop (_, e1, e2) -> (sub_exprs_with_var e1) @@ (sub_exprs_with_var e2)
             | _ -> []) in
  let rec separate sub e pat =
    if eq_eexp sub e then pat
    else
      match e with
      | Eunop (Eneg, e) when eexp_has_sub e sub -> separate sub e (eneg pat)
      | Ebinop (op, e1, e2) ->
         let in1 = eexp_has_sub e1 sub in
         let in2 = eexp_has_sub e2 sub in
         let (has_sub, add_pat, pat) =
           match op, in1, in2 with
           | Eadd, true, false -> (e1, eneg e2, pat)
           | Eadd, false, true -> (e2, eneg e1, pat)
           | Esub, true, false -> (e1, e2, pat)
           | Esub, false, true -> (e2, e1, eneg pat)
           | _ -> raise RewriteSeparationException in
         separate sub has_sub (eadd pat add_pat)
      | _ -> raise RewriteSeparationException in
  (* Check shorter eexp first. *)
  let sort_by_length es =
    snd (List.split (List.sort (fun (l1, _) (l2, _) -> Stdlib.compare l1 l2)
                       (List.map (fun e -> (len_eexp e, e)) es))) in
  let is_candidate sub = num_occurrence sub e = 1
                         && vars_disjoint_except_eq sub e
                         && List.for_all (vars_disjoint_except_eq sub) others in
  let rec find_separable subs =
    match subs with
    | [] -> None
    | hd::tl when is_candidate hd ->
       (try
          let pat = separate hd e (econst Z.zero) in
          let pat = simplify_eexp pat in
          Some (hd, pat)
        with RewriteSeparationException ->
          find_separable tl)
    | _::tl -> find_separable tl in
  find_separable (sort_by_length (sub_exprs_with_var e))

let subsumed_by_moduli e moduli =
  let rec helper e moduli =
    match e with
    | Ebinop (Emul, _, m) -> List.exists (eq_eexp m) moduli
    | Ebinop (Eadd, e0, e1)
      | Ebinop (Esub, e0, e1) -> helper e0 moduli && helper e1 moduli
    | _ -> false in
  (* We don't need to traverse e when moduli is empty. *)
  match moduli with
  | [] -> false
  | _ -> helper e moduli

(* There are matching rules for common patterns from program instructions.
   For general cases, use get_rewrite_pattern. Note that predicates from
   cut, assume, and ghost may match the common patterns but they are not
   instructions. Thus in v - e, variable v may occur in e. *)
let is_assignment_under_moduli e moduli =
  match e with
  | Econst _ -> None
  (* v = e (mod em), e = v (mod em) *)
  | Ebinop (Esub, (Ebinop (Esub, Evar v, e)), em)
       when subsumed_by_moduli em moduli && not (IS.mem v.vid (IS.union (vids_eexp e) (vids_eexp em))) ->
     Some (v, e)
  | Ebinop (Esub, (Ebinop (Esub, e, Evar v)), em)
       when subsumed_by_moduli em moduli && not (IS.mem v.vid (IS.union (vids_eexp e) (vids_eexp em))) ->
     Some (v, e)
  (* v = e, e = v *)
  | Ebinop (Esub, Evar v, e) when not (IS.mem v.vid (vids_eexp e)) -> Some (v, e)
  | Ebinop (Esub, e, Evar v) when not (IS.mem v.vid (vids_eexp e)) -> Some (v, e)
  (* v + e1 = e2, e2 = v + e1 *)
  | Ebinop (Esub, Ebinop (Eadd, Evar v, e1), e2)
       when not (IS.mem v.vid (IS.union (vids_eexp e1) (vids_eexp e2))) -> Some (v, esub e2 e1)
  | Ebinop (Esub, e2, Ebinop (Eadd, Evar v, e1))
       when not (IS.mem v.vid (IS.union (vids_eexp e1) (vids_eexp e2))) -> Some (v, esub e2 e1)
  | _ -> get_rewrite_pattern e

let is_assignment_under_moduli' e others moduli =
  match e with
  | Econst _ -> None
  (* v = e (mod em), e = v (mod em) *)
  | Ebinop (Esub, (Ebinop (Esub, Evar v, e)), em)
       when subsumed_by_moduli em moduli && not (VS.mem v (VS.union (vars_eexp e) (vars_eexp em))) ->
     Some (evar v, e)
  | Ebinop (Esub, (Ebinop (Esub, e, Evar v)), em)
       when subsumed_by_moduli em moduli && not (VS.mem v (VS.union (vars_eexp e) (vars_eexp em))) ->
     Some (evar v, e)
  (* v = e, e = v *)
  | Ebinop (Esub, Evar v, e) when not (VS.mem v (vars_eexp e)) -> Some (evar v, e)
  | Ebinop (Esub, e, Evar v) when not (VS.mem v (vars_eexp e)) -> Some (evar v, e)
  (* v + e1 = e2, e2 = v + e1 *)
  | Ebinop (Esub, Ebinop (Eadd, Evar v, e1), e2)
       when not (VS.mem v (VS.union (vars_eexp e1) (vars_eexp e2))) -> Some (evar v, esub e2 e1)
  | Ebinop (Esub, e2, Ebinop (Eadd, Evar v, e1))
       when not (VS.mem v (VS.union (vars_eexp e1) (vars_eexp e2))) -> Some (evar v, esub e2 e1)
  | _ -> get_rewrite_pattern' e others


(** Rewriting in ideal membership problems *)

let rewrite_assignments ideal p moduli =
  let add_varsets polys =
    List.rev (List.rev_map (fun poly -> (poly, vids_eexp poly)) polys) in
  let subst_poly_vs (v, e) (poly, vs) =
    if IS.mem v.vid vs then (subst_eexp (VM.singleton v e) poly, IS.union (IS.remove v.vid vs) (vids_eexp e))
    else (poly, vs) in
  let subst_poly_vss (v, e) poly_vss =
    List.rev (List.rev_map (subst_poly_vs (v, e)) poly_vss) in
  let rec do_rewrite idx finished_vs ideal_vs p_vs =
    match ideal_vs with
    | [] -> (fst (List.split finished_vs), fst p_vs)
    | (hd_poly, hd_vs)::tl ->
       (match is_assignment_under_moduli hd_poly moduli with
        | None ->
           do_rewrite (idx+1) ((hd_poly, hd_vs)::finished_vs) tl p_vs
        | Some (v, e) ->
           do_rewrite (idx+1) (subst_poly_vss (v, e) finished_vs)
             (subst_poly_vss (v, e) tl) (subst_poly_vs (v, e) p_vs)) in
  let (finished, p) =
    do_rewrite 0 [] (add_varsets ideal) (p, vids_eexp p) in
  (List.rev finished, p)

(**
   [rewrite_assignments_two_phase ideal_aps post_p_ms_list moduli] rewrites
   [ideal_aps] and [post_p_ms_list] according to assignments in [ideal_aps]
   and moduli [moduli].
   @param ideal_aps a list [[(p1, a1); ...; (pn, an)]] of annotated polynomials
                    where [pi] is a polynomial and [ai] is its annotation
   @param post_p_ms_list a list [[(post1, sc1, p1, ms1); ...; (postn, scn, pn, msn)]]
                         where [posti] is a postcondition, [sci] is the initial slicing criteria
                         [pi] is a polynomial asserted to be [0] modulo the moduli [msi]
   @param moduli moduli in the postcondition
   @return rewritten [(ideal_aps, post_p_ms_list)]
 *)
let rewrite_assignments_two_phase ideal_aps (post_p_ms_list : (ebexp * IS.t * eexp * eexp list) list) moduli =
  let add_vids aps = List.rev_map (fun (poly, annot) -> ((poly, annot), vids_eexp poly)) (List.rev aps) in
  let add_vids_post_p_ms_list post_p_ms_list = List.rev_map (fun (post, sc, p, ms) -> ((post, sc, p, ms), (vids_eexp p, (List.map vids_eexp ms)))) (List.rev post_p_ms_list) in
  let subst_poly_vs (v, e) (poly, vs) = if IS.mem v.vid vs
                                        then (subst_eexp (VM.singleton v e) poly, IS.union (IS.remove v.vid vs) (vids_eexp e))
                                        else (poly, vs) in
  let subst_apoly_vs (v, e) ((poly, annot), vs) = let (poly', vs') = subst_poly_vs (v, e) (poly, vs) in
                                                  ((poly', annot), vs') in
  let subst_apoly_vss (v, e) apoly_vss = List.rev (List.rev_map (subst_apoly_vs (v, e)) apoly_vss) in
  let subst_post_p_ms_vs_list (v, e) post_p_ms_vs_list =
    List.rev_map
      (fun ((post, sc, p, ms), (vs, ms_vs)) -> let (p', vs') = subst_poly_vs (v, e) (p, vs) in
                                               let ms_ms_vs' = List.map2 (fun m m_vs -> subst_poly_vs (v, e) (m, m_vs)) ms ms_vs in
                                               let (ms', ms_vs') = List.split ms_ms_vs' in
                                               ((post, sc, p', ms'), (vs', ms_vs')))
      (List.rev post_p_ms_vs_list) in
  let rec do_rewrite finished_aps_vs_rev ideal_aps_vs post_p_ms_vs_list =
    match ideal_aps_vs with
    | [] -> (fst (List.split (List.rev finished_aps_vs_rev)), fst (List.split post_p_ms_vs_list))
    | (((hd_poly, _), _) as hd)::tl ->
       (match is_assignment_under_moduli hd_poly moduli with
        | None -> do_rewrite (hd::finished_aps_vs_rev) tl post_p_ms_vs_list
        | Some (v, e) -> do_rewrite (subst_apoly_vss (v, e) finished_aps_vs_rev)
                           (subst_apoly_vss (v, e) tl) (subst_post_p_ms_vs_list (v, e) post_p_ms_vs_list)) in
  do_rewrite [] (add_vids ideal_aps) (add_vids_post_p_ms_list post_p_ms_list)

let rewrite_assignments' ideal p moduli =
  let rec do_rewrite finished ideal p =
    match ideal with
    | [] -> (finished, p)
    | hd::tl ->
       (match is_assignment_under_moduli' hd (p::(finished @@ tl)) moduli with
        | None -> do_rewrite (hd::finished) tl p
        | Some (sub, e) ->
           do_rewrite (List.rev (List.rev_map (replace_eexp [(sub, e)]) finished))
             (List.rev (List.rev_map (replace_eexp [(sub, e)]) tl))
             (replace_eexp [(sub, e)] p)) in
  let (finished, p) = do_rewrite [] ideal p in
  (List.rev finished, p)

let rewrite_assignments_two_phase' ideal_aps (post_p_ms_list : (ebexp * IS.t * eexp * eexp list) list) moduli =
  let add_vids aps = List.rev_map (fun (poly, annot) -> ((poly, annot), vids_eexp poly)) (List.rev aps) in
  let add_vids_post_p_ms_list post_p_ms_list  = List.rev_map (fun (post, sc, p, ms) -> ((post, sc, p, ms), vids_eexp p)) (List.rev post_p_ms_list) in
  let subst_poly_vs (sub, sub_vs, e, e_vs) (poly, vs) = if IS.disjoint sub_vs vs then (poly, vs)
                                                        else (replace_eexp [(sub, e)] poly, IS.union (IS.diff vs sub_vs) e_vs) in
  let subst_apoly_vs pat ((poly, annot), vs) = let (poly', vs') = subst_poly_vs pat (poly, vs) in
                                               ((poly', annot), vs') in
  let subst_apoly_vss pat apoly_vss = List.rev (List.rev_map (subst_apoly_vs pat) apoly_vss) in
  let subst_post_p_ms_vs_list pat post_p_ms_vs_list =
    List.rev_map
      (fun ((post, sc, p, ms), vs) -> let (p', vs') = subst_poly_vs pat (p, vs) in
                                      ((post, sc, p', ms), vs'))
      (List.rev post_p_ms_vs_list) in
  let get_others finished_aps_vs_rev tl post_p_ms_vs_list : eexp list =
    let ps1 : eexp list = fst (List.split (fst (List.split finished_aps_vs_rev))) in
    let ps2 : eexp list = fst (List.split (fst (List.split tl))) in
    let ps3 : eexp list = tflatten (List.map (fun (_, _, p, ms) -> p::ms) (fst (List.split post_p_ms_vs_list))) in
    List.rev_append ps1 (List.rev_append ps2 ps3) in
  let rec do_rewrite finished_aps_vs_rev ideal_aps_vs post_p_ms_vs_list =
    match ideal_aps_vs with
    | [] -> (fst (List.split (List.rev finished_aps_vs_rev)), fst (List.split post_p_ms_vs_list))
    | (((hd_poly, _), _) as hd)::tl ->
       (match is_assignment_under_moduli' hd_poly (get_others finished_aps_vs_rev tl post_p_ms_vs_list) moduli with
        | None -> do_rewrite (hd::finished_aps_vs_rev) tl post_p_ms_vs_list
        | Some (sub, e) -> let pat = (sub, vids_eexp sub, e, vids_eexp e) in
                           do_rewrite (subst_apoly_vss pat finished_aps_vs_rev)
                             (subst_apoly_vss pat tl) (subst_post_p_ms_vs_list pat post_p_ms_vs_list)) in
  do_rewrite [] (add_vids ideal_aps) (add_vids_post_p_ms_list post_p_ms_list)


(** Rewriting in mixed integer programming *)

let rewrite_ebexps ebexps =
  let rec is_const e =
    match e with
    | Evar _ -> false
    | Econst _ -> true
    | Eunop (_, e') -> is_const e'
    | Ebinop (_, e0, e1) -> is_const e0 && is_const e1 in
  let rec helper res current =
    match current with
    | (Eeq (Evar v, e) as hd)::tl | (Eeq (e, Evar v) as hd)::tl ->
       if is_const e then
         let em = VM.add v e VM.empty in
         helper res (List.rev_map (subst_ebexp em) tl |> List.rev)
       else
         helper (hd::res) tl
    | hd::tl -> helper (hd::res) tl
    | [] -> res in
  helper [] ebexps |> List.rev

