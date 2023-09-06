
open Parsing

type pos = { pfname: string option;
             plnum: int;
             pcnum: int }
let string_of_pos p =
  let fn =
    match p.pfname with
    | None -> ""
    | Some fn -> fn ^ ":" in
  fn ^ "(" ^ string_of_int p.plnum ^ ", " ^ string_of_int p.pcnum ^ ")"

let get_line_start () = (symbol_start_pos()).pos_lnum
let get_line_end () = (symbol_end_pos()).pos_lnum
let get_rule_start () =
  let l = symbol_start_pos() in
  { pfname = if String.length l.pos_fname > 0 then Some l.pos_fname else None;
    plnum = l.pos_lnum;
    pcnum = l.pos_cnum - l.pos_bol + 1 }
let get_rule_end () =
  let l = symbol_end_pos() in
  { pfname = if String.length l.pos_fname > 0 then Some l.pos_fname else None;
    plnum = l.pos_lnum;
    pcnum = l.pos_cnum - l.pos_bol + 1 }
let get_rhs_start n =
  let l = rhs_start_pos n in
  { pfname = if String.length l.pos_fname > 0 then Some l.pos_fname else None;
    plnum = l.pos_lnum;
    pcnum = l.pos_cnum - l.pos_bol + 1 }
let get_rhs_end n =
  let l = rhs_end_pos n in
  { pfname = if String.length l.pos_fname > 0 then Some l.pos_fname else None;
    plnum = l.pos_lnum;
    pcnum = l.pos_cnum - l.pos_bol + 1 }
let get_rhs_starts n =
  List.rev_map get_rhs_start (List.init n (fun i -> i)) |> List.rev

let ztwo = Z.of_int 2

let rec big_pow x n =
  if Z.equal n Z.zero then Z.one
  else if Z.equal n Z.one then x
  else
    let y = big_pow x (Z.div n ztwo) in
    let z = Z.pow y 2 in
    if Z.equal (Z.rem n ztwo) Z.zero then z
    else Z.mul x z
