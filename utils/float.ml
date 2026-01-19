open Apron

type prec = Single | Double
let params: prec -> int*int*int = function
  | Double -> (53, -1073, 1024)
  | Single -> (24, -148, 128)

module type FloatType = sig
  type t

  val of_string: string -> rnd:Mpfr.round -> t
  val of_z: Z.t -> rnd:Mpfr.round -> t
  val of_int: int -> rnd:Mpfr.round -> t
  val of_float: float -> rnd:Mpfr.round -> t

  val add: t -> t ->rnd:Mpfr.round -> t
  val sub: t -> t ->rnd:Mpfr.round -> t
  val sub_ui: t -> int ->rnd:Mpfr.round -> t
  val mul: t -> t ->rnd:Mpfr.round -> t
  val mul_2exp: t -> int -> rnd:Mpfr.round -> t
  val div: t -> t ->rnd:Mpfr.round -> t
  val div_2exp: t -> int -> rnd:Mpfr.round -> t
  val neg: t -> rnd:Mpfr.round -> t
  val abs: t -> rnd:Mpfr.round -> t
  
  val cmp: t -> t -> int
  val is_representable: prec -> t -> bool
end

module type S = sig
  type t

  val of_string: string -> rnd:Mpfr.round -> t
  val of_z: Z.t -> rnd:Mpfr.round -> t
  val of_int: int -> rnd:Mpfr.round -> t
  val of_float: float -> rnd:Mpfr.round -> t

  val add: t -> t ->rnd:Mpfr.round -> t
  val sub: t -> t ->rnd:Mpfr.round -> t
  val sub_ui: t -> int ->rnd:Mpfr.round -> t
  val mul: t -> t ->rnd:Mpfr.round -> t
  val mul_2exp: t -> int -> rnd:Mpfr.round -> t
  val div: t -> t ->rnd:Mpfr.round -> t
  val div_2exp: t -> int -> rnd:Mpfr.round -> t
  val neg: t -> rnd:Mpfr.round -> t
  val abs: t -> rnd:Mpfr.round -> t

  val cmp: t -> t -> int
  val is_representable: prec -> t -> bool
  val min_val: prec -> t
  val max_val: prec -> t 
end

module Make (FloatNum: FloatType): S with type t := FloatNum.t = struct
  let of_string = FloatNum.of_string
  let of_z = FloatNum.of_z
  let of_int = FloatNum.of_int
  let of_float = FloatNum.of_float

  let add = FloatNum.add
  let sub = FloatNum.sub
  let sub_ui = FloatNum.sub_ui
  let mul = FloatNum.mul
  let mul_2exp = FloatNum.mul_2exp
  let div = FloatNum.div
  let div_2exp = FloatNum.div_2exp
  let neg = FloatNum.neg
  let abs = FloatNum.abs

  let cmp = FloatNum.cmp
  let is_representable = FloatNum.is_representable
  let min_val p =
    match p with
    | Double -> 
        let rnd = Mpfr.Near in
        let x = FloatNum.of_int 1 rnd in (* x := 1 *)
        let x = FloatNum.mul_2exp x 53 rnd in (* x := x * 2^53 == 2^ 53 *)
        let x = FloatNum.sub_ui x 1 rnd in (* x := x-1 == 2^53-1 *)
        let x = FloatNum.mul_2exp x 971 rnd in (* x := x * 2^971 == (2-2^52) * 2^1023 *)
        FloatNum.neg x rnd (* x := -x == - (2-2^52) * 2^1023 *)
    | Single ->
        let rnd = Mpfr.Near in
        let x = FloatNum.of_int 1 rnd in (* x := 1 *)
        let x = FloatNum.mul_2exp x 24 rnd in (* x := x * 2^24 == 2^ 24 *)
        let x = FloatNum.sub_ui x 1 rnd in (* x := x-1 == 2^24-1 *)
        let x = FloatNum.mul_2exp x 104 rnd in (* x := x * 2^104 == (2-2^23) * 2^127 *)
        FloatNum.neg x rnd (* x := -x == - (2-2^23) * 2^127 *)
  let max_val p =
    match p with
    | Double ->
        let rnd = Mpfr.Near in
        let x = FloatNum.of_int 1 rnd in (* x := 1 *)
        let x = FloatNum.mul_2exp x 53 rnd in (* x := x * 2^53 == 2^ 53 *)
        let x = FloatNum.sub_ui x 1 rnd in (* x := x-1 == 2^53-1 *)
        Mpfr.mul_2exp x 971 rnd in (* x := x * 2^971 == (2-2^52) * 2^1023 *)
    | Single ->
        let rnd = Mpfr.Near in
        let x = FloatNum.of_int 1 rnd in (* x := 1 *)
        let x = FloatNum.mul_2exp x 24 rnd in (* x := x * 2^24 == 2^ 24 *)
        let x = FloatNum.sub_ui x 1 rnd in (* x := x-1 == 2^24-1 *)
        FloatNum.mul_2exp x 104 rnd (* x := x * 2^104 == (2-2^23) * 2^127 *)
