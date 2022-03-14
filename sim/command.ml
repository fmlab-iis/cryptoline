
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
  | CHelp

let highlight s = "\027[1m" ^ s ^ "\027[0m"

(*
 * See commandLexer.mll for the string representation of commands.
 * See simulator.ml for the implementation of commands.
 *)
let command_help () =
  String.concat "\n" [
      "COMMAND\t\t\tDESCRIPTION";
      "--------------------------------------------------------------------------------";
      highlight("exit/quit/q"); "\t\t\tQuit\n";
      highlight("run/r"); "\t\t\tRun the program\n";
      highlight("next/n"); "\t\t\tRun the next instruction\n";
      highlight("previous/prev/v"); "\t\t\tUndo the previous instruction\n";
      highlight("goto/g N"); "\t\t\tRun until the N-th instruction\n";
      highlight("find/f STR"); "\t\t\tSearch for instructions\n";
      highlight("print/p [VAR VAR ...]"); "\t\t\tPrint the instructions near the program counter or"; "\t\t\tprint values of specified variables\n";
      highlight("rprint/rp [PATTERN PATTERN ...]"); "\t\t\tPrint the instructions near the program counter or"; "\t\t\tprint values of variables that match one of the"; "\t\t\tspecified patterns\n";
      highlight("watch/w [VAR VAR ...]"); "\t\t\tPrint values of variables in watch list or"; "\t\t\tadd variables to watch list\n";
      highlight("rwatch/rw [PATTERN PATTERN ...]"); "\t\t\tPrint values of variables in watch list or add"; "\t\t\tvariables matching one of the specified patterns to"; "\t\t\twatch list\n";
      highlight("unwatch/uw [VAR VAR ...]"); "\t\t\tRemove variables from watch list\n";
      highlight("runwatch/ruw [PATTERN PATTERN ...]"); "\t\t\tRemove variables matching one of the specified patterns"; "\t\t\tfrom watch list\n";
      highlight("dump/d"); "\t\t\tPrint values of all variables\n";
      highlight("help/h/?"); "\t\t\tPrint this help message"]
