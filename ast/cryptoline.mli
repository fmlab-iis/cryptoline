
open NBits

(** Abstract syntax tree of CryptoLine *)


(** {1 Auxiliary Functions} *)

val z_two : Z.t
(** 2 in Z.t *)

val apply_to_some : ('a -> 'b) -> 'a option -> 'b option
(** [apply_to_some f o] is [Some (f v)] if [o] is [Some v] and [None] otherwise.  *)

val apply_to_option : ('a -> 'b) -> 'b -> 'a option -> 'b
(** [apply_to_option f d o] is [f v] is [o] is [Some v] and [d] otherwise. *)

val map_fst : ('a -> 'c) -> ('a * 'b) list -> ('c * 'b) list
(** [map_fst f [(a1, b1); ...; (an, bn)]] is [[(f a1, b1); ...; (f an, bn)]]. *)

val map_snd : ('b -> 'c) -> ('a * 'b) list -> ('a * 'c) list
(** [map_snd f [(a1, b1); ...; (an, bn)]] is [[(a1, f b1); ...; (an, f bn)]]. *)


(** {1 Types} *)

type size = int
(** variable size *)

type typ =
  Tuint of size   (** usigned integers *)
| Tsint of size   (** signed integers *) (* *)
(** types of variables, either unsigned [Tuint w] or signed [Tsint w] where [w] is the size of the type *)

val uint_t : size -> typ
(** [uint_t w] is [Tuint w]. *)

val int_t : size -> typ
(** [int_t w] is [Tsint w]. *)

val bit_t : typ
(** [bit_t] is [Tuint 1]. *)

val size_of_typ : typ -> size
(** [size_of_typ t] is the size of a type [t]. *)

val min_of_typ : typ -> Z.t
(** [min_of_typ t] is the minimal number representable by a type [t]. *)

val max_of_typ : typ -> Z.t
(** [max_of_typ t] is the maximal number representable by a type [t]. *)

val typ_is_unsigned : typ -> bool
(** [typ_is_unsigned t] is [true] if [t] is [Tuint _] and [false] otherwise. *)

val typ_is_signed : typ -> bool
(** [typ_is_signed t] is [true] if [t] is [Tsint _] and [false] otherwise. *)

val typ_to_signed : typ -> typ
(** [typ_to_signed t] is [Tsint (size_of_typ t)]. *)

val typ_to_unsigned : typ -> typ
(** [typ_to_unsigned t] is [Tuint (size_of_typ t)]. *)


(** {1 Variables} *)

type var =
  {
    vname : string;        (** name of the variable *)
    vtyp  : typ;           (** type of the variable *)
    vsidx : int;           (** SSA index of the variable *)
    mutable vid : int;     (** variable ID, which is set after {!normalize_spec}, {!normalize_espec}, or {!normalize_rspec} *) (* *)
  }
(** variables *)

val default_non_ssa_idx : int
(** [default_non_ssa_idx] denotes an uninitialized SSA index, which is -1. *)

val size_of_var : var -> size
(** [size_of_var v] is the size of a variable [v]. *)

val typ_of_var : var -> typ
(** [typ_of_var v] is the type of a variable [v]. *)

val eq_var : var -> var -> bool
(** [eq_var v1 v2] if [v1.vname = v2.vname] and [v1.vsidx = v2.vsidx]. *)

val cmp_var : var -> var -> int
(** [cmp_var v1 v2] compares two variables according to their names and SSA indices. *)

val mem_var : var -> var list -> bool
(** [mem_var v vs] tests if a variable [v] is in a list [vs] using the comparison function {!eq_var}. *)

val mkvar : ?newvid:bool -> string -> typ -> var
(** [mk_var n t] creates a variable with name [n] and type [t]. The SSA index is {!default_non_ssa_idx} by default. *)

val var_is_bit : var -> bool
(** [var_is_bit v] is [true] if the type of [v] is {!bit_t}. *)

val var_is_unsigned :  var -> bool
(** [var_is_unsigned v] is [true] if [v] is unsigned. *)

val var_is_signed :  var -> bool
(** [var_is_signed v] is [true] if [v] is signed. *)

val typ_delim : string
(** a delimiter separating variable name and variable type in the string representation of a variable *)

module VS : Set.S with type elt = var
(** variable sets with comparator {!cmp_var} *)

module VM : Map.S with type key = var
(** variable maps with comparator {!cmp_var} *)

module IS : Set.S with type elt = int
(** Sets of variable IDs *)


(** {1 Algebraic Expressions} *)

type eunop =
  | Eneg     (** negation *) (* *)
(** algebraic unary operators *)

type ebinop =
  | Eadd     (** addition *)
  | Esub     (** subtraction *)
  | Emul     (** multiplication *)
  | Epow     (** exponentation *) (* *)
(** algebraic binary operators *)

type eexp =
  | Evar of var                         (** variable *)
  | Econst of Z.t                       (** constant *)
  | Eunop of eunop * eexp               (** unary expression *)
  | Ebinop of ebinop * eexp * eexp      (** binary expression *)
(** Algebraic expressions. Use {!eq_eexp} instead of [=] to check the equality of two [eexp]. *)

val evar : var -> eexp
(** [evar v] is [Evar v]. *)

val econst : Z.t -> eexp
(** [econst n] is [Econst n]. *)

val eneg : eexp -> eexp
(** [eneg e] is [Eunop (Eneg, e)]. *)

val eadd : eexp -> eexp -> eexp
(** [eadd e1 e2] is [Ebinop (Eadd, e1, e2)]. *)

val esub : eexp -> eexp -> eexp
(** [esub e1 e2] is [Ebinop (Esub, e1, e2)]. *)

val emul : eexp -> eexp -> eexp
(** [emul e1 e2] is [Ebinop (Emul, e1, e2)]. *)

val epow : eexp -> eexp -> eexp
(** [epow e1 e2] is [Ebinop (Epow, e1, e2)]. *)

val esq : eexp -> eexp
(** [esq e] is [Ebinop (Emul, e, e)]. *)

val eadds : eexp list -> eexp
(** [eadds [e1; ...; en]] is [eadd (... (eadd e1 e2) ...) en]. [0] if the input list is empty. *)

val emuls : eexp list -> eexp
(** [emuls [e1; ...; en]] is [emul (... (emul e1 e2) ...) en]. [0] if the input list is empty. *)

val e2pow : int -> Z.t
(** [e2pow n] is the constant 2{^n}. *)

val len_eexp : eexp -> int
(** [len_eexp e] is the length of [e] *)

val eq_eexp : eexp -> eexp -> bool
(** [eq_eexp e1 e2] is [true] if [e1] and [e2] are equal. *)

val cmp_eexp : eexp -> eexp -> int
(** [cmp_eexp e1 e2] returns a negative integer if [e1] is smaller than [e2], a positive integer if [e1] is greater than [e2], and 0 if [eq_eexp e1 e2] is [true]. *)

module EEElt : Set.OrderedType with type t = eexp

module EES : Set.S with type elt = eexp
(** Sets of [eexp] *)

val subs_eexp : eexp -> EES.t
(** [subs_eexp e] is the set of all sub-expressions of [e]. *)

val simplify_eexp : eexp -> eexp
(** Simplify an algebraic expression. For example, e + 0 becomes e. *)

