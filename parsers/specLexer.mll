{
  open SpecParser
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
              "shr"                        , SHR;
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
              "call"                       , CALL;
              "ulimbs"                     , ULIMBS;
              "slimbs"                     , SLIMBS;
              "limbs"                      , ULIMBS;
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
              "smt"                        , SMT
            ]

    let buffer = Buffer.create 100
}

let letter = ['a'-'z' 'A'-'Z' '_']
let number = ['0'-'9']
let bin = ['0' '1']
let hex = ['0'-'9' 'a'-'f' 'A'-'F']
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
  | (_ as c)                       { Buffer.add_char buffer c; line_comment lexbuf }

and

save_comment = parse
    ("\r\n"|'\n'|'\r')             { let _ = Lexing.new_line lexbuf in
                                     let s = Buffer.contents buffer in
                                     let _ = Buffer.clear buffer in
                                     COMMENT (String.trim s) }
  | (_ as c)                       { Buffer.add_char buffer c; save_comment lexbuf }

and

token = parse
    [' ' '\t']                     { token lexbuf }
  | ("\r\n"|'\n'|'\r')             { Lexing.new_line lexbuf; token lexbuf }
  (* Others *)
  | "#!"                           { save_comment lexbuf }
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
  (* Types *)
  | "uint" ((number+) as w)        { UINT (int_of_string w) }
  | "sint" ((number+) as w)        { SINT (int_of_string w) }
  | "int" ((number+) as w)         { SINT (int_of_string w) }
  | "bit"                          { BIT }
  (* Numbers *)
  | "0b" ((bin+) as bin)           { NUM (Z.of_string_base 2 bin) }
  | "0x" ((hex+) as hex)           { NUM (Z.of_string_base 16 hex) }
  | (number+) as num               { NUM (Z.of_string num) }
  | identity as id                 { try
                                       Hashtbl.find keywords id
                                     with Not_found ->
                                       ID id
                                   }
  | identity_vec as id             { VEC_ID id }
  | path as p                      { (* Need `Hashtbl.find keywords p` if not all keywords are recognized as identities. *)
                                     PATH p }
  | eof                            { EOF }
