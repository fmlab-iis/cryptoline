open Ast.Cryptoline
open Utils.Float

module FA = Absdom.Floatabs

let fail msg =
  prerr_endline ("[FAIL] " ^ msg);
  exit 1

let expect_true msg b =
  if not b then fail msg

let expect_false msg b =
  if b then fail msg

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

let run_test name test =
  test ();
  print_endline ("[PASS] " ^ name)

let fp s =
  get_ok (FA.fp_of_const (f s))

(* ============================================================ *)
(* Original tests                                                *)
(* ============================================================ *)

let test_value_semantics () =
  let one = fp "1.0" in
  let two = fp "2.0" in
  let three = fp "3.0" in
  let four = fp "4.0" in
  let neg_one = fp "-1.0" in
  let neg_three = fp "-3.0" in
  let zero = fp "0.0" in

  expect_fp
    "const zero"
    (FA.value ~zero:true ())
    zero;

  expect_fp
    "neg"
    neg_three
    (FA.fp_neg three);

  expect_fp
    "add"
    three
    (FA.fp_add one two);

  expect_fp
    "sub"
    neg_one
    (FA.fp_sub one two);

  expect_fp
    "mul"
    two
    (get_ok (FA.fp_mul one two));

  expect_fp
    "div"
    two
    (get_ok (FA.fp_div four two));

  expect_fp
    "abs"
    three
    (FA.fp_abs neg_three);

  expect_fp
    "sqrt"
    two
    (FA.fp_sqrt four);

  expect_fp
    "round"
    two
    (FA.fp_round two)

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

  expect_fp
    "interp_prog add"
    (fp "3.5")
    zv;

  let expr =
    Rbinop (64, Rdiv, Rvar z, rconst "2.0")
  in

  let ev = get_ok (FA.eval_rexp st expr) in

  expect_fp
    "eval_rexp div"
    (fp "1.75")
    ev

let test_predicates () =
  let x = v "px" in

  let rs =
    {
      rspre =
        Rcmp
          (64, Rfpgt, Rvar x, rconst "0.0");

      rsprog =
        [
          Imov (x, c "1.0");
        ];

      rspost =
        rbexp_prove_with_of_rbexp
          (Rcmp
             (64, Rfpgt, Rvar x, rconst "0.0"));
    }
  in

  expect_true
    "verify_rspec proved"
    (match FA.verify_rspec rs with
     | FA.Proved -> true
     | _ -> false);

  let rs_unknown =
    {
      rspre = Rtrue;

      rsprog = [];

      rspost =
        rbexp_prove_with_of_rbexp
          (Rcmp
             (64, Rfpgt, Rvar x, rconst "0.0"));
    }
  in

  expect_true
    "verify_rspec unknown"
    (match FA.verify_rspec rs_unknown with
     | FA.Not_proved -> true
     | _ -> false)

let test_overlap_and_unsupported () =
  let x = v "ox" in
  let y = v "oy" in

  let st =
    FA.empty_state
    |> fun st ->
       FA.set st x
         (FA.value
            ~pos:{ lo = f "1.0"; hi = f "3.0" }
            ())
    |> fun st ->
       FA.set st y
         (FA.value
            ~pos:{ lo = f "2.0"; hi = f "4.0" }
            ())
  in

  expect_true
    "overlap is not proved"
    (match
       get_ok
         (FA.prove_rbexp
            st
            (Rcmp
               (64, Rfplt, Rvar x, Rvar y)))
     with
     | false -> true
     | true -> false);

  expect_true
    "unsupported tsingle stays unsupported"
    (match
       FA.eval_atom
         FA.empty_state
         (Aconst
            (Tsingle, Cfloat (f "1.0")))
     with
     | Error (FA.Unsupported _) -> true
     | _ -> false);

  expect_true
    "subnormal operand case is unsupported"
    (match
       FA.fp_mul
         (fp_of_const_or_fail FA.fp_min)
         (fp "2.0")
     with
     | Error (FA.Unsupported _) -> true
     | _ -> false)

and fp_of_const_or_fail x =
  get_ok (FA.fp_of_const x)

(* ============================================================ *)
(* Additional arithmetic edge cases                             *)
(* ============================================================ *)

let test_cross_sign_arithmetic () =
  let three = fp "3.0" in
  let five = fp "5.0" in
  let neg_three = fp "-3.0" in
  let neg_five = fp "-5.0" in

  expect_fp
    "cross sign add negative"
    (fp "-2.0")
    (FA.fp_add three neg_five);

  expect_fp
    "cross sign add positive"
    (fp "2.0")
    (FA.fp_add five neg_three);

  expect_fp
    "cross sign cancellation"
    (fp "0.0")
    (FA.fp_add three neg_three);

  expect_fp
    "positive minus larger positive"
    (fp "-2.0")
    (FA.fp_sub three five);

  expect_fp
    "negative minus negative"
    (fp "2.0")
    (FA.fp_sub neg_three neg_five);

  expect_fp
    "negative plus negative"
    (fp "-8.0")
    (FA.fp_add neg_three neg_five)

