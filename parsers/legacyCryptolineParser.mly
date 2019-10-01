%{

(*
 * Use raise_at to raise an exception if the line number can be determined.
 * Raise ParseError otherwise.
 *)

  open Options.Std
  open Ast.UntypedCryptoline
  open Common
  open Big_int_Z

  exception ParseError of string

  let main = "main"
  let vars_expansion_infix = "_"

  let (--) i j =
    let rec aux n acc =
      if n < i then acc else aux (n-1) (n :: acc)
    in aux j []

  type func =
    { fname : string;
      fargs : var list;
      fouts : var list;
      fvs : VS.t;
      fcs : VS.t;
      fgs : VS.t;
      fbody : program;
      fpre : bexp;
      fpost : bexp;
      fepwss : prove_with_spec list;
      frpwss : prove_with_spec list }

  let raise_at lno msg =
    raise (ParseError ("Parse failure at line " ^ string_of_int lno ^ ". " ^ msg))
%}

%token <string> COMMENT
%token <Big_int_Z.big_int> NUM
%token <string> VAR
%token LBRAC RBRAC LPAR RPAR LSQUARE RSQUARE COMMA SEMICOLON DOTDOT VBAR COLON
/* Instructions */
%token BVVAR BVCONST BVASSIGN
%token BVUADD BVUADDC BVUADC BVUADCC BVUSUB BVUSUBC BVUSBB BVUSBBC BVUMUL BVUMULF
%token BVSADD BVSADDC BVSADC BVSADCC BVSSUB BVSSUBC BVSSBB BVSSBBC BVSMUL BVSMULF
%token BVSHL BVUSPLIT BVSSPLIT BVCONCATSHL BVSET BVCLEAR BVNONDET BVCMOVE BVANDB BVORB BVNOTB BVASSERT BVASSUME BVGHOST
%token BVECUT BVRCUT
/* Operators */
/* Algebraic Expressions */
%token BVEVAR BVECONST BVEUNOP BVEBINOP BVENEG BVEADD BVESUB BVEMUL BVESQ BVEADDS BVEMULS BVE2POW
/* Range Expressions */
%token BVRVAR BVRCONST BVRUNOP BVRBINOP BVRUEXT BVRSEXT BVRVAR BVRPOSZ BVRADD BVRSUB BVRMUL BVRSQ BVRANDB BVRORB BVRXORB BVRADDS BVRMULS
/* Algebraic Predicates */
%token BVETRUE BVEEQ BVEEQMOD BVEAND
/* Range Predicates */
%token BVRTRUE BVREQ BVRCMP BVRNEG BVRNOT BVRAND BVROR BVREQMOD
/* Predicates */
%token BVTRUE
/* Extensions */
%token BVEANDS BVRANDS BVRORS
%token BVRNEGB BVRNOTB BVRANDB BVRORB BVRXORB
%token BVRULT BVRULE BVRUGT BVRUGE BVRSLT BVRSLE BVRSGT BVRSGE
%token LBVULT LBVULE LBVUGT LBVUGE LBVSLT LBVSLE LBVSGT LBVSGE
%token LBVVAR LBVCONST
%token LBVNEGB LBVNOTB LBVADD LBVSUB LBVMUL LBVSQ LBVUMOD LBVSREM LBVSMOD LBVANDB LBVORB LBVXORB
%token LBVEQ LBVEQMOD LBVNEG LBVAND LBVANDS LBVOR LBVORS LBVADDS LBVMULS
%token ADD SUB MUL POW NEG
%token ULT ULE UGT UGE SLT SLE SGT SGE
%token NOTB ANDB
%token BVRUMOD BVRSREM BVRSMOD MOD AND OR
%token CONST PROC ICALL EQ ULIMBS SLIMBS BVEVARS BVRVARS LBVVARS EOF
%token PROVE WITH PRECONDITION ALL CUTS ASSUMES GHOSTS

%left OR
%left AND
%nonassoc EQ ULT ULE UGT UGE SLT SLE SGT SGE BVRULT LBVULT BVRULE LBVULE BVRUGT LBVUGT BVRUGE LBVUGE BVRSLT LBVSLT BVRSLE LBVSLE BVRSGT LBVSGT BVRSGE LBVSGE
%right NOTB ANDB
%left ADD SUB
%left MUL
%left POW
%right NEG
%left MOD
%nonassoc BVEVAR BVRVAR LBVVAR BVECONST BVRCONST LBVCONST BVEUNOP BVRUNOP BVEBINOP BVRBINOP BVENEG BVRNEG LBVNEG BVEADD BVRADD LBVADD BVESUB BVRSUB LBVSUB BVEMUL BVRMUL LBVMUL BVESQ BVRSQ LBVSQ BVEADDS BVRADDS BVEMULS BVRMULS BVRUMOD LBVUMOD BVRSREM LBVSREM BVRSMOD LBVSMOD BVRNEGB BVRNOTB BVRANDB BVRORB BVRXORB LBVNEGB LBVNOTB LBVANDB LBVORB LBVXORB
%nonassoc BVEEQ BVREQ LBVEQ BVEEQMOD BVREQMOD LBVEQMOD

%start spec
%start prog
%type <(Ast.UntypedCryptoline.VS.t * Ast.UntypedCryptoline.spec)> spec
%type <Ast.UntypedCryptoline.program> prog

%%

spec:
  procs EOF
  {
    let (fm, _cm) = $1 VM.empty VM.empty in
    try
      let m = VM.find main fm in
      (VS.of_list m.fargs, { spre = m.fpre; sprog = m.fbody; spost = m.fpost; sepwss = m.fepwss; srpwss = m.frpwss })
    with Not_found ->
      raise (ParseError "A main function is required.")
  }
;

procs:
  proc procs
  {
    fun fm cm ->
      let (fm, cm) = $1 fm cm in
      let (fm, cm) = $2 fm cm in
      (fm, cm)
  }
  | { fun fm cm -> (fm, cm) }
;

proc:
  PROC VAR LPAR formals RPAR EQ pre program post
  {
    let lno = !lnum in
    fun fm cm ->
      let fname = $2 in
      if VM.mem fname fm then raise_at lno ("The procedure " ^ fname ^ " is redefined.")
      else
        (* A set of defined variables *)
        let (args, outs) = $4 lno in
        let vs = VS.of_list args in
        (* A set of carry variables *)
        let cs = VS.empty in
        (* A set of ghost variables *)
        let gs = VS.empty in
        let f =
          match $7 cm vs cs gs with
          | None -> bvTrue
          | Some e -> e in
        let (vs, cs, gs, p) = $8 fm cm vs cs gs in
        let (g, epwss, rpwss) =
          match $9 cm vs cs gs with
          | None -> (bvTrue, [], [])
          | Some e -> e in
        (VM.add fname { fname = fname;
                        fargs = args;
                        fouts = outs;
                        fvs = vs;
                        fcs = cs;
                        fgs = gs;
                        fbody = p;
                        fpre = f;
                        fpost = g;
                        fepwss = epwss;
                        frpwss = rpwss } fm, cm)
  }
  | CONST VAR EQ const
  {
    let lno = !lnum in
    fun fm cm ->
      let v = $2 in
      let n = $4 cm in
      if VM.mem v cm
      then raise_at lno ("Redefined constant: " ^ v)
      else (fm, VM.add v n cm)
  }
;

pre:
    LBRAC bexp RBRAC                              { fun cm vs cs gs -> Some ($2 cm vs cs gs) }
  |                                               { fun _cm _vs _cs _gs -> None }
;

post:
    LBRAC bexp_prove_with RBRAC                   { fun cm vs cs gs -> Some ($2 cm vs cs gs) }
  |                                               { fun _cm _vs _cs _gs -> None }
;

formals:
    fvars                                         { fun lno -> ($1 lno, []) }
  | fvars SEMICOLON fvars                         { fun lno -> ($1 lno, $3 lno) }
  |                                               { fun _lno -> ([], []) }
;

fvars:
    fvar                                          { fun _lno -> $1 }
  | fvar COMMA fvars
  {
    fun lno ->
      let fvs1 = $1 in
      let fvs2 = $3 lno in
      let duplicates = List.filter (fun v -> List.mem v fvs2) fvs1 in
      if List.length duplicates > 0
      then raise_at lno ("Duplicate argument: " ^ List.hd duplicates)
      else fvs1@fvs2
  }
;

fvar:
    VAR                                           { [$1] }
  | VAR VBAR NUM DOTDOT NUM
  {
    let prefix = $1 in
    let st = $3 in
    let ed = $5 in
    List.map (fun i -> prefix ^ vars_expansion_infix ^ string_of_int i) ((int_of_big_int st)--(int_of_big_int ed))
  }
;

prog:
  program EOF
  {
    let fm = VM.empty in
    let cm = VM.empty in
    (* A set of defined variables *)
    let vs = VS.empty in
    (* A set of carry variables *)
    let cs = VS.empty in
    (* A set of ghost variables *)
    let gs = VS.empty in
    let (_vs, _cs, _gs, p) = $1 fm cm vs cs gs in
    p
  }
;

program:
  instrs                                          { fun fm cm vs cs gs -> $1 fm cm vs cs gs }
