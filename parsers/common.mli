
open Ast.Cryptoline


(* ---------- Positions ---------- *)

type lno = int

type pos = { pfname: string option;
             plnum: int;
             pcnum: int }
(** a position used in parsing *)

val string_of_pos : pos -> string
(** return the string representation of a position *)

val get_line_start : unit -> int
(** return the starting line number *)

val get_line_end : unit -> int
(** return the ending line number *)

val get_rule_start : unit -> pos
(** return the starting position of a parsing rule *)

val get_rule_end : unit -> pos
(** return the ending position of a parsing rule *)

val get_rhs_start : int -> pos
(** return the starting position of a symbol on the right-hand side of a
    parsing rule *)

val get_rhs_end : int -> pos
(** return the ending position of a symbol on the right-hand side of a
    parsing rule *)

val get_rhs_starts : int -> pos list
(** [get_rhs_starts n] return the first [n] starting positions of symbols on
    the right-hand side of a parsing rule *)

type 'a lined = lno -> 'a
(** a value depending on a line number *)

type 'a positioned = pos -> 'a
(** a value depending on a position *)


(* ---------- Exceptions ---------- *)

exception ParseError of string

(** line number *)

val raise_at_line : lno -> string -> 'a
(** raise a ParseError at a line number with an error message *)

val raise_at : pos -> string -> 'a
(** raise a ParseError at a position with an error message *)


(* ---------- Auxiliary Functions ---------- *)

val big_pow : Z.t -> Z.t -> Z.t
(** [big_pow n m] compute [n] to the power of [m] *)

val num_two : Z.t
(** [2] of type [Z.t] *)

val num_of_bit : char -> Z.t
(** convert a bit to [Z.t] *)

val num_of_bits : char list -> Z.t
(** convert a bit string (with head as the MSB) to [Z.t] *)

val (--) : int -> int -> int list
(** [i -- j] is a list of integers from [i] (inclusive) to [j] (inclusive). *)

val transpose_lists : ('a list) list -> ('a list) list

val vm_of_list : var list -> var SM.t
(** return a map from a variable name in a list to the corresponding variable *)

val vm_of_vs : VS.t -> var SM.t
(** return a map from a variable name in a set to the corresponding variable *)

val vs_of_vm : var SM.t -> VS.t
(** return a set of variables in a map *)

val remove_keys_from_map : string list -> 'a SM.t -> 'a SM.t
(** remove a list of keys from a map *)

val select_nth : lno -> 'a list -> int -> 'a
(** [select_nth lno xs n] return the [n]-th element of the list [xs].
    Raise a [ParseError] at line number [lno] if [n] is invalid. *)

val select_from_range : lno -> 'a list -> int option -> int option -> int option -> 'a list
(** [select_from_range lno xs io jo ko] return a slice of [xs]. The initial
    index (inclusive) of the slice is [i] if [io] is [Some i] or [0] otherwise.
    The last index (exclusive) of the slice is [j] if [jo] is [Some j] or the
    size of [xs] otherwise. The skip of indices is [k] if [ko] is [Some k] or
    [1] otherwise. *)

val vars_expansion_infix : string
(** an infix string for the name expansion of variables *)

val is_type_compatible : var -> atom -> bool
(** [is_type_compatible v a] check if the type of the actual atom [a] is compatible with the type of the formal variable [v] *)

val check_rexp_sizes : lno -> rexp list -> int
(** Check sizes of range expressions. If all the sizes are equal, return the size. Otherwise, raise a [ParseError]. *)

val check_rexp_sizes2 : lno -> rexp -> rexp -> int
(** Check sizes of range expressions. If all the sizes are equal, return the size. Otherwise, raise a [ParseError]. *)

val check_vec_sizes : lno -> ('a list) list -> int
(** Check sizes of vectors. If all the sizes are equal, return the size. Otherwise, raise a [ParseError]. *)

val check_vec_sizes2 : lno -> 'a list -> 'b list -> int
(** Check sizes of vectors. If all the sizes are equal, return the size. Otherwise, raise a [ParseError]. *)

val check_vec_sizes3 : lno -> 'a list -> 'b list -> 'c list -> int
(** Check sizes of vectors. If all the sizes are equal, return the size. Otherwise, raise a [ParseError]. *)

(* ---------- Vectors ---------- *)

type vectyp = typ * int
(** vector type *)

val string_of_vectyp : vectyp -> string
(** return the string representation of a vector type *)

val vec_name_fn : string -> int -> string
(** [vec_name_fn v n] return the variable name for the [n]-th element of the vector [v].
    The name of the vector [v] is expected to start with a "%". *)


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
    mutable cfuns: func SM.t;       (** a map from function name to function definition *)
    mutable cconsts: Z.t SM.t;      (** a map from constant name to constant value *)
    mutable cvars: var SM.t;        (** a map from variable name to variable *)
    mutable cvecs: vectyp SM.t;     (** a map from vector name to its type *)
    mutable ccarries: var SM.t;     (** a map from carry name to carry variable *)
    mutable cghosts: var SM.t       (** a map from ghost name to ghost variable *)
  }
(** the type of parsing context *)

type 'a contextual = parsing_context -> 'a
(** a value depending on a parsing context *)

val empty_parsing_context : unit -> parsing_context
(** an empty parsing context *)

val ctx_define_var : parsing_context -> var -> unit
(** add a scalar program variable to a parsing context *)

val ctx_define_carry : parsing_context -> var -> unit
(** add a carry to a parsing context (type is not checked in this function) *)

val ctx_define_vec : parsing_context -> string -> vectyp -> unit
(** add a vector program variable to a parsing context *)

val ctx_define_ghost : parsing_context -> var -> unit
(** add a ghost variable to a parsing context *)

val ctx_find_var : parsing_context -> string -> var
(** find a variable by name *)

val ctx_find_vec : parsing_context -> string -> vectyp
(** find a vector type by name *)

val ctx_find_ghost : parsing_context -> string -> var
(** find a ghost variable by name *)

val ctx_name_is_var : parsing_context -> string -> bool
(** check if a name is a variable *)

val ctx_name_is_ghost : parsing_context -> string -> bool
(** check if a name is a ghost variable *)

val ctx_var_is_defined : parsing_context -> var -> bool
(** check if a variable is defined in the context *)

val ctx_vec_is_defined : parsing_context -> var -> bool
(** check if a vector variable is defined in the context *)

val ctx_carry_is_defined : parsing_context -> var -> bool
(** check if a carry is defined in the context *)

