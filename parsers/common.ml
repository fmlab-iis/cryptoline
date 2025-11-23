
open Parsing
open Utils.Std
open Ast.Cryptoline
open Ast.MultiTrack


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

type vecvar = string * vectyp

let string_of_vectyp (t, n) = Printf.sprintf "%s[%d]" (string_of_typ t) n

let vec_name_fn vname =
  let n = String.length vname in
  let name = String.sub vname 1 (n - 1) in
  (* XXX: Find a suitable delimiter for name and index that don't choke Boolector and Singular *)
  Printf.sprintf "VEC_%s_%d" name

let vars_of_vec vecname (vtyp, vnum) =
  List.map (fun i -> mkvar (vec_name_fn vecname i) vtyp) (List.init vnum Fun.id)


(* ---------- Mix scalar variables and vector variables ---------- *)

type type_kind =
  | ScalarType of typ
  | VectorType of vectyp

type var_kind =
  | ScalarVar of var
  | VectorVar of vecvar

let name_of_var_kind vk =
  match vk with
  | ScalarVar v -> v.vname
  | VectorVar (vn, _) -> vn

let type_of_var_kind vk =
  match vk with
  | ScalarVar v -> ScalarType (typ_of_var v)
  | VectorVar (_, vt) -> VectorType vt

(* Expand vector variables to scalar variables *)
let scalar_vars_of_var_kind vk =
  match vk with
  | ScalarVar v -> [v]
  | VectorVar (vn, vt) -> vars_of_vec vn vt

let scalar_vars_of_var_kinds vks =
  List.fold_left (fun res vk -> List.rev_append (scalar_vars_of_var_kind vk) res) [] vks |> List.rev

let scalar_types_of_var_kind vk =
  match vk with
  | ScalarVar v -> [typ_of_var v]
  | VectorVar (_, (vt, num)) -> List.init num (fun _ -> vt)

let scalar_types_of_var_kinds vks =
  List.fold_left (fun res vk -> List.rev_append (scalar_types_of_var_kind vk) res) [] vks |> List.rev


(* ---------- Functions ---------- *)

type func =
  {
    fname : string;
    farg_kinds : var_kind list; (* formal input variables (vector variables are not expanded) *)
    fout_kinds : var_kind list; (* formal in-out variables (vector variables are not expanded) *)
    fargs : var list;           (* formal input variables (vector variables are expanded) *)
    fouts : var list;           (* formal in-out variables (vector variables are expanded) *)
    fvm : var SM.t;             (* a map from a name to a last-defined variable (including carry variables) *)
    fym : var SM.t;             (* a map from a name to a last-defined carry variable *)
    fgm : var SM.t;             (* a map from a name to a last-defined ghost variable *)
    fbody : lined_tagged_program;
    fpre : tagged_bexp;
    fpost : tagged_bexp_prove_with
  }
(* a parsed function where vector variables are expaneded *)


(* ---------- Parsing Context ---------- *)

type parsing_context =
  {
    mutable cfuns: func SM.t;       (* a map from function name to function definition *)
    mutable cconsts: Z.t SM.t;      (* a map from constant name to constant value *)
    mutable cvars: var SM.t;        (* a map from variable name to variable *)
    mutable cvecs: vectyp SM.t;     (* a map from vector name to its type *)
    mutable ccarries: var SM.t;     (* a map from carry name to carry variable *)
    mutable cghosts: var SM.t;      (* a map from ghost name to ghost variable *)
    mutable cvecghosts: vectyp SM.t (* a map from ghost vector name to vector type *)
  }

type 'a contextual = parsing_context -> 'a

let empty_parsing_context () =
  {
    cfuns = SM.empty;
    cconsts = SM.empty;
    cvars = SM.empty;
    cvecs = SM.empty;
    ccarries = SM.empty;
    cghosts = SM.empty;
    cvecghosts = SM.empty
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

(* Add a vector program variable to a parsing context.
   Vector elements will not be added to the parsing context. *)
let ctx_define_vec ctx vecname vectyp =
  ctx.cvecs <- SM.add vecname vectyp ctx.cvecs

(* Add a scalar ghost variable to a parsing context *)
let ctx_define_ghost ctx v =
  ctx.cghosts <- SM.add v.vname v ctx.cghosts

(* Add a vector ghost variable to a parsing context.
   Vector elements will not be added to the parsing context. *)
let ctx_define_vec_ghost ctx vecname vectyp  =
  ctx.cvecghosts <- SM.add vecname vectyp ctx.cvecghosts

(* Find a scalar variable by name *)
let ctx_find_var ctx n = SM.find n ctx.cvars

(* Find a vector variable by name *)
let ctx_find_vec ctx n = SM.find n ctx.cvecs

(* Find a scalar ghost variable by name *)
let ctx_find_ghost ctx n = SM.find n ctx.cghosts

(* Find a vector ghost variable by name *)
let ctx_find_vec_ghost ctx n = SM.find n ctx.cvecghosts

(* Check if a name is a scalar variable *)
let ctx_name_is_var ctx n = SM.mem n ctx.cvars

(* Check if a name is a vector variable *)
let ctx_name_is_vec ctx n = SM.mem n ctx.cvecs

(* Check if a name is a scalar ghost variable *)
let ctx_name_is_ghost ctx n = SM.mem n ctx.cghosts

(* Check if a name is a vector ghost variable *)
let ctx_name_is_vec_ghost ctx n = SM.mem n ctx.cvecghosts

(* Check if a scalar variable is defined *)
let ctx_var_is_defined ctx v = SM.mem v.vname ctx.cvars

(* Check if a vector variable is defined *)
let ctx_vec_is_defined ctx v = SM.mem v.vname ctx.cvecs

(* Check if a carry is defined *)
let ctx_carry_is_defined ctx v = SM.mem v.vname ctx.ccarries

(* Check if a scalar ghost variable is defined *)
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
  | `AVECDUP of atom_vec_t * Z.t contextual
  ]


(* ---------- Instruction Parsing ---------- *)

type instr_t =
  [
  | `MOV of lval_t * atom_t
  | `VMOV of lval_vec_t * atom_vec_t
  | `EXTRACT of lval_vec_t * int list * atom_vec_t list
  | `VBROADCAST of lval_vec_t * Z.t contextual * atom_vec_t
  | `SHL of lval_t * atom_t * atom_t
  | `VSHL of lval_vec_t * atom_vec_t * atom_vec_t
  | `SHLS of lval_t * lval_t * atom_t * Z.t contextual
  | `VSHLS of lval_vec_t * lval_vec_t * atom_vec_t * Z.t contextual list
  | `SHR of lval_t * atom_t * atom_t
  | `VSHR of lval_vec_t * atom_vec_t * atom_vec_t
  | `SHRS of lval_t * lval_t * atom_t * Z.t contextual
  | `VSHRS of lval_vec_t * lval_vec_t * atom_vec_t * Z.t contextual list
  | `SAR of lval_t * atom_t * atom_t
  | `VSAR of lval_vec_t * atom_vec_t * atom_vec_t
  | `SARS of lval_t * lval_t * atom_t * Z.t contextual
  | `VSARS of lval_vec_t * lval_vec_t * atom_vec_t * Z.t contextual list
  | `CSHL of lval_t * lval_t * atom_t * atom_t * Z.t contextual
  | `CSHLS of lval_t * lval_t * lval_t * atom_t * atom_t * Z.t contextual
  | `CSHR of lval_t * lval_t * atom_t * atom_t * Z.t contextual
  | `CSHRS of lval_t * lval_t * lval_t * atom_t * atom_t * Z.t contextual
  | `ROL of lval_t * atom_t * atom_t
  | `VROL of lval_vec_t * atom_vec_t * atom_vec_t
  | `ROR of lval_t * atom_t * atom_t
  | `VROR of lval_vec_t * atom_vec_t * atom_vec_t
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
  | `VVPC of lval_vec_t * atom_vec_t
  | `JOIN of lval_t * atom_t * atom_t
  | `VJOIN of lval_vec_t * atom_vec_t * atom_vec_t
  | `ASSERT of (bexp_prove_with contextual)
  | `EASSERT of (ebexp_prove_with contextual)
  | `RASSERT of (rbexp_prove_with contextual)
  | `ASSUME of (bexp contextual)
  | `CUT of (bexp_prove_with contextual)
  | `ECUT of (ebexp_prove_with contextual)
  | `RCUT of (rbexp_prove_with contextual)
  | `GHOST of ((var list * vecvar list) contextual) * (bexp contextual)
  | `TASSERT of (tagged_bexp_prove_with contextual)
  | `TEASSERT of (tagged_ebexp_prove_with contextual)
  | `TRASSERT of (tagged_rbexp_prove_with contextual)
  | `TASSUME of (tagged_bexp contextual)
  | `TCUT of (tagged_bexp_prove_with contextual)
  | `TECUT of (tagged_ebexp_prove_with contextual)
  | `TRCUT of (tagged_rbexp_prove_with contextual)
  | `TGHOST of ((var list * vecvar list) contextual) * (tagged_bexp contextual)
  | `CALL of string * ((type_kind list * type_kind list -> atom list) contextual)
  | `INLINESPEC of string * ((type_kind list * type_kind list -> atom list) contextual)
  | `INLINE of string * ((type_kind list * type_kind list -> atom list) contextual)
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

let parse_named_constant lno cname =
  fun ctx ->
  try
    SM.find cname ctx.cconsts
  with Not_found ->
    raise_at_line lno ("Undefined constant: " ^ cname)

let resolve_var_with ?(chktyp=true) ctx lno (`AVAR {atmtyphint; atmname}) =
  let vo =
    try
      Some (ctx_find_var ctx atmname)
    with Not_found ->
      begin
        try
          Some (ctx_find_ghost ctx atmname)
        with Not_found ->
          None
      end in
  match vo with
  | Some v ->
     let _ =
       match atmtyphint with
       | None -> ()
       | Some hinted_ty ->
          if v.vtyp <> hinted_ty then
            raise_at_line lno ("The type of variable " ^ atmname ^ " is inconsistent")
          else () in
     Avar v
  | None ->
     try
       let n = parse_named_constant lno atmname ctx in
       let ty = match atmtyphint with
         | None -> if chktyp
                   then raise_at_line lno (Printf.sprintf "Failed to infer the type of the constant %s" atmname)
                   else bit_t
         | Some ty -> ty in
       Aconst (ty, n)
     with Not_found ->
       raise_at_line lno ("Variable " ^ atmname ^ " is undefined.")

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
     let _ = if ctx_name_is_vec_ghost ctx vecname then raise_at_line lno ("The vector variable " ^ vecname ^
                                                                            " has been defined as a ghost variable.") in
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
  | `AVAR v -> resolve_var_with ctx lno (`AVAR v)
  | `AVECELM v -> let (elmty, elms) = resolve_vec_with ctx lno (`AVECT { vecname = v.avecname; vectyphint = None }) in
                  let a =
                    try
                      List.nth elms v.avecindex
                    with Failure _ -> raise_at_line lno ("The index " ^ string_of_int v.avecindex ^ " is out of bound")
                       | Invalid_argument _ -> raise_at_line lno ("The index " ^ string_of_int v.avecindex ^ " must be positive.") in
                  resolve_atom_with ctx lno ~typ:elmty a
  and
    resolve_vec_with ?(with_ghost=false) ctx lno src_tok : typ * atom_t list =
    match src_tok with
    | `AVECT {vecname; vectyphint} ->
       let tv = try
           ctx_find_vec ctx vecname
         with Not_found ->
               if with_ghost then try ctx_find_vec_ghost ctx vecname
                                  with Not_found -> raise_at_line lno ("Vector variable " ^ vecname ^ " is undefined.")
               else if ctx_name_is_vec_ghost ctx vecname then raise_at_line lno ("Vector " ^ vecname ^ " has been defined as a ghost variable.")
               else raise_at_line lno ("Vector variable " ^ vecname ^ " is undefined.")
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
    | `AVECDUP (vecatm, num) ->
       let (typ, atoms) = resolve_vec_with ctx lno vecatm in
       let ret = 
         let rec helper n rev_ret =
           if Z.equal n Z.zero then List.rev rev_ret
           else helper (Z.pred n) (List.rev_append atoms rev_ret) in
         helper (num ctx) [] in
       (typ, ret)
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


