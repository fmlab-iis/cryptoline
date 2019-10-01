%{

(*
 * Use raise_at to raise an exception if the line number can be determined.
 * Raise ParseError otherwise.
 *)


  open Ast.Cryptoline
  open Common

  exception ParseError of string

  let main = "main"
  let vars_expansion_infix = "_"

  type func =
    { fname : string;
      fargs : var list;
      fouts : var list;
      fvm : Ast.Cryptoline.var SM.t; (* a map from a name to a variable (including carry variables) *)
      fym : Ast.Cryptoline.var SM.t; (* a map from a name to a carry variable *)
      fgm : Ast.Cryptoline.var SM.t; (* a map from a name to a ghost variable *)
      fbody : program;
      fpre : bexp;
      fpost : bexp;
      fepwss : prove_with_spec list;
      frpwss : prove_with_spec list }

  let (--) i j =
    let rec aux n acc =
      if n < i then acc else aux (n-1) (n :: acc)
    in aux j []

  let raise_at lno msg = raise (ParseError ("Parse failure at line " ^ string_of_int lno ^ ". " ^ msg))

  let vm_of_list (vs : var list) = List.fold_left (fun m v -> SM.add v.vname v m) SM.empty vs
  let vm_of_vs (vs : VS.t) = vm_of_list (VS.elements vs)
  let vs_of_vm vm = SM.fold (fun _ v vs -> VS.add v vs) vm VS.empty

  let _some_pass reasons =
    let rec helper r reasons =
      match reasons with
      | [] -> r
      | None::_ -> None
      | hd::tl -> helper hd tl in
    helper None reasons

  let to_uint ty = Tuint (size_of_typ ty)
  let to_double_size ty =
    match ty with
    | Tuint w -> Tuint (w * 2)
    | Tsint w -> Tsint (w * 2)

  let check_at lno reasons =
    match chain_reasons reasons with
    | None -> ()
    | Some r -> raise_at lno r

  type lv_token_t = Z.t SM.t -> var SM.t -> var SM.t -> var SM.t -> typ option -> (var SM.t * var SM.t * var SM.t * var)
(*   type atomic_token_t = Z.t SM.t -> var SM.t -> var SM.t -> var SM.t -> atomic *)

  let parse_typed_const lno ty n_token =
    fun cm _vm _ym _gm ->
      let n = n_token cm in
      match check_const_range ty n with
      | None -> Aconst (ty, n)
      | Some r -> raise_at lno r

  let parse_imov_at lno (lv_token : lv_token_t) a_token =
    fun _fm cm vm ym gm ->
      let a = a_token cm vm ym gm in
      let ty = typ_of_atomic a in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_same_typ [a; Avar v]] in
      (vm, ym, gm, [Imov (v, a)])

  let parse_ishl_at lno (lv_token : lv_token_t) a_token n_token =
    fun _fm cm vm ym gm ->
      let a = a_token cm vm ym gm in
      let ty = typ_of_atomic a in
      let n = n_token cm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_same_typ [a; Avar v]] in
      let _ =
        let w = size_of_var v in
        if Z.leq n Z.zero || Z.geq n (Z.of_int w) then
          raise_at lno ("An shl instruction expects an offset between 0 and the " ^ string_of_int w ^ " (both excluding)."
                        ^ " An offset not in the range is found: " ^ Z.to_string n ^ ".")
      in
      (vm, ym, gm, [Ishl (v, a, n)])

  let parse_cshl_at lno (vh_token : lv_token_t) (vl_token : lv_token_t) a1_token a2_token n_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let n = n_token cm in
      let (vm, ym, gm, vh) = vh_token cm vm ym gm (Some ty) in
      let (vm, ym, gm, vl) = vl_token cm vm ym gm (Some (to_uint ty)) in
      let _ = check_at lno [check_diff_lvs vh vl; check_same_size [a1; a2]; check_same_typ [a1; Avar vh]; check_unsigned_same_typ [a2; Avar vl]] in
      (vm, ym, gm, [Icshl (vh, vl, a1, a2, n)])

  let parse_set_at _lno c_token =
    fun _fm cm vm ym gm ->
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      (vm, ym, gm, [Imov (c, Aconst (bit_t, Z.one)) ])

  let parse_clear_at _lno c_token =
    fun _fm cm vm ym gm ->
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      (vm, ym, gm, [Imov (c, Aconst (bit_t, Z.zero))])

  let parse_nondet_at _lno (lv_token : lv_token_t) =
    fun _fm cm vm ym gm ->
      let (vm, ym, gm, v) = lv_token cm vm ym gm None in
      (vm, ym, gm, [Inondet v])

  let parse_cmov_at lno (lv_token : lv_token_t) c_token a1_token a2_token =
    fun _fm cm vm ym gm ->
      let c = c_token cm vm ym gm in
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Icmov (v, c, a1, a2)])

  let parse_add_at lno (lv_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Iadd (v, a1, a2)])

  let parse_adds_at lno c_token (lv_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Iadds (c, v, a1, a2)])

  let parse_addr_at lno c_token (lv_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Iaddr (c, v, a1, a2)])

  let parse_adc_at lno (lv_token : lv_token_t) a1_token a2_token y_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let y = y_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Iadc (v, a1, a2, y)])

  let parse_adcs_at lno c_token (lv_token : lv_token_t) a1_token a2_token y_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let y = y_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Iadcs (c, v, a1, a2, y)])

  let parse_adcr_at lno c_token (lv_token : lv_token_t) a1_token a2_token y_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let y = y_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Iadcr (c, v, a1, a2, y)])

  let parse_sub_at lno (lv_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Isub (v, a1, a2)])

  let parse_subc_at lno c_token (lv_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Isubc (c, v, a1, a2)])

  let parse_subb_at lno c_token (lv_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Isubb (c, v, a1, a2)])

  let parse_subr_at lno c_token (lv_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Isubr (c, v, a1, a2)])

  let parse_sbc_at lno (lv_token : lv_token_t) a1_token a2_token y_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let y = y_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Isbc (v, a1, a2, y)])

  let parse_sbcs_at lno c_token (lv_token : lv_token_t) a1_token a2_token y_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let y = y_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Isbcs (c, v, a1, a2, y)])

  let parse_sbcr_at lno c_token (lv_token : lv_token_t) a1_token a2_token y_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let y = y_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Isbcr (c, v, a1, a2, y)])

  let parse_sbb_at lno (lv_token : lv_token_t) a1_token a2_token y_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let y = y_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Isbb (v, a1, a2, y)])

  let parse_sbbs_at lno c_token (lv_token : lv_token_t) a1_token a2_token y_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let y = y_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Isbbs (c, v, a1, a2, y)])

  let parse_sbbr_at lno c_token (lv_token : lv_token_t) a1_token a2_token y_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let y = y_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Isbbr (c, v, a1, a2, y)])

  let parse_mul_at lno (lv_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Imul (v, a1, a2)])

  let parse_muls_at lno c_token (lv_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Imuls (c, v, a1, a2)])

  let parse_mulr_at lno c_token (lv_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Imulr (c, v, a1, a2)])

  let parse_mull_at lno (vh_token : lv_token_t) (vl_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, vh) = vh_token cm vm ym gm (Some ty) in
      let (vm, ym, gm, vl) = vl_token cm vm ym gm (Some (to_uint ty)) in
      let _ = check_at lno [check_diff_lvs vh vl; check_mull_lvs vh vl; check_same_typ [Avar vh; a1; a2]] in
      (vm, ym, gm, [Imull (vh, vl, a1, a2)])

  let parse_mulj_at lno (v_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, v) = v_token cm vm ym gm (Some (to_double_size ty)) in
      let _ = check_at lno [check_mulj_size v a1 a2; check_same_typ [a1; a2]; check_same_sign [a1; a2; Avar v]] in
      (vm, ym, gm, [Imulj (v, a1, a2)])

  let parse_split_at lno (vh_token : lv_token_t) (vl_token : lv_token_t) a_token n_token =
    fun _fm cm vm ym gm ->
      let a = a_token cm vm ym gm in
      let n = n_token cm in
      let ty = typ_of_atomic a in
      let (vm, ym, gm, vh) = vh_token cm vm ym gm (Some ty) in
      let (vm, ym, gm, vl) = vl_token cm vm ym gm (Some (to_uint ty)) in
      let _ = check_at lno [check_diff_lvs vh vl; check_split_lvs vh vl; check_same_typ [Avar vh; a]] in
      let _ =
        let w = size_of_var vl in
        if Z.leq n Z.zero || Z.geq n (Z.of_int w) then
          raise_at lno ("The position of a split should be in between 0 and " ^ string_of_int w ^ " (both excluded)")
      in
      (vm, ym, gm, [Isplit (vh, vl, a, n)])

  let parse_uadd_at lno (lv_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_unsigned_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Iadd (v, a1, a2)])

  let parse_uadds_at lno c_token (lv_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_unsigned_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Iadds (c, v, a1, a2)])

  let parse_uaddr_at lno c_token (lv_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_unsigned_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Iaddr (c, v, a1, a2)])

  let parse_uadc_at lno (lv_token : lv_token_t) a1_token a2_token y_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let y = y_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_unsigned_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Iadc (v, a1, a2, y)])

  let parse_uadcs_at lno c_token (lv_token : lv_token_t) a1_token a2_token y_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let y = y_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_unsigned_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Iadcs (c, v, a1, a2, y)])

  let parse_uadcr_at lno c_token (lv_token : lv_token_t) a1_token a2_token y_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let y = y_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_unsigned_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Iadcr (c, v, a1, a2, y)])

  let parse_usub_at lno (lv_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_unsigned_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Isub (v, a1, a2)])

  let parse_usubc_at lno c_token (lv_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_unsigned_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Isubc (c, v, a1, a2)])

  let parse_usubb_at lno c_token (lv_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_unsigned_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Isubb (c, v, a1, a2)])

  let parse_usubr_at lno c_token (lv_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_unsigned_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Isubr (c, v, a1, a2)])

  let parse_usbc_at lno (lv_token : lv_token_t) a1_token a2_token y_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let y = y_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_unsigned_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Isbc (v, a1, a2, y)])

  let parse_usbcs_at lno c_token (lv_token : lv_token_t) a1_token a2_token y_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let y = y_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_unsigned_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Isbcs (c, v, a1, a2, y)])

  let parse_usbcr_at lno c_token (lv_token : lv_token_t) a1_token a2_token y_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let y = y_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_unsigned_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Isbcr (c, v, a1, a2, y)])

  let parse_usbb_at lno (lv_token : lv_token_t) a1_token a2_token y_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let y = y_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_unsigned_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Isbb (v, a1, a2, y)])

  let parse_usbbs_at lno c_token (lv_token : lv_token_t) a1_token a2_token y_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let y = y_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_unsigned_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Isbbs (c, v, a1, a2, y)])

  let parse_usbbr_at lno c_token (lv_token : lv_token_t) a1_token a2_token y_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let y = y_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_unsigned_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Isbbr (c, v, a1, a2, y)])

  let parse_umul_at lno (lv_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_unsigned_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Imul (v, a1, a2)])

  let parse_umuls_at lno c_token (lv_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_unsigned_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Imuls (c, v, a1, a2)])

  let parse_umulr_at lno c_token (lv_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_unsigned_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Imulr (c, v, a1, a2)])

  let parse_umull_at lno (vh_token : lv_token_t) (vl_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, vh) = vh_token cm vm ym gm (Some ty) in
      let (vm, ym, gm, vl) = vl_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs vh vl; check_unsigned_same_typ [a1; a2; Avar vh; Avar vl]] in
      (vm, ym, gm, [Imull (vh, vl, a1, a2)])

  let parse_umulj_at lno (v_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, v) = v_token cm vm ym gm (Some (to_double_size ty)) in
      let _ = check_at lno [check_mulj_size v a1 a2; check_unsigned_var v; check_unsigned_same_typ [a1; a2]] in
      (vm, ym, gm, [Imulj (v, a1, a2)])

  let parse_usplit_at lno (vh_token : lv_token_t) (vl_token : lv_token_t) a_token n_token =
    fun _fm cm vm ym gm ->
      let a = a_token cm vm ym gm in
      let n = n_token cm in
      let ty = typ_of_atomic a in
      let (vm, ym, gm, vh) = vh_token cm vm ym gm (Some ty) in
      let (vm, ym, gm, vl) = vl_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs vh vl; check_unsigned_same_typ [a; Avar vh; Avar vl]] in
      let _ =
        let w = size_of_var vl in
        if Z.leq n Z.zero || Z.geq n (Z.of_int w) then
          raise_at lno ("The position of a split should be in between 0 and " ^ string_of_int w ^ " (both excluded)")
      in
      (vm, ym, gm, [Isplit (vh, vl, a, n)])

  let parse_sadd_at lno (lv_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_signed_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Iadd (v, a1, a2)])

  let parse_sadds_at lno c_token (lv_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_signed_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Iadds (c, v, a1, a2)])

  let parse_saddr_at lno c_token (lv_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_signed_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Iaddr (c, v, a1, a2)])

  let parse_sadc_at lno (lv_token : lv_token_t) a1_token a2_token y_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let y = y_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_signed_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Iadc (v, a1, a2, y)])

  let parse_sadcs_at lno c_token (lv_token : lv_token_t) a1_token a2_token y_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let y = y_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_signed_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Iadcs (c, v, a1, a2, y)])

  let parse_sadcr_at lno c_token (lv_token : lv_token_t) a1_token a2_token y_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let y = y_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_signed_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Iadcr (c, v, a1, a2, y)])

  let parse_ssub_at lno (lv_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_signed_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Isub (v, a1, a2)])

  let parse_ssubc_at lno c_token (lv_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_signed_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Isubc (c, v, a1, a2)])

  let parse_ssubb_at lno c_token (lv_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_signed_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Isubb (c, v, a1, a2)])

  let parse_ssubr_at lno c_token (lv_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_signed_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Isubr (c, v, a1, a2)])

  let parse_ssbc_at lno (lv_token : lv_token_t) a1_token a2_token y_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let y = y_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_signed_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Isbc (v, a1, a2, y)])

  let parse_ssbcs_at lno c_token (lv_token : lv_token_t) a1_token a2_token y_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let y = y_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_signed_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Isbcs (c, v, a1, a2, y)])

  let parse_ssbcr_at lno c_token (lv_token : lv_token_t) a1_token a2_token y_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let y = y_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_signed_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Isbcr (c, v, a1, a2, y)])

  let parse_ssbb_at lno (lv_token : lv_token_t) a1_token a2_token y_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let y = y_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_signed_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Isbb (v, a1, a2, y)])

  let parse_ssbbs_at lno c_token (lv_token : lv_token_t) a1_token a2_token y_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let y = y_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_signed_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Isbbs (c, v, a1, a2, y)])

  let parse_ssbbr_at lno c_token (lv_token : lv_token_t) a1_token a2_token y_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let y = y_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_signed_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Isbbr (c, v, a1, a2, y)])

  let parse_smul_at lno (lv_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_signed_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Imul (v, a1, a2)])

  let parse_smuls_at lno c_token (lv_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_signed_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Imuls (c, v, a1, a2)])

  let parse_smulr_at lno c_token (lv_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, c) = c_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some ty) in
      let _ = check_at lno [check_diff_lvs c v; check_signed_same_typ [a1; a2; Avar v]] in
      (vm, ym, gm, [Imulr (c, v, a1, a2)])

  let parse_smull_at lno (vh_token : lv_token_t) (vl_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, vh) = vh_token cm vm ym gm (Some ty) in
      let (vm, ym, gm, vl) = vl_token cm vm ym gm (Some (to_uint ty)) in
      let _ = check_at lno [check_diff_lvs vh vl; check_mull_lvs vh vl; check_signed_same_typ [a1; a2; Avar vh]; check_unsigned_var vl] in
      (vm, ym, gm, [Imull (vh, vl, a1, a2)])

  let parse_smulj_at lno (v_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let ty = typ_of_atomic a1 in
      let (vm, ym, gm, v) = v_token cm vm ym gm (Some (to_double_size ty)) in
      let _ = check_at lno [check_mulj_size v a1 a2; check_signed_var v; check_signed_same_typ [a1; a2]] in
      (vm, ym, gm, [Imulj (v, a1, a2)])

  let parse_ssplit_at lno (vh_token : lv_token_t) (vl_token : lv_token_t) a_token n_token =
    fun _fm cm vm ym gm ->
      let a = a_token cm vm ym gm in
      let n = n_token cm in
      let ty = typ_of_atomic a in
      let (vm, ym, gm, vh) = vh_token cm vm ym gm (Some ty) in
      let (vm, ym, gm, vl) = vl_token cm vm ym gm (Some (to_uint ty)) in
      let _ = check_at lno [check_diff_lvs vh vl; check_mull_lvs vh vl; check_signed_same_typ [a; Avar vh]; check_unsigned_var vl] in
      let _ =
        let w = size_of_var vl in
        if Z.leq n Z.zero || Z.geq n (Z.of_int w) then
          raise_at lno ("The position of a split should be in between 0 and " ^ string_of_int w ^ " (both excluded)")
      in
      (vm, ym, gm, [Isplit (vh, vl, a, n)])

  let parse_and_at lno (lv_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm None in
      let _ = check_at lno [check_same_size [Avar v; a1; a2]] in
      (vm, ym, gm, [Iand (v, a1, a2)])

  let parse_or_at lno (lv_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm None in
      let _ = check_at lno [check_same_size [Avar v; a1; a2]] in
      (vm, ym, gm, [Ior (v, a1, a2)])

  let parse_xor_at lno (lv_token : lv_token_t) a1_token a2_token =
    fun _fm cm vm ym gm ->
      let a1 = a1_token cm vm ym gm in
      let a2 = a2_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm None in
      let _ = check_at lno [check_same_size [Avar v; a1; a2]] in
      (vm, ym, gm, [Ixor (v, a1, a2)])

  let parse_not_at lno (lv_token : lv_token_t) a_token =
    fun _fm cm vm ym gm ->
      let a = a_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm None in
      let _ = check_at lno [check_same_size [Avar v; a]] in
      (vm, ym, gm, [Inot (v, a)])

  let parse_cast_at _lno (lv_token : lv_token_t) a_token =
    fun _fm cm vm ym gm ->
      let a = a_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm None in
      (vm, ym, gm, [Icast (v, a)])

  let parse_vpc_at _lno (lv_token : lv_token_t) a_token =
    fun _fm cm vm ym gm ->
      let a = a_token cm vm ym gm in
      let (vm, ym, gm, v) = lv_token cm vm ym gm None in
      (vm, ym, gm, [Ivpc (v, a)])

  let parse_join_at lno (lv_token : lv_token_t) ah_token al_token =
    fun _fm cm vm ym gm ->
      let ah = ah_token cm vm ym gm in
      let al = al_token cm vm ym gm in
      let ty = typ_of_atomic ah in
      let (vm, ym, gm, v) = lv_token cm vm ym gm (Some (to_double_size ty)) in
      let _ = check_at lno [check_same_sign [Avar v; ah]; check_unsigned_atomic al; check_join_size v ah al] in
      (vm, ym, gm, [Ijoin (v, ah, al)])

  let parse_assert_at _lno bexp_token =
    fun _fm cm vm ym gm ->
      (vm, ym, gm, [Iassert (bexp_token cm vm ym gm)])

  let parse_assume_at _lno bexp_token =
    fun _fm cm vm ym gm ->
      (vm, ym, gm, [Iassume (bexp_token cm vm ym gm)])

  let parse_cut_at _lno bexp_prove_with_token =
    fun _fm cm vm ym gm ->
      let ((e, r), epwss, rpwss) = bexp_prove_with_token cm vm ym gm in
      (vm, ym, gm, [Iecut (e, epwss); Ircut (r, rpwss)])

  let parse_ecut_at _lno ebexp_prove_with_token =
    fun _fm cm vm ym gm ->
    let (e, epwss) = ebexp_prove_with_token cm vm ym gm in
    (vm, ym, gm, [Iecut (e, epwss)])

  let parse_rcut_at _lno rbexp_prove_with_token =
    fun _fm cm vm ym gm ->
      let (r, rpwss) = rbexp_prove_with_token cm vm ym gm in
      (vm, ym, gm, [Ircut (r, rpwss)])

  let parse_ghost_at lno gvars_token bexp_token =
    fun _fm cm vm ym gm ->
      let gvars = gvars_token cm vm ym gm in
      let gm = vm_of_vs (VS.union gvars (vs_of_vm gm)) in
      let e = bexp_token cm vm ym gm in
      let bad_ebexps = List.filter (fun e -> not (eq_ebexp e etrue) && VS.is_empty (VS.inter gvars (vars_ebexp e))) (split_eand (eqn_bexp e)) in
      let bad_rbexps = List.filter (fun e -> not (eq_rbexp e rtrue) && VS.is_empty (VS.inter gvars (vars_rbexp e))) (split_rand (rng_bexp e)) in
      if List.length bad_ebexps > 0 then raise_at lno ("The algebraic expression " ^ string_of_ebexp (List.hd bad_ebexps) ^ " is defined without using any ghost variable.")
      else if List.length bad_rbexps > 0 then raise_at lno ("The range expression " ^ string_of_rbexp (List.hd bad_rbexps) ^ " is defined without using any ghost variable.")
      else (vm, ym, gm, [Ighost (gvars, e)])

  let is_type_compatible formal actual =
    match actual with
    | Avar v -> formal.vtyp = v.vtyp
    | Aconst (ty, _n) -> formal.vtyp = ty

  let parse_call_at lno fname_token actuals_token =
    fun fm cm vm ym gm ->
      (* The function name *)
      let fname = fname_token in
      (* The function definition *)
      let f =
        try
          SM.find fname fm
        with Not_found ->
          raise_at lno ("Call an undefined function '" ^ fname ^ "'.") in
      (* The actual paramaters, the types of formal arguments are requried to parse actual parameters *)
      let actuals = actuals_token (List.map typ_of_var f.fargs, List.map typ_of_var f.fouts) cm vm ym gm in
      (* Rename local variables *)
      let (fbody, fargs, fouts, fvs, fys, fgs) =
        if !Options.Std.rename_local then
          let rename_var v = mkvar (fname ^ "_local_" ^ v.vname) v.vtyp in
          let fargs = List.map rename_var f.fargs in
          let fouts = List.map rename_var f.fouts in
          let fvs = VS.map rename_var (vs_of_vm f.fvm) in
          let fys = VS.map rename_var (vs_of_vm f.fym) in
          let fgs = VS.map rename_var (vs_of_vm f.fgm) in
          let local_renamer = object (* (self) *)
                                inherit nop_visitor
                                method! vvar v = ChangeTo (rename_var v)
                              end in
          let fbody = visit_program local_renamer f.fbody in
          (fbody, fargs, fouts, fvs, fys, fgs)
        else
          (f.fbody, f.fargs, f.fouts, vs_of_vm f.fvm, vs_of_vm f.fym, vs_of_vm f.fgm) in
      (* Formal parameters after renaming *)
      let inputs = fargs in
      let outputs = fouts in
      let formals = inputs@outputs in
      (* Check the number of actual parameters *)
      let _ =
        if List.length actuals != List.length formals then
          raise_at lno ("Failed to call the function " ^ fname ^ ": numbers of arguments mismatch.") in
      (* Check types of actual parameters, this should be done in parsing actual parameters *)
      let _ =
        List.iter2 (fun formal actual ->
                     if not (is_type_compatible formal actual) then
                       raise_at lno ("The type of the actual parameter " ^ string_of_atomic actual
                                     ^ " is not compatible with the type of the formal parameter " ^ string_of_var formal))
                   formals actuals in
      (* Check naming conflicts *)
      let _ =
        let (vsclash, ysclash, gsclash) =
          let actvars = List.fold_left (fun res a -> VS.union res (vars_atomic a)) VS.empty actuals in
          (* variables not replaced by formal parameters cannot have the same name as the name of any actual parameter *)
          let unrenamed_vs = VS.diff fvs (VS.of_list formals) in
          let unrenamed_ys = VS.diff fys (VS.of_list formals) in
          let unrenamed_gs = VS.diff fgs (VS.of_list formals) in
          let vsclash = VS.inter actvars unrenamed_vs in
          let ysclash = VS.inter actvars unrenamed_ys in
          let gsclash = VS.inter actvars unrenamed_gs in
          (vsclash, ysclash, gsclash) in
        if not (VS.is_empty gsclash) then
          let v = VS.choose gsclash in
          raise_at lno ("Naming conflict: the actual argument " ^ string_of_var v ^ " is already defined as a ghost variable in function " ^ fname ^ ".")
        else if not (VS.is_empty ysclash) then
          let v = VS.choose ysclash in
          raise_at lno ("Naming conflict: the actual argument " ^ string_of_var v ^ " is already defined as a carry in function " ^ fname ^ ".")
        else if not (VS.is_empty vsclash) then
          let v = VS.choose vsclash in
          raise_at lno ("Naming conflict: the actual argument " ^ string_of_var v ^ " is already defined in function " ^ fname ^ ".")
      in
      let pats = List.combine formals actuals in
      let vs = vs_of_vm vm in
      let ys = vs_of_vm ym in
      let gs = vs_of_vm gm in
      (* Check undefined variables *)
      let _ =
        let undefined =
          List.flatten (List.map (fun (formal, actual) ->
                                   match actual with
                                   | Avar v -> if mem_var formal inputs && not (VS.mem v vs) then [v] else []
                                   | _ -> []
                                 ) pats) in
        if List.length undefined > 0 then
          raise_at lno ("Undefined variable: " ^ string_of_var (List.hd undefined))
      in
      let p = subst_program pats fbody in
      (* Update variable types *)
      let subst_varmap vm =
        (*
         * subst_lval fails if the corresponding actual parameter of a formal parameter is a constant.
         * In this case, no variable type will be updated.
         *)
        VS.of_list (List.flatten (List.map (fun v -> try [subst_lval pats v] with _ -> []) (VS.elements vm))) in
      let update_varset vs vsp =
        (* To update variable types, we need to remove variables with new types first. *)
        VS.union (VS.diff vs vsp) vsp in
      let vsp = subst_varmap fvs in
      let ysp = subst_varmap fys in
      let gsp = subst_varmap fgs in
      (vm_of_vs (update_varset vs vsp), vm_of_vs (update_varset ys ysp), vm_of_vs (update_varset gs gsp), p)

%}

%token <string> COMMENT
%token <Z.t> NUM
%token <string> ID
%token <int> UINT SINT
%token BIT
%token LBRAC RBRAC LPAR RPAR LSQUARE RSQUARE COMMA SEMICOLON DOT DOTDOT VBAR COLON
/* Instructions */
%token CONST MOV
%token ADD ADDS ADDR ADC ADCS ADCR SUB SUBC SUBB SUBR SBC SBCS SBCR SBB SBBS SBBR MUL MULS MULR MULL MULJ SPLIT
%token UADD UADDS UADDR UADC UADCS UADCR USUB USUBC USUBB USUBR USBC USBCS USBCR USBB USBBS USBBR UMUL UMULS UMULR UMULL UMULJ USPLIT
%token SADD SADDS SADDR SADC SADCS SADCR SSUB SSUBC SSUBB SSUBR SSBC SSBCS SSBCR SSBB SSBBS SSBBR SMUL SMULS SMULR SMULL SMULJ SSPLIT
%token SHL CSHL SET CLEAR NONDET CMOV AND OR NOT CAST VPC JOIN ASSERT ASSUME GHOST
%token CUT ECUT RCUT NOP
/* Logical Expressions */
%token VARS NEG SQ EXT UEXT SEXT MOD UMOD SREM SMOD XOR ULT ULE UGT UGE SLT SLE SGT SGE
/* Predicates */
%token TRUE EQ EQMOD
/* Operators */
%token ADDOP SUBOP MULOP POWOP ULEOP ULTOP UGEOP UGTOP SLEOP SLTOP SGEOP SGTOP EQOP NEGOP MODOP LANDOP LOROP NOTOP ANDOP OROP XOROP
/* Others */
%token AT PROC CALL ULIMBS SLIMBS PROVE WITH ALL CUTS ASSUMES GHOSTS PRECONDITION DEREFOP
%token EOF

%left LOROP
%left LANDOP
%nonassoc EQOP ULTOP ULEOP UGTOP UGEOP SLTOP SLEOP SGTOP SGEOP
%left OROP
%left XOROP
%left ANDOP
%left ADDOP SUBOP
%left MULOP
%left POWOP
%right NEGOP NOTOP
%left MODOP
%nonassoc VAR CONST NEG ADD SUB MUL SQ UMOD SREM SMOD NOT AND OR XOR ULT ULE UGT UGE SLT SLE SGT SGE
%nonassoc EQ EQMOD
%nonassoc UMINUS

%start spec
%start prog
%type <(Ast.Cryptoline.VS.t * Ast.Cryptoline.spec)> spec
%type <Ast.Cryptoline.program> prog

%%

spec:
  procs EOF
  {
    (*
     * fm: a map from a name to a function
     * cm: a map from a name to a constant
     *)
    let (fm, _cm) = $1 SM.empty SM.empty in
    try
      let m = SM.find main fm in
      (VS.of_list m.fargs, { spre = m.fpre; sprog = m.fbody; spost = m.fpost; sepwss = m.fepwss; srpwss = m.frpwss })
    with Not_found ->
      raise (ParseError "A main function is required.")
  }
;

procs:
  proc procs
  {
    fun fm cm ->
      let (fm, cm) = $1 fm cm in
      let (fm, cm) = $2 fm cm in
      (fm, cm)
  }
  | { fun fm cm -> (fm, cm) }
;

proc:
  PROC ID LPAR formals RPAR EQOP pre program post
  {
    let lno = !lnum in
    fun fm cm ->
      let fname = $2 in
      if SM.mem fname fm then raise_at lno ("The procedure " ^ fname ^ " is redefined.")
      else
        (* A map of defined variables *)
        let (args, outs) = $4 lno in
        let vm = vm_of_list args in
        (* A map of carry variables *)
        let ym = SM.empty in
        (* A map of ghost variables *)
        let gm = SM.empty in
        let f =
          match $7 cm vm ym gm with
          | None -> btrue
          | Some e -> e in
        let (vm, ym, gm, p) = $8 fm cm vm ym gm in
        let (g, epwss, rpwss) =
          match $9 cm vm ym gm with
          | None -> (btrue, [], [])
          | Some e -> e in
        (SM.add fname { fname = fname;
                        fargs = args;
                        fouts = outs;
                        fvm = vm;
                        fym = ym;
                        fgm = gm;
                        fbody = p;
                        fpre = f;
                        fpost = g;
                        fepwss = epwss;
                        frpwss = rpwss } fm, cm)
  }
  | CONST ID EQOP const
  {
    let lno = !lnum in
    fun fm cm ->
      let v = $2 in
      let n = $4 cm in
      if SM.mem v cm
      then raise_at lno ("Redefined constant: " ^ v)
      else
        let _ = if v = "wordsize" then Options.Std.wordsize := Z.to_int n in
        (fm, SM.add v n cm)
  }
;

pre:
    LBRAC bexp RBRAC                              { fun cm vm ym gm -> Some ($2 cm vm ym gm) }
  |                                               { fun _cm _vm _ym _gm -> None }
;

post:
    LBRAC bexp_prove_with RBRAC                   { fun cm vm ym gm -> Some ($2 cm vm ym gm) }
  |                                               { fun _cm _vm _ym _gm -> None }
;

formals:
    fvars                                         { fun lno -> ($1 lno, []) }
  | fvars SEMICOLON fvars                         { fun lno -> ($1 lno, $3 lno) }
  |                                               { fun _lno -> ([], []) }
;

fvars:
    fvar                                          { fun _lno -> $1 }
  | fvar COMMA fvars
  {
    fun lno ->
      let fvs1 = $1 in
      let fvs2 = $3 lno in
      let duplicates = List.filter (fun v -> mem_var v fvs2) fvs1 in
      if List.length duplicates > 0
      then raise_at lno ("Duplicate argument: " ^ string_of_var (List.hd duplicates))
      else fvs1@fvs2
  }
;

fvar:
    typ ID                                        { [mkvar $2 $1] }
  | ID AT typ                                     { [mkvar $1 $3] }
  | typ ID OROP NUM DOTDOT NUM
  {
    let ty = $1 in
    let prefix = $2 in
    let st = $4 in
    let ed = $6 in
    List.map (fun i -> mkvar (prefix ^ vars_expansion_infix ^ string_of_int i) ty) ((Z.to_int st)--(Z.to_int ed))
  }
  | ID AT typ OROP NUM DOTDOT NUM
  {
    let ty = $3 in
    let prefix = $1 in
    let st = $5 in
    let ed = $7 in
    List.map (fun i -> mkvar (prefix ^ vars_expansion_infix ^ string_of_int i) ty) ((Z.to_int st)--(Z.to_int ed))
  }
;

prog:
  program EOF
  {
    let fm = SM.empty in
    let cm = SM.empty in
    (* A map of defined variables *)
    let vm = SM.empty in
    (* A map of carry variables *)
    let ym = SM.empty in
    (* A map of ghost variables *)
    let gm = SM.empty in
    let (_vm, _ym, _gm, p) = $1 fm cm vm ym gm in
    p
  }
;

program:
  instrs                                          { fun fm cm vm ym gm -> $1 fm cm vm ym gm }
;

instrs:
  instr SEMICOLON instrs
  {
    fun fm cm vm ym gm ->
      let (vm, ym, gm, instr) = $1 fm cm vm ym gm in
      let (vm, ym, gm, instrs) = $3 fm cm vm ym gm in
      (vm, ym, gm, instr@instrs)
  }
  | instr SEMICOLON
  {
    fun fm cm vm ym gm ->
      let (vm, ym, gm, instr) = $1 fm cm vm ym gm in
      (vm, ym, gm, instr)
  }
  | instr SEMICOLON error
  {
    let lno = !lnum in
    fun _fm _cm _vm _ym _gm ->
      raise_at lno ("Unrecognized instruction.")
  }
;

instr:
    MOV lval atomic                               { let lno = !lnum in
                                                    parse_imov_at lno $2 $3 }
  | lhs EQOP atomic                               { let lno = !lnum in
                                                    parse_imov_at lno $1 $3 }
  | SHL lval atomic const                         { let lno = !lnum in
                                                    parse_ishl_at lno $2 $3 $4 }
  | lhs EQOP SHL atomic const                     { let lno = !lnum in
                                                    parse_ishl_at lno $1 $4 $5 }
  | CSHL lval lval atomic atomic const            { let lno = !lnum in
                                                    parse_cshl_at lno $2 $3 $4 $5 $6 }
  | lhs DOT lhs EQOP CSHL atomic atomic const     { let lno = !lnum in
                                                    parse_cshl_at lno $1 $3 $6 $7 $8 }
  | SET lcarry                                    { let lno = !lnum in
                                                    parse_set_at lno $2 }
  | CLEAR lcarry                                  { let lno = !lnum in
                                                    parse_clear_at lno $2 }
  | NONDET lval                                   { let lno = !lnum in
                                                    parse_nondet_at lno $2 }
  | CMOV lval carry atomic atomic                 { let lno = !lnum in
                                                    parse_cmov_at lno $2 $3 $4 $5 }
  | lhs EQOP CMOV carry atomic atomic             { let lno = !lnum in
                                                    parse_cmov_at lno $1 $4 $5 $6 }
  | ADD lval atomic atomic                        { let lno = !lnum in
                                                    parse_add_at lno $2 $3 $4 }
  | lhs EQOP ADD atomic atomic                    { let lno = !lnum in
                                                    parse_add_at lno $1 $4 $5 }
  | ADDS lcarry lval atomic atomic                { let lno = !lnum in
                                                    parse_adds_at lno $2 $3 $4 $5 }
  | lhs DOT lhs EQOP ADDS atomic atomic           { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_adds_at lno one $3 $6 $7 }
  | ADDR lcarry lval atomic atomic                { let lno = !lnum in
                                                    parse_addr_at lno $2 $3 $4 $5 }
  | lhs DOT lhs EQOP ADDR atomic atomic           { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_addr_at lno one $3 $6 $7 }
  | ADC lval atomic atomic carry                  { let lno = !lnum in
                                                    parse_adc_at lno $2 $3 $4 $5 }
  | lhs EQOP ADC atomic atomic carry              { let lno = !lnum in
                                                    parse_adc_at lno $1 $4 $5 $6 }
  | ADCS lcarry lval atomic atomic carry          { let lno = !lnum in
                                                    parse_adcs_at lno $2 $3 $4 $5 $6 }
  | lhs DOT lhs EQOP ADCS atomic atomic carry     { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_adcs_at lno one $3 $6 $7 $8 }
  | ADCR lcarry lval atomic atomic carry          { let lno = !lnum in
                                                    parse_adcr_at lno $2 $3 $4 $5 $6 }
  | lhs DOT lhs EQOP ADCR atomic atomic carry     { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_adcr_at lno one $3 $6 $7 $8 }
  | SUB lval atomic atomic                        { let lno = !lnum in
                                                    parse_sub_at lno $2 $3 $4 }
  | lhs EQOP SUB atomic atomic                    { let lno = !lnum in
                                                    parse_sub_at lno $1 $4 $5 }
  | SUBC lcarry lval atomic atomic                { let lno = !lnum in
                                                    parse_subc_at lno $2 $3 $4 $5 }
  | lhs DOT lhs EQOP SUBC atomic atomic           { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_subc_at lno one $3 $6 $7 }
  | SUBB lcarry lval atomic atomic                { let lno = !lnum in
                                                    parse_subb_at lno $2 $3 $4 $5 }
  | lhs DOT lhs EQOP SUBB atomic atomic           { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_subb_at lno one $3 $6 $7 }
  | SUBR lcarry lval atomic atomic                { let lno = !lnum in
                                                    parse_subr_at lno $2 $3 $4 $5 }
  | lhs DOT lhs EQOP SUBR atomic atomic           { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_subr_at lno one $3 $6 $7 }
  | SBC lval atomic atomic carry                  { let lno = !lnum in
                                                    parse_sbc_at lno $2 $3 $4 $5 }
  | lhs EQOP SBC atomic atomic carry              { let lno = !lnum in
                                                    parse_sbc_at lno $1 $4 $5 $6 }
  | SBCS lcarry lval atomic atomic carry          { let lno = !lnum in
                                                    parse_sbcs_at lno $2 $3 $4 $5 $6 }
  | lhs DOT lhs EQOP SBCS atomic atomic carry     { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_sbcs_at lno one $3 $6 $7 $8 }
  | SBCR lcarry lval atomic atomic carry          { let lno = !lnum in
                                                    parse_sbcr_at lno $2 $3 $4 $5 $6 }
  | lhs DOT lhs EQOP SBCR atomic atomic carry     { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_sbcr_at lno one $3 $6 $7 $8 }
  | SBB lval atomic atomic carry                  { let lno = !lnum in
                                                    parse_sbb_at lno $2 $3 $4 $5 }
  | lhs EQOP SBB atomic atomic carry              { let lno = !lnum in
                                                    parse_sbb_at lno $1 $4 $5 $6 }
  | SBBS lcarry lval atomic atomic carry          { let lno = !lnum in
                                                    parse_sbbs_at lno $2 $3 $4 $5 $6 }
  | lhs DOT lhs EQOP SBBS atomic atomic carry     { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_sbbs_at lno one $3 $6 $7 $8 }
  | SBBR lcarry lval atomic atomic carry          { let lno = !lnum in
                                                    parse_sbbr_at lno $2 $3 $4 $5 $6 }
  | lhs DOT lhs EQOP SBBR atomic atomic carry     { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_sbbr_at lno one $3 $6 $7 $8 }
  | MUL lval atomic atomic                        { let lno = !lnum in
                                                    parse_mul_at lno $2 $3 $4 }
  | lhs EQOP MUL atomic atomic                    { let lno = !lnum in
                                                    parse_mul_at lno $1 $4 $5 }
  | MULS lcarry lval atomic atomic                { let lno = !lnum in
                                                    parse_muls_at lno $2 $3 $4 $5 }
  | lhs DOT lhs EQOP MULS atomic atomic           { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_muls_at lno one $3 $6 $7 }
  | MULR lcarry lval atomic atomic                { let lno = !lnum in
                                                    parse_mulr_at lno $2 $3 $4 $5 }
  | lhs DOT lhs EQOP MULR atomic atomic           { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_mulr_at lno one $3 $6 $7 }
  | MULL lval lval atomic atomic                  { let lno = !lnum in
                                                    parse_mull_at lno $2 $3 $4 $5 }
  | lhs DOT lhs EQOP MULL atomic atomic           { let lno = !lnum in
                                                    parse_mull_at lno $1 $3 $6 $7 }
  | MULJ lval atomic atomic                       { let lno = !lnum in
                                                    parse_mulj_at lno $2 $3 $4 }
  | lhs EQOP MULJ atomic atomic                   { let lno = !lnum in
                                                    parse_mulj_at lno $1 $4 $5 }
  | SPLIT lval lval atomic const                  { let lno = !lnum in
                                                    parse_split_at lno $2 $3 $4 $5 }
  | lhs DOT lhs EQOP SPLIT atomic const           { let lno = !lnum in
                                                    parse_split_at lno $1 $3 $6 $7 }
  | UADD lval atomic atomic                       { let lno = !lnum in
                                                    parse_uadd_at lno $2 $3 $4 }
  | lhs EQOP UADD atomic atomic                   { let lno = !lnum in
                                                    parse_uadd_at lno $1 $4 $5 }
  | UADDS lcarry lval atomic atomic               { let lno = !lnum in
                                                    parse_uadds_at lno $2 $3 $4 $5 }
  | lhs DOT lhs EQOP UADDS atomic atomic          { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_uadds_at lno one $3 $6 $7 }
  | UADDR lcarry lval atomic atomic               { let lno = !lnum in
                                                    parse_uaddr_at lno $2 $3 $4 $5 }
  | lhs DOT lhs EQOP UADDR atomic atomic          { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_uaddr_at lno one $3 $6 $7 }
  | UADC lval atomic atomic carry                 { let lno = !lnum in
                                                    parse_uadc_at lno $2 $3 $4 $5 }
  | lhs EQOP UADC atomic atomic carry             { let lno = !lnum in
                                                    parse_uadc_at lno $1 $4 $5 $6 }
  | UADCS lcarry lval atomic atomic carry         { let lno = !lnum in
                                                    parse_uadcs_at lno $2 $3 $4 $5 $6 }
  | lhs DOT lhs EQOP UADCS atomic atomic carry    { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_uadcs_at lno one $3 $6 $7 $8 }
  | UADCR lcarry lval atomic atomic carry         { let lno = !lnum in
                                                    parse_uadcr_at lno $2 $3 $4 $5 $6 }
  | lhs DOT lhs EQOP UADCR atomic atomic carry    { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_uadcr_at lno one $3 $6 $7 $8 }
  | USUB lval atomic atomic                       { let lno = !lnum in
                                                    parse_usub_at lno $2 $3 $4 }
  | lhs EQOP USUB atomic atomic                   { let lno = !lnum in
                                                    parse_usub_at lno $1 $4 $5 }
  | USUBC lcarry lval atomic atomic               { let lno = !lnum in
                                                    parse_usubc_at lno $2 $3 $4 $5 }
  | lhs DOT lhs EQOP USUBC atomic atomic          { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_usubc_at lno one $3 $6 $7 }
  | USUBB lcarry lval atomic atomic               { let lno = !lnum in
                                                    parse_usubb_at lno $2 $3 $4 $5 }
  | lhs DOT lhs EQOP USUBB atomic atomic          { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_usubb_at lno one $3 $6 $7 }
  | USUBR lcarry lval atomic atomic               { let lno = !lnum in
                                                    parse_usubr_at lno $2 $3 $4 $5 }
  | lhs DOT lhs EQOP USUBR atomic atomic          { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_usubr_at lno one $3 $6 $7 }
  | USBC lval atomic atomic carry                 { let lno = !lnum in
                                                    parse_usbc_at lno $2 $3 $4 $5 }
  | lhs EQOP USBC atomic atomic carry             { let lno = !lnum in
                                                    parse_usbc_at lno $1 $4 $5 $6 }
  | USBCS lcarry lval atomic atomic carry         { let lno = !lnum in
                                                    parse_usbcs_at lno $2 $3 $4 $5 $6 }
  | lhs DOT lhs EQOP USBCS atomic atomic carry    { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_usbcs_at lno one $3 $6 $7 $8 }
  | USBCR lcarry lval atomic atomic carry         { let lno = !lnum in
                                                    parse_usbcr_at lno $2 $3 $4 $5 $6 }
  | lhs DOT lhs EQOP USBCR atomic atomic carry    { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_usbcr_at lno one $3 $6 $7 $8 }
  | USBB lval atomic atomic carry                 { let lno = !lnum in
                                                    parse_usbb_at lno $2 $3 $4 $5 }
  | lhs EQOP USBB atomic atomic carry             { let lno = !lnum in
                                                    parse_usbb_at lno $1 $4 $5 $6 }
  | USBBS lcarry lval atomic atomic carry         { let lno = !lnum in
                                                    parse_usbbs_at lno $2 $3 $4 $5 $6 }
  | lhs DOT lhs EQOP USBBS atomic atomic carry    { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_usbbs_at lno one $3 $6 $7 $8 }
  | USBBR lcarry lval atomic atomic carry         { let lno = !lnum in
                                                    parse_usbbr_at lno $2 $3 $4 $5 $6 }
  | lhs DOT lhs EQOP USBBR atomic atomic carry    { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_usbbr_at lno one $3 $6 $7 $8 }
  | UMUL lval atomic atomic                       { let lno = !lnum in
                                                    parse_umul_at lno $2 $3 $4 }
  | lhs EQOP UMUL atomic atomic                   { let lno = !lnum in
                                                    parse_umul_at lno $1 $4 $5 }
  | UMULS lcarry lval atomic atomic               { let lno = !lnum in
                                                    parse_umuls_at lno $2 $3 $4 $5 }
  | lhs DOT lhs EQOP UMULS atomic atomic          { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_umuls_at lno one $3 $6 $7 }
  | UMULR lcarry lval atomic atomic               { let lno = !lnum in
                                                    parse_umulr_at lno $2 $3 $4 $5 }
  | lhs DOT lhs EQOP UMULR atomic atomic          { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_umulr_at lno one $3 $6 $7 }
  | UMULL lval lval atomic atomic                 { let lno = !lnum in
                                                    parse_umull_at lno $2 $3 $4 $5 }
  | lhs DOT lhs EQOP UMULL atomic atomic          { let lno = !lnum in
                                                    parse_umull_at lno $1 $3 $6 $7 }
  | UMULJ lval atomic atomic                      { let lno = !lnum in
                                                    parse_umulj_at lno $2 $3 $4 }
  | lhs EQOP UMULJ atomic atomic                  { let lno = !lnum in
                                                    parse_umulj_at lno $1 $4 $5 }
  | USPLIT lval lval atomic const                 { let lno = !lnum in
                                                    parse_usplit_at lno $2 $3 $4 $5 }
  | lhs DOT lhs EQOP USPLIT atomic const          { let lno = !lnum in
                                                    parse_usplit_at lno $1 $3 $6 $7 }
  | SADD lval atomic atomic                       { let lno = !lnum in
                                                    parse_sadd_at lno $2 $3 $4 }
  | lhs EQOP SADD atomic atomic                   { let lno = !lnum in
                                                    parse_sadd_at lno $1 $4 $5 }
  | SADDS lcarry lval atomic atomic               { let lno = !lnum in
                                                    parse_sadds_at lno $2 $3 $4 $5 }
  | lhs DOT lhs EQOP SADDS atomic atomic          { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_sadds_at lno one $3 $6 $7 }
  | SADDR lcarry lval atomic atomic               { let lno = !lnum in
                                                    parse_saddr_at lno $2 $3 $4 $5 }
  | lhs DOT lhs EQOP SADDR atomic atomic          { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_saddr_at lno one $3 $6 $7 }
  | SADC lval atomic atomic carry                 { let lno = !lnum in
                                                    parse_sadc_at lno $2 $3 $4 $5 }
  | lhs EQOP SADC atomic atomic carry             { let lno = !lnum in
                                                    parse_sadc_at lno $1 $4 $5 $6 }
  | SADCS lcarry lval atomic atomic carry         { let lno = !lnum in
                                                    parse_sadcs_at lno $2 $3 $4 $5 $6 }
  | lhs DOT lhs EQOP SADCS atomic atomic carry    { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_sadcs_at lno one $3 $6 $7 $8 }
  | SADCR lcarry lval atomic atomic carry         { let lno = !lnum in
                                                    parse_sadcr_at lno $2 $3 $4 $5 $6 }
  | lhs DOT lhs EQOP SADCR atomic atomic carry    { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_sadcr_at lno one $3 $6 $7 $8 }
  | SSUB lval atomic atomic                       { let lno = !lnum in
                                                    parse_ssub_at lno $2 $3 $4 }
  | lhs EQOP SSUB atomic atomic                   { let lno = !lnum in
                                                    parse_ssub_at lno $1 $4 $5 }
  | SSUBC lcarry lval atomic atomic               { let lno = !lnum in
                                                    parse_ssubc_at lno $2 $3 $4 $5 }
  | lhs DOT lhs EQOP SSUBC atomic atomic          { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_ssubc_at lno one $3 $6 $7 }
  | SSUBB lcarry lval atomic atomic               { let lno = !lnum in
                                                    parse_ssubb_at lno $2 $3 $4 $5 }
  | lhs DOT lhs EQOP SSUBB atomic atomic          { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_ssubb_at lno one $3 $6 $7 }
  | SSUBR lcarry lval atomic atomic               { let lno = !lnum in
                                                    parse_ssubr_at lno $2 $3 $4 $5 }
  | lhs DOT lhs EQOP SSUBR atomic atomic          { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_ssubr_at lno one $3 $6 $7 }
  | SSBC lval atomic atomic carry                 { let lno = !lnum in
                                                    parse_ssbc_at lno $2 $3 $4 $5 }
  | lhs EQOP SSBC atomic atomic carry             { let lno = !lnum in
                                                    parse_ssbc_at lno $1 $4 $5 $6 }
  | SSBCS lcarry lval atomic atomic carry         { let lno = !lnum in
                                                    parse_ssbcs_at lno $2 $3 $4 $5 $6 }
  | lhs DOT lhs EQOP SSBCS atomic atomic carry    { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_ssbcs_at lno one $3 $6 $7 $8 }
  | SSBCR lcarry lval atomic atomic carry         { let lno = !lnum in
                                                    parse_ssbcr_at lno $2 $3 $4 $5 $6 }
  | lhs DOT lhs EQOP SSBCR atomic atomic carry    { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_ssbcr_at lno one $3 $6 $7 $8 }
  | SSBB lval atomic atomic carry                 { let lno = !lnum in
                                                    parse_ssbb_at lno $2 $3 $4 $5 }
  | lhs EQOP SSBB atomic atomic carry             { let lno = !lnum in
                                                    parse_ssbb_at lno $1 $4 $5 $6 }
  | SSBBS lcarry lval atomic atomic carry         { let lno = !lnum in
                                                    parse_ssbbs_at lno $2 $3 $4 $5 $6 }
  | lhs DOT lhs EQOP SSBBS atomic atomic carry    { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_ssbbs_at lno one $3 $6 $7 $8 }
  | SSBBR lcarry lval atomic atomic carry         { let lno = !lnum in
                                                    parse_ssbbr_at lno $2 $3 $4 $5 $6 }
  | lhs DOT lhs EQOP SSBBR atomic atomic carry    { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_ssbbr_at lno one $3 $6 $7 $8 }
  | SMUL lval atomic atomic                       { let lno = !lnum in
                                                    parse_smul_at lno $2 $3 $4 }
  | lhs EQOP SMUL atomic atomic                   { let lno = !lnum in
                                                    parse_smul_at lno $1 $4 $5 }
  | SMULS lcarry lval atomic atomic               { let lno = !lnum in
                                                    parse_smuls_at lno $2 $3 $4 $5 }
  | lhs DOT lhs EQOP SMULS atomic atomic          { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_smuls_at lno one $3 $6 $7 }
  | SMULR lcarry lval atomic atomic               { let lno = !lnum in
                                                    parse_smulr_at lno $2 $3 $4 $5 }
  | lhs DOT lhs EQOP SMULR atomic atomic          { let lno = !lnum in
                                                    let one v x y z = $1 v x y z (Some (Tuint 1)) in
                                                    parse_smulr_at lno one $3 $6 $7 }
  | SMULL lval lval atomic atomic                 { let lno = !lnum in
                                                    parse_smull_at lno $2 $3 $4 $5 }
  | lhs DOT lhs EQOP SMULL atomic atomic          { let lno = !lnum in
                                                    parse_smull_at lno $1 $3 $6 $7 }
  | SMULJ lval atomic atomic                      { let lno = !lnum in
                                                    parse_smulj_at lno $2 $3 $4 }
  | lhs EQOP SMULJ atomic atomic                  { let lno = !lnum in
                                                    parse_smulj_at lno $1 $4 $5 }
  | SSPLIT lval lval atomic const                 { let lno = !lnum in
                                                    parse_ssplit_at lno $2 $3 $4 $5 }
  | lhs DOT lhs EQOP SSPLIT atomic const          { let lno = !lnum in
                                                    parse_ssplit_at lno $1 $3 $6 $7 }
  | AND lval atomic atomic                        { let lno = !lnum in
                                                    parse_and_at lno $2 $3 $4 }
  | lhs EQOP AND atomic atomic                    { let lno = !lnum in
                                                    parse_and_at lno $1 $4 $5 }
  | OR lval atomic atomic                         { let lno = !lnum in
                                                    parse_or_at lno $2 $3 $4 }
  | lhs EQOP OR atomic atomic                     { let lno = !lnum in
                                                    parse_or_at lno $1 $4 $5 }
  | XOR lval atomic atomic                        { let lno = !lnum in
                                                    parse_xor_at lno $2 $3 $4 }
  | lhs EQOP XOR atomic atomic                    { let lno = !lnum in
                                                    parse_xor_at lno $1 $4 $5 }
  | NOT lval atomic                               { let lno = !lnum in
                                                    parse_not_at lno $2 $3 }
  | lhs EQOP NOT atomic                           { let lno = !lnum in
                                                    parse_not_at lno $1 $4 }
  | CAST lval_or_lcarry atomic                    { let lno = !lnum in
                                                    parse_cast_at lno $2 $3 }
  | lhs EQOP CAST atomic                          { let lno = !lnum in
                                                    parse_cast_at lno $1 $4 }
  | VPC lval_or_lcarry atomic                     { let lno = !lnum in
                                                    parse_vpc_at lno $2 $3 }
  | lhs EQOP VPC atomic                           { let lno = !lnum in
                                                    parse_vpc_at lno $1 $4 }
  | JOIN lval atomic atomic                       { let lno = !lnum in
                                                    parse_join_at lno $2 $3 $4 }
  | lhs EQOP JOIN atomic atomic                   { let lno = !lnum in
                                                    parse_join_at lno $1 $4 $5 }
  | ASSERT bexp                                   { let lno = !lnum in
                                                    parse_assert_at lno $2 }
  | ASSUME bexp                                   { let lno = !lnum in
                                                    parse_assume_at lno $2 }
  | CUT bexp_prove_with                           { let lno = !lnum in
                                                    parse_cut_at lno $2 }
  | ECUT ebexp_prove_with                         { let lno = !lnum in
                                                    parse_ecut_at lno $2 }
  | RCUT rbexp_prove_with                         { let lno = !lnum in
                                                    parse_rcut_at lno $2 }
  | GHOST gvars COLON bexp                        { let lno = !lnum in
                                                    parse_ghost_at lno $2 $4 }
  /* Extensions */
  | CALL ID LPAR actuals RPAR                     { let lno = !lnum in
                                                    parse_call_at lno $2 $4 }
  | NOP                                           { fun _fm _cm vm ym gm -> (vm, ym, gm, []) }
  /* Errors */
  | MOV error                                     { raise_at !lnum ("Bad mov instruction") }
  | ADD error                                     { raise_at !lnum ("Bad add instruction") }
  | ADDS error                                    { raise_at !lnum ("Bad adds instruction") }
  | ADC error                                     { raise_at !lnum ("Bad adc instruction") }
  | ADCS error                                    { raise_at !lnum ("Bad adcs instruction") }
  | SUB error                                     { raise_at !lnum ("Bad sub instruction") }
  | SUBC error                                    { raise_at !lnum ("Bad subc instruction") }
  | SUBB error                                    { raise_at !lnum ("Bad subb instruction") }
  | SUBR error                                    { raise_at !lnum ("Bad subr instruction") }
  | SBC error                                     { raise_at !lnum ("Bad sbc instruction") }
  | SBCS error                                    { raise_at !lnum ("Bad sbcs instruction") }
  | SBCR error                                    { raise_at !lnum ("Bad sbcr instruction") }
  | SBB error                                     { raise_at !lnum ("Bad sbb instruction") }
  | SBBS error                                    { raise_at !lnum ("Bad sbbs instruction") }
  | SBBR error                                    { raise_at !lnum ("Bad sbbr instruction") }
  | MUL error                                     { raise_at !lnum ("Bad mul instruction") }
  | MULL error                                    { raise_at !lnum ("Bad mull instruction") }
  | SPLIT error                                   { raise_at !lnum ("Bad split instruction") }
  | UADD error                                    { raise_at !lnum ("Bad uadd instruction") }
  | UADDS error                                   { raise_at !lnum ("Bad uadds instruction") }
  | UADC error                                    { raise_at !lnum ("Bad uadc instruction") }
  | UADCS error                                   { raise_at !lnum ("Bad uadcs instruction") }
  | USUB error                                    { raise_at !lnum ("Bad usub instruction") }
  | USUBC error                                   { raise_at !lnum ("Bad usubc instruction") }
  | USUBB error                                   { raise_at !lnum ("Bad usubb instruction") }
  | USUBR error                                   { raise_at !lnum ("Bad usubr instruction") }
  | USBC error                                    { raise_at !lnum ("Bad usbc instruction") }
  | USBCS error                                   { raise_at !lnum ("Bad usbcs instruction") }
  | USBCR error                                   { raise_at !lnum ("Bad usbcr instruction") }
  | USBB error                                    { raise_at !lnum ("Bad usbb instruction") }
  | USBBS error                                   { raise_at !lnum ("Bad usbbs instruction") }
  | USBBR error                                   { raise_at !lnum ("Bad usbbr instruction") }
  | UMUL error                                    { raise_at !lnum ("Bad umul instruction") }
  | UMULL error                                   { raise_at !lnum ("Bad umull instruction") }
  | USPLIT error                                  { raise_at !lnum ("Bad usplit instruction") }
  | SADD error                                    { raise_at !lnum ("Bad sadd instruction") }
  | SADDS error                                   { raise_at !lnum ("Bad sadds instruction") }
  | SADC error                                    { raise_at !lnum ("Bad sadc instruction") }
  | SADCS error                                   { raise_at !lnum ("Bad sadcs instruction") }
  | SSUB error                                    { raise_at !lnum ("Bad ssub instruction") }
  | SSUBC error                                   { raise_at !lnum ("Bad ssubc instruction") }
  | SSUBB error                                   { raise_at !lnum ("Bad ssubb instruction") }
  | SSUBR error                                   { raise_at !lnum ("Bad ssubr instruction") }
  | SSBC error                                    { raise_at !lnum ("Bad ssbc instruction") }
  | SSBCS error                                   { raise_at !lnum ("Bad ssbcs instruction") }
  | SSBCR error                                   { raise_at !lnum ("Bad ssbcr instruction") }
  | SSBB error                                    { raise_at !lnum ("Bad ssbb instruction") }
  | SSBBS error                                   { raise_at !lnum ("Bad ssbbs instruction") }
  | SSBBR error                                   { raise_at !lnum ("Bad ssbbr instruction") }
  | SMUL error                                    { raise_at !lnum ("Bad smul instruction") }
  | SMULL error                                   { raise_at !lnum ("Bad smull instruction") }
  | SSPLIT error                                  { raise_at !lnum ("Bad ssplit instruction") }
  | SHL error                                     { raise_at !lnum ("Bad shl instruction") }
  | CSHL error                                    { raise_at !lnum ("Bad cshl instruction") }
  | NONDET error                                  { raise_at !lnum ("Bad nondet instruction") }
  | CALL ID LPAR error                            { raise_at !lnum (("Invalid actuals in the call instruction: " ^ $2)) }
  | CALL error                                    { raise_at !lnum ("Bad call instruction") }
;

ebexp_prove_with:
  ebexp                                           { fun cm vm ym gm -> ($1 cm vm ym gm, []) }
| ebexp PROVE WITH prove_with_specs               { fun cm vm ym gm -> ($1 cm vm ym gm, $4) }
;

rbexp_prove_with:
  rbexp                                           { fun cm vm ym gm -> ($1 cm vm ym gm, []) }
| rbexp PROVE WITH prove_with_specs               { fun cm vm ym gm -> ($1 cm vm ym gm, $4) }
;

bexp_prove_with:
    TRUE                                          { fun _cm _vm _ym _gm -> (btrue, [], []) }
  | ebexp_prove_with VBAR rbexp_prove_with        { fun cm vm ym gm ->
                                                      let (e, epwss) = $1 cm vm ym gm in
                                                      let (r, rpwss) = $3 cm vm ym gm in
                                                      ((e, r), epwss, rpwss) }
  | ebexp_prove_with VBAR error                   { let lno = !lnum in
                                                    fun cm vm ym gm ->
                                                      raise_at lno ("Invalid range predicate after '" ^ string_of_ebexp (fst ($1 cm vm ym gm)) ^ "'.")
                                                  }
  | ebexp_prove_with error                        { raise_at !lnum ("Please use '&&' to separate algebraic predicates and range predicates.") }
;

prove_with_specs:
    prove_with_spec                               { [$1] }
  | prove_with_spec COMMA prove_with_specs        { $1::$3 }
;

prove_with_spec:
    PRECONDITION                                  { Precondition }
  | ALL CUTS                                      { AllCuts }
  | ALL ASSUMES                                   { AllAssumes }
  | ALL GHOSTS                                    { AllGhosts }
;

bexp:
    TRUE                                          { fun _cm _vm _ym _gm -> btrue }
  | ebexp VBAR rbexp                              { fun cm vm ym gm -> ($1 cm vm ym gm, $3 cm vm ym gm) }
  | ebexp VBAR error                              { let lno = !lnum in
                                                    fun cm vm ym gm ->
                                                      raise_at lno ("Invalid range predicate after '" ^ string_of_ebexp ($1 cm vm ym gm) ^ "'.")
                                                  }
  | ebexp error                                   { raise_at !lnum ("Please use '&&' to separate algebraic predicates and range predicates.") }
;

ebexp:
  ebexp_atomic LANDOP ebexp                       { fun cm vm ym gm -> Eand($1 cm vm ym gm, $3 cm vm ym gm) }
  | ebexp_atomic                                  { fun cm vm ym gm -> $1 cm vm ym gm }
;

ebexp_atomic:
    TRUE                                          { fun _cm _vm _ym _gm -> Etrue }
  | EQ eexp eexp_no_unary                         { fun cm vm ym gm -> Eeq ($2 cm vm ym gm, $3 cm vm ym gm) }
  | EQMOD eexp eexp_no_unary eexp_no_unary        { fun cm vm ym gm -> Eeqmod ($2 cm vm ym gm, $3 cm vm ym gm, $4 cm vm ym gm) }
  | AND ebexp_atomic_without_eqmod ebexp_atomic   { fun cm vm ym gm -> Eand ($2 cm vm ym gm, $3 cm vm ym gm) }
  | LPAR ebexp RPAR                               { fun cm vm ym gm -> $2 cm vm ym gm }
  | eexp EQOP eexp eq_suffix                      { fun cm vm ym gm ->
                                                      match $4 cm vm ym gm with
                                                      | None -> Eeq ($1 cm vm ym gm, $3 cm vm ym gm)
                                                      | Some m -> Eeqmod ($1 cm vm ym gm, $3 cm vm ym gm, m)
                                                  }
  | AND LSQUARE ebexps RSQUARE                    { fun cm vm ym gm -> eands ($3 cm vm ym gm) }
  | LANDOP LSQUARE ebexps RSQUARE                 { fun cm vm ym gm -> eands ($3 cm vm ym gm) }
  /* Errors */
/*  | ID error                                      { raise_at !lnum ("Invalid algebraic predicate after " ^ $1 ^ ".") }*/
;

ebexp_atomic_without_eqmod:
    TRUE                                          { fun _cm _vm _ym _gm -> Etrue }
  | EQ eexp eexp_no_unary                         { fun cm vm ym gm -> Eeq ($2 cm vm ym gm, $3 cm vm ym gm) }
  | EQMOD eexp eexp_no_unary eexp_no_unary        { fun cm vm ym gm -> Eeqmod ($2 cm vm ym gm, $3 cm vm ym gm, $4 cm vm ym gm) }
  | AND ebexp_atomic_without_eqmod ebexp_atomic_without_eqmod
                                                  { fun cm vm ym gm -> Eand ($2 cm vm ym gm, $3 cm vm ym gm) }
  | LPAR ebexp RPAR                               { fun cm vm ym gm -> $2 cm vm ym gm }
  | eexp EQOP eexp                                { fun cm vm ym gm -> Eeq ($1 cm vm ym gm, $3 cm vm ym gm) }
  | AND LSQUARE ebexps RSQUARE                    { fun cm vm ym gm -> eands ($3 cm vm ym gm) }
  | LANDOP LSQUARE ebexps RSQUARE                 { fun cm vm ym gm -> eands ($3 cm vm ym gm) }
  /* Errors */
/*  | ID error                                      { raise_at !lnum ("Invalid algebraic predicate after " ^ $1 ^ ".") }*/
;

eq_suffix:
                                                  { fun _cm _vm _ym _gm -> None }
  | LPAR MOD eexp RPAR                            { fun cm vm ym gm -> Some ($3 cm vm ym gm) }
;

ebexps:
    ebexp COMMA ebexps                            { fun cm vm ym gm -> ($1 cm vm ym gm)::($3 cm vm ym gm) }
  | ebexp                                         { fun cm vm ym gm -> [$1 cm vm ym gm] }
  | ebexp error                                   { let lno = !lnum in
                                                    fun cm vm ym gm ->
                                                      raise_at lno ("Failed to parse the algebra predicate after '" ^ string_of_ebexp ($1 cm vm ym gm) ^ "'.")
                                                  }
;

cmpop_infix:
    ULTOP                                         { Rult }
  | ULEOP                                         { Rule }
  | UGTOP                                         { Rugt }
  | UGEOP                                         { Ruge }
  | SLTOP                                         { Rslt }
  | SLEOP                                         { Rsle }
  | SGTOP                                         { Rsgt }
  | SGEOP                                         { Rsge }
;

eexp:
    defined_var                                   { fun cm vm ym gm -> Evar ($1 cm vm ym gm) }
  | simple_const                                  { fun cm _vm _ym _gm -> Econst ($1 cm) }
  | LPAR eexp RPAR                                { fun cm vm ym gm -> $2 cm vm ym gm }
  /* Extensions */
  | NEG eexp                                      { fun cm vm ym gm -> eneg ($2 cm vm ym gm) }
  | ADD eexp eexp_no_unary                        { fun cm vm ym gm -> eadd ($2 cm vm ym gm) ($3 cm vm ym gm) }
  | SUB eexp eexp_no_unary                        { fun cm vm ym gm -> esub ($2 cm vm ym gm) ($3 cm vm ym gm) }
  | MUL eexp eexp_no_unary                        { fun cm vm ym gm -> emul ($2 cm vm ym gm) ($3 cm vm ym gm) }
  | SQ eexp                                       { fun cm vm ym gm -> esq ($2 cm vm ym gm) }
  | ADD LSQUARE eexps RSQUARE                     { fun cm vm ym gm -> eadds ($3 cm vm ym gm) }
  | MUL LSQUARE eexps RSQUARE                     { fun cm vm ym gm -> emuls ($3 cm vm ym gm) }
  | SUBOP eexp %prec UMINUS                       { fun cm vm ym gm -> eneg ($2 cm vm ym gm) }
  | eexp ADDOP eexp                               { fun cm vm ym gm -> eadd ($1 cm vm ym gm) ($3 cm vm ym gm) }
  | eexp SUBOP eexp                               { fun cm vm ym gm -> esub ($1 cm vm ym gm) ($3 cm vm ym gm) }
  | eexp MULOP eexp                               { fun cm vm ym gm -> emul ($1 cm vm ym gm) ($3 cm vm ym gm) }
  | eexp POWOP const                              { fun cm vm ym gm ->
                                                      let e = $1 cm vm ym gm in
                                                      let i = Z.to_int ($3 cm) in
                                                      match e with
                                                      | Econst n -> Econst (Z.pow n i)
                                                      | _ ->
                                                        let rec helper j =
                                                          if j = 0 then Econst Z.one
                                                          else if j = 1 then e
                                                          else if j = 2 then esq e
                                                          else emul (helper (j - 1)) e in
                                                        helper i
                                                  }
  | ULIMBS const LSQUARE eexps RSQUARE            { fun cm vm ym gm -> limbs (Z.to_int ($2 cm)) ($4 cm vm ym gm) }
;

eexp_no_unary:
    defined_var                                   { fun cm vm ym gm -> Evar ($1 cm vm ym gm) }
  | simple_const                                  { fun cm _vm _ym _gm -> Econst ($1 cm) }
  | LPAR eexp RPAR                                { fun cm vm ym gm -> $2 cm vm ym gm }
  /* Extensions */
  | NEG eexp                                      { fun cm vm ym gm -> eneg ($2 cm vm ym gm) }
  | ADD eexp eexp_no_unary                        { fun cm vm ym gm -> eadd ($2 cm vm ym gm) ($3 cm vm ym gm) }
  | SUB eexp eexp_no_unary                        { fun cm vm ym gm -> esub ($2 cm vm ym gm) ($3 cm vm ym gm) }
  | MUL eexp eexp_no_unary                        { fun cm vm ym gm -> emul ($2 cm vm ym gm) ($3 cm vm ym gm) }
  | SQ eexp                                       { fun cm vm ym gm -> esq ($2 cm vm ym gm) }
  | ADD LSQUARE eexps RSQUARE                     { fun cm vm ym gm -> eadds ($3 cm vm ym gm) }
  | MUL LSQUARE eexps RSQUARE                     { fun cm vm ym gm -> emuls ($3 cm vm ym gm) }
  | eexp_no_unary ADDOP eexp                      { fun cm vm ym gm -> eadd ($1 cm vm ym gm) ($3 cm vm ym gm) }
  | eexp_no_unary SUBOP eexp                      { fun cm vm ym gm -> esub ($1 cm vm ym gm) ($3 cm vm ym gm) }
  | eexp_no_unary MULOP eexp                      { fun cm vm ym gm -> emul ($1 cm vm ym gm) ($3 cm vm ym gm) }
  | eexp_no_unary POWOP const                     { fun cm vm ym gm ->
                                                      let e = $1 cm vm ym gm in
                                                      let i = Z.to_int ($3 cm) in
                                                      match e with
                                                      | Econst n -> Econst (Z.pow n i)
                                                      | _ ->
                                                        let rec helper j =
                                                          if j = 0 then Econst Z.one
                                                          else if j = 1 then e
                                                          else if j = 2 then esq e
                                                          else emul (helper (j - 1)) e in
                                                        helper i
                                                  }
  | ULIMBS const LSQUARE eexps RSQUARE            { fun cm vm ym gm -> limbs (Z.to_int ($2 cm)) ($4 cm vm ym gm) }
;

eexps:
    eexp COMMA eexps                              { fun cm vm ym gm -> ($1 cm vm ym gm)::($3 cm vm ym gm) }
  | eexp                                          { fun cm vm ym gm -> [$1 cm vm ym gm] }
  | VARS var_expansion                            { fun cm vm ym gm -> List.map (fun v -> Evar v) ($2 cm vm ym gm) }
;

rbexp:
    rbexp_and LOROP rbexp                         { fun cm vm ym gm -> Ror ($1 cm vm ym gm, $3 cm vm ym gm) }
  | rbexp_and                                     { fun cm vm ym gm -> $1 cm vm ym gm }
;

rbexp_and:
    rbexp_atomic LANDOP rbexp_and                 { fun cm vm ym gm -> Rand ($1 cm vm ym gm, $3 cm vm ym gm) }
  | rbexp_atomic                                  { fun cm vm ym gm -> $1 cm vm ym gm }
;

rbexp_atomic:
    TRUE                                          { fun _cm _vm _ym _gm -> Rtrue }
  | EQ rexp rexp                                  { let lno = !lnum in
                                                    fun cm vm ym gm ->
                                                      let e1 = $2 cm vm ym gm in
                                                      let e2 = $3 cm vm ym gm in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else Req (w1, e1, e2)
                                                  }
  | NEG rbexp_atomic                              { fun cm vm ym gm -> Rneg ($2 cm vm ym gm) }
  | NEGOP rbexp_atomic                            { fun cm vm ym gm -> Rneg ($2 cm vm ym gm) }
  | AND rbexp_atomic_without_eqmod rbexp_atomic
                                                  { fun cm vm ym gm -> Rand ($2 cm vm ym gm, $3 cm vm ym gm) }
  | OR rbexp_atomic_without_eqmod rbexp_atomic    { fun cm vm ym gm -> Ror ($2 cm vm ym gm, $3 cm vm ym gm) }
  | LPAR rbexp RPAR                               { fun cm vm ym gm -> $2 cm vm ym gm }
  /* Extensions */
  | rexp EQOP rexp req_suffix                     { let lno = !lnum in
                                                    fun cm vm ym gm ->
                                                      let e1 = $1 cm vm ym gm in
                                                      let e2 = $3 cm vm ym gm in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        match $4 cm vm ym gm with
                                                        | None -> Req (w1, e1, e2)
                                                        | Some m ->
                                                          let wm = size_of_rexp m in
                                                          begin
                                                            if w1 != wm then raise_at lno ("Widths of range expressions mismatch: "
                                                                                           ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                           ^ string_of_rexp m ^ " (width " ^ string_of_int wm ^ ")")
                                                            else
                                                              reqmod w1 e1 e2 m
                                                         end
                                                  }
  | rexp cmpop_infix rexp                         { let lno = !lnum in
                                                    fun cm vm ym gm ->
                                                      let e1 = $1 cm vm ym gm in
                                                      let e2 = $3 cm vm ym gm in
                                                      let op = $2 in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else Rcmp(w1, op, e1, e2)
                                                  }
  | cmpop_prefix rexp rexp                        { let lno = !lnum in
                                                    fun cm vm ym gm ->
                                                      let e1 = $2 cm vm ym gm in
                                                      let e2 = $3 cm vm ym gm in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else Rcmp (w1, $1, e1, e2)
                                                  }
  | AND LSQUARE rbexps RSQUARE                    { fun cm vm ym gm -> rands ($3 cm vm ym gm) }
  | LANDOP LSQUARE rbexps RSQUARE                 { fun cm vm ym gm -> rands ($3 cm vm ym gm) }
  | OR LSQUARE rbexps RSQUARE                     { fun cm vm ym gm -> rors ($3 cm vm ym gm) }
  | LOROP LSQUARE rbexps RSQUARE                  { fun cm vm ym gm -> rors ($3 cm vm ym gm) }
  | EQMOD rexp rexp rexp                          { let lno = !lnum in
                                                    fun cm vm ym gm ->
                                                      let e1 = $2 cm vm ym gm in
                                                      let e2 = $3 cm vm ym gm in
                                                      let m = $4 cm vm ym gm in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      let wm = size_of_rexp m in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else if w1 != wm then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp m ^ " (width " ^ string_of_int wm ^ ")")
                                                      else
                                                        reqmod w1 e1 e2 m
                                                  }
;

rbexp_atomic_without_eqmod:
    TRUE                                          { fun _cm _vm _ym _gm -> Rtrue }
  | EQ rexp rexp                                  { let lno = !lnum in
                                                    fun cm vm ym gm ->
                                                      let e1 = $2 cm vm ym gm in
                                                      let e2 = $3 cm vm ym gm in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else Req (w1, e1, e2)
                                                  }
  | NEG rbexp_atomic_without_eqmod                { fun cm vm ym gm -> Rneg ($2 cm vm ym gm) }
  | AND rbexp_atomic_without_eqmod rbexp_atomic_without_eqmod
                                                  { fun cm vm ym gm -> Rand ($2 cm vm ym gm, $3 cm vm ym gm) }
  | OR rbexp_atomic_without_eqmod rbexp_atomic_without_eqmod
                                                  { fun cm vm ym gm -> Ror ($2 cm vm ym gm, $3 cm vm ym gm) }
  | LPAR rbexp RPAR                               { fun cm vm ym gm -> $2 cm vm ym gm }
  /* Extensions */
  | rexp EQOP rexp                                { let lno = !lnum in
                                                    fun cm vm ym gm ->
                                                      let e1 = $1 cm vm ym gm in
                                                      let e2 = $3 cm vm ym gm in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else Req (w1, e1, e2)
                                                  }
  | rexp cmpop_infix rexp                         { let lno = !lnum in
                                                    fun cm vm ym gm ->
                                                      let e1 = $1 cm vm ym gm in
                                                      let e2 = $3 cm vm ym gm in
                                                      let op = $2 in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else Rcmp(w1, op, e1, e2) }
  | cmpop_prefix rexp rexp                        { let lno = !lnum in
                                                    fun cm vm ym gm ->
                                                      let e1 = $2 cm vm ym gm in
                                                      let e2 = $3 cm vm ym gm in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else Rcmp (w1, $1, e1, e2) }
  | AND LSQUARE rbexps RSQUARE                    { fun cm vm ym gm -> rands ($3 cm vm ym gm) }
  | OR LSQUARE rbexps RSQUARE                     { fun cm vm ym gm -> rors ($3 cm vm ym gm) }
  | EQMOD rexp rexp rexp                          { let lno = !lnum in
                                                    fun cm vm ym gm ->
                                                      let e1 = $2 cm vm ym gm in
                                                      let e2 = $3 cm vm ym gm in
                                                      let m = $4 cm vm ym gm in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      let wm = size_of_rexp m in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else if w1 != wm then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp m ^ " (width " ^ string_of_int wm ^ ")")
                                                      else
                                                        reqmod w1 e1 e2 m
                                                  }
