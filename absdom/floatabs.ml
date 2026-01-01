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

  (*Addition of intervals*)
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

  (* 完整的檢查函數 *)
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

  let create (env: Environment.t) (is_top: bool) : t =
    let size = Environment.size env in
    let init_abs = if is_top then fp_top () else fp_bottom () in
    { env; fp_map = Array.make size init_abs }

  let get_var_abs (abs: t) (var: Var.t) : fp_abs =
    let idx = Environment.var_of_string abs.env (Var.to_string var) in
    if idx >= 0 && idx < Array.length abs.fp_map then
      abs.fp_map.(idx)
    else
      fp_bottom ()

  let set_var_abs (abs: t) (var: Var.t) (fp: fp_abs) : t =
    let idx = Environment.var_of_string abs.env (Var.to_string var) in
    if idx >= 0 && idx < Array.length abs.fp_map then
      let new_map = Array.copy abs.fp_map in
      new_map.(idx) <- fp;
      { abs with fp_map = new_map }
    else
      abs

  let apply_float_op (abs: t) (result_var: Var.t) (op: string) 
                     (arg1: Var.t) (arg2: Var.t option) : t =
    let fp1 = get_var_abs abs arg1 in
    let fp2 = match arg2 with
      | Some v -> get_var_abs abs v
      | None -> fp_top () in
    
    let result_fp = match op with
      | "neg" -> fp_neg fp1
      | "add" -> fp_add fp1 fp2
      | "sub" -> fp_sub fp1 fp2
      | _ -> fp_top () in
    
    set_var_abs abs result_var result_fp

  let assign_const (abs: t) (var: Var.t) (value: Scalar.t) : t =
    let fp = fp_of_const value in
    set_var_abs abs var fp

  let join (abs1: t) (abs2: t) : t =
    if abs1.env != abs2.env then
      invalid_arg "environments differ"
    else
      let size = Array.length abs1.fp_map in
      let new_map = Array.init size (fun i ->
        let fp1 = abs1.fp_map.(i) in
        let fp2 = abs2.fp_map.(i) in
        if fp1.bot then fp2
        else if fp2.bot then fp1
        else
          (* positive interval *)
          let pos = match fp1.pos, fp2.pos with
            | Some p1, Some p2 ->
                let lo = if Scalar.cmp p1.inf p2.inf < 0 then p1.inf else p2.inf in
                let hi = if Scalar.cmp p1.sup p2.sup > 0 then p1.sup else p2.sup in
                Some (Interval.of_scalar lo hi)
            | Some p, None | None, Some p -> Some p
            | None, None -> None in
          
          (* negative interval *)
          let neg = match fp1.neg, fp2.neg with
            | Some n1, Some n2 ->
                let lo = if Scalar.cmp n1.inf n2.inf < 0 then n1.inf else n2.inf in
                let hi = if Scalar.cmp n1.sup n2.sup > 0 then n1.sup else n2.sup in
                Some (Interval.of_scalar lo hi)
            | Some n, None | None, Some n -> Some n
            | None, None -> None in
          
          (* zero flag *)
          let zero = fp1.zero || fp2.zero in
          
          { pos; neg; zero; bot = false }
      ) in
      { env = abs1.env; fp_map = new_map }

  let may_contain_value (abs: t) (var: Var.t) (value: Scalar.t) : bool =
    let fp = get_var_abs abs var in
    if fp.bot then false
    else if fp.zero && Scalar.cmp value (Scalar.of_int 0) = 0 then true
    else
      let in_pos = match fp.pos with
        | Some iv -> 
            Scalar.cmp value iv.inf >= 0 && Scalar.cmp value iv.sup <= 0
        | None -> false in
      let in_neg = match fp.neg with
        | Some iv -> 
            Scalar.cmp value iv.inf >= 0 && Scalar.cmp value iv.sup <= 0
        | None -> false in
      in_pos || in_neg
end
