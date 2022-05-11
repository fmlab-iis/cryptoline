
(** This module provides a simulator. *)

open NBits
open Ast.Cryptoline
open Utils

(** {1 Interactive Commands} *)

exception NoMoreInstr
(** raised when there is no more instruction available *)

exception VarNotFound
(** raised when some variable is not found *)

exception ValueNotFound
(** raised when some variable is uninitialized *)

class shellManager :
        bits VM.t -> program ->
        object
          method run : unit
          (** Run the remaining program. *)

          method next1 : int * instr
          (**
             Execute and return the next instruction.
             @raise NoMoreInstr if the end of the program is reached
           *)

          method next : int -> (int * instr) option
          (** [next n] executes the next [n] instructions and returns the last executed instruction. *)

          method prev1 : int * instr
          (**
             Undo and return the previous instruction.
             @raise NoMoreInstr if the start of the program is reached
           *)

          method prev : int -> (int * instr) option
          (** [prev n] undos the previous n instructions and returns the last undone instruction.*)

          method goto : int -> unit
          (** [goto n] runs the program until the n-th instruction is reached. *)

          method get_history : (var SM.t * bits VM.t * (int * instr) list) list
          (** Return the execution history. The first element of the returned list is the last execution. *)

          method get_table : var SM.t
          (** Return the map from variable names to variables. *)

          method get_var_by_name : string -> var
          (**
             [get_var_by_name n] is the variable of name [n].
             @raise VarNotFound if there is no variable of name [n]
           *)

          method get_vars_by_pattern : string -> VS.t
          (** Return variables with names that match a specified pattern. *)

          method get_map : bits VM.t
          (** Return the map from variables to values. *)

          method get_program : (int * instr) list
          (** Return the program. *)

          method get_value : var -> bits
          (**
             [get_value v] returns the current value of the variable [v]
             @raise ValueNotFound if the variable is uninitialized
           *)

          method get_next_instr : (int * instr) option
          (** Return the next instruction of the current program counter. *)

          method get_prev_instr : (int * instr) option
          (** Return the previous instruction of the current program counter. *)

          method watch_var : var -> unit
          (** Add a variable to the watch list. *)

          method unwatch_var : var -> unit
          (** Remove a variable from the watch list. *)

          method find_instrs : string -> (int * instr) list
          (** Find instructions with a specified string representation. *)

          method print_program : unit
          (** Print the instructions nearby the program counter. *)

          method print_watched : unit
          (** Print the values of variables in the watch list. *)
        end
(** a manager for interactive simulation *)

type argument = string
(** command arguments *)

type 'a command =
  {
    cname : string;                   (** command name *)
    calias : string list;             (** aliases *)
    cdesc : string;                   (** description *)
    chelp : string;                   (** help message *)
    cexec : 'a -> argument list -> 'a (** [cexec s args] executes this command with an initial state [s] and arguments [args], and returns the final state *) (* *)
  }
(** commands for the interactive simulator *)

val find_command : string -> shellManager command
(**
   [find_command n] returns the command with name [n] or with some alias [n].
   @raise Not_found if the command is not found
*)

val register_command : shellManager command -> unit
(** Register a command. *)

val get_commands : unit -> shellManager command list
(** Return all registered commands. *)


(** {1 Functions for Simulation} *)

val make_map : var list -> bits list -> bits VM.t
(** [make_map [v1; v2; ...; vn] [b1; b2; ...; bn]] returns a map where the
    variable [vi] is mapped to its value [bi]. *)

val simulate : ?steps:int -> ?dumps:(range list) -> bits VM.t -> program -> unit
(** [simulate ~steps:n ~dumps:rs m p] simulates the execution of a program [p]
    with the initial values of inputs specified in [m]. *)

val shell : bits VM.t -> program -> unit
(** [shell m p] creates an interactive shell for simulating the execution of the
    program [p] with the initial values of inputs specified in [m]. *)
