
open Parsing
open Ast.Cryptoline


(* ---------- Positions ---------- *)

type lno = int

type pos = { pfname: string option;
             plnum: int;
             pcnum: int }
let string_of_pos p =
  let fn =
    match p.pfname with
    | None -> ""
    | Some fn -> fn ^ ":" in
  fn ^ "(" ^ string_of_int p.plnum ^ ", " ^ string_of_int p.pcnum ^ ")"

let get_line_start () = (symbol_start_pos()).pos_lnum
let get_line_end () = (symbol_end_pos()).pos_lnum
let get_rule_start () =
  let l = symbol_start_pos() in
  { pfname = if String.length l.pos_fname > 0 then Some l.pos_fname else None;
    plnum = l.pos_lnum;
    pcnum = l.pos_cnum - l.pos_bol + 1 }
let get_rule_end () =
  let l = symbol_end_pos() in
  { pfname = if String.length l.pos_fname > 0 then Some l.pos_fname else None;
    plnum = l.pos_lnum;
    pcnum = l.pos_cnum - l.pos_bol + 1 }
let get_rhs_start n =
  let l = rhs_start_pos n in
  { pfname = if String.length l.pos_fname > 0 then Some l.pos_fname else None;
    plnum = l.pos_lnum;
    pcnum = l.pos_cnum - l.pos_bol + 1 }
let get_rhs_end n =
  let l = rhs_end_pos n in
  { pfname = if String.length l.pos_fname > 0 then Some l.pos_fname else None;
    plnum = l.pos_lnum;
    pcnum = l.pos_cnum - l.pos_bol + 1 }
let get_rhs_starts n =
  List.rev_map get_rhs_start (List.init n (fun i -> i)) |> List.rev

type 'a lined = lno -> 'a

type 'a positioned = pos -> 'a


(* ---------- Exceptions ---------- *)

exception ParseError of string

let raise_at_line lno msg = raise (ParseError ("Parse failure at line " ^ string_of_int lno ^ ". " ^ msg))

let raise_at pos msg = raise (ParseError ("Parse failure at " ^ string_of_pos pos ^ ". " ^ msg))


(* ---------- Auxiliary Functions ---------- *)

let num_two = Z.of_int 2

let rec big_pow x n =
  if Z.equal n Z.zero then Z.one
  else if Z.equal n Z.one then x
  else
    let y = big_pow x (Z.div n num_two) in
    let z = Z.pow y 2 in
    if Z.equal (Z.rem n num_two) Z.zero then z
    else Z.mul x z

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

let (--) i j =
  let rec aux n acc =
    if n < i then acc else aux (n-1) (n :: acc)
  in aux j []

let rec transpose_lists xss =
  match xss with
  | [] -> []
  | []::_ -> []
  | (x::xs)::xss -> (x::(List.rev (List.rev_map List.hd xss)))::(transpose_lists (xs::(List.rev (List.rev_map List.tl xss))))

