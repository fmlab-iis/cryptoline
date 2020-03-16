
open Set
open Options.Std
open Ast.Cryptoline

(** QFBV *)

type result = Sat | Unsat | Unknown
exception TimeoutException

type exp =
  | Var of var
  | Const of size * Z.t
  | Not of size * exp
  | And of size * exp * exp
  | Or of size * exp * exp
  | Xor of size * exp * exp
  | Neg of size * exp
  | Add of size * exp * exp
  | Sub of size * exp * exp
  | Mul of size * exp * exp
  | Mod of size * exp * exp
  | Srem of size * exp * exp
  | Smod of size * exp * exp
  | Shl of size * exp * exp
  | Lshr of size * exp * exp
  | Ashr of size * exp * exp
  | Concat of size * size * exp * exp   (* Concat (wh, wl, vh, vl) *)
  | Extract of size * int * int * exp   (* Extract (size_of_exp, i, j, e) where i >= j *)
  | Slice of size * int * int * exp     (* Slice (w1, w2, w3, exp), w1: the width before the slice, w2: the width of the slice, w3: the width after the slice *)
  | High of size * size * exp           (* High (lo, hi, exp) *)
  | Low of size * size * exp            (* Low (lo, hi, exp) *)
  | ZeroExtend of size * int * exp      (* ZeroExtend (size_of_exp, bit_to_extend, exp) *)
  | SignExtend of size * int * exp      (* SignExtend (size_of_exp, bit_to_extend, exp) *)
  | Ite of size * bexp * exp * exp
and bexp =
  | True
  | Ult of size * exp * exp
  | Ule of size * exp * exp
  | Ugt of size * exp * exp
  | Uge of size * exp * exp
  | Slt of size * exp * exp
  | Sle of size * exp * exp
  | Sgt of size * exp * exp
  | Sge of size * exp * exp
  | Eq of size * exp * exp
  | Uaddo of size * exp * exp
  | Usubo of size * exp * exp
  | Umulo of size * exp * exp
  | Saddo of size * exp * exp
  | Ssubo of size * exp * exp
  | Smulo of size * exp * exp
  | Lneg of bexp
  | Conj of bexp * bexp
  | Disj of bexp * bexp

let is_atomic t =
  match t with
  | Var _ | Const _ -> true
  | _ -> false

let rec string_of_exp (e : exp) : string =
  match e with
  | Var v -> string_of_var v
  | Const (_w, n) -> Z.to_string n
  | Not (_w, e) -> if is_atomic e then "!" ^ string_of_exp e ^ "" else "!(" ^ string_of_exp e ^ ")"
  | And (_w, e1, e2) ->
     (if is_atomic e1 then string_of_exp e1 else "(" ^ string_of_exp e1 ^ ")")
     ^ " & "
     ^ (if is_atomic e2 then string_of_exp e2 else "(" ^ string_of_exp e2 ^ ")")
  | Or (_w, e1, e2) ->
     (if is_atomic e1 then string_of_exp e1 else "(" ^ string_of_exp e1 ^ ")")
     ^ " | "
     ^ (if is_atomic e2 then string_of_exp e2 else "(" ^ string_of_exp e2 ^ ")")
  | Xor (_w, e1, e2) ->
     (if is_atomic e1 then string_of_exp e1 else "(" ^ string_of_exp e1 ^ ")")
     ^ " ^ "
     ^ (if is_atomic e2 then string_of_exp e2 else "(" ^ string_of_exp e2 ^ ")")
  | Neg (_w, e) -> if is_atomic e then "-" ^ string_of_exp e ^ "" else "-(" ^ string_of_exp e ^ ")"
  | Add (_w, e1, e2) ->
     (if is_atomic e1 then string_of_exp e1 else "(" ^ string_of_exp e1 ^ ")")
     ^ " + "
     ^ (if is_atomic e2 then string_of_exp e2 else "(" ^ string_of_exp e2 ^ ")")
  | Sub (_w, e1, e2) ->
     (if is_atomic e1 then string_of_exp e1 else "(" ^ string_of_exp e1 ^ ")")
     ^ " - "
     ^ (if is_atomic e2 then string_of_exp e2 else "(" ^ string_of_exp e2 ^ ")")
  | Mul (_w, e1, e2) ->
     (if is_atomic e1 then string_of_exp e1 else "(" ^ string_of_exp e1 ^ ")")
     ^ " * "
     ^ (if is_atomic e2 then string_of_exp e2 else "(" ^ string_of_exp e2 ^ ")")
  | Mod (_w, e1, e2) ->
     (if is_atomic e1 then string_of_exp e1 else "(" ^ string_of_exp e1 ^ ")")
     ^ " % "
     ^ (if is_atomic e2 then string_of_exp e2 else "(" ^ string_of_exp e2 ^ ")")
  | Srem (_w, e1, e2) ->
     (if is_atomic e1 then string_of_exp e1 else "(" ^ string_of_exp e1 ^ ")")
     ^ " srem "
     ^ (if is_atomic e2 then string_of_exp e2 else "(" ^ string_of_exp e2 ^ ")")
  | Smod (_w, e1, e2) ->
     (if is_atomic e1 then string_of_exp e1 else "(" ^ string_of_exp e1 ^ ")")
     ^ " smod "
     ^ (if is_atomic e2 then string_of_exp e2 else "(" ^ string_of_exp e2 ^ ")")
  | Shl (_w, e1, e2) ->
     (if is_atomic e1 then string_of_exp e1 else "(" ^ string_of_exp e1 ^ ")")
     ^ " << "
     ^ (if is_atomic e2 then string_of_exp e2 else "(" ^ string_of_exp e2 ^ ")")
  | Lshr (_w, e1, e2) ->
     (if is_atomic e1 then string_of_exp e1 else "(" ^ string_of_exp e1 ^ ")")
     ^ " >>l "
     ^ (if is_atomic e2 then string_of_exp e2 else "(" ^ string_of_exp e2 ^ ")")
  | Ashr (_w, e1, e2) ->
     (if is_atomic e1 then string_of_exp e1 else "(" ^ string_of_exp e1 ^ ")")
     ^ " >>a "
     ^ (if is_atomic e2 then string_of_exp e2 else "(" ^ string_of_exp e2 ^ ")")
  | Concat (_w1, _w2, e1, e2) ->
     (if is_atomic e1 then string_of_exp e1 else "(" ^ string_of_exp e1 ^ ")")
     ^ "."
     ^ (if is_atomic e2 then string_of_exp e2 else "(" ^ string_of_exp e2 ^ ")")
  | Extract (_w, i, j, e) ->
     (if is_atomic e then string_of_exp e else "(" ^ string_of_exp e ^ ")")
     ^ "[" ^ string_of_int i ^ ", " ^ string_of_int j ^ "]"
  | Slice (w1, w2, w3, e) ->
     (if is_atomic e then string_of_exp e else "(" ^ string_of_exp e ^ ")")
     ^ "{" ^ string_of_int w1 ^ ", " ^ string_of_int w2 ^ ", " ^ string_of_int w3 ^ "}"
  | High (_lo, hi, e) ->
     (if is_atomic e then string_of_exp e else "(" ^ string_of_exp e ^ ")")
     ^ "@h" ^ string_of_int hi
  | Low (_lo, hi, e) ->
     (if is_atomic e then string_of_exp e else "(" ^ string_of_exp e ^ ")")
     ^ "@l" ^ string_of_int hi
  | ZeroExtend (_w, i, e) ->
     (if is_atomic e then string_of_exp e else "(" ^ string_of_exp e ^ ")")
     ^ "@e" ^ string_of_int i
  | SignExtend (_w, i, e) ->
     (if is_atomic e then string_of_exp e else "(" ^ string_of_exp e ^ ")")
     ^ "@s" ^ string_of_int i
  | Ite (_w, c, e1, e2) ->
     "ite (" ^ string_of_bexp c ^") (" ^ string_of_exp e1 ^ ") (" ^ string_of_exp e2 ^ ")"
and string_of_bexp e =
  match e with
  | True -> "True"
  | Ult (_w, e1, e2) -> string_of_exp e1 ^ " <u " ^ string_of_exp e2
  | Ule (_w, e1, e2) -> string_of_exp e1 ^ " <=u " ^ string_of_exp e2
  | Ugt (_w, e1, e2) -> string_of_exp e1 ^ " >u " ^ string_of_exp e2
  | Uge (_w, e1, e2) -> string_of_exp e1 ^ " >=u " ^ string_of_exp e2
  | Slt (_w, e1, e2) -> string_of_exp e1 ^ " <s " ^ string_of_exp e2
  | Sle (_w, e1, e2) -> string_of_exp e1 ^ " <=s " ^ string_of_exp e2
  | Sgt (_w, e1, e2) -> string_of_exp e1 ^ " >s " ^ string_of_exp e2
  | Sge (_w, e1, e2) -> string_of_exp e1 ^ " >=s " ^ string_of_exp e2
  | Eq (_w, e1, e2) -> string_of_exp e1 ^ " = " ^ string_of_exp e2
  | Uaddo (_w, e1, e2) -> string_of_exp e1 ^ " +uo " ^ string_of_exp e2
  | Usubo (_w, e1, e2) -> string_of_exp e1 ^ " -uo " ^ string_of_exp e2
  | Umulo (_w, e1, e2) -> string_of_exp e1 ^ " *uo " ^ string_of_exp e2
  | Saddo (_w, e1, e2) -> string_of_exp e1 ^ " +so " ^ string_of_exp e2
  | Ssubo (_w, e1, e2) -> string_of_exp e1 ^ " -so " ^ string_of_exp e2
  | Smulo (_w, e1, e2) -> string_of_exp e1 ^ " *so " ^ string_of_exp e2
  | Lneg e -> "~ (" ^ string_of_bexp e ^ ")"
  | Conj (e1, e2) -> string_of_bexp e1 ^ " /\\ " ^ string_of_bexp e2
  | Disj (e1, e2) -> string_of_bexp e1 ^ " \\/ " ^ string_of_bexp e2

let _string_of_imp es = String.concat " -> " (List.map string_of_bexp es)

let rec vars_exp e =
  match e with
  | Var v -> VS.singleton v
  | Const _ -> VS.empty
  | Not (_, e) -> vars_exp e
  | And (_, e1, e2)
  | Or (_, e1, e2)
  | Xor (_, e1, e2) -> VS.union (vars_exp e1) (vars_exp e2)
  | Neg (_, e) -> vars_exp e
  | Add (_, e1, e2)
  | Sub (_, e1, e2)
  | Mul (_, e1, e2)
  | Mod (_, e1, e2)
  | Srem (_, e1, e2)
  | Smod (_, e1, e2)
  | Shl (_, e1, e2)
  | Lshr (_, e1, e2)
  | Ashr (_, e1, e2)
  | Concat (_, _, e1, e2) -> VS.union (vars_exp e1) (vars_exp e2)
  | Extract (_, _, _, e)
  | Slice (_, _, _, e)
  | High (_, _, e)
  | Low (_, _, e)
  | ZeroExtend (_, _, e)
  | SignExtend (_, _, e) -> vars_exp e
  | Ite (_, c, e1, e2) -> VS.union (vars_bexp c) (VS.union (vars_exp e1) (vars_exp e2))
and vars_bexp e =
  match e with
  | True -> VS.empty
  | Ult (_, e1, e2)
  | Ule (_, e1, e2)
  | Ugt (_, e1, e2)
  | Uge (_, e1, e2)
  | Slt (_, e1, e2)
  | Sle (_, e1, e2)
  | Sgt (_, e1, e2)
  | Sge (_, e1, e2)
  | Eq (_, e1, e2)
  | Uaddo (_, e1, e2)
  | Usubo (_, e1, e2)
  | Umulo (_, e1, e2) -> VS.union (vars_exp e1) (vars_exp e2)
  | Saddo (_, e1, e2)
  | Ssubo (_, e1, e2)
  | Smulo (_, e1, e2) -> VS.union (vars_exp e1) (vars_exp e2)
  | Lneg e -> vars_bexp e
  | Conj (e1, e2)
  | Disj (e1, e2) -> VS.union (vars_bexp e1) (vars_bexp e2)

let vars_imp es =
  List.fold_left (fun res e -> VS.union res (vars_bexp e)) VS.empty es


(** Solver *)

let _num_16 = Z.of_int 16
let _num_2 = Z.of_int 2

let _hextbl = ["0"; "1"; "2"; "3"; "4"; "5"; "6"; "7"; "8"; "9"; "A"; "B"; "C"; "D"; "E"; "F"]

let hex_of_num w n =
  let n = Z.erem n (Z.pow z_two w) in
  Z.format ("%0" ^ string_of_int (w / 4) ^ "X") n

let bin_of_num w n =
  let n = Z.erem n (Z.pow z_two w) in
  Z.format ("%0" ^ string_of_int w ^ "b") n

