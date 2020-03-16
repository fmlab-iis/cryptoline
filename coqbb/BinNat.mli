open BinPos
open Datatypes
open Decimal

module N :
 sig
  val succ : int -> int

  val add : int -> int -> int

  val mul : int -> int -> int

  val compare : int -> int -> comparison

  val eqb : int -> int -> bool

  val ltb : int -> int -> bool

  val to_nat : int -> nat

  val to_uint : int -> uint
 end
