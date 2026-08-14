# FloatAbs Current Work Summary

This file explains the current modifications around `FloatAbs` in a code-oriented way.

The main goal of this stage was:

- turn `absdom/floatabs.ml` from an unfinished Apron-based sketch into a standalone floating-point abstract domain core;
- keep it independent from `verify/std.ml` and `verify/withLwt.ml`;
- make the code readable by layers;
- separate `Bottom` from `Unsupported`;
- add a small test entry point.


## 1. Files changed

### [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml)

This is the main implementation file.

It was effectively rewritten from scratch.

### [absdom/floatabs_test.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs_test.ml)

This is a new test file added for the current stage.

### [absdom/dune](C:/Users/yucing/Downloads/cryptoline/absdom/dune)

This was updated so the test executable can exist separately from the library.


## 2. High-level architecture of the new `floatabs.ml`

The file is now roughly organized into these layers:

1. Representation and error/result types
2. Floating-point constants and directed-rounding helpers
3. Interval primitives
4. Abstract floating-point transfer functions
5. Expression evaluation
6. Predicate refinement/proof
7. Program interpretation
8. High-level `verify_rspec`


## 3. Representation layer

### Types

- `interval` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:6)
  Purpose:
  stores one closed interval `[lo, hi]` using `FloatConst.t`.

- `fp_abs` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:11)
  Purpose:
  this is the abstract floating-point value.
  It has:
  - `neg : interval option`
  - `zero : bool`
  - `pos : interval option`
  - `Bottom`

- `state` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:19)
  Purpose:
  maps CryptoLine variables to `fp_abs` using `Ast.Cryptoline.VM`.

- `error` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:21)
  Purpose:
  distinguishes implementation-level failure cases:
  - `Unsupported of string`
  - `Invalid of string`

- `verify_result` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:25)
  Purpose:
  public result of `verify_rspec`:
  - `Proved`
  - `Not_proved`
  - `Unsupported of string`


## 4. Construction and state helpers

### Result helpers

- `result_bind` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:30)
- `( let* )` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:35)
- `unsupported` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:37)
- `invalid` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:38)

Purpose:
these give the file a small result-monad style so unsupported cases propagate cleanly.

### Abstract-value constructors

- `value` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:50)
- `interval_make` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:52)
- `interval_singleton` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:55)
- `interval_equal` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:57)
- `fp_abs_equal` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:60)

Purpose:
construct and compare abstract values and intervals.

### State helpers

- `top_double` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:77)
- `empty_state` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:84)
- `require_double_typ` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:86)
- `require_double_var` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:91)
- `top_of_var_type` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:93)
- `find` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:98)
- `set` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:102)

Purpose:

- only `Tdouble` is supported;
- `Tsingle` explicitly returns `Unsupported`;
- variables not found in the state are read as top of their type;
- the state is a direct variable map, not an Apron environment plus parallel arrays.


## 5. Constants and directed-rounding layer

### Floating constants

- `falcon_prec` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:40)
- `fp_zero` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:41)
- `fp_one` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:42)
- `fp_min` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:43)
- `fp_minsub` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:44)
- `fp_max` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:45)
- `fp_neg_max` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:46)
- `fp_neg_min` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:47)
- `fp_neg_minsub` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:48)

Purpose:
represent Falcon double boundaries explicitly inside the abstract domain.

### Low-level rounding helpers

- `float_neg` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:104)
- `float_abs` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:105)
- `add_down` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:107)
- `add_up` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:110)
- `sub_down` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:113)
- `sub_up` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:116)
- `mul_down` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:119)
- `mul_up` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:122)
- `div_down` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:125)
- `div_up` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:128)
- `sqrt_down` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:131)
- `sqrt_up` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:135)

Purpose:
these are the endpoint operations used by interval transfer functions.

Important note:
`sqrt_down/up` currently use `FloatConst.pow x 0.5`, not a dedicated sqrt primitive.


## 6. Interval primitive layer

### Structural interval functions

- `interval_hull` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:139)
- `interval_neg` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:153)
- `interval_add` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:157)
- `interval_sub` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:162)
- `interval_mul` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:167)
- `interval_recip` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:205)
- `interval_sqrt` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:211)

Purpose:
implement the core interval operations used by `fp_abs`.

### Predicate-oriented interval helpers

- `interval_contains_zero` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:201)
- `interval_strictly_gt` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:216)
- `interval_ge` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:221)
- `interval_strictly_lt` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:226)
- `interval_le` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:231)

Purpose:
small helpers for later proof/refinement logic.

### Boundary and subnormal helpers

- `normalize_result` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:236)
- `interval_has_subnormal` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:245)
- `has_subnormal_component` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:252)

Purpose:

- `normalize_result` applies range sanity checks and can return `Bottom`;
- the subnormal helpers detect the currently unresolved multiplication case from the PDF.