let bvnot e = "(bvnot " ^ e ^ ")"
let bvand e1 e2 = "(bvand " ^ e1 ^ " " ^ e2 ^ ")"
let bvor e1 e2 = "(bvor " ^ e1 ^ " " ^ e2 ^ ")"
let bvxor e1 e2 = "(bvxor " ^ e1 ^ " " ^ e2 ^ ")"
let bvneg e = "(bvneg " ^ e ^ ")"
let bvadd e1 e2 = "(bvadd " ^ e1 ^ " " ^ e2 ^ ")"
let bvsub e1 e2 = "(bvsub " ^ e1 ^ " " ^ e2 ^ ")"
let bvmul e1 e2 = "(bvmul " ^ e1 ^ " " ^ e2 ^ ")"
let bvmod e1 e2 = "(bvurem " ^ e1 ^ " " ^ e2 ^ ")"
let bvsrem e1 e2 = "(bvsrem " ^ e1 ^ " " ^ e2 ^ ")"
let bvsmod e1 e2 = "(bvsmod " ^ e1 ^ " " ^ e2 ^ ")"
let bvshl e1 e2 = "(bvshl " ^ e1 ^ " " ^ e2 ^ ")"
let bvlshr e1 e2 = "(bvlshr " ^ e1 ^ " " ^ e2 ^ ")"
let bvashr e1 e2 = "(bvashr " ^ e1 ^ " " ^ e2 ^ ")"
let bvconcat e1 e2 = "(concat " ^ e1 ^ " " ^ e2 ^ ")"
let bvextract i j e = "((_ extract " ^ string_of_int i ^ " " ^ string_of_int j ^ ") " ^ e ^ ")"
let bvslice w1 w2 _w3 e = "((_ extract " ^ string_of_int (w1 + w2 - 1) ^ " " ^ string_of_int w1 ^ ") " ^ e ^ ")"
let bvhigh lo hi e = "((_ extract " ^ string_of_int (lo + hi - 1) ^ " " ^ string_of_int lo ^ ") " ^ e ^ ")"
let bvlow lo _hi e = "((_ extract " ^ string_of_int (lo - 1) ^ " " ^ string_of_int 0 ^ ") " ^ e ^ ")"
let zero_extend i e = "((_ zero_extend " ^ string_of_int i ^ ") " ^ e ^ ")"
let sign_extend i e = "((_ sign_extend " ^ string_of_int i ^ ") " ^ e ^ ")"
let ite c e1 e2 = "(ite " ^ c ^" " ^ e1 ^ " " ^ e2 ^ ")"
let bvult e1 e2 = "(bvult " ^ e1 ^ " " ^ e2 ^ ")"
let bvule e1 e2 = "(bvule " ^ e1 ^ " " ^ e2 ^ ")"
let bvugt e1 e2 = "(bvugt " ^ e1 ^ " " ^ e2 ^ ")"
let bvuge e1 e2 = "(bvuge " ^ e1 ^ " " ^ e2 ^ ")"
let bvslt e1 e2 = "(bvslt " ^ e1 ^ " " ^ e2 ^ ")"
let bvsle e1 e2 = "(bvsle " ^ e1 ^ " " ^ e2 ^ ")"
let bvsgt e1 e2 = "(bvsgt " ^ e1 ^ " " ^ e2 ^ ")"
let bvsge e1 e2 = "(bvsge " ^ e1 ^ " " ^ e2 ^ ")"
let bveq e1 e2 = "(= " ^ e1 ^ " " ^ e2 ^ ")"
let bvneq e1 e2 = "(not (= " ^ e1 ^ " " ^ e2 ^ "))"
let _bvconj e1 e2 = "(and " ^ e1 ^ " " ^ e2 ^ ")"
let _bvdisj e1 e2 = "(or " ^ e1 ^ " " ^ e2 ^ ")"
let bvuaddo w e1 e2 = bveq (bvhigh w 1 (bvadd (zero_extend 1 e1) (zero_extend 1 e2))) "#b1"
let bvusubo w e1 e2 = bveq (bvhigh w 1 (bvsub (zero_extend 1 e1) (zero_extend 1 e2))) "#b1"
let bvumulo w e1 e2 = bvneq (bvhigh w w (bvmul (zero_extend w e1) (zero_extend w e2))) ("(_ bv0 " ^ string_of_int w ^ ")")
let bvsaddo w e1 e2 =
  let sign1 = bvextract (w - 1) (w - 1) e1 in
  let sign2 = bvextract (w - 1) (w - 1) e2 in
  let sum = bvadd e1 e2 in
  let sign_sum = bvextract (w - 1) (w - 1) sum in
  let ov1 = bvand (bvand sign1 sign2) (bvnot sign_sum) in
  let ov2 = bvand (bvand (bvnot sign1) (bvnot sign2)) (sign_sum) in
  bveq (bvor ov1 ov2) "#b1"
let bvssubo w e1 e2 =
  let sign1 = bvextract (w - 1) (w - 1) e1 in
  let sign2 = bvextract (w - 1) (w - 1) e2 in
  let sub = bvsub e1 e2 in
  let sign_sub = bvextract (w - 1) (w - 1) sub in
  let ov1 = bvand (bvand (bvnot sign1) sign2) sign_sub in
  let ov2 = bvand (bvand sign1 (bvnot sign2)) (bvnot sign_sub) in
  bveq (bvor ov1 ov2) "#b1"
let bvsmulo w e1 e2 =
  let rec zeros n =
    if n <= 0 then ""
    else "0" ^ zeros (n - 1) in
  let rec ones n =
    if n <= 0 then ""
    else "1" ^ ones (n - 1) in
  let ext1 = sign_extend w e1 in
  let ext2 = sign_extend w e2 in
  let mul = bvmul ext1 ext2 in
  let sign_mul = bvextract (w - 1) (w - 1) mul in
  let high_mul = bvhigh w w mul in
  let cond = ite (bveq sign_mul "#b1") ("#b" ^ ones w) ("#b" ^ zeros w) in
  bvneq high_mul cond

(** Returns the log of n (base 2) as an integer. *)
let logi n = int_of_float (log (float_of_int n) /. log 2.0)

module WN : OrderedType with type t = (int * Z.t) =
  struct
    type t = (int * Z.t)
    let compare (w1, n1) (w2, n2) =
      if w1 < w2 then -1
      else if w1 > w2 then 1
      else Z.compare n1 n2
  end

module WNMap : Map.S with type key = (int * Z.t) = Map.Make(WN)

class btor_manager (_wordsize : int) =
object(self)
  (** the ID of the next Btor variable *)
  val mutable v = 0

  (** a map from a variable to the corresponding Btor variable *)
  val mutable vmap : int VM.t = VM.empty

  (** a map from a bit-width and an integer to the corresponding Btor variable *)
  val mutable cmap : int WNMap.t = WNMap.empty

  val mutable stmts : string list = []

  (** Returns a new ID. *)
  method newvar =
    let _ = v <- v + 1 in
    v

  (** Sets the corresponding Btor variable of a variable. *)
  method setvar v bv = vmap <- VM.add v bv vmap

  method addstmt stmt = stmts <- stmt::stmts

  method getstmts = List.rev stmts

  method mkvar v =
    try
      VM.find v vmap
    with Not_found ->
      let bv = self#newvar in
      let _ = self#addstmt ("; " ^ string_of_var v) in
      let _ = self#addstmt (Printf.sprintf "%d var %d" bv (size_of_var v)) in
      let _ = self#setvar v bv in
      bv

  method mkconstd w n =
    try
      WNMap.find (w, n) cmap
    with Not_found ->
      let bv = self#newvar in
      (* Boolector does not accept negative numbers. *)
      let n = if Z.lt n Z.zero then Z.add n (Z.pow z_two w) else n in
      let _ = self#addstmt (Printf.sprintf "%d constd %d" bv w ^ " " ^ Z.to_string n) in
      let _ = cmap <- WNMap.add (w, n) bv cmap in
      bv
    | e ->
      fail (Printexc.to_string e)

  method mknot w e =
    let bv = self#newvar in
    let _ = self#addstmt (Printf.sprintf "%d not %d %d" bv w e) in
    bv

  method mkand w e1 e2 =
    let bv = self#newvar in
    let _ = self#addstmt (Printf.sprintf "%d and %d %d %d" bv w e1 e2) in
    bv

  method mkor w e1 e2 =
    let bv = self#newvar in
    let _ = self#addstmt (Printf.sprintf "%d or %d %d %d" bv w e1 e2) in
    bv

  method mkxor w e1 e2 =
    let bv = self#newvar in
    let _ = self#addstmt (Printf.sprintf "%d xor %d %d %d" bv w e1 e2) in
    bv

  method mkneg w e =
    let bv = self#newvar in
    let _ = self#addstmt (Printf.sprintf "%d neg %d %d" bv w e) in
    bv

  method mkadd w e1 e2 =
    let bv = self#newvar in
    let _ = self#addstmt (Printf.sprintf "%d add %d %d %d" bv w e1 e2) in
    bv

  method mksub w e1 e2 =
    let bv = self#newvar in
    let _ = self#addstmt (Printf.sprintf "%d sub %d %d %d" bv w e1 e2) in
    bv

  method mkmul w e1 e2 =
    let bv = self#newvar in
    let _ = self#addstmt (Printf.sprintf "%d mul %d %d %d" bv w e1 e2) in
    bv

  method mkmod w e1 e2 =
    let bv = self#newvar in
    let _ = self#addstmt (Printf.sprintf "%d urem %d %d %d" bv w e1 e2) in
    bv

  method mksrem w e1 e2 =
    let bv = self#newvar in
    let _ = self#addstmt (Printf.sprintf "%d srem %d %d %d" bv w e1 e2) in
    bv

  method mksmod w e1 e2 =
    let bv = self#newvar in
    let _ = self#addstmt (Printf.sprintf "%d smod %d %d %d" bv w e1 e2) in
    bv

  method mksll w e1 e2 =
    let bv = self#newvar in
    let _ = self#addstmt (Printf.sprintf "%d sll %d %d %d" bv w e1 e2) in
    bv

  method mksrl w e1 e2 =
    let bv = self#newvar in
    let _ = self#addstmt (Printf.sprintf "%d srl %d %d %d" bv w e1 e2) in
    bv

  method mksra w e1 e2 =
    let bv = self#newvar in
    let _ = self#addstmt (Printf.sprintf "%d sra %d %d %d" bv w e1 e2) in
    bv

  method mkconcat w1 w2 e1 e2 =
    let bv = self#newvar in
    let _ = self#addstmt (Printf.sprintf "%d concat %d %d %d" bv (w1 + w2) e1 e2) in
    bv

  method mkextract _w i j e =
    let bv = self#newvar in
    let _ = self#addstmt (Printf.sprintf "%d slice %d %d %d %d" bv (i - j + 1) e i j) in
    bv

  method mkslice w1 w2 w3 e = self#mkextract (w1 + w2 + w3) (w1 + w2 - 1) w1 e

  method mkhigh lo hi e = self#mkextract (lo + hi) (lo + hi - 1) lo e

  method mklow lo hi e = self#mkextract (lo + hi) (lo - 1) 0 e

  method mkzeroextend w i e =
    let bv = self#newvar in
    let c = self#mkconstd i Z.zero in
    let _ = self#addstmt (Printf.sprintf "%d concat %d %d %d" bv (w + i) c e) in
    bv

  method mksignextend w i e =
    let bv_pos = self#newvar in
    let bv_neg = self#newvar in
    let bv = self#newvar in
    let neg = self#mkextract w (w - 1) (w - 1) e in
    let c_pos = self#mkconstd i Z.zero in
    let c_neg = self#mkconstd i (Z.sub (Z.pow z_two i) Z.one) in
    let _ = self#addstmt (Printf.sprintf "%d concat %d %d %d" bv_pos (w + i) c_pos e) in
    let _ = self#addstmt (Printf.sprintf "%d concat %d %d %d" bv_neg (w + i) c_neg e) in
    let _ = self#addstmt (Printf.sprintf "%d cond %d %d %d %d" bv (w + i) neg bv_neg bv_pos) in
    bv

  method mkcond w c e1 e2 =
    let bv = self#newvar in
    let _ = self#addstmt (Printf.sprintf "%d cond %d %d %d %d" bv w c e1 e2) in
    bv

  method mkult e1 e2 =
    let bv = self#newvar in
    let _ = self#addstmt (Printf.sprintf "%d ult 1 %d %d" bv e1 e2) in
    bv

  method mkule e1 e2 =
    let bv = self#newvar in
    let _ = self#addstmt (Printf.sprintf "%d ulte 1 %d %d" bv e1 e2) in
    bv

  method mkugt e1 e2 =
    let bv = self#newvar in
    let _ = self#addstmt (Printf.sprintf "%d ugt 1 %d %d" bv e1 e2) in
    bv

  method mkuge e1 e2 =
    let bv = self#newvar in
    let _ = self#addstmt (Printf.sprintf "%d ugte 1 %d %d" bv e1 e2) in
    bv

  method mkslt e1 e2 =
    let bv = self#newvar in
    let _ = self#addstmt (Printf.sprintf "%d slt 1 %d %d" bv e1 e2) in
    bv

  method mksle e1 e2 =
    let bv = self#newvar in
    let _ = self#addstmt (Printf.sprintf "%d slte 1 %d %d" bv e1 e2) in
    bv

  method mksgt e1 e2 =
    let bv = self#newvar in
    let _ = self#addstmt (Printf.sprintf "%d sgt 1 %d %d" bv e1 e2) in
    bv

  method mksge e1 e2 =
    let bv = self#newvar in
    let _ = self#addstmt (Printf.sprintf "%d sgte 1 %d %d" bv e1 e2) in
    bv

  method mkeq e1 e2 =
    let bv = self#newvar in
    let _ = self#addstmt (Printf.sprintf "%d eq 1 %d %d" bv e1 e2) in
    bv

  method mkneq e1 e2 =
    let bv = self#newvar in
    let _ = self#addstmt (Printf.sprintf "%d ne 1 %d %d" bv e1 e2) in
    bv

  method mkuaddo e1 e2 =
    let bv = self#newvar in
    let _ = self#addstmt (Printf.sprintf "%d uaddo 1 %d %d" bv e1 e2) in
    bv

  method mkusubo e1 e2 =
    let bv = self#newvar in
    let _ = self#addstmt (Printf.sprintf "%d usubo 1 %d %d" bv e1 e2) in
    bv

  method mkumulo e1 e2 =
    let bv = self#newvar in
    let _ = self#addstmt (Printf.sprintf "%d umulo 1 %d %d" bv e1 e2) in
    bv

  method mksaddo e1 e2 =
    let bv = self#newvar in
    let _ = self#addstmt (Printf.sprintf "%d saddo 1 %d %d" bv e1 e2) in
    bv

  method mkssubo e1 e2 =
    let bv = self#newvar in
    let _ = self#addstmt (Printf.sprintf "%d ssubo 1 %d %d" bv e1 e2) in
    bv

  method mksmulo e1 e2 =
    let bv = self#newvar in
    let _ = self#addstmt (Printf.sprintf "%d smulo 1 %d %d" bv e1 e2) in
    bv

