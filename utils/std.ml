

(** Numbers *)

(** Returns the log base 2 of n as an integer. *)
let logi n = int_of_float (log (float_of_int n) /. log 2.0)

let hex_of_Z w n =
  let n = Z.erem n (Z.pow (Z.of_int 2) w) in
  Z.format ("%0" ^ string_of_int (w / 4) ^ "X") n

let bin_of_Z w n =
  let n = Z.erem n (Z.pow (Z.of_int 2) w) in
  Z.format ("%0" ^ string_of_int w ^ "b") n


(** Strings *)

let split_on_char_nonempty char str = List.filter (fun s -> String.length s <> 0) (String.split_on_char char str)


(** Ranges *)

exception InvalidRange of string

type range = int * int

let range_delimiter = ':'

let make_range i j =
  if i > j then raise (InvalidRange ("Invalid range from " ^ string_of_int i ^ " to " ^ string_of_int j))
  else (i, j)

let in_range n (i, j) = i <= n && n <= j

let flatten_range (i, j) = List.init (j - i + 1) (fun k -> k + i)

let parse_range str =
  let error_msg = "Invalid range `" ^ str ^ "`. A range should be in the format `n` or `n:m` where n <= m." in
  try
    let n = int_of_string str in
    make_range n n
  with Failure _ ->
    let tokens = split_on_char_nonempty range_delimiter str in
    (try
       match tokens with
       | n::m::[] -> make_range (int_of_string n) (int_of_string m)
       | n::[] -> make_range (int_of_string n) (int_of_string n)
       | _ -> raise (Invalid_argument "")
     with Invalid_argument _ ->
       raise (InvalidRange error_msg))


(** Lists *)

let tflatten xss =
  List.rev (List.fold_left (fun rev xs -> List.rev_append xs rev) [] xss)

let tappend xs ys = List.rev_append (List.rev xs) ys

let tmap f xs = List.rev_map f xs |> List.rev

let (@@) ls1 ls2 = tappend ls1 ls2