let resolve_output_var_with ctx lno ty (`AVAR {atmtyphint; atmname}) =
  let _ =
    match atmtyphint with
    | None -> ()
    | Some ty_hint ->
       if ty_hint <> ty
       then raise_at_line lno (Printf.sprintf "The type (%s) of variable %s does not match the required type %s." (string_of_typ ty_hint) atmname (string_of_typ ty))
       else () in
  let v = mkvar atmname ty in
  let _ =
    if ctx_ghost_is_defined ctx v then
      raise_at_line lno (Printf.sprintf "The name %s used as a ghost variable cannot be used as an actual output parameter." v.vname) in
  v

let rec resolve_output_atom_with ctx lno ty (a: atom_t) =
  match a with
  | `ACONST _ -> raise_at_line lno ("A constant cannot be used as an output.")
  | `AVAR v -> Avar (resolve_output_var_with ctx lno ty (`AVAR v))
  | `AVECELM _ -> raise_at_line lno ("A vector element cannot be used as an output.")
  and
    resolve_output_vec_with ctx lno ty src_tok : atom list =
    match src_tok with
    | `AVECT {vecname; vectyphint} ->
       let _ =
         match vectyphint with
         | None -> ()
         | Some ty_hint ->
            if ty_hint <> ty
            then raise_at_line lno (Printf.sprintf "The vector atom type %s does not match the expected type %s." (string_of_vectyp ty_hint) (string_of_vectyp ty))
            else () in
       let (rtyphint, rlen) = ty in
       let gen_avar i = `AVAR {atmname=(vec_name_fn vecname i); atmtyphint=Some rtyphint} in
       let rvs = List.map gen_avar (0 -- (rlen-1)) in
       tmap (resolve_output_atom_with ctx lno rtyphint) rvs
    | `AVLIT rvs ->
       (match rvs with
        | [] -> raise_at_line lno "A vector literal cannot be empty."
        | _ ->
           let (atom_t, vec_size) = ty in
           let _ = if vec_size <> List.length rvs then raise_at_line lno
                                                         (Printf.sprintf ("The size (%d) of vector literals does not match the required size (%d).")
                                                            (List.length rvs) vec_size) in
           tmap (resolve_output_atom_with ctx lno atom_t) rvs)
    | `AVECSEL _ -> raise_at_line lno ("A selection of vector elements cannot be used as an output.")
    | `AVECDUP _ -> raise_at_line lno ("A vector duplication cannot be used as an output.")
    | `AVECCAT _ -> raise_at_line lno ("A vector concatenation cannot be used as an output.")


let parse_imov_at ctx lno dest src =
  let a = resolve_atom_with ctx lno src in
  let ty = typ_of_atom a in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TImov (v, a)]

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
  [lno, TIshl (v, a1, a2)]

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
  [lno, TIshls (l, v, a, n)]

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
  [lno, TIshr (v, a1, a2)]

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
  [lno, TIshrs (v, l, a, n)]

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
  [lno, TIsar (v, a1, a2)]

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
  [lno, TIsars (v, l, a, n)]

let parse_cshl_at ctx lno destH destL src1 src2 num =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let ty = typ_of_atom a1 in
  let n = num ctx in
  let vh = resolve_lv_with ctx lno destH (Some ty) in
  let vl = resolve_lv_with ctx lno destL (Some (typ_to_unsigned ty)) in
  [lno, TIcshl (vh, vl, a1, a2, n)]

let parse_cshls_at ctx lno lostL destH destL src1 src2 num =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let ty = typ_of_atom a1 in
  let n = num ctx in
  let l = resolve_lv_with ctx lno lostL (Some (typ_to_size ty (Z.to_int n))) in
  let vh = resolve_lv_with ctx lno destH (Some ty) in
  let vl = resolve_lv_with ctx lno destL (Some (typ_to_unsigned ty)) in
  [lno, TIcshls (l, vh, vl, a1, a2, n)]

let parse_cshr_at ctx lno destH destL src1 src2 num =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let ty = typ_of_atom a1 in
  let n = num ctx in
  let vh = resolve_lv_with ctx lno destH (Some ty) in
  let vl = resolve_lv_with ctx lno destL (Some (typ_to_unsigned ty)) in
  [lno, TIcshr (vh, vl, a1, a2, n)]

let parse_cshrs_at ctx lno destH destL lostL src1 src2 num =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let ty = typ_of_atom a1 in
  let n = num ctx in
  let vh = resolve_lv_with ctx lno destH (Some ty) in
  let vl = resolve_lv_with ctx lno destL (Some (typ_to_unsigned ty)) in
  let l = resolve_lv_with ctx lno lostL (Some (Tuint (Z.to_int n))) in
  [lno, TIcshrs (vh, vl, l, a1, a2, n)]

let parse_rol_at ctx lno dest src num =
  let a = resolve_atom_with ctx lno src in
  let ty = typ_of_atom a in
  let n = resolve_atom_with ctx lno ~typ:ty num in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TIrol (v, a, n)]

let parse_ror_at ctx lno dest src num =
  let a = resolve_atom_with ctx lno src in
  let ty = typ_of_atom a in
  let n = resolve_atom_with ctx lno ~typ:ty num in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TIror (v, a, n)]

let parse_set_at ctx lno dest =
  let c = resolve_lcarry_with ctx lno dest in
  [lno, TImov (c, Aconst (bit_t, Z.one)) ]

let parse_clear_at ctx lno dest =
  let c = resolve_lcarry_with ctx lno dest in
  [lno, TImov (c, Aconst (bit_t, Z.zero))]

let parse_nondet_at ctx lno dest =
  let v = resolve_lv_with ctx lno dest None in
  [lno, TInondet v]

let parse_cmov_at ctx lno dest carry src1 src2 =
  let c = resolve_atom_with ctx lno carry in
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let ty = typ_of_atom a1 in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TIcmov (v, c, a1, a2)]

let parse_add_at ctx lno dest src1 src2 =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let ty = typ_of_atom a1 in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TIadd (v, a1, a2)]

let parse_adds_at ctx lno flag dest src1 src2 =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let ty = typ_of_atom a1 in
  let c = resolve_lcarry_with ctx lno flag in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TIadds (c, v, a1, a2)]

let parse_adc_at ctx lno dest src1 src2 (carry : atom_t) =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let y = resolve_atom_with ctx lno carry in
  let ty = typ_of_atom a1 in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TIadc (v, a1, a2, y)]

let parse_adcs_at ctx lno flag dest src1 src2 carry =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let y = resolve_atom_with ctx lno carry in
  let ty = typ_of_atom a1 in
  let c = resolve_lcarry_with ctx lno flag in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TIadcs (c, v, a1, a2, y)]

let parse_sub_at ctx lno dest src1 src2 =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let ty = typ_of_atom a1 in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TIsub (v, a1, a2)]

let parse_subc_at ctx lno flag dest src1 src2 =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let ty = typ_of_atom a1 in
  let c = resolve_lcarry_with ctx lno flag in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TIsubc (c, v, a1, a2)]

let parse_subb_at ctx lno flag dest src1 src2 =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let ty = typ_of_atom a1 in
  let c = resolve_lcarry_with ctx lno flag in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TIsubb (c, v, a1, a2)]

let parse_sbc_at ctx lno dest src1 src2 carry =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let y = resolve_atom_with ctx lno carry in
  let ty = typ_of_atom a1 in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TIsbc (v, a1, a2, y)]

let parse_sbcs_at ctx lno flag dest src1 src2 carry =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let y = resolve_atom_with ctx lno carry in
  let ty = typ_of_atom a1 in
  let c = resolve_lcarry_with ctx lno flag in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TIsbcs (c, v, a1, a2, y)]

let parse_sbb_at ctx lno dest src1 src2 carry =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let y = resolve_atom_with ctx lno carry in
  let ty = typ_of_atom a1 in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TIsbb (v, a1, a2, y)]

let parse_sbbs_at ctx lno flag dest src1 src2 carry =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let y = resolve_atom_with ctx lno carry in
  let ty = typ_of_atom a1 in
  let c = resolve_lcarry_with ctx lno flag in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TIsbbs (c, v, a1, a2, y)]

let parse_mul_at ctx lno dest src1 src2 =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let ty = typ_of_atom a1 in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TImul (v, a1, a2)]

let parse_muls_at ctx lno flag dest src1 src2 =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let ty = typ_of_atom a1 in
  let c = resolve_lcarry_with ctx lno flag in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TImuls (c, v, a1, a2)]

let parse_mull_at ctx lno destH destL src1 src2 =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let ty = typ_of_atom a1 in
  let vh = resolve_lv_with ctx lno destH (Some ty) in
  let vl = resolve_lv_with ctx lno destL (Some (typ_to_unsigned ty)) in
  [lno, TImull (vh, vl, a1, a2)]

let parse_mulj_at ctx lno dest src1 src2 =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let ty = typ_of_atom a1 in
  let v = resolve_lv_with ctx lno dest (Some (typ_to_double_size ty)) in
  [lno, TImulj (v, a1, a2)]

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
  [lno, TIsplit (vh, vl, a, n)]

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
  [lno, TIspl (vh, vl, a, n)]

let parse_seteq_at ctx lno dest src1 src2 =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  (* If the type of dest is not explicitly specified, use the default type (bit_t) for seteq. *)
  let dest_typ =
    match dest.lvtyphint with
      None -> (Some bit_t)
    | Some ty -> (Some ty) in
  let v = resolve_lv_with ctx lno dest dest_typ in
  [lno, TIseteq (v, a1, a2)]

let parse_setne_at ctx lno dest src1 src2 =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  (* If the type of dest is not explicitly specified, use the default type (bit_t) for setne. *)
  let dest_typ =
    match dest.lvtyphint with
      None -> (Some bit_t)
    | Some ty -> (Some ty) in
  let v = resolve_lv_with ctx lno dest dest_typ in
  [lno, TIsetne (v, a1, a2)]

let parse_uadd_at ctx lno dest src1 src2 =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let ty = typ_to_unsigned (typ_of_atom a1) in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TIadd (v, a1, a2)]

let parse_uadds_at ctx lno flag dest src1 src2 =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let ty = typ_to_unsigned (typ_of_atom a1) in
  let c = resolve_lcarry_with ctx lno flag in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TIadds (c, v, a1, a2)]

let parse_uadc_at ctx lno dest src1 src2 carry =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let y = resolve_atom_with ctx lno carry in
  let ty = typ_to_unsigned (typ_of_atom a1) in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TIadc (v, a1, a2, y)]

let parse_uadcs_at ctx lno flag dest src1 src2 carry =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let y = resolve_atom_with ctx lno carry in
  let ty = typ_to_unsigned (typ_of_atom a1) in
  let c = resolve_lcarry_with ctx lno flag in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TIadcs (c, v, a1, a2, y)]

let parse_usub_at ctx lno dest src1 src2 =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let ty = typ_to_unsigned (typ_of_atom a1) in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TIsub (v, a1, a2)]

let parse_usubc_at ctx lno flag dest src1 src2 =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let ty = typ_to_unsigned (typ_of_atom a1) in
  let c = resolve_lcarry_with ctx lno flag in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TIsubc (c, v, a1, a2)]

let parse_usubb_at ctx lno flag dest src1 src2 =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let ty = typ_to_unsigned (typ_of_atom a1) in
  let c = resolve_lcarry_with ctx lno flag in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TIsubb (c, v, a1, a2)]

let parse_usbc_at ctx lno dest src1 src2 carry =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let y = resolve_atom_with ctx lno carry in
  let ty = typ_to_unsigned (typ_of_atom a1) in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TIsbc (v, a1, a2, y)]

let parse_usbcs_at ctx lno flag dest src1 src2 carry =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let y = resolve_atom_with ctx lno carry in
  let ty = typ_to_unsigned (typ_of_atom a1) in
  let c = resolve_lcarry_with ctx lno flag in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TIsbcs (c, v, a1, a2, y)]

let parse_usbb_at ctx lno dest src1 src2 carry =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let y = resolve_atom_with ctx lno carry in
  let ty = typ_to_unsigned (typ_of_atom a1) in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TIsbb (v, a1, a2, y)]

let parse_usbbs_at ctx lno flag dest src1 src2 carry =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let y = resolve_atom_with ctx lno carry in
  let ty = typ_to_unsigned (typ_of_atom a1) in
  let c = resolve_lcarry_with ctx lno flag in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TIsbbs (c, v, a1, a2, y)]

let parse_umul_at ctx lno dest src1 src2 =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let ty = typ_to_unsigned (typ_of_atom a1) in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TImul (v, a1, a2)]

let parse_umuls_at ctx lno flag dest src1 src2 =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let ty = typ_to_unsigned (typ_of_atom a1) in
  let c = resolve_lcarry_with ctx lno flag in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TImuls (c, v, a1, a2)]

let parse_umull_at ctx lno destH destL src1 src2 =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let ty = typ_to_unsigned (typ_of_atom a1) in
  let vh = resolve_lv_with ctx lno destH (Some ty) in
  let vl = resolve_lv_with ctx lno destL (Some ty) in
  [lno, TImull (vh, vl, a1, a2)]

let parse_umulj_at ctx lno dest src1 src2 =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let ty = typ_to_unsigned (typ_of_atom a1) in
  let v = resolve_lv_with ctx lno dest (Some (typ_to_double_size ty)) in
  [lno, TImulj (v, a1, a2)]

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
  [lno, TIsplit (vh, vl, a, n)]

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
  [lno, TIspl (vh, vl, a, n)]

let parse_sadd_at ctx lno dest src1 src2 =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let ty = typ_to_signed (typ_of_atom a1) in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TIadd (v, a1, a2)]

let parse_sadds_at ctx lno flag dest src1 src2 =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let ty = typ_to_signed (typ_of_atom a1) in
  let c = resolve_lcarry_with ctx lno flag in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TIadds (c, v, a1, a2)]

let parse_sadc_at ctx lno dest src1 src2 carry =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let y = resolve_atom_with ctx lno carry in
  let ty = typ_to_signed (typ_of_atom a1) in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TIadc (v, a1, a2, y)]

let parse_sadcs_at ctx lno flag dest src1 src2 carry =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let y = resolve_atom_with ctx lno carry in
  let ty = typ_to_signed (typ_of_atom a1) in
  let c = resolve_lcarry_with ctx lno flag in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TIadcs (c, v, a1, a2, y)]

let parse_ssub_at ctx lno dest src1 src2 =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let ty = typ_to_signed (typ_of_atom a1) in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TIsub (v, a1, a2)]

let parse_ssubc_at ctx lno flag dest src1 src2 =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let ty = typ_to_signed (typ_of_atom a1) in
  let c = resolve_lcarry_with ctx lno flag in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TIsubc (c, v, a1, a2)]

let parse_ssubb_at ctx lno flag dest src1 src2 =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let ty = typ_to_signed (typ_of_atom a1) in
  let c = resolve_lcarry_with ctx lno flag in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TIsubb (c, v, a1, a2)]

let parse_ssbc_at ctx lno dest src1 src2 carry =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let y = resolve_atom_with ctx lno carry in
  let ty = typ_to_signed (typ_of_atom a1) in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TIsbc (v, a1, a2, y)]

let parse_ssbcs_at ctx lno flag dest src1 src2 carry =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let y = resolve_atom_with ctx lno carry in
  let ty = typ_to_signed (typ_of_atom a1) in
  let c = resolve_lcarry_with ctx lno flag in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TIsbcs (c, v, a1, a2, y)]

let parse_ssbb_at ctx lno dest src1 src2 carry =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let y = resolve_atom_with ctx lno carry in
  let ty = typ_to_signed (typ_of_atom a1) in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TIsbb (v, a1, a2, y)]

let parse_ssbbs_at ctx lno flag dest src1 src2 carry =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let y = resolve_atom_with ctx lno carry in
  let ty = typ_to_signed (typ_of_atom a1) in
  let c = resolve_lcarry_with ctx lno flag in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TIsbbs (c, v, a1, a2, y)]

let parse_smul_at ctx lno dest src1 src2 =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let ty = typ_to_signed (typ_of_atom a1) in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TImul (v, a1, a2)]

let parse_smuls_at ctx lno flag dest src1 src2 =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let ty = typ_to_signed (typ_of_atom a1) in
  let c = resolve_lcarry_with ctx lno flag in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TImuls (c, v, a1, a2)]

let parse_smull_at ctx lno destH destL src1 src2 =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let ty = typ_to_signed (typ_of_atom a1) in
  let vh = resolve_lv_with ctx lno destH (Some ty) in
  let vl = resolve_lv_with ctx lno destL (Some (typ_to_unsigned ty)) in
  [lno, TImull (vh, vl, a1, a2)]

let parse_smulj_at ctx lno dest src1 src2 =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let ty = typ_to_signed (typ_of_atom a1) in
  let v = resolve_lv_with ctx lno dest (Some (typ_to_double_size ty)) in
  [lno, TImulj (v, a1, a2)]

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
  [lno, TIsplit (vh, vl, a, n)]

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
  [lno, TIspl (vh, vl, a, n)]

let parse_and_at ctx lno dest src1 src2 =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let v = resolve_lv_with ctx lno dest None in
  [lno, TIand (v, a1, a2)]

let parse_or_at ctx lno dest src1 src2 =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let v = resolve_lv_with ctx lno dest None in
  [lno, TIor (v, a1, a2)]

let parse_xor_at ctx lno dest src1 src2 =
  let a1 = resolve_atom_with ctx lno src1 in
  let a2 = resolve_atom_with ctx lno src2 in
  let v = resolve_lv_with ctx lno dest None in
  [lno, TIxor (v, a1, a2)]

let parse_not_at ctx lno dest src =
  let a = resolve_atom_with ctx lno src in
  let v = resolve_lv_with ctx lno dest None in
  [lno, TInot (v, a)]

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
  [lno, TIcast (od, v, a)]

let parse_vpc_at ctx lno dest src =
  let a = resolve_atom_with ctx lno src in
  let v = resolve_lv_or_lcarry_with ctx lno dest in
  [lno, TIvpc (v, a)]

let parse_join_at ctx lno dest srcH srcL =
  let ah = resolve_atom_with ctx lno srcH in
  let al = resolve_atom_with ctx lno srcL in
  let ty = typ_map ((+) (size_of_atom al)) (typ_of_atom ah) in
  let v = resolve_lv_with ctx lno dest (Some ty) in
  [lno, TIjoin (v, ah, al)]

let parse_assert_at ctx lno bexp_prove_with_list_token =
  [lno, TIassert (tagged_bexp_prove_with_singleton Options.Std.default_track (bexp_prove_with_list_token ctx))]

let parse_eassert_at ctx lno ebexp_prove_with_list_token =
  [lno, TIassert (tagged_ebexp_prove_with_singleton Options.Std.default_track (ebexp_prove_with_list_token ctx), tagged_rbexp_prove_with_empty ())]

let parse_rassert_at ctx lno rbexp_prove_with_list_token =
  [lno, TIassert (tagged_ebexp_prove_with_empty (), tagged_rbexp_prove_with_singleton Options.Std.default_track (rbexp_prove_with_list_token ctx))]

let parse_assume_at ctx lno bexp_token =
  [lno, TIassume (tagged_bexp_singleton Options.Std.default_track (bexp_token ctx))]

let parse_cut_at ctx lno bexp_prove_with_list_token =
  let bpwss = bexp_prove_with_list_token ctx in
  [lno, TIcut (tagged_bexp_prove_with_singleton Options.Std.default_track bpwss)]

let parse_ecut_at ctx lno ebexp_prove_with_list_token =
  let epwss = ebexp_prove_with_list_token ctx in
  [lno, TIcut (tagged_ebexp_prove_with_singleton Options.Std.default_track epwss, tagged_rbexp_prove_with_empty ())]

let parse_rcut_at ctx lno rbexp_prove_with_list_token =
  let rpwss = rbexp_prove_with_list_token ctx in
  [lno, TIcut (tagged_ebexp_prove_with_empty (), tagged_rbexp_prove_with_singleton Options.Std.default_track rpwss)]

let parse_ghost_at ctx lno gvars_token bexp_token =
  let (sgvars, vgvars) = gvars_token ctx in
  let _ = List.iter (ctx_define_ghost ctx) sgvars in
  let _ = List.iter (fun (vecname, vectyp) -> ctx_define_vec_ghost ctx vecname vectyp) vgvars in
  (* We need to define ghost vector elements here. *)
  let vgelems = List.rev_map (fun (vecname, vectyp) -> vars_of_vec vecname vectyp) vgvars |> List.rev |> tflatten in
  let _ = List.iter (ctx_define_ghost ctx) vgelems in
  let gvars =
    let add_fun = fun res v -> VS.add v res in
    List.fold_left add_fun (List.fold_left add_fun VS.empty sgvars)  vgelems in
  let e = bexp_token ctx in
  let bad_ebexps = List.filter (fun e -> not (eq_ebexp e etrue) && VS.is_empty (VS.inter gvars (vars_ebexp e))) (split_eand (eqn_bexp e)) in
  let bad_rbexps = List.filter (fun e -> not (eq_rbexp e rtrue) && VS.is_empty (VS.inter gvars (vars_rbexp e))) (split_rand (rng_bexp e)) in
  if List.length bad_ebexps > 0 then raise_at_line lno ("The algebraic expression " ^ string_of_ebexp (List.hd bad_ebexps) ^ " is defined without using any ghost variable.")
  else if List.length bad_rbexps > 0 then raise_at_line lno ("The range expression " ^ string_of_rbexp (List.hd bad_rbexps) ^ " is defined without using any ghost variable.")
  else [lno, TIghost (gvars, tagged_bexp_singleton Options.Std.default_track e)]



let parse_tassert_at ctx lno tbexp_prove_with_list_token =
  [lno, TIassert (tbexp_prove_with_list_token ctx)]

let parse_teassert_at ctx lno tebexp_prove_with_list_token =
  [lno, TIassert (tebexp_prove_with_list_token ctx, tagged_rbexp_prove_with_empty ())]

let parse_trassert_at ctx lno trbexp_prove_with_list_token =
  [lno, TIassert (tagged_ebexp_prove_with_empty (), trbexp_prove_with_list_token ctx)]

let parse_tassume_at ctx lno tbexp_token =
  [lno, TIassume (tbexp_token ctx)]

let parse_tcut_at ctx lno tbexp_prove_with_list_token =
  let tb = tbexp_prove_with_list_token ctx in
  [lno, TIcut tb]

let parse_tecut_at ctx lno tebexp_prove_with_list_token =
  let ecuts = tebexp_prove_with_list_token ctx in
  [lno, TIcut (ecuts, tagged_rbexp_prove_with_empty ())]

let parse_trcut_at ctx lno trbexp_prove_with_list_token =
  let rcuts = trbexp_prove_with_list_token ctx in
  [lno, TIcut (tagged_ebexp_prove_with_empty (), rcuts)]

let parse_tghost_at ctx lno gvars_token tbexp_token =
  let (sgvars, vgvars) = gvars_token ctx in
  let _ = List.iter (ctx_define_ghost ctx) sgvars in
  let _ = List.iter (fun (vecname, vectyp) -> ctx_define_vec_ghost ctx vecname vectyp) vgvars in
  (* We need to define ghost vector elements here. *)
  let vgelems = List.rev_map (fun (vecname, vectyp) -> vars_of_vec vecname vectyp) vgvars |> List.rev |> tflatten in
  let _ = List.iter (ctx_define_ghost ctx) vgelems in
  let gvars =
    let add_fun = fun res v -> VS.add v res in
    List.fold_left add_fun (List.fold_left add_fun VS.empty sgvars)  vgelems in
  let te = tbexp_token ctx in
  let e = tagged_bexp_untag te in
  let bad_ebexps = List.filter (fun e -> not (eq_ebexp e etrue) && VS.is_empty (VS.inter gvars (vars_ebexp e))) (split_eand (eqn_bexp e)) in
  let bad_rbexps = List.filter (fun e -> not (eq_rbexp e rtrue) && VS.is_empty (VS.inter gvars (vars_rbexp e))) (split_rand (rng_bexp e)) in
  if List.length bad_ebexps > 0 then raise_at_line lno ("The algebraic expression " ^ string_of_ebexp (List.hd bad_ebexps) ^ " is defined without using any ghost variable.")
  else if List.length bad_rbexps > 0 then raise_at_line lno ("The range expression " ^ string_of_rbexp (List.hd bad_rbexps) ^ " is defined without using any ghost variable.")
  else [lno, TIghost (gvars, te)]

(* Visitors that rename formal parameters to corresponding actual parameters.
   The returned visitor can be used only once. *)
let make_rename_formals_to_actuals_visitor formal_args actual_args =
  let (am, em, rm) = subst_maps_of_list (List.combine formal_args actual_args) in
  let rename_formals_visitor =
    object(*(self)*)
      inherit tnop_visitor
      method! tvvar v = ChangeTo (subst_lval am v)
      method! tvatom a = ChangeTo (subst_atom am a)
      method! tvlval v = ChangeTo (subst_lval am v)
      method! tvgvar v = ChangeTo (subst_lval am v)
      method! tvbexp e = ChangeTo (subst_bexp em rm e)
    end in
  rename_formals_visitor

(* Visitors that rename actual parameters to corresponding ghost variables.
   The returned visitor can be used only once. *)
let make_rename_actuals_to_ghosts_visitor actual_args ghost_vars =
  let (am, _em, _rm) = subst_maps_of_list
                         (List.combine
                            (tmap var_of_atom actual_args)
                            (tmap mkatom_var ghost_vars)) in
  let rename_actuals_visitor =
    object(*(self)*)
      inherit tnop_visitor
      method! tvatom a = ChangeTo (subst_atom am a)
    end in
  rename_actuals_visitor

(* A visitor that adds f_name^"_local_" to variable names with types unchanged *)
let make_rename_local_visitor f_name local_args =
  let rename_var v =
    if VS.mem v local_args
    then mkvar (f_name ^ "_local_" ^ v.vname) v.vtyp
    else v in
  object (* (self) *)
    inherit tnop_visitor
    method! tvvar v = ChangeTo (rename_var v)
    method! tvlval v = ChangeTo (rename_var v)
    method! tvgvar v = ChangeTo (rename_var v)
  end

(* Check if the inlined procedure is the main procedure. *)
let check_inlined_func_name lno f_name =
  if f_name = Options.Std.main_proc_name
  then raise_at_line lno
         (Printf.sprintf
            "Inlining the %s function is not allowed."
            Options.Std.main_proc_name)

(*
  Check if
  - the number of actual parameters and the number of formal parameters are equal, and
  - actual parameters have types compatible with types of the corresponding formal parameters.
  Parameters:
  - lno: line number
  - f_name: procedure name
  - formals: all formal parameters (list)
  - actuals: all actual parameters (list)
 *)
let check_formals_actuals_match lno f_name formals actuals =
    let check_length () =
      if List.length actuals <> List.length formals
      then raise_at_line lno
             (Printf.sprintf
                "Failed to inline the function %s: numbers of arguments mismatch."
                f_name) in
    let check_types () =
      List.iter2
        (fun formal actual ->
          if not (is_type_compatible formal actual)
          then raise_at_line lno
                 (Printf.sprintf
                    "The type of the actual parameter %s is not compatible with the type of the formal parameter %s"
                    (string_of_atom ~typ:true actual)
                    (string_of_var ~typ:true formal))
        ) formals actuals in
    check_length (); check_types()

(*
  Check if all actual parameters are defined.
  - formals: all formal parameters (list)
  - actuals: all actual parameters (list)
  - inputs: all formal input parameters (list, subset of formals)
 *)
let check_undefined_actuals ctx lno formals actuals inputs =
  let undefined =
    List.fold_left2
      (fun undefined formal actual ->
        match actual with
        | Avar v -> if mem_var formal inputs && not (ctx_var_is_defined ctx v)
                    then v::undefined
                    else undefined
        | _ -> undefined
      ) [] formals actuals in
  if List.length undefined > 0
  then raise_at_line lno
         (Printf.sprintf
            "Undefined program variable(s): %s"
            (String.concat ", " (tmap string_of_var undefined)))

(* Actual output parameters must be distinct. *)
let check_distinct_actual_outputs lno actual_outputs =
  List.fold_left
    (fun vs a ->
      match a with
      | Avar v -> if SS.mem v.vname vs
                  then raise_at_line
                         lno
                         (Printf.sprintf
                            "Output actual parameters must be distinct in a call or inlinespec: %s"
                            v.vname)
                  else SS.add v.vname vs
      | Aconst _ -> vs
    ) SS.empty actual_outputs

(* Check if a formal input parameter that is assigned in the procedure body
   appears in the postcondition. *)
let check_updated_formal_inputs lno formal_inputs lvs_program vars_post =
  let bad_vs = VS.inter (VS.inter (VS.of_list formal_inputs) lvs_program) vars_post in
  if VS.cardinal bad_vs > 0
  then raise_at_line lno
         (Printf.sprintf "A formal input parameter used in the postcondition cannot be assigned: %s"
            (VS.elements bad_vs |> tmap string_of_var |> String.concat ", "))

(* Check if a formal input parameter that is assigned in the procedure body
   corresponds to an actual parameter that is a variable *)
let check_inline_assigned_formal_input_actual_variable lno assigned_vars formal_inputs actual_inputs =
  List.iter (
      fun (f, a) ->
      if VS.mem f assigned_vars && not (atom_is_var a)
      then raise_at_line lno
             (Printf.sprintf
                "An actual parameter must be a variable \
                 if the corresponding formal parameter \
                 is assigned in the procedure to be inlined:\
                 formal: %s, actual: %s"
                (string_of_var f)
                (string_of_atom a))
    ) (List.combine formal_inputs actual_inputs)

(* Create a ghost variable for an actual parameter.
   The function will not define the returned variable in the context. *)
let mk_ghost_var_for_actual ctx a =
  let rec ghost_name n =
    let m = "ghost_" ^ n ^ "_" ^ Int.to_string (Random.int 100000) in
    if ctx_name_is_var ctx m || ctx_name_is_ghost ctx m
    then ghost_name n
    else m in
  let mk_ghostvar a =
    match a with
    | Avar v -> mkvar (ghost_name v.vname) (typ_of_var v)
    | Aconst (typ, _) -> mkvar (ghost_name "const") typ in
  mk_ghostvar a

let mk_ghost_instr_for_actuals ctx actuals =
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
  let ghost_actuals = tmap (mk_ghost_var_for_actual ctx) actuals in
  let ghost_bexp =
    (List.rev_map2 (fun avar gvar -> mk_eeq avar gvar)
       actuals ghost_actuals |> List.rev |> eands,
     List.rev_map2 (fun avar gvar -> mk_req avar gvar)
       actuals ghost_actuals |> List.rev |> rands) in
  let ghost_instr =
    TIghost (VS.of_list ghost_actuals, tagged_bexp_singleton Options.Std.all_track ghost_bexp) in
  (ghost_actuals, ghost_instr)

(**
 * Call is a real function call.
 * A call statement is replaced with pre-/post-conditions.
 * Below is a list of requirements for a call.
 * - main cannot be called
 * - size of formal parameters = size of actual parameters
 * - types of formal parameters are compatible with types of the
 *   corresponding actual parameters
 * - actual output parameters must be variables (checked in
 *   actuals_token->parse_actual_atom->resolve_output_atom_with)
 * - actual output parameters must be distinct
 * - a formal input parameter cannot be assigned in the procedure
 *   body if the parameter appears in the postcondition
 * - only formal parameters can be used in the postcondition (checked
 *   in parsing the procedure definition)
 * - an actual parameter can be used as input and output, and in this
 *   case, the input in the postcondition will be replaced by a
 *   ghost variable, which captures the initial value of the actual
 *   parameter (to allow this, the input parameter cannot be assigned
 *   in the procedure)
 * Renaming local variables has no effect.
 *)
let parse_call_at ctx lno fname_token actuals_token =
  (* Parse the function name and find the function definition *)
  let f_name, f_def =
    let name = fname_token in
    let def =
      try SM.find name ctx.cfuns
      with Not_found ->
        raise_at_line lno (Printf.sprintf "Inline an undefined function '%s'." name) in
    name, def in
  let _ = check_inlined_func_name lno f_name in
  (* Collect formal and actual parameters *)
  let formal_inputs, formal_args = f_def.fargs, f_def.fargs@@f_def.fouts in
  let actual_args = actuals_token ctx (tmap type_of_var_kind f_def.farg_kinds,
                                       tmap type_of_var_kind f_def.fout_kinds) in
  let _ = check_formals_actuals_match lno f_name formal_args actual_args in
  let _ = check_undefined_actuals ctx lno formal_args actual_args formal_inputs in
  let actual_inputs, actual_outputs = Utils.Std.partition_at actual_args (List.length formal_inputs) in
  let _ = check_distinct_actual_outputs lno actual_outputs in
  let _ = check_updated_formal_inputs
            lno formal_inputs (lvs_lined_tagged_program f_def.fbody)
            (vars_tagged_bexp_prove_with f_def.fpost) in
  let actual_input_vars = List.filter atom_is_var actual_inputs in
  let actual_output_vars = List.filter atom_is_var actual_outputs in
  let actual_inouts = (* with types from inputs *)
    let outset = VS.of_list (tmap var_of_atom actual_output_vars) in
    List.filter (fun o -> VS.mem (var_of_atom o) outset) actual_input_vars in
  (* Ghost variables *)
  let (ghost_inouts, lined_ghost_instr) =
    if List.length actual_inouts = 0
    then ([], [])
    else let (ghost_vars, ghost_instr) = mk_ghost_instr_for_actuals ctx actual_inouts in
         (ghost_vars, [(lno, ghost_instr)]) in
  (* Assert precondition (involving only input parameters) *)
  let assert_instr =
    let (_, em, rm) = subst_maps_of_list (List.combine formal_inputs actual_inputs) in
    let to_prove_with (te, tr) = (tagged_ebexp_prove_with_of_tagged_ebexp te,
                                   tagged_rbexp_prove_with_of_tagged_rbexp tr) in
    TIassert (subst_tagged_bexp_prove_with em rm (to_prove_with f_def.fpre)) in
  (* Make nondeterministic assignments to actual outputs *)
  let nondet_instrs =
    List.fold_left (fun res ovar -> (lno, TInondet ovar)::res)
      [] (List.rev_map var_of_atom actual_outputs) in
  (* Assume postcondition (involving input and output parameters *)
  let assume_instr =
    (* change actual_inputs in actual_inouts to ghost_inouts *)
    let actual_args' =
      let actual_inputs' =
        if List.length actual_inouts = 0
        then actual_inputs
        else let rename_visitor = make_rename_actuals_to_ghosts_visitor actual_inouts ghost_inouts in
             tmap (tvisit_atom rename_visitor) actual_inputs in
      actual_inputs' @@ actual_outputs in
    let (_, em, rm) = subst_maps_of_list (List.combine formal_args actual_args') in
    let from_prove_with (tepwss, trpwss) = (tagged_ebexp_of_tagged_ebexp_prove_with tepwss,
                                             tagged_rbexp_of_tagged_rbexp_prove_with trpwss) in
    TIassume (subst_tagged_bexp em rm (from_prove_with f_def.fpost)) in
  (* Add actual output parameters to the parsing context *)
  let _ = List.iter (ctx_define_var ctx) (tmap var_of_atom actual_outputs) in
  let _ = List.iter (ctx_define_ghost ctx) ghost_inouts in
  (* Final result *)
  lined_ghost_instr @@ [(lno, assert_instr)] @@ nondet_instrs @@ [(lno, assume_instr)]

(**
 * Inlinespec is semantically identical to inline but is replaced
 * with pre-/post-conditions rather than procedure body.
 * Below is a list of requirements for an inlinespec.
 * - main cannot be inlined
 * - size of formal parameters = size of actual parameters
 * - types of formal parameters are compatible with types of the
 *   corresponding actual parameters
 * - if a formal parameter is assigned in the procedure, the corresponding
 *   actual parameter must be a variable
 * - actual output parameters must be variables (checked in
 *   actuals_token->parse_actual_atom->resolve_output_atom_with)
 * - only formal parameters can be used in the postcondition (checked
 *   in parsing the procedure definition)
 * - an actual parameter can be used as input and output, and in this
 *   case, the input in the postcondition will be replaced by a
 *   ghost variable, which captures the initial value of the actual
 *   parameter (to allow this, such input parameter cannot be assigned
 *   in the procedure)
 * Notes:
 * - nondet is applied to the union of
 *   + actual output parameters, and
 *   + variables assigned in the procedure body
 *)
let parse_inlinespec_at ctx lno fname_token actuals_token =
  (* Parse the function name and find the function definition *)
  let f_name, f_def =
    let name = fname_token in
    let def =
      try SM.find name ctx.cfuns
      with Not_found ->
        raise_at_line lno (Printf.sprintf "Inline an undefined function '%s'." name) in
    name, def in
  let _ = check_inlined_func_name lno f_name in
  (* Collect formal and actual parameters *)
  let formal_inputs, formal_args = f_def.fargs, f_def.fargs@@f_def.fouts in
  let actual_args = actuals_token ctx (tmap type_of_var_kind f_def.farg_kinds,
                                       tmap type_of_var_kind f_def.fout_kinds) in
  let _ = check_formals_actuals_match lno f_name formal_args actual_args in
  let _ = check_undefined_actuals ctx lno formal_args actual_args formal_inputs in
  let actual_inputs, actual_outputs = Utils.Std.partition_at actual_args (List.length formal_inputs) in
  let _ = check_distinct_actual_outputs lno actual_outputs in
  let actual_input_vars = List.filter atom_is_var actual_inputs in
  let actual_output_vars = List.filter atom_is_var actual_outputs in
  let actual_inouts = (* with types from inputs *)
    let outset = VS.of_list (tmap var_of_atom actual_output_vars) in
    List.filter (fun o -> VS.mem (var_of_atom o) outset) actual_input_vars in
  let formal_inputs_also_outputs =
    List.combine formal_inputs actual_inputs
    |> List.filter (fun (_, a) -> List.mem a actual_inouts)
    |> List.split
    |> fst in
  let _ = check_updated_formal_inputs
            lno formal_inputs_also_outputs (lvs_lined_tagged_program f_def.fbody)
            (vars_tagged_bexp_prove_with f_def.fpost) in
  (* Ghost variables *)
  let (ghost_inouts, lined_ghost_instr) =
    if List.length actual_inouts = 0
    then ([], [])
    else let (ghost_vars, ghost_instr) = mk_ghost_instr_for_actuals ctx actual_inouts in
         (ghost_vars, [(lno, ghost_instr)]) in
  (* Collect variables assigned in the procedure body, with formal variables substituted with actual variables *)
  let assigned_vars =
    let lvs = lvs_lined_tagged_program f_def.fbody in
    let _ = check_inline_assigned_formal_input_actual_variable lno lvs formal_inputs actual_inputs in
    let rename_local_vars vars =
      if !Options.Std.rename_local
      then let local_vars = VS.diff vars (VS.of_list formal_args) in
           let rename_local_visitor = make_rename_local_visitor f_name local_vars in
           VS.map (tvisit_var rename_local_visitor) vars
      else vars in
    let rename_formals vars =
      let rename_formals_visitor = make_rename_formals_to_actuals_visitor formal_args actual_args in
      VS.map (tvisit_var rename_formals_visitor) vars in
    lvs |> rename_local_vars |> rename_formals in
  (* Assert precondition (involving only input parameters) *)
  let assert_instr =
    let (_, em, rm) = subst_maps_of_list (List.combine formal_inputs actual_inputs) in
    let to_prove_with (te, tr) = (tagged_ebexp_prove_with_of_tagged_ebexp te,
                                   tagged_rbexp_prove_with_of_tagged_rbexp tr) in
    TIassert (subst_tagged_bexp_prove_with em rm (to_prove_with f_def.fpre)) in
  (* Make nondeterministic assignments to the union of actual outputs and assigned variables *)
  let nondet_instrs =
    let actual_output_vars_rev = List.rev_map var_of_atom actual_outputs in
    let assigned_but_not_output = VS.elements (VS.diff assigned_vars (VS.of_list actual_output_vars_rev)) in
    List.fold_left (fun res ovar -> (lno, TInondet ovar)::res)
      [] (List.rev_append assigned_but_not_output actual_output_vars_rev) in
  (* Assume postcondition (involving input and output parameters *)
  let assume_instr =
    let actual_args' =
      let actual_inputs' =
        if List.length actual_inouts = 0
        then actual_inputs
        else let rename_visitor = make_rename_actuals_to_ghosts_visitor actual_inouts ghost_inouts in
             tmap (tvisit_atom rename_visitor) actual_inputs in
      actual_inputs' @@ actual_outputs in
    let (_, em, rm) = subst_maps_of_list (List.combine formal_args actual_args') in
    let from_prove_with (tepwss, trpwss) = (tagged_ebexp_of_tagged_ebexp_prove_with tepwss,
                                             tagged_rbexp_of_tagged_rbexp_prove_with trpwss) in
    TIassume (subst_tagged_bexp em rm (from_prove_with f_def.fpost)) in
  (* Add actual output parameters to the parsing context *)
  let _ = List.iter (ctx_define_var ctx) (tmap var_of_atom actual_outputs) in
  (* Final result *)
  lined_ghost_instr @@ [(lno, assert_instr)] @@ nondet_instrs @@ [(lno, assume_instr)]

(**
 * Inline procedure body by replacing formal parameters with actual parameters.
 * Ignore the pre- and post-conditions of the inlined procedure.
 * Below is a list of requirements for an inline.
 * - main cannot be inlined
 * - size of formal parameters = size of actual parameters
 * - types of formal parameters are compatible with types of the corresponding
 *   actual parameters
 * - actual output parameters must be variables (checked in
 *   actuals_token->parse_actual_atom->resolve_output_atom_with)
 * - only formal parameters can be used in the postcondition (checked
 *   in parsing the procedure definition)
*)
let parse_inline_at ctx lno fname_token actuals_token =
  (* Parse the function name and find the function definition *)
  let f_name, f_def =
    let name = fname_token in
    let def =
      try SM.find name ctx.cfuns
      with Not_found ->
        raise_at_line lno (Printf.sprintf "Inline an undefined function '%s'." name) in
    name, def in
  let _ = check_inlined_func_name lno f_name in
  (* Collect formal and actual parameters *)
  let formal_inputs, formal_args = f_def.fargs, f_def.fargs@@f_def.fouts in
  let actual_args = actuals_token ctx (tmap type_of_var_kind f_def.farg_kinds,
                                       tmap type_of_var_kind f_def.fout_kinds) in
  let _ = check_formals_actuals_match lno f_name formal_args actual_args in
  let _ = check_undefined_actuals ctx lno formal_args actual_args formal_inputs in
  let actual_inputs, _ = Utils.Std.partition_at actual_args (List.length formal_inputs) in
  let lvs = lvs_lined_tagged_program f_def.fbody in
  let _ = check_inline_assigned_formal_input_actual_variable lno lvs formal_inputs actual_inputs in
  (* Rename formal parameters and local parameters. *)
  let f_body =
    let renamed_local_vars body =
      if !Options.Std.rename_local
      then let local_vars = VS.diff (vars_lined_tagged_program body) (VS.of_list formal_args) in
           let rename_local_visitor = make_rename_local_visitor f_name local_vars in
           tvisit_lined_program rename_local_visitor body
      else body in
    let rename_formals body =
      let rename_formals_visitor = make_rename_formals_to_actuals_visitor formal_args actual_args in
      tvisit_lined_program rename_formals_visitor body in
    f_def.fbody |> renamed_local_vars |> rename_formals in
  (* Make inlined variables defined. Collect variables again from the function body. *)
  let _ =
    let p = tagged_program_untag (lined_tagged_program_unlined f_body) in
    let _ = VS.iter (ctx_define_var ctx) (lvs_program ~upd:true p) in
    let _ = VS.iter (ctx_define_carry ctx) (lcarries_program ~upd:true p) in
    let _ = VS.iter (ctx_define_ghost ctx) (gvs_program ~upd:true p) in
    () in
  f_body

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
                                let instr = (lno, TImov (ctx_find_var ctx tmp_name, Avar (mkvar orig.atmname relmtyp))) in
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

let unpack_vinstr_11 ?(fix_dst_ty=true) mapper ctx lno dest_tok src_tok =
  let (relmtyp, src) = resolve_vec_with ctx lno src_tok in
  let src_vectyp = (relmtyp, List.length src) in
  let (_, dest_names) = resolve_lv_vec_with ctx lno dest_tok
                          (if fix_dst_ty then Some src_vectyp else None) in

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

let unpack_vinstr_12 ?(fix_dst_ty=true) mapper ctx lno
      dest_tok src1_tok src2_tok =
  let vatm1 = resolve_vec_with ctx lno src1_tok in
  let vatm2 = resolve_vec_with ctx lno src2_tok in
  let (src_vectyp, src1, src2) = unify_vec_srcs_at lno vatm1 vatm2 in
  let (relmtyp, srclen) = src_vectyp in

  let (dest_typ, dest_names) =
    resolve_lv_vec_with ctx lno dest_tok
      (if fix_dst_ty then Some src_vectyp else None) in
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
let unpack_vinstr_1n2_helper mapper ctx lno dest_typ dest_names src1 src2 relmtyp =
  let _ = if (List.length dest_names) <> List.length src1 then
            raise_at_line lno "Destination vector should be as long as the source vector."
          else () in
  let rwpairs = List.map2 (fun d (s1, s2) -> ([d], (s1, s2)))
                  dest_names (List.combine src1 src2) in
  let (aliasing_instrs, tmp_names, src_safe) =
    gen_tmp_movs_2 ctx lno rwpairs relmtyp in
  let map_func (lvname, (rv1, rv2)) =
    mapper ctx lno {lvname; lvtyphint=Some dest_typ} rv1 rv2 in
  let iss = List.rev (List.rev_map map_func
                        (List.combine dest_names src_safe)) in
  let _ = ctx.cvars <- remove_keys_from_map tmp_names ctx.cvars in
  List.concat (aliasing_instrs::iss)

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
  unpack_vinstr_1n2_helper mapper ctx lno dest_typ dest_names src1 src2 relmtyp

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

let unpack_vinstr_21ns_helper mapper ctx lno dest1_names dest2_names src relmtyp nums =
  let _ = if ((List.length dest1_names) <> (List.length src) ||
                (List.length dest2_names) <> (List.length src)) then
            raise_at_line lno "Destination vector should be as long as the source vector." in
  let _ = if List.length src <> List.length nums then
            raise_at_line lno "Lengths of source vectors are inconsistent." in
  let rwpairs = List.map2 (fun (d1, d2) s -> ([d1; d2], s)) (List.combine dest1_names dest2_names) src in
  let (aliasing_instrs, tmp_names, src_safe) = gen_tmp_movs ctx lno rwpairs relmtyp in

  let map_func ((lvname1, lvname2), (rv, num)) = (
      let lvtoken1 = {lvname=lvname1; lvtyphint=None} in
      let lvtoken2 = {lvname=lvname2; lvtyphint=None} in
      mapper ctx lno lvtoken1 lvtoken2 rv num
    ) in
  let dest_names = List.combine dest1_names dest2_names in
  let src_ans = List.combine src_safe nums in
  let iss = List.rev (List.rev_map map_func (List.combine dest_names src_ans)) in
  let _ = ctx.cvars <- remove_keys_from_map tmp_names ctx.cvars in
  List.concat (aliasing_instrs::iss)

let unpack_vinstr_21ns mapper ctx lno dest1_tok dest2_tok src_tok nums =
  let (relmtyp, src) = resolve_vec_with ctx lno src_tok in
  let dest1_vectyp = (relmtyp, List.length src) in
  let dest2_vectyp = (typ_to_unsigned relmtyp, List.length src) in
  let (_, dest1_names) = resolve_lv_vec_with ctx lno dest1_tok (Some dest1_vectyp) in
  let (_, dest2_names) = resolve_lv_vec_with ctx lno dest2_tok (Some dest2_vectyp) in
  unpack_vinstr_21ns_helper mapper ctx lno dest1_names dest2_names src relmtyp nums

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
    (typ_to_size (typ_to_unsigned relmtyp) n, List.length src) in
  let (_, dest1_names) = resolve_lv_vec_with ctx lno dest1_tok (Some dest1_vectyp) in
  let (_, dest2_names) = resolve_lv_vec_with ctx lno dest2_tok (Some dest2_vectyp) in
  unpack_vinstr_21n_helper mapper ctx lno dest1_names dest2_names src relmtyp num

let unpack_vinstr_join mapper ctx lno dest_tok src1_tok src2_tok =
  let (relmtyp1, src1) = resolve_vec_with ctx lno src1_tok in
  let (relmtyp2, src2) = resolve_vec_with ctx lno src2_tok in
  let srclen1 = List.length src1 in
  let srcsize1 = size_of_typ relmtyp1 in
  let dest_vectyp =
    if srclen1 <> List.length src2 then
      raise_at_line lno (Printf.sprintf "Two sources should have the same length. One is %d while the other is %d." srclen1 (List.length src2))
    else if srcsize1 <> size_of_typ relmtyp2 then
      raise_at_line lno (Printf.sprintf "Two sources should have the same element type size. One is %d while the other is %d." srcsize1 (size_of_typ relmtyp2))
    else if typ_is_unsigned relmtyp2 then
      (typ_to_size relmtyp1 (2*srcsize1), srclen1)
    else raise_at_line lno (Printf.sprintf "The second source should be unsigned.") in
  let (_, dest_names) =
    resolve_lv_vec_with ctx lno dest_tok (Some dest_vectyp) in
  unpack_vinstr_1n2_helper mapper ctx lno (fst dest_vectyp) dest_names src1 src2 relmtyp2

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
  let vcast_suffix = Int.to_string (Random.int 10000) in

  let partition m xs =
    List.fold_left (fun (r, n) x ->
        if n mod m = 0 then ([x]::r, succ n)
        else ((x::(List.hd r))::(List.tl r), succ n)) ([], 0) xs in

  let cast_vars_to_unsigned typ src =
    let mk_cast_var i =
      { lvname = "vcast_" ^ (string_of_int i) ^ "_" ^ vcast_suffix;
        lvtyphint = Some (typ_to_unsigned typ) } in
    let rev_unsigned_cast_instrs, rev_cast_vars, _ =
      List.fold_left (fun (r, cvs, i) av ->
          let lv_cv = mk_cast_var i in
          let cast = List.hd (parse_cast_at ctx lno None lv_cv av) in
          let cv = ctx_find_var ctx lv_cv.lvname in
          (cast::r, cv::cvs, succ i))
        ([], [], 0) src in
    (rev_unsigned_cast_instrs, rev_cast_vars) in

  let rev_join_instrs typ cast_vars =
    match cast_vars with
    | cv1::cv2::cv_others ->
       let lv_jvar = { lvname = "vjoin_" ^ vcast_suffix;
                       lvtyphint = Some (uint_t ((size_of_typ typ)*2)) } in
       let acv1 = `AVAR { atmname = cv1.vname; atmtyphint = Some cv1.vtyp } in
       let acv2 = `AVAR { atmname = cv2.vname; atmtyphint = Some cv2.vtyp } in
       let first = parse_join_at ctx lno lv_jvar acv2 acv1 in
       let jvar = ctx_find_var ctx lv_jvar.lvname in
       let jvar', rev_joins = 
         List.fold_left (fun (jvar, r) cv ->
             let lv_jvar' =
               { lvname = jvar.vname;
                 lvtyphint = Some (typ_map ((+) (size_of_typ typ))
                                     (typ_of_var jvar)) } in
             let ajvar = `AVAR { atmname = jvar.vname;
                                 atmtyphint = Some jvar.vtyp } in
             let acv =
               `AVAR { atmname = cv.vname; atmtyphint = Some cv.vtyp } in
             let join = List.hd (parse_join_at ctx lno lv_jvar' acv ajvar) in
             let jvar' = ctx_find_var ctx lv_jvar'.lvname in
             (jvar', join::r))
           (jvar, first)
           cv_others in
       (jvar', rev_joins)
    | [cv] ->
       let lv_jvar = { lvname = "vjoin_" ^ vcast_suffix;
                       lvtyphint = Some (uint_t (size_of_typ typ)) } in
       let acv = `AVAR { atmname = cv.vname;
                         atmtyphint = Some cv.vtyp } in
       let join = parse_imov_at ctx lno lv_jvar acv in
       let jvar = ctx_find_var ctx lv_jvar.lvname in
       (jvar, join)
    | [] -> assert false (* empty vector variable? *) in

  let rev_spl_instrs typ jvar names =
    let unsigned_typ = typ_to_unsigned typ in
    let typ_size = size_of_typ typ in
    let typ_size_z = Z.of_int typ_size in
    let rec spl_helper names jvar rev_ret =
      match names with
      | [name] ->
         let lv_svar = { lvname = name;
                         lvtyphint = Some unsigned_typ } in
         let ajvar = `AVAR { atmname = jvar.vname;
                             atmtyphint = Some jvar.vtyp } in
         let mov = List.hd (parse_imov_at ctx lno lv_svar ajvar) in
         mov::rev_ret
      | [name1; name2] ->
         let lv_svar1 = { lvname = name1;
                          lvtyphint = Some unsigned_typ } in
         let lv_svar2 = { lvname = name2;
                          lvtyphint = Some unsigned_typ } in
         let ajvar = `AVAR { atmname = jvar.vname;
                             atmtyphint = Some jvar.vtyp } in
         let spl = List.hd (parse_spl_at ctx lno lv_svar2 lv_svar1 ajvar
                              (fun _ -> typ_size_z)) in
         spl::rev_ret
      | name::names ->
         let lv_jvar' = { lvname = jvar.vname;
                          lvtyphint = Some (typ_map (fun n -> n - typ_size)
                                            jvar.vtyp) } in
         let lv_svar = { lvname = name;
                         lvtyphint = Some unsigned_typ } in
         let ajvar = `AVAR { atmname = jvar.vname;
                             atmtyphint = Some jvar.vtyp } in
         let spl = List.hd (parse_spl_at ctx lno lv_jvar' lv_svar ajvar
                              (fun _ -> typ_size_z)) in
         let jvar' = ctx_find_var ctx lv_jvar'.lvname in
         spl_helper names jvar' (spl::rev_ret)
      | [] -> assert false (* empty names *) in
    spl_helper names jvar [] in

  let final_cast_instrs typ names =
    let unsigned_typ = typ_to_unsigned typ in
    List.rev (List.fold_left (fun r n ->
                  let d = { lvname = n; lvtyphint = Some typ } in
                  let s = `AVAR { atmname = n;
                                  atmtyphint = (Some unsigned_typ) } in
                  let cast = List.hd (parse_cast_at ctx lno None d s) in
                  cast::r)
                [] names) in
  
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
    if size_of_typ relmtyp mod (size_of_typ tar_typ) = 0 then
      let rev_unsigned_casts, rev_cast_vars =
        cast_vars_to_unsigned relmtyp src in
      let rev_dest_namess, _ =
        partition (size_of_typ relmtyp / size_of_typ tar_typ) dest_names in
      let dest_namess =
        rev_dest_namess |> List.rev_map List.rev in
      let rev_spls =
        List.rev_map2 (fun cvar names -> rev_spl_instrs tar_typ cvar names)
          (List.rev rev_cast_vars) dest_namess
        |> List.flatten in
      let final_casts = final_cast_instrs tar_typ dest_names in
      List.rev_append rev_unsigned_casts
        (List.rev_append rev_spls
           final_casts)
    else if size_of_typ tar_typ mod (size_of_typ relmtyp) = 0 then
      let rev_unsigned_casts, rev_cast_vars =
        cast_vars_to_unsigned relmtyp src in
      let cast_varss, _ =
        partition (size_of_typ tar_typ / size_of_typ relmtyp) rev_cast_vars in
      let jvars, rev_joinss =
        cast_varss
        |> List.rev_map (fun cast_vars -> rev_join_instrs relmtyp cast_vars)
        |> List.split |> fun (a, b) -> a, b in
      let rev_spls =
        List.rev_map2 (fun jvar name -> rev_spl_instrs tar_typ jvar [name])
          jvars dest_names
        |> List.flatten in
      let final_casts = final_cast_instrs tar_typ dest_names in
      List.rev_append rev_unsigned_casts
        (List.rev_map2 List.cons rev_spls rev_joinss
         |> List.rev_map2 List.cons final_casts
         |> List.map List.rev
         |> List.rev
         |> List.flatten)
    else let rev_unsigned_casts, rev_cast_vars =
           cast_vars_to_unsigned relmtyp src in
         let jvar, rev_joins =
           rev_join_instrs relmtyp (List.rev rev_cast_vars) in
         let rev_spls = rev_spl_instrs tar_typ jvar dest_names in
         let final_casts = final_cast_instrs tar_typ dest_names in
         List.rev_append rev_unsigned_casts
           (List.rev_append rev_joins
              (List.rev_append rev_spls
                 final_casts))
  else
    raise_at_line lno "Destination vector should be as long as the source vector."

