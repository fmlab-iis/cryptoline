
(** This module provides utility functions to be used with Lwt. *)

val run : ?ofile:string -> string array -> Lwt_unix.process_status Lwt.t
(** Run a Unix command by [Lwt_process.exec]. *)

val unix : string -> Lwt_unix.process_status Lwt.t
(** Run a Unix command by [Lwt_unix.system]. *)

val trace : string -> unit Lwt.t
(** write a message with an ending newline to the log file *)

val trace_file : string -> unit Lwt.t
(** write a file to the log file *)

val safe_trace : string -> unit

val fail : string -> 'a Lwt.t
(** write a message to the log file and then fail with the message *)

val log_lock : unit -> unit Lwt.t
(** lock the log file if debug logginf is enabled *)

val log_unlock : unit -> unit Lwt.t
(** unlock the log file if debug logginf is enabled *)

val cleanup_lwt : string list -> unit Lwt.t
(** [cleanup_lwt [f1; ...; fn]] removes temporary files [f1], ..., and [fn]. *)
