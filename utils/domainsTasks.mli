
exception PoolUninitializedException of string

(** {1 Types} *)

type 'o task = unit -> 'o
(** A task is a function that produces some output. *)

type ('r, 'o) delivered_helper = 'r -> 'o -> 'r
(** A function that merges the current result and the output of some task. *)

type 'r continue_helper = 'r -> bool
(** A function that decides if the remaining tasks should be continued
    depending on the current result. *)

type 'o pending_state
(** Type of pending states used to monitor the status of pending tasks. *)


(** {1 Startup and shutdown} *)

val startup : string -> unit
(** Setup pools. This function must be called first before all
    other functions. *)

val shutdown : unit -> unit
(** Shutdown pools. This function must be called at the end of
    parallel computation. *)


(** {1 Logging} *)

val log : string -> unit
(** Log a message (no trailing newline is appended). *)

val log_with_lock : string -> unit
(** Log a message (no trailing newline is appended) protected
    with a mutex lock. *)

val log_file : string -> unit
(** Log file content (no trailing newline is appended). *)

val log_file_with_lock : string -> unit
(** Log file content (no trailing newline is appended) protected
    with a mutex lock. *)

val lock_log : unit -> unit
(** Manually lock the log file. *)

val unlock_log : unit -> unit
(** Manually unlock the log file. *)


(** {1 Task management} *)

val continue_true : bool continue_helper
(** Continue if the current result is true. *)

val delivered_band : (bool, bool) delivered_helper
(** Merge the current result and the next task output by a
    logical conjunction. *)

val empty_pending : unit -> 'o pending_state
(** An empty pending state. *)

val add_to_pending :
  'r continue_helper -> ('r, 'o) delivered_helper -> 'r ->
  ('o, exn) result pending_state -> 'o task list ->
  ('r * ('o, exn) result pending_state)
(** Add tasks to a pending state, resulting a new result and a new
    pending state. *)

val work_on_pending :
  ('r, 'o) delivered_helper -> 'r -> ('o, exn) result pending_state ->
  ('r * ('o, exn) result pending_state)
(** Work on pending tasks until some task finishes. *)

val finish_pending :
  ('r, 'o) delivered_helper -> 'r -> ('o, exn) result pending_state ->
  'r
(** Finish all pending tasks. *)

val finish_pending_with_timedouts :
  ('r * 't list) continue_helper -> (('r * 't list), 'o) delivered_helper ->
  ('t list -> 'o task list) -> ('r * 't list) ->
  ('o, exn) result pending_state -> 'r
(** Finish all pending tasks, and redo timedout tasks. *)