;

instrs:
  instr SEMICOLON instrs
  {
    fun fm cm vs cs gs ->
      let (vs, cs, gs, instr) = $1 fm cm vs cs gs in
      let (vs, cs, gs, instrs) = $3 fm cm vs cs gs in
      (vs, cs, gs, instr@instrs)
  }
  | instr SEMICOLON
  {
    fun fm cm vs cs gs ->
      let (vs, cs, gs, instr) = $1 fm cm vs cs gs in
      (vs, cs, gs, instr)
  }
  | instr SEMICOLON error
  {
    let lno = !lnum in
    fun _fm _cm _vs _cs _gs ->
      raise_at lno ("Unrecognized instruction.")
  }
;

instr:
  BVASSIGN lval atomic
  {
    fun _fm cm vs cs gs ->
      let a = $3 cm vs cs gs in
      let (vs, cs, gs, v) = $2 cm vs cs gs in
      (vs, cs, gs, [BvAssign (v, a)])
  }
  | BVSHL lval atomic const
  {
    let lno = !lnum in
    fun _fm cm vs cs gs ->
      let a = $3 cm vs cs gs in
      let n = $4 cm in
      let _ =
        if le_big_int n zero_big_int || ge_big_int n (big_int_of_int !wordsize) then
          raise_at lno ("A bvShl instruction expects an offset between 0 and the wordsize (both excluding). An offset not in the range is found: " ^ string_of_big_int n ^ ".")
        in
      let (vs, cs, gs, v) = $2 cm vs cs gs in
      (vs, cs, gs, [BvShl (v, a, n)])
  }
  | BVCONCATSHL lval lval atomic atomic const
  {
    let lno = !lnum in
    fun _fm cm vs cs gs ->
      let a1 = $4 cm vs cs gs in
      let a2 = $5 cm vs cs gs in
      let n = $6 cm in
      let (vs, cs, gs, vh) = $2 cm vs cs gs in
      let (vs, cs, gs, vl) = $3 cm vs cs gs in
      if vh == vl then
        raise_at lno ("The two l-values of bvConcatShl cannot be the same.")
      else
        (vs, cs, gs, [BvConcatShl (vh, vl, a1, a2, n)])
  }
  | BVSET lcarry
  {
    fun _fm cm vs cs gs ->
      let (vs, cs, gs, c) = $2 cm vs cs gs in
      (vs, cs, gs, [BvSet c])
  }
  | BVCLEAR lcarry
  {
    fun _fm cm vs cs gs ->
      let (vs, cs, gs, c) = $2 cm vs cs gs in
      (vs, cs, gs, [BvClear c])
  }
  | BVNONDET lval
  {
    fun _fm cm vs cs gs ->
      let (vs, cs, gs, v) = $2 cm vs cs gs in
      (vs, cs, gs, [BvNondet v])
  }
  | BVCMOVE lval carry atomic atomic
  {
    fun _fm cm vs cs gs ->
      let c = $3 cm vs cs gs in
      let a1 = $4 cm vs cs gs in
      let a2 = $5 cm vs cs gs in
      let (vs, cs, gs, v) = $2 cm vs cs gs in
      (vs, cs, gs, [BvCmove (v, c, a1, a2)])
  }
  | BVUADD lval atomic atomic
  {
    fun _fm cm vs cs gs ->
      let a1 = $3 cm vs cs gs in
      let a2 = $4 cm vs cs gs in
      let (vs, cs, gs, v) = $2 cm vs cs gs in
      (vs, cs, gs, [BvUadd (v, a1, a2)])
  }
  | BVUADDC lcarry lval atomic atomic
  {
    let lno = !lnum in
    fun _fm cm vs cs gs ->
      let a1 = $4 cm vs cs gs in
      let a2 = $5 cm vs cs gs in
      let (vs, cs, gs, c) = $2 cm vs cs gs in
      let (vs, cs, gs, v) = $3 cm vs cs gs in
      if c = v then
        raise_at lno ("The two l-values of bvUaddC cannot be the same.")
      else
        (vs, cs, gs, [BvUadds (c, v, a1, a2)])
  }
  | BVUADC lval atomic atomic carry
  {
    fun _fm cm vs cs gs ->
      let a1 = $3 cm vs cs gs in
      let a2 = $4 cm vs cs gs in
      let y = $5 cm vs cs gs in
      let (vs, cs, gs, v) = $2 cm vs cs gs in
      (vs, cs, gs, [BvUadc (v, a1, a2, y)])
  }
  | BVUADCC lcarry lval atomic atomic carry
  {
    let lno = !lnum in
    fun _fm cm vs cs gs ->
      let a1 = $4 cm vs cs gs in
      let a2 = $5 cm vs cs gs in
      let y = $6 cm vs cs gs in
      let (vs, cs, gs, c) = $2 cm vs cs gs in
      let (vs, cs, gs, v) = $3 cm vs cs gs in
      if c == v then
        raise_at lno ("The two l-values of bvUadcC cannot be the same.")
      else
        (vs, cs, gs, [BvUadcs (c, v, a1, a2, y)])
  }
  | BVUSUB lval atomic atomic
  {
    fun _fm cm vs cs gs ->
      let a1 = $3 cm vs cs gs in
      let a2 = $4 cm vs cs gs in
      let (vs, cs, gs, v) = $2 cm vs cs gs in
      (vs, cs, gs, [BvUsub (v, a1, a2)])
  }
  | BVUSUBC lcarry lval atomic atomic
  {
    let lno = !lnum in
    fun _fm cm vs cs gs ->
      let a1 = $4 cm vs cs gs in
      let a2 = $5 cm vs cs gs in
      let (vs, cs, gs, c) = $2 cm vs cs gs in
      let (vs, cs, gs, v) = $3 cm vs cs gs in
      if c == v then
        raise_at lno ("The two l-values of bvUsubC cannot be the same.")
      else
        (vs, cs, gs, [BvUsubs (c, v, a1, a2)])
  }
  | BVUSBB lval atomic atomic carry
  {
    fun _fm cm vs cs gs ->
      let a1 = $3 cm vs cs gs in
      let a2 = $4 cm vs cs gs in
      let y = $5 cm vs cs gs in
      let (vs, cs, gs, v) = $2 cm vs cs gs in
      (vs, cs, gs, [BvUsbb (v, a1, a2, y)])
  }
  | BVUSBBC lcarry lval atomic atomic carry
  {
    let lno = !lnum in
    fun _fm cm vs cs gs ->
      let a1 = $4 cm vs cs gs in
      let a2 = $5 cm vs cs gs in
      let y = $6 cm vs cs gs in
      let (vs, cs, gs, c) = $2 cm vs cs gs in
      let (vs, cs, gs, v) = $3 cm vs cs gs in
      if c == v then
        raise_at lno ("The two l-values of bvUsbbC cannot be the same.")
      else
        (vs, cs, gs, [BvUsbbs (c, v, a1, a2, y)])
  }
  | BVUMUL lval atomic atomic
  {
    fun _fm cm vs cs gs ->
      let a1 = $3 cm vs cs gs in
      let a2 = $4 cm vs cs gs in
      let (vs, cs, gs, v) = $2 cm vs cs gs in
      (vs, cs, gs, [BvUmul (v, a1, a2)])
  }
  | BVUMULF lval lval atomic atomic
  {
    let lno = !lnum in
    fun _fm cm vs cs gs ->
      let a1 = $4 cm vs cs gs in
      let a2 = $5 cm vs cs gs in
      let (vs, cs, gs, vh) = $2 cm vs cs gs in
      let (vs, cs, gs, vl) = $3 cm vs cs gs in
      if vh == vl then
        raise_at lno ("The two l-values of bvUmulf cannot be the same.")
      else
        (vs, cs, gs, [BvUmull (vh, vl, a1, a2)])
  }
  | BVUSPLIT lval lval atomic const
  {
    let lno = !lnum in
    fun _fm cm vs cs gs ->
      let a = $4 cm vs cs gs in
      let n = $5 cm in
      let _ =
        if le_big_int n zero_big_int || ge_big_int n (big_int_of_int !wordsize) then
          raise_at lno ("The position of a bvUsplit should be in between 0 and " ^ string_of_int !wordsize ^ " (both excluded)")
        in
      let (vs, cs, gs, vh) = $2 cm vs cs gs in
      let (vs, cs, gs, vl) = $3 cm vs cs gs in
      if vh == vl then
        raise_at lno ("The two l-values of bvUsplit cannot be the same.")
      else
        (vs, cs, gs, [BvUsplit (vh, vl, a, n)])
  }
  | BVSADD lval atomic atomic
  {
    fun _fm cm vs cs gs ->
      let a1 = $3 cm vs cs gs in
      let a2 = $4 cm vs cs gs in
      let (vs, cs, gs, v) = $2 cm vs cs gs in
      (vs, cs, gs, [BvSadd (v, a1, a2)])
  }
  | BVSADDC lcarry lval atomic atomic
  {
    let lno = !lnum in
    fun _fm cm vs cs gs ->
      let a1 = $4 cm vs cs gs in
      let a2 = $5 cm vs cs gs in
      let (vs, cs, gs, c) = $2 cm vs cs gs in
      let (vs, cs, gs, v) = $3 cm vs cs gs in
      if c = v then
        raise_at lno ("The two l-values of bvSaddC cannot be the same.")
      else
        (vs, cs, gs, [BvSadds (c, v, a1, a2)])
  }
  | BVSADC lval atomic atomic carry
  {
    fun _fm cm vs cs gs ->
      let a1 = $3 cm vs cs gs in
      let a2 = $4 cm vs cs gs in
      let y = $5 cm vs cs gs in
      let (vs, cs, gs, v) = $2 cm vs cs gs in
      (vs, cs, gs, [BvSadc (v, a1, a2, y)])
  }
  | BVSADCC lcarry lval atomic atomic carry
  {
    let lno = !lnum in
    fun _fm cm vs cs gs ->
      let a1 = $4 cm vs cs gs in
      let a2 = $5 cm vs cs gs in
      let y = $6 cm vs cs gs in
      let (vs, cs, gs, c) = $2 cm vs cs gs in
      let (vs, cs, gs, v) = $3 cm vs cs gs in
      if c == v then
        raise_at lno ("The two l-values of bvSadcC cannot be the same.")
      else
        (vs, cs, gs, [BvSadcs (c, v, a1, a2, y)])
  }
  | BVSSUB lval atomic atomic
  {
    fun _fm cm vs cs gs ->
      let a1 = $3 cm vs cs gs in
      let a2 = $4 cm vs cs gs in
      let (vs, cs, gs, v) = $2 cm vs cs gs in
      (vs, cs, gs, [BvSsub (v, a1, a2)])
  }
  | BVSSUBC lcarry lval atomic atomic
  {
    let lno = !lnum in
    fun _fm cm vs cs gs ->
      let a1 = $4 cm vs cs gs in
      let a2 = $5 cm vs cs gs in
      let (vs, cs, gs, c) = $2 cm vs cs gs in
      let (vs, cs, gs, v) = $3 cm vs cs gs in
      if c == v then
        raise_at lno ("The two l-values of bvSsubC cannot be the same.")
      else
        (vs, cs, gs, [BvSsubs (c, v, a1, a2)])
  }
  | BVSSBB lval atomic atomic carry
  {
    fun _fm cm vs cs gs ->
      let a1 = $3 cm vs cs gs in
      let a2 = $4 cm vs cs gs in
      let y = $5 cm vs cs gs in
      let (vs, cs, gs, v) = $2 cm vs cs gs in
      (vs, cs, gs, [BvSsbb (v, a1, a2, y)])
  }
  | BVSSBBC lcarry lval atomic atomic carry
  {
    let lno = !lnum in
    fun _fm cm vs cs gs ->
      let a1 = $4 cm vs cs gs in
      let a2 = $5 cm vs cs gs in
      let y = $6 cm vs cs gs in
      let (vs, cs, gs, c) = $2 cm vs cs gs in
      let (vs, cs, gs, v) = $3 cm vs cs gs in
      if c == v then
        raise_at lno ("The two l-values of bvSsbbC cannot be the same.")
      else
        (vs, cs, gs, [BvSsbbs (c, v, a1, a2, y)])
  }
  | BVSMUL lval atomic atomic
  {
    fun _fm cm vs cs gs ->
      let a1 = $3 cm vs cs gs in
      let a2 = $4 cm vs cs gs in
      let (vs, cs, gs, v) = $2 cm vs cs gs in
      (vs, cs, gs, [BvSmul (v, a1, a2)])
  }
  | BVSMULF lval lval atomic atomic
  {
    let lno = !lnum in
    fun _fm cm vs cs gs ->
      let a1 = $4 cm vs cs gs in
      let a2 = $5 cm vs cs gs in
      let (vs, cs, gs, vh) = $2 cm vs cs gs in
      let (vs, cs, gs, vl) = $3 cm vs cs gs in
      if vh == vl then
        raise_at lno ("The two l-values of bvSmulf cannot be the same.")
      else
        (vs, cs, gs, [BvSmull (vh, vl, a1, a2)])
  }
  | BVSSPLIT lval lval atomic const
  {
    let lno = !lnum in
    fun _fm cm vs cs gs ->
      let a = $4 cm vs cs gs in
      let n = $5 cm in
      let _ =
        if le_big_int n zero_big_int || ge_big_int n (big_int_of_int !wordsize) then
          raise_at lno ("The position of a bvUsplit should be in between 0 and " ^ string_of_int !wordsize ^ " (both excluded)")
        in
      let (vs, cs, gs, vh) = $2 cm vs cs gs in
      let (vs, cs, gs, vl) = $3 cm vs cs gs in
      if vh == vl then
        raise_at lno ("The two l-values of bvSsplit cannot be the same.")
      else
        (vs, cs, gs, [BvSsplit (vh, vl, a, n)])
  }
  | BVANDB lval atomic atomic
  {
    fun _fm cm vs cs gs ->
      let a1 = $3 cm vs cs gs in
      let a2 = $4 cm vs cs gs in
      let (vs, cs, gs, v) = $2 cm vs cs gs in
      (vs, cs, gs, [BvAndb (v, a1, a2)])
  }
  | BVORB lval atomic atomic
  {
    fun _fm cm vs cs gs ->
      let a1 = $3 cm vs cs gs in
      let a2 = $4 cm vs cs gs in
      let (vs, cs, gs, v) = $2 cm vs cs gs in
      (vs, cs, gs, [BvOrb (v, a1, a2)])
  }
  | BVNOTB lval atomic
  {
    fun _fm cm vs cs gs ->
      let a = $3 cm vs cs gs in
      let (vs, cs, gs, v) = $2 cm vs cs gs in
      (vs, cs, gs, [BvNotb (v, a)])
  }
  | BVASSERT bexp
  {
    fun _fm cm vs cs gs ->
      (vs, cs, gs, [BvAssert ($2 cm vs cs gs)])
  }
  | BVASSUME bexp
  {
    fun _fm cm vs cs gs ->
      (vs, cs, gs, [BvAssume ($2 cm vs cs gs)])
  }
  | BVECUT ebexp_prove_with
  {
    fun _fm cm vs cs gs ->
      let ew = $2 cm vs cs gs in
      (vs, cs, gs, [BveCut (fst ew, snd ew)])
  }
  | BVRCUT rbexp_prove_with
  {
    fun _fm cm vs cs gs ->
      let rw = $2 cm vs cs gs in
      (vs, cs, gs, [BvrCut (fst rw, snd rw)])
  }
  | BVGHOST gvars COLON bexp
  {
    let lno = !lnum in
    fun _fm cm vs cs gs ->
      let gvars = $2 cm vs cs gs in
      let gs = VS.union gvars gs in
      let e = $4 cm vs cs gs in
      let bad_ebexps = List.filter (fun e -> e != BveTrue && VS.is_empty (VS.inter gvars (vars_ebexp e))) (split_bveand (eqn_bexp e)) in
      let bad_rbexps = List.filter (fun e -> e != BvrTrue && VS.is_empty (VS.inter gvars (vars_rbexp e))) (split_bvrand (rng_bexp e)) in
      if List.length bad_ebexps > 0 then raise_at lno ("The algebraic expression " ^ string_of_ebexp (List.hd bad_ebexps) ^ " is defined without using any ghost variable.")
      else if List.length bad_rbexps > 0 then raise_at lno ("The range expression " ^ string_of_rbexp (List.hd bad_rbexps) ^ " is defined without using any ghost variable.")
      else (vs, cs, gs, [BvGhost (gvars, e)])
  }
  /* Extensions */
  | ICALL VAR LPAR actuals RPAR
  {
    let lno = !lnum in
    fun fm cm vs cs gs ->
      let fname = $2 in
      try
        let f = VM.find fname fm in
        let actuals = $4 cm vs cs gs in
        let (fbody, fargs, fouts, fvs, fcs, fgs) =
          if !Options.Std.rename_local then
            let rename_var v = fname ^ "_local_" ^ v in
            let fargs = List.map rename_var f.fargs in
            let fouts = List.map rename_var f.fouts in
            let fvs = VS.map rename_var f.fvs in
            let fcs = VS.map rename_var f.fcs in
            let fgs = VS.map rename_var f.fgs in
            let locals = VS.elements (VS.union (VS.union f.fvs f.fcs) f.fgs) in
            let renamed_locals = List.map (fun v -> BvVar (rename_var v)) locals in
            let fbody = subst_program (List.combine locals renamed_locals) f.fbody in
            (fbody, fargs, fouts, fvs, fcs, fgs)
          else
            (f.fbody, f.fargs, f.fouts, f.fvs, f.fcs, f.fgs) in
        let inputs = fargs in
        let outputs = fouts in
        let formals = inputs@outputs in
        let (vsclash, csclash, gsclash) =
          let actvars = VS.of_list (List.flatten (List.map (fun a -> match a with | BvVar v -> [v] | _ -> []) actuals)) in
          let unrenamed_vs = VS.diff fvs (VS.of_list formals) in
          let unrenamed_cs = VS.diff fcs (VS.of_list formals) in
          let unrenamed_gs = VS.diff fgs (VS.of_list formals) in
          let vsclash = VS.inter actvars unrenamed_vs in
          let csclash = VS.inter actvars unrenamed_cs in
          let gsclash = VS.inter actvars unrenamed_gs in
          (vsclash, csclash, gsclash) in
        if List.length actuals != List.length formals
        then
          raise_at lno ("Failed to call the function " ^ fname ^ ": numbers of arguments mismatch.")
        else if not (VS.is_empty gsclash) then
          let v = VS.choose gsclash in
          raise_at lno ("Name clash: the actual argument " ^ v ^ " is already defined as a ghost variable in function " ^ fname ^ ".")
        else if not (VS.is_empty csclash) then
          let v = VS.choose csclash in
          raise_at lno ("Name clash: the actual argument " ^ v ^ " is already defined as a carry in function " ^ fname ^ ".")
        else if not (VS.is_empty vsclash) then
          let v = VS.choose vsclash in
          raise_at lno ("Name clash: the actual argument " ^ v ^ " is already defined in function " ^ fname ^ ".")
        else
          let pats = List.combine formals actuals in
          let undefined =
            List.flatten (List.map (fun (formal, actual) ->
                                     match actual with
                                     | BvVar v -> if List.mem formal inputs && not (VS.mem v vs) then [v] else []
                                     | _ -> []
                         ) pats) in
          if List.length undefined > 0 then
            raise_at lno ("Undefined variable: " ^ (List.hd undefined))
          else
            let p = subst_program pats fbody in
            let vsp = VS.of_list (List.map (fun v -> subst_lval pats v) (VS.elements fvs)) in
            let csp = VS.of_list (List.map (fun v -> subst_lval pats v) (VS.elements fcs)) in
            let gsp = VS.of_list (List.map (fun v -> subst_lval pats v) (VS.elements fgs)) in
            (VS.union vs vsp, VS.union cs csp, VS.union gs gsp, p)
      with Not_found ->
        raise_at lno ("Call a undefined function '" ^ fname ^ "'.")
  }
  /* Errors */
  | BVASSIGN error                                { raise_at !lnum ("Bad bvAssign instruction") }
  | BVUADD error                                  { raise_at !lnum ("Bad bvUadd instruction") }
  | BVUADDC error                                 { raise_at !lnum ("Bad bvUaddC instruction") }
  | BVUADC error                                  { raise_at !lnum ("Bad bvUadc instruction") }
  | BVUADCC error                                 { raise_at !lnum ("Bad bvUadcC instruction") }
  | BVUSUB error                                  { raise_at !lnum ("Bad bvUsub instruction") }
  | BVUSUBC error                                 { raise_at !lnum ("Bad bvUsubC instruction") }
  | BVUSBB error                                  { raise_at !lnum ("Bad bvUsbb instruction") }
  | BVUSBBC error                                 { raise_at !lnum ("Bad bvUsbbC instruction") }
  | BVUMUL error                                  { raise_at !lnum ("Bad bvUmul instruction") }
  | BVUMULF error                                 { raise_at !lnum ("Bad bvUmulf instruction") }
  | BVUSPLIT error                                { raise_at !lnum ("Bad bvUsplit instruction") }
  | BVSADD error                                  { raise_at !lnum ("Bad bvSadd instruction") }
  | BVSADDC error                                 { raise_at !lnum ("Bad bvSaddC instruction") }
  | BVSADC error                                  { raise_at !lnum ("Bad bvSadc instruction") }
  | BVSADCC error                                 { raise_at !lnum ("Bad bvSadcC instruction") }
  | BVSSUB error                                  { raise_at !lnum ("Bad bvSsub instruction") }
  | BVSSUBC error                                 { raise_at !lnum ("Bad bvSsubC instruction") }
  | BVSSBB error                                  { raise_at !lnum ("Bad bvSsbb instruction") }
  | BVSSBBC error                                 { raise_at !lnum ("Bad bvSsbbC instruction") }
  | BVSMUL error                                  { raise_at !lnum ("Bad bvSmul instruction") }
  | BVSMULF error                                 { raise_at !lnum ("Bad bvSmulf instruction") }
  | BVSSPLIT error                                { raise_at !lnum ("Bad bvSsplit instruction") }
  | BVSHL error                                   { raise_at !lnum ("Bad bvShl instruction") }
  | BVCONCATSHL error                             { raise_at !lnum ("Bad bvConcatShl instruction") }
  | BVNONDET error                                { raise_at !lnum ("Bad bvNondet instruction") }
  | ICALL VAR LPAR error                          { raise_at !lnum (("Invalid actuals in the call instruction: " ^ $2)) }
  | ICALL error                                   { raise_at !lnum ("Bad call instruction") }
