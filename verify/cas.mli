
(* Variable Generator *)

type 'a gen
type var_gen

(** generator of variable names *)

val make_vgen : string -> int -> var_gen
(** [make_vgen s i] returns a variable name generator which generates names in the form [s_i] and increases [i] in the next generator *)

val vgen_of_spec : Ast.Cryptoline.spec -> var_gen
(** [vgen_of_spec s] is a variable name generator that generates variable names not in [s]. *)

val vgen_of_espec : Ast.Cryptoline.espec -> var_gen
(** [vgen_of_sspec s] is a variable name generator that generates variable names not in [s]. *)

val vgen_of_rspec : Ast.Cryptoline.rspec -> var_gen
(** [vgen_of_rspec s] is a variable name generator that generates variable names not in [s]. *)

val gen_var : var_gen -> string * var_gen

val mk_newvar : var_gen -> Ast.Cryptoline.typ ->
                var_gen * Ast.Cryptoline.var

(* Root entailment problems *)

type poly_spec =
  {
    ppre : Ast.Cryptoline.ebexp;             (** precondition *)
    pprog : Ast.Cryptoline.ebexp list;       (** program *)
    ppost : Ast.Cryptoline.ebexp;            (** postcondition *)
    pextra : Ast.Cryptoline.eexp list        (** extra polynomials to be multiplied to each atomic postcondition *)
  }

val vars_poly_spec : poly_spec -> Ast.Cryptoline.VS.t
(** Return the variables in an root entailment problem *)

val bv2z_atom : Ast.Cryptoline.atom -> Ast.Cryptoline.eexp

val bv2z_espec : var_gen -> Ast.Cryptoline.espec ->
                 var_gen * poly_spec
(**
 * A specification composed of polynomial equations.
 * Note that some program variables may not appear in the equations and some
 * new auxiliary variables may appear in the equations.
 *)

val polys_of_ebexp : var_gen -> Ast.Cryptoline.ebexp ->
                     var_gen * Ast.Cryptoline.var list * Ast.Cryptoline.eexp list
(**
   Convert an algebraic predicate to polynomials.
   @return [(g, vs, es)] where [g] is the updated variable name generator, [vs]
           is the set of temporary variables created in this function, and the
           input predicate is true if for all [e] in [es], [e = 0] is true
 *)

val polys_of_espec : var_gen -> Ast.Cryptoline.espec ->
                     var_gen * (Ast.Cryptoline.ebexp * Ast.Cryptoline.var list *
                                Ast.Cryptoline.eexp list * Ast.Cryptoline.eexp) list
(**
   Convert an algebraic specification to polynomials for ideal membership query.
   All prove-with clauses are ignored.
   @return a list [(g1, (p1, vs1, es1, e1)), ..., (gn, (pn, vsn, esn, en))]
           where [gi] is the updated variable name generator, [pi] is an atomic
           predicate in the postcondition of the input specification, [vsi] is
           the list of ordered variables in [esi] and [ei], and [pi] is valid if
           [ei] is in the ideal of [esi]
 *)

(**
   Convert an algebraic specification to polynomials for ideal membership query.
   All prove-with clauses are ignored.
   @return a list [(g1, (p1, vs1, es1, e1)), ..., (gn, (pn, vsn, esn, en))]
           where [gi] is the updated variable name generator, [pi] is an atomic
           predicate in the postcondition of the input specification, [vsi] is
           the list of ordered variables in [esi] and [ei], and [pi] is valid if
           [ei] is in the ideal of [esi]
 *)

val polys_of_espec_two_phase :
  ?sliced:bool ->
  var_gen -> Ast.Cryptoline.espec ->
  var_gen *
    (Ast.Cryptoline.ebexp * Ast.Cryptoline.VS.elt list * Ast.Cryptoline.eexp list *
       Ast.Cryptoline.eexp) list
(**
   Convert an algebraic specification to polynomials for ideal membership query
   and uses two-phase rewriting in the conversion.
   @return a list [(g1, (p1, vs1, es1, e1)), ..., (gn, (pn, vsn, esn, en))]
           where [gi] is the updated variable name generator, [pi] is an atomic
           predicate in the postcondition of the input specification, [vsi] is
           the list of ordered variables in [esi] and [ei], and [pi] is valid if
           [ei] is in the ideal of [esi]
 *)