val ctx_ghost_is_defined : parsing_context -> var -> bool
(** check if a ghost variable is defined in the context *)

val ctx_atom_is_defined : parsing_context -> atom -> bool
(** check if an atom is defined in the context *)

val string_of_parsing_context : parsing_context -> string
(** return the string representation of a parsing context *)


(* ---------- Unresolved Variables ---------- *)

type lv_prim_t =
  {
    lvtyphint: typ option;  (** an optional type specified explicitly *)
    lvname: string;         (** the variable name *)
  }
(** an unresolved scalar variable *)

type vec_prim_t =
  {
    vectyphint: vectyp option;  (** an optional type specified explicitly *)
    vecname: string;            (** the vector name *)
  }
(** an unresolved vector variable *)

type avar_prim_t =
  {
    atmtyphint: typ option;  (** an optional type specified explicitly *)
    atmname: string;         (** the atom name *)
  }
(** an unresolved variable in a scalar atom *)

type aconst_prim_t =
  {
    atmtyphint: typ option;            (** an optional type specified explicitly *)
    atmvalue: Z.t contextual;          (** a constant depending on the context *)
  }
(** an unresolved constant in a scalar atom *)

type avecelm_prim_t =
  {
    avecname: string;  (** name of a vector variable *)
    avecindex: int     (** an index *)
  }
(** an element in a vector variable *)

type lval_t =
  [
  | `LVPLAIN of lv_prim_t   (** scalar variable *)
  ]
(** a scalar lvalue *)

type lval_vec_t =
  [
  | `LVVLIT of lval_t list  (** vector literal *)
  | `LVVECT of vec_prim_t   (** vector variable *)
  ]
(** a vector lvalue *)

type atom_t =
  [
  | `AVAR of avar_prim_t        (** a scalar variable *)
  | `ACONST of aconst_prim_t    (** a constant *)
  | `AVECELM of avecelm_prim_t  (** an element of a vector *)
  ]
(** a scalar atom *)

type selection =
  SelSingle of int contextual                                    (** select one index *)
| SelMultiple of (int list) contextual                           (** select multiple indices *)
| SelRange of (int option * int option * int option) contextual  (** select a slice *)
(** selection of vector elements *)

type vec_sel_prim_t =
  {
    vecselatm: atom_vec_t;      (** a vector atom *)
    vecselrng: selection list   (** a list of selections *)
  }
(** a vector selection *)

and atom_vec_t =
  [
  | `AVLIT of (atom_t list)       (** vector literal *)
  | `AVECT of vec_prim_t          (** vector variable *)
  | `AVECSEL of vec_sel_prim_t    (** selection of a vector *)
  | `AVECCAT of atom_vec_t list   (** concatenation of vectors *)
  ]
(** a vector atom *)


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
  | `SHR of lval_t * atom_t * atom_t
  | `VSHR of lval_vec_t * atom_vec_t * atom_vec_t
  | `SHRS of lval_t * lval_t * atom_t * Z.t contextual
  | `SAR of lval_t * atom_t * atom_t
  | `VSAR of lval_vec_t * atom_vec_t * atom_vec_t
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

val resolve_selection : ('a list -> selection -> 'a list) lined contextual
(** [resolve_selection ctx lno xs sel] returns a selection of elements in [xs] according to the selection [sel] *)

val parse_typed_const : (typ -> Z.t contextual -> atom) lined contextual
(** parse a typed constant *)

val resolve_var_with : ([`AVAR of avar_prim_t] -> var) lined contextual
(** resolve a scalar atom as a scalar variable *)

val resolve_lv_with : (lv_prim_t -> typ option -> var) lined contextual
(** resolve a scalar lvalue as a scalar variable *)

val resolve_lcarry_with : (lv_prim_t -> var) lined contextual
(** resolve a scalar lvalue as a scalar carry *)

val resolve_lv_or_lcarry_with : (lv_prim_t -> var) lined contextual
(** resolve a scalar lvalue as a scalar variable or a scalar carry *)

val resolve_lv_vec_with : (lval_vec_t -> vectyp option -> typ * string list) lined contextual
(** resolve a vector lvalue as a vector variable, represented as a type of vector elements and a list of element names *)

val resolve_atom_with : (?typ:typ -> atom_t -> atom) lined contextual
(** resolve a scalar atom *)

val resolve_vec_with : (atom_vec_t -> typ * atom_t list) lined contextual
(** resolve a vector atom *)

val parse_imov_at : (lv_prim_t -> atom_t -> lined_program) lined contextual
(** [parse_imov_at ctx lno dst src] parses a mov instruction *)

val parse_ishl_at : (lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_ishl_at ctx lno dst src n] parses an shl instruction *)

val parse_ishls_at : (lv_prim_t -> lv_prim_t -> atom_t -> Z.t contextual -> lined_program) lined contextual
(** [parse_ishls_at ctx lno lost dst src n] parses an shls instruction *)

val parse_ishr_at : (lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_ishr_at ctx lno dst src n] parses an shr instruction *)

val parse_ishrs_at : (lv_prim_t -> lv_prim_t -> atom_t -> Z.t contextual -> lined_program) lined contextual
(** [parse_ishrs_at ctx lno dst lost src n] parses an shrs instruction *)

val parse_isar_at : (lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_isar_at ctx lno dst src n] parses an sar instruction *)

val parse_isars_at : (lv_prim_t -> lv_prim_t -> atom_t -> Z.t contextual -> lined_program) lined contextual
(** [parse_isars_at ctx lno dst lost src n] parses an sars instruction *)

val parse_cshl_at : (lv_prim_t -> lv_prim_t -> atom_t -> atom_t -> Z.t contextual -> lined_program) lined contextual
(** [parse_cshl_at lno dstH dstL src1 src2 n] parses a cshl instruction *)

val parse_cshls_at : (lv_prim_t -> lv_prim_t -> lv_prim_t -> atom_t -> atom_t -> Z.t contextual -> lined_program) lined contextual
(** [parse_cshls_at lno lost dstH dstL src1 src2 n] parses a cshls instruction *)

val parse_cshr_at : (lv_prim_t -> lv_prim_t -> atom_t -> atom_t -> Z.t contextual -> lined_program) lined contextual
(** [parse_cshr_at lno dstH dstL src1 src2 n] parses a cshr instruction *)

val parse_cshrs_at : (lv_prim_t -> lv_prim_t -> lv_prim_t -> atom_t -> atom_t -> Z.t contextual -> lined_program) lined contextual
(** [parse_cshrs_at lno dstH dstL lost src1 src2 n] parses a cshrs instruction *)

