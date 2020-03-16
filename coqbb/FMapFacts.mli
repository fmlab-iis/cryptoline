open Datatypes
open FMapInterface
open List0

type __ = Obj.t

module WFacts_fun :
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
 sig
  val eqb : E.t -> E.t -> bool

  val coq_In_dec : 'a1 M.t -> M.key -> bool
 end

module WFacts :
 functor (M:WS) ->
 sig
  val eqb : M.E.t -> M.E.t -> bool

  val coq_In_dec : 'a1 M.t -> M.key -> bool
 end

module Facts :
 functor (M:WS) ->
 sig
  val eqb : M.E.t -> M.E.t -> bool

  val coq_In_dec : 'a1 M.t -> M.key -> bool
 end

module WProperties_fun :
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
 sig
  module F :
   sig
    val eqb : E.t -> E.t -> bool

    val coq_In_dec : 'a1 M.t -> M.key -> bool
   end

  val uncurry : ('a1 -> 'a2 -> 'a3) -> ('a1 * 'a2) -> 'a3

  val of_list : (M.key * 'a1) list -> 'a1 M.t

  val to_list : 'a1 M.t -> (M.key * 'a1) list

  val fold_rec :
    (M.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 M.t -> ('a1 M.t -> __ -> 'a3)
    -> (M.key -> 'a1 -> 'a2 -> 'a1 M.t -> 'a1 M.t -> __ -> __ -> __ -> 'a3 ->
    'a3) -> 'a3

  val fold_rec_bis :
    (M.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 M.t -> ('a1 M.t -> 'a1 M.t ->
    'a2 -> __ -> 'a3 -> 'a3) -> 'a3 -> (M.key -> 'a1 -> 'a2 -> 'a1 M.t -> __
    -> __ -> 'a3 -> 'a3) -> 'a3

  val fold_rec_nodep :
    (M.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 M.t -> 'a3 -> (M.key -> 'a1 ->
    'a2 -> __ -> 'a3 -> 'a3) -> 'a3

  val fold_rec_weak :
    (M.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> ('a1 M.t -> 'a1 M.t -> 'a2 -> __
    -> 'a3 -> 'a3) -> 'a3 -> (M.key -> 'a1 -> 'a2 -> 'a1 M.t -> __ -> 'a3 ->
    'a3) -> 'a1 M.t -> 'a3

  val fold_rel :
    (M.key -> 'a1 -> 'a2 -> 'a2) -> (M.key -> 'a1 -> 'a3 -> 'a3) -> 'a2 ->
    'a3 -> 'a1 M.t -> 'a4 -> (M.key -> 'a1 -> 'a2 -> 'a3 -> __ -> 'a4 -> 'a4)
    -> 'a4

  val map_induction :
    ('a1 M.t -> __ -> 'a2) -> ('a1 M.t -> 'a1 M.t -> 'a2 -> M.key -> 'a1 ->
    __ -> __ -> 'a2) -> 'a1 M.t -> 'a2

  val map_induction_bis :
    ('a1 M.t -> 'a1 M.t -> __ -> 'a2 -> 'a2) -> 'a2 -> (M.key -> 'a1 -> 'a1
    M.t -> __ -> 'a2 -> 'a2) -> 'a1 M.t -> 'a2

  val cardinal_inv_2 : 'a1 M.t -> nat -> (M.key * 'a1)

  val cardinal_inv_2b : 'a1 M.t -> (M.key * 'a1)

  val filter : (M.key -> 'a1 -> bool) -> 'a1 M.t -> 'a1 M.t

  val for_all : (M.key -> 'a1 -> bool) -> 'a1 M.t -> bool

  val exists_ : (M.key -> 'a1 -> bool) -> 'a1 M.t -> bool

  val partition : (M.key -> 'a1 -> bool) -> 'a1 M.t -> 'a1 M.t * 'a1 M.t

  val update : 'a1 M.t -> 'a1 M.t -> 'a1 M.t

  val restrict : 'a1 M.t -> 'a1 M.t -> 'a1 M.t

  val diff : 'a1 M.t -> 'a1 M.t -> 'a1 M.t

  val coq_Partition_In : 'a1 M.t -> 'a1 M.t -> 'a1 M.t -> M.key -> bool

  val update_dec : 'a1 M.t -> 'a1 M.t -> M.key -> 'a1 -> bool

  val filter_dom : (M.key -> bool) -> 'a1 M.t -> 'a1 M.t

  val filter_range : ('a1 -> bool) -> 'a1 M.t -> 'a1 M.t

  val for_all_dom : (M.key -> bool) -> 'a1 M.t -> bool

  val for_all_range : ('a1 -> bool) -> 'a1 M.t -> bool

  val exists_dom : (M.key -> bool) -> 'a1 M.t -> bool

  val exists_range : ('a1 -> bool) -> 'a1 M.t -> bool

  val partition_dom : (M.key -> bool) -> 'a1 M.t -> 'a1 M.t * 'a1 M.t

  val partition_range : ('a1 -> bool) -> 'a1 M.t -> 'a1 M.t * 'a1 M.t
 end

module WProperties :
 functor (M:WS) ->
 sig
  module F :
   sig
    val eqb : M.E.t -> M.E.t -> bool

    val coq_In_dec : 'a1 M.t -> M.key -> bool
   end

  val uncurry : ('a1 -> 'a2 -> 'a3) -> ('a1 * 'a2) -> 'a3

  val of_list : (M.key * 'a1) list -> 'a1 M.t

  val to_list : 'a1 M.t -> (M.key * 'a1) list

  val fold_rec :
    (M.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 M.t -> ('a1 M.t -> __ -> 'a3)
    -> (M.key -> 'a1 -> 'a2 -> 'a1 M.t -> 'a1 M.t -> __ -> __ -> __ -> 'a3 ->
    'a3) -> 'a3

  val fold_rec_bis :
    (M.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 M.t -> ('a1 M.t -> 'a1 M.t ->
    'a2 -> __ -> 'a3 -> 'a3) -> 'a3 -> (M.key -> 'a1 -> 'a2 -> 'a1 M.t -> __
    -> __ -> 'a3 -> 'a3) -> 'a3

  val fold_rec_nodep :
    (M.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 M.t -> 'a3 -> (M.key -> 'a1 ->
    'a2 -> __ -> 'a3 -> 'a3) -> 'a3

  val fold_rec_weak :
    (M.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> ('a1 M.t -> 'a1 M.t -> 'a2 -> __
    -> 'a3 -> 'a3) -> 'a3 -> (M.key -> 'a1 -> 'a2 -> 'a1 M.t -> __ -> 'a3 ->
    'a3) -> 'a1 M.t -> 'a3

  val fold_rel :
    (M.key -> 'a1 -> 'a2 -> 'a2) -> (M.key -> 'a1 -> 'a3 -> 'a3) -> 'a2 ->
    'a3 -> 'a1 M.t -> 'a4 -> (M.key -> 'a1 -> 'a2 -> 'a3 -> __ -> 'a4 -> 'a4)
    -> 'a4

  val map_induction :
    ('a1 M.t -> __ -> 'a2) -> ('a1 M.t -> 'a1 M.t -> 'a2 -> M.key -> 'a1 ->
    __ -> __ -> 'a2) -> 'a1 M.t -> 'a2

  val map_induction_bis :
    ('a1 M.t -> 'a1 M.t -> __ -> 'a2 -> 'a2) -> 'a2 -> (M.key -> 'a1 -> 'a1
    M.t -> __ -> 'a2 -> 'a2) -> 'a1 M.t -> 'a2

  val cardinal_inv_2 : 'a1 M.t -> nat -> (M.key * 'a1)

  val cardinal_inv_2b : 'a1 M.t -> (M.key * 'a1)

  val filter : (M.key -> 'a1 -> bool) -> 'a1 M.t -> 'a1 M.t

  val for_all : (M.key -> 'a1 -> bool) -> 'a1 M.t -> bool

  val exists_ : (M.key -> 'a1 -> bool) -> 'a1 M.t -> bool

  val partition : (M.key -> 'a1 -> bool) -> 'a1 M.t -> 'a1 M.t * 'a1 M.t

  val update : 'a1 M.t -> 'a1 M.t -> 'a1 M.t

  val restrict : 'a1 M.t -> 'a1 M.t -> 'a1 M.t

  val diff : 'a1 M.t -> 'a1 M.t -> 'a1 M.t

  val coq_Partition_In : 'a1 M.t -> 'a1 M.t -> 'a1 M.t -> M.key -> bool

  val update_dec : 'a1 M.t -> 'a1 M.t -> M.key -> 'a1 -> bool

  val filter_dom : (M.key -> bool) -> 'a1 M.t -> 'a1 M.t

  val filter_range : ('a1 -> bool) -> 'a1 M.t -> 'a1 M.t

  val for_all_dom : (M.key -> bool) -> 'a1 M.t -> bool

  val for_all_range : ('a1 -> bool) -> 'a1 M.t -> bool

  val exists_dom : (M.key -> bool) -> 'a1 M.t -> bool

  val exists_range : ('a1 -> bool) -> 'a1 M.t -> bool

  val partition_dom : (M.key -> bool) -> 'a1 M.t -> 'a1 M.t * 'a1 M.t

  val partition_range : ('a1 -> bool) -> 'a1 M.t -> 'a1 M.t * 'a1 M.t
 end

module Properties :
 functor (M:WS) ->
 sig
  module F :
   sig
    val eqb : M.E.t -> M.E.t -> bool

    val coq_In_dec : 'a1 M.t -> M.key -> bool
   end

  val uncurry : ('a1 -> 'a2 -> 'a3) -> ('a1 * 'a2) -> 'a3

  val of_list : (M.key * 'a1) list -> 'a1 M.t

  val to_list : 'a1 M.t -> (M.key * 'a1) list

  val fold_rec :
    (M.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 M.t -> ('a1 M.t -> __ -> 'a3)
    -> (M.key -> 'a1 -> 'a2 -> 'a1 M.t -> 'a1 M.t -> __ -> __ -> __ -> 'a3 ->
    'a3) -> 'a3

  val fold_rec_bis :
    (M.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 M.t -> ('a1 M.t -> 'a1 M.t ->
    'a2 -> __ -> 'a3 -> 'a3) -> 'a3 -> (M.key -> 'a1 -> 'a2 -> 'a1 M.t -> __
    -> __ -> 'a3 -> 'a3) -> 'a3

  val fold_rec_nodep :
    (M.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 M.t -> 'a3 -> (M.key -> 'a1 ->
    'a2 -> __ -> 'a3 -> 'a3) -> 'a3

  val fold_rec_weak :
    (M.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> ('a1 M.t -> 'a1 M.t -> 'a2 -> __
    -> 'a3 -> 'a3) -> 'a3 -> (M.key -> 'a1 -> 'a2 -> 'a1 M.t -> __ -> 'a3 ->
    'a3) -> 'a1 M.t -> 'a3

  val fold_rel :
    (M.key -> 'a1 -> 'a2 -> 'a2) -> (M.key -> 'a1 -> 'a3 -> 'a3) -> 'a2 ->
    'a3 -> 'a1 M.t -> 'a4 -> (M.key -> 'a1 -> 'a2 -> 'a3 -> __ -> 'a4 -> 'a4)
    -> 'a4

  val map_induction :
    ('a1 M.t -> __ -> 'a2) -> ('a1 M.t -> 'a1 M.t -> 'a2 -> M.key -> 'a1 ->
    __ -> __ -> 'a2) -> 'a1 M.t -> 'a2

  val map_induction_bis :
    ('a1 M.t -> 'a1 M.t -> __ -> 'a2 -> 'a2) -> 'a2 -> (M.key -> 'a1 -> 'a1
    M.t -> __ -> 'a2 -> 'a2) -> 'a1 M.t -> 'a2

  val cardinal_inv_2 : 'a1 M.t -> nat -> (M.key * 'a1)

  val cardinal_inv_2b : 'a1 M.t -> (M.key * 'a1)

  val filter : (M.key -> 'a1 -> bool) -> 'a1 M.t -> 'a1 M.t

  val for_all : (M.key -> 'a1 -> bool) -> 'a1 M.t -> bool

  val exists_ : (M.key -> 'a1 -> bool) -> 'a1 M.t -> bool

  val partition : (M.key -> 'a1 -> bool) -> 'a1 M.t -> 'a1 M.t * 'a1 M.t

  val update : 'a1 M.t -> 'a1 M.t -> 'a1 M.t

  val restrict : 'a1 M.t -> 'a1 M.t -> 'a1 M.t

  val diff : 'a1 M.t -> 'a1 M.t -> 'a1 M.t

  val coq_Partition_In : 'a1 M.t -> 'a1 M.t -> 'a1 M.t -> M.key -> bool

  val update_dec : 'a1 M.t -> 'a1 M.t -> M.key -> 'a1 -> bool

  val filter_dom : (M.key -> bool) -> 'a1 M.t -> 'a1 M.t

  val filter_range : ('a1 -> bool) -> 'a1 M.t -> 'a1 M.t

  val for_all_dom : (M.key -> bool) -> 'a1 M.t -> bool

  val for_all_range : ('a1 -> bool) -> 'a1 M.t -> bool

  val exists_dom : (M.key -> bool) -> 'a1 M.t -> bool

  val exists_range : ('a1 -> bool) -> 'a1 M.t -> bool

  val partition_dom : (M.key -> bool) -> 'a1 M.t -> 'a1 M.t * 'a1 M.t

  val partition_range : ('a1 -> bool) -> 'a1 M.t -> 'a1 M.t * 'a1 M.t
 end

module OrdProperties :
 functor (M:S) ->
 sig
  module ME :
   sig
    module TO :
     sig
      type t = M.E.t
     end

    module IsTO :
     sig
     end

    module OrderTac :
     sig
     end

    val eq_dec : M.E.t -> M.E.t -> bool

    val lt_dec : M.E.t -> M.E.t -> bool

    val eqb : M.E.t -> M.E.t -> bool
   end

  module O :
   sig
    module MO :
     sig
      module TO :
       sig
        type t = M.E.t
       end

      module IsTO :
       sig
       end

      module OrderTac :
       sig
       end

      val eq_dec : M.E.t -> M.E.t -> bool

      val lt_dec : M.E.t -> M.E.t -> bool

      val eqb : M.E.t -> M.E.t -> bool
     end
   end

  module P :
   sig
    module F :
     sig
      val eqb : M.E.t -> M.E.t -> bool

      val coq_In_dec : 'a1 M.t -> M.key -> bool
     end

    val uncurry : ('a1 -> 'a2 -> 'a3) -> ('a1 * 'a2) -> 'a3

    val of_list : (M.key * 'a1) list -> 'a1 M.t

    val to_list : 'a1 M.t -> (M.key * 'a1) list

    val fold_rec :
      (M.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 M.t -> ('a1 M.t -> __ ->
      'a3) -> (M.key -> 'a1 -> 'a2 -> 'a1 M.t -> 'a1 M.t -> __ -> __ -> __ ->
      'a3 -> 'a3) -> 'a3

    val fold_rec_bis :
      (M.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 M.t -> ('a1 M.t -> 'a1 M.t
      -> 'a2 -> __ -> 'a3 -> 'a3) -> 'a3 -> (M.key -> 'a1 -> 'a2 -> 'a1 M.t
      -> __ -> __ -> 'a3 -> 'a3) -> 'a3

    val fold_rec_nodep :
      (M.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> 'a1 M.t -> 'a3 -> (M.key -> 'a1
      -> 'a2 -> __ -> 'a3 -> 'a3) -> 'a3

    val fold_rec_weak :
      (M.key -> 'a1 -> 'a2 -> 'a2) -> 'a2 -> ('a1 M.t -> 'a1 M.t -> 'a2 -> __
      -> 'a3 -> 'a3) -> 'a3 -> (M.key -> 'a1 -> 'a2 -> 'a1 M.t -> __ -> 'a3
      -> 'a3) -> 'a1 M.t -> 'a3

    val fold_rel :
      (M.key -> 'a1 -> 'a2 -> 'a2) -> (M.key -> 'a1 -> 'a3 -> 'a3) -> 'a2 ->
      'a3 -> 'a1 M.t -> 'a4 -> (M.key -> 'a1 -> 'a2 -> 'a3 -> __ -> 'a4 ->
      'a4) -> 'a4

    val map_induction :
      ('a1 M.t -> __ -> 'a2) -> ('a1 M.t -> 'a1 M.t -> 'a2 -> M.key -> 'a1 ->
      __ -> __ -> 'a2) -> 'a1 M.t -> 'a2

    val map_induction_bis :
      ('a1 M.t -> 'a1 M.t -> __ -> 'a2 -> 'a2) -> 'a2 -> (M.key -> 'a1 -> 'a1
      M.t -> __ -> 'a2 -> 'a2) -> 'a1 M.t -> 'a2

    val cardinal_inv_2 : 'a1 M.t -> nat -> (M.key * 'a1)

    val cardinal_inv_2b : 'a1 M.t -> (M.key * 'a1)

    val filter : (M.key -> 'a1 -> bool) -> 'a1 M.t -> 'a1 M.t

    val for_all : (M.key -> 'a1 -> bool) -> 'a1 M.t -> bool

    val exists_ : (M.key -> 'a1 -> bool) -> 'a1 M.t -> bool

    val partition : (M.key -> 'a1 -> bool) -> 'a1 M.t -> 'a1 M.t * 'a1 M.t

    val update : 'a1 M.t -> 'a1 M.t -> 'a1 M.t

    val restrict : 'a1 M.t -> 'a1 M.t -> 'a1 M.t

    val diff : 'a1 M.t -> 'a1 M.t -> 'a1 M.t

    val coq_Partition_In : 'a1 M.t -> 'a1 M.t -> 'a1 M.t -> M.key -> bool

    val update_dec : 'a1 M.t -> 'a1 M.t -> M.key -> 'a1 -> bool

    val filter_dom : (M.key -> bool) -> 'a1 M.t -> 'a1 M.t

    val filter_range : ('a1 -> bool) -> 'a1 M.t -> 'a1 M.t

    val for_all_dom : (M.key -> bool) -> 'a1 M.t -> bool

    val for_all_range : ('a1 -> bool) -> 'a1 M.t -> bool

    val exists_dom : (M.key -> bool) -> 'a1 M.t -> bool

    val exists_range : ('a1 -> bool) -> 'a1 M.t -> bool

    val partition_dom : (M.key -> bool) -> 'a1 M.t -> 'a1 M.t * 'a1 M.t

    val partition_range : ('a1 -> bool) -> 'a1 M.t -> 'a1 M.t * 'a1 M.t
   end

  val gtb : (M.key * 'a1) -> (M.key * 'a1) -> bool

  val leb : (M.key * 'a1) -> (M.key * 'a1) -> bool

  val elements_lt : (M.key * 'a1) -> 'a1 M.t -> (M.key * 'a1) list

  val elements_ge : (M.key * 'a1) -> 'a1 M.t -> (M.key * 'a1) list

  val max_elt_aux : (M.key * 'a1) list -> (M.key * 'a1) option

  val max_elt : 'a1 M.t -> (M.key * 'a1) option

  val min_elt : 'a1 M.t -> (M.key * 'a1) option

  val map_induction_max :
    ('a1 M.t -> __ -> 'a2) -> ('a1 M.t -> 'a1 M.t -> 'a2 -> M.E.t -> 'a1 ->
    __ -> __ -> 'a2) -> 'a1 M.t -> 'a2

  val map_induction_min :
    ('a1 M.t -> __ -> 'a2) -> ('a1 M.t -> 'a1 M.t -> 'a2 -> M.E.t -> 'a1 ->
    __ -> __ -> 'a2) -> 'a1 M.t -> 'a2
 end
