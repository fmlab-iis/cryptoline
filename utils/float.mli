
type prec = Single | Double

module type FloatType = sig
  type t

  val of_string: string -> rnd:Mpfr.round -> t
  val to_string: t -> string
  val of_z: Z.t -> rnd:Mpfr.round -> t
  val of_int: int -> rnd:Mpfr.round -> t
  val of_float: float -> rnd:Mpfr.round -> t
  val to_mpq: t -> 'a Mpq.tt

  val add: t -> t ->rnd:Mpfr.round -> t
  val sub: t -> t ->rnd:Mpfr.round -> t
  val mul: t -> t ->rnd:Mpfr.round -> t
  val mul_2exp: t -> int -> rnd:Mpfr.round -> t
  val div: t -> t ->rnd:Mpfr.round -> t
  val div_2exp: t -> int -> rnd:Mpfr.round -> t
  val neg: t -> rnd:Mpfr.round -> t
  val abs: t -> rnd:Mpfr.round -> t
  val pow: t -> t -> rnd:Mpfr.round -> t
  val pow_int: t -> int -> rnd:Mpfr.round -> t
 
  val sgn: t -> int
  (** [sgn x] returns [+1] if [x]>[0], [0] if [x]=[0], [-1] if [x]<[0] *)
  val cmp: t -> t -> int
  (** [cmp x y] returns a positive value if [x]>[y], [0] if [x]=[y], a negative value if [x]<[y] *)

  val cmp_int: t -> int -> int
  val is_representable: prec -> t -> bool
  val round_to: prec -> rnd:Mpfr.round -> t -> t
end

module type S = sig
  type t

  val zero: t
  val one: t

  val of_string: string -> rnd:Mpfr.round -> t
  val to_string: t -> string
  val of_z: Z.t -> rnd:Mpfr.round -> t
  val of_int: int -> rnd:Mpfr.round -> t
  val of_float: float -> rnd:Mpfr.round -> t
  val to_mpq: t -> 'a Mpq.tt

  val add: t -> t ->rnd:Mpfr.round -> t
  val add_int: t -> int ->rnd:Mpfr.round -> t
  val int_add: int -> t ->rnd:Mpfr.round -> t
  val sub: t -> t ->rnd:Mpfr.round -> t
  val sub_int: t -> int ->rnd:Mpfr.round -> t
  val int_sub: int -> t ->rnd:Mpfr.round -> t
  val mul: t -> t ->rnd:Mpfr.round -> t
  val mul_int: t -> int ->rnd:Mpfr.round -> t
  val int_mul: int -> t ->rnd:Mpfr.round -> t
  val mul_2exp: t -> int -> rnd:Mpfr.round -> t
  val div: t -> t ->rnd:Mpfr.round -> t
  val div_int: t -> int ->rnd:Mpfr.round -> t
  val int_div: int -> t ->rnd:Mpfr.round -> t
  val div_2exp: t -> int -> rnd:Mpfr.round -> t
  val neg: t -> rnd:Mpfr.round -> t
  val abs: t -> rnd:Mpfr.round -> t
  val pow: t -> t -> rnd:Mpfr.round -> t
  val pow_int: t -> int -> rnd:Mpfr.round -> t

  val sgn: t -> int
  (** [sgn x] returns [+1] if [x]>[0], [0] if [x]=[0], [-1] if [x]<[0] *)
  val cmp: t -> t -> int
  (** [cmp x y] returns a positive value if [x]>[y], [0] if [x]=[y], a negative value if [x]<[y] *)

  val cmp_int: t -> int -> int
  val eq: t -> t -> bool
  val eq_int: t -> int -> bool
  val is_representable: prec -> t -> bool
  val round_to: prec -> rnd:Mpfr.round -> t -> t

  val min_val: prec -> t
  (** [min_val prec] returns the smallest representable (subnormal) positive number in precision [prec], as specified by IEEE-754.  *)
  val max_val: prec -> t
  (** [min_val prec] returns the largest representable positive number in precision [prec], as specified by IEEE-754. *)
end

module Make (FloatNum: FloatType): S with type t = FloatNum.t

module Fnumber: FloatType with type t = Mpfrf.t
module Qnumber: FloatType with type t = Mpqf.t
