
open Ast.Cryptoline

let rec split_eand eand ret =
  match eand with
  | Etrue -> ret
  | Eand (leand, reand) -> split_eand reand (split_eand leand ret)
  | e -> e::ret

let collect_assume_eqns p =
  let assume_ebexps i =
    match i with
    | Iassume (e, _) -> [e]
    | _ -> [] in
  let eands_bexp acc eands =
    List.fold_left (fun ret eand -> split_eand eand ret) acc eands in
  List.fold_left (fun ret i -> match assume_ebexps i with
                               | [] -> ret
                               | eands -> eands_bexp ret eands) [] p

let normalize_eexp e =
  let rec merge_exponents e =
    match e with
    (* X**i**j -> X**(i*j) *)
    | Ebinop (Epow, Ebinop (Epow, b, Econst i), Econst j) ->
       merge_exponents (Ebinop (Epow, b, Econst (Z.mul i j)))
    (* (X * Y)**i -> X**i * Y**i *)
    | Ebinop (Epow, Ebinop (Emul, b, c), i) ->
       Ebinop (Emul, merge_exponents (Ebinop (Epow, b, i)),
               merge_exponents (Ebinop (Epow, c, i)))
    | Eunop (o, f) -> Eunop (o, merge_exponents f)
    | Ebinop (o, f, g) -> Ebinop (o, merge_exponents f, merge_exponents g)
    | _ -> e in
  let merge_product e =
    let rec list_of_product e ret =
      match e with
      | Ebinop (Emul, l, r) -> list_of_product l (list_of_product r ret)
      | _ -> e::ret in
    let sort_eexps es = List.sort compare es in
    let product_of_list es =
      List.fold_left (fun ret e -> Ebinop (Emul, e, ret))
        (List.hd es) (List.tl es) in
    let rec do_merge e =
      match e with
      (* X * X -> X**2 *)
      | Ebinop (Emul, Evar b, Evar c) ->
         if b = c then Ebinop (Epow, Evar b, Econst (Z.of_int 2)) else e
      (* X * X * f -> X**2 * f *)
      | Ebinop (Emul, Evar b, Ebinop (Emul, Evar c, f)) ->
         if b = c then
           do_merge (Ebinop (Emul,
                             Ebinop (Epow, Evar b, Econst (Z.of_int 2)), f))
         else Ebinop (Emul, Evar b, do_merge (Ebinop (Emul, Evar c, f)))
      (* X * X**i -> X**(i+1) *)
      | Ebinop (Emul, Evar b, Ebinop (Epow, Evar c, Econst i)) ->
         if b = c
         then Ebinop (Epow, Evar b, Econst (Z.add i (Z.of_int 1)))
         else e
      (* X * X**i * f -> X**(i+1) * f *)
      | Ebinop (Emul, Evar b, Ebinop (Emul, Ebinop (Epow, Evar c, Econst i), f)) ->
         if b = c then
           do_merge (Ebinop (Emul, Ebinop (Epow, Evar b, Econst (Z.add i (Z.of_int 1))), f))
         else
           Ebinop (Emul, Evar b,
                   do_merge (Ebinop (Emul, Ebinop (Epow, Evar c, Econst i), f)))
      (* X**i * X -> X**(i+1) *)
      | Ebinop (Emul, Ebinop (Epow, Evar b, Econst i), Evar c) ->
         if b = c
         then Ebinop (Epow, Evar b, Econst (Z.add i (Z.of_int 1)))
         else e
      (* X**i * X -> X**(i+1) * f *)
      | Ebinop (Emul, Ebinop (Epow, Evar b, Econst i), Ebinop (Emul, Evar c, f)) ->
         if b = c then
           do_merge (Ebinop (Emul, Ebinop (Epow, Evar b,
                                           Econst (Z.add i (Z.of_int 1))), f))
         else
           Ebinop (Emul, Ebinop (Epow, Evar b, Econst i),
                   do_merge (Ebinop (Emul, Evar c, f)))
      (* X**i*X**j -> X**(i+j) *)
      | Ebinop (Emul, Ebinop (Epow, Evar b, Econst i),
                Ebinop (Epow, Evar c, Econst j)) ->
         if b = c then Ebinop (Epow, Evar b, Econst (Z.add i j))
         else e
      (* X**i*X**j -> X**(i+j) * f *)
      | Ebinop (Emul, Ebinop (Epow, Evar b, Econst i),
                Ebinop (Emul, Ebinop (Epow, Evar c, Econst j),
                        f)) ->
         if b = c then
           do_merge (Ebinop (Emul, Ebinop (Epow, Evar b, Econst (Z.add i j)), f))
         else
           Ebinop (Emul, Ebinop (Epow, Evar b, Econst i),
                   do_merge (Ebinop (Emul, Ebinop (Epow, Evar c, Econst j), f)))
      (* C**i*C**j -> C**(i+j) *)
      | Ebinop (Emul, Ebinop (Epow, Econst b, Econst i),
                Ebinop (Epow, Econst c, Econst j)) ->
         if b = c then
           let k = Z.add i j in
           if Z.equal Z.zero k then Econst Z.one
           else Ebinop (Epow, Econst b, Econst k)
         else e
      (* C**i*C**j -> C**(i+j) * f *)
      | Ebinop (Emul, Ebinop (Epow, Econst b, Econst i),
                Ebinop (Emul, Ebinop (Epow, Econst c, Econst j),
                        f)) ->
         if b = c then
           let k = Z.add i j in
           if Z.equal Z.zero k
           then do_merge f
           else do_merge (Ebinop (Emul, Ebinop (Epow, Econst b, Econst k), f))
         else
           Ebinop (Emul, Ebinop (Epow, Econst b, Econst i),
                   do_merge (Ebinop (Emul, Ebinop (Epow, Econst c, Econst j), f)))
      | Eunop (o, f) -> Eunop (o, do_merge f)
      | Ebinop (o, f, g) -> Ebinop (o, do_merge f, do_merge g)
      | _ -> e in
    match e with
    | Ebinop (Emul, _, _) ->
       do_merge (product_of_list (sort_eexps (list_of_product e [])))
    | Eunop (o, l) -> Eunop (o, do_merge l)
    | Ebinop (o, l, r) -> Ebinop (o, do_merge l, do_merge r)
    | _ -> e in
  merge_product (merge_exponents e)

