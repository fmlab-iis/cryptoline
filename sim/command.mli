
type command =
  | CExit
  | CRun
  | CNext of int
  | CPrevious of int
  | CGoto of int
  | CFind of string
  | CPrint of bool * string list (* CPrint (use_regexp, vars) *)
  | CWatch of bool * string list (* CWatch (use_regexp, vars) *)
  | CUnwatch of bool * string list (* CUnwatch (use_regexp, vars) *)
  | CDump
  | CHelp

val command_help : unit -> string