let test_zero_arithmetic () =
  let zero = fp "0.0" in
  let three = fp "3.0" in
  let neg_three = fp "-3.0" in

  expect_fp
    "zero plus positive"
    three
    (FA.fp_add zero three);

  expect_fp
    "positive plus zero"
    three
    (FA.fp_add three zero);

  expect_fp
    "zero plus negative"
    neg_three
    (FA.fp_add zero neg_three);

  expect_fp
    "positive minus zero"
    three
    (FA.fp_sub three zero);

  expect_fp
    "zero minus positive"
    neg_three
    (FA.fp_sub zero three);

  expect_fp
    "zero times positive"
    zero
    (get_ok (FA.fp_mul zero three));

  expect_fp
    "positive times zero"
    zero
    (get_ok (FA.fp_mul three zero));

  expect_fp
    "zero divided by positive"
    zero
    (get_ok (FA.fp_div zero three))

let test_mul_div_signs () =
  let two = fp "2.0" in
  let three = fp "3.0" in
  let neg_two = fp "-2.0" in
  let neg_three = fp "-3.0" in

  expect_fp
    "positive times negative"
    (fp "-6.0")
    (get_ok (FA.fp_mul two neg_three));

  expect_fp
    "negative times positive"
    (fp "-6.0")
    (get_ok (FA.fp_mul neg_two three));

  expect_fp
    "negative times negative"
    (fp "6.0")
    (get_ok (FA.fp_mul neg_two neg_three));

  expect_fp
    "positive divided by negative"
    (fp "-1.5")
    (get_ok (FA.fp_div three neg_two));

  expect_fp
    "negative divided by positive"
    (fp "-1.5")
    (get_ok (FA.fp_div neg_three two));

  expect_fp
    "negative divided by negative"
    (fp "1.5")
    (get_ok (FA.fp_div neg_three neg_two))

(* ============================================================ *)
(* Interval tests                                                *)
(* ============================================================ *)

let test_interval_addition () =
  let x =
    FA.value
      ~pos:{ lo = f "1.0"; hi = f "3.0" }
      ()
  in

  let y =
    FA.value
      ~pos:{ lo = f "2.0"; hi = f "4.0" }
      ()
  in

  let expected =
    FA.value
      ~pos:{ lo = f "3.0"; hi = f "7.0" }
      ()
  in

  expect_fp
    "interval positive addition"
    expected
    (FA.fp_add x y)

let test_interval_cross_zero_addition () =
  let x =
    FA.value
      ~neg:{ lo = f "-3.0"; hi = f "-1.0" }
      ~zero:true
      ~pos:{ lo = f "1.0"; hi = f "2.0" }
      ()
  in

  let y =
    FA.value
      ~pos:{ lo = f "1.0"; hi = f "4.0" }
      ()
  in

  let r = FA.fp_add x y in

  match r with
  | FA.Bottom ->
      fail "interval cross-zero addition unexpectedly Bottom"

  | FA.Value rv ->
      expect_true
        "interval cross-zero addition has negative component"
        (rv.neg <> None);

      expect_true
        "interval cross-zero addition contains zero"
        rv.zero;

      expect_true
        "interval cross-zero addition has positive component"
        (rv.pos <> None)

(* ============================================================ *)
(* Comparison boundary tests                                     *)
(* ============================================================ *)

let test_comparison_boundaries () =
  let x = v "cx" in

  let st =
    FA.set
      FA.empty_state
      x
      (FA.value
         ~pos:{ lo = f "1.0"; hi = f "2.0" }
         ())
  in

  expect_true
    "interval [1,2] > 0"
    (get_ok
       (FA.prove_rbexp
          st
          (Rcmp
             (64, Rfpgt, Rvar x, rconst "0.0"))));

  expect_true
    "interval [1,2] < 3"
    (get_ok
       (FA.prove_rbexp
          st
          (Rcmp
             (64, Rfplt, Rvar x, rconst "3.0"))));

  expect_true
    "interval [1,2] <= 2"
    (get_ok
       (FA.prove_rbexp
          st
          (Rcmp
             (64, Rfple, Rvar x, rconst "2.0"))));

  expect_true
    "interval [1,2] >= 1"
    (get_ok
       (FA.prove_rbexp
          st
          (Rcmp
             (64, Rfpge, Rvar x, rconst "1.0"))));

  expect_false
    "interval [1,2] < 2 is not provable"
    (get_ok
       (FA.prove_rbexp
          st
          (Rcmp
             (64, Rfplt, Rvar x, rconst "2.0"))));

  expect_false
    "interval [1,2] > 1 is not provable"
    (get_ok
       (FA.prove_rbexp
          st
          (Rcmp
             (64, Rfpgt, Rvar x, rconst "1.0"))))

