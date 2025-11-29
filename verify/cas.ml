(** Conversion from algebraic specification to polynomials. *)

open Map
open Ast.Cryptoline
open Options.Std
open Utils.Std

type 'a gen = More of ('a * (unit -> 'a gen))
type var_gen = unit -> string gen

let gen_var gen =
  match gen() with
  | More (v, cont) -> (v, cont)

let rec make_vgen v i = fun () -> More (v ^ "_" ^ string_of_int i, make_vgen v (i + 1))

let vgen_of_spec s =  make_vgen (new_name (VS.fold (fun v vs -> SS.add (string_of_var v) vs) (vars_spec s) SS.empty)) 0
let vgen_of_rspec s =  make_vgen (new_name (VS.fold (fun v vs -> SS.add (string_of_var v) vs) (vars_rspec s) SS.empty)) 0
let vgen_of_espec s =  make_vgen (new_name (VS.fold (fun v vs -> SS.add (string_of_var v) vs) (vars_espec s) SS.empty)) 0

let mk_newvar vgen ty =
  let (tmp, vgen) = gen_var vgen in
  (vgen, mkvar ~newvid:true tmp ty)

(* Remember how an atom is split. *)
module AtomIndex : OrderedType with type t = (atom * int) =
  struct
    type t = atom * int
    let compare (a1, i1) (a2, i2) =
      let c = cmp_atom a1 a2 in
      if c = 0 then compare i1 i2
      else c
  end
module AIM = Map.Make(AtomIndex)

let bv2z_atom a =
  match a with
  | Avar v -> Evar v
  | Aconst (_ty, n) -> Econst n

let emul2pow e n = emul e (econst (e2pow n))
let bv2z_assign v e = Eeq (evar v, e)
let bv2z_join e h l p = Eeq (eadd l (emul h (econst (e2pow p))), e)
let bv2z_split vh vl e p = bv2z_join e (evar vh) (evar vl) p

let bv2z_cast vgen aim ot v a =
  match v.vtyp, typ_of_atom a with
  | Tuint wv, Tuint wa ->
     if wv >= wa then
       (vgen, aim, [Eeq (evar v, bv2z_atom a)], [])
     else
       let (discarded, vgen) =
         match ot with
         | None ->
            let (discarded, vgen) = gen_var vgen in
            let discarded = mkvar ~newvid:true discarded (uint_t (wa - wv)) in
            (discarded, vgen)
         | Some t -> (t, vgen) in
       (vgen, aim, [bv2z_split discarded v (bv2z_atom a) wv], [])
  | Tuint wv, Tsint wa ->
     (* a_sign and discarded have different meanings but the polynomial equation is equivalent. *)
     if wv >= wa then
       let (a_sign, vgen) =
         match ot with
         | None ->
            let (a_sign, vgen) = gen_var vgen in
            let a_sign = mkvar ~newvid:true a_sign bit_t in
            (a_sign, vgen)
         | Some t -> (t, vgen) in
       (vgen, aim, [bv2z_join (evar v) (evar a_sign) (bv2z_atom a) wv], [])
     else
       let (discarded, vgen) =
         match ot with
         | None ->
            let (discarded, vgen) = gen_var vgen in
            let discarded = mkvar ~newvid:true discarded (int_t (wa - wv)) in
            (discarded, vgen)
         | Some t -> (t, vgen) in
       (vgen, aim, [bv2z_split discarded v (bv2z_atom a) wv], [])
  | Tsint wv, Tuint wa ->
     if wv > wa then
       (vgen, aim, [Eeq (evar v, bv2z_atom a)], [])
     else
       let (discarded, vgen) =
         match ot with
         | None ->
            let (discarded, vgen) = gen_var vgen in
            let discarded = mkvar ~newvid:true discarded (uint_t (wa - wv + 1)) in
            (discarded, vgen)
         | Some t -> (t, vgen) in
       (vgen, aim, [bv2z_split discarded v (bv2z_atom a) wv], [])
  | Tsint wv, Tsint wa ->
     if wv >= wa then
       (vgen, aim, [Eeq (evar v, bv2z_atom a)], [])
     else
       let (discarded, vgen) =
         match ot with
         | None	->
            let (discarded, vgen) = gen_var vgen in
            let discarded = mkvar ~newvid:true discarded (int_t (wa - wv + 1)) in
            (discarded, vgen)
         | Some t -> (t, vgen) in
       (vgen, aim, [bv2z_split discarded v (bv2z_atom a) wv], [])

let bv2z_vpc vgen aim v a = (vgen, aim, [Eeq (evar v, bv2z_atom a)], [])

(* With c = c^2, we cannot prove c(c - 1) = 0 (mod 2^64). *)
(* With c(c - 1) = 0, we can prove c(c - 1) = 0 (mod 2^64) but c(c - 1) will remain in the generator. *)
let bv2z_is_bit c =
  Eeq (emul (evar c) (esub (evar c) (econst Z.one)), econst Z.zero)

(* Find the split of [a] at position [n] in [aim].
   If no split is found, generate fresh variables for the split. *)
let find_split_or_gen vgen aim a n =
  let w = size_of_atom a in
  if AIM.mem (a, n) aim then let (h, l) = AIM.find (a, n) aim in
                             (vgen, aim, h, l, [])
  else let (h, vgen) = gen_var vgen in
       let (l, vgen) = gen_var vgen in
       let h = evar (mkvar ~newvid:true h (uint_t (w - n))) in
       let l = evar (mkvar ~newvid:true l (uint_t n)) in
       let aim = AIM.add (a, n) (h, l) aim in
       (vgen, aim, h, l, [ eeq (bv2z_atom a) (eadd l (emul2pow h n)) ])

(*
  Returns (vgen, aim, bexps, exps) where
  - vgen: the new variable generator
  - aim: a map from (a, i) to (vh, vl) indicating a previous split of atom a at position i into destination variables vh and vl
  - bexps: polynomial equations abstracting the semantics of the instruction
  - exps: additional polynomials assumed to be nonzero. Each atomic postcondition will be multiplied by exps.
*)
let bv2z_instr aim vgen i =
  let carry_constr c =
    if !carry_constraint
    then [bv2z_is_bit c]
    else [] in
  match i with
  | Imov (v, a) -> (vgen, aim, [bv2z_assign v (bv2z_atom a)], [])
  | Ishl (v, a, n) ->
     if atom_is_const n then
       let w = size_of_var v in
       let ni = Z.to_int (const_of_atom n) in
       if !track_split then let (vgen, aim, h, l, extras) = find_split_or_gen vgen aim a (w - ni) in
                            let aim = AIM.add (Avar v, ni) (l, econst Z.zero) aim in
                            (vgen, aim, extras @@ [ eeq h (econst Z.zero); eeq (evar v) (emul2pow l ni) ], [])
       else (vgen, aim, [bv2z_assign v (emul2pow (bv2z_atom a) ni)], [])
     else
       (vgen, aim, [], [])
  | Ishls (l, v, a, n) ->
     let ni = Z.to_int n in
     begin
       if !track_split then
         match v.vtyp with
         | Tuint w -> let (vgen, aim, ha, la, extras) = find_split_or_gen vgen aim a (w - ni) in
                      let aim = AIM.add (Avar v, ni) (la, econst Z.zero) aim in
                      (vgen, aim, extras @@ [ eeq (evar l) ha; eeq (evar v) (emul2pow la ni) ], [])
         | Tsint w -> let (vgen, aim, ha, la, extras) = find_split_or_gen vgen aim a (w - ni) in
                      let (d, vgen) = gen_var vgen in
                      let d = mkvar ~newvid:true d (int_t w) in
                      let aim = AIM.add (Avar v, ni) ((eadd la (emul2pow (evar d) (w - ni))), econst Z.zero) aim in
                      (vgen, aim, extras @@ [ eeq (evar l) ha; eeq (evar v) (eadd (emul2pow la ni) (emul2pow (evar d) w)) ], [])
       else
         match v.vtyp with
         | Tuint w -> (vgen, aim, [ eeq
                                      (eadd (evar v) (emul2pow (evar l) w))
                                      (emul2pow (bv2z_atom a) ni) ], [])
         | Tsint w -> let (d, vgen) = gen_var vgen in
                      let d = mkvar ~newvid:true d (int_t w) in
                      (vgen, aim, [eeq
                                     (eadds [evar v; emul2pow (evar d) w; emul2pow (evar l) w])
                                     (emul2pow (bv2z_atom a) ni)
                      ], [])
     end
  | Ishr (v, a, n) ->
     if atom_is_const n then
       let w = size_of_var v in
       let ni = Z.to_int (const_of_atom n) in
       if atom_is_const a then let a_shifted = Z.shift_right (const_of_atom a) ni in
                               (vgen, aim, [eeq (evar v) (econst a_shifted)], [])
       else if !track_split then let (vgen, aim, ha, la, extras) = find_split_or_gen vgen aim a ni in
                                 let aim = AIM.add (Avar v, w - ni) (econst Z.zero, ha) aim in
                                 (vgen, aim, extras @@ [ eeq (evar v) ha; eeq la (econst Z.zero) ], [])
       else (vgen, aim, [eeq (emul2pow (evar v) ni) (bv2z_atom a)], [])
     else
       (vgen, aim, [], [])
  | Ishrs (v, l, a, n) ->
     let w = size_of_var v in
     let ni = Z.to_int n in
     begin
       if !track_split then
         match v.vtyp with
         | Tuint _ -> let (vgen, aim, ha, la, extras) = find_split_or_gen vgen aim a ni in
                      let aim = AIM.add (Avar v, w - ni) (econst Z.zero, ha) aim in
                      (vgen, aim, extras @@ [ eeq (evar v) ha; eeq (evar l) la ], [])
         | Tsint w -> let (vgen, aim, ha, la, extras) = find_split_or_gen vgen aim a ni in
                      let (d, vgen) = gen_var vgen in
                      let d = mkvar ~newvid:true d (int_t w) in
                      let aim = AIM.add (Avar v, w - ni) (econst Z.zero, eadd ha (emul2pow (evar d) (w - ni))) aim in
                      (vgen, aim, extras @@ [ eeq (evar v) (eadd ha (emul2pow (evar d) (w - ni))); eeq (evar l) la ], [])
       else
         match v.vtyp with
         | Tuint _ -> (vgen, aim, [eeq (limbs ni [evar l; evar v]) (bv2z_atom a)], [])
         | Tsint w -> let (d, vgen) = gen_var vgen in
                      let d = mkvar ~newvid:true d (int_t ni) in
                      (vgen, aim, [eeq
                                     (eadd (limbs ni [evar l; evar v]) (emul2pow (evar d) w))
                                     (bv2z_atom a)
                      ], [])
     end
  | Isar (v, a, n) ->
     if atom_is_const n then
       let w = size_of_var v in
       let ni = Z.to_int (const_of_atom n) in
       if atom_is_const a then let a_shifted = Z.shift_right (const_of_atom a) ni in
                               (vgen, aim, [eeq (evar v) (econst a_shifted)], [])
       else if !track_split then let (vgen, aim, ha, la, extras) = find_split_or_gen vgen aim a ni in
                                 let aim = AIM.add (Avar v, w - ni) (econst Z.zero, ha) aim in
                                 (vgen, aim, extras @@ [ eeq (evar v) ha; eeq la (econst Z.zero) ], [])
       else (vgen, aim, [eeq (emul2pow (evar v) ni) (bv2z_atom a)], [])
     else
       (vgen, aim, [], [])
  | Isars (v, l, a, n) ->
     let w = size_of_var v in
     let ni = Z.to_int n in
     begin
       if !track_split then
         match v.vtyp with
         | Tuint w -> let (vgen, aim, ha, la, extras) = find_split_or_gen vgen aim a ni in
                      let (d, vgen) = gen_var vgen in
                      let d = mkvar ~newvid:true d (int_t w) in
                      let aim = AIM.add (Avar v, w - ni) (econst Z.zero, eadd ha (emul2pow (evar d) (w - ni))) aim in
                      (vgen, aim, extras @@ [ eeq (evar v) (eadd ha (emul2pow (evar d) (w - ni))); eeq (evar l) la ], [])
         | Tsint _ -> let (vgen, aim, ha, la, extras) = find_split_or_gen vgen aim a ni in
                      let aim = AIM.add (Avar v, w - ni) (econst Z.zero, ha) aim in
                      (vgen, aim, extras @@ [ eeq (evar v) ha; eeq (evar l) la ], [])
       else
         match v.vtyp with
         | Tuint w -> let (d, vgen) = gen_var vgen in
                      let d = mkvar ~newvid:true d (int_t ni) in
                      (vgen, aim, [eeq
                                     (eadd (limbs ni [evar l; evar v]) (emul2pow (evar d) w))
                                     (bv2z_atom a)], [])
         | Tsint _ -> (vgen, aim, [eeq (limbs ni [evar l; evar v]) (bv2z_atom a)], [])
     end
  | Icshl (vh, vl, a1, a2, n) ->
     let w = size_of_var vh in
     let ni = Z.to_int n in
     (* The following encoding remembers how a1 and a2 are split but generates more equations and thus makes CAS slower. *)
     if !track_split then let (vgen, aim, h1, l1, extras1) = find_split_or_gen vgen aim a1 (w - ni) in
                          let (vgen, aim, h2, l2, extras2) = find_split_or_gen vgen aim a2 (w - ni) in
                          let aim = AIM.add (Avar vh, ni) (l1, h2) aim in
                          let aim = AIM.add (Avar vl, ni) (l2, econst Z.zero) aim in
                          (vgen, aim, extras1 @@ (extras2 @@ [ eeq h1 (econst Z.zero);
                                                               bv2z_join (evar vh) l1 h2 ni;
                                                               eeq (evar vl) l2 ]), [])
     else (vgen, aim, [bv2z_split vh vl (eadd (emul2pow (bv2z_atom a1) w) (bv2z_atom a2)) (w - ni)], [])
  | Icshls (l, vh, vl, a1, a2, n) ->
     let w = size_of_var vh in
     let ni = Z.to_int n in
     if !track_split then let (vgen, aim, h1, l1, extras1) = find_split_or_gen vgen aim a1 (w - ni) in
                          let (vgen, aim, h2, l2, extras2) = find_split_or_gen vgen aim a2 (w - ni) in
                          let (vh_exp, vgen) =
                            match vh.vtyp with
                            | Tuint _ -> (limbs ni [h2; l1], vgen)
                            | Tsint _ -> let (d, vgen) = gen_var vgen in
                                         let d = mkvar ~newvid:true d (int_t ni) in
                                         (eadd (limbs ni [h2; l1]) (emul2pow (evar d) w), vgen) in
                          let aim = AIM.add (Avar vh, ni) (l1, h2) aim in
                          let aim = AIM.add (Avar vl, w - ni) (econst Z.zero, l2) aim in
                          (vgen, aim, extras1 @@ (extras2 @@ [ eeq (evar vh) vh_exp;
                                                               eeq (evar vl) l2;
                                                               eeq (evar l) h1 ]), [])
     else
       begin
         match vh.vtyp with
         | Tuint w -> (vgen, aim, [eeq
                                     (limbs w [emul2pow (evar vl) ni; evar vh; evar l])
                                     (emul2pow (limbs w [bv2z_atom a2; bv2z_atom a1]) ni)], [])
         | Tsint w -> let (d, vgen) = gen_var vgen in
                      let d = mkvar ~newvid:true d (int_t w) in
                      (vgen, aim, [eeq
                                     (limbs w [emul2pow (evar vl) ni; eadd (evar vh) (emul2pow (evar d) w); evar l])
                                     (emul2pow (limbs w [bv2z_atom a2; bv2z_atom a1]) ni)], [])
       end
  | Icshr (vh, vl, a1, a2, n) ->
     let w = size_of_var vh in
     let ni = Z.to_int n in
     if !track_split then let (vgen, aim, h1, l1, extras1) = find_split_or_gen vgen aim a1 ni in
                          let (vgen, aim, h2, l2, extras2) = find_split_or_gen vgen aim a2 ni in
                          let aim = AIM.add (Avar vh, w - ni) (econst Z.zero, h1) aim in
                          let aim = AIM.add (Avar vl, w - ni) (l1, h2) aim in
                          (vgen, aim, extras1 @@ (extras2 @@ [ eeq l2 (econst Z.zero);
                                                               eeq (evar vh) h1;
                                                               bv2z_join (evar vl) l1 h2 (w - ni) ]), [])
     else (vgen, aim, [ eeq
                          (emul (limbs w [evar vl; evar vh]) (econst (e2pow ni)))
                          (limbs w [bv2z_atom a2; bv2z_atom a1]) ], [])
  | Icshrs (vh, vl, l, a1, a2, n) ->
     let w = size_of_var vh in
     let ni = Z.to_int n in
     if !track_split then let (vgen, aim, h1, l1, extras1) = find_split_or_gen vgen aim a1 ni in
                          let (vgen, aim, h2, l2, extras2) = find_split_or_gen vgen aim a2 ni in
                          let (vh_exp, vgen) =
                            match vh.vtyp with
                            | Tuint _ -> (h1, vgen)
                            | Tsint _ -> let (d, vgen) = gen_var vgen in
                                         let d = mkvar ~newvid:true d (int_t w) in
                                         (eadd h1 (emul2pow (evar d) (w - ni)), vgen) in
                          let aim = AIM.add (Avar vh, w - ni) (econst Z.zero, vh_exp) aim in
                          let aim = AIM.add (Avar vl, w - ni) (l1, h2) aim in
                          (vgen, aim, extras1 @@ (extras2 @@ [ eeq (evar vh) vh_exp;
                                                               bv2z_join (evar vl) l1 h2 (w - ni);
                                                               eeq (evar l) l2 ]), [])
     else
       begin
         match vh.vtyp with
         | Tuint w -> (vgen, aim, [eeq
                                     (eadd (emul (limbs w [evar vl; evar vh]) (econst (e2pow ni))) (evar l))
                                     (limbs w [bv2z_atom a2; bv2z_atom a1])], [])
         | Tsint w -> let (discarded, vgen) = gen_var vgen in
                      let discarded = mkvar ~newvid:true discarded (int_t ni) in
                      (vgen, aim, [eeq
                                     (eadds [emul (limbs w [evar vl; evar vh]) (econst (e2pow ni)); evar l; emul (evar discarded) (econst (e2pow (w + w)))])
                                     (limbs w [bv2z_atom a2; bv2z_atom a1])], [])
       end
  | Irol (v, a, n) ->
     begin
       match v.vtyp with
       | Tuint w ->
          begin
            match n with
            | Avar _ -> (vgen, aim, [], [])
            | Aconst (_, n) ->
               let ni = Z.to_int n in
               if !track_split then let (vgen, aim, h, l, extras) = find_split_or_gen vgen aim a (w - ni) in
                                    let aim = AIM.add (Avar v, ni) (l, h) aim in
                                    (vgen, aim, extras @@ [ bv2z_join (evar v) l h ni], [])
               else let (h, vgen) = gen_var vgen in
                    let h = mkvar ~newvid:true h (uint_t ni) in
                    (vgen, aim, [ eeq (evar v) (eadd (esub (emul2pow (bv2z_atom a) ni) (emul2pow (evar h) w)) (evar h)) ], [])
          end
       | Tsint _ -> assert false
     end
  | Iror (v, a, n) ->
     begin
       match v.vtyp with
       | Tuint w ->
          begin
            match n with
            | Avar _ -> (vgen, aim, [], [])
            | Aconst (_, n) ->
               let ni = Z.to_int n in
               if !track_split then let (vgen, aim, h, l, extras) = find_split_or_gen vgen aim a ni in
                                    let aim = AIM.add (Avar v, w - ni) (l, h) aim in
                                    (vgen, aim, extras @@ [ bv2z_join (evar v) l h (w - ni)], [])
               else let (h, vgen) = gen_var vgen in
                    let h = mkvar ~newvid:true h (uint_t ni) in
                    (vgen, aim, [ eeq (evar v) (eadd (esub (emul2pow (bv2z_atom a) (w - ni)) (emul2pow (evar h) w)) (evar h)) ], [])
          end
       | Tsint _ -> assert false
     end
  | Inondet v ->
     if var_is_bit v then (vgen, aim, carry_constr v, [])
     else (vgen, aim, [], [])
  | Icmov (v, c, a1, a2) ->
     (vgen, aim, [bv2z_assign
                    v
                    (eadd
                       (emul (bv2z_atom c) (bv2z_atom a1))
                       (emul (esub (econst Z.one) (bv2z_atom c)) (bv2z_atom a2)))], [])
  | Inop -> (vgen, aim, [], [])
  | Iadd (v, a1, a2) ->
     (vgen, aim, [bv2z_assign v (eadd (bv2z_atom a1) (bv2z_atom a2))], [])
  | Iadds (c, v, a1, a2) ->
     (match v.vtyp with
      | Tuint w -> (vgen, aim, [bv2z_split c v (eadd (bv2z_atom a1) (bv2z_atom a2)) w]
                               @(carry_constr c), [])
      | Tsint w ->
         let (d, vgen) = gen_var vgen in
         let d = mkvar ~newvid:true d (uint_t 1) in
         (vgen, aim, [eeq (limbs w [evar v; evar d]) (eadd (bv2z_atom a1) (bv2z_atom a2))], []))
  | Iadc (v, a1, a2, y) ->
     (vgen, aim, [bv2z_assign v (eadd (eadd (bv2z_atom a1) (bv2z_atom a2)) (bv2z_atom y))], [])
  | Iadcs (c, v, a1, a2, y) ->
     (match v.vtyp with
      | Tuint w -> (vgen, aim, [bv2z_split c v (eadd (eadd (bv2z_atom a1) (bv2z_atom a2)) (bv2z_atom y)) w]
                               @(carry_constr c), [])
      | Tsint w ->
         let (d, vgen) = gen_var vgen in
         let d = mkvar ~newvid:true d (uint_t 1) in
         (vgen, aim, [eeq (limbs w [evar v; evar d]) (eadd (eadd (bv2z_atom a1) (bv2z_atom a2)) (bv2z_atom y))], []))
  | Isub (v, a1, a2) ->
     (vgen, aim, [bv2z_assign v (esub (bv2z_atom a1) (bv2z_atom a2))], [])
  | Isubc (c, v, a1, a2) ->
     (match v.vtyp with
      | Tuint w -> (vgen, aim, [bv2z_join (evar v) (esub (econst Z.one) (evar c)) (esub (bv2z_atom a1) (bv2z_atom a2)) w]
                               @(carry_constr c), [])
      | Tsint w ->
         let (d, vgen) = gen_var vgen in
         let d = mkvar ~newvid:true d (uint_t 1) in
         (vgen, aim, [eeq (limbs w [evar v; evar d]) (esub (bv2z_atom a1) (bv2z_atom a2))], []))
  | Isubb (c, v, a1, a2) ->
     (match v.vtyp with
      | Tuint w -> (vgen, aim, [bv2z_join (evar v) (evar c) (esub (bv2z_atom a1) (bv2z_atom a2)) w]
                               @(carry_constr c), [])
      | Tsint w ->
         let (d, vgen) = gen_var vgen in
         let d = mkvar ~newvid:true d (uint_t 1) in
         (vgen, aim, [eeq (limbs w [evar v; evar d]) (esub (bv2z_atom a1) (bv2z_atom a2))], []))
  | Isbc (v, a1, a2, y) ->
     (vgen, aim, [bv2z_assign v (esub (esub (bv2z_atom a1) (bv2z_atom a2)) (esub (econst Z.one) (bv2z_atom y)))], [])
  | Isbcs (c, v, a1, a2, y) ->
     (match v.vtyp with
      | Tuint w ->
         (vgen, aim, [bv2z_join (evar v) (esub (econst Z.one) (evar c)) (esub (esub (bv2z_atom a1) (bv2z_atom a2)) (esub (econst Z.one) (bv2z_atom y))) w]
                @(carry_constr c), [])
      | Tsint w ->
         let (d, vgen) = gen_var vgen in
         let d = mkvar ~newvid:true d (uint_t 1) in
         (vgen, aim, [eeq (limbs w [evar v; evar d]) (esub (esub (bv2z_atom a1) (bv2z_atom a2)) (esub (econst Z.one) (bv2z_atom y)))], []))
  | Isbb (v, a1, a2, y) ->
     (vgen, aim, [bv2z_assign v (esub (esub (bv2z_atom a1) (bv2z_atom a2)) (bv2z_atom y))], [])
  | Isbbs (c, v, a1, a2, y) ->
     (match v.vtyp with
      | Tuint w -> (vgen, aim, [bv2z_join (esub (esub (bv2z_atom a1) (bv2z_atom a2)) (bv2z_atom y)) (eneg (evar c)) (evar v) w]
                               @(carry_constr c), [])
      | Tsint w ->
         let (d, vgen) = gen_var vgen in
         let d = mkvar ~newvid:true d (uint_t 1) in
         (vgen, aim, [eeq (limbs w [evar v; evar d]) (esub (esub (bv2z_atom a1) (bv2z_atom a2)) (bv2z_atom y))], []))
  | Imul (v, a1, a2) ->
     (vgen, aim, [bv2z_assign v (emul (bv2z_atom a1) (bv2z_atom a2))], [])
  | Imuls (_, v, a1, a2) ->
     let (d, vgen) = gen_var vgen in
     let d = mkvar ~newvid:true d (typ_of_var v) in
     (vgen, aim, [eeq (limbs (size_of_var v) [evar v; evar d]) (emul (bv2z_atom a1) (bv2z_atom a2))], [])
  | Imull (vh, vl, a1, a2) ->
     let w = size_of_var vl in
     (vgen, aim, [bv2z_split vh vl (emul (bv2z_atom a1) (bv2z_atom a2)) w], [])
  | Imulj (v, a1, a2) ->
     (vgen, aim, [bv2z_assign v (emul (bv2z_atom a1) (bv2z_atom a2))], [])
  | Isplit (vh, vl, a, n) ->
     let ni = Z.to_int n in
     if !track_split && AIM.mem (a, ni) aim then let (h, l) = AIM.find (a, ni) aim in
                                                 (vgen, aim, [ eeq (evar vh) h; eeq (evar vl) l ], [])
     else let aim = AIM.add (a, ni) (evar vh, evar vl) aim in
          (vgen, aim, [ bv2z_split vh vl (bv2z_atom a) ni ], [])
  | Ispl (vh, vl, a, n) ->
     let ni = Z.to_int n in
     if !track_split && AIM.mem (a, ni) aim then let (h, l) = AIM.find (a, ni) aim in
                                                 (vgen, aim, [ eeq (evar vh) h; eeq (evar vl) l ], [])
     else let aim = AIM.add (a, ni) (evar vh, evar vl) aim in
          (vgen, aim, [ bv2z_split vh vl (bv2z_atom a) ni ], [])
  | Iseteq (v, a1, a2) ->
     let sv = size_of_var v in
     if sv = 1 then
       let (c, vgen) = gen_var vgen in
       let c = mkvar ~newvid:true c (typ_of_atom a1) in
       (vgen, aim, [eeq (esub (bv2z_atom a1) (bv2z_atom a2)) (emul (evar c) (esub (evar v) (econst Z.one)));
                    bv2z_is_bit v], [evar c])
     else
       let (c, vgen) = gen_var vgen in
       let (t, vgen) = gen_var vgen in
       let c = mkvar ~newvid:true c (typ_of_atom a1) in
       let t = mkvar ~newvid:true t bit_t in
       (vgen, aim, [eeq (esub (bv2z_atom a1) (bv2z_atom a2)) (emul (evar c) (esub (evar t) (econst Z.one)));
                    bv2z_is_bit t;
                    eeq (evar v) (emul (evar t) (econst (Z.sub (e2pow sv) Z.one)))], [evar c])
  | Isetne (v, a1, a2) ->
     let sv = size_of_var v in
     if sv = 1 then
       let (c, vgen) = gen_var vgen in
       let c = mkvar ~newvid:true c (typ_of_atom a1) in
       (vgen, aim, [eeq (esub (bv2z_atom a1) (bv2z_atom a2)) (emul (evar c) (evar v));
                    bv2z_is_bit v], [evar c])
     else
       let (c, vgen) = gen_var vgen in
       let (t, vgen) = gen_var vgen in
       let c = mkvar ~newvid:true c (typ_of_atom a1) in
       let t = mkvar ~newvid:true t bit_t in
       (vgen, aim, [eeq (esub (bv2z_atom a1) (bv2z_atom a2)) (emul (evar c) (evar t));
                    bv2z_is_bit t;
                    eeq (evar v) (emul (evar t) (econst (Z.sub (e2pow (size_of_var v)) Z.one)))], [evar c])
  | Iand _
    | Ior _
    | Ixor _ -> (vgen, aim, [], [])
  | Inot (v, a) ->
     (match v.vtyp with
      | Tuint w -> (vgen, aim, [bv2z_assign v (esub (econst (Z.sub (e2pow w) Z.one)) (bv2z_atom a))], [])
      | Tsint _w -> (vgen, aim, [bv2z_assign v (esub (eneg (bv2z_atom a)) (econst Z.one))], []))
  | Icast (t, v, a) ->
     bv2z_cast vgen aim t v a
  | Ivpc (v, a) ->
     bv2z_vpc vgen aim v a
  | Ijoin (v, ah, al) ->
     let nl = size_of_atom al in
     let ah = bv2z_atom ah in
     let al = bv2z_atom al in
     let aim = if !track_split then AIM.add (Avar v, nl) (ah, al) aim
               else aim in
     (vgen, aim, [ bv2z_join (evar v) ah al nl ], [])
  | Iassert _e -> (vgen, aim, [], [])
  | Iassume e -> (vgen, aim, split_eand (eqn_bexp e), [])
  | Icut (_hd::_tl, _) -> failwith "Internal error: Icut with algebraic properties cannot appear in a program when verifying the algebraic part."
  | Icut _ -> (vgen, aim, [], []) (* Ignore other cases of Icut. *)
  | Ighost (_, e) -> (vgen, aim, split_eand (eqn_bexp e), [])

let bv2z_program_annot vgen p =
  let (vgen, _, ies_rev, ps_rev) = List.fold_left (
                            fun (vgen, aim, ies_rev, ps_rev) i ->
                            let (vgen, aim, es, ps) = bv2z_instr aim vgen i in
                            (vgen, aim, (i, es)::ies_rev, List.rev_append ps ps_rev)
                          ) (vgen, AIM.empty, [], []) p in
  (vgen, List.rev ies_rev, List.rev ps_rev)

let bv2z_program vgen p =
  let (vgen, ies, ps) = bv2z_program_annot vgen p in
  (vgen, tflatten (snd (List.split ies)), ps)

(* Annotated root entailment problems. The annotations are used in two-phase rewriting. *)
type poly_spec_annot =
  { appre : ebexp;
    approg : (instr * ebexp list) list;
    appost : ebexp;
    apextra : eexp list }

(* Root entailment problems *)
type poly_spec =
  { ppre : ebexp;
    pprog : ebexp list;
    ppost : ebexp;
    pextra : eexp list }

let poly_spec_deannot s =
  { ppre = s.appre;
    pprog = List.split s.approg |> snd |> tflatten;
    ppost = s.appost;
    pextra = s.apextra }

let vars_poly_spec s =
  List.fold_left VS.union VS.empty
    [ vars_ebexp s.ppre;
      vars_ebexps s.pprog;
      vars_ebexp s.ppost;
      vars_eexps s.pextra ]

let _vars_poly_spec_annot s =
  poly_spec_deannot s |> vars_poly_spec

let bv2z_espec_annot vgen s =
  let (vgen, ies, ps) = bv2z_program_annot vgen s.esprog in
  (vgen, { appre = s.espre;
           approg = ies;
           appost = ebexp_prove_with_eands s.espost;
           apextra = ps })

let bv2z_espec vgen s =
  let (vgen, es, ps) = bv2z_program vgen s.esprog in
  (vgen, { ppre = s.espre;
           pprog = es;
           ppost = ebexp_prove_with_eands s.espost;
           pextra = ps })

(* Returns the new vgen, created temporary variables, and polynomials.
   We need created temporary variables to quantify them in redlog. *)
let rec polys_of_ebexp vgen e =
  match e with
  | Etrue -> (vgen, [], [])
  | Eeq (e1, e2) when eq_eexp e1 e2 -> (vgen, [], [])
  | Eeq (e, Econst n) when Z.equal n Z.zero -> (vgen, [], [e])
  | Eeq (e1, e2) -> (vgen, [], [esub e1 e2])
  | Eeqmod (e1, e2, ms) ->
     let mk_tmp vgen =
       let (tmp, vgen) = gen_var vgen in
       let tmp = mkvar ~newvid:true tmp (Tuint 0) (* The variable type does not matter *) in
       (vgen, tmp) in
     let helper (vgen, tmps, res) m =
       let (vgen, tmp) = mk_tmp vgen in
       (vgen, tmp::tmps, (eadd (emul (evar tmp) m) res)) in
     let (vgen, tmps, eadds) =
       let (vgen, tmp) = mk_tmp vgen in
       List.fold_left helper (vgen, [tmp], (emul (evar tmp) (List.hd ms)))
         (List.tl ms) in
     (vgen, tmps, [esub (esub e1 e2) eadds])
  | Eand (e1, e2) ->
     let (vgen, tmps1, ps1) = polys_of_ebexp vgen e1 in
     let (vgen, tmps2, ps2) = polys_of_ebexp vgen e2 in
     (vgen, tmps1 @@ tmps2, ps1 @@ ps2)
  | Ecmp _ -> (vgen, [], []) (* no polynomial for comparison *)

let polys_of_ebexps vgen es =
  let (vgen, tmps_rev, ps_rev) = List.fold_left (
                                     fun (vgen, tmps_rev, ps_rev) e ->
                                     let (vgen', tmps, ps) = polys_of_ebexp vgen e in
                                     (vgen', List.rev_append tmps tmps_rev, List.rev_append ps ps_rev)
                                   ) (vgen, [], []) es in
  (vgen, List.rev tmps_rev, List.rev ps_rev)

let _vars_in_appearing_order es =
  let add_var (vlist, vset) v =
    if VS.mem v vset then (vlist, vset)
    else (v::vlist, VS.add v vset) in
  let rec add_vars vpair e =
    match e with
    | Evar v -> add_var vpair v
    | Econst _ -> vpair
    | Eunop (_, e) -> add_vars vpair e
    | Ebinop (_, e1, e2) -> add_vars (add_vars vpair e1) e2 in
  let (vlist_rev, _vset) = List.fold_left (fun vpair e -> add_vars vpair e) ([], VS.empty) es in
  List.rev vlist_rev

let vars_in_appearing_order cmp es =
  let freq_hash = Hashtbl.create 101 in
  let add_var vs v =
    if Hashtbl.mem freq_hash v
    then let cur_freq = Hashtbl.find freq_hash v in
         let _ = Hashtbl.replace freq_hash v (succ cur_freq) in
         vs
    else let _ = Hashtbl.add freq_hash v 0 in
         v::vs in
  let rec add_vars vs e =
    match e with
    | Evar v -> add_var vs v
    | Econst _ -> vs
    | Eunop (_, e) -> add_vars vs e
    | Ebinop (_, e1, e2) -> add_vars (add_vars vs e1) e2 in
  let rev_vss =
    List.fold_left (fun vss e -> (add_vars [] e)::vss) [] es in
  let freq_vss =
    List.rev_map (List.rev_map (fun v -> (v, Hashtbl.find freq_hash v)))
      rev_vss in
  let rev_sorted_vss =
    let mycmp (_, u) (_, v) = cmp u v in
    List.rev_map
      (fun freq_vs -> List.map fst (List.sort mycmp freq_vs)) freq_vss in
  List.flatten (List.rev rev_sorted_vss)

let vars_in_lex_order es =
  VS.elements (List.fold_left (fun res e -> VS.union res (vars_eexp e)) VS.empty es)

let vars_in_order es =
  match !variable_ordering with
  | LexOrder -> vars_in_lex_order es
  | AppearingOrder ->
     List.rev (vars_in_appearing_order (fun u v -> v - u) (List.rev es))
  | RevLexOrder -> List.rev (vars_in_lex_order es)
  | RevAppearingOrder ->
     List.rev (vars_in_appearing_order (fun u v -> v - u) es)

let polys_of_espec vgen s =
  (* Convert to polynomial equations. *)
  let (vgen, pspec) = bv2z_espec vgen s in
  (* Convert premises to polynomials. *)
  let (vgen, generator_ps) =
    let (vgen, _, pre_ps) = polys_of_ebexp vgen pspec.ppre in
    let (vgen, prog_ps_rev) =
      List.fold_left
        (fun (vgen, ps_rev) e ->
          let (vgen', _, ps) = polys_of_ebexp vgen e in
          (vgen', List.rev_append ps ps_rev)
        )
        (vgen, [])
        pspec.pprog in
    (vgen, pre_ps @@ (List.rev prog_ps_rev)) in
  let do_rewriting generator_ps p modulus_opt =
    if !apply_rewrite_poly
    then (if !polys_rewrite_replace_eexp then Rewrite.rewrite_assignments'
          else Rewrite.rewrite_assignments) generator_ps p modulus_opt
    else (generator_ps, p) in
  let rec convert generator_ps post =
    match post with
    | Etrue -> []
    | Eeq (e1, e2) ->
       let (ideal, p) = do_rewriting generator_ps (emuls ((esub e1 e2)::pspec.pextra)) [] in
       let vars = vars_in_order (rcons ideal p) in
       [(post, vars, ideal, p)]
    | Eeqmod (e1, e2, ms) ->
       let (ideal, p) = do_rewriting (List.rev_append ms generator_ps) (emuls ((esub e1 e2)::pspec.pextra)) ms in
       let vars = vars_in_order (rcons ideal p) in
       [(post, vars, ideal, p)]
    | Eand (e1, e2) ->
       (convert generator_ps e1) @@ (convert generator_ps e2)
    | Ecmp _ -> failwith "Internal error: algebraic range predicates cannot appear in polys_of_espec." in
  (vgen, convert generator_ps pspec.ppost)

(**
   [slice_entailments aps vids] applies slicing to a list of annotated
   polynomials (premises).
   @param aps a list [(p1, (i1, vids_to_check1, vids_to_add1)); ...; (pn, (in, vids_to_checkn, vids_to_addn))]
              where [pi] is the polynomial converted from an instruction [ii],
              [vids_to_checki] is a set of variable IDs to check if the
              polynomial is related, and [vids_to_addi] is a set of variable IDs
              to be included if the polynomial [pi] is related to proving the
              postcondition
   @param vids the set of IDs of variables appearing in a postcondition
   @return sliced list of annotated polynomials
 *)
let slice_entailments aps vids =
  let (aps, _) = List.fold_left (
                     fun (aps, vids) (p, (i, vids_to_check, vids_to_add)) ->
                     if IS.is_empty (IS.inter vids vids_to_check)
                     then (aps, vids)
                     else ((p, (i, vids_to_check, vids_to_add))::aps, IS.union vids vids_to_add)
                   ) ([], vids) (List.rev aps) in
  aps


(**
   [polys_of_espec_two_phase ~sliced:b vgen s] returns the polynomial
   entailments proving whether an algebraic specification [s] is valid or not.
   This function converts [s] to polynomials first, applies the first rewriting,
   applies slicing if [b] is [false], and finally applies the second rewriting
   for each atomic predicate in the postcondition.
   @param sliced indicates if the specification [s] has been sliced
   @param vgen a variable generator
   @param s an algebraic specification
   @return a list of entailments [(post1, vars1, ideal1, p1); ...; (postn, varsn, idealn, pn)]
           where the validity of a postcondition [posti] is proved by checking
           if [pi] is in the ideal generated by [ideali] using the variable
           order [varsi]
 *)
let polys_of_espec_two_phase ?(sliced=false) vgen s =
  (* Convert algebraic specification to polynomial equations. *)
  let (vgen, apspec) = bv2z_espec_annot vgen s in
  (* Add more annotations for slicing. If the input instruction is Iassume or Ighost, the predicate must be atomic. *)
  let aps_of_aies (vgen, res_aps_rev) (i, es) = let (vgen', _, ps) = polys_of_ebexps vgen es in
                                                let (vids_to_check, vids_to_add) =
                                                  match i with
                                                  | Iassume e
                                                    | Ighost (_, e) -> let vids = vids_ebexp (eqn_bexp e) in
                                                                       (vids, vids)
                                                  | _ -> (lvids_instr i, vids_instr i) in
                                                let aps = List.rev_map (fun p -> (p, (i, vids_to_check, vids_to_add))) (List.rev ps) in
                                                (vgen', List.rev_append aps res_aps_rev) in
  (* Convert polynomial equations to polynomials. *)
  let (vgen, ideal_aps) =
    (* Split the precondition and convert atomic predicates to polynomials separately to get better slicing result. *)
    let (vgen, pre_aps_rev) = let ies_list = List.rev_map
                                               (fun e -> (Iassume (e, Rtrue), [e]))
                                               (List.rev (split_eand apspec.appre)) in
                              List.fold_left aps_of_aies (vgen, []) ies_list in
    let (vgen, prog_aps_rev) = List.fold_left
                                 (fun (vgen, aps_rev) (i, es) ->
                                   match i with
                                   | Iassume _ | Ighost _ -> (* split assumptions *)
                                      let ies_list = List.rev_map (fun e -> (Iassume (e, Rtrue), [e])) (List.rev es) in
                                      List.fold_left aps_of_aies (vgen, aps_rev) ies_list
                                   | _ -> aps_of_aies (vgen, aps_rev) (i, es)
                                 )
                                 (vgen, [])
                                 apspec.approg in
    (vgen, List.rev_append pre_aps_rev (List.rev prog_aps_rev)) in
  (* A function that performs rewriting *)
  let do_rewriting ideal_aps (post_p_ms_list : (ebexp * IS.t * eexp * eexp list) list) modulus_opt =
    if !apply_rewrite_poly
    then (if !polys_rewrite_replace_eexp then Rewrite.rewrite_assignments_two_phase'
          else Rewrite.rewrite_assignments_two_phase) ideal_aps post_p_ms_list modulus_opt
    else (ideal_aps, post_p_ms_list) in
  (* Perform two-phase rewriting and slicing. *)
  let convert ideal_aps post =
    (*
     * Split the postcondition into a sequence of tuples [(post, sc, p, ms); ...] where
     * - post: an atomic predicate in the postcondition
     * - sc: the initial slicing criteria for the atomic predicate
     * - p: the polynomial form of the atomic predicate. Same as in post, p may be
     *      multiplied by extra polynomials from the negations in the premises
     * - ms: the moduli in the atomic predicate
     *)
    let split_post e =
      let sc = List.fold_left (fun sc e -> IS.union sc (vids_eexp e)) IS.empty apspec.apextra in
      let rec helper e =
        match e with
        | Etrue -> []
        | Eeq (e1, e2) -> [(e, IS.union (vids_ebexp e) sc, emuls ((esub e1 e2)::apspec.apextra), [])]
        | Eeqmod (e1, e2, ms) -> [(e, IS.union (vids_ebexp e) sc, emuls ((esub e1 e2)::apspec.apextra), ms)]
        | Eand (e1, e2) -> (helper e1) @@ (helper e2)
        | Ecmp _ -> failwith "Internal error: algebraic range predicates cannot appear in polys_of_espec_two_phase" in
      helper e in
    (* First phase rewriting, do not consider moduli *)
    let first_phase_rewriting ideal_aps post_p_ms_list = do_rewriting ideal_aps post_p_ms_list [] in
    (* Second phase rewriting, add moduli *)
    let second_phase_rewriting ideal_aps post_p_ms_list =
      let add_dummy_annot m = (m, (Inop, IS.empty, IS.empty)) in
      let remove_annots aps = fst (List.split aps) in
      List.rev (List.rev_map
                  (fun (post, sc, p, ms) ->
                    let sliced_ideal_aps =
                      if !Options.Std.apply_slicing && not sliced then
                        let vids = program_pre_vids_sat sc ebexp_vids_sat s.espre (List.rev s.esprog) in
                        slice_entailments ideal_aps vids
                      else ideal_aps in
                    match ms with
                    | [] -> (* skip rewriting in this case *)
                       let sliced_ideal = remove_annots sliced_ideal_aps in
                       (post, vars_in_order (rcons sliced_ideal p), sliced_ideal, p)
                    | _ -> let (rewritten_ideal_aps, post_p_ms_list) = do_rewriting (List.rev_append (List.rev_map add_dummy_annot (List.rev ms)) sliced_ideal_aps) [(post, sc, p, ms)] ms in
                           (match post_p_ms_list with
                            | (post, _, p, _)::[] -> let rewritten_ideal = remove_annots rewritten_ideal_aps in
                                                     (post, vars_in_order (rcons rewritten_ideal p), rewritten_ideal, p)
                            | _ -> failwith("Unexpected case"))
                  ) post_p_ms_list) in
    let post_p_ms_list = split_post post in
    let (ideal_aps, post_p_ms_list) = first_phase_rewriting ideal_aps post_p_ms_list in
    let entailments = second_phase_rewriting ideal_aps post_p_ms_list in
    entailments in
  (vgen, convert ideal_aps apspec.appost)



(* Prepare output to computer algebra systems *)

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
let mathematica_of_var v =
  "v[\"" ^ string_of_var v ^ "\"]"
let rec mathematica_of_eexp e =
  match e with
  | Evar v -> mathematica_of_var v
  | Econst n -> string_of_const n
  | Eunop (op, e) ->
     symbol_of_eunop op
     ^ (if is_eexp_atom e
        then mathematica_of_eexp e
        else " (" ^ mathematica_of_eexp e ^ ")")
  | Ebinop (op, e1, e2) ->
     (if eexp_ebinop_open e1 op
      then mathematica_of_eexp e1
      else "(" ^ mathematica_of_eexp e1 ^ ")")
     ^ " " ^ algebra_symbol_of_ebinop op ^ " "
     ^ (if ebinop_eexp_open op e2
        then mathematica_of_eexp e2
        else "(" ^ mathematica_of_eexp e2 ^ ")")

let macaulay2_of_var v =
  String.map (fun c -> if c = '_'
                       then '\''
                       else c) (string_of_var v)
let rec macaulay2_of_eexp e =
  match e with
  | Evar v -> macaulay2_of_var v
  | Econst n -> string_of_const n
  | Eunop (op, e) ->
     symbol_of_eunop op
     ^ (if is_eexp_atom e
        then macaulay2_of_eexp e
        else " (" ^ macaulay2_of_eexp e ^ ")")
  | Ebinop (op, e1, e2) ->
     (if eexp_ebinop_open e1 op
      then macaulay2_of_eexp e1
      else "(" ^ macaulay2_of_eexp e1 ^ ")")
     ^ " " ^ algebra_symbol_of_ebinop op ^ " "
     ^ (if ebinop_eexp_open op e2
        then macaulay2_of_eexp e2
        else "(" ^ macaulay2_of_eexp e2 ^ ")")

let get_mon_ord order solver =
  match code_of_monomial_order_for_solver order solver with
  | None ->
     let msg = Printf.sprintf
                 "Monomial order %s in %s is not supported."
                 (name_of_monomial_order order)
                 (string_of_algebra_solver solver) in
     raise (Failure msg)
  | Some ord -> ord

let generate_singular_input ?comments vars gen p =
  let varseq =
    match vars with
    | [] -> "x"
    | _ -> String.concat "," (tmap string_of_var vars) in
  let generator =
    if List.length gen = 0
    then "0"
    else (String.concat ",\n  " (tmap singular_of_eexp gen)) in
  let poly = singular_of_eexp p in
  let comment =
    if !debug
    then Option.value (Option.map (make_line_comments "//") comments)
           ~default:""
    else "" in
  let mon_ord = get_mon_ord !monomial_order Singular in
  String.concat "\n" [
      comment;
      "proc is_generator(poly p, ideal I) {";
      "  int idx;";
      "  for (idx=1; idx<=size(I); idx++) {";
      "    if (p == I[idx]) { return (0==0); }";
      "  }";
      "  return (0==1);";
      "}";
      "";
      Printf.sprintf "ring r = integer, (%s), %s;" varseq mon_ord;
      Printf.sprintf "ideal gs = %s;" generator;
      Printf.sprintf "poly p = %s;" poly;
      "if (is_generator(p, gs) || reduce(p, gs) == 0) {";
      "  0;";
      "} else {";
      "  ideal I = groebner(gs);";
      "  reduce(p, I);";
      "}";
      "exit;" ]

let generate_sage_input ?comments vars gen p =
  let varseq =
    match vars with
    | [] -> "x"
    | _ -> String.concat "," (tmap string_of_var vars) in
  let generator =
    if List.length gen = 0
    then "0"
    else (String.concat ",\n  " (tmap sage_of_eexp gen)) in
  let poly = sage_of_eexp p in
  let comment =
    if !debug
    then Option.value (Option.map (make_line_comments "#") comments)
           ~default:""
    else "" in
  let mon_ord = get_mon_ord !monomial_order Sage in
  String.concat "\n" [
      comment;
      Printf.sprintf
        "R.<%s> = PolynomialRing(ZZ, %d, order='%s')"
        varseq
        (max 1 (List.length vars))
        mon_ord;
      Printf.sprintf "I = (%s) * R" generator;
      Printf.sprintf "P = %s" poly;
      "assert P in I" ]

let generate_magma_input ?comments vars gen p =
  let varseq =
    match vars with
    | [] -> "x"
    | _ -> String.concat "," (tmap string_of_var vars) in
  let varlen = max 1 (List.length vars) in
  let generator =
    if List.length gen = 0
    then "0"
    else (String.concat ",\n" (tmap magma_of_eexp gen)) in
  let poly = magma_of_eexp p in
  let comment =
    if !debug
    then Option.value (Option.map (make_line_comments "//") comments)
           ~default:""
    else "" in
  let mon_ord = get_mon_ord !monomial_order Magma in
  (* Test if polynomial g is in the ideal J: `g in J` *)
  (* Reduce polynomial g with the ideal J: `NormalForm(g, J)` *)
  String.concat "\n" [
      comment;
      "Z := IntegerRing();";
      Printf.sprintf
        "F<%s> := PolynomialRing(Z, %d, \"%s\");"
        varseq varlen mon_ord;
      Printf.sprintf "G := [%s];" generator;
      Printf.sprintf "p := %s;" poly;
      "if p in G then";
      "  0;";
      "else";
      "  I := ideal<F|G>;";
      "  J := GroebnerBasis(I);";
      "  NormalForm(p, J);";
      "end if;";
      "exit;" ]

let generate_mathematica_input ?comments vars gen p =
  let varseq =
    match vars with
    | [] -> "x"
    | _ -> String.concat "," (tmap mathematica_of_var vars) in
  let generator =
    if List.length gen = 0
    then "0"
    else (String.concat ",\n" (tmap mathematica_of_eexp gen)) in
  let poly = mathematica_of_eexp p in
  let comment =
    if !debug
    then Option.value (Option.map (make_block_comments "(*" "*)") comments)
           ~default:""
    else "" in
  let mon_ord = get_mon_ord !monomial_order Mathematica in
  String.concat "\n" [
      comment;
      Printf.sprintf "vars = {%s};" varseq;
      Printf.sprintf "gs = {%s};" generator;
      Printf.sprintf "p = %s;" poly;
      Printf.sprintf
        "gb = GroebnerBasis[gs, vars, %s %s];"
        "CoefficientDomain -> Integers"
        (if mon_ord = "" then "" else ", MonomialOrder -> " ^ mon_ord);
      Printf.sprintf
        "{q, r} = PolynomialReduce[p, gb, vars, %s%s];"
        "CoefficientDomain -> Integers"
        (if mon_ord = "" then "" else ", MonomialOrder -> " ^ mon_ord);
      "Print[r];" ]

let generate_macaulay2_input ?comments vars gen p =
  let (vars, gen, p, default_generator) =
    let dummy_var =
      mkvar
        ~newvid:true
        "cryptoline'dummy'variable"
        (Tuint 0) (* The variable type does not matter *) in
    let no_var_in_generator =
      VS.is_empty
        (List.fold_left
           (fun vs e -> VS.union vs (vars_eexp e)) VS.empty gen) in
    if no_var_in_generator then
      (dummy_var::vars,
       List.map (fun e -> emul (evar dummy_var) e) gen,
       emul (evar dummy_var) p,
       string_of_var dummy_var ^ "*0")
    else
      (vars, gen, p, "0") in
  let varseq =
    match vars with
    | [] -> "x"
    | _ -> String.concat "," (List.map macaulay2_of_var vars) in
  let generator =
    if List.length gen = 0
    then default_generator
    else (String.concat ",\n  " (tmap macaulay2_of_eexp gen)) in
  let poly = macaulay2_of_eexp p in
  let comment =
    if !debug
    then Option.value (Option.map (make_line_comments "--") comments)
           ~default:""
    else "" in
  let mon_ord = get_mon_ord !monomial_order Macaulay2 in
  String.concat "\n" [
      comment;
      Printf.sprintf
        "myRing = ZZ[%s,MonomialOrder=>%s]"
        varseq
        mon_ord;
      Printf.sprintf "myIdeal = ideal(%s)" generator;
      Printf.sprintf "myPoly = %s" poly;
      "myBasis = groebnerBasis myIdeal";
      "myRes = toString (myPoly % myBasis)";
      "print myRes" ]

let generate_maple_input ?comments vars gen p =
  let const_gen =
    let (const_gen, poly_gen) = List.partition is_eexp_over_const gen in
    let _ =
      if List.length poly_gen > 0
      then failwith ("Only prime modulus is supported when using maple.") in
    match const_gen with
    | [] -> Econst Z.zero
    | c::[] -> c
    | _ -> failwith("Multi-moduli is not supported when using maple.") in
  let varseq =
    match vars with
    | [] -> "x"
    | _ -> String.concat "," (tmap string_of_var vars) in
  let poly = magma_of_eexp p in
  let comment =
    if !debug
    then Option.value (Option.map (make_line_comments "#") comments)
           ~default:""
    else "" in
  let mon_ord = get_mon_ord !monomial_order Maple in
  String.concat "\n" [
      comment;
      "interface(prettyprint=0):";
      "with(PolynomialIdeals):";
      "with(Groebner):";
      Printf.sprintf
        "Ord := %s(%s):"
        mon_ord
        varseq;
      Printf.sprintf "g := %s:" poly;
      Printf.sprintf
        "J := PolynomialIdeal([], characteristic=%s):"
        (magma_of_eexp const_gen);
      "res := IdealMembership(g, J):";
      "res;";
      "quit:" ]
