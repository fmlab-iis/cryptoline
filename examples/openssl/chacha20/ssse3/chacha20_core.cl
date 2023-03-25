proc main (uint32 A0, uint32 A1, uint32 A2, uint32 A3,
           uint32 A4, uint32 A5, uint32 A6, uint32 A7,
           uint32 A8, uint32 A9, uint32 Aa, uint32 Ab,
           uint32 Ac, uint32 Ad, uint32 Ae, uint32 Af) =
{
  true
  &&
  true
}

mov L0x5555555553c0 A0; mov L0x5555555553c4 A1;
mov L0x5555555553c8 A2; mov L0x5555555553cc A3;
mov L0x55555555c020 A4; mov L0x55555555c024 A5;
mov L0x55555555c028 A6; mov L0x55555555c02c A7;
mov L0x55555555c030 A8; mov L0x55555555c034 A9;
mov L0x55555555c038 Aa; mov L0x55555555c03c Ab;
mov L0x55555555c040 Ac; mov L0x55555555c044 Ad;
mov L0x55555555c048 Ae; mov L0x55555555c04c Af;

mov L0x555555555280 0x01000302@uint32; mov L0x555555555284 0x05040706@uint32;
mov L0x555555555288 0x09080b0a@uint32; mov L0x55555555528c 0x0d0c0f0e@uint32;
mov L0x555555555290 0x02010003@uint32; mov L0x555555555294 0x06050407@uint32;
mov L0x555555555298 0x0a09080b@uint32; mov L0x55555555529c 0x0e0d0c0f@uint32;

