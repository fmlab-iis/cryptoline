proc main (sint16 di, sint16 si) =
{
  true
  &&
  and [
    0@16 <=s si,
    si <=s 3328@16
  ]
}

(* movswl %di,%eax // ad = (32s)a; *)
cast eax@sint32 di;

(* movswl %si,%ecx // bd = (32s)b; *)
cast ecx@sint32 si;

(* imul %ecx,%eax // c (eax) = ad (eax) * bd (ecx); *)
mull dontcare eax ecx eax;

(* imul $0xf301,%eax,%ecx // u (ecx) = c (eax) * QINV (62209); *)
cast eax@sint32 eax;
mull dontcare ecx 0xf301@sint32 eax;

assert true && eqsmod (eax * 62209@32) ecx (65536@32);

(* shl    $0x10,%ecx // u <<= 16; *)
split dontcare ecx ecx 16;                         
shl ecx ecx 16;

(* sar    $0x10,%ecx // u >>s= 16; *)
cast ecx@sint32 ecx;
ssplit ecx dontcare ecx 16;

assert true && and [ 
                     eqsmod (eax * 62209@32) ecx (65536@32),
                     (-32768)@32 <=s ecx,
                     ecx <s 32768@32 ];

(* imul   $0xd01,%ecx,%ecx // t (ecx) = u (ecx) * KYBER_Q; *)
cast ecx@sint32 ecx;
mull dontcare ecx 3329@sint32 ecx;

(* sub    %ecx,%eax // t (eax) = c - t; *)
cast eax@uint32 eax;
subb carry eax eax ecx;

(* sar    $0x10,%eax // t >>s= 16; *)
cast eax@sint32 eax;
ssplit eax dontcare eax 16;

{
  true
  &&
  and [ eqsmod ( eax * 65536@32 ) ((sext di 16) * (sext si 16)) (3329@32),
        (-3328)@32 <=s eax,
        eax <=s 3328@32 ]
}
