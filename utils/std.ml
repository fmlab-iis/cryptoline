

(** Exceptions *)

exception IndexOutOfBound of int
exception UnsupportedException of string
exception EvaluationException of string


(** Numbers *)

(** Returns the log base 2 of n as an integer. *)
let logi n = int_of_float (log (float_of_int n) /. log 2.0)

let hex_of_Z w n =
  let n = Z.erem n (Z.pow (Z.of_int 2) w) in
  Z.format ("%0" ^ string_of_int (w / 4) ^ "X") n

let bin_of_Z w n =
  let n = Z.erem n (Z.pow (Z.of_int 2) w) in
  Z.format ("%0" ^ string_of_int w ^ "b") n

let to_positive_same_size n size =
  Z.erem n (Z.pow (Z.of_int 2) size)


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

let tfilter f xs =
  List.fold_left (fun res x -> if f x then x::res else res) [] xs |> List.rev

let (@@) ls1 ls2 = tappend ls1 ls2

let rcons xs x = List.rev (x::List.rev xs)

let partition_at xs n =
  let _ = assert (0 <= n) in
  let _ = assert (n <= List.length xs) in
  let (rev_ret_h, rev_ret_t, _) =
    List.fold_left (fun (h, t, m) x ->
        if m > 0 then (x::h, t, pred m) else (h, x::t, m)) ([], [], n) xs in
  (List.rev rev_ret_h, List.rev rev_ret_t)

let transpose xss =
  match xss with
  | [] -> []
  | hd::tl ->
     let start = List.rev_map (fun x -> [x]) hd |> List.rev in
     let rev_rss =
       List.fold_left (fun rss xs ->
           List.rev_map2 (fun rs x -> x::rs) rss xs |> List.rev)
         start tl in
     rev_rss |> List.rev_map List.rev |> List.rev



(** Comments for external solvers *)

let make_line_comments leading comments =
  String.concat "\n" (tmap (Printf.sprintf "%s %s" leading) comments) ^ "\n"

let make_block_comments op cl comments =
  let padding = String.init (String.length op) (fun _ -> ' ') in
  Printf.sprintf "%s %s %s\n"
    op
    (String.concat "\n" (List.mapi (fun i c -> if i = 0 then c else (Printf.sprintf "%s %s" padding c)) comments))
    cl

let rcons_comments_option cso c =
  match cso with
  | None -> [c]
  | Some cs -> rcons cs c

let append_comments_option cso cs =
  match cso with
  | None -> cs
  | Some cs0 -> tappend cs0 cs