let vm_of_list (vs : var list) = List.fold_left (fun m v -> SM.add v.vname v m) SM.empty vs
let vm_of_vs (vs : VS.t) = vm_of_list (VS.elements vs)
let vs_of_vm vm = SM.fold (fun _ v vs -> VS.add v vs) vm VS.empty
let remove_keys_from_map (names: string list) (vm: 'b SM.t) = List.fold_left (fun map k -> SM.remove k map) vm names

let select_nth lno xs n =
  let _ = if n < 0 then raise_at_line lno ("The index " ^ string_of_int n ^ " must be non-negative.")
          else if n >= List.length xs then raise_at_line lno ("The index " ^ string_of_int n ^ " is out of bounds (" ^ string_of_int (List.length xs - 1) ^ ")") in
  List.nth xs n

let select_from_range lno xs io jo ko =
  let len = List.length xs in
  let normalize i = if i < 0 then len + i + 1 else i in
  let i =
    match io with
    | None -> 0
    | Some i -> normalize i in
  let j =
    match jo with
    | None -> len
    | Some j -> normalize j in
  let k =
    match ko with
    | None -> 1
    | Some k -> k in
  let mkindices i j k =
    if k = 0 then raise_at_line lno ("The slice step " ^ string_of_int k ^ " cannot be zero.")
    else if i = j then []
    else if i < j && k <= 0 then []
    else if j < i && k >= 0 then []
    else let rec helper_inc i j k =
           if i >= j then []
           else i::(helper_inc (i+k) j k) in
         let rec helper_dec i j k =
           if i <= j then []
           else i::(helper_dec (i+k) j k) in
         if i < j then helper_inc i j k
         else helper_dec i j k in
  let select () = List.rev_map (select_nth lno xs) (List.rev (mkindices i j k)) in
  select ()

let vars_expansion_infix = "_"

let is_type_compatible formal actual =
  match actual with
  | Avar v -> formal.vtyp = v.vtyp
  | Aconst (ty, _n) -> formal.vtyp = ty


(* ---------- Vectors ---------- *)

type vectyp = typ * int
(** type of vector variables *)

let string_of_vectyp (t, n) = Printf.sprintf "%s[%d]" (string_of_typ t) n

let vec_name_fn vname =
  let n = String.length vname in
  let name = String.sub vname 1 (n - 1) in
  (* XXX: Find a suitable delimiter for name and index that don't choke Boolector and Singular *)
  Printf.sprintf "VEC_%s_%d" name


(* ---------- Functions ---------- *)

type func =
  {
    fname : string;
    fargs : var list;
    fouts : var list;
    fvm : var SM.t;             (* a map from a name to a variable (including carry variables) *)
    fym : var SM.t;             (* a map from a name to a carry variable *)
    fgm : var SM.t;             (* a map from a name to a ghost variable *)
    fbody : lined_program;
    fpre : bexp;
    fpost : bexp_prove_with
  }


(* ---------- Parsing Context ---------- *)

type parsing_context =
  {
    mutable cfuns: func SM.t;       (* a map from function name to function definition *)
    mutable cconsts: Z.t SM.t;      (* a map from constant name to constant value *)
    mutable cvars: var SM.t;        (* a map from variable name to variable *)
    mutable cvecs: vectyp SM.t;     (* a map from vector name to its type *)
    mutable ccarries: var SM.t;     (* a map from carry name to carry variable *)
    mutable cghosts: var SM.t       (* a map from ghost name to ghost variable *)
  }

type 'a contextual = parsing_context -> 'a

let empty_parsing_context () =
  {
    cfuns = SM.empty;
    cconsts = SM.empty;
    cvars = SM.empty;
    cvecs = SM.empty;
    ccarries = SM.empty;
    cghosts = SM.empty
  }

(* Add a scalar program variable to a parsing context *)
let ctx_define_var ctx v =
  let _ = ctx.cvars <- SM.add v.vname v ctx.cvars in
  let _ =
    if var_is_bit v then ctx.ccarries <- SM.add v.vname v ctx.ccarries
    else ctx.ccarries <- SM.remove v.vname ctx.ccarries in
  ()

(* Add a carry to a parsing context (type is not checked in this function) *)
let ctx_define_carry ctx v =
  let _ = ctx.cvars <- SM.add v.vname v ctx.cvars in
  let _ = ctx.ccarries <- SM.add v.vname v ctx.ccarries in
  ()

(* Add a vector program variable to a parsing context *)
let ctx_define_vec ctx vecname vectyp =
  ctx.cvecs <- SM.add vecname vectyp ctx.cvecs

(* Add a ghost variable to a parsing context *)
let ctx_define_ghost ctx v =
  ctx.cghosts <- SM.add v.vname v ctx.cghosts

(* Find a variable by name *)
let ctx_find_var ctx n = SM.find n ctx.cvars

(* Find a vector by name *)
let ctx_find_vec ctx n = SM.find n ctx.cvecs

(* Find a ghost variable by name *)
let ctx_find_ghost ctx n = SM.find n ctx.cghosts

(* Check if a name is a variable *)
let ctx_name_is_var ctx n = SM.mem n ctx.cvars

(* Check if a name is a ghost variable *)
let ctx_name_is_ghost ctx n = SM.mem n ctx.cghosts

(* Check if a variable is defined *)
let ctx_var_is_defined ctx v = SM.mem v.vname ctx.cvars

(* Check if a vector is defined *)
let ctx_vec_is_defined ctx v = SM.mem v.vname ctx.cvecs

(* Check if a carry is defined *)
let ctx_carry_is_defined ctx v = SM.mem v.vname ctx.ccarries

(* Check if a ghost variable is defined *)
let ctx_ghost_is_defined ctx v = SM.mem v.vname ctx.cghosts

(* Check if an atom is defined *)
let ctx_atom_is_defined ctx a =
  match a with
  | Avar v -> ctx_var_is_defined ctx v || ctx_vec_is_defined ctx v
  | Aconst _ -> true

let string_of_parsing_context ctx =
  String.concat "\n" [
      "Procedures:";
      String.concat "\n" (List.rev (SM.fold (fun fn _ res -> ("  " ^ fn)::res) ctx.cfuns []));
      "Constants:";
      String.concat "\n" (List.rev (SM.fold (fun cn cv res -> ("  " ^ cn ^ " = " ^ Z.to_string cv)::res) ctx.cconsts []));
      "Variables:";
      String.concat "\n" (List.rev (SM.fold (fun _ v res -> ("  " ^ string_of_var ~typ:true v)::res) ctx.cvars []));
      "Vectors:";
      String.concat "\n" (List.rev (SM.fold (fun vn vt res -> ("  " ^ vn ^ "@" ^ string_of_vectyp vt)::res) ctx.cvecs []));
      "Carries:";
      String.concat "\n" (List.rev (SM.fold (fun _ v res -> ("  " ^ string_of_var ~typ:true v)::res) ctx.ccarries []));
      "Ghosts:";
      String.concat "\n" (List.rev (SM.fold (fun _ v res -> ("  " ^ string_of_var ~typ:true v)::res) ctx.cghosts []))
    ]


(* ---------- Unresolved Variables ---------- *)

type lv_prim_t =
  {
    lvtyphint: typ option;
    lvname: string;
  }

type vec_prim_t =
  {
    vectyphint: vectyp option;
    vecname: string;
  }

type avar_prim_t =
  {
    atmtyphint: typ option;
    atmname: string;
  }

type aconst_prim_t =
  {
    atmtyphint: typ option;
    atmvalue: Z.t contextual;
  }

type avecelm_prim_t =
  {
    avecname: string;
    avecindex: int
  }

type lval_t =
  [
  | `LVPLAIN of lv_prim_t
  ]

type lval_vec_t =
  [
  | `LVVLIT of (lval_t list)
  | `LVVECT of vec_prim_t
  ]

type atom_t =
  [
  | `AVAR of avar_prim_t
  | `ACONST of aconst_prim_t
  | `AVECELM of avecelm_prim_t
  ]

type selection =
  SelSingle of int contextual                                    (** select one index *)
| SelMultiple of (int list) contextual                           (** select multiple indices *)
| SelRange of (int option * int option * int option) contextual  (** select a slice *)

type vec_sel_prim_t =
  {
    vecselatm: atom_vec_t;
    vecselrng: selection list
  }
and atom_vec_t =
  [
  | `AVLIT of (atom_t list)
  | `AVECT of vec_prim_t
  | `AVECSEL of vec_sel_prim_t
  | `AVECCAT of atom_vec_t list
  ]


(* ---------- Instruction Parsing ---------- *)

type instr_t =
  [
  | `MOV of lval_t * atom_t
  | `VMOV of lval_vec_t * atom_vec_t
  | `EXTRACT of lval_vec_t * int list * atom_vec_t list
  | `VBROADCAST of lval_vec_t * Z.t contextual * atom_vec_t
  | `SHL of lval_t * atom_t * atom_t
  | `SHLS of lval_t * lval_t * atom_t * Z.t contextual
  | `SHR of lval_t * atom_t * atom_t
  | `SHRS of lval_t * lval_t * atom_t * Z.t contextual
  | `SAR of lval_t * atom_t * atom_t
  | `SARS of lval_t * lval_t * atom_t * Z.t contextual
  | `CSHL of lval_t * lval_t * atom_t * atom_t * Z.t contextual
  | `CSHLS of lval_t * lval_t * lval_t * atom_t * atom_t * Z.t contextual
  | `CSHR of lval_t * lval_t * atom_t * atom_t * Z.t contextual
  | `CSHRS of lval_t * lval_t * lval_t * atom_t * atom_t * Z.t contextual
  | `ROL of lval_t * atom_t * atom_t
  | `ROR of lval_t * atom_t * atom_t
  | `SET of lval_t
  | `VSET of lval_vec_t
  | `CLEAR of lval_t
  | `VCLEAR of lval_vec_t
  | `NONDET of lval_t
  | `VNONDET of lval_vec_t
  | `CMOV of lval_t * atom_t * atom_t * atom_t
  | `VCMOV of lval_vec_t * atom_vec_t * atom_vec_t * atom_vec_t
  | `ADD of lval_t * atom_t * atom_t
  | `VADD of lval_vec_t * atom_vec_t * atom_vec_t
  | `ADDS of lval_t * lval_t * atom_t * atom_t
  | `VADDS of lval_vec_t * lval_vec_t * atom_vec_t * atom_vec_t
  | `ADC of lval_t * atom_t * atom_t * atom_t
  | `ADCS of lval_t * lval_t * atom_t * atom_t * atom_t
  | `SUB of lval_t * atom_t * atom_t
  | `VSUB of lval_vec_t * atom_vec_t * atom_vec_t
  | `SUBC of lval_t * lval_t * atom_t * atom_t
  | `VSUBC of lval_vec_t * lval_vec_t * atom_vec_t * atom_vec_t
  | `SUBB of lval_t * lval_t * atom_t * atom_t
  | `VSUBB of lval_vec_t * lval_vec_t * atom_vec_t * atom_vec_t
  | `SBC of lval_t * atom_t * atom_t * atom_t
  | `SBCS of lval_t * lval_t * atom_t * atom_t * atom_t
  | `SBB of lval_t * atom_t * atom_t * atom_t
  | `SBBS of lval_t * lval_t * atom_t * atom_t * atom_t
  | `MUL of lval_t * atom_t * atom_t
  | `VMUL of lval_vec_t * atom_vec_t * atom_vec_t
  | `MULS of lval_t * lval_t * atom_t * atom_t
  | `MULL of lval_t * lval_t * atom_t * atom_t
  | `VMULL of lval_vec_t * lval_vec_t * atom_vec_t * atom_vec_t
  | `MULJ of lval_t * atom_t * atom_t
  | `VMULJ of lval_vec_t * atom_vec_t * atom_vec_t
  | `SPLIT of lval_t * lval_t * atom_t * Z.t contextual
  | `VSPLIT of lval_vec_t * lval_vec_t * atom_vec_t * Z.t contextual
  | `SPL of lval_t * lval_t * atom_t * Z.t contextual
  | `VSPL of lval_vec_t * lval_vec_t * atom_vec_t * Z.t contextual
  | `SETEQ of lval_t * atom_t * atom_t
  | `VSETEQ of lval_vec_t * atom_vec_t * atom_vec_t
  | `SETNE of lval_t * atom_t * atom_t
  | `VSETNE of lval_vec_t * atom_vec_t * atom_vec_t
  | `UADD of lval_t * atom_t * atom_t
  | `VUADD of lval_vec_t * atom_vec_t * atom_vec_t
  | `UADDS of lval_t * lval_t * atom_t * atom_t
  | `VUADDS of lval_vec_t * lval_vec_t * atom_vec_t * atom_vec_t
  | `UADC of lval_t * atom_t * atom_t * atom_t
  | `UADCS of lval_t * lval_t * atom_t * atom_t * atom_t
  | `USUB of lval_t * atom_t * atom_t
  | `VUSUB of lval_vec_t * atom_vec_t * atom_vec_t
  | `USUBC of lval_t * lval_t * atom_t * atom_t
  | `VUSUBC of lval_vec_t * lval_vec_t * atom_vec_t * atom_vec_t
  | `USUBB of lval_t * lval_t * atom_t * atom_t
  | `VUSUBB of lval_vec_t * lval_vec_t * atom_vec_t * atom_vec_t
  | `USBC of lval_t * atom_t * atom_t * atom_t
  | `USBCS of lval_t * lval_t * atom_t * atom_t * atom_t
  | `USBB of lval_t * atom_t * atom_t * atom_t
  | `USBBS of lval_t * lval_t * atom_t * atom_t * atom_t
  | `UMUL of lval_t * atom_t * atom_t
  | `VUMUL of lval_vec_t * atom_vec_t * atom_vec_t
  | `UMULS of lval_t * lval_t * atom_t * atom_t
  | `UMULL of lval_t * lval_t * atom_t * atom_t
  | `VUMULL of lval_vec_t * lval_vec_t * atom_vec_t * atom_vec_t
  | `UMULJ of lval_t * atom_t * atom_t
  | `VUMULJ of lval_vec_t * atom_vec_t * atom_vec_t
  | `USPLIT of lval_t * lval_t * atom_t * Z.t contextual
  | `VUSPLIT of lval_vec_t * lval_vec_t * atom_vec_t * Z.t contextual
  | `USPL of lval_t * lval_t * atom_t * Z.t contextual
  | `VUSPL of lval_vec_t * lval_vec_t * atom_vec_t * Z.t contextual
  | `SADD of lval_t * atom_t * atom_t
  | `VSADD of lval_vec_t * atom_vec_t * atom_vec_t
  | `SADDS of lval_t * lval_t * atom_t * atom_t
  | `VSADDS of lval_vec_t * lval_vec_t * atom_vec_t * atom_vec_t
  | `SADC of lval_t * atom_t * atom_t * atom_t
  | `SADCS of lval_t * lval_t * atom_t * atom_t * atom_t
  | `SSUB of lval_t * atom_t * atom_t
  | `VSSUB of lval_vec_t * atom_vec_t * atom_vec_t
  | `SSUBC of lval_t * lval_t * atom_t * atom_t
  | `VSSUBC of lval_vec_t * lval_vec_t * atom_vec_t * atom_vec_t
  | `SSUBB of lval_t * lval_t * atom_t * atom_t
  | `VSSUBB of lval_vec_t * lval_vec_t * atom_vec_t * atom_vec_t
  | `SSBC of lval_t * atom_t * atom_t * atom_t
  | `SSBCS of lval_t * lval_t * atom_t * atom_t * atom_t
  | `SSBB of lval_t * atom_t * atom_t * atom_t
  | `SSBBS of lval_t * lval_t * atom_t * atom_t * atom_t
  | `SMUL of lval_t * atom_t * atom_t
  | `VSMUL of lval_vec_t * atom_vec_t * atom_vec_t
  | `SMULS of lval_t * lval_t * atom_t * atom_t
  | `SMULL of lval_t * lval_t * atom_t * atom_t
  | `VSMULL of lval_vec_t * lval_vec_t * atom_vec_t * atom_vec_t
  | `SMULJ of lval_t * atom_t * atom_t
  | `VSMULJ of lval_vec_t * atom_vec_t * atom_vec_t
  | `SSPLIT of lval_t * lval_t * atom_t * Z.t contextual
  | `VSSPLIT of lval_vec_t * lval_vec_t * atom_vec_t * Z.t contextual
  | `SSPL of lval_t * lval_t * atom_t * Z.t contextual
  | `VSSPL of lval_vec_t * lval_vec_t * atom_vec_t * Z.t contextual
  | `AND of lval_t * atom_t * atom_t
  | `VAND of lval_vec_t * atom_vec_t * atom_vec_t
  | `OR of lval_t * atom_t * atom_t
  | `VOR of lval_vec_t * atom_vec_t * atom_vec_t
  | `XOR of lval_t * atom_t * atom_t
  | `VXOR of lval_vec_t * atom_vec_t * atom_vec_t
  | `NOT of lval_t * atom_t
  | `VNOT of lval_vec_t * atom_vec_t
  | `CAST of lval_t option * lval_t * atom_t
  | `VCAST of lval_vec_t option * lval_vec_t * atom_vec_t
  | `VPC of lval_t * atom_t
  | `JOIN of lval_t * atom_t * atom_t
  | `ASSERT of (bexp_prove_with contextual)
  | `EASSERT of (ebexp_prove_with contextual)
  | `RASSERT of (rbexp_prove_with contextual)
  | `ASSUME of (bexp contextual)
  | `CUT of (bexp_prove_with contextual)
  | `ECUT of (ebexp_prove_with contextual)
  | `RCUT of (rbexp_prove_with contextual)
  | `GHOST of (VS.t contextual) * (bexp contextual)
  | `CALL of string * ((typ list * typ list -> atom list) contextual)
  | `INLINE of string * ((typ list * typ list -> atom list) contextual)
  | `NOP
  ]

let resolve_selection ctx lno xs sel =
  match sel with
  | SelSingle nf ->
     let n = nf ctx in
     [select_nth lno xs n]
  | SelMultiple nsf ->
     let ns = nsf ctx in
     List.rev_map (select_nth lno xs) (List.rev ns)
  | SelRange iokf ->
     let (io, jo, ko) = iokf ctx in
     select_from_range lno xs io jo ko

let parse_typed_const ctx lno ty n_token =
  let n = n_token ctx in
  let size = size_of_typ ty in
  (* Check range *)
  let _ = if not (!Options.Std.implicit_const_conversion) && (Z.lt n (Ast.Cryptoline.min_of_typ ty) || Z.gt n (Ast.Cryptoline.max_of_typ ty))
          then raise_at_line lno ("The number " ^ Z.to_string n ^ " does not fit into its type " ^ string_of_typ ty ^ "."
                                  ^ " Run with -implicit-const-conversion to convert the constants implicitly to fit into their types.") in
  (* Normalize the number: convert to non-negative integer *)
  let n = Utils.Std.to_positive_same_size n size in
  (* Normalize the number: convert to bit vector *)
  let bits = List.of_seq (String.to_seq (Z.format ("%0" ^ string_of_int size ^ "b") n)) in
  let _ = if List.length bits > size then raise_at_line lno ("The number " ^ Z.to_string n ^ " does not fit into " ^ string_of_typ ty) in
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
      ctx_find_var ctx atmname
    with Not_found ->
      begin
        try
          ctx_find_ghost ctx atmname
        with Not_found ->
          raise_at_line lno ("Variable " ^ atmname ^ " is undefined.")
      end in
  let _ = match atmtyphint with
    | None -> ()
    | Some hinted_ty ->
       if v.vtyp <> hinted_ty then
         raise_at_line lno ("The type of variable " ^ atmname ^ " is inconsistent")
       else () in
  v

let resolve_lv_with ctx lno {lvname; lvtyphint} ty_opt =
  if ctx_name_is_ghost ctx lvname then
    raise_at_line lno ("The program variable " ^ lvname ^
                         " has been defined as a ghost variable.")
  else
    let ty = (match (ty_opt, lvtyphint) with
              | (None, None) -> raise_at_line lno ("Failed to determine the type of " ^ lvname)
              | (None, Some hinted_ty) -> hinted_ty
              | (Some determined_ty, None) -> determined_ty
              | (Some determined_ty, Some hinted_ty) ->
                 if determined_ty <> hinted_ty then
                   raise_at_line lno (Printf.sprintf "The specified type %s is not equal to the determined type %s."
                                        (string_of_typ hinted_ty)
                                        (string_of_typ determined_ty))
                 else determined_ty) in
    let v = mkvar lvname ty in
    let _ = ctx_define_var ctx v in
    v

let resolve_lcarry_with ctx lno {lvname; lvtyphint} =
  if ctx_name_is_ghost ctx lvname then
    raise_at_line lno ("The carry variable " ^ lvname ^ " has been defined as a ghost variable.")
  else
    let _ = (match lvtyphint with
             | None -> ()
             | Some hinted_ty ->
                if hinted_ty <> bit_t then
                  raise_at_line lno ("The type of a carry variable should be \""
                                     ^ string_of_typ bit_t
                                     ^ "\", specified "
                                     ^ string_of_typ hinted_ty)
                else ()) in
    let v = mkvar lvname bit_t in
    let _ = ctx_define_carry ctx v in
    v

let resolve_lv_or_lcarry_with ctx lno {lvname; lvtyphint} =
  if ctx_name_is_ghost ctx lvname then
    raise_at_line lno ("The program variable " ^ lvname ^
                         " has been defined as a ghost variable.")
  else
    match lvtyphint with
    | None -> raise_at_line lno ("Failed to determine the type of " ^ lvname)
    | Some ty ->
       let v = mkvar lvname ty in
       let _ = ctx_define_var ctx v in
       v

let resolve_lv_vec_with ctx lno dest_tok src_vtyp_opt : typ * string list =
  match dest_tok with
  | `LVVECT {vecname; vectyphint} ->
     let vtyp = match (src_vtyp_opt, vectyphint) with
       | (None, None) -> raise_at_line lno (Printf.sprintf "Failed to determine the vector type of %s." vecname)
       | (None, Some hinted_vtyp) -> hinted_vtyp
       | (Some src_vtyp, None) -> src_vtyp
       | (Some src_vtyp, Some hinted_vtyp) -> (if src_vtyp <> hinted_vtyp then
                                                 raise_at_line lno (Printf.sprintf "The specified vector type %s of %s is inconsistent with the determined vector type %s."
                                                                      (string_of_vectyp hinted_vtyp)
                                                                      vecname
                                                                      (string_of_vectyp src_vtyp))
                                               else hinted_vtyp) in
     let (elmtyp, srclen) = vtyp in
     let names = List.map (vec_name_fn vecname) (0 -- (srclen-1)) in
     let _ = ctx_define_vec ctx vecname vtyp in
     (elmtyp, names)
  | `LVVLIT lvs ->
     let relmtyp = match src_vtyp_opt with
       | None -> raise_at_line lno "Internal error: Missing type information to resolve a vector lval."
       | Some (tp, _) -> tp in
     let names = List.map (fun (`LVPLAIN {lvname; lvtyphint}) ->
                     let _ = match lvtyphint with
                       | None -> ()
                       | Some hinted_ty -> if relmtyp <> hinted_ty then
                                             raise_at_line lno (Printf.sprintf "The specified type %s of an element %s is inconsistent with the determined type %s."
                                                                  (string_of_typ hinted_ty)
                                                                  lvname
                                                                  (string_of_typ relmtyp))
                                           else () in
                     lvname) lvs in
     (relmtyp, names)

let rec resolve_atom_with ctx lno ?typ (a: atom_t) =
  match a with
  (* FIXME *)
  | `ACONST c -> (match c.atmtyphint, typ with
                  | Some ty, _
                    | None, Some ty -> parse_typed_const ctx lno ty c.atmvalue
                  | _, _ -> raise_at_line lno ("Failed to determine the type of constant"))
  | `AVAR v -> Avar (resolve_var_with ctx lno (`AVAR v))
  | `AVECELM v -> let (elmty, elms) = resolve_vec_with ctx lno (`AVECT { vecname = v.avecname; vectyphint = None }) in
                  let a =
                    try
                      List.nth elms v.avecindex
                    with Failure _ -> raise_at_line lno ("The index " ^ string_of_int v.avecindex ^ " is out of bound")
                       | Invalid_argument _ -> raise_at_line lno ("The index " ^ string_of_int v.avecindex ^ " must be positive.") in
                  resolve_atom_with ctx lno ~typ:elmty a
  and
    resolve_vec_with ctx lno src_tok : typ * atom_t list =
    match src_tok with
    | `AVECT {vecname; vectyphint} ->
       let tv = try
           ctx_find_vec ctx vecname
         with Not_found ->
           raise_at_line lno ("Vector variable " ^ vecname ^ " is undefined.")
       in
       let _ = match vectyphint with
         | None -> ()
         | Some hinted_ty ->
            if tv <> hinted_ty then
              raise_at_line lno ("The type of variable " ^ vecname ^ " is inconsistent.")
            else () in
       let (rtyphint, rlen) = tv in
       let gen_avar i = `AVAR {atmname=(vec_name_fn vecname i); atmtyphint=Some rtyphint} in
       let rvs = List.map gen_avar (0 -- (rlen-1)) in
       (rtyphint, rvs)
    | `AVLIT rvs ->
       (match rvs with
        | [] -> raise_at_line lno "A vector literal cannot be empty."
        | _ ->
           let relmtyps = List.map (fun a -> typ_of_atom (resolve_atom_with ctx lno a)) rvs in
           let rtyphint = List.hd relmtyps in
           let _ = List.iteri (fun i t ->
                       if t <> rtyphint then
                         raise_at_line lno (
                             Printf.sprintf "Every element of the vector literal should be %s, found %s at index %d."
                               (string_of_typ rtyphint)
                               (string_of_typ t)
                               i)
                       else ()) relmtyps
           in
           (rtyphint, rvs))
    | `AVECSEL {vecselatm; vecselrng} ->
       let (typ, atoms) = resolve_vec_with ctx lno vecselatm in
       let sel_atoms = List.rev_map (resolve_selection ctx lno atoms) vecselrng |> List.rev |> List.flatten in
       (typ, sel_atoms)
    | `AVECCAT avecs ->
       let (typs, atomss) = List.rev_map (resolve_vec_with ctx lno) (List.rev avecs) |> List.split in
       let rec select_typ typs =
         match typs with
         | [] -> None
         | t::tys -> (match select_typ tys with
                      | None -> Some t
                      | Some t' -> if t = t' then Some t
                                   else raise_at_line lno (Printf.sprintf "Types of vector elements are incompatible. One is %s while the other is %s." (string_of_typ t) (string_of_typ t'))) in
       match select_typ typs with
       | None -> raise_at_line lno (Printf.sprintf "Cannot determine the type of vector elements in vector concatenation.")
       | Some t -> (t, List.flatten atomss)

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
         raise_at_line lno ("An shl instruction expects an offset between 0 and the " ^ string_of_int w ^ " (both excluding)."
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
      raise_at_line lno ("An shls instruction expects an offset between 0 and the " ^ string_of_int w ^ " (both excluding)."
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
         raise_at_line lno ("An shr instruction expects an offset between 0 and the " ^ string_of_int w ^ " (both excluding)."
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
      raise_at_line lno ("An shrs instruction expects an offset between 0 and the " ^ string_of_int w ^ " (both excluding)."
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
         raise_at_line lno ("An sar instruction expects an offset between 0 and the " ^ string_of_int w ^ " (both excluding)."
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
      raise_at_line lno ("An sars instruction expects an offset between 0 and the " ^ string_of_int w ^ " (both excluding)."
                         ^ " An offset not in the range is found: " ^ Z.to_string n ^ ".")
  in
  [lno, Isars (v, l, a, n)]

let parse_cshl_at ctx lno destH destL src1 src2 num =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let ty = typ_of_atom a1 in
  let n = num ctx in
  let vh = resolve_lv_with ctx lno destH (Some ty) in
  let vl = resolve_lv_with ctx lno destL (Some (typ_to_unsigned ty)) in
  [lno, Icshl (vh, vl, a1, a2, n)]

let parse_cshls_at ctx lno lostL destH destL src1 src2 num =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let ty = typ_of_atom a1 in
  let n = num ctx in
  let l = resolve_lv_with ctx lno lostL (Some (typ_to_size ty (Z.to_int n))) in
  let vh = resolve_lv_with ctx lno destH (Some ty) in
  let vl = resolve_lv_with ctx lno destL (Some (typ_to_unsigned ty)) in
  [lno, Icshls (l, vh, vl, a1, a2, n)]

let parse_cshr_at ctx lno destH destL src1 src2 num =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let ty = typ_of_atom a1 in
  let n = num ctx in
  let vh = resolve_lv_with ctx lno destH (Some ty) in
  let vl = resolve_lv_with ctx lno destL (Some (typ_to_unsigned ty)) in
  [lno, Icshr (vh, vl, a1, a2, n)]

let parse_cshrs_at ctx lno destH destL lostL src1 src2 num =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let ty = typ_of_atom a1 in
  let n = num ctx in
  let vh = resolve_lv_with ctx lno destH (Some ty) in
  let vl = resolve_lv_with ctx lno destL (Some (typ_to_unsigned ty)) in
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
  let vl = resolve_lv_with ctx lno destL (Some (typ_to_unsigned ty)) in
  [lno, Imull (vh, vl, a1, a2)]

let parse_mulj_at ctx lno dest src1 src2 =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let ty = typ_of_atom a1 in
  let v = resolve_lv_with ctx lno dest (Some (typ_to_double_size ty)) in
  [lno, Imulj (v, a1, a2)]

let parse_split_at ctx lno destH destL src num =
  let a = resolve_atom_with ctx lno src in
  let n = num ctx in
  let ty = typ_of_atom a in
  let vh = resolve_lv_with ctx lno destH (Some ty) in
  let vl = resolve_lv_with ctx lno destL (Some (typ_to_unsigned ty)) in
  let _ =
    let w = size_of_var vl in
    if Z.leq n Z.zero || Z.geq n (Z.of_int w) then
      raise_at_line lno ("The position of a split should be in between 0 and " ^ string_of_int w ^ " (both excluded)")
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
      raise_at_line lno ("The position of a spl should be in between 0 and " ^ string_of_int w ^ " (both excluded)")
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
  let v = resolve_lv_with ctx lno dest (Some (typ_to_double_size ty)) in
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
      raise_at_line lno ("The position of a split should be in between 0 and " ^ string_of_int w ^ " (both excluded)")
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
      raise_at_line lno ("The position of a split should be in between 0 and " ^ string_of_int w ^ " (both excluded)")
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
  let vl = resolve_lv_with ctx lno destL (Some (typ_to_unsigned ty)) in
  [lno, Imull (vh, vl, a1, a2)]

let parse_smulj_at ctx lno dest src1 src2 =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let ty = typ_to_signed (typ_of_atom a1) in
  let v = resolve_lv_with ctx lno dest (Some (typ_to_double_size ty)) in
  [lno, Imulj (v, a1, a2)]

let parse_ssplit_at ctx lno destH destL src num =
  let a = resolve_atom_with ctx lno src in
  let n = num ctx in
  let ty = typ_to_signed (typ_of_atom a) in
  let vh = resolve_lv_with ctx lno destH (Some ty) in
  let vl = resolve_lv_with ctx lno destL (Some (typ_to_unsigned ty)) in
  let _ =
    let w = size_of_var vl in
    if Z.leq n Z.zero || Z.geq n (Z.of_int w) then
      raise_at_line lno ("The position of a split should be in between 0 and " ^ string_of_int w ^ " (both excluded)")
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
      raise_at_line lno ("The position of a split should be in between 0 and " ^ string_of_int w ^ " (both excluded)")
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
	| Some (`LVPLAIN od) ->
	   let d = resolve_lv_with ctx lno od od_typ in
	   Some d in
  (* the discarded part must be a ghost variable *)
  let _ = apply_to_some (ctx_define_ghost ctx) od in
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
  let _ = VS.iter (ctx_define_ghost ctx) gvars in
  let e = bexp_token ctx in
  let bad_ebexps = List.filter (fun e -> not (eq_ebexp e etrue) && VS.is_empty (VS.inter gvars (vars_ebexp e))) (split_eand (eqn_bexp e)) in
  let bad_rbexps = List.filter (fun e -> not (eq_rbexp e rtrue) && VS.is_empty (VS.inter gvars (vars_rbexp e))) (split_rand (rng_bexp e)) in
  if List.length bad_ebexps > 0 then raise_at_line lno ("The algebraic expression " ^ string_of_ebexp (List.hd bad_ebexps) ^ " is defined without using any ghost variable.")
  else if List.length bad_rbexps > 0 then raise_at_line lno ("The range expression " ^ string_of_rbexp (List.hd bad_rbexps) ^ " is defined without using any ghost variable.")
  else [lno, Ighost (gvars, e)]

