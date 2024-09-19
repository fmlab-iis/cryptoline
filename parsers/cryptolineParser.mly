%{

(*
 * Use raise_at_line or raise_at to raise an exception if the error location
 * can be determined. Raise ParseError otherwise.
 *)

  open Ast.Cryptoline
  open Ast.MultiTrack
  open Common

%}

%token <string> COMMENT
%token <Z.t> NUM
%token <string> ID VEC_ID PATH
%token <int> UINT SINT
%token BIT
%token LBRAC RBRAC LPAR RPAR LSQUARE RSQUARE COMMA SEMICOLON DOT DOTDOT VBAR COLON
/* Instructions */
%token CONST MOV EXTRACT
%token BROADCAST
%token ADD ADDS ADC ADCS SUB SUBC SUBB SBC SBCS SBB SBBS MUL MULS MULL MULJ UDIV SDIV SPLIT SPL
%token UADD UADDS UADC UADCS USUB USUBC USUBB USBC USBCS USBB USBBS UMUL UMULS UMULL UMULJ USPLIT USPL
%token SADD SADDS SADC SADCS SSUB SSUBC SSUBB SSBC SSBCS SSBB SSBBS SMUL SMULS SMULL SMULJ SSPLIT SSPL
%token SHL SHLS SHR SHRS SAR SARS CSHL CSHLS CSHR CSHRS ROL ROR CONCAT SET CLEAR NONDET CMOV AND OR NOT CAST VPC JOIN ASSERT EASSERT RASSERT ASSUME GHOST
%token CUT ECUT RCUT NOP SETEQ SETNE
/* Logical Expressions */
%token VARS NEG SQ EXT UEXT SEXT MOD UMOD SREM SMOD XOR ULT ULE UGT UGE SLT SLE SGT SGE SHR SAR
/* Predicates */
%token TRUE EQ EQMOD EQUMOD EQSMOD EQSREM
/* Operators */
%token ADDOP SUBOP MULOP POWOP ULEOP ULTOP UGEOP UGTOP SLEOP SLTOP SGEOP SGTOP EQOP NEGOP MODOP LANDOP LOROP NOTOP ANDOP OROP XOROP SHLOP SHROP SAROP ADDADDOP
/* Others */
%token AT PROC INLINE CALL ULIMBS SLIMBS POLY PROVE WITH ALL CUTS ASSUMES GHOSTS PRECONDITION DEREFOP ALGEBRA RANGE QFBV SOLVER SMT LIA NIA
%token EOF DOLPHIN
%token BOGUS

%left LOROP
%left LANDOP
%nonassoc EQOP ULTOP ULEOP UGTOP UGEOP SLTOP SLEOP SGTOP SGEOP
%left OROP
%left XOROP
%left ANDOP
%left SHLOP SHROP SAROP
%left ADDOP SUBOP ADDADDOP
%left MULOP
%left POWOP
%right NEGOP NOTOP
%left MODOP
%nonassoc VAR CONST NEG ADD SUB MUL SQ UMOD SREM SMOD NOT AND OR XOR ULT ULE UGT UGE SLT SLE SGT SGE SHL SHLS SHR SHRS SAR SARS ROL ROR CONCAT
%nonassoc SETEQ SETNE EQ EQMOD
%nonassoc UMINUS DOLPHIN

%start specs
%start spec
%start prog
%type <((Ast.Cryptoline.var list * Ast.Cryptoline.var list) * Typecheck.Std.tagged_spec) Ast.Cryptoline.SM.t> specs
%type <(Ast.Cryptoline.var list * Typecheck.Std.tagged_spec)> spec
%type <Ast.MultiTrack.lined_tagged_program> prog

%type <lval_t> lval
%type <lval_vec_t> lval_v
%type <atom_t> atom
%type <atom_vec_t> atom_v

%%

specs:
  procs EOF                                       { parse_specs $1 }
;

spec:
  procs EOF                                       { parse_spec $1 }
;

procs:
    proc procs                                    { fun ctx -> $1 ctx; $2 ctx }
  |                                               { fun _ -> () }
;

proc:
    PROC ID LPAR formals RPAR EQOP pre program post
                                                  { parse_proc (get_line_start()) $2 $4 $7 $8 $9 }
  | CONST ID EQOP const_exp                       { parse_global_constant (get_line_start()) $2 $4 }
;

pre:
    LBRAC tagged_bexp RBRAC                       { fun ctx -> Some ($2 ctx) }
  |                                               { fun _ -> None }
;

post:
    LBRAC tagged_bexp_prove_with_list RBRAC       { fun ctx -> Some ($2 ctx) }
  |                                               { fun _ -> None }
;

formals:
    fvars                                         { ($1, []) }
  | fvars SEMICOLON fvars                         { ($1, $3) }
  | SEMICOLON fvars                               { ([], $2) }
  |                                               { ([], []) }
;

fvars:
    fvar                                          { $1 }
  | fvar COMMA fvars                              { parse_fvar_cons (get_line_start()) $1 $3 }
;

fvar:
    fvar_primary                                  { $1 }
  | fvar_vec                                      { $1 }
;

fvar_primary:
    typ ID                                        { parse_fvar (get_line_start()) $2 $1 }
  | ID AT typ                                     { parse_fvar (get_line_start()) $1 $3 }
  | typ ID OROP NUM DOTDOT NUM                    { parse_fvar_expansion (get_line_start()) $2 $1 $4 $6 }
  | ID AT typ OROP NUM DOTDOT NUM                 { parse_fvar_expansion (get_line_start()) $1 $3 $5 $7 }
;

fvar_vec:
    vectyp VEC_ID                                 { parse_fvar_vec (get_line_start()) $2 $1 }
  | VEC_ID AT vectyp                              { parse_fvar_vec (get_line_start()) $1 $3 }
;

prog:
  program EOF
    {
      parse_instrs (empty_parsing_context ()) $1
    }
;

program:
  instrs                                          { $1 }
;

instrs:
    instr SEMICOLON                               { [$1] }
  | instr SEMICOLON instrs                        { $1 :: $3 }
  | instr instr                                   { raise_at (get_rhs_end 1) ("A semicolon is expected at the end of an instruction.") }
;

