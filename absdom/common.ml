open Ast.Cryptoline

(*
 * Common is the orchestration layer for abstract interpretation.
 *
 * Intabs owns the Apron-based integer/bit-vector abstract domain.
 * Floatabs owns the floating-point abstract domain.
 *
 * Common owns the product state and will later dispatch individual
 * predicates/instructions to the appropriate component.
 *)

type 'a manager_t = {
  int_mgr : 'a Intabs.manager_t;
  int_vars : VS.t;
  fp_vars : VS.t;
}

type 'a abs_t = {
  int_abs : 'a Intabs.abs_t;
  fp_abs : Floatabs.state;
}

(* ------------------------------------------------------------------------- *)
(* Domain configuration                                                      *)
(* ------------------------------------------------------------------------- *)

type domain = Intabs.domain
type polka_flavor = Intabs.polka_flavor

let default_domain = Intabs.default_domain
let domain = Intabs.domain

let default_polka_flavor = Intabs.default_polka_flavor
let polka_flavor = Intabs.polka_flavor

let string_of_domain = Intabs.string_of_domain
let domain_of_string = Intabs.domain_of_string

(* ------------------------------------------------------------------------- *)
(* Variable classification                                                   *)
(* ------------------------------------------------------------------------- *)

let split_vars vs =
  VS.fold
    (fun v (int_vars, fp_vars) ->
      if var_is_float v then
        (int_vars, VS.add v fp_vars)
      else
        (VS.add v int_vars, fp_vars))
    vs
    (VS.empty, VS.empty)

(* Construct the initial FloatAbs state in which every known FP variable is
 * top for its floating-point type.
 *
 * Floatabs currently supports Tdouble only.  Tsingle therefore remains an
 * unsupported case rather than being silently approximated as binary64.
 *)
let fp_top_state fp_vars =
  VS.fold
    (fun v acc ->
      match acc with
      | Error _ as e -> e
      | Ok st ->
          begin
            match Floatabs.top_of_var_type (typ_of_var v) with
            | Ok top -> Ok (Floatabs.set st v top)
            | Error e -> Error e
          end)
    fp_vars
    (Ok Floatabs.empty_state)

(* ------------------------------------------------------------------------- *)
(* Manager creation                                                          *)
(* ------------------------------------------------------------------------- *)

let create_manager ?domain vs =
  let int_vars, fp_vars = split_vars vs in
  {
    int_mgr = Intabs.create_manager ?domain int_vars;
    int_vars;
    fp_vars;
  }

(* ------------------------------------------------------------------------- *)
(* Product-state construction                                                *)
(* ------------------------------------------------------------------------- *)

let fp_top_or_empty mgr =
  match fp_top_state mgr.fp_vars with
  | Ok st -> st
  | Error (Floatabs.Unsupported msg) ->
      raise (Utils.Std.UnsupportedException msg)
  | Error (Floatabs.Invalid msg) ->
      raise (Utils.Std.UnsupportedException msg)
  | Error Floatabs.Overflow ->
      raise Utils.Std.FloatingPointOverflow
  | Error Floatabs.DivisionByZero ->
      raise Utils.Std.FloatingPointDivisionByZero

let top mgr =
  {
    int_abs = Intabs.top mgr.int_mgr;
    fp_abs = fp_top_or_empty mgr;
  }

let bottom mgr =
  {
    int_abs = Intabs.bottom mgr.int_mgr;
    (*
     * Floatabs.Bottom is NOT the product-lattice bottom: in FloatAbs it
     * denotes an invalid floating-point computation.  Therefore a Common
     * bottom state must not fill FP variables with Floatabs.Bottom.
     *)
    fp_abs = fp_top_or_empty mgr;
  }

let is_top mgr dom =
  Intabs.is_top mgr.int_mgr dom.int_abs

let is_bottom mgr dom =
  Intabs.is_bottom mgr.int_mgr dom.int_abs

(* ------------------------------------------------------------------------- *)
(* Product-domain operations and dispatch                                    *)
(*                                                                           *)
(* Integer semantics are delegated to Intabs, floating-point semantics to    *)
(* Floatabs, and Common coordinates mixed-domain state and transfers.         *)
(* ------------------------------------------------------------------------- *)