;

ebexp_prove_with:
  ebexp                                           { fun cm vs cs gs -> ($1 cm vs cs gs, []) }
| ebexp PROVE WITH prove_with_specs               { fun cm vs cs gs -> ($1 cm vs cs gs, $4) }
;

rbexp_prove_with:
  rbexp                                           { fun cm vs cs gs -> ($1 cm vs cs gs, []) }
| rbexp PROVE WITH prove_with_specs               { fun cm vs cs gs -> ($1 cm vs cs gs, $4) }
;

bexp_prove_with:
    BVTRUE                                        { fun _cm _vs _cs _gs -> (bvTrue, [], []) }
  | ebexp_prove_with VBAR rbexp_prove_with        { fun cm vs cs gs ->
                                                      let (e, epwss) = $1 cm vs cs gs in
                                                      let (r, rpwss) = $3 cm vs cs gs in
                                                      ((e, r), epwss, rpwss) }
  | ebexp_prove_with VBAR error                   { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      raise_at lno ("Invalid range predicate after '" ^ string_of_ebexp (fst ($1 cm vs cs gs)) ^ "'.")
                                                  }
  | ebexp_prove_with error                        { raise_at !lnum ("Please use '|' to separate algebraic predicates and range predicates.") }
;

prove_with_specs:
    prove_with_spec                               { [$1] }
  | prove_with_spec COMMA prove_with_specs        { $1::$3 }