instr:
    MOV lval atom                                 { (get_line_start(), `MOV ($2, $3)) }
  | MOV lval_v atom_v                             { (get_line_start(), `VMOV ($2, $3)) }
  | EXTRACT lval_v LSQUARE nums RSQUARE atom_vs
                                                  { (get_line_start(), `EXTRACT ($2, $4, $6)) }
  | lval EQOP atom                                { (get_line_start(), `MOV ($1, $3)) }
  | BROADCAST lval_v const_exp_primary atom_v     { (get_line_start(), `VBROADCAST ($2, $3, $4)) }
  | SHL lval atom atom                            { (get_line_start(), `SHL ($2, $3, $4)) }
  | SHL lval_v atom_v_primary atom_v_primary      { (get_line_start(), `VSHL ($2, $3, $4)) }
  | lval EQOP SHL atom atom                       { (get_line_start(), `SHL ($1, $4, $5)) }
  | SHLS lval lval atom const_exp_primary         { (get_line_start(), `SHLS ($2, $3, $4, $5)) }
  | SHLS lval_v lval_v atom_v_primary const_exp_v_primary
                                                  { (get_line_start(), `VSHLS ($2, $3, $4, $5)) }
  | lval lval EQOP SHLS atom const_exp_primary    { (get_line_start(), `SHLS ($1, $2, $5, $6)) }
  | SHR lval atom atom                            { (get_line_start(), `SHR ($2, $3, $4)) }
  | SHR lval_v atom_v_primary atom_v_primary      { (get_line_start(), `VSHR ($2, $3, $4)) }
  | lval EQOP SHR atom atom                       { (get_line_start(), `SHR ($1, $4, $5)) }
  | SHRS lval lval atom const_exp_primary         { (get_line_start(), `SHRS ($2, $3, $4, $5)) }
  | SHRS lval_v lval_v atom_v_primary const_exp_v_primary
                                                  { (get_line_start(), `VSHRS ($2, $3, $4, $5)) }
  | lval lval EQOP SHRS atom const_exp_primary    { (get_line_start(), `SHRS ($1, $2, $5, $6)) }
  | SAR lval atom atom                            { (get_line_start(), `SAR ($2, $3, $4)) }
  | SAR lval_v atom_v_primary atom_v_primary      { (get_line_start(), `VSAR ($2, $3, $4)) }
  | lval EQOP SAR atom atom                       { (get_line_start(), `SAR ($1, $4, $5)) }
  | SARS lval lval atom const_exp_primary         { (get_line_start(), `SARS ($2, $3, $4, $5)) }
  | SARS lval_v lval_v atom_v_primary const_exp_v_primary
                                                  { (get_line_start(), `VSARS ($2, $3, $4, $5)) }
  | lval lval EQOP SARS atom const_exp_primary    { (get_line_start(), `SARS ($1, $2, $5, $6)) }
  | CSHL lval lval atom atom const_exp_primary    { (get_line_start(), `CSHL ($2, $3, $4, $5, $6)) }
  | lval DOT lval EQOP CSHL atom atom const_exp_primary
                                                  { (get_line_start(), `CSHL ($1, $3, $6, $7, $8)) }
  | CSHLS lval lval lval atom atom const_exp_primary
                                                  { (get_line_start(), `CSHLS ($2, $3, $4, $5, $6, $7)) }
  | lval DOT lval DOT lval EQOP CSHLS atom atom const_exp_primary
                                                  { (get_line_start(), `CSHLS ($1, $3, $5, $8, $9, $10)) }
  | CSHR lval lval atom atom const_exp_primary    { (get_line_start(), `CSHR ($2, $3, $4, $5, $6)) }
  | lval DOT lval EQOP CSHR atom atom const_exp_primary
                                                  { (get_line_start(), `CSHR ($1, $3, $6, $7, $8)) }
  | CSHRS lval lval lval atom atom const_exp_primary
                                                  { (get_line_start(), `CSHRS ($2, $3, $4, $5, $6, $7)) }
  | lval DOT lval DOT lval EQOP CSHRS atom atom const_exp_primary
                                                  { (get_line_start(), `CSHRS ($1, $3, $5, $8, $9, $10)) }
  | ROL lval atom atom                            { (get_line_start(), `ROL ($2, $3, $4)) }
  | ROL lval_v atom_v_primary atom_v_primary      { (get_line_start(), `VROL ($2, $3, $4)) }
  | ROR lval atom atom                            { (get_line_start(), `ROR ($2, $3, $4)) }
  | ROR lval_v atom_v_primary atom_v_primary      { (get_line_start(), `VROR ($2, $3, $4)) }
  | SET lval                                      { (get_line_start(), `SET $2) }
  | SET lval_v                                    { (get_line_start(), `VSET $2) }
  | CLEAR lval                                    { (get_line_start(), `CLEAR $2) }
  | CLEAR lval_v                                  { (get_line_start(), `VCLEAR $2) }
  | NONDET lval                                   { (get_line_start(), `NONDET $2) }
  | NONDET lval_v                                 { (get_line_start(), `VNONDET $2) }
  | CMOV lval atom atom atom                      { (get_line_start(), `CMOV ($2, $3, $4, $5)) }
  | CMOV lval_v atom_v_primary atom_v_primary atom_v_primary
                                                  { (get_line_start(), `VCMOV ($2, $3, $4, $5)) }
  | lval EQOP CMOV atom atom atom                 { (get_line_start(), `CMOV ($1, $4, $5, $6)) }
  | ADD lval atom atom                            { (get_line_start(), `ADD ($2, $3, $4)) }
  | ADD lval_v atom_v_primary atom_v_primary      { (get_line_start(), `VADD ($2, $3, $4)) }
  | lval EQOP ADD atom atom                       { (get_line_start(), `ADD ($1, $4, $5)) }
  | ADDS lval lval atom atom                      { (get_line_start(), `ADDS ($2, $3, $4, $5)) }
  | ADDS lval_v lval_v atom_v_primary atom_v_primary
                                                  { (get_line_start(), `VADDS ($2, $3, $4, $5)) }
  | lval DOT lval EQOP ADDS atom atom             { (get_line_start(), `ADDS ($1,  $3, $6, $7)) }
  | ADC lval atom atom atom                       { (get_line_start(), `ADC ($2, $3, $4, $5)) }
  | lval EQOP ADC atom atom atom                  { (get_line_start(), `ADC ($1, $4, $5, $6)) }
  | ADCS lval lval atom atom atom                 { (get_line_start(), `ADCS ($2, $3, $4, $5, $6)) }
  | lval DOT lval EQOP ADCS atom atom atom        { (get_line_start(), `ADCS ($1, $3, $6, $7, $8)) }
  | SUB lval atom atom                            { (get_line_start(), `SUB ($2, $3, $4)) }
  | SUB lval_v atom_v_primary atom_v_primary
                                                  { (get_line_start(), `VSUB ($2, $3, $4)) }
  | lval EQOP SUB atom atom                       { (get_line_start(), `SUB ($1, $4, $5)) }
  | SUBC lval lval atom atom                      { (get_line_start(), `SUBC ($2, $3, $4, $5)) }
  | SUBC lval_v lval_v atom_v_primary atom_v_primary
                                                  { (get_line_start(), `VSUBC ($2, $3, $4, $5)) }
  | lval DOT lval EQOP SUBC atom atom             { (get_line_start(), `SUBC ($1, $3, $6, $7)) }
  | SUBB lval lval atom atom                      { (get_line_start(), `SUBB ($2, $3, $4, $5)) }
  | SUBB lval_v lval_v atom_v_primary atom_v_primary
                                                  { (get_line_start(), `VSUBB ($2, $3, $4, $5)) }
  | lval DOT lval EQOP SUBB atom atom             { (get_line_start(), `SUBB ($1, $3, $6, $7)) }
  | SBC lval atom atom atom                       { (get_line_start(), `SBC ($2, $3, $4, $5)) }
  | lval EQOP SBC atom atom atom                  { (get_line_start(), `SBC ($1, $4, $5, $6)) }
  | SBCS lval lval atom atom atom                 { (get_line_start(), `SBCS ($2, $3, $4, $5, $6)) }
  | lval DOT lval EQOP SBCS atom atom atom        { (get_line_start(), `SBCS ($1, $3, $6, $7, $8)) }
  | SBB lval atom atom atom                       { (get_line_start(), `SBB ($2, $3, $4, $5)) }
  | lval EQOP SBB atom atom atom                  { (get_line_start(), `SBB ($1, $4, $5, $6)) }
  | SBBS lval lval atom atom atom                 { (get_line_start(), `SBBS ($2, $3, $4, $5, $6)) }
  | lval DOT lval EQOP SBBS atom atom atom        { (get_line_start(), `SBBS ($1, $3, $6, $7, $8)) }
  | MUL lval atom atom                            { (get_line_start(), `MUL ($2, $3, $4)) }
  | MUL lval_v atom_v_primary atom_v_primary      { (get_line_start(), `VMUL ($2, $3, $4)) }
  | lval EQOP MUL atom atom                       { (get_line_start(), `MUL ($1, $4, $5)) }
  | MULS lval lval atom atom                      { (get_line_start(), `MULS ($2, $3, $4, $5)) }
  | lval DOT lval EQOP MULS atom atom             { (get_line_start(), `MULS ($1, $3, $6, $7)) }
  | MULL lval lval atom atom                      { (get_line_start(), `MULL ($2, $3, $4, $5)) }
  | MULL lval_v lval_v atom_v_primary atom_v_primary
                                                  { (get_line_start(), `VMULL ($2, $3, $4, $5)) }
  | lval DOT lval EQOP MULL atom atom             { (get_line_start(), `MULL ($1, $3, $6, $7)) }
  | MULJ lval atom atom                           { (get_line_start(), `MULJ ($2, $3, $4)) }
  | MULJ lval_v atom_v_primary atom_v_primary     { (get_line_start(), `VMULJ ($2, $3, $4)) }
  | lval EQOP MULJ atom atom                      { (get_line_start(), `MULJ ($1, $4, $5)) }
  | SPLIT lval lval atom const_exp_primary        { (get_line_start(), `SPLIT ($2, $3, $4, $5)) }
  | SPLIT lval_v lval_v atom_v_primary const_exp_primary
                                                  { (get_line_start(), `VSPLIT ($2, $3, $4, $5)) }
  | lval DOT lval EQOP SPLIT atom const_exp_primary
                                                  { (get_line_start(), `SPLIT ($1, $3, $6, $7)) }
  | SPL lval lval atom const_exp_primary          { (get_line_start(), `SPL ($2, $3, $4, $5)) }
  | SPL lval_v lval_v atom_v_primary const_exp_primary
                                                  { (get_line_start(), `VSPL ($2, $3, $4, $5)) }
  | lval DOT lval EQOP SPL atom const_exp_primary { (get_line_start(), `SPL ($1, $3, $6, $7)) }
  | SETEQ lval atom atom                          { (get_line_start(), `SETEQ ($2, $3, $4)) }
  | SETEQ lval_v atom_v_primary atom_v_primary    { (get_line_start(), `VSETEQ ($2, $3, $4)) }
  | SETNE lval atom atom                          { (get_line_start(), `SETNE ($2, $3, $4)) }
  | SETNE lval_v atom_v_primary atom_v_primary    { (get_line_start(), `VSETNE ($2, $3, $4)) }
  | UADD lval atom atom                           { (get_line_start(), `UADD ($2, $3, $4)) }
  | UADD lval_v atom_v_primary atom_v_primary     { (get_line_start(), `VUADD ($2, $3, $4)) }
  | lval EQOP UADD atom atom                      { (get_line_start(), `UADD ($1, $4, $5)) }
  | UADDS lval lval atom atom                     { (get_line_start(), `UADDS ($2, $3, $4, $5)) }
  | UADDS lval_v lval_v atom_v_primary atom_v_primary
                                                  { (get_line_start(), `VUADDS ($2, $3, $4, $5)) }
  | lval DOT lval EQOP UADDS atom atom            { (get_line_start(), `UADDS ($1, $3, $6, $7)) }
  | UADC lval atom atom atom                      { (get_line_start(), `UADC ($2, $3, $4, $5)) }
  | lval EQOP UADC atom atom atom                 { (get_line_start(), `UADC ($1, $4, $5, $6)) }
  | UADCS lval lval atom atom atom                { (get_line_start(), `UADCS ($2, $3, $4, $5, $6)) }
  | lval DOT lval EQOP UADCS atom atom atom       { (get_line_start(), `UADCS ($1, $3, $6, $7, $8)) }
  | USUB lval atom atom                           { (get_line_start(), `USUB ($2, $3, $4)) }
  | lval EQOP USUB atom atom                      { (get_line_start(), `USUB ($1, $4, $5)) }
  | USUBC lval lval atom atom                     { (get_line_start(), `USUBC ($2, $3, $4, $5)) }
  | lval DOT lval EQOP USUBC atom atom            { (get_line_start(), `USUBC ($1, $3, $6, $7)) }
  | USUBB lval lval atom atom                     { (get_line_start(), `USUBB ($2, $3, $4, $5)) }
  | lval DOT lval EQOP USUBB atom atom            { (get_line_start(), `USUBB ($1, $3, $6, $7)) }
  | USBC lval atom atom atom                      { (get_line_start(), `USBC ($2, $3, $4, $5)) }
  | lval EQOP USBC atom atom atom                 { (get_line_start(), `USBC ($1, $4, $5, $6)) }
  | USBCS lval lval atom atom atom                { (get_line_start(), `USBCS ($2, $3, $4, $5, $6)) }
  | lval DOT lval EQOP USBCS atom atom atom       { (get_line_start(), `USBCS ($1, $3, $6, $7, $8)) }
  | USBB lval atom atom atom                      { (get_line_start(), `USBB ($2, $3, $4, $5)) }
  | lval EQOP USBB atom atom atom                 { (get_line_start(), `USBB ($1, $4, $5, $6)) }
  | USBBS lval lval atom atom atom                { (get_line_start(), `USBBS ($2, $3, $4, $5, $6)) }
  | lval DOT lval EQOP USBBS atom atom atom       { (get_line_start(), `USBBS ($1, $3, $6, $7, $8)) }
  | UMUL lval atom atom                           { (get_line_start(), `UMUL ($2, $3, $4)) }
  | UMUL lval_v atom_v_primary atom_v_primary     { (get_line_start(), `VUMUL ($2, $3, $4)) }
  | lval EQOP UMUL atom atom                      { (get_line_start(), `UMUL ($1, $4, $5)) }
  | UMULS lval lval atom atom                     { (get_line_start(), `UMULS ($2, $3, $4, $5)) }
  | lval DOT lval EQOP UMULS atom atom            { (get_line_start(), `UMULS ($1, $3, $6, $7)) }
  | UMULL lval lval atom atom                     { (get_line_start(), `UMULL ($2, $3, $4, $5)) }
  | UMULL lval_v lval_v atom_v_primary atom_v_primary
                                                  { (get_line_start(), `VUMULL ($2, $3, $4, $5)) }
  | lval DOT lval EQOP UMULL atom atom            { (get_line_start(), `UMULL ($1, $3, $6, $7)) }
  | UMULJ lval atom atom                          { (get_line_start(), `UMULJ ($2, $3, $4)) }
  | UMULJ lval_v atom_v_primary atom_v_primary    { (get_line_start(), `VUMULJ ($2, $3, $4)) }
  | lval EQOP UMULJ atom atom                     { (get_line_start(), `UMULJ ($1, $4, $5)) }
  | USPLIT lval lval atom const_exp_primary       { (get_line_start(), `USPLIT ($2, $3, $4, $5)) }
  | USPLIT lval_v lval_v atom_v_primary const_exp_primary
                                                  { (get_line_start(), `VUSPLIT ($2, $3, $4, $5)) }
  | lval DOT lval EQOP USPLIT atom const_exp_primary
                                                  { (get_line_start(), `USPLIT ($1, $3, $6, $7)) }
  | USPL lval lval atom const_exp_primary         { (get_line_start(), `USPL ($2, $3, $4, $5)) }
  | USPL lval_v lval_v atom_v_primary const_exp_primary
                                                  { (get_line_start(), `VUSPL ($2, $3, $4, $5)) }
  | lval DOT lval EQOP USPL atom const_exp_primary
                                                  { (get_line_start(), `USPL ($1, $3, $6, $7)) }
  | SADD lval atom atom                           { (get_line_start(), `SADD ($2, $3, $4)) }
  | SADD lval_v atom_v_primary atom_v_primary     { (get_line_start(), `VSADD ($2, $3, $4)) }
  | lval EQOP SADD atom atom                      { (get_line_start(), `SADD ($1, $4, $5)) }
  | SADDS lval lval atom atom                     { (get_line_start(), `SADDS ($2, $3, $4, $5)) }
  | SADDS lval_v lval_v atom_v_primary atom_v_primary
                                                  { (get_line_start(), `VSADDS ($2, $3, $4, $5)) }
  | lval DOT lval EQOP SADDS atom atom            { (get_line_start(), `SADDS ($1, $3, $6, $7)) }
  | SADC lval atom atom atom                      { (get_line_start(), `SADC ($2, $3, $4, $5)) }
  | lval EQOP SADC atom atom atom                 { (get_line_start(), `SADC ($1, $4, $5, $6)) }
  | SADCS lval lval atom atom atom                { (get_line_start(), `SADCS ($2, $3, $4, $5, $6)) }
  | lval DOT lval EQOP SADCS atom atom atom       { (get_line_start(), `SADCS ($1, $3, $6, $7, $8)) }
  | SSUB lval atom atom                           { (get_line_start(), `SSUB ($2, $3, $4)) }
  | lval EQOP SSUB atom atom                      { (get_line_start(), `SSUB ($1, $4, $5)) }
  | SSUBC lval lval atom atom                     { (get_line_start(), `SSUBC ($2, $3, $4, $5)) }
  | lval DOT lval EQOP SSUBC atom atom            { (get_line_start(), `SSUBC ($1, $3, $6, $7)) }
  | SSUBB lval lval atom atom                     { (get_line_start(), `SSUBB ($2, $3, $4, $5)) }
  | lval DOT lval EQOP SSUBB atom atom            { (get_line_start(), `SSUBB ($1, $3, $6, $7)) }
  | SSBC lval atom atom atom                      { (get_line_start(), `SSBC ($2, $3, $4, $5)) }
  | lval EQOP SSBC atom atom atom                 { (get_line_start(), `SSBC ($1, $4, $5, $6)) }
  | SSBCS lval lval atom atom atom                { (get_line_start(), `SSBCS ($2, $3, $4, $5, $6)) }
  | lval DOT lval EQOP SSBCS atom atom atom       { (get_line_start(), `SSBCS ($1, $3, $6, $7, $8)) }
  | SSBB lval atom atom atom                      { (get_line_start(), `SSBB ($2, $3, $4, $5)) }
  | lval EQOP SSBB atom atom atom                 { (get_line_start(), `SSBB ($1, $4, $5, $6)) }
  | SSBBS lval lval atom atom atom                { (get_line_start(), `SSBBS ($2, $3, $4, $5, $6)) }
  | lval DOT lval EQOP SSBBS atom atom atom       { (get_line_start(), `SSBBS ($1, $3, $6, $7, $8)) }
  | SMUL lval atom atom                           { (get_line_start(), `SMUL ($2, $3, $4) )}
  | SMUL lval_v atom_v_primary atom_v_primary     { (get_line_start(), `VSMUL ($2, $3, $4) )}
  | lval EQOP SMUL atom atom                      { (get_line_start(), `SMUL ($1, $4, $5) )}
  | SMULS lval lval atom atom                     { (get_line_start(), `SMULS ($2, $3, $4, $5)) }
  | lval DOT lval EQOP SMULS atom atom            { (get_line_start(), `SMULS ($1, $3, $6, $7)) }
  | SMULL lval lval atom atom                     { (get_line_start(), `SMULL ($2, $3, $4, $5)) }
  | SMULL lval_v lval_v atom_v_primary atom_v_primary
                                                  { (get_line_start(), `VSMULL ($2, $3, $4, $5)) }
  | lval DOT lval EQOP SMULL atom atom            { (get_line_start(), `SMULL ($1, $3, $6, $7)) }
  | SMULJ lval atom atom                          { (get_line_start(), `SMULJ ($2, $3, $4)) }
  | SMULJ lval_v atom_v_primary atom_v_primary    { (get_line_start(), `VSMULJ ($2, $3, $4)) }
  | lval EQOP SMULJ atom atom                     { (get_line_start(), `SMULJ ($1, $4, $5)) }
  | SSPLIT lval lval atom const_exp_primary       { (get_line_start(), `SSPLIT ($2, $3, $4, $5)) }
  | SSPLIT lval_v lval_v atom_v_primary const_exp_primary
                                                  { (get_line_start(), `VSSPLIT ($2, $3, $4, $5)) }
  | lval DOT lval EQOP SSPLIT atom const_exp_primary
                                                  { (get_line_start(), `SSPLIT ($1, $3, $6, $7)) }
  | SSPL lval lval atom const_exp_primary         { (get_line_start(), `SSPL ($2, $3, $4, $5)) }
  | SSPL lval_v lval_v atom_v_primary const_exp_primary
                                                  { (get_line_start(), `VSSPL ($2, $3, $4, $5)) }
  | lval DOT lval EQOP SSPL atom const_exp_primary
                                                  { (get_line_start(), `SSPL ($1, $3, $6, $7)) }
  | AND lval atom atom                            { (get_line_start(), `AND ($2, $3, $4)) }
  | AND lval_v atom_v_primary atom_v_primary      { (get_line_start(), `VAND ($2, $3, $4)) }
  | lval EQOP AND atom atom                       { (get_line_start(), `AND ($1, $4, $5)) }
  | OR lval atom atom                             { (get_line_start(), `OR ($2, $3, $4)) }
  | OR lval_v atom_v_primary atom_v_primary       { (get_line_start(), `VOR ($2, $3, $4)) }
  | lval EQOP OR atom atom                        { (get_line_start(), `OR ($1, $4, $5)) }
  | XOR lval atom atom                            { (get_line_start(), `XOR ($2, $3, $4)) }
  | XOR lval_v atom_v_primary atom_v_primary      { (get_line_start(), `VXOR ($2, $3, $4)) }
  | lval EQOP XOR atom atom                       { (get_line_start(), `XOR ($1, $4, $5)) }
  | NOT lval atom                                 { (get_line_start(), `NOT ($2, $3)) }
  | NOT lval_v atom_v_primary                     { (get_line_start(), `VNOT ($2, $3)) }
  | lval EQOP NOT atom                            { (get_line_start(), `NOT ($1, $4)) }
  | CAST lval atom                                { (get_line_start(), `CAST (None, $2, $3)) }
  | CAST lval_v atom_v_primary                    { (get_line_start(), `VCAST (None, $2, $3)) }
  // XXX: the "[]" is to workaround a r/r conflict (TODO: remove this rule as the conflict has been resolved)
  | CAST LSQUARE RSQUARE lval_v atom_v_primary    { (get_line_start(), `VCAST (None, $4, $5)) }
  /* Only one lval is expected in lval_scalars */
  | CAST LSQUARE lval_scalars RSQUARE lval atom   { match $3 with
                                                    | [] -> (get_line_start(), `CAST (None, $5, $6))
                                                    | lv::[] -> (get_line_start(), `CAST (Some lv, $5, $6))
                                                    | _ -> failwith "" }
  | lval EQOP CAST atom                           { (get_line_start(), `CAST (None, $1, $4)) }
  | VPC lval atom                                 { (get_line_start(), `VPC ($2, $3)) }
  | VPC lval_v atom_v_primary                     { (get_line_start(), `VVPC ($2, $3)) }
  // XXX: the "[]" is to workaround a r/r conflict (TODO: remove this rule as the conflict has been resolved)
  | VPC LSQUARE RSQUARE lval_v atom_v_primary     { (get_line_start(), `VVPC ($4, $5)) }
  | lval EQOP VPC atom                            { (get_line_start(), `VPC ($1, $4)) }
  | JOIN lval atom atom                           { (get_line_start(), `JOIN ($2, $3, $4)) }
  | lval EQOP JOIN atom atom                      { (get_line_start(), `JOIN ($1, $4, $5)) }
  | JOIN lval_v atom_v_primary atom_v_primary     { (get_line_start(), `VJOIN ($2, $3, $4)) }
/*
  | ASSERT bexp_prove_with_list                   { (get_line_start(), `ASSERT $2) }
  | EASSERT ebexp_prove_with_list                 { (get_line_start(), `EASSERT $2) }
  | RASSERT rbexp_prove_with_list                 { (get_line_start(), `RASSERT $2) }
  | ASSUME bexp                                   { (get_line_start(), `ASSUME $2) }
  | CUT bexp_prove_with_list                      { (get_line_start(), `CUT $2) }
  | ECUT ebexp_prove_with_list                    { (get_line_start(), `ECUT $2) }
  | RCUT rbexp_prove_with_list                    { (get_line_start(), `RCUT $2) }
  | GHOST gvars COLON bexp                        { (get_line_start(), `GHOST ($2, $4)) }
*/
  | ASSERT tagged_bexp_prove_with_list            { (get_line_start(), `TASSERT $2) }
  | EASSERT tagged_ebexp_prove_with_list          { (get_line_start(), `TEASSERT $2) }
  | RASSERT tagged_rbexp_prove_with_list          { (get_line_start(), `TRASSERT $2) }
  | ASSUME tagged_bexp                            { (get_line_start(), `TASSUME $2) }
  | CUT tagged_bexp_prove_with_list               { (get_line_start(), `TCUT $2) }
  | ECUT tagged_ebexp_prove_with_list             { (get_line_start(), `TECUT $2) }
  | RCUT tagged_rbexp_prove_with_list             { (get_line_start(), `TRCUT $2) }
  | GHOST gvars COLON tagged_bexp                 { (get_line_start(), `TGHOST ($2, $4)) }
  /* Extensions */
  | CALL ID LPAR actuals RPAR                     { (get_line_start(), `CALL ($2, $4)) }
  | INLINE ID LPAR actuals RPAR                   { (get_line_start(), `INLINE ($2, $4)) }
  | NOP                                           { (get_line_start(), `NOP) }
  /* Errors */
  | MOV error                                     { raise_at_line (get_line_start()) ("Bad mov instruction") }
  | BROADCAST error                               { raise_at_line (get_line_start()) ("Bad broadcast instruction") }
  | ADD error                                     { raise_at_line (get_line_start()) ("Bad add instruction") }
  | ADDS error                                    { raise_at_line (get_line_start()) ("Bad adds instruction") }
  | ADC error                                     { raise_at_line (get_line_start()) ("Bad adc instruction") }
  | ADCS error                                    { raise_at_line (get_line_start()) ("Bad adcs instruction") }
  | SUB error                                     { raise_at_line (get_line_start()) ("Bad sub instruction") }
  | SUBC error                                    { raise_at_line (get_line_start()) ("Bad subc instruction") }
  | SUBB error                                    { raise_at_line (get_line_start()) ("Bad subb instruction") }
  | SBC error                                     { raise_at_line (get_line_start()) ("Bad sbc instruction") }
  | SBCS error                                    { raise_at_line (get_line_start()) ("Bad sbcs instruction") }
  | SBB error                                     { raise_at_line (get_line_start()) ("Bad sbb instruction") }
  | SBBS error                                    { raise_at_line (get_line_start()) ("Bad sbbs instruction") }
  | MUL error                                     { raise_at_line (get_line_start()) ("Bad mul instruction") }
  | MULL error                                    { raise_at_line (get_line_start()) ("Bad mull instruction") }
  | SPLIT error                                   { raise_at_line (get_line_start()) ("Bad split instruction") }
  | SPL error                                     { raise_at_line (get_line_start()) ("Bad spl instruction") }
  | UADD error                                    { raise_at_line (get_line_start()) ("Bad uadd instruction") }
  | UADDS error                                   { raise_at_line (get_line_start()) ("Bad uadds instruction") }
  | UADC error                                    { raise_at_line (get_line_start()) ("Bad uadc instruction") }
  | UADCS error                                   { raise_at_line (get_line_start()) ("Bad uadcs instruction") }
  | USUB error                                    { raise_at_line (get_line_start()) ("Bad usub instruction") }
  | USUBC error                                   { raise_at_line (get_line_start()) ("Bad usubc instruction") }
  | USUBB error                                   { raise_at_line (get_line_start()) ("Bad usubb instruction") }
  | USBC error                                    { raise_at_line (get_line_start()) ("Bad usbc instruction") }
  | USBCS error                                   { raise_at_line (get_line_start()) ("Bad usbcs instruction") }
  | USBB error                                    { raise_at_line (get_line_start()) ("Bad usbb instruction") }
  | USBBS error                                   { raise_at_line (get_line_start()) ("Bad usbbs instruction") }
  | UMUL error                                    { raise_at_line (get_line_start()) ("Bad umul instruction") }
  | UMULL error                                   { raise_at_line (get_line_start()) ("Bad umull instruction") }
  | USPLIT error                                  { raise_at_line (get_line_start()) ("Bad usplit instruction") }
  | USPL error                                    { raise_at_line (get_line_start()) ("Bad uspl instruction") }
  | SADD error                                    { raise_at_line (get_line_start()) ("Bad sadd instruction") }
  | SADDS error                                   { raise_at_line (get_line_start()) ("Bad sadds instruction") }
  | SADC error                                    { raise_at_line (get_line_start()) ("Bad sadc instruction") }
  | SADCS error                                   { raise_at_line (get_line_start()) ("Bad sadcs instruction") }
  | SSUB error                                    { raise_at_line (get_line_start()) ("Bad ssub instruction") }
  | SSUBC error                                   { raise_at_line (get_line_start()) ("Bad ssubc instruction") }
  | SSUBB error                                   { raise_at_line (get_line_start()) ("Bad ssubb instruction") }
  | SSBC error                                    { raise_at_line (get_line_start()) ("Bad ssbc instruction") }
  | SSBCS error                                   { raise_at_line (get_line_start()) ("Bad ssbcs instruction") }
  | SSBB error                                    { raise_at_line (get_line_start()) ("Bad ssbb instruction") }
  | SSBBS error                                   { raise_at_line (get_line_start()) ("Bad ssbbs instruction") }
  | SMUL error                                    { raise_at_line (get_line_start()) ("Bad smul instruction") }
  | SMULL error                                   { raise_at_line (get_line_start()) ("Bad smull instruction") }
  | SSPLIT error                                  { raise_at_line (get_line_start()) ("Bad ssplit instruction") }
  | SSPL error                                    { raise_at_line (get_line_start()) ("Bad sspl instruction") }
  | SHL error                                     { raise_at_line (get_line_start()) ("Bad shl instruction") }
  | SHLS error                                    { raise_at_line (get_line_start()) ("Bad shls instruction") }
  | SHR error                                     { raise_at_line (get_line_start()) ("Bad shr instruction") }
  | SHRS error                                    { raise_at_line (get_line_start()) ("Bad shrs instruction") }
  | SAR error                                     { raise_at_line (get_line_start()) ("Bad sar instruction") }
  | SARS error                                    { raise_at_line (get_line_start()) ("Bad sars instruction") }
  | CSHL error                                    { raise_at_line (get_line_start()) ("Bad cshl instruction") }
  | CSHLS error                                   { raise_at_line (get_line_start()) ("Bad cshls instruction") }
  | CSHR error                                    { raise_at_line (get_line_start()) ("Bad cshr instruction") }
  | CSHRS error                                   { raise_at_line (get_line_start()) ("Bad cshrs instruction") }
  | ROL error                                     { raise_at_line (get_line_start()) ("Bad rol instruction") }
  | ROR error                                     { raise_at_line (get_line_start()) ("Bad ror instruction") }
  | NONDET error                                  { raise_at_line (get_line_start()) ("Bad nondet instruction") }
  | CALL ID LPAR error                            { raise_at_line (get_line_start()) (("Invalid actuals in the call instruction: " ^ $2)) }
  | CALL error                                    { raise_at_line (get_line_start()) ("Bad call instruction") }
  | INLINE ID LPAR error                          { raise_at_line (get_line_start()) (("Invalid actuals in the inline instruction: " ^ $2)) }
  | INLINE error                                  { raise_at_line (get_line_start()) ("Bad inline instruction") }
