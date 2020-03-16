open Bool
open Datatypes
open FMaps
open Typ
open Var

type __ = Obj.t

module type TypEnv =
 sig
  module SE :
   SsrOrder.SsrOrder

  module E :
   OrderedType.OrderedType with type t = SE.t

  type key = SE.t

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

  type env = typ t

  val deftyp : typ

  val vtyp : SE.t -> env -> typ

  val vsize : SE.t -> env -> nat
 end

module MakeTypEnv :
 functor (V:SsrOrder.SsrOrder) ->
 functor (VM:SsrFMap with module SE = V) ->
 sig
  module SE :
   SsrOrder.SsrOrder

  module E :
   OrderedType.OrderedType with type t = VM.SE.t

  type key = SE.t

  type 'x t = 'x VM.t

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

  module Lemmas :
   sig
    module F :
     sig
      val eqb : VM.SE.t -> VM.SE.t -> bool

      val coq_In_dec : 'a1 VM.t -> VM.key -> bool
     end

    module OP :
     sig
      module ME :
       sig
        module TO :
         sig
          type t = VM.SE.t
         end

        module IsTO :
         sig
         end

        module OrderTac :
         sig
         end

        val eq_dec : VM.SE.t -> VM.SE.t -> bool

        val lt_dec : VM.SE.t -> VM.SE.t -> bool

        val eqb : VM.SE.t -> VM.SE.t -> bool
       end

      module O :
       sig
        module MO :
         sig
          module TO :
           sig
            type t = VM.SE.t
           end

          module IsTO :
           sig
           end

          module OrderTac :
           sig
           end

          val eq_dec : VM.SE.t -> VM.SE.t -> bool

          val lt_dec : VM.SE.t -> VM.SE.t -> bool

          val eqb : VM.SE.t -> VM.SE.t -> bool
         end
       end

      module P :
       sig
        module F :
         sig
          val eqb : VM.SE.t -> VM.SE.t -> bool

          val coq_In_dec : 'a1 VM.t -> VM.key -> bool
         end

        val uncurry : ('a1 -> 'a2 -> 'a3) -> ('a1 * 'a2) -> 'a3

        val of_list : (VM.key * 'a1) list -> 'a1 VM.t

        val to_list : 'a1 VM.t -> (VM.key * 'a1) list

        val fold_rec :
          (VM.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 VM.t -> ('a1 VM.t -> __
          -> 'a3) -> (VM.key -> 'a1 -> 'a2 -> 'a1 VM.t -> 'a1 VM.t -> __ ->
          __ -> __ -> 'a3 -> 'a3) -> 'a3

        val fold_rec_bis :
          (VM.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 VM.t -> ('a1 VM.t ->
          'a1 VM.t -> 'a2 -> __ -> 'a3 -> 'a3) -> 'a3 -> (VM.key -> 'a1 ->
          'a2 -> 'a1 VM.t -> __ -> __ -> 'a3 -> 'a3) -> 'a3

        val fold_rec_nodep :
          (VM.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 VM.t -> 'a3 -> (VM.key
          -> 'a1 -> 'a2 -> __ -> 'a3 -> 'a3) -> 'a3

        val fold_rec_weak :
          (VM.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> ('a1 VM.t -> 'a1 VM.t ->
          'a2 -> __ -> 'a3 -> 'a3) -> 'a3 -> (VM.key -> 'a1 -> 'a2 -> 'a1
          VM.t -> __ -> 'a3 -> 'a3) -> 'a1 VM.t -> 'a3

        val fold_rel :
          (VM.key -> 'a1 -> 'a2 -> 'a2) -> (VM.key -> 'a1 -> 'a3 -> 'a3) ->
          'a2 -> 'a3 -> 'a1 VM.t -> 'a4 -> (VM.key -> 'a1 -> 'a2 -> 'a3 -> __
          -> 'a4 -> 'a4) -> 'a4

        val map_induction :
          ('a1 VM.t -> __ -> 'a2) -> ('a1 VM.t -> 'a1 VM.t -> 'a2 -> VM.key
          -> 'a1 -> __ -> __ -> 'a2) -> 'a1 VM.t -> 'a2

        val map_induction_bis :
          ('a1 VM.t -> 'a1 VM.t -> __ -> 'a2 -> 'a2) -> 'a2 -> (VM.key -> 'a1
          -> 'a1 VM.t -> __ -> 'a2 -> 'a2) -> 'a1 VM.t -> 'a2

        val cardinal_inv_2 : 'a1 VM.t -> nat -> (VM.key * 'a1)

        val cardinal_inv_2b : 'a1 VM.t -> (VM.key * 'a1)

        val filter : (VM.key -> 'a1 -> bool) -> 'a1 VM.t -> 'a1 VM.t

        val for_all : (VM.key -> 'a1 -> bool) -> 'a1 VM.t -> bool

        val exists_ : (VM.key -> 'a1 -> bool) -> 'a1 VM.t -> bool

        val partition :
          (VM.key -> 'a1 -> bool) -> 'a1 VM.t -> 'a1 VM.t * 'a1 VM.t

        val update : 'a1 VM.t -> 'a1 VM.t -> 'a1 VM.t

        val restrict : 'a1 VM.t -> 'a1 VM.t -> 'a1 VM.t

        val diff : 'a1 VM.t -> 'a1 VM.t -> 'a1 VM.t

        val coq_Partition_In :
          'a1 VM.t -> 'a1 VM.t -> 'a1 VM.t -> VM.key -> bool

        val update_dec : 'a1 VM.t -> 'a1 VM.t -> VM.key -> 'a1 -> bool

        val filter_dom : (VM.key -> bool) -> 'a1 VM.t -> 'a1 VM.t

        val filter_range : ('a1 -> bool) -> 'a1 VM.t -> 'a1 VM.t

        val for_all_dom : (VM.key -> bool) -> 'a1 VM.t -> bool

        val for_all_range : ('a1 -> bool) -> 'a1 VM.t -> bool

        val exists_dom : (VM.key -> bool) -> 'a1 VM.t -> bool

        val exists_range : ('a1 -> bool) -> 'a1 VM.t -> bool

        val partition_dom :
          (VM.key -> bool) -> 'a1 VM.t -> 'a1 VM.t * 'a1 VM.t

        val partition_range : ('a1 -> bool) -> 'a1 VM.t -> 'a1 VM.t * 'a1 VM.t
       end

      val gtb : (VM.key * 'a1) -> (VM.key * 'a1) -> bool

      val leb : (VM.key * 'a1) -> (VM.key * 'a1) -> bool

      val elements_lt : (VM.key * 'a1) -> 'a1 VM.t -> (VM.key * 'a1) list

      val elements_ge : (VM.key * 'a1) -> 'a1 VM.t -> (VM.key * 'a1) list

      val max_elt_aux : (VM.key * 'a1) list -> (VM.key * 'a1) option

      val max_elt : 'a1 VM.t -> (VM.key * 'a1) option

      val min_elt : 'a1 VM.t -> (VM.key * 'a1) option

      val map_induction_max :
        ('a1 VM.t -> __ -> 'a2) -> ('a1 VM.t -> 'a1 VM.t -> 'a2 -> VM.SE.t ->
        'a1 -> __ -> __ -> 'a2) -> 'a1 VM.t -> 'a2

      val map_induction_min :
        ('a1 VM.t -> __ -> 'a2) -> ('a1 VM.t -> 'a1 VM.t -> 'a2 -> VM.SE.t ->
        'a1 -> __ -> __ -> 'a2) -> 'a1 VM.t -> 'a2
     end

    val eqb : VM.SE.t -> VM.SE.t -> bool

    val coq_In_dec : 'a1 VM.t -> VM.key -> bool

    module ME :
     sig
      module TO :
       sig
        type t = VM.SE.t
       end

      module IsTO :
       sig
       end

      module OrderTac :
       sig
       end

      val eq_dec : VM.SE.t -> VM.SE.t -> bool

      val lt_dec : VM.SE.t -> VM.SE.t -> bool

      val eqb : VM.SE.t -> VM.SE.t -> bool
     end

    module O :
     sig
      module MO :
       sig
        module TO :
         sig
          type t = VM.SE.t
         end

        module IsTO :
         sig
         end

        module OrderTac :
         sig
         end

        val eq_dec : VM.SE.t -> VM.SE.t -> bool

        val lt_dec : VM.SE.t -> VM.SE.t -> bool

        val eqb : VM.SE.t -> VM.SE.t -> bool
       end
     end

    module P :
     sig
      module F :
       sig
        val eqb : VM.SE.t -> VM.SE.t -> bool

        val coq_In_dec : 'a1 VM.t -> VM.key -> bool
       end

      val uncurry : ('a1 -> 'a2 -> 'a3) -> ('a1 * 'a2) -> 'a3

      val of_list : (VM.key * 'a1) list -> 'a1 VM.t

      val to_list : 'a1 VM.t -> (VM.key * 'a1) list

      val fold_rec :
        (VM.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 VM.t -> ('a1 VM.t -> __
        -> 'a3) -> (VM.key -> 'a1 -> 'a2 -> 'a1 VM.t -> 'a1 VM.t -> __ -> __
        -> __ -> 'a3 -> 'a3) -> 'a3

      val fold_rec_bis :
        (VM.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 VM.t -> ('a1 VM.t -> 'a1
        VM.t -> 'a2 -> __ -> 'a3 -> 'a3) -> 'a3 -> (VM.key -> 'a1 -> 'a2 ->
        'a1 VM.t -> __ -> __ -> 'a3 -> 'a3) -> 'a3

      val fold_rec_nodep :
        (VM.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 VM.t -> 'a3 -> (VM.key ->
        'a1 -> 'a2 -> __ -> 'a3 -> 'a3) -> 'a3

      val fold_rec_weak :
        (VM.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> ('a1 VM.t -> 'a1 VM.t -> 'a2
        -> __ -> 'a3 -> 'a3) -> 'a3 -> (VM.key -> 'a1 -> 'a2 -> 'a1 VM.t ->
        __ -> 'a3 -> 'a3) -> 'a1 VM.t -> 'a3

      val fold_rel :
        (VM.key -> 'a1 -> 'a2 -> 'a2) -> (VM.key -> 'a1 -> 'a3 -> 'a3) -> 'a2
        -> 'a3 -> 'a1 VM.t -> 'a4 -> (VM.key -> 'a1 -> 'a2 -> 'a3 -> __ ->
        'a4 -> 'a4) -> 'a4

      val map_induction :
        ('a1 VM.t -> __ -> 'a2) -> ('a1 VM.t -> 'a1 VM.t -> 'a2 -> VM.key ->
        'a1 -> __ -> __ -> 'a2) -> 'a1 VM.t -> 'a2

      val map_induction_bis :
        ('a1 VM.t -> 'a1 VM.t -> __ -> 'a2 -> 'a2) -> 'a2 -> (VM.key -> 'a1
        -> 'a1 VM.t -> __ -> 'a2 -> 'a2) -> 'a1 VM.t -> 'a2

      val cardinal_inv_2 : 'a1 VM.t -> nat -> (VM.key * 'a1)

      val cardinal_inv_2b : 'a1 VM.t -> (VM.key * 'a1)

      val filter : (VM.key -> 'a1 -> bool) -> 'a1 VM.t -> 'a1 VM.t

      val for_all : (VM.key -> 'a1 -> bool) -> 'a1 VM.t -> bool

      val exists_ : (VM.key -> 'a1 -> bool) -> 'a1 VM.t -> bool

      val partition :
        (VM.key -> 'a1 -> bool) -> 'a1 VM.t -> 'a1 VM.t * 'a1 VM.t

      val update : 'a1 VM.t -> 'a1 VM.t -> 'a1 VM.t

      val restrict : 'a1 VM.t -> 'a1 VM.t -> 'a1 VM.t

      val diff : 'a1 VM.t -> 'a1 VM.t -> 'a1 VM.t

      val coq_Partition_In :
        'a1 VM.t -> 'a1 VM.t -> 'a1 VM.t -> VM.key -> bool

      val update_dec : 'a1 VM.t -> 'a1 VM.t -> VM.key -> 'a1 -> bool

      val filter_dom : (VM.key -> bool) -> 'a1 VM.t -> 'a1 VM.t

      val filter_range : ('a1 -> bool) -> 'a1 VM.t -> 'a1 VM.t

      val for_all_dom : (VM.key -> bool) -> 'a1 VM.t -> bool

      val for_all_range : ('a1 -> bool) -> 'a1 VM.t -> bool

      val exists_dom : (VM.key -> bool) -> 'a1 VM.t -> bool

      val exists_range : ('a1 -> bool) -> 'a1 VM.t -> bool

      val partition_dom : (VM.key -> bool) -> 'a1 VM.t -> 'a1 VM.t * 'a1 VM.t

      val partition_range : ('a1 -> bool) -> 'a1 VM.t -> 'a1 VM.t * 'a1 VM.t
     end

    val gtb : (VM.key * 'a1) -> (VM.key * 'a1) -> bool

    val leb : (VM.key * 'a1) -> (VM.key * 'a1) -> bool

    val elements_lt : (VM.key * 'a1) -> 'a1 VM.t -> (VM.key * 'a1) list

    val elements_ge : (VM.key * 'a1) -> 'a1 VM.t -> (VM.key * 'a1) list

    val max_elt_aux : (VM.key * 'a1) list -> (VM.key * 'a1) option

    val max_elt : 'a1 VM.t -> (VM.key * 'a1) option

    val min_elt : 'a1 VM.t -> (VM.key * 'a1) option

    val map_induction_max :
      ('a1 VM.t -> __ -> 'a2) -> ('a1 VM.t -> 'a1 VM.t -> 'a2 -> VM.SE.t ->
      'a1 -> __ -> __ -> 'a2) -> 'a1 VM.t -> 'a2

    val map_induction_min :
      ('a1 VM.t -> __ -> 'a2) -> ('a1 VM.t -> 'a1 VM.t -> 'a2 -> VM.SE.t ->
      'a1 -> __ -> __ -> 'a2) -> 'a1 VM.t -> 'a2

    val memP : VM.key -> 'a1 VM.t -> reflect

    val split : ('a1 * 'a2) VM.t -> 'a1 VM.t * 'a2 VM.t

    module EFacts :
     sig
      module TO :
       sig
        type t = VM.SE.t
       end

      module IsTO :
       sig
       end

      module OrderTac :
       sig
       end

      val eq_dec : VM.SE.t -> VM.SE.t -> bool

      val lt_dec : VM.SE.t -> VM.SE.t -> bool

      val eqb : VM.SE.t -> VM.SE.t -> bool
     end

    val max_opt : VM.key -> VM.key option -> VM.key

    val max_key_elements : (VM.key * 'a1) list -> VM.key option

    val max_key : 'a1 VM.t -> VM.key option

    val min_opt : VM.key -> VM.key option -> VM.key

    val min_key_elements : (VM.key * 'a1) list -> VM.key option

    val min_key : 'a1 VM.t -> VM.key option
   end

  type env = typ t

  val deftyp : typ

  val vtyp : V.t -> env -> typ

  val vsize : V.t -> env -> nat
 end

module SSATE :
 sig
  module SE :
   SsrOrder.SsrOrder

  module E :
   OrderedType.OrderedType with type t = SSAVM.SE.t

  type key = SE.t

  type 'x t = 'x SSAVM.t

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

  module Lemmas :
   sig
    module F :
     sig
      val eqb : SSAVM.SE.t -> SSAVM.SE.t -> bool

      val coq_In_dec : 'a1 SSAVM.t -> SSAVM.key -> bool
     end

    module OP :
     sig
      module ME :
       sig
        module TO :
         sig
          type t = SSAVM.SE.t
         end

        module IsTO :
         sig
         end

        module OrderTac :
         sig
         end

        val eq_dec : SSAVM.SE.t -> SSAVM.SE.t -> bool

        val lt_dec : SSAVM.SE.t -> SSAVM.SE.t -> bool

        val eqb : SSAVM.SE.t -> SSAVM.SE.t -> bool
       end

      module O :
       sig
        module MO :
         sig
          module TO :
           sig
            type t = SSAVM.SE.t
           end

          module IsTO :
           sig
           end

          module OrderTac :
           sig
           end

          val eq_dec : SSAVM.SE.t -> SSAVM.SE.t -> bool

          val lt_dec : SSAVM.SE.t -> SSAVM.SE.t -> bool

          val eqb : SSAVM.SE.t -> SSAVM.SE.t -> bool
         end
       end

      module P :
       sig
        module F :
         sig
          val eqb : SSAVM.SE.t -> SSAVM.SE.t -> bool

          val coq_In_dec : 'a1 SSAVM.t -> SSAVM.key -> bool
         end

        val uncurry : ('a1 -> 'a2 -> 'a3) -> ('a1 * 'a2) -> 'a3

        val of_list : (SSAVM.key * 'a1) list -> 'a1 SSAVM.t

        val to_list : 'a1 SSAVM.t -> (SSAVM.key * 'a1) list

        val fold_rec :
          (SSAVM.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 SSAVM.t -> ('a1
          SSAVM.t -> __ -> 'a3) -> (SSAVM.key -> 'a1 -> 'a2 -> 'a1 SSAVM.t ->
          'a1 SSAVM.t -> __ -> __ -> __ -> 'a3 -> 'a3) -> 'a3

        val fold_rec_bis :
          (SSAVM.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 SSAVM.t -> ('a1
          SSAVM.t -> 'a1 SSAVM.t -> 'a2 -> __ -> 'a3 -> 'a3) -> 'a3 ->
          (SSAVM.key -> 'a1 -> 'a2 -> 'a1 SSAVM.t -> __ -> __ -> 'a3 -> 'a3)
          -> 'a3

        val fold_rec_nodep :
          (SSAVM.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 SSAVM.t -> 'a3 ->
          (SSAVM.key -> 'a1 -> 'a2 -> __ -> 'a3 -> 'a3) -> 'a3

        val fold_rec_weak :
          (SSAVM.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> ('a1 SSAVM.t -> 'a1
          SSAVM.t -> 'a2 -> __ -> 'a3 -> 'a3) -> 'a3 -> (SSAVM.key -> 'a1 ->
          'a2 -> 'a1 SSAVM.t -> __ -> 'a3 -> 'a3) -> 'a1 SSAVM.t -> 'a3

        val fold_rel :
          (SSAVM.key -> 'a1 -> 'a2 -> 'a2) -> (SSAVM.key -> 'a1 -> 'a3 ->
          'a3) -> 'a2 -> 'a3 -> 'a1 SSAVM.t -> 'a4 -> (SSAVM.key -> 'a1 ->
          'a2 -> 'a3 -> __ -> 'a4 -> 'a4) -> 'a4

        val map_induction :
          ('a1 SSAVM.t -> __ -> 'a2) -> ('a1 SSAVM.t -> 'a1 SSAVM.t -> 'a2 ->
          SSAVM.key -> 'a1 -> __ -> __ -> 'a2) -> 'a1 SSAVM.t -> 'a2

        val map_induction_bis :
          ('a1 SSAVM.t -> 'a1 SSAVM.t -> __ -> 'a2 -> 'a2) -> 'a2 ->
          (SSAVM.key -> 'a1 -> 'a1 SSAVM.t -> __ -> 'a2 -> 'a2) -> 'a1
          SSAVM.t -> 'a2

        val cardinal_inv_2 : 'a1 SSAVM.t -> nat -> (SSAVM.key * 'a1)

        val cardinal_inv_2b : 'a1 SSAVM.t -> (SSAVM.key * 'a1)

        val filter : (SSAVM.key -> 'a1 -> bool) -> 'a1 SSAVM.t -> 'a1 SSAVM.t

        val for_all : (SSAVM.key -> 'a1 -> bool) -> 'a1 SSAVM.t -> bool

        val exists_ : (SSAVM.key -> 'a1 -> bool) -> 'a1 SSAVM.t -> bool

        val partition :
          (SSAVM.key -> 'a1 -> bool) -> 'a1 SSAVM.t -> 'a1 SSAVM.t * 'a1
          SSAVM.t

        val update : 'a1 SSAVM.t -> 'a1 SSAVM.t -> 'a1 SSAVM.t

        val restrict : 'a1 SSAVM.t -> 'a1 SSAVM.t -> 'a1 SSAVM.t

        val diff : 'a1 SSAVM.t -> 'a1 SSAVM.t -> 'a1 SSAVM.t

        val coq_Partition_In :
          'a1 SSAVM.t -> 'a1 SSAVM.t -> 'a1 SSAVM.t -> SSAVM.key -> bool

        val update_dec :
          'a1 SSAVM.t -> 'a1 SSAVM.t -> SSAVM.key -> 'a1 -> bool

        val filter_dom : (SSAVM.key -> bool) -> 'a1 SSAVM.t -> 'a1 SSAVM.t

        val filter_range : ('a1 -> bool) -> 'a1 SSAVM.t -> 'a1 SSAVM.t

        val for_all_dom : (SSAVM.key -> bool) -> 'a1 SSAVM.t -> bool

        val for_all_range : ('a1 -> bool) -> 'a1 SSAVM.t -> bool

        val exists_dom : (SSAVM.key -> bool) -> 'a1 SSAVM.t -> bool

        val exists_range : ('a1 -> bool) -> 'a1 SSAVM.t -> bool

        val partition_dom :
          (SSAVM.key -> bool) -> 'a1 SSAVM.t -> 'a1 SSAVM.t * 'a1 SSAVM.t

        val partition_range :
          ('a1 -> bool) -> 'a1 SSAVM.t -> 'a1 SSAVM.t * 'a1 SSAVM.t
       end

      val gtb : (SSAVM.key * 'a1) -> (SSAVM.key * 'a1) -> bool

      val leb : (SSAVM.key * 'a1) -> (SSAVM.key * 'a1) -> bool

      val elements_lt :
        (SSAVM.key * 'a1) -> 'a1 SSAVM.t -> (SSAVM.key * 'a1) list

      val elements_ge :
        (SSAVM.key * 'a1) -> 'a1 SSAVM.t -> (SSAVM.key * 'a1) list

      val max_elt_aux : (SSAVM.key * 'a1) list -> (SSAVM.key * 'a1) option

      val max_elt : 'a1 SSAVM.t -> (SSAVM.key * 'a1) option

      val min_elt : 'a1 SSAVM.t -> (SSAVM.key * 'a1) option

      val map_induction_max :
        ('a1 SSAVM.t -> __ -> 'a2) -> ('a1 SSAVM.t -> 'a1 SSAVM.t -> 'a2 ->
        SSAVM.SE.t -> 'a1 -> __ -> __ -> 'a2) -> 'a1 SSAVM.t -> 'a2

      val map_induction_min :
        ('a1 SSAVM.t -> __ -> 'a2) -> ('a1 SSAVM.t -> 'a1 SSAVM.t -> 'a2 ->
        SSAVM.SE.t -> 'a1 -> __ -> __ -> 'a2) -> 'a1 SSAVM.t -> 'a2
     end

    val eqb : SSAVM.SE.t -> SSAVM.SE.t -> bool

    val coq_In_dec : 'a1 SSAVM.t -> SSAVM.key -> bool

    module ME :
     sig
      module TO :
       sig
        type t = SSAVM.SE.t
       end

      module IsTO :
       sig
       end

      module OrderTac :
       sig
       end

      val eq_dec : SSAVM.SE.t -> SSAVM.SE.t -> bool

      val lt_dec : SSAVM.SE.t -> SSAVM.SE.t -> bool

      val eqb : SSAVM.SE.t -> SSAVM.SE.t -> bool
     end

    module O :
     sig
      module MO :
       sig
        module TO :
         sig
          type t = SSAVM.SE.t
         end

        module IsTO :
         sig
         end

        module OrderTac :
         sig
         end

        val eq_dec : SSAVM.SE.t -> SSAVM.SE.t -> bool

        val lt_dec : SSAVM.SE.t -> SSAVM.SE.t -> bool

        val eqb : SSAVM.SE.t -> SSAVM.SE.t -> bool
       end
     end

    module P :
     sig
      module F :
       sig
        val eqb : SSAVM.SE.t -> SSAVM.SE.t -> bool

        val coq_In_dec : 'a1 SSAVM.t -> SSAVM.key -> bool
       end

      val uncurry : ('a1 -> 'a2 -> 'a3) -> ('a1 * 'a2) -> 'a3

      val of_list : (SSAVM.key * 'a1) list -> 'a1 SSAVM.t

      val to_list : 'a1 SSAVM.t -> (SSAVM.key * 'a1) list

      val fold_rec :
        (SSAVM.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 SSAVM.t -> ('a1
        SSAVM.t -> __ -> 'a3) -> (SSAVM.key -> 'a1 -> 'a2 -> 'a1 SSAVM.t ->
        'a1 SSAVM.t -> __ -> __ -> __ -> 'a3 -> 'a3) -> 'a3

      val fold_rec_bis :
        (SSAVM.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 SSAVM.t -> ('a1
        SSAVM.t -> 'a1 SSAVM.t -> 'a2 -> __ -> 'a3 -> 'a3) -> 'a3 ->
        (SSAVM.key -> 'a1 -> 'a2 -> 'a1 SSAVM.t -> __ -> __ -> 'a3 -> 'a3) ->
        'a3

      val fold_rec_nodep :
        (SSAVM.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 SSAVM.t -> 'a3 ->
        (SSAVM.key -> 'a1 -> 'a2 -> __ -> 'a3 -> 'a3) -> 'a3

      val fold_rec_weak :
        (SSAVM.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> ('a1 SSAVM.t -> 'a1
        SSAVM.t -> 'a2 -> __ -> 'a3 -> 'a3) -> 'a3 -> (SSAVM.key -> 'a1 ->
        'a2 -> 'a1 SSAVM.t -> __ -> 'a3 -> 'a3) -> 'a1 SSAVM.t -> 'a3

      val fold_rel :
        (SSAVM.key -> 'a1 -> 'a2 -> 'a2) -> (SSAVM.key -> 'a1 -> 'a3 -> 'a3)
        -> 'a2 -> 'a3 -> 'a1 SSAVM.t -> 'a4 -> (SSAVM.key -> 'a1 -> 'a2 ->
        'a3 -> __ -> 'a4 -> 'a4) -> 'a4

      val map_induction :
        ('a1 SSAVM.t -> __ -> 'a2) -> ('a1 SSAVM.t -> 'a1 SSAVM.t -> 'a2 ->
        SSAVM.key -> 'a1 -> __ -> __ -> 'a2) -> 'a1 SSAVM.t -> 'a2

      val map_induction_bis :
        ('a1 SSAVM.t -> 'a1 SSAVM.t -> __ -> 'a2 -> 'a2) -> 'a2 -> (SSAVM.key
        -> 'a1 -> 'a1 SSAVM.t -> __ -> 'a2 -> 'a2) -> 'a1 SSAVM.t -> 'a2

      val cardinal_inv_2 : 'a1 SSAVM.t -> nat -> (SSAVM.key * 'a1)

      val cardinal_inv_2b : 'a1 SSAVM.t -> (SSAVM.key * 'a1)

      val filter : (SSAVM.key -> 'a1 -> bool) -> 'a1 SSAVM.t -> 'a1 SSAVM.t

      val for_all : (SSAVM.key -> 'a1 -> bool) -> 'a1 SSAVM.t -> bool

      val exists_ : (SSAVM.key -> 'a1 -> bool) -> 'a1 SSAVM.t -> bool

      val partition :
        (SSAVM.key -> 'a1 -> bool) -> 'a1 SSAVM.t -> 'a1 SSAVM.t * 'a1 SSAVM.t

      val update : 'a1 SSAVM.t -> 'a1 SSAVM.t -> 'a1 SSAVM.t

      val restrict : 'a1 SSAVM.t -> 'a1 SSAVM.t -> 'a1 SSAVM.t

      val diff : 'a1 SSAVM.t -> 'a1 SSAVM.t -> 'a1 SSAVM.t

      val coq_Partition_In :
        'a1 SSAVM.t -> 'a1 SSAVM.t -> 'a1 SSAVM.t -> SSAVM.key -> bool

      val update_dec : 'a1 SSAVM.t -> 'a1 SSAVM.t -> SSAVM.key -> 'a1 -> bool

      val filter_dom : (SSAVM.key -> bool) -> 'a1 SSAVM.t -> 'a1 SSAVM.t

      val filter_range : ('a1 -> bool) -> 'a1 SSAVM.t -> 'a1 SSAVM.t

      val for_all_dom : (SSAVM.key -> bool) -> 'a1 SSAVM.t -> bool

      val for_all_range : ('a1 -> bool) -> 'a1 SSAVM.t -> bool

      val exists_dom : (SSAVM.key -> bool) -> 'a1 SSAVM.t -> bool

      val exists_range : ('a1 -> bool) -> 'a1 SSAVM.t -> bool

      val partition_dom :
        (SSAVM.key -> bool) -> 'a1 SSAVM.t -> 'a1 SSAVM.t * 'a1 SSAVM.t

      val partition_range :
        ('a1 -> bool) -> 'a1 SSAVM.t -> 'a1 SSAVM.t * 'a1 SSAVM.t
     end

    val gtb : (SSAVM.key * 'a1) -> (SSAVM.key * 'a1) -> bool

    val leb : (SSAVM.key * 'a1) -> (SSAVM.key * 'a1) -> bool

    val elements_lt :
      (SSAVM.key * 'a1) -> 'a1 SSAVM.t -> (SSAVM.key * 'a1) list

    val elements_ge :
      (SSAVM.key * 'a1) -> 'a1 SSAVM.t -> (SSAVM.key * 'a1) list

    val max_elt_aux : (SSAVM.key * 'a1) list -> (SSAVM.key * 'a1) option

    val max_elt : 'a1 SSAVM.t -> (SSAVM.key * 'a1) option

    val min_elt : 'a1 SSAVM.t -> (SSAVM.key * 'a1) option

    val map_induction_max :
      ('a1 SSAVM.t -> __ -> 'a2) -> ('a1 SSAVM.t -> 'a1 SSAVM.t -> 'a2 ->
      SSAVM.SE.t -> 'a1 -> __ -> __ -> 'a2) -> 'a1 SSAVM.t -> 'a2

    val map_induction_min :
      ('a1 SSAVM.t -> __ -> 'a2) -> ('a1 SSAVM.t -> 'a1 SSAVM.t -> 'a2 ->
      SSAVM.SE.t -> 'a1 -> __ -> __ -> 'a2) -> 'a1 SSAVM.t -> 'a2

    val memP : SSAVM.key -> 'a1 SSAVM.t -> reflect

    val split : ('a1 * 'a2) SSAVM.t -> 'a1 SSAVM.t * 'a2 SSAVM.t

    module EFacts :
     sig
      module TO :
       sig
        type t = SSAVM.SE.t
       end

      module IsTO :
       sig
       end

      module OrderTac :
       sig
       end

      val eq_dec : SSAVM.SE.t -> SSAVM.SE.t -> bool

      val lt_dec : SSAVM.SE.t -> SSAVM.SE.t -> bool

      val eqb : SSAVM.SE.t -> SSAVM.SE.t -> bool
     end

    val max_opt : SSAVM.key -> SSAVM.key option -> SSAVM.key

    val max_key_elements : (SSAVM.key * 'a1) list -> SSAVM.key option

    val max_key : 'a1 SSAVM.t -> SSAVM.key option

    val min_opt : SSAVM.key -> SSAVM.key option -> SSAVM.key

    val min_key_elements : (SSAVM.key * 'a1) list -> SSAVM.key option

    val min_key : 'a1 SSAVM.t -> SSAVM.key option
   end

  type env = typ t

  val deftyp : typ

  val vtyp : SSAVarOrder.t -> env -> typ

  val vsize : SSAVarOrder.t -> env -> nat
 end
