
open Arg
open Options.Std
open Ast.Cryptoline
open Verify.Std
open Parsers.Std

let args = [
    ("-no_carry_constraint", Clear carry_constraint, "\t Do not add carry constraints");
    ("-w", Int (fun i -> if i > 0 then wordsize := i else failwith "The specified wordsize should be positive."),
     "WORDSIZE\t\t Set the word size (default is " ^ string_of_int !wordsize ^ ")");
  ]

let usage = "usage: output_redlog FILE"

let parse_spec file =
  try
    let spec = spec_from_file ~legacy:!use_legacy_parser file in
    spec
  with ex ->
    raise ex

let anon file =
  let _ = Random.self_init() in
  let (_vs, spec) = parse_spec file in
  let spec_ssa = ssa_spec spec in
  let res = redlog_of_espec (espec_of_spec spec_ssa) in
  print_endline res
(*
let _ =
  parse args anon usage
*)