;

tagged_bexp_prove_with_list:
    TRUE                                          { fun _ -> (tagged_ebexp_prove_with_singleton Options.Std.default_track [(etrue, [])], tagged_rbexp_prove_with_singleton Options.Std.default_track [(rtrue, [])]) }
  | tagged_ebexp_prove_with_list VBAR tagged_rbexp_prove_with_list
                                                  { fun ctx -> ($1 ctx, $3 ctx) }
;

tagged_ebexp_prove_with_list:
    tagged_ebexp_prove_with                       { fun ctx -> $1 ctx }
  | tagged_ebexp_prove_with DOT tagged_ebexp_prove_with_list
                                                  { fun ctx -> tagged_ebexp_prove_with_union ($1 ctx) ($3 ctx) }
;

tagged_rbexp_prove_with_list:
    tagged_rbexp_prove_with                       { fun ctx -> $1 ctx }
  | tagged_rbexp_prove_with DOT tagged_rbexp_prove_with_list
                                                  { fun ctx -> tagged_rbexp_prove_with_union ($1 ctx) ($3 ctx) }
;

tagged_ebexp_prove_with:
    ebexp_prove_with_list                         { fun ctx -> tagged_ebexp_prove_with_init Options.Std.default_track [($1 ctx)] }
  | ids COLON ebexp_prove_with_list               { fun ctx -> tagged_ebexp_prove_with_inits $1 [($3 ctx)] }
  | MULOP COLON ebexp_prove_with_list             { fun ctx -> tagged_ebexp_prove_with_init Options.Std.all_track [($3 ctx)] }
  | ALL COLON ebexp_prove_with_list               { fun ctx -> tagged_ebexp_prove_with_init Options.Std.all_track [($3 ctx)] }
