proc main (sint16 di, sint16 si) =
{
  true
  &&
  and [
    (-3329)@16 <=s di, di <s 3329@16,
    (-3329)@16 <=s si, si <s 3329@16
  ]
}

(* #! -> SP = 0x7fffffffd968 *)
#! 0x7fffffffd968 = 0x7fffffffd968;

(* movswl %di,%eax                                 #! PC = 0x555555555160 *)
cast eax@sint32 di;

(* movswl %si,%ecx                                 #! PC = 0x555555555163 *)
cast ecx@sint32 si;

(* imul   %ecx,%eax                                #! PC = 0x555555555166 *)
mul eax ecx eax;

(* imul   $0xf301,%eax,%ecx                        #! PC = 0x555555555169 *)
smull dontcare ecx 0xf301@sint32 eax;

(* shl    $0x10,%ecx                               #! PC = 0x55555555516f *)
split dontcare ecx ecx 16;
shl ecx ecx 16;

(* sar    $0x10,%ecx                               #! PC = 0x555555555172 *)
(*split ecx dontcare ecx 16;*)

(*wip*)

(* imul   $0xd01,%ecx,%ecx                         #! PC = 0x555555555175 *)
(*smull dontcare ecx 0xd01@sint32 ecx;*)

(* sub    %ecx,%eax                                #! PC = 0x55555555517b *)
(*subb carry eax eax ecx;*)

(* sar    $0x10,%eax                               #! PC = 0x55555555517d *)
(*sar eax eax 0x10;*)

(* #! <- SP = 0x7fffffffd968 *)
#! 0x7fffffffd968 = 0x7fffffffd968;
(* #retq                                           #! PC = 0x555555555180 *)
#retq                                           #! 0x555555555180 = 0x555555555180;
{
  true
  &&
  true
}

