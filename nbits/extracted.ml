
type __ = Obj.t
let __ = let rec f _ = Obj.repr f in Obj.repr f

(** val xorb : bool -> bool -> bool **)

let xorb b2 b3 =
  if b2 then if b3 then false else true else b3

(** val negb : bool -> bool **)

let negb = function
| true -> false
| false -> true

(** val fst : ('a1 * 'a2) -> 'a1 **)

let fst = function
| (x, _) -> x

(** val snd : ('a1 * 'a2) -> 'a2 **)

let snd = function
| (_, y) -> y

type comparison =
| Eq
| Lt
| Gt

module Coq__1 = struct
 (** val add : int -> int -> int **)let rec add = (+)
end
include Coq__1

(** val sub : int -> int -> int **)

let rec sub = fun n m -> Pervasives.max 0 (n-m)

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

module Nat =
 struct
  (** val pred : int -> int **)

  let pred n0 =
    (fun fO fS n -> if n=0 then fO () else fS (n-1))
      (fun _ -> n0)
      (fun u -> u)
      n0

  (** val compare : int -> int -> comparison **)

  let rec compare = fun n m -> if n=m then Eq else if n<m then Lt else Gt

  (** val log2_iter : int -> int -> int -> int -> int **)

  let rec log2_iter k p q r =
    (fun fO fS n -> if n=0 then fO () else fS (n-1))
      (fun _ -> p)
      (fun k' ->
      (fun fO fS n -> if n=0 then fO () else fS (n-1))
        (fun _ ->
        log2_iter k' (Pervasives.succ p) (Pervasives.succ q) q)
        (fun r' -> log2_iter k' p (Pervasives.succ q) r')
        r)
      k

  (** val log2 : int -> int **)

  let log2 n0 =
    log2_iter (pred n0) 0 (Pervasives.succ 0) 0

  (** val log2_up : int -> int **)

  let log2_up a =
    match compare (Pervasives.succ 0) a with
    | Lt -> Pervasives.succ (log2 (pred a))
    | _ -> 0
 end

module Pos =
 struct
  type mask =
  | IsNul
  | IsPos of positive
  | IsNeg
 end

module Coq_Pos =
 struct
  (** val succ : positive -> positive **)

  let rec succ = function
  | XI p -> XO (succ p)
  | XO p -> XI p
  | XH -> XO XH

  (** val add : positive -> positive -> positive **)

  let rec add x y =
    match x with
    | XI p ->
      (match y with
       | XI q -> XO (add_carry p q)
       | XO q -> XI (add p q)
       | XH -> XO (succ p))
    | XO p ->
      (match y with
       | XI q -> XI (add p q)
       | XO q -> XO (add p q)
       | XH -> XI p)
    | XH -> (match y with
             | XI q -> XO (succ q)
             | XO q -> XI q
             | XH -> XO XH)

  (** val add_carry : positive -> positive -> positive **)

  and add_carry x y =
    match x with
    | XI p ->
      (match y with
       | XI q -> XI (add_carry p q)
       | XO q -> XO (add_carry p q)
       | XH -> XI (succ p))
    | XO p ->
      (match y with
       | XI q -> XO (add_carry p q)
       | XO q -> XI (add p q)
       | XH -> XO (succ p))
    | XH ->
      (match y with
       | XI q -> XI (succ q)
       | XO q -> XO (succ q)
       | XH -> XI XH)

  (** val pred_double : positive -> positive **)

  let rec pred_double = function
  | XI p -> XI (XO p)
  | XO p -> XI (pred_double p)
  | XH -> XH

  type mask = Pos.mask =
  | IsNul
  | IsPos of positive
  | IsNeg

  (** val succ_double_mask : mask -> mask **)

  let succ_double_mask = function
  | IsNul -> IsPos XH
  | IsPos p -> IsPos (XI p)
  | IsNeg -> IsNeg

  (** val double_mask : mask -> mask **)

  let double_mask = function
  | IsPos p -> IsPos (XO p)
  | x0 -> x0

  (** val double_pred_mask : positive -> mask **)

  let double_pred_mask = function
  | XI p -> IsPos (XO (XO p))
  | XO p -> IsPos (XO (pred_double p))
  | XH -> IsNul

  (** val sub_mask : positive -> positive -> mask **)

  let rec sub_mask x y =
    match x with
    | XI p ->
      (match y with
       | XI q -> double_mask (sub_mask p q)
       | XO q -> succ_double_mask (sub_mask p q)
       | XH -> IsPos (XO p))
    | XO p ->
      (match y with
       | XI q -> succ_double_mask (sub_mask_carry p q)
       | XO q -> double_mask (sub_mask p q)
       | XH -> IsPos (pred_double p))
    | XH -> (match y with
             | XH -> IsNul
             | _ -> IsNeg)

  (** val sub_mask_carry : positive -> positive -> mask **)

  and sub_mask_carry x y =
    match x with
    | XI p ->
      (match y with
       | XI q -> succ_double_mask (sub_mask_carry p q)
       | XO q -> double_mask (sub_mask p q)
       | XH -> IsPos (pred_double p))
    | XO p ->
      (match y with
       | XI q -> double_mask (sub_mask_carry p q)
       | XO q -> succ_double_mask (sub_mask_carry p q)
       | XH -> double_pred_mask p)
    | XH -> IsNeg

  (** val mul : positive -> positive -> positive **)

  let rec mul x y =
    match x with
    | XI p -> add y (XO (mul p y))
    | XO p -> XO (mul p y)
    | XH -> y

  (** val div2 : positive -> positive **)

  let div2 = function
  | XI p0 -> p0
  | XO p0 -> p0
  | XH -> XH

  (** val div2_up : positive -> positive **)

  let div2_up = function
  | XI p0 -> succ p0
  | XO p0 -> p0
  | XH -> XH

  (** val size : positive -> positive **)

  let rec size = function
  | XI p0 -> succ (size p0)
  | XO p0 -> succ (size p0)
  | XH -> XH

  (** val compare_cont : comparison -> positive -> positive -> comparison **)

  let rec compare_cont r x y =
    match x with
    | XI p ->
      (match y with
       | XI q -> compare_cont r p q
       | XO q -> compare_cont Gt p q
       | XH -> Gt)
    | XO p ->
      (match y with
       | XI q -> compare_cont Lt p q
       | XO q -> compare_cont r p q
       | XH -> Gt)
    | XH -> (match y with
             | XH -> r
             | _ -> Lt)

  (** val compare : positive -> positive -> comparison **)

  let compare =
    compare_cont Eq

  (** val iter_op : ('a1 -> 'a1 -> 'a1) -> positive -> 'a1 -> 'a1 **)

  let rec iter_op op0 p a =
    match p with
    | XI p0 -> op0 a (iter_op op0 p0 (op0 a a))
    | XO p0 -> iter_op op0 p0 (op0 a a)
    | XH -> a

  (** val to_nat : positive -> int **)

  let to_nat x =
    iter_op Coq__1.add x (Pervasives.succ 0)

  (** val of_succ_nat : int -> positive **)

  let rec of_succ_nat n0 =
    (fun fO fS n -> if n=0 then fO () else fS (n-1))
      (fun _ -> XH)
      (fun x -> succ (of_succ_nat x))
      n0
 end

module N =
 struct
  (** val succ_double : n -> n **)

  let succ_double = function
  | N0 -> Npos XH
  | Npos p -> Npos (XI p)

  (** val double : n -> n **)

  let double = function
  | N0 -> N0
  | Npos p -> Npos (XO p)

  (** val add : n -> n -> n **)

  let add n0 m =
    match n0 with
    | N0 -> m
    | Npos p -> (match m with
                 | N0 -> n0
                 | Npos q -> Npos (Coq_Pos.add p q))

  (** val sub : n -> n -> n **)

  let sub n0 m =
    match n0 with
    | N0 -> N0
    | Npos n' ->
      (match m with
       | N0 -> n0
       | Npos m' ->
         (match Coq_Pos.sub_mask n' m' with
          | Coq_Pos.IsPos p -> Npos p
          | _ -> N0))

  (** val mul : n -> n -> n **)

  let mul n0 m =
    match n0 with
    | N0 -> N0
    | Npos p -> (match m with
                 | N0 -> N0
                 | Npos q -> Npos (Coq_Pos.mul p q))

  (** val compare : n -> n -> comparison **)

  let compare n0 m =
    match n0 with
    | N0 -> (match m with
             | N0 -> Eq
             | Npos _ -> Lt)
    | Npos n' -> (match m with
                  | N0 -> Gt
                  | Npos m' -> Coq_Pos.compare n' m')

  (** val leb : n -> n -> bool **)

  let leb x y =
    match compare x y with
    | Gt -> false
    | _ -> true

  (** val even : n -> bool **)

  let even = function
  | N0 -> true
  | Npos p -> (match p with
               | XO _ -> true
               | _ -> false)

  (** val odd : n -> bool **)

  let odd n0 =
    negb (even n0)

  (** val pos_div_eucl : positive -> n -> n * n **)

  let rec pos_div_eucl a b =
    match a with
    | XI a' ->
      let (q, r) = pos_div_eucl a' b in
      let r' = succ_double r in
      if leb b r' then ((succ_double q), (sub r' b)) else ((double q), r')
    | XO a' ->
      let (q, r) = pos_div_eucl a' b in
      let r' = double r in
      if leb b r' then ((succ_double q), (sub r' b)) else ((double q), r')
    | XH ->
      (match b with
       | N0 -> (N0, (Npos XH))
       | Npos p -> (match p with
                    | XH -> ((Npos XH), N0)
                    | _ -> (N0, (Npos XH))))

  (** val div_eucl : n -> n -> n * n **)

  let div_eucl a b =
    match a with
    | N0 -> (N0, N0)
    | Npos na -> (match b with
                  | N0 -> (N0, a)
                  | Npos _ -> pos_div_eucl na b)

  (** val div : n -> n -> n **)

  let div a b =
    fst (div_eucl a b)

  (** val to_nat : n -> int **)

  let to_nat = function
  | N0 -> 0
  | Npos p -> Coq_Pos.to_nat p

  (** val b2n : bool -> n **)

  let b2n = function
  | true -> Npos XH
  | false -> N0
 end

(** val n_of_digits : bool list -> n **)

let rec n_of_digits = function
| [] -> N0
| b :: l' ->
  N.add (if b then Npos XH else N0) (N.mul (Npos (XO XH)) (n_of_digits l'))

(** val n_of_ascii : char -> n **)

let n_of_ascii a =
  (* If this appears, you're using Ascii internals. Please don't *)
 (fun f c ->
  let n = Char.code c in
  let h i = (n land (1 lsl i)) <> 0 in
  f (h 0) (h 1) (h 2) (h 3) (h 4) (h 5) (h 6) (h 7))
    (fun a0 a1 a2 a3 a4 a5 a6 a7 ->
    n_of_digits
      (a0 :: (a1 :: (a2 :: (a3 :: (a4 :: (a5 :: (a6 :: (a7 :: [])))))))))
    a

(** val nat_of_ascii : char -> int **)

let nat_of_ascii a =
  N.to_nat (n_of_ascii a)

module Z =
 struct
  (** val double : z -> z **)

  let double = function
  | Z0 -> Z0
  | Zpos p -> Zpos (XO p)
  | Zneg p -> Zneg (XO p)

  (** val succ_double : z -> z **)

  let succ_double = function
  | Z0 -> Zpos XH
  | Zpos p -> Zpos (XI p)
  | Zneg p -> Zneg (Coq_Pos.pred_double p)

  (** val pred_double : z -> z **)

  let pred_double = function
  | Z0 -> Zneg XH
  | Zpos p -> Zpos (Coq_Pos.pred_double p)
  | Zneg p -> Zneg (XI p)

  (** val pos_sub : positive -> positive -> z **)

  let rec pos_sub x y =
    match x with
    | XI p ->
      (match y with
       | XI q -> double (pos_sub p q)
       | XO q -> succ_double (pos_sub p q)
       | XH -> Zpos (XO p))
    | XO p ->
      (match y with
       | XI q -> pred_double (pos_sub p q)
       | XO q -> double (pos_sub p q)
       | XH -> Zpos (Coq_Pos.pred_double p))
    | XH ->
      (match y with
       | XI q -> Zneg (XO q)
       | XO q -> Zneg (Coq_Pos.pred_double q)
       | XH -> Z0)

  (** val add : z -> z -> z **)

  let add x y =
    match x with
    | Z0 -> y
    | Zpos x' ->
      (match y with
       | Z0 -> x
       | Zpos y' -> Zpos (Coq_Pos.add x' y')
       | Zneg y' -> pos_sub x' y')
    | Zneg x' ->
      (match y with
       | Z0 -> x
       | Zpos y' -> pos_sub y' x'
       | Zneg y' -> Zneg (Coq_Pos.add x' y'))

  (** val opp : z -> z **)

  let opp = function
  | Z0 -> Z0
  | Zpos x0 -> Zneg x0
  | Zneg x0 -> Zpos x0

  (** val succ : z -> z **)

  let succ x =
    add x (Zpos XH)

  (** val pred : z -> z **)

  let pred x =
    add x (Zneg XH)

  (** val mul : z -> z -> z **)

  let mul x y =
    match x with
    | Z0 -> Z0
    | Zpos x' ->
      (match y with
       | Z0 -> Z0
       | Zpos y' -> Zpos (Coq_Pos.mul x' y')
       | Zneg y' -> Zneg (Coq_Pos.mul x' y'))
    | Zneg x' ->
      (match y with
       | Z0 -> Z0
       | Zpos y' -> Zneg (Coq_Pos.mul x' y')
       | Zneg y' -> Zpos (Coq_Pos.mul x' y'))

  (** val to_nat : z -> int **)

  let to_nat = function
  | Zpos p -> Coq_Pos.to_nat p
  | _ -> 0

  (** val of_nat : int -> z **)

  let of_nat n0 =
    (fun fO fS n -> if n=0 then fO () else fS (n-1))
      (fun _ -> Z0)
      (fun n1 -> Zpos (Coq_Pos.of_succ_nat n1))
      n0

  (** val even : z -> bool **)

  let even = function
  | Z0 -> true
  | Zpos p -> (match p with
               | XO _ -> true
               | _ -> false)
  | Zneg p -> (match p with
               | XO _ -> true
               | _ -> false)

  (** val odd : z -> bool **)

  let odd = function
  | Z0 -> false
  | Zpos p -> (match p with
               | XO _ -> false
               | _ -> true)
  | Zneg p -> (match p with
               | XO _ -> false
               | _ -> true)

  (** val div2 : z -> z **)

  let div2 = function
  | Z0 -> Z0
  | Zpos p -> (match p with
               | XH -> Z0
               | _ -> Zpos (Coq_Pos.div2 p))
  | Zneg p -> Zneg (Coq_Pos.div2_up p)

  (** val log2 : z -> z **)

  let log2 = function
  | Zpos p0 ->
    (match p0 with
     | XI p -> Zpos (Coq_Pos.size p)
     | XO p -> Zpos (Coq_Pos.size p)
     | XH -> Z0)
  | _ -> Z0

  (** val b2z : bool -> z **)

  let b2z = function
  | true -> Zpos XH
  | false -> Z0
 end

(** val append : char list -> char list -> char list **)

let rec append s1 s2 =
  match s1 with
  | [] -> s2
  | c::s1' -> c::(append s1' s2)

(** val get : int -> char list -> char option **)

let rec get n0 = function
| [] -> None
| c::s' ->
  ((fun fO fS n -> if n=0 then fO () else fS (n-1))
     (fun _ -> Some c)
     (fun n' -> get n' s')
     n0)

(** val prefix : char list -> char list -> bool **)

let rec prefix s1 s2 =
  match s1 with
  | [] -> true
  | a::s1' ->
    (match s2 with
     | [] -> false
     | b::s2' -> if (=) a b then prefix s1' s2' else false)

(** val index : int -> char list -> char list -> int option **)

let rec index n0 s1 s2 = match s2 with
| [] ->
  ((fun fO fS n -> if n=0 then fO () else fS (n-1))
     (fun _ -> match s1 with
               | [] -> Some 0
               | _::_ -> None)
     (fun _ -> None)
     n0)
| _::s2' ->
  ((fun fO fS n -> if n=0 then fO () else fS (n-1))
     (fun _ ->
     if prefix s1 s2
     then Some 0
     else (match index 0 s1 s2' with
           | Some n1 -> Some (Pervasives.succ n1)
           | None -> None))
     (fun n' ->
     match index n' s1 s2' with
     | Some n1 -> Some (Pervasives.succ n1)
     | None -> None)
     n0)

(** val findex : int -> char list -> char list -> int **)

let findex n0 s1 s2 =
  match index n0 s1 s2 with
  | Some n1 -> n1
  | None -> 0

(** val addb : bool -> bool -> bool **)

let addb = function
| true -> negb
| false -> (fun x -> x)

(** val is_left : bool -> bool **)

let is_left = function
| true -> true
| false -> false

(** val iffP : bool -> reflect -> reflect **)

let iffP _ pb =
  let _evar_0_ = fun _ _ _ -> ReflectT in
  let _evar_0_0 = fun _ _ _ -> ReflectF in
  (match pb with
   | ReflectT -> _evar_0_ __ __ __
   | ReflectF -> _evar_0_0 __ __ __)

(** val idP : bool -> reflect **)

let idP = function
| true -> ReflectT
| false -> ReflectF

type 't pred0 = 't -> bool

type 't rel = 't -> 't pred0

module Equality =
 struct
  type 't axiom = 't -> 't -> reflect

  type 't mixin_of = { op : 't rel; mixin_of__1 : 't axiom }

  (** val op : 'a1 mixin_of -> 'a1 rel **)

  let op m =
    m.op

  type coq_type =
    __ mixin_of
    (* singleton inductive, whose constructor was Pack *)

  type sort = __

  (** val coq_class : coq_type -> sort mixin_of **)

  let coq_class cT =
    cT
 end

(** val eq_op : Equality.coq_type -> Equality.sort rel **)

let eq_op t =
  (Equality.coq_class t).Equality.op

(** val eqP : Equality.coq_type -> Equality.sort Equality.axiom **)

let eqP t =
  let _evar_0_ = fun _ a -> a in
  let { Equality.op = x; Equality.mixin_of__1 = x0 } = t in _evar_0_ x x0

(** val eqb : bool -> bool -> bool **)

let eqb b =
  addb (negb b)

(** val eqbP : bool Equality.axiom **)

let eqbP __top_assumption_ =
  let _evar_0_ = fun __top_assumption_0 ->
    let _evar_0_ = ReflectT in
    let _evar_0_0 = ReflectF in
    if __top_assumption_0 then _evar_0_ else _evar_0_0
  in
  let _evar_0_0 = fun __top_assumption_0 ->
    let _evar_0_0 = ReflectF in
    let _evar_0_1 = ReflectT in
    if __top_assumption_0 then _evar_0_0 else _evar_0_1
  in
  if __top_assumption_ then _evar_0_ else _evar_0_0

(** val bool_eqMixin : bool Equality.mixin_of **)

let bool_eqMixin =
  { Equality.op = eqb; Equality.mixin_of__1 = eqbP }

(** val bool_eqType : Equality.coq_type **)

let bool_eqType =
  Obj.magic bool_eqMixin

(** val eqn : int -> int -> bool **)

let rec eqn m n0 =
  (fun fO fS n -> if n=0 then fO () else fS (n-1))
    (fun _ ->
    (fun fO fS n -> if n=0 then fO () else fS (n-1))
      (fun _ -> true)
      (fun _ -> false)
      n0)
    (fun m' ->
    (fun fO fS n -> if n=0 then fO () else fS (n-1))
      (fun _ -> false)
      (fun n' -> eqn m' n')
      n0)
    m

(** val eqnP : int Equality.axiom **)

let eqnP n0 m =
  iffP (eqn n0 m) (idP (eqn n0 m))

(** val nat_eqMixin : int Equality.mixin_of **)

let nat_eqMixin =
  { Equality.op = eqn; Equality.mixin_of__1 = eqnP }

(** val nat_eqType : Equality.coq_type **)

let nat_eqType =
  Obj.magic nat_eqMixin

(** val addn_rec : int -> int -> int **)

let addn_rec =
  add

(** val addn : int -> int -> int **)

let addn =
  addn_rec

(** val subn_rec : int -> int -> int **)

let subn_rec =
  sub

(** val subn : int -> int -> int **)

let subn =
  subn_rec

(** val leq : int -> int -> bool **)

let leq m n0 =
  eq_op nat_eqType (Obj.magic subn m n0) (Obj.magic 0)

(** val iter : int -> ('a1 -> 'a1) -> 'a1 -> 'a1 **)

let rec iter n0 f x =
  (fun fO fS n -> if n=0 then fO () else fS (n-1))
    (fun _ -> x)
    (fun i -> f (iter i f x))
    n0

(** val nat_of_bool : bool -> int **)

let nat_of_bool = function
| true -> Pervasives.succ 0
| false -> 0

(** val odd0 : int -> bool **)

let rec odd0 n0 =
  (fun fO fS n -> if n=0 then fO () else fS (n-1))
    (fun _ -> false)
    (fun n' -> negb (odd0 n'))
    n0

(** val double_rec : int -> int **)

let rec double_rec n0 =
  (fun fO fS n -> if n=0 then fO () else fS (n-1))
    (fun _ -> 0)
    (fun n' -> Pervasives.succ (Pervasives.succ (double_rec n')))
    n0

(** val double0 : int -> int **)

let double0 =
  double_rec

(** val half : int -> int **)

let rec half n0 =
  (fun fO fS n -> if n=0 then fO () else fS (n-1))
    (fun _ -> n0)
    (fun n' -> uphalf n')
    n0

(** val uphalf : int -> int **)

and uphalf n0 =
  (fun fO fS n -> if n=0 then fO () else fS (n-1))
    (fun _ -> n0)
    (fun n' -> Pervasives.succ (half n'))
    n0

(** val size0 : 'a1 list -> int **)

let rec size0 = function
| [] -> 0
| _ :: s' -> Pervasives.succ (size0 s')

(** val head : 'a1 -> 'a1 list -> 'a1 **)

let head x0 = function
| [] -> x0
| x :: _ -> x

(** val behead : 'a1 list -> 'a1 list **)

let behead = function
| [] -> []
| _ :: s' -> s'

(** val ncons : int -> 'a1 -> 'a1 list -> 'a1 list **)

let ncons n0 x =
  iter n0 (fun x0 -> x :: x0)

(** val nseq : int -> 'a1 -> 'a1 list **)

let nseq n0 x =
  ncons n0 x []

(** val cat : 'a1 list -> 'a1 list -> 'a1 list **)

let rec cat s1 s2 =
  match s1 with
  | [] -> s2
  | x :: s1' -> x :: (cat s1' s2)

(** val rcons : 'a1 list -> 'a1 -> 'a1 list **)

let rec rcons s z0 =
  match s with
  | [] -> z0 :: []
  | x :: s' -> x :: (rcons s' z0)

(** val last : 'a1 -> 'a1 list -> 'a1 **)

let rec last x = function
| [] -> x
| x' :: s' -> last x' s'

(** val belast : 'a1 -> 'a1 list -> 'a1 list **)

let rec belast x = function
| [] -> []
| x' :: s' -> x :: (belast x' s')

(** val all : 'a1 pred0 -> 'a1 list -> bool **)

let rec all a = function
| [] -> true
| x :: s' -> (&&) (a x) (all a s')

(** val drop : int -> 'a1 list -> 'a1 list **)

let rec drop n0 s = match s with
| [] -> s
| _ :: s' ->
  ((fun fO fS n -> if n=0 then fO () else fS (n-1))
     (fun _ -> s)
     (fun n' -> drop n' s')
     n0)

(** val take : int -> 'a1 list -> 'a1 list **)

let rec take n0 = function
| [] -> []
| x :: s' ->
  ((fun fO fS n -> if n=0 then fO () else fS (n-1))
     (fun _ -> [])
     (fun n' -> x :: (take n' s'))
     n0)

(** val catrev : 'a1 list -> 'a1 list -> 'a1 list **)

let rec catrev s1 s2 =
  match s1 with
  | [] -> s2
  | x :: s1' -> catrev s1' (x :: s2)

(** val rev : 'a1 list -> 'a1 list **)

let rev s =
  catrev s []

(** val eqseq :
    Equality.coq_type -> Equality.sort list -> Equality.sort list -> bool **)

let rec eqseq t s1 s2 =
  match s1 with
  | [] -> (match s2 with
           | [] -> true
           | _ :: _ -> false)
  | x1 :: s1' ->
    (match s2 with
     | [] -> false
     | x2 :: s2' -> (&&) (eq_op t x1 x2) (eqseq t s1' s2'))

(** val eqseqP : Equality.coq_type -> Equality.sort list Equality.axiom **)

let eqseqP t _top_assumption_ =
  let _evar_0_ = fun __top_assumption_ ->
    let _evar_0_ = ReflectT in
    let _evar_0_0 = fun _ _ -> ReflectF in
    (match __top_assumption_ with
     | [] -> _evar_0_
     | x :: x0 -> _evar_0_0 x x0)
  in
  let _evar_0_0 = fun x1 s1 iHs __top_assumption_ ->
    let _evar_0_0 = ReflectF in
    let _evar_0_1 = fun x2 s2 ->
      let _evar_0_1 = fun _ -> iffP (eqseq t s1 s2) (iHs s2) in
      let _evar_0_2 = fun _ -> ReflectF in
      (match eqP t x1 x2 with
       | ReflectT -> _evar_0_1 __
       | ReflectF -> _evar_0_2 __)
    in
    (match __top_assumption_ with
     | [] -> _evar_0_0
     | x :: x0 -> _evar_0_1 x x0)
  in
  let rec f = function
  | [] -> _evar_0_
  | y :: l0 -> _evar_0_0 y l0 (f l0)
  in f _top_assumption_

(** val seq_eqMixin :
    Equality.coq_type -> Equality.sort list Equality.mixin_of **)

let seq_eqMixin t =
  { Equality.op = (eqseq t); Equality.mixin_of__1 = (eqseqP t) }

(** val seq_eqType : Equality.coq_type -> Equality.coq_type **)

let seq_eqType t =
  Obj.magic seq_eqMixin t

type bitseq = bool list

(** val bitseq_eqType : Equality.coq_type **)

let bitseq_eqType =
  Obj.magic seq_eqMixin bool_eqType

(** val map : ('a1 -> 'a2) -> 'a1 list -> 'a2 list **)

let rec map f = function
| [] -> []
| x :: s' -> (f x) :: (map f s')

(** val foldr : ('a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 list -> 'a2 **)

let rec foldr f z0 = function
| [] -> z0
| x :: s' -> f x (foldr f z0 s')

(** val zip : 'a1 list -> 'a2 list -> ('a1 * 'a2) list **)

let rec zip s t =
  match s with
  | [] -> []
  | x :: s' -> (match t with
                | [] -> []
                | y :: t' -> (x, y) :: (zip s' t'))

(** val unzip1 : ('a1 * 'a2) list -> 'a1 list **)

let unzip1 s =
  map fst s

(** val unzip2 : ('a1 * 'a2) list -> 'a2 list **)

let unzip2 s =
  map snd s

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

(** val zeros : int -> bits **)

let zeros n0 =
  nseq n0 b0

(** val ones : int -> bits **)

let ones n0 =
  nseq n0 b1

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

(** val lsb : bits -> bool **)

let lsb bs =
  fst (splitlsb bs)

(** val msb : bits -> bool **)

let msb bs =
  snd (splitmsb bs)

(** val high : int -> bits -> bits **)

let high n0 bs =
  cat (zeros (subn n0 (size0 bs))) (drop (subn (size0 bs) n0) bs)

(** val low : int -> bits -> bits **)

let low n0 bs =
  cat (take n0 bs) (zeros (subn n0 (size0 bs)))

(** val extract : int -> int -> bits -> bits **)

let extract i j bs =
  high (addn (subn i j) (Pervasives.succ 0))
    (low (addn i (Pervasives.succ 0)) bs)

(** val slice : int -> int -> bits -> bits **)

let slice i m bs =
  extract i (subn (addn i m) (Pervasives.succ 0)) bs

(** val zext : int -> bits -> bits **)

let zext n0 bs =
  cat bs (zeros n0)

(** val sext : int -> bits -> bits **)

let sext n0 bs =
  cat bs (nseq n0 (msb bs))

(** val repeat : int -> 'a1 list -> 'a1 list **)

let rec repeat n0 s =
  (fun fO fS n -> if n=0 then fO () else fS (n-1))
    (fun _ -> [])
    (fun m -> cat s (repeat m s))
    n0

(** val invB : bits -> bits **)

let invB bs =
  map negb bs

(** val is_zero : bits -> bool **)

let is_zero bs =
  all (fun b -> eq_op bool_eqType (Obj.magic b) (Obj.magic false)) bs

(** val to_nat0 : bits -> int **)

let to_nat0 bs =
  foldr (fun b res -> addn (nat_of_bool b) (double0 res)) 0 bs

(** val from_nat : int -> int -> bits **)

let rec from_nat n0 x =
  (fun fO fS n -> if n=0 then fO () else fS (n-1))
    (fun _ -> [])
    (fun m -> joinlsb (odd0 x) (from_nat m (half x)))
    n0

(** val from_bool : int -> bool -> bits **)

let from_bool n0 b =
  from_nat n0 (nat_of_bool b)

(** val to_bool : bits -> bool **)

let to_bool bs =
  negb (is_zero bs)

(** val to_N : bits -> n **)

let to_N bs =
  foldr (fun b res -> N.add (N.b2n b) (N.mul res (Npos (XO XH)))) N0 bs

(** val from_N : int -> n -> bits **)

let rec from_N n0 x =
  (fun fO fS n -> if n=0 then fO () else fS (n-1))
    (fun _ -> [])
    (fun m -> joinlsb (N.odd x) (from_N m (N.div x (Npos (XO XH)))))
    n0

(** val to_Zpos : bits -> z **)

let to_Zpos bs =
  foldr (fun b res -> Z.add (Z.b2z b) (Z.mul res (Zpos (XO XH)))) Z0 bs

(** val to_Zneg : bits -> z **)

let to_Zneg bs =
  foldr (fun b res -> Z.add (Z.b2z (negb b)) (Z.mul res (Zpos (XO XH)))) Z0 bs

(** val to_Z : bits -> z **)

let to_Z bs =
  let (bs0, b) = splitmsb bs in
  if b then Z.opp (Z.succ (to_Zneg bs0)) else to_Zpos bs0

(** val from_Zpos : int -> z -> bits **)

let rec from_Zpos n0 x =
  (fun fO fS n -> if n=0 then fO () else fS (n-1))
    (fun _ -> [])
    (fun m -> joinlsb (Z.odd x) (from_Zpos m (Z.div2 x)))
    n0

(** val from_Zneg : int -> z -> bits **)

let rec from_Zneg n0 x =
  (fun fO fS n -> if n=0 then fO () else fS (n-1))
    (fun _ -> [])
    (fun m -> joinlsb (Z.even x) (from_Zneg m (Z.div2 x)))
    n0

(** val from_Z : int -> z -> bits **)

let from_Z n0 x = match x with
| Z0 -> zeros n0
| Zpos _ -> from_Zpos n0 x
| Zneg _ -> from_Zneg n0 (Z.pred (Z.opp x))

(** val char_to_nibble : char -> bits **)

let char_to_nibble c =
  from_nat (Pervasives.succ (Pervasives.succ (Pervasives.succ
    (Pervasives.succ 0))))
    (findex 0 (c::[])
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

(** val zpos_of_num_string_rec : z -> char list -> z **)

let rec zpos_of_num_string_rec res = function
| [] -> res
| c::s0 ->
  zpos_of_num_string_rec
    (Z.add (Z.mul res (Zpos (XO (XI (XO XH)))))
      (Z.of_nat (subn (nat_of_ascii c) (nat_of_ascii '0')))) s0

(** val zpos_of_num_string : char list -> z **)

let zpos_of_num_string s =
  zpos_of_num_string_rec Z0 s

(** val from_string : char list -> bits **)

let from_string s =
  let n0 = zpos_of_num_string s in
  from_Z (addn (Z.to_nat (Z.log2 n0)) (Pervasives.succ 0)) n0

(** val nibble_to_char : bits -> char **)

let nibble_to_char n0 =
  match get (to_nat0 n0)
          ('0'::('1'::('2'::('3'::('4'::('5'::('6'::('7'::('8'::('9'::('A'::('B'::('C'::('D'::('E'::('F'::[])))))))))))))))) with
  | Some c -> c
  | None -> ' '

(** val append_nibble_on_string : bits -> char list -> char list **)

let append_nibble_on_string n0 s =
  append s ((nibble_to_char n0)::[])

(** val to_hex : bits -> char list **)

let rec to_hex bs = match bs with
| [] -> []
| b2 :: l ->
  (match l with
   | [] ->
     append_nibble_on_string
       (cat bs
         (zeros (Pervasives.succ (Pervasives.succ (Pervasives.succ 0))))) []
   | b3 :: l0 ->
     (match l0 with
      | [] ->
        append_nibble_on_string
          (cat bs (zeros (Pervasives.succ (Pervasives.succ 0)))) []
      | b4 :: l1 ->
        (match l1 with
         | [] ->
           append_nibble_on_string (cat bs (zeros (Pervasives.succ 0))) []
         | b5 :: tl ->
           append_nibble_on_string (b2 :: (b3 :: (b4 :: (b5 :: []))))
             (to_hex tl))))

(** val to_bin : bits -> char list **)

let rec to_bin = function
| [] -> []
| b :: bs0 -> append (to_bin bs0) (if b then '1'::[] else '0'::[])

(** val extzip : 'a1 -> 'a2 -> 'a1 list -> 'a2 list -> ('a1 * 'a2) list **)

let rec extzip sd td ss ts =
  match ss with
  | [] ->
    (match ts with
     | [] -> zip ss (nseq (size0 ss) td)
     | _ :: _ -> zip (nseq (size0 ts) sd) ts)
  | s :: ss0 ->
    (match ts with
     | [] -> zip ss (nseq (size0 ss) td)
     | t :: ts0 -> (s, t) :: (extzip sd td ss0 ts0))

(** val lift :
    'a1 -> ('a1 -> 'a1 -> 'a1) -> 'a1 list -> 'a1 list -> 'a1 list **)

let lift d op0 ss ts =
  map (fun e -> op0 (fst e) (snd e)) (extzip d d ss ts)

(** val lift0 :
    (bool -> bool -> bool) -> bool list -> bool list -> bool list **)

let lift0 =
  lift b0

(** val extzip0 : bool list -> bool list -> (bool * bool) list **)

let extzip0 =
  extzip b0 b0

(** val succB : bits -> bits **)

let rec succB = function
| [] -> []
| hd :: tl -> if hd then b0 :: (succB tl) else b1 :: tl

(** val predB : bits -> bits **)

let rec predB = function
| [] -> []
| hd :: tl -> if hd then b0 :: tl else b1 :: (predB tl)

(** val andB : bits -> bits -> bits **)

let andB bs1 bs2 =
  lift0 (&&) bs1 bs2

(** val orB : bits -> bits -> bits **)

let orB bs1 bs2 =
  lift0 (||) bs1 bs2

(** val xorB : bits -> bits -> bits **)

let xorB bs1 bs2 =
  lift0 xorb bs1 bs2

(** val negB : bits -> bits **)

let negB bs =
  succB (invB bs)

(** val orb_all : bits -> bool **)

let rec orb_all = function
| [] -> false
| hd :: tl -> let result_tl = orb_all tl in (||) result_tl hd

(** val andb_orb_all_zip : (bool * bool) list -> bool **)

let rec andb_orb_all_zip bsp = match bsp with
| [] -> false
| p :: bsp_tl ->
  let (_, ls2_high) = p in
  let result_tl = andb_orb_all_zip bsp_tl in
  let result_or = orb_all (unzip1 bsp) in
  (||) result_tl ((&&) result_or ls2_high)

(** val andb_orb_all : bits -> bits -> bool **)

let andb_orb_all bs1 bs2 =
  andb_orb_all_zip (extzip0 bs1 (rev bs2))

(** val bool_adder : bool -> bool -> bool -> bool * bool **)

let bool_adder c b2 b3 =
  if c
  then if b2
       then if b3 then (true, true) else (true, false)
       else if b3 then (true, false) else (false, true)
  else if b2
       then if b3 then (true, false) else (false, true)
       else if b3 then (false, true) else (false, false)

(** val full_adder_zip : bool -> (bool * bool) list -> bool * bits **)

let rec full_adder_zip c = function
| [] -> (c, [])
| p :: tl ->
  let (hd1, hd2) = p in
  let (c0, hd) = bool_adder c hd1 hd2 in
  let (c1, tl0) = full_adder_zip c0 tl in (c1, (hd :: tl0))

(** val full_adder : bool -> bits -> bits -> bool * bits **)

let full_adder c bs1 bs2 =
  full_adder_zip c (zip bs1 bs2)

(** val adcB : bool -> bits -> bits -> bool * bits **)

let adcB =
  full_adder

(** val addB : bits -> bits -> bits **)

let addB bs1 bs2 =
  snd (adcB false bs1 bs2)

(** val carry_addB : bits -> bits -> bool **)

let carry_addB bs1 bs2 =
  fst (adcB false bs1 bs2)

(** val addB_ovf : bits -> bits -> bool **)

let addB_ovf =
  carry_addB

(** val sbbB : bool -> bits -> bits -> bool * bits **)

let sbbB b bs1 bs2 =
  let (c, res) = adcB (negb b) bs1 (invB bs2) in ((negb c), res)

(** val subB : bits -> bits -> bits **)

let subB bs1 bs2 =
  snd (sbbB false bs1 bs2)

(** val borrow_subB : bits -> bits -> bool **)

let borrow_subB bs1 bs2 =
  fst (sbbB false bs1 bs2)

(** val saddo : bits -> bits -> bool **)

let saddo bs1 bs2 =
  let sign1 = snd (splitmsb bs1) in
  let sign2 = snd (splitmsb bs2) in
  let b_add = addB bs1 bs2 in
  let sign_fa = snd (splitmsb b_add) in
  (||) ((&&) ((&&) sign1 sign2) (negb sign_fa))
    ((&&) ((&&) (negb sign1) (negb sign2)) sign_fa)

(** val ssubo : bits -> bits -> bool **)

let ssubo bs1 bs2 =
  let sign1 = snd (splitmsb bs1) in
  let sign2 = snd (splitmsb bs2) in
  let b_sub = subB bs1 bs2 in
  let sign_sub = snd (splitmsb b_sub) in
  (||) ((&&) ((&&) (negb sign1) sign2) sign_sub)
    ((&&) ((&&) sign1 (negb sign2)) (negb sign_sub))

(** val full_mul : bits -> bits -> bits **)

let rec full_mul bs1 bs2 =
  match bs1 with
  | [] -> from_nat (addn (size0 bs1) (size0 bs2)) 0
  | hd :: tl ->
    if hd
    then addB (joinlsb false (full_mul tl bs2)) (zext (size0 bs1) bs2)
    else joinlsb false (full_mul tl bs2)

(** val mulB : bits -> bits -> bits **)

let mulB bs1 bs2 =
  low (size0 bs1) (full_mul bs1 bs2)

(** val umulo : bits -> bits -> bool **)

let umulo bs1 bs2 =
  let bs1_hightl = snd (splitlsb bs1) in
  let bs2_hightl = snd (splitlsb bs2) in
  let wbs1 = zext (Pervasives.succ 0) bs1 in
  let wbs2 = zext (Pervasives.succ 0) bs2 in
  let mul0 = mulB wbs1 wbs2 in
  let mul_high = msb mul0 in
  (||) (andb_orb_all bs1_hightl bs2_hightl) mul_high

(** val smulo : bits -> bits -> bool **)

let smulo bs1 bs2 =
  let bs1_tl = fst (splitmsb bs1) in
  let bs1_sign = snd (splitmsb bs1) in
  let bs2_tl = fst (splitmsb bs2) in
  let bs2_sign = snd (splitmsb bs2) in
  let wsign1 = nseq (size0 bs1_tl) bs1_sign in
  let wsign2 = nseq (size0 bs2_tl) bs2_sign in
  let xbs1 = xorB bs1_tl wsign1 in
  let xbs2 = xorB bs2_tl wsign2 in
  let xbs1_hightl = snd (splitlsb xbs1) in
  let xbs2_hightl = snd (splitlsb xbs2) in
  let and_or = andb_orb_all xbs1_hightl xbs2_hightl in
  let wbs1 = sext (Pervasives.succ 0) bs1 in
  let wbs2 = sext (Pervasives.succ 0) bs2 in
  let mul0 = mulB wbs1 wbs2 in
  let mul_tl = fst (splitmsb mul0) in
  let mul_n = snd (splitmsb mul0) in
  let mul_n_minus1 = snd (splitmsb mul_tl) in
  (||) and_or (xorb mul_n mul_n_minus1)

(** val ltB_lsb_zip : (bool * bool) list -> bool **)

let rec ltB_lsb_zip = function
| [] -> false
| p :: tl ->
  let (hd1, hd2) = p in
  (||)
    ((&&)
      ((&&)
        (eq_op (seq_eqType bool_eqType) (Obj.magic unzip1 tl)
          (Obj.magic unzip2 tl)) (negb hd1)) hd2) (ltB_lsb_zip tl)

(** val ltB_lsb : bits -> bits -> bool **)

let ltB_lsb bs1 bs2 =
  ltB_lsb_zip (extzip0 bs1 bs2)

(** val leB : bits -> bits -> bool **)

let leB bs1 bs2 =
  (||) (eq_op bitseq_eqType (Obj.magic bs1) (Obj.magic bs2)) (ltB_lsb bs1 bs2)

(** val gtB : bits -> bits -> bool **)

let gtB bs1 bs2 =
  ltB_lsb bs2 bs1

(** val geB : bits -> bits -> bool **)

let geB bs1 bs2 =
  leB bs2 bs1

(** val sltB : bits -> bits -> bool **)

let sltB bs1 bs2 =
  let tbs1 = fst (splitmsb bs1) in
  let sign1 = snd (splitmsb bs1) in
  let tbs2 = fst (splitmsb bs2) in
  let sign2 = snd (splitmsb bs2) in
  let ult_tl = ltB_lsb tbs1 tbs2 in
  (||) ((&&) (eq_op bool_eqType (Obj.magic sign1) (Obj.magic sign2)) ult_tl)
    ((&&) sign1 (negb sign2))

(** val sleB : bits -> bits -> bool **)

let sleB bs1 bs2 =
  (||) (eq_op bitseq_eqType (Obj.magic bs1) (Obj.magic bs2)) (sltB bs1 bs2)

(** val sgtB : bits -> bits -> bool **)

let sgtB bs1 bs2 =
  sltB bs2 bs1

(** val sgeB : bits -> bits -> bool **)

let sgeB bs1 bs2 =
  sleB bs2 bs1

(** val rolB1 : bits -> bits **)

let rolB1 bs =
  dropmsb (joinlsb (msb bs) bs)

(** val rolB : int -> bits -> bits **)

let rolB n0 bs =
  iter n0 rolB1 bs

(** val rorB1 : bits -> bits **)

let rorB1 bs =
  droplsb (joinmsb bs (lsb bs))

(** val rorB : int -> bits -> bits **)

let rorB n0 bs =
  iter n0 rorB1 bs

(** val shrB1 : bits -> bits **)

let shrB1 bs =
  droplsb (joinmsb bs b0)

(** val shrB : int -> bits -> bits **)

let shrB n0 bs =
  iter n0 shrB1 bs

(** val shrBB : bits -> bits -> bits **)

let shrBB bs ns =
  let szbs = size0 bs in
  let szns = size0 ns in
  let log2szbs = Nat.log2_up szbs in
  if leq szbs (Pervasives.succ 0)
  then if eq_op bitseq_eqType (Obj.magic ns) (Obj.magic zeros szns)
       then bs
       else zeros szbs
  else if leq szns log2szbs
       then shrB (to_nat0 ns) bs
       else let zero_hi = zeros (subn szns log2szbs) in
            let ns_hi = high (subn szns log2szbs) ns in
            if eq_op bitseq_eqType (Obj.magic ns_hi) (Obj.magic zero_hi)
            then let ns_lo = low log2szbs ns in shrB (to_nat0 ns_lo) bs
            else from_nat szbs 0

(** val sarB1 : bits -> bits **)

let sarB1 bs =
  droplsb (joinmsb bs (msb bs))

(** val sarB : int -> bits -> bits **)

let sarB n0 bs =
  iter n0 sarB1 bs

(** val sarBB : bits -> bits -> bits **)

let sarBB bs ns =
  let szbs = size0 bs in
  let szns = size0 ns in
  let log2szbs = Nat.log2_up szbs in
  let msb_bs = msb bs in
  if leq szbs (Pervasives.succ 0)
  then if eq_op bitseq_eqType (Obj.magic ns) (Obj.magic zeros szns)
       then bs
       else nseq szbs msb_bs
  else if leq szns log2szbs
       then sarB (to_nat0 ns) bs
       else let zero_hi = zeros (subn szns log2szbs) in
            let ns_hi = high (subn szns log2szbs) ns in
            if eq_op bitseq_eqType (Obj.magic ns_hi) (Obj.magic zero_hi)
            then let ns_lo = low log2szbs ns in sarB (to_nat0 ns_lo) bs
            else nseq szbs msb_bs

(** val shlB1 : bits -> bits **)

let shlB1 bs =
  dropmsb (joinlsb false bs)

(** val shlB : int -> bits -> bits **)

let shlB n0 bs =
  iter n0 shlB1 bs

(** val shlBB : bits -> bits -> bits **)

let shlBB bs ns =
  let szbs = size0 bs in
  let szns = size0 ns in
  let log2szbs = Nat.log2_up szbs in
  if leq szbs (Pervasives.succ 0)
  then if eq_op bitseq_eqType (Obj.magic ns) (Obj.magic zeros szns)
       then bs
       else zeros szbs
  else if leq szns log2szbs
       then shlB (to_nat0 ns) bs
       else let zero_hi = zeros (subn szns log2szbs) in
            let ns_hi = high (subn szns log2szbs) ns in
            if eq_op bitseq_eqType (Obj.magic ns_hi) (Obj.magic zero_hi)
            then let ns_lo = low log2szbs ns in shlB (to_nat0 ns_lo) bs
            else from_nat szbs 0

(** val ucastB : bits -> int -> bits **)

let ucastB bs n0 =
  if eq_op nat_eqType (Obj.magic n0) (Obj.magic size0 bs)
  then bs
  else if leq (Pervasives.succ n0) (size0 bs)
       then low n0 bs
       else zext (subn n0 (size0 bs)) bs

(** val scastB : bits -> int -> bits **)

let scastB bs n0 =
  if eq_op nat_eqType (Obj.magic n0) (Obj.magic size0 bs)
  then bs
  else if leq (Pervasives.succ n0) (size0 bs)
       then low n0 bs
       else sext (subn n0 (size0 bs)) bs

(** val udivB_rec : bits -> bits -> bits -> bits -> bits * bits **)

let rec udivB_rec n0 m q r =
  match n0 with
  | [] -> (q, r)
  | nhd :: ntl ->
    let di = dropmsb (joinlsb nhd r) in
    let bi = leB m di in
    let ri = if bi then subB di m else di in
    let qi = dropmsb (joinlsb bi q) in udivB_rec ntl m qi ri

(** val udivB : bits -> bits -> bits * bits **)

let udivB n' m =
  let n0 = rev n' in
  if eq_op bitseq_eqType (Obj.magic from_Zpos (size0 n0) (to_Zpos m))
       (Obj.magic zeros (size0 n0))
  then ((ones (size0 n0)), n')
  else udivB_rec n0 (from_Zpos (size0 n0) (to_Zpos m)) (zeros (size0 n0))
         (zeros (size0 n0))

(** val udivB' : bits -> bits -> bits **)

let udivB' n0 m =
  fst (udivB n0 m)

(** val uremB : bits -> bits -> bits **)

let uremB bs1 bs2 =
  snd (udivB bs1 bs2)

(** val absB : bits -> bits **)

let absB bs =
  if msb bs then negB bs else bs

(** val sdivB' : bits -> bits -> bits * bits **)

let sdivB' bs1' bs2' =
  let bs1 = absB bs1' in
  let bs2 = absB bs2' in
  if (&&) (eq_op bool_eqType (Obj.magic msb bs1') (Obj.magic msb bs2'))
       (negb (msb bs1'))
  then udivB bs1 bs2
  else if (&&) (eq_op bool_eqType (Obj.magic msb bs1') (Obj.magic msb bs2'))
            (msb bs1')
       then ((fst (udivB bs1 bs2)), (negB (snd (udivB bs1 bs2))))
       else if (&&)
                 (negb
                   (eq_op bool_eqType (Obj.magic msb bs1')
                     (Obj.magic msb bs2'))) (negb (msb bs1'))
            then ((negB (fst (udivB bs1 bs2))), (snd (udivB bs1 bs2)))
            else ((negB (fst (udivB bs1 bs2))), (negB (snd (udivB bs1 bs2))))

(** val sdivB : bits -> bits -> bits **)

let sdivB bs1' bs2' =
  let bs1 = absB bs1' in
  let bs2 = absB bs2' in
  if eq_op bool_eqType (Obj.magic msb bs1') (Obj.magic msb bs2')
  then fst (udivB bs1 bs2)
  else negB (fst (udivB bs1 bs2))

(** val sremB : bits -> bits -> bits **)

let sremB bs1' bs2' =
  let bs1 = absB bs1' in
  let bs2 = absB bs2' in
  if msb bs1' then negB (snd (udivB bs1 bs2)) else snd (udivB bs1 bs2)
