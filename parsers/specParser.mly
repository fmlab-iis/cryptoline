%{
  (*
   * This is a parser for fully expanded algebra and range specifications (espec and rspec).
   * No well-formedness is checked.
   *)

  open Options.Std
  open Ast.Cryptoline
  open Common

  exception ParseError of string

  let raise_at lno msg =
    raise (ParseError ("Parse failure at line " ^ string_of_int lno ^ ". " ^ msg))

%}

%token <string> COMMENT
%token <Z.t> NUM
%token <string> ID
%token <int> UINT SINT
%token BIT
%token LBRAC RBRAC LPAR RPAR LSQUARE RSQUARE COMMA SEMICOLON DOTDOT VBAR COLON
/* Instructions */
%token CONST MOV
%token ADD ADDS ADDR ADC ADCS ADCR SUB SUBC SUBB SUBR SBC SBCS SBCR SBB SBBS SBBR MUL MULS MULR MULL MULJ SPLIT
%token UADD UADDS UADDR UADC UADCS UADCR USUB USUBC USUBB USUBR USBC USBCS USBCR USBB USBBS USBBR UMUL UMULS UMULR UMULL UMULJ USPLIT
%token SADD SADDS SADDR SADC SADCS SADCR SSUB SSUBC SSUBB SSUBR SSBC SSBCS SSBCR SSBB SSBBS SSBBR SMUL SMULS SMULR SMULL SMULJ SSPLIT
%token SHL CSHL SET CLEAR NONDET CMOV AND OR NOT CAST VPC JOIN ASSERT ASSUME GHOST
%token CUT ECUT RCUT NOP
/* Logical Expressions */
%token VARS NEG SQ EXT UEXT SEXT MOD UMOD SREM SMOD XOR ULT ULE UGT UGE SLT SLE SGT SGE
/* Predicates */
%token TRUE EQ EQMOD
/* Operators */
%token ADDOP SUBOP MULOP POWOP ULEOP ULTOP UGEOP UGTOP SLEOP SLTOP SGEOP SGTOP EQOP NEGOP MODOP LANDOP LOROP NOTOP ANDOP OROP XOROP
/* Others */
%token AT PROC CALL ULIMBS SLIMBS PROVE WITH ALL CUTS ASSUMES GHOSTS PRECONDITION DEREFOP
%token EOF

%left LOROP
%left LANDOP
%nonassoc EQOP ULTOP ULEOP UGTOP UGEOP SLTOP SLEOP SGTOP SGEOP
%left OROP
%left XOROP
%left ANDOP
%left ADDOP SUBOP
%left MULOP
%left POWOP
%right NEGOP NOTOP
%left MODOP
%nonassoc VAR CONST NEG ADD SUB MUL SQ UMOD SREM SMOD NOT AND OR XOR ULT ULE UGT UGE SLT SLE SGT SGE
%nonassoc EQ EQMOD
%nonassoc UMINUS

%start espec
%start rspec
%type <Ast.Cryptoline.espec> espec
%type <Ast.Cryptoline.rspec> rspec

%%

espec:
  epre program epost
  {
    let (post, pwss) = $3 in
    { espre = $1; esprog = $2; espost = post; espwss = pwss }
  }
;

rspec:
  rpre program rpost
  {
    let (post, pwss) = $3 in
    { rspre = $1; rsprog = $2; rspost = post; rspwss = pwss }
  }
;

epre:
    LBRAC ebexp RBRAC                             { $2 }
;

epost:
    LBRAC ebexp_prove_with RBRAC                  { $2 }
;

rpre:
    LBRAC rbexp RBRAC                             { $2 }
;

rpost:
    LBRAC rbexp_prove_with RBRAC                  { $2 }
;

program:
  instrs                                          { $1 }
;

instrs:
                                                  { [] }
  | instr SEMICOLON instrs                        { $1@$3 }
;

