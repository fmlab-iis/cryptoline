
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

let raise_parse_error lexbuf =
  let curr = lexbuf.Lexing.lex_curr_p in
  let fn = if String.length curr.Lexing.pos_fname > 0 then (curr.Lexing.pos_fname ^ ":") else "" in
  let line = curr.Lexing.pos_lnum in
  let cnum = curr.Lexing.pos_cnum - curr.Lexing.pos_bol in
  let tok = Lexing.lexeme lexbuf in
  let msg = Printf.sprintf "Parser error at %s(%d, %d): `%s`" fn line cnum tok in
  raise (Failure msg)

let specs_from_lexbuf lexbuf =
  try
    CryptolineParser.specs CryptolineLexer.token lexbuf
  with
  | Failure msg -> raise (Failure ("Error at line " ^ string_of_int (get_line_start()) ^ ". " ^ msg))
  | Parsing.Parse_error -> raise_parse_error lexbuf

let specs_from_file file =
  let lexbuf = Lexing.from_channel ~with_positions:true (open_in file) in
  let _ = Lexing.set_filename lexbuf file in
  specs_from_lexbuf lexbuf



let spec_from_lexbuf lexbuf =
  try
    CryptolineParser.spec CryptolineLexer.token lexbuf
  with
  | Failure msg -> raise (Failure ("Error at line " ^ string_of_int (get_line_start()) ^ ". " ^ msg))
  | Parsing.Parse_error -> raise_parse_error lexbuf

let spec_from_file file =
  let lexbuf = Lexing.from_channel ~with_positions:true (open_in file) in
  let _ = Lexing.set_filename lexbuf file in
  spec_from_lexbuf lexbuf

let spec_from_string str =
  spec_from_lexbuf (Lexing.from_string ~with_positions:true str)

let program_from_lexbuf lexbuf =
  try
    CryptolineParser.prog CryptolineLexer.token lexbuf
  with
  | Failure msg -> raise (Failure ("Error at line " ^ string_of_int (get_line_start()) ^ ". " ^ msg))
  | Parsing.Parse_error -> raise_parse_error lexbuf

let program_from_file file =
  let lexbuf = Lexing.from_channel (open_in file) in
  let _ = Lexing.set_filename lexbuf file in
  program_from_lexbuf lexbuf

let program_from_string str =
  program_from_lexbuf (Lexing.from_string str)

let espec_from_lexbuf lexbuf =
  try
    SpecParser.espec SpecLexer.token lexbuf
  with
  | Failure msg -> raise (Failure msg)
  | Parsing.Parse_error -> raise_parse_error lexbuf

let espec_from_file file =
  let lexbuf = Lexing.from_channel (open_in file) in
  let _ = Lexing.set_filename lexbuf file in
  espec_from_lexbuf lexbuf

let espec_from_string str =
  espec_from_lexbuf (Lexing.from_string str)

let rspec_from_lexbuf lexbuf =
  try
    SpecParser.rspec SpecLexer.token lexbuf
  with
  | Failure msg -> raise (Failure msg)
  | Parsing.Parse_error -> raise_parse_error lexbuf

let rspec_from_file file =
  let lexbuf = Lexing.from_channel (open_in file) in
  let _ = Lexing.set_filename lexbuf file in
  rspec_from_lexbuf lexbuf

let rspec_from_string str =
  rspec_from_lexbuf (Lexing.from_string str)
