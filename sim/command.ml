
type command =
  | CExit
  | CRun
  | CNext
  | CPrevious
  | CGoto of int
  | CFind of string
  | CPrint of bool * string list
  | CWatch of bool * string list
  | CUnwatch of bool * string list
  | CDump
