
(** This module collects functions extracted from the Coq development
    of coq-nbits and some extra functions. *)

type bitseq = bool list
(** Type of bit vectors.
    The first element of the list is the least significant bit (LSB) of the
    bit vector. *)

type bits = bitseq
(** Alias of bitseq. *)

val size : bits -> int
(** [size bs] is the bit width of the bit vector [bs]. *)


(** {1 From Coq and mathcomp} *)

val take : int -> 'a list -> 'a list
(** [take n bs] is the first [n] elements of [bs]. *)

val drop : int -> 'a list -> 'a list
(** [drop n bs] is [bs] with the first [n] elements dropped. *)

type positive =
| XI of positive   (** *)
| XO of positive   (** *)
| XH               (** *)
(** Binary encoding of positive numbers. *)

type n =
| N0               (** 0 *)
| Npos of positive (** a positive number *)
(** Natural numbers. *)

type z =
| Z0               (** 0 *)
| Zpos of positive (** positive integers *)
| Zneg of positive (** negative integers *)
(** Integers. *)

val nseq : int -> 'a1 -> 'a1 list
(** [nseq n a] is a list of [a]. The size of the list is [n]. *)

val cat : 'a1 list -> 'a1 list -> 'a1 list
(** [cat l1 l2] is the concatenation of [l1] and [l2]. *)

val catrev : 'a1 list -> 'a1 list -> 'a1 list
(** [catrev l1 l2] is the reversal of [l1] followed by [l2]. *)

val rev : 'a1 list -> 'a1 list
(** [rev l] is the reversal of [l]. *)

val rcons : 'a1 list -> 'a1 -> 'a1 list
(** [rcons l x] is [l] followed by [x]. *)

val map : ('a1 -> 'a2) -> 'a1 list -> 'a2 list
(** [map f [a1; a2; ...; an]] is [[f a1; f a2; ...; f an]]. *)

