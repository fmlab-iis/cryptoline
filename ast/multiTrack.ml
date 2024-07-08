
open Cryptoline
open Utils.Std


type 'a sml = ('a list) SM.t

let sml_empty () = SM.empty

let sml_singleton t es = SM.add t es SM.empty

let sml_add t (e : 'a) (m : 'a sml) =
  let es =
    try SM.find t m
    with Not_found -> [] in
  SM.add t (e::es) m

let sml_adds t (es : 'a list) (m : 'a sml) = List.fold_left (fun m e -> sml_add t e m) m es

let sml_keys (m : 'a sml) =
  SM.fold (fun k _ keys -> SS.add k keys) m SS.empty

let sml_find t (m : 'a sml) =
  try SM.find t m
  with Not_found -> []

let sml_untag (m : 'a sml) = SM.fold (fun _ es res -> List.rev_append es res) m [] |> List.rev

let sml_map_one (f : 'a -> 'b) (m : 'a sml) = SM.map (fun es -> List.rev_map f es |> List.rev) m

let sml_union (m1 : 'a sml) (m2 : 'a sml) =
  SM.fold (fun k vs m -> sml_adds k vs m) m1 m2

let sml_unions (ms : 'a sml list) =
  match ms with
  | [] -> sml_empty()
  | hd::tl -> List.fold_left (fun res m -> sml_union res m) hd tl


(** Multi-track Specifications *)

type tagged_ebexp = ebexp sml

type tagged_rbexp = rbexp sml

type tagged_bexp = tagged_ebexp * tagged_rbexp

type tagged_ebexp_prove_with = ebexp_prove_with sml

type tagged_rbexp_prove_with = rbexp_prove_with sml

type tagged_bexp_prove_with = tagged_ebexp_prove_with * tagged_rbexp_prove_with

type tagged_instr =
  | TImov of var * atom                                      (** Assignment *)
  | TIshl of var * atom * atom                               (** Left shift *)
  | TIshls of var * var * atom * Z.t                         (** Left shift *)
  | TIshr of var * atom * atom                               (** Logical right shift *)
  | TIshrs of var * var * atom * Z.t                         (** Logical right shift *)
  | TIsar of var * atom * atom                               (** Arithmetic right shift *)
  | TIsars of var * var * atom * Z.t                         (** Arithmetic right shift *)
  | TIcshl of var * var * atom * atom * Z.t                  (** Concatenated left shift *)
  | TIcshls of var * var * var * atom * atom * Z.t           (** Concatenated left shift *)
  | TIcshr of var * var * atom * atom * Z.t                  (** Concatenated right shift *)
  | TIcshrs of var * var * var * atom * atom * Z.t           (** Concatenated right shift *)
  | TIrol of var * atom * atom                               (** Left rotation *)
  | TIror of var * atom * atom                               (** Right rotation *)
  | TInondet of var                                          (** Nondeterministic assignment *)
  | TIcmov of var * atom * atom * atom                       (** Conditional assignment *)
  | TInop                                                    (** No-op *)
  | TInot of var * atom                                      (** Bit-wise NOT *)
  | TIadd of var * atom * atom                               (** Add *)
  | TIadds of var * var * atom * atom                        (** Add and set carry *)
  | TIadc of var * atom * atom * atom                        (** Add with carry. *)
  | TIadcs of var * var * atom * atom * atom                 (** Add with carry and set carry *)
  | TIsub of var * atom * atom                               (** Subtract *)
  | TIsubc of var * var * atom * atom                        (** Subtract and set carry *)
  | TIsubb of var * var * atom * atom                        (** Subtract and set borrow *)
  | TIsbc of var * atom * atom * atom                        (** Subtract with carry *)
  | TIsbcs of var * var * atom * atom * atom                 (** Subtract with carry and set carry *)
  | TIsbb of var * atom * atom * atom                        (** Subtract with borrow *)
  | TIsbbs of var * var * atom * atom * atom                 (** Subtract with borrow and set borrow *)
  | TImul of var * atom * atom                               (** Half-multiplication *)
  | TImuls of var * var * atom * atom                        (** Half-multiply and set carry. *)
  | TImull of var * var * atom * atom                        (** Full-multiplication *)
  | TImulj of var * atom * atom                              (** Full-multiplication *)
  | TIsplit of var * var * atom * Z.t                        (** Split and extend *)
  | TIspl of var * var * atom * Z.t                          (** Split without extension *)
  (* Comparison *)
  | TIseteq of var * atom * atom                             (** Equality *)
  | TIsetne of var * atom * atom                             (** Inequality *)
  (* Instructions that cannot be translated to polynomials *)
  | TIand of var * atom * atom                               (** Bit-wise AND *)
  | TIor of var * atom * atom                                (** Bit-wise OR *)
  | TIxor of var * atom * atom                               (** Bit-wise XOR *)
  (* Type conversions *)
  | TIcast of var option * var * atom                        (** Casting *)
  | TIvpc of var * atom                                      (** Value-preserving casting *)
  | TIjoin of var * atom * atom                              (** Join *)
  (* Specifications *)
  | TIassert of tagged_bexp_prove_with                       (** Assertion *)
  | TIassume of tagged_bexp                                  (** Assumption *)
  | TIcut of tagged_bexp_prove_with                          (** Cuts *)
  | TIghost of VS.t * tagged_bexp                            (** Ghost variables *) (* *)

type tagged_program = tagged_instr list

type lined_tagged_program = (int * tagged_instr) list

type tagged_spec =
  { tspre : tagged_bexp;
    tsprog : tagged_program;
    tspost : tagged_bexp_prove_with }

type tagged_espec =
  { tespre : tagged_ebexp;
    tesprog : tagged_program;
    tespost : tagged_ebexp_prove_with }

type tagged_rspec =
  { trspre : tagged_rbexp;
    trsprog : tagged_program;
    trspost : tagged_rbexp_prove_with }

let tagged_ebexp_empty () : tagged_ebexp = sml_empty ()
let tagged_rbexp_empty () : tagged_rbexp = sml_empty ()
let tagged_bexp_empty () : tagged_bexp = (tagged_ebexp_empty (), tagged_rbexp_empty ())
let tagged_ebexp_prove_with_empty () : tagged_ebexp_prove_with = sml_empty ()
let tagged_rbexp_prove_with_empty () : tagged_rbexp_prove_with = sml_empty ()
let tagged_bexp_prove_with_empty () : tagged_bexp_prove_with = (tagged_ebexp_prove_with_empty (), tagged_rbexp_prove_with_empty ())

let tagged_ebexp_singleton t (e : ebexp) = sml_singleton t [e]
let tagged_rbexp_singleton t (r : rbexp) = sml_singleton t [r]
let tagged_bexp_singleton t (b : bexp) = (sml_singleton t [fst b], sml_singleton t [snd b])
let tagged_ebexp_prove_with_singleton t (e : ebexp_prove_with) = sml_singleton t [e]
let tagged_rbexp_prove_with_singleton t (r : rbexp_prove_with) = sml_singleton t [r]
let tagged_bexp_prove_with_singleton t (b : bexp_prove_with) = (sml_singleton t [fst b], sml_singleton t [snd b])

let tagged_ebexp_init t (es : ebexp list) = sml_singleton t es
let tagged_rbexp_init t (rs : rbexp list) = sml_singleton t rs
let tagged_ebexp_prove_with_init t (es : ebexp_prove_with list) = sml_singleton t es
let tagged_rbexp_prove_with_init t (rs : rbexp_prove_with list) = sml_singleton t rs

let rec tagged_ebexp_inits ts (es : ebexp list) =
  match ts with
  | [] -> tagged_ebexp_empty ()
  | hd::tl -> sml_union (sml_singleton hd es) (tagged_ebexp_inits tl es)
let rec tagged_rbexp_inits ts (rs : rbexp list) =
  match ts with
  | [] -> tagged_rbexp_empty ()
  | hd::tl -> sml_union (sml_singleton hd rs) (tagged_rbexp_inits tl rs)
let rec tagged_ebexp_prove_with_inits ts (es : ebexp_prove_with list) =
  match ts with
  | [] -> tagged_ebexp_prove_with_empty ()
  | hd::tl -> sml_union (sml_singleton hd es) (tagged_ebexp_prove_with_inits tl es)
let rec tagged_rbexp_prove_with_inits ts (rs : rbexp_prove_with list) =
  match ts with
  | [] -> tagged_rbexp_prove_with_empty ()
  | hd::tl -> sml_union (sml_singleton hd rs) (tagged_rbexp_prove_with_inits tl rs)

let tagged_ebexp_add t e (te : tagged_ebexp) = sml_add t e te
let tagged_rbexp_add t e (tr : tagged_rbexp) = sml_add t e tr
let tagged_ebexp_prove_with_add t epwss (te : tagged_ebexp_prove_with) = sml_add t epwss te
let tagged_rbexp_prove_with_add t rpwss (tr : tagged_rbexp_prove_with) = sml_add t rpwss tr

let tagged_ebexp_adds t es (te : tagged_ebexp) = sml_adds t es te
let tagged_rbexp_adds t es (tr : tagged_rbexp) = sml_adds t es tr
let tagged_ebexp_prove_with_adds t epwss (te : tagged_ebexp_prove_with) = sml_adds t epwss te
let tagged_rbexp_prove_with_adds t rpwss (tr : tagged_rbexp_prove_with) = sml_adds t rpwss tr

let tagged_ebexp_union (te1 : tagged_ebexp) (te2 : tagged_ebexp) = sml_union te1 te2
let tagged_rbexp_union (tr1 : tagged_rbexp) (tr2 : tagged_rbexp) = sml_union tr1 tr2
let tagged_bexp_union (tb1 : tagged_bexp) (tb2 : tagged_bexp) = (tagged_ebexp_union (fst tb1) (fst tb2), tagged_rbexp_union (snd tb1) (snd tb2))
let tagged_ebexp_prove_with_union (te1 : tagged_ebexp_prove_with) (te2 : tagged_ebexp_prove_with) = sml_union te1 te2
let tagged_rbexp_prove_with_union (tr1 : tagged_rbexp_prove_with) (tr2 : tagged_rbexp_prove_with) = sml_union tr1 tr2
let tagged_bexp_prove_with_union (tb1 : tagged_bexp_prove_with) (tb2 : tagged_bexp_prove_with) = (tagged_ebexp_prove_with_union (fst tb1) (fst tb2), tagged_rbexp_prove_with_union (snd tb1) (snd tb2))

let _tagged_ebexp_unions (tes : tagged_ebexp list) = sml_unions tes
let _tagged_rbexp_unions (trs : tagged_rbexp list) = sml_unions trs
let _tagged_bexp_unions (tbs : tagged_bexp list) =
  match tbs with
  | [] -> tagged_bexp_empty()
  | hd::tl -> List.fold_left (fun res tb -> tagged_bexp_union res tb) hd tl
let _tagged_ebexp_prove_with_unions (tes : tagged_ebexp_prove_with list) = sml_unions tes
let _tagged_rbexp_prove_with_unions (trs : tagged_rbexp_prove_with list) = sml_unions trs
let tagged_bexp_prove_with_unions (tbs : tagged_bexp_prove_with list) =
  match tbs with
  | [] -> tagged_bexp_prove_with_empty()
  | hd::tl -> List.fold_left (fun res tb -> tagged_bexp_prove_with_union res tb) hd tl

let tagged_finder t m =
  let t_res = if t = Options.Std.all_track then []
              else sml_find t m in
  let all_res = sml_find Options.Std.all_track m in
  List.rev_append (List.rev t_res) all_res
let tagged_ebexp_find t (te : tagged_ebexp) = tagged_finder t te
let tagged_rbexp_find t (tr : tagged_rbexp) = tagged_finder t tr
let tagged_ebexp_prove_with_find t (te : tagged_ebexp_prove_with) = tagged_finder t te
let tagged_rbexp_prove_with_find t (tr : tagged_rbexp_prove_with) = tagged_finder t tr


let tagged_ebexp_tags (te : tagged_ebexp) = sml_keys te |> SS.remove Options.Std.all_track
let tagged_rbexp_tags (tr : tagged_rbexp) = sml_keys tr |> SS.remove Options.Std.all_track
let tagged_bexp_tags (tb : tagged_bexp) = SS.union (tagged_ebexp_tags (fst tb)) (tagged_rbexp_tags (snd tb))
let tagged_ebexp_prove_with_tags (te : tagged_ebexp_prove_with) = sml_keys te |> SS.remove Options.Std.all_track
let tagged_rbexp_prove_with_tags (tr : tagged_rbexp_prove_with) = sml_keys tr |> SS.remove Options.Std.all_track
let tagged_bexp_prove_with_tags (tb : tagged_bexp_prove_with) = SS.union (tagged_ebexp_prove_with_tags (fst tb)) (tagged_rbexp_prove_with_tags (snd tb))
let tagged_instr_tags i =
  match i with
  | TIassert tbpw -> tagged_bexp_prove_with_tags tbpw
  | TIassume tb -> tagged_bexp_tags tb
  | TIcut tbpw -> tagged_bexp_prove_with_tags tbpw
  | TIghost (_, tb) -> tagged_bexp_tags tb
  | _ -> SS.empty
let tagged_program_tags p =
  List.fold_left (fun res i -> SS.union res (tagged_instr_tags i)) SS.empty p
let tagged_spec_tags s =
  SS.union (SS.union (tagged_bexp_tags s.tspre) (tagged_program_tags s.tsprog)) (tagged_bexp_prove_with_tags s.tspost)
let tagged_espec_tags s =
  SS.union (SS.union (tagged_ebexp_tags s.tespre) (tagged_program_tags s.tesprog)) (tagged_ebexp_prove_with_tags s.tespost)
let tagged_rspec_tags s =
  SS.union (SS.union (tagged_rbexp_tags s.trspre) (tagged_program_tags s.trsprog)) (tagged_rbexp_prove_with_tags s.trspost)


let tagged_ebexp_untag (te : tagged_ebexp) = eands (sml_untag te)
let tagged_rbexp_untag (tr : tagged_rbexp) = rands (sml_untag tr)
let tagged_bexp_untag (tb : tagged_bexp) = (tagged_ebexp_untag (fst tb), tagged_rbexp_untag (snd tb))
let tagged_ebexp_prove_with_untag (te : tagged_ebexp_prove_with) = tflatten (sml_untag te)
let tagged_rbexp_prove_with_untag (tr : tagged_rbexp_prove_with) = tflatten (sml_untag tr)
let tagged_bexp_prove_with_untag (tb : tagged_bexp_prove_with) = (tagged_ebexp_prove_with_untag (fst tb), tagged_rbexp_prove_with_untag (snd tb))
let tagged_instr_untag i =
  match i with
  | TImov (v, a) -> Imov (v, a)
  | TIshl (v, a1, a2) -> Ishl (v, a1, a2)
  | TIshls (l, v, a, n) -> Ishls (l, v, a, n)
  | TIshr (v, a1, a2) -> Ishr (v, a1, a2)
  | TIshrs (v, l, a, n) -> Ishrs (v, l, a, n)
  | TIsar (v, a1, a2) -> Isar (v, a1, a2)
  | TIsars (v, l, a, n) -> Isars (v, l, a, n)
  | TIcshl (vh, vl, a1, a2, n) -> Icshl (vh, vl, a1, a2, n)
  | TIcshls (l, vh, vl, a1, a2, n) -> Icshls (l, vh, vl, a1, a2, n)
  | TIcshr (vh, vl, a1, a2, n) -> Icshr (vh, vl, a1, a2, n)
  | TIcshrs (vh, vl, l, a1, a2, n) -> Icshrs (vh, vl, l, a1, a2, n)
  | TIrol (v, a, n) -> Irol (v, a, n)
  | TIror (v, a, n) -> Iror (v, a, n)
  | TInondet v -> Inondet v
  | TIcmov (v, c, a1, a2) -> Icmov (v, c, a1, a2)
  | TInop -> Inop
  | TIadd (v, a1, a2) -> Iadd (v, a1, a2)
  | TIadds (c, v, a1, a2) -> Iadds (c, v, a1, a2)
  | TIadc (v, a1, a2, y) -> Iadc (v, a1, a2, y)
  | TIadcs (c, v, a1, a2, y) -> Iadcs (c, v, a1, a2, y)
  | TIsub (v, a1, a2) -> Isub (v, a1, a2)
  | TIsubc (c, v, a1, a2) -> Isubc (c, v, a1, a2)
  | TIsubb (c, v, a1, a2) -> Isubb (c, v, a1, a2)
  | TIsbc (v, a1, a2, y) -> Isbc (v, a1, a2, y)
  | TIsbcs (c, v, a1, a2, y) -> Isbcs (c, v, a1, a2, y)
  | TIsbb (v, a1, a2, y) -> Isbb (v, a1, a2, y)
  | TIsbbs (c, v, a1, a2, y) -> Isbbs (c, v, a1, a2, y)
  | TImul (v, a1, a2) -> Imul (v, a1, a2)
  | TImuls (c, v, a1, a2) -> Imuls (c, v, a1, a2)
  | TImull (vh, vl, a1, a2) -> Imull (vh, vl, a1, a2)
  | TImulj (v, a1, a2) -> Imulj (v, a1, a2)
  | TIsplit (vh, vl, a, n) -> Isplit (vh, vl, a, n)
  | TIspl (vh, vl, a, n) -> Ispl (vh, vl, a, n)
  (* Comparison *)
  | TIseteq (v, a1, a2) -> Iseteq (v, a1, a2)
  | TIsetne (v, a1, a2) -> Isetne (v, a1, a2)
  (* Instructions that cannot be translated to polynomials *)
  | TIand (v, a1, a2) -> Iand (v, a1, a2)
  | TIor (v, a1, a2) -> Ior (v, a1, a2)
  | TIxor (v, a1, a2) -> Ixor (v, a1, a2)
  | TInot (v, a) -> Inot (v, a)
  (* Type conversions *)
  | TIcast (od, v, a) -> Icast (od, v, a)
  | TIvpc (v, a) -> Ivpc (v, a)
  | TIjoin (v, ah, al) -> Ijoin (v, ah, al)
  (* Specifications *)
  | TIassert tbpwss -> Iassert (tagged_bexp_prove_with_untag tbpwss)
  | TIassume tb -> Iassume (tagged_bexp_untag tb)
  | TIcut tbpwss -> Icut (tagged_bexp_prove_with_untag tbpwss)
  | TIghost (vs, tb) -> Ighost (vs, tagged_bexp_untag tb)
let tagged_program_untag tp = List.rev_map tagged_instr_untag tp |> List.rev
let lined_tagged_program_untag tp = map_snd tagged_instr_untag tp
let tagged_spec_untag ts = { spre = tagged_bexp_untag ts.tspre;
                             sprog = tagged_program_untag ts.tsprog;
                             spost = tagged_bexp_prove_with_untag ts.tspost }
let tagged_espec_untag tes = { espre = tagged_ebexp_untag tes.tespre;
                               esprog = tagged_program_untag tes.tesprog;
                               espost = tagged_ebexp_prove_with_untag tes.tespost }
let tagged_rspec_untag trs = { rspre = tagged_rbexp_untag trs.trspre;
                               rsprog = tagged_program_untag trs.trsprog;
                               rspost = tagged_rbexp_prove_with_untag trs.trspost }

(* Add default_track to instructions *)
let tag_instr i =
  match i with
  | Imov (v, a) -> TImov (v, a)
  | Ishl (v, a1, a2) -> TIshl (v, a1, a2)
  | Ishls (l, v, a, n) -> TIshls (l, v, a, n)
  | Ishr (v, a1, a2) -> TIshr (v, a1, a2)
  | Ishrs (v, l, a, n) -> TIshrs (v, l, a, n)
  | Isar (v, a1, a2) -> TIsar (v, a1, a2)
  | Isars (v, l, a, n) -> TIsars (v, l, a, n)
  | Icshl (vh, vl, a1, a2, n) -> TIcshl (vh, vl, a1, a2, n)
  | Icshls (l, vh, vl, a1, a2, n) -> TIcshls (l, vh, vl, a1, a2, n)
  | Icshr (vh, vl, a1, a2, n) -> TIcshr (vh, vl, a1, a2, n)
  | Icshrs (vh, vl, l, a1, a2, n) -> TIcshrs (vh, vl, l, a1, a2, n)
  | Irol (v, a, n) -> TIrol (v, a, n)
  | Iror (v, a, n) -> TIror (v, a, n)
  | Inondet v -> TInondet v
  | Icmov (v, c, a1, a2) -> TIcmov (v, c, a1, a2)
  | Inop -> TInop
  | Iadd (v, a1, a2) -> TIadd (v, a1, a2)
  | Iadds (c, v, a1, a2) -> TIadds (c, v, a1, a2)
  | Iadc (v, a1, a2, y) -> TIadc (v, a1, a2, y)
  | Iadcs (c, v, a1, a2, y) -> TIadcs (c, v, a1, a2, y)
  | Isub (v, a1, a2) -> TIsub (v, a1, a2)
  | Isubc (c, v, a1, a2) -> TIsubc (c, v, a1, a2)
  | Isubb (c, v, a1, a2) -> TIsubb (c, v, a1, a2)
  | Isbc (v, a1, a2, y) -> TIsbc (v, a1, a2, y)
  | Isbcs (c, v, a1, a2, y) -> TIsbcs (c, v, a1, a2, y)
  | Isbb (v, a1, a2, y) -> TIsbb (v, a1, a2, y)
  | Isbbs (c, v, a1, a2, y) -> TIsbbs (c, v, a1, a2, y)
  | Imul (v, a1, a2) -> TImul (v, a1, a2)
  | Imuls (c, v, a1, a2) -> TImuls (c, v, a1, a2)
  | Imull (vh, vl, a1, a2) -> TImull (vh, vl, a1, a2)
  | Imulj (v, a1, a2) -> TImulj (v, a1, a2)
  | Isplit (vh, vl, a, n) -> TIsplit (vh, vl, a, n)
  | Ispl (vh, vl, a, n) -> TIspl (vh, vl, a, n)
  (* Comparison *)
  | Iseteq (v, a1, a2) -> TIseteq (v, a1, a2)
  | Isetne (v, a1, a2) -> TIsetne (v, a1, a2)
  (* Instructions that cannot be translated to polynomials *)
  | Iand (v, a1, a2) -> TIand (v, a1, a2)
  | Ior (v, a1, a2) -> TIor (v, a1, a2)
  | Ixor (v, a1, a2) -> TIxor (v, a1, a2)
  | Inot (v, a) -> TInot (v, a)
  (* Type conversions *)
  | Icast (od, v, a) -> TIcast (od, v, a)
  | Ivpc (v, a) -> TIvpc (v, a)
  | Ijoin (v, ah, al) -> TIjoin (v, ah, al)
  (* Specifications *)
  | Iassert bpwss -> TIassert (tagged_bexp_prove_with_singleton Options.Std.default_track bpwss)
  | Iassume b -> TIassume (tagged_bexp_singleton Options.Std.default_track b)
  | Icut bpwss -> TIcut (tagged_bexp_prove_with_singleton Options.Std.default_track bpwss)
  | Ighost (vs, b) -> TIghost (vs, tagged_bexp_singleton Options.Std.default_track b)

let tagged_ebexp_prove_with_of_tagged_ebexp te =
  SM.map (fun es -> List.rev_map ebexp_prove_with_of_ebexp es |> List.rev) te

let tagged_rbexp_prove_with_of_tagged_rbexp tr =
  SM.map (fun rs -> List.rev_map rbexp_prove_with_of_rbexp rs |> List.rev) tr

let tagged_bexp_prove_with_of_tagged_bexp tb =
  (tagged_ebexp_prove_with_of_tagged_ebexp (fst tb), tagged_rbexp_prove_with_of_tagged_rbexp (snd tb))

let tagged_ebexp_of_tagged_ebexp_prove_with (tepwss : tagged_ebexp_prove_with) =
  SM.map (fun epwss -> List.rev_map ebexp_of_ebexp_prove_with epwss |> List.rev) tepwss

let tagged_rbexp_of_tagged_rbexp_prove_with (trpwss : tagged_rbexp_prove_with) =
  SM.map (fun rpwss -> List.rev_map rbexp_of_rbexp_prove_with rpwss |> List.rev) trpwss

let tagged_bexp_of_tagged_bexp_prove_with (tbpwss : tagged_bexp_prove_with) =
  (tagged_ebexp_of_tagged_ebexp_prove_with (fst tbpwss), tagged_rbexp_of_tagged_rbexp_prove_with (snd tbpwss))


let tagged_espec_of_tagged_spec s =
  { tespre = fst s.tspre;
    tesprog = s.tsprog;
    tespost = fst s.tspost }

let tagged_rspec_of_tagged_spec s =
  { trspre = snd s.tspre;
    trsprog = s.tsprog;
    trspost = snd s.tspost }

let ebexp_of_tag t te = try eands (tagged_ebexp_find t te)
                        with Not_found -> etrue

let rbexp_of_tag t tr = try rands (tagged_rbexp_find t tr)
                        with Not_found -> rtrue

let bexp_of_tag t (tb : tagged_bexp) = (ebexp_of_tag t (fst tb), rbexp_of_tag t (snd tb))

let ebexp_prove_with_of_tag t (te : tagged_ebexp_prove_with) = try tflatten (tagged_ebexp_prove_with_find t te)
                                                               with Not_found -> []

let rbexp_prove_with_of_tag t (tr : tagged_rbexp_prove_with) = try tflatten (tagged_rbexp_prove_with_find t tr)
                                                               with Not_found -> []

let bexp_prove_with_of_tag t (tb : tagged_bexp_prove_with) = (ebexp_prove_with_of_tag t (fst tb), rbexp_prove_with_of_tag t (snd tb))

let instr_of_tag t i =
  match i with
  | TImov (v, a) -> Imov (v, a)
  | TIshl (v, a1, a2) -> Ishl (v, a1, a2)
  | TIshls (l, v, a, n) -> Ishls (l, v, a, n)
  | TIshr (v, a1, a2) -> Ishr (v, a1, a2)
  | TIshrs (v, l, a, n) -> Ishrs (v, l, a, n)
  | TIsar (v, a1, a2) -> Isar (v, a1, a2)
  | TIsars (v, l, a, n) -> Isars (v, l, a, n)
  | TIcshl (vh, vl, a1, a2, n) -> Icshl (vh, vl, a1, a2, n)
  | TIcshls (l, vh, vl, a1, a2, n) -> Icshls (l, vh, vl, a1, a2, n)
  | TIcshr (vh, vl, a1, a2, n) -> Icshr (vh, vl, a1, a2, n)
  | TIcshrs (vh, vl, l, a1, a2, n) -> Icshrs (vh, vl, l, a1, a2, n)
  | TIrol (v, a, n) -> Irol (v, a, n)
  | TIror (v, a, n) -> Iror (v, a, n)
  | TInondet v -> Inondet v
  | TIcmov (v, c, a1, a2) -> Icmov (v, c, a1, a2)
  | TInop -> Inop
  | TIadd (v, a1, a2) -> Iadd (v, a1, a2)
  | TIadds (c, v, a1, a2) -> Iadds (c, v, a1, a2)
  | TIadc (v, a1, a2, y) -> Iadc (v, a1, a2, y)
  | TIadcs (c, v, a1, a2, y) -> Iadcs (c, v, a1, a2, y)
  | TIsub (v, a1, a2) -> Isub (v, a1, a2)
  | TIsubc (c, v, a1, a2) -> Isubc (c, v, a1, a2)
  | TIsubb (c, v, a1, a2) -> Isubb (c, v, a1, a2)
  | TIsbc (v, a1, a2, y) -> Isbc (v, a1, a2, y)
  | TIsbcs (c, v, a1, a2, y) -> Isbcs (c, v, a1, a2, y)
  | TIsbb (v, a1, a2, y) -> Isbb (v, a1, a2, y)
  | TIsbbs (c, v, a1, a2, y) -> Isbbs (c, v, a1, a2, y)
  | TImul (v, a1, a2) -> Imul (v, a1, a2)
  | TImuls (c, v, a1, a2) -> Imuls (c, v, a1, a2)
  | TImull (vh, vl, a1, a2) -> Imull (vh, vl, a1, a2)
  | TImulj (v, a1, a2) -> Imulj (v, a1, a2)
  | TIsplit (vh, vl, a, n) -> Isplit (vh, vl, a, n)
  | TIspl (vh, vl, a, n) -> Ispl (vh, vl, a, n)
  (* Comparison *)
  | TIseteq (v, a1, a2) -> Iseteq (v, a1, a2)
  | TIsetne (v, a1, a2) -> Isetne (v, a1, a2)
  (* Instructions that cannot be translated to polynomials *)
  | TIand (v, a1, a2) -> Iand (v, a1, a2)
  | TIor (v, a1, a2) -> Ior (v, a1, a2)
  | TIxor (v, a1, a2) -> Ixor (v, a1, a2)
  | TInot (v, a) -> Inot (v, a)
  (* Type conversions *)
  | TIcast (od, v, a) -> Icast (od, v, a)
  | TIvpc (v, a) -> Ivpc (v, a)
  | TIjoin (v, ah, al) -> Ijoin (v, ah, al)
  (* Specifications *)
  | TIassert tbpwss -> Iassert (bexp_prove_with_of_tag t tbpwss)
  | TIassume tb -> Iassume (bexp_of_tag t tb)
  | TIcut tbpwss -> Icut (bexp_prove_with_of_tag t tbpwss)
  | TIghost (vs, tb) -> Ighost (vs, bexp_of_tag t tb)

let program_of_tag t p = List.rev_map (instr_of_tag t) p |> List.rev

let spec_of_tag t s =
  { spre = bexp_of_tag t s.tspre;
    sprog = program_of_tag t s.tsprog;
    spost = bexp_prove_with_of_tag t s.tspost }

let espec_of_tag t s =
  { espre = ebexp_of_tag t s.tespre;
    esprog = program_of_tag t s.tesprog;
    espost = ebexp_prove_with_of_tag t s.tespost }

let rspec_of_tag t s =
  { rspre = rbexp_of_tag t s.trspre;
    rsprog = program_of_tag t s.trsprog;
    rspost = rbexp_prove_with_of_tag t s.trspost }

let tag_sep_predicates = ": "
let predicate_separator = ", "
let tagged_predicate_separator = ". "
let string_of_tagged_ebexp ?typ:(typ=false) te =
  SM.fold (
      fun t es res ->
      let f_str = List.rev_map (string_of_ebexp ~typ:typ) es |> List.rev |> String.concat predicate_separator in
      let id_f_str = if t = Options.Std.default_track then f_str
                     else t ^ tag_sep_predicates ^ f_str in
      id_f_str::res
    ) te [] |> List.rev |> String.concat tagged_predicate_separator
let string_of_tagged_rbexp ?typ:(typ=false) te =
  SM.fold (
      fun t es res ->
      let f_str = List.rev_map (string_of_rbexp ~typ:typ) es |> List.rev |> String.concat predicate_separator in
      let id_f_str = if t = Options.Std.default_track then f_str
                     else t ^ tag_sep_predicates ^ f_str in
      id_f_str::res
    ) te [] |> List.rev |> String.concat tagged_predicate_separator
let string_of_tagged_bexp ?typ:(typ=false) te =
  string_of_tagged_ebexp ~typ:typ (fst te) ^ " " ^ bexp_separator ^ " " ^ string_of_tagged_rbexp ~typ:typ (snd te)
let string_of_tagged_ebexp_prove_with ?typ:(typ=false) te =
  SM.fold (
      fun t es res ->
      let f_str = List.rev_map (string_of_ebexp_prove_with ~typ:typ) es |> List.rev |> String.concat predicate_separator in
      let id_f_str = if t = Options.Std.default_track then f_str
                     else t ^ tag_sep_predicates ^ f_str in
      id_f_str::res
    ) te [] |> List.rev |> String.concat tagged_predicate_separator
let string_of_tagged_rbexp_prove_with ?typ:(typ=false) te =
  SM.fold (
      fun t es res ->
      let f_str = List.rev_map (string_of_rbexp_prove_with ~typ:typ) es |> List.rev |> String.concat predicate_separator in
      let id_f_str = if t = Options.Std.default_track then f_str
                     else t ^ tag_sep_predicates ^ f_str in
      id_f_str::res
    ) te [] |> List.rev |> String.concat tagged_predicate_separator
let string_of_tagged_bexp_prove_with ?typ:(typ=false) te =
  string_of_tagged_ebexp_prove_with ~typ:typ (fst te) ^ " " ^ bexp_separator ^ " " ^ string_of_tagged_rbexp_prove_with ~typ:typ (snd te)
let string_of_tagged_instr ?typ:(typ=false) i =
  match i with
  | TIassert (es, rs) ->
     let empty_es = SM.is_empty es in
     let empty_rs = SM.is_empty rs in
     if empty_es && empty_es then "nop"
     else if empty_es then "rassert " ^ string_of_tagged_rbexp_prove_with ~typ:typ rs
     else if empty_rs then "eassert " ^ string_of_tagged_ebexp_prove_with ~typ:typ es
     else "assert " ^ string_of_tagged_bexp_prove_with ~typ:typ (es, rs)
  | TIassume e -> "assume " ^ string_of_tagged_bexp ~typ:typ e
  | TIcut (ecuts, rcuts) ->
     let empty_es = SM.is_empty ecuts in
     let empty_rs = SM.is_empty rcuts in
     if empty_es && empty_rs then "nop"
     else if empty_es then "rcut " ^ string_of_tagged_rbexp_prove_with rcuts
     else if empty_rs then "ecut " ^ string_of_tagged_ebexp_prove_with ecuts
     else "cut " ^ string_of_tagged_bexp_prove_with (ecuts, rcuts)
  | TIghost (vs, e) -> "ghost " ^ String.concat ", " (List.map (fun v -> string_of_var ~typ:true v) (VS.elements vs)) ^ ": " ^ string_of_tagged_bexp ~typ:typ e
  | _ -> string_of_instr ~semicolon:false ~typ:typ (tagged_instr_untag i)
let string_of_tagged_instr ?semicolon:(semicolon=true) ?typ:(typ=false) i = string_of_tagged_instr ~typ:typ i ^ (if semicolon then ";" else "")
let string_of_tagged_program ?insert_nop:(insert=true) ?typ:(typ=false) p =
  let p = if insert && p = [] then [TInop]
          else p in
  String.concat "\n" (List.rev_map (fun i -> string_of_tagged_instr ~typ:typ i) (List.rev p))
let string_of_tagged_spec ?typ:(typ=false) s =
  Printf.sprintf "{ %s }\n%s\n{ %s }"
    (string_of_tagged_bexp ~typ:typ (s.tspre))
    (string_of_tagged_program ~typ:typ (s.tsprog))
    (string_of_tagged_bexp_prove_with ~typ:typ s.tspost)
let string_of_tagged_espec ?typ:(typ=false) s =
  Printf.sprintf "{ %s }\n%s\n{ %s }"
    (string_of_tagged_ebexp ~typ:typ (s.tespre))
    (string_of_tagged_program ~typ:typ (s.tesprog))
    (string_of_tagged_ebexp_prove_with ~typ:typ s.tespost)
let string_of_tagged_rspec ?typ:(typ=false) s =
  Printf.sprintf "{ %s }\n%s\n{ %s }"
    (string_of_tagged_rbexp ~typ:typ (s.trspre))
    (string_of_tagged_program ~typ:typ (s.trsprog))
    (string_of_tagged_rbexp_prove_with ~typ:typ s.trspost)


(** Visitors for tagged specification *)

class type tvisitor =
object
  method tvspec : tagged_spec -> tagged_spec vaction
  method tvprogram : tagged_program -> tagged_program vaction
  method tvlined_program : lined_tagged_program -> lined_tagged_program vaction
  method tvinstr : tagged_instr -> tagged_instr vaction
  method tvbexp : bexp -> bexp vaction
  method tvebexp : ebexp -> ebexp vaction
  method tvrbexp : rbexp -> rbexp vaction
  method tveexp : eexp -> eexp vaction
  method tvrexp : rexp -> rexp vaction
  method tvatom : atom -> atom vaction
  method tvaconst : (typ * Z.t) -> (typ * Z.t) vaction
  method tveconst : Z.t -> Z.t vaction
  method tvrconst : (size * Z.t) -> (size * Z.t) vaction
  method tvvar : var -> var vaction
end

class tnop_visitor : tvisitor =
object (* (self) *)
  method tvspec _s = DoChildren
  method tvprogram _p = DoChildren
  method tvlined_program _p = DoChildren
  method tvinstr _i = DoChildren
  method tvbexp _e = DoChildren
  method tvebexp _e = DoChildren
  method tvrbexp _e = DoChildren
  method tveexp _e = DoChildren
  method tvrexp _e = DoChildren
  method tvatom _a = DoChildren
  method tvaconst (_ty, _n) = DoChildren
  method tveconst _n = DoChildren
  method tvrconst (_size, _n) = DoChildren
  method tvvar _v = DoChildren
end

let tvisit_var visitor v =
  match visitor#tvvar v with
  | SkipChildren | DoChildren -> v
  | ChangeTo v' -> v'
  | ChangeDoChildrenPost (v', f) -> f v'

let tvisit_aconst visitor (ty, n) =
  match visitor#tvaconst (ty, n) with
  | SkipChildren | DoChildren -> (ty, n)
  | ChangeTo (ty', n') -> (ty', n')
  | ChangeDoChildrenPost ((ty', n'), f) -> f (ty', n')

let tvisit_econst visitor n =
  match visitor#tveconst n with
  | SkipChildren | DoChildren -> n
  | ChangeTo n' -> n'
  | ChangeDoChildrenPost (n', f) -> f n'

let tvisit_rconst visitor (size, n) =
  match visitor#tvrconst (size, n) with
  | SkipChildren | DoChildren -> (size, n)
  | ChangeTo (size', n') -> (size', n')
  | ChangeDoChildrenPost ((size', n'), f) -> f (size', n')

let tvisit_atom visitor a =
  let act = visitor#tvatom a in
  match act with
  | SkipChildren -> a
  | ChangeTo a' -> a'
  | DoChildren | ChangeDoChildrenPost _ ->
     let (a, f) =
       match act with
       | DoChildren -> (a, Fun.id)
       | ChangeDoChildrenPost (a', f) -> (a', f)
       | _ -> failwith ("Never happen") in
     f (match a with
        | Avar v -> Avar (tvisit_var visitor v)
        | Aconst (ty, n) -> let (ty', n') = (tvisit_aconst visitor (ty, n)) in Aconst (ty', n'))

let rec tvisit_eexp visitor e =
  let act = visitor#tveexp e in
  match act with
  | SkipChildren -> e
  | ChangeTo e' -> e'
  | DoChildren | ChangeDoChildrenPost _ ->
     let (e, f) =
       match act with
       | DoChildren -> (e, Fun.id)
       | ChangeDoChildrenPost (e', f) -> (e', f)
       | _ -> failwith ("Never happen") in
     f (match e with
        | Evar v -> Evar (tvisit_var visitor v)
        | Econst n -> Econst (tvisit_econst visitor n)
        | Eunop (op, e) -> Eunop (op, tvisit_eexp visitor e)
        | Ebinop (op, e1, e2) -> Ebinop (op, tvisit_eexp visitor e1, tvisit_eexp visitor e2))

let rec tvisit_rexp visitor e =
  let act = visitor#tvrexp e in
  match act with
  | SkipChildren -> e
  | ChangeTo e' -> e'
  | DoChildren | ChangeDoChildrenPost _ ->
     let (e, f) =
       match act with
       | DoChildren -> (e, Fun.id)
       | ChangeDoChildrenPost (e', f) -> (e', f)
       | _ -> failwith ("Never happen") in
     f (match e with
        | Rvar v -> Rvar (tvisit_var visitor v)
        | Rconst (size, n) -> let (size, n) = tvisit_rconst visitor (size, n) in Rconst (size, n)
        | Runop (size, op, e) -> Runop (size, op, tvisit_rexp visitor e)
        | Rbinop (size, op, e1, e2) -> Rbinop (size, op, tvisit_rexp visitor e1, tvisit_rexp visitor e2)
        | Ruext (size, e, n) -> Ruext (size, tvisit_rexp visitor e, n)
        | Rsext (size, e, n) -> Rsext (size, tvisit_rexp visitor e, n)
        | Rconcat (w1, w2, e1, e2) -> Rconcat (w1, w2, tvisit_rexp visitor e1, tvisit_rexp visitor e2))

let rec tvisit_ebexp visitor e =
  let act = visitor#tvebexp e in
  match act with
  | SkipChildren -> e
  | ChangeTo e' -> e'
  | DoChildren | ChangeDoChildrenPost _ ->
     let (e, f) =
       match act with
       | DoChildren -> (e, Fun.id)
       | ChangeDoChildrenPost (e', f) -> (e', f)
       | _ -> failwith ("Never happen") in
     f (match e with
        | Etrue -> Etrue
        | Eeq (e1, e2) -> Eeq (tvisit_eexp visitor e1, tvisit_eexp visitor e2)
        | Eeqmod (e1, e2, ms) -> Eeqmod (tvisit_eexp visitor e1, tvisit_eexp visitor e2, List.rev (List.rev_map (tvisit_eexp visitor) ms))
        | Ecmp (op, e1, e2) ->
           Ecmp (op, tvisit_eexp visitor e1, tvisit_eexp visitor e2)
        | Eand (e1, e2) -> Eand (tvisit_ebexp visitor e1, tvisit_ebexp visitor e2))

let rec tvisit_rbexp visitor e =
  let act = visitor#tvrbexp e in
  match act with
  | SkipChildren -> e
  | ChangeTo e' -> e'
  | DoChildren | ChangeDoChildrenPost _ ->
     let (e, f) =
       match act with
       | DoChildren -> (e, Fun.id)
       | ChangeDoChildrenPost (e', f) -> (e', f)
       | _ -> failwith ("Never happen") in
     f (match e with
        | Rtrue -> Rtrue
        | Req (size, e1, e2) -> Req (size, tvisit_rexp visitor e1, tvisit_rexp visitor e2)
        | Rcmp (size, op, e1, e2) -> Rcmp (size, op, tvisit_rexp visitor e1, tvisit_rexp visitor e2)
        | Rneg e -> Rneg (tvisit_rbexp visitor e)
        | Rand (e1, e2) -> Rand (tvisit_rbexp visitor e1, tvisit_rbexp visitor e2)
        | Ror (e1, e2) -> Ror (tvisit_rbexp visitor e1, tvisit_rbexp visitor e2))

let tvisit_bexp visitor e =
  let act = visitor#tvbexp e in
  match act with
  | SkipChildren -> e
  | ChangeTo e' -> e'
  | DoChildren | ChangeDoChildrenPost _ ->
     let (e, f) =
       match act with
       | DoChildren -> (e, Fun.id)
       | ChangeDoChildrenPost (e', f) -> (e', f)
       | _ -> failwith ("Never happen") in
     f (match e with
        | (eb, rb) -> (tvisit_ebexp visitor eb, tvisit_rbexp visitor rb))

let tvisit_tagged_ebexp visitor te =
  SM.map (fun es -> List.rev_map (tvisit_ebexp visitor) es |> List.rev) te

let tvisit_tagged_rbexp visitor tr =
  SM.map (fun rs -> List.rev_map (tvisit_rbexp visitor) rs |> List.rev) tr

let tvisit_tagged_bexp visitor tb =
  (tvisit_tagged_ebexp visitor (fst tb), tvisit_tagged_rbexp visitor (snd tb))

let tvisit_ebexp_prove_with visitor es = map_fst (tvisit_ebexp visitor) es

let tvisit_rbexp_prove_with visitor rs = map_fst (tvisit_rbexp visitor) rs

let tvisit_bexp_prove_with visitor (es, rs) = (tvisit_ebexp_prove_with visitor es, tvisit_rbexp_prove_with visitor rs)

let tvisit_tagged_ebexp_prove_with visitor tepwss =
  SM.map (fun epwss -> List.rev_map (tvisit_ebexp_prove_with visitor) epwss |> List.rev) tepwss

let tvisit_tagged_rbexp_prove_with visitor trpwss =
  SM.map (fun rpwss -> List.rev_map (tvisit_rbexp_prove_with visitor) rpwss |> List.rev) trpwss

let tvisit_tagged_bexp_prove_with visitor tb =
  (tvisit_tagged_ebexp_prove_with visitor (fst tb), tvisit_tagged_rbexp_prove_with visitor (snd tb))

let tvisit_instr visitor i =
  let act = visitor#tvinstr i in
  match act with
  | SkipChildren -> i
  | ChangeTo i' -> i'
  | DoChildren | ChangeDoChildrenPost _ ->
     let (i, f) =
       match act with
       | DoChildren -> (i, Fun.id)
       | ChangeDoChildrenPost (i', f) -> (i', f)
       | _ -> failwith ("Never happen") in
     f (match i with
        | TImov (v, a) -> TImov (tvisit_var visitor v, tvisit_atom visitor a)
        | TIshl (v, a1, a2) -> TIshl (tvisit_var visitor v, tvisit_atom visitor a1, tvisit_atom visitor a2)
        | TIshls (l, v, a, n) -> TIshls (tvisit_var visitor l, tvisit_var visitor v, tvisit_atom visitor a, n)
        | TIshr (v, a1, a2) -> TIshr (tvisit_var visitor v, tvisit_atom visitor a1, tvisit_atom visitor a2)
        | TIshrs (v, l, a, n) -> TIshrs (tvisit_var visitor v, tvisit_var visitor l, tvisit_atom visitor a, n)
        | TIsar (v, a1, a2) -> TIsar (tvisit_var visitor v, tvisit_atom visitor a1, tvisit_atom visitor a2)
        | TIsars (v, l, a, n) -> TIsars (tvisit_var visitor v, tvisit_var visitor l, tvisit_atom visitor a, n)
        | TIcshl (vh, vl, a1, a2, n) -> TIcshl (tvisit_var visitor vh, tvisit_var visitor vl, tvisit_atom visitor a1, tvisit_atom visitor a2, n)
        | TIcshls (l, vh, vl, a1, a2, n) -> TIcshls (tvisit_var visitor l, tvisit_var visitor vh, tvisit_var visitor vl, tvisit_atom visitor a1, tvisit_atom visitor a2, n)
        | TIcshr (vh, vl, a1, a2, n) -> TIcshr (tvisit_var visitor vh, tvisit_var visitor vl, tvisit_atom visitor a1, tvisit_atom visitor a2, n)
        | TIcshrs (vh, vl, l, a1, a2, n) -> TIcshrs (tvisit_var visitor vh, tvisit_var visitor vl, tvisit_var visitor l, tvisit_atom visitor a1, tvisit_atom visitor a2, n)
        | TIrol (v, a, n) -> TIrol (tvisit_var visitor v, tvisit_atom visitor a, tvisit_atom visitor n)
        | TIror (v, a, n) -> TIror (tvisit_var visitor v, tvisit_atom visitor a, tvisit_atom visitor n)
        | TInondet v -> TInondet (tvisit_var visitor v)
        | TIcmov (v, c, a1, a2) -> TIcmov (tvisit_var visitor v, tvisit_atom visitor c, tvisit_atom visitor a1, tvisit_atom visitor a2)
        | TInop -> TInop
        | TIadd (v, a1, a2) -> TIadd (tvisit_var visitor v, tvisit_atom visitor a1, tvisit_atom visitor a2)
        | TIadds (c, v, a1, a2) -> TIadds (tvisit_var visitor c, tvisit_var visitor v, tvisit_atom visitor a1, tvisit_atom visitor a2)
        | TIadc (v, a1, a2, y) -> TIadc (tvisit_var visitor v, tvisit_atom visitor a1, tvisit_atom visitor a2, tvisit_atom visitor y)
        | TIadcs (c, v, a1, a2, y) -> TIadcs (tvisit_var visitor c, tvisit_var visitor v, tvisit_atom visitor a1, tvisit_atom visitor a2, tvisit_atom visitor y)
        | TIsub (v, a1, a2) -> TIsub (tvisit_var visitor v, tvisit_atom visitor a1, tvisit_atom visitor a2)
        | TIsubc (c, v, a1, a2) -> TIsubc (tvisit_var visitor c, tvisit_var visitor v, tvisit_atom visitor a1, tvisit_atom visitor a2)
        | TIsubb (c, v, a1, a2) -> TIsubb (tvisit_var visitor c, tvisit_var visitor v, tvisit_atom visitor a1, tvisit_atom visitor a2)
        | TIsbc (v, a1, a2, y) -> TIsbc (tvisit_var visitor v, tvisit_atom visitor a1, tvisit_atom visitor a2, tvisit_atom visitor y)
        | TIsbcs (c, v, a1, a2, y) -> TIsbcs (tvisit_var visitor c, tvisit_var visitor v, tvisit_atom visitor a1, tvisit_atom visitor a2, tvisit_atom visitor y)
        | TIsbb (v, a1, a2, y) -> TIsbb (tvisit_var visitor v, tvisit_atom visitor a1, tvisit_atom visitor a2, tvisit_atom visitor y)
        | TIsbbs (c, v, a1, a2, y) -> TIsbbs (tvisit_var visitor c, tvisit_var visitor v, tvisit_atom visitor a1, tvisit_atom visitor a2, tvisit_atom visitor y)
        | TImul (v, a1, a2) -> TImul (tvisit_var visitor v, tvisit_atom visitor a1, tvisit_atom visitor a2)
        | TImuls (c, v, a1, a2) -> TImuls (tvisit_var visitor c, tvisit_var visitor v, tvisit_atom visitor a1, tvisit_atom visitor a2)
        | TImull (vh, vl, a1, a2) -> TImull (tvisit_var visitor vh, tvisit_var visitor vl, tvisit_atom visitor a1, tvisit_atom visitor a2)
        | TImulj (v, a1, a2) -> TImulj (tvisit_var visitor v, tvisit_atom visitor a1, tvisit_atom visitor a2)
        | TIsplit (vh, vl, a, n) -> TIsplit (tvisit_var visitor vh, tvisit_var visitor vl, tvisit_atom visitor a, n)
        | TIspl (vh, vl, a, n) -> TIspl (tvisit_var visitor vh, tvisit_var visitor vl, tvisit_atom visitor a, n)
        (* Comparison *)
        | TIseteq (v, a1, a2) -> TIseteq (tvisit_var visitor v, tvisit_atom visitor a1, tvisit_atom visitor a2)
        | TIsetne (v, a1, a2) -> TIsetne (tvisit_var visitor v, tvisit_atom visitor a1, tvisit_atom visitor a2)
        (* Instructions that cannot be translated to polynomials *)
        | TIand (v, a1, a2) -> TIand (tvisit_var visitor v, tvisit_atom visitor a1, tvisit_atom visitor a2)
        | TIor (v, a1, a2) -> TIor (tvisit_var visitor v, tvisit_atom visitor a1, tvisit_atom visitor a2)
        | TIxor (v, a1, a2) -> TIxor (tvisit_var visitor v, tvisit_atom visitor a1, tvisit_atom visitor a2)
        | TInot (v, a) -> TInot (tvisit_var visitor v, tvisit_atom visitor a)
        (* Type conversions *)
        | TIcast (od, v, a) -> TIcast (apply_to_some (tvisit_var visitor) od, tvisit_var visitor v, tvisit_atom visitor a)
        | TIvpc (v, a) -> TIvpc (tvisit_var visitor v, tvisit_atom visitor a)
        | TIjoin (v, ah, al) -> TIjoin (tvisit_var visitor v, tvisit_atom visitor ah, tvisit_atom visitor al)
        (* Specifications *)
        | TIassert te -> TIassert (tvisit_tagged_bexp_prove_with visitor te)
        | TIassume te -> TIassume (tvisit_tagged_bexp visitor te)
        | TIcut te -> TIcut (tvisit_tagged_bexp_prove_with visitor te)
        | TIghost (vs, te) -> TIghost (VS.map (tvisit_var visitor) vs, tvisit_tagged_bexp visitor te))

let tvisit_program visitor p =
  let act = visitor#tvprogram p in
  match act with
  | SkipChildren -> p
  | ChangeTo p' -> p'
  | DoChildren | ChangeDoChildrenPost _ ->
     let (p, f) =
       match act with
       | DoChildren -> (p, Fun.id)
       | ChangeDoChildrenPost (p', f) -> (p', f)
       | _ -> failwith ("Never happen") in
     f (List.map (tvisit_instr visitor) p)

let tvisit_lined_program visitor p =
  let act = visitor#tvlined_program p in
  match act with
  | SkipChildren -> p
  | ChangeTo p' -> p'
  | DoChildren | ChangeDoChildrenPost _ ->
     let (p, f) =
       match act with
       | DoChildren -> (p, Fun.id)
       | ChangeDoChildrenPost (p', f) -> (p', f)
       | _ -> failwith ("Never happen") in
     f (tmap (fun (lno, i) -> lno, tvisit_instr visitor i) p)

let tvisit_spec visitor s =
  let act = visitor#tvspec s in
  match act with
  | SkipChildren -> s
  | ChangeTo s' -> s'
  | DoChildren | ChangeDoChildrenPost _ ->
     let (s, f) =
       match act with
       | DoChildren -> (s, Fun.id)
       | ChangeDoChildrenPost (s', f) -> (s', f)
       | _ -> failwith ("Never happen") in
     f ({ tspre = tvisit_tagged_bexp visitor s.tspre;
          tsprog = tvisit_program visitor s.tsprog;
          tspost = tvisit_tagged_bexp_prove_with visitor s.tspost })


(** Substitution for tagged programs *)

let subst_tagged_ebexp em te =
  SM.map (fun es -> List.rev_map (subst_ebexp em) es |> List.rev) te

let subst_tagged_rbexp rm tr =
  SM.map (fun rs -> List.rev_map (subst_rbexp rm) rs |> List.rev) tr

let subst_tagged_bexp em rm tb =
  (subst_tagged_ebexp em (fst tb), subst_tagged_rbexp rm (snd tb))

let subst_tagged_ebexp_prove_with em tepwss =
  SM.map (fun epwss -> List.rev_map (subst_ebexp_prove_with em) epwss |> List.rev) tepwss

let subst_tagged_rbexp_prove_with rm trpwss =
  SM.map (fun rpwss -> List.rev_map (subst_rbexp_prove_with rm) rpwss |> List.rev) trpwss

let subst_tagged_bexp_prove_with em rm tbpwss =
  (subst_tagged_ebexp_prove_with em (fst tbpwss), subst_tagged_rbexp_prove_with rm (snd tbpwss))

let subst_tagged_instr am em rm i =
  match i with
  | TImov (v, a) -> TImov (subst_lval am v, subst_atom am a)
  | TIshl (v, a1, a2) -> TIshl (subst_lval am v, subst_atom am a1, subst_atom am a2)
  | TIshls (l, v, a, n) -> TIshls (subst_lval am l, subst_lval am v, subst_atom am a, n)
  | TIshr (v, a1, a2) -> TIshr (subst_lval am v, subst_atom am a1, subst_atom am a2)
  | TIshrs (v, l, a, n) -> TIshrs (subst_lval am v, subst_lval am l, subst_atom am a, n)
  | TIsar (v, a1, a2) -> TIsar (subst_lval am v, subst_atom am a1, subst_atom am a2)
  | TIsars (v, l, a, n) -> TIsars (subst_lval am v, subst_lval am l, subst_atom am a, n)
  | TIcshl (vh, vl, a1, a2, n) -> TIcshl (subst_lval am vh, subst_lval am vl, subst_atom am a1, subst_atom am a2, n)
  | TIcshls (l, vh, vl, a1, a2, n) -> TIcshls (subst_lval am l, subst_lval am vh, subst_lval am vl, subst_atom am a1, subst_atom am a2, n)
  | TIcshr (vh, vl, a1, a2, n) -> TIcshr (subst_lval am vh, subst_lval am vl, subst_atom am a1, subst_atom am a2, n)
  | TIcshrs (vh, vl, l, a1, a2, n) -> TIcshrs (subst_lval am vh, subst_lval am vl, subst_lval am l, subst_atom am a1, subst_atom am a2, n)
  | TIrol (v, a, n) -> TIrol (subst_lval am v, subst_atom am a, subst_atom am n)
  | TIror (v, a, n) -> TIror (subst_lval am v, subst_atom am a, subst_atom am n)
  | TInondet v -> TInondet (subst_lval am v)
  | TIcmov (v, c, a1, a2) -> TIcmov (subst_lval am v, subst_atom am c, subst_atom am a1, subst_atom am a2)
  | TInop -> TInop
  | TIadd (v, a1, a2) -> TIadd (subst_lval am v, subst_atom am a1, subst_atom am a2)
  | TIadds (c, v, a1, a2) -> TIadds (subst_lval am c, subst_lval am v, subst_atom am a1, subst_atom am a2)
  | TIadc (v, a1, a2, y) -> TIadc (subst_lval am v, subst_atom am a1, subst_atom am a2, subst_atom am y)
  | TIadcs (c, v, a1, a2, y) -> TIadcs (subst_lval am c, subst_lval am v, subst_atom am a1, subst_atom am a2, subst_atom am y)
  | TIsub (v, a1, a2) -> TIsub (subst_lval am v, subst_atom am a1, subst_atom am a2)
  | TIsubc (c, v, a1, a2) -> TIsubc (subst_lval am c, subst_lval am v, subst_atom am a1, subst_atom am a2)
  | TIsubb (c, v, a1, a2) -> TIsubb (subst_lval am c, subst_lval am v, subst_atom am a1, subst_atom am a2)
  | TIsbc (v, a1, a2, y) -> TIsbc (subst_lval am v, subst_atom am a1, subst_atom am a2, subst_atom am y)
  | TIsbcs (c, v, a1, a2, y) -> TIsbcs (subst_lval am c, subst_lval am v, subst_atom am a1, subst_atom am a2, subst_atom am y)
  | TIsbb (v, a1, a2, y) -> TIsbb (subst_lval am v, subst_atom am a1, subst_atom am a2, subst_atom am y)
  | TIsbbs (c, v, a1, a2, y) -> TIsbbs (subst_lval am c, subst_lval am v, subst_atom am a1, subst_atom am a2, subst_atom am y)
  | TImul (v, a1, a2) -> TImul (subst_lval am v, subst_atom am a1, subst_atom am a2)
  | TImuls (c, v, a1, a2) -> TImuls (subst_lval am c, subst_lval am v, subst_atom am a1, subst_atom am a2)
  | TImull (vh, vl, a1, a2) -> TImull (subst_lval am vh, subst_lval am vl, subst_atom am a1, subst_atom am a2)
  | TImulj (v, a1, a2) -> TImulj (subst_lval am v, subst_atom am a1, subst_atom am a2)
  | TIsplit (vh, vl, a, n) -> TIsplit (subst_lval am vh, subst_lval am vl, subst_atom am a, n)
  | TIspl (vh, vl, a, n) -> TIspl (subst_lval am vh, subst_lval am vl, subst_atom am a, n)
  | TIseteq (v, a1, a2) -> TIseteq (subst_lval am v, subst_atom am a1, subst_atom am a2)
  | TIsetne (v, a1, a2) -> TIsetne (subst_lval am v, subst_atom am a1, subst_atom am a2)
  | TIand (v, a1, a2) -> TIand (subst_lval am v, subst_atom am a1, subst_atom am a2)
  | TIor (v, a1, a2) -> TIor (subst_lval am v, subst_atom am a1, subst_atom am a2)
  | TIxor (v, a1, a2) -> TIxor (subst_lval am v, subst_atom am a1, subst_atom am a2)
  | TInot (v, a) -> TInot (subst_lval am v, subst_atom am a)
  | TIcast (od, v, a) -> TIcast (apply_to_some (subst_lval am) od, subst_lval am v, subst_atom am a)
  | TIvpc (v, a) -> TIvpc (subst_lval am v, subst_atom am a)
  | TIjoin (v, ah, al) -> TIjoin (subst_lval am v, subst_atom am ah, subst_atom am al)
  | TIassert te -> TIassert (subst_tagged_bexp_prove_with em rm te)
  | TIassume te -> TIassume (subst_tagged_bexp em rm te)
  | TIcut te -> TIcut (subst_tagged_bexp_prove_with em rm te)
  | TIghost (vs, te) -> TIghost (VS.of_list (List.map (subst_lval am) (VS.elements vs)), subst_tagged_bexp em rm te)

let subst_tagged_program am em rm p = List.rev_map (subst_tagged_instr am em rm) p |> List.rev

let subst_lined_tagged_program am em rm p = List.rev_map (fun (lno, i) -> lno, subst_tagged_instr am em rm i) p |> List.rev


(** SSA for tagged specification *)

let ssa_tagged_ebexp m te =
  sml_map_one (ssa_ebexp m) te

let ssa_tagged_rbexp m te =
  sml_map_one (ssa_rbexp m) te

let ssa_tagged_bexp m e = (ssa_tagged_ebexp m (fst e), ssa_tagged_rbexp m (snd e))

let ssa_tagged_ebexp_prove_with m te =
  sml_map_one (ssa_ebexp_prove_with m) te

let ssa_tagged_rbexp_prove_with m te =
  sml_map_one (ssa_rbexp_prove_with m) te

let ssa_tagged_bexp_prove_with m e = (ssa_tagged_ebexp_prove_with m (fst e), ssa_tagged_rbexp_prove_with m (snd e))

let ssa_tagged_instr m i =
  match i with
  | TIassert e -> (m, TIassert (ssa_tagged_bexp_prove_with m e))
  | TIassume e -> (m, TIassume (ssa_tagged_bexp m e))
  | TIcut e -> (m, TIcut (ssa_tagged_bexp_prove_with m e))
  | TIghost (vs, e) -> (m, TIghost (VS.of_list (List.map (ssa_var m) (VS.elements vs)), ssa_tagged_bexp m e))
  | _ -> let (m, ssa_i) = ssa_instr m (tagged_instr_untag i) in
         (m, tag_instr ssa_i)

let ssa_tagged_program m p =
  let rec helper (m, ssa_p_rev) p =
    match p with
    | [] -> (m, List.filter (fun i -> i <> TInop) (List.rev ssa_p_rev))
    | hd::tl ->
       let (m, hd) = ssa_tagged_instr m hd in
       helper (m, hd::ssa_p_rev) tl
  in
  helper (m, []) p

let ssa_tagged_spec_full s =
  let m = VM.empty in
  let f = ssa_tagged_bexp m s.tspre in
  let (m, p) = ssa_tagged_program m s.tsprog in
  let g = ssa_tagged_bexp_prove_with m s.tspost in
  (m, { tspre = f; tsprog = p; tspost = g })

let ssa_tagged_spec s = snd (ssa_tagged_spec_full s)


(** Utility functions for tagged specification *)

let is_tagged_cut i =
  match i with
  | TIcut _ -> true
  | _ -> false

let remove_cut_tagged_program p =
  List.filter (fun i -> not (is_tagged_cut i)) p

let is_tagged_assert i =
  match i with
  | TIassert _ -> true
  | _ -> false

let remove_assert_tagged_program p =
  List.filter (fun i -> not (is_tagged_assert i)) p

let remove_ecut_tagged_program p =
  let remove_ecut_instr i =
    match i with
    | TIcut (_, rcuts) -> TIcut (tagged_ebexp_prove_with_empty (), rcuts)
    | _ -> i in
  tmap remove_ecut_instr p

let remove_rcut_tagged_program p =
  let remove_rcut_instr i =
    match i with
    | TIcut (ecuts, _) -> TIcut (ecuts, tagged_rbexp_prove_with_empty ())
    | _ -> i in
  tmap remove_rcut_instr p

let remove_algebra_tagged_instr i =
  match i with
  | TIassert e -> TIassert (tagged_ebexp_prove_with_empty (), snd e)
  | TIcut e -> TIcut (tagged_ebexp_prove_with_empty (), snd e)
  | _ -> i

let remove_range_tagged_instr i =
  match i with
  | TIassert e -> TIassert (fst e, tagged_rbexp_prove_with_empty ())
  | TIcut e -> TIcut (fst e, tagged_rbexp_prove_with_empty ())
  | _ -> i

let remove_algebra_tagged_program p = List.rev_map remove_algebra_tagged_instr (List.rev p)

let remove_range_tagged_program p = List.rev_map remove_range_tagged_instr (List.rev p)

let remove_cut_tagged_spec s =
  let post = (sml_map_one remove_prove_with_cuts (fst s.tspost), sml_map_one remove_prove_with_cuts (snd s.tspost)) in
  { tspre = s.tspre; tsprog = remove_cut_tagged_program s.tsprog; tspost = post }

let remove_ecut_tagged_spec s =
  let post = (sml_map_one remove_prove_with_cuts (fst s.tspost), snd s.tspost) in
  { tspre = s.tspre; tsprog = remove_ecut_tagged_program s.tsprog; tspost = post }

let remove_rcut_tagged_spec s =
  let post = (fst s.tspost, sml_map_one remove_prove_with_cuts (snd s.tspost)) in
  { tspre = s.tspre; tsprog = remove_rcut_tagged_program s.tsprog; tspost = post }

let remove_assert_tagged_spec s =
  { tspre = s.tspre; tsprog = remove_assert_tagged_program s.tsprog; tspost = s.tspost }

let remove_algebra_tagged_spec s =
  { tspre = s.tspre; tsprog = remove_algebra_tagged_program s.tsprog; tspost = (tagged_ebexp_prove_with_empty(), snd s.tspost) }

let remove_range_tagged_spec s =
  { tspre = s.tspre; tsprog = remove_range_tagged_program s.tsprog; tspost = (fst s.tspost, tagged_rbexp_prove_with_empty()) }


(* Move assertions to postcondition.
   Assume the input specification is in SSA form.
   May be unsound if the specification contains assume statements.
 *)
let move_tagged_asserts s =
  let bexp_prove_with_of_assert i =
    match i with
    | TIassert bs -> bs
    | _ -> assert false in
  let (es, is) = List.partition is_tagged_assert s.tsprog in
  let assert_bexp = tmap bexp_prove_with_of_assert es |> tagged_bexp_prove_with_unions in
  let post = tagged_bexp_prove_with_union assert_bexp s.tspost in
  { tspre = s.tspre; tsprog = is; tspost = post }