let parse_call_at ctx lno fname_token actuals_token =
  (* The function name *)
  let fname = fname_token in
  (* Calling the main function is not allowed *)
  let _ = if fname = Options.Std.main_proc_name then raise_at_line lno ("Calling the " ^ Options.Std.main_proc_name ^ " function is not allowed.") in
  (* The function definition *)
  let f =
    try
      SM.find fname ctx.cfuns
    with Not_found ->
      raise_at_line lno ("Call an undefined function '" ^ fname ^ "'.") in
  (* The actual paramaters, the types of formal arguments are requried to parse actual parameters *)
  (* What are checked in parsing actual parameters: length, type, non-ghost *)
  let actuals = actuals_token ctx (List.map typ_of_var f.fargs, List.map typ_of_var f.fouts) in
  let formals = f.fargs@f.fouts in
  let _ =
    (* The length and type are checked in parsing actual parameters. *)
    assert (List.length actuals = List.length formals) in
  let (actual_ins, actual_outs) =
    Utils.Std.partition_at actuals (List.length f.fargs) in
  (* Actual output parameters must be distinct. *)
  let _ = List.fold_left (fun vs a ->
              match a with
              | Avar v -> if SS.mem v.vname vs then raise_at_line lno ("The actual parameter " ^ v.vname ^ " cannot be used as two outputs in a function call.")
                          else SS.add v.vname vs
              | Aconst _ -> vs
            ) SS.empty actual_outs in
  (*
   * Create ghost variables for defined actual variables.
   * It is allowed to have output parameters that are undefined before
   * this function call.
   *)
  let defined_actuals =
    List.rev_append (List.rev actual_ins) (List.filter (ctx_atom_is_defined ctx) actual_outs) in
  let ghost_actuals =
    let ghost_suffix = Int.to_string (Random.int 10000) in
    let mk_ghostvar a =
      match a with
      | Avar v -> mkvar (v.vname ^ ghost_suffix) (typ_of_var v)
      | Aconst (typ, _) -> mkvar ("g_" ^ ghost_suffix) typ in
    List.rev (List.rev_map mk_ghostvar defined_actuals) in
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
      (List.rev_map2 (fun avar gvar -> mk_eeq avar gvar)
         defined_actuals ghost_actuals |> List.rev |> eands,
       List.rev_map2 (fun avar gvar -> mk_req avar gvar)
         defined_actuals ghost_actuals |> List.rev |> rands) in
    let ghostVS = VS.of_list ghost_actuals in
    Ighost (ghostVS, ghost_bexp) in
  let (ghost_ins, _) =
    Utils.Std.partition_at ghost_actuals (List.length f.fargs) in
  (* Assert precondition (involving only input parameters) *)
  let assert_instr =
    let assert_pats =
      List.combine f.fargs
        (List.rev (List.rev_map mkatom_var ghost_ins)) in
    let (_, em, rm) = subst_maps_of_list assert_pats in
    let to_prove_with (ebexp, rbexp) = ([(ebexp, [])], [(rbexp, [])]) in
    Iassert (subst_bexp_prove_with em rm (to_prove_with f.fpre)) in
  (* Make nondeterministic assignments to actual output parameters *)
  let nondet_instrs =
    List.fold_left (fun r ovar -> (lno, Inondet ovar)::r)
      [] (List.rev_map var_of_atom actual_outs) in
  (* Assume precondition (involving input and output parameters *)
  let assume_instr =
    let assume_pats =
      List.combine formals
        (List.rev_append (List.rev_map mkatom_var ghost_ins)
           actual_outs) in
    let (_, em, rm) = subst_maps_of_list assume_pats in
    let from_prove_with (ebexp_prove_withs, rbexp_prove_withs) =
      let ebexps = List.rev_map fst ebexp_prove_withs in
      let rbexps = List.rev_map fst rbexp_prove_withs in
      let ebexp = List.fold_left (fun e ret -> Eand (e, ret)) Etrue ebexps in
      let rbexp = List.fold_left (fun r ret -> Rand (r, ret)) Rtrue rbexps in
      (ebexp, rbexp) in
    Iassume (subst_bexp em rm (from_prove_with f.fpost)) in
  (* Add actual output parameters to the parsing context *)
  let _ =
    let actual_vars = List.rev (List.rev_map (fun a ->
                                    match a with
                                    | Avar v -> v
                                    | Aconst _ -> raise_at_line lno ("Actual output parameters must be variables.")
                                  ) actual_outs) in
    List.iter (ctx_define_var ctx) actual_vars in
  [(lno, ghost_instr); (lno, assert_instr)] @ nondet_instrs @
    [(lno, assume_instr)]

let parse_inline_at ctx lno fname_token actuals_token =
  (* The function name *)
  let fname = fname_token in
  (* Inlining the main function is not allowed *)
  let _ = if fname = Options.Std.main_proc_name then raise_at_line lno ("Inlining the " ^ Options.Std.main_proc_name ^ " function is not allowed.") in
  (* The function definition *)
  let f =
    try
      SM.find fname ctx.cfuns
    with Not_found ->
      raise_at_line lno ("Inline an undefined function '" ^ fname ^ "'.") in
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
    if List.length actuals <> List.length formals then
      raise_at_line lno ("Failed to call the function " ^ fname ^ ": numbers of arguments mismatch.") in
  (* Check types of actual parameters, this should be done in parsing actual parameters *)
  let _ =
    List.iter2 (fun formal actual ->
        if not (is_type_compatible formal actual) then
          raise_at_line lno ("The type of the actual parameter " ^ string_of_atom actual
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
      raise_at_line lno ("Naming conflict: the actual argument " ^ string_of_var v ^ " is already defined as a ghost variable in function " ^ fname ^ ".")
    else if not (VS.is_empty ysclash) then
      let v = VS.choose ysclash in
      raise_at_line lno ("Naming conflict: the actual argument " ^ string_of_var v ^ " is already defined as a carry in function " ^ fname ^ ".")
    else if not (VS.is_empty vsclash) then
      let v = VS.choose vsclash in
      raise_at_line lno ("Naming conflict: the actual argument " ^ string_of_var v ^ " is already defined in function " ^ fname ^ ".")
  in
  let pats = List.combine formals actuals in
  (* Check undefined variables *)
  let _ =
    let undefined =
      List.flatten (List.map (fun (formal, actual) ->
                        match actual with
                        | Avar v -> if mem_var formal inputs && not (ctx_var_is_defined ctx v) then [v] else []
                        | _ -> []
                      ) pats) in
    if List.length undefined > 0 then
      raise_at_line lno ("Undefined variable: " ^ string_of_var (List.hd undefined))
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
  let _ = VS.iter (ctx_define_var ctx) vsp in
  let _ = VS.iter (ctx_define_carry ctx) ysp in
  let _ = VS.iter (ctx_define_ghost ctx) gsp in
  (* (vm_of_vs (update_varset vs vsp), vxm, vm_of_vs (update_varset ys ysp), vm_of_vs (update_varset gs gsp), p) *)
  p

(* Given a list of (writes, read), make a series of aliasing movs on colliding names.
     Bsesides instructions, it also returns some context after rewriting *)
let gen_tmp_movs ctx lno (rwpairs: (string list * atom_t) list) relmtyp =
  let rewrite_rws (tainted, submap) (wws, a) =
    let (submap', a') = match a with
      | `AVAR ({atmname; _} as var) when SS.mem atmname tainted ->
         let tmp_name = atmname ^ "_" in
         let _ = if ctx_name_is_var ctx tmp_name then
                   raise_at_line lno (
                       Printf.sprintf "Internal error: Attempting to pick a temporary variable name %s but it has been used."
                         tmp_name)
                 else () in
         (SM.add tmp_name var submap, `AVAR {var with atmname=tmp_name})
      | `AVECELM v when SS.mem (vec_name_fn v.avecname v.avecindex) tainted ->
         let tmp_name = vec_name_fn v.avecname v.avecindex ^ "_" in
         let _ = if ctx_name_is_var ctx tmp_name then
                   raise_at_line lno (
                       Printf.sprintf "Internal error: Attempting to pick a temporary variable name %s but it has been used."
                         tmp_name)
                 else () in
         (SM.add tmp_name { atmname = vec_name_fn v.avecname v.avecindex; atmtyphint = None } submap, `AVAR { atmname = tmp_name; atmtyphint = None })
      | `AVAR _
        | `ACONST _
        | `AVECELM _ -> (submap, a)
    in
    let tainted' = List.fold_left (fun set name -> SS.add name set) tainted wws in
    ((tainted', submap'), a') in

  let ((_, tmp_to_orig), src_safe) = List.fold_left_map rewrite_rws (SS.empty, SM.empty) rwpairs in
  let tmp_names = SM.fold (fun k _ names -> k::names) tmp_to_orig [] in

  (* Add introduced temp. variables into variable map *)
  let _ = SM.iter (fun k _ -> ctx_define_var ctx (mkvar k relmtyp)) tmp_to_orig in
  (* Save into temp. variables with mov instructions *)
  let aliasing_instrs = List.rev (
                            SM.fold (fun tmp_name orig instrs ->
                                let instr = (lno, Imov (ctx_find_var ctx tmp_name, Avar (mkvar orig.atmname relmtyp))) in
                                instr::instrs) tmp_to_orig []) in

  (aliasing_instrs, tmp_names, src_safe)

let gen_tmp_movs_2 ctx lno (rwpairs_: (string list * (atom_t * atom_t)) list) relmtyp =
  let rwpairs = List.rev (List.fold_left (fun l (wws, (rr1, rr2)) -> (wws, rr2)::([], rr1)::l) [] rwpairs_) in
  let (aliasing_instrs, tmp_names, src_safe_single) = gen_tmp_movs ctx lno rwpairs relmtyp in
  let rec to_pairs_rev acc xs = match xs with
    | [] -> acc
    | _::[] -> raise_at_line lno "Internal error: Incorrect number of source operands."
    | x::y::tail -> to_pairs_rev ((x, y)::acc) tail in
  let src_safe = List.rev (to_pairs_rev [] src_safe_single) in
  (aliasing_instrs, tmp_names, src_safe)

let gen_tmp_movs_3 ctx lno (rwpairs_: (string list * (atom_t * atom_t * atom_t)) list) relmtyp =
  let rwpairs = List.rev (List.fold_left (fun l (wws, (rr1, rr2, rr3)) -> (wws, rr3)::([], rr2)::([], rr1)::l) [] rwpairs_) in
  let (aliasing_instrs, tmp_names, src_safe_single) = gen_tmp_movs ctx lno rwpairs relmtyp in
  let rec to_pairs_rev acc xs = match xs with
    | [] -> acc
    | _::[] | _::_::[] ->
       raise_at_line lno "Internal error: Incorrect number of source operands."
    | c::x::y::tail -> to_pairs_rev ((c, x, y)::acc) tail in
  let src_safe = List.rev (to_pairs_rev [] src_safe_single) in
  (aliasing_instrs, tmp_names, src_safe)

let unify_vec_srcs_at lno (relmtyp, src1) (relmtyp', src2) =
  let srclen = List.length src1 in
  let _ = if (List.length src2) <> srclen then
            raise_at_line lno (Printf.sprintf "Two sources should have the same length. One is %d while the other is %d." srclen (List.length src2))
          else if relmtyp <> relmtyp' then
            raise_at_line lno (Printf.sprintf "Two sources should have the same element type. One is %s while the other is %s." (string_of_typ relmtyp) (string_of_typ relmtyp'))
          else () in
  ((relmtyp, srclen), src1, src2)

let check_sizes lno sizefun errfun xs =
  let rec helper s xs =
    match xs with
    | [] -> (match s with
             | None -> 0
             | Some (_, sz) -> sz)
    | x::xs -> let sx = sizefun x in
               (match s with
                | None -> helper (Some (x, sx)) xs
                | Some (y, sy) -> if sx = sy then helper s xs
                                  else raise_at_line lno (errfun y sy x sx)) in
  helper None xs

let check_rexp_sizes lno es =
  check_sizes lno size_of_rexp (fun x sx y sy -> "Widths of range expressions mismatch: "
                                                 ^ string_of_rexp x ^ " (width " ^ string_of_int sx ^ "), "
                                                 ^ string_of_rexp y ^ " (width " ^ string_of_int sy ^ ")") es

let check_rexp_sizes2 lno e1 e2 = check_rexp_sizes lno [e1; e2]

let check_vec_sizes lno vs =
  check_sizes lno List.length (fun _ _ _ _ -> "Vectors do not have the same number of elements.") vs

let check_vec_sizes2 lno v1 v2 =
  let l1 = List.length v1 in
  let l2 = List.length v2 in
  if l1 <> l2
  then raise_at_line lno ("Vectors do not have the same number of elements.")
  else l1

let check_vec_sizes3 lno v1 v2 v3 =
  let l1 = List.length v1 in
  let l2 = List.length v2 in
  let l3 = List.length v3 in
  if l1 <> l2 || l2 <> l3
  then raise_at_line lno ("Vectors do not have the same number of elements.")
  else l1

let unpack_vinstr_1 mapper ctx lno dest_tok =
  let (dest_typ, dest_names) = resolve_lv_vec_with ctx lno dest_tok None in

  let map_func lvname = mapper ctx lno {lvname; lvtyphint=Some dest_typ} in
  let iss = List.rev (List.rev_map map_func dest_names) in
  List.concat iss

let unpack_vinstr_11 mapper ctx lno dest_tok src_tok =
  let (relmtyp, src) = resolve_vec_with ctx lno src_tok in
  let src_vectyp = (relmtyp, List.length src) in
  let (_, dest_names) = resolve_lv_vec_with ctx lno dest_tok (Some src_vectyp) in

  let _ = if (List.length dest_names) <> (List.length src) then
            raise_at_line lno "Destination vector should be as long as the source vector."
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
  let (src_vectyp, src1, src2) = unify_vec_srcs_at lno vatm1 vatm2 in
  let (relmtyp, srclen) = src_vectyp in

  let (dest_typ, dest_names) = resolve_lv_vec_with ctx lno dest_tok (Some src_vectyp) in
  let _ = if (List.length dest_names) <> srclen then
            raise_at_line lno "Destination vector should be as long as the source vector."
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
  let (src_vectyp, src1, src2) = unify_vec_srcs_at lno vatm1 vatm2 in
  let (relmtyp, srclen) = src_vectyp in
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
                                                 else raise_at_line lno "Types of vector elements are inconsistent."
                           | None, _ -> lv.lvtyphint)) None lvs in
       (match tyopt with
        | None -> Some (bit_t, List.length lvs)
        | Some ty -> Some (ty, List.length lvs))
  in
  let (dest_typ, dest_names) = resolve_lv_vec_with ctx lno dest_tok hint_typ in
  let _ = if (List.length dest_names) <> srclen then
            raise_at_line lno "Destination vector should be as long as the source vector."
          else () in
  let rwpairs = List.map2 (fun d (s1, s2) -> ([d], (s1, s2))) dest_names (List.combine src1 src2) in
  let (aliasing_instrs, tmp_names, src_safe) = gen_tmp_movs_2 ctx lno rwpairs relmtyp in
  let map_func (lvname, (rv1, rv2)) = mapper ctx lno {lvname; lvtyphint=Some dest_typ} rv1 rv2 in
  let iss = List.rev (List.rev_map map_func (List.combine dest_names src_safe)) in
  let _ = ctx.cvars <- remove_keys_from_map tmp_names ctx.cvars in
  List.concat (aliasing_instrs::iss)

let unpack_vinstr_21n_helper mapper ctx lno dest1_names dest2_names src relmtyp num =
  let _ = if ((List.length dest1_names) <> (List.length src) ||
                (List.length dest2_names) <> (List.length src)) then
            raise_at_line lno "Destination vector should be as long as the source vector."
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

let unpack_vinstr_21n mapper ctx lno dest1_tok dest2_tok src_tok num =
  let (relmtyp, src) = resolve_vec_with ctx lno src_tok in
  let dest1_vectyp = (relmtyp, List.length src) in
  let dest2_vectyp = (typ_to_unsigned relmtyp, List.length src) in
  let (_, dest1_names) = resolve_lv_vec_with ctx lno dest1_tok (Some dest1_vectyp) in
  let (_, dest2_names) = resolve_lv_vec_with ctx lno dest2_tok (Some dest2_vectyp) in
  unpack_vinstr_21n_helper mapper ctx lno dest1_names dest2_names src relmtyp num

let parse_extract_at mapper ctx lno dest_tok nums src_toks =
  if (List.length nums) <> (List.length src_toks) then
    raise_at_line lno "Number of extract positions should be as same as the number of vectors."
  else
    let list_typ_src = List.map (resolve_vec_with ctx lno) src_toks in (*list of (relmtyp, src)*)
    let (relmtyp,_) = List.hd list_typ_src in
    let scan_neq_typ t =
      if t <> relmtyp then
        raise_at_line lno "Sources should have the same element type."
      else ()
    in
    let (ts, _) = List.split list_typ_src in
    let _ = List.iter scan_neq_typ ts in

    (*let list_src_vectyp = List.map (fun (t, v) -> (t, List.length v)) list_typ_src in (*list of src_vectyp*)*)
    let list_pair_n_vec = List.combine nums list_typ_src in (*list of (n, (relmtyp,src))*)
    let list_src = List.map (fun (n, (_, src)) ->
                       try
                         List.nth src n
                       with Failure _ -> raise_at_line lno ("The index " ^ string_of_int n ^ " is out of bound.")
                          | Invalid_argument _ -> raise_at_line lno ("The index " ^ string_of_int n ^ " must be positive.")) list_pair_n_vec in (*list of src*)
    let srclen = List.length list_src in
    let (_, dest_names) = resolve_lv_vec_with ctx lno dest_tok (Some (relmtyp, srclen)) in
    let rwpairs = List.map2 (fun d s -> ([d], s)) dest_names list_src in
    let (aliasing_instrs, tmp_names, src_safe) = gen_tmp_movs ctx lno rwpairs relmtyp in
    let map_func (lvname, rv) = mapper ctx lno {lvname; lvtyphint=None} rv in
    let iss = List.rev (List.rev_map map_func (List.combine dest_names src_safe)) in
    let _ = ctx.cvars <- remove_keys_from_map tmp_names ctx.cvars in
    List.concat (aliasing_instrs::iss)

let unpack_vinstr_spl mapper ctx lno dest1_tok dest2_tok src_tok num =
  let (relmtyp, src) = resolve_vec_with ctx lno src_tok in
  let n = Z.to_int (num ctx) in
  let dest1_vectyp =
    (typ_to_size relmtyp (size_of_typ relmtyp - n), List.length src) in
  let dest2_vectyp =
    (typ_to_size relmtyp n, List.length src) in
  let (_, dest1_names) = resolve_lv_vec_with ctx lno dest1_tok (Some dest1_vectyp) in
  let (_, dest2_names) = resolve_lv_vec_with ctx lno dest2_tok (Some dest2_vectyp) in
  unpack_vinstr_21n_helper mapper ctx lno dest1_names dest2_names src relmtyp num

let unpack_vinstr_c12 mapper ctx lno carry_tok dest_tok src1_tok src2_tok =
  let vatm1 = resolve_vec_with ctx lno src1_tok in
  let vatm2 = resolve_vec_with ctx lno src2_tok in
  let (src_vectyp, src1, src2) = unify_vec_srcs_at lno vatm1 vatm2 in
  let (relmtyp, srclen) = src_vectyp in

  let carry_vectyp = (bit_t, srclen) in
  let (_, carry_names) = resolve_lv_vec_with ctx lno carry_tok (Some carry_vectyp) in
  let (_, dest_names) = resolve_lv_vec_with ctx lno dest_tok (Some src_vectyp) in

  let _ = if (List.length dest_names) <> srclen then
            raise_at_line lno "Destination vector should be as long as the source vector."
          else if (List.length carry_names) <> srclen then
            raise_at_line lno "Carry vector should be as long as the source vector."
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
  let (src_vectyp, src1, src2) = unify_vec_srcs_at lno vatm1 vatm2 in
  let (relmtyp, srclen) = src_vectyp in
  let vcarry = resolve_vec_with ctx lno carry_tok in
  let _ =
    if List.length (snd vcarry) <> srclen then
      raise_at_line lno "Carry vector should be as long as the source vector."
    else () in

  let (_, dest_names) = resolve_lv_vec_with ctx lno dest_tok (Some src_vectyp) in

  let _ = if (List.length dest_names) <> srclen then
            raise_at_line lno "Destination vector should be as long as the source vector."
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
  let (src_vectyp, src1, src2) = unify_vec_srcs_at lno vatm1 vatm2 in
  let (relmtyp, srclen) = src_vectyp in

  (* XXX: is destL always unsigned? *)
  let src_vectyp = (relmtyp, List.length src1) in
  let destL_typ = (typ_to_unsigned relmtyp, srclen) in
  let (_, destH_names) = resolve_lv_vec_with ctx lno destH_tok (Some src_vectyp) in
  let (_, destL_names) = resolve_lv_vec_with ctx lno destL_tok (Some destL_typ) in

  let _ = if ((List.length destH_names) <> srclen ||
                (List.length destL_names) <> srclen) then
            raise_at_line lno "Destination vectors should be as long as the source vectors."
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
  let (src_vectyp, src1, src2) = unify_vec_srcs_at lno vatm1 vatm2 in
  let (relmtyp, srclen) = src_vectyp in
  let dst_vectyp = (typ_to_double_size relmtyp, srclen) in

  let (_, dest_names) = resolve_lv_vec_with ctx lno dest_tok (Some dst_vectyp) in
  let _ = if (List.length dest_names) <> srclen then
            raise_at_line lno "Destination vector should be as long as the source vector."
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
        ([], [], 0) src in
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
    raise_at_line lno "Destination vector should be as long as the source vector."

let parse_vbroadcast_at ctx lno dest_tok num src_tok =
  let n = num ctx in
  (* type check is done when unpacking, so relmtyp is not needed here *)
  let (_, src) = resolve_vec_with ctx lno src_tok in
  let len = List.length src in
  let src_padded = `AVLIT (List.init (Z.to_int n) (fun i -> List.nth src (i mod len))) in
  unpack_vinstr_11 parse_imov_at ctx lno dest_tok src_padded

let recognize_instr_at ctx lno (instr : instr_t) =
  match instr with
  | `MOV (`LVPLAIN dest, src) ->
     parse_imov_at ctx lno dest src
  | `VMOV (dest, src) ->
     unpack_vinstr_11 parse_imov_at ctx lno dest src
  | `EXTRACT (dest, nums, srcs) ->
     parse_extract_at parse_imov_at ctx lno dest nums srcs
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
  | `SET (`LVPLAIN dest) ->
     parse_set_at ctx lno dest
  | `VSET (dest) ->
     unpack_vinstr_1 parse_set_at ctx lno dest
  | `CLEAR (`LVPLAIN dest) ->
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
  | `ADDS (`LVPLAIN flag, `LVPLAIN dest, src1, src2) ->
     parse_adds_at ctx lno flag dest src1 src2
  | `VADDS (flag, dest, src1, src2) ->
     unpack_vinstr_c12 parse_adds_at ctx lno flag dest src1 src2
  | `ADC (`LVPLAIN dest, src1, src2, carry) ->
     parse_adc_at ctx lno dest src1 src2 carry
  | `ADCS (`LVPLAIN flag, `LVPLAIN dest, src1, src2, carry) ->
     parse_adcs_at ctx lno flag dest src1 src2 carry
  | `SUB (`LVPLAIN dest, src1, src2) ->
     parse_sub_at ctx lno dest src1 src2
  | `VSUB (dest, src1, src2) ->
     unpack_vinstr_12 parse_sub_at ctx lno dest src1 src2
  | `SUBC (`LVPLAIN flag, `LVPLAIN dest, src1, src2) ->
     parse_subc_at ctx lno flag dest src1 src2
  | `VSUBC (flag, dest, src1, src2) ->
     unpack_vinstr_c12 parse_subc_at ctx lno flag dest src1 src2
  | `SUBB (`LVPLAIN flag, `LVPLAIN dest, src1, src2) ->
     parse_subb_at ctx lno flag dest src1 src2
  | `VSUBB (flag, dest, src1, src2) ->
     unpack_vinstr_c12 parse_subb_at ctx lno flag dest src1 src2
  | `SBC (`LVPLAIN dest, src1, src2, carry) ->
     parse_sbc_at ctx lno dest src1 src2 carry
  | `SBCS (`LVPLAIN flag, `LVPLAIN dest, src1, src2, carry) ->
     parse_sbcs_at ctx lno flag dest src1 src2 carry
  | `SBB (`LVPLAIN dest, src1, src2, carry) ->
     parse_sbb_at ctx lno dest src1 src2 carry
  | `SBBS (`LVPLAIN flag, `LVPLAIN dest, src1, src2, carry) ->
     parse_sbbs_at ctx lno flag dest src1 src2 carry
  | `MUL (`LVPLAIN dest, src1, src2) ->
     parse_mul_at ctx lno dest src1 src2
  | `VMUL (dest, src1, src2) ->
     unpack_vinstr_12 parse_mul_at ctx lno dest src1 src2
  | `MULS (`LVPLAIN flag, `LVPLAIN dest, src1, src2) ->
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
  | `VSPL (destH, destL, src, num) ->
     unpack_vinstr_spl parse_spl_at ctx lno destH destL src num
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
  | `UADDS (`LVPLAIN flag, `LVPLAIN dest, src1, src2) ->
     parse_uadds_at ctx lno flag dest src1 src2
  | `VUADDS (flag, dest, src1, src2) ->
     unpack_vinstr_c12 parse_uadds_at ctx lno flag dest src1 src2
  | `UADC (`LVPLAIN dest, src1, src2, carry) ->
     parse_uadc_at ctx lno dest src1 src2 carry
  | `UADCS (`LVPLAIN flag, `LVPLAIN dest, src1, src2, carry) ->
     parse_uadcs_at ctx lno flag dest src1 src2 carry
  | `USUB (`LVPLAIN dest, src1, src2) ->
     parse_usub_at ctx lno dest src1 src2
  | `VUSUB (dest, src1, src2) ->
     unpack_vinstr_12 parse_usub_at ctx lno dest src1 src2
  | `USUBC (`LVPLAIN flag, `LVPLAIN dest, src1, src2) ->
     parse_usubc_at ctx lno flag dest src1 src2
  | `VUSUBC (flag, dest, src1, src2) ->
     unpack_vinstr_c12 parse_usubc_at ctx lno flag dest src1 src2
  | `USUBB (`LVPLAIN flag, `LVPLAIN dest, src1, src2) ->
     parse_usubb_at ctx lno flag dest src1 src2
  | `VUSUBB (flag, dest, src1, src2) ->
     unpack_vinstr_c12 parse_usubb_at ctx lno flag dest src1 src2
  | `USBC (`LVPLAIN dest, src1, src2, carry) ->
     parse_usbc_at ctx lno dest src1 src2 carry
  | `USBCS (`LVPLAIN flag, `LVPLAIN dest, src1, src2, carry) ->
     parse_usbcs_at ctx lno flag dest src1 src2 carry
  | `USBB (`LVPLAIN dest, src1, src2, carry) ->
     parse_usbb_at ctx lno dest src1 src2 carry
  | `USBBS (`LVPLAIN flag, `LVPLAIN dest, src1, src2, carry) ->
     parse_usbbs_at ctx lno flag dest src1 src2 carry
  | `UMUL (`LVPLAIN dest, src1, src2) ->
     parse_umul_at ctx lno dest src1 src2
  | `VUMUL (dest, src1, src2) ->
     unpack_vinstr_12 parse_umul_at ctx lno dest src1 src2
  | `UMULS (`LVPLAIN flag, `LVPLAIN dest, src1, src2) ->
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
  | `VUSPL (destH, destL, src, num) ->
     unpack_vinstr_spl parse_uspl_at ctx lno destH destL src num
  | `SADD (`LVPLAIN dest, src1, src2) ->
     parse_sadd_at ctx lno dest src1 src2
  | `VSADD (dest, src1, src2) ->
     unpack_vinstr_12 parse_sadd_at ctx lno dest src1 src2
  | `SADDS (`LVPLAIN flag, `LVPLAIN dest, src1, src2) ->
     parse_sadds_at ctx lno flag dest src1 src2
  | `VSADDS (flag, dest, src1, src2) ->
     unpack_vinstr_c12 parse_sadds_at ctx lno flag dest src1 src2
  | `SADC (`LVPLAIN dest, src1, src2, carry) ->
     parse_sadc_at ctx lno dest src1 src2 carry
  | `SADCS (`LVPLAIN flag, `LVPLAIN dest, src1, src2, carry) ->
     parse_sadcs_at ctx lno flag dest src1 src2 carry
  | `SSUB (`LVPLAIN dest, src1, src2) ->
     parse_ssub_at ctx lno dest src1 src2
  | `VSSUB (dest, src1, src2) ->
     unpack_vinstr_12 parse_ssub_at ctx lno dest src1 src2
  | `SSUBC (`LVPLAIN flag, `LVPLAIN dest, src1, src2) ->
     parse_ssubc_at ctx lno flag dest src1 src2
  | `VSSUBC (flag, dest, src1, src2) ->
     unpack_vinstr_c12 parse_ssubc_at ctx lno flag dest src1 src2
  | `SSUBB (`LVPLAIN flag, `LVPLAIN dest, src1, src2) ->
     parse_ssubb_at ctx lno flag dest src1 src2
  | `VSSUBB (flag, dest, src1, src2) ->
     unpack_vinstr_c12 parse_ssubb_at ctx lno flag dest src1 src2
  | `SSBC (`LVPLAIN dest, src1, src2, carry) ->
     parse_ssbc_at ctx lno dest src1 src2 carry
  | `SSBCS (`LVPLAIN flag, `LVPLAIN dest, src1, src2, carry) ->
     parse_ssbcs_at ctx lno flag dest src1 src2 carry
  | `SSBB (`LVPLAIN dest, src1, src2, carry) ->
     parse_ssbb_at ctx lno dest src1 src2 carry
  | `SSBBS (`LVPLAIN flag, `LVPLAIN dest, src1, src2, carry) ->
     parse_ssbbs_at ctx lno flag dest src1 src2 carry
  | `SMUL (`LVPLAIN dest, src1, src2) ->
     parse_smul_at ctx lno dest src1 src2
  | `VSMUL (dest, src1, src2) ->
     unpack_vinstr_12 parse_smul_at ctx lno dest src1 src2
  | `SMULS (`LVPLAIN flag, `LVPLAIN dest, src1, src2) ->
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
  | `VSSPL (destH, destL, src, num) ->
     unpack_vinstr_spl parse_sspl_at ctx lno destH destL src num
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
  | `CAST (optlv, `LVPLAIN dest, src) ->
     parse_cast_at ctx lno optlv dest src
  | `VCAST (optlv, dest, src) -> (
    match optlv with
    | Some _ -> raise_at_line lno "Internal error: optlv should be None in vcast."
    | None -> parse_vcast_at ctx lno dest src)
  | `VPC (`LVPLAIN dest, src) ->
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

let parse_instrs ctx instrs =
  let reducer prog_rev (lno, instr0) =
    let prog = recognize_instr_at ctx lno instr0 in
    (List.rev_append prog prog_rev) in
  let prog_rev = List.fold_left reducer [] instrs in
  List.rev prog_rev


(* ---------- Algebraic Predicates Parsing ---------- *)

let parse_ebexp_eq_modopt _lno e1_tok e2_tok msopt_tok =
  fun ctx ->
  match msopt_tok ctx with
  | None -> Eeq (e1_tok ctx, e2_tok ctx)
  | Some ms -> Eeqmod (e1_tok ctx, e2_tok ctx, ms)

let parse_ebexp_eq lno e1_tok e2_tok = parse_ebexp_eq_modopt lno e1_tok e2_tok (fun _ -> None)
let parse_ebexp_eqmod1 lno e1_tok e2_tok m_tok = parse_ebexp_eq_modopt lno e1_tok e2_tok (fun ctx -> Some ([m_tok ctx]))
let parse_ebexp_eqmodN lno e1_tok e2_tok ms_tok = parse_ebexp_eq_modopt lno e1_tok e2_tok (fun ctx -> Some (ms_tok ctx))

let parse_ebexp_veq_modopt lno ve1_tok ve2_tok mssopt_tok =
  fun ctx ->
  let es1 = ve1_tok ctx in
  let es2 = ve2_tok ctx in
  let mssopt = mssopt_tok ctx in
  match mssopt with
  | None -> let _ = check_vec_sizes2 lno es1 es2 in
            List.rev_map2 (fun e1 e2 -> Eeq (e1, e2)) es1 es2 |> List.rev |> eands
  | Some mss -> let _ = check_vec_sizes3 lno es1 es2 mss in
                List.rev_map2 (fun (e1, e2) ms -> Eeqmod (e1, e2, ms)) (List.combine es1 es2) mss |> List.rev |> eands

let parse_ebexp_veq lno ve1_tok ve2_tok =
  parse_ebexp_veq_modopt lno ve1_tok ve2_tok (fun _ -> None)

let parse_ebexp_veqmod1 lno ve1_tok ve2_tok vm_tok =
  parse_ebexp_veq_modopt lno ve1_tok ve2_tok (fun ctx -> Some (List.rev_map (fun e -> [e]) (vm_tok ctx) |> List.rev))

let parse_ebexp_veqmodN lno ve1_tok ve2_tok vms_tok =
  parse_ebexp_veq_modopt lno ve1_tok ve2_tok (fun ctx -> Some (vms_tok ctx))

let parse_eexp_vec_elem lno ve_tok zi =
  fun ctx ->
  let es = ve_tok ctx in
  let len = List.length es in
  let i = Z.to_int zi in
  if len <= i
  then raise_at_line lno ("Index is larger than " ^ (string_of_int (len-1)))
  else List.nth es i

let parse_eexp_pow _lno e_tok i_tok =
  fun ctx ->
  let e = e_tok ctx in
  let i = i_tok ctx in
  (*
   * There are examples that have extremely large exponents.
   * Don't compute the exponentiation.
   *)
  if Z.equal i Z.zero then Econst Z.one
  else if Z.equal i Z.one then e
  else epow e (Econst i)

let parse_veexp_slices lno ve_tok sels =
  fun ctx ->
  List.rev_map (resolve_selection ctx lno (ve_tok ctx)) sels |> List.rev |> List.flatten

let lift_eunop_vec op _lno ve_tok =
  fun ctx -> List.rev (List.rev_map op (ve_tok ctx))

let lift_ebinop_vec op lno ve1_tok ve2_tok =
  fun ctx ->
  let es1 = ve1_tok ctx in
  let es2 = ve2_tok ctx in
  let _ = check_vec_sizes2 lno es1 es2 in
  List.rev (List.rev_map2 op es1 es2)

let lift_elistop_vec op lno ves_tok =
  fun ctx ->
  let ess = ves_tok ctx in
  let _ = check_vec_sizes lno ess in
  List.rev (List.rev_map op (transpose_lists ess))

let parse_veexp_neg = lift_eunop_vec eneg
let parse_veexp_add = lift_ebinop_vec eadd
let parse_veexp_sub = lift_ebinop_vec esub
let parse_veexp_mul = lift_ebinop_vec emul
let parse_veexp_sq = lift_eunop_vec esq
let parse_veexp_adds = lift_elistop_vec eadds
let parse_veexp_muls = lift_elistop_vec emuls

let parse_veexp_append _lno ve1_tok ve2_tok =
  fun ctx -> List.rev_append (List.rev (ve1_tok ctx)) (ve2_tok ctx)

let parse_veexp_pow _lno ve_tok i_tok =
  fun ctx ->
  let es = ve_tok ctx in
  let i = i_tok ctx in
  if Z.equal i Z.zero then List.rev_map (fun _ -> Econst Z.one) es
  else if Z.equal i Z.one then es
  else List.rev (List.rev_map (fun e -> epow e (Econst i)) es)

let parse_veexp_pows lno ve_tok is_tok =
  fun ctx ->
  let es = ve_tok ctx in
  let is = is_tok ctx in
  let _ = check_vec_sizes2 lno es is in
  List.rev_map2 (
      fun e i ->
      if Z.equal i Z.zero then Econst Z.one
      else if Z.equal i Z.one then e
      else epow e (Econst i)
    ) es is |> List.rev

let parse_veexp_limbs lno w_tok ves_tok =
  fun ctx ->
  let w = Z.to_int (w_tok ctx) in
  lift_elistop_vec (limbs w) lno ves_tok ctx

let parse_veexp_poly lno p_tok ves_tok =
  fun ctx ->
  let p = p_tok ctx in
  lift_elistop_vec (poly p) lno ves_tok ctx


(* ---------- Range Predicates Parsing ---------- *)

let parse_rbexp_cmp lno cmpop e1_tok e2_tok =
  fun ctx ->
  let e1 = e1_tok ctx in
  let e2 = e2_tok ctx in
  let w = check_rexp_sizes lno [e1; e2] in
  Rcmp (w, cmpop, e1, e2)

let parse_rbexp_eq_modopt lno e1_tok e2_tok mf_tok =
  fun ctx ->
  let e1 = e1_tok ctx in
  let e2 = e2_tok ctx in
  match mf_tok ctx with
  | None -> let w = check_rexp_sizes lno [e1; e2] in
            Req (w, e1, e2)
  | Some (f, m) -> let w = check_rexp_sizes lno [e1; e2; m] in
                   f w e1 e2 m

let parse_rbexp_eq lno e1_tok e2_tok =
  parse_rbexp_eq_modopt lno e1_tok e2_tok (fun _ -> None)

let parse_rbexp_equmod lno e1_tok e2_tok m_tok =
  parse_rbexp_eq_modopt lno e1_tok e2_tok (fun ctx -> Some (reqmod, m_tok ctx))

let parse_rbexp_eqsmod lno e1_tok e2_tok m_tok =
  parse_rbexp_eq_modopt lno e1_tok e2_tok (fun ctx -> Some (reqsmod, m_tok ctx))

let parse_rbexp_eqsrem lno e1_tok e2_tok m_tok =
  parse_rbexp_eq_modopt lno e1_tok e2_tok (fun ctx -> Some (reqsrem, m_tok ctx))

let parse_rbexp_vcmp lno op ve1_tok ve2_tok =
  fun ctx ->
  let es1 = ve1_tok ctx in
  let es2 = ve2_tok ctx in
  let _ = check_vec_sizes lno [es1; es2] in
  let _ = List.rev_map2 (check_rexp_sizes2 lno) es1 es2 in
  List.rev_map2 (fun e1 e2 -> Rcmp (size_of_rexp e1, op, e1, e2)) es1 es2 |> List.rev |> rands

let parse_rbexp_veq_modopt lno ve1_tok ve2_tok vmf_tok =
  fun ctx ->
  let es1 = ve1_tok ctx in
  let es2 = ve2_tok ctx in
  match vmf_tok ctx with
  | None ->
     let _ = check_vec_sizes lno [es1; es2] in
     let _ = List.rev_map2 (check_rexp_sizes2 lno) es1 es2 in
     let eqs = List.combine es1 es2 in
     eqs |> List.rev_map (fun (e1, e2) -> Req (size_of_rexp e1, e1, e2)) |> List.rev |> rands
  | Some (f, ms) ->
     let _ = check_vec_sizes lno [es1; es2; ms] in
     let _ = List.rev_map2 (check_rexp_sizes2 lno) es1 es2 in
     let _ = List.rev_map2 (check_rexp_sizes2 lno) es2 ms in
     let eqms = List.combine es1 es2 |> fun pairs -> List.combine pairs ms in
     eqms |> List.rev_map (fun ((e1, e2), m) -> f (size_of_rexp e1) e1 e2 m) |> List.rev |> rands

let parse_rbexp_veq lno ve1_tok ve2_tok =
  parse_rbexp_veq_modopt lno ve1_tok ve2_tok (fun _ -> None)

let parse_rbexp_vequmod lno ve1_tok ve2_tok vm_tok =
  parse_rbexp_veq_modopt lno ve1_tok ve2_tok (fun ctx -> Some (reqmod, vm_tok ctx))

let parse_rbexp_veqsmod lno ve1_tok ve2_tok vm_tok =
  parse_rbexp_veq_modopt lno ve1_tok ve2_tok (fun ctx -> Some (reqsmod, vm_tok ctx))

let parse_rbexp_veqsrem lno ve1_tok ve2_tok vm_tok =
  parse_rbexp_veq_modopt lno ve1_tok ve2_tok (fun ctx -> Some (reqsrem, vm_tok ctx))

let parse_rexp_defined_var lno v_tok =
  fun ctx ->
  Rvar (resolve_var_with ctx lno v_tok)

let parse_rexp_const _lno w_tok n_tok =
  fun ctx ->
  let w = Z.to_int (w_tok ctx) in
  let n = n_tok ctx in
  Rconst (w, n)

let parse_rexp_vec_elem lno ve_tok zi =
  fun ctx ->
  let es = ve_tok ctx in
  let len = List.length es in
  let i = Z.to_int zi in
  if len <= i
  then raise_at_line lno ("Index is larger than " ^ (string_of_int (len - 1)))
  else List.nth es i

let parse_rexp_uext _lno e_tok i_tok =
  fun ctx ->
  let e = e_tok ctx in
  let i = Z.to_int (i_tok ctx) in
  let w = size_of_rexp e in
  Ruext (w, e, i)

let parse_rexp_sext _lno e_tok i_tok =
  fun ctx ->
  let e = e_tok ctx in
  let i = Z.to_int (i_tok ctx) in
  let w = size_of_rexp e in
  Rsext (w, e, i)

let parse_rexp_neg _lno e_tok =
  fun ctx ->
  let e = e_tok ctx in
  let w = size_of_rexp e in
  Runop (w, Rnegb, e)

let parse_rexp_not _lno e_tok =
  fun ctx ->
  let e = e_tok ctx in
  let w = size_of_rexp e in
  Runop (w, Rnotb, e)

let parse_rbinop op lno e1_tok e2_tok =
  fun ctx ->
  let e1 = e1_tok ctx in
  let e2 = e2_tok ctx in
  let w = check_rexp_sizes lno [e1; e2] in
  op w e1 e2

let parse_rlistop op lno es_tok =
  fun ctx ->
  let es = es_tok ctx in
  match es with
  | [] -> raise_at_line lno ("An empty list of range expressions is not allowed.")
  | e::_ -> op (size_of_rexp e) es

let parse_rexp_add = parse_rbinop radd
let parse_rexp_sub = parse_rbinop rsub
let parse_rexp_mul = parse_rbinop rmul

let parse_rexp_sq _lno e_tok =
  fun ctx ->
  let e = e_tok ctx in
  rsq (size_of_rexp e) e

let parse_rexp_umod = parse_rbinop rumod
let parse_rexp_srem = parse_rbinop rsrem
let parse_rexp_smod = parse_rbinop rsmod
let parse_rexp_and = parse_rbinop randb
let parse_rexp_or = parse_rbinop rorb
let parse_rexp_xor = parse_rbinop rxorb
let parse_rexp_shl = parse_rbinop rshl
let parse_rexp_shr = parse_rbinop rlshr
let parse_rexp_sar = parse_rbinop rashr
let parse_rexp_rol = parse_rbinop rrol
let parse_rexp_ror = parse_rbinop rror

let parse_rexp_concat _lno e1_tok e2_tok =
  fun ctx ->
  let e1 = e1_tok ctx in
  let e2 = e2_tok ctx in
  let w1 = size_of_rexp e1 in
  let w2 = size_of_rexp e2 in
  Rconcat (w1, w2, e1, e2)

let parse_rexp_adds = parse_rlistop radds
let parse_rexp_muls = parse_rlistop rmuls

let parse_rexp_limbs extfun _lno w_tok es_tok =
  fun ctx ->
  let w = Z.to_int (w_tok ctx) in
  let es = es_tok ctx in
  let tw = List.fold_left max
             0
             (List.mapi (fun i e -> size_of_rexp e + i * w) es) in
  let es = extfun tw es in
  let rec helper i es =
    match es with
    | [] -> Rconst (tw, Z.zero)
    | hd::[] -> rmul tw hd (Rconst (tw, Z.pow z_two (i*w)))
    | hd::tl -> radd tw (rmul tw hd (Rconst (tw, Z.pow z_two (i*w)))) (helper (i+1) tl) in
  let res = helper 0 es in
  res

let parse_rexp_ulimbs =
  parse_rexp_limbs (
      fun tw es ->
      List.map (
          fun e ->
          let ew = size_of_rexp e in
          Ruext (ew, e, tw - ew)
        ) es
    )

let parse_rexp_slimbs =
  parse_rexp_limbs (
      fun tw es ->
      let last = List.length es - 1 in
      List.mapi (
          fun i e ->
          let ew = size_of_rexp e in
          if i == last then Rsext (ew, e, tw - ew)
          else Ruext (ew, e, tw - ew)
        ) es
    )

let lift_runop_vec op _lno ve_tok =
  fun ctx ->
  (ve_tok ctx) |> List.rev_map (fun e -> op (size_of_rexp e) e) |> List.rev

let lift_rbinop_vec op lno ve1_tok ve2_tok =
  fun ctx ->
  let es1 = ve1_tok ctx in
  let es2 = ve2_tok ctx in
  let _ = check_vec_sizes lno [es1; es2] in
  let _ = List.rev_map2 (check_rexp_sizes2 lno) es1 es2 in
  List.rev_map2 (fun e1 e2 -> op (size_of_rexp e1) e1 e2) es1 es2 |> List.rev

let lift_rlistop_vec op lno ves_tok =
  fun ctx ->
  let ves = Utils.Std.transpose (ves_tok ctx) in
  if ves = [] then raise_at_line lno ("An empty vector range expression is not allowed.")
  else ves |> List.rev_map (fun ve -> op (size_of_rexp (List.hd ve)) ve) |> List.rev

let parse_vrexp_slices lno ve_tok sels =
  fun ctx ->
  List.rev_map (resolve_selection ctx lno (ve_tok ctx)) sels |> List.rev |> List.flatten

let parse_vrexp_uext _lno ve_tok i_tok =
  fun ctx ->
  let i = Z.to_int (i_tok ctx) in
  (ve_tok ctx) |> List.rev_map (fun e -> Ruext (size_of_rexp e, e, i)) |> List.rev

let parse_vrexp_sext _lno ve_tok i_tok =
  fun ctx ->
  let i = Z.to_int (i_tok ctx) in
  (ve_tok ctx) |> List.rev_map (fun e -> Rsext (size_of_rexp e, e, i)) |> List.rev

let parse_vrexp_neg = lift_runop_vec rnegb
let parse_vrexp_not = lift_runop_vec rnotb
let parse_vrexp_add = lift_rbinop_vec radd
let parse_vrexp_sub = lift_rbinop_vec rsub
let parse_vrexp_mul = lift_rbinop_vec rmul

let parse_vrexp_sq _lno ve_tok =
  fun ctx ->
  (ve_tok ctx) |> List.rev_map (fun e -> rsq (size_of_rexp e) e) |> List.rev

let parse_vrexp_umod = lift_rbinop_vec rumod
let parse_vrexp_srem = lift_rbinop_vec rsrem
let parse_vrexp_smod = lift_rbinop_vec rsmod
let parse_vrexp_and = lift_rbinop_vec randb
let parse_vrexp_or = lift_rbinop_vec rorb
let parse_vrexp_xor = lift_rbinop_vec rxorb
let parse_vrexp_shl = lift_rbinop_vec rshl
let parse_vrexp_shr = lift_rbinop_vec rlshr
let parse_vrexp_sar = lift_rbinop_vec rashr
let parse_vrexp_rol = lift_rbinop_vec rrol
let parse_vrexp_ror = lift_rbinop_vec rror

let parse_vrexp_concat lno ve1_tok ve2_tok =
  fun ctx ->
  let es1 = ve1_tok ctx in
  let es2 = ve2_tok ctx in
  let _ = check_vec_sizes lno [es1; es2] in
  List.rev_map2 (fun e1 e2 -> rconcat (size_of_rexp e1) (size_of_rexp e2) e1 e2) es1 es2 |> List.rev

let parse_vrexp_adds = lift_rlistop_vec radds
let parse_vrexp_muls = lift_rlistop_vec rmuls

let parse_vrexp_limbs extfun _lno w_tok ves_tok =
  fun ctx ->
  let w = Z.to_int (w_tok ctx) in
  let tw es = List.fold_left max 0 (List.mapi (fun i e -> size_of_rexp e + i * w) es) in
  let rec helper i tw es =
    match es with
    | [] -> Rconst (tw, Z.zero)
    | hd::[] -> rmul tw hd (Rconst (tw, Z.pow z_two (i*w)))
    | hd::tl -> radd tw (rmul tw hd (Rconst (tw, Z.pow z_two (i*w)))) (helper (i+1) tw tl) in
  let ess = Utils.Std.transpose (ves_tok ctx) in
  ess |> List.rev_map (fun es -> let tw = tw es in helper 0 tw (extfun tw es)) |> List.rev

let parse_vrexp_ulimbs =
  parse_vrexp_limbs (
      fun tw es ->
      List.map (fun e -> let ew = size_of_rexp e in Ruext (ew, e, tw - ew)) es
    )

let parse_vrexp_slimbs =
  parse_vrexp_limbs (
      fun tw es ->
      let last = List.length es - 1 in
      List.mapi (fun i e -> let ew = size_of_rexp e in if i = last then Rsext (ew, e, tw - ew) else Ruext (ew, e, tw - ew)) es
    )

let parse_vrexp_append _lno ve1_tok ve2_tok =
  fun ctx ->
  List.rev_append (List.rev (ve1_tok ctx)) (ve2_tok ctx)

let parse_rexps_cons lno r_tok rs_tok =
  fun ctx ->
  let e = r_tok ctx in
  let es = rs_tok ctx in
  let _ =
    match es with
    | [] -> ()
    | e'::_ -> ignore(check_rexp_sizes lno [e; e']) in
  e::es

