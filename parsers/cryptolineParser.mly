%{

(*
 * Use raise_at to raise an exception if the line number can be determined.
 * Raise ParseError otherwise.
 *)


  open Ast.Cryptoline
  open Typecheck.Std
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
      fbody : lined_program;
      fpre : bexp;
      fpost : bexp_prove_with }

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
  let typ_map f ty =
    match ty with
    | Tuint w -> Tuint (f w)
    | Tsint w -> Tsint (f w)

  (*
  let check_at lno reasons =
    match chain_reasons reasons with
    | None -> ()
    | Some r -> raise_at lno r
   *)

  type typ_vec = typ * int
  (*
  type lv_token_t = Z.t SM.t -> var SM.t -> var SM.t -> var SM.t -> typ option -> (var SM.t * var SM.t * var SM.t * var)
   *)
(*   type atom_token_t = Z.t SM.t -> var SM.t -> var SM.t -> var SM.t -> atom *)

  type lv_prim_t = {
    lvtyphint: typ option;
    lvname: string;
  }

  type vec_prim_t = {
    vectyphint: typ_vec option;
    vecname: string;
  }

  type avar_prim_t = {
    atmtyphint: typ option;
    atmname: string;
  }

  type aconst_prim_t = {
    atmtyphint: typ option;
    (* FIXME *)
    atmvalue: Z.t SM.t -> Z.t;
  }

  type lval_t = [
    | `LVPLAIN of lv_prim_t
  ]

  type lval_vec_t = [
    | `LVVLIT of (lval_t list)
    | `LVVECT of vec_prim_t
  ]

  type atom_t = [
    | `AVAR of avar_prim_t
    | `ACONST of aconst_prim_t
  ]

  type atom_vec_t = [
    | `AVLIT of (atom_t list)
    | `AVECT of vec_prim_t
  ]

  let num_two = Z.of_int 2

  let num_of_bit b =
    if b = '0'
    then Z.zero
    else if b = '1'
         then Z.one
         else failwith ("Unrecognized bit " ^ Char.escaped b)

  let num_of_bits bits =
    let rec helper res bits =
      match bits with
      | [] -> res
      | hd::tl -> helper (Z.add (Z.mul res num_two) (num_of_bit hd)) tl in
    helper Z.zero bits

  let remove_keys_from_map (names: string list) (vm: 'b SM.t) = List.fold_left (fun map k -> SM.remove k map) vm names

  let parse_typed_const lno ty n_token =
    fun cm _vm _ym _gm ->
    let n = n_token cm in
    let size = size_of_typ ty in
    (* Normalize the number: convert to non-negative integer *)
    let n =
      match ty with
      | Tuint _ -> if Z.lt n Z.zero
                   then raise_at lno ("The number " ^ Z.to_string n ^ " is expected to be non-negative")
                   else n
      | Tsint w -> if Z.lt n Z.zero
                   then let n = Z.add n (Z.pow num_two w) in
                        if Z.lt n Z.zero
                        then raise_at lno ("The number " ^ Z.to_string n ^ " does not fit into " ^ string_of_typ ty)
                        else n
                   else n in
    (* Normalize the number: convert to bit vector *)
    let bits = List.of_seq (String.to_seq (Z.format ("%0" ^ string_of_int size ^ "b") n)) in
    let _ = if List.length bits > size then raise_at lno ("The number " ^ Z.to_string n ^ " does not fit into " ^ string_of_typ ty) in
    (* Normalize the number: convert back to integer *)
    let n =
      match ty with
      | Tuint _ -> num_of_bits bits
      | Tsint w ->
         if w = 0 then Z.zero
         else
           begin
             match bits with
             | [] -> Z.zero
             | sign::rest -> let n = num_of_bits rest in
                             if sign = '1' then Z.sub n (Z.pow num_two (w - 1))
                             else n
           end
    in
    Aconst (ty, n)

  let resolve_var_with lno (`AVAR {atmtyphint; atmname}) _cm vm _ym gm =
    let v =
      try
        SM.find atmname vm
      with Not_found ->
        begin
          try
            SM.find atmname gm
          with Not_found ->
            raise_at lno ("Variable " ^ atmname ^ " is undefined.")
        end in
    let _ = match atmtyphint with
    | None -> ()
    | Some hinted_ty ->
        if v.vtyp <> hinted_ty then
          raise_at lno ("The type of variable " ^ atmname ^ " is inconsistent")
        else () in
    v

  let resolve_atom_with ?typ lno (a: atom_t) cm vm ym gm =
    match a with
    (* FIXME *)
    | `ACONST c -> (match c.atmtyphint, typ with
                    | Some ty, _
                      | None, Some ty -> parse_typed_const lno ty c.atmvalue cm vm ym gm
                    | _, _ -> raise_at lno ("Failed to determine the type of constant"))
    | `AVAR v -> Avar (resolve_var_with lno (`AVAR v) cm vm ym gm)

  let resolve_lv_with lno {lvname; lvtyphint} _cm vm ym gm ty_opt =
    if SM.mem lvname gm then
      raise_at lno ("The program variable " ^ lvname ^
                    " has been defined as a ghost variable.")
    else
      let ty = (match (ty_opt, lvtyphint) with
      | (None, None) ->
         raise_at lno ("Failed to determine the type of " ^ lvname)
      | (None, Some hinted_ty) -> hinted_ty
      | (Some determined_ty, None) -> determined_ty
      | (Some determined_ty, Some hinted_ty) ->
        if determined_ty <> hinted_ty then
          raise_at lno (Printf.sprintf "The specified type %s is not equal to the determined type %s."
                          (string_of_typ hinted_ty)
                          (string_of_typ determined_ty))
        else determined_ty) in
      let v = mkvar lvname ty in
      (* It is possible that the lval is actually a bit variable *)
      (if var_is_bit v then
        (SM.add lvname v vm, SM.add lvname v ym, gm, v)
      else
        (SM.add lvname v vm, SM.remove lvname ym, gm, v))

  let resolve_lcarry_with lno {lvname; lvtyphint} _cm vm ym gm =
    if SM.mem lvname gm then
      raise_at lno ("The carry variable " ^ lvname ^ " has been defined as a ghost variable.")
    else
      let _ = (match lvtyphint with
      | None -> ()
      | Some hinted_ty ->
        if hinted_ty <> bit_t then
          raise_at lno ("The type of a carry variable should be \""
                        ^ string_of_typ bit_t
                        ^ "\", specified "
                        ^ string_of_typ hinted_ty)
        else ()) in
      let v = mkvar lvname bit_t in
      (SM.add lvname v vm, SM.add lvname v ym, gm, v)

  let resolve_lv_or_lcarry_with lno {lvname; lvtyphint} _cm vm ym gm =
    if SM.mem lvname gm then
      raise_at lno ("The program variable " ^ lvname ^
                    " has been defined as a ghost variable.")
    else
      match lvtyphint with
      | None -> raise_at lno ("Failed to determine the type of " ^ lvname)
      | Some ty ->
         let v = mkvar lvname ty in
         if var_is_bit v then (SM.add lvname v vm, SM.add lvname v ym, gm, v)
         else (SM.add lvname v vm, SM.remove lvname ym, gm, v)

  let parse_imov_at lno dest src =
    fun _fm cm vm vxm ym gm ->
      let a = resolve_atom_with lno src cm vm ym gm in
      let ty = typ_of_atom a in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Imov (v, a)])

  let parse_ishl_at lno dest src num =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src cm vm ym gm in
      let ty = typ_of_atom a1 in
      let a2 = resolve_atom_with ~typ:ty lno num cm vm ym gm in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      let _ =
        match a2 with
        | Aconst (_, z) ->
           let w = size_of_var v in
           if Z.leq z Z.zero || Z.geq z (Z.of_int w) then
             raise_at lno ("An shl instruction expects an offset between 0 and the " ^ string_of_int w ^ " (both excluding)."
                         ^ " An offset not in the range is found: " ^ Z.to_string z ^ ".")
        | _ -> ()
      in
      (vm, vxm, ym, gm, [lno, Ishl (v, a1, a2)])

  let parse_ishls_at lno lost dest src num =
    fun _fm cm vm vxm ym gm ->
      let a = resolve_atom_with lno src cm vm ym gm in
      let ty = typ_of_atom a in
      let n = num cm in
      let (vm, ym, gm, l) = resolve_lv_with lno lost cm vm ym gm (Some (typ_to_size ty (Z.to_int n))) in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      let _ = 
        let w = size_of_var v in
        if Z.leq n Z.zero || Z.geq n (Z.of_int w) then
          raise_at lno ("An shls instruction expects an offset between 0 and the " ^ string_of_int w ^ " (both excluding)."
                        ^ " An offset not in the range is found: " ^ Z.to_string n ^ ".")
      in
      (vm, vxm, ym, gm, [lno, Ishls (l, v, a, n)])

  let parse_ishr_at lno dest src num =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src cm vm ym gm in
      let ty = typ_of_atom a1 in
      let a2 = resolve_atom_with ~typ:ty lno num cm vm ym gm in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      let _ =
        match a2 with
        | Aconst (_, z) ->
           let w = size_of_var v in
           if Z.leq z Z.zero || Z.geq z (Z.of_int w) then
             raise_at lno ("An shr instruction expects an offset between 0 and the " ^ string_of_int w ^ " (both excluding)."
                         ^ " An offset not in the range is found: " ^ Z.to_string z ^ ".")
        | _ -> ()
      in
      (vm, vxm, ym, gm, [lno, Ishr (v, a1, a2)])

  let parse_ishrs_at lno dest lost src num =
    fun _fm cm vm vxm ym gm ->
      let a = resolve_atom_with lno src cm vm ym gm in
      let ty = typ_of_atom a in
      let n = num cm in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      let (vm, ym, gm, l) = resolve_lv_with lno lost cm vm ym gm (Some (Tuint (Z.to_int n))) in
      let _ = 
        let w = size_of_var v in
        if Z.leq n Z.zero || Z.geq n (Z.of_int w) then
          raise_at lno ("An shrs instruction expects an offset between 0 and the " ^ string_of_int w ^ " (both excluding)."
                        ^ " An offset not in the range is found: " ^ Z.to_string n ^ ".")
      in
      (vm, vxm, ym, gm, [lno, Ishrs (v, l, a, n)])

  let parse_isar_at lno dest src num =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src cm vm ym gm in
      let ty = typ_of_atom a1 in
      let a2 = resolve_atom_with ~typ:ty lno num cm vm ym gm in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      let _ =
        match a2 with
        | Aconst (_, z) ->
           let w = size_of_var v in
           if Z.leq z Z.zero || Z.geq z (Z.of_int w) then
             raise_at lno ("An sar instruction expects an offset between 0 and the " ^ string_of_int w ^ " (both excluding)."
                         ^ " An offset not in the range is found: " ^ Z.to_string z ^ ".")
        | _ -> ()
      in
      (vm, vxm, ym, gm, [lno, Isar (v, a1, a2)])

  let parse_isars_at lno dest lost src num =
    fun _fm cm vm vxm ym gm ->
      let a = resolve_atom_with lno src cm vm ym gm in
      let ty = typ_of_atom a in
      let n = num cm in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      let (vm, ym, gm, l) = resolve_lv_with lno lost cm vm ym gm (Some (Tuint (Z.to_int n))) in
      let _ = 
        let w = size_of_var v in
        if Z.leq n Z.zero || Z.geq n (Z.of_int w) then
          raise_at lno ("An sars instruction expects an offset between 0 and the " ^ string_of_int w ^ " (both excluding)."
                        ^ " An offset not in the range is found: " ^ Z.to_string n ^ ".")
      in
      (vm, vxm, ym, gm, [lno, Isars (v, l, a, n)])

  let parse_cshl_at lno destH destL src1 src2 num =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let ty = typ_of_atom a1 in
      let n = num cm in
      let (vm, ym, gm, vh) =
        resolve_lv_with lno destH cm vm ym gm (Some ty) in
      let (vm, ym, gm, vl) =
        resolve_lv_with lno destL cm vm ym gm (Some (to_uint ty)) in
      (vm, vxm, ym, gm, [lno, Icshl (vh, vl, a1, a2, n)])

  let parse_cshr_at lno destH destL src1 src2 num =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let ty = typ_of_atom a1 in
      let n = num cm in
      let (vm, ym, gm, vh) = resolve_lv_with lno destH cm vm ym gm (Some ty) in
      let (vm, ym, gm, vl) = resolve_lv_with lno destL cm vm ym gm (Some (to_uint ty)) in
      (vm, vxm, ym, gm, [lno, Icshr (vh, vl, a1, a2, n)])

  let parse_cshrs_at lno destH destL lostL src1 src2 num =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let ty = typ_of_atom a1 in
      let n = num cm in
      let (vm, ym, gm, vh) = resolve_lv_with lno destH cm vm ym gm (Some ty) in
      let (vm, ym, gm, vl) = resolve_lv_with lno destL cm vm ym gm (Some (to_uint ty)) in
      let (vm, ym, gm, l) = resolve_lv_with lno lostL cm vm ym gm (Some (Tuint (Z.to_int n))) in
      (vm, vxm, ym, gm, [lno, Icshrs (vh, vl, l, a1, a2, n)])

  let parse_rol_at lno dest src num =
    fun _fm cm vm vxm ym gm ->
      let a = resolve_atom_with lno src cm vm ym gm in
      let ty = typ_of_atom a in
      let n = num cm in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Irol (v, a, n)])

  let parse_ror_at lno dest src num =
    fun _fm cm vm vxm ym gm ->
      let a = resolve_atom_with lno src cm vm ym gm in
      let ty = typ_of_atom a in
      let n = num cm in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Iror (v, a, n)])

  let parse_set_at lno dest =
    fun _fm cm vm vxm ym gm ->
      let (vm, ym, gm, c) = resolve_lcarry_with lno dest cm vm ym gm in
      (vm, vxm, ym, gm, [lno, Imov (c, Aconst (bit_t, Z.one)) ])

  let parse_clear_at lno dest =
    fun _fm cm vm vxm ym gm ->
      let (vm, ym, gm, c) = resolve_lcarry_with lno dest cm vm ym gm in
      (vm, vxm, ym, gm, [lno, Imov (c, Aconst (bit_t, Z.zero))])

  let parse_nondet_at lno dest =
    fun _fm cm vm vxm ym gm ->
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm None in
      (vm, vxm, ym, gm, [lno, Inondet v])

  let parse_cmov_at lno dest carry src1 src2 =
    fun _fm cm vm vxm ym gm ->
      let c = resolve_atom_with lno carry cm vm ym gm in
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let ty = typ_of_atom a1 in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Icmov (v, c, a1, a2)])

  let parse_add_at lno dest src1 src2 =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let ty = typ_of_atom a1 in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Iadd (v, a1, a2)])

  let parse_adds_at lno flag dest src1 src2 =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let ty = typ_of_atom a1 in
      let (vm, ym, gm, c) = resolve_lcarry_with lno flag cm vm ym gm in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Iadds (c, v, a1, a2)])

  let parse_adc_at lno dest src1 src2 (carry : atom_t) =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let y = resolve_atom_with lno carry cm vm ym gm in
      let ty = typ_of_atom a1 in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Iadc (v, a1, a2, y)])

  let parse_adcs_at lno flag dest src1 src2 carry =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let y = resolve_atom_with lno carry cm vm ym gm in
      let ty = typ_of_atom a1 in
      let (vm, ym, gm, c) = resolve_lcarry_with lno flag cm vm ym gm in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Iadcs (c, v, a1, a2, y)])

  let parse_sub_at lno dest src1 src2 =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let ty = typ_of_atom a1 in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Isub (v, a1, a2)])

  let parse_subc_at lno flag dest src1 src2 =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let ty = typ_of_atom a1 in
      let (vm, ym, gm, c) = resolve_lcarry_with lno flag cm vm ym gm in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Isubc (c, v, a1, a2)])

  let parse_subb_at lno flag dest src1 src2 =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let ty = typ_of_atom a1 in
      let (vm, ym, gm, c) = resolve_lcarry_with lno flag cm vm ym gm in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Isubb (c, v, a1, a2)])

  let parse_sbc_at lno dest src1 src2 carry =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let y = resolve_atom_with lno carry cm vm ym gm in
      let ty = typ_of_atom a1 in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Isbc (v, a1, a2, y)])

  let parse_sbcs_at lno flag dest src1 src2 carry =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let y = resolve_atom_with lno carry cm vm ym gm in
      let ty = typ_of_atom a1 in
      let (vm, ym, gm, c) = resolve_lcarry_with lno flag cm vm ym gm in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Isbcs (c, v, a1, a2, y)])

  let parse_sbb_at lno dest src1 src2 carry =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let y = resolve_atom_with lno carry cm vm ym gm in
      let ty = typ_of_atom a1 in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Isbb (v, a1, a2, y)])

  let parse_sbbs_at lno flag dest src1 src2 carry =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let y = resolve_atom_with lno carry cm vm ym gm in
      let ty = typ_of_atom a1 in
      let (vm, ym, gm, c) = resolve_lcarry_with lno flag cm vm ym gm in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Isbbs (c, v, a1, a2, y)])

  let parse_mul_at lno dest src1 src2 =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let ty = typ_of_atom a1 in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Imul (v, a1, a2)])

  let parse_muls_at lno flag dest src1 src2 =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let ty = typ_of_atom a1 in
      let (vm, ym, gm, c) = resolve_lcarry_with lno flag cm vm ym gm in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Imuls (c, v, a1, a2)])

  let parse_mull_at lno destH destL src1 src2 =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let ty = typ_of_atom a1 in
      let (vm, ym, gm, vh) = resolve_lv_with lno destH cm vm ym gm (Some ty) in
      let (vm, ym, gm, vl) =
        resolve_lv_with lno destL cm vm ym gm (Some (to_uint ty)) in
      (vm, vxm, ym, gm, [lno, Imull (vh, vl, a1, a2)])

  let parse_mulj_at lno dest src1 src2 =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let ty = typ_of_atom a1 in
      let (vm, ym, gm, v) =
        resolve_lv_with lno dest cm vm ym gm (Some (to_double_size ty)) in
      (vm, vxm, ym, gm, [lno, Imulj (v, a1, a2)])

  let parse_split_at lno destH destL src num =
    fun _fm cm vm vxm ym gm ->
      let a = resolve_atom_with lno src cm vm ym gm in
      let n = num cm in
      let ty = typ_of_atom a in
      let (vm, ym, gm, vh) = resolve_lv_with lno destH cm vm ym gm (Some ty) in
      let (vm, ym, gm, vl) =
        resolve_lv_with lno destL cm vm ym gm (Some (to_uint ty)) in
      let _ =
        let w = size_of_var vl in
        if Z.leq n Z.zero || Z.geq n (Z.of_int w) then
          raise_at lno ("The position of a split should be in between 0 and " ^ string_of_int w ^ " (both excluded)")
      in
      (vm, vxm, ym, gm, [lno, Isplit (vh, vl, a, n)])

  let parse_spl_at lno destH destL src num =
    fun _fm cm vm vxm ym gm ->
      let a = resolve_atom_with lno src cm vm ym gm in
      let n = num cm in
      let ty = typ_of_atom a in
      let w = size_of_typ ty in
      let (vm, ym, gm, vh) = resolve_lv_with lno destH cm vm ym gm (Some (typ_to_size ty (w - Z.to_int n))) in
      let (vm, ym, gm, vl) = resolve_lv_with lno destL cm vm ym gm (Some (Tuint (Z.to_int n))) in
      let _ =
        if Z.leq n Z.zero || Z.geq n (Z.of_int w) then
          raise_at lno ("The position of a spl should be in between 0 and " ^ string_of_int w ^ " (both excluded)")
      in
      (vm, vxm, ym, gm, [lno, Ispl (vh, vl, a, n)])

  let parse_uadd_at lno dest src1 src2 =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let ty = typ_to_unsigned (typ_of_atom a1) in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Iadd (v, a1, a2)])

  let parse_uadds_at lno flag dest src1 src2 =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let ty = typ_to_unsigned (typ_of_atom a1) in
      let (vm, ym, gm, c) = resolve_lcarry_with lno flag cm vm ym gm in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Iadds (c, v, a1, a2)])

  let parse_uadc_at lno dest src1 src2 carry =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let y = resolve_atom_with lno carry cm vm ym gm in
      let ty = typ_to_unsigned (typ_of_atom a1) in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Iadc (v, a1, a2, y)])

  let parse_uadcs_at lno flag dest src1 src2 carry =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let y = resolve_atom_with lno carry cm vm ym gm in
      let ty = typ_to_unsigned (typ_of_atom a1) in
      let (vm, ym, gm, c) = resolve_lcarry_with lno flag cm vm ym gm in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Iadcs (c, v, a1, a2, y)])

  let parse_usub_at lno dest src1 src2 =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let ty = typ_to_unsigned (typ_of_atom a1) in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Isub (v, a1, a2)])

  let parse_usubc_at lno flag dest src1 src2 =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let ty = typ_to_unsigned (typ_of_atom a1) in
      let (vm, ym, gm, c) = resolve_lcarry_with lno flag cm vm ym gm in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Isubc (c, v, a1, a2)])

  let parse_usubb_at lno flag dest src1 src2 =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let ty = typ_to_unsigned (typ_of_atom a1) in
      let (vm, ym, gm, c) = resolve_lcarry_with lno flag cm vm ym gm in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Isubb (c, v, a1, a2)])

  let parse_usbc_at lno dest src1 src2 carry =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let y = resolve_atom_with lno carry cm vm ym gm in
      let ty = typ_to_unsigned (typ_of_atom a1) in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Isbc (v, a1, a2, y)])

  let parse_usbcs_at lno flag dest src1 src2 carry =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let y = resolve_atom_with lno carry cm vm ym gm in
      let ty = typ_to_unsigned (typ_of_atom a1) in
      let (vm, ym, gm, c) = resolve_lcarry_with lno flag cm vm ym gm in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Isbcs (c, v, a1, a2, y)])

  let parse_usbb_at lno dest src1 src2 carry =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let y = resolve_atom_with lno carry cm vm ym gm in
      let ty = typ_to_unsigned (typ_of_atom a1) in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Isbb (v, a1, a2, y)])

  let parse_usbbs_at lno flag dest src1 src2 carry =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let y = resolve_atom_with lno carry cm vm ym gm in
      let ty = typ_to_unsigned (typ_of_atom a1) in
      let (vm, ym, gm, c) = resolve_lcarry_with lno flag cm vm ym gm in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Isbbs (c, v, a1, a2, y)])

  let parse_umul_at lno dest src1 src2 =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let ty = typ_to_unsigned (typ_of_atom a1) in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Imul (v, a1, a2)])

  let parse_umuls_at lno flag dest src1 src2 =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let ty = typ_to_unsigned (typ_of_atom a1) in
      let (vm, ym, gm, c) = resolve_lcarry_with lno flag cm vm ym gm in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Imuls (c, v, a1, a2)])

  let parse_umull_at lno destH destL src1 src2 =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let ty = typ_to_unsigned (typ_of_atom a1) in
      let (vm, ym, gm, vh) = resolve_lv_with lno destH cm vm ym gm (Some ty) in
      let (vm, ym, gm, vl) = resolve_lv_with lno destL cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Imull (vh, vl, a1, a2)])

  let parse_umulj_at lno dest src1 src2 =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let ty = typ_to_unsigned (typ_of_atom a1) in
      let (vm, ym, gm, v) =
        resolve_lv_with lno dest cm vm ym gm (Some (to_double_size ty)) in
      (vm, vxm, ym, gm, [lno, Imulj (v, a1, a2)])

  let parse_usplit_at lno destH destL src num =
    fun _fm cm vm vxm ym gm ->
      let a = resolve_atom_with lno src cm vm ym gm in
      let n = num cm in
      let ty = typ_to_unsigned (typ_of_atom a) in
      let (vm, ym, gm, vh) = resolve_lv_with lno destH cm vm ym gm (Some ty) in
      let (vm, ym, gm, vl) = resolve_lv_with lno destL cm vm ym gm (Some ty) in
      let _ =
        let w = size_of_var vl in
        if Z.leq n Z.zero || Z.geq n (Z.of_int w) then
          raise_at lno ("The position of a split should be in between 0 and " ^ string_of_int w ^ " (both excluded)")
      in
      (vm, vxm, ym, gm, [lno, Isplit (vh, vl, a, n)])

  let parse_uspl_at lno destH destL src num =
    fun _fm cm vm vxm ym gm ->
      let a = resolve_atom_with lno src cm vm ym gm in
      let n = num cm in
      let ty = typ_to_unsigned (typ_of_atom a) in
      let w = size_of_typ ty in
      let (vm, ym, gm, vh) = resolve_lv_with lno destH cm vm ym gm (Some (Tuint (w - Z.to_int n))) in
      let (vm, ym, gm, vl) = resolve_lv_with lno destL cm vm ym gm (Some (Tuint (Z.to_int n))) in
      let _ =
        if Z.leq n Z.zero || Z.geq n (Z.of_int w) then
          raise_at lno ("The position of a split should be in between 0 and " ^ string_of_int w ^ " (both excluded)")
      in
      (vm, vxm, ym, gm, [lno, Ispl (vh, vl, a, n)])

  let parse_sadd_at lno dest src1 src2 =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let ty = typ_to_signed (typ_of_atom a1) in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Iadd (v, a1, a2)])

  let parse_sadds_at lno flag dest src1 src2 =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let ty = typ_to_signed (typ_of_atom a1) in
      let (vm, ym, gm, c) = resolve_lcarry_with lno flag cm vm ym gm in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Iadds (c, v, a1, a2)])

  let parse_sadc_at lno dest src1 src2 carry =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let y = resolve_atom_with lno carry cm vm ym gm in
      let ty = typ_to_signed (typ_of_atom a1) in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Iadc (v, a1, a2, y)])

  let parse_sadcs_at lno flag dest src1 src2 carry =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let y = resolve_atom_with lno carry cm vm ym gm in
      let ty = typ_to_signed (typ_of_atom a1) in
      let (vm, ym, gm, c) = resolve_lcarry_with lno flag cm vm ym gm in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Iadcs (c, v, a1, a2, y)])

  let parse_ssub_at lno dest src1 src2 =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let ty = typ_to_signed (typ_of_atom a1) in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Isub (v, a1, a2)])

  let parse_ssubc_at lno flag dest src1 src2 =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let ty = typ_to_signed (typ_of_atom a1) in
      let (vm, ym, gm, c) = resolve_lcarry_with lno flag cm vm ym gm in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Isubc (c, v, a1, a2)])

  let parse_ssubb_at lno flag dest src1 src2 =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let ty = typ_to_signed (typ_of_atom a1) in
      let (vm, ym, gm, c) = resolve_lcarry_with lno flag cm vm ym gm in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Isubb (c, v, a1, a2)])

  let parse_ssbc_at lno dest src1 src2 carry =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let y = resolve_atom_with lno carry cm vm ym gm in
      let ty = typ_to_signed (typ_of_atom a1) in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Isbc (v, a1, a2, y)])

  let parse_ssbcs_at lno flag dest src1 src2 carry =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let y = resolve_atom_with lno carry cm vm ym gm in
      let ty = typ_to_signed (typ_of_atom a1) in
      let (vm, ym, gm, c) = resolve_lcarry_with lno flag cm vm ym gm in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Isbcs (c, v, a1, a2, y)])

  let parse_ssbb_at lno dest src1 src2 carry =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let y = resolve_atom_with lno carry cm vm ym gm in
      let ty = typ_to_signed (typ_of_atom a1) in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Isbb (v, a1, a2, y)])

  let parse_ssbbs_at lno flag dest src1 src2 carry =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let y = resolve_atom_with lno carry cm vm ym gm in
      let ty = typ_to_signed (typ_of_atom a1) in
      let (vm, ym, gm, c) = resolve_lcarry_with lno flag cm vm ym gm in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Isbbs (c, v, a1, a2, y)])

  let parse_smul_at lno dest src1 src2 =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let ty = typ_to_signed (typ_of_atom a1) in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Imul (v, a1, a2)])

  let parse_smuls_at lno flag dest src1 src2 =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let ty = typ_to_signed (typ_of_atom a1) in
      let (vm, ym, gm, c) = resolve_lcarry_with lno flag cm vm ym gm in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Imuls (c, v, a1, a2)])

  let parse_smull_at lno destH destL src1 src2 =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let ty = typ_to_signed (typ_of_atom a1) in
      let (vm, ym, gm, vh) = resolve_lv_with lno destH cm vm ym gm (Some ty) in
      let (vm, ym, gm, vl) =
        resolve_lv_with lno destL cm vm ym gm (Some (to_uint ty)) in
      (vm, vxm, ym, gm, [lno, Imull (vh, vl, a1, a2)])

  let parse_smulj_at lno dest src1 src2 =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let ty = typ_to_signed (typ_of_atom a1) in
      let (vm, ym, gm, v) =
        resolve_lv_with lno dest cm vm ym gm (Some (to_double_size ty)) in
      (vm, vxm, ym, gm, [lno, Imulj (v, a1, a2)])

  let parse_ssplit_at lno destH destL src num =
    fun _fm cm vm vxm ym gm ->
      let a = resolve_atom_with lno src cm vm ym gm in
      let n = num cm in
      let ty = typ_to_signed (typ_of_atom a) in
      let (vm, ym, gm, vh) = resolve_lv_with lno destH cm vm ym gm (Some ty) in
      let (vm, ym, gm, vl) =
        resolve_lv_with lno destL cm vm ym gm (Some (to_uint ty)) in
      let _ =
        let w = size_of_var vl in
        if Z.leq n Z.zero || Z.geq n (Z.of_int w) then
          raise_at lno ("The position of a split should be in between 0 and " ^ string_of_int w ^ " (both excluded)")
      in
      (vm, vxm, ym, gm, [lno, Isplit (vh, vl, a, n)])

  let parse_sspl_at lno destH destL src num =
    fun _fm cm vm vxm ym gm ->
      let a = resolve_atom_with lno src cm vm ym gm in
      let n = num cm in
      let ty = typ_to_signed (typ_of_atom a) in
      let w = size_of_typ ty in
      let (vm, ym, gm, vh) = resolve_lv_with lno destH cm vm ym gm (Some (Tsint (w - Z.to_int n))) in
      let (vm, ym, gm, vl) = resolve_lv_with lno destL cm vm ym gm (Some (Tuint (Z.to_int n))) in
      let _ =
        if Z.leq n Z.zero || Z.geq n (Z.of_int w) then
          raise_at lno ("The position of a split should be in between 0 and " ^ string_of_int w ^ " (both excluded)")
      in
      (vm, vxm, ym, gm, [lno, Ispl (vh, vl, a, n)])

  let parse_and_at lno dest src1 src2 =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm None in
      (vm, vxm, ym, gm, [lno, Iand (v, a1, a2)])

  let parse_or_at lno dest src1 src2 =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm None in
      (vm, vxm, ym, gm, [lno, Ior (v, a1, a2)])

  let parse_xor_at lno dest src1 src2 =
    fun _fm cm vm vxm ym gm ->
      let a1 = resolve_atom_with lno src1 cm vm ym gm in
      let a2 = resolve_atom_with lno src2 cm vm ym gm in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm None in
      (vm, vxm, ym, gm, [lno, Ixor (v, a1, a2)])

  let parse_not_at lno dest src =
    fun _fm cm vm vxm ym gm ->
      let a = resolve_atom_with lno src cm vm ym gm in
      let (vm, ym, gm, v) = resolve_lv_with lno dest cm vm ym gm None in
      (vm, vxm, ym, gm, [lno, Inot (v, a)])

  let parse_cast_at lno optlv dest src =
    fun _fm cm vm vxm ym gm ->
      let a = resolve_atom_with lno src cm vm ym gm in
      let (vm, ym, gm, v) =
        resolve_lv_or_lcarry_with lno dest cm vm ym gm in
	  (* determine the type of the discarded part *)
      let od_typ =
	match typ_of_var v, typ_of_atom a with
	| Tuint wv, Tuint wa -> Some (Tuint (abs (wa - wv)))
	| Tuint wv, Tsint wa -> if wv >= wa then Some (Tuint 1)
                                else Some (Tsint (wa - wv))
	| Tsint wv, Tuint wa -> if wv > wa then Some (Tsint (wv - wa))
                                else if wv = wa then Some bit_t
                                else Some (Tuint (wa - wv))
	| Tsint wv, Tsint wa -> if wv >= wa then Some (Tsint (wv - wa))
                                else Some (Tsint (wa - wv + 1)) in
      let (vm, ym, gm, od) =
		match optlv with
		| None -> (vm, ym, gm, None)
		| Some (`LV od) ->
		   let (vm, ym, gm, d) =
                     resolve_lv_with lno od cm vm ym gm od_typ in
		   (vm, ym, gm, Some d) in
	  (* the discarded part must be a ghost variable *)
	  let gm = apply_to_option (fun d -> SM.add d.vname d gm) gm od in
      (vm, vxm, ym, gm, [lno, Icast (od, v, a)])

  let parse_vpc_at lno dest src =
    fun _fm cm vm vxm ym gm ->
      let a = resolve_atom_with lno src cm vm ym gm in
      let (vm, ym, gm, v) = resolve_lv_or_lcarry_with lno dest cm vm ym gm in
      (vm, vxm, ym, gm, [lno, Ivpc (v, a)])

  let parse_join_at lno dest srcH srcL =
    fun _fm cm vm vxm ym gm ->
      let ah = resolve_atom_with lno srcH cm vm ym gm in
      let al = resolve_atom_with lno srcL cm vm ym gm in
      let ty = typ_map ((+) (size_of_atom al)) (typ_of_atom ah) in
      let (vm, ym, gm, v) =
        resolve_lv_with lno dest cm vm ym gm (Some ty) in
      (vm, vxm, ym, gm, [lno, Ijoin (v, ah, al)])

  let parse_assert_at lno bexp_prove_with_list_token =
    fun _fm cm vm vxm ym gm ->
      (vm, vxm, ym, gm, [lno, Iassert (bexp_prove_with_list_token cm vm ym gm)])

  let parse_eassert_at lno ebexp_prove_with_list_token =
    fun _fm cm vm vxm ym gm ->
      (vm, vxm, ym, gm, [lno, Iassert (ebexp_prove_with_list_token cm vm ym gm, [])])

  let parse_rassert_at lno rbexp_prove_with_list_token =
    fun _fm cm vm vxm ym gm ->
      (vm, vxm, ym, gm, [lno, Iassert ([], rbexp_prove_with_list_token cm vm ym gm)])

  let parse_assume_at lno bexp_token =
    fun _fm cm vm vxm ym gm ->
      (vm, vxm, ym, gm, [lno, Iassume (bexp_token cm vm ym gm)])

  let parse_cut_at lno bexp_prove_with_list_token =
    fun _fm cm vm vxm ym gm ->
      let (ecuts, rcuts) = bexp_prove_with_list_token cm vm ym gm in
      (vm, vxm, ym, gm, [lno, Icut (ecuts, rcuts)])

  let parse_ecut_at lno ebexp_prove_with_list_token =
    fun _fm cm vm vxm ym gm ->
    let ecuts = ebexp_prove_with_list_token cm vm ym gm in
    (vm, vxm, ym, gm, [lno, Icut (ecuts, [])])

  let parse_rcut_at lno rbexp_prove_with_list_token =
    fun _fm cm vm vxm ym gm ->
      let rcuts = rbexp_prove_with_list_token cm vm ym gm in
      (vm, vxm, ym, gm, [lno, Icut ([], rcuts)])

  let parse_ghost_at lno gvars_token bexp_token =
    fun _fm cm vm vxm ym gm ->
      let gvars = gvars_token cm vm ym gm in
      let gm = vm_of_vs (VS.union gvars (vs_of_vm gm)) in
      let e = bexp_token cm vm ym gm in
      let bad_ebexps = List.filter (fun e -> not (eq_ebexp e etrue) && VS.is_empty (VS.inter gvars (vars_ebexp e))) (split_eand (eqn_bexp e)) in
      let bad_rbexps = List.filter (fun e -> not (eq_rbexp e rtrue) && VS.is_empty (VS.inter gvars (vars_rbexp e))) (split_rand (rng_bexp e)) in
      if List.length bad_ebexps > 0 then raise_at lno ("The algebraic expression " ^ string_of_ebexp (List.hd bad_ebexps) ^ " is defined without using any ghost variable.")
      else if List.length bad_rbexps > 0 then raise_at lno ("The range expression " ^ string_of_rbexp (List.hd bad_rbexps) ^ " is defined without using any ghost variable.")
      else (vm, vxm, ym, gm, [lno, Ighost (gvars, e)])

  let is_type_compatible formal actual =
    match actual with
    | Avar v -> formal.vtyp = v.vtyp
    | Aconst (ty, _n) -> formal.vtyp = ty

  let parse_call_at lno fname_token actuals_token =
    fun fm cm vm vxm ym gm ->
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
          let fbody = visit_lined_program local_renamer f.fbody in
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
                       raise_at lno ("The type of the actual parameter " ^ string_of_atom actual
                                     ^ " is not compatible with the type of the formal parameter " ^ string_of_var formal))
                   formals actuals in
      (* Check naming conflicts *)
      let _ =
        let (vsclash, ysclash, gsclash) =
          let actvars = List.fold_left (fun res a -> VS.union res (vars_atom a)) VS.empty actuals in
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
      let (am, em, rm) = subst_maps_of_list pats in
      let p = subst_lined_program am em rm fbody in
      (* Update variable types *)
      let subst_varmap vm =
        (*
         * subst_lval fails if the corresponding actual parameter of a formal parameter is a constant.
         * In this case, no variable type will be updated.
         *)
        VS.of_list (List.flatten (List.map (fun v -> try [subst_lval am v] with _ -> []) (VS.elements vm))) in
      let update_varset vs vsp =
        (* To update variable types, we need to remove variables with new types first. *)
        VS.union (VS.diff vs vsp) vsp in
      let vsp = subst_varmap fvs in
      let ysp = subst_varmap fys in
      let gsp = subst_varmap fgs in
      (* FIXME: update vxm *)
      (vm_of_vs (update_varset vs vsp), vxm, vm_of_vs (update_varset ys ysp), vm_of_vs (update_varset gs gsp), p)

  let vec_name_fn vname =
    let n = String.length vname in
    let name = String.sub vname 1 (n - 1) in
    (* XXX: Find a suitable delimiter for name and index that don't choke Boolector and Singular *)
    Printf.sprintf "VEC_%s_%d" name

  let string_of_typ_vec (tv:typ_vec) =
    let (t, n) = tv in
      Printf.sprintf "%s[%d]" (string_of_typ t) n

  let resolve_lv_vec_with lno dest_tok _fm _cm _vm (vxm: 't) _ym _gm src_vtyp_opt : 't * string list * typ =
    match dest_tok with
    | `LVVECT {vecname; vectyphint} ->
      let vtyp = match (src_vtyp_opt, vectyphint) with
        | (None, None) -> raise_at lno (Printf.sprintf "Failed to determine the vector type of %s." vecname)
        | (None, Some hinted_vtyp) -> hinted_vtyp
        | (Some src_vtyp, None) -> src_vtyp
        | (Some src_vtyp, Some hinted_vtyp) -> (if src_vtyp <> hinted_vtyp then
            raise_at lno (Printf.sprintf "The specified vector type %s of %s is inconsistent with the determined vector type %s."
                                         (string_of_typ_vec hinted_vtyp)
                                         vecname
                                         (string_of_typ_vec src_vtyp))
          else hinted_vtyp) in
      let (elmtyp, srclen) = vtyp in
      let names = List.map (vec_name_fn vecname) (1 -- srclen) in
      (SM.add vecname vtyp vxm, names, elmtyp)
    | `LVVLIT lvs ->
      let relmtyp = match src_vtyp_opt with
      | None -> raise_at lno "Internal error: Missing type information to resolve a vector lval."
      | Some (tp, _) -> tp in
      let names = List.map (fun (`LVPLAIN {lvname; lvtyphint}) ->
        let _ = match lvtyphint with
        | None -> ()
        | Some hinted_ty -> if relmtyp <> hinted_ty then
          raise_at lno (Printf.sprintf "The specified type %s of an element %s is inconsistent with the determined type %s."
                                       (string_of_typ hinted_ty)
                                       lvname
                                       (string_of_typ relmtyp))
          else () in
        lvname) lvs in
      (vxm, names, relmtyp)

  let resolve_vec_with lno src_tok _fm cm vm vxm ym gm : typ * atom_t list =
    match src_tok with
    | `AVECT {vecname; vectyphint} ->
      let tv = try
        SM.find vecname vxm
      with Not_found ->
        raise_at lno ("Vector variable " ^ vecname ^ " is undefined.")
      in
      let _ = match vectyphint with
      | None -> ()
      | Some hinted_ty ->
          if tv <> hinted_ty then
            raise_at lno ("The type of variable " ^ vecname ^ " is inconsistent.")
          else () in
        let (rtyphint, rlen) = tv in
        let gen_avar i = `AVAR {atmname=(vec_name_fn vecname i); atmtyphint=Some rtyphint} in
        let rvs = List.map gen_avar (1 -- rlen) in
        (rtyphint, rvs)
    | `AVLIT rvs ->
      match rvs with
      | [] -> raise_at lno "A vector literal cannot be empty."
      | _ ->
        let relmtyps = List.map (fun a -> typ_of_atom (resolve_atom_with lno a cm vm ym gm)) rvs in
        let rtyphint = List.hd relmtyps in
        let _ = List.iteri (fun i t ->
          if t <> rtyphint then
            raise_at lno (
              Printf.sprintf "Every element of the vector literal should be %s, found %s at index %d."
                             (string_of_typ rtyphint)
                             (string_of_typ t)
                             i)
          else ()) relmtyps
        in (rtyphint, rvs)

  (* Given a list of (writes, read), make a series of aliasing movs on colliding names.
     Besides instructions, it also returns some context after rewriting *)
  let gen_tmp_movs lno (rwpairs: (string list * atom_t) list) vm relmtyp =
    let rewrite_rws (tainted, submap) (wws, a) =
      let (submap', a') = match a with
      | `AVAR ({atmname; _} as var) when SS.mem atmname tainted ->
        let tmp_name = atmname ^ "_" in
        let _ = if SM.mem tmp_name vm then
          raise_at lno (
            Printf.sprintf "Internal error: Attempting to pick a temporary variable name %s but it has been used."
                          tmp_name)
          else () in
        (SM.add tmp_name var submap, `AVAR {var with atmname=tmp_name})
      | `AVAR _
      | `ACONST _ -> (submap, a) in
      let tainted' = List.fold_left (fun set name -> SS.add name set) tainted wws in
      ((tainted', submap'), a') in

    let ((_, tmp_to_orig), src_safe) = List.fold_left_map rewrite_rws (SS.empty, SM.empty) rwpairs in
    let tmp_names = SM.fold (fun k _ names -> k::names) tmp_to_orig [] in

    (* Add introduced temp. variables into variable map *)
    let vm_safe = SM.fold (fun k _ map -> SM.add k (mkvar k relmtyp) map) tmp_to_orig vm in
    (* Save into temp. variables with mov instructions *)
    let aliasing_instrs = List.rev (
      SM.fold (fun tmp_name orig instrs ->
        let instr = (lno, Imov (SM.find tmp_name vm_safe, Avar (mkvar orig.atmname relmtyp))) in
        instr::instrs) tmp_to_orig []) in

    (aliasing_instrs, tmp_names, src_safe, vm_safe)

  let gen_tmp_movs_2 lno (rwpairs_: (string list * (atom_t * atom_t)) list) vm relmtyp =
    let rwpairs = List.rev (List.fold_left (fun l (wws, (rr1, rr2)) -> (wws, rr2)::([], rr1)::l) [] rwpairs_) in
    let (aliasing_instrs, tmp_names, src_safe_single, vm_safe) = gen_tmp_movs lno rwpairs vm relmtyp in
    let rec to_pairs_rev acc xs = match xs with
      | [] -> acc
      | _::[] -> raise_at lno "Internal error: Incorrect number of source operands."
      | x::y::tail -> to_pairs_rev ((x, y)::acc) tail in
    let src_safe = List.rev (to_pairs_rev [] src_safe_single) in
    (aliasing_instrs, tmp_names, src_safe, vm_safe)

  let unify_vec_srcs_at lno (relmtyp, src1) (relmtyp', src2) =
    let srclen = List.length src1 in
    let _ = if (List.length src2) <> srclen then
      raise_at lno "Two sources should have the same length."
    else if relmtyp <> relmtyp' then
      raise_at lno "Two sources should have the same element type."
    else () in
    ((relmtyp, srclen), src1, src2)

  let unpack_vinstr_11 mapper lno dest_tok src_tok fm cm vm vxm ym gm =
    let (relmtyp, src) = resolve_vec_with lno src_tok fm cm vm vxm ym gm in
    let src_typ_vec = (relmtyp, List.length src) in
    let (vxm', dest_names, _) = resolve_lv_vec_with lno dest_tok fm cm vm vxm ym gm (Some src_typ_vec) in

    let _ = if (List.length dest_names) <> (List.length src) then
      raise_at lno "Destination vector should be as long as the source vector."
    else () in

    let rwpairs = List.map2 (fun d s -> ([d], s)) dest_names src in
    let (aliasing_instrs, tmp_names, src_safe, vm_safe) = gen_tmp_movs lno rwpairs vm relmtyp in

    let map_func (vm, ym, gm) (lvname, rv) = (
      let lvtoken = {lvname; lvtyphint=None} in
      let (vm, _, ym, gm, instrs) = mapper lno lvtoken rv fm cm vm vxm ym gm in
      ((vm, ym, gm), instrs)
    ) in
    let ((vm', ym', gm'), iss) = (
      List.fold_left_map map_func (vm_safe, ym, gm) (List.combine dest_names src_safe)) in
    (* FIXME: if we are not writing phony variables to vm, it fails when reading a vector. *)
    (* Clean up temp. names so that they are invisible to latter parts of the source *)
    (remove_keys_from_map tmp_names vm', vxm', ym', gm', List.concat (aliasing_instrs::iss))

  let unpack_vinstr_12 mapper lno dest_tok src1_tok src2_tok fm cm vm vxm ym gm =
    let vatm1 = resolve_vec_with lno src1_tok fm cm vm vxm ym gm in
    let vatm2 = resolve_vec_with lno src2_tok fm cm vm vxm ym gm in
    let (src_typ_vec, src1, src2) = unify_vec_srcs_at lno vatm1 vatm2 in
    let (relmtyp, srclen) = src_typ_vec in

    let (vxm', dest_names, _) = resolve_lv_vec_with lno dest_tok fm cm vm vxm ym gm (Some src_typ_vec) in
    let _ = if (List.length dest_names) <> srclen then
      raise_at lno "Destination vector should be as long as the source vector."
    else () in

    let rwpairs = List.map2 (fun d (s1, s2) -> ([d], (s1, s2))) dest_names (List.combine src1 src2) in
    let (aliasing_instrs, tmp_names, src_safe, vm_safe) = gen_tmp_movs_2 lno rwpairs vm relmtyp in

    let map_func (vm, ym, gm) (lvname, (rv1, rv2)) = (
      let lvtoken = {lvname; lvtyphint=None} in
      let (vm, _, ym, gm, instrs) = mapper lno lvtoken rv1 rv2 fm cm vm vxm ym gm in
      ((vm, ym, gm), instrs)
    ) in
    let ((vm', ym', gm'), iss) = (
      List.fold_left_map map_func (vm_safe, ym, gm) (List.combine dest_names src_safe)) in
    (remove_keys_from_map tmp_names vm', vxm', ym', gm', List.concat (aliasing_instrs::iss))

  let unpack_vinstr_21n mapper lno dest1_tok dest2_tok src_tok num fm cm vm vxm ym gm =
    let (relmtyp, src) = resolve_vec_with lno src_tok fm cm vm vxm ym gm in
    let src_typ_vec = (relmtyp, List.length src) in
    let (vxm_i, dest1_names, _) = resolve_lv_vec_with lno dest1_tok fm cm vm vxm   ym gm (Some src_typ_vec) in
    let (vxm',  dest2_names, _) = resolve_lv_vec_with lno dest2_tok fm cm vm vxm_i ym gm (Some src_typ_vec) in

    let _ = if ((List.length dest1_names) <> (List.length src) ||
                (List.length dest2_names) <> (List.length src)) then
      raise_at lno "Destination vector should be as long as the source vector."
    else () in

    let rwpairs = List.map2 (fun (d1, d2) s -> ([d1; d2], s)) (List.combine dest1_names dest2_names) src in
    let (aliasing_instrs, tmp_names, src_safe, vm_safe) = gen_tmp_movs lno rwpairs vm relmtyp in

    let map_func (vm, ym, gm) ((lvname1, lvname2), rv) = (
      let lvtoken1 = {lvname=lvname1; lvtyphint=None} in
      let lvtoken2 = {lvname=lvname2; lvtyphint=None} in
      let (vm, _, ym, gm, instrs) = mapper lno lvtoken1 lvtoken2 rv num fm cm vm vxm ym gm in
      ((vm, ym, gm), instrs)
    ) in
    let dest_names = List.combine dest1_names dest2_names in
    let ((vm', ym', gm'), iss) = (
      List.fold_left_map map_func (vm_safe, ym, gm) (List.combine dest_names src_safe)) in
    (remove_keys_from_map tmp_names vm', vxm', ym', gm', List.concat (aliasing_instrs::iss))

  let unpack_vinstr_c12 mapper lno carry_tok dest_tok src1_tok src2_tok fm cm vm vxm ym gm =
    let vatm1 = resolve_vec_with lno src1_tok fm cm vm vxm ym gm in
    let vatm2 = resolve_vec_with lno src2_tok fm cm vm vxm ym gm in
    let (src_typ_vec, src1, src2) = unify_vec_srcs_at lno vatm1 vatm2 in
    let (relmtyp, srclen) = src_typ_vec in

    let carry_typ_vec = (bit_t, srclen) in
    let (vxm_i, carry_names, _) = resolve_lv_vec_with lno carry_tok fm cm vm vxm   ym gm (Some carry_typ_vec) in
    let (vxm' , dest_names , _) = resolve_lv_vec_with lno dest_tok  fm cm vm vxm_i ym gm (Some src_typ_vec) in

    let _ = if (List.length dest_names) <> srclen then
      raise_at lno "Destination vector should be as long as the source vector."
    else if (List.length carry_names) <> srclen then
      raise_at lno "Carry vector should be as long as the source vector."
    else () in

    let rwpairs = List.map2 (fun (c, d) (s1, s2) -> ([c; d], (s1, s2)))
                            (List.combine carry_names dest_names)
                            (List.combine src1 src2) in
    let (aliasing_instrs, tmp_names, src_safe, vm_safe) = gen_tmp_movs_2 lno rwpairs vm relmtyp in

    let map_func (vm, ym, gm) ((lvname1, lvname2), (rv1, rv2)) = (
      let lvtoken1 = {lvname=lvname1; lvtyphint=None} in
      let lvtoken2 = {lvname=lvname2; lvtyphint=None} in
      let (vm, _, ym, gm, instrs) = mapper lno lvtoken1 lvtoken2 rv1 rv2 fm cm vm vxm ym gm in
      ((vm, ym, gm), instrs)
    ) in
    let dest_names = List.combine carry_names dest_names in
    let ((vm', ym', gm'), iss) = (
      List.fold_left_map map_func (vm_safe, ym, gm) (List.combine dest_names src_safe)) in
    (remove_keys_from_map tmp_names vm', vxm', ym', gm', List.concat (aliasing_instrs::iss))

  let unpack_vmull mapper lno destH_tok destL_tok src1_tok src2_tok fm cm vm vxm ym gm =
    let vatm1 = resolve_vec_with lno src1_tok fm cm vm vxm ym gm in
    let vatm2 = resolve_vec_with lno src2_tok fm cm vm vxm ym gm in
    let (src_typ_vec, src1, src2) = unify_vec_srcs_at lno vatm1 vatm2 in
    let (relmtyp, srclen) = src_typ_vec in

    (* XXX: is destL always unsigned? *)
    let src_typ_vec = (relmtyp, List.length src1) in
    let destL_typ = (to_uint relmtyp, srclen) in
    let (vxm_i, destH_names, _) = resolve_lv_vec_with lno destH_tok fm cm vm vxm   ym gm (Some src_typ_vec) in
    let (vxm',  destL_names, _) = resolve_lv_vec_with lno destL_tok fm cm vm vxm_i ym gm (Some destL_typ) in

    let _ = if ((List.length destH_names) <> srclen ||
                (List.length destL_names) <> srclen) then
      raise_at lno "Destination vectors should be as long as the source vectors."
    else () in

    let rwpairs = List.map2 (fun (dh, dl) (s1, s2) -> ([dh; dl], (s1, s2)))
                            (List.combine destH_names destL_names)
                            (List.combine src1 src2) in
    let (aliasing_instrs, tmp_names, src_safe, vm_safe) = gen_tmp_movs_2 lno rwpairs vm relmtyp in
    let dest_names = List.combine destH_names destL_names in

    let map_func (vm, ym, gm) ((lvname1, lvname2), (rv1, rv2)) = (
      let lvtoken1 = {lvname=lvname1; lvtyphint=None} in
      let lvtoken2 = {lvname=lvname2; lvtyphint=None} in
      let (vm, _, ym, gm, instrs) = mapper lno lvtoken1 lvtoken2 rv1 rv2 fm cm vm vxm ym gm in
      ((vm, ym, gm), instrs)
    ) in
    let ((vm', ym', gm'), iss) = (
      List.fold_left_map map_func (vm_safe, ym, gm) (List.combine dest_names src_safe)) in
    (remove_keys_from_map tmp_names vm', vxm', ym', gm', List.concat (aliasing_instrs::iss))

  let unpack_vmulj mapper lno dest_tok src1_tok src2_tok fm cm vm vxm ym gm =
    let vatm1 = resolve_vec_with lno src1_tok fm cm vm vxm ym gm in
    let vatm2 = resolve_vec_with lno src2_tok fm cm vm vxm ym gm in
    let (src_typ_vec, src1, src2) = unify_vec_srcs_at lno vatm1 vatm2 in
    let (relmtyp, srclen) = src_typ_vec in
    let dst_typ_vec = (to_double_size relmtyp, srclen) in

    let (vxm', dest_names, _) = resolve_lv_vec_with lno dest_tok fm cm vm vxm ym gm (Some dst_typ_vec) in
    let _ = if (List.length dest_names) <> srclen then
      raise_at lno "Destination vector should be as long as the source vector."
    else () in

    let rwpairs = List.map2 (fun d (s1, s2) -> ([d], (s1, s2))) dest_names (List.combine src1 src2) in
    let (aliasing_instrs, tmp_names, src_safe, vm_safe) = gen_tmp_movs_2 lno rwpairs vm relmtyp in

    let map_func (vm, ym, gm) (lvname, (rv1, rv2)) = (
      let lvtoken = {lvname; lvtyphint=None} in
      let (vm, _, ym, gm, instrs) = mapper lno lvtoken rv1 rv2 fm cm vm vxm ym gm in
      ((vm, ym, gm), instrs)
    ) in
    let ((vm', ym', gm'), iss) = (
      List.fold_left_map map_func (vm_safe, ym, gm) (List.combine dest_names src_safe)) in
    (remove_keys_from_map tmp_names vm', vxm', ym', gm', List.concat (aliasing_instrs::iss))

  let parse_vcast_at lno dest_tok src_tok fm cm vm vxm ym gm =
    let (relmtyp, src) = resolve_vec_with lno src_tok fm cm vm vxm ym gm in
    let (vxm', dest_names, tar_typ) = resolve_lv_vec_with lno dest_tok fm cm vm vxm ym gm None in

    let _ = if (List.length dest_names) <> (List.length src) then
      raise_at lno "Destination vector should be as long as the source vector."
    else () in

    let rwpairs = List.map2 (fun d s -> ([d], s)) dest_names src in
    let (aliasing_instrs, tmp_names, src_safe, vm_safe) = gen_tmp_movs lno rwpairs vm relmtyp in

    let map_func (vm, ym, gm) (lvname, rv) = (
      let lvtoken = {lvname; lvtyphint=Some tar_typ} in  (* should preserve the type hint to dest. *)
      let (vm, _, ym, gm, instrs) = parse_cast_at lno None lvtoken rv fm cm vm vxm ym gm in
      ((vm, ym, gm), instrs)
    ) in
    let ((vm', ym', gm'), iss) = (
      List.fold_left_map map_func (vm_safe, ym, gm) (List.combine dest_names src_safe)) in
    (remove_keys_from_map tmp_names vm', vxm', ym', gm', List.concat (aliasing_instrs::iss))

  let parse_vbroadcast_at lno dest_tok num src_tok fm cm vm vxm ym gm =
    let n = num cm in
    (* type check is done when unpacking, so relmtyp is not needed here *)
    let (_, src) = resolve_vec_with lno src_tok fm cm vm vxm ym gm in
    let len = List.length src in
    let src_padded = `AVLIT (List.init (Z.to_int n) (fun i -> List.nth src (i mod len))) in
    unpack_vinstr_11 parse_imov_at lno dest_tok src_padded fm cm vm vxm ym gm

  let recognize_instr_at lno instr fm cm vm vxm ym gm =
      match instr with
      | `MOV (`LVPLAIN dest, src) ->
        parse_imov_at lno dest src fm cm vm vxm ym gm
      | `VMOV (dest, src) ->
        unpack_vinstr_11 parse_imov_at lno dest src fm cm vm vxm ym gm
      | `VBROADCAST (dest, num, src) ->
        parse_vbroadcast_at lno dest num src fm cm vm vxm ym gm
      | `SHL (`LVPLAIN dest, src, num) ->
         parse_ishl_at lno dest src num fm cm vm vxm ym gm
      | `SHLS (`LVPLAIN lost, `LVPLAIN dest, src, num) ->
         parse_ishls_at lno lost dest src num fm cm vm vxm ym gm
      | `SHR (`LVPLAIN dest, src, num) ->
         parse_ishr_at lno dest src num fm cm vm vxm ym gm
      | `SHRS (`LVPLAIN dest, `LVPLAIN lost, src, num) ->
         parse_ishrs_at lno dest lost src num fm cm vm vxm ym gm
      | `SAR (`LVPLAIN dest, src, num) ->
         parse_isar_at lno dest src num fm cm vm vxm ym gm
      | `SARS (`LVPLAIN dest, `LVPLAIN lost, src, num) ->
         parse_isars_at lno dest lost src num fm cm vm vxm ym gm
      | `CSHL (`LVPLAIN destH, `LVPLAIN destL, src1, src2, num) ->
         parse_cshl_at lno destH destL src1 src2 num fm cm vm vxm ym gm
      | `CSHR (`LVPLAIN destH, `LVPLAIN destL, src1, src2, num) ->
         parse_cshr_at lno destH destL src1 src2 num fm cm vm vxm ym gm
      | `CSHRS (`LVPLAIN destH, `LVPLAIN destL, `LVPLAIN lostL, src1, src2, num) ->
         parse_cshrs_at lno destH destL lostL src1 src2 num fm cm vm vxm ym gm
      | `ROL (`LVPLAIN dest, src, num) ->
         parse_rol_at lno dest src num fm cm vm vxm ym gm
      | `ROR (`LVPLAIN dest, src, num) ->
         parse_ror_at lno dest src num fm cm vm vxm ym gm
      | `SET (`LVCARRY dest) ->
         parse_set_at lno dest fm cm vm vxm ym gm
      | `CLEAR (`LVCARRY dest) ->
         parse_clear_at lno dest fm cm vm vxm ym gm
      | `NONDET (`LVPLAIN dest) ->
         parse_nondet_at lno dest fm cm vm vxm ym gm
      | `CMOV (`LVPLAIN dest, carry, src1, src2) ->
         parse_cmov_at lno dest carry src1 src2 fm cm vm vxm ym gm
      | `ADD (`LVPLAIN dest, src1, src2) ->
         parse_add_at lno dest src1 src2 fm cm vm vxm ym gm
      | `VADD (dest, src1, src2) ->
         unpack_vinstr_12 parse_add_at lno dest src1 src2 fm cm vm vxm ym gm
      | `ADDS (`LVCARRY flag, `LVPLAIN dest, src1, src2) ->
         parse_adds_at lno flag dest src1 src2 fm cm vm vxm ym gm
      | `VADDS (flag, dest, src1, src2) ->
         unpack_vinstr_c12 parse_adds_at lno flag dest src1 src2 fm cm vm vxm ym gm
      | `ADC (`LVPLAIN dest, src1, src2, carry) ->
         parse_adc_at lno dest src1 src2 carry fm cm vm vxm ym gm
      | `ADCS (`LVCARRY flag, `LVPLAIN dest, src1, src2, carry) ->
         parse_adcs_at lno flag dest src1 src2 carry fm cm vm vxm ym gm
      | `SUB (`LVPLAIN dest, src1, src2) ->
         parse_sub_at lno dest src1 src2 fm cm vm vxm ym gm
      | `VSUB (dest, src1, src2) ->
         unpack_vinstr_12 parse_sub_at lno dest src1 src2 fm cm vm vxm ym gm
      | `SUBC (`LVCARRY flag, `LVPLAIN dest, src1, src2) ->
         parse_subc_at lno flag dest src1 src2 fm cm vm vxm ym gm
      | `VSUBC (flag, dest, src1, src2) ->
         unpack_vinstr_c12 parse_subc_at lno flag dest src1 src2 fm cm vm vxm ym gm
      | `SUBB (`LVCARRY flag, `LVPLAIN dest, src1, src2) ->
         parse_subb_at lno flag dest src1 src2 fm cm vm vxm ym gm
      | `VSUBB (flag, dest, src1, src2) ->
         unpack_vinstr_c12 parse_subb_at lno flag dest src1 src2 fm cm vm vxm ym gm
      | `SBC (`LVPLAIN dest, src1, src2, carry) ->
         parse_sbc_at lno dest src1 src2 carry fm cm vm vxm ym gm
      | `SBCS (`LVCARRY flag, `LVPLAIN dest, src1, src2, carry) ->
         parse_sbcs_at lno flag dest src1 src2 carry fm cm vm vxm ym gm
      | `SBB (`LVPLAIN dest, src1, src2, carry) ->
         parse_sbb_at lno dest src1 src2 carry fm cm vm vxm ym gm
      | `SBBS (`LVCARRY flag, `LVPLAIN dest, src1, src2, carry) ->
         parse_sbbs_at lno flag dest src1 src2 carry fm cm vm vxm ym gm
      | `MUL (`LVPLAIN dest, src1, src2) ->
         parse_mul_at lno dest src1 src2 fm cm vm vxm ym gm
      | `VMUL (dest, src1, src2) ->
         unpack_vinstr_12 parse_mul_at lno dest src1 src2 fm cm vm vxm ym gm
      | `MULS (`LVCARRY flag, `LVPLAIN dest, src1, src2) ->
         parse_muls_at lno flag dest src1 src2 fm cm vm vxm ym gm
      | `MULL (`LVPLAIN destH, `LVPLAIN destL, src1, src2) ->
         parse_mull_at lno destH destL src1 src2 fm cm vm vxm ym gm
      | `VMULL (destH, destL, src1, src2) ->
         unpack_vmull parse_mull_at lno destH destL src1 src2 fm cm vm vxm ym gm
      | `MULJ (`LVPLAIN dest, src1, src2) ->
         parse_mulj_at lno dest src1 src2 fm cm vm vxm ym gm
      | `VMULJ (dest, src1, src2) ->
         unpack_vmulj parse_mulj_at lno dest src1 src2 fm cm vm vxm ym gm
      | `SPLIT (`LVPLAIN destH, `LVPLAIN destL, src, num) ->
         parse_split_at lno destH destL src num fm cm vm vxm ym gm
      | `VSPLIT (destH, destL, src, num) ->
        unpack_vinstr_21n parse_split_at lno destH destL src num fm cm vm vxm ym gm
      | `SPL (`LVPLAIN destH, `LVPLAIN destL, src, num) ->
         parse_spl_at lno destH destL src num fm cm vm vxm ym gm
      | `UADD (`LVPLAIN dest, src1, src2) ->
         parse_uadd_at lno dest src1 src2 fm cm vm vxm ym gm
      | `VUADD (dest, src1, src2) ->
         unpack_vinstr_12 parse_uadd_at lno dest src1 src2 fm cm vm vxm ym gm
      | `UADDS (`LVCARRY flag, `LVPLAIN dest, src1, src2) ->
         parse_uadds_at lno flag dest src1 src2 fm cm vm vxm ym gm
      | `VUADDS (flag, dest, src1, src2) ->
         unpack_vinstr_c12 parse_uadds_at lno flag dest src1 src2 fm cm vm vxm ym gm
      | `UADC (`LVPLAIN dest, src1, src2, carry) ->
         parse_uadc_at lno dest src1 src2 carry fm cm vm vxm ym gm
      | `UADCS (`LVCARRY flag, `LVPLAIN dest, src1, src2, carry) ->
         parse_uadcs_at lno flag dest src1 src2 carry fm cm vm vxm ym gm
      | `USUB (`LVPLAIN dest, src1, src2) ->
         parse_usub_at lno dest src1 src2 fm cm vm vxm ym gm
      | `USUBC (`LVCARRY flag, `LVPLAIN dest, src1, src2) ->
         parse_usubc_at lno flag dest src1 src2 fm cm vm vxm ym gm
      | `USUBB (`LVCARRY flag, `LVPLAIN dest, src1, src2) ->
         parse_usubb_at lno flag dest src1 src2 fm cm vm vxm ym gm
      | `USBC (`LVPLAIN dest, src1, src2, carry) ->
         parse_usbc_at lno dest src1 src2 carry fm cm vm vxm ym gm
      | `USBCS (`LVCARRY flag, `LVPLAIN dest, src1, src2, carry) ->
         parse_usbcs_at lno flag dest src1 src2 carry fm cm vm vxm ym gm
      | `USBB (`LVPLAIN dest, src1, src2, carry) ->
         parse_usbb_at lno dest src1 src2 carry fm cm vm vxm ym gm
      | `USBBS (`LVCARRY flag, `LVPLAIN dest, src1, src2, carry) ->
         parse_usbbs_at lno flag dest src1 src2 carry fm cm vm vxm ym gm
      | `UMUL (`LVPLAIN dest, src1, src2) ->
         parse_umul_at lno dest src1 src2 fm cm vm vxm ym gm
      | `VUMUL (dest, src1, src2) ->
         unpack_vinstr_12 parse_umul_at lno dest src1 src2 fm cm vm vxm ym gm
      | `UMULS (`LVCARRY flag, `LVPLAIN dest, src1, src2) ->
         parse_umuls_at lno flag dest src1 src2 fm cm vm vxm ym gm
      | `UMULL (`LVPLAIN destH, `LVPLAIN destL, src1, src2) ->
         parse_umull_at lno destH destL src1 src2 fm cm vm vxm ym gm
      | `VUMULL (destH, destL, src1, src2) ->
         unpack_vmull parse_umull_at lno destH destL src1 src2 fm cm vm vxm ym gm
      | `UMULJ (`LVPLAIN dest, src1, src2) ->
         parse_umulj_at lno dest src1 src2 fm cm vm vxm ym gm
      | `VUMULJ (dest, src1, src2) ->
         unpack_vmulj parse_umulj_at lno dest src1 src2 fm cm vm vxm ym gm
      | `USPLIT (`LVPLAIN destH, `LVPLAIN destL, src, num) ->
         parse_usplit_at lno destH destL src num fm cm vm vxm ym gm
      | `VUSPLIT (destH, destL, src, num) ->
         unpack_vinstr_21n parse_usplit_at lno destH destL src num fm cm vm vxm ym gm
      | `USPL (`LVPLAIN destH, `LVPLAIN destL, src, num) ->
         parse_uspl_at lno destH destL src num fm cm vm vxm ym gm
      | `SADD (`LVPLAIN dest, src1, src2) ->
         parse_sadd_at lno dest src1 src2 fm cm vm vxm ym gm
      | `VSADD (dest, src1, src2) ->
         unpack_vinstr_12 parse_sadd_at lno dest src1 src2 fm cm vm vxm ym gm
      | `SADDS (`LVCARRY flag, `LVPLAIN dest, src1, src2) ->
         parse_sadds_at lno flag dest src1 src2 fm cm vm vxm ym gm
      | `VSADDS (flag, dest, src1, src2) ->
         unpack_vinstr_c12 parse_sadds_at lno flag dest src1 src2 fm cm vm vxm ym gm
      | `SADC (`LVPLAIN dest, src1, src2, carry) ->
         parse_sadc_at lno dest src1 src2 carry fm cm vm vxm ym gm
      | `SADCS (`LVCARRY flag, `LVPLAIN dest, src1, src2, carry) ->
         parse_sadcs_at lno flag dest src1 src2 carry fm cm vm vxm ym gm
      | `SSUB (`LVPLAIN dest, src1, src2) ->
         parse_ssub_at lno dest src1 src2 fm cm vm vxm ym gm
      | `SSUBC (`LVCARRY flag, `LVPLAIN dest, src1, src2) ->
         parse_ssubc_at lno flag dest src1 src2 fm cm vm vxm ym gm
      | `SSUBB (`LVCARRY flag, `LVPLAIN dest, src1, src2) ->
         parse_ssubb_at lno flag dest src1 src2 fm cm vm vxm ym gm
      | `SSBC (`LVPLAIN dest, src1, src2, carry) ->
         parse_ssbc_at lno dest src1 src2 carry fm cm vm vxm ym gm
      | `SSBCS (`LVCARRY flag, `LVPLAIN dest, src1, src2, carry) ->
         parse_ssbcs_at lno flag dest src1 src2 carry fm cm vm vxm ym gm
      | `SSBB (`LVPLAIN dest, src1, src2, carry) ->
         parse_ssbb_at lno dest src1 src2 carry fm cm vm vxm ym gm
      | `SSBBS (`LVCARRY flag, `LVPLAIN dest, src1, src2, carry) ->
         parse_ssbbs_at lno flag dest src1 src2 carry fm cm vm vxm ym gm
      | `SMUL (`LVPLAIN dest, src1, src2) ->
         parse_smul_at lno dest src1 src2 fm cm vm vxm ym gm
      | `VSMUL (dest, src1, src2) ->
         unpack_vinstr_12 parse_smul_at lno dest src1 src2 fm cm vm vxm ym gm
      | `SMULS (`LVCARRY flag, `LVPLAIN dest, src1, src2) ->
         parse_smuls_at lno flag dest src1 src2 fm cm vm vxm ym gm
      | `SMULL (`LVPLAIN destH, `LVPLAIN destL, src1, src2) ->
         parse_smull_at lno destH destL src1 src2 fm cm vm vxm ym gm
      | `VSMULL (destH, destL, src1, src2) ->
         unpack_vmull parse_smull_at lno destH destL src1 src2 fm cm vm vxm ym gm
      | `SMULJ (`LVPLAIN dest, src1, src2) ->
         parse_smulj_at lno dest src1 src2 fm cm vm vxm ym gm
      | `VSMULJ (dest, src1, src2) ->
         unpack_vmulj parse_smulj_at lno dest src1 src2 fm cm vm vxm ym gm
      | `SSPLIT (`LVPLAIN destH, `LVPLAIN destL, src, num) ->
         parse_ssplit_at lno destH destL src num fm cm vm vxm ym gm
      | `VSSPLIT (destH, destL, src, num) ->
        unpack_vinstr_21n parse_ssplit_at lno destH destL src num fm cm vm vxm ym gm
      | `SSPL (`LVPLAIN destH, `LVPLAIN destL, src, num) ->
         parse_sspl_at lno destH destL src num fm cm vm vxm ym gm
      | `AND (`LVPLAIN dest, src1, src2) ->
         parse_and_at lno dest src1 src2 fm cm vm vxm ym gm
      | `OR (`LVPLAIN dest, src1, src2) ->
         parse_or_at lno dest src1 src2 fm cm vm vxm ym gm
      | `XOR (`LVPLAIN dest, src1, src2) ->
         parse_xor_at lno dest src1 src2 fm cm vm vxm ym gm
      | `NOT (`LVPLAIN dest, src) ->
         parse_not_at lno dest src fm cm vm vxm ym gm
      | `CAST (optlv, `LV dest, src) ->
         parse_cast_at lno optlv dest src fm cm vm vxm ym gm
      | `VCAST (optlv, dest, src) -> (
        match optlv with
        | Some _ -> raise_at lno "Internal error: optlv should be None in vcast."
        | None -> parse_vcast_at lno dest src fm cm vm vxm ym gm)
      | `VPC (`LV dest, src) ->
         parse_vpc_at lno dest src fm cm vm vxm ym gm
      | `JOIN (`LVPLAIN dest, srcH, srcL) ->
         parse_join_at lno dest srcH srcL fm cm vm vxm ym gm
      | `ASSERT bexp_prove_with_list ->
         parse_assert_at lno bexp_prove_with_list fm cm vm vxm ym gm
      | `EASSERT ebexp_prove_with_list ->
         parse_eassert_at lno ebexp_prove_with_list fm cm vm vxm ym gm
      | `RASSERT rbexp_prove_with_list ->
         parse_rassert_at lno rbexp_prove_with_list fm cm vm vxm ym gm
      | `ASSUME bexp ->
         parse_assume_at lno bexp fm cm vm vxm ym gm
      | `CUT bexp_prove_with_list ->
         parse_cut_at lno bexp_prove_with_list fm cm vm vxm ym gm
      | `ECUT ebexp_prove_with_list ->
         parse_ecut_at lno ebexp_prove_with_list fm cm vm vxm ym gm
      | `RCUT rbexp_prove_with_list ->
         parse_rcut_at lno rbexp_prove_with_list fm cm vm vxm ym gm
      | `GHOST (gvars, bexp) ->
         parse_ghost_at lno gvars bexp fm cm vm vxm ym gm
      | `CALL (id, actuals) ->
         parse_call_at lno id actuals fm cm vm vxm ym gm
      | `NOP -> (vm, vxm, ym, gm, [])
      (*| _ -> (raise_at lno "(Internal error) Uncognized instruction pattern")*)

  let parse_instrs instrs fm cm vm ym gm =
    let reducer (vm0, vxm0, ym0, gm0, prog_rev) (lno, instr0) =
      let (vm, vxm, ym, gm, prog) =
        recognize_instr_at lno instr0 fm cm vm0 vxm0 ym0 gm0 in
      (vm, vxm, ym, gm, List.rev_append prog prog_rev) in
    let vxm = SM.empty in
    let (vm, _vxm, ym, gm, prog_rev) = List.fold_left reducer (vm, vxm, ym, gm, []) instrs in
    (vm, ym, gm, List.rev prog_rev)

%}

%token <string> COMMENT
%token <Z.t> NUM
%token <string> ID VEC_ID PATH
%token <int> UINT SINT
%token BIT
%token LBRAC RBRAC LPAR RPAR LSQUARE RSQUARE COMMA SEMICOLON DOT DOTDOT VBAR COLON
/* Instructions */
%token CONST MOV
%token BROADCAST
%token ADD ADDS ADC ADCS SUB SUBC SUBB SBC SBCS SBB SBBS MUL MULS MULL MULJ SPLIT SPL
%token UADD UADDS UADC UADCS USUB USUBC USUBB USBC USBCS USBB USBBS UMUL UMULS UMULL UMULJ USPLIT USPL
%token SADD SADDS SADC SADCS SSUB SSUBC SSUBB SSBC SSBCS SSBB SSBBS SMUL SMULS SMULL SMULJ SSPLIT SSPL
%token SHL SHLS SHR SHRS SAR SARS CSHL CSHR CSHRS ROL ROR SET CLEAR NONDET CMOV AND OR NOT CAST VPC JOIN ASSERT EASSERT RASSERT ASSUME GHOST
%token CUT ECUT RCUT NOP
/* Logical Expressions */
%token VARS NEG SQ EXT UEXT SEXT MOD UMOD SREM SMOD XOR ULT ULE UGT UGE SLT SLE SGT SGE SHR SAR
/* Predicates */
%token TRUE EQ EQMOD EQUMOD EQSMOD EQSREM
/* Operators */
%token ADDOP SUBOP MULOP POWOP ULEOP ULTOP UGEOP UGTOP SLEOP SLTOP SGEOP SGTOP EQOP NEGOP MODOP LANDOP LOROP NOTOP ANDOP OROP XOROP SHLOP SHROP SAROP
/* Others */
%token AT PROC CALL ULIMBS SLIMBS PROVE WITH ALL CUTS ASSUMES GHOSTS PRECONDITION DEREFOP ALGEBRA RANGE QFBV SOLVER SMT
%token EOF

%left LOROP
%left LANDOP
%nonassoc EQOP ULTOP ULEOP UGTOP UGEOP SLTOP SLEOP SGTOP SGEOP
%left OROP
%left XOROP
%left ANDOP
%left SHLOP SHROP SAROP
%left ADDOP SUBOP
%left MULOP
%left POWOP
%right NEGOP NOTOP
%left MODOP
%nonassoc VAR CONST NEG ADD SUB MUL SQ UMOD SREM SMOD NOT AND OR XOR ULT ULE UGT UGE SLT SLE SGT SGE SHL SHLS SHR SHRS SAR SARS
%nonassoc EQ EQMOD
%nonassoc UMINUS

%start spec
%start prog
%type <(Ast.Cryptoline.var list * Typecheck.Std.spec)> spec
%type <Ast.Cryptoline.lined_program> prog

%type <lval_t> lval
%type <lval_vec_t> lval_v
%type <atom_t> atom
%type <atom_vec_t> atom_v

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
      (m.fargs, { spre = m.fpre; sprog = m.fbody; spost = m.fpost })
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
        let (vm, ym, gm, p) = parse_instrs $8 fm cm vm ym gm in
        let g =
          match $9 cm vm ym gm with
          | None -> ([], [])
          | Some e -> e in
        (SM.add fname { fname = fname;
                        fargs = args;
                        fouts = outs;
                        fvm = vm;
                        fym = ym;
                        fgm = gm;
                        fbody = p;
                        fpre = f;
                        fpost = g } fm, cm)
  }
  | CONST ID EQOP const
  {
    let lno = !lnum in
    fun fm cm ->
      let v = $2 in
      let n = $4 cm in
      if SM.mem v cm
      then raise_at lno ("Redefined constant: " ^ v)
      else (fm, SM.add v n cm)
  }
;

pre:
    LBRAC bexp RBRAC                              { fun cm vm ym gm -> Some ($2 cm vm ym gm) }
  |                                               { fun _cm _vm _ym _gm -> None }
;

post:
    LBRAC bexp_prove_with_list RBRAC              { fun cm vm ym gm -> Some ($2 cm vm ym gm) }
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
    let (_vm, _ym, _gm, p) = parse_instrs $1 fm cm vm ym gm in
    p
  }
;

program:
  instrs                                          { $1 }
;

instrs:
    instr SEMICOLON instrs                        { $1 :: $3 }
  | instr SEMICOLON                               { [$1] }
  | instr SEMICOLON error                         { raise_at !lnum ("Unrecognized instruction.") }
;

instr:
    MOV lval atom                                 { (!lnum, `MOV ($2, $3)) }
  | MOV lval_v atom_v                             { (!lnum, `VMOV ($2, $3)) }
  | lhs EQOP atom                                 { (!lnum, `MOV (`LVPLAIN $1, $3)) }
  | BROADCAST lval_v const atom_v                 { (!lnum, `VBROADCAST ($2, $3, $4)) }
  | SHL lval atom atom                            { (!lnum, `SHL ($2, $3, $4)) }
  | lhs EQOP SHL atom atom                        { (!lnum, `SHL (`LVPLAIN $1, $4, $5)) }
  | SHLS lval lval atom const                     { (!lnum, `SHLS ($2, $3, $4, $5)) }
  | lhs lhs EQOP SHLS atom const                  { (!lnum, `SHLS (`LVPLAIN $1, `LVPLAIN $2, $5, $6)) }
  | SHR lval atom atom                            { (!lnum, `SHR ($2, $3, $4)) }
  | lhs EQOP SHR atom atom                        { (!lnum, `SHR (`LVPLAIN $1, $4, $5)) }
  | SHRS lval lval atom const                     { (!lnum, `SHRS ($2, $3, $4, $5)) }
  | lhs lhs EQOP SHRS atom const                  { (!lnum, `SHRS (`LVPLAIN $1, `LVPLAIN $2, $5, $6)) }
  | SAR lval atom atom                            { (!lnum, `SAR ($2, $3, $4)) }
  | lhs EQOP SAR atom atom                        { (!lnum, `SAR (`LVPLAIN $1, $4, $5)) }
  | SARS lval lval atom const                     { (!lnum, `SARS ($2, $3, $4, $5)) }
  | lhs lhs EQOP SARS atom const                  { (!lnum, `SARS (`LVPLAIN $1, `LVPLAIN $2, $5, $6)) }
  | CSHL lval lval atom atom const                { (!lnum, `CSHL ($2, $3, $4, $5, $6)) }
  | lhs DOT lhs EQOP CSHL atom atom const         { (!lnum, `CSHL (`LVPLAIN $1, `LVPLAIN $3, $6, $7, $8)) }
  | CSHR lval lval atom atom const                { (!lnum, `CSHR ($2, $3, $4, $5, $6)) }
  | lhs DOT lhs EQOP CSHR atom atom const         { (!lnum, `CSHR (`LVPLAIN $1, `LVPLAIN $3, $6, $7, $8)) }
  | CSHRS lval lval lval atom atom const          { (!lnum, `CSHRS ($2, $3, $4, $5, $6, $7)) }
  | lhs DOT lhs DOT lhs EQOP CSHRS atom atom const
                                                  { (!lnum, `CSHRS (`LVPLAIN $1, `LVPLAIN $3, `LVPLAIN $5, $8, $9, $10)) }
  | ROL lval atom const                           { (!lnum, `ROL ($2, $3, $4)) }
  | ROR lval atom const                           { (!lnum, `ROR ($2, $3, $4)) }
  | SET lcarry                                    { (!lnum, `SET $2) }
  | CLEAR lcarry                                  { (!lnum, `CLEAR $2) }
  | NONDET lval                                   { (!lnum, `NONDET $2) }
  | CMOV lval carry atom atom                     { (!lnum, `CMOV ($2, $3, $4, $5)) }
  | lhs EQOP CMOV carry atom atom                 { (!lnum, `CMOV (`LVPLAIN $1, $4, $5, $6)) }
  | ADD lval atom atom                            { (!lnum, `ADD ($2, $3, $4)) }
  | ADD lval_v atom_v atom_v                      { (!lnum, `VADD ($2, $3, $4)) }
  | lhs EQOP ADD atom atom                        { (!lnum, `ADD (`LVPLAIN $1, $4, $5)) }
  | ADDS lcarry lval atom atom                    { (!lnum, `ADDS ($2, $3, $4, $5)) }
  | ADDS lcarry_v lval_v atom_v atom_v            { (!lnum, `VADDS ($2, $3, $4, $5)) }
  | lhs DOT lhs EQOP ADDS atom atom               { (!lnum, `ADDS (`LVCARRY $1, `LVPLAIN $3, $6, $7)) }
  | ADC lval atom atom carry                      { (!lnum, `ADC ($2, $3, $4, $5)) }
  | lhs EQOP ADC atom atom carry                  { (!lnum, `ADC (`LVPLAIN $1, $4, $5, $6)) }
  | ADCS lcarry lval atom atom carry              { (!lnum, `ADCS ($2, $3, $4, $5, $6)) }
  | lhs DOT lhs EQOP ADCS atom atom carry         { (!lnum, `ADCS (`LVCARRY $1, `LVPLAIN $3, $6, $7, $8)) }
  | SUB lval atom atom                            { (!lnum, `SUB ($2, $3, $4)) }
  | SUB lval_v atom_v atom_v                      { (!lnum, `VSUB ($2, $3, $4)) }
  | lhs EQOP SUB atom atom                        { (!lnum, `SUB (`LVPLAIN $1, $4, $5)) }
  | SUBC lcarry lval atom atom                    { (!lnum, `SUBC ($2, $3, $4, $5)) }
  | SUBC lcarry_v lval_v atom_v atom_v            { (!lnum, `VSUBC ($2, $3, $4, $5)) }
  | lhs DOT lhs EQOP SUBC atom atom               { (!lnum, `SUBC (`LVCARRY $1, `LVPLAIN $3, $6, $7)) }
  | SUBB lcarry lval atom atom                    { (!lnum, `SUBB ($2, $3, $4, $5)) }
  | SUBB lcarry_v lval_v atom_v atom_v            { (!lnum, `VSUBB ($2, $3, $4, $5)) }
  | lhs DOT lhs EQOP SUBB atom atom               { (!lnum, `SUBB (`LVCARRY $1, `LVPLAIN $3, $6, $7)) }
  | SBC lval atom atom carry                      { (!lnum, `SBC ($2, $3, $4, $5)) }
  | lhs EQOP SBC atom atom carry                  { (!lnum, `SBC (`LVPLAIN $1, $4, $5, $6)) }
  | SBCS lcarry lval atom atom carry              { (!lnum, `SBCS ($2, $3, $4, $5, $6)) }
  | lhs DOT lhs EQOP SBCS atom atom carry         { (!lnum, `SBCS (`LVCARRY $1, `LVPLAIN $3, $6, $7, $8)) }
  | SBB lval atom atom carry                      { (!lnum, `SBB ($2, $3, $4, $5)) }
  | lhs EQOP SBB atom atom carry                  { (!lnum, `SBB (`LVPLAIN $1, $4, $5, $6)) }
  | SBBS lcarry lval atom atom carry              { (!lnum, `SBBS ($2, $3, $4, $5, $6)) }
  | lhs DOT lhs EQOP SBBS atom atom carry         { (!lnum, `SBBS (`LVCARRY $1, `LVPLAIN $3, $6, $7, $8)) }
  | MUL lval atom atom                            { (!lnum, `MUL ($2, $3, $4)) }
  | MUL lval_v atom_v atom_v                      { (!lnum, `VMUL ($2, $3, $4)) }
  | lhs EQOP MUL atom atom                        { (!lnum, `MUL (`LVPLAIN $1, $4, $5)) }
  | MULS lcarry lval atom atom                    { (!lnum, `MULS ($2, $3, $4, $5)) }
  | lhs DOT lhs EQOP MULS atom atom               { (!lnum, `MULS (`LVCARRY $1, `LVPLAIN $3, $6, $7)) }
  | MULL lval lval atom atom                      { (!lnum, `MULL ($2, $3, $4, $5)) }
  | MULL lval_v lval_v atom_v atom_v              { (!lnum, `VMULL ($2, $3, $4, $5)) }
  | lhs DOT lhs EQOP MULL atom atom               { (!lnum, `MULL (`LVPLAIN $1, `LVPLAIN $3, $6, $7)) }
  | MULJ lval atom atom                           { (!lnum, `MULJ ($2, $3, $4)) }
  | MULJ lval_v atom_v atom_v                     { (!lnum, `VMULJ ($2, $3, $4)) }
  | lhs EQOP MULJ atom atom                       { (!lnum, `MULJ (`LVPLAIN $1, $4, $5)) }
  | SPLIT lval lval atom const                    { (!lnum, `SPLIT ($2, $3, $4, $5)) }
  | SPLIT lval_v lval_v atom_v const              { (!lnum, `VSPLIT ($2, $3, $4, $5)) }
  | lhs DOT lhs EQOP SPLIT atom const             { (!lnum, `SPLIT (`LVPLAIN $1, `LVPLAIN $3, $6, $7)) }
  | SPL lval lval atom const                      { (!lnum, `SPL ($2, $3, $4, $5)) }
  | lhs DOT lhs EQOP SPL atom const               { (!lnum, `SPL (`LVPLAIN $1, `LVPLAIN $3, $6, $7)) }
  | UADD lval atom atom                           { (!lnum, `UADD ($2, $3, $4)) }
  | UADD lval_v atom_v atom_v                     { (!lnum, `VUADD ($2, $3, $4)) }
  | lhs EQOP UADD atom atom                       { (!lnum, `UADD (`LVPLAIN $1, $4, $5)) }
  | UADDS lcarry lval atom atom                   { (!lnum, `UADDS ($2, $3, $4, $5)) }
  | UADDS lcarry_v lval_v atom_v atom_v           { (!lnum, `VUADDS ($2, $3, $4, $5)) }
  | lhs DOT lhs EQOP UADDS atom atom              { (!lnum, `UADDS (`LVCARRY $1, `LVPLAIN $3, $6, $7)) }
  | UADC lval atom atom carry                     { (!lnum, `UADC ($2, $3, $4, $5)) }
  | lhs EQOP UADC atom atom carry                 { (!lnum, `UADC (`LVPLAIN $1, $4, $5, $6)) }
  | UADCS lcarry lval atom atom carry             { (!lnum, `UADCS ($2, $3, $4, $5, $6)) }
  | lhs DOT lhs EQOP UADCS atom atom carry        { (!lnum, `UADCS (`LVCARRY $1, `LVPLAIN $3, $6, $7, $8)) }
  | USUB lval atom atom                           { (!lnum, `USUB ($2, $3, $4)) }
  | lhs EQOP USUB atom atom                       { (!lnum, `USUB (`LVPLAIN $1, $4, $5)) }
  | USUBC lcarry lval atom atom                   { (!lnum, `USUBC ($2, $3, $4, $5)) }
  | lhs DOT lhs EQOP USUBC atom atom              { (!lnum, `USUBC (`LVCARRY $1, `LVPLAIN $3, $6, $7)) }
  | USUBB lcarry lval atom atom                   { (!lnum, `USUBB ($2, $3, $4, $5)) }
  | lhs DOT lhs EQOP USUBB atom atom              { (!lnum, `USUBB (`LVCARRY $1, `LVPLAIN $3, $6, $7)) }
  | USBC lval atom atom carry                     { (!lnum, `USBC ($2, $3, $4, $5)) }
  | lhs EQOP USBC atom atom carry                 { (!lnum, `USBC (`LVPLAIN $1, $4, $5, $6)) }
  | USBCS lcarry lval atom atom carry             { (!lnum, `USBCS ($2, $3, $4, $5, $6)) }
  | lhs DOT lhs EQOP USBCS atom atom carry        { (!lnum, `USBCS (`LVCARRY $1, `LVPLAIN $3, $6, $7, $8)) }
  | USBB lval atom atom carry                     { (!lnum, `USBB ($2, $3, $4, $5)) }
  | lhs EQOP USBB atom atom carry                 { (!lnum, `USBB (`LVPLAIN $1, $4, $5, $6)) }
  | USBBS lcarry lval atom atom carry             { (!lnum, `USBBS ($2, $3, $4, $5, $6)) }
  | lhs DOT lhs EQOP USBBS atom atom carry        { (!lnum, `USBBS (`LVCARRY $1, `LVPLAIN $3, $6, $7, $8)) }
  | UMUL lval atom atom                           { (!lnum, `UMUL ($2, $3, $4)) }
  | UMUL lval_v atom_v atom_v                     { (!lnum, `VUMUL ($2, $3, $4)) }
  | lhs EQOP UMUL atom atom                       { (!lnum, `UMUL (`LVPLAIN $1, $4, $5)) }
  | UMULS lcarry lval atom atom                   { (!lnum, `UMULS ($2, $3, $4, $5)) }
  | lhs DOT lhs EQOP UMULS atom atom              { (!lnum, `UMULS (`LVCARRY $1, `LVPLAIN $3, $6, $7)) }
  | UMULL lval lval atom atom                     { (!lnum, `UMULL ($2, $3, $4, $5)) }
  | UMULL lval_v lval_v atom_v atom_v             { (!lnum, `VUMULL ($2, $3, $4, $5)) }
  | lhs DOT lhs EQOP UMULL atom atom              { (!lnum, `UMULL (`LVPLAIN $1, `LVPLAIN $3, $6, $7)) }
  | UMULJ lval atom atom                          { (!lnum, `UMULJ ($2, $3, $4)) }
  | UMULJ lval_v atom_v atom_v                    { (!lnum, `VUMULJ ($2, $3, $4)) }
  | lhs EQOP UMULJ atom atom                      { (!lnum, `UMULJ (`LVPLAIN $1, $4, $5)) }
  | USPLIT lval lval atom const                   { (!lnum, `USPLIT ($2, $3, $4, $5)) }
  | USPLIT lval_v lval_v atom_v const             { (!lnum, `VUSPLIT ($2, $3, $4, $5)) }
  | lhs DOT lhs EQOP USPLIT atom const            { (!lnum, `USPLIT (`LVPLAIN $1, `LVPLAIN $3, $6, $7)) }
  | USPL lval lval atom const                     { (!lnum, `USPL ($2, $3, $4, $5)) }
  | lhs DOT lhs EQOP USPL atom const              { (!lnum, `USPL (`LVPLAIN $1, `LVPLAIN $3, $6, $7)) }
  | SADD lval atom atom                           { (!lnum, `SADD ($2, $3, $4)) }
  | SADD lval_v atom_v atom_v                     { (!lnum, `VSADD ($2, $3, $4)) }
  | lhs EQOP SADD atom atom                       { (!lnum, `SADD (`LVPLAIN $1, $4, $5)) }
  | SADDS lcarry lval atom atom                   { (!lnum, `SADDS ($2, $3, $4, $5)) }
  | SADDS lcarry_v lval_v atom_v atom_v           { (!lnum, `VSADDS ($2, $3, $4, $5)) }
  | lhs DOT lhs EQOP SADDS atom atom              { (!lnum, `SADDS (`LVCARRY $1, `LVPLAIN $3, $6, $7)) }
  | SADC lval atom atom carry                     { (!lnum, `SADC ($2, $3, $4, $5)) }
  | lhs EQOP SADC atom atom carry                 { (!lnum, `SADC (`LVPLAIN $1, $4, $5, $6)) }
  | SADCS lcarry lval atom atom carry             { (!lnum, `SADCS ($2, $3, $4, $5, $6)) }
  | lhs DOT lhs EQOP SADCS atom atom carry        { (!lnum, `SADCS (`LVCARRY $1, `LVPLAIN $3, $6, $7, $8)) }
  | SSUB lval atom atom                           { (!lnum, `SSUB ($2, $3, $4)) }
  | lhs EQOP SSUB atom atom                       { (!lnum, `SSUB (`LVPLAIN $1, $4, $5)) }
  | SSUBC lcarry lval atom atom                   { (!lnum, `SSUBC ($2, $3, $4, $5)) }
  | lhs DOT lhs EQOP SSUBC atom atom              { (!lnum, `SSUBC (`LVCARRY $1, `LVPLAIN $3, $6, $7)) }
  | SSUBB lcarry lval atom atom                   { (!lnum, `SSUBB ($2, $3, $4, $5)) }
  | lhs DOT lhs EQOP SSUBB atom atom              { (!lnum, `SSUBB (`LVCARRY $1, `LVPLAIN $3, $6, $7)) }
  | SSBC lval atom atom carry                     { (!lnum, `SSBC ($2, $3, $4, $5)) }
  | lhs EQOP SSBC atom atom carry                 { (!lnum, `SSBC (`LVPLAIN $1, $4, $5, $6)) }
  | SSBCS lcarry lval atom atom carry             { (!lnum, `SSBCS ($2, $3, $4, $5, $6)) }
  | lhs DOT lhs EQOP SSBCS atom atom carry        { (!lnum, `SSBCS (`LVCARRY $1, `LVPLAIN $3, $6, $7, $8)) }
  | SSBB lval atom atom carry                     { (!lnum, `SSBB ($2, $3, $4, $5)) }
  | lhs EQOP SSBB atom atom carry                 { (!lnum, `SSBB (`LVPLAIN $1, $4, $5, $6)) }
  | SSBBS lcarry lval atom atom carry             { (!lnum, `SSBBS ($2, $3, $4, $5, $6)) }
  | lhs DOT lhs EQOP SSBBS atom atom carry        { (!lnum, `SSBBS (`LVCARRY $1, `LVPLAIN $3, $6, $7, $8)) }
  | SMUL lval atom atom                           { (!lnum, `SMUL ($2, $3, $4) )}
  | SMUL lval_v atom_v atom_v                     { (!lnum, `VSMUL ($2, $3, $4) )}
  | lhs EQOP SMUL atom atom                       { (!lnum, `SMUL (`LVPLAIN $1, $4, $5) )}
  | SMULS lcarry lval atom atom                   { (!lnum, `SMULS ($2, $3, $4, $5)) }
  | lhs DOT lhs EQOP SMULS atom atom              { (!lnum, `SMULS (`LVCARRY $1, `LVPLAIN $3, $6, $7)) }
  | SMULL lval lval atom atom                     { (!lnum, `SMULL ($2, $3, $4, $5)) }
  | SMULL lval_v lval_v atom_v atom_v             { (!lnum, `VSMULL ($2, $3, $4, $5)) }
  | lhs DOT lhs EQOP SMULL atom atom              { (!lnum, `SMULL (`LVPLAIN $1, `LVPLAIN $3, $6, $7)) }
  | SMULJ lval atom atom                          { (!lnum, `SMULJ ($2, $3, $4)) }
  | SMULJ lval_v atom_v atom_v                    { (!lnum, `VSMULJ ($2, $3, $4)) }
  | lhs EQOP SMULJ atom atom                      { (!lnum, `SMULJ (`LVPLAIN $1, $4, $5)) }
  | SSPLIT lval lval atom const                   { (!lnum, `SSPLIT ($2, $3, $4, $5)) }
  | SSPLIT lval_v lval_v atom_v const             { (!lnum, `VSSPLIT ($2, $3, $4, $5)) }
  | lhs DOT lhs EQOP SSPLIT atom const            { (!lnum, `SSPLIT (`LVPLAIN $1, `LVPLAIN $3, $6, $7)) }
  | SSPL lval lval atom const                     { (!lnum, `SSPL ($2, $3, $4, $5)) }
  | lhs DOT lhs EQOP SSPL atom const              { (!lnum, `SSPL (`LVPLAIN $1, `LVPLAIN $3, $6, $7)) }
  | AND lval atom atom                            { (!lnum, `AND ($2, $3, $4)) }
  | lhs EQOP AND atom atom                        { (!lnum, `AND (`LVPLAIN $1, $4, $5)) }
  | OR lval atom atom                             { (!lnum, `OR ($2, $3, $4)) }
  | lhs EQOP OR atom atom                         { (!lnum, `OR (`LVPLAIN $1, $4, $5)) }
  | XOR lval atom atom                            { (!lnum, `XOR ($2, $3, $4)) }
  | lhs EQOP XOR atom atom                        { (!lnum, `XOR (`LVPLAIN $1, $4, $5)) }
  | NOT lval atom                                 { (!lnum, `NOT ($2, $3)) }
  | lhs EQOP NOT atom                             { (!lnum, `NOT (`LVPLAIN $1, $4)) }
  | CAST lval_or_lcarry atom                      { (!lnum, `CAST (None, $2, $3)) }
  // XXX: the "[]" is to workaround a r/r conflict
  | CAST LSQUARE RSQUARE lval_v atom_v            { (!lnum, `VCAST (None, $4, $5)) }
  | CAST LSQUARE lval_or_lcarry RSQUARE lval_or_lcarry atom
                                                  { (!lnum, `CAST (Some $3, $5, $6)) }
  | lhs EQOP CAST atom                            { (!lnum, `CAST (None, `LV $1, $4)) }
  | VPC lval_or_lcarry atom                       { (!lnum, `VPC ($2, $3)) }
  | lhs EQOP VPC atom                             { (!lnum, `VPC (`LV $1, $4)) }
  | JOIN lval atom atom                           { (!lnum, `JOIN ($2, $3, $4)) }
  | lhs EQOP JOIN atom atom                       { (!lnum, `JOIN (`LVPLAIN $1, $4, $5)) }
  | ASSERT bexp_prove_with_list                   { (!lnum, `ASSERT $2) }
  | EASSERT ebexp_prove_with_list                 { (!lnum, `EASSERT $2) }
  | RASSERT rbexp_prove_with_list                 { (!lnum, `RASSERT $2) }
  | ASSUME bexp                                   { (!lnum, `ASSUME $2) }
  | CUT bexp_prove_with_list                      { (!lnum, `CUT $2) }
  | ECUT ebexp_prove_with_list                    { (!lnum, `ECUT $2) }
  | RCUT rbexp_prove_with_list                    { (!lnum, `RCUT $2) }
  | GHOST gvars COLON bexp                        { (!lnum, `GHOST ($2, $4)) }
  /* Extensions */
  | CALL ID LPAR actuals RPAR                     { (!lnum, `CALL ($2, $4)) }
  | NOP                                           { (!lnum, `NOP) }
  /* Errors */
  | MOV error                                     { raise_at !lnum ("Bad mov instruction") }
  | BROADCAST error                               { raise_at !lnum ("Bad broadcast instruction") }
  | ADD error                                     { raise_at !lnum ("Bad add instruction") }
  | ADDS error                                    { raise_at !lnum ("Bad adds instruction") }
  | ADC error                                     { raise_at !lnum ("Bad adc instruction") }
  | ADCS error                                    { raise_at !lnum ("Bad adcs instruction") }
  | SUB error                                     { raise_at !lnum ("Bad sub instruction") }
  | SUBC error                                    { raise_at !lnum ("Bad subc instruction") }
  | SUBB error                                    { raise_at !lnum ("Bad subb instruction") }
  | SBC error                                     { raise_at !lnum ("Bad sbc instruction") }
  | SBCS error                                    { raise_at !lnum ("Bad sbcs instruction") }
  | SBB error                                     { raise_at !lnum ("Bad sbb instruction") }
  | SBBS error                                    { raise_at !lnum ("Bad sbbs instruction") }
  | MUL error                                     { raise_at !lnum ("Bad mul instruction") }
  | MULL error                                    { raise_at !lnum ("Bad mull instruction") }
  | SPLIT error                                   { raise_at !lnum ("Bad split instruction") }
  | SPL error                                     { raise_at !lnum ("Bad spl instruction") }
  | UADD error                                    { raise_at !lnum ("Bad uadd instruction") }
  | UADDS error                                   { raise_at !lnum ("Bad uadds instruction") }
  | UADC error                                    { raise_at !lnum ("Bad uadc instruction") }
  | UADCS error                                   { raise_at !lnum ("Bad uadcs instruction") }
  | USUB error                                    { raise_at !lnum ("Bad usub instruction") }
  | USUBC error                                   { raise_at !lnum ("Bad usubc instruction") }
  | USUBB error                                   { raise_at !lnum ("Bad usubb instruction") }
  | USBC error                                    { raise_at !lnum ("Bad usbc instruction") }
  | USBCS error                                   { raise_at !lnum ("Bad usbcs instruction") }
  | USBB error                                    { raise_at !lnum ("Bad usbb instruction") }
  | USBBS error                                   { raise_at !lnum ("Bad usbbs instruction") }
  | UMUL error                                    { raise_at !lnum ("Bad umul instruction") }
  | UMULL error                                   { raise_at !lnum ("Bad umull instruction") }
  | USPLIT error                                  { raise_at !lnum ("Bad usplit instruction") }
  | USPL error                                    { raise_at !lnum ("Bad uspl instruction") }
  | SADD error                                    { raise_at !lnum ("Bad sadd instruction") }
  | SADDS error                                   { raise_at !lnum ("Bad sadds instruction") }
  | SADC error                                    { raise_at !lnum ("Bad sadc instruction") }
  | SADCS error                                   { raise_at !lnum ("Bad sadcs instruction") }
  | SSUB error                                    { raise_at !lnum ("Bad ssub instruction") }
  | SSUBC error                                   { raise_at !lnum ("Bad ssubc instruction") }
  | SSUBB error                                   { raise_at !lnum ("Bad ssubb instruction") }
  | SSBC error                                    { raise_at !lnum ("Bad ssbc instruction") }
  | SSBCS error                                   { raise_at !lnum ("Bad ssbcs instruction") }
  | SSBB error                                    { raise_at !lnum ("Bad ssbb instruction") }
  | SSBBS error                                   { raise_at !lnum ("Bad ssbbs instruction") }
  | SMUL error                                    { raise_at !lnum ("Bad smul instruction") }
  | SMULL error                                   { raise_at !lnum ("Bad smull instruction") }
  | SSPLIT error                                  { raise_at !lnum ("Bad ssplit instruction") }
  | SSPL error                                    { raise_at !lnum ("Bad sspl instruction") }
  | SHL error                                     { raise_at !lnum ("Bad shl instruction") }
  | SHLS error                                    { raise_at !lnum ("Bad shls instruction") }
  | SHR error                                     { raise_at !lnum ("Bad shr instruction") }
  | SHRS error                                    { raise_at !lnum ("Bad shrs instruction") }
  | SAR error                                     { raise_at !lnum ("Bad sar instruction") }
  | SARS error                                    { raise_at !lnum ("Bad sars instruction") }
  | CSHL error                                    { raise_at !lnum ("Bad cshl instruction") }
  | CSHR error                                    { raise_at !lnum ("Bad cshr instruction") }
  | CSHRS error                                   { raise_at !lnum ("Bad cshrs instruction") }
  | ROL error                                     { raise_at !lnum ("Bad rol instruction") }
  | ROR error                                     { raise_at !lnum ("Bad ror instruction") }
  | NONDET error                                  { raise_at !lnum ("Bad nondet instruction") }
  | CALL ID LPAR error                            { raise_at !lnum (("Invalid actuals in the call instruction: " ^ $2)) }
  | CALL error                                    { raise_at !lnum ("Bad call instruction") }
;

ebexp_prove_with_list:
  ebexp_prove_with                                { fun cm vm ym gm -> [($1 cm vm ym gm)] }
| ebexp_prove_with COMMA ebexp_prove_with_list    { fun cm vm ym gm -> ($1 cm vm ym gm)::($3 cm vm ym gm) }
;

rbexp_prove_with_list:
  rbexp_prove_with                                { fun cm vm ym gm -> [($1 cm vm ym gm)] }
| rbexp_prove_with COMMA rbexp_prove_with_list    { fun cm vm ym gm -> ($1 cm vm ym gm)::($3 cm vm ym gm) }
;

bexp_prove_with_list:
  TRUE                                            { fun _cm _vm _ym _gm -> ([(etrue, [])], [(rtrue, [])]) }
| ebexp_prove_with_list VBAR rbexp_prove_with_list
                                                  { fun cm vm ym gm -> ($1 cm vm ym gm, $3 cm vm ym gm) }
;

ebexp_prove_with:
  ebexp                                           { fun cm vm ym gm -> ($1 cm vm ym gm, []) }
| ebexp PROVE WITH LSQUARE prove_with_specs RSQUARE
                                                  { fun cm vm ym gm -> ($1 cm vm ym gm, $5 cm) }
| ebexp PROVE WITH LSQUARE prove_with_specs error { raise_at !lnum ("A ] is missing.") }
| ebexp PROVE WITH LSQUARE error                  { raise_at !lnum ("Incorrect prove-with clauses.") }
| ebexp PROVE WITH error                          { raise_at !lnum ("Enclose the prove-with clauses in [].") }
;

rbexp_prove_with:
  rbexp                                           { fun cm vm ym gm -> ($1 cm vm ym gm, []) }
| rbexp PROVE WITH LSQUARE prove_with_specs RSQUARE
                                                  { fun cm vm ym gm -> ($1 cm vm ym gm, $5 cm) }
| rbexp PROVE WITH LSQUARE prove_with_specs error { raise_at !lnum ("A ] is missing.") }
| rbexp PROVE WITH LSQUARE error                  { raise_at !lnum ("Incorrect prove-with clauses.") }
| rbexp PROVE WITH error                          { raise_at !lnum ("Enclose the prove-with clauses in [].") }
;

prove_with_specs:
    prove_with_spec                               { fun cm -> [$1 cm] }
  | prove_with_spec COMMA prove_with_specs        { fun cm -> ($1 cm)::($3 cm) }
;

prove_with_spec:
    PRECONDITION                                  { fun _ -> Precondition }
  | CUTS LSQUARE complex_const_list RSQUARE       { fun cm -> Cuts ($3 cm) }
  | ALL CUTS                                      { fun _ -> AllCuts }
  | ALL ASSUMES                                   { fun _ -> AllAssumes }
  | ALL GHOSTS                                    { fun _ -> AllGhosts }
  | ALGEBRA SOLVER ID                             { fun _ -> AlgebraSolver (Options.Std.parse_algebra_solver $3) }
  | ALGEBRA SOLVER SMT COLON path                 { fun _ -> AlgebraSolver (Options.Std.parse_algebra_solver ("smt:" ^ $5)) }
  | RANGE SOLVER path                             { fun _ -> RangeSolver $3 }
  | QFBV SOLVER path                              { fun _ -> RangeSolver $3 }
;

path:
    ID                                            { $1 }
  | PATH                                          { $1 }
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
  ebexp_atom LANDOP ebexp                       { fun cm vm ym gm -> Eand($1 cm vm ym gm, $3 cm vm ym gm) }
  | ebexp_atom                                  { fun cm vm ym gm -> $1 cm vm ym gm }
;

ebexp_atom:
    TRUE                                          { fun _cm _vm _ym _gm -> Etrue }
  | EQ eexp eexp_no_unary                         { fun cm vm ym gm -> Eeq ($2 cm vm ym gm, $3 cm vm ym gm) }
  | EQMOD eexp eexp_no_unary eexp_no_unary        { fun cm vm ym gm -> Eeqmod ($2 cm vm ym gm, $3 cm vm ym gm, [ $4 cm vm ym gm ]) }
  | EQMOD eexp eexp_no_unary LSQUARE eexp_no_unarys RSQUARE
                                                  { fun cm vm ym gm -> Eeqmod ($2 cm vm ym gm, $3 cm vm ym gm, $5 cm vm ym gm) }
  | AND ebexp_atom_without_eqmod ebexp_atom       { fun cm vm ym gm -> Eand ($2 cm vm ym gm, $3 cm vm ym gm) }
  | LPAR ebexp RPAR                               { fun cm vm ym gm -> $2 cm vm ym gm }
  | eexp EQOP eexp eq_suffix                      { fun cm vm ym gm ->
                                                      match $4 cm vm ym gm with
                                                      | None -> Eeq ($1 cm vm ym gm, $3 cm vm ym gm)
                                                      | Some ms -> Eeqmod ($1 cm vm ym gm, $3 cm vm ym gm, ms)
                                                  }
  | AND LSQUARE ebexps RSQUARE                    { fun cm vm ym gm -> eands ($3 cm vm ym gm) }
  | LANDOP LSQUARE ebexps RSQUARE                 { fun cm vm ym gm -> eands ($3 cm vm ym gm) }
  /* Errors */
/*  | ID error                                      { raise_at !lnum ("Invalid algebraic predicate after " ^ $1 ^ ".") }*/
;

ebexp_atom_without_eqmod:
    TRUE                                          { fun _cm _vm _ym _gm -> Etrue }
  | EQ eexp eexp_no_unary                         { fun cm vm ym gm -> Eeq ($2 cm vm ym gm, $3 cm vm ym gm) }
  | EQMOD eexp eexp_no_unary eexp_no_unary        { fun cm vm ym gm -> Eeqmod ($2 cm vm ym gm, $3 cm vm ym gm, [ $4 cm vm ym gm ]) }
  | EQMOD eexp eexp_no_unary LSQUARE eexp_no_unarys RSQUARE
                                                  { fun cm vm ym gm -> Eeqmod ($2 cm vm ym gm, $3 cm vm ym gm, $5 cm vm ym gm) }
  | AND ebexp_atom_without_eqmod ebexp_atom_without_eqmod
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
  | LPAR MOD eexp RPAR                            { fun cm vm ym gm -> Some [ $3 cm vm ym gm ] }
  | LPAR MOD LSQUARE eexps RSQUARE RPAR           { fun cm vm ym gm -> Some ($4 cm vm ym gm) }
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
    defined_var                                   { fun cm vm ym gm -> Evar (resolve_var_with !lnum $1 cm vm ym gm) }
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
                                                      let i = $3 cm in
                                                      (* there are examples that have extremely large exponents *)
                                                      (*
                                                      match e with
                                                      | Econst n ->
                                                         let c = try Z.pow n (Z.to_int i) with Z.Overflow -> big_pow n i in
                                                         Econst c
                                                      | _ ->
                                                      *)
                                                         if Z.equal i Z.zero then Econst Z.one
                                                         else if Z.equal i Z.one then e
                                                         else epow e (Econst i)
                                                  }
  | ULIMBS const LSQUARE eexps RSQUARE            { fun cm vm ym gm -> limbs (Z.to_int ($2 cm)) ($4 cm vm ym gm) }
;

eexp_no_unarys:
    eexp_no_unary COMMA eexp_no_unarys            { fun cm vm ym gm -> ($1 cm vm ym gm)::($3 cm vm ym gm) }
  | eexp_no_unary                                 { fun cm vm ym gm -> [ $1 cm vm ym gm ] }
;

eexp_no_unary:
    defined_var                                   { fun cm vm ym gm -> Evar (resolve_var_with !lnum $1 cm vm ym gm) }
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
                                                      let i = $3 cm in
                                                      (* there are examples that have extremely large exponents *)
                                                      (*
                                                      match e with
                                                      | Econst n ->
                                                         let c = try Z.pow n (Z.to_int i) with Z.Overflow -> big_pow n i in
                                                         Econst c
                                                      | _ ->
                                                      *)
                                                         if Z.equal i Z.zero then Econst Z.one
                                                         else if Z.equal i Z.one then e
                                                         else epow e (Econst i)
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
    rbexp_atom LANDOP rbexp_and                   { fun cm vm ym gm -> Rand ($1 cm vm ym gm, $3 cm vm ym gm) }
  | rbexp_atom                                    { fun cm vm ym gm -> $1 cm vm ym gm }
;

rbexp_atom:
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
  | NEG rbexp_atom                                { fun cm vm ym gm -> Rneg ($2 cm vm ym gm) }
  | NEGOP rbexp_atom                              { fun cm vm ym gm -> Rneg ($2 cm vm ym gm) }
  | AND rbexp_atom_without_eqmod rbexp_atom
                                                  { fun cm vm ym gm -> Rand ($2 cm vm ym gm, $3 cm vm ym gm) }
  | OR rbexp_atom_without_eqmod rbexp_atom        { fun cm vm ym gm -> Ror ($2 cm vm ym gm, $3 cm vm ym gm) }
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
                                                        | Some (f, m) ->
                                                          let wm = size_of_rexp m in
                                                          begin
                                                            if w1 != wm then raise_at lno ("Widths of range expressions mismatch: "
                                                                                           ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                           ^ string_of_rexp m ^ " (width " ^ string_of_int wm ^ ")")
                                                            else
                                                              f w1 e1 e2 m
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
  | EQUMOD rexp rexp rexp                         { let lno = !lnum in
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
  | EQSMOD rexp rexp rexp                         { let lno = !lnum in
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
                                                        reqsmod w1 e1 e2 m
                                                  }
  | EQSREM rexp rexp rexp                         { let lno = !lnum in
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
                                                        reqsrem w1 e1 e2 m
                                                  }
;

rbexp_atom_without_eqmod:
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
  | NEG rbexp_atom_without_eqmod                  { fun cm vm ym gm -> Rneg ($2 cm vm ym gm) }
  | AND rbexp_atom_without_eqmod rbexp_atom_without_eqmod
                                                  { fun cm vm ym gm -> Rand ($2 cm vm ym gm, $3 cm vm ym gm) }
  | OR rbexp_atom_without_eqmod rbexp_atom_without_eqmod
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
  | EQUMOD rexp rexp rexp                         { let lno = !lnum in
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
  | EQSMOD rexp rexp rexp                         { let lno = !lnum in
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
                                                        reqsmod w1 e1 e2 m
                                                  }
  | EQSREM rexp rexp rexp                         { let lno = !lnum in
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
                                                        reqsrem w1 e1 e2 m
                                                  }
;

req_suffix:
                                                  { fun _cm _vm _ym _gm -> None }
  | LPAR MOD rexp RPAR                            { fun cm vm ym gm -> Some (reqmod, $3 cm vm ym gm) }
  | LPAR UMOD rexp RPAR                           { fun cm vm ym gm -> Some (reqmod, $3 cm vm ym gm) }
  | LPAR SMOD rexp RPAR                           { fun cm vm ym gm -> Some (reqsmod, $3 cm vm ym gm) }
  | LPAR SREM rexp RPAR                           { fun cm vm ym gm -> Some (reqsrem, $3 cm vm ym gm) }
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
    defined_var                                   { fun cm vm ym gm -> Rvar (resolve_var_with !lnum $1 cm vm ym gm) }
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

  | SHL rexp rexp                                 { let lno = !lnum in
                                                    fun cm vm ym gm ->
                                                      let e1 = $2 cm vm ym gm in
                                                      let e2 = $3 cm vm ym gm in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        Rbinop (w1, Rshl, e1, e2) }
  | SHR rexp rexp                                 { let lno = !lnum in
                                                    fun cm vm ym gm ->
                                                      let e1 = $2 cm vm ym gm in
                                                      let e2 = $3 cm vm ym gm in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        Rbinop (w1, Rlshr, e1, e2) }
  | SAR rexp rexp                                 { let lno = !lnum in
                                                    fun cm vm ym gm ->
                                                      let e1 = $2 cm vm ym gm in
                                                      let e2 = $3 cm vm ym gm in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        Rbinop (w1, Rashr, e1, e2) }
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
  | rexp SHLOP rexp                               { let lno = !lnum in
                                                    fun cm vm ym gm ->
                                                      let e1 = $1 cm vm ym gm in
                                                      let e2 = $3 cm vm ym gm in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        Rbinop (w1, Rshl, e1, e2) }
  | rexp SHROP rexp                               { let lno = !lnum in
                                                    fun cm vm ym gm ->
                                                      let e1 = $1 cm vm ym gm in
                                                      let e2 = $3 cm vm ym gm in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        Rbinop (w1, Rlshr, e1, e2) }
  | rexp SAROP rexp                               { let lno = !lnum in
                                                    fun cm vm ym gm ->
                                                      let e1 = $1 cm vm ym gm in
                                                      let e2 = $3 cm vm ym gm in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        Rbinop (w1, Rashr, e1, e2) }
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
    ID                                            { `LVPLAIN { lvname = $1; lvtyphint = None; } }
  | ID AT typ                                     { `LVPLAIN { lvname = $1; lvtyphint = Some $3; } }
  | typ ID                                        { `LVPLAIN { lvname = $2; lvtyphint = Some $1; } }
  | ID AT error                                   { raise_at !lnum ("Invalid type of variable " ^ $1) }
;

lval_v:
    VEC_ID                                        { `LVVECT { vecname = $1; vectyphint = None; } }
  | VEC_ID AT typ_vec                             { `LVVECT { vecname = $1; vectyphint = Some $3; } }
  | LSQUARE lval_scalars RSQUARE                  { `LVVLIT $2 }

lval_scalars:
    lval                                          { [$1] }
  | lval COMMA lval_scalars                       { $1::$3 }

lcarry:
    ID                                            { `LVCARRY { lvname = $1; lvtyphint = None; } }
  | ID AT typ                                     { `LVCARRY { lvname = $1; lvtyphint = Some $3; } }
  | typ ID                                        { `LVCARRY { lvname = $2; lvtyphint = Some $1; } }
;

lcarry_v:
    VEC_ID                                        { `LVVECT { vecname = $1; vectyphint = None; } }
  | VEC_ID AT typ_vec                             { `LVVECT { vecname = $1; vectyphint = Some $3; } }
  | LSQUARE lval_scalars RSQUARE                  { `LVVLIT $2 }

lval_or_lcarry:
    ID                                            { `LV { lvname = $1; lvtyphint = None; } }
  | ID AT typ                                     { `LV { lvname = $1; lvtyphint = Some $3; } }
  | typ ID                                        { `LV { lvname = $2; lvtyphint = Some $1; } }
;

lhs:
    ID                                            { { lvname = $1; lvtyphint = None; } }
  | ID AT typ                                     { { lvname = $1; lvtyphint = Some $3; } }
  | typ ID                                        { { lvname = $2; lvtyphint = Some $1; } }
  | ID AT error                                   { raise_at !lnum ("Invalid type of variable " ^ $1) }
;

actuals:
    actual_atoms                                  { fun tys cm vm ym gm -> $1 tys cm vm ym gm }
  |                                               { fun _tys _cm _vm _ym _gm -> [] }
;

actual_atoms:
    actual_atom                                   { fun tys cm vm ym gm ->
                                                      let (_tys, vs) = $1 tys cm vm ym gm in
                                                      vs
                                                  }
  | actual_atom COMMA actual_atoms                { fun tys cm vm ym gm ->
                                                      let (tys, vs) = $1 tys cm vm ym gm in
                                                      vs@($3 tys cm vm ym gm)
                                                  }
;

/* We don't check if the actual variables are defined or not because they may just be variable names of procedure outputs. */
actual_atom:
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

atom:
    const                                         { `ACONST { atmtyphint = None; atmvalue = $1; } }
  | const AT typ                                  { `ACONST { atmtyphint = Some $3; atmvalue = $1; } }
  | typ const                                     { `ACONST { atmtyphint = Some $1; atmvalue = $2; } }
  | defined_var                                   { ($1 :> atom_t) }
  /*| LPAR atom RPAR                              { fun cm vm ym gm -> $2 cm vm ym gm } source of reduce/reduce conflict*/
;

atom_v:
    VEC_ID                                        { `AVECT { vecname = $1; vectyphint = None; } }
  | VEC_ID AT typ_vec                             { `AVECT { vecname = $1; vectyphint = Some $3; } }
  | LSQUARE atom_scalars RSQUARE                  { `AVLIT $2 }

atom_scalars:
    atom                                          { [$1] }
  | atom COMMA atom_scalars                       { $1::$3 }

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
    ID                                            { `AVAR { atmtyphint = None;    atmname = $1; } }
  | ID AT typ                                     { `AVAR { atmtyphint = Some $3; atmname = $1; } }
  | typ ID                                        { `AVAR { atmtyphint = Some $1; atmname = $2; } }
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

complex_const_list:
    complex_const                                 { fun cm -> [Z.to_int ($1 cm)] }
  | complex_const COMMA complex_const_list        { fun cm -> (Z.to_int ($1 cm))::($3 cm) }

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
  | SUBOP const %prec UMINUS                      { fun cm -> Z.neg ($2 cm) }
  | complex_const ADDOP complex_const             { fun cm -> Z.add ($1 cm) ($3 cm) }
  | complex_const SUBOP complex_const             { fun cm -> Z.sub ($1 cm) ($3 cm) }
  | complex_const MULOP complex_const             { fun cm -> Z.mul ($1 cm) ($3 cm) }
  | complex_const POWOP complex_const             { fun cm ->
                                                    let n = $1 cm in
                                                    let i = $3 cm in
                                                    try
                                                      Z.pow n (Z.to_int i)
                                                    with Z.Overflow ->
                                                      big_pow n i
                                                  }
;

carry:
    atom                                          { $1 }
;

typ:
    UINT                                          { if $1 > 0 then uint_t $1
                                                    else raise_at !lnum ("The big-with must be positive") }
  | SINT                                          { if $1 > 0 then int_t $1
                                                    else raise_at !lnum ("The big-with must be positive") }
  | BIT                                           { bit_t }
;

typ_vec:
  typ LSQUARE NUM RSQUARE                         { let dim = Z.to_int $3 in
                                                    if dim > 0 then ($1, dim)
                                                    else raise_at !lnum ("Vector length must be positive") }
;
