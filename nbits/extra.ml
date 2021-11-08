
let ztwo = Z.of_int 2

(* Converts Coq positive to Zarith Z. *)
let rec z_of_pos n =
  match n with
  | Extracted.XI m -> Z.add (Z.mul (z_of_pos m) ztwo) Z.one
  | Extracted.XO m -> Z.add (Z.mul (z_of_pos m) ztwo) Z.zero
  | Extracted.XH -> Z.one

(* Converts Coq Z to ZArith Z. *)
let z_of_coqZ n =
  match n with
  | Extracted.Z0 -> Z.zero
  | Extracted.Zpos p -> z_of_pos p
  | Extracted.Zneg p -> Z.neg (z_of_pos p)

(* Converts positive Zarith Z to Coq positive. *)
let rec pos_of_posZ n =
  if Z.equal n Z.one then Extracted.XH
  else let (q, r) = Z.ediv_rem n ztwo in
       let pq = pos_of_posZ q in
       if Z.equal r Z.zero then Extracted.XO pq else Extracted.XI pq

(* Converts Zarith Z to Coq positive. *)
let coqZ_of_z n =
  if Z.equal n Z.zero then Extracted.Z0
  else if Z.gt n Z.zero then Extracted.Zpos (pos_of_posZ n)
  else Extracted.Zneg (pos_of_posZ (Z.abs n))

(* Returns the unsigned value of a bit vector. *)
let unsigned bs =
  Extracted.foldr (fun b res -> Z.add (if b then Z.one else Z.zero) (Z.mul res ztwo)) Z.zero bs

let negative bs =
  Extracted.foldr (fun b res -> Z.add (if b then Z.zero else Z.one) (Z.mul res ztwo)) Z.zero bs

(* Returns the signed value of a bit vector. *)
let signed bs =
  let (bs0, b) = Extracted.splitmsb bs in
  if b then Z.neg (Z.succ (negative bs0)) else unsigned bs0

(* Returns the bit vector of a Zarith Z. *)
let bits_of_z w n = Extracted.from_Z w (coqZ_of_z n)

(* Returns the string representation of a bit vector. MSB appears first. *)
let string_of_bits bs = String.concat "" (List.rev_map (fun b -> if b then "1" else "0") bs)

let explode s = List.init (String.length s) (String.get s)

let bits_of_binary str = Extracted.from_bin (explode str)

let bits_of_hex str = Extracted.from_hex (explode str)

let bits_of_num str =
  let str = String.trim str in
  if String.length str <= 0 then []
  else if String.get str 0 = '-' then let str = String.trim (String.sub str 1 (String.length str - 1)) in
                                      let bs = Extracted.from_string (explode str) in
                                      if Extracted.msb bs == Extracted.b1 then Extracted.negB (Extracted.zext 1 bs)
                                      else Extracted.negB bs
  else Extracted.from_string (explode str)

(* Unsigned full multiplication. *)
let umuljB bs1 bs2 =
  let s1 = List.length bs1 in
  let s2 = List.length bs2 in
  if s1 = s2 then Extracted.mulB (Extracted.zext s1 bs1) (Extracted.zext s1 bs2)
  else raise (Invalid_argument ("Bit width mismatch in umuljB"))

(* Signed full multiplication. *)
let smuljB bs1 bs2 =
  let s1 = List.length bs1 in
  let s2 = List.length bs2 in
  if s1 = s2 then Extracted.mulB (Extracted.sext s1 bs1) (Extracted.sext s1 bs2)
  else raise (Invalid_argument ("Bit width mismatch in smuljB"))

(* Unsigned full multiplication. The first element of the result represents
   high bits. The first element of the result represents low bits. Raises
   Invalid_argument if the bit widths of the two inputs are different. *)
let umullB bs1 bs2 =
  let s1 = List.length bs1 in
  let bs = umuljB bs1 bs2 in
  (Extracted.high s1 bs, Extracted.low s1 bs)

(* Signed full multiplication. The first element of the result represents
   high bits. The first element of the result represents low bits. Raises
   Invalid_argument if the bit widths of the two inputs are different. *)
let smullB bs1 bs2 =
  let s1 = List.length bs1 in
  let bs = smuljB bs1 bs2 in
  (Extracted.high s1 bs, Extracted.low s1 bs)

(* Unsigned splitting. The results and the input have the same size. *)
let usplB bs n =
  let size = List.length bs in
  (Extracted.shrB n bs,
   Extracted.shrB (size - n) (Extracted.shlB (size - n) bs))

(* Signed splitting. The results and the input have the same size. *)
let ssplB bs n =
  let size = List.length bs in
  (Extracted.sarB n bs,
   Extracted.shrB (size - n) (Extracted.shlB (size - n) bs))