val parse_rol_at : (lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_rol_at ctx lno dst src n] parses a rol instruction *)

val parse_ror_at : (lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_ror_at ctx lno dst src n] parses a ror instruction *)

val parse_set_at : (lv_prim_t -> lined_program) lined contextual
(** [parse_set_at ctx lno dst] parses a set instruction *)

val parse_clear_at : (lv_prim_t -> lined_program) lined contextual
(** [parse_clear_at ctx lno dst] parses a clear instruction *)

val parse_nondet_at : (lv_prim_t -> lined_program) lined contextual
(** [parse_nondet_at ctx lno dst] parses a nondet instruction *)

val parse_cmov_at : (lv_prim_t -> atom_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_cmov_at ctx lno dst cond src1 src2] parses a cmov instruction *)

val parse_add_at : (lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_add_at ctx lno dst src1 src2] parses an add instruction *)

val parse_adds_at : (lv_prim_t -> lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_adds_at ctx lno flag dst src1 src2] parses an adds instruction *)

val parse_adc_at : (lv_prim_t -> atom_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_adc_at ctx lno dst src1 src2 carry] parses an adc instruction *)

val parse_adcs_at : (lv_prim_t -> lv_prim_t -> atom_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_adcs_at ctx lno flag dst src1 src2 carry] parses an adcs instruction *)

val parse_sub_at : (lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_sub_at ctx lno dst src1 src2] parses an sub instruction *)

val parse_subc_at : (lv_prim_t -> lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_subc_at ctx lno flag dst src1 src2] parses an subc instruction *)

val parse_subb_at : (lv_prim_t -> lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_subb_at ctx lno flag dst src1 src2] parses an subb instruction *)

val parse_sbc_at : (lv_prim_t -> atom_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_sbc_at ctx lno dst src1 src2 carry] parses an sbc instruction *)

val parse_sbcs_at : (lv_prim_t -> lv_prim_t -> atom_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_sbcs_at ctx lno flag dst src1 src2 carry] parses an sbcs instruction *)

val parse_sbb_at : (lv_prim_t -> atom_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_sbb_at ctx lno dst src1 src2 carry] parses an sbb instruction *)

val parse_sbbs_at : (lv_prim_t -> lv_prim_t -> atom_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_sbbs_at ctx lno flag dst src1 src2 carry] parses an sbbs instruction *)

val parse_mul_at : (lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_mul_at ctx lno dst src1 src2] parses a mul instruction *)

val parse_muls_at : (lv_prim_t -> lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_muls_at ctx lno flag dst src1 src2] parses a muls instruction *)

val parse_mull_at : (lv_prim_t -> lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_mull_at ctx lno dstH dstL src1 src2] parses a mull instruction *)

val parse_mulj_at : (lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_mulj_at ctx lno dst src1 src2] parses a mulj instruction *)

val parse_split_at : (lv_prim_t -> lv_prim_t -> atom_t -> Z.t contextual -> lined_program) lined contextual
(** [parse_split_at ctx lno dstH dstL src n] parses a split instruction *)

val parse_spl_at : (lv_prim_t -> lv_prim_t -> atom_t -> Z.t contextual -> lined_program) lined contextual
(** [parse_spl_at ctx lno dstH dstL src n] parses a spl instruction *)

val parse_seteq_at : (lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_seteq_at ctx lno dst src1 src2] parses a seteq instruction *)

val parse_setne_at : (lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_setne_at ctx lno dst src1 src2] parses a setne instruction *)

val parse_uadd_at : (lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_uadd_at ctx lno dst src1 src2] parses a uadd instruction *)

val parse_uadds_at : (lv_prim_t -> lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_uadds_at ctx lno flag dst src1 src2] parses a uadds instruction *)

val parse_uadc_at : (lv_prim_t -> atom_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_uadc_at ctx lno dst src1 src2 carry] parses a uadc instruction *)

val parse_uadcs_at : (lv_prim_t -> lv_prim_t -> atom_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_uadcs_at ctx lno flag dst src1 src2 carry] parses a uadcs instruction *)

val parse_usub_at : (lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_usub_at ctx lno dst src1 src2] parses a usub instruction *)

val parse_usubc_at : (lv_prim_t -> lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_usubc_at ctx lno flag dst src1 src2] parses a usubc instruction *)

val parse_usubb_at : (lv_prim_t -> lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_usubb_at ctx lno flag dst src1 src2] parses a usubb instruction *)

val parse_usbc_at : (lv_prim_t -> atom_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_usbc_at ctx lno dst src1 src2 carry] parses a usbc instruction *)

val parse_usbcs_at : (lv_prim_t -> lv_prim_t -> atom_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_usbcs_at ctx lno flag dst src1 src2 carry] parses a usbcs instruction *)

val parse_usbb_at : (lv_prim_t -> atom_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_usbb_at ctx lno dst src1 src2 carry] parses a usbb instruction *)

val parse_usbbs_at : (lv_prim_t -> lv_prim_t -> atom_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_usbbs_at ctx lno flag dst src1 src2 carry] parses a usbbs instruction *)

val parse_umul_at : (lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_umul_at ctx lno dst src1 src2] parses a umul instruction *)

val parse_umuls_at : (lv_prim_t -> lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_umuls_at ctx lno flag dst src1 src2] parses a umuls instruction *)

val parse_umull_at : (lv_prim_t -> lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_umull_at ctx lno dstH dstL src1 src2] parses a umull instruction *)

val parse_umulj_at : (lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_umulj_at ctx lno dst src1 src2] parses a umulj instruction *)

val parse_usplit_at : (lv_prim_t -> lv_prim_t -> atom_t -> Z.t contextual -> lined_program) lined contextual
(** [parse_usplit_at ctx lno dstH dstL src n] parses a usplit instruction *)

val parse_uspl_at : (lv_prim_t -> lv_prim_t -> atom_t -> Z.t contextual -> lined_program) lined contextual
(** [parse_uspl_at ctx lno dstH dstL src n] parses a uspl instruction *)

val parse_sadd_at : (lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_sadd_at ctx lno dst src1 src2] parses an sadd instruction *)

val parse_sadds_at : (lv_prim_t -> lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_sadds_at ctx lno flag dst src1 src2] parses an sadds instruction *)

val parse_sadc_at : (lv_prim_t -> atom_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_sadc_at ctx lno dst src1 src2 carry] parses an sadc instruction *)

val parse_sadcs_at : (lv_prim_t -> lv_prim_t -> atom_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_sadcs_at ctx lno flag dst src1 src2 carry] parses an sadcs instruction *)

