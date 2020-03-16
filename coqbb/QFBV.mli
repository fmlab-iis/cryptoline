open Bool
open Datatypes
open FSets
open NBitsDef
open NBitsOp
open Nat0
open State
open Var
open Eqtype
open Seq
open Ssrnat

type __ = Obj.t

module MakeQFBV :
 functor (V:SsrOrder.SsrOrder) ->
 functor (VS:SsrFSet with module SE = V) ->
 functor (TE:TypEnv.TypEnv with module SE = V) ->
 functor (S:sig
  type t

  val acc : V.t -> t -> bits

  val upd : V.t -> bits -> t -> t

  val upd2 : V.t -> bits -> V.t -> bits -> t -> t
 end) ->
 sig
  module VSLemmas :
   sig
    module F :
     sig
      val eqb : VS.SE.t -> VS.SE.t -> bool
     end

    module OP :
     sig
      module ME :
       sig
        module TO :
         sig
          type t = VS.SE.t
         end

        module IsTO :
         sig
         end

        module OrderTac :
         sig
         end

        val eq_dec : VS.SE.t -> VS.SE.t -> bool

        val lt_dec : VS.SE.t -> VS.SE.t -> bool

        val eqb : VS.SE.t -> VS.SE.t -> bool
       end

      module P :
       sig
        module Dec :
         sig
          module F :
           sig
            val eqb : VS.SE.t -> VS.SE.t -> bool
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
          val eqb : VS.SE.t -> VS.SE.t -> bool
         end

        val coq_In_dec : VS.elt -> VS.t -> bool

        val of_list : VS.elt list -> VS.t

        val to_list : VS.t -> VS.elt list

        val fold_rec :
          (VS.elt -> 'a1 -> 'a1) -> 'a1 -> VS.t -> (VS.t -> __ -> 'a2) ->
          (VS.elt -> 'a1 -> VS.t -> VS.t -> __ -> __ -> __ -> 'a2 -> 'a2) ->
          'a2

        val fold_rec_bis :
          (VS.elt -> 'a1 -> 'a1) -> 'a1 -> VS.t -> (VS.t -> VS.t -> 'a1 -> __
          -> 'a2 -> 'a2) -> 'a2 -> (VS.elt -> 'a1 -> VS.t -> __ -> __ -> 'a2
          -> 'a2) -> 'a2

        val fold_rec_nodep :
          (VS.elt -> 'a1 -> 'a1) -> 'a1 -> VS.t -> 'a2 -> (VS.elt -> 'a1 ->
          __ -> 'a2 -> 'a2) -> 'a2

        val fold_rec_weak :
          (VS.elt -> 'a1 -> 'a1) -> 'a1 -> (VS.t -> VS.t -> 'a1 -> __ -> 'a2
          -> 'a2) -> 'a2 -> (VS.elt -> 'a1 -> VS.t -> __ -> 'a2 -> 'a2) ->
          VS.t -> 'a2

        val fold_rel :
          (VS.elt -> 'a1 -> 'a1) -> (VS.elt -> 'a2 -> 'a2) -> 'a1 -> 'a2 ->
          VS.t -> 'a3 -> (VS.elt -> 'a1 -> 'a2 -> __ -> 'a3 -> 'a3) -> 'a3

        val set_induction :
          (VS.t -> __ -> 'a1) -> (VS.t -> VS.t -> 'a1 -> VS.elt -> __ -> __
          -> 'a1) -> VS.t -> 'a1

        val set_induction_bis :
          (VS.t -> VS.t -> __ -> 'a1 -> 'a1) -> 'a1 -> (VS.elt -> VS.t -> __
          -> 'a1 -> 'a1) -> VS.t -> 'a1

        val cardinal_inv_2 : VS.t -> nat -> VS.elt

        val cardinal_inv_2b : VS.t -> VS.elt
       end

      val gtb : VS.SE.t -> VS.SE.t -> bool

      val leb : VS.SE.t -> VS.SE.t -> bool

      val elements_lt : VS.SE.t -> VS.t -> VS.SE.t list

      val elements_ge : VS.SE.t -> VS.t -> VS.SE.t list

      val set_induction_max :
        (VS.t -> __ -> 'a1) -> (VS.t -> VS.t -> 'a1 -> VS.SE.t -> __ -> __ ->
        'a1) -> VS.t -> 'a1

      val set_induction_min :
        (VS.t -> __ -> 'a1) -> (VS.t -> VS.t -> 'a1 -> VS.SE.t -> __ -> __ ->
        'a1) -> VS.t -> 'a1
     end

    val eqb : VS.SE.t -> VS.SE.t -> bool

    module ME :
     sig
      module TO :
       sig
        type t = VS.SE.t
       end

      module IsTO :
       sig
       end

      module OrderTac :
       sig
       end

      val eq_dec : VS.SE.t -> VS.SE.t -> bool

      val lt_dec : VS.SE.t -> VS.SE.t -> bool

      val eqb : VS.SE.t -> VS.SE.t -> bool
     end

    module P :
     sig
      module Dec :
       sig
        module F :
         sig
          val eqb : VS.SE.t -> VS.SE.t -> bool
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
        val eqb : VS.SE.t -> VS.SE.t -> bool
       end

      val coq_In_dec : VS.elt -> VS.t -> bool

      val of_list : VS.elt list -> VS.t

      val to_list : VS.t -> VS.elt list

      val fold_rec :
        (VS.elt -> 'a1 -> 'a1) -> 'a1 -> VS.t -> (VS.t -> __ -> 'a2) ->
        (VS.elt -> 'a1 -> VS.t -> VS.t -> __ -> __ -> __ -> 'a2 -> 'a2) -> 'a2

      val fold_rec_bis :
        (VS.elt -> 'a1 -> 'a1) -> 'a1 -> VS.t -> (VS.t -> VS.t -> 'a1 -> __
        -> 'a2 -> 'a2) -> 'a2 -> (VS.elt -> 'a1 -> VS.t -> __ -> __ -> 'a2 ->
        'a2) -> 'a2

      val fold_rec_nodep :
        (VS.elt -> 'a1 -> 'a1) -> 'a1 -> VS.t -> 'a2 -> (VS.elt -> 'a1 -> __
        -> 'a2 -> 'a2) -> 'a2

      val fold_rec_weak :
        (VS.elt -> 'a1 -> 'a1) -> 'a1 -> (VS.t -> VS.t -> 'a1 -> __ -> 'a2 ->
        'a2) -> 'a2 -> (VS.elt -> 'a1 -> VS.t -> __ -> 'a2 -> 'a2) -> VS.t ->
        'a2

      val fold_rel :
        (VS.elt -> 'a1 -> 'a1) -> (VS.elt -> 'a2 -> 'a2) -> 'a1 -> 'a2 ->
        VS.t -> 'a3 -> (VS.elt -> 'a1 -> 'a2 -> __ -> 'a3 -> 'a3) -> 'a3

      val set_induction :
        (VS.t -> __ -> 'a1) -> (VS.t -> VS.t -> 'a1 -> VS.elt -> __ -> __ ->
        'a1) -> VS.t -> 'a1

      val set_induction_bis :
        (VS.t -> VS.t -> __ -> 'a1 -> 'a1) -> 'a1 -> (VS.elt -> VS.t -> __ ->
        'a1 -> 'a1) -> VS.t -> 'a1

      val cardinal_inv_2 : VS.t -> nat -> VS.elt

      val cardinal_inv_2b : VS.t -> VS.elt
     end

    val gtb : VS.SE.t -> VS.SE.t -> bool

    val leb : VS.SE.t -> VS.SE.t -> bool

    val elements_lt : VS.SE.t -> VS.t -> VS.SE.t list

    val elements_ge : VS.SE.t -> VS.t -> VS.SE.t list

    val set_induction_max :
      (VS.t -> __ -> 'a1) -> (VS.t -> VS.t -> 'a1 -> VS.SE.t -> __ -> __ ->
      'a1) -> VS.t -> 'a1

    val set_induction_min :
      (VS.t -> __ -> 'a1) -> (VS.t -> VS.t -> 'a1 -> VS.SE.t -> __ -> __ ->
      'a1) -> VS.t -> 'a1

    val memP : VS.elt -> VS.t -> reflect

    val disjoint : VS.t -> VS.t -> bool
   end

  type eunop =
  | Unot
  | Uneg
  | Uextr of nat * nat
  | Uhigh of nat
  | Ulow of nat
  | Uzext of nat
  | Usext of nat

  val eunop_rect :
    'a1 -> 'a1 -> (nat -> nat -> 'a1) -> (nat -> 'a1) -> (nat -> 'a1) -> (nat
    -> 'a1) -> (nat -> 'a1) -> eunop -> 'a1

  val eunop_rec :
    'a1 -> 'a1 -> (nat -> nat -> 'a1) -> (nat -> 'a1) -> (nat -> 'a1) -> (nat
    -> 'a1) -> (nat -> 'a1) -> eunop -> 'a1

  type ebinop =
  | Band
  | Bor
  | Bxor
  | Badd
  | Bsub
  | Bmul
  | Bmod
  | Bsrem
  | Bsmod
  | Bshl
  | Blshr
  | Bashr
  | Bconcat

  val ebinop_rect :
    'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1
    -> 'a1 -> 'a1 -> ebinop -> 'a1

  val ebinop_rec :
    'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1
    -> 'a1 -> 'a1 -> ebinop -> 'a1

  type bbinop =
  | Beq
  | Bult
  | Bule
  | Bugt
  | Buge
  | Bslt
  | Bsle
  | Bsgt
  | Bsge
  | Buaddo
  | Busubo
  | Bumulo
  | Bsaddo
  | Bssubo
  | Bsmulo

  val bbinop_rect :
    'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1
    -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> bbinop -> 'a1

  val bbinop_rec :
    'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1
    -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> bbinop -> 'a1

  type exp =
  | Evar of V.t
  | Econst of bits
  | Eunop of eunop * exp
  | Ebinop of ebinop * exp * exp
  | Eite of bexp * exp * exp
  and bexp =
  | Bfalse
  | Btrue
  | Bbinop of bbinop * exp * exp
  | Blneg of bexp
  | Bconj of bexp * bexp
  | Bdisj of bexp * bexp

  val exp_rect :
    (V.t -> 'a1) -> (bits -> 'a1) -> (eunop -> exp -> 'a1 -> 'a1) -> (ebinop
    -> exp -> 'a1 -> exp -> 'a1 -> 'a1) -> (bexp -> exp -> 'a1 -> exp -> 'a1
    -> 'a1) -> exp -> 'a1

  val exp_rec :
    (V.t -> 'a1) -> (bits -> 'a1) -> (eunop -> exp -> 'a1 -> 'a1) -> (ebinop
    -> exp -> 'a1 -> exp -> 'a1 -> 'a1) -> (bexp -> exp -> 'a1 -> exp -> 'a1
    -> 'a1) -> exp -> 'a1

  val bexp_rect :
    'a1 -> 'a1 -> (bbinop -> exp -> exp -> 'a1) -> (bexp -> 'a1 -> 'a1) ->
    (bexp -> 'a1 -> bexp -> 'a1 -> 'a1) -> (bexp -> 'a1 -> bexp -> 'a1 ->
    'a1) -> bexp -> 'a1

  val bexp_rec :
    'a1 -> 'a1 -> (bbinop -> exp -> exp -> 'a1) -> (bexp -> 'a1 -> 'a1) ->
    (bexp -> 'a1 -> bexp -> 'a1 -> 'a1) -> (bexp -> 'a1 -> bexp -> 'a1 ->
    'a1) -> bexp -> 'a1

  val eunop_eqn : eunop -> eunop -> bool

  val eunop_eqP : eunop -> eunop -> reflect

  val eunop_eqMixin : eunop Equality.mixin_of

  val eunop_eqType : Equality.coq_type

  val ebinop_eqn : ebinop -> ebinop -> bool

  val ebinop_eqP : ebinop -> ebinop -> reflect

  val ebinop_eqMixin : ebinop Equality.mixin_of

  val ebinop_eqType : Equality.coq_type

  val bbinop_eqn : bbinop -> bbinop -> bool

  val bbinop_eqP : bbinop -> bbinop -> reflect

  val bbinop_eqMixin : bbinop Equality.mixin_of

  val bbinop_eqType : Equality.coq_type

  val exp_eqn : exp -> exp -> bool

  val bexp_eqn : bexp -> bexp -> bool

  val exp_eqP : exp -> exp -> reflect

  val bexp_eqP : bexp -> bexp -> reflect

  val exp_eqMixin : exp Equality.mixin_of

  val bexp_eqMixin : bexp Equality.mixin_of

  val exp_eqType : Equality.coq_type

  val bexp_eqType : Equality.coq_type

  val eunop_denote : eunop -> bits -> bits

  val ebinop_denote : ebinop -> bits -> bits -> bits

  val bbinop_denote : bbinop -> bits -> bits -> bool

  val eval_exp : exp -> S.t -> bits

  val eval_bexp : bexp -> S.t -> bool

  val vars_exp : exp -> VS.t

  val vars_bexp : bexp -> VS.t

  val id_eunop : eunop -> nat

  val eunop_ltn : eunop -> eunop -> bool

  val id_ebinop : ebinop -> nat

  val ebinop_ltn : ebinop -> ebinop -> bool

  val id_bbinop : bbinop -> nat

  val bbinop_ltn : bbinop -> bbinop -> bool

  val id_exp : exp -> nat

  val id_bexp : bexp -> nat

  val exp_ltn : exp -> exp -> bool

  val bexp_ltn : bexp -> bexp -> bool

  val exp_compare : exp -> exp -> exp OrderedType.coq_Compare

  val bexp_compare : bexp -> bexp -> bexp OrderedType.coq_Compare

  module ExpOrderMinimal :
   sig
    val t : Equality.coq_type

    val eqn : Equality.sort -> Equality.sort -> bool

    val ltn : Equality.sort -> Equality.sort -> bool

    val compare :
      Equality.sort -> Equality.sort -> Equality.sort OrderedType.coq_Compare
   end

  module ExpOrder :
   sig
    val coq_T : Equality.coq_type

    type t = Equality.sort

    val ltn : t -> t -> bool

    val compare : t -> t -> t OrderedType.coq_Compare

    val eq_dec : t -> t -> bool
   end

  module BexpOrderMinimal :
   sig
    val t : Equality.coq_type

    val eqn : Equality.sort -> Equality.sort -> bool

    val ltn : Equality.sort -> Equality.sort -> bool

    val compare :
      Equality.sort -> Equality.sort -> Equality.sort OrderedType.coq_Compare
   end

  module BexpOrder :
   sig
    val coq_T : Equality.coq_type

    type t = Equality.sort

    val ltn : t -> t -> bool

    val compare : t -> t -> t OrderedType.coq_Compare

    val eq_dec : t -> t -> bool
   end

  val len_exp : exp -> nat

  val len_bexp : bexp -> nat

  val subee : exp -> exp -> bool

  val subeb : exp -> bexp -> bool

  val subbe : bexp -> exp -> bool

  val subbb : bexp -> bexp -> bool

  val exp_size : exp -> TE.env -> nat

  val well_formed_exp : exp -> TE.env -> bool

  val well_formed_bexp : bexp -> TE.env -> bool

  val well_formed_bexps : bexp list -> TE.env -> bool
 end

module QFBV :
 sig
  module VSLemmas :
   sig
    module F :
     sig
      val eqb : SSAVS.SE.t -> SSAVS.SE.t -> bool
     end

    module OP :
     sig
      module ME :
       sig
        module TO :
         sig
          type t = SSAVS.SE.t
         end

        module IsTO :
         sig
         end

        module OrderTac :
         sig
         end

        val eq_dec : SSAVS.SE.t -> SSAVS.SE.t -> bool

        val lt_dec : SSAVS.SE.t -> SSAVS.SE.t -> bool

        val eqb : SSAVS.SE.t -> SSAVS.SE.t -> bool
       end

      module P :
       sig
        module Dec :
         sig
          module F :
           sig
            val eqb : SSAVS.SE.t -> SSAVS.SE.t -> bool
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
          val eqb : SSAVS.SE.t -> SSAVS.SE.t -> bool
         end

        val coq_In_dec : SSAVS.elt -> SSAVS.t -> bool

        val of_list : SSAVS.elt list -> SSAVS.t

        val to_list : SSAVS.t -> SSAVS.elt list

        val fold_rec :
          (SSAVS.elt -> 'a1 -> 'a1) -> 'a1 -> SSAVS.t -> (SSAVS.t -> __ ->
          'a2) -> (SSAVS.elt -> 'a1 -> SSAVS.t -> SSAVS.t -> __ -> __ -> __
          -> 'a2 -> 'a2) -> 'a2

        val fold_rec_bis :
          (SSAVS.elt -> 'a1 -> 'a1) -> 'a1 -> SSAVS.t -> (SSAVS.t -> SSAVS.t
          -> 'a1 -> __ -> 'a2 -> 'a2) -> 'a2 -> (SSAVS.elt -> 'a1 -> SSAVS.t
          -> __ -> __ -> 'a2 -> 'a2) -> 'a2

        val fold_rec_nodep :
          (SSAVS.elt -> 'a1 -> 'a1) -> 'a1 -> SSAVS.t -> 'a2 -> (SSAVS.elt ->
          'a1 -> __ -> 'a2 -> 'a2) -> 'a2

        val fold_rec_weak :
          (SSAVS.elt -> 'a1 -> 'a1) -> 'a1 -> (SSAVS.t -> SSAVS.t -> 'a1 ->
          __ -> 'a2 -> 'a2) -> 'a2 -> (SSAVS.elt -> 'a1 -> SSAVS.t -> __ ->
          'a2 -> 'a2) -> SSAVS.t -> 'a2

        val fold_rel :
          (SSAVS.elt -> 'a1 -> 'a1) -> (SSAVS.elt -> 'a2 -> 'a2) -> 'a1 ->
          'a2 -> SSAVS.t -> 'a3 -> (SSAVS.elt -> 'a1 -> 'a2 -> __ -> 'a3 ->
          'a3) -> 'a3

        val set_induction :
          (SSAVS.t -> __ -> 'a1) -> (SSAVS.t -> SSAVS.t -> 'a1 -> SSAVS.elt
          -> __ -> __ -> 'a1) -> SSAVS.t -> 'a1

        val set_induction_bis :
          (SSAVS.t -> SSAVS.t -> __ -> 'a1 -> 'a1) -> 'a1 -> (SSAVS.elt ->
          SSAVS.t -> __ -> 'a1 -> 'a1) -> SSAVS.t -> 'a1

        val cardinal_inv_2 : SSAVS.t -> nat -> SSAVS.elt

        val cardinal_inv_2b : SSAVS.t -> SSAVS.elt
       end

      val gtb : SSAVS.SE.t -> SSAVS.SE.t -> bool

      val leb : SSAVS.SE.t -> SSAVS.SE.t -> bool

      val elements_lt : SSAVS.SE.t -> SSAVS.t -> SSAVS.SE.t list

      val elements_ge : SSAVS.SE.t -> SSAVS.t -> SSAVS.SE.t list

      val set_induction_max :
        (SSAVS.t -> __ -> 'a1) -> (SSAVS.t -> SSAVS.t -> 'a1 -> SSAVS.SE.t ->
        __ -> __ -> 'a1) -> SSAVS.t -> 'a1

      val set_induction_min :
        (SSAVS.t -> __ -> 'a1) -> (SSAVS.t -> SSAVS.t -> 'a1 -> SSAVS.SE.t ->
        __ -> __ -> 'a1) -> SSAVS.t -> 'a1
     end

    val eqb : SSAVS.SE.t -> SSAVS.SE.t -> bool

    module ME :
     sig
      module TO :
       sig
        type t = SSAVS.SE.t
       end

      module IsTO :
       sig
       end

      module OrderTac :
       sig
       end

      val eq_dec : SSAVS.SE.t -> SSAVS.SE.t -> bool

      val lt_dec : SSAVS.SE.t -> SSAVS.SE.t -> bool

      val eqb : SSAVS.SE.t -> SSAVS.SE.t -> bool
     end

    module P :
     sig
      module Dec :
       sig
        module F :
         sig
          val eqb : SSAVS.SE.t -> SSAVS.SE.t -> bool
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
        val eqb : SSAVS.SE.t -> SSAVS.SE.t -> bool
       end

      val coq_In_dec : SSAVS.elt -> SSAVS.t -> bool

      val of_list : SSAVS.elt list -> SSAVS.t

      val to_list : SSAVS.t -> SSAVS.elt list

      val fold_rec :
        (SSAVS.elt -> 'a1 -> 'a1) -> 'a1 -> SSAVS.t -> (SSAVS.t -> __ -> 'a2)
        -> (SSAVS.elt -> 'a1 -> SSAVS.t -> SSAVS.t -> __ -> __ -> __ -> 'a2
        -> 'a2) -> 'a2

      val fold_rec_bis :
        (SSAVS.elt -> 'a1 -> 'a1) -> 'a1 -> SSAVS.t -> (SSAVS.t -> SSAVS.t ->
        'a1 -> __ -> 'a2 -> 'a2) -> 'a2 -> (SSAVS.elt -> 'a1 -> SSAVS.t -> __
        -> __ -> 'a2 -> 'a2) -> 'a2

      val fold_rec_nodep :
        (SSAVS.elt -> 'a1 -> 'a1) -> 'a1 -> SSAVS.t -> 'a2 -> (SSAVS.elt ->
        'a1 -> __ -> 'a2 -> 'a2) -> 'a2

      val fold_rec_weak :
        (SSAVS.elt -> 'a1 -> 'a1) -> 'a1 -> (SSAVS.t -> SSAVS.t -> 'a1 -> __
        -> 'a2 -> 'a2) -> 'a2 -> (SSAVS.elt -> 'a1 -> SSAVS.t -> __ -> 'a2 ->
        'a2) -> SSAVS.t -> 'a2

      val fold_rel :
        (SSAVS.elt -> 'a1 -> 'a1) -> (SSAVS.elt -> 'a2 -> 'a2) -> 'a1 -> 'a2
        -> SSAVS.t -> 'a3 -> (SSAVS.elt -> 'a1 -> 'a2 -> __ -> 'a3 -> 'a3) ->
        'a3

      val set_induction :
        (SSAVS.t -> __ -> 'a1) -> (SSAVS.t -> SSAVS.t -> 'a1 -> SSAVS.elt ->
        __ -> __ -> 'a1) -> SSAVS.t -> 'a1

      val set_induction_bis :
        (SSAVS.t -> SSAVS.t -> __ -> 'a1 -> 'a1) -> 'a1 -> (SSAVS.elt ->
        SSAVS.t -> __ -> 'a1 -> 'a1) -> SSAVS.t -> 'a1

      val cardinal_inv_2 : SSAVS.t -> nat -> SSAVS.elt

      val cardinal_inv_2b : SSAVS.t -> SSAVS.elt
     end

    val gtb : SSAVS.SE.t -> SSAVS.SE.t -> bool

    val leb : SSAVS.SE.t -> SSAVS.SE.t -> bool

    val elements_lt : SSAVS.SE.t -> SSAVS.t -> SSAVS.SE.t list

    val elements_ge : SSAVS.SE.t -> SSAVS.t -> SSAVS.SE.t list

    val set_induction_max :
      (SSAVS.t -> __ -> 'a1) -> (SSAVS.t -> SSAVS.t -> 'a1 -> SSAVS.SE.t ->
      __ -> __ -> 'a1) -> SSAVS.t -> 'a1

    val set_induction_min :
      (SSAVS.t -> __ -> 'a1) -> (SSAVS.t -> SSAVS.t -> 'a1 -> SSAVS.SE.t ->
      __ -> __ -> 'a1) -> SSAVS.t -> 'a1

    val memP : SSAVS.elt -> SSAVS.t -> reflect

    val disjoint : SSAVS.t -> SSAVS.t -> bool
   end

  type eunop =
  | Unot
  | Uneg
  | Uextr of nat * nat
  | Uhigh of nat
  | Ulow of nat
  | Uzext of nat
  | Usext of nat

  val eunop_rect :
    'a1 -> 'a1 -> (nat -> nat -> 'a1) -> (nat -> 'a1) -> (nat -> 'a1) -> (nat
    -> 'a1) -> (nat -> 'a1) -> eunop -> 'a1

  val eunop_rec :
    'a1 -> 'a1 -> (nat -> nat -> 'a1) -> (nat -> 'a1) -> (nat -> 'a1) -> (nat
    -> 'a1) -> (nat -> 'a1) -> eunop -> 'a1

  type ebinop =
  | Band
  | Bor
  | Bxor
  | Badd
  | Bsub
  | Bmul
  | Bmod
  | Bsrem
  | Bsmod
  | Bshl
  | Blshr
  | Bashr
  | Bconcat

  val ebinop_rect :
    'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1
    -> 'a1 -> 'a1 -> ebinop -> 'a1

  val ebinop_rec :
    'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1
    -> 'a1 -> 'a1 -> ebinop -> 'a1

  type bbinop =
  | Beq
  | Bult
  | Bule
  | Bugt
  | Buge
  | Bslt
  | Bsle
  | Bsgt
  | Bsge
  | Buaddo
  | Busubo
  | Bumulo
  | Bsaddo
  | Bssubo
  | Bsmulo

  val bbinop_rect :
    'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1
    -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> bbinop -> 'a1

  val bbinop_rec :
    'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1
    -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> bbinop -> 'a1

  type exp =
  | Evar of SSAVarOrder.t
  | Econst of bits
  | Eunop of eunop * exp
  | Ebinop of ebinop * exp * exp
  | Eite of bexp * exp * exp
  and bexp =
  | Bfalse
  | Btrue
  | Bbinop of bbinop * exp * exp
  | Blneg of bexp
  | Bconj of bexp * bexp
  | Bdisj of bexp * bexp

  val exp_rect :
    (SSAVarOrder.t -> 'a1) -> (bits -> 'a1) -> (eunop -> exp -> 'a1 -> 'a1)
    -> (ebinop -> exp -> 'a1 -> exp -> 'a1 -> 'a1) -> (bexp -> exp -> 'a1 ->
    exp -> 'a1 -> 'a1) -> exp -> 'a1

  val exp_rec :
    (SSAVarOrder.t -> 'a1) -> (bits -> 'a1) -> (eunop -> exp -> 'a1 -> 'a1)
    -> (ebinop -> exp -> 'a1 -> exp -> 'a1 -> 'a1) -> (bexp -> exp -> 'a1 ->
    exp -> 'a1 -> 'a1) -> exp -> 'a1

  val bexp_rect :
    'a1 -> 'a1 -> (bbinop -> exp -> exp -> 'a1) -> (bexp -> 'a1 -> 'a1) ->
    (bexp -> 'a1 -> bexp -> 'a1 -> 'a1) -> (bexp -> 'a1 -> bexp -> 'a1 ->
    'a1) -> bexp -> 'a1

  val bexp_rec :
    'a1 -> 'a1 -> (bbinop -> exp -> exp -> 'a1) -> (bexp -> 'a1 -> 'a1) ->
    (bexp -> 'a1 -> bexp -> 'a1 -> 'a1) -> (bexp -> 'a1 -> bexp -> 'a1 ->
    'a1) -> bexp -> 'a1

  val eunop_eqn : eunop -> eunop -> bool

  val eunop_eqP : eunop -> eunop -> reflect

  val eunop_eqMixin : eunop Equality.mixin_of

  val eunop_eqType : Equality.coq_type

  val ebinop_eqn : ebinop -> ebinop -> bool

  val ebinop_eqP : ebinop -> ebinop -> reflect

  val ebinop_eqMixin : ebinop Equality.mixin_of

  val ebinop_eqType : Equality.coq_type

  val bbinop_eqn : bbinop -> bbinop -> bool

  val bbinop_eqP : bbinop -> bbinop -> reflect

  val bbinop_eqMixin : bbinop Equality.mixin_of

  val bbinop_eqType : Equality.coq_type

  val exp_eqn : exp -> exp -> bool

  val bexp_eqn : bexp -> bexp -> bool

  val exp_eqP : exp -> exp -> reflect

  val bexp_eqP : bexp -> bexp -> reflect

  val exp_eqMixin : exp Equality.mixin_of

  val bexp_eqMixin : bexp Equality.mixin_of

  val exp_eqType : Equality.coq_type

  val bexp_eqType : Equality.coq_type

  val eunop_denote : eunop -> bits -> bits

  val ebinop_denote : ebinop -> bits -> bits -> bits

  val bbinop_denote : bbinop -> bits -> bits -> bool

  val eval_exp : exp -> SSAStore.t -> bits

  val eval_bexp : bexp -> SSAStore.t -> bool

  val vars_exp : exp -> SSAVS.t

  val vars_bexp : bexp -> SSAVS.t

  val id_eunop : eunop -> nat

  val eunop_ltn : eunop -> eunop -> bool

  val id_ebinop : ebinop -> nat

  val ebinop_ltn : ebinop -> ebinop -> bool

  val id_bbinop : bbinop -> nat

  val bbinop_ltn : bbinop -> bbinop -> bool

  val id_exp : exp -> nat

  val id_bexp : bexp -> nat

  val exp_ltn : exp -> exp -> bool

  val bexp_ltn : bexp -> bexp -> bool

  val exp_compare : exp -> exp -> exp OrderedType.coq_Compare

  val bexp_compare : bexp -> bexp -> bexp OrderedType.coq_Compare

  module ExpOrderMinimal :
   sig
    val t : Equality.coq_type

    val eqn : Equality.sort -> Equality.sort -> bool

    val ltn : Equality.sort -> Equality.sort -> bool

    val compare :
      Equality.sort -> Equality.sort -> Equality.sort OrderedType.coq_Compare
   end

  module ExpOrder :
   sig
    val coq_T : Equality.coq_type

    type t = Equality.sort

    val ltn : t -> t -> bool

    val compare : t -> t -> t OrderedType.coq_Compare

    val eq_dec : t -> t -> bool
   end

  module BexpOrderMinimal :
   sig
    val t : Equality.coq_type

    val eqn : Equality.sort -> Equality.sort -> bool

    val ltn : Equality.sort -> Equality.sort -> bool

    val compare :
      Equality.sort -> Equality.sort -> Equality.sort OrderedType.coq_Compare
   end

  module BexpOrder :
   sig
    val coq_T : Equality.coq_type

    type t = Equality.sort

    val ltn : t -> t -> bool

    val compare : t -> t -> t OrderedType.coq_Compare

    val eq_dec : t -> t -> bool
   end

  val len_exp : exp -> nat

  val len_bexp : bexp -> nat

  val subee : exp -> exp -> bool

  val subeb : exp -> bexp -> bool

  val subbe : bexp -> exp -> bool

  val subbb : bexp -> bexp -> bool

  val exp_size : exp -> TypEnv.SSATE.env -> nat

  val well_formed_exp : exp -> TypEnv.SSATE.env -> bool

  val well_formed_bexp : bexp -> TypEnv.SSATE.env -> bool

  val well_formed_bexps : bexp list -> TypEnv.SSATE.env -> bool
 end
