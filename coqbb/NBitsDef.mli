open Ascii
open BinInt
open Datatypes
open String0
open Seq
open Ssrbool
open Ssrnat

val split_head : 'a1 -> 'a1 list -> 'a1 * 'a1 list

val lastd : 'a1 -> 'a1 list -> 'a1

val belastd : 'a1 list -> 'a1 list

val split_last : 'a1 -> 'a1 list -> 'a1 list * 'a1

type bits = bitseq

val b0 : bool

val b1 : bool

val zeros : nat -> bits

val splitlsb : bits -> bool * bits

val splitmsb : bits -> bits * bool

val droplsb : bits -> bits

val dropmsb : bits -> bits

val joinlsb : 'a1 -> 'a1 list -> 'a1 list

val joinmsb : 'a1 list -> 'a1 -> 'a1 list

val msb : bits -> bool

val high : nat -> bits -> bits

val low : nat -> bits -> bits

val extract : nat -> nat -> bits -> bits

val zext : nat -> bits -> bits

val sext : nat -> bits -> bits

val to_nat : bits -> nat

val from_nat : nat -> nat -> bits

val from_Zpos : nat -> int -> bits

val from_Zneg : nat -> int -> bits

val from_Z : nat -> int -> bits

val char_to_nibble : char -> bits

val char_to_bit : char -> bool

val from_bin : char list -> bits

val from_hex : char list -> bits

val coq_Zpos_of_num_string_rec : int -> char list -> int

val coq_Zpos_of_num_string : char list -> int

val from_string : char list -> bits

val nibble_to_char : bits -> char

val append_nibble_on_string : bits -> char list -> char list

val to_hex : bits -> char list

val to_bin : bits -> char list