let parse_vvpc_at ctx lno dest_tok src_tok =
  let (relmtyp, src) = resolve_vec_with ctx lno src_tok in
  let (tar_typ, dest_names) = resolve_lv_vec_with ctx lno dest_tok None in

  let _ = if (List.length dest_names) <> (List.length src) then
            raise_at_line lno "Destination vector should be as long as the source vector."
          else () in

  let rwpairs = List.map2 (fun d s -> ([d], s)) dest_names src in
  let (aliasing_instrs, tmp_names, src_safe) = gen_tmp_movs ctx lno rwpairs relmtyp in

  let map_func (lvname, rv) = (
      let lvtoken = {lvname; lvtyphint=Some tar_typ} in
      parse_vpc_at ctx lno lvtoken rv
    ) in
  let iss = List.rev (List.rev_map map_func (List.combine dest_names src_safe)) in
  (* FIXME: if we are not writing phony variables to vm, it fails when reading a vector. *)
  (* Clean up temp. names so that they are invisible to latter parts of the source *)
  let _ = ctx.cvars <- remove_keys_from_map tmp_names ctx.cvars in
  List.concat (aliasing_instrs::iss)


let parse_vbroadcast_at ctx lno dest_tok num src_tok =
  let n = num ctx in
  (* type check is done when unpacking, so relmtyp is not needed here *)
  let (_, src) = resolve_vec_with ctx lno src_tok in
  let len = List.length src in
  let src_padded = `AVLIT (List.init (len * Z.to_int n) (fun i -> List.nth src (i mod len))) in
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
  | `VSHL (dest, src, num) ->
     unpack_vinstr_12 parse_ishl_at ctx lno dest src num
  | `SHLS (`LVPLAIN lost, `LVPLAIN dest, src, num) ->
     parse_ishls_at ctx lno lost dest src num
  | `VSHLS (lost, dest, src, nums) ->
     unpack_vinstr_21ns parse_ishls_at ctx lno lost dest src nums
  | `SHR (`LVPLAIN dest, src, num) ->
     parse_ishr_at ctx lno dest src num
  | `VSHR (dest, src, num) ->
     unpack_vinstr_12 parse_ishr_at ctx lno dest src num
  | `SHRS (`LVPLAIN dest, `LVPLAIN lost, src, num) ->
     parse_ishrs_at ctx lno dest lost src num
  | `VSHRS (dest, lost, src, nums) ->
     unpack_vinstr_21ns parse_ishrs_at ctx lno dest lost src nums
  | `SAR (`LVPLAIN dest, src, num) ->
     parse_isar_at ctx lno dest src num
  | `VSAR (dest, src, num) ->
     unpack_vinstr_12 parse_isar_at ctx lno dest src num
  | `SARS (`LVPLAIN dest, `LVPLAIN lost, src, num) ->
     parse_isars_at ctx lno dest lost src num
  | `VSARS (dest, lost, src, nums) ->
     unpack_vinstr_21ns parse_isars_at ctx lno dest lost src nums
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
  | `VROL (dest, src, num) ->
     unpack_vinstr_12 parse_rol_at ctx lno dest src num
  | `ROR (`LVPLAIN dest, src, num) ->
     parse_ror_at ctx lno dest src num
  | `VROR (dest, src, num) ->
     unpack_vinstr_12 parse_ror_at ctx lno dest src num
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
     unpack_vinstr_12 ~fix_dst_ty:false parse_and_at ctx lno dest src1 src2
  | `OR (`LVPLAIN dest, src1, src2) ->
     parse_or_at ctx lno dest src1 src2
  | `VOR (dest, src1, src2) ->
     unpack_vinstr_12 ~fix_dst_ty:false parse_or_at ctx lno dest src1 src2
  | `XOR (`LVPLAIN dest, src1, src2) ->
     parse_xor_at ctx lno dest src1 src2
  | `VXOR (dest, src1, src2) ->
     unpack_vinstr_12 ~fix_dst_ty:false parse_xor_at ctx lno dest src1 src2
  | `NOT (`LVPLAIN dest, src) ->
     parse_not_at ctx lno dest src
  | `VNOT (dest, src) ->
     unpack_vinstr_11 ~fix_dst_ty:false parse_not_at ctx lno dest src
  | `VJOIN (dest, src1, src2) ->
     unpack_vinstr_join parse_join_at ctx lno dest src1 src2
  | `CAST (optlv, `LVPLAIN dest, src) ->
     parse_cast_at ctx lno optlv dest src
  | `VCAST (optlv, dest, src) -> (
    match optlv with
    | Some _ -> raise_at_line lno "Internal error: optlv should be None in vcast."
    | None -> parse_vcast_at ctx lno dest src)
  | `VPC (`LVPLAIN dest, src) ->
     parse_vpc_at ctx lno dest src
  | `VVPC (dest, src) ->
     parse_vvpc_at ctx lno dest src
  | `JOIN (`LVPLAIN dest, srcH, srcL) ->
     parse_join_at ctx lno dest srcH srcL
  | `ASSERT bexp_prove_with_list ->
     parse_assert_at ctx lno bexp_prove_with_list
  | `TASSERT bexp_prove_with_list ->
     parse_tassert_at ctx lno bexp_prove_with_list
  | `EASSERT ebexp_prove_with_list ->
     parse_eassert_at ctx lno ebexp_prove_with_list
  | `TEASSERT ebexp_prove_with_list ->
     parse_teassert_at ctx lno ebexp_prove_with_list
  | `RASSERT rbexp_prove_with_list ->
     parse_rassert_at ctx lno rbexp_prove_with_list
  | `TRASSERT rbexp_prove_with_list ->
     parse_trassert_at ctx lno rbexp_prove_with_list
  | `ASSUME bexp ->
     parse_assume_at ctx lno bexp
  | `TASSUME bexp ->
     parse_tassume_at ctx lno bexp
  | `CUT bexp_prove_with_list ->
     parse_cut_at ctx lno bexp_prove_with_list
  | `TCUT bexp_prove_with_list ->
     parse_tcut_at ctx lno bexp_prove_with_list
  | `ECUT ebexp_prove_with_list ->
     parse_ecut_at ctx lno ebexp_prove_with_list
  | `TECUT ebexp_prove_with_list ->
     parse_tecut_at ctx lno ebexp_prove_with_list
  | `RCUT rbexp_prove_with_list ->
     parse_rcut_at ctx lno rbexp_prove_with_list
  | `TRCUT rbexp_prove_with_list ->
     parse_trcut_at ctx lno rbexp_prove_with_list
  | `GHOST (gvars, bexp) ->
     parse_ghost_at ctx lno gvars bexp
  | `TGHOST (gvars, bexp) ->
     parse_tghost_at ctx lno gvars bexp
  | `CALL (id, actuals) ->
     parse_call_at ctx lno id actuals
  | `INLINESPEC (id, actuals) ->
     parse_inlinespec_at ctx lno id actuals
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

