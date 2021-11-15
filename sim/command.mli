
type command =
  | CExit
  | CRun
  | CNext
  | CPrevious
  | CGoto of int
  | CFind of string
  | CPrint of bool * string list (* CPrint (use_regexp, vars) *)
  | CWatch of bool * string list (* CWatch (use_regexp, vars) *)
  | CUnwatch of bool * string list (* CUnwatch (use_regexp, vars) *)
  | CDump
