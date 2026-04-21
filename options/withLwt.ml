
open Std

let run ?ofile cmd_array =
  let cmd = (cmd_array.(0), cmd_array) in
  let%lwt (out_fd, err_fd) =
    match ofile with
    | None -> Lwt.return (Lwt_unix.stdout, Lwt_unix.stderr)
    | Some file ->
      let%lwt fd = Lwt_unix.openfile file [Unix.O_WRONLY; Unix.O_CREAT; Unix.O_TRUNC] 0o644 in
      Lwt.return (fd, fd)
  in
  let (raw_out_fd, raw_err_fd) =
    (Lwt_unix.unix_file_descr out_fd, Lwt_unix.unix_file_descr err_fd) in
  let%lwt status =
    Lwt_process.exec
      ~stdout:(`FD_copy raw_out_fd)
      ~stderr:(`FD_copy raw_err_fd)
      cmd
  in
  let%lwt () = Lwt_unix.close out_fd in
  let%lwt () =
    if out_fd != err_fd then
      Lwt_unix.close err_fd
    else
      Lwt.return_unit in
  match status with
  | Unix.WSIGNALED n when n = Sys.sigkill ->
    raise Utils.Tasks.TimeoutException
  | _ -> Lwt.return status

let unix cmd = Lwt_unix.system cmd

let trace msg =
  if !debug then
    let%lwt _ = unix ("echo \"" ^ msg ^ "\" >> " ^ !logfile) in
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

let mutex = Lwt_mutex.create ()

let log_lock () =
  if !debug then
    Lwt_mutex.lock mutex
  else
    Lwt.return_unit

let log_unlock () =
  if !debug then
    Lwt.return (Lwt_mutex.unlock mutex)
  else
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