let parse_ebexp_cmp _lno eop e0_tok e1_tok =
  fun ctx -> Ecmp (eop, e0_tok ctx, e1_tok ctx)

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

let parse_ebexp_vcmp lno op ve0_tok ve1_tok =
  fun ctx ->
  let es0 = ve0_tok ctx in
  let es1 = ve1_tok ctx in
  let _ = check_vec_sizes2 lno es0 es1 in
  List.rev_map2 (fun e0 e1 -> Ecmp (op, e0, e1)) es0 es1 |> List.rev |> eands

let parse_eexp_vec_elem lno ve_tok zi =
  fun ctx ->
  let es = ve_tok ctx in
  let len = List.length es in
  let i = Z.to_int zi in
  if len <= i
  then raise_at_line lno ("Index is larger than " ^ (string_of_int (len-1)))
  else List.nth es i

let parse_eexp_defined_var lno v_tok =
  fun ctx ->
  eexp_of_atom (resolve_var_with ~chktyp:false ctx lno v_tok)

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

let parse_eexp_as_constant lno e_tok =
  fun ctx ->
  let e = e_tok ctx in
  try
    eval_eexp_const e
  with EvaluationException e ->
    raise_at_line lno e

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

let parse_veexp_polyv lno ps_tok ves_tok =
  fun ctx ->
  let ps = ps_tok ctx in
  let ess = ves_tok ctx in
  let _ = check_vec_sizes lno (ps::ess) in
  List.rev (List.rev_map2 poly ps (transpose_lists ess))

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
  rexp_of_atom (resolve_var_with ctx lno v_tok)

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
let parse_rexp_udiv = parse_rbinop rudiv
let parse_rexp_sdiv = parse_rbinop rsdiv

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
let parse_vrexp_udiv = lift_rbinop_vec rudiv
let parse_vrexp_sdiv = lift_rbinop_vec rsdiv

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

