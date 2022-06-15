%{

  (** A parser for the commands in the simulator. *)

%}

%token <string> ARG
%token EOF

%start command
%type <string * string list> command

%%

command:
  cmd EOF                               { $1 }
;

cmd:
  ARG args                              { ($1, $2) }
;

args:
                                        { [] }
  | ARG args                            { $1::$2 }
;
