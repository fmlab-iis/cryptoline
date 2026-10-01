
open Qfbv.Common
open Ast.Cryptoline

val btor_program :
  ?rename:bool -> ?pre:(rbexp option) -> btor_manager ->
  program -> var list -> var list -> string
(** [btor_program ~rename:b ~pre:fopt m p ins outs] is a bit-vector program
    in BTOR format with input variables [ins] and output variables [outs] as
    the roots. The output variables [outs] are sliced into bits in order
    (from LSB to MSB). Specification-related instructions such as [Iassert]
    are ignored. Input variables are renamed in the output BTOR if [b] is
    [true]. If [fopt] is [Some f], then [f], the precondition, is taken into
    consideration. The input program is expected in SSA. *)

val btor_miter :
  ?rename:bool -> ?pre:(rbexp option) -> btor_manager ->
  (program * var list * var list) -> (program * var list * var list) ->
  string
(** [btor_miter ~rename:b ~pre:fopt m (p1, ins1, outs1) (p2, ins2, outs2)]
    converts two programs to a miter in BTOR format. The inputs at the same
    position are considered the same input. The two programs are expected
    in SSA. *)
