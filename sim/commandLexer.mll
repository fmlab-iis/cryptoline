{
  open CommandParser
  exception Eof

  let keywords = Hashtbl.create 100
  let _ = List.iter (fun (keyword, token) -> Hashtbl.replace keywords keyword token)
            [
              (********** Instructions **********)
              "exit"                       , EXIT;
              "quit"                       , EXIT;
              "q"                          , EXIT;
              "run"                        , RUN;
              "r"                          , RUN;
              "next"                       , NEXT;
              "n"                          , NEXT;
              "previous"                   , PREVIOUS;
              "prev"                       , PREVIOUS;
              "v"                          , PREVIOUS;
              "goto"                       , GOTO;
              "g"                          , GOTO;
              "find"                       , FIND;
              "f"                          , FIND;
              "print"                      , PRINT;
              "p"                          , PRINT;
              "rprint"                     , REGEXP_PRINT;
              "rp"                         , REGEXP_PRINT;
              "watch"                      , WATCH;
              "w"                          , WATCH;
              "rwatch"                     , REGEXP_WATCH;
              "rw"                         , REGEXP_WATCH;
              "unwatch"                    , UNWATCH;
              "uw"                         , UNWATCH;
              "runwatch"                   , REGEXP_UNWATCH;
              "ruw"                        , REGEXP_UNWATCH;
              "dump"                       , DUMP;
              "d"                          , DUMP;
              "help"                       , HELP;
              "h"                          , HELP;
              "?"                          , HELP
            ]

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
  | [^ ' ' '\t' '"']+ as id             { try
                                            Hashtbl.find keywords id
                                          with Not_found ->
                                            ARG id }
  | eof                                 { EOF }

and string = parse
  '"'                                   { () }
| '\\' (backslash_escapes as c)         { Buffer.add_char string_buff (char_for_backslash c);
                                          string lexbuf }
| _ as c                                { Buffer.add_char string_buff c;
                                          string lexbuf }