instr:
    MOV lval atomic                               { [Imov ($2, $3)] }
  | SHL lval atomic const                         { [Ishl ($2, $3, $4)] }
  | CSHL lval lval atomic atomic const            { [Icshl ($2, $3, $4, $5, $6)] }
  | NONDET lval                                   { [Inondet $2] }
  | CMOV lval carry atomic atomic                 { [Icmov ($2, $3, $4, $5)] }
  | ADD lval atomic atomic                        { [Iadd ($2, $3, $4)] }
  | ADDS lcarry lval atomic atomic                { [Iadds ($2, $3, $4, $5)] }
  | ADDR lcarry lval atomic atomic                { [Iaddr ($2, $3, $4, $5)] }
  | ADC lval atomic atomic carry                  { [Iadc ($2, $3, $4, $5)] }
  | ADCS lcarry lval atomic atomic carry          { [Iadcs ($2, $3, $4, $5, $6)] }
  | ADCR lcarry lval atomic atomic carry          { [Iadcr ($2, $3, $4, $5, $6)] }
  | SUB lval atomic atomic                        { [Isub ($2, $3, $4)] }
  | SUBC lcarry lval atomic atomic                { [Isubc ($2, $3, $4, $5)] }
  | SUBB lcarry lval atomic atomic                { [Isubb ($2, $3, $4, $5)] }
  | SUBR lcarry lval atomic atomic                { [Isubr ($2, $3, $4, $5)] }
  | SBC lval atomic atomic carry                  { [Isbc ($2, $3, $4, $5)] }
  | SBCS lcarry lval atomic atomic carry          { [Isbcs ($2, $3, $4, $5, $6)] }
  | SBCR lcarry lval atomic atomic carry          { [Isbcr ($2, $3, $4, $5, $6)] }
  | SBB lval atomic atomic carry                  { [Isbb ($2, $3, $4, $5)] }
  | SBBS lcarry lval atomic atomic carry          { [Isbbs ($2, $3, $4, $5, $6)] }
  | SBBR lcarry lval atomic atomic carry          { [Isbbr ($2, $3, $4, $5, $6)] }
  | MUL lval atomic atomic                        { [Imul ($2, $3, $4)] }
  | MULS lcarry lval atomic atomic                { [Imuls ($2, $3, $4, $5)] }
  | MULR lcarry lval atomic atomic                { [Imulr ($2, $3, $4, $5)] }
  | MULL lval lval atomic atomic                  { [Imull ($2, $3, $4, $5)] }
  | MULJ lval atomic atomic                       { [Imulj ($2, $3, $4)] }
  | SPLIT lval lval atomic const                  { [Isplit ($2, $3, $4, $5)] }
  | AND lval atomic atomic                        { [Iand ($2, $3, $4)] }
  | OR lval atomic atomic                         { [Ior ($2, $3, $4)] }
  | NOT lval atomic                               { [Inot ($2, $3)] }
  | CAST lval_or_lcarry atomic                    { [Icast ($2, $3)] }
  | VPC lval_or_lcarry atomic                     { [Ivpc ($2, $3)] }
  | JOIN lval atomic atomic                       { [Ijoin ($2, $3, $4)] }
  | ASSERT bexp                                   { [Iassert ($2)] }
  | ASSUME bexp                                   { [Iassume ($2)] }
  | CUT bexp_prove_with                           { let ((e, r), epwss, rpwss) = $2 in [Iecut (e, epwss); Ircut (r, rpwss)] }
  | ECUT ebexp_prove_with                         { let (e, epwss) = $2 in [Iecut (e, epwss)] }
  | RCUT rbexp_prove_with                         { let (r, rpwss) = $2 in [Ircut (r, rpwss)] }
  | GHOST gvars COLON bexp                        { [Ighost ($2, $4)] }
  | NOP                                           { [] }
;

ebexp_prove_with:
  ebexp                                           { ($1, []) }
| ebexp PROVE WITH prove_with_specs               { ($1, $4) }
;

rbexp_prove_with:
  rbexp                                           { ($1, []) }
| rbexp PROVE WITH prove_with_specs               { ($1, $4) }
;