let simple_rewrite all_eqns l r =
  let add_edges l r ret =
    match (l, r) with
    | Evar _, Evar _ -> Some ((l, r)::(r, l)::ret)
    | Evar _, _ ->
       let vars = vars_eexp r in
       Some (VS.fold (fun v res -> (l, Evar v)::res) vars ret)
    | _, Evar _ ->
       let vars = vars_eexp l in
       Some (VS.fold (fun v res -> (r, Evar v)::res) vars ret)
    | Ebinop (Emul, Evar v, Ebinop (Epow, Econst _, _)), _
    | Ebinop (Emul, Ebinop (Epow, Econst _, _), Evar v), _ ->
       let vars = vars_eexp r in
       Some (VS.fold (fun u res -> (Evar v, Evar u)::res) vars ret)
    | _, Ebinop (Emul, Evar v, Ebinop (Epow, Econst _, _))
    | _, Ebinop (Emul, Ebinop (Epow, Econst _, _), Evar v) ->
       let vars = vars_eexp l in
       Some (VS.fold (fun u res -> (Evar v, Evar u)::res) vars ret)
    | _, _ -> None in
  let add_eqns l r eqns =
    match l, r with
    | Evar _, Evar _ -> (l, r)::(r, l)::eqns
    | Evar _, _ -> (l, r)::eqns
    | _, Evar _ -> (r, l)::eqns
    | Ebinop (Emul, Evar v, Ebinop (Epow, Econst c, Econst i)), _
    | Ebinop (Emul, Ebinop (Epow, Econst c, Econst i), Evar v), _ ->
       let cinv = Ebinop (Epow, Econst c, Econst (Z.neg i)) in
       (Evar v, Ebinop (Emul, cinv, r))::eqns
    | _, Ebinop (Emul, Evar v, Ebinop (Epow, Econst c, Econst i))
    | _, Ebinop (Emul, Ebinop (Epow, Econst c, Econst i), Evar v) ->
       let cinv = Ebinop (Epow, Econst c, Econst (Z.neg i)) in
       (Evar v, Ebinop (Emul, cinv, l))::eqns
    | _, _ -> [] in
  let vardep, eqns =
    let helper (dep, eqns) e =
      match dep with
      | None -> (None, [])
      | Some edges ->
         match e with
         | Etrue -> (dep, eqns)
         | Eeq (l, r) | Eeqmod (l, r, _) ->
            (add_edges l r edges, add_eqns l r eqns)
         | _ ->
            failwith ("simple_rewrite does not conjunctive equations: " ^
                      (string_of_ebexp e)) in
    List.fold_left helper (Some [], []) all_eqns in
  let do_rewrite order rules e =
    List.fold_left (fun current left ->
        if Hashtbl.mem rules left
        then let right = Hashtbl.find rules left in
             let next = normalize_eexp (replace_eexp [(left, right)] current) in
(*
             let _ = print_endline (string_of_eexp next) in
 *)
             next
        else current)
      e order in
  match vardep with
  | None -> false
  | Some edges ->
     let g = Utils.Graph.mk_graph edges in
     let order = Utils.Graph.topological_sort g in
     (*
     let _ = print_endline "<order" in
     let _ = List.iter (fun e -> print_endline (string_of_eexp e)) order in
     let _ = print_endline "order>" in
      *)
     let rules =
       let order_hash = Hashtbl.create 23 in
       let _ = List.iteri (fun i e -> Hashtbl.add order_hash e i) order in
       let ret = Hashtbl.create 23 in
       let _ = List.iter (fun (l, r) ->
                   if Hashtbl.mem ret l then
                     let current_r = Hashtbl.find ret l in
                     if Hashtbl.mem order_hash r &&
                          Hashtbl.mem order_hash current_r then
                       if Hashtbl.find order_hash r >
                            Hashtbl.find order_hash current_r then
                         Hashtbl.replace ret l r
                       else
                         ()
                     else
                       ()
                   else
                     Hashtbl.add ret l r) eqns in
       ret in
     (*
     let _ = print_endline "<rules" in
     let _ = Hashtbl.iter (fun l r ->
                 print_string (string_of_eexp l);
                 print_string " ==> ";
                 print_endline (string_of_eexp r)) rules in
     let _ = print_endline "rules>" in
      *)
     let end_l = do_rewrite order rules l in
     let end_r = do_rewrite order rules r in
     (*
     let _ = print_endline (string_of_eexp end_l) in
     let _ = print_endline (string_of_eexp end_r) in
      *)
     end_l = end_r
  
let rewrite_eqmod eqns epost =
  let valid_eqns =
    let match_mods mods e =
      match e with
      | Eeqmod (_, _, m) -> m = mods
      | _ -> true in
    let match_eqns e =
      match e with
      | Eeq (_, _) -> true
      | _ -> false in
    match epost with
    | Eeqmod (_, _, mods) -> List.filter (match_mods mods) eqns
    | _ -> List.filter match_eqns eqns in
  match epost with
  | Etrue -> true
  | Eeq (l, r) | Eeqmod (l, r, _) ->
     (l = r) || simple_rewrite valid_eqns l r
  | Ecmp _ -> false
  | _ -> failwith ("rewrite_eqmod does not allow post conjunctions: " ^
                     (string_of_ebexp epost))
  
let espec_prover s =
  let eqns = List.rev_append (split_eand s.espre [])
               (collect_assume_eqns s.esprog) in
  (*
  let _ = print_endline "<eqns" in
  let _ = List.iter (fun eqn ->
              print_endline (string_of_ebexp eqn)) eqns in
  let _ = print_endline "eqns>" in
   *)
  rewrite_eqmod eqns (ebexp_prove_with_eands s.espost)