let parse_vrexps_cons lno vr_tok vrs_tok =
  fun ctx ->
  let es = vr_tok ctx in
  let ess = vrs_tok ctx in
  let _ =
    match ess with
    | [] -> ()
    | es'::_ -> let _ = check_vec_sizes lno [es; es'] in
                let _ = List.rev_map2 (check_rexp_sizes2 lno) es es' in
                () in
  es::ess


(* ---------- Variables and Constants Parsing ---------- *)

let parse_actuals_all lno atoms_tok =
  fun ctx tys ->
  let ((itys, otys), atoms) = atoms_tok ctx tys in
  let _ =
    match itys, otys with
    | _::_, _
      | [], _::_ -> raise_at_line lno ("The number of actual parameters does not match the number of formal parameters.")
    | _, _ -> () in
  atoms

let parse_actuals_ins_outs lno ins_tok outs_tok =
  fun ctx (itys, otys) ->
  let ((itys, _), ias) = ins_tok ctx (itys, []) in
  let ((_, otys), oas) = outs_tok ctx ([], otys) in
  let _ =
    match itys, otys with
    | _::_, _ -> raise_at_line lno ("The number of actual input parameters does not match the number of formal input parameters.")
    | _, _::_ -> raise_at_line lno ("The number of actual output parameters does not match the number of formal output parameters.")
    | _, _ -> () in
  List.rev_append (List.rev ias) oas

