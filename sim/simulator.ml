
(*
  This module provides a simulator. The simulator may run interactively.
  To extend the commands in the interactive mode with a new command CMD:
  - Define [exec_CMD] which executes the command.
  - Define [command_CMD] of the type [shellManager command] which describes the new command.
  - Invoke [register_command command_CMD] to register the new command.
*)

open Ast.Cryptoline
open NBits
open Utils.Std


(** Options *)

(* raised with a message if some argument is invalid *)
exception InvalidArgument of string

let num_prev_instrs_to_print = ref 5

let num_next_instrs_to_print = ref 5

let apply_assignment_rewriting = ref false

let print_hexadecimal = ref false

type option_spec =
  OInt of (int -> unit)
| OBool of (bool -> unit)

type option_kind =
  {
    oname : string;          (** name of the option *)
    odesc : string;          (** the description the option *)
    ospec : option_spec;     (** specification of the option *)
    oprint : unit -> unit    (** print the current value of the option *)
  }

let option_num_prev_instrs_to_print =
  {
    oname = "num_prev_instrs_to_print";
    odesc = "The number of instructions before the current program location to print.";
    ospec = OInt (fun n -> num_prev_instrs_to_print := n);
    oprint = fun _ -> print_endline ("num_prev_instrs_to_print = " ^ string_of_int !num_prev_instrs_to_print)
  }

let option_num_next_instrs_to_print =
  {
    oname = "num_next_instrs_to_print";
    odesc = "The number of instructions after the current program location to print.";
    ospec = OInt (fun n -> num_next_instrs_to_print := n);
    oprint = fun _ -> print_endline ("num_next_instrs_to_print = " ^ string_of_int !num_next_instrs_to_print)
  }

let option_rewrite_assignments =
  {
    oname = "rewrite_assignments";
    odesc = "Rewrite assignments for the slice command.";
    ospec = OBool (fun b -> apply_assignment_rewriting := b);
    oprint = fun _ -> print_endline ("rewrite_assignments = " ^ string_of_bool !apply_assignment_rewriting)
  }

let option_print_hexadecimal =
  let name = "print_hexadecimal" in
  let option = print_hexadecimal in
  let desc = "Print variable values in hexadecimal." in
  {
    oname = name;
    odesc = desc;
    ospec = OBool (fun b -> option := b);
    oprint = fun _ -> print_endline (name ^ " = " ^ string_of_bool !option)
  }

let options = Hashtbl.create 10

let find_option name = Hashtbl.find options name

let register_option o = Hashtbl.replace options o.oname o

let get_options () =
  let m = Hashtbl.fold (fun _ o res -> SM.add o.oname o res) options SM.empty in
  let os_rev = SM.fold (fun _ o res -> o::res) m [] in
  List.rev os_rev

let _ = List.iter register_option [
            option_num_prev_instrs_to_print; option_num_next_instrs_to_print;
            option_rewrite_assignments; option_print_hexadecimal
          ]

(* Convert an argument to an integer. Raise InvalidArgument if the argument is not a valid integer. *)
let convert_to_int arg =
  try int_of_string arg
  with Failure _ -> raise (InvalidArgument (arg ^ " is not a valid integer."))

(* Convert an argument to a Boolean. Raise InvalidArgument if the argument is not a valid Boolean. *)
let convert_to_bool arg =
  try bool_of_string arg
  with Failure _ -> raise (InvalidArgument (arg ^ " is not a valid Boolean."))

(* Parse an option with its new values. If the input arguments is empty, print all available options.
   Raise InvalidArgument if there is an error in value parsing. *)
let parse_options args =
  match args with
  | name::args ->
     begin
       try
         let o = find_option name in
         match o.ospec with
         | OInt f -> (match args with
                      | n::[] -> f (convert_to_int n)
                      | _ -> print_endline("The option " ^ o.oname ^ " requires an integer argument."))
         | OBool f -> (match args with
                       | n::[] -> f (convert_to_bool n)
                       | _ -> print_endline("The option " ^ o.oname ^ " requires a Boolean argument."))
       with Not_found -> print_endline ("There is no option " ^ name ^ ".")
     end
  | _ -> List.iter (fun o -> print_string "# "; print_endline o.odesc; o.oprint(); print_endline "") (get_options ())


(** Auxiliary Functions *)

let string_of_var_with_value x v =
  let is_signed = var_is_signed x in
  let bits_value = if !print_hexadecimal then "0x" ^ String.concat "" (List.map Char.escaped (to_hex v))
                   else "0b" ^ string_of_bits v in
  let int_value = Z.to_string ((if is_signed then signed else unsigned) v) in
  string_of_var x ^ ": " ^ bits_value
  ^ " (" ^ (if is_signed then "signed " else "unsigned ") ^ int_value ^ ")"

