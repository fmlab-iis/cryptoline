
type 'a t = ('a, 'a list) Hashtbl.t

let mk_graph pairs =
  let ret = Hashtbl.create 23 in
  (* add empty adjacent lists for every target node *)
  let _ = List.iter (fun (_, t) ->
              if Hashtbl.mem ret t then ()
              else Hashtbl.add ret t []) pairs in
  let helper (s, t) =
    let adj = if Hashtbl.mem ret s then Hashtbl.find ret s else [] in
    if List.mem t adj then ()
    else Hashtbl.replace ret s (t::adj) in
  let _ = List.iter helper pairs in
  ret

let dfs_helper mark left enter_fun leave_fun g start =
  let rec helper to_visit =
    match to_visit with
    | current::tl ->
       if Hashtbl.mem mark current then
         let _ =
           if not (Hashtbl.mem left current) then
             let _ = Hashtbl.add left current () in
             let _ = leave_fun current in
             () in
         helper tl
       else
         let _ = Hashtbl.add mark current () in
         let _ = enter_fun current in
         let adjs = Hashtbl.find g current in
         let unvisited_adjs =
           List.filter (fun n -> not (Hashtbl.mem mark n)) adjs in
         helper (List.rev_append unvisited_adjs to_visit)
    | [] -> () in
  helper [start]

let dfs enter_fun leave_fun g start =
  dfs_helper (Hashtbl.create 23) (Hashtbl.create 23) enter_fun leave_fun g start

let topological_sort g =
  let ret = ref [] in
  let visited_helper n = ret := n::(!ret) in
  let mark = Hashtbl.create 23 in
  let left = Hashtbl.create 23 in
  let helper n =
    dfs_helper mark left (fun _ -> ()) visited_helper g n in
  let _ = Hashtbl.iter (fun s _ ->
              if Hashtbl.mem mark s then ()
              else helper s) g in
  !ret


