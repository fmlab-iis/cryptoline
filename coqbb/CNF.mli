open BinNat
open BinPos
open Bool
open Datatypes
open DecimalString
open FSets
open Int0
open NBitsDef
open String0
open ZAriths
open Eqtype
open Seq

type __ = Obj.t

type bvar = int

type literal =
| Pos of bvar
| Neg of bvar

val eq_lit : literal -> literal -> bool

val lit_eqP : literal -> literal -> reflect

val lit_eqMixin : literal Equality.mixin_of

val lit_eqType : Equality.coq_type

val var_tt : int

val lit_tt : literal

val lit_ff : literal

val lit_of_bool : bool -> literal

val var_of_lit : literal -> bvar

val neg_lit : literal -> literal

type word = literal list

type clause = literal list

type cnf = clause list

val splitlsl : word -> literal * literal list

val splitmsl : word -> literal list * literal

val droplsl : word -> word

val dropmsl : word -> word

val joinlsl : 'a1 -> 'a1 list -> 'a1 list

val joinmsl : 'a1 list -> 'a1 -> 'a1 list

val msl : word -> literal

val add_prelude : literal list list -> literal list list

module PS :
 sig
  module TS :
   sig
    module SE :
     sig
      val coq_T : Equality.coq_type

      type t = Equality.sort

      val ltn : t -> t -> bool

      val compare : t -> t -> t OrderedType.coq_Compare

      val eq_dec : t -> t -> bool
     end

    module X' :
     sig
      type t = Equality.sort

      val eq_dec : Equality.sort -> Equality.sort -> bool

      val compare : Equality.sort -> Equality.sort -> comparison
     end

    module MSet :
     sig
      module Raw :
       sig
        type elt = Equality.sort

        type tree =
        | Leaf
        | Node of Z_as_Int.t * tree * Equality.sort * tree

        val empty : tree

        val is_empty : tree -> bool

        val mem : Equality.sort -> tree -> bool

        val min_elt : tree -> elt option

        val max_elt : tree -> elt option

        val choose : tree -> elt option

        val fold : (elt -> 'a1 -> 'a1) -> tree -> 'a1 -> 'a1

        val elements_aux : Equality.sort list -> tree -> Equality.sort list

        val elements : tree -> Equality.sort list

        val rev_elements_aux :
          Equality.sort list -> tree -> Equality.sort list

        val rev_elements : tree -> Equality.sort list

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
          Equality.sort -> (enumeration -> comparison) -> enumeration ->
          comparison

        val compare_cont :
          tree -> (enumeration -> comparison) -> enumeration -> comparison

        val compare_end : enumeration -> comparison

        val compare : tree -> tree -> comparison

        val equal : tree -> tree -> bool

        val subsetl : (tree -> bool) -> Equality.sort -> tree -> bool

        val subsetr : (tree -> bool) -> Equality.sort -> tree -> bool

        val subset : tree -> tree -> bool

        type t = tree

        val height : t -> Z_as_Int.t

        val singleton : Equality.sort -> tree

        val create : t -> Equality.sort -> t -> tree

        val assert_false : t -> Equality.sort -> t -> tree

        val bal : t -> Equality.sort -> t -> tree

        val add : Equality.sort -> tree -> tree

        val join : tree -> elt -> t -> t

        val remove_min : tree -> elt -> t -> t * elt

        val merge : tree -> tree -> tree

        val remove : Equality.sort -> tree -> tree

        val concat : tree -> tree -> tree

        type triple = { t_left : t; t_in : bool; t_right : t }

        val t_left : triple -> t

        val t_in : triple -> bool

        val t_right : triple -> t

        val split : Equality.sort -> tree -> triple

        val inter : tree -> tree -> tree

        val diff : tree -> tree -> tree

        val union : tree -> tree -> tree

        val filter : (elt -> bool) -> tree -> tree

        val partition : (elt -> bool) -> t -> t * t

        val ltb_tree : Equality.sort -> tree -> bool

        val gtb_tree : Equality.sort -> tree -> bool

        val isok : tree -> bool

        module MX :
         sig
          module OrderTac :
           sig
            module OTF :
             sig
              type t = Equality.sort

              val compare : Equality.sort -> Equality.sort -> comparison

              val eq_dec : Equality.sort -> Equality.sort -> bool
             end

            module TO :
             sig
              type t = Equality.sort

              val compare : Equality.sort -> Equality.sort -> comparison

              val eq_dec : Equality.sort -> Equality.sort -> bool
             end
           end

          val eq_dec : Equality.sort -> Equality.sort -> bool

          val lt_dec : Equality.sort -> Equality.sort -> bool

          val eqb : Equality.sort -> Equality.sort -> bool
         end

        type coq_R_min_elt =
        | R_min_elt_0 of tree
        | R_min_elt_1 of tree * Z_as_Int.t * tree * Equality.sort * tree
        | R_min_elt_2 of tree * Z_as_Int.t * tree * Equality.sort * tree
           * Z_as_Int.t * tree * Equality.sort * tree * elt option
           * coq_R_min_elt

        type coq_R_max_elt =
        | R_max_elt_0 of tree
        | R_max_elt_1 of tree * Z_as_Int.t * tree * Equality.sort * tree
        | R_max_elt_2 of tree * Z_as_Int.t * tree * Equality.sort * tree
           * Z_as_Int.t * tree * Equality.sort * tree * elt option
           * coq_R_max_elt

        module L :
         sig
          module MO :
           sig
            module OrderTac :
             sig
              module OTF :
               sig
                type t = Equality.sort

                val compare : Equality.sort -> Equality.sort -> comparison

                val eq_dec : Equality.sort -> Equality.sort -> bool
               end

              module TO :
               sig
                type t = Equality.sort

                val compare : Equality.sort -> Equality.sort -> comparison

                val eq_dec : Equality.sort -> Equality.sort -> bool
               end
             end

            val eq_dec : Equality.sort -> Equality.sort -> bool

            val lt_dec : Equality.sort -> Equality.sort -> bool

            val eqb : Equality.sort -> Equality.sort -> bool
           end
         end

        val flatten_e : enumeration -> elt list

        type coq_R_bal =
        | R_bal_0 of t * Equality.sort * t
        | R_bal_1 of t * Equality.sort * t * Z_as_Int.t * tree
           * Equality.sort * tree
        | R_bal_2 of t * Equality.sort * t * Z_as_Int.t * tree
           * Equality.sort * tree
        | R_bal_3 of t * Equality.sort * t * Z_as_Int.t * tree
           * Equality.sort * tree * Z_as_Int.t * tree * Equality.sort * 
           tree
        | R_bal_4 of t * Equality.sort * t
        | R_bal_5 of t * Equality.sort * t * Z_as_Int.t * tree
           * Equality.sort * tree
        | R_bal_6 of t * Equality.sort * t * Z_as_Int.t * tree
           * Equality.sort * tree
        | R_bal_7 of t * Equality.sort * t * Z_as_Int.t * tree
           * Equality.sort * tree * Z_as_Int.t * tree * Equality.sort * 
           tree
        | R_bal_8 of t * Equality.sort * t

        type coq_R_remove_min =
        | R_remove_min_0 of tree * elt * t
        | R_remove_min_1 of tree * elt * t * Z_as_Int.t * tree
           * Equality.sort * tree * (t * elt) * coq_R_remove_min * t * 
           elt

        type coq_R_merge =
        | R_merge_0 of tree * tree
        | R_merge_1 of tree * tree * Z_as_Int.t * tree * Equality.sort * tree
        | R_merge_2 of tree * tree * Z_as_Int.t * tree * Equality.sort * 
           tree * Z_as_Int.t * tree * Equality.sort * tree * t * elt

        type coq_R_concat =
        | R_concat_0 of tree * tree
        | R_concat_1 of tree * tree * Z_as_Int.t * tree * Equality.sort * tree
        | R_concat_2 of tree * tree * Z_as_Int.t * tree * Equality.sort
           * tree * Z_as_Int.t * tree * Equality.sort * tree * t * elt

        type coq_R_inter =
        | R_inter_0 of tree * tree
        | R_inter_1 of tree * tree * Z_as_Int.t * tree * Equality.sort * tree
        | R_inter_2 of tree * tree * Z_as_Int.t * tree * Equality.sort * 
           tree * Z_as_Int.t * tree * Equality.sort * tree * t * bool * 
           t * tree * coq_R_inter * tree * coq_R_inter
        | R_inter_3 of tree * tree * Z_as_Int.t * tree * Equality.sort * 
           tree * Z_as_Int.t * tree * Equality.sort * tree * t * bool * 
           t * tree * coq_R_inter * tree * coq_R_inter

        type coq_R_diff =
        | R_diff_0 of tree * tree
        | R_diff_1 of tree * tree * Z_as_Int.t * tree * Equality.sort * tree
        | R_diff_2 of tree * tree * Z_as_Int.t * tree * Equality.sort * 
           tree * Z_as_Int.t * tree * Equality.sort * tree * t * bool * 
           t * tree * coq_R_diff * tree * coq_R_diff
        | R_diff_3 of tree * tree * Z_as_Int.t * tree * Equality.sort * 
           tree * Z_as_Int.t * tree * Equality.sort * tree * t * bool * 
           t * tree * coq_R_diff * tree * coq_R_diff

        type coq_R_union =
        | R_union_0 of tree * tree
        | R_union_1 of tree * tree * Z_as_Int.t * tree * Equality.sort * tree
        | R_union_2 of tree * tree * Z_as_Int.t * tree * Equality.sort * 
           tree * Z_as_Int.t * tree * Equality.sort * tree * t * bool * 
           t * tree * coq_R_union * tree * coq_R_union
       end

      module E :
       sig
        type t = Equality.sort

        val compare : Equality.sort -> Equality.sort -> comparison

        val eq_dec : Equality.sort -> Equality.sort -> bool
       end

      type elt = Equality.sort

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

    type elt = Equality.sort

    type t = MSet.t

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

    module MF :
     sig
      val eqb : Equality.sort -> Equality.sort -> bool
     end

    val min_elt : t -> elt option

    val max_elt : t -> elt option

    val compare : t -> t -> t OrderedType.coq_Compare

    module E :
     sig
      type t = Equality.sort

      val compare :
        Equality.sort -> Equality.sort -> Equality.sort
        OrderedType.coq_Compare

      val eq_dec : Equality.sort -> Equality.sort -> bool
     end
   end

  module Lemmas :
   sig
    module F :
     sig
      val eqb : TS.SE.t -> TS.SE.t -> bool
     end

    module OP :
     sig
      module ME :
       sig
        module TO :
         sig
          type t = TS.SE.t
         end

        module IsTO :
         sig
         end

        module OrderTac :
         sig
         end

        val eq_dec : TS.SE.t -> TS.SE.t -> bool

        val lt_dec : TS.SE.t -> TS.SE.t -> bool

        val eqb : TS.SE.t -> TS.SE.t -> bool
       end

      module P :
       sig
        module Dec :
         sig
          module F :
           sig
            val eqb : TS.SE.t -> TS.SE.t -> bool
           end

          module FSetLogicalFacts :
           sig
           end

          module FSetDecideAuxiliary :
           sig
           end

          module FSetDecideTestCases :
           sig
           end
         end

        module FM :
         sig
          val eqb : TS.SE.t -> TS.SE.t -> bool
         end

        val coq_In_dec : TS.elt -> TS.t -> bool

        val of_list : TS.elt list -> TS.t

        val to_list : TS.t -> TS.elt list

        val fold_rec :
          (TS.elt -> 'a1 -> 'a1) -> 'a1 -> TS.t -> (TS.t -> __ -> 'a2) ->
          (TS.elt -> 'a1 -> TS.t -> TS.t -> __ -> __ -> __ -> 'a2 -> 'a2) ->
          'a2

        val fold_rec_bis :
          (TS.elt -> 'a1 -> 'a1) -> 'a1 -> TS.t -> (TS.t -> TS.t -> 'a1 -> __
          -> 'a2 -> 'a2) -> 'a2 -> (TS.elt -> 'a1 -> TS.t -> __ -> __ -> 'a2
          -> 'a2) -> 'a2

        val fold_rec_nodep :
          (TS.elt -> 'a1 -> 'a1) -> 'a1 -> TS.t -> 'a2 -> (TS.elt -> 'a1 ->
          __ -> 'a2 -> 'a2) -> 'a2

        val fold_rec_weak :
          (TS.elt -> 'a1 -> 'a1) -> 'a1 -> (TS.t -> TS.t -> 'a1 -> __ -> 'a2
          -> 'a2) -> 'a2 -> (TS.elt -> 'a1 -> TS.t -> __ -> 'a2 -> 'a2) ->
          TS.t -> 'a2

        val fold_rel :
          (TS.elt -> 'a1 -> 'a1) -> (TS.elt -> 'a2 -> 'a2) -> 'a1 -> 'a2 ->
          TS.t -> 'a3 -> (TS.elt -> 'a1 -> 'a2 -> __ -> 'a3 -> 'a3) -> 'a3

        val set_induction :
          (TS.t -> __ -> 'a1) -> (TS.t -> TS.t -> 'a1 -> TS.elt -> __ -> __
          -> 'a1) -> TS.t -> 'a1

        val set_induction_bis :
          (TS.t -> TS.t -> __ -> 'a1 -> 'a1) -> 'a1 -> (TS.elt -> TS.t -> __
          -> 'a1 -> 'a1) -> TS.t -> 'a1

        val cardinal_inv_2 : TS.t -> nat -> TS.elt

        val cardinal_inv_2b : TS.t -> TS.elt
       end

      val gtb : TS.SE.t -> TS.SE.t -> bool

      val leb : TS.SE.t -> TS.SE.t -> bool

      val elements_lt : TS.SE.t -> TS.t -> TS.SE.t list

      val elements_ge : TS.SE.t -> TS.t -> TS.SE.t list

      val set_induction_max :
        (TS.t -> __ -> 'a1) -> (TS.t -> TS.t -> 'a1 -> TS.SE.t -> __ -> __ ->
        'a1) -> TS.t -> 'a1

      val set_induction_min :
        (TS.t -> __ -> 'a1) -> (TS.t -> TS.t -> 'a1 -> TS.SE.t -> __ -> __ ->
        'a1) -> TS.t -> 'a1
     end

    val eqb : TS.SE.t -> TS.SE.t -> bool

    module ME :
     sig
      module TO :
       sig
        type t = TS.SE.t
       end

      module IsTO :
       sig
       end

      module OrderTac :
       sig
       end

      val eq_dec : TS.SE.t -> TS.SE.t -> bool

      val lt_dec : TS.SE.t -> TS.SE.t -> bool

      val eqb : TS.SE.t -> TS.SE.t -> bool
     end

    module P :
     sig
      module Dec :
       sig
        module F :
         sig
          val eqb : TS.SE.t -> TS.SE.t -> bool
         end

        module FSetLogicalFacts :
         sig
         end

        module FSetDecideAuxiliary :
         sig
         end

        module FSetDecideTestCases :
         sig
         end
       end

      module FM :
       sig
        val eqb : TS.SE.t -> TS.SE.t -> bool
       end

      val coq_In_dec : TS.elt -> TS.t -> bool

      val of_list : TS.elt list -> TS.t

      val to_list : TS.t -> TS.elt list

      val fold_rec :
        (TS.elt -> 'a1 -> 'a1) -> 'a1 -> TS.t -> (TS.t -> __ -> 'a2) ->
        (TS.elt -> 'a1 -> TS.t -> TS.t -> __ -> __ -> __ -> 'a2 -> 'a2) -> 'a2

      val fold_rec_bis :
        (TS.elt -> 'a1 -> 'a1) -> 'a1 -> TS.t -> (TS.t -> TS.t -> 'a1 -> __
        -> 'a2 -> 'a2) -> 'a2 -> (TS.elt -> 'a1 -> TS.t -> __ -> __ -> 'a2 ->
        'a2) -> 'a2

      val fold_rec_nodep :
        (TS.elt -> 'a1 -> 'a1) -> 'a1 -> TS.t -> 'a2 -> (TS.elt -> 'a1 -> __
        -> 'a2 -> 'a2) -> 'a2

      val fold_rec_weak :
        (TS.elt -> 'a1 -> 'a1) -> 'a1 -> (TS.t -> TS.t -> 'a1 -> __ -> 'a2 ->
        'a2) -> 'a2 -> (TS.elt -> 'a1 -> TS.t -> __ -> 'a2 -> 'a2) -> TS.t ->
        'a2

      val fold_rel :
        (TS.elt -> 'a1 -> 'a1) -> (TS.elt -> 'a2 -> 'a2) -> 'a1 -> 'a2 ->
        TS.t -> 'a3 -> (TS.elt -> 'a1 -> 'a2 -> __ -> 'a3 -> 'a3) -> 'a3

      val set_induction :
        (TS.t -> __ -> 'a1) -> (TS.t -> TS.t -> 'a1 -> TS.elt -> __ -> __ ->
        'a1) -> TS.t -> 'a1

      val set_induction_bis :
        (TS.t -> TS.t -> __ -> 'a1 -> 'a1) -> 'a1 -> (TS.elt -> TS.t -> __ ->
        'a1 -> 'a1) -> TS.t -> 'a1

      val cardinal_inv_2 : TS.t -> nat -> TS.elt

      val cardinal_inv_2b : TS.t -> TS.elt
     end

    val gtb : TS.SE.t -> TS.SE.t -> bool

    val leb : TS.SE.t -> TS.SE.t -> bool

    val elements_lt : TS.SE.t -> TS.t -> TS.SE.t list

    val elements_ge : TS.SE.t -> TS.t -> TS.SE.t list

    val set_induction_max :
      (TS.t -> __ -> 'a1) -> (TS.t -> TS.t -> 'a1 -> TS.SE.t -> __ -> __ ->
      'a1) -> TS.t -> 'a1

    val set_induction_min :
      (TS.t -> __ -> 'a1) -> (TS.t -> TS.t -> 'a1 -> TS.SE.t -> __ -> __ ->
      'a1) -> TS.t -> 'a1

    val memP : TS.elt -> TS.t -> reflect

    val disjoint : TS.t -> TS.t -> bool
   end

  module SE :
   sig
    val coq_T : Equality.coq_type

    type t = Equality.sort

    val ltn : t -> t -> bool

    val compare : t -> t -> t OrderedType.coq_Compare

    val eq_dec : t -> t -> bool
   end

  module X' :
   sig
    type t = Equality.sort

    val eq_dec : Equality.sort -> Equality.sort -> bool

    val compare : Equality.sort -> Equality.sort -> comparison
   end

  module MSet :
   sig
    module Raw :
     sig
      type elt = Equality.sort

      type tree = TS.MSet.Raw.tree =
      | Leaf
      | Node of Z_as_Int.t * tree * Equality.sort * tree

      val empty : tree

      val is_empty : tree -> bool

      val mem : Equality.sort -> tree -> bool

      val min_elt : tree -> elt option

      val max_elt : tree -> elt option

      val choose : tree -> elt option

      val fold : (elt -> 'a1 -> 'a1) -> tree -> 'a1 -> 'a1

      val elements_aux : Equality.sort list -> tree -> Equality.sort list

      val elements : tree -> Equality.sort list

      val rev_elements_aux : Equality.sort list -> tree -> Equality.sort list

      val rev_elements : tree -> Equality.sort list

      val cardinal : tree -> nat

      val maxdepth : tree -> nat

      val mindepth : tree -> nat

      val for_all : (elt -> bool) -> tree -> bool

      val exists_ : (elt -> bool) -> tree -> bool

      type enumeration = TS.MSet.Raw.enumeration =
      | End
      | More of elt * tree * enumeration

      val cons : tree -> enumeration -> enumeration

      val compare_more :
        Equality.sort -> (enumeration -> comparison) -> enumeration ->
        comparison

      val compare_cont :
        tree -> (enumeration -> comparison) -> enumeration -> comparison

      val compare_end : enumeration -> comparison

      val compare : tree -> tree -> comparison

      val equal : tree -> tree -> bool

      val subsetl : (tree -> bool) -> Equality.sort -> tree -> bool

      val subsetr : (tree -> bool) -> Equality.sort -> tree -> bool

      val subset : tree -> tree -> bool

      type t = tree

      val height : t -> Z_as_Int.t

      val singleton : Equality.sort -> tree

      val create : t -> Equality.sort -> t -> tree

      val assert_false : t -> Equality.sort -> t -> tree

      val bal : t -> Equality.sort -> t -> tree

      val add : Equality.sort -> tree -> tree

      val join : tree -> elt -> t -> t

      val remove_min : tree -> elt -> t -> t * elt

      val merge : tree -> tree -> tree

      val remove : Equality.sort -> tree -> tree

      val concat : tree -> tree -> tree

      type triple = TS.MSet.Raw.triple = { t_left : t; t_in : bool;
                                           t_right : t }

      val t_left : triple -> t

      val t_in : triple -> bool

      val t_right : triple -> t

      val split : Equality.sort -> tree -> triple

      val inter : tree -> tree -> tree

      val diff : tree -> tree -> tree

      val union : tree -> tree -> tree

      val filter : (elt -> bool) -> tree -> tree

      val partition : (elt -> bool) -> t -> t * t

      val ltb_tree : Equality.sort -> tree -> bool

      val gtb_tree : Equality.sort -> tree -> bool

      val isok : tree -> bool

      module MX :
       sig
        module OrderTac :
         sig
          module OTF :
           sig
            type t = Equality.sort

            val compare : Equality.sort -> Equality.sort -> comparison

            val eq_dec : Equality.sort -> Equality.sort -> bool
           end

          module TO :
           sig
            type t = Equality.sort

            val compare : Equality.sort -> Equality.sort -> comparison

            val eq_dec : Equality.sort -> Equality.sort -> bool
           end
         end

        val eq_dec : Equality.sort -> Equality.sort -> bool

        val lt_dec : Equality.sort -> Equality.sort -> bool

        val eqb : Equality.sort -> Equality.sort -> bool
       end

      type coq_R_min_elt = TS.MSet.Raw.coq_R_min_elt =
      | R_min_elt_0 of tree
      | R_min_elt_1 of tree * Z_as_Int.t * tree * Equality.sort * tree
      | R_min_elt_2 of tree * Z_as_Int.t * tree * Equality.sort * tree
         * Z_as_Int.t * tree * Equality.sort * tree * elt option
         * coq_R_min_elt

      type coq_R_max_elt = TS.MSet.Raw.coq_R_max_elt =
      | R_max_elt_0 of tree
      | R_max_elt_1 of tree * Z_as_Int.t * tree * Equality.sort * tree
      | R_max_elt_2 of tree * Z_as_Int.t * tree * Equality.sort * tree
         * Z_as_Int.t * tree * Equality.sort * tree * elt option
         * coq_R_max_elt

      module L :
       sig
        module MO :
         sig
          module OrderTac :
           sig
            module OTF :
             sig
              type t = Equality.sort

              val compare : Equality.sort -> Equality.sort -> comparison

              val eq_dec : Equality.sort -> Equality.sort -> bool
             end

            module TO :
             sig
              type t = Equality.sort

              val compare : Equality.sort -> Equality.sort -> comparison

              val eq_dec : Equality.sort -> Equality.sort -> bool
             end
           end

          val eq_dec : Equality.sort -> Equality.sort -> bool

          val lt_dec : Equality.sort -> Equality.sort -> bool

          val eqb : Equality.sort -> Equality.sort -> bool
         end
       end

      val flatten_e : enumeration -> elt list

      type coq_R_bal = TS.MSet.Raw.coq_R_bal =
      | R_bal_0 of t * Equality.sort * t
      | R_bal_1 of t * Equality.sort * t * Z_as_Int.t * tree * Equality.sort
         * tree
      | R_bal_2 of t * Equality.sort * t * Z_as_Int.t * tree * Equality.sort
         * tree
      | R_bal_3 of t * Equality.sort * t * Z_as_Int.t * tree * Equality.sort
         * tree * Z_as_Int.t * tree * Equality.sort * tree
      | R_bal_4 of t * Equality.sort * t
      | R_bal_5 of t * Equality.sort * t * Z_as_Int.t * tree * Equality.sort
         * tree
      | R_bal_6 of t * Equality.sort * t * Z_as_Int.t * tree * Equality.sort
         * tree
      | R_bal_7 of t * Equality.sort * t * Z_as_Int.t * tree * Equality.sort
         * tree * Z_as_Int.t * tree * Equality.sort * tree
      | R_bal_8 of t * Equality.sort * t

      type coq_R_remove_min = TS.MSet.Raw.coq_R_remove_min =
      | R_remove_min_0 of tree * elt * t
      | R_remove_min_1 of tree * elt * t * Z_as_Int.t * tree * Equality.sort
         * tree * (t * elt) * coq_R_remove_min * t * elt

      type coq_R_merge = TS.MSet.Raw.coq_R_merge =
      | R_merge_0 of tree * tree
      | R_merge_1 of tree * tree * Z_as_Int.t * tree * Equality.sort * tree
      | R_merge_2 of tree * tree * Z_as_Int.t * tree * Equality.sort * 
         tree * Z_as_Int.t * tree * Equality.sort * tree * t * elt

      type coq_R_concat = TS.MSet.Raw.coq_R_concat =
      | R_concat_0 of tree * tree
      | R_concat_1 of tree * tree * Z_as_Int.t * tree * Equality.sort * tree
      | R_concat_2 of tree * tree * Z_as_Int.t * tree * Equality.sort * 
         tree * Z_as_Int.t * tree * Equality.sort * tree * t * elt

      type coq_R_inter = TS.MSet.Raw.coq_R_inter =
      | R_inter_0 of tree * tree
      | R_inter_1 of tree * tree * Z_as_Int.t * tree * Equality.sort * tree
      | R_inter_2 of tree * tree * Z_as_Int.t * tree * Equality.sort * 
         tree * Z_as_Int.t * tree * Equality.sort * tree * t * bool * 
         t * tree * coq_R_inter * tree * coq_R_inter
      | R_inter_3 of tree * tree * Z_as_Int.t * tree * Equality.sort * 
         tree * Z_as_Int.t * tree * Equality.sort * tree * t * bool * 
         t * tree * coq_R_inter * tree * coq_R_inter

      type coq_R_diff = TS.MSet.Raw.coq_R_diff =
      | R_diff_0 of tree * tree
      | R_diff_1 of tree * tree * Z_as_Int.t * tree * Equality.sort * tree
      | R_diff_2 of tree * tree * Z_as_Int.t * tree * Equality.sort * 
         tree * Z_as_Int.t * tree * Equality.sort * tree * t * bool * 
         t * tree * coq_R_diff * tree * coq_R_diff
      | R_diff_3 of tree * tree * Z_as_Int.t * tree * Equality.sort * 
         tree * Z_as_Int.t * tree * Equality.sort * tree * t * bool * 
         t * tree * coq_R_diff * tree * coq_R_diff

      type coq_R_union = TS.MSet.Raw.coq_R_union =
      | R_union_0 of tree * tree
      | R_union_1 of tree * tree * Z_as_Int.t * tree * Equality.sort * tree
      | R_union_2 of tree * tree * Z_as_Int.t * tree * Equality.sort * 
         tree * Z_as_Int.t * tree * Equality.sort * tree * t * bool * 
         t * tree * coq_R_union * tree * coq_R_union
     end

    module E :
     sig
      type t = Equality.sort

      val compare : Equality.sort -> Equality.sort -> comparison

      val eq_dec : Equality.sort -> Equality.sort -> bool
     end

    type elt = Equality.sort

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

  type elt = Equality.sort

  type t = MSet.t

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

  module MF :
   sig
    val eqb : Equality.sort -> Equality.sort -> bool
   end

  val min_elt : t -> elt option

  val max_elt : t -> elt option

  val compare : t -> t -> t OrderedType.coq_Compare

  module E :
   sig
    type t = Equality.sort

    val compare :
      Equality.sort -> Equality.sort -> Equality.sort OrderedType.coq_Compare

    val eq_dec : Equality.sort -> Equality.sort -> bool
   end
 end

val newline : char list

val vs_of_clause : literal list -> PS.t

val vs_of_cnf : literal list list -> PS.t

val num_vars : cnf -> int

val max_var_of_clause : literal list -> int

val max_var_of_cnf : literal list list -> int

val num_clauses : cnf -> int

val dimacs_header : cnf -> char list

val diamcs_var : bvar -> char list

val diamcs_lit : literal -> char list

val diamcs_clause : clause -> char list

val dimacs_cnf : cnf -> char list

val dimacs_cnf_with_header : cnf -> char list
