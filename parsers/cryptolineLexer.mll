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
              "add"                        , ADD;
              "adds"                       , ADDS;
              "addr"                       , ADDR;
              "adc"                        , ADC;
              "adcs"                       , ADCS;
              "adcr"                       , ADCR;
              "sub"                        , SUB;
              "subs"                       , SUBC;
              "subc"                       , SUBC;
              "subb"                       , SUBB;
              "subr"                       , SUBR;
              "sbc"                        , SBC;
              "sbcs"                       , SBCS;
              "sbcr"                       , SBCR;
              "sbb"                        , SBB;
              "sbbs"                       , SBBS;
              "sbbr"                       , SBBR;
              "mul"                        , MUL;
              "muls"                       , MULS;
              "mulr"                       , MULR;
              "mull"                       , MULL;
              "mulj"                       , MULJ;
              "spl"                        , SPLIT;
              "split"                      , SPLIT;
              "uadd"                       , UADD;
              "uadds"                      , UADDS;
              "uaddr"                      , UADDR;
              "uadc"                       , UADC;
              "uadcs"                      , UADCS;
              "uadcr"                      , UADCR;
              "usub"                       , USUB;
              "usubs"                      , USUBC;
              "usubc"                      , USUBC;
              "usubb"                      , USUBB;
              "usubr"                      , USUBR;
              "usbc"                       , USBC;
              "usbcs"                      , USBCS;
              "usbcr"                      , USBCR;
              "usbb"                       , USBB;
              "usbbs"                      , USBBS;
              "usbbr"                      , USBBR;
              "umul"                       , UMUL;
              "umuls"                      , UMULS;
              "umulr"                      , UMULR;
              "umull"                      , UMULL;
              "umulj"                      , UMULJ;
              "uspl"                       , USPLIT;
              "usplit"                     , USPLIT;
              "sadd"                       , SADD;
              "sadds"                      , SADDS;
              "saddr"                      , SADDR;
              "sadc"                       , SADC;
              "sadcs"                      , SADCS;
              "sadcr"                      , SADCR;
              "ssub"                       , SSUB;
              "ssubs"                      , SSUBC;
              "ssubc"                      , SSUBC;
              "ssubb"                      , SSUBB;
              "ssubr"                      , SSUBR;
              "ssbc"                       , SSBC;
              "ssbcs"                      , SSBCS;
              "ssbcr"                      , SSBCR;
              "ssbb"                       , SSBB;
              "ssbbs"                      , SSBBS;
              "ssbbr"                      , SSBBR;
              "smul"                       , SMUL;
              "smuls"                      , SMULS;
              "smulr"                      , SMULR;
              "smull"                      , SMULL;
              "smulj"                      , SMULJ;
              "sspl"                       , SSPLIT;
              "ssplit"                     , SSPLIT;
              "shl"                        , SHL;
              "lsl"                        , SHL;
              "cshl"                       , CSHL;
              "clsl"                       , CSHL;
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
              (********** Predicates **********)
              "true"                       , TRUE;
              "eq"                         , EQ;
              "eqmod"                      , EQMOD;
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
              "precondition"               , PRECONDITION
            ]
}

let letter = ['a'-'z' 'A'-'Z' '_']
let number = ['0'-'9']
let hex = ['0'-'9' 'a'-'f' 'A'-'F']
let identity = letter (letter | number)*
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
  | eof                            { EOF }
