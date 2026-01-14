{
  open CryptolineParser
  open Common
  exception Eof

  let keywords = Hashtbl.create 100
  let _ = List.iter (fun (keyword, token) -> Hashtbl.replace keywords keyword token)
            [
              (********** Instructions **********)
              "const"                      , CONST;
              "assign"                     , MOV;
              "mov"                        , MOV;
              "broadcast"                  , BROADCAST;
              "add"                        , ADD;
              "adds"                       , ADDS;
              "adc"                        , ADC;
              "adcs"                       , ADCS;
              "sub"                        , SUB;
              "subs"                       , SUBC;
              "subc"                       , SUBC;
              "subb"                       , SUBB;
              "sbc"                        , SBC;
              "sbcs"                       , SBCS;
              "sbb"                        , SBB;
              "sbbs"                       , SBBS;
              "mul"                        , MUL;
              "muls"                       , MULS;
              "mull"                       , MULL;
              "mulj"                       , MULJ;
              "udiv"                       , UDIV;
              "spl"                        , SPL;
              "split"                      , SPLIT;
              "uadd"                       , UADD;
              "uadds"                      , UADDS;
              "uadc"                       , UADC;
              "uadcs"                      , UADCS;
              "usub"                       , USUB;
              "usubs"                      , USUBC;
              "usubc"                      , USUBC;
              "usubb"                      , USUBB;
              "usbc"                       , USBC;
              "usbcs"                      , USBCS;
              "usbb"                       , USBB;
              "usbbs"                      , USBBS;
              "umul"                       , UMUL;
              "umuls"                      , UMULS;
              "umull"                      , UMULL;
              "umulj"                      , UMULJ;
              "uspl"                       , USPL;
              "usplit"                     , USPLIT;
              "sadd"                       , SADD;
              "sadds"                      , SADDS;
              "sadc"                       , SADC;
              "sadcs"                      , SADCS;
              "ssub"                       , SSUB;
              "ssubs"                      , SSUBC;
              "ssubc"                      , SSUBC;
              "ssubb"                      , SSUBB;
              "ssbc"                       , SSBC;
              "ssbcs"                      , SSBCS;
              "ssbb"                       , SSBB;
              "ssbbs"                      , SSBBS;
              "smul"                       , SMUL;
              "smuls"                      , SMULS;
              "smull"                      , SMULL;
              "smulj"                      , SMULJ;
              "sdiv"                       , SDIV;
              "sspl"                       , SSPL;
              "ssplit"                     , SSPLIT;
              "shl"                        , SHL;
              "lsl"                        , SHL;
              "shls"                       , SHLS;
              "shr"                        , SHR;
              "shrs"                       , SHRS;
              "sar"                        , SAR;
              "sars"                       , SARS;
              "cshl"                       , CSHL;
              "cshls"                      , CSHLS;
              "clsl"                       , CSHL;
              "clsls"                      , CSHLS;
              "cshr"                       , CSHR;
              "cshrs"                      , CSHRS;
              "rol"                        , ROL;
              "ror"                        , ROR;
              "set"                        , SET;
              "clear"                      , CLEAR;
              "nondet"                     , NONDET;
              "cmove"                      , CMOV;
              "cmov"                       , CMOV;
              "and"                        , AND;
              "or"                         , OR;
              "not"                        , NOT;
              "cast"                       , CAST;
              "vpc"                        , VPC;
              "join"                       , JOIN;
              "assert"                     , ASSERT;
              "eassert"                    , EASSERT;
              "rassert"                    , RASSERT;
              "assume"                     , ASSUME;
              "cut"                        , CUT;
              "ecut"                       , ECUT;
              "rcut"                       , RCUT;
              "ghost"                      , GHOST;
              "nop"                        , NOP;
              "seteq"                      , SETEQ;
              "setne"                      , SETNE;
              "extract"                    , EXTRACT;
              (********** Logical Expressions **********)
              "vars"                       , VARS;
              "neg"                        , NEG;
              "sq"                         , SQ;
              "ext"                        , UEXT;
              "uext"                       , UEXT;
              "zext"                       , UEXT;
              "sext"                       , SEXT;
              "mod"                        , MOD;
              "umod"                       , UMOD;
              "srem"                       , SREM;
              "smod"                       , SMOD;
              "xor"                        , XOR;
              "ult"                        , ULT;
              "ule"                        , ULE;
              "ugt"                        , UGT;
              "uge"                        , UGE;
              "slt"                        , SLT;
              "sle"                        , SLE;
              "sgt"                        , SGT;
              "sge"                        , SGE;
              "lsr"                        , SHR;
              "sar"                        , SAR;
              "asr"                        , SAR;
              "concat"                     , CONCAT;
              (********** Predicates **********)
              "true"                       , TRUE;
              "eq"                         , EQ;
              "eqmod"                      , EQMOD;
              "equmod"                     , EQUMOD;
              "eqsmod"                     , EQSMOD;
              "eqsrem"                     , EQSREM;
              (********** Others **********)
              "proc"                       , PROC;
              "inlinespec"                 , INLINESPEC;
              "inline"                     , INLINE;
              "call"                       , CALL;
              "ulimbs"                     , ULIMBS;
              "slimbs"                     , SLIMBS;
              "limbs"                      , ULIMBS;
              "poly"                       , POLY;
              "prove"                      , PROVE;
              "with"                       , WITH;
              "all"                        , ALL;
              "cuts"                       , CUTS;
              "assumes"                    , ASSUMES;
              "ghosts"                     , GHOSTS;
              "precondition"               , PRECONDITION;
              "algebra"                    , ALGEBRA;
              "range"                      , RANGE;
              "qfbv"                       , QFBV;
              "qf_bv"                      , QFBV;
              "solver"                     , SOLVER;
              "smt"                        , SMT;
              "nia"                        , NIA;
              "lia"                        , LIA;
              (********** Floating point related, or the ones don't appear **********)
              "addl"                       , ADD;
              "addq"                       , ADD;
              "bnd"                        , BND; (*MPX bounds check / manipulation*)
              "cltq"                       , CLTQ; (*EAX → RAX sign-extension（32 -> 64）*)
              "cmp"                        , CMP;
              "cmpl"                       , CMP;
              "cmpq"                       , CMP;
              "cwtl"                       , CWTL; (*AX → EAX sign-extension (16 -> 32) *)
              "endbr64"                    , ENDBR64; (*Control-flow enforcement*)
              "imul"                       , IMUL;
              "lea"                        , LEA;
              "leave"                      , LEAVE;
              "movabs"                     , MOV;
              "movl"                       , MOV;
              "movq"                       , MOV;
              "movsbl"                     , MOVS;
              "movslq"                     , MOVS;
              "movzbl"                     , MOVZ;
              "movzwl"                     , MOVZ;
              "orq"                        , OR;
              "pop"                        , POP;
              "push"                       , PUSH;
              "sar"                        , SAR;
              "seta"                       , SETA;
              "shl"                        , SHL;
              "subl"                       , SUB;
              "subq"                       , SUB;
              "test"                       , TEST;
              "vaddpd"                     , ADD;
              "vaddsd"                     , ADD;
              "vbroadcastsd"               , VBROADCASTSD;
              "vcomisd"                    , VCOMISD;
              "vcvtsi2sdq"                 , VCVTSI2SDQ;
              "vcvttsd2si"                 , VCVTTSD2SI;
              "vdivpd"                     , VDIV;
              "vextractf128"               , VEXTRACTF128;
              "vextracti128"               , VEXTRACTI128;
              "vhaddpd"                    , VHADD;
              "vhsubpd"                    , VHSUB;
              "vinsertf128"                , VINSERTF128;
              "vmovapd"                    , MOV;
              "vmovd"                      , MOV;
              "vmovdqa"                    , MOV;
              "vmovdqu"                    , MOV;
              "vmovq"                      , MOV;
              "vmovsd"                     , VMOVSD;
              "vmovupd"                    , MOV;
              "vmulpd"                     , MUL;
              "vmulsd"                     , MUL;
              "vpaddd"                     , ADD;
              "vpaddq"                     , ADD;
              "vpand"                      , AND;
              "vpbroadcastd"               , BROADCAST;
              "vpbroadcastq"               , BROADCAST;
              "vpbroadcastw"               , BROADCAST;
              "vpcmpeqw"                   , CMP;
              "vpcmpgtq"                   , CMP;
              "vpcmpgtw"                   , CMP;
              "vpermpd"                    , VPER;
              "vpermq"                     , VPER;
              "vphaddw"                    , VPHADDW;
              "vpinsrd"                    , VPINS;
              "vpinsrq"                    , VPINS;
              "vpmovsxwq"                  , VPMOVSXWQ;
              "vpor"                       , OR;
              "vpslld"                     , VSL; (* left *)
              "vpsrld"                     , VSR; (* right *)
              "vpsrldq"                    , VPSRLDQ;
              "vpsrlw"                     , VSR;
              "vpunpcklqdq"                , VPUNPCKLQDQ;
              "vpxor"                      , XOR;
              "vshufpd"                    , VSHUFPD;
              "vsubpd"                     , SUB;
              "vsubsd"                     , SUB;
              "vunpcklpd"                  , VUNPCKLPD;
              "vxorpd"                     , XOR*)
            ]
}