;

tagged_rbexp_prove_with:
    rbexp_prove_with_list                         { fun ctx -> tagged_rbexp_prove_with_init Options.Std.default_track [($1 ctx)] }
  | ids COLON rbexp_prove_with_list               { fun ctx -> tagged_rbexp_prove_with_inits $1 [($3 ctx)] }
  | MULOP COLON rbexp_prove_with_list             { fun ctx -> tagged_rbexp_prove_with_init Options.Std.all_track [($3 ctx)] }
  | ALL COLON rbexp_prove_with_list               { fun ctx -> tagged_rbexp_prove_with_init Options.Std.all_track [($3 ctx)] }
;

ebexp_prove_with_list:
    ebexp_prove_with                              { fun ctx -> [($1 ctx)] }
  | ebexp_prove_with COMMA ebexp_prove_with_list  { fun ctx -> ($1 ctx)::($3 ctx) }
;

rbexp_prove_with_list:
    rbexp_prove_with                              { fun ctx -> [($1 ctx)] }
  | rbexp_prove_with COMMA rbexp_prove_with_list  { fun ctx -> ($1 ctx)::($3 ctx) }
;

ebexp_prove_with:
    ebexp                                         { fun ctx -> ($1 ctx, []) }
  | ebexp PROVE WITH LSQUARE prove_with_specs RSQUARE
                                                  { fun ctx -> ($1 ctx, $5 ctx) }
  | ebexp PROVE WITH LSQUARE prove_with_specs error
                                                  { raise_at_line (get_line_start()) ("A ] is missing.") }
  | ebexp PROVE WITH LSQUARE error                { raise_at_line (get_line_start()) ("Incorrect prove-with clauses.") }
  | ebexp PROVE WITH error                        { raise_at_line (get_line_start()) ("Enclose the prove-with clauses in [].") }