(* movdqa -0x46f(%rip),%xmm0        # 0x5555555553c0#! EA = L0x5555555553c0; Value = 0x3320646e61707865; PC = 0x555555555827 *)
mov xmm0_0 L0x5555555553c0; mov xmm0_1 L0x5555555553c4;
mov xmm0_2 L0x5555555553c8; mov xmm0_3 L0x5555555553cc;
(* movdqu (%rcx),%xmm1                             #! EA = L0x55555555c020; Value = 0x0000000100000000; PC = 0x55555555582f *)
mov xmm1_0 L0x55555555c020; mov xmm1_1 L0x55555555c024;
mov xmm1_2 L0x55555555c028; mov xmm1_3 L0x55555555c02c;
(* movdqu 0x10(%rcx),%xmm2                         #! EA = L0x55555555c030; Value = 0x0000000500000004; PC = 0x555555555833 *)
mov xmm2_0 L0x55555555c030; mov xmm2_1 L0x55555555c034;
mov xmm2_2 L0x55555555c038; mov xmm2_3 L0x55555555c03c;
(* movdqu (%r8),%xmm3                              #! EA = L0x55555555c040; Value = 0x0000001000000000; PC = 0x555555555838 *)
mov xmm3_0 L0x55555555c040; mov xmm3_1 L0x55555555c044;
mov xmm3_2 L0x55555555c048; mov xmm3_3 L0x55555555c04c;
(* movdqa -0x5c5(%rip),%xmm6        # 0x555555555280#! EA = L0x555555555280; Value = 0x0504070601000302; PC = 0x55555555583d *)
mov xmm6_0 L0x555555555280; mov xmm6_1 L0x555555555284;
mov xmm6_2 L0x555555555288; mov xmm6_3 L0x55555555528c;
(* movdqa -0x5bd(%rip),%xmm7        # 0x555555555290#! EA = L0x555555555290; Value = 0x0605040702010003; PC = 0x555555555845 *)
mov xmm7_0 L0x555555555290; mov xmm7_1 L0x555555555294;
mov xmm7_2 L0x555555555298; mov xmm7_3 L0x55555555529c;
(* movdqa %xmm0,(%rsp)                             #! EA = L0x7fffffffd740; PC = 0x55555555584d *)
mov L0x7fffffffd740 xmm0_0; mov L0x7fffffffd744 xmm0_1;
mov L0x7fffffffd748 xmm0_2; mov L0x7fffffffd74c xmm0_3;
(* movdqa %xmm1,0x10(%rsp)                         #! EA = L0x7fffffffd750; PC = 0x555555555852 *)
mov L0x7fffffffd750 xmm1_0; mov L0x7fffffffd754 xmm1_1;
mov L0x7fffffffd758 xmm1_2; mov L0x7fffffffd75c xmm1_3;
(* movdqa %xmm2,0x20(%rsp)                         #! EA = L0x7fffffffd760; PC = 0x555555555858 *)
mov L0x7fffffffd760 xmm2_0; mov L0x7fffffffd764 xmm2_1;
mov L0x7fffffffd768 xmm2_2; mov L0x7fffffffd76c xmm2_3;
(* movdqa %xmm3,0x30(%rsp)                         #! EA = L0x7fffffffd770; PC = 0x55555555585e *)
mov L0x7fffffffd770 xmm3_0; mov L0x7fffffffd774 xmm3_1;
mov L0x7fffffffd778 xmm3_2; mov L0x7fffffffd77c xmm3_3;
(* mov    $0xa,%r8                                 #! PC = 0x555555555864 *)
(* mov 0xa, %r8 *)
nop;
(* #jmp    0x5555555558c0 <ChaCha20_ssse3+192>     #! PC = 0x55555555586b *)
#jmp    0x5555555558c0 <ChaCha20_ssse3+192>     #! 0x55555555586b = 0x55555555586b;
(* paddd  %xmm1,%xmm0                              #! PC = 0x5555555558c0 *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x5555555558c4 *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm6,%xmm3                              #! PC = 0x5555555558c8 *)
assert true &&
       and [xmm6_0 = 0x01000302@32, xmm6_1 = 0x05040706@32,
            xmm6_2 = 0x09080b0a@32, xmm6_3 = 0x0d0c0f0e@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe shd shc; join shdc shf she; join xmm3_3 shfe shdc;
join shba sh9 sh8; join sh98 shb sha; join xmm3_2 shba sh98;
join sh76 sh5 sh4; join sh54 sh7 sh6; join xmm3_1 sh76 sh54;
join sh32 sh1 sh0; join sh10 sh3 sh2; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x5555555558cd *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x5555555558d1 *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x5555555558d5 *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x14,%xmm1                              #! PC = 0x5555555558d9 *)
split xmm1_0 dc xmm1_0 0x14; split xmm1_1 dc xmm1_1 0x14;
split xmm1_2 dc xmm1_2 0x14; split xmm1_3 dc xmm1_3 0x14;
(* pslld  $0xc,%xmm4                               #! PC = 0x5555555558de *)
split dc sll xmm4_0 (32-0xc); shl xmm4_0 sll 0xc@uint32;
split dc sll xmm4_1 (32-0xc); shl xmm4_1 sll 0xc@uint32;
split dc sll xmm4_2 (32-0xc); shl xmm4_2 sll 0xc@uint32;
split dc sll xmm4_3 (32-0xc); shl xmm4_3 sll 0xc@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x5555555558e3 *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* paddd  %xmm1,%xmm0                              #! PC = 0x5555555558e7 *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x5555555558eb *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm7,%xmm3                              #! PC = 0x5555555558ef *)
assert true &&
       and [xmm7_0 = 0x02010003@32, xmm7_1 = 0x06050407@32,
            xmm7_2 = 0x0a09080b@32, xmm7_3 = 0x0e0d0c0f@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe she shd; join shdc shc shf; join xmm3_3 shfe shdc;
join shba sha sh9; join sh98 sh8 shb; join xmm3_2 shba sh98;
join sh76 sh6 sh5; join sh54 sh4 sh7; join xmm3_1 sh76 sh54;
join sh32 sh2 sh1; join sh10 sh0 sh3; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x5555555558f4 *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x5555555558f8 *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x5555555558fc *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x19,%xmm1                              #! PC = 0x555555555900 *)
split xmm1_0 dc xmm1_0 0x19; split xmm1_1 dc xmm1_1 0x19;
split xmm1_2 dc xmm1_2 0x19; split xmm1_3 dc xmm1_3 0x19;
(* pslld  $0x7,%xmm4                               #! PC = 0x555555555905 *)
split dc sll xmm4_0 (32-0x7); shl xmm4_0 sll 0x7@uint32;
split dc sll xmm4_1 (32-0x7); shl xmm4_1 sll 0x7@uint32;
split dc sll xmm4_2 (32-0x7); shl xmm4_2 sll 0x7@uint32;
split dc sll xmm4_3 (32-0x7); shl xmm4_3 sll 0x7@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x55555555590a *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* pshufd $0x4e,%xmm2,%xmm2                        #! PC = 0x55555555590e *)
mov sh0 xmm2_2; mov sh1 xmm2_3; mov sh2 xmm2_0; mov sh3 xmm2_1;
mov xmm2_0 sh0; mov xmm2_1 sh1; mov xmm2_2 sh2; mov xmm2_3 sh3;
(* pshufd $0x39,%xmm1,%xmm1                        #! PC = 0x555555555913 *)
mov sh0 xmm1_1; mov sh1 xmm1_2; mov sh2 xmm1_3; mov sh3 xmm1_0;
mov xmm1_0 sh0; mov xmm1_1 sh1; mov xmm1_2 sh2; mov xmm1_3 sh3;
(* pshufd $0x93,%xmm3,%xmm3                        #! PC = 0x555555555918 *)
mov sh0 xmm3_3; mov sh1 xmm3_0; mov sh2 xmm3_1; mov sh3 xmm3_2;
mov xmm3_0 sh0; mov xmm3_1 sh1; mov xmm3_2 sh2; mov xmm3_3 sh3;
(* paddd  %xmm1,%xmm0                              #! PC = 0x55555555591e *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x555555555922 *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm6,%xmm3                              #! PC = 0x555555555926 *)
assert true &&
       and [xmm6_0 = 0x01000302@32, xmm6_1 = 0x05040706@32,
            xmm6_2 = 0x09080b0a@32, xmm6_3 = 0x0d0c0f0e@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe shd shc; join shdc shf she; join xmm3_3 shfe shdc;
join shba sh9 sh8; join sh98 shb sha; join xmm3_2 shba sh98;
join sh76 sh5 sh4; join sh54 sh7 sh6; join xmm3_1 sh76 sh54;
join sh32 sh1 sh0; join sh10 sh3 sh2; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x55555555592b *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x55555555592f *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x555555555933 *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x14,%xmm1                              #! PC = 0x555555555937 *)
split xmm1_0 dc xmm1_0 0x14; split xmm1_1 dc xmm1_1 0x14;
split xmm1_2 dc xmm1_2 0x14; split xmm1_3 dc xmm1_3 0x14;
(* pslld  $0xc,%xmm4                               #! PC = 0x55555555593c *)
split dc sll xmm4_0 (32-0xc); shl xmm4_0 sll 0xc@uint32;
split dc sll xmm4_1 (32-0xc); shl xmm4_1 sll 0xc@uint32;
split dc sll xmm4_2 (32-0xc); shl xmm4_2 sll 0xc@uint32;
split dc sll xmm4_3 (32-0xc); shl xmm4_3 sll 0xc@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x555555555941 *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* paddd  %xmm1,%xmm0                              #! PC = 0x555555555945 *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x555555555949 *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm7,%xmm3                              #! PC = 0x55555555594d *)
assert true &&
       and [xmm7_0 = 0x02010003@32, xmm7_1 = 0x06050407@32,
            xmm7_2 = 0x0a09080b@32, xmm7_3 = 0x0e0d0c0f@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe she shd; join shdc shc shf; join xmm3_3 shfe shdc;
join shba sha sh9; join sh98 sh8 shb; join xmm3_2 shba sh98;
join sh76 sh6 sh5; join sh54 sh4 sh7; join xmm3_1 sh76 sh54;
join sh32 sh2 sh1; join sh10 sh0 sh3; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x555555555952 *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x555555555956 *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x55555555595a *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x19,%xmm1                              #! PC = 0x55555555595e *)
split xmm1_0 dc xmm1_0 0x19; split xmm1_1 dc xmm1_1 0x19;
split xmm1_2 dc xmm1_2 0x19; split xmm1_3 dc xmm1_3 0x19;
(* pslld  $0x7,%xmm4                               #! PC = 0x555555555963 *)
split dc sll xmm4_0 (32-0x7); shl xmm4_0 sll 0x7@uint32;
split dc sll xmm4_1 (32-0x7); shl xmm4_1 sll 0x7@uint32;
split dc sll xmm4_2 (32-0x7); shl xmm4_2 sll 0x7@uint32;
split dc sll xmm4_3 (32-0x7); shl xmm4_3 sll 0x7@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x555555555968 *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* pshufd $0x4e,%xmm2,%xmm2                        #! PC = 0x55555555596c *)
mov sh0 xmm2_2; mov sh1 xmm2_3; mov sh2 xmm2_0; mov sh3 xmm2_1;
mov xmm2_0 sh0; mov xmm2_1 sh1; mov xmm2_2 sh2; mov xmm2_3 sh3;
(* pshufd $0x93,%xmm1,%xmm1                        #! PC = 0x555555555971 *)
mov sh0 xmm1_3; mov sh1 xmm1_0; mov sh2 xmm1_1; mov sh3 xmm1_2;
mov xmm1_0 sh0; mov xmm1_1 sh1; mov xmm1_2 sh2; mov xmm1_3 sh3;
(* pshufd $0x39,%xmm3,%xmm3                        #! PC = 0x555555555976 *)
mov sh0 xmm3_1; mov sh1 xmm3_2; mov sh2 xmm3_3; mov sh3 xmm3_0;
mov xmm3_0 sh0; mov xmm3_1 sh1; mov xmm3_2 sh2; mov xmm3_3 sh3;
(* dec    %r8                                      #! PC = 0x55555555597b *)
(* dec %r8 *)
nop;
(* #jne    0x5555555558c0 <ChaCha20_ssse3+192>     #! PC = 0x55555555597e *)
#jne    0x5555555558c0 <ChaCha20_ssse3+192>     #! 0x55555555597e = 0x55555555597e;
(* paddd  %xmm1,%xmm0                              #! PC = 0x5555555558c0 *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x5555555558c4 *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm6,%xmm3                              #! PC = 0x5555555558c8 *)
assert true &&
       and [xmm6_0 = 0x01000302@32, xmm6_1 = 0x05040706@32,
            xmm6_2 = 0x09080b0a@32, xmm6_3 = 0x0d0c0f0e@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe shd shc; join shdc shf she; join xmm3_3 shfe shdc;
join shba sh9 sh8; join sh98 shb sha; join xmm3_2 shba sh98;
join sh76 sh5 sh4; join sh54 sh7 sh6; join xmm3_1 sh76 sh54;
join sh32 sh1 sh0; join sh10 sh3 sh2; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x5555555558cd *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x5555555558d1 *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x5555555558d5 *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x14,%xmm1                              #! PC = 0x5555555558d9 *)
split xmm1_0 dc xmm1_0 0x14; split xmm1_1 dc xmm1_1 0x14;
split xmm1_2 dc xmm1_2 0x14; split xmm1_3 dc xmm1_3 0x14;
(* pslld  $0xc,%xmm4                               #! PC = 0x5555555558de *)
split dc sll xmm4_0 (32-0xc); shl xmm4_0 sll 0xc@uint32;
split dc sll xmm4_1 (32-0xc); shl xmm4_1 sll 0xc@uint32;
split dc sll xmm4_2 (32-0xc); shl xmm4_2 sll 0xc@uint32;
split dc sll xmm4_3 (32-0xc); shl xmm4_3 sll 0xc@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x5555555558e3 *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* paddd  %xmm1,%xmm0                              #! PC = 0x5555555558e7 *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x5555555558eb *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm7,%xmm3                              #! PC = 0x5555555558ef *)
assert true &&
       and [xmm7_0 = 0x02010003@32, xmm7_1 = 0x06050407@32,
            xmm7_2 = 0x0a09080b@32, xmm7_3 = 0x0e0d0c0f@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe she shd; join shdc shc shf; join xmm3_3 shfe shdc;
join shba sha sh9; join sh98 sh8 shb; join xmm3_2 shba sh98;
join sh76 sh6 sh5; join sh54 sh4 sh7; join xmm3_1 sh76 sh54;
join sh32 sh2 sh1; join sh10 sh0 sh3; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x5555555558f4 *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x5555555558f8 *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x5555555558fc *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x19,%xmm1                              #! PC = 0x555555555900 *)
split xmm1_0 dc xmm1_0 0x19; split xmm1_1 dc xmm1_1 0x19;
split xmm1_2 dc xmm1_2 0x19; split xmm1_3 dc xmm1_3 0x19;
(* pslld  $0x7,%xmm4                               #! PC = 0x555555555905 *)
split dc sll xmm4_0 (32-0x7); shl xmm4_0 sll 0x7@uint32;
split dc sll xmm4_1 (32-0x7); shl xmm4_1 sll 0x7@uint32;
split dc sll xmm4_2 (32-0x7); shl xmm4_2 sll 0x7@uint32;
split dc sll xmm4_3 (32-0x7); shl xmm4_3 sll 0x7@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x55555555590a *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* pshufd $0x4e,%xmm2,%xmm2                        #! PC = 0x55555555590e *)
mov sh0 xmm2_2; mov sh1 xmm2_3; mov sh2 xmm2_0; mov sh3 xmm2_1;
mov xmm2_0 sh0; mov xmm2_1 sh1; mov xmm2_2 sh2; mov xmm2_3 sh3;
(* pshufd $0x39,%xmm1,%xmm1                        #! PC = 0x555555555913 *)
mov sh0 xmm1_1; mov sh1 xmm1_2; mov sh2 xmm1_3; mov sh3 xmm1_0;
mov xmm1_0 sh0; mov xmm1_1 sh1; mov xmm1_2 sh2; mov xmm1_3 sh3;
(* pshufd $0x93,%xmm3,%xmm3                        #! PC = 0x555555555918 *)
mov sh0 xmm3_3; mov sh1 xmm3_0; mov sh2 xmm3_1; mov sh3 xmm3_2;
mov xmm3_0 sh0; mov xmm3_1 sh1; mov xmm3_2 sh2; mov xmm3_3 sh3;
(* paddd  %xmm1,%xmm0                              #! PC = 0x55555555591e *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x555555555922 *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm6,%xmm3                              #! PC = 0x555555555926 *)
assert true &&
       and [xmm6_0 = 0x01000302@32, xmm6_1 = 0x05040706@32,
            xmm6_2 = 0x09080b0a@32, xmm6_3 = 0x0d0c0f0e@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe shd shc; join shdc shf she; join xmm3_3 shfe shdc;
join shba sh9 sh8; join sh98 shb sha; join xmm3_2 shba sh98;
join sh76 sh5 sh4; join sh54 sh7 sh6; join xmm3_1 sh76 sh54;
join sh32 sh1 sh0; join sh10 sh3 sh2; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x55555555592b *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x55555555592f *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x555555555933 *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x14,%xmm1                              #! PC = 0x555555555937 *)
split xmm1_0 dc xmm1_0 0x14; split xmm1_1 dc xmm1_1 0x14;
split xmm1_2 dc xmm1_2 0x14; split xmm1_3 dc xmm1_3 0x14;
(* pslld  $0xc,%xmm4                               #! PC = 0x55555555593c *)
split dc sll xmm4_0 (32-0xc); shl xmm4_0 sll 0xc@uint32;
split dc sll xmm4_1 (32-0xc); shl xmm4_1 sll 0xc@uint32;
split dc sll xmm4_2 (32-0xc); shl xmm4_2 sll 0xc@uint32;
split dc sll xmm4_3 (32-0xc); shl xmm4_3 sll 0xc@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x555555555941 *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* paddd  %xmm1,%xmm0                              #! PC = 0x555555555945 *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x555555555949 *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm7,%xmm3                              #! PC = 0x55555555594d *)
assert true &&
       and [xmm7_0 = 0x02010003@32, xmm7_1 = 0x06050407@32,
            xmm7_2 = 0x0a09080b@32, xmm7_3 = 0x0e0d0c0f@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe she shd; join shdc shc shf; join xmm3_3 shfe shdc;
join shba sha sh9; join sh98 sh8 shb; join xmm3_2 shba sh98;
join sh76 sh6 sh5; join sh54 sh4 sh7; join xmm3_1 sh76 sh54;
join sh32 sh2 sh1; join sh10 sh0 sh3; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x555555555952 *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x555555555956 *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x55555555595a *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x19,%xmm1                              #! PC = 0x55555555595e *)
split xmm1_0 dc xmm1_0 0x19; split xmm1_1 dc xmm1_1 0x19;
split xmm1_2 dc xmm1_2 0x19; split xmm1_3 dc xmm1_3 0x19;
(* pslld  $0x7,%xmm4                               #! PC = 0x555555555963 *)
split dc sll xmm4_0 (32-0x7); shl xmm4_0 sll 0x7@uint32;
split dc sll xmm4_1 (32-0x7); shl xmm4_1 sll 0x7@uint32;
split dc sll xmm4_2 (32-0x7); shl xmm4_2 sll 0x7@uint32;
split dc sll xmm4_3 (32-0x7); shl xmm4_3 sll 0x7@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x555555555968 *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* pshufd $0x4e,%xmm2,%xmm2                        #! PC = 0x55555555596c *)
mov sh0 xmm2_2; mov sh1 xmm2_3; mov sh2 xmm2_0; mov sh3 xmm2_1;
mov xmm2_0 sh0; mov xmm2_1 sh1; mov xmm2_2 sh2; mov xmm2_3 sh3;
(* pshufd $0x93,%xmm1,%xmm1                        #! PC = 0x555555555971 *)
mov sh0 xmm1_3; mov sh1 xmm1_0; mov sh2 xmm1_1; mov sh3 xmm1_2;
mov xmm1_0 sh0; mov xmm1_1 sh1; mov xmm1_2 sh2; mov xmm1_3 sh3;
(* pshufd $0x39,%xmm3,%xmm3                        #! PC = 0x555555555976 *)
mov sh0 xmm3_1; mov sh1 xmm3_2; mov sh2 xmm3_3; mov sh3 xmm3_0;
mov xmm3_0 sh0; mov xmm3_1 sh1; mov xmm3_2 sh2; mov xmm3_3 sh3;
(* dec    %r8                                      #! PC = 0x55555555597b *)
(* dec %r8 *)
nop;
(* #jne    0x5555555558c0 <ChaCha20_ssse3+192>     #! PC = 0x55555555597e *)
#jne    0x5555555558c0 <ChaCha20_ssse3+192>     #! 0x55555555597e = 0x55555555597e;
(* paddd  %xmm1,%xmm0                              #! PC = 0x5555555558c0 *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x5555555558c4 *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm6,%xmm3                              #! PC = 0x5555555558c8 *)
assert true &&
       and [xmm6_0 = 0x01000302@32, xmm6_1 = 0x05040706@32,
            xmm6_2 = 0x09080b0a@32, xmm6_3 = 0x0d0c0f0e@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe shd shc; join shdc shf she; join xmm3_3 shfe shdc;
join shba sh9 sh8; join sh98 shb sha; join xmm3_2 shba sh98;
join sh76 sh5 sh4; join sh54 sh7 sh6; join xmm3_1 sh76 sh54;
join sh32 sh1 sh0; join sh10 sh3 sh2; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x5555555558cd *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x5555555558d1 *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x5555555558d5 *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x14,%xmm1                              #! PC = 0x5555555558d9 *)
split xmm1_0 dc xmm1_0 0x14; split xmm1_1 dc xmm1_1 0x14;
split xmm1_2 dc xmm1_2 0x14; split xmm1_3 dc xmm1_3 0x14;
(* pslld  $0xc,%xmm4                               #! PC = 0x5555555558de *)
split dc sll xmm4_0 (32-0xc); shl xmm4_0 sll 0xc@uint32;
split dc sll xmm4_1 (32-0xc); shl xmm4_1 sll 0xc@uint32;
split dc sll xmm4_2 (32-0xc); shl xmm4_2 sll 0xc@uint32;
split dc sll xmm4_3 (32-0xc); shl xmm4_3 sll 0xc@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x5555555558e3 *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* paddd  %xmm1,%xmm0                              #! PC = 0x5555555558e7 *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x5555555558eb *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm7,%xmm3                              #! PC = 0x5555555558ef *)
assert true &&
       and [xmm7_0 = 0x02010003@32, xmm7_1 = 0x06050407@32,
            xmm7_2 = 0x0a09080b@32, xmm7_3 = 0x0e0d0c0f@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe she shd; join shdc shc shf; join xmm3_3 shfe shdc;
join shba sha sh9; join sh98 sh8 shb; join xmm3_2 shba sh98;
join sh76 sh6 sh5; join sh54 sh4 sh7; join xmm3_1 sh76 sh54;
join sh32 sh2 sh1; join sh10 sh0 sh3; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x5555555558f4 *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x5555555558f8 *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x5555555558fc *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x19,%xmm1                              #! PC = 0x555555555900 *)
split xmm1_0 dc xmm1_0 0x19; split xmm1_1 dc xmm1_1 0x19;
split xmm1_2 dc xmm1_2 0x19; split xmm1_3 dc xmm1_3 0x19;
(* pslld  $0x7,%xmm4                               #! PC = 0x555555555905 *)
split dc sll xmm4_0 (32-0x7); shl xmm4_0 sll 0x7@uint32;
split dc sll xmm4_1 (32-0x7); shl xmm4_1 sll 0x7@uint32;
split dc sll xmm4_2 (32-0x7); shl xmm4_2 sll 0x7@uint32;
split dc sll xmm4_3 (32-0x7); shl xmm4_3 sll 0x7@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x55555555590a *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* pshufd $0x4e,%xmm2,%xmm2                        #! PC = 0x55555555590e *)
mov sh0 xmm2_2; mov sh1 xmm2_3; mov sh2 xmm2_0; mov sh3 xmm2_1;
mov xmm2_0 sh0; mov xmm2_1 sh1; mov xmm2_2 sh2; mov xmm2_3 sh3;
(* pshufd $0x39,%xmm1,%xmm1                        #! PC = 0x555555555913 *)
mov sh0 xmm1_1; mov sh1 xmm1_2; mov sh2 xmm1_3; mov sh3 xmm1_0;
mov xmm1_0 sh0; mov xmm1_1 sh1; mov xmm1_2 sh2; mov xmm1_3 sh3;
(* pshufd $0x93,%xmm3,%xmm3                        #! PC = 0x555555555918 *)
mov sh0 xmm3_3; mov sh1 xmm3_0; mov sh2 xmm3_1; mov sh3 xmm3_2;
mov xmm3_0 sh0; mov xmm3_1 sh1; mov xmm3_2 sh2; mov xmm3_3 sh3;
(* paddd  %xmm1,%xmm0                              #! PC = 0x55555555591e *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x555555555922 *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm6,%xmm3                              #! PC = 0x555555555926 *)
assert true &&
       and [xmm6_0 = 0x01000302@32, xmm6_1 = 0x05040706@32,
            xmm6_2 = 0x09080b0a@32, xmm6_3 = 0x0d0c0f0e@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe shd shc; join shdc shf she; join xmm3_3 shfe shdc;
join shba sh9 sh8; join sh98 shb sha; join xmm3_2 shba sh98;
join sh76 sh5 sh4; join sh54 sh7 sh6; join xmm3_1 sh76 sh54;
join sh32 sh1 sh0; join sh10 sh3 sh2; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x55555555592b *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x55555555592f *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x555555555933 *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x14,%xmm1                              #! PC = 0x555555555937 *)
split xmm1_0 dc xmm1_0 0x14; split xmm1_1 dc xmm1_1 0x14;
split xmm1_2 dc xmm1_2 0x14; split xmm1_3 dc xmm1_3 0x14;
(* pslld  $0xc,%xmm4                               #! PC = 0x55555555593c *)
split dc sll xmm4_0 (32-0xc); shl xmm4_0 sll 0xc@uint32;
split dc sll xmm4_1 (32-0xc); shl xmm4_1 sll 0xc@uint32;
split dc sll xmm4_2 (32-0xc); shl xmm4_2 sll 0xc@uint32;
split dc sll xmm4_3 (32-0xc); shl xmm4_3 sll 0xc@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x555555555941 *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* paddd  %xmm1,%xmm0                              #! PC = 0x555555555945 *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x555555555949 *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm7,%xmm3                              #! PC = 0x55555555594d *)
assert true &&
       and [xmm7_0 = 0x02010003@32, xmm7_1 = 0x06050407@32,
            xmm7_2 = 0x0a09080b@32, xmm7_3 = 0x0e0d0c0f@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe she shd; join shdc shc shf; join xmm3_3 shfe shdc;
join shba sha sh9; join sh98 sh8 shb; join xmm3_2 shba sh98;
join sh76 sh6 sh5; join sh54 sh4 sh7; join xmm3_1 sh76 sh54;
join sh32 sh2 sh1; join sh10 sh0 sh3; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x555555555952 *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x555555555956 *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x55555555595a *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x19,%xmm1                              #! PC = 0x55555555595e *)
split xmm1_0 dc xmm1_0 0x19; split xmm1_1 dc xmm1_1 0x19;
split xmm1_2 dc xmm1_2 0x19; split xmm1_3 dc xmm1_3 0x19;
(* pslld  $0x7,%xmm4                               #! PC = 0x555555555963 *)
split dc sll xmm4_0 (32-0x7); shl xmm4_0 sll 0x7@uint32;
split dc sll xmm4_1 (32-0x7); shl xmm4_1 sll 0x7@uint32;
split dc sll xmm4_2 (32-0x7); shl xmm4_2 sll 0x7@uint32;
split dc sll xmm4_3 (32-0x7); shl xmm4_3 sll 0x7@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x555555555968 *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* pshufd $0x4e,%xmm2,%xmm2                        #! PC = 0x55555555596c *)
mov sh0 xmm2_2; mov sh1 xmm2_3; mov sh2 xmm2_0; mov sh3 xmm2_1;
mov xmm2_0 sh0; mov xmm2_1 sh1; mov xmm2_2 sh2; mov xmm2_3 sh3;
(* pshufd $0x93,%xmm1,%xmm1                        #! PC = 0x555555555971 *)
mov sh0 xmm1_3; mov sh1 xmm1_0; mov sh2 xmm1_1; mov sh3 xmm1_2;
mov xmm1_0 sh0; mov xmm1_1 sh1; mov xmm1_2 sh2; mov xmm1_3 sh3;
(* pshufd $0x39,%xmm3,%xmm3                        #! PC = 0x555555555976 *)
mov sh0 xmm3_1; mov sh1 xmm3_2; mov sh2 xmm3_3; mov sh3 xmm3_0;
mov xmm3_0 sh0; mov xmm3_1 sh1; mov xmm3_2 sh2; mov xmm3_3 sh3;
(* dec    %r8                                      #! PC = 0x55555555597b *)
(* dec %r8 *)
nop;
(* #jne    0x5555555558c0 <ChaCha20_ssse3+192>     #! PC = 0x55555555597e *)
#jne    0x5555555558c0 <ChaCha20_ssse3+192>     #! 0x55555555597e = 0x55555555597e;
(* paddd  %xmm1,%xmm0                              #! PC = 0x5555555558c0 *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x5555555558c4 *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm6,%xmm3                              #! PC = 0x5555555558c8 *)
assert true &&
       and [xmm6_0 = 0x01000302@32, xmm6_1 = 0x05040706@32,
            xmm6_2 = 0x09080b0a@32, xmm6_3 = 0x0d0c0f0e@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe shd shc; join shdc shf she; join xmm3_3 shfe shdc;
join shba sh9 sh8; join sh98 shb sha; join xmm3_2 shba sh98;
join sh76 sh5 sh4; join sh54 sh7 sh6; join xmm3_1 sh76 sh54;
join sh32 sh1 sh0; join sh10 sh3 sh2; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x5555555558cd *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x5555555558d1 *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x5555555558d5 *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x14,%xmm1                              #! PC = 0x5555555558d9 *)
split xmm1_0 dc xmm1_0 0x14; split xmm1_1 dc xmm1_1 0x14;
split xmm1_2 dc xmm1_2 0x14; split xmm1_3 dc xmm1_3 0x14;
(* pslld  $0xc,%xmm4                               #! PC = 0x5555555558de *)
split dc sll xmm4_0 (32-0xc); shl xmm4_0 sll 0xc@uint32;
split dc sll xmm4_1 (32-0xc); shl xmm4_1 sll 0xc@uint32;
split dc sll xmm4_2 (32-0xc); shl xmm4_2 sll 0xc@uint32;
split dc sll xmm4_3 (32-0xc); shl xmm4_3 sll 0xc@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x5555555558e3 *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* paddd  %xmm1,%xmm0                              #! PC = 0x5555555558e7 *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x5555555558eb *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm7,%xmm3                              #! PC = 0x5555555558ef *)
assert true &&
       and [xmm7_0 = 0x02010003@32, xmm7_1 = 0x06050407@32,
            xmm7_2 = 0x0a09080b@32, xmm7_3 = 0x0e0d0c0f@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe she shd; join shdc shc shf; join xmm3_3 shfe shdc;
join shba sha sh9; join sh98 sh8 shb; join xmm3_2 shba sh98;
join sh76 sh6 sh5; join sh54 sh4 sh7; join xmm3_1 sh76 sh54;
join sh32 sh2 sh1; join sh10 sh0 sh3; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x5555555558f4 *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x5555555558f8 *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x5555555558fc *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x19,%xmm1                              #! PC = 0x555555555900 *)
split xmm1_0 dc xmm1_0 0x19; split xmm1_1 dc xmm1_1 0x19;
split xmm1_2 dc xmm1_2 0x19; split xmm1_3 dc xmm1_3 0x19;
(* pslld  $0x7,%xmm4                               #! PC = 0x555555555905 *)
split dc sll xmm4_0 (32-0x7); shl xmm4_0 sll 0x7@uint32;
split dc sll xmm4_1 (32-0x7); shl xmm4_1 sll 0x7@uint32;
split dc sll xmm4_2 (32-0x7); shl xmm4_2 sll 0x7@uint32;
split dc sll xmm4_3 (32-0x7); shl xmm4_3 sll 0x7@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x55555555590a *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* pshufd $0x4e,%xmm2,%xmm2                        #! PC = 0x55555555590e *)
mov sh0 xmm2_2; mov sh1 xmm2_3; mov sh2 xmm2_0; mov sh3 xmm2_1;
mov xmm2_0 sh0; mov xmm2_1 sh1; mov xmm2_2 sh2; mov xmm2_3 sh3;
(* pshufd $0x39,%xmm1,%xmm1                        #! PC = 0x555555555913 *)
mov sh0 xmm1_1; mov sh1 xmm1_2; mov sh2 xmm1_3; mov sh3 xmm1_0;
mov xmm1_0 sh0; mov xmm1_1 sh1; mov xmm1_2 sh2; mov xmm1_3 sh3;
(* pshufd $0x93,%xmm3,%xmm3                        #! PC = 0x555555555918 *)
mov sh0 xmm3_3; mov sh1 xmm3_0; mov sh2 xmm3_1; mov sh3 xmm3_2;
mov xmm3_0 sh0; mov xmm3_1 sh1; mov xmm3_2 sh2; mov xmm3_3 sh3;
(* paddd  %xmm1,%xmm0                              #! PC = 0x55555555591e *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x555555555922 *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm6,%xmm3                              #! PC = 0x555555555926 *)
assert true &&
       and [xmm6_0 = 0x01000302@32, xmm6_1 = 0x05040706@32,
            xmm6_2 = 0x09080b0a@32, xmm6_3 = 0x0d0c0f0e@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe shd shc; join shdc shf she; join xmm3_3 shfe shdc;
join shba sh9 sh8; join sh98 shb sha; join xmm3_2 shba sh98;
join sh76 sh5 sh4; join sh54 sh7 sh6; join xmm3_1 sh76 sh54;
join sh32 sh1 sh0; join sh10 sh3 sh2; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x55555555592b *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x55555555592f *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x555555555933 *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x14,%xmm1                              #! PC = 0x555555555937 *)
split xmm1_0 dc xmm1_0 0x14; split xmm1_1 dc xmm1_1 0x14;
split xmm1_2 dc xmm1_2 0x14; split xmm1_3 dc xmm1_3 0x14;
(* pslld  $0xc,%xmm4                               #! PC = 0x55555555593c *)
split dc sll xmm4_0 (32-0xc); shl xmm4_0 sll 0xc@uint32;
split dc sll xmm4_1 (32-0xc); shl xmm4_1 sll 0xc@uint32;
split dc sll xmm4_2 (32-0xc); shl xmm4_2 sll 0xc@uint32;
split dc sll xmm4_3 (32-0xc); shl xmm4_3 sll 0xc@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x555555555941 *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* paddd  %xmm1,%xmm0                              #! PC = 0x555555555945 *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x555555555949 *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm7,%xmm3                              #! PC = 0x55555555594d *)
assert true &&
       and [xmm7_0 = 0x02010003@32, xmm7_1 = 0x06050407@32,
            xmm7_2 = 0x0a09080b@32, xmm7_3 = 0x0e0d0c0f@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe she shd; join shdc shc shf; join xmm3_3 shfe shdc;
join shba sha sh9; join sh98 sh8 shb; join xmm3_2 shba sh98;
join sh76 sh6 sh5; join sh54 sh4 sh7; join xmm3_1 sh76 sh54;
join sh32 sh2 sh1; join sh10 sh0 sh3; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x555555555952 *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x555555555956 *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x55555555595a *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x19,%xmm1                              #! PC = 0x55555555595e *)
split xmm1_0 dc xmm1_0 0x19; split xmm1_1 dc xmm1_1 0x19;
split xmm1_2 dc xmm1_2 0x19; split xmm1_3 dc xmm1_3 0x19;
(* pslld  $0x7,%xmm4                               #! PC = 0x555555555963 *)
split dc sll xmm4_0 (32-0x7); shl xmm4_0 sll 0x7@uint32;
split dc sll xmm4_1 (32-0x7); shl xmm4_1 sll 0x7@uint32;
split dc sll xmm4_2 (32-0x7); shl xmm4_2 sll 0x7@uint32;
split dc sll xmm4_3 (32-0x7); shl xmm4_3 sll 0x7@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x555555555968 *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* pshufd $0x4e,%xmm2,%xmm2                        #! PC = 0x55555555596c *)
mov sh0 xmm2_2; mov sh1 xmm2_3; mov sh2 xmm2_0; mov sh3 xmm2_1;
mov xmm2_0 sh0; mov xmm2_1 sh1; mov xmm2_2 sh2; mov xmm2_3 sh3;
(* pshufd $0x93,%xmm1,%xmm1                        #! PC = 0x555555555971 *)
mov sh0 xmm1_3; mov sh1 xmm1_0; mov sh2 xmm1_1; mov sh3 xmm1_2;
mov xmm1_0 sh0; mov xmm1_1 sh1; mov xmm1_2 sh2; mov xmm1_3 sh3;
(* pshufd $0x39,%xmm3,%xmm3                        #! PC = 0x555555555976 *)
mov sh0 xmm3_1; mov sh1 xmm3_2; mov sh2 xmm3_3; mov sh3 xmm3_0;
mov xmm3_0 sh0; mov xmm3_1 sh1; mov xmm3_2 sh2; mov xmm3_3 sh3;
(* dec    %r8                                      #! PC = 0x55555555597b *)
(* dec %r8 *)
nop;
(* #jne    0x5555555558c0 <ChaCha20_ssse3+192>     #! PC = 0x55555555597e *)
#jne    0x5555555558c0 <ChaCha20_ssse3+192>     #! 0x55555555597e = 0x55555555597e;
(* paddd  %xmm1,%xmm0                              #! PC = 0x5555555558c0 *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x5555555558c4 *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm6,%xmm3                              #! PC = 0x5555555558c8 *)
assert true &&
       and [xmm6_0 = 0x01000302@32, xmm6_1 = 0x05040706@32,
            xmm6_2 = 0x09080b0a@32, xmm6_3 = 0x0d0c0f0e@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe shd shc; join shdc shf she; join xmm3_3 shfe shdc;
join shba sh9 sh8; join sh98 shb sha; join xmm3_2 shba sh98;
join sh76 sh5 sh4; join sh54 sh7 sh6; join xmm3_1 sh76 sh54;
join sh32 sh1 sh0; join sh10 sh3 sh2; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x5555555558cd *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x5555555558d1 *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x5555555558d5 *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x14,%xmm1                              #! PC = 0x5555555558d9 *)
split xmm1_0 dc xmm1_0 0x14; split xmm1_1 dc xmm1_1 0x14;
split xmm1_2 dc xmm1_2 0x14; split xmm1_3 dc xmm1_3 0x14;
(* pslld  $0xc,%xmm4                               #! PC = 0x5555555558de *)
split dc sll xmm4_0 (32-0xc); shl xmm4_0 sll 0xc@uint32;
split dc sll xmm4_1 (32-0xc); shl xmm4_1 sll 0xc@uint32;
split dc sll xmm4_2 (32-0xc); shl xmm4_2 sll 0xc@uint32;
split dc sll xmm4_3 (32-0xc); shl xmm4_3 sll 0xc@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x5555555558e3 *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* paddd  %xmm1,%xmm0                              #! PC = 0x5555555558e7 *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x5555555558eb *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm7,%xmm3                              #! PC = 0x5555555558ef *)
assert true &&
       and [xmm7_0 = 0x02010003@32, xmm7_1 = 0x06050407@32,
            xmm7_2 = 0x0a09080b@32, xmm7_3 = 0x0e0d0c0f@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe she shd; join shdc shc shf; join xmm3_3 shfe shdc;
join shba sha sh9; join sh98 sh8 shb; join xmm3_2 shba sh98;
join sh76 sh6 sh5; join sh54 sh4 sh7; join xmm3_1 sh76 sh54;
join sh32 sh2 sh1; join sh10 sh0 sh3; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x5555555558f4 *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x5555555558f8 *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x5555555558fc *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x19,%xmm1                              #! PC = 0x555555555900 *)
split xmm1_0 dc xmm1_0 0x19; split xmm1_1 dc xmm1_1 0x19;
split xmm1_2 dc xmm1_2 0x19; split xmm1_3 dc xmm1_3 0x19;
(* pslld  $0x7,%xmm4                               #! PC = 0x555555555905 *)
split dc sll xmm4_0 (32-0x7); shl xmm4_0 sll 0x7@uint32;
split dc sll xmm4_1 (32-0x7); shl xmm4_1 sll 0x7@uint32;
split dc sll xmm4_2 (32-0x7); shl xmm4_2 sll 0x7@uint32;
split dc sll xmm4_3 (32-0x7); shl xmm4_3 sll 0x7@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x55555555590a *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* pshufd $0x4e,%xmm2,%xmm2                        #! PC = 0x55555555590e *)
mov sh0 xmm2_2; mov sh1 xmm2_3; mov sh2 xmm2_0; mov sh3 xmm2_1;
mov xmm2_0 sh0; mov xmm2_1 sh1; mov xmm2_2 sh2; mov xmm2_3 sh3;
(* pshufd $0x39,%xmm1,%xmm1                        #! PC = 0x555555555913 *)
mov sh0 xmm1_1; mov sh1 xmm1_2; mov sh2 xmm1_3; mov sh3 xmm1_0;
mov xmm1_0 sh0; mov xmm1_1 sh1; mov xmm1_2 sh2; mov xmm1_3 sh3;
(* pshufd $0x93,%xmm3,%xmm3                        #! PC = 0x555555555918 *)
mov sh0 xmm3_3; mov sh1 xmm3_0; mov sh2 xmm3_1; mov sh3 xmm3_2;
mov xmm3_0 sh0; mov xmm3_1 sh1; mov xmm3_2 sh2; mov xmm3_3 sh3;
(* paddd  %xmm1,%xmm0                              #! PC = 0x55555555591e *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x555555555922 *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm6,%xmm3                              #! PC = 0x555555555926 *)
assert true &&
       and [xmm6_0 = 0x01000302@32, xmm6_1 = 0x05040706@32,
            xmm6_2 = 0x09080b0a@32, xmm6_3 = 0x0d0c0f0e@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe shd shc; join shdc shf she; join xmm3_3 shfe shdc;
join shba sh9 sh8; join sh98 shb sha; join xmm3_2 shba sh98;
join sh76 sh5 sh4; join sh54 sh7 sh6; join xmm3_1 sh76 sh54;
join sh32 sh1 sh0; join sh10 sh3 sh2; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x55555555592b *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x55555555592f *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x555555555933 *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x14,%xmm1                              #! PC = 0x555555555937 *)
split xmm1_0 dc xmm1_0 0x14; split xmm1_1 dc xmm1_1 0x14;
split xmm1_2 dc xmm1_2 0x14; split xmm1_3 dc xmm1_3 0x14;
(* pslld  $0xc,%xmm4                               #! PC = 0x55555555593c *)
split dc sll xmm4_0 (32-0xc); shl xmm4_0 sll 0xc@uint32;
split dc sll xmm4_1 (32-0xc); shl xmm4_1 sll 0xc@uint32;
split dc sll xmm4_2 (32-0xc); shl xmm4_2 sll 0xc@uint32;
split dc sll xmm4_3 (32-0xc); shl xmm4_3 sll 0xc@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x555555555941 *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* paddd  %xmm1,%xmm0                              #! PC = 0x555555555945 *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x555555555949 *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm7,%xmm3                              #! PC = 0x55555555594d *)
assert true &&
       and [xmm7_0 = 0x02010003@32, xmm7_1 = 0x06050407@32,
            xmm7_2 = 0x0a09080b@32, xmm7_3 = 0x0e0d0c0f@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe she shd; join shdc shc shf; join xmm3_3 shfe shdc;
join shba sha sh9; join sh98 sh8 shb; join xmm3_2 shba sh98;
join sh76 sh6 sh5; join sh54 sh4 sh7; join xmm3_1 sh76 sh54;
join sh32 sh2 sh1; join sh10 sh0 sh3; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x555555555952 *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x555555555956 *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x55555555595a *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x19,%xmm1                              #! PC = 0x55555555595e *)
split xmm1_0 dc xmm1_0 0x19; split xmm1_1 dc xmm1_1 0x19;
split xmm1_2 dc xmm1_2 0x19; split xmm1_3 dc xmm1_3 0x19;
(* pslld  $0x7,%xmm4                               #! PC = 0x555555555963 *)
split dc sll xmm4_0 (32-0x7); shl xmm4_0 sll 0x7@uint32;
split dc sll xmm4_1 (32-0x7); shl xmm4_1 sll 0x7@uint32;
split dc sll xmm4_2 (32-0x7); shl xmm4_2 sll 0x7@uint32;
split dc sll xmm4_3 (32-0x7); shl xmm4_3 sll 0x7@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x555555555968 *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* pshufd $0x4e,%xmm2,%xmm2                        #! PC = 0x55555555596c *)
mov sh0 xmm2_2; mov sh1 xmm2_3; mov sh2 xmm2_0; mov sh3 xmm2_1;
mov xmm2_0 sh0; mov xmm2_1 sh1; mov xmm2_2 sh2; mov xmm2_3 sh3;
(* pshufd $0x93,%xmm1,%xmm1                        #! PC = 0x555555555971 *)
mov sh0 xmm1_3; mov sh1 xmm1_0; mov sh2 xmm1_1; mov sh3 xmm1_2;
mov xmm1_0 sh0; mov xmm1_1 sh1; mov xmm1_2 sh2; mov xmm1_3 sh3;
(* pshufd $0x39,%xmm3,%xmm3                        #! PC = 0x555555555976 *)
mov sh0 xmm3_1; mov sh1 xmm3_2; mov sh2 xmm3_3; mov sh3 xmm3_0;
mov xmm3_0 sh0; mov xmm3_1 sh1; mov xmm3_2 sh2; mov xmm3_3 sh3;
(* dec    %r8                                      #! PC = 0x55555555597b *)
(* dec %r8 *)
nop;
(* #jne    0x5555555558c0 <ChaCha20_ssse3+192>     #! PC = 0x55555555597e *)
#jne    0x5555555558c0 <ChaCha20_ssse3+192>     #! 0x55555555597e = 0x55555555597e;
(* paddd  %xmm1,%xmm0                              #! PC = 0x5555555558c0 *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x5555555558c4 *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm6,%xmm3                              #! PC = 0x5555555558c8 *)
assert true &&
       and [xmm6_0 = 0x01000302@32, xmm6_1 = 0x05040706@32,
            xmm6_2 = 0x09080b0a@32, xmm6_3 = 0x0d0c0f0e@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe shd shc; join shdc shf she; join xmm3_3 shfe shdc;
join shba sh9 sh8; join sh98 shb sha; join xmm3_2 shba sh98;
join sh76 sh5 sh4; join sh54 sh7 sh6; join xmm3_1 sh76 sh54;
join sh32 sh1 sh0; join sh10 sh3 sh2; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x5555555558cd *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x5555555558d1 *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x5555555558d5 *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x14,%xmm1                              #! PC = 0x5555555558d9 *)
split xmm1_0 dc xmm1_0 0x14; split xmm1_1 dc xmm1_1 0x14;
split xmm1_2 dc xmm1_2 0x14; split xmm1_3 dc xmm1_3 0x14;
(* pslld  $0xc,%xmm4                               #! PC = 0x5555555558de *)
split dc sll xmm4_0 (32-0xc); shl xmm4_0 sll 0xc@uint32;
split dc sll xmm4_1 (32-0xc); shl xmm4_1 sll 0xc@uint32;
split dc sll xmm4_2 (32-0xc); shl xmm4_2 sll 0xc@uint32;
split dc sll xmm4_3 (32-0xc); shl xmm4_3 sll 0xc@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x5555555558e3 *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* paddd  %xmm1,%xmm0                              #! PC = 0x5555555558e7 *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x5555555558eb *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm7,%xmm3                              #! PC = 0x5555555558ef *)
assert true &&
       and [xmm7_0 = 0x02010003@32, xmm7_1 = 0x06050407@32,
            xmm7_2 = 0x0a09080b@32, xmm7_3 = 0x0e0d0c0f@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe she shd; join shdc shc shf; join xmm3_3 shfe shdc;
join shba sha sh9; join sh98 sh8 shb; join xmm3_2 shba sh98;
join sh76 sh6 sh5; join sh54 sh4 sh7; join xmm3_1 sh76 sh54;
join sh32 sh2 sh1; join sh10 sh0 sh3; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x5555555558f4 *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x5555555558f8 *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x5555555558fc *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x19,%xmm1                              #! PC = 0x555555555900 *)
split xmm1_0 dc xmm1_0 0x19; split xmm1_1 dc xmm1_1 0x19;
split xmm1_2 dc xmm1_2 0x19; split xmm1_3 dc xmm1_3 0x19;
(* pslld  $0x7,%xmm4                               #! PC = 0x555555555905 *)
split dc sll xmm4_0 (32-0x7); shl xmm4_0 sll 0x7@uint32;
split dc sll xmm4_1 (32-0x7); shl xmm4_1 sll 0x7@uint32;
split dc sll xmm4_2 (32-0x7); shl xmm4_2 sll 0x7@uint32;
split dc sll xmm4_3 (32-0x7); shl xmm4_3 sll 0x7@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x55555555590a *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* pshufd $0x4e,%xmm2,%xmm2                        #! PC = 0x55555555590e *)
mov sh0 xmm2_2; mov sh1 xmm2_3; mov sh2 xmm2_0; mov sh3 xmm2_1;
mov xmm2_0 sh0; mov xmm2_1 sh1; mov xmm2_2 sh2; mov xmm2_3 sh3;
(* pshufd $0x39,%xmm1,%xmm1                        #! PC = 0x555555555913 *)
mov sh0 xmm1_1; mov sh1 xmm1_2; mov sh2 xmm1_3; mov sh3 xmm1_0;
mov xmm1_0 sh0; mov xmm1_1 sh1; mov xmm1_2 sh2; mov xmm1_3 sh3;
(* pshufd $0x93,%xmm3,%xmm3                        #! PC = 0x555555555918 *)
mov sh0 xmm3_3; mov sh1 xmm3_0; mov sh2 xmm3_1; mov sh3 xmm3_2;
mov xmm3_0 sh0; mov xmm3_1 sh1; mov xmm3_2 sh2; mov xmm3_3 sh3;
(* paddd  %xmm1,%xmm0                              #! PC = 0x55555555591e *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x555555555922 *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm6,%xmm3                              #! PC = 0x555555555926 *)
assert true &&
       and [xmm6_0 = 0x01000302@32, xmm6_1 = 0x05040706@32,
            xmm6_2 = 0x09080b0a@32, xmm6_3 = 0x0d0c0f0e@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe shd shc; join shdc shf she; join xmm3_3 shfe shdc;
join shba sh9 sh8; join sh98 shb sha; join xmm3_2 shba sh98;
join sh76 sh5 sh4; join sh54 sh7 sh6; join xmm3_1 sh76 sh54;
join sh32 sh1 sh0; join sh10 sh3 sh2; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x55555555592b *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x55555555592f *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x555555555933 *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x14,%xmm1                              #! PC = 0x555555555937 *)
split xmm1_0 dc xmm1_0 0x14; split xmm1_1 dc xmm1_1 0x14;
split xmm1_2 dc xmm1_2 0x14; split xmm1_3 dc xmm1_3 0x14;
(* pslld  $0xc,%xmm4                               #! PC = 0x55555555593c *)
split dc sll xmm4_0 (32-0xc); shl xmm4_0 sll 0xc@uint32;
split dc sll xmm4_1 (32-0xc); shl xmm4_1 sll 0xc@uint32;
split dc sll xmm4_2 (32-0xc); shl xmm4_2 sll 0xc@uint32;
split dc sll xmm4_3 (32-0xc); shl xmm4_3 sll 0xc@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x555555555941 *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* paddd  %xmm1,%xmm0                              #! PC = 0x555555555945 *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x555555555949 *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm7,%xmm3                              #! PC = 0x55555555594d *)
assert true &&
       and [xmm7_0 = 0x02010003@32, xmm7_1 = 0x06050407@32,
            xmm7_2 = 0x0a09080b@32, xmm7_3 = 0x0e0d0c0f@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe she shd; join shdc shc shf; join xmm3_3 shfe shdc;
join shba sha sh9; join sh98 sh8 shb; join xmm3_2 shba sh98;
join sh76 sh6 sh5; join sh54 sh4 sh7; join xmm3_1 sh76 sh54;
join sh32 sh2 sh1; join sh10 sh0 sh3; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x555555555952 *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x555555555956 *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x55555555595a *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x19,%xmm1                              #! PC = 0x55555555595e *)
split xmm1_0 dc xmm1_0 0x19; split xmm1_1 dc xmm1_1 0x19;
split xmm1_2 dc xmm1_2 0x19; split xmm1_3 dc xmm1_3 0x19;
(* pslld  $0x7,%xmm4                               #! PC = 0x555555555963 *)
split dc sll xmm4_0 (32-0x7); shl xmm4_0 sll 0x7@uint32;
split dc sll xmm4_1 (32-0x7); shl xmm4_1 sll 0x7@uint32;
split dc sll xmm4_2 (32-0x7); shl xmm4_2 sll 0x7@uint32;
split dc sll xmm4_3 (32-0x7); shl xmm4_3 sll 0x7@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x555555555968 *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* pshufd $0x4e,%xmm2,%xmm2                        #! PC = 0x55555555596c *)
mov sh0 xmm2_2; mov sh1 xmm2_3; mov sh2 xmm2_0; mov sh3 xmm2_1;
mov xmm2_0 sh0; mov xmm2_1 sh1; mov xmm2_2 sh2; mov xmm2_3 sh3;
(* pshufd $0x93,%xmm1,%xmm1                        #! PC = 0x555555555971 *)
mov sh0 xmm1_3; mov sh1 xmm1_0; mov sh2 xmm1_1; mov sh3 xmm1_2;
mov xmm1_0 sh0; mov xmm1_1 sh1; mov xmm1_2 sh2; mov xmm1_3 sh3;
(* pshufd $0x39,%xmm3,%xmm3                        #! PC = 0x555555555976 *)
mov sh0 xmm3_1; mov sh1 xmm3_2; mov sh2 xmm3_3; mov sh3 xmm3_0;
mov xmm3_0 sh0; mov xmm3_1 sh1; mov xmm3_2 sh2; mov xmm3_3 sh3;
(* dec    %r8                                      #! PC = 0x55555555597b *)
(* dec %r8 *)
nop;
(* #jne    0x5555555558c0 <ChaCha20_ssse3+192>     #! PC = 0x55555555597e *)
#jne    0x5555555558c0 <ChaCha20_ssse3+192>     #! 0x55555555597e = 0x55555555597e;
(* paddd  %xmm1,%xmm0                              #! PC = 0x5555555558c0 *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x5555555558c4 *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm6,%xmm3                              #! PC = 0x5555555558c8 *)
assert true &&
       and [xmm6_0 = 0x01000302@32, xmm6_1 = 0x05040706@32,
            xmm6_2 = 0x09080b0a@32, xmm6_3 = 0x0d0c0f0e@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe shd shc; join shdc shf she; join xmm3_3 shfe shdc;
join shba sh9 sh8; join sh98 shb sha; join xmm3_2 shba sh98;
join sh76 sh5 sh4; join sh54 sh7 sh6; join xmm3_1 sh76 sh54;
join sh32 sh1 sh0; join sh10 sh3 sh2; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x5555555558cd *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x5555555558d1 *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x5555555558d5 *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x14,%xmm1                              #! PC = 0x5555555558d9 *)
split xmm1_0 dc xmm1_0 0x14; split xmm1_1 dc xmm1_1 0x14;
split xmm1_2 dc xmm1_2 0x14; split xmm1_3 dc xmm1_3 0x14;
(* pslld  $0xc,%xmm4                               #! PC = 0x5555555558de *)
split dc sll xmm4_0 (32-0xc); shl xmm4_0 sll 0xc@uint32;
split dc sll xmm4_1 (32-0xc); shl xmm4_1 sll 0xc@uint32;
split dc sll xmm4_2 (32-0xc); shl xmm4_2 sll 0xc@uint32;
split dc sll xmm4_3 (32-0xc); shl xmm4_3 sll 0xc@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x5555555558e3 *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* paddd  %xmm1,%xmm0                              #! PC = 0x5555555558e7 *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x5555555558eb *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm7,%xmm3                              #! PC = 0x5555555558ef *)
assert true &&
       and [xmm7_0 = 0x02010003@32, xmm7_1 = 0x06050407@32,
            xmm7_2 = 0x0a09080b@32, xmm7_3 = 0x0e0d0c0f@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe she shd; join shdc shc shf; join xmm3_3 shfe shdc;
join shba sha sh9; join sh98 sh8 shb; join xmm3_2 shba sh98;
join sh76 sh6 sh5; join sh54 sh4 sh7; join xmm3_1 sh76 sh54;
join sh32 sh2 sh1; join sh10 sh0 sh3; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x5555555558f4 *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x5555555558f8 *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x5555555558fc *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x19,%xmm1                              #! PC = 0x555555555900 *)
split xmm1_0 dc xmm1_0 0x19; split xmm1_1 dc xmm1_1 0x19;
split xmm1_2 dc xmm1_2 0x19; split xmm1_3 dc xmm1_3 0x19;
(* pslld  $0x7,%xmm4                               #! PC = 0x555555555905 *)
split dc sll xmm4_0 (32-0x7); shl xmm4_0 sll 0x7@uint32;
split dc sll xmm4_1 (32-0x7); shl xmm4_1 sll 0x7@uint32;
split dc sll xmm4_2 (32-0x7); shl xmm4_2 sll 0x7@uint32;
split dc sll xmm4_3 (32-0x7); shl xmm4_3 sll 0x7@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x55555555590a *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* pshufd $0x4e,%xmm2,%xmm2                        #! PC = 0x55555555590e *)
mov sh0 xmm2_2; mov sh1 xmm2_3; mov sh2 xmm2_0; mov sh3 xmm2_1;
mov xmm2_0 sh0; mov xmm2_1 sh1; mov xmm2_2 sh2; mov xmm2_3 sh3;
(* pshufd $0x39,%xmm1,%xmm1                        #! PC = 0x555555555913 *)
mov sh0 xmm1_1; mov sh1 xmm1_2; mov sh2 xmm1_3; mov sh3 xmm1_0;
mov xmm1_0 sh0; mov xmm1_1 sh1; mov xmm1_2 sh2; mov xmm1_3 sh3;
(* pshufd $0x93,%xmm3,%xmm3                        #! PC = 0x555555555918 *)
mov sh0 xmm3_3; mov sh1 xmm3_0; mov sh2 xmm3_1; mov sh3 xmm3_2;
mov xmm3_0 sh0; mov xmm3_1 sh1; mov xmm3_2 sh2; mov xmm3_3 sh3;
(* paddd  %xmm1,%xmm0                              #! PC = 0x55555555591e *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x555555555922 *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm6,%xmm3                              #! PC = 0x555555555926 *)
assert true &&
       and [xmm6_0 = 0x01000302@32, xmm6_1 = 0x05040706@32,
            xmm6_2 = 0x09080b0a@32, xmm6_3 = 0x0d0c0f0e@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe shd shc; join shdc shf she; join xmm3_3 shfe shdc;
join shba sh9 sh8; join sh98 shb sha; join xmm3_2 shba sh98;
join sh76 sh5 sh4; join sh54 sh7 sh6; join xmm3_1 sh76 sh54;
join sh32 sh1 sh0; join sh10 sh3 sh2; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x55555555592b *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x55555555592f *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x555555555933 *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x14,%xmm1                              #! PC = 0x555555555937 *)
split xmm1_0 dc xmm1_0 0x14; split xmm1_1 dc xmm1_1 0x14;
split xmm1_2 dc xmm1_2 0x14; split xmm1_3 dc xmm1_3 0x14;
(* pslld  $0xc,%xmm4                               #! PC = 0x55555555593c *)
split dc sll xmm4_0 (32-0xc); shl xmm4_0 sll 0xc@uint32;
split dc sll xmm4_1 (32-0xc); shl xmm4_1 sll 0xc@uint32;
split dc sll xmm4_2 (32-0xc); shl xmm4_2 sll 0xc@uint32;
split dc sll xmm4_3 (32-0xc); shl xmm4_3 sll 0xc@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x555555555941 *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* paddd  %xmm1,%xmm0                              #! PC = 0x555555555945 *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x555555555949 *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm7,%xmm3                              #! PC = 0x55555555594d *)
assert true &&
       and [xmm7_0 = 0x02010003@32, xmm7_1 = 0x06050407@32,
            xmm7_2 = 0x0a09080b@32, xmm7_3 = 0x0e0d0c0f@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe she shd; join shdc shc shf; join xmm3_3 shfe shdc;
join shba sha sh9; join sh98 sh8 shb; join xmm3_2 shba sh98;
join sh76 sh6 sh5; join sh54 sh4 sh7; join xmm3_1 sh76 sh54;
join sh32 sh2 sh1; join sh10 sh0 sh3; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x555555555952 *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x555555555956 *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x55555555595a *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x19,%xmm1                              #! PC = 0x55555555595e *)
split xmm1_0 dc xmm1_0 0x19; split xmm1_1 dc xmm1_1 0x19;
split xmm1_2 dc xmm1_2 0x19; split xmm1_3 dc xmm1_3 0x19;
(* pslld  $0x7,%xmm4                               #! PC = 0x555555555963 *)
split dc sll xmm4_0 (32-0x7); shl xmm4_0 sll 0x7@uint32;
split dc sll xmm4_1 (32-0x7); shl xmm4_1 sll 0x7@uint32;
split dc sll xmm4_2 (32-0x7); shl xmm4_2 sll 0x7@uint32;
split dc sll xmm4_3 (32-0x7); shl xmm4_3 sll 0x7@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x555555555968 *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* pshufd $0x4e,%xmm2,%xmm2                        #! PC = 0x55555555596c *)
mov sh0 xmm2_2; mov sh1 xmm2_3; mov sh2 xmm2_0; mov sh3 xmm2_1;
mov xmm2_0 sh0; mov xmm2_1 sh1; mov xmm2_2 sh2; mov xmm2_3 sh3;
(* pshufd $0x93,%xmm1,%xmm1                        #! PC = 0x555555555971 *)
mov sh0 xmm1_3; mov sh1 xmm1_0; mov sh2 xmm1_1; mov sh3 xmm1_2;
mov xmm1_0 sh0; mov xmm1_1 sh1; mov xmm1_2 sh2; mov xmm1_3 sh3;
(* pshufd $0x39,%xmm3,%xmm3                        #! PC = 0x555555555976 *)
mov sh0 xmm3_1; mov sh1 xmm3_2; mov sh2 xmm3_3; mov sh3 xmm3_0;
mov xmm3_0 sh0; mov xmm3_1 sh1; mov xmm3_2 sh2; mov xmm3_3 sh3;
(* dec    %r8                                      #! PC = 0x55555555597b *)
(* dec %r8 *)
nop;
(* #jne    0x5555555558c0 <ChaCha20_ssse3+192>     #! PC = 0x55555555597e *)
#jne    0x5555555558c0 <ChaCha20_ssse3+192>     #! 0x55555555597e = 0x55555555597e;
(* paddd  %xmm1,%xmm0                              #! PC = 0x5555555558c0 *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x5555555558c4 *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm6,%xmm3                              #! PC = 0x5555555558c8 *)
assert true &&
       and [xmm6_0 = 0x01000302@32, xmm6_1 = 0x05040706@32,
            xmm6_2 = 0x09080b0a@32, xmm6_3 = 0x0d0c0f0e@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe shd shc; join shdc shf she; join xmm3_3 shfe shdc;
join shba sh9 sh8; join sh98 shb sha; join xmm3_2 shba sh98;
join sh76 sh5 sh4; join sh54 sh7 sh6; join xmm3_1 sh76 sh54;
join sh32 sh1 sh0; join sh10 sh3 sh2; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x5555555558cd *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x5555555558d1 *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x5555555558d5 *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x14,%xmm1                              #! PC = 0x5555555558d9 *)
split xmm1_0 dc xmm1_0 0x14; split xmm1_1 dc xmm1_1 0x14;
split xmm1_2 dc xmm1_2 0x14; split xmm1_3 dc xmm1_3 0x14;
(* pslld  $0xc,%xmm4                               #! PC = 0x5555555558de *)
split dc sll xmm4_0 (32-0xc); shl xmm4_0 sll 0xc@uint32;
split dc sll xmm4_1 (32-0xc); shl xmm4_1 sll 0xc@uint32;
split dc sll xmm4_2 (32-0xc); shl xmm4_2 sll 0xc@uint32;
split dc sll xmm4_3 (32-0xc); shl xmm4_3 sll 0xc@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x5555555558e3 *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* paddd  %xmm1,%xmm0                              #! PC = 0x5555555558e7 *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x5555555558eb *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm7,%xmm3                              #! PC = 0x5555555558ef *)
assert true &&
       and [xmm7_0 = 0x02010003@32, xmm7_1 = 0x06050407@32,
            xmm7_2 = 0x0a09080b@32, xmm7_3 = 0x0e0d0c0f@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe she shd; join shdc shc shf; join xmm3_3 shfe shdc;
join shba sha sh9; join sh98 sh8 shb; join xmm3_2 shba sh98;
join sh76 sh6 sh5; join sh54 sh4 sh7; join xmm3_1 sh76 sh54;
join sh32 sh2 sh1; join sh10 sh0 sh3; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x5555555558f4 *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x5555555558f8 *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x5555555558fc *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x19,%xmm1                              #! PC = 0x555555555900 *)
split xmm1_0 dc xmm1_0 0x19; split xmm1_1 dc xmm1_1 0x19;
split xmm1_2 dc xmm1_2 0x19; split xmm1_3 dc xmm1_3 0x19;
(* pslld  $0x7,%xmm4                               #! PC = 0x555555555905 *)
split dc sll xmm4_0 (32-0x7); shl xmm4_0 sll 0x7@uint32;
split dc sll xmm4_1 (32-0x7); shl xmm4_1 sll 0x7@uint32;
split dc sll xmm4_2 (32-0x7); shl xmm4_2 sll 0x7@uint32;
split dc sll xmm4_3 (32-0x7); shl xmm4_3 sll 0x7@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x55555555590a *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* pshufd $0x4e,%xmm2,%xmm2                        #! PC = 0x55555555590e *)
mov sh0 xmm2_2; mov sh1 xmm2_3; mov sh2 xmm2_0; mov sh3 xmm2_1;
mov xmm2_0 sh0; mov xmm2_1 sh1; mov xmm2_2 sh2; mov xmm2_3 sh3;
(* pshufd $0x39,%xmm1,%xmm1                        #! PC = 0x555555555913 *)
mov sh0 xmm1_1; mov sh1 xmm1_2; mov sh2 xmm1_3; mov sh3 xmm1_0;
mov xmm1_0 sh0; mov xmm1_1 sh1; mov xmm1_2 sh2; mov xmm1_3 sh3;
(* pshufd $0x93,%xmm3,%xmm3                        #! PC = 0x555555555918 *)
mov sh0 xmm3_3; mov sh1 xmm3_0; mov sh2 xmm3_1; mov sh3 xmm3_2;
mov xmm3_0 sh0; mov xmm3_1 sh1; mov xmm3_2 sh2; mov xmm3_3 sh3;
(* paddd  %xmm1,%xmm0                              #! PC = 0x55555555591e *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x555555555922 *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm6,%xmm3                              #! PC = 0x555555555926 *)
assert true &&
       and [xmm6_0 = 0x01000302@32, xmm6_1 = 0x05040706@32,
            xmm6_2 = 0x09080b0a@32, xmm6_3 = 0x0d0c0f0e@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe shd shc; join shdc shf she; join xmm3_3 shfe shdc;
join shba sh9 sh8; join sh98 shb sha; join xmm3_2 shba sh98;
join sh76 sh5 sh4; join sh54 sh7 sh6; join xmm3_1 sh76 sh54;
join sh32 sh1 sh0; join sh10 sh3 sh2; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x55555555592b *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x55555555592f *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x555555555933 *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x14,%xmm1                              #! PC = 0x555555555937 *)
split xmm1_0 dc xmm1_0 0x14; split xmm1_1 dc xmm1_1 0x14;
split xmm1_2 dc xmm1_2 0x14; split xmm1_3 dc xmm1_3 0x14;
(* pslld  $0xc,%xmm4                               #! PC = 0x55555555593c *)
split dc sll xmm4_0 (32-0xc); shl xmm4_0 sll 0xc@uint32;
split dc sll xmm4_1 (32-0xc); shl xmm4_1 sll 0xc@uint32;
split dc sll xmm4_2 (32-0xc); shl xmm4_2 sll 0xc@uint32;
split dc sll xmm4_3 (32-0xc); shl xmm4_3 sll 0xc@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x555555555941 *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* paddd  %xmm1,%xmm0                              #! PC = 0x555555555945 *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x555555555949 *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm7,%xmm3                              #! PC = 0x55555555594d *)
assert true &&
       and [xmm7_0 = 0x02010003@32, xmm7_1 = 0x06050407@32,
            xmm7_2 = 0x0a09080b@32, xmm7_3 = 0x0e0d0c0f@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe she shd; join shdc shc shf; join xmm3_3 shfe shdc;
join shba sha sh9; join sh98 sh8 shb; join xmm3_2 shba sh98;
join sh76 sh6 sh5; join sh54 sh4 sh7; join xmm3_1 sh76 sh54;
join sh32 sh2 sh1; join sh10 sh0 sh3; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x555555555952 *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x555555555956 *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x55555555595a *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x19,%xmm1                              #! PC = 0x55555555595e *)
split xmm1_0 dc xmm1_0 0x19; split xmm1_1 dc xmm1_1 0x19;
split xmm1_2 dc xmm1_2 0x19; split xmm1_3 dc xmm1_3 0x19;
(* pslld  $0x7,%xmm4                               #! PC = 0x555555555963 *)
split dc sll xmm4_0 (32-0x7); shl xmm4_0 sll 0x7@uint32;
split dc sll xmm4_1 (32-0x7); shl xmm4_1 sll 0x7@uint32;
split dc sll xmm4_2 (32-0x7); shl xmm4_2 sll 0x7@uint32;
split dc sll xmm4_3 (32-0x7); shl xmm4_3 sll 0x7@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x555555555968 *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* pshufd $0x4e,%xmm2,%xmm2                        #! PC = 0x55555555596c *)
mov sh0 xmm2_2; mov sh1 xmm2_3; mov sh2 xmm2_0; mov sh3 xmm2_1;
mov xmm2_0 sh0; mov xmm2_1 sh1; mov xmm2_2 sh2; mov xmm2_3 sh3;
(* pshufd $0x93,%xmm1,%xmm1                        #! PC = 0x555555555971 *)
mov sh0 xmm1_3; mov sh1 xmm1_0; mov sh2 xmm1_1; mov sh3 xmm1_2;
mov xmm1_0 sh0; mov xmm1_1 sh1; mov xmm1_2 sh2; mov xmm1_3 sh3;
(* pshufd $0x39,%xmm3,%xmm3                        #! PC = 0x555555555976 *)
mov sh0 xmm3_1; mov sh1 xmm3_2; mov sh2 xmm3_3; mov sh3 xmm3_0;
mov xmm3_0 sh0; mov xmm3_1 sh1; mov xmm3_2 sh2; mov xmm3_3 sh3;
(* dec    %r8                                      #! PC = 0x55555555597b *)
(* dec %r8 *)
nop;
(* #jne    0x5555555558c0 <ChaCha20_ssse3+192>     #! PC = 0x55555555597e *)
#jne    0x5555555558c0 <ChaCha20_ssse3+192>     #! 0x55555555597e = 0x55555555597e;
(* paddd  %xmm1,%xmm0                              #! PC = 0x5555555558c0 *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x5555555558c4 *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm6,%xmm3                              #! PC = 0x5555555558c8 *)
assert true &&
       and [xmm6_0 = 0x01000302@32, xmm6_1 = 0x05040706@32,
            xmm6_2 = 0x09080b0a@32, xmm6_3 = 0x0d0c0f0e@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe shd shc; join shdc shf she; join xmm3_3 shfe shdc;
join shba sh9 sh8; join sh98 shb sha; join xmm3_2 shba sh98;
join sh76 sh5 sh4; join sh54 sh7 sh6; join xmm3_1 sh76 sh54;
join sh32 sh1 sh0; join sh10 sh3 sh2; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x5555555558cd *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x5555555558d1 *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x5555555558d5 *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x14,%xmm1                              #! PC = 0x5555555558d9 *)
split xmm1_0 dc xmm1_0 0x14; split xmm1_1 dc xmm1_1 0x14;
split xmm1_2 dc xmm1_2 0x14; split xmm1_3 dc xmm1_3 0x14;
(* pslld  $0xc,%xmm4                               #! PC = 0x5555555558de *)
split dc sll xmm4_0 (32-0xc); shl xmm4_0 sll 0xc@uint32;
split dc sll xmm4_1 (32-0xc); shl xmm4_1 sll 0xc@uint32;
split dc sll xmm4_2 (32-0xc); shl xmm4_2 sll 0xc@uint32;
split dc sll xmm4_3 (32-0xc); shl xmm4_3 sll 0xc@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x5555555558e3 *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* paddd  %xmm1,%xmm0                              #! PC = 0x5555555558e7 *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x5555555558eb *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm7,%xmm3                              #! PC = 0x5555555558ef *)
assert true &&
       and [xmm7_0 = 0x02010003@32, xmm7_1 = 0x06050407@32,
            xmm7_2 = 0x0a09080b@32, xmm7_3 = 0x0e0d0c0f@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe she shd; join shdc shc shf; join xmm3_3 shfe shdc;
join shba sha sh9; join sh98 sh8 shb; join xmm3_2 shba sh98;
join sh76 sh6 sh5; join sh54 sh4 sh7; join xmm3_1 sh76 sh54;
join sh32 sh2 sh1; join sh10 sh0 sh3; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x5555555558f4 *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x5555555558f8 *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x5555555558fc *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x19,%xmm1                              #! PC = 0x555555555900 *)
split xmm1_0 dc xmm1_0 0x19; split xmm1_1 dc xmm1_1 0x19;
split xmm1_2 dc xmm1_2 0x19; split xmm1_3 dc xmm1_3 0x19;
(* pslld  $0x7,%xmm4                               #! PC = 0x555555555905 *)
split dc sll xmm4_0 (32-0x7); shl xmm4_0 sll 0x7@uint32;
split dc sll xmm4_1 (32-0x7); shl xmm4_1 sll 0x7@uint32;
split dc sll xmm4_2 (32-0x7); shl xmm4_2 sll 0x7@uint32;
split dc sll xmm4_3 (32-0x7); shl xmm4_3 sll 0x7@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x55555555590a *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* pshufd $0x4e,%xmm2,%xmm2                        #! PC = 0x55555555590e *)
mov sh0 xmm2_2; mov sh1 xmm2_3; mov sh2 xmm2_0; mov sh3 xmm2_1;
mov xmm2_0 sh0; mov xmm2_1 sh1; mov xmm2_2 sh2; mov xmm2_3 sh3;
(* pshufd $0x39,%xmm1,%xmm1                        #! PC = 0x555555555913 *)
mov sh0 xmm1_1; mov sh1 xmm1_2; mov sh2 xmm1_3; mov sh3 xmm1_0;
mov xmm1_0 sh0; mov xmm1_1 sh1; mov xmm1_2 sh2; mov xmm1_3 sh3;
(* pshufd $0x93,%xmm3,%xmm3                        #! PC = 0x555555555918 *)
mov sh0 xmm3_3; mov sh1 xmm3_0; mov sh2 xmm3_1; mov sh3 xmm3_2;
mov xmm3_0 sh0; mov xmm3_1 sh1; mov xmm3_2 sh2; mov xmm3_3 sh3;
(* paddd  %xmm1,%xmm0                              #! PC = 0x55555555591e *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x555555555922 *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm6,%xmm3                              #! PC = 0x555555555926 *)
assert true &&
       and [xmm6_0 = 0x01000302@32, xmm6_1 = 0x05040706@32,
            xmm6_2 = 0x09080b0a@32, xmm6_3 = 0x0d0c0f0e@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe shd shc; join shdc shf she; join xmm3_3 shfe shdc;
join shba sh9 sh8; join sh98 shb sha; join xmm3_2 shba sh98;
join sh76 sh5 sh4; join sh54 sh7 sh6; join xmm3_1 sh76 sh54;
join sh32 sh1 sh0; join sh10 sh3 sh2; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x55555555592b *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x55555555592f *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x555555555933 *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x14,%xmm1                              #! PC = 0x555555555937 *)
split xmm1_0 dc xmm1_0 0x14; split xmm1_1 dc xmm1_1 0x14;
split xmm1_2 dc xmm1_2 0x14; split xmm1_3 dc xmm1_3 0x14;
(* pslld  $0xc,%xmm4                               #! PC = 0x55555555593c *)
split dc sll xmm4_0 (32-0xc); shl xmm4_0 sll 0xc@uint32;
split dc sll xmm4_1 (32-0xc); shl xmm4_1 sll 0xc@uint32;
split dc sll xmm4_2 (32-0xc); shl xmm4_2 sll 0xc@uint32;
split dc sll xmm4_3 (32-0xc); shl xmm4_3 sll 0xc@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x555555555941 *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* paddd  %xmm1,%xmm0                              #! PC = 0x555555555945 *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x555555555949 *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm7,%xmm3                              #! PC = 0x55555555594d *)
assert true &&
       and [xmm7_0 = 0x02010003@32, xmm7_1 = 0x06050407@32,
            xmm7_2 = 0x0a09080b@32, xmm7_3 = 0x0e0d0c0f@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe she shd; join shdc shc shf; join xmm3_3 shfe shdc;
join shba sha sh9; join sh98 sh8 shb; join xmm3_2 shba sh98;
join sh76 sh6 sh5; join sh54 sh4 sh7; join xmm3_1 sh76 sh54;
join sh32 sh2 sh1; join sh10 sh0 sh3; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x555555555952 *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x555555555956 *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x55555555595a *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x19,%xmm1                              #! PC = 0x55555555595e *)
split xmm1_0 dc xmm1_0 0x19; split xmm1_1 dc xmm1_1 0x19;
split xmm1_2 dc xmm1_2 0x19; split xmm1_3 dc xmm1_3 0x19;
(* pslld  $0x7,%xmm4                               #! PC = 0x555555555963 *)
split dc sll xmm4_0 (32-0x7); shl xmm4_0 sll 0x7@uint32;
split dc sll xmm4_1 (32-0x7); shl xmm4_1 sll 0x7@uint32;
split dc sll xmm4_2 (32-0x7); shl xmm4_2 sll 0x7@uint32;
split dc sll xmm4_3 (32-0x7); shl xmm4_3 sll 0x7@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x555555555968 *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* pshufd $0x4e,%xmm2,%xmm2                        #! PC = 0x55555555596c *)
mov sh0 xmm2_2; mov sh1 xmm2_3; mov sh2 xmm2_0; mov sh3 xmm2_1;
mov xmm2_0 sh0; mov xmm2_1 sh1; mov xmm2_2 sh2; mov xmm2_3 sh3;
(* pshufd $0x93,%xmm1,%xmm1                        #! PC = 0x555555555971 *)
mov sh0 xmm1_3; mov sh1 xmm1_0; mov sh2 xmm1_1; mov sh3 xmm1_2;
mov xmm1_0 sh0; mov xmm1_1 sh1; mov xmm1_2 sh2; mov xmm1_3 sh3;
(* pshufd $0x39,%xmm3,%xmm3                        #! PC = 0x555555555976 *)
mov sh0 xmm3_1; mov sh1 xmm3_2; mov sh2 xmm3_3; mov sh3 xmm3_0;
mov xmm3_0 sh0; mov xmm3_1 sh1; mov xmm3_2 sh2; mov xmm3_3 sh3;
(* dec    %r8                                      #! PC = 0x55555555597b *)
(* dec %r8 *)
nop;
(* #jne    0x5555555558c0 <ChaCha20_ssse3+192>     #! PC = 0x55555555597e *)
#jne    0x5555555558c0 <ChaCha20_ssse3+192>     #! 0x55555555597e = 0x55555555597e;
(* paddd  %xmm1,%xmm0                              #! PC = 0x5555555558c0 *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x5555555558c4 *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm6,%xmm3                              #! PC = 0x5555555558c8 *)
assert true &&
       and [xmm6_0 = 0x01000302@32, xmm6_1 = 0x05040706@32,
            xmm6_2 = 0x09080b0a@32, xmm6_3 = 0x0d0c0f0e@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe shd shc; join shdc shf she; join xmm3_3 shfe shdc;
join shba sh9 sh8; join sh98 shb sha; join xmm3_2 shba sh98;
join sh76 sh5 sh4; join sh54 sh7 sh6; join xmm3_1 sh76 sh54;
join sh32 sh1 sh0; join sh10 sh3 sh2; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x5555555558cd *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x5555555558d1 *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x5555555558d5 *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x14,%xmm1                              #! PC = 0x5555555558d9 *)
split xmm1_0 dc xmm1_0 0x14; split xmm1_1 dc xmm1_1 0x14;
split xmm1_2 dc xmm1_2 0x14; split xmm1_3 dc xmm1_3 0x14;
(* pslld  $0xc,%xmm4                               #! PC = 0x5555555558de *)
split dc sll xmm4_0 (32-0xc); shl xmm4_0 sll 0xc@uint32;
split dc sll xmm4_1 (32-0xc); shl xmm4_1 sll 0xc@uint32;
split dc sll xmm4_2 (32-0xc); shl xmm4_2 sll 0xc@uint32;
split dc sll xmm4_3 (32-0xc); shl xmm4_3 sll 0xc@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x5555555558e3 *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* paddd  %xmm1,%xmm0                              #! PC = 0x5555555558e7 *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x5555555558eb *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm7,%xmm3                              #! PC = 0x5555555558ef *)
assert true &&
       and [xmm7_0 = 0x02010003@32, xmm7_1 = 0x06050407@32,
            xmm7_2 = 0x0a09080b@32, xmm7_3 = 0x0e0d0c0f@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe she shd; join shdc shc shf; join xmm3_3 shfe shdc;
join shba sha sh9; join sh98 sh8 shb; join xmm3_2 shba sh98;
join sh76 sh6 sh5; join sh54 sh4 sh7; join xmm3_1 sh76 sh54;
join sh32 sh2 sh1; join sh10 sh0 sh3; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x5555555558f4 *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x5555555558f8 *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x5555555558fc *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x19,%xmm1                              #! PC = 0x555555555900 *)
split xmm1_0 dc xmm1_0 0x19; split xmm1_1 dc xmm1_1 0x19;
split xmm1_2 dc xmm1_2 0x19; split xmm1_3 dc xmm1_3 0x19;
(* pslld  $0x7,%xmm4                               #! PC = 0x555555555905 *)
split dc sll xmm4_0 (32-0x7); shl xmm4_0 sll 0x7@uint32;
split dc sll xmm4_1 (32-0x7); shl xmm4_1 sll 0x7@uint32;
split dc sll xmm4_2 (32-0x7); shl xmm4_2 sll 0x7@uint32;
split dc sll xmm4_3 (32-0x7); shl xmm4_3 sll 0x7@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x55555555590a *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* pshufd $0x4e,%xmm2,%xmm2                        #! PC = 0x55555555590e *)
mov sh0 xmm2_2; mov sh1 xmm2_3; mov sh2 xmm2_0; mov sh3 xmm2_1;
mov xmm2_0 sh0; mov xmm2_1 sh1; mov xmm2_2 sh2; mov xmm2_3 sh3;
(* pshufd $0x39,%xmm1,%xmm1                        #! PC = 0x555555555913 *)
mov sh0 xmm1_1; mov sh1 xmm1_2; mov sh2 xmm1_3; mov sh3 xmm1_0;
mov xmm1_0 sh0; mov xmm1_1 sh1; mov xmm1_2 sh2; mov xmm1_3 sh3;
(* pshufd $0x93,%xmm3,%xmm3                        #! PC = 0x555555555918 *)
mov sh0 xmm3_3; mov sh1 xmm3_0; mov sh2 xmm3_1; mov sh3 xmm3_2;
mov xmm3_0 sh0; mov xmm3_1 sh1; mov xmm3_2 sh2; mov xmm3_3 sh3;
(* paddd  %xmm1,%xmm0                              #! PC = 0x55555555591e *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x555555555922 *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm6,%xmm3                              #! PC = 0x555555555926 *)
assert true &&
       and [xmm6_0 = 0x01000302@32, xmm6_1 = 0x05040706@32,
            xmm6_2 = 0x09080b0a@32, xmm6_3 = 0x0d0c0f0e@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe shd shc; join shdc shf she; join xmm3_3 shfe shdc;
join shba sh9 sh8; join sh98 shb sha; join xmm3_2 shba sh98;
join sh76 sh5 sh4; join sh54 sh7 sh6; join xmm3_1 sh76 sh54;
join sh32 sh1 sh0; join sh10 sh3 sh2; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x55555555592b *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x55555555592f *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x555555555933 *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x14,%xmm1                              #! PC = 0x555555555937 *)
split xmm1_0 dc xmm1_0 0x14; split xmm1_1 dc xmm1_1 0x14;
split xmm1_2 dc xmm1_2 0x14; split xmm1_3 dc xmm1_3 0x14;
(* pslld  $0xc,%xmm4                               #! PC = 0x55555555593c *)
split dc sll xmm4_0 (32-0xc); shl xmm4_0 sll 0xc@uint32;
split dc sll xmm4_1 (32-0xc); shl xmm4_1 sll 0xc@uint32;
split dc sll xmm4_2 (32-0xc); shl xmm4_2 sll 0xc@uint32;
split dc sll xmm4_3 (32-0xc); shl xmm4_3 sll 0xc@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x555555555941 *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* paddd  %xmm1,%xmm0                              #! PC = 0x555555555945 *)
adds dc xmm0_0 xmm0_0 xmm1_0; adds dc xmm0_1 xmm0_1 xmm1_1;
adds dc xmm0_2 xmm0_2 xmm1_2; adds dc xmm0_3 xmm0_3 xmm1_3;
(* pxor   %xmm0,%xmm3                              #! PC = 0x555555555949 *)
xor xmm3_0@uint32 xmm3_0 xmm0_0; xor xmm3_1@uint32 xmm3_1 xmm0_1;
xor xmm3_2@uint32 xmm3_2 xmm0_2; xor xmm3_3@uint32 xmm3_3 xmm0_3;
(* pshufb %xmm7,%xmm3                              #! PC = 0x55555555594d *)
assert true &&
       and [xmm7_0 = 0x02010003@32, xmm7_1 = 0x06050407@32,
            xmm7_2 = 0x0a09080b@32, xmm7_3 = 0x0e0d0c0f@32];
spl sh32 sh10 xmm3_0 16; spl sh3 sh2 sh32 8; spl sh1 sh0 sh10 8;
spl sh76 sh54 xmm3_1 16; spl sh7 sh6 sh76 8; spl sh5 sh4 sh54 8;
spl shba sh98 xmm3_2 16; spl shb sha shba 8; spl sh9 sh8 sh98 8;
spl shfe shdc xmm3_3 16; spl shf she shfe 8; spl shd shc shdc 8;
join shfe she shd; join shdc shc shf; join xmm3_3 shfe shdc;
join shba sha sh9; join sh98 sh8 shb; join xmm3_2 shba sh98;
join sh76 sh6 sh5; join sh54 sh4 sh7; join xmm3_1 sh76 sh54;
join sh32 sh2 sh1; join sh10 sh0 sh3; join xmm3_0 sh32 sh10;
(* paddd  %xmm3,%xmm2                              #! PC = 0x555555555952 *)
adds dc xmm2_0 xmm2_0 xmm3_0; adds dc xmm2_1 xmm2_1 xmm3_1;
adds dc xmm2_2 xmm2_2 xmm3_2; adds dc xmm2_3 xmm2_3 xmm3_3;
(* pxor   %xmm2,%xmm1                              #! PC = 0x555555555956 *)
xor xmm1_0@uint32 xmm1_0 xmm2_0; xor xmm1_1@uint32 xmm1_1 xmm2_1;
xor xmm1_2@uint32 xmm1_2 xmm2_2; xor xmm1_3@uint32 xmm1_3 xmm2_3;
(* movdqa %xmm1,%xmm4                              #! PC = 0x55555555595a *)
mov xmm4_0 xmm1_0; mov xmm4_1 xmm1_1; mov xmm4_2 xmm1_2; mov xmm4_3 xmm1_3;
(* psrld  $0x19,%xmm1                              #! PC = 0x55555555595e *)
split xmm1_0 dc xmm1_0 0x19; split xmm1_1 dc xmm1_1 0x19;
split xmm1_2 dc xmm1_2 0x19; split xmm1_3 dc xmm1_3 0x19;
(* pslld  $0x7,%xmm4                               #! PC = 0x555555555963 *)
split dc sll xmm4_0 (32-0x7); shl xmm4_0 sll 0x7@uint32;
split dc sll xmm4_1 (32-0x7); shl xmm4_1 sll 0x7@uint32;
split dc sll xmm4_2 (32-0x7); shl xmm4_2 sll 0x7@uint32;
split dc sll xmm4_3 (32-0x7); shl xmm4_3 sll 0x7@uint32;
(* por    %xmm4,%xmm1                              #! PC = 0x555555555968 *)
or xmm1_0@uint32 xmm1_0 xmm4_0; or xmm1_1@uint32 xmm1_1 xmm4_1;
or xmm1_2@uint32 xmm1_2 xmm4_2; or xmm1_3@uint32 xmm1_3 xmm4_3;
(* pshufd $0x4e,%xmm2,%xmm2                        #! PC = 0x55555555596c *)
mov sh0 xmm2_2; mov sh1 xmm2_3; mov sh2 xmm2_0; mov sh3 xmm2_1;
mov xmm2_0 sh0; mov xmm2_1 sh1; mov xmm2_2 sh2; mov xmm2_3 sh3;
(* pshufd $0x93,%xmm1,%xmm1                        #! PC = 0x555555555971 *)
mov sh0 xmm1_3; mov sh1 xmm1_0; mov sh2 xmm1_1; mov sh3 xmm1_2;
mov xmm1_0 sh0; mov xmm1_1 sh1; mov xmm1_2 sh2; mov xmm1_3 sh3;
(* pshufd $0x39,%xmm3,%xmm3                        #! PC = 0x555555555976 *)
mov sh0 xmm3_1; mov sh1 xmm3_2; mov sh2 xmm3_3; mov sh3 xmm3_0;
mov xmm3_0 sh0; mov xmm3_1 sh1; mov xmm3_2 sh2; mov xmm3_3 sh3;
(* dec    %r8                                      #! PC = 0x55555555597b *)
(* dec %r8 *)
nop;
(* #jne    0x5555555558c0 <ChaCha20_ssse3+192>     #! PC = 0x55555555597e *)
#jne    0x5555555558c0 <ChaCha20_ssse3+192>     #! 0x55555555597e = 0x55555555597e;
(* paddd  (%rsp),%xmm0                             #! EA = L0x7fffffffd740; Value = 0x3320646e61707865; PC = 0x555555555984 *)
adds dc xmm0_0 xmm0_0 L0x7fffffffd740; adds dc xmm0_1 xmm0_1 L0x7fffffffd744;
adds dc xmm0_2 xmm0_2 L0x7fffffffd748; adds dc xmm0_3 xmm0_3 L0x7fffffffd74c;
(* paddd  0x10(%rsp),%xmm1                         #! EA = L0x7fffffffd750; Value = 0x0000000100000000; PC = 0x555555555989 *)
adds dc xmm1_0 xmm1_0 L0x7fffffffd750; adds dc xmm1_1 xmm1_1 L0x7fffffffd754;
adds dc xmm1_2 xmm1_2 L0x7fffffffd758; adds dc xmm1_3 xmm1_3 L0x7fffffffd75c;
(* paddd  0x20(%rsp),%xmm2                         #! EA = L0x7fffffffd760; Value = 0x0000000500000004; PC = 0x55555555598f *)
adds dc xmm2_0 xmm2_0 L0x7fffffffd760; adds dc xmm2_1 xmm2_1 L0x7fffffffd764;
adds dc xmm2_2 xmm2_2 L0x7fffffffd768; adds dc xmm2_3 xmm2_3 L0x7fffffffd76c;
(* paddd  0x30(%rsp),%xmm3                         #! EA = L0x7fffffffd770; Value = 0x0000001000000000; PC = 0x555555555995 *)
adds dc xmm3_0 xmm3_0 L0x7fffffffd770; adds dc xmm3_1 xmm3_1 L0x7fffffffd774;
adds dc xmm3_2 xmm3_2 L0x7fffffffd778; adds dc xmm3_3 xmm3_3 L0x7fffffffd77c;
(* cmp    $0x40,%rdx                               #! PC = 0x55555555599b *)
(* cmp 0x40, %rdx *)
nop;
(* #jb     0x5555555559f0 <ChaCha20_ssse3+496>     #! PC = 0x55555555599f *)
#jb     0x5555555559f0 <ChaCha20_ssse3+496>     #! 0x55555555599f = 0x55555555599f;
(* movdqa %xmm0,(%rsp)                             #! EA = L0x7fffffffd740; PC = 0x5555555559f0 *)
mov L0x7fffffffd740 xmm0_0; mov L0x7fffffffd744 xmm0_1;
mov L0x7fffffffd748 xmm0_2; mov L0x7fffffffd74c xmm0_3;
(* movdqa %xmm1,0x10(%rsp)                         #! EA = L0x7fffffffd750; PC = 0x5555555559f5 *)
mov L0x7fffffffd750 xmm1_0; mov L0x7fffffffd754 xmm1_1;
mov L0x7fffffffd758 xmm1_2; mov L0x7fffffffd75c xmm1_3;
(* movdqa %xmm2,0x20(%rsp)                         #! EA = L0x7fffffffd760; PC = 0x5555555559fb *)
mov L0x7fffffffd760 xmm2_0; mov L0x7fffffffd764 xmm2_1;
mov L0x7fffffffd768 xmm2_2; mov L0x7fffffffd76c xmm2_3;
(* movdqa %xmm3,0x30(%rsp)                         #! EA = L0x7fffffffd770; PC = 0x555555555a01 *)
mov L0x7fffffffd770 xmm3_0; mov L0x7fffffffd774 xmm3_1;
mov L0x7fffffffd778 xmm3_2; mov L0x7fffffffd77c xmm3_3;

mov a0 L0x7fffffffd740; mov a1 L0x7fffffffd744;
mov a2 L0x7fffffffd748; mov a3 L0x7fffffffd74c;
mov a4 L0x7fffffffd750; mov a5 L0x7fffffffd754;
mov a6 L0x7fffffffd758; mov a7 L0x7fffffffd75c;
mov a8 L0x7fffffffd760; mov a9 L0x7fffffffd764;
mov aa L0x7fffffffd768; mov ab L0x7fffffffd76c;
mov ac L0x7fffffffd770; mov ad L0x7fffffffd774;
mov ae L0x7fffffffd778; mov af L0x7fffffffd77c;

{
  true
  &&
  true
}