bexp_prove_with:
    TRUE                                          { (btrue, [], []) }
  | ebexp_prove_with VBAR rbexp_prove_with        { let (e, epwss) = $1 in
                                                    let (r, rpwss) = $3 in
                                                    ((e, r), epwss, rpwss) }
;


prove_with_specs:
    prove_with_spec                               { [$1] }
  | prove_with_spec COMMA prove_with_specs        { $1::$3 }
;

prove_with_spec:
    PRECONDITION                                  { Precondition }
  | ALL CUTS                                      { AllCuts }
  | ALL ASSUMES                                   { AllAssumes }
  | ALL GHOSTS                                    { AllGhosts }
;

bexp:
    TRUE                                          { btrue }
  | ebexp VBAR rbexp                              { ($1, $3) }
;

ebexp:
    ebexp_atomic AND ebexp                        { Eand ($1, $3) }
  | ebexp_atomic                                  { $1 }
;

ebexp_atomic:
    TRUE                                          { etrue }
  | EQ eexp eexp_no_unary                         { Eeq ($2, $3) }
  | EQMOD eexp eexp_no_unary eexp_no_unary        { Eeqmod ($2, $3, $4) }
  /*
   * Changing ebexp_atomic_without_eqmod to ebexp_atomic will induce shift/reduce conflicts.
   * Example: bveand bvvar x = bvvar y (bvvar x = bvvar y)
   * When the parser reads "(", it does not know whether it should reduce "bvvar x = bvvar y"
   * to ebexp_atomic or shift "(".
   */
  | AND ebexp_atomic_without_eqmod ebexp_atomic   { Eand ($2, $3) }
  | LPAR ebexp RPAR                               { $2 }
  | eexp EQOP eexp eq_suffix                      { match $4 with
                                                    | None -> Eeq ($1, $3)
                                                    | Some m -> Eeqmod ($1, $3, m) }
  | AND LSQUARE ebexps RSQUARE                    { eands $3 }
  | LANDOP LSQUARE ebexps RSQUARE                 { eands $3 }
;

ebexp_atomic_without_eqmod:
    TRUE                                          { etrue }
  | EQ eexp eexp_no_unary                         { Eeq ($2, $3) }
  | EQMOD eexp eexp_no_unary eexp_no_unary        { Eeqmod ($2, $3, $4) }
  | AND ebexp_atomic_without_eqmod ebexp_atomic_without_eqmod
                                                  { Eand ($2, $3) }
  | LPAR ebexp RPAR                               { $2 }
  | eexp EQOP eexp                                { Eeq ($1, $3) }
  | AND LSQUARE ebexps RSQUARE                    { eands $3 }
  | LANDOP LSQUARE ebexps RSQUARE                 { eands $3 }
;

eq_suffix:
                                                  { None }
  | LPAR MOD eexp RPAR                            { Some $3 }
;

ebexps:
    ebexp COMMA ebexps                            { $1::$3 }
  | ebexp                                         { [$1] }
;

cmpop_infix:
    ULTOP                                         { Rult }
  | ULEOP                                         { Rule }
  | UGTOP                                         { Rugt }
  | UGEOP                                         { Ruge }
  | SLTOP                                         { Rslt }
  | SLEOP                                         { Rsle }
  | SGTOP                                         { Rsgt }
  | SGEOP                                         { Rsge }
;

eexp:
    defined_var                                   { Evar $1 }
  | simple_const                                  { Econst $1 }
  | LPAR eexp RPAR                                { $2 }
  /* Extensions */
  | NEG eexp                                      { eneg $2 }
  | ADD eexp eexp_no_unary                        { eadd $2 $3 }
  | SUB eexp eexp_no_unary                        { esub $2 $3 }
  | MUL eexp eexp_no_unary                        { emul $2 $3 }
  | SQ eexp                                       { esq $2 }
  | ADD LSQUARE eexps RSQUARE                     { eadds $3 }
  | MUL LSQUARE eexps RSQUARE                     { emuls $3 }
  | SUBOP eexp %prec UMINUS                       { eneg $2 }
  | eexp ADDOP eexp                               { eadd $1 $3 }
  | eexp SUBOP eexp                               { esub $1 $3 }
  | eexp MULOP eexp                               { emul $1 $3 }
  | eexp POWOP const                              { let e = $1 in
                                                    let i = Z.to_int $3 in
                                                    match e with
                                                    | Econst n -> Econst (Z.pow n i)
                                                    | _ ->
                                                      let rec helper j =
                                                        if j = 0 then Econst Z.one
                                                        else if j = 1 then e
                                                        else if j = 2 then esq e
                                                        else emul (helper (j - 1)) e in
                                                      helper i }
  | ULIMBS const LSQUARE eexps RSQUARE            { limbs (Z.to_int $2) $4 }
