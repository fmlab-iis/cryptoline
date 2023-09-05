
(*
open Ast.Cryptoline
 *)
open Common

(*
let read_typing_file file =
  let vt = Hashtbl.create 100 in
  let ch = open_in file in
  let _ =
    try
      while true do
	    let line = input_line ch in
        let tokens = List.map String.trim (String.split_on_char '=' line) in
        (match tokens with
         | v::tystr::[] ->
            let ty =
              if Str.string_match (Str.regexp "^int\\([0-9]+\\)") tystr 0 then Ast.Cryptoline.int_t (int_of_string (Str.matched_group 1 tystr))
              else if Str.string_match (Str.regexp "^sint\\([0-9]+\\)") tystr 0 then Ast.Cryptoline.int_t (int_of_string (Str.matched_group 1 tystr))
              else if Str.string_match (Str.regexp "^uint\\([0-9]+\\)") tystr 0 then Ast.Cryptoline.uint_t (int_of_string (Str.matched_group 1 tystr))
              else if tystr = "bit" then Ast.Cryptoline.bit_t
              else failwith ("Unknown type in the typing file: " ^ tystr) in
            Hashtbl.add vt v ty
         | _ -> ())
      done
    with _ ->
      () in
  let _ = close_in ch in
  vt
 *)

(*

let read_typing () =
  match !Options.Std.typing_file with
  | None -> Hashtbl.create 100
  | Some file -> read_typing_file file

let apply_auto_cast_program p =
  if !Options.Std.auto_cast then auto_cast_program ~preserve:!Options.Std.auto_cast_preserve_value p
  else p

let apply_auto_cast_spec s =
  if !Options.Std.auto_cast then { spre = s.spre; sprog = apply_auto_cast_program s.sprog; spost = s.spost; sepwss = s.sepwss; srpwss = s.srpwss }
  else s

 *)

let specs_from_lexbuf lexbuf =
  try
    CryptolineParser.specs CryptolineLexer.token lexbuf
  with
  | Failure msg -> raise (Failure ("Error at line " ^ string_of_int !lnum ^ ". " ^ msg))
  | Parsing.Parse_error ->
    let l = !lnum in
    let c = !cnum in
    let msg = Printf.sprintf "Parser error at line %d char %d." l c in
    raise (Failure msg)

let specs_from_file file =
  specs_from_lexbuf (Lexing.from_channel (open_in file))



let spec_from_lexbuf lexbuf =
  try
    CryptolineParser.spec CryptolineLexer.token lexbuf
  with
  | Failure msg -> raise (Failure ("Error at line " ^ string_of_int !lnum ^ ". " ^ msg))
  | Parsing.Parse_error ->
    let l = !lnum in
    let c = !cnum in
    let msg = Printf.sprintf "Parser error at line %d char %d." l c in
    raise (Failure msg)

let spec_from_file file =
  spec_from_lexbuf (Lexing.from_channel (open_in file))

let spec_from_string str =
  spec_from_lexbuf (Lexing.from_string str)

let program_from_lexbuf lexbuf =
  try
    CryptolineParser.prog CryptolineLexer.token lexbuf
  with
  | Failure msg -> raise (Failure ("Error at line " ^ string_of_int !lnum ^ ". " ^ msg))
  | Parsing.Parse_error ->
    let l = !lnum in
    let c = !cnum in
    let msg = Printf.sprintf "Parser error at line %d char %d." l c in
    raise (Failure msg)

let program_from_file file =
  program_from_lexbuf (Lexing.from_channel (open_in file))

let program_from_string str =
  program_from_lexbuf (Lexing.from_string str)

let espec_from_lexbuf lexbuf =
  try
    SpecParser.espec SpecLexer.token lexbuf
  with
  | Failure msg -> raise (Failure msg)
  | Parsing.Parse_error ->
    let l = !lnum in
    let c = !cnum in
    let msg = Printf.sprintf "Parser error at line %d char %d." l c in
    raise (Failure msg)

let espec_from_file file =
  espec_from_lexbuf (Lexing.from_channel (open_in file))

let espec_from_string str =
  espec_from_lexbuf (Lexing.from_string str)

let rspec_from_lexbuf lexbuf =
  try
    SpecParser.rspec SpecLexer.token lexbuf
  with
  | Failure msg -> raise (Failure msg)
  | Parsing.Parse_error ->
    let l = !lnum in
    let c = !cnum in
    let msg = Printf.sprintf "Parser error at line %d char %d." l c in
    raise (Failure msg)

let rspec_from_file file =
  rspec_from_lexbuf (Lexing.from_channel (open_in file))

let rspec_from_string str =
  rspec_from_lexbuf (Lexing.from_string str)