let dump_map m =
  VM.iter (fun x v -> print_endline (string_of_var_with_value x v)) m

let value_of_atom m a =
  match a with
  | Avar v ->
     begin
       try VM.find v m
       with Not_found -> failwith("Uninitialized variable: " ^ string_of_var v)
     end
  | Aconst (ty, n) -> bits_of_z (size_of_typ ty) n

let to_bit bs =
  match bs with
  | hd::[] -> hd
  | _ -> failwith("Failed to convert a bit vector of size greater than 1 to one bit")

let of_bit b = from_bool 1 b

let in_ranges n rs = List.exists (in_range n) rs


(** Simulation of an Instruction *)

let simulate_instr m i =
  match i with
  | Imov (v, a) -> VM.add v (value_of_atom m a) m
  | Ishl (v, a, n) ->
     let n = to_nat (value_of_atom m n) in
     let bs = value_of_atom m a in
     VM.add v (shlB n bs) m
  | Ishls (l, v, a, n) ->
     let n = Z.to_int n in
     let bs = value_of_atom m a in
     VM.add l (high n bs) (VM.add v (shlB n bs) m)
  | Ishr (v, a, n) ->
     let n = to_nat (value_of_atom m n) in
     let bs = value_of_atom m a in
     VM.add v (shrB n bs) m
  | Ishrs (v, l, a, n) ->
     let n = Z.to_int n in
     let bs = value_of_atom m a in
     VM.add v (shrB n bs) (VM.add l (low n bs) m)
  | Isar (v, a, n) ->
     let n = to_nat (value_of_atom m n) in
     let bs = value_of_atom m a in
     VM.add v (sarB n bs) m
  | Isars (v, l, a, n) ->
     let n = Z.to_int n in
     let bs = value_of_atom m a in
     VM.add v (sarB n bs) (VM.add l (low n bs) m)
  | Icshl (vh, vl, a1, a2, n) ->
     let bs1 = value_of_atom m a1 in
     let bs2 = value_of_atom m a2 in
     let n = Z.to_int n in
     let shifted = shlB n (cat bs2 bs1) in
     VM.add vh (high (size bs1) shifted) (VM.add vl (shrB n (low (size bs2) shifted)) m)
  | Icshr (vh, vl, a1, a2, n) ->
     let bs1 = value_of_atom m a1 in
     let bs2 = value_of_atom m a2 in
     let n = Z.to_int n in
     let shifted = shrB n (cat bs2 bs1) in
     VM.add vh (high (size bs1) shifted) (VM.add vl (low (size bs2) shifted) m)
  | Icshrs (vh, vl, l, a1, a2, n) ->
     let bs1 = value_of_atom m a1 in
     let bs2 = value_of_atom m a2 in
     let n = Z.to_int n in
     let shifted = shrB n (cat bs2 bs1) in
     let shifted_out = low n bs2 in
     VM.add vh (high (size bs1) shifted) (VM.add vl (low (size bs2) shifted) (VM.add l shifted_out m))
  | Irol (v, a, n) ->
     let bs = value_of_atom m a in
     VM.add v (rolB (Z.to_int n) bs) m
  | Iror (v, a, n) ->
     let bs = value_of_atom m a in
     VM.add v (rorB (Z.to_int n) bs) m
  | Inondet v -> VM.add v (List.init (size_of_var v) (fun _ -> Random.bool())) m
  | Icmov (v, c, a1, a2) ->
     let cs = value_of_atom m c in
     let bs1 = value_of_atom m a1 in
     let bs2 = value_of_atom m a2 in
     VM.add v (if to_bool cs then bs1 else bs2) m
  | Inop -> m
  | Inot (v, a) ->
     let bs = value_of_atom m a in
     VM.add v (invB bs) m
  | Iadd (v, a1, a2) ->
     let bs1 = value_of_atom m a1 in
     let bs2 = value_of_atom m a2 in
     VM.add v (addB bs1 bs2) m
  | Iadds (c, v, a1, a2) ->
     let bs1 = value_of_atom m a1 in
     let bs2 = value_of_atom m a2 in
     let (cb, bs) = adcB false bs1 bs2 in
     VM.add c (of_bit cb) (VM.add v bs m)
  | Iadc (v, a1, a2, y) ->
     let bs1 = value_of_atom m a1 in
     let bs2 = value_of_atom m a2 in
     let by = to_bit (value_of_atom m y) in
     let (_, bs) = adcB by bs1 bs2 in
     VM.add v bs m
  | Iadcs (c, v, a1, a2, y) ->
     let bs1 = value_of_atom m a1 in
     let bs2 = value_of_atom m a2 in
     let by = to_bit (value_of_atom m y) in
     let (cb, bs) = adcB by bs1 bs2 in
     VM.add c (of_bit cb) (VM.add v bs m)
  | Isub (v, a1, a2) ->
     let bs1 = value_of_atom m a1 in
     let bs2 = value_of_atom m a2 in
     VM.add v (subB bs1 bs2) m
  | Isubc (c, v, a1, a2) ->
     let bs1 = value_of_atom m a1 in
     let bs2 = value_of_atom m a2 in
     let (cb, bs) = adcB true bs1 (invB bs2) in
     VM.add c (of_bit cb) (VM.add v bs m)
  | Isubb (b, v, a1, a2) ->
     let bs1 = value_of_atom m a1 in
     let bs2 = value_of_atom m a2 in
     let (bb, bs) = sbbB false bs1 bs2 in
     VM.add b (of_bit bb) (VM.add v bs m)
  | Isbc (v, a1, a2, y) ->
     let bs1 = value_of_atom m a1 in
     let bs2 = value_of_atom m a2 in
     let by = to_bit (value_of_atom m y) in
     let (_, bs) = adcB by bs1 (invB bs2) in
     VM.add v bs m
  | Isbcs (c, v, a1, a2, y) ->
     let bs1 = value_of_atom m a1 in
     let bs2 = value_of_atom m a2 in
     let by = to_bit (value_of_atom m y) in
     let (cb, bs) = adcB by bs1 (invB bs2) in
     VM.add c (of_bit cb) (VM.add v bs m)
  | Isbb (v, a1, a2, y) ->
     let bs1 = value_of_atom m a1 in
     let bs2 = value_of_atom m a2 in
     let by = to_bit (value_of_atom m y) in
     let (_, bs) = sbbB by bs1 bs2 in
     VM.add v bs m
  | Isbbs (b, v, a1, a2, y) ->
     let bs1 = value_of_atom m a1 in
     let bs2 = value_of_atom m a2 in
     let by = to_bit (value_of_atom m y) in
     let (bb, bs) = sbbB by bs1 bs2 in
     VM.add b (of_bit bb) (VM.add v bs m)
  | Imul (v, a1, a2) ->
     let bs1 = value_of_atom m a1 in
     let bs2 = value_of_atom m a2 in
     VM.add v (mulB bs1 bs2) m
  | Imuls (c, v, a1, a2) ->
     let bs1 = value_of_atom m a1 in
     let bs2 = value_of_atom m a2 in
     let (bsh, bsl) = (if atom_is_signed a1 then smullB else umullB) bs1 bs2 in
     VM.add c (of_bit (not (is_zero bsh))) (VM.add v bsl m)
  | Imull (vh, vl, a1, a2) ->
     let bs1 = value_of_atom m a1 in
     let bs2 = value_of_atom m a2 in
     let (bsh, bsl) = (if atom_is_signed a1 then smullB else umullB) bs1 bs2 in
     VM.add vh bsh (VM.add vl bsl m)
  | Imulj (v, a1, a2) ->
     let bs1 = value_of_atom m a1 in
     let bs2 = value_of_atom m a2 in
     let bs = (if atom_is_signed a1 then smuljB else umuljB) bs1 bs2 in
     VM.add v bs m
  | Isplit (vh, vl, a, n) ->
     let bs = value_of_atom m a in
     let n = Z.to_int n in
     let (bsh, bsl) = (if atom_is_signed a then ssplB else usplB) bs n in
     VM.add vh bsh (VM.add vl bsl m)
  | Ispl (vh, vl, a, n) ->
     let bs = value_of_atom m a in
     let n = Z.to_int n in
     let (bsh, bsl) = (high (size_of_atom a - n) bs, low n bs) in
     VM.add vh bsh (VM.add vl bsl m)
  | Iand (v, a1, a2) ->
     let bs1 = value_of_atom m a1 in
     let bs2 = value_of_atom m a2 in
     VM.add v (andB bs1 bs2) m
  | Ior (v, a1, a2) ->
     let bs1 = value_of_atom m a1 in
     let bs2 = value_of_atom m a2 in
     VM.add v (orB bs1 bs2) m
  | Ixor (v, a1, a2) ->
     let bs1 = value_of_atom m a1 in
     let bs2 = value_of_atom m a2 in
     VM.add v (xorB bs1 bs2) m
  | Icast (_od, v, a) ->
     (* TODO: update _od *)
     let bs = value_of_atom m a in
     let ty = typ_of_atom a in
     VM.add v ((match ty with
                | Tuint _ -> ucastB
                | Tsint _ -> scastB) bs (size_of_var v)) m
  | Ivpc (v, a) ->
     let bs = value_of_atom m a in
     let ty = typ_of_atom a in
     VM.add v ((match ty with
                | Tuint _ -> ucastB
                | Tsint _ -> scastB) bs (size_of_var v)) m
  | Ijoin (v, ah, al) ->
     let bsh = value_of_atom m ah in
     let bsl = value_of_atom m al in
     VM.add v (cat bsl bsh) m
  | Iassert _ -> m
  | Iassume _ -> m
  | Icut _ -> m
  | Ighost _ -> m



