open BinPos
open Datatypes
open Decimal

module N =
 struct
  (** val succ : int -> int **)

  let succ = Pervasives.succ

  (** val add : int -> int -> int **)

  let add = (+)

  (** val mul : int -> int -> int **)

  let mul = ( * )

  (** val compare : int -> int -> comparison **)

  let compare = fun x y -> if x=y then Eq else if x<y then Lt else Gt

  (** val eqb : int -> int -> bool **)

  let rec eqb n m =
    (fun f0 fp n -> if n=0 then f0 () else fp n)
      (fun _ ->
      (fun f0 fp n -> if n=0 then f0 () else fp n)
        (fun _ -> true)
        (fun _ -> false)
        m)
      (fun p ->
      (fun f0 fp n -> if n=0 then f0 () else fp n)
        (fun _ -> false)
        (fun q -> Pos.eqb p q)
        m)
      n

  (** val ltb : int -> int -> bool **)

  let ltb x y =
    match compare x y with
    | Lt -> true
    | _ -> false

  (** val to_nat : int -> nat **)

  let to_nat a =
    (fun f0 fp n -> if n=0 then f0 () else fp n)
      (fun _ -> O)
      (fun p -> Pos.to_nat p)
      a

  (** val to_uint : int -> uint **)

  let to_uint n =
    (fun f0 fp n -> if n=0 then f0 () else fp n)
      (fun _ -> D0 Nil)
      (fun p -> Pos.to_uint p)
      n
 end