;

req_suffix:
                                                  { fun _cm _vm _ym _gm -> None }
  | LPAR MOD rexp RPAR                            { fun cm vm ym gm -> Some ($3 cm vm ym gm) }
;

cmpop_prefix:
    ULT                                           { Rult }
  | ULE                                           { Rule }
  | UGT                                           { Rugt }
  | UGE                                           { Ruge }
  | SLT                                           { Rslt }
  | SLE                                           { Rsle }
  | SGT                                           { Rsgt }
  | SGE                                           { Rsge }
;

rbexps:
    rbexp COMMA rbexps                            { fun cm vm ym gm -> ($1 cm vm ym gm)::($3 cm vm ym gm) }
  | rbexp                                         { fun cm vm ym gm -> [$1 cm vm ym gm] }
  | rbexp COMMA error                             { raise_at !lnum ("Invalid range predicates.") }
  | rbexp error                                   { raise_at !lnum ("A ',' is used to separate range predicates") }
;

rexp:
    defined_var                                   { fun cm vm ym gm -> Rvar ($1 cm vm ym gm) }
  | CONST const const                             { fun cm _vm _ym _gm ->
                                                      let w = Z.to_int ($2 cm) in
                                                      let n = $3 cm in
                                                      Rconst (w, n) }
  | const AT const                                { fun cm _vm _ym _gm ->
                                                      let w = Z.to_int ($3 cm) in
                                                      let n = $1 cm in
                                                      Rconst (w, n) }
  | UEXT rexp const                               { fun cm vm ym gm ->
                                                      let e = $2 cm vm ym gm in
                                                      let i = Z.to_int ($3 cm) in
                                                      let w = size_of_rexp e in
                                                      Ruext (w, e, i) }
  | SEXT rexp const                               { fun cm vm ym gm ->
                                                      let e = $2 cm vm ym gm in
                                                      let i = Z.to_int ($3 cm) in
                                                      let w = size_of_rexp e in
                                                      Rsext (w, e, i) }
  | LPAR rexp RPAR                                { fun cm vm ym gm -> $2 cm vm ym gm }
  /* Extensions */
  | NEG rexp                                      { fun cm vm ym gm ->
                                                      let e = $2 cm vm ym gm in
                                                      let w = size_of_rexp e in
                                                      Runop (w, Rnegb, e) }
  | NEGOP rexp                                    { fun cm vm ym gm ->
                                                      let e = $2 cm vm ym gm in
                                                      let w = size_of_rexp e in
                                                      Runop (w, Rnegb, e) }
  | NOT rexp                                      { fun cm vm ym gm ->
                                                      let e = $2 cm vm ym gm in
                                                      let w = size_of_rexp e in
                                                      Runop (w, Rnotb, e) }
  | NOTOP rexp                                    { fun cm vm ym gm ->
                                                      let e = $2 cm vm ym gm in
                                                      let w = size_of_rexp e in
                                                      Runop (w, Rnotb, e) }
  | ADD rexp rexp                                 { let lno = !lnum in
                                                    fun cm vm ym gm ->
                                                      let e1 = $2 cm vm ym gm in
                                                      let e2 = $3 cm vm ym gm in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                       radd w1 e1 e2 }
  | SUB rexp rexp                                 { let lno = !lnum in
                                                    fun cm vm ym gm ->
                                                      let e1 = $2 cm vm ym gm in
                                                      let e2 = $3 cm vm ym gm in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                       rsub w1 e1 e2 }
  | MUL rexp rexp                                 { let lno = !lnum in
                                                    fun cm vm ym gm ->
                                                      let e1 = $2 cm vm ym gm in
                                                      let e2 = $3 cm vm ym gm in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                       rmul w1 e1 e2 }
  | SQ rexp                                       { fun cm vm ym gm ->
                                                      let e = $2 cm vm ym gm in
                                                      rsq (size_of_rexp e) e }
  | UMOD rexp rexp                                { let lno = !lnum in
                                                    fun cm vm ym gm ->
                                                      let e1 = $2 cm vm ym gm in
                                                      let e2 = $3 cm vm ym gm in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                       rumod w1 e1 e2 }
  | SREM rexp rexp                                { let lno = !lnum in
                                                    fun cm vm ym gm ->
                                                      let e1 = $2 cm vm ym gm in
                                                      let e2 = $3 cm vm ym gm in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                       rsrem w1 e1 e2 }
  | SMOD rexp rexp                                { let lno = !lnum in
                                                    fun cm vm ym gm ->
                                                      let e1 = $2 cm vm ym gm in
                                                      let e2 = $3 cm vm ym gm in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                       rsmod w1 e1 e2 }
  | AND rexp rexp                                 { let lno = !lnum in
                                                    fun cm vm ym gm ->
                                                      let e1 = $2 cm vm ym gm in
                                                      let e2 = $3 cm vm ym gm in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        Rbinop (w1, Randb, e1, e2) }
  | OR rexp rexp                                  { let lno = !lnum in
                                                    fun cm vm ym gm ->
                                                      let e1 = $2 cm vm ym gm in
                                                      let e2 = $3 cm vm ym gm in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        Rbinop (w1, Rorb, e1, e2) }
  | XOR rexp rexp                                 { let lno = !lnum in
                                                    fun cm vm ym gm ->
                                                      let e1 = $2 cm vm ym gm in
                                                      let e2 = $3 cm vm ym gm in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        Rbinop (w1, Rxorb, e1, e2) }
  | ADD LSQUARE rexps RSQUARE                     { let lno = !lnum in
                                                    fun cm vm ym gm ->
                                                      let es = $3 cm vm ym gm in
                                                      match es with
                                                      | [] -> raise_at lno ("No range expression is passed to add.")
                                                      | hd::_tl -> radds (size_of_rexp hd) es }
  | MUL LSQUARE rexps RSQUARE                     { let lno = !lnum in
                                                    fun cm vm ym gm ->
                                                      let es = $3 cm vm ym gm in
                                                      match es with
                                                      | [] -> raise_at lno ("No range expression is passed to mul.")
                                                      | hd::_tl -> rmuls (size_of_rexp hd) es }
  | ULIMBS const LSQUARE rexps RSQUARE            { fun cm vm ym gm ->
                                                      let w = Z.to_int ($2 cm) in
                                                      let es = $4 cm vm ym gm in
                                                      let tw = List.fold_left (fun w1 w2 -> max w1 w2)
                                                                              0
                                                                              (List.mapi (fun i e -> size_of_rexp e + i * w) es) in
                                                      let es = List.map (fun e ->
                                                                          let ew = size_of_rexp e in
                                                                          Ruext (ew, e, tw - ew)) es in
                                                      let rec helper i es =
                                                        match es with
                                                        | [] -> Rconst (tw, Z.zero)
                                                        | hd::[] -> rmul tw hd (Rconst (tw, Z.pow z_two (i*w)))
                                                        | hd::tl -> radd tw (rmul tw hd (Rconst (tw, Z.pow z_two (i*w)))) (helper (i+1) tl) in
                                                      let res = helper 0 es in
                                                      res }
  | SLIMBS const LSQUARE rexps RSQUARE            { fun cm vm ym gm ->
                                                      let w = Z.to_int ($2 cm) in
                                                      let es = $4 cm vm ym gm in
                                                      let tw = List.fold_left (fun w1 w2 -> max w1 w2)
                                                                              0
                                                                              (List.mapi (fun i e -> size_of_rexp e + i * w) es) in
                                                      let last = List.length es - 1 in
                                                      let es = List.mapi (fun i e ->
                                                                            let ew = size_of_rexp e in
                                                                            if i == last then Rsext (ew, e, tw - ew)
                                                                            else Ruext (ew, e, tw - ew)) es in
                                                      let rec helper i es =
                                                        match es with
                                                        | [] -> Rconst (tw, Z.zero)
                                                        | hd::[] -> rmul tw hd (Rconst (tw, Z.pow z_two (i*w)))
                                                        | hd::tl -> radd tw (rmul tw hd (Rconst (tw, Z.pow z_two (i*w)))) (helper (i+1) tl) in
                                                      let res = helper 0 es in
                                                      res }
  | rexp ADDOP rexp                               { let lno = !lnum in
                                                    fun cm vm ym gm ->
                                                      let e1 = $1 cm vm ym gm in
                                                      let e2 = $3 cm vm ym gm in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        Rbinop (w1, Radd, e1, e2) }
  | rexp SUBOP rexp                               { let lno = !lnum in
                                                    fun cm vm ym gm ->
                                                      let e1 = $1 cm vm ym gm in
                                                      let e2 = $3 cm vm ym gm in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        Rbinop (w1, Rsub, e1, e2) }
  | rexp MULOP rexp                               { let lno = !lnum in
                                                    fun cm vm ym gm ->
                                                      let e1 = $1 cm vm ym gm in
                                                      let e2 = $3 cm vm ym gm in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        Rbinop (w1, Rmul, e1, e2) }
  | rexp ANDOP rexp                               { let lno = !lnum in
                                                    fun cm vm ym gm ->
                                                      let e1 = $1 cm vm ym gm in
                                                      let e2 = $3 cm vm ym gm in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        Rbinop (w1, Randb, e1, e2) }
  | rexp OROP rexp                                { let lno = !lnum in
                                                    fun cm vm ym gm ->
                                                      let e1 = $1 cm vm ym gm in
                                                      let e2 = $3 cm vm ym gm in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        Rbinop (w1, Rorb, e1, e2) }
  | rexp XOROP rexp                               { let lno = !lnum in
                                                    fun cm vm ym gm ->
                                                      let e1 = $1 cm vm ym gm in
                                                      let e2 = $3 cm vm ym gm in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        Rbinop (w1, Rxorb, e1, e2) }
  /* Errors */
  | CONST const error                             { raise_at !lnum "Please specify the bit-width of a constant in range predicates" }
  | const error                                   { raise_at !lnum "Please specify the bit-width of a constant in range predicates" }
