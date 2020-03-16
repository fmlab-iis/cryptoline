open BinPos
open Datatypes

module Z :
 sig
  val double : int -> int

  val succ_double : int -> int

  val pred_double : int -> int

  val pos_sub : int -> int -> int

  val add : int -> int -> int

  val opp : int -> int

  val pred : int -> int

  val sub : int -> int -> int

  val mul : int -> int -> int

  val compare : int -> int -> comparison

  val leb : int -> int -> bool

  val ltb : int -> int -> bool

  val eqb : int -> int -> bool

  val max : int -> int -> int

  val to_nat : int -> nat

  val of_nat : nat -> int

  val even : int -> bool

  val odd : int -> bool

  val div2 : int -> int

  val log2 : int -> int

  val eq_dec : int -> int -> bool
 end
