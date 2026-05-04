
exception PoolUninitializedException of string

(* ===== Types ===== *)

type 'o task = unit -> 'o

type ('r, 'o) delivered_helper = 'r -> 'o -> 'r

type 'r continue_helper = 'r -> bool

(* A pending_state record tracks the number of currently running tasks
   and holds the thread-safe channel where workers will post their results. *)
type 'o pending_state = {
  chan : 'o Domainslib.Chan.t;
  running : int;
}


(* ===== Pools ===== *)

let get_pool name =
  match Domainslib.Task.lookup_pool name with
  | None ->
    raise (PoolUninitializedException
             (Printf.sprintf "Pool %s is not initialized." name))
  | Some p -> p

let initialize_pool specs =
  List.iter (fun (pool_name, num_domains) ->
      ignore(Domainslib.Task.setup_pool
               ~name:pool_name
               ~num_domains:num_domains ())
    ) specs

let shutdown_pool names =
  List.iter (fun name ->
      Domainslib.Task.teardown_pool (get_pool name);
    ) names


(* ===== Logs ===== *)

let mutex = Mutex.create ()

let log_pool_name = "log_pool"

let log_pool_domains = 1

let log_chan = Domainslib.Chan.make_unbounded ()

let exit_log_cmd = "###EXIT###"

let logging_task ch () =
  let rec helper () =
    let msg = Domainslib.Chan.recv log_chan in
    if msg = exit_log_cmd then
      close_out ch
    else begin
      output_string ch msg; helper()
    end in
  helper ()

let initialize_logger logfile =
  let ch = open_out logfile in
  Domainslib.Task.async (get_pool log_pool_name) (logging_task ch)

let log msg =
  Domainslib.Chan.send log_chan msg

let log_file file =
  let rec read_and_log_lines ch =
    try begin
      log (input_line ch);
      log "\n";
      read_and_log_lines ch
    end with End_of_file ->
      () in
  In_channel.with_open_text file read_and_log_lines

let log_with_lock msg =
  Mutex.lock mutex;
  log msg;
  Mutex.unlock mutex

let log_file_with_lock file =
  Mutex.lock mutex;
  log_file file;
  Mutex.unlock mutex

let lock_log () = Mutex.lock mutex
let unlock_log () = Mutex.unlock mutex

let shutdown_logger () =
  Domainslib.Chan.send log_chan exit_log_cmd


(* Startup and shutdown *)

let main_pool_name = "main_pool"

let startup logfile =
  if !Tasks.jobs > 126 then
    failwith("The maximum number of jobs in Domains is 126.")
  else
    let _ = initialize_pool
        [ (main_pool_name, !Tasks.jobs);
          (log_pool_name, log_pool_domains) ] in
    let _ = initialize_logger logfile in
    ()

let shutdown () =
  shutdown_logger();
  shutdown_pool [main_pool_name; log_pool_name]


(* Tasks management *)

let continue_true : bool continue_helper = Fun.id

let delivered_band = fun r o -> r && o

let empty_pending () = {
  chan = Domainslib.Chan.make_unbounded ();
  running = 0;
}

(* Run some pending tasks. Blocks until at least one task finishes, then
   drains any others that happened to finish at the exact same time. *)
let work_on_pending delivered_helper res pending =
  if pending.running = 0 then
    (res, pending)
  else
    (* Block until the first task finishes *)
    let first_out =
      match Domainslib.Chan.recv pending.chan with
      | Ok v -> v
      | Error e -> raise e in
    let current_res = delivered_helper res first_out in
    let current_running = pending.running - 1 in
    (* Non-blocking poll to drain any other tasks that finished simultaneously *)
    let rec drain current_res current_running =
      if current_running > 0 then
        match Domainslib.Chan.recv_poll pending.chan with
        | Some (Ok out) ->
          drain (delivered_helper current_res out) (current_running - 1)
        | Some (Error e) ->
          raise e
        | None ->
          (current_res, current_running)
      else
        (current_res, current_running)
    in
    let (res, running) = drain current_res current_running in
    (res, { pending with running = running })

(* Run all pending tasks until the queue is completely empty. *)
let rec finish_pending delivered_helper res pending =
  if pending.running = 0 then
    res
  else
    let (res', pending') = work_on_pending delivered_helper res pending in
    finish_pending delivered_helper res' pending'

(* Add tasks to pending promises. Dispatch them to free cores.
   If all cores are busy, wait for one to finish before continuing. *)
let add_to_pending continue_helper delivered_helper res pending tasks =
  let rec helper res pending tasks =
    if continue_helper res then
      if pending.running < !Tasks.jobs then
        match tasks with
        | [] -> (res, pending)
        | hd::tl ->
            (* Dispatch task to a free core *)
            let _ = Domainslib.Task.async (get_pool main_pool_name) (fun () ->
              let out =
                try Ok (hd ())
                with e -> Error e
              in
              (* Worker pushes result to the channel when done *)
              Domainslib.Chan.send pending.chan out
            ) in
            let pending' = { pending with running = pending.running + 1 } in
            helper res pending' tl
      else
        (* Cores are full. Block until at least one finishes, freeing a slot *)
        let (res', pending') = work_on_pending delivered_helper res pending in
        helper res' pending' tasks
    else
      (res, pending)
  in
  helper res pending tasks

(** Handle timeouts and fallbacks. *)
let finish_pending_with_timedouts continue_helper delivered_helper make_promise (res, timedouts) pending =
  let rec verify_timedouts (res, timedouts) pending =
    if continue_helper (res, timedouts) then
      match timedouts with
      | [] -> verify_pending res pending
      | _ ->
          let promises = make_promise timedouts in
          let ((res', timedouts'), pending') =
            add_to_pending continue_helper delivered_helper (res, []) pending promises
          in
          verify_timedouts (res', timedouts') pending'
    else res
  and verify_pending res pending =
    if continue_helper (res, []) then
      if pending.running = 0 then res
      else
        let ((res', timedouts'), pending') = work_on_pending delivered_helper (res, []) pending in
        match timedouts' with
        | [] -> verify_pending res' pending'
        | _ -> verify_timedouts (res', timedouts') pending'
    else res
  in
  verify_timedouts (res, timedouts) pending