end






module Fnumber: FloatType with type t:= Mpfrf.t = struct
  type t = Mpfrf.t

  let of_string s ~rnd =
    let x = (Mpfr.init2 53: Mpfr.t) in
    let _ = Mpfr.set_str x s ~base:10 rnd in
    Mpfrf.of_mpfr x
  let of_z n ~rnd =
    let x = (Mpfr.init2 53: Mpfr.t) in
    let _ = Mpfr.set_str x (Z.to_string n) ~base:10 rnd in
    Mpfrf.of_mpfr x
  let of_int n ~rnd =
    let x = (Mpfr.init2 53: Mpfr.t) in
    let _ = Mpfr.set_si x n rnd in
    Mpfrf.of_mpfr x
  let of_float f ~rnd =
    let x = (Mpfr.init2 53: Mpfr.t) in
    let _ = Mpfr.set_d x f rnd in
    Mpfrf.of_mpfr x

  let add x y ~rnd = Mpfrf.add x y rnd
  let sub x y ~rnd = Mpfrf.sub x y rnd
  let sub_ui x y ~rnd = Mpfrf.sub_ui x y rnd
  let mul x y ~rnd = Mpfrf.mul x y rnd
  let mul_2exp x k ~rnd =
    let r = (Mpfr.init2 (Mpfr.get_prec x): Mpfr.t) in
    let _ = Mpfr.mul_2si r x k rnd in
    Mpfrf.of_mpfr r
  let div x y ~rnd = Mpfrf.div x y rnd
  let div_2exp x k ~rnd =
    let r = (Mpfr.init2 (Mpfr.get_prec x): Mpfr.t) in
    let _ = Mpfr.div_2si r x k rnd in
    Mpfrf.of_mpfr r
  let neg x ~rnd = Mpfrf.neg x rnd
  let abs x ~rnd = Mpfrf.abs x rnd

  let cmp = Mpfrf.cmp
  let params = function
    | Double -> (53, -1073, 1024)
    | Single -> (24, -148, 128)
  let is_representable p f =
    if not (Mpfr.number_p f) then
      false
    else (
      let (prec', emin, emax) = params p in
      let old_emin = Mpfr.get_emin () in
      let old_emax = Mpfr.get_emax () in
      let _ = Mpfr.set_emin emin in
      let _ = Mpfr.set_emax emax in
      try
        let x = Mpfr.init2 prec' in
        let ternary = Mpfr.set x f Mpfr.Near in
        let _ = Mpfr.subnormalize x ternary Mpfr.Near in
        let ok = (Mpfr.cmp x f = 0) in
        let _ = Mpfr.set_emin old_emin in
        let _ = Mpfr.set_emax old_emax in
        ok
      with e ->
        let _ = Mpfr.set_emin old_emin in
        let _ = Mpfr.set_emax old_emax in
        raise e
    )
end

module Qnumber: FloatType with type t := Mpqf.t = struct
  type t = Mpqf.t

  let of_string s ~rnd = Mpqf.of_string s
  let of_int n ~rnd = Mpqf.of_int n
  let of_z n ~rnd = Mpqf.of_string (Z.to_string n)
  let of_float f ~rnd = Mpqf.of_float f

  let add x y ~rnd = Mpqf.add x y
  let sub x y ~rnd = Mpqf.sub x y
  let sub_ui x y ~rnd = Mpqf.sub_ui x y
  let mul x y ~rnd = Mpqf.mul x y
  let div x y ~rnd = Mpqf.div x y
  let neg x ~rnd = Mpqf.neg x
  let abs x ~rnd = Mpqf.abs x
  
  let mul_2exp x k ~rnd =
    let r = Mpq.init () in
    let _ = Mpq.mul_2exp r x k in
    Mpqf.of_mpq r
  let div_2exp x k ~rnd =
    let r = Mpq.init () in
    let _ = Mpq.div_2exp r x k in
    Mpqf.of_mpq r

  let cmp x y = Mpqf.cmp x y
  let is_representable p q =
    let (prec', emin, emax) = params p in
    let old_emin = Mpfr.get_emin () in
    let old_emax = Mpfr.get_emax () in
    let _ = Mpfr.set_emin emin in
    let _ = Mpfr.set_emax emax in
    try
      let x = Mpfr.init2 prec' in
      let ternary = Mpfr.set_q x q Mpfr.Near in
      let _ = Mpfr.subnormalize x ternary Mpfr.Near in
      let q_round = Mpfr.to_mpq x in
      let _ = Mpfr.set_emin old_emin in
      let _ = Mpfr.set_emax old_emax in
      Mpq.cmp q q_round = 0
    with e ->
      let _ = Mpfr.set_emin old_emin in
      let _ = Mpfr.set_emax old_emax in
      raise e
end