;

eexp_no_unary:
    defined_var                                   { Evar $1 }
  | simple_const                                  { Econst $1 }
  | LPAR eexp RPAR                                { $2 }
  /* Extensions */
  | NEG eexp                                      { eneg $2 }
  | ADD eexp eexp_no_unary                        { eadd $2 $3 }
  | SUB eexp eexp_no_unary                        { esub $2 $3 }
  | MUL eexp eexp_no_unary                        { emul $2 $3 }
  | SQ eexp                                       { esq $2 }
  | ADD LSQUARE eexps RSQUARE                     { eadds $3 }
  | MUL LSQUARE eexps RSQUARE                     { emuls $3 }
  | eexp_no_unary ADDOP eexp                      { eadd $1 $3 }
  | eexp_no_unary SUBOP eexp                      { esub $1 $3 }
  | eexp_no_unary MULOP eexp                      { emul $1 $3 }
  | eexp_no_unary POWOP const                     { let e = $1 in
                                                    let i = Z.to_int $3 in
                                                    match e with
                                                    | Econst n -> Econst (Z.pow n i)
                                                    | _ ->
                                                      let rec helper j =
                                                        if j = 0 then Econst Z.one
                                                        else if j = 1 then e
                                                        else if j = 2 then esq e
                                                        else emul (helper (j - 1)) e in
                                                      helper i }
  | ULIMBS const LSQUARE eexps RSQUARE            { limbs (Z.to_int $2) $4 }
;

eexps:
    eexp COMMA eexps                              { $1::$3 }
  | eexp                                          { [$1] }
;

rbexp:
    rbexp_and LOROP rbexp                         { Ror ($1, $3) }
  | rbexp_and                                     { $1 }
;

rbexp_and:
    rbexp_atomic LANDOP rbexp_and                 { Rand ($1, $3) }
  | rbexp_atomic                                  { $1 }
;

rbexp_atomic:
    TRUE                                          { Rtrue }
  | EQ rexp rexp                                  { let e1 = $2 in
                                                    let e2 = $3 in
                                                    let w1 = size_of_rexp e1 in
                                                    Req (w1, e1, e2) }
  | NEG rbexp_atomic                              { Rneg $2 }
  | NEGOP rbexp_atomic                            { Rneg $2 }
  | AND rbexp_atomic_without_eqmod rbexp_atomic   { Rand ($2, $3) }
  | OR rbexp_atomic_without_eqmod rbexp_atomic    { Ror ($2, $3) }
  | LPAR rbexp RPAR                               { $2 }
  /* Extensions */
  | rexp EQOP rexp req_suffix                     { let e1 = $1 in
                                                    let e2 = $3 in
                                                    let w1 = size_of_rexp e1 in
                                                    match $4 with
                                                    | None -> Req (w1, e1, e2)
                                                    | Some m -> reqmod w1 e1 e2 m }
  | rexp cmpop_infix rexp                         { let e1 = $1 in
                                                    let e2 = $3 in
                                                    let op = $2 in
                                                    let w1 = size_of_rexp e1 in
                                                    Rcmp(w1, op, e1, e2) }
  | cmpop_prefix rexp rexp                        { let e1 = $2 in
                                                    let e2 = $3 in
                                                    let w1 = size_of_rexp e1 in
                                                    Rcmp (w1, $1, e1, e2) }
  | AND LSQUARE rbexps RSQUARE                    { rands $3 }
  | LANDOP LSQUARE rbexps RSQUARE                 { rands $3 }
  | OR LSQUARE rbexps RSQUARE                     { rors $3 }
  | LOROP LSQUARE rbexps RSQUARE                  { rors $3 }
  | EQMOD rexp rexp rexp                          { let e1 = $2 in
                                                    let e2 = $3 in
                                                    let m = $4 in
                                                    let w1 = size_of_rexp e1 in
                                                    reqmod w1 e1 e2 m
                                                  }
