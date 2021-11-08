
type __ = Obj.t

val xorb : bool -> bool -> bool

val negb : bool -> bool

val fst : ('a1 * 'a2) -> 'a1

val snd : ('a1 * 'a2) -> 'a2

type comparison =
| Eq
| Lt
| Gt

val add : int -> int -> int

val sub : int -> int -> int

type reflect =
| ReflectT
| ReflectF

type positive =
| XI of positive
| XO of positive
| XH

type n =
| N0
| Npos of positive

type z =
| Z0
| Zpos of positive
| Zneg of positive

module Nat :
 sig
  val pred : int -> int

  val compare : int -> int -> comparison

  val log2_iter : int -> int -> int -> int -> int

  val log2 : int -> int

  val log2_up : int -> int
 end

module Pos :
 sig
  type mask =
  | IsNul
  | IsPos of positive
  | IsNeg
 end

module Coq_Pos :
 sig
  val succ : positive -> positive

  val add : positive -> positive -> positive

  val add_carry : positive -> positive -> positive

  val pred_double : positive -> positive

  type mask = Pos.mask =
  | IsNul
  | IsPos of positive
  | IsNeg

  val succ_double_mask : mask -> mask

  val double_mask : mask -> mask

  val double_pred_mask : positive -> mask

  val sub_mask : positive -> positive -> mask

  val sub_mask_carry : positive -> positive -> mask

  val mul : positive -> positive -> positive

  val div2 : positive -> positive

  val div2_up : positive -> positive

  val size : positive -> positive

  val compare_cont : comparison -> positive -> positive -> comparison

  val compare : positive -> positive -> comparison

  val iter_op : ('a1 -> 'a1 -> 'a1) -> positive -> 'a1 -> 'a1

  val to_nat : positive -> int

  val of_succ_nat : int -> positive
 end

module N :
 sig
  val succ_double : n -> n

  val double : n -> n

  val add : n -> n -> n

  val sub : n -> n -> n

  val mul : n -> n -> n

  val compare : n -> n -> comparison

  val leb : n -> n -> bool

  val even : n -> bool

  val odd : n -> bool

  val pos_div_eucl : positive -> n -> n * n

  val div_eucl : n -> n -> n * n

  val div : n -> n -> n

  val to_nat : n -> int

  val b2n : bool -> n
 end

val n_of_digits : bool list -> n

val n_of_ascii : char -> n

val nat_of_ascii : char -> int

module Z :
 sig
  val double : z -> z

  val succ_double : z -> z

  val pred_double : z -> z

  val pos_sub : positive -> positive -> z

  val add : z -> z -> z

  val opp : z -> z

  val succ : z -> z

  val pred : z -> z

  val mul : z -> z -> z

  val to_nat : z -> int

  val of_nat : int -> z

  val even : z -> bool

  val odd : z -> bool

  val div2 : z -> z

  val log2 : z -> z

  val b2z : bool -> z
 end

val append : char list -> char list -> char list

val get : int -> char list -> char option

val prefix : char list -> char list -> bool

val index : int -> char list -> char list -> int option

val findex : int -> char list -> char list -> int

val addb : bool -> bool -> bool

val is_left : bool -> bool

val iffP : bool -> reflect -> reflect

val idP : bool -> reflect

type 't pred0 = 't -> bool

type 't rel = 't -> 't pred0

module Equality :
 sig
  type 't axiom = 't -> 't -> reflect

  type 't mixin_of = { op : 't rel; mixin_of__1 : 't axiom }

  val op : 'a1 mixin_of -> 'a1 rel

  type coq_type =
    __ mixin_of
    (* singleton inductive, whose constructor was Pack *)

  type sort = __

  val coq_class : coq_type -> sort mixin_of
 end

val eq_op : Equality.coq_type -> Equality.sort rel

val eqP : Equality.coq_type -> Equality.sort Equality.axiom

val eqb : bool -> bool -> bool

val eqbP : bool Equality.axiom

val bool_eqMixin : bool Equality.mixin_of

val bool_eqType : Equality.coq_type

val eqn : int -> int -> bool

val eqnP : int Equality.axiom

val nat_eqMixin : int Equality.mixin_of

val nat_eqType : Equality.coq_type

val addn_rec : int -> int -> int

val addn : int -> int -> int

val subn_rec : int -> int -> int

val subn : int -> int -> int

val leq : int -> int -> bool

val iter : int -> ('a1 -> 'a1) -> 'a1 -> 'a1

val nat_of_bool : bool -> int

val odd0 : int -> bool

val double_rec : int -> int

val double0 : int -> int

val half : int -> int

val uphalf : int -> int

val size0 : 'a1 list -> int

val head : 'a1 -> 'a1 list -> 'a1

val behead : 'a1 list -> 'a1 list

val ncons : int -> 'a1 -> 'a1 list -> 'a1 list

val nseq : int -> 'a1 -> 'a1 list

val cat : 'a1 list -> 'a1 list -> 'a1 list

val rcons : 'a1 list -> 'a1 -> 'a1 list

val last : 'a1 -> 'a1 list -> 'a1

val belast : 'a1 -> 'a1 list -> 'a1 list

val all : 'a1 pred0 -> 'a1 list -> bool

val drop : int -> 'a1 list -> 'a1 list

val take : int -> 'a1 list -> 'a1 list

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

val zip : 'a1 list -> 'a2 list -> ('a1 * 'a2) list

val unzip1 : ('a1 * 'a2) list -> 'a1 list

val unzip2 : ('a1 * 'a2) list -> 'a2 list

val split_head : 'a1 -> 'a1 list -> 'a1 * 'a1 list

val lastd : 'a1 -> 'a1 list -> 'a1

val belastd : 'a1 list -> 'a1 list

val split_last : 'a1 -> 'a1 list -> 'a1 list * 'a1

type bits = bitseq

val b0 : bool

val b1 : bool

val zeros : int -> bits

val ones : int -> bits

val splitlsb : bits -> bool * bits

val splitmsb : bits -> bits * bool

val droplsb : bits -> bits

val dropmsb : bits -> bits

val joinlsb : 'a1 -> 'a1 list -> 'a1 list

val joinmsb : 'a1 list -> 'a1 -> 'a1 list

val lsb : bits -> bool

val msb : bits -> bool

val high : int -> bits -> bits

val low : int -> bits -> bits

val extract : int -> int -> bits -> bits

val slice : int -> int -> bits -> bits

val zext : int -> bits -> bits

val sext : int -> bits -> bits

val repeat : int -> 'a1 list -> 'a1 list

val invB : bits -> bits

val is_zero : bits -> bool

val to_nat0 : bits -> int

val from_nat : int -> int -> bits

val from_bool : int -> bool -> bits

val to_bool : bits -> bool

val to_N : bits -> n

val from_N : int -> n -> bits

val to_Zpos : bits -> z

val to_Zneg : bits -> z

val to_Z : bits -> z

val from_Zpos : int -> z -> bits

val from_Zneg : int -> z -> bits

val from_Z : int -> z -> bits

val char_to_nibble : char -> bits

val char_to_bit : char -> bool

val from_bin : char list -> bits

val from_hex : char list -> bits

val zpos_of_num_string_rec : z -> char list -> z

val zpos_of_num_string : char list -> z

val from_string : char list -> bits

val nibble_to_char : bits -> char

val append_nibble_on_string : bits -> char list -> char list

val to_hex : bits -> char list

val to_bin : bits -> char list

val extzip : 'a1 -> 'a2 -> 'a1 list -> 'a2 list -> ('a1 * 'a2) list

val lift : 'a1 -> ('a1 -> 'a1 -> 'a1) -> 'a1 list -> 'a1 list -> 'a1 list

