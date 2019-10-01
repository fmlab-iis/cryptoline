
open Std

let unix cmd = Lwt_unix.system cmd

let trace msg = unix ("echo \"" ^ msg ^ "\n\" >> " ^ !logfile)
let tracen msg = unix ("echo \"" ^ msg ^ "\" >> " ^ !logfile)

let fail s = let%lwt _ = trace s in failwith s

let mutex = Lwt_mutex.create ()

let lock_log () = Lwt_mutex.lock mutex
let unlock_log () = Lwt_mutex.unlock mutex