;

rexps:
    rexp COMMA rexps
  {
    let lno = !lnum in
    fun cm vm ym gm ->
      let e = $1 cm vm ym gm in
      let es = $3 cm vm ym gm in
      if List.length es > 0 && size_of_rexp e != size_of_rexp (List.hd es) then
        raise_at lno ("Widths of range expressions mismatch: "
                      ^ string_of_rexp e ^ " (width " ^ string_of_int (size_of_rexp e) ^ ")"
                      ^ ", "
                      ^ string_of_rexp (List.hd es) ^ " (width " ^ string_of_int (size_of_rexp (List.hd es)) ^ ")")
      else
        e::es
  }
  | rexp                                          { fun cm vm ym gm -> [$1 cm vm ym gm] }
  | VARS var_expansion                            { fun cm vm ym gm -> List.map (fun v -> Rvar v) ($2 cm vm ym gm) }
;

lval:
    ID                                            {
                                                    let lno = !lnum in
                                                    fun _cm vm ym gm ty_opt ->
                                                      if SM.mem $1 gm then raise_at lno ("The program variable " ^ $1 ^ " has been defined as a ghost variable.")
                                                      else
                                                        match ty_opt with
                                                        | None -> raise_at lno ("Failed to determine the type of " ^ $1)
                                                        | Some ty ->
                                                           let v = mkvar $1 ty in
                                                           (* It is possible that the lval is actually a bit variable *)
                                                           if var_is_bit v then (SM.add $1 v vm, SM.add $1 v ym, gm, v)
                                                           else (SM.add $1 v vm, SM.remove $1 ym, gm, v)
                                                  }
  | ID AT typ                                     {
                                                    let lno = !lnum in
                                                    fun _cm vm ym gm _ty_opt ->
                                                      if SM.mem $1 gm then raise_at lno ("The program variable " ^ $1 ^ " has been defined as a ghost variable.")
                                                      else
                                                        let v = mkvar $1 $3 in
                                                        if var_is_bit v then (SM.add $1 v vm, SM.add $1 v ym, gm, v)
                                                        else (SM.add $1 v vm, SM.remove $1 ym, gm, v)
                                                  }
  | typ ID                                        {
                                                    let lno = !lnum in
                                                    fun _cm vm ym gm _ty_opt ->
                                                      if SM.mem $2 gm then raise_at lno ("The program variable " ^ $2 ^ " has been defined as a ghost variable.")
                                                      else
                                                        let v = mkvar $2 $1 in
                                                        if var_is_bit v then (SM.add $2 v vm, SM.add $2 v ym, gm, v)
                                                        else (SM.add $2 v vm, SM.remove $2 ym, gm, v)
                                                  }
  | ID AT error                                   { raise_at !lnum ("Invalid type of variable " ^ $1) }