val parse_ssub_at : (lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_ssub_at ctx lno dst src1 src2] parses an ssub instruction *)

val parse_ssubc_at : (lv_prim_t -> lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_ssubc_at ctx lno flag dst src1 src2] parses an ssubc instruction *)

val parse_ssubb_at : (lv_prim_t -> lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_ssubb_at ctx lno flag dst src1 src2] parses an ssubb instruction *)

val parse_ssbc_at : (lv_prim_t -> atom_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_ssbc_at ctx lno dst src1 src2 carry] parses an ssbc instruction *)

val parse_ssbcs_at : (lv_prim_t -> lv_prim_t -> atom_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_ssbcs_at ctx lno flag dst src1 src2 carry] parses an ssbcs instruction *)

val parse_ssbb_at : (lv_prim_t -> atom_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_ssbb_at ctx lno dst src1 src2 carry] parses an ssbb instruction *)

val parse_ssbbs_at : (lv_prim_t -> lv_prim_t -> atom_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_ssbbs_at ctx lno flag dst src1 src2 carry] parses an ssbbs instruction *)

val parse_smul_at : (lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_smul_at ctx lno dst src1 src2] parses an smul instruction *)

val parse_smuls_at : (lv_prim_t -> lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_smuls_at ctx lno flag dst src1 src2] parses an smuls instruction *)

val parse_smull_at : (lv_prim_t -> lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_smull_at ctx lno dstH dstL src1 src2] parses an smull instruction *)

val parse_smulj_at : (lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_smulj_at ctx lno dst src1 src2] parses an smulj instruction *)

val parse_ssplit_at : (lv_prim_t -> lv_prim_t -> atom_t -> Z.t contextual -> lined_program) lined contextual
(** [parse_ssplit_at ctx lno dstH dstL src n] parses an ssplit instruction *)

val parse_sspl_at : (lv_prim_t -> lv_prim_t -> atom_t -> Z.t contextual -> lined_program) lined contextual
(** [parse_sspl_at ctx lno dstH dstL src n] parses an sspl instruction *)

val parse_and_at : (lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_and_at ctx lno dst src1 src2] parses an and instruction *)

val parse_or_at : (lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_or_at ctx lno dst src1 src2] parses an or instruction *)

val parse_xor_at : (lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_xor_at ctx lno dst src1 src2] parses an xor instruction *)

val parse_not_at : (lv_prim_t -> atom_t -> lined_program) lined contextual
(** [parse_not_at ctx lno dst src] parses a not instruction *)

val parse_cast_at : (lval_t option -> lv_prim_t -> atom_t -> lined_program) lined contextual
(** [parse_cast_at ctx lno optlv dst src] parses a cast instruction *)

val parse_vpc_at : (lv_prim_t -> atom_t -> lined_program) lined contextual
(** [parse_vpc_at ctx lno dest src] parses a vpc instruction *)