end

let smtlib2_of_const w n =
  if w / 4 * 4 = w && not !use_binary_repr then "#x" ^ hex_of_num w n
  else "#b" ^ bin_of_num w n

let rec smtlib2_of_exp e =
  match e with
  | Var v -> string_of_var v
  | Const (w, n) -> smtlib2_of_const w n
  | Not (_w, e) -> bvnot (smtlib2_of_exp e)
  | And (_w, e1, e2) -> bvand (smtlib2_of_exp e1) (smtlib2_of_exp e2)
  | Or (_w, e1, e2) -> bvor (smtlib2_of_exp e1) (smtlib2_of_exp e2)
  | Xor (_w, e1, e2) -> bvxor (smtlib2_of_exp e1) (smtlib2_of_exp e2)
  | Neg (_w, e) -> bvneg (smtlib2_of_exp e)
  | Add (_w, e1, e2) -> bvadd (smtlib2_of_exp e1) (smtlib2_of_exp e2)
  | Sub (_w, e1, e2) -> bvsub (smtlib2_of_exp e1) (smtlib2_of_exp e2)
  | Mul (_w, e1, e2) -> bvmul (smtlib2_of_exp e1) (smtlib2_of_exp e2)
  | Mod (_w, e1, e2) -> bvmod (smtlib2_of_exp e1) (smtlib2_of_exp e2)
  | Srem (_w, e1, e2) -> bvsrem (smtlib2_of_exp e1) (smtlib2_of_exp e2)
  | Smod (_w, e1, e2) -> bvsmod (smtlib2_of_exp e1) (smtlib2_of_exp e2)
  | Shl (_w, e1, e2) -> bvshl (smtlib2_of_exp e1) (smtlib2_of_exp e2)
  | Lshr (_w, e1, e2) -> bvlshr (smtlib2_of_exp e1) (smtlib2_of_exp e2)
  | Ashr (_w, e1, e2) -> bvashr (smtlib2_of_exp e1) (smtlib2_of_exp e2)
  | Concat (_w1, _w2, e1, e2) -> bvconcat (smtlib2_of_exp e1) (smtlib2_of_exp e2)
  | Extract (_w, i, j, e) -> bvextract i j (smtlib2_of_exp e)
  | Slice (w1, w2, w3, e) -> bvslice w1 w2 w3 (smtlib2_of_exp e)
  | High (lo, hi, e) -> bvhigh lo hi (smtlib2_of_exp e)
  | Low (lo, hi, e) -> bvlow lo hi (smtlib2_of_exp e)
  | ZeroExtend (_w, i, e) -> zero_extend i (smtlib2_of_exp e)
  | SignExtend (_w, i, e) -> sign_extend i (smtlib2_of_exp e)
  | Ite (_w, c, e1, e2) -> ite (smtlib2_of_bexp c) (smtlib2_of_exp e1) (smtlib2_of_exp e2)
and smtlib2_of_bexp e =
  match e with
  | True -> "true"
  | Ult (_w, e1, e2) -> bvult (smtlib2_of_exp e1) (smtlib2_of_exp e2)
  | Ule (_w, e1, e2) -> bvule (smtlib2_of_exp e1) (smtlib2_of_exp e2)
  | Ugt (_w, e1, e2) -> bvugt (smtlib2_of_exp e1) (smtlib2_of_exp e2)
  | Uge (_w, e1, e2) -> bvuge (smtlib2_of_exp e1) (smtlib2_of_exp e2)
  | Slt (_w, e1, e2) -> bvslt (smtlib2_of_exp e1) (smtlib2_of_exp e2)
  | Sle (_w, e1, e2) -> bvsle (smtlib2_of_exp e1) (smtlib2_of_exp e2)
  | Sgt (_w, e1, e2) -> bvsgt (smtlib2_of_exp e1) (smtlib2_of_exp e2)
  | Sge (_w, e1, e2) -> bvsge (smtlib2_of_exp e1) (smtlib2_of_exp e2)
  | Eq (_w, e1, e2) -> bveq (smtlib2_of_exp e1) (smtlib2_of_exp e2)
  | Uaddo (w, e1, e2) -> bvuaddo w (smtlib2_of_exp e1) (smtlib2_of_exp e2)
  | Usubo (w, e1, e2) -> bvusubo w (smtlib2_of_exp e1) (smtlib2_of_exp e2)
  | Umulo (w, e1, e2) -> bvumulo w (smtlib2_of_exp e1) (smtlib2_of_exp e2)
  | Saddo (w, e1, e2) -> bvsaddo w (smtlib2_of_exp e1) (smtlib2_of_exp e2)
  | Ssubo (w, e1, e2) -> bvssubo w (smtlib2_of_exp e1) (smtlib2_of_exp e2)
  | Smulo (w, e1, e2) -> bvsmulo w (smtlib2_of_exp e1) (smtlib2_of_exp e2)
  | Lneg e -> "(not " ^ smtlib2_of_bexp e ^ ")"
  | Conj (e1, e2) -> "(and " ^ smtlib2_of_bexp e1 ^ " " ^ smtlib2_of_bexp e2 ^ ")"
  | Disj (e1, e2) -> "(or " ^ smtlib2_of_bexp e1 ^ " " ^ smtlib2_of_bexp e2 ^ ")"

let rec btor_of_exp m e =
  match e with
  | Var v -> m#mkvar v
  | Const (w, n) -> m#mkconstd w n
  | Not (w, e) -> m#mknot w (btor_of_exp m e)
  | And (w, e1, e2) -> m#mkand w (btor_of_exp m e1) (btor_of_exp m e2)
  | Or (w, e1, e2) -> m#mkor w (btor_of_exp m e1) (btor_of_exp m e2)
  | Xor (w, e1, e2) -> m#mkxor w (btor_of_exp m e1) (btor_of_exp m e2)
  | Neg (w, e) -> m#mkneg w (btor_of_exp m e)
  | Add (w, e1, e2) -> m#mkadd w (btor_of_exp m e1) (btor_of_exp m e2)
  | Sub (w, e1, e2) -> m#mksub w (btor_of_exp m e1) (btor_of_exp m e2)
  | Mul (w, e1, e2) -> m#mkmul w (btor_of_exp m e1) (btor_of_exp m e2)
  | Mod (w, e1, e2) -> m#mkmod w (btor_of_exp m e1) (btor_of_exp m e2)
  | Srem (w, e1, e2) -> m#mksrem w (btor_of_exp m e1) (btor_of_exp m e2)
  | Smod (w, e1, e2) -> m#mksmod w (btor_of_exp m e1) (btor_of_exp m e2)
  | Shl (w, e1, Const (_, e2)) -> m#mksll w (btor_of_exp m e1) (m#mkconstd (logi w) e2)
  | Shl _ -> fail "Shl (_, n) with non-constant n is not supported"
  | Lshr (w, e1, Const (_, e2)) -> m#mksrl w (btor_of_exp m e1) (m#mkconstd (logi w) e2)
  | Lshr _ -> fail "Lshr (_, n) with non-constant n is not supported"
  | Ashr (w, e1, Const (_, e2)) -> m#mksra w (btor_of_exp m e1) (m#mkconstd (logi w) e2)
  | Ashr _ -> fail "Ashr (_, n) with non-constant n is not supported"
  | Concat (w1, w2, e1, e2) -> m#mkconcat w1 w2 (btor_of_exp m e1) (btor_of_exp m e2)
  | Extract (w, i, j, e) -> m#mkextract w i j (btor_of_exp m e)
  | Slice (w1, w2, w3, e) -> m#mkslice w1 w2 w3 (btor_of_exp m e)
  | High (lo, hi, e) -> m#mkhigh lo hi (btor_of_exp m e)
  | Low (lo, hi, e) -> m#mklow lo hi (btor_of_exp m e)
  | ZeroExtend (w, i, e) -> m#mkzeroextend w i (btor_of_exp m e)
  | SignExtend (w, i, e) -> m#mksignextend w i (btor_of_exp m e)
  | Ite (w, c, e1, e2) -> m#mkcond w (btor_of_bexp m c) (btor_of_exp m e1) (btor_of_exp m e2)
and btor_of_bexp m e =
  match e with
  | True -> m#mkconstd 1 Z.one
  | Ult (_w, e1, e2) -> m#mkult (btor_of_exp m e1) (btor_of_exp m e2)
  | Ule (_w, e1, e2) -> m#mkule (btor_of_exp m e1) (btor_of_exp m e2)
  | Ugt (_w, e1, e2) -> m#mkugt (btor_of_exp m e1) (btor_of_exp m e2)
  | Uge (_w, e1, e2) -> m#mkuge (btor_of_exp m e1) (btor_of_exp m e2)
  | Slt (_w, e1, e2) -> m#mkslt (btor_of_exp m e1) (btor_of_exp m e2)
  | Sle (_w, e1, e2) -> m#mksle (btor_of_exp m e1) (btor_of_exp m e2)
  | Sgt (_w, e1, e2) -> m#mksgt (btor_of_exp m e1) (btor_of_exp m e2)
  | Sge (_w, e1, e2) -> m#mksge (btor_of_exp m e1) (btor_of_exp m e2)
  | Eq (_w, e1, e2) -> m#mkeq (btor_of_exp m e1) (btor_of_exp m e2)
  | Uaddo (_w, e1, e2) -> m#mkuaddo (btor_of_exp m e1) (btor_of_exp m e2)
  | Usubo (_w, e1, e2) -> m#mkusubo (btor_of_exp m e1) (btor_of_exp m e2)
  | Umulo (_w, e1, e2) -> m#mkumulo (btor_of_exp m e1) (btor_of_exp m e2)
  | Saddo (_w, e1, e2) -> m#mksaddo (btor_of_exp m e1) (btor_of_exp m e2)
  | Ssubo (_w, e1, e2) -> m#mkssubo (btor_of_exp m e1) (btor_of_exp m e2)
  | Smulo (_w, e1, e2) -> m#mksmulo (btor_of_exp m e1) (btor_of_exp m e2)
  | Lneg e -> m#mknot 1 (btor_of_bexp m e)
  | Conj (e1, e2) -> m#mkand 1 (btor_of_bexp m e1) (btor_of_bexp m e2)
  | Disj (e1, e2) -> m#mkor 1 (btor_of_bexp m e1) (btor_of_bexp m e2)

let smtlib2_of_imp es =
  let (premises, goal) =
    match List.rev es with
    | g::ps -> (List.rev ps, g)
    | _ -> fail "imp is empty" in
  String.concat "\n" (List.map (fun e -> "(assert " ^ smtlib2_of_bexp e ^ ")") premises)
  ^ "\n"
  ^ "(assert (not " ^ smtlib2_of_bexp goal ^ "))"

let btor_of_imp m es =
  let rec mkconj es =
    match es with
    | [] -> m#mkconstd 1 Z.one
    | e1::e2::[] -> m#mkand 1 e1 e2
    | hd::tl -> m#mkand 1 hd (mkconj tl) in
  let (premises, goal) =
    match List.rev es with
    | g::ps -> (List.rev ps, g)
    | _ -> failwith "imp is empty" in
  let f = mkconj (List.map (btor_of_bexp m) premises) in
  let g = btor_of_bexp m goal in
  let not_g = m#newvar in
  let r = m#newvar in
  let _ = m#addstmt (Printf.sprintf "%d not 1 %d" not_g g) in
  let _ = m#addstmt (Printf.sprintf "%d and 1 %d %d" r f not_g) in
  r

