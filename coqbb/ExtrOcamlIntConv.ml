open Datatypes

(** val int_of_nat : nat -> int **)

let int_of_nat =
  let rec loop acc = function
  | O -> acc
  | S n0 -> loop (succ acc) n0
  in loop 0

(** val int_of_pos : int -> int **)

let rec int_of_pos p =
  (fun f2p1 f2p f1 p ->
  if p<=1 then f1 () else if p mod 2 = 0 then f2p (p/2) else f2p1 (p/2))
    (fun p0 -> succ (2 * (int_of_pos p0)))
    (fun p0 -> 2 * (int_of_pos p0))
    (fun _ -> succ 0)
    p

(** val int_of_n : int -> int **)

let rec int_of_n n =
  (fun f0 fp n -> if n=0 then f0 () else fp n)
    (fun _ -> 0)
    (fun p -> int_of_pos p)
    n

(** val int_natlike_rec : 'a1 -> ('a1 -> 'a1) -> int -> 'a1 **)

let int_natlike_rec = fun fO fS ->
 let rec loop acc i = if i <= 0 then acc else loop (fS acc) (i-1)
 in loop fO

(** val nat_of_int : int -> nat **)

let nat_of_int =
  int_natlike_rec O (fun x -> S x)

(** val int_poslike_rec :
    'a1 -> ('a1 -> 'a1) -> ('a1 -> 'a1) -> int -> 'a1 **)

let int_poslike_rec = fun f1 f2x f2x1 ->
 let rec loop i = if i <= 1 then f1 else
  if i land 1 = 0 then f2x (loop (i lsr 1)) else f2x1 (loop (i lsr 1))
 in loop

(** val pos_of_int : int -> int **)

let pos_of_int =
  int_poslike_rec 1 (fun x -> (fun p->2*p) x) (fun x -> (fun p->1+2*p) x)

(** val int_zlike_case : 'a1 -> (int -> 'a1) -> (int -> 'a1) -> int -> 'a1 **)

let int_zlike_case = fun f0 fpos fneg i ->
 if i = 0 then f0 else if i>0 then fpos i else fneg (-i)

(** val n_of_int : int -> int **)

let n_of_int =
  int_zlike_case 0 (fun i -> (pos_of_int i)) (fun _ -> 0)
