(*
on popper, equivalence against XKCP C reference implementation, 1 thread:
Parsing CryptoLine file:		[OK]		0.018814 seconds
Checking well-formedness:		[OK]		0.004155 seconds
Parsing CryptoLine file:		[OK]		0.013673 seconds
Checking well-formedness:		[OK]		0.006249 seconds
Output group #0:
  Converting programs to AIG:		[OK]		0.869677 seconds
  Checking equivalence:			[OK]		114.754122 seconds
Final result:				[OK]		115.623890 seconds
*)

proc main (uint64 A00, uint64 A01, uint64 A02, uint64 A03, uint64 A04,
           uint64 A05, uint64 A06, uint64 A07, uint64 A08, uint64 A09,
           uint64 A10, uint64 A11, uint64 A12, uint64 A13, uint64 A14,
           uint64 A15, uint64 A16, uint64 A17, uint64 A18, uint64 A19,
           uint64 A20, uint64 A21, uint64 A22, uint64 A23, uint64 A24) =
{
  true
  &&
  true
}

(* ===== Initization ===== *)

mov L0x7fffffeb58 A00;
mov L0x7fffffeb60 A01;
mov L0x7fffffeb68 A02;
mov L0x7fffffeb70 A03;
mov L0x7fffffeb78 A04;
mov L0x7fffffeb80 A05;
mov L0x7fffffeb88 A06;
mov L0x7fffffeb90 A07;
mov L0x7fffffeb98 A08;
mov L0x7fffffeba0 A09;
mov L0x7fffffeba8 A10;
mov L0x7fffffebb0 A11;
mov L0x7fffffebb8 A12;
mov L0x7fffffebc0 A13;
mov L0x7fffffebc8 A14;
mov L0x7fffffebd0 A15;
mov L0x7fffffebd8 A16;
mov L0x7fffffebe0 A17;
mov L0x7fffffebe8 A18;
mov L0x7fffffebf0 A19;
mov L0x7fffffebf8 A20;
mov L0x7fffffec00 A21;
mov L0x7fffffec08 A22;
mov L0x7fffffec10 A23;
mov L0x7fffffec18 A24;

nondet x0@uint64;
nondet x19@uint64;
nondet x2@uint64;
nondet x20@uint64;
nondet x21@uint64;
nondet x22@uint64;
nondet x23@uint64;
nondet x24@uint64;
nondet x25@uint64;
nondet x26@uint64;
nondet x27@uint64;
nondet x28@uint64;
nondet x30@uint64;

(* ===== Program ===== *)

(* #! -> SP = 0x7fffffeb00 *)
#! 0x7fffffeb00 = 0x7fffffeb00;
(* stp	x19, x20, [sp, #-192]!                      #! EA = L0x7fffffea40; PC = 0x5555569bc0 *)
mov L0x7fffffea40 x19;
mov L0x7fffffea48 x20;
(* mov	x20, x0                                     #! PC = 0x5555569bc4 *)
mov x20 x0;
(* stp	x25, x26, [sp, #48]                         #! EA = L0x7fffffea70; PC = 0x5555569bc8 *)
mov L0x7fffffea70 x25;
mov L0x7fffffea78 x26;
(* stp	x27, x28, [sp, #64]                         #! EA = L0x7fffffea80; PC = 0x5555569bcc *)
mov L0x7fffffea80 x27;
mov L0x7fffffea88 x28;
(* ldp	x1, x25, [x0]                               #! EA = L0x7fffffeb58; Value = 0x0000005555580a10; PC = 0x5555569bd0 *)
mov x1 L0x7fffffeb58;
mov x25 L0x7fffffeb60;
(* stp	x21, x22, [sp, #16]                         #! EA = L0x7fffffea50; PC = 0x5555569bd4 *)
mov L0x7fffffea50 x21;
mov L0x7fffffea58 x22;
(* ldp	x9, x28, [x0, #32]                          #! EA = L0x7fffffeb78; Value = 0x0000000000000000; PC = 0x5555569bd8 *)
mov x9 L0x7fffffeb78;
mov x28 L0x7fffffeb80;
(* stp	x23, x24, [sp, #32]                         #! EA = L0x7fffffea60; PC = 0x5555569bdc *)
mov L0x7fffffea60 x23;
mov L0x7fffffea68 x24;
(* ldr	x5, [x0, #120]                              #! EA = L0x7fffffebd0; Value = 0x00000000000138ef; PC = 0x5555569be0 *)
mov x5 L0x7fffffebd0;
(* stp	x1, x5, [sp, #104]                          #! EA = L0x7fffffeaa8; PC = 0x5555569be4 *)
mov L0x7fffffeaa8 x1;
mov L0x7fffffeab0 x5;
(* eor	x11, x1, x28                                #! PC = 0x5555569be8 *)
xor x11@uint64 x1 x28;
(* ldp	x6, x15, [x0, #16]                          #! EA = L0x7fffffeb68; Value = 0x0000000000000000; PC = 0x5555569bec *)
mov x6 L0x7fffffeb68;
mov x15 L0x7fffffeb70;
(* ldp	x27, x3, [x0, #48]                          #! EA = L0x7fffffeb88; Value = 0x000000555557e484; PC = 0x5555569bf0 *)
mov x27 L0x7fffffeb88;
mov x3 L0x7fffffeb90;
(* ldp	x4, x7, [x0, #64]                           #! EA = L0x7fffffeb98; Value = 0x0000000000000013; PC = 0x5555569bf4 *)
mov x4 L0x7fffffeb98;
mov x7 L0x7fffffeba0;
(* ldr	x1, [x0, #80]                               #! EA = L0x7fffffeba8; Value = 0x0000000000001f40; PC = 0x5555569bf8 *)
mov x1 L0x7fffffeba8;
(* ldp	x22, x23, [x0, #88]                         #! EA = L0x7fffffebb0; Value = 0x0000000000013880; PC = 0x5555569bfc *)
mov x22 L0x7fffffebb0;
mov x23 L0x7fffffebb8;
(* eor	x10, x1, x5                                 #! PC = 0x5555569c00 *)
xor x10@uint64 x1 x5;
(* ldp	x13, x12, [x0, #104]                        #! EA = L0x7fffffebc0; Value = 0x000000000000031c; PC = 0x5555569c04 *)
mov x13 L0x7fffffebc0;
mov x12 L0x7fffffebc8;
(* eor	x19, x9, x7                                 #! PC = 0x5555569c08 *)
xor x19@uint64 x9 x7;
(* ldp	x17, x8, [x0, #136]                         #! EA = L0x7fffffebe0; Value = 0x000000000000031c; PC = 0x5555569c0c *)
mov x17 L0x7fffffebe0;
mov x8 L0x7fffffebe8;
(* str	x30, [sp, #80]                              #! EA = L0x7fffffea90; PC = 0x5555569c10 *)
mov L0x7fffffea90 x30;
(* ldr	x30, [x0, #128]                             #! EA = L0x7fffffebd8; Value = 0x00000000000c396a; PC = 0x5555569c14 *)
mov x30 L0x7fffffebd8;
(* eor	x26, x6, x3                                 #! PC = 0x5555569c18 *)
xor x26@uint64 x6 x3;
(* ldp	x21, x16, [x20, #152]                       #! EA = L0x7fffffebf0; Value = 0x0000000000013a05; PC = 0x5555569c1c *)
mov x21 L0x7fffffebf0;
mov x16 L0x7fffffebf8;
(* str	x20, [sp, #96]                              #! EA = L0x7fffffeaa0; PC = 0x5555569c20 *)
mov L0x7fffffeaa0 x20;
(* eor	x14, x23, x17                               #! PC = 0x5555569c24 *)
xor x14@uint64 x23 x17;
(* eor	x11, x11, x10                               #! PC = 0x5555569c28 *)
xor x11@uint64 x11 x10;
(* eor	x26, x26, x14                               #! PC = 0x5555569c2c *)
xor x26@uint64 x26 x14;
(* eor	x24, x25, x27                               #! PC = 0x5555569c30 *)
xor x24@uint64 x25 x27;
(* ldr	x10, [sp, #96]                              #! EA = L0x7fffffeaa0; Value = 0x0000007fffffeb58; PC = 0x5555569c34 *)
mov x10 L0x7fffffeaa0;
(* eor	x0, x22, x30                                #! PC = 0x5555569c38 *)
xor x0@uint64 x22 x30;
(* eor	x18, x12, x21                               #! PC = 0x5555569c3c *)
xor x18@uint64 x12 x21;
(* eor	x0, x24, x0                                 #! PC = 0x5555569c40 *)
xor x0@uint64 x24 x0;
(* eor	x19, x19, x18                               #! PC = 0x5555569c44 *)
xor x19@uint64 x19 x18;
(* eor	x5, x13, x8                                 #! PC = 0x5555569c48 *)
xor x5@uint64 x13 x8;
(* ldr	x18, [sp, #96]                              #! EA = L0x7fffffeaa0; Value = 0x0000007fffffeb58; PC = 0x5555569c4c *)
mov x18 L0x7fffffeaa0;
(* eor	x2, x15, x4                                 #! PC = 0x5555569c50 *)
xor x2@uint64 x15 x4;
(* ldr	x20, [x20, #168]                            #! EA = L0x7fffffec00; Value = 0x0000007fbf41b6a1; PC = 0x5555569c54 *)
mov x20 L0x7fffffec00;
(* eor	x2, x2, x5                                  #! PC = 0x5555569c58 *)
xor x2@uint64 x2 x5;
(* ldp	x14, x18, [x18, #184]                       #! EA = L0x7fffffec10; Value = 0x0000000000000000; PC = 0x5555569c5c *)
mov x14 L0x7fffffec10;
mov x18 L0x7fffffec18;
(* eor	x0, x0, x20                                 #! PC = 0x5555569c60 *)
xor x0@uint64 x0 x20;
(* ldr	x10, [x10, #176]                            #! EA = L0x7fffffec08; Value = 0x0000000000000000; PC = 0x5555569c64 *)
mov x10 L0x7fffffec08;
(* eor	x11, x11, x16                               #! PC = 0x5555569c68 *)
xor x11@uint64 x11 x16;
(* eor	x26, x26, x10                               #! PC = 0x5555569c6c *)
xor x26@uint64 x26 x10;
(* eor	x19, x19, x18                               #! PC = 0x5555569c70 *)
xor x19@uint64 x19 x18;
(* eor	x2, x2, x14                                 #! PC = 0x5555569c74 *)
xor x2@uint64 x2 x14;
(* eor	x24, x19, x0, ror #63                       #! PC = 0x5555569c78 *)
ror x0_r x0 63;
xor x24@uint64 x19 x0_r;
(* eor	x5, x11, x26, ror #63                       #! PC = 0x5555569c7c *)
ror x26_r x26 63;
xor x5@uint64 x11 x26_r;
(* eor	x1, x1, x24                                 #! PC = 0x5555569c80 *)
xor x1@uint64 x1 x24;
(* eor	x11, x2, x11, ror #63                       #! PC = 0x5555569c84 *)
ror x11_r x11 63;
xor x11@uint64 x2 x11_r;
(* eor	x2, x0, x2, ror #63                         #! PC = 0x5555569c88 *)
ror x2_r x2 63;
xor x2@uint64 x0 x2_r;
(* eor	x19, x26, x19, ror #63                      #! PC = 0x5555569c8c *)
ror x19_r x19 63;
xor x19@uint64 x26 x19_r;
(* eor	x18, x18, x11                               #! PC = 0x5555569c90 *)
xor x18@uint64 x18 x11;
(* ror	x26, x1, #61                                #! PC = 0x5555569c94 *)
ror x26@uint64 x1 61;
(* eor	x0, x23, x2                                 #! PC = 0x5555569c98 *)
xor x0@uint64 x23 x2;
(* eor	x17, x17, x2                                #! PC = 0x5555569c9c *)
xor x17@uint64 x17 x2;
(* eor	x30, x30, x5                                #! PC = 0x5555569ca0 *)
xor x30@uint64 x30 x5;
(* eor	x22, x22, x5                                #! PC = 0x5555569ca4 *)
xor x22@uint64 x22 x5;
(* eor	x25, x25, x5                                #! PC = 0x5555569ca8 *)
xor x25@uint64 x25 x5;
(* eor	x7, x7, x11                                 #! PC = 0x5555569cac *)
xor x7@uint64 x7 x11;
(* eor	x21, x21, x11                               #! PC = 0x5555569cb0 *)
xor x21@uint64 x21 x11;
(* eor	x9, x9, x11                                 #! PC = 0x5555569cb4 *)
xor x9@uint64 x9 x11;
(* eor	x12, x12, x11                               #! PC = 0x5555569cb8 *)
xor x12@uint64 x12 x11;
(* eor	x10, x10, x2                                #! PC = 0x5555569cbc *)
xor x10@uint64 x10 x2;
(* eor	x11, x20, x5                                #! PC = 0x5555569cc0 *)
xor x11@uint64 x20 x5;
(* eor	x3, x3, x2                                  #! PC = 0x5555569cc4 *)
xor x3@uint64 x3 x2;
(* eor	x2, x6, x2                                  #! PC = 0x5555569cc8 *)
xor x2@uint64 x6 x2;
(* eor	x6, x27, x5                                 #! PC = 0x5555569ccc *)
xor x6@uint64 x27 x5;
(* ldp	x1, x5, [sp, #104]                          #! EA = L0x7fffffeaa8; Value = 0x0000005555580a10; PC = 0x5555569cd0 *)
mov x1 L0x7fffffeaa8;
mov x5 L0x7fffffeab0;
(* eor	x13, x13, x19                               #! PC = 0x5555569cd4 *)
xor x13@uint64 x13 x19;
(* eor	x28, x28, x24                               #! PC = 0x5555569cd8 *)
xor x28@uint64 x28 x24;
(* eor	x15, x15, x19                               #! PC = 0x5555569cdc *)
xor x15@uint64 x15 x19;
(* eor	x8, x8, x19                                 #! PC = 0x5555569ce0 *)
xor x8@uint64 x8 x19;
(* ror	x23, x17, #49                               #! PC = 0x5555569ce4 *)
ror x23@uint64 x17 49;
(* ror	x22, x22, #54                               #! PC = 0x5555569ce8 *)
ror x22@uint64 x22 54;
(* ror	x30, x30, #19                               #! PC = 0x5555569cec *)
ror x30@uint64 x30 19;
(* ror	x20, x18, #50                               #! PC = 0x5555569cf0 *)
ror x20@uint64 x18 50;
(* ror	x27, x13, #39                               #! PC = 0x5555569cf4 *)
ror x27@uint64 x13 39;
(* ror	x18, x6, #20                                #! PC = 0x5555569cf8 *)
ror x18@uint64 x6 20;
(* ror	x28, x28, #28                               #! PC = 0x5555569cfc *)
ror x28@uint64 x28 28;
(* ror	x15, x15, #36                               #! PC = 0x5555569d00 *)
ror x15@uint64 x15 36;
(* ror	x8, x8, #43                                 #! PC = 0x5555569d04 *)
ror x8@uint64 x8 43;
(* ror	x7, x7, #44                                 #! PC = 0x5555569d08 *)
ror x7@uint64 x7 44;
(* ror	x21, x21, #56                               #! PC = 0x5555569d0c *)
ror x21@uint64 x21 56;
(* bic	x6, x30, x26                                #! PC = 0x5555569d10 *)
not x26_not@uint64 x26;
and x6@uint64 x30 x26_not;
(* ror	x0, x0, #21                                 #! PC = 0x5555569d14 *)
ror x0@uint64 x0 21;
(* eor	x16, x16, x24                               #! PC = 0x5555569d18 *)
xor x16@uint64 x16 x24;
(* eor	x4, x4, x19                                 #! PC = 0x5555569d1c *)
xor x4@uint64 x4 x19;
(* eor	x14, x14, x19                               #! PC = 0x5555569d20 *)
xor x14@uint64 x14 x19;
(* eor	x19, x1, x24                                #! PC = 0x5555569d24 *)
xor x19@uint64 x1 x24;
(* bic	x1, x23, x22                                #! PC = 0x5555569d28 *)
not x22_not@uint64 x22;
and x1@uint64 x23 x22_not;
(* ror	x10, x10, #3                                #! PC = 0x5555569d2c *)
ror x10@uint64 x10 3;
(* eor	x6, x6, x7                                  #! PC = 0x5555569d30 *)
xor x6@uint64 x6 x7;
(* ror	x25, x25, #63                               #! PC = 0x5555569d34 *)
ror x25@uint64 x25 63;
(* bic	x17, x8, x0                                 #! PC = 0x5555569d38 *)
not x0_not@uint64 x0;
and x17@uint64 x8 x0_not;
(* ror	x3, x3, #58                                 #! PC = 0x5555569d3c *)
ror x3@uint64 x3 58;
(* bic	x13, x21, x27                               #! PC = 0x5555569d40 *)
not x27_not@uint64 x27;
and x13@uint64 x21 x27_not;
(* eor	x1, x1, x28                                 #! PC = 0x5555569d44 *)
xor x1@uint64 x1 x28;
(* eor	x24, x5, x24                                #! PC = 0x5555569d48 *)
xor x24@uint64 x5 x24;
(* ror	x5, x11, #62                                #! PC = 0x5555569d4c *)
ror x5@uint64 x11 62;
(* bic	x11, x7, x15                                #! PC = 0x5555569d50 *)
not x15_not@uint64 x15;
and x11@uint64 x7 x15_not;
(* bic	x7, x26, x7                                 #! PC = 0x5555569d54 *)
not x7_not@uint64 x7;
and x7@uint64 x26 x7_not;
(* ror	x16, x16, #46                               #! PC = 0x5555569d58 *)
ror x16@uint64 x16 46;
(* ror	x9, x9, #37                                 #! PC = 0x5555569d5c *)
ror x9@uint64 x9 37;
(* eor	x17, x17, x18                               #! PC = 0x5555569d60 *)
xor x17@uint64 x17 x18;
(* ror	x14, x14, #8                                #! PC = 0x5555569d64 *)
ror x14@uint64 x14 8;
(* eor	x13, x13, x3                                #! PC = 0x5555569d68 *)
xor x13@uint64 x13 x3;
(* eor	x11, x11, x10                               #! PC = 0x5555569d6c *)
xor x11@uint64 x11 x10;
(* eor	x7, x7, x15                                 #! PC = 0x5555569d70 *)
xor x7@uint64 x7 x15;
(* bic	x15, x15, x10                               #! PC = 0x5555569d74 *)
not x10_not@uint64 x10;
and x15@uint64 x15 x10_not;
(* stp	x17, x13, [sp, #104]                        #! EA = L0x7fffffeaa8; PC = 0x5555569d78 *)
mov L0x7fffffeaa8 x17;
mov L0x7fffffeab0 x13;
(* bic	x13, x16, x21                               #! PC = 0x5555569d7c *)
not x21_not@uint64 x21;
and x13@uint64 x16 x21_not;
(* bic	x17, x9, x14                                #! PC = 0x5555569d80 *)
not x14_not@uint64 x14;
and x17@uint64 x9 x14_not;
(* stp	x1, x6, [sp, #120]                          #! EA = L0x7fffffeab8; PC = 0x5555569d84 *)
mov L0x7fffffeab8 x1;
mov L0x7fffffeac0 x6;
(* bic	x1, x10, x30                                #! PC = 0x5555569d88 *)
not x30_not@uint64 x30;
and x1@uint64 x10 x30_not;
(* bic	x10, x3, x25                                #! PC = 0x5555569d8c *)
not x25_not@uint64 x25;
and x10@uint64 x3 x25_not;
(* bic	x3, x27, x3                                 #! PC = 0x5555569d90 *)
not x3_not@uint64 x3;
and x3@uint64 x27 x3_not;
(* eor	x1, x1, x26                                 #! PC = 0x5555569d94 *)
xor x1@uint64 x1 x26;
(* eor	x3, x3, x25                                 #! PC = 0x5555569d98 *)
xor x3@uint64 x3 x25;
(* eor	x26, x10, x16                               #! PC = 0x5555569d9c *)
xor x26@uint64 x10 x16;
(* bic	x25, x25, x16                               #! PC = 0x5555569da0 *)
not x16_not@uint64 x16;
and x25@uint64 x25 x16_not;
(* bic	x16, x28, x9                                #! PC = 0x5555569da4 *)
not x9_not@uint64 x9;
and x16@uint64 x28 x9_not;
(* eor	x16, x16, x14                               #! PC = 0x5555569da8 *)
xor x16@uint64 x16 x14;
(* eor	x17, x17, x23                               #! PC = 0x5555569dac *)
xor x17@uint64 x17 x23;
(* bic	x14, x14, x23                               #! PC = 0x5555569db0 *)
not x23_not@uint64 x23;
and x14@uint64 x14 x23_not;
(* eor	x13, x13, x27                               #! PC = 0x5555569db4 *)
xor x13@uint64 x13 x27;
(* ldp	x10, x23, [sp, #104]                        #! EA = L0x7fffffeaa8; Value = 0xd05eb1ccbc077554; PC = 0x5555569db8 *)
mov x10 L0x7fffffeaa8;
mov x23 L0x7fffffeab0;
(* ror	x12, x12, #25                               #! PC = 0x5555569dbc *)
ror x12@uint64 x12 25;
(* ldr	x27, [sp, #120]                             #! EA = L0x7fffffeab8; Value = 0xbd382ae190900aa2; PC = 0x5555569dc0 *)
mov x27 L0x7fffffeab8;
(* ror	x2, x2, #2                                  #! PC = 0x5555569dc4 *)
ror x2@uint64 x2 2;
(* eor	x30, x15, x30                               #! PC = 0x5555569dc8 *)
xor x30@uint64 x15 x30;
(* ror	x4, x4, #9                                  #! PC = 0x5555569dcc *)
ror x4@uint64 x4 9;
(* bic	x15, x19, x20                               #! PC = 0x5555569dd0 *)
not x20_not@uint64 x20;
and x15@uint64 x19 x20_not;
(* bic	x28, x22, x28                               #! PC = 0x5555569dd4 *)
not x28_not@uint64 x28;
and x28@uint64 x22 x28_not;
(* eor	x21, x25, x21                               #! PC = 0x5555569dd8 *)
xor x21@uint64 x25 x21;
(* ror	x24, x24, #23                               #! PC = 0x5555569ddc *)
ror x24@uint64 x24 23;
(* eor	x28, x28, x9                                #! PC = 0x5555569de0 *)
xor x28@uint64 x28 x9;
(* bic	x25, x12, x4                                #! PC = 0x5555569de4 *)
not x4_not@uint64 x4;
and x25@uint64 x12 x4_not;
(* bic	x9, x4, x2                                  #! PC = 0x5555569de8 *)
not x2_not@uint64 x2;
and x9@uint64 x4 x2_not;
(* eor	x15, x15, x8                                #! PC = 0x5555569dec *)
xor x15@uint64 x15 x8;
(* bic	x8, x20, x8                                 #! PC = 0x5555569df0 *)
not x8_not@uint64 x8;
and x8@uint64 x20 x8_not;
(* eor	x14, x14, x22                               #! PC = 0x5555569df4 *)
xor x14@uint64 x14 x22;
(* eor	x9, x9, x5                                  #! PC = 0x5555569df8 *)
xor x9@uint64 x9 x5;
(* eor	x25, x25, x2                                #! PC = 0x5555569dfc *)
xor x25@uint64 x25 x2;
(* eor	x8, x8, x0                                  #! PC = 0x5555569e00 *)
xor x8@uint64 x8 x0;
(* eor	x22, x10, x6                                #! PC = 0x5555569e04 *)
xor x22@uint64 x10 x6;
(* bic	x0, x0, x18                                 #! PC = 0x5555569e08 *)
not x18_not@uint64 x18;
and x0@uint64 x0 x18_not;
(* eor	x10, x23, x27                               #! PC = 0x5555569e0c *)
xor x10@uint64 x23 x27;
(* bic	x6, x2, x5                                  #! PC = 0x5555569e10 *)
not x5_not@uint64 x5;
and x6@uint64 x2 x5_not;
(* bic	x23, x24, x12                               #! PC = 0x5555569e14 *)
not x12_not@uint64 x12;
and x23@uint64 x24 x12_not;
(* bic	x5, x5, x24                                 #! PC = 0x5555569e18 *)
not x24_not@uint64 x24;
and x5@uint64 x5 x24_not;
(* eor	x4, x23, x4                                 #! PC = 0x5555569e1c *)
xor x4@uint64 x23 x4;
(* eor	x27, x16, x9                                #! PC = 0x5555569e20 *)
xor x27@uint64 x16 x9;
(* eor	x23, x7, x3                                 #! PC = 0x5555569e24 *)
xor x23@uint64 x7 x3;
(* eor	x5, x5, x12                                 #! PC = 0x5555569e28 *)
xor x5@uint64 x5 x12;
(* bic	x18, x18, x19                               #! PC = 0x5555569e2c *)
not x19_not@uint64 x19;
and x18@uint64 x18 x19_not;
(* eor	x12, x28, x25                               #! PC = 0x5555569e30 *)
xor x12@uint64 x28 x25;
(* eor	x19, x0, x19                                #! PC = 0x5555569e34 *)
xor x19@uint64 x0 x19;
(* eor	x22, x22, x10                               #! PC = 0x5555569e38 *)
xor x22@uint64 x22 x10;
(* eor	x10, x11, x26                               #! PC = 0x5555569e3c *)
xor x10@uint64 x11 x26;
(* eor	x18, x18, x20                               #! PC = 0x5555569e40 *)
xor x18@uint64 x18 x20;
(* eor	x2, x15, x30                                #! PC = 0x5555569e44 *)
xor x2@uint64 x15 x30;
(* eor	x20, x13, x14                               #! PC = 0x5555569e48 *)
xor x20@uint64 x13 x14;
(* eor	x19, x19, #0x1                              #! PC = 0x5555569e4c *)
xor x19@uint64 x19 0x1@uint64;
(* eor	x27, x10, x27                               #! PC = 0x5555569e50 *)
xor x27@uint64 x10 x27;
(* eor	x12, x23, x12                               #! PC = 0x5555569e54 *)
xor x12@uint64 x23 x12;
(* eor	x10, x21, x17                               #! PC = 0x5555569e58 *)
xor x10@uint64 x21 x17;
(* eor	x23, x8, x1                                 #! PC = 0x5555569e5c *)
xor x23@uint64 x8 x1;
(* eor	x12, x12, x19                               #! PC = 0x5555569e60 *)
xor x12@uint64 x12 x19;
(* eor	x6, x6, x24                                 #! PC = 0x5555569e64 *)
xor x6@uint64 x6 x24;
(* eor	x2, x2, x10                                 #! PC = 0x5555569e68 *)
xor x2@uint64 x2 x10;
(* eor	x20, x23, x20                               #! PC = 0x5555569e6c *)
xor x20@uint64 x23 x20;
(* eor	x23, x20, x5                                #! PC = 0x5555569e70 *)
xor x23@uint64 x20 x5;
(* eor	x10, x2, x6                                 #! PC = 0x5555569e74 *)
xor x10@uint64 x2 x6;
(* eor	x22, x22, x4                                #! PC = 0x5555569e78 *)
xor x22@uint64 x22 x4;
(* eor	x27, x27, x18                               #! PC = 0x5555569e7c *)
xor x27@uint64 x27 x18;
(* eor	x2, x10, x12, ror #63                       #! PC = 0x5555569e80 *)
ror x12_r x12 63;
xor x2@uint64 x10 x12_r;
(* eor	x0, x12, x23, ror #63                       #! PC = 0x5555569e84 *)
ror x23_r x23 63;
xor x0@uint64 x12 x23_r;
(* eor	x20, x27, x22, ror #63                      #! PC = 0x5555569e88 *)
ror x22_r x22 63;
xor x20@uint64 x27 x22_r;
(* eor	x11, x11, x2                                #! PC = 0x5555569e8c *)
xor x11@uint64 x11 x2;
(* eor	x27, x23, x27, ror #63                      #! PC = 0x5555569e90 *)
ror x27_r x27 63;
xor x27@uint64 x23 x27_r;
(* eor	x22, x22, x10, ror #63                      #! PC = 0x5555569e94 *)
ror x10_r x10 63;
xor x22@uint64 x22 x10_r;
(* eor	x9, x9, x2                                  #! PC = 0x5555569e98 *)
xor x9@uint64 x9 x2;
(* eor	x10, x26, x2                                #! PC = 0x5555569e9c *)
xor x10@uint64 x26 x2;
(* eor	x16, x16, x2                                #! PC = 0x5555569ea0 *)
xor x16@uint64 x16 x2;
(* eor	x18, x18, x2                                #! PC = 0x5555569ea4 *)
xor x18@uint64 x18 x2;
(* ldp	x2, x23, [sp, #104]                         #! EA = L0x7fffffeaa8; Value = 0xd05eb1ccbc077554; PC = 0x5555569ea8 *)
mov x2 L0x7fffffeaa8;
mov x23 L0x7fffffeab0;
(* eor	x7, x7, x20                                 #! PC = 0x5555569eac *)
xor x7@uint64 x7 x20;
(* eor	x14, x14, x22                               #! PC = 0x5555569eb0 *)
xor x14@uint64 x14 x22;
(* eor	x15, x15, x27                               #! PC = 0x5555569eb4 *)
xor x15@uint64 x15 x27;
(* eor	x17, x17, x27                               #! PC = 0x5555569eb8 *)
xor x17@uint64 x17 x27;
(* ror	x7, x7, #28                                 #! PC = 0x5555569ebc *)
ror x7@uint64 x7 28;
(* eor	x21, x21, x27                               #! PC = 0x5555569ec0 *)
xor x21@uint64 x21 x27;
(* eor	x6, x6, x27                                 #! PC = 0x5555569ec4 *)
xor x6@uint64 x6 x27;
(* eor	x30, x30, x27                               #! PC = 0x5555569ec8 *)
xor x30@uint64 x30 x27;
(* ror	x18, x18, #37                               #! PC = 0x5555569ecc *)
ror x18@uint64 x18 37;
(* eor	x26, x2, x0                                 #! PC = 0x5555569ed0 *)
xor x26@uint64 x2 x0;
(* eor	x2, x23, x0                                 #! PC = 0x5555569ed4 *)
xor x2@uint64 x23 x0;
(* ldp	x27, x12, [sp, #120]                        #! EA = L0x7fffffeab8; Value = 0xbd382ae190900aa2; PC = 0x5555569ed8 *)
mov x27 L0x7fffffeab8;
mov x12 L0x7fffffeac0;
(* ror	x2, x2, #54                                 #! PC = 0x5555569edc *)
ror x2@uint64 x2 54;
(* eor	x1, x1, x22                                 #! PC = 0x5555569ee0 *)
xor x1@uint64 x1 x22;
(* eor	x8, x8, x22                                 #! PC = 0x5555569ee4 *)
xor x8@uint64 x8 x22;
(* eor	x13, x13, x22                               #! PC = 0x5555569ee8 *)
xor x13@uint64 x13 x22;
(* eor	x5, x5, x22                                 #! PC = 0x5555569eec *)
xor x5@uint64 x5 x22;
(* ror	x22, x14, #49                               #! PC = 0x5555569ef0 *)
ror x22@uint64 x14 49;
(* bic	x14, x2, x7                                 #! PC = 0x5555569ef4 *)
not x7_not@uint64 x7;
and x14@uint64 x2 x7_not;
(* ror	x9, x9, #50                                 #! PC = 0x5555569ef8 *)
ror x9@uint64 x9 50;
(* eor	x14, x14, x18                               #! PC = 0x5555569efc *)
xor x14@uint64 x14 x18;
(* ror	x17, x17, #43                               #! PC = 0x5555569f00 *)
ror x17@uint64 x17 43;
(* eor	x3, x3, x20                                 #! PC = 0x5555569f04 *)
xor x3@uint64 x3 x20;
(* ror	x13, x13, #21                               #! PC = 0x5555569f08 *)
ror x13@uint64 x13 21;
(* str	x14, [sp, #112]                             #! EA = L0x7fffffeab0; PC = 0x5555569f0c *)
mov L0x7fffffeab0 x14;
(* bic	x14, x9, x17                                #! PC = 0x5555569f10 *)
not x17_not@uint64 x17;
and x14@uint64 x9 x17_not;
(* eor	x14, x14, x13                               #! PC = 0x5555569f14 *)
xor x14@uint64 x14 x13;
(* ror	x10, x10, #25                               #! PC = 0x5555569f18 *)
ror x10@uint64 x10 25;
(* ror	x30, x30, #9                                #! PC = 0x5555569f1c *)
ror x30@uint64 x30 9;
(* ror	x3, x3, #61                                 #! PC = 0x5555569f20 *)
ror x3@uint64 x3 61;
(* ror	x11, x11, #44                               #! PC = 0x5555569f24 *)
ror x11@uint64 x11 44;
(* ror	x1, x1, #58                                 #! PC = 0x5555569f28 *)
ror x1@uint64 x1 58;
(* str	x14, [sp, #104]                             #! EA = L0x7fffffeaa8; PC = 0x5555569f2c *)
mov L0x7fffffeaa8 x14;
(* ror	x21, x21, #39                               #! PC = 0x5555569f30 *)
ror x21@uint64 x21 39;
(* ldr	x14, [sp, #112]                             #! EA = L0x7fffffeab0; Value = 0x42c7163f461a3bcf; PC = 0x5555569f34 *)
mov x14 L0x7fffffeab0;
(* ror	x8, x8, #2                                  #! PC = 0x5555569f38 *)
ror x8@uint64 x8 2;
(* ror	x26, x26, #63                               #! PC = 0x5555569f3c *)
ror x26@uint64 x26 63;
(* bic	x24, x21, x1                                #! PC = 0x5555569f40 *)
not x1_not@uint64 x1;
and x24@uint64 x21 x1_not;
(* ror	x15, x15, #36                               #! PC = 0x5555569f44 *)
ror x15@uint64 x15 36;
(* eor	x23, x4, x0                                 #! PC = 0x5555569f48 *)
xor x23@uint64 x4 x0;
(* eor	x27, x27, x0                                #! PC = 0x5555569f4c *)
xor x27@uint64 x27 x0;
(* bic	x4, x3, x11                                 #! PC = 0x5555569f50 *)
not x11_not@uint64 x11;
and x4@uint64 x3 x11_not;
(* eor	x12, x12, x0                                #! PC = 0x5555569f54 *)
xor x12@uint64 x12 x0;
(* bic	x0, x10, x30                                #! PC = 0x5555569f58 *)
not x30_not@uint64 x30;
and x0@uint64 x10 x30_not;
(* eor	x4, x4, x15                                 #! PC = 0x5555569f5c *)
xor x4@uint64 x4 x15;
(* eor	x24, x24, x26                               #! PC = 0x5555569f60 *)
xor x24@uint64 x24 x26;
(* eor	x0, x0, x8                                  #! PC = 0x5555569f64 *)
xor x0@uint64 x0 x8;
(* eor	x19, x19, x20                               #! PC = 0x5555569f68 *)
xor x19@uint64 x19 x20;
(* ror	x12, x12, #20                               #! PC = 0x5555569f6c *)
ror x12@uint64 x12 20;
(* eor	x14, x14, x0                                #! PC = 0x5555569f70 *)
xor x14@uint64 x14 x0;
(* eor	x25, x25, x20                               #! PC = 0x5555569f74 *)
xor x25@uint64 x25 x20;
(* eor	x28, x28, x20                               #! PC = 0x5555569f78 *)
xor x28@uint64 x28 x20;
(* eor	x20, x4, x24                                #! PC = 0x5555569f7c *)
xor x20@uint64 x4 x24;
(* eor	x20, x20, x14                               #! PC = 0x5555569f80 *)
xor x20@uint64 x20 x14;
(* bic	x14, x13, x12                               #! PC = 0x5555569f84 *)
not x12_not@uint64 x12;
and x14@uint64 x13 x12_not;
(* bic	x13, x17, x13                               #! PC = 0x5555569f88 *)
not x13_not@uint64 x13;
and x13@uint64 x17 x13_not;
(* ror	x5, x5, #3                                  #! PC = 0x5555569f8c *)
ror x5@uint64 x5 3;
(* eor	x13, x13, x12                               #! PC = 0x5555569f90 *)
xor x13@uint64 x13 x12;
(* ror	x27, x27, #19                               #! PC = 0x5555569f94 *)
ror x27@uint64 x27 19;
(* eor	x14, x14, x19                               #! PC = 0x5555569f98 *)
xor x14@uint64 x14 x19;
(* bic	x12, x12, x19                               #! PC = 0x5555569f9c *)
not x19_not@uint64 x19;
and x12@uint64 x12 x19_not;
(* bic	x19, x19, x9                                #! PC = 0x5555569fa0 *)
not x9_not@uint64 x9;
and x19@uint64 x19 x9_not;
(* ror	x25, x25, #46                               #! PC = 0x5555569fa4 *)
ror x25@uint64 x25 46;
(* eor	x17, x19, x17                               #! PC = 0x5555569fa8 *)
xor x17@uint64 x19 x17;
(* bic	x19, x5, x27                                #! PC = 0x5555569fac *)
not x27_not@uint64 x27;
and x19@uint64 x5 x27_not;
(* eor	x19, x19, x3                                #! PC = 0x5555569fb0 *)
xor x19@uint64 x19 x3;
(* bic	x3, x27, x3                                 #! PC = 0x5555569fb4 *)
not x3_not@uint64 x3;
and x3@uint64 x27 x3_not;
(* eor	x3, x3, x11                                 #! PC = 0x5555569fb8 *)
xor x3@uint64 x3 x11;
(* ror	x16, x16, #56                               #! PC = 0x5555569fbc *)
ror x16@uint64 x16 56;
(* bic	x11, x11, x15                               #! PC = 0x5555569fc0 *)
not x15_not@uint64 x15;
and x11@uint64 x11 x15_not;
(* str	x20, [sp, #120]                             #! EA = L0x7fffffeab8; PC = 0x5555569fc4 *)
mov L0x7fffffeab8 x20;
(* mov	x20, #0x8082                	// #32898      #! PC = 0x5555569fc8 *)
mov x20 0x8082@uint64;
(* eor	x11, x11, x5                                #! PC = 0x5555569fcc *)
xor x11@uint64 x11 x5;
(* eor	x14, x14, x20                               #! PC = 0x5555569fd0 *)
xor x14@uint64 x14 x20;
(* bic	x15, x15, x5                                #! PC = 0x5555569fd4 *)
not x5_not@uint64 x5;
and x15@uint64 x15 x5_not;
(* bic	x20, x25, x16                               #! PC = 0x5555569fd8 *)
not x16_not@uint64 x16;
and x20@uint64 x25 x16_not;
(* bic	x5, x16, x21                                #! PC = 0x5555569fdc *)
not x21_not@uint64 x21;
and x5@uint64 x16 x21_not;
(* eor	x15, x15, x27                               #! PC = 0x5555569fe0 *)
xor x15@uint64 x15 x27;
(* eor	x21, x20, x21                               #! PC = 0x5555569fe4 *)
xor x21@uint64 x20 x21;
(* bic	x27, x1, x26                                #! PC = 0x5555569fe8 *)
not x26_not@uint64 x26;
and x27@uint64 x1 x26_not;
(* bic	x20, x26, x25                               #! PC = 0x5555569fec *)
not x25_not@uint64 x25;
and x20@uint64 x26 x25_not;
(* eor	x1, x5, x1                                  #! PC = 0x5555569ff0 *)
xor x1@uint64 x5 x1;
(* bic	x5, x22, x2                                 #! PC = 0x5555569ff4 *)
not x2_not@uint64 x2;
and x5@uint64 x22 x2_not;
(* eor	x16, x20, x16                               #! PC = 0x5555569ff8 *)
xor x16@uint64 x20 x16;
(* ror	x6, x6, #8                                  #! PC = 0x5555569ffc *)
ror x6@uint64 x6 8;
(* bic	x20, x7, x18                                #! PC = 0x555556a000 *)
not x18_not@uint64 x18;
and x20@uint64 x7 x18_not;
(* eor	x7, x5, x7                                  #! PC = 0x555556a004 *)
xor x7@uint64 x5 x7;
(* ldr	x5, [sp, #104]                              #! EA = L0x7fffffeaa8; Value = 0xd384f6beee49db6b; PC = 0x555556a008 *)
mov x5 L0x7fffffeaa8;
(* bic	x26, x6, x22                                #! PC = 0x555556a00c *)
not x22_not@uint64 x22;
and x26@uint64 x6 x22_not;
(* ror	x28, x28, #23                               #! PC = 0x555556a010 *)
ror x28@uint64 x28 23;
(* eor	x2, x26, x2                                 #! PC = 0x555556a014 *)
xor x2@uint64 x26 x2;
(* ror	x23, x23, #62                               #! PC = 0x555556a018 *)
ror x23@uint64 x23 62;
(* bic	x26, x30, x8                                #! PC = 0x555556a01c *)
not x8_not@uint64 x8;
and x26@uint64 x30 x8_not;
(* bic	x18, x18, x6                                #! PC = 0x555556a020 *)
not x6_not@uint64 x6;
and x18@uint64 x18 x6_not;
(* eor	x18, x18, x22                               #! PC = 0x555556a024 *)
xor x18@uint64 x18 x22;
(* eor	x6, x20, x6                                 #! PC = 0x555556a028 *)
xor x6@uint64 x20 x6;
(* eor	x26, x26, x23                               #! PC = 0x555556a02c *)
xor x26@uint64 x26 x23;
(* eor	x20, x5, x19                                #! PC = 0x555556a030 *)
xor x20@uint64 x5 x19;
(* bic	x22, x23, x28                               #! PC = 0x555556a034 *)
not x28_not@uint64 x28;
and x22@uint64 x23 x28_not;
(* eor	x5, x21, x2                                 #! PC = 0x555556a038 *)
xor x5@uint64 x21 x2;
(* bic	x23, x8, x23                                #! PC = 0x555556a03c *)
not x23_not@uint64 x23;
and x23@uint64 x8 x23_not;
(* eor	x12, x12, x9                                #! PC = 0x555556a040 *)
xor x12@uint64 x12 x9;
(* eor	x25, x27, x25                               #! PC = 0x555556a044 *)
xor x25@uint64 x27 x25;
(* eor	x9, x13, x3                                 #! PC = 0x555556a048 *)
xor x9@uint64 x13 x3;
(* bic	x27, x28, x10                               #! PC = 0x555556a04c *)
not x10_not@uint64 x10;
and x27@uint64 x28 x10_not;
(* eor	x8, x1, x7                                  #! PC = 0x555556a050 *)
xor x8@uint64 x1 x7;
(* eor	x5, x20, x5                                 #! PC = 0x555556a054 *)
xor x5@uint64 x20 x5;
(* eor	x20, x23, x28                               #! PC = 0x555556a058 *)
xor x20@uint64 x23 x28;
(* ldr	x23, [sp, #120]                             #! EA = L0x7fffffeab8; Value = 0xf1cbc7f652037cfd; PC = 0x555556a05c *)
mov x23 L0x7fffffeab8;
(* eor	x22, x22, x10                               #! PC = 0x555556a060 *)
xor x22@uint64 x22 x10;
(* eor	x27, x27, x30                               #! PC = 0x555556a064 *)
xor x27@uint64 x27 x30;
(* eor	x10, x11, x25                               #! PC = 0x555556a068 *)
xor x10@uint64 x11 x25;
(* eor	x30, x6, x26                                #! PC = 0x555556a06c *)
xor x30@uint64 x6 x26;
(* eor	x28, x16, x18                               #! PC = 0x555556a070 *)
xor x28@uint64 x16 x18;
(* eor	x8, x9, x8                                  #! PC = 0x555556a074 *)
xor x8@uint64 x9 x8;
(* eor	x9, x17, x15                                #! PC = 0x555556a078 *)
xor x9@uint64 x17 x15;
(* eor	x10, x10, x30                               #! PC = 0x555556a07c *)
xor x10@uint64 x10 x30;
(* eor	x28, x9, x28                                #! PC = 0x555556a080 *)
xor x28@uint64 x9 x28;
(* eor	x8, x8, x27                                 #! PC = 0x555556a084 *)
xor x8@uint64 x8 x27;
(* eor	x9, x28, x20                                #! PC = 0x555556a088 *)
xor x9@uint64 x28 x20;
(* eor	x30, x23, x14                               #! PC = 0x555556a08c *)
xor x30@uint64 x23 x14;
(* eor	x10, x10, x12                               #! PC = 0x555556a090 *)
xor x10@uint64 x10 x12;
(* eor	x23, x5, x22                                #! PC = 0x555556a094 *)
xor x23@uint64 x5 x22;
(* eor	x28, x30, x23, ror #63                      #! PC = 0x555556a098 *)
ror x23_r x23 63;
xor x28@uint64 x30 x23_r;
(* eor	x30, x9, x30, ror #63                       #! PC = 0x555556a09c *)
ror x30_r x30 63;
xor x30@uint64 x9 x30_r;
(* eor	x23, x23, x10, ror #63                      #! PC = 0x555556a0a0 *)
ror x10_r x10 63;
xor x23@uint64 x23 x10_r;
(* eor	x9, x8, x9, ror #63                         #! PC = 0x555556a0a4 *)
ror x9_r x9 63;
xor x9@uint64 x8 x9_r;
(* eor	x10, x10, x8, ror #63                       #! PC = 0x555556a0a8 *)
ror x8_r x8 63;
xor x10@uint64 x10 x8_r;
(* eor	x7, x7, x28                                 #! PC = 0x555556a0ac *)
xor x7@uint64 x7 x28;
(* ldr	x8, [sp, #104]                              #! EA = L0x7fffffeaa8; Value = 0xd384f6beee49db6b; PC = 0x555556a0b0 *)
mov x8 L0x7fffffeaa8;
(* eor	x24, x24, x10                               #! PC = 0x555556a0b4 *)
xor x24@uint64 x24 x10;
(* eor	x21, x21, x9                                #! PC = 0x555556a0b8 *)
xor x21@uint64 x21 x9;
(* eor	x22, x22, x9                                #! PC = 0x555556a0bc *)
xor x22@uint64 x22 x9;
(* eor	x19, x19, x9                                #! PC = 0x555556a0c0 *)
xor x19@uint64 x19 x9;
(* eor	x2, x2, x9                                  #! PC = 0x555556a0c4 *)
xor x2@uint64 x2 x9;
(* eor	x9, x8, x9                                  #! PC = 0x555556a0c8 *)
xor x9@uint64 x8 x9;
(* eor	x8, x3, x28                                 #! PC = 0x555556a0cc *)
xor x8@uint64 x3 x28;
(* ldr	x3, [sp, #112]                              #! EA = L0x7fffffeab0; Value = 0x42c7163f461a3bcf; PC = 0x555556a0d0 *)
mov x3 L0x7fffffeab0;
(* eor	x5, x17, x23                                #! PC = 0x555556a0d4 *)
xor x5@uint64 x17 x23;
(* eor	x11, x11, x30                               #! PC = 0x555556a0d8 *)
xor x11@uint64 x11 x30;
(* ror	x7, x7, #19                                 #! PC = 0x555556a0dc *)
ror x7@uint64 x7 19;
(* eor	x18, x18, x23                               #! PC = 0x555556a0e0 *)
xor x18@uint64 x18 x23;
(* ror	x24, x24, #61                               #! PC = 0x555556a0e4 *)
ror x24@uint64 x24 61;
(* eor	x16, x16, x23                               #! PC = 0x555556a0e8 *)
xor x16@uint64 x16 x23;
(* eor	x6, x6, x30                                 #! PC = 0x555556a0ec *)
xor x6@uint64 x6 x30;
(* eor	x14, x14, x10                               #! PC = 0x555556a0f0 *)
xor x14@uint64 x14 x10;
(* ror	x5, x5, #36                                 #! PC = 0x555556a0f4 *)
ror x5@uint64 x5 36;
(* eor	x13, x13, x28                               #! PC = 0x555556a0f8 *)
xor x13@uint64 x13 x28;
(* ror	x11, x11, #44                               #! PC = 0x555556a0fc *)
ror x11@uint64 x11 44;
(* eor	x0, x0, x10                                 #! PC = 0x555556a100 *)
xor x0@uint64 x0 x10;
(* eor	x4, x4, x10                                 #! PC = 0x555556a104 *)
xor x4@uint64 x4 x10;
(* eor	x10, x3, x10                                #! PC = 0x555556a108 *)
xor x10@uint64 x3 x10;
(* bic	x3, x7, x24                                 #! PC = 0x555556a10c *)
not x24_not@uint64 x24;
and x3@uint64 x7 x24_not;
(* ror	x16, x16, #39                               #! PC = 0x555556a110 *)
ror x16@uint64 x16 39;
(* ror	x18, x18, #43                               #! PC = 0x555556a114 *)
ror x18@uint64 x18 43;
(* ror	x6, x6, #56                                 #! PC = 0x555556a118 *)
ror x6@uint64 x6 56;
(* ror	x21, x21, #21                               #! PC = 0x555556a11c *)
ror x21@uint64 x21 21;
(* eor	x3, x3, x11                                 #! PC = 0x555556a120 *)
xor x3@uint64 x3 x11;
(* ror	x22, x22, #3                                #! PC = 0x555556a124 *)
ror x22@uint64 x22 3;
(* eor	x1, x1, x28                                 #! PC = 0x555556a128 *)
xor x1@uint64 x1 x28;
(* eor	x15, x15, x23                               #! PC = 0x555556a12c *)
xor x15@uint64 x15 x23;
(* eor	x12, x12, x30                               #! PC = 0x555556a130 *)
xor x12@uint64 x12 x30;
(* eor	x23, x20, x23                               #! PC = 0x555556a134 *)
xor x23@uint64 x20 x23;
(* eor	x27, x27, x28                               #! PC = 0x555556a138 *)
xor x27@uint64 x27 x28;
(* bic	x28, x11, x5                                #! PC = 0x555556a13c *)
not x5_not@uint64 x5;
and x28@uint64 x11 x5_not;
(* bic	x11, x24, x11                               #! PC = 0x555556a140 *)
not x11_not@uint64 x11;
and x11@uint64 x24 x11_not;
(* ror	x13, x13, #63                               #! PC = 0x555556a144 *)
ror x13@uint64 x13 63;
(* ror	x0, x0, #46                                 #! PC = 0x555556a148 *)
ror x0@uint64 x0 46;
(* bic	x20, x6, x16                                #! PC = 0x555556a14c *)
not x16_not@uint64 x16;
and x20@uint64 x6 x16_not;
(* ror	x19, x19, #58                               #! PC = 0x555556a150 *)
ror x19@uint64 x19 58;
(* eor	x11, x11, x5                                #! PC = 0x555556a154 *)
xor x11@uint64 x11 x5;
(* ror	x8, x8, #20                                 #! PC = 0x555556a158 *)
ror x8@uint64 x8 20;
(* eor	x26, x26, x30                               #! PC = 0x555556a15c *)
xor x26@uint64 x26 x30;
(* eor	x25, x25, x30                               #! PC = 0x555556a160 *)
xor x25@uint64 x25 x30;
(* bic	x5, x5, x22                                 #! PC = 0x555556a164 *)
not x22_not@uint64 x22;
and x5@uint64 x5 x22_not;
(* bic	x30, x18, x21                               #! PC = 0x555556a168 *)
not x21_not@uint64 x21;
and x30@uint64 x18 x21_not;
(* ror	x12, x12, #37                               #! PC = 0x555556a16c *)
ror x12@uint64 x12 37;
(* ror	x4, x4, #28                                 #! PC = 0x555556a170 *)
ror x4@uint64 x4 28;
(* eor	x20, x20, x19                               #! PC = 0x555556a174 *)
xor x20@uint64 x20 x19;
(* ror	x23, x23, #8                                #! PC = 0x555556a178 *)
ror x23@uint64 x23 8;
(* eor	x30, x30, x8                                #! PC = 0x555556a17c *)
xor x30@uint64 x30 x8;
(* eor	x28, x28, x22                               #! PC = 0x555556a180 *)
xor x28@uint64 x28 x22;
(* eor	x5, x5, x7                                  #! PC = 0x555556a184 *)
xor x5@uint64 x5 x7;
(* bic	x22, x22, x7                                #! PC = 0x555556a188 *)
not x7_not@uint64 x7;
and x22@uint64 x22 x7_not;
(* bic	x7, x13, x0                                 #! PC = 0x555556a18c *)
not x0_not@uint64 x0;
and x7@uint64 x13 x0_not;
(* stp	x3, x30, [sp, #104]                         #! EA = L0x7fffffeaa8; PC = 0x555556a190 *)
mov L0x7fffffeaa8 x3;
mov L0x7fffffeab0 x30;
(* bic	x3, x19, x13                                #! PC = 0x555556a194 *)
not x13_not@uint64 x13;
and x3@uint64 x19 x13_not;
(* bic	x19, x16, x19                               #! PC = 0x555556a198 *)
not x19_not@uint64 x19;
and x19@uint64 x16 x19_not;
(* ror	x1, x1, #54                                 #! PC = 0x555556a19c *)
ror x1@uint64 x1 54;
(* eor	x3, x3, x0                                  #! PC = 0x555556a1a0 *)
xor x3@uint64 x3 x0;
(* ror	x26, x26, #50                               #! PC = 0x555556a1a4 *)
ror x26@uint64 x26 50;
(* eor	x19, x19, x13                               #! PC = 0x555556a1a8 *)
xor x19@uint64 x19 x13;
(* ror	x2, x2, #49                                 #! PC = 0x555556a1ac *)
ror x2@uint64 x2 49;
(* bic	x13, x4, x12                                #! PC = 0x555556a1b0 *)
not x12_not@uint64 x12;
and x13@uint64 x4 x12_not;
(* bic	x0, x0, x6                                  #! PC = 0x555556a1b4 *)
not x6_not@uint64 x6;
and x0@uint64 x0 x6_not;
(* eor	x6, x7, x6                                  #! PC = 0x555556a1b8 *)
xor x6@uint64 x7 x6;
(* bic	x7, x12, x23                                #! PC = 0x555556a1bc *)
not x23_not@uint64 x23;
and x7@uint64 x12 x23_not;
(* bic	x17, x2, x1                                 #! PC = 0x555556a1c0 *)
not x1_not@uint64 x1;
and x17@uint64 x2 x1_not;
(* eor	x13, x13, x23                               #! PC = 0x555556a1c4 *)
xor x13@uint64 x13 x23;
(* bic	x23, x23, x2                                #! PC = 0x555556a1c8 *)
not x2_not@uint64 x2;
and x23@uint64 x23 x2_not;
(* eor	x2, x7, x2                                  #! PC = 0x555556a1cc *)
xor x2@uint64 x7 x2;
(* bic	x7, x14, x26                                #! PC = 0x555556a1d0 *)
not x26_not@uint64 x26;
and x7@uint64 x14 x26_not;
(* eor	x17, x17, x4                                #! PC = 0x555556a1d4 *)
xor x17@uint64 x17 x4;
(* eor	x23, x23, x1                                #! PC = 0x555556a1d8 *)
xor x23@uint64 x23 x1;
(* bic	x4, x1, x4                                  #! PC = 0x555556a1dc *)
not x4_not@uint64 x4;
and x4@uint64 x1 x4_not;
(* bic	x1, x26, x18                                #! PC = 0x555556a1e0 *)
not x18_not@uint64 x18;
and x1@uint64 x26 x18_not;
(* eor	x18, x7, x18                                #! PC = 0x555556a1e4 *)
xor x18@uint64 x7 x18;
(* ldr	x7, [sp, #104]                              #! EA = L0x7fffffeaa8; Value = 0x4720e377efa6a80b; PC = 0x555556a1e8 *)
mov x7 L0x7fffffeaa8;
(* ror	x25, x25, #25                               #! PC = 0x555556a1ec *)
ror x25@uint64 x25 25;
(* ror	x15, x15, #9                                #! PC = 0x555556a1f0 *)
ror x15@uint64 x15 9;
(* ror	x9, x9, #2                                  #! PC = 0x555556a1f4 *)
ror x9@uint64 x9 2;
(* ror	x10, x10, #23                               #! PC = 0x555556a1f8 *)
ror x10@uint64 x10 23;
(* eor	x22, x22, x24                               #! PC = 0x555556a1fc *)
xor x22@uint64 x22 x24;
(* ror	x27, x27, #62                               #! PC = 0x555556a200 *)
ror x27@uint64 x27 62;
(* bic	x24, x15, x9                                #! PC = 0x555556a204 *)
not x9_not@uint64 x9;
and x24@uint64 x15 x9_not;
(* eor	x0, x0, x16                                 #! PC = 0x555556a208 *)
xor x0@uint64 x0 x16;
(* eor	x1, x1, x21                                 #! PC = 0x555556a20c *)
xor x1@uint64 x1 x21;
(* bic	x16, x25, x15                               #! PC = 0x555556a210 *)
not x15_not@uint64 x15;
and x16@uint64 x25 x15_not;
(* bic	x21, x21, x8                                #! PC = 0x555556a214 *)
not x8_not@uint64 x8;
and x21@uint64 x21 x8_not;
(* bic	x8, x8, x14                                 #! PC = 0x555556a218 *)
not x14_not@uint64 x14;
and x8@uint64 x8 x14_not;
(* eor	x24, x24, x27                               #! PC = 0x555556a21c *)
xor x24@uint64 x24 x27;
(* eor	x4, x4, x12                                 #! PC = 0x555556a220 *)
xor x4@uint64 x4 x12;
(* eor	x16, x16, x9                                #! PC = 0x555556a224 *)
xor x16@uint64 x16 x9;
(* bic	x12, x10, x25                               #! PC = 0x555556a228 *)
not x25_not@uint64 x25;
and x12@uint64 x10 x25_not;
(* eor	x8, x8, x26                                 #! PC = 0x555556a22c *)
xor x8@uint64 x8 x26;
(* bic	x9, x9, x27                                 #! PC = 0x555556a230 *)
not x27_not@uint64 x27;
and x9@uint64 x9 x27_not;
(* eor	x30, x30, x7                                #! PC = 0x555556a234 *)
xor x30@uint64 x30 x7;
(* mov	x26, #0x808a                	// #32906      #! PC = 0x555556a238 *)
mov x26 0x808a@uint64;
(* eor	x7, x20, x17                                #! PC = 0x555556a23c *)
xor x7@uint64 x20 x17;
(* eor	x15, x12, x15                               #! PC = 0x555556a240 *)
xor x15@uint64 x12 x15;
(* eor	x9, x9, x10                                 #! PC = 0x555556a244 *)
xor x9@uint64 x9 x10;
(* eor	x12, x11, x19                               #! PC = 0x555556a248 *)
xor x12@uint64 x11 x19;
(* bic	x27, x27, x10                               #! PC = 0x555556a24c *)
not x10_not@uint64 x10;
and x27@uint64 x27 x10_not;
(* eor	x21, x21, x14                               #! PC = 0x555556a250 *)
xor x21@uint64 x21 x14;
(* eor	x10, x4, x16                                #! PC = 0x555556a254 *)
xor x10@uint64 x4 x16;
(* eor	x14, x28, x3                                #! PC = 0x555556a258 *)
xor x14@uint64 x28 x3;
(* eor	x30, x30, x7                                #! PC = 0x555556a25c *)
xor x30@uint64 x30 x7;
(* movk	x26, #0x8000, lsl #48                      #! PC = 0x555556a260 *)
shl tmp 0x8000@uint64 48;
and x26_m@uint64 x26 0x0000ffffffffffff@uint64;
or x26@uint64 x26_m tmp;
(* eor	x7, x13, x24                                #! PC = 0x555556a264 *)
xor x7@uint64 x13 x24;
(* eor	x27, x27, x25                               #! PC = 0x555556a268 *)
xor x27@uint64 x27 x25;
(* eor	x21, x21, x26                               #! PC = 0x555556a26c *)
xor x21@uint64 x21 x26;
(* eor	x25, x18, x5                                #! PC = 0x555556a270 *)
xor x25@uint64 x18 x5;
(* eor	x26, x1, x22                                #! PC = 0x555556a274 *)
xor x26@uint64 x1 x22;
(* eor	x12, x12, x10                               #! PC = 0x555556a278 *)
xor x12@uint64 x12 x10;
(* eor	x7, x14, x7                                 #! PC = 0x555556a27c *)
xor x7@uint64 x14 x7;
(* eor	x10, x0, x23                                #! PC = 0x555556a280 *)
xor x10@uint64 x0 x23;
(* eor	x14, x6, x2                                 #! PC = 0x555556a284 *)
xor x14@uint64 x6 x2;
(* eor	x30, x30, x15                               #! PC = 0x555556a288 *)
xor x30@uint64 x30 x15;
(* eor	x7, x7, x8                                  #! PC = 0x555556a28c *)
xor x7@uint64 x7 x8;
(* eor	x26, x26, x10                               #! PC = 0x555556a290 *)
xor x26@uint64 x26 x10;
(* eor	x14, x25, x14                               #! PC = 0x555556a294 *)
xor x14@uint64 x25 x14;
(* eor	x12, x12, x21                               #! PC = 0x555556a298 *)
xor x12@uint64 x12 x21;
(* eor	x26, x26, x27                               #! PC = 0x555556a29c *)
xor x26@uint64 x26 x27;
(* eor	x14, x14, x9                                #! PC = 0x555556a2a0 *)
xor x14@uint64 x14 x9;
(* eor	x25, x7, x30, ror #63                       #! PC = 0x555556a2a4 *)
ror x30_r x30 63;
xor x25@uint64 x7 x30_r;
(* eor	x7, x26, x7, ror #63                        #! PC = 0x555556a2a8 *)
ror x7_r x7 63;
xor x7@uint64 x26 x7_r;
(* eor	x10, x14, x12, ror #63                      #! PC = 0x555556a2ac *)
ror x12_r x12 63;
xor x10@uint64 x14 x12_r;
(* eor	x18, x18, x7                                #! PC = 0x555556a2b0 *)
xor x18@uint64 x18 x7;
(* eor	x14, x30, x14, ror #63                      #! PC = 0x555556a2b4 *)
ror x14_r x14 63;
xor x14@uint64 x30 x14_r;
(* eor	x2, x2, x7                                  #! PC = 0x555556a2b8 *)
xor x2@uint64 x2 x7;
(* eor	x6, x6, x7                                  #! PC = 0x555556a2bc *)
xor x6@uint64 x6 x7;
(* eor	x9, x9, x7                                  #! PC = 0x555556a2c0 *)
xor x9@uint64 x9 x7;
(* eor	x5, x5, x7                                  #! PC = 0x555556a2c4 *)
xor x5@uint64 x5 x7;
(* eor	x26, x12, x26, ror #63                      #! PC = 0x555556a2c8 *)
ror x26_r x26 63;
xor x26@uint64 x12 x26_r;
(* ldp	x7, x30, [sp, #104]                         #! EA = L0x7fffffeaa8; Value = 0x4720e377efa6a80b; PC = 0x555556a2cc *)
mov x7 L0x7fffffeaa8;
mov x30 L0x7fffffeab0;
(* eor	x24, x24, x10                               #! PC = 0x555556a2d0 *)
xor x24@uint64 x24 x10;
(* eor	x17, x17, x26                               #! PC = 0x555556a2d4 *)
xor x17@uint64 x17 x26;
(* eor	x28, x28, x10                               #! PC = 0x555556a2d8 *)
xor x28@uint64 x28 x10;
(* eor	x13, x13, x10                               #! PC = 0x555556a2dc *)
xor x13@uint64 x13 x10;
(* eor	x8, x8, x10                                 #! PC = 0x555556a2e0 *)
xor x8@uint64 x8 x10;
(* eor	x0, x0, x14                                 #! PC = 0x555556a2e4 *)
xor x0@uint64 x0 x14;
(* eor	x10, x3, x10                                #! PC = 0x555556a2e8 *)
xor x10@uint64 x3 x10;
(* ror	x12, x24, #50                               #! PC = 0x555556a2ec *)
ror x12@uint64 x24 50;
(* eor	x7, x7, x26                                 #! PC = 0x555556a2f0 *)
xor x7@uint64 x7 x26;
(* ror	x2, x2, #43                                 #! PC = 0x555556a2f4 *)
ror x2@uint64 x2 43;
(* eor	x1, x1, x14                                 #! PC = 0x555556a2f8 *)
xor x1@uint64 x1 x14;
(* ror	x3, x17, #19                                #! PC = 0x555556a2fc *)
ror x3@uint64 x17 19;
(* ror	x10, x10, #25                               #! PC = 0x555556a300 *)
ror x10@uint64 x10 25;
(* ror	x0, x0, #21                                 #! PC = 0x555556a304 *)
ror x0@uint64 x0 21;
(* bic	x17, x12, x2                                #! PC = 0x555556a308 *)
not x2_not@uint64 x2;
and x17@uint64 x12 x2_not;
(* ror	x5, x5, #9                                  #! PC = 0x555556a30c *)
ror x5@uint64 x5 9;
(* eor	x19, x19, x25                               #! PC = 0x555556a310 *)
xor x19@uint64 x19 x25;
(* eor	x22, x22, x14                               #! PC = 0x555556a314 *)
xor x22@uint64 x22 x14;
(* eor	x27, x27, x14                               #! PC = 0x555556a318 *)
xor x27@uint64 x27 x14;
(* eor	x21, x21, x25                               #! PC = 0x555556a31c *)
xor x21@uint64 x21 x25;
(* ror	x1, x1, #2                                  #! PC = 0x555556a320 *)
ror x1@uint64 x1 2;
(* eor	x17, x17, x0                                #! PC = 0x555556a324 *)
xor x17@uint64 x17 x0;
(* ror	x24, x7, #20                                #! PC = 0x555556a328 *)
ror x24@uint64 x7 20;
(* eor	x30, x30, x26                               #! PC = 0x555556a32c *)
xor x30@uint64 x30 x26;
(* bic	x7, x10, x5                                 #! PC = 0x555556a330 *)
not x5_not@uint64 x5;
and x7@uint64 x10 x5_not;
(* ror	x28, x28, #44                               #! PC = 0x555556a334 *)
ror x28@uint64 x28 44;
(* eor	x23, x23, x14                               #! PC = 0x555556a338 *)
xor x23@uint64 x23 x14;
(* ror	x22, x22, #58                               #! PC = 0x555556a33c *)
ror x22@uint64 x22 58;
(* ror	x14, x27, #3                                #! PC = 0x555556a340 *)
ror x14@uint64 x27 3;
(* ror	x19, x19, #61                               #! PC = 0x555556a344 *)
ror x19@uint64 x19 61;
(* eor	x7, x7, x1                                  #! PC = 0x555556a348 *)
xor x7@uint64 x7 x1;
(* ror	x6, x6, #39                                 #! PC = 0x555556a34c *)
ror x6@uint64 x6 39;
(* eor	x11, x11, x25                               #! PC = 0x555556a350 *)
xor x11@uint64 x11 x25;
(* eor	x20, x20, x26                               #! PC = 0x555556a354 *)
xor x20@uint64 x20 x26;
(* stp	x7, x17, [sp, #112]                         #! EA = L0x7fffffeab0; PC = 0x555556a358 *)
mov L0x7fffffeab0 x7;
mov L0x7fffffeab8 x17;
(* bic	x17, x21, x12                               #! PC = 0x555556a35c *)
not x12_not@uint64 x12;
and x17@uint64 x21 x12_not;
(* ror	x18, x18, #36                               #! PC = 0x555556a360 *)
ror x18@uint64 x18 36;
(* bic	x27, x6, x22                                #! PC = 0x555556a364 *)
not x22_not@uint64 x22;
and x27@uint64 x6 x22_not;
(* ror	x30, x30, #63                               #! PC = 0x555556a368 *)
ror x30@uint64 x30 63;
(* bic	x7, x0, x24                                 #! PC = 0x555556a36c *)
not x24_not@uint64 x24;
and x7@uint64 x0 x24_not;
(* eor	x16, x16, x25                               #! PC = 0x555556a370 *)
xor x16@uint64 x16 x25;
(* eor	x4, x4, x25                                 #! PC = 0x555556a374 *)
xor x4@uint64 x4 x25;
(* bic	x0, x2, x0                                  #! PC = 0x555556a378 *)
not x0_not@uint64 x0;
and x0@uint64 x2 x0_not;
(* bic	x25, x19, x28                               #! PC = 0x555556a37c *)
not x28_not@uint64 x28;
and x25@uint64 x19 x28_not;
(* eor	x2, x17, x2                                 #! PC = 0x555556a380 *)
xor x2@uint64 x17 x2;
(* bic	x17, x14, x3                                #! PC = 0x555556a384 *)
not x3_not@uint64 x3;
and x17@uint64 x14 x3_not;
(* eor	x25, x25, x18                               #! PC = 0x555556a388 *)
xor x25@uint64 x25 x18;
(* eor	x27, x27, x30                               #! PC = 0x555556a38c *)
xor x27@uint64 x27 x30;
(* ror	x11, x11, #28                               #! PC = 0x555556a390 *)
ror x11@uint64 x11 28;
(* eor	x17, x17, x19                               #! PC = 0x555556a394 *)
xor x17@uint64 x17 x19;
(* ror	x20, x20, #54                               #! PC = 0x555556a398 *)
ror x20@uint64 x20 54;
(* ror	x16, x16, #46                               #! PC = 0x555556a39c *)
ror x16@uint64 x16 46;
(* ror	x13, x13, #56                               #! PC = 0x555556a3a0 *)
ror x13@uint64 x13 56;
(* ror	x8, x8, #37                                 #! PC = 0x555556a3a4 *)
ror x8@uint64 x8 37;
(* eor	x0, x0, x24                                 #! PC = 0x555556a3a8 *)
xor x0@uint64 x0 x24;
(* ror	x9, x9, #8                                  #! PC = 0x555556a3ac *)
ror x9@uint64 x9 8;
(* eor	x7, x7, x21                                 #! PC = 0x555556a3b0 *)
xor x7@uint64 x7 x21;
(* eor	x26, x15, x26                               #! PC = 0x555556a3b4 *)
xor x26@uint64 x15 x26;
(* bic	x24, x24, x21                               #! PC = 0x555556a3b8 *)
not x21_not@uint64 x21;
and x24@uint64 x24 x21_not;
(* ror	x15, x23, #49                               #! PC = 0x555556a3bc *)
ror x15@uint64 x23 49;
(* bic	x23, x20, x11                               #! PC = 0x555556a3c0 *)
not x11_not@uint64 x11;
and x23@uint64 x20 x11_not;
(* str	x2, [sp, #104]                              #! EA = L0x7fffffeaa8; PC = 0x555556a3c4 *)
mov L0x7fffffeaa8 x2;
(* eor	x2, x25, x27                                #! PC = 0x555556a3c8 *)
xor x2@uint64 x25 x27;
(* stp	x25, x27, [sp, #128]                        #! EA = L0x7fffffeac0; PC = 0x555556a3cc *)
mov L0x7fffffeac0 x25;
mov L0x7fffffeac8 x27;
(* mov	x25, x17                                    #! PC = 0x555556a3d0 *)
mov x25 x17;
(* bic	x27, x28, x18                               #! PC = 0x555556a3d4 *)
not x18_not@uint64 x18;
and x27@uint64 x28 x18_not;
(* bic	x17, x18, x14                               #! PC = 0x555556a3d8 *)
not x14_not@uint64 x14;
and x17@uint64 x18 x14_not;
(* ldr	x21, [sp, #120]                             #! EA = L0x7fffffeab8; Value = 0xcf6869307a7cef8f; PC = 0x555556a3dc *)
mov x21 L0x7fffffeab8;
(* eor	x17, x17, x3                                #! PC = 0x555556a3e0 *)
xor x17@uint64 x17 x3;
(* bic	x18, x9, x15                                #! PC = 0x555556a3e4 *)
not x15_not@uint64 x15;
and x18@uint64 x9 x15_not;
(* eor	x23, x23, x8                                #! PC = 0x555556a3e8 *)
xor x23@uint64 x23 x8;
(* eor	x27, x27, x14                               #! PC = 0x555556a3ec *)
xor x27@uint64 x27 x14;
(* bic	x19, x3, x19                                #! PC = 0x555556a3f0 *)
not x19_not@uint64 x19;
and x19@uint64 x3 x19_not;
(* bic	x14, x16, x13                               #! PC = 0x555556a3f4 *)
not x13_not@uint64 x13;
and x14@uint64 x16 x13_not;
(* bic	x3, x22, x30                                #! PC = 0x555556a3f8 *)
not x30_not@uint64 x30;
and x3@uint64 x22 x30_not;
(* eor	x14, x14, x6                                #! PC = 0x555556a3fc *)
xor x14@uint64 x14 x6;
(* eor	x3, x3, x16                                 #! PC = 0x555556a400 *)
xor x3@uint64 x3 x16;
(* bic	x30, x30, x16                               #! PC = 0x555556a404 *)
not x16_not@uint64 x16;
and x30@uint64 x30 x16_not;
(* bic	x16, x15, x20                               #! PC = 0x555556a408 *)
not x20_not@uint64 x20;
and x16@uint64 x15 x20_not;
(* eor	x20, x18, x20                               #! PC = 0x555556a40c *)
xor x20@uint64 x18 x20;
(* str	x23, [sp, #144]                             #! EA = L0x7fffffead0; PC = 0x555556a410 *)
mov L0x7fffffead0 x23;
(* bic	x23, x8, x9                                 #! PC = 0x555556a414 *)
not x9_not@uint64 x9;
and x23@uint64 x8 x9_not;
(* eor	x30, x30, x13                               #! PC = 0x555556a418 *)
xor x30@uint64 x30 x13;
(* eor	x23, x23, x15                               #! PC = 0x555556a41c *)
xor x23@uint64 x23 x15;
(* bic	x6, x13, x6                                 #! PC = 0x555556a420 *)
not x6_not@uint64 x6;
and x6@uint64 x13 x6_not;
(* eor	x15, x21, x25                               #! PC = 0x555556a424 *)
xor x15@uint64 x21 x25;
(* bic	x13, x11, x8                                #! PC = 0x555556a428 *)
not x8_not@uint64 x8;
and x13@uint64 x11 x8_not;
(* eor	x11, x16, x11                               #! PC = 0x555556a42c *)
xor x11@uint64 x16 x11;
(* eor	x16, x14, x20                               #! PC = 0x555556a430 *)
xor x16@uint64 x14 x20;
(* eor	x9, x13, x9                                 #! PC = 0x555556a434 *)
xor x9@uint64 x13 x9;
(* eor	x16, x15, x16                               #! PC = 0x555556a438 *)
xor x16@uint64 x15 x16;
(* ldp	x15, x13, [sp, #104]                        #! EA = L0x7fffffeaa8; Value = 0x4e818cd60dd5e891; PC = 0x555556a43c *)
mov x15 L0x7fffffeaa8;
mov x13 L0x7fffffeab0;
(* eor	x6, x6, x22                                 #! PC = 0x555556a440 *)
xor x6@uint64 x6 x22;
(* ldr	x22, [sp, #144]                             #! EA = L0x7fffffead0; Value = 0x4b583c576a915122; PC = 0x555556a444 *)
mov x22 L0x7fffffead0;
(* ror	x4, x4, #23                                 #! PC = 0x555556a448 *)
ror x4@uint64 x4 23;
(* bic	x8, x5, x1                                  #! PC = 0x555556a44c *)
not x1_not@uint64 x1;
and x8@uint64 x5 x1_not;
(* ror	x26, x26, #62                               #! PC = 0x555556a450 *)
ror x26@uint64 x26 62;
(* eor	x8, x8, x26                                 #! PC = 0x555556a454 *)
xor x8@uint64 x8 x26;
(* mov	w18, #0x80008000            	// #-2147450880#! PC = 0x555556a458 *)
mov x18 0x80008000@uint64;
(* eor	x13, x22, x13                               #! PC = 0x555556a45c *)
xor x13@uint64 x22 x13;
(* str	x25, [sp, #120]                             #! EA = L0x7fffffeab8; PC = 0x555556a460 *)
mov L0x7fffffeab8 x25;
(* bic	x25, x1, x26                                #! PC = 0x555556a464 *)
not x26_not@uint64 x26;
and x25@uint64 x1 x26_not;
(* bic	x26, x26, x4                                #! PC = 0x555556a468 *)
not x4_not@uint64 x4;
and x26@uint64 x26 x4_not;
(* bic	x1, x4, x10                                 #! PC = 0x555556a46c *)
not x10_not@uint64 x10;
and x1@uint64 x4 x10_not;
(* eor	x19, x19, x28                               #! PC = 0x555556a470 *)
xor x19@uint64 x19 x28;
(* eor	x26, x26, x10                               #! PC = 0x555556a474 *)
xor x26@uint64 x26 x10;
(* eor	x28, x30, x23                               #! PC = 0x555556a478 *)
xor x28@uint64 x30 x23;
(* eor	x2, x2, x13                                 #! PC = 0x555556a47c *)
xor x2@uint64 x2 x13;
(* movk	x18, #0x8000, lsl #48                      #! PC = 0x555556a480 *)
shl tmp 0x8000@uint64 48;
and x18_m@uint64 x18 0x0000ffffffffffff@uint64;
or x18@uint64 x18_m tmp;
(* eor	x13, x15, x17                               #! PC = 0x555556a484 *)
xor x13@uint64 x15 x17;
(* eor	x18, x7, x18                                #! PC = 0x555556a488 *)
xor x18@uint64 x7 x18;
(* eor	x2, x2, x18                                 #! PC = 0x555556a48c *)
xor x2@uint64 x2 x18;
(* eor	x16, x16, x26                               #! PC = 0x555556a490 *)
xor x16@uint64 x16 x26;
(* eor	x24, x24, x12                               #! PC = 0x555556a494 *)
xor x24@uint64 x24 x12;
(* eor	x7, x6, x11                                 #! PC = 0x555556a498 *)
xor x7@uint64 x6 x11;
(* eor	x12, x0, x19                                #! PC = 0x555556a49c *)
xor x12@uint64 x0 x19;
(* eor	x15, x9, x8                                 #! PC = 0x555556a4a0 *)
xor x15@uint64 x9 x8;
(* eor	x5, x1, x5                                  #! PC = 0x555556a4a4 *)
xor x5@uint64 x1 x5;
(* eor	x25, x25, x4                                #! PC = 0x555556a4a8 *)
xor x25@uint64 x25 x4;
(* eor	x1, x27, x3                                 #! PC = 0x555556a4ac *)
xor x1@uint64 x27 x3;
(* eor	x28, x13, x28                               #! PC = 0x555556a4b0 *)
xor x28@uint64 x13 x28;
(* eor	x28, x28, x25                               #! PC = 0x555556a4b4 *)
xor x28@uint64 x28 x25;
(* eor	x7, x12, x7                                 #! PC = 0x555556a4b8 *)
xor x7@uint64 x12 x7;
(* eor	x15, x1, x15                                #! PC = 0x555556a4bc *)
xor x15@uint64 x1 x15;
(* eor	x12, x2, x16, ror #63                       #! PC = 0x555556a4c0 *)
ror x16_r x16 63;
xor x12@uint64 x2 x16_r;
(* eor	x1, x28, x2, ror #63                        #! PC = 0x555556a4c4 *)
ror x2_r x2 63;
xor x1@uint64 x28 x2_r;
(* eor	x7, x7, x5                                  #! PC = 0x555556a4c8 *)
xor x7@uint64 x7 x5;
(* eor	x15, x15, x24                               #! PC = 0x555556a4cc *)
xor x15@uint64 x15 x24;
(* eor	x19, x19, x12                               #! PC = 0x555556a4d0 *)
xor x19@uint64 x19 x12;
(* eor	x0, x0, x12                                 #! PC = 0x555556a4d4 *)
xor x0@uint64 x0 x12;
(* eor	x11, x11, x12                               #! PC = 0x555556a4d8 *)
xor x11@uint64 x11 x12;
(* eor	x5, x5, x12                                 #! PC = 0x555556a4dc *)
xor x5@uint64 x5 x12;
(* eor	x8, x8, x1                                  #! PC = 0x555556a4e0 *)
xor x8@uint64 x8 x1;
(* eor	x24, x24, x1                                #! PC = 0x555556a4e4 *)
xor x24@uint64 x24 x1;
(* eor	x6, x6, x12                                 #! PC = 0x555556a4e8 *)
xor x6@uint64 x6 x12;
(* eor	x27, x27, x1                                #! PC = 0x555556a4ec *)
xor x27@uint64 x27 x1;
(* eor	x3, x3, x1                                  #! PC = 0x555556a4f0 *)
xor x3@uint64 x3 x1;
(* eor	x9, x9, x1                                  #! PC = 0x555556a4f4 *)
xor x9@uint64 x9 x1;
(* eor	x28, x7, x28, ror #63                       #! PC = 0x555556a4f8 *)
ror x28_r x28 63;
xor x28@uint64 x7 x28_r;
(* ldp	x1, x12, [sp, #128]                         #! EA = L0x7fffffeac0; Value = 0x54555e6cbe4b0f8c; PC = 0x555556a4fc *)
mov x1 L0x7fffffeac0;
mov x12 L0x7fffffeac8;
(* eor	x7, x15, x7, ror #63                        #! PC = 0x555556a500 *)
ror x7_r x7 63;
xor x7@uint64 x15 x7_r;
(* eor	x15, x16, x15, ror #63                      #! PC = 0x555556a504 *)
ror x15_r x15 63;
xor x15@uint64 x16 x15_r;
(* eor	x14, x14, x28                               #! PC = 0x555556a508 *)
xor x14@uint64 x14 x28;
(* ldr	x16, [sp, #104]                             #! EA = L0x7fffffeaa8; Value = 0x4e818cd60dd5e891; PC = 0x555556a50c *)
mov x16 L0x7fffffeaa8;
(* eor	x23, x23, x15                               #! PC = 0x555556a510 *)
xor x23@uint64 x23 x15;
(* ldr	x13, [sp, #112]                             #! EA = L0x7fffffeab0; Value = 0x88dc7996c7147c23; PC = 0x555556a514 *)
mov x13 L0x7fffffeab0;
(* eor	x2, x16, x15                                #! PC = 0x555556a518 *)
xor x2@uint64 x16 x15;
(* ldr	x16, [sp, #120]                             #! EA = L0x7fffffeab8; Value = 0xd8f201bff6ca39ad; PC = 0x555556a51c *)
mov x16 L0x7fffffeab8;
(* eor	x26, x26, x28                               #! PC = 0x555556a520 *)
xor x26@uint64 x26 x28;
(* eor	x25, x25, x15                               #! PC = 0x555556a524 *)
xor x25@uint64 x25 x15;
(* eor	x30, x30, x15                               #! PC = 0x555556a528 *)
xor x30@uint64 x30 x15;
(* eor	x15, x17, x15                               #! PC = 0x555556a52c *)
xor x15@uint64 x17 x15;
(* ror	x23, x23, #43                               #! PC = 0x555556a530 *)
ror x23@uint64 x23 43;
(* eor	x12, x12, x7                                #! PC = 0x555556a534 *)
xor x12@uint64 x12 x7;
(* ror	x8, x8, #50                                 #! PC = 0x555556a538 *)
ror x8@uint64 x8 50;
(* eor	x10, x21, x28                               #! PC = 0x555556a53c *)
xor x10@uint64 x21 x28;
(* ror	x26, x26, #3                                #! PC = 0x555556a540 *)
ror x26@uint64 x26 3;
(* eor	x4, x13, x7                                 #! PC = 0x555556a544 *)
xor x4@uint64 x13 x7;
(* ror	x11, x11, #19                               #! PC = 0x555556a548 *)
ror x11@uint64 x11 19;
(* eor	x13, x22, x7                                #! PC = 0x555556a54c *)
xor x13@uint64 x22 x7;
(* ror	x14, x14, #21                               #! PC = 0x555556a550 *)
ror x14@uint64 x14 21;
(* eor	x20, x20, x28                               #! PC = 0x555556a554 *)
xor x20@uint64 x20 x28;
(* ror	x22, x15, #9                                #! PC = 0x555556a558 *)
ror x22@uint64 x15 9;
(* eor	x28, x16, x28                               #! PC = 0x555556a55c *)
xor x28@uint64 x16 x28;
(* eor	x16, x1, x7                                 #! PC = 0x555556a560 *)
xor x16@uint64 x1 x7;
(* eor	x7, x18, x7                                 #! PC = 0x555556a564 *)
xor x7@uint64 x18 x7;
(* bic	x18, x8, x23                                #! PC = 0x555556a568 *)
not x23_not@uint64 x23;
and x18@uint64 x8 x23_not;
(* eor	x18, x18, x14                               #! PC = 0x555556a56c *)
xor x18@uint64 x18 x14;
(* ror	x12, x12, #61                               #! PC = 0x555556a570 *)
ror x12@uint64 x12 61;
(* stp	x22, x18, [sp, #128]                        #! EA = L0x7fffffeac0; PC = 0x555556a574 *)
mov L0x7fffffeac0 x22;
mov L0x7fffffeac8 x18;
(* bic	x22, x26, x11                               #! PC = 0x555556a578 *)
not x11_not@uint64 x11;
and x22@uint64 x26 x11_not;
(* ror	x2, x2, #36                                 #! PC = 0x555556a57c *)
ror x2@uint64 x2 36;
(* eor	x22, x22, x12                               #! PC = 0x555556a580 *)
xor x22@uint64 x22 x12;
(* ror	x20, x20, #49                               #! PC = 0x555556a584 *)
ror x20@uint64 x20 49;
(* ror	x25, x25, #8                                #! PC = 0x555556a588 *)
ror x25@uint64 x25 8;
(* str	x22, [sp, #104]                             #! EA = L0x7fffffeaa8; PC = 0x555556a58c *)
mov L0x7fffffeaa8 x22;
(* ror	x27, x27, #44                               #! PC = 0x555556a590 *)
ror x27@uint64 x27 44;
(* bic	x22, x2, x26                                #! PC = 0x555556a594 *)
not x26_not@uint64 x26;
and x22@uint64 x2 x26_not;
(* ror	x30, x30, #39                               #! PC = 0x555556a598 *)
ror x30@uint64 x30 39;
(* ror	x28, x28, #58                               #! PC = 0x555556a59c *)
ror x28@uint64 x28 58;
(* ror	x19, x19, #20                               #! PC = 0x555556a5a0 *)
ror x19@uint64 x19 20;
(* bic	x21, x12, x27                               #! PC = 0x555556a5a4 *)
not x27_not@uint64 x27;
and x21@uint64 x12 x27_not;
(* ror	x6, x6, #54                                 #! PC = 0x555556a5a8 *)
ror x6@uint64 x6 54;
(* bic	x12, x11, x12                               #! PC = 0x555556a5ac *)
not x12_not@uint64 x12;
and x12@uint64 x11 x12_not;
(* eor	x11, x22, x11                               #! PC = 0x555556a5b0 *)
xor x11@uint64 x22 x11;
(* bic	x22, x25, x20                               #! PC = 0x555556a5b4 *)
not x20_not@uint64 x20;
and x22@uint64 x25 x20_not;
(* ror	x0, x0, #63                                 #! PC = 0x555556a5b8 *)
ror x0@uint64 x0 63;
(* bic	x17, x14, x19                               #! PC = 0x555556a5bc *)
not x19_not@uint64 x19;
and x17@uint64 x14 x19_not;
(* bic	x1, x30, x28                                #! PC = 0x555556a5c0 *)
not x28_not@uint64 x28;
and x1@uint64 x30 x28_not;
(* str	x11, [sp, #112]                             #! EA = L0x7fffffeab0; PC = 0x555556a5c4 *)
mov L0x7fffffeab0 x11;
(* eor	x11, x22, x6                                #! PC = 0x555556a5c8 *)
xor x11@uint64 x22 x6;
(* ldr	x22, [sp, #128]                             #! EA = L0x7fffffeac0; Value = 0x21d9b66baa458e3f; PC = 0x555556a5cc *)
mov x22 L0x7fffffeac0;
(* ror	x24, x24, #37                               #! PC = 0x555556a5d0 *)
ror x24@uint64 x24 37;
(* eor	x21, x21, x2                                #! PC = 0x555556a5d4 *)
xor x21@uint64 x21 x2;
(* ror	x4, x4, #46                                 #! PC = 0x555556a5d8 *)
ror x4@uint64 x4 46;
(* eor	x1, x1, x0                                  #! PC = 0x555556a5dc *)
xor x1@uint64 x1 x0;
(* eor	x17, x17, x7                                #! PC = 0x555556a5e0 *)
xor x17@uint64 x17 x7;
(* bic	x14, x23, x14                               #! PC = 0x555556a5e4 *)
not x14_not@uint64 x14;
and x14@uint64 x23 x14_not;
(* bic	x2, x27, x2                                 #! PC = 0x555556a5e8 *)
not x2_not@uint64 x2;
and x2@uint64 x27 x2_not;
(* ror	x10, x10, #2                                #! PC = 0x555556a5ec *)
ror x10@uint64 x10 2;
(* ror	x9, x9, #56                                 #! PC = 0x555556a5f0 *)
ror x9@uint64 x9 56;
(* eor	x14, x14, x19                               #! PC = 0x555556a5f4 *)
xor x14@uint64 x14 x19;
(* ror	x16, x16, #28                               #! PC = 0x555556a5f8 *)
ror x16@uint64 x16 28;
(* bic	x19, x19, x7                                #! PC = 0x555556a5fc *)
not x7_not@uint64 x7;
and x19@uint64 x19 x7_not;
(* eor	x2, x2, x26                                 #! PC = 0x555556a600 *)
xor x2@uint64 x2 x26;
(* mov	x18, #0x808b                	// #32907      #! PC = 0x555556a604 *)
mov x18 0x808b@uint64;
(* bic	x26, x0, x4                                 #! PC = 0x555556a608 *)
not x4_not@uint64 x4;
and x26@uint64 x0 x4_not;
(* eor	x17, x17, x18                               #! PC = 0x555556a60c *)
xor x17@uint64 x17 x18;
(* bic	x0, x28, x0                                 #! PC = 0x555556a610 *)
not x0_not@uint64 x0;
and x0@uint64 x28 x0_not;
(* stp	x11, x17, [sp, #120]                        #! EA = L0x7fffffeab8; PC = 0x555556a614 *)
mov L0x7fffffeab8 x11;
mov L0x7fffffeac0 x17;
(* mov	x11, x1                                     #! PC = 0x555556a618 *)
mov x11 x1;
(* bic	x1, x24, x25                                #! PC = 0x555556a61c *)
not x25_not@uint64 x25;
and x1@uint64 x24 x25_not;
(* ror	x5, x5, #62                                 #! PC = 0x555556a620 *)
ror x5@uint64 x5 62;
(* bic	x15, x6, x16                                #! PC = 0x555556a624 *)
not x16_not@uint64 x16;
and x15@uint64 x6 x16_not;
(* ror	x13, x13, #23                               #! PC = 0x555556a628 *)
ror x13@uint64 x13 23;
(* eor	x26, x26, x9                                #! PC = 0x555556a62c *)
xor x26@uint64 x26 x9;
(* eor	x0, x0, x4                                  #! PC = 0x555556a630 *)
xor x0@uint64 x0 x4;
(* bic	x7, x7, x8                                  #! PC = 0x555556a634 *)
not x8_not@uint64 x8;
and x7@uint64 x7 x8_not;
(* bic	x4, x4, x9                                  #! PC = 0x555556a638 *)
not x9_not@uint64 x9;
and x4@uint64 x4 x9_not;
(* eor	x8, x19, x8                                 #! PC = 0x555556a63c *)
xor x8@uint64 x19 x8;
(* bic	x9, x9, x30                                 #! PC = 0x555556a640 *)
not x30_not@uint64 x30;
and x9@uint64 x9 x30_not;
(* eor	x19, x1, x20                                #! PC = 0x555556a644 *)
xor x19@uint64 x1 x20;
(* bic	x6, x20, x6                                 #! PC = 0x555556a648 *)
not x6_not@uint64 x6;
and x6@uint64 x20 x6_not;
(* bic	x1, x22, x10                                #! PC = 0x555556a64c *)
not x10_not@uint64 x10;
and x1@uint64 x22 x10_not;
(* eor	x15, x15, x24                               #! PC = 0x555556a650 *)
xor x15@uint64 x15 x24;
(* eor	x9, x9, x28                                 #! PC = 0x555556a654 *)
xor x9@uint64 x9 x28;
(* eor	x6, x6, x16                                 #! PC = 0x555556a658 *)
xor x6@uint64 x6 x16;
(* bic	x20, x5, x13                                #! PC = 0x555556a65c *)
not x13_not@uint64 x13;
and x20@uint64 x5 x13_not;
(* bic	x16, x16, x24                               #! PC = 0x555556a660 *)
not x24_not@uint64 x24;
and x16@uint64 x16 x24_not;
(* stp	x11, x19, [sp, #144]                        #! EA = L0x7fffffead0; PC = 0x555556a664 *)
mov L0x7fffffead0 x11;
mov L0x7fffffead8 x19;
(* bic	x19, x10, x5                                #! PC = 0x555556a668 *)
not x5_not@uint64 x5;
and x19@uint64 x10 x5_not;
(* eor	x5, x1, x5                                  #! PC = 0x555556a66c *)
xor x5@uint64 x1 x5;
(* ldr	x1, [sp, #104]                              #! EA = L0x7fffffeaa8; Value = 0xa9b8b974b13d05aa; PC = 0x555556a670 *)
mov x1 L0x7fffffeaa8;
(* ror	x3, x3, #25                                 #! PC = 0x555556a674 *)
ror x3@uint64 x3 25;
(* ldr	x24, [sp, #120]                             #! EA = L0x7fffffeab8; Value = 0x3ee93174109b4c43; PC = 0x555556a678 *)
mov x24 L0x7fffffeab8;
(* eor	x20, x20, x3                                #! PC = 0x555556a67c *)
xor x20@uint64 x20 x3;
(* ldr	x28, [sp, #136]                             #! EA = L0x7fffffeac8; Value = 0xce86b225289d77f3; PC = 0x555556a680 *)
mov x28 L0x7fffffeac8;
(* eor	x19, x19, x13                               #! PC = 0x555556a684 *)
xor x19@uint64 x19 x13;
(* bic	x13, x13, x3                                #! PC = 0x555556a688 *)
not x3_not@uint64 x3;
and x13@uint64 x13 x3_not;
(* bic	x3, x3, x22                                 #! PC = 0x555556a68c *)
not x22_not@uint64 x22;
and x3@uint64 x3 x22_not;
(* eor	x18, x11, x15                               #! PC = 0x555556a690 *)
xor x18@uint64 x11 x15;
(* eor	x3, x3, x10                                 #! PC = 0x555556a694 *)
xor x3@uint64 x3 x10;
(* eor	x11, x28, x1                                #! PC = 0x555556a698 *)
xor x11@uint64 x28 x1;
(* eor	x10, x2, x0                                 #! PC = 0x555556a69c *)
xor x10@uint64 x2 x0;
(* eor	x1, x24, x20                                #! PC = 0x555556a6a0 *)
xor x1@uint64 x24 x20;
(* mov	x24, x22                                    #! PC = 0x555556a6a4 *)
mov x24 x22;
(* eor	x22, x8, x5                                 #! PC = 0x555556a6a8 *)
xor x22@uint64 x8 x5;
(* eor	x7, x7, x23                                 #! PC = 0x555556a6ac *)
xor x7@uint64 x7 x23;
(* eor	x11, x11, x1                                #! PC = 0x555556a6b0 *)
xor x11@uint64 x11 x1;
(* eor	x22, x10, x22                               #! PC = 0x555556a6b4 *)
xor x22@uint64 x10 x22;
(* eor	x1, x4, x30                                 #! PC = 0x555556a6b8 *)
xor x1@uint64 x4 x30;
(* eor	x17, x17, x21                               #! PC = 0x555556a6bc *)
xor x17@uint64 x17 x21;
(* ldr	x23, [sp, #112]                             #! EA = L0x7fffffeab0; Value = 0x64d6c2a645c4cbb0; PC = 0x555556a6c0 *)
mov x23 L0x7fffffeab0;
(* eor	x12, x12, x27                               #! PC = 0x555556a6c4 *)
xor x12@uint64 x12 x27;
(* ldp	x10, x30, [sp, #144]                        #! EA = L0x7fffffead0; Value = 0x98e0bc103a310aa5; PC = 0x555556a6c8 *)
mov x10 L0x7fffffead0;
mov x30 L0x7fffffead8;
(* eor	x27, x23, x26                               #! PC = 0x555556a6cc *)
xor x27@uint64 x23 x26;
(* eor	x18, x18, x17                               #! PC = 0x555556a6d0 *)
xor x18@uint64 x18 x17;
(* eor	x11, x11, x1                                #! PC = 0x555556a6d4 *)
xor x11@uint64 x11 x1;
(* eor	x23, x9, x6                                 #! PC = 0x555556a6d8 *)
xor x23@uint64 x9 x6;
(* eor	x17, x14, x12                               #! PC = 0x555556a6dc *)
xor x17@uint64 x14 x12;
(* eor	x16, x16, x25                               #! PC = 0x555556a6e0 *)
xor x16@uint64 x16 x25;
(* eor	x13, x13, x24                               #! PC = 0x555556a6e4 *)
xor x13@uint64 x13 x24;
(* eor	x17, x17, x23                               #! PC = 0x555556a6e8 *)
xor x17@uint64 x17 x23;
(* eor	x22, x22, x16                               #! PC = 0x555556a6ec *)
xor x22@uint64 x22 x16;
(* eor	x4, x30, x19                                #! PC = 0x555556a6f0 *)
xor x4@uint64 x30 x19;
(* eor	x17, x17, x13                               #! PC = 0x555556a6f4 *)
xor x17@uint64 x17 x13;
(* eor	x4, x27, x4                                 #! PC = 0x555556a6f8 *)
xor x4@uint64 x27 x4;
(* eor	x27, x18, x3                                #! PC = 0x555556a6fc *)
xor x27@uint64 x18 x3;
(* eor	x4, x4, x7                                  #! PC = 0x555556a700 *)
xor x4@uint64 x4 x7;
(* eor	x24, x27, x11, ror #63                      #! PC = 0x555556a704 *)
ror x11_r x11 63;
xor x24@uint64 x27 x11_r;
(* eor	x27, x4, x27, ror #63                       #! PC = 0x555556a708 *)
ror x27_r x27 63;
xor x27@uint64 x4 x27_r;
(* eor	x12, x12, x24                               #! PC = 0x555556a70c *)
xor x12@uint64 x12 x24;
(* eor	x14, x14, x24                               #! PC = 0x555556a710 *)
xor x14@uint64 x14 x24;
(* eor	x6, x6, x24                                 #! PC = 0x555556a714 *)
xor x6@uint64 x6 x24;
(* eor	x9, x9, x24                                 #! PC = 0x555556a718 *)
xor x9@uint64 x9 x24;
(* eor	x13, x13, x24                               #! PC = 0x555556a71c *)
xor x13@uint64 x13 x24;
(* eor	x2, x2, x27                                 #! PC = 0x555556a720 *)
xor x2@uint64 x2 x27;
(* eor	x5, x5, x27                                 #! PC = 0x555556a724 *)
xor x5@uint64 x5 x27;
(* eor	x16, x16, x27                               #! PC = 0x555556a728 *)
xor x16@uint64 x16 x27;
(* eor	x8, x8, x27                                 #! PC = 0x555556a72c *)
xor x8@uint64 x8 x27;
(* eor	x0, x0, x27                                 #! PC = 0x555556a730 *)
xor x0@uint64 x0 x27;
(* eor	x18, x17, x4, ror #63                       #! PC = 0x555556a734 *)
ror x4_r x4 63;
xor x18@uint64 x17 x4_r;
(* ldp	x24, x27, [sp, #120]                        #! EA = L0x7fffffeab8; Value = 0x3ee93174109b4c43; PC = 0x555556a738 *)
mov x24 L0x7fffffeab8;
mov x27 L0x7fffffeac0;
(* eor	x17, x22, x17, ror #63                      #! PC = 0x555556a73c *)
ror x17_r x17 63;
xor x17@uint64 x22 x17_r;
(* eor	x11, x11, x22, ror #63                      #! PC = 0x555556a740 *)
ror x22_r x22 63;
xor x11@uint64 x11 x22_r;
(* eor	x1, x1, x18                                 #! PC = 0x555556a744 *)
xor x1@uint64 x1 x18;
(* ldr	x22, [sp, #104]                             #! EA = L0x7fffffeaa8; Value = 0xa9b8b974b13d05aa; PC = 0x555556a748 *)
mov x22 L0x7fffffeaa8;
(* ror	x12, x12, #20                               #! PC = 0x555556a74c *)
ror x12@uint64 x12 20;
(* ldr	x23, [sp, #112]                             #! EA = L0x7fffffeab0; Value = 0x64d6c2a645c4cbb0; PC = 0x555556a750 *)
mov x23 L0x7fffffeab0;
(* eor	x26, x26, x11                               #! PC = 0x555556a754 *)
xor x26@uint64 x26 x11;
(* eor	x4, x22, x18                                #! PC = 0x555556a758 *)
xor x4@uint64 x22 x18;
(* ror	x1, x1, #21                                 #! PC = 0x555556a75c *)
ror x1@uint64 x1 21;
(* eor	x22, x24, x18                               #! PC = 0x555556a760 *)
xor x22@uint64 x24 x18;
(* eor	x10, x10, x17                               #! PC = 0x555556a764 *)
xor x10@uint64 x10 x17;
(* eor	x24, x30, x11                               #! PC = 0x555556a768 *)
xor x24@uint64 x30 x11;
(* eor	x3, x3, x17                                 #! PC = 0x555556a76c *)
xor x3@uint64 x3 x17;
(* eor	x21, x21, x17                               #! PC = 0x555556a770 *)
xor x21@uint64 x21 x17;
(* eor	x15, x15, x17                               #! PC = 0x555556a774 *)
xor x15@uint64 x15 x17;
(* eor	x7, x7, x11                                 #! PC = 0x555556a778 *)
xor x7@uint64 x7 x11;
(* eor	x17, x27, x17                               #! PC = 0x555556a77c *)
xor x17@uint64 x27 x17;
(* eor	x19, x19, x11                               #! PC = 0x555556a780 *)
xor x19@uint64 x19 x11;
(* eor	x11, x23, x11                               #! PC = 0x555556a784 *)
xor x11@uint64 x23 x11;
(* bic	x23, x1, x12                                #! PC = 0x555556a788 *)
not x12_not@uint64 x12;
and x23@uint64 x1 x12_not;
(* ror	x27, x26, #39                               #! PC = 0x555556a78c *)
ror x27@uint64 x26 39;
(* eor	x20, x20, x18                               #! PC = 0x555556a790 *)
xor x20@uint64 x20 x18;
(* ror	x4, x4, #58                                 #! PC = 0x555556a794 *)
ror x4@uint64 x4 58;
(* eor	x18, x28, x18                               #! PC = 0x555556a798 *)
xor x18@uint64 x28 x18;
(* eor	x23, x23, x17                               #! PC = 0x555556a79c *)
xor x23@uint64 x23 x17;
(* mov	w28, #0x80000001            	// #-2147483647#! PC = 0x555556a7a0 *)
mov x28 0x80000001@uint64;
(* ror	x10, x10, #61                               #! PC = 0x555556a7a4 *)
ror x10@uint64 x10 61;
(* ror	x14, x14, #63                               #! PC = 0x555556a7a8 *)
ror x14@uint64 x14 63;
(* eor	x23, x23, x28                               #! PC = 0x555556a7ac *)
xor x23@uint64 x23 x28;
(* ror	x2, x2, #44                                 #! PC = 0x555556a7b0 *)
ror x2@uint64 x2 44;
(* bic	x28, x27, x4                                #! PC = 0x555556a7b4 *)
not x4_not@uint64 x4;
and x28@uint64 x27 x4_not;
(* ror	x11, x11, #9                                #! PC = 0x555556a7b8 *)
ror x11@uint64 x11 9;
(* ror	x7, x7, #36                                 #! PC = 0x555556a7bc *)
ror x7@uint64 x7 36;
(* ror	x19, x19, #8                                #! PC = 0x555556a7c0 *)
ror x19@uint64 x19 8;
(* ror	x22, x22, #49                               #! PC = 0x555556a7c4 *)
ror x22@uint64 x22 49;
(* bic	x30, x10, x2                                #! PC = 0x555556a7c8 *)
not x2_not@uint64 x2;
and x30@uint64 x10 x2_not;
(* ror	x18, x18, #2                                #! PC = 0x555556a7cc *)
ror x18@uint64 x18 2;
(* eor	x28, x28, x14                               #! PC = 0x555556a7d0 *)
xor x28@uint64 x28 x14;
(* ror	x21, x21, #28                               #! PC = 0x555556a7d4 *)
ror x21@uint64 x21 28;
(* bic	x25, x19, x22                               #! PC = 0x555556a7d8 *)
not x22_not@uint64 x22;
and x25@uint64 x19 x22_not;
(* ror	x9, x9, #54                                 #! PC = 0x555556a7dc *)
ror x9@uint64 x9 54;
(* ror	x13, x13, #62                               #! PC = 0x555556a7e0 *)
ror x13@uint64 x13 62;
(* eor	x30, x30, x7                                #! PC = 0x555556a7e4 *)
xor x30@uint64 x30 x7;
(* ror	x15, x15, #23                               #! PC = 0x555556a7e8 *)
ror x15@uint64 x15 23;
(* str	x28, [sp, #120]                             #! EA = L0x7fffffeab8; PC = 0x555556a7ec *)
mov L0x7fffffeab8 x28;
(* ror	x24, x24, #43                               #! PC = 0x555556a7f0 *)
ror x24@uint64 x24 43;
(* bic	x28, x11, x18                               #! PC = 0x555556a7f4 *)
not x18_not@uint64 x18;
and x28@uint64 x11 x18_not;
(* ror	x8, x8, #37                                 #! PC = 0x555556a7f8 *)
ror x8@uint64 x8 37;
(* eor	x28, x28, x13                               #! PC = 0x555556a7fc *)
xor x28@uint64 x28 x13;
(* bic	x26, x9, x21                                #! PC = 0x555556a800 *)
not x21_not@uint64 x21;
and x26@uint64 x9 x21_not;
(* stp	x24, x30, [sp, #104]                        #! EA = L0x7fffffeaa8; PC = 0x555556a804 *)
mov L0x7fffffeaa8 x24;
mov L0x7fffffeab0 x30;
(* bic	x24, x22, x9                                #! PC = 0x555556a808 *)
not x9_not@uint64 x9;
and x24@uint64 x22 x9_not;
(* bic	x30, x13, x15                               #! PC = 0x555556a80c *)
not x15_not@uint64 x15;
and x30@uint64 x13 x15_not;
(* eor	x9, x25, x9                                 #! PC = 0x555556a810 *)
xor x9@uint64 x25 x9;
(* bic	x13, x18, x13                               #! PC = 0x555556a814 *)
not x13_not@uint64 x13;
and x13@uint64 x18 x13_not;
(* eor	x26, x26, x8                                #! PC = 0x555556a818 *)
xor x26@uint64 x26 x8;
(* eor	x24, x24, x21                               #! PC = 0x555556a81c *)
xor x24@uint64 x24 x21;
(* eor	x13, x13, x15                               #! PC = 0x555556a820 *)
xor x13@uint64 x13 x15;
(* stp	x24, x9, [sp, #128]                         #! EA = L0x7fffffeac0; PC = 0x555556a824 *)
mov L0x7fffffeac0 x24;
mov L0x7fffffeac8 x9;
(* bic	x9, x8, x19                                 #! PC = 0x555556a828 *)
not x19_not@uint64 x19;
and x9@uint64 x8 x19_not;
(* bic	x8, x21, x8                                 #! PC = 0x555556a82c *)
not x8_not@uint64 x8;
and x8@uint64 x21 x8_not;
(* eor	x22, x9, x22                                #! PC = 0x555556a830 *)
xor x22@uint64 x9 x22;
(* eor	x19, x8, x19                                #! PC = 0x555556a834 *)
xor x19@uint64 x8 x19;
(* str	x13, [sp, #152]                             #! EA = L0x7fffffead8; PC = 0x555556a838 *)
mov L0x7fffffead8 x13;
(* ldp	x8, x9, [sp, #104]                          #! EA = L0x7fffffeaa8; Value = 0xc35dbf5ff198a161; PC = 0x555556a83c *)
mov x8 L0x7fffffeaa8;
mov x9 L0x7fffffeab0;
(* ror	x5, x5, #50                                 #! PC = 0x555556a840 *)
ror x5@uint64 x5 50;
(* ldr	x13, [sp, #104]                             #! EA = L0x7fffffeaa8; Value = 0xc35dbf5ff198a161; PC = 0x555556a844 *)
mov x13 L0x7fffffeaa8;
(* ror	x0, x0, #25                                 #! PC = 0x555556a848 *)
ror x0@uint64 x0 25;
(* ror	x16, x16, #56                               #! PC = 0x555556a84c *)
ror x16@uint64 x16 56;
(* bic	x24, x5, x13                                #! PC = 0x555556a850 *)
not x13_not@uint64 x13;
and x24@uint64 x5 x13_not;
(* ror	x3, x3, #46                                 #! PC = 0x555556a854 *)
ror x3@uint64 x3 46;
(* eor	x30, x30, x0                                #! PC = 0x555556a858 *)
xor x30@uint64 x30 x0;
(* bic	x15, x15, x0                                #! PC = 0x555556a85c *)
not x0_not@uint64 x0;
and x15@uint64 x15 x0_not;
(* eor	x24, x24, x1                                #! PC = 0x555556a860 *)
xor x24@uint64 x24 x1;
(* bic	x1, x13, x1                                 #! PC = 0x555556a864 *)
not x1_not@uint64 x1;
and x1@uint64 x13 x1_not;
(* bic	x13, x0, x11                                #! PC = 0x555556a868 *)
not x11_not@uint64 x11;
and x13@uint64 x0 x11_not;
(* bic	x0, x16, x27                                #! PC = 0x555556a86c *)
not x27_not@uint64 x27;
and x0@uint64 x16 x27_not;
(* eor	x0, x0, x4                                  #! PC = 0x555556a870 *)
xor x0@uint64 x0 x4;
(* bic	x4, x4, x14                                 #! PC = 0x555556a874 *)
not x14_not@uint64 x14;
and x4@uint64 x4 x14_not;
(* bic	x14, x14, x3                                #! PC = 0x555556a878 *)
not x3_not@uint64 x3;
and x14@uint64 x14 x3_not;
(* eor	x4, x4, x3                                  #! PC = 0x555556a87c *)
xor x4@uint64 x4 x3;
(* eor	x14, x14, x16                               #! PC = 0x555556a880 *)
xor x14@uint64 x14 x16;
(* bic	x16, x3, x16                                #! PC = 0x555556a884 *)
not x16_not@uint64 x16;
and x16@uint64 x3 x16_not;
(* str	x23, [sp, #144]                             #! EA = L0x7fffffead0; PC = 0x555556a888 *)
mov L0x7fffffead0 x23;
(* eor	x23, x23, x9                                #! PC = 0x555556a88c *)
xor x23@uint64 x23 x9;
(* ldp	x9, x3, [sp, #120]                          #! EA = L0x7fffffeab8; Value = 0x7cdf7a98c63a8256; PC = 0x555556a890 *)
mov x9 L0x7fffffeab8;
mov x3 L0x7fffffeac0;
(* ror	x6, x6, #19                                 #! PC = 0x555556a894 *)
ror x6@uint64 x6 19;
(* eor	x21, x1, x12                                #! PC = 0x555556a898 *)
xor x21@uint64 x1 x12;
(* ror	x20, x20, #3                                #! PC = 0x555556a89c *)
ror x20@uint64 x20 3;
(* bic	x25, x12, x17                               #! PC = 0x555556a8a0 *)
not x17_not@uint64 x17;
and x25@uint64 x12 x17_not;
(* eor	x18, x13, x18                               #! PC = 0x555556a8a4 *)
xor x18@uint64 x13 x18;
(* bic	x12, x6, x10                                #! PC = 0x555556a8a8 *)
not x10_not@uint64 x10;
and x12@uint64 x6 x10_not;
(* eor	x13, x15, x11                               #! PC = 0x555556a8ac *)
xor x13@uint64 x15 x11;
(* ldr	x1, [sp, #136]                              #! EA = L0x7fffffeac8; Value = 0xe40d3b429f783883; PC = 0x555556a8b0 *)
mov x1 L0x7fffffeac8;
(* eor	x25, x25, x5                                #! PC = 0x555556a8b4 *)
xor x25@uint64 x25 x5;
(* ldr	x15, [sp, #152]                             #! EA = L0x7fffffead8; Value = 0x7f8fd71ab3ddf193; PC = 0x555556a8b8 *)
mov x15 L0x7fffffead8;
(* eor	x12, x12, x2                                #! PC = 0x555556a8bc *)
xor x12@uint64 x12 x2;
(* bic	x5, x17, x5                                 #! PC = 0x555556a8c0 *)
not x5_not@uint64 x5;
and x5@uint64 x17 x5_not;
(* bic	x2, x2, x7                                  #! PC = 0x555556a8c4 *)
not x7_not@uint64 x7;
and x2@uint64 x2 x7_not;
(* bic	x17, x20, x6                                #! PC = 0x555556a8c8 *)
not x6_not@uint64 x6;
and x17@uint64 x20 x6_not;
(* bic	x7, x7, x20                                 #! PC = 0x555556a8cc *)
not x20_not@uint64 x20;
and x7@uint64 x7 x20_not;
(* eor	x17, x17, x10                               #! PC = 0x555556a8d0 *)
xor x17@uint64 x17 x10;
(* eor	x6, x7, x6                                  #! PC = 0x555556a8d4 *)
xor x6@uint64 x7 x6;
(* eor	x9, x9, x26                                 #! PC = 0x555556a8d8 *)
xor x9@uint64 x9 x26;
(* eor	x20, x2, x20                                #! PC = 0x555556a8dc *)
xor x20@uint64 x2 x20;
(* eor	x5, x5, x8                                  #! PC = 0x555556a8e0 *)
xor x5@uint64 x5 x8;
(* eor	x2, x24, x17                                #! PC = 0x555556a8e4 *)
xor x2@uint64 x24 x17;
(* eor	x8, x22, x15                                #! PC = 0x555556a8e8 *)
xor x8@uint64 x22 x15;
(* eor	x1, x1, x30                                 #! PC = 0x555556a8ec *)
xor x1@uint64 x1 x30;
(* eor	x9, x9, x23                                 #! PC = 0x555556a8f0 *)
xor x9@uint64 x9 x23;
(* eor	x23, x0, x3                                 #! PC = 0x555556a8f4 *)
xor x23@uint64 x0 x3;
(* eor	x3, x6, x14                                 #! PC = 0x555556a8f8 *)
xor x3@uint64 x6 x14;
(* eor	x7, x21, x12                                #! PC = 0x555556a8fc *)
xor x7@uint64 x21 x12;
(* eor	x16, x16, x27                               #! PC = 0x555556a900 *)
xor x16@uint64 x16 x27;
(* eor	x10, x25, x28                               #! PC = 0x555556a904 *)
xor x10@uint64 x25 x28;
(* eor	x2, x2, x1                                  #! PC = 0x555556a908 *)
xor x2@uint64 x2 x1;
(* eor	x3, x3, x8                                  #! PC = 0x555556a90c *)
xor x3@uint64 x3 x8;
(* eor	x1, x20, x4                                 #! PC = 0x555556a910 *)
xor x1@uint64 x20 x4;
(* eor	x9, x9, x18                                 #! PC = 0x555556a914 *)
xor x9@uint64 x9 x18;
(* eor	x2, x2, x16                                 #! PC = 0x555556a918 *)
xor x2@uint64 x2 x16;
(* eor	x3, x3, x5                                  #! PC = 0x555556a91c *)
xor x3@uint64 x3 x5;
(* eor	x23, x7, x23                                #! PC = 0x555556a920 *)
xor x23@uint64 x7 x23;
(* eor	x1, x1, x10                                 #! PC = 0x555556a924 *)
xor x1@uint64 x1 x10;
(* ldr	x11, [sp, #136]                             #! EA = L0x7fffffeac8; Value = 0xe40d3b429f783883; PC = 0x555556a928 *)
mov x11 L0x7fffffeac8;
(* eor	x10, x1, x19                                #! PC = 0x555556a92c *)
xor x10@uint64 x1 x19;
(* eor	x23, x23, x13                               #! PC = 0x555556a930 *)
xor x23@uint64 x23 x13;
(* eor	x27, x9, x2, ror #63                        #! PC = 0x555556a934 *)
ror x2_r x2 63;
xor x27@uint64 x9 x2_r;
(* eor	x8, x3, x9, ror #63                         #! PC = 0x555556a938 *)
ror x9_r x9 63;
xor x8@uint64 x3 x9_r;
(* eor	x3, x23, x3, ror #63                        #! PC = 0x555556a93c *)
ror x3_r x3 63;
xor x3@uint64 x23 x3_r;
(* eor	x2, x2, x10, ror #63                        #! PC = 0x555556a940 *)
ror x10_r x10 63;
xor x2@uint64 x2 x10_r;
(* eor	x23, x10, x23, ror #63                      #! PC = 0x555556a944 *)
ror x23_r x23 63;
xor x23@uint64 x10 x23_r;
(* eor	x9, x11, x3                                 #! PC = 0x555556a948 *)
xor x9@uint64 x11 x3;
(* eor	x10, x21, x27                               #! PC = 0x555556a94c *)
xor x10@uint64 x21 x27;
(* eor	x11, x28, x8                                #! PC = 0x555556a950 *)
xor x11@uint64 x28 x8;
(* eor	x21, x30, x3                                #! PC = 0x555556a954 *)
xor x21@uint64 x30 x3;
(* ldp	x30, x28, [sp, #112]                        #! EA = L0x7fffffeab0; Value = 0xf6edbd3d99609c38; PC = 0x555556a958 *)
mov x30 L0x7fffffeab0;
mov x28 L0x7fffffeab8;
(* eor	x6, x6, x2                                  #! PC = 0x555556a95c *)
xor x6@uint64 x6 x2;
(* eor	x25, x25, x8                                #! PC = 0x555556a960 *)
xor x25@uint64 x25 x8;
(* eor	x22, x22, x2                                #! PC = 0x555556a964 *)
xor x22@uint64 x22 x2;
(* eor	x5, x5, x2                                  #! PC = 0x555556a968 *)
xor x5@uint64 x5 x2;
(* eor	x15, x15, x2                                #! PC = 0x555556a96c *)
xor x15@uint64 x15 x2;
(* eor	x14, x14, x2                                #! PC = 0x555556a970 *)
xor x14@uint64 x14 x2;
(* eor	x0, x0, x27                                 #! PC = 0x555556a974 *)
xor x0@uint64 x0 x27;
(* ldr	x7, [sp, #128]                              #! EA = L0x7fffffeac0; Value = 0xd1632ceb7cc6dd33; PC = 0x555556a978 *)
mov x7 L0x7fffffeac0;
(* eor	x30, x30, x23                               #! PC = 0x555556a97c *)
xor x30@uint64 x30 x23;
(* ldr	x2, [sp, #144]                              #! EA = L0x7fffffead0; Value = 0x3aad19b6d8972250; PC = 0x555556a980 *)
mov x2 L0x7fffffead0;
(* ror	x25, x25, #37                               #! PC = 0x555556a984 *)
ror x25@uint64 x25 37;
(* ror	x9, x9, #49                                 #! PC = 0x555556a988 *)
ror x9@uint64 x9 49;
(* eor	x13, x13, x27                               #! PC = 0x555556a98c *)
xor x13@uint64 x13 x27;
(* ror	x15, x15, #8                                #! PC = 0x555556a990 *)
ror x15@uint64 x15 8;
(* eor	x26, x26, x23                               #! PC = 0x555556a994 *)
xor x26@uint64 x26 x23;
(* eor	x1, x16, x3                                 #! PC = 0x555556a998 *)
xor x1@uint64 x16 x3;
(* ror	x0, x0, #54                                 #! PC = 0x555556a99c *)
ror x0@uint64 x0 54;
(* eor	x12, x12, x27                               #! PC = 0x555556a9a0 *)
xor x12@uint64 x12 x27;
(* ror	x30, x30, #28                               #! PC = 0x555556a9a4 *)
ror x30@uint64 x30 28;
(* eor	x24, x24, x3                                #! PC = 0x555556a9a8 *)
xor x24@uint64 x24 x3;
(* eor	x18, x18, x23                               #! PC = 0x555556a9ac *)
xor x18@uint64 x18 x23;
(* eor	x3, x17, x3                                 #! PC = 0x555556a9b0 *)
xor x3@uint64 x17 x3;
(* eor	x4, x4, x8                                  #! PC = 0x555556a9b4 *)
xor x4@uint64 x4 x8;
(* bic	x17, x25, x15                               #! PC = 0x555556a9b8 *)
not x15_not@uint64 x15;
and x17@uint64 x25 x15_not;
(* eor	x7, x7, x27                                 #! PC = 0x555556a9bc *)
xor x7@uint64 x7 x27;
(* eor	x27, x28, x23                               #! PC = 0x555556a9c0 *)
xor x27@uint64 x28 x23;
(* eor	x23, x2, x23                                #! PC = 0x555556a9c4 *)
xor x23@uint64 x2 x23;
(* bic	x28, x15, x9                                #! PC = 0x555556a9c8 *)
not x9_not@uint64 x9;
and x28@uint64 x15 x9_not;
(* ror	x2, x6, #9                                  #! PC = 0x555556a9cc *)
ror x2@uint64 x6 9;
(* eor	x28, x28, x0                                #! PC = 0x555556a9d0 *)
xor x28@uint64 x28 x0;
(* ror	x13, x13, #62                               #! PC = 0x555556a9d4 *)
ror x13@uint64 x13 62;
(* str	x2, [sp, #176]                              #! EA = L0x7fffffeaf0; PC = 0x555556a9d8 *)
mov L0x7fffffeaf0 x2;
(* ror	x26, x26, #23                               #! PC = 0x555556a9dc *)
ror x26@uint64 x26 23;
(* bic	x2, x0, x30                                 #! PC = 0x555556a9e0 *)
not x30_not@uint64 x30;
and x2@uint64 x0 x30_not;
(* bic	x0, x9, x0                                  #! PC = 0x555556a9e4 *)
not x0_not@uint64 x0;
and x0@uint64 x9 x0_not;
(* eor	x9, x17, x9                                 #! PC = 0x555556a9e8 *)
xor x9@uint64 x17 x9;
(* ror	x24, x24, #2                                #! PC = 0x555556a9ec *)
ror x24@uint64 x24 2;
(* ror	x3, x3, #58                                 #! PC = 0x555556a9f0 *)
ror x3@uint64 x3 58;
(* ror	x14, x14, #39                               #! PC = 0x555556a9f4 *)
ror x14@uint64 x14 39;
(* str	x9, [sp, #168]                              #! EA = L0x7fffffeae8; PC = 0x555556a9f8 *)
mov L0x7fffffeae8 x9;
(* ror	x4, x4, #25                                 #! PC = 0x555556a9fc *)
ror x4@uint64 x4 25;
(* bic	x9, x13, x26                                #! PC = 0x555556aa00 *)
not x26_not@uint64 x26;
and x9@uint64 x13 x26_not;
(* ror	x10, x10, #63                               #! PC = 0x555556aa04 *)
ror x10@uint64 x10 63;
(* ror	x11, x11, #50                               #! PC = 0x555556aa08 *)
ror x11@uint64 x11 50;
(* eor	x17, x9, x4                                 #! PC = 0x555556aa0c *)
xor x17@uint64 x9 x4;
(* ror	x22, x22, #43                               #! PC = 0x555556aa10 *)
ror x22@uint64 x22 43;
(* bic	x6, x14, x3                                 #! PC = 0x555556aa14 *)
not x3_not@uint64 x3;
and x6@uint64 x14 x3_not;
(* bic	x9, x24, x13                                #! PC = 0x555556aa18 *)
not x13_not@uint64 x13;
and x9@uint64 x24 x13_not;
(* eor	x20, x20, x8                                #! PC = 0x555556aa1c *)
xor x20@uint64 x20 x8;
(* ror	x12, x12, #20                               #! PC = 0x555556aa20 *)
ror x12@uint64 x12 20;
(* eor	x6, x6, x10                                 #! PC = 0x555556aa24 *)
xor x6@uint64 x6 x10;
(* ror	x1, x1, #21                                 #! PC = 0x555556aa28 *)
ror x1@uint64 x1 21;
(* eor	x9, x9, x26                                 #! PC = 0x555556aa2c *)
xor x9@uint64 x9 x26;
(* str	x17, [sp, #184]                             #! EA = L0x7fffffeaf8; PC = 0x555556aa30 *)
mov L0x7fffffeaf8 x17;
(* bic	x17, x11, x22                               #! PC = 0x555556aa34 *)
not x22_not@uint64 x22;
and x17@uint64 x11 x22_not;
(* ror	x21, x21, #3                                #! PC = 0x555556aa38 *)
ror x21@uint64 x21 3;
(* ror	x20, x20, #44                               #! PC = 0x555556aa3c *)
ror x20@uint64 x20 44;
(* bic	x16, x1, x12                                #! PC = 0x555556aa40 *)
not x12_not@uint64 x12;
and x16@uint64 x1 x12_not;
(* ror	x27, x27, #61                               #! PC = 0x555556aa44 *)
ror x27@uint64 x27 61;
(* eor	x17, x17, x1                                #! PC = 0x555556aa48 *)
xor x17@uint64 x17 x1;
(* ror	x7, x7, #19                                 #! PC = 0x555556aa4c *)
ror x7@uint64 x7 19;
(* eor	x19, x19, x8                                #! PC = 0x555556aa50 *)
xor x19@uint64 x19 x8;
(* bic	x1, x22, x1                                 #! PC = 0x555556aa54 *)
not x1_not@uint64 x1;
and x1@uint64 x22 x1_not;
(* str	x6, [sp, #112]                              #! EA = L0x7fffffeab0; PC = 0x555556aa58 *)
mov L0x7fffffeab0 x6;
(* bic	x6, x12, x23                                #! PC = 0x555556aa5c *)
not x23_not@uint64 x23;
and x6@uint64 x12 x23_not;
(* str	x9, [sp, #120]                              #! EA = L0x7fffffeab8; PC = 0x555556aa60 *)
mov L0x7fffffeab8 x9;
(* mov	x9, #0x8000000080000000    	// #-9223372034707292160#! PC = 0x555556aa64 *)
mov x9 0x8000000080000000@uint64;
(* ror	x18, x18, #46                               #! PC = 0x555556aa68 *)
ror x18@uint64 x18 46;
(* bic	x8, x27, x20                                #! PC = 0x555556aa6c *)
not x20_not@uint64 x20;
and x8@uint64 x27 x20_not;
(* ror	x5, x5, #36                                 #! PC = 0x555556aa70 *)
ror x5@uint64 x5 36;
(* eor	x0, x0, x30                                 #! PC = 0x555556aa74 *)
xor x0@uint64 x0 x30;
(* eor	x1, x1, x12                                 #! PC = 0x555556aa78 *)
xor x1@uint64 x1 x12;
(* eor	x16, x16, x23                               #! PC = 0x555556aa7c *)
xor x16@uint64 x16 x23;
(* eor	x12, x6, x11                                #! PC = 0x555556aa80 *)
xor x12@uint64 x6 x11;
(* movk	x9, #0x8081                                #! PC = 0x555556aa84 *)
and x9_m@uint64 x9 0xffffffffffff0000@uint64;
or x9@uint64 x9_m 0x8081@uint64;
(* bic	x6, x21, x7                                 #! PC = 0x555556aa88 *)
not x7_not@uint64 x7;
and x6@uint64 x21 x7_not;
(* eor	x8, x8, x5                                  #! PC = 0x555556aa8c *)
xor x8@uint64 x8 x5;
(* ror	x19, x19, #56                               #! PC = 0x555556aa90 *)
ror x19@uint64 x19 56;
(* eor	x6, x6, x27                                 #! PC = 0x555556aa94 *)
xor x6@uint64 x6 x27;
(* eor	x16, x16, x9                                #! PC = 0x555556aa98 *)
xor x16@uint64 x16 x9;
(* bic	x9, x23, x11                                #! PC = 0x555556aa9c *)
not x11_not@uint64 x11;
and x9@uint64 x23 x11_not;
(* bic	x11, x7, x27                                #! PC = 0x555556aaa0 *)
not x27_not@uint64 x27;
and x11@uint64 x7 x27_not;
(* bic	x27, x10, x18                               #! PC = 0x555556aaa4 *)
not x18_not@uint64 x18;
and x27@uint64 x10 x18_not;
(* str	x1, [sp, #104]                              #! EA = L0x7fffffeaa8; PC = 0x555556aaa8 *)
mov L0x7fffffeaa8 x1;
(* bic	x1, x20, x5                                 #! PC = 0x555556aaac *)
not x5_not@uint64 x5;
and x1@uint64 x20 x5_not;
(* str	x0, [sp, #152]                              #! EA = L0x7fffffead8; PC = 0x555556aab0 *)
mov L0x7fffffead8 x0;
(* bic	x0, x3, x10                                 #! PC = 0x555556aab4 *)
not x10_not@uint64 x10;
and x0@uint64 x3 x10_not;
(* eor	x2, x2, x25                                 #! PC = 0x555556aab8 *)
xor x2@uint64 x2 x25;
(* eor	x27, x27, x19                               #! PC = 0x555556aabc *)
xor x27@uint64 x27 x19;
(* bic	x30, x30, x25                               #! PC = 0x555556aac0 *)
not x25_not@uint64 x25;
and x30@uint64 x30 x25_not;
(* bic	x5, x5, x21                                 #! PC = 0x555556aac4 *)
not x21_not@uint64 x21;
and x5@uint64 x5 x21_not;
(* eor	x1, x1, x21                                 #! PC = 0x555556aac8 *)
xor x1@uint64 x1 x21;
(* eor	x21, x0, x18                                #! PC = 0x555556aacc *)
xor x21@uint64 x0 x18;
(* bic	x18, x18, x19                               #! PC = 0x555556aad0 *)
not x19_not@uint64 x19;
and x18@uint64 x18 x19_not;
(* stp	x16, x12, [sp, #128]                        #! EA = L0x7fffffeac0; PC = 0x555556aad4 *)
mov L0x7fffffeac0 x16;
mov L0x7fffffeac8 x12;
(* eor	x16, x16, x8                                #! PC = 0x555556aad8 *)
xor x16@uint64 x16 x8;
(* eor	x11, x11, x20                               #! PC = 0x555556aadc *)
xor x11@uint64 x11 x20;
(* str	x8, [sp, #144]                              #! EA = L0x7fffffead0; PC = 0x555556aae0 *)
mov L0x7fffffead0 x8;
(* bic	x8, x19, x14                                #! PC = 0x555556aae4 *)
not x14_not@uint64 x14;
and x8@uint64 x19 x14_not;
(* ldp	x25, x19, [sp, #168]                        #! EA = L0x7fffffeae8; Value = 0xc0b934eef7c1a653; PC = 0x555556aae8 *)
mov x25 L0x7fffffeae8;
mov x19 L0x7fffffeaf0;
(* eor	x7, x5, x7                                  #! PC = 0x555556aaec *)
xor x7@uint64 x5 x7;
(* ldr	x0, [sp, #112]                              #! EA = L0x7fffffeab0; Value = 0x8d126ab28573093a; PC = 0x555556aaf0 *)
mov x0 L0x7fffffeab0;
(* mov	x5, x2                                      #! PC = 0x555556aaf4 *)
mov x5 x2;
(* ldr	x20, [sp, #184]                             #! EA = L0x7fffffeaf8; Value = 0xc8ea4850d82c0ea0; PC = 0x555556aaf8 *)
mov x20 L0x7fffffeaf8;
(* eor	x23, x17, x6                                #! PC = 0x555556aafc *)
xor x23@uint64 x17 x6;
(* eor	x8, x8, x3                                  #! PC = 0x555556ab00 *)
xor x8@uint64 x8 x3;
(* eor	x10, x0, x5                                 #! PC = 0x555556ab04 *)
xor x10@uint64 x0 x5;
(* eor	x3, x28, x20                                #! PC = 0x555556ab08 *)
xor x3@uint64 x28 x20;
(* bic	x5, x19, x24                                #! PC = 0x555556ab0c *)
not x24_not@uint64 x24;
and x5@uint64 x19 x24_not;
(* eor	x15, x30, x15                               #! PC = 0x555556ab10 *)
xor x15@uint64 x30 x15;
(* eor	x9, x9, x22                                 #! PC = 0x555556ab14 *)
xor x9@uint64 x9 x22;
(* eor	x5, x5, x13                                 #! PC = 0x555556ab18 *)
xor x5@uint64 x5 x13;
(* eor	x23, x23, x3                                #! PC = 0x555556ab1c *)
xor x23@uint64 x23 x3;
(* ldr	x13, [sp, #104]                             #! EA = L0x7fffffeaa8; Value = 0x9ac6e4badf765142; PC = 0x555556ab20 *)
mov x13 L0x7fffffeaa8;
(* eor	x12, x7, x27                                #! PC = 0x555556ab24 *)
xor x12@uint64 x7 x27;
(* ldr	x3, [sp, #120]                              #! EA = L0x7fffffeab8; Value = 0xb4cfa0297b75f84b; PC = 0x555556ab28 *)
mov x3 L0x7fffffeab8;
(* bic	x26, x26, x4                                #! PC = 0x555556ab2c *)
not x4_not@uint64 x4;
and x26@uint64 x26 x4_not;
(* ldr	x30, [sp, #136]                             #! EA = L0x7fffffeac8; Value = 0xb71c1c65852a3b5b; PC = 0x555556ab30 *)
mov x30 L0x7fffffeac8;
(* eor	x0, x25, x3                                 #! PC = 0x555556ab34 *)
xor x0@uint64 x25 x3;
(* ldr	x22, [sp, #152]                             #! EA = L0x7fffffead8; Value = 0xad32118944242271; PC = 0x555556ab38 *)
mov x22 L0x7fffffead8;
(* eor	x3, x13, x11                                #! PC = 0x555556ab3c *)
xor x3@uint64 x13 x11;
(* eor	x10, x10, x16                               #! PC = 0x555556ab40 *)
xor x10@uint64 x10 x16;
(* eor	x13, x1, x21                                #! PC = 0x555556ab44 *)
xor x13@uint64 x1 x21;
(* eor	x16, x8, x22                                #! PC = 0x555556ab48 *)
xor x16@uint64 x8 x22;
(* str	x2, [sp, #160]                              #! EA = L0x7fffffeae0; PC = 0x555556ab4c *)
mov L0x7fffffeae0 x2;
(* eor	x2, x18, x14                                #! PC = 0x555556ab50 *)
xor x2@uint64 x18 x14;
(* eor	x14, x30, x5                                #! PC = 0x555556ab54 *)
xor x14@uint64 x30 x5;
(* eor	x26, x26, x19                               #! PC = 0x555556ab58 *)
xor x26@uint64 x26 x19;
(* eor	x12, x12, x0                                #! PC = 0x555556ab5c *)
xor x12@uint64 x12 x0;
(* bic	x4, x4, x19                                 #! PC = 0x555556ab60 *)
not x19_not@uint64 x19;
and x4@uint64 x4 x19_not;
(* eor	x16, x3, x16                                #! PC = 0x555556ab64 *)
xor x16@uint64 x3 x16;
(* eor	x13, x13, x14                               #! PC = 0x555556ab68 *)
xor x13@uint64 x13 x14;
(* eor	x18, x12, x9                                #! PC = 0x555556ab6c *)
xor x18@uint64 x12 x9;
(* eor	x13, x13, x15                               #! PC = 0x555556ab70 *)
xor x13@uint64 x13 x15;
(* eor	x4, x4, x24                                 #! PC = 0x555556ab74 *)
xor x4@uint64 x4 x24;
(* eor	x23, x23, x2                                #! PC = 0x555556ab78 *)
xor x23@uint64 x23 x2;
(* eor	x16, x16, x26                               #! PC = 0x555556ab7c *)
xor x16@uint64 x16 x26;
(* eor	x10, x10, x4                                #! PC = 0x555556ab80 *)
xor x10@uint64 x10 x4;
(* str	x21, [sp, #152]                             #! EA = L0x7fffffead8; PC = 0x555556ab84 *)
mov L0x7fffffead8 x21;
(* eor	x12, x10, x23, ror #63                      #! PC = 0x555556ab88 *)
ror x23_r x23 63;
xor x12@uint64 x10 x23_r;
(* eor	x21, x16, x18, ror #63                      #! PC = 0x555556ab8c *)
ror x18_r x18 63;
xor x21@uint64 x16 x18_r;
(* eor	x23, x23, x13, ror #63                      #! PC = 0x555556ab90 *)
ror x13_r x13 63;
xor x23@uint64 x23 x13_r;
(* eor	x16, x13, x16, ror #63                      #! PC = 0x555556ab94 *)
ror x16_r x16 63;
xor x16@uint64 x13 x16_r;
(* ldr	x13, [sp, #104]                             #! EA = L0x7fffffeaa8; Value = 0x9ac6e4badf765142; PC = 0x555556ab98 *)
mov x13 L0x7fffffeaa8;
(* mov	x24, x25                                    #! PC = 0x555556ab9c *)
mov x24 x25;
(* eor	x19, x22, x12                               #! PC = 0x555556aba0 *)
xor x19@uint64 x22 x12;
(* eor	x11, x11, x12                               #! PC = 0x555556aba4 *)
xor x11@uint64 x11 x12;
(* eor	x8, x8, x12                                 #! PC = 0x555556aba8 *)
xor x8@uint64 x8 x12;
(* eor	x13, x13, x12                               #! PC = 0x555556abac *)
xor x13@uint64 x13 x12;
(* eor	x12, x26, x12                               #! PC = 0x555556abb0 *)
xor x12@uint64 x26 x12;
(* eor	x26, x24, x23                               #! PC = 0x555556abb4 *)
xor x26@uint64 x24 x23;
(* ldr	x24, [sp, #120]                             #! EA = L0x7fffffeab8; Value = 0xb4cfa0297b75f84b; PC = 0x555556abb8 *)
mov x24 L0x7fffffeab8;
(* eor	x0, x18, x10, ror #63                       #! PC = 0x555556abbc *)
ror x10_r x10 63;
xor x0@uint64 x18 x10_r;
(* ldr	x14, [sp, #144]                             #! EA = L0x7fffffead0; Value = 0x9d91b61c4be7ced4; PC = 0x555556abc0 *)
mov x14 L0x7fffffead0;
(* eor	x25, x27, x23                               #! PC = 0x555556abc4 *)
xor x25@uint64 x27 x23;
(* ldr	x10, [sp, #112]                             #! EA = L0x7fffffeab0; Value = 0x8d126ab28573093a; PC = 0x555556abc8 *)
mov x10 L0x7fffffeab0;
(* eor	x3, x6, x21                                 #! PC = 0x555556abcc *)
xor x3@uint64 x6 x21;
(* eor	x22, x28, x21                               #! PC = 0x555556abd0 *)
xor x22@uint64 x28 x21;
(* eor	x18, x24, x23                               #! PC = 0x555556abd4 *)
xor x18@uint64 x24 x23;
(* eor	x9, x9, x23                                 #! PC = 0x555556abd8 *)
xor x9@uint64 x9 x23;
(* eor	x7, x7, x23                                 #! PC = 0x555556abdc *)
xor x7@uint64 x7 x23;
(* eor	x2, x2, x21                                 #! PC = 0x555556abe0 *)
xor x2@uint64 x2 x21;
(* eor	x20, x20, x21                               #! PC = 0x555556abe4 *)
xor x20@uint64 x20 x21;
(* eor	x17, x17, x21                               #! PC = 0x555556abe8 *)
xor x17@uint64 x17 x21;
(* eor	x21, x14, x16                               #! PC = 0x555556abec *)
xor x21@uint64 x14 x16;
(* ldr	x24, [sp, #128]                             #! EA = L0x7fffffeac0; Value = 0x1c26fea9eb8e3f50; PC = 0x555556abf0 *)
mov x24 L0x7fffffeac0;
(* ror	x11, x11, #20                               #! PC = 0x555556abf4 *)
ror x11@uint64 x11 20;
(* ldr	x23, [sp, #152]                             #! EA = L0x7fffffead8; Value = 0xff5a8c4cc298cbce; PC = 0x555556abf8 *)
mov x23 L0x7fffffead8;
(* ror	x2, x2, #21                                 #! PC = 0x555556abfc *)
ror x2@uint64 x2 21;
(* ldr	x14, [sp, #160]                             #! EA = L0x7fffffeae0; Value = 0x7e347ea0ce00e9e0; PC = 0x555556ac00 *)
mov x14 L0x7fffffeae0;
(* eor	x1, x1, x0                                  #! PC = 0x555556ac04 *)
xor x1@uint64 x1 x0;
(* eor	x10, x10, x16                               #! PC = 0x555556ac08 *)
xor x10@uint64 x10 x16;
(* eor	x6, x30, x0                                 #! PC = 0x555556ac0c *)
xor x6@uint64 x30 x0;
(* eor	x5, x5, x0                                  #! PC = 0x555556ac10 *)
xor x5@uint64 x5 x0;
(* ror	x3, x3, #58                                 #! PC = 0x555556ac14 *)
ror x3@uint64 x3 58;
(* eor	x15, x15, x0                                #! PC = 0x555556ac18 *)
xor x15@uint64 x15 x0;
(* eor	x4, x4, x16                                 #! PC = 0x555556ac1c *)
xor x4@uint64 x4 x16;
(* eor	x14, x14, x16                               #! PC = 0x555556ac20 *)
xor x14@uint64 x14 x16;
(* eor	x0, x23, x0                                 #! PC = 0x555556ac24 *)
xor x0@uint64 x23 x0;
(* eor	x16, x24, x16                               #! PC = 0x555556ac28 *)
xor x16@uint64 x24 x16;
(* bic	x23, x2, x11                                #! PC = 0x555556ac2c *)
not x11_not@uint64 x11;
and x23@uint64 x2 x11_not;
(* ror	x24, x26, #43                               #! PC = 0x555556ac30 *)
ror x24@uint64 x26 43;
(* ror	x26, x25, #39                               #! PC = 0x555556ac34 *)
ror x26@uint64 x25 39;
(* bic	x27, x26, x3                                #! PC = 0x555556ac38 *)
not x3_not@uint64 x3;
and x27@uint64 x26 x3_not;
(* ror	x10, x10, #61                               #! PC = 0x555556ac3c *)
ror x10@uint64 x10 61;
(* ror	x1, x1, #44                                 #! PC = 0x555556ac40 *)
ror x1@uint64 x1 44;
(* eor	x23, x23, x16                               #! PC = 0x555556ac44 *)
xor x23@uint64 x23 x16;
(* ror	x13, x13, #63                               #! PC = 0x555556ac48 *)
ror x13@uint64 x13 63;
(* mov	x28, #0x8009                	// #32777      #! PC = 0x555556ac4c *)
mov x28 0x8009@uint64;
(* ror	x8, x8, #54                                 #! PC = 0x555556ac50 *)
ror x8@uint64 x8 54;
(* ror	x21, x21, #28                               #! PC = 0x555556ac54 *)
ror x21@uint64 x21 28;
(* ror	x9, x9, #36                                 #! PC = 0x555556ac58 *)
ror x9@uint64 x9 36;
(* bic	x30, x10, x1                                #! PC = 0x555556ac5c *)
not x1_not@uint64 x1;
and x30@uint64 x10 x1_not;
(* ror	x22, x22, #49                               #! PC = 0x555556ac60 *)
ror x22@uint64 x22 49;
(* movk	x28, #0x8000, lsl #48                      #! PC = 0x555556ac64 *)
shl tmp 0x8000@uint64 48;
and x28_m@uint64 x28 0x0000ffffffffffff@uint64;
or x28@uint64 x28_m tmp;
(* ror	x18, x18, #8                                #! PC = 0x555556ac68 *)
ror x18@uint64 x18 8;
(* eor	x28, x23, x28                               #! PC = 0x555556ac6c *)
xor x28@uint64 x23 x28;
(* eor	x23, x27, x13                               #! PC = 0x555556ac70 *)
xor x23@uint64 x27 x13;
(* stp	x24, x23, [sp, #144]                        #! EA = L0x7fffffead0; PC = 0x555556ac74 *)
mov L0x7fffffead0 x24;
mov L0x7fffffead8 x23;
(* bic	x25, x18, x22                               #! PC = 0x555556ac78 *)
not x22_not@uint64 x22;
and x25@uint64 x18 x22_not;
(* ror	x6, x6, #37                                 #! PC = 0x555556ac7c *)
ror x6@uint64 x6 37;
(* eor	x30, x30, x9                                #! PC = 0x555556ac80 *)
xor x30@uint64 x30 x9;
(* bic	x24, x22, x8                                #! PC = 0x555556ac84 *)
not x8_not@uint64 x8;
and x24@uint64 x22 x8_not;
(* stp	x30, x26, [sp, #104]                        #! EA = L0x7fffffeaa8; PC = 0x555556ac88 *)
mov L0x7fffffeaa8 x30;
mov L0x7fffffeab0 x26;
(* bic	x26, x8, x21                                #! PC = 0x555556ac8c *)
not x21_not@uint64 x21;
and x26@uint64 x8 x21_not;
(* eor	x27, x25, x8                                #! PC = 0x555556ac90 *)
xor x27@uint64 x25 x8;
(* eor	x26, x26, x6                                #! PC = 0x555556ac94 *)
xor x26@uint64 x26 x6;
(* bic	x8, x6, x18                                 #! PC = 0x555556ac98 *)
not x18_not@uint64 x18;
and x8@uint64 x6 x18_not;
(* eor	x24, x24, x21                               #! PC = 0x555556ac9c *)
xor x24@uint64 x24 x21;
(* bic	x6, x21, x6                                 #! PC = 0x555556aca0 *)
not x6_not@uint64 x6;
and x6@uint64 x21 x6_not;
(* ldr	x21, [sp, #144]                             #! EA = L0x7fffffead0; Value = 0x4eb564832aa67107; PC = 0x555556aca4 *)
mov x21 L0x7fffffead0;
(* ror	x5, x5, #50                                 #! PC = 0x555556aca8 *)
ror x5@uint64 x5 50;
(* str	x24, [sp, #160]                             #! EA = L0x7fffffeae0; PC = 0x555556acac *)
mov L0x7fffffeae0 x24;
(* ror	x7, x7, #9                                  #! PC = 0x555556acb0 *)
ror x7@uint64 x7 9;
(* bic	x24, x5, x21                                #! PC = 0x555556acb4 *)
not x21_not@uint64 x21;
and x24@uint64 x5 x21_not;
(* ror	x19, x19, #19                               #! PC = 0x555556acb8 *)
ror x19@uint64 x19 19;
(* eor	x24, x24, x2                                #! PC = 0x555556acbc *)
xor x24@uint64 x24 x2;
(* ror	x17, x17, #2                                #! PC = 0x555556acc0 *)
ror x17@uint64 x17 2;
(* bic	x2, x21, x2                                 #! PC = 0x555556acc4 *)
not x2_not@uint64 x2;
and x2@uint64 x21 x2_not;
(* ror	x20, x20, #3                                #! PC = 0x555556acc8 *)
ror x20@uint64 x20 3;
(* ror	x12, x12, #62                               #! PC = 0x555556accc *)
ror x12@uint64 x12 62;
(* bic	x25, x11, x16                               #! PC = 0x555556acd0 *)
not x16_not@uint64 x16;
and x25@uint64 x11 x16_not;
(* ror	x14, x14, #23                               #! PC = 0x555556acd4 *)
ror x14@uint64 x14 23;
(* eor	x22, x8, x22                                #! PC = 0x555556acd8 *)
xor x22@uint64 x8 x22;
(* bic	x30, x7, x17                                #! PC = 0x555556acdc *)
not x17_not@uint64 x17;
and x30@uint64 x7 x17_not;
(* eor	x2, x2, x11                                 #! PC = 0x555556ace0 *)
xor x2@uint64 x2 x11;
(* bic	x11, x19, x10                               #! PC = 0x555556ace4 *)
not x10_not@uint64 x10;
and x11@uint64 x19 x10_not;
(* str	x27, [sp, #120]                             #! EA = L0x7fffffeab8; PC = 0x555556ace8 *)
mov L0x7fffffeab8 x27;
(* eor	x30, x30, x12                               #! PC = 0x555556acec *)
xor x30@uint64 x30 x12;
(* ldr	x8, [sp, #104]                              #! EA = L0x7fffffeaa8; Value = 0xa60718e2d12b7ed1; PC = 0x555556acf0 *)
mov x8 L0x7fffffeaa8;
(* bic	x27, x12, x14                               #! PC = 0x555556acf4 *)
not x14_not@uint64 x14;
and x27@uint64 x12 x14_not;
(* eor	x11, x11, x1                                #! PC = 0x555556acf8 *)
xor x11@uint64 x11 x1;
(* bic	x12, x17, x12                               #! PC = 0x555556acfc *)
not x12_not@uint64 x12;
and x12@uint64 x17 x12_not;
(* bic	x1, x1, x9                                  #! PC = 0x555556ad00 *)
not x9_not@uint64 x9;
and x1@uint64 x1 x9_not;
(* bic	x9, x9, x20                                 #! PC = 0x555556ad04 *)
not x20_not@uint64 x20;
and x9@uint64 x9 x20_not;
(* eor	x25, x25, x5                                #! PC = 0x555556ad08 *)
xor x25@uint64 x25 x5;
(* ror	x0, x0, #25                                 #! PC = 0x555556ad0c *)
ror x0@uint64 x0 25;
(* eor	x12, x12, x14                               #! PC = 0x555556ad10 *)
xor x12@uint64 x12 x14;
(* bic	x5, x16, x5                                 #! PC = 0x555556ad14 *)
not x5_not@uint64 x5;
and x5@uint64 x16 x5_not;
(* bic	x16, x20, x19                               #! PC = 0x555556ad18 *)
not x19_not@uint64 x19;
and x16@uint64 x20 x19_not;
(* eor	x20, x1, x20                                #! PC = 0x555556ad1c *)
xor x20@uint64 x1 x20;
(* eor	x19, x9, x19                                #! PC = 0x555556ad20 *)
xor x19@uint64 x9 x19;
(* stp	x22, x12, [sp, #128]                        #! EA = L0x7fffffeac0; PC = 0x555556ad24 *)
mov L0x7fffffeac0 x22;
mov L0x7fffffeac8 x12;
(* bic	x14, x14, x0                                #! PC = 0x555556ad28 *)
not x0_not@uint64 x0;
and x14@uint64 x14 x0_not;
(* ldp	x1, x9, [sp, #112]                          #! EA = L0x7fffffeab0; Value = 0x069f5088adbfb3f4; PC = 0x555556ad2c *)
mov x1 L0x7fffffeab0;
mov x9 L0x7fffffeab8;
(* eor	x22, x28, x8                                #! PC = 0x555556ad30 *)
xor x22@uint64 x28 x8;
(* eor	x8, x23, x26                                #! PC = 0x555556ad34 *)
xor x8@uint64 x23 x26;
(* eor	x27, x27, x0                                #! PC = 0x555556ad38 *)
xor x27@uint64 x27 x0;
(* eor	x18, x6, x18                                #! PC = 0x555556ad3c *)
xor x18@uint64 x6 x18;
(* bic	x0, x0, x7                                  #! PC = 0x555556ad40 *)
not x7_not@uint64 x7;
and x0@uint64 x0 x7_not;
(* eor	x14, x14, x7                                #! PC = 0x555556ad44 *)
xor x14@uint64 x14 x7;
(* eor	x22, x8, x22                                #! PC = 0x555556ad48 *)
xor x22@uint64 x8 x22;
(* ldr	x8, [sp, #160]                              #! EA = L0x7fffffeae0; Value = 0xd88b5844819ddb2c; PC = 0x555556ad4c *)
mov x8 L0x7fffffeae0;
(* ror	x15, x15, #56                               #! PC = 0x555556ad50 *)
ror x15@uint64 x15 56;
(* ldp	x6, x7, [sp, #128]                          #! EA = L0x7fffffeac0; Value = 0x2ec68c4c51c9d325; PC = 0x555556ad54 *)
mov x6 L0x7fffffeac0;
mov x7 L0x7fffffeac8;
(* ror	x4, x4, #46                                 #! PC = 0x555556ad58 *)
ror x4@uint64 x4 46;
(* bic	x12, x15, x1                                #! PC = 0x555556ad5c *)
not x1_not@uint64 x1;
and x12@uint64 x15 x1_not;
(* eor	x16, x16, x10                               #! PC = 0x555556ad60 *)
xor x16@uint64 x16 x10;
(* eor	x12, x12, x3                                #! PC = 0x555556ad64 *)
xor x12@uint64 x12 x3;
(* bic	x3, x3, x13                                 #! PC = 0x555556ad68 *)
not x13_not@uint64 x13;
and x3@uint64 x3 x13_not;
(* bic	x13, x13, x4                                #! PC = 0x555556ad6c *)
not x4_not@uint64 x4;
and x13@uint64 x13 x4_not;
(* eor	x17, x0, x17                                #! PC = 0x555556ad70 *)
xor x17@uint64 x0 x17;
(* eor	x13, x13, x15                               #! PC = 0x555556ad74 *)
xor x13@uint64 x13 x15;
(* eor	x0, x2, x11                                 #! PC = 0x555556ad78 *)
xor x0@uint64 x2 x11;
(* eor	x10, x6, x7                                 #! PC = 0x555556ad7c *)
xor x10@uint64 x6 x7;
(* eor	x1, x19, x13                                #! PC = 0x555556ad80 *)
xor x1@uint64 x19 x13;
(* ldr	x7, [sp, #112]                              #! EA = L0x7fffffeab0; Value = 0x069f5088adbfb3f4; PC = 0x555556ad84 *)
mov x7 L0x7fffffeab0;
(* eor	x3, x3, x4                                  #! PC = 0x555556ad88 *)
xor x3@uint64 x3 x4;
(* eor	x23, x12, x8                                #! PC = 0x555556ad8c *)
xor x23@uint64 x12 x8;
(* eor	x5, x5, x21                                 #! PC = 0x555556ad90 *)
xor x5@uint64 x5 x21;
(* eor	x6, x20, x3                                 #! PC = 0x555556ad94 *)
xor x6@uint64 x20 x3;
(* bic	x4, x4, x15                                 #! PC = 0x555556ad98 *)
not x15_not@uint64 x15;
and x4@uint64 x4 x15_not;
(* eor	x9, x9, x27                                 #! PC = 0x555556ad9c *)
xor x9@uint64 x9 x27;
(* eor	x15, x24, x16                               #! PC = 0x555556ada0 *)
xor x15@uint64 x24 x16;
(* eor	x23, x0, x23                                #! PC = 0x555556ada4 *)
xor x23@uint64 x0 x23;
(* eor	x10, x1, x10                                #! PC = 0x555556ada8 *)
xor x10@uint64 x1 x10;
(* eor	x0, x25, x30                                #! PC = 0x555556adac *)
xor x0@uint64 x25 x30;
(* eor	x22, x22, x17                               #! PC = 0x555556adb0 *)
xor x22@uint64 x22 x17;
(* eor	x10, x10, x5                                #! PC = 0x555556adb4 *)
xor x10@uint64 x10 x5;
(* eor	x4, x4, x7                                  #! PC = 0x555556adb8 *)
xor x4@uint64 x4 x7;
(* eor	x9, x15, x9                                 #! PC = 0x555556adbc *)
xor x9@uint64 x15 x9;
(* eor	x6, x6, x0                                  #! PC = 0x555556adc0 *)
xor x6@uint64 x6 x0;
(* eor	x6, x6, x18                                 #! PC = 0x555556adc4 *)
xor x6@uint64 x6 x18;
(* eor	x23, x23, x14                               #! PC = 0x555556adc8 *)
xor x23@uint64 x23 x14;
(* eor	x9, x9, x4                                  #! PC = 0x555556adcc *)
xor x9@uint64 x9 x4;
(* eor	x1, x10, x22, ror #63                       #! PC = 0x555556add0 *)
ror x22_r x22 63;
xor x1@uint64 x10 x22_r;
(* eor	x10, x23, x10, ror #63                      #! PC = 0x555556add4 *)
ror x10_r x10 63;
xor x10@uint64 x23 x10_r;
(* eor	x23, x6, x23, ror #63                       #! PC = 0x555556add8 *)
ror x23_r x23 63;
xor x23@uint64 x6 x23_r;
(* eor	x0, x22, x9, ror #63                        #! PC = 0x555556addc *)
ror x9_r x9 63;
xor x0@uint64 x22 x9_r;
(* eor	x9, x9, x6, ror #63                         #! PC = 0x555556ade0 *)
ror x6_r x6 63;
xor x9@uint64 x9 x6_r;
(* eor	x6, x27, x10                                #! PC = 0x555556ade4 *)
xor x6@uint64 x27 x10;
(* eor	x21, x8, x0                                 #! PC = 0x555556ade8 *)
xor x21@uint64 x8 x0;
(* ldp	x27, x22, [sp, #120]                        #! EA = L0x7fffffeab8; Value = 0xba8dae7f9c7330e8; PC = 0x555556adec *)
mov x27 L0x7fffffeab8;
mov x22 L0x7fffffeac0;
(* eor	x11, x11, x0                                #! PC = 0x555556adf0 *)
xor x11@uint64 x11 x0;
(* eor	x2, x2, x0                                  #! PC = 0x555556adf4 *)
xor x2@uint64 x2 x0;
(* eor	x14, x14, x0                                #! PC = 0x555556adf8 *)
xor x14@uint64 x14 x0;
(* eor	x12, x12, x0                                #! PC = 0x555556adfc *)
xor x12@uint64 x12 x0;
(* eor	x7, x30, x1                                 #! PC = 0x555556ae00 *)
xor x7@uint64 x30 x1;
(* ldr	x15, [sp, #136]                             #! EA = L0x7fffffeac8; Value = 0x874583456c3f3020; PC = 0x555556ae04 *)
mov x15 L0x7fffffeac8;
(* eor	x24, x24, x10                               #! PC = 0x555556ae08 *)
xor x24@uint64 x24 x10;
(* ldr	x0, [sp, #152]                              #! EA = L0x7fffffead8; Value = 0xcd0f5017b3f11c14; PC = 0x555556ae0c *)
mov x0 L0x7fffffead8;
(* eor	x8, x27, x10                                #! PC = 0x555556ae10 *)
xor x8@uint64 x27 x10;
(* ldr	x30, [sp, #104]                             #! EA = L0x7fffffeaa8; Value = 0xa60718e2d12b7ed1; PC = 0x555556ae14 *)
mov x30 L0x7fffffeaa8;
(* eor	x27, x0, x23                                #! PC = 0x555556ae18 *)
xor x27@uint64 x0 x23;
(* eor	x25, x25, x1                                #! PC = 0x555556ae1c *)
xor x25@uint64 x25 x1;
(* eor	x20, x20, x1                                #! PC = 0x555556ae20 *)
xor x20@uint64 x20 x1;
(* eor	x4, x4, x10                                 #! PC = 0x555556ae24 *)
xor x4@uint64 x4 x10;
(* eor	x15, x15, x9                                #! PC = 0x555556ae28 *)
xor x15@uint64 x15 x9;
(* eor	x13, x13, x9                                #! PC = 0x555556ae2c *)
xor x13@uint64 x13 x9;
(* eor	x10, x16, x10                               #! PC = 0x555556ae30 *)
xor x10@uint64 x16 x10;
(* eor	x19, x19, x9                                #! PC = 0x555556ae34 *)
xor x19@uint64 x19 x9;
(* eor	x5, x5, x9                                  #! PC = 0x555556ae38 *)
xor x5@uint64 x5 x9;
(* eor	x30, x30, x23                               #! PC = 0x555556ae3c *)
xor x30@uint64 x30 x23;
(* ror	x20, x20, #44                               #! PC = 0x555556ae40 *)
ror x20@uint64 x20 44;
(* ror	x13, x13, #39                               #! PC = 0x555556ae44 *)
ror x13@uint64 x13 39;
(* ror	x10, x10, #58                               #! PC = 0x555556ae48 *)
ror x10@uint64 x10 58;
(* ror	x27, x27, #61                               #! PC = 0x555556ae4c *)
ror x27@uint64 x27 61;
(* ror	x25, x25, #37                               #! PC = 0x555556ae50 *)
ror x25@uint64 x25 37;
(* ror	x15, x15, #8                                #! PC = 0x555556ae54 *)
ror x15@uint64 x15 8;
(* eor	x26, x26, x23                               #! PC = 0x555556ae58 *)
xor x26@uint64 x26 x23;
(* ror	x8, x8, #49                                 #! PC = 0x555556ae5c *)
ror x8@uint64 x8 49;
(* ror	x5, x5, #36                                 #! PC = 0x555556ae60 *)
ror x5@uint64 x5 36;
(* ror	x30, x30, #28                               #! PC = 0x555556ae64 *)
ror x30@uint64 x30 28;
(* ror	x2, x2, #63                                 #! PC = 0x555556ae68 *)
ror x2@uint64 x2 63;
(* ror	x12, x12, #54                               #! PC = 0x555556ae6c *)
ror x12@uint64 x12 54;
(* eor	x17, x17, x23                               #! PC = 0x555556ae70 *)
xor x17@uint64 x17 x23;
(* ror	x0, x19, #9                                 #! PC = 0x555556ae74 *)
ror x0@uint64 x19 9;
(* eor	x23, x28, x23                               #! PC = 0x555556ae78 *)
xor x23@uint64 x28 x23;
(* bic	x19, x15, x8                                #! PC = 0x555556ae7c *)
not x8_not@uint64 x8;
and x19@uint64 x15 x8_not;
(* bic	x28, x25, x15                               #! PC = 0x555556ae80 *)
not x15_not@uint64 x15;
and x28@uint64 x25 x15_not;
(* eor	x3, x3, x1                                  #! PC = 0x555556ae84 *)
xor x3@uint64 x3 x1;
(* eor	x18, x18, x1                                #! PC = 0x555556ae88 *)
xor x18@uint64 x18 x1;
(* eor	x22, x22, x9                                #! PC = 0x555556ae8c *)
xor x22@uint64 x22 x9;
(* bic	x1, x13, x10                                #! PC = 0x555556ae90 *)
not x10_not@uint64 x10;
and x1@uint64 x13 x10_not;
(* bic	x9, x27, x20                                #! PC = 0x555556ae94 *)
not x20_not@uint64 x20;
and x9@uint64 x27 x20_not;
(* ror	x14, x14, #62                               #! PC = 0x555556ae98 *)
ror x14@uint64 x14 62;
(* eor	x19, x19, x12                               #! PC = 0x555556ae9c *)
xor x19@uint64 x19 x12;
(* ror	x26, x26, #23                               #! PC = 0x555556aea0 *)
ror x26@uint64 x26 23;
(* eor	x9, x9, x5                                  #! PC = 0x555556aea4 *)
xor x9@uint64 x9 x5;
(* eor	x1, x1, x2                                  #! PC = 0x555556aea8 *)
xor x1@uint64 x1 x2;
(* stp	x9, x1, [sp, #112]                          #! EA = L0x7fffffeab0; PC = 0x555556aeac *)
mov L0x7fffffeab0 x9;
mov L0x7fffffeab8 x1;
(* ror	x24, x24, #2                                #! PC = 0x555556aeb0 *)
ror x24@uint64 x24 2;
(* ror	x3, x3, #25                                 #! PC = 0x555556aeb4 *)
ror x3@uint64 x3 25;
(* str	x0, [sp, #184]                              #! EA = L0x7fffffeaf8; PC = 0x555556aeb8 *)
mov L0x7fffffeaf8 x0;
(* bic	x0, x12, x30                                #! PC = 0x555556aebc *)
not x30_not@uint64 x30;
and x0@uint64 x12 x30_not;
(* bic	x12, x8, x12                                #! PC = 0x555556aec0 *)
not x12_not@uint64 x12;
and x12@uint64 x8 x12_not;
(* eor	x8, x28, x8                                 #! PC = 0x555556aec4 *)
xor x8@uint64 x28 x8;
(* ror	x7, x7, #50                                 #! PC = 0x555556aec8 *)
ror x7@uint64 x7 50;
(* ror	x22, x22, #43                               #! PC = 0x555556aecc *)
ror x22@uint64 x22 43;
(* ror	x11, x11, #20                               #! PC = 0x555556aed0 *)
ror x11@uint64 x11 20;
(* str	x8, [sp, #176]                              #! EA = L0x7fffffeaf0; PC = 0x555556aed4 *)
mov L0x7fffffeaf0 x8;
(* ror	x4, x4, #21                                 #! PC = 0x555556aed8 *)
ror x4@uint64 x4 21;
(* bic	x8, x14, x26                                #! PC = 0x555556aedc *)
not x26_not@uint64 x26;
and x8@uint64 x14 x26_not;
(* eor	x9, x0, x25                                 #! PC = 0x555556aee0 *)
xor x9@uint64 x0 x25;
(* eor	x28, x8, x3                                 #! PC = 0x555556aee4 *)
xor x28@uint64 x8 x3;
(* bic	x0, x7, x22                                 #! PC = 0x555556aee8 *)
not x22_not@uint64 x22;
and x0@uint64 x7 x22_not;
(* bic	x16, x4, x11                                #! PC = 0x555556aeec *)
not x11_not@uint64 x11;
and x16@uint64 x4 x11_not;
(* bic	x8, x24, x14                                #! PC = 0x555556aef0 *)
not x14_not@uint64 x14;
and x8@uint64 x24 x14_not;
(* ldr	x1, [sp, #112]                              #! EA = L0x7fffffeab0; Value = 0xee7d31011fa792df; PC = 0x555556aef4 *)
mov x1 L0x7fffffeab0;
(* eor	x8, x8, x26                                 #! PC = 0x555556aef8 *)
xor x8@uint64 x8 x26;
(* eor	x16, x16, x23                               #! PC = 0x555556aefc *)
xor x16@uint64 x16 x23;
(* str	x19, [sp, #168]                             #! EA = L0x7fffffeae8; PC = 0x555556af00 *)
mov L0x7fffffeae8 x19;
(* eor	x19, x0, x4                                 #! PC = 0x555556af04 *)
xor x19@uint64 x0 x4;
(* bic	x4, x22, x4                                 #! PC = 0x555556af08 *)
not x4_not@uint64 x4;
and x4@uint64 x22 x4_not;
(* ror	x18, x18, #56                               #! PC = 0x555556af0c *)
ror x18@uint64 x18 56;
(* ror	x6, x6, #3                                  #! PC = 0x555556af10 *)
ror x6@uint64 x6 3;
(* str	x19, [sp, #104]                             #! EA = L0x7fffffeaa8; PC = 0x555556af14 *)
mov L0x7fffffeaa8 x19;
(* ror	x17, x17, #46                               #! PC = 0x555556af18 *)
ror x17@uint64 x17 46;
(* eor	x19, x4, x11                                #! PC = 0x555556af1c *)
xor x19@uint64 x4 x11;
(* bic	x11, x11, x23                               #! PC = 0x555556af20 *)
not x23_not@uint64 x23;
and x11@uint64 x11 x23_not;
(* str	x9, [sp, #128]                              #! EA = L0x7fffffeac0; PC = 0x555556af24 *)
mov L0x7fffffeac0 x9;
(* ror	x21, x21, #19                               #! PC = 0x555556af28 *)
ror x21@uint64 x21 19;
(* stp	x28, x8, [sp, #136]                         #! EA = L0x7fffffeac8; PC = 0x555556af2c *)
mov L0x7fffffeac8 x28;
mov L0x7fffffead0 x8;
(* mov	x8, #0x8a                  	// #138         #! PC = 0x555556af30 *)
mov x8 0x8a@uint64;
(* eor	x16, x16, x8                                #! PC = 0x555556af34 *)
xor x16@uint64 x16 x8;
(* eor	x11, x11, x7                                #! PC = 0x555556af38 *)
xor x11@uint64 x11 x7;
(* bic	x9, x23, x7                                 #! PC = 0x555556af3c *)
not x7_not@uint64 x7;
and x9@uint64 x23 x7_not;
(* bic	x8, x18, x13                                #! PC = 0x555556af40 *)
not x13_not@uint64 x13;
and x8@uint64 x18 x13_not;
(* bic	x23, x2, x17                                #! PC = 0x555556af44 *)
not x17_not@uint64 x17;
and x23@uint64 x2 x17_not;
(* bic	x7, x5, x6                                  #! PC = 0x555556af48 *)
not x6_not@uint64 x6;
and x7@uint64 x5 x6_not;
(* bic	x2, x10, x2                                 #! PC = 0x555556af4c *)
not x2_not@uint64 x2;
and x2@uint64 x10 x2_not;
(* str	x16, [sp, #152]                             #! EA = L0x7fffffead8; PC = 0x555556af50 *)
mov L0x7fffffead8 x16;
(* eor	x16, x16, x1                                #! PC = 0x555556af54 *)
xor x16@uint64 x16 x1;
(* bic	x1, x20, x5                                 #! PC = 0x555556af58 *)
not x5_not@uint64 x5;
and x1@uint64 x20 x5_not;
(* eor	x23, x23, x18                               #! PC = 0x555556af5c *)
xor x23@uint64 x23 x18;
(* eor	x7, x7, x21                                 #! PC = 0x555556af60 *)
xor x7@uint64 x7 x21;
(* eor	x2, x2, x17                                 #! PC = 0x555556af64 *)
xor x2@uint64 x2 x17;
(* bic	x28, x6, x21                                #! PC = 0x555556af68 *)
not x21_not@uint64 x21;
and x28@uint64 x6 x21_not;
(* bic	x17, x17, x18                               #! PC = 0x555556af6c *)
not x18_not@uint64 x18;
and x17@uint64 x17 x18_not;
(* eor	x8, x8, x10                                 #! PC = 0x555556af70 *)
xor x8@uint64 x8 x10;
(* eor	x1, x1, x6                                  #! PC = 0x555556af74 *)
xor x1@uint64 x1 x6;
(* str	x11, [sp, #160]                             #! EA = L0x7fffffeae0; PC = 0x555556af78 *)
mov L0x7fffffeae0 x11;
(* bic	x11, x21, x27                               #! PC = 0x555556af7c *)
not x27_not@uint64 x27;
and x11@uint64 x21 x27_not;
(* ldp	x5, x6, [sp, #120]                          #! EA = L0x7fffffeab8; Value = 0x0f0a6da71746467c; PC = 0x555556af80 *)
mov x5 L0x7fffffeab8;
mov x6 L0x7fffffeac0;
(* bic	x26, x26, x3                                #! PC = 0x555556af84 *)
not x3_not@uint64 x3;
and x26@uint64 x26 x3_not;
(* ldp	x4, x10, [sp, #136]                         #! EA = L0x7fffffeac8; Value = 0xdc50f3041b7475e3; PC = 0x555556af88 *)
mov x4 L0x7fffffeac8;
mov x10 L0x7fffffead0;
(* eor	x11, x11, x20                               #! PC = 0x555556af8c *)
xor x11@uint64 x11 x20;
(* ldp	x21, x18, [sp, #168]                        #! EA = L0x7fffffeae8; Value = 0x97dd98760f845f6f; PC = 0x555556af90 *)
mov x21 L0x7fffffeae8;
mov x18 L0x7fffffeaf0;
(* eor	x28, x28, x27                               #! PC = 0x555556af94 *)
xor x28@uint64 x28 x27;
(* ldr	x0, [sp, #184]                              #! EA = L0x7fffffeaf8; Value = 0x3ecfdf8c89a06980; PC = 0x555556af98 *)
mov x0 L0x7fffffeaf8;
(* eor	x20, x5, x6                                 #! PC = 0x555556af9c *)
xor x20@uint64 x5 x6;
(* eor	x12, x12, x30                               #! PC = 0x555556afa0 *)
xor x12@uint64 x12 x30;
(* bic	x25, x30, x25                               #! PC = 0x555556afa4 *)
not x25_not@uint64 x25;
and x25@uint64 x30 x25_not;
(* eor	x26, x26, x0                                #! PC = 0x555556afa8 *)
xor x26@uint64 x26 x0;
(* bic	x5, x0, x24                                 #! PC = 0x555556afac *)
not x24_not@uint64 x24;
and x5@uint64 x0 x24_not;
(* eor	x6, x21, x4                                 #! PC = 0x555556afb0 *)
xor x6@uint64 x21 x4;
(* bic	x4, x3, x0                                  #! PC = 0x555556afb4 *)
not x0_not@uint64 x0;
and x4@uint64 x3 x0_not;
(* ldr	x0, [sp, #104]                              #! EA = L0x7fffffeaa8; Value = 0x974245963d6e2975; PC = 0x555556afb8 *)
mov x0 L0x7fffffeaa8;
(* eor	x4, x4, x24                                 #! PC = 0x555556afbc *)
xor x4@uint64 x4 x24;
(* ldr	x24, [sp, #160]                             #! EA = L0x7fffffeae0; Value = 0x98ff940ab986d973; PC = 0x555556afc0 *)
mov x24 L0x7fffffeae0;
(* eor	x27, x18, x10                               #! PC = 0x555556afc4 *)
xor x27@uint64 x18 x10;
(* eor	x5, x5, x14                                 #! PC = 0x555556afc8 *)
xor x5@uint64 x5 x14;
(* eor	x3, x7, x23                                 #! PC = 0x555556afcc *)
xor x3@uint64 x7 x23;
(* eor	x30, x0, x28                                #! PC = 0x555556afd0 *)
xor x30@uint64 x0 x28;
(* eor	x10, x1, x2                                 #! PC = 0x555556afd4 *)
xor x10@uint64 x1 x2;
(* eor	x0, x17, x13                                #! PC = 0x555556afd8 *)
xor x0@uint64 x17 x13;
(* eor	x9, x9, x22                                 #! PC = 0x555556afdc *)
xor x9@uint64 x9 x22;
(* eor	x13, x24, x5                                #! PC = 0x555556afe0 *)
xor x13@uint64 x24 x5;
(* eor	x20, x20, x16                               #! PC = 0x555556afe4 *)
xor x20@uint64 x20 x16;
(* eor	x30, x30, x6                                #! PC = 0x555556afe8 *)
xor x30@uint64 x30 x6;
(* eor	x16, x8, x12                                #! PC = 0x555556afec *)
xor x16@uint64 x8 x12;
(* eor	x6, x19, x11                                #! PC = 0x555556aff0 *)
xor x6@uint64 x19 x11;
(* eor	x3, x3, x27                                 #! PC = 0x555556aff4 *)
xor x3@uint64 x3 x27;
(* eor	x3, x3, x9                                  #! PC = 0x555556aff8 *)
xor x3@uint64 x3 x9;
(* eor	x15, x25, x15                               #! PC = 0x555556affc *)
xor x15@uint64 x25 x15;
(* eor	x30, x30, x0                                #! PC = 0x555556b000 *)
xor x30@uint64 x30 x0;
(* eor	x16, x6, x16                                #! PC = 0x555556b004 *)
xor x16@uint64 x6 x16;
(* eor	x13, x10, x13                               #! PC = 0x555556b008 *)
xor x13@uint64 x10 x13;
(* eor	x20, x20, x4                                #! PC = 0x555556b00c *)
xor x20@uint64 x20 x4;
(* eor	x13, x13, x15                               #! PC = 0x555556b010 *)
xor x13@uint64 x13 x15;
(* eor	x16, x16, x26                               #! PC = 0x555556b014 *)
xor x16@uint64 x16 x26;
(* eor	x14, x20, x30, ror #63                      #! PC = 0x555556b018 *)
ror x30_r x30 63;
xor x14@uint64 x20 x30_r;
(* eor	x10, x16, x3, ror #63                       #! PC = 0x555556b01c *)
ror x3_r x3 63;
xor x10@uint64 x16 x3_r;
(* eor	x27, x3, x20, ror #63                       #! PC = 0x555556b020 *)
ror x20_r x20 63;
xor x27@uint64 x3 x20_r;
(* eor	x30, x30, x13, ror #63                      #! PC = 0x555556b024 *)
ror x13_r x13 63;
xor x30@uint64 x30 x13_r;
(* eor	x16, x13, x16, ror #63                      #! PC = 0x555556b028 *)
ror x16_r x16 63;
xor x16@uint64 x13 x16_r;
(* eor	x22, x21, x10                               #! PC = 0x555556b02c *)
xor x22@uint64 x21 x10;
(* eor	x13, x19, x14                               #! PC = 0x555556b030 *)
xor x13@uint64 x19 x14;
(* eor	x11, x11, x14                               #! PC = 0x555556b034 *)
xor x11@uint64 x11 x14;
(* eor	x19, x12, x14                               #! PC = 0x555556b038 *)
xor x19@uint64 x12 x14;
(* eor	x8, x8, x14                                 #! PC = 0x555556b03c *)
xor x8@uint64 x8 x14;
(* eor	x12, x26, x14                               #! PC = 0x555556b040 *)
xor x12@uint64 x26 x14;
(* eor	x25, x23, x30                               #! PC = 0x555556b044 *)
xor x25@uint64 x23 x30;
(* ldr	x17, [sp, #104]                             #! EA = L0x7fffffeaa8; Value = 0x974245963d6e2975; PC = 0x555556b048 *)
mov x17 L0x7fffffeaa8;
(* eor	x6, x24, x27                                #! PC = 0x555556b04c *)
xor x6@uint64 x24 x27;
(* ldr	x21, [sp, #120]                             #! EA = L0x7fffffeab8; Value = 0x0f0a6da71746467c; PC = 0x555556b050 *)
mov x21 L0x7fffffeab8;
(* eor	x0, x0, x10                                 #! PC = 0x555556b054 *)
xor x0@uint64 x0 x10;
(* ldr	x3, [sp, #136]                              #! EA = L0x7fffffeac8; Value = 0xdc50f3041b7475e3; PC = 0x555556b058 *)
mov x3 L0x7fffffeac8;
(* eor	x17, x17, x10                               #! PC = 0x555556b05c *)
xor x17@uint64 x17 x10;
(* ldr	x14, [sp, #112]                             #! EA = L0x7fffffeab0; Value = 0xee7d31011fa792df; PC = 0x555556b060 *)
mov x14 L0x7fffffeab0;
(* eor	x20, x3, x10                                #! PC = 0x555556b064 *)
xor x20@uint64 x3 x10;
(* eor	x3, x28, x10                                #! PC = 0x555556b068 *)
xor x3@uint64 x28 x10;
(* eor	x10, x21, x16                               #! PC = 0x555556b06c *)
xor x10@uint64 x21 x16;
(* eor	x21, x14, x16                               #! PC = 0x555556b070 *)
xor x21@uint64 x14 x16;
(* ror	x11, x11, #20                               #! PC = 0x555556b074 *)
ror x11@uint64 x11 20;
(* ldr	x14, [sp, #128]                             #! EA = L0x7fffffeac0; Value = 0x034c6faaa507ee1d; PC = 0x555556b078 *)
mov x14 L0x7fffffeac0;
(* ror	x0, x0, #21                                 #! PC = 0x555556b07c *)
ror x0@uint64 x0 21;
(* ldr	x23, [sp, #144]                             #! EA = L0x7fffffead0; Value = 0x24140bbae7343da3; PC = 0x555556b080 *)
mov x23 L0x7fffffead0;
(* eor	x1, x1, x27                                 #! PC = 0x555556b084 *)
xor x1@uint64 x1 x27;
(* ldr	x24, [sp, #152]                             #! EA = L0x7fffffead8; Value = 0x4c2cf24440641133; PC = 0x555556b088 *)
mov x24 L0x7fffffead8;
(* ror	x26, x25, #39                               #! PC = 0x555556b08c *)
ror x26@uint64 x25 39;
(* eor	x28, x18, x30                               #! PC = 0x555556b090 *)
xor x28@uint64 x18 x30;
(* ror	x3, x3, #58                                 #! PC = 0x555556b094 *)
ror x3@uint64 x3 58;
(* eor	x18, x23, x30                               #! PC = 0x555556b098 *)
xor x18@uint64 x23 x30;
(* eor	x4, x4, x16                                 #! PC = 0x555556b09c *)
xor x4@uint64 x4 x16;
(* bic	x23, x0, x11                                #! PC = 0x555556b0a0 *)
not x11_not@uint64 x11;
and x23@uint64 x0 x11_not;
(* eor	x9, x9, x30                                 #! PC = 0x555556b0a4 *)
xor x9@uint64 x9 x30;
(* eor	x14, x14, x16                               #! PC = 0x555556b0a8 *)
xor x14@uint64 x14 x16;
(* eor	x16, x24, x16                               #! PC = 0x555556b0ac *)
xor x16@uint64 x24 x16;
(* ror	x10, x10, #61                               #! PC = 0x555556b0b0 *)
ror x10@uint64 x10 61;
(* ror	x13, x13, #63                               #! PC = 0x555556b0b4 *)
ror x13@uint64 x13 63;
(* eor	x23, x23, x16                               #! PC = 0x555556b0b8 *)
xor x23@uint64 x23 x16;
(* ror	x1, x1, #44                                 #! PC = 0x555556b0bc *)
ror x1@uint64 x1 44;
(* eor	x5, x5, x27                                 #! PC = 0x555556b0c0 *)
xor x5@uint64 x5 x27;
(* eor	x15, x15, x27                               #! PC = 0x555556b0c4 *)
xor x15@uint64 x15 x27;
(* eor	x2, x2, x27                                 #! PC = 0x555556b0c8 *)
xor x2@uint64 x2 x27;
(* bic	x27, x26, x3                                #! PC = 0x555556b0cc *)
not x3_not@uint64 x3;
and x27@uint64 x26 x3_not;
(* ror	x8, x8, #54                                 #! PC = 0x555556b0d0 *)
ror x8@uint64 x8 54;
(* ror	x21, x21, #28                               #! PC = 0x555556b0d4 *)
ror x21@uint64 x21 28;
(* ror	x22, x22, #49                               #! PC = 0x555556b0d8 *)
ror x22@uint64 x22 49;
(* ror	x9, x9, #36                                 #! PC = 0x555556b0dc *)
ror x9@uint64 x9 36;
(* ror	x18, x18, #8                                #! PC = 0x555556b0e0 *)
ror x18@uint64 x18 8;
(* eor	x7, x7, x30                                 #! PC = 0x555556b0e4 *)
xor x7@uint64 x7 x30;
(* ror	x24, x28, #43                               #! PC = 0x555556b0e8 *)
ror x24@uint64 x28 43;
(* bic	x30, x10, x1                                #! PC = 0x555556b0ec *)
not x1_not@uint64 x1;
and x30@uint64 x10 x1_not;
(* mov	x28, #0x88                  	// #136        #! PC = 0x555556b0f0 *)
mov x28 0x88@uint64;
(* eor	x28, x23, x28                               #! PC = 0x555556b0f4 *)
xor x28@uint64 x23 x28;
(* eor	x23, x27, x13                               #! PC = 0x555556b0f8 *)
xor x23@uint64 x27 x13;
(* stp	x24, x23, [sp, #144]                        #! EA = L0x7fffffead0; PC = 0x555556b0fc *)
mov L0x7fffffead0 x24;
mov L0x7fffffead8 x23;
(* bic	x25, x18, x22                               #! PC = 0x555556b100 *)
not x22_not@uint64 x22;
and x25@uint64 x18 x22_not;
(* ror	x6, x6, #37                                 #! PC = 0x555556b104 *)
ror x6@uint64 x6 37;
(* eor	x30, x30, x9                                #! PC = 0x555556b108 *)
xor x30@uint64 x30 x9;
(* bic	x24, x22, x8                                #! PC = 0x555556b10c *)
not x8_not@uint64 x8;
and x24@uint64 x22 x8_not;
(* stp	x30, x26, [sp, #104]                        #! EA = L0x7fffffeaa8; PC = 0x555556b110 *)
mov L0x7fffffeaa8 x30;
mov L0x7fffffeab0 x26;
(* bic	x26, x8, x21                                #! PC = 0x555556b114 *)
not x21_not@uint64 x21;
and x26@uint64 x8 x21_not;
(* eor	x27, x25, x8                                #! PC = 0x555556b118 *)
xor x27@uint64 x25 x8;
(* eor	x26, x26, x6                                #! PC = 0x555556b11c *)
xor x26@uint64 x26 x6;
(* bic	x8, x6, x18                                 #! PC = 0x555556b120 *)
not x18_not@uint64 x18;
and x8@uint64 x6 x18_not;
(* eor	x24, x24, x21                               #! PC = 0x555556b124 *)
xor x24@uint64 x24 x21;
(* bic	x6, x21, x6                                 #! PC = 0x555556b128 *)
not x6_not@uint64 x6;
and x6@uint64 x21 x6_not;
(* ldr	x21, [sp, #144]                             #! EA = L0x7fffffead0; Value = 0x0a50fc529919e56a; PC = 0x555556b12c *)
mov x21 L0x7fffffead0;
(* ror	x5, x5, #50                                 #! PC = 0x555556b130 *)
ror x5@uint64 x5 50;
(* str	x24, [sp, #160]                             #! EA = L0x7fffffeae0; PC = 0x555556b134 *)
mov L0x7fffffeae0 x24;
(* ror	x7, x7, #9                                  #! PC = 0x555556b138 *)
ror x7@uint64 x7 9;
(* bic	x24, x5, x21                                #! PC = 0x555556b13c *)
not x21_not@uint64 x21;
and x24@uint64 x5 x21_not;
(* ror	x19, x19, #19                               #! PC = 0x555556b140 *)
ror x19@uint64 x19 19;
(* eor	x24, x24, x0                                #! PC = 0x555556b144 *)
xor x24@uint64 x24 x0;
(* ror	x17, x17, #2                                #! PC = 0x555556b148 *)
ror x17@uint64 x17 2;
(* bic	x0, x21, x0                                 #! PC = 0x555556b14c *)
not x0_not@uint64 x0;
and x0@uint64 x21 x0_not;
(* ror	x12, x12, #62                               #! PC = 0x555556b150 *)
ror x12@uint64 x12 62;
(* ror	x20, x20, #3                                #! PC = 0x555556b154 *)
ror x20@uint64 x20 3;
(* bic	x25, x11, x16                               #! PC = 0x555556b158 *)
not x16_not@uint64 x16;
and x25@uint64 x11 x16_not;
(* ror	x14, x14, #23                               #! PC = 0x555556b15c *)
ror x14@uint64 x14 23;
(* bic	x30, x7, x17                                #! PC = 0x555556b160 *)
not x17_not@uint64 x17;
and x30@uint64 x7 x17_not;
(* eor	x0, x0, x11                                 #! PC = 0x555556b164 *)
xor x0@uint64 x0 x11;
(* bic	x11, x19, x10                               #! PC = 0x555556b168 *)
not x10_not@uint64 x10;
and x11@uint64 x19 x10_not;
(* str	x27, [sp, #120]                             #! EA = L0x7fffffeab8; PC = 0x555556b16c *)
mov L0x7fffffeab8 x27;
(* eor	x30, x30, x12                               #! PC = 0x555556b170 *)
xor x30@uint64 x30 x12;
(* bic	x27, x12, x14                               #! PC = 0x555556b174 *)
not x14_not@uint64 x14;
and x27@uint64 x12 x14_not;
(* eor	x11, x11, x1                                #! PC = 0x555556b178 *)
xor x11@uint64 x11 x1;
(* bic	x12, x17, x12                               #! PC = 0x555556b17c *)
not x12_not@uint64 x12;
and x12@uint64 x17 x12_not;
(* bic	x1, x1, x9                                  #! PC = 0x555556b180 *)
not x9_not@uint64 x9;
and x1@uint64 x1 x9_not;
(* bic	x9, x9, x20                                 #! PC = 0x555556b184 *)
not x20_not@uint64 x20;
and x9@uint64 x9 x20_not;
(* eor	x25, x25, x5                                #! PC = 0x555556b188 *)
xor x25@uint64 x25 x5;
(* ror	x2, x2, #25                                 #! PC = 0x555556b18c *)
ror x2@uint64 x2 25;
(* eor	x22, x8, x22                                #! PC = 0x555556b190 *)
xor x22@uint64 x8 x22;
(* eor	x12, x12, x14                               #! PC = 0x555556b194 *)
xor x12@uint64 x12 x14;
(* bic	x5, x16, x5                                 #! PC = 0x555556b198 *)
not x5_not@uint64 x5;
and x5@uint64 x16 x5_not;
(* bic	x16, x20, x19                               #! PC = 0x555556b19c *)
not x19_not@uint64 x19;
and x16@uint64 x20 x19_not;
(* eor	x20, x1, x20                                #! PC = 0x555556b1a0 *)
xor x20@uint64 x1 x20;
(* eor	x19, x9, x19                                #! PC = 0x555556b1a4 *)
xor x19@uint64 x9 x19;
(* stp	x22, x12, [sp, #128]                        #! EA = L0x7fffffeac0; PC = 0x555556b1a8 *)
mov L0x7fffffeac0 x22;
mov L0x7fffffeac8 x12;
(* bic	x14, x14, x2                                #! PC = 0x555556b1ac *)
not x2_not@uint64 x2;
and x14@uint64 x14 x2_not;
(* eor	x27, x27, x2                                #! PC = 0x555556b1b0 *)
xor x27@uint64 x27 x2;
(* ldp	x1, x9, [sp, #112]                          #! EA = L0x7fffffeab0; Value = 0xc3e91cdb2b9d26c5; PC = 0x555556b1b4 *)
mov x1 L0x7fffffeab0;
mov x9 L0x7fffffeab8;
(* bic	x2, x2, x7                                  #! PC = 0x555556b1b8 *)
not x7_not@uint64 x7;
and x2@uint64 x2 x7_not;
(* eor	x18, x6, x18                                #! PC = 0x555556b1bc *)
xor x18@uint64 x6 x18;
(* eor	x14, x14, x7                                #! PC = 0x555556b1c0 *)
xor x14@uint64 x14 x7;
(* ldr	x8, [sp, #104]                              #! EA = L0x7fffffeaa8; Value = 0x2a6607806fcc0d93; PC = 0x555556b1c4 *)
mov x8 L0x7fffffeaa8;
(* ror	x15, x15, #56                               #! PC = 0x555556b1c8 *)
ror x15@uint64 x15 56;
(* ldp	x6, x7, [sp, #128]                          #! EA = L0x7fffffeac0; Value = 0x411e45bf66f79a5f; PC = 0x555556b1cc *)
mov x6 L0x7fffffeac0;
mov x7 L0x7fffffeac8;
(* eor	x22, x28, x8                                #! PC = 0x555556b1d0 *)
xor x22@uint64 x28 x8;
(* eor	x8, x23, x26                                #! PC = 0x555556b1d4 *)
xor x8@uint64 x23 x26;
(* ror	x4, x4, #46                                 #! PC = 0x555556b1d8 *)
ror x4@uint64 x4 46;
(* bic	x12, x15, x1                                #! PC = 0x555556b1dc *)
not x1_not@uint64 x1;
and x12@uint64 x15 x1_not;
(* eor	x22, x8, x22                                #! PC = 0x555556b1e0 *)
xor x22@uint64 x8 x22;
(* ldr	x8, [sp, #160]                              #! EA = L0x7fffffeae0; Value = 0xcb10cda2a5730cdf; PC = 0x555556b1e4 *)
mov x8 L0x7fffffeae0;
(* eor	x12, x12, x3                                #! PC = 0x555556b1e8 *)
xor x12@uint64 x12 x3;
(* bic	x3, x3, x13                                 #! PC = 0x555556b1ec *)
not x13_not@uint64 x13;
and x3@uint64 x3 x13_not;
(* bic	x13, x13, x4                                #! PC = 0x555556b1f0 *)
not x4_not@uint64 x4;
and x13@uint64 x13 x4_not;
(* eor	x16, x16, x10                               #! PC = 0x555556b1f4 *)
xor x16@uint64 x16 x10;
(* eor	x13, x13, x15                               #! PC = 0x555556b1f8 *)
xor x13@uint64 x13 x15;
(* eor	x10, x6, x7                                 #! PC = 0x555556b1fc *)
xor x10@uint64 x6 x7;
(* eor	x1, x0, x11                                 #! PC = 0x555556b200 *)
xor x1@uint64 x0 x11;
(* ldr	x7, [sp, #112]                              #! EA = L0x7fffffeab0; Value = 0xc3e91cdb2b9d26c5; PC = 0x555556b204 *)
mov x7 L0x7fffffeab0;
(* eor	x17, x2, x17                                #! PC = 0x555556b208 *)
xor x17@uint64 x2 x17;
(* eor	x3, x3, x4                                  #! PC = 0x555556b20c *)
xor x3@uint64 x3 x4;
(* eor	x2, x19, x13                                #! PC = 0x555556b210 *)
xor x2@uint64 x19 x13;
(* eor	x23, x12, x8                                #! PC = 0x555556b214 *)
xor x23@uint64 x12 x8;
(* eor	x5, x5, x21                                 #! PC = 0x555556b218 *)
xor x5@uint64 x5 x21;
(* eor	x6, x20, x3                                 #! PC = 0x555556b21c *)
xor x6@uint64 x20 x3;
(* bic	x4, x4, x15                                 #! PC = 0x555556b220 *)
not x15_not@uint64 x15;
and x4@uint64 x4 x15_not;
(* eor	x9, x9, x27                                 #! PC = 0x555556b224 *)
xor x9@uint64 x9 x27;
(* eor	x15, x24, x16                               #! PC = 0x555556b228 *)
xor x15@uint64 x24 x16;
(* eor	x23, x1, x23                                #! PC = 0x555556b22c *)
xor x23@uint64 x1 x23;
(* eor	x10, x2, x10                                #! PC = 0x555556b230 *)
xor x10@uint64 x2 x10;
(* eor	x1, x25, x30                                #! PC = 0x555556b234 *)
xor x1@uint64 x25 x30;
(* eor	x22, x22, x17                               #! PC = 0x555556b238 *)
xor x22@uint64 x22 x17;
(* eor	x10, x10, x5                                #! PC = 0x555556b23c *)
xor x10@uint64 x10 x5;
(* eor	x4, x4, x7                                  #! PC = 0x555556b240 *)
xor x4@uint64 x4 x7;
(* eor	x9, x15, x9                                 #! PC = 0x555556b244 *)
xor x9@uint64 x15 x9;
(* eor	x6, x6, x1                                  #! PC = 0x555556b248 *)
xor x6@uint64 x6 x1;
(* eor	x6, x6, x18                                 #! PC = 0x555556b24c *)
xor x6@uint64 x6 x18;
(* eor	x23, x23, x14                               #! PC = 0x555556b250 *)
xor x23@uint64 x23 x14;
(* eor	x9, x9, x4                                  #! PC = 0x555556b254 *)
xor x9@uint64 x9 x4;
(* eor	x1, x10, x22, ror #63                       #! PC = 0x555556b258 *)
ror x22_r x22 63;
xor x1@uint64 x10 x22_r;
(* eor	x10, x23, x10, ror #63                      #! PC = 0x555556b25c *)
ror x10_r x10 63;
xor x10@uint64 x23 x10_r;
(* eor	x23, x6, x23, ror #63                       #! PC = 0x555556b260 *)
ror x23_r x23 63;
xor x23@uint64 x6 x23_r;
(* eor	x2, x22, x9, ror #63                        #! PC = 0x555556b264 *)
ror x9_r x9 63;
xor x2@uint64 x22 x9_r;
(* eor	x9, x9, x6, ror #63                         #! PC = 0x555556b268 *)
ror x6_r x6 63;
xor x9@uint64 x9 x6_r;
(* eor	x6, x27, x10                                #! PC = 0x555556b26c *)
xor x6@uint64 x27 x10;
(* eor	x7, x30, x1                                 #! PC = 0x555556b270 *)
xor x7@uint64 x30 x1;
(* ldp	x27, x22, [sp, #120]                        #! EA = L0x7fffffeab8; Value = 0x0098e72bb4e4b9b9; PC = 0x555556b274 *)
mov x27 L0x7fffffeab8;
mov x22 L0x7fffffeac0;
(* eor	x25, x25, x1                                #! PC = 0x555556b278 *)
xor x25@uint64 x25 x1;
(* ldr	x15, [sp, #136]                             #! EA = L0x7fffffeac8; Value = 0xee20bf158ebce4b5; PC = 0x555556b27c *)
mov x15 L0x7fffffeac8;
(* eor	x20, x20, x1                                #! PC = 0x555556b280 *)
xor x20@uint64 x20 x1;
(* ldr	x30, [sp, #104]                             #! EA = L0x7fffffeaa8; Value = 0x2a6607806fcc0d93; PC = 0x555556b284 *)
mov x30 L0x7fffffeaa8;
(* eor	x3, x3, x1                                  #! PC = 0x555556b288 *)
xor x3@uint64 x3 x1;
(* eor	x18, x18, x1                                #! PC = 0x555556b28c *)
xor x18@uint64 x18 x1;
(* eor	x21, x8, x2                                 #! PC = 0x555556b290 *)
xor x21@uint64 x8 x2;
(* ldr	x1, [sp, #152]                              #! EA = L0x7fffffead8; Value = 0xd62fe999132495c7; PC = 0x555556b294 *)
mov x1 L0x7fffffead8;
(* eor	x8, x27, x10                                #! PC = 0x555556b298 *)
xor x8@uint64 x27 x10;
(* eor	x15, x15, x9                                #! PC = 0x555556b29c *)
xor x15@uint64 x15 x9;
(* eor	x19, x19, x9                                #! PC = 0x555556b2a0 *)
xor x19@uint64 x19 x9;
(* eor	x12, x12, x2                                #! PC = 0x555556b2a4 *)
xor x12@uint64 x12 x2;
(* eor	x30, x30, x23                               #! PC = 0x555556b2a8 *)
xor x30@uint64 x30 x23;
(* ror	x25, x25, #37                               #! PC = 0x555556b2ac *)
ror x25@uint64 x25 37;
(* eor	x27, x1, x23                                #! PC = 0x555556b2b0 *)
xor x27@uint64 x1 x23;
(* ror	x15, x15, #8                                #! PC = 0x555556b2b4 *)
ror x15@uint64 x15 8;
(* eor	x26, x26, x23                               #! PC = 0x555556b2b8 *)
xor x26@uint64 x26 x23;
(* ror	x8, x8, #49                                 #! PC = 0x555556b2bc *)
ror x8@uint64 x8 49;
(* eor	x14, x14, x2                                #! PC = 0x555556b2c0 *)
xor x14@uint64 x14 x2;
(* ror	x30, x30, #28                               #! PC = 0x555556b2c4 *)
ror x30@uint64 x30 28;
(* eor	x24, x24, x10                               #! PC = 0x555556b2c8 *)
xor x24@uint64 x24 x10;
(* ror	x12, x12, #54                               #! PC = 0x555556b2cc *)
ror x12@uint64 x12 54;
(* eor	x17, x17, x23                               #! PC = 0x555556b2d0 *)
xor x17@uint64 x17 x23;
(* eor	x11, x11, x2                                #! PC = 0x555556b2d4 *)
xor x11@uint64 x11 x2;
(* eor	x23, x28, x23                               #! PC = 0x555556b2d8 *)
xor x23@uint64 x28 x23;
(* eor	x0, x0, x2                                  #! PC = 0x555556b2dc *)
xor x0@uint64 x0 x2;
(* bic	x28, x25, x15                               #! PC = 0x555556b2e0 *)
not x15_not@uint64 x15;
and x28@uint64 x25 x15_not;
(* ror	x2, x19, #9                                 #! PC = 0x555556b2e4 *)
ror x2@uint64 x19 9;
(* eor	x5, x5, x9                                  #! PC = 0x555556b2e8 *)
xor x5@uint64 x5 x9;
(* bic	x19, x15, x8                                #! PC = 0x555556b2ec *)
not x8_not@uint64 x8;
and x19@uint64 x15 x8_not;
(* eor	x22, x22, x9                                #! PC = 0x555556b2f0 *)
xor x22@uint64 x22 x9;
(* ror	x20, x20, #44                               #! PC = 0x555556b2f4 *)
ror x20@uint64 x20 44;
(* ror	x14, x14, #62                               #! PC = 0x555556b2f8 *)
ror x14@uint64 x14 62;
(* ror	x27, x27, #61                               #! PC = 0x555556b2fc *)
ror x27@uint64 x27 61;
(* bic	x1, x12, x30                                #! PC = 0x555556b300 *)
not x30_not@uint64 x30;
and x1@uint64 x12 x30_not;
(* ror	x26, x26, #23                               #! PC = 0x555556b304 *)
ror x26@uint64 x26 23;
(* eor	x19, x19, x12                               #! PC = 0x555556b308 *)
xor x19@uint64 x19 x12;
(* eor	x4, x4, x10                                 #! PC = 0x555556b30c *)
xor x4@uint64 x4 x10;
(* bic	x12, x8, x12                                #! PC = 0x555556b310 *)
not x12_not@uint64 x12;
and x12@uint64 x8 x12_not;
(* eor	x8, x28, x8                                 #! PC = 0x555556b314 *)
xor x8@uint64 x28 x8;
(* ror	x24, x24, #2                                #! PC = 0x555556b318 *)
ror x24@uint64 x24 2;
(* ror	x3, x3, #25                                 #! PC = 0x555556b31c *)
ror x3@uint64 x3 25;
(* ror	x7, x7, #50                                 #! PC = 0x555556b320 *)
ror x7@uint64 x7 50;
(* ror	x5, x5, #36                                 #! PC = 0x555556b324 *)
ror x5@uint64 x5 36;
(* eor	x1, x1, x25                                 #! PC = 0x555556b328 *)
xor x1@uint64 x1 x25;
(* ror	x22, x22, #43                               #! PC = 0x555556b32c *)
ror x22@uint64 x22 43;
(* eor	x13, x13, x9                                #! PC = 0x555556b330 *)
xor x13@uint64 x13 x9;
(* bic	x9, x27, x20                                #! PC = 0x555556b334 *)
not x20_not@uint64 x20;
and x9@uint64 x27 x20_not;
(* stp	x19, x8, [sp, #168]                         #! EA = L0x7fffffeae8; PC = 0x555556b338 *)
mov L0x7fffffeae8 x19;
mov L0x7fffffeaf0 x8;
(* bic	x8, x14, x26                                #! PC = 0x555556b33c *)
not x26_not@uint64 x26;
and x8@uint64 x14 x26_not;
(* eor	x28, x8, x3                                 #! PC = 0x555556b340 *)
xor x28@uint64 x8 x3;
(* eor	x9, x9, x5                                  #! PC = 0x555556b344 *)
xor x9@uint64 x9 x5;
(* ror	x4, x4, #21                                 #! PC = 0x555556b348 *)
ror x4@uint64 x4 21;
(* bic	x8, x24, x14                                #! PC = 0x555556b34c *)
not x14_not@uint64 x14;
and x8@uint64 x24 x14_not;
(* stp	x9, x1, [sp, #112]                          #! EA = L0x7fffffeab0; PC = 0x555556b350 *)
mov L0x7fffffeab0 x9;
mov L0x7fffffeab8 x1;
(* bic	x1, x7, x22                                 #! PC = 0x555556b354 *)
not x22_not@uint64 x22;
and x1@uint64 x7 x22_not;
(* eor	x9, x1, x4                                  #! PC = 0x555556b358 *)
xor x9@uint64 x1 x4;
(* eor	x8, x8, x26                                 #! PC = 0x555556b35c *)
xor x8@uint64 x8 x26;
(* stp	x28, x8, [sp, #128]                         #! EA = L0x7fffffeac0; PC = 0x555556b360 *)
mov L0x7fffffeac0 x28;
mov L0x7fffffeac8 x8;
(* ror	x11, x11, #20                               #! PC = 0x555556b364 *)
ror x11@uint64 x11 20;
(* eor	x10, x16, x10                               #! PC = 0x555556b368 *)
xor x10@uint64 x16 x10;
(* str	x2, [sp, #184]                              #! EA = L0x7fffffeaf8; PC = 0x555556b36c *)
mov L0x7fffffeaf8 x2;
(* bic	x16, x4, x11                                #! PC = 0x555556b370 *)
not x11_not@uint64 x11;
and x16@uint64 x4 x11_not;
(* str	x9, [sp, #104]                              #! EA = L0x7fffffeaa8; PC = 0x555556b374 *)
mov L0x7fffffeaa8 x9;
(* bic	x9, x23, x7                                 #! PC = 0x555556b378 *)
not x7_not@uint64 x7;
and x9@uint64 x23 x7_not;
(* bic	x4, x22, x4                                 #! PC = 0x555556b37c *)
not x4_not@uint64 x4;
and x4@uint64 x22 x4_not;
(* eor	x9, x9, x22                                 #! PC = 0x555556b380 *)
xor x9@uint64 x9 x22;
(* ldp	x22, x1, [sp, #104]                         #! EA = L0x7fffffeaa8; Value = 0x047d1fe9a5735d3e; PC = 0x555556b384 *)
mov x22 L0x7fffffeaa8;
mov x1 L0x7fffffeab0;
(* ror	x13, x13, #39                               #! PC = 0x555556b388 *)
ror x13@uint64 x13 39;
(* mov	x8, #0x8009                	// #32777       #! PC = 0x555556b38c *)
mov x8 0x8009@uint64;
(* ror	x10, x10, #58                               #! PC = 0x555556b390 *)
ror x10@uint64 x10 58;
(* eor	x19, x4, x11                                #! PC = 0x555556b394 *)
xor x19@uint64 x4 x11;
(* ror	x18, x18, #56                               #! PC = 0x555556b398 *)
ror x18@uint64 x18 56;
(* ror	x6, x6, #3                                  #! PC = 0x555556b39c *)
ror x6@uint64 x6 3;
(* ror	x17, x17, #46                               #! PC = 0x555556b3a0 *)
ror x17@uint64 x17 46;
(* bic	x2, x13, x10                                #! PC = 0x555556b3a4 *)
not x10_not@uint64 x10;
and x2@uint64 x13 x10_not;
(* ror	x0, x0, #63                                 #! PC = 0x555556b3a8 *)
ror x0@uint64 x0 63;
(* eor	x16, x16, x23                               #! PC = 0x555556b3ac *)
xor x16@uint64 x16 x23;
(* bic	x11, x11, x23                               #! PC = 0x555556b3b0 *)
not x23_not@uint64 x23;
and x11@uint64 x11 x23_not;
(* movk	x8, #0x8000, lsl #16                       #! PC = 0x555556b3b4 *)
shl tmp 0x8000@uint64 16;
and x8_m@uint64 x8 0xffffffff0000ffff@uint64;
or x8@uint64 x8_m tmp;
(* ror	x21, x21, #19                               #! PC = 0x555556b3b8 *)
ror x21@uint64 x21 19;
(* eor	x2, x2, x0                                  #! PC = 0x555556b3bc *)
xor x2@uint64 x2 x0;
(* eor	x11, x11, x7                                #! PC = 0x555556b3c0 *)
xor x11@uint64 x11 x7;
(* eor	x16, x16, x8                                #! PC = 0x555556b3c4 *)
xor x16@uint64 x16 x8;
(* bic	x7, x5, x6                                  #! PC = 0x555556b3c8 *)
not x6_not@uint64 x6;
and x7@uint64 x5 x6_not;
(* bic	x23, x0, x17                                #! PC = 0x555556b3cc *)
not x17_not@uint64 x17;
and x23@uint64 x0 x17_not;
(* bic	x8, x18, x13                                #! PC = 0x555556b3d0 *)
not x13_not@uint64 x13;
and x8@uint64 x18 x13_not;
(* bic	x0, x10, x0                                 #! PC = 0x555556b3d4 *)
not x0_not@uint64 x0;
and x0@uint64 x10 x0_not;
(* eor	x23, x23, x18                               #! PC = 0x555556b3d8 *)
xor x23@uint64 x23 x18;
(* bic	x28, x6, x21                                #! PC = 0x555556b3dc *)
not x21_not@uint64 x21;
and x28@uint64 x6 x21_not;
(* eor	x7, x7, x21                                 #! PC = 0x555556b3e0 *)
xor x7@uint64 x7 x21;
(* eor	x0, x0, x17                                 #! PC = 0x555556b3e4 *)
xor x0@uint64 x0 x17;
(* eor	x8, x8, x10                                 #! PC = 0x555556b3e8 *)
xor x8@uint64 x8 x10;
(* bic	x17, x17, x18                               #! PC = 0x555556b3ec *)
not x18_not@uint64 x18;
and x17@uint64 x17 x18_not;
(* stp	x11, x2, [sp, #152]                         #! EA = L0x7fffffead8; PC = 0x555556b3f0 *)
mov L0x7fffffead8 x11;
mov L0x7fffffeae0 x2;
(* bic	x11, x21, x27                               #! PC = 0x555556b3f4 *)
not x27_not@uint64 x27;
and x11@uint64 x21 x27_not;
(* ldp	x4, x10, [sp, #128]                         #! EA = L0x7fffffeac0; Value = 0xd011374275d00613; PC = 0x555556b3f8 *)
mov x4 L0x7fffffeac0;
mov x10 L0x7fffffeac8;
(* str	x16, [sp, #144]                             #! EA = L0x7fffffead0; PC = 0x555556b3fc *)
mov L0x7fffffead0 x16;
(* ldp	x21, x18, [sp, #168]                        #! EA = L0x7fffffeae8; Value = 0xf2f5d348a106bf06; PC = 0x555556b400 *)
mov x21 L0x7fffffeae8;
mov x18 L0x7fffffeaf0;
(* eor	x16, x16, x1                                #! PC = 0x555556b404 *)
xor x16@uint64 x16 x1;
(* bic	x1, x20, x5                                 #! PC = 0x555556b408 *)
not x5_not@uint64 x5;
and x1@uint64 x20 x5_not;
(* mov	x5, x2                                      #! PC = 0x555556b40c *)
mov x5 x2;
(* eor	x1, x1, x6                                  #! PC = 0x555556b410 *)
xor x1@uint64 x1 x6;
(* eor	x11, x11, x20                               #! PC = 0x555556b414 *)
xor x11@uint64 x11 x20;
(* ldr	x6, [sp, #120]                              #! EA = L0x7fffffeab8; Value = 0x9aca590b82c6e65a; PC = 0x555556b418 *)
mov x6 L0x7fffffeab8;
(* eor	x28, x28, x27                               #! PC = 0x555556b41c *)
xor x28@uint64 x28 x27;
(* ldr	x2, [sp, #184]                              #! EA = L0x7fffffeaf8; Value = 0xf523e253915c119f; PC = 0x555556b420 *)
mov x2 L0x7fffffeaf8;
(* eor	x20, x5, x6                                 #! PC = 0x555556b424 *)
xor x20@uint64 x5 x6;
(* eor	x6, x21, x4                                 #! PC = 0x555556b428 *)
xor x6@uint64 x21 x4;
(* eor	x12, x12, x30                               #! PC = 0x555556b42c *)
xor x12@uint64 x12 x30;
(* bic	x4, x3, x2                                  #! PC = 0x555556b430 *)
not x2_not@uint64 x2;
and x4@uint64 x3 x2_not;
(* bic	x5, x2, x24                                 #! PC = 0x555556b434 *)
not x24_not@uint64 x24;
and x5@uint64 x2 x24_not;
(* eor	x4, x4, x24                                 #! PC = 0x555556b438 *)
xor x4@uint64 x4 x24;
(* eor	x5, x5, x14                                 #! PC = 0x555556b43c *)
xor x5@uint64 x5 x14;
(* ldr	x24, [sp, #152]                             #! EA = L0x7fffffead8; Value = 0x1e0c00d75e50513b; PC = 0x555556b440 *)
mov x24 L0x7fffffead8;
(* eor	x27, x18, x10                               #! PC = 0x555556b444 *)
xor x27@uint64 x18 x10;
(* bic	x25, x30, x25                               #! PC = 0x555556b448 *)
not x25_not@uint64 x25;
and x25@uint64 x30 x25_not;
(* eor	x10, x1, x0                                 #! PC = 0x555556b44c *)
xor x10@uint64 x1 x0;
(* eor	x30, x22, x28                               #! PC = 0x555556b450 *)
xor x30@uint64 x22 x28;
(* mov	x14, x2                                     #! PC = 0x555556b454 *)
mov x14 x2;
(* eor	x2, x17, x13                                #! PC = 0x555556b458 *)
xor x2@uint64 x17 x13;
(* eor	x13, x24, x5                                #! PC = 0x555556b45c *)
xor x13@uint64 x24 x5;
(* eor	x15, x25, x15                               #! PC = 0x555556b460 *)
xor x15@uint64 x25 x15;
(* bic	x26, x26, x3                                #! PC = 0x555556b464 *)
not x3_not@uint64 x3;
and x26@uint64 x26 x3_not;
(* eor	x30, x30, x6                                #! PC = 0x555556b468 *)
xor x30@uint64 x30 x6;
(* eor	x3, x7, x23                                 #! PC = 0x555556b46c *)
xor x3@uint64 x7 x23;
(* eor	x13, x10, x13                               #! PC = 0x555556b470 *)
xor x13@uint64 x10 x13;
(* eor	x6, x19, x11                                #! PC = 0x555556b474 *)
xor x6@uint64 x19 x11;
(* eor	x13, x13, x15                               #! PC = 0x555556b478 *)
xor x13@uint64 x13 x15;
(* eor	x30, x30, x2                                #! PC = 0x555556b47c *)
xor x30@uint64 x30 x2;
(* eor	x20, x20, x16                               #! PC = 0x555556b480 *)
xor x20@uint64 x20 x16;
(* eor	x3, x3, x27                                 #! PC = 0x555556b484 *)
xor x3@uint64 x3 x27;
(* eor	x16, x8, x12                                #! PC = 0x555556b488 *)
xor x16@uint64 x8 x12;
(* eor	x26, x26, x14                               #! PC = 0x555556b48c *)
xor x26@uint64 x26 x14;
(* eor	x3, x3, x9                                  #! PC = 0x555556b490 *)
xor x3@uint64 x3 x9;
(* eor	x20, x20, x4                                #! PC = 0x555556b494 *)
xor x20@uint64 x20 x4;
(* eor	x16, x6, x16                                #! PC = 0x555556b498 *)
xor x16@uint64 x6 x16;
(* eor	x14, x20, x30, ror #63                      #! PC = 0x555556b49c *)
ror x30_r x30 63;
xor x14@uint64 x20 x30_r;
(* eor	x16, x16, x26                               #! PC = 0x555556b4a0 *)
xor x16@uint64 x16 x26;
(* eor	x30, x30, x13, ror #63                      #! PC = 0x555556b4a4 *)
ror x13_r x13 63;
xor x30@uint64 x30 x13_r;
(* eor	x27, x3, x20, ror #63                       #! PC = 0x555556b4a8 *)
ror x20_r x20 63;
xor x27@uint64 x3 x20_r;
(* eor	x10, x16, x3, ror #63                       #! PC = 0x555556b4ac *)
ror x3_r x3 63;
xor x10@uint64 x16 x3_r;
(* eor	x25, x23, x30                               #! PC = 0x555556b4b0 *)
xor x25@uint64 x23 x30;
(* eor	x16, x13, x16, ror #63                      #! PC = 0x555556b4b4 *)
ror x16_r x16 63;
xor x16@uint64 x13 x16_r;
(* ldp	x3, x23, [sp, #128]                         #! EA = L0x7fffffeac0; Value = 0xd011374275d00613; PC = 0x555556b4b8 *)
mov x3 L0x7fffffeac0;
mov x23 L0x7fffffeac8;
(* eor	x13, x19, x14                               #! PC = 0x555556b4bc *)
xor x13@uint64 x19 x14;
(* eor	x22, x21, x10                               #! PC = 0x555556b4c0 *)
xor x22@uint64 x21 x10;
(* eor	x19, x12, x14                               #! PC = 0x555556b4c4 *)
xor x19@uint64 x12 x14;
(* eor	x11, x11, x14                               #! PC = 0x555556b4c8 *)
xor x11@uint64 x11 x14;
(* eor	x12, x26, x14                               #! PC = 0x555556b4cc *)
xor x12@uint64 x26 x14;
(* eor	x8, x8, x14                                 #! PC = 0x555556b4d0 *)
xor x8@uint64 x8 x14;
(* eor	x6, x24, x27                                #! PC = 0x555556b4d4 *)
xor x6@uint64 x24 x27;
(* ldr	x17, [sp, #104]                             #! EA = L0x7fffffeaa8; Value = 0x047d1fe9a5735d3e; PC = 0x555556b4d8 *)
mov x17 L0x7fffffeaa8;
(* eor	x20, x3, x10                                #! PC = 0x555556b4dc *)
xor x20@uint64 x3 x10;
(* ldr	x14, [sp, #112]                             #! EA = L0x7fffffeab0; Value = 0xf836580d3d884690; PC = 0x555556b4e0 *)
mov x14 L0x7fffffeab0;
(* eor	x3, x28, x10                                #! PC = 0x555556b4e4 *)
xor x3@uint64 x28 x10;
(* ldr	x21, [sp, #160]                             #! EA = L0x7fffffeae0; Value = 0x5fb64a24a261dac4; PC = 0x555556b4e8 *)
mov x21 L0x7fffffeae0;
(* eor	x2, x2, x10                                 #! PC = 0x555556b4ec *)
xor x2@uint64 x2 x10;
(* eor	x17, x17, x10                               #! PC = 0x555556b4f0 *)
xor x17@uint64 x17 x10;
(* ror	x11, x11, #20                               #! PC = 0x555556b4f4 *)
ror x11@uint64 x11 20;
(* eor	x10, x21, x16                               #! PC = 0x555556b4f8 *)
xor x10@uint64 x21 x16;
(* eor	x21, x14, x16                               #! PC = 0x555556b4fc *)
xor x21@uint64 x14 x16;
(* ldr	x14, [sp, #120]                             #! EA = L0x7fffffeab8; Value = 0x9aca590b82c6e65a; PC = 0x555556b500 *)
mov x14 L0x7fffffeab8;
(* eor	x28, x18, x30                               #! PC = 0x555556b504 *)
xor x28@uint64 x18 x30;
(* ldr	x24, [sp, #144]                             #! EA = L0x7fffffead0; Value = 0xf7163292395a2007; PC = 0x555556b508 *)
mov x24 L0x7fffffead0;
(* ror	x2, x2, #21                                 #! PC = 0x555556b50c *)
ror x2@uint64 x2 21;
(* eor	x1, x1, x27                                 #! PC = 0x555556b510 *)
xor x1@uint64 x1 x27;
(* ror	x26, x25, #39                               #! PC = 0x555556b514 *)
ror x26@uint64 x25 39;
(* eor	x18, x23, x30                               #! PC = 0x555556b518 *)
xor x18@uint64 x23 x30;
(* ror	x3, x3, #58                                 #! PC = 0x555556b51c *)
ror x3@uint64 x3 58;
(* bic	x23, x2, x11                                #! PC = 0x555556b520 *)
not x11_not@uint64 x11;
and x23@uint64 x2 x11_not;
(* eor	x4, x4, x16                                 #! PC = 0x555556b524 *)
xor x4@uint64 x4 x16;
(* eor	x9, x9, x30                                 #! PC = 0x555556b528 *)
xor x9@uint64 x9 x30;
(* eor	x14, x14, x16                               #! PC = 0x555556b52c *)
xor x14@uint64 x14 x16;
(* eor	x16, x24, x16                               #! PC = 0x555556b530 *)
xor x16@uint64 x24 x16;
(* ror	x10, x10, #61                               #! PC = 0x555556b534 *)
ror x10@uint64 x10 61;
(* ror	x1, x1, #44                                 #! PC = 0x555556b538 *)
ror x1@uint64 x1 44;
(* ror	x13, x13, #63                               #! PC = 0x555556b53c *)
ror x13@uint64 x13 63;
(* eor	x23, x23, x16                               #! PC = 0x555556b540 *)
xor x23@uint64 x23 x16;
(* ror	x24, x28, #43                               #! PC = 0x555556b544 *)
ror x24@uint64 x28 43;
(* eor	x0, x0, x27                                 #! PC = 0x555556b548 *)
xor x0@uint64 x0 x27;
(* eor	x5, x5, x27                                 #! PC = 0x555556b54c *)
xor x5@uint64 x5 x27;
(* eor	x15, x15, x27                               #! PC = 0x555556b550 *)
xor x15@uint64 x15 x27;
(* mov	x28, #0xa                   	// #10         #! PC = 0x555556b554 *)
mov x28 0xa@uint64;
(* bic	x27, x26, x3                                #! PC = 0x555556b558 *)
not x3_not@uint64 x3;
and x27@uint64 x26 x3_not;
(* ror	x8, x8, #54                                 #! PC = 0x555556b55c *)
ror x8@uint64 x8 54;
(* ror	x21, x21, #28                               #! PC = 0x555556b560 *)
ror x21@uint64 x21 28;
(* ror	x22, x22, #49                               #! PC = 0x555556b564 *)
ror x22@uint64 x22 49;
(* ror	x9, x9, #36                                 #! PC = 0x555556b568 *)
ror x9@uint64 x9 36;
(* eor	x7, x7, x30                                 #! PC = 0x555556b56c *)
xor x7@uint64 x7 x30;
(* ror	x18, x18, #8                                #! PC = 0x555556b570 *)
ror x18@uint64 x18 8;
(* bic	x30, x10, x1                                #! PC = 0x555556b574 *)
not x1_not@uint64 x1;
and x30@uint64 x10 x1_not;
(* movk	x28, #0x8000, lsl #16                      #! PC = 0x555556b578 *)
shl tmp 0x8000@uint64 16;
and x28_m@uint64 x28 0xffffffff0000ffff@uint64;
or x28@uint64 x28_m tmp;
(* eor	x28, x23, x28                               #! PC = 0x555556b57c *)
xor x28@uint64 x23 x28;
(* eor	x23, x27, x13                               #! PC = 0x555556b580 *)
xor x23@uint64 x27 x13;
(* stp	x24, x23, [sp, #144]                        #! EA = L0x7fffffead0; PC = 0x555556b584 *)
mov L0x7fffffead0 x24;
mov L0x7fffffead8 x23;
(* bic	x25, x18, x22                               #! PC = 0x555556b588 *)
not x22_not@uint64 x22;
and x25@uint64 x18 x22_not;
(* ror	x6, x6, #37                                 #! PC = 0x555556b58c *)
ror x6@uint64 x6 37;
(* eor	x30, x30, x9                                #! PC = 0x555556b590 *)
xor x30@uint64 x30 x9;
(* bic	x24, x22, x8                                #! PC = 0x555556b594 *)
not x8_not@uint64 x8;
and x24@uint64 x22 x8_not;
(* stp	x30, x26, [sp, #104]                        #! EA = L0x7fffffeaa8; PC = 0x555556b598 *)
mov L0x7fffffeaa8 x30;
mov L0x7fffffeab0 x26;
(* bic	x26, x8, x21                                #! PC = 0x555556b59c *)
not x21_not@uint64 x21;
and x26@uint64 x8 x21_not;
(* eor	x27, x25, x8                                #! PC = 0x555556b5a0 *)
xor x27@uint64 x25 x8;
(* eor	x26, x26, x6                                #! PC = 0x555556b5a4 *)
xor x26@uint64 x26 x6;
(* bic	x8, x6, x18                                 #! PC = 0x555556b5a8 *)
not x18_not@uint64 x18;
and x8@uint64 x6 x18_not;
(* eor	x24, x24, x21                               #! PC = 0x555556b5ac *)
xor x24@uint64 x24 x21;
(* bic	x6, x21, x6                                 #! PC = 0x555556b5b0 *)
not x6_not@uint64 x6;
and x6@uint64 x21 x6_not;
(* ldr	x21, [sp, #144]                             #! EA = L0x7fffffead0; Value = 0x9efaf7fc1df6c069; PC = 0x555556b5b4 *)
mov x21 L0x7fffffead0;
(* ror	x5, x5, #50                                 #! PC = 0x555556b5b8 *)
ror x5@uint64 x5 50;
(* str	x24, [sp, #160]                             #! EA = L0x7fffffeae0; PC = 0x555556b5bc *)
mov L0x7fffffeae0 x24;
(* ror	x7, x7, #9                                  #! PC = 0x555556b5c0 *)
ror x7@uint64 x7 9;
(* bic	x24, x5, x21                                #! PC = 0x555556b5c4 *)
not x21_not@uint64 x21;
and x24@uint64 x5 x21_not;
(* ror	x19, x19, #19                               #! PC = 0x555556b5c8 *)
ror x19@uint64 x19 19;
(* eor	x24, x24, x2                                #! PC = 0x555556b5cc *)
xor x24@uint64 x24 x2;
(* ror	x17, x17, #2                                #! PC = 0x555556b5d0 *)
ror x17@uint64 x17 2;
(* bic	x2, x21, x2                                 #! PC = 0x555556b5d4 *)
not x2_not@uint64 x2;
and x2@uint64 x21 x2_not;
(* ror	x12, x12, #62                               #! PC = 0x555556b5d8 *)
ror x12@uint64 x12 62;
(* ror	x20, x20, #3                                #! PC = 0x555556b5dc *)
ror x20@uint64 x20 3;
(* bic	x25, x11, x16                               #! PC = 0x555556b5e0 *)
not x16_not@uint64 x16;
and x25@uint64 x11 x16_not;
(* ror	x14, x14, #23                               #! PC = 0x555556b5e4 *)
ror x14@uint64 x14 23;
(* eor	x22, x8, x22                                #! PC = 0x555556b5e8 *)
xor x22@uint64 x8 x22;
(* bic	x30, x7, x17                                #! PC = 0x555556b5ec *)
not x17_not@uint64 x17;
and x30@uint64 x7 x17_not;
(* eor	x2, x2, x11                                 #! PC = 0x555556b5f0 *)
xor x2@uint64 x2 x11;
(* bic	x11, x19, x10                               #! PC = 0x555556b5f4 *)
not x10_not@uint64 x10;
and x11@uint64 x19 x10_not;
(* str	x27, [sp, #120]                             #! EA = L0x7fffffeab8; PC = 0x555556b5f8 *)
mov L0x7fffffeab8 x27;
(* eor	x30, x30, x12                               #! PC = 0x555556b5fc *)
xor x30@uint64 x30 x12;
(* ldr	x8, [sp, #104]                              #! EA = L0x7fffffeaa8; Value = 0xe8b3f1fd65dc5e64; PC = 0x555556b600 *)
mov x8 L0x7fffffeaa8;
(* bic	x27, x12, x14                               #! PC = 0x555556b604 *)
not x14_not@uint64 x14;
and x27@uint64 x12 x14_not;
(* eor	x11, x11, x1                                #! PC = 0x555556b608 *)
xor x11@uint64 x11 x1;
(* bic	x12, x17, x12                               #! PC = 0x555556b60c *)
not x12_not@uint64 x12;
and x12@uint64 x17 x12_not;
(* bic	x1, x1, x9                                  #! PC = 0x555556b610 *)
not x9_not@uint64 x9;
and x1@uint64 x1 x9_not;
(* bic	x9, x9, x20                                 #! PC = 0x555556b614 *)
not x20_not@uint64 x20;
and x9@uint64 x9 x20_not;
(* eor	x25, x25, x5                                #! PC = 0x555556b618 *)
xor x25@uint64 x25 x5;
(* ror	x0, x0, #25                                 #! PC = 0x555556b61c *)
ror x0@uint64 x0 25;
(* eor	x12, x12, x14                               #! PC = 0x555556b620 *)
xor x12@uint64 x12 x14;
(* bic	x5, x16, x5                                 #! PC = 0x555556b624 *)
not x5_not@uint64 x5;
and x5@uint64 x16 x5_not;
(* bic	x16, x20, x19                               #! PC = 0x555556b628 *)
not x19_not@uint64 x19;
and x16@uint64 x20 x19_not;
(* eor	x20, x1, x20                                #! PC = 0x555556b62c *)
xor x20@uint64 x1 x20;
(* eor	x19, x9, x19                                #! PC = 0x555556b630 *)
xor x19@uint64 x9 x19;
(* stp	x22, x12, [sp, #128]                        #! EA = L0x7fffffeac0; PC = 0x555556b634 *)
mov L0x7fffffeac0 x22;
mov L0x7fffffeac8 x12;
(* bic	x14, x14, x0                                #! PC = 0x555556b638 *)
not x0_not@uint64 x0;
and x14@uint64 x14 x0_not;
(* ldp	x1, x9, [sp, #112]                          #! EA = L0x7fffffeab0; Value = 0xe81f6fc078e37d28; PC = 0x555556b63c *)
mov x1 L0x7fffffeab0;
mov x9 L0x7fffffeab8;
(* eor	x22, x28, x8                                #! PC = 0x555556b640 *)
xor x22@uint64 x28 x8;
(* eor	x8, x23, x26                                #! PC = 0x555556b644 *)
xor x8@uint64 x23 x26;
(* eor	x27, x27, x0                                #! PC = 0x555556b648 *)
xor x27@uint64 x27 x0;
(* eor	x18, x6, x18                                #! PC = 0x555556b64c *)
xor x18@uint64 x6 x18;
(* bic	x0, x0, x7                                  #! PC = 0x555556b650 *)
not x7_not@uint64 x7;
and x0@uint64 x0 x7_not;
(* eor	x14, x14, x7                                #! PC = 0x555556b654 *)
xor x14@uint64 x14 x7;
(* eor	x22, x8, x22                                #! PC = 0x555556b658 *)
xor x22@uint64 x8 x22;
(* ldr	x8, [sp, #160]                              #! EA = L0x7fffffeae0; Value = 0x9c6ca769e24a3e08; PC = 0x555556b65c *)
mov x8 L0x7fffffeae0;
(* ror	x15, x15, #56                               #! PC = 0x555556b660 *)
ror x15@uint64 x15 56;
(* ldp	x6, x7, [sp, #128]                          #! EA = L0x7fffffeac0; Value = 0xcb7eaaeb64f6e80d; PC = 0x555556b664 *)
mov x6 L0x7fffffeac0;
mov x7 L0x7fffffeac8;
(* ror	x4, x4, #46                                 #! PC = 0x555556b668 *)
ror x4@uint64 x4 46;
(* bic	x12, x15, x1                                #! PC = 0x555556b66c *)
not x1_not@uint64 x1;
and x12@uint64 x15 x1_not;
(* eor	x16, x16, x10                               #! PC = 0x555556b670 *)
xor x16@uint64 x16 x10;
(* eor	x12, x12, x3                                #! PC = 0x555556b674 *)
xor x12@uint64 x12 x3;
(* bic	x3, x3, x13                                 #! PC = 0x555556b678 *)
not x13_not@uint64 x13;
and x3@uint64 x3 x13_not;
(* bic	x13, x13, x4                                #! PC = 0x555556b67c *)
not x4_not@uint64 x4;
and x13@uint64 x13 x4_not;
(* eor	x17, x0, x17                                #! PC = 0x555556b680 *)
xor x17@uint64 x0 x17;
(* eor	x13, x13, x15                               #! PC = 0x555556b684 *)
xor x13@uint64 x13 x15;
(* eor	x0, x2, x11                                 #! PC = 0x555556b688 *)
xor x0@uint64 x2 x11;
(* eor	x10, x6, x7                                 #! PC = 0x555556b68c *)
xor x10@uint64 x6 x7;
(* eor	x1, x19, x13                                #! PC = 0x555556b690 *)
xor x1@uint64 x19 x13;
(* ldr	x7, [sp, #112]                              #! EA = L0x7fffffeab0; Value = 0xe81f6fc078e37d28; PC = 0x555556b694 *)
mov x7 L0x7fffffeab0;
(* eor	x3, x3, x4                                  #! PC = 0x555556b698 *)
xor x3@uint64 x3 x4;
(* eor	x23, x12, x8                                #! PC = 0x555556b69c *)
xor x23@uint64 x12 x8;
(* eor	x5, x5, x21                                 #! PC = 0x555556b6a0 *)
xor x5@uint64 x5 x21;
(* eor	x6, x20, x3                                 #! PC = 0x555556b6a4 *)
xor x6@uint64 x20 x3;
(* bic	x4, x4, x15                                 #! PC = 0x555556b6a8 *)
not x15_not@uint64 x15;
and x4@uint64 x4 x15_not;
(* eor	x9, x9, x27                                 #! PC = 0x555556b6ac *)
xor x9@uint64 x9 x27;
(* eor	x15, x24, x16                               #! PC = 0x555556b6b0 *)
xor x15@uint64 x24 x16;
(* eor	x23, x0, x23                                #! PC = 0x555556b6b4 *)
xor x23@uint64 x0 x23;
(* eor	x10, x1, x10                                #! PC = 0x555556b6b8 *)
xor x10@uint64 x1 x10;
(* eor	x0, x25, x30                                #! PC = 0x555556b6bc *)
xor x0@uint64 x25 x30;
(* eor	x22, x22, x17                               #! PC = 0x555556b6c0 *)
xor x22@uint64 x22 x17;
(* eor	x10, x10, x5                                #! PC = 0x555556b6c4 *)
xor x10@uint64 x10 x5;
(* eor	x4, x4, x7                                  #! PC = 0x555556b6c8 *)
xor x4@uint64 x4 x7;
(* eor	x9, x15, x9                                 #! PC = 0x555556b6cc *)
xor x9@uint64 x15 x9;
(* eor	x6, x6, x0                                  #! PC = 0x555556b6d0 *)
xor x6@uint64 x6 x0;
(* eor	x6, x6, x18                                 #! PC = 0x555556b6d4 *)
xor x6@uint64 x6 x18;
(* eor	x23, x23, x14                               #! PC = 0x555556b6d8 *)
xor x23@uint64 x23 x14;
(* eor	x9, x9, x4                                  #! PC = 0x555556b6dc *)
xor x9@uint64 x9 x4;
(* eor	x1, x10, x22, ror #63                       #! PC = 0x555556b6e0 *)
ror x22_r x22 63;
xor x1@uint64 x10 x22_r;
(* eor	x10, x23, x10, ror #63                      #! PC = 0x555556b6e4 *)
ror x10_r x10 63;
xor x10@uint64 x23 x10_r;
(* eor	x23, x6, x23, ror #63                       #! PC = 0x555556b6e8 *)
ror x23_r x23 63;
xor x23@uint64 x6 x23_r;
(* eor	x0, x22, x9, ror #63                        #! PC = 0x555556b6ec *)
ror x9_r x9 63;
xor x0@uint64 x22 x9_r;
(* eor	x9, x9, x6, ror #63                         #! PC = 0x555556b6f0 *)
ror x6_r x6 63;
xor x9@uint64 x9 x6_r;
(* eor	x6, x27, x10                                #! PC = 0x555556b6f4 *)
xor x6@uint64 x27 x10;
(* eor	x21, x8, x0                                 #! PC = 0x555556b6f8 *)
xor x21@uint64 x8 x0;
(* ldp	x27, x22, [sp, #120]                        #! EA = L0x7fffffeab8; Value = 0x56705085e7abbf79; PC = 0x555556b6fc *)
mov x27 L0x7fffffeab8;
mov x22 L0x7fffffeac0;
(* eor	x7, x30, x1                                 #! PC = 0x555556b700 *)
xor x7@uint64 x30 x1;
(* ldr	x15, [sp, #136]                             #! EA = L0x7fffffeac8; Value = 0x1134a7fb17c5c47c; PC = 0x555556b704 *)
mov x15 L0x7fffffeac8;
(* eor	x11, x11, x0                                #! PC = 0x555556b708 *)
xor x11@uint64 x11 x0;
(* eor	x2, x2, x0                                  #! PC = 0x555556b70c *)
xor x2@uint64 x2 x0;
(* eor	x14, x14, x0                                #! PC = 0x555556b710 *)
xor x14@uint64 x14 x0;
(* eor	x12, x12, x0                                #! PC = 0x555556b714 *)
xor x12@uint64 x12 x0;
(* eor	x25, x25, x1                                #! PC = 0x555556b718 *)
xor x25@uint64 x25 x1;
(* ldr	x30, [sp, #104]                             #! EA = L0x7fffffeaa8; Value = 0xe8b3f1fd65dc5e64; PC = 0x555556b71c *)
mov x30 L0x7fffffeaa8;
(* eor	x8, x27, x10                                #! PC = 0x555556b720 *)
xor x8@uint64 x27 x10;
(* ldr	x0, [sp, #152]                              #! EA = L0x7fffffead8; Value = 0xc8afe68585afbbeb; PC = 0x555556b724 *)
mov x0 L0x7fffffead8;
(* eor	x15, x15, x9                                #! PC = 0x555556b728 *)
xor x15@uint64 x15 x9;
(* eor	x19, x19, x9                                #! PC = 0x555556b72c *)
xor x19@uint64 x19 x9;
(* eor	x24, x24, x10                               #! PC = 0x555556b730 *)
xor x24@uint64 x24 x10;
(* eor	x27, x0, x23                                #! PC = 0x555556b734 *)
xor x27@uint64 x0 x23;
(* eor	x20, x20, x1                                #! PC = 0x555556b738 *)
xor x20@uint64 x20 x1;
(* eor	x4, x4, x10                                 #! PC = 0x555556b73c *)
xor x4@uint64 x4 x10;
(* eor	x13, x13, x9                                #! PC = 0x555556b740 *)
xor x13@uint64 x13 x9;
(* eor	x10, x16, x10                               #! PC = 0x555556b744 *)
xor x10@uint64 x16 x10;
(* eor	x30, x30, x23                               #! PC = 0x555556b748 *)
xor x30@uint64 x30 x23;
(* ror	x25, x25, #37                               #! PC = 0x555556b74c *)
ror x25@uint64 x25 37;
(* ror	x15, x15, #8                                #! PC = 0x555556b750 *)
ror x15@uint64 x15 8;
(* eor	x26, x26, x23                               #! PC = 0x555556b754 *)
xor x26@uint64 x26 x23;
(* ror	x8, x8, #49                                 #! PC = 0x555556b758 *)
ror x8@uint64 x8 49;
(* eor	x5, x5, x9                                  #! PC = 0x555556b75c *)
xor x5@uint64 x5 x9;
(* ror	x20, x20, #44                               #! PC = 0x555556b760 *)
ror x20@uint64 x20 44;
(* ror	x13, x13, #39                               #! PC = 0x555556b764 *)
ror x13@uint64 x13 39;
(* ror	x10, x10, #58                               #! PC = 0x555556b768 *)
ror x10@uint64 x10 58;
(* ror	x27, x27, #61                               #! PC = 0x555556b76c *)
ror x27@uint64 x27 61;
(* ror	x30, x30, #28                               #! PC = 0x555556b770 *)
ror x30@uint64 x30 28;
(* ror	x12, x12, #54                               #! PC = 0x555556b774 *)
ror x12@uint64 x12 54;
(* eor	x17, x17, x23                               #! PC = 0x555556b778 *)
xor x17@uint64 x17 x23;
(* ror	x0, x19, #9                                 #! PC = 0x555556b77c *)
ror x0@uint64 x19 9;
(* eor	x23, x28, x23                               #! PC = 0x555556b780 *)
xor x23@uint64 x28 x23;
(* bic	x19, x15, x8                                #! PC = 0x555556b784 *)
not x8_not@uint64 x8;
and x19@uint64 x15 x8_not;
(* bic	x28, x25, x15                               #! PC = 0x555556b788 *)
not x15_not@uint64 x15;
and x28@uint64 x25 x15_not;
(* eor	x3, x3, x1                                  #! PC = 0x555556b78c *)
xor x3@uint64 x3 x1;
(* ror	x14, x14, #62                               #! PC = 0x555556b790 *)
ror x14@uint64 x14 62;
(* ror	x5, x5, #36                                 #! PC = 0x555556b794 *)
ror x5@uint64 x5 36;
(* ror	x26, x26, #23                               #! PC = 0x555556b798 *)
ror x26@uint64 x26 23;
(* eor	x19, x19, x12                               #! PC = 0x555556b79c *)
xor x19@uint64 x19 x12;
(* ror	x2, x2, #63                                 #! PC = 0x555556b7a0 *)
ror x2@uint64 x2 63;
(* eor	x18, x18, x1                                #! PC = 0x555556b7a4 *)
xor x18@uint64 x18 x1;
(* eor	x22, x22, x9                                #! PC = 0x555556b7a8 *)
xor x22@uint64 x22 x9;
(* bic	x1, x13, x10                                #! PC = 0x555556b7ac *)
not x10_not@uint64 x10;
and x1@uint64 x13 x10_not;
(* bic	x9, x27, x20                                #! PC = 0x555556b7b0 *)
not x20_not@uint64 x20;
and x9@uint64 x27 x20_not;
(* str	x0, [sp, #184]                              #! EA = L0x7fffffeaf8; PC = 0x555556b7b4 *)
mov L0x7fffffeaf8 x0;
(* bic	x0, x12, x30                                #! PC = 0x555556b7b8 *)
not x30_not@uint64 x30;
and x0@uint64 x12 x30_not;
(* bic	x12, x8, x12                                #! PC = 0x555556b7bc *)
not x12_not@uint64 x12;
and x12@uint64 x8 x12_not;
(* eor	x8, x28, x8                                 #! PC = 0x555556b7c0 *)
xor x8@uint64 x28 x8;
(* ror	x24, x24, #2                                #! PC = 0x555556b7c4 *)
ror x24@uint64 x24 2;
(* eor	x9, x9, x5                                  #! PC = 0x555556b7c8 *)
xor x9@uint64 x9 x5;
(* ror	x3, x3, #25                                 #! PC = 0x555556b7cc *)
ror x3@uint64 x3 25;
(* eor	x1, x1, x2                                  #! PC = 0x555556b7d0 *)
xor x1@uint64 x1 x2;
(* stp	x9, x1, [sp, #112]                          #! EA = L0x7fffffeab0; PC = 0x555556b7d4 *)
mov L0x7fffffeab0 x9;
mov L0x7fffffeab8 x1;
(* ror	x7, x7, #50                                 #! PC = 0x555556b7d8 *)
ror x7@uint64 x7 50;
(* str	x8, [sp, #176]                              #! EA = L0x7fffffeaf0; PC = 0x555556b7dc *)
mov L0x7fffffeaf0 x8;
(* bic	x8, x14, x26                                #! PC = 0x555556b7e0 *)
not x26_not@uint64 x26;
and x8@uint64 x14 x26_not;
(* eor	x28, x8, x3                                 #! PC = 0x555556b7e4 *)
xor x28@uint64 x8 x3;
(* ror	x22, x22, #43                               #! PC = 0x555556b7e8 *)
ror x22@uint64 x22 43;
(* ror	x11, x11, #20                               #! PC = 0x555556b7ec *)
ror x11@uint64 x11 20;
(* bic	x8, x24, x14                                #! PC = 0x555556b7f0 *)
not x14_not@uint64 x14;
and x8@uint64 x24 x14_not;
(* ror	x4, x4, #21                                 #! PC = 0x555556b7f4 *)
ror x4@uint64 x4 21;
(* eor	x9, x0, x25                                 #! PC = 0x555556b7f8 *)
xor x9@uint64 x0 x25;
(* bic	x16, x4, x11                                #! PC = 0x555556b7fc *)
not x11_not@uint64 x11;
and x16@uint64 x4 x11_not;
(* bic	x0, x7, x22                                 #! PC = 0x555556b800 *)
not x22_not@uint64 x22;
and x0@uint64 x7 x22_not;
(* eor	x8, x8, x26                                 #! PC = 0x555556b804 *)
xor x8@uint64 x8 x26;
(* ldr	x1, [sp, #112]                              #! EA = L0x7fffffeab0; Value = 0x3305ec448df92478; PC = 0x555556b808 *)
mov x1 L0x7fffffeab0;
(* eor	x16, x16, x23                               #! PC = 0x555556b80c *)
xor x16@uint64 x16 x23;
(* stp	x28, x8, [sp, #136]                         #! EA = L0x7fffffeac8; PC = 0x555556b810 *)
mov L0x7fffffeac8 x28;
mov L0x7fffffead0 x8;
(* mov	x8, #0x808b                	// #32907       #! PC = 0x555556b814 *)
mov x8 0x808b@uint64;
(* ror	x18, x18, #56                               #! PC = 0x555556b818 *)
ror x18@uint64 x18 56;
(* str	x19, [sp, #168]                             #! EA = L0x7fffffeae8; PC = 0x555556b81c *)
mov L0x7fffffeae8 x19;
(* eor	x19, x0, x4                                 #! PC = 0x555556b820 *)
xor x19@uint64 x0 x4;
(* bic	x4, x22, x4                                 #! PC = 0x555556b824 *)
not x4_not@uint64 x4;
and x4@uint64 x22 x4_not;
(* ror	x6, x6, #3                                  #! PC = 0x555556b828 *)
ror x6@uint64 x6 3;
(* movk	x8, #0x8000, lsl #16                       #! PC = 0x555556b82c *)
shl tmp 0x8000@uint64 16;
and x8_m@uint64 x8 0xffffffff0000ffff@uint64;
or x8@uint64 x8_m tmp;
(* ror	x17, x17, #46                               #! PC = 0x555556b830 *)
ror x17@uint64 x17 46;
(* eor	x16, x16, x8                                #! PC = 0x555556b834 *)
xor x16@uint64 x16 x8;
(* str	x19, [sp, #104]                             #! EA = L0x7fffffeaa8; PC = 0x555556b838 *)
mov L0x7fffffeaa8 x19;
(* eor	x19, x4, x11                                #! PC = 0x555556b83c *)
xor x19@uint64 x4 x11;
(* bic	x11, x11, x23                               #! PC = 0x555556b840 *)
not x23_not@uint64 x23;
and x11@uint64 x11 x23_not;
(* str	x9, [sp, #128]                              #! EA = L0x7fffffeac0; PC = 0x555556b844 *)
mov L0x7fffffeac0 x9;
(* ror	x21, x21, #19                               #! PC = 0x555556b848 *)
ror x21@uint64 x21 19;
(* eor	x11, x11, x7                                #! PC = 0x555556b84c *)
xor x11@uint64 x11 x7;
(* bic	x9, x23, x7                                 #! PC = 0x555556b850 *)
not x7_not@uint64 x7;
and x9@uint64 x23 x7_not;
(* bic	x8, x18, x13                                #! PC = 0x555556b854 *)
not x13_not@uint64 x13;
and x8@uint64 x18 x13_not;
(* bic	x23, x2, x17                                #! PC = 0x555556b858 *)
not x17_not@uint64 x17;
and x23@uint64 x2 x17_not;
(* bic	x7, x5, x6                                  #! PC = 0x555556b85c *)
not x6_not@uint64 x6;
and x7@uint64 x5 x6_not;
(* bic	x2, x10, x2                                 #! PC = 0x555556b860 *)
not x2_not@uint64 x2;
and x2@uint64 x10 x2_not;
(* str	x16, [sp, #152]                             #! EA = L0x7fffffead8; PC = 0x555556b864 *)
mov L0x7fffffead8 x16;
(* eor	x16, x16, x1                                #! PC = 0x555556b868 *)
xor x16@uint64 x16 x1;
(* bic	x1, x20, x5                                 #! PC = 0x555556b86c *)
not x5_not@uint64 x5;
and x1@uint64 x20 x5_not;
(* eor	x23, x23, x18                               #! PC = 0x555556b870 *)
xor x23@uint64 x23 x18;
(* eor	x7, x7, x21                                 #! PC = 0x555556b874 *)
xor x7@uint64 x7 x21;
(* eor	x2, x2, x17                                 #! PC = 0x555556b878 *)
xor x2@uint64 x2 x17;
(* bic	x28, x6, x21                                #! PC = 0x555556b87c *)
not x21_not@uint64 x21;
and x28@uint64 x6 x21_not;
(* bic	x17, x17, x18                               #! PC = 0x555556b880 *)
not x18_not@uint64 x18;
and x17@uint64 x17 x18_not;
(* eor	x8, x8, x10                                 #! PC = 0x555556b884 *)
xor x8@uint64 x8 x10;
(* eor	x1, x1, x6                                  #! PC = 0x555556b888 *)
xor x1@uint64 x1 x6;
(* str	x11, [sp, #160]                             #! EA = L0x7fffffeae0; PC = 0x555556b88c *)
mov L0x7fffffeae0 x11;
(* bic	x11, x21, x27                               #! PC = 0x555556b890 *)
not x27_not@uint64 x27;
and x11@uint64 x21 x27_not;
(* ldp	x5, x6, [sp, #120]                          #! EA = L0x7fffffeab8; Value = 0x1db5bb8fea43615c; PC = 0x555556b894 *)
mov x5 L0x7fffffeab8;
mov x6 L0x7fffffeac0;
(* bic	x26, x26, x3                                #! PC = 0x555556b898 *)
not x3_not@uint64 x3;
and x26@uint64 x26 x3_not;
(* ldp	x4, x10, [sp, #136]                         #! EA = L0x7fffffeac8; Value = 0x2e4d9255c2752e5e; PC = 0x555556b89c *)
mov x4 L0x7fffffeac8;
mov x10 L0x7fffffead0;
(* eor	x11, x11, x20                               #! PC = 0x555556b8a0 *)
xor x11@uint64 x11 x20;
(* ldp	x21, x18, [sp, #168]                        #! EA = L0x7fffffeae8; Value = 0x32da0290802b7261; PC = 0x555556b8a4 *)
mov x21 L0x7fffffeae8;
mov x18 L0x7fffffeaf0;
(* eor	x28, x28, x27                               #! PC = 0x555556b8a8 *)
xor x28@uint64 x28 x27;
(* ldr	x0, [sp, #184]                              #! EA = L0x7fffffeaf8; Value = 0xf2daf80118d94483; PC = 0x555556b8ac *)
mov x0 L0x7fffffeaf8;
(* eor	x20, x5, x6                                 #! PC = 0x555556b8b0 *)
xor x20@uint64 x5 x6;
(* eor	x12, x12, x30                               #! PC = 0x555556b8b4 *)
xor x12@uint64 x12 x30;
(* bic	x25, x30, x25                               #! PC = 0x555556b8b8 *)
not x25_not@uint64 x25;
and x25@uint64 x30 x25_not;
(* eor	x26, x26, x0                                #! PC = 0x555556b8bc *)
xor x26@uint64 x26 x0;
(* bic	x5, x0, x24                                 #! PC = 0x555556b8c0 *)
not x24_not@uint64 x24;
and x5@uint64 x0 x24_not;
(* eor	x6, x21, x4                                 #! PC = 0x555556b8c4 *)
xor x6@uint64 x21 x4;
(* bic	x4, x3, x0                                  #! PC = 0x555556b8c8 *)
not x0_not@uint64 x0;
and x4@uint64 x3 x0_not;
(* ldr	x0, [sp, #104]                              #! EA = L0x7fffffeaa8; Value = 0x3f1db52c0e971146; PC = 0x555556b8cc *)
mov x0 L0x7fffffeaa8;
(* eor	x4, x4, x24                                 #! PC = 0x555556b8d0 *)
xor x4@uint64 x4 x24;
(* ldr	x24, [sp, #160]                             #! EA = L0x7fffffeae0; Value = 0x2f347be749b70181; PC = 0x555556b8d4 *)
mov x24 L0x7fffffeae0;
(* eor	x27, x18, x10                               #! PC = 0x555556b8d8 *)
xor x27@uint64 x18 x10;
(* eor	x5, x5, x14                                 #! PC = 0x555556b8dc *)
xor x5@uint64 x5 x14;
(* eor	x3, x7, x23                                 #! PC = 0x555556b8e0 *)
xor x3@uint64 x7 x23;
(* eor	x30, x0, x28                                #! PC = 0x555556b8e4 *)
xor x30@uint64 x0 x28;
(* eor	x10, x1, x2                                 #! PC = 0x555556b8e8 *)
xor x10@uint64 x1 x2;
(* eor	x0, x17, x13                                #! PC = 0x555556b8ec *)
xor x0@uint64 x17 x13;
(* eor	x9, x9, x22                                 #! PC = 0x555556b8f0 *)
xor x9@uint64 x9 x22;
(* eor	x13, x24, x5                                #! PC = 0x555556b8f4 *)
xor x13@uint64 x24 x5;
(* eor	x20, x20, x16                               #! PC = 0x555556b8f8 *)
xor x20@uint64 x20 x16;
(* eor	x30, x30, x6                                #! PC = 0x555556b8fc *)
xor x30@uint64 x30 x6;
(* eor	x16, x8, x12                                #! PC = 0x555556b900 *)
xor x16@uint64 x8 x12;
(* eor	x6, x19, x11                                #! PC = 0x555556b904 *)
xor x6@uint64 x19 x11;
(* eor	x3, x3, x27                                 #! PC = 0x555556b908 *)
xor x3@uint64 x3 x27;
(* eor	x3, x3, x9                                  #! PC = 0x555556b90c *)
xor x3@uint64 x3 x9;
(* eor	x15, x25, x15                               #! PC = 0x555556b910 *)
xor x15@uint64 x25 x15;
(* eor	x30, x30, x0                                #! PC = 0x555556b914 *)
xor x30@uint64 x30 x0;
(* eor	x16, x6, x16                                #! PC = 0x555556b918 *)
xor x16@uint64 x6 x16;
(* eor	x13, x10, x13                               #! PC = 0x555556b91c *)
xor x13@uint64 x10 x13;
(* eor	x20, x20, x4                                #! PC = 0x555556b920 *)
xor x20@uint64 x20 x4;
(* eor	x13, x13, x15                               #! PC = 0x555556b924 *)
xor x13@uint64 x13 x15;
(* eor	x16, x16, x26                               #! PC = 0x555556b928 *)
xor x16@uint64 x16 x26;
(* eor	x14, x20, x30, ror #63                      #! PC = 0x555556b92c *)
ror x30_r x30 63;
xor x14@uint64 x20 x30_r;
(* eor	x10, x16, x3, ror #63                       #! PC = 0x555556b930 *)
ror x3_r x3 63;
xor x10@uint64 x16 x3_r;
(* eor	x27, x3, x20, ror #63                       #! PC = 0x555556b934 *)
ror x20_r x20 63;
xor x27@uint64 x3 x20_r;
(* eor	x30, x30, x13, ror #63                      #! PC = 0x555556b938 *)
ror x13_r x13 63;
xor x30@uint64 x30 x13_r;
(* eor	x16, x13, x16, ror #63                      #! PC = 0x555556b93c *)
ror x16_r x16 63;
xor x16@uint64 x13 x16_r;
(* eor	x22, x21, x10                               #! PC = 0x555556b940 *)
xor x22@uint64 x21 x10;
(* eor	x13, x19, x14                               #! PC = 0x555556b944 *)
xor x13@uint64 x19 x14;
(* eor	x11, x11, x14                               #! PC = 0x555556b948 *)
xor x11@uint64 x11 x14;
(* eor	x19, x12, x14                               #! PC = 0x555556b94c *)
xor x19@uint64 x12 x14;
(* eor	x8, x8, x14                                 #! PC = 0x555556b950 *)
xor x8@uint64 x8 x14;
(* eor	x12, x26, x14                               #! PC = 0x555556b954 *)
xor x12@uint64 x26 x14;
(* eor	x25, x23, x30                               #! PC = 0x555556b958 *)
xor x25@uint64 x23 x30;
(* ldr	x17, [sp, #104]                             #! EA = L0x7fffffeaa8; Value = 0x3f1db52c0e971146; PC = 0x555556b95c *)
mov x17 L0x7fffffeaa8;
(* eor	x6, x24, x27                                #! PC = 0x555556b960 *)
xor x6@uint64 x24 x27;
(* ldr	x21, [sp, #120]                             #! EA = L0x7fffffeab8; Value = 0x1db5bb8fea43615c; PC = 0x555556b964 *)
mov x21 L0x7fffffeab8;
(* eor	x0, x0, x10                                 #! PC = 0x555556b968 *)
xor x0@uint64 x0 x10;
(* ldr	x3, [sp, #136]                              #! EA = L0x7fffffeac8; Value = 0x2e4d9255c2752e5e; PC = 0x555556b96c *)
mov x3 L0x7fffffeac8;
(* eor	x17, x17, x10                               #! PC = 0x555556b970 *)
xor x17@uint64 x17 x10;
(* ldr	x14, [sp, #112]                             #! EA = L0x7fffffeab0; Value = 0x3305ec448df92478; PC = 0x555556b974 *)
mov x14 L0x7fffffeab0;
(* eor	x20, x3, x10                                #! PC = 0x555556b978 *)
xor x20@uint64 x3 x10;
(* eor	x3, x28, x10                                #! PC = 0x555556b97c *)
xor x3@uint64 x28 x10;
(* eor	x10, x21, x16                               #! PC = 0x555556b980 *)
xor x10@uint64 x21 x16;
(* eor	x21, x14, x16                               #! PC = 0x555556b984 *)
xor x21@uint64 x14 x16;
(* ror	x11, x11, #20                               #! PC = 0x555556b988 *)
ror x11@uint64 x11 20;
(* ldr	x14, [sp, #128]                             #! EA = L0x7fffffeac0; Value = 0x974454103b34d8b9; PC = 0x555556b98c *)
mov x14 L0x7fffffeac0;
(* eor	x28, x18, x30                               #! PC = 0x555556b990 *)
xor x28@uint64 x18 x30;
(* ldr	x23, [sp, #144]                             #! EA = L0x7fffffead0; Value = 0xa4b1d52b5aa5b529; PC = 0x555556b994 *)
mov x23 L0x7fffffead0;
(* ror	x0, x0, #21                                 #! PC = 0x555556b998 *)
ror x0@uint64 x0 21;
(* ldr	x24, [sp, #152]                             #! EA = L0x7fffffead8; Value = 0x989aafa0f2156dab; PC = 0x555556b99c *)
mov x24 L0x7fffffead8;
(* eor	x1, x1, x27                                 #! PC = 0x555556b9a0 *)
xor x1@uint64 x1 x27;
(* eor	x18, x23, x30                               #! PC = 0x555556b9a4 *)
xor x18@uint64 x23 x30;
(* ror	x26, x25, #39                               #! PC = 0x555556b9a8 *)
ror x26@uint64 x25 39;
(* bic	x23, x0, x11                                #! PC = 0x555556b9ac *)
not x11_not@uint64 x11;
and x23@uint64 x0 x11_not;
(* ror	x3, x3, #58                                 #! PC = 0x555556b9b0 *)
ror x3@uint64 x3 58;
(* eor	x4, x4, x16                                 #! PC = 0x555556b9b4 *)
xor x4@uint64 x4 x16;
(* eor	x9, x9, x30                                 #! PC = 0x555556b9b8 *)
xor x9@uint64 x9 x30;
(* eor	x14, x14, x16                               #! PC = 0x555556b9bc *)
xor x14@uint64 x14 x16;
(* eor	x16, x24, x16                               #! PC = 0x555556b9c0 *)
xor x16@uint64 x24 x16;
(* ror	x10, x10, #61                               #! PC = 0x555556b9c4 *)
ror x10@uint64 x10 61;
(* ror	x13, x13, #63                               #! PC = 0x555556b9c8 *)
ror x13@uint64 x13 63;
(* ror	x1, x1, #44                                 #! PC = 0x555556b9cc *)
ror x1@uint64 x1 44;
(* eor	x23, x23, x16                               #! PC = 0x555556b9d0 *)
xor x23@uint64 x23 x16;
(* ror	x24, x28, #43                               #! PC = 0x555556b9d4 *)
ror x24@uint64 x28 43;
(* eor	x5, x5, x27                                 #! PC = 0x555556b9d8 *)
xor x5@uint64 x5 x27;
(* eor	x15, x15, x27                               #! PC = 0x555556b9dc *)
xor x15@uint64 x15 x27;
(* eor	x2, x2, x27                                 #! PC = 0x555556b9e0 *)
xor x2@uint64 x2 x27;
(* mov	x28, #0x8b                  	// #139        #! PC = 0x555556b9e4 *)
mov x28 0x8b@uint64;
(* bic	x27, x26, x3                                #! PC = 0x555556b9e8 *)
not x3_not@uint64 x3;
and x27@uint64 x26 x3_not;
(* ror	x8, x8, #54                                 #! PC = 0x555556b9ec *)
ror x8@uint64 x8 54;
(* ror	x21, x21, #28                               #! PC = 0x555556b9f0 *)
ror x21@uint64 x21 28;
(* ror	x22, x22, #49                               #! PC = 0x555556b9f4 *)
ror x22@uint64 x22 49;
(* ror	x9, x9, #36                                 #! PC = 0x555556b9f8 *)
ror x9@uint64 x9 36;
(* eor	x7, x7, x30                                 #! PC = 0x555556b9fc *)
xor x7@uint64 x7 x30;
(* ror	x18, x18, #8                                #! PC = 0x555556ba00 *)
ror x18@uint64 x18 8;
(* bic	x30, x10, x1                                #! PC = 0x555556ba04 *)
not x1_not@uint64 x1;
and x30@uint64 x10 x1_not;
(* movk	x28, #0x8000, lsl #48                      #! PC = 0x555556ba08 *)
shl tmp 0x8000@uint64 48;
and x28_m@uint64 x28 0x0000ffffffffffff@uint64;
or x28@uint64 x28_m tmp;
(* eor	x28, x23, x28                               #! PC = 0x555556ba0c *)
xor x28@uint64 x23 x28;
(* eor	x23, x27, x13                               #! PC = 0x555556ba10 *)
xor x23@uint64 x27 x13;
(* stp	x24, x23, [sp, #144]                        #! EA = L0x7fffffead0; PC = 0x555556ba14 *)
mov L0x7fffffead0 x24;
mov L0x7fffffead8 x23;
(* bic	x25, x18, x22                               #! PC = 0x555556ba18 *)
not x22_not@uint64 x22;
and x25@uint64 x18 x22_not;
(* ror	x6, x6, #37                                 #! PC = 0x555556ba1c *)
ror x6@uint64 x6 37;
(* eor	x30, x30, x9                                #! PC = 0x555556ba20 *)
xor x30@uint64 x30 x9;
(* bic	x24, x22, x8                                #! PC = 0x555556ba24 *)
not x8_not@uint64 x8;
and x24@uint64 x22 x8_not;
(* stp	x30, x26, [sp, #104]                        #! EA = L0x7fffffeaa8; PC = 0x555556ba28 *)
mov L0x7fffffeaa8 x30;
mov L0x7fffffeab0 x26;
(* bic	x26, x8, x21                                #! PC = 0x555556ba2c *)
not x21_not@uint64 x21;
and x26@uint64 x8 x21_not;
(* eor	x27, x25, x8                                #! PC = 0x555556ba30 *)
xor x27@uint64 x25 x8;
(* eor	x26, x26, x6                                #! PC = 0x555556ba34 *)
xor x26@uint64 x26 x6;
(* bic	x8, x6, x18                                 #! PC = 0x555556ba38 *)
not x18_not@uint64 x18;
and x8@uint64 x6 x18_not;
(* eor	x24, x24, x21                               #! PC = 0x555556ba3c *)
xor x24@uint64 x24 x21;
(* bic	x6, x21, x6                                 #! PC = 0x555556ba40 *)
not x6_not@uint64 x6;
and x6@uint64 x21 x6_not;
(* ldr	x21, [sp, #144]                             #! EA = L0x7fffffead0; Value = 0x3795c11df2535436; PC = 0x555556ba44 *)
mov x21 L0x7fffffead0;
(* ror	x5, x5, #50                                 #! PC = 0x555556ba48 *)
ror x5@uint64 x5 50;
(* str	x24, [sp, #160]                             #! EA = L0x7fffffeae0; PC = 0x555556ba4c *)
mov L0x7fffffeae0 x24;
(* ror	x7, x7, #9                                  #! PC = 0x555556ba50 *)
ror x7@uint64 x7 9;
(* bic	x24, x5, x21                                #! PC = 0x555556ba54 *)
not x21_not@uint64 x21;
and x24@uint64 x5 x21_not;
(* ror	x19, x19, #19                               #! PC = 0x555556ba58 *)
ror x19@uint64 x19 19;
(* eor	x24, x24, x0                                #! PC = 0x555556ba5c *)
xor x24@uint64 x24 x0;
(* ror	x17, x17, #2                                #! PC = 0x555556ba60 *)
ror x17@uint64 x17 2;
(* bic	x0, x21, x0                                 #! PC = 0x555556ba64 *)
not x0_not@uint64 x0;
and x0@uint64 x21 x0_not;
(* ror	x12, x12, #62                               #! PC = 0x555556ba68 *)
ror x12@uint64 x12 62;
(* ror	x20, x20, #3                                #! PC = 0x555556ba6c *)
ror x20@uint64 x20 3;
(* bic	x25, x11, x16                               #! PC = 0x555556ba70 *)
not x16_not@uint64 x16;
and x25@uint64 x11 x16_not;
(* ror	x14, x14, #23                               #! PC = 0x555556ba74 *)
ror x14@uint64 x14 23;
(* bic	x30, x7, x17                                #! PC = 0x555556ba78 *)
not x17_not@uint64 x17;
and x30@uint64 x7 x17_not;
(* eor	x0, x0, x11                                 #! PC = 0x555556ba7c *)
xor x0@uint64 x0 x11;
(* bic	x11, x19, x10                               #! PC = 0x555556ba80 *)
not x10_not@uint64 x10;
and x11@uint64 x19 x10_not;
(* str	x27, [sp, #120]                             #! EA = L0x7fffffeab8; PC = 0x555556ba84 *)
mov L0x7fffffeab8 x27;
(* eor	x30, x30, x12                               #! PC = 0x555556ba88 *)
xor x30@uint64 x30 x12;
(* bic	x27, x12, x14                               #! PC = 0x555556ba8c *)
not x14_not@uint64 x14;
and x27@uint64 x12 x14_not;
(* eor	x11, x11, x1                                #! PC = 0x555556ba90 *)
xor x11@uint64 x11 x1;
(* bic	x12, x17, x12                               #! PC = 0x555556ba94 *)
not x12_not@uint64 x12;
and x12@uint64 x17 x12_not;
(* bic	x1, x1, x9                                  #! PC = 0x555556ba98 *)
not x9_not@uint64 x9;
and x1@uint64 x1 x9_not;
(* bic	x9, x9, x20                                 #! PC = 0x555556ba9c *)
not x20_not@uint64 x20;
and x9@uint64 x9 x20_not;
(* eor	x25, x25, x5                                #! PC = 0x555556baa0 *)
xor x25@uint64 x25 x5;
(* ror	x2, x2, #25                                 #! PC = 0x555556baa4 *)
ror x2@uint64 x2 25;
(* eor	x22, x8, x22                                #! PC = 0x555556baa8 *)
xor x22@uint64 x8 x22;
(* eor	x12, x12, x14                               #! PC = 0x555556baac *)
xor x12@uint64 x12 x14;
(* bic	x5, x16, x5                                 #! PC = 0x555556bab0 *)
not x5_not@uint64 x5;
and x5@uint64 x16 x5_not;
(* bic	x16, x20, x19                               #! PC = 0x555556bab4 *)
not x19_not@uint64 x19;
and x16@uint64 x20 x19_not;
(* eor	x20, x1, x20                                #! PC = 0x555556bab8 *)
xor x20@uint64 x1 x20;
(* eor	x19, x9, x19                                #! PC = 0x555556babc *)
xor x19@uint64 x9 x19;
(* stp	x22, x12, [sp, #128]                        #! EA = L0x7fffffeac0; PC = 0x555556bac0 *)
mov L0x7fffffeac0 x22;
mov L0x7fffffeac8 x12;
(* bic	x14, x14, x2                                #! PC = 0x555556bac4 *)
not x2_not@uint64 x2;
and x14@uint64 x14 x2_not;
(* eor	x27, x27, x2                                #! PC = 0x555556bac8 *)
xor x27@uint64 x27 x2;
(* ldp	x1, x9, [sp, #112]                          #! EA = L0x7fffffeab0; Value = 0xf09ca6ca64456c23; PC = 0x555556bacc *)
mov x1 L0x7fffffeab0;
mov x9 L0x7fffffeab8;
(* bic	x2, x2, x7                                  #! PC = 0x555556bad0 *)
not x7_not@uint64 x7;
and x2@uint64 x2 x7_not;
(* eor	x18, x6, x18                                #! PC = 0x555556bad4 *)
xor x18@uint64 x6 x18;
(* eor	x14, x14, x7                                #! PC = 0x555556bad8 *)
xor x14@uint64 x14 x7;
(* ldr	x8, [sp, #104]                              #! EA = L0x7fffffeaa8; Value = 0x6535935a8e477002; PC = 0x555556badc *)
mov x8 L0x7fffffeaa8;
(* ror	x15, x15, #56                               #! PC = 0x555556bae0 *)
ror x15@uint64 x15 56;
(* ldp	x6, x7, [sp, #128]                          #! EA = L0x7fffffeac0; Value = 0x9c5a330fe6fe475b; PC = 0x555556bae4 *)
mov x6 L0x7fffffeac0;
mov x7 L0x7fffffeac8;
(* eor	x22, x28, x8                                #! PC = 0x555556bae8 *)
xor x22@uint64 x28 x8;
(* eor	x8, x23, x26                                #! PC = 0x555556baec *)
xor x8@uint64 x23 x26;
(* ror	x4, x4, #46                                 #! PC = 0x555556baf0 *)
ror x4@uint64 x4 46;
(* bic	x12, x15, x1                                #! PC = 0x555556baf4 *)
not x1_not@uint64 x1;
and x12@uint64 x15 x1_not;
(* eor	x22, x8, x22                                #! PC = 0x555556baf8 *)
xor x22@uint64 x8 x22;
(* ldr	x8, [sp, #160]                              #! EA = L0x7fffffeae0; Value = 0xe52794e6f82f0c8f; PC = 0x555556bafc *)
mov x8 L0x7fffffeae0;
(* eor	x12, x12, x3                                #! PC = 0x555556bb00 *)
xor x12@uint64 x12 x3;
(* bic	x3, x3, x13                                 #! PC = 0x555556bb04 *)
not x13_not@uint64 x13;
and x3@uint64 x3 x13_not;
(* bic	x13, x13, x4                                #! PC = 0x555556bb08 *)
not x4_not@uint64 x4;
and x13@uint64 x13 x4_not;
(* eor	x16, x16, x10                               #! PC = 0x555556bb0c *)
xor x16@uint64 x16 x10;
(* eor	x13, x13, x15                               #! PC = 0x555556bb10 *)
xor x13@uint64 x13 x15;
(* eor	x10, x6, x7                                 #! PC = 0x555556bb14 *)
xor x10@uint64 x6 x7;
(* eor	x1, x0, x11                                 #! PC = 0x555556bb18 *)
xor x1@uint64 x0 x11;
(* ldr	x7, [sp, #112]                              #! EA = L0x7fffffeab0; Value = 0xf09ca6ca64456c23; PC = 0x555556bb1c *)
mov x7 L0x7fffffeab0;
(* eor	x17, x2, x17                                #! PC = 0x555556bb20 *)
xor x17@uint64 x2 x17;
(* eor	x3, x3, x4                                  #! PC = 0x555556bb24 *)
xor x3@uint64 x3 x4;
(* eor	x2, x19, x13                                #! PC = 0x555556bb28 *)
xor x2@uint64 x19 x13;
(* eor	x23, x12, x8                                #! PC = 0x555556bb2c *)
xor x23@uint64 x12 x8;
(* eor	x5, x5, x21                                 #! PC = 0x555556bb30 *)
xor x5@uint64 x5 x21;
(* eor	x6, x20, x3                                 #! PC = 0x555556bb34 *)
xor x6@uint64 x20 x3;
(* bic	x4, x4, x15                                 #! PC = 0x555556bb38 *)
not x15_not@uint64 x15;
and x4@uint64 x4 x15_not;
(* eor	x9, x9, x27                                 #! PC = 0x555556bb3c *)
xor x9@uint64 x9 x27;
(* eor	x15, x24, x16                               #! PC = 0x555556bb40 *)
xor x15@uint64 x24 x16;
(* eor	x23, x1, x23                                #! PC = 0x555556bb44 *)
xor x23@uint64 x1 x23;
(* eor	x10, x2, x10                                #! PC = 0x555556bb48 *)
xor x10@uint64 x2 x10;
(* eor	x1, x25, x30                                #! PC = 0x555556bb4c *)
xor x1@uint64 x25 x30;
(* eor	x22, x22, x17                               #! PC = 0x555556bb50 *)
xor x22@uint64 x22 x17;
(* eor	x10, x10, x5                                #! PC = 0x555556bb54 *)
xor x10@uint64 x10 x5;
(* eor	x4, x4, x7                                  #! PC = 0x555556bb58 *)
xor x4@uint64 x4 x7;
(* eor	x9, x15, x9                                 #! PC = 0x555556bb5c *)
xor x9@uint64 x15 x9;
(* eor	x6, x6, x1                                  #! PC = 0x555556bb60 *)
xor x6@uint64 x6 x1;
(* eor	x6, x6, x18                                 #! PC = 0x555556bb64 *)
xor x6@uint64 x6 x18;
(* eor	x23, x23, x14                               #! PC = 0x555556bb68 *)
xor x23@uint64 x23 x14;
(* eor	x9, x9, x4                                  #! PC = 0x555556bb6c *)
xor x9@uint64 x9 x4;
(* eor	x1, x10, x22, ror #63                       #! PC = 0x555556bb70 *)
ror x22_r x22 63;
xor x1@uint64 x10 x22_r;
(* eor	x10, x23, x10, ror #63                      #! PC = 0x555556bb74 *)
ror x10_r x10 63;
xor x10@uint64 x23 x10_r;
(* eor	x23, x6, x23, ror #63                       #! PC = 0x555556bb78 *)
ror x23_r x23 63;
xor x23@uint64 x6 x23_r;
(* eor	x2, x22, x9, ror #63                        #! PC = 0x555556bb7c *)
ror x9_r x9 63;
xor x2@uint64 x22 x9_r;
(* eor	x9, x9, x6, ror #63                         #! PC = 0x555556bb80 *)
ror x6_r x6 63;
xor x9@uint64 x9 x6_r;
(* eor	x6, x27, x10                                #! PC = 0x555556bb84 *)
xor x6@uint64 x27 x10;
(* eor	x7, x30, x1                                 #! PC = 0x555556bb88 *)
xor x7@uint64 x30 x1;
(* ldp	x27, x22, [sp, #120]                        #! EA = L0x7fffffeab8; Value = 0x9c50b1bdec606cf4; PC = 0x555556bb8c *)
mov x27 L0x7fffffeab8;
mov x22 L0x7fffffeac0;
(* eor	x25, x25, x1                                #! PC = 0x555556bb90 *)
xor x25@uint64 x25 x1;
(* ldr	x15, [sp, #136]                             #! EA = L0x7fffffeac8; Value = 0xa7cf1ad1fd7355f5; PC = 0x555556bb94 *)
mov x15 L0x7fffffeac8;
(* eor	x20, x20, x1                                #! PC = 0x555556bb98 *)
xor x20@uint64 x20 x1;
(* ldr	x30, [sp, #104]                             #! EA = L0x7fffffeaa8; Value = 0x6535935a8e477002; PC = 0x555556bb9c *)
mov x30 L0x7fffffeaa8;
(* eor	x3, x3, x1                                  #! PC = 0x555556bba0 *)
xor x3@uint64 x3 x1;
(* eor	x18, x18, x1                                #! PC = 0x555556bba4 *)
xor x18@uint64 x18 x1;
(* eor	x21, x8, x2                                 #! PC = 0x555556bba8 *)
xor x21@uint64 x8 x2;
(* ldr	x1, [sp, #152]                              #! EA = L0x7fffffead8; Value = 0x78c89618cb578449; PC = 0x555556bbac *)
mov x1 L0x7fffffead8;
(* eor	x8, x27, x10                                #! PC = 0x555556bbb0 *)
xor x8@uint64 x27 x10;
(* eor	x15, x15, x9                                #! PC = 0x555556bbb4 *)
xor x15@uint64 x15 x9;
(* eor	x19, x19, x9                                #! PC = 0x555556bbb8 *)
xor x19@uint64 x19 x9;
(* eor	x12, x12, x2                                #! PC = 0x555556bbbc *)
xor x12@uint64 x12 x2;
(* eor	x30, x30, x23                               #! PC = 0x555556bbc0 *)
xor x30@uint64 x30 x23;
(* ror	x25, x25, #37                               #! PC = 0x555556bbc4 *)
ror x25@uint64 x25 37;
(* eor	x27, x1, x23                                #! PC = 0x555556bbc8 *)
xor x27@uint64 x1 x23;
(* ror	x15, x15, #8                                #! PC = 0x555556bbcc *)
ror x15@uint64 x15 8;
(* eor	x26, x26, x23                               #! PC = 0x555556bbd0 *)
xor x26@uint64 x26 x23;
(* ror	x8, x8, #49                                 #! PC = 0x555556bbd4 *)
ror x8@uint64 x8 49;
(* eor	x14, x14, x2                                #! PC = 0x555556bbd8 *)
xor x14@uint64 x14 x2;
(* ror	x30, x30, #28                               #! PC = 0x555556bbdc *)
ror x30@uint64 x30 28;
(* eor	x24, x24, x10                               #! PC = 0x555556bbe0 *)
xor x24@uint64 x24 x10;
(* ror	x12, x12, #54                               #! PC = 0x555556bbe4 *)
ror x12@uint64 x12 54;
(* eor	x17, x17, x23                               #! PC = 0x555556bbe8 *)
xor x17@uint64 x17 x23;
(* eor	x11, x11, x2                                #! PC = 0x555556bbec *)
xor x11@uint64 x11 x2;
(* eor	x23, x28, x23                               #! PC = 0x555556bbf0 *)
xor x23@uint64 x28 x23;
(* eor	x0, x0, x2                                  #! PC = 0x555556bbf4 *)
xor x0@uint64 x0 x2;
(* bic	x28, x25, x15                               #! PC = 0x555556bbf8 *)
not x15_not@uint64 x15;
and x28@uint64 x25 x15_not;
(* ror	x2, x19, #9                                 #! PC = 0x555556bbfc *)
ror x2@uint64 x19 9;
(* eor	x5, x5, x9                                  #! PC = 0x555556bc00 *)
xor x5@uint64 x5 x9;
(* bic	x19, x15, x8                                #! PC = 0x555556bc04 *)
not x8_not@uint64 x8;
and x19@uint64 x15 x8_not;
(* eor	x22, x22, x9                                #! PC = 0x555556bc08 *)
xor x22@uint64 x22 x9;
(* ror	x20, x20, #44                               #! PC = 0x555556bc0c *)
ror x20@uint64 x20 44;
(* ror	x14, x14, #62                               #! PC = 0x555556bc10 *)
ror x14@uint64 x14 62;
(* ror	x27, x27, #61                               #! PC = 0x555556bc14 *)
ror x27@uint64 x27 61;
(* bic	x1, x12, x30                                #! PC = 0x555556bc18 *)
not x30_not@uint64 x30;
and x1@uint64 x12 x30_not;
(* ror	x26, x26, #23                               #! PC = 0x555556bc1c *)
ror x26@uint64 x26 23;
(* eor	x19, x19, x12                               #! PC = 0x555556bc20 *)
xor x19@uint64 x19 x12;
(* eor	x4, x4, x10                                 #! PC = 0x555556bc24 *)
xor x4@uint64 x4 x10;
(* bic	x12, x8, x12                                #! PC = 0x555556bc28 *)
not x12_not@uint64 x12;
and x12@uint64 x8 x12_not;
(* eor	x8, x28, x8                                 #! PC = 0x555556bc2c *)
xor x8@uint64 x28 x8;
(* ror	x24, x24, #2                                #! PC = 0x555556bc30 *)
ror x24@uint64 x24 2;
(* ror	x3, x3, #25                                 #! PC = 0x555556bc34 *)
ror x3@uint64 x3 25;
(* ror	x7, x7, #50                                 #! PC = 0x555556bc38 *)
ror x7@uint64 x7 50;
(* ror	x5, x5, #36                                 #! PC = 0x555556bc3c *)
ror x5@uint64 x5 36;
(* eor	x1, x1, x25                                 #! PC = 0x555556bc40 *)
xor x1@uint64 x1 x25;
(* ror	x22, x22, #43                               #! PC = 0x555556bc44 *)
ror x22@uint64 x22 43;
(* eor	x13, x13, x9                                #! PC = 0x555556bc48 *)
xor x13@uint64 x13 x9;
(* bic	x9, x27, x20                                #! PC = 0x555556bc4c *)
not x20_not@uint64 x20;
and x9@uint64 x27 x20_not;
(* stp	x19, x8, [sp, #168]                         #! EA = L0x7fffffeae8; PC = 0x555556bc50 *)
mov L0x7fffffeae8 x19;
mov L0x7fffffeaf0 x8;
(* bic	x8, x14, x26                                #! PC = 0x555556bc54 *)
not x26_not@uint64 x26;
and x8@uint64 x14 x26_not;
(* eor	x28, x8, x3                                 #! PC = 0x555556bc58 *)
xor x28@uint64 x8 x3;
(* eor	x9, x9, x5                                  #! PC = 0x555556bc5c *)
xor x9@uint64 x9 x5;
(* ror	x4, x4, #21                                 #! PC = 0x555556bc60 *)
ror x4@uint64 x4 21;
(* bic	x8, x24, x14                                #! PC = 0x555556bc64 *)
not x14_not@uint64 x14;
and x8@uint64 x24 x14_not;
(* stp	x9, x1, [sp, #112]                          #! EA = L0x7fffffeab0; PC = 0x555556bc68 *)
mov L0x7fffffeab0 x9;
mov L0x7fffffeab8 x1;
(* bic	x1, x7, x22                                 #! PC = 0x555556bc6c *)
not x22_not@uint64 x22;
and x1@uint64 x7 x22_not;
(* eor	x9, x1, x4                                  #! PC = 0x555556bc70 *)
xor x9@uint64 x1 x4;
(* eor	x8, x8, x26                                 #! PC = 0x555556bc74 *)
xor x8@uint64 x8 x26;
(* stp	x28, x8, [sp, #128]                         #! EA = L0x7fffffeac0; PC = 0x555556bc78 *)
mov L0x7fffffeac0 x28;
mov L0x7fffffeac8 x8;
(* ror	x11, x11, #20                               #! PC = 0x555556bc7c *)
ror x11@uint64 x11 20;
(* eor	x10, x16, x10                               #! PC = 0x555556bc80 *)
xor x10@uint64 x16 x10;
(* str	x2, [sp, #184]                              #! EA = L0x7fffffeaf8; PC = 0x555556bc84 *)
mov L0x7fffffeaf8 x2;
(* bic	x16, x4, x11                                #! PC = 0x555556bc88 *)
not x11_not@uint64 x11;
and x16@uint64 x4 x11_not;
(* str	x9, [sp, #104]                              #! EA = L0x7fffffeaa8; PC = 0x555556bc8c *)
mov L0x7fffffeaa8 x9;
(* bic	x9, x23, x7                                 #! PC = 0x555556bc90 *)
not x7_not@uint64 x7;
and x9@uint64 x23 x7_not;
(* bic	x4, x22, x4                                 #! PC = 0x555556bc94 *)
not x4_not@uint64 x4;
and x4@uint64 x22 x4_not;
(* eor	x9, x9, x22                                 #! PC = 0x555556bc98 *)
xor x9@uint64 x9 x22;
(* ldp	x22, x1, [sp, #104]                         #! EA = L0x7fffffeaa8; Value = 0xeae2235e29ed0846; PC = 0x555556bc9c *)
mov x22 L0x7fffffeaa8;
mov x1 L0x7fffffeab0;
(* ror	x13, x13, #39                               #! PC = 0x555556bca0 *)
ror x13@uint64 x13 39;
(* mov	x8, #0x8089                	// #32905       #! PC = 0x555556bca4 *)
mov x8 0x8089@uint64;
(* ror	x10, x10, #58                               #! PC = 0x555556bca8 *)
ror x10@uint64 x10 58;
(* eor	x19, x4, x11                                #! PC = 0x555556bcac *)
xor x19@uint64 x4 x11;
(* ror	x18, x18, #56                               #! PC = 0x555556bcb0 *)
ror x18@uint64 x18 56;
(* ror	x6, x6, #3                                  #! PC = 0x555556bcb4 *)
ror x6@uint64 x6 3;
(* ror	x17, x17, #46                               #! PC = 0x555556bcb8 *)
ror x17@uint64 x17 46;
(* bic	x2, x13, x10                                #! PC = 0x555556bcbc *)
not x10_not@uint64 x10;
and x2@uint64 x13 x10_not;
(* ror	x0, x0, #63                                 #! PC = 0x555556bcc0 *)
ror x0@uint64 x0 63;
(* eor	x16, x16, x23                               #! PC = 0x555556bcc4 *)
xor x16@uint64 x16 x23;
(* bic	x11, x11, x23                               #! PC = 0x555556bcc8 *)
not x23_not@uint64 x23;
and x11@uint64 x11 x23_not;
(* movk	x8, #0x8000, lsl #48                       #! PC = 0x555556bccc *)
shl tmp 0x8000@uint64 48;
and x8_m@uint64 x8 0x0000ffffffffffff@uint64;
or x8@uint64 x8_m tmp;
(* ror	x21, x21, #19                               #! PC = 0x555556bcd0 *)
ror x21@uint64 x21 19;
(* eor	x2, x2, x0                                  #! PC = 0x555556bcd4 *)
xor x2@uint64 x2 x0;
(* eor	x11, x11, x7                                #! PC = 0x555556bcd8 *)
xor x11@uint64 x11 x7;
(* eor	x16, x16, x8                                #! PC = 0x555556bcdc *)
xor x16@uint64 x16 x8;
(* bic	x7, x5, x6                                  #! PC = 0x555556bce0 *)
not x6_not@uint64 x6;
and x7@uint64 x5 x6_not;
(* bic	x23, x0, x17                                #! PC = 0x555556bce4 *)
not x17_not@uint64 x17;
and x23@uint64 x0 x17_not;
(* bic	x8, x18, x13                                #! PC = 0x555556bce8 *)
not x13_not@uint64 x13;
and x8@uint64 x18 x13_not;
(* bic	x0, x10, x0                                 #! PC = 0x555556bcec *)
not x0_not@uint64 x0;
and x0@uint64 x10 x0_not;
(* eor	x23, x23, x18                               #! PC = 0x555556bcf0 *)
xor x23@uint64 x23 x18;
(* bic	x28, x6, x21                                #! PC = 0x555556bcf4 *)
not x21_not@uint64 x21;
and x28@uint64 x6 x21_not;
(* eor	x7, x7, x21                                 #! PC = 0x555556bcf8 *)
xor x7@uint64 x7 x21;
(* eor	x0, x0, x17                                 #! PC = 0x555556bcfc *)
xor x0@uint64 x0 x17;
(* eor	x8, x8, x10                                 #! PC = 0x555556bd00 *)
xor x8@uint64 x8 x10;
(* bic	x17, x17, x18                               #! PC = 0x555556bd04 *)
not x18_not@uint64 x18;
and x17@uint64 x17 x18_not;
(* stp	x11, x2, [sp, #152]                         #! EA = L0x7fffffead8; PC = 0x555556bd08 *)
mov L0x7fffffead8 x11;
mov L0x7fffffeae0 x2;
(* bic	x11, x21, x27                               #! PC = 0x555556bd0c *)
not x27_not@uint64 x27;
and x11@uint64 x21 x27_not;
(* ldp	x4, x10, [sp, #128]                         #! EA = L0x7fffffeac0; Value = 0xb52f75e507f3ea6f; PC = 0x555556bd10 *)
mov x4 L0x7fffffeac0;
mov x10 L0x7fffffeac8;
(* str	x16, [sp, #144]                             #! EA = L0x7fffffead0; PC = 0x555556bd14 *)
mov L0x7fffffead0 x16;
(* ldp	x21, x18, [sp, #168]                        #! EA = L0x7fffffeae8; Value = 0x29edcd79225b49c7; PC = 0x555556bd18 *)
mov x21 L0x7fffffeae8;
mov x18 L0x7fffffeaf0;
(* eor	x16, x16, x1                                #! PC = 0x555556bd1c *)
xor x16@uint64 x16 x1;
(* bic	x1, x20, x5                                 #! PC = 0x555556bd20 *)
not x5_not@uint64 x5;
and x1@uint64 x20 x5_not;
(* mov	x5, x2                                      #! PC = 0x555556bd24 *)
mov x5 x2;
(* eor	x1, x1, x6                                  #! PC = 0x555556bd28 *)
xor x1@uint64 x1 x6;
(* eor	x11, x11, x20                               #! PC = 0x555556bd2c *)
xor x11@uint64 x11 x20;
(* ldr	x6, [sp, #120]                              #! EA = L0x7fffffeab8; Value = 0x7371c2245281fb99; PC = 0x555556bd30 *)
mov x6 L0x7fffffeab8;
(* eor	x28, x28, x27                               #! PC = 0x555556bd34 *)
xor x28@uint64 x28 x27;
(* ldr	x2, [sp, #184]                              #! EA = L0x7fffffeaf8; Value = 0x181e3fa21340c2b2; PC = 0x555556bd38 *)
mov x2 L0x7fffffeaf8;
(* eor	x20, x5, x6                                 #! PC = 0x555556bd3c *)
xor x20@uint64 x5 x6;
(* eor	x6, x21, x4                                 #! PC = 0x555556bd40 *)
xor x6@uint64 x21 x4;
(* eor	x12, x12, x30                               #! PC = 0x555556bd44 *)
xor x12@uint64 x12 x30;
(* bic	x4, x3, x2                                  #! PC = 0x555556bd48 *)
not x2_not@uint64 x2;
and x4@uint64 x3 x2_not;
(* bic	x5, x2, x24                                 #! PC = 0x555556bd4c *)
not x24_not@uint64 x24;
and x5@uint64 x2 x24_not;
(* eor	x4, x4, x24                                 #! PC = 0x555556bd50 *)
xor x4@uint64 x4 x24;
(* eor	x5, x5, x14                                 #! PC = 0x555556bd54 *)
xor x5@uint64 x5 x14;
(* ldr	x24, [sp, #152]                             #! EA = L0x7fffffead8; Value = 0xc2b8ec52b8f56b77; PC = 0x555556bd58 *)
mov x24 L0x7fffffead8;
(* eor	x27, x18, x10                               #! PC = 0x555556bd5c *)
xor x27@uint64 x18 x10;
(* bic	x25, x30, x25                               #! PC = 0x555556bd60 *)
not x25_not@uint64 x25;
and x25@uint64 x30 x25_not;
(* eor	x10, x1, x0                                 #! PC = 0x555556bd64 *)
xor x10@uint64 x1 x0;
(* eor	x30, x22, x28                               #! PC = 0x555556bd68 *)
xor x30@uint64 x22 x28;
(* mov	x14, x2                                     #! PC = 0x555556bd6c *)
mov x14 x2;
(* eor	x2, x17, x13                                #! PC = 0x555556bd70 *)
xor x2@uint64 x17 x13;
(* eor	x13, x24, x5                                #! PC = 0x555556bd74 *)
xor x13@uint64 x24 x5;
(* eor	x15, x25, x15                               #! PC = 0x555556bd78 *)
xor x15@uint64 x25 x15;
(* bic	x26, x26, x3                                #! PC = 0x555556bd7c *)
not x3_not@uint64 x3;
and x26@uint64 x26 x3_not;
(* eor	x30, x30, x6                                #! PC = 0x555556bd80 *)
xor x30@uint64 x30 x6;
(* eor	x3, x7, x23                                 #! PC = 0x555556bd84 *)
xor x3@uint64 x7 x23;
(* eor	x13, x10, x13                               #! PC = 0x555556bd88 *)
xor x13@uint64 x10 x13;
(* eor	x6, x19, x11                                #! PC = 0x555556bd8c *)
xor x6@uint64 x19 x11;
(* eor	x13, x13, x15                               #! PC = 0x555556bd90 *)
xor x13@uint64 x13 x15;
(* eor	x30, x30, x2                                #! PC = 0x555556bd94 *)
xor x30@uint64 x30 x2;
(* eor	x20, x20, x16                               #! PC = 0x555556bd98 *)
xor x20@uint64 x20 x16;
(* eor	x3, x3, x27                                 #! PC = 0x555556bd9c *)
xor x3@uint64 x3 x27;
(* eor	x16, x8, x12                                #! PC = 0x555556bda0 *)
xor x16@uint64 x8 x12;
(* eor	x26, x26, x14                               #! PC = 0x555556bda4 *)
xor x26@uint64 x26 x14;
(* eor	x3, x3, x9                                  #! PC = 0x555556bda8 *)
xor x3@uint64 x3 x9;
(* eor	x20, x20, x4                                #! PC = 0x555556bdac *)
xor x20@uint64 x20 x4;
(* eor	x16, x6, x16                                #! PC = 0x555556bdb0 *)
xor x16@uint64 x6 x16;
(* eor	x14, x20, x30, ror #63                      #! PC = 0x555556bdb4 *)
ror x30_r x30 63;
xor x14@uint64 x20 x30_r;
(* eor	x16, x16, x26                               #! PC = 0x555556bdb8 *)
xor x16@uint64 x16 x26;
(* eor	x30, x30, x13, ror #63                      #! PC = 0x555556bdbc *)
ror x13_r x13 63;
xor x30@uint64 x30 x13_r;
(* eor	x27, x3, x20, ror #63                       #! PC = 0x555556bdc0 *)
ror x20_r x20 63;
xor x27@uint64 x3 x20_r;
(* eor	x10, x16, x3, ror #63                       #! PC = 0x555556bdc4 *)
ror x3_r x3 63;
xor x10@uint64 x16 x3_r;
(* eor	x25, x23, x30                               #! PC = 0x555556bdc8 *)
xor x25@uint64 x23 x30;
(* eor	x16, x13, x16, ror #63                      #! PC = 0x555556bdcc *)
ror x16_r x16 63;
xor x16@uint64 x13 x16_r;
(* ldp	x3, x23, [sp, #128]                         #! EA = L0x7fffffeac0; Value = 0xb52f75e507f3ea6f; PC = 0x555556bdd0 *)
mov x3 L0x7fffffeac0;
mov x23 L0x7fffffeac8;
(* eor	x13, x19, x14                               #! PC = 0x555556bdd4 *)
xor x13@uint64 x19 x14;
(* eor	x22, x21, x10                               #! PC = 0x555556bdd8 *)
xor x22@uint64 x21 x10;
(* eor	x19, x12, x14                               #! PC = 0x555556bddc *)
xor x19@uint64 x12 x14;
(* eor	x11, x11, x14                               #! PC = 0x555556bde0 *)
xor x11@uint64 x11 x14;
(* eor	x12, x26, x14                               #! PC = 0x555556bde4 *)
xor x12@uint64 x26 x14;
(* eor	x8, x8, x14                                 #! PC = 0x555556bde8 *)
xor x8@uint64 x8 x14;
(* eor	x6, x24, x27                                #! PC = 0x555556bdec *)
xor x6@uint64 x24 x27;
(* ldr	x17, [sp, #104]                             #! EA = L0x7fffffeaa8; Value = 0xeae2235e29ed0846; PC = 0x555556bdf0 *)
mov x17 L0x7fffffeaa8;
(* eor	x20, x3, x10                                #! PC = 0x555556bdf4 *)
xor x20@uint64 x3 x10;
(* ldr	x14, [sp, #112]                             #! EA = L0x7fffffeab0; Value = 0xa9c7bc3674ae69c6; PC = 0x555556bdf8 *)
mov x14 L0x7fffffeab0;
(* eor	x3, x28, x10                                #! PC = 0x555556bdfc *)
xor x3@uint64 x28 x10;
(* ldr	x21, [sp, #160]                             #! EA = L0x7fffffeae0; Value = 0xb7c5b941e10b4a46; PC = 0x555556be00 *)
mov x21 L0x7fffffeae0;
(* eor	x2, x2, x10                                 #! PC = 0x555556be04 *)
xor x2@uint64 x2 x10;
(* eor	x17, x17, x10                               #! PC = 0x555556be08 *)
xor x17@uint64 x17 x10;
(* ror	x11, x11, #20                               #! PC = 0x555556be0c *)
ror x11@uint64 x11 20;
(* eor	x10, x21, x16                               #! PC = 0x555556be10 *)
xor x10@uint64 x21 x16;
(* eor	x21, x14, x16                               #! PC = 0x555556be14 *)
xor x21@uint64 x14 x16;
(* ldr	x14, [sp, #120]                             #! EA = L0x7fffffeab8; Value = 0x7371c2245281fb99; PC = 0x555556be18 *)
mov x14 L0x7fffffeab8;
(* eor	x28, x18, x30                               #! PC = 0x555556be1c *)
xor x28@uint64 x18 x30;
(* ldr	x24, [sp, #144]                             #! EA = L0x7fffffead0; Value = 0xae8ffa5b0d6b5643; PC = 0x555556be20 *)
mov x24 L0x7fffffead0;
(* ror	x2, x2, #21                                 #! PC = 0x555556be24 *)
ror x2@uint64 x2 21;
(* eor	x1, x1, x27                                 #! PC = 0x555556be28 *)
xor x1@uint64 x1 x27;
(* ror	x26, x25, #39                               #! PC = 0x555556be2c *)
ror x26@uint64 x25 39;
(* eor	x18, x23, x30                               #! PC = 0x555556be30 *)
xor x18@uint64 x23 x30;
(* ror	x3, x3, #58                                 #! PC = 0x555556be34 *)
ror x3@uint64 x3 58;
(* bic	x23, x2, x11                                #! PC = 0x555556be38 *)
not x11_not@uint64 x11;
and x23@uint64 x2 x11_not;
(* eor	x4, x4, x16                                 #! PC = 0x555556be3c *)
xor x4@uint64 x4 x16;
(* eor	x9, x9, x30                                 #! PC = 0x555556be40 *)
xor x9@uint64 x9 x30;
(* eor	x14, x14, x16                               #! PC = 0x555556be44 *)
xor x14@uint64 x14 x16;
(* eor	x16, x24, x16                               #! PC = 0x555556be48 *)
xor x16@uint64 x24 x16;
(* ror	x10, x10, #61                               #! PC = 0x555556be4c *)
ror x10@uint64 x10 61;
(* ror	x1, x1, #44                                 #! PC = 0x555556be50 *)
ror x1@uint64 x1 44;
(* ror	x13, x13, #63                               #! PC = 0x555556be54 *)
ror x13@uint64 x13 63;
(* eor	x23, x23, x16                               #! PC = 0x555556be58 *)
xor x23@uint64 x23 x16;
(* ror	x24, x28, #43                               #! PC = 0x555556be5c *)
ror x24@uint64 x28 43;
(* eor	x0, x0, x27                                 #! PC = 0x555556be60 *)
xor x0@uint64 x0 x27;
(* eor	x5, x5, x27                                 #! PC = 0x555556be64 *)
xor x5@uint64 x5 x27;
(* eor	x15, x15, x27                               #! PC = 0x555556be68 *)
xor x15@uint64 x15 x27;
(* mov	x28, #0x8003                	// #32771      #! PC = 0x555556be6c *)
mov x28 0x8003@uint64;
(* bic	x27, x26, x3                                #! PC = 0x555556be70 *)
not x3_not@uint64 x3;
and x27@uint64 x26 x3_not;
(* ror	x8, x8, #54                                 #! PC = 0x555556be74 *)
ror x8@uint64 x8 54;
(* ror	x21, x21, #28                               #! PC = 0x555556be78 *)
ror x21@uint64 x21 28;
(* ror	x22, x22, #49                               #! PC = 0x555556be7c *)
ror x22@uint64 x22 49;
(* ror	x9, x9, #36                                 #! PC = 0x555556be80 *)
ror x9@uint64 x9 36;
(* eor	x7, x7, x30                                 #! PC = 0x555556be84 *)
xor x7@uint64 x7 x30;
(* ror	x18, x18, #8                                #! PC = 0x555556be88 *)
ror x18@uint64 x18 8;
(* bic	x30, x10, x1                                #! PC = 0x555556be8c *)
not x1_not@uint64 x1;
and x30@uint64 x10 x1_not;
(* movk	x28, #0x8000, lsl #48                      #! PC = 0x555556be90 *)
shl tmp 0x8000@uint64 48;
and x28_m@uint64 x28 0x0000ffffffffffff@uint64;
or x28@uint64 x28_m tmp;
(* eor	x28, x23, x28                               #! PC = 0x555556be94 *)
xor x28@uint64 x23 x28;
(* eor	x23, x27, x13                               #! PC = 0x555556be98 *)
xor x23@uint64 x27 x13;
(* stp	x24, x23, [sp, #144]                        #! EA = L0x7fffffead0; PC = 0x555556be9c *)
mov L0x7fffffead0 x24;
mov L0x7fffffead8 x23;
(* bic	x25, x18, x22                               #! PC = 0x555556bea0 *)
not x22_not@uint64 x22;
and x25@uint64 x18 x22_not;
(* ror	x6, x6, #37                                 #! PC = 0x555556bea4 *)
ror x6@uint64 x6 37;
(* eor	x30, x30, x9                                #! PC = 0x555556bea8 *)
xor x30@uint64 x30 x9;
(* bic	x24, x22, x8                                #! PC = 0x555556beac *)
not x8_not@uint64 x8;
and x24@uint64 x22 x8_not;
(* stp	x30, x26, [sp, #104]                        #! EA = L0x7fffffeaa8; PC = 0x555556beb0 *)
mov L0x7fffffeaa8 x30;
mov L0x7fffffeab0 x26;
(* bic	x26, x8, x21                                #! PC = 0x555556beb4 *)
not x21_not@uint64 x21;
and x26@uint64 x8 x21_not;
(* eor	x27, x25, x8                                #! PC = 0x555556beb8 *)
xor x27@uint64 x25 x8;
(* eor	x26, x26, x6                                #! PC = 0x555556bebc *)
xor x26@uint64 x26 x6;
(* bic	x8, x6, x18                                 #! PC = 0x555556bec0 *)
not x18_not@uint64 x18;
and x8@uint64 x6 x18_not;
(* eor	x24, x24, x21                               #! PC = 0x555556bec4 *)
xor x24@uint64 x24 x21;
(* bic	x6, x21, x6                                 #! PC = 0x555556bec8 *)
not x6_not@uint64 x6;
and x6@uint64 x21 x6_not;
(* ldr	x21, [sp, #144]                             #! EA = L0x7fffffead0; Value = 0x906ebc6564ad78e1; PC = 0x555556becc *)
mov x21 L0x7fffffead0;
(* ror	x5, x5, #50                                 #! PC = 0x555556bed0 *)
ror x5@uint64 x5 50;
(* str	x24, [sp, #160]                             #! EA = L0x7fffffeae0; PC = 0x555556bed4 *)
mov L0x7fffffeae0 x24;
(* ror	x7, x7, #9                                  #! PC = 0x555556bed8 *)
ror x7@uint64 x7 9;
(* bic	x24, x5, x21                                #! PC = 0x555556bedc *)
not x21_not@uint64 x21;
and x24@uint64 x5 x21_not;
(* ror	x19, x19, #19                               #! PC = 0x555556bee0 *)
ror x19@uint64 x19 19;
(* eor	x24, x24, x2                                #! PC = 0x555556bee4 *)
xor x24@uint64 x24 x2;
(* ror	x17, x17, #2                                #! PC = 0x555556bee8 *)
ror x17@uint64 x17 2;
(* bic	x2, x21, x2                                 #! PC = 0x555556beec *)
not x2_not@uint64 x2;
and x2@uint64 x21 x2_not;
(* ror	x12, x12, #62                               #! PC = 0x555556bef0 *)
ror x12@uint64 x12 62;
(* ror	x20, x20, #3                                #! PC = 0x555556bef4 *)
ror x20@uint64 x20 3;
(* bic	x25, x11, x16                               #! PC = 0x555556bef8 *)
not x16_not@uint64 x16;
and x25@uint64 x11 x16_not;
(* ror	x14, x14, #23                               #! PC = 0x555556befc *)
ror x14@uint64 x14 23;
(* eor	x22, x8, x22                                #! PC = 0x555556bf00 *)
xor x22@uint64 x8 x22;
(* bic	x30, x7, x17                                #! PC = 0x555556bf04 *)
not x17_not@uint64 x17;
and x30@uint64 x7 x17_not;
(* eor	x2, x2, x11                                 #! PC = 0x555556bf08 *)
xor x2@uint64 x2 x11;
(* bic	x11, x19, x10                               #! PC = 0x555556bf0c *)
not x10_not@uint64 x10;
and x11@uint64 x19 x10_not;
(* str	x27, [sp, #120]                             #! EA = L0x7fffffeab8; PC = 0x555556bf10 *)
mov L0x7fffffeab8 x27;
(* eor	x30, x30, x12                               #! PC = 0x555556bf14 *)
xor x30@uint64 x30 x12;
(* ldr	x8, [sp, #104]                              #! EA = L0x7fffffeaa8; Value = 0xcf9f63bade67e758; PC = 0x555556bf18 *)
mov x8 L0x7fffffeaa8;
(* bic	x27, x12, x14                               #! PC = 0x555556bf1c *)
not x14_not@uint64 x14;
and x27@uint64 x12 x14_not;
(* eor	x11, x11, x1                                #! PC = 0x555556bf20 *)
xor x11@uint64 x11 x1;
(* bic	x12, x17, x12                               #! PC = 0x555556bf24 *)
not x12_not@uint64 x12;
and x12@uint64 x17 x12_not;
(* bic	x1, x1, x9                                  #! PC = 0x555556bf28 *)
not x9_not@uint64 x9;
and x1@uint64 x1 x9_not;
(* bic	x9, x9, x20                                 #! PC = 0x555556bf2c *)
not x20_not@uint64 x20;
and x9@uint64 x9 x20_not;
(* eor	x25, x25, x5                                #! PC = 0x555556bf30 *)
xor x25@uint64 x25 x5;
(* ror	x0, x0, #25                                 #! PC = 0x555556bf34 *)
ror x0@uint64 x0 25;
(* eor	x12, x12, x14                               #! PC = 0x555556bf38 *)
xor x12@uint64 x12 x14;
(* bic	x5, x16, x5                                 #! PC = 0x555556bf3c *)
not x5_not@uint64 x5;
and x5@uint64 x16 x5_not;
(* bic	x16, x20, x19                               #! PC = 0x555556bf40 *)
not x19_not@uint64 x19;
and x16@uint64 x20 x19_not;
(* eor	x20, x1, x20                                #! PC = 0x555556bf44 *)
xor x20@uint64 x1 x20;
(* eor	x19, x9, x19                                #! PC = 0x555556bf48 *)
xor x19@uint64 x9 x19;
(* stp	x22, x12, [sp, #128]                        #! EA = L0x7fffffeac0; PC = 0x555556bf4c *)
mov L0x7fffffeac0 x22;
mov L0x7fffffeac8 x12;
(* bic	x14, x14, x0                                #! PC = 0x555556bf50 *)
not x0_not@uint64 x0;
and x14@uint64 x14 x0_not;
(* ldp	x1, x9, [sp, #112]                          #! EA = L0x7fffffeab0; Value = 0x307f7a71c5861101; PC = 0x555556bf54 *)
mov x1 L0x7fffffeab0;
mov x9 L0x7fffffeab8;
(* eor	x22, x28, x8                                #! PC = 0x555556bf58 *)
xor x22@uint64 x28 x8;
(* eor	x8, x23, x26                                #! PC = 0x555556bf5c *)
xor x8@uint64 x23 x26;
(* eor	x27, x27, x0                                #! PC = 0x555556bf60 *)
xor x27@uint64 x27 x0;
(* eor	x18, x6, x18                                #! PC = 0x555556bf64 *)
xor x18@uint64 x6 x18;
(* bic	x0, x0, x7                                  #! PC = 0x555556bf68 *)
not x7_not@uint64 x7;
and x0@uint64 x0 x7_not;
(* eor	x14, x14, x7                                #! PC = 0x555556bf6c *)
xor x14@uint64 x14 x7;
(* eor	x22, x8, x22                                #! PC = 0x555556bf70 *)
xor x22@uint64 x8 x22;
(* ldr	x8, [sp, #160]                              #! EA = L0x7fffffeae0; Value = 0x5878f9598bedc9b5; PC = 0x555556bf74 *)
mov x8 L0x7fffffeae0;
(* ror	x15, x15, #56                               #! PC = 0x555556bf78 *)
ror x15@uint64 x15 56;
(* ldp	x6, x7, [sp, #128]                          #! EA = L0x7fffffeac0; Value = 0x172875b0c18e3d46; PC = 0x555556bf7c *)
mov x6 L0x7fffffeac0;
mov x7 L0x7fffffeac8;
(* ror	x4, x4, #46                                 #! PC = 0x555556bf80 *)
ror x4@uint64 x4 46;
(* bic	x12, x15, x1                                #! PC = 0x555556bf84 *)
not x1_not@uint64 x1;
and x12@uint64 x15 x1_not;
(* eor	x16, x16, x10                               #! PC = 0x555556bf88 *)
xor x16@uint64 x16 x10;
(* eor	x12, x12, x3                                #! PC = 0x555556bf8c *)
xor x12@uint64 x12 x3;
(* bic	x3, x3, x13                                 #! PC = 0x555556bf90 *)
not x13_not@uint64 x13;
and x3@uint64 x3 x13_not;
(* bic	x13, x13, x4                                #! PC = 0x555556bf94 *)
not x4_not@uint64 x4;
and x13@uint64 x13 x4_not;
(* eor	x17, x0, x17                                #! PC = 0x555556bf98 *)
xor x17@uint64 x0 x17;
(* eor	x13, x13, x15                               #! PC = 0x555556bf9c *)
xor x13@uint64 x13 x15;
(* eor	x0, x2, x11                                 #! PC = 0x555556bfa0 *)
xor x0@uint64 x2 x11;
(* eor	x10, x6, x7                                 #! PC = 0x555556bfa4 *)
xor x10@uint64 x6 x7;
(* eor	x1, x19, x13                                #! PC = 0x555556bfa8 *)
xor x1@uint64 x19 x13;
(* ldr	x7, [sp, #112]                              #! EA = L0x7fffffeab0; Value = 0x307f7a71c5861101; PC = 0x555556bfac *)
mov x7 L0x7fffffeab0;
(* eor	x3, x3, x4                                  #! PC = 0x555556bfb0 *)
xor x3@uint64 x3 x4;
(* eor	x23, x12, x8                                #! PC = 0x555556bfb4 *)
xor x23@uint64 x12 x8;
(* eor	x5, x5, x21                                 #! PC = 0x555556bfb8 *)
xor x5@uint64 x5 x21;
(* eor	x6, x20, x3                                 #! PC = 0x555556bfbc *)
xor x6@uint64 x20 x3;
(* bic	x4, x4, x15                                 #! PC = 0x555556bfc0 *)
not x15_not@uint64 x15;
and x4@uint64 x4 x15_not;
(* eor	x9, x9, x27                                 #! PC = 0x555556bfc4 *)
xor x9@uint64 x9 x27;
(* eor	x15, x24, x16                               #! PC = 0x555556bfc8 *)
xor x15@uint64 x24 x16;
(* eor	x23, x0, x23                                #! PC = 0x555556bfcc *)
xor x23@uint64 x0 x23;
(* eor	x10, x1, x10                                #! PC = 0x555556bfd0 *)
xor x10@uint64 x1 x10;
(* eor	x0, x25, x30                                #! PC = 0x555556bfd4 *)
xor x0@uint64 x25 x30;
(* eor	x22, x22, x17                               #! PC = 0x555556bfd8 *)
xor x22@uint64 x22 x17;
(* eor	x10, x10, x5                                #! PC = 0x555556bfdc *)
xor x10@uint64 x10 x5;
(* eor	x4, x4, x7                                  #! PC = 0x555556bfe0 *)
xor x4@uint64 x4 x7;
(* eor	x9, x15, x9                                 #! PC = 0x555556bfe4 *)
xor x9@uint64 x15 x9;
(* eor	x6, x6, x0                                  #! PC = 0x555556bfe8 *)
xor x6@uint64 x6 x0;
(* eor	x6, x6, x18                                 #! PC = 0x555556bfec *)
xor x6@uint64 x6 x18;
(* eor	x23, x23, x14                               #! PC = 0x555556bff0 *)
xor x23@uint64 x23 x14;
(* eor	x9, x9, x4                                  #! PC = 0x555556bff4 *)
xor x9@uint64 x9 x4;
(* eor	x1, x10, x22, ror #63                       #! PC = 0x555556bff8 *)
ror x22_r x22 63;
xor x1@uint64 x10 x22_r;
(* eor	x10, x23, x10, ror #63                      #! PC = 0x555556bffc *)
ror x10_r x10 63;
xor x10@uint64 x23 x10_r;
(* eor	x23, x6, x23, ror #63                       #! PC = 0x555556c000 *)
ror x23_r x23 63;
xor x23@uint64 x6 x23_r;
(* eor	x0, x22, x9, ror #63                        #! PC = 0x555556c004 *)
ror x9_r x9 63;
xor x0@uint64 x22 x9_r;
(* eor	x9, x9, x6, ror #63                         #! PC = 0x555556c008 *)
ror x6_r x6 63;
xor x9@uint64 x9 x6_r;
(* eor	x6, x27, x10                                #! PC = 0x555556c00c *)
xor x6@uint64 x27 x10;
(* eor	x21, x8, x0                                 #! PC = 0x555556c010 *)
xor x21@uint64 x8 x0;
(* ldp	x27, x22, [sp, #120]                        #! EA = L0x7fffffeab8; Value = 0x3a6b372dc37da63f; PC = 0x555556c014 *)
mov x27 L0x7fffffeab8;
mov x22 L0x7fffffeac0;
(* eor	x7, x30, x1                                 #! PC = 0x555556c018 *)
xor x7@uint64 x30 x1;
(* ldr	x15, [sp, #136]                             #! EA = L0x7fffffeac8; Value = 0xde77949421923af4; PC = 0x555556c01c *)
mov x15 L0x7fffffeac8;
(* eor	x11, x11, x0                                #! PC = 0x555556c020 *)
xor x11@uint64 x11 x0;
(* eor	x2, x2, x0                                  #! PC = 0x555556c024 *)
xor x2@uint64 x2 x0;
(* eor	x14, x14, x0                                #! PC = 0x555556c028 *)
xor x14@uint64 x14 x0;
(* eor	x12, x12, x0                                #! PC = 0x555556c02c *)
xor x12@uint64 x12 x0;
(* eor	x25, x25, x1                                #! PC = 0x555556c030 *)
xor x25@uint64 x25 x1;
(* ldr	x30, [sp, #104]                             #! EA = L0x7fffffeaa8; Value = 0xcf9f63bade67e758; PC = 0x555556c034 *)
mov x30 L0x7fffffeaa8;
(* eor	x8, x27, x10                                #! PC = 0x555556c038 *)
xor x8@uint64 x27 x10;
(* ldr	x0, [sp, #152]                              #! EA = L0x7fffffead8; Value = 0x2a5b02d6942ac545; PC = 0x555556c03c *)
mov x0 L0x7fffffead8;
(* eor	x15, x15, x9                                #! PC = 0x555556c040 *)
xor x15@uint64 x15 x9;
(* eor	x19, x19, x9                                #! PC = 0x555556c044 *)
xor x19@uint64 x19 x9;
(* eor	x24, x24, x10                               #! PC = 0x555556c048 *)
xor x24@uint64 x24 x10;
(* eor	x27, x0, x23                                #! PC = 0x555556c04c *)
xor x27@uint64 x0 x23;
(* eor	x20, x20, x1                                #! PC = 0x555556c050 *)
xor x20@uint64 x20 x1;
(* eor	x4, x4, x10                                 #! PC = 0x555556c054 *)
xor x4@uint64 x4 x10;
(* eor	x13, x13, x9                                #! PC = 0x555556c058 *)
xor x13@uint64 x13 x9;
(* eor	x10, x16, x10                               #! PC = 0x555556c05c *)
xor x10@uint64 x16 x10;
(* eor	x30, x30, x23                               #! PC = 0x555556c060 *)
xor x30@uint64 x30 x23;
(* ror	x25, x25, #37                               #! PC = 0x555556c064 *)
ror x25@uint64 x25 37;
(* ror	x15, x15, #8                                #! PC = 0x555556c068 *)
ror x15@uint64 x15 8;
(* eor	x26, x26, x23                               #! PC = 0x555556c06c *)
xor x26@uint64 x26 x23;
(* ror	x8, x8, #49                                 #! PC = 0x555556c070 *)
ror x8@uint64 x8 49;
(* eor	x5, x5, x9                                  #! PC = 0x555556c074 *)
xor x5@uint64 x5 x9;
(* ror	x20, x20, #44                               #! PC = 0x555556c078 *)
ror x20@uint64 x20 44;
(* ror	x13, x13, #39                               #! PC = 0x555556c07c *)
ror x13@uint64 x13 39;
(* ror	x10, x10, #58                               #! PC = 0x555556c080 *)
ror x10@uint64 x10 58;
(* ror	x27, x27, #61                               #! PC = 0x555556c084 *)
ror x27@uint64 x27 61;
(* ror	x30, x30, #28                               #! PC = 0x555556c088 *)
ror x30@uint64 x30 28;
(* ror	x12, x12, #54                               #! PC = 0x555556c08c *)
ror x12@uint64 x12 54;
(* eor	x17, x17, x23                               #! PC = 0x555556c090 *)
xor x17@uint64 x17 x23;
(* ror	x0, x19, #9                                 #! PC = 0x555556c094 *)
ror x0@uint64 x19 9;
(* eor	x23, x28, x23                               #! PC = 0x555556c098 *)
xor x23@uint64 x28 x23;
(* bic	x19, x15, x8                                #! PC = 0x555556c09c *)
not x8_not@uint64 x8;
and x19@uint64 x15 x8_not;
(* bic	x28, x25, x15                               #! PC = 0x555556c0a0 *)
not x15_not@uint64 x15;
and x28@uint64 x25 x15_not;
(* eor	x3, x3, x1                                  #! PC = 0x555556c0a4 *)
xor x3@uint64 x3 x1;
(* ror	x14, x14, #62                               #! PC = 0x555556c0a8 *)
ror x14@uint64 x14 62;
(* ror	x5, x5, #36                                 #! PC = 0x555556c0ac *)
ror x5@uint64 x5 36;
(* ror	x26, x26, #23                               #! PC = 0x555556c0b0 *)
ror x26@uint64 x26 23;
(* eor	x19, x19, x12                               #! PC = 0x555556c0b4 *)
xor x19@uint64 x19 x12;
(* ror	x2, x2, #63                                 #! PC = 0x555556c0b8 *)
ror x2@uint64 x2 63;
(* eor	x18, x18, x1                                #! PC = 0x555556c0bc *)
xor x18@uint64 x18 x1;
(* eor	x22, x22, x9                                #! PC = 0x555556c0c0 *)
xor x22@uint64 x22 x9;
(* bic	x1, x13, x10                                #! PC = 0x555556c0c4 *)
not x10_not@uint64 x10;
and x1@uint64 x13 x10_not;
(* bic	x9, x27, x20                                #! PC = 0x555556c0c8 *)
not x20_not@uint64 x20;
and x9@uint64 x27 x20_not;
(* str	x0, [sp, #184]                              #! EA = L0x7fffffeaf8; PC = 0x555556c0cc *)
mov L0x7fffffeaf8 x0;
(* bic	x0, x12, x30                                #! PC = 0x555556c0d0 *)
not x30_not@uint64 x30;
and x0@uint64 x12 x30_not;
(* bic	x12, x8, x12                                #! PC = 0x555556c0d4 *)
not x12_not@uint64 x12;
and x12@uint64 x8 x12_not;
(* eor	x8, x28, x8                                 #! PC = 0x555556c0d8 *)
xor x8@uint64 x28 x8;
(* ror	x24, x24, #2                                #! PC = 0x555556c0dc *)
ror x24@uint64 x24 2;
(* eor	x9, x9, x5                                  #! PC = 0x555556c0e0 *)
xor x9@uint64 x9 x5;
(* ror	x3, x3, #25                                 #! PC = 0x555556c0e4 *)
ror x3@uint64 x3 25;
(* eor	x1, x1, x2                                  #! PC = 0x555556c0e8 *)
xor x1@uint64 x1 x2;
(* stp	x9, x1, [sp, #112]                          #! EA = L0x7fffffeab0; PC = 0x555556c0ec *)
mov L0x7fffffeab0 x9;
mov L0x7fffffeab8 x1;
(* ror	x7, x7, #50                                 #! PC = 0x555556c0f0 *)
ror x7@uint64 x7 50;
(* str	x8, [sp, #176]                              #! EA = L0x7fffffeaf0; PC = 0x555556c0f4 *)
mov L0x7fffffeaf0 x8;
(* bic	x8, x14, x26                                #! PC = 0x555556c0f8 *)
not x26_not@uint64 x26;
and x8@uint64 x14 x26_not;
(* eor	x28, x8, x3                                 #! PC = 0x555556c0fc *)
xor x28@uint64 x8 x3;
(* ror	x22, x22, #43                               #! PC = 0x555556c100 *)
ror x22@uint64 x22 43;
(* ror	x11, x11, #20                               #! PC = 0x555556c104 *)
ror x11@uint64 x11 20;
(* bic	x8, x24, x14                                #! PC = 0x555556c108 *)
not x14_not@uint64 x14;
and x8@uint64 x24 x14_not;
(* ror	x4, x4, #21                                 #! PC = 0x555556c10c *)
ror x4@uint64 x4 21;
(* eor	x9, x0, x25                                 #! PC = 0x555556c110 *)
xor x9@uint64 x0 x25;
(* bic	x16, x4, x11                                #! PC = 0x555556c114 *)
not x11_not@uint64 x11;
and x16@uint64 x4 x11_not;
(* bic	x0, x7, x22                                 #! PC = 0x555556c118 *)
not x22_not@uint64 x22;
and x0@uint64 x7 x22_not;
(* eor	x8, x8, x26                                 #! PC = 0x555556c11c *)
xor x8@uint64 x8 x26;
(* ldr	x1, [sp, #112]                              #! EA = L0x7fffffeab0; Value = 0x2142088457097f85; PC = 0x555556c120 *)
mov x1 L0x7fffffeab0;
(* eor	x16, x16, x23                               #! PC = 0x555556c124 *)
xor x16@uint64 x16 x23;
(* stp	x28, x8, [sp, #136]                         #! EA = L0x7fffffeac8; PC = 0x555556c128 *)
mov L0x7fffffeac8 x28;
mov L0x7fffffead0 x8;
(* mov	x8, #0x8002                	// #32770       #! PC = 0x555556c12c *)
mov x8 0x8002@uint64;
(* ror	x18, x18, #56                               #! PC = 0x555556c130 *)
ror x18@uint64 x18 56;
(* str	x19, [sp, #168]                             #! EA = L0x7fffffeae8; PC = 0x555556c134 *)
mov L0x7fffffeae8 x19;
(* eor	x19, x0, x4                                 #! PC = 0x555556c138 *)
xor x19@uint64 x0 x4;
(* bic	x4, x22, x4                                 #! PC = 0x555556c13c *)
not x4_not@uint64 x4;
and x4@uint64 x22 x4_not;
(* ror	x6, x6, #3                                  #! PC = 0x555556c140 *)
ror x6@uint64 x6 3;
(* movk	x8, #0x8000, lsl #48                       #! PC = 0x555556c144 *)
shl tmp 0x8000@uint64 48;
and x8_m@uint64 x8 0x0000ffffffffffff@uint64;
or x8@uint64 x8_m tmp;
(* ror	x17, x17, #46                               #! PC = 0x555556c148 *)
ror x17@uint64 x17 46;
(* eor	x16, x16, x8                                #! PC = 0x555556c14c *)
xor x16@uint64 x16 x8;
(* str	x19, [sp, #104]                             #! EA = L0x7fffffeaa8; PC = 0x555556c150 *)
mov L0x7fffffeaa8 x19;
(* eor	x19, x4, x11                                #! PC = 0x555556c154 *)
xor x19@uint64 x4 x11;
(* bic	x11, x11, x23                               #! PC = 0x555556c158 *)
not x23_not@uint64 x23;
and x11@uint64 x11 x23_not;
(* str	x9, [sp, #128]                              #! EA = L0x7fffffeac0; PC = 0x555556c15c *)
mov L0x7fffffeac0 x9;
(* ror	x21, x21, #19                               #! PC = 0x555556c160 *)
ror x21@uint64 x21 19;
(* eor	x11, x11, x7                                #! PC = 0x555556c164 *)
xor x11@uint64 x11 x7;
(* bic	x9, x23, x7                                 #! PC = 0x555556c168 *)
not x7_not@uint64 x7;
and x9@uint64 x23 x7_not;
(* bic	x8, x18, x13                                #! PC = 0x555556c16c *)
not x13_not@uint64 x13;
and x8@uint64 x18 x13_not;
(* bic	x23, x2, x17                                #! PC = 0x555556c170 *)
not x17_not@uint64 x17;
and x23@uint64 x2 x17_not;
(* bic	x7, x5, x6                                  #! PC = 0x555556c174 *)
not x6_not@uint64 x6;
and x7@uint64 x5 x6_not;
(* bic	x2, x10, x2                                 #! PC = 0x555556c178 *)
not x2_not@uint64 x2;
and x2@uint64 x10 x2_not;
(* str	x16, [sp, #152]                             #! EA = L0x7fffffead8; PC = 0x555556c17c *)
mov L0x7fffffead8 x16;
(* eor	x16, x16, x1                                #! PC = 0x555556c180 *)
xor x16@uint64 x16 x1;
(* bic	x1, x20, x5                                 #! PC = 0x555556c184 *)
not x5_not@uint64 x5;
and x1@uint64 x20 x5_not;
(* eor	x23, x23, x18                               #! PC = 0x555556c188 *)
xor x23@uint64 x23 x18;
(* eor	x7, x7, x21                                 #! PC = 0x555556c18c *)
xor x7@uint64 x7 x21;
(* eor	x2, x2, x17                                 #! PC = 0x555556c190 *)
xor x2@uint64 x2 x17;
(* bic	x28, x6, x21                                #! PC = 0x555556c194 *)
not x21_not@uint64 x21;
and x28@uint64 x6 x21_not;
(* bic	x17, x17, x18                               #! PC = 0x555556c198 *)
not x18_not@uint64 x18;
and x17@uint64 x17 x18_not;
(* eor	x8, x8, x10                                 #! PC = 0x555556c19c *)
xor x8@uint64 x8 x10;
(* eor	x1, x1, x6                                  #! PC = 0x555556c1a0 *)
xor x1@uint64 x1 x6;
(* str	x11, [sp, #160]                             #! EA = L0x7fffffeae0; PC = 0x555556c1a4 *)
mov L0x7fffffeae0 x11;
(* bic	x11, x21, x27                               #! PC = 0x555556c1a8 *)
not x27_not@uint64 x27;
and x11@uint64 x21 x27_not;
(* ldp	x5, x6, [sp, #120]                          #! EA = L0x7fffffeab8; Value = 0x882acd7f73b8d3f8; PC = 0x555556c1ac *)
mov x5 L0x7fffffeab8;
mov x6 L0x7fffffeac0;
(* bic	x26, x26, x3                                #! PC = 0x555556c1b0 *)
not x3_not@uint64 x3;
and x26@uint64 x26 x3_not;
(* ldp	x4, x10, [sp, #136]                         #! EA = L0x7fffffeac8; Value = 0x2525f69985c034d5; PC = 0x555556c1b4 *)
mov x4 L0x7fffffeac8;
mov x10 L0x7fffffead0;
(* eor	x11, x11, x20                               #! PC = 0x555556c1b8 *)
xor x11@uint64 x11 x20;
(* ldp	x21, x18, [sp, #168]                        #! EA = L0x7fffffeae8; Value = 0x1d6d22dcf2da456c; PC = 0x555556c1bc *)
mov x21 L0x7fffffeae8;
mov x18 L0x7fffffeaf0;
(* eor	x28, x28, x27                               #! PC = 0x555556c1c0 *)
xor x28@uint64 x28 x27;
(* ldr	x0, [sp, #184]                              #! EA = L0x7fffffeaf8; Value = 0xd908848382315f30; PC = 0x555556c1c4 *)
mov x0 L0x7fffffeaf8;
(* eor	x20, x5, x6                                 #! PC = 0x555556c1c8 *)
xor x20@uint64 x5 x6;
(* eor	x12, x12, x30                               #! PC = 0x555556c1cc *)
xor x12@uint64 x12 x30;
(* bic	x25, x30, x25                               #! PC = 0x555556c1d0 *)
not x25_not@uint64 x25;
and x25@uint64 x30 x25_not;
(* eor	x26, x26, x0                                #! PC = 0x555556c1d4 *)
xor x26@uint64 x26 x0;
(* bic	x5, x0, x24                                 #! PC = 0x555556c1d8 *)
not x24_not@uint64 x24;
and x5@uint64 x0 x24_not;
(* eor	x6, x21, x4                                 #! PC = 0x555556c1dc *)
xor x6@uint64 x21 x4;
(* bic	x4, x3, x0                                  #! PC = 0x555556c1e0 *)
not x0_not@uint64 x0;
and x4@uint64 x3 x0_not;
(* ldr	x0, [sp, #104]                              #! EA = L0x7fffffeaa8; Value = 0x5bafe9312925a129; PC = 0x555556c1e4 *)
mov x0 L0x7fffffeaa8;
(* eor	x4, x4, x24                                 #! PC = 0x555556c1e8 *)
xor x4@uint64 x4 x24;
(* ldr	x24, [sp, #160]                             #! EA = L0x7fffffeae0; Value = 0x07f6212ec891f7e5; PC = 0x555556c1ec *)
mov x24 L0x7fffffeae0;
(* eor	x27, x18, x10                               #! PC = 0x555556c1f0 *)
xor x27@uint64 x18 x10;
(* eor	x5, x5, x14                                 #! PC = 0x555556c1f4 *)
xor x5@uint64 x5 x14;
(* eor	x3, x7, x23                                 #! PC = 0x555556c1f8 *)
xor x3@uint64 x7 x23;
(* eor	x30, x0, x28                                #! PC = 0x555556c1fc *)
xor x30@uint64 x0 x28;
(* eor	x10, x1, x2                                 #! PC = 0x555556c200 *)
xor x10@uint64 x1 x2;
(* eor	x0, x17, x13                                #! PC = 0x555556c204 *)
xor x0@uint64 x17 x13;
(* eor	x9, x9, x22                                 #! PC = 0x555556c208 *)
xor x9@uint64 x9 x22;
(* eor	x13, x24, x5                                #! PC = 0x555556c20c *)
xor x13@uint64 x24 x5;
(* eor	x20, x20, x16                               #! PC = 0x555556c210 *)
xor x20@uint64 x20 x16;
(* eor	x30, x30, x6                                #! PC = 0x555556c214 *)
xor x30@uint64 x30 x6;
(* eor	x16, x8, x12                                #! PC = 0x555556c218 *)
xor x16@uint64 x8 x12;
(* eor	x6, x19, x11                                #! PC = 0x555556c21c *)
xor x6@uint64 x19 x11;
(* eor	x3, x3, x27                                 #! PC = 0x555556c220 *)
xor x3@uint64 x3 x27;
(* eor	x3, x3, x9                                  #! PC = 0x555556c224 *)
xor x3@uint64 x3 x9;
(* eor	x15, x25, x15                               #! PC = 0x555556c228 *)
xor x15@uint64 x25 x15;
(* eor	x30, x30, x0                                #! PC = 0x555556c22c *)
xor x30@uint64 x30 x0;
(* eor	x16, x6, x16                                #! PC = 0x555556c230 *)
xor x16@uint64 x6 x16;
(* eor	x13, x10, x13                               #! PC = 0x555556c234 *)
xor x13@uint64 x10 x13;
(* eor	x20, x20, x4                                #! PC = 0x555556c238 *)
xor x20@uint64 x20 x4;
(* eor	x13, x13, x15                               #! PC = 0x555556c23c *)
xor x13@uint64 x13 x15;
(* eor	x16, x16, x26                               #! PC = 0x555556c240 *)
xor x16@uint64 x16 x26;
(* eor	x14, x20, x30, ror #63                      #! PC = 0x555556c244 *)
ror x30_r x30 63;
xor x14@uint64 x20 x30_r;
(* eor	x10, x16, x3, ror #63                       #! PC = 0x555556c248 *)
ror x3_r x3 63;
xor x10@uint64 x16 x3_r;
(* eor	x27, x3, x20, ror #63                       #! PC = 0x555556c24c *)
ror x20_r x20 63;
xor x27@uint64 x3 x20_r;
(* eor	x30, x30, x13, ror #63                      #! PC = 0x555556c250 *)
ror x13_r x13 63;
xor x30@uint64 x30 x13_r;
(* eor	x16, x13, x16, ror #63                      #! PC = 0x555556c254 *)
ror x16_r x16 63;
xor x16@uint64 x13 x16_r;
(* eor	x22, x21, x10                               #! PC = 0x555556c258 *)
xor x22@uint64 x21 x10;
(* eor	x13, x19, x14                               #! PC = 0x555556c25c *)
xor x13@uint64 x19 x14;
(* eor	x11, x11, x14                               #! PC = 0x555556c260 *)
xor x11@uint64 x11 x14;
(* eor	x19, x12, x14                               #! PC = 0x555556c264 *)
xor x19@uint64 x12 x14;
(* eor	x8, x8, x14                                 #! PC = 0x555556c268 *)
xor x8@uint64 x8 x14;
(* eor	x12, x26, x14                               #! PC = 0x555556c26c *)
xor x12@uint64 x26 x14;
(* eor	x25, x23, x30                               #! PC = 0x555556c270 *)
xor x25@uint64 x23 x30;
(* ldr	x17, [sp, #104]                             #! EA = L0x7fffffeaa8; Value = 0x5bafe9312925a129; PC = 0x555556c274 *)
mov x17 L0x7fffffeaa8;
(* eor	x6, x24, x27                                #! PC = 0x555556c278 *)
xor x6@uint64 x24 x27;
(* ldr	x21, [sp, #120]                             #! EA = L0x7fffffeab8; Value = 0x882acd7f73b8d3f8; PC = 0x555556c27c *)
mov x21 L0x7fffffeab8;
(* eor	x0, x0, x10                                 #! PC = 0x555556c280 *)
xor x0@uint64 x0 x10;
(* ldr	x3, [sp, #136]                              #! EA = L0x7fffffeac8; Value = 0x2525f69985c034d5; PC = 0x555556c284 *)
mov x3 L0x7fffffeac8;
(* eor	x17, x17, x10                               #! PC = 0x555556c288 *)
xor x17@uint64 x17 x10;
(* ldr	x14, [sp, #112]                             #! EA = L0x7fffffeab0; Value = 0x2142088457097f85; PC = 0x555556c28c *)
mov x14 L0x7fffffeab0;
(* eor	x20, x3, x10                                #! PC = 0x555556c290 *)
xor x20@uint64 x3 x10;
(* eor	x3, x28, x10                                #! PC = 0x555556c294 *)
xor x3@uint64 x28 x10;
(* eor	x10, x21, x16                               #! PC = 0x555556c298 *)
xor x10@uint64 x21 x16;
(* eor	x21, x14, x16                               #! PC = 0x555556c29c *)
xor x21@uint64 x14 x16;
(* ror	x11, x11, #20                               #! PC = 0x555556c2a0 *)
ror x11@uint64 x11 20;
(* ldr	x14, [sp, #128]                             #! EA = L0x7fffffeac0; Value = 0x5275095f4bfb90e7; PC = 0x555556c2a4 *)
mov x14 L0x7fffffeac0;
(* eor	x28, x18, x30                               #! PC = 0x555556c2a8 *)
xor x28@uint64 x18 x30;
(* ldr	x23, [sp, #144]                             #! EA = L0x7fffffead0; Value = 0xb3b4d44bbeb0c335; PC = 0x555556c2ac *)
mov x23 L0x7fffffead0;
(* ror	x0, x0, #21                                 #! PC = 0x555556c2b0 *)
ror x0@uint64 x0 21;
(* ldr	x24, [sp, #152]                             #! EA = L0x7fffffead8; Value = 0x00347c4227f7aedf; PC = 0x555556c2b4 *)
mov x24 L0x7fffffead8;
(* eor	x1, x1, x27                                 #! PC = 0x555556c2b8 *)
xor x1@uint64 x1 x27;
(* eor	x18, x23, x30                               #! PC = 0x555556c2bc *)
xor x18@uint64 x23 x30;
(* ror	x26, x25, #39                               #! PC = 0x555556c2c0 *)
ror x26@uint64 x25 39;
(* bic	x23, x0, x11                                #! PC = 0x555556c2c4 *)
not x11_not@uint64 x11;
and x23@uint64 x0 x11_not;
(* ror	x3, x3, #58                                 #! PC = 0x555556c2c8 *)
ror x3@uint64 x3 58;
(* eor	x4, x4, x16                                 #! PC = 0x555556c2cc *)
xor x4@uint64 x4 x16;
(* eor	x9, x9, x30                                 #! PC = 0x555556c2d0 *)
xor x9@uint64 x9 x30;
(* eor	x14, x14, x16                               #! PC = 0x555556c2d4 *)
xor x14@uint64 x14 x16;
(* eor	x16, x24, x16                               #! PC = 0x555556c2d8 *)
xor x16@uint64 x24 x16;
(* ror	x10, x10, #61                               #! PC = 0x555556c2dc *)
ror x10@uint64 x10 61;
(* ror	x13, x13, #63                               #! PC = 0x555556c2e0 *)
ror x13@uint64 x13 63;
(* ror	x1, x1, #44                                 #! PC = 0x555556c2e4 *)
ror x1@uint64 x1 44;
(* eor	x23, x23, x16                               #! PC = 0x555556c2e8 *)
xor x23@uint64 x23 x16;
(* ror	x24, x28, #43                               #! PC = 0x555556c2ec *)
ror x24@uint64 x28 43;
(* eor	x5, x5, x27                                 #! PC = 0x555556c2f0 *)
xor x5@uint64 x5 x27;
(* eor	x15, x15, x27                               #! PC = 0x555556c2f4 *)
xor x15@uint64 x15 x27;
(* eor	x2, x2, x27                                 #! PC = 0x555556c2f8 *)
xor x2@uint64 x2 x27;
(* mov	x28, #0x80                  	// #128        #! PC = 0x555556c2fc *)
mov x28 0x80@uint64;
(* bic	x27, x26, x3                                #! PC = 0x555556c300 *)
not x3_not@uint64 x3;
and x27@uint64 x26 x3_not;
(* ror	x8, x8, #54                                 #! PC = 0x555556c304 *)
ror x8@uint64 x8 54;
(* ror	x21, x21, #28                               #! PC = 0x555556c308 *)
ror x21@uint64 x21 28;
(* ror	x22, x22, #49                               #! PC = 0x555556c30c *)
ror x22@uint64 x22 49;
(* ror	x9, x9, #36                                 #! PC = 0x555556c310 *)
ror x9@uint64 x9 36;
(* eor	x7, x7, x30                                 #! PC = 0x555556c314 *)
xor x7@uint64 x7 x30;
(* ror	x18, x18, #8                                #! PC = 0x555556c318 *)
ror x18@uint64 x18 8;
(* bic	x30, x10, x1                                #! PC = 0x555556c31c *)
not x1_not@uint64 x1;
and x30@uint64 x10 x1_not;
(* movk	x28, #0x8000, lsl #48                      #! PC = 0x555556c320 *)
shl tmp 0x8000@uint64 48;
and x28_m@uint64 x28 0x0000ffffffffffff@uint64;
or x28@uint64 x28_m tmp;
(* eor	x28, x23, x28                               #! PC = 0x555556c324 *)
xor x28@uint64 x23 x28;
(* eor	x23, x27, x13                               #! PC = 0x555556c328 *)
xor x23@uint64 x27 x13;
(* stp	x24, x23, [sp, #144]                        #! EA = L0x7fffffead0; PC = 0x555556c32c *)
mov L0x7fffffead0 x24;
mov L0x7fffffead8 x23;
(* bic	x25, x18, x22                               #! PC = 0x555556c330 *)
not x22_not@uint64 x22;
and x25@uint64 x18 x22_not;
(* ror	x6, x6, #37                                 #! PC = 0x555556c334 *)
ror x6@uint64 x6 37;
(* eor	x30, x30, x9                                #! PC = 0x555556c338 *)
xor x30@uint64 x30 x9;
(* bic	x24, x22, x8                                #! PC = 0x555556c33c *)
not x8_not@uint64 x8;
and x24@uint64 x22 x8_not;
(* stp	x30, x26, [sp, #104]                        #! EA = L0x7fffffeaa8; PC = 0x555556c340 *)
mov L0x7fffffeaa8 x30;
mov L0x7fffffeab0 x26;
(* bic	x26, x8, x21                                #! PC = 0x555556c344 *)
not x21_not@uint64 x21;
and x26@uint64 x8 x21_not;
(* eor	x27, x25, x8                                #! PC = 0x555556c348 *)
xor x27@uint64 x25 x8;
(* eor	x26, x26, x6                                #! PC = 0x555556c34c *)
xor x26@uint64 x26 x6;
(* bic	x8, x6, x18                                 #! PC = 0x555556c350 *)
not x18_not@uint64 x18;
and x8@uint64 x6 x18_not;
(* eor	x24, x24, x21                               #! PC = 0x555556c354 *)
xor x24@uint64 x24 x21;
(* bic	x6, x21, x6                                 #! PC = 0x555556c358 *)
not x6_not@uint64 x6;
and x6@uint64 x21 x6_not;
(* ldr	x21, [sp, #144]                             #! EA = L0x7fffffead0; Value = 0xe5e6518833771ced; PC = 0x555556c35c *)
mov x21 L0x7fffffead0;
(* ror	x5, x5, #50                                 #! PC = 0x555556c360 *)
ror x5@uint64 x5 50;
(* str	x24, [sp, #160]                             #! EA = L0x7fffffeae0; PC = 0x555556c364 *)
mov L0x7fffffeae0 x24;
(* ror	x7, x7, #9                                  #! PC = 0x555556c368 *)
ror x7@uint64 x7 9;
(* bic	x24, x5, x21                                #! PC = 0x555556c36c *)
not x21_not@uint64 x21;
and x24@uint64 x5 x21_not;
(* ror	x19, x19, #19                               #! PC = 0x555556c370 *)
ror x19@uint64 x19 19;
(* eor	x24, x24, x0                                #! PC = 0x555556c374 *)
xor x24@uint64 x24 x0;
(* ror	x17, x17, #2                                #! PC = 0x555556c378 *)
ror x17@uint64 x17 2;
(* bic	x0, x21, x0                                 #! PC = 0x555556c37c *)
not x0_not@uint64 x0;
and x0@uint64 x21 x0_not;
(* ror	x12, x12, #62                               #! PC = 0x555556c380 *)
ror x12@uint64 x12 62;
(* ror	x20, x20, #3                                #! PC = 0x555556c384 *)
ror x20@uint64 x20 3;
(* bic	x25, x11, x16                               #! PC = 0x555556c388 *)
not x16_not@uint64 x16;
and x25@uint64 x11 x16_not;
(* ror	x14, x14, #23                               #! PC = 0x555556c38c *)
ror x14@uint64 x14 23;
(* bic	x30, x7, x17                                #! PC = 0x555556c390 *)
not x17_not@uint64 x17;
and x30@uint64 x7 x17_not;
(* eor	x0, x0, x11                                 #! PC = 0x555556c394 *)
xor x0@uint64 x0 x11;
(* bic	x11, x19, x10                               #! PC = 0x555556c398 *)
not x10_not@uint64 x10;
and x11@uint64 x19 x10_not;
(* str	x27, [sp, #120]                             #! EA = L0x7fffffeab8; PC = 0x555556c39c *)
mov L0x7fffffeab8 x27;
(* eor	x30, x30, x12                               #! PC = 0x555556c3a0 *)
xor x30@uint64 x30 x12;
(* bic	x27, x12, x14                               #! PC = 0x555556c3a4 *)
not x14_not@uint64 x14;
and x27@uint64 x12 x14_not;
(* eor	x11, x11, x1                                #! PC = 0x555556c3a8 *)
xor x11@uint64 x11 x1;
(* bic	x12, x17, x12                               #! PC = 0x555556c3ac *)
not x12_not@uint64 x12;
and x12@uint64 x17 x12_not;
(* bic	x1, x1, x9                                  #! PC = 0x555556c3b0 *)
not x9_not@uint64 x9;
and x1@uint64 x1 x9_not;
(* bic	x9, x9, x20                                 #! PC = 0x555556c3b4 *)
not x20_not@uint64 x20;
and x9@uint64 x9 x20_not;
(* eor	x25, x25, x5                                #! PC = 0x555556c3b8 *)
xor x25@uint64 x25 x5;
(* ror	x2, x2, #25                                 #! PC = 0x555556c3bc *)
ror x2@uint64 x2 25;
(* eor	x22, x8, x22                                #! PC = 0x555556c3c0 *)
xor x22@uint64 x8 x22;
(* eor	x12, x12, x14                               #! PC = 0x555556c3c4 *)
xor x12@uint64 x12 x14;
(* bic	x5, x16, x5                                 #! PC = 0x555556c3c8 *)
not x5_not@uint64 x5;
and x5@uint64 x16 x5_not;
(* bic	x16, x20, x19                               #! PC = 0x555556c3cc *)
not x19_not@uint64 x19;
and x16@uint64 x20 x19_not;
(* eor	x20, x1, x20                                #! PC = 0x555556c3d0 *)
xor x20@uint64 x1 x20;
(* eor	x19, x9, x19                                #! PC = 0x555556c3d4 *)
xor x19@uint64 x9 x19;
(* stp	x22, x12, [sp, #128]                        #! EA = L0x7fffffeac0; PC = 0x555556c3d8 *)
mov L0x7fffffeac0 x22;
mov L0x7fffffeac8 x12;
(* bic	x14, x14, x2                                #! PC = 0x555556c3dc *)
not x2_not@uint64 x2;
and x14@uint64 x14 x2_not;
(* eor	x27, x27, x2                                #! PC = 0x555556c3e0 *)
xor x27@uint64 x27 x2;
(* ldp	x1, x9, [sp, #112]                          #! EA = L0x7fffffeab0; Value = 0xb4f144269cb8c57d; PC = 0x555556c3e4 *)
mov x1 L0x7fffffeab0;
mov x9 L0x7fffffeab8;
(* bic	x2, x2, x7                                  #! PC = 0x555556c3e8 *)
not x7_not@uint64 x7;
and x2@uint64 x2 x7_not;
(* eor	x18, x6, x18                                #! PC = 0x555556c3ec *)
xor x18@uint64 x6 x18;
(* eor	x14, x14, x7                                #! PC = 0x555556c3f0 *)
xor x14@uint64 x14 x7;
(* ldr	x8, [sp, #104]                              #! EA = L0x7fffffeaa8; Value = 0xd44e3b65a0e6ff37; PC = 0x555556c3f4 *)
mov x8 L0x7fffffeaa8;
(* ror	x15, x15, #56                               #! PC = 0x555556c3f8 *)
ror x15@uint64 x15 56;
(* ldp	x6, x7, [sp, #128]                          #! EA = L0x7fffffeac0; Value = 0xd965de1b1864f618; PC = 0x555556c3fc *)
mov x6 L0x7fffffeac0;
mov x7 L0x7fffffeac8;
(* eor	x22, x28, x8                                #! PC = 0x555556c400 *)
xor x22@uint64 x28 x8;
(* eor	x8, x23, x26                                #! PC = 0x555556c404 *)
xor x8@uint64 x23 x26;
(* ror	x4, x4, #46                                 #! PC = 0x555556c408 *)
ror x4@uint64 x4 46;
(* bic	x12, x15, x1                                #! PC = 0x555556c40c *)
not x1_not@uint64 x1;
and x12@uint64 x15 x1_not;
(* eor	x22, x8, x22                                #! PC = 0x555556c410 *)
xor x22@uint64 x8 x22;
(* ldr	x8, [sp, #160]                              #! EA = L0x7fffffeae0; Value = 0x071bf68beea8c1c3; PC = 0x555556c414 *)
mov x8 L0x7fffffeae0;
(* eor	x12, x12, x3                                #! PC = 0x555556c418 *)
xor x12@uint64 x12 x3;
(* bic	x3, x3, x13                                 #! PC = 0x555556c41c *)
not x13_not@uint64 x13;
and x3@uint64 x3 x13_not;
(* bic	x13, x13, x4                                #! PC = 0x555556c420 *)
not x4_not@uint64 x4;
and x13@uint64 x13 x4_not;
(* eor	x16, x16, x10                               #! PC = 0x555556c424 *)
xor x16@uint64 x16 x10;
(* eor	x13, x13, x15                               #! PC = 0x555556c428 *)
xor x13@uint64 x13 x15;
(* eor	x10, x6, x7                                 #! PC = 0x555556c42c *)
xor x10@uint64 x6 x7;
(* eor	x1, x0, x11                                 #! PC = 0x555556c430 *)
xor x1@uint64 x0 x11;
(* ldr	x7, [sp, #112]                              #! EA = L0x7fffffeab0; Value = 0xb4f144269cb8c57d; PC = 0x555556c434 *)
mov x7 L0x7fffffeab0;
(* eor	x17, x2, x17                                #! PC = 0x555556c438 *)
xor x17@uint64 x2 x17;
(* eor	x3, x3, x4                                  #! PC = 0x555556c43c *)
xor x3@uint64 x3 x4;
(* eor	x2, x19, x13                                #! PC = 0x555556c440 *)
xor x2@uint64 x19 x13;
(* eor	x23, x12, x8                                #! PC = 0x555556c444 *)
xor x23@uint64 x12 x8;
(* eor	x5, x5, x21                                 #! PC = 0x555556c448 *)
xor x5@uint64 x5 x21;
(* eor	x6, x20, x3                                 #! PC = 0x555556c44c *)
xor x6@uint64 x20 x3;
(* bic	x4, x4, x15                                 #! PC = 0x555556c450 *)
not x15_not@uint64 x15;
and x4@uint64 x4 x15_not;
(* eor	x9, x9, x27                                 #! PC = 0x555556c454 *)
xor x9@uint64 x9 x27;
(* eor	x15, x24, x16                               #! PC = 0x555556c458 *)
xor x15@uint64 x24 x16;
(* eor	x23, x1, x23                                #! PC = 0x555556c45c *)
xor x23@uint64 x1 x23;
(* eor	x10, x2, x10                                #! PC = 0x555556c460 *)
xor x10@uint64 x2 x10;
(* eor	x1, x25, x30                                #! PC = 0x555556c464 *)
xor x1@uint64 x25 x30;
(* eor	x22, x22, x17                               #! PC = 0x555556c468 *)
xor x22@uint64 x22 x17;
(* eor	x10, x10, x5                                #! PC = 0x555556c46c *)
xor x10@uint64 x10 x5;
(* eor	x4, x4, x7                                  #! PC = 0x555556c470 *)
xor x4@uint64 x4 x7;
(* eor	x9, x15, x9                                 #! PC = 0x555556c474 *)
xor x9@uint64 x15 x9;
(* eor	x6, x6, x1                                  #! PC = 0x555556c478 *)
xor x6@uint64 x6 x1;
(* eor	x6, x6, x18                                 #! PC = 0x555556c47c *)
xor x6@uint64 x6 x18;
(* eor	x23, x23, x14                               #! PC = 0x555556c480 *)
xor x23@uint64 x23 x14;
(* eor	x9, x9, x4                                  #! PC = 0x555556c484 *)
xor x9@uint64 x9 x4;
(* eor	x1, x10, x22, ror #63                       #! PC = 0x555556c488 *)
ror x22_r x22 63;
xor x1@uint64 x10 x22_r;
(* eor	x10, x23, x10, ror #63                      #! PC = 0x555556c48c *)
ror x10_r x10 63;
xor x10@uint64 x23 x10_r;
(* eor	x23, x6, x23, ror #63                       #! PC = 0x555556c490 *)
ror x23_r x23 63;
xor x23@uint64 x6 x23_r;
(* eor	x2, x22, x9, ror #63                        #! PC = 0x555556c494 *)
ror x9_r x9 63;
xor x2@uint64 x22 x9_r;
(* eor	x9, x9, x6, ror #63                         #! PC = 0x555556c498 *)
ror x6_r x6 63;
xor x9@uint64 x9 x6_r;
(* eor	x6, x27, x10                                #! PC = 0x555556c49c *)
xor x6@uint64 x27 x10;
(* eor	x7, x30, x1                                 #! PC = 0x555556c4a0 *)
xor x7@uint64 x30 x1;
(* ldp	x27, x22, [sp, #120]                        #! EA = L0x7fffffeab8; Value = 0xb9204ddecb5e8db8; PC = 0x555556c4a4 *)
mov x27 L0x7fffffeab8;
mov x22 L0x7fffffeac0;
(* eor	x25, x25, x1                                #! PC = 0x555556c4a8 *)
xor x25@uint64 x25 x1;
(* ldr	x15, [sp, #136]                             #! EA = L0x7fffffeac8; Value = 0xcf889470bfcd833b; PC = 0x555556c4ac *)
mov x15 L0x7fffffeac8;
(* eor	x20, x20, x1                                #! PC = 0x555556c4b0 *)
xor x20@uint64 x20 x1;
(* ldr	x30, [sp, #104]                             #! EA = L0x7fffffeaa8; Value = 0xd44e3b65a0e6ff37; PC = 0x555556c4b4 *)
mov x30 L0x7fffffeaa8;
(* eor	x3, x3, x1                                  #! PC = 0x555556c4b8 *)
xor x3@uint64 x3 x1;
(* eor	x18, x18, x1                                #! PC = 0x555556c4bc *)
xor x18@uint64 x18 x1;
(* eor	x21, x8, x2                                 #! PC = 0x555556c4c0 *)
xor x21@uint64 x8 x2;
(* ldr	x1, [sp, #152]                              #! EA = L0x7fffffead8; Value = 0xd68ec9d0c4753887; PC = 0x555556c4c4 *)
mov x1 L0x7fffffead8;
(* eor	x8, x27, x10                                #! PC = 0x555556c4c8 *)
xor x8@uint64 x27 x10;
(* eor	x15, x15, x9                                #! PC = 0x555556c4cc *)
xor x15@uint64 x15 x9;
(* eor	x19, x19, x9                                #! PC = 0x555556c4d0 *)
xor x19@uint64 x19 x9;
(* eor	x12, x12, x2                                #! PC = 0x555556c4d4 *)
xor x12@uint64 x12 x2;
(* eor	x30, x30, x23                               #! PC = 0x555556c4d8 *)
xor x30@uint64 x30 x23;
(* ror	x25, x25, #37                               #! PC = 0x555556c4dc *)
ror x25@uint64 x25 37;
(* eor	x27, x1, x23                                #! PC = 0x555556c4e0 *)
xor x27@uint64 x1 x23;
(* ror	x15, x15, #8                                #! PC = 0x555556c4e4 *)
ror x15@uint64 x15 8;
(* eor	x26, x26, x23                               #! PC = 0x555556c4e8 *)
xor x26@uint64 x26 x23;
(* ror	x8, x8, #49                                 #! PC = 0x555556c4ec *)
ror x8@uint64 x8 49;
(* eor	x14, x14, x2                                #! PC = 0x555556c4f0 *)
xor x14@uint64 x14 x2;
(* ror	x30, x30, #28                               #! PC = 0x555556c4f4 *)
ror x30@uint64 x30 28;
(* eor	x24, x24, x10                               #! PC = 0x555556c4f8 *)
xor x24@uint64 x24 x10;
(* ror	x12, x12, #54                               #! PC = 0x555556c4fc *)
ror x12@uint64 x12 54;
(* eor	x17, x17, x23                               #! PC = 0x555556c500 *)
xor x17@uint64 x17 x23;
(* eor	x11, x11, x2                                #! PC = 0x555556c504 *)
xor x11@uint64 x11 x2;
(* eor	x23, x28, x23                               #! PC = 0x555556c508 *)
xor x23@uint64 x28 x23;
(* eor	x0, x0, x2                                  #! PC = 0x555556c50c *)
xor x0@uint64 x0 x2;
(* bic	x28, x25, x15                               #! PC = 0x555556c510 *)
not x15_not@uint64 x15;
and x28@uint64 x25 x15_not;
(* ror	x2, x19, #9                                 #! PC = 0x555556c514 *)
ror x2@uint64 x19 9;
(* eor	x5, x5, x9                                  #! PC = 0x555556c518 *)
xor x5@uint64 x5 x9;
(* bic	x19, x15, x8                                #! PC = 0x555556c51c *)
not x8_not@uint64 x8;
and x19@uint64 x15 x8_not;
(* eor	x22, x22, x9                                #! PC = 0x555556c520 *)
xor x22@uint64 x22 x9;
(* ror	x20, x20, #44                               #! PC = 0x555556c524 *)
ror x20@uint64 x20 44;
(* ror	x14, x14, #62                               #! PC = 0x555556c528 *)
ror x14@uint64 x14 62;
(* ror	x27, x27, #61                               #! PC = 0x555556c52c *)
ror x27@uint64 x27 61;
(* bic	x1, x12, x30                                #! PC = 0x555556c530 *)
not x30_not@uint64 x30;
and x1@uint64 x12 x30_not;
(* ror	x26, x26, #23                               #! PC = 0x555556c534 *)
ror x26@uint64 x26 23;
(* eor	x19, x19, x12                               #! PC = 0x555556c538 *)
xor x19@uint64 x19 x12;
(* eor	x4, x4, x10                                 #! PC = 0x555556c53c *)
xor x4@uint64 x4 x10;
(* bic	x12, x8, x12                                #! PC = 0x555556c540 *)
not x12_not@uint64 x12;
and x12@uint64 x8 x12_not;
(* eor	x8, x28, x8                                 #! PC = 0x555556c544 *)
xor x8@uint64 x28 x8;
(* ror	x24, x24, #2                                #! PC = 0x555556c548 *)
ror x24@uint64 x24 2;
(* ror	x3, x3, #25                                 #! PC = 0x555556c54c *)
ror x3@uint64 x3 25;
(* ror	x7, x7, #50                                 #! PC = 0x555556c550 *)
ror x7@uint64 x7 50;
(* ror	x5, x5, #36                                 #! PC = 0x555556c554 *)
ror x5@uint64 x5 36;
(* eor	x1, x1, x25                                 #! PC = 0x555556c558 *)
xor x1@uint64 x1 x25;
(* ror	x22, x22, #43                               #! PC = 0x555556c55c *)
ror x22@uint64 x22 43;
(* eor	x13, x13, x9                                #! PC = 0x555556c560 *)
xor x13@uint64 x13 x9;
(* bic	x9, x27, x20                                #! PC = 0x555556c564 *)
not x20_not@uint64 x20;
and x9@uint64 x27 x20_not;
(* stp	x19, x8, [sp, #168]                         #! EA = L0x7fffffeae8; PC = 0x555556c568 *)
mov L0x7fffffeae8 x19;
mov L0x7fffffeaf0 x8;
(* bic	x8, x14, x26                                #! PC = 0x555556c56c *)
not x26_not@uint64 x26;
and x8@uint64 x14 x26_not;
(* eor	x28, x8, x3                                 #! PC = 0x555556c570 *)
xor x28@uint64 x8 x3;
(* eor	x9, x9, x5                                  #! PC = 0x555556c574 *)
xor x9@uint64 x9 x5;
(* ror	x4, x4, #21                                 #! PC = 0x555556c578 *)
ror x4@uint64 x4 21;
(* bic	x8, x24, x14                                #! PC = 0x555556c57c *)
not x14_not@uint64 x14;
and x8@uint64 x24 x14_not;
(* stp	x9, x1, [sp, #112]                          #! EA = L0x7fffffeab0; PC = 0x555556c580 *)
mov L0x7fffffeab0 x9;
mov L0x7fffffeab8 x1;
(* bic	x1, x7, x22                                 #! PC = 0x555556c584 *)
not x22_not@uint64 x22;
and x1@uint64 x7 x22_not;
(* eor	x9, x1, x4                                  #! PC = 0x555556c588 *)
xor x9@uint64 x1 x4;
(* eor	x8, x8, x26                                 #! PC = 0x555556c58c *)
xor x8@uint64 x8 x26;
(* stp	x28, x8, [sp, #128]                         #! EA = L0x7fffffeac0; PC = 0x555556c590 *)
mov L0x7fffffeac0 x28;
mov L0x7fffffeac8 x8;
(* ror	x11, x11, #20                               #! PC = 0x555556c594 *)
ror x11@uint64 x11 20;
(* eor	x10, x16, x10                               #! PC = 0x555556c598 *)
xor x10@uint64 x16 x10;
(* str	x2, [sp, #184]                              #! EA = L0x7fffffeaf8; PC = 0x555556c59c *)
mov L0x7fffffeaf8 x2;
(* bic	x16, x4, x11                                #! PC = 0x555556c5a0 *)
not x11_not@uint64 x11;
and x16@uint64 x4 x11_not;
(* str	x9, [sp, #104]                              #! EA = L0x7fffffeaa8; PC = 0x555556c5a4 *)
mov L0x7fffffeaa8 x9;
(* bic	x9, x23, x7                                 #! PC = 0x555556c5a8 *)
not x7_not@uint64 x7;
and x9@uint64 x23 x7_not;
(* bic	x4, x22, x4                                 #! PC = 0x555556c5ac *)
not x4_not@uint64 x4;
and x4@uint64 x22 x4_not;
(* eor	x9, x9, x22                                 #! PC = 0x555556c5b0 *)
xor x9@uint64 x9 x22;
(* ldp	x22, x1, [sp, #104]                         #! EA = L0x7fffffeaa8; Value = 0x278fb14a47b2b470; PC = 0x555556c5b4 *)
mov x22 L0x7fffffeaa8;
mov x1 L0x7fffffeab0;
(* ror	x13, x13, #39                               #! PC = 0x555556c5b8 *)
ror x13@uint64 x13 39;
(* eor	x19, x4, x11                                #! PC = 0x555556c5bc *)
xor x19@uint64 x4 x11;
(* ror	x10, x10, #58                               #! PC = 0x555556c5c0 *)
ror x10@uint64 x10 58;
(* ror	x18, x18, #56                               #! PC = 0x555556c5c4 *)
ror x18@uint64 x18 56;
(* ror	x6, x6, #3                                  #! PC = 0x555556c5c8 *)
ror x6@uint64 x6 3;
(* ror	x17, x17, #46                               #! PC = 0x555556c5cc *)
ror x17@uint64 x17 46;
(* bic	x2, x13, x10                                #! PC = 0x555556c5d0 *)
not x10_not@uint64 x10;
and x2@uint64 x13 x10_not;
(* ror	x0, x0, #63                                 #! PC = 0x555556c5d4 *)
ror x0@uint64 x0 63;
(* eor	x16, x16, x23                               #! PC = 0x555556c5d8 *)
xor x16@uint64 x16 x23;
(* bic	x11, x11, x23                               #! PC = 0x555556c5dc *)
not x23_not@uint64 x23;
and x11@uint64 x11 x23_not;
(* mov	x8, #0x800a                	// #32778       #! PC = 0x555556c5e0 *)
mov x8 0x800a@uint64;
(* ror	x21, x21, #19                               #! PC = 0x555556c5e4 *)
ror x21@uint64 x21 19;
(* eor	x2, x2, x0                                  #! PC = 0x555556c5e8 *)
xor x2@uint64 x2 x0;
(* eor	x11, x11, x7                                #! PC = 0x555556c5ec *)
xor x11@uint64 x11 x7;
(* eor	x16, x16, x8                                #! PC = 0x555556c5f0 *)
xor x16@uint64 x16 x8;
(* bic	x7, x5, x6                                  #! PC = 0x555556c5f4 *)
not x6_not@uint64 x6;
and x7@uint64 x5 x6_not;
(* bic	x23, x0, x17                                #! PC = 0x555556c5f8 *)
not x17_not@uint64 x17;
and x23@uint64 x0 x17_not;
(* bic	x8, x18, x13                                #! PC = 0x555556c5fc *)
not x13_not@uint64 x13;
and x8@uint64 x18 x13_not;
(* bic	x0, x10, x0                                 #! PC = 0x555556c600 *)
not x0_not@uint64 x0;
and x0@uint64 x10 x0_not;
(* eor	x23, x23, x18                               #! PC = 0x555556c604 *)
xor x23@uint64 x23 x18;
(* bic	x28, x6, x21                                #! PC = 0x555556c608 *)
not x21_not@uint64 x21;
and x28@uint64 x6 x21_not;
(* eor	x7, x7, x21                                 #! PC = 0x555556c60c *)
xor x7@uint64 x7 x21;
(* eor	x0, x0, x17                                 #! PC = 0x555556c610 *)
xor x0@uint64 x0 x17;
(* eor	x8, x8, x10                                 #! PC = 0x555556c614 *)
xor x8@uint64 x8 x10;
(* bic	x17, x17, x18                               #! PC = 0x555556c618 *)
not x18_not@uint64 x18;
and x17@uint64 x17 x18_not;
(* stp	x11, x2, [sp, #152]                         #! EA = L0x7fffffead8; PC = 0x555556c61c *)
mov L0x7fffffead8 x11;
mov L0x7fffffeae0 x2;
(* bic	x11, x21, x27                               #! PC = 0x555556c620 *)
not x27_not@uint64 x27;
and x11@uint64 x21 x27_not;
(* ldp	x4, x10, [sp, #128]                         #! EA = L0x7fffffeac0; Value = 0xdc82aab468e3f383; PC = 0x555556c624 *)
mov x4 L0x7fffffeac0;
mov x10 L0x7fffffeac8;
(* str	x16, [sp, #144]                             #! EA = L0x7fffffead0; PC = 0x555556c628 *)
mov L0x7fffffead0 x16;
(* ldp	x21, x18, [sp, #168]                        #! EA = L0x7fffffeae8; Value = 0xac6e093ccb3de57e; PC = 0x555556c62c *)
mov x21 L0x7fffffeae8;
mov x18 L0x7fffffeaf0;
(* eor	x16, x16, x1                                #! PC = 0x555556c630 *)
xor x16@uint64 x16 x1;
(* bic	x1, x20, x5                                 #! PC = 0x555556c634 *)
not x5_not@uint64 x5;
and x1@uint64 x20 x5_not;
(* mov	x5, x2                                      #! PC = 0x555556c638 *)
mov x5 x2;
(* eor	x1, x1, x6                                  #! PC = 0x555556c63c *)
xor x1@uint64 x1 x6;
(* eor	x11, x11, x20                               #! PC = 0x555556c640 *)
xor x11@uint64 x11 x20;
(* ldr	x6, [sp, #120]                              #! EA = L0x7fffffeab8; Value = 0xbf608f218cf775b8; PC = 0x555556c644 *)
mov x6 L0x7fffffeab8;
(* eor	x28, x28, x27                               #! PC = 0x555556c648 *)
xor x28@uint64 x28 x27;
(* ldr	x2, [sp, #184]                              #! EA = L0x7fffffeaf8; Value = 0x96fae97234a4ebfe; PC = 0x555556c64c *)
mov x2 L0x7fffffeaf8;
(* eor	x20, x5, x6                                 #! PC = 0x555556c650 *)
xor x20@uint64 x5 x6;
(* eor	x6, x21, x4                                 #! PC = 0x555556c654 *)
xor x6@uint64 x21 x4;
(* eor	x12, x12, x30                               #! PC = 0x555556c658 *)
xor x12@uint64 x12 x30;
(* bic	x4, x3, x2                                  #! PC = 0x555556c65c *)
not x2_not@uint64 x2;
and x4@uint64 x3 x2_not;
(* bic	x5, x2, x24                                 #! PC = 0x555556c660 *)
not x24_not@uint64 x24;
and x5@uint64 x2 x24_not;
(* eor	x4, x4, x24                                 #! PC = 0x555556c664 *)
xor x4@uint64 x4 x24;
(* eor	x5, x5, x14                                 #! PC = 0x555556c668 *)
xor x5@uint64 x5 x14;
(* ldr	x24, [sp, #152]                             #! EA = L0x7fffffead8; Value = 0x7b284b8e0dd41f71; PC = 0x555556c66c *)
mov x24 L0x7fffffead8;
(* eor	x27, x18, x10                               #! PC = 0x555556c670 *)
xor x27@uint64 x18 x10;
(* bic	x25, x30, x25                               #! PC = 0x555556c674 *)
not x25_not@uint64 x25;
and x25@uint64 x30 x25_not;
(* eor	x10, x1, x0                                 #! PC = 0x555556c678 *)
xor x10@uint64 x1 x0;
(* eor	x30, x22, x28                               #! PC = 0x555556c67c *)
xor x30@uint64 x22 x28;
(* mov	x14, x2                                     #! PC = 0x555556c680 *)
mov x14 x2;
(* eor	x2, x17, x13                                #! PC = 0x555556c684 *)
xor x2@uint64 x17 x13;
(* eor	x13, x24, x5                                #! PC = 0x555556c688 *)
xor x13@uint64 x24 x5;
(* eor	x15, x25, x15                               #! PC = 0x555556c68c *)
xor x15@uint64 x25 x15;
(* bic	x26, x26, x3                                #! PC = 0x555556c690 *)
not x3_not@uint64 x3;
and x26@uint64 x26 x3_not;
(* eor	x30, x30, x6                                #! PC = 0x555556c694 *)
xor x30@uint64 x30 x6;
(* eor	x3, x7, x23                                 #! PC = 0x555556c698 *)
xor x3@uint64 x7 x23;
(* eor	x13, x10, x13                               #! PC = 0x555556c69c *)
xor x13@uint64 x10 x13;
(* eor	x6, x19, x11                                #! PC = 0x555556c6a0 *)
xor x6@uint64 x19 x11;
(* eor	x13, x13, x15                               #! PC = 0x555556c6a4 *)
xor x13@uint64 x13 x15;
(* eor	x30, x30, x2                                #! PC = 0x555556c6a8 *)
xor x30@uint64 x30 x2;
(* eor	x20, x20, x16                               #! PC = 0x555556c6ac *)
xor x20@uint64 x20 x16;
(* eor	x3, x3, x27                                 #! PC = 0x555556c6b0 *)
xor x3@uint64 x3 x27;
(* eor	x16, x8, x12                                #! PC = 0x555556c6b4 *)
xor x16@uint64 x8 x12;
(* eor	x26, x26, x14                               #! PC = 0x555556c6b8 *)
xor x26@uint64 x26 x14;
(* eor	x3, x3, x9                                  #! PC = 0x555556c6bc *)
xor x3@uint64 x3 x9;
(* eor	x20, x20, x4                                #! PC = 0x555556c6c0 *)
xor x20@uint64 x20 x4;
(* eor	x16, x6, x16                                #! PC = 0x555556c6c4 *)
xor x16@uint64 x6 x16;
(* eor	x14, x20, x30, ror #63                      #! PC = 0x555556c6c8 *)
ror x30_r x30 63;
xor x14@uint64 x20 x30_r;
(* eor	x16, x16, x26                               #! PC = 0x555556c6cc *)
xor x16@uint64 x16 x26;
(* eor	x30, x30, x13, ror #63                      #! PC = 0x555556c6d0 *)
ror x13_r x13 63;
xor x30@uint64 x30 x13_r;
(* eor	x27, x3, x20, ror #63                       #! PC = 0x555556c6d4 *)
ror x20_r x20 63;
xor x27@uint64 x3 x20_r;
(* eor	x10, x16, x3, ror #63                       #! PC = 0x555556c6d8 *)
ror x3_r x3 63;
xor x10@uint64 x16 x3_r;
(* eor	x25, x23, x30                               #! PC = 0x555556c6dc *)
xor x25@uint64 x23 x30;
(* eor	x16, x13, x16, ror #63                      #! PC = 0x555556c6e0 *)
ror x16_r x16 63;
xor x16@uint64 x13 x16_r;
(* ldp	x3, x23, [sp, #128]                         #! EA = L0x7fffffeac0; Value = 0xdc82aab468e3f383; PC = 0x555556c6e4 *)
mov x3 L0x7fffffeac0;
mov x23 L0x7fffffeac8;
(* eor	x13, x19, x14                               #! PC = 0x555556c6e8 *)
xor x13@uint64 x19 x14;
(* eor	x22, x21, x10                               #! PC = 0x555556c6ec *)
xor x22@uint64 x21 x10;
(* eor	x19, x12, x14                               #! PC = 0x555556c6f0 *)
xor x19@uint64 x12 x14;
(* eor	x11, x11, x14                               #! PC = 0x555556c6f4 *)
xor x11@uint64 x11 x14;
(* eor	x12, x26, x14                               #! PC = 0x555556c6f8 *)
xor x12@uint64 x26 x14;
(* eor	x8, x8, x14                                 #! PC = 0x555556c6fc *)
xor x8@uint64 x8 x14;
(* eor	x6, x24, x27                                #! PC = 0x555556c700 *)
xor x6@uint64 x24 x27;
(* ldr	x17, [sp, #104]                             #! EA = L0x7fffffeaa8; Value = 0x278fb14a47b2b470; PC = 0x555556c704 *)
mov x17 L0x7fffffeaa8;
(* eor	x20, x3, x10                                #! PC = 0x555556c708 *)
xor x20@uint64 x3 x10;
(* ldr	x14, [sp, #112]                             #! EA = L0x7fffffeab0; Value = 0xe1acc8a00da7ae7b; PC = 0x555556c70c *)
mov x14 L0x7fffffeab0;
(* eor	x3, x28, x10                                #! PC = 0x555556c710 *)
xor x3@uint64 x28 x10;
(* ldr	x21, [sp, #160]                             #! EA = L0x7fffffeae0; Value = 0x7401dac06431e5c5; PC = 0x555556c714 *)
mov x21 L0x7fffffeae0;
(* eor	x2, x2, x10                                 #! PC = 0x555556c718 *)
xor x2@uint64 x2 x10;
(* eor	x17, x17, x10                               #! PC = 0x555556c71c *)
xor x17@uint64 x17 x10;
(* ror	x11, x11, #20                               #! PC = 0x555556c720 *)
ror x11@uint64 x11 20;
(* eor	x10, x21, x16                               #! PC = 0x555556c724 *)
xor x10@uint64 x21 x16;
(* eor	x21, x14, x16                               #! PC = 0x555556c728 *)
xor x21@uint64 x14 x16;
(* ldr	x14, [sp, #120]                             #! EA = L0x7fffffeab8; Value = 0xbf608f218cf775b8; PC = 0x555556c72c *)
mov x14 L0x7fffffeab8;
(* eor	x28, x18, x30                               #! PC = 0x555556c730 *)
xor x28@uint64 x18 x30;
(* ldr	x24, [sp, #144]                             #! EA = L0x7fffffead0; Value = 0x774cab18023d795b; PC = 0x555556c734 *)
mov x24 L0x7fffffead0;
(* ror	x2, x2, #21                                 #! PC = 0x555556c738 *)
ror x2@uint64 x2 21;
(* eor	x18, x23, x30                               #! PC = 0x555556c73c *)
xor x18@uint64 x23 x30;
(* ror	x26, x25, #39                               #! PC = 0x555556c740 *)
ror x26@uint64 x25 39;
(* ror	x21, x21, #28                               #! PC = 0x555556c744 *)
ror x21@uint64 x21 28;
(* ror	x8, x8, #54                                 #! PC = 0x555556c748 *)
ror x8@uint64 x8 54;
(* bic	x23, x2, x11                                #! PC = 0x555556c74c *)
not x11_not@uint64 x11;
and x23@uint64 x2 x11_not;
(* ror	x3, x3, #58                                 #! PC = 0x555556c750 *)
ror x3@uint64 x3 58;
(* eor	x4, x4, x16                                 #! PC = 0x555556c754 *)
xor x4@uint64 x4 x16;
(* eor	x7, x7, x30                                 #! PC = 0x555556c758 *)
xor x7@uint64 x7 x30;
(* eor	x14, x14, x16                               #! PC = 0x555556c75c *)
xor x14@uint64 x14 x16;
(* eor	x16, x24, x16                               #! PC = 0x555556c760 *)
xor x16@uint64 x24 x16;
(* ror	x13, x13, #63                               #! PC = 0x555556c764 *)
ror x13@uint64 x13 63;
(* ror	x22, x22, #49                               #! PC = 0x555556c768 *)
ror x22@uint64 x22 49;
(* ror	x6, x6, #37                                 #! PC = 0x555556c76c *)
ror x6@uint64 x6 37;
(* ror	x18, x18, #8                                #! PC = 0x555556c770 *)
ror x18@uint64 x18 8;
(* eor	x23, x23, x16                               #! PC = 0x555556c774 *)
xor x23@uint64 x23 x16;
(* ror	x24, x28, #43                               #! PC = 0x555556c778 *)
ror x24@uint64 x28 43;
(* eor	x1, x1, x27                                 #! PC = 0x555556c77c *)
xor x1@uint64 x1 x27;
(* eor	x0, x0, x27                                 #! PC = 0x555556c780 *)
xor x0@uint64 x0 x27;
(* eor	x5, x5, x27                                 #! PC = 0x555556c784 *)
xor x5@uint64 x5 x27;
(* eor	x15, x15, x27                               #! PC = 0x555556c788 *)
xor x15@uint64 x15 x27;
(* mov	x28, #0x8000000080000000    	// #-9223372034707292160#! PC = 0x555556c78c *)
mov x28 0x8000000080000000@uint64;
(* bic	x27, x26, x3                                #! PC = 0x555556c790 *)
not x3_not@uint64 x3;
and x27@uint64 x26 x3_not;
(* stp	x24, x26, [sp, #144]                        #! EA = L0x7fffffead0; PC = 0x555556c794 *)
mov L0x7fffffead0 x24;
mov L0x7fffffead8 x26;
(* bic	x26, x8, x21                                #! PC = 0x555556c798 *)
not x21_not@uint64 x21;
and x26@uint64 x8 x21_not;
(* bic	x25, x18, x22                               #! PC = 0x555556c79c *)
not x22_not@uint64 x22;
and x25@uint64 x18 x22_not;
(* ror	x17, x17, #2                                #! PC = 0x555556c7a0 *)
ror x17@uint64 x17 2;
(* movk	x28, #0xa                                  #! PC = 0x555556c7a4 *)
and x28_m@uint64 x28 0xffffffffffff0000@uint64;
or x28@uint64 x28_m 0xa@uint64;
(* ror	x7, x7, #9                                  #! PC = 0x555556c7a8 *)
ror x7@uint64 x7 9;
(* eor	x28, x23, x28                               #! PC = 0x555556c7ac *)
xor x28@uint64 x23 x28;
(* eor	x23, x27, x13                               #! PC = 0x555556c7b0 *)
xor x23@uint64 x27 x13;
(* eor	x27, x26, x6                                #! PC = 0x555556c7b4 *)
xor x27@uint64 x26 x6;
(* ror	x12, x12, #62                               #! PC = 0x555556c7b8 *)
ror x12@uint64 x12 62;
(* bic	x24, x22, x8                                #! PC = 0x555556c7bc *)
not x8_not@uint64 x8;
and x24@uint64 x22 x8_not;
(* ror	x14, x14, #23                               #! PC = 0x555556c7c0 *)
ror x14@uint64 x14 23;
(* eor	x8, x25, x8                                 #! PC = 0x555556c7c4 *)
xor x8@uint64 x25 x8;
(* stp	x27, x8, [sp, #112]                         #! EA = L0x7fffffeab0; PC = 0x555556c7c8 *)
mov L0x7fffffeab0 x27;
mov L0x7fffffeab8 x8;
(* bic	x27, x7, x17                                #! PC = 0x555556c7cc *)
not x17_not@uint64 x17;
and x27@uint64 x7 x17_not;
(* eor	x27, x27, x12                               #! PC = 0x555556c7d0 *)
xor x27@uint64 x27 x12;
(* bic	x26, x12, x14                               #! PC = 0x555556c7d4 *)
not x14_not@uint64 x14;
and x26@uint64 x12 x14_not;
(* bic	x12, x17, x12                               #! PC = 0x555556c7d8 *)
not x12_not@uint64 x12;
and x12@uint64 x17 x12_not;
(* str	x23, [sp, #104]                             #! EA = L0x7fffffeaa8; PC = 0x555556c7dc *)
mov L0x7fffffeaa8 x23;
(* bic	x8, x6, x18                                 #! PC = 0x555556c7e0 *)
not x18_not@uint64 x18;
and x8@uint64 x6 x18_not;
(* eor	x12, x12, x14                               #! PC = 0x555556c7e4 *)
xor x12@uint64 x12 x14;
(* eor	x24, x24, x21                               #! PC = 0x555556c7e8 *)
xor x24@uint64 x24 x21;
(* eor	x22, x8, x22                                #! PC = 0x555556c7ec *)
xor x22@uint64 x8 x22;
(* bic	x6, x21, x6                                 #! PC = 0x555556c7f0 *)
not x6_not@uint64 x6;
and x6@uint64 x21 x6_not;
(* stp	x22, x12, [sp, #128]                        #! EA = L0x7fffffeac0; PC = 0x555556c7f4 *)
mov L0x7fffffeac0 x22;
mov L0x7fffffeac8 x12;
(* ror	x5, x5, #50                                 #! PC = 0x555556c7f8 *)
ror x5@uint64 x5 50;
(* ldr	x8, [sp, #104]                              #! EA = L0x7fffffeaa8; Value = 0xc98b36256699769f; PC = 0x555556c7fc *)
mov x8 L0x7fffffeaa8;
(* ror	x19, x19, #19                               #! PC = 0x555556c800 *)
ror x19@uint64 x19 19;
(* ldr	x12, [sp, #112]                             #! EA = L0x7fffffeab0; Value = 0xe1fb5a81920bc049; PC = 0x555556c804 *)
mov x12 L0x7fffffeab0;
(* ror	x20, x20, #3                                #! PC = 0x555556c808 *)
ror x20@uint64 x20 3;
(* ldr	x21, [sp, #144]                             #! EA = L0x7fffffead0; Value = 0x680f14e4a88ea630; PC = 0x555556c80c *)
mov x21 L0x7fffffead0;
(* eor	x22, x8, x12                                #! PC = 0x555556c810 *)
xor x22@uint64 x8 x12;
(* eor	x9, x9, x30                                 #! PC = 0x555556c814 *)
xor x9@uint64 x9 x30;
(* bic	x8, x11, x16                                #! PC = 0x555556c818 *)
not x16_not@uint64 x16;
and x8@uint64 x11 x16_not;
(* bic	x25, x5, x21                                #! PC = 0x555556c81c *)
not x21_not@uint64 x21;
and x25@uint64 x5 x21_not;
(* ror	x1, x1, #44                                 #! PC = 0x555556c820 *)
ror x1@uint64 x1 44;
(* eor	x25, x25, x2                                #! PC = 0x555556c824 *)
xor x25@uint64 x25 x2;
(* ror	x10, x10, #61                               #! PC = 0x555556c828 *)
ror x10@uint64 x10 61;
(* eor	x8, x8, x5                                  #! PC = 0x555556c82c *)
xor x8@uint64 x8 x5;
(* bic	x2, x21, x2                                 #! PC = 0x555556c830 *)
not x2_not@uint64 x2;
and x2@uint64 x21 x2_not;
(* bic	x5, x16, x5                                 #! PC = 0x555556c834 *)
not x5_not@uint64 x5;
and x5@uint64 x16 x5_not;
(* bic	x16, x20, x19                               #! PC = 0x555556c838 *)
not x19_not@uint64 x19;
and x16@uint64 x20 x19_not;
(* eor	x16, x16, x10                               #! PC = 0x555556c83c *)
xor x16@uint64 x16 x10;
(* ror	x9, x9, #36                                 #! PC = 0x555556c840 *)
ror x9@uint64 x9 36;
(* bic	x30, x10, x1                                #! PC = 0x555556c844 *)
not x1_not@uint64 x1;
and x30@uint64 x10 x1_not;
(* eor	x2, x2, x11                                 #! PC = 0x555556c848 *)
xor x2@uint64 x2 x11;
(* bic	x10, x19, x10                               #! PC = 0x555556c84c *)
not x10_not@uint64 x10;
and x10@uint64 x19 x10_not;
(* ror	x0, x0, #25                                 #! PC = 0x555556c850 *)
ror x0@uint64 x0 25;
(* ldr	x11, [sp, #152]                             #! EA = L0x7fffffead8; Value = 0x35e373f718052972; PC = 0x555556c854 *)
mov x11 L0x7fffffead8;
(* eor	x10, x10, x1                                #! PC = 0x555556c858 *)
xor x10@uint64 x10 x1;
(* bic	x1, x1, x9                                  #! PC = 0x555556c85c *)
not x9_not@uint64 x9;
and x1@uint64 x1 x9_not;
(* ror	x15, x15, #56                               #! PC = 0x555556c860 *)
ror x15@uint64 x15 56;
(* eor	x30, x30, x9                                #! PC = 0x555556c864 *)
xor x30@uint64 x30 x9;
(* bic	x14, x14, x0                                #! PC = 0x555556c868 *)
not x0_not@uint64 x0;
and x14@uint64 x14 x0_not;
(* bic	x9, x9, x20                                 #! PC = 0x555556c86c *)
not x20_not@uint64 x20;
and x9@uint64 x9 x20_not;
(* eor	x20, x1, x20                                #! PC = 0x555556c870 *)
xor x20@uint64 x1 x20;
(* ldr	x1, [sp, #120]                              #! EA = L0x7fffffeab8; Value = 0x46a4498921b2db03; PC = 0x555556c874 *)
mov x1 L0x7fffffeab8;
(* ror	x4, x4, #46                                 #! PC = 0x555556c878 *)
ror x4@uint64 x4 46;
(* eor	x26, x26, x0                                #! PC = 0x555556c87c *)
xor x26@uint64 x26 x0;
(* eor	x18, x6, x18                                #! PC = 0x555556c880 *)
xor x18@uint64 x6 x18;
(* bic	x0, x0, x7                                  #! PC = 0x555556c884 *)
not x7_not@uint64 x7;
and x0@uint64 x0 x7_not;
(* bic	x12, x15, x11                               #! PC = 0x555556c888 *)
not x11_not@uint64 x11;
and x12@uint64 x15 x11_not;
(* eor	x7, x14, x7                                 #! PC = 0x555556c88c *)
xor x7@uint64 x14 x7;
(* eor	x12, x12, x3                                #! PC = 0x555556c890 *)
xor x12@uint64 x12 x3;
(* ldr	x6, [sp, #128]                              #! EA = L0x7fffffeac0; Value = 0xd6a0352e3c922341; PC = 0x555556c894 *)
mov x6 L0x7fffffeac0;
(* bic	x3, x3, x13                                 #! PC = 0x555556c898 *)
not x13_not@uint64 x13;
and x3@uint64 x3 x13_not;
(* ldr	x14, [sp, #136]                             #! EA = L0x7fffffeac8; Value = 0x6674d3b64ec651d7; PC = 0x555556c89c *)
mov x14 L0x7fffffeac8;
(* bic	x13, x13, x4                                #! PC = 0x555556c8a0 *)
not x4_not@uint64 x4;
and x13@uint64 x13 x4_not;
(* eor	x23, x28, x30                               #! PC = 0x555556c8a4 *)
xor x23@uint64 x28 x30;
(* eor	x19, x9, x19                                #! PC = 0x555556c8a8 *)
xor x19@uint64 x9 x19;
(* eor	x3, x3, x4                                  #! PC = 0x555556c8ac *)
xor x3@uint64 x3 x4;
(* eor	x9, x25, x16                                #! PC = 0x555556c8b0 *)
xor x9@uint64 x25 x16;
(* eor	x13, x13, x15                               #! PC = 0x555556c8b4 *)
xor x13@uint64 x13 x15;
(* eor	x1, x1, x26                                 #! PC = 0x555556c8b8 *)
xor x1@uint64 x1 x26;
(* bic	x15, x4, x15                                #! PC = 0x555556c8bc *)
not x15_not@uint64 x15;
and x15@uint64 x4 x15_not;
(* eor	x17, x0, x17                                #! PC = 0x555556c8c0 *)
xor x17@uint64 x0 x17;
(* eor	x4, x19, x13                                #! PC = 0x555556c8c4 *)
xor x4@uint64 x19 x13;
(* eor	x0, x2, x10                                 #! PC = 0x555556c8c8 *)
xor x0@uint64 x2 x10;
(* eor	x6, x6, x14                                 #! PC = 0x555556c8cc *)
xor x6@uint64 x6 x14;
(* eor	x15, x15, x11                               #! PC = 0x555556c8d0 *)
xor x15@uint64 x15 x11;
(* eor	x22, x22, x23                               #! PC = 0x555556c8d4 *)
xor x22@uint64 x22 x23;
(* eor	x11, x8, x27                                #! PC = 0x555556c8d8 *)
xor x11@uint64 x8 x27;
(* eor	x23, x12, x24                               #! PC = 0x555556c8dc *)
xor x23@uint64 x12 x24;
(* eor	x9, x9, x1                                  #! PC = 0x555556c8e0 *)
xor x9@uint64 x9 x1;
(* eor	x1, x20, x3                                 #! PC = 0x555556c8e4 *)
xor x1@uint64 x20 x3;
(* eor	x5, x5, x21                                 #! PC = 0x555556c8e8 *)
xor x5@uint64 x5 x21;
(* eor	x23, x0, x23                                #! PC = 0x555556c8ec *)
xor x23@uint64 x0 x23;
(* eor	x4, x4, x6                                  #! PC = 0x555556c8f0 *)
xor x4@uint64 x4 x6;
(* eor	x1, x1, x11                                 #! PC = 0x555556c8f4 *)
xor x1@uint64 x1 x11;
(* eor	x22, x22, x17                               #! PC = 0x555556c8f8 *)
xor x22@uint64 x22 x17;
(* eor	x11, x1, x18                                #! PC = 0x555556c8fc *)
xor x11@uint64 x1 x18;
(* eor	x9, x9, x15                                 #! PC = 0x555556c900 *)
xor x9@uint64 x9 x15;
(* eor	x23, x23, x7                                #! PC = 0x555556c904 *)
xor x23@uint64 x23 x7;
(* eor	x4, x4, x5                                  #! PC = 0x555556c908 *)
xor x4@uint64 x4 x5;
(* eor	x0, x22, x9, ror #63                        #! PC = 0x555556c90c *)
ror x9_r x9 63;
xor x0@uint64 x22 x9_r;
(* eor	x6, x4, x22, ror #63                        #! PC = 0x555556c910 *)
ror x22_r x22 63;
xor x6@uint64 x4 x22_r;
(* eor	x9, x9, x11, ror #63                        #! PC = 0x555556c914 *)
ror x11_r x11 63;
xor x9@uint64 x9 x11_r;
(* eor	x4, x23, x4, ror #63                        #! PC = 0x555556c918 *)
ror x4_r x4 63;
xor x4@uint64 x23 x4_r;
(* eor	x23, x11, x23, ror #63                      #! PC = 0x555556c91c *)
ror x23_r x23 63;
xor x23@uint64 x11 x23_r;
(* eor	x21, x24, x0                                #! PC = 0x555556c920 *)
xor x21@uint64 x24 x0;
(* ldp	x11, x22, [sp, #120]                        #! EA = L0x7fffffeab8; Value = 0x46a4498921b2db03; PC = 0x555556c924 *)
mov x11 L0x7fffffeab8;
mov x22 L0x7fffffeac0;
(* eor	x14, x27, x6                                #! PC = 0x555556c928 *)
xor x14@uint64 x27 x6;
(* eor	x10, x10, x0                                #! PC = 0x555556c92c *)
xor x10@uint64 x10 x0;
(* eor	x2, x2, x0                                  #! PC = 0x555556c930 *)
xor x2@uint64 x2 x0;
(* eor	x7, x7, x0                                  #! PC = 0x555556c934 *)
xor x7@uint64 x7 x0;
(* eor	x12, x12, x0                                #! PC = 0x555556c938 *)
xor x12@uint64 x12 x0;
(* ldp	x0, x27, [sp, #104]                         #! EA = L0x7fffffeaa8; Value = 0xc98b36256699769f; PC = 0x555556c93c *)
mov x0 L0x7fffffeaa8;
mov x27 L0x7fffffeab0;
(* eor	x8, x8, x6                                  #! PC = 0x555556c940 *)
xor x8@uint64 x8 x6;
(* ldr	x24, [sp, #136]                             #! EA = L0x7fffffeac8; Value = 0x6674d3b64ec651d7; PC = 0x555556c944 *)
mov x24 L0x7fffffeac8;
(* eor	x11, x11, x4                                #! PC = 0x555556c948 *)
xor x11@uint64 x11 x4;
(* eor	x1, x26, x4                                 #! PC = 0x555556c94c *)
xor x1@uint64 x26 x4;
(* eor	x19, x19, x9                                #! PC = 0x555556c950 *)
xor x19@uint64 x19 x9;
(* eor	x24, x24, x9                                #! PC = 0x555556c954 *)
xor x24@uint64 x24 x9;
(* eor	x20, x20, x6                                #! PC = 0x555556c958 *)
xor x20@uint64 x20 x6;
(* eor	x26, x27, x23                               #! PC = 0x555556c95c *)
xor x26@uint64 x27 x23;
(* eor	x30, x30, x23                               #! PC = 0x555556c960 *)
xor x30@uint64 x30 x23;
(* eor	x27, x0, x23                                #! PC = 0x555556c964 *)
xor x27@uint64 x0 x23;
(* ror	x8, x8, #37                                 #! PC = 0x555556c968 *)
ror x8@uint64 x8 37;
(* ror	x11, x11, #49                               #! PC = 0x555556c96c *)
ror x11@uint64 x11 49;
(* eor	x15, x15, x4                                #! PC = 0x555556c970 *)
xor x15@uint64 x15 x4;
(* ror	x24, x24, #8                                #! PC = 0x555556c974 *)
ror x24@uint64 x24 8;
(* eor	x25, x25, x4                                #! PC = 0x555556c978 *)
xor x25@uint64 x25 x4;
(* eor	x5, x5, x9                                  #! PC = 0x555556c97c *)
xor x5@uint64 x5 x9;
(* eor	x3, x3, x6                                  #! PC = 0x555556c980 *)
xor x3@uint64 x3 x6;
(* eor	x13, x13, x9                                #! PC = 0x555556c984 *)
xor x13@uint64 x13 x9;
(* eor	x4, x16, x4                                 #! PC = 0x555556c988 *)
xor x4@uint64 x16 x4;
(* ror	x7, x7, #62                                 #! PC = 0x555556c98c *)
ror x7@uint64 x7 62;
(* ror	x30, x30, #28                               #! PC = 0x555556c990 *)
ror x30@uint64 x30 28;
(* ror	x27, x27, #61                               #! PC = 0x555556c994 *)
ror x27@uint64 x27 61;
(* ror	x12, x12, #54                               #! PC = 0x555556c998 *)
ror x12@uint64 x12 54;
(* ror	x20, x20, #44                               #! PC = 0x555556c99c *)
ror x20@uint64 x20 44;
(* ror	x26, x26, #23                               #! PC = 0x555556c9a0 *)
ror x26@uint64 x26 23;
(* eor	x17, x17, x23                               #! PC = 0x555556c9a4 *)
xor x17@uint64 x17 x23;
(* ror	x0, x19, #9                                 #! PC = 0x555556c9a8 *)
ror x0@uint64 x19 9;
(* eor	x23, x28, x23                               #! PC = 0x555556c9ac *)
xor x23@uint64 x28 x23;
(* bic	x19, x24, x11                               #! PC = 0x555556c9b0 *)
not x11_not@uint64 x11;
and x19@uint64 x24 x11_not;
(* bic	x28, x8, x24                                #! PC = 0x555556c9b4 *)
not x24_not@uint64 x24;
and x28@uint64 x8 x24_not;
(* ror	x13, x13, #39                               #! PC = 0x555556c9b8 *)
ror x13@uint64 x13 39;
(* ror	x4, x4, #58                                 #! PC = 0x555556c9bc *)
ror x4@uint64 x4 58;
(* ror	x5, x5, #36                                 #! PC = 0x555556c9c0 *)
ror x5@uint64 x5 36;
(* eor	x19, x19, x12                               #! PC = 0x555556c9c4 *)
xor x19@uint64 x19 x12;
(* ror	x3, x3, #25                                 #! PC = 0x555556c9c8 *)
ror x3@uint64 x3 25;
(* eor	x28, x28, x11                               #! PC = 0x555556c9cc *)
xor x28@uint64 x28 x11;
(* eor	x22, x22, x9                                #! PC = 0x555556c9d0 *)
xor x22@uint64 x22 x9;
(* bic	x9, x27, x20                                #! PC = 0x555556c9d4 *)
not x20_not@uint64 x20;
and x9@uint64 x27 x20_not;
(* stp	x19, x0, [sp, #168]                         #! EA = L0x7fffffeae8; PC = 0x555556c9d8 *)
mov L0x7fffffeae8 x19;
mov L0x7fffffeaf0 x0;
(* bic	x0, x12, x30                                #! PC = 0x555556c9dc *)
not x30_not@uint64 x30;
and x0@uint64 x12 x30_not;
(* bic	x12, x11, x12                               #! PC = 0x555556c9e0 *)
not x12_not@uint64 x12;
and x12@uint64 x11 x12_not;
(* bic	x11, x7, x26                                #! PC = 0x555556c9e4 *)
not x26_not@uint64 x26;
and x11@uint64 x7 x26_not;
(* ror	x25, x25, #2                                #! PC = 0x555556c9e8 *)
ror x25@uint64 x25 2;
(* eor	x9, x9, x5                                  #! PC = 0x555556c9ec *)
xor x9@uint64 x9 x5;
(* ror	x2, x2, #63                                 #! PC = 0x555556c9f0 *)
ror x2@uint64 x2 63;
(* eor	x11, x11, x3                                #! PC = 0x555556c9f4 *)
xor x11@uint64 x11 x3;
(* eor	x18, x18, x6                                #! PC = 0x555556c9f8 *)
xor x18@uint64 x18 x6;
(* bic	x6, x13, x4                                 #! PC = 0x555556c9fc *)
not x4_not@uint64 x4;
and x6@uint64 x13 x4_not;
(* ror	x14, x14, #50                               #! PC = 0x555556ca00 *)
ror x14@uint64 x14 50;
(* eor	x6, x6, x2                                  #! PC = 0x555556ca04 *)
xor x6@uint64 x6 x2;
(* stp	x9, x6, [sp, #112]                          #! EA = L0x7fffffeab0; PC = 0x555556ca08 *)
mov L0x7fffffeab0 x9;
mov L0x7fffffeab8 x6;
(* eor	x9, x0, x8                                  #! PC = 0x555556ca0c *)
xor x9@uint64 x0 x8;
(* stp	x9, x11, [sp, #128]                         #! EA = L0x7fffffeac0; PC = 0x555556ca10 *)
mov L0x7fffffeac0 x9;
mov L0x7fffffeac8 x11;
(* bic	x11, x25, x7                                #! PC = 0x555556ca14 *)
not x7_not@uint64 x7;
and x11@uint64 x25 x7_not;
(* ror	x22, x22, #43                               #! PC = 0x555556ca18 *)
ror x22@uint64 x22 43;
(* ror	x10, x10, #20                               #! PC = 0x555556ca1c *)
ror x10@uint64 x10 20;
(* eor	x11, x11, x26                               #! PC = 0x555556ca20 *)
xor x11@uint64 x11 x26;
(* ror	x15, x15, #21                               #! PC = 0x555556ca24 *)
ror x15@uint64 x15 21;
(* bic	x0, x14, x22                                #! PC = 0x555556ca28 *)
not x22_not@uint64 x22;
and x0@uint64 x14 x22_not;
(* bic	x16, x15, x10                               #! PC = 0x555556ca2c *)
not x10_not@uint64 x10;
and x16@uint64 x15 x10_not;
(* str	x11, [sp, #144]                             #! EA = L0x7fffffead0; PC = 0x555556ca30 *)
mov L0x7fffffead0 x11;
(* mov	x11, #0x8000000080000000    	// #-9223372034707292160#! PC = 0x555556ca34 *)
mov x11 0x8000000080000000@uint64;
(* eor	x19, x0, x15                                #! PC = 0x555556ca38 *)
xor x19@uint64 x0 x15;
(* ror	x21, x21, #19                               #! PC = 0x555556ca3c *)
ror x21@uint64 x21 19;
(* bic	x15, x22, x15                               #! PC = 0x555556ca40 *)
not x15_not@uint64 x15;
and x15@uint64 x22 x15_not;
(* eor	x16, x16, x23                               #! PC = 0x555556ca44 *)
xor x16@uint64 x16 x23;
(* movk	x11, #0x8081                               #! PC = 0x555556ca48 *)
and x11_m@uint64 x11 0xffffffffffff0000@uint64;
or x11@uint64 x11_m 0x8081@uint64;
(* ror	x1, x1, #3                                  #! PC = 0x555556ca4c *)
ror x1@uint64 x1 3;
(* eor	x16, x16, x11                               #! PC = 0x555556ca50 *)
xor x16@uint64 x16 x11;
(* bic	x11, x21, x27                               #! PC = 0x555556ca54 *)
not x27_not@uint64 x27;
and x11@uint64 x21 x27_not;
(* str	x19, [sp, #104]                             #! EA = L0x7fffffeaa8; PC = 0x555556ca58 *)
mov L0x7fffffeaa8 x19;
(* eor	x19, x15, x10                               #! PC = 0x555556ca5c *)
xor x19@uint64 x15 x10;
(* bic	x10, x10, x23                               #! PC = 0x555556ca60 *)
not x23_not@uint64 x23;
and x10@uint64 x10 x23_not;
(* eor	x11, x11, x20                               #! PC = 0x555556ca64 *)
xor x11@uint64 x11 x20;
(* eor	x10, x10, x14                               #! PC = 0x555556ca68 *)
xor x10@uint64 x10 x14;
(* bic	x20, x20, x5                                #! PC = 0x555556ca6c *)
not x5_not@uint64 x5;
and x20@uint64 x20 x5_not;
(* bic	x5, x5, x1                                  #! PC = 0x555556ca70 *)
not x1_not@uint64 x1;
and x5@uint64 x5 x1_not;
(* str	x10, [sp, #160]                             #! EA = L0x7fffffeae0; PC = 0x555556ca74 *)
mov L0x7fffffeae0 x10;
(* eor	x5, x5, x21                                 #! PC = 0x555556ca78 *)
xor x5@uint64 x5 x21;
(* bic	x10, x1, x21                                #! PC = 0x555556ca7c *)
not x21_not@uint64 x21;
and x10@uint64 x1 x21_not;
(* eor	x1, x20, x1                                 #! PC = 0x555556ca80 *)
xor x1@uint64 x20 x1;
(* eor	x10, x10, x27                               #! PC = 0x555556ca84 *)
xor x10@uint64 x10 x27;
(* ldp	x21, x20, [sp, #168]                        #! EA = L0x7fffffeae8; Value = 0xd470e73daf77987a; PC = 0x555556ca88 *)
mov x21 L0x7fffffeae8;
mov x20 L0x7fffffeaf0;
(* ror	x18, x18, #56                               #! PC = 0x555556ca8c *)
ror x18@uint64 x18 56;
(* ldr	x15, [sp, #120]                             #! EA = L0x7fffffeab8; Value = 0x172c8fc4019cf09d; PC = 0x555556ca90 *)
mov x15 L0x7fffffeab8;
(* bic	x9, x23, x14                                #! PC = 0x555556ca94 *)
not x14_not@uint64 x14;
and x9@uint64 x23 x14_not;
(* ldr	x27, [sp, #128]                             #! EA = L0x7fffffeac0; Value = 0xb54a79dd9432dacc; PC = 0x555556ca98 *)
mov x27 L0x7fffffeac0;
(* ror	x17, x17, #46                               #! PC = 0x555556ca9c *)
ror x17@uint64 x17 46;
(* ldr	x6, [sp, #112]                              #! EA = L0x7fffffeab0; Value = 0x10ea9955dcc2c090; PC = 0x555556caa0 *)
mov x6 L0x7fffffeab0;
(* eor	x14, x15, x27                               #! PC = 0x555556caa4 *)
xor x14@uint64 x15 x27;
(* bic	x15, x30, x8                                #! PC = 0x555556caa8 *)
not x8_not@uint64 x8;
and x15@uint64 x30 x8_not;
(* str	x16, [sp, #152]                             #! EA = L0x7fffffead8; PC = 0x555556caac *)
mov L0x7fffffead8 x16;
(* ldr	x8, [sp, #104]                              #! EA = L0x7fffffeaa8; Value = 0xa09357020b4c5a4e; PC = 0x555556cab0 *)
mov x8 L0x7fffffeaa8;
(* eor	x16, x16, x6                                #! PC = 0x555556cab4 *)
xor x16@uint64 x16 x6;
(* ldr	x0, [sp, #136]                              #! EA = L0x7fffffeac8; Value = 0xb96a2fa1d571ea9c; PC = 0x555556cab8 *)
mov x0 L0x7fffffeac8;
(* bic	x6, x18, x13                                #! PC = 0x555556cabc *)
not x13_not@uint64 x13;
and x6@uint64 x18 x13_not;
(* bic	x23, x2, x17                                #! PC = 0x555556cac0 *)
not x17_not@uint64 x17;
and x23@uint64 x2 x17_not;
(* eor	x6, x6, x4                                  #! PC = 0x555556cac4 *)
xor x6@uint64 x6 x4;
(* bic	x2, x4, x2                                  #! PC = 0x555556cac8 *)
not x2_not@uint64 x2;
and x2@uint64 x4 x2_not;
(* bic	x4, x20, x25                                #! PC = 0x555556cacc *)
not x25_not@uint64 x25;
and x4@uint64 x20 x25_not;
(* eor	x12, x12, x30                               #! PC = 0x555556cad0 *)
xor x12@uint64 x12 x30;
(* eor	x4, x4, x7                                  #! PC = 0x555556cad4 *)
xor x4@uint64 x4 x7;
(* eor	x30, x8, x10                                #! PC = 0x555556cad8 *)
xor x30@uint64 x8 x10;
(* eor	x7, x21, x0                                 #! PC = 0x555556cadc *)
xor x7@uint64 x21 x0;
(* eor	x2, x2, x17                                 #! PC = 0x555556cae0 *)
xor x2@uint64 x2 x17;
(* eor	x30, x30, x7                                #! PC = 0x555556cae4 *)
xor x30@uint64 x30 x7;
(* bic	x17, x17, x18                               #! PC = 0x555556cae8 *)
not x18_not@uint64 x18;
and x17@uint64 x17 x18_not;
(* eor	x7, x19, x11                                #! PC = 0x555556caec *)
xor x7@uint64 x19 x11;
(* eor	x14, x14, x16                               #! PC = 0x555556caf0 *)
xor x14@uint64 x14 x16;
(* eor	x16, x6, x12                                #! PC = 0x555556caf4 *)
xor x16@uint64 x6 x12;
(* eor	x0, x17, x13                                #! PC = 0x555556caf8 *)
xor x0@uint64 x17 x13;
(* eor	x16, x7, x16                                #! PC = 0x555556cafc *)
xor x16@uint64 x7 x16;
(* ldp	x7, x13, [sp, #136]                         #! EA = L0x7fffffeac8; Value = 0xb96a2fa1d571ea9c; PC = 0x555556cb00 *)
mov x7 L0x7fffffeac8;
mov x13 L0x7fffffead0;
(* eor	x15, x15, x24                               #! PC = 0x555556cb04 *)
xor x15@uint64 x15 x24;
(* ldr	x24, [sp, #160]                             #! EA = L0x7fffffeae0; Value = 0x354477cd0bfde669; PC = 0x555556cb08 *)
mov x24 L0x7fffffeae0;
(* eor	x23, x23, x18                               #! PC = 0x555556cb0c *)
xor x23@uint64 x23 x18;
(* eor	x8, x5, x23                                 #! PC = 0x555556cb10 *)
xor x8@uint64 x5 x23;
(* bic	x26, x26, x3                                #! PC = 0x555556cb14 *)
not x3_not@uint64 x3;
and x26@uint64 x26 x3_not;
(* eor	x17, x24, x4                                #! PC = 0x555556cb18 *)
xor x17@uint64 x24 x4;
(* bic	x3, x3, x20                                 #! PC = 0x555556cb1c *)
not x20_not@uint64 x20;
and x3@uint64 x3 x20_not;
(* eor	x27, x28, x13                               #! PC = 0x555556cb20 *)
xor x27@uint64 x28 x13;
(* eor	x13, x1, x2                                 #! PC = 0x555556cb24 *)
xor x13@uint64 x1 x2;
(* eor	x26, x26, x20                               #! PC = 0x555556cb28 *)
xor x26@uint64 x26 x20;
(* eor	x9, x9, x22                                 #! PC = 0x555556cb2c *)
xor x9@uint64 x9 x22;
(* eor	x3, x3, x25                                 #! PC = 0x555556cb30 *)
xor x3@uint64 x3 x25;
(* eor	x30, x30, x0                                #! PC = 0x555556cb34 *)
xor x30@uint64 x30 x0;
(* eor	x8, x8, x27                                 #! PC = 0x555556cb38 *)
xor x8@uint64 x8 x27;
(* eor	x13, x13, x17                               #! PC = 0x555556cb3c *)
xor x13@uint64 x13 x17;
(* eor	x14, x14, x3                                #! PC = 0x555556cb40 *)
xor x14@uint64 x14 x3;
(* eor	x18, x8, x9                                 #! PC = 0x555556cb44 *)
xor x18@uint64 x8 x9;
(* eor	x13, x13, x15                               #! PC = 0x555556cb48 *)
xor x13@uint64 x13 x15;
(* eor	x16, x16, x26                               #! PC = 0x555556cb4c *)
xor x16@uint64 x16 x26;
(* eor	x17, x14, x30, ror #63                      #! PC = 0x555556cb50 *)
ror x30_r x30 63;
xor x17@uint64 x14 x30_r;
(* eor	x8, x16, x18, ror #63                       #! PC = 0x555556cb54 *)
ror x18_r x18 63;
xor x8@uint64 x16 x18_r;
(* eor	x27, x18, x14, ror #63                      #! PC = 0x555556cb58 *)
ror x14_r x14 63;
xor x27@uint64 x18 x14_r;
(* eor	x30, x30, x13, ror #63                      #! PC = 0x555556cb5c *)
ror x13_r x13 63;
xor x30@uint64 x30 x13_r;
(* eor	x16, x13, x16, ror #63                      #! PC = 0x555556cb60 *)
ror x16_r x16 63;
xor x16@uint64 x13 x16_r;
(* eor	x11, x11, x17                               #! PC = 0x555556cb64 *)
xor x11@uint64 x11 x17;
(* eor	x13, x19, x17                               #! PC = 0x555556cb68 *)
xor x13@uint64 x19 x17;
(* eor	x6, x6, x17                                 #! PC = 0x555556cb6c *)
xor x6@uint64 x6 x17;
(* eor	x19, x12, x17                               #! PC = 0x555556cb70 *)
xor x19@uint64 x12 x17;
(* eor	x12, x26, x17                               #! PC = 0x555556cb74 *)
xor x12@uint64 x26 x17;
(* ldp	x17, x14, [sp, #104]                        #! EA = L0x7fffffeaa8; Value = 0xa09357020b4c5a4e; PC = 0x555556cb78 *)
mov x17 L0x7fffffeaa8;
mov x14 L0x7fffffeab0;
(* eor	x26, x23, x30                               #! PC = 0x555556cb7c *)
xor x26@uint64 x23 x30;
(* ldr	x23, [sp, #144]                             #! EA = L0x7fffffead0; Value = 0xb16ed5b7e0f27dac; PC = 0x555556cb80 *)
mov x23 L0x7fffffead0;
(* eor	x20, x7, x8                                 #! PC = 0x555556cb84 *)
xor x20@uint64 x7 x8;
(* eor	x22, x21, x8                                #! PC = 0x555556cb88 *)
xor x22@uint64 x21 x8;
(* eor	x7, x10, x8                                 #! PC = 0x555556cb8c *)
xor x7@uint64 x10 x8;
(* eor	x0, x0, x8                                  #! PC = 0x555556cb90 *)
xor x0@uint64 x0 x8;
(* eor	x28, x28, x30                               #! PC = 0x555556cb94 *)
xor x28@uint64 x28 x30;
(* eor	x21, x14, x16                               #! PC = 0x555556cb98 *)
xor x21@uint64 x14 x16;
(* eor	x17, x17, x8                                #! PC = 0x555556cb9c *)
xor x17@uint64 x17 x8;
(* eor	x8, x24, x27                                #! PC = 0x555556cba0 *)
xor x8@uint64 x24 x27;
(* eor	x18, x23, x30                               #! PC = 0x555556cba4 *)
xor x18@uint64 x23 x30;
(* ldr	x10, [sp, #120]                             #! EA = L0x7fffffeab8; Value = 0x172c8fc4019cf09d; PC = 0x555556cba8 *)
mov x10 L0x7fffffeab8;
(* ror	x21, x21, #28                               #! PC = 0x555556cbac *)
ror x21@uint64 x21 28;
(* ldr	x14, [sp, #128]                             #! EA = L0x7fffffeac0; Value = 0xb54a79dd9432dacc; PC = 0x555556cbb0 *)
mov x14 L0x7fffffeac0;
(* ror	x6, x6, #54                                 #! PC = 0x555556cbb4 *)
ror x6@uint64 x6 54;
(* ldr	x24, [sp, #152]                             #! EA = L0x7fffffead8; Value = 0xc2fbc3ea0d420273; PC = 0x555556cbb8 *)
mov x24 L0x7fffffead8;
(* ror	x22, x22, #49                               #! PC = 0x555556cbbc *)
ror x22@uint64 x22 49;
(* eor	x3, x3, x16                                 #! PC = 0x555556cbc0 *)
xor x3@uint64 x3 x16;
(* ror	x18, x18, #8                                #! PC = 0x555556cbc4 *)
ror x18@uint64 x18 8;
(* eor	x10, x10, x16                               #! PC = 0x555556cbc8 *)
xor x10@uint64 x10 x16;
(* eor	x14, x14, x16                               #! PC = 0x555556cbcc *)
xor x14@uint64 x14 x16;
(* eor	x16, x24, x16                               #! PC = 0x555556cbd0 *)
xor x16@uint64 x24 x16;
(* ror	x24, x28, #43                               #! PC = 0x555556cbd4 *)
ror x24@uint64 x28 43;
(* bic	x25, x18, x22                               #! PC = 0x555556cbd8 *)
not x22_not@uint64 x22;
and x25@uint64 x18 x22_not;
(* ror	x8, x8, #37                                 #! PC = 0x555556cbdc *)
ror x8@uint64 x8 37;
(* eor	x1, x1, x27                                 #! PC = 0x555556cbe0 *)
xor x1@uint64 x1 x27;
(* eor	x4, x4, x27                                 #! PC = 0x555556cbe4 *)
xor x4@uint64 x4 x27;
(* eor	x15, x15, x27                               #! PC = 0x555556cbe8 *)
xor x15@uint64 x15 x27;
(* eor	x2, x2, x27                                 #! PC = 0x555556cbec *)
xor x2@uint64 x2 x27;
(* str	x24, [sp, #104]                             #! EA = L0x7fffffeaa8; PC = 0x555556cbf0 *)
mov L0x7fffffeaa8 x24;
(* ror	x27, x26, #39                               #! PC = 0x555556cbf4 *)
ror x27@uint64 x26 39;
(* bic	x24, x22, x6                                #! PC = 0x555556cbf8 *)
not x6_not@uint64 x6;
and x24@uint64 x22 x6_not;
(* bic	x26, x6, x21                                #! PC = 0x555556cbfc *)
not x21_not@uint64 x21;
and x26@uint64 x6 x21_not;
(* ror	x11, x11, #20                               #! PC = 0x555556cc00 *)
ror x11@uint64 x11 20;
(* eor	x26, x26, x8                                #! PC = 0x555556cc04 *)
xor x26@uint64 x26 x8;
(* ror	x0, x0, #21                                 #! PC = 0x555556cc08 *)
ror x0@uint64 x0 21;
(* eor	x6, x25, x6                                 #! PC = 0x555556cc0c *)
xor x6@uint64 x25 x6;
(* eor	x24, x24, x21                               #! PC = 0x555556cc10 *)
xor x24@uint64 x24 x21;
(* bic	x25, x8, x18                                #! PC = 0x555556cc14 *)
not x18_not@uint64 x18;
and x25@uint64 x8 x18_not;
(* bic	x8, x21, x8                                 #! PC = 0x555556cc18 *)
not x8_not@uint64 x8;
and x8@uint64 x21 x8_not;
(* ldr	x21, [sp, #104]                             #! EA = L0x7fffffeaa8; Value = 0x4bdbc6156603bd96; PC = 0x555556cc1c *)
mov x21 L0x7fffffeaa8;
(* bic	x23, x0, x11                                #! PC = 0x555556cc20 *)
not x11_not@uint64 x11;
and x23@uint64 x0 x11_not;
(* mov	x28, #0x8080                	// #32896      #! PC = 0x555556cc24 *)
mov x28 0x8080@uint64;
(* ror	x7, x7, #58                                 #! PC = 0x555556cc28 *)
ror x7@uint64 x7 58;
(* eor	x23, x23, x16                               #! PC = 0x555556cc2c *)
xor x23@uint64 x23 x16;
(* ror	x4, x4, #50                                 #! PC = 0x555556cc30 *)
ror x4@uint64 x4 50;
(* movk	x28, #0x8000, lsl #48                      #! PC = 0x555556cc34 *)
shl tmp 0x8000@uint64 48;
and x28_m@uint64 x28 0x0000ffffffffffff@uint64;
or x28@uint64 x28_m tmp;
(* ror	x13, x13, #63                               #! PC = 0x555556cc38 *)
ror x13@uint64 x13 63;
(* eor	x23, x23, x28                               #! PC = 0x555556cc3c *)
xor x23@uint64 x23 x28;
(* eor	x22, x25, x22                               #! PC = 0x555556cc40 *)
xor x22@uint64 x25 x22;
(* bic	x28, x27, x7                                #! PC = 0x555556cc44 *)
not x7_not@uint64 x7;
and x28@uint64 x27 x7_not;
(* stp	x24, x22, [sp, #128]                        #! EA = L0x7fffffeac0; PC = 0x555556cc48 *)
mov L0x7fffffeac0 x24;
mov L0x7fffffeac8 x22;
(* bic	x24, x4, x21                                #! PC = 0x555556cc4c *)
not x21_not@uint64 x21;
and x24@uint64 x4 x21_not;
(* eor	x28, x28, x13                               #! PC = 0x555556cc50 *)
xor x28@uint64 x28 x13;
(* eor	x24, x24, x0                                #! PC = 0x555556cc54 *)
xor x24@uint64 x24 x0;
(* eor	x5, x5, x30                                 #! PC = 0x555556cc58 *)
xor x5@uint64 x5 x30;
(* bic	x0, x21, x0                                 #! PC = 0x555556cc5c *)
not x0_not@uint64 x0;
and x0@uint64 x21 x0_not;
(* str	x28, [sp, #120]                             #! EA = L0x7fffffeab8; PC = 0x555556cc60 *)
mov L0x7fffffeab8 x28;
(* eor	x0, x0, x11                                 #! PC = 0x555556cc64 *)
xor x0@uint64 x0 x11;
(* bic	x11, x11, x16                               #! PC = 0x555556cc68 *)
not x16_not@uint64 x16;
and x11@uint64 x11 x16_not;
(* ror	x12, x12, #62                               #! PC = 0x555556cc6c *)
ror x12@uint64 x12 62;
(* ror	x5, x5, #9                                  #! PC = 0x555556cc70 *)
ror x5@uint64 x5 9;
(* ror	x2, x2, #25                                 #! PC = 0x555556cc74 *)
ror x2@uint64 x2 25;
(* ror	x19, x19, #19                               #! PC = 0x555556cc78 *)
ror x19@uint64 x19 19;
(* ror	x20, x20, #3                                #! PC = 0x555556cc7c *)
ror x20@uint64 x20 3;
(* ror	x17, x17, #2                                #! PC = 0x555556cc80 *)
ror x17@uint64 x17 2;
(* eor	x18, x8, x18                                #! PC = 0x555556cc84 *)
xor x18@uint64 x8 x18;
(* ror	x14, x14, #23                               #! PC = 0x555556cc88 *)
ror x14@uint64 x14 23;
(* eor	x11, x11, x4                                #! PC = 0x555556cc8c *)
xor x11@uint64 x11 x4;
(* eor	x9, x9, x30                                 #! PC = 0x555556cc90 *)
xor x9@uint64 x9 x30;
(* str	x6, [sp, #152]                              #! EA = L0x7fffffead8; PC = 0x555556cc94 *)
mov L0x7fffffead8 x6;
(* bic	x21, x2, x5                                 #! PC = 0x555556cc98 *)
not x5_not@uint64 x5;
and x21@uint64 x2 x5_not;
(* ldp	x6, x8, [sp, #120]                          #! EA = L0x7fffffeab8; Value = 0x3c835fd152741145; PC = 0x555556cc9c *)
mov x6 L0x7fffffeab8;
mov x8 L0x7fffffeac0;
(* ror	x1, x1, #44                                 #! PC = 0x555556cca0 *)
ror x1@uint64 x1 44;
(* bic	x25, x12, x14                               #! PC = 0x555556cca4 *)
not x14_not@uint64 x14;
and x25@uint64 x12 x14_not;
(* ror	x10, x10, #61                               #! PC = 0x555556cca8 *)
ror x10@uint64 x10 61;
(* bic	x22, x17, x12                               #! PC = 0x555556ccac *)
not x12_not@uint64 x12;
and x22@uint64 x17 x12_not;
(* str	x11, [sp, #112]                             #! EA = L0x7fffffeab0; PC = 0x555556ccb0 *)
mov L0x7fffffeab0 x11;
(* bic	x11, x20, x19                               #! PC = 0x555556ccb4 *)
not x19_not@uint64 x19;
and x11@uint64 x20 x19_not;
(* eor	x25, x25, x2                                #! PC = 0x555556ccb8 *)
xor x25@uint64 x25 x2;
(* ror	x3, x3, #46                                 #! PC = 0x555556ccbc *)
ror x3@uint64 x3 46;
(* bic	x30, x10, x1                                #! PC = 0x555556ccc0 *)
not x1_not@uint64 x1;
and x30@uint64 x10 x1_not;
(* ror	x9, x9, #36                                 #! PC = 0x555556ccc4 *)
ror x9@uint64 x9 36;
(* bic	x28, x5, x17                                #! PC = 0x555556ccc8 *)
not x17_not@uint64 x17;
and x28@uint64 x5 x17_not;
(* eor	x22, x22, x14                               #! PC = 0x555556cccc *)
xor x22@uint64 x22 x14;
(* eor	x17, x21, x17                               #! PC = 0x555556ccd0 *)
xor x17@uint64 x21 x17;
(* bic	x14, x14, x2                                #! PC = 0x555556ccd4 *)
not x2_not@uint64 x2;
and x14@uint64 x14 x2_not;
(* eor	x2, x11, x10                                #! PC = 0x555556ccd8 *)
xor x2@uint64 x11 x10;
(* bic	x10, x19, x10                               #! PC = 0x555556ccdc *)
not x10_not@uint64 x10;
and x10@uint64 x19 x10_not;
(* ldr	x21, [sp, #104]                             #! EA = L0x7fffffeaa8; Value = 0x4bdbc6156603bd96; PC = 0x555556cce0 *)
mov x21 L0x7fffffeaa8;
(* ror	x15, x15, #56                               #! PC = 0x555556cce4 *)
ror x15@uint64 x15 56;
(* eor	x30, x30, x9                                #! PC = 0x555556cce8 *)
xor x30@uint64 x30 x9;
(* eor	x10, x10, x1                                #! PC = 0x555556ccec *)
xor x10@uint64 x10 x1;
(* bic	x16, x16, x4                                #! PC = 0x555556ccf0 *)
not x4_not@uint64 x4;
and x16@uint64 x16 x4_not;
(* bic	x1, x1, x9                                  #! PC = 0x555556ccf4 *)
not x9_not@uint64 x9;
and x1@uint64 x1 x9_not;
(* bic	x4, x7, x13                                 #! PC = 0x555556ccf8 *)
not x13_not@uint64 x13;
and x4@uint64 x7 x13_not;
(* bic	x9, x9, x20                                 #! PC = 0x555556ccfc *)
not x20_not@uint64 x20;
and x9@uint64 x9 x20_not;
(* bic	x13, x13, x3                                #! PC = 0x555556cd00 *)
not x3_not@uint64 x3;
and x13@uint64 x13 x3_not;
(* mov	x11, x2                                     #! PC = 0x555556cd04 *)
mov x11 x2;
(* eor	x13, x13, x15                               #! PC = 0x555556cd08 *)
xor x13@uint64 x13 x15;
(* eor	x4, x4, x3                                  #! PC = 0x555556cd0c *)
xor x4@uint64 x4 x3;
(* eor	x19, x9, x19                                #! PC = 0x555556cd10 *)
xor x19@uint64 x9 x19;
(* bic	x3, x3, x15                                 #! PC = 0x555556cd14 *)
not x15_not@uint64 x15;
and x3@uint64 x3 x15_not;
(* bic	x2, x15, x27                                #! PC = 0x555556cd18 *)
not x27_not@uint64 x27;
and x2@uint64 x15 x27_not;
(* eor	x16, x16, x21                               #! PC = 0x555556cd1c *)
xor x16@uint64 x16 x21;
(* ldr	x9, [sp, #136]                              #! EA = L0x7fffffeac8; Value = 0xcf545b7627de4ba4; PC = 0x555556cd20 *)
mov x9 L0x7fffffeac8;
(* eor	x28, x28, x12                               #! PC = 0x555556cd24 *)
xor x28@uint64 x28 x12;
(* ldr	x15, [sp, #152]                             #! EA = L0x7fffffead8; Value = 0x4fe1dbf0b3f65ed8; PC = 0x555556cd28 *)
mov x15 L0x7fffffead8;
(* eor	x12, x23, x30                               #! PC = 0x555556cd2c *)
xor x12@uint64 x23 x30;
(* ldr	x21, [sp, #112]                             #! EA = L0x7fffffeab0; Value = 0x9a9fc790cf7d74f9; PC = 0x555556cd30 *)
mov x21 L0x7fffffeab0;
(* eor	x6, x6, x26                                 #! PC = 0x555556cd34 *)
xor x6@uint64 x6 x26;
(* eor	x14, x14, x5                                #! PC = 0x555556cd38 *)
xor x14@uint64 x14 x5;
(* eor	x20, x1, x20                                #! PC = 0x555556cd3c *)
xor x20@uint64 x1 x20;
(* eor	x5, x19, x13                                #! PC = 0x555556cd40 *)
xor x5@uint64 x19 x13;
(* eor	x2, x2, x7                                  #! PC = 0x555556cd44 *)
xor x2@uint64 x2 x7;
(* eor	x1, x15, x25                                #! PC = 0x555556cd48 *)
xor x1@uint64 x15 x25;
(* eor	x7, x24, x11                                #! PC = 0x555556cd4c *)
xor x7@uint64 x24 x11;
(* eor	x12, x6, x12                                #! PC = 0x555556cd50 *)
xor x12@uint64 x6 x12;
(* str	x11, [sp, #152]                             #! EA = L0x7fffffead8; PC = 0x555556cd54 *)
mov L0x7fffffead8 x11;
(* eor	x11, x9, x22                                #! PC = 0x555556cd58 *)
xor x11@uint64 x9 x22;
(* eor	x12, x12, x17                               #! PC = 0x555556cd5c *)
xor x12@uint64 x12 x17;
(* eor	x6, x0, x10                                 #! PC = 0x555556cd60 *)
xor x6@uint64 x0 x10;
(* eor	x9, x3, x27                                 #! PC = 0x555556cd64 *)
xor x9@uint64 x3 x27;
(* eor	x1, x7, x1                                  #! PC = 0x555556cd68 *)
xor x1@uint64 x7 x1;
(* eor	x3, x21, x28                                #! PC = 0x555556cd6c *)
xor x3@uint64 x21 x28;
(* eor	x7, x20, x4                                 #! PC = 0x555556cd70 *)
xor x7@uint64 x20 x4;
(* eor	x11, x5, x11                                #! PC = 0x555556cd74 *)
xor x11@uint64 x5 x11;
(* str	x23, [sp, #144]                             #! EA = L0x7fffffead0; PC = 0x555556cd78 *)
mov L0x7fffffead0 x23;
(* eor	x23, x2, x8                                 #! PC = 0x555556cd7c *)
xor x23@uint64 x2 x8;
(* eor	x1, x1, x9                                  #! PC = 0x555556cd80 *)
xor x1@uint64 x1 x9;
(* eor	x11, x11, x16                               #! PC = 0x555556cd84 *)
xor x11@uint64 x11 x16;
(* eor	x23, x6, x23                                #! PC = 0x555556cd88 *)
xor x23@uint64 x6 x23;
(* eor	x7, x7, x3                                  #! PC = 0x555556cd8c *)
xor x7@uint64 x7 x3;
(* eor	x8, x11, x12, ror #63                       #! PC = 0x555556cd90 *)
ror x12_r x12 63;
xor x8@uint64 x11 x12_r;
(* eor	x3, x7, x18                                 #! PC = 0x555556cd94 *)
xor x3@uint64 x7 x18;
(* eor	x23, x23, x14                               #! PC = 0x555556cd98 *)
xor x23@uint64 x23 x14;
(* eor	x27, x12, x1, ror #63                       #! PC = 0x555556cd9c *)
ror x1_r x1 63;
xor x27@uint64 x12 x1_r;
(* eor	x11, x23, x11, ror #63                      #! PC = 0x555556cda0 *)
ror x11_r x11 63;
xor x11@uint64 x23 x11_r;
(* eor	x12, x28, x8                                #! PC = 0x555556cda4 *)
xor x12@uint64 x28 x8;
(* ldp	x7, x28, [sp, #112]                         #! EA = L0x7fffffeab0; Value = 0x9a9fc790cf7d74f9; PC = 0x555556cda8 *)
mov x7 L0x7fffffeab0;
mov x28 L0x7fffffeab8;
(* eor	x1, x1, x3, ror #63                         #! PC = 0x555556cdac *)
ror x3_r x3 63;
xor x1@uint64 x1 x3_r;
(* eor	x23, x3, x23, ror #63                       #! PC = 0x555556cdb0 *)
ror x23_r x23 63;
xor x23@uint64 x3 x23_r;
(* eor	x6, x15, x11                                #! PC = 0x555556cdb4 *)
xor x6@uint64 x15 x11;
(* ldp	x3, x15, [sp, #128]                         #! EA = L0x7fffffeac0; Value = 0x3865a909b835748d; PC = 0x555556cdb8 *)
mov x3 L0x7fffffeac0;
mov x15 L0x7fffffeac8;
(* eor	x19, x19, x1                                #! PC = 0x555556cdbc *)
xor x19@uint64 x19 x1;
(* ldr	x5, [sp, #144]                              #! EA = L0x7fffffead0; Value = 0xb9d1c7277a855bb7; PC = 0x555556cdc0 *)
mov x5 L0x7fffffead0;
(* eor	x22, x22, x1                                #! PC = 0x555556cdc4 *)
xor x22@uint64 x22 x1;
(* eor	x2, x2, x27                                 #! PC = 0x555556cdc8 *)
xor x2@uint64 x2 x27;
(* eor	x7, x7, x8                                  #! PC = 0x555556cdcc *)
xor x7@uint64 x7 x8;
(* ror	x6, x6, #49                                 #! PC = 0x555556cdd0 *)
ror x6@uint64 x6 49;
(* eor	x21, x3, x27                                #! PC = 0x555556cdd4 *)
xor x21@uint64 x3 x27;
(* ror	x22, x22, #8                                #! PC = 0x555556cdd8 *)
ror x22@uint64 x22 8;
(* eor	x10, x10, x27                               #! PC = 0x555556cddc *)
xor x10@uint64 x10 x27;
(* eor	x0, x0, x27                                 #! PC = 0x555556cde0 *)
xor x0@uint64 x0 x27;
(* eor	x14, x14, x27                               #! PC = 0x555556cde4 *)
xor x14@uint64 x14 x27;
(* eor	x17, x17, x23                               #! PC = 0x555556cde8 *)
xor x17@uint64 x17 x23;
(* eor	x27, x28, x23                               #! PC = 0x555556cdec *)
xor x27@uint64 x28 x23;
(* eor	x26, x26, x23                               #! PC = 0x555556cdf0 *)
xor x26@uint64 x26 x23;
(* eor	x30, x30, x23                               #! PC = 0x555556cdf4 *)
xor x30@uint64 x30 x23;
(* eor	x23, x5, x23                                #! PC = 0x555556cdf8 *)
xor x23@uint64 x5 x23;
(* ror	x5, x19, #9                                 #! PC = 0x555556cdfc *)
ror x5@uint64 x19 9;
(* ror	x2, x2, #54                                 #! PC = 0x555556ce00 *)
ror x2@uint64 x2 54;
(* eor	x3, x25, x11                                #! PC = 0x555556ce04 *)
xor x3@uint64 x25 x11;
(* ror	x7, x7, #37                                 #! PC = 0x555556ce08 *)
ror x7@uint64 x7 37;
(* eor	x25, x15, x1                                #! PC = 0x555556ce0c *)
xor x25@uint64 x15 x1;
(* eor	x9, x9, x11                                 #! PC = 0x555556ce10 *)
xor x9@uint64 x9 x11;
(* str	x5, [sp, #160]                              #! EA = L0x7fffffeae0; PC = 0x555556ce14 *)
mov L0x7fffffeae0 x5;
(* bic	x5, x22, x6                                 #! PC = 0x555556ce18 *)
not x6_not@uint64 x6;
and x5@uint64 x22 x6_not;
(* ldr	x15, [sp, #152]                             #! EA = L0x7fffffead8; Value = 0x6066149886c146ec; PC = 0x555556ce1c *)
mov x15 L0x7fffffead8;
(* ror	x30, x30, #28                               #! PC = 0x555556ce20 *)
ror x30@uint64 x30 28;
(* bic	x28, x7, x22                                #! PC = 0x555556ce24 *)
not x22_not@uint64 x22;
and x28@uint64 x7 x22_not;
(* eor	x5, x5, x2                                  #! PC = 0x555556ce28 *)
xor x5@uint64 x5 x2;
(* eor	x24, x24, x11                               #! PC = 0x555556ce2c *)
xor x24@uint64 x24 x11;
(* eor	x20, x20, x8                                #! PC = 0x555556ce30 *)
xor x20@uint64 x20 x8;
(* eor	x4, x4, x8                                  #! PC = 0x555556ce34 *)
xor x4@uint64 x4 x8;
(* ror	x10, x10, #20                               #! PC = 0x555556ce38 *)
ror x10@uint64 x10 20;
(* ror	x14, x14, #62                               #! PC = 0x555556ce3c *)
ror x14@uint64 x14 62;
(* ror	x9, x9, #21                                 #! PC = 0x555556ce40 *)
ror x9@uint64 x9 21;
(* eor	x16, x16, x1                                #! PC = 0x555556ce44 *)
xor x16@uint64 x16 x1;
(* ror	x26, x26, #23                               #! PC = 0x555556ce48 *)
ror x26@uint64 x26 23;
(* eor	x18, x18, x8                                #! PC = 0x555556ce4c *)
xor x18@uint64 x18 x8;
(* bic	x8, x2, x30                                 #! PC = 0x555556ce50 *)
not x30_not@uint64 x30;
and x8@uint64 x2 x30_not;
(* str	x5, [sp, #128]                              #! EA = L0x7fffffeac0; PC = 0x555556ce54 *)
mov L0x7fffffeac0 x5;
(* bic	x5, x6, x2                                  #! PC = 0x555556ce58 *)
not x2_not@uint64 x2;
and x5@uint64 x6 x2_not;
(* eor	x2, x28, x6                                 #! PC = 0x555556ce5c *)
xor x2@uint64 x28 x6;
(* ror	x24, x24, #2                                #! PC = 0x555556ce60 *)
ror x24@uint64 x24 2;
(* ror	x20, x20, #44                               #! PC = 0x555556ce64 *)
ror x20@uint64 x20 44;
(* ror	x27, x27, #61                               #! PC = 0x555556ce68 *)
ror x27@uint64 x27 61;
(* eor	x11, x15, x11                               #! PC = 0x555556ce6c *)
xor x11@uint64 x15 x11;
(* ror	x4, x4, #25                                 #! PC = 0x555556ce70 *)
ror x4@uint64 x4 25;
(* eor	x15, x13, x1                                #! PC = 0x555556ce74 *)
xor x15@uint64 x13 x1;
(* bic	x1, x9, x10                                 #! PC = 0x555556ce78 *)
not x10_not@uint64 x10;
and x1@uint64 x9 x10_not;
(* str	x2, [sp, #152]                              #! EA = L0x7fffffead8; PC = 0x555556ce7c *)
mov L0x7fffffead8 x2;
(* bic	x2, x14, x26                                #! PC = 0x555556ce80 *)
not x26_not@uint64 x26;
and x2@uint64 x14 x26_not;
(* eor	x28, x2, x4                                 #! PC = 0x555556ce84 *)
xor x28@uint64 x2 x4;
(* ror	x12, x12, #50                               #! PC = 0x555556ce88 *)
ror x12@uint64 x12 50;
(* ror	x16, x16, #36                               #! PC = 0x555556ce8c *)
ror x16@uint64 x16 36;
(* bic	x2, x24, x14                                #! PC = 0x555556ce90 *)
not x14_not@uint64 x14;
and x2@uint64 x24 x14_not;
(* ror	x25, x25, #43                               #! PC = 0x555556ce94 *)
ror x25@uint64 x25 43;
(* eor	x1, x1, x23                                 #! PC = 0x555556ce98 *)
xor x1@uint64 x1 x23;
(* bic	x13, x27, x20                               #! PC = 0x555556ce9c *)
not x20_not@uint64 x20;
and x13@uint64 x27 x20_not;
(* eor	x6, x2, x26                                 #! PC = 0x555556cea0 *)
xor x6@uint64 x2 x26;
(* eor	x8, x8, x7                                  #! PC = 0x555556cea4 *)
xor x8@uint64 x8 x7;
(* eor	x13, x13, x16                               #! PC = 0x555556cea8 *)
xor x13@uint64 x13 x16;
(* mov	w2, #0x80000001            	// #-2147483647 #! PC = 0x555556ceac *)
mov x2 0x80000001@uint64;
(* eor	x2, x1, x2                                  #! PC = 0x555556ceb0 *)
xor x2@uint64 x1 x2;
(* bic	x1, x12, x25                                #! PC = 0x555556ceb4 *)
not x25_not@uint64 x25;
and x1@uint64 x12 x25_not;
(* stp	x13, x8, [sp, #112]                         #! EA = L0x7fffffeab0; PC = 0x555556ceb8 *)
mov L0x7fffffeab0 x13;
mov L0x7fffffeab8 x8;
(* eor	x1, x1, x9                                  #! PC = 0x555556cebc *)
xor x1@uint64 x1 x9;
(* bic	x9, x25, x9                                 #! PC = 0x555556cec0 *)
not x9_not@uint64 x9;
and x9@uint64 x25 x9_not;
(* eor	x9, x9, x10                                 #! PC = 0x555556cec4 *)
xor x9@uint64 x9 x10;
(* bic	x10, x10, x23                               #! PC = 0x555556cec8 *)
not x23_not@uint64 x23;
and x10@uint64 x10 x23_not;
(* str	x1, [sp, #104]                              #! EA = L0x7fffffeaa8; PC = 0x555556cecc *)
mov L0x7fffffeaa8 x1;
(* ror	x21, x21, #19                               #! PC = 0x555556ced0 *)
ror x21@uint64 x21 19;
(* ldr	x1, [sp, #112]                              #! EA = L0x7fffffeab0; Value = 0x9f03a66d66bfd553; PC = 0x555556ced4 *)
mov x1 L0x7fffffeab0;
(* ror	x3, x3, #3                                  #! PC = 0x555556ced8 *)
ror x3@uint64 x3 3;
(* eor	x10, x10, x12                               #! PC = 0x555556cedc *)
xor x10@uint64 x10 x12;
(* mov	x8, x2                                      #! PC = 0x555556cee0 *)
mov x8 x2;
(* stp	x2, x10, [sp, #136]                         #! EA = L0x7fffffeac8; PC = 0x555556cee4 *)
mov L0x7fffffeac8 x2;
mov L0x7fffffead0 x10;
(* bic	x10, x21, x27                               #! PC = 0x555556cee8 *)
not x27_not@uint64 x27;
and x10@uint64 x21 x27_not;
(* bic	x2, x16, x3                                 #! PC = 0x555556ceec *)
not x3_not@uint64 x3;
and x2@uint64 x16 x3_not;
(* bic	x13, x3, x21                                #! PC = 0x555556cef0 *)
not x21_not@uint64 x21;
and x13@uint64 x3 x21_not;
(* eor	x10, x10, x20                               #! PC = 0x555556cef4 *)
xor x10@uint64 x10 x20;
(* eor	x2, x2, x21                                 #! PC = 0x555556cef8 *)
xor x2@uint64 x2 x21;
(* str	x6, [sp, #168]                              #! EA = L0x7fffffeae8; PC = 0x555556cefc *)
mov L0x7fffffeae8 x6;
(* bic	x6, x23, x12                                #! PC = 0x555556cf00 *)
not x12_not@uint64 x12;
and x6@uint64 x23 x12_not;
(* eor	x12, x8, x1                                 #! PC = 0x555556cf04 *)
xor x12@uint64 x8 x1;
(* bic	x1, x20, x16                                #! PC = 0x555556cf08 *)
not x16_not@uint64 x16;
and x1@uint64 x20 x16_not;
(* str	x12, [sp, #176]                             #! EA = L0x7fffffeaf0; PC = 0x555556cf0c *)
mov L0x7fffffeaf0 x12;
(* ldr	x16, [sp, #120]                             #! EA = L0x7fffffeab8; Value = 0x6daae427b4c566f3; PC = 0x555556cf10 *)
mov x16 L0x7fffffeab8;
(* ror	x11, x11, #58                               #! PC = 0x555556cf14 *)
ror x11@uint64 x11 58;
(* ldp	x21, x20, [sp, #152]                        #! EA = L0x7fffffead8; Value = 0x062b98cc9f263de0; PC = 0x555556cf18 *)
mov x21 L0x7fffffead8;
mov x20 L0x7fffffeae0;
(* ror	x15, x15, #39                               #! PC = 0x555556cf1c *)
ror x15@uint64 x15 39;
(* ror	x0, x0, #63                                 #! PC = 0x555556cf20 *)
ror x0@uint64 x0 63;
(* ror	x18, x18, #56                               #! PC = 0x555556cf24 *)
ror x18@uint64 x18 56;
(* bic	x19, x15, x11                               #! PC = 0x555556cf28 *)
not x11_not@uint64 x11;
and x19@uint64 x15 x11_not;
(* ror	x17, x17, #46                               #! PC = 0x555556cf2c *)
ror x17@uint64 x17 46;
(* eor	x19, x19, x0                                #! PC = 0x555556cf30 *)
xor x19@uint64 x19 x0;
(* eor	x13, x13, x27                               #! PC = 0x555556cf34 *)
xor x13@uint64 x13 x27;
(* eor	x1, x1, x3                                  #! PC = 0x555556cf38 *)
xor x1@uint64 x1 x3;
(* bic	x27, x11, x0                                #! PC = 0x555556cf3c *)
not x0_not@uint64 x0;
and x27@uint64 x11 x0_not;
(* bic	x3, x18, x15                                #! PC = 0x555556cf40 *)
not x15_not@uint64 x15;
and x3@uint64 x18 x15_not;
(* bic	x12, x0, x17                                #! PC = 0x555556cf44 *)
not x17_not@uint64 x17;
and x12@uint64 x0 x17_not;
(* bic	x0, x20, x24                                #! PC = 0x555556cf48 *)
not x24_not@uint64 x24;
and x0@uint64 x20 x24_not;
(* eor	x3, x3, x11                                 #! PC = 0x555556cf4c *)
xor x3@uint64 x3 x11;
(* eor	x14, x0, x14                                #! PC = 0x555556cf50 *)
xor x14@uint64 x0 x14;
(* bic	x8, x30, x7                                 #! PC = 0x555556cf54 *)
not x7_not@uint64 x7;
and x8@uint64 x30 x7_not;
(* ldr	x11, [sp, #104]                             #! EA = L0x7fffffeaa8; Value = 0x1ddd783433e0a7e1; PC = 0x555556cf58 *)
mov x11 L0x7fffffeaa8;
(* str	x28, [sp, #160]                             #! EA = L0x7fffffeae0; PC = 0x555556cf5c *)
mov L0x7fffffeae0 x28;
(* ldr	x0, [sp, #128]                              #! EA = L0x7fffffeac0; Value = 0x23f956727636b253; PC = 0x555556cf60 *)
mov x0 L0x7fffffeac0;
(* eor	x27, x27, x17                               #! PC = 0x555556cf64 *)
xor x27@uint64 x27 x17;
(* eor	x6, x6, x25                                 #! PC = 0x555556cf68 *)
xor x6@uint64 x6 x25;
(* eor	x8, x8, x22                                 #! PC = 0x555556cf6c *)
xor x8@uint64 x8 x22;
(* eor	x7, x0, x28                                 #! PC = 0x555556cf70 *)
xor x7@uint64 x0 x28;
(* eor	x28, x11, x13                               #! PC = 0x555556cf74 *)
xor x28@uint64 x11 x13;
(* eor	x28, x28, x7                                #! PC = 0x555556cf78 *)
xor x28@uint64 x28 x7;
(* bic	x17, x17, x18                               #! PC = 0x555556cf7c *)
not x18_not@uint64 x18;
and x17@uint64 x17 x18_not;
(* ldr	x7, [sp, #176]                              #! EA = L0x7fffffeaf0; Value = 0x46f6ca249aaf8f49; PC = 0x555556cf80 *)
mov x7 L0x7fffffeaf0;
(* eor	x0, x17, x15                                #! PC = 0x555556cf84 *)
xor x0@uint64 x17 x15;
(* ldr	x22, [sp, #144]                             #! EA = L0x7fffffead0; Value = 0x30a8edf6ba285130; PC = 0x555556cf88 *)
mov x22 L0x7fffffead0;
(* bic	x26, x26, x4                                #! PC = 0x555556cf8c *)
not x4_not@uint64 x4;
and x26@uint64 x26 x4_not;
(* ldr	x25, [sp, #168]                             #! EA = L0x7fffffeae8; Value = 0x736309eb66feebb8; PC = 0x555556cf90 *)
mov x25 L0x7fffffeae8;
(* eor	x16, x19, x16                               #! PC = 0x555556cf94 *)
xor x16@uint64 x19 x16;
(* bic	x4, x4, x20                                 #! PC = 0x555556cf98 *)
not x20_not@uint64 x20;
and x4@uint64 x4 x20_not;
(* eor	x12, x12, x18                               #! PC = 0x555556cf9c *)
xor x12@uint64 x12 x18;
(* eor	x4, x4, x24                                 #! PC = 0x555556cfa0 *)
xor x4@uint64 x4 x24;
(* eor	x28, x28, x0                                #! PC = 0x555556cfa4 *)
xor x28@uint64 x28 x0;
(* eor	x16, x16, x7                                #! PC = 0x555556cfa8 *)
xor x16@uint64 x16 x7;
(* eor	x18, x22, x14                               #! PC = 0x555556cfac *)
xor x18@uint64 x22 x14;
(* eor	x23, x21, x25                               #! PC = 0x555556cfb0 *)
xor x23@uint64 x21 x25;
(* eor	x16, x16, x4                                #! PC = 0x555556cfb4 *)
xor x16@uint64 x16 x4;
(* eor	x5, x5, x30                                 #! PC = 0x555556cfb8 *)
xor x5@uint64 x5 x30;
(* eor	x17, x1, x27                                #! PC = 0x555556cfbc *)
xor x17@uint64 x1 x27;
(* eor	x11, x2, x12                                #! PC = 0x555556cfc0 *)
xor x11@uint64 x2 x12;
(* eor	x15, x3, x5                                 #! PC = 0x555556cfc4 *)
xor x15@uint64 x3 x5;
(* eor	x11, x11, x23                               #! PC = 0x555556cfc8 *)
xor x11@uint64 x11 x23;
(* eor	x7, x9, x10                                 #! PC = 0x555556cfcc *)
xor x7@uint64 x9 x10;
(* eor	x17, x17, x18                               #! PC = 0x555556cfd0 *)
xor x17@uint64 x17 x18;
(* eor	x18, x16, x28, ror #63                      #! PC = 0x555556cfd4 *)
ror x28_r x28 63;
xor x18@uint64 x16 x28_r;
(* eor	x26, x26, x20                               #! PC = 0x555556cfd8 *)
xor x26@uint64 x26 x20;
(* eor	x30, x9, x18                                #! PC = 0x555556cfdc *)
xor x30@uint64 x9 x18;
(* eor	x20, x11, x6                                #! PC = 0x555556cfe0 *)
xor x20@uint64 x11 x6;
(* eor	x7, x7, x15                                 #! PC = 0x555556cfe4 *)
xor x7@uint64 x7 x15;
(* ldr	x9, [sp, #128]                              #! EA = L0x7fffffeac0; Value = 0x23f956727636b253; PC = 0x555556cfe8 *)
mov x9 L0x7fffffeac0;
(* eor	x7, x7, x26                                 #! PC = 0x555556cfec *)
xor x7@uint64 x7 x26;
(* ldr	x15, [sp, #160]                             #! EA = L0x7fffffeae0; Value = 0x19f3585e39117948; PC = 0x555556cff0 *)
mov x15 L0x7fffffeae0;
(* eor	x11, x7, x20, ror #63                       #! PC = 0x555556cff4 *)
ror x20_r x20 63;
xor x11@uint64 x7 x20_r;
(* eor	x23, x20, x16, ror #63                      #! PC = 0x555556cff8 *)
ror x16_r x16 63;
xor x23@uint64 x20 x16_r;
(* eor	x16, x9, x11                                #! PC = 0x555556cffc *)
xor x16@uint64 x9 x11;
(* eor	x20, x15, x11                               #! PC = 0x555556d000 *)
xor x20@uint64 x15 x11;
(* eor	x17, x17, x8                                #! PC = 0x555556d004 *)
xor x17@uint64 x17 x8;
(* ldp	x9, x15, [sp, #104]                         #! EA = L0x7fffffeaa8; Value = 0x1ddd783433e0a7e1; PC = 0x555556d008 *)
mov x9 L0x7fffffeaa8;
mov x15 L0x7fffffeab0;
(* eor	x28, x28, x17, ror #63                      #! PC = 0x555556d00c *)
ror x17_r x17 63;
xor x28@uint64 x28 x17_r;
(* eor	x7, x17, x7, ror #63                        #! PC = 0x555556d010 *)
ror x7_r x7 63;
xor x7@uint64 x17 x7_r;
(* eor	x14, x14, x23                               #! PC = 0x555556d014 *)
xor x14@uint64 x14 x23;
(* eor	x21, x21, x28                               #! PC = 0x555556d018 *)
xor x21@uint64 x21 x28;
(* eor	x26, x26, x18                               #! PC = 0x555556d01c *)
xor x26@uint64 x26 x18;
(* eor	x10, x10, x18                               #! PC = 0x555556d020 *)
xor x10@uint64 x10 x18;
(* eor	x0, x0, x11                                 #! PC = 0x555556d024 *)
xor x0@uint64 x0 x11;
(* eor	x5, x5, x18                                 #! PC = 0x555556d028 *)
xor x5@uint64 x5 x18;
(* eor	x3, x3, x18                                 #! PC = 0x555556d02c *)
xor x3@uint64 x3 x18;
(* eor	x13, x13, x11                               #! PC = 0x555556d030 *)
xor x13@uint64 x13 x11;
(* eor	x18, x15, x7                                #! PC = 0x555556d034 *)
xor x18@uint64 x15 x7;
(* eor	x11, x9, x11                                #! PC = 0x555556d038 *)
xor x11@uint64 x9 x11;
(* eor	x9, x22, x23                                #! PC = 0x555556d03c *)
xor x9@uint64 x22 x23;
(* ldr	x15, [sp, #120]                             #! EA = L0x7fffffeab8; Value = 0x6daae427b4c566f3; PC = 0x555556d040 *)
mov x15 L0x7fffffeab8;
(* ror	x21, x21, #43                               #! PC = 0x555556d044 *)
ror x21@uint64 x21 43;
(* ldr	x22, [sp, #136]                             #! EA = L0x7fffffeac8; Value = 0xd9f56c49fc105a1a; PC = 0x555556d048 *)
mov x22 L0x7fffffeac8;
(* ror	x14, x14, #50                               #! PC = 0x555556d04c *)
ror x14@uint64 x14 50;
(* ror	x10, x10, #20                               #! PC = 0x555556d050 *)
ror x10@uint64 x10 20;
(* eor	x17, x25, x28                               #! PC = 0x555556d054 *)
xor x17@uint64 x25 x28;
(* ror	x0, x0, #21                                 #! PC = 0x555556d058 *)
ror x0@uint64 x0 21;
(* bic	x25, x14, x21                               #! PC = 0x555556d05c *)
not x21_not@uint64 x21;
and x25@uint64 x14 x21_not;
(* eor	x27, x27, x23                               #! PC = 0x555556d060 *)
xor x27@uint64 x27 x23;
(* eor	x19, x19, x7                                #! PC = 0x555556d064 *)
xor x19@uint64 x19 x7;
(* eor	x6, x6, x28                                 #! PC = 0x555556d068 *)
xor x6@uint64 x6 x28;
(* eor	x12, x12, x28                               #! PC = 0x555556d06c *)
xor x12@uint64 x12 x28;
(* eor	x4, x4, x7                                  #! PC = 0x555556d070 *)
xor x4@uint64 x4 x7;
(* eor	x2, x2, x28                                 #! PC = 0x555556d074 *)
xor x2@uint64 x2 x28;
(* eor	x15, x15, x7                                #! PC = 0x555556d078 *)
xor x15@uint64 x15 x7;
(* bic	x28, x0, x10                                #! PC = 0x555556d07c *)
not x10_not@uint64 x10;
and x28@uint64 x0 x10_not;
(* eor	x7, x22, x7                                 #! PC = 0x555556d080 *)
xor x7@uint64 x22 x7;
(* ror	x22, x26, #62                               #! PC = 0x555556d084 *)
ror x22@uint64 x26 62;
(* bic	x26, x21, x0                                #! PC = 0x555556d088 *)
not x0_not@uint64 x0;
and x26@uint64 x21 x0_not;
(* eor	x0, x25, x0                                 #! PC = 0x555556d08c *)
xor x0@uint64 x25 x0;
(* ldr	x25, [sp, #96]                              #! EA = L0x7fffffeaa0; Value = 0x0000007fffffeb58; PC = 0x555556d090 *)
mov x25 L0x7fffffeaa0;
(* ror	x27, x27, #25                               #! PC = 0x555556d094 *)
ror x27@uint64 x27 25;
(* eor	x28, x28, x7                                #! PC = 0x555556d098 *)
xor x28@uint64 x28 x7;
(* stp	x27, x22, [sp, #104]                        #! EA = L0x7fffffeaa8; PC = 0x555556d09c *)
mov L0x7fffffeaa8 x27;
mov L0x7fffffeab0 x22;
(* mov	x27, #0x8000000080000000    	// #-9223372034707292160#! PC = 0x555556d0a0 *)
mov x27 0x8000000080000000@uint64;
(* movk	x27, #0x8008                               #! PC = 0x555556d0a4 *)
and x27_m@uint64 x27 0xffffffffffff0000@uint64;
or x27@uint64 x27_m 0x8008@uint64;
(* eor	x27, x28, x27                               #! PC = 0x555556d0a8 *)
xor x27@uint64 x28 x27;
(* str	x27, [x25]                                  #! EA = L0x7fffffeb58; PC = 0x555556d0ac *)
mov L0x7fffffeb58 x27;
(* mov	x27, x25                                    #! PC = 0x555556d0b0 *)
mov x27 x25;
(* eor	x1, x1, x23                                 #! PC = 0x555556d0b4 *)
xor x1@uint64 x1 x23;
(* bic	x24, x10, x7                                #! PC = 0x555556d0b8 *)
not x7_not@uint64 x7;
and x24@uint64 x10 x7_not;
(* eor	x8, x8, x23                                 #! PC = 0x555556d0bc *)
xor x8@uint64 x8 x23;
(* eor	x10, x26, x10                               #! PC = 0x555556d0c0 *)
xor x10@uint64 x26 x10;
(* stp	x10, x0, [x27, #8]                          #! EA = L0x7fffffeb60; PC = 0x555556d0c4 *)
mov L0x7fffffeb60 x10;
mov L0x7fffffeb68 x0;
(* mov	x0, x27                                     #! PC = 0x555556d0c8 *)
mov x0 x27;
(* ror	x5, x5, #19                                 #! PC = 0x555556d0cc *)
ror x5@uint64 x5 19;
(* ldr	x27, [sp, #104]                             #! EA = L0x7fffffeaa8; Value = 0xf7e8f529730d2bd6; PC = 0x555556d0d0 *)
mov x27 L0x7fffffeaa8;
(* ror	x30, x30, #63                               #! PC = 0x555556d0d4 *)
ror x30@uint64 x30 63;
(* ror	x1, x1, #44                                 #! PC = 0x555556d0d8 *)
ror x1@uint64 x1 44;
(* ror	x19, x19, #61                               #! PC = 0x555556d0dc *)
ror x19@uint64 x19 61;
(* ror	x13, x13, #58                               #! PC = 0x555556d0e0 *)
ror x13@uint64 x13 58;
(* ror	x3, x3, #54                                 #! PC = 0x555556d0e4 *)
ror x3@uint64 x3 54;
(* ror	x8, x8, #56                                 #! PC = 0x555556d0e8 *)
ror x8@uint64 x8 56;
(* ror	x6, x6, #36                                 #! PC = 0x555556d0ec *)
ror x6@uint64 x6 36;
(* ror	x12, x12, #39                               #! PC = 0x555556d0f0 *)
ror x12@uint64 x12 39;
(* bic	x23, x19, x1                                #! PC = 0x555556d0f4 *)
not x1_not@uint64 x1;
and x23@uint64 x19 x1_not;
(* ror	x18, x18, #28                               #! PC = 0x555556d0f8 *)
ror x18@uint64 x18 28;
(* bic	x22, x5, x19                                #! PC = 0x555556d0fc *)
not x19_not@uint64 x19;
and x22@uint64 x5 x19_not;
(* ror	x15, x15, #23                               #! PC = 0x555556d100 *)
ror x15@uint64 x15 23;
(* bic	x7, x7, x14                                 #! PC = 0x555556d104 *)
not x14_not@uint64 x14;
and x7@uint64 x7 x14_not;
(* eor	x14, x24, x14                               #! PC = 0x555556d108 *)
xor x14@uint64 x24 x14;
(* bic	x24, x13, x30                               #! PC = 0x555556d10c *)
not x30_not@uint64 x30;
and x24@uint64 x13 x30_not;
(* str	x24, [sp, #128]                             #! EA = L0x7fffffeac0; PC = 0x555556d110 *)
mov L0x7fffffeac0 x24;
(* ror	x2, x2, #9                                  #! PC = 0x555556d114 *)
ror x2@uint64 x2 9;
(* bic	x28, x8, x12                                #! PC = 0x555556d118 *)
not x12_not@uint64 x12;
and x28@uint64 x8 x12_not;
(* ror	x17, x17, #8                                #! PC = 0x555556d11c *)
ror x17@uint64 x17 8;
(* bic	x10, x3, x18                                #! PC = 0x555556d120 *)
not x18_not@uint64 x18;
and x10@uint64 x3 x18_not;
(* ror	x11, x11, #2                                #! PC = 0x555556d124 *)
ror x11@uint64 x11 2;
(* eor	x23, x23, x6                                #! PC = 0x555556d128 *)
xor x23@uint64 x23 x6;
(* ror	x9, x9, #37                                 #! PC = 0x555556d12c *)
ror x9@uint64 x9 37;
(* eor	x7, x7, x21                                 #! PC = 0x555556d130 *)
xor x7@uint64 x7 x21;
(* eor	x22, x22, x1                                #! PC = 0x555556d134 *)
xor x22@uint64 x22 x1;
(* stp	x7, x14, [x0, #24]                          #! EA = L0x7fffffeb70; PC = 0x555556d138 *)
mov L0x7fffffeb70 x7;
mov L0x7fffffeb78 x14;
(* ror	x20, x20, #3                                #! PC = 0x555556d13c *)
ror x20@uint64 x20 3;
(* ror	x4, x4, #46                                 #! PC = 0x555556d140 *)
ror x4@uint64 x4 46;
(* stp	x23, x22, [x0, #40]                         #! EA = L0x7fffffeb80; PC = 0x555556d144 *)
mov L0x7fffffeb80 x23;
mov L0x7fffffeb88 x22;
(* bic	x0, x15, x27                                #! PC = 0x555556d148 *)
not x27_not@uint64 x27;
and x0@uint64 x15 x27_not;
(* bic	x22, x27, x2                                #! PC = 0x555556d14c *)
not x2_not@uint64 x2;
and x22@uint64 x27 x2_not;
(* bic	x26, x12, x13                               #! PC = 0x555556d150 *)
not x13_not@uint64 x13;
and x26@uint64 x12 x13_not;
(* bic	x7, x18, x9                                 #! PC = 0x555556d154 *)
not x9_not@uint64 x9;
and x7@uint64 x18 x9_not;
(* eor	x13, x28, x13                               #! PC = 0x555556d158 *)
xor x13@uint64 x28 x13;
(* bic	x14, x9, x17                                #! PC = 0x555556d15c *)
not x17_not@uint64 x17;
and x14@uint64 x9 x17_not;
(* bic	x27, x2, x11                                #! PC = 0x555556d160 *)
not x11_not@uint64 x11;
and x27@uint64 x2 x11_not;
(* eor	x9, x10, x9                                 #! PC = 0x555556d164 *)
xor x9@uint64 x10 x9;
(* eor	x0, x0, x2                                  #! PC = 0x555556d168 *)
xor x0@uint64 x0 x2;
(* bic	x21, x20, x5                                #! PC = 0x555556d16c *)
not x5_not@uint64 x5;
and x21@uint64 x20 x5_not;
(* ldp	x2, x10, [sp, #96]                          #! EA = L0x7fffffeaa0; Value = 0x0000007fffffeb58; PC = 0x555556d170 *)
mov x2 L0x7fffffeaa0;
mov x10 L0x7fffffeaa8;
(* bic	x24, x30, x4                                #! PC = 0x555556d174 *)
not x4_not@uint64 x4;
and x24@uint64 x30 x4_not;
(* ldr	x28, [sp, #128]                             #! EA = L0x7fffffeac0; Value = 0x4038236043740000; PC = 0x555556d178 *)
mov x28 L0x7fffffeac0;
(* str	x24, [sp, #120]                             #! EA = L0x7fffffeab8; PC = 0x555556d17c *)
mov L0x7fffffeab8 x24;
(* eor	x19, x21, x19                               #! PC = 0x555556d180 *)
xor x19@uint64 x21 x19;
(* bic	x24, x4, x8                                 #! PC = 0x555556d184 *)
not x8_not@uint64 x8;
and x24@uint64 x4 x8_not;
(* ldr	x21, [sp, #112]                             #! EA = L0x7fffffeab0; Value = 0x4a52e2539e78a044; PC = 0x555556d188 *)
mov x21 L0x7fffffeab0;
(* eor	x4, x28, x4                                 #! PC = 0x555556d18c *)
xor x4@uint64 x28 x4;
(* ldr	x28, [sp, #120]                             #! EA = L0x7fffffeab8; Value = 0x17c1180028888494; PC = 0x555556d190 *)
mov x28 L0x7fffffeab8;
(* ror	x16, x16, #49                               #! PC = 0x555556d194 *)
ror x16@uint64 x16 49;
(* bic	x1, x1, x6                                  #! PC = 0x555556d198 *)
not x6_not@uint64 x6;
and x1@uint64 x1 x6_not;
(* bic	x6, x6, x20                                 #! PC = 0x555556d19c *)
not x20_not@uint64 x20;
and x6@uint64 x6 x20_not;
(* bic	x25, x16, x3                                #! PC = 0x555556d1a0 *)
not x3_not@uint64 x3;
and x25@uint64 x16 x3_not;
(* eor	x1, x1, x20                                 #! PC = 0x555556d1a4 *)
xor x1@uint64 x1 x20;
(* eor	x6, x6, x5                                  #! PC = 0x555556d1a8 *)
xor x6@uint64 x6 x5;
(* bic	x20, x11, x21                               #! PC = 0x555556d1ac *)
not x21_not@uint64 x21;
and x20@uint64 x11 x21_not;
(* mov	x5, x21                                     #! PC = 0x555556d1b0 *)
mov x5 x21;
(* bic	x23, x17, x16                               #! PC = 0x555556d1b4 *)
not x16_not@uint64 x16;
and x23@uint64 x17 x16_not;
(* bic	x21, x21, x15                               #! PC = 0x555556d1b8 *)
not x15_not@uint64 x15;
and x21@uint64 x21 x15_not;
(* eor	x26, x26, x30                               #! PC = 0x555556d1bc *)
xor x26@uint64 x26 x30;
(* eor	x18, x25, x18                               #! PC = 0x555556d1c0 *)
xor x18@uint64 x25 x18;
(* eor	x3, x23, x3                                 #! PC = 0x555556d1c4 *)
xor x3@uint64 x23 x3;
(* eor	x11, x22, x11                               #! PC = 0x555556d1c8 *)
xor x11@uint64 x22 x11;
(* eor	x15, x20, x15                               #! PC = 0x555556d1cc *)
xor x15@uint64 x20 x15;
(* eor	x27, x27, x5                                #! PC = 0x555556d1d0 *)
xor x27@uint64 x27 x5;
(* eor	x21, x21, x10                               #! PC = 0x555556d1d4 *)
xor x21@uint64 x21 x10;
(* eor	x12, x24, x12                               #! PC = 0x555556d1d8 *)
xor x12@uint64 x24 x12;
(* eor	x8, x28, x8                                 #! PC = 0x555556d1dc *)
xor x8@uint64 x28 x8;
(* eor	x7, x7, x17                                 #! PC = 0x555556d1e0 *)
xor x7@uint64 x7 x17;
(* eor	x14, x14, x16                               #! PC = 0x555556d1e4 *)
xor x14@uint64 x14 x16;
(* stp	x19, x6, [x2, #56]                          #! EA = L0x7fffffeb90; PC = 0x555556d1e8 *)
mov L0x7fffffeb90 x19;
mov L0x7fffffeb98 x6;
(* stp	x1, x26, [x2, #72]                          #! EA = L0x7fffffeba0; PC = 0x555556d1ec *)
mov L0x7fffffeba0 x1;
mov L0x7fffffeba8 x26;
(* stp	x13, x12, [x2, #88]                         #! EA = L0x7fffffebb0; PC = 0x555556d1f0 *)
mov L0x7fffffebb0 x13;
mov L0x7fffffebb8 x12;
(* stp	x8, x4, [x2, #104]                          #! EA = L0x7fffffebc0; PC = 0x555556d1f4 *)
mov L0x7fffffebc0 x8;
mov L0x7fffffebc8 x4;
(* stp	x9, x18, [x2, #120]                         #! EA = L0x7fffffebd0; PC = 0x555556d1f8 *)
mov L0x7fffffebd0 x9;
mov L0x7fffffebd8 x18;
(* stp	x3, x14, [x2, #136]                         #! EA = L0x7fffffebe0; PC = 0x555556d1fc *)
mov L0x7fffffebe0 x3;
mov L0x7fffffebe8 x14;
(* stp	x7, x11, [x2, #152]                         #! EA = L0x7fffffebf0; PC = 0x555556d200 *)
mov L0x7fffffebf0 x7;
mov L0x7fffffebf8 x11;
(* stp	x0, x21, [x2, #168]                         #! EA = L0x7fffffec00; PC = 0x555556d204 *)
mov L0x7fffffec00 x0;
mov L0x7fffffec08 x21;
(* stp	x15, x27, [x2, #184]                        #! EA = L0x7fffffec10; PC = 0x555556d208 *)
mov L0x7fffffec10 x15;
mov L0x7fffffec18 x27;
(* ldp	x21, x22, [sp, #16]                         #! EA = L0x7fffffea50; Value = 0x0000000000000000; PC = 0x555556d20c *)
mov x21 L0x7fffffea50;
mov x22 L0x7fffffea58;
(* ldp	x23, x24, [sp, #32]                         #! EA = L0x7fffffea60; Value = 0x00000004328151f3; PC = 0x555556d210 *)
mov x23 L0x7fffffea60;
mov x24 L0x7fffffea68;
(* ldp	x25, x26, [sp, #48]                         #! EA = L0x7fffffea70; Value = 0x0000000000000000; PC = 0x555556d214 *)
mov x25 L0x7fffffea70;
mov x26 L0x7fffffea78;
(* ldp	x27, x28, [sp, #64]                         #! EA = L0x7fffffea80; Value = 0x0000000000000000; PC = 0x555556d218 *)
mov x27 L0x7fffffea80;
mov x28 L0x7fffffea88;
(* ldr	x30, [sp, #80]                              #! EA = L0x7fffffea90; Value = 0x000000555557dff4; PC = 0x555556d21c *)
mov x30 L0x7fffffea90;
(* ldp	x19, x20, [sp], #192                        #! EA = L0x7fffffea40; Value = 0x7fffffffffffffff; PC = 0x555556d220 *)
mov x19 L0x7fffffea40;
mov x20 L0x7fffffea48;
(* #! <- SP = 0x7fffffeb00 *)
#! 0x7fffffeb00 = 0x7fffffeb00;
(* #ret                                            #! PC = 0x555556d224 *)
#ret                                            #! 0x555556d224 = 0x555556d224;

(* ===== Outputs ===== *)

mov a00 L0x7fffffeb58;
mov a01 L0x7fffffeb60;
mov a02 L0x7fffffeb68;
mov a03 L0x7fffffeb70;
mov a04 L0x7fffffeb78;
mov a05 L0x7fffffeb80;
mov a06 L0x7fffffeb88;
mov a07 L0x7fffffeb90;
mov a08 L0x7fffffeb98;
mov a09 L0x7fffffeba0;
mov a10 L0x7fffffeba8;
mov a11 L0x7fffffebb0;
mov a12 L0x7fffffebb8;
mov a13 L0x7fffffebc0;
mov a14 L0x7fffffebc8;
mov a15 L0x7fffffebd0;
mov a16 L0x7fffffebd8;
mov a17 L0x7fffffebe0;
mov a18 L0x7fffffebe8;
mov a19 L0x7fffffebf0;
mov a20 L0x7fffffebf8;
mov a21 L0x7fffffec00;
mov a22 L0x7fffffec08;
mov a23 L0x7fffffec10;
mov a24 L0x7fffffec18;

{
  true
  &&
  true
}