let parse_actual_atom_const_exp lno cexp_tok tyopt =
  fun ctx tys ->
  match tys with
  | (ty::argtys, outtys) ->
     let _ =
       match tyopt with
       | None -> ()
       | Some ty' -> if ty <> ty' then raise_at_line lno ("The specified type is not compatible to the type of the corresponding formal parameter") in
     ((argtys, outtys), [parse_typed_const ctx lno ty cexp_tok])
  | ([], _ty::_) -> raise_at_line lno ("The corresponding formal parameter is an output variable. "
                                       ^ "The actual parameter must be a variable.")
  | _ -> raise_at_line lno ("The number of actual input parameters does not match the number of formal input parameters.")

let parse_actual_atom_var lno vname =
  if vname = "_" then raise_at_line lno "Reading the value of variable _ is forbidden."
  else
    fun ctx tys ->
    match tys with
    | (ty::argtys, outtys) ->
       (try
          let v = ctx_find_var ctx vname in
          if v.vtyp = ty then ((argtys, outtys), [Avar v])
          else raise_at_line lno ("The variable type of "
                                  ^ vname
                                  ^ " is not compatible to the type of the corresponding formal parameter")
        with Not_found ->
          raise_at_line lno ("Failed to determine the type of " ^ vname)
       )
    | ([], ty::outtys) ->
       let v = mkvar vname ty in
       let _ =
         if ctx_ghost_is_defined ctx v then
           raise_at_line lno ("The name " ^ v.vname ^ " used as a ghost variable cannot be used as an actual output parameter.") in
       (([], outtys), [Avar v])
    | _ -> raise_at_line lno ("The number of (all, input, or output) actual parameters does not match the number of (all, input, or output) formal parameters.")

