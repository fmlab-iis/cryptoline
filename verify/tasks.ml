
open Options.Std

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