;

lcarry:
    ID                                            {
                                                    let lno = !lnum in
                                                    fun _cm vm ym gm ->
                                                      if SM.mem $1 gm then raise_at lno ("The carry variable " ^ $1 ^ " has been defined as a ghost variable.")
                                                      else
                                                        let v = mkvar $1 bit_t in
                                                        (SM.add $1 v vm, SM.add $1 v ym, gm, v)
                                                  }
  | ID AT typ                                     {
                                                    let lno = !lnum in
                                                    fun _cm vm ym gm ->
                                                      if SM.mem $1 gm then raise_at lno ("The carry variable " ^ $1 ^ " has been defined as a ghost variable.")
                                                      else if $3 = bit_t then
                                                        let v = mkvar $1 bit_t in
                                                        (SM.add $1 v vm, SM.add $1 v ym, gm, v)
                                                      else
                                                        raise_at lno ("The type of a carry variable should be \"" ^ string_of_typ bit_t ^ "\"")
                                                  }
  | typ ID                                        {
                                                    let lno = !lnum in
                                                    fun _cm vm ym gm ->
                                                      if SM.mem $2 gm then raise_at lno ("The carry variable " ^ $2 ^ " has been defined as a ghost variable.")
                                                      else if $1 = bit_t then
                                                        let v = mkvar $2 bit_t in
                                                        (SM.add $2 v vm, SM.add $2 v ym, gm, v)
                                                      else
                                                        raise_at lno ("The type of a carry variable should be \"" ^ string_of_typ bit_t ^ "\"")
                                                  }