let meet mgr dom0 dom1 =
  (*
   * This operation is used by the existing verifier as:
   *
   *   meet precondition_dom vars_dom
   *
   * where vars_dom is produced by abs_of_vars and therefore carries
   * FloatAbs top.  Consequently the FP component of the meet is exactly
   * the FP component of dom0.
   *
   * This is intentionally not a generic FloatAbs state meet.  If callers
   * later need to meet two independently refined FP states, FloatAbs must
   * first expose a real meet operation and this implementation must be
   * generalized.
   *)
  {
    int_abs = Intabs.meet mgr.int_mgr dom0.int_abs dom1.int_abs;
    fp_abs = dom0.fp_abs;
  }

let abs_of_vars mgr vars =
  let int_vars = VS.filter (fun v -> not (var_is_float v)) vars in
  {
    int_abs = Intabs.abs_of_vars mgr.int_mgr int_vars;
    fp_abs = fp_top_or_empty mgr;
  }

type rbexp_domain =
  | Int_pred
  | Float_pred
  | Mixed_pred

let rbexp_domain_of_vars e =
  let vs = vars_rbexp e in
  let has_fp = VS.exists var_is_float vs in
  let has_int = VS.exists (fun v -> not (var_is_float v)) vs in
  match has_fp, has_int with
  | true, false -> Float_pred
  | false, true -> Int_pred
  | true, true -> Mixed_pred
  | false, false -> Int_pred

let domain_of_atomic_rbexp e =
  match e with
  | Rcmp (_, (Rfplt | Rfple | Rfpgt | Rfpge), _, _) ->
      Float_pred
  | _ ->
      rbexp_domain_of_vars e

let initial_abs_for_rbexp mgr rbe =
  {
    int_abs =
      Intabs.abs_of_vars
        mgr.int_mgr
        (VS.filter (fun v -> not (var_is_float v)) (vars_rbexp rbe));
    fp_abs = fp_top_or_empty mgr;
  }

let assume_float_rbexp dom rbe =
  match Floatabs.assume_rbexp dom.fp_abs rbe with
  | Ok fp_abs ->
      Some { dom with fp_abs }
  | Error _ ->
      None

let assume_int_rbexp mgr dom rbe =
  match Intabs.abs_of_rbexp mgr.int_mgr ~abs:dom.int_abs rbe with
  | Some int_abs ->
      Some { dom with int_abs }
  | None ->
      None

let rec assume_rbexp mgr dom rbe =
  match rbe with
  | Rtrue ->
      Some dom

  | Rand (e1, e2) ->
      begin
        match assume_rbexp mgr dom e1 with
        | None -> None
        | Some dom' -> assume_rbexp mgr dom' e2
      end

  | _ ->
      begin
        match domain_of_atomic_rbexp rbe with
        | Float_pred ->
            assume_float_rbexp dom rbe
        | Int_pred ->
            assume_int_rbexp mgr dom rbe
        | Mixed_pred ->
            None
      end

let abs_of_rbexp mgr ?abs rbe =
  let dom =
    match abs with
    | Some dom -> dom
    | None -> initial_abs_for_rbexp mgr rbe
  in
  assume_rbexp mgr dom rbe

let abs_set_nondet_var mgr dom v =
  if var_is_float v then
    dom
  else
    {
      dom with
      int_abs = Intabs.abs_set_nondet_var mgr.int_mgr dom.int_abs v;
    }

let floatabs_error_to_exception (e : Floatabs.error) =
  match e with
  | Floatabs.Unsupported msg ->
      raise (Utils.Std.UnsupportedException msg)
  | Floatabs.Invalid msg ->
      raise (Utils.Std.UnsupportedException msg)
  | Floatabs.Overflow ->
      raise Utils.Std.FloatingPointOverflow
  | Floatabs.DivisionByZero ->
      raise Utils.Std.FloatingPointDivisionByZero