;

rbexp_atomic_without_eqmod:
    TRUE                                          { Rtrue }
  | EQ rexp rexp                                  { let e1 = $2 in
                                                    let e2 = $3 in
                                                    let w1 = size_of_rexp e1 in
                                                    Req (w1, e1, e2) }
  | NEG rbexp_atomic_without_eqmod                { Rneg $2 }
  | AND rbexp_atomic_without_eqmod rbexp_atomic_without_eqmod
                                                  { Rand ($2, $3) }
  | OR rbexp_atomic_without_eqmod rbexp_atomic_without_eqmod
                                                  { Ror ($2, $3) }
  | LPAR rbexp RPAR                               { $2 }
  /* Extensions */
  | rexp EQOP rexp                                { let e1 = $1 in
                                                    let e2 = $3 in
                                                    let w1 = size_of_rexp e1 in
                                                    Req (w1, e1, e2) }
  | rexp cmpop_infix rexp                         { let e1 = $1 in
                                                    let e2 = $3 in
                                                    let op = $2 in
                                                    let w1 = size_of_rexp e1 in
                                                    Rcmp(w1, op, e1, e2) }
  | cmpop_prefix rexp rexp                        { let e1 = $2 in
                                                    let e2 = $3 in
                                                    let w1 = size_of_rexp e1 in
                                                    Rcmp (w1, $1, e1, e2) }
  | AND LSQUARE rbexps RSQUARE                    { rands $3 }
  | LANDOP LSQUARE rbexps RSQUARE                 { rands $3 }
  | OR LSQUARE rbexps RSQUARE                     { rors $3 }
  | LOROP LSQUARE rbexps RSQUARE                  { rors $3 }
  | EQMOD rexp rexp rexp                          { let e1 = $2 in
                                                    let e2 = $3 in
                                                    let m = $4 in
                                                    let w1 = size_of_rexp e1 in
                                                    reqmod w1 e1 e2 m
                                                  }
;

req_suffix:
                                                  { None }
  | LPAR MOD rexp RPAR                            { Some $3 }
;

cmpop_prefix:
    ULT                                           { Rult }
  | ULE                                           { Rule }
  | UGT                                           { Rugt }
  | UGE                                           { Ruge }
  | SLT                                           { Rslt }
  | SLE                                           { Rsle }
  | SGT                                           { Rsgt }
  | SGE                                           { Rsge }
;

rbexps:
    rbexp COMMA rbexps                            { $1::$3 }
  | rbexp                                         { [$1] }
;

