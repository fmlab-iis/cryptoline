open Bool
open Datatypes
open Eqtype
open Ssrbool
open Ssrnat

val size : 'a1 list -> nat

val head : 'a1 -> 'a1 list -> 'a1

val behead : 'a1 list -> 'a1 list

val ncons : nat -> 'a1 -> 'a1 list -> 'a1 list

val nseq : nat -> 'a1 -> 'a1 list

val cat : 'a1 list -> 'a1 list -> 'a1 list

val rcons : 'a1 list -> 'a1 -> 'a1 list

val last : 'a1 -> 'a1 list -> 'a1

val belast : 'a1 -> 'a1 list -> 'a1 list

val drop : nat -> 'a1 list -> 'a1 list

val take : nat -> 'a1 list -> 'a1 list

val catrev : 'a1 list -> 'a1 list -> 'a1 list

val rev : 'a1 list -> 'a1 list

val eqseq :
  Equality.coq_type -> Equality.sort list -> Equality.sort list -> bool

val eqseqP : Equality.coq_type -> Equality.sort list Equality.axiom

val seq_eqMixin : Equality.coq_type -> Equality.sort list Equality.mixin_of

val seq_eqType : Equality.coq_type -> Equality.coq_type

type bitseq = bool list

val bitseq_eqType : Equality.coq_type

val map : ('a1 -> 'a2) -> 'a1 list -> 'a2 list

val foldr : ('a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 list -> 'a2

val foldl : ('a2 -> 'a1 -> 'a2) -> 'a2 -> 'a1 list -> 'a2

val zip : 'a1 list -> 'a2 list -> ('a1 * 'a2) list

val unzip1 : ('a1 * 'a2) list -> 'a1 list

val unzip2 : ('a1 * 'a2) list -> 'a2 list
