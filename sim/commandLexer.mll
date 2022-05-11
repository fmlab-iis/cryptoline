{

  (** A lexer for the commands in the simulator. *)

  open CommandParser
  exception Eof

  let string_buff = Buffer.create 256

  let char_for_backslash = function
    | 'n' -> '\010'
    | 'r' -> '\013'
    | 'b' -> '\008'
    | 't' -> '\009'
    | c   -> c

}


let backslash_escapes = ['\\' '\'' '"' 'n' 't' 'b' 'r' ' ']
let any = [^ ' ' '\t']+

rule token = parse
    [' ' '\t']                          { token lexbuf }
  | '"'                                 { Buffer.clear string_buff;
                                          string lexbuf;
                                          ARG (Buffer.contents string_buff) }
  | [^ ' ' '\t' '"']+ as id             { ARG id }
  | eof                                 { EOF }

and string = parse
  '"'                                   { () }
| '\\' (backslash_escapes as c)         { Buffer.add_char string_buff (char_for_backslash c);
                                          string lexbuf }
| _ as c                                { Buffer.add_char string_buff c;
                                          string lexbuf }