;

prove_with_spec:
    PRECONDITION                                  { Precondition}
  | ALL CUTS                                      { AllCuts }
  | ALL ASSUMES                                   { AllAssumes }
  | ALL GHOSTS                                    { AllGhosts }
;

bexp:
    BVTRUE                                        { fun _cm _vs _cs _gs -> bvTrue }
  | ebexp VBAR rbexp                              { fun cm vs cs gs -> ($1 cm vs cs gs, $3 cm vs cs gs) }
  | ebexp VBAR error                              { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      raise_at lno ("Invalid range predicate after '" ^ string_of_ebexp ($1 cm vs cs gs) ^ "'.")
                                                  }
  | ebexp error                                   { raise_at !lnum ("Please use '|' to separate algebraic predicates and range predicates.") }
;

ebexp:
  ebexp_atomic AND ebexp                          { fun cm vs cs gs -> BveAnd($1 cm vs cs gs, $3 cm vs cs gs) }
  | ebexp_atomic                                  { fun cm vs cs gs -> $1 cm vs cs gs }
;

ebexp_atomic:
    bvetrue                                       { fun _cm _vs _cs _gs -> BveTrue }
  | bveeq eexp eexp                               { fun cm vs cs gs -> BveEq ($2 cm vs cs gs, $3 cm vs cs gs) }
  | bveeqmod eexp eexp eexp                       { fun cm vs cs gs -> BveEqMod ($2 cm vs cs gs, $3 cm vs cs gs, $4 cm vs cs gs) }
  | bveand ebexp_atomic_without_eqmod ebexp_atomic{ fun cm vs cs gs -> BveAnd ($2 cm vs cs gs, $3 cm vs cs gs) }
  | LPAR ebexp RPAR                               { fun cm vs cs gs -> $2 cm vs cs gs }
  | eexp EQ eexp eq_suffix                        { fun cm vs cs gs ->
                                                      match $4 cm vs cs gs with
                                                      | None -> BveEq ($1 cm vs cs gs, $3 cm vs cs gs)
                                                      | Some m -> BveEqMod ($1 cm vs cs gs, $3 cm vs cs gs, m) }
  | bveands LSQUARE ebexps RSQUARE                { fun cm vs cs gs -> bveands ($3 cm vs cs gs) }
  /* Errors */
  | VAR error                                     { raise_at !lnum ("Invalid algebraic predicate after " ^ $1 ^ ".") }
;

ebexp_atomic_without_eqmod:
    bvetrue                                       { fun _cm _vs _cs _gs -> BveTrue }
  | bveeq eexp eexp                               { fun cm vs cs gs -> BveEq ($2 cm vs cs gs, $3 cm vs cs gs) }
  | bveeqmod eexp eexp eexp                       { fun cm vs cs gs -> BveEqMod ($2 cm vs cs gs, $3 cm vs cs gs, $4 cm vs cs gs) }
  | bveand ebexp_atomic_without_eqmod ebexp_atomic_without_eqmod
                                                  { fun cm vs cs gs -> BveAnd ($2 cm vs cs gs, $3 cm vs cs gs) }
  | LPAR ebexp RPAR                               { fun cm vs cs gs -> $2 cm vs cs gs }
  | eexp EQ eexp                                  { fun cm vs cs gs -> BveEq ($1 cm vs cs gs, $3 cm vs cs gs) }
  | bveands LSQUARE ebexps RSQUARE                { fun cm vs cs gs -> bveands ($3 cm vs cs gs) }
  /* Errors */
  | VAR error                                     { raise_at !lnum ("Invalid algebraic predicate after " ^ $1 ^ ".") }