let smtlib2_declare_vars vars =
  let decls = VS.fold (
                  fun v res ->
                  ("(declare-fun "
                   ^ string_of_var v
                   ^ " () (_ BitVec "
                   ^ string_of_int (size_of_var v)
                   ^ "))")::res) vars [] in
  String.concat "\n" decls

let btor_declare_vars m vars = VS.iter (fun v -> ignore(m#mkvar v)) vars

let smtlib2_imp_check_sat es =
  "(set-logic QF_BV)\n"
  ^ "(set-info :smt-lib-version 2.0)\n"
  ^ smtlib2_declare_vars (vars_imp es)
  ^ "\n"
  ^ smtlib2_of_imp es
  ^ "\n"
  ^ "(check-sat)\n"
  ^ "(exit)\n"

let btor_imp_check_sat m es =
  let _ = btor_declare_vars m (vars_imp es) in
  let bv = btor_of_imp m es in
  let r = m#newvar in
  (String.concat "\n" m#getstmts)
  ^ "\n"
  ^ (Printf.sprintf "%d root 1 %d" r bv)
  ^ "\n"



(*
 * Do bit-blasting and prove with SAT solvers.
 * The head of a list represents the LSB.
 *)

(* We need tail-recursive appending because the clauses are extremely large. *)
let (@@) ls1 ls2 = List.rev_append ls1 ls2

let _mapi2 f xs ys =
  let rec helper f i xs ys =
    match xs, ys with
    | [], [] -> []
    | _x::xs, _y::ys -> f i xs ys::helper f (i + 1) xs ys
    | _ -> raise (Invalid_argument "List length does not match in mapi2") in
  helper f 0 xs ys
let rec map3 f xs ys zs =
  match xs, ys, zs with
  | [], [], [] -> []
  | x::xs, y::ys, z::zs -> f x y z::map3 f xs ys zs
  | _ -> raise (Invalid_argument "List length does not match in map3")
(*
 * A single bit_blast object can be used to bit-blast multiple expressions (but not simultaneously).
 * When bit-blasting an expression,
 * 1) if a sub-expression has been bit-blasted elsewhere in the same expression, only the corresponding literals are needed;
 * 2) otherwise, if a sub-expression appears in some other expression bit-blasted previously, both the corresponding clauses and literals are needed.
 *)
class bit_blast =
  let atrue = 1 in
  let afalse = -1 in
  let initial_max_id = 1 in
  let is_constant atoms = List.for_all (fun a -> a = atrue || a = afalse) atoms in
object(self)

  val mutable id = initial_max_id

  val vt = Hashtbl.create 100
  val ct = Hashtbl.create 100
  (* Store all historical results. *)
  val het : (exp, (int list list * int list)) Hashtbl.t = Hashtbl.create 100
  val hbt : (bexp, (int list list * int)) Hashtbl.t = Hashtbl.create 100
  (* Store the current results. *)
  val cet : (exp, int list) Hashtbl.t = Hashtbl.create 100
  val cbt : (bexp, int) Hashtbl.t = Hashtbl.create 100

  method next = Hashtbl.reset cet; Hashtbl.reset cbt
  method atom_true = atrue
  method atom_false = afalse

  method prelude = [[atrue]]

  method fresh = let _ = id <- id + 1 in
                 id

  method reset = id <- initial_max_id; Hashtbl.reset vt; Hashtbl.reset ct; Hashtbl.reset het; Hashtbl.reset hbt; Hashtbl.reset cet; Hashtbl.reset cbt;

  method nvars = id

  method neg a = -a

  method mk_atom = self#fresh

  method mk_atoms w = List.init w (fun _i -> self#mk_atom)

  (*method singleton_atom a = [[a]]*)

  method not_atom a = [[self#neg a]]

  method xor_atom a1 a2 = [[a1; a2]; [self#neg a1; self#neg a2]]

  method eq_atom a1 a2 = [[self#neg a1; a2]; [a1; self#neg a2]]

  method bit_blast_var v =
    let vstr = string_of_var v in
    try
      Hashtbl.find vt vstr
    with Not_found ->
      let atoms = self#mk_atoms (size_of_var v) in
      let _ = Hashtbl.add vt vstr atoms in
      atoms

  method bit_blast_const w n =
    let cstr = Z.to_string n ^ "@" ^ string_of_int w in
    try
      ([], Hashtbl.find ct cstr)
    with Not_found ->
      let rs = List.init w (fun i -> if Z.testbit n i then atrue else afalse) in
      ([], rs)
      (*
      let rs = self#mk_atoms w in
      let clauses = List.flatten (List.mapi (fun i r -> if Z.testbit n i then self#singleton_atom r else self#not_atom r) rs) in
      let _ = Hashtbl.add ct cstr rs in
      (clauses, rs)
       *)

  method bit_blast_not w atoms =
    let rs = self#mk_atoms w in
    let clauses = List.flatten (List.map2 (fun r a -> self#xor_atom r a) rs atoms) in
    (clauses, rs)

  method bit_blast_and w as1 as2 =
    let rs = self#mk_atoms w in
    let rec helper clauses rs as1 as2 =
      match rs, as1, as2 with
      | [], [], [] -> clauses
      | r::rtl, a1::tl1, a2::tl2 ->
         (* r <-> a1 & a2 == (~r | a1) & (~r | a2) & (r | ~a1 | ~a2) *)
         let cs =
           if a1 = afalse || a2 = afalse then [[self#neg r]]
           else if a1 = atrue then [[self#neg r; a2]; [r; self#neg a2]]
           else if a2 = atrue then [[self#neg r; a1]; [r; self#neg a1]]
           else [[self#neg r; a1]; [self#neg r; a2]; [r; self#neg a1; self#neg a2]] in
         helper (clauses@@cs) rtl tl1 tl2
      | _ -> failwith ("blt_blast_and failed") in
    (helper [] rs as1 as2, rs)

  method bit_blast_or w as1 as2 =
    let rs = self#mk_atoms w in
    let rec helper clauses rs as1 as2 =
      match rs, as1, as2 with
      | [], [], [] -> clauses
      | r::rtl, a1::tl1, a2::tl2 ->
         (* r <-> a1 | a2 == (~r | a1 | a2) & (r | ~a1) & (r | ~a2) *)
         let cs =
           if a1 = atrue || a2 = atrue then [[r]]
           else if a1 = afalse then [[self#neg r; a2]; [r; self#neg a2]]
           else if a2 = afalse then [[self#neg r; a1]; [r; self#neg a1]]
           else [[self#neg r; a1; a2]; [r; self#neg a1]; [r; self#neg a2]] in
         helper (clauses@@cs) rtl tl1 tl2
      | _ -> failwith ("blt_blast_or failed") in
    (helper [] rs as1 as2, rs)

  method bit_blast_xor w as1 as2 =
    let rs = self#mk_atoms w in
    let rec helper clauses rs as1 as2 =
      match rs, as1, as2 with
      | [], [], [] -> clauses
      | r::rtl, a1::tl1, a2::tl2 ->
         (* r <-> a1 xor a2 == (~r | a1 | a2) & (~r | ~a1 | ~a2) & (r | ~a1 | a2) & (r | a1 | ~a2) *)
         let cs = [[self#neg r; a1; a2]; [self#neg r; self#neg a1; self#neg a2]; [r; self#neg a1; a2]; [r; a1; self#neg a2]] in
         helper (clauses@@cs) rtl tl1 tl2
      | _ -> failwith ("blt_blast_or failed") in
    (helper [] rs as1 as2, rs)

  method bit_blast_full_adder w as1 as2 cin =
    let rs = self#mk_atoms w in
    let rec helper clauses rs as1 as2 cin =
      match rs, as1, as2 with
      | [], [], [] -> (clauses, cin)
      | r::rtl, a1::tl1, a2::tl2 ->
         let cout = self#mk_atom in
         (* sum = (a1 xor a2) xor cin
            carry = (a1 & a2) | ((a1 xor a2) & cin) *)
         (* r <-> sum == (~r | a1 | a2 | cin) &
                         (~r | ~a1 | ~a2 | cin) &
                         (~r | ~a1 | a2 | ~cin) &
                         (~r | a1 | ~a2 | ~cin) &
                         (r | ~a1 | a2 | cin) &
                         (r | a1 | ~a2 | cin) &
                         (r | a1 | a2 | ~cin) &
                         (r | ~a1 | ~a2 | ~cin) *)
         (* cout <-> carry == (~cout | a1 | a2) &
                              (~cout | a1 | cin) &
                              (~cout | a2 | cin) &
                              (cout | ~a1 | ~a2) &
                              (cout | ~a1 | a2 | ~cin) &
                              (cout | a1 | ~a2 | ~cin) *)
         let sum_cs = [[self#neg r; a1; a2; cin]; [self#neg r; self#neg a1; self#neg a2; cin];
                       [self#neg r; self#neg a1; a2; self#neg cin]; [self#neg r; a1; self#neg a2; self#neg cin];
                       [r; self#neg a1; a2; cin]; [r; a1; self#neg a2; cin];
                       [r; a1; a2; self#neg cin]; [r; self#neg a1; self#neg a2; self#neg cin]] in
         let cout_cs = [[self#neg cout; a1; a2]; [self#neg cout; a1; cin]; [self#neg cout; a2; cin];
                        [cout; self#neg a1; self#neg a2]; [cout; self#neg a1; a2; self#neg cin]; [cout; a1; self#neg a2; self#neg cin]] in
         helper (clauses@@sum_cs@@cout_cs) rtl tl1 tl2 cout
      | _ -> failwith ("bit_blast_full_adder failed") in
    let (clauses, cout) = helper [] rs as1 as2 cin in
    (clauses, cout, rs)

  method bit_blast_add w as1 as2 =
    let falsch = self#mk_atom in
    let falsch_cs = [[self#neg falsch]] in
    let (clauses, _, rs) = self#bit_blast_full_adder w as1 as2 falsch in
    (falsch_cs@@clauses, rs)

  method bit_blast_ite w c as1 as2 =
    let rs = self#mk_atoms w in
    let rec helper clauses rs as1 as2 =
      match rs, as1, as2 with
      | [], [], [] -> clauses
      | r::rtl, a1::tl1, a2::tl2 ->
         (* r <-> c ? a1 : a2 == (~r | ~c | a1) &
                                 (~r | c | a2) &
                                 (r | c | ~a2) &
                                 (r | ~c | ~a1) &
                                 (r | ~a1 | ~a2) *)
         let cs = [[self#neg r; self#neg c; a1]; [self#neg r; c; a2];
                   [r; c; self#neg a2]; [r; self#neg c; self#neg a1]; [r; self#neg a1; self#neg a2]] in
         helper (clauses@@cs) rtl tl1 tl2
      | _ -> failwith ("bit_blast_ite failed") in
    (helper [] rs as1 as2, rs)

  method bit_blast_shl_int w atoms n =
    let rs = self#mk_atoms w in
    let clauses =
      try
        List.flatten (List.mapi (fun i r -> if i < n then self#not_atom r else self#eq_atom r (List.nth atoms (i - n))) rs)
      with Failure _ ->
        failwith ("nth failed at bit_blast_shl_int") in
    (clauses, rs)

  method bit_blast_shl w atoms ns =
    let w_ns = logi w in
    let rec helper a s =
      if s = -1 then ([], a)
      else let (raw_clauses, raw) = helper a (s - 1) in
           let (shifted_clauses, shifted) = self#bit_blast_shl_int w raw (Z.to_int (Z.pow (Z.of_int 2) s)) in
           let n_at_s =
             try
               List.nth ns s
             with Failure _ ->
               failwith ("nth failed at bit_blast_shl") in
           if n_at_s = atrue then (raw_clauses@@shifted_clauses, shifted)
           else if n_at_s = afalse then (raw_clauses, raw)
           else
             let (clauses, rs) = self#bit_blast_ite w n_at_s shifted raw in
             (raw_clauses@shifted_clauses@@clauses, rs) in
    helper atoms (w_ns - 1)

  method bit_blast_shr_int w atoms n =
    let rs = self#mk_atoms w in
    let clauses =
      try
        List.flatten (List.mapi (fun i r -> if i < w - n then self#eq_atom r (List.nth atoms (i + n)) else self#not_atom r) rs)
      with Failure _ ->
        failwith ("nth failed at bit_blast_shr_int") in
    (clauses, rs)

  method bit_blast_shr w atoms ns =
    let w_ns = logi w in
    let rec helper a s =
      if s = -1 then ([], a)
      else let (raw_clauses, raw) = helper a (s - 1) in
           let (shifted_clauses, shifted) = self#bit_blast_shr_int w raw (Z.to_int (Z.pow (Z.of_int 2) s)) in
           let n_at_s =
             try
               List.nth ns s
             with Failure _ ->
               failwith ("nth failed at bit_blast_shr") in
           if n_at_s = atrue then (raw_clauses@@shifted_clauses, shifted)
           else if n_at_s = afalse then (raw_clauses, raw)
           else
             let (clauses, res) = self#bit_blast_ite w n_at_s shifted raw in
             (raw_clauses@@shifted_clauses@@clauses, res) in
    helper atoms (w_ns - 1)

  method bit_blast_neg w atoms =
    let (clauses1, not_atoms) = self#bit_blast_not w atoms in
    let (clauses2, one_atoms) = self#bit_blast_const w Z.one in
    let (clauses3, rs) = self#bit_blast_add w not_atoms one_atoms in
    (clauses1@@clauses2@@clauses3, rs)

  method bit_blast_sub w as1 as2 =
    let (clauses1, neg_as2) = self#bit_blast_neg w as2 in
    let (clauses2, rs) = self#bit_blast_add w as1 neg_as2 in
    (clauses1@@clauses2, rs)

  method bit_blast_mul w as1 as2 =
    let (as1, as2) = if is_constant as1 then (as2, as1) else (as1, as2) in
    let rec mul s =
      if s = -1 then self#bit_blast_const w Z.zero
      else let (clauses1, res_before_s) = mul (s - 1) in
           let as2_at_s =
             try
               List.nth as2 s
             with Failure _ ->
               failwith ("nth failed at bit_blast_mul: index = " ^ string_of_int s ^ ", size = " ^ string_of_int (List.length as2)) in
           if as2_at_s = atrue then
             let (clauses2, as1_shl_s) = self#bit_blast_shl_int w as1 s in
             let (clauses3, rs) = self#bit_blast_add w res_before_s as1_shl_s in
             (clauses1@@clauses2@@clauses3, rs)
           else if as2_at_s = afalse then
             (clauses1, res_before_s)
           else
             let (clauses2, as1_shl_s) = self#bit_blast_shl_int w as1 s in
             let (clauses3, as2_mul_as2_at_s) = self#bit_blast_and w (List.init w (fun _ -> as2_at_s)) as1_shl_s in
             let (clauses4, rs) = self#bit_blast_add w res_before_s as2_mul_as2_at_s in
             (clauses1@@clauses2@@clauses3@@clauses4, rs) in
    mul (w - 1)

  method bit_blast_concat _wh _wl ash asl = ([], asl@ash)


  method bit_blast_extract _w i j atoms =
    let rs = self#mk_atoms (i - j + 1) in
    let clauses =
      try
        List.flatten (List.mapi (fun k r -> self#eq_atom r (List.nth atoms (j + k))) rs)
      with Failure _ ->
        failwith ("nth failed at bit_blast_extract") in
    (clauses, rs)
  method bit_blast_slice w1 w2 w3 atoms = self#bit_blast_extract (w1 + w2 + w3) (w1 + w2 - 1) w1 atoms
  method bit_blast_high lo hi atoms = self#bit_blast_extract (lo + hi) (lo + hi - 1) lo atoms
  method bit_blast_low lo hi atoms = self#bit_blast_extract (lo + hi) (lo - 1) 0 atoms

  method bit_blast_zero_extend w n atoms =
    let (clauses1, zero_atoms) = self#bit_blast_const n Z.zero in
    let (clauses2, rs) = self#bit_blast_concat n w zero_atoms atoms in
    (clauses1@@clauses2, rs)
  method bit_blast_sign_extend w n atoms =
    let (zcs, zext) = self#bit_blast_zero_extend w n atoms in
    let (ocs, all_one) = self#bit_blast_const n (Z.sub (Z.pow (Z.of_int 2) n) Z.one) in
    let (scs, sext) = self#bit_blast_concat n w all_one atoms in
    let sign = List.nth atoms (w - 1) in
    let (cs, rs) = self#bit_blast_ite (w + n) sign sext zext in
    (zcs@@ocs@@scs@@cs, rs)

  method bit_blast_lneg a =
    let r = self#mk_atom in
    let clauses = self#xor_atom r a in
    (clauses, r)
  method bit_blast_conj a1 a2 =
    let r = self#mk_atom in
    let clauses = [[self#neg r; a1]; [self#neg r; a2]; [r; self#neg a1; self#neg a2]] in
    (clauses, r)
  method bit_blast_disj a1 a2 =
    let r = self#mk_atom in
    let clauses = [[self#neg r; a1; a2]; [r; self#neg a1]; [r; self#neg a2]] in
    (clauses, r)

  method bit_blast_eq w as1 as2 =
    let r = self#mk_atom in
    let clauses =
      (* r <-> (as1 <-> as2) == (~r | (as1[0] <-> as2[0])) &
                                ...
                                (~r | (as1[w] <-> as2[w])) &
                                (r | aux[0] | ... | aux[w]) &
                                (aux[0] <-> (as1[0] XOR as2[0])) &
                                ...
                                (aux[w] <-> (as1[w] XOR as2[w])) &*)
      try
        let eq_clauses =
          let as1_iff_as2 = List.flatten (List.map2 self#eq_atom as1 as2) in
          List.map (fun atoms -> self#neg r::atoms) as1_iff_as2 in
        let neq_clauses =
          let auxs = List.init w (fun _i -> self#mk_atom) in
          (* aux <-> (a1 XOR a2) == (~aux | a1 | a2) &
                                    (~aux | ~a1 | ~a2) &
                                    (aux | ~a1 | a2) &
                                    (aux | a1 | ~a2) *)
          let auxs_spec = List.flatten (map3 (fun aux a1 a2 ->
                                            [[self#neg aux; a1; a2]; [self#neg aux; self#neg a1; self#neg a2];
                                             [aux; self#neg a1; a2]; [aux; a1; self#neg a2]]) auxs as1 as2) in
          [r::auxs]@@auxs_spec in
        eq_clauses@@neq_clauses
      with Invalid_argument _ ->
        failwith ("List.map2 failed at bit_blast_eq: width = " ^ string_of_int w ^ ", "
                  ^ "size 1 = " ^ string_of_int (List.length as1) ^ ", "
                  ^ "size 2 = " ^ string_of_int (List.length as2)) in
    (clauses, r)

  method bit_blast_ult w as1 as2 =
    let r = self#mk_atom in
    let wahr = self#mk_atom in
    let clauses1 = [[wahr]] in
    let (clauses2, not_as2) = self#bit_blast_not w as2 in
    let (clauses3, cout, _) = self#bit_blast_full_adder w as1 not_as2 wahr in
    let clauses4 = [[r; cout]; [self#neg r; self#neg cout]] (* r <-> ~cout *) in
    (clauses1@@clauses2@@clauses3@@clauses4, r)
  method bit_blast_ule w as1 as2 =
    let (clauses1, eq) = self#bit_blast_eq w as1 as2 in
    let (clauses2, ult) = self#bit_blast_ult w as1 as2 in
    let (clauses3, disj) = self#bit_blast_disj eq ult in
    (clauses1@@clauses2@@clauses3, disj)
  method bit_blast_ugt w as1 as2 = self#bit_blast_ult w as2 as1
  method bit_blast_uge w as1 as2 = self#bit_blast_ule w as2 as1

  method bit_blast_slt w as1 as2 =
    let r = self#mk_atom in
    let wahr = self#mk_atom in
    let clauses1 = [[wahr]] in
    let sign1 = List.nth as1 (w - 1) in
    let sign2 = List.nth as2 (w - 1) in
    let (clauses2, not_as2) = self#bit_blast_not w as2 in
    let (clauses3, cout, _) = self#bit_blast_full_adder w as1 not_as2 wahr in
    (* r <-> ((sign1 <-> sign2) xor cout) == (~r | cout | ~sign1 | sign2) &
                                             (~r | cout | sign1 | ~sign2) &
                                             (~r | ~cout | sign1 | sign2) &
                                             (~r | ~cout | ~sign1 | ~sign2) &
                                             (r | cout | sign1 | sign2) &
                                             (r | cout | ~sign1 | ~sign2) &
                                             (r | ~cout | ~sign1 | sign2) &
                                             (r | ~cout | sign1 | ~sign2) *)
    let clauses4 = [[self#neg r; cout; self#neg sign1; sign2]; [self#neg r; cout; sign1; self#neg sign2];
                    [self#neg r; self#neg cout; sign1; sign2]; [self#neg r; self#neg cout; self#neg sign1; self#neg sign2];
                    [r; cout; sign1; sign2]; [r; cout; self#neg sign1; self#neg sign2];
                    [r; self#neg cout; self#neg sign1; sign2]; [r; self#neg cout; sign1; self#neg sign2]] in
    (clauses1@@clauses2@@clauses3@@clauses4, r)
  method bit_blast_sle w as1 as2 =
    let (clauses1, eq) = self#bit_blast_eq w as1 as2 in
    let (clauses2, slt) = self#bit_blast_slt w as1 as2 in
    let (clauses3, disj) = self#bit_blast_disj eq slt in
    (clauses1@@clauses2@@clauses3, disj)
  method bit_blast_sgt w as1 as2 = self#bit_blast_slt w as2 as1
  method bit_blast_sge w as1 as2 = self#bit_blast_sle w as2 as1

  method bit_blast_uaddo w as1 as2 =
    let (clauses, cout, _rs) = self#bit_blast_full_adder w as1 as2 afalse in
    (clauses, cout)
  method bit_blast_usubo w as1 as2 = self#bit_blast_ult w as1 as2
  method bit_blast_umulo w as1 as2 =
    let (clauses1, zero) = self#bit_blast_const w Z.zero in
    let (clauses2, eas1) = self#bit_blast_concat w w zero as1 in
    let (clauses3, eas2) = self#bit_blast_concat w w zero as2 in
    let (clauses4, mull12) = self#bit_blast_mul (w + w) eas1 eas2 in
    let (clauses5, high) = self#bit_blast_high w w mull12 in
    let (clauses6, safe) = self#bit_blast_eq w high zero in
    (clauses1@@clauses2@@clauses3@@clauses4@@clauses5@@clauses6, self#neg safe)

  method bit_blast_exp e =
    try
      ([], Hashtbl.find cet e)
    with Not_found ->
      (try
         let (cs, ls) = Hashtbl.find het e in
         let _ = Hashtbl.add cet e ls in
         (cs, ls)
       with Not_found ->
         let (cs, ls) = self#bit_blast_exp_nocache e in
         let _ = Hashtbl.add het e (cs, ls) in
         let _ = Hashtbl.add cet e ls in
         (cs, ls))

  method bit_blast_exp_nocache e =
    match e with
    | Var v -> ([], self#bit_blast_var v)
    | Const (w, n) -> self#bit_blast_const w n
    | Not (w, e) ->
       let (clauses1, e) = self#bit_blast_exp e in
       let (clauses2, rs) = self#bit_blast_not w e in
       (clauses1@@clauses2, rs)
    | And (w, e1, e2) ->
       let (clauses1, e1) = self#bit_blast_exp e1 in
       let (clauses2, e2) = self#bit_blast_exp e2 in
       let (clauses3, rs) = self#bit_blast_and w e1 e2 in
       (clauses1@@clauses2@@clauses3, rs)
    | Or (w, e1, e2) ->
       let (clauses1, e1) = self#bit_blast_exp e1 in
       let (clauses2, e2) = self#bit_blast_exp e2 in
       let (clauses3, rs) = self#bit_blast_or w e1 e2 in
       (clauses1@@clauses2@@clauses3, rs)
    | Xor (w, e1, e2) ->
       let (clauses1, e1) = self#bit_blast_exp e1 in
       let (clauses2, e2) = self#bit_blast_exp e2 in
       let (clauses3, rs) = self#bit_blast_xor w e1 e2 in
       (clauses1@@clauses2@@clauses3, rs)
    | Neg (w, e) ->
       let (clauses1, e) = self#bit_blast_exp e in
       let (clauses2, rs) = self#bit_blast_neg w e in
       (clauses1@@clauses2, rs)
    | Add (w, e1, e2) ->
       let (clauses1, e1) = self#bit_blast_exp e1 in
       let (clauses2, e2) = self#bit_blast_exp e2 in
       let (clauses3, rs) = self#bit_blast_add w e1 e2 in
       (clauses1@@clauses2@@clauses3, rs)
    | Sub (w, e1, e2) ->
       let (clauses1, e1) = self#bit_blast_exp e1 in
       let (clauses2, e2) = self#bit_blast_exp e2 in
       let (clauses3, rs) = self#bit_blast_sub w e1 e2 in
       (clauses1@@clauses2@@clauses3, rs)
    | Mul (w, e1, e2) ->
       let (clauses1, e1) = self#bit_blast_exp e1 in
       let (clauses2, e2) = self#bit_blast_exp e2 in
       let (clauses3, rs) = self#bit_blast_mul w e1 e2 in
       (clauses1@@clauses2@@clauses3, rs)
    | Mod (_w, _e1, _e2) -> failwith "Not supported: Mod"
    | Srem (_w, _e1, _e2) -> failwith "Not supported: Srem"
    | Smod (_w, _e1, _e2) -> failwith "Not supported: Smod"
    | Shl (w, e1, e2) ->
       let (clauses1, e1) = self#bit_blast_exp e1 in
       let (clauses2, e2) = self#bit_blast_exp e2 in
       let (clauses3, rs) = self#bit_blast_shl w e1 e2 in
       (clauses1@@clauses2@@clauses3, rs)
    | Lshr (w, e1, e2) ->
       let (clauses1, e1) = self#bit_blast_exp e1 in
       let (clauses2, e2) = self#bit_blast_exp e2 in
       let (clauses3, rs) = self#bit_blast_shr w e1 e2 in
       (clauses1@@clauses2@@clauses3, rs)
    | Ashr (_w, _e1, _e2) -> failwith "Not supported: Ashr"
    | Concat (w1, w2, e1, e2) ->
       let (clauses1, e1) = self#bit_blast_exp e1 in
       let (clauses2, e2) = self#bit_blast_exp e2 in
       let (clauses3, rs) = self#bit_blast_concat w1 w2 e1 e2 in
       (clauses1@@clauses2@@clauses3, rs)
    | Extract (w, i, j, e) ->
       let (clauses1, e) = self#bit_blast_exp e in
       let (clauses2, rs) = self#bit_blast_extract w i j e in
       (clauses1@@clauses2, rs)
    | Slice (w1, w2, w3, e) ->
       let (clauses1, e) = self#bit_blast_exp e in
       let (clauses2, rs) = self#bit_blast_slice w1 w2 w3 e in
       (clauses1@@clauses2, rs)
    | High (lo, hi, e) ->
       let (clauses1, e) = self#bit_blast_exp e in
       let (clauses2, rs) = self#bit_blast_high lo hi e in
       (clauses1@@clauses2, rs)
    | Low (lo, hi, e) ->
       let (clauses1, e) = self#bit_blast_exp e in
       let (clauses2, rs) = self#bit_blast_low lo hi e in
       (clauses1@@clauses2, rs)
    | ZeroExtend (w, i, e) ->
       let (clauses1, e) = self#bit_blast_exp e in
       let (clauses2, rs) = self#bit_blast_zero_extend w i e in
       (clauses1@@clauses2, rs)
    | SignExtend (w, i, e) ->
       let (clauses1, e) = self#bit_blast_exp e in
       let (clauses2, rs) = self#bit_blast_sign_extend w i e in
       (clauses1@@clauses2, rs)
    | Ite (w, c, e1, e2) ->
       let (clauses1, c) = self#bit_blast_bexp c in
       let (clauses2, e1) = self#bit_blast_exp e1 in
       let (clauses3, e2) = self#bit_blast_exp e2 in
       let (clauses4, rs) = self#bit_blast_ite w c e1 e2 in
       (clauses1@@clauses2@@clauses3@@clauses4, rs)

  method bit_blast_bexp e : int list list * int =
    try
      ([], Hashtbl.find cbt e)
    with Not_found ->
      (try
         let (cs, l) = Hashtbl.find hbt e in
         let _ = Hashtbl.add cbt e l in
         (cs, l)
       with Not_found ->
         let (cs, l) = self#bit_blast_bexp_nocache e in
         let _ = Hashtbl.add hbt e (cs, l) in
         let _ = Hashtbl.add cbt e l in
         (cs, l))

  method bit_blast_bexp_nocache e =
    match e with
    | True -> ([], self#atom_true)
    | Ult (w, e1, e2) ->
       let (clauses1, e1) = self#bit_blast_exp e1 in
       let (clauses2, e2) = self#bit_blast_exp e2 in
       let (clauses3, r) = self#bit_blast_ult w e1 e2 in
       (clauses1@@clauses2@@clauses3, r)
    | Ule (w, e1, e2) ->
       let (clauses1, e1) = self#bit_blast_exp e1 in
       let (clauses2, e2) = self#bit_blast_exp e2 in
       let (clauses3, r) = self#bit_blast_ule w e1 e2 in
       (clauses1@@clauses2@@clauses3, r)
    | Ugt (w, e1, e2) ->
       let (clauses1, e1) = self#bit_blast_exp e1 in
       let (clauses2, e2) = self#bit_blast_exp e2 in
       let (clauses3, r) = self#bit_blast_ugt w e1 e2 in
       (clauses1@@clauses2@@clauses3, r)
    | Uge (w, e1, e2) ->
       let (clauses1, e1) = self#bit_blast_exp e1 in
       let (clauses2, e2) = self#bit_blast_exp e2 in
       let (clauses3, r) = self#bit_blast_uge w e1 e2 in
       (clauses1@@clauses2@@clauses3, r)
    | Slt (w, e1, e2) ->
       let (clauses1, e1) = self#bit_blast_exp e1 in
       let (clauses2, e2) = self#bit_blast_exp e2 in
       let (clauses3, r) = self#bit_blast_slt w e1 e2 in
       (clauses1@@clauses2@@clauses3, r)
    | Sle (w, e1, e2) ->
       let (clauses1, e1) = self#bit_blast_exp e1 in
       let (clauses2, e2) = self#bit_blast_exp e2 in
       let (clauses3, r) = self#bit_blast_sle w e1 e2 in
       (clauses1@@clauses2@@clauses3, r)
    | Sgt (w, e1, e2) ->
       let (clauses1, e1) = self#bit_blast_exp e1 in
       let (clauses2, e2) = self#bit_blast_exp e2 in
       let (clauses3, r) = self#bit_blast_sgt w e1 e2 in
       (clauses1@@clauses2@@clauses3, r)
    | Sge (w, e1, e2) ->
       let (clauses1, e1) = self#bit_blast_exp e1 in
       let (clauses2, e2) = self#bit_blast_exp e2 in
       let (clauses3, r) = self#bit_blast_sge w e1 e2 in
       (clauses1@@clauses2@@clauses3, r)
    | Eq (w, e1, e2) ->
       let (clauses1, e1) = self#bit_blast_exp e1 in
       let (clauses2, e2) = self#bit_blast_exp e2 in
       let (clauses3, r) = self#bit_blast_eq w e1 e2 in
       (clauses1@@clauses2@@clauses3, r)
    | Uaddo (w, e1, e2) ->
       let (clauses1, e1) = self#bit_blast_exp e1 in
       let (clauses2, e2) = self#bit_blast_exp e2 in
       let (clauses3, r) = self#bit_blast_uaddo w e1 e2 in
       (clauses1@@clauses2@@clauses3, r)
    | Usubo (w, e1, e2) ->
       let (clauses1, e1) = self#bit_blast_exp e1 in
       let (clauses2, e2) = self#bit_blast_exp e2 in
       let (clauses3, r) = self#bit_blast_usubo w e1 e2 in
       (clauses1@@clauses2@@clauses3, r)
    | Umulo (w, e1, e2) ->
       let (clauses1, e1) = self#bit_blast_exp e1 in
       let (clauses2, e2) = self#bit_blast_exp e2 in
       let (clauses3, r) = self#bit_blast_umulo w e1 e2 in
       (clauses1@@clauses2@@clauses3, r)
    | Saddo (_w, _e1, _e2) -> failwith "Not supported: Saddo"
    | Ssubo (_w, _e1, _e2) -> failwith "Not supported: Ssubo"
    | Smulo (_w, _e1, _e2) -> failwith "Not supported: Smulo"
    | Lneg e ->
       let (clauses1, e) = self#bit_blast_bexp e in
       let (clauses2, r) = self#bit_blast_lneg e in
       (clauses1@@clauses2, r)
    | Conj (e1, e2) ->
       let (clauses1, e1) = self#bit_blast_bexp e1 in
       let (clauses2, e2) = self#bit_blast_bexp e2 in
       let (clauses3, r) = self#bit_blast_conj e1 e2 in
       (clauses1@@clauses2@@clauses3, r)
    | Disj (e1, e2) ->
       let (clauses1, e1) = self#bit_blast_bexp e1 in
       let (clauses2, e2) = self#bit_blast_bexp e2 in
       let (clauses3, r) = self#bit_blast_disj e1 e2 in
       (clauses1@@clauses2@@clauses3, r)

end

let _cnf_nvars cnf =
  let max_clause clause = List.fold_left (fun res n -> max res n) 0 clause in
  List.fold_left (fun res clause -> max res (max_clause clause)) 0 cnf

let _cnf_nclauses cnf = List.length cnf

let output_clause ch clause = output_string ch (String.concat " " (List.map string_of_int clause) ^ " 0")

let output_cnf ch cnf = List.iter (fun clause -> output_clause ch clause; output_string ch "\n") cnf

let output_dimacs bb ch cnf =
  let nvars = bb#nvars in
  let nclauses = List.length cnf in
  let _ = output_string ch ("p cnf " ^ string_of_int nvars ^ " " ^ string_of_int nclauses ^ "\n") in
  let _ = output_cnf ch cnf in
  let _ = flush ch in
  ()

let bb = ref None

(* This function is not thread safe. *)
let cnf_imp_check_sat ch es =
  let (premises, goal) =
    match List.rev es with
    | goal::premises_rev -> (List.rev premises_rev, goal)
    | _ -> failwith "" in
  let bb =
    match !bb with
    | None -> let res = new bit_blast in
              let _ = bb := Some res in
              res
    | Some bb -> let _ = bb#next in
                 bb in
  let (clauses_p, premises) =
    let t1 = Unix.gettimeofday() in
    let _ = trace "Bit-blasting premises" in
    let (clauses_p, premises) = List.fold_left (
                                    fun (clauses, premises) p ->
                                    let (cs, p) = bb#bit_blast_bexp p in
                                    (cs@@clauses, p::premises)) ([], []) premises in
    let t2 = Unix.gettimeofday() in
    let _ = trace ("Execution time of Bit-blasting premises: " ^ string_of_float (t2 -. t1) ^ " seconds") in
    (clauses_p, premises) in
  let (clauses_g, goal) =
    let t1 = Unix.gettimeofday() in
    let _ = trace "Bit-blasting goal" in
    let (clauses_g, goal) = bb#bit_blast_bexp goal in
    let t2 = Unix.gettimeofday() in
    let _ = trace ("Execution time of Bit-blasting goal: " ^ string_of_float (t2 -. t1) ^ " seconds") in
    (clauses_g, goal) in
  let clauses = (bb#prelude)@@clauses_p@@(List.map (fun p -> [p]) premises)@@clauses_g@@(bb#not_atom goal) in
  let _ = trace "Finished making clauses" in
  let _ = output_dimacs bb ch clauses in
  ()

(* TODO: optimize a<<n and a*n where n is a constant *)







(* ===== Use code extracted from coq-bitblasting ===== *)

open Coqbb
open Coqbb.ExtrOcamlIntConv
open Coqbb.TypEnv
open Coqbb.QFBV

let to_unsigned w (n : Z.t) : Z.t = Z.erem n (Z.pow (Z.of_int 2) w)

let explode s = List.init (String.length s) (String.get s)

let bv_of_z w n = Z.format ("%0" ^ string_of_int w ^ "b") (to_unsigned w n)

let string_of_chars chars = 
  let buf = Buffer.create (List.length chars) in
  List.iter (Buffer.add_char buf) chars;
  Buffer.contents buf

let cbits_of_oz (w : int) (n : Z.t) : NBitsDef.bits =
  NBitsDef.from_bin (explode (bv_of_z w n))

let rec coq_exp_of_exp m g e =
  match e with
  | Var v ->
     let (m', g', coq_v) =
       try
         let coq_v = VM.find v m in
		 let _ = print_endline ("ocaml " ^ string_of_var v ^ " => coq (" ^ string_of_int g ^ ", " ^ string_of_int v.vsidx ^ ")") in
         (m, g, coq_v)
       with Not_found ->
         let coq_v = Obj.repr (n_of_int g, n_of_int (v.vsidx)) in
		 let _ = print_endline ("ocaml " ^ string_of_var v ^ " => coq (" ^ string_of_int g ^ ", " ^ string_of_int v.vsidx ^ ")") in
         let m' = VM.add v coq_v m in
         let g' = g + 1 in
         (m', g', coq_v) in
     (m', g', QFBV.Evar coq_v)
  | Const (w, n) -> (m, g, QFBV.Econst (cbits_of_oz w n))
  | Not (_, e) ->
     let (m', g', e') = coq_exp_of_exp m g e in
     (m', g', QFBV.Eunop (QFBV.Unot, e'))
  | And (_, e1, e2) ->
     let (m1, g1, e1) = coq_exp_of_exp m g e1 in
     let (m2, g2, e2) = coq_exp_of_exp m1 g1 e2 in
     (m2, g2, QFBV.Ebinop (QFBV.Band, e1, e2))
  | Or (_, e1, e2) ->
     let (m1, g1, e1) = coq_exp_of_exp m g e1 in
     let (m2, g2, e2) = coq_exp_of_exp m1 g1 e2 in
     (m2, g2, QFBV.Ebinop (QFBV.Bor, e1, e2))
  | Xor (_, e1, e2) ->
     let (m1, g1, e1) = coq_exp_of_exp m g e1 in
     let (m2, g2, e2) = coq_exp_of_exp m1 g1 e2 in
     (m2, g2, QFBV.Ebinop (QFBV.Bxor, e1, e2))
  | Neg (_, e) ->
     let (m', g', e') = coq_exp_of_exp m g e in
     (m', g', QFBV.Eunop (QFBV.Uneg, e'))
  | Add (_, e1, e2) ->
     let (m1, g1, e1) = coq_exp_of_exp m g e1 in
     let (m2, g2, e2) = coq_exp_of_exp m1 g1 e2 in
     (m2, g2, QFBV.Ebinop (QFBV.Badd, e1, e2))
  | Sub (_, e1, e2) ->
     let (m1, g1, e1) = coq_exp_of_exp m g e1 in
     let (m2, g2, e2) = coq_exp_of_exp m1 g1 e2 in
     (m2, g2, QFBV.Ebinop (QFBV.Bsub, e1, e2))
  | Mul (_, e1, e2) ->
     let (m1, g1, e1) = coq_exp_of_exp m g e1 in
     let (m2, g2, e2) = coq_exp_of_exp m1 g1 e2 in
     (m2, g2, QFBV.Ebinop (QFBV.Bmul, e1, e2))
  | Mod (_, e1, e2) ->
     let (m1, g1, e1) = coq_exp_of_exp m g e1 in
     let (m2, g2, e2) = coq_exp_of_exp m1 g1 e2 in
     (m2, g2, QFBV.Ebinop (QFBV.Bmod, e1, e2))
  | Srem (_, e1, e2) ->
     let (m1, g1, e1) = coq_exp_of_exp m g e1 in
     let (m2, g2, e2) = coq_exp_of_exp m1 g1 e2 in
     (m2, g2, QFBV.Ebinop (QFBV.Bsrem, e1, e2))
  | Smod (_, e1, e2) ->
     let (m1, g1, e1) = coq_exp_of_exp m g e1 in
     let (m2, g2, e2) = coq_exp_of_exp m1 g1 e2 in
     (m2, g2, QFBV.Ebinop (QFBV.Bsmod, e1, e2))
  | Shl (_, e1, e2) ->
     let (m1, g1, e1) = coq_exp_of_exp m g e1 in
     let (m2, g2, e2) = coq_exp_of_exp m1 g1 e2 in
     (m2, g2, QFBV.Ebinop (QFBV.Bshl, e1, e2))
  | Lshr (_, e1, e2) ->
     let (m1, g1, e1) = coq_exp_of_exp m g e1 in
     let (m2, g2, e2) = coq_exp_of_exp m1 g1 e2 in
     (m2, g2, QFBV.Ebinop (QFBV.Blshr, e1, e2))
  | Ashr (_, e1, e2) ->
     let (m1, g1, e1) = coq_exp_of_exp m g e1 in
     let (m2, g2, e2) = coq_exp_of_exp m1 g1 e2 in
     (m2, g2, QFBV.Ebinop (QFBV.Bashr, e1, e2))
  | Concat (_, _, e1, e2) ->
     let (m1, g1, e1) = coq_exp_of_exp m g e1 in
     let (m2, g2, e2) = coq_exp_of_exp m1 g1 e2 in
     (m2, g2, QFBV.Ebinop (QFBV.Bconcat, e1, e2))
  | Extract (_, i, j, e) ->
     let (m', g', e') = coq_exp_of_exp m g e in
     (m', g', QFBV.Eunop (QFBV.Uextr (nat_of_int i, nat_of_int j), e'))
  | Slice (w1, w2, _, e) ->
     let (m', g', e') = coq_exp_of_exp m g e in
     (m', g', QFBV.Eunop (QFBV.Uextr (nat_of_int (w1 + w2 - 1), nat_of_int w2), e'))
  | High (_, hi, e) ->
     let (m', g', e') = coq_exp_of_exp m g e in
     (m', g', QFBV.Eunop (QFBV.Uhigh (nat_of_int hi), e'))
  | Low (lo, _, e) ->
     let (m', g', e') = coq_exp_of_exp m g e in
     (m', g', QFBV.Eunop (QFBV.Ulow (nat_of_int lo), e'))
  | ZeroExtend (_, i, e) ->
     let (m', g', e') = coq_exp_of_exp m g e in
     (m', g', QFBV.Eunop (QFBV.Uzext (nat_of_int i), e'))
  | SignExtend (_, i, e) ->
     let (m', g', e') = coq_exp_of_exp m g e in
     (m', g', QFBV.Eunop (QFBV.Usext (nat_of_int i), e'))
  | Ite (_, c, e1, e2) ->
     let (mc, gc, c) = coq_bexp_of_bexp m g c in
     let (m1, g1, e1) = coq_exp_of_exp mc gc e1 in
     let (m2, g2, e2) = coq_exp_of_exp m1 g1 e2 in
     (m2, g2, QFBV.Eite (c, e1, e2))
and coq_bexp_of_bexp m g e =
  match e with
  | True -> (m, g, QFBV.Btrue)
  | Ult (_, e1, e2) ->
     let (m1, g1, e1) = coq_exp_of_exp m g e1 in
     let (m2, g2, e2) = coq_exp_of_exp m1 g1 e2 in
     (m2, g2, QFBV.Bbinop (QFBV.Bult, e1, e2))
  | Ule (_, e1, e2) ->
     let (m1, g1, e1) = coq_exp_of_exp m g e1 in
     let (m2, g2, e2) = coq_exp_of_exp m1 g1 e2 in
     (m2, g2, QFBV.Bbinop (QFBV.Bule, e1, e2))
  | Ugt (_, e1, e2) ->
     let (m1, g1, e1) = coq_exp_of_exp m g e1 in
     let (m2, g2, e2) = coq_exp_of_exp m1 g1 e2 in
     (m2, g2, QFBV.Bbinop (QFBV.Bugt, e1, e2))
  | Uge (_, e1, e2) ->
     let (m1, g1, e1) = coq_exp_of_exp m g e1 in
     let (m2, g2, e2) = coq_exp_of_exp m1 g1 e2 in
     (m2, g2, QFBV.Bbinop (QFBV.Buge, e1, e2))
  | Slt (_, e1, e2) ->
     let (m1, g1, e1) = coq_exp_of_exp m g e1 in
     let (m2, g2, e2) = coq_exp_of_exp m1 g1 e2 in
     (m2, g2, QFBV.Bbinop (QFBV.Bslt, e1, e2))
  | Sle (_, e1, e2) ->
     let (m1, g1, e1) = coq_exp_of_exp m g e1 in
     let (m2, g2, e2) = coq_exp_of_exp m1 g1 e2 in
     (m2, g2, QFBV.Bbinop (QFBV.Bsle, e1, e2))
  | Sgt (_, e1, e2) ->
     let (m1, g1, e1) = coq_exp_of_exp m g e1 in
     let (m2, g2, e2) = coq_exp_of_exp m1 g1 e2 in
     (m2, g2, QFBV.Bbinop (QFBV.Bsgt, e1, e2))
  | Sge (_, e1, e2) ->
     let (m1, g1, e1) = coq_exp_of_exp m g e1 in
     let (m2, g2, e2) = coq_exp_of_exp m1 g1 e2 in
     (m2, g2, QFBV.Bbinop (QFBV.Bsge, e1, e2))
  | Eq (_, e1, e2) ->
     let (m1, g1, e1) = coq_exp_of_exp m g e1 in
     let (m2, g2, e2) = coq_exp_of_exp m1 g1 e2 in
     (m2, g2, QFBV.Bbinop (QFBV.Beq, e1, e2))
  | Uaddo (_, e1, e2) ->
     let (m1, g1, e1) = coq_exp_of_exp m g e1 in
     let (m2, g2, e2) = coq_exp_of_exp m1 g1 e2 in
     (m2, g2, QFBV.Bbinop (QFBV.Buaddo, e1, e2))
  | Usubo (_, e1, e2) ->
     let (m1, g1, e1) = coq_exp_of_exp m g e1 in
     let (m2, g2, e2) = coq_exp_of_exp m1 g1 e2 in
     (m2, g2, QFBV.Bbinop (QFBV.Busubo, e1, e2))
  | Umulo (_, e1, e2) ->
     let (m1, g1, e1) = coq_exp_of_exp m g e1 in
     let (m2, g2, e2) = coq_exp_of_exp m1 g1 e2 in
     (m2, g2, QFBV.Bbinop (QFBV.Bumulo, e1, e2))
  | Saddo (_, e1, e2) ->
     let (m1, g1, e1) = coq_exp_of_exp m g e1 in
     let (m2, g2, e2) = coq_exp_of_exp m1 g1 e2 in
     (m2, g2, QFBV.Bbinop (QFBV.Bsaddo, e1, e2))
  | Ssubo (_, e1, e2) ->
     let (m1, g1, e1) = coq_exp_of_exp m g e1 in
     let (m2, g2, e2) = coq_exp_of_exp m1 g1 e2 in
     (m2, g2, QFBV.Bbinop (QFBV.Bssubo, e1, e2))
  | Smulo (_, e1, e2) ->
     let (m1, g1, e1) = coq_exp_of_exp m g e1 in
     let (m2, g2, e2) = coq_exp_of_exp m1 g1 e2 in
     (m2, g2, QFBV.Bbinop (QFBV.Bsmulo, e1, e2))
  | Lneg e ->
     let (m', g', e') = coq_bexp_of_bexp m g e in
     (m', g',  QFBV.Blneg e')
  | Conj (e1, e2) ->
     let (m1, g1, e1) = coq_bexp_of_bexp m g e1 in
     let (m2, g2, e2) = coq_bexp_of_bexp m1 g1 e2 in
     (m2, g2, QFBV.Bconj (e1, e2))
  | Disj (e1, e2) ->
     let (m1, g1, e1) = coq_bexp_of_bexp m g e1 in
     let (m2, g2, e2) = coq_bexp_of_bexp m1 g1 e2 in
     (m2, g2, QFBV.Bdisj (e1, e2))

let string_of_coq_eunop op =
  match op with
  | QFBV.Unot -> "not"
  | QFBV.Uneg -> "neg"
  | QFBV.Uextr (i, j) -> "uextr " ^ string_of_int (int_of_nat i) ^ " " ^ string_of_int (int_of_nat j)
  | QFBV.Uhigh n -> "high " ^ string_of_int (int_of_nat n)
  | QFBV.Ulow n -> "low " ^ string_of_int (int_of_nat n)
  | QFBV.Uzext n -> "zext " ^ string_of_int (int_of_nat n)
  | QFBV.Usext n -> "sext " ^ string_of_int (int_of_nat n)

let string_of_coq_ebinop op =
  match op with
  | QFBV.Band -> "and"
  | QFBV.Bor -> "or"
  | QFBV.Bxor -> "xor"
  | QFBV.Badd -> "add"
  | QFBV.Bsub -> "sub"
  | QFBV.Bmul -> "mul"
  | QFBV.Bmod -> "mod"
  | QFBV.Bsrem -> "srem"
  | QFBV.Bsmod -> "smod"
  | QFBV.Bshl -> "shl"
  | QFBV.Blshr -> "lshr"
  | QFBV.Bashr -> "ashr"
  | QFBV.Bconcat -> "cat"

let string_of_coq_bbinop op =
  match op with
  | QFBV.Beq -> "eq"
  | QFBV.Bult -> "ult"
  | QFBV.Bule -> "ule"
  | QFBV.Bugt -> "ugt"
  | QFBV.Buge -> "uge"
  | QFBV.Bslt -> "slt"
  | QFBV.Bsle -> "sle"
  | QFBV.Bsgt -> "sgt"
  | QFBV.Bsge -> "sge"
  | QFBV.Buaddo -> "uaddo"
  | QFBV.Busubo -> "usubo"
  | QFBV.Bumulo -> "umulo"
  | QFBV.Bsaddo -> "saddo"
  | QFBV.Bssubo -> "ssubo"
  | QFBV.Bsmulo -> "smulo"

let rec string_of_coq_exp e =
  match e with
  | QFBV.Evar v ->
	  let (vn, vi) = Obj.magic v in
	  "(" ^ string_of_int vn ^ ", " ^ string_of_int vi ^ ")"
  | QFBV.Econst n -> string_of_chars (NBitsDef.to_hex n)
  | QFBV.Eunop (op, e) -> string_of_coq_eunop op ^ " (" ^ string_of_coq_exp e ^ ")"
  | QFBV.Ebinop (op, e1, e2) -> string_of_coq_ebinop op ^ " (" ^ string_of_coq_exp e1 ^ ") (" ^ string_of_coq_exp e2 ^ ")"
  | QFBV.Eite (c, e1, e2) -> "(" ^ string_of_coq_bexp c ^ ")" ^ " ? (" ^ string_of_coq_exp e1 ^ ") : (" ^ string_of_coq_exp e2 ^ ")"
and string_of_coq_bexp e =
  match e with
  | QFBV.Btrue -> "true"
  | QFBV.Bfalse -> "false"
  | QFBV.Bbinop (op, e1, e2) -> string_of_coq_bbinop op ^ " (" ^ string_of_coq_exp e1 ^ ") (" ^ string_of_coq_exp e2 ^ ")"
  | QFBV.Blneg e -> "~(" ^ string_of_coq_bexp e ^ ")"
  | QFBV.Bconj (e1, e2) -> "(" ^ string_of_coq_bexp e1 ^ ") /\\ (" ^ string_of_coq_bexp e2 ^ ")"
  | QFBV.Bdisj (e1, e2) -> "(" ^ string_of_coq_bexp e1 ^ ") \\/ (" ^ string_of_coq_bexp e2 ^ ")"

let mk_conj es =
  let rec helper left es =
    match es with
    | [] -> left
    | hd::tl -> helper (Conj (left, hd)) tl in
  match es with
  | [] -> True
  | [hd] -> hd
  | hd::tl -> helper hd tl

let mk_disj es =
  let rec helper left es =
    match es with
    | [] -> left
    | hd::tl -> helper (Disj (left, hd)) tl in
  match es with
  | [] -> Lneg True
  | [hd] -> hd
  | hd::tl -> helper hd tl

let join_imp_list es =
  let (premises, goal) =
    match List.rev es with
    | goal::premises_rev -> (List.rev premises_rev, goal)
    | _ -> failwith "" in
  Disj (Lneg (mk_conj premises), goal)

let coq_string_of_literal l =
  match l with
  | CNF.Pos v -> string_of_int v
  | CNF.Neg v -> "-" ^ string_of_int v

let coq_output_clause ch c = output_string ch (String.concat " " (List.map coq_string_of_literal c) ^ " 0")

let coq_output_cnf ch cs = List.iter (fun c -> coq_output_clause ch c; output_string ch "\n") cs

let coq_output_dimacs ch cs =
  let nvars = CNF.max_var_of_cnf cs in
  let nclauses = CNF.num_clauses cs in
  let _ = output_string ch ("p cnf " ^ string_of_int nvars ^ " " ^ string_of_int nclauses ^ "\n") in
  let _ = coq_output_cnf ch cs in
  let _ = flush ch in
  ()

let coq_typ_of_typ t =
  match t with
  | Tuint w -> Typ.Tuint (nat_of_int w)
  | Tsint w -> Typ.Tsint (nat_of_int w)

let rec te_of_exp te m e =
  match e with
  | Var v ->
     begin
       try
         let coq_v = VM.find v m in
         let coq_ty = coq_typ_of_typ (v.vtyp) in
         SSATE.add coq_v coq_ty te
       with Not_found ->
         failwith ("Variable " ^ v.vname ^ " is not found in the Coq conversion map")
     end
  | Const _ -> te
  | Not (_, e)
  | Neg (_, e)
  | Extract (_, _, _, e)
  | Slice (_, _, _, e)
  | High (_, _, e)
  | Low (_, _, e)
  | ZeroExtend (_, _, e)
  | SignExtend (_, _, e) -> te_of_exp te m e
  | And (_, e1, e2)
  | Or (_, e1, e2)
  | Xor (_, e1, e2)
  | Add (_, e1, e2)
  | Sub (_, e1, e2)
  | Mul (_, e1, e2)
  | Mod (_, e1, e2)
  | Srem (_, e1, e2)
  | Smod (_, e1, e2)
  | Shl (_, e1, e2)
  | Lshr (_, e1, e2)
  | Ashr (_, e1, e2)
  | Concat (_, _, e1, e2) ->
     let te1 = te_of_exp te m e1 in
     let te2 = te_of_exp te1 m e2 in
     te2
  | Ite (_, c, e1, e2) ->
     let tec = te_of_bexp te m c in
     let te1 = te_of_exp tec m e1 in
     let te2 = te_of_exp te1 m e2 in
     te2
and te_of_bexp te m e =
  match e with
  | True -> te
  | Ult (_, e1, e2)
  | Ule (_, e1, e2)
  | Ugt (_, e1, e2)
  | Uge (_, e1, e2)
  | Slt (_, e1, e2)
  | Sle (_, e1, e2)
  | Sgt (_, e1, e2)
  | Sge (_, e1, e2)
  | Eq (_, e1, e2)
  | Uaddo (_, e1, e2)
  | Usubo (_, e1, e2)
  | Umulo (_, e1, e2)
  | Saddo (_, e1, e2)
  | Ssubo (_, e1, e2)
  | Smulo (_, e1, e2) ->
     let te1 = te_of_exp te m e1 in
     let te2 = te_of_exp te1 m e2 in
     te2
  | Lneg e -> te_of_bexp te m e
  | Conj (e1, e2)
  | Disj (e1, e2) ->
     let te1 = te_of_bexp te m e1 in
     let te2 = te_of_bexp te1 m e2 in
     te2


(* Option:
   true to bit-blast a huge conjunction of expressions;
   false to bit-blast the expressions separately *)
let bb_alltogether = ref false

(* Option: true to use the cache version *)
let coqbb_cache_version = ref true


(* This function is not thread safe. *)
(* Use the extracted code from coq-bitblasting to do bit-blasting. *)
let coq_cnf_imp_check_sat ch es =
  (* -- Bit-blasting a single huge expression : slower *)
  let bb_together () =
    let e = join_imp_list es in
    (* Convert to Coq expressions *)
    let (m, _, coq_e) = coq_bexp_of_bexp VM.empty 0 e in
    let te = te_of_bexp SSATE.empty m e in
    (* Bit-blasting *)
    let cs =
      let t1 = Unix.gettimeofday() in
      let _ = trace "Bit-blasting" in
      let cs = BitBlasting.bexp_to_cnf te coq_e in
      let t2 = Unix.gettimeofday() in
      let _ = trace ("Execution time of Bit-blasting: " ^ string_of_float (t2 -. t1) ^ " seconds") in
      cs in
    let _ = trace "Finished making clauses" in
    let _ = coq_output_dimacs ch cs in
    () in
  (* -- Bit-blasting expressions separately : faster *)
  let bb_separately () =
    let (m, _, coq_es_rev) =
      List.fold_left (fun (m, g, res) e ->
          let (m', g', e') = coq_bexp_of_bexp m g e in
          (m', g', e'::res)) (VM.empty, 1, []) es in
    let te = te_of_bexp SSATE.empty m (join_imp_list es) in
    let (premises, goal) =
      match coq_es_rev with
      | goal::premises_rev -> (List.rev premises_rev, goal)
      | _ -> failwith "" in
    let coq_m = BitBlasting.init_vm in
    let coq_g = BitBlasting.init_gen in
    let (coq_m, coq_g, cs_premises, lr_premises) =
      let t1 = Unix.gettimeofday() in
      let _ = trace "Bit-blasting premises" in
      let (coq_m, coq_g, cs_premises, lr_premises) =
        List.fold_left (
            fun (coq_m, coq_g, res_cs, res_lrs) p ->
            (*let _ = trace ("Bit-blasting: " ^ coq_string_of_bexp p) in*)
            let (((coq_m, coq_g), cs), lr) = BitBlastingDef.bit_blast_bexp te coq_m coq_g p in
            (coq_m, coq_g, cs@@res_cs, lr::res_lrs)) (coq_m, coq_g, [], []) premises in
      let t2 = Unix.gettimeofday() in
      let _ = trace ("Execution time of Bit-blasting premises: " ^ string_of_float (t2 -. t1) ^ " seconds") in
      (coq_m, coq_g, cs_premises, lr_premises) in
    let (_, _, cs_g, lr_g) =
      let t1 = Unix.gettimeofday() in
      (*let _ = trace ("Bit-blasting goal: " ^ coq_string_of_bexp goal) in*)
      let (((coq_m, coq_g), cs_g), lr_g) = BitBlastingDef.bit_blast_bexp te coq_m coq_g goal in
      let t2 = Unix.gettimeofday() in
      let _ = trace ("Execution time of Bit-blasting goal: " ^ string_of_float (t2 -. t1) ^ " seconds") in
      (coq_m, coq_g, cs_g, lr_g) in
    let clauses =
      let cs = (CNF.add_prelude cs_premises) in
      let cs = cs@@(List.rev_map (fun p -> [p]) lr_premises) in
      let cs = cs@@cs_g in
      let cs = cs@@[[CNF.neg_lit lr_g]] in
      cs in
    let _ = coq_output_dimacs ch clauses in
    () in
  let _ =
	if !bb_alltogether then bb_together()
	else bb_separately() in
  let _ = flush ch in
  ()

let oc_map = ref VM.empty (* a map from ocaml variables to Coq variables *)
let oc_gen = ref 0        (* a generator of Coq variable names *)
let vm_ref = ref BitBlastingInit.init_vm
let cache_ref = ref BitBlastingInit.init_cache
let gen_ref = ref BitBlastingInit.init_gen

let coq_cnf_imp_check_sat_reset () =
  let _ = oc_map := VM.empty in
  let _ = oc_gen := 0 in
  let _ = vm_ref := BitBlastingInit.init_vm in
  let _ = cache_ref := BitBlastingInit.init_cache in
  let _ = gen_ref := BitBlastingInit.init_gen in
  ()
  
(* This function is not thread safe. *)
(* Use the cache version in coq-bitblasting to do bit-blasting. *)
let coq_cnf_imp_check_sat_cache ch es =
  (* -- Bit-blasting a single huge expression : slower *)
  let bb_together () =
    let e = join_imp_list es in
    (* Convert to Coq expressions *)
    let (m', g', coq_e) = coq_bexp_of_bexp !oc_map !oc_gen e in
	let _ = oc_map := m' in
	let _ = oc_gen := g' in
    let te = te_of_bexp SSATE.empty m' e in
    (* Bit-blasting *)
    let cs =
      let t1 = Unix.gettimeofday() in
      let _ = trace "Bit-blasting" in
      let (((vm', cache'), gen'), cs) = BitBlastingCache.bexp_to_cnf_cache te !vm_ref !cache_ref !gen_ref coq_e in
	  let _ =
		let _ = vm_ref := vm' in
		let _ = cache_ref := cache' in
		let _ = gen_ref := gen' in
		() in
      let t2 = Unix.gettimeofday() in
      let _ = trace ("Execution time of Bit-blasting: " ^ string_of_float (t2 -. t1) ^ " seconds") in
      cs in
    let _ = trace "Finished making clauses" in
    let _ = coq_output_dimacs ch cs in
    () in
  (* -- Bit-blasting expressions separately : faster *)
  let bb_separately () =
    let (m', g', coq_es_rev) =
      List.fold_left (fun (m, g, res) e ->
          let (m', g', e') = coq_bexp_of_bexp m g e in
          (m', g', e'::res)) (!oc_map, !oc_gen, []) es in
	let _ = oc_map := m' in
	let _ = oc_gen := g' in	
    let te = te_of_bexp SSATE.empty m' (join_imp_list es) in
    let (premises, goal) =
      match coq_es_rev with
      | goal::premises_rev -> (List.rev premises_rev, goal)
      | _ -> failwith "" in
	(* Bit-blast premises *)
    let (coq_m, coq_c, coq_g, cs_premises, lr_premises) =
      let t1 = Unix.gettimeofday() in
      let _ = trace "Bit-blasting premises" in
      let (coq_m, coq_c, coq_g, cs_premises, lr_premises) =
        List.fold_left (
            fun (coq_m, coq_c, coq_g, res_cs, res_lrs) p ->
            let ((((coq_m, coq_c), coq_g), cs), lr) = BitBlastingCacheDef.bit_blast_bexp_cache te coq_m coq_c coq_g p in
            (coq_m, coq_c, coq_g, cs@@res_cs, lr::res_lrs)) (!vm_ref, !cache_ref, !gen_ref, [], []) premises in
      let t2 = Unix.gettimeofday() in
      let _ = trace ("Execution time of Bit-blasting premises: " ^ string_of_float (t2 -. t1) ^ " seconds") in
      (coq_m, coq_c, coq_g, cs_premises, lr_premises) in
	(* Bit-blast goal *)
    let (coq_m, coq_c, coq_g, cs_g, lr_g) =
      let t1 = Unix.gettimeofday() in
      let ((((coq_m, coq_c), coq_g), cs_g), lr_g) = BitBlastingCacheDef.bit_blast_bexp_cache te coq_m coq_c coq_g goal in
      let t2 = Unix.gettimeofday() in
      let _ = trace ("Execution time of Bit-blasting goal: " ^ string_of_float (t2 -. t1) ^ " seconds") in
      (coq_m, coq_c, coq_g, cs_g, lr_g) in
	(* Update cache *)
	let _ =
	  let _ = vm_ref := coq_m in
	  let _ = cache_ref := coq_c in
	  let _ = gen_ref := coq_g in
	  () in
	(* Output clauses *)
    let _ =
      let clauses =
		let cs = (CNF.add_prelude cs_premises) in
		let cs = cs@@(List.rev_map (fun p -> [p]) lr_premises) in
		let cs = cs@@cs_g in
		let cs = cs@@[[CNF.neg_lit lr_g]] in
		cs in
	  coq_output_dimacs ch clauses in
    () in
  let _ =
	if !bb_alltogether then bb_together()
    else bb_separately() in
  let _ = flush ch in
  ()

let cnf_imp_check_sat ch es =
  if !certified_procedures then
	if !coqbb_cache_version then coq_cnf_imp_check_sat_cache ch es
	else coq_cnf_imp_check_sat ch es
  else cnf_imp_check_sat ch es
