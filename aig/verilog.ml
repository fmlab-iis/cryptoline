
open Qfbv
open Ast.Cryptoline
open Options.Std

(** {1 Verilog Identifier Utilities} *)

let is_verilog_keyword str =
  match str with
  | "always" | "and" | "assign" | "automatic" | "begin" | "buf" | "bufif0" | "bufif1"
  | "case" | "casex" | "casez" | "cell" | "cmos" | "config" | "deassign" | "default"
  | "defparam" | "design" | "disable" | "edge" | "else" | "end" | "endcase" | "endconfig"
  | "endfunction" | "endgenerate" | "endmodule" | "endprimitive" | "endspecify"
  | "endtable" | "endtask" | "event" | "for" | "force" | "forever" | "fork" | "function"
  | "generate" | "genvar" | "highz0" | "highz1" | "if" | "ifnone" | "incdir" | "include"
  | "initial" | "inout" | "input" | "instance" | "integer" | "join" | "large" | "liblist"
  | "library" | "localparam" | "macromodule" | "medium" | "module" | "nand" | "negedge"
  | "nmos" | "nor" | "noshowcancelled" | "not" | "notif0" | "notif1" | "or" | "output"
  | "parameter" | "pmos" | "posedge" | "primitive" | "pull0" | "pull1" | "pulldown"
  | "pullup" | "pulsestyle_onevent" | "pulsestyle_ondetect" | "rcmos" | "real" | "realtime"
  | "reg" | "release" | "repeat" | "rnmos" | "rpmos" | "rtran" | "rtranif0" | "rtranif1"
  | "scalared" | "showcancelled" | "signed" | "small" | "specify" | "specparam" | "strong0"
  | "strong1" | "supply0" | "supply1" | "table" | "task" | "time" | "tran" | "tranif0"
  | "tranif1" | "tri" | "tri0" | "tri1" | "triand" | "trior" | "trireg" | "unsigned"
  | "use" | "uwire" | "vectored" | "wait" | "wand" | "weak0" | "weak1" | "while" | "wire"
  | "wor" | "xnor" | "xor" -> true
  | _ -> false

