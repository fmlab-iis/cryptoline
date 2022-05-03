
open Arg
open Options.Std
open Ast.Cryptoline
open Typecheck.Std
open Verify.Std
open Parsers.Std

let args = [
    ("-no_carry_constraint", Clear carry_constraint, "\t Do not add carry constraints")
  ]

let usage = "usage: output_redlog FILE"

let parse_spec file =
  try
    let spec = spec_from_file file in
    spec
  with ex ->
    raise ex

let anon file =
  let _ = Random.self_init() in
  let (_vs, spec) = parse_spec file in
  let spec_ssa = ssa_spec (from_typecheck_spec spec) in
  let res = redlog_of_espec (espec_of_spec spec_ssa) in
  print_endline res
(*
let _ =
  parse args anon usage
*)
