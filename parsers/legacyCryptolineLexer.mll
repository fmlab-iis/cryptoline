{
  open Big_int_Z
  open LegacyCryptolineParser
  open Common
  exception Eof
  let reset_cnum () = cnum := 0
  let get_len lexbuf = String.length (Lexing.lexeme lexbuf)
  let upd_cnum lexbuf = cnum := !cnum + get_len lexbuf

  let big_int_of_hex str =
    let sixteen = big_int_of_int 16 in
    let rec h res i str =
      let n = big_int_of_int (int_of_string ("0x" ^ String.make 1 (str.[i]))) in
      let res = add_big_int (mult_big_int res sixteen) n in
      if i == String.length str - 1 then
        res
      else
        h res (i + 1) str in
    let (neg, str) =
      if str.[0] = '-' then
        (true, String.sub str 1 (String.length str - 1))
      else
        (false, str) in
    let num = h zero_big_int 0 str in
    if neg then
      minus_big_int num
    else
      num

  let keywords = Hashtbl.create 100
  let _ = List.iter (fun (keyword, token) -> Hashtbl.replace keywords keyword token)
            [
              (********** Instructions **********)
              "bvVar"                        , BVVAR;
              "bvConst"                      , BVCONST;
              "bvAssign"                     , BVASSIGN;
              "bvUadd"                       , BVUADD;
              "bvAdd"                        , BVUADD;
              "bvUaddC"                      , BVUADDC;
              "bvAddC"                       , BVUADDC;
              "bvUadc"                       , BVUADC;
              "bvAdc"                        , BVUADC;
              "bvUadcC"                      , BVUADCC;
              "bvAdcC"                       , BVUADCC;
              "bvUsub"                       , BVUSUB;
              "bvSub"                        , BVUSUB;
              "bvUsubC"                      , BVUSUBC;
              "bvSubC"                       , BVUSUBC;
              "bvUsbb"                       , BVUSBB;
              "bvSbb"                        , BVUSBB;
              "bvUsbbC"                      , BVUSBBC;
              "bvSbbC"                       , BVUSBBC;
              "bvUmul"                       , BVUMUL;
              "bvMul"                        , BVUMUL;
              "bvUmulf"                      , BVUMULF;
              "bvMulf"                       , BVUMULF;
              "bvUsplit"                     , BVUSPLIT;
              "bvSplit"                      , BVUSPLIT;
              "bvSadd"                       , BVSADD;
              "bvSaddC"                      , BVSADDC;
              "bvSadc"                       , BVSADC;
              "bvSadcC"                      , BVSADCC;
              "bvSsub"                       , BVSSUB;
              "bvSsubC"                      , BVSSUBC;
              "bvSsbb"                       , BVSSBB;
              "bvSsbbC"                      , BVSSBBC;
              "bvSmul"                       , BVSMUL;
              "bvSmulf"                      , BVSMULF;
              "bvSsplit"                     , BVSSPLIT;
              "bvShl"                        , BVSHL;
              "bvConcatShl"                  , BVCONCATSHL;
              "bvSet"                        , BVSET;
              "bvClear"                      , BVCLEAR;
              "bvNondet"                     , BVNONDET;
              "bvCmove"                      , BVCMOVE;
              "bvAndb"                       , BVANDB;
              "bvOrb"                        , BVORB;
              "bvNotb"                       , BVNOTB;
              "bvAssert"                     , BVASSERT;
              "bvAssume"                     , BVASSUME;
              "bveCut"                       , BVECUT;
              "bvecut"                       , BVECUT;
              "bvrCut"                       , BVRCUT;
              "bvrcut"                       , BVRCUT;
              "bvGhost"                      , BVGHOST;
              (********** Macros **********)
              "bvevars"                      , BVEVARS;
              "bvrvars"                      , BVRVARS;
              "bvvars"                       , LBVVARS;
              (********** Algebraic Expressions **********)
              "bveVar"                       , BVEVAR;
              "bvevar"                       , BVEVAR;
              "bveConst"                     , BVECONST;
              "bveconst"                     , BVECONST;
              "bveUnop"                      , BVEUNOP;
              "bveBinop"                     , BVEBINOP;
              "bveNeg"                       , BVENEG;
              "bveneg"                       , BVENEG;
              "bveAdd"                       , BVEADD;
              "bveadd"                       , BVEADD;
              "bveSub"                       , BVESUB;
              "bvesub"                       , BVESUB;
              "bveMul"                       , BVEMUL;
              "bvemul"                       , BVEMUL;
              "bveSq"                        , BVESQ;
              "bvesq"                        , BVESQ;
              "bveadds"                      , BVEADDS;
              "bvemuls"                      , BVEMULS;
              "bve2pow"                      , BVE2POW;
              (********** Range Expressions **********)
              "bvrVar"                       , BVRVAR;
              "bvrvar"                       , BVRVAR;
              "bvrConst"                     , BVRCONST;
              "bvrconst"                     , BVRCONST;
              "bvrposz"                      , BVRPOSZ;
              "bvrUnop"                      , BVRUNOP;
              "bvrBinop"                     , BVRBINOP;
              "bvrUext"                      , BVRUEXT;
              "bvruext"                      , BVRUEXT;
              "bvrExt"                       , BVRUEXT;
              "bvrext"                       , BVRUEXT;
              "bvrSext"                      , BVRSEXT;
              "bvrsext"                      , BVRSEXT;
              "bvrAdd"                       , BVRADD;
              "bvradd"                       , BVRADD;
              "bvrSub"                       , BVRSUB;
              "bvrsub"                       , BVRSUB;
              "bvrMul"                       , BVRMUL;
              "bvrmul"                       , BVRMUL;
              "bvrSq"                        , BVRSQ;
              "bvrsq"                        , BVRSQ;
              "bvrUmod"                      , BVRUMOD;
              "bvrumod"                      , BVRUMOD;
              "bvrMod"                       , BVRUMOD;
              "bvrmod"                       , BVRUMOD;
              "bvrSrem"                      , BVRSREM;
              "bvrsrem"                      , BVRSREM;
              "bvrSmod"                      , BVRSMOD;
              "bvrsmod"                      , BVRSMOD;
              "bvrAndb"                      , BVRANDB;
              "bvrandb"                      , BVRANDB;
              "bvrOrb"                       , BVRORB;
              "bvrorb"                       , BVRORB;
              "bvrXorb"                      , BVRXORB;
              "bvrxorb"                      , BVRXORB;
              "bvradds"                      , BVRADDS;
              "bvrmuls"                      , BVRMULS;
              (********** Algebraic Predicates **********)
              "bveTrue"                      , BVETRUE;
              "bvetrue"                      , BVETRUE;
              "bveEq"                        , BVEEQ;
              "bveeq"                        , BVEEQ;
              "bveEqMod"                     , BVEEQMOD;
              "bveeqmod"                     , BVEEQMOD;
              "bveAnd"                       , BVEAND;
              "bveand"                       , BVEAND;
              "bveAnds"                      , BVEANDS;
              "bveands"                      , BVEANDS;
              (********** Range Predicates **********)
              "bvrTrue"                      , BVRTRUE;
              "bvrtrue"                      , BVRTRUE;
              "bvrEq"                        , BVREQ;
              "bvreq"                        , BVREQ;
              "bvrCmp"                       , BVRCMP;
              "bvrcmp"                       , BVRCMP;
              "bvrNeg"                       , BVRNEG;
              "bvrneg"                       , BVRNEG;
              "bvrNot"                       , BVRNOT;
              "bvrnot"                       , BVRNOT;
              "bvrAnds"                      , BVRANDS;
              "bvrands"                      , BVRANDS;
              "bvrOrs"                       , BVRORS;
              "bvrors"                       , BVRORS;
              "bvrAnd"                       , BVRAND;
              "bvrand"                       , BVRAND;
              "bvrOr"                        , BVROR;
              "bvror"                        , BVROR;
              "bvrUlt"                       , BVRULT;
              "bvrult"                       , BVRULT;
              "bvrUle"                       , BVRULE;
              "bvrule"                       , BVRULE;
              "bvrUgt"                       , BVRUGT;
              "bvrugt"                       , BVRUGT;
              "bvrUge"                       , BVRUGE;
              "bvruge"                       , BVRUGE;
              "bvrSlt"                       , BVRSLT;
              "bvrslt"                       , BVRSLT;
              "bvrSle"                       , BVRSLE;
              "bvrsle"                       , BVRSLE;
              "bvrSgt"                       , BVRSGT;
              "bvrsgt"                       , BVRSGT;
              "bvrSge"                       , BVRSGE;
              "bvrsge"                       , BVRSGE;
              "bvrEqMod"                     , BVREQMOD;
              "bvreqmod"                     , BVREQMOD;
              (********** Predicates **********)
              "bvTrue"                       , BVTRUE;
              "bvtrue"                       , BVTRUE;
              (********** Extensions **********)
              "bvnegb"                       , LBVNEGB;
              "bvnot"                        , LBVNOTB;
              "bvadd"                        , LBVADD;
              "bvsub"                        , LBVSUB;
              "bvmul"                        , LBVMUL;
              "bvSq"                         , LBVSQ;
              "bvsq"                         , LBVSQ;
              "bvumod"                       , LBVUMOD;
              "bvmod"                        , LBVUMOD;
              "bvsrem"                       , LBVSREM;
              "bvsmod"                       , LBVSMOD;
              "bvandb"                       , LBVANDB;
              "bvorb"                        , LBVORB;
              "bvxorb"                       , LBVXORB;
              "bvult"                        , LBVULT;
              "bvule"                        , LBVULE;
              "bvugt"                        , LBVUGT;
              "bvuge"                        , LBVUGE;
              "bvslt"                        , LBVSLT;
              "bvsle"                        , LBVSLE;
              "bvsgt"                        , LBVSGT;
              "bvsge"                        , LBVSGE;
              "bveq"                         , LBVEQ;
              "bveqmod"                      , LBVEQMOD;
              "bvneg"                        , LBVNEG;
              "bvands"                       , LBVANDS;
              "bvand"                        , LBVAND;
              "bvors"                        , LBVORS;
              "bvor"                         , LBVOR;
              "bvvar"                        , LBVVAR;
              "bvconst"                      , LBVCONST;
              "bvadds"                       , LBVADDS;
              "bvmuls"                       , LBVMULS
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
  | "const"                        { upd_cnum lexbuf; CONST }
  | "proc"                         { upd_cnum lexbuf; PROC }
  | "call"                         { upd_cnum lexbuf; ICALL }
  | "ulimbs"                       { upd_cnum lexbuf; ULIMBS }
  | "slimbs"                       { upd_cnum lexbuf; SLIMBS }
  | "limbs"                        { upd_cnum lexbuf; ULIMBS }
  | "prove"                        { upd_cnum lexbuf; PROVE }
  | "with"                         { upd_cnum lexbuf; WITH }
  | "all"                          { upd_cnum lexbuf; ALL }
  | "cuts"                         { upd_cnum lexbuf; CUTS }
  | "assumes"                      { upd_cnum lexbuf; ASSUMES }
  | "ghosts"                       { upd_cnum lexbuf; GHOSTS }
  | "precondition"                 { upd_cnum lexbuf; PRECONDITION }
  | "mod"                          { upd_cnum lexbuf; MOD }
  (* Symbols *)
  | '{'                            { upd_cnum lexbuf; LBRAC }
  | '}'                            { upd_cnum lexbuf; RBRAC }
  | '('                            { upd_cnum lexbuf; LPAR }
  | ')'                            { upd_cnum lexbuf; RPAR }
  | '['                            { upd_cnum lexbuf; LSQUARE }
  | ']'                            { upd_cnum lexbuf; RSQUARE }
  | ','                            { upd_cnum lexbuf; COMMA }
  | ';'                            { upd_cnum lexbuf; SEMICOLON }
  | ':'                            { upd_cnum lexbuf; COLON }
  | '|'                            { upd_cnum lexbuf; VBAR }
  | ".."                           { upd_cnum lexbuf; DOTDOT }
  (* Operators *)
  | '+'                            { upd_cnum lexbuf; ADD }
  | '-'                            { upd_cnum lexbuf; SUB }
  | '*'                            { upd_cnum lexbuf; MUL }
  | '^'                            { upd_cnum lexbuf; POW }
  | "<=u"                          { upd_cnum lexbuf; ULE }
  | ">=u"                          { upd_cnum lexbuf; UGE }
  | "<u"                           { upd_cnum lexbuf; ULT }
  | ">u"                           { upd_cnum lexbuf; UGT }
  | "<=s"                          { upd_cnum lexbuf; SLE }
  | ">=s"                          { upd_cnum lexbuf; SGE }
  | "<s"                           { upd_cnum lexbuf; SLT }
  | ">s"                           { upd_cnum lexbuf; SGT }
  | "<="                           { upd_cnum lexbuf; ULE }
  | ">="                           { upd_cnum lexbuf; UGE }
  | "<"                            { upd_cnum lexbuf; ULT }
  | ">"                            { upd_cnum lexbuf; UGT }
  | '='                            { upd_cnum lexbuf; EQ }
  | '~'                            { upd_cnum lexbuf; NEG }
  | '%'                            { upd_cnum lexbuf; MOD }
  | "/\\"                          { upd_cnum lexbuf; AND }
  | "\\/"                          { upd_cnum lexbuf; OR }
  | '!'                            { upd_cnum lexbuf; NOTB }
  | '&'                            { upd_cnum lexbuf; ANDB }
  (* Keywords *)
  | ("bv" identity*) as id         { upd_cnum lexbuf;
                                     try
                                       Hashtbl.find keywords id
                                     with Not_found ->
                                       VAR id
                                   }
  (* Numbers *)
  | ("0x" hex+) as hex             {
                                     let _ = upd_cnum lexbuf in
                                     let num =
                                       if hex.[0] = '-' then
                                         "-" ^ String.sub hex 3 (String.length hex - 3)
                                       else
                                         String.sub hex 2 (String.length hex - 2) in
                                     NUM (big_int_of_hex num)
                                   }
  | (number+) as num               { upd_cnum lexbuf; NUM (big_int_of_string num) }
  | identity as id                 { upd_cnum lexbuf; VAR id }
  | eof                            { EOF }