let parse_actual_atom lno atom_tok =
  fun ctx tys ->
  match tys with
  | (tyk::argtys, outtys) ->
     let formal_typ =
       match tyk with
       | ScalarType t -> t
       | VectorType _ -> raise_at_line lno ("An actual scalar parameter is passed while the corresponding formal parameter is a vector variable.") in
     let atom = resolve_atom_with ctx lno ~typ:formal_typ atom_tok in
     ((argtys, outtys), [atom])
  | ([], tyk::outtys) ->
     let formal_typ =
       match tyk with
       | ScalarType t -> t
       | VectorType _ -> raise_at_line lno ("An actual scalar parameter is passed while the corresponding formal parameter is a vector variable.") in
     let atom = resolve_output_atom_with ctx lno formal_typ atom_tok in
     (([], outtys), [atom])
  | _ -> raise_at_line lno ("The number of (all, input, or output) actual parameters does not match the number of (all, input, or output) formal parameters.")

let parse_actual_atom_vec lno atom_v_tok =
  fun ctx tys ->
  match tys with
  | (tyk::argtys, outtys) ->
     let (atom_typ, atom_t_list) = resolve_vec_with ctx lno atom_v_tok in
     let atoms = tmap (resolve_atom_with ctx lno ~typ:atom_typ) atom_t_list in
     let formal_vectyp =
       match tyk with
       | ScalarType t ->
          (* Match an actual vector parameter of size 1 with a scalar formal parameter *)
          if List.length atoms = 1 then (t, 1)
          else raise_at_line lno ("An actual vector parameter is passed while the corresponding formal parameter is a scalar variable.")
       | VectorType t -> t in
     let atom_vectyp = (atom_typ, List.length atoms) in
     if formal_vectyp <> atom_vectyp
     then raise_at_line lno (Printf.sprintf "The type (%s) of actual parameter does not match the type (%s) of the corresponding formal parameter."
                               (string_of_vectyp atom_vectyp)
                               (string_of_vectyp formal_vectyp))
     else ((argtys, outtys), atoms)
  | ([], tyk::outtys) ->
     let formal_vectyp =
       match tyk with
       | ScalarType _ -> raise_at_line lno ("An actual vector parameter is passed while the corresponding formal parameter is a scalar variable.")
       | VectorType t -> t in
     let atoms = resolve_output_vec_with ctx lno formal_vectyp atom_v_tok in
     (([], outtys), atoms)
  | _ -> raise_at_line lno ("The number of (all, input, or output) actual parameters does not match the number of (all, input, or output) formal parameters.")

