
open Std

let unix cmd = Lwt_unix.system cmd

let trace msg =
  if !debug then
    let%lwt _ = unix ("echo \"" ^ msg ^ "\n\" >> " ^ !logfile) in
    Lwt.return()
  else
    Lwt.return()

let trace_file file =
  if !debug then
    let%lwt _ = unix ("cat " ^ file ^ " >>  " ^ !logfile) in
    Lwt.return()
  else
    Lwt.return()

let fail s = let%lwt _ = trace s in failwith s

let counter = ref 1
let mutex = Lwt_mutex.create ()
let cvar = Lwt_condition.create ()
let log_lock () =
  let rec check_counter () =
    if !counter = 0
    then let%lwt _ = Lwt_condition.wait ?mutex:(Some mutex) cvar in
         check_counter ()
    else let _ = decr counter in
         Lwt.return_unit in
  let%lwt _ = Lwt_mutex.lock mutex in
  let%lwt _ = check_counter () in
  let _ = Lwt_mutex.unlock mutex in
  Lwt.return_unit
let log_unlock () =
  let%lwt _ = Lwt_mutex.lock mutex in
  let _ = incr counter in
  let _ = Lwt_mutex.unlock mutex in
  let _ = Lwt_condition.signal cvar () in
  Lwt.return_unit

let cleanup_lwt files =
  if not !keep_temp_files then Lwt_list.iter_p Lwt_unix.unlink files
  else Lwt.return_unit

let safe_trace msg =
  if !debug then
    let res =
      let%lwt _ = log_lock () in
      let%lwt res = trace msg in
      let%lwt _ = log_unlock () in
      Lwt.return res in
    Lwt_main.run res
