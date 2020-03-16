open Datatypes
open FMapInterface
open List0

type __ = Obj.t
let __ = let rec f _ = Obj.repr f in Obj.repr f

module WFacts_fun =
 functor (E:DecidableType.DecidableType) ->
 functor (M:sig
  type key = E.t

  type 'x t

  val empty : 'a1 t

  val is_empty : 'a1 t -> bool

  val add : key -> 'a1 -> 'a1 t -> 'a1 t

  val find : key -> 'a1 t -> 'a1 option

  val remove : key -> 'a1 t -> 'a1 t

  val mem : key -> 'a1 t -> bool

  val map : ('a1 -> 'a2) -> 'a1 t -> 'a2 t

  val mapi : (key -> 'a1 -> 'a2) -> 'a1 t -> 'a2 t

  val map2 :
    ('a1 option -> 'a2 option -> 'a3 option) -> 'a1 t -> 'a2 t -> 'a3 t

  val elements : 'a1 t -> (key * 'a1) list

  val cardinal : 'a1 t -> nat

  val fold : (key -> 'a1 -> 'a2 -> 'a2) -> 'a1 t -> 'a2 -> 'a2

  val equal : ('a1 -> 'a1 -> bool) -> 'a1 t -> 'a1 t -> bool
 end) ->
 struct
  (** val eqb : E.t -> E.t -> bool **)

  let eqb x y =
    if E.eq_dec x y then true else false

  (** val coq_In_dec : 'a1 M.t -> M.key -> bool **)

  let coq_In_dec m x =
    let b = M.mem x m in if b then true else false
 end

module WFacts =
 functor (M:WS) ->
 WFacts_fun(M.E)(M)

module Facts = WFacts

module WProperties_fun =
 functor (E:DecidableType.DecidableType) ->
 functor (M:sig
  type key = E.t

  type 'x t

  val empty : 'a1 t

  val is_empty : 'a1 t -> bool

  val add : key -> 'a1 -> 'a1 t -> 'a1 t

  val find : key -> 'a1 t -> 'a1 option

  val remove : key -> 'a1 t -> 'a1 t

  val mem : key -> 'a1 t -> bool

  val map : ('a1 -> 'a2) -> 'a1 t -> 'a2 t

  val mapi : (key -> 'a1 -> 'a2) -> 'a1 t -> 'a2 t

  val map2 :
    ('a1 option -> 'a2 option -> 'a3 option) -> 'a1 t -> 'a2 t -> 'a3 t

  val elements : 'a1 t -> (key * 'a1) list

  val cardinal : 'a1 t -> nat

  val fold : (key -> 'a1 -> 'a2 -> 'a2) -> 'a1 t -> 'a2 -> 'a2

  val equal : ('a1 -> 'a1 -> bool) -> 'a1 t -> 'a1 t -> bool
 end) ->
 struct
  module F = WFacts_fun(E)(M)

  (** val uncurry : ('a1 -> 'a2 -> 'a3) -> ('a1 * 'a2) -> 'a3 **)

  let uncurry f p =
    f (fst p) (snd p)

  (** val of_list : (M.key * 'a1) list -> 'a1 M.t **)

  let of_list l =
    fold_right (uncurry M.add) M.empty l

  (** val to_list : 'a1 M.t -> (M.key * 'a1) list **)

  let to_list =
    M.elements

  (** val fold_rec :
      (M.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 M.t -> ('a1 M.t -> __ ->
      'a3) -> (M.key -> 'a1 -> 'a2 -> 'a1 M.t -> 'a1 M.t -> __ -> __ -> __ ->
      'a3 -> 'a3) -> 'a3 **)

  let fold_rec f i m hempty hstep =
    let f0 = uncurry f in
    let l = rev (M.elements m) in
    let hstep' = fun k e a m' m'' x ->
      hstep (fst (k, e)) (snd (k, e)) a m' m'' __ __ __ x
    in
    let rec f1 l0 hstep'0 m0 =
      match l0 with
      | [] -> hempty m0 __
      | y :: l1 ->
        let (k, e) = y in
        hstep'0 k e (fold_right f0 i l1) (of_list l1) m0 __ __ __
          (f1 l1 (fun k0 e0 a m' m'' _ _ _ x ->
            hstep'0 k0 e0 a m' m'' __ __ __ x) (of_list l1))
    in f1 l (fun k e a m' m'' _ _ _ x -> hstep' k e a m' m'' x) m

  (** val fold_rec_bis :
      (M.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 M.t -> ('a1 M.t -> 'a1 M.t
      -> 'a2 -> __ -> 'a3 -> 'a3) -> 'a3 -> (M.key -> 'a1 -> 'a2 -> 'a1 M.t
      -> __ -> __ -> 'a3 -> 'a3) -> 'a3 **)

  let fold_rec_bis f i m pmorphism pempty pstep =
    fold_rec f i m (fun m0 _ -> pmorphism M.empty m0 i __ pempty)
      (fun k e a m' m'' _ _ _ x ->
      pmorphism (M.add k e m') m'' (f k e a) __ (pstep k e a m' __ __ x))

  (** val fold_rec_nodep :
      (M.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 M.t -> 'a3 -> (M.key -> 'a1
      -> 'a2 -> __ -> 'a3 -> 'a3) -> 'a3 **)

  let fold_rec_nodep f i m x x0 =
    fold_rec_bis f i m (fun _ _ _ _ x1 -> x1) x (fun k e a _ _ _ x1 ->
      x0 k e a __ x1)

  (** val fold_rec_weak :
      (M.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> ('a1 M.t -> 'a1 M.t -> 'a2 -> __
      -> 'a3 -> 'a3) -> 'a3 -> (M.key -> 'a1 -> 'a2 -> 'a1 M.t -> __ -> 'a3
      -> 'a3) -> 'a1 M.t -> 'a3 **)

  let fold_rec_weak f i x x0 x1 m =
    fold_rec_bis f i m x x0 (fun k e a m' _ _ x2 -> x1 k e a m' __ x2)

  (** val fold_rel :
      (M.key -> 'a1 -> 'a2 -> 'a2) -> (M.key -> 'a1 -> 'a3 -> 'a3) -> 'a2 ->
      'a3 -> 'a1 M.t -> 'a4 -> (M.key -> 'a1 -> 'a2 -> 'a3 -> __ -> 'a4 ->
      'a4) -> 'a4 **)

  let fold_rel f g i j m rempty rstep =
    let l = rev (M.elements m) in
    let rstep' = fun k e a b x -> rstep k e a b __ x in
    let rec f0 l0 rstep'0 =
      match l0 with
      | [] -> rempty
      | y :: l1 ->
        rstep'0 (fst y) (snd y) (fold_right (uncurry f) i l1)
          (fold_right (uncurry g) j l1) __
          (f0 l1 (fun k e a0 b _ x -> rstep'0 k e a0 b __ x))
    in f0 l (fun k e a b _ x -> rstep' k e a b x)

  (** val map_induction :
      ('a1 M.t -> __ -> 'a2) -> ('a1 M.t -> 'a1 M.t -> 'a2 -> M.key -> 'a1 ->
      __ -> __ -> 'a2) -> 'a1 M.t -> 'a2 **)

  let map_induction x x0 m =
    fold_rec (fun _ _ _ -> ()) () m x (fun k e _ m' m'' _ _ _ x1 ->
      x0 m' m'' x1 k e __ __)

  (** val map_induction_bis :
      ('a1 M.t -> 'a1 M.t -> __ -> 'a2 -> 'a2) -> 'a2 -> (M.key -> 'a1 -> 'a1
      M.t -> __ -> 'a2 -> 'a2) -> 'a1 M.t -> 'a2 **)

  let map_induction_bis x x0 x1 m =
    fold_rec_bis (fun _ _ _ -> ()) () m (fun m0 m' _ _ x2 -> x m0 m' __ x2)
      x0 (fun k e _ m' _ _ x2 -> x1 k e m' __ x2)

  (** val cardinal_inv_2 : 'a1 M.t -> nat -> (M.key * 'a1) **)

  let cardinal_inv_2 m _ =
    let l = M.elements m in
    (match l with
     | [] -> assert false (* absurd case *)
     | p :: _ -> p)

  (** val cardinal_inv_2b : 'a1 M.t -> (M.key * 'a1) **)

  let cardinal_inv_2b m =
    let n = M.cardinal m in
    let x = fun x -> cardinal_inv_2 m x in
    (match n with
     | O -> assert false (* absurd case *)
     | S n0 -> x n0)

  (** val filter : (M.key -> 'a1 -> bool) -> 'a1 M.t -> 'a1 M.t **)

  let filter f m =
    M.fold (fun k e m0 -> if f k e then M.add k e m0 else m0) m M.empty

  (** val for_all : (M.key -> 'a1 -> bool) -> 'a1 M.t -> bool **)

  let for_all f m =
    M.fold (fun k e b -> if f k e then b else false) m true

  (** val exists_ : (M.key -> 'a1 -> bool) -> 'a1 M.t -> bool **)

  let exists_ f m =
    M.fold (fun k e b -> if f k e then true else b) m false

  (** val partition :
      (M.key -> 'a1 -> bool) -> 'a1 M.t -> 'a1 M.t * 'a1 M.t **)

  let partition f m =
    ((filter f m), (filter (fun k e -> negb (f k e)) m))

  (** val update : 'a1 M.t -> 'a1 M.t -> 'a1 M.t **)

  let update m1 m2 =
    M.fold M.add m2 m1

  (** val restrict : 'a1 M.t -> 'a1 M.t -> 'a1 M.t **)

  let restrict m1 m2 =
    filter (fun k _ -> M.mem k m2) m1

  (** val diff : 'a1 M.t -> 'a1 M.t -> 'a1 M.t **)

  let diff m1 m2 =
    filter (fun k _ -> negb (M.mem k m2)) m1

  (** val coq_Partition_In :
      'a1 M.t -> 'a1 M.t -> 'a1 M.t -> M.key -> bool **)

  let coq_Partition_In _ m1 _ k =
    F.coq_In_dec m1 k

  (** val update_dec : 'a1 M.t -> 'a1 M.t -> M.key -> 'a1 -> bool **)

  let update_dec _ m' k _ =
    F.coq_In_dec m' k

  (** val filter_dom : (M.key -> bool) -> 'a1 M.t -> 'a1 M.t **)

  let filter_dom f =
    filter (fun k _ -> f k)

  (** val filter_range : ('a1 -> bool) -> 'a1 M.t -> 'a1 M.t **)

  let filter_range f =
    filter (fun _ -> f)

  (** val for_all_dom : (M.key -> bool) -> 'a1 M.t -> bool **)

  let for_all_dom f =
    for_all (fun k _ -> f k)

  (** val for_all_range : ('a1 -> bool) -> 'a1 M.t -> bool **)

  let for_all_range f =
    for_all (fun _ -> f)

  (** val exists_dom : (M.key -> bool) -> 'a1 M.t -> bool **)

  let exists_dom f =
    exists_ (fun k _ -> f k)

  (** val exists_range : ('a1 -> bool) -> 'a1 M.t -> bool **)

  let exists_range f =
    exists_ (fun _ -> f)

  (** val partition_dom : (M.key -> bool) -> 'a1 M.t -> 'a1 M.t * 'a1 M.t **)

  let partition_dom f =
    partition (fun k _ -> f k)

  (** val partition_range : ('a1 -> bool) -> 'a1 M.t -> 'a1 M.t * 'a1 M.t **)

  let partition_range f =
    partition (fun _ -> f)
 end

module WProperties =
 functor (M:WS) ->
 WProperties_fun(M.E)(M)

module Properties = WProperties

module OrdProperties =
 functor (M:S) ->
 struct
  module ME = OrderedType.OrderedTypeFacts(M.E)

  module O = OrderedType.KeyOrderedType(M.E)

  module P = Properties(M)

  (** val gtb : (M.key * 'a1) -> (M.key * 'a1) -> bool **)

  let gtb p p' =
    match M.E.compare (fst p) (fst p') with
    | OrderedType.GT -> true
    | _ -> false

  (** val leb : (M.key * 'a1) -> (M.key * 'a1) -> bool **)

  let leb p p' =
    negb (gtb p p')

  (** val elements_lt : (M.key * 'a1) -> 'a1 M.t -> (M.key * 'a1) list **)

  let elements_lt p m =
    filter (gtb p) (M.elements m)

  (** val elements_ge : (M.key * 'a1) -> 'a1 M.t -> (M.key * 'a1) list **)

  let elements_ge p m =
    filter (leb p) (M.elements m)

  (** val max_elt_aux : (M.key * 'a1) list -> (M.key * 'a1) option **)

  let rec max_elt_aux = function
  | [] -> None
  | p :: l0 -> (match l0 with
                | [] -> Some p
                | _ :: _ -> max_elt_aux l0)

  (** val max_elt : 'a1 M.t -> (M.key * 'a1) option **)

  let max_elt m =
    max_elt_aux (M.elements m)

  (** val min_elt : 'a1 M.t -> (M.key * 'a1) option **)

  let min_elt m =
    match M.elements m with
    | [] -> None
    | p :: _ -> Some p

  (** val map_induction_max :
      ('a1 M.t -> __ -> 'a2) -> ('a1 M.t -> 'a1 M.t -> 'a2 -> M.E.t -> 'a1 ->
      __ -> __ -> 'a2) -> 'a1 M.t -> 'a2 **)

  let map_induction_max x x0 m =
    let n = M.cardinal m in
    let rec f n0 m0 =
      match n0 with
      | O -> x m0 __
      | S n1 ->
        (match max_elt m0 with
         | Some p ->
           let (k, e) = p in
           x0 (M.remove k m0) m0 (f n1 (M.remove k m0)) k e __ __
         | None -> x m0 __)
    in f n m

  (** val map_induction_min :
      ('a1 M.t -> __ -> 'a2) -> ('a1 M.t -> 'a1 M.t -> 'a2 -> M.E.t -> 'a1 ->
      __ -> __ -> 'a2) -> 'a1 M.t -> 'a2 **)

  let map_induction_min x x0 m =
    let n = M.cardinal m in
    let rec f n0 m0 =
      match n0 with
      | O -> x m0 __
      | S n1 ->
        (match min_elt m0 with
         | Some p ->
           let (k, e) = p in
           x0 (M.remove k m0) m0 (f n1 (M.remove k m0)) k e __ __
         | None -> x m0 __)
    in f n m
 end