;

rbexp_prove_with:
    rbexp                                         { fun ctx -> ($1 ctx, []) }
  | rbexp PROVE WITH LSQUARE prove_with_specs RSQUARE
                                                  { fun ctx -> ($1 ctx, $5 ctx) }
  | rbexp PROVE WITH LSQUARE prove_with_specs error
                                                  { raise_at_line (get_line_start()) ("A ] is missing.") }
  | rbexp PROVE WITH LSQUARE error                { raise_at_line (get_line_start()) ("Incorrect prove-with clauses.") }
  | rbexp PROVE WITH error                        { raise_at_line (get_line_start()) ("Enclose the prove-with clauses in [].") }
;

prove_with_specs:
    prove_with_spec                               { fun ctx -> [$1 ctx] }
  | prove_with_spec COMMA prove_with_specs        { fun ctx -> ($1 ctx)::($3 ctx) }
;

prove_with_spec:
    PRECONDITION                                  { fun _ -> Precondition }
  | CUTS LSQUARE const_exp_list RSQUARE           { fun ctx -> Cuts (List.rev_map Z.to_int ($3 ctx) |> List.rev) }
  | ALL CUTS                                      { fun _ -> AllCuts }
  | ALL ASSUMES                                   { fun _ -> AllAssumes }
  | ALL GHOSTS                                    { fun _ -> AllGhosts }
  | ALGEBRA SOLVER ID                             { fun _ -> AlgebraSolver (Options.Std.parse_algebra_solver $3) }
  | ALGEBRA SOLVER SMT COLON path smt_logic_opt   { fun _ -> AlgebraSolver (Options.Std.SMTSolver { algsmt_path = $5; algsmt_logic = $6 }) }
  | RANGE SOLVER path                             { fun _ -> RangeSolver $3 }
  | QFBV SOLVER path                              { fun _ -> RangeSolver $3 }
;

path:
    ID                                            { $1 }
  | PATH                                          { $1 }
;

smt_logic_opt:
                                                  { Options.Std.default_algsmt_option.algsmt_logic }
  | COLON NIA                                     { Options.Std.NIA }
  | COLON LIA                                     { Options.Std.LIA }
  | COLON ID error                                { Stdlib.invalid_arg ("Unknown SMT logic " ^ $2) }
;

ids:
    ID                                            { [ $1 ] }
  | ID COMMA ids                                  { $1::$3 }
;

tagged_bexp:
    TRUE                                          { fun _ -> (tagged_ebexp_singleton Options.Std.default_track etrue, tagged_rbexp_singleton Options.Std.default_track rtrue) }
  | tagged_ebexps VBAR tagged_rbexps              { fun ctx -> ($1 ctx, $3 ctx) }
;

tagged_ebexps:
    tagged_ebexp                                  { fun ctx -> $1 ctx }
  | tagged_ebexp DOT tagged_ebexps                { fun ctx -> tagged_ebexp_union ($1 ctx) ($3 ctx) }
;

tagged_rbexps:
    tagged_rbexp                                  { fun ctx -> $1 ctx }
  | tagged_rbexp DOT tagged_rbexps                { fun ctx -> tagged_rbexp_union ($1 ctx) ($3 ctx) }
;

tagged_ebexp:
    ebexps                                        { fun ctx -> tagged_ebexp_inits [Options.Std.default_track] ($1 ctx) }
  | ids COLON ebexps                              { fun ctx -> tagged_ebexp_inits $1 ($3 ctx) }
  | MULOP COLON ebexps                            { fun ctx -> tagged_ebexp_inits [Options.Std.all_track] ($3 ctx) }
  | ALL COLON ebexps                              { fun ctx -> tagged_ebexp_inits [Options.Std.all_track] ($3 ctx) }
;

tagged_rbexp:
    rbexps                                        { fun ctx -> tagged_rbexp_inits [Options.Std.default_track] ($1 ctx) }
  | ids COLON rbexps                              { fun ctx -> tagged_rbexp_inits $1 ($3 ctx) }
  | MULOP COLON rbexps                            { fun ctx -> tagged_rbexp_inits [Options.Std.all_track] ($3 ctx) }
  | ALL COLON rbexps                              { fun ctx -> tagged_rbexp_inits [Options.Std.all_track] ($3 ctx) }
;

ebexps:
    ebexp COMMA ebexps                            { fun ctx -> ($1 ctx)::($3 ctx) }
  | ebexp                                         { fun ctx -> [$1 ctx] }
  | ebexp error                                   { let lno = get_line_start() in
                                                    fun ctx ->
                                                    raise_at_line lno ("Failed to parse the algebra predicate after '" ^ string_of_ebexp ($1 ctx) ^ "'.")
                                                  }
;

rbexps:
    rbexp                                         { fun ctx -> [$1 ctx] }
  | rbexp COMMA rbexps                            { fun ctx -> ($1 ctx)::($3 ctx) }
  | rbexp COMMA error                             { raise_at_line (get_line_start()) ("Invalid range predicates.") }
  | rbexp error                                   { raise_at_line (get_line_start()) ("A ',' is used to separate range predicates") }
;

ebexp:
    ebexp_primary                                 { fun ctx -> $1 ctx }
  // Scalar
  | EQ eexp_primary eexp_primary                  { parse_ebexp_eq (get_line_start()) $2 $3 }
  | EQMOD eexp_primary eexp_primary eexp_primary  { parse_ebexp_eqmod1 (get_line_start()) $2 $3 $4 }
  | EQMOD eexp_primary eexp_primary LSQUARE eexps RSQUARE
                                                  { parse_ebexp_eqmodN (get_line_start()) $2 $3 $5 }
  | eexp EQOP eexp eq_suffix                      { parse_ebexp_eq_modopt (get_line_start()) $1 $3 $4 }
  | eexp ULTOP eexp                               { parse_ebexp_cmp (get_line_start ()) Elt $1 $3 }
  | eexp ULEOP eexp                               { parse_ebexp_cmp (get_line_start ()) Ele $1 $3 }
  | eexp UGTOP eexp                               { parse_ebexp_cmp (get_line_start ()) Egt $1 $3 }
  | eexp UGEOP eexp                               { parse_ebexp_cmp (get_line_start ()) Ege $1 $3 }
  // Vector
  | EQ veexp_primary veexp_primary                { parse_ebexp_veq (get_line_start()) $2 $3 }
  | EQMOD veexp_primary veexp_primary veexp_primary
                                                  { parse_ebexp_veqmod1 (get_line_start()) $2 $3 $4 }
  | EQMOD veexp_primary veexp_primary LSQUARE veexps RSQUARE
                                                  { parse_ebexp_veqmodN (get_line_start()) $2 $3 $5 }
  | veexp EQOP veexp veq_suffix                   { parse_ebexp_veq_modopt (get_line_start()) $1 $3 $4 }
  | veexp ULTOP veexp                             { parse_ebexp_vcmp (get_line_start ()) Elt $1 $3 }
  | veexp ULEOP veexp                             { parse_ebexp_vcmp (get_line_start ()) Ele $1 $3 }
  | veexp UGTOP veexp                             { parse_ebexp_vcmp (get_line_start ()) Egt $1 $3 }
  | veexp UGEOP veexp                             { parse_ebexp_vcmp (get_line_start ()) Ege $1 $3 }
  // Logical
  | AND ebexp_primary ebexp_primary               { fun ctx -> Eand ($2 ctx, $3 ctx) }
  | ebexp LANDOP ebexp                            { fun ctx -> Eand ($1 ctx, $3 ctx) }
  | AND LSQUARE ebexps RSQUARE                    { fun ctx -> eands ($3 ctx) }
  | LANDOP LSQUARE ebexps RSQUARE                 { fun ctx -> eands ($3 ctx) }
;

ebexp_primary:
    TRUE                                          { fun _ -> Etrue }
  | LPAR ebexp RPAR                               { fun ctx -> $2 ctx }
;

eq_suffix:
                                                  { fun _ -> None }
  | LPAR MOD eexp RPAR                            { fun ctx -> Some [ $3 ctx ] }
  | LPAR MOD LSQUARE eexps RSQUARE RPAR           { fun ctx -> Some ($4 ctx) }
;

