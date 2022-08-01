
open Ast.Cryptoline

type spec =
  { spre : bexp;
    sprog : lined_program;
    spost : bexp_prove_with }

type espec =
  { espre : ebexp;
    esprog : lined_program;
    espost : ebexp_prove_with }

type rspec =
  { rspre : rbexp;
    rsprog : lined_program;
    rspost : rbexp_prove_with }

(** Well-formedness *)

type ill_formed = IllPrecondition of bexp
                | IllInstruction of instr
                | IllPostcondition of bexp_prove_with
val chain_reasons : (string option) list -> string option
val check_const_range : int -> typ -> Z.t -> string option
val check_unsigned_var : var -> string option
val check_signed_var : var -> string option
val check_bit_var : int -> var -> string option
val check_unsigned_atom : atom -> string option
val check_signed_atom : atom -> string option
val check_unsigned_atoms : atom list -> string option
val check_signed_atoms : atom list -> string option
val check_same_sign : atom list -> string option
val check_same_size : int -> atom list -> string option
val check_same_typ : int -> atom list -> string option
val check_unsigned_same_typ : int -> atom list -> string option
val check_signed_same_typ : int -> atom list -> string option
val check_diff_lvs : int -> var -> var -> string option
val check_mull_lvs : int -> var -> var -> string option
val check_split_lvs : int -> var -> var -> string option
val check_mulj_size : int -> var -> atom -> atom -> string option
val check_join_size : int -> var -> atom -> atom -> string option
val illformed_instr_reason : VS.t -> VS.t -> VS.t -> int -> instr -> string option
val illformed_program_reason : VS.t -> VS.t -> VS.t -> lined_program -> (instr * string) option
val illformed_eexp_reason : VS.t -> eexp -> string option
val illformed_ebexp_reason : VS.t -> ebexp -> string option
val illformed_rexp_reason : VS.t -> rexp -> string option
val illformed_rbexp_reason : VS.t -> rbexp -> string option
val illformed_bexp_reason : VS.t -> bexp -> string option
val illformed_spec_reason : VS.t -> spec -> (ill_formed * string) option
val well_formed_instr : VS.t -> VS.t -> VS.t -> int -> instr -> bool
val well_formed_program : VS.t -> VS.t -> VS.t -> lined_program -> bool
val well_formed_spec : VS.t -> spec -> bool

(** Conversion *)

val from_typecheck_spec : spec -> Ast.Cryptoline.spec
val from_typecheck_espec : espec -> Ast.Cryptoline.espec
val from_typecheck_rspec : rspec -> Ast.Cryptoline.rspec

