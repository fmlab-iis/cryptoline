%{
  (*
   * This is a parser for fully expanded algebra and range specifications (espec and rspec).
   * No well-formedness is checked.
   *)

  open Ast.Cryptoline
  open Common

  exception ParseError of string

  let raise_at_line lno msg = raise (ParseError ("Parse failure at line " ^ string_of_int lno ^ ". " ^ msg))
  let _raise_at pos msg = raise (ParseError ("Parse failure at " ^ string_of_pos pos ^ ". " ^ msg))

%}

%token <string> COMMENT
%token <Z.t> NUM
%token <string> ID VEC_ID PATH
%token <int> UINT SINT
%token BIT
%token LBRAC RBRAC LPAR RPAR LSQUARE RSQUARE COMMA SEMICOLON DOT DOTDOT VBAR COLON
/* Instructions */
%token CONST MOV
%token BROADCAST
%token ADD ADDS ADC ADCS SUB SUBC SUBB SBC SBCS SBB SBBS MUL MULS MULL MULJ SPLIT SPL
%token UADD UADDS UADC UADCS USUB USUBC USUBB USBC USBCS USBB USBBS UMUL UMULS UMULL UMULJ USPLIT USPL
%token SADD SADDS SADC SADCS SSUB SSUBC SSUBB SSBC SSBCS SSBB SSBBS SMUL SMULS SMULL SMULJ SSPLIT SSPL
%token SHL SHLS SHR SHRS SAR SARS CSHL CSHLS CSHR CSHRS ROL ROR CONCAT SET CLEAR NONDET CMOV AND OR NOT CAST VPC JOIN ASSERT EASSERT RASSERT ASSUME GHOST
%token CUT ECUT RCUT NOP SETEQ SETNE
/* Logical Expressions */
%token VARS NEG SQ EXT UEXT SEXT MOD UMOD SREM SMOD XOR ULT ULE UGT UGE SLT SLE SGT SGE SHR SAR
/* Predicates */
%token TRUE EQ EQMOD EQUMOD EQSMOD EQSREM
/* Operators */
%token ADDOP SUBOP MULOP POWOP ULEOP ULTOP UGEOP UGTOP SLEOP SLTOP SGEOP SGTOP EQOP NEGOP MODOP LANDOP LOROP NOTOP ANDOP OROP XOROP SHLOP SHROP SAROP
/* Others */
%token AT PROC CALL ULIMBS SLIMBS PROVE WITH ALL CUTS ASSUMES GHOSTS PRECONDITION DEREFOP ALGEBRA RANGE QFBV SOLVER SMT
%token EOF

%left LOROP
%left LANDOP
%nonassoc EQOP ULTOP ULEOP UGTOP UGEOP SLTOP SLEOP SGTOP SGEOP
%left OROP
%left XOROP
%left ANDOP
%left SHLOP SHROP SAROP
%left ADDOP SUBOP
%left MULOP
%left POWOP
%right NEGOP NOTOP
%left MODOP
%nonassoc VAR CONST NEG ADD SUB MUL SQ UMOD SREM SMOD NOT AND OR XOR ULT ULE UGT UGE SLT SLE SGT SGE SHL SHLS SHR SHRS SAR SARS ROL ROR CONCAT
%nonassoc SETEQ SETNE EQ EQMOD
%nonassoc UMINUS

%start espec
%start rspec
%type <string list * Typecheck.Std.espec> espec
%type <string list * Typecheck.Std.rspec> rspec

%%

espec:
  comments epre program epost
  {
    let (post, pwss) = $4 in
    ($1, { espre = $2; esprog = $3; espost = [(post, pwss)] })
  }
;

rspec:
  comments rpre program rpost
  {
    let (post, pwss) = $4 in
    ($1, { rspre = $2; rsprog = $3; rspost = [(post, pwss)] })
  }
;