(* ============================================================ *)
(* Expression / interpreter edge cases                           *)
(* ============================================================ *)

let test_transfer_sub_mul_div () =
  let x = v "tx" in
  let y = v "ty" in
  let z = v "tz" in
  let w = v "tw" in

  let prog =
    [
      Imov (x, c "5.0");
      Imov (y, c "2.0");
      Isub (z, Avar x, Avar y);
      Imul (w, Avar z, Avar y);
    ]
  in

  let st =
    get_ok
      (FA.interp_prog FA.empty_state prog)
  in

  expect_fp
    "interp_prog subtraction"
    (fp "3.0")
    (get_ok (FA.find st z));

  expect_fp
    "interp_prog multiplication"
    (fp "6.0")
    (get_ok (FA.find st w));

  let div_expr =
    Rbinop
      (64, Rdiv, Rvar w, rconst "3.0")
  in

  expect_fp
    "eval_rexp after transfer"
    (fp "2.0")
    (get_ok (FA.eval_rexp st div_expr))

(* ============================================================ *)
(* Verification tests                                            *)
(* ============================================================ *)

let test_verify_arithmetic_postcondition () =
  let x = v "vx" in
  let y = v "vy" in

  let rs =
    {
      rspre =
        Rcmp
          (64, Rfpgt, Rvar x, rconst "0.0");

      rsprog =
        [
          Iadd (y, Avar x, c "1.0");
        ];

      rspost =
        rbexp_prove_with_of_rbexp
          (Rcmp
             (64, Rfpgt, Rvar y, rconst "0.0"));
    }
  in

  expect_true
    "verify positive propagation"
    (match FA.verify_rspec rs with
     | FA.Proved -> true
     | _ -> false)

let test_verify_not_proved_boundary () =
  let x = v "ux" in

  let rs =
    {
      rspre = Rtrue;

      rsprog =
        [
          Imov (x, c "1.0");
        ];

      rspost =
        rbexp_prove_with_of_rbexp
          (Rcmp
             (64, Rfpgt, Rvar x, rconst "2.0"));
    }
  in

  expect_true
    "verify false postcondition is not proved"
    (match FA.verify_rspec rs with
     | FA.Not_proved -> true
     | _ -> false)

(* ============================================================ *)
(* Bottom                                                        *)
(* ============================================================ *)

let test_bottom_arithmetic () =
  let one = fp "1.0" in

  expect_fp
    "Bottom + x = Bottom"
    FA.Bottom
    (FA.fp_add FA.Bottom one);

  expect_fp
    "x + Bottom = Bottom"
    FA.Bottom
    (FA.fp_add one FA.Bottom);

  expect_fp
    "Bottom - x = Bottom"
    FA.Bottom
    (FA.fp_sub FA.Bottom one);

  expect_fp
    "neg Bottom = Bottom"
    FA.Bottom
    (FA.fp_neg FA.Bottom)

(* ============================================================ *)
(* Test runner                                                   *)
(* ============================================================ *)

let () =
  (* Original tests *)
  run_test
    "value semantics"
    test_value_semantics;

  run_test
    "eval and transfer"
    test_eval_and_transfer;

  run_test
    "predicates"
    test_predicates;

  run_test
    "overlap and unsupported"
    test_overlap_and_unsupported;

  (* Additional tests *)
  run_test
    "cross-sign arithmetic"
    test_cross_sign_arithmetic;

  run_test
    "zero arithmetic"
    test_zero_arithmetic;

  run_test
    "multiplication/division signs"
    test_mul_div_signs;

  run_test
    "interval addition"
    test_interval_addition;

  run_test
    "interval cross-zero addition"
    test_interval_cross_zero_addition;

  run_test
    "comparison boundaries"
    test_comparison_boundaries;

  run_test
    "transfer sub/mul/div"
    test_transfer_sub_mul_div;

  run_test
    "verification arithmetic postcondition"
    test_verify_arithmetic_postcondition;

  run_test
    "verification not-proved boundary"
    test_verify_not_proved_boundary;

  run_test
    "Bottom arithmetic"
    test_bottom_arithmetic;

  print_endline "all floatabs tests passed"
```