val lift0 : (bool -> bool -> bool) -> bool list -> bool list -> bool list

val extzip0 : bool list -> bool list -> (bool * bool) list

val succB : bits -> bits

val predB : bits -> bits

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

val addB_ovf : bits -> bits -> bool

val sbbB : bool -> bits -> bits -> bool * bits

val subB : bits -> bits -> bits

val borrow_subB : bits -> bits -> bool

val saddo : bits -> bits -> bool

val ssubo : bits -> bits -> bool

val full_mul : bits -> bits -> bits

val mulB : bits -> bits -> bits

val umulo : bits -> bits -> bool

val smulo : bits -> bits -> bool

val ltB_lsb_zip : (bool * bool) list -> bool

val ltB_lsb : bits -> bits -> bool

val leB : bits -> bits -> bool

val gtB : bits -> bits -> bool

val geB : bits -> bits -> bool

val sltB : bits -> bits -> bool

val sleB : bits -> bits -> bool

val sgtB : bits -> bits -> bool

val sgeB : bits -> bits -> bool

val rolB1 : bits -> bits

val rolB : int -> bits -> bits

val rorB1 : bits -> bits

val rorB : int -> bits -> bits

val shrB1 : bits -> bits

val shrB : int -> bits -> bits

val shrBB : bits -> bits -> bits

val sarB1 : bits -> bits

val sarB : int -> bits -> bits

val sarBB : bits -> bits -> bits

val shlB1 : bits -> bits

val shlB : int -> bits -> bits

val shlBB : bits -> bits -> bits

val ucastB : bits -> int -> bits

val scastB : bits -> int -> bits

val udivB_rec : bits -> bits -> bits -> bits -> bits * bits

val udivB : bits -> bits -> bits * bits

val udivB' : bits -> bits -> bits

val uremB : bits -> bits -> bits

val absB : bits -> bits

val sdivB' : bits -> bits -> bits * bits

val sdivB : bits -> bits -> bits

val sremB : bits -> bits -> bits