;

lval_or_lcarry:
    ID                                            {
                                                    let lno = !lnum in
                                                    fun _cm vm ym gm ty_opt ->
                                                      if SM.mem $1 gm then raise_at lno ("The program variable " ^ $1 ^ " has been defined as a ghost variable.")
                                                      else
                                                        match ty_opt with
                                                        | None -> raise_at lno ("Failed to determine the type of " ^ $1)
                                                        | Some ty ->
                                                           let v = mkvar $1 ty in
                                                           if var_is_bit v then (SM.add $1 v vm, SM.add $1 v ym, gm, v)
                                                           else (SM.add $1 v vm, SM.remove $1 ym, gm, v)
                                                  }
  | ID AT typ                                     {
                                                    let lno = !lnum in
                                                    fun _cm vm ym gm _ty_opt ->
                                                      if SM.mem $1 gm then raise_at lno ("The program variable " ^ $1 ^ " has been defined as a ghost variable.")
                                                      else
                                                        let v = mkvar $1 $3 in
                                                        if var_is_bit v then (SM.add $1 v vm, SM.add $1 v ym, gm, v)
                                                        else (SM.add $1 v vm, SM.remove $1 ym, gm, v)
                                                  }
  | typ ID                                        {
                                                    let lno = !lnum in
                                                    fun _cm vm ym gm _ty_opt ->
                                                      if SM.mem $2 gm then raise_at lno ("The program variable " ^ $2 ^ " has been defined as a ghost variable.")
                                                      else
                                                        let v = mkvar $2 $1 in
                                                        if var_is_bit v then (SM.add $2 v vm, SM.add $2 v ym, gm, v)
                                                        else (SM.add $2 v vm, SM.remove $2 ym, gm, v)
                                                  }
  | ID AT error                                   { raise_at !lnum ("Invalid type of variable " ^ $1) }