let fp_abs_of_zinterval lo hi =
  if Z.gt lo hi then
    Floatabs.Bottom
  else
    let open Utils.Float in

    let pos =
      if Z.leq hi Z.zero then
        None
      else
        let lo_pos = Z.max lo Z.one in
        let flo = FloatConst.of_z lo_pos ~rnd:RTN in
        let fhi = FloatConst.of_z hi ~rnd:RTP in
        Some Floatabs.{ lo = flo; hi = fhi }
    in

    let neg =
      if Z.geq lo Z.zero then
        None
      else
        let hi_neg = Z.min hi Z.minus_one in
        let flo = FloatConst.of_z lo ~rnd:RTN in
        let fhi = FloatConst.of_z hi_neg ~rnd:RTP in
        Some Floatabs.{ lo = flo; hi = fhi }
    in

    let zero =
      Z.leq lo Z.zero && Z.geq hi Z.zero
    in

    let exceeds_max =
      let upper_bad =
        match pos with
        | None -> false
        | Some i -> FloatConst.cmp i.hi Floatabs.fp_max > 0
      in
      let lower_bad =
        match neg with
        | None -> false
        | Some i -> FloatConst.cmp i.lo Floatabs.fp_neg_max < 0
      in
      upper_bad || lower_bad
    in

    if exceeds_max then
      Floatabs.Bottom
    else
      Floatabs.value ?neg ~zero ?pos ()

let zinterval_of_int_atom mgr dom = function
  | Avar v when not (var_is_float v) ->
      Some (Intabs.zinterval_of_var mgr.int_mgr dom.int_abs v)

  | Aconst (_, Cint z) ->
      Some (z, z)

  | _ ->
      None

let transfer_z_to_f mgr dom dst src =
  match typ_of_var dst with
  | Tdouble ->
      begin
        match zinterval_of_int_atom mgr dom src with
        | None ->
            raise
              (Utils.Std.UnsupportedException
                 "Z->F transfer expects an integer variable or integer constant.")

        | Some (lo, hi) ->
            let abs = fp_abs_of_zinterval lo hi in
            { dom with fp_abs = Floatabs.set dom.fp_abs dst abs }
      end

  | Tsingle ->
      raise
        (Utils.Std.UnsupportedException
           "Z->F transfer currently supports only Tdouble.")

  | _ ->
      raise
        (Utils.Std.UnsupportedException
           "Z->F transfer requires a floating-point destination.")

let z_of_mpz z =
  Z.of_string (Mpz.to_string z)

let floor_mpq q =
  let num = Mpz.init () in
  let den = Mpz.init () in
  let out = Mpz.init () in
  Mpq.get_num num q;
  Mpq.get_den den q;
  Mpz.fdiv_q out num den;
  z_of_mpz out

let ceil_mpq q =
  let num = Mpz.init () in
  let den = Mpz.init () in
  let out = Mpz.init () in
  Mpq.get_num num q;
  Mpq.get_den den q;
  Mpz.cdiv_q out num den;
  z_of_mpz out

let floor_floatconst x =
  floor_mpq (FloatConst.to_mpq x)

let ceil_floatconst x =
  ceil_mpq (FloatConst.to_mpq x)

let zinterval_hull pieces =
  match pieces with
  | [] -> None
  | (lo, hi) :: tl ->
      Some
        (List.fold_left
           (fun (acc_lo, acc_hi) (xlo, xhi) ->
             (Z.min acc_lo xlo, Z.max acc_hi xhi))
           (lo, hi)
           tl)

let zinterval_of_fp_abs = function
  | Floatabs.Bottom ->
      None

  | Floatabs.Value { neg; zero; pos } ->
      let pieces = [] in

      let pieces =
        match neg with
        | None -> pieces
        | Some i ->
            (floor_floatconst i.lo, ceil_floatconst i.hi) :: pieces
      in

      let pieces =
        if zero then (Z.zero, Z.zero) :: pieces else pieces
      in

      let pieces =
        match pos with
        | None -> pieces
        | Some i ->
            (floor_floatconst i.lo, ceil_floatconst i.hi) :: pieces
      in

      zinterval_hull pieces

let fp_abs_of_float_atom dom = function
  | Avar v when var_is_float v ->
      begin
        match Floatabs.find dom.fp_abs v with
        | Ok a -> a
        | Error e -> floatabs_error_to_exception e
      end

  | Aconst (Tdouble, Cfloat f) ->
      Floatabs.value
        ~zero:(FloatConst.eq f Floatabs.fp_zero)
        ?neg:
          (if FloatConst.cmp f Floatabs.fp_zero < 0
           then Some (Floatabs.interval_singleton f)
           else None)
        ?pos:
          (if FloatConst.cmp f Floatabs.fp_zero > 0
           then Some (Floatabs.interval_singleton f)
           else None)
        ()

  | Aconst (Tsingle, Cfloat _) ->
      raise
        (Utils.Std.UnsupportedException
           "F->Z transfer currently supports only Tdouble.")

  | _ ->
      raise
        (Utils.Std.UnsupportedException
           "F->Z transfer expects a floating-point variable or constant.")