;

eq_suffix:
                                                  { fun _cm _vs _cs _gs -> None }
  | LPAR MOD eexp RPAR                            { fun cm vs cs gs -> Some ($3 cm vs cs gs) }
;

bvetrue:                                          BVETRUE {} | BVTRUE {};
bveeq:                                            BVEEQ {} | LBVEQ {};
bveeqmod:                                         BVEEQMOD {} | LBVEQMOD {};
bveand:                                           BVEAND {} | LBVAND {};
bveands:                                          BVEANDS {} | LBVANDS {};

ebexps:
    ebexp COMMA ebexps                            { fun cm vs cs gs -> ($1 cm vs cs gs)::($3 cm vs cs gs) }
  | ebexp                                         { fun cm vs cs gs -> [$1 cm vs cs gs] }
  | ebexp error                                   { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      raise_at lno ("Failed to parse the algebra predicate after '" ^ string_of_ebexp ($1 cm vs cs gs) ^ "'.") }
;

eunop:
  BVENEG                                          { BveNeg }
;

ebinop:
    BVEADD                                        { BveAdd }
  | BVESUB                                        { BveSub }
  | BVEMUL                                        { BveMul }
;

runop:
   BVRNEG                                         { BvrNegb }
 | BVRNOT                                         { BvrNotb }
;

rbinop:
    BVRADD                                        { BvrAdd }
  | BVRSUB                                        { BvrSub }
  | BVRMUL                                        { BvrMul }
  | BVRUMOD                                       { BvrUmod }
  | BVRSREM                                       { BvrSrem }
  | BVRSMOD                                       { BvrSmod }
  | BVRANDB                                       { BvrAndb }
  | BVRORB                                        { BvrOrb }
  | BVRXORB                                       { BvrXorb }
;

rcmpop:
    BVRULT                                        { BvrUlt }
  | BVRULE                                        { BvrUle }
  | BVRUGT                                        { BvrUgt }
  | BVRUGE                                        { BvrUge }
  | BVRSLT                                        { BvrSlt }
  | BVRSLE                                        { BvrSle }
  | BVRSGT                                        { BvrSgt }
  | BVRSGE                                        { BvrSge }
;

cmpop_infix:
    ULT                                           { BvrUlt }
  | ULE                                           { BvrUle }
  | UGT                                           { BvrUgt }
  | UGE                                           { BvrUge }
  | SLT                                           { BvrSlt }
  | SLE                                           { BvrSle }
  | SGT                                           { BvrSgt }
  | SGE                                           { BvrSge }
;

eexp:
    bvevar logic_var                              { fun cm vs cs gs -> BveVar ($2 cm vs cs gs) }
  | BVECONST const                                { fun cm _vs _cs _gs -> BveConst ($2 cm) }
  | LBVCONST const                                { fun cm _vs _cs _gs -> BveConst ($2 cm) }
  | BVEUNOP eunop eexp                            { fun cm vs cs gs -> BveUnop ($2, $3 cm vs cs gs) }
  | BVEBINOP ebinop eexp eexp                     { fun cm vs cs gs -> BveBinop ($2, $3 cm vs cs gs, $4 cm vs cs gs) }
  | LPAR eexp RPAR                                { fun cm vs cs gs -> $2 cm vs cs gs }
  /* Extensions */
  | BVENEG eexp                                   { fun cm vs cs gs -> bveneg ($2 cm vs cs gs) }
  | LBVNEG eexp                                   { fun cm vs cs gs -> bveneg ($2 cm vs cs gs) }
  | BVEADD eexp eexp                              { fun cm vs cs gs -> bveadd ($2 cm vs cs gs) ($3 cm vs cs gs) }
  | LBVADD eexp eexp                              { fun cm vs cs gs -> bveadd ($2 cm vs cs gs) ($3 cm vs cs gs) }
  | BVESUB eexp eexp                              { fun cm vs cs gs -> bvesub ($2 cm vs cs gs) ($3 cm vs cs gs) }
  | LBVSUB eexp eexp                              { fun cm vs cs gs -> bvesub ($2 cm vs cs gs) ($3 cm vs cs gs) }
  | BVEMUL eexp eexp                              { fun cm vs cs gs -> bvemul ($2 cm vs cs gs) ($3 cm vs cs gs) }
  | LBVMUL eexp eexp                              { fun cm vs cs gs -> bvemul ($2 cm vs cs gs) ($3 cm vs cs gs) }
  | BVESQ eexp                                    { fun cm vs cs gs -> bvesq ($2 cm vs cs gs) }
  | LBVSQ eexp                                    { fun cm vs cs gs -> bvesq ($2 cm vs cs gs) }
  | BVEADDS LSQUARE eexps RSQUARE                 { fun cm vs cs gs -> bveadds ($3 cm vs cs gs) }
  | LBVADDS LSQUARE eexps RSQUARE                 { fun cm vs cs gs -> bveadds ($3 cm vs cs gs) }
  | BVEMULS LSQUARE eexps RSQUARE                 { fun cm vs cs gs -> bvemuls ($3 cm vs cs gs) }
  | LBVMULS LSQUARE eexps RSQUARE                 { fun cm vs cs gs -> bvemuls ($3 cm vs cs gs) }
  | eexp ADD eexp                                 { fun cm vs cs gs -> bveadd ($1 cm vs cs gs) ($3 cm vs cs gs) }
  | eexp SUB eexp                                 { fun cm vs cs gs -> bvesub ($1 cm vs cs gs) ($3 cm vs cs gs) }
  | eexp MUL eexp                                 { fun cm vs cs gs -> bvemul ($1 cm vs cs gs) ($3 cm vs cs gs) }
  | eexp POW const                                { fun cm vs cs gs ->
                                                      let e = $1 cm vs cs gs in
                                                      let i = int_of_big_int ($3 cm) in
                                                      match e with
                                                      | BveConst n -> BveConst (power_big_int_positive_int n i)
                                                      | _ ->
                                                        let rec helper j =
                                                          if j = 0 then BveConst unit_big_int
                                                          else if j = 1 then e
                                                          else if j = 2 then bvesq e
                                                          else bvemul (helper (j - 1)) e in
                                                        helper i }
  | ULIMBS const LSQUARE eexps RSQUARE            { fun cm vs cs gs -> limbs (int_of_big_int ($2 cm)) ($4 cm vs cs gs) }
;

bvevar:                                           BVEVAR {} | LBVVAR {};

eexps:
    eexp COMMA eexps                              { fun cm vs cs gs -> ($1 cm vs cs gs)::($3 cm vs cs gs) }
  | eexp                                          { fun cm vs cs gs -> [$1 cm vs cs gs] }
  | bvevars var_expansion                         { fun cm vs cs gs -> List.map (fun v -> BveVar v) ($2 cm vs cs gs) }
;
bvevars:                                          BVEVARS {} | LBVVARS{};

rbexp:
   rbexp_and OR rbexp                             { fun cm vs cs gs -> BvrOr ($1 cm vs cs gs, $3 cm vs cs gs) }
  | rbexp_and                                     { fun cm vs cs gs -> $1 cm vs cs gs }
;

rbexp_and:
   rbexp_atomic AND rbexp_and                     { fun cm vs cs gs -> BvrAnd ($1 cm vs cs gs, $3 cm vs cs gs) }
  | rbexp_atomic                                  { fun cm vs cs gs -> $1 cm vs cs gs }
;

