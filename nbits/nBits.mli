
(* Type of bit vectors.
   The first element of the list is the least significant bit (LSB) of the
   bit vector. *)
type bitseq = bool list

type bits = bitseq

val size : bits -> int


(** From Extracted *)

(* From Coq and mathcomp *)

val take : int -> 'a list -> 'a list
val drop : int -> 'a list -> 'a list

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

val nseq : int -> 'a1 -> 'a1 list
val cat : 'a1 list -> 'a1 list -> 'a1 list
val catrev : 'a1 list -> 'a1 list -> 'a1 list
val rev : 'a1 list -> 'a1 list
val rcons : 'a1 list -> 'a1 -> 'a1 list
val map : ('a1 -> 'a2) -> 'a1 list -> 'a2 list
val foldr : ('a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 list -> 'a2


(* Constants *)

val b0 : bool
val b1 : bool


(* Constructions *)

(* `zeros n` creates a size n bit vector containing all 0's. *)
val zeros : int -> bits

(* `zeros n` creates a size n bit vector containing all 1's. *)
val ones : int -> bits


(* Low-level operations *)

(* Returns the LSB. The LSB of an empty bit vector is 0. *)
val lsb : bits -> bool

(* Returns the MSB. The MSB of an empty bit vector is 0. *)
val msb : bits -> bool

(* Splits the LSB. *)
val splitlsb : bits -> bool * bits

(* Splits the most significant bit (MSB). *)
val splitmsb : bits -> bits * bool

(* Remove the LSB. *)
val droplsb : bits -> bits

(* Remove the MSB. *)
val dropmsb : bits -> bits

(* Add a bit as the LSB. *)
val joinlsb : 'a1 -> 'a1 list -> 'a1 list

(* Add a bit as the MSB. *)
val joinmsb : 'a1 list -> 'a1 -> 'a1 list

(* `high n bs` returns the n most significant bits of the bit vector bs.
   If n is larger than the size of bs, 0's will be inserted as LSB until the
   size reaches n. *)
val high : int -> bits -> bits

(* `low n bs` returns the n least significant bits of the bit vector bs.
   If n is larger than the size of bs, 0's will be inserted as MSB until the
   size reaches n. *)
val low : int -> bits -> bits

(* `extract i j bs` returns the bits from position i to position j.
   The position of the LSB of a bit vector is 0. The size of the result is
   (i - j + 1). If i <= j, an empty bit vector is returned. If i is greater
   then or equal to the size of bs, 0's will be inserted as MSB.
   *)
val extract : int -> int -> bits -> bits

(* `slice i n bs` extracts the bits strating from position i and with size n.
   Basically `slice i n bs` = `extract i (i + n - 1) bs`. *)
val slice : int -> int -> bits -> bits

(* Performs zero extension. *)
val zext : int -> bits -> bits

(* Performs sign extension. *)
val sext : int -> bits -> bits

(* `repeat n bs` repeats a bit vector n times. *)
val repeat : int -> 'a1 list -> 'a1 list


(* Bitwise operations *)

(* One bit addition *)
val addb : bool -> bool -> bool

(* One bit exclusive or *)
val xorb : bool -> bool -> bool

(* One bit negation *)
val negb : bool -> bool

(* The successor of a bit vector *)
val succB : bits -> bits

(* The predecessor of a bit vector *)
val predB : bits -> bits

(* Bitwise inversion of a bit vector *)
val invB : bits -> bits

(* Bitwise and operation *)
val andB : bits -> bits -> bits

(* Bitwise or operation *)
val orB : bits -> bits -> bits

(* Bitwise xor operation *)
val xorB : bits -> bits -> bits


(* Shifting and rotation *)

(* Rotates a bit vector left by one bit *)
val rolB1 : bits -> bits

(* Left rotation of a bit vector *)
val rolB : int -> bits -> bits

(* Rotates a bit vector right by one bit *)
val rorB1 : bits -> bits

(* Right rotation of a bit vector *)
val rorB : int -> bits -> bits

(* Logical right shift of a bit vector by one bit *)
val shrB1 : bits -> bits

(* Logical right shift of a bit vector *)
val shrB : int -> bits -> bits

(* Logical right shift of a bit vector. The number of shifting is
   represented as a bit vector. *)
val shrBB : bits -> bits -> bits

(* Arithmetic right shift of a bit vector by one bit *)
val sarB1 : bits -> bits

(* Arithmetic right shift of a bit vector *)
val sarB : int -> bits -> bits

(* Arithmetic right shift of a bit vector. The number of shifting is
   represented as a bit vector. *)
val sarBB : bits -> bits -> bits

(* Left shift of a bit vector by one bit *)
val shlB1 : bits -> bits

(* Left shift of a bit vector *)
val shlB : int -> bits -> bits

(* Left shift of a bit vector. The number of shifting is represented as
   a bit vector. *)
val shlBB : bits -> bits -> bits


(* Arithmetic operations *)

(* Negation *)
val negB : bits -> bits

(* Addition with carry *)
val adcB : bool -> bits -> bits -> bool * bits

(* Addition *)
val addB : bits -> bits -> bits

(* Carry of addition *)
val carry_addB : bits -> bits -> bool

(* Subtraction with borrow *)
val sbbB : bool -> bits -> bits -> bool * bits

(* Subtraction *)
val subB : bits -> bits -> bits

(* Borrow of subtraction *)
val borrow_subB : bits -> bits -> bool

(* Overflow of unsigned addition *)
val uaddo : bits -> bits -> bool

(* Underflow of unsigned subtraction *)
val usubo : bits -> bits -> bool

(* Overflow of signed addition *)
val saddo : bits -> bits -> bool

(* Underflow of signed subtraction *)
val ssubo : bits -> bits -> bool

(* Unsigned full multiplication *)
val full_mul : bits -> bits -> bits

(* Multiplication *)
val mulB : bits -> bits -> bits

(* Overflow of unsigned multiplication *)
val umulo : bits -> bits -> bool

(* Overflow of signed multiplication *)
val smulo : bits -> bits -> bool

(* Unsigned Euclidean division.  *)
val udivB_eucl : bits -> bits -> bits * bits

(* Unsigned division.  *)
val udivB : bits -> bits -> bits

(* Unsigned remainder.  *)
val uremB : bits -> bits -> bits

(* Round-Toward-Zero Euclidean division *)
val sdivB_eucl : bits -> bits -> bits * bits

(* Division in Round-Toward-Zero Euclidean division *)
val sdivB : bits -> bits -> bits

(* Remainder in Round-Toward-Zero Euclidean division *)
val sremB : bits -> bits -> bits


(* Comparisons *)

(* Unsigned less than *)
val ltB : bits -> bits -> bool

(* Unsigned less than or equal to *)
val leB : bits -> bits -> bool

(* Unsigned greater than *)
val gtB : bits -> bits -> bool

(* Unsigned greater than or equal to *)
val geB : bits -> bits -> bool

(* Signed less than *)
val sltB : bits -> bits -> bool

(* Signed less than or equal to *)
val sleB : bits -> bits -> bool

(* Signed greater than *)
val sgtB : bits -> bits -> bool

(* Signed greater than or equal to *)
val sgeB : bits -> bits -> bool

(* Tests if a bit vector is all 0's *)
val is_zero : bits -> bool


(* Conversions *)

(* The unsigned value of a bit vector*)
val to_nat : bits -> int

(* `from_nat w n` returns a bit vector bs of size w. The unsigned value
   of bs is n if n >= 0 and 0 < 2^w. *)
val from_nat : int -> int -> bits

(* Converts a bool to a bit vector *)
val from_bool : int -> bool -> bits

(* `to_bool bs` is true if bs is not all 0's *)
val to_bool : bits -> bool

(* The unsigned value of a bit vector. The value is represented by Coq N, which
   is an unbounded binary encoding. *)
val to_coqN : bits -> n

(* Returns the bit vector representation of a Coq N. *)
val from_coqN : int -> n -> bits

(* The signed value of a bit vector. The value is represented by Coq Z, which
   is an unbounded binary encoding. *)
val to_coqZ : bits -> z

(* Returns the bit vector representation of a Coq Z. *)
val from_coqZ : int -> z -> bits

(* Converts a list of chars to a bit vector. The char '1' represents bit 1.
   All other chars represent bit 0. The first element of the list corresponds
   to MSB. *)
val from_bin : char list -> bits

(* Converts a list of chars to a bit vector. Each char represents a hex
   digit. The first element of the list corresponds to the most significant
   4 bits. *)
val from_hex : char list -> bits

(* Converts a positive number represented as a char list to a bit vector. The
   char at position 0 represents the MSB. *)
val from_chars : char list -> bits

(* Returns the hexadecimal string representation of a bit vector *)
val to_hex : bits -> char list

(* Returns the binary string representation of a bit vector *)
val to_bin : bits -> char list


(* Casting *)

(* Casts an unsigned bit vector to an unsigned/signed bit vector of another size *)
val ucastB : bits -> int -> bits

(* Casts a signed bit vector to an unsigned/signed bit vector of another size *)
val scastB : bits -> int -> bits



(** From Extra *)

(* Converts Coq Z to ZArith Z. *)
val z_of_coqZ : z -> Z.t

(* Converts Zarith Z to Coq positive. *)
val coqZ_of_z : Z.t -> z

(* Returns the unsigned value of a bit vector. *)
val unsigned : bits -> Z.t

(* Returns the signed value of a bit vector. *)
val signed : bits -> Z.t

(* Returns the bit vector of a Zarith Z. *)
val bits_of_z : int -> Z.t -> bits

(* Returns the string representation of a bit vector. MSB appears first. *)
val string_of_bits : bits -> string

(* Returns the bit vector represented as a binary string *)
val bits_of_binary : string -> bits

(* Returns the bit vector represented as a hex string *)
val bits_of_hex : string -> bits

(* Returns the bit vector represented as a numeric string. The bit width of
   the result is minimal. If the numeric string is positive, the unsigned
   value of the bit vector corresponds to the numeric string. If the numeric
   string is negative, the signed value of the bit vector corresponds to the
   numeric string. *)
val bits_of_num : string -> bits

(* Unsigned full multiplication. *)
val umuljB : bits -> bits -> bits

(* Signed full multiplication. *)
val smuljB : bits -> bits -> bits

(* Unsigned full multiplication. The first element of the result represents
   high bits. The first element of the result represents low bits. Raises
   Invalid_argument if the bit widths of the two inputs are different. *)
val umullB : bits -> bits -> bits * bits

(* Signed full multiplication. The first element of the result represents
   high bits. The first element of the result represents low bits. Raises
   Invalid_argument if the bit widths of the two inputs are different. *)
val smullB : bits -> bits -> bits * bits

(* Unsigned splitting. The results and the input have the same size. *)
val usplB : bits -> int -> bits * bits

(* Signed splitting. The results and the input have the same size. *)
val ssplB : bits -> int -> bits * bits
