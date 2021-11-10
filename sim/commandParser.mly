%{

  open Command

  exception ParseError of string

%}

%token <string> ARG
%token EXIT RUN NEXT PREVIOUS GOTO FIND PRINT WATCH UNWATCH DUMP
%token EOF

%nonassoc ARG EXIT RUN NEXT PREVIOUS GOTO FIND PRINT WATCH UNWATCH DUMP

%start command
%type <Command.command> command

%%

command:
  cmd EOF                               { $1 }
;

cmd:
    EXIT                                { Cexit }
  | RUN                                 { Crun }
  | NEXT                                { Cnext }
  | PREVIOUS                            { Cprevious }
  | GOTO ARG                            { try
                                            let n = int_of_string $2 in
                                            if n < 0 then raise (ParseError ("Invalid goto location: " ^ $2))
                                            else Cgoto n
                                          with Failure _ ->
                                            raise (ParseError ("Invalid goto location: " ^ $2))
                                        }
  | FIND ARG                            { Cfind $2 }
  | PRINT args                          { Cprint $2 }
  | WATCH args                          { Cwatch $2 }
  | UNWATCH args                        { Cunwatch $2 }
  | DUMP                                { Cdump }
;

args:
                                        { [] }
  | ARG args                            { $1::$2 }
;