veq_suffix:
                                                  { fun _ -> None }
  | LPAR MOD veexp RPAR                           { fun ctx -> Some (List.rev (List.rev_map (fun e -> [e]) ($3 ctx))) }
  | LPAR MOD LSQUARE veexps RSQUARE RPAR          { fun ctx -> Some ($4 ctx) }
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

eexp_primary:
    defined_var                                   { let lno = get_line_start() in
                                                    fun ctx -> Evar (resolve_var_with ctx lno $1)
                                                  }
  | const                                         { fun ctx -> Econst ($1 ctx) }
  | LPAR eexp RPAR                                { fun ctx -> $2 ctx }
;

eexp:
    eexp_primary                                  { $1 }
  | veexp_primary LSQUARE NUM RSQUARE             { parse_eexp_vec_elem (get_line_start()) $1 $3 }
  | NEG eexp_primary                              { fun ctx -> eneg ($2 ctx) }
  | ADD eexp_primary eexp_primary                 { fun ctx -> eadd ($2 ctx) ($3 ctx) }
  | SUB eexp_primary eexp_primary                 { fun ctx -> esub ($2 ctx) ($3 ctx) }
  | MUL eexp_primary eexp_primary                 { fun ctx -> emul ($2 ctx) ($3 ctx) }
  | SQ eexp_primary                               { fun ctx -> esq ($2 ctx) }
  | ADDS LSQUARE eexps RSQUARE                    { fun ctx -> eadds ($3 ctx) }
  | MULS LSQUARE eexps RSQUARE                    { fun ctx -> emuls ($3 ctx) }
  | SUBOP eexp %prec UMINUS                       { fun ctx -> eneg ($2 ctx) }
  | eexp ADDOP eexp                               { fun ctx -> eadd ($1 ctx) ($3 ctx) }
  | eexp SUBOP eexp                               { fun ctx -> esub ($1 ctx) ($3 ctx) }
  | eexp MULOP eexp                               { fun ctx -> emul ($1 ctx) ($3 ctx) }
  | eexp POWOP const_exp_primary                  { parse_eexp_pow (get_line_start()) $1 $3 }
  | ULIMBS const_exp_primary LSQUARE eexps RSQUARE
                                                  { fun ctx -> limbs (Z.to_int ($2 ctx)) ($4 ctx) }
  | POLY eexp LSQUARE eexps RSQUARE               { fun ctx -> poly ($2 ctx) ($4 ctx) }
;

eexps:
    eexp COMMA eexps                              { fun ctx -> ($1 ctx)::($3 ctx) }
  | eexp                                          { fun ctx -> [$1 ctx] }
  | VARS var_expansion                            { fun ctx -> List.rev (List.rev_map evar ($2 ctx)) }
  | VARS var_expansion COMMA eexps                { fun ctx -> List.rev_append (List.rev_map evar ($2 ctx)) ($4 ctx) }
  | MULOP veexp_primary                           { fun ctx -> $2 ctx }
  | MULOP veexp_primary COMMA eexps               { fun ctx -> List.rev_append (List.rev ($2 ctx)) ($4 ctx) }
;

veexp_primary:
    VEC_ID                                        { let lno = get_line_start() in
                                                    fun ctx ->
                                                    let vec = `AVECT { vecname = $1; vectyphint = None; } in
                                                    let (_, atoms) = (resolve_vec_with ~with_ghost:true ctx lno vec) in
                                                    let es = List.rev_map eexp_of_atom (List.rev_map (resolve_atom_with ctx lno) atoms) in
                                                    es
                                                  }
  | LSQUARE eexps RSQUARE                         { fun ctx -> $2 ctx }
  | LPAR veexp RPAR                               { fun ctx -> $2 ctx }
;

veexp:
    veexp_primary                                 { $1 }
  | veexp_primary LSQUARE ranges RSQUARE          { parse_veexp_slices (get_line_start()) $1 $3 }
  | NEG veexp_primary                             { parse_veexp_neg (get_line_start()) $2 }
  | ADD veexp_primary veexp_primary               { parse_veexp_add (get_line_start()) $2 $3 }
  | SUB veexp_primary veexp_primary               { parse_veexp_sub (get_line_start()) $2 $3 }
  | MUL veexp_primary veexp_primary               { parse_veexp_mul (get_line_start()) $2 $3 }
  | SQ veexp_primary                              { parse_veexp_sq (get_line_start()) $2 }
  | ADDS LSQUARE veexps RSQUARE                   { parse_veexp_adds (get_line_start()) $3 }
  | MULS LSQUARE veexps RSQUARE                   { parse_veexp_muls (get_line_start()) $3 }
  | SUBOP veexp %prec UMINUS                      { parse_veexp_neg (get_line_start()) $2 }
  | veexp ADDADDOP veexp                          { parse_veexp_append (get_line_start()) $1 $3 }
  | veexp ADDOP veexp                             { parse_veexp_add (get_line_start()) $1 $3 }
  | veexp SUBOP veexp                             { parse_veexp_sub (get_line_start()) $1 $3 }
  | veexp MULOP veexp                             { parse_veexp_mul (get_line_start()) $1 $3 }
  | veexp POWOP const_exp_primary                 { parse_veexp_pow (get_line_start()) $1 $3 }
  | veexp POWOP LSQUARE const_exp_list RSQUARE    { parse_veexp_pows (get_line_start()) $1 $4 }
  | ULIMBS const_exp_primary LSQUARE veexps RSQUARE
                                                  { parse_veexp_limbs (get_line_start()) $2 $4 }
  | POLY eexp LSQUARE veexps RSQUARE              { parse_veexp_poly (get_line_start()) $2 $4 }
  | POLY veexp_primary LSQUARE veexps RSQUARE     { parse_veexp_polyv (get_line_start()) $2 $4 }
;

veexps:
    veexp COMMA veexps                            { fun ctx -> ($1 ctx)::($3 ctx) }
  | veexp                                         { fun ctx -> [$1 ctx] }
;

rbexp:
    rbexp_primary                                 { $1 }
  // Scalar
  | EQ rexp_primary rexp_primary                  { parse_rbexp_eq (get_line_start()) $2 $3 }
  | cmpop_prefix rexp_primary rexp_primary        { parse_rbexp_cmp (get_line_start()) $1 $2 $3 }
  | EQMOD rexp_primary rexp_primary rexp_primary  { parse_rbexp_equmod (get_line_start()) $2 $3 $4 }
  | EQUMOD rexp_primary rexp_primary rexp_primary { parse_rbexp_equmod (get_line_start()) $2 $3 $4 }
  | EQSMOD rexp_primary rexp_primary rexp_primary { parse_rbexp_eqsmod (get_line_start()) $2 $3 $4 }
  | EQSREM rexp_primary rexp_primary rexp_primary { parse_rbexp_eqsrem (get_line_start()) $2 $3 $4 }
  | rexp EQOP rexp req_suffix                     { parse_rbexp_eq_modopt (get_line_start()) $1 $3 $4 }
  | rexp cmpop_infix rexp                         { parse_rbexp_cmp (get_line_start()) $2 $1 $3 }
  // Vector
  | EQ vrexp_primary vrexp_primary                { parse_rbexp_veq (get_line_start()) $2 $3 }
  | cmpop_prefix vrexp_primary vrexp_primary      { parse_rbexp_vcmp (get_line_start()) $1 $2 $3 }
  | EQMOD vrexp_primary vrexp_primary vrexp_primary
                                                  { parse_rbexp_vequmod (get_line_start()) $2 $3 $4 }
  | EQUMOD vrexp_primary vrexp_primary vrexp_primary
                                                  { parse_rbexp_vequmod (get_line_start()) $2 $3 $4 }
  | EQSMOD vrexp_primary vrexp_primary vrexp_primary
                                                  { parse_rbexp_veqsmod (get_line_start()) $2 $3 $4 }
  | EQSREM vrexp_primary vrexp_primary vrexp_primary
                                                  { parse_rbexp_veqsrem (get_line_start()) $2 $3 $4 }
  | vrexp EQOP vrexp vreq_suffix                  { parse_rbexp_veq_modopt (get_line_start()) $1 $3 $4 }
  | vrexp cmpop_infix vrexp                       { parse_rbexp_vcmp (get_line_start()) $2 $1 $3 }
  // Logical
  | NEG rbexp_primary                             { fun ctx -> Rneg ($2 ctx) }
  | NEGOP rbexp_primary                           { fun ctx -> Rneg ($2 ctx) }
  | AND rbexp_primary rbexp_primary               { fun ctx -> Rand ($2 ctx, $3 ctx) }
  | OR rbexp_primary rbexp_primary                { fun ctx -> Ror ($2 ctx, $3 ctx) }
  | rbexp LANDOP rbexp                            { fun ctx -> Rand ($1 ctx, $3 ctx) }
  | rbexp LOROP rbexp                             { fun ctx -> Ror ($1 ctx, $3 ctx) }
  | AND LSQUARE rbexps RSQUARE                    { fun ctx -> rands ($3 ctx) }
  | LANDOP LSQUARE rbexps RSQUARE                 { fun ctx -> rands ($3 ctx) }
  | OR LSQUARE rbexps RSQUARE                     { fun ctx -> rors ($3 ctx) }
  | LOROP LSQUARE rbexps RSQUARE                  { fun ctx -> rors ($3 ctx) }
;

rbexp_primary:
    TRUE                                          { fun _ -> Rtrue }
  | LPAR rbexp RPAR                               { fun ctx -> $2 ctx }
;

req_suffix:
                                                  { fun _ -> None }
  | LPAR MOD rexp RPAR                            { fun ctx -> Some (reqmod, $3 ctx) }
  | LPAR UMOD rexp RPAR                           { fun ctx -> Some (reqmod, $3 ctx) }
  | LPAR SMOD rexp RPAR                           { fun ctx -> Some (reqsmod, $3 ctx) }
  | LPAR SREM rexp RPAR                           { fun ctx -> Some (reqsrem, $3 ctx) }
;

vreq_suffix:
                                                  { fun _ -> None }
  | LPAR MOD vrexp RPAR                           { fun ctx -> Some (reqmod, $3 ctx) }
  | LPAR UMOD vrexp RPAR                          { fun ctx -> Some (reqmod, $3 ctx) }
  | LPAR SMOD vrexp RPAR                          { fun ctx -> Some (reqsmod, $3 ctx) }
  | LPAR SREM vrexp RPAR                          { fun ctx -> Some (reqsrem, $3 ctx) }
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

rexp_primary:
    defined_var                                   { parse_rexp_defined_var (get_line_start()) $1 }
  | CONST const_exp_primary const_exp_primary     { parse_rexp_const (get_line_start()) $2 $3 }
  | const_exp_primary AT const_exp_primary        { parse_rexp_const (get_line_start()) $3 $1 }
  | LPAR rexp RPAR                                { fun ctx -> $2 ctx }
;

rexp:
    rexp_primary                                  { $1 }
  | vrexp_primary LSQUARE NUM RSQUARE             { parse_rexp_vec_elem (get_line_start()) $1 $3 }
  | UEXT rexp_primary const_exp_primary           { parse_rexp_uext (get_line_start()) $2 $3 }
  | SEXT rexp_primary const_exp_primary           { parse_rexp_sext (get_line_start()) $2 $3 }
  | NEG rexp_primary                              { parse_rexp_neg (get_line_start()) $2 }
  | NEGOP rexp_primary                            { parse_rexp_neg (get_line_start()) $2 }
  | NOT rexp_primary                              { parse_rexp_not (get_line_start()) $2 }
  | NOTOP rexp_primary                            { parse_rexp_not (get_line_start()) $2 }
  | ADD rexp_primary rexp_primary                 { parse_rexp_add (get_line_start()) $2 $3 }
  | SUB rexp_primary rexp_primary                 { parse_rexp_sub (get_line_start()) $2 $3 }
  | MUL rexp_primary rexp_primary                 { parse_rexp_mul (get_line_start()) $2 $3 }
  | UDIV rexp_primary rexp_primary                 { parse_rexp_udiv (get_line_start()) $2 $3 }
  | SQ rexp_primary                               { parse_rexp_sq (get_line_start()) $2 }
  | UMOD rexp_primary rexp_primary                { parse_rexp_umod (get_line_start()) $2 $3 }
  | SDIV rexp_primary rexp_primary                { parse_rexp_sdiv (get_line_start()) $2 $3 }
  | SREM rexp_primary rexp_primary                { parse_rexp_srem (get_line_start()) $2 $3 }
  | SMOD rexp_primary rexp_primary                { parse_rexp_smod (get_line_start()) $2 $3 }
  | AND rexp_primary rexp_primary                 { parse_rexp_and (get_line_start()) $2 $3 }
  | OR rexp_primary rexp_primary                  { parse_rexp_or (get_line_start()) $2 $3 }
  | XOR rexp_primary rexp_primary                 { parse_rexp_xor (get_line_start()) $2 $3 }
  | SHL rexp_primary rexp_primary                 { parse_rexp_shl (get_line_start()) $2 $3 }
  | SHR rexp_primary rexp_primary                 { parse_rexp_shr (get_line_start()) $2 $3 }
  | SAR rexp_primary rexp_primary                 { parse_rexp_sar (get_line_start()) $2 $3 }
  | ROL rexp_primary rexp_primary                 { parse_rexp_rol (get_line_start()) $2 $3 }
  | ROR rexp_primary rexp_primary                 { parse_rexp_ror (get_line_start()) $2 $3 }
  | CONCAT rexp_primary rexp_primary              { parse_rexp_concat (get_line_start()) $2 $3 }
  | ADDS LSQUARE rexps RSQUARE                    { parse_rexp_adds (get_line_start()) $3 }
  | MULS LSQUARE rexps RSQUARE                    { parse_rexp_muls (get_line_start()) $3 }
  | ULIMBS const_exp_primary LSQUARE rexps RSQUARE
                                                  { parse_rexp_ulimbs (get_line_start()) $2 $4 }
  | SLIMBS const_exp_primary LSQUARE rexps RSQUARE
                                                  { parse_rexp_slimbs (get_line_start()) $2 $4 }
  | rexp ADDOP rexp                               { parse_rexp_add (get_line_start()) $1 $3 }
  | rexp SUBOP rexp                               { parse_rexp_sub (get_line_start()) $1 $3 }
  | rexp MULOP rexp                               { parse_rexp_mul (get_line_start()) $1 $3 }
  | rexp ANDOP rexp                               { parse_rexp_and (get_line_start()) $1 $3 }
  | rexp OROP rexp                                { parse_rexp_or (get_line_start()) $1 $3 }
  | rexp XOROP rexp                               { parse_rexp_xor (get_line_start()) $1 $3 }
  | rexp SHLOP rexp                               { parse_rexp_shl (get_line_start()) $1 $3 }
  | rexp SHROP rexp                               { parse_rexp_shr (get_line_start()) $1 $3 }
  | rexp SAROP rexp                               { parse_rexp_sar (get_line_start()) $1 $3 }
  /* Errors */
  | CONST const_exp_primary error                 { raise_at_line (get_line_start()) "Please specify the bit-width of a constant in range predicates" }
  | const_exp_primary error                       { raise_at_line (get_line_start()) "Please specify the bit-width of a constant in range predicates" }
;

vrexp_primary:
    VEC_ID                                        { let lno = get_line_start() in
                                                    fun ctx ->
                                                    let vec = `AVECT { vecname = $1; vectyphint = None; } in
                                                    let (_, atoms) = (resolve_vec_with ~with_ghost:true ctx lno vec) in
                                                    let es = List.rev_map rexp_of_atom (List.rev_map (resolve_atom_with ctx lno) atoms) in
                                                    es
                                                  }
  | LSQUARE rexps RSQUARE                         { fun ctx -> $2 ctx }
  | LPAR vrexp RPAR                               { fun ctx -> $2 ctx }