;

lhs:
    ID                                            {
                                                    let lno = !lnum in
                                                    fun _cm vm ym gm ty_opt ->
                                                      if SM.mem $1 gm then raise_at lno ("The program variable " ^ $1 ^ " has been defined as a ghost variable.")
                                                      else
                                                        match ty_opt with
                                                        | None -> raise_at lno ("Failed to determine the type of " ^ $1)
                                                        | Some ty ->
                                                           let v = mkvar $1 ty in
                                                           if var_is_bit v then (SM.add $1 v vm, SM.add $1 v ym, gm, v)
                                                           else (SM.add $1 v vm, SM.remove $1 ym, gm, v)
                                                  }
  | ID AT typ                                     {
                                                    let lno = !lnum in
                                                    fun _cm vm ym gm _ty_opt ->
                                                      if SM.mem $1 gm then raise_at lno ("The program variable " ^ $1 ^ " has been defined as a ghost variable.")
                                                      else
                                                        let v = mkvar $1 $3 in
                                                        if var_is_bit v then (SM.add $1 v vm, SM.add $1 v ym, gm, v)
                                                        else (SM.add $1 v vm, SM.remove $1 ym, gm, v)
                                                  }
  | typ ID                                        {
                                                    let lno = !lnum in
                                                    fun _cm vm ym gm _ty_opt ->
                                                      if SM.mem $2 gm then raise_at lno ("The program variable " ^ $2 ^ " has been defined as a ghost variable.")
                                                      else
                                                        let v = mkvar $2 $1 in
                                                        if var_is_bit v then (SM.add $2 v vm, SM.add $2 v ym, gm, v)
                                                        else (SM.add $2 v vm, SM.remove $2 ym, gm, v)
                                                  }
  | ID AT error                                   { raise_at !lnum ("Invalid type of variable " ^ $1) }