let transfer_f_to_z mgr dom dst src =
  match typ_of_var dst with
  | Tuint _
  | Tsint _ ->
      let fp_abs = fp_abs_of_float_atom dom src in
      begin
        match zinterval_of_fp_abs fp_abs with
        | None ->
            raise
              (Utils.Std.UnsupportedException
                 "F->Z transfer cannot continue from FloatAbs Bottom.")
        | Some (lo, hi) ->
            {
              dom with
              int_abs =
                Intabs.set_var_zinterval
                  mgr.int_mgr
                  dom.int_abs
                  dst
                  lo
                  hi;
            }
      end

  | Tdouble
  | Tsingle ->
      raise
        (Utils.Std.UnsupportedException
           "F->Z transfer requires an integer destination.")

let interp_float_instr dom instr =
  match Floatabs.interp_instr dom.fp_abs instr with
  | Ok fp_abs ->
      { dom with fp_abs }
  | Error e ->
      floatabs_error_to_exception e

let interp_int_instr ?safe ?var_bound mgr dom instr =
  {
    dom with
    int_abs =
      Intabs.interp_instr
        ?safe
        ?var_bound
        mgr.int_mgr
        dom.int_abs
        instr;
  }

let interp_assume mgr dom pred =
  let rbe = rng_bexp pred in
  match assume_rbexp mgr dom rbe with
  | Some dom' ->
      dom'
  | None ->
      (*
       * Failure to refine an assumption is safe here: retaining the current
       * abstract state is an over-approximation of the assumed states.
       * We lose precision, but do not introduce an unsound restriction.
       *)
      dom

let interp_instr ?safe ?var_bound mgr dom instr =
  match instr with
  | Icast (Some _, dst, src)
    when var_is_float dst
      || (match typ_of_atom src with
          | Tdouble
          | Tsingle -> true
          | Tuint _
          | Tsint _ -> false) ->
      raise
        (Utils.Std.UnsupportedException
           "A cast instruction with a discard variable does not support floating-point operands.")

  | Icast (_, dst, src)
    when var_is_float dst ->
      begin
        match typ_of_atom src with
        | Tuint _
        | Tsint _ ->
            transfer_z_to_f mgr dom dst src
        | _ ->
            interp_float_instr dom instr
      end

  | Icast (_, dst, src)
    when (not (var_is_float dst)) ->
      begin
        match typ_of_atom src with
        | Tdouble
        | Tsingle ->
            transfer_f_to_z mgr dom dst src
        | _ ->
            interp_int_instr ?safe ?var_bound mgr dom instr
      end

  | Imov (dst, _)
  | Iadd (dst, _, _)
  | Isub (dst, _, _)
  | Imul (dst, _, _)
  | Idiv (dst, _, _)
    when var_is_float dst ->
      interp_float_instr dom instr

  | Imov _
  | Iadd _
  | Isub _
  | Imul _
  | Idiv _ ->
      interp_int_instr ?safe ?var_bound mgr dom instr

  | Iassume pred ->
      interp_assume mgr dom pred

  | Ighost (_, pred) ->
      interp_assume mgr dom pred

  | _ ->
      (*
       * Remaining instructions are still handled by Intabs.
       * Cross-domain casts will be intercepted here once Z <-> F transfer
       * functions are introduced.
       *)
      interp_int_instr ?safe ?var_bound mgr dom instr

let rec interp_prog ?safe ?var_bound mgr dom = function
  | [] -> dom
  | instr :: tl ->
      let dom' = interp_instr ?safe ?var_bound mgr dom instr in
      interp_prog ?safe ?var_bound mgr dom' tl

let prove_float_rbexp dom rbe =
  match Floatabs.prove_rbexp dom.fp_abs rbe with
  | Ok b ->
      b
  | Error _ ->
      false