## 7. Abstract floating-point transfer functions

### Constants and sign transforms

- `fp_of_const` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:256)
- `fp_neg` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:261)

Purpose:
build abstract values from constants and implement abstract negation.

### Arithmetic

- `fp_add` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:265)
- `fp_sub` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:294)
- `fp_mul_raw` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:296)
- `check_subnormal_operands` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:323)
- `fp_mul` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:329)
- `fp_recip` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:333)
- `fp_div` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:339)

Purpose:

- `fp_add` and `fp_sub` implement sign-separated addition/subtraction;
- `fp_mul_raw` is the value-level multiplication without policy/error lifting;
- `check_subnormal_operands` detects the unresolved PDF case;
- `fp_mul` wraps `fp_mul_raw` and now returns `Unsupported` on that unresolved case;
- `fp_recip` models reciprocal and returns `Bottom` when zero is possible;
- `fp_div` is defined through multiplication by reciprocal.

Important design choice:
`fp_mul` and `fp_div` return `(fp_abs, error) result`, while `fp_add` and `fp_sub` currently return plain `fp_abs`.

### Other FP operations

- `fp_abs` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:341)
- `fp_sqrt` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:346)
- `interval_round` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:354)
- `fp_round` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:363)

Purpose:

- `fp_abs` drops the negative component and keeps the positive hull;
- `fp_sqrt` rejects any abstract input that may be negative;
- `fp_round` currently rounds interval endpoints outward.

Important note:
`fp_round` is still semantically tentative with respect to the PDF's program-level `round(a)` operation.


## 8. Expression evaluation layer

- `eval_atom` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:367)
- `eval_rexp` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:375)

Purpose:
evaluate CryptoLine floating-point atoms and range expressions directly over the abstract domain.

Currently supported:

- `Avar`
- `Aconst (Tdouble, Cfloat _)`
- `Rvar`
- `Rconst (_, Cfloat _)`
- `Runop (_, Rnegb, _)`
- `Rbinop (_, Radd | Rsub | Rmul | Rdiv, _, _)`

Currently unsupported:

- `Tsingle`
- integer constants mixed into FP expressions
- `Ruext`
- `Rsext`
- `Rconcat`
- any unsupported unary/binary FP operator


## 9. Refinement and proof layer

### Refinement helpers

- `refine_upper` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:399)
- `refine_lower` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:413)
- `assume_var_cmp_const` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:427)
- `assume_var_eq_const` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:446)
- `assume_rbexp` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:451)

Purpose:
apply a small amount of sound non-relational refinement to the state.

Current supported predicate shapes:

- `Req (_, Rvar v, Rconst (_, Cfloat c))`
- `Req (_, Rconst (_, Cfloat c), Rvar v)`
- `Rcmp (_, Rfplt | Rfple | Rfpgt | Rfpge, Rvar v, Rconst (_, Cfloat c))`
- the symmetric `const`/`var` version of the same comparison

Current non-goal:
there is no variable-variable relational refinement here.

### Proof helpers

- `singleton_value` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:480)
- `definitely_eq` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:487)
- `lower_bound` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:492)
- `upper_bound` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:499)
- `definitely_cmp` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:506)
- `prove_rbexp` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:519)

Purpose:
check whether a postcondition is definitely true for all represented values.

Important semantics:
`prove_rbexp` is written as a sufficient-condition checker, not a possibility checker.


## 10. Program interpretation layer

- `interp_instr` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:542)
- `interp_prog` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:577)

Purpose:
interpret the minimal floating-point instruction subset directly over the abstract state.

Supported FP instruction cases:

- `Imov`
- `Iadd`
- `Isub`
- `Imul`
- `Idiv`
- `Iassume`
- `Ighost`

Behavior note:

- unsupported instructions touching float variables return `Unsupported`;
- non-float instructions are currently ignored if they do not touch float variables;
- `Iassume` and `Ighost` now use `rng_bexp pred`.


## 11. Verification entry point layer

- `vars_in_prog` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:583)
- `float_vars_of_rspec` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:589)
- `initial_state` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:596)
- `verify_rspec` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:605)

Purpose:
provide a top-level API that can later be called by a dispatcher.

Current pipeline inside `verify_rspec`:

1. collect float variables from `rspre`, `rsprog`, `rspost`
2. build initial top state
3. apply `rspre` via `assume_rbexp`
4. interpret `rsprog`
5. collapse `rspost` with `rbexp_prove_with_rands`
6. prove the resulting range predicate with `prove_rbexp`


## 12. New test file

### [absdom/floatabs_test.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs_test.ml)

This file was added.

Functions:

