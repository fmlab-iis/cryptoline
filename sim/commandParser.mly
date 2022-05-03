%{

  (** A parser for the commands in the simulator. *)

  open Command

  exception ParseError of string

%}

%token <string> ARG
%token EXIT RUN NEXT PREVIOUS GOTO FIND PRINT REGEXP_PRINT WATCH REGEXP_WATCH UNWATCH REGEXP_UNWATCH DUMP HELP
%token EOF

%nonassoc ARG EXIT RUN NEXT PREVIOUS GOTO FIND PRINT REGEXP_PRINT WATCH REGEXP_WATCH UNWATCH REGEXP_UNWATCH DUMP HELP

%start command
%type <Command.command> command

%%

command:
  cmd EOF                               { $1 }
;

cmd:
    EXIT                                { CExit }
  | RUN                                 { CRun }
  | NEXT args                           { match $2 with
                                          | [] -> CNext 1
                                          | [arg] ->
                                             (try
                                                let n = int_of_string arg in
                                                if n <= 0 then raise (ParseError ("The number of nexp steps must be positive."))
                                                else CNext n
                                              with Failure _ ->
                                                raise (ParseError ("Invalid next argument: " ^ String.concat " " $2)))
                                          | _ -> raise (ParseError ("Next command has at most 1 argument."))
                                        }
  | PREVIOUS args                       { match $2 with
                                          | [] -> CPrevious 1
                                          | [arg] ->
                                             (try
                                                let n = int_of_string arg in
                                                if n <= 0 then raise (ParseError ("The number of previous steps must be positive."))
                                                else CPrevious n
                                              with Failure _ ->
                                                raise (ParseError ("Invalid next argument: " ^ String.concat " " $2)))
                                          | _ -> raise (ParseError ("Next command has at most 1 argument."))
                                        }
  | GOTO ARG                            { try
                                            let n = int_of_string $2 in
                                            if n < 0 then raise (ParseError ("Invalid goto location: " ^ $2))
                                            else CGoto n
                                          with Failure _ ->
                                            raise (ParseError ("Invalid goto location: " ^ $2))
                                        }
  | FIND ARG                            { CFind $2 }
  | PRINT args                          { CPrint (false, $2) }
  | REGEXP_PRINT args                   { CPrint (true, $2) }
  | WATCH args                          { CWatch (false, $2) }
  | REGEXP_WATCH args                   { CWatch (true, $2) }
  | UNWATCH args                        { CUnwatch (false, $2) }
  | REGEXP_UNWATCH args                 { CUnwatch (true, $2) }
  | DUMP                                { CDump }
  | HELP                                { CHelp }
;

args:
                                        { [] }
  | ARG args                            { $1::$2 }
;