;

actuals:
    actual_atomics                                { fun tys cm vm ym gm -> $1 tys cm vm ym gm }
  |                                               { fun _tys _cm _vm _ym _gm -> [] }
;

actual_atomics:
    actual_atomic                                 { fun tys cm vm ym gm ->
                                                      let (_tys, vs) = $1 tys cm vm ym gm in
                                                      vs
                                                  }
  | actual_atomic COMMA actual_atomics            { fun tys cm vm ym gm ->
                                                      let (tys, vs) = $1 tys cm vm ym gm in
                                                      vs@($3 tys cm vm ym gm)
                                                  }
;

/* We don't check if the actual variables are defined or not because they may just be variable names of procedure outputs. */
actual_atomic:
    const                                         { let lno = !lnum in
                                                    fun tys cm vm ym gm ->
                                                      match tys with
                                                      | (ty::argtys, outtys) ->
                                                         ((argtys, outtys), [parse_typed_const lno ty $1 cm vm ym gm])
                                                      | ([], _ty::_) -> raise_at lno ("The corresponding formal parameter is an output variable. "
                                                                                     ^ "The actual parameter must be a variable.")
                                                      | _ -> raise_at lno ("The number of actual parameters does not match the number of formal parameters.") }
  | const AT typ                                  { let lno = !lnum in
                                                    fun tys cm vm ym gm ->
                                                      match tys with
                                                      | (ty::argtys, outtys) ->
                                                         if ty = $3 then ((argtys, outtys), [parse_typed_const lno $3 $1 cm vm ym gm])
                                                         else raise_at lno ("The specified type is not compatible to the type of the corresponding formal parameter")
                                                      | ([], _ty::_) -> raise_at lno ("The corresponding formal parameter is an output variable. "
                                                                                     ^ "The actual parameter must be a variable.")
                                                      | _ -> raise_at lno ("The number of actual parameters does not match the number of formal parameters.") }
  | typ const                                     { let lno = !lnum in
                                                    fun tys cm vm ym gm ->
                                                      match tys with
                                                      | (ty::argtys, outtys) ->
                                                         if ty = $1 then ((argtys, outtys), [parse_typed_const lno $1 $2 cm vm ym gm])
                                                         else raise_at lno ("The specified type is not compatible to the type of the corresponding formal parameter")
                                                      | ([], _ty::_) -> raise_at lno ("The corresponding formal parameter is an output variable. "
                                                                                     ^ "The actual parameter must be a variable.")
                                                      | _ -> raise_at lno ("The number of actual parameters does not match the number of formal parameters.") }
  | ID                                            { let lno = !lnum in
                                                    fun tys _cm vm _ym _gm ->
                                                      match tys with
                                                      | (ty::argtys, outtys) ->
                                                         (try
                                                            let v = SM.find $1 vm in
                                                            if v.vtyp = ty then ((argtys, outtys), [Avar v])
                                                            else raise_at lno ("The variable type of "
                                                                               ^ $1
                                                                               ^ " is not compatible to the type of the corresponding formal parameter")
                                                          with Not_found ->
                                                            raise_at lno ("Failed to determine the type of " ^ $1)
                                                         )
                                                      | ([], ty::outtys) -> (([], outtys), [Avar (mkvar $1 ty)])
                                                      | _ -> raise_at lno ("The number of actual parameters does not match the number of formal parameters.")
                                                  }
  | ID OROP NUM DOTDOT NUM                        { let lno = !lnum in
                                                      fun tys _cm vm _ym _gm ->
                                                      let prefix = $1 in
                                                      let st = $3 in
                                                      let ed = $5 in
                                                      let (tys, vars_rev) =
                                                        List.fold_left (fun (tys, vars_rev) i ->
                                                                         let vname = prefix ^ vars_expansion_infix ^ string_of_int i in
                                                                         match tys with
                                                                         | (ty::argtys, outtys) ->
                                                                            (try
                                                                               let v = SM.find vname vm in
                                                                               if v.vtyp = ty then ((argtys, outtys), (Avar v)::vars_rev)
                                                                               else raise_at lno ("The variable type of "
                                                                                                  ^ vname
                                                                                                  ^ " is not compatible to the type of the corresponding formal parameter")
                                                                             with Not_found ->
                                                                               raise_at lno ("Failed to determine the type of " ^ vname)
                                                                            )
                                                                         | ([], ty::outtys) -> (([], outtys), (Avar (mkvar vname ty))::vars_rev)
                                                                         | _ -> raise_at lno ("The number of actual parameters does not match the number of formal parameters.")
                                                                       )
                                                                       (tys, [])
                                                                       ((Z.to_int st)--(Z.to_int ed)) in
                                                      (tys, List.rev vars_rev)
                                                  }