rbexp_atomic:
    BVRTRUE                                       { fun _cm _vs _cs _gs -> BvrTrue }
  | bvreq rexp rexp                               { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      let e1 = $2 cm vs cs gs in
                                                      let e2 = $3 cm vs cs gs in
                                                      let w1 = width_of_rexp e1 in
                                                      let w2 = width_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else BvrEq (w1, e1, e2) }
  | BVRCMP rcmpop rexp rexp                       { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      let op = $2 in
                                                      let e1 = $3 cm vs cs gs in
                                                      let e2 = $4 cm vs cs gs in
                                                      let w1 = width_of_rexp e1 in
                                                      let w2 = width_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else BvrCmp (w1, op, e1, e2) }
  | bvrneg rbexp_atomic                           { fun cm vs cs gs -> BvrNeg ($2 cm vs cs gs) }
  | bvrand rbexp_atomic_without_eqmod rbexp_atomic
                                                  { fun cm vs cs gs -> BvrAnd ($2 cm vs cs gs, $3 cm vs cs gs) }
  | bvror rbexp_atomic_without_eqmod rbexp_atomic { fun cm vs cs gs -> BvrOr ($2 cm vs cs gs, $3 cm vs cs gs) }
  | LPAR rbexp RPAR                               { fun cm vs cs gs -> $2 cm vs cs gs }
  /* Extensions */
  | BVTRUE                                        { fun _cm _vs _cs _gs -> BvrTrue }
  | rexp EQ rexp req_suffix                       { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      let e1 = $1 cm vs cs gs in
                                                      let e2 = $3 cm vs cs gs in
                                                      let w1 = width_of_rexp e1 in
                                                      let w2 = width_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        match $4 cm vs cs gs with
                                                        | None -> BvrEq (w1, e1, e2)
                                                        | Some m ->
                                                          let wm = width_of_rexp m in
                                                          begin
                                                            if w1 != wm then raise_at lno ("Widths of range expressions mismatch: "
                                                                                           ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                           ^ string_of_rexp m ^ " (width " ^ string_of_int wm ^ ")")
                                                            else
                                                              bvreqmod w1 e1 e2 m
                                                         end
                                                  }
  | rexp cmpop_infix rexp                         { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      let e1 = $1 cm vs cs gs in
                                                      let e2 = $3 cm vs cs gs in
                                                      let op = $2 in
                                                      let w1 = width_of_rexp e1 in
                                                      let w2 = width_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else BvrCmp(w1, op, e1, e2) }
  | cmpop_prefix rexp rexp                        { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      let e1 = $2 cm vs cs gs in
                                                      let e2 = $3 cm vs cs gs in
                                                      let w1 = width_of_rexp e1 in
                                                      let w2 = width_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else BvrCmp (w1, $1, e1, e2) }
  | bvrands LSQUARE rbexps RSQUARE                { fun cm vs cs gs -> bvrands ($3 cm vs cs gs) }
  | bvrors LSQUARE rbexps RSQUARE                 { fun cm vs cs gs -> bvrors ($3 cm vs cs gs) }
  | bvreqmod rexp rexp rexp                       { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      let e1 = $2 cm vs cs gs in
                                                      let e2 = $3 cm vs cs gs in
                                                      let m = $4 cm vs cs gs in
                                                      let w1 = width_of_rexp e1 in
                                                      let w2 = width_of_rexp e2 in
                                                      let wm = width_of_rexp m in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else if w1 != wm then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp m ^ " (width " ^ string_of_int wm ^ ")")
                                                      else
                                                        bvreqmod w1 e1 e2 m
                                                  }
;

rbexp_atomic_without_eqmod:
    BVRTRUE                                       { fun _cm _vs _cs _gs -> BvrTrue }
  | bvreq rexp rexp                               { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      let e1 = $2 cm vs cs gs in
                                                      let e2 = $3 cm vs cs gs in
                                                      let w1 = width_of_rexp e1 in
                                                      let w2 = width_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else BvrEq (w1, e1, e2) }
  | BVRCMP rcmpop rexp rexp                       { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      let op = $2 in
                                                      let e1 = $3 cm vs cs gs in
                                                      let e2 = $4 cm vs cs gs in
                                                      let w1 = width_of_rexp e1 in
                                                      let w2 = width_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else BvrCmp (w1, op, e1, e2) }
  | bvrneg rbexp_atomic_without_eqmod             { fun cm vs cs gs -> BvrNeg ($2 cm vs cs gs) }
  | bvrand rbexp_atomic_without_eqmod rbexp_atomic_without_eqmod
                                                  { fun cm vs cs gs -> BvrAnd ($2 cm vs cs gs, $3 cm vs cs gs) }
  | bvror rbexp_atomic_without_eqmod rbexp_atomic_without_eqmod
                                                  { fun cm vs cs gs -> BvrOr ($2 cm vs cs gs, $3 cm vs cs gs) }
  | LPAR rbexp RPAR                               { fun cm vs cs gs -> $2 cm vs cs gs }
  /* Extensions */
  | BVTRUE                                        { fun _cm _vs _cs _gs -> BvrTrue }
  | rexp EQ rexp                                  { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      let e1 = $1 cm vs cs gs in
                                                      let e2 = $3 cm vs cs gs in
                                                      let w1 = width_of_rexp e1 in
                                                      let w2 = width_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else BvrEq (w1, e1, e2)
                                                  }
  | rexp cmpop_infix rexp                         { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      let e1 = $1 cm vs cs gs in
                                                      let e2 = $3 cm vs cs gs in
                                                      let op = $2 in
                                                      let w1 = width_of_rexp e1 in
                                                      let w2 = width_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else BvrCmp(w1, op, e1, e2) }
  | cmpop_prefix rexp rexp                        { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      let e1 = $2 cm vs cs gs in
                                                      let e2 = $3 cm vs cs gs in
                                                      let w1 = width_of_rexp e1 in
                                                      let w2 = width_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else BvrCmp (w1, $1, e1, e2) }
  | bvrands LSQUARE rbexps RSQUARE                { fun cm vs cs gs -> bvrands ($3 cm vs cs gs) }
  | bvrors LSQUARE rbexps RSQUARE                 { fun cm vs cs gs -> bvrors ($3 cm vs cs gs) }
  | bvreqmod rexp rexp rexp                       { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      let e1 = $2 cm vs cs gs in
                                                      let e2 = $3 cm vs cs gs in
                                                      let m = $4 cm vs cs gs in
                                                      let w1 = width_of_rexp e1 in
                                                      let w2 = width_of_rexp e2 in
                                                      let wm = width_of_rexp m in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else if w1 != wm then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp m ^ " (width " ^ string_of_int wm ^ ")")
                                                      else
                                                        bvreqmod w1 e1 e2 m
                                                  }
;

req_suffix:
                                                  { fun _cm _vs _cs _gs -> None }
  | LPAR MOD rexp RPAR                            { fun cm vs cs gs -> Some ($3 cm vs cs gs) }
;

bvreq:                                            BVREQ {} | LBVEQ {};
bvrneg:                                           BVRNEG {} | LBVNEG {} | NEG {};
cmpop_prefix:
                                                    BVRULT { BvrUlt } | LBVULT { BvrUlt }
                                                  | BVRULE { BvrUle } | LBVULE { BvrUle }
                                                  | BVRUGT { BvrUgt } | LBVUGT { BvrUgt }
                                                  | BVRUGE { BvrUge } | LBVUGE { BvrUge }
                                                  | BVRSLT { BvrSlt } | LBVSLT { BvrSlt }
                                                  | BVRSLE { BvrSle } | LBVSLE { BvrSle }
                                                  | BVRSGT { BvrSgt } | LBVSGT { BvrSgt }
                                                  | BVRSGE { BvrSge } | LBVSGE { BvrSge }
;
bvrand:                                           BVRAND {} | LBVAND {};
bvror:                                            BVROR {} | LBVOR {};
bvrands:                                          BVRANDS {} | LBVANDS {};
bvrors:                                           BVRORS {} | LBVORS {};
bvreqmod:                                         BVREQMOD {} | LBVEQMOD {};

rbexps:
    rbexp COMMA rbexps                            { fun cm vs cs gs -> ($1 cm vs cs gs)::($3 cm vs cs gs) }
  | rbexp                                         { fun cm vs cs gs -> [$1 cm vs cs gs] }
  | rbexp COMMA error                             { raise_at !lnum ("Invalid range predicates.") }
  | rbexp error                                   { raise_at !lnum ("A ',' is used to separate range predicates") }
;

