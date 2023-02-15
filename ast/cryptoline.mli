
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

val typ_to_size : typ -> size -> typ
(** [typ_to_size t w] is [t] with size changed to [w]. *)

val cmp_typ : typ -> typ -> int
(** [cmp_typ a1 a2] compares two types. *)


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

val eneg' : eexp -> eexp
(** [eneg'] is the same as [eneg] except that [eneg' (Eunop (Eneg, e)) = e]. *)

val eadd : eexp -> eexp -> eexp
(** [eadd e1 e2] is [Ebinop (Eadd, e1, e2)]. *)

val eadd' : eexp -> eexp -> eexp
(** [eadd'] is the same as [eadd] except that [eadd' (Econst Z.zero) e = eadd' e (Econst Z.zero) = e] and
    addition of constants is evaluated. *)

val esub : eexp -> eexp -> eexp
(** [esub e1 e2] is [Ebinop (Esub, e1, e2)]. *)

val esub' : eexp -> eexp -> eexp
(** [esub'] is the same as [esub] except that [esub' (Econst Z.zero) e = eneg' e],
    [esub' e (Econst Z.zero) = e], and subtraction of constants is evaluated. *)

val emul : eexp -> eexp -> eexp
(** [emul e1 e2] is [Ebinop (Emul, e1, e2)]. *)

val emul' : eexp -> eexp -> eexp
(** [emul'] is the same as [emul] except that [emul' (Econst Z.zero) e = emul' e (Econst Z.zero) = Econst Z.zero],
    [emul' (Econst Z.one) e = emul' e (Econst Z.one) = e], and and multiplication of constants is evaluated. *)

val epow : eexp -> eexp -> eexp
(** [epow e1 e2] is [Ebinop (Epow, e1, e2)]. *)

val epow' : eexp -> eexp -> eexp
(** [epow'] is the same as [epow] except that [epow' e (Econst Z.zero) = Econst Z.one], [epow' e (Econst Z.one) = e],
    [epow' (Econst Z.zero) n = Econst Z.zero] for [n > 0], [epow' (Econst Z.one) n = Econst Z.one] for [n > 0], and
    exponentiation of constants is evaluated. *)

val esq : eexp -> eexp
(** [esq e] is [Ebinop (Emul, e, e)]. *)

val eadds : eexp list -> eexp
(** [eadds [e1; ...; en]] is [eadd (... (eadd e1 e2) ...) en]. [0] if the input list is empty. *)

val eadds' : eexp list -> eexp
(** [eadds'] is the same as [eadds] except that [eadd] is replaced with [eadd']. *)

val emuls : eexp list -> eexp
(** [emuls [e1; ...; en]] is [emul (... (emul e1 e2) ...) en]. [0] if the input list is empty. *)

val emuls' : eexp list -> eexp
(** [emuls'] is the same as [emuls] except that [emul] is replaced with [emul']. *)

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

val expand_eexp : eexp -> eexp
(** [expand_eexp e] expands [e] *)

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

val is_eexp_atom : eexp -> bool
(** [is_eexp_atom e] is [true] if [e] is an atom, that is, [e] is a variable or a constant. *)

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
(** [split_rand e] splits the top-level conjunctions in [e]. *)

val split_ror : rbexp -> rbexp list
(** [split_rand e] splits the top-level disjunctions in [e]. *)


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

type prove_with_spec =
  Precondition                                              (** precondition *)
| Cuts of int list                                          (** a list of cuts specified by cut IDs *)
| AllCuts                                                   (** all cuts *)
| AllAssumes                                                (** all assumes *)
| AllGhosts                                                 (** all ghosts *)
| AlgebraSolver of Options.Std.algebra_solver               (** algebra solver *)
| RangeSolver of string                                     (** range solver *) (* *)
(** prove-with clauses *)

type ebexp_prove_with = (ebexp * prove_with_spec list) list
(** Algebraic predicates associated with prove-with clauses *)

type rbexp_prove_with = (rbexp * prove_with_spec list) list
(** Range predicates associated with prove-with clauses *)

type bexp_prove_with = ebexp_prove_with * rbexp_prove_with
(** Predicates associated with prove-with clauses *)

val band_prove_with : bexp_prove_with -> bexp_prove_with -> bexp_prove_with
(** Conjunctions of two [bexp_prove_with]. *)

val bands_prove_with : bexp_prove_with list -> bexp_prove_with
(** Conjunctions of a list of [bexp_prove_with]. *)

val simplify_prove_with_specs : prove_with_spec list -> prove_with_spec list
(** [simplify_prove_with_specs pwss] simplifies [pwss]. *)

val ebexp_prove_with_eands : ebexp_prove_with -> ebexp
(** [ebexp_prove_with_eands es] is the conjunction of all algebraic predicates in [es]. *)

val ebexp_prove_with_specs : ebexp_prove_with -> prove_with_spec list
(** [ebexp_prove_with_specs es] is a list of prove-with clauses in [es]. *)

val rbexp_prove_with_rands : rbexp_prove_with -> rbexp
(** [rbexp_prove_with_rands rs] is the conjunction of all range predicates in [rs]. *)

val rbexp_prove_with_specs : rbexp_prove_with -> prove_with_spec list
(** [rbexp_prove_with_specs rs] is a list of prove-with clauses in [rs]. *)

val merge_ebexp_prove_with : ebexp_prove_with -> ebexp * prove_with_spec list
(** [merge_ebexp_prove_with espwss] is [(es, pwss)] where [es] is the
    conjunction of algebraic predicates in [espwss] and [pwss] is a list of
    prove-with clauses in [espwss]. *)

val merge_rbexp_prove_with : rbexp_prove_with -> rbexp * prove_with_spec list
(** [merge_rbexp_prove_with rspwss] is [(rs, pwss)] where [rs] is the
    conjunction of range predicates in [rspwss] and [pwss] is a list of
    prove-with clauses in [rspwss]. *)

val merge_bexp_prove_with : bexp_prove_with -> (ebexp * prove_with_spec list) * (rbexp * prove_with_spec list)
(** [merge_bexp_prove_with (es, rs)] is [(merge_ebexp_prove_with es, merge_rbexp_prove_with rs)] *)


(** {1 Instructions} *)

type atom =
  | Avar of var                                             (** variable *)
  | Aconst of typ * Z.t                                     (** constant of a specified type *)
(** atoms *)

type instr =
  | Imov of var * atom                                      (** Assignment *)
  | Ishl of var * atom * atom                               (** Left shift *)
  | Ishls of var * var * atom * Z.t                         (** Left shift *)
  | Ishr of var * atom * atom                               (** Logical right shift *)
  | Ishrs of var * var * atom * Z.t                         (** Logical right shift *)
  | Isar of var * atom * atom                               (** Arithmetic right shift *)
  | Isars of var * var * atom * Z.t                         (** Arithmetic right shift *)
  | Icshl of var * var * atom * atom * Z.t                  (** Concatenated left shift *)
  | Icshr of var * var * atom * atom * Z.t                  (** Concatenated right shift *)
  | Icshrs of var * var * var * atom * atom * Z.t           (** Concatenated right shift *)
  | Irol of var * atom * Z.t                                (** Left rotation *)
  | Iror of var * atom * Z.t                                (** Right rotation *)
  | Inondet of var                                          (** Nondeterministic assignment *)
  | Icmov of var * atom * atom * atom                       (** Conditional assignment *)
  | Inop                                                    (** No-op *)
  | Inot of var * atom                                      (** Bit-wise NOT *)
  | Iadd of var * atom * atom                               (** Add *)
  | Iadds of var * var * atom * atom                        (** Add and set carry *)
  | Iadc of var * atom * atom * atom                        (** Add with carry. *)
  | Iadcs of var * var * atom * atom * atom                 (** Add with carry and set carry *)
  | Isub of var * atom * atom                               (** Subtract *)
  | Isubc of var * var * atom * atom                        (** Subtract and set carry *)
  | Isubb of var * var * atom * atom                        (** Subtract and set borrow *)
  | Isbc of var * atom * atom * atom                        (** Subtract with carry *)
  | Isbcs of var * var * atom * atom * atom                 (** Subtract with carry and set carry *)
  | Isbb of var * atom * atom * atom                        (** Subtract with borrow *)
  | Isbbs of var * var * atom * atom * atom                 (** Subtract with borrow and set borrow *)
  | Imul of var * atom * atom                               (** Half-multiplication *)
  | Imuls of var * var * atom * atom                        (** Half-multiply and set carry. *)
  | Imull of var * var * atom * atom                        (** Full-multiplication *)
  | Imulj of var * atom * atom                              (** Full-multiplication *)
  | Isplit of var * var * atom * Z.t                        (** Split and extend *)
  | Ispl of var * var * atom * Z.t                          (** Split without extension *)
  (* Instructions that cannot be translated to polynomials *)
  | Iand of var * atom * atom                               (** Bit-wise AND *)
  | Ior of var * atom * atom                                (** Bit-wise OR *)
  | Ixor of var * atom * atom                               (** Bit-wise XOR *)
  (* Type conversions *)
  | Icast of var option * var * atom                        (** Casting *)
  | Ivpc of var * atom                                      (** Value-preserving casting *)
  | Ijoin of var * atom * atom                              (** Join *)
  (* Specifications *)
  | Iassert of bexp_prove_with                              (** Assertion *)
  | Iassume of bexp                                         (** Assumption *)
  | Icut of bexp_prove_with                                 (** Cuts *)
  | Ighost of VS.t * bexp                                   (** Ghost variables *) (* *)
(**
   Instructions.
   - [Imov (v, a)]: Assign [v] the value of [a].
                    {ul {- Type: [v] and [a] have the same type.}
                        {- QF_BV: v = a}
                        {- Algebra: v = a} }
   - [Ishl (v, a, n)]: Shift [a] left by [n] and store the result in [v].
                       {ul {- Type: [v] and [a] have the same type.}
                           {- QF_BV: v = shl a n}
                           {- Algebra: v = a × 2{^n} with soundness conditions:
                           {ul {- Unsigned: high n a = 0}
                               {- Signed: sext n (low (size a - n) a) = a}}}}
   - [Ishls (l, v, a, n)]: Shift [a] left by [n] and store the result in [v]. Bits shifted out are stored in [l].
                           {ul {- Type: [l] and [a] have the same sign. Size of [l] is [n]. [v] and [a] have the same type.}
                               {- QF_BV: l = high n a, v = shl a n}
                               {- Algebra:
                               {ul {- Unsigned: l × 2{^size a} + v = a × 2{^n}}
                                   {- Signed: l × 2{^size a} + d × 2{^size a} + v = a × 2{^n} for some fresh variable d (due to casting v to signed)}}}}
   - [Ishr (v, a, n)]: Shift [a] right logically by [n] and store the result in [v].
                       {ul {- Type: [v] and [a] have the same type.}
                           {- QF_BV: v = lshr a n}
                           {- Algebra: v × 2{^n} = a (or v = a / 2 if a is a constant) with soundness conditions:
                           {ul {- Unsigned: low n a = 0}
                               {- Signed: low n a = 0, high 1 a = 0}}}}
   - [Ishrs (v, l, a, n)]: Shift [a] right logically by [n] and store the result in [v]. Bits shifted out are stored in [l].
                           {ul {- Type: [v] and [a] have the same type. [l] is unsigned of size [n]}
                               {- QF_BV: v = lshr a n, l = low n a}
                               {- Algebra:
                               {ul {- Unsigned: v × 2{^n} + l = a}
                                   {- Signed: d × 2{^size a} + v × 2{^n} + l = a for some fresh d}}}}
   - [Isar (v, a, n)]: Shift [a] right arithmetically by [n].
                       {ul {- Type: [v] and [a] have the same type.}
                           {- QF_BV: v = ashr a n}
                           {- Algebra: v × 2{^n} = a (or v = a / 2 if a is a constant) with soundness conditions:
                           {ul {- Unsigned: low n a = 0, high 1 a = 0}
                               {- Signed: low n a = 0}}}}
   - [Isars (v, l, a, n)]: Shift [a] right arithmetically by [n] and store the result in [v]. Bits shifted out are stored in [l].
                           {ul {- Type: [v] and [a] have the same type. [l] is unsigned of size [n].}
                               {- QF_BV: v = ashr a n, l = low n a}
                               {- Algebra:
                               {ul {- Unsigned: d × 2{^size a - n} + v × 2{^n} + l = a for some fresh d}
                                   {- Signed: v × 2{^n} + l = a}}}}
   - [Icshl (vh, vl, a1, a2, n)]: Concatenate [a1] (high) and [a2] (low), shift the concatenation left by [n], store the high bits in [vh], and store the low bits (logically) shifted right by [n] in [vl].
                                  {ul {- Type: [vh] and [a1] have the same type. [vl] and [a2] are unsigned. [vh], [vl], [a1], and [a2] have the same size.}
                                      {- QF_BV: vh = high (size a1) (shl (concat a1 a2) n), vl = shr (low (size a1) (shl (concat a1 a2) n)) n}
                                      {- Algebra: vh × 2{^size a1 - n} + vl = a1 × 2{^size a1} + a2 with soundness conditions:
                                      {ul {- Unsigned: n ≤ size a1, high n a1 = 0}
                                          {- Signed: n ≤ size a1, sex (low (size a1 - n) a1) n = a1}}}}
   - [Icshr (vh, vl, a1, a2, n)]: Concatenate [a1] (high) and [a2] (low), (logically) shift the concatenation right by [n], store the high bits in [vh], and store the low bits in [vl].
                                  {ul {- Type: [vh] and [a1] have the same type. [vl] and [a2] have the same unsigned type. [vh] and [vl] have the same size.}
                                      {- QF_BV: vh = lshr a1 n, vl = concate (low n a1) (high (size a1 - n) a2)}
                                      {- Algebra: (vh × 2{^size a1} + vl) × 2{^n} = a1 × 2{^size a1} + a2 with soundness condition:
                                      {ul {- Unsigned: low n a2 = 0}
                                          {- Signed: high 1 a1 = 0, low n a2 = 0}}}}
   - [Icshrs (vh, vl, l, a1, a2, n)]: Concatenate [a1] (high) and [a2] (low), (logically) shift the concatenation right by [n], store the high bits in [vh], and store the low bits in [vl]. Bits shifted out are stored in [l].
                                      {ul {- Type: [vh] and [a1] have the same type. [vl] and [a2] have the same unsigned type. [vh] and [vl] have the same size. [l] is unsigned and of size [n].}
                                          {- QF_BV: vh = lshr a1 n, vl = concate (low n a1) (high (size a1 - n) a2), l = low n a2}
                                          {- Algebra:
                                          {ul {- Unsigned: (vh × 2{^size a1} + vl) × 2{^n} + l = a1 × 2{^size a1} + a2}
                                              {- Signed: (vh × 2{^size a1} + vl) × 2{^n} + l + d × 2{^size a1 + size a2} = a1 × 2{^size a1} + a2 for some fresh d}}}}
   - [Irol (v, a, n)]: Rotate [v] to the left by [n] and store the rotated result in [v].
                       {ul {- Type: [a] is unsigned. [v] and [a] have the same type. [n] is smaller than the size of [a].}
                           {- QF_BV: v = rol a n}
                           {- Algebra:
                           {ul {- {!Options.Std.track_split} = [true]: a = l + h × 2{^size a - n}, v = h + l × 2{^n} for some fresh or existing l and h}
                               {- {!Options.Std.track_split} = [false]: v = a × 2{^n} - h × 2{^size a} + h for some fresh h}}}}
   - [Iror (v, a, n)]: Rotate [v] to the right by [n] and store the rotated result in [v].
                       {ul {- Type: [a] is unsigned. [v] and [a] have the same type. [n] is smaller than the size of [a].}
                           {- QF_BV: v = ror a n}
                           {- Algebra:
                           {ul {- {!Options.Std.track_split} = [true]: a = l + h × 2{^n}, v = h + l × 2{^size a - n} for some fresh l and h}
                               {- {!Options.Std.track_split} = [false]: v = a × 2{^size a - n} - h × 2{^size a} + h for some fresh h}}}}
   - [Inondet v]: Assign [v] a nondeterministic value.
                  {ul {- QF_BV: True}
                      {- Algebra: True}}
   - [Icmov (v, c, a1, a2)]: Assign [v] the value of [a1] if [c] is 1, and otherwise the value of [a2].
                             {ul {- Type: [v], [a1], and [a2] have the same type. [c] is a bit.}
                                 {- QF_BV: v = ite c a1 a2}
                                 {- Algebra: v = c × a1 + (1 - c) × a2}}
   - [Inop]: No-op.
             {ul {- Type: N/A}
                 {- QF_BV: True}
                 {- Algebra: True}}
   - [Inot (v, a)]: Assign [v] the bit-wise NOT of [a].
                    {ul {- Type: [v] and [a] have the same size.}
                        {- QF_BV: v = not a}
                        {- Algebra:
                        {ul {- Unsigned: v = 2{^size a} - 1 - a}
                            {- Signed: v = -a - 1}}}}
   - [Iadd (v, a1, a2)]: Assign [v] the sum of [a1] and [a2].
                         {ul {- Type: [v], [a1], and [a2] have the same type.}
                             {- QF_BV: v = add a1 a2}
                             {- Algebra: v = a1 + a2 with soundness conditions:
                             {ul {- Unsigned: ~ uaddo a1 a2}
                                 {- Signed: ~ saddo a1 a2}}}}
   - [Iadds (c, v, a1, a2)]: Assign [v] the sum of [a1] and [a2] and set the carry flag [c].
                             {ul {- Type: [v], [a1], and [a2] have the same type. [c] is a bit.}
                                 {- QF_BV: v = add a1 a2, c = high 1 (add (zext 1 a1) (zext 1 a2))}
                                 {- Algebra:
                                 {ul {- Unsigned: c × 2{^size a1} + v = a1 + a2}
                                     {- Signed: d × 2{^size a1} + v = a1 + a2 for some fresh d}}}}
   - [Iadc (v, a1, a2, y)]: Assign [v] the sum of [a1], [a2], and [y].
                            {ul {- Type: [v], [a1], and [a2] have the same type. [y] is a bit.}
                                {- QF_BV: v = add (add a1 a2) (zext (size a1 - 1) y)}
                                {- Algebra: v = a1 + a2 + y with soundness conditions:
                                {ul {- Unsigned: ~ uaddo a2 (uext (size a1 - 1) y), ~ uaddo a1 (add a2 (uext (size a1 - 1) y))}
                                    {- Signed: ~ saddo a2 (uext (size a1 - 1) y), ~ uaddo a1 (add a2 (uext (size a1 - 1) y))}}}}
   - [Iadcs (c, v, a1, a2, y)]: Assign [v] the sum of [a1], [a2], and [y], and set the carry flag [c].
                                {ul {- Type: [v], [a1], and [a2] have the same type. [c] and [y] are bits.}
                                    {- QF_BV: v = add (add a1 a2) (zext (size a1 - 1) y), c = high 1 (add (add (zext 1 a1) (zext 1 a2)) (zext (size a1) y))}
                                    {- Algebra:
                                    {ul {- Unsigned: c × 2{^size a1} + v = a1 + a2 + y}
                                        {- Signed: d × 2{^size a1} + v = a1 + a2 + y for some fresh d}}}}
   - [Isub (v, a1, a2)]: Assign [v] the subtraction of [a2] from [a1].
                         {ul {- Type: [v], [a1], and [a2] have the same type.}
                             {- QF_BV: v = sub a1 a2}
                             {- Algebra: v = a1 - a2 with soundness conditions:
                             {ul {- Unsigned: ~ usubo a1 a2}
                                 {- Signed: ~ ssubo a1 a2}}}}
   - [Isubc (c, v, a1, a2)]: Assign [v] the subtraction of [a2] from [a1] and set the carry flag [c].
                             {ul {- Type: [v], [a1], and [a2] have the same type. [c] is a bit.}
                                 {- QF_BV: v = add (add a1 (not a2) 1), c = high 1 (add (add (zext 1 a1) (zext 1 (not a2))) 1)}
                                 {- Algebra:
                                 {ul {- Unsigned: (c - 1) × 2{^size a1} + v = a1 - a2}
                                     {- Signed: v = a1 - a2 with soundness condition: ~ ssubo a1 a2}}}}
   - [Isubb (b, v, a1, a2)]: Assign [v] the subtraction of [a2] from [a1] and set the borrow flag [c].
                             {ul {- Type: [v], [a1], and [a2] have the same type. [b] is a bit.}
                                 {- QF_BV: v = sub a1 a2, c = high 1 (sub (zext 1 a1) (zext 1 a2))}
                                 {- Algebra:
                                 {ul {- Unsigned: -b × 2{^size a1} + v = a1 - a2}
                                     {- Signed: v = a1 - a2 with soundness condition: ~ ssubo a1 a2}}}}
   - [Isbc (v, a1, a2, y)]: Assign [v] the subtraction of [a2] and [y] from [a1].
                            {ul {- Type: [v], [a1], and [a2] have the same type. [y] is a bit.}
                                {- QF_BV: v = add (add a1 (not a2)) (zext (size a1 - 1) y)}
                                {- Algebra: v = a1 - a2 - (1 - y) with soundness conditions:
                                {ul {- Unsigned: ~ uaddo a2 (sub 1 (zext (size a1 - 1) y)), ~ usubo a1 (add a2 (sub 1 (zext (size a1 - 1) y)))}
                                    {- Signed:  ~ saddo a2 (sub 1 (zext (size a1 - 1) y)), ~ ssubo a1 (add a2 (sub 1 (zext (size a1 - 1) y)))}}}}
   - [Isbcs (c, v, a1, a2, y)]: Assign [v] the subtraction of [a2] and [y] from [a1], and set the carry flag [c].
                                {ul {- Type: [v], [a1], and [a2] have the same type. [c] and [y] are bits.}
                                    {- QF_BV: v = add (add a1 (not a2) (zext (size a1 - 1) y)), c = high 1 (add (add (zext 1 a1) (zext 1 (not a2)) (zext (size a1) y)))}
                                    {- Algebra:
                                    {ul {- Unsigned: (c - 1) × 2{^size a1} + v = a1 - a2 - (1 - y)}
                                        {- Signed: v = a1 - a2 - (1 - y) with soundness conditions:
                                        {ul {- ~ saddo a2 (sub 1 (zext (size a1 - 1) y))}
                                            {- ~ ssubo a1 (add a2 (sub 1 (zext (size a1 - 1) y)))}}}}}}
   - [Isbb (v, a1, a2, y)]: Assign [v] the subtraction of [a2] and [y] from [a1].
                            {ul {- Type: [v], [a1], and [a2] have the same type. [y] is a bit.}
                                {- QF_BV: v = sub a1 (add a2 (zext (size a1 - 1) y))}
                                {- Algebra: v = a1 - a2 - y with soundness conditions:
                                {ul {- Unsigned: ~ uaddo a2 (zext (size a1 - 1) y), ~ usubo a1 (add a2 (zext (size a1 - 1) y))}
                                    {- Signed:  ~ saddo a2 (zext (size a1 - 1) y), ~ ssubo a1 (add a2 (zext (size a1 - 1) y))}}}}
   - [Isbbs (b, v, a1, a2, y)]: Assign [v] the subtraction of [a2] and [y] from [a1], and set the borrow flag [b].
                                {ul {- Type: [v], [a1], and [a2] have the same type. [b] and [y] are bits.}
                                    {- QF_BV: v = sub a1 (add a2 (zext (size a1 - 1) y)), c = high 1 (sub (zext 1 a1) (add (zext 1 a2) (zext (size a1) y)))}
                                    {- Algebra:
                                    {ul {- Unsigned: -b × 2{^size a1} + v = a1 - a2 - y}
                                        {- Signed: v = a1 - a2 - y with soundness conditions:
                                        {ul {- ~ saddo a2 (zext (size a1 - 1) y)}
                                            {- ~ ssubo a1 (add a2 (zext (size a1 - 1) y))}}}}}}
   - [Imul (v, a1, a2)]: Assign [v] the half multiplication of [a1] and [a2].
                         {ul {- Type: [v], [a1], and [a2] have the same type.}
                             {- QF_BV: v = mul a1 a2}
                             {- Algebra: v = a1 × a2 with soundness conditions:
                             {ul {- Unsigned: ~ umulo a1 a2}
                                 {- Signed: ~ smulo a1 a2}}}}
   - [Imuls (c, v, a1, a2)]: Assign [v] the half multiplication of [a1] and [a2] and set the carry flag.
                             {ul {- Type: [v], [a1], and [a2] have the same type.}
                                 {- QF_BV:
                                 {ul {- Unsigned: v = mul a1 a2, c = ite (high (size a1) (mul (uext (size a1) a1) (uext (size a1) a2)) = 0) 0 1}
                                     {- Signed: v = mul a1 a2, c = ite (sext (size a1) (low (size a1) m) = m) 0 1, where m = mul (sext (size a1) a1) (sext (size a1) a2)}}}
                                 {- Algebra: d × 2{^size a1} + v = a1 * a2}}
   - [Imull (vh, vl, a1, a2)]: Store the full multiplication of [a1] and [a2] in [vh] (high) and [vl] (low).
                               {ul {- Type: [vh], [a1], and [a2] have the same type. [vl] is unsigned. [vh] and [vl] have the same size.}
                                   {- QF_BV:
                                   {ul {- Unsigned: vh = high (size a1) m, vl = low (size a1) m, where m = mul (zext (size a1) a1) (zext (size a1) a2)}
                                       {- Signed: vh = high (size a1) m, vl = low (size a1) m, where m = mul (sext (size a1) a1) (sext (size a1) a2)}}}
                                   {- Algebra: vh × 2{^size a1} + vl = a1 * a2}}
   - [Imulj (v, a1, a2)]: Store the full multiplication of [a1] and [a2] in [v]. [Imulj (v, a1, a2)] is equivalent to [Imull (vh, vl, a1, a2); Ijoin (v, vh, vl)].
                          {ul {- Type: [a1] and [a2] have the same type. [v] and [a1] have the same sign. Size of [v] is the sum of the size of [a1] and the size of [a2].}
                              {- QF_BV:
                              {ul {- Unsigned: v = mul (zext (size a1) a1) (zext (size a1) a2)}
                                  {- Signed: v = mul (sext (size a1) a1) (sext (size a1) a2)}}}
                              {- Algebra: v = a1 × a2}}
   - [Isplit (vh, vl, a, n)]: Split [a] at position [n], store the high bits (extended according to the type of [a]) in [vh], and store the (zero-extended) low bits in [vl].
                              {ul {- Type: [vh] and [a] have the same type. [vl] is unsigned. [vl] and [vh] have the same size.}
                                  {- QF_BV:
                                  {ul {- Unsigned: vh = zext n (high (size a - n) a), vl = zext (size a - n) (low n a)}
                                      {- Signed: vh = sext n (high (size a - n) a), vl = zext (size a - n) (low n a)}}}
                                  {- Algebra: vh × 2{^n} + vl = a}}
   - [Ispl (vh, vl, a, n)]: Split [a] at position [n], store the high bits in [vh], and store the low bits in [vl].
                            {ul {- Type: [vh] and [a] have the same sign. [vl] is unsigned. [vh] and [vl] are of sizes (size - n) and n respectively.}
                                {- QF_BV: vh = high (size a - n) a, vl = low n a}
                                {- Algebra: vh × 2{^n} + vl = a}}
   - [Iand (v, a1, a2)]: Assign [v] the bit-wise AND of [a1] and [a2].
                         {ul {- Type: [v], [a1], and [a2] can be any type.}
                             {- QF_BV: v = and a1 a2}
                             {- Algebra: True}}
   - [Ior (v, a1, a2)]: Assign [v] the bit-wise OR of [a1] and [a2].
                        {ul {- Type: [v], [a1], and [a2] can be any type.}
                            {- QF_BV: v = or a1 a2}
                            {- Algebra: True}}
   - [Ixor (v, a1, a2)]: Assign [v] the bit-wise XOR of [a1] and [a2].
                         {ul {- Type: [v], [a1], and [a2] can be any type.}
                             {- QF_BV: v = xor a1 a2}
                             {- Algebra: True}}
   - [Icast (o, v, a)]: Cast [a] to the type of [v] and store the casted value in [v]. [o] is the lost information.
                        {ul {- Type: [v] and [a] can be any type.}
                            {- QF_BV:
                            {ul {- Type of [v] is [Tuint wv] or [Tsint wv], and type of [a] is [Tuint wa]:
                                {ul {- wv = wa: v = a}
                                    {- wv < wa: v = low wv a}
                                    {- wv > wa: v = zext (wv - wa) a}}}
                                {- Type of [v] is [Tuint wv] or [Tsint wv], and type of [a] is [Tsint wa]:
                                {ul {- wv = wa: v = a}
                                    {- wv < wa: v = low wv a}
                                    {- wv > wa: v = sext (wv - wa) a}}}}}
                            {- Algebra:
                            {ul {- Type of [v] is [Tuint wv], and type of [a] is [Tuint wa]:
                                {ul {- wv ≥ wa: v = a}
                                    {- wv < wa: d × 2{^wv} + v = a for some fresh d}}}
                                {- Type of [v] is [Tuint wv], and type of [a] is [Tsint wa]:
                                {ul {- wv ≥ wa: v = d × 2{^wv} + a for some fresh d}
                                    {- wv < wa: d × 2{^wv} + v = a for some fresh d}}}
                                {- Type of [v] is [Tsint wv], and type of [a] is [Tuint wa]:
                                {ul {- wv > wa: v = a}
                                    {- wv ≤ wa: d × 2{^wv} + v = a for some fresh d}}}
                                {- Type of [v] is [Tsint wv], and type of [a] is [Tsint wa]:
                                {ul {- wv ≥ wa: v = a}
                                    {- wv < wa: d × 2{^wv} + v = a for some fresh d}}}}}}
   - [Ivpc (v, a)]: Cast [a] to the type of [v] without changing the value.
                    {ul {- Type: [v] and [a] can be any type.}
                        {- QF_BV: See Icast.}
                        {- Algebra: v = a with soundness conditions:
                        {ul {- Type of [v] is [Tuint wv] and type of [a] is [Tuint wa]:
                            {ul {- wv ≥ wa: True}
                                {- wv < wa: high (wa - wv) a = 0}}}
                            {- Type of [v] is [Tuint wv] and type of [a] is [Tsint wa]:
                            {ul {- wv ≥ wa - 1: high 1 a = 0}
                                {- wv < wa - 1: high (wa - wv) a = 0}}}
                            {- Type of [v] is [Tsint wv] and type of [a] is [Tuint wa]:
                            {ul {- wv > wa: True}
                                {- wv ≤ wa: high (wa - wv + 1) a = 0}}}
                            {- Type of [v] is [Tsint wv] and type of [a] is [Tsint wa]:
                            {ul {- wv ≥ wa: True}
                                {- wv < wa: sext (wa - wv) (low wv a) = a}}}}}}
   - [Ijoin (v, a1, a2)]: Store the concatenation of [a1] (high) and [a2] (low) in [v].
                          {ul {- Type: [v] and [a1] have the same sign. [a2] is unsigned. Size of [v] is the sum of the size of [a1] and the size of [a2].}
                              {- QF_BV: v = concat a1 a2}
                              {- Algebra: v = a1 × 2{^size a2} + a2}}
   - [Iassert e]: Verify an assertion.
   - [Iassume e]: Assume a condition.
   - [Icut (es, rs)]: Verify a condition. Discard everything before this cut and make the condition the precondition when
                      verifying the following program. [Icut ([], rs)] is a cut only on the range specification.
                      [Icut (es, [])] is a cut only on the algebraic specification.
   - [Ighost (gvs, e)]: Introduce ghost variables and assume a condition.
*)

type program = instr list
(** A program is a list of instructions. *)

type lined_program = (int * instr) list
(** A program with instructions annotated with line numbers. *)

val mkatom_var : var -> atom
(** Creates an atom from a variable. *)

val mkatom_const : typ -> Z.t -> atom
(** Creates an atom from a constant. *)

val size_of_atom : atom -> size
(** [size_of_atom a] is the bit-width of the atom [a]. *)

val typ_of_atom : atom -> typ
(** [typ_of_atom a] is the type of the atom [a]. *)

val var_of_atom : atom -> var
(** [var_of_atom (Avar v)] is the [v]. The input must be an atom formed by a variable. *)

val const_of_atom : atom -> Z.t
(** [var_of_atom (Aconst (t, n))] is the [n]. The input must be an atom formed by a constant. *)

val atom_is_var : atom -> bool
(** [atom_is_var a] is [true] if [a] is formed by a variable. *)

val atom_is_const : atom -> bool
(** [atom_is_const a] is [true] if [a] is formed by a constant. *)

val atom_is_signed : atom -> bool
(** [atom_is_signed a] is [true] if the type of [a] is signed. *)

val eq_atom : atom -> atom -> bool
(** [eq_atom a1 a2] is [true] if [a1] and [a2] are equal. *)

val cmp_atom : atom -> atom -> int
(** [cmp_atom a1 a2] compares two atoms. *)

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

val algebra_solver_of_prove_with : prove_with_spec list -> Options.Std.algebra_solver
(** [algebra_solver_of_prove_with pwss] returns the first algebra solver
    specified in the prove-with clauses [pwss]. If no algebra solver is
    specified, [!Options.Std.algebra_solver] is returned. *)

val range_solver_of_prove_with : prove_with_spec list -> string
(** [range_solver_of_prove_with pwss] returns the first range solver specified
    in the prove-with clauses [pwss]. If no range solver is specified,
    [!Options.Std.range_solver] is returned. *)

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
    spost : bexp_prove_with            (** postcondition associated with prove-with clauses *) (* *)
  }
(** specification *)

type espec =
  {
    espre : ebexp;                     (** precondition *)
    esprog : program;                  (** program *)
    espost : ebexp_prove_with          (** postcondition associated with prove-with clauses *) (* *)
  }
(** algebraic specification *)

type rspec =
  {
    rspre : rbexp;                     (** precondition *)
    rsprog : program;                  (** program *)
    rspost : rbexp_prove_with          (** postcondition associated with prove-with clauses *) (* *)
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

val string_of_ebexp_prove_with : ?typ:bool -> ebexp_prove_with -> string
(** [string_of_ebexp_prove_with ~typ:b e] is the string representation of an
    algebraic predicate [e] associated with prove-with clauses. If [b] is true,
    types will also be outputted. *)

val string_of_rbexp_prove_with : ?typ:bool -> rbexp_prove_with -> string
(** [string_of_rbexp_prove_with ~typ:b e] is the string representation of a
    range predicate [e] associated with prove-with clauses. If [b] is true,
    types will also be outputted. *)

val string_of_bexp_prove_with : ?typ:bool -> bexp_prove_with -> string
(** [string_of_bexp_prove_with ~typ:b e] is the string representation of a
    predicate [e] associated with prove-with clauses. If [b] is true, types
    will also be outputted. *)

val string_of_atom : ?typ:bool -> atom -> string
(** [string_of_atom ~typ:b a] is the string representation of an atom [a]. If [b] is true, types will also be outputted. *)

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

val vars_ebexp_prove_with : ebexp_prove_with -> VS.t
(** [vars_ebexp_prove_with e] is the set of variables in the algebraic predicate [e] associated with prove-with clauses. *)

val vars_rbexp_prove_with : rbexp_prove_with -> VS.t
(** [vars_rbexp_prove_with e] is the set of variables in the range predicate [e] associated with prove-with clauses. *)

val vars_bexp_prove_with : bexp_prove_with -> VS.t
(** [vars_bexp_prove_with e] is the set of variables in the predicate [e] associated with prove-with clauses. *)

val vars_atom : atom -> VS.t
(** [vars_atom a] is the set of variables in the atom [a]. *)

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

val vids_rexp : rexp -> IS.t
(** [vids_rexp e] is the set of IDs of variables in the range expression [e]. *)

val vids_ebexp : ebexp -> IS.t
(** [vids_ebexp e] is the set of IDs of variables in the algebraic predicate [e]. *)

val vids_rbexp : rbexp -> IS.t
(** [vids_rbexp e] is the set of IDs of variables in the range predicate [e]. *)

val vids_bexp : bexp -> IS.t
(** [vids_bexp e] is the set of IDs of variables in the predicate [e]. *)

val vids_ebexp_prove_with : ebexp_prove_with -> IS.t
(** [vids_ebexp_prove_with e] is the set of IDs of variables in the algebraic predicate [e] associated with prove-with clauses. *)

val vids_rbexp_prove_with : rbexp_prove_with -> IS.t
(** [vids_rbexp_prove_with e] is the set of IDs of variables in the range predicate [e] associated with prove-with clauses. *)

val vids_bexp_prove_with : bexp_prove_with -> IS.t
(** [vids_bexp_prove_with e] is the set of IDs of variables in the predicate [e] associated with prove-with clauses. *)

val vids_atom : atom -> IS.t
(** [vids_atom a] is the set of IDs of variables in the atom [a]. *)

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

val amap_trans : atom VM.t -> atom VM.t
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

val emap_of_amap : atom VM.t -> eexp VM.t
(** [emap_of_amap am] convert all atoms in [am] to eexp. *)

val rmap_of_amap : atom VM.t -> rexp VM.t
(** [rmap_of_amap am] convert all atoms in [am] to rexp. *)

val eexp_of_atom : atom -> eexp
(** Convert an atom to an eexp. *)

val rexp_of_atom : atom -> rexp
(** Convert an atom to a rexp. *)

val get_subst_maps : program -> atom VM.t * eexp VM.t * rexp VM.t * program
(** Return substitution maps from assignments in a program. *)

val get_subst_maps_vpc : program -> atom VM.t * eexp VM.t * rexp VM.t * program
(** Return substitution maps from value-preserved casting in a program. *)

val subst_maps_of_list : (var * atom) list -> atom VM.t * eexp VM.t * rexp VM.t
(** Convert a list of (v, a) pairs to substitution maps where v is a variable to be replaced by the atom a. *)

val subst_eexp : eexp VM.t -> eexp -> eexp
(** [subst_eexp em e] replaces variables in [e] by the corresponding algebraic expressions in [em]. *)

val subst_rexp : rexp VM.t -> rexp -> rexp
(** [subst_rexp rm e] replaces variables in [e] by the corresponding range expressions in [rm]. *)

val subst_ebexp : eexp VM.t -> ebexp -> ebexp
(** [subst_ebexp em e] replaces variables in [e] by the corresponding algebraic expressions in [em]. *)

val subst_rbexp : rexp VM.t -> rbexp -> rbexp
(** [subst_rbexp em e] replaces variables in [e] by the corresponding range expressions in [rm]. *)

val subst_bexp : eexp VM.t -> rexp VM.t -> bexp -> bexp
(** [subst_bexp em rm e] replaces variables in [e] based on substitutions of
    algebraic expressions in [em] and substitutions of range expressions in
    [rm]. *)

val subst_ebexp_prove_with : eexp VM.t -> ebexp_prove_with -> ebexp_prove_with
(** [subst_ebexp_prove_with em e] replaces variables in [e] by the corresponding algebraic expressions in [em]. *)

val subst_rbexp_prove_with : rexp VM.t -> rbexp_prove_with -> rbexp_prove_with
(** [subst_rbexp_prove_with em e] replaces variables in [e] by the corresponding range expressions in [rm]. *)

val subst_bexp_prove_with : eexp VM.t -> rexp VM.t -> bexp_prove_with -> bexp_prove_with
(** [subst_bexp_prove_with em rm e] replaces variables in [e] based on
    substitutions of algebraic expressions in [em] and substitutions of range
    expressions in [rm]. *)

val subst_lval : atom VM.t -> var -> var
(** [subst_lval am v] replaces the lval [v] by the variable in the corresponding
    atom in [am] if the corresponding atom is a variable, and does nothing
    otherwise. *)

val subst_atom : atom VM.t -> atom -> atom
(** [subst_atom am a] replaces variables in [a] by the corresponding atoms in am. *)

val subst_instr : atom VM.t -> eexp VM.t -> rexp VM.t -> instr -> instr
(** [subst_instr am em rm i] replaces variables in [i] based on [am], [em], and
    [rm]. It is not necessary that a variable is mapped to the same variable or
    constant in [am], [em], and [rm]. *)

val subst_program : atom VM.t -> eexp VM.t -> rexp VM.t -> program -> program
(** [subst_program am em rm p] replaces variables in [p] based on [am], [em],
    and [rm]. *)

val subst_lined_program : atom VM.t -> eexp VM.t -> rexp VM.t -> lined_program -> lined_program
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

val ssa_atom : int VM.t -> atom -> atom
(** [ssa_atom m a] updates the SSA indices of variables in [a] according to [m]. *)

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

val ssa_ebexp_prove_with : int VM.t -> ebexp_prove_with -> ebexp_prove_with
(** [ssa_ebexp_prove_with m e] updates the SSA indices of variables in [e] according to [m]. *)

val ssa_rbexp_prove_with : int VM.t -> rbexp_prove_with -> rbexp_prove_with
(** [ssa_rbexp_prove_with m e] updates the SSA indices of variables in [e] according to [m]. *)

val ssa_bexp_prove_with : int VM.t -> bexp_prove_with -> bexp_prove_with
(** [ssa_bexp_prove_with m e] updates the SSA indices of variables in [e] according to [m]. *)

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

val cut_espec : espec -> ((int * espec) list) list
(**
   [cut_espec s] cuts the specification [s] in SSA form into
   [[ss1; ss2; ...; ssN]] where [ssK] is a list of specifications of which the
   postconditions are the algebraic predicates in the [K]-th range cut.
   Different algebraic specifications in [ssK] correspond to algebraic
   predicates with different prove-with clauses in the [K]-th algebraic cut.
   The integer associated to a returned specification is its ID.
 *)

val cut_rspec : rspec -> ((int * rspec) list) list
(**
   [cut_rspec s] cuts the specification [s] in SSA form into
   [[ss1; ss2; ...; ssN]] where [ssK] is a list of specifications of which the
   postconditions are the range predicates in the [K]-th range cut.
   Different range specifications in [ssK] correspond to range predicates with
   different prove-with clauses in the [K]-th range cut. The integer associated
   to a returned specification is its ID.
 *)

val cut_eassert : espec -> ((int * espec) list) list
(**
   [cut_eassert s] cuts the specification [s] in SSA form into
   [[ss1; ss2; ...; ssN]] where [ssK] is a list of specifications of which the
   postconditions are the algebraic assertions in the [K]-th algebraic cut.
   The integer associated to a returned specification is its ID.
 *)

val cut_rassert : rspec -> ((int * rspec) list) list
(**
   [cut_rassert s] cuts the specification [s] in SSA form into
   [[ss1; ss2; ...; ssN]] where [ssK] is a list of specifications of which the
   postconditions are the range assertions in the [K]-th range cut.
   The integer associated to a returned specification is its ID.
 *)

val cut_safety : rspec -> ((int * rspec) list) list
(**
   [cut_safety s] cuts the specification [s] in SSA form into
   [[[s1]; [s2]; ...; [sN]]] where [sK] is the K-th range cut.
   The integer associated to a returned specification is its ID.
   All prove-with clauses in one cut are merged and taken into
   consideration when cutting the specification.
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

type 'a atomhash_t
val find_dep_vars : VS.t atomhash_t -> var -> VS.t
val mk_var_dep_hash : program -> VS.t atomhash_t

val slice_spec_ssa : spec -> VS.t atomhash_t option -> spec
(** [slice_spec_ssa s o] slices a specification in SSA. *)

val slice_espec_ssa : espec -> VS.t atomhash_t option -> espec
(** [slice_espec_ssa s o] slices an algebraic specification in SSA. *)

val slice_rspec_ssa : rspec -> VS.t atomhash_t option -> rspec
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

  method vatom : atom -> atom vaction
  (** visit an atom *)

  method vaconst : (typ * Z.t) -> (typ * Z.t) vaction
  (** visit a constant in an atom *)

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
(** Visit a constant in an atom by a visitor. *)

val visit_econst : visitor -> Z.t -> Z.t
(** Visit a constant in an algebraic expression by a visitor. *)

val visit_rconst : visitor -> (size * Z.t) -> (size * Z.t)
(** Visit a constant in a range expression by a visitor. *)

val visit_atom : visitor -> atom -> atom
(** Visit an atom by a visitor. *)

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

val visit_ebexp_prove_with : visitor -> ebexp_prove_with -> ebexp_prove_with
(** Visit an algebraic predicate associated with prove-with clauses by a visitor. *)

val visit_rbexp_prove_with : visitor -> rbexp_prove_with -> rbexp_prove_with
(** Visit a range predicate associated with prove-with clauses by a visitor. *)

val visit_bexp_prove_with : visitor -> bexp_prove_with -> bexp_prove_with
(** Visit a predicate associated with prove-with clauses by a visitor. *)

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
(** [espre_implies_espost pre post] is [true] if every atomic predicate of
    [post] appears in [pre]. *)

val rspre_implies_rspost : rbexp -> rbexp -> bool
(** [rspre_implies_rspost pre post] is [true] if every largest predicate in
    [post] containing no conjunction appears in [pre] but not in any
    [Ror]-predicate. *)

val espost_in_assumes : program -> ebexp -> bool
(** [espost_in_assumes p post] is [true] if every atomic predicate of [post]
    appears in some assume instruction in [p]. *)

val rspost_in_assumes : program -> rbexp -> bool
(** [espost_in_assumes p post] is [true] if every largest predicate in [post]
    containing no conjunction appears in some assume instruction in [p] but
    not in any [Ror]-predicate. *)

val is_espec_trivial : espec -> bool
(** [is_espec_trivial s] is [true] if the algebraic specification [s] is trivially valid. *)

val is_rspec_trivial : rspec -> bool
(** [is_rspec_trivial s] is [true] if the range specification [s] is trivially valid. *)

val remove_trivial_epost : espec -> espec
(** [remove_trivial_epost s] removes trivally-valid atomic predicates in the
    postcondition of the algebraic specification [s]. *)

val remove_trivial_rpost : rspec -> rspec
(** [remove_trivial_rpost s] removes trivally-valid atomic predicates in the
    postcondition of the range specification [s]. *)


(** {1 Others} *)

val auto_cast_program : ?preserve:bool -> program -> program
(**
   [auto_cast_program ~preserve:b p] automatically casts variables in the
   program [p]. If [b] is [true], [Ivpc] is used for casting.
*)

val split_espec_post : espec -> espec list
(** [split_espec_post s] splits the postcondition of [s] into atomic predicates
    and makes an atomic predicate an [espec]. *)

val split_rspec_post : rspec -> rspec list
(** [split_rspec_post s] splits the top level conjunctions in the postcondition
    of [s] and makes a largest predicate containing no conjunction an [rspec]. *)

val separate_eassertions : espec -> espec list
(**
   Make an algebraic assertion a single specification and remove assertions. The input
   specification must be in SSA. Note that this function considers neither cut
   instructions nor prove-with clauses.
 *)

val separate_rassertions : rspec -> rspec list
(**
   Make a range assertion a single specification and remove assertions. The input
   specification must be in SSA. Note that this function considers neither cut
   instructions nor prove-with clauses.
 *)

val separate_assertions : spec -> spec list
(**
   Make an assertion a single specification and remove assertions. The input
   specification must be in SSA. Note that this function considers neither cut
   instructions nor prove-with clauses.
 *)

val move_easserts : espec -> espec
(**
   Move algebraic assertions in a specification to its postcondition.
   The input specification must be in SSA. If the specification
   contains assume instructions, the move of assertions may be unsound.
 *)

val move_rasserts : rspec -> rspec
(**
   Move range assertions in a specification to its postcondition.
   The input specification must be in SSA. If the specification
   contains assume instructions, the move of assertions may be unsound.
 *)

val move_asserts : spec -> spec
(**
   Move assertions in a specification to its postcondition. The input
   specification must be in SSA. If the specification contains assume
   instructions, the move of assertions may be unsound.
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

val remove_assert_spec : spec -> spec
(** Remove all assertions in a specification. *)


(** Profiling *)

type profile =
  { program_typs_exclude_carries : typ list;
    typs_exclude_carries : typ list;
    num_program_vars : int;
    num_vars : int;
    num_program_ssa_vars : int;
    num_ssa_vars : int;
    num_program_instrs : int;
    num_instrs : int;
    has_carries : bool;
    has_assumes : bool;
    has_signed : bool;
    has_algebraic_precondition : bool;
    has_range_precondition : bool;
    has_algebraic_postcondition: bool;
    has_range_postcondition : bool }
(** a profile *)

val profile_program : program -> profile
(** Return the profile of a program. *)

val profile_spec : spec -> profile
(** Return the profile of a specification. *)
