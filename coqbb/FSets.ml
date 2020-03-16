open Bool
open Datatypes
open FSetFacts
open FSetInterface
open FSetProperties
open Int0
open List0
open MSetAVL
open Eqtype

type __ = Obj.t
let __ = let rec f _ = Obj.repr f in Obj.repr f

module type SsrFSet =
 sig
  module SE :
   SsrOrder.SsrOrder

  module E :
   OrderedType.OrderedType with type t = SE.t

  type elt = SE.t

  type t

  val empty : t

  val is_empty : t -> bool

  val mem : elt -> t -> bool

  val add : elt -> t -> t

  val singleton : elt -> t

  val remove : elt -> t -> t

  val union : t -> t -> t

  val inter : t -> t -> t

  val diff : t -> t -> t

  val eq_dec : t -> t -> bool

  val equal : t -> t -> bool

  val subset : t -> t -> bool

  val fold : (elt -> 'a1 -> 'a1) -> t -> 'a1 -> 'a1

  val for_all : (elt -> bool) -> t -> bool

  val exists_ : (elt -> bool) -> t -> bool

  val filter : (elt -> bool) -> t -> t

  val partition : (elt -> bool) -> t -> t * t

  val cardinal : t -> nat

  val elements : t -> elt list

  val choose : t -> elt option

  val compare : t -> t -> t OrderedType.coq_Compare

  val min_elt : t -> elt option

  val max_elt : t -> elt option
 end

