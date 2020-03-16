open Datatypes
open NBitsDef
open Eqtype
open Seq
open Ssrnat

val extzip : 'a1 -> 'a2 -> 'a1 list -> 'a2 list -> ('a1 * 'a2) list

val lift : 'a1 -> ('a1 -> 'a1 -> 'a1) -> 'a1 list -> 'a1 list -> 'a1 list

val lift0 : (bool -> bool -> bool) -> bool list -> bool list -> bool list

val extzip0 : bool list -> bool list -> (bool * bool) list

val succB : bits -> bits

val invB : bits -> bits

val andB : bits -> bits -> bits

val orB : bits -> bits -> bits

val xorB : bits -> bits -> bits

val negB : bits -> bits

val orb_all : bits -> bool

val andb_orb_all_zip : (bool * bool) list -> bool

val andb_orb_all : bits -> bits -> bool

val bool_adder : bool -> bool -> bool -> bool * bool

val full_adder_zip : bool -> (bool * bool) list -> bool * bits

val full_adder : bool -> bits -> bits -> bool * bits

val adcB : bool -> bits -> bits -> bool * bits

val addB : bits -> bits -> bits

val carry_addB : bits -> bits -> bool

val sbbB : bool -> bits -> bits -> bool * bits

val subB : bits -> bits -> bits

val borrow_subB : bits -> bits -> bool

val coq_Saddo : bits -> bits -> bool

val coq_Ssubo : bits -> bits -> bool

val full_mul : bits -> bits -> bits

val mulB : bits -> bits -> bits

val coq_Umulo : bits -> bits -> bool

val coq_Smulo : bits -> bits -> bool

val ltB_lsb_zip : (bool * bool) list -> bool

val ltB_lsb : bits -> bits -> bool

val leB : bits -> bits -> bool

val gtB : bits -> bits -> bool

val geB : bits -> bits -> bool

val sltB : bits -> bits -> bool

val sleB : bits -> bits -> bool

val sgtB : bits -> bits -> bool

val sgeB : bits -> bits -> bool

val shrB1 : bits -> bits

val shrB : nat -> bits -> bits

val sarB1 : bits -> bits

val sarB : nat -> bits -> bits

val shlB1 : bits -> bits

val shlB : nat -> bits -> bits
