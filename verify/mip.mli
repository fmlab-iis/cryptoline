
type mip_var

val is_ivar : mip_var -> bool
val is_cvar : mip_var -> bool
val var_of_mip : mip_var -> Ast.Cryptoline.var

val of_espec : Cas.var_gen -> Ast.Cryptoline.espec ->
               Cas.var_gen * (mip_var list * Ast.Cryptoline.ebexp list) list


(** MIP for Safety Conditions *)

type mip_safety_condition_info =
  {
    mip_sndcond_instr : Ast.Cryptoline.instr;                       (** an instruction *)
    mip_sndcond_cond : Ast.Cryptoline.ebexp;                        (** the safety condition of the instruction *)
    mip_sndcond_constrs : mip_var list * Ast.Cryptoline.ebexp list; (** one of the MIP constraints for the safety condition *)
    mip_sndcond_index : int;                                        (** the index of the MIP constraint for the safety condition *)
  }
(** information about safety conditions *)

val safety_conditions_of_instr :
  Cas.var_gen -> Ast.Cryptoline.instr ->
  Cas.var_gen * Ast.Cryptoline.ebexp list
(** Return the conditions for the input instruction to be safe.
    All the conditions must be satisfied. *)

val safety_conditions_of_program :
  Cas.var_gen -> Ast.Cryptoline.ebexp -> Ast.Cryptoline.program ->
  (Cas.var_gen * mip_safety_condition_info list)