;

atomic:
    const AT typ                                  { parse_typed_const !lnum $3 $1 }
  | typ const                                     { parse_typed_const !lnum $1 $2 }
  | defined_var                                   { fun cm vm ym gm -> Avar ($1 cm vm ym gm) }
  /*| LPAR atomic RPAR                              { fun cm vm ym gm -> $2 cm vm ym gm } source of reduce/reduce conflict*/
;

var_expansion:
  ID OROP NUM DOTDOT NUM
  {
    let lno = !lnum in
    fun _cm vm _ym gm ->
    let prefix = $1 in
    let st = $3 in
    let ed = $5 in
    let res = List.map
                (fun i ->
                  let vname = prefix ^ vars_expansion_infix ^ string_of_int i in
                  try
                    SM.find vname vm
                  with Not_found ->
                    raise_at lno ("Failed to determine the type of " ^ vname)
                ) ((Z.to_int st)--(Z.to_int ed)) in
    let _ = List.iter (fun v -> if not (SM.mem v.vname vm) && not (SM.mem v.vname gm) then raise_at lno ("Variable " ^ string_of_var v ^ " is not defined.")) res in
    res
  }
;

defined_var:
  ID
  {
    let lno = !lnum in
    fun _cm vm _ym gm ->
      try
        SM.find $1 vm
      with Not_found ->
        begin
          try
           SM.find $1 gm
         with Not_found ->
           raise_at lno ("Variable " ^ $1 ^ " is undefined.")
        end
  }
  | ID AT typ
  {
    let lno = !lnum in
    fun _cm vm _ym gm ->
      let v =
        try
          SM.find $1 vm
        with Not_found ->
          begin
            try
              SM.find $1 gm
            with Not_found ->
              raise_at lno ("Variable " ^ $1 ^ " is undefined.")
          end in
      if v.vtyp = $3 then v
      else raise_at lno ("The type of variable " ^ $1 ^ " is inconsistent")
  }
  | typ ID
  {
    let lno = !lnum in
    fun _cm vm _ym gm ->
      let v =
        try
          SM.find $2 vm
        with Not_found ->
          begin
            try
              SM.find $2 gm
            with Not_found ->
              raise_at lno ("Variable " ^ $2 ^ " is undefined.")
          end in
      if v.vtyp = $1 then v
      else raise_at lno ("The type of variable " ^ $2 ^ " is inconsistent")
  }
;

gvars:
  gvar                                            { fun cm vm ym gm -> VS.singleton ($1 cm vm ym gm) }
| gvar COMMA gvars                                { fun cm vm ym gm -> VS.add ($1 cm vm ym gm) ($3 cm vm ym gm) }
| gvar error                                      {
                                                    let lno = !lnum in
                                                    fun _cm _vm _ym _gm ->
                                                      raise_at lno ("A comma is used to separate ghost variables.")
                                                  }
| error                                           {
                                                    let lno = !lnum in
                                                    fun _cm _vm _ym _gm ->
                                                      raise_at lno ("Invalid ghost variable.")
                                                  }
;

gvar:
  typ ID                                          {
                                                    let lno = !lnum in
                                                    fun _cm vm _ym gm ->
                                                      let ty = $1 in
                                                      let vname = $2 in
                                                      if SM.mem vname vm then raise_at lno ("The ghost variable " ^ vname ^ " has been defined as a program variable.")
                                                      else if SM.mem vname gm then raise_at lno ("The ghost variable " ^ vname ^ " has been defined previously.")
                                                      else mkvar vname ty
                                                  }
| ID AT typ                                       {
                                                    let lno = !lnum in
                                                    fun _cm vm _ym gm ->
                                                      let ty = $3 in
                                                      let vname = $1 in
                                                      if SM.mem vname vm then raise_at lno ("The ghost variable " ^ vname ^ " has been defined as a program variable.")
                                                      else if SM.mem vname gm then raise_at lno ("The ghost variable " ^ vname ^ " has been defined previously.")
                                                      else mkvar vname ty
                                                  }
;

const:
    simple_const                                  { fun cm -> $1 cm }
  | LPAR complex_const RPAR                       { fun cm -> ($2 cm) }
/*  | ID error                                      { raise_at !lnum ("A constant is expected but '" ^ $1 ^ "' is encountered.") }*/
;

simple_const:
    NUM                                           { fun _cm -> $1 }
  | DEREFOP ID                                    { let lno = !lnum in
                                                    fun cm ->
                                                      try
                                                        SM.find $2 cm
                                                      with Not_found ->
                                                        raise_at lno ("Undefined constant: " ^ $2) }
;

complex_const:
    const                                         { fun cm -> $1 cm }
  | SUBOP complex_const %prec UMINUS              { fun cm -> Z.neg ($2 cm) }
  | complex_const ADDOP complex_const             { fun cm -> Z.add ($1 cm) ($3 cm) }
  | complex_const SUBOP complex_const             { fun cm -> Z.sub ($1 cm) ($3 cm) }
  | complex_const MULOP complex_const             { fun cm -> Z.mul ($1 cm) ($3 cm) }
  | complex_const POWOP complex_const             { fun cm -> Z.pow ($1 cm) (Z.to_int ($3 cm)) }
;

carry:
    atomic                                        { let lno = !lnum in
                                                    fun cm vm ym gm ->
                                                      let a = $1 cm vm ym gm in
                                                      match a with
                                                      | Avar v -> if SM.mem v.vname ym then a
                                                                  else raise_at lno ("Carry variable " ^ string_of_var v ^ " is not defined.")
                                                      | Aconst (ty, n) -> if ty = bit_t && check_const_range bit_t n = None then a
                                                                          else raise_at lno ("A carry must be of type \"bit\" and have value 0 or 1")
                                                  }
;

typ:
    UINT                                          { if $1 > 0 then uint_t $1
                                                    else raise_at !lnum ("The big-with must be positive") }
  | SINT                                          { if $1 > 0 then int_t $1
                                                    else raise_at !lnum ("The big-with must be positive") }
  | BIT                                           { bit_t }
;