rexp:
    defined_var                                   { Rvar $1 }
  | CONST const const                             { Rconst (Z.to_int $2, $3) }
  | const AT const                                { Rconst (Z.to_int $3, $1) }
  | UEXT rexp const                               { let e = $2 in
                                                    let i = Z.to_int $3 in
                                                    let w = size_of_rexp e in
                                                    Ruext (w, e, i) }
  | SEXT rexp const                               { let e = $2 in
                                                    let i = Z.to_int $3 in
                                                    let w = size_of_rexp e in
                                                    Rsext (w, e, i) }
  | LPAR rexp RPAR                                { $2 }
  /* Extensions */
  | NEG rexp                                      { let e = $2 in
                                                    let w = size_of_rexp e in
                                                    Runop (w, Rnegb, e) }
  | NEGOP rexp                                    { let e = $2 in
                                                    let w = size_of_rexp e in
                                                    Runop (w, Rnegb, e) }
  | NOT rexp                                      { let e = $2 in
                                                    let w = size_of_rexp e in
                                                    Runop (w, Rnotb, e) }
  | NOTOP rexp                                    { let e = $2 in
                                                    let w = size_of_rexp e in
                                                    Runop (w, Rnotb, e) }
  | ADD rexp rexp                                 { let e1 = $2 in
                                                    let e2 = $3 in
                                                    let w1 = size_of_rexp e1 in
                                                    radd w1 e1 e2 }
  | SUB rexp rexp                                 { let e1 = $2 in
                                                    let e2 = $3 in
                                                    let w1 = size_of_rexp e1 in
                                                    rsub w1 e1 e2 }
  | MUL rexp rexp                                 { let e1 = $2 in
                                                    let e2 = $3 in
                                                    let w1 = size_of_rexp e1 in
                                                    rmul w1 e1 e2 }
  | SQ rexp                                       { let e = $2 in
                                                    rsq (size_of_rexp e) e }
  | UMOD rexp rexp                                { let e1 = $2 in
                                                    let e2 = $3 in
                                                    let w1 = size_of_rexp e1 in
                                                    rumod w1 e1 e2 }
  | SREM rexp rexp                                { let e1 = $2 in
                                                    let e2 = $3 in
                                                    let w1 = size_of_rexp e1 in
                                                    rsrem w1 e1 e2 }
  | SMOD rexp rexp                                { let e1 = $2 in
                                                    let e2 = $3 in
                                                    let w1 = size_of_rexp e1 in
                                                    rsmod w1 e1 e2 }
  | AND rexp rexp                                 { let e1 = $2 in
                                                    let e2 = $3 in
                                                    let w1 = size_of_rexp e1 in
                                                    Rbinop (w1, Randb, e1, e2) }
  | OR rexp rexp                                  { let e1 = $2 in
                                                    let e2 = $3 in
                                                    let w1 = size_of_rexp e1 in
                                                    Rbinop (w1, Rorb, e1, e2) }
  | XOR rexp rexp                                 { let e1 = $2 in
                                                    let e2 = $3 in
                                                    let w1 = size_of_rexp e1 in
                                                    Rbinop (w1, Rxorb, e1, e2) }
  | ADD LSQUARE rexps RSQUARE                     { let es = $3 in
                                                    match es with
                                                    | [] -> raise (Failure "No range expression is passed to bvradds.")
                                                    | hd::_tl -> radds (size_of_rexp hd) es }
  | MUL LSQUARE rexps RSQUARE                     { let es = $3 in
                                                    match es with
                                                    | [] -> raise (Failure "No range expression is passed to bvradds.")
                                                    | hd::_tl -> rmuls (size_of_rexp hd) es }
  | ULIMBS const LSQUARE rexps RSQUARE            { let w = Z.to_int $2 in
                                                    let es = $4 in
                                                    let tw = !wordsize * (List.length es) in
                                                    let es = List.map (fun e -> Ruext (!wordsize, e, tw - !wordsize)) es in
                                                    let rec helper i es =
                                                      match es with
                                                      | [] -> Rconst (tw, Z.zero)
                                                      | hd::[] -> rmul tw hd (Rconst (tw, Z.pow z_two (i*w)))
                                                      | hd::tl -> radd tw (rmul tw hd (Rconst (tw, Z.pow z_two (i*w)))) (helper (i+1) tl) in
                                                    let res = helper 0 es in
                                                    res }
  | SLIMBS const LSQUARE rexps RSQUARE            { let w = Z.to_int $2 in
                                                    let es = $4 in
                                                    let last = List.length es - 1 in
                                                    let tw = !wordsize * (List.length es) in
                                                    let es = List.mapi (fun i e -> if i == last then Rsext (!wordsize, e, tw - !wordsize)
                                                                                   else Ruext (!wordsize, e, tw - !wordsize)) es in
                                                    let rec helper i es =
                                                      match es with
                                                      | [] -> Rconst (tw, Z.zero)
                                                      | hd::[] -> rmul tw hd (Rconst (tw, Z.pow z_two (i*w)))
                                                      | hd::tl -> radd tw (rmul tw hd (Rconst (tw, Z.pow z_two (i*w)))) (helper (i+1) tl) in
                                                    let res = helper 0 es in
                                                    res }
  | rexp ADDOP rexp                               { let e1 = $1 in
                                                    let e2 = $3 in
                                                    let w1 = size_of_rexp e1 in
                                                    Rbinop (w1, Radd, e1, e2) }
  | rexp SUBOP rexp                               { let e1 = $1 in
                                                    let e2 = $3 in
                                                    let w1 = size_of_rexp e1 in
                                                    Rbinop (w1, Rsub, e1, e2) }
  | rexp MULOP rexp                               { let e1 = $1 in
                                                    let e2 = $3 in
                                                    let w1 = size_of_rexp e1 in
                                                    Rbinop (w1, Rmul, e1, e2) }
  | rexp ANDOP rexp                               { let e1 = $1 in
                                                    let e2 = $3 in
                                                    let w1 = size_of_rexp e1 in
                                                    Rbinop (w1, Randb, e1, e2) }
  | rexp OROP rexp                                { let e1 = $1 in
                                                    let e2 = $3 in
                                                    let w1 = size_of_rexp e1 in
                                                    Rbinop (w1, Rorb, e1, e2) }
  | rexp XOROP rexp                               { let e1 = $1 in
                                                    let e2 = $3 in
                                                    let w1 = size_of_rexp e1 in
                                                    Rbinop (w1, Rxorb, e1, e2) }
