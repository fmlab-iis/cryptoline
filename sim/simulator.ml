
open Ast.Cryptoline
open NBits
open Command
open Utils

let make_map vars vals = List.fold_left2 (fun m x v -> VM.add x v m) VM.empty vars vals

let string_of_var_with_value x v =
  let is_signed = var_is_signed x in
  let eval = if is_signed then signed else unsigned in
  string_of_var x ^ ": " ^ string_of_bits v
  ^ " (" ^ (if is_signed then "signed " else "unsigned ") ^ Z.to_string (eval v) ^ ")"

let dump_map m =
  VM.iter (fun x v -> print_endline (string_of_var_with_value x v)) m

let value_of_atomic m a =
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

let simulate_instr m i =
  match i with
  | Imov (v, a) -> VM.add v (value_of_atomic m a) m
  | Ishl (v, a, n) ->
     let n = Z.to_int n in
     let bs = value_of_atomic m a in
     VM.add v (shlB n bs) m
  | Icshl (vh, vl, a1, a2, n) ->
     let bs1 = value_of_atomic m a1 in
     let bs2 = value_of_atomic m a2 in
     let n = Z.to_int n in
     let shifted = shlB n (cat bs2 bs1) in
     VM.add vh (high (size bs1) shifted) (VM.add vl (shrB n (low (size bs2) shifted)) m)
  | Inondet v -> VM.add v (List.init (size_of_var v) (fun _ -> Random.bool())) m
  | Icmov (v, c, a1, a2) ->
     let cs = value_of_atomic m c in
     let bs1 = value_of_atomic m a1 in
     let bs2 = value_of_atomic m a2 in
     VM.add v (if to_bool cs then bs1 else bs2) m
  | Inop -> m
  | Inot (v, a) ->
     let bs = value_of_atomic m a in
     VM.add v (invB bs) m
  | Iadd (v, a1, a2) ->
     let bs1 = value_of_atomic m a1 in
     let bs2 = value_of_atomic m a2 in
     VM.add v (addB bs1 bs2) m
  | Iadds (c, v, a1, a2) ->
     let bs1 = value_of_atomic m a1 in
     let bs2 = value_of_atomic m a2 in
     let (cb, bs) = adcB false bs1 bs2 in
     VM.add c (of_bit cb) (VM.add v bs m)
  | Iaddr (c, v, a1, a2) ->
     let bs1 = value_of_atomic m a1 in
     let bs2 = value_of_atomic m a2 in
     VM.add c (of_bit false) (VM.add v (addB bs1 bs2) m)
  | Iadc (v, a1, a2, y) ->
     let bs1 = value_of_atomic m a1 in
     let bs2 = value_of_atomic m a2 in
     let by = to_bit (value_of_atomic m y) in
     let (_, bs) = adcB by bs1 bs2 in
     VM.add v bs m
  | Iadcs (c, v, a1, a2, y) ->
     let bs1 = value_of_atomic m a1 in
     let bs2 = value_of_atomic m a2 in
     let by = to_bit (value_of_atomic m y) in
     let (cb, bs) = adcB by bs1 bs2 in
     VM.add c (of_bit cb) (VM.add v bs m)
  | Iadcr (c, v, a1, a2, y) ->
     let bs1 = value_of_atomic m a1 in
     let bs2 = value_of_atomic m a2 in
     let by = to_bit (value_of_atomic m y) in
     let (_, bs) = adcB by bs1 bs2 in
     VM.add c (of_bit false) (VM.add v bs m)
  | Isub (v, a1, a2) ->
     let bs1 = value_of_atomic m a1 in
     let bs2 = value_of_atomic m a2 in
     VM.add v (subB bs1 bs2) m
  | Isubc (c, v, a1, a2) ->
     let bs1 = value_of_atomic m a1 in
     let bs2 = value_of_atomic m a2 in
     let (cb, bs) = adcB true bs1 (invB bs2) in
     VM.add c (of_bit cb) (VM.add v bs m)
  | Isubb (b, v, a1, a2) ->
     let bs1 = value_of_atomic m a1 in
     let bs2 = value_of_atomic m a2 in
     let (bb, bs) = sbbB false bs1 bs2 in
     VM.add b (of_bit bb) (VM.add v bs m)
  | Isubr (b, v, a1, a2) ->
     let bs1 = value_of_atomic m a1 in
     let bs2 = value_of_atomic m a2 in
     VM.add b (of_bit false) (VM.add v (subB bs1 bs2) m)
  | Isbc (v, a1, a2, y) ->
     let bs1 = value_of_atomic m a1 in
     let bs2 = value_of_atomic m a2 in
     let by = to_bit (value_of_atomic m y) in
     let (_, bs) = adcB by bs1 (invB bs2) in
     VM.add v bs m
  | Isbcs (c, v, a1, a2, y) ->
     let bs1 = value_of_atomic m a1 in
     let bs2 = value_of_atomic m a2 in
     let by = to_bit (value_of_atomic m y) in
     let (cb, bs) = adcB by bs1 (invB bs2) in
     VM.add c (of_bit cb) (VM.add v bs m)
  | Isbcr (c, v, a1, a2, y) ->
     let bs1 = value_of_atomic m a1 in
     let bs2 = value_of_atomic m a2 in
     let by = to_bit (value_of_atomic m y) in
     let (_, bs) = adcB by bs1 (invB bs2) in
     VM.add c (of_bit false) (VM.add v bs m)
  | Isbb (v, a1, a2, y) ->
     let bs1 = value_of_atomic m a1 in
     let bs2 = value_of_atomic m a2 in
     let by = to_bit (value_of_atomic m y) in
     let (_, bs) = sbbB by bs1 bs2 in
     VM.add v bs m
  | Isbbs (b, v, a1, a2, y) ->
     let bs1 = value_of_atomic m a1 in
     let bs2 = value_of_atomic m a2 in
     let by = to_bit (value_of_atomic m y) in
     let (bb, bs) = sbbB by bs1 bs2 in
     VM.add b (of_bit bb) (VM.add v bs m)
  | Isbbr (b, v, a1, a2, y) ->
     let bs1 = value_of_atomic m a1 in
     let bs2 = value_of_atomic m a2 in
     let by = to_bit (value_of_atomic m y) in
     let (_, bs) = sbbB by bs1 bs2 in
     VM.add b (of_bit false) (VM.add v bs m)
  | Imul (v, a1, a2) ->
     let bs1 = value_of_atomic m a1 in
     let bs2 = value_of_atomic m a2 in
     VM.add v (mulB bs1 bs2) m
  | Imuls (c, v, a1, a2) ->
     let bs1 = value_of_atomic m a1 in
     let bs2 = value_of_atomic m a2 in
     let (bsh, bsl) = (if atomic_is_signed a1 then smullB else umullB) bs1 bs2 in
     VM.add c (of_bit (not (is_zero bsh))) (VM.add v bsl m)
  | Imulr (c, v, a1, a2) ->
     let bs1 = value_of_atomic m a1 in
     let bs2 = value_of_atomic m a2 in
     let (_, bsl) = (if atomic_is_signed a1 then smullB else umullB) bs1 bs2 in
     VM.add c (of_bit false) (VM.add v bsl m)
  | Imull (vh, vl, a1, a2) ->
     let bs1 = value_of_atomic m a1 in
     let bs2 = value_of_atomic m a2 in
     let (bsh, bsl) = (if atomic_is_signed a1 then smullB else umullB) bs1 bs2 in
     VM.add vh bsh (VM.add vl bsl m)
  | Imulj (v, a1, a2) ->
     let bs1 = value_of_atomic m a1 in
     let bs2 = value_of_atomic m a2 in
     let bs = (if atomic_is_signed a1 then smuljB else umuljB) bs1 bs2 in
     VM.add v bs m
  | Isplit (vh, vl, a, n) ->
     let bs = value_of_atomic m a in
     let n = Z.to_int n in
     let (bsh, bsl) = (if atomic_is_signed a then ssplB else usplB) bs n in
     VM.add vh bsh (VM.add vl bsl m)
  | Iand (v, a1, a2) ->
     let bs1 = value_of_atomic m a1 in
     let bs2 = value_of_atomic m a2 in
     VM.add v (andB bs1 bs2) m
  | Ior (v, a1, a2) ->
     let bs1 = value_of_atomic m a1 in
     let bs2 = value_of_atomic m a2 in
     VM.add v (orB bs1 bs2) m
  | Ixor (v, a1, a2) ->
     let bs1 = value_of_atomic m a1 in
     let bs2 = value_of_atomic m a2 in
     VM.add v (xorB bs1 bs2) m
  | Icast (_od, v, a) ->
     (* TODO: update _od *)
     let bs = value_of_atomic m a in
     let ty = typ_of_atomic a in
     VM.add v ((match ty with
                | Tuint _ -> ucastB
                | Tsint _ -> scastB) bs (size_of_var v)) m
  | Ivpc (v, a) ->
     let bs = value_of_atomic m a in
     let ty = typ_of_atomic a in
     VM.add v ((match ty with
                | Tuint _ -> ucastB
                | Tsint _ -> scastB) bs (size_of_var v)) m
  | Ijoin (v, ah, al) ->
     let bsh = value_of_atomic m ah in
     let bsl = value_of_atomic m al in
     VM.add v (cat bsl bsh) m
  | Iassert _ -> m
  | Iassume _ -> m
  | Icut _ -> m
  | Ighost _ -> m

