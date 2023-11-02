
exception TimeoutException

let jobs = ref 4

type 'o task = unit -> 'o Lwt.t

type ('r, 'o) delivered_helper = 'r -> 'o -> 'r

type 'r continue_helper = 'r -> bool

let continue_true : bool continue_helper = Fun.id

let delivered_band = fun r o -> r && o

(**
   Run some pending promises.
   @param delivered_helper combine the current result and the new delivered
          results
   @param res the current result
   @param pending the pending promises
   @return a pair [(res, pending)] where [res] is the updated result and
           [pending] is the updated list of remaining promises
 *)
let work_on_pending delivered_helper res pending =
  let (delivered, pending') = Lwt_main.run (Lwt.nchoose_split pending) in
  let res' = List.fold_left delivered_helper res delivered in
  (res', pending')

(**
   Run all pending promises.
   @param delivered_helper combine the current result and the new delivered
          results
   @param res the current result
   @param pending the pending promises
   @return the final result
 *)
let rec finish_pending delivered_helper res pending =
  match pending with
  | [] -> res
  | _ -> let (res', pending') = work_on_pending delivered_helper res pending in
         finish_pending delivered_helper res' pending'

(**
   Add tasks to pending promises. Run promises if necessary.
   @param continue_helper check the current result and return [true] if the
          remaining promises need running
   @param delivered_helper combine the current result and the new delivered
          results
   @param res the current result
   @param pending the pending promises
   @param tasks a list of tasks to be added to the pending promises
   @return a pair [(res, pending)] where [res] is the updated result and
           [pending] is the updated list of remaining promises
 *)
let add_to_pending continue_helper delivered_helper res pending tasks =
  let rec helper res pending tasks =
    if continue_helper res then
      if List.length pending < !jobs then
        match tasks with
        | [] -> (res, pending)
        | hd::tl -> let promise = hd () in
                    helper res (promise::pending) tl
      else
        let (res', pending') = work_on_pending delivered_helper res pending in
        helper res' pending' tasks
    else
      (res, pending) in
  helper res pending tasks

let finish_pending_with_timedouts continue_helper delivered_helper make_promise (res, timedouts) pending =
  let rec verify_timedouts (res, timedouts) pending =
    if continue_helper (res, timedouts) then match timedouts with
                                             | [] -> verify_pending res pending
                                             | _ -> let promises = make_promise timedouts in
                                                    let ((res, timedouts), pending) = add_to_pending continue_helper delivered_helper (res, []) pending promises in
                                                    verify_timedouts (res, timedouts) pending
    else res
  and verify_pending res pending =
    if continue_helper (res, []) then match pending with
                                             | [] -> res
                                             | _ -> let ((res, timedouts), pending) = work_on_pending delivered_helper (res, []) pending in
                                                    (match timedouts with
                                                     | [] -> verify_pending res pending
                                                     | _ -> verify_timedouts (res, timedouts) pending)
    else res
  in
  verify_timedouts (res, timedouts) pending

let exec ?timeout ?env ?cwd ?stdin ?stdout ?stderr cmd =
  let%lwt st =
    Lwt_process.exec
      ?timeout:timeout
      ?env:env
      ?cwd:cwd
      ?stdin:stdin
      ?stdout:stdout
      ?stderr:stderr
      cmd
  in
  let%lwt _ =
    match st with
    | WSIGNALED n -> if n = Sys.sigkill then raise TimeoutException
                     else Lwt.return_unit
    | _ -> Lwt.return_unit
  in
  Lwt.return st

let exec_shell ?timeout ?env ?cwd ofile errfile cmd =
  let outf = Unix.openfile ofile [O_RDWR; O_CREAT] 0o644 in
  let errf = Unix.openfile errfile [O_RDWR; O_CREAT] 0o644 in
  let%lwt st =
    Lwt_process.exec
      ?timeout:timeout
      ?env:env
      ?cwd:cwd
      ~stdout:(`FD_move outf)
      ~stderr:(`FD_move errf)
      (Lwt_process.shell cmd)
  in
  let%lwt _ =
    match st with
    | WSIGNALED n -> if n = Sys.sigkill then raise TimeoutException
                     else Lwt.return_unit
    | _ -> Lwt.return_unit
  in
  Lwt.return st