;

rexps:
    rexp COMMA rexps                              { $1::$3 }
  | rexp                                          { [$1] }
;

lval:
    ID AT typ                                     { mkvar $1 $3 }
  | typ ID                                        { mkvar $2 $1 }
;

lcarry:
    ID                                            { mkvar $1 bit_t }
  | ID AT typ                                     { if $3 = bit_t then mkvar $1 bit_t
                                                    else raise_at !lnum ("The type of a carry variable " ^ $1 ^ " should be \"bit\"") }
  | typ ID                                        { if $1 = bit_t then mkvar $2 bit_t
                                                    else raise_at !lnum ("The type of a carry variable " ^ $2 ^ " should be \"bit\"") }
;

lval_or_lcarry:
    ID AT typ                                       { mkvar $1 $3 }
  | typ ID                                          { mkvar $2 $1 }
;

atomic:
    const AT typ                                  { Aconst ($3, $1) }
  | typ const                                     { Aconst ($1, $2) }
  | defined_var                                   { Avar $1 }
;

defined_var:
    ID AT typ                                     { mkvar $1 $3 }
  | typ ID                                        { mkvar $2 $1 }
;

gvars:
  gvar                                            { VS.singleton $1 }
| gvar COMMA gvars                                { VS.add $1 $3 }
;

gvar:
    ID AT typ                                       { mkvar $1 $3 }
  | typ ID                                          { mkvar $2 $1 }
;

const:
    simple_const                                  { $1 }
  | LPAR complex_const RPAR                       { $2 }
;

simple_const:
    NUM                                           { $1 }
;

complex_const:
    const                                         { $1 }
  | SUBOP complex_const                           { Z.neg $2 }
  | complex_const ADDOP complex_const             { Z.add $1 $3 }
  | complex_const SUBOP complex_const             { Z.sub $1 $3 }
  | complex_const MULOP complex_const             { Z.mul $1 $3 }
  | complex_const POWOP complex_const             { Z.pow $1 (Z.to_int $3) }
;

carry:
    atomic                                        { match $1 with
                                                    | Avar v -> if v.vtyp = bit_t then $1
                                                                else failwith ("The type of a carry variable " ^ string_of_atomic $1 ^ " should be \"bit\"")
                                                    | Aconst (ty, _n) -> if ty = bit_t then $1
                                                                        else failwith ("The type of a carry variable " ^ string_of_atomic $1 ^ " should be \"bit\"")
                                                  }
;

typ:
  UINT                                            { uint_t $1 }
| SINT                                            { int_t $1 }
| BIT                                             { bit_t }
;
