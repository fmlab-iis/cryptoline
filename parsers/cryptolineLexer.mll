{
  open CryptolineParser
  open Common
  exception Eof
  let reset_cnum () = cnum := 0
  let get_len lexbuf = String.length (Lexing.lexeme lexbuf)
  let upd_cnum lexbuf = cnum := !cnum + get_len lexbuf

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
              "clsl"                       , CSHL;
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
    "*/"                           { upd_cnum lexbuf; token lexbuf }
  | "/*"                           { raise (Failure "'/*' is not allowed in a block comment.") }
  | ("\r\n"|'\n'|'\r')             { reset_cnum(); incr lnum; c_block_comment lexbuf }
  | _                              { upd_cnum lexbuf; c_block_comment lexbuf }

and

ml_block_comment = parse
    "*)"                           { upd_cnum lexbuf; token lexbuf }
  | "(*"                           { raise (Failure "'(*' is not allowed in a block comment.") }
  | ("\r\n"|'\n'|'\r')             { reset_cnum(); incr lnum; ml_block_comment lexbuf }
  | _                              { upd_cnum lexbuf; ml_block_comment lexbuf }

and

line_comment = parse
    ("\r\n"|'\n'|'\r')             { reset_cnum(); incr lnum; token lexbuf }
  | _                              { upd_cnum lexbuf; line_comment lexbuf }

and

token = parse
    [' ' '\t']                     { upd_cnum lexbuf; token lexbuf }
  | ("\r\n"|'\n'|'\r')             { reset_cnum(); incr lnum; token lexbuf }
  (* Others *)
  | "//"                           { upd_cnum lexbuf; line_comment lexbuf }
  | "#"                            { upd_cnum lexbuf; line_comment lexbuf }
  | "/*"                           { upd_cnum lexbuf; c_block_comment lexbuf }
  | "(*"                           { upd_cnum lexbuf; ml_block_comment lexbuf }
  (* Symbols *)
  | '@'                            { upd_cnum lexbuf; AT }
  | '{'                            { upd_cnum lexbuf; LBRAC }
  | '}'                            { upd_cnum lexbuf; RBRAC }
  | '('                            { upd_cnum lexbuf; LPAR }
  | ')'                            { upd_cnum lexbuf; RPAR }
  | '['                            { upd_cnum lexbuf; LSQUARE }
  | ']'                            { upd_cnum lexbuf; RSQUARE }
  | ','                            { upd_cnum lexbuf; COMMA }
  | ';'                            { upd_cnum lexbuf; SEMICOLON }
  | ':'                            { upd_cnum lexbuf; COLON }
  | "&&"                           { upd_cnum lexbuf; VBAR }
  | '|'                            { upd_cnum lexbuf; OROP }
  | '.'                            { upd_cnum lexbuf; DOT }
  | ".."                           { upd_cnum lexbuf; DOTDOT }
  (* Operators *)
  | '+'                            { upd_cnum lexbuf; ADDOP }
  | '-'                            { upd_cnum lexbuf; SUBOP }
  | "**"                           { upd_cnum lexbuf; POWOP }
  | '*'                            { upd_cnum lexbuf; MULOP }
  | '^'                            { upd_cnum lexbuf; XOROP }
  | "<=u"                          { upd_cnum lexbuf; ULEOP }
  | ">=u"                          { upd_cnum lexbuf; UGEOP }
  | "<u"                           { upd_cnum lexbuf; ULTOP }
  | ">u"                           { upd_cnum lexbuf; UGTOP }
  | "<=s"                          { upd_cnum lexbuf; SLEOP }
  | ">=s"                          { upd_cnum lexbuf; SGEOP }
  | "<s"                           { upd_cnum lexbuf; SLTOP }
  | ">s"                           { upd_cnum lexbuf; SGTOP }
  | "<="                           { upd_cnum lexbuf; ULEOP }
  | ">="                           { upd_cnum lexbuf; UGEOP }
  | "<<"                           { upd_cnum lexbuf; SHLOP }
  | ">>a"                          { upd_cnum lexbuf; SAROP }
  | ">>"                           { upd_cnum lexbuf; SHROP }
  | "<"                            { upd_cnum lexbuf; ULTOP }
  | ">"                            { upd_cnum lexbuf; UGTOP }
  | '='                            { upd_cnum lexbuf; EQOP }
  | '~'                            { upd_cnum lexbuf; NEGOP }
  | '$'                            { upd_cnum lexbuf; DEREFOP }
  | "/\\"                          { upd_cnum lexbuf; LANDOP }
  | "\\/"                          { upd_cnum lexbuf; LOROP }
  | '!'                            { upd_cnum lexbuf; NOTOP }
  | '&'                            { upd_cnum lexbuf; ANDOP }
  (* Types *)
  | "uint" ((number+) as w)        { upd_cnum lexbuf; UINT (int_of_string w) }
  | "sint" ((number+) as w)        { upd_cnum lexbuf; SINT (int_of_string w) }
  | "int" ((number+) as w)         { upd_cnum lexbuf; SINT (int_of_string w) }
  | "bit"                          { upd_cnum lexbuf; BIT }
  (* Numbers *)
  | "0b" ((bin+) as bin)           {
                                     let _ = upd_cnum lexbuf in
                                     NUM (Z.of_string_base 2 bin)
                                   }
  | "0x" ((hex+) as hex)           {
                                     let _ = upd_cnum lexbuf in
                                     NUM (Z.of_string_base 16 hex)
                                   }
  | (number+) as num               { upd_cnum lexbuf; NUM (Z.of_string num) }
  | identity as id                 { upd_cnum lexbuf;
                                     try
                                       Hashtbl.find keywords id
                                     with Not_found ->
                                       ID id
                                   }
  | identity_vec as id             { upd_cnum lexbuf; VEC_ID id }
  | path as p                      { (* Need `Hashtbl.find keywords p` if not all keywords are recognized as identities. *)
                                     upd_cnum lexbuf; PATH p }
  | eof                            { EOF }
