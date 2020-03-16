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
let __ = let rec f _ = Obj.repr f in Obj.repr f

module MakeQFBV =
 functor (V:SsrOrder.SsrOrder) ->
 functor (VS:SsrFSet with module SE = V) ->
 functor (TE:TypEnv.TypEnv with module SE = V) ->
 functor (S:sig
  type t

  val acc : V.t -> t -> bits

  val upd : V.t -> bits -> t -> t

  val upd2 : V.t -> bits -> V.t -> bits -> t -> t
 end) ->
 struct
  module VSLemmas = FSetLemmas(VS)

  type eunop =
  | Unot
  | Uneg
  | Uextr of nat * nat
  | Uhigh of nat
  | Ulow of nat
  | Uzext of nat
  | Usext of nat

  (** val eunop_rect :
      'a1 -> 'a1 -> (nat -> nat -> 'a1) -> (nat -> 'a1) -> (nat -> 'a1) ->
      (nat -> 'a1) -> (nat -> 'a1) -> eunop -> 'a1 **)

  let eunop_rect f f0 f1 f2 f3 f4 f5 = function
  | Unot -> f
  | Uneg -> f0
  | Uextr (x, x0) -> f1 x x0
  | Uhigh x -> f2 x
  | Ulow x -> f3 x
  | Uzext x -> f4 x
  | Usext x -> f5 x

  (** val eunop_rec :
      'a1 -> 'a1 -> (nat -> nat -> 'a1) -> (nat -> 'a1) -> (nat -> 'a1) ->
      (nat -> 'a1) -> (nat -> 'a1) -> eunop -> 'a1 **)

  let eunop_rec f f0 f1 f2 f3 f4 f5 = function
  | Unot -> f
  | Uneg -> f0
  | Uextr (x, x0) -> f1 x x0
  | Uhigh x -> f2 x
  | Ulow x -> f3 x
  | Uzext x -> f4 x
  | Usext x -> f5 x

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

  (** val ebinop_rect :
      'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 ->
      'a1 -> 'a1 -> 'a1 -> ebinop -> 'a1 **)

  let ebinop_rect f f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 = function
  | Band -> f
  | Bor -> f0
  | Bxor -> f1
  | Badd -> f2
  | Bsub -> f3
  | Bmul -> f4
  | Bmod -> f5
  | Bsrem -> f6
  | Bsmod -> f7
  | Bshl -> f8
  | Blshr -> f9
  | Bashr -> f10
  | Bconcat -> f11

  (** val ebinop_rec :
      'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 ->
      'a1 -> 'a1 -> 'a1 -> ebinop -> 'a1 **)

  let ebinop_rec f f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 = function
  | Band -> f
  | Bor -> f0
  | Bxor -> f1
  | Badd -> f2
  | Bsub -> f3
  | Bmul -> f4
  | Bmod -> f5
  | Bsrem -> f6
  | Bsmod -> f7
  | Bshl -> f8
  | Blshr -> f9
  | Bashr -> f10
  | Bconcat -> f11

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

  (** val bbinop_rect :
      'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 ->
      'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> bbinop -> 'a1 **)

  let bbinop_rect f f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 = function
  | Beq -> f
  | Bult -> f0
  | Bule -> f1
  | Bugt -> f2
  | Buge -> f3
  | Bslt -> f4
  | Bsle -> f5
  | Bsgt -> f6
  | Bsge -> f7
  | Buaddo -> f8
  | Busubo -> f9
  | Bumulo -> f10
  | Bsaddo -> f11
  | Bssubo -> f12
  | Bsmulo -> f13

  (** val bbinop_rec :
      'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 ->
      'a1 -> 'a1 -> 'a1 -> 'a1 -> 'a1 -> bbinop -> 'a1 **)

  let bbinop_rec f f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 = function
  | Beq -> f
  | Bult -> f0
  | Bule -> f1
  | Bugt -> f2
  | Buge -> f3
  | Bslt -> f4
  | Bsle -> f5
  | Bsgt -> f6
  | Bsge -> f7
  | Buaddo -> f8
  | Busubo -> f9
  | Bumulo -> f10
  | Bsaddo -> f11
  | Bssubo -> f12
  | Bsmulo -> f13

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

  (** val exp_rect :
      (V.t -> 'a1) -> (bits -> 'a1) -> (eunop -> exp -> 'a1 -> 'a1) ->
      (ebinop -> exp -> 'a1 -> exp -> 'a1 -> 'a1) -> (bexp -> exp -> 'a1 ->
      exp -> 'a1 -> 'a1) -> exp -> 'a1 **)

  let rec exp_rect f f0 f1 f2 f3 = function
  | Evar t0 -> f t0
  | Econst b -> f0 b
  | Eunop (e0, e1) -> f1 e0 e1 (exp_rect f f0 f1 f2 f3 e1)
  | Ebinop (e0, e1, e2) ->
    f2 e0 e1 (exp_rect f f0 f1 f2 f3 e1) e2 (exp_rect f f0 f1 f2 f3 e2)
  | Eite (b, e0, e1) ->
    f3 b e0 (exp_rect f f0 f1 f2 f3 e0) e1 (exp_rect f f0 f1 f2 f3 e1)

  (** val exp_rec :
      (V.t -> 'a1) -> (bits -> 'a1) -> (eunop -> exp -> 'a1 -> 'a1) ->
      (ebinop -> exp -> 'a1 -> exp -> 'a1 -> 'a1) -> (bexp -> exp -> 'a1 ->
      exp -> 'a1 -> 'a1) -> exp -> 'a1 **)

  let rec exp_rec f f0 f1 f2 f3 = function
  | Evar t0 -> f t0
  | Econst b -> f0 b
  | Eunop (e0, e1) -> f1 e0 e1 (exp_rec f f0 f1 f2 f3 e1)
  | Ebinop (e0, e1, e2) ->
    f2 e0 e1 (exp_rec f f0 f1 f2 f3 e1) e2 (exp_rec f f0 f1 f2 f3 e2)
  | Eite (b, e0, e1) ->
    f3 b e0 (exp_rec f f0 f1 f2 f3 e0) e1 (exp_rec f f0 f1 f2 f3 e1)

  (** val bexp_rect :
      'a1 -> 'a1 -> (bbinop -> exp -> exp -> 'a1) -> (bexp -> 'a1 -> 'a1) ->
      (bexp -> 'a1 -> bexp -> 'a1 -> 'a1) -> (bexp -> 'a1 -> bexp -> 'a1 ->
      'a1) -> bexp -> 'a1 **)

  let rec bexp_rect f f0 f1 f2 f3 f4 = function
  | Bfalse -> f
  | Btrue -> f0
  | Bbinop (b0, e, e0) -> f1 b0 e e0
  | Blneg b0 -> f2 b0 (bexp_rect f f0 f1 f2 f3 f4 b0)
  | Bconj (b0, b1) ->
    f3 b0 (bexp_rect f f0 f1 f2 f3 f4 b0) b1 (bexp_rect f f0 f1 f2 f3 f4 b1)
  | Bdisj (b0, b1) ->
    f4 b0 (bexp_rect f f0 f1 f2 f3 f4 b0) b1 (bexp_rect f f0 f1 f2 f3 f4 b1)

  (** val bexp_rec :
      'a1 -> 'a1 -> (bbinop -> exp -> exp -> 'a1) -> (bexp -> 'a1 -> 'a1) ->
      (bexp -> 'a1 -> bexp -> 'a1 -> 'a1) -> (bexp -> 'a1 -> bexp -> 'a1 ->
      'a1) -> bexp -> 'a1 **)

  let rec bexp_rec f f0 f1 f2 f3 f4 = function
  | Bfalse -> f
  | Btrue -> f0
  | Bbinop (b0, e, e0) -> f1 b0 e e0
  | Blneg b0 -> f2 b0 (bexp_rec f f0 f1 f2 f3 f4 b0)
  | Bconj (b0, b1) ->
    f3 b0 (bexp_rec f f0 f1 f2 f3 f4 b0) b1 (bexp_rec f f0 f1 f2 f3 f4 b1)
  | Bdisj (b0, b1) ->
    f4 b0 (bexp_rec f f0 f1 f2 f3 f4 b0) b1 (bexp_rec f f0 f1 f2 f3 f4 b1)

  (** val eunop_eqn : eunop -> eunop -> bool **)

  let eunop_eqn o1 o2 =
    match o1 with
    | Unot -> (match o2 with
               | Unot -> true
               | _ -> false)
    | Uneg -> (match o2 with
               | Uneg -> true
               | _ -> false)
    | Uextr (i1, j1) ->
      (match o2 with
       | Uextr (i2, j2) ->
         (&&) (eq_op nat_eqType (Obj.magic i1) (Obj.magic i2))
           (eq_op nat_eqType (Obj.magic j1) (Obj.magic j2))
       | _ -> false)
    | Uhigh n1 ->
      (match o2 with
       | Uhigh n2 -> eq_op nat_eqType (Obj.magic n1) (Obj.magic n2)
       | _ -> false)
    | Ulow n1 ->
      (match o2 with
       | Ulow n2 -> eq_op nat_eqType (Obj.magic n1) (Obj.magic n2)
       | _ -> false)
    | Uzext n1 ->
      (match o2 with
       | Uzext n2 -> eq_op nat_eqType (Obj.magic n1) (Obj.magic n2)
       | _ -> false)
    | Usext n1 ->
      (match o2 with
       | Usext n2 -> eq_op nat_eqType (Obj.magic n1) (Obj.magic n2)
       | _ -> false)

  (** val eunop_eqP : eunop -> eunop -> reflect **)

  let eunop_eqP o1 o2 =
    let _evar_0_ = fun _ -> ReflectT in
    let _evar_0_0 = fun _ -> ReflectF in
    if eunop_eqn o1 o2 then _evar_0_ __ else _evar_0_0 __

  (** val eunop_eqMixin : eunop Equality.mixin_of **)

  let eunop_eqMixin =
    { Equality.op = eunop_eqn; Equality.mixin_of__1 = eunop_eqP }

  (** val eunop_eqType : Equality.coq_type **)

  let eunop_eqType =
    Obj.magic eunop_eqMixin

  (** val ebinop_eqn : ebinop -> ebinop -> bool **)

  let ebinop_eqn o1 o2 =
    match o1 with
    | Band -> (match o2 with
               | Band -> true
               | _ -> false)
    | Bor -> (match o2 with
              | Bor -> true
              | _ -> false)
    | Bxor -> (match o2 with
               | Bxor -> true
               | _ -> false)
    | Badd -> (match o2 with
               | Badd -> true
               | _ -> false)
    | Bsub -> (match o2 with
               | Bsub -> true
               | _ -> false)
    | Bmul -> (match o2 with
               | Bmul -> true
               | _ -> false)
    | Bmod -> (match o2 with
               | Bmod -> true
               | _ -> false)
    | Bsrem -> (match o2 with
                | Bsrem -> true
                | _ -> false)
    | Bsmod -> (match o2 with
                | Bsmod -> true
                | _ -> false)
    | Bshl -> (match o2 with
               | Bshl -> true
               | _ -> false)
    | Blshr -> (match o2 with
                | Blshr -> true
                | _ -> false)
    | Bashr -> (match o2 with
                | Bashr -> true
                | _ -> false)
    | Bconcat -> (match o2 with
                  | Bconcat -> true
                  | _ -> false)

  (** val ebinop_eqP : ebinop -> ebinop -> reflect **)

  let ebinop_eqP o1 o2 =
    let _evar_0_ = fun _ -> ReflectT in
    let _evar_0_0 = fun _ -> ReflectF in
    if ebinop_eqn o1 o2 then _evar_0_ __ else _evar_0_0 __

  (** val ebinop_eqMixin : ebinop Equality.mixin_of **)

  let ebinop_eqMixin =
    { Equality.op = ebinop_eqn; Equality.mixin_of__1 = ebinop_eqP }

  (** val ebinop_eqType : Equality.coq_type **)

  let ebinop_eqType =
    Obj.magic ebinop_eqMixin

  (** val bbinop_eqn : bbinop -> bbinop -> bool **)

  let bbinop_eqn o1 o2 =
    match o1 with
    | Beq -> (match o2 with
              | Beq -> true
              | _ -> false)
    | Bult -> (match o2 with
               | Bult -> true
               | _ -> false)
    | Bule -> (match o2 with
               | Bule -> true
               | _ -> false)
    | Bugt -> (match o2 with
               | Bugt -> true
               | _ -> false)
    | Buge -> (match o2 with
               | Buge -> true
               | _ -> false)
    | Bslt -> (match o2 with
               | Bslt -> true
               | _ -> false)
    | Bsle -> (match o2 with
               | Bsle -> true
               | _ -> false)
    | Bsgt -> (match o2 with
               | Bsgt -> true
               | _ -> false)
    | Bsge -> (match o2 with
               | Bsge -> true
               | _ -> false)
    | Buaddo -> (match o2 with
                 | Buaddo -> true
                 | _ -> false)
    | Busubo -> (match o2 with
                 | Busubo -> true
                 | _ -> false)
    | Bumulo -> (match o2 with
                 | Bumulo -> true
                 | _ -> false)
    | Bsaddo -> (match o2 with
                 | Bsaddo -> true
                 | _ -> false)
    | Bssubo -> (match o2 with
                 | Bssubo -> true
                 | _ -> false)
    | Bsmulo -> (match o2 with
                 | Bsmulo -> true
                 | _ -> false)

  (** val bbinop_eqP : bbinop -> bbinop -> reflect **)

  let bbinop_eqP o1 o2 =
    let _evar_0_ = fun _ -> ReflectT in
    let _evar_0_0 = fun _ -> ReflectF in
    if bbinop_eqn o1 o2 then _evar_0_ __ else _evar_0_0 __

  (** val bbinop_eqMixin : bbinop Equality.mixin_of **)

  let bbinop_eqMixin =
    { Equality.op = bbinop_eqn; Equality.mixin_of__1 = bbinop_eqP }

  (** val bbinop_eqType : Equality.coq_type **)

  let bbinop_eqType =
    Obj.magic bbinop_eqMixin

  (** val exp_eqn : exp -> exp -> bool **)

  let rec exp_eqn e1 e2 =
    match e1 with
    | Evar v1 -> (match e2 with
                  | Evar v2 -> eq_op V.coq_T v1 v2
                  | _ -> false)
    | Econst n1 ->
      (match e2 with
       | Econst n2 -> eq_op bitseq_eqType (Obj.magic n1) (Obj.magic n2)
       | _ -> false)
    | Eunop (op1, e3) ->
      (match e2 with
       | Eunop (op2, e4) ->
         (&&) (eq_op eunop_eqType (Obj.magic op1) (Obj.magic op2))
           (exp_eqn e3 e4)
       | _ -> false)
    | Ebinop (op1, e3, e4) ->
      (match e2 with
       | Ebinop (op2, e5, e6) ->
         (&&)
           ((&&) (eq_op ebinop_eqType (Obj.magic op1) (Obj.magic op2))
             (exp_eqn e3 e5)) (exp_eqn e4 e6)
       | _ -> false)
    | Eite (c1, e3, e4) ->
      (match e2 with
       | Eite (c2, e5, e6) ->
         (&&) ((&&) (bexp_eqn c1 c2) (exp_eqn e3 e5)) (exp_eqn e4 e6)
       | _ -> false)

  (** val bexp_eqn : bexp -> bexp -> bool **)

  and bexp_eqn e1 e2 =
    match e1 with
    | Bfalse -> (match e2 with
                 | Bfalse -> true
                 | _ -> false)
    | Btrue -> (match e2 with
                | Btrue -> true
                | _ -> false)
    | Bbinop (op1, e3, e4) ->
      (match e2 with
       | Bbinop (op2, e5, e6) ->
         (&&)
           ((&&) (eq_op bbinop_eqType (Obj.magic op1) (Obj.magic op2))
             (exp_eqn e3 e5)) (exp_eqn e4 e6)
       | _ -> false)
    | Blneg e3 -> (match e2 with
                   | Blneg e4 -> bexp_eqn e3 e4
                   | _ -> false)
    | Bconj (e3, e4) ->
      (match e2 with
       | Bconj (e5, e6) -> (&&) (bexp_eqn e3 e5) (bexp_eqn e4 e6)
       | _ -> false)
    | Bdisj (e3, e4) ->
      (match e2 with
       | Bdisj (e5, e6) -> (&&) (bexp_eqn e3 e5) (bexp_eqn e4 e6)
       | _ -> false)

  (** val exp_eqP : exp -> exp -> reflect **)

  let exp_eqP e1 e2 =
    let _evar_0_ = fun _ -> ReflectT in
    let _evar_0_0 = fun _ -> ReflectF in
    if exp_eqn e1 e2 then _evar_0_ __ else _evar_0_0 __

  (** val bexp_eqP : bexp -> bexp -> reflect **)

  let bexp_eqP e1 e2 =
    let _evar_0_ = fun _ -> ReflectT in
    let _evar_0_0 = fun _ -> ReflectF in
    if bexp_eqn e1 e2 then _evar_0_ __ else _evar_0_0 __

  (** val exp_eqMixin : exp Equality.mixin_of **)

  let exp_eqMixin =
    { Equality.op = exp_eqn; Equality.mixin_of__1 = exp_eqP }

  (** val bexp_eqMixin : bexp Equality.mixin_of **)

  let bexp_eqMixin =
    { Equality.op = bexp_eqn; Equality.mixin_of__1 = bexp_eqP }

  (** val exp_eqType : Equality.coq_type **)

  let exp_eqType =
    Obj.magic exp_eqMixin

  (** val bexp_eqType : Equality.coq_type **)

  let bexp_eqType =
    Obj.magic bexp_eqMixin

  (** val eunop_denote : eunop -> bits -> bits **)

  let eunop_denote = function
  | Unot -> invB
  | Uneg -> negB
  | Uextr (i, j) -> extract i j
  | Uhigh n -> high n
  | Ulow n -> low n
  | Uzext n -> zext n
  | Usext n -> sext n

  (** val ebinop_denote : ebinop -> bits -> bits -> bits **)

  let ebinop_denote = function
  | Band -> andB
  | Bor -> orB
  | Bxor -> xorB
  | Badd -> addB
  | Bsub -> subB
  | Bmul -> mulB
  | Bshl -> (fun b1 b2 -> shlB (to_nat b2) b1)
  | Blshr -> (fun b1 b2 -> shrB (to_nat b2) b1)
  | Bashr -> (fun b1 b2 -> sarB (to_nat b2) b1)
  | Bconcat -> (fun b1 b2 -> cat b2 b1)
  | _ -> (fun b1 _ -> b1)

  (** val bbinop_denote : bbinop -> bits -> bits -> bool **)

  let bbinop_denote = function
  | Beq -> Obj.magic eq_op bitseq_eqType
  | Bult -> ltB_lsb
  | Bule -> leB
  | Bugt -> gtB
  | Buge -> geB
  | Bslt -> sltB
  | Bsle -> sleB
  | Bsgt -> sgtB
  | Bsge -> sgeB
  | Buaddo -> carry_addB
  | Busubo -> borrow_subB
  | Bumulo -> coq_Umulo
  | Bsaddo -> coq_Saddo
  | Bssubo -> coq_Ssubo
  | Bsmulo -> coq_Smulo

  (** val eval_exp : exp -> S.t -> bits **)

  let rec eval_exp e s =
    match e with
    | Evar v -> S.acc v s
    | Econst n -> n
    | Eunop (op0, e0) -> eunop_denote op0 (eval_exp e0 s)
    | Ebinop (op0, e1, e2) ->
      ebinop_denote op0 (eval_exp e1 s) (eval_exp e2 s)
    | Eite (b, e1, e2) ->
      if eval_bexp b s then eval_exp e1 s else eval_exp e2 s

  (** val eval_bexp : bexp -> S.t -> bool **)

  and eval_bexp e s =
    match e with
    | Bfalse -> false
    | Btrue -> true
    | Bbinop (op0, e1, e2) ->
      bbinop_denote op0 (eval_exp e1 s) (eval_exp e2 s)
    | Blneg e0 -> negb (eval_bexp e0 s)
    | Bconj (e1, e2) -> (&&) (eval_bexp e1 s) (eval_bexp e2 s)
    | Bdisj (e1, e2) -> (||) (eval_bexp e1 s) (eval_bexp e2 s)

  (** val vars_exp : exp -> VS.t **)

  let rec vars_exp = function
  | Evar v -> VS.singleton v
  | Econst _ -> VS.empty
  | Eunop (_, e0) -> vars_exp e0
  | Ebinop (_, e1, e2) -> VS.union (vars_exp e1) (vars_exp e2)
  | Eite (b, e1, e2) ->
    VS.union (vars_bexp b) (VS.union (vars_exp e1) (vars_exp e2))

  (** val vars_bexp : bexp -> VS.t **)

  and vars_bexp = function
  | Bbinop (_, e1, e2) -> VS.union (vars_exp e1) (vars_exp e2)
  | Blneg e0 -> vars_bexp e0
  | Bconj (e1, e2) -> VS.union (vars_bexp e1) (vars_bexp e2)
  | Bdisj (e1, e2) -> VS.union (vars_bexp e1) (vars_bexp e2)
  | _ -> VS.empty

  (** val id_eunop : eunop -> nat **)

  let id_eunop = function
  | Unot -> O
  | Uneg -> S O
  | Uextr (_, _) -> S (S O)
  | Uhigh _ -> S (S (S (S O)))
  | Ulow _ -> S (S (S (S (S O))))
  | Uzext _ -> S (S (S (S (S (S O)))))
  | Usext _ -> S (S (S (S (S (S (S O))))))

  (** val eunop_ltn : eunop -> eunop -> bool **)

  let eunop_ltn o1 o2 =
    match o1 with
    | Uextr (i1, j1) ->
      (match o2 with
       | Uextr (i2, j2) ->
         (||) (leq (S i1) i2)
           ((&&) (eq_op nat_eqType (Obj.magic i1) (Obj.magic i2))
             (leq (S j1) j2))
       | _ -> leq (S (id_eunop o1)) (id_eunop o2))
    | Uhigh n1 ->
      (match o2 with
       | Uhigh n2 -> leq (S n1) n2
       | _ -> leq (S (id_eunop o1)) (id_eunop o2))
    | Ulow n1 ->
      (match o2 with
       | Ulow n2 -> leq (S n1) n2
       | _ -> leq (S (id_eunop o1)) (id_eunop o2))
    | Uzext n1 ->
      (match o2 with
       | Uzext n2 -> leq (S n1) n2
       | _ -> leq (S (id_eunop o1)) (id_eunop o2))
    | Usext n1 ->
      (match o2 with
       | Usext n2 -> leq (S n1) n2
       | _ -> leq (S (id_eunop o1)) (id_eunop o2))
    | _ -> leq (S (id_eunop o1)) (id_eunop o2)

  (** val id_ebinop : ebinop -> nat **)

  let id_ebinop = function
  | Band -> O
  | Bor -> S O
  | Bxor -> S (S O)
  | Badd -> S (S (S O))
  | Bsub -> S (S (S (S O)))
  | Bmul -> S (S (S (S (S O))))
  | Bmod -> S (S (S (S (S (S O)))))
  | Bsrem -> S (S (S (S (S (S (S O))))))
  | Bsmod -> S (S (S (S (S (S (S (S O)))))))
  | Bshl -> S (S (S (S (S (S (S (S (S O))))))))
  | Blshr -> S (S (S (S (S (S (S (S (S (S O)))))))))
  | Bashr -> S (S (S (S (S (S (S (S (S (S (S O))))))))))
  | Bconcat -> S (S (S (S (S (S (S (S (S (S (S (S O)))))))))))

  (** val ebinop_ltn : ebinop -> ebinop -> bool **)

  let ebinop_ltn o1 o2 =
    leq (S (id_ebinop o1)) (id_ebinop o2)

  (** val id_bbinop : bbinop -> nat **)

  let id_bbinop = function
  | Beq -> O
  | Bult -> S O
  | Bule -> S (S O)
  | Bugt -> S (S (S O))
  | Buge -> S (S (S (S O)))
  | Bslt -> S (S (S (S (S O))))
  | Bsle -> S (S (S (S (S (S O)))))
  | Bsgt -> S (S (S (S (S (S (S O))))))
  | Bsge -> S (S (S (S (S (S (S (S O)))))))
  | Buaddo -> S (S (S (S (S (S (S (S (S O))))))))
  | Busubo -> S (S (S (S (S (S (S (S (S (S O)))))))))
  | Bumulo -> S (S (S (S (S (S (S (S (S (S (S O))))))))))
  | Bsaddo -> S (S (S (S (S (S (S (S (S (S (S (S O)))))))))))
  | Bssubo -> S (S (S (S (S (S (S (S (S (S (S (S (S O))))))))))))
  | Bsmulo -> S (S (S (S (S (S (S (S (S (S (S (S (S (S O)))))))))))))

  (** val bbinop_ltn : bbinop -> bbinop -> bool **)

  let bbinop_ltn o1 o2 =
    leq (S (id_bbinop o1)) (id_bbinop o2)

  (** val id_exp : exp -> nat **)

  let id_exp = function
  | Evar _ -> O
  | Econst _ -> S O
  | Eunop (_, _) -> S (S O)
  | Ebinop (_, _, _) -> S (S (S O))
  | Eite (_, _, _) -> S (S (S (S O)))

  (** val id_bexp : bexp -> nat **)

  let id_bexp = function
  | Bfalse -> O
  | Btrue -> S O
  | Bbinop (_, _, _) -> S (S O)
  | Blneg _ -> S (S (S O))
  | Bconj (_, _) -> S (S (S (S O)))
  | Bdisj (_, _) -> S (S (S (S (S O))))

  (** val exp_ltn : exp -> exp -> bool **)

  let rec exp_ltn e1 e2 =
    match e1 with
    | Evar v1 ->
      (match e2 with
       | Evar v2 -> V.ltn v1 v2
       | _ -> leq (S (id_exp e1)) (id_exp e2))
    | Econst n1 ->
      (match e2 with
       | Econst n2 ->
         (||) (leq (S (size n1)) (size n2))
           ((&&) (eq_op nat_eqType (Obj.magic size n1) (Obj.magic size n2))
             (ltB_lsb n1 n2))
       | _ -> leq (S (id_exp e1)) (id_exp e2))
    | Eunop (o1, e3) ->
      (match e2 with
       | Eunop (o2, e4) ->
         (||) (eunop_ltn o1 o2)
           ((&&) (eq_op eunop_eqType (Obj.magic o1) (Obj.magic o2))
             (exp_ltn e3 e4))
       | _ -> leq (S (id_exp e1)) (id_exp e2))
    | Ebinop (o1, e3, e4) ->
      (match e2 with
       | Ebinop (o2, e5, e6) ->
         (||)
           ((||) (ebinop_ltn o1 o2)
             ((&&) (eq_op ebinop_eqType (Obj.magic o1) (Obj.magic o2))
               (exp_ltn e3 e5)))
           ((&&)
             ((&&) (eq_op ebinop_eqType (Obj.magic o1) (Obj.magic o2))
               (eq_op exp_eqType (Obj.magic e3) (Obj.magic e5)))
             (exp_ltn e4 e6))
       | _ -> leq (S (id_exp e1)) (id_exp e2))
    | Eite (c1, e3, e4) ->
      (match e2 with
       | Eite (c2, e5, e6) ->
         (||)
           ((||) (bexp_ltn c1 c2)
             ((&&) (eq_op bexp_eqType (Obj.magic c1) (Obj.magic c2))
               (exp_ltn e3 e5)))
           ((&&)
             ((&&) (eq_op bexp_eqType (Obj.magic c1) (Obj.magic c2))
               (eq_op exp_eqType (Obj.magic e3) (Obj.magic e5)))
             (exp_ltn e4 e6))
       | _ -> leq (S (id_exp e1)) (id_exp e2))

  (** val bexp_ltn : bexp -> bexp -> bool **)

  and bexp_ltn e1 e2 =
    match e1 with
    | Bbinop (o1, e3, e4) ->
      (match e2 with
       | Bbinop (o2, e5, e6) ->
         (||)
           ((||) (bbinop_ltn o1 o2)
             ((&&) (eq_op bbinop_eqType (Obj.magic o1) (Obj.magic o2))
               (exp_ltn e3 e5)))
           ((&&)
             ((&&) (eq_op bbinop_eqType (Obj.magic o1) (Obj.magic o2))
               (eq_op exp_eqType (Obj.magic e3) (Obj.magic e5)))
             (exp_ltn e4 e6))
       | _ -> leq (S (id_bexp e1)) (id_bexp e2))
    | Blneg e3 ->
      (match e2 with
       | Blneg e4 -> bexp_ltn e3 e4
       | _ -> leq (S (id_bexp e1)) (id_bexp e2))
    | Bconj (e3, e4) ->
      (match e2 with
       | Bconj (e5, e6) ->
         (||) (bexp_ltn e3 e5)
           ((&&) (eq_op bexp_eqType (Obj.magic e3) (Obj.magic e5))
             (bexp_ltn e4 e6))
       | _ -> leq (S (id_bexp e1)) (id_bexp e2))
    | Bdisj (e3, e4) ->
      (match e2 with
       | Bdisj (e5, e6) ->
         (||) (bexp_ltn e3 e5)
           ((&&) (eq_op bexp_eqType (Obj.magic e3) (Obj.magic e5))
             (bexp_ltn e4 e6))
       | _ -> leq (S (id_bexp e1)) (id_bexp e2))
    | _ -> leq (S (id_bexp e1)) (id_bexp e2)

  (** val exp_compare : exp -> exp -> exp OrderedType.coq_Compare **)

  let rec exp_compare e1 e2 =
    let _evar_0_ = fun _ _ -> OrderedType.EQ in
    let _evar_0_0 = fun _ ->
      let _evar_0_0 = fun _ _ -> OrderedType.LT in
      let _evar_0_1 = fun _ _ -> OrderedType.GT in
      if exp_ltn e1 e2 then _evar_0_0 __ else _evar_0_1 __
    in
    if eq_op exp_eqType (Obj.magic e1) (Obj.magic e2)
    then _evar_0_ __ __
    else _evar_0_0 __ __

  (** val bexp_compare : bexp -> bexp -> bexp OrderedType.coq_Compare **)

  and bexp_compare e1 e2 =
    let _evar_0_ = fun _ _ -> OrderedType.EQ in
    let _evar_0_0 = fun _ ->
      let _evar_0_0 = fun _ _ -> OrderedType.LT in
      let _evar_0_1 = fun _ _ -> OrderedType.GT in
      if bexp_ltn e1 e2 then _evar_0_0 __ else _evar_0_1 __
    in
    if eq_op bexp_eqType (Obj.magic e1) (Obj.magic e2)
    then _evar_0_ __ __
    else _evar_0_0 __ __

  module ExpOrderMinimal =
   struct
    (** val t : Equality.coq_type **)

    let t =
      exp_eqType

    (** val eqn : Equality.sort -> Equality.sort -> bool **)

    let eqn e1 e2 =
      eq_op t e1 e2

    (** val ltn : Equality.sort -> Equality.sort -> bool **)

    let ltn e1 e2 =
      exp_ltn (Obj.magic e1) (Obj.magic e2)

    (** val compare :
        Equality.sort -> Equality.sort -> Equality.sort
        OrderedType.coq_Compare **)

    let compare e1 e2 =
      Obj.magic exp_compare e1 e2
   end

  module ExpOrder = SsrOrder.MakeSsrOrder(ExpOrderMinimal)

  module BexpOrderMinimal =
   struct
    (** val t : Equality.coq_type **)

    let t =
      bexp_eqType

    (** val eqn : Equality.sort -> Equality.sort -> bool **)

    let eqn e1 e2 =
      eq_op t e1 e2

    (** val ltn : Equality.sort -> Equality.sort -> bool **)

    let ltn e1 e2 =
      bexp_ltn (Obj.magic e1) (Obj.magic e2)

    (** val compare :
        Equality.sort -> Equality.sort -> Equality.sort
        OrderedType.coq_Compare **)

    let compare e1 e2 =
      Obj.magic bexp_compare e1 e2
   end

  module BexpOrder = SsrOrder.MakeSsrOrder(BexpOrderMinimal)

  (** val len_exp : exp -> nat **)

  let rec len_exp = function
  | Eunop (_, e0) -> S (len_exp e0)
  | Ebinop (_, e1, e2) -> S (addn (len_exp e1) (len_exp e2))
  | Eite (b, e1, e2) -> S (addn (addn (len_bexp b) (len_exp e1)) (len_exp e2))
  | _ -> S O

  (** val len_bexp : bexp -> nat **)

  and len_bexp = function
  | Bbinop (_, e1, e2) -> S (addn (len_exp e1) (len_exp e2))
  | Blneg e0 -> S (len_bexp e0)
  | Bconj (e1, e2) -> S (addn (len_bexp e1) (len_bexp e2))
  | Bdisj (e1, e2) -> S (addn (len_bexp e1) (len_bexp e2))
  | _ -> S O

  (** val subee : exp -> exp -> bool **)

  let rec subee c p =
    (||) (eq_op exp_eqType (Obj.magic c) (Obj.magic p))
      (match p with
       | Eunop (_, e) -> subee c e
       | Ebinop (_, e1, e2) -> (||) (subee c e1) (subee c e2)
       | Eite (b, e1, e2) -> (||) ((||) (subeb c b) (subee c e1)) (subee c e2)
       | _ -> false)

  (** val subeb : exp -> bexp -> bool **)

  and subeb e = function
  | Bbinop (_, e1, e2) -> (||) (subee e e1) (subee e e2)
  | Blneg b0 -> subeb e b0
  | Bconj (b1, b2) -> (||) (subeb e b1) (subeb e b2)
  | Bdisj (b1, b2) -> (||) (subeb e b1) (subeb e b2)
  | _ -> false

  (** val subbe : bexp -> exp -> bool **)

  let rec subbe c = function
  | Eunop (_, e) -> subbe c e
  | Ebinop (_, e1, e2) -> (||) (subbe c e1) (subbe c e2)
  | Eite (b, e1, e2) -> (||) ((||) (subbb c b) (subbe c e1)) (subbe c e2)
  | _ -> false

  (** val subbb : bexp -> bexp -> bool **)

  and subbb c p =
    (||) (eq_op bexp_eqType (Obj.magic c) (Obj.magic p))
      (match p with
       | Bbinop (_, e1, e2) -> (||) (subbe c e1) (subbe c e2)
       | Blneg b -> subbb c b
       | Bconj (b1, b2) -> (||) (subbb c b1) (subbb c b2)
       | Bdisj (b1, b2) -> (||) (subbb c b1) (subbb c b2)
       | _ -> false)

  (** val exp_size : exp -> TE.env -> nat **)

  let rec exp_size e te =
    match e with
    | Evar v -> TE.vsize v te
    | Econst n -> size n
    | Eunop (op0, e0) ->
      (match op0 with
       | Uextr (i, j) -> addn (subn i j) (S O)
       | Uhigh n -> n
       | Ulow n -> n
       | Uzext n -> addn (exp_size e0 te) n
       | Usext n -> addn (exp_size e0 te) n
       | _ -> exp_size e0 te)
    | Ebinop (op0, e1, e2) ->
      (match op0 with
       | Bconcat -> addn (exp_size e1 te) (exp_size e2 te)
       | _ -> max (exp_size e1 te) (exp_size e2 te))
    | Eite (_, e1, e2) -> max (exp_size e1 te) (exp_size e2 te)

  (** val well_formed_exp : exp -> TE.env -> bool **)

  let rec well_formed_exp e te =
    match e with
    | Evar v -> TE.mem v te
    | Econst _ -> true
    | Eunop (_, e0) -> well_formed_exp e0 te
    | Ebinop (_, e1, e2) ->
      (&&) ((&&) (well_formed_exp e1 te) (well_formed_exp e2 te))
        (eq_op nat_eqType (Obj.magic exp_size e1 te)
          (Obj.magic exp_size e2 te))
    | Eite (b, e1, e2) ->
      (&&)
        ((&&) ((&&) (well_formed_bexp b te) (well_formed_exp e1 te))
          (well_formed_exp e2 te))
        (eq_op nat_eqType (Obj.magic exp_size e1 te)
          (Obj.magic exp_size e2 te))

  (** val well_formed_bexp : bexp -> TE.env -> bool **)

  and well_formed_bexp b te =
    match b with
    | Bbinop (_, e1, e2) ->
      (&&) ((&&) (well_formed_exp e1 te) (well_formed_exp e2 te))
        (eq_op nat_eqType (Obj.magic exp_size e1 te)
          (Obj.magic exp_size e2 te))
    | Blneg b0 -> well_formed_bexp b0 te
    | Bconj (b1, b2) -> (&&) (well_formed_bexp b1 te) (well_formed_bexp b2 te)
    | Bdisj (b1, b2) -> (&&) (well_formed_bexp b1 te) (well_formed_bexp b2 te)
    | _ -> true

  (** val well_formed_bexps : bexp list -> TE.env -> bool **)

  let rec well_formed_bexps bs te =
    match bs with
    | [] -> true
    | b :: bs' -> (&&) (well_formed_bexp b te) (well_formed_bexps bs' te)
 end

module QFBV = MakeQFBV(SSAVarOrder)(SSAVS)(TypEnv.SSATE)(SSAStore)
