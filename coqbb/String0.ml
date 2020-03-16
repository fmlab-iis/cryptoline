open Datatypes

(** val append : char list -> char list -> char list **)

let rec append s1 s2 =
  match s1 with
  | [] -> s2
  | c::s1' -> c::(append s1' s2)

(** val get : nat -> char list -> char option **)

let rec get n = function
| [] -> None
| c::s' -> (match n with
            | O -> Some c
            | S n' -> get n' s')

(** val prefix : char list -> char list -> bool **)

let rec prefix s1 s2 =
  match s1 with
  | [] -> true
  | a::s1' ->
    (match s2 with
     | [] -> false
     | b::s2' -> if (=) a b then prefix s1' s2' else false)

(** val index : nat -> char list -> char list -> nat option **)

let rec index n s1 s2 = match s2 with
| [] ->
  (match n with
   | O -> (match s1 with
           | [] -> Some O
           | _::_ -> None)
   | S _ -> None)
| _::s2' ->
  (match n with
   | O ->
     if prefix s1 s2
     then Some O
     else (match index O s1 s2' with
           | Some n0 -> Some (S n0)
           | None -> None)
   | S n' ->
     (match index n' s1 s2' with
      | Some n0 -> Some (S n0)
      | None -> None))

(** val findex : nat -> char list -> char list -> nat **)

let findex n s1 s2 =
  match index n s1 s2 with
  | Some n0 -> n0
  | None -> O