comments:
                                                  { [] }
  | COMMENT comments                              { $1::$2 }
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
    MOV lval atom                                 { [min_int, Imov ($2, $3)] }
  | SHL lval atom atom                            { [min_int, Ishl ($2, $3, $4)] }
  | SHLS lval lval atom const_exp_primary         { [min_int, Ishls ($2, $3, $4, $5)] }
  | SHR lval atom atom                            { [min_int, Ishr ($2, $3, $4)] }
  | SHRS lval lval atom const_exp_primary         { [min_int, Ishrs ($2, $3, $4, $5)] }
  | SAR lval atom atom                            { [min_int, Isar ($2, $3, $4)] }
  | SARS lval lval atom const_exp_primary         { [min_int, Isars ($2, $3, $4, $5)] }
  | CSHL lval lval atom atom const_exp_primary    { [min_int, Icshl ($2, $3, $4, $5, $6)] }
  | CSHLS lval lval lval atom atom const_exp_primary
                                                  { [min_int, Icshls ($2, $3, $4, $5, $6, $7)] }
  | CSHR lval lval atom atom const_exp_primary    { [min_int, Icshr ($2, $3, $4, $5, $6)] }
  | CSHRS lval lval lval atom atom const_exp_primary
                                                  { [min_int, Icshrs ($2, $3, $4, $5, $6, $7)] }
  | ROL lval atom atom                            { [min_int, Irol ($2, $3, $4)] }
  | ROR lval atom atom                            { [min_int, Iror ($2, $3, $4)] }
  | NONDET lval                                   { [min_int, Inondet $2] }
  | CMOV lval carry atom atom                     { [min_int, Icmov ($2, $3, $4, $5)] }
  | SETEQ lval atom atom                          { [min_int, Iseteq ($2, $3, $4)] }
  | SETNE lval atom atom                          { [min_int, Isetne ($2, $3, $4)] }
  | ADD lval atom atom                            { [min_int, Iadd ($2, $3, $4)] }
  | ADDS lcarry lval atom atom                    { [min_int, Iadds ($2, $3, $4, $5)] }
  | ADC lval atom atom carry                      { [min_int, Iadc ($2, $3, $4, $5)] }
  | ADCS lcarry lval atom atom carry              { [min_int, Iadcs ($2, $3, $4, $5, $6)] }
  | SUB lval atom atom                            { [min_int, Isub ($2, $3, $4)] }
  | SUBC lcarry lval atom atom                    { [min_int, Isubc ($2, $3, $4, $5)] }
  | SUBB lcarry lval atom atom                    { [min_int, Isubb ($2, $3, $4, $5)] }
  | SBC lval atom atom carry                      { [min_int, Isbc ($2, $3, $4, $5)] }
  | SBCS lcarry lval atom atom carry              { [min_int, Isbcs ($2, $3, $4, $5, $6)] }
  | SBB lval atom atom carry                      { [min_int, Isbb ($2, $3, $4, $5)] }
  | SBBS lcarry lval atom atom carry              { [min_int, Isbbs ($2, $3, $4, $5, $6)] }
  | MUL lval atom atom                            { [min_int, Imul ($2, $3, $4)] }
  | MULS lcarry lval atom atom                    { [min_int, Imuls ($2, $3, $4, $5)] }
  | MULL lval lval atom atom                      { [min_int, Imull ($2, $3, $4, $5)] }
  | MULJ lval atom atom                           { [min_int, Imulj ($2, $3, $4)] }
  | SPLIT lval lval atom const_exp_primary        { [min_int, Isplit ($2, $3, $4, $5)] }
  | SPL lval lval atom const_exp_primary          { [min_int, Ispl ($2, $3, $4, $5)] }
  | AND lval atom atom                            { [min_int, Iand ($2, $3, $4)] }
  | OR lval atom atom                             { [min_int, Ior ($2, $3, $4)] }
  | NOT lval atom                                 { [min_int, Inot ($2, $3)] }
  | CAST lval atom                                { [min_int, Icast (None, $2, $3)] }
  | CAST LSQUARE lval RSQUARE lval atom           { [min_int, Icast (Some $3, $5, $6)] }
  | VPC lval atom                                 { [min_int, Ivpc ($2, $3)] }
  | JOIN lval atom atom                           { [min_int, Ijoin ($2, $3, $4)] }
  | ASSERT bexp_prove_with                        { let ((e, r), epwss, rpwss) = $2 in [min_int, Iassert ([(e, epwss)], [(r, rpwss)])] }
  | EASSERT ebexp_prove_with                      { [min_int, Iassert ([$2], [])] }
  | RASSERT rbexp_prove_with                      { [min_int, Iassert ([], [$2])] }
  | ASSUME bexp                                   { [min_int, Iassume ($2)] }
  | CUT bexp_prove_with                           { let ((e, r), epwss, rpwss) = $2 in [min_int, Icut ([(e, epwss)], [(r, rpwss)])] }
  | ECUT ebexp_prove_with                         { let (e, epwss) = $2 in [min_int, Icut ([(e, epwss)], [])] }
  | RCUT rbexp_prove_with                         { let (r, rpwss) = $2 in [min_int, Icut ([], [(r, rpwss)])] }
  | GHOST gvars COLON bexp                        { [min_int, Ighost ($2, $4)] }
  | NOP                                           { [] }
