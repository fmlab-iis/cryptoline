
type 'o task = unit -> 'o Lwt.t
(** A ['o task] computes an output of type ['o]. *)

type ('r, 'o) delivered_helper = 'r -> 'o -> 'r
(** A [('r, 'o) delivered_helper] takes the current result of type ['r] and an
    output of some task as its arguments and then computes the next result. *)

type 'r continue_helper = 'r -> bool
(** A ['r continue_helper] takes the current result as its argument and returns
    [true] if the remaining promises need running. *)

val continue_true : bool continue_helper
(** Continue if the result is [true]. *)

val delivered_band : (bool, bool) delivered_helper
(** Takes the conjunction of the current result and the output of some promise. *)

val work_on_pending : ('r, 'o) delivered_helper -> 'r -> 'o Lwt.t list -> 'r * 'o Lwt.t list
(** [work_on_pending helper res pending] runs pending promises in [pending]
    until some output is delivered, updates the result by the delivered helper
    [helper] based on the current result [res] and the output, and returns
    [(res', pending')] where [res'] is the updated result and [pending'] is
    the remaining promises. *)

val finish_pending : ('r, 'o) delivered_helper -> 'r -> 'o Lwt.t list -> 'r
(** [finish_pending helper res pending] runs all pending promises in [pending],
    updates the result by the delivered helper [helper] based on the current
    result [res] and the outputs of the promises, and returns the final result. *)

val add_to_pending : 'r continue_helper -> ('r, 'o) delivered_helper -> 'r -> 'o Lwt.t list -> 'o task list -> 'r * 'o Lwt.t list
(** [add_to_pending chelper dhelper res pending tasks] inserts promises
    generated from [tasks] to the pending promises [pending] and returns
    the updated result and list of pending promises. During the insertion
    of tasks, [add_to_pending] may run pending promises in [pending] until
    the number of pending promises is less than the number of allowed jobs
    {!Options.jobs} so that new promises generated from [tasks] can be
    inserted. *)
