open Ast.Cryptoline
open Utils.Float

module FA = Absdom.Floatabs

let fail msg =
  prerr_endline msg;
  exit 1

let expect_true msg b =
  if not b then fail msg

let expect_fp msg expected actual =
  expect_true msg (FA.fp_abs_equal expected actual)

let f s = FloatConst.of_string s ~rnd:RNE
let c s = Aconst (Tdouble, Cfloat (f s))
let rconst s = Rconst (64, Cfloat (f s))
let v name = mkvar name Tdouble

let get_ok (r : ('a, FA.error) result) =
  match r with
  | Ok v -> v
  | Error (FA.Unsupported msg) ->
      fail ("unexpected unsupported: " ^ msg)
  | Error (FA.Invalid msg) ->
      fail ("unexpected invalid: " ^ msg)

let test_value_semantics () =
  let one = get_ok (FA.fp_of_const (f "1.0")) in
  let two = get_ok (FA.fp_of_const (f "2.0")) in
  let neg_three = get_ok (FA.fp_of_const (f "-3.0")) in
  let zero = get_ok (FA.fp_of_const (f "0.0")) in
  expect_fp "const zero" (FA.value ~zero:true ()) zero;
  expect_fp "neg" neg_three (FA.fp_neg (get_ok (FA.fp_of_const (f "3.0"))));
  expect_fp "add" (get_ok (FA.fp_of_const (f "3.0"))) (FA.fp_add one two);
  expect_fp "sub" (get_ok (FA.fp_of_const (f "-1.0"))) (FA.fp_sub one two);
  expect_fp "mul" (get_ok (FA.fp_of_const (f "2.0"))) (get_ok (FA.fp_mul one two));
  expect_fp "div" (get_ok (FA.fp_of_const (f "2.0"))) (get_ok (FA.fp_div (get_ok (FA.fp_of_const (f "4.0"))) two));
  expect_fp "abs" (get_ok (FA.fp_of_const (f "3.0"))) (FA.fp_abs neg_three);
  expect_fp "sqrt" two (FA.fp_sqrt (get_ok (FA.fp_of_const (f "4.0"))));
  expect_fp "round" two (FA.fp_round two)

let test_eval_and_transfer () =
  let x = v "x" in
  let y = v "y" in
  let z = v "z" in
  let st0 = FA.empty_state in
  let prog =
    [
      Imov (x, c "1.5");
      Imov (y, c "2.0");
      Iadd (z, Avar x, Avar y);
    ]
  in
  let st = get_ok (FA.interp_prog st0 prog) in
  let zv = get_ok (FA.find st z) in
  expect_fp "interp_prog add" (get_ok (FA.fp_of_const (f "3.5"))) zv;
  let expr = Rbinop (64, Rdiv, Rvar z, rconst "2.0") in
  let ev = get_ok (FA.eval_rexp st expr) in
  expect_fp "eval_rexp div" (get_ok (FA.fp_of_const (f "1.75"))) ev

let test_predicates () =
  let x = v "px" in
  let rs =
    {
      rspre = Rcmp (64, Rfpgt, Rvar x, rconst "0.0");
      rsprog = [ Imov (x, c "1.0") ];
      rspost = rbexp_prove_with_of_rbexp (Rcmp (64, Rfpgt, Rvar x, rconst "0.0"));
    }
  in
  expect_true "verify_rspec proved"
    (match FA.verify_rspec rs with
     | FA.Proved -> true
     | _ -> false);
  let rs_unknown =
    {
      rspre = Rtrue;
      rsprog = [];
      rspost = rbexp_prove_with_of_rbexp (Rcmp (64, Rfpgt, Rvar x, rconst "0.0"));
    }
  in
  expect_true "verify_rspec unknown"
    (match FA.verify_rspec rs_unknown with
     | FA.Not_proved -> true
     | _ -> false)

let test_overlap_and_unsupported () =
  let x = v "ox" in
  let y = v "oy" in
  let st =
    FA.empty_state
    |> fun st -> FA.set st x (FA.value ~pos:{ lo = f "1.0"; hi = f "3.0" } ())
    |> fun st -> FA.set st y (FA.value ~pos:{ lo = f "2.0"; hi = f "4.0" } ())
  in
  expect_true "overlap is not proved"
    (match get_ok (FA.prove_rbexp st (Rcmp (64, Rfplt, Rvar x, Rvar y))) with
     | false -> true
     | true -> false);
  expect_true "unsupported tsingle stays unsupported"
    (match FA.eval_atom FA.empty_state (Aconst (Tsingle, Cfloat (f "1.0"))) with
     | Error (FA.Unsupported _) -> true
     | _ -> false);
  expect_true "subnormal operand case is unsupported"
    (match FA.fp_mul (get_ok (FA.fp_of_const FA.fp_min)) (get_ok (FA.fp_of_const (f "2.0"))) with
     | Error (FA.Unsupported _) -> true
     | _ -> false)

let () =
  test_value_semantics ();
  test_eval_and_transfer ();
  test_predicates ();
  test_overlap_and_unsupported ();
  print_endline "floatabs tests passed"