let prove_int_rbexp mgr dom rbe =
  Intabs.sat_rbexp mgr.int_mgr dom.int_abs rbe

let rec sat_rbexp mgr dom rbe =
  match rbe with
  | Rtrue ->
      true

  | Rand (e1, e2) ->
      sat_rbexp mgr dom e1
      && sat_rbexp mgr dom e2

  | Ror (e1, e2) ->
      sat_rbexp mgr dom e1
      || sat_rbexp mgr dom e2

  | _ ->
      begin
        match domain_of_atomic_rbexp rbe with
        | Float_pred ->
            prove_float_rbexp dom rbe

        | Int_pred ->
            prove_int_rbexp mgr dom rbe

        | Mixed_pred ->
            false
      end

let instr_safe mgr dom instr =
  match instr with
  | Icast (Some _, dst, src)
    when var_is_float dst
      || (match typ_of_atom src with
          | Tdouble
          | Tsingle -> true
          | Tuint _
          | Tsint _ -> false) ->
      raise
        (Utils.Std.UnsupportedException
           "A cast instruction with a discard variable does not support floating-point operands.")

  | Imov (dst, _)
  | Iadd (dst, _, _)
  | Isub (dst, _, _)
  | Imul (dst, _, _)
  | Idiv (dst, _, _)
    when var_is_float dst ->
      (*
       * CryptoLine defines the range-safety conditions of these
       * floating-point instructions as True.  Floating-point validity is
       * handled separately by the FloatAbs transfer semantics.
       *)
      true

  | Icast (_, dst, _src)
    when var_is_float dst ->
      (*
       * CryptoLine defines integer-to-float and float-to-float casts as
       * range-safe.  Their value semantics are handled by the transfer
       * dispatcher above.
       *)
      true

  | Icast (_, dst, src)
    when not (var_is_float dst) ->
      begin
        match typ_of_atom src with
        | Tdouble
        | Tsingle ->
            (*
             * Float-to-integer casts have a genuine safety obligation:
             * the source must be finite and representable in the
             * destination integer type.  Until FloatAbs exposes this proof
             * operation, conservatively decline to discharge it here and
             * leave it to the normal SMT safety path.
             *)
            false
        | Tuint _
        | Tsint _ ->
            Intabs.instr_safe mgr.int_mgr dom.int_abs instr
      end

  | Ivpc (dst, src)
    when var_is_float dst
      || (match typ_of_atom src with
          | Tdouble
          | Tsingle -> true
          | Tuint _
          | Tsint _ -> false) ->
      raise
        (Utils.Std.UnsupportedException
           "Instruction vpc does not support floating-point operands.")

  | _ ->
      Intabs.instr_safe mgr.int_mgr dom.int_abs instr

let string_of_abs dom =
  let int_s = Intabs.string_of_abs dom.int_abs in
  let fp_s = Floatabs.string_of_state dom.fp_abs in
  "[IntAbs]\n"
  ^ int_s
  ^ "\n[FloatAbs]\n"
  ^ (if String.length fp_s = 0 then "<empty>" else fp_s)

let string_of_abs_grouped ~inputs ~outputs dom =
  let int_s = Intabs.string_of_abs dom.int_abs in
  let fp_s =
    Floatabs.string_of_state_grouped
      ~inputs
      ~outputs
      dom.fp_abs
  in
  "[IntAbs]\n"
  ^ int_s
  ^ "\n[FloatAbs]\n"
  ^ fp_s

let zinterval_of_var mgr dom v =
  Intabs.zinterval_of_var mgr.int_mgr dom.int_abs v

let rec rbexp_apply_abs_interp e =
  match e with
  | Rtrue ->
      true

  | Rand (e1, e2)
  | Ror (e1, e2) ->
      rbexp_apply_abs_interp e1
      && rbexp_apply_abs_interp e2

  | Rneg e ->
      begin
        match domain_of_atomic_rbexp e with
        | Int_pred ->
            Intabs.rbexp_apply_abs_interp (Rneg e)

        | Float_pred
        | Mixed_pred ->
            false
      end

  | _ ->
      begin
        match domain_of_atomic_rbexp e with
        | Float_pred ->
            true

        | Int_pred ->
            Intabs.rbexp_apply_abs_interp e

        | Mixed_pred ->
            false
      end