let in_ranges n rs = List.exists (in_range n) rs

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

exception NoMoreInstr
exception VarNotFound
exception ValueNotFound

let print_indexed_instr (k, i) = print_endline ("Instr #" ^ string_of_int k ^ ": " ^ string_of_instr i)

class shellManager = fun m p ->
  let max_prev_to_print = 5 in
  let max_next_to_print = 5 in
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
      | (_, _, p)::past -> let past = NBits.take (min max_prev_to_print (List.length past)) past in
                           let past = List.flatten (List.map
                                                      (fun (_, _, p) ->
                                                        match p with
                                                        | i::_ -> [i]
                                                        | _ -> []) past) in
                           let post = NBits.take (min max_next_to_print (List.length p)) p in
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

exception InvalidCommand of string

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
    with _ ->
      raise (InvalidCommand str) in
  let run_command cmd =
    match cmd with
    (* Quit debugger *)
    | CExit -> exit 0
    (* Run the remaining program *)
    | CRun -> manager#run; manager#print_program
    (* Execute the next instruction *)
    | CNext n -> (try
                    ignore(manager#next n); manager#print_program
                  with NoMoreInstr ->
                    print_endline ("No more instruction to be executed."))
    (* Undo the previous instruction *)
    | CPrevious n -> (try
                        ignore(manager#prev n); manager#print_program
                      with NoMoreInstr ->
                        print_endline ("No more instruction to be reversed."))
    (* Go to a specific instruction *)
    | CGoto n -> if n < 0 then print_endline ("Invalid program location.")
                 else (ignore(manager#goto n); manager#print_program)
    (* Find instructions. *)
    | CFind instr_str -> let instrs = manager#find_instrs instr_str in
                         List.iter print_indexed_instr instrs
    (* Print current program location or values of variables *)
    | CPrint (use_regexp, args) -> let print_var xn =
                                     try
                                       let xs =
                                         if use_regexp then manager#get_vars_by_pattern xn
                                         else VS.singleton (manager#get_var_by_name xn) in
                                       VS.iter (fun x ->
                                           try
                                             let v = manager#get_value x in
                                             print_endline (string_of_var_with_value x v)
                                           with ValueNotFound -> print_endline ("Value of " ^ string_of_var x ^ " is not found.")
                                         ) xs
                                     with VarNotFound -> print_endline (xn ^ ": Uninitialized") in
                                   (match args with
                                    | [] -> manager#print_program
                                    | _ -> List.iter print_var args)
    (* Print watched variables or watch/unwatch variables *)
    | CWatch (use_regexp, args) -> let watch_var xn =
                                     try
                                       let xs =
                                         if use_regexp then manager#get_vars_by_pattern xn
                                         else VS.singleton (manager#get_var_by_name xn) in
                                       VS.iter (fun v -> manager#watch_var v; print_endline (string_of_var v ^ ": Watched")) xs
                                     with VarNotFound -> print_endline (xn ^ ": Uninitialized") in
                                   (match args with
                                    | [] -> manager#print_watched
                                    | _ -> List.iter watch_var args)
    | CUnwatch (use_regexp, args) -> let unwatch_var xn =
                                       try
                                         let xs =
                                           if use_regexp then manager#get_vars_by_pattern xn
                                           else VS.singleton (manager#get_var_by_name xn) in
                                         VS.iter (fun v -> manager#unwatch_var v; print_endline (string_of_var v ^ ": Unwatched")) xs
                                       with VarNotFound -> print_endline (xn ^ ": Uninitialized") in
                                     List.iter unwatch_var args
    (* Dump memory *)
    | CDump -> dump_map (manager#get_map)
    (* Print help message *)
    | CHelp -> print_endline(Command.command_help()) in
  let process_command cmd_str =
    let cmd_str = String.trim cmd_str in
    if String.length cmd_str = 0 then ()
    else
      try
        run_command (parse_command cmd_str)
      with (InvalidCommand str) ->
        print_endline ("Invalid command: " ^ str)
  in
  Stream.iter process_command (prompt())
