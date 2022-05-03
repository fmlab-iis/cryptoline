
(** This module provides utility functions to be used with Lwt. *)

val unix : string -> Lwt_unix.process_status Lwt.t
(** run an Unix command *)

val trace : string -> Lwt_unix.process_status Lwt.t
(** write a message to the log file *)

val tracen : string -> Lwt_unix.process_status Lwt.t
(** write a message and an ending newline to the log file *)

val fail : string -> 'a Lwt.t
(** write a message to the log file and then fail with the message *)

val log_lock : unit -> unit Lwt.t
(** lock the log file *)

val log_unlock : unit -> unit Lwt.t
(** unlock the log file *)

val cleanup_lwt : string list -> unit Lwt.t
(** [cleanup_lwt [f1; ...; fn]] removes temporary files [f1], ..., and [fn]. *)
