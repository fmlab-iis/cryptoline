(*Import*)
open Ast.Cryptoline
open Apron
open Utils.Std


module FloatAbsDomain = struct

  type fp_abs = {
    pos: Interval.t option;    (* positive interval *)
    neg: Interval.t option;    (* negative interval *)
    zero: bool;                
    bot: bool;
    (*nan: bool; NaN detection*)
  }

  type t = {
    env: Environment.t;
    fp_map: fp_abs array;
  }

  (* constants of Falcon*)
  let mpq_min = (* min = 2^{-1074} *)
    let one = Mpq.of_int 1 in
    let two_1074 = Mpq.init () in
    let () = Mpq.mul_2exp two_1074 one 1074 in
    Mpq.div one two_1074
  
  let mpq_max = (*max = (2-2^{-52})*2^{1023}*)
    let two = Mpq.of_int 2 in
    let two_52 = Mpq.init () in
    let () = Mpq.mul_2exp two_52 (Mpq.of_int 1) 52 in
    let tmp = Mpq.init () in
    let () = Mpq.div tmp (Mpq.of_int 1) two_52 in
    let () = Mpq.sub tmp two tmp in
    let two_1023 = Mpq.init () in
    let () = Mpq.mul_2exp two_1023 (Mpq.of_int 1) 1023 in
    let result = Mpq.init () in
    let () = Mpq.mul result tmp two_1023 in
    result
  
  let scalar_min = Scalar.of_mpq mpq_min
  let scalar_max = Scalar.of_mpq mpq_max
    
  let fp_bottom () = { pos = None; neg = None; zero = false; bot = true }
  
  let fp_top () = 
    let pos_iv = Interval.of_scalar scalar_min scalar_max in
    let neg_iv = Interval.of_scalar (Scalar.neg scalar_max) (Scalar.neg scalar_min) in
    { pos = Some pos_iv; neg = Some neg_iv; zero = true; bot = false }
  
  (*Constant abstraction*)
  let fp_of_const (c: Scalar.t) : fp_abs =
    let zero = Scalar.of_int 0 in
    match Scalar.cmp c zero with
    | 0 -> { pos = None; neg = None; zero = true; bot = false }
    | n when n > 0 ->
        let iv = Interval.of_scalar c c in
        { pos = Some iv; neg = None; zero = false; bot = false }
    | _ ->  (* n < 0 *)
        let iv = Interval.of_scalar c c in
        { pos = None; neg = Some iv; zero = false; bot = false }

  (* Hull of intervals*)
  let interval_hull intervals =
    let valid = List.filter (fun x -> x <> None) intervals in
    match valid with
    | [] -> None
    | Some first::rest ->
        let rec combine acc = function
          | [] -> acc
          | Some iv::more ->
              let new_inf = if Scalar.cmp iv.inf acc.inf < 0 then iv.inf else acc.inf in
              let new_sup = if Scalar.cmp iv.sup acc.sup > 0 then iv.sup else acc.sup in
              combine (Interval.of_scalar new_inf new_sup) more
          | None::more -> combine acc more
        in
        Some (combine first rest)
    | _ -> None

  (*Addition of intervals doesn't use the correct rounding mode*)
  let interval_add i1 i2 =
    match i1, i2 with
    | Some iv1, Some iv2 ->
        let a = Scalar.to_mpq iv1.inf in
        let b = Scalar.to_mpq iv1.sup in
        let c = Scalar.to_mpq iv2.inf in
        let d = Scalar.to_mpq iv2.sup in
        let lo = Mpq.init () in
        let hi = Mpq.init () in
        let () = Mpq.add lo a c in
        let () = Mpq.add hi b d in
        Some (Interval.of_mpq lo hi)
    | _ -> None
  (*Negation of intervals*)
  let interval_neg iv =
    match iv with
    | Some i -> Some (Interval.of_scalar (Scalar.neg i.sup) (Scalar.neg i.inf))
    | None -> None

  (*Check overflow/underflow*)
  let check_overflow pos neg =
    let overflow_pos = match pos with
      | Some iv -> Scalar.cmp iv.sup scalar_max > 0
      | None -> false in
    let overflow_neg = match neg with
      | Some iv -> Scalar.cmp iv.inf (Scalar.neg scalar_max) < 0
      | None -> false in
    overflow_pos || overflow_neg

  let check_underflow (iv: Interval.t option) : bool =
    match iv with
    | Some i ->
        (Scalar.cmp i.inf (Scalar.of_int 0) > 0 && 
         Scalar.cmp i.sup scalar_min < 0) ||
        (Scalar.cmp i.inf (Scalar.neg scalar_min) > 0 && 
         Scalar.cmp i.sup (Scalar.of_int 0) < 0)
    | None -> false
  let check_float_result (pos_interval: Interval.t option) 
                         (neg_interval: Interval.t option) 
                         (zero_possible: bool) : fp_abs =
    (* overflow *)
    if check_overflow pos_interval neg_interval then
      fp_bottom ()
    (* underflow *)
    else if check_underflow pos_interval || check_underflow neg_interval then
      fp_bottom ()
    else
      { pos = pos_interval; neg = neg_interval; zero = zero_possible; bot = false }

  (*Addition*)
  let fp_add a b =
    if a.bot || b.bot then fp_bottom () (*operated with bottom*)
    else
      (* positive interval *)
      let pos_candidates = [
        interval_add a.pos b.pos;
        (match interval_add a.neg b.pos with
         | Some iv -> if Scalar.cmp iv.inf scalar_min >= 0 then Some iv else None
         | None -> None);
        (match interval_add a.pos b.neg with
         | Some iv -> if Scalar.cmp iv.inf scalar_min >= 0 then Some iv else None
         | None -> None);
        (if b.zero then a.pos else None);
        (if a.zero then b.pos else None);
      ] in
      
      let pos_interval = interval_hull pos_candidates in
      
      (* negative interval *)
      let neg_candidates = [
        interval_add a.neg b.neg;
        (match interval_add a.neg b.pos with
         | Some iv -> if Scalar.cmp iv.sup (Scalar.neg scalar_min) <= 0 then Some iv else None
         | None -> None);
        (match interval_add a.pos b.neg with
         | Some iv -> if Scalar.cmp iv.sup (Scalar.neg scalar_min) <= 0 then Some iv else None
         | None -> None);
        (if b.zero then a.neg else None);
        (if a.zero then b.neg else None);
      ] in
      
      let neg_interval = interval_hull neg_candidates in

      (* zero detection*)
      let interval_has_zero iv =
        match iv with
        | Some i -> 
            let zero = Scalar.of_int 0 in
            Scalar.cmp i.inf zero <= 0 && Scalar.cmp i.sup zero >= 0
        | None -> false in
      
      let zero_possible =
        a.zero && b.zero ||
        interval_has_zero (interval_add a.pos b.pos) ||
        interval_has_zero (interval_add a.neg b.neg) ||
        interval_has_zero (interval_add a.neg b.pos) ||
        interval_has_zero (interval_add a.pos b.neg) in
      
      check_float_result pos_interval neg_interval zero_possible
  (*Negation*)
  let fp_neg a =
    if a.bot then fp_bottom ()
    else
      { pos = interval_neg a.neg;
        neg = interval_neg a.pos;
        zero = a.zero;
        bot = false }

  (* Subtraction *)
  let fp_sub a b = 
    if a.bot || b.bot then fp_bottom ()
    else
      fp_add a (fp_neg b)
end