val foldr : ('a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 list -> 'a2
(** [foldr f d [a1; a2; ...; an]] is [f a1 (f a2 (... (f an d) ...))]. *)


(** {1 Constants} *)

val b0 : bool
(** one-bit 0 *)

val b1 : bool
(** one-bit 1 *)


(** {1 Constructions} *)

val zeros : int -> bits
(** [zeros n] is a bit vector containing all 0's. The width of the bit vector is [n]. *)

val ones : int -> bits
(** [ones n] is a bit vector containing all 1's. The width of the bit vector is [n]. *)


(** {1 Low-level operations} *)

val lsb : bits -> bool
(** [lsb bs] is the LSB of [bs]. The LSB of an empty bit vector is 0. *)

val msb : bits -> bool
(** [msb bs] is the most significant bit (MSB) of [bs]. The MSB of an empty bit
    vector is 0. *)

val splitlsb : bits -> bool * bits
(** [splitlsb bs] is a pair of the LSB and the remaining bit vector. *)

val splitmsb : bits -> bits * bool
(** [splitmsb bs] is a pair (cs, m) where cs is [bs] excluding the MSB and m
    is the MSB of [bs]. *)

val droplsb : bits -> bits
(** [droplsb bs] is [bs] with the LSB dropped. *)

val dropmsb : bits -> bits
(** [dropmsb bs] is [bs] with the MSB dropped. *)

val joinlsb : 'a1 -> 'a1 list -> 'a1 list
(** [joinlsb b bs] adds [b] to [bs] as the LSB. *)

val joinmsb : 'a1 list -> 'a1 -> 'a1 list
(** [joinmsb bs b] adds [b] to [bs] as the MSB. *)

val high : int -> bits -> bits
(** [high n bs] is the [n] most significant bits of the bit vector [bs].
    If [n] is larger than the size of [bs], 0's will be inserted as LSB
    until the size reaches [n]. *)

val low : int -> bits -> bits
(** [low n bs] is the [n] least significant bits of the bit vector [bs].
    If [n] is larger than the size of [bs], 0's will be inserted as MSB
    until the size reaches [n]. *)

val extract : int -> int -> bits -> bits
(** [extract i j bs] is the bits of [bs] from position [i] to position [j].
    The position of the LSB of a bit vector is 0. The size of the result is
    (i - j + 1). If i <= j, an empty bit vector is returned. If i is greater
    then or equal to the size of bs, 0's will be inserted as MSB. *)

val slice : int -> int -> bits -> bits
(** [slice i n bs] is the bits of [bs] strating from position [i] and with size
    [n]. Basically [slice i n bs] = [extract i (i + n - 1) bs]. *)

val zext : int -> bits -> bits
(** [zext n bs] is the [n] zero extension of [bs]. *)

val sext : int -> bits -> bits
(** [sext n bs] is the [n] signed extension of [bs]. *)

val repeat : int -> 'a1 list -> 'a1 list
(** [repeat n bs] is the concatenation of [n] bit vectors [bs]. *)


(** {1 Bitwise operations} *)

val addb : bool -> bool -> bool
(** [addb b1 b2] adds bits [b1] and [b2]. *)

val xorb : bool -> bool -> bool
(** [xorb b1 b2] is one bit XOR. *)

val negb : bool -> bool
(** [negb b] is one bit NOT. *)

val succB : bits -> bits
(** [succB bs] is the successor of [bs]. *)

val predB : bits -> bits
(** [predB bs] is the predecessor of [bs]. *)

val invB : bits -> bits
(** [invB bs] is the bitwise inversion of [bs]. *)

val andB : bits -> bits -> bits
(** [andB bs1 bs2] is the bitwise AND of [bs1] and [bs2]. *)

val orB : bits -> bits -> bits
(** [orB bs1 bs2] is the bitwise OR of [bs1] and [bs2]. *)

val xorB : bits -> bits -> bits
(** [xorB bs1 bs2] is the bitwise XOR of [bs1] and [bs2]. *)


(** {1 Shifting and rotation} *)

val rolB1 : bits -> bits
(** [rolB1 bs] rotates [bs] left by one bit. *)

val rolB : int -> bits -> bits
(** [rolB n bs] rotates [bs] left by [n] bits. *)

val rorB1 : bits -> bits
(** [rorB1 bs] rotates [bs] right by one bit. *)

val rorB : int -> bits -> bits
(** [rorB n bs] rotates [bs] right by [n] bits. *)

val shrB1 : bits -> bits
(** [shrB1 bs] applies logical right shift to [bs] by one bit. *)

val shrB : int -> bits -> bits
(** [shrB n bs] applies logical right shift to [bs] by [n] bits. *)

val shrBB : bits -> bits -> bits
(** [shrBB bs ns] applies logical right shift to [bs] by [ns] bits. Note that
    the number of shifting is represented as a bit vector. *)

val sarB1 : bits -> bits
(** [sarB1 bs] applies arithmetic right shift to [bs] by one bit. *)

val sarB : int -> bits -> bits
(** [sarB n bs] applies arithmetic right shift to [bs] by [n] bits. *)

val sarBB : bits -> bits -> bits
(** [sarBB bs ns] applies arithmetic right shift to [bs] by [ns] bits. Note that
    the number of shifting is represented as a bit vector. *)

val shlB1 : bits -> bits
(** [shlB1 bs] applies left shift to [bs] by one bit. *)

val shlB : int -> bits -> bits
(** [shlB n bs] applies left shift to [bs] by [n] bits. *)

val shlBB : bits -> bits -> bits
(** [shlBB bs ns] applies left shift to [bs] by [ns] bits. Note that
    the number of shifting is represented as a bit vector. *)


(** {1 Arithmetic operations} *)

val negB : bits -> bits
(** [negB bs] is the negation of [bs]. *)

val adcB : bool -> bits -> bits -> bool * bits
(** [adcB b bs1 bs2] is addition with carry. *)

val addB : bits -> bits -> bits
(** [addB bs1 bs2] is the addition of [bs1] and [bs2]. *)

val carry_addB : bits -> bits -> bool
(** [carry_addB bs1 bs2] is the carry of the addition of [bs1] and [bs2]. *)

val sbbB : bool -> bits -> bits -> bool * bits
(** [sbbB b bs1 bs2] is subtraction with borrow. *)

val subB : bits -> bits -> bits
(** [subB bs1 bs2] is [bs1] minus [bs2]. *)

val borrow_subB : bits -> bits -> bool
(** [borrow_subB bs1 bs2] is the borrow in subtracting [bs2] from [bs1]. *)

val uaddo : bits -> bits -> bool
(** [uaddo bs1 bs2] is [true] if the unsigned addition of [bs1] and [bs2] causes overflow. *)

val usubo : bits -> bits -> bool
(** [usubo bs1 bs2] is [true] if the unsigned subtraction of [bs2] from [bs1] causes underflow. *)

val saddo : bits -> bits -> bool
(** [saddo bs1 bs2] is [true] if the signed addition of [bs1] and [bs2] causes overflow. *)

val ssubo : bits -> bits -> bool
(** [ssubo bs1 bs2] is [true] if the signed subtraction of [bs2] from [bs1] causes underflow. *)

val full_mul : bits -> bits -> bits
(** [full_mul bs1 bs2] is the full multiplication of [bs1] and [bs2]. *)

val mulB : bits -> bits -> bits
(** [mulB bs1 bs2] is the half multiplication of [bs1] and [bs2]. *)

val umulo : bits -> bits -> bool
(** [umulo bs1 bs2] is [true] if the unsigned multiplication of [bs1] and [bs2] causes overflow. *)

val smulo : bits -> bits -> bool
(** [smulo bs1 bs2] is [true] if the signed multiplication of [bs1] and [bs2] causes overflow. *)

val udivB_eucl : bits -> bits -> bits * bits
(** [udivB_eucl n m] is the unsigned Euclidean division [n / m]. The first
    element of the returned pair is the quotient while the second element
    is the remainder. *)

val udivB : bits -> bits -> bits
(** [udivB n m] is the quotient of [udiv_eucl n m]. *)

val uremB : bits -> bits -> bits
(** [uremB n m] is the remainder of [udiv_eucl n m]. *)

val sdivB_eucl : bits -> bits -> bits * bits
(** [sdivB_eucl n m] is the round-Toward-Zero Euclidean division. *)

val sdivB : bits -> bits -> bits
(** [sdivB n m] is the quotient of [sdivB_eucl n m]. *)

val sremB : bits -> bits -> bits
(** [sremB n m] is the 2's complement signed remainder (sign follows dividend). *)

val smodB : bits -> bits -> bits
(** [smodB n m] is the 2's complement signed remainder (sign follows divisor). *)


(** {1 Comparisons} *)

val ltB : bits -> bits -> bool
(** Unsigned less than. *)

val leB : bits -> bits -> bool
(** Unsigned less than or equal to. *)

val gtB : bits -> bits -> bool
(** Unsigned greater than. *)

val geB : bits -> bits -> bool
(** Unsigned greater than or equal to. *)

val sltB : bits -> bits -> bool
(** Signed less than. *)

val sleB : bits -> bits -> bool
(** Signed less than or equal to. *)

val sgtB : bits -> bits -> bool
(** Signed greater than. *)

val sgeB : bits -> bits -> bool
(** Signed greater than or equal to. *)

val is_zero : bits -> bool
(** Tests if a bit vector is all 0's. *)


(** {1 Conversions} *)

val to_nat : bits -> int
(** [to_nat bs] is the unsigned value of [bs]. *)

val from_nat : int -> int -> bits
(** [from_nat w n] is a bit vector bs of size [w]. The unsigned value
    of bs is [n] if n >= 0 and 0 < 2{^w}. *)

val from_bool : int -> bool -> bits
(** Converts a bool to a bit vector. *)

val to_bool : bits -> bool
(** [to_bool bs] is [true] if [bs] is not all 0's *)

val to_coqN : bits -> n
(** The unsigned value of a bit vector. The value is represented by Coq N, which
    is an unbounded binary encoding. *)

val from_coqN : int -> n -> bits
(** Returns the bit vector representation of a Coq N. *)

val to_coqZ : bits -> z
(** The signed value of a bit vector. The value is represented by Coq Z, which
    is an unbounded binary encoding. *)

val from_coqZ : int -> z -> bits
(** Returns the bit vector representation of a Coq Z. *)

val from_bin : char list -> bits
(** Converts a list of chars to a bit vector. The char '1' represents bit 1.
    All other chars represent bit 0. The first element of the list corresponds
    to MSB. *)

val from_hex : char list -> bits
(** Converts a list of chars to a bit vector. Each char represents a hex
    digit. The first element of the list corresponds to the most significant
    4 bits. *)

val from_chars : char list -> bits
(** Converts a positive number represented as a char list to a bit vector. The
    char at position 0 represents the MSB. *)

val to_hex : bits -> char list
(** Returns the hexadecimal string representation of a bit vector *)

val to_bin : bits -> char list
(** Returns the binary string representation of a bit vector *)


(** {1 Casting} *)

val ucastB : bits -> int -> bits
(** Casts an unsigned bit vector to an unsigned/signed bit vector of another size *)

val scastB : bits -> int -> bits
(** Casts a signed bit vector to an unsigned/signed bit vector of another size *)


(** {1 Extras} *)

val z_of_coqZ : z -> Z.t
(** Converts Coq Z to ZArith Z. *)

val coqZ_of_z : Z.t -> z
(** Converts Zarith Z to Coq positive. *)

val unsigned : bits -> Z.t
(** Returns the unsigned value of a bit vector. *)

val signed : bits -> Z.t
(** Returns the signed value of a bit vector. *)

val bits_of_z : int -> Z.t -> bits
(** Returns the bit vector of a Zarith Z. *)

val string_of_bits : bits -> string
(** Returns the string representation of a bit vector. MSB appears first. *)

val bits_of_binary : string -> bits
(** Returns the bit vector represented as a binary string *)

val bits_of_hex : string -> bits
(** Returns the bit vector represented as a hex string *)

val bits_of_num : string -> bits
(** Returns the bit vector represented as a numeric string. The bit width of
    the result is minimal. If the numeric string is positive, the unsigned
    value of the bit vector corresponds to the numeric string. If the numeric
    string is negative, the signed value of the bit vector corresponds to the
    numeric string. *)

val umuljB : bits -> bits -> bits
(** Unsigned full multiplication. *)

val smuljB : bits -> bits -> bits
(** Signed full multiplication. *)

val umullB : bits -> bits -> bits * bits
(** Unsigned full multiplication. The first element of the result represents
    high bits. The first element of the result represents low bits. Raises
    Invalid_argument if the bit widths of the two inputs are different. *)

val smullB : bits -> bits -> bits * bits
(** Signed full multiplication. The first element of the result represents
    high bits. The first element of the result represents low bits. Raises
    Invalid_argument if the bit widths of the two inputs are different. *)

val usplB : bits -> int -> bits * bits
(** Unsigned splitting. The results and the input have the same size. *)

val ssplB : bits -> int -> bits * bits
(** Signed splitting. The results and the input have the same size. *)
