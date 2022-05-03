
(** This module provides commands available in the interactive simulator. *)

(** {1 Commands in Interactive Simulator} *)

type command =
  | CExit                             (** [CExit] exits the simulator. *)
  | CRun                              (** [CRun] runs the whole program. *)
  | CNext of int                      (** [CNext n] runn next [n] instructions. *)
  | CPrevious of int                  (** [CPrevious n] undoes previous [n] instructions. *)
  | CGoto of int                      (** [CGogo i] runs the program until the i-th instruction is reached. *)
  | CFind of string                   (** [CFind s] finds instructions that have string representation [s]. *)
  | CPrint of bool * string list      (** [CPrint (use_regexp, vars)] prints the values of variables [vars]
                                          which are specified by there exact names if [use_regexp] is [false]
                                          and regular expressions otherwise. *)
  | CWatch of bool * string list      (** [CWatch (use_regexp, vars)] adds variables to the list of watched
                                          variables if [vars] is non-empty and prints the values of the
                                          watched variables in the list otherwise. *)
  | CUnwatch of bool * string list    (** [CUnwatch (use_regexp, vars)] removes variables from the list of
                                          watched variables. *)
  | CDump                             (** [CDump] prints values of all variables. *)
  | CHelp                             (** [CHelp] prints the help message. *)

val command_help : unit -> string
(** Returns the help message of commands available in the interactive simulator. *)