;

vrexp:
    vrexp_primary                                 { $1 }
  | vrexp_primary LSQUARE ranges RSQUARE          { parse_vrexp_slices (get_line_start()) $1 $3 }
  | UEXT vrexp_primary const_exp_primary          { parse_vrexp_uext (get_line_start()) $2 $3 }
  | SEXT vrexp_primary const_exp_primary          { parse_vrexp_sext (get_line_start()) $2 $3 }
  | NEG vrexp_primary                             { parse_vrexp_neg (get_line_start()) $2 }
  | NEGOP vrexp_primary                           { parse_vrexp_neg (get_line_start()) $2 }
  | NOT vrexp_primary                             { parse_vrexp_not (get_line_start()) $2 }
  | NOTOP vrexp_primary                           { parse_vrexp_not (get_line_start()) $2 }
  | ADD vrexp_primary vrexp_primary               { parse_vrexp_add (get_line_start()) $2 $3 }
  | SUB vrexp_primary vrexp_primary               { parse_vrexp_sub (get_line_start()) $2 $3 }
  | MUL vrexp_primary vrexp_primary               { parse_vrexp_mul (get_line_start()) $2 $3 }
  | UDIV vrexp_primary vrexp_primary              { parse_vrexp_udiv (get_line_start()) $2 $3 }
  | SQ vrexp_primary                              { parse_vrexp_sq (get_line_start()) $2 }
  | UMOD vrexp_primary vrexp_primary              { parse_vrexp_umod (get_line_start()) $2 $3 }
  | SDIV vrexp_primary vrexp_primary              { parse_vrexp_sdiv (get_line_start()) $2 $3 }
  | SREM vrexp_primary vrexp_primary              { parse_vrexp_srem (get_line_start()) $2 $3 }
  | SMOD vrexp_primary vrexp_primary              { parse_vrexp_smod (get_line_start()) $2 $3 }
  | AND vrexp_primary vrexp_primary               { parse_vrexp_and (get_line_start()) $2 $3 }
  | OR vrexp_primary vrexp_primary                { parse_vrexp_or (get_line_start()) $2 $3 }
  | XOR vrexp_primary vrexp_primary               { parse_vrexp_xor (get_line_start()) $2 $3 }
  | SHL vrexp_primary vrexp_primary               { parse_vrexp_shl (get_line_start()) $2 $3 }
  | SHR vrexp_primary vrexp_primary               { parse_vrexp_shr (get_line_start()) $2 $3 }
  | SAR vrexp_primary vrexp_primary               { parse_vrexp_sar (get_line_start()) $2 $3 }
  | ROL vrexp_primary vrexp_primary               { parse_vrexp_rol (get_line_start()) $2 $3 }
  | ROR vrexp_primary vrexp_primary               { parse_vrexp_ror (get_line_start()) $2 $3 }
  | CONCAT vrexp_primary vrexp_primary            { parse_vrexp_concat (get_line_start()) $2 $3 }
  | ADDS LSQUARE vrexps RSQUARE                   { parse_vrexp_adds (get_line_start()) $3 }
  | MULS LSQUARE vrexps RSQUARE                   { parse_vrexp_muls (get_line_start()) $3 }
  | ULIMBS const_exp_primary LSQUARE vrexps RSQUARE
                                                  { parse_vrexp_ulimbs (get_line_start()) $2 $4 }
  | SLIMBS const_exp_primary LSQUARE vrexps RSQUARE
                                                  { parse_vrexp_slimbs (get_line_start()) $2 $4 }
  | vrexp ADDADDOP vrexp                          { parse_vrexp_append (get_line_start()) $1 $3 }
  | vrexp ADDOP vrexp                             { parse_vrexp_add (get_line_start()) $1 $3 }
  | vrexp SUBOP vrexp                             { parse_vrexp_sub (get_line_start()) $1 $3 }
  | vrexp MULOP vrexp                             { parse_vrexp_mul (get_line_start()) $1 $3 }
  | vrexp ANDOP vrexp                             { parse_vrexp_and (get_line_start()) $1 $3 }
  | vrexp OROP vrexp                              { parse_vrexp_or (get_line_start()) $1 $3 }
  | vrexp XOROP vrexp                             { parse_vrexp_xor (get_line_start()) $1 $3 }
  | vrexp SHLOP vrexp                             { parse_vrexp_shl (get_line_start()) $1 $3 }
  | vrexp SHROP vrexp                             { parse_vrexp_shr (get_line_start()) $1 $3 }
  | vrexp SAROP vrexp                             { parse_vrexp_sar (get_line_start()) $1 $3 }
