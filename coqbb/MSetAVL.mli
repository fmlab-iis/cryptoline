open Datatypes
open Int0
open MSetInterface
open Nat0
open Orders
open OrdersFacts

module MakeRaw :
 functor (I:Int) ->
 functor (X:OrderedType) ->
 sig
  type elt = X.t

  type tree =
  | Leaf
  | Node of I.t * tree * X.t * tree

  val empty : tree

  val is_empty : tree -> bool

  val mem : X.t -> tree -> bool

  val min_elt : tree -> elt option

  val max_elt : tree -> elt option

  val choose : tree -> elt option

  val fold : (elt -> 'a1 -> 'a1) -> tree -> 'a1 -> 'a1

  val elements_aux : X.t list -> tree -> X.t list

  val elements : tree -> X.t list

  val rev_elements_aux : X.t list -> tree -> X.t list

  val rev_elements : tree -> X.t list

  val cardinal : tree -> nat

  val maxdepth : tree -> nat

  val mindepth : tree -> nat

  val for_all : (elt -> bool) -> tree -> bool

  val exists_ : (elt -> bool) -> tree -> bool

  type enumeration =
  | End
  | More of elt * tree * enumeration

  val cons : tree -> enumeration -> enumeration

  val compare_more :
    X.t -> (enumeration -> comparison) -> enumeration -> comparison

  val compare_cont :
    tree -> (enumeration -> comparison) -> enumeration -> comparison

  val compare_end : enumeration -> comparison

  val compare : tree -> tree -> comparison

  val equal : tree -> tree -> bool

  val subsetl : (tree -> bool) -> X.t -> tree -> bool

  val subsetr : (tree -> bool) -> X.t -> tree -> bool

  val subset : tree -> tree -> bool

  type t = tree

  val height : t -> I.t

  val singleton : X.t -> tree

  val create : t -> X.t -> t -> tree

  val assert_false : t -> X.t -> t -> tree

  val bal : t -> X.t -> t -> tree

  val add : X.t -> tree -> tree

  val join : tree -> elt -> t -> t

  val remove_min : tree -> elt -> t -> t * elt

  val merge : tree -> tree -> tree

  val remove : X.t -> tree -> tree

  val concat : tree -> tree -> tree

  type triple = { t_left : t; t_in : bool; t_right : t }

  val t_left : triple -> t

  val t_in : triple -> bool

  val t_right : triple -> t

  val split : X.t -> tree -> triple

  val inter : tree -> tree -> tree

  val diff : tree -> tree -> tree

  val union : tree -> tree -> tree

  val filter : (elt -> bool) -> tree -> tree

  val partition : (elt -> bool) -> t -> t * t

  val ltb_tree : X.t -> tree -> bool

  val gtb_tree : X.t -> tree -> bool

  val isok : tree -> bool

  module MX :
   sig
    module OrderTac :
     sig
      module OTF :
       sig
        type t = X.t

        val compare : t -> t -> comparison

        val eq_dec : t -> t -> bool
       end

      module TO :
       sig
        type t = OTF.t

        val compare : t -> t -> comparison

        val eq_dec : t -> t -> bool
       end
     end

    val eq_dec : X.t -> X.t -> bool

    val lt_dec : X.t -> X.t -> bool

    val eqb : X.t -> X.t -> bool
   end

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

  module L :
   sig
    module MO :
     sig
      module OrderTac :
       sig
        module OTF :
         sig
          type t = X.t

          val compare : t -> t -> comparison

          val eq_dec : t -> t -> bool
         end

        module TO :
         sig
          type t = OTF.t

          val compare : t -> t -> comparison

          val eq_dec : t -> t -> bool
         end
       end

      val eq_dec : X.t -> X.t -> bool

      val lt_dec : X.t -> X.t -> bool

      val eqb : X.t -> X.t -> bool
     end
   end

  val flatten_e : enumeration -> elt list

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