rexp:
    BVRVAR logic_var                              { fun cm vs cs gs -> BvrVar ($2 cm vs cs gs) }
  | LBVVAR logic_var                              { fun cm vs cs gs -> BvrVar ($2 cm vs cs gs) }
  | BVRCONST const const                          { fun cm _vs _cs _gs ->
                                                      let w = int_of_big_int ($2 cm) in
                                                      let n = $3 cm in
                                                      let _ =
                                                        if ge_big_int n zero_big_int then
                                                          if ge_big_int n (power_big_int_positive_int two_big_int w) then
                                                            print_endline ("Warning: the bit-width of the number " ^ string_of_big_int n ^
                                                                           " exceeds the declared bit-width, which is " ^ string_of_int w ^ ".")
                                                        else if le_big_int n (minus_big_int (power_big_int_positive_int two_big_int (w - 1))) then
                                                            print_endline ("Warning: the bit-width of the number " ^ string_of_big_int n ^
                                                                           " exceeds the declared bit-width, which is " ^ string_of_int w ^ ".")
                                                        in
                                                      BvrConst (w, n) }
  | BVRUNOP runop rexp                            { fun cm vs cs gs ->
                                                      let op = $2 in
                                                      let e = $3 cm vs cs gs in
                                                      let w = width_of_rexp e in
                                                      BvrUnop (w, op, e) }
  | BVRBINOP rbinop rexp rexp                     { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      let op = $2 in
                                                      let e1 = $3 cm vs cs gs in
                                                      let e2 = $4 cm vs cs gs in
                                                      let w1 = width_of_rexp e1 in
                                                      let w2 = width_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else BvrBinop (w1, op, e1, e2) }
  | BVRUEXT rexp const                            { fun cm vs cs gs ->
                                                      let e = $2 cm vs cs gs in
                                                      let i = int_of_big_int ($3 cm) in
                                                      let w = width_of_rexp e in
                                                      BvrUext (w, e, i) }
  | BVRSEXT rexp const                            { fun cm vs cs gs ->
                                                      let e = $2 cm vs cs gs in
                                                      let i = int_of_big_int ($3 cm) in
                                                      let w = width_of_rexp e in
                                                      BvrSext (w, e, i) }
  | LPAR rexp RPAR                                { fun cm vs cs gs -> $2 cm vs cs gs }
  /* Extensions */
  | LBVCONST const const                          { fun cm _vs _cs _gs -> BvrConst (int_of_big_int ($2 cm), ($3 cm)) }
  | BVRNEGB rexp                                  { fun cm vs cs gs ->
                                                      let e = $2 cm vs cs gs in
                                                      let w = width_of_rexp e in
                                                      BvrUnop (w, BvrNegb, e) }
  | LBVNEGB rexp                                  { fun cm vs cs gs ->
                                                      let e = $2 cm vs cs gs in
                                                      let w = width_of_rexp e in
                                                      BvrUnop (w, BvrNegb, e) }
  | BVRNOTB rexp                                  { fun cm vs cs gs ->
                                                      let e = $2 cm vs cs gs in
                                                      let w = width_of_rexp e in
                                                      BvrUnop (w, BvrNotb, e) }
  | LBVNOTB rexp                                  { fun cm vs cs gs ->
                                                      let e = $2 cm vs cs gs in
                                                      let w = width_of_rexp e in
                                                      BvrUnop (w, BvrNotb, e) }
  | BVRADD rexp rexp                              { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      let e1 = $2 cm vs cs gs in
                                                      let e2 = $3 cm vs cs gs in
                                                      let w1 = width_of_rexp e1 in
                                                      let w2 = width_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                       bvradd w1 e1 e2 }
  | LBVADD rexp rexp                              { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      let e1 = $2 cm vs cs gs in
                                                      let e2 = $3 cm vs cs gs in
                                                      let w1 = width_of_rexp e1 in
                                                      let w2 = width_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                       bvradd w1 e1 e2 }
  | BVRSUB rexp rexp                              { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      let e1 = $2 cm vs cs gs in
                                                      let e2 = $3 cm vs cs gs in
                                                      let w1 = width_of_rexp e1 in
                                                      let w2 = width_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                       bvrsub w1 e1 e2 }
  | LBVSUB rexp rexp                              { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      let e1 = $2 cm vs cs gs in
                                                      let e2 = $3 cm vs cs gs in
                                                      let w1 = width_of_rexp e1 in
                                                      let w2 = width_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                       bvrsub w1 e1 e2 }
  | BVRMUL rexp rexp                              { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      let e1 = $2 cm vs cs gs in
                                                      let e2 = $3 cm vs cs gs in
                                                      let w1 = width_of_rexp e1 in
                                                      let w2 = width_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                       bvrmul w1 e1 e2 }
  | LBVMUL rexp rexp                              { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      let e1 = $2 cm vs cs gs in
                                                      let e2 = $3 cm vs cs gs in
                                                      let w1 = width_of_rexp e1 in
                                                      let w2 = width_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                       bvrmul w1 e1 e2 }
  | BVRSQ rexp                                    { fun cm vs cs gs ->
                                                      let e = $2 cm vs cs gs in
                                                      bvrsq (width_of_rexp e) e }
  | LBVSQ rexp                                    { fun cm vs cs gs ->
                                                      let e = $2 cm vs cs gs in
                                                      bvrsq (width_of_rexp e) e }
  | BVRUMOD rexp rexp                             { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      let e1 = $2 cm vs cs gs in
                                                      let e2 = $3 cm vs cs gs in
                                                      let w1 = width_of_rexp e1 in
                                                      let w2 = width_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                       bvrumod w1 e1 e2 }
  | LBVUMOD rexp rexp                             { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      let e1 = $2 cm vs cs gs in
                                                      let e2 = $3 cm vs cs gs in
                                                      let w1 = width_of_rexp e1 in
                                                      let w2 = width_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                       bvrumod w1 e1 e2 }
  | BVRSREM rexp rexp                             { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      let e1 = $2 cm vs cs gs in
                                                      let e2 = $3 cm vs cs gs in
                                                      let w1 = width_of_rexp e1 in
                                                      let w2 = width_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                       bvrsrem w1 e1 e2 }
  | LBVSREM rexp rexp                             { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      let e1 = $2 cm vs cs gs in
                                                      let e2 = $3 cm vs cs gs in
                                                      let w1 = width_of_rexp e1 in
                                                      let w2 = width_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                       bvrsrem w1 e1 e2 }
  | BVRSMOD rexp rexp                             { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      let e1 = $2 cm vs cs gs in
                                                      let e2 = $3 cm vs cs gs in
                                                      let w1 = width_of_rexp e1 in
                                                      let w2 = width_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                       bvrsmod w1 e1 e2 }
  | LBVSMOD rexp rexp                             { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      let e1 = $2 cm vs cs gs in
                                                      let e2 = $3 cm vs cs gs in
                                                      let w1 = width_of_rexp e1 in
                                                      let w2 = width_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                       bvrsmod w1 e1 e2 }
  | BVRANDB rexp rexp                             { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      let e1 = $2 cm vs cs gs in
                                                      let e2 = $3 cm vs cs gs in
                                                      let w1 = width_of_rexp e1 in
                                                      let w2 = width_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        BvrBinop (w1, BvrAndb, e1, e2) }
  | LBVANDB rexp rexp                             { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      let e1 = $2 cm vs cs gs in
                                                      let e2 = $3 cm vs cs gs in
                                                      let w1 = width_of_rexp e1 in
                                                      let w2 = width_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        BvrBinop (w1, BvrAndb, e1, e2) }
  | BVRORB rexp rexp                              { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      let e1 = $2 cm vs cs gs in
                                                      let e2 = $3 cm vs cs gs in
                                                      let w1 = width_of_rexp e1 in
                                                      let w2 = width_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        BvrBinop (w1, BvrOrb, e1, e2) }
  | LBVORB rexp rexp                              { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      let e1 = $2 cm vs cs gs in
                                                      let e2 = $3 cm vs cs gs in
                                                      let w1 = width_of_rexp e1 in
                                                      let w2 = width_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        BvrBinop (w1, BvrOrb, e1, e2) }
  | BVRXORB rexp rexp                             { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      let e1 = $2 cm vs cs gs in
                                                      let e2 = $3 cm vs cs gs in
                                                      let w1 = width_of_rexp e1 in
                                                      let w2 = width_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        BvrBinop (w1, BvrXorb, e1, e2) }
  | LBVXORB rexp rexp                             { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      let e1 = $2 cm vs cs gs in
                                                      let e2 = $3 cm vs cs gs in
                                                      let w1 = width_of_rexp e1 in
                                                      let w2 = width_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        BvrBinop (w1, BvrXorb, e1, e2) }
  | BVRADDS LSQUARE rexps RSQUARE                 { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      let es = $3 cm vs cs gs in
                                                      match es with
                                                      | [] -> raise_at lno ("No range expression is passed to bvradds.")
                                                      | hd::_tl -> bvradds (width_of_rexp hd) es }
  | LBVADDS LSQUARE rexps RSQUARE                 { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      let es = $3 cm vs cs gs in
                                                      match es with
                                                      | [] -> raise_at lno ("No range expression is passed to bvradds.")
                                                      | hd::_tl -> bvradds (width_of_rexp hd) es }
  | BVRMULS LSQUARE rexps RSQUARE                 { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      let es = $3 cm vs cs gs in
                                                      match es with
                                                      | [] -> raise_at lno ("No range expression is passed to bvradds.")
                                                      | hd::_tl -> bvrmuls (width_of_rexp hd) es }
  | LBVMULS LSQUARE rexps RSQUARE                 { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      let es = $3 cm vs cs gs in
                                                      match es with
                                                      | [] -> raise_at lno ("No range expression is passed to bvradds.")
                                                      | hd::_tl -> bvrmuls (width_of_rexp hd) es }
  | ULIMBS const LSQUARE rexps RSQUARE            { fun cm vs cs gs ->
                                                      let w = int_of_big_int ($2 cm) in
                                                      let es = $4 cm vs cs gs in
                                                      let tw = List.fold_left (fun w1 w2 -> max w1 w2)
                                                                              0
                                                                              (List.mapi (fun i e -> width_of_rexp e + i * w) es) in
                                                      let es = List.map (fun e ->
                                                                          let ew = width_of_rexp e in
                                                                          BvrUext (ew, e, tw - ew)) es in
                                                      let rec helper i es =
                                                        match es with
                                                        | [] -> BvrConst (tw, zero_big_int)
                                                        | hd::[] -> bvrmul tw hd (BvrConst (tw, power_big_int_positive_int two_big_int (i*w)))
                                                        | hd::tl -> bvradd tw (bvrmul tw hd (BvrConst (tw, power_big_int_positive_int two_big_int (i*w)))) (helper (i+1) tl) in
                                                      let res = helper 0 es in
                                                      res }
  | SLIMBS const LSQUARE rexps RSQUARE            { fun cm vs cs gs ->
                                                      let w = int_of_big_int ($2 cm) in
                                                      let es = $4 cm vs cs gs in
                                                      let tw = List.fold_left (fun w1 w2 -> max w1 w2)
                                                                              0
                                                                              (List.mapi (fun i e -> width_of_rexp e + i * w) es) in
                                                      let last = List.length es - 1 in
                                                      let es = List.mapi (fun i e ->
                                                                            let ew = width_of_rexp e in
                                                                            if i == last then BvrSext (ew, e, tw - ew)
                                                                            else BvrUext (ew, e, tw - ew)) es in
                                                      let rec helper i es =
                                                        match es with
                                                        | [] -> BvrConst (tw, zero_big_int)
                                                        | hd::[] -> bvrmul tw hd (BvrConst (tw, power_big_int_positive_int two_big_int (i*w)))
                                                        | hd::tl -> bvradd tw (bvrmul tw hd (BvrConst (tw, power_big_int_positive_int two_big_int (i*w)))) (helper (i+1) tl) in
                                                      let res = helper 0 es in
                                                      res }