val limbs : int -> eexp list -> eexp
(** [limbs i [e1; e2; ...; en]] is e{_ 1} + e{_ 2}2{^ i} + e{_ 3}2{^ 2i} + ... + e{_ n}2{^ (n-1)i}. *)

val eunop_precedence : eunop -> int
(** Precedence of algebraic unary operators *)

val ebinop_precedence : ebinop -> int
(** Precedence of algebraic binary operators *)

val eexp_precedence : eexp -> int
(** Precedence of algebraic expressions *)

val ebinop_eexp_open : ebinop -> eexp -> bool
(** [ebinop_eexp_open op e] is [true] if the string representation of [e] does not need to be enclosed in parentheses when the preceding operator is [op]. *)

val eexp_ebinop_open : eexp -> ebinop -> bool
(** [eexp_ebinop_open e op] is [true] if the string representation of [e] does not need to be enclosed in parentheses when the succeeding operator is [op]. *)

val is_eexp_atomic : eexp -> bool
(** [is_eexp_atomic e] is [true] if [e] is atomic, that is, [e] is a variable or a constant. *)

val eexp_has_sub : eexp -> eexp -> bool
(** [eexp_has_sub e sub] is [true] if [e] has the sub-expression [sub]. *)


(** Range Expressions *)

type runop =
  | Rnegb    (** negation *)
  | Rnotb    (** bit-wise NOT *) (* *)
(** range unary operators *)

