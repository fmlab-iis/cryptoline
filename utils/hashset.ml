
(** Hashsets *)

type 'a t = ('a, unit) Hashtbl.t

let create = Hashtbl.create

let clear = Hashtbl.clear

let reset = Hashtbl.reset

let copy = Hashtbl.copy

let add s a = Hashtbl.replace s a ()

let remove = Hashtbl.remove

let mem = Hashtbl.mem

let iter f s = Hashtbl.iter (fun a _ -> f a) s

let fold f s a = Hashtbl.fold (fun a _ r -> f a r) s a

let size = Hashtbl.length

let of_list xs =
  let s = create (List.length xs) in
  let _ = List.iter (add s) xs in
  s

let to_list s =
  fold (fun a r -> a::r) s []