module FSetLemmas =
 functor (S:S) ->
 struct
  module F = Facts(S)

  module OP = OrdProperties(S)

  (** val eqb : S.E.t -> S.E.t -> bool **)

  let eqb x y =
    if S.E.eq_dec x y then true else false

  module ME = OP.ME

  module P = OP.P

  (** val gtb : S.E.t -> S.E.t -> bool **)

  let gtb x y =
    match S.E.compare x y with
    | OrderedType.GT -> true
    | _ -> false

  (** val leb : S.E.t -> S.E.t -> bool **)

  let leb x y =
    negb (gtb x y)

  (** val elements_lt : S.E.t -> S.t -> S.E.t list **)

  let elements_lt x s =
    filter (gtb x) (S.elements s)

  (** val elements_ge : S.E.t -> S.t -> S.E.t list **)

  let elements_ge x s =
    filter (leb x) (S.elements s)

  (** val set_induction_max :
      (S.t -> __ -> 'a1) -> (S.t -> S.t -> 'a1 -> S.E.t -> __ -> __ -> 'a1)
      -> S.t -> 'a1 **)

  let set_induction_max =
    OP.set_induction_max

  (** val set_induction_min :
      (S.t -> __ -> 'a1) -> (S.t -> S.t -> 'a1 -> S.E.t -> __ -> __ -> 'a1)
      -> S.t -> 'a1 **)

  let set_induction_min =
    OP.set_induction_min

  (** val memP : S.elt -> S.t -> reflect **)

  let memP x s =
    let _evar_0_ = fun _ -> ReflectT in
    let _evar_0_0 = fun _ -> ReflectF in
    if S.mem x s then _evar_0_ __ else _evar_0_0 __

  (** val disjoint : S.t -> S.t -> bool **)

  let disjoint s1 s2 =
    S.is_empty (S.inter s1 s2)
 end

module SsrFSetLemmas =
 functor (S:SsrFSet) ->
 struct
  module F =
   struct
    (** val eqb : S.SE.t -> S.SE.t -> bool **)

    let eqb x y =
      if S.E.eq_dec x y then true else false
   end

  module OP =
   struct
    module ME = OrderedType.OrderedTypeFacts(S.E)

    module P =
     struct
      module Dec =
       struct
        module F =
         struct
          (** val eqb : S.SE.t -> S.SE.t -> bool **)

          let eqb x y =
            if S.E.eq_dec x y then true else false
         end

        module FSetLogicalFacts =
         struct
         end

        module FSetDecideAuxiliary =
         struct
         end

        module FSetDecideTestCases =
         struct
         end
       end

      module FM = Dec.F

      (** val coq_In_dec : S.elt -> S.t -> bool **)

      let coq_In_dec x s =
        if S.mem x s then true else false

      (** val of_list : S.elt list -> S.t **)

      let of_list l =
        fold_right S.add S.empty l

      (** val to_list : S.t -> S.elt list **)

      let to_list =
        S.elements

      (** val fold_rec :
          (S.elt -> 'a1 -> 'a1) -> 'a1 -> S.t -> (S.t -> __ -> 'a2) -> (S.elt
          -> 'a1 -> S.t -> S.t -> __ -> __ -> __ -> 'a2 -> 'a2) -> 'a2 **)

      let fold_rec f i s pempty pstep =
        let l = rev (S.elements s) in
        let pstep' = fun x a s' s'' x0 -> pstep x a s' s'' __ __ __ x0 in
        let rec f0 l0 pstep'0 s0 =
          match l0 with
          | [] -> pempty s0 __
          | y :: l1 ->
            pstep'0 y (fold_right f i l1) (of_list l1) s0 __ __ __
              (f0 l1 (fun x a0 s' s'' _ _ _ x0 ->
                pstep'0 x a0 s' s'' __ __ __ x0) (of_list l1))
        in f0 l (fun x a s' s'' _ _ _ x0 -> pstep' x a s' s'' x0) s

      (** val fold_rec_bis :
          (S.elt -> 'a1 -> 'a1) -> 'a1 -> S.t -> (S.t -> S.t -> 'a1 -> __ ->
          'a2 -> 'a2) -> 'a2 -> (S.elt -> 'a1 -> S.t -> __ -> __ -> 'a2 ->
          'a2) -> 'a2 **)

      let fold_rec_bis f i s pmorphism pempty pstep =
        fold_rec f i s (fun s' _ -> pmorphism S.empty s' i __ pempty)
          (fun x a s' s'' _ _ _ x0 ->
          pmorphism (S.add x s') s'' (f x a) __ (pstep x a s' __ __ x0))

      (** val fold_rec_nodep :
          (S.elt -> 'a1 -> 'a1) -> 'a1 -> S.t -> 'a2 -> (S.elt -> 'a1 -> __
          -> 'a2 -> 'a2) -> 'a2 **)

      let fold_rec_nodep f i s x x0 =
        fold_rec_bis f i s (fun _ _ _ _ x1 -> x1) x (fun x1 a _ _ _ x2 ->
          x0 x1 a __ x2)

      (** val fold_rec_weak :
          (S.elt -> 'a1 -> 'a1) -> 'a1 -> (S.t -> S.t -> 'a1 -> __ -> 'a2 ->
          'a2) -> 'a2 -> (S.elt -> 'a1 -> S.t -> __ -> 'a2 -> 'a2) -> S.t ->
          'a2 **)

      let fold_rec_weak f i x x0 x1 s =
        fold_rec_bis f i s x x0 (fun x2 a s' _ _ x3 -> x1 x2 a s' __ x3)

      (** val fold_rel :
          (S.elt -> 'a1 -> 'a1) -> (S.elt -> 'a2 -> 'a2) -> 'a1 -> 'a2 -> S.t
          -> 'a3 -> (S.elt -> 'a1 -> 'a2 -> __ -> 'a3 -> 'a3) -> 'a3 **)

      let fold_rel f g i j s rempty rstep =
        let l = rev (S.elements s) in
        let rstep' = fun x a b x0 -> rstep x a b __ x0 in
        let rec f0 l0 rstep'0 =
          match l0 with
          | [] -> rempty
          | y :: l1 ->
            rstep'0 y (fold_right f i l1) (fold_right g j l1) __
              (f0 l1 (fun x a0 b _ x0 -> rstep'0 x a0 b __ x0))
        in f0 l (fun x a b _ x0 -> rstep' x a b x0)

      (** val set_induction :
          (S.t -> __ -> 'a1) -> (S.t -> S.t -> 'a1 -> S.elt -> __ -> __ ->
          'a1) -> S.t -> 'a1 **)

      let set_induction x x0 s =
        fold_rec (fun _ _ -> ()) () s x (fun x1 _ s' s'' _ _ _ x2 ->
          x0 s' s'' x2 x1 __ __)

      (** val set_induction_bis :
          (S.t -> S.t -> __ -> 'a1 -> 'a1) -> 'a1 -> (S.elt -> S.t -> __ ->
          'a1 -> 'a1) -> S.t -> 'a1 **)

      let set_induction_bis x x0 x1 s =
        fold_rec_bis (fun _ _ -> ()) () s (fun s0 s' _ _ x2 -> x s0 s' __ x2)
          x0 (fun x2 _ s' _ _ x3 -> x1 x2 s' __ x3)

      (** val cardinal_inv_2 : S.t -> nat -> S.elt **)

      let cardinal_inv_2 s _ =
        let l = S.elements s in
        (match l with
         | [] -> assert false (* absurd case *)
         | e :: _ -> e)

      (** val cardinal_inv_2b : S.t -> S.elt **)

      let cardinal_inv_2b s =
        let n = S.cardinal s in
        let x = fun x -> cardinal_inv_2 s x in
        (match n with
         | O -> assert false (* absurd case *)
         | S n0 -> x n0)
     end

    (** val gtb : S.SE.t -> S.SE.t -> bool **)

    let gtb x y =
      match S.E.compare x y with
      | OrderedType.GT -> true
      | _ -> false

    (** val leb : S.SE.t -> S.SE.t -> bool **)

    let leb x y =
      negb (gtb x y)

    (** val elements_lt : S.SE.t -> S.t -> S.SE.t list **)

    let elements_lt x s =
      filter (gtb x) (S.elements s)

    (** val elements_ge : S.SE.t -> S.t -> S.SE.t list **)

    let elements_ge x s =
      filter (leb x) (S.elements s)

    (** val set_induction_max :
        (S.t -> __ -> 'a1) -> (S.t -> S.t -> 'a1 -> S.SE.t -> __ -> __ ->
        'a1) -> S.t -> 'a1 **)

    let set_induction_max x x0 s =
      let n = S.cardinal s in
      let rec f n0 s0 =
        match n0 with
        | O -> x s0 __
        | S n1 ->
          (match S.max_elt s0 with
           | Some e -> x0 (S.remove e s0) s0 (f n1 (S.remove e s0)) e __ __
           | None -> assert false (* absurd case *))
      in f n s

    (** val set_induction_min :
        (S.t -> __ -> 'a1) -> (S.t -> S.t -> 'a1 -> S.SE.t -> __ -> __ ->
        'a1) -> S.t -> 'a1 **)

    let set_induction_min x x0 s =
      let n = S.cardinal s in
      let rec f n0 s0 =
        match n0 with
        | O -> x s0 __
        | S n1 ->
          (match S.min_elt s0 with
           | Some e -> x0 (S.remove e s0) s0 (f n1 (S.remove e s0)) e __ __
           | None -> x s0 __)
      in f n s
   end

  (** val eqb : S.SE.t -> S.SE.t -> bool **)

  let eqb x y =
    if S.E.eq_dec x y then true else false

  module ME = OP.ME

  module P = OP.P

  (** val gtb : S.SE.t -> S.SE.t -> bool **)

  let gtb x y =
    match S.E.compare x y with
    | OrderedType.GT -> true
    | _ -> false

  (** val leb : S.SE.t -> S.SE.t -> bool **)

  let leb x y =
    negb (gtb x y)

  (** val elements_lt : S.SE.t -> S.t -> S.SE.t list **)

  let elements_lt x s =
    filter (gtb x) (S.elements s)

  (** val elements_ge : S.SE.t -> S.t -> S.SE.t list **)

  let elements_ge x s =
    filter (leb x) (S.elements s)

  (** val set_induction_max :
      (S.t -> __ -> 'a1) -> (S.t -> S.t -> 'a1 -> S.SE.t -> __ -> __ -> 'a1)
      -> S.t -> 'a1 **)

  let set_induction_max =
    OP.set_induction_max

  (** val set_induction_min :
      (S.t -> __ -> 'a1) -> (S.t -> S.t -> 'a1 -> S.SE.t -> __ -> __ -> 'a1)
      -> S.t -> 'a1 **)

  let set_induction_min =
    OP.set_induction_min

  (** val memP : S.elt -> S.t -> reflect **)

  let memP x s =
    let _evar_0_ = fun _ -> ReflectT in
    let _evar_0_0 = fun _ -> ReflectF in
    if S.mem x s then _evar_0_ __ else _evar_0_0 __

  (** val disjoint : S.t -> S.t -> bool **)

  let disjoint s1 s2 =
    S.is_empty (S.inter s1 s2)
 end

module MakeTreeSet' =
 functor (X:SsrOrder.SsrOrder) ->
 struct
  module SE = X

  module X' =
   struct
    type t = Equality.sort

    (** val eq_dec : Equality.sort -> Equality.sort -> bool **)

    let eq_dec =
      X.eq_dec

    (** val compare : Equality.sort -> Equality.sort -> comparison **)

    let compare x y =
      match X.compare x y with
      | OrderedType.LT -> Lt
      | OrderedType.EQ -> Eq
      | OrderedType.GT -> Gt
   end

  module MSet = IntMake(Z_as_Int)(X')

  type elt = Equality.sort

  type t = MSet.t

  (** val empty : t **)

  let empty =
    MSet.empty

  (** val is_empty : t -> bool **)

  let is_empty =
    MSet.is_empty

  (** val mem : elt -> t -> bool **)

  let mem =
    MSet.mem

  (** val add : elt -> t -> t **)

  let add =
    MSet.add

  (** val singleton : elt -> t **)

  let singleton =
    MSet.singleton

  (** val remove : elt -> t -> t **)

  let remove =
    MSet.remove

  (** val union : t -> t -> t **)

  let union =
    MSet.union

  (** val inter : t -> t -> t **)

  let inter =
    MSet.inter

  (** val diff : t -> t -> t **)

  let diff =
    MSet.diff

  (** val eq_dec : t -> t -> bool **)

  let eq_dec =
    MSet.eq_dec

  (** val equal : t -> t -> bool **)

  let equal =
    MSet.equal

  (** val subset : t -> t -> bool **)

  let subset =
    MSet.subset

  (** val fold : (elt -> 'a1 -> 'a1) -> t -> 'a1 -> 'a1 **)

  let fold =
    MSet.fold

  (** val for_all : (elt -> bool) -> t -> bool **)

  let for_all =
    MSet.for_all

  (** val exists_ : (elt -> bool) -> t -> bool **)

  let exists_ =
    MSet.exists_

  (** val filter : (elt -> bool) -> t -> t **)

  let filter =
    MSet.filter

  (** val partition : (elt -> bool) -> t -> t * t **)

  let partition =
    MSet.partition

  (** val cardinal : t -> nat **)

  let cardinal =
    MSet.cardinal

  (** val elements : t -> elt list **)

  let elements =
    MSet.elements

  (** val choose : t -> elt option **)

  let choose =
    MSet.choose

  module MF =
   struct
    (** val eqb : Equality.sort -> Equality.sort -> bool **)

    let eqb x y =
      if MSet.E.eq_dec x y then true else false
   end

  (** val min_elt : t -> elt option **)

  let min_elt =
    MSet.min_elt

  (** val max_elt : t -> elt option **)

  let max_elt =
    MSet.max_elt

  (** val compare : t -> t -> t OrderedType.coq_Compare **)

  let compare s s' =
    let c = coq_CompSpec2Type s s' (MSet.compare s s') in
    (match c with
     | CompEqT -> OrderedType.EQ
     | CompLtT -> OrderedType.LT
     | CompGtT -> OrderedType.GT)

  module E =
   struct
    type t = Equality.sort

    (** val compare :
        Equality.sort -> Equality.sort -> Equality.sort
        OrderedType.coq_Compare **)

    let compare =
      X.compare

    (** val eq_dec : Equality.sort -> Equality.sort -> bool **)

    let eq_dec =
      X.eq_dec
   end
 end

module MakeTreeSet =
 functor (X:SsrOrder.SsrOrder) ->
 struct
  module TS = MakeTreeSet'(X)

  module Lemmas = SsrFSetLemmas(TS)

  module SE = X

  module X' = TS.X'

  module MSet = TS.MSet

  type elt = Equality.sort

  type t = MSet.t

  (** val empty : t **)

  let empty =
    MSet.empty

  (** val is_empty : t -> bool **)

  let is_empty =
    MSet.is_empty

  (** val mem : elt -> t -> bool **)

  let mem =
    MSet.mem

  (** val add : elt -> t -> t **)

  let add =
    MSet.add

  (** val singleton : elt -> t **)

  let singleton =
    MSet.singleton

  (** val remove : elt -> t -> t **)

  let remove =
    MSet.remove

  (** val union : t -> t -> t **)

  let union =
    MSet.union

  (** val inter : t -> t -> t **)

  let inter =
    MSet.inter

  (** val diff : t -> t -> t **)

  let diff =
    MSet.diff

  (** val eq_dec : t -> t -> bool **)

  let eq_dec =
    MSet.eq_dec

  (** val equal : t -> t -> bool **)

  let equal =
    MSet.equal

  (** val subset : t -> t -> bool **)

  let subset =
    MSet.subset

  (** val fold : (elt -> 'a1 -> 'a1) -> t -> 'a1 -> 'a1 **)

  let fold =
    MSet.fold

  (** val for_all : (elt -> bool) -> t -> bool **)

  let for_all =
    MSet.for_all

  (** val exists_ : (elt -> bool) -> t -> bool **)

  let exists_ =
    MSet.exists_

  (** val filter : (elt -> bool) -> t -> t **)

  let filter =
    MSet.filter

  (** val partition : (elt -> bool) -> t -> t * t **)

  let partition =
    MSet.partition

  (** val cardinal : t -> nat **)

  let cardinal =
    MSet.cardinal

  (** val elements : t -> elt list **)

  let elements =
    MSet.elements

  (** val choose : t -> elt option **)

  let choose =
    MSet.choose

  module MF = TS.MF

  (** val min_elt : t -> elt option **)

  let min_elt =
    MSet.min_elt

  (** val max_elt : t -> elt option **)

  let max_elt =
    MSet.max_elt

  (** val compare : t -> t -> t OrderedType.coq_Compare **)

  let compare s s' =
    let c = coq_CompSpec2Type s s' (MSet.compare s s') in
    (match c with
     | CompEqT -> OrderedType.EQ
     | CompLtT -> OrderedType.LT
     | CompGtT -> OrderedType.GT)

  module E =
   struct
    type t = Equality.sort

    (** val compare :
        Equality.sort -> Equality.sort -> Equality.sort
        OrderedType.coq_Compare **)

    let compare =
      X.compare

    (** val eq_dec : Equality.sort -> Equality.sort -> bool **)

    let eq_dec =
      X.eq_dec
   end
 end

module MakeElementGenerator =
 functor (X:SsrFSet) ->
 functor (D:sig
  val default : Equality.sort
 end) ->
 functor (S:sig
  val succ : X.SE.t -> X.SE.t
 end) ->
 functor (L:sig
 end) ->
 struct
  (** val new_elt : X.t -> X.elt **)

  let new_elt s =
    match X.max_elt s with
    | Some v -> S.succ v
    | None -> D.default
 end

module MakeTreeSetWithNew =
 functor (X:SsrOrder.SsrOrderWithDefaultSucc) ->
 struct
  module S = MakeTreeSet(X)

  module TS = S.TS

  module Lemmas = S.Lemmas

  module SE = X

  module X' = TS.X'

  module MSet = TS.MSet

  type elt = Equality.sort

  type t = MSet.t

  (** val empty : t **)

  let empty =
    MSet.empty

  (** val is_empty : t -> bool **)

  let is_empty =
    MSet.is_empty

  (** val mem : elt -> t -> bool **)

  let mem =
    MSet.mem

  (** val add : elt -> t -> t **)

  let add =
    MSet.add

  (** val singleton : elt -> t **)

  let singleton =
    MSet.singleton

  (** val remove : elt -> t -> t **)

  let remove =
    MSet.remove

  (** val union : t -> t -> t **)

  let union =
    MSet.union

  (** val inter : t -> t -> t **)

  let inter =
    MSet.inter

  (** val diff : t -> t -> t **)

  let diff =
    MSet.diff

  (** val eq_dec : t -> t -> bool **)

  let eq_dec =
    MSet.eq_dec

  (** val equal : t -> t -> bool **)

  let equal =
    MSet.equal

  (** val subset : t -> t -> bool **)

  let subset =
    MSet.subset

  (** val fold : (elt -> 'a1 -> 'a1) -> t -> 'a1 -> 'a1 **)

  let fold =
    MSet.fold

  (** val for_all : (elt -> bool) -> t -> bool **)

  let for_all =
    MSet.for_all

  (** val exists_ : (elt -> bool) -> t -> bool **)

  let exists_ =
    MSet.exists_

  (** val filter : (elt -> bool) -> t -> t **)

  let filter =
    MSet.filter

  (** val partition : (elt -> bool) -> t -> t * t **)

  let partition =
    MSet.partition

  (** val cardinal : t -> nat **)

  let cardinal =
    MSet.cardinal

  (** val elements : t -> elt list **)

  let elements =
    MSet.elements

  (** val choose : t -> elt option **)

  let choose =
    MSet.choose

  module MF = TS.MF

  (** val min_elt : t -> elt option **)

  let min_elt =
    MSet.min_elt

  (** val max_elt : t -> elt option **)

  let max_elt =
    MSet.max_elt

  (** val compare : t -> t -> t OrderedType.coq_Compare **)

  let compare s s' =
    let c = coq_CompSpec2Type s s' (MSet.compare s s') in
    (match c with
     | CompEqT -> OrderedType.EQ
     | CompLtT -> OrderedType.LT
     | CompGtT -> OrderedType.GT)

  module E =
   struct
    type t = Equality.sort

    (** val compare :
        Equality.sort -> Equality.sort -> Equality.sort
        OrderedType.coq_Compare **)

    let compare =
      X.compare

    (** val eq_dec : Equality.sort -> Equality.sort -> bool **)

    let eq_dec =
      X.eq_dec
   end

  module G = MakeElementGenerator(S)(X)(X)(X)

  (** val new_elt : S.t -> S.elt **)

  let new_elt s =
    match S.max_elt s with
    | Some v -> X.succ v
    | None -> X.default
 end
