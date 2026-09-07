open Ast.Cryptoline
open Utils.Float

module VM = Ast.Cryptoline.VM

type interval = {
  lo : FloatConst.t;
  hi : FloatConst.t;
}

type fp_abs =
  | Bottom
  | Value of {
      neg : interval option;
      zero : bool;
      pos : interval option;
    }

type state = fp_abs VM.t

type error =
  | Unsupported of string
  | Invalid of string

type verify_result =
  | Proved
  | Not_proved
  | Unsupported of string

let result_bind r f =
  match r with
  | Ok v -> f v
  | Error _ as e -> e

let ( let* ) = result_bind

let unsupported msg : ('a, error) result =
  Error ((Unsupported msg : error))

let invalid msg : ('a, error) result =
  Error (Invalid msg)

let falcon_prec = Double
let fp_zero = FloatConst.zero
let fp_one = FloatConst.one
let fp_min = FloatConst.min_val falcon_prec
let fp_minsub = FloatConst.of_string "2.2250738585072014e-308" ~rnd:RNE
let fp_max = FloatConst.max_val falcon_prec
let fp_neg_max = FloatConst.neg fp_max ~rnd:RNE
let fp_neg_min = FloatConst.neg fp_min ~rnd:RNE
let fp_neg_minsub = FloatConst.neg fp_minsub ~rnd:RNE

let value ?neg ?(zero=false) ?pos () = Value { neg; zero; pos }

let interval_make lo hi =
  if FloatConst.cmp lo hi <= 0 then Some { lo; hi } else None

let interval_singleton x = { lo = x; hi = x }

let interval_equal x y =
  FloatConst.eq x.lo y.lo && FloatConst.eq x.hi y.hi

let fp_abs_equal x y =
  match x, y with
  | Bottom, Bottom -> true
  | Value x, Value y ->
      x.zero = y.zero
      &&
      (match x.neg, y.neg with
       | None, None -> true
       | Some a, Some b -> interval_equal a b
       | _ -> false)
      &&
      (match x.pos, y.pos with
       | None, None -> true
       | Some a, Some b -> interval_equal a b
       | _ -> false)
  | _ -> false

let top_double =
  value
    ~neg:{ lo = fp_neg_max; hi = fp_neg_min }
    ~zero:true
    ~pos:{ lo = fp_min; hi = fp_max }
    ()

let empty_state = VM.empty

let require_double_typ = function
  | Tdouble -> Ok ()
  | Tsingle -> unsupported "FloatAbs currently supports only Tdouble."
  | _ -> unsupported "FloatAbs expected a floating-point type."

let require_double_var v = require_double_typ (typ_of_var v)

let top_of_var_type = function
  | Tdouble -> Ok top_double
  | Tsingle -> unsupported "FloatAbs currently supports only Tdouble."
  | _ -> unsupported "FloatAbs expected a floating-point type."

let find st v =
  try Ok (VM.find v st)
  with Not_found -> top_of_var_type (typ_of_var v)

let set st v abs = VM.add v abs st

let float_neg x = FloatConst.neg x ~rnd:RNE
let float_abs x = FloatConst.abs x ~rnd:RNE

let add_down x y =
  FloatConst.add x y ~rnd:RTN |> FloatConst.round_to falcon_prec ~rnd:RTN

let add_up x y =
  FloatConst.add x y ~rnd:RTP |> FloatConst.round_to falcon_prec ~rnd:RTP

let sub_down x y =
  FloatConst.sub x y ~rnd:RTN |> FloatConst.round_to falcon_prec ~rnd:RTN

let sub_up x y =
  FloatConst.sub x y ~rnd:RTP |> FloatConst.round_to falcon_prec ~rnd:RTP

let mul_down x y =
  FloatConst.mul x y ~rnd:RTN |> FloatConst.round_to falcon_prec ~rnd:RTN

let mul_up x y =
  FloatConst.mul x y ~rnd:RTP |> FloatConst.round_to falcon_prec ~rnd:RTP

let div_down x y =
  FloatConst.div x y ~rnd:RTN |> FloatConst.round_to falcon_prec ~rnd:RTN

let div_up x y =
  FloatConst.div x y ~rnd:RTP |> FloatConst.round_to falcon_prec ~rnd:RTP

let sqrt_down x =
  FloatConst.pow x (FloatConst.of_string "0.5" ~rnd:RNE) ~rnd:RTN
  |> FloatConst.round_to falcon_prec ~rnd:RTN

let sqrt_up x =
  FloatConst.pow x (FloatConst.of_string "0.5" ~rnd:RNE) ~rnd:RTP
  |> FloatConst.round_to falcon_prec ~rnd:RTP

let interval_hull xs =
  match List.filter_map (fun x -> x) xs with
  | [] -> None
  | hd :: tl ->
      Some
        (List.fold_left
           (fun acc iv ->
             {
               lo = if FloatConst.cmp iv.lo acc.lo < 0 then iv.lo else acc.lo;
               hi = if FloatConst.cmp iv.hi acc.hi > 0 then iv.hi else acc.hi;
             })
           hd
           tl)

let interval_neg = function
  | None -> None
  | Some i -> Some { lo = float_neg i.hi; hi = float_neg i.lo }

let interval_add i1 i2 =
  match i1, i2 with
  | Some a, Some b -> Some { lo = add_down a.lo b.lo; hi = add_up a.hi b.hi }
  | _ -> None

let interval_sub i1 i2 =
  match i1, i2 with
  | Some a, Some b -> Some { lo = sub_down a.lo b.hi; hi = sub_up a.hi b.lo }
  | _ -> None

let interval_mul i1 i2 =
  match i1, i2 with
  | Some a, Some b ->
      let candidates =
        [
          mul_down a.lo b.lo;
          mul_down a.lo b.hi;
          mul_down a.hi b.lo;
          mul_down a.hi b.hi;
        ]
      in
      let uppers =
        [
          mul_up a.lo b.lo;
          mul_up a.lo b.hi;
          mul_up a.hi b.lo;
          mul_up a.hi b.hi;
        ]
      in
      let lo =
        List.fold_left
          (fun acc x -> if FloatConst.cmp x acc < 0 then x else acc)
          (List.hd candidates)
          (List.tl candidates)
      in
      let hi =
        List.fold_left
          (fun acc x -> if FloatConst.cmp x acc > 0 then x else acc)
          (List.hd uppers)
          (List.tl uppers)
      in
      Some { lo; hi }
  | _ -> None

let interval_contains_zero = function
  | None -> false
  | Some i -> FloatConst.cmp i.lo fp_zero <= 0 && FloatConst.cmp i.hi fp_zero >= 0

let interval_recip = function
  | None -> None
  | Some i ->
      if FloatConst.cmp i.lo fp_zero <= 0 && FloatConst.cmp i.hi fp_zero >= 0 then None
      else Some { lo = div_down fp_one i.hi; hi = div_up fp_one i.lo }

let interval_sqrt = function
  | None -> None
  | Some i when FloatConst.cmp i.lo fp_zero < 0 -> None
  | Some i -> Some { lo = sqrt_down i.lo; hi = sqrt_up i.hi }

let interval_strictly_gt x c =
  match x with
  | Some i -> FloatConst.cmp i.lo c > 0
  | None -> false

let interval_ge x c =
  match x with
  | Some i -> FloatConst.cmp i.lo c >= 0
  | None -> false

let interval_strictly_lt x c =
  match x with
  | Some i -> FloatConst.cmp i.hi c < 0
  | None -> false

let interval_le x c =
  match x with
  | Some i -> FloatConst.cmp i.hi c <= 0
  | None -> false

let normalize_result neg zero pos =
  let bad iv =
    match iv with
    | None -> false
    | Some i ->
        FloatConst.cmp i.lo fp_neg_max < 0 || FloatConst.cmp i.hi fp_max > 0
  in
  if bad neg || bad pos then Bottom else value ?neg ~zero ?pos ()

let interval_has_subnormal = function
  | None -> false
  | Some i ->
      (FloatConst.cmp i.hi fp_zero > 0 && FloatConst.cmp i.lo fp_minsub < 0)
      || (FloatConst.cmp i.hi fp_neg_min < 0 && FloatConst.cmp i.lo fp_zero < 0
          && FloatConst.cmp i.hi fp_neg_minsub > 0)

let has_subnormal_component = function
  | Bottom -> false
  | Value { neg; pos; _ } -> interval_has_subnormal neg || interval_has_subnormal pos

let fp_of_const c =
  if FloatConst.eq c fp_zero then Ok (value ~zero:true ())
  else if FloatConst.cmp c fp_zero > 0 then Ok (value ~pos:(interval_singleton c) ())
  else Ok (value ~neg:(interval_singleton c) ())

let fp_neg = function
  | Bottom -> Bottom
  | Value { neg; zero; pos } -> value ?neg:(interval_neg pos) ~zero ?pos:(interval_neg neg) ()

let fp_add a b =
  match a, b with
  | Bottom, _ | _, Bottom -> Bottom
  | Value a, Value b ->
      let neg =
        interval_hull
          [
            interval_add a.neg b.neg;
            interval_sub a.neg (interval_neg b.pos);
            interval_sub b.neg (interval_neg a.pos);
          ]
      in
      let pos =
        interval_hull
          [
            interval_add a.pos b.pos;
            interval_sub a.pos (interval_neg b.neg);
            interval_sub b.pos (interval_neg a.neg);
          ]
      in
      let zero =
        (a.zero && b.zero)
        || (a.zero && b.neg <> None && b.pos <> None)
        || (b.zero && a.neg <> None && a.pos <> None)
        || interval_contains_zero (interval_add a.neg b.pos)
        || interval_contains_zero (interval_add a.pos b.neg)
      in
      normalize_result neg zero pos

let fp_sub a b = fp_add a (fp_neg b)

let fp_mul_raw a b =
  match a, b with
  | Bottom, _ | _, Bottom -> Bottom
  | Value a, Value b ->
      let neg =
        interval_hull
          [
            interval_mul a.neg b.pos;
            interval_mul a.pos b.neg;
          ]
      in
      let pos =
        interval_hull
          [
            interval_mul a.neg b.neg;
            interval_mul a.pos b.pos;
          ]
      in
      let zero =
        a.zero || b.zero
        || interval_contains_zero (interval_mul a.neg b.pos)
        || interval_contains_zero (interval_mul a.pos b.neg)
        || interval_contains_zero (interval_mul a.neg b.neg)
        || interval_contains_zero (interval_mul a.pos b.pos)
      in
      normalize_result neg zero pos

let check_subnormal_operands lhs rhs =
  if has_subnormal_component lhs || has_subnormal_component rhs then
    unsupported "FloatAbs does not model the PDF's unresolved subnormal-operand multiplication case."
  else
    Ok ()

let fp_mul a b =
  let* () = check_subnormal_operands a b in
  Ok (fp_mul_raw a b)

let fp_recip = function
  | Bottom -> Bottom
  | Value { zero = true; _ } -> Bottom
  | Value { neg; zero = false; pos } ->
      normalize_result (interval_recip neg) false (interval_recip pos)

let fp_div a b = fp_mul a (fp_recip b)

let fp_abs = function
  | Bottom -> Bottom
  | Value { neg; zero; pos } ->
      value ~zero ?pos:(interval_hull [ pos; interval_neg neg ]) ()

let fp_sqrt = function
  | Bottom -> Bottom
  | Value { neg = Some _; _ } -> Bottom
  | Value { zero; pos; _ } ->
      (match interval_sqrt pos with
       | Some i -> value ~zero ~pos:i ()
       | None -> if zero then value ~zero:true () else Bottom)

let interval_round = function
  | None -> None
  | Some i ->
      Some
        {
          lo = FloatConst.round_to falcon_prec ~rnd:RTN i.lo;
          hi = FloatConst.round_to falcon_prec ~rnd:RTP i.hi;
        }

let fp_round = function
  | Bottom -> Bottom
  | Value { neg; zero; pos } -> value ?neg:(interval_round neg) ~zero ?pos:(interval_round pos) ()

let eval_atom st = function
  | Avar v ->
      let* () = require_double_var v in
      find st v
  | Aconst (Tdouble, Cfloat f) -> fp_of_const f
  | Aconst (Tsingle, Cfloat _) -> unsupported "FloatAbs currently supports only Tdouble."
  | Aconst _ -> unsupported "FloatAbs expected a floating-point atom."

let rec eval_rexp st = function
  | Rvar v ->
      let* () = require_double_var v in
      find st v
  | Rconst (_, Cfloat f) -> fp_of_const f
  | Rconst _ -> unsupported "FloatAbs expected a floating-point expression."
  | Runop (_, Rnegb, e) ->
      let* v = eval_rexp st e in
      Ok (fp_neg v)
  | Runop _ -> unsupported "FloatAbs does not support this unary floating expression."
  | Rbinop (_, op, e1, e2) ->
      let* v1 = eval_rexp st e1 in
      let* v2 = eval_rexp st e2 in
      begin
        match op with
        | Radd -> Ok (fp_add v1 v2)
        | Rsub -> Ok (fp_sub v1 v2)
        | Rmul -> fp_mul v1 v2
        | Rdiv -> fp_div v1 v2
        | _ -> unsupported "FloatAbs does not support this binary floating expression."
      end
  | Ruext _ | Rsext _ | Rconcat _ ->
      unsupported "FloatAbs does not support bitvector structure inside floating expressions."

let refine_upper iv upper strict =
  match iv with
  | None -> None
  | Some i ->
      if FloatConst.cmp i.lo upper > 0 then None
      else
        let hi =
          if strict && FloatConst.eq i.lo upper && FloatConst.eq i.hi upper then
            None
          else if FloatConst.cmp i.hi upper > 0 then Some upper
          else Some i.hi
        in
        Option.bind hi (fun hi' -> interval_make i.lo hi')

let refine_lower iv lower strict =
  match iv with
  | None -> None
  | Some i ->
      if FloatConst.cmp i.hi lower < 0 then None
      else
        let lo =
          if strict && FloatConst.eq i.lo lower && FloatConst.eq i.hi lower then
            None
          else if FloatConst.cmp i.lo lower < 0 then Some lower
          else Some i.lo
        in
        Option.bind lo (fun lo' -> interval_make lo' i.hi)

let assume_var_cmp_const st v op c =
  let* cur = find st v in
  match cur with
  | Bottom -> Ok (set st v Bottom)
  | Value { neg; zero; pos } ->
      let neg', zero', pos' =
        match op with
        | Rfplt ->
            (refine_upper neg c true, zero && FloatConst.cmp fp_zero c < 0, refine_upper pos c true)
        | Rfple ->
            (refine_upper neg c false, zero && FloatConst.cmp fp_zero c <= 0, refine_upper pos c false)
        | Rfpgt ->
            (refine_lower neg c true, zero && FloatConst.cmp fp_zero c > 0, refine_lower pos c true)
        | Rfpge ->
            (refine_lower neg c false, zero && FloatConst.cmp fp_zero c >= 0, refine_lower pos c false)
        | _ -> (neg, zero, pos)
      in
      Ok (set st v (normalize_result neg' zero' pos'))

let assume_var_eq_const st v c =
  let* () = require_double_var v in
  let* abs = fp_of_const c in
  Ok (set st v abs)

let rec assume_rbexp st = function
  | Rtrue -> Ok st
  | Rand (p1, p2) ->
      let* st' = assume_rbexp st p1 in
      assume_rbexp st' p2
  | Req (_, Rvar v, Rconst (_, Cfloat c))
  | Req (_, Rconst (_, Cfloat c), Rvar v) -> assume_var_eq_const st v c
  | Rcmp (_, op, Rvar v, Rconst (_, Cfloat c)) ->
      begin
        match op with
        | Rfplt | Rfple | Rfpgt | Rfpge -> assume_var_cmp_const st v op c
        | _ -> unsupported "FloatAbs only refines floating-point comparisons."
      end
  | Rcmp (_, op, Rconst (_, Cfloat c), Rvar v) ->
      let flipped =
        match op with
        | Rfplt -> Rfpgt
        | Rfple -> Rfpge
        | Rfpgt -> Rfplt
        | Rfpge -> Rfple
        | _ -> op
      in
      begin
        match flipped with
        | Rfplt | Rfple | Rfpgt | Rfpge -> assume_var_cmp_const st v flipped c
        | _ -> unsupported "FloatAbs only refines floating-point comparisons."
      end
  | _ -> unsupported "FloatAbs currently supports only simple FP assumptions."

let singleton_value = function
  | Bottom -> None
  | Value { neg = None; zero = true; pos = None } -> Some fp_zero
  | Value { neg = Some i; zero = false; pos = None }
  | Value { neg = None; zero = false; pos = Some i } when FloatConst.eq i.lo i.hi -> Some i.lo
  | _ -> None

let definitely_eq a b =
  match singleton_value a, singleton_value b with
  | Some x, Some y -> FloatConst.eq x y
  | _ -> false

let lower_bound = function
  | Bottom -> None
  | Value { neg = Some i; _ } -> Some i.lo
  | Value { zero = true; _ } -> Some fp_zero
  | Value { pos = Some i; _ } -> Some i.lo
  | Value _ -> None

let upper_bound = function
  | Bottom -> None
  | Value { pos = Some i; _ } -> Some i.hi
  | Value { zero = true; _ } -> Some fp_zero
  | Value { neg = Some i; _ } -> Some i.hi
  | Value _ -> None

let definitely_cmp op a b =
  match lower_bound a, upper_bound a, lower_bound b, upper_bound b with
  | Some alo, Some ahi, Some blo, Some bhi ->
      begin
        match op with
        | Rfplt -> FloatConst.cmp ahi blo < 0
        | Rfple -> FloatConst.cmp ahi blo <= 0
        | Rfpgt -> FloatConst.cmp alo bhi > 0
        | Rfpge -> FloatConst.cmp alo bhi >= 0
        | _ -> false
      end
  | _ -> false

let rec prove_rbexp st = function
  | Rtrue -> Ok true
  | Rand (p1, p2) ->
      let* b1 = prove_rbexp st p1 in
      if b1 then prove_rbexp st p2 else Ok false
  | Ror (p1, p2) ->
      let* b1 = prove_rbexp st p1 in
      if b1 then Ok true else prove_rbexp st p2
  | Rneg _ -> unsupported "FloatAbs does not yet prove negated predicates."
  | Req (_, e1, e2) ->
      let* v1 = eval_rexp st e1 in
      let* v2 = eval_rexp st e2 in
      Ok (definitely_eq v1 v2)
  | Rcmp (_, op, e1, e2) ->
      begin
        match op with
        | Rfplt | Rfple | Rfpgt | Rfpge ->
            let* v1 = eval_rexp st e1 in
            let* v2 = eval_rexp st e2 in
            Ok (definitely_cmp op v1 v2)
        | _ -> unsupported "FloatAbs only proves floating-point comparisons."
      end

let interp_instr st = function
  | Imov (dst, src) when var_is_float dst ->
      let* () = require_double_var dst in
      let* abs = eval_atom st src in
      Ok (set st dst abs)
  | Iadd (dst, a1, a2) when var_is_float dst ->
      let* () = require_double_var dst in
      let* v1 = eval_atom st a1 in
      let* v2 = eval_atom st a2 in
      Ok (set st dst (fp_add v1 v2))
  | Isub (dst, a1, a2) when var_is_float dst ->
      let* () = require_double_var dst in
      let* v1 = eval_atom st a1 in
      let* v2 = eval_atom st a2 in
      Ok (set st dst (fp_sub v1 v2))
  | Imul (dst, a1, a2) when var_is_float dst ->
      let* () = require_double_var dst in
      let* v1 = eval_atom st a1 in
      let* v2 = eval_atom st a2 in
      let* v = fp_mul v1 v2 in
      Ok (set st dst v)
  | Idiv (dst, a1, a2) when var_is_float dst ->
      let* () = require_double_var dst in
      let* v1 = eval_atom st a1 in
      let* v2 = eval_atom st a2 in
      let* v = fp_div v1 v2 in
      Ok (set st dst v)
  | Iassume pred -> assume_rbexp st (rng_bexp pred)
  | Ighost (_, pred) -> assume_rbexp st (rng_bexp pred)
  | instr ->
      if VS.exists var_is_float (VS.union (lvs_instr instr) (rvs_instr instr)) then
        unsupported ("FloatAbs does not support instruction: " ^ string_of_instr instr)
      else
        Ok st

let rec interp_prog st = function
  | [] -> Ok st
  | instr :: tl ->
      let* st' = interp_instr st instr in
      interp_prog st' tl

let vars_in_prog prog =
  List.fold_left
    (fun acc instr -> VS.union acc (VS.union (lvs_instr instr) (rvs_instr instr)))
    VS.empty
    prog

let float_vars_of_rspec rs =
  VS.filter
    var_is_float
    (VS.union
       (vars_rbexp rs.rspre)
       (VS.union (vars_in_prog rs.rsprog) (vars_rbexp_prove_with rs.rspost)))

let initial_state rs =
  VS.fold
    (fun v acc ->
      let* st = acc in
      let* top = top_of_var_type (typ_of_var v) in
      Ok (set st v top))
    (float_vars_of_rspec rs)
    (Ok empty_state)

let verify_rspec rs =
  match initial_state rs with
  | Error ((Unsupported msg : error))
  | Error ((Invalid msg : error)) ->
      Unsupported msg
  | Ok st0 ->
      begin
        match assume_rbexp st0 rs.rspre with
        | Error ((Unsupported msg : error))
        | Error ((Invalid msg : error)) ->
            Unsupported msg
        | Ok st1 ->
            begin
              match interp_prog st1 rs.rsprog with
              | Error ((Unsupported msg : error))
              | Error ((Invalid msg : error)) ->
                  Unsupported msg
              | Ok st2 ->
                  match prove_rbexp st2 (rbexp_prove_with_rands rs.rspost) with
                  | Ok true -> Proved
                  | Ok false -> Not_proved
                  | Error ((Unsupported msg : error))
                  | Error ((Invalid msg : error)) ->
                      Unsupported msg
            end
      end