type rbinop =
  | Radd     (** addition *)
  | Rsub     (** subtraction *)
  | Rmul     (** multiplication *)
  | Rumod    (** unsigned mod *)
  | Rsrem    (** 2's complement signed remainder (sign follows dividend) *)
  | Rsmod    (** 2's complement signed remainder (sign follows divisor) *)
  | Randb    (** bit-wise AND *)
  | Rorb     (** bit-wise OR *)
  | Rxorb    (** bit-wise XOR *)
  | Rshl     (** left shift *)
  | Rlshr    (** logical right shift *)
  | Rashr    (** arithmetic right shift *) (* *)
(** range binary operators *)

type rexp =
  | Rvar of var                              (** variable *)
  | Rconst of size * Z.t                     (** constant of a specified bit-width*)
  | Runop of size * runop * rexp             (** unary operation on an expression of a specified bit-width *)
  | Rbinop of size * rbinop * rexp * rexp    (** binary operation on expressions of a specified bit-width *)
  | Ruext of size * rexp * int               (** [Ruext (w, e, i)] extends an unsigned expression [e] of width [w] by size [i] *)
  | Rsext of size * rexp * int               (** [Rsext (w, e, i)] extends a signed expression [e] of width [w] by size [i] *) (* *)
(** Range expressions *)

val size_of_rexp : rexp -> size
(** [size_of_rexp e] is the bit-width of the range expression [e]. *)

val rvar : var -> rexp
(** [rvar v] is [Rvar v]. *)

val rconst : size -> Z.t -> rexp
(** [rconst w n] is [Rconst (w, n)]. *)

val rnegb : size -> rexp -> rexp
(** [rnegb w e] is [Runop (w, Regb, e)]. *)

val rnotb : size -> rexp -> rexp
(** [rnotb w e] is [Runop (w, Rnotb, e)]. *)

val radd : size -> rexp -> rexp -> rexp
(** [radd w e1 e2] is [Rbinop (w, Radd, e1, e2)]. *)

val rsub : size -> rexp -> rexp -> rexp
(** [rsub w e1 e2] is [Rbinop (w, Rsub, e1, e2)]. *)

val rmul : size -> rexp -> rexp -> rexp
(** [rmul w e1 e2] is [Rbinop (w, Rmul, e1, e2)]. *)

val rumod : size -> rexp -> rexp -> rexp
(** [rumod w e1 e2] is [Rbinop (w, Rumod, e1, e2)]. *)

val rsrem : size -> rexp -> rexp -> rexp
(** [rsrem w e1 e2] is [Rbinop (w, Rsrem, e1, e2)]. *)

val rsmod : size -> rexp -> rexp -> rexp
(** [rsmod w e1 e2] is [Rbinop (w, Rsmod, e1, e2)]. *)

val randb : size -> rexp -> rexp -> rexp
(** [randb w e1 e2] is [Rbinop (w, Randb, e1, e2)]. *)

val rorb : size -> rexp -> rexp -> rexp
(** [rorb w e1 e2] is [Rbinop (w, Rorb, e1, e2)]. *)

val rxorb : size -> rexp -> rexp -> rexp
(** [rxorb w e1 e2] is [Rbinop (w, Rxorb, e1, e2)]. *)

val rshl : size -> rexp -> rexp -> rexp
(** [rshl w e1 e2] is [Rbinop (w, Rshl, e1, e2)]. *)

val rlshr : size -> rexp -> rexp -> rexp
(** [rlshr w e1 e2] is [Rbinop (w, Rlshr, e1, e2)]. *)

val rashr : size -> rexp -> rexp -> rexp
(** [rashr w e1 e2] is [Rbinop (w, Rashr, e1, e2)]. *)

val rsq : size -> rexp -> rexp
(** [rsq w e] is [Rbinop (w, Rmul, e, e)]. *)

val radds : size -> rexp list -> rexp
(** [radds w [e1; e2; ...; en]] is [(radd (... (radd e1 e2) ...) en)]. *)

val rmuls : size -> rexp list -> rexp
(** [rmuls w [e1; e2; ...; en]] is [(rmul (... (rmul e1 e2) ...) en)]. *)

val eq_rexp : rexp -> rexp -> bool
(** [eq_rexp e1 e2] is [true] if [e1] and [e2] are equal. *)


(** {1 Algebraic Predicates} *)

type ebexp =
  | Etrue                              (** true *)
  | Eeq of eexp * eexp                 (** equality *)
  | Eeqmod of eexp * eexp * eexp list  (** equality modulo a list of moduli *)
  | Eand of ebexp * ebexp              (** conjunction *) (* *)
(** algebraic predicates *)

val etrue : ebexp
(** [etrue] is [Etrue]. *)

val eeq : eexp -> eexp -> ebexp
(** [eeq e1 e2] is [Eeq (e1, e2)]. *)

val eeqmod : eexp -> eexp -> eexp -> ebexp
(** [eeqmod e1 e2 ms] is [Eeqmod (e1, e2. ms)]. *)

val eand : ebexp -> ebexp -> ebexp
(** [eand e1 e2] is [Eand (e1, e2)]. *)

val eands : ebexp list -> ebexp
(** [eands [e1; e2; ...; en]] is [(eand (... (eand e1 e2) ...) en)]. *)

val eq_ebexp : ebexp -> ebexp -> bool
(** [eq_ebexp e1 e2] is [true] if [e1] and [e2] are equal. *)

val split_eand : ebexp -> ebexp list
(** [split_eand e] splits [e] into atomic predicates. *)

val simplify_ebexp : ebexp -> ebexp
(** [simplify_ebexp e] simplies [e]. For example, [Eand (Etrue, Etrue)] becomes [Etrue]. *)


(** {1 Range Predicates} *)

type rcmpop =
  | Rult     (** unsigned less than *)
  | Rule     (** unsigned less than or equal to *)
  | Rugt     (** unsigned greater than *)
  | Ruge     (** unsigned greater than or equal to *)
  | Rslt     (** signed less than *)
  | Rsle     (** signed less than or equal to *)
  | Rsgt     (** signed greater than *)
  | Rsge     (** signed greater than or equal to *) (* *)
(** range comparison operators *)

type rbexp =
  | Rtrue                                 (** true *)
  | Req of size * rexp * rexp             (** equality *)
  | Rcmp of size * rcmpop * rexp * rexp   (** comparison *)
  | Rneg of rbexp                         (** negation *)
  | Rand of rbexp * rbexp                 (** conjunction *)
  | Ror of rbexp * rbexp                  (** disjunction *) (* *)
(** range predicates *)

val rtrue : rbexp
(** [rtrue] is [Rtrue]. *)

val rfalse : rbexp
(** [rfalse] is [Rneg Rtrue]. *)

val req : size -> rexp -> rexp -> rbexp
(** [req w e1 e2] is [Req (w, e1, e2)]. *)

val rult : size -> rexp -> rexp -> rbexp
(** [rult w e1 e2] is [Rcmp (w, Rult, e1, e2)]. *)

val rule : size -> rexp -> rexp -> rbexp
(** [rule w e1 e2] is [Rcmp (w, Rule, e1, e2)]. *)

val rugt : size -> rexp -> rexp -> rbexp
(** [rugt w e1 e2] is [Rcmp (w, Rugt, e1, e2)]. *)

val ruge : size -> rexp -> rexp -> rbexp
(** [ruge w e1 e2] is [Rcmp (w, Ruge, e1, e2)]. *)

val rslt : size -> rexp -> rexp -> rbexp
(** [rslt w e1 e2] is [Rcmp (w, Rslt, e1, e2)]. *)

val rsle : size -> rexp -> rexp -> rbexp
(** [rsle w e1 e2] is [Rcmp (w, Rsle, e1, e2)]. *)

val rsgt : size -> rexp -> rexp -> rbexp
(** [rsgt w e1 e2] is [Rcmp (w, Rsgt, e1, e2)]. *)

val rsge : size -> rexp -> rexp -> rbexp
(** [rsge w e1 e2] is [Rcmp (w, Rsge, e1, e2)]. *)

val reqmod : size -> rexp -> rexp -> rexp -> rbexp
(** [reqmod w e1 e2 m] holds if ((the unsigned value of e1) - (the unsigned value of e2)) smod (the unsigned value of m) is 0. *)

val requmod : size -> rexp -> rexp -> rexp -> rbexp
(** [requmod w e1 e2 m] is [reqmod w e1 e2 m]. *)

val reqsmod : size -> rexp -> rexp -> rexp -> rbexp
(** [reqsmod w e1 e2 m] holds if ((the signed value of e1) - (the signed value of e2)) smod (the signed value of m) is 0. *)

val reqsrem : size -> rexp -> rexp -> rexp -> rbexp
(** [reqsrem w e1 e2 m] holds if ((the signed value of e1) - (the signed value of e2)) srem (the signed value of m) is 0. *)

val rneg : rbexp -> rbexp
(** [rneg e] is [Rneg e]. *)

val rand : rbexp -> rbexp -> rbexp
(** [rand e1 e2] is [Rand (e1, e2)]. *)

val ror : rbexp -> rbexp -> rbexp
(** [ror e1 e2] is [Ror (e1, e2)]. *)

val rands : rbexp list -> rbexp
(** [rands [e1; e2; ...; en]] is [(rand (... (rand e1 e2) ...) en)]. *)

val rors : rbexp list -> rbexp
(** [rors [e1; e2; ...; en]] is [(ror (... (ror e1 e2) ...) en)]. *)

val eq_rbexp : rbexp -> rbexp -> bool
(** [eq_rbexp e1 e2] is [true] if [e1] and [e2] are equal. *)

val split_rand : rbexp -> rbexp list
(** [split_rand e] splits the top-level conjunction of [e]. *)

val split_ror : rbexp -> rbexp list
(** [split_rand e] splits the top-level disjunction of [e]. *)


(** {1 Predicates} *)

type bexp = ebexp * rbexp
(** a predicate is a pair of an algebraic predicate and a range predicate. *)

val btrue : bexp
(** [btrue] is [(Etrue, Rtrue)]. *)

val eqn_bexp : bexp -> ebexp
(** [eqn_bexp e] is the algebraic predicate of [e]. *)

val rng_bexp : bexp -> rbexp
(** [eqn_bexp e] is the range predicate of [e]. *)

val band : bexp -> bexp -> bexp
(** Conjunction of two predicates. [band (e1, r1) (e2, r2)] is [(eand e1 e2, rand r1 r2)]. *)

val bands : bexp list -> bexp
(** [bands [e1; e2; ...; en]] is [(band (... (band e1 e2) ...) en)]. *)

val bands2 : ebexp list -> rbexp list -> bexp
(** [bands2 [e1; e2; ...; en] [r1; r2; ...; rn]] is [(eands [e1; e2; ...; en], rands [r1; r2; ...; rn])]. *)

val eq_bexp : bexp -> bexp -> bool
(** [eq_bexp e1 e2] is [true] if [e1] and [e2] are equal. *)


(** {1 Instructions} *)

type prove_with_spec =
  Precondition           (** precondition *)
| Cuts of int list       (** a list of cuts specified by cut IDs *)
| AllCuts                (** all cuts *)
| AllAssumes             (** all assumes *)
| AllGhosts              (** all ghosts *) (* *)
(** prove-with clauses *)

type atomic =
  | Avar of var          (** variable *)
  | Aconst of typ * Z.t  (** constant of a specified type *)
(** atomics *)

type instr =
  | Imov of var * atomic                          (** Assignment. [Imov (v, a)]: v = a. *)
  | Ishl of var * atomic * Z.t                    (** Left shift. [Ishl (v, a, n)]: v = a2{^ n}, overflow is forbidden. *)
  | Icshl of var * var * atomic * atomic * Z.t    (** Concatenated left shift. [Icshl (vh, vl, a1, a2, n)] concatenates [a1] (high) and [a2] (low),
                                                      shifts the concatenation to the left by [n], and then stores the high part and the low
                                                      part of the concatenation respectively to [vh] and [vl]. *)
  | Inondet of var                                (** Nondeterministic assignment. [Inondet v]: v = a nondeterministic value. *)
  | Icmov of var * atomic * atomic * atomic       (** Conditional assignment. [Icmov (v, c, a1, a2)]: if c then v = a1 else v = a2. *)
  | Inop                                          (** No-op. [Inop]: does nothing. *)
  | Inot of var * atomic                          (** Bit-wise NOT. [Inot (v, a)]: v = not(a), the one's complement of a. *)
  | Iadd of var * atomic * atomic                 (** Addition. [Iadd (v, a1, a2)]: v = a1 + a2, overflow is forbidden. *)
  | Iadds of var * var * atomic * atomic          (** Add and set carry. [Iadds (c, v, a1, a2)]: v = a1 + a2, c = carry flag. *)
  | Iadc of var * atomic * atomic * atomic        (** Addition with carry. [Iadc (v, a1, a2, y)]: v = a1 + a2 + y, overflow is forbidden. *)
  | Iadcs of var * var * atomic * atomic * atomic (** Addition with carry and set carry. [Iadcs (c, v, a1, a2, y)]: v = a1 + a2 + y, c = carry flag. *)
  | Isub of var * atomic * atomic                 (** Subtraction. [Isub (v, a1, a2)]: v = a1 + not(a2) + 1, overflow is forbidden. *)
  | Isubc of var * var * atomic * atomic          (** Subtract and set carry. [Isubc (c, v, a1, a2)]: v = a1 + not(a2) + 1, c = carry flag. *)
  | Isubb of var * var * atomic * atomic          (** Subtract and set borrow. [Isubb (b, v, a1, a2)]: v = a1 - a2, b = borrow flag. *)
  | Isbc of var * atomic * atomic * atomic        (** Subtract with carry. [Isbc (v, a1, a2, y)]: v = a1 + not(a2) + y. *)
  | Isbcs of var * var * atomic * atomic * atomic (** Subtract with carry and set carry. [Isbcs (c, v, a1, a2, y)]: v = a1 + not(a2) + y, c = carry flag. *)
  | Isbb of var * atomic * atomic * atomic        (** Subtract with borrow. [Isbb (v, a1, a2, y)]: v = a1 - a2 - y. *)
  | Isbbs of var * var * atomic * atomic * atomic (** Subtract with borrow and set borrow. [Isbbs (b, v, a1, a2, y)]: v = a1 - a2 - y, b = borrow flag. *)
  | Imul of var * atomic * atomic                 (** Half-multiplication. [Imul (v, a1, a2)]: v = a1 * a2, overflow is forbidden. *)
  | Imuls of var * var * atomic * atomic          (** Half-multiply and set carry. *)
  | Imull of var * var * atomic * atomic          (** Full-multiplication. [Imull (vh, vl, a1, a2)]: [vh] and [vl] are respectively the high part and
                                                      the low part of the full multiplication [a1 * a2]. *)
  | Imulj of var * atomic * atomic                (** Full-multiplication. [Iumulj (v, a1, a2)]: [v] is the full multiplication of [a1 * a2], which is
                                                      equivalent to [Iumull (vh, vl, a1, a2); Join (v, vh, vl)]. *)
  | Isplit of var * var * atomic * Z.t            (** Split. [Isplit (vh, vl, a, n)]: [vh] is the high (w - n) bits (signed extended to w bits) of [a]
                                                      and [vl] is the low n bits (zero extended to w bits) of [a] where w is the bit-width of [a]. *)
  (* Instructions that cannot be translated to polynomials *)
  | Iand of var * atomic * atomic                 (** Bit-wise AND. [Iand (v, a1, a2)]: [v] is the bitwise AND of [a1] and [a2]. *)
  | Ior of var * atomic * atomic                  (** Bit-wise OR. [Ior (v, a1, a2)]: [v] is the bitwise OR of [a1] and [a2]. *)
  | Ixor of var * atomic * atomic                 (** Bit-wise XOR. [Ixor (v, a1, a2)]: [v] is the bitwise XOR of [a1] and [a2]. *)
  (* Type conversions *)
  | Icast of var option * var * atomic            (** Casting. [Icast (od, v, a)]: [v] is the value of [a] represented by the type of [v],
                                                     [od] is a value used to compute the difference between [a] and [v], the meaning depends on
                                                     the signs of [a] and [v]. *)
  | Ivpc of var * atomic                          (** Value-preserving casting. [Ivpc (v, a)]: [v = a]. *)
  | Ijoin of var * atomic * atomic                (** Join. [Ijoin (v, ah, al)]: v = ah * 2{^ w} + al where w is the bit-width of al. *)
  (* Specifications *)
  | Iassert of bexp                               (** Assertion. *)
  | Iassume of bexp                               (** Assumption. *)
  | Icut of (ebexp * prove_with_spec list) list * (rbexp * prove_with_spec list) list
                                                  (** Cuts *)
  | Ighost of VS.t * bexp                         (** Ghost variables. *) (* *)
(** instructions *)

type program = instr list
(** A program is a list of instructions. *)

type lined_program = (int * instr) list
(** A program with instructions annotated with line numbers. *)

val mkatomic_var : var -> atomic
(** Creates an atomic from a variable. *)

val mkatomic_const : typ -> Z.t -> atomic
(** Creates an atomic from a constant. *)

val size_of_atomic : atomic -> size
(** [size_of_atomic a] is the bit-width of the atomic [a]. *)

val typ_of_atomic : atomic -> typ
(** [typ_of_atomic a] is the type of the atomic [a]. *)

val var_of_atomic : atomic -> var
(** [var_of_atomic (Avar v)] is the [v]. The input must be an atomic formed by a variable. *)

val const_of_atomic : atomic -> Z.t
(** [var_of_atomic (Aconst (t, n))] is the [n]. The input must be an atomic formed by a constant. *)

val atomic_is_var : atomic -> bool
(** [atomic_is_var a] is [true] if [a] is formed by a variable. *)

val atomic_is_const : atomic -> bool
(** [atomic_is_const a] is [true] if [a] is formed by a constant. *)

val atomic_is_signed : atomic -> bool
(** [atomic_is_signed a] is [true] if the type of [a] is signed. *)

val eq_atomic : atomic -> atomic -> bool
(** [eq_atomic a1 a2] is [true] if [a1] and [a2] are equal. *)

val is_assert : instr -> bool
(** [is_assert i] if [i] is an assertion. *)

val is_assume : instr -> bool
(** [is_assume i] if [i] is an assumption. *)

val is_cut : instr -> bool
(** [is_cut i] if [i] is a cut. *)

val is_ecut : instr -> bool
(** [is_ecut i] if [i] is an ecut. *)

val is_rcut : instr -> bool
(** [is_rcut i] if [i] is a rcut. *)

val is_annotation : instr -> bool
(** [is_annotation i] if [i] is an annotation such as assertions. *)

module SS : Set.S with type elt = string
(** set of strings *)

module SM : Map.S with type key = string
(** map with strings as its keys *)

val new_name : ?prefix:string -> SS.t -> string
(** [new_name ~prefix:s ss] suggests a new name that does not appear in [ss]. The returned name has a prefix [s]. *)


(** Specifications *)

type spec =
  {
    spre : bexp;                       (** precondition *)
    sprog : program;                   (** program *)
    spost : bexp;                      (** postcondition *)
    sepwss : prove_with_spec list;     (** prove-with clauses for algebraic postcondition *)
    srpwss : prove_with_spec list      (** prove-with clauses for range postcondition *) (* *)
  }
(** specification *)

type espec =
  {
    espre : ebexp;                     (** precondition *)
    esprog : program;                  (** program *)
    espost : ebexp;                    (** postcondition *)
    espwss : prove_with_spec list      (** prove-with clauses for algebraic postcondition *) (* *)
  }
(** algebraic specification *)

type rspec =
  {
    rspre : rbexp;                     (** precondition *)
    rsprog : program;                  (** program *)
    rspost : rbexp;                    (** postcondition *)
    rspwss : prove_with_spec list      (** prove-with clauses for range postcondition *) (* *)
  }
(** range specification *)

val espec_of_spec : spec -> espec
(** extract the algebraic specification from a specification *)

val rspec_of_spec : spec -> rspec
(** extract the range specification from a specification *)


(** {1 String Outputs} *)

val string_of_const : Z.t -> string
(** [string_of_const n] returns the string representation of a constant [n]. Negative numbers are enclosed in parentheses. *)

val string_of_typ : typ -> string
(** [string_of_typ t] is the string representation of a type [t]. *)

val string_of_var : ?typ:bool -> var -> string
(** [string_of_var ~typ:b v] is the string representation of a variable [v]. By default, type information is not included unless [b] is [true].  *)

val string_of_vs : ?typ:bool -> VS.t -> string
(** [string_of_vs ~typ:b vs] is the string representation of a set of variables [vs]. By default, type infomation is not included unless [b] is [true]. *)

val string_of_eunop : eunop -> string
(** the string representation of an algebraic unary operator *)

val symbol_of_eunop : eunop -> string
(** the symbol of an algebraic unary operator *)

val string_of_ebinop : ebinop -> string
(** the string representation of an algebraic binary operator *)

val symbol_of_ebinop : ebinop -> string
(** the symbol of an algebraic binary operator *)

val string_of_rcmpop : rcmpop -> string
(** the string representation of a range comparison operator *)

val string_of_runop : runop -> string
(** the string representation of a range unary operator *)

val string_of_rbinop : rbinop -> string
(** the string representation of a range binary operator *)

val string_of_eexp : ?typ:bool -> eexp -> string
(** [string_of_eexp ~typ:b e] is the string representation of an algebraic expression [e]. If [b] is true, types will also be outputted. *)

val string_of_rexp : ?typ:bool -> rexp -> string
(** [string_of_rexp ~typ:b e] is the string representation of a range expression [e]. If [b] is true, types will also be outputted. *)

val string_of_ebexp : ?typ:bool -> ebexp -> string
(** [string_of_ebexp ~typ:b e] is the string representation of an algebraic predicate [e]. If [b] is true, types will also be outputted. *)

val string_of_rbexp : ?typ:bool -> rbexp -> string
(** [string_of_rbexp ~typ:b e] is the string representation of a range predicate [e]. If [b] is true, types will also be outputted. *)

val string_of_bexp : ?typ:bool -> bexp -> string
(** [string_of_bexp ~typ:b e] is the string representation of a predicate [e]. If [b] is true, types will also be outputted. *)

val string_of_atomic : ?typ:bool -> atomic -> string
(** [string_of_atomic ~typ:b a] is the string representation of an atomic [a]. If [b] is true, types will also be outputted. *)

val string_of_instr : ?typ:bool -> instr -> string
(** [string_of_instr ~typ:b i] is the string representation of an instruction [i]. If [b] is true, types will also be outputted. *)

val string_of_program : ?insert_nop:bool -> ?typ:bool -> program -> string
(** [string_of_program ~typ:b p] is the string representation of a program [p]. If [b] is true, types will also be outputted. *)

val string_of_spec : ?typ:bool -> spec -> string
(** [string_of_spec ~typ:b s] is the string representation of a specification [s]. If [b] is true, types will also be outputted. *)

val string_of_espec : ?typ:bool -> espec -> string
(** [string_of_espec ~typ:b s] is the string representation of an algebraic specification [s]. If [b] is true, types will also be outputted. *)

val string_of_rspec : ?typ:bool -> rspec -> string
(** [string_of_rspec ~typ:b s] is the string representation of a range specification [s]. If [b] is true, types will also be outputted. *)


(** {1 Variable Sets} *)

val vars_eexp : eexp -> VS.t
(** [vars_eexp e] is the set of variables in the algebraic expression [e]. *)

val vars_rexp : rexp -> VS.t
(** [vars_rexp e] is the set of variables in the range expression [e]. *)

val vars_ebexp : ebexp -> VS.t
(** [vars_ebexp e] is the set of variables in the algebraic predicate [e]. *)

val vars_rbexp : rbexp -> VS.t
(** [vars_rbexp e] is the set of variables in the range predicate [e]. *)

val vars_bexp : bexp -> VS.t
(** [vars_bexp e] is the set of variables in the predicate [e]. *)

val vars_atomic : atomic -> VS.t
(** [vars_atomic a] is the set of variables in the atomic [a]. *)

val vars_instr : instr -> VS.t
(** [vars_instr i] is the set of variables in the instruction [i]. *)

val vars_program : program -> VS.t
(** [vars_program p] is the set of variables in the program [p]. *)

val lvs_instr : instr -> VS.t
(** [lvs_instr i] is the set of variables with new values written in the instruction [i]. *)

val lvs_program : program -> VS.t
(** [lvs_program p] is the set of variables with new values written in the program [p]. *)

val rvs_instr : instr -> VS.t
(** [rvs_instr i] is the set of variables with values read in the instruction [i]. *)

val rvs_program : program -> VS.t
(** [rvs_program p] is the set of variables with values read in the program [p]. *)

val lcarries_instr : instr -> VS.t
(** [lvs_carries i] is the set of carries with new values written in the instruction [i]. *)

val lcarries_program : program -> VS.t
(** [lvs_program p] is the set of carries with new values written in the program [p]. *)

val gvs_instr : instr -> VS.t
(** [gvs_instr i] is the set of ghost variables defined in the instruction [i]. *)

val gvs_program : program -> VS.t
(** [gvs_program p] is the set of ghost variables defined in the program [p]. *)

val vars_spec : spec -> VS.t
(** [vars_spec s] is the set of variables in the specification [s]. *)

val vars_espec : espec -> VS.t
(** [vars_espec s] is the set of variables in the algebraic specification [s]. *)

val vars_rspec : rspec -> VS.t
(** [vars_rspec s] is the set of variables in the range specification [s]. *)


(** {1 Variable ID Sets} *)

val vids_eexp : eexp -> IS.t
(** [vids_eexp e] is the set of IDs of variables in the algebraic expression [e]. *)

val vids_ebexp : ebexp -> IS.t
(** [vids_ebexp e] is the set of IDs of variables in the algebraic predicate [e]. *)

val vids_rexp : rexp -> IS.t
(** [vids_rexp e] is the set of IDs of variables in the range expression [e]. *)

val vids_rbexp : rbexp -> IS.t
(** [vids_rbexp e] is the set of IDs of variables in the range predicate [e]. *)

val vids_bexp : bexp -> IS.t
(** [vids_bexp e] is the set of IDs of variables in the predicate [e]. *)

val vids_atomic : atomic -> IS.t
(** [vids_atomic a] is the set of IDs of variables in the atomic [a]. *)

val lvids_instr : instr -> IS.t
(** [lvids_instr i] is the set of IDs of variables written in the instruction [i]. *)

val rvids_instr : instr -> IS.t
(** [rvids_instr i] is the set of IDs of variables read in the instruction [i]. *)

val vids_instr : instr -> IS.t
(** [vids_instr i] is the set of IDs of variables in the instruction [i]. *)

val lvids_program : program -> IS.t
(** [lvids_program p] is the set of IDs of variables written in the program [p]. *)

val rvids_program : program -> IS.t
(** [rvids_program p] is the set of IDs of variables read in the program [p]. *)

val vids_program : program -> IS.t
(** [vids_program p] is the set of IDs of variables in the program [p]. *)

val lcids_instr : instr -> IS.t
(** [lcids_instr i] is the set of IDs of carries set in the instruction [i]. *)

val lcids_program : program -> IS.t
(** [lcids_program p] is the set of IDs of carries set in the program [p]. *)

val vids_spec : spec -> IS.t
(** [vids_spec s] is the set of IDs of variables in the specification [s]. *)

val vids_espec : espec -> IS.t
(** [vids_espec s] is the set of IDs of variables in algebraic specification [s]. *)

val vids_rspec : rspec -> IS.t
(** [vids_rspec s] is the set of IDs of variables in the range specification [s]. *)


(** {1 Substitution} *)

val amap_trans : atomic VM.t -> atomic VM.t
(** Define v -> v' if v is mapped to Avar v'. Define v -> c if v is mapped to Aconst (_, c).
    [amaps_trans am] returns [am'] such that v -> v' in [am'] if
    1. v -> ... -> v' in [am] and  v' is not in [am], or
    2. v -> ... -> c in [am]. *)

val emap_trans : eexp VM.t -> eexp VM.t
(** Define v -> v' if v is mapped to Evar v'. Define v -> c if v is mapped to Econst c.
    [emaps_trans em] returns [em'] such that v -> v' in [em'] if
    1. v -> ... -> v' in [em] and  v' is not in [em], or
    2. v -> ... -> c in [em]. *)

val rmap_trans : rexp VM.t -> rexp VM.t
(** Define v -> v' if v is mapped to Rvar v'. Define v -> c if v is mapped to Rconst (_, c).
    [rmaps_trans rm] returns [rm'] such that v -> v' in [rm'] if
    1. v -> ... -> v' in [rm] and  v' is not in [rm], or
    2. v -> ... -> c in [rm]. *)

val emap_of_amap : atomic VM.t -> eexp VM.t
(** [emap_of_amap am] convert all atomics in [am] to eexp. *)

val rmap_of_amap : atomic VM.t -> rexp VM.t
(** [rmap_of_amap am] convert all atomics in [am] to rexp. *)

val eexp_of_atomic : atomic -> eexp
(** Convert an atomic to an eexp. *)

val rexp_of_atomic : atomic -> rexp
(** Convert an atomic to a rexp. *)

val get_subst_maps : program -> atomic VM.t * eexp VM.t * rexp VM.t * program
(** Return substitution maps from assignments in a program. *)

val get_subst_maps_vpc : program -> atomic VM.t * eexp VM.t * rexp VM.t * program
(** Return substitution maps from value-preserved casting in a program. *)

val subst_maps_of_list : (var * atomic) list -> atomic VM.t * eexp VM.t * rexp VM.t
(** Convert a list of (v, a) pairs to substitution maps where v is a variable to be replaced by the atomic a. *)

val subst_eexp : eexp VM.t -> eexp -> eexp
(** [subst_eexp em e] replaces variables in [e] by the corresponding algebraic expressions in [em]. *)

val subst_rexp : rexp VM.t -> rexp -> rexp
(** [subst_rexp rm e] replaces variables in [e] by the corresponding range expressions in [rm]. *)

val subst_ebexp : eexp VM.t -> ebexp -> ebexp
(** [subst_ebexp em e] replaces variables in [e] by the corresponding algebraic expressions in [em]. *)

val subst_rbexp : rexp VM.t -> rbexp -> rbexp
(** [subst_rbexp em e] replaces variables in [e] by the corresponding range expressions in [rm]. *)

val subst_bexp : eexp VM.t -> rexp VM.t -> bexp -> bexp
(** [subst_bexp em rm e] replaces variables in the algebraic predicate of [e]
    by the corresponding algebraic expressions in [em] and replaces variables
    in the range predicate of [e] by the corresponding range expressions in
    [em]. *)

val subst_lval : atomic VM.t -> var -> var
(** [subst_lval am v] replaces the lval [v] by the variable in the corresponding
    atomic in [am] if the corresponding atomic is a variable, and does nothing
    otherwise. *)

val subst_atomic : atomic VM.t -> atomic -> atomic
(** [subst_atomic am a] replaces variables in [a] by the corresponding atomics in am. *)

val subst_instr : atomic VM.t -> eexp VM.t -> rexp VM.t -> instr -> instr
(** [subst_instr am em rm i] replaces variables in [i] based on [am], [em], and
    [rm]. It is not necessary that a variable is mapped to the same variable or
    constant in [am], [em], and [rm]. *)

val subst_program : atomic VM.t -> eexp VM.t -> rexp VM.t -> program -> program
(** [subst_program am em rm p] replaces variables in [p] based on [am], [em],
    and [rm]. *)

val subst_lined_program : atomic VM.t -> eexp VM.t -> rexp VM.t -> lined_program -> lined_program
(** [subst_lined_program am em rm p] replaces variables in [p] based on [am],
    [em], and [rm]. *)

val replace_eexp : (eexp * eexp) list -> eexp -> eexp
(** [replace_eexp [(p1, r1); ...; (pn, rn)] e] replaces [p1], ..., and [pn] in [e] respectively with [r1], ..., and [rn]. *)


(** {1 Static Single Assignment (SSA)} *)

val mksvar : ?newvid:bool -> string -> typ -> int -> var
(** [mksvar ~newvid:b n t i] creates a variable with name [n], type [t], and SSA
    index [i]. If [b] is [true], the variable will have a new variable ID, and
    an uninitialized variable ID otherwise. *)

val ssa_var : int VM.t -> var -> var
(** [ssa_var m v] updates the SSA index of [v] according to [m]. *)

val ssa_atomic : int VM.t -> atomic -> atomic
(** [ssa_atomic m a] updates the SSA indices of variables in [a] according to [m]. *)

val ssa_eexp : int VM.t -> eexp -> eexp
(** [ssa_eexp m e] updates the SSA indices of variables in [e] according to [m]. *)

val ssa_rexp : int VM.t -> rexp -> rexp
(** [ssa_rexp m e] updates the SSA indices of variables in [e] according to [m]. *)

val ssa_ebexp : int VM.t -> ebexp -> ebexp
(** [ssa_ebexp m e] updates the SSA indices of variables in [e] according to [m]. *)

val ssa_rbexp : int VM.t -> rbexp -> rbexp
(** [ssa_rbexp m e] updates the SSA indices of variables in [e] according to [m]. *)

val ssa_bexp : int VM.t -> bexp -> bexp
(** [ssa_bexp m e] updates the SSA indices of variables in [e] according to [m]. *)

val ssa_instr : int VM.t -> instr -> int VM.t * instr
(** [ssa_instr m i] updates the SSA indices of variables in [i] according to [m]. *)

val ssa_program : int VM.t -> program -> int VM.t * program
(** [ssa_program m p] updates the SSA indices of variables in [p] according to [m]. *)

val ssa_spec : spec -> spec
(** [ssa_spec m s] updates the SSA indices of variables in [s] according to [m]. *)

val dessa_program : program -> program
(** [dessa_program p] remove SSA indices from the variables in the program [p]. *)

val dessa_spec : spec -> spec
(** [dessa_spec s] remove SSA indices from the variables in the specification [s]. *)


(** {1 Cuts} *)

val cut_espec : espec -> (espec list) list
(**
   [cut_espec s] cuts the algebraic specification [s] in SSA form and returns
   a list of lists of algebraic specifications. The i-th item in the returned
   list represents the specifications for the i-th cut. Each cut corresponds to
   a list of algebraic specifications because different prove-with clauses may
   be used. Note that this function removes all range properties in Icut
   instructions.
 *)

val cut_rspec : rspec -> (rspec list) list
(**
   [cut_rspec s] cuts the range specification [s] in SSA form and returns
   a list of lists of range specifications. The i-th item in the returned
   list represents the specifications for the i-th cut. Each cut corresponds to
   a list of range specifications because different prove-with clauses may
   be used. Note that this function removes all algebraic properties in Icut
   instructions.
 *)


(** {1 Rewriting} *)

val rewrite_mov_ssa_spec : spec -> spec
(** [rewrite_mov_ssa_spec s] replaces a variable [v] with [u] in a specification [s] for each simple assignment [Imov v u]. *)

val rewrite_vpc_ssa_spec : spec -> spec
(** [rewrite_mov_ssa_spec s] replaces a variable [v] with [u] in a specification [s] for each simple assignment [Ivpc v u]. *)


(** {1 Slicing} *)

val slice_ebexp : VS.t -> ebexp -> ebexp
(** [slice_ebexp vs e] slices an algebraic predicate according to a set of relevant variables. *)

val slice_rbexp : VS.t -> rbexp -> rbexp
(** [slice_rbexp vs e] slices a range predicate according to a set of relevant variables. *)

val slice_bexp : VS.t -> bexp -> bexp
(** [slice_bexp vs e] slices a predicate according to a set of relevant variables. *)

val slice_program : VS.t -> program -> (VS.t * program)
(**
   [slice_program vs p] slices a program according to a set of relevant variables.
   The set of relevant variables grows during slicing. The program should not
   contain any cut. Assertions will be removed by this function. This function
   may remove some necessary assumptions. For example, assume [vs] contains only
   [x] and [y]. Consider the following program:
   {v
   mull tmp x z w;
   assume z = ...;
   v}
   When the function visits the assume instruction, it does not know that [z]
   is relevant. Consider the following instruction as another example:
   {v
   uadds carry z x y;
   v}
   If the set of relevant variables contains only [z], then [x] and [y] will be
   added to the set. However, assumptions about [carry] may be sliced.
 *)

val slice_spec : spec -> spec
(** [slice_spec vs s] slices a specification according to a set of relevant variables. *)

val slice_espec : espec -> espec
(** [slice_espec vs s] slices an algebraic specification according to a set of relevant variables. *)

val slice_rspec : rspec -> rspec
(** [slice_rspec vs s] slices a range specification according to a set of relevant variables. *)

val eexp_vars_sat : VS.t -> eexp list -> VS.t
(** [eexp_vars_sat vs [e1; ...; en]] calculates the transitive closure of variables in [e1; ...; en] related to the set of variables [vs].*)

val ebexp_vars_sat : VS.t -> ebexp -> VS.t
(** [ebexp_vars_sat vs e] calculates the transitive closure of variables in [e] related to the set of variables [vs].*)

val rbexp_vars_sat : VS.t -> rbexp -> VS.t
(** [rbexp_vars_sat vs e] calculates the transitive closure of variables in [e] related to the set of variables [vs].*)

val bexp_vars_sat : VS.t -> bexp -> VS.t
(** [bexp_vars_sat vs e] calculates the transitive closure of variables in [e] related to the set of variables [vs].*)

val program_pre_vars_sat : VS.t -> (VS.t -> 'a -> VS.t) -> 'a -> program -> VS.t
(**
   [program_pre_vars_sat vs f pre p] calculates the transitive closure of
   variables in the precondition [pre] and the program [p] related to the
   set of variables [vs]. [f] is used to compute the transitive closure of
   variables in the precondition [pre] related to the set of variables [vs].

   Consider the following instruction:
   {v
   uadds carry_i x_j .. ..
   v}
   If x_j is in the set of relevant variables, carry_i will also be added to the
   set because there may be some assumption about the value of carry_i and x_j
   depends whether carry_i is zero or one.
*)

val eexp_vids_sat : IS.t -> eexp list -> IS.t
(** [eexp_vids_sat] is a variant of {!eexp_vars_sat}. [eexp_vids_sat] computes set of variable IDs while [eexp_vars_sat] computes set of variables. *)

val ebexp_vids_sat : IS.t -> ebexp -> IS.t
(** [ebexp_vids_sat] is a variant of {!ebexp_vars_sat}. [ebexp_vids_sat] computes set of variable IDs while [ebexp_vars_sat] computes set of variables. *)

val rbexp_vids_sat : IS.t -> rbexp -> IS.t
(** [rbexp_vids_sat] is a variant of {!rbexp_vars_sat}. [rbexp_vids_sat] computes set of variable IDs while [rbexp_vars_sat] computes set of variables. *)

val bexp_vids_sat : IS.t -> bexp -> IS.t
(** [bexp_vids_sat] is a variant of {!bexp_vars_sat}. [bexp_vids_sat] computes set of variable IDs while [bexp_vars_sat] computes set of variables. *)

val program_pre_vids_sat : IS.t -> (IS.t -> 'a -> IS.t) -> 'a -> program -> IS.t
(** [program_pre_vids_sat] is a variant of {!program_pre_vars_sat}. [program_pre_vids_sat] computes set of variable IDs while [program_pre_vars_sat] computes set of variables. *)

val slice_program_ssa : VS.t -> program -> program
(**
   [slice_program_ssa vs p] slices a program in SSA according to a fixed set of
   relevant variables. Unlike {!slice_program}, the set of relevant variables
   keeps unchanged during slicing. Note that all assertions will be removed by
   this function.
 *)

type 'a atomichash_t
val find_dep_vars : VS.t atomichash_t -> var -> VS.t
val mk_var_dep_hash : program -> VS.t atomichash_t

val slice_spec_ssa : spec -> VS.t atomichash_t option -> spec
(** [slice_spec_ssa s o] slices a specification in SSA. *)

val slice_espec_ssa : espec -> VS.t atomichash_t option -> espec
(** [slice_espec_ssa s o] slices an algebraic specification in SSA. *)

val slice_rspec_ssa : rspec -> VS.t atomichash_t option -> rspec
(** [slice_rspec_ssa s o] slices a range specification in SSA. *)


(** {1 Visitors} *)

type 'a vaction =
  | SkipChildren                             (** Stop visiting the children of the current node in AST *)
  | DoChildren                               (** Continue visiting the children of the current node in AST *)
  | ChangeTo of 'a                           (** Replace this node *)
  | ChangeDoChildrenPost of 'a * ('a -> 'a)  (** Apply replacement after visiting the children of the current node *) (* *)
(** actions available in a visitor *)

class type visitor =
object
  method vspec : spec -> spec vaction
  (** visit a specification *)

  method vprogram : program -> program vaction
  (** visit a program *)

  method vlined_program : lined_program -> lined_program vaction
  (** visit a program annotated with line numbers *)

  method vinstr : instr -> instr vaction
  (** visit an instruction *)

  method vbexp : bexp -> bexp vaction
  (** visit a predicate *)

  method vebexp : ebexp -> ebexp vaction
  (** visit an algebraic predicate *)

  method vrbexp : rbexp -> rbexp vaction
  (** visit a range predicate *)

  method veexp : eexp -> eexp vaction
  (** visit an algebraic expression *)

  method vrexp : rexp -> rexp vaction
  (** visit a range expression *)

  method vatomic : atomic -> atomic vaction
  (** visit an atomic *)

  method vaconst : (typ * Z.t) -> (typ * Z.t) vaction
  (** visit a constant in an atomic *)

  method veconst : Z.t -> Z.t vaction
  (** visit a constant in an algebraic expression *)

  method vrconst : (size * Z.t) -> (size * Z.t) vaction
  (** visit a constant in a range expression *)

  method vvar : var -> var vaction
  (** visit a variable *)
end
(** visitors *)

class nop_visitor : visitor
(** a visitor that does nothing *)

val visit_var : visitor -> var -> var
(** Visit a variable by a visitor. *)

val visit_aconst : visitor -> (typ * Z.t) -> (typ * Z.t)
(** Visit a constant in an atomic by a visitor. *)

val visit_econst : visitor -> Z.t -> Z.t
(** Visit a constant in an algebraic expression by a visitor. *)

val visit_rconst : visitor -> (size * Z.t) -> (size * Z.t)
(** Visit a constant in a range expression by a visitor. *)

val visit_atomic : visitor -> atomic -> atomic
(** Visit an atomic by a visitor. *)

val visit_eexp : visitor -> eexp -> eexp
(** Visit an algebraic expression by a visitor. *)

val visit_rexp : visitor -> rexp -> rexp
(** Visit a range expression by a visitor. *)

val visit_ebexp : visitor -> ebexp -> ebexp
(** Visit an algebraic predicate by a visitor. *)

val visit_rbexp : visitor -> rbexp -> rbexp
(** Visit a range predicate by a visitor. *)

val visit_bexp : visitor -> bexp -> bexp
(** Visit a predicate by a visitor. *)

val visit_instr : visitor -> instr -> instr
(** Visit an instruction by a visitor. *)

val visit_program : visitor -> program -> program
(** Visit a program by a visitor. *)

val visit_lined_program : visitor -> lined_program -> lined_program
(** Visit a program annotated with line numbers by a visitor. *)

val visit_spec : visitor -> spec -> spec
(** Visit a specification by a visitor. *)


(** {1 Normalization} *)

val update_variable_id_espec : int VM.t -> espec -> int VM.t
(**
   Update variable IDs for an algebraic specification. Uniqueness of variable
   IDs in the specification is guaranteed.
*)

val update_variable_id_rspec : int VM.t -> rspec -> int VM.t
(**
   Update variable IDs for a range specification. Uniqueness of variable
   IDs in the specification is guaranteed.
*)

val update_variable_id_spec : int VM.t -> spec -> int VM.t
(**
   Update variable IDs for a specification. Uniqueness of variable
   IDs in the specification is guaranteed.
*)

val normalize_index : int -> int -> int
(**
   [normalize_index n i] normalizes an index i.
   [normalize_index n i] is [i] if [i] is non-negative.
   [normalize_index n i] is [n + i] if [i] is negative.
 *)

val normalize_spec : spec -> spec
(**
   [normalize_spec s] normalizes a specification [s]. The followings are
   guaranteed after normalization:
   - Variables IDs are updated.
   - All indices in prove-with clauses are positive.
 *)

val normalize_espec : espec -> espec
(**
   [normalize_espec s] normalizes an algebraic specification. The followings are
   guaranteed after normalization:
   - Variables IDs are updated.
   - All indices in prove-with clauses are positive.
 *)

val normalize_rspec : rspec -> rspec
(**
   [normalize_rspec s] normalizes a range specification. The followings are
   guaranteed after normalization:
   - Variables IDs are updated.
   - All indices in prove-with clauses are positive.
 *)


(** {1 Trivial Specification} *)

val espre_implies_espost : ebexp -> ebexp -> bool
(** [espre_implies_espost pre post] is [true] if [post] appears in [pre]. *)

val espost_in_assumes : program -> ebexp -> bool
(** [espost_in_assumes p post] is [true] if [post] appears in some assume instruction in [p]. *)

val rspre_implies_rspost : rbexp -> rbexp -> bool
(** [rspre_implies_rspost pre post] is [true] if [post] appears in [pre] but is not a sub-predicate of some disjunction. *)

val rspost_in_assumes : program -> rbexp -> bool
(** [espost_in_assumes p post] is [true] if [post] appears in some assume instruction in [p] but is not a sub-predicate of some disjunction. *)

val is_espec_trivial : espec -> bool
(** [is_espec_trivial s] is [true] if the algebraic specification [s] is trivially valid. *)

val is_rspec_trivial : rspec -> bool
(** [is_rspec_trivial s] is [true] if the range specification [s] is trivially valid. *)

val remove_trivial_epost : espec -> espec
(** [remove_trivial_epost s] removes trivally-valid atomic predicates in the postcondition of the algebraic specification [s]. *)

val remove_trivial_rpost : rspec -> rspec
(** [remove_trivial_rpost s] removes trivally-valid atomic predicates in the postcondition of the range specification [s]. *)


(** {1 Others} *)

val auto_cast_program : ?preserve:bool -> program -> program
(**
   [auto_cast_program ~preserve:b p] automatically casts variables in the
   program [p]. If [b] is [true], [Ivpc] is used for casting.
*)

val split_espec_post : espec -> espec list
(** [split_espec_post s] splits the postcondition of [s] into atomic predicates and makes an atomic predicate an [espec] *)

val split_rspec_post : rspec -> rspec list
(** [split_rspec_post s] splits the postcondition of [s] into atomic predicates and makes an atomic predicate an [rspec] *)

val separate_assertions : spec -> spec list
(**
   Make an assertion a single specification and remove assertions. The input
   specification must be in SSA. Note that this function does not consider cut
   instructions.
 *)

val move_asserts : spec -> spec
(**
   Move assertions in a specification to its postcondition. The input
   specification must be in SSA.
 *)

val infer_input_variables : spec -> VS.t
(** Infer the input variables of a specification. *)

val ghost_to_assume : spec -> spec
(** Change all ghost instructions to assume instructions. *)

val spec_to_coqcryptoline : spec -> spec list
(**
   Convert a specification to a list of specifications recognized by
   CoqCryptoLine.
*)

val spec_to_bvcryptoline : spec -> string list
(** Convert a specification to a list of specification in BvCryptoLine format. *)

exception EvaluationException of string

val is_eexp_over_const : eexp -> bool
(** [is_eexp_over_const e] is [true] if [e] is an expression over constants. *)

val is_rexp_over_const : rexp -> bool
(** [is_rexp_over_const e] is [true] if [e] is an expression over constants. *)

val eval_eexp_const : eexp -> Z.t
(** [eval_eexp_const e] evaluates [e] if [is_eexp_over_const e] is [true], and
    raises {!EvaluationException} otherwise. *)

val eval_rexp_const : rexp -> bits
(** [eval_rexp_const e] evaluates [e] if [is_rexp_over_const e] is [true], and
    raises {!EvaluationException} otherwise. *)

val remove_cut_spec : spec -> spec
(** Remove all cuts in a specification. *)

val remove_ecut_spec : spec -> spec
(** Remove all algebraic cuts in a specification. *)

val remove_rcut_spec : spec -> spec
(** Remove all range cuts in a specification. *)