;

ebexp_prove_with:
  ebexp                                           { ($1, []) }
| ebexp PROVE WITH LSQUARE prove_with_specs RSQUARE
                                                  { ($1, $5) }
;

rbexp_prove_with:
  rbexp                                           { ($1, []) }
| rbexp PROVE WITH LSQUARE prove_with_specs RSQUARE
                                                  { ($1, $5) }
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
  | CUTS LSQUARE const_exp_list RSQUARE           { Cuts $3 }
  | ALL CUTS                                      { AllCuts }
  | ALL ASSUMES                                   { AllAssumes }
  | ALL GHOSTS                                    { AllGhosts }
  | ALGEBRA SOLVER ID                             { AlgebraSolver (Options.Std.parse_algebra_solver $3) }
  | ALGEBRA SOLVER SMT COLON path                 { AlgebraSolver (Options.Std.parse_algebra_solver ("smt:" ^ $5)) }
  | RANGE SOLVER path                             { RangeSolver $3 }
  | QFBV SOLVER path                              { RangeSolver $3 }
;

path:
    ID                                            { $1 }
  | PATH                                          { $1 }
;

bexp:
    TRUE                                          { btrue }
  | ebexp VBAR rbexp                              { ($1, $3) }
;

ebexp:
    ebexp_atom LANDOP ebexp                       { Eand ($1, $3) }
  | ebexp_atom                                    { $1 }
;

ebexp_atom:
    TRUE                                          { etrue }
  | EQ eexp eexp_no_unary                         { Eeq ($2, $3) }
  | EQMOD eexp eexp_no_unary eexp_no_unary        { Eeqmod ($2, $3, [ $4 ]) }
  /*
   * Changing ebexp_atom_without_eqmod to ebexp_atom will induce shift/reduce conflicts.
   * Example: bveand bvvar x = bvvar y (bvvar x = bvvar y)
   * When the parser reads "(", it does not know whether it should reduce "bvvar x = bvvar y"
   * to ebexp_atom or shift "(".
   */
  | AND ebexp_atom_without_eqmod ebexp_atom       { Eand ($2, $3) }
  | LPAR ebexp RPAR                               { $2 }
  | eexp EQOP eexp eq_suffix                      { match $4 with
                                                    | None -> Eeq ($1, $3)
                                                    | Some ms -> Eeqmod ($1, $3, ms) }
  | AND LSQUARE ebexps RSQUARE                    { eands $3 }
  | LANDOP LSQUARE ebexps RSQUARE                 { eands $3 }
;

ebexp_atom_without_eqmod:
    TRUE                                          { etrue }
  | EQ eexp eexp_no_unary                         { Eeq ($2, $3) }
  | EQMOD eexp eexp_no_unary eexp_no_unary        { Eeqmod ($2, $3, [ $4 ]) }
  | AND ebexp_atom_without_eqmod ebexp_atom_without_eqmod
                                                  { Eand ($2, $3) }
  | LPAR ebexp RPAR                               { $2 }
  | eexp EQOP eexp                                { Eeq ($1, $3) }
  | AND LSQUARE ebexps RSQUARE                    { eands $3 }
  | LANDOP LSQUARE ebexps RSQUARE                 { eands $3 }
;

