
(** This module provides extra functions. *)

val z_of_coqZ : Extracted.z -> Z.t
(** Converts Coq Z to ZArith Z. *)

val coqZ_of_z : Z.t -> Extracted.z
(** Converts Zarith Z to Coq positive. *)

val unsigned : Extracted.bits -> Z.t
(** Returns the unsigned value of a bit vector. *)

val signed : Extracted.bits -> Z.t
(** Returns the signed value of a bit vector. *)

val bits_of_z : int -> Z.t -> Extracted.bits
(** Returns the bit vector of a Zarith Z. *)

val string_of_bits : Extracted.bits -> string
(** Returns the string representation of a bit vector. MSB appears first. *)

val bits_of_binary : string -> Extracted.bits
(** Returns the bit vector represented as a binary string *)

val bits_of_hex : string -> Extracted.bits
(** Returns the bit vector represented as a hex string *)

val bits_of_num : string -> Extracted.bits
(** Returns the bit vector represented as a numeric string. The bit width of
    the result is minimal. If the numeric string is positive, the unsigned
    value of the bit vector corresponds to the numeric string. If the numeric
    string is negative, the signed value of the bit vector corresponds to the
    numeric string. *)

val umuljB : Extracted.bits -> Extracted.bits -> Extracted.bits
(** Unsigned full multiplication. *)

val smuljB : Extracted.bits -> Extracted.bits -> Extracted.bits
(** Signed full multiplication. *)

val umullB : Extracted.bits -> Extracted.bits -> Extracted.bits * Extracted.bits
(** Unsigned full multiplication. The first element of the result represents
    high bits. The first element of the result represents low bits. Raises
    Invalid_argument if the bit widths of the two inputs are different. *)

val smullB : Extracted.bits -> Extracted.bits -> Extracted.bits * Extracted.bits
(** Signed full multiplication. The first element of the result represents
    high bits. The first element of the result represents low bits. Raises
    Invalid_argument if the bit widths of the two inputs are different. *)

val usplB : Extracted.bits -> int -> Extracted.bits * Extracted.bits
(** Unsigned splitting. The results and the input have the same size. *)

val ssplB : Extracted.bits -> int -> Extracted.bits * Extracted.bits
(** Signed splitting. The results and the input have the same size. *)
