open Datatypes
open Decimal
open Nat0

module Pos :
 sig
  val succ : int -> int

  val add : int -> int -> int

  val add_carry : int -> int -> int

  val pred_double : int -> int

  val mul : int -> int -> int

  val div2 : int -> int

  val div2_up : int -> int

  val size : int -> int

  val compare_cont : comparison -> int -> int -> comparison

  val compare : int -> int -> comparison

  val max : int -> int -> int

  val eqb : int -> int -> bool

  val ltb : int -> int -> bool

  val iter_op : ('a1 -> 'a1 -> 'a1) -> int -> 'a1 -> 'a1

  val to_nat : int -> nat

  val of_succ_nat : nat -> int

  val to_little_uint : int -> uint

  val to_uint : int -> uint

  val eq_dec : int -> int -> bool
 end