;

rexps:
    rexp COMMA rexps                              { parse_rexps_cons (get_line_start()) $1 $3 }
  | rexp                                          { fun ctx -> [$1 ctx] }
  | VARS var_expansion                            { fun ctx -> List.map (fun v -> Rvar v) ($2 ctx) }
;

vrexps:
    vrexp COMMA vrexps                            { parse_vrexps_cons (get_line_start()) $1 $3 }
  | vrexp                                         { fun ctx -> [$1 ctx] }
;

lval:
    ID                                            { `LVPLAIN { lvname = $1; lvtyphint = None; } }
  | ID AT typ                                     { `LVPLAIN { lvname = $1; lvtyphint = Some $3; } }
  | typ ID                                        { `LVPLAIN { lvname = $2; lvtyphint = Some $1; } }
  | ID AT error                                   { raise_at_line (get_line_start()) ("Invalid type of variable " ^ $1) }
;

lval_v:
    VEC_ID                                        { `LVVECT { vecname = $1; vectyphint = None; } }
  | VEC_ID AT vectyp                              { `LVVECT { vecname = $1; vectyphint = Some $3; } }
  | LSQUARE lval_scalars RSQUARE                  { `LVVLIT $2 }
;

lval_scalars:
    lval                                          { [$1] }
  | lval COMMA lval_scalars                       { $1::$3 }
;

actuals:
    actual_atoms                                  { parse_actuals_all (get_line_start()) $1 }
  | actual_atoms SEMICOLON actual_atoms           { parse_actuals_ins_outs (get_line_start()) $1 $3 }
  |                                               { fun _ _ -> [] }
;

actual_atoms:
    actual_atom                                   { fun ctx tys -> $1 ctx tys }
  | actual_atom COMMA actual_atoms                { fun ctx tys ->
                                                    let (tys, vs1) = $1 ctx tys in
                                                    let (tys, vs2) = $3 ctx tys in
                                                    (tys, List.rev_append (List.rev vs1) vs2)
                                                  }
;

/* We don't check if the actual variables are defined or not because they may just be variable names of procedure outputs. */
actual_atom:
    actual_atom_primary                           { $1 }
  | atom_v                                        { parse_actual_atom_vec (get_line_start()) $1 }
;

actual_atom_primary:
    const_exp                                     { parse_actual_atom (get_line_start()) (`ACONST { atmtyphint = None; atmvalue = $1 }) }
  | const_exp_primary AT typ                      { parse_actual_atom (get_line_start()) (`ACONST { atmtyphint = Some $3; atmvalue = $1 }) }
  | typ const_exp                                 { parse_actual_atom (get_line_start()) (`ACONST { atmtyphint = Some $1; atmvalue = $2 }) }
  | ID                                            { parse_actual_atom (get_line_start()) (`AVAR { atmtyphint = None; atmname = $1 }) }
  | ID OROP NUM DOTDOT NUM                        { parse_actual_atom_var_expansion (get_line_start()) $1 $3 $5 }
/* The following rule produces shift/reduce conflict */
/*  | VEC_ID LSQUARE NUM RSQUARE                    { parse_actual_atom (get_line_start()) (`AVECELM { avecname = $1; avecindex = Z.to_int $3 }) } */
;

atom:
    const_exp_primary                             { `ACONST { atmtyphint = None; atmvalue = $1; } }
  | const_exp_primary AT typ                      { `ACONST { atmtyphint = Some $3; atmvalue = $1; } }
  | typ const_exp_primary                         { `ACONST { atmtyphint = Some $1; atmvalue = $2; } }
  | defined_var                                   { ($1 :> atom_t) }
  | VEC_ID LSQUARE NUM RSQUARE                    { `AVECELM { avecname = $1; avecindex = Z.to_int $3 } }
  /*| LPAR atom RPAR                              { fun ctx -> $2 ctx } source of reduce/reduce conflict*/
;

atom_v:
    atom_v_primary                                { $1 }
  | atom_v_primary LSQUARE ranges RSQUARE         { `AVECSEL { vecselatm = $1; vecselrng = $3 } }
  | atom_v ADDADDOP atom_v                        { `AVECCAT [$1; $3] }
;

atom_v_primary:
    VEC_ID                                        { `AVECT { vecname = $1; vectyphint = None; } }
  | VEC_ID AT vectyp                              { `AVECT { vecname = $1; vectyphint = Some $3; } }
  | LSQUARE atom_scalars RSQUARE                  { `AVLIT $2 }
  | LPAR atom_v RPAR                              { $2 }
;

atom_scalars:
    atom                                          { [$1] }
  | atom COMMA atom_scalars                       { $1::$3 }
;

ranges:
    ranges_slicing                                { $1 }
  | ranges_indices                                { $1 }
;

ranges_slicing:
    range_slicing                                 { [$1] }
  | range_slicing COMMA ranges_slicing            { $1::$3 }
;

ranges_indices:
  const_exp COMMA const_exp_list                  { [ SelSingle (fun ctx -> Z.to_int ($1 ctx)); SelMultiple (fun ctx -> (List.rev_map Z.to_int ($3 ctx) |> List.rev)) ] }
;

range_slicing:
    const_exp COLON const_exp                     { SelRange (fun ctx -> (Some (Z.to_int ($1 ctx)), Some (Z.to_int ($3 ctx)), None)) }
  |               COLON const_exp                 { SelRange (fun ctx -> (None, Some (Z.to_int ($2 ctx)), None)) }
  | const_exp COLON                               { SelRange (fun ctx -> (Some (Z.to_int ($1 ctx)), None, None)) }
  | const_exp COLON const_exp COLON const_exp
                                                  { SelRange (fun ctx -> (Some (Z.to_int ($1 ctx)), Some (Z.to_int ($3 ctx)), Some (Z.to_int ($5 ctx)))) }
  |               COLON const_exp COLON const_exp
                                                  { SelRange (fun ctx -> (None, Some (Z.to_int ($2 ctx)), Some (Z.to_int ($4 ctx)))) }
  | const_exp COLON               COLON const_exp
                                                  { SelRange (fun ctx -> (Some (Z.to_int ($1 ctx)), None, Some (Z.to_int ($4 ctx)))) }
;

var_expansion:
  ID OROP NUM DOTDOT NUM                          { parse_var_expansion (get_line_start()) $1 $3 $5 }
;

defined_var:
    ID                                            { parse_defined_var (get_line_start()) $1 None }
  | ID AT typ                                     { parse_defined_var (get_line_start()) $1 (Some $3) }
  | typ ID                                        { parse_defined_var (get_line_start()) $2 (Some $1) }
;

gvars:
    gvar                                          { fun ctx -> ([$1 ctx], []) }
  | vgvar                                         { fun ctx -> ([], [$1 ctx]) }
  | gvar COMMA gvars                              { fun ctx -> let (sgvars, vgvars) = $3 ctx in
                                                               ($1 ctx::sgvars, vgvars) }
  | vgvar COMMA gvars                             { fun ctx -> let (sgvars, vgvars) = $3 ctx in
                                                               (sgvars, $1 ctx::vgvars) }
  | gvar error                                    { raise_at_line (get_line_start()) ("A comma is used to separate ghost variables.") }
  | error                                         { raise_at_line (get_line_start()) ("Invalid ghost variable.") }
;

gvar:
    typ ID                                        { parse_gvar (get_line_start()) $2 $1 }
  | ID AT typ                                     { parse_gvar (get_line_start()) $1 $3 }
;

vgvar:
    vectyp VEC_ID                                 { parse_vgvar (get_line_start()) $2 $1 }
  | VEC_ID AT vectyp                              { parse_vgvar (get_line_start()) $1 $3 }
;

const_exp_list:
    const_exp                                     { fun ctx -> [$1 ctx] }
  | const_exp COMMA const_exp_list                { fun ctx -> ($1 ctx)::($3 ctx) }
;

const_exp:
    const_exp_primary                             { fun ctx -> $1 ctx }
  | SUBOP const_exp %prec UMINUS                  { fun ctx -> Z.neg ($2 ctx) }
  | const_exp ADDOP const_exp                     { fun ctx -> Z.add ($1 ctx) ($3 ctx) }
  | const_exp SUBOP const_exp                     { fun ctx -> Z.sub ($1 ctx) ($3 ctx) }
  | const_exp MULOP const_exp                     { fun ctx -> Z.mul ($1 ctx) ($3 ctx) }
  | const_exp POWOP const_exp                     { fun ctx ->
                                                    let n = $1 ctx in
                                                    let i = $3 ctx in
                                                    try
                                                      Z.pow n (Z.to_int i)
                                                    with Z.Overflow ->
                                                      big_pow n i
                                                  }
;

const_exp_primary:
    const                                         { fun ctx -> $1 ctx }
  | LPAR const_exp RPAR                           { fun ctx -> $2 ctx }
;

const_exp_primarys:
    const_exp_primary                             { [$1] }
  | const_exp_primary COMMA const_exp_primarys    { $1::$3 }
;

const_exp_v_primary:
  LSQUARE const_exp_primarys RSQUARE              { $2 }

;

const:
    NUM                                           { fun _ -> $1 }
  | DEREFOP ID                                    { parse_named_constant (get_line_start()) $2 }
;

typ:
    UINT                                          { if $1 > 0 then uint_t $1
                                                    else raise_at_line (get_line_start()) ("The big-width must be positive") }
  | SINT                                          { if $1 > 0 then int_t $1
                                                    else raise_at_line (get_line_start()) ("The big-width must be positive") }
  | BIT                                           { bit_t }
;

vectyp:
  typ LSQUARE NUM RSQUARE                         { let dim = Z.to_int $3 in
                                                    if dim > 0 then ($1, dim)
                                                    else raise_at_line (get_line_start()) ("Vector length must be positive") }

nums:
    NUM                                           { [Z.to_int $1] }
  | NUM COMMA nums                                { Z.to_int $1::$3 }
;

atom_vs:
    atom_v_primary                                { [$1] }
  | atom_v_primary atom_vs                        { $1::$2 }
;