let is_valid_simple_id_initial c =
  c = '_' || (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')

let is_valid_simple_id_noninitial c =
  c = '_' || c = '$' || (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || (c >= '0' && c <= '9')

let is_valid_simple_id str =
  let len = String.length str in
  let rec check_noninitial i =
    if i >= len then
      true
    else
      is_valid_simple_id_noninitial str.[i]
      && check_noninitial (i + 1) in
  if len = 0 then
    false
  else
    is_valid_simple_id_initial str.[0]
    && check_noninitial 1

let sanitize_id str =
  if is_valid_simple_id str && not (is_verilog_keyword str) then str
  else "\\" ^ str ^ " "


(** {1 Verilog Intermediate Representation (IR)} *)

type vexpr =
  | VVar of string
  | VConst of int * Z.t
  | VSlice of vexpr * int * int
  | VConcat of vexpr list
  | VReplicate of int * vexpr
  | VNot of vexpr
  | VNeg of vexpr
  | VAnd of vexpr * vexpr
  | VOr of vexpr * vexpr
  | VXor of vexpr * vexpr
  | VAdd of vexpr * vexpr
  | VSub of vexpr * vexpr
  | VMul of vexpr * vexpr
  | VDiv of vexpr * vexpr
  | VMod of vexpr * vexpr
  | VShl of vexpr * vexpr
  | VLshr of vexpr * vexpr
  | VAshr of vexpr * vexpr
  | VEq of vexpr * vexpr
  | VNe of vexpr * vexpr
  | VUlt of vexpr * vexpr
  | VUle of vexpr * vexpr
  | VUgt of vexpr * vexpr
  | VUge of vexpr * vexpr
  | VSlt of vexpr * vexpr
  | VSle of vexpr * vexpr
  | VSgt of vexpr * vexpr
  | VSge of vexpr * vexpr
  | VCond of vexpr * vexpr * vexpr
  | VSigned of vexpr

type vstmt =
  | VComment of string
  | VWire of string * int
  | VAssign of vexpr * vexpr

type vmodule = {
  vmod_name : string;
  vmod_inputs : (string * int) list;
  vmod_outputs : (string * int) list;
  vmod_body : vstmt list;
}


(** {1 Verilog Pretty Printer} *)

let bprint_const buf w n =
  if w = 1 then
    if Z.equal n Z.zero then Buffer.add_string buf "1'b0"
    else Buffer.add_string buf "1'b1"
  else
    let two_pow_w = Z.pow (Z.of_int 2) w in
    let r = Z.erem n two_pow_w in
    let pos_n = if Z.lt r Z.zero then Z.add r two_pow_w else r in
    Buffer.add_string buf (string_of_int w);
    Buffer.add_string buf "'d";
    Buffer.add_string buf (Z.to_string pos_n)

let rec bprint_vexpr buf e =
  match e with
  | VVar v ->
    Buffer.add_string buf (sanitize_id v)
  | VConst (w, n) ->
    bprint_const buf w n
  | VSlice (e, hi, lo) ->
    (match e with
     | VVar v ->
       Buffer.add_string buf (sanitize_id v)
     | _ ->
       Buffer.add_char buf '(';
       bprint_vexpr buf e;
       Buffer.add_char buf ')'
    );
    if hi = lo then (
      Buffer.add_char buf '[';
      Buffer.add_string buf (string_of_int hi);
      Buffer.add_char buf ']'
    ) else (
      Buffer.add_char buf '[';
      Buffer.add_string buf (string_of_int hi);
      Buffer.add_char buf ':';
      Buffer.add_string buf (string_of_int lo);
      Buffer.add_char buf ']'
    )
  | VConcat es ->
    let rec loop = function
      | [] -> ()
      | [x] -> bprint_vexpr buf x
      | x::xs ->
        bprint_vexpr buf x;
        Buffer.add_string buf ", ";
        loop xs in
    Buffer.add_char buf '{';
    loop es;
    Buffer.add_char buf '}'
  | VReplicate (n, e) ->
    Buffer.add_char buf '{';
    Buffer.add_string buf (string_of_int n);
    Buffer.add_char buf '{';
    bprint_vexpr buf e;
    Buffer.add_string buf "}}"
  | VNot e ->
    Buffer.add_string buf "(~(";
    bprint_vexpr buf e;
    Buffer.add_string buf "))"
  | VNeg e ->
    Buffer.add_string buf "(-(";
    bprint_vexpr buf e;
    Buffer.add_string buf "))"
  | VAnd (e1, e2) -> bprint_binop buf "&" e1 e2
  | VOr (e1, e2) -> bprint_binop buf "|" e1 e2
  | VXor (e1, e2) -> bprint_binop buf "^" e1 e2
  | VAdd (e1, e2) -> bprint_binop buf "+" e1 e2
  | VSub (e1, e2) -> bprint_binop buf "-" e1 e2
  | VMul (e1, e2) -> bprint_binop buf "*" e1 e2
  | VDiv (e1, e2) -> bprint_binop buf "/" e1 e2
  | VMod (e1, e2) -> bprint_binop buf "%" e1 e2
  | VShl (e1, e2) -> bprint_binop buf "<<" e1 e2
  | VLshr (e1, e2) -> bprint_binop buf ">>" e1 e2
  | VAshr (e1, e2) -> bprint_binop buf ">>>" e1 e2
  | VEq (e1, e2) -> bprint_binop buf "==" e1 e2
  | VNe (e1, e2) -> bprint_binop buf "!=" e1 e2
  | VUlt (e1, e2) -> bprint_binop buf "<" e1 e2
  | VUle (e1, e2) -> bprint_binop buf "<=" e1 e2
  | VUgt (e1, e2) -> bprint_binop buf ">" e1 e2
  | VUge (e1, e2) -> bprint_binop buf ">=" e1 e2
  | VSlt (e1, e2) -> bprint_binop buf "<" (VSigned e1) (VSigned e2)
  | VSle (e1, e2) -> bprint_binop buf "<=" (VSigned e1) (VSigned e2)
  | VSgt (e1, e2) -> bprint_binop buf ">" (VSigned e1) (VSigned e2)
  | VSge (e1, e2) -> bprint_binop buf ">=" (VSigned e1) (VSigned e2)
  | VCond (c, e1, e2) ->
    Buffer.add_char buf '(';
    bprint_vexpr buf c;
    Buffer.add_string buf " ? ";
    bprint_vexpr buf e1;
    Buffer.add_string buf " : ";
    bprint_vexpr buf e2;
    Buffer.add_char buf ')'
  | VSigned e ->
    Buffer.add_string buf "$signed(";
    bprint_vexpr buf e;
    Buffer.add_char buf ')'
and bprint_binop buf op e1 e2 =
  Buffer.add_char buf '(';
  bprint_vexpr buf e1;
  Buffer.add_char buf ' ';
  Buffer.add_string buf op;
  Buffer.add_char buf ' ';
  bprint_vexpr buf e2;
  Buffer.add_char buf ')'

let bprint_port buf dir name w =
  Buffer.add_string buf "  ";
  Buffer.add_string buf dir;
  Buffer.add_string buf " wire [";
  Buffer.add_string buf (string_of_int (w - 1));
  Buffer.add_string buf ":0] ";
  Buffer.add_string buf (sanitize_id name)

let bprint_stmt buf = function
  | VComment c ->
    Buffer.add_string buf "  // ";
    Buffer.add_string buf c;
    Buffer.add_char buf '\n'
  | VWire (name, w) ->
    Buffer.add_string buf "  wire [";
    Buffer.add_string buf (string_of_int (w - 1));
    Buffer.add_string buf ":0] ";
    Buffer.add_string buf (sanitize_id name);
    Buffer.add_string buf ";\n"
  | VAssign (lhs, rhs) ->
    Buffer.add_string buf "  assign ";
    bprint_vexpr buf lhs;
    Buffer.add_string buf " = ";
    bprint_vexpr buf rhs;
    Buffer.add_string buf ";\n"

let bprint_vmodule buf m =
  let add_input (n, w) = ("input", n, w) in
  let add_output (n, w) = ("output", n, w) in
  let ports =
    List.rev_map add_input m.vmod_inputs
    |> List.rev_append (Utils.Std.tmap add_output m.vmod_outputs)
  in
  let rec print_ports = function
    | [] -> ()
    | [(dir, n, w)] ->
      bprint_port buf dir n w;
      Buffer.add_string buf "\n"
    | (dir, n, w) :: rest ->
      bprint_port buf dir n w;
      Buffer.add_string buf ",\n";
      print_ports rest
  in
  Buffer.add_string buf "module ";
  Buffer.add_string buf (sanitize_id m.vmod_name);
  Buffer.add_string buf " (\n";
  print_ports ports;
  Buffer.add_string buf ");\n\n";
  List.iter (bprint_stmt buf) m.vmod_body;
  Buffer.add_string buf "\nendmodule\n";
  Buffer.contents buf

let string_of_vmodule m =
  let buf = Buffer.create (1024 + List.length m.vmod_body * 64) in
  let _ = bprint_vmodule buf m in
  Buffer.contents buf


(** {1 Shorthands} *)

let _vbit0 = VConst (1, Z.zero)
(* Zero-extend e by i bits *)
let vzext i e =
  VConcat [VConst (i, Z.zero); e]
(* Sign-extend e of width w by i bits *)
let vsext i e w =
  VConcat [VReplicate (i, VSlice (e, w - 1, w - 1)); e]


(** {1 Functional Translation Engine} *)

type state = {
  env : vexpr VM.t;
  wid : int;
  extra_inputs : (string * int) list;
  stmts_rev : vstmt list;
}

let new_wire st prefix w =
  let wname = Printf.sprintf "_w%d_%s" st.wid prefix in
  let wire_decl = VWire (wname, w) in
  let var_expr = VVar wname in
  let st' = { st with wid = st.wid + 1; stmts_rev = wire_decl :: st.stmts_rev } in
  (wname, var_expr, st')

let lookup_var st v =
  match VM.find_opt v st.env with
  | Some e -> (e, st)
  | None ->
    let w = size_of_var v in
    let iname = Printf.sprintf "_in_%s_%d" v.vname st.wid in
    let vexpr = VVar iname in
    let st' = {
      st with
      wid = st.wid + 1;
      extra_inputs = (iname, w) :: st.extra_inputs;
      env = VM.add v vexpr st.env
    } in
    (vexpr, st')

let trans_atom st = function
  | Avar v -> lookup_var st v
  | Aconst (ty, n) -> (VConst (size_of_typ ty, n), st)

let rec trans_exp st e =
  match e with
  | Common.Var v -> lookup_var st v
  | Common.Const (w, n) -> (VConst (w, n), st)
  | Common.Not (_, e) ->
    let (ve, st') = trans_exp st e in
    (VNot ve, st')
  | Common.And (_, e1, e2) ->
    let (ve1, st1) = trans_exp st e1 in
    let (ve2, st2) = trans_exp st1 e2 in
    (VAnd (ve1, ve2), st2)
  | Common.Or (_, e1, e2) ->
    let (ve1, st1) = trans_exp st e1 in
    let (ve2, st2) = trans_exp st1 e2 in
    (VOr (ve1, ve2), st2)
  | Common.Xor (_, e1, e2) ->
    let (ve1, st1) = trans_exp st e1 in
    let (ve2, st2) = trans_exp st1 e2 in
    (VXor (ve1, ve2), st2)
  | Common.Neg (_, e) ->
    let (ve, st') = trans_exp st e in
    (VNeg ve, st')
  | Common.Comp (_, e1, e2) ->
    let (ve1, st1) = trans_exp st e1 in
    let (ve2, st2) = trans_exp st1 e2 in
    (VCond (VEq (ve1, ve2), VConst (1, Z.one), VConst (1, Z.zero)), st2)
  | Common.Add (_w, e1, e2) ->
    let (ve1, st1) = trans_exp st e1 in
    let (ve2, st2) = trans_exp st1 e2 in
    (VAdd (ve1, ve2), st2)
  | Common.Sub (_, e1, e2) ->
    let (ve1, st1) = trans_exp st e1 in
    let (ve2, st2) = trans_exp st1 e2 in
    (VSub (ve1, ve2), st2)
  | Common.Mul (_, e1, e2) ->
    let (ve1, st1) = trans_exp st e1 in
    let (ve2, st2) = trans_exp st1 e2 in
    (VMul (ve1, ve2), st2)
  | Common.Udiv (_, e1, e2) ->
    let (ve1, st1) = trans_exp st e1 in
    let (ve2, st2) = trans_exp st1 e2 in
    (VDiv (ve1, ve2), st2)
  | Common.Mod (_, e1, e2) ->
    let (ve1, st1) = trans_exp st e1 in
    let (ve2, st2) = trans_exp st1 e2 in
    (VMod (ve1, ve2), st2)
  | Common.Sdiv (_, e1, e2) ->
    let (ve1, st1) = trans_exp st e1 in
    let (ve2, st2) = trans_exp st1 e2 in
    (VDiv (VSigned ve1, VSigned ve2), st2)
  | Common.Srem (_, e1, e2) ->
    (* Verilog: The sign of the result matches the sign of the first operand of %. *)
    (* QF_BV: 2's complement signed remainder (sign follows dividend) *)
    let (ve1, st1) = trans_exp st e1 in
    let (ve2, st2) = trans_exp st1 e2 in
    (VMod (VSigned ve1, VSigned ve2), st2)
  | Common.Smod (w, e1, e2) ->
    (* QF_BV: 2's complement signed remainder (sign follows divisor) *)
    let (ve1, st1) = trans_exp st e1 in
    let (ve2, st2) = trans_exp st1 e2 in
    let srem = VMod (VSigned ve1, VSigned ve2) in
    let s1 = VSlice (ve1, w - 1, w - 1) in
    let s2 = VSlice (ve2, w - 1, w - 1) in
    let cond = VAnd (VNe (srem, VConst (w, Z.zero)), VXor (s1, s2)) in
    (VCond (cond, VAdd (srem, ve2), srem), st2)
  | Common.Shl (_w, e1, e2) ->
    let (ve1, st1) = trans_exp st e1 in
    let (ve2, st2) = trans_exp st1 e2 in
    (VShl (ve1, ve2), st2)
  | Common.Lshr (_w, e1, e2) ->
    let (ve1, st1) = trans_exp st e1 in
    let (ve2, st2) = trans_exp st1 e2 in
    (VLshr (ve1, ve2), st2)
  | Common.Ashr (_w, e1, e2) ->
    let (ve1, st1) = trans_exp st e1 in
    let (ve2, st2) = trans_exp st1 e2 in
    (VAshr (VSigned ve1, ve2), st2)
  | Common.Rol (w, e, n) ->
    let (ve, st1) = trans_exp st e in
    let (vn, st2) = trans_exp st1 n in
    let sh = VMod (vn, VConst (w, Z.of_int w)) in
    let rhs = VCond (
        VEq (sh, VConst (w, Z.zero)),
        ve,
        VOr (VShl (ve, sh),
             VLshr (ve, VSub (VConst (w, Z.of_int w), sh)))
      ) in
    (rhs, st2)
  | Common.Ror (w, e, n) ->
    let (ve, st1) = trans_exp st e in
    let (vn, st2) = trans_exp st1 n in
    let sh = VMod (vn, VConst (w, Z.of_int w)) in
    let rhs = VCond (
        VEq (sh, VConst (w, Z.zero)),
        ve,
        VOr (VLshr (ve, sh),
             VShl (ve, VSub (VConst (w, Z.of_int w), sh)))
      ) in
    (rhs, st2)
  | Common.Concat (_w1, _w2, e1, e2) ->
    let (ve1, st1) = trans_exp st e1 in
    let (ve2, st2) = trans_exp st1 e2 in
    (VConcat [ve1; ve2], st2)
  | Common.Extract (_w, i, j, e) ->
    let (ve, st') = trans_exp st e in
    (VSlice (ve, i, j), st')
  | Common.Slice (w1, w2, _w3, e) ->
    let (ve, st') = trans_exp st e in
    (VSlice (ve, w1 + w2 - 1, w1), st')
  | Common.High (lo, hi, e) ->
    let (ve, st') = trans_exp st e in
    (VSlice (ve, lo + hi - 1, lo), st')
  | Common.Low (lo, _hi, e) ->
    let (ve, st') = trans_exp st e in
    (VSlice (ve, lo - 1, 0), st')
  | Common.ZeroExtend (_w, i, e) ->
    let (ve, st') = trans_exp st e in
    if i = 0 then (ve, st')
    else (vzext i ve, st')
  | Common.SignExtend (w, i, e) ->
    let (ve, st') = trans_exp st e in
    if i = 0 then (ve, st')
    else (vsext i ve w, st')
  | Common.Ite (_w, c, e1, e2) ->
    let (vc, st1) = trans_bexp st c in
    let (ve1, st2) = trans_exp st1 e1 in
    let (ve2, st3) = trans_exp st2 e2 in
    (VCond (vc, ve1, ve2), st3)
and trans_bexp st b =
  match b with
  | Common.True -> (VConst (1, Z.one), st)
  | Common.Ult (_w, e1, e2) ->
    let (ve1, st1) = trans_exp st e1 in
    let (ve2, st2) = trans_exp st1 e2 in
    (VUlt (ve1, ve2), st2)
  | Common.Ule (_w, e1, e2) ->
    let (ve1, st1) = trans_exp st e1 in
    let (ve2, st2) = trans_exp st1 e2 in
    (VUle (ve1, ve2), st2)
  | Common.Ugt (_w, e1, e2) ->
    let (ve1, st1) = trans_exp st e1 in
    let (ve2, st2) = trans_exp st1 e2 in
    (VUgt (ve1, ve2), st2)
  | Common.Uge (_w, e1, e2) ->
    let (ve1, st1) = trans_exp st e1 in
    let (ve2, st2) = trans_exp st1 e2 in
    (VUge (ve1, ve2), st2)
  | Common.Slt (_w, e1, e2) ->
    let (ve1, st1) = trans_exp st e1 in
    let (ve2, st2) = trans_exp st1 e2 in
    (VSlt (ve1, ve2), st2)
  | Common.Sle (_w, e1, e2) ->
    let (ve1, st1) = trans_exp st e1 in
    let (ve2, st2) = trans_exp st1 e2 in
    (VSle (ve1, ve2), st2)
  | Common.Sgt (_w, e1, e2) ->
    let (ve1, st1) = trans_exp st e1 in
    let (ve2, st2) = trans_exp st1 e2 in
    (VSgt (ve1, ve2), st2)
  | Common.Sge (_w, e1, e2) ->
    let (ve1, st1) = trans_exp st e1 in
    let (ve2, st2) = trans_exp st1 e2 in
    (VSge (ve1, ve2), st2)
  | Common.Eq (_w, e1, e2) ->
    let (ve1, st1) = trans_exp st e1 in
    let (ve2, st2) = trans_exp st1 e2 in
    (VEq (ve1, ve2), st2)
  | Common.Lneg e ->
    let (ve, st') = trans_bexp st e in
    (VNot ve, st')
  | Common.Conj (e1, e2) ->
    let (ve1, st1) = trans_bexp st e1 in
    let (ve2, st2) = trans_bexp st1 e2 in
    (VAnd (ve1, ve2), st2)
  | Common.Disj (e1, e2) ->
    let (ve1, st1) = trans_bexp st e1 in
    let (ve2, st2) = trans_bexp st1 e2 in
    (VOr (ve1, ve2), st2)
  | Common.Uaddo (w, e1, e2) ->
    let (ve1, st1) = trans_exp st e1 in
    let (ve2, st2) = trans_exp st1 e2 in
    let sum = VAdd (vzext 1 ve1, vzext 1 ve2) in
    (VSlice (sum, w, w), st2)
  | Common.Usubo (w, e1, e2) ->
    let (ve1, st1) = trans_exp st e1 in
    let (ve2, st2) = trans_exp st1 e2 in
    let sub = VSub (vzext 1 ve1, vzext 1 ve2) in
    (VSlice (sub, w, w), st2)
  | Common.Umulo (w, e1, e2) ->
    let (ve1, st1) = trans_exp st e1 in
    let (ve2, st2) = trans_exp st1 e2 in
    let z1 = vzext w ve1 in
    let z2 = vzext w ve2 in
    let mul = VMul (z1, z2) in
    (VNe (VSlice (mul, 2 * w - 1, w), VConst (w, Z.zero)), st2)
  | Common.Saddo (w, e1, e2) ->
    let (ve1, st1) = trans_exp st e1 in
    let (ve2, st2) = trans_exp st1 e2 in
    let s1 = VSlice (ve1, w - 1, w - 1) in
    let s2 = VSlice (ve2, w - 1, w - 1) in
    let sum = VAdd (ve1, ve2) in
    let ssum = VSlice (sum, w - 1, w - 1) in
    let ov = VAnd (VEq (s1, s2), VNe (ssum, s1)) in
    (ov, st2)
  | Common.Ssubo (w, e1, e2) ->
    let (ve1, st1) = trans_exp st e1 in
    let (ve2, st2) = trans_exp st1 e2 in
    let s1 = VSlice (ve1, w - 1, w - 1) in
    let s2 = VSlice (ve2, w - 1, w - 1) in
    let sub = VSub (ve1, ve2) in
    let ssub = VSlice (sub, w - 1, w - 1) in
    let ov = VAnd (VNe (s1, s2), VNe (ssub, s1)) in
    (ov, st2)
  | Common.Smulo (w, e1, e2) ->
    let (ve1, st1) = trans_exp st e1 in
    let (ve2, st2) = trans_exp st1 e2 in
    let ext1 = vsext w ve1 w in
    let ext2 = vsext w ve2 w in
    let mul = VMul (VSigned ext1, VSigned ext2) in
    let high_mul = VSlice (mul, 2 * w - 1, w) in
    let sign_mul = VSlice (mul, w - 1, w - 1) in
    let expected = VReplicate (w, sign_mul) in
    (VNe (high_mul, expected), st2)

let trans_cast st od v a =
  let (va, st1) = trans_atom st a in
  let wv = size_of_var v in
  let wa = size_of_atom a in
  let v_rhs =
    match v.vtyp, typ_of_atom a with
    | Tuint _, Tuint _
    | Tsint _, Tuint _ ->
      if wv = wa then va
      else if wv < wa then VSlice (va, wv - 1, 0)
      else vzext (wv - wa) va
    | Tuint _, Tsint _
    | Tsint _, Tsint _ ->
      if wv = wa then va
      else if wv < wa then VSlice (va, wv - 1, 0)
      else vsext (wv - wa) va wa
  in
  let (_wname_v, v_var, st2) = new_wire st1 v.vname wv in
  let st3 = { st2 with stmts_rev = VAssign (v_var, v_rhs) :: st2.stmts_rev; env = VM.add v v_var st2.env } in
  match od with
  | None -> st3
  | Some d ->
    let wd = size_of_var d in
    let d_rhs =
      match v.vtyp, typ_of_atom a with
      | Tuint _, Tuint _ ->
        if wv >= wa then VConst (wd, Z.zero)
        else VSlice (va, wa - 1, wv)
      | Tuint _, Tsint _ ->
        if wv >= wa then VSlice (va, wa - 1, wa - 1)
        else VSlice (va, wa - 1, wv)
      | Tsint _, Tuint _ ->
        if wv > wa then VConst (wd, Z.zero)
        else if wv = wa then VSlice (va, wa - 1, wa - 1)
        else
          VAdd (
            vzext 1 (VSlice (va, wa - 1, wv)),
            vzext (wa - wv) (VSlice (va, wv - 1, wv - 1))
          )
      | Tsint _, Tsint _ ->
        if wv >= wa then VConst (wd, Z.zero)
        else
          let hi = VSlice (va, wa - 1, wv) in
          VAdd (
            VConcat [VSlice (va, wa - 1, wa - 1); hi],
            vzext (wa - wv) (VSlice (va, wv - 1, wv - 1))
          )
    in
    let (_wname_d, d_var, st4) = new_wire st3 d.vname wd in
    { st4 with stmts_rev = VAssign (d_var, d_rhs) :: st4.stmts_rev; env = VM.add d d_var st4.env }

let trans_instr st instr =
  match instr with
  | Imov (v, a) ->
    let wv = size_of_var v in
    let (va, st1) = trans_atom st a in
    let (_wn, vvar, st2) = new_wire st1 v.vname wv in
    { st2 with
      stmts_rev = VAssign (vvar, va) :: st2.stmts_rev;
      env = VM.add v vvar st2.env }
  | Ishl (v, a, n) ->
    let wv = size_of_var v in
    let (va, st1) = trans_atom st a in
    let (vn, st2) = trans_atom st1 n in
    let (_wn, vvar, st3) = new_wire st2 v.vname wv in
    { st3 with
      stmts_rev = VAssign (vvar, VShl (va, vn)) :: st3.stmts_rev;
      env = VM.add v vvar st3.env }
  | Ishls (l, v, a, n) ->
    let wv = size_of_var v in
    let ni = Z.to_int n in
    let (va, st1) = trans_atom st a in
    let (_wl, vl, st2) = new_wire st1 l.vname ni in
    let (_wv, vv, st3) = new_wire st2 v.vname wv in
    let asgn_l = VAssign (vl, VSlice (va, wv - 1, wv - ni)) in
    let asgn_v = VAssign (vv, VShl (va, VConst (wv, n))) in
    { st3 with
      stmts_rev = asgn_v :: asgn_l :: st3.stmts_rev;
      env = VM.add l vl (VM.add v vv st3.env) }
  | Ishr (v, a, n) ->
    let wv = size_of_var v in
    let (va, st1) = trans_atom st a in
    let (vn, st2) = trans_atom st1 n in
    let (_wn, vvar, st3) = new_wire st2 v.vname wv in
    { st3 with
      stmts_rev = VAssign (vvar, VLshr (va, vn)) :: st3.stmts_rev;
      env = VM.add v vvar st3.env }
  | Ishrs (v, l, a, n) ->
    let wv = size_of_var v in
    let ni = Z.to_int n in
    let (va, st1) = trans_atom st a in
    let (_wv, vv, st2) = new_wire st1 v.vname wv in
    let (_wl, vl, st3) = new_wire st2 l.vname ni in
    let asgn_v = VAssign (vv, VLshr (va, VConst (wv, n))) in
    let asgn_l = VAssign (vl, VSlice (va, ni - 1, 0)) in
    { st3 with
      stmts_rev = asgn_l :: asgn_v :: st3.stmts_rev;
      env = VM.add v vv (VM.add l vl st3.env) }
  | Isar (v, a, n) ->
    let wv = size_of_var v in
    let (va, st1) = trans_atom st a in
    let (vn, st2) = trans_atom st1 n in
    let (_wn, vvar, st3) = new_wire st2 v.vname wv in
    { st3 with
      stmts_rev = VAssign (vvar, VAshr (VSigned va, vn)) :: st3.stmts_rev;
      env = VM.add v vvar st3.env }
  | Isars (v, l, a, n) ->
    let wv = size_of_var v in
    let ni = Z.to_int n in
    let (va, st1) = trans_atom st a in
    let (_wv, vv, st2) = new_wire st1 v.vname wv in
    let (_wl, vl, st3) = new_wire st2 l.vname ni in
    let asgn_v = VAssign (vv, VAshr (VSigned va, VConst (wv, n))) in
    let asgn_l = VAssign (vl, VSlice (va, ni - 1, 0)) in
    { st3 with
      stmts_rev = asgn_l :: asgn_v :: st3.stmts_rev;
      env = VM.add v vv (VM.add l vl st3.env) }
  | Icshl (vh, vl, a1, a2, n) ->
    let w1 = size_of_var vh in
    let w2 = size_of_var vl in
    let (va1, st1) = trans_atom st a1 in
    let (va2, st2) = trans_atom st1 a2 in
    let (_wsh, vsh, st3) = new_wire st2 "cshl_tmp" (w1 + w2) in
    let (_wvh, vvh, st4) = new_wire st3 vh.vname w1 in
    let (_wvl, vvl, st5) = new_wire st4 vl.vname w2 in
    let asgn_sh = VAssign (vsh, VShl (VConcat [va1; va2], VConst (w1 + w2, n))) in
    let asgn_vh = VAssign (vvh, VSlice (vsh, w1 + w2 - 1, w2)) in
    let asgn_vl = VAssign (vvl, VLshr (VSlice (vsh, w2 - 1, 0), VConst (w2, n))) in
    { st5 with
      stmts_rev = asgn_vl :: asgn_vh :: asgn_sh :: st5.stmts_rev;
      env = VM.add vh vvh (VM.add vl vvl st5.env) }
  | Icshls (l, vh, vl, a1, a2, n) ->
    let w1 = size_of_var vh in
    let w2 = size_of_var vl in
    let ni = Z.to_int n in
    let (va1, st1) = trans_atom st a1 in
    let (va2, st2) = trans_atom st1 a2 in
    let (_wsh, vsh, st3) = new_wire st2 "cshl_tmp" (w1 + w2) in
    let (_wvh, vvh, st4) = new_wire st3 vh.vname w1 in
    let (_wvl, vvl, st5) = new_wire st4 vl.vname w2 in
    let (_wl, vl_var, st6) = new_wire st5 l.vname ni in
    let asgn_sh = VAssign (vsh, VShl (VConcat [va1; va2], VConst (w1 + w2, n))) in
    let asgn_vh = VAssign (vvh, VSlice (vsh, w1 + w2 - 1, w2)) in
    let asgn_vl = VAssign (vvl, VLshr (VSlice (vsh, w2 - 1, 0), VConst (w2, n))) in
    let asgn_l = VAssign (vl_var, VSlice (va1, w1 - 1, w1 - ni)) in
    { st6 with
      stmts_rev = asgn_l :: asgn_vl :: asgn_vh :: asgn_sh :: st6.stmts_rev;
      env = VM.add l vl_var (VM.add vh vvh (VM.add vl vvl st6.env)) }
  | Icshr (vh, vl, a1, a2, n) ->
    let w1 = size_of_var vh in
    let w2 = size_of_var vl in
    let (va1, st1) = trans_atom st a1 in
    let (va2, st2) = trans_atom st1 a2 in
    let (_wsh, vsh, st3) = new_wire st2 "cshr_tmp" (w1 + w2) in
    let (_wvh, vvh, st4) = new_wire st3 vh.vname w1 in
    let (_wvl, vvl, st5) = new_wire st4 vl.vname w2 in
    let asgn_sh = VAssign (vsh, VLshr (VConcat [va1; va2], VConst (w1 + w2, n))) in
    let asgn_vh = VAssign (vvh, VSlice (vsh, w1 + w2 - 1, w2)) in
    let asgn_vl = VAssign (vvl, VSlice (vsh, w2 - 1, 0)) in
    { st5 with
      stmts_rev = asgn_vl :: asgn_vh :: asgn_sh :: st5.stmts_rev;
      env = VM.add vh vvh (VM.add vl vvl st5.env) }
  | Icshrs (vh, vl, l, a1, a2, n) ->
    let w1 = size_of_var vh in
    let w2 = size_of_var vl in
    let ni = Z.to_int n in
    let (va1, st1) = trans_atom st a1 in
    let (va2, st2) = trans_atom st1 a2 in
    let (_wsh, vsh, st3) = new_wire st2 "cshr_tmp" (w1 + w2) in
    let (_wvh, vvh, st4) = new_wire st3 vh.vname w1 in
    let (_wvl, vvl, st5) = new_wire st4 vl.vname w2 in
    let (_wl, vl_var, st6) = new_wire st5 l.vname ni in
    let asgn_sh = VAssign (vsh, VLshr (VConcat [va1; va2], VConst (w1 + w2, n))) in
    let asgn_vh = VAssign (vvh, VSlice (vsh, w1 + w2 - 1, w2)) in
    let asgn_vl = VAssign (vvl, VSlice (vsh, w2 - 1, 0)) in
    let asgn_l = VAssign (vl_var, VSlice (va2, ni - 1, 0)) in
    { st6 with
      stmts_rev = asgn_l :: asgn_vl :: asgn_vh :: asgn_sh :: st6.stmts_rev;
      env = VM.add vh vvh (VM.add vl vvl (VM.add l vl_var st6.env)) }
  | Irol (v, a, n) ->
    let wv = size_of_var v in
    let (va, st1) = trans_atom st a in
    let (vn, st2) = trans_atom st1 n in
    let rhs =
      match n with
      | Aconst (_, z) ->
        let ni = (Z.to_int z) mod wv in
        if ni = 0 then va
        else VOr (VShl (va, VConst (wv, Z.of_int ni)),
                  VLshr (va, VConst (wv, Z.of_int (wv - ni))))
      | Avar _ ->
        let sh = VMod (vn, VConst (wv, Z.of_int wv)) in
        VCond (VEq (sh, VConst (wv, Z.zero)),
               va,
               VOr (VShl (va, sh),
                    VLshr (va, VSub (VConst (wv, Z.of_int wv), sh))))
    in
    let (_wn, vvar, st3) = new_wire st2 v.vname wv in
    { st3 with
      stmts_rev = VAssign (vvar, rhs) :: st3.stmts_rev;
      env = VM.add v vvar st3.env }
  | Iror (v, a, n) ->
    let wv = size_of_var v in
    let (va, st1) = trans_atom st a in
    let (vn, st2) = trans_atom st1 n in
    let rhs =
      match n with
      | Aconst (_, z) ->
        let ni = (Z.to_int z) mod wv in
        if ni = 0 then va
        else VOr (VLshr (va, VConst (wv, Z.of_int ni)),
                  VShl (va, VConst (wv, Z.of_int (wv - ni))))
      | Avar _ ->
        let sh = VMod (vn, VConst (wv, Z.of_int wv)) in
        VCond (VEq (sh, VConst (wv, Z.zero)),
               va,
               VOr (VLshr (va, sh),
                    VShl (va, VSub (VConst (wv, Z.of_int wv), sh))))
    in
    let (_wn, vvar, st3) = new_wire st2 v.vname wv in
    { st3 with
      stmts_rev = VAssign (vvar, rhs) :: st3.stmts_rev;
      env = VM.add v vvar st3.env }
  | Inondet v ->
    lookup_var st v |> snd
  | Icmov (v, c, a1, a2) ->
    let wv = size_of_var v in
    let (vc, st1) = trans_atom st c in
    let (va1, st2) = trans_atom st1 a1 in
    let (va2, st3) = trans_atom st2 a2 in
    let (_wn, vvar, st4) = new_wire st3 v.vname wv in
    { st4 with
      stmts_rev = VAssign (vvar, VCond (vc, va1, va2)) :: st4.stmts_rev;
      env = VM.add v vvar st4.env }
  | Inop -> st
  | Iadd (v, a1, a2) ->
    let wv = size_of_var v in
    let (va1, st1) = trans_atom st a1 in
    let (va2, st2) = trans_atom st1 a2 in
    let (_wn, vvar, st3) = new_wire st2 v.vname wv in
    { st3 with
      stmts_rev = VAssign (vvar, VAdd (va1, va2)) :: st3.stmts_rev;
      env = VM.add v vvar st3.env }
  | Iadds (c, v, a1, a2) ->
    let wv = size_of_var v in
    let (va1, st1) = trans_atom st a1 in
    let (va2, st2) = trans_atom st1 a2 in
    let (_wext, vext, st3) = new_wire st2 "adds_tmp" (wv + 1) in
    let (_wc, vc, st4) = new_wire st3 c.vname 1 in
    let (_wv, vv, st5) = new_wire st4 v.vname wv in
    let asgn_ext = VAssign (vext, VAdd (vzext 1 va1, vzext 1 va2)) in
    let asgn_c = VAssign (vc, VSlice (vext, wv, wv)) in
    let asgn_v = VAssign (vv, VSlice (vext, wv - 1, 0)) in
    { st5 with
      stmts_rev = asgn_v :: asgn_c :: asgn_ext :: st5.stmts_rev;
      env = VM.add c vc (VM.add v vv st5.env) }
  | Iadc (v, a1, a2, y) ->
    let wv = size_of_var v in
    let (va1, st1) = trans_atom st a1 in
    let (va2, st2) = trans_atom st1 a2 in
    let (vy, st3) = trans_atom st2 y in
    let ext_y = if wv = 1 then vy else vzext (wv - 1) vy in
    let (_wn, vvar, st4) = new_wire st3 v.vname wv in
    { st4 with
      stmts_rev = VAssign (vvar, VAdd (VAdd (va1, va2), ext_y)) :: st4.stmts_rev;
      env = VM.add v vvar st4.env }
  | Iadcs (c, v, a1, a2, y) ->
    let wv = size_of_var v in
    let (va1, st1) = trans_atom st a1 in
    let (va2, st2) = trans_atom st1 a2 in
    let (vy, st3) = trans_atom st2 y in
    let (_wext, vext, st4) = new_wire st3 "adcs_tmp" (wv + 1) in
    let (_wc, vc, st5) = new_wire st4 c.vname 1 in
    let (_wv, vv, st6) = new_wire st5 v.vname wv in
    let asgn_ext = VAssign (vext,
                            VAdd (VAdd (vzext 1 va1, vzext 1 va2),
                                  vzext wv vy)) in
    let asgn_c = VAssign (vc, VSlice (vext, wv, wv)) in
    let asgn_v = VAssign (vv, VSlice (vext, wv - 1, 0)) in
    { st6 with
      stmts_rev = asgn_v :: asgn_c :: asgn_ext :: st6.stmts_rev;
      env = VM.add c vc (VM.add v vv st6.env) }
  | Isub (v, a1, a2) ->
    let wv = size_of_var v in
    let (va1, st1) = trans_atom st a1 in
    let (va2, st2) = trans_atom st1 a2 in
    let (_wn, vvar, st3) = new_wire st2 v.vname wv in
    { st3 with stmts_rev = VAssign (vvar, VSub (va1, va2)) :: st3.stmts_rev; env = VM.add v vvar st3.env }
  | Isubc (c, v, a1, a2) ->
    let wv = size_of_var v in
    let (va1, st1) = trans_atom st a1 in
    let (va2, st2) = trans_atom st1 a2 in
    let ext_a1 = vzext 1 va1 in
    let ext_not_a2 = vzext 1 (VNot va2) in
    let one = VConst (wv + 1, Z.one) in
    let (_wext, vext, st3) = new_wire st2 "subc_tmp" (wv + 1) in
    let (_wc, vc, st4) = new_wire st3 c.vname 1 in
    let (_wv, vv, st5) = new_wire st4 v.vname wv in
    let asgn_ext = VAssign (vext, VAdd (VAdd (ext_a1, ext_not_a2), one)) in
    let asgn_c = VAssign (vc, VSlice (vext, wv, wv)) in
    let asgn_v = VAssign (vv, VSlice (vext, wv - 1, 0)) in
    { st5 with
      stmts_rev = asgn_v :: asgn_c :: asgn_ext :: st5.stmts_rev;
      env = VM.add c vc (VM.add v vv st5.env)
    }
  | Isubb (c, v, a1, a2) ->
    let wv = size_of_var v in
    let (va1, st1) = trans_atom st a1 in
    let (va2, st2) = trans_atom st1 a2 in
    let ext_a1 = vzext 1 va1 in
    let ext_a2 = vzext 1 va2 in
    let (_wext, vext, st3) = new_wire st2 "subb_tmp" (wv + 1) in
    let (_wc, vc, st4) = new_wire st3 c.vname 1 in
    let (_wv, vv, st5) = new_wire st4 v.vname wv in
    let asgn_ext = VAssign (vext, VSub (ext_a1, ext_a2)) in
    let asgn_c = VAssign (vc, VSlice (vext, wv, wv)) in
    let asgn_v = VAssign (vv, VSlice (vext, wv - 1, 0)) in
    { st5 with
      stmts_rev = asgn_v :: asgn_c :: asgn_ext :: st5.stmts_rev;
      env = VM.add c vc (VM.add v vv st5.env)
    }
  | Isbc (v, a1, a2, y) ->
    let wv = size_of_var v in
    let (va1, st1) = trans_atom st a1 in
    let (va2, st2) = trans_atom st1 a2 in
    let (vy, st3) = trans_atom st2 y in
    let ext_y = if wv = 1 then vy else vzext (wv - 1) vy in
    let (_wn, vvar, st4) = new_wire st3 v.vname wv in
    { st4 with stmts_rev = VAssign (vvar, VAdd (VAdd (va1, VNot va2), ext_y)) :: st4.stmts_rev; env = VM.add v vvar st4.env }
  | Isbcs (c, v, a1, a2, y) ->
    let wv = size_of_var v in
    let (va1, st1) = trans_atom st a1 in
    let (va2, st2) = trans_atom st1 a2 in
    let (vy, st3) = trans_atom st2 y in
    let ext_a1 = vzext 1 va1 in
    let ext_not_a2 = vzext 1 (VNot va2) in
    let ext_y = vzext wv vy in
    let (_wext, vext, st4) = new_wire st3 "sbcs_tmp" (wv + 1) in
    let (_wc, vc, st5) = new_wire st4 c.vname 1 in
    let (_wv, vv, st6) = new_wire st5 v.vname wv in
    let asgn_ext = VAssign (vext, VAdd (VAdd (ext_a1, ext_not_a2), ext_y)) in
    let asgn_c = VAssign (vc, VSlice (vext, wv, wv)) in
    let asgn_v = VAssign (vv, VSlice (vext, wv - 1, 0)) in
    { st6 with
      stmts_rev = asgn_v :: asgn_c :: asgn_ext :: st6.stmts_rev;
      env = VM.add c vc (VM.add v vv st6.env)
    }
  | Isbb (v, a1, a2, y) ->
    let wv = size_of_var v in
    let (va1, st1) = trans_atom st a1 in
    let (va2, st2) = trans_atom st1 a2 in
    let (vy, st3) = trans_atom st2 y in
    let ext_y = if wv = 1 then vy else vzext (wv - 1) vy in
    let (_wn, vvar, st4) = new_wire st3 v.vname wv in
    { st4 with stmts_rev = VAssign (vvar, VSub (va1, VAdd (va2, ext_y))) :: st4.stmts_rev; env = VM.add v vvar st4.env }
  | Isbbs (c, v, a1, a2, y) ->
    let wv = size_of_var v in
    let (va1, st1) = trans_atom st a1 in
    let (va2, st2) = trans_atom st1 a2 in
    let (vy, st3) = trans_atom st2 y in
    let ext_a1 = vzext 1 va1 in
    let ext_a2 = vzext 1 va2 in
    let ext_y = vzext wv vy in
    let (_wext, vext, st4) = new_wire st3 "sbbs_tmp" (wv + 1) in
    let (_wc, vc, st5) = new_wire st4 c.vname 1 in
    let (_wv, vv, st6) = new_wire st5 v.vname wv in
    let asgn_ext = VAssign (vext, VSub (ext_a1, VAdd (ext_a2, ext_y))) in
    let asgn_c = VAssign (vc, VSlice (vext, wv, wv)) in
    let asgn_v = VAssign (vv, VSlice (vext, wv - 1, 0)) in
    { st6 with
      stmts_rev = asgn_v :: asgn_c :: asgn_ext :: st6.stmts_rev;
      env = VM.add c vc (VM.add v vv st6.env)
    }
  | Imul (v, a1, a2) ->
    let wv = size_of_var v in
    let (va1, st1) = trans_atom st a1 in
    let (va2, st2) = trans_atom st1 a2 in
    let (_wn, vvar, st3) = new_wire st2 v.vname wv in
    { st3 with stmts_rev = VAssign (vvar, VMul (va1, va2)) :: st3.stmts_rev; env = VM.add v vvar st3.env }
  | Imuls (c, v, a1, a2) ->
    let wv = size_of_var v in
    let is_signed = var_is_signed v in
    let (va1, st1) = trans_atom st a1 in
    let (va2, st2) = trans_atom st1 a2 in
    let ext a =
      if is_signed then vsext wv a wv
      else vzext wv a
    in
    let ext_a1 = ext va1 in
    let ext_a2 = ext va2 in
    let (_wmul, vmul, st3) = new_wire st2 "muls_tmp" (2 * wv) in
    let (_wc, vc, st4) = new_wire st3 c.vname 1 in
    let (_wv, vv, st5) = new_wire st4 v.vname wv in
    let mul_expr = if is_signed then VMul (VSigned ext_a1, VSigned ext_a2) else VMul (ext_a1, ext_a2) in
    let asgn_mul = VAssign (vmul, mul_expr) in
    let asgn_c = VAssign (vc, VNe (VSlice (vmul, 2 * wv - 1, wv), VConst (wv, Z.zero))) in
    let asgn_v = VAssign (vv, VSlice (vmul, wv - 1, 0)) in
    { st5 with
      stmts_rev = asgn_v :: asgn_c :: asgn_mul :: st5.stmts_rev;
      env = VM.add c vc (VM.add v vv st5.env)
    }
  | Imull (vh, vl, a1, a2) ->
    let wv = size_of_var vh in
    let is_signed = var_is_signed vh in
    let (va1, st1) = trans_atom st a1 in
    let (va2, st2) = trans_atom st1 a2 in
    let ext a =
      if is_signed then vsext wv a wv
      else vzext wv a
    in
    let ext_a1 = ext va1 in
    let ext_a2 = ext va2 in
    let (_wmul, vmul, st3) = new_wire st2 "mull_tmp" (2 * wv) in
    let (_wvh, vvh, st4) = new_wire st3 vh.vname wv in
    let (_wvl, vvl, st5) = new_wire st4 vl.vname wv in
    let mul_expr = if is_signed then VMul (VSigned ext_a1, VSigned ext_a2) else VMul (ext_a1, ext_a2) in
    let asgn_mul = VAssign (vmul, mul_expr) in
    let asgn_vh = VAssign (vvh, VSlice (vmul, 2 * wv - 1, wv)) in
    let asgn_vl = VAssign (vvl, VSlice (vmul, wv - 1, 0)) in
    { st5 with
      stmts_rev = asgn_vl :: asgn_vh :: asgn_mul :: st5.stmts_rev;
      env = VM.add vh vvh (VM.add vl vvl st5.env)
    }
  | Imulj (v, a1, a2) ->
    let w = size_of_atom a1 in
    let is_signed = var_is_signed v in
    let (va1, st1) = trans_atom st a1 in
    let (va2, st2) = trans_atom st1 a2 in
    let ext a =
      if is_signed then vsext w a w
      else vzext w a
    in
    let ext_a1 = ext va1 in
    let ext_a2 = ext va2 in
    let (_wn, vvar, st3) = new_wire st2 v.vname (2 * w) in
    let mul_expr = if is_signed then VMul (VSigned ext_a1, VSigned ext_a2) else VMul (ext_a1, ext_a2) in
    { st3 with stmts_rev = VAssign (vvar, mul_expr) :: st3.stmts_rev; env = VM.add v vvar st3.env }
  | Isplit (vh, vl, a, n) ->
    let w = size_of_var vh in
    let ni = Z.to_int n in
    let (va, st1) = trans_atom st a in
    let hi_slice = VSlice (va, w - 1, ni) in
    let lo_slice = VSlice (va, ni - 1, 0) in
    let ext_hi =
      if var_is_signed vh then vsext ni hi_slice (w - ni)
      else vzext ni hi_slice
    in
    let ext_lo = vzext (w - ni) lo_slice in
    let (_wvh, vvh, st2) = new_wire st1 vh.vname w in
    let (_wvl, vvl, st3) = new_wire st2 vl.vname w in
    let asgn_vh = VAssign (vvh, ext_hi) in
    let asgn_vl = VAssign (vvl, ext_lo) in
    { st3 with
      stmts_rev = asgn_vl :: asgn_vh :: st3.stmts_rev;
      env = VM.add vh vvh (VM.add vl vvl st3.env)
    }
  | Ispl (vh, vl, a, n) ->
    let w = size_of_atom a in
    let ni = Z.to_int n in
    let (va, st1) = trans_atom st a in
    let hi_slice = VSlice (va, w - 1, ni) in
    let lo_slice = VSlice (va, ni - 1, 0) in
    let (_wvh, vvh, st2) = new_wire st1 vh.vname (w - ni) in
    let (_wvl, vvl, st3) = new_wire st2 vl.vname ni in
    let asgn_vh = VAssign (vvh, hi_slice) in
    let asgn_vl = VAssign (vvl, lo_slice) in
    { st3 with
      stmts_rev = asgn_vl :: asgn_vh :: st3.stmts_rev;
      env = VM.add vh vvh (VM.add vl vvl st3.env)
    }
  | Iseteq (v, a1, a2) ->
    let sv = size_of_var v in
    let (va1, st1) = trans_atom st a1 in
    let (va2, st2) = trans_atom st1 a2 in
    let rhs =
      if sv = 1 then VEq (va1, va2)
      else VCond (VEq (va1, va2), VReplicate (sv, VConst (1, Z.one)), VConst (sv, Z.zero))
    in
    let (_wn, vvar, st3) = new_wire st2 v.vname sv in
    { st3 with stmts_rev = VAssign (vvar, rhs) :: st3.stmts_rev; env = VM.add v vvar st3.env }
  | Isetne (v, a1, a2) ->
    let sv = size_of_var v in
    let (va1, st1) = trans_atom st a1 in
    let (va2, st2) = trans_atom st1 a2 in
    let rhs =
      if sv = 1 then VNe (va1, va2)
      else VCond (VNe (va1, va2), VReplicate (sv, VConst (1, Z.one)), VConst (sv, Z.zero))
    in
    let (_wn, vvar, st3) = new_wire st2 v.vname sv in
    { st3 with stmts_rev = VAssign (vvar, rhs) :: st3.stmts_rev; env = VM.add v vvar st3.env }
  | Iand (v, a1, a2) ->
    let wv = size_of_var v in
    let (va1, st1) = trans_atom st a1 in
    let (va2, st2) = trans_atom st1 a2 in
    let (_wn, vvar, st3) = new_wire st2 v.vname wv in
    { st3 with stmts_rev = VAssign (vvar, VAnd (va1, va2)) :: st3.stmts_rev; env = VM.add v vvar st3.env }
  | Ior (v, a1, a2) ->
    let wv = size_of_var v in
    let (va1, st1) = trans_atom st a1 in
    let (va2, st2) = trans_atom st1 a2 in
    let (_wn, vvar, st3) = new_wire st2 v.vname wv in
    { st3 with stmts_rev = VAssign (vvar, VOr (va1, va2)) :: st3.stmts_rev; env = VM.add v vvar st3.env }
  | Ixor (v, a1, a2) ->
    let wv = size_of_var v in
    let (va1, st1) = trans_atom st a1 in
    let (va2, st2) = trans_atom st1 a2 in
    let (_wn, vvar, st3) = new_wire st2 v.vname wv in
    { st3 with stmts_rev = VAssign (vvar, VXor (va1, va2)) :: st3.stmts_rev; env = VM.add v vvar st3.env }
  | Inot (v, a) ->
    let wv = size_of_var v in
    let (va, st1) = trans_atom st a in
    let (_wn, vvar, st2) = new_wire st1 v.vname wv in
    { st2 with stmts_rev = VAssign (vvar, VNot va) :: st2.stmts_rev; env = VM.add v vvar st2.env }
  | Icast (od, v, a) ->
    trans_cast st od v a
  | Ivpc (v, a) ->
    trans_cast st None v a
  | Ijoin (v, ah, al) ->
    let wh = size_of_atom ah in
    let wl = size_of_atom al in
    let (vah, st1) = trans_atom st ah in
    let (val_, st2) = trans_atom st1 al in
    let (_wn, vvar, st3) = new_wire st2 v.vname (wh + wl) in
    { st3 with stmts_rev = VAssign (vvar, VConcat [vah; val_]) :: st3.stmts_rev; env = VM.add v vvar st3.env }
  | Iassert _ | Iassume _ | Icut _ | Ighost _ -> st


(** {1 Main Translation Functions} *)

let verilog_program ?(rename=false) ?(pre=None) ?(top="top") p ins outs =
  let input_names = SS.of_list (List.map (fun v -> v.vname) ins) in
  let input_ports, initial_env =
    List.mapi (fun i v ->
        let port_name =
          if rename then Printf.sprintf "pi%d" i
          else v.vname
        in
        ((port_name, size_of_var v), (v, VVar port_name))
      ) ins
    |> List.split
  in
  let env0 = List.fold_left (fun m (v, expr) -> VM.add v expr m) VM.empty initial_env in
  let st0 = {
    env = env0;
    wid = 0;
    extra_inputs = [];
    stmts_rev = [VComment "CryptoLine program translated to Verilog"];
  } in
  let st = List.fold_left trans_instr st0 p in
  let st, final_outputs =
    match pre with
    | None ->
      (st, List.mapi (fun i v ->
           let (vexpr, _) = lookup_var st v in
           let port_name =
             if rename then Printf.sprintf "po%d" i
             else if SS.mem v.vname input_names then v.vname ^ "_out"
             else v.vname
           in
           (port_name, size_of_var v, vexpr)
         ) outs)
    | Some f ->
      let (vcond, st1) = trans_bexp st (Verify.Common.bexp_rbexp f) in
      let (_wcond, cond_var, st2) = new_wire st1 "precond" 1 in
      let st3 = { st2 with stmts_rev = VAssign (cond_var, vcond) :: st2.stmts_rev } in
      List.fold_left (fun (st_acc, outs_acc) (i, v) ->
          let wv = size_of_var v in
          let (v_out, st_cur) = lookup_var st_acc v in
          let (dummy_var, st_cur) =
            lookup_var st_cur
              (mkvar (Printf.sprintf "__dummy_output_%s__" (string_of_typ v.vtyp)) v.vtyp) in
          let port_name =
            if rename then Printf.sprintf "po%d" i
            else if SS.mem v.vname input_names then v.vname ^ "_out"
            else v.vname
          in
          let mux_expr = VCond (cond_var, v_out, dummy_var) in
          (st_cur, (port_name, wv, mux_expr) :: outs_acc)
        ) (st3, []) (List.mapi (fun i v -> (i, v)) outs)
      |> fun (st_final, outs_rev) -> (st_final, List.rev outs_rev)
  in
  let out_ports = List.map (fun (name, w, _) -> (name, w)) final_outputs in
  let out_assigns = List.map (fun (name, _, vexpr) -> VAssign (VVar name, vexpr)) final_outputs in
  let all_stmts = List.rev_append st.stmts_rev (VComment "Outputs" :: out_assigns) in
  let all_inputs = input_ports @ List.rev st.extra_inputs in
  let vmod = {
    vmod_name = top;
    vmod_inputs = all_inputs;
    vmod_outputs = out_ports;
    vmod_body = all_stmts;
  } in
  string_of_vmodule vmod


(** {1 Yosys AIGER Bridge} *)

let verilog_file_to_aiger_file ?(yosys= !Options.Std.yosys_path) ?(top="top") ?(ascii=false) v_file aag_file =
  let ys_file = tmpfile "yosys_" ".ys" in
  let log_file = tmpfile "yosys_" ".log" in
  let ascii_flag = if ascii then "-ascii " else "" in
  let script =
    Printf.sprintf "read_verilog %s\nprep -top %s\ntechmap\naigmap\nwrite_aiger %s-symbols %s\n"
      v_file top ascii_flag aag_file
  in
  let ch = open_out ys_file in
  output_string ch script;
  close_out ch;
  let cmd = Printf.sprintf "%s -q -s %s > %s 2>&1" yosys (Filename.quote ys_file) (Filename.quote log_file) in
  let ret = Sys.command cmd in
  if ret <> 0 then begin
    let log_content =
      try In_channel.with_open_text log_file In_channel.input_all with _ -> "Unknown error"
    in
    cleanup [ys_file; log_file];
    failwith (Printf.sprintf "Yosys failed with exit code %d:\n%s" ret log_content)
  end else
    cleanup [ys_file; log_file]

let verilog_files_to_miter_file ?(yosys= !Options.Std.yosys_path) ?(top="top") ?(ascii=false) v_file1 v_file2 aag_file =
  let ys_file = tmpfile "yosys_" ".ys" in
  let log_file = tmpfile "yosys_" ".log" in
  let ascii_flag = if ascii then "-ascii " else "" in
  let script =
    Printf.sprintf "read_verilog %s\nrename %s gold\nread_verilog %s\nrename %s gate\nmiter -equiv -flatten gold gate miter\nhierarchy -top miter\nprep\ntechmap\naigmap\nwrite_aiger %s-symbols %s\n"
      v_file1 top v_file2 top ascii_flag aag_file
  in
  let ch = open_out ys_file in
  output_string ch script;
  close_out ch;
  let cmd = Printf.sprintf "%s -q -s %s > %s 2>&1" yosys (Filename.quote ys_file) (Filename.quote log_file) in
  let ret = Sys.command cmd in
  if ret <> 0 then begin
    let log_content =
      try In_channel.with_open_text log_file In_channel.input_all with _ -> "Unknown error"
    in
    cleanup [ys_file; log_file];
    failwith (Printf.sprintf "Yosys failed with exit code %d:\n%s" ret log_content)
  end else
    cleanup [ys_file; log_file]

let verilog_to_aiger ?(yosys= !Options.Std.yosys_path) ?(top="top") ?(ascii=false) v_src =
  let v_file = tmpfile "verilog_" ".v" in
  let aag_file = tmpfile "yosys_" (if ascii then ".aag" else ".aig") in
  let outch = open_out v_file in
  output_string outch v_src;
  close_out outch;
  try
    verilog_file_to_aiger_file ~yosys ~top ~ascii v_file aag_file;
    let in_ch = open_in_bin aag_file in
    let len = in_channel_length in_ch in
    let aiger_content = really_input_string in_ch len in
    close_in in_ch;
    cleanup [v_file; aag_file];
    aiger_content
  with e ->
    cleanup [v_file; aag_file];
    raise e

let verilog_to_miter ?(yosys= !Options.Std.yosys_path) ?(top="top") ?(ascii=false) v_src1 v_src2 =
  let v_file1 = tmpfile "verilog_" ".v" in
  let v_file2 = tmpfile "verilog_" ".v" in
  let aag_file = tmpfile "yosys_" (if ascii then ".aag" else ".aig") in
  let _ =
    let outch = open_out v_file1 in
    output_string outch v_src1;
    close_out outch in
  let _ =
    let outch = open_out v_file2 in
    output_string outch v_src2;
    close_out outch in
  try
    verilog_files_to_miter_file ~yosys ~top ~ascii v_file1 v_file2 aag_file;
    let in_ch = open_in_bin aag_file in
    let len = in_channel_length in_ch in
    let aiger_content = really_input_string in_ch len in
    close_in in_ch;
    cleanup [v_file1; v_file2; aag_file];
    aiger_content
  with e ->
    cleanup [v_file1; v_file2; aag_file];
    raise e
