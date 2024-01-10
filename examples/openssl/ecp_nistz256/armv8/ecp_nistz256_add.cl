proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3,
           uint64 p0, uint64 p1, uint64 p2, uint64 p3) =
{
  true
&&
  and [ulimbs 64 [a0, a1, a2, a3] <u limbs 64 [p0, p1, p2, p3],
       ulimbs 64 [b0, b1, b2, b3] <u limbs 64 [p0, p1, p2, p3],
       p0 = 0xffffffffffffffff@64, p1 = 0x00000000ffffffff@64,
       p2 = 0x0000000000000000@64, p3 = 0xffffffff00000001@64]
}

mov L0x4000839918 a0;
mov L0x4000839920 a1;
mov L0x4000839928 a2;
mov L0x4000839930 a3;

mov L0x4000839938 b0;
mov L0x4000839940 b1;
mov L0x4000839948 b2;
mov L0x4000839950 b3;

mov L0x4000027000 p0;
mov L0x4000027008 p1;
mov L0x4000027010 p2;
mov L0x4000027018 p3;

(* #! -> SP = 0x4000839900 *)
#! 0x4000839900 = 0x4000839900;
(* #paciasp                                         #! PC = 0x4000027200 *)
#paciasp                                         #! 0x4000027200 = 0x4000027200;
(* #stp	x29, x30, [sp, #-16]!                       #! EA = L0x40008398f0; PC = 0x4000027204 *)
#stp	%%x29, %%x30, [sp, #-16]!                       #! L0x40008398f0 = L0x40008398f0; 0x4000027204 = 0x4000027204;
(* #mov	x29, sp                                     #! PC = 0x4000027208 *)
#mov	%%x29, sp                                     #! 0x4000027208 = 0x4000027208;
(* ldp	x14, x15, [x1]                              #! EA = L0x4000839918; Value = 0x000000400086cf28; PC = 0x400002720c *)
mov x14 L0x4000839918;
mov x15 L0x4000839920;
(* ldp	x8, x9, [x2]                                #! EA = L0x4000839938; Value = 0x000000400086cf48; PC = 0x4000027210 *)
mov x8 L0x4000839938;
mov x9 L0x4000839940;
(* ldp	x16, x17, [x1, #16]                         #! EA = L0x4000839928; Value = 0x0000000000000000; PC = 0x4000027214 *)
mov x16 L0x4000839928;
mov x17 L0x4000839930;
(* ldp	x10, x11, [x2, #16]                         #! EA = L0x4000839948; Value = 0x0000000000000000; PC = 0x4000027218 *)
mov x10 L0x4000839948;
mov x11 L0x4000839950;
(* ldr	x12, 0x4000027008                           #! PC = 0x400002721c *)
mov x12 L0x4000027008;
(* ldr	x13, 0x4000027018                           #! PC = 0x4000027220 *)
mov x13 L0x4000027018;
(* #bl	0x40000276d0 <__ecp_nistz256_add>           #! PC = 0x4000027224 *)
#bl	0x40000276d0 <__ecp_nistz256_add>           #! 0x4000027224 = 0x4000027224;
(* #! -> SP = 0x40008398f0 *)
#! 0x40008398f0 = 0x40008398f0;
(* adds	x14, x14, x8                               #! PC = 0x40000276d0 *)
adds carry x14 x14 x8;
(* adcs	x15, x15, x9                               #! PC = 0x40000276d4 *)
adcs carry x15 x15 x9 carry;
(* adcs	x16, x16, x10                              #! PC = 0x40000276d8 *)
adcs carry x16 x16 x10 carry;
(* adcs	x17, x17, x11                              #! PC = 0x40000276dc *)
adcs carry x17 x17 x11 carry;
(* adc	x1, xzr, xzr                                #! PC = 0x40000276e0 *)
adc x1 0@uint64 0@uint64 carry;
(* adds	x8, x14, #0x1                              #! PC = 0x40000276e4 *)
adds carry x8 x14 0x1@uint64;
(* sbcs	x9, x15, x12                               #! PC = 0x40000276e8 *)
sbcs carry x9 x15 x12 carry;
(* sbcs	x10, x16, xzr                              #! PC = 0x40000276ec *)
sbcs carry x10 x16 0@uint64 carry;
(* sbcs	x11, x17, x13                              #! PC = 0x40000276f0 *)
sbcs carry x11 x17 x13 carry;
(* sbcs	xzr, x1, xzr                               #! PC = 0x40000276f4 *)
sbcs carry dontcare x1 0@uint64 carry;
(* csel	x14, x14, x8, cc  // cc = lo, ul, last     #! PC = 0x40000276f8 *)
cmov x14 carry x8 x14;
(* csel	x15, x15, x9, cc  // cc = lo, ul, last     #! PC = 0x40000276fc *)
cmov x15 carry x9 x15;
(* csel	x16, x16, x10, cc  // cc = lo, ul, last    #! PC = 0x4000027700 *)
cmov x16 carry x10 x16;
(* stp	x14, x15, [x0]                              #! EA = L0x4000839958; PC = 0x4000027704 *)
mov L0x4000839958 x14;
mov L0x4000839960 x15;
(* csel	x17, x17, x11, cc  // cc = lo, ul, last    #! PC = 0x4000027708 *)
cmov x17 carry x11 x17;
(* stp	x16, x17, [x0, #16]                         #! EA = L0x4000839968; PC = 0x400002770c *)
mov L0x4000839968 x16;
mov L0x4000839970 x17;
(* #! <- SP = 0x40008398f0 *)
#! 0x40008398f0 = 0x40008398f0;
(* #ret                                            #! PC = 0x4000027710 *)
#ret                                            #! 0x4000027710 = 0x4000027710;
(* #ldp	x29, x30, [sp], #16                         #! EA = L0x40008398f0; Value = 0x0000004000839900; PC = 0x4000027228 *)
#ldp	%%x29, %%x30, [sp], #16                         #! L0x40008398f0 = L0x40008398f0; 0x0000004000839900 = 0x0000004000839900; 0x4000027228 = 0x4000027228;
(* #autiasp                                         #! PC = 0x400002722c *)
#autiasp                                         #! 0x400002722c = 0x400002722c;
(* #! <- SP = 0x4000839900 *)
#! 0x4000839900 = 0x4000839900;
(* #ret                                            #! PC = 0x4000027230 *)
#ret                                            #! 0x4000027230 = 0x4000027230;

mov r0 L0x4000839958;
mov r1 L0x4000839960;
mov r2 L0x4000839968;
mov r3 L0x4000839970;

{
  true
&&
  and [eqsmod (ulimbs 64 [r0, r1, r2, r3, 0@64])
              (ulimbs 64 [a0, a1, a2, a3, 0@64] + ulimbs 64 [b0, b1, b2, b3, 0@64])
              (ulimbs 64 [p0, p1, p2, p3, 0@64]),
       ulimbs 64 [r0, r1, r2, r3] <u ulimbs 64 [p0, p1, p2, p3]]
}

