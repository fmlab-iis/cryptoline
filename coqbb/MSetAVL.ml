open Datatypes
open Int0
open MSetInterface
open Nat0
open Orders
open OrdersFacts

module MakeRaw =
 functor (I:Int) ->
 functor (X:OrderedType) ->
 struct
  type elt = X.t

  type tree =
  | Leaf
  | Node of I.t * tree * X.t * tree

  (** val empty : tree **)

  let empty =
    Leaf

  (** val is_empty : tree -> bool **)

  let is_empty = function
  | Leaf -> true
  | Node (_, _, _, _) -> false

  (** val mem : X.t -> tree -> bool **)

  let rec mem x = function
  | Leaf -> false
  | Node (_, l, k, r) ->
    (match X.compare x k with
     | Eq -> true
     | Lt -> mem x l
     | Gt -> mem x r)

  (** val min_elt : tree -> elt option **)

  let rec min_elt = function
  | Leaf -> None
  | Node (_, l, x, _) ->
    (match l with
     | Leaf -> Some x
     | Node (_, _, _, _) -> min_elt l)

  (** val max_elt : tree -> elt option **)

  let rec max_elt = function
  | Leaf -> None
  | Node (_, _, x, r) ->
    (match r with
     | Leaf -> Some x
     | Node (_, _, _, _) -> max_elt r)

  (** val choose : tree -> elt option **)

  let choose =
    min_elt

  (** val fold : (elt -> 'a1 -> 'a1) -> tree -> 'a1 -> 'a1 **)

  let rec fold f t0 base =
    match t0 with
    | Leaf -> base
    | Node (_, l, x, r) -> fold f r (f x (fold f l base))

  (** val elements_aux : X.t list -> tree -> X.t list **)

  let rec elements_aux acc = function
  | Leaf -> acc
  | Node (_, l, x, r) -> elements_aux (x :: (elements_aux acc r)) l

  (** val elements : tree -> X.t list **)

  let elements =
    elements_aux []

  (** val rev_elements_aux : X.t list -> tree -> X.t list **)

  let rec rev_elements_aux acc = function
  | Leaf -> acc
  | Node (_, l, x, r) -> rev_elements_aux (x :: (rev_elements_aux acc l)) r

  (** val rev_elements : tree -> X.t list **)

  let rev_elements =
    rev_elements_aux []

  (** val cardinal : tree -> nat **)

  let rec cardinal = function
  | Leaf -> O
  | Node (_, l, _, r) -> S (add (cardinal l) (cardinal r))

  (** val maxdepth : tree -> nat **)

  let rec maxdepth = function
  | Leaf -> O
  | Node (_, l, _, r) -> S (max (maxdepth l) (maxdepth r))

  (** val mindepth : tree -> nat **)

  let rec mindepth = function
  | Leaf -> O
  | Node (_, l, _, r) -> S (min (mindepth l) (mindepth r))

  (** val for_all : (elt -> bool) -> tree -> bool **)

  let rec for_all f = function
  | Leaf -> true
  | Node (_, l, x, r) ->
    if if f x then for_all f l else false then for_all f r else false

  (** val exists_ : (elt -> bool) -> tree -> bool **)

  let rec exists_ f = function
  | Leaf -> false
  | Node (_, l, x, r) ->
    if if f x then true else exists_ f l then true else exists_ f r

  type enumeration =
  | End
  | More of elt * tree * enumeration

  (** val cons : tree -> enumeration -> enumeration **)

  let rec cons s e =
    match s with
    | Leaf -> e
    | Node (_, l, x, r) -> cons l (More (x, r, e))

  (** val compare_more :
      X.t -> (enumeration -> comparison) -> enumeration -> comparison **)

  let compare_more x1 cont = function
  | End -> Gt
  | More (x2, r2, e3) ->
    (match X.compare x1 x2 with
     | Eq -> cont (cons r2 e3)
     | x -> x)

  (** val compare_cont :
      tree -> (enumeration -> comparison) -> enumeration -> comparison **)

  let rec compare_cont s1 cont e2 =
    match s1 with
    | Leaf -> cont e2
    | Node (_, l1, x1, r1) ->
      compare_cont l1 (compare_more x1 (compare_cont r1 cont)) e2

  (** val compare_end : enumeration -> comparison **)

  let compare_end = function
  | End -> Eq
  | More (_, _, _) -> Lt

  (** val compare : tree -> tree -> comparison **)

  let compare s1 s2 =
    compare_cont s1 compare_end (cons s2 End)

  (** val equal : tree -> tree -> bool **)

  let equal s1 s2 =
    match compare s1 s2 with
    | Eq -> true
    | _ -> false

  (** val subsetl : (tree -> bool) -> X.t -> tree -> bool **)

  let rec subsetl subset_l1 x1 s2 = match s2 with
  | Leaf -> false
  | Node (_, l2, x2, r2) ->
    (match X.compare x1 x2 with
     | Eq -> subset_l1 l2
     | Lt -> subsetl subset_l1 x1 l2
     | Gt -> if mem x1 r2 then subset_l1 s2 else false)

  (** val subsetr : (tree -> bool) -> X.t -> tree -> bool **)

  let rec subsetr subset_r1 x1 s2 = match s2 with
  | Leaf -> false
  | Node (_, l2, x2, r2) ->
    (match X.compare x1 x2 with
     | Eq -> subset_r1 r2
     | Lt -> if mem x1 l2 then subset_r1 s2 else false
     | Gt -> subsetr subset_r1 x1 r2)

  (** val subset : tree -> tree -> bool **)

  let rec subset s1 s2 =
    match s1 with
    | Leaf -> true
    | Node (_, l1, x1, r1) ->
      (match s2 with
       | Leaf -> false
       | Node (_, l2, x2, r2) ->
         (match X.compare x1 x2 with
          | Eq -> if subset l1 l2 then subset r1 r2 else false
          | Lt -> if subsetl (subset l1) x1 l2 then subset r1 s2 else false
          | Gt -> if subsetr (subset r1) x1 r2 then subset l1 s2 else false))

  type t = tree

  (** val height : t -> I.t **)

  let height = function
  | Leaf -> I._0
  | Node (h, _, _, _) -> h

  (** val singleton : X.t -> tree **)

  let singleton x =
    Node (I._1, Leaf, x, Leaf)

  (** val create : t -> X.t -> t -> tree **)

  let create l x r =
    Node ((I.add (I.max (height l) (height r)) I._1), l, x, r)

  (** val assert_false : t -> X.t -> t -> tree **)

  let assert_false =
    create

  (** val bal : t -> X.t -> t -> tree **)

  let bal l x r =
    let hl = height l in
    let hr = height r in
    if I.ltb (I.add hr I._2) hl
    then (match l with
          | Leaf -> assert_false l x r
          | Node (_, ll, lx, lr) ->
            if I.leb (height lr) (height ll)
            then create ll lx (create lr x r)
            else (match lr with
                  | Leaf -> assert_false l x r
                  | Node (_, lrl, lrx, lrr) ->
                    create (create ll lx lrl) lrx (create lrr x r)))
    else if I.ltb (I.add hl I._2) hr
         then (match r with
               | Leaf -> assert_false l x r
               | Node (_, rl, rx, rr) ->
                 if I.leb (height rl) (height rr)
                 then create (create l x rl) rx rr
                 else (match rl with
                       | Leaf -> assert_false l x r
                       | Node (_, rll, rlx, rlr) ->
                         create (create l x rll) rlx (create rlr rx rr)))
         else create l x r

  (** val add : X.t -> tree -> tree **)

  let rec add x = function
  | Leaf -> Node (I._1, Leaf, x, Leaf)
  | Node (h, l, y, r) ->
    (match X.compare x y with
     | Eq -> Node (h, l, y, r)
     | Lt -> bal (add x l) y r
     | Gt -> bal l y (add x r))

  (** val join : tree -> elt -> t -> t **)

  let rec join l = match l with
  | Leaf -> add
  | Node (lh, ll, lx, lr) ->
    (fun x ->
      let rec join_aux r = match r with
      | Leaf -> add x l
      | Node (rh, rl, rx, rr) ->
        if I.ltb (I.add rh I._2) lh
        then bal ll lx (join lr x r)
        else if I.ltb (I.add lh I._2) rh
             then bal (join_aux rl) rx rr
             else create l x r
      in join_aux)

  (** val remove_min : tree -> elt -> t -> t * elt **)

  let rec remove_min l x r =
    match l with
    | Leaf -> (r, x)
    | Node (_, ll, lx, lr) ->
      let (l', m) = remove_min ll lx lr in ((bal l' x r), m)

  (** val merge : tree -> tree -> tree **)

  let merge s1 s2 =
    match s1 with
    | Leaf -> s2
    | Node (_, _, _, _) ->
      (match s2 with
       | Leaf -> s1
       | Node (_, l2, x2, r2) ->
         let (s2', m) = remove_min l2 x2 r2 in bal s1 m s2')

  (** val remove : X.t -> tree -> tree **)

  let rec remove x = function
  | Leaf -> Leaf
  | Node (_, l, y, r) ->
    (match X.compare x y with
     | Eq -> merge l r
     | Lt -> bal (remove x l) y r
     | Gt -> bal l y (remove x r))

  (** val concat : tree -> tree -> tree **)

  let concat s1 s2 =
    match s1 with
    | Leaf -> s2
    | Node (_, _, _, _) ->
      (match s2 with
       | Leaf -> s1
       | Node (_, l2, x2, r2) ->
         let (s2', m) = remove_min l2 x2 r2 in join s1 m s2')

  type triple = { t_left : t; t_in : bool; t_right : t }

  (** val t_left : triple -> t **)

  let t_left t0 =
    t0.t_left

  (** val t_in : triple -> bool **)

  let t_in t0 =
    t0.t_in

  (** val t_right : triple -> t **)

  let t_right t0 =
    t0.t_right

  (** val split : X.t -> tree -> triple **)

  let rec split x = function
  | Leaf -> { t_left = Leaf; t_in = false; t_right = Leaf }
  | Node (_, l, y, r) ->
    (match X.compare x y with
     | Eq -> { t_left = l; t_in = true; t_right = r }
     | Lt ->
       let { t_left = ll; t_in = b; t_right = rl } = split x l in
       { t_left = ll; t_in = b; t_right = (join rl y r) }
     | Gt ->
       let { t_left = rl; t_in = b; t_right = rr } = split x r in
       { t_left = (join l y rl); t_in = b; t_right = rr })

  (** val inter : tree -> tree -> tree **)

  let rec inter s1 s2 =
    match s1 with
    | Leaf -> Leaf
    | Node (_, l1, x1, r1) ->
      (match s2 with
       | Leaf -> Leaf
       | Node (_, _, _, _) ->
         let { t_left = l2'; t_in = pres; t_right = r2' } = split x1 s2 in
         if pres
         then join (inter l1 l2') x1 (inter r1 r2')
         else concat (inter l1 l2') (inter r1 r2'))

  (** val diff : tree -> tree -> tree **)

  let rec diff s1 s2 =
    match s1 with
    | Leaf -> Leaf
    | Node (_, l1, x1, r1) ->
      (match s2 with
       | Leaf -> s1
       | Node (_, _, _, _) ->
         let { t_left = l2'; t_in = pres; t_right = r2' } = split x1 s2 in
         if pres
         then concat (diff l1 l2') (diff r1 r2')
         else join (diff l1 l2') x1 (diff r1 r2'))

  (** val union : tree -> tree -> tree **)

  let rec union s1 s2 =
    match s1 with
    | Leaf -> s2
    | Node (_, l1, x1, r1) ->
      (match s2 with
       | Leaf -> s1
       | Node (_, _, _, _) ->
         let { t_left = l2'; t_in = _; t_right = r2' } = split x1 s2 in
         join (union l1 l2') x1 (union r1 r2'))

  (** val filter : (elt -> bool) -> tree -> tree **)

  let rec filter f = function
  | Leaf -> Leaf
  | Node (_, l, x, r) ->
    let l' = filter f l in
    let r' = filter f r in if f x then join l' x r' else concat l' r'

  (** val partition : (elt -> bool) -> t -> t * t **)

  let rec partition f = function
  | Leaf -> (Leaf, Leaf)
  | Node (_, l, x, r) ->
    let (l1, l2) = partition f l in
    let (r1, r2) = partition f r in
    if f x
    then ((join l1 x r1), (concat l2 r2))
    else ((concat l1 r1), (join l2 x r2))

  (** val ltb_tree : X.t -> tree -> bool **)

  let rec ltb_tree x = function
  | Leaf -> true
  | Node (_, l, y, r) ->
    (match X.compare x y with
     | Gt -> (&&) (ltb_tree x l) (ltb_tree x r)
     | _ -> false)

  (** val gtb_tree : X.t -> tree -> bool **)

  let rec gtb_tree x = function
  | Leaf -> true
  | Node (_, l, y, r) ->
    (match X.compare x y with
     | Lt -> (&&) (gtb_tree x l) (gtb_tree x r)
     | _ -> false)

  (** val isok : tree -> bool **)

  let rec isok = function
  | Leaf -> true
  | Node (_, l, x, r) ->
    (&&) ((&&) ((&&) (isok l) (isok r)) (ltb_tree x l)) (gtb_tree x r)

  module MX = OrderedTypeFacts(X)

  type coq_R_min_elt =
  | R_min_elt_0 of tree
  | R_min_elt_1 of tree * I.t * tree * X.t * tree
  | R_min_elt_2 of tree * I.t * tree * X.t * tree * I.t * tree * X.t * 
     tree * elt option * coq_R_min_elt

  type coq_R_max_elt =
  | R_max_elt_0 of tree
  | R_max_elt_1 of tree * I.t * tree * X.t * tree
  | R_max_elt_2 of tree * I.t * tree * X.t * tree * I.t * tree * X.t * 
     tree * elt option * coq_R_max_elt

  module L = MakeListOrdering(X)

  (** val flatten_e : enumeration -> elt list **)

  let rec flatten_e = function
  | End -> []
  | More (x, t0, r) -> x :: (app (elements t0) (flatten_e r))

  type coq_R_bal =
  | R_bal_0 of t * X.t * t
  | R_bal_1 of t * X.t * t * I.t * tree * X.t * tree
  | R_bal_2 of t * X.t * t * I.t * tree * X.t * tree
  | R_bal_3 of t * X.t * t * I.t * tree * X.t * tree * I.t * tree * X.t * tree
  | R_bal_4 of t * X.t * t
  | R_bal_5 of t * X.t * t * I.t * tree * X.t * tree
  | R_bal_6 of t * X.t * t * I.t * tree * X.t * tree
  | R_bal_7 of t * X.t * t * I.t * tree * X.t * tree * I.t * tree * X.t * tree
  | R_bal_8 of t * X.t * t

  type coq_R_remove_min =
  | R_remove_min_0 of tree * elt * t
  | R_remove_min_1 of tree * elt * t * I.t * tree * X.t * tree * (t * elt)
     * coq_R_remove_min * t * elt

  type coq_R_merge =
  | R_merge_0 of tree * tree
  | R_merge_1 of tree * tree * I.t * tree * X.t * tree
  | R_merge_2 of tree * tree * I.t * tree * X.t * tree * I.t * tree * 
     X.t * tree * t * elt

  type coq_R_concat =
  | R_concat_0 of tree * tree
  | R_concat_1 of tree * tree * I.t * tree * X.t * tree
  | R_concat_2 of tree * tree * I.t * tree * X.t * tree * I.t * tree * 
     X.t * tree * t * elt

  type coq_R_inter =
  | R_inter_0 of tree * tree
  | R_inter_1 of tree * tree * I.t * tree * X.t * tree
  | R_inter_2 of tree * tree * I.t * tree * X.t * tree * I.t * tree * 
     X.t * tree * t * bool * t * tree * coq_R_inter * tree * coq_R_inter
  | R_inter_3 of tree * tree * I.t * tree * X.t * tree * I.t * tree * 
     X.t * tree * t * bool * t * tree * coq_R_inter * tree * coq_R_inter

  type coq_R_diff =
  | R_diff_0 of tree * tree
  | R_diff_1 of tree * tree * I.t * tree * X.t * tree
  | R_diff_2 of tree * tree * I.t * tree * X.t * tree * I.t * tree * 
     X.t * tree * t * bool * t * tree * coq_R_diff * tree * coq_R_diff
  | R_diff_3 of tree * tree * I.t * tree * X.t * tree * I.t * tree * 
     X.t * tree * t * bool * t * tree * coq_R_diff * tree * coq_R_diff

  type coq_R_union =
  | R_union_0 of tree * tree
  | R_union_1 of tree * tree * I.t * tree * X.t * tree
  | R_union_2 of tree * tree * I.t * tree * X.t * tree * I.t * tree * 
     X.t * tree * t * bool * t * tree * coq_R_union * tree * coq_R_union
 end

module IntMake =
 functor (I:Int) ->
 functor (X:OrderedType) ->
 struct
  module Raw = MakeRaw(I)(X)

  module E =
   struct
    type t = X.t

    (** val compare : t -> t -> comparison **)

    let compare =
      X.compare

    (** val eq_dec : t -> t -> bool **)

    let eq_dec =
      X.eq_dec
   end

  type elt = X.t

  type t_ = Raw.t
    (* singleton inductive, whose constructor was Mkt *)

  (** val this : t_ -> Raw.t **)

  let this t0 =
    t0

  type t = t_

  (** val mem : elt -> t -> bool **)

  let mem x s =
    Raw.mem x (this s)

  (** val add : elt -> t -> t **)

  let add x s =
    Raw.add x (this s)

  (** val remove : elt -> t -> t **)

  let remove x s =
    Raw.remove x (this s)

  (** val singleton : elt -> t **)

  let singleton =
    Raw.singleton

  (** val union : t -> t -> t **)

  let union s s' =
    Raw.union (this s) (this s')

  (** val inter : t -> t -> t **)

  let inter s s' =
    Raw.inter (this s) (this s')

  (** val diff : t -> t -> t **)

  let diff s s' =
    Raw.diff (this s) (this s')

  (** val equal : t -> t -> bool **)

  let equal s s' =
    Raw.equal (this s) (this s')

  (** val subset : t -> t -> bool **)

  let subset s s' =
    Raw.subset (this s) (this s')

  (** val empty : t **)

  let empty =
    Raw.empty

  (** val is_empty : t -> bool **)

  let is_empty s =
    Raw.is_empty (this s)

  (** val elements : t -> elt list **)

  let elements s =
    Raw.elements (this s)

  (** val choose : t -> elt option **)

  let choose s =
    Raw.choose (this s)

  (** val fold : (elt -> 'a1 -> 'a1) -> t -> 'a1 -> 'a1 **)

  let fold f s =
    Raw.fold f (this s)

  (** val cardinal : t -> nat **)

  let cardinal s =
    Raw.cardinal (this s)

  (** val filter : (elt -> bool) -> t -> t **)

  let filter f s =
    Raw.filter f (this s)

  (** val for_all : (elt -> bool) -> t -> bool **)

  let for_all f s =
    Raw.for_all f (this s)

  (** val exists_ : (elt -> bool) -> t -> bool **)

  let exists_ f s =
    Raw.exists_ f (this s)

  (** val partition : (elt -> bool) -> t -> t * t **)

  let partition f s =
    let p = Raw.partition f (this s) in ((fst p), (snd p))

  (** val eq_dec : t -> t -> bool **)

  let eq_dec s0 s'0 =
    let b = Raw.equal s0 s'0 in if b then true else false

  (** val compare : t -> t -> comparison **)

  let compare s s' =
    Raw.compare (this s) (this s')

  (** val min_elt : t -> elt option **)

  let min_elt s =
    Raw.min_elt (this s)

  (** val max_elt : t -> elt option **)

  let max_elt s =
    Raw.max_elt (this s)
 end
