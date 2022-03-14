%{

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
  | NEXT                                { CNext }
  | PREVIOUS                            { CPrevious }
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
