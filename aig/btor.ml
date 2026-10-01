
open Utils.Std
open Qfbv.Common
open Ast.Cryptoline

(** Program to BTOR *)

let btor_atom m a =
  match a with
  | Avar v -> m#mkvar v
  | Aconst (ty, n) -> m#mkconstd (size_of_typ ty) n

let btor_cast m od v a =
  let a_btor = btor_atom m a in
  let v_btor =
    match v.vtyp, typ_of_atom a with
    | Tuint wv, Tuint wa
      | Tsint wv, Tuint wa ->
       if wv = wa then a_btor
       else if wv < wa then m#mklow wv (wa - wv) a_btor
       else m#mkzext wa (wv - wa) a_btor
    | Tuint wv, Tsint wa
      | Tsint wv, Tsint wa ->
       if wv = wa then a_btor
       else if wv < wa then m#mklow wv (wa - wv) a_btor
       else m#mksext wa (wv - wa) a_btor in
  let od_btor =
    match od with
    | None -> None
    | Some d ->
       let d_btor =
         match v.vtyp, typ_of_atom a with
         | Tuint wv, Tuint wa ->
            if wv >= wa then m#mkconstd (wv - wa) Z.zero
            else m#mkhigh wv (wa - wv) a_btor
         | Tuint wv, Tsint wa ->
            if wv >= wa then m#mkhigh (wa - 1) 1 a_btor
            else m#mkhigh wv (wa - wv) a_btor
         | Tsint wv, Tuint wa ->
            if wv > wa then m#mkconstd (wv - wa) Z.zero
            else if wv = wa then m#mkhigh (wa - 1) 1 a_btor
            else m#mkadd (wa - wv + 1)
                   (m#mkzext (wa - wv) 1 (m#mkhigh wv (wa - wv) a_btor))
                   (m#mkzext 1 (wa - wv) (m#mkhigh (wv - 1) 1 (m#mklow wv (wa - wv) a_btor)))
         | Tsint wv, Tsint wa ->
            if wv >= wa then m#mkconstd (wv - wa) Z.zero
            else m#mkadd (wa - wv + 1)
                   (m#mksext (wa - wv) 1 (m#mkhigh wv (wa - wv) a_btor))
                   (m#mkzext 1 (wa - wv) (m#mkhigh (wv - 1) 1 (m#mklow wv (wa - wv) a_btor)))
       in
       Some (d, d_btor) in
  m#setvar v v_btor;
  (match od_btor with | None -> () | Some (d, d_btor) -> m#setvar d d_btor)

let btor_instr m i =
  match i with
  | Imov (v, a) -> m#setvar v (btor_atom m a)
  | Ishl (v, a, n) -> let w = size_of_atom a in
                      let a_btor = btor_atom m a in
                      m#setvar v (m#mksll w a_btor
                                    (match n with
                                     | Avar _ -> btor_atom m n
                                     | Aconst (_, z) -> m#mkconstd_for_shift w z))
  | Ishls (l, v, a, n) -> let w = size_of_var v in
                          let ni = Z.to_int n in
                          let a_btor = btor_atom m a in
                          m#setvar l (m#mkhigh (w - ni) ni a_btor);
                          m#setvar v (m#mksll w a_btor (m#mkconstd_for_shift w n))
  | Ishr (v, a, n) -> let w = size_of_var v in
                      let a_btor = btor_atom m a in
                      m#setvar v (m#mksrl w a_btor
                                    (match n with
                                     | Avar _ -> btor_atom m n
                                     | Aconst (_, z) -> m#mkconstd_for_shift w z))
  | Ishrs (v, l, a, n) -> let w = size_of_var v in
                          let ni = Z.to_int n in
                          let a_btor = btor_atom m a in
                          m#setvar v (m#mksrl w a_btor (m#mkconstd_for_shift w n));
                          m#setvar l (m#mklow ni (w - ni) a_btor)
  | Isar (v, a, n) -> let w = size_of_var v in
                      let a_btor = btor_atom m a in
                      m#setvar v (m#mksra w a_btor
                                    (match n with
                                     | Avar _ -> btor_atom m n
                                     | Aconst (_, z) -> m#mkconstd_for_shift w z))
  | Isars (v, l, a, n) -> let w = size_of_var v in
                          let ni = Z.to_int n in
                          let a_btor = btor_atom m a in
                          m#setvar v (m#mksra w a_btor (m#mkconstd_for_shift w n));
                          m#setvar l (m#mklow ni (w - ni) a_btor)
  | Icshl (vh, vl, a1, a2, n) -> let w1 = size_of_var vh in
                                 let w2 = size_of_var vl in
                                 let a1_btor = btor_atom m a1 in
                                 let a2_btor = btor_atom m a2 in
                                 let shifted = m#mksll (w1 + w2) (m#mkconcat w1 w2 a1_btor a2_btor) (m#mkconstd_for_shift (w1 + w2) n) in
                                 m#setvar vh (m#mkhigh w2 w1 shifted);
                                 m#setvar vl (m#mksrl w2 (m#mklow w2 w1 shifted) (m#mkconstd_for_shift w2 n))
  | Icshls (l, vh, vl, a1, a2, n) -> let w1 = size_of_var vh in
                                     let w2 = size_of_var vl in
                                     let ni = Z.to_int n in
                                     let a1_btor = btor_atom m a1 in
                                     let a2_btor = btor_atom m a2 in
                                     let shifted = m#mksll (w1 + w2) (m#mkconcat w1 w2 a1_btor a2_btor) (m#mkconstd_for_shift (w1 + w2) n) in
                                     m#setvar vh (m#mkhigh w2 w1 shifted);
                                     m#setvar vl (m#mksrl w2 (m#mklow w2 w1 shifted) (m#mkconstd_for_shift w2 n));
                                     m#setvar l (m#mkhigh (w1 - ni) ni a1_btor)
  | Icshr (vh, vl, a1, a2, n) -> let w1 = size_of_var vh in
                                 let w2 = size_of_var vl in
                                 let a1_btor = btor_atom m a1 in
                                 let a2_btor = btor_atom m a2 in
                                 let shifted = m#mksrl (w1 + w2) (m#mkconcat w1 w2 a1_btor a2_btor) (m#mkconstd_for_shift (w1 + w2) n) in
                                 m#setvar vh (m#mkhigh w2 w1 shifted);
                                 m#setvar vl (m#mklow w2 w1 shifted)
  | Icshrs (vh, vl, l, a1, a2, n) -> let w1 = size_of_var vh in
                                     let w2 = size_of_var vl in
                                     let ni = Z.to_int n in
                                     let a1_btor = btor_atom m a1 in
                                     let a2_btor = btor_atom m a2 in
                                     let shifted = m#mksrl (w1 + w2) (m#mkconcat w1 w2 a1_btor a2_btor) (m#mkconstd_for_shift (w1 + w2) n) in
                                     m#setvar vh (m#mkhigh w2 w1 shifted);
                                     m#setvar vl (m#mklow w2 w1 shifted);
                                     m#setvar l (m#mklow ni (w2 - ni) a2_btor)
  | Irol (v, a, n) -> let w = size_of_var v in
                      let a_btor = btor_atom m a in
                      let n_btor = match n with
                        | Avar _ -> btor_atom m n
                        | Aconst (_, z) -> m#mkconstd_for_rotate w z in
                      m#setvar v (m#mkrol w a_btor n_btor)
  | Iror (v, a, n) -> let w = size_of_var v in
                      let a_btor = btor_atom m a in
                      let n_btor = match n with
                        | Avar _ -> btor_atom m n
                        | Aconst (_, z) -> m#mkconstd_for_rotate w z in
                      m#setvar v (m#mkror w a_btor n_btor)
  | Inondet v -> ignore(m#mkvar v)
  | Icmov (v, c, a1, a2) -> let w = size_of_var v in
                            let c_btor = btor_atom m c in
                            let a1_btor = btor_atom m a1 in
                            let a2_btor = btor_atom m a2 in
                            m#setvar v (m#mkcond w c_btor a1_btor a2_btor)
  | Inop -> ()
  | Iadd (v, a1, a2) -> let w = size_of_var v in
                        let a1_btor = btor_atom m a1 in
                        let a2_btor = btor_atom m a2 in
                        m#setvar v (m#mkadd w a1_btor a2_btor)
  | Iadds (c, v, a1, a2) -> let w = size_of_var v in
                            let a1_btor = btor_atom m a1 in
                            let a2_btor = btor_atom m a2 in
                            let extsum = m#mkadd (w + 1) (m#mkzext w 1 a1_btor) (m#mkzext w 1 a2_btor) in
                            m#setvar c (m#mkhigh w 1 extsum);
                            m#setvar v (m#mklow w 1 extsum)
  | Iadc (v, a1, a2, y) -> let w = size_of_var v in
                           let a1_btor = btor_atom m a1 in
                           let a2_btor = btor_atom m a2 in
                           let y_btor = btor_atom m y in
                           m#setvar v (m#mkadd w (m#mkadd w a1_btor a2_btor) (m#mkzext 1 (w - 1) y_btor))
  | Iadcs (c, v, a1, a2, y) -> let w = size_of_var v in
                               let a1_btor = btor_atom m a1 in
                               let a2_btor = btor_atom m a2 in
                               let y_btor = btor_atom m y in
                               let extsum = m#mkadd (w + 1) (m#mkadd (w + 1) (m#mkzext w 1 a1_btor) (m#mkzext w 1 a2_btor)) (m#mkzext 1 w y_btor) in
                               m#setvar c (m#mkhigh w 1 extsum);
                               m#setvar v (m#mklow w 1 extsum)
  | Isub (v, a1, a2) -> let w = size_of_var v in
                        let a1_btor = btor_atom m a1 in
                        let a2_btor = btor_atom m a2 in
                        m#setvar v (m#mksub w a1_btor a2_btor)
  | Isubc (c, v, a1, a2) -> let w = size_of_var v in
                            let a1_btor = btor_atom m a1 in
                            let a2_btor = btor_atom m a2 in
                            let extsub = m#mkadd (w + 1) (m#mkadd (w + 1) (m#mkzext w 1 a1_btor) (m#mkzext w 1 (m#mknot w a2_btor))) (m#mkconstd (w + 1) (Z.of_int 1)) in
                            m#setvar c (m#mkhigh w 1 extsub);
                            m#setvar v (m#mklow w 1 extsub)
  | Isubb (c, v, a1, a2) -> let w = size_of_var v in
                            let a1_btor = btor_atom m a1 in
                            let a2_btor = btor_atom m a2 in
                            let extsub = m#mksub (w + 1) (m#mkzext w 1 a1_btor) (m#mkzext w 1 a2_btor) in
                            m#setvar c (m#mkhigh w 1 extsub);
                            m#setvar v (m#mklow w 1 extsub)
  | Isbc (v, a1, a2, y) -> let w = size_of_var v in
                           let a1_btor = btor_atom m a1 in
                           let a2_btor = btor_atom m a2 in
                           let y_btor = btor_atom m y in
                           m#setvar v (m#mkadd w (m#mkadd w a1_btor (m#mknot w a2_btor)) (m#mkzext 1 (w - 1) y_btor))
  | Isbcs (c, v, a1, a2, y) -> let w = size_of_var v in
                               let a1_btor = btor_atom m a1 in
                               let a2_btor = btor_atom m a2 in
                               let y_btor = btor_atom m y in
                               let extsub = m#mkadd (w + 1) (m#mkadd (w + 1) (m#mkzext w 1 a1_btor) (m#mkzext w 1 (m#mknot w a2_btor))) (m#mkzext 1 w y_btor) in
                               m#setvar c (m#mkhigh w 1 extsub);
                               m#setvar v (m#mklow w 1 extsub)
  | Isbb (v, a1, a2, y) -> let w = size_of_var v in
                           let a1_btor = btor_atom m a1 in
                           let a2_btor = btor_atom m a2 in
                           let y_btor = btor_atom m y in
                           m#setvar v (m#mksub w a1_btor (m#mkadd w a2_btor (m#mkzext 1 (w - 1) y_btor)))
  | Isbbs (c, v, a1, a2, y) -> let w = size_of_var v in
                               let a1_btor = btor_atom m a1 in
                               let a2_btor = btor_atom m a2 in
                               let y_btor = btor_atom m y in
                               let extsub = m#mksub (w + 1) (m#mkzext w 1 a1_btor) (m#mkadd (w + 1) (m#mkzext w 1 a2_btor) (m#mkzext 1 w y_btor)) in
                               m#setvar c (m#mkhigh w 1 extsub);
                               m#setvar v (m#mklow w 1 extsub)
  | Imul (v, a1, a2) -> let w = size_of_var v in
                        let a1_btor = btor_atom m a1 in
                        let a2_btor = btor_atom m a2 in
                        m#setvar v (m#mkmul w a1_btor a2_btor)
  | Imuls (c, v, a1, a2) -> let w = size_of_var v in
                            let a1_btor = btor_atom m a1 in
                            let a2_btor = btor_atom m a2 in
                            let ext = if var_is_signed v then m#mksext else m#mkzext in
                            let extmul = m#mkmul (2 * w) (ext w w a1_btor) (ext w w a2_btor) in
                            m#setvar c (m#mkcond 1 (m#mkeq (m#mkhigh w w extmul) (m#mkconstd w (Z.of_int 0))) (m#mkconstd 1 (Z.of_int 0)) (m#mkconstd 1 (Z.of_int 1)));
                            m#setvar v (m#mklow w w extmul)
  | Imull (vh, vl, a1, a2) -> let w = size_of_var vh in
                              let a1_btor = btor_atom m a1 in
                              let a2_btor = btor_atom m a2 in
                              let ext = if var_is_signed vh then m#mksext else m#mkzext in
                              let extmul = m#mkmul (2 * w) (ext w w a1_btor) (ext w w a2_btor) in
                              m#setvar vh (m#mkhigh w w extmul);
                              m#setvar vl (m#mklow w w extmul)
  | Imulj (v, a1, a2) -> let w = size_of_atom a1 in
                         let a1_btor = btor_atom m a1 in
                         let a2_btor = btor_atom m a2 in
                         let ext = if var_is_signed v then m#mksext else m#mkzext in
                         let extmul = m#mkmul (2 * w) (ext w w a1_btor) (ext w w a2_btor) in
                         m#setvar v extmul
  | Isplit (vh, vl, a, n) -> let w = size_of_var vh in
                             let ni = Z.to_int n in
                             let a_btor = btor_atom m a in
                             let ext = if var_is_signed vh then m#mksext else m#mkzext in
                             m#setvar vh (ext (w - ni) ni (m#mkhigh ni (w - ni) a_btor));
                             m#setvar vl (m#mkzext ni (w - ni) (m#mklow ni (w - ni) a_btor))
  | Ispl (vh, vl, a, n) -> let w = size_of_atom a in
                           let ni = Z.to_int n in
                           let a_btor = btor_atom m a in
                           m#setvar vh (m#mkhigh ni (w - ni) a_btor);
                           m#setvar vl (m#mklow ni (w - ni) a_btor)
  | Iseteq (v, a1, a2) -> let a1_btor = btor_atom m a1 in
                          let a2_btor = btor_atom m a2 in
                          let sv = size_of_var v in
                          if sv == 0 then assert false
                          else if sv == 1 then m#setvar v (m#mkeq a1_btor a2_btor)
                          else m#setvar v (m#mksub sv (m#mkconstd sv Z.zero) (m#mkzext 1 (sv - 1) (m#mkeq a1_btor a2_btor)))
  | Isetne (v, a1, a2) -> let a1_btor = btor_atom m a1 in
                          let a2_btor = btor_atom m a2 in
                          let sv = size_of_var v in
                          if sv == 0 then assert false
                          else if sv == 1 then m#setvar v (m#mkne a1_btor a2_btor)
                          else m#setvar v (m#mksub sv (m#mkconstd sv Z.zero) (m#mkzext 1 (sv - 1) (m#mkne a1_btor a2_btor)))
  | Iand (v, a1, a2) -> let w = size_of_var v in
                        let a1_btor = btor_atom m a1 in
                        let a2_btor = btor_atom m a2 in
                        m#setvar v (m#mkand w a1_btor a2_btor)
  | Ior (v, a1, a2) -> let w = size_of_var v in
                       let a1_btor = btor_atom m a1 in
                       let a2_btor = btor_atom m a2 in
                       m#setvar v (m#mkor w a1_btor a2_btor)
  | Ixor (v, a1, a2) -> let w = size_of_var v in
                        let a1_btor = btor_atom m a1 in
                        let a2_btor = btor_atom m a2 in
                        m#setvar v (m#mkxor w a1_btor a2_btor)
  | Inot (v, a) -> let w = size_of_var v in
                   let a_btor = btor_atom m a in
                   m#setvar v (m#mknot w a_btor)
  | Icast (od, v, a) -> btor_cast m od v a
  | Ivpc (v, a) -> btor_cast m None v a
  | Ijoin (v, ah, al) -> let wh = size_of_atom ah in
                         let wl = size_of_atom al in
                         let ah_btor = btor_atom m ah in
                         let al_btor = btor_atom m al in
                         m#setvar v (m#mkconcat wh wl ah_btor al_btor)
  | Iassert _ -> ()
  | Iassume _ -> ()
  | Icut _ -> ()
  | Ighost _ -> ()

let rec btor_mkbits m res_rev w j v_btor =
  if w <= j then List.rev res_rev
  else btor_mkbits m (m#mkextract w j j v_btor::res_rev) w (j + 1) v_btor

let btor_string_of_roots m bits =
  String.concat "\n" (tmap (fun b ->
                          let v = m#newvar in
                          Printf.sprintf "%d root 1 %d" v b) bits)

let _btor_mk_output_bits m outs =
  let out_btors = tmap (fun v -> btor_mkbits m [] (size_of_var v) 0 (m#mkvar v)) outs in
  String.concat "\n" (tmap (btor_string_of_roots m) out_btors)

let btor_program ?(rename=false) ?(pre=None) m p ins outs =
  (* inputs *)
  let _ = m#mkcomment "variables" in
  let _ =
    if rename then
      let vnames = List.mapi (fun i _ -> Printf.sprintf "pi%d" i) ins in
      btor_declare_vars m ~vnames:vnames ins
    else
      btor_declare_vars m ins in
  (* program *)
  let _ = m#mkcomment "program" in
  let _ = List.iter (btor_instr m) p in
  let _ = m#mkcomment "outputs" in
  let program_outputs = tmap (fun v -> btor_mkbits m [] (size_of_var v) 0 (m#mkvar v)) outs in
  (* precondition *)
  let outputs =
    match pre with
    | None -> program_outputs
    | Some f ->
       let bf = btor_of_bexp m (Verify.Common.bexp_rbexp f) in
       let bd = m#mkvar (mkvar "__dummy_output_bit__" bit_t) in
       tmap (tmap (fun o -> m#mkcond 1 bf o bd)) program_outputs in
  (* outputs *)
  (String.concat "\n" m#getstmts)
  ^ "\n"
  ^ String.concat "\n" (tmap (btor_string_of_roots m) outputs)
  ^ "\n"

let btor_miter ?(rename=false) ?(pre=None) m (p1, ins1, outs1) (p2, ins2, outs2) =
  (* Rename input variables so that both programs have exactly the same inputs. *)
  let equalize_inputs pre (p1, ins1, outs1) (p2, ins2, outs2) =
    let (am1, am2, ins_rev) =
      try
        List.fold_left2 (
          fun (vm1, vm2, ins_rev) i1 i2 ->
            if i1.vtyp = i2.vtyp then
              let nv = { i1 with vname = Printf.sprintf "p1_%s_p2_%s" i1.vname i2.vname } in
              let na = Avar nv in
              (VM.add i1 na vm1, VM.add i2 na vm2, nv::ins_rev)
            else
              raise (Failure (
                  Printf.sprintf
                    "Incompatible types of two inputs: %s of type %s in the first program, %s of type %s in the second program"
                    i1.vname (string_of_typ i1.vtyp)
                    i2.vname (string_of_typ i2.vtyp)
                ))
        ) (VM.empty, VM.empty, []) ins1 ins2
      with Invalid_argument _ ->
        raise (Failure "The number of inputs of the two programs must be the same") in
    let (em1, em2) = (emap_of_amap am1, emap_of_amap am2) in
    let (rm1, rm2) = (rmap_of_amap am1, rmap_of_amap am2) in
    let ins = List.rev ins_rev in
    (
      (
        subst_program am1 em1 rm1 p1 |> fst,
        tmap (fun v -> subst_lval am1 v |> fst) outs1
      ),
      (
        subst_program am2 em2 rm2 p2 |> fst,
        tmap (fun v -> subst_lval am2 v |> fst) outs2
      ),
      (* the precondition comes from the first specification *)
      Option.map (fun e -> subst_rbexp rm1 e |> fst) pre,
      ins
    )
  in
  let btor_program p pre outs =
    (* program *)
    let _ = m#mkcomment "program" in
    let _ = List.iter (btor_instr m) p in
    (* precondition *)
    let btor_outs : int list =
      match pre with
      | None -> tmap m#mkvar outs
      | Some f ->
        let bf = btor_of_bexp m (Verify.Common.bexp_rbexp f) in
        tmap (fun o ->
            let bd = m#mkvar (mkvar (Printf.sprintf "__dummy_output_%s__" (string_of_typ o.vtyp)) o.vtyp) in
            m#mkcond (size_of_typ o.vtyp) bf (m#mkvar o) bd) outs in
    btor_outs in
  let ((p1, outs1), (p2, outs2), pre, ins) = equalize_inputs pre (p1, ins1, outs1) (p2, ins2, outs2) in
  (* declare inputs *)
  let _ = m#mkcomment "variables" in
  let _ =
    if rename then
      let vnames = List.mapi (fun i _ -> Printf.sprintf "pi_%d" i) ins in
      btor_declare_vars m ~vnames:vnames ins
    else
      btor_declare_vars m ins in
  (* programs *)
  let btor_outs1 = btor_program p1 pre outs1 in
  let btor_outs2 = btor_program p2 pre outs2 in
  (* miter *)
  let _ = m#mkcomment "miter" in
  let roots : int list =
    try
      List.rev_map2 (fun o1 o2 -> m#mkne o1 o2) btor_outs1 btor_outs2
      |> List.rev
    with Invalid_argument _ ->
      failwith ("Mismatch of the number of outputs.") in
  (* outputs *)
  (String.concat "\n" m#getstmts)
  ^ "\n"
  ^ btor_string_of_roots m roots
  ^ "\n"