eq_suffix:
                                                  { None }
  | LPAR MOD eexp RPAR                            { Some [$3] }
  | LPAR MOD LSQUARE eexps RSQUARE RPAR           { Some $4 }
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
  | const                                         { Econst $1 }
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
  | eexp POWOP const_exp_primary                              { let e = $1 in
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
  | ULIMBS const_exp_primary LSQUARE eexps RSQUARE            { limbs (Z.to_int $2) $4 }
;

eexp_no_unary:
    defined_var                                   { Evar $1 }
  | const                                         { Econst $1 }
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
  | eexp_no_unary POWOP const_exp_primary                     { let e = $1 in
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
  | ULIMBS const_exp_primary LSQUARE eexps RSQUARE            { limbs (Z.to_int $2) $4 }
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
    rbexp_atom LANDOP rbexp_and                   { Rand ($1, $3) }
  | rbexp_atom                                    { $1 }
;

rbexp_atom:
    TRUE                                          { Rtrue }
  | EQ rexp rexp                                  { let e1 = $2 in
                                                    let e2 = $3 in
                                                    let w1 = size_of_rexp e1 in
                                                    Req (w1, e1, e2) }
  | NEG rbexp_atom                                { Rneg $2 }
  | NEGOP rbexp_atom                              { Rneg $2 }
  | AND rbexp_atom_without_eqmod rbexp_atom       { Rand ($2, $3) }
  | OR rbexp_atom_without_eqmod rbexp_atom        { Ror ($2, $3) }
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
  | EQUMOD rexp rexp rexp                         { let e1 = $2 in
                                                    let e2 = $3 in
                                                    let m = $4 in
                                                    let w1 = size_of_rexp e1 in
                                                    requmod w1 e1 e2 m
                                                  }
  | EQSMOD rexp rexp rexp                         { let e1 = $2 in
                                                    let e2 = $3 in
                                                    let m = $4 in
                                                    let w1 = size_of_rexp e1 in
                                                    reqsmod w1 e1 e2 m
                                                  }
  | EQSREM rexp rexp rexp                         { let e1 = $2 in
                                                    let e2 = $3 in
                                                    let m = $4 in
                                                    let w1 = size_of_rexp e1 in
                                                    reqsrem w1 e1 e2 m
                                                  }
;

rbexp_atom_without_eqmod:
    TRUE                                          { Rtrue }
  | EQ rexp rexp                                  { let e1 = $2 in
                                                    let e2 = $3 in
                                                    let w1 = size_of_rexp e1 in
                                                    Req (w1, e1, e2) }
  | NEG rbexp_atom_without_eqmod                  { Rneg $2 }
  | AND rbexp_atom_without_eqmod rbexp_atom_without_eqmod
                                                  { Rand ($2, $3) }
  | OR rbexp_atom_without_eqmod rbexp_atom_without_eqmod
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
  | EQUMOD rexp rexp rexp                         { let e1 = $2 in
                                                    let e2 = $3 in
                                                    let m = $4 in
                                                    let w1 = size_of_rexp e1 in
                                                    requmod w1 e1 e2 m
                                                  }
  | EQSMOD rexp rexp rexp                         { let e1 = $2 in
                                                    let e2 = $3 in
                                                    let m = $4 in
                                                    let w1 = size_of_rexp e1 in
                                                    reqsmod w1 e1 e2 m
                                                  }
  | EQSREM rexp rexp rexp                         { let e1 = $2 in
                                                    let e2 = $3 in
                                                    let m = $4 in
                                                    let w1 = size_of_rexp e1 in
                                                    reqsrem w1 e1 e2 m
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
  | CONST const_exp_primary const_exp_primary     { Rconst (Z.to_int $2, $3) }
  | const_exp_primary AT const_exp_primary        { Rconst (Z.to_int $3, $1) }
  | UEXT rexp const_exp_primary                   { let e = $2 in
                                                    let i = Z.to_int $3 in
                                                    let w = size_of_rexp e in
                                                    Ruext (w, e, i) }
  | SEXT rexp const_exp_primary                   { let e = $2 in
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
  | SHL rexp rexp                                 { let e1 = $2 in
                                                    let e2 = $3 in
                                                    let w1 = size_of_rexp e1 in
                                                    Rbinop (w1, Rshl, e1, e2) }
  | SHR rexp rexp                                 { let e1 = $2 in
                                                    let e2 = $3 in
                                                    let w1 = size_of_rexp e1 in
                                                    Rbinop (w1, Rlshr, e1, e2) }
  | SAR rexp rexp                                 { let e1 = $2 in
                                                    let e2 = $3 in
                                                    let w1 = size_of_rexp e1 in
                                                    Rbinop (w1, Rashr, e1, e2) }
  | ROL rexp rexp                                 { let e1 = $2 in
                                                    let e2 = $3 in
                                                    let w1 = size_of_rexp e1 in
                                                    Rbinop (w1, Rrol, e1, e2) }
  | ROR rexp rexp                                 { let e1 = $2 in
                                                    let e2 = $3 in
                                                    let w1 = size_of_rexp e1 in
                                                    Rbinop (w1, Rror, e1, e2) }
  | CONCAT rexp rexp                              { let e1 = $2 in
                                                    let e2 = $3 in
                                                    let w1 = size_of_rexp e1 in
                                                    let w2 = size_of_rexp e2 in
                                                    Rconcat (w1, w2, e1, e2) }
  | ADD LSQUARE rexps RSQUARE                     { let es = $3 in
                                                    match es with
                                                    | [] -> raise (Failure "No range expression is passed to bvradds.")
                                                    | hd::_tl -> radds (size_of_rexp hd) es }
  | MUL LSQUARE rexps RSQUARE                     { let es = $3 in
                                                    match es with
                                                    | [] -> raise (Failure "No range expression is passed to bvradds.")
                                                    | hd::_tl -> rmuls (size_of_rexp hd) es }
  | ULIMBS const_exp_primary LSQUARE rexps RSQUARE
                                                  { let w = Z.to_int $2 in
                                                    let es = $4 in
                                                    let tw = List.fold_left (fun w1 w2 -> max w1 w2)
                                                                              0
                                                                              (List.mapi (fun i e -> size_of_rexp e + i * w) es) in
                                                      let es = List.map (fun e ->
                                                                          let ew = size_of_rexp e in
                                                                          Ruext (ew, e, tw - ew)) es in
                                                      let rec helper i es =
                                                        match es with
                                                        | [] -> Rconst (tw, Z.zero)
                                                        | hd::[] -> rmul tw hd (Rconst (tw, Z.pow z_two (i*w)))
                                                        | hd::tl -> radd tw (rmul tw hd (Rconst (tw, Z.pow z_two (i*w)))) (helper (i+1) tl) in
                                                      let res = helper 0 es in
                                                      res }
  | SLIMBS const_exp_primary LSQUARE rexps RSQUARE
                                                  { let w = Z.to_int $2 in
                                                    let es = $4 in
                                                    let tw = List.fold_left (fun w1 w2 -> max w1 w2)
                                                                              0
                                                                              (List.mapi (fun i e -> size_of_rexp e + i * w) es) in
                                                      let last = List.length es - 1 in
                                                      let es = List.mapi (fun i e ->
                                                                            let ew = size_of_rexp e in
                                                                            if i == last then Rsext (ew, e, tw - ew)
                                                                            else Ruext (ew, e, tw - ew)) es in
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
                                                    else raise_at_line (get_line_start()) ("The type of a carry variable " ^ $1 ^ " should be \"bit\"") }
  | typ ID                                        { if $1 = bit_t then mkvar $2 bit_t
                                                    else raise_at_line (get_line_start()) ("The type of a carry variable " ^ $2 ^ " should be \"bit\"") }
;

atom:
    const_exp_primary AT typ                      { Aconst ($3, $1) }
  | typ const_exp_primary                         { Aconst ($1, $2) }
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
    ID AT typ                                     { mkvar $1 $3 }
  | typ ID                                        { mkvar $2 $1 }
;

const_exp_list:
    const_exp                                 { [Z.to_int $1] }
  | const_exp COMMA const_exp_list        { (Z.to_int $1)::$3 }
;

const:
    NUM                                           { $1 }
;

const_exp:
    const_exp_primary                             { $1 }
  | SUBOP const_exp                               { Z.neg $2 }
  | const_exp ADDOP const_exp                     { Z.add $1 $3 }
  | const_exp SUBOP const_exp                     { Z.sub $1 $3 }
  | const_exp MULOP const_exp                     { Z.mul $1 $3 }
  | const_exp POWOP const_exp                     { Z.pow $1 (Z.to_int $3) }
;

const_exp_primary:
    const                                         { $1 }
  | LPAR const_exp RPAR                           { $2 }
;

carry:
    atom                                          { match $1 with
                                                    | Avar v -> if v.vtyp = bit_t then $1
                                                                else failwith ("The type of a carry variable " ^ string_of_atom $1 ^ " should be \"bit\"")
                                                    | Aconst (ty, _n) -> if ty = bit_t then $1
                                                                        else failwith ("The type of a carry variable " ^ string_of_atom $1 ^ " should be \"bit\"")
                                                  }
;

typ:
    UINT                                          { uint_t $1 }
  | SINT                                          { int_t $1 }
  | BIT                                           { bit_t }
;