let parse_actual_atom_var_expansion lno prefix st ed =
  fun ctx tys ->
  let (tys, atoms_rev) =
    List.fold_left (
        fun (tys, atoms_rev) i ->
        let vname = prefix ^ vars_expansion_infix ^ string_of_int i in
        let (tys, atoms) = parse_actual_atom_var lno vname ctx tys in
        (tys, List.rev_append atoms atoms_rev)
      ) (tys, [])
      ((Z.to_int st)--(Z.to_int ed)) in
  (tys, List.rev atoms_rev)

let parse_var_expansion lno prefix st ed =
  fun ctx ->
  List.map
    (fun i ->
      let vn = prefix ^ vars_expansion_infix ^ string_of_int i in
      let v =
        try
          ctx_find_var ctx vn
        with Not_found ->
          raise_at_line lno ("Failed to determine the type of " ^ vn) in
      if not (ctx_var_is_defined ctx v) && not (ctx_ghost_is_defined ctx v)
      then raise_at_line lno ("Variable " ^ string_of_var v ^ " is not defined.")
      else v
    ) ((Z.to_int st)--(Z.to_int ed))


let parse_named_constant lno cname =
  fun ctx ->
  try
    SM.find cname ctx.cconsts
  with Not_found ->
    raise_at_line lno ("Undefined constant: " ^ cname)

