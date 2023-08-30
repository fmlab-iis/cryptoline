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

  let rec transpose_lists xss =
    match xss with
    | [] -> []
    | []::_ -> []
    | (x::xs)::xss -> (x::(List.rev (List.rev_map List.hd xss)))::(transpose_lists (xs::(List.rev (List.rev_map List.tl xss))))

  let raise_at lno msg = raise (ParseError ("Parse failure at line " ^ string_of_int lno ^ ". " ^ msg))

  let vm_of_list (vs : var list) = List.fold_left (fun m v -> SM.add v.vname v m) SM.empty vs
  let _vm_of_vs (vs : VS.t) = vm_of_list (VS.elements vs)
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

  let string_of_typ_vec t =
    let (ty, n) = t in
    string_of_typ ty ^ "[" ^ string_of_int n ^ "]"

  type parsing_context =
    {
      mutable cfuns: func SM.t;       (* a map from function name to function definition *)
      mutable cconsts: Z.t SM.t;      (* a map from constant name to constant value *)
      mutable cvars: var SM.t;        (* a map from variable name to variable *)
      mutable cvecs: typ_vec SM.t;    (* a map from vector name to its type *)
      mutable ccarries: var SM.t;     (* a map from carry name to carry variable *)
      mutable cghosts: var SM.t       (* a map from ghost name to ghost variable *)
    }

  let empty_parsing_context () =
    {
      cfuns = SM.empty;
      cconsts = SM.empty;
      cvars = SM.empty;
      cvecs = SM.empty;
      ccarries = SM.empty;
      cghosts = SM.empty
    }

  let _string_of_parsing_context ctx =
    String.concat "\n" [
                    "Procedures:";
                    String.concat "\n" (List.rev (SM.fold (fun fn _ res -> ("  " ^ fn)::res) ctx.cfuns []));
                    "Constants:";
                    String.concat "\n" (List.rev (SM.fold (fun cn cv res -> ("  " ^ cn ^ " = " ^ Z.to_string cv)::res) ctx.cconsts []));
                    "Variables:";
                    String.concat "\n" (List.rev (SM.fold (fun _ v res -> ("  " ^ string_of_var ~typ:true v)::res) ctx.cvars []));
                    "Vectors:";
                    String.concat "\n" (List.rev (SM.fold (fun vn vt res -> ("  " ^ vn ^ "@" ^ string_of_typ_vec vt)::res) ctx.cvecs []));
                    "Carries:";
                    String.concat "\n" (List.rev (SM.fold (fun _ v res -> ("  " ^ string_of_var ~typ:true v)::res) ctx.ccarries []));
                    "Ghosts:";
                    String.concat "\n" (List.rev (SM.fold (fun _ v res -> ("  " ^ string_of_var ~typ:true v)::res) ctx.cghosts []))
                  ]

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
    atmvalue: parsing_context -> Z.t;
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

  let parse_typed_const ctx lno ty n_token =
    let n = n_token ctx in
    let size = size_of_typ ty in
    (* Check range *)
    let _ = if not (!Options.Std.implicit_const_conversion) && (Z.lt n (Ast.Cryptoline.min_of_typ ty) || Z.gt n (Ast.Cryptoline.max_of_typ ty))
            then raise_at lno ("The number " ^ Z.to_string n ^ " does not fit into its type " ^ string_of_typ ty ^ "."
                               ^ " Run with -implicit-const-conversion to convert the constants implicitly to fit into their types.") in
    (* Normalize the number: convert to non-negative integer *)
    let n = Utils.Std.to_positive_same_size n size in
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

  let resolve_var_with ctx lno (`AVAR {atmtyphint; atmname}) =
    let v =
      try
        SM.find atmname ctx.cvars
      with Not_found ->
        begin
          try
            SM.find atmname ctx.cghosts
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

  let resolve_atom_with ctx lno ?typ (a: atom_t) =
    match a with
    (* FIXME *)
    | `ACONST c -> (match c.atmtyphint, typ with
                    | Some ty, _
                      | None, Some ty -> parse_typed_const ctx lno ty c.atmvalue
                    | _, _ -> raise_at lno ("Failed to determine the type of constant"))
    | `AVAR v -> Avar (resolve_var_with ctx lno (`AVAR v))

  let resolve_lv_with ctx lno {lvname; lvtyphint} ty_opt =
    if SM.mem lvname ctx.cghosts then
      raise_at lno ("The program variable " ^ lvname ^
                    " has been defined as a ghost variable.")
    else
      let ty = (match (ty_opt, lvtyphint) with
      | (None, None) -> raise_at lno ("Failed to determine the type of " ^ lvname)
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
      if var_is_bit v then
        let _ = ctx.cvars <- SM.add lvname v ctx.cvars in
        let _ = ctx.ccarries <- SM.add lvname v ctx.ccarries in
        v
      else
        let _ = ctx.cvars <- SM.add lvname v ctx.cvars in
        let _ = ctx.ccarries <- SM.remove lvname ctx.ccarries in
        v

  let resolve_lcarry_with ctx lno {lvname; lvtyphint} =
    if SM.mem lvname ctx.cghosts then
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
      let _ = ctx.cvars <- SM.add lvname v ctx.cvars in
      let _ = ctx.ccarries <- SM.add lvname v ctx.ccarries in
      v

  let resolve_lv_or_lcarry_with ctx lno {lvname; lvtyphint} =
    if SM.mem lvname ctx.cghosts then
      raise_at lno ("The program variable " ^ lvname ^
                    " has been defined as a ghost variable.")
    else
      match lvtyphint with
      | None -> raise_at lno ("Failed to determine the type of " ^ lvname)
      | Some ty ->
         let v = mkvar lvname ty in
         if var_is_bit v then
           let _ = ctx.cvars <- SM.add lvname v ctx.cvars in
           let _ = ctx.ccarries <- SM.add lvname v ctx.ccarries in
           v
         else
           let _ = ctx.cvars <- SM.add lvname v ctx.cvars in
           let _ = ctx.ccarries <- SM.remove lvname ctx.ccarries in
           v

  let parse_imov_at ctx lno dest src =
    let a = resolve_atom_with ctx lno src in
    let ty = typ_of_atom a in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Imov (v, a)]

  let parse_ishl_at ctx lno dest src num =
    let a1 = resolve_atom_with ctx lno src in
    let ty = typ_of_atom a1 in
    let a2 = resolve_atom_with ctx lno ~typ:ty num in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    let _ =
      match a2 with
      | Aconst (_, z) ->
         let w = size_of_var v in
         if Z.leq z Z.zero || Z.geq z (Z.of_int w) then
           raise_at lno ("An shl instruction expects an offset between 0 and the " ^ string_of_int w ^ " (both excluding)."
                         ^ " An offset not in the range is found: " ^ Z.to_string z ^ ".")
      | _ -> ()
    in
    [lno, Ishl (v, a1, a2)]

  let parse_ishls_at ctx lno lost dest src num =
    let a = resolve_atom_with ctx lno src in
    let ty = typ_of_atom a in
    let n = num ctx in
    let l = resolve_lv_with ctx lno lost (Some (typ_to_size ty (Z.to_int n))) in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    let _ =
      let w = size_of_var v in
      if Z.leq n Z.zero || Z.geq n (Z.of_int w) then
        raise_at lno ("An shls instruction expects an offset between 0 and the " ^ string_of_int w ^ " (both excluding)."
                      ^ " An offset not in the range is found: " ^ Z.to_string n ^ ".")
    in
    [lno, Ishls (l, v, a, n)]

  let parse_ishr_at ctx lno dest src num =
    let a1 = resolve_atom_with ctx lno src in
    let ty = typ_of_atom a1 in
    let a2 = resolve_atom_with ctx lno ~typ:ty num in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    let _ =
      match a2 with
      | Aconst (_, z) ->
         let w = size_of_var v in
         if Z.leq z Z.zero || Z.geq z (Z.of_int w) then
           raise_at lno ("An shr instruction expects an offset between 0 and the " ^ string_of_int w ^ " (both excluding)."
                         ^ " An offset not in the range is found: " ^ Z.to_string z ^ ".")
      | _ -> ()
    in
    [lno, Ishr (v, a1, a2)]

  let parse_ishrs_at ctx lno dest lost src num =
    let a = resolve_atom_with ctx lno src in
    let ty = typ_of_atom a in
    let n = num ctx in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    let l = resolve_lv_with ctx lno lost (Some (Tuint (Z.to_int n))) in
    let _ =
      let w = size_of_var v in
      if Z.leq n Z.zero || Z.geq n (Z.of_int w) then
        raise_at lno ("An shrs instruction expects an offset between 0 and the " ^ string_of_int w ^ " (both excluding)."
                      ^ " An offset not in the range is found: " ^ Z.to_string n ^ ".")
    in
    [lno, Ishrs (v, l, a, n)]

  let parse_isar_at ctx lno dest src num =
    let a1 = resolve_atom_with ctx lno src in
    let ty = typ_of_atom a1 in
    let a2 = resolve_atom_with ctx lno ~typ:ty num in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    let _ =
      match a2 with
      | Aconst (_, z) ->
         let w = size_of_var v in
         if Z.leq z Z.zero || Z.geq z (Z.of_int w) then
           raise_at lno ("An sar instruction expects an offset between 0 and the " ^ string_of_int w ^ " (both excluding)."
                         ^ " An offset not in the range is found: " ^ Z.to_string z ^ ".")
      | _ -> ()
    in
    [lno, Isar (v, a1, a2)]

  let parse_isars_at ctx lno dest lost src num =
    let a = resolve_atom_with ctx lno src in
    let ty = typ_of_atom a in
    let n = num ctx in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    let l = resolve_lv_with ctx lno lost (Some (Tuint (Z.to_int n))) in
    let _ =
      let w = size_of_var v in
      if Z.leq n Z.zero || Z.geq n (Z.of_int w) then
        raise_at lno ("An sars instruction expects an offset between 0 and the " ^ string_of_int w ^ " (both excluding)."
                      ^ " An offset not in the range is found: " ^ Z.to_string n ^ ".")
    in
    [lno, Isars (v, l, a, n)]

  let parse_cshl_at ctx lno destH destL src1 src2 num =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let ty = typ_of_atom a1 in
    let n = num ctx in
    let vh = resolve_lv_with ctx lno destH (Some ty) in
    let vl = resolve_lv_with ctx lno destL (Some (to_uint ty)) in
    [lno, Icshl (vh, vl, a1, a2, n)]

  let parse_cshls_at ctx lno lostL destH destL src1 src2 num =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let ty = typ_of_atom a1 in
    let n = num ctx in
    let l = resolve_lv_with ctx lno lostL (Some (typ_to_size ty (Z.to_int n))) in
    let vh = resolve_lv_with ctx lno destH (Some ty) in
    let vl = resolve_lv_with ctx lno destL (Some (to_uint ty)) in
    [lno, Icshls (l, vh, vl, a1, a2, n)]

  let parse_cshr_at ctx lno destH destL src1 src2 num =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let ty = typ_of_atom a1 in
    let n = num ctx in
    let vh = resolve_lv_with ctx lno destH (Some ty) in
    let vl = resolve_lv_with ctx lno destL (Some (to_uint ty)) in
    [lno, Icshr (vh, vl, a1, a2, n)]

  let parse_cshrs_at ctx lno destH destL lostL src1 src2 num =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let ty = typ_of_atom a1 in
    let n = num ctx in
    let vh = resolve_lv_with ctx lno destH (Some ty) in
    let vl = resolve_lv_with ctx lno destL (Some (to_uint ty)) in
    let l = resolve_lv_with ctx lno lostL (Some (Tuint (Z.to_int n))) in
    [lno, Icshrs (vh, vl, l, a1, a2, n)]

  let parse_rol_at ctx lno dest src num =
    let a = resolve_atom_with ctx lno src in
    let ty = typ_of_atom a in
    let n = resolve_atom_with ctx lno ~typ:ty num in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Irol (v, a, n)]

  let parse_ror_at ctx lno dest src num =
    let a = resolve_atom_with ctx lno src in
    let ty = typ_of_atom a in
    let n = resolve_atom_with ctx lno ~typ:ty num in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Iror (v, a, n)]

  let parse_set_at ctx lno dest =
    let c = resolve_lcarry_with ctx lno dest in
    [lno, Imov (c, Aconst (bit_t, Z.one)) ]

  let parse_clear_at ctx lno dest =
    let c = resolve_lcarry_with ctx lno dest in
    [lno, Imov (c, Aconst (bit_t, Z.zero))]

  let parse_nondet_at ctx lno dest =
    let v = resolve_lv_with ctx lno dest None in
    [lno, Inondet v]

  let parse_cmov_at ctx lno dest carry src1 src2 =
    let c = resolve_atom_with ctx lno carry in
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let ty = typ_of_atom a1 in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Icmov (v, c, a1, a2)]

  let parse_add_at ctx lno dest src1 src2 =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let ty = typ_of_atom a1 in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Iadd (v, a1, a2)]

  let parse_adds_at ctx lno flag dest src1 src2 =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let ty = typ_of_atom a1 in
    let c = resolve_lcarry_with ctx lno flag in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Iadds (c, v, a1, a2)]

  let parse_adc_at ctx lno dest src1 src2 (carry : atom_t) =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let y = resolve_atom_with ctx lno carry in
    let ty = typ_of_atom a1 in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Iadc (v, a1, a2, y)]

  let parse_adcs_at ctx lno flag dest src1 src2 carry =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let y = resolve_atom_with ctx lno carry in
    let ty = typ_of_atom a1 in
    let c = resolve_lcarry_with ctx lno flag in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Iadcs (c, v, a1, a2, y)]

  let parse_sub_at ctx lno dest src1 src2 =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let ty = typ_of_atom a1 in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Isub (v, a1, a2)]

  let parse_subc_at ctx lno flag dest src1 src2 =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let ty = typ_of_atom a1 in
    let c = resolve_lcarry_with ctx lno flag in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Isubc (c, v, a1, a2)]

  let parse_subb_at ctx lno flag dest src1 src2 =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let ty = typ_of_atom a1 in
    let c = resolve_lcarry_with ctx lno flag in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Isubb (c, v, a1, a2)]

  let parse_sbc_at ctx lno dest src1 src2 carry =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let y = resolve_atom_with ctx lno carry in
    let ty = typ_of_atom a1 in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Isbc (v, a1, a2, y)]

  let parse_sbcs_at ctx lno flag dest src1 src2 carry =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let y = resolve_atom_with ctx lno carry in
    let ty = typ_of_atom a1 in
    let c = resolve_lcarry_with ctx lno flag in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Isbcs (c, v, a1, a2, y)]

  let parse_sbb_at ctx lno dest src1 src2 carry =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let y = resolve_atom_with ctx lno carry in
    let ty = typ_of_atom a1 in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Isbb (v, a1, a2, y)]

  let parse_sbbs_at ctx lno flag dest src1 src2 carry =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let y = resolve_atom_with ctx lno carry in
    let ty = typ_of_atom a1 in
    let c = resolve_lcarry_with ctx lno flag in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Isbbs (c, v, a1, a2, y)]

  let parse_mul_at ctx lno dest src1 src2 =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let ty = typ_of_atom a1 in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Imul (v, a1, a2)]

  let parse_muls_at ctx lno flag dest src1 src2 =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let ty = typ_of_atom a1 in
    let c = resolve_lcarry_with ctx lno flag in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Imuls (c, v, a1, a2)]

  let parse_mull_at ctx lno destH destL src1 src2 =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let ty = typ_of_atom a1 in
    let vh = resolve_lv_with ctx lno destH (Some ty) in
    let vl = resolve_lv_with ctx lno destL (Some (to_uint ty)) in
    [lno, Imull (vh, vl, a1, a2)]

  let parse_mulj_at ctx lno dest src1 src2 =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let ty = typ_of_atom a1 in
    let v = resolve_lv_with ctx lno dest (Some (to_double_size ty)) in
    [lno, Imulj (v, a1, a2)]

  let parse_split_at ctx lno destH destL src num =
    let a = resolve_atom_with ctx lno src in
    let n = num ctx in
    let ty = typ_of_atom a in
    let vh = resolve_lv_with ctx lno destH (Some ty) in
    let vl = resolve_lv_with ctx lno destL (Some (to_uint ty)) in
    let _ =
      let w = size_of_var vl in
      if Z.leq n Z.zero || Z.geq n (Z.of_int w) then
        raise_at lno ("The position of a split should be in between 0 and " ^ string_of_int w ^ " (both excluded)")
    in
    [lno, Isplit (vh, vl, a, n)]

  let parse_spl_at ctx lno destH destL src num =
    let a = resolve_atom_with ctx lno src in
    let n = num ctx in
    let ty = typ_of_atom a in
    let w = size_of_typ ty in
    let vh = resolve_lv_with ctx lno destH (Some (typ_to_size ty (w - Z.to_int n))) in
    let vl = resolve_lv_with ctx lno destL (Some (Tuint (Z.to_int n))) in
    let _ =
      if Z.leq n Z.zero || Z.geq n (Z.of_int w) then
        raise_at lno ("The position of a spl should be in between 0 and " ^ string_of_int w ^ " (both excluded)")
    in
    [lno, Ispl (vh, vl, a, n)]

  let parse_seteq_at ctx lno dest src1 src2 =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    (* If the type of dest is not explicitly specified, use the default type (bit_t) for seteq. *)
    let dest_typ =
      match dest.lvtyphint with
        None -> (Some bit_t)
      | Some ty -> (Some ty) in
    let v = resolve_lv_with ctx lno dest dest_typ in
    [lno, Iseteq (v, a1, a2)]

  let parse_setne_at ctx lno dest src1 src2 =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    (* If the type of dest is not explicitly specified, use the default type (bit_t) for setne. *)
    let dest_typ =
      match dest.lvtyphint with
        None -> (Some bit_t)
      | Some ty -> (Some ty) in
    let v = resolve_lv_with ctx lno dest dest_typ in
    [lno, Isetne (v, a1, a2)]

  let parse_uadd_at ctx lno dest src1 src2 =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let ty = typ_to_unsigned (typ_of_atom a1) in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Iadd (v, a1, a2)]

  let parse_uadds_at ctx lno flag dest src1 src2 =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let ty = typ_to_unsigned (typ_of_atom a1) in
    let c = resolve_lcarry_with ctx lno flag in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Iadds (c, v, a1, a2)]

  let parse_uadc_at ctx lno dest src1 src2 carry =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let y = resolve_atom_with ctx lno carry in
    let ty = typ_to_unsigned (typ_of_atom a1) in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Iadc (v, a1, a2, y)]

  let parse_uadcs_at ctx lno flag dest src1 src2 carry =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let y = resolve_atom_with ctx lno carry in
    let ty = typ_to_unsigned (typ_of_atom a1) in
    let c = resolve_lcarry_with ctx lno flag in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Iadcs (c, v, a1, a2, y)]

  let parse_usub_at ctx lno dest src1 src2 =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let ty = typ_to_unsigned (typ_of_atom a1) in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Isub (v, a1, a2)]

  let parse_usubc_at ctx lno flag dest src1 src2 =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let ty = typ_to_unsigned (typ_of_atom a1) in
    let c = resolve_lcarry_with ctx lno flag in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Isubc (c, v, a1, a2)]

  let parse_usubb_at ctx lno flag dest src1 src2 =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let ty = typ_to_unsigned (typ_of_atom a1) in
    let c = resolve_lcarry_with ctx lno flag in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Isubb (c, v, a1, a2)]

  let parse_usbc_at ctx lno dest src1 src2 carry =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let y = resolve_atom_with ctx lno carry in
    let ty = typ_to_unsigned (typ_of_atom a1) in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Isbc (v, a1, a2, y)]

  let parse_usbcs_at ctx lno flag dest src1 src2 carry =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let y = resolve_atom_with ctx lno carry in
    let ty = typ_to_unsigned (typ_of_atom a1) in
    let c = resolve_lcarry_with ctx lno flag in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Isbcs (c, v, a1, a2, y)]

  let parse_usbb_at ctx lno dest src1 src2 carry =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let y = resolve_atom_with ctx lno carry in
    let ty = typ_to_unsigned (typ_of_atom a1) in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Isbb (v, a1, a2, y)]

  let parse_usbbs_at ctx lno flag dest src1 src2 carry =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let y = resolve_atom_with ctx lno carry in
    let ty = typ_to_unsigned (typ_of_atom a1) in
    let c = resolve_lcarry_with ctx lno flag in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Isbbs (c, v, a1, a2, y)]

  let parse_umul_at ctx lno dest src1 src2 =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let ty = typ_to_unsigned (typ_of_atom a1) in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Imul (v, a1, a2)]

  let parse_umuls_at ctx lno flag dest src1 src2 =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let ty = typ_to_unsigned (typ_of_atom a1) in
    let c = resolve_lcarry_with ctx lno flag in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Imuls (c, v, a1, a2)]

  let parse_umull_at ctx lno destH destL src1 src2 =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let ty = typ_to_unsigned (typ_of_atom a1) in
    let vh = resolve_lv_with ctx lno destH (Some ty) in
    let vl = resolve_lv_with ctx lno destL (Some ty) in
    [lno, Imull (vh, vl, a1, a2)]

  let parse_umulj_at ctx lno dest src1 src2 =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let ty = typ_to_unsigned (typ_of_atom a1) in
    let v = resolve_lv_with ctx lno dest (Some (to_double_size ty)) in
    [lno, Imulj (v, a1, a2)]

  let parse_usplit_at ctx lno destH destL src num =
    let a = resolve_atom_with ctx lno src in
    let n = num ctx in
    let ty = typ_to_unsigned (typ_of_atom a) in
    let vh = resolve_lv_with ctx lno destH (Some ty) in
    let vl = resolve_lv_with ctx lno destL (Some ty) in
    let _ =
      let w = size_of_var vl in
      if Z.leq n Z.zero || Z.geq n (Z.of_int w) then
        raise_at lno ("The position of a split should be in between 0 and " ^ string_of_int w ^ " (both excluded)")
    in
    [lno, Isplit (vh, vl, a, n)]

  let parse_uspl_at ctx lno destH destL src num =
    let a = resolve_atom_with ctx lno src in
    let n = num ctx in
    let ty = typ_to_unsigned (typ_of_atom a) in
    let w = size_of_typ ty in
    let vh = resolve_lv_with ctx lno destH (Some (Tuint (w - Z.to_int n))) in
    let vl = resolve_lv_with ctx lno destL (Some (Tuint (Z.to_int n))) in
    let _ =
      if Z.leq n Z.zero || Z.geq n (Z.of_int w) then
        raise_at lno ("The position of a split should be in between 0 and " ^ string_of_int w ^ " (both excluded)")
    in
    [lno, Ispl (vh, vl, a, n)]

  let parse_sadd_at ctx lno dest src1 src2 =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let ty = typ_to_signed (typ_of_atom a1) in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Iadd (v, a1, a2)]

  let parse_sadds_at ctx lno flag dest src1 src2 =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let ty = typ_to_signed (typ_of_atom a1) in
    let c = resolve_lcarry_with ctx lno flag in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Iadds (c, v, a1, a2)]

  let parse_sadc_at ctx lno dest src1 src2 carry =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let y = resolve_atom_with ctx lno carry in
    let ty = typ_to_signed (typ_of_atom a1) in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Iadc (v, a1, a2, y)]

  let parse_sadcs_at ctx lno flag dest src1 src2 carry =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let y = resolve_atom_with ctx lno carry in
    let ty = typ_to_signed (typ_of_atom a1) in
    let c = resolve_lcarry_with ctx lno flag in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Iadcs (c, v, a1, a2, y)]

  let parse_ssub_at ctx lno dest src1 src2 =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let ty = typ_to_signed (typ_of_atom a1) in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Isub (v, a1, a2)]

  let parse_ssubc_at ctx lno flag dest src1 src2 =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let ty = typ_to_signed (typ_of_atom a1) in
    let c = resolve_lcarry_with ctx lno flag in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Isubc (c, v, a1, a2)]

  let parse_ssubb_at ctx lno flag dest src1 src2 =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let ty = typ_to_signed (typ_of_atom a1) in
    let c = resolve_lcarry_with ctx lno flag in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Isubb (c, v, a1, a2)]

  let parse_ssbc_at ctx lno dest src1 src2 carry =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let y = resolve_atom_with ctx lno carry in
    let ty = typ_to_signed (typ_of_atom a1) in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Isbc (v, a1, a2, y)]

  let parse_ssbcs_at ctx lno flag dest src1 src2 carry =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let y = resolve_atom_with ctx lno carry in
    let ty = typ_to_signed (typ_of_atom a1) in
    let c = resolve_lcarry_with ctx lno flag in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Isbcs (c, v, a1, a2, y)]

  let parse_ssbb_at ctx lno dest src1 src2 carry =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let y = resolve_atom_with ctx lno carry in
    let ty = typ_to_signed (typ_of_atom a1) in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Isbb (v, a1, a2, y)]

  let parse_ssbbs_at ctx lno flag dest src1 src2 carry =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let y = resolve_atom_with ctx lno carry in
    let ty = typ_to_signed (typ_of_atom a1) in
    let c = resolve_lcarry_with ctx lno flag in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Isbbs (c, v, a1, a2, y)]

  let parse_smul_at ctx lno dest src1 src2 =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let ty = typ_to_signed (typ_of_atom a1) in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Imul (v, a1, a2)]

  let parse_smuls_at ctx lno flag dest src1 src2 =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let ty = typ_to_signed (typ_of_atom a1) in
    let c = resolve_lcarry_with ctx lno flag in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Imuls (c, v, a1, a2)]

  let parse_smull_at ctx lno destH destL src1 src2 =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let ty = typ_to_signed (typ_of_atom a1) in
    let vh = resolve_lv_with ctx lno destH (Some ty) in
    let vl = resolve_lv_with ctx lno destL (Some (to_uint ty)) in
    [lno, Imull (vh, vl, a1, a2)]

  let parse_smulj_at ctx lno dest src1 src2 =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let ty = typ_to_signed (typ_of_atom a1) in
    let v = resolve_lv_with ctx lno dest (Some (to_double_size ty)) in
    [lno, Imulj (v, a1, a2)]

  let parse_ssplit_at ctx lno destH destL src num =
    let a = resolve_atom_with ctx lno src in
    let n = num ctx in
    let ty = typ_to_signed (typ_of_atom a) in
    let vh = resolve_lv_with ctx lno destH (Some ty) in
    let vl = resolve_lv_with ctx lno destL (Some (to_uint ty)) in
    let _ =
      let w = size_of_var vl in
      if Z.leq n Z.zero || Z.geq n (Z.of_int w) then
        raise_at lno ("The position of a split should be in between 0 and " ^ string_of_int w ^ " (both excluded)")
    in
    [lno, Isplit (vh, vl, a, n)]

  let parse_sspl_at ctx lno destH destL src num =
    let a = resolve_atom_with ctx lno src in
    let n = num ctx in
    let ty = typ_to_signed (typ_of_atom a) in
    let w = size_of_typ ty in
    let vh = resolve_lv_with ctx lno destH (Some (Tsint (w - Z.to_int n))) in
    let vl = resolve_lv_with ctx lno destL (Some (Tuint (Z.to_int n))) in
    let _ =
      if Z.leq n Z.zero || Z.geq n (Z.of_int w) then
          raise_at lno ("The position of a split should be in between 0 and " ^ string_of_int w ^ " (both excluded)")
    in
    [lno, Ispl (vh, vl, a, n)]

  let parse_and_at ctx lno dest src1 src2 =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let v = resolve_lv_with ctx lno dest None in
    [lno, Iand (v, a1, a2)]

  let parse_or_at ctx lno dest src1 src2 =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let v = resolve_lv_with ctx lno dest None in
    [lno, Ior (v, a1, a2)]

  let parse_xor_at ctx lno dest src1 src2 =
    let a1 = resolve_atom_with ctx lno src1 in
    let a2 = resolve_atom_with ctx lno src2 in
    let v = resolve_lv_with ctx lno dest None in
    [lno, Ixor (v, a1, a2)]

  let parse_not_at ctx lno dest src =
    let a = resolve_atom_with ctx lno src in
    let v = resolve_lv_with ctx lno dest None in
    [lno, Inot (v, a)]

  let parse_cast_at ctx lno optlv dest src =
    let a = resolve_atom_with ctx lno src in
    let v = resolve_lv_or_lcarry_with ctx lno dest in
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
    let od =
	  match optlv with
	  | None -> None
	  | Some (`LV od) ->
		 let d = resolve_lv_with ctx lno od od_typ in
		 Some d in
	(* the discarded part must be a ghost variable *)
	let _ = apply_to_some (fun d -> ctx.cghosts <- SM.add d.vname d ctx.cghosts) od in
    [lno, Icast (od, v, a)]

  let parse_vpc_at ctx lno dest src =
    let a = resolve_atom_with ctx lno src in
    let v = resolve_lv_or_lcarry_with ctx lno dest in
    [lno, Ivpc (v, a)]

  let parse_join_at ctx lno dest srcH srcL =
    let ah = resolve_atom_with ctx lno srcH in
    let al = resolve_atom_with ctx lno srcL in
    let ty = typ_map ((+) (size_of_atom al)) (typ_of_atom ah) in
    let v = resolve_lv_with ctx lno dest (Some ty) in
    [lno, Ijoin (v, ah, al)]

  let parse_assert_at ctx lno bexp_prove_with_list_token =
    [lno, Iassert (bexp_prove_with_list_token ctx)]

  let parse_eassert_at ctx lno ebexp_prove_with_list_token =
    [lno, Iassert (ebexp_prove_with_list_token ctx, [])]

  let parse_rassert_at ctx lno rbexp_prove_with_list_token =
    [lno, Iassert ([], rbexp_prove_with_list_token ctx)]

  let parse_assume_at ctx lno bexp_token =
    [lno, Iassume (bexp_token ctx)]

  let parse_cut_at ctx lno bexp_prove_with_list_token =
    let (ecuts, rcuts) = bexp_prove_with_list_token ctx in
    [lno, Icut (ecuts, rcuts)]

  let parse_ecut_at ctx lno ebexp_prove_with_list_token =
    let ecuts = ebexp_prove_with_list_token ctx in
    [lno, Icut (ecuts, [])]

  let parse_rcut_at ctx lno rbexp_prove_with_list_token =
    let rcuts = rbexp_prove_with_list_token ctx in
    [lno, Icut ([], rcuts)]

  let parse_ghost_at ctx lno gvars_token bexp_token =
    let gvars = gvars_token ctx in
    let _ = VS.iter (fun g -> ctx.cghosts <- SM.add g.vname g ctx.cghosts) gvars in
    let e = bexp_token ctx in
    let bad_ebexps = List.filter (fun e -> not (eq_ebexp e etrue) && VS.is_empty (VS.inter gvars (vars_ebexp e))) (split_eand (eqn_bexp e)) in
    let bad_rbexps = List.filter (fun e -> not (eq_rbexp e rtrue) && VS.is_empty (VS.inter gvars (vars_rbexp e))) (split_rand (rng_bexp e)) in
    if List.length bad_ebexps > 0 then raise_at lno ("The algebraic expression " ^ string_of_ebexp (List.hd bad_ebexps) ^ " is defined without using any ghost variable.")
    else if List.length bad_rbexps > 0 then raise_at lno ("The range expression " ^ string_of_rbexp (List.hd bad_rbexps) ^ " is defined without using any ghost variable.")
    else [lno, Ighost (gvars, e)]

  let is_type_compatible formal actual =
    match actual with
    | Avar v -> formal.vtyp = v.vtyp
    | Aconst (ty, _n) -> formal.vtyp = ty

  let parse_call_at ctx lno fname_token actuals_token =
    (* The function name *)
    let fname = fname_token in
    (* The function definition *)
    let f =
      try
        SM.find fname ctx.cfuns
      with Not_found ->
        raise_at lno ("Call an undefined function '" ^ fname ^ "'.") in
    (* The actual paramaters, the types of formal arguments are requried to parse actual parameters *)
    let actuals = actuals_token ctx (List.map typ_of_var f.fargs, List.map typ_of_var f.fouts) in
    let formals = f.fargs@f.fouts in
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
    (* create ghost variables for actual variables *)
    let ghost_actuals =
      let ghost_suffix = Int.to_string (Random.int 10000) in
      let mk_ghostvar a =
        match a with
        | Avar v -> mkvar (v.vname ^ ghost_suffix) (typ_of_var v)
        | Aconst (typ, _) -> mkvar ("g_" ^ ghost_suffix) typ in
      List.rev (List.rev_map mk_ghostvar actuals) in
    let ghost_instr =
      let ghost_bexp =
        let mk_eeq a gvar =
          match a with
          | Avar avar -> eeq (evar avar) (evar gvar)
          | Aconst (_, z) -> eeq (econst z) (evar gvar) in
        let mk_req a gvar =
          match a with
          | Avar avar -> req (size_of_var avar) (rvar avar) (rvar gvar)
          | Aconst (typ, z) ->
             let sz = size_of_typ typ in
             req sz (rconst sz z) (rvar gvar) in
        (List.fold_left2 (fun r avar gvar -> eand r (mk_eeq avar gvar))
                         etrue actuals ghost_actuals,
         List.fold_left2 (fun r avar gvar -> rand r (mk_req avar gvar))
                         rtrue actuals ghost_actuals) in
      let ghostVS = List.fold_left (fun r gvar -> VS.add gvar r)
                                   VS.empty ghost_actuals in
      Ighost (ghostVS, ghost_bexp) in
    let assert_instr =
      let assert_pats =
        List.combine formals
                     (List.rev (List.rev_map mkatom_var ghost_actuals)) in
      let (_, em, rm) = subst_maps_of_list assert_pats in
      let to_prove_with (ebexp, rbexp) = ([(ebexp, [])], [(rbexp, [])]) in
      Iassert (subst_bexp_prove_with em rm (to_prove_with f.fpre)) in
    let (_, actual_outs) =
      Utils.Std.partition_at actuals (List.length f.fargs) in
    let (ghost_args, _) =
      Utils.Std.partition_at ghost_actuals (List.length f.fargs) in
    let nondet_instrs =
      List.fold_left (fun r ovar -> (lno, Inondet ovar)::r)
                     [] (List.rev_map var_of_atom actual_outs) in
    let assume_instr =
      let assume_pats =
        List.combine formals
                     (List.rev_append (List.rev_map mkatom_var ghost_args)
                                      actual_outs) in
      let (_, em, rm) = subst_maps_of_list assume_pats in
      let from_prove_with (ebexp_prove_withs, rbexp_prove_withs) =
        let ebexps = List.rev_map fst ebexp_prove_withs in
        let rbexps = List.rev_map fst rbexp_prove_withs in
        let ebexp = List.fold_left (fun e ret -> Eand (e, ret)) Etrue ebexps in
        let rbexp = List.fold_left (fun r ret -> Rand (r, ret)) Rtrue rbexps in
        (ebexp, rbexp) in
      Iassume (subst_bexp em rm (from_prove_with f.fpost)) in
    [(lno, ghost_instr); (lno, assert_instr)] @ nondet_instrs @
      [(lno, assume_instr)]

  let parse_inline_at ctx lno fname_token actuals_token =
    (* The function name *)
    let fname = fname_token in
    (* The function definition *)
    let f =
      try
        SM.find fname ctx.cfuns
      with Not_found ->
        raise_at lno ("Inline an undefined function '" ^ fname ^ "'.") in
    (* The actual paramaters, the types of formal arguments are requried to parse actual parameters *)
    let actuals = actuals_token ctx (List.map typ_of_var f.fargs, List.map typ_of_var f.fouts) in
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
    (* Check undefined variables *)
    let _ =
      let undefined =
        List.flatten (List.map (fun (formal, actual) ->
                                 match actual with
                                 | Avar v -> if mem_var formal inputs && not (SM.mem v.vname ctx.cvars) then [v] else []
                                 | _ -> []
                               ) pats) in
      if List.length undefined > 0 then
        raise_at lno ("Undefined variable: " ^ string_of_var (List.hd undefined))
    in
    let (am, em, rm) = subst_maps_of_list pats in
    let p = subst_lined_program am em rm fbody in
    (* Update variable types *)
    let subst_varmap vs =
      (*
       * subst_lval fails if the corresponding actual parameter of a formal parameter is a constant.
       * In this case, no variable type will be updated.
       *)
      VS.of_list (List.flatten (List.map (fun v -> try [subst_lval am v] with _ -> []) (VS.elements vs))) in
    let _update_varset vs vsp =
      (* To update variable types, we need to remove variables with new types first. *)
      VS.union (VS.diff vs vsp) vsp in
    let vsp = subst_varmap fvs in
    let ysp = subst_varmap fys in
    let gsp = subst_varmap fgs in
    (* FIXME: update vxm *)
    let _ = VS.iter (fun v -> ctx.cvars <- SM.add v.vname v ctx.cvars) vsp in
    let _ = VS.iter (fun v -> ctx.ccarries <- SM.add v.vname v ctx.ccarries) ysp in
    let _ = VS.iter (fun v -> ctx.cghosts <- SM.add v.vname v ctx.cghosts) gsp in
    (* (vm_of_vs (update_varset vs vsp), vxm, vm_of_vs (update_varset ys ysp), vm_of_vs (update_varset gs gsp), p) *)
    p

  let vec_name_fn vname =
    let n = String.length vname in
    let name = String.sub vname 1 (n - 1) in
    (* XXX: Find a suitable delimiter for name and index that don't choke Boolector and Singular *)
    Printf.sprintf "VEC_%s_%d" name

  let string_of_typ_vec (tv:typ_vec) =
    let (t, n) = tv in
      Printf.sprintf "%s[%d]" (string_of_typ t) n

  let resolve_lv_vec_with ctx lno dest_tok src_vtyp_opt : typ * string list =
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
       let _ = ctx.cvecs <- SM.add vecname vtyp ctx.cvecs in
       (elmtyp, names)
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
       (relmtyp, names)

  let resolve_vec_with ctx lno src_tok : typ * atom_t list =
    match src_tok with
    | `AVECT {vecname; vectyphint} ->
       let tv = try
           SM.find vecname ctx.cvecs
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
          let relmtyps = List.map (fun a -> typ_of_atom (resolve_atom_with ctx lno a)) rvs in
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
     Bsesides instructions, it also returns some context after rewriting *)
  let gen_tmp_movs ctx lno (rwpairs: (string list * atom_t) list) relmtyp =
    let rewrite_rws (tainted, submap) (wws, a) =
      let (submap', a') = match a with
        | `AVAR ({atmname; _} as var) when SS.mem atmname tainted ->
           let tmp_name = atmname ^ "_" in
           let _ = if SM.mem tmp_name ctx.cvars then
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
    let _ = SM.iter (fun k _ -> ctx.cvars <- SM.add k (mkvar k relmtyp) ctx.cvars) tmp_to_orig in
    (* Save into temp. variables with mov instructions *)
    let aliasing_instrs = List.rev (
      SM.fold (fun tmp_name orig instrs ->
        let instr = (lno, Imov (SM.find tmp_name ctx.cvars, Avar (mkvar orig.atmname relmtyp))) in
        instr::instrs) tmp_to_orig []) in

    (aliasing_instrs, tmp_names, src_safe)

  let gen_tmp_movs_2 ctx lno (rwpairs_: (string list * (atom_t * atom_t)) list) relmtyp =
    let rwpairs = List.rev (List.fold_left (fun l (wws, (rr1, rr2)) -> (wws, rr2)::([], rr1)::l) [] rwpairs_) in
    let (aliasing_instrs, tmp_names, src_safe_single) = gen_tmp_movs ctx lno rwpairs relmtyp in
    let rec to_pairs_rev acc xs = match xs with
      | [] -> acc
      | _::[] -> raise_at lno "Internal error: Incorrect number of source operands."
      | x::y::tail -> to_pairs_rev ((x, y)::acc) tail in
    let src_safe = List.rev (to_pairs_rev [] src_safe_single) in
    (aliasing_instrs, tmp_names, src_safe)

  let gen_tmp_movs_3 ctx lno (rwpairs_: (string list * (atom_t * atom_t * atom_t)) list) relmtyp =
    let rwpairs = List.rev (List.fold_left (fun l (wws, (rr1, rr2, rr3)) -> (wws, rr3)::([], rr2)::([], rr1)::l) [] rwpairs_) in
    let (aliasing_instrs, tmp_names, src_safe_single) = gen_tmp_movs ctx lno rwpairs relmtyp in
    let rec to_pairs_rev acc xs = match xs with
      | [] -> acc
      | _::[] | _::_::[] ->
         raise_at lno "Internal error: Incorrect number of source operands."
      | c::x::y::tail -> to_pairs_rev ((c, x, y)::acc) tail in
    let src_safe = List.rev (to_pairs_rev [] src_safe_single) in
    (aliasing_instrs, tmp_names, src_safe)

  let unify_vec_srcs_at lno (relmtyp, src1) (relmtyp', src2) =
    let srclen = List.length src1 in
    let _ = if (List.length src2) <> srclen then
      raise_at lno "Two sources should have the same length."
    else if relmtyp <> relmtyp' then
      raise_at lno "Two sources should have the same element type."
    else () in
    ((relmtyp, srclen), src1, src2)

  let unpack_vinstr_1 mapper ctx lno dest_tok =
    let (dest_typ, dest_names) = resolve_lv_vec_with ctx lno dest_tok None in

    let map_func lvname = mapper ctx lno {lvname; lvtyphint=Some dest_typ} in
    let iss = List.rev (List.rev_map map_func dest_names) in
    List.concat iss

  let unpack_vinstr_11 mapper ctx lno dest_tok src_tok =
    let (relmtyp, src) = resolve_vec_with ctx lno src_tok in
    let src_typ_vec = (relmtyp, List.length src) in
    let (_, dest_names) = resolve_lv_vec_with ctx lno dest_tok (Some src_typ_vec) in

    let _ = if (List.length dest_names) <> (List.length src) then
      raise_at lno "Destination vector should be as long as the source vector."
    else () in

    let rwpairs = List.map2 (fun d s -> ([d], s)) dest_names src in
    let (aliasing_instrs, tmp_names, src_safe) = gen_tmp_movs ctx lno rwpairs relmtyp in

    let map_func (lvname, rv) = mapper ctx lno {lvname; lvtyphint=None} rv in
    let iss = List.rev (List.rev_map map_func (List.combine dest_names src_safe)) in
    (* FIXME: if we are not writing phony variables to vm, it fails when reading a vector. *)
    (* Clean up temp. names so that they are invisible to latter parts of the source *)
    let _ = ctx.cvars <- remove_keys_from_map tmp_names ctx.cvars in
    List.concat (aliasing_instrs::iss)

  let unpack_vinstr_12 mapper ctx lno dest_tok src1_tok src2_tok =
    let vatm1 = resolve_vec_with ctx lno src1_tok in
    let vatm2 = resolve_vec_with ctx lno src2_tok in
    let (src_typ_vec, src1, src2) = unify_vec_srcs_at lno vatm1 vatm2 in
    let (relmtyp, srclen) = src_typ_vec in

    let (dest_typ, dest_names) = resolve_lv_vec_with ctx lno dest_tok (Some src_typ_vec) in
    let _ = if (List.length dest_names) <> srclen then
      raise_at lno "Destination vector should be as long as the source vector."
    else () in

    let rwpairs = List.map2 (fun d (s1, s2) -> ([d], (s1, s2))) dest_names (List.combine src1 src2) in
    let (aliasing_instrs, tmp_names, src_safe) = gen_tmp_movs_2 ctx lno rwpairs relmtyp in

    let map_func (lvname, (rv1, rv2)) = mapper ctx lno {lvname; lvtyphint=Some dest_typ} rv1 rv2 in
    let iss = (
        List.rev (List.rev_map map_func (List.combine dest_names src_safe))) in
    let _ = ctx.cvars <- remove_keys_from_map tmp_names ctx.cvars in
    List.concat (aliasing_instrs::iss)

  (*
   * one destination variable, two source atoms
   * Type of destination variable is bit[srclen] by default when its type is not explicitly specified.
   *)
  let unpack_vinstr_1n2 mapper ctx lno (dest_tok:  [< `LVVECT of vec_prim_t
               | `LVVLIT of lval_t list ]) src1_tok src2_tok =
    let vatm1 = resolve_vec_with ctx lno src1_tok in
    let vatm2 = resolve_vec_with ctx lno src2_tok in
    let (src_typ_vec, src1, src2) = unify_vec_srcs_at lno vatm1 vatm2 in
    let (relmtyp, srclen) = src_typ_vec in
    let hint_typ =
      match dest_tok with
        `LVVECT {vectyphint; _} ->
         (match vectyphint with
          | None -> Some (bit_t, srclen)
          | Some ty -> Some ty)
      | `LVVLIT lvs ->
         let tyopt = List.fold_left (fun r v ->
                                      match v with
                                      | `LVPLAIN lv ->
                                         (match r, lv.lvtyphint with
                                          | Some _, None -> r
                                          | Some ty, Some vt -> if ty = vt then Some ty
                                                                else raise_at lno "Types of vector elements are inconsistent."
                                          | None, _ -> lv.lvtyphint)) None lvs in
         (match tyopt with
          | None -> Some (bit_t, List.length lvs)
          | Some ty -> Some (ty, List.length lvs))
    in
    let (dest_typ, dest_names) = resolve_lv_vec_with ctx lno dest_tok hint_typ in
    let _ = if (List.length dest_names) <> srclen then
      raise_at lno "Destination vector should be as long as the source vector."
    else () in
    let rwpairs = List.map2 (fun d (s1, s2) -> ([d], (s1, s2))) dest_names (List.combine src1 src2) in
    let (aliasing_instrs, tmp_names, src_safe) = gen_tmp_movs_2 ctx lno rwpairs relmtyp in
    let map_func (lvname, (rv1, rv2)) = mapper ctx lno {lvname; lvtyphint=Some dest_typ} rv1 rv2 in
    let iss = List.rev (List.rev_map map_func (List.combine dest_names src_safe)) in
    let _ = ctx.cvars <- remove_keys_from_map tmp_names ctx.cvars in
    List.concat (aliasing_instrs::iss)

  let unpack_vinstr_21n mapper ctx lno dest1_tok dest2_tok src_tok num =
    let (relmtyp, src) = resolve_vec_with ctx lno src_tok in
    let src_typ_vec = (relmtyp, List.length src) in
    let (_, dest1_names) = resolve_lv_vec_with ctx lno dest1_tok (Some src_typ_vec) in
    let (_, dest2_names) = resolve_lv_vec_with ctx lno dest2_tok (Some src_typ_vec) in

    let _ = if ((List.length dest1_names) <> (List.length src) ||
                (List.length dest2_names) <> (List.length src)) then
      raise_at lno "Destination vector should be as long as the source vector."
    else () in

    let rwpairs = List.map2 (fun (d1, d2) s -> ([d1; d2], s)) (List.combine dest1_names dest2_names) src in
    let (aliasing_instrs, tmp_names, src_safe) = gen_tmp_movs ctx lno rwpairs relmtyp in

    let map_func ((lvname1, lvname2), rv) = (
      let lvtoken1 = {lvname=lvname1; lvtyphint=None} in
      let lvtoken2 = {lvname=lvname2; lvtyphint=None} in
      mapper ctx lno lvtoken1 lvtoken2 rv num
    ) in
    let dest_names = List.combine dest1_names dest2_names in
    let iss = List.rev (List.rev_map map_func (List.combine dest_names src_safe)) in
    let _ = ctx.cvars <- remove_keys_from_map tmp_names ctx.cvars in
    List.concat (aliasing_instrs::iss)

  let unpack_vinstr_c12 mapper ctx lno carry_tok dest_tok src1_tok src2_tok =
    let vatm1 = resolve_vec_with ctx lno src1_tok in
    let vatm2 = resolve_vec_with ctx lno src2_tok in
    let (src_typ_vec, src1, src2) = unify_vec_srcs_at lno vatm1 vatm2 in
    let (relmtyp, srclen) = src_typ_vec in

    let carry_typ_vec = (bit_t, srclen) in
    let (_, carry_names) = resolve_lv_vec_with ctx lno carry_tok (Some carry_typ_vec) in
    let (_, dest_names) = resolve_lv_vec_with ctx lno dest_tok (Some src_typ_vec) in

    let _ = if (List.length dest_names) <> srclen then
      raise_at lno "Destination vector should be as long as the source vector."
    else if (List.length carry_names) <> srclen then
      raise_at lno "Carry vector should be as long as the source vector."
    else () in

    let rwpairs = List.map2 (fun (c, d) (s1, s2) -> ([c; d], (s1, s2)))
                            (List.combine carry_names dest_names)
                            (List.combine src1 src2) in
    let (aliasing_instrs, tmp_names, src_safe) = gen_tmp_movs_2 ctx lno rwpairs relmtyp in

    let map_func ((lvname1, lvname2), (rv1, rv2)) = (
      let lvtoken1 = {lvname=lvname1; lvtyphint=None} in
      let lvtoken2 = {lvname=lvname2; lvtyphint=None} in
      mapper ctx lno lvtoken1 lvtoken2 rv1 rv2
    ) in
    let dest_names = List.combine carry_names dest_names in
    let iss = List.rev (List.rev_map map_func (List.combine dest_names src_safe)) in
    let _ = ctx.cvars <- remove_keys_from_map tmp_names ctx.cvars in
    List.concat (aliasing_instrs::iss)

  let unpack_vinstr_1c2 mapper ctx lno dest_tok carry_tok src1_tok src2_tok =
    let vatm1 = resolve_vec_with ctx lno src1_tok in
    let vatm2 = resolve_vec_with ctx lno src2_tok in
    let (src_typ_vec, src1, src2) = unify_vec_srcs_at lno vatm1 vatm2 in
    let (relmtyp, srclen) = src_typ_vec in
    let vcarry = resolve_vec_with ctx lno carry_tok in
    let _ =
      if List.length (snd vcarry) <> srclen then
        raise_at lno "Carry vector should be as long as the source vector."
      else () in

    let (_, dest_names) = resolve_lv_vec_with ctx lno dest_tok (Some src_typ_vec) in

    let _ = if (List.length dest_names) <> srclen then
      raise_at lno "Destination vector should be as long as the source vector."
    else () in

    let rwpairs = List.map2 (fun d (c, (s1, s2)) -> ([d], (c, s1, s2)))
                            dest_names
                            (List.combine (snd vcarry)
                                          (List.combine src1 src2)) in
    let (aliasing_instrs, tmp_names, src_safe) =
      gen_tmp_movs_3 ctx lno rwpairs relmtyp in

    let map_func (lvname, (rc, rv1, rv2)) = mapper ctx lno {lvname=lvname; lvtyphint=None} rc rv1 rv2 in
    let iss = List.rev (List.rev_map map_func (List.combine dest_names src_safe)) in
    let _ = ctx.cvars <- remove_keys_from_map tmp_names ctx.cvars in
    List.concat (aliasing_instrs::iss)

  let unpack_vmull mapper ctx lno destH_tok destL_tok src1_tok src2_tok =
    let vatm1 = resolve_vec_with ctx lno src1_tok in
    let vatm2 = resolve_vec_with ctx lno src2_tok in
    let (src_typ_vec, src1, src2) = unify_vec_srcs_at lno vatm1 vatm2 in
    let (relmtyp, srclen) = src_typ_vec in

    (* XXX: is destL always unsigned? *)
    let src_typ_vec = (relmtyp, List.length src1) in
    let destL_typ = (to_uint relmtyp, srclen) in
    let (_, destH_names) = resolve_lv_vec_with ctx lno destH_tok (Some src_typ_vec) in
    let (_, destL_names) = resolve_lv_vec_with ctx lno destL_tok (Some destL_typ) in

    let _ = if ((List.length destH_names) <> srclen ||
                (List.length destL_names) <> srclen) then
      raise_at lno "Destination vectors should be as long as the source vectors."
    else () in

    let rwpairs = List.map2 (fun (dh, dl) (s1, s2) -> ([dh; dl], (s1, s2)))
                            (List.combine destH_names destL_names)
                            (List.combine src1 src2) in
    let (aliasing_instrs, tmp_names, src_safe) = gen_tmp_movs_2 ctx lno rwpairs relmtyp in
    let dest_names = List.combine destH_names destL_names in

    let map_func ((lvname1, lvname2), (rv1, rv2)) = (
      let lvtoken1 = {lvname=lvname1; lvtyphint=None} in
      let lvtoken2 = {lvname=lvname2; lvtyphint=None} in
      mapper ctx lno lvtoken1 lvtoken2 rv1 rv2
    ) in
    let iss = List.rev (List.rev_map map_func (List.combine dest_names src_safe)) in
    let _ = ctx.cvars <- remove_keys_from_map tmp_names ctx.cvars in
    List.concat (aliasing_instrs::iss)

  let unpack_vmulj mapper ctx lno dest_tok src1_tok src2_tok =
    let vatm1 = resolve_vec_with ctx lno src1_tok in
    let vatm2 = resolve_vec_with ctx lno src2_tok in
    let (src_typ_vec, src1, src2) = unify_vec_srcs_at lno vatm1 vatm2 in
    let (relmtyp, srclen) = src_typ_vec in
    let dst_typ_vec = (to_double_size relmtyp, srclen) in

    let (_, dest_names) = resolve_lv_vec_with ctx lno dest_tok (Some dst_typ_vec) in
    let _ = if (List.length dest_names) <> srclen then
      raise_at lno "Destination vector should be as long as the source vector."
    else () in

    let rwpairs = List.map2 (fun d (s1, s2) -> ([d], (s1, s2))) dest_names (List.combine src1 src2) in
    let (aliasing_instrs, tmp_names, src_safe) = gen_tmp_movs_2 ctx lno rwpairs relmtyp in

    let map_func (lvname, (rv1, rv2)) = mapper ctx lno {lvname; lvtyphint=None} rv1 rv2 in
    let iss = List.rev (List.rev_map map_func (List.combine dest_names src_safe)) in
    let _ = ctx.cvars <- remove_keys_from_map tmp_names ctx.cvars in
    List.concat (aliasing_instrs::iss)

  let parse_vcast_at ctx lno dest_tok src_tok =
    let (relmtyp, src) = resolve_vec_with ctx lno src_tok in
    let (tar_typ, dest_names) = resolve_lv_vec_with ctx lno dest_tok None in

    if (List.length dest_names) = (List.length src) then
      let rwpairs = List.map2 (fun d s -> ([d], s)) dest_names src in
      let (aliasing_instrs, tmp_names, src_safe) = gen_tmp_movs ctx lno rwpairs relmtyp in
      let map_func (lvname, rv) = (
          let lvtoken = {lvname; lvtyphint=Some tar_typ} in  (* should preserve the type hint to dest. *)
          parse_cast_at ctx lno None lvtoken rv
        ) in
      let iss = List.rev (List.rev_map map_func (List.combine dest_names src_safe)) in
      let _ = ctx.cvars <- remove_keys_from_map tmp_names ctx.cvars in
      List.concat (aliasing_instrs::iss)
    else if (size_of_typ relmtyp)*(List.length src) =
              (size_of_typ tar_typ)*(List.length dest_names) then
      let vcast_suffix = Int.to_string (Random.int 10000) in
      let mk_cast_var i = mkvar ("vcast_"^(string_of_int i)^"_"^vcast_suffix)
                              (typ_to_unsigned relmtyp) in
      let rev_unsigned_cast_instrs, rev_cast_vars, _ =
        List.fold_left (fun (r, cvs, i) av ->
                         let cv = mk_cast_var i in
                         let v = resolve_atom_with ctx lno av in
                         ((lno, Icast (None, cv, v))::r, cv::cvs, succ i))
                       ([], [], 1) src in
      let rev_join_instrs =
        match rev_cast_vars with
        | cv2::cv1::cv_others ->
           let jvar = mkvar ("vjoin_" ^ vcast_suffix)
                            (uint_t ((size_of_typ relmtyp)*2)) in
           List.fold_left (fun r cv ->
                            let jvar' = mkvar jvar.vname
                                              (typ_map ((+) (size_of_typ relmtyp))
                                                       (typ_of_var jvar)) in
                            (lno, Ijoin (jvar', mkatom_var jvar, mkatom_var cv))::r)
                          [(lno, Ijoin (jvar, mkatom_var cv2, mkatom_var cv1))] cv_others
        | [cv] ->
           let jvar = mkvar ("vjoin_" ^ vcast_suffix) (uint_t (size_of_typ relmtyp)) in
           [(lno, Imov (jvar, mkatom_var cv))]
        | [] -> assert false (* empty vector variable? *) in
      let rev_spl_instrs =
        let unsigned_tar_typ = typ_to_unsigned tar_typ in
        let tar_typ_size = size_of_typ tar_typ in
        let tar_typ_size_z = Z.of_int tar_typ_size in
        let rec spl_helper names jvar rev_ret =
          match names with
          | [name] -> (lno, Imov (mkvar name unsigned_tar_typ,
                                  mkatom_var jvar))::rev_ret
          | [name1; name2] ->
             let spl_instr = (lno, Ispl (mkvar name2 unsigned_tar_typ,
                                         mkvar name1 unsigned_tar_typ,
                                         mkatom_var jvar, tar_typ_size_z)) in
             spl_instr::rev_ret
          | name::names ->
             let jvar' = mkvar jvar.vname (typ_map (fun n -> n - tar_typ_size)
                                           (typ_of_var jvar)) in
             let spl_instr = (lno, Ispl (jvar', mkvar name unsigned_tar_typ,
                                         mkatom_var jvar, tar_typ_size_z)) in
             spl_helper names jvar' (spl_instr::rev_ret)
          | [] -> assert false (* empty names *) in
        let l = (size_of_typ tar_typ)*(List.length dest_names) in
        let jvar = mkvar ("vjoin_" ^ vcast_suffix) (uint_t l) in
        spl_helper dest_names jvar [] in
      let final_cast_instrs =
        let unsigned_tar_typ = typ_to_unsigned tar_typ in
        List.rev (List.fold_left (fun r n ->
                                   let d = mkvar n tar_typ in
                                   let s = mkvar n unsigned_tar_typ in
                                   (lno, Icast (None, d, mkatom_var s))::r)
                                 [] dest_names) in
      List.rev_append rev_unsigned_cast_instrs
                      (List.rev_append rev_join_instrs
                                       (List.rev_append rev_spl_instrs
                                                        final_cast_instrs))
    else
      raise_at lno "Destination vector should be as long as the source vector."

  let parse_vbroadcast_at ctx lno dest_tok num src_tok =
    let n = num ctx in
    (* type check is done when unpacking, so relmtyp is not needed here *)
    let (_, src) = resolve_vec_with ctx lno src_tok in
    let len = List.length src in
    let src_padded = `AVLIT (List.init (Z.to_int n) (fun i -> List.nth src (i mod len))) in
    unpack_vinstr_11 parse_imov_at ctx lno dest_tok src_padded

  let recognize_instr_at ctx lno instr =
      match instr with
      | `MOV (`LVPLAIN dest, src) ->
        parse_imov_at ctx lno dest src
      | `VMOV (dest, src) ->
        unpack_vinstr_11 parse_imov_at ctx lno dest src
      | `VBROADCAST (dest, num, src) ->
        parse_vbroadcast_at ctx lno dest num src
      | `SHL (`LVPLAIN dest, src, num) ->
         parse_ishl_at ctx lno dest src num
      | `SHLS (`LVPLAIN lost, `LVPLAIN dest, src, num) ->
         parse_ishls_at ctx lno lost dest src num
      | `SHR (`LVPLAIN dest, src, num) ->
         parse_ishr_at ctx lno dest src num
      | `SHRS (`LVPLAIN dest, `LVPLAIN lost, src, num) ->
         parse_ishrs_at ctx lno dest lost src num
      | `SAR (`LVPLAIN dest, src, num) ->
         parse_isar_at ctx lno dest src num
      | `SARS (`LVPLAIN dest, `LVPLAIN lost, src, num) ->
         parse_isars_at ctx lno dest lost src num
      | `CSHL (`LVPLAIN destH, `LVPLAIN destL, src1, src2, num) ->
         parse_cshl_at ctx lno destH destL src1 src2 num
      | `CSHLS (`LVPLAIN lostL, `LVPLAIN destH, `LVPLAIN destL, src1, src2, num) ->
         parse_cshls_at ctx lno lostL destH destL src1 src2 num
      | `CSHR (`LVPLAIN destH, `LVPLAIN destL, src1, src2, num) ->
         parse_cshr_at ctx lno destH destL src1 src2 num
      | `CSHRS (`LVPLAIN destH, `LVPLAIN destL, `LVPLAIN lostL, src1, src2, num) ->
         parse_cshrs_at ctx lno destH destL lostL src1 src2 num
      | `ROL (`LVPLAIN dest, src, num) ->
         parse_rol_at ctx lno dest src num
      | `ROR (`LVPLAIN dest, src, num) ->
         parse_ror_at ctx lno dest src num
      | `SET (`LVCARRY dest) ->
         parse_set_at ctx lno dest
      | `VSET (dest) ->
         unpack_vinstr_1 parse_set_at ctx lno dest
      | `CLEAR (`LVCARRY dest) ->
         parse_clear_at ctx lno dest
      | `VCLEAR (dest) ->
         unpack_vinstr_1 parse_clear_at ctx lno dest
      | `NONDET (`LVPLAIN dest) ->
         parse_nondet_at ctx lno dest
      | `VNONDET (dest) ->
         unpack_vinstr_1 parse_nondet_at ctx lno dest
      | `CMOV (`LVPLAIN dest, carry, src1, src2) ->
         parse_cmov_at ctx lno dest carry src1 src2
      | `VCMOV (dest, carry, src1, src2) ->
         unpack_vinstr_1c2 parse_cmov_at ctx lno dest carry src1 src2
      | `ADD (`LVPLAIN dest, src1, src2) ->
         parse_add_at ctx lno dest src1 src2
      | `VADD (dest, src1, src2) ->
         unpack_vinstr_12 parse_add_at ctx lno dest src1 src2
      | `ADDS (`LVCARRY flag, `LVPLAIN dest, src1, src2) ->
         parse_adds_at ctx lno flag dest src1 src2
      | `VADDS (flag, dest, src1, src2) ->
         unpack_vinstr_c12 parse_adds_at ctx lno flag dest src1 src2
      | `ADC (`LVPLAIN dest, src1, src2, carry) ->
         parse_adc_at ctx lno dest src1 src2 carry
      | `ADCS (`LVCARRY flag, `LVPLAIN dest, src1, src2, carry) ->
         parse_adcs_at ctx lno flag dest src1 src2 carry
      | `SUB (`LVPLAIN dest, src1, src2) ->
         parse_sub_at ctx lno dest src1 src2
      | `VSUB (dest, src1, src2) ->
         unpack_vinstr_12 parse_sub_at ctx lno dest src1 src2
      | `SUBC (`LVCARRY flag, `LVPLAIN dest, src1, src2) ->
         parse_subc_at ctx lno flag dest src1 src2
      | `VSUBC (flag, dest, src1, src2) ->
         unpack_vinstr_c12 parse_subc_at ctx lno flag dest src1 src2
      | `SUBB (`LVCARRY flag, `LVPLAIN dest, src1, src2) ->
         parse_subb_at ctx lno flag dest src1 src2
      | `VSUBB (flag, dest, src1, src2) ->
         unpack_vinstr_c12 parse_subb_at ctx lno flag dest src1 src2
      | `SBC (`LVPLAIN dest, src1, src2, carry) ->
         parse_sbc_at ctx lno dest src1 src2 carry
      | `SBCS (`LVCARRY flag, `LVPLAIN dest, src1, src2, carry) ->
         parse_sbcs_at ctx lno flag dest src1 src2 carry
      | `SBB (`LVPLAIN dest, src1, src2, carry) ->
         parse_sbb_at ctx lno dest src1 src2 carry
      | `SBBS (`LVCARRY flag, `LVPLAIN dest, src1, src2, carry) ->
         parse_sbbs_at ctx lno flag dest src1 src2 carry
      | `MUL (`LVPLAIN dest, src1, src2) ->
         parse_mul_at ctx lno dest src1 src2
      | `VMUL (dest, src1, src2) ->
         unpack_vinstr_12 parse_mul_at ctx lno dest src1 src2
      | `MULS (`LVCARRY flag, `LVPLAIN dest, src1, src2) ->
         parse_muls_at ctx lno flag dest src1 src2
      | `MULL (`LVPLAIN destH, `LVPLAIN destL, src1, src2) ->
         parse_mull_at ctx lno destH destL src1 src2
      | `VMULL (destH, destL, src1, src2) ->
         unpack_vmull parse_mull_at ctx lno destH destL src1 src2
      | `MULJ (`LVPLAIN dest, src1, src2) ->
         parse_mulj_at ctx lno dest src1 src2
      | `VMULJ (dest, src1, src2) ->
         unpack_vmulj parse_mulj_at ctx lno dest src1 src2
      | `SPLIT (`LVPLAIN destH, `LVPLAIN destL, src, num) ->
         parse_split_at ctx lno destH destL src num
      | `VSPLIT (destH, destL, src, num) ->
        unpack_vinstr_21n parse_split_at ctx lno destH destL src num
      | `SPL (`LVPLAIN destH, `LVPLAIN destL, src, num) ->
         parse_spl_at ctx lno destH destL src num
      | `SETEQ (`LVPLAIN dest, src1, src2) ->
         parse_seteq_at ctx lno dest src1 src2
      | `VSETEQ (dest, src1, src2) ->
         unpack_vinstr_1n2 parse_seteq_at ctx lno dest src1 src2
      | `SETNE (`LVPLAIN dest, src1, src2) ->
         parse_setne_at ctx lno dest src1 src2
      | `VSETNE (dest, src1, src2) ->
         unpack_vinstr_1n2 parse_setne_at ctx lno dest src1 src2
      | `UADD (`LVPLAIN dest, src1, src2) ->
         parse_uadd_at ctx lno dest src1 src2
      | `VUADD (dest, src1, src2) ->
         unpack_vinstr_12 parse_uadd_at ctx lno dest src1 src2
      | `UADDS (`LVCARRY flag, `LVPLAIN dest, src1, src2) ->
         parse_uadds_at ctx lno flag dest src1 src2
      | `VUADDS (flag, dest, src1, src2) ->
         unpack_vinstr_c12 parse_uadds_at ctx lno flag dest src1 src2
      | `UADC (`LVPLAIN dest, src1, src2, carry) ->
         parse_uadc_at ctx lno dest src1 src2 carry
      | `UADCS (`LVCARRY flag, `LVPLAIN dest, src1, src2, carry) ->
         parse_uadcs_at ctx lno flag dest src1 src2 carry
      | `USUB (`LVPLAIN dest, src1, src2) ->
         parse_usub_at ctx lno dest src1 src2
      | `USUBC (`LVCARRY flag, `LVPLAIN dest, src1, src2) ->
         parse_usubc_at ctx lno flag dest src1 src2
      | `USUBB (`LVCARRY flag, `LVPLAIN dest, src1, src2) ->
         parse_usubb_at ctx lno flag dest src1 src2
      | `USBC (`LVPLAIN dest, src1, src2, carry) ->
         parse_usbc_at ctx lno dest src1 src2 carry
      | `USBCS (`LVCARRY flag, `LVPLAIN dest, src1, src2, carry) ->
         parse_usbcs_at ctx lno flag dest src1 src2 carry
      | `USBB (`LVPLAIN dest, src1, src2, carry) ->
         parse_usbb_at ctx lno dest src1 src2 carry
      | `USBBS (`LVCARRY flag, `LVPLAIN dest, src1, src2, carry) ->
         parse_usbbs_at ctx lno flag dest src1 src2 carry
      | `UMUL (`LVPLAIN dest, src1, src2) ->
         parse_umul_at ctx lno dest src1 src2
      | `VUMUL (dest, src1, src2) ->
         unpack_vinstr_12 parse_umul_at ctx lno dest src1 src2
      | `UMULS (`LVCARRY flag, `LVPLAIN dest, src1, src2) ->
         parse_umuls_at ctx lno flag dest src1 src2
      | `UMULL (`LVPLAIN destH, `LVPLAIN destL, src1, src2) ->
         parse_umull_at ctx lno destH destL src1 src2
      | `VUMULL (destH, destL, src1, src2) ->
         unpack_vmull parse_umull_at ctx lno destH destL src1 src2
      | `UMULJ (`LVPLAIN dest, src1, src2) ->
         parse_umulj_at ctx lno dest src1 src2
      | `VUMULJ (dest, src1, src2) ->
         unpack_vmulj parse_umulj_at ctx lno dest src1 src2
      | `USPLIT (`LVPLAIN destH, `LVPLAIN destL, src, num) ->
         parse_usplit_at ctx lno destH destL src num
      | `VUSPLIT (destH, destL, src, num) ->
         unpack_vinstr_21n parse_usplit_at ctx lno destH destL src num
      | `USPL (`LVPLAIN destH, `LVPLAIN destL, src, num) ->
         parse_uspl_at ctx lno destH destL src num
      | `SADD (`LVPLAIN dest, src1, src2) ->
         parse_sadd_at ctx lno dest src1 src2
      | `VSADD (dest, src1, src2) ->
         unpack_vinstr_12 parse_sadd_at ctx lno dest src1 src2
      | `SADDS (`LVCARRY flag, `LVPLAIN dest, src1, src2) ->
         parse_sadds_at ctx lno flag dest src1 src2
      | `VSADDS (flag, dest, src1, src2) ->
         unpack_vinstr_c12 parse_sadds_at ctx lno flag dest src1 src2
      | `SADC (`LVPLAIN dest, src1, src2, carry) ->
         parse_sadc_at ctx lno dest src1 src2 carry
      | `SADCS (`LVCARRY flag, `LVPLAIN dest, src1, src2, carry) ->
         parse_sadcs_at ctx lno flag dest src1 src2 carry
      | `SSUB (`LVPLAIN dest, src1, src2) ->
         parse_ssub_at ctx lno dest src1 src2
      | `SSUBC (`LVCARRY flag, `LVPLAIN dest, src1, src2) ->
         parse_ssubc_at ctx lno flag dest src1 src2
      | `SSUBB (`LVCARRY flag, `LVPLAIN dest, src1, src2) ->
         parse_ssubb_at ctx lno flag dest src1 src2
      | `SSBC (`LVPLAIN dest, src1, src2, carry) ->
         parse_ssbc_at ctx lno dest src1 src2 carry
      | `SSBCS (`LVCARRY flag, `LVPLAIN dest, src1, src2, carry) ->
         parse_ssbcs_at ctx lno flag dest src1 src2 carry
      | `SSBB (`LVPLAIN dest, src1, src2, carry) ->
         parse_ssbb_at ctx lno dest src1 src2 carry
      | `SSBBS (`LVCARRY flag, `LVPLAIN dest, src1, src2, carry) ->
         parse_ssbbs_at ctx lno flag dest src1 src2 carry
      | `SMUL (`LVPLAIN dest, src1, src2) ->
         parse_smul_at ctx lno dest src1 src2
      | `VSMUL (dest, src1, src2) ->
         unpack_vinstr_12 parse_smul_at ctx lno dest src1 src2
      | `SMULS (`LVCARRY flag, `LVPLAIN dest, src1, src2) ->
         parse_smuls_at ctx lno flag dest src1 src2
      | `SMULL (`LVPLAIN destH, `LVPLAIN destL, src1, src2) ->
         parse_smull_at ctx lno destH destL src1 src2
      | `VSMULL (destH, destL, src1, src2) ->
         unpack_vmull parse_smull_at ctx lno destH destL src1 src2
      | `SMULJ (`LVPLAIN dest, src1, src2) ->
         parse_smulj_at ctx lno dest src1 src2
      | `VSMULJ (dest, src1, src2) ->
         unpack_vmulj parse_smulj_at ctx lno dest src1 src2
      | `SSPLIT (`LVPLAIN destH, `LVPLAIN destL, src, num) ->
         parse_ssplit_at ctx lno destH destL src num
      | `VSSPLIT (destH, destL, src, num) ->
        unpack_vinstr_21n parse_ssplit_at ctx lno destH destL src num
      | `SSPL (`LVPLAIN destH, `LVPLAIN destL, src, num) ->
         parse_sspl_at ctx lno destH destL src num
      | `AND (`LVPLAIN dest, src1, src2) ->
         parse_and_at ctx lno dest src1 src2
      | `VAND (dest, src1, src2) ->
         unpack_vinstr_12 parse_and_at ctx lno dest src1 src2
      | `OR (`LVPLAIN dest, src1, src2) ->
         parse_or_at ctx lno dest src1 src2
      | `VOR (dest, src1, src2) ->
         unpack_vinstr_12 parse_or_at ctx lno dest src1 src2
      | `XOR (`LVPLAIN dest, src1, src2) ->
         parse_xor_at ctx lno dest src1 src2
      | `VXOR (dest, src1, src2) ->
         unpack_vinstr_12 parse_xor_at ctx lno dest src1 src2
      | `NOT (`LVPLAIN dest, src) ->
         parse_not_at ctx lno dest src
      | `VNOT (dest, src) ->
         unpack_vinstr_11 parse_not_at ctx lno dest src
      | `CAST (optlv, `LV dest, src) ->
         parse_cast_at ctx lno optlv dest src
      | `VCAST (optlv, dest, src) -> (
        match optlv with
        | Some _ -> raise_at lno "Internal error: optlv should be None in vcast."
        | None -> parse_vcast_at ctx lno dest src)
      | `VPC (`LV dest, src) ->
         parse_vpc_at ctx lno dest src
      | `JOIN (`LVPLAIN dest, srcH, srcL) ->
         parse_join_at ctx lno dest srcH srcL
      | `ASSERT bexp_prove_with_list ->
         parse_assert_at ctx lno bexp_prove_with_list
      | `EASSERT ebexp_prove_with_list ->
         parse_eassert_at ctx lno ebexp_prove_with_list
      | `RASSERT rbexp_prove_with_list ->
         parse_rassert_at ctx lno rbexp_prove_with_list
      | `ASSUME bexp ->
         parse_assume_at ctx lno bexp
      | `CUT bexp_prove_with_list ->
         parse_cut_at ctx lno bexp_prove_with_list
      | `ECUT ebexp_prove_with_list ->
         parse_ecut_at ctx lno ebexp_prove_with_list
      | `RCUT rbexp_prove_with_list ->
         parse_rcut_at ctx lno rbexp_prove_with_list
      | `GHOST (gvars, bexp) ->
         parse_ghost_at ctx lno gvars bexp
      | `CALL (id, actuals) ->
         parse_call_at ctx lno id actuals
      | `INLINE (id, actuals) ->
         parse_inline_at ctx lno id actuals
      | `NOP -> []
      (*| _ -> (raise_at lno "(Internal error) Uncognized instruction pattern")*)

  let parse_instrs ctx instrs =
    let reducer prog_rev (lno, instr0) =
      let prog = recognize_instr_at ctx lno instr0 in
      (List.rev_append prog prog_rev) in
    let prog_rev = List.fold_left reducer [] instrs in
    List.rev prog_rev

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
%token SHL SHLS SHR SHRS SAR SARS CSHL CSHLS CSHR CSHRS ROL ROR CONCAT SET CLEAR NONDET CMOV AND OR NOT CAST VPC JOIN ASSERT EASSERT RASSERT ASSUME GHOST
%token CUT ECUT RCUT NOP SETEQ SETNE
/* Logical Expressions */
%token VARS NEG SQ EXT UEXT SEXT MOD UMOD SREM SMOD XOR ULT ULE UGT UGE SLT SLE SGT SGE SHR SAR
/* Predicates */
%token TRUE EQ EQMOD EQUMOD EQSMOD EQSREM
/* Operators */
%token ADDOP SUBOP MULOP POWOP ULEOP ULTOP UGEOP UGTOP SLEOP SLTOP SGEOP SGTOP EQOP NEGOP MODOP LANDOP LOROP NOTOP ANDOP OROP XOROP SHLOP SHROP SAROP
/* Others */
%token AT PROC INLINE CALL ULIMBS SLIMBS PROVE WITH ALL CUTS ASSUMES GHOSTS PRECONDITION DEREFOP ALGEBRA RANGE QFBV SOLVER SMT
%token EOF DOLPHIN
%token BOGUS

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
%nonassoc VAR CONST NEG ADD SUB MUL SQ UMOD SREM SMOD NOT AND OR XOR ULT ULE UGT UGE SLT SLE SGT SGE SHL SHLS SHR SHRS SAR SARS ROL ROR CONCAT
%nonassoc SETEQ SETNE EQ EQMOD
%nonassoc UMINUS DOLPHIN

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
    let ctx = empty_parsing_context() in
    let _ = $1 ctx in
    try
      let m = SM.find main ctx.cfuns in
      (m.fargs, { spre = m.fpre; sprog = m.fbody; spost = m.fpost })
    with Not_found ->
      raise (ParseError "A main function is required.")
  }
;

procs:
  proc procs
  {
    fun ctx ->
      let _ = $1 ctx in
      let _ = $2 ctx in
      ()
  }
  | { fun _ -> () }
;

proc:
  PROC ID LPAR formals RPAR EQOP pre program post
  {
    let lno = !lnum in
    fun ctx ->
      let fname = $2 in
      if SM.mem fname ctx.cfuns then raise_at lno ("The procedure " ^ fname ^ " is redefined.")
      else
        (* reset maps *)
        let (args, outs) = $4 lno in
        let _ = ctx.cvars <- vm_of_list args in
        let _ = ctx.cvecs <- SM.empty in
        let _ = ctx.ccarries <- SM.empty in
        let _ = ctx.cghosts <- SM.empty in
        let f =
          match $7 ctx with
          | None -> btrue
          | Some e -> e in
        let p = parse_instrs ctx $8 in
        let g =
          match $9 ctx with
          | None -> ([], [])
          | Some e -> e in
        let _ = ctx.cfuns <- SM.add fname { fname = fname;
                                            fargs = args;
                                            fouts = outs;
                                            fvm = ctx.cvars;
                                            fym = ctx.ccarries;
                                            fgm = ctx.cghosts;
                                            fbody = p;
                                            fpre = f;
                                            fpost = g } ctx.cfuns in
        ()
  }
  | CONST ID EQOP const
  {
    let lno = !lnum in
    fun ctx ->
      let v = $2 in
      let n = $4 ctx in
      if SM.mem v ctx.cconsts
      then raise_at lno ("Redefined constant: " ^ v)
      else let _ = ctx.cconsts <- SM.add v n ctx.cconsts in
           ()
  }
;

pre:
    LBRAC bexp RBRAC                              { fun ctx -> Some ($2 ctx) }
  |                                               { fun _ctx -> None }
;

post:
    LBRAC bexp_prove_with_list RBRAC              { fun ctx -> Some ($2 ctx) }
  |                                               { fun _ctx -> None }
;

formals:
    fvars                                         { fun lno -> ($1 lno, []) }
  | fvars SEMICOLON fvars                         { fun lno -> ($1 lno, $3 lno) }
  | SEMICOLON fvars                               { fun lno -> ([], $2 lno) }
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
      parse_instrs (empty_parsing_context ()) $1
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
  | CSHLS lval lval lval atom atom const          { (!lnum, `CSHLS ($2, $3, $4, $5, $6, $7)) }
  | lhs DOT lhs DOT lhs EQOP CSHLS atom atom const
                                                  { (!lnum, `CSHLS (`LVPLAIN $1, `LVPLAIN $3, `LVPLAIN $5, $8, $9, $10)) }
  | CSHR lval lval atom atom const                { (!lnum, `CSHR ($2, $3, $4, $5, $6)) }
  | lhs DOT lhs EQOP CSHR atom atom const         { (!lnum, `CSHR (`LVPLAIN $1, `LVPLAIN $3, $6, $7, $8)) }
  | CSHRS lval lval lval atom atom const          { (!lnum, `CSHRS ($2, $3, $4, $5, $6, $7)) }
  | lhs DOT lhs DOT lhs EQOP CSHRS atom atom const
                                                  { (!lnum, `CSHRS (`LVPLAIN $1, `LVPLAIN $3, `LVPLAIN $5, $8, $9, $10)) }
  | ROL lval atom atom                            { (!lnum, `ROL ($2, $3, $4)) }
  | ROR lval atom atom                            { (!lnum, `ROR ($2, $3, $4)) }
  | SET lcarry                                    { (!lnum, `SET $2) }
  | SET lcarry_v                                  { (!lnum, `VSET $2) }
  | CLEAR lcarry                                  { (!lnum, `CLEAR $2) }
  | CLEAR lcarry_v                                { (!lnum, `VCLEAR $2) }
  | NONDET lval                                   { (!lnum, `NONDET $2) }
  | NONDET lval_v                                 { (!lnum, `VNONDET $2) }
  | CMOV lval carry atom atom                     { (!lnum, `CMOV ($2, $3, $4, $5)) }
  | CMOV lval_v carry_v atom_v atom_v             { (!lnum, `VCMOV ($2, $3, $4, $5)) }
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
  | SETEQ lval atom atom                          { (!lnum, `SETEQ ($2, $3, $4)) }
  | SETEQ lval_v atom_v atom_v                    { (!lnum, `VSETEQ ($2, $3, $4)) }
  | SETNE lval atom atom                          { (!lnum, `SETNE ($2, $3, $4)) }
  | SETNE lval_v atom_v atom_v                    { (!lnum, `VSETNE ($2, $3, $4)) }
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
  | AND lval_v atom_v atom_v                      { (!lnum, `VAND ($2, $3, $4)) }
  | lhs EQOP AND atom atom                        { (!lnum, `AND (`LVPLAIN $1, $4, $5)) }
  | OR lval atom atom                             { (!lnum, `OR ($2, $3, $4)) }
  | OR lval_v atom_v atom_v                      { (!lnum, `VOR ($2, $3, $4)) }
  | lhs EQOP OR atom atom                         { (!lnum, `OR (`LVPLAIN $1, $4, $5)) }
  | XOR lval atom atom                            { (!lnum, `XOR ($2, $3, $4)) }
  | XOR lval_v atom_v atom_v                      { (!lnum, `VXOR ($2, $3, $4)) }
  | lhs EQOP XOR atom atom                        { (!lnum, `XOR (`LVPLAIN $1, $4, $5)) }
  | NOT lval atom                                 { (!lnum, `NOT ($2, $3)) }
  | NOT lval_v atom_v                             { (!lnum, `VNOT ($2, $3)) }
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
  | INLINE ID LPAR actuals RPAR                   { (!lnum, `INLINE ($2, $4)) }
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
  | CSHLS error                                   { raise_at !lnum ("Bad cshls instruction") }
  | CSHR error                                    { raise_at !lnum ("Bad cshr instruction") }
  | CSHRS error                                   { raise_at !lnum ("Bad cshrs instruction") }
  | ROL error                                     { raise_at !lnum ("Bad rol instruction") }
  | ROR error                                     { raise_at !lnum ("Bad ror instruction") }
  | NONDET error                                  { raise_at !lnum ("Bad nondet instruction") }
  | CALL ID LPAR error                            { raise_at !lnum (("Invalid actuals in the call instruction: " ^ $2)) }
  | CALL error                                    { raise_at !lnum ("Bad call instruction") }
  | INLINE ID LPAR error                          { raise_at !lnum (("Invalid actuals in the inline instruction: " ^ $2)) }
  | INLINE error                                  { raise_at !lnum ("Bad inline instruction") }
;

ebexp_prove_with_list:
  ebexp_prove_with                                { fun ctx -> [($1 ctx)] }
| ebexp_prove_with COMMA ebexp_prove_with_list    { fun ctx -> ($1 ctx)::($3 ctx) }
;

rbexp_prove_with_list:
  rbexp_prove_with                                { fun ctx -> [($1 ctx)] }
| rbexp_prove_with COMMA rbexp_prove_with_list    { fun ctx -> ($1 ctx)::($3 ctx) }
;

bexp_prove_with_list:
  TRUE                                            { fun _ctx -> ([(etrue, [])], [(rtrue, [])]) }
| ebexp_prove_with_list VBAR rbexp_prove_with_list
                                                  { fun ctx -> ($1 ctx, $3 ctx) }
;

ebexp_prove_with:
  ebexp                                           { fun ctx -> ($1 ctx, []) }
| ebexp PROVE WITH LSQUARE prove_with_specs RSQUARE
                                                  { fun ctx -> ($1 ctx, $5 ctx) }
| ebexp PROVE WITH LSQUARE prove_with_specs error { raise_at !lnum ("A ] is missing.") }
| ebexp PROVE WITH LSQUARE error                  { raise_at !lnum ("Incorrect prove-with clauses.") }
| ebexp PROVE WITH error                          { raise_at !lnum ("Enclose the prove-with clauses in [].") }
;

rbexp_prove_with:
  rbexp                                           { fun ctx -> ($1 ctx, []) }
| rbexp PROVE WITH LSQUARE prove_with_specs RSQUARE
                                                  { fun ctx -> ($1 ctx, $5 ctx) }
| rbexp PROVE WITH LSQUARE prove_with_specs error { raise_at !lnum ("A ] is missing.") }
| rbexp PROVE WITH LSQUARE error                  { raise_at !lnum ("Incorrect prove-with clauses.") }
| rbexp PROVE WITH error                          { raise_at !lnum ("Enclose the prove-with clauses in [].") }
;

prove_with_specs:
    prove_with_spec                               { fun ctx -> [$1 ctx] }
  | prove_with_spec COMMA prove_with_specs        { fun ctx -> ($1 ctx)::($3 ctx) }
;

prove_with_spec:
    PRECONDITION                                  { fun _ -> Precondition }
  | CUTS LSQUARE complex_const_list RSQUARE       { fun ctx -> Cuts ($3 ctx) }
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
    TRUE                                          { fun _ -> btrue }
  | ebexp VBAR rbexp                              { fun ctx -> ($1 ctx, $3 ctx) }
  | ebexp VBAR error                              { let lno = !lnum in
                                                    fun ctx ->
                                                      raise_at lno ("Invalid range predicate after '" ^ string_of_ebexp ($1 ctx) ^ "'.")
                                                  }
  | ebexp error                                   { raise_at !lnum ("Please use '&&' to separate algebraic predicates and range predicates.") }
;

ebexp:
  ebexp_atom LANDOP ebexp                       { fun ctx -> Eand ($1 ctx, $3 ctx) }
  | ebexp_atom                                  { fun ctx -> $1 ctx }
;

ebexp_atom:
    TRUE                                          { fun _ -> Etrue }
  | EQ eexp eexp_no_unary                         { fun ctx -> Eeq ($2 ctx, $3 ctx) }
  | EQ veexp veexp_no_unary                       { fun ctx ->
                                                    let es1 = $2 ctx in
                                                    let es2 = $3 ctx in
                                                    let _ =
                                                      let size1 = List.length es1 in
                                                      let size2 = List.length es2 in
                                                      if size1 <> size2 then
                                                        raise_at !lnum ("Vectors do not have the same number of elements.") in
                                                    List.rev_map2 (fun e1 e2 -> Eeq (e1, e2)) es1 es2 |> List.rev |> eands

                                                  }
  | EQMOD eexp eexp_no_unary eexp_no_unary        { fun ctx -> Eeqmod ($2 ctx, $3 ctx, [ $4 ctx ]) }
  | EQMOD eexp eexp_no_unary LSQUARE eexp_no_unarys RSQUARE
                                                  { fun ctx -> Eeqmod ($2 ctx, $3 ctx, $5 ctx) }
  | EQMOD veexp veexp_no_unary veexp_no_unary     { fun ctx ->
                                                    let es1 = $2 ctx in
                                                    let es2 = $3 ctx in
                                                    let ms = $4 ctx in
                                                    let _ =
                                                      let size1 = List.length es1 in
                                                      let size2 = List.length es2 in
                                                      let sizem = List.length ms in
                                                      if not (size1 = size2 && size2 = sizem) then
                                                        raise_at !lnum ("Vectors do not have the same number of elements.") in
                                                    List.rev_map2 (fun (e1, e2) m -> Eeqmod (e1, e2, [m])) (List.combine es1 es2) ms |> List.rev |> eands
                                                  }
  | EQMOD veexp veexp_no_unary LSQUARE veexp_no_unarys RSQUARE
                                                  { fun ctx ->
                                                    let es1 = $2 ctx in
                                                    let es2 = $3 ctx in
                                                    let mss = $5 ctx in
                                                    let _ =
                                                      let size1 = List.length es1 in
                                                      let size2 = List.length es2 in
                                                      let sizem = List.length mss in
                                                      if not (size1 = size2 && size2 = sizem) then
                                                        raise_at !lnum ("Vectors do not have the same number of elements.") in
                                                    List.rev_map2 (fun (e1, e2) ms -> Eeqmod (e1, e2, ms)) (List.combine es1 es2) mss |> List.rev |> eands
                                                  }
  | AND ebexp_atom_without_eqmod ebexp_atom       { fun ctx -> Eand ($2 ctx, $3 ctx) }
  | LPAR ebexp RPAR                               { fun ctx -> $2 ctx }
  | eexp EQOP eexp eq_suffix                      { fun ctx ->
                                                      match $4 ctx with
                                                      | None -> Eeq ($1 ctx, $3 ctx)
                                                      | Some ms -> Eeqmod ($1 ctx, $3 ctx, ms)
                                                  }
  | veexp EQOP veexp_no_unary veq_suffix          { fun ctx ->
                                                    let es1 = $1 ctx in
                                                    let es2 = $3 ctx in
                                                    let mssopt = $4 ctx in
                                                    let _ =
                                                      let size1 = List.length es1 in
                                                      let size2 = List.length es2 in
                                                      let sizem =
                                                        match mssopt with
                                                        | None -> size2
                                                        | Some mss -> List.length mss in
                                                      if size1 <> size2 || size2 <> sizem then
                                                        raise_at !lnum ("Vectors do not have the same number of elements.") in
                                                    match mssopt with
                                                    | None -> List.rev_map2 (fun e1 e2 -> Eeq (e1, e2)) es1 es2 |> List.rev |> eands
                                                    | Some mss -> List.rev_map2 (fun (e1, e2) ms -> Eeqmod (e1, e2, ms)) (List.combine es1 es2) mss |> List.rev |> eands

                                                  }
  | AND LSQUARE ebexps RSQUARE                    { fun ctx -> eands ($3 ctx) }
  | LANDOP LSQUARE ebexps RSQUARE                 { fun ctx -> eands ($3 ctx) }
  /* Errors */
/*  | ID error                                      { raise_at !lnum ("Invalid algebraic predicate after " ^ $1 ^ ".") }*/
;

ebexp_atom_without_eqmod:
    TRUE                                          { fun _ -> Etrue }
  | EQ eexp eexp_no_unary                         { fun ctx -> Eeq ($2 ctx, $3 ctx) }
  | EQ veexp veexp_no_unary                       { fun ctx ->
                                                    let es1 = $2 ctx in
                                                    let es2 = $3 ctx in
                                                    let _ =
                                                      let size1 = List.length es1 in
                                                      let size2 = List.length es2 in
                                                      if size1 <> size2 then
                                                        raise_at !lnum ("Vectors do not have the same number of elements.") in
                                                    List.rev_map2 (fun e1 e2 -> Eeq (e1, e2)) es1 es2 |> List.rev |> eands

                                                  }
  | EQMOD eexp eexp_no_unary eexp_no_unary        { fun ctx -> Eeqmod ($2 ctx, $3 ctx, [ $4 ctx ]) }
  | EQMOD eexp eexp_no_unary LSQUARE eexp_no_unarys RSQUARE
                                                  { fun ctx -> Eeqmod ($2 ctx, $3 ctx, $5 ctx) }
  | EQMOD veexp veexp_no_unary veexp_no_unary     { fun ctx ->
                                                    let es1 = $2 ctx in
                                                    let es2 = $3 ctx in
                                                    let ms = $4 ctx in
                                                    let _ =
                                                      let size1 = List.length es1 in
                                                      let size2 = List.length es2 in
                                                      let sizem = List.length ms in
                                                      if not (size1 = size2 && size2 = sizem) then
                                                        raise_at !lnum ("Vectors do not have the same number of elements.") in
                                                    List.rev_map2 (fun (e1, e2) m -> Eeqmod (e1, e2, [m])) (List.combine es1 es2) ms |> List.rev |> eands
                                                  }
  | EQMOD veexp veexp_no_unary LSQUARE veexp_no_unarys RSQUARE
                                                  { fun ctx ->
                                                    let es1 = $2 ctx in
                                                    let es2 = $3 ctx in
                                                    let mss = $5 ctx in
                                                    let _ =
                                                      let size1 = List.length es1 in
                                                      let size2 = List.length es2 in
                                                      let sizem = List.length mss in
                                                      if not (size1 = size2 && size2 = sizem) then
                                                        raise_at !lnum ("Vectors do not have the same number of elements.") in
                                                    List.rev_map2 (fun (e1, e2) ms -> Eeqmod (e1, e2, ms)) (List.combine es1 es2) mss |> List.rev |> eands
                                                  }
  | AND ebexp_atom_without_eqmod ebexp_atom_without_eqmod
                                                  { fun ctx -> Eand ($2 ctx, $3 ctx) }
  | LPAR ebexp RPAR                               { fun ctx -> $2 ctx }
  | eexp EQOP eexp                                { fun ctx -> Eeq ($1 ctx, $3 ctx) }
  | veexp EQOP veexp                              { fun ctx ->
                                                    let es1 = $1 ctx in
                                                    let es2 = $3 ctx in
                                                    let _ =
                                                      let size1 = List.length es1 in
                                                      let size2 = List.length es2 in
                                                      if size1 <> size2 then
                                                        raise_at !lnum ("Vectors do not have the same number of elements.") in
                                                    List.rev_map2 (fun e1 e2 -> Eeq (e1, e2)) es1 es2 |> List.rev |> eands
                                                  }
  | AND LSQUARE ebexps RSQUARE                    { fun ctx -> eands ($3 ctx) }
  | LANDOP LSQUARE ebexps RSQUARE                 { fun ctx -> eands ($3 ctx) }
  /* Errors */
/*  | ID error                                      { raise_at !lnum ("Invalid algebraic predicate after " ^ $1 ^ ".") }*/
;

eq_suffix:
                                                  { fun _ -> None }
  | LPAR MOD eexp RPAR                            { fun ctx -> Some [ $3 ctx ] }
  | LPAR MOD LSQUARE eexps RSQUARE RPAR           { fun ctx -> Some ($4 ctx) }
;

veq_suffix:
                                                  { fun _ -> None }
  | LPAR MOD veexp RPAR                           { fun ctx -> Some (List.rev (List.rev_map (fun e -> [e]) ($3 ctx))) }
  | LPAR MOD LSQUARE veexps RSQUARE RPAR          { fun ctx -> Some ($4 ctx) }
;

ebexps:
    ebexp COMMA ebexps                            { fun ctx -> ($1 ctx)::($3 ctx) }
  | ebexp                                         { fun ctx -> [$1 ctx] }
  | ebexp error                                   { let lno = !lnum in
                                                    fun ctx ->
                                                      raise_at lno ("Failed to parse the algebra predicate after '" ^ string_of_ebexp ($1 ctx) ^ "'.")
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
    defined_var                                   { fun ctx -> Evar (resolve_var_with ctx !lnum $1) }
  | simple_const                                  { fun ctx -> Econst ($1 ctx) }
  | LPAR eexp RPAR                                { fun ctx -> $2 ctx }
  /* Extensions */
  | NEG eexp                                      { fun ctx -> eneg ($2 ctx) }
  | ADD eexp eexp_no_unary                        { fun ctx -> eadd ($2 ctx) ($3 ctx) }
  | SUB eexp eexp_no_unary                        { fun ctx -> esub ($2 ctx) ($3 ctx) }
  | MUL eexp eexp_no_unary                        { fun ctx -> emul ($2 ctx) ($3 ctx) }
  | SQ eexp                                       { fun ctx -> esq ($2 ctx) }
  | ADDS LSQUARE eexps RSQUARE                    { fun ctx -> eadds ($3 ctx) }
  | MULS LSQUARE eexps RSQUARE                    { fun ctx -> emuls ($3 ctx) }
  | SUBOP eexp %prec UMINUS                       { fun ctx -> eneg ($2 ctx) }
  | eexp ADDOP eexp                               { fun ctx -> eadd ($1 ctx) ($3 ctx) }
  | eexp SUBOP eexp                               { fun ctx -> esub ($1 ctx) ($3 ctx) }
  | eexp MULOP eexp                               { fun ctx -> emul ($1 ctx) ($3 ctx) }
  | eexp POWOP const                              { fun ctx ->
                                                      let e = $1 ctx in
                                                      let i = $3 ctx in
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
  | ULIMBS const LSQUARE eexps RSQUARE            { fun ctx -> limbs (Z.to_int ($2 ctx)) ($4 ctx) }
;

eexp_no_unarys:
    eexp_no_unary COMMA eexp_no_unarys            { fun ctx -> ($1 ctx)::($3 ctx) }
  | eexp_no_unary                                 { fun ctx -> [ $1 ctx ] }
;

eexp_no_unary:
    defined_var                                   { fun ctx -> Evar (resolve_var_with ctx !lnum $1) }
  | simple_const                                  { fun ctx -> Econst ($1 ctx) }
  | LPAR eexp RPAR                                { fun ctx -> $2 ctx }
  /* Extensions */
  | NEG eexp                                      { fun ctx -> eneg ($2 ctx) }
  | ADD eexp eexp_no_unary                        { fun ctx -> eadd ($2 ctx) ($3 ctx) }
  | SUB eexp eexp_no_unary                        { fun ctx -> esub ($2 ctx) ($3 ctx) }
  | MUL eexp eexp_no_unary                        { fun ctx -> emul ($2 ctx) ($3 ctx) }
  | SQ eexp                                       { fun ctx -> esq ($2 ctx) }
  | ADDS LSQUARE eexps RSQUARE                    { fun ctx -> eadds ($3 ctx) }
  | MULS LSQUARE eexps RSQUARE                    { fun ctx -> emuls ($3 ctx) }
  | eexp_no_unary ADDOP eexp                      { fun ctx -> eadd ($1 ctx) ($3 ctx) }
  | eexp_no_unary SUBOP eexp                      { fun ctx -> esub ($1 ctx) ($3 ctx) }
  | eexp_no_unary MULOP eexp                      { fun ctx -> emul ($1 ctx) ($3 ctx) }
  | eexp_no_unary POWOP const                     { fun ctx ->
                                                      let e = $1 ctx in
                                                      let i = $3 ctx in
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
  | ULIMBS const LSQUARE eexps RSQUARE            { fun ctx -> limbs (Z.to_int ($2 ctx)) ($4 ctx) }
;

eexps:
    eexp COMMA eexps                              { fun ctx -> ($1 ctx)::($3 ctx) }
  | eexp                                          { fun ctx -> [$1 ctx] }
  | VARS var_expansion                            { fun ctx -> List.rev (List.rev_map evar ($2 ctx)) }
  | VARS var_expansion COMMA eexps                { fun ctx -> List.rev_append (List.rev_map evar ($2 ctx)) ($4 ctx) }
  | MULOP veexp                                   { fun ctx -> $2 ctx }
  | MULOP veexp COMMA eexps                       { fun ctx -> List.rev_append (List.rev ($2 ctx)) ($4 ctx) }
;

veexp:
    VEC_ID                                        { fun ctx ->
                                                    let vec = `AVECT { vecname = $1; vectyphint = None; } in
                                                    let (_, atoms) = (resolve_vec_with ctx !lnum vec) in
                                                    let es = List.rev_map eexp_of_atom (List.rev_map (resolve_atom_with ctx !lnum) atoms) in
                                                    es
                                                  }
  | LSQUARE eexps RSQUARE                         { fun ctx -> $2 ctx }
  | LPAR veexp RPAR                               { fun ctx -> $2 ctx }
  /* Extensions */
  | NEG veexp                                     { fun ctx -> List.rev (List.rev_map eneg ($2 ctx)) }
  | ADD veexp veexp_no_unary                      { fun ctx ->
                                                     let es1 = $2 ctx in
                                                     let es2 = $3 ctx in
                                                     let _ = if List.length es1 <> List.length es2 then
                                                               raise_at !lnum "Two sources should have the same length." in
                                                     List.rev (List.rev_map2 eadd es1 es2)
                                                  }
  | SUB veexp veexp_no_unary                      { fun ctx ->
                                                    let es1 = $2 ctx in
                                                    let es2 = $3 ctx in
                                                    let _ = if List.length es1 <> List.length es2 then
                                                              raise_at !lnum "Two sources should have the same length." in
                                                    List.rev (List.rev_map2 esub es1 es2)  }
  | MUL veexp veexp_no_unary                      { fun ctx ->
                                                    let es1 = $2 ctx in
                                                    let es2 = $3 ctx in
                                                    let _ = if List.length es1 <> List.length es2 then
                                                              raise_at !lnum "Two sources should have the same length." in
                                                    List.rev (List.rev_map2 emul es1 es2)  }
  | SQ veexp                                      { fun ctx -> List.rev (List.rev_map esq ($2 ctx)) }
  | ADDS LSQUARE veexps RSQUARE                   { fun ctx -> List.rev (List.rev_map eadds (transpose_lists ($3 ctx))) }
  | MULS LSQUARE veexps RSQUARE                   { fun ctx -> List.rev (List.rev_map emuls (transpose_lists ($3 ctx))) }
  | SUBOP veexp %prec UMINUS                      { fun ctx -> List.rev (List.rev_map eneg ($2 ctx)) }
  | veexp ADDOP veexp                             { fun ctx ->
                                                    let es1 = $1 ctx in
                                                    let es2 = $3 ctx in
                                                    let _ = if List.length es1 <> List.length es2 then
                                                              raise_at !lnum "Two sources should have the same length." in
                                                    List.rev (List.rev_map2 eadd es1 es2)
                                                  }
  | veexp SUBOP veexp                             { fun ctx ->
                                                    let es1 = $1 ctx in
                                                    let es2 = $3 ctx in
                                                    let _ = if List.length es1 <> List.length es2 then
                                                              raise_at !lnum "Two sources should have the same length." in
                                                    List.rev (List.rev_map2 esub es1 es2)
                                                  }
  | veexp MULOP veexp                             { fun ctx ->
                                                    let es1 = $1 ctx in
                                                    let es2 = $3 ctx in
                                                    let _ = if List.length es1 <> List.length es2 then
                                                              raise_at !lnum "Two sources should have the same length." in
                                                    List.rev (List.rev_map2 emul es1 es2)
                                                  }
  | veexp POWOP const                             { fun ctx ->
                                                      let es = $1 ctx in
                                                      let i = $3 ctx in
                                                      if Z.equal i Z.zero then List.rev_map (fun _ -> Econst Z.one) es
                                                      else if Z.equal i Z.one then es
                                                      else List.rev (List.rev_map (fun e -> epow e (Econst i)) es)
                                                  }
  | ULIMBS const LSQUARE veexps RSQUARE           { fun ctx ->
                                                    let n = Z.to_int ($2 ctx) in
                                                    let ess = $4 ctx in
                                                    List.rev (List.rev_map (fun es -> limbs n es) (transpose_lists ess))
                                                  }
;

veexp_no_unarys:
    veexp_no_unary COMMA veexp_no_unarys          { fun ctx -> ($1 ctx)::($3 ctx) }
  | veexp_no_unary                                { fun ctx -> [ $1 ctx ] }
;

veexp_no_unary:
    VEC_ID                                        { fun ctx ->
                                                    let vec = `AVECT { vecname = $1; vectyphint = None; } in
                                                    let (_, atoms) = (resolve_vec_with ctx !lnum vec) in
                                                    let es = List.rev_map eexp_of_atom (List.rev_map (resolve_atom_with ctx !lnum) atoms) in
                                                    es
                                                  }
  | LSQUARE eexps RSQUARE                         { fun ctx -> $2 ctx }
  | LPAR veexp RPAR                               { fun ctx -> $2 ctx }
  /* Extensions */
  | NEG veexp                                     { fun ctx -> List.rev (List.rev_map eneg ($2 ctx)) }
  | ADD veexp veexp_no_unary                      { fun ctx ->
                                                    let es1 = $2 ctx in
                                                    let es2 = $3 ctx in
                                                    let _ = if List.length es1 <> List.length es2 then
                                                              raise_at !lnum "Two sources should have the same length." in
                                                    List.rev (List.rev_map2 eadd es1 es2)
                                                  }
  | SUB veexp veexp_no_unary                      { fun ctx ->
                                                    let es1 = $2 ctx in
                                                    let es2 = $3 ctx in
                                                    let _ = if List.length es1 <> List.length es2 then
                                                              raise_at !lnum "Two sources should have the same length." in
                                                    List.rev (List.rev_map2 esub es1 es2)  }
  | MUL veexp veexp_no_unary                      { fun ctx ->
                                                    let es1 = $2 ctx in
                                                    let es2 = $3 ctx in
                                                    let _ = if List.length es1 <> List.length es2 then
                                                              raise_at !lnum "Two sources should have the same length." in
                                                    List.rev (List.rev_map2 emul es1 es2)  }
  | SQ veexp                                      { fun ctx -> List.rev (List.rev_map esq ($2 ctx)) }
  | ADDS LSQUARE veexps RSQUARE                   { fun ctx -> List.rev (List.rev_map eadds (transpose_lists ($3 ctx))) }
  | MULS LSQUARE veexps RSQUARE                   { fun ctx -> List.rev (List.rev_map emuls (transpose_lists ($3 ctx))) }
  | veexp_no_unary ADDOP veexp                    { fun ctx ->
                                                    let es1 = $1 ctx in
                                                    let es2 = $3 ctx in
                                                    let _ = if List.length es1 <> List.length es2 then
                                                              raise_at !lnum "Two sources should have the same length." in
                                                    List.rev (List.rev_map2 eadd es1 es2)
                                                  }
  | veexp_no_unary SUBOP veexp                    { fun ctx ->
                                                    let es1 = $1 ctx in
                                                    let es2 = $3 ctx in
                                                    let _ = if List.length es1 <> List.length es2 then
                                                              raise_at !lnum "Two sources should have the same length." in
                                                    List.rev (List.rev_map2 esub es1 es2)
                                                  }
  | veexp_no_unary MULOP veexp                    { fun ctx ->
                                                    let es1 = $1 ctx in
                                                    let es2 = $3 ctx in
                                                    let _ = if List.length es1 <> List.length es2 then
                                                              raise_at !lnum "Two sources should have the same length." in
                                                    List.rev (List.rev_map2 emul es1 es2)
                                                  }
  | veexp_no_unary POWOP const                    { fun ctx ->
                                                      let es = $1 ctx in
                                                      let i = $3 ctx in
                                                      if Z.equal i Z.zero then List.rev_map (fun _ -> Econst Z.one) es
                                                      else if Z.equal i Z.one then es
                                                      else List.rev (List.rev_map (fun e -> epow e (Econst i)) es)
                                                  }
  | ULIMBS const LSQUARE veexps RSQUARE           { fun ctx ->
                                                    let n = Z.to_int ($2 ctx) in
                                                    let ess = $4 ctx in
                                                    List.rev (List.rev_map (fun es -> limbs n es) (transpose_lists ess))
                                                  }
;

veexps:
    veexp COMMA veexps                            { fun ctx -> ($1 ctx)::($3 ctx) }
  | veexp                                         { fun ctx -> [$1 ctx] }
;





rbexp:
    rbexp_and LOROP rbexp                         { fun ctx -> Ror ($1 ctx, $3 ctx) }
  | rbexp_and                                     { fun ctx -> $1 ctx }
;

rbexp_and:
    rbexp_atom LANDOP rbexp_and                   { fun ctx -> Rand ($1 ctx, $3 ctx) }
  | rbexp_atom                                    { fun ctx -> $1 ctx }
;

rbexp_atom:
    TRUE                                          { fun _ -> Rtrue }
  | EQ rexp rexp                                  { let lno = !lnum in
                                                    fun ctx ->
                                                      let e1 = $2 ctx in
                                                      let e2 = $3 ctx in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else Req (w1, e1, e2)
                                                  }
  | NEG rbexp_atom                                { fun ctx -> Rneg ($2 ctx) }
  | NEGOP rbexp_atom                              { fun ctx -> Rneg ($2 ctx) }
  | AND rbexp_atom_without_eqmod rbexp_atom
                                                  { fun ctx -> Rand ($2 ctx, $3 ctx) }
  | OR rbexp_atom_without_eqmod rbexp_atom        { fun ctx -> Ror ($2 ctx, $3 ctx) }
  | LPAR rbexp RPAR                               { fun ctx -> $2 ctx }
  /* Extensions */
  | rexp EQOP rexp req_suffix                     { let lno = !lnum in
                                                    fun ctx ->
                                                      let e1 = $1 ctx in
                                                      let e2 = $3 ctx in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        match $4 ctx with
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
                                                    fun ctx ->
                                                      let e1 = $1 ctx in
                                                      let e2 = $3 ctx in
                                                      let op = $2 in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else Rcmp(w1, op, e1, e2)
                                                  }
  | cmpop_prefix rexp rexp                        { let lno = !lnum in
                                                    fun ctx ->
                                                      let e1 = $2 ctx in
                                                      let e2 = $3 ctx in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else Rcmp (w1, $1, e1, e2)
                                                  }
  | AND LSQUARE rbexps RSQUARE                    { fun ctx -> rands ($3 ctx) }
  | LANDOP LSQUARE rbexps RSQUARE                 { fun ctx -> rands ($3 ctx) }
  | OR LSQUARE rbexps RSQUARE                     { fun ctx -> rors ($3 ctx) }
  | LOROP LSQUARE rbexps RSQUARE                  { fun ctx -> rors ($3 ctx) }
  | EQMOD rexp rexp rexp                          { let lno = !lnum in
                                                    fun ctx ->
                                                      let e1 = $2 ctx in
                                                      let e2 = $3 ctx in
                                                      let m = $4 ctx in
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
                                                    fun ctx ->
                                                      let e1 = $2 ctx in
                                                      let e2 = $3 ctx in
                                                      let m = $4 ctx in
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
                                                    fun ctx ->
                                                      let e1 = $2 ctx in
                                                      let e2 = $3 ctx in
                                                      let m = $4 ctx in
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
                                                    fun ctx ->
                                                      let e1 = $2 ctx in
                                                      let e2 = $3 ctx in
                                                      let m = $4 ctx in
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
    TRUE                                          { fun _ -> Rtrue }
  | EQ rexp rexp                                  { let lno = !lnum in
                                                    fun ctx ->
                                                      let e1 = $2 ctx in
                                                      let e2 = $3 ctx in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else Req (w1, e1, e2)
                                                  }
  | NEG rbexp_atom_without_eqmod                  { fun ctx -> Rneg ($2 ctx) }
  | AND rbexp_atom_without_eqmod rbexp_atom_without_eqmod
                                                  { fun ctx -> Rand ($2 ctx, $3 ctx) }
  | OR rbexp_atom_without_eqmod rbexp_atom_without_eqmod
                                                  { fun ctx -> Ror ($2 ctx, $3 ctx) }
  | LPAR rbexp RPAR                               { fun ctx -> $2 ctx }
  /* Extensions */
  | rexp EQOP rexp                                { let lno = !lnum in
                                                    fun ctx ->
                                                      let e1 = $1 ctx in
                                                      let e2 = $3 ctx in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else Req (w1, e1, e2)
                                                  }
  | rexp cmpop_infix rexp                         { let lno = !lnum in
                                                    fun ctx ->
                                                      let e1 = $1 ctx in
                                                      let e2 = $3 ctx in
                                                      let op = $2 in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else Rcmp(w1, op, e1, e2) }
  | cmpop_prefix rexp rexp                        { let lno = !lnum in
                                                    fun ctx ->
                                                      let e1 = $2 ctx in
                                                      let e2 = $3 ctx in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else Rcmp (w1, $1, e1, e2) }
  | AND LSQUARE rbexps RSQUARE                    { fun ctx -> rands ($3 ctx) }
  | OR LSQUARE rbexps RSQUARE                     { fun ctx -> rors ($3 ctx) }
  | EQMOD rexp rexp rexp                          { let lno = !lnum in
                                                    fun ctx ->
                                                      let e1 = $2 ctx in
                                                      let e2 = $3 ctx in
                                                      let m = $4 ctx in
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
                                                    fun ctx ->
                                                      let e1 = $2 ctx in
                                                      let e2 = $3 ctx in
                                                      let m = $4 ctx in
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
                                                    fun ctx ->
                                                      let e1 = $2 ctx in
                                                      let e2 = $3 ctx in
                                                      let m = $4 ctx in
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
                                                    fun ctx ->
                                                      let e1 = $2 ctx in
                                                      let e2 = $3 ctx in
                                                      let m = $4 ctx in
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
                                                  { fun _ -> None }
  | LPAR MOD rexp RPAR                            { fun ctx -> Some (reqmod, $3 ctx) }
  | LPAR UMOD rexp RPAR                           { fun ctx -> Some (reqmod, $3 ctx) }
  | LPAR SMOD rexp RPAR                           { fun ctx -> Some (reqsmod, $3 ctx) }
  | LPAR SREM rexp RPAR                           { fun ctx -> Some (reqsrem, $3 ctx) }
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
    rbexp COMMA rbexps                            { fun ctx -> ($1 ctx)::($3 ctx) }
  | rbexp                                         { fun ctx -> [$1 ctx] }
  | rbexp COMMA error                             { raise_at !lnum ("Invalid range predicates.") }
  | rbexp error                                   { raise_at !lnum ("A ',' is used to separate range predicates") }
;

rexp:
    defined_var                                   { fun ctx -> Rvar (resolve_var_with ctx !lnum $1) }
  | CONST const const                             { fun ctx ->
                                                      let w = Z.to_int ($2 ctx) in
                                                      let n = $3 ctx in
                                                      Rconst (w, n) }
  | const AT const                                { fun ctx ->
                                                      let w = Z.to_int ($3 ctx) in
                                                      let n = $1 ctx in
                                                      Rconst (w, n) }
  | UEXT rexp const                               { fun ctx ->
                                                      let e = $2 ctx in
                                                      let i = Z.to_int ($3 ctx) in
                                                      let w = size_of_rexp e in
                                                      Ruext (w, e, i) }
  | SEXT rexp const                               { fun ctx ->
                                                      let e = $2 ctx in
                                                      let i = Z.to_int ($3 ctx) in
                                                      let w = size_of_rexp e in
                                                      Rsext (w, e, i) }
  | LPAR rexp RPAR                                { fun ctx -> $2 ctx }
  /* Extensions */
  | NEG rexp                                      { fun ctx ->
                                                      let e = $2 ctx in
                                                      let w = size_of_rexp e in
                                                      Runop (w, Rnegb, e) }
  | NEGOP rexp                                    { fun ctx ->
                                                      let e = $2 ctx in
                                                      let w = size_of_rexp e in
                                                      Runop (w, Rnegb, e) }
  | NOT rexp                                      { fun ctx ->
                                                      let e = $2 ctx in
                                                      let w = size_of_rexp e in
                                                      Runop (w, Rnotb, e) }
  | NOTOP rexp                                    { fun ctx ->
                                                      let e = $2 ctx in
                                                      let w = size_of_rexp e in
                                                      Runop (w, Rnotb, e) }
  | ADD rexp rexp                                 { let lno = !lnum in
                                                    fun ctx ->
                                                      let e1 = $2 ctx in
                                                      let e2 = $3 ctx in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                       radd w1 e1 e2 }
  | SUB rexp rexp                                 { let lno = !lnum in
                                                    fun ctx ->
                                                      let e1 = $2 ctx in
                                                      let e2 = $3 ctx in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                       rsub w1 e1 e2 }
  | MUL rexp rexp                                 { let lno = !lnum in
                                                    fun ctx ->
                                                      let e1 = $2 ctx in
                                                      let e2 = $3 ctx in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                       rmul w1 e1 e2 }
  | SQ rexp                                       { fun ctx ->
                                                      let e = $2 ctx in
                                                      rsq (size_of_rexp e) e }
  | UMOD rexp rexp                                { let lno = !lnum in
                                                    fun ctx ->
                                                      let e1 = $2 ctx in
                                                      let e2 = $3 ctx in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                       rumod w1 e1 e2 }
  | SREM rexp rexp                                { let lno = !lnum in
                                                    fun ctx ->
                                                      let e1 = $2 ctx in
                                                      let e2 = $3 ctx in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                       rsrem w1 e1 e2 }
  | SMOD rexp rexp                                { let lno = !lnum in
                                                    fun ctx ->
                                                      let e1 = $2 ctx in
                                                      let e2 = $3 ctx in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                       rsmod w1 e1 e2 }
  | AND rexp rexp                                 { let lno = !lnum in
                                                    fun ctx ->
                                                      let e1 = $2 ctx in
                                                      let e2 = $3 ctx in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        Rbinop (w1, Randb, e1, e2) }
  | OR rexp rexp                                  { let lno = !lnum in
                                                    fun ctx ->
                                                      let e1 = $2 ctx in
                                                      let e2 = $3 ctx in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        Rbinop (w1, Rorb, e1, e2) }
  | XOR rexp rexp                                 { let lno = !lnum in
                                                    fun ctx ->
                                                      let e1 = $2 ctx in
                                                      let e2 = $3 ctx in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        Rbinop (w1, Rxorb, e1, e2) }

  | SHL rexp rexp                                 { let lno = !lnum in
                                                    fun ctx ->
                                                      let e1 = $2 ctx in
                                                      let e2 = $3 ctx in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        Rbinop (w1, Rshl, e1, e2) }
  | SHR rexp rexp                                 { let lno = !lnum in
                                                    fun ctx ->
                                                      let e1 = $2 ctx in
                                                      let e2 = $3 ctx in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        Rbinop (w1, Rlshr, e1, e2) }
  | SAR rexp rexp                                 { let lno = !lnum in
                                                    fun ctx ->
                                                      let e1 = $2 ctx in
                                                      let e2 = $3 ctx in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        Rbinop (w1, Rashr, e1, e2) }
  | ROL rexp rexp                                 { let lno = !lnum in
                                                    fun ctx ->
                                                      let e1 = $2 ctx in
                                                      let e2 = $3 ctx in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        Rbinop (w1, Rrol, e1, e2) }
  | ROR rexp rexp                                 { let lno = !lnum in
                                                    fun ctx ->
                                                      let e1 = $2 ctx in
                                                      let e2 = $3 ctx in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        Rbinop (w1, Rror, e1, e2) }
  | CONCAT rexp rexp                              { fun ctx ->
                                                      let e1 = $2 ctx in
                                                      let e2 = $3 ctx in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      Rconcat (w1, w2, e1, e2) }
  | ADDS LSQUARE rexps RSQUARE                    { let lno = !lnum in
                                                    fun ctx ->
                                                      let es = $3 ctx in
                                                      match es with
                                                      | [] -> raise_at lno ("No range expression is passed to add.")
                                                      | hd::_tl -> radds (size_of_rexp hd) es }
  | MULS LSQUARE rexps RSQUARE                    { let lno = !lnum in
                                                    fun ctx ->
                                                      let es = $3 ctx in
                                                      match es with
                                                      | [] -> raise_at lno ("No range expression is passed to mul.")
                                                      | hd::_tl -> rmuls (size_of_rexp hd) es }
  | ULIMBS const LSQUARE rexps RSQUARE            { fun ctx ->
                                                      let w = Z.to_int ($2 ctx) in
                                                      let es = $4 ctx in
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
  | SLIMBS const LSQUARE rexps RSQUARE            { fun ctx ->
                                                      let w = Z.to_int ($2 ctx) in
                                                      let es = $4 ctx in
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
                                                    fun ctx ->
                                                      let e1 = $1 ctx in
                                                      let e2 = $3 ctx in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        Rbinop (w1, Radd, e1, e2) }
  | rexp SUBOP rexp                               { let lno = !lnum in
                                                    fun ctx ->
                                                      let e1 = $1 ctx in
                                                      let e2 = $3 ctx in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        Rbinop (w1, Rsub, e1, e2) }
  | rexp MULOP rexp                               { let lno = !lnum in
                                                    fun ctx ->
                                                      let e1 = $1 ctx in
                                                      let e2 = $3 ctx in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        Rbinop (w1, Rmul, e1, e2) }
  | rexp ANDOP rexp                               { let lno = !lnum in
                                                    fun ctx ->
                                                      let e1 = $1 ctx in
                                                      let e2 = $3 ctx in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        Rbinop (w1, Randb, e1, e2) }
  | rexp OROP rexp                                { let lno = !lnum in
                                                    fun ctx ->
                                                      let e1 = $1 ctx in
                                                      let e2 = $3 ctx in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        Rbinop (w1, Rorb, e1, e2) }
  | rexp XOROP rexp                               { let lno = !lnum in
                                                    fun ctx ->
                                                      let e1 = $1 ctx in
                                                      let e2 = $3 ctx in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        Rbinop (w1, Rxorb, e1, e2) }
  | rexp SHLOP rexp                               { let lno = !lnum in
                                                    fun ctx ->
                                                      let e1 = $1 ctx in
                                                      let e2 = $3 ctx in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        Rbinop (w1, Rshl, e1, e2) }
  | rexp SHROP rexp                               { let lno = !lnum in
                                                    fun ctx ->
                                                      let e1 = $1 ctx in
                                                      let e2 = $3 ctx in
                                                      let w1 = size_of_rexp e1 in
                                                      let w2 = size_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        Rbinop (w1, Rlshr, e1, e2) }
  | rexp SAROP rexp                               { let lno = !lnum in
                                                    fun ctx ->
                                                      let e1 = $1 ctx in
                                                      let e2 = $3 ctx in
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
    fun ctx ->
      let e = $1 ctx in
      let es = $3 ctx in
      if List.length es > 0 && size_of_rexp e != size_of_rexp (List.hd es) then
        raise_at lno ("Widths of range expressions mismatch: "
                      ^ string_of_rexp e ^ " (width " ^ string_of_int (size_of_rexp e) ^ ")"
                      ^ ", "
                      ^ string_of_rexp (List.hd es) ^ " (width " ^ string_of_int (size_of_rexp (List.hd es)) ^ ")")
      else
        e::es
  }
  | rexp                                          { fun ctx -> [$1 ctx] }
  | VARS var_expansion                            { fun ctx -> List.map (fun v -> Rvar v) ($2 ctx) }
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
;

lval_scalars:
    lval                                          { [$1] }
  | lval COMMA lval_scalars                       { $1::$3 }
;

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
    actual_atoms                                  { fun ctx tys -> $1 ctx tys }
  |                                               { fun _ _ -> [] }
;

actual_atoms:
    actual_atom                                   { fun ctx tys ->
                                                      let (_tys, vs) = $1 ctx tys in
                                                      vs
                                                  }
  | actual_atom COMMA actual_atoms                { fun ctx tys ->
                                                      let (tys, vs) = $1 ctx tys in
                                                      vs@($3 ctx tys)
                                                  }
;

/* We don't check if the actual variables are defined or not because they may just be variable names of procedure outputs. */
actual_atom:
    const                                         { let lno = !lnum in
                                                    fun ctx tys ->
                                                      match tys with
                                                      | (ty::argtys, outtys) ->
                                                         ((argtys, outtys), [parse_typed_const ctx lno ty $1])
                                                      | ([], _ty::_) -> raise_at lno ("The corresponding formal parameter is an output variable. "
                                                                                     ^ "The actual parameter must be a variable.")
                                                      | _ -> raise_at lno ("The number of actual parameters does not match the number of formal parameters.") }
  | const AT typ                                  { let lno = !lnum in
                                                    fun ctx tys ->
                                                      match tys with
                                                      | (ty::argtys, outtys) ->
                                                         if ty = $3 then ((argtys, outtys), [parse_typed_const ctx lno $3 $1])
                                                         else raise_at lno ("The specified type is not compatible to the type of the corresponding formal parameter")
                                                      | ([], _ty::_) -> raise_at lno ("The corresponding formal parameter is an output variable. "
                                                                                     ^ "The actual parameter must be a variable.")
                                                      | _ -> raise_at lno ("The number of actual parameters does not match the number of formal parameters.") }
  | typ const                                     { let lno = !lnum in
                                                    fun ctx tys ->
                                                      match tys with
                                                      | (ty::argtys, outtys) ->
                                                         if ty = $1 then ((argtys, outtys), [parse_typed_const ctx lno $1 $2])
                                                         else raise_at lno ("The specified type is not compatible to the type of the corresponding formal parameter")
                                                      | ([], _ty::_) -> raise_at lno ("The corresponding formal parameter is an output variable. "
                                                                                     ^ "The actual parameter must be a variable.")
                                                      | _ -> raise_at lno ("The number of actual parameters does not match the number of formal parameters.") }
  | ID                                            { let lno = !lnum in
                                                    if $1 = "_" then raise_at lno "Reading the value of variable _ is forbidden."
                                                    else
                                                      fun ctx tys ->
                                                      match tys with
                                                      | (ty::argtys, outtys) ->
                                                         (try
                                                            let v = SM.find $1 ctx.cvars in
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
                                                    if $1 = "_" then raise_at lno "Reading the value of variable _ is forbidden."
                                                    else
                                                      fun ctx tys ->
                                                      let prefix = $1 in
                                                      let st = $3 in
                                                      let ed = $5 in
                                                      let (tys, vars_rev) =
                                                        List.fold_left (fun (tys, vars_rev) i ->
                                                                         let vname = prefix ^ vars_expansion_infix ^ string_of_int i in
                                                                         match tys with
                                                                         | (ty::argtys, outtys) ->
                                                                            (try
                                                                               let v = SM.find vname ctx.cvars in
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
  /*| LPAR atom RPAR                              { fun ctx -> $2 ctx } source of reduce/reduce conflict*/
;

atom_v:
    VEC_ID                                        { `AVECT { vecname = $1; vectyphint = None; } }
  | VEC_ID AT typ_vec                             { `AVECT { vecname = $1; vectyphint = Some $3; } }
  | LSQUARE atom_scalars RSQUARE                  { `AVLIT $2 }
;

atom_scalars:
    atom                                          { [$1] }
  | atom COMMA atom_scalars                       { $1::$3 }
;

var_expansion:
  ID OROP NUM DOTDOT NUM
  {
    let lno = !lnum in
    if $1 = "_" then raise_at lno "Reading the value of variable _ is forbidden."
    else
      fun ctx ->
      let prefix = $1 in
      let st = $3 in
      let ed = $5 in
      let res = List.map
                  (fun i ->
                    let vname = prefix ^ vars_expansion_infix ^ string_of_int i in
                    try
                      SM.find vname ctx.cvars
                    with Not_found ->
                      raise_at lno ("Failed to determine the type of " ^ vname)
                  ) ((Z.to_int st)--(Z.to_int ed)) in
      let _ = List.iter (fun v -> if not (SM.mem v.vname ctx.cvars) && not (SM.mem v.vname ctx.cghosts) then raise_at lno ("Variable " ^ string_of_var v ^ " is not defined.")) res in
      res
  }
;

defined_var:
    ID                                            { if $1 = "_" then raise_at !lnum "Reading the value of variable _ is forbidden."
                                                    else `AVAR { atmtyphint = None;    atmname = $1; } }
  | ID AT typ                                     { if $1 = "_" then raise_at !lnum "Reading the value of variable _ is forbidden."
                                                    else `AVAR { atmtyphint = Some $3; atmname = $1; } }
  | typ ID                                        { if $2 = "_" then raise_at !lnum "Reading the value of variable _ is forbidden."
                                                    else `AVAR { atmtyphint = Some $1; atmname = $2; } }
;

gvars:
  gvar                                            { fun ctx -> VS.singleton ($1 ctx) }
| gvar COMMA gvars                                { fun ctx -> VS.add ($1 ctx) ($3 ctx) }
| gvar error                                      {
                                                    let lno = !lnum in
                                                    fun _ ->
                                                      raise_at lno ("A comma is used to separate ghost variables.")
                                                  }
| error                                           {
                                                    let lno = !lnum in
                                                    fun _ ->
                                                      raise_at lno ("Invalid ghost variable.")
                                                  }
;

gvar:
  typ ID                                          {
                                                    let lno = !lnum in
                                                    if $2 = "_" then raise_at lno "Reading the value of variable _ is forbidden."
                                                    else
                                                      fun ctx ->
                                                      let ty = $1 in
                                                      let vname = $2 in
                                                      if SM.mem vname ctx.cvars then raise_at lno ("The ghost variable " ^ vname ^ " has been defined as a program variable.")
                                                      else if SM.mem vname ctx.cghosts then raise_at lno ("The ghost variable " ^ vname ^ " has been defined previously.")
                                                      else mkvar vname ty
                                                  }
| ID AT typ                                       {
                                                    let lno = !lnum in
                                                    if $1 = "_" then raise_at lno "Reading the value of variable _ is forbidden."
                                                    else
                                                      fun ctx ->
                                                      let ty = $3 in
                                                      let vname = $1 in
                                                      if SM.mem vname ctx.cvars then raise_at lno ("The ghost variable " ^ vname ^ " has been defined as a program variable.")
                                                      else if SM.mem vname ctx.cghosts then raise_at lno ("The ghost variable " ^ vname ^ " has been defined previously.")
                                                      else mkvar vname ty
                                                  }
;

complex_const_list:
    complex_const                                 { fun ctx -> [Z.to_int ($1 ctx)] }
  | complex_const COMMA complex_const_list        { fun ctx -> (Z.to_int ($1 ctx))::($3 ctx) }

const:
    simple_const                                  { fun ctx -> $1 ctx }
  | LPAR complex_const RPAR                       { fun ctx -> ($2 ctx) }
/*  | ID error                                      { raise_at !lnum ("A constant is expected but '" ^ $1 ^ "' is encountered.") }*/
;

simple_const:
    NUM                                           { fun _ -> $1 }
  | DEREFOP ID                                    { let lno = !lnum in
                                                    fun ctx ->
                                                      try
                                                        SM.find $2 ctx.cconsts
                                                      with Not_found ->
                                                        raise_at lno ("Undefined constant: " ^ $2) }
;

complex_const:
    const                                         { fun ctx -> $1 ctx }
  | SUBOP const %prec UMINUS                      { fun ctx -> Z.neg ($2 ctx) }
  | complex_const ADDOP complex_const             { fun ctx -> Z.add ($1 ctx) ($3 ctx) }
  | complex_const SUBOP complex_const             { fun ctx -> Z.sub ($1 ctx) ($3 ctx) }
  | complex_const MULOP complex_const             { fun ctx -> Z.mul ($1 ctx) ($3 ctx) }
  | complex_const POWOP complex_const             { fun ctx ->
                                                    let n = $1 ctx in
                                                    let i = $3 ctx in
                                                    try
                                                      Z.pow n (Z.to_int i)
                                                    with Z.Overflow ->
                                                      big_pow n i
                                                  }
;

carry:
    atom                                          { $1 }
;

carry_v:
    atom_v                                        { $1 }
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
