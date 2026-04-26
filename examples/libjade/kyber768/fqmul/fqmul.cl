(*
$ cv -v -isafety fqmul.cl
Parsing CryptoLine file:		[OK]		0.000265 seconds
Checking well-formedness:		[OK]		0.000052 seconds
Transforming to SSA form:		[OK]		0.000022 seconds
Normalizing specification:		[OK]		0.000031 seconds
Rewriting assignments:			[OK]		0.000015 seconds
Verifying program safety:
	 Cut 0
	     Round 1 (1 safety conditions, timeout = 300 seconds)
		 Safety condition #0	[OK]
	 Overall			[OK]		0.027311 seconds
Verifying range specification:		[OK]		18.345685 seconds
Rewriting value-preserved casting:	[OK]		0.000026 seconds
Verifying algebraic specification:	[OK]		0.001105 seconds
Verification result:			[OK]		18.374723 seconds
*)

proc main (sint16 di, sint16 si) =
{
  true
  &&
  and [
    0@16 <=s si,
    si <=s 3328@16
  ]
}

(* fqmul: *)
#fqmul:;
(* #! -> SP = 0x7fffffffd9a8 *)
#! 0x7fffffffd9a8 = 0x7fffffffd9a8;
(* movswl %di,%eax                                 #! PC = 0x555555555240 *)
cast eax@sint32 di;
(* movswl %si,%ecx                                 #! PC = 0x555555555243 *)
cast ecx@sint32 si;
(* imul   %ecx,%eax                                #! PC = 0x555555555246 *)
mull dontcare eax ecx eax;
(* imul   $0xf301,%eax,%ecx                        #! PC = 0x555555555249 *)
cast eax@sint32 eax;
mull dontcare ecx 0xf301@sint32 eax;
(* shl    $0x10,%ecx                               #! PC = 0x55555555524f *)
split dontcare ecx ecx 16;
shl ecx ecx 16;
(* sar    $0x10,%ecx                               #! PC = 0x555555555252 *)
cast ecx@sint32 ecx;
ssplit ecx dontcare ecx 16;
(* imul   $0xd01,%ecx,%ecx                         #! PC = 0x555555555255 *)
cast ecx@sint32 ecx;
mull dontcare ecx 0xd01@sint32 ecx;
(* sub    %ecx,%eax                                #! PC = 0x55555555525b *)
cast eax@uint32 eax;
subb carry eax eax ecx;
(* sar    $0x10,%eax                               #! PC = 0x55555555525d *)
cast eax@sint32 eax;
ssplit eax dontcare eax 16;
(* #! <- SP = 0x7fffffffd9a8 *)
#! 0x7fffffffd9a8 = 0x7fffffffd9a8;
(* #retq                                           #! PC = 0x555555555260 *)
#retq
{
  true
  &&
  and [ eqsmod ( eax * 65536@32 ) ((sext di 16) * (sext si 16)) (3329@32),
        (-3328)@32 <=s eax,
        eax <=s 3328@32 ]
}