let parse_actual_atom_var_expansion lno prefix st ed =
  fun ctx tys ->
  let (tys, atoms_rev) =
    List.fold_left (
        fun (tys, atoms_rev) i ->
        let vname = prefix ^ vars_expansion_infix ^ string_of_int i in
        let (tys, atoms) = parse_actual_atom lno (`AVAR { atmtyphint = None; atmname = vname }) ctx tys in
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

let parse_defined_var lno vname vtypopt =
  if vname = "_" then raise_at_line lno "Reading the value of variable _ is forbidden."
  else `AVAR { atmtyphint = vtypopt; atmname = vname }

let parse_gvar lno vname vtyp =
  if vname = "_" then raise_at_line lno "Reading the value of variable _ is forbidden."
  else
    fun ctx ->
    if ctx_name_is_var ctx vname then raise_at_line lno ("The scalar ghost variable " ^ vname ^ " has been defined.")
    else mkvar vname vtyp

let parse_vgvar lno vecname (vtyp, vnum) =
  fun ctx ->
  if ctx_name_is_vec ctx vecname then raise_at_line lno ("The vector ghost variable " ^ vecname ^ " has been defined.")
  else if List.exists (ctx_name_is_var ctx) (List.init vnum (vec_name_fn vecname)) then raise_at_line lno ("Some vector element in " ^ vecname ^ " has been defined.")
  else (vecname, (vtyp, vnum))

let parse_fvar _lno vname vtyp = [ScalarVar (mkvar vname vtyp)]

let parse_fvar_expansion _lno prefix ty st ed =
  List.rev_map (fun i -> ScalarVar (mkvar (prefix ^ vars_expansion_infix ^ string_of_int i) ty)) ((Z.to_int st)--(Z.to_int ed)) |> List.rev

let parse_fvar_vec _line vname vtyp = [VectorVar (vname, vtyp)]

(* Make concatenation of two lists of formal variables.
   Check duplicates in this function.
   Assume that there is no duplicate in each list. *)
let parse_fvar_cons lno fvs1 fvs2 =
  (* Check duplicates without expanding vector variables *)
  let _ =
    let names1 = List.rev_map name_of_var_kind fvs1 |> List.rev in
    let names2 = List.rev_map name_of_var_kind fvs2 |> List.rev in
    let duplicates = List.filter (fun v -> List.mem v names2) names1 in
    if List.length duplicates > 0
    then raise_at_line lno (Printf.sprintf "Duplicate argument: %s" (List.hd duplicates)) in
  (* Check duplicates with expanding vector variables *)
  let _ =
    let svars1 = scalar_vars_of_var_kinds fvs1 in
    let svars2 = scalar_vars_of_var_kinds fvs2 in
    let duplicates = List.filter (fun v -> mem_var v svars2) svars1 in
    if List.length duplicates > 0
    then raise_at_line lno ("Duplicate argument: " ^ string_of_var (List.hd duplicates)) in
  List.rev_append (List.rev fvs1) fvs2


(* ---------- Globals Parsing ---------- *)

let parse_global_constant lno name n_token =
  fun ctx ->
  let n = eval_eexp_const (n_token ctx) in
  if SM.mem name ctx.cconsts
  then raise_at_line lno ("Redefined constant: " ^ name)
  else let _ = ctx.cconsts <- SM.add name n ctx.cconsts in
       ()

let parse_proc lno fname (arg_kinds, out_kinds) pre_tok instrs post_tok =
  fun ctx ->
  if SM.mem fname ctx.cfuns then raise_at_line lno ("The procedure " ^ fname ^ " is redefined.")
  else
    (* Duplicate formal parameters are detected in parsing formal parameters *)
    let args = scalar_vars_of_var_kinds arg_kinds in
    let outs = scalar_vars_of_var_kinds out_kinds in
    (* reset maps *)
    let _ = ctx.cvars <- vm_of_list args in
    let _ = let cvecs = List.fold_left (
                            fun res vk ->
                            match vk with
                            | VectorVar (vn, vecty) -> SM.add vn vecty res
                            | _ -> res
                          ) SM.empty arg_kinds in
            ctx.cvecs <- cvecs in
    let _ = ctx.ccarries <- SM.empty in
    let _ = ctx.cghosts <- SM.empty in
    let f =
      match pre_tok ctx with
      | None -> tagged_bexp_singleton Options.Std.default_track btrue
      | Some e -> e in
    let p = parse_instrs ctx instrs in
    let g =
      match post_tok ctx with
      | None -> tagged_bexp_prove_with_empty ()
      | Some e -> e in
    (* Validate pre-/post-conditions *)
    let _ =
      if fname <> Options.Std.main_proc_name then
        let fins = VS.of_list args in
        let fouts = VS.of_list outs in
        (* 1. pre-condition can access only input variables *)
        (* => this is checked in parsing the pre-condition *)
        (* 2. post-condition can access only input and output variables *)
        let undefined_post = VS.diff (vars_bexp_prove_with (tagged_bexp_prove_with_untag g)) (VS.union fins fouts) in
        let _ = if not (VS.is_empty undefined_post)
                then raise_at_line lno ("Variable "
                                        ^ string_of_var (VS.min_elt undefined_post)
                                        ^ " is not a formal parameter of procedure "
                                        ^ fname ^ ". "
                                        ^ "Variables in post-conditions for procedures other than "
                                        ^ Options.Std.main_proc_name
                                        ^ " must be formal input or output variables.") in
        () in
    let _ = ctx.cfuns <- SM.add fname { fname = fname;
                                        farg_kinds = arg_kinds;
                                        fout_kinds = out_kinds;
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
  let inputs_spec_pair m = ((m.fargs, m.fouts), { Typecheck.Std.tspre = m.fpre; Typecheck.Std.tsprog = m.fbody; Typecheck.Std.tspost = m.fpost }) in
  let ctx = empty_parsing_context() in
  let _ = procs_tok ctx in
  SM.fold (fun fn f fm -> SM.add fn (inputs_spec_pair f) fm) ctx.cfuns SM.empty

let parse_spec procs_tok =
  let ctx = empty_parsing_context() in
  let _ = procs_tok ctx in
  try
    let m = SM.find Options.Std.main_proc_name ctx.cfuns in
    (m.fargs, { Typecheck.Std.tspre = m.fpre; Typecheck.Std.tsprog = m.fbody; Typecheck.Std.tspost = m.fpost })
  with Not_found ->
    raise (ParseError ("A " ^ Options.Std.main_proc_name ^ " function is required."))