val parse_join_at : (lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual
(** [parse_join_at ctx lno dst srcH srcL] parses a join instruction *)

val parse_assert_at : ((bexp_prove_with contextual) -> lined_program) lined contextual
(** [parse_assert_at ctx lno bexp_prove_with_token] parses an assert instruction *)

val parse_eassert_at : ((ebexp_prove_with contextual) -> lined_program) lined contextual
(** [parse_eassert_at ctx lno ebexp_prove_with_token] parses an eassert instruction *)

val parse_rassert_at : ((rbexp_prove_with contextual) -> lined_program) lined contextual
(** [parse_rassert_at ctx lno rbexp_prove_with_token] parses an rassert instruction *)

val parse_assume_at : ((bexp contextual) -> lined_program) lined contextual
(** [parse_assume_at ctx lno bexp_token] parses an assume instruction *)

val parse_cut_at : ((bexp_prove_with contextual) -> lined_program) lined contextual
(** [parse_cut_at ctx lno bexp_prove_with_token] parses a cut instruction *)

val parse_ecut_at : ((ebexp_prove_with contextual) -> lined_program) lined contextual
(** [parse_ecut_at ctx lno ebexp_prove_with_token] parses an ecut instruction *)

val parse_rcut_at : ((rbexp_prove_with contextual) -> lined_program) lined contextual
(** [parse_rcut_at ctx lno rbexp_prove_with_token] parses an rcut instruction *)

val parse_ghost_at : ((VS.t contextual) -> (bexp contextual) -> lined_program) lined contextual
(** [parse_ghost_at ctx lno gvars_token bexp_token] parses a ghost instruction *)

val parse_call_at : (string -> (typ list * typ list -> atom list) contextual -> lined_program) lined contextual
(** [parse_call_at ctx lno fname actuals_token] parses a call instruction *)

val parse_inline_at : (string -> (typ list * typ list -> atom list) contextual -> lined_program) lined contextual
(** [parse_inline_at ctx lno fname actuals_token] parses an inline instruction *)

val unpack_vinstr_1 : (lv_prim_t -> lined_program) lined contextual -> (lval_vec_t -> lined_program) lined contextual
(** [unpack_vinstr_1 mapper ctx lno dst_tok] applies [mapper] applies a scalar instruction [mapper], that expects a destination variable, to vector elements *)

val unpack_vinstr_11 : (lv_prim_t -> atom_t -> lined_program) lined contextual -> (lval_vec_t -> atom_vec_t -> lined_program) lined contextual
(** [unpack_vinstr_11 mapper ctx lno dst_tok src_tok] applies a scalar instruction [mapper], that expects a destination variable and a source variable, to vector elements *)

val unpack_vinstr_12 : (lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual -> (lval_vec_t -> atom_vec_t -> atom_vec_t -> lined_program) lined contextual
(** [unpack_vinstr_12 mapper ctx lno dst_tok src1_tok src2_tok] applies a scalar instruction [mapper], that expects a destination variable and two source variables, to vector elements *)

val unpack_vinstr_1n2 : (lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual -> (lval_vec_t -> atom_vec_t -> atom_vec_t -> lined_program) lined contextual
(** [unpack_vinstr_1n2 mapper ctx lno dst_tok src1_tok src2_tok] applies a scalar instruction [mapper], that expects a destination variable and two source variables, to vector elements.
    Type of destination variable is [bit[srclen]] by default when its type is not explicitly specified. *)

val unpack_vinstr_21n : (lv_prim_t -> lv_prim_t -> atom_t -> Z.t contextual -> lined_program) lined contextual -> (lval_vec_t -> lval_vec_t -> atom_vec_t -> Z.t contextual -> lined_program) lined contextual
(** [unpack_vinstr_21n mapper ctx lno dst1_tok dst2_tok src_tok num] applies a scalar instruction [mapper], that expects two destination variables, a source variable, and a constant, to vector elements *)

val parse_extract_at : (lv_prim_t -> atom_t -> lined_program) lined contextual -> (lval_vec_t -> int list -> atom_vec_t list -> lined_program) lined contextual
(** [parse_extract_at mapper ctx lno dst_tok nums src_toks] parses an extract instruction *)

val unpack_vinstr_spl : (lv_prim_t -> lv_prim_t -> atom_t -> Z.t contextual -> lined_program) lined contextual -> (lval_vec_t -> lval_vec_t -> atom_vec_t -> Z.t contextual -> lined_program) lined contextual
(** [unpack_vinstr_spl mapper ctx lno dst1_tok dst2_tok src_tok num] is same as [unpack_vinstr_21n] except that [mapper] parses an spl, a uspl, or an sspl instruction. *)

val unpack_vinstr_c12 : (lv_prim_t -> lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual -> (lval_vec_t -> lval_vec_t -> atom_vec_t -> atom_vec_t -> lined_program) lined contextual
(** [unpack_vinstr_c12 mapper ctx lno carry_tok dst_tok src1_tok src2_tok] applies a scalar instruction [mapper], that expects a destination carry, a destination variable, two source variables, to vector elements *)

val unpack_vinstr_1c2 : (lv_prim_t -> atom_t -> atom_t -> atom_t -> lined_program) lined contextual -> (lval_vec_t -> atom_vec_t -> atom_vec_t -> atom_vec_t -> lined_program) lined contextual
(** [unpack_vinstr_1c2 mapper ctx lno dst_tok carry_tok src1_tok src2_tok] applies a scalar instruction [mapper], that expects a destination variable, a source carry, two source variables, to vector elements *)

val unpack_vmull : (lv_prim_t -> lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual -> (lval_vec_t -> lval_vec_t -> atom_vec_t -> atom_vec_t -> lined_program) lined contextual
(** [unpack_vmull mapper ctx lno dstH_tok dstL_tok src1_tok src2_tok] applies a mull parsing function to vectors *)

val unpack_vmulj : (lv_prim_t -> atom_t -> atom_t -> lined_program) lined contextual -> (lval_vec_t -> atom_vec_t -> atom_vec_t -> lined_program) lined contextual
(** [unpack_vmulj mapper ctx lno dst_tok src1_tok src2_tok ] applies a mulj parsing function to vectors *)

val parse_vcast_at : (lval_vec_t -> atom_vec_t -> lined_program) lined contextual
(** [parse_vcast_at ctx lno dst_tok src_tok] parses a cast instruction for vectors *)

val parse_vbroadcast_at : (lval_vec_t -> Z.t contextual -> atom_vec_t -> lined_program) lined contextual
(** [parse_vbroadcast_at ctx lno dst_tok num src_tok] parses a broadcast instruction *)

val parse_instrs : ((lno * instr_t) list -> lined_program) contextual
(** [parse_instrs ctx instrs] parses instructions *)


(* ---------- Algebraic Predicates Parsing ---------- *)

val parse_ebexp_eq_modopt : lno -> eexp contextual -> eexp contextual -> eexp list option contextual -> ebexp contextual
(** [parse_ebexp_eq_modopt lno e1_tok e2_tok msopt_tok] parses a (modular) equality of eexps *)

val parse_ebexp_eq : lno -> eexp contextual -> eexp contextual -> ebexp contextual
(** [parse_ebexp_eq lno e1_tok e2_tok] parses equality of eexps *)

val parse_ebexp_eqmod1 : lno -> eexp contextual -> eexp contextual -> eexp contextual -> ebexp contextual
(** [parse_ebexp_eqmod1 lno e1_tok e2_tok m_tok] parses modular equality of eexps with one modulus *)

val parse_ebexp_eqmodN : lno -> eexp contextual -> eexp contextual -> eexp list contextual -> ebexp contextual
(** [parse_ebexp_eqmodN lno e1_tok e2_tok ms_tok] parses modular equality of eexps with multiple moduli *)

val parse_ebexp_veq_modopt : lno -> eexp list contextual -> eexp list contextual -> eexp list list option contextual -> ebexp contextual
(** [parse_ebexp_veq_modopt lno ve1_tok ve2_tok mssopt_tok] parses a (modular) equality of vector eexps *)

val parse_ebexp_veq : lno -> eexp list contextual -> eexp list contextual -> ebexp contextual
(** [parse_ebexp_veq lno ve1_tok ve2_tok] parses equality of vector eexps *)

val parse_ebexp_veqmod1 : lno -> eexp list contextual -> eexp list contextual -> eexp list contextual -> ebexp contextual
(** [parse_ebexp_veqmod1 lno ve1_tok ve2_tok vm_tok] parses modular equality of vector eexps with one modulus for each vector element *)

val parse_ebexp_veqmodN : lno -> eexp list contextual -> eexp list contextual -> eexp list list contextual -> ebexp contextual
(** [parse_ebexp_veqmodN lno ve1_tok ve2_tok vms_tok] parses modular equality of vector eexps *)

val parse_eexp_vec_elem : lno -> eexp list contextual -> Z.t -> eexp contextual
(** [parse_eexp_vec_elem lno ve_tok zi] parses an access to a vector element *)

val parse_eexp_pow : lno -> eexp contextual -> Z.t contextual -> eexp contextual
(** [parse_eexp_pow lno e_tok i_tok] parses an exponentiation *)

val parse_veexp_slices : lno -> eexp list contextual -> selection list -> eexp list contextual
(** [parse_veexp_slices lno ve_tok sels] parses slices of vector eexps *)

val parse_veexp_neg : lno -> eexp list contextual -> eexp list contextual
(** [parse_veexp_neg lno ve_tok] parses negation of vector eexps *)

val parse_veexp_add : lno -> eexp list contextual -> eexp list contextual -> eexp list contextual
(** [parse_veexp_add lno ve1_tok ve2_tok] parses addition of vector eexps *)

val parse_veexp_sub : lno -> eexp list contextual -> eexp list contextual -> eexp list contextual
(** [parse_veexp_sub lno ve1_tok ve2_tok] parses subtraction of vector eexps *)

val parse_veexp_mul : lno -> eexp list contextual -> eexp list contextual -> eexp list contextual
(** [parse_veexp_mul lno ve1_tok ve2_tok] parses multiplication of vector eexps *)

val parse_veexp_sq : lno -> eexp list contextual -> eexp list contextual
(** [parse_veexp_sq lno ve_tok] parses square of vector eexps *)

val parse_veexp_adds : lno -> eexp list list contextual -> eexp list contextual
(** [parse_veexp_adds lno ve_tok] parses addition of column vector elements *)

val parse_veexp_muls : lno -> eexp list list contextual -> eexp list contextual
(** [parse_veexp_muls lno ve_tok] parses multiplication of column vector elements *)

val parse_veexp_append : lno -> eexp list contextual -> eexp list contextual -> eexp list contextual
(** [parse_veexp_append lno ve1_tok ve2_tok] parses concatenation of vector eexps *)

val parse_veexp_pow : lno -> eexp list contextual -> Z.t contextual -> eexp list contextual
(** [parse_veexp_pow lno ve_tok i_tok] parses power of vector eexps *)

val parse_veexp_pows : lno -> eexp list contextual -> Z.t list contextual -> eexp list contextual
(** [parse_veexp_pows lno ve_tok is_tok] parses power of vector eexps *)

val parse_veexp_limbs : lno -> Z.t contextual -> eexp list list contextual -> eexp list contextual
(** [parse_veexp_limbs lno w_tok ves_tok] parses limbs of vectors *)

val parse_veexp_poly : lno -> eexp contextual -> eexp list list contextual -> eexp list contextual
(** [parse_veexp_poly lno p_tok ves_tok] parses polynomials of vectors *)

val parse_veexp_polyv : lno -> eexp list contextual -> eexp list list contextual -> eexp list contextual
(** [parse_veexp_polyv lno ps_tok ves_tok] parses polynomials of vectors *)


(* ---------- Range Predicates Parsing ---------- *)

val parse_rbexp_eq : lno -> rexp contextual -> rexp contextual -> rbexp contextual
(** [parse_rbexp_eq lno e1_tok e2_tok] parses an equality of rexps *)

val parse_rbexp_cmp : lno -> rcmpop -> rexp contextual -> rexp contextual -> rbexp contextual
(** [parse_rbexp_cmp lno cmpop e1_tok e2_tok] parses a comparison of two rexps *)

val parse_rbexp_eq_modopt : lno -> rexp contextual -> rexp contextual -> ((int -> rexp -> rexp -> rexp -> rbexp) * rexp) option contextual -> rbexp contextual
(** [parse_rbexp_eq_modopt lno e1_tok e2_tok mf_tok] *)

val parse_rbexp_equmod : lno -> rexp contextual -> rexp contextual -> rexp contextual -> rbexp contextual
(** [parse_rbexp_equmod lno e1_tok e2_tok m_tok] parses an equmod *)

val parse_rbexp_eqsmod : lno -> rexp contextual -> rexp contextual -> rexp contextual -> rbexp contextual
(** [parse_rbexp_eqsmod lno e1_tok e2_tok m_tok] parses an eqsmod *)

val parse_rbexp_eqsrem : lno -> rexp contextual -> rexp contextual -> rexp contextual -> rbexp contextual
(** [parse_rbexp_eqsrem lno e1_tok e2_tok m_tok] parses an eqsrem *)

val parse_rbexp_veq : lno -> rexp list contextual -> rexp list contextual -> rbexp contextual
(** [parse_rbexp_veq lno ve1_tok ve2_tok] parses a vector version of rexp equality *)

val parse_rbexp_vcmp : lno -> rcmpop -> rexp list contextual -> rexp list contextual -> rbexp contextual
(** [parse_rbexp_vcmp lno cmpop ve1_tok ve2_tok] parses vector version comparison of rexps *)

val parse_rbexp_veq_modopt : lno -> rexp list contextual -> rexp list contextual -> ((int -> rexp -> rexp -> rexp -> rbexp) * rexp list) option contextual -> rbexp contextual
(** [parse_rbexp_veq_modopt lno ve1_tok ve2_tok vmf_tok] *)

val parse_rbexp_vequmod : lno -> rexp list contextual -> rexp list contextual -> rexp list contextual -> rbexp contextual
(** [parse_rbexp_vequmod lno ve1_tok ve2_tok vm_tok] parses a vector version equmod *)

val parse_rbexp_veqsmod : lno -> rexp list contextual -> rexp list contextual -> rexp list contextual -> rbexp contextual
(** [parse_rbexp_veqsmod lno ve1_tok ve2_tok vm_tok] parses a vector version eqsmod *)

val parse_rbexp_veqsrem : lno -> rexp list contextual -> rexp list contextual -> rexp list contextual -> rbexp contextual
(** [parse_rbexp_veqsrem lno ve1_tok ve2_tok vm_tok] parses a vector version eqsrem *)

val parse_rexp_defined_var : lno -> [`AVAR of avar_prim_t] -> rexp contextual
(** [parse_rexp_defined_var lno v_tok] parses a defined var as a rexp *)

val parse_rexp_const : lno -> Z.t contextual -> Z.t contextual -> rexp contextual
(** [parse_rexp_const lno w_tok n_tok] parses a constant as a rexp *)

val parse_rexp_vec_elem : lno -> rexp list contextual -> Z.t -> rexp contextual
(** [parse_rexp_vec_elem lno ve_tok zi] parses an access to a vector element *)

val parse_rexp_uext : lno -> rexp contextual -> Z.t contextual -> rexp contextual
(** [parse_rexp_uext lno e_tok i_tok] parses an unsigned extension of rexp *)

val parse_rexp_sext : lno -> rexp contextual -> Z.t contextual -> rexp contextual
(** [parse_rexp_sext lno e_tok i_tok] parses a signed extension of rexp *)

val parse_rexp_neg : lno -> rexp contextual -> rexp contextual
(** [parse_rexp_neg lno e_tok] parses a negation of rexp *)

val parse_rexp_not : lno -> rexp contextual -> rexp contextual
(** [parse_rexp_not lno e_tok] parses a bitwise NOT of rexp *)

val parse_rexp_add : lno -> rexp contextual -> rexp contextual -> rexp contextual
(** [parse_rexp_add lno e1_tok e2_tok] parses an addition of rexps *)

val parse_rexp_sub : lno -> rexp contextual -> rexp contextual -> rexp contextual
(** [parse_rexp_sub lno e1_tok e2_tok] parses a subtraction of rexps *)

val parse_rexp_mul : lno -> rexp contextual -> rexp contextual -> rexp contextual
(** [parse_rexp_mul lno e1_tok e2_tok] parses a multiplication of rexps *)

val parse_rexp_sq : lno -> rexp contextual -> rexp contextual
(** [parse_rexp_sq lno e] parses a square of rexps *)

val parse_rexp_umod : lno -> rexp contextual -> rexp contextual -> rexp contextual
(** [parse_rexp_umod lno e1_tok e2_tok] parses an unsigned mod of rexps *)

val parse_rexp_srem : lno -> rexp contextual -> rexp contextual -> rexp contextual
(** [parse_rexp_srem lno e1_tok e2_tok] parses a signed remainder of rexps *)

val parse_rexp_smod : lno -> rexp contextual -> rexp contextual -> rexp contextual
(** [parse_rexp_smod lno e1_tok e2_tok] parses a signed mod of rexps *)

val parse_rexp_and : lno -> rexp contextual -> rexp contextual -> rexp contextual
(** [parse_rexp_and lno e1_tok e2_tok] parses a bitwise AND of rexps *)

val parse_rexp_or : lno -> rexp contextual -> rexp contextual -> rexp contextual
(** [parse_rexp_or lno e1_tok e2_tok] parses a bitwise OR of rexps *)

val parse_rexp_xor : lno -> rexp contextual -> rexp contextual -> rexp contextual
(** [parse_rexp_xor lno e1_tok e2_tok] parses a bitwise XOR of rexps *)

val parse_rexp_shl : lno -> rexp contextual -> rexp contextual -> rexp contextual
(** [parse_rexp_shl lno e1_tok e2_tok] parses a logical left shift of rexp *)

val parse_rexp_shr : lno -> rexp contextual -> rexp contextual -> rexp contextual
(** [parse_rexp_shr lno e1_tok e2_tok] parses a logical right shift of rexp *)

val parse_rexp_sar : lno -> rexp contextual -> rexp contextual -> rexp contextual
(** [parse_rexp_sar lno e1_tok e2_tok] parses an arithmetic right shift of rexp *)

val parse_rexp_rol : lno -> rexp contextual -> rexp contextual -> rexp contextual
(** [parse_rexp_rol lno e1_tok e2_tok] parses a left rotation of rexp *)

val parse_rexp_ror : lno -> rexp contextual -> rexp contextual -> rexp contextual
(** [parse_rexp_ror lno e1_tok e2_tok] parses a right rotation of rexp *)

val parse_rexp_concat : lno -> rexp contextual -> rexp contextual -> rexp contextual
(** [parse_rexp_concat lno e1_tok e2_tok] parses a bit-vector concatenation of rexps *)

val parse_rexp_adds : lno -> rexp list contextual -> rexp contextual
(** [parse_rexp_adds lno es_tok] parses an addition of a list of rexps *)

val parse_rexp_muls : lno -> rexp list contextual -> rexp contextual
(** [parse_rexp_muls lno es_tok] parses a multiplication of a list of rexps *)

val parse_rexp_ulimbs : lno -> Z.t contextual -> rexp list contextual -> rexp contextual
(** [parse_rexp_ulimbs lno w_tok es_tok] parses a unsigned limbs *)

val parse_rexp_slimbs : lno -> Z.t contextual -> rexp list contextual -> rexp contextual
(** [parse_rexp_slimbs lno w_tok es_tok] parses signed limbs *)

val parse_vrexp_slices : lno -> rexp list contextual -> selection list -> rexp list contextual
(** [parse_vrexp_slices lno ve_tok sels] parses slices of a vector rexp *)

val parse_vrexp_uext : lno -> rexp list contextual -> Z.t contextual -> rexp list contextual
(** [parse_vrexp_uext lno ve_tok i_tok] parses an unsigned extension of a vector rexp *)

val parse_vrexp_sext : lno -> rexp list contextual -> Z.t contextual -> rexp list contextual
(** [parse_vrexp_sext lno ve_tok i_tok] parses a signed extension of a vector rexp *)

val parse_vrexp_neg : lno -> rexp list contextual -> rexp list contextual
(** [parse_vrexp_neg lno ve_tok] parses a negation of a vector rexp *)

val parse_vrexp_not : lno -> rexp list contextual -> rexp list contextual
(** [parse_vrexp_not lno ve_tok] parses a bitwise NOT of a vector rexp *)

val parse_vrexp_add : lno -> rexp list contextual -> rexp list contextual -> rexp list contextual
(** [parse_vrexp_add lno e1_tok e2_tok] parses an addition of rexp *)

val parse_vrexp_sub : lno -> rexp list contextual -> rexp list contextual -> rexp list contextual
(** [parse_vrexp_sub lno e1_tok e2_tok] parses a subtraction of rexp *)

val parse_vrexp_mul : lno -> rexp list contextual -> rexp list contextual -> rexp list contextual
(** [parse_vrexp_mul lno e1_tok e2_tok] parses a multiplication of rexp *)

val parse_vrexp_sq : lno -> rexp list contextual -> rexp list contextual
(** [parse_vrexp_sq lno ve_tok] parses a square of a vector rexp *)

val parse_vrexp_umod : lno -> rexp list contextual -> rexp list contextual -> rexp list contextual
(** [parse_vrexp_umod lno e1_tok e2_tok] parses an unsigned mod of rexp *)

val parse_vrexp_srem : lno -> rexp list contextual -> rexp list contextual -> rexp list contextual
(** [parse_vrexp_srem lno e1_tok e2_tok] parses a signed remainder of rexp *)

val parse_vrexp_smod : lno -> rexp list contextual -> rexp list contextual -> rexp list contextual
(** [parse_vrexp_smod lno e1_tok e2_tok] parses a signed mod of rexp *)

val parse_vrexp_and : lno -> rexp list contextual -> rexp list contextual -> rexp list contextual
(** [parse_vrexp_and lno e1_tok e2_tok] parses an AND of rexp *)

val parse_vrexp_or : lno -> rexp list contextual -> rexp list contextual -> rexp list contextual
(** [parse_vrexp_or lno e1_tok e2_tok] parses an OR of rexp *)

val parse_vrexp_xor : lno -> rexp list contextual -> rexp list contextual -> rexp list contextual
(** [parse_vrexp_xor lno e1_tok e2_tok] parses an XOR of rexp *)

val parse_vrexp_shl : lno -> rexp list contextual -> rexp list contextual -> rexp list contextual
(** [parse_vrexp_shl lno e1_tok e2_tok] parses a left shift of rexp *)

val parse_vrexp_shr : lno -> rexp list contextual -> rexp list contextual -> rexp list contextual
(** [parse_vrexp_shr lno e1_tok e2_tok] parses a logical right shift of rexp *)

val parse_vrexp_sar : lno -> rexp list contextual -> rexp list contextual -> rexp list contextual
(** [parse_vrexp_sar lno e1_tok e2_tok] parses an arithmetic right shift of rexp *)

val parse_vrexp_rol : lno -> rexp list contextual -> rexp list contextual -> rexp list contextual
(** [parse_vrexp_rol lno e1_tok e2_tok] parses a left rotation of rexp *)

val parse_vrexp_ror : lno -> rexp list contextual -> rexp list contextual -> rexp list contextual
(** [parse_vrexp_ror lno e1_tok e2_tok] parses a right rotation of rexp *)

val parse_vrexp_concat : lno -> rexp list contextual -> rexp list contextual -> rexp list contextual
(** [parse_vrexp_concat lno ve1_tok ve2_tok] parses bit-vector concatenation of two vector elements *)

val parse_vrexp_adds : lno -> rexp list list contextual -> rexp list contextual
(** [parse_vrexp_adds lno ves] returns a vector [e0; e1; ...] where [ei] is the addition of all [i]-th elements in vectors in [ves] *)

val parse_vrexp_muls : lno -> rexp list list contextual -> rexp list contextual
(** [parse_vrexp_adds lno ves] returns a vector [e0; e1; ...] where [ei] is the multiplication of all [i]-th elements in vectors in [ves] *)

val parse_vrexp_ulimbs : lno -> Z.t contextual -> rexp list list contextual -> rexp list contextual
(** [parse_vrexp_ulimbs lno w_tok ves_tok] parses unsigned limbs formed by vectors of rexps *)

val parse_vrexp_slimbs : lno -> Z.t contextual -> rexp list list contextual -> rexp list contextual
(** [parse_vrexp_slimbs lno w_tok ves_tok] parses signed limbs formed by vectors of rexps *)

val parse_vrexp_append : lno -> rexp list contextual -> rexp list contextual -> rexp list contextual
(** [parse_vrexp_append lno ve1_tok ve2_tok] parses a concatenation of two vectors *)

val parse_rexps_cons : lno -> rexp contextual -> rexp list contextual -> rexp list contextual
(** [parse_rexps_cons lno vr_tok vrs_tok] parses a head rexp and a tail rexp list as a list.
    All the rexps in the list must have the same width. *)

val parse_vrexps_cons : lno -> (rexp list) contextual -> (rexp list list) contextual -> (rexp list list) contextual
(** [parse_vrexps_cons lno vr_tok vrs_tok] parses a head rexp vector and a tail rexp vector list as a list.
    All vectors must have the same length. All rexps must have the same width. *)


(* ---------- Variables and Constants Parsing ---------- *)

val parse_actuals_all : lno -> (typ list * typ list -> (typ list * typ list) * atom list) contextual -> (typ list * typ list -> atom list) contextual
(** [parse_actuals_all lno atoms_tok] parses all actual parameters. *)

val parse_actuals_ins_outs : lno -> (typ list * typ list -> (typ list * typ list) * atom list) contextual -> (typ list * typ list -> (typ list * typ list) * atom list) contextual -> (typ list * typ list -> atom list) contextual
(** [parse_actuals_ins_outs lno ins_tok outs_tok] parses all actual parameters which are groupped as input parameters and output parameters *)

val parse_actual_atom_const_exp : lno -> Z.t contextual -> typ option -> (typ list * typ list -> (typ list * typ list) * atom list) contextual
(** [parse_actual_atom_const_exp ctx lno cexp_tok tyopt tys] parses a constant expression [cexp_tok] as an actual atom.
    [tyopt] is an optional type specified explicitly for the constant expression.
    [tys] specifies the types of formal (input and output) parameters starting from the one for this actual.
    If the type of this actual and the type of the corresponding formal parameter
    is compatible, the formal parameter is consumed and the remaining formal parameters are returned. *)

val parse_actual_atom_var : lno -> string -> (typ list * typ list -> (typ list * typ list) * atom list) contextual
(** [parse_actual_atom_var lno vname] parses a variable as an actual atom.
    [tys] specifies the types of formal (input and output) parameters starting from the one for this actual. *)

val parse_actual_atom_var_expansion : lno -> string -> Z.t -> Z.t -> (typ list * typ list -> (typ list * typ list) * atom list) contextual
(** [parse_actual_atom_var_expansion lno prefix st ed] parses a variable name expansion as actual atoms *)

val parse_var_expansion : lno -> string -> Z.t -> Z.t -> var list contextual
(** [parse_var_expansion lno prefix st ed] parses a variable name expansion with prefix [prefix], initial index [st], and final index [ed] *)

val parse_named_constant : lno -> string -> Z.t contextual
(** [parse_named_constant lno cname] parses a named constant *)

val parse_defined_var : lno -> string -> typ option -> [`AVAR of avar_prim_t]
(** [parse_defined_var lno vname vtypopt] parses a defined variable *)

val parse_gvar : lno -> string -> typ -> var contextual
(** [parse_gvar lno vname vtyp] parses a ghost variable *)

val parse_fvar : lno -> string -> typ -> var list
(** [parse_fvar lno vname vtyp] parses a formal variable *)

val parse_fvar_expansion : lno -> string -> typ -> Z.t -> Z.t -> var list
(** [parse_fvar_expansion lno prefix ty st ed] parses formal variables with names formed by a prefix [prefix] followed by an index from [st] to [ed] *)

val parse_fvar_cons : lno -> var list -> var list -> var list
(** [parse_fvar_cons lno fvs1 fvs2] parses a sequence of formal parameters *)


(* ---------- Globals Parsing ---------- *)

val parse_global_constant : lno -> string -> Z.t contextual -> unit contextual
(** [parse_global_constant lno name n_token] parses a globally defined named constant *)

val parse_proc : lno -> string -> var list * var list -> bexp option contextual -> (lno * instr_t) list -> bexp_prove_with option contextual -> unit contextual
(** [parse_proc lno fname (args, outs) pre_tok instrs post_tok ] parses a procedure *)

val parse_specs : unit contextual -> ((var list * var list) * Typecheck.Std.spec) SM.t
(** [parse_specs procs_tok] returns a map from a procedure name to a tuple
    [((ins, outs), spec)] where [ins] is a list of formal input variables,
    [outs] is a list of formal output variables, and [spec] is the specificaiton
    of the procedure *)

val parse_spec : unit contextual -> (var list * Typecheck.Std.spec)
(** [parse_spec procs_tok] returns the specification of the main procedure *)
