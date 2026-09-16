open Ast.Cryptoline
open Utils.Float

let fail msg =
  prerr_endline ("COMMON TEST FAILED: " ^ msg);
  exit 1

let run_test name f =
  print_endline ("[RUN ] " ^ name);
  flush stdout;
  f ();
  print_endline ("[PASS] " ^ name);
  flush stdout

let expect cond msg =
  if not cond then fail msg

let f s =
  FloatConst.of_string s ~rnd:RNE

let mk_double name =
  mkvar name Tdouble

let mk_uint64 name =
  mkvar name (Tuint 64)

let fp_const s =
  Rconst (64, Cfloat (f s))

let int_const n =
  Rconst (64, Cint (Z.of_int n))

let fp_atom_const s =
  Aconst (Tdouble, Cfloat (f s))

let test_fp_instruction_dispatch () =
  let x = mk_double "x" in
  let mgr = Absdom.Common.create_manager (VS.singleton x) in
  let dom0 = Absdom.Common.top mgr in

  let instr =
    Imov (x, fp_atom_const "1.0")
  in

  let dom1 =
    Absdom.Common.interp_instr mgr dom0 instr
  in

  let post =
    Req
      (64,
       Rvar x,
       fp_const "1.0")
  in

  expect
    (Absdom.Common.sat_rbexp mgr dom1 post)
    "FP Imov result was not proved through Absdom.Common.sat_rbexp"

let test_fp_predicate_dispatch () =
  let x = mk_double "x" in
  let mgr = Absdom.Common.create_manager (VS.singleton x) in
  let dom0 = Absdom.Common.top mgr in

  let pred =
    Rcmp
      (64,
       Rfplt,
       Rvar x,
       fp_const "1.0")
  in

  match Absdom.Common.abs_of_rbexp mgr ~abs:dom0 pred with
  | None ->
      fail "FP predicate was rejected by Absdom.Common.abs_of_rbexp"
  | Some dom1 ->
      expect
        (Absdom.Common.sat_rbexp mgr dom1 pred)
        "FP predicate was not retained by FloatAbs"

let test_int_predicate_dispatch () =
  let i = mk_uint64 "i" in
  let mgr = Absdom.Common.create_manager (VS.singleton i) in
  let dom0 = Absdom.Common.top mgr in

  let pred =
    Rcmp
      (64,
       Rult,
       Rvar i,
       int_const 100)
  in

  match Absdom.Common.abs_of_rbexp mgr ~abs:dom0 pred with
  | None ->
      fail "integer predicate was rejected by Absdom.Common.abs_of_rbexp"
  | Some dom1 ->
      expect
        (Absdom.Common.sat_rbexp mgr dom1 pred)
        "integer predicate was not retained by Intabs"

let test_mixed_predicate_dispatch () =
  let x = mk_double "x" in
  let i = mk_uint64 "i" in

  let vars =
    VS.add x (VS.singleton i)
  in

  let mgr =
    Absdom.Common.create_manager vars
  in

  let dom0 =
    Absdom.Common.top mgr
  in

  let int_pred =
    Rcmp
      (64,
       Rult,
       Rvar i,
       int_const 100)
  in

  let fp_pred =
    Rcmp
      (64,
       Rfplt,
       Rvar x,
       fp_const "1.0")
  in

  let pred =
    Rand (int_pred, fp_pred)
  in

  match Absdom.Common.abs_of_rbexp mgr ~abs:dom0 pred with
  | None ->
      fail "mixed integer/FP Rand predicate was rejected"

  | Some dom1 ->
      expect
        (Absdom.Common.sat_rbexp mgr dom1 int_pred)
        "integer half of mixed predicate was not retained";

      expect
        (Absdom.Common.sat_rbexp mgr dom1 fp_pred)
        "floating half of mixed predicate was not retained";

      expect
        (Absdom.Common.sat_rbexp mgr dom1 pred)
        "combined mixed predicate was not proved"

let test_z_to_f_transfer () =
  let i = mk_uint64 "i_transfer" in
  let x = mk_double "x_transfer" in
  let vars = VS.add i (VS.singleton x) in
  let mgr = Absdom.Common.create_manager vars in

  let pre =
    Rand
      (Rcmp
         (64,
          Ruge,
          Rvar i,
          int_const 10),
       Rcmp
         (64,
          Rule,
          Rvar i,
          int_const 20))
  in

  let dom0 =
    match Absdom.Common.abs_of_rbexp mgr pre with
    | Some dom -> dom
    | None -> fail "could not construct integer precondition for Z->F test"
  in

  let cast =
    Icast (None, x, Avar i)
  in

  let dom1 =
    Absdom.Common.interp_instr mgr dom0 cast
  in

  let lower =
    Rcmp
      (64,
       Rfpge,
       Rvar x,
       fp_const "10.0")
  in

  let upper =
    Rcmp
      (64,
       Rfple,
       Rvar x,
       fp_const "20.0")
  in

  expect
    (Absdom.Common.sat_rbexp mgr dom1 lower)
    "Z->F transfer lost the lower bound";

  expect
    (Absdom.Common.sat_rbexp mgr dom1 upper)
    "Z->F transfer lost the upper bound"


let test_fp_arithmetic_instr_safe () =
  let x = mk_double "x_safe_fp" in
  let vars = VS.singleton x in
  let mgr = Absdom.Common.create_manager vars in
  let dom = Absdom.Common.top mgr in
  let instr =
    Iadd
      (x,
       fp_atom_const "1.0",
       fp_atom_const "2.0")
  in
  expect
    (Absdom.Common.instr_safe mgr dom instr)
    "FP Iadd should have trivial CryptoLine range safety"

let test_z_to_f_cast_instr_safe () =
  let i = mk_uint64 "i_safe_zf" in
  let x = mk_double "x_safe_zf" in
  let vars = VS.add i (VS.singleton x) in
  let mgr = Absdom.Common.create_manager vars in
  let dom = Absdom.Common.top mgr in
  let instr =
    Icast (None, x, Avar i)
  in
  expect
    (Absdom.Common.instr_safe mgr dom instr)
    "Z->F Icast should have trivial CryptoLine range safety"

let test_f_to_z_cast_instr_safe_fallback () =
  let x = mk_double "x_safe_fz" in
  let i = mk_uint64 "i_safe_fz" in
  let vars = VS.add x (VS.singleton i) in
  let mgr = Absdom.Common.create_manager vars in
  let dom = Absdom.Common.top mgr in
  let instr =
    Icast (None, i, Avar x)
  in
  expect
    (not (Absdom.Common.instr_safe mgr dom instr))
    "F->Z Icast safety should currently be left to the SMT safety path"

let () =
  run_test "fp_arithmetic_instr_safe" test_fp_arithmetic_instr_safe;
  run_test "z_to_f_cast_instr_safe" test_z_to_f_cast_instr_safe;
  run_test "f_to_z_cast_instr_safe_fallback" test_f_to_z_cast_instr_safe_fallback;
  run_test "fp_instruction_dispatch" test_fp_instruction_dispatch;
  run_test "z_to_f_transfer" test_z_to_f_transfer;
  run_test "fp_predicate_dispatch" test_fp_predicate_dispatch;
  run_test "int_predicate_dispatch" test_int_predicate_dispatch;
  run_test "mixed_predicate_dispatch" test_mixed_predicate_dispatch;
  print_endline "Common mixed-domain integration tests passed."
