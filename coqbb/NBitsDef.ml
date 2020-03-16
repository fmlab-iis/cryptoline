open Ascii
open BinInt
open Datatypes
open String0
open Seq
open Ssrbool
open Ssrnat

(** val split_head : 'a1 -> 'a1 list -> 'a1 * 'a1 list **)

let split_head d ls =
  ((head d ls), (behead ls))

(** val lastd : 'a1 -> 'a1 list -> 'a1 **)

let lastd d = function
| [] -> d
| hd :: tl -> last hd tl

(** val belastd : 'a1 list -> 'a1 list **)

let belastd = function
| [] -> []
| hd :: tl -> belast hd tl

(** val split_last : 'a1 -> 'a1 list -> 'a1 list * 'a1 **)

let split_last d ls =
  ((belastd ls), (lastd d ls))

type bits = bitseq

(** val b0 : bool **)

let b0 =
  false

(** val b1 : bool **)

let b1 =
  true

(** val zeros : nat -> bits **)

let zeros n =
  nseq n b0

(** val splitlsb : bits -> bool * bits **)

let splitlsb bs =
  split_head b0 bs

(** val splitmsb : bits -> bits * bool **)

let splitmsb bs =
  split_last b0 bs

(** val droplsb : bits -> bits **)

let droplsb bs =
  snd (splitlsb bs)

(** val dropmsb : bits -> bits **)

let dropmsb bs =
  fst (splitmsb bs)

(** val joinlsb : 'a1 -> 'a1 list -> 'a1 list **)

let joinlsb x x0 =
  x :: x0

(** val joinmsb : 'a1 list -> 'a1 -> 'a1 list **)

let joinmsb =
  rcons

(** val msb : bits -> bool **)

let msb bs =
  snd (splitmsb bs)

(** val high : nat -> bits -> bits **)

let high n bs =
  cat (drop (subn (size bs) n) bs) (zeros (subn n (size bs)))

(** val low : nat -> bits -> bits **)

let low n bs =
  cat (take n bs) (zeros (subn n (size bs)))

(** val extract : nat -> nat -> bits -> bits **)

let extract i j bs =
  high (addn (subn i j) (S O)) (low (addn i (S O)) bs)

(** val zext : nat -> bits -> bits **)

let zext n bs =
  cat bs (zeros n)

(** val sext : nat -> bits -> bits **)

let sext n bs =
  cat bs (nseq n (msb bs))

(** val to_nat : bits -> nat **)

let to_nat bs =
  foldr (fun b res -> addn (nat_of_bool b) (double res)) O bs

(** val from_nat : nat -> nat -> bits **)

let rec from_nat n x =
  match n with
  | O -> []
  | S m -> joinlsb (odd x) (from_nat m (half x))

(** val from_Zpos : nat -> int -> bits **)

let rec from_Zpos n x =
  match n with
  | O -> []
  | S m -> joinlsb (Z.odd x) (from_Zpos m (Z.div2 x))

(** val from_Zneg : nat -> int -> bits **)

let rec from_Zneg n x =
  match n with
  | O -> []
  | S m -> joinlsb (Z.even x) (from_Zneg m (Z.div2 x))

(** val from_Z : nat -> int -> bits **)

let from_Z n x =
  (fun f0 fp fn z -> if z=0 then f0 () else if z>0 then fp z else fn (-z))
    (fun _ -> zeros n)
    (fun _ -> from_Zpos n x)
    (fun _ -> from_Zneg n (Z.pred (Z.opp x)))
    x

(** val char_to_nibble : char -> bits **)

let char_to_nibble c =
  from_nat (S (S (S (S O))))
    (findex O (c::[])
      ('0'::('1'::('2'::('3'::('4'::('5'::('6'::('7'::('8'::('9'::('A'::('B'::('C'::('D'::('E'::('F'::('0'::('1'::('2'::('3'::('4'::('5'::('6'::('7'::('8'::('9'::('a'::('b'::('c'::('d'::('e'::('f'::[])))))))))))))))))))))))))))))))))

(** val char_to_bit : char -> bool **)

let char_to_bit c =
  is_left ((=) c '1')

(** val from_bin : char list -> bits **)

let rec from_bin = function
| [] -> []
| c::s0 -> joinmsb (from_bin s0) (char_to_bit c)

(** val from_hex : char list -> bits **)

let rec from_hex = function
| [] -> []
| c::s0 -> cat (from_hex s0) (char_to_nibble c)

(** val coq_Zpos_of_num_string_rec : int -> char list -> int **)

let rec coq_Zpos_of_num_string_rec res = function
| [] -> res
| c::s0 ->
  coq_Zpos_of_num_string_rec
    (Z.add (Z.mul res ((fun p->2*p) ((fun p->1+2*p) ((fun p->2*p) 1))))
      (Z.of_nat (subn (nat_of_ascii c) (nat_of_ascii '0')))) s0

(** val coq_Zpos_of_num_string : char list -> int **)

let coq_Zpos_of_num_string s =
  coq_Zpos_of_num_string_rec 0 s

(** val from_string : char list -> bits **)

let from_string s =
  let n = coq_Zpos_of_num_string s in
  from_Z (addn (Z.to_nat (Z.log2 n)) (S O)) n

(** val nibble_to_char : bits -> char **)

let nibble_to_char n =
  match get (to_nat n)
          ('0'::('1'::('2'::('3'::('4'::('5'::('6'::('7'::('8'::('9'::('A'::('B'::('C'::('D'::('E'::('F'::[])))))))))))))))) with
  | Some c -> c
  | None -> ' '

(** val append_nibble_on_string : bits -> char list -> char list **)

let append_nibble_on_string n s =
  append s ((nibble_to_char n)::[])

(** val to_hex : bits -> char list **)

let rec to_hex bs = match bs with
| [] -> []
| b2 :: l ->
  (match l with
   | [] -> append_nibble_on_string (cat bs (zeros (S (S (S O))))) []
   | b3 :: l0 ->
     (match l0 with
      | [] -> append_nibble_on_string (cat bs (zeros (S (S O)))) []
      | b4 :: l1 ->
        (match l1 with
         | [] -> append_nibble_on_string (cat bs (zeros (S O))) []
         | b5 :: tl ->
           append_nibble_on_string (b2 :: (b3 :: (b4 :: (b5 :: []))))
             (to_hex tl))))

(** val to_bin : bits -> char list **)

let rec to_bin = function
| [] -> []
| b :: bs0 -> append (to_bin bs0) (if b then '1'::[] else '0'::[])