/* ANDB, VBAR, XORB */
  | NOTB rexp                                     { fun cm vs cs gs ->
                                                      let e = $2 cm vs cs gs in
                                                      let w = width_of_rexp e in
                                                      BvrUnop (w, BvrNotb, e) }
  | rexp ADD rexp                                 { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      let e1 = $1 cm vs cs gs in
                                                      let e2 = $3 cm vs cs gs in
                                                      let w1 = width_of_rexp e1 in
                                                      let w2 = width_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        BvrBinop (w1, BvrAdd, e1, e2) }
  | rexp SUB rexp                                 { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      let e1 = $1 cm vs cs gs in
                                                      let e2 = $3 cm vs cs gs in
                                                      let w1 = width_of_rexp e1 in
                                                      let w2 = width_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        BvrBinop (w1, BvrSub, e1, e2) }
  | rexp MUL rexp                                 { let lno = !lnum in
                                                    fun cm vs cs gs ->
                                                      let e1 = $1 cm vs cs gs in
                                                      let e2 = $3 cm vs cs gs in
                                                      let w1 = width_of_rexp e1 in
                                                      let w2 = width_of_rexp e2 in
                                                      if w1 != w2 then raise_at lno ("Widths of range expressions mismatch: "
                                                                                     ^ string_of_rexp e1 ^ " (width " ^ string_of_int w1 ^ "), "
                                                                                     ^ string_of_rexp e2 ^ " (width " ^ string_of_int w2 ^ ")")
                                                      else
                                                        BvrBinop (w1, BvrMul, e1, e2) }
  /* Errors */
  | BVRCONST const error                          { raise_at !lnum "Please specify the width of a const in range predicates." }
  | LBVCONST const error                          { raise_at !lnum "Please specify the width of a const in range predicates." }
;

rexps:
    rexp COMMA rexps
  {
    let lno = !lnum in
    fun cm vs cs gs ->
      let e = $1 cm vs cs gs in
      let es = $3 cm vs cs gs in
      if List.length es > 0 && width_of_rexp e != width_of_rexp (List.hd es) then
        raise_at lno ("Widths of range expressions mismatch: "
                      ^ string_of_rexp e ^ " (width " ^ string_of_int (width_of_rexp e) ^ ")"
                      ^ ", "
                      ^ string_of_rexp (List.hd es) ^ " (width " ^ string_of_int (width_of_rexp (List.hd es)) ^ ")")
      else
        e::es
  }
  | rexp                                          { fun cm vs cs gs -> [$1 cm vs cs gs] }
  | bvrvars var_expansion                         { fun cm vs cs gs -> List.map (fun v -> BvrVar v) ($2 cm vs cs gs) }
;
bvrvars:                                          BVRVARS {} | LBVVARS {};

lval:
  VAR                                             {
                                                    let lno = !lnum in
                                                    fun _cm vs cs gs ->
                                                      if VS.mem $1 gs then raise_at lno ("The program variable " ^ $1 ^ " has been defined as a ghost variable.")
                                                      else (VS.add $1 vs, VS.remove $1 cs, gs, $1)
                                                  }
;

lcarry:
  VAR                                             {
                                                    let lno = !lnum in
                                                    fun _cm vs cs gs ->
                                                      if VS.mem $1 gs then raise_at lno ("The carry variable " ^ $1 ^ " has been defined as a ghost variable.")
                                                      else (VS.add $1 vs, VS.add $1 cs, gs, $1)
                                                  }
;

actuals:
    atomics2                                      { fun cm vs cs gs -> $1 cm vs cs gs }
  |                                               { fun _cm _vs _cs _gs -> [] }
;

atomics2:
    atomic2                                       { fun cm vs cs gs -> ($1 cm vs cs gs) }
  | atomic2 COMMA atomics2                        { fun cm vs cs gs -> ($1 cm vs cs gs)@($3 cm vs cs gs) }
;

atomic2:
    const                                          { fun cm _vs _cs _gs -> [BvConst ($1 cm)] }
  | VAR                                            { fun _cm _vs _cs _gs -> [BvVar $1] }
  | VAR VBAR NUM DOTDOT NUM
  {
    fun _cm _vs _cs _gs ->
    let prefix = $1 in
    let st = $3 in
    let ed = $5 in
    List.map (fun i -> BvVar (prefix ^ vars_expansion_infix ^ string_of_int i)) ((int_of_big_int st)--(int_of_big_int ed))
  }
;

atomic:
    BVCONST const                                 { fun cm _vs _cs _gs -> BvConst ($2 cm) }
  | BVVAR logic_var                               { fun cm vs cs gs -> BvVar ($2 cm vs cs gs) }
  | LPAR atomic RPAR                              { fun cm vs cs gs -> $2 cm vs cs gs }
  | BVCONST error                                 { let lno = !lnum in
                                                    fun _cm _vs _cs _gs ->
                                                      raise_at lno ("A constant is expected after bvConst.")
                                                  }
  | BVVAR error                                   { let lno = !lnum in
                                                    fun _cm _vs _cs _gs ->
                                                      raise_at lno ("A valid variable name is expected after bvVar.")
                                                  }
;

var_expansion:
  VAR VBAR NUM DOTDOT NUM
  {
    let lno = !lnum in
    fun _cm vs _cs gs ->
    let prefix = $1 in
    let st = $3 in
    let ed = $5 in
    let res = List.map (fun i -> prefix ^ vars_expansion_infix ^ string_of_int i) ((int_of_big_int st)--(int_of_big_int ed)) in
    let _ = List.iter (fun v -> if not (VS.mem v vs) && not (VS.mem v gs) then raise_at lno ("Variable " ^ v ^ " is not defined.")) res in
    res
  }
;

logic_var:
  VAR
  {
    let lno = !lnum in
    fun _cm vs _cs gs ->
      if VS.mem $1 vs || VS.mem $1 gs
      then $1
      else raise_at lno ("Variable " ^ $1 ^ " is not defined.")
  }
;

gvars:
  gvar                                            { fun cm vs cs gs -> VS.singleton ($1 cm vs cs gs) }
| gvar COMMA gvars                                { fun cm vs cs gs -> VS.add ($1 cm vs cs gs) ($3 cm vs cs gs) }
| gvar error                                      {
                                                    let lno = !lnum in
                                                    fun _cm _vs _cs _gs ->
                                                      raise_at lno ("A comma is used to separate ghost variables.")
                                                  }
| error                                           {
                                                    let lno = !lnum in
                                                    fun _cm _vs _cs _gs ->
                                                      raise_at lno ("Invalid ghost variable.")
                                                  }
;

gvar:
  VAR                                             {
                                                    let lno = !lnum in
                                                    fun _cm vs _cs gs ->
                                                      if VS.mem $1 vs then raise_at lno ("The ghost variable " ^ $1 ^ " has been defined as a program variable.")
                                                      else if VS.mem $1 gs then raise_at lno ("The ghost variable " ^ $1 ^ " has been defined previously.")
                                                      else $1
                                                  }
;

const:
    NUM                                           { fun _cm -> $1 }
  | ANDB VAR                                      { let lno = !lnum in
                                                    fun cm ->
                                                      try
                                                        VM.find $2 cm
                                                      with Not_found ->
                                                        raise_at lno ("Undefined constant: " ^ $2) }
  | LPAR complex_const RPAR                       { fun cm -> ($2 cm) }
  | VAR error                                     { raise_at !lnum ("A constant is expected but '" ^ $1 ^ "' is encountered.") }
;

complex_const:
    const                                         { fun cm -> $1 cm }
  | SUB complex_const                             { fun cm -> minus_big_int ($2 cm) }
  | complex_const ADD complex_const               { fun cm -> add_big_int ($1 cm) ($3 cm) }
  | complex_const SUB complex_const               { fun cm -> sub_big_int ($1 cm) ($3 cm) }
  | complex_const MUL complex_const               { fun cm -> mult_big_int ($1 cm) ($3 cm) }
  | complex_const POW complex_const               { fun cm -> power_big_int_positive_big_int ($1 cm) ($3 cm) }
;

carry:
  VAR
  {
    let lno = !lnum in
    fun _cm _vs cs _gs ->
      if VS.mem $1 cs
      then $1
      else raise_at lno ("Carry variable " ^ $1 ^ " is not defined.")
  }
;