(** Manager for Interactive Simulation *)

exception NoMoreInstr
exception VarNotFound
exception ValueNotFound

let print_indexed_instr (k, i) = print_endline ("Instr #" ^ string_of_int k ^ ": " ^ string_of_instr i)

class shellManager = fun m p ->
  let add_instr_id p = List.mapi (fun i instr -> (i, instr)) p in
  let add_var_to_table v t = SM.add (string_of_var v) v t in
  let construct_var_table m = VM.fold (fun x _ t -> add_var_to_table x t) m SM.empty in
  let ip = add_instr_id p in
  object(self)
    val mutable stack = [construct_var_table m, m, ip]

    val mutable watched = VS.empty

    (* Runs the remaining program *)
    method run =
      match self#get_next_instr with
      | Some _ -> ignore(self#next1); self#run
      | None -> ()

    (* Executes and returns the next instruction. *)
    method next1 =
      match stack with
      | (t, m, (k, i)::p)::_ -> let m' = simulate_instr m i in
                                let t' = VS.fold add_var_to_table (lvs_instr i) t in
                                let _ = stack <- (t', m', p)::stack in
                                (k, i)
      | _ -> raise NoMoreInstr

    method next n =
      if n <= 0 then self#get_next_instr
      else let _ = self#next1 in
           self#next (n - 1)

    (* Undos and returns the previous instruction.*)
    method prev1 =
      match stack with
      | _::(((_, _, (k, i)::_)::_) as p) -> let _ = stack <- p in
                                            (k, i)
      | _ -> raise NoMoreInstr

    method prev n =
      if n <= 0 then self#get_prev_instr
      else let _ = self#prev1 in
           self#prev (n - 1)

    method goto n =
      let m = List.length stack - 1 in
      let rec helper n =
        if n = 0 then ()
        else if n < 0 then let _ =
                             try
                               ignore(self#prev1)
                             with NoMoreInstr -> () in
                           helper (n + 1)
        else let _ =
               try
                 ignore(self#next1)
               with NoMoreInstr -> () in
             helper (n - 1)
      in
      helper (n - m)

    method get_table =
      match stack with
      | (t, _, _)::_ -> t
      | _ -> failwith ("Unexpected case")

    method get_var_by_name n =
      let t = self#get_table in
      try
        SM.find n t
      with Not_found ->
        raise VarNotFound

    method get_vars_by_pattern p =
      let t = self#get_table in
      SM.fold (fun vn v res ->
          if Str.string_match (Str.regexp ("^" ^ p ^ "$")) vn 0 then VS.add v res
          else res
        ) t VS.empty

    method get_history = stack

    method get_map =
      match stack with
      | (_, m, _)::_ -> m
      | _ -> failwith ("Unexpected case")

    method get_program =
      match stack with
      | (_, _, p)::_ -> p
      | _ -> failwith ("Unexpected case")

    method get_value v =
      let m = self#get_map in
      try
        VM.find v m
      with Not_found ->
        raise ValueNotFound

    method get_next_instr =
      match stack with
      | (_, _, (k, i)::_)::_ -> Some (k, i)
      | _ -> None

    method get_prev_instr =
      match stack with
      | _::(_, _, (k, i)::_)::_ -> Some (k, i)
      | _ -> None

    method watch_var v = watched <- VS.add v watched

    method unwatch_var v = watched <- VS.remove v watched

    method find_instrs str =
      if str = "" then []
      else
        let r = Str.regexp_string str in
        let rec helper res ip =
          match ip with
          | [] -> List.rev res
          | ((_, i) as hd)::tl -> (try
                                     let _ = (Str.search_forward r (string_of_instr i) 0) in
                                     helper (hd::res) tl
                                   with Not_found ->
                                     helper res tl) in
        helper [] ip

    method print_program =
      match stack with
      | (_, _, p)::past -> let past = NBits.take (min !num_prev_instrs_to_print (List.length past)) past in
                           let past = List.flatten (List.map
                                                      (fun (_, _, p) ->
                                                        match p with
                                                        | i::_ -> [i]
                                                        | _ -> []) past) in
                           let post = NBits.take (min !num_next_instrs_to_print (List.length p)) p in
                           let _ = List.iter print_indexed_instr (List.rev past) in
                           let _ = print_endline ("->") in
                           let _ = List.iter print_indexed_instr post in
                           ()
      | _ -> ()

    method print_watched =
      VS.iter (fun x ->
          try
            let v = self#get_value x in
            print_endline (string_of_var_with_value x v)
          with ValueNotFound ->
            print_endline (string_of_var x ^ ": Uninitialized")
        ) watched
  end


(** Commands for Interactive Simulation *)

exception ArgumentRequired
exception TooManyArguments

let highlight s = "\027[1m" ^ s ^ "\027[0m"

type argument = string

type 'a command = { cname : string;
                    calias : string list;
                    cdesc : string;
                    chelp : string;
                    cexec : 'a -> argument list -> 'a }

let commands = Hashtbl.create 10

let find_command name = Hashtbl.find commands name

let register_command cmd =
  List.iter (fun name -> Hashtbl.replace commands name cmd) (cmd.cname::cmd.calias)

let get_commands () =
  let m = Hashtbl.fold (fun _ cmd res -> SM.add cmd.cname cmd res) commands SM.empty in
  let cmds_rev = SM.fold (fun _ cmd res -> cmd::res) m [] in
  List.rev cmds_rev

let parse_args_int1 ?default args =
  match args with
  | [] -> (match default with
           | None -> raise ArgumentRequired
           | Some d -> d)
  | hd::[] -> convert_to_int hd
  | _ -> raise TooManyArguments

let parse_args_string1 ?default args =
  match args with
  | [] -> (match default with
           | None -> raise ArgumentRequired
           | Some d -> d)
  | hd::[] -> hd
  | _ -> raise TooManyArguments

let parse_args_string1_int1 ?sdef ?idef args =
  match args with
  | [] -> (match sdef, idef with
           | Some s, Some i -> (s, i)
           | _, _ -> raise ArgumentRequired)
  | s::[] -> (match idef with
               | None -> raise ArgumentRequired
               | Some i -> (s, i))
  | s::istr::[] -> let i = convert_to_int istr in
                   (s, i)
  | _ -> raise TooManyArguments

let parse_args_command1 args =
  match args with
  | [] -> raise ArgumentRequired
  | n::[] -> (try find_command n
              with Not_found -> raise (InvalidArgument ("Command " ^ n ^ " is not found.")))
  | _ -> raise TooManyArguments

let exec_exit () = exit 0

let exec_run m = m#run; m#print_program

let exec_next m n =
  try
    ignore(m#next n); m#print_program
  with
    NoMoreInstr -> print_endline ("No more instruction to be executed.")

let exec_previous m n =
  try
    ignore(m#prev n); m#print_program
  with
    NoMoreInstr -> print_endline ("No more instruction to be reversed.")

let exec_goto m n =
  if n < 0 then print_endline ("Invalid program location.")
  else (ignore(m#goto n); m#print_program)

let exec_find m pattern =
  let instrs = m#find_instrs pattern in
  List.iter print_indexed_instr instrs

let print_command_help c = print_endline c.chelp; print_endline ""

let exec_help ?cmd () =
  let cmds =
    match cmd with
    | Some c -> [c]
    | None -> get_commands() in
  List.iter print_command_help cmds

let exec_print m regexp args =
  let print_var xn =
    try
      let xs =
        if regexp then m#get_vars_by_pattern xn
        else VS.singleton (m#get_var_by_name xn) in
      VS.iter (fun x ->
          try
            let v = m#get_value x in
            print_endline (string_of_var_with_value x v)
          with ValueNotFound -> print_endline ("Value of " ^ string_of_var x ^ " is not found.")
        ) xs
    with VarNotFound -> print_endline (xn ^ ": Uninitialized") in
  (match args with
   | [] -> m#print_program
   | _ -> List.iter print_var args)

let exec_watch m regexp args =
  let watch_var xn =
    try
      let xs =
        if regexp then m#get_vars_by_pattern xn
        else VS.singleton (m#get_var_by_name xn) in
      VS.iter (fun v -> m#watch_var v; print_endline (string_of_var v ^ ": Watched")) xs
    with VarNotFound -> print_endline (xn ^ ": Uninitialized") in
  (match args with
   | [] -> m#print_watched
   | _ -> List.iter watch_var args)

let exec_unwatch m regexp args =
  let unwatch_var xn =
    try
      let xs =
        if regexp then m#get_vars_by_pattern xn
        else VS.singleton (m#get_var_by_name xn) in
      VS.iter (fun v -> m#unwatch_var v; print_endline (string_of_var v ^ ": Unwatched")) xs
    with VarNotFound -> print_endline (xn ^ ": Uninitialized") in
  List.iter unwatch_var args

let exec_dump m = dump_map (m#get_map)

let exec_depend m var i =
  let history = List.filter (fun (_, _, ps) -> match ps with
                                               | (j, _)::_ -> j >= i
                                               | _ -> false) m#get_history in
  match history with
  | [] -> ()
  | (_, vm, _)::tl -> let (vm, vars) = List.fold_left (
                                           fun (_, vars) (_, vm_i, ps_i) ->
                                           match ps_i with
                                           | (_, i)::_ -> let vars' = if is_annotation i then vars
                                                                      else let lvs = lvs_instr i in
                                                                           if VS.disjoint vars lvs then vars
                                                                           else VS.union (VS.diff vars lvs) (rvs_instr i) in
                                                          (vm_i, vars')
                                           | _ -> assert(false)
                                         ) (vm, VS.singleton var) tl in
                      VS.iter (
                          fun x ->
                          try
                            print_endline (string_of_var_with_value x (VM.find x vm))
                          with Not_found ->
                            print_endline (string_of_var x ^ ": Uninitialized")
                        ) vars

let exec_slice m var i =
  let history = List.filter (fun (_, _, ps) -> match ps with
                                               | (j, _)::_ -> j >= i
                                               | _ -> false) m#get_history in
  let (relevant_instrs, _) = List.fold_left (
                                 fun (instrs, vars) (_, _, ps_i) ->
                                 match ps_i with
                                 | ((_, i) as hd)::_ -> if is_annotation i then (instrs, vars)
                                                        else let lvs = lvs_instr i in
                                                             if VS.disjoint vars lvs then (instrs, vars)
                                                             else (hd::instrs, VS.union (VS.diff vars lvs) (rvs_instr i))
                                 | _ -> assert(false)
                               ) ([], VS.singleton var) history in
  if !apply_assignment_rewriting then let (_, ssa) = ssa_program VM.empty (snd (List.split relevant_instrs)) in
                                      match List.rev ssa with
                                      | last::ssa_rev -> let (am1, em1, rm1, p1) = get_subst_maps (List.rev ssa_rev) in
                                                         let (am2, em2, rm2, p2) = get_subst_maps_vpc p1 in
                                                         let choice _ x _ = Some x in
                                                         subst_program (VM.union choice am1 am2) (VM.union choice em1 em2) (VM.union choice rm1 rm2) (List.rev (last::(List.rev p2)))
                                                         |> dessa_program
                                                         |> List.iter (fun i -> print_endline (string_of_instr i))
                                      | _ -> ()
  else List.iter print_indexed_instr relevant_instrs

let command_exit = {
    cname = "exit";
    calias = ["quit"; "q"];
    cdesc = "Quit interactive mode.";
    chelp = String.concat "\n" [highlight("exit/quit/q"); "\t\t\tQuit interactive mode.";];
    cexec = fun _ _ -> exec_exit()
  }

let command_run = {
    cname = "run";
    calias = ["r"];
    cdesc = "Run until the end of the program.";
    chelp = String.concat "\n" [highlight("run/r"); "\t\t\tRun the program."];
    cexec = fun m _ -> let _ = exec_run m in
                       m
  }

let command_next = {
    cname = "next";
    calias = ["n"];
    cdesc = "Run the next N instruction(s).";
    chelp = String.concat "\n" [highlight("next/n [N]"); "\t\t\tRun the next N instructions."];
    cexec = fun m args -> let _ =
                            try
                              let n = parse_args_int1 ~default:1 args in
                              exec_next m n
                            with
                              InvalidArgument msg -> print_endline msg
                            | TooManyArguments -> print_endline("This command accepts at most one integer argument.") in
                          m
  }

let command_previous = {
    cname = "previous";
    calias = ["prev"; "v"];
    cdesc = "Undo the previous N instruction(s).";
    chelp = String.concat "\n" [highlight("previous/prev/v [N]"); "\t\t\tUndo the previous N instructions."];
    cexec = fun m args -> let _ =
                            try
                              let n = parse_args_int1 ~default:1 args in
                              exec_previous m n
                            with
                              InvalidArgument msg -> print_endline msg
                            | TooManyArguments -> print_endline("This command accepts at most one integer argument.") in
                          m
  }

let command_goto = {
    cname = "goto";
    calias = ["g"];
    cdesc = "Run until the N-th instruction is reached.";
    chelp = String.concat "\n" [highlight("goto/g N"); "\t\t\tRun until the N-th instruction is reached."];
    cexec = fun m args -> let _ =
                            try
                              let n = parse_args_int1 args in
                              exec_goto m n
                            with InvalidArgument msg -> print_endline msg
                               | ArgumentRequired | TooManyArguments -> print_endline("This command accepts exactly one integer argument.") in
                          m
  }

let command_find = {
    cname = "find";
    calias = ["f"];
    cdesc = "Search for instructions.";
    chelp = String.concat "\n" [highlight("find/f STR"); "\t\t\tSearch for instructions."];
    cexec = fun m args -> let _ =
                            try
                              let pattern = parse_args_string1 args in
                              exec_find m pattern
                            with ArgumentRequired | TooManyArguments -> print_endline("This command accepts exactly one double-quoted string argument.") in
                          m
  }

let command_print = {
    cname = "print";
    calias = ["p"];
    cdesc = "Print the instructions near the current program location or print values of specified variables.";
    chelp = String.concat "\n" [highlight("print/p [VAR VAR ...]"); "\t\t\tPrint the instructions near the current program"; "\t\t\tlocation or print values of specified variables."];
    cexec = fun m args -> let _ = exec_print m false args in
                          m
  }

let command_rprint = {
    cname = "rprint";
    calias = ["rp"];
    cdesc = "Print the instructions near the current program location or print values of variables that match one of the specified patterns.";
    chelp = String.concat "\n" [highlight("rprint/rp [PATTERN PATTERN ...]"); "\t\t\tPrint the instructions near the current program"; "\t\t\tlocation or print values of variables that match one"; "\t\t\tof the specified patterns."];
    cexec = fun m args -> let _ = exec_print m true args in
                          m
  }

let command_watch = {
    cname = "watch";
    calias = ["w"];
    cdesc = "Print values of variables in the watch list or add variables to the watch list.";
    chelp = String.concat "\n" [highlight("watch/w [VAR VAR ...]"); "\t\t\tPrint values of variables in the watch list or add"; "\t\t\tvariables to the watch list."];
    cexec = fun m args -> let _ = exec_watch m false args in
                          m
  }

let command_rwatch = {
    cname = "rwatch";
    calias = ["rw"];
    cdesc = "Print values of variables in the watch list or add variables matching one of the specified patterns to the watch list.";
    chelp = String.concat "\n" [highlight("rwatch/rw [PATTERN PATTERN ...]"); "\t\t\tPrint values of variables in the watch list or add"; "\t\t\tvariables matching one of the specified patterns to"; "\t\t\tthe watch list."];
    cexec = fun m args -> let _ = exec_watch m true args in
                          m
  }

let command_unwatch = {
    cname = "unwatch";
    calias = ["uw"];
    cdesc = "Remove variables from the watch list.";
    chelp = String.concat "\n" [highlight("unwatch/uw [VAR VAR ...]"); "\t\t\tRemove variables from the watch list."];
    cexec = fun m args -> let _ = exec_unwatch m false args in
                          m
  }

let command_runwatch = {
    cname = "runwatch";
    calias = ["ruw"];
    cdesc = "Remove variables matching one of the specified patterns from the watch list.";
    chelp = String.concat "\n" [highlight("runwatch/ruw [PATTERN PATTERN ...]"); "\t\t\tRemove variables matching one of the specified patterns"; "\t\t\tfrom the watch list."];
    cexec = fun m args -> let _ = exec_unwatch m true args in
                          m
  }

let command_dump = {
    cname = "dump";
    calias = ["d"];
    cdesc = "Print values of all variables.";
    chelp = String.concat "\n" [highlight("dump/d"); "\t\t\tPrint values of all variables."];
    cexec = fun m _ -> let _ = exec_dump m in
                       m
  }

let command_set = {
    cname = "set";
    calias = ["s"];
    cdesc = "Set an option.";
    chelp = String.concat "\n" [highlight("set/s [NAME [VALUE VALUE ...]]"); "\t\t\tSet an option or print options."];
    cexec = fun m args -> let _ =
                            try parse_options args
                            with InvalidArgument msg -> print_endline msg in
                          m
  }

let command_depend = {
    cname = "depend";
    calias = [];
    cdesc = "Print dependency of a variable.";
    chelp = String.concat "\n" [highlight("depend VAR [N]"); "\t\t\tPrint dependent variables right before the N-th"; "\t\t\t(default is 0-th) instruction together with their"; "\t\t\tvalues."];
    cexec = fun m args -> let _ =
                            try
                              let (vname, n) = parse_args_string1_int1 ~idef:0 args in
                              let _ =
                                try
                                  let var = m#get_var_by_name vname in
                                  exec_depend m var n
                                with VarNotFound -> print_endline ("Variable " ^ vname ^ " is not found.") in
                              ()
                            with InvalidArgument msg -> print_endline msg
                               | ArgumentRequired | TooManyArguments -> print_endline("This command accepts exactly one string argument followed by one integer argument.") in
                          m
  }

let command_slice = {
    cname = "slice";
    calias = [];
    cdesc = "Print a sliced program that computes the value of a variable.";
    chelp = String.concat "\n" [highlight("slice VAR [N]"); "\t\t\tPrint a sliced program after the N-th (default is 0-th)"; "\t\t\tinstruction. The program computes the value of a"; "\t\t\tspecified variable at the current program location."];
    cexec = fun m args -> let _ =
                            try
                              let (vname, n) = parse_args_string1_int1 ~idef:0 args in
                              let _ =
                                try
                                  let var = m#get_var_by_name vname in
                                  exec_slice m var n
                                with VarNotFound -> print_endline ("Variable " ^ vname ^ " is not found.") in
                              ()
                            with InvalidArgument msg -> print_endline msg
                               | ArgumentRequired | TooManyArguments -> print_endline("This command accepts exactly one string argument followed by one integer argument.") in
                          m
  }

let command_help = {
    cname = "help";
    calias = ["h"; "?"];
    cdesc = "Print the help message.";
    chelp = String.concat "\n" [highlight("help/h/? [COMMAND]"); "\t\t\tPrint the help message for all commands or the"; "\t\t\tspecified command."];
    cexec = fun m args -> let _ =
                            try
                              let cmd = parse_args_command1 args in
                              exec_help ~cmd:cmd ()
                            with ArgumentRequired -> exec_help ()
                               | InvalidArgument msg -> print_endline msg
                               | TooManyArguments -> print_endline("This command accepts at most one string argument.") in
                          m
  }

let _ = List.iter register_command [
            command_exit; command_run; command_next; command_previous; command_goto;
            command_find; command_print; command_rprint; command_watch; command_rwatch;
            command_unwatch; command_runwatch; command_dump; command_set; command_depend;
            command_slice; command_help
          ]


(** Top-level Functions for Simulation *)

exception InvalidCommand of string

(* Create a map from variables to values. *)
let make_map vars vals = List.fold_left2 (fun m x v -> VM.add x v m) VM.empty vars vals

(* Simulate a program. *)
let simulate ?steps:(steps=(-1)) ?dumps:(dumps=[]) m p =
  let _ = print_endline ("Initial:") in
  let _ = dump_map m in
  let _ = print_newline () in
  let (m, _) = List.fold_left (
                   fun (m, step) i ->
                   if steps < 0 || step < steps then let _ = print_endline ("Instruction #" ^ string_of_int step ^ ": " ^ string_of_instr i) in
                                                     let m' = simulate_instr m i in
                                                     let _ = if in_ranges step dumps then (dump_map m'; print_newline ()) in
                                                     (m', step + 1)
                   else (m, step)
                 ) (m, 0) p in
  let _ = print_newline () in
  let _ = print_endline ("Final:") in
  let _ = dump_map m in
  ()

(* Open an interactive shell. *)
let shell m p =
  let manager = new shellManager m p in
  let prompt () =
    let f _ = let _ = print_string "\027[34mCryptoLine> \027[37m" in
              try
                Some (read_line ())
              with End_of_file ->
                Some "exit"
    in
    Stream.from f in
  let parse_command str =
    try
      CommandParser.command CommandLexer.token (Lexing.from_string str)
    with _ -> raise (InvalidCommand str) in
  let process_command cmd_str =
    let cmd_str = String.trim cmd_str in
    if String.length cmd_str = 0 then ()
    else
      let (name, args) = (parse_command cmd_str) in
      try
        let cmd = find_command name in
        ignore(cmd.cexec manager args)
      with Not_found -> print_endline ("Command " ^ name ^ " is not found.")
  in
  Stream.iter process_command (prompt())
