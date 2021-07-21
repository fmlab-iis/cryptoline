
val unix : string -> Lwt_unix.process_status Lwt.t
val trace : string -> Lwt_unix.process_status Lwt.t
(* Same as trace but without appending a newline *)
val tracen : string -> Lwt_unix.process_status Lwt.t
val fail : string -> 'a Lwt.t

val log_lock : unit -> unit Lwt.t
val log_unlock : unit -> unit Lwt.t

val cleanup_lwt : string list -> unit Lwt.t
