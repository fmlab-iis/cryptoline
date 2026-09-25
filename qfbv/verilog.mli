
open Ast.Cryptoline

val verilog_program :
  ?rename:bool ->
  ?pre:Common.bexp option ->
  ?top:string ->
  program ->
  var list ->
  var list ->
  string
(** [verilog_program ?rename ?pre ?top p ins outs] translates CryptoLine program [p]
    with input variables [ins] and output variables [outs] into a Verilog module.
    If [rename] is true (default: false), inputs are renamed to pi0, pi1, ...
    and outputs to po0, po1, ...
    If [pre] is specified, outputs are multiplexed with unconstrained dummy inputs
    when the precondition does not hold.
    [top] specifies the module name (default: "top"). *)

val verilog_to_aiger :
  ?yosys:string ->
  ?top:string ->
  ?ascii:bool ->
  string ->
  string
(** [verilog_to_aiger ?yosys ?top ?ascii verilog_src] uses Yosys to translate the circuit
    in Verilog format to AIGER format. If [ascii] is true, outputs ASCII AIGER (.aag);
    otherwise outputs standard binary AIGER (.aig) compatible with ABC. *)

val verilog_file_to_aiger_file :
  ?yosys:string ->
  ?top:string ->
  ?ascii:bool ->
  string ->
  string ->
  unit
(** [verilog_file_to_aiger_file ?yosys ?top ?ascii v_file aag_file] translates the Verilog
    circuit in [v_file] to the AIGER circuit in [aag_file] via Yosys. *)