let parse_defined_var lno vname vtypopt =
  if vname = "_" then raise_at_line lno "Reading the value of variable _ is forbidden."
  else `AVAR { atmtyphint = vtypopt; atmname = vname }

let parse_gvar lno vname vtyp =
  if vname = "_" then raise_at_line lno "Reading the value of variable _ is forbidden."
  else
    fun ctx ->
    if ctx_name_is_var ctx vname then raise_at_line lno ("The ghost variable " ^ vname ^ " has been defined as a program variable.")
    else if ctx_name_is_var ctx vname then raise_at_line lno ("The ghost variable " ^ vname ^ " has been defined previously.")
    else mkvar vname vtyp

let parse_fvar _lno vname vtyp = [mkvar vname vtyp]

let parse_fvar_expansion _lno prefix ty st ed =
  List.rev_map (fun i -> mkvar (prefix ^ vars_expansion_infix ^ string_of_int i) ty) ((Z.to_int st)--(Z.to_int ed)) |> List.rev

let parse_fvar_cons lno fvs1 fvs2 =
  let duplicates = List.filter (fun v -> mem_var v fvs2) fvs1 in
  if List.length duplicates > 0
  then raise_at_line lno ("Duplicate argument: " ^ string_of_var (List.hd duplicates))
  else List.rev_append (List.rev fvs1) fvs2


(* ---------- Globals Parsing ---------- *)

let parse_global_constant lno name n_token =
  fun ctx ->
  let n = n_token ctx in
  if SM.mem name ctx.cconsts
  then raise_at_line lno ("Redefined constant: " ^ name)
  else let _ = ctx.cconsts <- SM.add name n ctx.cconsts in
       ()

let parse_proc lno fname (args, outs) pre_tok instrs post_tok =
  fun ctx ->
  if SM.mem fname ctx.cfuns then raise_at_line lno ("The procedure " ^ fname ^ " is redefined.")
  else
    (* Duplicate formal parameters are detected in parsing formal parameters *)
    (* reset maps *)
    let _ = ctx.cvars <- vm_of_list args in
    let _ = ctx.cvecs <- SM.empty in
    let _ = ctx.ccarries <- SM.empty in
    let _ = ctx.cghosts <- SM.empty in
    let f =
      match pre_tok ctx with
      | None -> btrue
      | Some e -> e in
    let p = parse_instrs ctx instrs in
    let g =
      match post_tok ctx with
      | None -> ([], [])
      | Some e -> e in
    (* Validate pre-/post-conditions *)
    let _ =
      if fname <> Options.Std.main_proc_name then
        let fins = VS.of_list args in
        let fouts = VS.of_list outs in
        (* 1. pre-condition can access only input variables *)
        (* => this is checked in parsing the pre-condition *)
        (* 2. post-condition can access only input and output variables *)
        let undefined_post = VS.diff (vars_bexp_prove_with g) (VS.union fins fouts) in
        let _ = if not (VS.is_empty undefined_post) then raise_at_line lno ("Variable " ^ string_of_var (VS.min_elt undefined_post) ^ " is not a formal parameter of procedure " ^ fname ^ ". "^
                                                                              "Variables in post-conditions for procedures other than " ^ Options.Std.main_proc_name ^ " must be formal input or output variables.") in
        () in
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

let parse_specs procs_tok =
  let inputs_spec_pair m = ((m.fargs, m.fouts), { Typecheck.Std.spre = m.fpre; Typecheck.Std.sprog = m.fbody; Typecheck.Std.spost = m.fpost }) in
  let ctx = empty_parsing_context() in
  let _ = procs_tok ctx in
  SM.fold (fun fn f fm -> SM.add fn (inputs_spec_pair f) fm) ctx.cfuns SM.empty

let parse_spec procs_tok =
  let ctx = empty_parsing_context() in
  let _ = procs_tok ctx in
  try
    let m = SM.find Options.Std.main_proc_name ctx.cfuns in
    (m.fargs, { Typecheck.Std.spre = m.fpre; Typecheck.Std.sprog = m.fbody; Typecheck.Std.spost = m.fpost })
  with Not_found ->
    raise (ParseError ("A " ^ Options.Std.main_proc_name ^ " function is required."))