let letter = ['a'-'z' 'A'-'Z' '_']
let number = ['0'-'9']
let bin = ['0' '1']
let hex = ['0'-'9' 'a'-'f' 'A'-'F']
let float =
  ['0'-'9']+ '.' ['0'-'9']* (['e''E']['+''-']?['0'-'9']+)?
| '.' ['0'-'9']+ (['e''E']['+''-']?['0'-'9']+)?

let identity = letter (letter | number)*
let identity_vec = '%' identity
let path = '/'? ((['a'-'z' 'A'-'Z' '_'] ['0'-'9' 'a'-'z' 'A'-'Z' '_' '/']*))+ | (['"'][^ '"']+['"'])
let comment_line = ("//"([^ '\n' ]+))|('#'([^ '\n' ]+))

rule c_block_comment = parse
    "*/"                           { token lexbuf }
  | "/*"                           { raise (Failure "'/*' is not allowed in a block comment.") }
  | ("\r\n"|'\n'|'\r')             { Lexing.new_line lexbuf; c_block_comment lexbuf }
  | _                              { c_block_comment lexbuf }

and

ml_block_comment = parse
    "*)"                           { token lexbuf }
  | "(*"                           { raise (Failure "'(*' is not allowed in a block comment.") }
  | ("\r\n"|'\n'|'\r')             { Lexing.new_line lexbuf; ml_block_comment lexbuf }
  | _                              { ml_block_comment lexbuf }