- `fail` at [absdom/floatabs_test.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs_test.ml:6)
- `expect_true` at [absdom/floatabs_test.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs_test.ml:10)
- `expect_fp` at [absdom/floatabs_test.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs_test.ml:13)
- `f` at [absdom/floatabs_test.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs_test.ml:16)
- `c` at [absdom/floatabs_test.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs_test.ml:17)
- `rconst` at [absdom/floatabs_test.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs_test.ml:18)
- `v` at [absdom/floatabs_test.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs_test.ml:19)
- `get_ok` at [absdom/floatabs_test.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs_test.ml:21)
- `test_value_semantics` at [absdom/floatabs_test.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs_test.ml:26)
- `test_eval_and_transfer` at [absdom/floatabs_test.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs_test.ml:41)
- `test_predicates` at [absdom/floatabs_test.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs_test.ml:60)
- `test_overlap_and_unsupported` at [absdom/floatabs_test.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs_test.ml:85)
- test runner `let () = ...` at [absdom/floatabs_test.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs_test.ml:106)

What the test file currently tries to cover:

- constant abstraction
- negation
- add/sub/mul/div/abs/sqrt/round
- `eval_rexp`
- `interp_prog`
- `verify_rspec`
- overlap case for `prove_rbexp`
- `Tsingle -> Unsupported`
- subnormal multiplication policy

Important limitation:
the file has been written, but it has not actually been run in this environment.


## 13. Dune changes

### [absdom/dune](C:/Users/yucing/Downloads/cryptoline/absdom/dune)

Changes:

- library stanza still defines `absdom`
- executable stanza was added for `floatabs_test`
- `(modules (:standard \ floatabs_test))` was added to keep the test module out of the library

Relevant lines:

- library stanza starts at [absdom/dune](C:/Users/yucing/Downloads/cryptoline/absdom/dune:1)
- module exclusion is at [absdom/dune](C:/Users/yucing/Downloads/cryptoline/absdom/dune:3)
- test executable stanza starts at [absdom/dune](C:/Users/yucing/Downloads/cryptoline/absdom/dune:11)


## 14. What was deleted or replaced

### Entire old Apron-based `floatabs.ml` implementation was removed

Reason:
the old file was not just incomplete; its structure was also no longer aligned with the stage goal.

Old design characteristics that were removed:

- `open Apron` at file top
- a wrapper module `FloatAbsDomain = struct ... end`
- abstract value shape with a record field `bot : bool`
- state shape:
  - `env : Environment.t`
  - `fp_map : fp_abs array`
- Apron `Scalar` / `Interval` based endpoint computation
- ordinary arithmetic in places where directed rounding was required
- partial and buggy interval multiplication

Why this old code was replaced:

- `bot : bool` allowed semantically inconsistent states
- array-based state was not naturally aligned with CryptoLine variable handling
- it mixed representation concerns, Apron mechanics, and FP semantics in one place
- directed rounding requirements were not properly isolated
- the multiplication code had known branch/condition problems
- it was not a usable backend for later `verify` dispatch

### Old helper logic effectively superseded by the new code

Examples of old concepts that are no longer used:

- `fp_bottom ()`
- `fp_top ()`
- `check_overflow` as a standalone Apron-scalar helper
- `check_underflow` over Apron intervals
- direct Apron interval construction for all FP state

What replaced them:

- `Bottom` constructor in `fp_abs`
- `top_double`
- `normalize_result`
- direct `VM.t` state
- `FloatConst`-based interval endpoints

### One earlier intermediate policy was removed during audit

This happened inside the new rewrite itself:

- a previous version of `handle_invalid_subnormal_operand_case` mapped the unresolved PDF multiplication case to zero-only

Why it was removed:

- that policy was not guaranteed to be sound
- unresolved concrete semantics should not be narrowed to `{0}` without proof

What replaced it:

- `check_subnormal_operands` at [absdom/floatabs.ml](C:/Users/yucing/Downloads/cryptoline/absdom/floatabs.ml:323)
- now the unresolved case returns `Unsupported`


## 15. Current known limitations

These are important if you want to understand what is still unfinished:

- `Tsingle` is not implemented
- `fp_round` is still semantically questionable relative to the PDF
- `sqrt_down/up` use `pow(0.5)` instead of a dedicated sqrt primitive
- `assume_rbexp` only handles simple var/const floating predicates
- `prove_rbexp` is intentionally narrow and only proves when definitely true
- `rbexp_prove_with` metadata is not interpreted beyond extracting the predicate body
- build and test execution have not been completed in this environment


## 16. Suggested reading order

If you want to understand the code in a stable order, this is the path I recommend:

1. `fp_abs`, `state`, `error`, `verify_result`
2. constants and rounding helpers
3. interval primitives
4. `fp_of_const`, `fp_neg`, `fp_add`, `fp_mul`, `fp_recip`, `fp_div`
5. `eval_atom`, `eval_rexp`
6. `assume_rbexp`, `prove_rbexp`
7. `interp_instr`, `interp_prog`
8. `verify_rspec`
9. `floatabs_test.ml`