module IntMake :
 functor (I:Int) ->
 functor (X:OrderedType) ->
 sig
  module Raw :
   sig
    type elt = X.t

    type tree =
    | Leaf
    | Node of I.t * tree * X.t * tree

    val empty : tree

    val is_empty : tree -> bool

    val mem : X.t -> tree -> bool

    val min_elt : tree -> elt option

    val max_elt : tree -> elt option

    val choose : tree -> elt option

    val fold : (elt -> 'a1 -> 'a1) -> tree -> 'a1 -> 'a1

    val elements_aux : X.t list -> tree -> X.t list

    val elements : tree -> X.t list

    val rev_elements_aux : X.t list -> tree -> X.t list

    val rev_elements : tree -> X.t list

    val cardinal : tree -> nat

    val maxdepth : tree -> nat

    val mindepth : tree -> nat

    val for_all : (elt -> bool) -> tree -> bool

    val exists_ : (elt -> bool) -> tree -> bool

    type enumeration =
    | End
    | More of elt * tree * enumeration

    val cons : tree -> enumeration -> enumeration

    val compare_more :
      X.t -> (enumeration -> comparison) -> enumeration -> comparison

    val compare_cont :
      tree -> (enumeration -> comparison) -> enumeration -> comparison

    val compare_end : enumeration -> comparison

    val compare : tree -> tree -> comparison

    val equal : tree -> tree -> bool

    val subsetl : (tree -> bool) -> X.t -> tree -> bool

    val subsetr : (tree -> bool) -> X.t -> tree -> bool

    val subset : tree -> tree -> bool

    type t = tree

    val height : t -> I.t

    val singleton : X.t -> tree

    val create : t -> X.t -> t -> tree

    val assert_false : t -> X.t -> t -> tree

    val bal : t -> X.t -> t -> tree

    val add : X.t -> tree -> tree

    val join : tree -> elt -> t -> t

    val remove_min : tree -> elt -> t -> t * elt

    val merge : tree -> tree -> tree

    val remove : X.t -> tree -> tree

    val concat : tree -> tree -> tree

    type triple = { t_left : t; t_in : bool; t_right : t }

    val t_left : triple -> t

    val t_in : triple -> bool

    val t_right : triple -> t

    val split : X.t -> tree -> triple

    val inter : tree -> tree -> tree

    val diff : tree -> tree -> tree

    val union : tree -> tree -> tree

    val filter : (elt -> bool) -> tree -> tree

    val partition : (elt -> bool) -> t -> t * t

    val ltb_tree : X.t -> tree -> bool

    val gtb_tree : X.t -> tree -> bool

    val isok : tree -> bool

    module MX :
     sig
      module OrderTac :
       sig
        module OTF :
         sig
          type t = X.t

          val compare : t -> t -> comparison

          val eq_dec : t -> t -> bool
         end

        module TO :
         sig
          type t = OTF.t

          val compare : t -> t -> comparison

          val eq_dec : t -> t -> bool
         end
       end

      val eq_dec : X.t -> X.t -> bool

      val lt_dec : X.t -> X.t -> bool

      val eqb : X.t -> X.t -> bool
     end

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

    module L :
     sig
      module MO :
       sig
        module OrderTac :
         sig
          module OTF :
           sig
            type t = X.t

            val compare : t -> t -> comparison

            val eq_dec : t -> t -> bool
           end

          module TO :
           sig
            type t = OTF.t

            val compare : t -> t -> comparison

            val eq_dec : t -> t -> bool
           end
         end

        val eq_dec : X.t -> X.t -> bool

        val lt_dec : X.t -> X.t -> bool

        val eqb : X.t -> X.t -> bool
       end
     end

    val flatten_e : enumeration -> elt list

    type coq_R_bal =
    | R_bal_0 of t * X.t * t
    | R_bal_1 of t * X.t * t * I.t * tree * X.t * tree
    | R_bal_2 of t * X.t * t * I.t * tree * X.t * tree
    | R_bal_3 of t * X.t * t * I.t * tree * X.t * tree * I.t * tree * 
       X.t * tree
    | R_bal_4 of t * X.t * t
    | R_bal_5 of t * X.t * t * I.t * tree * X.t * tree
    | R_bal_6 of t * X.t * t * I.t * tree * X.t * tree
    | R_bal_7 of t * X.t * t * I.t * tree * X.t * tree * I.t * tree * 
       X.t * tree
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

  module E :
   sig
    type t = X.t

    val compare : t -> t -> comparison

    val eq_dec : t -> t -> bool
   end

  type elt = X.t

  type t_ = Raw.t
    (* singleton inductive, whose constructor was Mkt *)

  val this : t_ -> Raw.t

  type t = t_

  val mem : elt -> t -> bool

  val add : elt -> t -> t

  val remove : elt -> t -> t

  val singleton : elt -> t

  val union : t -> t -> t

  val inter : t -> t -> t

  val diff : t -> t -> t

  val equal : t -> t -> bool

  val subset : t -> t -> bool

  val empty : t

  val is_empty : t -> bool

  val elements : t -> elt list

  val choose : t -> elt option

  val fold : (elt -> 'a1 -> 'a1) -> t -> 'a1 -> 'a1

  val cardinal : t -> nat

  val filter : (elt -> bool) -> t -> t

  val for_all : (elt -> bool) -> t -> bool

  val exists_ : (elt -> bool) -> t -> bool

  val partition : (elt -> bool) -> t -> t * t

  val eq_dec : t -> t -> bool

  val compare : t -> t -> comparison

  val min_elt : t -> elt option

  val max_elt : t -> elt option
 end
