open Bool
open Datatypes
open FMaps
open NBitsDef
open Var
open Eqtype

type __ = Obj.t

module BitsValueType :
 sig
  type t = bits

  val default : t
 end

module MakeBitsStore :
 functor (V:SsrOrder.SsrOrder) ->
 functor (TE:TypEnv.TypEnv with module SE = V) ->
 sig
  module S :
   sig
    val var : Equality.coq_type

    type 'value t = Equality.sort -> 'value

    val empty : 'a1 -> Equality.sort -> 'a1

    val acc : Equality.sort -> 'a1 t -> 'a1

    val upd : Equality.sort -> 'a1 -> 'a1 t -> Equality.sort -> 'a1

    val upd2 : Equality.sort -> 'a1 -> Equality.sort -> 'a1 -> 'a1 t -> 'a1 t
   end

  type value = bits

  val var : Equality.coq_type

  type t = value S.t

  val empty : t

  val acc : Equality.sort -> t -> value

  val upd : Equality.sort -> value -> t -> Equality.sort -> value

  val upd2 :
    Equality.sort -> value -> Equality.sort -> value -> t -> value S.t

  module Lemmas :
   sig
    module F :
     sig
      val eqb : TE.SE.t -> TE.SE.t -> bool

      val coq_In_dec : 'a1 TE.t -> TE.key -> bool
     end

    module OP :
     sig
      module ME :
       sig
        module TO :
         sig
          type t = TE.SE.t
         end

        module IsTO :
         sig
         end

        module OrderTac :
         sig
         end

        val eq_dec : TE.SE.t -> TE.SE.t -> bool

        val lt_dec : TE.SE.t -> TE.SE.t -> bool

        val eqb : TE.SE.t -> TE.SE.t -> bool
       end

      module O :
       sig
        module MO :
         sig
          module TO :
           sig
            type t = TE.SE.t
           end

          module IsTO :
           sig
           end

          module OrderTac :
           sig
           end

          val eq_dec : TE.SE.t -> TE.SE.t -> bool

          val lt_dec : TE.SE.t -> TE.SE.t -> bool

          val eqb : TE.SE.t -> TE.SE.t -> bool
         end
       end

      module P :
       sig
        module F :
         sig
          val eqb : TE.SE.t -> TE.SE.t -> bool

          val coq_In_dec : 'a1 TE.t -> TE.key -> bool
         end

        val uncurry : ('a1 -> 'a2 -> 'a3) -> ('a1 * 'a2) -> 'a3

        val of_list : (TE.key * 'a1) list -> 'a1 TE.t

        val to_list : 'a1 TE.t -> (TE.key * 'a1) list

        val fold_rec :
          (TE.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 TE.t -> ('a1 TE.t -> __
          -> 'a3) -> (TE.key -> 'a1 -> 'a2 -> 'a1 TE.t -> 'a1 TE.t -> __ ->
          __ -> __ -> 'a3 -> 'a3) -> 'a3

        val fold_rec_bis :
          (TE.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 TE.t -> ('a1 TE.t ->
          'a1 TE.t -> 'a2 -> __ -> 'a3 -> 'a3) -> 'a3 -> (TE.key -> 'a1 ->
          'a2 -> 'a1 TE.t -> __ -> __ -> 'a3 -> 'a3) -> 'a3

        val fold_rec_nodep :
          (TE.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 TE.t -> 'a3 -> (TE.key
          -> 'a1 -> 'a2 -> __ -> 'a3 -> 'a3) -> 'a3

        val fold_rec_weak :
          (TE.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> ('a1 TE.t -> 'a1 TE.t ->
          'a2 -> __ -> 'a3 -> 'a3) -> 'a3 -> (TE.key -> 'a1 -> 'a2 -> 'a1
          TE.t -> __ -> 'a3 -> 'a3) -> 'a1 TE.t -> 'a3

        val fold_rel :
          (TE.key -> 'a1 -> 'a2 -> 'a2) -> (TE.key -> 'a1 -> 'a3 -> 'a3) ->
          'a2 -> 'a3 -> 'a1 TE.t -> 'a4 -> (TE.key -> 'a1 -> 'a2 -> 'a3 -> __
          -> 'a4 -> 'a4) -> 'a4

        val map_induction :
          ('a1 TE.t -> __ -> 'a2) -> ('a1 TE.t -> 'a1 TE.t -> 'a2 -> TE.key
          -> 'a1 -> __ -> __ -> 'a2) -> 'a1 TE.t -> 'a2

        val map_induction_bis :
          ('a1 TE.t -> 'a1 TE.t -> __ -> 'a2 -> 'a2) -> 'a2 -> (TE.key -> 'a1
          -> 'a1 TE.t -> __ -> 'a2 -> 'a2) -> 'a1 TE.t -> 'a2

        val cardinal_inv_2 : 'a1 TE.t -> nat -> (TE.key * 'a1)

        val cardinal_inv_2b : 'a1 TE.t -> (TE.key * 'a1)

        val filter : (TE.key -> 'a1 -> bool) -> 'a1 TE.t -> 'a1 TE.t

        val for_all : (TE.key -> 'a1 -> bool) -> 'a1 TE.t -> bool

        val exists_ : (TE.key -> 'a1 -> bool) -> 'a1 TE.t -> bool

        val partition :
          (TE.key -> 'a1 -> bool) -> 'a1 TE.t -> 'a1 TE.t * 'a1 TE.t

        val update : 'a1 TE.t -> 'a1 TE.t -> 'a1 TE.t

        val restrict : 'a1 TE.t -> 'a1 TE.t -> 'a1 TE.t

        val diff : 'a1 TE.t -> 'a1 TE.t -> 'a1 TE.t

        val coq_Partition_In :
          'a1 TE.t -> 'a1 TE.t -> 'a1 TE.t -> TE.key -> bool

        val update_dec : 'a1 TE.t -> 'a1 TE.t -> TE.key -> 'a1 -> bool

        val filter_dom : (TE.key -> bool) -> 'a1 TE.t -> 'a1 TE.t

        val filter_range : ('a1 -> bool) -> 'a1 TE.t -> 'a1 TE.t

        val for_all_dom : (TE.key -> bool) -> 'a1 TE.t -> bool

        val for_all_range : ('a1 -> bool) -> 'a1 TE.t -> bool

        val exists_dom : (TE.key -> bool) -> 'a1 TE.t -> bool

        val exists_range : ('a1 -> bool) -> 'a1 TE.t -> bool

        val partition_dom :
          (TE.key -> bool) -> 'a1 TE.t -> 'a1 TE.t * 'a1 TE.t

        val partition_range : ('a1 -> bool) -> 'a1 TE.t -> 'a1 TE.t * 'a1 TE.t
       end

      val gtb : (TE.key * 'a1) -> (TE.key * 'a1) -> bool

      val leb : (TE.key * 'a1) -> (TE.key * 'a1) -> bool

      val elements_lt : (TE.key * 'a1) -> 'a1 TE.t -> (TE.key * 'a1) list

      val elements_ge : (TE.key * 'a1) -> 'a1 TE.t -> (TE.key * 'a1) list

      val max_elt_aux : (TE.key * 'a1) list -> (TE.key * 'a1) option

      val max_elt : 'a1 TE.t -> (TE.key * 'a1) option

      val min_elt : 'a1 TE.t -> (TE.key * 'a1) option

      val map_induction_max :
        ('a1 TE.t -> __ -> 'a2) -> ('a1 TE.t -> 'a1 TE.t -> 'a2 -> TE.SE.t ->
        'a1 -> __ -> __ -> 'a2) -> 'a1 TE.t -> 'a2

      val map_induction_min :
        ('a1 TE.t -> __ -> 'a2) -> ('a1 TE.t -> 'a1 TE.t -> 'a2 -> TE.SE.t ->
        'a1 -> __ -> __ -> 'a2) -> 'a1 TE.t -> 'a2
     end

    val eqb : TE.SE.t -> TE.SE.t -> bool

    val coq_In_dec : 'a1 TE.t -> TE.key -> bool

    module ME :
     sig
      module TO :
       sig
        type t = TE.SE.t
       end

      module IsTO :
       sig
       end

      module OrderTac :
       sig
       end

      val eq_dec : TE.SE.t -> TE.SE.t -> bool

      val lt_dec : TE.SE.t -> TE.SE.t -> bool

      val eqb : TE.SE.t -> TE.SE.t -> bool
     end

    module O :
     sig
      module MO :
       sig
        module TO :
         sig
          type t = TE.SE.t
         end

        module IsTO :
         sig
         end

        module OrderTac :
         sig
         end

        val eq_dec : TE.SE.t -> TE.SE.t -> bool

        val lt_dec : TE.SE.t -> TE.SE.t -> bool

        val eqb : TE.SE.t -> TE.SE.t -> bool
       end
     end

    module P :
     sig
      module F :
       sig
        val eqb : TE.SE.t -> TE.SE.t -> bool

        val coq_In_dec : 'a1 TE.t -> TE.key -> bool
       end

      val uncurry : ('a1 -> 'a2 -> 'a3) -> ('a1 * 'a2) -> 'a3

      val of_list : (TE.key * 'a1) list -> 'a1 TE.t

      val to_list : 'a1 TE.t -> (TE.key * 'a1) list

      val fold_rec :
        (TE.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 TE.t -> ('a1 TE.t -> __
        -> 'a3) -> (TE.key -> 'a1 -> 'a2 -> 'a1 TE.t -> 'a1 TE.t -> __ -> __
        -> __ -> 'a3 -> 'a3) -> 'a3

      val fold_rec_bis :
        (TE.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 TE.t -> ('a1 TE.t -> 'a1
        TE.t -> 'a2 -> __ -> 'a3 -> 'a3) -> 'a3 -> (TE.key -> 'a1 -> 'a2 ->
        'a1 TE.t -> __ -> __ -> 'a3 -> 'a3) -> 'a3

      val fold_rec_nodep :
        (TE.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 TE.t -> 'a3 -> (TE.key ->
        'a1 -> 'a2 -> __ -> 'a3 -> 'a3) -> 'a3

      val fold_rec_weak :
        (TE.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> ('a1 TE.t -> 'a1 TE.t -> 'a2
        -> __ -> 'a3 -> 'a3) -> 'a3 -> (TE.key -> 'a1 -> 'a2 -> 'a1 TE.t ->
        __ -> 'a3 -> 'a3) -> 'a1 TE.t -> 'a3

      val fold_rel :
        (TE.key -> 'a1 -> 'a2 -> 'a2) -> (TE.key -> 'a1 -> 'a3 -> 'a3) -> 'a2
        -> 'a3 -> 'a1 TE.t -> 'a4 -> (TE.key -> 'a1 -> 'a2 -> 'a3 -> __ ->
        'a4 -> 'a4) -> 'a4

      val map_induction :
        ('a1 TE.t -> __ -> 'a2) -> ('a1 TE.t -> 'a1 TE.t -> 'a2 -> TE.key ->
        'a1 -> __ -> __ -> 'a2) -> 'a1 TE.t -> 'a2

      val map_induction_bis :
        ('a1 TE.t -> 'a1 TE.t -> __ -> 'a2 -> 'a2) -> 'a2 -> (TE.key -> 'a1
        -> 'a1 TE.t -> __ -> 'a2 -> 'a2) -> 'a1 TE.t -> 'a2

      val cardinal_inv_2 : 'a1 TE.t -> nat -> (TE.key * 'a1)

      val cardinal_inv_2b : 'a1 TE.t -> (TE.key * 'a1)

      val filter : (TE.key -> 'a1 -> bool) -> 'a1 TE.t -> 'a1 TE.t

      val for_all : (TE.key -> 'a1 -> bool) -> 'a1 TE.t -> bool

      val exists_ : (TE.key -> 'a1 -> bool) -> 'a1 TE.t -> bool

      val partition :
        (TE.key -> 'a1 -> bool) -> 'a1 TE.t -> 'a1 TE.t * 'a1 TE.t

      val update : 'a1 TE.t -> 'a1 TE.t -> 'a1 TE.t

      val restrict : 'a1 TE.t -> 'a1 TE.t -> 'a1 TE.t

      val diff : 'a1 TE.t -> 'a1 TE.t -> 'a1 TE.t

      val coq_Partition_In :
        'a1 TE.t -> 'a1 TE.t -> 'a1 TE.t -> TE.key -> bool

      val update_dec : 'a1 TE.t -> 'a1 TE.t -> TE.key -> 'a1 -> bool

      val filter_dom : (TE.key -> bool) -> 'a1 TE.t -> 'a1 TE.t

      val filter_range : ('a1 -> bool) -> 'a1 TE.t -> 'a1 TE.t

      val for_all_dom : (TE.key -> bool) -> 'a1 TE.t -> bool

      val for_all_range : ('a1 -> bool) -> 'a1 TE.t -> bool

      val exists_dom : (TE.key -> bool) -> 'a1 TE.t -> bool

      val exists_range : ('a1 -> bool) -> 'a1 TE.t -> bool

      val partition_dom : (TE.key -> bool) -> 'a1 TE.t -> 'a1 TE.t * 'a1 TE.t

      val partition_range : ('a1 -> bool) -> 'a1 TE.t -> 'a1 TE.t * 'a1 TE.t
     end

    val gtb : (TE.key * 'a1) -> (TE.key * 'a1) -> bool

    val leb : (TE.key * 'a1) -> (TE.key * 'a1) -> bool

    val elements_lt : (TE.key * 'a1) -> 'a1 TE.t -> (TE.key * 'a1) list

    val elements_ge : (TE.key * 'a1) -> 'a1 TE.t -> (TE.key * 'a1) list

    val max_elt_aux : (TE.key * 'a1) list -> (TE.key * 'a1) option

    val max_elt : 'a1 TE.t -> (TE.key * 'a1) option

    val min_elt : 'a1 TE.t -> (TE.key * 'a1) option

    val map_induction_max :
      ('a1 TE.t -> __ -> 'a2) -> ('a1 TE.t -> 'a1 TE.t -> 'a2 -> TE.SE.t ->
      'a1 -> __ -> __ -> 'a2) -> 'a1 TE.t -> 'a2

    val map_induction_min :
      ('a1 TE.t -> __ -> 'a2) -> ('a1 TE.t -> 'a1 TE.t -> 'a2 -> TE.SE.t ->
      'a1 -> __ -> __ -> 'a2) -> 'a1 TE.t -> 'a2

    val memP : TE.key -> 'a1 TE.t -> reflect

    val split : ('a1 * 'a2) TE.t -> 'a1 TE.t * 'a2 TE.t

    module EFacts :
     sig
      module TO :
       sig
        type t = TE.SE.t
       end

      module IsTO :
       sig
       end

      module OrderTac :
       sig
       end

      val eq_dec : TE.SE.t -> TE.SE.t -> bool

      val lt_dec : TE.SE.t -> TE.SE.t -> bool

      val eqb : TE.SE.t -> TE.SE.t -> bool
     end

    val max_opt : TE.key -> TE.key option -> TE.key

    val max_key_elements : (TE.key * 'a1) list -> TE.key option

    val max_key : 'a1 TE.t -> TE.key option

    val min_opt : TE.key -> TE.key option -> TE.key

    val min_key_elements : (TE.key * 'a1) list -> TE.key option

    val min_key : 'a1 TE.t -> TE.key option
   end
 end

module SSAStore :
 sig
  module S :
   sig
    val var : Equality.coq_type

    type 'value t = Equality.sort -> 'value

    val empty : 'a1 -> Equality.sort -> 'a1

    val acc : Equality.sort -> 'a1 t -> 'a1

    val upd : Equality.sort -> 'a1 -> 'a1 t -> Equality.sort -> 'a1

    val upd2 : Equality.sort -> 'a1 -> Equality.sort -> 'a1 -> 'a1 t -> 'a1 t
   end

  type value = bits

  val var : Equality.coq_type

  type t = value S.t

  val empty : t

  val acc : Equality.sort -> t -> value

  val upd : Equality.sort -> value -> t -> Equality.sort -> value

  val upd2 :
    Equality.sort -> value -> Equality.sort -> value -> t -> value S.t

  module Lemmas :
   sig
    module F :
     sig
      val eqb : TypEnv.SSATE.SE.t -> TypEnv.SSATE.SE.t -> bool

      val coq_In_dec : 'a1 TypEnv.SSATE.t -> TypEnv.SSATE.key -> bool
     end

    module OP :
     sig
      module ME :
       sig
        module TO :
         sig
          type t = TypEnv.SSATE.SE.t
         end

        module IsTO :
         sig
         end

        module OrderTac :
         sig
         end

        val eq_dec : TypEnv.SSATE.SE.t -> TypEnv.SSATE.SE.t -> bool

        val lt_dec : TypEnv.SSATE.SE.t -> TypEnv.SSATE.SE.t -> bool

        val eqb : TypEnv.SSATE.SE.t -> TypEnv.SSATE.SE.t -> bool
       end

      module O :
       sig
        module MO :
         sig
          module TO :
           sig
            type t = TypEnv.SSATE.SE.t
           end

          module IsTO :
           sig
           end

          module OrderTac :
           sig
           end

          val eq_dec : TypEnv.SSATE.SE.t -> TypEnv.SSATE.SE.t -> bool

          val lt_dec : TypEnv.SSATE.SE.t -> TypEnv.SSATE.SE.t -> bool

          val eqb : TypEnv.SSATE.SE.t -> TypEnv.SSATE.SE.t -> bool
         end
       end

      module P :
       sig
        module F :
         sig
          val eqb : TypEnv.SSATE.SE.t -> TypEnv.SSATE.SE.t -> bool

          val coq_In_dec : 'a1 TypEnv.SSATE.t -> TypEnv.SSATE.key -> bool
         end

        val uncurry : ('a1 -> 'a2 -> 'a3) -> ('a1 * 'a2) -> 'a3

        val of_list : (TypEnv.SSATE.key * 'a1) list -> 'a1 TypEnv.SSATE.t

        val to_list : 'a1 TypEnv.SSATE.t -> (TypEnv.SSATE.key * 'a1) list

        val fold_rec :
          (TypEnv.SSATE.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1
          TypEnv.SSATE.t -> ('a1 TypEnv.SSATE.t -> __ -> 'a3) ->
          (TypEnv.SSATE.key -> 'a1 -> 'a2 -> 'a1 TypEnv.SSATE.t -> 'a1
          TypEnv.SSATE.t -> __ -> __ -> __ -> 'a3 -> 'a3) -> 'a3

        val fold_rec_bis :
          (TypEnv.SSATE.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1
          TypEnv.SSATE.t -> ('a1 TypEnv.SSATE.t -> 'a1 TypEnv.SSATE.t -> 'a2
          -> __ -> 'a3 -> 'a3) -> 'a3 -> (TypEnv.SSATE.key -> 'a1 -> 'a2 ->
          'a1 TypEnv.SSATE.t -> __ -> __ -> 'a3 -> 'a3) -> 'a3

        val fold_rec_nodep :
          (TypEnv.SSATE.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1
          TypEnv.SSATE.t -> 'a3 -> (TypEnv.SSATE.key -> 'a1 -> 'a2 -> __ ->
          'a3 -> 'a3) -> 'a3

        val fold_rec_weak :
          (TypEnv.SSATE.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> ('a1
          TypEnv.SSATE.t -> 'a1 TypEnv.SSATE.t -> 'a2 -> __ -> 'a3 -> 'a3) ->
          'a3 -> (TypEnv.SSATE.key -> 'a1 -> 'a2 -> 'a1 TypEnv.SSATE.t -> __
          -> 'a3 -> 'a3) -> 'a1 TypEnv.SSATE.t -> 'a3

        val fold_rel :
          (TypEnv.SSATE.key -> 'a1 -> 'a2 -> 'a2) -> (TypEnv.SSATE.key -> 'a1
          -> 'a3 -> 'a3) -> 'a2 -> 'a3 -> 'a1 TypEnv.SSATE.t -> 'a4 ->
          (TypEnv.SSATE.key -> 'a1 -> 'a2 -> 'a3 -> __ -> 'a4 -> 'a4) -> 'a4

        val map_induction :
          ('a1 TypEnv.SSATE.t -> __ -> 'a2) -> ('a1 TypEnv.SSATE.t -> 'a1
          TypEnv.SSATE.t -> 'a2 -> TypEnv.SSATE.key -> 'a1 -> __ -> __ ->
          'a2) -> 'a1 TypEnv.SSATE.t -> 'a2

        val map_induction_bis :
          ('a1 TypEnv.SSATE.t -> 'a1 TypEnv.SSATE.t -> __ -> 'a2 -> 'a2) ->
          'a2 -> (TypEnv.SSATE.key -> 'a1 -> 'a1 TypEnv.SSATE.t -> __ -> 'a2
          -> 'a2) -> 'a1 TypEnv.SSATE.t -> 'a2

        val cardinal_inv_2 :
          'a1 TypEnv.SSATE.t -> nat -> (TypEnv.SSATE.key * 'a1)

        val cardinal_inv_2b : 'a1 TypEnv.SSATE.t -> (TypEnv.SSATE.key * 'a1)

        val filter :
          (TypEnv.SSATE.key -> 'a1 -> bool) -> 'a1 TypEnv.SSATE.t -> 'a1
          TypEnv.SSATE.t

        val for_all :
          (TypEnv.SSATE.key -> 'a1 -> bool) -> 'a1 TypEnv.SSATE.t -> bool

        val exists_ :
          (TypEnv.SSATE.key -> 'a1 -> bool) -> 'a1 TypEnv.SSATE.t -> bool

        val partition :
          (TypEnv.SSATE.key -> 'a1 -> bool) -> 'a1 TypEnv.SSATE.t -> 'a1
          TypEnv.SSATE.t * 'a1 TypEnv.SSATE.t

        val update :
          'a1 TypEnv.SSATE.t -> 'a1 TypEnv.SSATE.t -> 'a1 TypEnv.SSATE.t

        val restrict :
          'a1 TypEnv.SSATE.t -> 'a1 TypEnv.SSATE.t -> 'a1 TypEnv.SSATE.t

        val diff :
          'a1 TypEnv.SSATE.t -> 'a1 TypEnv.SSATE.t -> 'a1 TypEnv.SSATE.t

        val coq_Partition_In :
          'a1 TypEnv.SSATE.t -> 'a1 TypEnv.SSATE.t -> 'a1 TypEnv.SSATE.t ->
          TypEnv.SSATE.key -> bool

        val update_dec :
          'a1 TypEnv.SSATE.t -> 'a1 TypEnv.SSATE.t -> TypEnv.SSATE.key -> 'a1
          -> bool

        val filter_dom :
          (TypEnv.SSATE.key -> bool) -> 'a1 TypEnv.SSATE.t -> 'a1
          TypEnv.SSATE.t

        val filter_range :
          ('a1 -> bool) -> 'a1 TypEnv.SSATE.t -> 'a1 TypEnv.SSATE.t

        val for_all_dom :
          (TypEnv.SSATE.key -> bool) -> 'a1 TypEnv.SSATE.t -> bool

        val for_all_range : ('a1 -> bool) -> 'a1 TypEnv.SSATE.t -> bool

        val exists_dom :
          (TypEnv.SSATE.key -> bool) -> 'a1 TypEnv.SSATE.t -> bool

        val exists_range : ('a1 -> bool) -> 'a1 TypEnv.SSATE.t -> bool

        val partition_dom :
          (TypEnv.SSATE.key -> bool) -> 'a1 TypEnv.SSATE.t -> 'a1
          TypEnv.SSATE.t * 'a1 TypEnv.SSATE.t

        val partition_range :
          ('a1 -> bool) -> 'a1 TypEnv.SSATE.t -> 'a1 TypEnv.SSATE.t * 'a1
          TypEnv.SSATE.t
       end

      val gtb : (TypEnv.SSATE.key * 'a1) -> (TypEnv.SSATE.key * 'a1) -> bool

      val leb : (TypEnv.SSATE.key * 'a1) -> (TypEnv.SSATE.key * 'a1) -> bool

      val elements_lt :
        (TypEnv.SSATE.key * 'a1) -> 'a1 TypEnv.SSATE.t ->
        (TypEnv.SSATE.key * 'a1) list

      val elements_ge :
        (TypEnv.SSATE.key * 'a1) -> 'a1 TypEnv.SSATE.t ->
        (TypEnv.SSATE.key * 'a1) list

      val max_elt_aux :
        (TypEnv.SSATE.key * 'a1) list -> (TypEnv.SSATE.key * 'a1) option

      val max_elt : 'a1 TypEnv.SSATE.t -> (TypEnv.SSATE.key * 'a1) option

      val min_elt : 'a1 TypEnv.SSATE.t -> (TypEnv.SSATE.key * 'a1) option

      val map_induction_max :
        ('a1 TypEnv.SSATE.t -> __ -> 'a2) -> ('a1 TypEnv.SSATE.t -> 'a1
        TypEnv.SSATE.t -> 'a2 -> TypEnv.SSATE.SE.t -> 'a1 -> __ -> __ -> 'a2)
        -> 'a1 TypEnv.SSATE.t -> 'a2

      val map_induction_min :
        ('a1 TypEnv.SSATE.t -> __ -> 'a2) -> ('a1 TypEnv.SSATE.t -> 'a1
        TypEnv.SSATE.t -> 'a2 -> TypEnv.SSATE.SE.t -> 'a1 -> __ -> __ -> 'a2)
        -> 'a1 TypEnv.SSATE.t -> 'a2
     end

    val eqb : TypEnv.SSATE.SE.t -> TypEnv.SSATE.SE.t -> bool

    val coq_In_dec : 'a1 TypEnv.SSATE.t -> TypEnv.SSATE.key -> bool

    module ME :
     sig
      module TO :
       sig
        type t = TypEnv.SSATE.SE.t
       end

      module IsTO :
       sig
       end

      module OrderTac :
       sig
       end

      val eq_dec : TypEnv.SSATE.SE.t -> TypEnv.SSATE.SE.t -> bool

      val lt_dec : TypEnv.SSATE.SE.t -> TypEnv.SSATE.SE.t -> bool

      val eqb : TypEnv.SSATE.SE.t -> TypEnv.SSATE.SE.t -> bool
     end

    module O :
     sig
      module MO :
       sig
        module TO :
         sig
          type t = TypEnv.SSATE.SE.t
         end

        module IsTO :
         sig
         end

        module OrderTac :
         sig
         end

        val eq_dec : TypEnv.SSATE.SE.t -> TypEnv.SSATE.SE.t -> bool

        val lt_dec : TypEnv.SSATE.SE.t -> TypEnv.SSATE.SE.t -> bool

        val eqb : TypEnv.SSATE.SE.t -> TypEnv.SSATE.SE.t -> bool
       end
     end

    module P :
     sig
      module F :
       sig
        val eqb : TypEnv.SSATE.SE.t -> TypEnv.SSATE.SE.t -> bool

        val coq_In_dec : 'a1 TypEnv.SSATE.t -> TypEnv.SSATE.key -> bool
       end

      val uncurry : ('a1 -> 'a2 -> 'a3) -> ('a1 * 'a2) -> 'a3

      val of_list : (TypEnv.SSATE.key * 'a1) list -> 'a1 TypEnv.SSATE.t

      val to_list : 'a1 TypEnv.SSATE.t -> (TypEnv.SSATE.key * 'a1) list

      val fold_rec :
        (TypEnv.SSATE.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 TypEnv.SSATE.t
        -> ('a1 TypEnv.SSATE.t -> __ -> 'a3) -> (TypEnv.SSATE.key -> 'a1 ->
        'a2 -> 'a1 TypEnv.SSATE.t -> 'a1 TypEnv.SSATE.t -> __ -> __ -> __ ->
        'a3 -> 'a3) -> 'a3

      val fold_rec_bis :
        (TypEnv.SSATE.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 TypEnv.SSATE.t
        -> ('a1 TypEnv.SSATE.t -> 'a1 TypEnv.SSATE.t -> 'a2 -> __ -> 'a3 ->
        'a3) -> 'a3 -> (TypEnv.SSATE.key -> 'a1 -> 'a2 -> 'a1 TypEnv.SSATE.t
        -> __ -> __ -> 'a3 -> 'a3) -> 'a3

      val fold_rec_nodep :
        (TypEnv.SSATE.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 TypEnv.SSATE.t
        -> 'a3 -> (TypEnv.SSATE.key -> 'a1 -> 'a2 -> __ -> 'a3 -> 'a3) -> 'a3

      val fold_rec_weak :
        (TypEnv.SSATE.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> ('a1 TypEnv.SSATE.t
        -> 'a1 TypEnv.SSATE.t -> 'a2 -> __ -> 'a3 -> 'a3) -> 'a3 ->
        (TypEnv.SSATE.key -> 'a1 -> 'a2 -> 'a1 TypEnv.SSATE.t -> __ -> 'a3 ->
        'a3) -> 'a1 TypEnv.SSATE.t -> 'a3

      val fold_rel :
        (TypEnv.SSATE.key -> 'a1 -> 'a2 -> 'a2) -> (TypEnv.SSATE.key -> 'a1
        -> 'a3 -> 'a3) -> 'a2 -> 'a3 -> 'a1 TypEnv.SSATE.t -> 'a4 ->
        (TypEnv.SSATE.key -> 'a1 -> 'a2 -> 'a3 -> __ -> 'a4 -> 'a4) -> 'a4

      val map_induction :
        ('a1 TypEnv.SSATE.t -> __ -> 'a2) -> ('a1 TypEnv.SSATE.t -> 'a1
        TypEnv.SSATE.t -> 'a2 -> TypEnv.SSATE.key -> 'a1 -> __ -> __ -> 'a2)
        -> 'a1 TypEnv.SSATE.t -> 'a2

      val map_induction_bis :
        ('a1 TypEnv.SSATE.t -> 'a1 TypEnv.SSATE.t -> __ -> 'a2 -> 'a2) -> 'a2
        -> (TypEnv.SSATE.key -> 'a1 -> 'a1 TypEnv.SSATE.t -> __ -> 'a2 ->
        'a2) -> 'a1 TypEnv.SSATE.t -> 'a2

      val cardinal_inv_2 :
        'a1 TypEnv.SSATE.t -> nat -> (TypEnv.SSATE.key * 'a1)

      val cardinal_inv_2b : 'a1 TypEnv.SSATE.t -> (TypEnv.SSATE.key * 'a1)

      val filter :
        (TypEnv.SSATE.key -> 'a1 -> bool) -> 'a1 TypEnv.SSATE.t -> 'a1
        TypEnv.SSATE.t

      val for_all :
        (TypEnv.SSATE.key -> 'a1 -> bool) -> 'a1 TypEnv.SSATE.t -> bool

      val exists_ :
        (TypEnv.SSATE.key -> 'a1 -> bool) -> 'a1 TypEnv.SSATE.t -> bool

      val partition :
        (TypEnv.SSATE.key -> 'a1 -> bool) -> 'a1 TypEnv.SSATE.t -> 'a1
        TypEnv.SSATE.t * 'a1 TypEnv.SSATE.t

      val update :
        'a1 TypEnv.SSATE.t -> 'a1 TypEnv.SSATE.t -> 'a1 TypEnv.SSATE.t

      val restrict :
        'a1 TypEnv.SSATE.t -> 'a1 TypEnv.SSATE.t -> 'a1 TypEnv.SSATE.t

      val diff :
        'a1 TypEnv.SSATE.t -> 'a1 TypEnv.SSATE.t -> 'a1 TypEnv.SSATE.t

      val coq_Partition_In :
        'a1 TypEnv.SSATE.t -> 'a1 TypEnv.SSATE.t -> 'a1 TypEnv.SSATE.t ->
        TypEnv.SSATE.key -> bool

      val update_dec :
        'a1 TypEnv.SSATE.t -> 'a1 TypEnv.SSATE.t -> TypEnv.SSATE.key -> 'a1
        -> bool

      val filter_dom :
        (TypEnv.SSATE.key -> bool) -> 'a1 TypEnv.SSATE.t -> 'a1 TypEnv.SSATE.t

      val filter_range :
        ('a1 -> bool) -> 'a1 TypEnv.SSATE.t -> 'a1 TypEnv.SSATE.t

      val for_all_dom :
        (TypEnv.SSATE.key -> bool) -> 'a1 TypEnv.SSATE.t -> bool

      val for_all_range : ('a1 -> bool) -> 'a1 TypEnv.SSATE.t -> bool

      val exists_dom :
        (TypEnv.SSATE.key -> bool) -> 'a1 TypEnv.SSATE.t -> bool

      val exists_range : ('a1 -> bool) -> 'a1 TypEnv.SSATE.t -> bool

      val partition_dom :
        (TypEnv.SSATE.key -> bool) -> 'a1 TypEnv.SSATE.t -> 'a1
        TypEnv.SSATE.t * 'a1 TypEnv.SSATE.t

      val partition_range :
        ('a1 -> bool) -> 'a1 TypEnv.SSATE.t -> 'a1 TypEnv.SSATE.t * 'a1
        TypEnv.SSATE.t
     end

    val gtb : (TypEnv.SSATE.key * 'a1) -> (TypEnv.SSATE.key * 'a1) -> bool

    val leb : (TypEnv.SSATE.key * 'a1) -> (TypEnv.SSATE.key * 'a1) -> bool

    val elements_lt :
      (TypEnv.SSATE.key * 'a1) -> 'a1 TypEnv.SSATE.t ->
      (TypEnv.SSATE.key * 'a1) list

    val elements_ge :
      (TypEnv.SSATE.key * 'a1) -> 'a1 TypEnv.SSATE.t ->
      (TypEnv.SSATE.key * 'a1) list

    val max_elt_aux :
      (TypEnv.SSATE.key * 'a1) list -> (TypEnv.SSATE.key * 'a1) option

    val max_elt : 'a1 TypEnv.SSATE.t -> (TypEnv.SSATE.key * 'a1) option

    val min_elt : 'a1 TypEnv.SSATE.t -> (TypEnv.SSATE.key * 'a1) option

    val map_induction_max :
      ('a1 TypEnv.SSATE.t -> __ -> 'a2) -> ('a1 TypEnv.SSATE.t -> 'a1
      TypEnv.SSATE.t -> 'a2 -> TypEnv.SSATE.SE.t -> 'a1 -> __ -> __ -> 'a2)
      -> 'a1 TypEnv.SSATE.t -> 'a2

    val map_induction_min :
      ('a1 TypEnv.SSATE.t -> __ -> 'a2) -> ('a1 TypEnv.SSATE.t -> 'a1
      TypEnv.SSATE.t -> 'a2 -> TypEnv.SSATE.SE.t -> 'a1 -> __ -> __ -> 'a2)
      -> 'a1 TypEnv.SSATE.t -> 'a2

    val memP : TypEnv.SSATE.key -> 'a1 TypEnv.SSATE.t -> reflect

    val split :
      ('a1 * 'a2) TypEnv.SSATE.t -> 'a1 TypEnv.SSATE.t * 'a2 TypEnv.SSATE.t

    module EFacts :
     sig
      module TO :
       sig
        type t = TypEnv.SSATE.SE.t
       end

      module IsTO :
       sig
       end

      module OrderTac :
       sig
       end

      val eq_dec : TypEnv.SSATE.SE.t -> TypEnv.SSATE.SE.t -> bool

      val lt_dec : TypEnv.SSATE.SE.t -> TypEnv.SSATE.SE.t -> bool

      val eqb : TypEnv.SSATE.SE.t -> TypEnv.SSATE.SE.t -> bool
     end

    val max_opt :
      TypEnv.SSATE.key -> TypEnv.SSATE.key option -> TypEnv.SSATE.key

    val max_key_elements :
      (TypEnv.SSATE.key * 'a1) list -> TypEnv.SSATE.key option

    val max_key : 'a1 TypEnv.SSATE.t -> TypEnv.SSATE.key option

    val min_opt :
      TypEnv.SSATE.key -> TypEnv.SSATE.key option -> TypEnv.SSATE.key

    val min_key_elements :
      (TypEnv.SSATE.key * 'a1) list -> TypEnv.SSATE.key option

    val min_key : 'a1 TypEnv.SSATE.t -> TypEnv.SSATE.key option
   end
 end
