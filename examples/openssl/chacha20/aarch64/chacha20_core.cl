proc main (uint32 A0, uint32 A1, uint32 A2, uint32 A3,
           uint32 A4, uint32 A5, uint32 A6, uint32 A7,
           uint32 A8, uint32 A9, uint32 Aa, uint32 Ab,
           uint32 Ac, uint32 Ad, uint32 Ae, uint32 Af) =
{
  true
  &&
  true
}

mov L0x5555550b60 A0; mov L0x5555550b64 A1;
mov L0x5555550b68 A2; mov L0x5555550b6c A3;
mov L0x5555565050 A4; mov L0x5555565054 A5;
mov L0x5555565058 A6; mov L0x555556505c A7;
mov L0x5555565060 A8; mov L0x5555565064 A9;
mov L0x5555565068 Aa; mov L0x555556506c Ab;
mov L0x5555565070 Ac; mov L0x5555565074 Ad;
mov L0x5555565078 Ae; mov L0x555556507c Af;

(* ldp	x22, x23, [x5]                              #! EA = L0x5555550b60; Value = 0x3320646e61707865; PC = 0x5555550bfc *)
mov w22 L0x5555550b60; mov Hw22 L0x5555550b64;
mov w23 L0x5555550b68; mov Hw23 L0x5555550b6c;
(* ldp	x24, x25, [x3]                              #! EA = L0x5555565050; Value = 0x0000000100000000; PC = 0x5555550c00 *)
mov w24 L0x5555565050; mov Hw24 L0x5555565054;
mov w25 L0x5555565058; mov Hw25 L0x555556505c;
(* ldp	x26, x27, [x3, #16]                         #! EA = L0x5555565060; Value = 0x0000000500000004; PC = 0x5555550c04 *)
mov w26 L0x5555565060; mov Hw26 L0x5555565064;
mov w27 L0x5555565068; mov Hw27 L0x555556506c;
(* ldp	x28, x30, [x4]                              #! EA = L0x5555565070; Value = 0x0000001000000000; PC = 0x5555550c08 *)
mov w28 L0x5555565070; mov Hw28 L0x5555565074;
mov w30 L0x5555565078; mov Hw30 L0x555556507c;
(* mov	w5, w22                                     #! PC = 0x5555550c0c *)
mov w5 w22;
(* lsr	x6, x22, #32                                #! PC = 0x5555550c10 *)
mov w6 Hw22;
(* mov	w7, w23                                     #! PC = 0x5555550c14 *)
mov w7 w23;
(* lsr	x8, x23, #32                                #! PC = 0x5555550c18 *)
mov w8 Hw23;
(* mov	w9, w24                                     #! PC = 0x5555550c1c *)
mov w9 w24;
(* lsr	x10, x24, #32                               #! PC = 0x5555550c20 *)
mov w10 Hw24;
(* mov	w11, w25                                    #! PC = 0x5555550c24 *)
mov w11 w25;
(* lsr	x12, x25, #32                               #! PC = 0x5555550c28 *)
mov w12 Hw25;
(* mov	w13, w26                                    #! PC = 0x5555550c2c *)
mov w13 w26;
(* lsr	x14, x26, #32                               #! PC = 0x5555550c30 *)
mov w14 Hw26;
(* mov	w15, w27                                    #! PC = 0x5555550c34 *)
mov w15 w27;
(* lsr	x16, x27, #32                               #! PC = 0x5555550c38 *)
mov w16 Hw27;
(* mov	w17, w28                                    #! PC = 0x5555550c3c *)
mov w17 w28;
(* lsr	x19, x28, #32                               #! PC = 0x5555550c40 *)
mov w19 Hw28;
(* mov	w20, w30                                    #! PC = 0x5555550c44 *)
mov w20 w30;
(* lsr	x21, x30, #32                               #! PC = 0x5555550c48 *)
mov w21 Hw30;
(* mov	x4, #0xa                   	// #10          #! PC = 0x5555550c4c *)
#mov	x4, #0xa                   	// #10          #! 0x5555550c4c = 0x5555550c4c;
(* subs	x2, x2, #0x40                              #! PC = 0x5555550c50 *)
(* subs x2, x2, 0x40 *)
nop;
(* sub	x4, x4, #0x1                                #! PC = 0x5555550c54 *)
(* sub x4, x4, 0x1 *)
nop;
(* add	w5, w5, w9                                  #! PC = 0x5555550c58 *)
adds dc w5 w5 w9;
(* add	w6, w6, w10                                 #! PC = 0x5555550c5c *)
adds dc w6 w6 w10;
(* add	w7, w7, w11                                 #! PC = 0x5555550c60 *)
adds dc w7 w7 w11;
(* add	w8, w8, w12                                 #! PC = 0x5555550c64 *)
adds dc w8 w8 w12;
(* eor	w17, w17, w5                                #! PC = 0x5555550c68 *)
xor w17@uint32 w17 w5;
(* eor	w19, w19, w6                                #! PC = 0x5555550c6c *)
xor w19@uint32 w19 w6;
(* eor	w20, w20, w7                                #! PC = 0x5555550c70 *)
xor w20@uint32 w20 w7;
(* eor	w21, w21, w8                                #! PC = 0x5555550c74 *)
xor w21@uint32 w21 w8;
(* ror	w17, w17, #16                               #! PC = 0x5555550c78 *)
ror w17@uint32 w17 16;
(* ror	w19, w19, #16                               #! PC = 0x5555550c7c *)
ror w19@uint32 w19 16;
(* ror	w20, w20, #16                               #! PC = 0x5555550c80 *)
ror w20@uint32 w20 16;
(* ror	w21, w21, #16                               #! PC = 0x5555550c84 *)
ror w21@uint32 w21 16;
(* add	w13, w13, w17                               #! PC = 0x5555550c88 *)
adds dc w13 w13 w17;
(* add	w14, w14, w19                               #! PC = 0x5555550c8c *)
adds dc w14 w14 w19;
(* add	w15, w15, w20                               #! PC = 0x5555550c90 *)
adds dc w15 w15 w20;
(* add	w16, w16, w21                               #! PC = 0x5555550c94 *)
adds dc w16 w16 w21;
(* eor	w9, w9, w13                                 #! PC = 0x5555550c98 *)
xor w9@uint32 w9 w13;
(* eor	w10, w10, w14                               #! PC = 0x5555550c9c *)
xor w10@uint32 w10 w14;
(* eor	w11, w11, w15                               #! PC = 0x5555550ca0 *)
xor w11@uint32 w11 w15;
(* eor	w12, w12, w16                               #! PC = 0x5555550ca4 *)
xor w12@uint32 w12 w16;
(* ror	w9, w9, #20                                 #! PC = 0x5555550ca8 *)
ror w9@uint32 w9 20;
(* ror	w10, w10, #20                               #! PC = 0x5555550cac *)
ror w10@uint32 w10 20;
(* ror	w11, w11, #20                               #! PC = 0x5555550cb0 *)
ror w11@uint32 w11 20;
(* ror	w12, w12, #20                               #! PC = 0x5555550cb4 *)
ror w12@uint32 w12 20;
(* add	w5, w5, w9                                  #! PC = 0x5555550cb8 *)
adds dc w5 w5 w9;
(* add	w6, w6, w10                                 #! PC = 0x5555550cbc *)
adds dc w6 w6 w10;
(* add	w7, w7, w11                                 #! PC = 0x5555550cc0 *)
adds dc w7 w7 w11;
(* add	w8, w8, w12                                 #! PC = 0x5555550cc4 *)
adds dc w8 w8 w12;
(* eor	w17, w17, w5                                #! PC = 0x5555550cc8 *)
xor w17@uint32 w17 w5;
(* eor	w19, w19, w6                                #! PC = 0x5555550ccc *)
xor w19@uint32 w19 w6;
(* eor	w20, w20, w7                                #! PC = 0x5555550cd0 *)
xor w20@uint32 w20 w7;
(* eor	w21, w21, w8                                #! PC = 0x5555550cd4 *)
xor w21@uint32 w21 w8;
(* ror	w17, w17, #24                               #! PC = 0x5555550cd8 *)
ror w17@uint32 w17 24;
(* ror	w19, w19, #24                               #! PC = 0x5555550cdc *)
ror w19@uint32 w19 24;
(* ror	w20, w20, #24                               #! PC = 0x5555550ce0 *)
ror w20@uint32 w20 24;
(* ror	w21, w21, #24                               #! PC = 0x5555550ce4 *)
ror w21@uint32 w21 24;
(* add	w13, w13, w17                               #! PC = 0x5555550ce8 *)
adds dc w13 w13 w17;
(* add	w14, w14, w19                               #! PC = 0x5555550cec *)
adds dc w14 w14 w19;
(* add	w15, w15, w20                               #! PC = 0x5555550cf0 *)
adds dc w15 w15 w20;
(* add	w16, w16, w21                               #! PC = 0x5555550cf4 *)
adds dc w16 w16 w21;
(* eor	w9, w9, w13                                 #! PC = 0x5555550cf8 *)
xor w9@uint32 w9 w13;
(* eor	w10, w10, w14                               #! PC = 0x5555550cfc *)
xor w10@uint32 w10 w14;
(* eor	w11, w11, w15                               #! PC = 0x5555550d00 *)
xor w11@uint32 w11 w15;
(* eor	w12, w12, w16                               #! PC = 0x5555550d04 *)
xor w12@uint32 w12 w16;
(* ror	w9, w9, #25                                 #! PC = 0x5555550d08 *)
ror w9@uint32 w9 25;
(* ror	w10, w10, #25                               #! PC = 0x5555550d0c *)
ror w10@uint32 w10 25;
(* ror	w11, w11, #25                               #! PC = 0x5555550d10 *)
ror w11@uint32 w11 25;
(* ror	w12, w12, #25                               #! PC = 0x5555550d14 *)
ror w12@uint32 w12 25;
(* add	w5, w5, w10                                 #! PC = 0x5555550d18 *)
adds dc w5 w5 w10;
(* add	w6, w6, w11                                 #! PC = 0x5555550d1c *)
adds dc w6 w6 w11;
(* add	w7, w7, w12                                 #! PC = 0x5555550d20 *)
adds dc w7 w7 w12;
(* add	w8, w8, w9                                  #! PC = 0x5555550d24 *)
adds dc w8 w8 w9;
(* eor	w21, w21, w5                                #! PC = 0x5555550d28 *)
xor w21@uint32 w21 w5;
(* eor	w17, w17, w6                                #! PC = 0x5555550d2c *)
xor w17@uint32 w17 w6;
(* eor	w19, w19, w7                                #! PC = 0x5555550d30 *)
xor w19@uint32 w19 w7;
(* eor	w20, w20, w8                                #! PC = 0x5555550d34 *)
xor w20@uint32 w20 w8;
(* ror	w21, w21, #16                               #! PC = 0x5555550d38 *)
ror w21@uint32 w21 16;
(* ror	w17, w17, #16                               #! PC = 0x5555550d3c *)
ror w17@uint32 w17 16;
(* ror	w19, w19, #16                               #! PC = 0x5555550d40 *)
ror w19@uint32 w19 16;
(* ror	w20, w20, #16                               #! PC = 0x5555550d44 *)
ror w20@uint32 w20 16;
(* add	w15, w15, w21                               #! PC = 0x5555550d48 *)
adds dc w15 w15 w21;
(* add	w16, w16, w17                               #! PC = 0x5555550d4c *)
adds dc w16 w16 w17;
(* add	w13, w13, w19                               #! PC = 0x5555550d50 *)
adds dc w13 w13 w19;
(* add	w14, w14, w20                               #! PC = 0x5555550d54 *)
adds dc w14 w14 w20;
(* eor	w10, w10, w15                               #! PC = 0x5555550d58 *)
xor w10@uint32 w10 w15;
(* eor	w11, w11, w16                               #! PC = 0x5555550d5c *)
xor w11@uint32 w11 w16;
(* eor	w12, w12, w13                               #! PC = 0x5555550d60 *)
xor w12@uint32 w12 w13;
(* eor	w9, w9, w14                                 #! PC = 0x5555550d64 *)
xor w9@uint32 w9 w14;
(* ror	w10, w10, #20                               #! PC = 0x5555550d68 *)
ror w10@uint32 w10 20;
(* ror	w11, w11, #20                               #! PC = 0x5555550d6c *)
ror w11@uint32 w11 20;
(* ror	w12, w12, #20                               #! PC = 0x5555550d70 *)
ror w12@uint32 w12 20;
(* ror	w9, w9, #20                                 #! PC = 0x5555550d74 *)
ror w9@uint32 w9 20;
(* add	w5, w5, w10                                 #! PC = 0x5555550d78 *)
adds dc w5 w5 w10;
(* add	w6, w6, w11                                 #! PC = 0x5555550d7c *)
adds dc w6 w6 w11;
(* add	w7, w7, w12                                 #! PC = 0x5555550d80 *)
adds dc w7 w7 w12;
(* add	w8, w8, w9                                  #! PC = 0x5555550d84 *)
adds dc w8 w8 w9;
(* eor	w21, w21, w5                                #! PC = 0x5555550d88 *)
xor w21@uint32 w21 w5;
(* eor	w17, w17, w6                                #! PC = 0x5555550d8c *)
xor w17@uint32 w17 w6;
(* eor	w19, w19, w7                                #! PC = 0x5555550d90 *)
xor w19@uint32 w19 w7;
(* eor	w20, w20, w8                                #! PC = 0x5555550d94 *)
xor w20@uint32 w20 w8;
(* ror	w21, w21, #24                               #! PC = 0x5555550d98 *)
ror w21@uint32 w21 24;
(* ror	w17, w17, #24                               #! PC = 0x5555550d9c *)
ror w17@uint32 w17 24;
(* ror	w19, w19, #24                               #! PC = 0x5555550da0 *)
ror w19@uint32 w19 24;
(* ror	w20, w20, #24                               #! PC = 0x5555550da4 *)
ror w20@uint32 w20 24;
(* add	w15, w15, w21                               #! PC = 0x5555550da8 *)
adds dc w15 w15 w21;
(* add	w16, w16, w17                               #! PC = 0x5555550dac *)
adds dc w16 w16 w17;
(* add	w13, w13, w19                               #! PC = 0x5555550db0 *)
adds dc w13 w13 w19;
(* add	w14, w14, w20                               #! PC = 0x5555550db4 *)
adds dc w14 w14 w20;
(* eor	w10, w10, w15                               #! PC = 0x5555550db8 *)
xor w10@uint32 w10 w15;
(* eor	w11, w11, w16                               #! PC = 0x5555550dbc *)
xor w11@uint32 w11 w16;
(* eor	w12, w12, w13                               #! PC = 0x5555550dc0 *)
xor w12@uint32 w12 w13;
(* eor	w9, w9, w14                                 #! PC = 0x5555550dc4 *)
xor w9@uint32 w9 w14;
(* ror	w10, w10, #25                               #! PC = 0x5555550dc8 *)
ror w10@uint32 w10 25;
(* ror	w11, w11, #25                               #! PC = 0x5555550dcc *)
ror w11@uint32 w11 25;
(* ror	w12, w12, #25                               #! PC = 0x5555550dd0 *)
ror w12@uint32 w12 25;
(* ror	w9, w9, #25                                 #! PC = 0x5555550dd4 *)
ror w9@uint32 w9 25;
(* #cbnz	x4, 0x5555550c54 <ChaCha20_ctr32_dflt+148>#! PC = 0x5555550dd8 *)
#cbnz	x4, 0x5555550c54 <ChaCha20_ctr32_dflt+148>#! 0x5555550dd8 = 0x5555550dd8;
(* sub	x4, x4, #0x1                                #! PC = 0x5555550c54 *)
(* sub x4, x4, 0x1 *)
nop;
(* add	w5, w5, w9                                  #! PC = 0x5555550c58 *)
adds dc w5 w5 w9;
(* add	w6, w6, w10                                 #! PC = 0x5555550c5c *)
adds dc w6 w6 w10;
(* add	w7, w7, w11                                 #! PC = 0x5555550c60 *)
adds dc w7 w7 w11;
(* add	w8, w8, w12                                 #! PC = 0x5555550c64 *)
adds dc w8 w8 w12;
(* eor	w17, w17, w5                                #! PC = 0x5555550c68 *)
xor w17@uint32 w17 w5;
(* eor	w19, w19, w6                                #! PC = 0x5555550c6c *)
xor w19@uint32 w19 w6;
(* eor	w20, w20, w7                                #! PC = 0x5555550c70 *)
xor w20@uint32 w20 w7;
(* eor	w21, w21, w8                                #! PC = 0x5555550c74 *)
xor w21@uint32 w21 w8;
(* ror	w17, w17, #16                               #! PC = 0x5555550c78 *)
ror w17@uint32 w17 16;
(* ror	w19, w19, #16                               #! PC = 0x5555550c7c *)
ror w19@uint32 w19 16;
(* ror	w20, w20, #16                               #! PC = 0x5555550c80 *)
ror w20@uint32 w20 16;
(* ror	w21, w21, #16                               #! PC = 0x5555550c84 *)
ror w21@uint32 w21 16;
(* add	w13, w13, w17                               #! PC = 0x5555550c88 *)
adds dc w13 w13 w17;
(* add	w14, w14, w19                               #! PC = 0x5555550c8c *)
adds dc w14 w14 w19;
(* add	w15, w15, w20                               #! PC = 0x5555550c90 *)
adds dc w15 w15 w20;
(* add	w16, w16, w21                               #! PC = 0x5555550c94 *)
adds dc w16 w16 w21;
(* eor	w9, w9, w13                                 #! PC = 0x5555550c98 *)
xor w9@uint32 w9 w13;
(* eor	w10, w10, w14                               #! PC = 0x5555550c9c *)
xor w10@uint32 w10 w14;
(* eor	w11, w11, w15                               #! PC = 0x5555550ca0 *)
xor w11@uint32 w11 w15;
(* eor	w12, w12, w16                               #! PC = 0x5555550ca4 *)
xor w12@uint32 w12 w16;
(* ror	w9, w9, #20                                 #! PC = 0x5555550ca8 *)
ror w9@uint32 w9 20;
(* ror	w10, w10, #20                               #! PC = 0x5555550cac *)
ror w10@uint32 w10 20;
(* ror	w11, w11, #20                               #! PC = 0x5555550cb0 *)
ror w11@uint32 w11 20;
(* ror	w12, w12, #20                               #! PC = 0x5555550cb4 *)
ror w12@uint32 w12 20;
(* add	w5, w5, w9                                  #! PC = 0x5555550cb8 *)
adds dc w5 w5 w9;
(* add	w6, w6, w10                                 #! PC = 0x5555550cbc *)
adds dc w6 w6 w10;
(* add	w7, w7, w11                                 #! PC = 0x5555550cc0 *)
adds dc w7 w7 w11;
(* add	w8, w8, w12                                 #! PC = 0x5555550cc4 *)
adds dc w8 w8 w12;
(* eor	w17, w17, w5                                #! PC = 0x5555550cc8 *)
xor w17@uint32 w17 w5;
(* eor	w19, w19, w6                                #! PC = 0x5555550ccc *)
xor w19@uint32 w19 w6;
(* eor	w20, w20, w7                                #! PC = 0x5555550cd0 *)
xor w20@uint32 w20 w7;
(* eor	w21, w21, w8                                #! PC = 0x5555550cd4 *)
xor w21@uint32 w21 w8;
(* ror	w17, w17, #24                               #! PC = 0x5555550cd8 *)
ror w17@uint32 w17 24;
(* ror	w19, w19, #24                               #! PC = 0x5555550cdc *)
ror w19@uint32 w19 24;
(* ror	w20, w20, #24                               #! PC = 0x5555550ce0 *)
ror w20@uint32 w20 24;
(* ror	w21, w21, #24                               #! PC = 0x5555550ce4 *)
ror w21@uint32 w21 24;
(* add	w13, w13, w17                               #! PC = 0x5555550ce8 *)
adds dc w13 w13 w17;
(* add	w14, w14, w19                               #! PC = 0x5555550cec *)
adds dc w14 w14 w19;
(* add	w15, w15, w20                               #! PC = 0x5555550cf0 *)
adds dc w15 w15 w20;
(* add	w16, w16, w21                               #! PC = 0x5555550cf4 *)
adds dc w16 w16 w21;
(* eor	w9, w9, w13                                 #! PC = 0x5555550cf8 *)
xor w9@uint32 w9 w13;
(* eor	w10, w10, w14                               #! PC = 0x5555550cfc *)
xor w10@uint32 w10 w14;
(* eor	w11, w11, w15                               #! PC = 0x5555550d00 *)
xor w11@uint32 w11 w15;
(* eor	w12, w12, w16                               #! PC = 0x5555550d04 *)
xor w12@uint32 w12 w16;
(* ror	w9, w9, #25                                 #! PC = 0x5555550d08 *)
ror w9@uint32 w9 25;
(* ror	w10, w10, #25                               #! PC = 0x5555550d0c *)
ror w10@uint32 w10 25;
(* ror	w11, w11, #25                               #! PC = 0x5555550d10 *)
ror w11@uint32 w11 25;
(* ror	w12, w12, #25                               #! PC = 0x5555550d14 *)
ror w12@uint32 w12 25;
(* add	w5, w5, w10                                 #! PC = 0x5555550d18 *)
adds dc w5 w5 w10;
(* add	w6, w6, w11                                 #! PC = 0x5555550d1c *)
adds dc w6 w6 w11;
(* add	w7, w7, w12                                 #! PC = 0x5555550d20 *)
adds dc w7 w7 w12;
(* add	w8, w8, w9                                  #! PC = 0x5555550d24 *)
adds dc w8 w8 w9;
(* eor	w21, w21, w5                                #! PC = 0x5555550d28 *)
xor w21@uint32 w21 w5;
(* eor	w17, w17, w6                                #! PC = 0x5555550d2c *)
xor w17@uint32 w17 w6;
(* eor	w19, w19, w7                                #! PC = 0x5555550d30 *)
xor w19@uint32 w19 w7;
(* eor	w20, w20, w8                                #! PC = 0x5555550d34 *)
xor w20@uint32 w20 w8;
(* ror	w21, w21, #16                               #! PC = 0x5555550d38 *)
ror w21@uint32 w21 16;
(* ror	w17, w17, #16                               #! PC = 0x5555550d3c *)
ror w17@uint32 w17 16;
(* ror	w19, w19, #16                               #! PC = 0x5555550d40 *)
ror w19@uint32 w19 16;
(* ror	w20, w20, #16                               #! PC = 0x5555550d44 *)
ror w20@uint32 w20 16;
(* add	w15, w15, w21                               #! PC = 0x5555550d48 *)
adds dc w15 w15 w21;
(* add	w16, w16, w17                               #! PC = 0x5555550d4c *)
adds dc w16 w16 w17;
(* add	w13, w13, w19                               #! PC = 0x5555550d50 *)
adds dc w13 w13 w19;
(* add	w14, w14, w20                               #! PC = 0x5555550d54 *)
adds dc w14 w14 w20;
(* eor	w10, w10, w15                               #! PC = 0x5555550d58 *)
xor w10@uint32 w10 w15;
(* eor	w11, w11, w16                               #! PC = 0x5555550d5c *)
xor w11@uint32 w11 w16;
(* eor	w12, w12, w13                               #! PC = 0x5555550d60 *)
xor w12@uint32 w12 w13;
(* eor	w9, w9, w14                                 #! PC = 0x5555550d64 *)
xor w9@uint32 w9 w14;
(* ror	w10, w10, #20                               #! PC = 0x5555550d68 *)
ror w10@uint32 w10 20;
(* ror	w11, w11, #20                               #! PC = 0x5555550d6c *)
ror w11@uint32 w11 20;
(* ror	w12, w12, #20                               #! PC = 0x5555550d70 *)
ror w12@uint32 w12 20;
(* ror	w9, w9, #20                                 #! PC = 0x5555550d74 *)
ror w9@uint32 w9 20;
(* add	w5, w5, w10                                 #! PC = 0x5555550d78 *)
adds dc w5 w5 w10;
(* add	w6, w6, w11                                 #! PC = 0x5555550d7c *)
adds dc w6 w6 w11;
(* add	w7, w7, w12                                 #! PC = 0x5555550d80 *)
adds dc w7 w7 w12;
(* add	w8, w8, w9                                  #! PC = 0x5555550d84 *)
adds dc w8 w8 w9;
(* eor	w21, w21, w5                                #! PC = 0x5555550d88 *)
xor w21@uint32 w21 w5;
(* eor	w17, w17, w6                                #! PC = 0x5555550d8c *)
xor w17@uint32 w17 w6;
(* eor	w19, w19, w7                                #! PC = 0x5555550d90 *)
xor w19@uint32 w19 w7;
(* eor	w20, w20, w8                                #! PC = 0x5555550d94 *)
xor w20@uint32 w20 w8;
(* ror	w21, w21, #24                               #! PC = 0x5555550d98 *)
ror w21@uint32 w21 24;
(* ror	w17, w17, #24                               #! PC = 0x5555550d9c *)
ror w17@uint32 w17 24;
(* ror	w19, w19, #24                               #! PC = 0x5555550da0 *)
ror w19@uint32 w19 24;
(* ror	w20, w20, #24                               #! PC = 0x5555550da4 *)
ror w20@uint32 w20 24;
(* add	w15, w15, w21                               #! PC = 0x5555550da8 *)
adds dc w15 w15 w21;
(* add	w16, w16, w17                               #! PC = 0x5555550dac *)
adds dc w16 w16 w17;
(* add	w13, w13, w19                               #! PC = 0x5555550db0 *)
adds dc w13 w13 w19;
(* add	w14, w14, w20                               #! PC = 0x5555550db4 *)
adds dc w14 w14 w20;
(* eor	w10, w10, w15                               #! PC = 0x5555550db8 *)
xor w10@uint32 w10 w15;
(* eor	w11, w11, w16                               #! PC = 0x5555550dbc *)
xor w11@uint32 w11 w16;
(* eor	w12, w12, w13                               #! PC = 0x5555550dc0 *)
xor w12@uint32 w12 w13;
(* eor	w9, w9, w14                                 #! PC = 0x5555550dc4 *)
xor w9@uint32 w9 w14;
(* ror	w10, w10, #25                               #! PC = 0x5555550dc8 *)
ror w10@uint32 w10 25;
(* ror	w11, w11, #25                               #! PC = 0x5555550dcc *)
ror w11@uint32 w11 25;
(* ror	w12, w12, #25                               #! PC = 0x5555550dd0 *)
ror w12@uint32 w12 25;
(* ror	w9, w9, #25                                 #! PC = 0x5555550dd4 *)
ror w9@uint32 w9 25;
(* #cbnz	x4, 0x5555550c54 <ChaCha20_ctr32_dflt+148>#! PC = 0x5555550dd8 *)
#cbnz	x4, 0x5555550c54 <ChaCha20_ctr32_dflt+148>#! 0x5555550dd8 = 0x5555550dd8;
(* sub	x4, x4, #0x1                                #! PC = 0x5555550c54 *)
(* sub x4, x4, 0x1 *)
nop;
(* add	w5, w5, w9                                  #! PC = 0x5555550c58 *)
adds dc w5 w5 w9;
(* add	w6, w6, w10                                 #! PC = 0x5555550c5c *)
adds dc w6 w6 w10;
(* add	w7, w7, w11                                 #! PC = 0x5555550c60 *)
adds dc w7 w7 w11;
(* add	w8, w8, w12                                 #! PC = 0x5555550c64 *)
adds dc w8 w8 w12;
(* eor	w17, w17, w5                                #! PC = 0x5555550c68 *)
xor w17@uint32 w17 w5;
(* eor	w19, w19, w6                                #! PC = 0x5555550c6c *)
xor w19@uint32 w19 w6;
(* eor	w20, w20, w7                                #! PC = 0x5555550c70 *)
xor w20@uint32 w20 w7;
(* eor	w21, w21, w8                                #! PC = 0x5555550c74 *)
xor w21@uint32 w21 w8;
(* ror	w17, w17, #16                               #! PC = 0x5555550c78 *)
ror w17@uint32 w17 16;
(* ror	w19, w19, #16                               #! PC = 0x5555550c7c *)
ror w19@uint32 w19 16;
(* ror	w20, w20, #16                               #! PC = 0x5555550c80 *)
ror w20@uint32 w20 16;
(* ror	w21, w21, #16                               #! PC = 0x5555550c84 *)
ror w21@uint32 w21 16;
(* add	w13, w13, w17                               #! PC = 0x5555550c88 *)
adds dc w13 w13 w17;
(* add	w14, w14, w19                               #! PC = 0x5555550c8c *)
adds dc w14 w14 w19;
(* add	w15, w15, w20                               #! PC = 0x5555550c90 *)
adds dc w15 w15 w20;
(* add	w16, w16, w21                               #! PC = 0x5555550c94 *)
adds dc w16 w16 w21;
(* eor	w9, w9, w13                                 #! PC = 0x5555550c98 *)
xor w9@uint32 w9 w13;
(* eor	w10, w10, w14                               #! PC = 0x5555550c9c *)
xor w10@uint32 w10 w14;
(* eor	w11, w11, w15                               #! PC = 0x5555550ca0 *)
xor w11@uint32 w11 w15;
(* eor	w12, w12, w16                               #! PC = 0x5555550ca4 *)
xor w12@uint32 w12 w16;
(* ror	w9, w9, #20                                 #! PC = 0x5555550ca8 *)
ror w9@uint32 w9 20;
(* ror	w10, w10, #20                               #! PC = 0x5555550cac *)
ror w10@uint32 w10 20;
(* ror	w11, w11, #20                               #! PC = 0x5555550cb0 *)
ror w11@uint32 w11 20;
(* ror	w12, w12, #20                               #! PC = 0x5555550cb4 *)
ror w12@uint32 w12 20;
(* add	w5, w5, w9                                  #! PC = 0x5555550cb8 *)
adds dc w5 w5 w9;
(* add	w6, w6, w10                                 #! PC = 0x5555550cbc *)
adds dc w6 w6 w10;
(* add	w7, w7, w11                                 #! PC = 0x5555550cc0 *)
adds dc w7 w7 w11;
(* add	w8, w8, w12                                 #! PC = 0x5555550cc4 *)
adds dc w8 w8 w12;
(* eor	w17, w17, w5                                #! PC = 0x5555550cc8 *)
xor w17@uint32 w17 w5;
(* eor	w19, w19, w6                                #! PC = 0x5555550ccc *)
xor w19@uint32 w19 w6;
(* eor	w20, w20, w7                                #! PC = 0x5555550cd0 *)
xor w20@uint32 w20 w7;
(* eor	w21, w21, w8                                #! PC = 0x5555550cd4 *)
xor w21@uint32 w21 w8;
(* ror	w17, w17, #24                               #! PC = 0x5555550cd8 *)
ror w17@uint32 w17 24;
(* ror	w19, w19, #24                               #! PC = 0x5555550cdc *)
ror w19@uint32 w19 24;
(* ror	w20, w20, #24                               #! PC = 0x5555550ce0 *)
ror w20@uint32 w20 24;
(* ror	w21, w21, #24                               #! PC = 0x5555550ce4 *)
ror w21@uint32 w21 24;
(* add	w13, w13, w17                               #! PC = 0x5555550ce8 *)
adds dc w13 w13 w17;
(* add	w14, w14, w19                               #! PC = 0x5555550cec *)
adds dc w14 w14 w19;
(* add	w15, w15, w20                               #! PC = 0x5555550cf0 *)
adds dc w15 w15 w20;
(* add	w16, w16, w21                               #! PC = 0x5555550cf4 *)
adds dc w16 w16 w21;
(* eor	w9, w9, w13                                 #! PC = 0x5555550cf8 *)
xor w9@uint32 w9 w13;
(* eor	w10, w10, w14                               #! PC = 0x5555550cfc *)
xor w10@uint32 w10 w14;
(* eor	w11, w11, w15                               #! PC = 0x5555550d00 *)
xor w11@uint32 w11 w15;
(* eor	w12, w12, w16                               #! PC = 0x5555550d04 *)
xor w12@uint32 w12 w16;
(* ror	w9, w9, #25                                 #! PC = 0x5555550d08 *)
ror w9@uint32 w9 25;
(* ror	w10, w10, #25                               #! PC = 0x5555550d0c *)
ror w10@uint32 w10 25;
(* ror	w11, w11, #25                               #! PC = 0x5555550d10 *)
ror w11@uint32 w11 25;
(* ror	w12, w12, #25                               #! PC = 0x5555550d14 *)
ror w12@uint32 w12 25;
(* add	w5, w5, w10                                 #! PC = 0x5555550d18 *)
adds dc w5 w5 w10;
(* add	w6, w6, w11                                 #! PC = 0x5555550d1c *)
adds dc w6 w6 w11;
(* add	w7, w7, w12                                 #! PC = 0x5555550d20 *)
adds dc w7 w7 w12;
(* add	w8, w8, w9                                  #! PC = 0x5555550d24 *)
adds dc w8 w8 w9;
(* eor	w21, w21, w5                                #! PC = 0x5555550d28 *)
xor w21@uint32 w21 w5;
(* eor	w17, w17, w6                                #! PC = 0x5555550d2c *)
xor w17@uint32 w17 w6;
(* eor	w19, w19, w7                                #! PC = 0x5555550d30 *)
xor w19@uint32 w19 w7;
(* eor	w20, w20, w8                                #! PC = 0x5555550d34 *)
xor w20@uint32 w20 w8;
(* ror	w21, w21, #16                               #! PC = 0x5555550d38 *)
ror w21@uint32 w21 16;
(* ror	w17, w17, #16                               #! PC = 0x5555550d3c *)
ror w17@uint32 w17 16;
(* ror	w19, w19, #16                               #! PC = 0x5555550d40 *)
ror w19@uint32 w19 16;
(* ror	w20, w20, #16                               #! PC = 0x5555550d44 *)
ror w20@uint32 w20 16;
(* add	w15, w15, w21                               #! PC = 0x5555550d48 *)
adds dc w15 w15 w21;
(* add	w16, w16, w17                               #! PC = 0x5555550d4c *)
adds dc w16 w16 w17;
(* add	w13, w13, w19                               #! PC = 0x5555550d50 *)
adds dc w13 w13 w19;
(* add	w14, w14, w20                               #! PC = 0x5555550d54 *)
adds dc w14 w14 w20;
(* eor	w10, w10, w15                               #! PC = 0x5555550d58 *)
xor w10@uint32 w10 w15;
(* eor	w11, w11, w16                               #! PC = 0x5555550d5c *)
xor w11@uint32 w11 w16;
(* eor	w12, w12, w13                               #! PC = 0x5555550d60 *)
xor w12@uint32 w12 w13;
(* eor	w9, w9, w14                                 #! PC = 0x5555550d64 *)
xor w9@uint32 w9 w14;
(* ror	w10, w10, #20                               #! PC = 0x5555550d68 *)
ror w10@uint32 w10 20;
(* ror	w11, w11, #20                               #! PC = 0x5555550d6c *)
ror w11@uint32 w11 20;
(* ror	w12, w12, #20                               #! PC = 0x5555550d70 *)
ror w12@uint32 w12 20;
(* ror	w9, w9, #20                                 #! PC = 0x5555550d74 *)
ror w9@uint32 w9 20;
(* add	w5, w5, w10                                 #! PC = 0x5555550d78 *)
adds dc w5 w5 w10;
(* add	w6, w6, w11                                 #! PC = 0x5555550d7c *)
adds dc w6 w6 w11;
(* add	w7, w7, w12                                 #! PC = 0x5555550d80 *)
adds dc w7 w7 w12;
(* add	w8, w8, w9                                  #! PC = 0x5555550d84 *)
adds dc w8 w8 w9;
(* eor	w21, w21, w5                                #! PC = 0x5555550d88 *)
xor w21@uint32 w21 w5;
(* eor	w17, w17, w6                                #! PC = 0x5555550d8c *)
xor w17@uint32 w17 w6;
(* eor	w19, w19, w7                                #! PC = 0x5555550d90 *)
xor w19@uint32 w19 w7;
(* eor	w20, w20, w8                                #! PC = 0x5555550d94 *)
xor w20@uint32 w20 w8;
(* ror	w21, w21, #24                               #! PC = 0x5555550d98 *)
ror w21@uint32 w21 24;
(* ror	w17, w17, #24                               #! PC = 0x5555550d9c *)
ror w17@uint32 w17 24;
(* ror	w19, w19, #24                               #! PC = 0x5555550da0 *)
ror w19@uint32 w19 24;
(* ror	w20, w20, #24                               #! PC = 0x5555550da4 *)
ror w20@uint32 w20 24;
(* add	w15, w15, w21                               #! PC = 0x5555550da8 *)
adds dc w15 w15 w21;
(* add	w16, w16, w17                               #! PC = 0x5555550dac *)
adds dc w16 w16 w17;
(* add	w13, w13, w19                               #! PC = 0x5555550db0 *)
adds dc w13 w13 w19;
(* add	w14, w14, w20                               #! PC = 0x5555550db4 *)
adds dc w14 w14 w20;
(* eor	w10, w10, w15                               #! PC = 0x5555550db8 *)
xor w10@uint32 w10 w15;
(* eor	w11, w11, w16                               #! PC = 0x5555550dbc *)
xor w11@uint32 w11 w16;
(* eor	w12, w12, w13                               #! PC = 0x5555550dc0 *)
xor w12@uint32 w12 w13;
(* eor	w9, w9, w14                                 #! PC = 0x5555550dc4 *)
xor w9@uint32 w9 w14;
(* ror	w10, w10, #25                               #! PC = 0x5555550dc8 *)
ror w10@uint32 w10 25;
(* ror	w11, w11, #25                               #! PC = 0x5555550dcc *)
ror w11@uint32 w11 25;
(* ror	w12, w12, #25                               #! PC = 0x5555550dd0 *)
ror w12@uint32 w12 25;
(* ror	w9, w9, #25                                 #! PC = 0x5555550dd4 *)
ror w9@uint32 w9 25;
(* #cbnz	x4, 0x5555550c54 <ChaCha20_ctr32_dflt+148>#! PC = 0x5555550dd8 *)
#cbnz	x4, 0x5555550c54 <ChaCha20_ctr32_dflt+148>#! 0x5555550dd8 = 0x5555550dd8;
(* sub	x4, x4, #0x1                                #! PC = 0x5555550c54 *)
(* sub x4, x4, 0x1 *)
nop;
(* add	w5, w5, w9                                  #! PC = 0x5555550c58 *)
adds dc w5 w5 w9;
(* add	w6, w6, w10                                 #! PC = 0x5555550c5c *)
adds dc w6 w6 w10;
(* add	w7, w7, w11                                 #! PC = 0x5555550c60 *)
adds dc w7 w7 w11;
(* add	w8, w8, w12                                 #! PC = 0x5555550c64 *)
adds dc w8 w8 w12;
(* eor	w17, w17, w5                                #! PC = 0x5555550c68 *)
xor w17@uint32 w17 w5;
(* eor	w19, w19, w6                                #! PC = 0x5555550c6c *)
xor w19@uint32 w19 w6;
(* eor	w20, w20, w7                                #! PC = 0x5555550c70 *)
xor w20@uint32 w20 w7;
(* eor	w21, w21, w8                                #! PC = 0x5555550c74 *)
xor w21@uint32 w21 w8;
(* ror	w17, w17, #16                               #! PC = 0x5555550c78 *)
ror w17@uint32 w17 16;
(* ror	w19, w19, #16                               #! PC = 0x5555550c7c *)
ror w19@uint32 w19 16;
(* ror	w20, w20, #16                               #! PC = 0x5555550c80 *)
ror w20@uint32 w20 16;
(* ror	w21, w21, #16                               #! PC = 0x5555550c84 *)
ror w21@uint32 w21 16;
(* add	w13, w13, w17                               #! PC = 0x5555550c88 *)
adds dc w13 w13 w17;
(* add	w14, w14, w19                               #! PC = 0x5555550c8c *)
adds dc w14 w14 w19;
(* add	w15, w15, w20                               #! PC = 0x5555550c90 *)
adds dc w15 w15 w20;
(* add	w16, w16, w21                               #! PC = 0x5555550c94 *)
adds dc w16 w16 w21;
(* eor	w9, w9, w13                                 #! PC = 0x5555550c98 *)
xor w9@uint32 w9 w13;
(* eor	w10, w10, w14                               #! PC = 0x5555550c9c *)
xor w10@uint32 w10 w14;
(* eor	w11, w11, w15                               #! PC = 0x5555550ca0 *)
xor w11@uint32 w11 w15;
(* eor	w12, w12, w16                               #! PC = 0x5555550ca4 *)
xor w12@uint32 w12 w16;
(* ror	w9, w9, #20                                 #! PC = 0x5555550ca8 *)
ror w9@uint32 w9 20;
(* ror	w10, w10, #20                               #! PC = 0x5555550cac *)
ror w10@uint32 w10 20;
(* ror	w11, w11, #20                               #! PC = 0x5555550cb0 *)
ror w11@uint32 w11 20;
(* ror	w12, w12, #20                               #! PC = 0x5555550cb4 *)
ror w12@uint32 w12 20;
(* add	w5, w5, w9                                  #! PC = 0x5555550cb8 *)
adds dc w5 w5 w9;
(* add	w6, w6, w10                                 #! PC = 0x5555550cbc *)
adds dc w6 w6 w10;
(* add	w7, w7, w11                                 #! PC = 0x5555550cc0 *)
adds dc w7 w7 w11;
(* add	w8, w8, w12                                 #! PC = 0x5555550cc4 *)
adds dc w8 w8 w12;
(* eor	w17, w17, w5                                #! PC = 0x5555550cc8 *)
xor w17@uint32 w17 w5;
(* eor	w19, w19, w6                                #! PC = 0x5555550ccc *)
xor w19@uint32 w19 w6;
(* eor	w20, w20, w7                                #! PC = 0x5555550cd0 *)
xor w20@uint32 w20 w7;
(* eor	w21, w21, w8                                #! PC = 0x5555550cd4 *)
xor w21@uint32 w21 w8;
(* ror	w17, w17, #24                               #! PC = 0x5555550cd8 *)
ror w17@uint32 w17 24;
(* ror	w19, w19, #24                               #! PC = 0x5555550cdc *)
ror w19@uint32 w19 24;
(* ror	w20, w20, #24                               #! PC = 0x5555550ce0 *)
ror w20@uint32 w20 24;
(* ror	w21, w21, #24                               #! PC = 0x5555550ce4 *)
ror w21@uint32 w21 24;
(* add	w13, w13, w17                               #! PC = 0x5555550ce8 *)
adds dc w13 w13 w17;
(* add	w14, w14, w19                               #! PC = 0x5555550cec *)
adds dc w14 w14 w19;
(* add	w15, w15, w20                               #! PC = 0x5555550cf0 *)
adds dc w15 w15 w20;
(* add	w16, w16, w21                               #! PC = 0x5555550cf4 *)
adds dc w16 w16 w21;
(* eor	w9, w9, w13                                 #! PC = 0x5555550cf8 *)
xor w9@uint32 w9 w13;
(* eor	w10, w10, w14                               #! PC = 0x5555550cfc *)
xor w10@uint32 w10 w14;
(* eor	w11, w11, w15                               #! PC = 0x5555550d00 *)
xor w11@uint32 w11 w15;
(* eor	w12, w12, w16                               #! PC = 0x5555550d04 *)
xor w12@uint32 w12 w16;
(* ror	w9, w9, #25                                 #! PC = 0x5555550d08 *)
ror w9@uint32 w9 25;
(* ror	w10, w10, #25                               #! PC = 0x5555550d0c *)
ror w10@uint32 w10 25;
(* ror	w11, w11, #25                               #! PC = 0x5555550d10 *)
ror w11@uint32 w11 25;
(* ror	w12, w12, #25                               #! PC = 0x5555550d14 *)
ror w12@uint32 w12 25;
(* add	w5, w5, w10                                 #! PC = 0x5555550d18 *)
adds dc w5 w5 w10;
(* add	w6, w6, w11                                 #! PC = 0x5555550d1c *)
adds dc w6 w6 w11;
(* add	w7, w7, w12                                 #! PC = 0x5555550d20 *)
adds dc w7 w7 w12;
(* add	w8, w8, w9                                  #! PC = 0x5555550d24 *)
adds dc w8 w8 w9;
(* eor	w21, w21, w5                                #! PC = 0x5555550d28 *)
xor w21@uint32 w21 w5;
(* eor	w17, w17, w6                                #! PC = 0x5555550d2c *)
xor w17@uint32 w17 w6;
(* eor	w19, w19, w7                                #! PC = 0x5555550d30 *)
xor w19@uint32 w19 w7;
(* eor	w20, w20, w8                                #! PC = 0x5555550d34 *)
xor w20@uint32 w20 w8;
(* ror	w21, w21, #16                               #! PC = 0x5555550d38 *)
ror w21@uint32 w21 16;
(* ror	w17, w17, #16                               #! PC = 0x5555550d3c *)
ror w17@uint32 w17 16;
(* ror	w19, w19, #16                               #! PC = 0x5555550d40 *)
ror w19@uint32 w19 16;
(* ror	w20, w20, #16                               #! PC = 0x5555550d44 *)
ror w20@uint32 w20 16;
(* add	w15, w15, w21                               #! PC = 0x5555550d48 *)
adds dc w15 w15 w21;
(* add	w16, w16, w17                               #! PC = 0x5555550d4c *)
adds dc w16 w16 w17;
(* add	w13, w13, w19                               #! PC = 0x5555550d50 *)
adds dc w13 w13 w19;
(* add	w14, w14, w20                               #! PC = 0x5555550d54 *)
adds dc w14 w14 w20;
(* eor	w10, w10, w15                               #! PC = 0x5555550d58 *)
xor w10@uint32 w10 w15;
(* eor	w11, w11, w16                               #! PC = 0x5555550d5c *)
xor w11@uint32 w11 w16;
(* eor	w12, w12, w13                               #! PC = 0x5555550d60 *)
xor w12@uint32 w12 w13;
(* eor	w9, w9, w14                                 #! PC = 0x5555550d64 *)
xor w9@uint32 w9 w14;
(* ror	w10, w10, #20                               #! PC = 0x5555550d68 *)
ror w10@uint32 w10 20;
(* ror	w11, w11, #20                               #! PC = 0x5555550d6c *)
ror w11@uint32 w11 20;
(* ror	w12, w12, #20                               #! PC = 0x5555550d70 *)
ror w12@uint32 w12 20;
(* ror	w9, w9, #20                                 #! PC = 0x5555550d74 *)
ror w9@uint32 w9 20;
(* add	w5, w5, w10                                 #! PC = 0x5555550d78 *)
adds dc w5 w5 w10;
(* add	w6, w6, w11                                 #! PC = 0x5555550d7c *)
adds dc w6 w6 w11;
(* add	w7, w7, w12                                 #! PC = 0x5555550d80 *)
adds dc w7 w7 w12;
(* add	w8, w8, w9                                  #! PC = 0x5555550d84 *)
adds dc w8 w8 w9;
(* eor	w21, w21, w5                                #! PC = 0x5555550d88 *)
xor w21@uint32 w21 w5;
(* eor	w17, w17, w6                                #! PC = 0x5555550d8c *)
xor w17@uint32 w17 w6;
(* eor	w19, w19, w7                                #! PC = 0x5555550d90 *)
xor w19@uint32 w19 w7;
(* eor	w20, w20, w8                                #! PC = 0x5555550d94 *)
xor w20@uint32 w20 w8;
(* ror	w21, w21, #24                               #! PC = 0x5555550d98 *)
ror w21@uint32 w21 24;
(* ror	w17, w17, #24                               #! PC = 0x5555550d9c *)
ror w17@uint32 w17 24;
(* ror	w19, w19, #24                               #! PC = 0x5555550da0 *)
ror w19@uint32 w19 24;
(* ror	w20, w20, #24                               #! PC = 0x5555550da4 *)
ror w20@uint32 w20 24;
(* add	w15, w15, w21                               #! PC = 0x5555550da8 *)
adds dc w15 w15 w21;
(* add	w16, w16, w17                               #! PC = 0x5555550dac *)
adds dc w16 w16 w17;
(* add	w13, w13, w19                               #! PC = 0x5555550db0 *)
adds dc w13 w13 w19;
(* add	w14, w14, w20                               #! PC = 0x5555550db4 *)
adds dc w14 w14 w20;
(* eor	w10, w10, w15                               #! PC = 0x5555550db8 *)
xor w10@uint32 w10 w15;
(* eor	w11, w11, w16                               #! PC = 0x5555550dbc *)
xor w11@uint32 w11 w16;
(* eor	w12, w12, w13                               #! PC = 0x5555550dc0 *)
xor w12@uint32 w12 w13;
(* eor	w9, w9, w14                                 #! PC = 0x5555550dc4 *)
xor w9@uint32 w9 w14;
(* ror	w10, w10, #25                               #! PC = 0x5555550dc8 *)
ror w10@uint32 w10 25;
(* ror	w11, w11, #25                               #! PC = 0x5555550dcc *)
ror w11@uint32 w11 25;
(* ror	w12, w12, #25                               #! PC = 0x5555550dd0 *)
ror w12@uint32 w12 25;
(* ror	w9, w9, #25                                 #! PC = 0x5555550dd4 *)
ror w9@uint32 w9 25;
(* #cbnz	x4, 0x5555550c54 <ChaCha20_ctr32_dflt+148>#! PC = 0x5555550dd8 *)
#cbnz	x4, 0x5555550c54 <ChaCha20_ctr32_dflt+148>#! 0x5555550dd8 = 0x5555550dd8;
(* sub	x4, x4, #0x1                                #! PC = 0x5555550c54 *)
(* sub x4, x4, 0x1 *)
nop;
(* add	w5, w5, w9                                  #! PC = 0x5555550c58 *)
adds dc w5 w5 w9;
(* add	w6, w6, w10                                 #! PC = 0x5555550c5c *)
adds dc w6 w6 w10;
(* add	w7, w7, w11                                 #! PC = 0x5555550c60 *)
adds dc w7 w7 w11;
(* add	w8, w8, w12                                 #! PC = 0x5555550c64 *)
adds dc w8 w8 w12;
(* eor	w17, w17, w5                                #! PC = 0x5555550c68 *)
xor w17@uint32 w17 w5;
(* eor	w19, w19, w6                                #! PC = 0x5555550c6c *)
xor w19@uint32 w19 w6;
(* eor	w20, w20, w7                                #! PC = 0x5555550c70 *)
xor w20@uint32 w20 w7;
(* eor	w21, w21, w8                                #! PC = 0x5555550c74 *)
xor w21@uint32 w21 w8;
(* ror	w17, w17, #16                               #! PC = 0x5555550c78 *)
ror w17@uint32 w17 16;
(* ror	w19, w19, #16                               #! PC = 0x5555550c7c *)
ror w19@uint32 w19 16;
(* ror	w20, w20, #16                               #! PC = 0x5555550c80 *)
ror w20@uint32 w20 16;
(* ror	w21, w21, #16                               #! PC = 0x5555550c84 *)
ror w21@uint32 w21 16;
(* add	w13, w13, w17                               #! PC = 0x5555550c88 *)
adds dc w13 w13 w17;
(* add	w14, w14, w19                               #! PC = 0x5555550c8c *)
adds dc w14 w14 w19;
(* add	w15, w15, w20                               #! PC = 0x5555550c90 *)
adds dc w15 w15 w20;
(* add	w16, w16, w21                               #! PC = 0x5555550c94 *)
adds dc w16 w16 w21;
(* eor	w9, w9, w13                                 #! PC = 0x5555550c98 *)
xor w9@uint32 w9 w13;
(* eor	w10, w10, w14                               #! PC = 0x5555550c9c *)
xor w10@uint32 w10 w14;
(* eor	w11, w11, w15                               #! PC = 0x5555550ca0 *)
xor w11@uint32 w11 w15;
(* eor	w12, w12, w16                               #! PC = 0x5555550ca4 *)
xor w12@uint32 w12 w16;
(* ror	w9, w9, #20                                 #! PC = 0x5555550ca8 *)
ror w9@uint32 w9 20;
(* ror	w10, w10, #20                               #! PC = 0x5555550cac *)
ror w10@uint32 w10 20;
(* ror	w11, w11, #20                               #! PC = 0x5555550cb0 *)
ror w11@uint32 w11 20;
(* ror	w12, w12, #20                               #! PC = 0x5555550cb4 *)
ror w12@uint32 w12 20;
(* add	w5, w5, w9                                  #! PC = 0x5555550cb8 *)
adds dc w5 w5 w9;
(* add	w6, w6, w10                                 #! PC = 0x5555550cbc *)
adds dc w6 w6 w10;
(* add	w7, w7, w11                                 #! PC = 0x5555550cc0 *)
adds dc w7 w7 w11;
(* add	w8, w8, w12                                 #! PC = 0x5555550cc4 *)
adds dc w8 w8 w12;
(* eor	w17, w17, w5                                #! PC = 0x5555550cc8 *)
xor w17@uint32 w17 w5;
(* eor	w19, w19, w6                                #! PC = 0x5555550ccc *)
xor w19@uint32 w19 w6;
(* eor	w20, w20, w7                                #! PC = 0x5555550cd0 *)
xor w20@uint32 w20 w7;
(* eor	w21, w21, w8                                #! PC = 0x5555550cd4 *)
xor w21@uint32 w21 w8;
(* ror	w17, w17, #24                               #! PC = 0x5555550cd8 *)
ror w17@uint32 w17 24;
(* ror	w19, w19, #24                               #! PC = 0x5555550cdc *)
ror w19@uint32 w19 24;
(* ror	w20, w20, #24                               #! PC = 0x5555550ce0 *)
ror w20@uint32 w20 24;
(* ror	w21, w21, #24                               #! PC = 0x5555550ce4 *)
ror w21@uint32 w21 24;
(* add	w13, w13, w17                               #! PC = 0x5555550ce8 *)
adds dc w13 w13 w17;
(* add	w14, w14, w19                               #! PC = 0x5555550cec *)
adds dc w14 w14 w19;
(* add	w15, w15, w20                               #! PC = 0x5555550cf0 *)
adds dc w15 w15 w20;
(* add	w16, w16, w21                               #! PC = 0x5555550cf4 *)
adds dc w16 w16 w21;
(* eor	w9, w9, w13                                 #! PC = 0x5555550cf8 *)
xor w9@uint32 w9 w13;
(* eor	w10, w10, w14                               #! PC = 0x5555550cfc *)
xor w10@uint32 w10 w14;
(* eor	w11, w11, w15                               #! PC = 0x5555550d00 *)
xor w11@uint32 w11 w15;
(* eor	w12, w12, w16                               #! PC = 0x5555550d04 *)
xor w12@uint32 w12 w16;
(* ror	w9, w9, #25                                 #! PC = 0x5555550d08 *)
ror w9@uint32 w9 25;
(* ror	w10, w10, #25                               #! PC = 0x5555550d0c *)
ror w10@uint32 w10 25;
(* ror	w11, w11, #25                               #! PC = 0x5555550d10 *)
ror w11@uint32 w11 25;
(* ror	w12, w12, #25                               #! PC = 0x5555550d14 *)
ror w12@uint32 w12 25;
(* add	w5, w5, w10                                 #! PC = 0x5555550d18 *)
adds dc w5 w5 w10;
(* add	w6, w6, w11                                 #! PC = 0x5555550d1c *)
adds dc w6 w6 w11;
(* add	w7, w7, w12                                 #! PC = 0x5555550d20 *)
adds dc w7 w7 w12;
(* add	w8, w8, w9                                  #! PC = 0x5555550d24 *)
adds dc w8 w8 w9;
(* eor	w21, w21, w5                                #! PC = 0x5555550d28 *)
xor w21@uint32 w21 w5;
(* eor	w17, w17, w6                                #! PC = 0x5555550d2c *)
xor w17@uint32 w17 w6;
(* eor	w19, w19, w7                                #! PC = 0x5555550d30 *)
xor w19@uint32 w19 w7;
(* eor	w20, w20, w8                                #! PC = 0x5555550d34 *)
xor w20@uint32 w20 w8;
(* ror	w21, w21, #16                               #! PC = 0x5555550d38 *)
ror w21@uint32 w21 16;
(* ror	w17, w17, #16                               #! PC = 0x5555550d3c *)
ror w17@uint32 w17 16;
(* ror	w19, w19, #16                               #! PC = 0x5555550d40 *)
ror w19@uint32 w19 16;
(* ror	w20, w20, #16                               #! PC = 0x5555550d44 *)
ror w20@uint32 w20 16;
(* add	w15, w15, w21                               #! PC = 0x5555550d48 *)
adds dc w15 w15 w21;
(* add	w16, w16, w17                               #! PC = 0x5555550d4c *)
adds dc w16 w16 w17;
(* add	w13, w13, w19                               #! PC = 0x5555550d50 *)
adds dc w13 w13 w19;
(* add	w14, w14, w20                               #! PC = 0x5555550d54 *)
adds dc w14 w14 w20;
(* eor	w10, w10, w15                               #! PC = 0x5555550d58 *)
xor w10@uint32 w10 w15;
(* eor	w11, w11, w16                               #! PC = 0x5555550d5c *)
xor w11@uint32 w11 w16;
(* eor	w12, w12, w13                               #! PC = 0x5555550d60 *)
xor w12@uint32 w12 w13;
(* eor	w9, w9, w14                                 #! PC = 0x5555550d64 *)
xor w9@uint32 w9 w14;
(* ror	w10, w10, #20                               #! PC = 0x5555550d68 *)
ror w10@uint32 w10 20;
(* ror	w11, w11, #20                               #! PC = 0x5555550d6c *)
ror w11@uint32 w11 20;
(* ror	w12, w12, #20                               #! PC = 0x5555550d70 *)
ror w12@uint32 w12 20;
(* ror	w9, w9, #20                                 #! PC = 0x5555550d74 *)
ror w9@uint32 w9 20;
(* add	w5, w5, w10                                 #! PC = 0x5555550d78 *)
adds dc w5 w5 w10;
(* add	w6, w6, w11                                 #! PC = 0x5555550d7c *)
adds dc w6 w6 w11;
(* add	w7, w7, w12                                 #! PC = 0x5555550d80 *)
adds dc w7 w7 w12;
(* add	w8, w8, w9                                  #! PC = 0x5555550d84 *)
adds dc w8 w8 w9;
(* eor	w21, w21, w5                                #! PC = 0x5555550d88 *)
xor w21@uint32 w21 w5;
(* eor	w17, w17, w6                                #! PC = 0x5555550d8c *)
xor w17@uint32 w17 w6;
(* eor	w19, w19, w7                                #! PC = 0x5555550d90 *)
xor w19@uint32 w19 w7;
(* eor	w20, w20, w8                                #! PC = 0x5555550d94 *)
xor w20@uint32 w20 w8;
(* ror	w21, w21, #24                               #! PC = 0x5555550d98 *)
ror w21@uint32 w21 24;
(* ror	w17, w17, #24                               #! PC = 0x5555550d9c *)
ror w17@uint32 w17 24;
(* ror	w19, w19, #24                               #! PC = 0x5555550da0 *)
ror w19@uint32 w19 24;
(* ror	w20, w20, #24                               #! PC = 0x5555550da4 *)
ror w20@uint32 w20 24;
(* add	w15, w15, w21                               #! PC = 0x5555550da8 *)
adds dc w15 w15 w21;
(* add	w16, w16, w17                               #! PC = 0x5555550dac *)
adds dc w16 w16 w17;
(* add	w13, w13, w19                               #! PC = 0x5555550db0 *)
adds dc w13 w13 w19;
(* add	w14, w14, w20                               #! PC = 0x5555550db4 *)
adds dc w14 w14 w20;
(* eor	w10, w10, w15                               #! PC = 0x5555550db8 *)
xor w10@uint32 w10 w15;
(* eor	w11, w11, w16                               #! PC = 0x5555550dbc *)
xor w11@uint32 w11 w16;
(* eor	w12, w12, w13                               #! PC = 0x5555550dc0 *)
xor w12@uint32 w12 w13;
(* eor	w9, w9, w14                                 #! PC = 0x5555550dc4 *)
xor w9@uint32 w9 w14;
(* ror	w10, w10, #25                               #! PC = 0x5555550dc8 *)
ror w10@uint32 w10 25;
(* ror	w11, w11, #25                               #! PC = 0x5555550dcc *)
ror w11@uint32 w11 25;
(* ror	w12, w12, #25                               #! PC = 0x5555550dd0 *)
ror w12@uint32 w12 25;
(* ror	w9, w9, #25                                 #! PC = 0x5555550dd4 *)
ror w9@uint32 w9 25;
(* #cbnz	x4, 0x5555550c54 <ChaCha20_ctr32_dflt+148>#! PC = 0x5555550dd8 *)
#cbnz	x4, 0x5555550c54 <ChaCha20_ctr32_dflt+148>#! 0x5555550dd8 = 0x5555550dd8;
(* sub	x4, x4, #0x1                                #! PC = 0x5555550c54 *)
(* sub x4, x4, 0x1 *)
nop;
(* add	w5, w5, w9                                  #! PC = 0x5555550c58 *)
adds dc w5 w5 w9;
(* add	w6, w6, w10                                 #! PC = 0x5555550c5c *)
adds dc w6 w6 w10;
(* add	w7, w7, w11                                 #! PC = 0x5555550c60 *)
adds dc w7 w7 w11;
(* add	w8, w8, w12                                 #! PC = 0x5555550c64 *)
adds dc w8 w8 w12;
(* eor	w17, w17, w5                                #! PC = 0x5555550c68 *)
xor w17@uint32 w17 w5;
(* eor	w19, w19, w6                                #! PC = 0x5555550c6c *)
xor w19@uint32 w19 w6;
(* eor	w20, w20, w7                                #! PC = 0x5555550c70 *)
xor w20@uint32 w20 w7;
(* eor	w21, w21, w8                                #! PC = 0x5555550c74 *)
xor w21@uint32 w21 w8;
(* ror	w17, w17, #16                               #! PC = 0x5555550c78 *)
ror w17@uint32 w17 16;
(* ror	w19, w19, #16                               #! PC = 0x5555550c7c *)
ror w19@uint32 w19 16;
(* ror	w20, w20, #16                               #! PC = 0x5555550c80 *)
ror w20@uint32 w20 16;
(* ror	w21, w21, #16                               #! PC = 0x5555550c84 *)
ror w21@uint32 w21 16;
(* add	w13, w13, w17                               #! PC = 0x5555550c88 *)
adds dc w13 w13 w17;
(* add	w14, w14, w19                               #! PC = 0x5555550c8c *)
adds dc w14 w14 w19;
(* add	w15, w15, w20                               #! PC = 0x5555550c90 *)
adds dc w15 w15 w20;
(* add	w16, w16, w21                               #! PC = 0x5555550c94 *)
adds dc w16 w16 w21;
(* eor	w9, w9, w13                                 #! PC = 0x5555550c98 *)
xor w9@uint32 w9 w13;
(* eor	w10, w10, w14                               #! PC = 0x5555550c9c *)
xor w10@uint32 w10 w14;
(* eor	w11, w11, w15                               #! PC = 0x5555550ca0 *)
xor w11@uint32 w11 w15;
(* eor	w12, w12, w16                               #! PC = 0x5555550ca4 *)
xor w12@uint32 w12 w16;
(* ror	w9, w9, #20                                 #! PC = 0x5555550ca8 *)
ror w9@uint32 w9 20;
(* ror	w10, w10, #20                               #! PC = 0x5555550cac *)
ror w10@uint32 w10 20;
(* ror	w11, w11, #20                               #! PC = 0x5555550cb0 *)
ror w11@uint32 w11 20;
(* ror	w12, w12, #20                               #! PC = 0x5555550cb4 *)
ror w12@uint32 w12 20;
(* add	w5, w5, w9                                  #! PC = 0x5555550cb8 *)
adds dc w5 w5 w9;
(* add	w6, w6, w10                                 #! PC = 0x5555550cbc *)
adds dc w6 w6 w10;
(* add	w7, w7, w11                                 #! PC = 0x5555550cc0 *)
adds dc w7 w7 w11;
(* add	w8, w8, w12                                 #! PC = 0x5555550cc4 *)
adds dc w8 w8 w12;
(* eor	w17, w17, w5                                #! PC = 0x5555550cc8 *)
xor w17@uint32 w17 w5;
(* eor	w19, w19, w6                                #! PC = 0x5555550ccc *)
xor w19@uint32 w19 w6;
(* eor	w20, w20, w7                                #! PC = 0x5555550cd0 *)
xor w20@uint32 w20 w7;
(* eor	w21, w21, w8                                #! PC = 0x5555550cd4 *)
xor w21@uint32 w21 w8;
(* ror	w17, w17, #24                               #! PC = 0x5555550cd8 *)
ror w17@uint32 w17 24;
(* ror	w19, w19, #24                               #! PC = 0x5555550cdc *)
ror w19@uint32 w19 24;
(* ror	w20, w20, #24                               #! PC = 0x5555550ce0 *)
ror w20@uint32 w20 24;
(* ror	w21, w21, #24                               #! PC = 0x5555550ce4 *)
ror w21@uint32 w21 24;
(* add	w13, w13, w17                               #! PC = 0x5555550ce8 *)
adds dc w13 w13 w17;
(* add	w14, w14, w19                               #! PC = 0x5555550cec *)
adds dc w14 w14 w19;
(* add	w15, w15, w20                               #! PC = 0x5555550cf0 *)
adds dc w15 w15 w20;
(* add	w16, w16, w21                               #! PC = 0x5555550cf4 *)
adds dc w16 w16 w21;
(* eor	w9, w9, w13                                 #! PC = 0x5555550cf8 *)
xor w9@uint32 w9 w13;
(* eor	w10, w10, w14                               #! PC = 0x5555550cfc *)
xor w10@uint32 w10 w14;
(* eor	w11, w11, w15                               #! PC = 0x5555550d00 *)
xor w11@uint32 w11 w15;
(* eor	w12, w12, w16                               #! PC = 0x5555550d04 *)
xor w12@uint32 w12 w16;
(* ror	w9, w9, #25                                 #! PC = 0x5555550d08 *)
ror w9@uint32 w9 25;
(* ror	w10, w10, #25                               #! PC = 0x5555550d0c *)
ror w10@uint32 w10 25;
(* ror	w11, w11, #25                               #! PC = 0x5555550d10 *)
ror w11@uint32 w11 25;
(* ror	w12, w12, #25                               #! PC = 0x5555550d14 *)
ror w12@uint32 w12 25;
(* add	w5, w5, w10                                 #! PC = 0x5555550d18 *)
adds dc w5 w5 w10;
(* add	w6, w6, w11                                 #! PC = 0x5555550d1c *)
adds dc w6 w6 w11;
(* add	w7, w7, w12                                 #! PC = 0x5555550d20 *)
adds dc w7 w7 w12;
(* add	w8, w8, w9                                  #! PC = 0x5555550d24 *)
adds dc w8 w8 w9;
(* eor	w21, w21, w5                                #! PC = 0x5555550d28 *)
xor w21@uint32 w21 w5;
(* eor	w17, w17, w6                                #! PC = 0x5555550d2c *)
xor w17@uint32 w17 w6;
(* eor	w19, w19, w7                                #! PC = 0x5555550d30 *)
xor w19@uint32 w19 w7;
(* eor	w20, w20, w8                                #! PC = 0x5555550d34 *)
xor w20@uint32 w20 w8;
(* ror	w21, w21, #16                               #! PC = 0x5555550d38 *)
ror w21@uint32 w21 16;
(* ror	w17, w17, #16                               #! PC = 0x5555550d3c *)
ror w17@uint32 w17 16;
(* ror	w19, w19, #16                               #! PC = 0x5555550d40 *)
ror w19@uint32 w19 16;
(* ror	w20, w20, #16                               #! PC = 0x5555550d44 *)
ror w20@uint32 w20 16;
(* add	w15, w15, w21                               #! PC = 0x5555550d48 *)
adds dc w15 w15 w21;
(* add	w16, w16, w17                               #! PC = 0x5555550d4c *)
adds dc w16 w16 w17;
(* add	w13, w13, w19                               #! PC = 0x5555550d50 *)
adds dc w13 w13 w19;
(* add	w14, w14, w20                               #! PC = 0x5555550d54 *)
adds dc w14 w14 w20;
(* eor	w10, w10, w15                               #! PC = 0x5555550d58 *)
xor w10@uint32 w10 w15;
(* eor	w11, w11, w16                               #! PC = 0x5555550d5c *)
xor w11@uint32 w11 w16;
(* eor	w12, w12, w13                               #! PC = 0x5555550d60 *)
xor w12@uint32 w12 w13;
(* eor	w9, w9, w14                                 #! PC = 0x5555550d64 *)
xor w9@uint32 w9 w14;
(* ror	w10, w10, #20                               #! PC = 0x5555550d68 *)
ror w10@uint32 w10 20;
(* ror	w11, w11, #20                               #! PC = 0x5555550d6c *)
ror w11@uint32 w11 20;
(* ror	w12, w12, #20                               #! PC = 0x5555550d70 *)
ror w12@uint32 w12 20;
(* ror	w9, w9, #20                                 #! PC = 0x5555550d74 *)
ror w9@uint32 w9 20;
(* add	w5, w5, w10                                 #! PC = 0x5555550d78 *)
adds dc w5 w5 w10;
(* add	w6, w6, w11                                 #! PC = 0x5555550d7c *)
adds dc w6 w6 w11;
(* add	w7, w7, w12                                 #! PC = 0x5555550d80 *)
adds dc w7 w7 w12;
(* add	w8, w8, w9                                  #! PC = 0x5555550d84 *)
adds dc w8 w8 w9;
(* eor	w21, w21, w5                                #! PC = 0x5555550d88 *)
xor w21@uint32 w21 w5;
(* eor	w17, w17, w6                                #! PC = 0x5555550d8c *)
xor w17@uint32 w17 w6;
(* eor	w19, w19, w7                                #! PC = 0x5555550d90 *)
xor w19@uint32 w19 w7;
(* eor	w20, w20, w8                                #! PC = 0x5555550d94 *)
xor w20@uint32 w20 w8;
(* ror	w21, w21, #24                               #! PC = 0x5555550d98 *)
ror w21@uint32 w21 24;
(* ror	w17, w17, #24                               #! PC = 0x5555550d9c *)
ror w17@uint32 w17 24;
(* ror	w19, w19, #24                               #! PC = 0x5555550da0 *)
ror w19@uint32 w19 24;
(* ror	w20, w20, #24                               #! PC = 0x5555550da4 *)
ror w20@uint32 w20 24;
(* add	w15, w15, w21                               #! PC = 0x5555550da8 *)
adds dc w15 w15 w21;
(* add	w16, w16, w17                               #! PC = 0x5555550dac *)
adds dc w16 w16 w17;
(* add	w13, w13, w19                               #! PC = 0x5555550db0 *)
adds dc w13 w13 w19;
(* add	w14, w14, w20                               #! PC = 0x5555550db4 *)
adds dc w14 w14 w20;
(* eor	w10, w10, w15                               #! PC = 0x5555550db8 *)
xor w10@uint32 w10 w15;
(* eor	w11, w11, w16                               #! PC = 0x5555550dbc *)
xor w11@uint32 w11 w16;
(* eor	w12, w12, w13                               #! PC = 0x5555550dc0 *)
xor w12@uint32 w12 w13;
(* eor	w9, w9, w14                                 #! PC = 0x5555550dc4 *)
xor w9@uint32 w9 w14;
(* ror	w10, w10, #25                               #! PC = 0x5555550dc8 *)
ror w10@uint32 w10 25;
(* ror	w11, w11, #25                               #! PC = 0x5555550dcc *)
ror w11@uint32 w11 25;
(* ror	w12, w12, #25                               #! PC = 0x5555550dd0 *)
ror w12@uint32 w12 25;
(* ror	w9, w9, #25                                 #! PC = 0x5555550dd4 *)
ror w9@uint32 w9 25;
(* #cbnz	x4, 0x5555550c54 <ChaCha20_ctr32_dflt+148>#! PC = 0x5555550dd8 *)
#cbnz	x4, 0x5555550c54 <ChaCha20_ctr32_dflt+148>#! 0x5555550dd8 = 0x5555550dd8;
(* sub	x4, x4, #0x1                                #! PC = 0x5555550c54 *)
(* sub x4, x4, 0x1 *)
nop;
(* add	w5, w5, w9                                  #! PC = 0x5555550c58 *)
adds dc w5 w5 w9;
(* add	w6, w6, w10                                 #! PC = 0x5555550c5c *)
adds dc w6 w6 w10;
(* add	w7, w7, w11                                 #! PC = 0x5555550c60 *)
adds dc w7 w7 w11;
(* add	w8, w8, w12                                 #! PC = 0x5555550c64 *)
adds dc w8 w8 w12;
(* eor	w17, w17, w5                                #! PC = 0x5555550c68 *)
xor w17@uint32 w17 w5;
(* eor	w19, w19, w6                                #! PC = 0x5555550c6c *)
xor w19@uint32 w19 w6;
(* eor	w20, w20, w7                                #! PC = 0x5555550c70 *)
xor w20@uint32 w20 w7;
(* eor	w21, w21, w8                                #! PC = 0x5555550c74 *)
xor w21@uint32 w21 w8;
(* ror	w17, w17, #16                               #! PC = 0x5555550c78 *)
ror w17@uint32 w17 16;
(* ror	w19, w19, #16                               #! PC = 0x5555550c7c *)
ror w19@uint32 w19 16;
(* ror	w20, w20, #16                               #! PC = 0x5555550c80 *)
ror w20@uint32 w20 16;
(* ror	w21, w21, #16                               #! PC = 0x5555550c84 *)
ror w21@uint32 w21 16;
(* add	w13, w13, w17                               #! PC = 0x5555550c88 *)
adds dc w13 w13 w17;
(* add	w14, w14, w19                               #! PC = 0x5555550c8c *)
adds dc w14 w14 w19;
(* add	w15, w15, w20                               #! PC = 0x5555550c90 *)
adds dc w15 w15 w20;
(* add	w16, w16, w21                               #! PC = 0x5555550c94 *)
adds dc w16 w16 w21;
(* eor	w9, w9, w13                                 #! PC = 0x5555550c98 *)
xor w9@uint32 w9 w13;
(* eor	w10, w10, w14                               #! PC = 0x5555550c9c *)
xor w10@uint32 w10 w14;
(* eor	w11, w11, w15                               #! PC = 0x5555550ca0 *)
xor w11@uint32 w11 w15;
(* eor	w12, w12, w16                               #! PC = 0x5555550ca4 *)
xor w12@uint32 w12 w16;
(* ror	w9, w9, #20                                 #! PC = 0x5555550ca8 *)
ror w9@uint32 w9 20;
(* ror	w10, w10, #20                               #! PC = 0x5555550cac *)
ror w10@uint32 w10 20;
(* ror	w11, w11, #20                               #! PC = 0x5555550cb0 *)
ror w11@uint32 w11 20;
(* ror	w12, w12, #20                               #! PC = 0x5555550cb4 *)
ror w12@uint32 w12 20;
(* add	w5, w5, w9                                  #! PC = 0x5555550cb8 *)
adds dc w5 w5 w9;
(* add	w6, w6, w10                                 #! PC = 0x5555550cbc *)
adds dc w6 w6 w10;
(* add	w7, w7, w11                                 #! PC = 0x5555550cc0 *)
adds dc w7 w7 w11;
(* add	w8, w8, w12                                 #! PC = 0x5555550cc4 *)
adds dc w8 w8 w12;
(* eor	w17, w17, w5                                #! PC = 0x5555550cc8 *)
xor w17@uint32 w17 w5;
(* eor	w19, w19, w6                                #! PC = 0x5555550ccc *)
xor w19@uint32 w19 w6;
(* eor	w20, w20, w7                                #! PC = 0x5555550cd0 *)
xor w20@uint32 w20 w7;
(* eor	w21, w21, w8                                #! PC = 0x5555550cd4 *)
xor w21@uint32 w21 w8;
(* ror	w17, w17, #24                               #! PC = 0x5555550cd8 *)
ror w17@uint32 w17 24;
(* ror	w19, w19, #24                               #! PC = 0x5555550cdc *)
ror w19@uint32 w19 24;
(* ror	w20, w20, #24                               #! PC = 0x5555550ce0 *)
ror w20@uint32 w20 24;
(* ror	w21, w21, #24                               #! PC = 0x5555550ce4 *)
ror w21@uint32 w21 24;
(* add	w13, w13, w17                               #! PC = 0x5555550ce8 *)
adds dc w13 w13 w17;
(* add	w14, w14, w19                               #! PC = 0x5555550cec *)
adds dc w14 w14 w19;
(* add	w15, w15, w20                               #! PC = 0x5555550cf0 *)
adds dc w15 w15 w20;
(* add	w16, w16, w21                               #! PC = 0x5555550cf4 *)
adds dc w16 w16 w21;
(* eor	w9, w9, w13                                 #! PC = 0x5555550cf8 *)
xor w9@uint32 w9 w13;
(* eor	w10, w10, w14                               #! PC = 0x5555550cfc *)
xor w10@uint32 w10 w14;
(* eor	w11, w11, w15                               #! PC = 0x5555550d00 *)
xor w11@uint32 w11 w15;
(* eor	w12, w12, w16                               #! PC = 0x5555550d04 *)
xor w12@uint32 w12 w16;
(* ror	w9, w9, #25                                 #! PC = 0x5555550d08 *)
ror w9@uint32 w9 25;
(* ror	w10, w10, #25                               #! PC = 0x5555550d0c *)
ror w10@uint32 w10 25;
(* ror	w11, w11, #25                               #! PC = 0x5555550d10 *)
ror w11@uint32 w11 25;
(* ror	w12, w12, #25                               #! PC = 0x5555550d14 *)
ror w12@uint32 w12 25;
(* add	w5, w5, w10                                 #! PC = 0x5555550d18 *)
adds dc w5 w5 w10;
(* add	w6, w6, w11                                 #! PC = 0x5555550d1c *)
adds dc w6 w6 w11;
(* add	w7, w7, w12                                 #! PC = 0x5555550d20 *)
adds dc w7 w7 w12;
(* add	w8, w8, w9                                  #! PC = 0x5555550d24 *)
adds dc w8 w8 w9;
(* eor	w21, w21, w5                                #! PC = 0x5555550d28 *)
xor w21@uint32 w21 w5;
(* eor	w17, w17, w6                                #! PC = 0x5555550d2c *)
xor w17@uint32 w17 w6;
(* eor	w19, w19, w7                                #! PC = 0x5555550d30 *)
xor w19@uint32 w19 w7;
(* eor	w20, w20, w8                                #! PC = 0x5555550d34 *)
xor w20@uint32 w20 w8;
(* ror	w21, w21, #16                               #! PC = 0x5555550d38 *)
ror w21@uint32 w21 16;
(* ror	w17, w17, #16                               #! PC = 0x5555550d3c *)
ror w17@uint32 w17 16;
(* ror	w19, w19, #16                               #! PC = 0x5555550d40 *)
ror w19@uint32 w19 16;
(* ror	w20, w20, #16                               #! PC = 0x5555550d44 *)
ror w20@uint32 w20 16;
(* add	w15, w15, w21                               #! PC = 0x5555550d48 *)
adds dc w15 w15 w21;
(* add	w16, w16, w17                               #! PC = 0x5555550d4c *)
adds dc w16 w16 w17;
(* add	w13, w13, w19                               #! PC = 0x5555550d50 *)
adds dc w13 w13 w19;
(* add	w14, w14, w20                               #! PC = 0x5555550d54 *)
adds dc w14 w14 w20;
(* eor	w10, w10, w15                               #! PC = 0x5555550d58 *)
xor w10@uint32 w10 w15;
(* eor	w11, w11, w16                               #! PC = 0x5555550d5c *)
xor w11@uint32 w11 w16;
(* eor	w12, w12, w13                               #! PC = 0x5555550d60 *)
xor w12@uint32 w12 w13;
(* eor	w9, w9, w14                                 #! PC = 0x5555550d64 *)
xor w9@uint32 w9 w14;
(* ror	w10, w10, #20                               #! PC = 0x5555550d68 *)
ror w10@uint32 w10 20;
(* ror	w11, w11, #20                               #! PC = 0x5555550d6c *)
ror w11@uint32 w11 20;
(* ror	w12, w12, #20                               #! PC = 0x5555550d70 *)
ror w12@uint32 w12 20;
(* ror	w9, w9, #20                                 #! PC = 0x5555550d74 *)
ror w9@uint32 w9 20;
(* add	w5, w5, w10                                 #! PC = 0x5555550d78 *)
adds dc w5 w5 w10;
(* add	w6, w6, w11                                 #! PC = 0x5555550d7c *)
adds dc w6 w6 w11;
(* add	w7, w7, w12                                 #! PC = 0x5555550d80 *)
adds dc w7 w7 w12;
(* add	w8, w8, w9                                  #! PC = 0x5555550d84 *)
adds dc w8 w8 w9;
(* eor	w21, w21, w5                                #! PC = 0x5555550d88 *)
xor w21@uint32 w21 w5;
(* eor	w17, w17, w6                                #! PC = 0x5555550d8c *)
xor w17@uint32 w17 w6;
(* eor	w19, w19, w7                                #! PC = 0x5555550d90 *)
xor w19@uint32 w19 w7;
(* eor	w20, w20, w8                                #! PC = 0x5555550d94 *)
xor w20@uint32 w20 w8;
(* ror	w21, w21, #24                               #! PC = 0x5555550d98 *)
ror w21@uint32 w21 24;
(* ror	w17, w17, #24                               #! PC = 0x5555550d9c *)
ror w17@uint32 w17 24;
(* ror	w19, w19, #24                               #! PC = 0x5555550da0 *)
ror w19@uint32 w19 24;
(* ror	w20, w20, #24                               #! PC = 0x5555550da4 *)
ror w20@uint32 w20 24;
(* add	w15, w15, w21                               #! PC = 0x5555550da8 *)
adds dc w15 w15 w21;
(* add	w16, w16, w17                               #! PC = 0x5555550dac *)
adds dc w16 w16 w17;
(* add	w13, w13, w19                               #! PC = 0x5555550db0 *)
adds dc w13 w13 w19;
(* add	w14, w14, w20                               #! PC = 0x5555550db4 *)
adds dc w14 w14 w20;
(* eor	w10, w10, w15                               #! PC = 0x5555550db8 *)
xor w10@uint32 w10 w15;
(* eor	w11, w11, w16                               #! PC = 0x5555550dbc *)
xor w11@uint32 w11 w16;
(* eor	w12, w12, w13                               #! PC = 0x5555550dc0 *)
xor w12@uint32 w12 w13;
(* eor	w9, w9, w14                                 #! PC = 0x5555550dc4 *)
xor w9@uint32 w9 w14;
(* ror	w10, w10, #25                               #! PC = 0x5555550dc8 *)
ror w10@uint32 w10 25;
(* ror	w11, w11, #25                               #! PC = 0x5555550dcc *)
ror w11@uint32 w11 25;
(* ror	w12, w12, #25                               #! PC = 0x5555550dd0 *)
ror w12@uint32 w12 25;
(* ror	w9, w9, #25                                 #! PC = 0x5555550dd4 *)
ror w9@uint32 w9 25;
(* #cbnz	x4, 0x5555550c54 <ChaCha20_ctr32_dflt+148>#! PC = 0x5555550dd8 *)
#cbnz	x4, 0x5555550c54 <ChaCha20_ctr32_dflt+148>#! 0x5555550dd8 = 0x5555550dd8;
(* sub	x4, x4, #0x1                                #! PC = 0x5555550c54 *)
(* sub x4, x4, 0x1 *)
nop;
(* add	w5, w5, w9                                  #! PC = 0x5555550c58 *)
adds dc w5 w5 w9;
(* add	w6, w6, w10                                 #! PC = 0x5555550c5c *)
adds dc w6 w6 w10;
(* add	w7, w7, w11                                 #! PC = 0x5555550c60 *)
adds dc w7 w7 w11;
(* add	w8, w8, w12                                 #! PC = 0x5555550c64 *)
adds dc w8 w8 w12;
(* eor	w17, w17, w5                                #! PC = 0x5555550c68 *)
xor w17@uint32 w17 w5;
(* eor	w19, w19, w6                                #! PC = 0x5555550c6c *)
xor w19@uint32 w19 w6;
(* eor	w20, w20, w7                                #! PC = 0x5555550c70 *)
xor w20@uint32 w20 w7;
(* eor	w21, w21, w8                                #! PC = 0x5555550c74 *)
xor w21@uint32 w21 w8;
(* ror	w17, w17, #16                               #! PC = 0x5555550c78 *)
ror w17@uint32 w17 16;
(* ror	w19, w19, #16                               #! PC = 0x5555550c7c *)
ror w19@uint32 w19 16;
(* ror	w20, w20, #16                               #! PC = 0x5555550c80 *)
ror w20@uint32 w20 16;
(* ror	w21, w21, #16                               #! PC = 0x5555550c84 *)
ror w21@uint32 w21 16;
(* add	w13, w13, w17                               #! PC = 0x5555550c88 *)
adds dc w13 w13 w17;
(* add	w14, w14, w19                               #! PC = 0x5555550c8c *)
adds dc w14 w14 w19;
(* add	w15, w15, w20                               #! PC = 0x5555550c90 *)
adds dc w15 w15 w20;
(* add	w16, w16, w21                               #! PC = 0x5555550c94 *)
adds dc w16 w16 w21;
(* eor	w9, w9, w13                                 #! PC = 0x5555550c98 *)
xor w9@uint32 w9 w13;
(* eor	w10, w10, w14                               #! PC = 0x5555550c9c *)
xor w10@uint32 w10 w14;
(* eor	w11, w11, w15                               #! PC = 0x5555550ca0 *)
xor w11@uint32 w11 w15;
(* eor	w12, w12, w16                               #! PC = 0x5555550ca4 *)
xor w12@uint32 w12 w16;
(* ror	w9, w9, #20                                 #! PC = 0x5555550ca8 *)
ror w9@uint32 w9 20;
(* ror	w10, w10, #20                               #! PC = 0x5555550cac *)
ror w10@uint32 w10 20;
(* ror	w11, w11, #20                               #! PC = 0x5555550cb0 *)
ror w11@uint32 w11 20;
(* ror	w12, w12, #20                               #! PC = 0x5555550cb4 *)
ror w12@uint32 w12 20;
(* add	w5, w5, w9                                  #! PC = 0x5555550cb8 *)
adds dc w5 w5 w9;
(* add	w6, w6, w10                                 #! PC = 0x5555550cbc *)
adds dc w6 w6 w10;
(* add	w7, w7, w11                                 #! PC = 0x5555550cc0 *)
adds dc w7 w7 w11;
(* add	w8, w8, w12                                 #! PC = 0x5555550cc4 *)
adds dc w8 w8 w12;
(* eor	w17, w17, w5                                #! PC = 0x5555550cc8 *)
xor w17@uint32 w17 w5;
(* eor	w19, w19, w6                                #! PC = 0x5555550ccc *)
xor w19@uint32 w19 w6;
(* eor	w20, w20, w7                                #! PC = 0x5555550cd0 *)
xor w20@uint32 w20 w7;
(* eor	w21, w21, w8                                #! PC = 0x5555550cd4 *)
xor w21@uint32 w21 w8;
(* ror	w17, w17, #24                               #! PC = 0x5555550cd8 *)
ror w17@uint32 w17 24;
(* ror	w19, w19, #24                               #! PC = 0x5555550cdc *)
ror w19@uint32 w19 24;
(* ror	w20, w20, #24                               #! PC = 0x5555550ce0 *)
ror w20@uint32 w20 24;
(* ror	w21, w21, #24                               #! PC = 0x5555550ce4 *)
ror w21@uint32 w21 24;
(* add	w13, w13, w17                               #! PC = 0x5555550ce8 *)
adds dc w13 w13 w17;
(* add	w14, w14, w19                               #! PC = 0x5555550cec *)
adds dc w14 w14 w19;
(* add	w15, w15, w20                               #! PC = 0x5555550cf0 *)
adds dc w15 w15 w20;
(* add	w16, w16, w21                               #! PC = 0x5555550cf4 *)
adds dc w16 w16 w21;
(* eor	w9, w9, w13                                 #! PC = 0x5555550cf8 *)
xor w9@uint32 w9 w13;
(* eor	w10, w10, w14                               #! PC = 0x5555550cfc *)
xor w10@uint32 w10 w14;
(* eor	w11, w11, w15                               #! PC = 0x5555550d00 *)
xor w11@uint32 w11 w15;
(* eor	w12, w12, w16                               #! PC = 0x5555550d04 *)
xor w12@uint32 w12 w16;
(* ror	w9, w9, #25                                 #! PC = 0x5555550d08 *)
ror w9@uint32 w9 25;
(* ror	w10, w10, #25                               #! PC = 0x5555550d0c *)
ror w10@uint32 w10 25;
(* ror	w11, w11, #25                               #! PC = 0x5555550d10 *)
ror w11@uint32 w11 25;
(* ror	w12, w12, #25                               #! PC = 0x5555550d14 *)
ror w12@uint32 w12 25;
(* add	w5, w5, w10                                 #! PC = 0x5555550d18 *)
adds dc w5 w5 w10;
(* add	w6, w6, w11                                 #! PC = 0x5555550d1c *)
adds dc w6 w6 w11;
(* add	w7, w7, w12                                 #! PC = 0x5555550d20 *)
adds dc w7 w7 w12;
(* add	w8, w8, w9                                  #! PC = 0x5555550d24 *)
adds dc w8 w8 w9;
(* eor	w21, w21, w5                                #! PC = 0x5555550d28 *)
xor w21@uint32 w21 w5;
(* eor	w17, w17, w6                                #! PC = 0x5555550d2c *)
xor w17@uint32 w17 w6;
(* eor	w19, w19, w7                                #! PC = 0x5555550d30 *)
xor w19@uint32 w19 w7;
(* eor	w20, w20, w8                                #! PC = 0x5555550d34 *)
xor w20@uint32 w20 w8;
(* ror	w21, w21, #16                               #! PC = 0x5555550d38 *)
ror w21@uint32 w21 16;
(* ror	w17, w17, #16                               #! PC = 0x5555550d3c *)
ror w17@uint32 w17 16;
(* ror	w19, w19, #16                               #! PC = 0x5555550d40 *)
ror w19@uint32 w19 16;
(* ror	w20, w20, #16                               #! PC = 0x5555550d44 *)
ror w20@uint32 w20 16;
(* add	w15, w15, w21                               #! PC = 0x5555550d48 *)
adds dc w15 w15 w21;
(* add	w16, w16, w17                               #! PC = 0x5555550d4c *)
adds dc w16 w16 w17;
(* add	w13, w13, w19                               #! PC = 0x5555550d50 *)
adds dc w13 w13 w19;
(* add	w14, w14, w20                               #! PC = 0x5555550d54 *)
adds dc w14 w14 w20;
(* eor	w10, w10, w15                               #! PC = 0x5555550d58 *)
xor w10@uint32 w10 w15;
(* eor	w11, w11, w16                               #! PC = 0x5555550d5c *)
xor w11@uint32 w11 w16;
(* eor	w12, w12, w13                               #! PC = 0x5555550d60 *)
xor w12@uint32 w12 w13;
(* eor	w9, w9, w14                                 #! PC = 0x5555550d64 *)
xor w9@uint32 w9 w14;
(* ror	w10, w10, #20                               #! PC = 0x5555550d68 *)
ror w10@uint32 w10 20;
(* ror	w11, w11, #20                               #! PC = 0x5555550d6c *)
ror w11@uint32 w11 20;
(* ror	w12, w12, #20                               #! PC = 0x5555550d70 *)
ror w12@uint32 w12 20;
(* ror	w9, w9, #20                                 #! PC = 0x5555550d74 *)
ror w9@uint32 w9 20;
(* add	w5, w5, w10                                 #! PC = 0x5555550d78 *)
adds dc w5 w5 w10;
(* add	w6, w6, w11                                 #! PC = 0x5555550d7c *)
adds dc w6 w6 w11;
(* add	w7, w7, w12                                 #! PC = 0x5555550d80 *)
adds dc w7 w7 w12;
(* add	w8, w8, w9                                  #! PC = 0x5555550d84 *)
adds dc w8 w8 w9;
(* eor	w21, w21, w5                                #! PC = 0x5555550d88 *)
xor w21@uint32 w21 w5;
(* eor	w17, w17, w6                                #! PC = 0x5555550d8c *)
xor w17@uint32 w17 w6;
(* eor	w19, w19, w7                                #! PC = 0x5555550d90 *)
xor w19@uint32 w19 w7;
(* eor	w20, w20, w8                                #! PC = 0x5555550d94 *)
xor w20@uint32 w20 w8;
(* ror	w21, w21, #24                               #! PC = 0x5555550d98 *)
ror w21@uint32 w21 24;
(* ror	w17, w17, #24                               #! PC = 0x5555550d9c *)
ror w17@uint32 w17 24;
(* ror	w19, w19, #24                               #! PC = 0x5555550da0 *)
ror w19@uint32 w19 24;
(* ror	w20, w20, #24                               #! PC = 0x5555550da4 *)
ror w20@uint32 w20 24;
(* add	w15, w15, w21                               #! PC = 0x5555550da8 *)
adds dc w15 w15 w21;
(* add	w16, w16, w17                               #! PC = 0x5555550dac *)
adds dc w16 w16 w17;
(* add	w13, w13, w19                               #! PC = 0x5555550db0 *)
adds dc w13 w13 w19;
(* add	w14, w14, w20                               #! PC = 0x5555550db4 *)
adds dc w14 w14 w20;
(* eor	w10, w10, w15                               #! PC = 0x5555550db8 *)
xor w10@uint32 w10 w15;
(* eor	w11, w11, w16                               #! PC = 0x5555550dbc *)
xor w11@uint32 w11 w16;
(* eor	w12, w12, w13                               #! PC = 0x5555550dc0 *)
xor w12@uint32 w12 w13;
(* eor	w9, w9, w14                                 #! PC = 0x5555550dc4 *)
xor w9@uint32 w9 w14;
(* ror	w10, w10, #25                               #! PC = 0x5555550dc8 *)
ror w10@uint32 w10 25;
(* ror	w11, w11, #25                               #! PC = 0x5555550dcc *)
ror w11@uint32 w11 25;
(* ror	w12, w12, #25                               #! PC = 0x5555550dd0 *)
ror w12@uint32 w12 25;
(* ror	w9, w9, #25                                 #! PC = 0x5555550dd4 *)
ror w9@uint32 w9 25;
(* #cbnz	x4, 0x5555550c54 <ChaCha20_ctr32_dflt+148>#! PC = 0x5555550dd8 *)
#cbnz	x4, 0x5555550c54 <ChaCha20_ctr32_dflt+148>#! 0x5555550dd8 = 0x5555550dd8;
(* sub	x4, x4, #0x1                                #! PC = 0x5555550c54 *)
(* sub x4, x4, 0x1 *)
nop;
(* add	w5, w5, w9                                  #! PC = 0x5555550c58 *)
adds dc w5 w5 w9;
(* add	w6, w6, w10                                 #! PC = 0x5555550c5c *)
adds dc w6 w6 w10;
(* add	w7, w7, w11                                 #! PC = 0x5555550c60 *)
adds dc w7 w7 w11;
(* add	w8, w8, w12                                 #! PC = 0x5555550c64 *)
adds dc w8 w8 w12;
(* eor	w17, w17, w5                                #! PC = 0x5555550c68 *)
xor w17@uint32 w17 w5;
(* eor	w19, w19, w6                                #! PC = 0x5555550c6c *)
xor w19@uint32 w19 w6;
(* eor	w20, w20, w7                                #! PC = 0x5555550c70 *)
xor w20@uint32 w20 w7;
(* eor	w21, w21, w8                                #! PC = 0x5555550c74 *)
xor w21@uint32 w21 w8;
(* ror	w17, w17, #16                               #! PC = 0x5555550c78 *)
ror w17@uint32 w17 16;
(* ror	w19, w19, #16                               #! PC = 0x5555550c7c *)
ror w19@uint32 w19 16;
(* ror	w20, w20, #16                               #! PC = 0x5555550c80 *)
ror w20@uint32 w20 16;
(* ror	w21, w21, #16                               #! PC = 0x5555550c84 *)
ror w21@uint32 w21 16;
(* add	w13, w13, w17                               #! PC = 0x5555550c88 *)
adds dc w13 w13 w17;
(* add	w14, w14, w19                               #! PC = 0x5555550c8c *)
adds dc w14 w14 w19;
(* add	w15, w15, w20                               #! PC = 0x5555550c90 *)
adds dc w15 w15 w20;
(* add	w16, w16, w21                               #! PC = 0x5555550c94 *)
adds dc w16 w16 w21;
(* eor	w9, w9, w13                                 #! PC = 0x5555550c98 *)
xor w9@uint32 w9 w13;
(* eor	w10, w10, w14                               #! PC = 0x5555550c9c *)
xor w10@uint32 w10 w14;
(* eor	w11, w11, w15                               #! PC = 0x5555550ca0 *)
xor w11@uint32 w11 w15;
(* eor	w12, w12, w16                               #! PC = 0x5555550ca4 *)
xor w12@uint32 w12 w16;
(* ror	w9, w9, #20                                 #! PC = 0x5555550ca8 *)
ror w9@uint32 w9 20;
(* ror	w10, w10, #20                               #! PC = 0x5555550cac *)
ror w10@uint32 w10 20;
(* ror	w11, w11, #20                               #! PC = 0x5555550cb0 *)
ror w11@uint32 w11 20;
(* ror	w12, w12, #20                               #! PC = 0x5555550cb4 *)
ror w12@uint32 w12 20;
(* add	w5, w5, w9                                  #! PC = 0x5555550cb8 *)
adds dc w5 w5 w9;
(* add	w6, w6, w10                                 #! PC = 0x5555550cbc *)
adds dc w6 w6 w10;
(* add	w7, w7, w11                                 #! PC = 0x5555550cc0 *)
adds dc w7 w7 w11;
(* add	w8, w8, w12                                 #! PC = 0x5555550cc4 *)
adds dc w8 w8 w12;
(* eor	w17, w17, w5                                #! PC = 0x5555550cc8 *)
xor w17@uint32 w17 w5;
(* eor	w19, w19, w6                                #! PC = 0x5555550ccc *)
xor w19@uint32 w19 w6;
(* eor	w20, w20, w7                                #! PC = 0x5555550cd0 *)
xor w20@uint32 w20 w7;
(* eor	w21, w21, w8                                #! PC = 0x5555550cd4 *)
xor w21@uint32 w21 w8;
(* ror	w17, w17, #24                               #! PC = 0x5555550cd8 *)
ror w17@uint32 w17 24;
(* ror	w19, w19, #24                               #! PC = 0x5555550cdc *)
ror w19@uint32 w19 24;
(* ror	w20, w20, #24                               #! PC = 0x5555550ce0 *)
ror w20@uint32 w20 24;
(* ror	w21, w21, #24                               #! PC = 0x5555550ce4 *)
ror w21@uint32 w21 24;
(* add	w13, w13, w17                               #! PC = 0x5555550ce8 *)
adds dc w13 w13 w17;
(* add	w14, w14, w19                               #! PC = 0x5555550cec *)
adds dc w14 w14 w19;
(* add	w15, w15, w20                               #! PC = 0x5555550cf0 *)
adds dc w15 w15 w20;
(* add	w16, w16, w21                               #! PC = 0x5555550cf4 *)
adds dc w16 w16 w21;
(* eor	w9, w9, w13                                 #! PC = 0x5555550cf8 *)
xor w9@uint32 w9 w13;
(* eor	w10, w10, w14                               #! PC = 0x5555550cfc *)
xor w10@uint32 w10 w14;
(* eor	w11, w11, w15                               #! PC = 0x5555550d00 *)
xor w11@uint32 w11 w15;
(* eor	w12, w12, w16                               #! PC = 0x5555550d04 *)
xor w12@uint32 w12 w16;
(* ror	w9, w9, #25                                 #! PC = 0x5555550d08 *)
ror w9@uint32 w9 25;
(* ror	w10, w10, #25                               #! PC = 0x5555550d0c *)
ror w10@uint32 w10 25;
(* ror	w11, w11, #25                               #! PC = 0x5555550d10 *)
ror w11@uint32 w11 25;
(* ror	w12, w12, #25                               #! PC = 0x5555550d14 *)
ror w12@uint32 w12 25;
(* add	w5, w5, w10                                 #! PC = 0x5555550d18 *)
adds dc w5 w5 w10;
(* add	w6, w6, w11                                 #! PC = 0x5555550d1c *)
adds dc w6 w6 w11;
(* add	w7, w7, w12                                 #! PC = 0x5555550d20 *)
adds dc w7 w7 w12;
(* add	w8, w8, w9                                  #! PC = 0x5555550d24 *)
adds dc w8 w8 w9;
(* eor	w21, w21, w5                                #! PC = 0x5555550d28 *)
xor w21@uint32 w21 w5;
(* eor	w17, w17, w6                                #! PC = 0x5555550d2c *)
xor w17@uint32 w17 w6;
(* eor	w19, w19, w7                                #! PC = 0x5555550d30 *)
xor w19@uint32 w19 w7;
(* eor	w20, w20, w8                                #! PC = 0x5555550d34 *)
xor w20@uint32 w20 w8;
(* ror	w21, w21, #16                               #! PC = 0x5555550d38 *)
ror w21@uint32 w21 16;
(* ror	w17, w17, #16                               #! PC = 0x5555550d3c *)
ror w17@uint32 w17 16;
(* ror	w19, w19, #16                               #! PC = 0x5555550d40 *)
ror w19@uint32 w19 16;
(* ror	w20, w20, #16                               #! PC = 0x5555550d44 *)
ror w20@uint32 w20 16;
(* add	w15, w15, w21                               #! PC = 0x5555550d48 *)
adds dc w15 w15 w21;
(* add	w16, w16, w17                               #! PC = 0x5555550d4c *)
adds dc w16 w16 w17;
(* add	w13, w13, w19                               #! PC = 0x5555550d50 *)
adds dc w13 w13 w19;
(* add	w14, w14, w20                               #! PC = 0x5555550d54 *)
adds dc w14 w14 w20;
(* eor	w10, w10, w15                               #! PC = 0x5555550d58 *)
xor w10@uint32 w10 w15;
(* eor	w11, w11, w16                               #! PC = 0x5555550d5c *)
xor w11@uint32 w11 w16;
(* eor	w12, w12, w13                               #! PC = 0x5555550d60 *)
xor w12@uint32 w12 w13;
(* eor	w9, w9, w14                                 #! PC = 0x5555550d64 *)
xor w9@uint32 w9 w14;
(* ror	w10, w10, #20                               #! PC = 0x5555550d68 *)
ror w10@uint32 w10 20;
(* ror	w11, w11, #20                               #! PC = 0x5555550d6c *)
ror w11@uint32 w11 20;
(* ror	w12, w12, #20                               #! PC = 0x5555550d70 *)
ror w12@uint32 w12 20;
(* ror	w9, w9, #20                                 #! PC = 0x5555550d74 *)
ror w9@uint32 w9 20;
(* add	w5, w5, w10                                 #! PC = 0x5555550d78 *)
adds dc w5 w5 w10;
(* add	w6, w6, w11                                 #! PC = 0x5555550d7c *)
adds dc w6 w6 w11;
(* add	w7, w7, w12                                 #! PC = 0x5555550d80 *)
adds dc w7 w7 w12;
(* add	w8, w8, w9                                  #! PC = 0x5555550d84 *)
adds dc w8 w8 w9;
(* eor	w21, w21, w5                                #! PC = 0x5555550d88 *)
xor w21@uint32 w21 w5;
(* eor	w17, w17, w6                                #! PC = 0x5555550d8c *)
xor w17@uint32 w17 w6;
(* eor	w19, w19, w7                                #! PC = 0x5555550d90 *)
xor w19@uint32 w19 w7;
(* eor	w20, w20, w8                                #! PC = 0x5555550d94 *)
xor w20@uint32 w20 w8;
(* ror	w21, w21, #24                               #! PC = 0x5555550d98 *)
ror w21@uint32 w21 24;
(* ror	w17, w17, #24                               #! PC = 0x5555550d9c *)
ror w17@uint32 w17 24;
(* ror	w19, w19, #24                               #! PC = 0x5555550da0 *)
ror w19@uint32 w19 24;
(* ror	w20, w20, #24                               #! PC = 0x5555550da4 *)
ror w20@uint32 w20 24;
(* add	w15, w15, w21                               #! PC = 0x5555550da8 *)
adds dc w15 w15 w21;
(* add	w16, w16, w17                               #! PC = 0x5555550dac *)
adds dc w16 w16 w17;
(* add	w13, w13, w19                               #! PC = 0x5555550db0 *)
adds dc w13 w13 w19;
(* add	w14, w14, w20                               #! PC = 0x5555550db4 *)
adds dc w14 w14 w20;
(* eor	w10, w10, w15                               #! PC = 0x5555550db8 *)
xor w10@uint32 w10 w15;
(* eor	w11, w11, w16                               #! PC = 0x5555550dbc *)
xor w11@uint32 w11 w16;
(* eor	w12, w12, w13                               #! PC = 0x5555550dc0 *)
xor w12@uint32 w12 w13;
(* eor	w9, w9, w14                                 #! PC = 0x5555550dc4 *)
xor w9@uint32 w9 w14;
(* ror	w10, w10, #25                               #! PC = 0x5555550dc8 *)
ror w10@uint32 w10 25;
(* ror	w11, w11, #25                               #! PC = 0x5555550dcc *)
ror w11@uint32 w11 25;
(* ror	w12, w12, #25                               #! PC = 0x5555550dd0 *)
ror w12@uint32 w12 25;
(* ror	w9, w9, #25                                 #! PC = 0x5555550dd4 *)
ror w9@uint32 w9 25;
(* #cbnz	x4, 0x5555550c54 <ChaCha20_ctr32_dflt+148>#! PC = 0x5555550dd8 *)
#cbnz	x4, 0x5555550c54 <ChaCha20_ctr32_dflt+148>#! 0x5555550dd8 = 0x5555550dd8;
(* sub	x4, x4, #0x1                                #! PC = 0x5555550c54 *)
(* sub x4, x4, 0x1 *)
nop;
(* add	w5, w5, w9                                  #! PC = 0x5555550c58 *)
adds dc w5 w5 w9;
(* add	w6, w6, w10                                 #! PC = 0x5555550c5c *)
adds dc w6 w6 w10;
(* add	w7, w7, w11                                 #! PC = 0x5555550c60 *)
adds dc w7 w7 w11;
(* add	w8, w8, w12                                 #! PC = 0x5555550c64 *)
adds dc w8 w8 w12;
(* eor	w17, w17, w5                                #! PC = 0x5555550c68 *)
xor w17@uint32 w17 w5;
(* eor	w19, w19, w6                                #! PC = 0x5555550c6c *)
xor w19@uint32 w19 w6;
(* eor	w20, w20, w7                                #! PC = 0x5555550c70 *)
xor w20@uint32 w20 w7;
(* eor	w21, w21, w8                                #! PC = 0x5555550c74 *)
xor w21@uint32 w21 w8;
(* ror	w17, w17, #16                               #! PC = 0x5555550c78 *)
ror w17@uint32 w17 16;
(* ror	w19, w19, #16                               #! PC = 0x5555550c7c *)
ror w19@uint32 w19 16;
(* ror	w20, w20, #16                               #! PC = 0x5555550c80 *)
ror w20@uint32 w20 16;
(* ror	w21, w21, #16                               #! PC = 0x5555550c84 *)
ror w21@uint32 w21 16;
(* add	w13, w13, w17                               #! PC = 0x5555550c88 *)
adds dc w13 w13 w17;
(* add	w14, w14, w19                               #! PC = 0x5555550c8c *)
adds dc w14 w14 w19;
(* add	w15, w15, w20                               #! PC = 0x5555550c90 *)
adds dc w15 w15 w20;
(* add	w16, w16, w21                               #! PC = 0x5555550c94 *)
adds dc w16 w16 w21;
(* eor	w9, w9, w13                                 #! PC = 0x5555550c98 *)
xor w9@uint32 w9 w13;
(* eor	w10, w10, w14                               #! PC = 0x5555550c9c *)
xor w10@uint32 w10 w14;
(* eor	w11, w11, w15                               #! PC = 0x5555550ca0 *)
xor w11@uint32 w11 w15;
(* eor	w12, w12, w16                               #! PC = 0x5555550ca4 *)
xor w12@uint32 w12 w16;
(* ror	w9, w9, #20                                 #! PC = 0x5555550ca8 *)
ror w9@uint32 w9 20;
(* ror	w10, w10, #20                               #! PC = 0x5555550cac *)
ror w10@uint32 w10 20;
(* ror	w11, w11, #20                               #! PC = 0x5555550cb0 *)
ror w11@uint32 w11 20;
(* ror	w12, w12, #20                               #! PC = 0x5555550cb4 *)
ror w12@uint32 w12 20;
(* add	w5, w5, w9                                  #! PC = 0x5555550cb8 *)
adds dc w5 w5 w9;
(* add	w6, w6, w10                                 #! PC = 0x5555550cbc *)
adds dc w6 w6 w10;
(* add	w7, w7, w11                                 #! PC = 0x5555550cc0 *)
adds dc w7 w7 w11;
(* add	w8, w8, w12                                 #! PC = 0x5555550cc4 *)
adds dc w8 w8 w12;
(* eor	w17, w17, w5                                #! PC = 0x5555550cc8 *)
xor w17@uint32 w17 w5;
(* eor	w19, w19, w6                                #! PC = 0x5555550ccc *)
xor w19@uint32 w19 w6;
(* eor	w20, w20, w7                                #! PC = 0x5555550cd0 *)
xor w20@uint32 w20 w7;
(* eor	w21, w21, w8                                #! PC = 0x5555550cd4 *)
xor w21@uint32 w21 w8;
(* ror	w17, w17, #24                               #! PC = 0x5555550cd8 *)
ror w17@uint32 w17 24;
(* ror	w19, w19, #24                               #! PC = 0x5555550cdc *)
ror w19@uint32 w19 24;
(* ror	w20, w20, #24                               #! PC = 0x5555550ce0 *)
ror w20@uint32 w20 24;
(* ror	w21, w21, #24                               #! PC = 0x5555550ce4 *)
ror w21@uint32 w21 24;
(* add	w13, w13, w17                               #! PC = 0x5555550ce8 *)
adds dc w13 w13 w17;
(* add	w14, w14, w19                               #! PC = 0x5555550cec *)
adds dc w14 w14 w19;
(* add	w15, w15, w20                               #! PC = 0x5555550cf0 *)
adds dc w15 w15 w20;
(* add	w16, w16, w21                               #! PC = 0x5555550cf4 *)
adds dc w16 w16 w21;
(* eor	w9, w9, w13                                 #! PC = 0x5555550cf8 *)
xor w9@uint32 w9 w13;
(* eor	w10, w10, w14                               #! PC = 0x5555550cfc *)
xor w10@uint32 w10 w14;
(* eor	w11, w11, w15                               #! PC = 0x5555550d00 *)
xor w11@uint32 w11 w15;
(* eor	w12, w12, w16                               #! PC = 0x5555550d04 *)
xor w12@uint32 w12 w16;
(* ror	w9, w9, #25                                 #! PC = 0x5555550d08 *)
ror w9@uint32 w9 25;
(* ror	w10, w10, #25                               #! PC = 0x5555550d0c *)
ror w10@uint32 w10 25;
(* ror	w11, w11, #25                               #! PC = 0x5555550d10 *)
ror w11@uint32 w11 25;
(* ror	w12, w12, #25                               #! PC = 0x5555550d14 *)
ror w12@uint32 w12 25;
(* add	w5, w5, w10                                 #! PC = 0x5555550d18 *)
adds dc w5 w5 w10;
(* add	w6, w6, w11                                 #! PC = 0x5555550d1c *)
adds dc w6 w6 w11;
(* add	w7, w7, w12                                 #! PC = 0x5555550d20 *)
adds dc w7 w7 w12;
(* add	w8, w8, w9                                  #! PC = 0x5555550d24 *)
adds dc w8 w8 w9;
(* eor	w21, w21, w5                                #! PC = 0x5555550d28 *)
xor w21@uint32 w21 w5;
(* eor	w17, w17, w6                                #! PC = 0x5555550d2c *)
xor w17@uint32 w17 w6;
(* eor	w19, w19, w7                                #! PC = 0x5555550d30 *)
xor w19@uint32 w19 w7;
(* eor	w20, w20, w8                                #! PC = 0x5555550d34 *)
xor w20@uint32 w20 w8;
(* ror	w21, w21, #16                               #! PC = 0x5555550d38 *)
ror w21@uint32 w21 16;
(* ror	w17, w17, #16                               #! PC = 0x5555550d3c *)
ror w17@uint32 w17 16;
(* ror	w19, w19, #16                               #! PC = 0x5555550d40 *)
ror w19@uint32 w19 16;
(* ror	w20, w20, #16                               #! PC = 0x5555550d44 *)
ror w20@uint32 w20 16;
(* add	w15, w15, w21                               #! PC = 0x5555550d48 *)
adds dc w15 w15 w21;
(* add	w16, w16, w17                               #! PC = 0x5555550d4c *)
adds dc w16 w16 w17;
(* add	w13, w13, w19                               #! PC = 0x5555550d50 *)
adds dc w13 w13 w19;
(* add	w14, w14, w20                               #! PC = 0x5555550d54 *)
adds dc w14 w14 w20;
(* eor	w10, w10, w15                               #! PC = 0x5555550d58 *)
xor w10@uint32 w10 w15;
(* eor	w11, w11, w16                               #! PC = 0x5555550d5c *)
xor w11@uint32 w11 w16;
(* eor	w12, w12, w13                               #! PC = 0x5555550d60 *)
xor w12@uint32 w12 w13;
(* eor	w9, w9, w14                                 #! PC = 0x5555550d64 *)
xor w9@uint32 w9 w14;
(* ror	w10, w10, #20                               #! PC = 0x5555550d68 *)
ror w10@uint32 w10 20;
(* ror	w11, w11, #20                               #! PC = 0x5555550d6c *)
ror w11@uint32 w11 20;
(* ror	w12, w12, #20                               #! PC = 0x5555550d70 *)
ror w12@uint32 w12 20;
(* ror	w9, w9, #20                                 #! PC = 0x5555550d74 *)
ror w9@uint32 w9 20;
(* add	w5, w5, w10                                 #! PC = 0x5555550d78 *)
adds dc w5 w5 w10;
(* add	w6, w6, w11                                 #! PC = 0x5555550d7c *)
adds dc w6 w6 w11;
(* add	w7, w7, w12                                 #! PC = 0x5555550d80 *)
adds dc w7 w7 w12;
(* add	w8, w8, w9                                  #! PC = 0x5555550d84 *)
adds dc w8 w8 w9;
(* eor	w21, w21, w5                                #! PC = 0x5555550d88 *)
xor w21@uint32 w21 w5;
(* eor	w17, w17, w6                                #! PC = 0x5555550d8c *)
xor w17@uint32 w17 w6;
(* eor	w19, w19, w7                                #! PC = 0x5555550d90 *)
xor w19@uint32 w19 w7;
(* eor	w20, w20, w8                                #! PC = 0x5555550d94 *)
xor w20@uint32 w20 w8;
(* ror	w21, w21, #24                               #! PC = 0x5555550d98 *)
ror w21@uint32 w21 24;
(* ror	w17, w17, #24                               #! PC = 0x5555550d9c *)
ror w17@uint32 w17 24;
(* ror	w19, w19, #24                               #! PC = 0x5555550da0 *)
ror w19@uint32 w19 24;
(* ror	w20, w20, #24                               #! PC = 0x5555550da4 *)
ror w20@uint32 w20 24;
(* add	w15, w15, w21                               #! PC = 0x5555550da8 *)
adds dc w15 w15 w21;
(* add	w16, w16, w17                               #! PC = 0x5555550dac *)
adds dc w16 w16 w17;
(* add	w13, w13, w19                               #! PC = 0x5555550db0 *)
adds dc w13 w13 w19;
(* add	w14, w14, w20                               #! PC = 0x5555550db4 *)
adds dc w14 w14 w20;
(* eor	w10, w10, w15                               #! PC = 0x5555550db8 *)
xor w10@uint32 w10 w15;
(* eor	w11, w11, w16                               #! PC = 0x5555550dbc *)
xor w11@uint32 w11 w16;
(* eor	w12, w12, w13                               #! PC = 0x5555550dc0 *)
xor w12@uint32 w12 w13;
(* eor	w9, w9, w14                                 #! PC = 0x5555550dc4 *)
xor w9@uint32 w9 w14;
(* ror	w10, w10, #25                               #! PC = 0x5555550dc8 *)
ror w10@uint32 w10 25;
(* ror	w11, w11, #25                               #! PC = 0x5555550dcc *)
ror w11@uint32 w11 25;
(* ror	w12, w12, #25                               #! PC = 0x5555550dd0 *)
ror w12@uint32 w12 25;
(* ror	w9, w9, #25                                 #! PC = 0x5555550dd4 *)
ror w9@uint32 w9 25;
(* #cbnz	x4, 0x5555550c54 <ChaCha20_ctr32_dflt+148>#! PC = 0x5555550dd8 *)
#cbnz	x4, 0x5555550c54 <ChaCha20_ctr32_dflt+148>#! 0x5555550dd8 = 0x5555550dd8;
(* add	w5, w5, w22                                 #! PC = 0x5555550ddc *)
adds dc w5 w5 w22;
(* add	x6, x6, x22, lsr #32                        #! PC = 0x5555550de0 *)
adds dc w6 w6 Hw22;
(* add	w7, w7, w23                                 #! PC = 0x5555550de4 *)
adds dc w7 w7 w23;
(* add	x8, x8, x23, lsr #32                        #! PC = 0x5555550de8 *)
adds dc w8 w8 Hw23;
(* add	w9, w9, w24                                 #! PC = 0x5555550dec *)
adds dc w9 w9 w24;
(* add	x10, x10, x24, lsr #32                      #! PC = 0x5555550df0 *)
adds dc w10 w10 Hw24;
(* add	w11, w11, w25                               #! PC = 0x5555550df4 *)
adds dc w11 w11 w25;
(* add	x12, x12, x25, lsr #32                      #! PC = 0x5555550df8 *)
adds dc w12 w12 Hw25;
(* add	w13, w13, w26                               #! PC = 0x5555550dfc *)
adds dc w13 w13 w26;
(* add	x14, x14, x26, lsr #32                      #! PC = 0x5555550e00 *)
adds dc w14 w14 Hw26;
(* add	w15, w15, w27                               #! PC = 0x5555550e04 *)
adds dc w15 w15 w27;
(* add	x16, x16, x27, lsr #32                      #! PC = 0x5555550e08 *)
adds dc w16 w16 Hw27;
(* add	w17, w17, w28                               #! PC = 0x5555550e0c *)
adds dc w17 w17 w28;
(* add	x19, x19, x28, lsr #32                      #! PC = 0x5555550e10 *)
adds dc w19 w19 Hw28;
(* add	w20, w20, w30                               #! PC = 0x5555550e14 *)
adds dc w20 w20 w30;
(* add	x21, x21, x30, lsr #32                      #! PC = 0x5555550e18 *)
adds dc w21 w21 Hw30;

mov a0  w5; mov a1  w6;
mov a2  w7; mov a3  w8;
mov a4  w9; mov a5 w10;
mov a6 w11; mov a7 w12;
mov a8 w13; mov a9 w14;
mov aa w15; mov ab w16;
mov ac w17; mov ad w19;
mov ae w20; mov af w21;

{
  true
  &&
  true
}

