
type command =
  | Cexit
  | Crun
  | Cnext
  | Cprevious
  | Cgoto of int
  | Cfind of string
  | Cprint of string list
  | Cwatch of string list
  | Cunwatch of string list
  | Cdump