and

line_comment = parse
    ("\r\n"|'\n'|'\r')             { Lexing.new_line lexbuf; token lexbuf }
  | _                              { line_comment lexbuf }

and

token = parse
    [' ' '\t']                     { token lexbuf }
  | ("\r\n"|'\n'|'\r')             { Lexing.new_line lexbuf; token lexbuf }
  (* Others *)
  | "//"                           { line_comment lexbuf }
  | "#"                            { line_comment lexbuf }
  | "/*"                           { c_block_comment lexbuf }
  | "(*"                           { ml_block_comment lexbuf }
  (* Symbols *)
  | '@'                            { AT }
  | '{'                            { LBRAC }
  | '}'                            { RBRAC }
  | '('                            { LPAR }
  | ')'                            { RPAR }
  | '['                            { LSQUARE }
  | ']'                            { RSQUARE }
  | ','                            { COMMA }
  | ';'                            { SEMICOLON }
  | ':'                            { COLON }
  | "&&"['&']*                     { VBAR }
  | '|'                            { OROP }
  | '.'                            { DOT }
  | ".."                           { DOTDOT }
  (* Operators *)
  | "++"                           { ADDADDOP }
  | '+'                            { ADDOP }
  | '-'                            { SUBOP }
  | "**"                           { POWOP }
  | '*'                            { MULOP }
  | '^'                            { XOROP }
  | "<=u"                          { ULEOP }
  | ">=u"                          { UGEOP }
  | "<u"                           { ULTOP }
  | ">u"                           { UGTOP }
  | "<=s"                          { SLEOP }
  | ">=s"                          { SGEOP }
  | "<s"                           { SLTOP }
  | ">s"                           { SGTOP }
  | "<="                           { ULEOP }
  | ">="                           { UGEOP }
  | "<<"                           { SHLOP }
  | ">>a"                          { SAROP }
  | ">>"                           { SHROP }
  | "<"                            { ULTOP }
  | ">"                            { UGTOP }
  | '='                            { EQOP }
  | '~'                            { NEGOP }
  | '$'                            { DEREFOP }
  | "/\\"                          { LANDOP }
  | "\\/"                          { LOROP }
  | '!'                            { NOTOP }
  | '&'                            { ANDOP }
  | "\xf0\x9f\x90\xac"             { DOLPHIN }
  (* Types *)
  | ("uint") ((number+) as w)      { UINT (int_of_string w) }
  | ("sint"|"int") ((number+) as w)
                                   { SINT (int_of_string w) }
  | "bit"                          { BIT }
  (* Numbers *)
  | "0b" ((bin+) as bin)           { NUM (Z.of_string_base 2 bin) }
  | "0x" ((hex+) as hex)           { NUM (Z.of_string_base 16 hex) }
  | (number+) as num               { NUM (Z.of_string num) }
  | float as f                     { FLOAT (float_of_string f) }
  | identity_vec as id             { VEC_ID id }
  | identity as id                 { try
                                       Hashtbl.find keywords id
                                     with Not_found ->
                                       ID id
                                   }
  | path as p                      { (* Need `Hashtbl.find keywords p` if not all keywords are recognized as identities. *)
                                     PATH p }
  | eof                            { EOF }
  | _                              { raise (Invalid_argument ("Unexpected character: " ^ Lexing.lexeme lexbuf ^ " at line " ^ string_of_int (get_line_end()))) }
