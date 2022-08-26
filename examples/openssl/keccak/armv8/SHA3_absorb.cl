proc main
(
uint64 a00, uint64 a01, uint64 a02, uint64 a03, uint64 a04,
uint64 a10, uint64 a11, uint64 a12, uint64 a13, uint64 a14,
uint64 a20, uint64 a21, uint64 a22, uint64 a23, uint64 a24,
uint64 a30, uint64 a31, uint64 a32, uint64 a33, uint64 a34,
uint64 a40, uint64 a41, uint64 a42, uint64 a43, uint64 a44,
uint64 A00, uint64 A01, uint64 A02, uint64 A03, uint64 A04,
uint64 A10, uint64 A11, uint64 A12, uint64 A13, uint64 A14,
uint64 A20, uint64 A21, uint64 A22, uint64 A23, uint64 A24,
uint64 A30, uint64 A31, uint64 A32, uint64 A33, uint64 A34,
uint64 A40, uint64 A41, uint64 A42, uint64 A43, uint64 A44)=

{
  true
  &&
  true
}

mov L0xaaaaaaaaa940 0x0000000000000001@uint64;
mov L0xaaaaaaaaa948 0x0000000000008082@uint64;
mov L0xaaaaaaaaa950 0x800000000000808a@uint64;
mov L0xaaaaaaaaa958 0x8000000080008000@uint64;
mov L0xaaaaaaaaa960 0x000000000000808b@uint64;
mov L0xaaaaaaaaa968 0x0000000080000001@uint64;
mov L0xaaaaaaaaa970 0x8000000080008081@uint64;
mov L0xaaaaaaaaa978 0x8000000000008009@uint64;
mov L0xaaaaaaaaa980 0x000000000000008a@uint64;
mov L0xaaaaaaaaa988 0x0000000000000088@uint64;
mov L0xaaaaaaaaa990 0x0000000080008009@uint64;
mov L0xaaaaaaaaa998 0x000000008000000a@uint64;
mov L0xaaaaaaaaa9a0 0x000000008000808b@uint64;
mov L0xaaaaaaaaa9a8 0x800000000000008b@uint64;
mov L0xaaaaaaaaa9b0 0x8000000000008089@uint64;
mov L0xaaaaaaaaa9b8 0x8000000000008003@uint64;
mov L0xaaaaaaaaa9c0 0x8000000000008002@uint64;
mov L0xaaaaaaaaa9c8 0x8000000000000080@uint64;
mov L0xaaaaaaaaa9d0 0x000000000000800a@uint64;
mov L0xaaaaaaaaa9d8 0x800000008000000a@uint64;
mov L0xaaaaaaaaa9e0 0x8000000080008081@uint64;
mov L0xaaaaaaaaa9e8 0x8000000000008080@uint64;
mov L0xaaaaaaaaa9f0 0x0000000080000001@uint64;
mov L0xaaaaaaaaa9f8 0x8000000080008008@uint64;

(* inputs *)
mov L0xaaaaaaabc018 A00;
mov L0xaaaaaaabc020 A01;
mov L0xaaaaaaabc028 A02;
mov L0xaaaaaaabc030 A03;
mov L0xaaaaaaabc038 A04;
mov L0xaaaaaaabc040 A10;
mov L0xaaaaaaabc048 A11;
mov L0xaaaaaaabc050 A12;
mov L0xaaaaaaabc058 A13;
mov L0xaaaaaaabc060 A14;
mov L0xaaaaaaabc068 A20;
mov L0xaaaaaaabc070 A21;
mov L0xaaaaaaabc078 A22;
mov L0xaaaaaaabc080 A23;
mov L0xaaaaaaabc088 A24;
mov L0xaaaaaaabc090 A30;
mov L0xaaaaaaabc098 A31;
mov L0xaaaaaaabc0a0 A32;
mov L0xaaaaaaabc0a8 A33;
mov L0xaaaaaaabc0b0 A34;
mov L0xaaaaaaabc0b8 A40;
mov L0xaaaaaaabc0c0 A41;
mov L0xaaaaaaabc0c8 A42;
mov L0xaaaaaaabc0d0 A43;
mov L0xaaaaaaabc0d8 A44;

(*
nondet L0xffffffffe990@uint64;
nondet L0xffffffffe998@uint64;
nondet L0xffffffffe9a0@uint64;
nondet L0xffffffffe9a8@uint64;
nondet L0xffffffffe9b0@uint64;
nondet L0xffffffffe9b8@uint64;
nondet L0xffffffffe9c0@uint64;
nondet L0xffffffffe9c8@uint64;
nondet L0xffffffffe9d0@uint64;
nondet L0xffffffffe9d8@uint64;
nondet L0xffffffffe9e0@uint64;
nondet L0xffffffffe9e8@uint64;
nondet L0xffffffffe9f0@uint64;
nondet L0xffffffffe9f8@uint64;
nondet L0xffffffffea00@uint64;
nondet L0xffffffffea08@uint64;
nondet L0xffffffffea10@uint64;
nondet L0xffffffffea18@uint64;
nondet L0xffffffffea20@uint64;
nondet L0xffffffffea28@uint64;
nondet L0xffffffffea30@uint64;
*)

(*
nondet x19@uint64;
nondet x20@uint64;
nondet x21@uint64;
nondet x22@uint64;
nondet x23@uint64;
nondet x24@uint64;
nondet x25@uint64;
nondet x26@uint64;
nondet x27@uint64;
nondet x28@uint64;
nondet x29@uint64;
nondet x30@uint64;
nondet sp@uint64;
*)

nondet x0@uint64;
nondet x1@uint64;
(*nondet x2@uint64;
nondet x3@uint64;*)

(*mov x2 0xa8@uint64;
mov x3 0xa8@uint64;*)

(* #! -> SP = 0xffffffffe980 *)
#! 0xffffffffe980 = 0xffffffffe980;
# (* stp	x29, x30, [sp, #-128]!                      #! EA = L0xffffffffe900; PC = 0xaaaaaaaaad00 *)
# mov L0xffffffffe900 x29;
# mov L0xffffffffe908 x30;
# (* mov	x29, sp                                     #! PC = 0xaaaaaaaaad04 *)
# mov x29 sp;
# (* stp	x19, x20, [sp, #16]       
#! EA = L0xffffffffe910; PC = 0xaaaaaaaaad08 *)
# mov L0xffffffffe910 x19;
# mov L0xffffffffe918 x20;
# (* stp	x21, x22, [sp, #32]                         #! EA = L0xffffffffe920; PC = 0xaaaaaaaaad0c *)
# mov L0xffffffffe920 x21;
# mov L0xffffffffe928 x22;
# (* stp	x23, x24, [sp, #48]                         #! EA = L0xffffffffe930; PC = 0xaaaaaaaaad10 *)
# mov L0xffffffffe930 x23;
# mov L0xffffffffe938 x24;
# (* stp	x25, x26, [sp, #64]                         #! EA = L0xffffffffe940; PC = 0xaaaaaaaaad14 *)
# mov L0xffffffffe940 x25;
# mov L0xffffffffe948 x26;
# (* stp	x27, x28, [sp, #80]                         #! EA = L0xffffffffe950; PC = 0xaaaaaaaaad18 *)
# mov L0xffffffffe950 x27;
# mov L0xffffffffe958 x28;
# (* sub	sp, sp, #0x40                               #! PC = 0xaaaaaaaaad1c *)
# subs dontcare sp sp 0x40@uint64;
# (* stp	x0, x1, [sp, #32]                           #! EA = L0xffffffffe8e0; PC = 0xaaaaaaaaad20 *)
# mov L0xffffffffe8e0 x0;
# mov L0xffffffffe8e8 x1;
# (* stp	x2, x3, [sp, #48]                           #! EA = L0xffffffffe8f0; PC = 0xaaaaaaaaad24 *)
# mov L0xffffffffe8f0 x2;
# mov L0xffffffffe8f8 x3;
# (* mov	x26, x0                                     #! PC = 0xaaaaaaaaad28 *)
# mov x26 x0;
# (* mov	x27, x1                                     #! PC = 0xaaaaaaaaad2c *)
# mov x27 x1;
# (* mov	x28, x2                                     #! PC = 0xaaaaaaaaad30 *)
# mov x28 x2;
# (* mov	x30, x3                                     #! PC = 0xaaaaaaaaad34 *)
# mov x30 x3;
(* ldp	x0, x1, [x26]                               #! EA = L0xaaaaaaabc018; Value = 0x0000000000000000; PC = 0xaaaaaaaaad38 *)
mov x0 L0xaaaaaaabc018;
mov x1 L0xaaaaaaabc020;
(* ldp	x2, x3, [x26, #16]                          #! EA = L0xaaaaaaabc028; Value = 0x0000000000000000; PC = 0xaaaaaaaaad3c *)
mov x2 L0xaaaaaaabc028;
mov x3 L0xaaaaaaabc030;
(* ldp	x4, x5, [x26, #32]                          #! EA = L0xaaaaaaabc038; Value = 0x0000000000000000; PC = 0xaaaaaaaaad40 *)
mov x4 L0xaaaaaaabc038;
mov x5 L0xaaaaaaabc040;
(* ldp	x6, x7, [x26, #48]                          #! EA = L0xaaaaaaabc048; Value = 0x0000000000000000; PC = 0xaaaaaaaaad44 *)
mov x6 L0xaaaaaaabc048;
mov x7 L0xaaaaaaabc050;
(* ldp	x8, x9, [x26, #64]                          #! EA = L0xaaaaaaabc058; Value = 0x0000000000000000; PC = 0xaaaaaaaaad48 *)
mov x8 L0xaaaaaaabc058;
mov x9 L0xaaaaaaabc060;
(* ldp	x10, x11, [x26, #80]                        #! EA = L0xaaaaaaabc068; Value = 0x0000000000000000; PC = 0xaaaaaaaaad4c *)
mov x10 L0xaaaaaaabc068;
mov x11 L0xaaaaaaabc070;
(* ldp	x12, x13, [x26, #96]                        #! EA = L0xaaaaaaabc078; Value = 0x0000000000000000; PC = 0xaaaaaaaaad50 *)
mov x12 L0xaaaaaaabc078;
mov x13 L0xaaaaaaabc080;
(* ldp	x14, x15, [x26, #112]                       #! EA = L0xaaaaaaabc088; Value = 0x0000000000000000; PC = 0xaaaaaaaaad54 *)
mov x14 L0xaaaaaaabc088;
mov x15 L0xaaaaaaabc090;
(* ldp	x16, x17, [x26, #128]                       #! EA = L0xaaaaaaabc098; Value = 0x0000000000000000; PC = 0xaaaaaaaaad58 *)
mov x16 L0xaaaaaaabc098;
mov x17 L0xaaaaaaabc0a0;
(* ldp	x25, x19, [x26, #144]                       #! EA = L0xaaaaaaabc0a8; Value = 0x0000000000000000; PC = 0xaaaaaaaaad5c *)
mov x25 L0xaaaaaaabc0a8;
mov x19 L0xaaaaaaabc0b0;
(* ldp	x20, x21, [x26, #160]                       #! EA = L0xaaaaaaabc0b8; Value = 0x0000000000000000; PC = 0xaaaaaaaaad60 *)
mov x20 L0xaaaaaaabc0b8;
mov x21 L0xaaaaaaabc0c0;
(* ldp	x22, x23, [x26, #176]                       #! EA = L0xaaaaaaabc0c8; Value = 0x0000000000000000; PC = 0xaaaaaaaaad64 *)
mov x22 L0xaaaaaaabc0c8;
mov x23 L0xaaaaaaabc0d0;
(* ldr	x24, [x26, #192]                            #! EA = L0xaaaaaaabc0d8; Value = 0x0000000000000000; PC = 0xaaaaaaaaad68 *)
mov x24 L0xaaaaaaabc0d8;
# (* #b	0xaaaaaaaaad70 <SHA3_absorb+112>             #! PC = 0xaaaaaaaaad6c *)
# #b	0xaaaaaaaaad70 <SHA3_absorb+112>             #! 0xaaaaaaaaad6c = 0xaaaaaaaaad6c;
# (* subs	x26, x28, x30                              #! PC = 0xaaaaaaaaad70 *)
# subc carry x26 x28 x30;
# (* #b.cc	0xaaaaaaaaaef0 <SHA3_absorb+496>  // b.lo, b.ul, b.last#! PC = 0xaaaaaaaaad74 *)
# #b.cc	0xaaaaaaaaaef0 <SHA3_absorb+496>  // b.lo, b.ul, b.last#! 0xaaaaaaaaad74 = 0xaaaaaaaaad74;
# (* str	x26, [sp, #48]                              #! EA = L0xffffffffe8f0; PC = 0xaaaaaaaaad78 *)
# mov L0xffffffffe8f0 x26;
# (* ldr	x26, [x27], #8                              #! EA = L0xffffffffe990; Value = 0x0000fffff7ff9000; PC = 0xaaaaaaaaad7c *)
# mov x26 L0xffffffffe990;
# (* eor	x0, x0, x26                                 #! PC = 0xaaaaaaaaad80 *)
# xor x0@uint64 x0 x26;
# (* #b.cc	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.lo, b.ul, b.last#! PC = 0xaaaaaaaaad88 *)
# #b.cc	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.lo, b.ul, b.last#! 0xaaaaaaaaad88 = 0xaaaaaaaaad88;
# (* ldr	x26, [x27], #8                              #! EA = L0xffffffffe998; Value = 0x0000000000000000; PC = 0xaaaaaaaaad8c *)
# mov x26 L0xffffffffe998;
# (* eor	x1, x1, x26                                 #! PC = 0xaaaaaaaaad90 *)
# xor x1@uint64 x1 x26;
# (* #b.eq	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.none#! PC = 0xaaaaaaaaad94 *)
# #b.eq	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.none#! 0xaaaaaaaaad94 = 0xaaaaaaaaad94;
# (* ldr	x26, [x27], #8                              #! EA = L0xffffffffe9a0; Value = 0x0000000000000000; PC = 0xaaaaaaaaad98 *)
# mov x26 L0xffffffffe9a0;
# (* eor	x2, x2, x26                                 #! PC = 0xaaaaaaaaad9c *)
# xor x2@uint64 x2 x26;
# (* #b.cc	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.lo, b.ul, b.last#! PC = 0xaaaaaaaaada4 *)
# #b.cc	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.lo, b.ul, b.last#! 0xaaaaaaaaada4 = 0xaaaaaaaaada4;
# (* ldr	x26, [x27], #8                              #! EA = L0xffffffffe9a8; Value = 0x0000000000000000; PC = 0xaaaaaaaaada8 *)
# mov x26 L0xffffffffe9a8;
# (* eor	x3, x3, x26                                 #! PC = 0xaaaaaaaaadac *)
# xor x3@uint64 x3 x26;
# (* #b.eq	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.none#! PC = 0xaaaaaaaaadb0 *)
# #b.eq	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.none#! 0xaaaaaaaaadb0 = 0xaaaaaaaaadb0;
# (* ldr	x26, [x27], #8                              #! EA = L0xffffffffe9b0; Value = 0x0000fffff7ffde58; PC = 0xaaaaaaaaadb4 *)
# mov x26 L0xffffffffe9b0;
# (* eor	x4, x4, x26                                 #! PC = 0xaaaaaaaaadb8 *)
# xor x4@uint64 x4 x26;
# (* #b.cc	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.lo, b.ul, b.last#! PC = 0xaaaaaaaaadc0 *)
# #b.cc	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.lo, b.ul, b.last#! 0xaaaaaaaaadc0 = 0xaaaaaaaaadc0;
# (* ldr	x26, [x27], #8                              #! EA = L0xffffffffe9b8; Value = 0x0000000000000000; PC = 0xaaaaaaaaadc4 *)
# mov x26 L0xffffffffe9b8;
# (* eor	x5, x5, x26                                 #! PC = 0xaaaaaaaaadc8 *)
# xor x5@uint64 x5 x26;
# (* #b.eq	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.none#! PC = 0xaaaaaaaaadcc *)
# #b.eq	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.none#! 0xaaaaaaaaadcc = 0xaaaaaaaaadcc;
# (* ldr	x26, [x27], #8                              #! EA = L0xffffffffe9c0; Value = 0x0000ffffffffeaf0; PC = 0xaaaaaaaaadd0 *)
# mov x26 L0xffffffffe9c0;
# (* eor	x6, x6, x26                                 #! PC = 0xaaaaaaaaadd4 *)
# xor x6@uint64 x6 x26;
# (* #b.cc	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.lo, b.ul, b.last#! PC = 0xaaaaaaaaaddc *)
# #b.cc	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.lo, b.ul, b.last#! 0xaaaaaaaaaddc = 0xaaaaaaaaaddc;
# (* ldr	x26, [x27], #8                              #! EA = L0xffffffffe9c8; Value = 0x0000fffff7fe00a4; PC = 0xaaaaaaaaade0 *)
# mov x26 L0xffffffffe9c8;
# (* eor	x7, x7, x26                                 #! PC = 0xaaaaaaaaade4 *)
# xor x7@uint64 x7 x26;
# (* #b.eq	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.none#! PC = 0xaaaaaaaaade8 *)
# #b.eq	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.none#! 0xaaaaaaaaade8 = 0xaaaaaaaaade8;
# (* ldr	x26, [x27], #8                              #! EA = L0xffffffffe9d0; Value = 0x0000fffff7fb0c08; PC = 0xaaaaaaaaadec *)
# mov x26 L0xffffffffe9d0;
# (* eor	x8, x8, x26                                 #! PC = 0xaaaaaaaaadf0 *)
# xor x8@uint64 x8 x26;
# (* #b.cc	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.lo, b.ul, b.last#! PC = 0xaaaaaaaaadf8 *)
# #b.cc	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.lo, b.ul, b.last#! 0xaaaaaaaaadf8 = 0xaaaaaaaaadf8;
# (* ldr	x26, [x27], #8                              #! EA = L0xffffffffe9d8; Value = 0x0000fffff7fb0c08; PC = 0xaaaaaaaaadfc *)
# mov x26 L0xffffffffe9d8;
# (* eor	x9, x9, x26                                 #! PC = 0xaaaaaaaaae00 *)
# xor x9@uint64 x9 x26;
# (* #b.eq	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.none#! PC = 0xaaaaaaaaae04 *)
# #b.eq	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.none#! 0xaaaaaaaaae04 = 0xaaaaaaaaae04;
# (* ldr	x26, [x27], #8                              #! EA = L0xffffffffe9e0; Value = 0x0000ffffffffea00; PC = 0xaaaaaaaaae08 *)
# mov x26 L0xffffffffe9e0;
# (* eor	x10, x10, x26                               #! PC = 0xaaaaaaaaae0c *)
# xor x10@uint64 x10 x26;
# (* #b.cc	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.lo, b.ul, b.last#! PC = 0xaaaaaaaaae14 *)
# #b.cc	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.lo, b.ul, b.last#! 0xaaaaaaaaae14 = 0xaaaaaaaaae14;
# (* ldr	x26, [x27], #8                              #! EA = L0xffffffffe9e8; Value = 0x0000fffff7e7c86c; PC = 0xaaaaaaaaae18 *)
# mov x26 L0xffffffffe9e8;
# (* eor	x11, x11, x26                               #! PC = 0xaaaaaaaaae1c *)
# xor x11@uint64 x11 x26;
# (* #b.eq	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.none#! PC = 0xaaaaaaaaae20 *)
# #b.eq	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.none#! 0xaaaaaaaaae20 = 0xaaaaaaaaae20;
# (* ldr	x26, [x27], #8                              #! EA = L0xffffffffe9f0; Value = 0x0000ffffffffea00; PC = 0xaaaaaaaaae24 *)
# mov x26 L0xffffffffe9f0;
# (* eor	x12, x12, x26                               #! PC = 0xaaaaaaaaae28 *)
# xor x12@uint64 x12 x26;
# (* #b.cc	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.lo, b.ul, b.last#! PC = 0xaaaaaaaaae30 *)
# #b.cc	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.lo, b.ul, b.last#! 0xaaaaaaaaae30 = 0xaaaaaaaaae30;
# (* ldr	x26, [x27], #8                              #! EA = L0xffffffffe9f8; Value = 0x0000aaaaaaaab580; PC = 0xaaaaaaaaae34 *)
# mov x26 L0xffffffffe9f8;
# (* eor	x13, x13, x26                               #! PC = 0xaaaaaaaaae38 *)
# xor x13@uint64 x13 x26;
# (* #b.eq	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.none#! PC = 0xaaaaaaaaae3c *)
# #b.eq	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.none#! 0xaaaaaaaaae3c = 0xaaaaaaaaae3c;
# (* ldr	x26, [x27], #8                              #! EA = L0xffffffffea00; Value = 0x0000ffffffffea40; PC = 0xaaaaaaaaae40 *)
# mov x26 L0xffffffffea00;
# (* eor	x14, x14, x26                               #! PC = 0xaaaaaaaaae44 *)
# xor x14@uint64 x14 x26;
# (* #b.cc	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.lo, b.ul, b.last#! PC = 0xaaaaaaaaae4c *)
# #b.cc	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.lo, b.ul, b.last#! 0xaaaaaaaaae4c = 0xaaaaaaaaae4c;
# (* ldr	x26, [x27], #8                              #! EA = L0xffffffffea08; Value = 0x0000fffff7e66db8; PC = 0xaaaaaaaaae50 *)
# mov x26 L0xffffffffea08;
# (* eor	x15, x15, x26                               #! PC = 0xaaaaaaaaae54 *)
# xor x15@uint64 x15 x26;
# (* #b.eq	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.none#! PC = 0xaaaaaaaaae58 *)
# #b.eq	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.none#! 0xaaaaaaaaae58 = 0xaaaaaaaaae58;
# (* ldr	x26, [x27], #8                              #! EA = L0xffffffffea10; Value = 0x0000aaaaaaaab548; PC = 0xaaaaaaaaae5c *)
# mov x26 L0xffffffffea10;
# (* eor	x16, x16, x26                               #! PC = 0xaaaaaaaaae60 *)
# xor x16@uint64 x16 x26;
# (* #b.cc	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.lo, b.ul, b.last#! PC = 0xaaaaaaaaae68 *)
# #b.cc	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.lo, b.ul, b.last#! 0xaaaaaaaaae68 = 0xaaaaaaaaae68;
# (* ldr	x26, [x27], #8                              #! EA = L0xffffffffea18; Value = 0x0000000000000000; PC = 0xaaaaaaaaae6c *)
# mov x26 L0xffffffffea18;
# (* eor	x17, x17, x26                               #! PC = 0xaaaaaaaaae70 *)
# xor x17@uint64 x17 x26;
# (* #b.eq	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.none#! PC = 0xaaaaaaaaae74 *)
# #b.eq	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.none#! 0xaaaaaaaaae74 = 0xaaaaaaaaae74;
# (* ldr	x26, [x27], #8                              #! EA = L0xffffffffea20; Value = 0x0000ffffffffea40; PC = 0xaaaaaaaaae78 *)
# mov x26 L0xffffffffea20;
# (* eor	x25, x25, x26                               #! PC = 0xaaaaaaaaae7c *)
# xor x25@uint64 x25 x26;
# (* #b.cc	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.lo, b.ul, b.last#! PC = 0xaaaaaaaaae84 *)
# #b.cc	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.lo, b.ul, b.last#! 0xaaaaaaaaae84 = 0xaaaaaaaaae84;
# (* ldr	x26, [x27], #8                              #! EA = L0xffffffffea28; Value = 0x0000fffff7e66dd4; PC = 0xaaaaaaaaae88 *)
# mov x26 L0xffffffffea28;
# (* eor	x19, x19, x26                               #! PC = 0xaaaaaaaaae8c *)
# xor x19@uint64 x19 x26;
# (* #b.eq	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.none#! PC = 0xaaaaaaaaae90 *)
# #b.eq	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.none#! 0xaaaaaaaaae90 = 0xaaaaaaaaae90;
# (* ldr	x26, [x27], #8                              #! EA = L0xffffffffea30; Value = 0x0000aaaaaaaab548; PC = 0xaaaaaaaaae94 *)
# mov x26 L0xffffffffea30;
# (* eor	x20, x20, x26                               #! PC = 0xaaaaaaaaae98 *)
# xor x20@uint64 x20 x26;
# (* #b.cc	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.lo, b.ul, b.last#! PC = 0xaaaaaaaaaea0 *)
# #b.cc	0xaaaaaaaaaed4 <SHA3_absorb+468>  // b.lo, b.ul, b.last#! 0xaaaaaaaaaea0 = 0xaaaaaaaaaea0;
# (* str	x27, [sp, #40]                              #! EA = L0xffffffffe8e8; PC = 0xaaaaaaaaaed4 *)
# mov L0xffffffffe8e8 x27;
(* #bl	0xaaaaaaaaaa00 <KeccakF1600_int>            #! PC = 0xaaaaaaaaaed8 *)
#bl	0xaaaaaaaaaa00 <KeccakF1600_int>            #! 0xaaaaaaaaaed8 = 0xaaaaaaaaaed8;
(* #! -> SP = 0xffffffffe8c0 *)
#! 0xffffffffe8c0 = 0xffffffffe8c0;
# (* stp	x28, x30, [sp, #16]                         #! EA = L0xffffffffe8d0; PC = 0xaaaaaaaaaa04 *)
# mov L0xffffffffe8d0 x28;
# mov L0xffffffffe8d8 x30;
(* #b	0xaaaaaaaaaa10 <KeccakF1600_int+16>          #! PC = 0xaaaaaaaaaa08 *)
#b	0xaaaaaaaaaa10 <KeccakF1600_int+16>          #! 0xaaaaaaaaaa08 = 0xaaaaaaaaaa08;
(* eor	x26, x0, x5                                 #! PC = 0xaaaaaaaaaa10 *)
xor x26@uint64 x0 x5;
(* stp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; PC = 0xaaaaaaaaaa14 *)
mov L0xffffffffe8c0 x4;
mov L0xffffffffe8c8 x9;
(* eor	x27, x1, x6                                 #! PC = 0xaaaaaaaaaa18 *)
xor x27@uint64 x1 x6;
(* eor	x28, x2, x7                                 #! PC = 0xaaaaaaaaaa1c *)
xor x28@uint64 x2 x7;
(* eor	x30, x3, x8                                 #! PC = 0xaaaaaaaaaa20 *)
xor x30@uint64 x3 x8;
(* eor	x4, x4, x9                                  #! PC = 0xaaaaaaaaaa24 *)
xor x4@uint64 x4 x9;
(* eor	x26, x26, x10                               #! PC = 0xaaaaaaaaaa28 *)
xor x26@uint64 x26 x10;
(* eor	x27, x27, x11                               #! PC = 0xaaaaaaaaaa2c *)
xor x27@uint64 x27 x11;
(* eor	x28, x28, x12                               #! PC = 0xaaaaaaaaaa30 *)
xor x28@uint64 x28 x12;
(* eor	x30, x30, x13                               #! PC = 0xaaaaaaaaaa34 *)
xor x30@uint64 x30 x13;
(* eor	x4, x4, x14                                 #! PC = 0xaaaaaaaaaa38 *)
xor x4@uint64 x4 x14;
(* eor	x26, x26, x15                               #! PC = 0xaaaaaaaaaa3c *)
xor x26@uint64 x26 x15;
(* eor	x27, x27, x16                               #! PC = 0xaaaaaaaaaa40 *)
xor x27@uint64 x27 x16;
(* eor	x28, x28, x17                               #! PC = 0xaaaaaaaaaa44 *)
xor x28@uint64 x28 x17;
(* eor	x30, x30, x25                               #! PC = 0xaaaaaaaaaa48 *)
xor x30@uint64 x30 x25;
(* eor	x4, x4, x19                                 #! PC = 0xaaaaaaaaaa4c *)
xor x4@uint64 x4 x19;
(* eor	x26, x26, x20                               #! PC = 0xaaaaaaaaaa50 *)
xor x26@uint64 x26 x20;
(* eor	x28, x28, x22                               #! PC = 0xaaaaaaaaaa54 *)
xor x28@uint64 x28 x22;
(* eor	x27, x27, x21                               #! PC = 0xaaaaaaaaaa58 *)
xor x27@uint64 x27 x21;
(* eor	x30, x30, x23                               #! PC = 0xaaaaaaaaaa5c *)
xor x30@uint64 x30 x23;
(* eor	x4, x4, x24                                 #! PC = 0xaaaaaaaaaa60 *)
xor x4@uint64 x4 x24;
(* eor	x9, x26, x28, ror #63                       #! PC = 0xaaaaaaaaaa64 *)
split x28_h x28_l x28 63;
shl x28_ls x28_l 1@uint64;
add x28_ror x28_ls x28_h;
xor x9@uint64 x26 x28_ror;
(* eor	x1, x1, x9                                  #! PC = 0xaaaaaaaaaa68 *)
xor x1@uint64 x1 x9;
(* eor	x6, x6, x9                                  #! PC = 0xaaaaaaaaaa6c *)
xor x6@uint64 x6 x9;
(* eor	x11, x11, x9                                #! PC = 0xaaaaaaaaaa70 *)
xor x11@uint64 x11 x9;
(* eor	x16, x16, x9                                #! PC = 0xaaaaaaaaaa74 *)
xor x16@uint64 x16 x9;
(* eor	x21, x21, x9                                #! PC = 0xaaaaaaaaaa78 *)
xor x21@uint64 x21 x9;
(* eor	x9, x27, x30, ror #63                       #! PC = 0xaaaaaaaaaa7c *)
split x30_h x30_l x30 63;
shl x30_ls x30_l 1@uint64;
add x30_ror x30_ls x30_h;
xor x9@uint64 x27 x30_ror;
(* eor	x28, x28, x4, ror #63                       #! PC = 0xaaaaaaaaaa80 *)
split x4_h x4_l x4 63;
shl x4_ls x4_l 1@uint64;
add x4_ror x4_ls x4_h;
xor x28@uint64 x28 x4_ror;
(* eor	x30, x30, x26, ror #63                      #! PC = 0xaaaaaaaaaa84 *)
split x26_h x26_l x26 63;
shl x26_ls x26_l 1@uint64;
add x26_ror x26_ls x26_h;
xor x30@uint64 x30 x26_ror;
(* eor	x4, x4, x27, ror #63                        #! PC = 0xaaaaaaaaaa88 *)
split x27_h x27_l x27 63;
shl x27_ls x27_l 1@uint64;
add x27_ror x27_ls x27_h;
xor x4@uint64 x4 x27_ror;
(* eor	x27, x2, x9                                 #! PC = 0xaaaaaaaaaa8c *)
xor x27@uint64 x2 x9;
(* eor	x7, x7, x9                                  #! PC = 0xaaaaaaaaaa90 *)
xor x7@uint64 x7 x9;
(* eor	x12, x12, x9                                #! PC = 0xaaaaaaaaaa94 *)
xor x12@uint64 x12 x9;
(* eor	x17, x17, x9                                #! PC = 0xaaaaaaaaaa98 *)
xor x17@uint64 x17 x9;
(* eor	x22, x22, x9                                #! PC = 0xaaaaaaaaaa9c *)
xor x22@uint64 x22 x9;
(* eor	x0, x0, x4                                  #! PC = 0xaaaaaaaaaaa0 *)
xor x0@uint64 x0 x4;
(* eor	x5, x5, x4                                  #! PC = 0xaaaaaaaaaaa4 *)
xor x5@uint64 x5 x4;
(* eor	x10, x10, x4                                #! PC = 0xaaaaaaaaaaa8 *)
xor x10@uint64 x10 x4;
(* eor	x15, x15, x4                                #! PC = 0xaaaaaaaaaaac *)
xor x15@uint64 x15 x4;
(* eor	x20, x20, x4                                #! PC = 0xaaaaaaaaaab0 *)
xor x20@uint64 x20 x4;
(* ldp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; Value = 0x0000fffff7ffde58; PC = 0xaaaaaaaaaab4 *)
mov x4 L0xffffffffe8c0;
mov x9 L0xffffffffe8c8;
(* eor	x26, x3, x28                                #! PC = 0xaaaaaaaaaab8 *)
xor x26@uint64 x3 x28;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaaabc *)
xor x8@uint64 x8 x28;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaaac0 *)
xor x13@uint64 x13 x28;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaaac4 *)
xor x25@uint64 x25 x28;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaaac8 *)
xor x23@uint64 x23 x28;
(* eor	x28, x4, x30                                #! PC = 0xaaaaaaaaaacc *)
xor x28@uint64 x4 x30;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaad0 *)
xor x9@uint64 x9 x30;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaaad4 *)
xor x14@uint64 x14 x30;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaaad8 *)
xor x19@uint64 x19 x30;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaaadc *)
xor x24@uint64 x24 x30;

(* mov	x30, x1                                     #! PC = 0xaaaaaaaaaae0 *)
mov x30 x1;
(* ror	x1, x6, #20                                 #! PC = 0xaaaaaaaaaae4 *)
split x6_h x6_l x6 20;
shl x6_ls x6_l (64-20)@uint64;
add x1 x6_ls x6_h;
(* ror	x2, x12, #21                                #! PC = 0xaaaaaaaaaae8 *)
split x12_h x12_l x12 21;
shl x12_ls x12_l (64-21)@uint64;
add x2 x12_ls x12_h;
(* ror	x3, x25, #43                                #! PC = 0xaaaaaaaaaaec *)
split x25_h x25_l x25 43;
shl x25_ls x25_l (64-43)@uint64;
add x3 x25_ls x25_h;
(* ror	x4, x24, #50                                #! PC = 0xaaaaaaaaaaf0 *)
split x24_h x24_l x24 50;
shl x24_ls x24_l (64-50)@uint64;
add x4 x24_ls x24_h;
(* ror	x6, x9, #44                                 #! PC = 0xaaaaaaaaaaf4 *)
split x9_h x9_l x9 44;
shl x9_ls x9_l (64-44)@uint64;
add x6 x9_ls x9_h;
(* ror	x12, x13, #39                               #! PC = 0xaaaaaaaaaaf8 *)
split x13_h x13_l x13 39;
shl x13_ls x13_l (64-39)@uint64;
add x12 x13_ls x13_h;
(* ror	x25, x17, #49                               #! PC = 0xaaaaaaaaaafc *)
split x17_h x17_l x17 49;
shl x17_ls x17_l (64-49)@uint64;
add x25 x17_ls x17_h;
(* ror	x24, x21, #62                               #! PC = 0xaaaaaaaaab00 *)
split x21_h x21_l x21 62;
shl x21_ls x21_l (64-62)@uint64;
add x24 x21_ls x21_h;
(* ror	x9, x22, #3                                 #! PC = 0xaaaaaaaaab04 *)
split x22_h x22_l x22 3;
shl x22_ls x22_l (64-3)@uint64;
add x9 x22_ls x22_h;
(* ror	x13, x19, #56                               #! PC = 0xaaaaaaaaab08 *)
split x19_h x19_l x19 56;
shl x19_ls x19_l (64-56)@uint64;
add x13 x19_ls x19_h;
(* ror	x17, x11, #54                               #! PC = 0xaaaaaaaaab0c *)
split x11_h x11_l x11 54;
shl x11_ls x11_l (64-54)@uint64;
add x17 x11_ls x11_h;
(* ror	x21, x8, #9                                 #! PC = 0xaaaaaaaaab10 *)
split x8_h x8_l x8 9;
shl x8_ls x8_l (64-9)@uint64;
add x21 x8_ls x8_h;
(* ror	x22, x14, #25                               #! PC = 0xaaaaaaaaab14 *)
split x14_h x14_l x14 25;
shl x14_ls x14_l (64-25)@uint64;
add x22 x14_ls x14_h;
(* ror	x19, x23, #8                                #! PC = 0xaaaaaaaaab18 *)
split x23_h x23_l x23 8;
shl x23_ls x23_l (64-8)@uint64;
add x19 x23_ls x23_h;
(* ror	x11, x7, #58                                #! PC = 0xaaaaaaaaab1c *)
split x7_h x7_l x7 58;
shl x7_ls x7_l (64-58)@uint64;
add x11 x7_ls x7_h;
(* ror	x8, x16, #19                                #! PC = 0xaaaaaaaaab20 *)
split x16_h x16_l x16 19;
shl x16_ls x16_l (64-19)@uint64;
add x8 x16_ls x16_h;
(* ror	x14, x20, #46                               #! PC = 0xaaaaaaaaab24 *)
split x20_h x20_l x20 46;
shl x20_ls x20_l (64-46)@uint64;
add x14 x20_ls x20_h;
(* ror	x23, x15, #23                               #! PC = 0xaaaaaaaaab28 *)
split x15_h x15_l x15 23;
shl x15_ls x15_l (64-23)@uint64;
add x23 x15_ls x15_h;
(* ror	x7, x10, #61                                #! PC = 0xaaaaaaaaab2c *)
split x10_h x10_l x10 61;
shl x10_ls x10_l (64-61)@uint64;
add x7 x10_ls x10_h;
(* ror	x16, x5, #28                                #! PC = 0xaaaaaaaaab30 *)
split x5_h x5_l x5 28;
shl x5_ls x5_l (64-28)@uint64;
add x16 x5_ls x5_h;
(* ror	x5, x26, #36                                #! PC = 0xaaaaaaaaab34 *)
split x26_h x26_l x26 36;
shl x26_ls x26_l (64-36)@uint64;
add x5 x26_ls x26_h;
(* ror	x10, x30, #63                               #! PC = 0xaaaaaaaaab38 *)
split x30_h x30_l x30 63;
shl x30_ls x30_l (64-63)@uint64;
add x10 x30_ls x30_h;
(* ror	x15, x28, #37                               #! PC = 0xaaaaaaaaab3c *)
split x28_h x28_l x28 37;
shl x28_ls x28_l (64-37)@uint64;
add x15 x28_ls x28_h;
(* ror	x20, x27, #2                                #! PC = 0xaaaaaaaaab40 *)
split x27_h x27_l x27 2;
shl x27_ls x27_l (64-2)@uint64;
add x20 x27_ls x27_h;
(* bic	x26, x2, x1                                 #! PC = 0xaaaaaaaaab44 *)
not x1_not@uint64 x1;
and x26@uint64 x2 x1_not;
(* bic	x27, x3, x2                                 #! PC = 0xaaaaaaaaab48 *)
not x2_not@uint64 x2;
and x27@uint64 x3 x2_not;
(* bic	x28, x0, x4                                 #! PC = 0xaaaaaaaaab4c *)
not x4_not@uint64 x4;
and x28@uint64 x0 x4_not;
(* bic	x30, x1, x0                                 #! PC = 0xaaaaaaaaab50 *)
not x0_not@uint64 x0;
and x30@uint64 x1 x0_not;
(* eor	x0, x0, x26                                 #! PC = 0xaaaaaaaaab54 *)
xor x0@uint64 x0 x26;
(* bic	x26, x4, x3                                 #! PC = 0xaaaaaaaaab58 *)
not x3_not@uint64 x3;
and x26@uint64 x4 x3_not;
(* eor	x1, x1, x27                                 #! PC = 0xaaaaaaaaab5c *)
xor x1@uint64 x1 x27;

# (* ldr	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; Value = 0x0000aaaaaaaaa940; PC = 0xaaaaaaaaab60 *)
# mov x27 L0xffffffffe8d0;
(* eor	x3, x3, x28                                 #! PC = 0xaaaaaaaaab64 *)
xor x3@uint64 x3 x28;
(* eor	x4, x4, x30                                 #! PC = 0xaaaaaaaaab68 *)
xor x4@uint64 x4 x30;
(* eor	x2, x2, x26                                 #! PC = 0xaaaaaaaaab6c *)
xor x2@uint64 x2 x26;
(* ldr	x30, [x27], #8                              #! EA = L0xaaaaaaaaa940; Value = 0x0000000000000001; PC = 0xaaaaaaaaab70 *)
mov x30 L0xaaaaaaaaa940;
(* bic	x26, x7, x6                                 #! PC = 0xaaaaaaaaab74 *)
not x6_not@uint64 x6;
and x26@uint64 x7 x6_not;
(* str	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; PC = 0xaaaaaaaaab7c *)
mov L0xffffffffe8d0 x27;
(* bic	x27, x8, x7                                 #! PC = 0xaaaaaaaaab80 *)
not x7_not@uint64 x7;
and x27@uint64 x8 x7_not;
(* bic	x28, x5, x9                                 #! PC = 0xaaaaaaaaab84 *)
not x9_not@uint64 x9;
and x28@uint64 x5 x9_not;
(* eor	x0, x0, x30                                 #! PC = 0xaaaaaaaaab88 *)
xor x0@uint64 x0 x30;
(* bic	x30, x6, x5                                 #! PC = 0xaaaaaaaaab8c *)
not x5_not@uint64 x5;
and x30@uint64 x6 x5_not;
(* eor	x5, x5, x26                                 #! PC = 0xaaaaaaaaab90 *)
xor x5@uint64 x5 x26;
(* bic	x26, x9, x8                                 #! PC = 0xaaaaaaaaab94 *)
not x8_not@uint64 x8;
and x26@uint64 x9 x8_not;
(* eor	x6, x6, x27                                 #! PC = 0xaaaaaaaaab98 *)
xor x6@uint64 x6 x27;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaab9c *)
xor x8@uint64 x8 x28;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaba0 *)
xor x9@uint64 x9 x30;
(* eor	x7, x7, x26                                 #! PC = 0xaaaaaaaaaba4 *)
xor x7@uint64 x7 x26;
(* bic	x26, x12, x11                               #! PC = 0xaaaaaaaaaba8 *)
not x11_not@uint64 x11;
and x26@uint64 x12 x11_not;
(* bic	x27, x13, x12                               #! PC = 0xaaaaaaaaabac *)
not x12_not@uint64 x12;
and x27@uint64 x13 x12_not;
(* bic	x28, x10, x14                               #! PC = 0xaaaaaaaaabb0 *)
not x14_not@uint64 x14;
and x28@uint64 x10 x14_not;
(* bic	x30, x11, x10                               #! PC = 0xaaaaaaaaabb4 *)
not x10_not@uint64 x10;
and x30@uint64 x11 x10_not;
(* eor	x10, x10, x26                               #! PC = 0xaaaaaaaaabb8 *)
xor x10@uint64 x10 x26;
(* bic	x26, x14, x13                               #! PC = 0xaaaaaaaaabbc *)
not x13_not@uint64 x13;
and x26@uint64 x14 x13_not;
(* eor	x11, x11, x27                               #! PC = 0xaaaaaaaaabc0 *)
xor x11@uint64 x11 x27;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaabc4 *)
xor x13@uint64 x13 x28;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaabc8 *)
xor x14@uint64 x14 x30;
(* eor	x12, x12, x26                               #! PC = 0xaaaaaaaaabcc *)
xor x12@uint64 x12 x26;
(* bic	x26, x17, x16                               #! PC = 0xaaaaaaaaabd0 *)
not x16_not@uint64 x16;
and x26@uint64 x17 x16_not;
(* bic	x27, x25, x17                               #! PC = 0xaaaaaaaaabd4 *)
not x17_not@uint64 x17;
and x27@uint64 x25 x17_not;
(* bic	x28, x15, x19                               #! PC = 0xaaaaaaaaabd8 *)
not x19_not@uint64 x19;
and x28@uint64 x15 x19_not;
(* bic	x30, x16, x15                               #! PC = 0xaaaaaaaaabdc *)
not x15_not@uint64 x15;
and x30@uint64 x16 x15_not;
(* eor	x15, x15, x26                               #! PC = 0xaaaaaaaaabe0 *)
xor x15@uint64 x15 x26;
(* bic	x26, x19, x25                               #! PC = 0xaaaaaaaaabe4 *)
not x25_not@uint64 x25;
and x26@uint64 x19 x25_not;
(* eor	x16, x16, x27                               #! PC = 0xaaaaaaaaabe8 *)
xor x16@uint64 x16 x27;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaabec *)
xor x25@uint64 x25 x28;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaabf0 *)
xor x19@uint64 x19 x30;
(* eor	x17, x17, x26                               #! PC = 0xaaaaaaaaabf4 *)
xor x17@uint64 x17 x26;
(* bic	x26, x22, x21                               #! PC = 0xaaaaaaaaabf8 *)
not x21_not@uint64 x21;
and x26@uint64 x22 x21_not;
(* bic	x27, x23, x22                               #! PC = 0xaaaaaaaaabfc *)
not x22_not@uint64 x22;
and x27@uint64 x23 x22_not;
(* bic	x28, x20, x24                               #! PC = 0xaaaaaaaaac00 *)
not x24_not@uint64 x24;
and x28@uint64 x20 x24_not;
(* bic	x30, x21, x20                               #! PC = 0xaaaaaaaaac04 *)
not x20_not@uint64 x20;
and x30@uint64 x21 x20_not;
(* eor	x20, x20, x26                               #! PC = 0xaaaaaaaaac08 *)
xor x20@uint64 x20 x26;
(* bic	x26, x24, x23                               #! PC = 0xaaaaaaaaac0c *)
not x23_not@uint64 x23;
and x26@uint64 x24 x23_not;
(* eor	x21, x21, x27                               #! PC = 0xaaaaaaaaac10 *)
xor x21@uint64 x21 x27;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaac14 *)
xor x23@uint64 x23 x28;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaac18 *)
xor x24@uint64 x24 x30;
(* eor	x22, x22, x26                               #! PC = 0xaaaaaaaaac1c *)
xor x22@uint64 x22 x26;
(* #b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! PC = 0xaaaaaaaaac20 *)
#b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! 0xaaaaaaaaac20 = 0xaaaaaaaaac20;
(* eor	x26, x0, x5                                 #! PC = 0xaaaaaaaaaa10 *)
xor x26@uint64 x0 x5;
(* stp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; PC = 0xaaaaaaaaaa14 *)
mov L0xffffffffe8c0 x4;
mov L0xffffffffe8c8 x9;
(* eor	x27, x1, x6                                 #! PC = 0xaaaaaaaaaa18 *)
xor x27@uint64 x1 x6;
(* eor	x28, x2, x7                                 #! PC = 0xaaaaaaaaaa1c *)
xor x28@uint64 x2 x7;
(* eor	x30, x3, x8                                 #! PC = 0xaaaaaaaaaa20 *)
xor x30@uint64 x3 x8;
(* eor	x4, x4, x9                                  #! PC = 0xaaaaaaaaaa24 *)
xor x4@uint64 x4 x9;
(* eor	x26, x26, x10                               #! PC = 0xaaaaaaaaaa28 *)
xor x26@uint64 x26 x10;
(* eor	x27, x27, x11                               #! PC = 0xaaaaaaaaaa2c *)
xor x27@uint64 x27 x11;
(* eor	x28, x28, x12                               #! PC = 0xaaaaaaaaaa30 *)
xor x28@uint64 x28 x12;
(* eor	x30, x30, x13                               #! PC = 0xaaaaaaaaaa34 *)
xor x30@uint64 x30 x13;
(* eor	x4, x4, x14                                 #! PC = 0xaaaaaaaaaa38 *)
xor x4@uint64 x4 x14;
(* eor	x26, x26, x15                               #! PC = 0xaaaaaaaaaa3c *)
xor x26@uint64 x26 x15;
(* eor	x27, x27, x16                               #! PC = 0xaaaaaaaaaa40 *)
xor x27@uint64 x27 x16;
(* eor	x28, x28, x17                               #! PC = 0xaaaaaaaaaa44 *)
xor x28@uint64 x28 x17;
(* eor	x30, x30, x25                               #! PC = 0xaaaaaaaaaa48 *)
xor x30@uint64 x30 x25;
(* eor	x4, x4, x19                                 #! PC = 0xaaaaaaaaaa4c *)
xor x4@uint64 x4 x19;
(* eor	x26, x26, x20                               #! PC = 0xaaaaaaaaaa50 *)
xor x26@uint64 x26 x20;
(* eor	x28, x28, x22                               #! PC = 0xaaaaaaaaaa54 *)
xor x28@uint64 x28 x22;
(* eor	x27, x27, x21                               #! PC = 0xaaaaaaaaaa58 *)
xor x27@uint64 x27 x21;
(* eor	x30, x30, x23                               #! PC = 0xaaaaaaaaaa5c *)
xor x30@uint64 x30 x23;
(* eor	x4, x4, x24                                 #! PC = 0xaaaaaaaaaa60 *)
xor x4@uint64 x4 x24;
(* eor	x9, x26, x28, ror #63                       #! PC = 0xaaaaaaaaaa64 *)
split x28_h x28_l x28 63;
shl x28_ls x28_l 1@uint64;
add x28_ror x28_ls x28_h;
xor x9@uint64 x26 x28_ror;
(* eor	x1, x1, x9                                  #! PC = 0xaaaaaaaaaa68 *)
xor x1@uint64 x1 x9;
(* eor	x6, x6, x9                                  #! PC = 0xaaaaaaaaaa6c *)
xor x6@uint64 x6 x9;
(* eor	x11, x11, x9                                #! PC = 0xaaaaaaaaaa70 *)
xor x11@uint64 x11 x9;
(* eor	x16, x16, x9                                #! PC = 0xaaaaaaaaaa74 *)
xor x16@uint64 x16 x9;
(* eor	x21, x21, x9                                #! PC = 0xaaaaaaaaaa78 *)
xor x21@uint64 x21 x9;
(* eor	x9, x27, x30, ror #63                       #! PC = 0xaaaaaaaaaa7c *)
split x30_h x30_l x30 63;
shl x30_ls x30_l 1@uint64;
add x30_ror x30_ls x30_h;
xor x9@uint64 x27 x30_ror;
(* eor	x28, x28, x4, ror #63                       #! PC = 0xaaaaaaaaaa80 *)
split x4_h x4_l x4 63;
shl x4_ls x4_l 1@uint64;
add x4_ror x4_ls x4_h;
xor x28@uint64 x28 x4_ror;
(* eor	x30, x30, x26, ror #63                      #! PC = 0xaaaaaaaaaa84 *)
split x26_h x26_l x26 63;
shl x26_ls x26_l 1@uint64;
add x26_ror x26_ls x26_h;
xor x30@uint64 x30 x26_ror;
(* eor	x4, x4, x27, ror #63                        #! PC = 0xaaaaaaaaaa88 *)
split x27_h x27_l x27 63;
shl x27_ls x27_l 1@uint64;
add x27_ror x27_ls x27_h;
xor x4@uint64 x4 x27_ror;
(* eor	x27, x2, x9                                 #! PC = 0xaaaaaaaaaa8c *)
xor x27@uint64 x2 x9;
(* eor	x7, x7, x9                                  #! PC = 0xaaaaaaaaaa90 *)
xor x7@uint64 x7 x9;
(* eor	x12, x12, x9                                #! PC = 0xaaaaaaaaaa94 *)
xor x12@uint64 x12 x9;
(* eor	x17, x17, x9                                #! PC = 0xaaaaaaaaaa98 *)
xor x17@uint64 x17 x9;
(* eor	x22, x22, x9                                #! PC = 0xaaaaaaaaaa9c *)
xor x22@uint64 x22 x9;
(* eor	x0, x0, x4                                  #! PC = 0xaaaaaaaaaaa0 *)
xor x0@uint64 x0 x4;
(* eor	x5, x5, x4                                  #! PC = 0xaaaaaaaaaaa4 *)
xor x5@uint64 x5 x4;
(* eor	x10, x10, x4                                #! PC = 0xaaaaaaaaaaa8 *)
xor x10@uint64 x10 x4;
(* eor	x15, x15, x4                                #! PC = 0xaaaaaaaaaaac *)
xor x15@uint64 x15 x4;
(* eor	x20, x20, x4                                #! PC = 0xaaaaaaaaaab0 *)
xor x20@uint64 x20 x4;
(* ldp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; Value = 0x09d4020dc5a20183; PC = 0xaaaaaaaaaab4 *)
mov x4 L0xffffffffe8c0;
mov x9 L0xffffffffe8c8;
(* eor	x26, x3, x28                                #! PC = 0xaaaaaaaaaab8 *)
xor x26@uint64 x3 x28;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaaabc *)
xor x8@uint64 x8 x28;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaaac0 *)
xor x13@uint64 x13 x28;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaaac4 *)
xor x25@uint64 x25 x28;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaaac8 *)
xor x23@uint64 x23 x28;
(* eor	x28, x4, x30                                #! PC = 0xaaaaaaaaaacc *)
xor x28@uint64 x4 x30;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaad0 *)
xor x9@uint64 x9 x30;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaaad4 *)
xor x14@uint64 x14 x30;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaaad8 *)
xor x19@uint64 x19 x30;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaaadc *)
xor x24@uint64 x24 x30;
(* mov	x30, x1                                     #! PC = 0xaaaaaaaaaae0 *)
mov x30 x1;
(* ror	x1, x6, #20                                 #! PC = 0xaaaaaaaaaae4 *)
split x6_h x6_l x6 20;
shl x6_ls x6_l (64-20)@uint64;
add x1 x6_ls x6_h;
(* ror	x2, x12, #21                                #! PC = 0xaaaaaaaaaae8 *)
split x12_h x12_l x12 21;
shl x12_ls x12_l (64-21)@uint64;
add x2 x12_ls x12_h;
(* ror	x3, x25, #43                                #! PC = 0xaaaaaaaaaaec *)
split x25_h x25_l x25 43;
shl x25_ls x25_l (64-43)@uint64;
add x3 x25_ls x25_h;
(* ror	x4, x24, #50                                #! PC = 0xaaaaaaaaaaf0 *)
split x24_h x24_l x24 50;
shl x24_ls x24_l (64-50)@uint64;
add x4 x24_ls x24_h;
(* ror	x6, x9, #44                                 #! PC = 0xaaaaaaaaaaf4 *)
split x9_h x9_l x9 44;
shl x9_ls x9_l (64-44)@uint64;
add x6 x9_ls x9_h;
(* ror	x12, x13, #39                               #! PC = 0xaaaaaaaaaaf8 *)
split x13_h x13_l x13 39;
shl x13_ls x13_l (64-39)@uint64;
add x12 x13_ls x13_h;
(* ror	x25, x17, #49                               #! PC = 0xaaaaaaaaaafc *)
split x17_h x17_l x17 49;
shl x17_ls x17_l (64-49)@uint64;
add x25 x17_ls x17_h;
(* ror	x24, x21, #62                               #! PC = 0xaaaaaaaaab00 *)
split x21_h x21_l x21 62;
shl x21_ls x21_l (64-62)@uint64;
add x24 x21_ls x21_h;
(* ror	x9, x22, #3                                 #! PC = 0xaaaaaaaaab04 *)
split x22_h x22_l x22 3;
shl x22_ls x22_l (64-3)@uint64;
add x9 x22_ls x22_h;
(* ror	x13, x19, #56                               #! PC = 0xaaaaaaaaab08 *)
split x19_h x19_l x19 56;
shl x19_ls x19_l (64-56)@uint64;
add x13 x19_ls x19_h;
(* ror	x17, x11, #54                               #! PC = 0xaaaaaaaaab0c *)
split x11_h x11_l x11 54;
shl x11_ls x11_l (64-54)@uint64;
add x17 x11_ls x11_h;
(* ror	x21, x8, #9                                 #! PC = 0xaaaaaaaaab10 *)
split x8_h x8_l x8 9;
shl x8_ls x8_l (64-9)@uint64;
add x21 x8_ls x8_h;
(* ror	x22, x14, #25                               #! PC = 0xaaaaaaaaab14 *)
split x14_h x14_l x14 25;
shl x14_ls x14_l (64-25)@uint64;
add x22 x14_ls x14_h;
(* ror	x19, x23, #8                                #! PC = 0xaaaaaaaaab18 *)
split x23_h x23_l x23 8;
shl x23_ls x23_l (64-8)@uint64;
add x19 x23_ls x23_h;
(* ror	x11, x7, #58                                #! PC = 0xaaaaaaaaab1c *)
split x7_h x7_l x7 58;
shl x7_ls x7_l (64-58)@uint64;
add x11 x7_ls x7_h;
(* ror	x8, x16, #19                                #! PC = 0xaaaaaaaaab20 *)
split x16_h x16_l x16 19;
shl x16_ls x16_l (64-19)@uint64;
add x8 x16_ls x16_h;
(* ror	x14, x20, #46                               #! PC = 0xaaaaaaaaab24 *)
split x20_h x20_l x20 46;
shl x20_ls x20_l (64-46)@uint64;
add x14 x20_ls x20_h;
(* ror	x23, x15, #23                               #! PC = 0xaaaaaaaaab28 *)
split x15_h x15_l x15 23;
shl x15_ls x15_l (64-23)@uint64;
add x23 x15_ls x15_h;
(* ror	x7, x10, #61                                #! PC = 0xaaaaaaaaab2c *)
split x10_h x10_l x10 61;
shl x10_ls x10_l (64-61)@uint64;
add x7 x10_ls x10_h;
(* ror	x16, x5, #28                                #! PC = 0xaaaaaaaaab30 *)
split x5_h x5_l x5 28;
shl x5_ls x5_l (64-28)@uint64;
add x16 x5_ls x5_h;
(* ror	x5, x26, #36                                #! PC = 0xaaaaaaaaab34 *)
split x26_h x26_l x26 36;
shl x26_ls x26_l (64-36)@uint64;
add x5 x26_ls x26_h;
(* ror	x10, x30, #63                               #! PC = 0xaaaaaaaaab38 *)
split x30_h x30_l x30 63;
shl x30_ls x30_l (64-63)@uint64;
add x10 x30_ls x30_h;
(* ror	x15, x28, #37                               #! PC = 0xaaaaaaaaab3c *)
split x28_h x28_l x28 37;
shl x28_ls x28_l (64-37)@uint64;
add x15 x28_ls x28_h;
(* ror	x20, x27, #2                                #! PC = 0xaaaaaaaaab40 *)
split x27_h x27_l x27 2;
shl x27_ls x27_l (64-2)@uint64;
add x20 x27_ls x27_h;
(* bic	x26, x2, x1                                 #! PC = 0xaaaaaaaaab44 *)
not x1_not@uint64 x1;
and x26@uint64 x2 x1_not;
(* bic	x27, x3, x2                                 #! PC = 0xaaaaaaaaab48 *)
not x2_not@uint64 x2;
and x27@uint64 x3 x2_not;
(* bic	x28, x0, x4                                 #! PC = 0xaaaaaaaaab4c *)
not x4_not@uint64 x4;
and x28@uint64 x0 x4_not;
(* bic	x30, x1, x0                                 #! PC = 0xaaaaaaaaab50 *)
not x0_not@uint64 x0;
and x30@uint64 x1 x0_not;
(* eor	x0, x0, x26                                 #! PC = 0xaaaaaaaaab54 *)
xor x0@uint64 x0 x26;
(* bic	x26, x4, x3                                 #! PC = 0xaaaaaaaaab58 *)
not x3_not@uint64 x3;
and x26@uint64 x4 x3_not;
(* eor	x1, x1, x27                                 #! PC = 0xaaaaaaaaab5c *)
xor x1@uint64 x1 x27;
(* ldr	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; Value = 0x0000aaaaaaaaa948; PC = 0xaaaaaaaaab60 *)
mov x27 L0xffffffffe8d0;
(* eor	x3, x3, x28                                 #! PC = 0xaaaaaaaaab64 *)
xor x3@uint64 x3 x28;
(* eor	x4, x4, x30                                 #! PC = 0xaaaaaaaaab68 *)
xor x4@uint64 x4 x30;
(* eor	x2, x2, x26                                 #! PC = 0xaaaaaaaaab6c *)
xor x2@uint64 x2 x26;
(* ldr	x30, [x27], #8                              #! EA = L0xaaaaaaaaa948; Value = 0x0000000000008082; PC = 0xaaaaaaaaab70 *)
mov x30 L0xaaaaaaaaa948;
(* bic	x26, x7, x6                                 #! PC = 0xaaaaaaaaab74 *)
not x6_not@uint64 x6;
and x26@uint64 x7 x6_not;
(* str	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; PC = 0xaaaaaaaaab7c *)
mov L0xffffffffe8d0 x27;
(* bic	x27, x8, x7                                 #! PC = 0xaaaaaaaaab80 *)
not x7_not@uint64 x7;
and x27@uint64 x8 x7_not;
(* bic	x28, x5, x9                                 #! PC = 0xaaaaaaaaab84 *)
not x9_not@uint64 x9;
and x28@uint64 x5 x9_not;
(* eor	x0, x0, x30                                 #! PC = 0xaaaaaaaaab88 *)
xor x0@uint64 x0 x30;
(* bic	x30, x6, x5                                 #! PC = 0xaaaaaaaaab8c *)
not x5_not@uint64 x5;
and x30@uint64 x6 x5_not;
(* eor	x5, x5, x26                                 #! PC = 0xaaaaaaaaab90 *)
xor x5@uint64 x5 x26;
(* bic	x26, x9, x8                                 #! PC = 0xaaaaaaaaab94 *)
not x8_not@uint64 x8;
and x26@uint64 x9 x8_not;
(* eor	x6, x6, x27                                 #! PC = 0xaaaaaaaaab98 *)
xor x6@uint64 x6 x27;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaab9c *)
xor x8@uint64 x8 x28;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaba0 *)
xor x9@uint64 x9 x30;
(* eor	x7, x7, x26                                 #! PC = 0xaaaaaaaaaba4 *)
xor x7@uint64 x7 x26;
(* bic	x26, x12, x11                               #! PC = 0xaaaaaaaaaba8 *)
not x11_not@uint64 x11;
and x26@uint64 x12 x11_not;
(* bic	x27, x13, x12                               #! PC = 0xaaaaaaaaabac *)
not x12_not@uint64 x12;
and x27@uint64 x13 x12_not;
(* bic	x28, x10, x14                               #! PC = 0xaaaaaaaaabb0 *)
not x14_not@uint64 x14;
and x28@uint64 x10 x14_not;
(* bic	x30, x11, x10                               #! PC = 0xaaaaaaaaabb4 *)
not x10_not@uint64 x10;
and x30@uint64 x11 x10_not;
(* eor	x10, x10, x26                               #! PC = 0xaaaaaaaaabb8 *)
xor x10@uint64 x10 x26;
(* bic	x26, x14, x13                               #! PC = 0xaaaaaaaaabbc *)
not x13_not@uint64 x13;
and x26@uint64 x14 x13_not;
(* eor	x11, x11, x27                               #! PC = 0xaaaaaaaaabc0 *)
xor x11@uint64 x11 x27;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaabc4 *)
xor x13@uint64 x13 x28;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaabc8 *)
xor x14@uint64 x14 x30;
(* eor	x12, x12, x26                               #! PC = 0xaaaaaaaaabcc *)
xor x12@uint64 x12 x26;
(* bic	x26, x17, x16                               #! PC = 0xaaaaaaaaabd0 *)
not x16_not@uint64 x16;
and x26@uint64 x17 x16_not;
(* bic	x27, x25, x17                               #! PC = 0xaaaaaaaaabd4 *)
not x17_not@uint64 x17;
and x27@uint64 x25 x17_not;
(* bic	x28, x15, x19                               #! PC = 0xaaaaaaaaabd8 *)
not x19_not@uint64 x19;
and x28@uint64 x15 x19_not;
(* bic	x30, x16, x15                               #! PC = 0xaaaaaaaaabdc *)
not x15_not@uint64 x15;
and x30@uint64 x16 x15_not;
(* eor	x15, x15, x26                               #! PC = 0xaaaaaaaaabe0 *)
xor x15@uint64 x15 x26;
(* bic	x26, x19, x25                               #! PC = 0xaaaaaaaaabe4 *)
not x25_not@uint64 x25;
and x26@uint64 x19 x25_not;
(* eor	x16, x16, x27                               #! PC = 0xaaaaaaaaabe8 *)
xor x16@uint64 x16 x27;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaabec *)
xor x25@uint64 x25 x28;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaabf0 *)
xor x19@uint64 x19 x30;
(* eor	x17, x17, x26                               #! PC = 0xaaaaaaaaabf4 *)
xor x17@uint64 x17 x26;
(* bic	x26, x22, x21                               #! PC = 0xaaaaaaaaabf8 *)
not x21_not@uint64 x21;
and x26@uint64 x22 x21_not;
(* bic	x27, x23, x22                               #! PC = 0xaaaaaaaaabfc *)
not x22_not@uint64 x22;
and x27@uint64 x23 x22_not;
(* bic	x28, x20, x24                               #! PC = 0xaaaaaaaaac00 *)
not x24_not@uint64 x24;
and x28@uint64 x20 x24_not;
(* bic	x30, x21, x20                               #! PC = 0xaaaaaaaaac04 *)
not x20_not@uint64 x20;
and x30@uint64 x21 x20_not;
(* eor	x20, x20, x26                               #! PC = 0xaaaaaaaaac08 *)
xor x20@uint64 x20 x26;
(* bic	x26, x24, x23                               #! PC = 0xaaaaaaaaac0c *)
not x23_not@uint64 x23;
and x26@uint64 x24 x23_not;
(* eor	x21, x21, x27                               #! PC = 0xaaaaaaaaac10 *)
xor x21@uint64 x21 x27;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaac14 *)
xor x23@uint64 x23 x28;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaac18 *)
xor x24@uint64 x24 x30;
(* eor	x22, x22, x26                               #! PC = 0xaaaaaaaaac1c *)
xor x22@uint64 x22 x26;
(* #b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! PC = 0xaaaaaaaaac20 *)
#b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! 0xaaaaaaaaac20 = 0xaaaaaaaaac20;
(* eor	x26, x0, x5                                 #! PC = 0xaaaaaaaaaa10 *)
xor x26@uint64 x0 x5;
(* stp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; PC = 0xaaaaaaaaaa14 *)
mov L0xffffffffe8c0 x4;
mov L0xffffffffe8c8 x9;
(* eor	x27, x1, x6                                 #! PC = 0xaaaaaaaaaa18 *)
xor x27@uint64 x1 x6;
(* eor	x28, x2, x7                                 #! PC = 0xaaaaaaaaaa1c *)
xor x28@uint64 x2 x7;
(* eor	x30, x3, x8                                 #! PC = 0xaaaaaaaaaa20 *)
xor x30@uint64 x3 x8;
(* eor	x4, x4, x9                                  #! PC = 0xaaaaaaaaaa24 *)
xor x4@uint64 x4 x9;
(* eor	x26, x26, x10                               #! PC = 0xaaaaaaaaaa28 *)
xor x26@uint64 x26 x10;
(* eor	x27, x27, x11                               #! PC = 0xaaaaaaaaaa2c *)
xor x27@uint64 x27 x11;
(* eor	x28, x28, x12                               #! PC = 0xaaaaaaaaaa30 *)
xor x28@uint64 x28 x12;
(* eor	x30, x30, x13                               #! PC = 0xaaaaaaaaaa34 *)
xor x30@uint64 x30 x13;
(* eor	x4, x4, x14                                 #! PC = 0xaaaaaaaaaa38 *)
xor x4@uint64 x4 x14;
(* eor	x26, x26, x15                               #! PC = 0xaaaaaaaaaa3c *)
xor x26@uint64 x26 x15;
(* eor	x27, x27, x16                               #! PC = 0xaaaaaaaaaa40 *)
xor x27@uint64 x27 x16;
(* eor	x28, x28, x17                               #! PC = 0xaaaaaaaaaa44 *)
xor x28@uint64 x28 x17;
(* eor	x30, x30, x25                               #! PC = 0xaaaaaaaaaa48 *)
xor x30@uint64 x30 x25;
(* eor	x4, x4, x19                                 #! PC = 0xaaaaaaaaaa4c *)
xor x4@uint64 x4 x19;
(* eor	x26, x26, x20                               #! PC = 0xaaaaaaaaaa50 *)
xor x26@uint64 x26 x20;
(* eor	x28, x28, x22                               #! PC = 0xaaaaaaaaaa54 *)
xor x28@uint64 x28 x22;
(* eor	x27, x27, x21                               #! PC = 0xaaaaaaaaaa58 *)
xor x27@uint64 x27 x21;
(* eor	x30, x30, x23                               #! PC = 0xaaaaaaaaaa5c *)
xor x30@uint64 x30 x23;
(* eor	x4, x4, x24                                 #! PC = 0xaaaaaaaaaa60 *)
xor x4@uint64 x4 x24;
(* eor	x9, x26, x28, ror #63                       #! PC = 0xaaaaaaaaaa64 *)
split x28_h x28_l x28 63;
shl x28_ls x28_l 1@uint64;
add x28_ror x28_ls x28_h;
xor x9@uint64 x26 x28_ror;
(* eor	x1, x1, x9                                  #! PC = 0xaaaaaaaaaa68 *)
xor x1@uint64 x1 x9;
(* eor	x6, x6, x9                                  #! PC = 0xaaaaaaaaaa6c *)
xor x6@uint64 x6 x9;
(* eor	x11, x11, x9                                #! PC = 0xaaaaaaaaaa70 *)
xor x11@uint64 x11 x9;
(* eor	x16, x16, x9                                #! PC = 0xaaaaaaaaaa74 *)
xor x16@uint64 x16 x9;
(* eor	x21, x21, x9                                #! PC = 0xaaaaaaaaaa78 *)
xor x21@uint64 x21 x9;
(* eor	x9, x27, x30, ror #63                       #! PC = 0xaaaaaaaaaa7c *)
split x30_h x30_l x30 63;
shl x30_ls x30_l 1@uint64;
add x30_ror x30_ls x30_h;
xor x9@uint64 x27 x30_ror;
(* eor	x28, x28, x4, ror #63                       #! PC = 0xaaaaaaaaaa80 *)
split x4_h x4_l x4 63;
shl x4_ls x4_l 1@uint64;
add x4_ror x4_ls x4_h;
xor x28@uint64 x28 x4_ror;
(* eor	x30, x30, x26, ror #63                      #! PC = 0xaaaaaaaaaa84 *)
split x26_h x26_l x26 63;
shl x26_ls x26_l 1@uint64;
add x26_ror x26_ls x26_h;
xor x30@uint64 x30 x26_ror;
(* eor	x4, x4, x27, ror #63                        #! PC = 0xaaaaaaaaaa88 *)
split x27_h x27_l x27 63;
shl x27_ls x27_l 1@uint64;
add x27_ror x27_ls x27_h;
xor x4@uint64 x4 x27_ror;
(* eor	x27, x2, x9                                 #! PC = 0xaaaaaaaaaa8c *)
xor x27@uint64 x2 x9;
(* eor	x7, x7, x9                                  #! PC = 0xaaaaaaaaaa90 *)
xor x7@uint64 x7 x9;
(* eor	x12, x12, x9                                #! PC = 0xaaaaaaaaaa94 *)
xor x12@uint64 x12 x9;
(* eor	x17, x17, x9                                #! PC = 0xaaaaaaaaaa98 *)
xor x17@uint64 x17 x9;
(* eor	x22, x22, x9                                #! PC = 0xaaaaaaaaaa9c *)
xor x22@uint64 x22 x9;
(* eor	x0, x0, x4                                  #! PC = 0xaaaaaaaaaaa0 *)
xor x0@uint64 x0 x4;
(* eor	x5, x5, x4                                  #! PC = 0xaaaaaaaaaaa4 *)
xor x5@uint64 x5 x4;
(* eor	x10, x10, x4                                #! PC = 0xaaaaaaaaaaa8 *)
xor x10@uint64 x10 x4;
(* eor	x15, x15, x4                                #! PC = 0xaaaaaaaaaaac *)
xor x15@uint64 x15 x4;
(* eor	x20, x20, x4                                #! PC = 0xaaaaaaaaaab0 *)
xor x20@uint64 x20 x4;
(* ldp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; Value = 0xe3e52d5be3355e9f; PC = 0xaaaaaaaaaab4 *)
mov x4 L0xffffffffe8c0;
mov x9 L0xffffffffe8c8;
(* eor	x26, x3, x28                                #! PC = 0xaaaaaaaaaab8 *)
xor x26@uint64 x3 x28;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaaabc *)
xor x8@uint64 x8 x28;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaaac0 *)
xor x13@uint64 x13 x28;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaaac4 *)
xor x25@uint64 x25 x28;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaaac8 *)
xor x23@uint64 x23 x28;
(* eor	x28, x4, x30                                #! PC = 0xaaaaaaaaaacc *)
xor x28@uint64 x4 x30;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaad0 *)
xor x9@uint64 x9 x30;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaaad4 *)
xor x14@uint64 x14 x30;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaaad8 *)
xor x19@uint64 x19 x30;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaaadc *)
xor x24@uint64 x24 x30;
(* mov	x30, x1                                     #! PC = 0xaaaaaaaaaae0 *)
mov x30 x1;
(* ror	x1, x6, #20                                 #! PC = 0xaaaaaaaaaae4 *)
split x6_h x6_l x6 20;
shl x6_ls x6_l (64-20)@uint64;
add x1 x6_ls x6_h;
(* ror	x2, x12, #21                                #! PC = 0xaaaaaaaaaae8 *)
split x12_h x12_l x12 21;
shl x12_ls x12_l (64-21)@uint64;
add x2 x12_ls x12_h;
(* ror	x3, x25, #43                                #! PC = 0xaaaaaaaaaaec *)
split x25_h x25_l x25 43;
shl x25_ls x25_l (64-43)@uint64;
add x3 x25_ls x25_h;
(* ror	x4, x24, #50                                #! PC = 0xaaaaaaaaaaf0 *)
split x24_h x24_l x24 50;
shl x24_ls x24_l (64-50)@uint64;
add x4 x24_ls x24_h;
(* ror	x6, x9, #44                                 #! PC = 0xaaaaaaaaaaf4 *)
split x9_h x9_l x9 44;
shl x9_ls x9_l (64-44)@uint64;
add x6 x9_ls x9_h;
(* ror	x12, x13, #39                               #! PC = 0xaaaaaaaaaaf8 *)
split x13_h x13_l x13 39;
shl x13_ls x13_l (64-39)@uint64;
add x12 x13_ls x13_h;
(* ror	x25, x17, #49                               #! PC = 0xaaaaaaaaaafc *)
split x17_h x17_l x17 49;
shl x17_ls x17_l (64-49)@uint64;
add x25 x17_ls x17_h;
(* ror	x24, x21, #62                               #! PC = 0xaaaaaaaaab00 *)
split x21_h x21_l x21 62;
shl x21_ls x21_l (64-62)@uint64;
add x24 x21_ls x21_h;
(* ror	x9, x22, #3                                 #! PC = 0xaaaaaaaaab04 *)
split x22_h x22_l x22 3;
shl x22_ls x22_l (64-3)@uint64;
add x9 x22_ls x22_h;
(* ror	x13, x19, #56                               #! PC = 0xaaaaaaaaab08 *)
split x19_h x19_l x19 56;
shl x19_ls x19_l (64-56)@uint64;
add x13 x19_ls x19_h;
(* ror	x17, x11, #54                               #! PC = 0xaaaaaaaaab0c *)
split x11_h x11_l x11 54;
shl x11_ls x11_l (64-54)@uint64;
add x17 x11_ls x11_h;
(* ror	x21, x8, #9                                 #! PC = 0xaaaaaaaaab10 *)
split x8_h x8_l x8 9;
shl x8_ls x8_l (64-9)@uint64;
add x21 x8_ls x8_h;
(* ror	x22, x14, #25                               #! PC = 0xaaaaaaaaab14 *)
split x14_h x14_l x14 25;
shl x14_ls x14_l (64-25)@uint64;
add x22 x14_ls x14_h;
(* ror	x19, x23, #8                                #! PC = 0xaaaaaaaaab18 *)
split x23_h x23_l x23 8;
shl x23_ls x23_l (64-8)@uint64;
add x19 x23_ls x23_h;
(* ror	x11, x7, #58                                #! PC = 0xaaaaaaaaab1c *)
split x7_h x7_l x7 58;
shl x7_ls x7_l (64-58)@uint64;
add x11 x7_ls x7_h;
(* ror	x8, x16, #19                                #! PC = 0xaaaaaaaaab20 *)
split x16_h x16_l x16 19;
shl x16_ls x16_l (64-19)@uint64;
add x8 x16_ls x16_h;
(* ror	x14, x20, #46                               #! PC = 0xaaaaaaaaab24 *)
split x20_h x20_l x20 46;
shl x20_ls x20_l (64-46)@uint64;
add x14 x20_ls x20_h;
(* ror	x23, x15, #23                               #! PC = 0xaaaaaaaaab28 *)
split x15_h x15_l x15 23;
shl x15_ls x15_l (64-23)@uint64;
add x23 x15_ls x15_h;
(* ror	x7, x10, #61                                #! PC = 0xaaaaaaaaab2c *)
split x10_h x10_l x10 61;
shl x10_ls x10_l (64-61)@uint64;
add x7 x10_ls x10_h;
(* ror	x16, x5, #28                                #! PC = 0xaaaaaaaaab30 *)
split x5_h x5_l x5 28;
shl x5_ls x5_l (64-28)@uint64;
add x16 x5_ls x5_h;
(* ror	x5, x26, #36                                #! PC = 0xaaaaaaaaab34 *)
split x26_h x26_l x26 36;
shl x26_ls x26_l (64-36)@uint64;
add x5 x26_ls x26_h;
(* ror	x10, x30, #63                               #! PC = 0xaaaaaaaaab38 *)
split x30_h x30_l x30 63;
shl x30_ls x30_l (64-63)@uint64;
add x10 x30_ls x30_h;
(* ror	x15, x28, #37                               #! PC = 0xaaaaaaaaab3c *)
split x28_h x28_l x28 37;
shl x28_ls x28_l (64-37)@uint64;
add x15 x28_ls x28_h;
(* ror	x20, x27, #2                                #! PC = 0xaaaaaaaaab40 *)
split x27_h x27_l x27 2;
shl x27_ls x27_l (64-2)@uint64;
add x20 x27_ls x27_h;
(* bic	x26, x2, x1                                 #! PC = 0xaaaaaaaaab44 *)
not x1_not@uint64 x1;
and x26@uint64 x2 x1_not;
(* bic	x27, x3, x2                                 #! PC = 0xaaaaaaaaab48 *)
not x2_not@uint64 x2;
and x27@uint64 x3 x2_not;
(* bic	x28, x0, x4                                 #! PC = 0xaaaaaaaaab4c *)
not x4_not@uint64 x4;
and x28@uint64 x0 x4_not;
(* bic	x30, x1, x0                                 #! PC = 0xaaaaaaaaab50 *)
not x0_not@uint64 x0;
and x30@uint64 x1 x0_not;
(* eor	x0, x0, x26                                 #! PC = 0xaaaaaaaaab54 *)
xor x0@uint64 x0 x26;
(* bic	x26, x4, x3                                 #! PC = 0xaaaaaaaaab58 *)
not x3_not@uint64 x3;
and x26@uint64 x4 x3_not;
(* eor	x1, x1, x27                                 #! PC = 0xaaaaaaaaab5c *)
xor x1@uint64 x1 x27;
(* ldr	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; Value = 0x0000aaaaaaaaa950; PC = 0xaaaaaaaaab60 *)
mov x27 L0xffffffffe8d0;
(* eor	x3, x3, x28                                 #! PC = 0xaaaaaaaaab64 *)
xor x3@uint64 x3 x28;
(* eor	x4, x4, x30                                 #! PC = 0xaaaaaaaaab68 *)
xor x4@uint64 x4 x30;
(* eor	x2, x2, x26                                 #! PC = 0xaaaaaaaaab6c *)
xor x2@uint64 x2 x26;
(* ldr	x30, [x27], #8                              #! EA = L0xaaaaaaaaa950; Value = 0x800000000000808a; PC = 0xaaaaaaaaab70 *)
mov x30 L0xaaaaaaaaa950;
(* bic	x26, x7, x6                                 #! PC = 0xaaaaaaaaab74 *)
not x6_not@uint64 x6;
and x26@uint64 x7 x6_not;
(* str	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; PC = 0xaaaaaaaaab7c *)
mov L0xffffffffe8d0 x27;
(* bic	x27, x8, x7                                 #! PC = 0xaaaaaaaaab80 *)
not x7_not@uint64 x7;
and x27@uint64 x8 x7_not;
(* bic	x28, x5, x9                                 #! PC = 0xaaaaaaaaab84 *)
not x9_not@uint64 x9;
and x28@uint64 x5 x9_not;
(* eor	x0, x0, x30                                 #! PC = 0xaaaaaaaaab88 *)
xor x0@uint64 x0 x30;
(* bic	x30, x6, x5                                 #! PC = 0xaaaaaaaaab8c *)
not x5_not@uint64 x5;
and x30@uint64 x6 x5_not;
(* eor	x5, x5, x26                                 #! PC = 0xaaaaaaaaab90 *)
xor x5@uint64 x5 x26;
(* bic	x26, x9, x8                                 #! PC = 0xaaaaaaaaab94 *)
not x8_not@uint64 x8;
and x26@uint64 x9 x8_not;
(* eor	x6, x6, x27                                 #! PC = 0xaaaaaaaaab98 *)
xor x6@uint64 x6 x27;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaab9c *)
xor x8@uint64 x8 x28;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaba0 *)
xor x9@uint64 x9 x30;
(* eor	x7, x7, x26                                 #! PC = 0xaaaaaaaaaba4 *)
xor x7@uint64 x7 x26;
(* bic	x26, x12, x11                               #! PC = 0xaaaaaaaaaba8 *)
not x11_not@uint64 x11;
and x26@uint64 x12 x11_not;
(* bic	x27, x13, x12                               #! PC = 0xaaaaaaaaabac *)
not x12_not@uint64 x12;
and x27@uint64 x13 x12_not;
(* bic	x28, x10, x14                               #! PC = 0xaaaaaaaaabb0 *)
not x14_not@uint64 x14;
and x28@uint64 x10 x14_not;
(* bic	x30, x11, x10                               #! PC = 0xaaaaaaaaabb4 *)
not x10_not@uint64 x10;
and x30@uint64 x11 x10_not;
(* eor	x10, x10, x26                               #! PC = 0xaaaaaaaaabb8 *)
xor x10@uint64 x10 x26;
(* bic	x26, x14, x13                               #! PC = 0xaaaaaaaaabbc *)
not x13_not@uint64 x13;
and x26@uint64 x14 x13_not;
(* eor	x11, x11, x27                               #! PC = 0xaaaaaaaaabc0 *)
xor x11@uint64 x11 x27;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaabc4 *)
xor x13@uint64 x13 x28;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaabc8 *)
xor x14@uint64 x14 x30;
(* eor	x12, x12, x26                               #! PC = 0xaaaaaaaaabcc *)
xor x12@uint64 x12 x26;
(* bic	x26, x17, x16                               #! PC = 0xaaaaaaaaabd0 *)
not x16_not@uint64 x16;
and x26@uint64 x17 x16_not;
(* bic	x27, x25, x17                               #! PC = 0xaaaaaaaaabd4 *)
not x17_not@uint64 x17;
and x27@uint64 x25 x17_not;
(* bic	x28, x15, x19                               #! PC = 0xaaaaaaaaabd8 *)
not x19_not@uint64 x19;
and x28@uint64 x15 x19_not;
(* bic	x30, x16, x15                               #! PC = 0xaaaaaaaaabdc *)
not x15_not@uint64 x15;
and x30@uint64 x16 x15_not;
(* eor	x15, x15, x26                               #! PC = 0xaaaaaaaaabe0 *)
xor x15@uint64 x15 x26;
(* bic	x26, x19, x25                               #! PC = 0xaaaaaaaaabe4 *)
not x25_not@uint64 x25;
and x26@uint64 x19 x25_not;
(* eor	x16, x16, x27                               #! PC = 0xaaaaaaaaabe8 *)
xor x16@uint64 x16 x27;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaabec *)
xor x25@uint64 x25 x28;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaabf0 *)
xor x19@uint64 x19 x30;
(* eor	x17, x17, x26                               #! PC = 0xaaaaaaaaabf4 *)
xor x17@uint64 x17 x26;
(* bic	x26, x22, x21                               #! PC = 0xaaaaaaaaabf8 *)
not x21_not@uint64 x21;
and x26@uint64 x22 x21_not;
(* bic	x27, x23, x22                               #! PC = 0xaaaaaaaaabfc *)
not x22_not@uint64 x22;
and x27@uint64 x23 x22_not;
(* bic	x28, x20, x24                               #! PC = 0xaaaaaaaaac00 *)
not x24_not@uint64 x24;
and x28@uint64 x20 x24_not;
(* bic	x30, x21, x20                               #! PC = 0xaaaaaaaaac04 *)
not x20_not@uint64 x20;
and x30@uint64 x21 x20_not;
(* eor	x20, x20, x26                               #! PC = 0xaaaaaaaaac08 *)
xor x20@uint64 x20 x26;
(* bic	x26, x24, x23                               #! PC = 0xaaaaaaaaac0c *)
not x23_not@uint64 x23;
and x26@uint64 x24 x23_not;
(* eor	x21, x21, x27                               #! PC = 0xaaaaaaaaac10 *)
xor x21@uint64 x21 x27;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaac14 *)
xor x23@uint64 x23 x28;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaac18 *)
xor x24@uint64 x24 x30;
(* eor	x22, x22, x26                               #! PC = 0xaaaaaaaaac1c *)
xor x22@uint64 x22 x26;
(* #b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! PC = 0xaaaaaaaaac20 *)
#b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! 0xaaaaaaaaac20 = 0xaaaaaaaaac20;
(* eor	x26, x0, x5                                 #! PC = 0xaaaaaaaaaa10 *)
xor x26@uint64 x0 x5;
(* stp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; PC = 0xaaaaaaaaaa14 *)
mov L0xffffffffe8c0 x4;
mov L0xffffffffe8c8 x9;
(* eor	x27, x1, x6                                 #! PC = 0xaaaaaaaaaa18 *)
xor x27@uint64 x1 x6;
(* eor	x28, x2, x7                                 #! PC = 0xaaaaaaaaaa1c *)
xor x28@uint64 x2 x7;
(* eor	x30, x3, x8                                 #! PC = 0xaaaaaaaaaa20 *)
xor x30@uint64 x3 x8;
(* eor	x4, x4, x9                                  #! PC = 0xaaaaaaaaaa24 *)
xor x4@uint64 x4 x9;
(* eor	x26, x26, x10                               #! PC = 0xaaaaaaaaaa28 *)
xor x26@uint64 x26 x10;
(* eor	x27, x27, x11                               #! PC = 0xaaaaaaaaaa2c *)
xor x27@uint64 x27 x11;
(* eor	x28, x28, x12                               #! PC = 0xaaaaaaaaaa30 *)
xor x28@uint64 x28 x12;
(* eor	x30, x30, x13                               #! PC = 0xaaaaaaaaaa34 *)
xor x30@uint64 x30 x13;
(* eor	x4, x4, x14                                 #! PC = 0xaaaaaaaaaa38 *)
xor x4@uint64 x4 x14;
(* eor	x26, x26, x15                               #! PC = 0xaaaaaaaaaa3c *)
xor x26@uint64 x26 x15;
(* eor	x27, x27, x16                               #! PC = 0xaaaaaaaaaa40 *)
xor x27@uint64 x27 x16;
(* eor	x28, x28, x17                               #! PC = 0xaaaaaaaaaa44 *)
xor x28@uint64 x28 x17;
(* eor	x30, x30, x25                               #! PC = 0xaaaaaaaaaa48 *)
xor x30@uint64 x30 x25;
(* eor	x4, x4, x19                                 #! PC = 0xaaaaaaaaaa4c *)
xor x4@uint64 x4 x19;
(* eor	x26, x26, x20                               #! PC = 0xaaaaaaaaaa50 *)
xor x26@uint64 x26 x20;
(* eor	x28, x28, x22                               #! PC = 0xaaaaaaaaaa54 *)
xor x28@uint64 x28 x22;
(* eor	x27, x27, x21                               #! PC = 0xaaaaaaaaaa58 *)
xor x27@uint64 x27 x21;
(* eor	x30, x30, x23                               #! PC = 0xaaaaaaaaaa5c *)
xor x30@uint64 x30 x23;
(* eor	x4, x4, x24                                 #! PC = 0xaaaaaaaaaa60 *)
xor x4@uint64 x4 x24;
(* eor	x9, x26, x28, ror #63                       #! PC = 0xaaaaaaaaaa64 *)
split x28_h x28_l x28 63;
shl x28_ls x28_l 1@uint64;
add x28_ror x28_ls x28_h;
xor x9@uint64 x26 x28_ror;
(* eor	x1, x1, x9                                  #! PC = 0xaaaaaaaaaa68 *)
xor x1@uint64 x1 x9;
(* eor	x6, x6, x9                                  #! PC = 0xaaaaaaaaaa6c *)
xor x6@uint64 x6 x9;
(* eor	x11, x11, x9                                #! PC = 0xaaaaaaaaaa70 *)
xor x11@uint64 x11 x9;
(* eor	x16, x16, x9                                #! PC = 0xaaaaaaaaaa74 *)
xor x16@uint64 x16 x9;
(* eor	x21, x21, x9                                #! PC = 0xaaaaaaaaaa78 *)
xor x21@uint64 x21 x9;
(* eor	x9, x27, x30, ror #63                       #! PC = 0xaaaaaaaaaa7c *)
split x30_h x30_l x30 63;
shl x30_ls x30_l 1@uint64;
add x30_ror x30_ls x30_h;
xor x9@uint64 x27 x30_ror;
(* eor	x28, x28, x4, ror #63                       #! PC = 0xaaaaaaaaaa80 *)
split x4_h x4_l x4 63;
shl x4_ls x4_l 1@uint64;
add x4_ror x4_ls x4_h;
xor x28@uint64 x28 x4_ror;
(* eor	x30, x30, x26, ror #63                      #! PC = 0xaaaaaaaaaa84 *)
split x26_h x26_l x26 63;
shl x26_ls x26_l 1@uint64;
add x26_ror x26_ls x26_h;
xor x30@uint64 x30 x26_ror;
(* eor	x4, x4, x27, ror #63                        #! PC = 0xaaaaaaaaaa88 *)
split x27_h x27_l x27 63;
shl x27_ls x27_l 1@uint64;
add x27_ror x27_ls x27_h;
xor x4@uint64 x4 x27_ror;
(* eor	x27, x2, x9                                 #! PC = 0xaaaaaaaaaa8c *)
xor x27@uint64 x2 x9;
(* eor	x7, x7, x9                                  #! PC = 0xaaaaaaaaaa90 *)
xor x7@uint64 x7 x9;
(* eor	x12, x12, x9                                #! PC = 0xaaaaaaaaaa94 *)
xor x12@uint64 x12 x9;
(* eor	x17, x17, x9                                #! PC = 0xaaaaaaaaaa98 *)
xor x17@uint64 x17 x9;
(* eor	x22, x22, x9                                #! PC = 0xaaaaaaaaaa9c *)
xor x22@uint64 x22 x9;
(* eor	x0, x0, x4                                  #! PC = 0xaaaaaaaaaaa0 *)
xor x0@uint64 x0 x4;
(* eor	x5, x5, x4                                  #! PC = 0xaaaaaaaaaaa4 *)
xor x5@uint64 x5 x4;
(* eor	x10, x10, x4                                #! PC = 0xaaaaaaaaaaa8 *)
xor x10@uint64 x10 x4;
(* eor	x15, x15, x4                                #! PC = 0xaaaaaaaaaaac *)
xor x15@uint64 x15 x4;
(* eor	x20, x20, x4                                #! PC = 0xaaaaaaaaaab0 *)
xor x20@uint64 x20 x4;
(* ldp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; Value = 0x42f45fc8fc1fe997; PC = 0xaaaaaaaaaab4 *)
mov x4 L0xffffffffe8c0;
mov x9 L0xffffffffe8c8;
(* eor	x26, x3, x28                                #! PC = 0xaaaaaaaaaab8 *)
xor x26@uint64 x3 x28;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaaabc *)
xor x8@uint64 x8 x28;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaaac0 *)
xor x13@uint64 x13 x28;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaaac4 *)
xor x25@uint64 x25 x28;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaaac8 *)
xor x23@uint64 x23 x28;
(* eor	x28, x4, x30                                #! PC = 0xaaaaaaaaaacc *)
xor x28@uint64 x4 x30;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaad0 *)
xor x9@uint64 x9 x30;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaaad4 *)
xor x14@uint64 x14 x30;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaaad8 *)
xor x19@uint64 x19 x30;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaaadc *)
xor x24@uint64 x24 x30;
(* mov	x30, x1                                     #! PC = 0xaaaaaaaaaae0 *)
mov x30 x1;
(* ror	x1, x6, #20                                 #! PC = 0xaaaaaaaaaae4 *)
split x6_h x6_l x6 20;
shl x6_ls x6_l (64-20)@uint64;
add x1 x6_ls x6_h;
(* ror	x2, x12, #21                                #! PC = 0xaaaaaaaaaae8 *)
split x12_h x12_l x12 21;
shl x12_ls x12_l (64-21)@uint64;
add x2 x12_ls x12_h;
(* ror	x3, x25, #43                                #! PC = 0xaaaaaaaaaaec *)
split x25_h x25_l x25 43;
shl x25_ls x25_l (64-43)@uint64;
add x3 x25_ls x25_h;
(* ror	x4, x24, #50                                #! PC = 0xaaaaaaaaaaf0 *)
split x24_h x24_l x24 50;
shl x24_ls x24_l (64-50)@uint64;
add x4 x24_ls x24_h;
(* ror	x6, x9, #44                                 #! PC = 0xaaaaaaaaaaf4 *)
split x9_h x9_l x9 44;
shl x9_ls x9_l (64-44)@uint64;
add x6 x9_ls x9_h;
(* ror	x12, x13, #39                               #! PC = 0xaaaaaaaaaaf8 *)
split x13_h x13_l x13 39;
shl x13_ls x13_l (64-39)@uint64;
add x12 x13_ls x13_h;
(* ror	x25, x17, #49                               #! PC = 0xaaaaaaaaaafc *)
split x17_h x17_l x17 49;
shl x17_ls x17_l (64-49)@uint64;
add x25 x17_ls x17_h;
(* ror	x24, x21, #62                               #! PC = 0xaaaaaaaaab00 *)
split x21_h x21_l x21 62;
shl x21_ls x21_l (64-62)@uint64;
add x24 x21_ls x21_h;
(* ror	x9, x22, #3                                 #! PC = 0xaaaaaaaaab04 *)
split x22_h x22_l x22 3;
shl x22_ls x22_l (64-3)@uint64;
add x9 x22_ls x22_h;
(* ror	x13, x19, #56                               #! PC = 0xaaaaaaaaab08 *)
split x19_h x19_l x19 56;
shl x19_ls x19_l (64-56)@uint64;
add x13 x19_ls x19_h;
(* ror	x17, x11, #54                               #! PC = 0xaaaaaaaaab0c *)
split x11_h x11_l x11 54;
shl x11_ls x11_l (64-54)@uint64;
add x17 x11_ls x11_h;
(* ror	x21, x8, #9                                 #! PC = 0xaaaaaaaaab10 *)
split x8_h x8_l x8 9;
shl x8_ls x8_l (64-9)@uint64;
add x21 x8_ls x8_h;
(* ror	x22, x14, #25                               #! PC = 0xaaaaaaaaab14 *)
split x14_h x14_l x14 25;
shl x14_ls x14_l (64-25)@uint64;
add x22 x14_ls x14_h;
(* ror	x19, x23, #8                                #! PC = 0xaaaaaaaaab18 *)
split x23_h x23_l x23 8;
shl x23_ls x23_l (64-8)@uint64;
add x19 x23_ls x23_h;
(* ror	x11, x7, #58                                #! PC = 0xaaaaaaaaab1c *)
split x7_h x7_l x7 58;
shl x7_ls x7_l (64-58)@uint64;
add x11 x7_ls x7_h;
(* ror	x8, x16, #19                                #! PC = 0xaaaaaaaaab20 *)
split x16_h x16_l x16 19;
shl x16_ls x16_l (64-19)@uint64;
add x8 x16_ls x16_h;
(* ror	x14, x20, #46                               #! PC = 0xaaaaaaaaab24 *)
split x20_h x20_l x20 46;
shl x20_ls x20_l (64-46)@uint64;
add x14 x20_ls x20_h;
(* ror	x23, x15, #23                               #! PC = 0xaaaaaaaaab28 *)
split x15_h x15_l x15 23;
shl x15_ls x15_l (64-23)@uint64;
add x23 x15_ls x15_h;
(* ror	x7, x10, #61                                #! PC = 0xaaaaaaaaab2c *)
split x10_h x10_l x10 61;
shl x10_ls x10_l (64-61)@uint64;
add x7 x10_ls x10_h;
(* ror	x16, x5, #28                                #! PC = 0xaaaaaaaaab30 *)
split x5_h x5_l x5 28;
shl x5_ls x5_l (64-28)@uint64;
add x16 x5_ls x5_h;
(* ror	x5, x26, #36                                #! PC = 0xaaaaaaaaab34 *)
split x26_h x26_l x26 36;
shl x26_ls x26_l (64-36)@uint64;
add x5 x26_ls x26_h;
(* ror	x10, x30, #63                               #! PC = 0xaaaaaaaaab38 *)
split x30_h x30_l x30 63;
shl x30_ls x30_l (64-63)@uint64;
add x10 x30_ls x30_h;
(* ror	x15, x28, #37                               #! PC = 0xaaaaaaaaab3c *)
split x28_h x28_l x28 37;
shl x28_ls x28_l (64-37)@uint64;
add x15 x28_ls x28_h;
(* ror	x20, x27, #2                                #! PC = 0xaaaaaaaaab40 *)
split x27_h x27_l x27 2;
shl x27_ls x27_l (64-2)@uint64;
add x20 x27_ls x27_h;
(* bic	x26, x2, x1                                 #! PC = 0xaaaaaaaaab44 *)
not x1_not@uint64 x1;
and x26@uint64 x2 x1_not;
(* bic	x27, x3, x2                                 #! PC = 0xaaaaaaaaab48 *)
not x2_not@uint64 x2;
and x27@uint64 x3 x2_not;
(* bic	x28, x0, x4                                 #! PC = 0xaaaaaaaaab4c *)
not x4_not@uint64 x4;
and x28@uint64 x0 x4_not;
(* bic	x30, x1, x0                                 #! PC = 0xaaaaaaaaab50 *)
not x0_not@uint64 x0;
and x30@uint64 x1 x0_not;
(* eor	x0, x0, x26                                 #! PC = 0xaaaaaaaaab54 *)
xor x0@uint64 x0 x26;
(* bic	x26, x4, x3                                 #! PC = 0xaaaaaaaaab58 *)
not x3_not@uint64 x3;
and x26@uint64 x4 x3_not;
(* eor	x1, x1, x27                                 #! PC = 0xaaaaaaaaab5c *)
xor x1@uint64 x1 x27;
(* ldr	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; Value = 0x0000aaaaaaaaa958; PC = 0xaaaaaaaaab60 *)
mov x27 L0xffffffffe8d0;
(* eor	x3, x3, x28                                 #! PC = 0xaaaaaaaaab64 *)
xor x3@uint64 x3 x28;
(* eor	x4, x4, x30                                 #! PC = 0xaaaaaaaaab68 *)
xor x4@uint64 x4 x30;
(* eor	x2, x2, x26                                 #! PC = 0xaaaaaaaaab6c *)
xor x2@uint64 x2 x26;
(* ldr	x30, [x27], #8                              #! EA = L0xaaaaaaaaa958; Value = 0x8000000080008000; PC = 0xaaaaaaaaab70 *)
mov x30 L0xaaaaaaaaa958;
(* bic	x26, x7, x6                                 #! PC = 0xaaaaaaaaab74 *)
not x6_not@uint64 x6;
and x26@uint64 x7 x6_not;
(* str	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; PC = 0xaaaaaaaaab7c *)
mov L0xffffffffe8d0 x27;
(* bic	x27, x8, x7                                 #! PC = 0xaaaaaaaaab80 *)
not x7_not@uint64 x7;
and x27@uint64 x8 x7_not;
(* bic	x28, x5, x9                                 #! PC = 0xaaaaaaaaab84 *)
not x9_not@uint64 x9;
and x28@uint64 x5 x9_not;
(* eor	x0, x0, x30                                 #! PC = 0xaaaaaaaaab88 *)
xor x0@uint64 x0 x30;
(* bic	x30, x6, x5                                 #! PC = 0xaaaaaaaaab8c *)
not x5_not@uint64 x5;
and x30@uint64 x6 x5_not;
(* eor	x5, x5, x26                                 #! PC = 0xaaaaaaaaab90 *)
xor x5@uint64 x5 x26;
(* bic	x26, x9, x8                                 #! PC = 0xaaaaaaaaab94 *)
not x8_not@uint64 x8;
and x26@uint64 x9 x8_not;
(* eor	x6, x6, x27                                 #! PC = 0xaaaaaaaaab98 *)
xor x6@uint64 x6 x27;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaab9c *)
xor x8@uint64 x8 x28;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaba0 *)
xor x9@uint64 x9 x30;
(* eor	x7, x7, x26                                 #! PC = 0xaaaaaaaaaba4 *)
xor x7@uint64 x7 x26;
(* bic	x26, x12, x11                               #! PC = 0xaaaaaaaaaba8 *)
not x11_not@uint64 x11;
and x26@uint64 x12 x11_not;
(* bic	x27, x13, x12                               #! PC = 0xaaaaaaaaabac *)
not x12_not@uint64 x12;
and x27@uint64 x13 x12_not;
(* bic	x28, x10, x14                               #! PC = 0xaaaaaaaaabb0 *)
not x14_not@uint64 x14;
and x28@uint64 x10 x14_not;
(* bic	x30, x11, x10                               #! PC = 0xaaaaaaaaabb4 *)
not x10_not@uint64 x10;
and x30@uint64 x11 x10_not;
(* eor	x10, x10, x26                               #! PC = 0xaaaaaaaaabb8 *)
xor x10@uint64 x10 x26;
(* bic	x26, x14, x13                               #! PC = 0xaaaaaaaaabbc *)
not x13_not@uint64 x13;
and x26@uint64 x14 x13_not;
(* eor	x11, x11, x27                               #! PC = 0xaaaaaaaaabc0 *)
xor x11@uint64 x11 x27;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaabc4 *)
xor x13@uint64 x13 x28;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaabc8 *)
xor x14@uint64 x14 x30;
(* eor	x12, x12, x26                               #! PC = 0xaaaaaaaaabcc *)
xor x12@uint64 x12 x26;
(* bic	x26, x17, x16                               #! PC = 0xaaaaaaaaabd0 *)
not x16_not@uint64 x16;
and x26@uint64 x17 x16_not;
(* bic	x27, x25, x17                               #! PC = 0xaaaaaaaaabd4 *)
not x17_not@uint64 x17;
and x27@uint64 x25 x17_not;
(* bic	x28, x15, x19                               #! PC = 0xaaaaaaaaabd8 *)
not x19_not@uint64 x19;
and x28@uint64 x15 x19_not;
(* bic	x30, x16, x15                               #! PC = 0xaaaaaaaaabdc *)
not x15_not@uint64 x15;
and x30@uint64 x16 x15_not;
(* eor	x15, x15, x26                               #! PC = 0xaaaaaaaaabe0 *)
xor x15@uint64 x15 x26;
(* bic	x26, x19, x25                               #! PC = 0xaaaaaaaaabe4 *)
not x25_not@uint64 x25;
and x26@uint64 x19 x25_not;
(* eor	x16, x16, x27                               #! PC = 0xaaaaaaaaabe8 *)
xor x16@uint64 x16 x27;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaabec *)
xor x25@uint64 x25 x28;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaabf0 *)
xor x19@uint64 x19 x30;
(* eor	x17, x17, x26                               #! PC = 0xaaaaaaaaabf4 *)
xor x17@uint64 x17 x26;
(* bic	x26, x22, x21                               #! PC = 0xaaaaaaaaabf8 *)
not x21_not@uint64 x21;
and x26@uint64 x22 x21_not;
(* bic	x27, x23, x22                               #! PC = 0xaaaaaaaaabfc *)
not x22_not@uint64 x22;
and x27@uint64 x23 x22_not;
(* bic	x28, x20, x24                               #! PC = 0xaaaaaaaaac00 *)
not x24_not@uint64 x24;
and x28@uint64 x20 x24_not;
(* bic	x30, x21, x20                               #! PC = 0xaaaaaaaaac04 *)
not x20_not@uint64 x20;
and x30@uint64 x21 x20_not;
(* eor	x20, x20, x26                               #! PC = 0xaaaaaaaaac08 *)
xor x20@uint64 x20 x26;
(* bic	x26, x24, x23                               #! PC = 0xaaaaaaaaac0c *)
not x23_not@uint64 x23;
and x26@uint64 x24 x23_not;
(* eor	x21, x21, x27                               #! PC = 0xaaaaaaaaac10 *)
xor x21@uint64 x21 x27;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaac14 *)
xor x23@uint64 x23 x28;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaac18 *)
xor x24@uint64 x24 x30;
(* eor	x22, x22, x26                               #! PC = 0xaaaaaaaaac1c *)
xor x22@uint64 x22 x26;
(* #b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! PC = 0xaaaaaaaaac20 *)
#b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! 0xaaaaaaaaac20 = 0xaaaaaaaaac20;
(* eor	x26, x0, x5                                 #! PC = 0xaaaaaaaaaa10 *)
xor x26@uint64 x0 x5;
(* stp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; PC = 0xaaaaaaaaaa14 *)
mov L0xffffffffe8c0 x4;
mov L0xffffffffe8c8 x9;
(* eor	x27, x1, x6                                 #! PC = 0xaaaaaaaaaa18 *)
xor x27@uint64 x1 x6;
(* eor	x28, x2, x7                                 #! PC = 0xaaaaaaaaaa1c *)
xor x28@uint64 x2 x7;
(* eor	x30, x3, x8                                 #! PC = 0xaaaaaaaaaa20 *)
xor x30@uint64 x3 x8;
(* eor	x4, x4, x9                                  #! PC = 0xaaaaaaaaaa24 *)
xor x4@uint64 x4 x9;
(* eor	x26, x26, x10                               #! PC = 0xaaaaaaaaaa28 *)
xor x26@uint64 x26 x10;
(* eor	x27, x27, x11                               #! PC = 0xaaaaaaaaaa2c *)
xor x27@uint64 x27 x11;
(* eor	x28, x28, x12                               #! PC = 0xaaaaaaaaaa30 *)
xor x28@uint64 x28 x12;
(* eor	x30, x30, x13                               #! PC = 0xaaaaaaaaaa34 *)
xor x30@uint64 x30 x13;
(* eor	x4, x4, x14                                 #! PC = 0xaaaaaaaaaa38 *)
xor x4@uint64 x4 x14;
(* eor	x26, x26, x15                               #! PC = 0xaaaaaaaaaa3c *)
xor x26@uint64 x26 x15;
(* eor	x27, x27, x16                               #! PC = 0xaaaaaaaaaa40 *)
xor x27@uint64 x27 x16;
(* eor	x28, x28, x17                               #! PC = 0xaaaaaaaaaa44 *)
xor x28@uint64 x28 x17;
(* eor	x30, x30, x25                               #! PC = 0xaaaaaaaaaa48 *)
xor x30@uint64 x30 x25;
(* eor	x4, x4, x19                                 #! PC = 0xaaaaaaaaaa4c *)
xor x4@uint64 x4 x19;
(* eor	x26, x26, x20                               #! PC = 0xaaaaaaaaaa50 *)
xor x26@uint64 x26 x20;
(* eor	x28, x28, x22                               #! PC = 0xaaaaaaaaaa54 *)
xor x28@uint64 x28 x22;
(* eor	x27, x27, x21                               #! PC = 0xaaaaaaaaaa58 *)
xor x27@uint64 x27 x21;
(* eor	x30, x30, x23                               #! PC = 0xaaaaaaaaaa5c *)
xor x30@uint64 x30 x23;
(* eor	x4, x4, x24                                 #! PC = 0xaaaaaaaaaa60 *)
xor x4@uint64 x4 x24;
(* eor	x9, x26, x28, ror #63                       #! PC = 0xaaaaaaaaaa64 *)
split x28_h x28_l x28 63;
shl x28_ls x28_l 1@uint64;
add x28_ror x28_ls x28_h;
xor x9@uint64 x26 x28_ror;
(* eor	x1, x1, x9                                  #! PC = 0xaaaaaaaaaa68 *)
xor x1@uint64 x1 x9;
(* eor	x6, x6, x9                                  #! PC = 0xaaaaaaaaaa6c *)
xor x6@uint64 x6 x9;
(* eor	x11, x11, x9                                #! PC = 0xaaaaaaaaaa70 *)
xor x11@uint64 x11 x9;
(* eor	x16, x16, x9                                #! PC = 0xaaaaaaaaaa74 *)
xor x16@uint64 x16 x9;
(* eor	x21, x21, x9                                #! PC = 0xaaaaaaaaaa78 *)
xor x21@uint64 x21 x9;
(* eor	x9, x27, x30, ror #63                       #! PC = 0xaaaaaaaaaa7c *)
split x30_h x30_l x30 63;
shl x30_ls x30_l 1@uint64;
add x30_ror x30_ls x30_h;
xor x9@uint64 x27 x30_ror;
(* eor	x28, x28, x4, ror #63                       #! PC = 0xaaaaaaaaaa80 *)
split x4_h x4_l x4 63;
shl x4_ls x4_l 1@uint64;
add x4_ror x4_ls x4_h;
xor x28@uint64 x28 x4_ror;
(* eor	x30, x30, x26, ror #63                      #! PC = 0xaaaaaaaaaa84 *)
split x26_h x26_l x26 63;
shl x26_ls x26_l 1@uint64;
add x26_ror x26_ls x26_h;
xor x30@uint64 x30 x26_ror;
(* eor	x4, x4, x27, ror #63                        #! PC = 0xaaaaaaaaaa88 *)
split x27_h x27_l x27 63;
shl x27_ls x27_l 1@uint64;
add x27_ror x27_ls x27_h;
xor x4@uint64 x4 x27_ror;
(* eor	x27, x2, x9                                 #! PC = 0xaaaaaaaaaa8c *)
xor x27@uint64 x2 x9;
(* eor	x7, x7, x9                                  #! PC = 0xaaaaaaaaaa90 *)
xor x7@uint64 x7 x9;
(* eor	x12, x12, x9                                #! PC = 0xaaaaaaaaaa94 *)
xor x12@uint64 x12 x9;
(* eor	x17, x17, x9                                #! PC = 0xaaaaaaaaaa98 *)
xor x17@uint64 x17 x9;
(* eor	x22, x22, x9                                #! PC = 0xaaaaaaaaaa9c *)
xor x22@uint64 x22 x9;
(* eor	x0, x0, x4                                  #! PC = 0xaaaaaaaaaaa0 *)
xor x0@uint64 x0 x4;
(* eor	x5, x5, x4                                  #! PC = 0xaaaaaaaaaaa4 *)
xor x5@uint64 x5 x4;
(* eor	x10, x10, x4                                #! PC = 0xaaaaaaaaaaa8 *)
xor x10@uint64 x10 x4;
(* eor	x15, x15, x4                                #! PC = 0xaaaaaaaaaaac *)
xor x15@uint64 x15 x4;
(* eor	x20, x20, x4                                #! PC = 0xaaaaaaaaaab0 *)
xor x20@uint64 x20 x4;
(* ldp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; Value = 0x157d0a05c55f24e8; PC = 0xaaaaaaaaaab4 *)
mov x4 L0xffffffffe8c0;
mov x9 L0xffffffffe8c8;
(* eor	x26, x3, x28                                #! PC = 0xaaaaaaaaaab8 *)
xor x26@uint64 x3 x28;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaaabc *)
xor x8@uint64 x8 x28;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaaac0 *)
xor x13@uint64 x13 x28;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaaac4 *)
xor x25@uint64 x25 x28;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaaac8 *)
xor x23@uint64 x23 x28;
(* eor	x28, x4, x30                                #! PC = 0xaaaaaaaaaacc *)
xor x28@uint64 x4 x30;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaad0 *)
xor x9@uint64 x9 x30;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaaad4 *)
xor x14@uint64 x14 x30;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaaad8 *)
xor x19@uint64 x19 x30;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaaadc *)
xor x24@uint64 x24 x30;
(* mov	x30, x1                                     #! PC = 0xaaaaaaaaaae0 *)
mov x30 x1;
(* ror	x1, x6, #20                                 #! PC = 0xaaaaaaaaaae4 *)
split x6_h x6_l x6 20;
shl x6_ls x6_l (64-20)@uint64;
add x1 x6_ls x6_h;
(* ror	x2, x12, #21                                #! PC = 0xaaaaaaaaaae8 *)
split x12_h x12_l x12 21;
shl x12_ls x12_l (64-21)@uint64;
add x2 x12_ls x12_h;
(* ror	x3, x25, #43                                #! PC = 0xaaaaaaaaaaec *)
split x25_h x25_l x25 43;
shl x25_ls x25_l (64-43)@uint64;
add x3 x25_ls x25_h;
(* ror	x4, x24, #50                                #! PC = 0xaaaaaaaaaaf0 *)
split x24_h x24_l x24 50;
shl x24_ls x24_l (64-50)@uint64;
add x4 x24_ls x24_h;
(* ror	x6, x9, #44                                 #! PC = 0xaaaaaaaaaaf4 *)
split x9_h x9_l x9 44;
shl x9_ls x9_l (64-44)@uint64;
add x6 x9_ls x9_h;
(* ror	x12, x13, #39                               #! PC = 0xaaaaaaaaaaf8 *)
split x13_h x13_l x13 39;
shl x13_ls x13_l (64-39)@uint64;
add x12 x13_ls x13_h;
(* ror	x25, x17, #49                               #! PC = 0xaaaaaaaaaafc *)
split x17_h x17_l x17 49;
shl x17_ls x17_l (64-49)@uint64;
add x25 x17_ls x17_h;
(* ror	x24, x21, #62                               #! PC = 0xaaaaaaaaab00 *)
split x21_h x21_l x21 62;
shl x21_ls x21_l (64-62)@uint64;
add x24 x21_ls x21_h;
(* ror	x9, x22, #3                                 #! PC = 0xaaaaaaaaab04 *)
split x22_h x22_l x22 3;
shl x22_ls x22_l (64-3)@uint64;
add x9 x22_ls x22_h;
(* ror	x13, x19, #56                               #! PC = 0xaaaaaaaaab08 *)
split x19_h x19_l x19 56;
shl x19_ls x19_l (64-56)@uint64;
add x13 x19_ls x19_h;
(* ror	x17, x11, #54                               #! PC = 0xaaaaaaaaab0c *)
split x11_h x11_l x11 54;
shl x11_ls x11_l (64-54)@uint64;
add x17 x11_ls x11_h;
(* ror	x21, x8, #9                                 #! PC = 0xaaaaaaaaab10 *)
split x8_h x8_l x8 9;
shl x8_ls x8_l (64-9)@uint64;
add x21 x8_ls x8_h;
(* ror	x22, x14, #25                               #! PC = 0xaaaaaaaaab14 *)
split x14_h x14_l x14 25;
shl x14_ls x14_l (64-25)@uint64;
add x22 x14_ls x14_h;
(* ror	x19, x23, #8                                #! PC = 0xaaaaaaaaab18 *)
split x23_h x23_l x23 8;
shl x23_ls x23_l (64-8)@uint64;
add x19 x23_ls x23_h;
(* ror	x11, x7, #58                                #! PC = 0xaaaaaaaaab1c *)
split x7_h x7_l x7 58;
shl x7_ls x7_l (64-58)@uint64;
add x11 x7_ls x7_h;
(* ror	x8, x16, #19                                #! PC = 0xaaaaaaaaab20 *)
split x16_h x16_l x16 19;
shl x16_ls x16_l (64-19)@uint64;
add x8 x16_ls x16_h;
(* ror	x14, x20, #46                               #! PC = 0xaaaaaaaaab24 *)
split x20_h x20_l x20 46;
shl x20_ls x20_l (64-46)@uint64;
add x14 x20_ls x20_h;
(* ror	x23, x15, #23                               #! PC = 0xaaaaaaaaab28 *)
split x15_h x15_l x15 23;
shl x15_ls x15_l (64-23)@uint64;
add x23 x15_ls x15_h;
(* ror	x7, x10, #61                                #! PC = 0xaaaaaaaaab2c *)
split x10_h x10_l x10 61;
shl x10_ls x10_l (64-61)@uint64;
add x7 x10_ls x10_h;
(* ror	x16, x5, #28                                #! PC = 0xaaaaaaaaab30 *)
split x5_h x5_l x5 28;
shl x5_ls x5_l (64-28)@uint64;
add x16 x5_ls x5_h;
(* ror	x5, x26, #36                                #! PC = 0xaaaaaaaaab34 *)
split x26_h x26_l x26 36;
shl x26_ls x26_l (64-36)@uint64;
add x5 x26_ls x26_h;
(* ror	x10, x30, #63                               #! PC = 0xaaaaaaaaab38 *)
split x30_h x30_l x30 63;
shl x30_ls x30_l (64-63)@uint64;
add x10 x30_ls x30_h;
(* ror	x15, x28, #37                               #! PC = 0xaaaaaaaaab3c *)
split x28_h x28_l x28 37;
shl x28_ls x28_l (64-37)@uint64;
add x15 x28_ls x28_h;
(* ror	x20, x27, #2                                #! PC = 0xaaaaaaaaab40 *)
split x27_h x27_l x27 2;
shl x27_ls x27_l (64-2)@uint64;
add x20 x27_ls x27_h;
(* bic	x26, x2, x1                                 #! PC = 0xaaaaaaaaab44 *)
not x1_not@uint64 x1;
and x26@uint64 x2 x1_not;
(* bic	x27, x3, x2                                 #! PC = 0xaaaaaaaaab48 *)
not x2_not@uint64 x2;
and x27@uint64 x3 x2_not;
(* bic	x28, x0, x4                                 #! PC = 0xaaaaaaaaab4c *)
not x4_not@uint64 x4;
and x28@uint64 x0 x4_not;
(* bic	x30, x1, x0                                 #! PC = 0xaaaaaaaaab50 *)
not x0_not@uint64 x0;
and x30@uint64 x1 x0_not;
(* eor	x0, x0, x26                                 #! PC = 0xaaaaaaaaab54 *)
xor x0@uint64 x0 x26;
(* bic	x26, x4, x3                                 #! PC = 0xaaaaaaaaab58 *)
not x3_not@uint64 x3;
and x26@uint64 x4 x3_not;
(* eor	x1, x1, x27                                 #! PC = 0xaaaaaaaaab5c *)
xor x1@uint64 x1 x27;
(* ldr	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; Value = 0x0000aaaaaaaaa960; PC = 0xaaaaaaaaab60 *)
mov x27 L0xffffffffe8d0;
(* eor	x3, x3, x28                                 #! PC = 0xaaaaaaaaab64 *)
xor x3@uint64 x3 x28;
(* eor	x4, x4, x30                                 #! PC = 0xaaaaaaaaab68 *)
xor x4@uint64 x4 x30;
(* eor	x2, x2, x26                                 #! PC = 0xaaaaaaaaab6c *)
xor x2@uint64 x2 x26;
(* ldr	x30, [x27], #8                              #! EA = L0xaaaaaaaaa960; Value = 0x000000000000808b; PC = 0xaaaaaaaaab70 *)
mov x30 L0xaaaaaaaaa960;
(* bic	x26, x7, x6                                 #! PC = 0xaaaaaaaaab74 *)
not x6_not@uint64 x6;
and x26@uint64 x7 x6_not;
(* str	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; PC = 0xaaaaaaaaab7c *)
mov L0xffffffffe8d0 x27;
(* bic	x27, x8, x7                                 #! PC = 0xaaaaaaaaab80 *)
not x7_not@uint64 x7;
and x27@uint64 x8 x7_not;
(* bic	x28, x5, x9                                 #! PC = 0xaaaaaaaaab84 *)
not x9_not@uint64 x9;
and x28@uint64 x5 x9_not;
(* eor	x0, x0, x30                                 #! PC = 0xaaaaaaaaab88 *)
xor x0@uint64 x0 x30;
(* bic	x30, x6, x5                                 #! PC = 0xaaaaaaaaab8c *)
not x5_not@uint64 x5;
and x30@uint64 x6 x5_not;
(* eor	x5, x5, x26                                 #! PC = 0xaaaaaaaaab90 *)
xor x5@uint64 x5 x26;
(* bic	x26, x9, x8                                 #! PC = 0xaaaaaaaaab94 *)
not x8_not@uint64 x8;
and x26@uint64 x9 x8_not;
(* eor	x6, x6, x27                                 #! PC = 0xaaaaaaaaab98 *)
xor x6@uint64 x6 x27;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaab9c *)
xor x8@uint64 x8 x28;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaba0 *)
xor x9@uint64 x9 x30;
(* eor	x7, x7, x26                                 #! PC = 0xaaaaaaaaaba4 *)
xor x7@uint64 x7 x26;
(* bic	x26, x12, x11                               #! PC = 0xaaaaaaaaaba8 *)
not x11_not@uint64 x11;
and x26@uint64 x12 x11_not;
(* bic	x27, x13, x12                               #! PC = 0xaaaaaaaaabac *)
not x12_not@uint64 x12;
and x27@uint64 x13 x12_not;
(* bic	x28, x10, x14                               #! PC = 0xaaaaaaaaabb0 *)
not x14_not@uint64 x14;
and x28@uint64 x10 x14_not;
(* bic	x30, x11, x10                               #! PC = 0xaaaaaaaaabb4 *)
not x10_not@uint64 x10;
and x30@uint64 x11 x10_not;
(* eor	x10, x10, x26                               #! PC = 0xaaaaaaaaabb8 *)
xor x10@uint64 x10 x26;
(* bic	x26, x14, x13                               #! PC = 0xaaaaaaaaabbc *)
not x13_not@uint64 x13;
and x26@uint64 x14 x13_not;
(* eor	x11, x11, x27                               #! PC = 0xaaaaaaaaabc0 *)
xor x11@uint64 x11 x27;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaabc4 *)
xor x13@uint64 x13 x28;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaabc8 *)
xor x14@uint64 x14 x30;
(* eor	x12, x12, x26                               #! PC = 0xaaaaaaaaabcc *)
xor x12@uint64 x12 x26;
(* bic	x26, x17, x16                               #! PC = 0xaaaaaaaaabd0 *)
not x16_not@uint64 x16;
and x26@uint64 x17 x16_not;
(* bic	x27, x25, x17                               #! PC = 0xaaaaaaaaabd4 *)
not x17_not@uint64 x17;
and x27@uint64 x25 x17_not;
(* bic	x28, x15, x19                               #! PC = 0xaaaaaaaaabd8 *)
not x19_not@uint64 x19;
and x28@uint64 x15 x19_not;
(* bic	x30, x16, x15                               #! PC = 0xaaaaaaaaabdc *)
not x15_not@uint64 x15;
and x30@uint64 x16 x15_not;
(* eor	x15, x15, x26                               #! PC = 0xaaaaaaaaabe0 *)
xor x15@uint64 x15 x26;
(* bic	x26, x19, x25                               #! PC = 0xaaaaaaaaabe4 *)
not x25_not@uint64 x25;
and x26@uint64 x19 x25_not;
(* eor	x16, x16, x27                               #! PC = 0xaaaaaaaaabe8 *)
xor x16@uint64 x16 x27;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaabec *)
xor x25@uint64 x25 x28;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaabf0 *)
xor x19@uint64 x19 x30;
(* eor	x17, x17, x26                               #! PC = 0xaaaaaaaaabf4 *)
xor x17@uint64 x17 x26;
(* bic	x26, x22, x21                               #! PC = 0xaaaaaaaaabf8 *)
not x21_not@uint64 x21;
and x26@uint64 x22 x21_not;
(* bic	x27, x23, x22                               #! PC = 0xaaaaaaaaabfc *)
not x22_not@uint64 x22;
and x27@uint64 x23 x22_not;
(* bic	x28, x20, x24                               #! PC = 0xaaaaaaaaac00 *)
not x24_not@uint64 x24;
and x28@uint64 x20 x24_not;
(* bic	x30, x21, x20                               #! PC = 0xaaaaaaaaac04 *)
not x20_not@uint64 x20;
and x30@uint64 x21 x20_not;
(* eor	x20, x20, x26                               #! PC = 0xaaaaaaaaac08 *)
xor x20@uint64 x20 x26;
(* bic	x26, x24, x23                               #! PC = 0xaaaaaaaaac0c *)
not x23_not@uint64 x23;
and x26@uint64 x24 x23_not;
(* eor	x21, x21, x27                               #! PC = 0xaaaaaaaaac10 *)
xor x21@uint64 x21 x27;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaac14 *)
xor x23@uint64 x23 x28;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaac18 *)
xor x24@uint64 x24 x30;
(* eor	x22, x22, x26                               #! PC = 0xaaaaaaaaac1c *)
xor x22@uint64 x22 x26;
(* #b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! PC = 0xaaaaaaaaac20 *)
#b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! 0xaaaaaaaaac20 = 0xaaaaaaaaac20;
(* eor	x26, x0, x5                                 #! PC = 0xaaaaaaaaaa10 *)
xor x26@uint64 x0 x5;
(* stp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; PC = 0xaaaaaaaaaa14 *)
mov L0xffffffffe8c0 x4;
mov L0xffffffffe8c8 x9;
(* eor	x27, x1, x6                                 #! PC = 0xaaaaaaaaaa18 *)
xor x27@uint64 x1 x6;
(* eor	x28, x2, x7                                 #! PC = 0xaaaaaaaaaa1c *)
xor x28@uint64 x2 x7;
(* eor	x30, x3, x8                                 #! PC = 0xaaaaaaaaaa20 *)
xor x30@uint64 x3 x8;
(* eor	x4, x4, x9                                  #! PC = 0xaaaaaaaaaa24 *)
xor x4@uint64 x4 x9;
(* eor	x26, x26, x10                               #! PC = 0xaaaaaaaaaa28 *)
xor x26@uint64 x26 x10;
(* eor	x27, x27, x11                               #! PC = 0xaaaaaaaaaa2c *)
xor x27@uint64 x27 x11;
(* eor	x28, x28, x12                               #! PC = 0xaaaaaaaaaa30 *)
xor x28@uint64 x28 x12;
(* eor	x30, x30, x13                               #! PC = 0xaaaaaaaaaa34 *)
xor x30@uint64 x30 x13;
(* eor	x4, x4, x14                                 #! PC = 0xaaaaaaaaaa38 *)
xor x4@uint64 x4 x14;
(* eor	x26, x26, x15                               #! PC = 0xaaaaaaaaaa3c *)
xor x26@uint64 x26 x15;
(* eor	x27, x27, x16                               #! PC = 0xaaaaaaaaaa40 *)
xor x27@uint64 x27 x16;
(* eor	x28, x28, x17                               #! PC = 0xaaaaaaaaaa44 *)
xor x28@uint64 x28 x17;
(* eor	x30, x30, x25                               #! PC = 0xaaaaaaaaaa48 *)
xor x30@uint64 x30 x25;
(* eor	x4, x4, x19                                 #! PC = 0xaaaaaaaaaa4c *)
xor x4@uint64 x4 x19;
(* eor	x26, x26, x20                               #! PC = 0xaaaaaaaaaa50 *)
xor x26@uint64 x26 x20;
(* eor	x28, x28, x22                               #! PC = 0xaaaaaaaaaa54 *)
xor x28@uint64 x28 x22;
(* eor	x27, x27, x21                               #! PC = 0xaaaaaaaaaa58 *)
xor x27@uint64 x27 x21;
(* eor	x30, x30, x23                               #! PC = 0xaaaaaaaaaa5c *)
xor x30@uint64 x30 x23;
(* eor	x4, x4, x24                                 #! PC = 0xaaaaaaaaaa60 *)
xor x4@uint64 x4 x24;
(* eor	x9, x26, x28, ror #63                       #! PC = 0xaaaaaaaaaa64 *)
split x28_h x28_l x28 63;
shl x28_ls x28_l 1@uint64;
add x28_ror x28_ls x28_h;
xor x9@uint64 x26 x28_ror;
(* eor	x1, x1, x9                                  #! PC = 0xaaaaaaaaaa68 *)
xor x1@uint64 x1 x9;
(* eor	x6, x6, x9                                  #! PC = 0xaaaaaaaaaa6c *)
xor x6@uint64 x6 x9;
(* eor	x11, x11, x9                                #! PC = 0xaaaaaaaaaa70 *)
xor x11@uint64 x11 x9;
(* eor	x16, x16, x9                                #! PC = 0xaaaaaaaaaa74 *)
xor x16@uint64 x16 x9;
(* eor	x21, x21, x9                                #! PC = 0xaaaaaaaaaa78 *)
xor x21@uint64 x21 x9;
(* eor	x9, x27, x30, ror #63                       #! PC = 0xaaaaaaaaaa7c *)
split x30_h x30_l x30 63;
shl x30_ls x30_l 1@uint64;
add x30_ror x30_ls x30_h;
xor x9@uint64 x27 x30_ror;
(* eor	x28, x28, x4, ror #63                       #! PC = 0xaaaaaaaaaa80 *)
split x4_h x4_l x4 63;
shl x4_ls x4_l 1@uint64;
add x4_ror x4_ls x4_h;
xor x28@uint64 x28 x4_ror;
(* eor	x30, x30, x26, ror #63                      #! PC = 0xaaaaaaaaaa84 *)
split x26_h x26_l x26 63;
shl x26_ls x26_l 1@uint64;
add x26_ror x26_ls x26_h;
xor x30@uint64 x30 x26_ror;
(* eor	x4, x4, x27, ror #63                        #! PC = 0xaaaaaaaaaa88 *)
split x27_h x27_l x27 63;
shl x27_ls x27_l 1@uint64;
add x27_ror x27_ls x27_h;
xor x4@uint64 x4 x27_ror;
(* eor	x27, x2, x9                                 #! PC = 0xaaaaaaaaaa8c *)
xor x27@uint64 x2 x9;
(* eor	x7, x7, x9                                  #! PC = 0xaaaaaaaaaa90 *)
xor x7@uint64 x7 x9;
(* eor	x12, x12, x9                                #! PC = 0xaaaaaaaaaa94 *)
xor x12@uint64 x12 x9;
(* eor	x17, x17, x9                                #! PC = 0xaaaaaaaaaa98 *)
xor x17@uint64 x17 x9;
(* eor	x22, x22, x9                                #! PC = 0xaaaaaaaaaa9c *)
xor x22@uint64 x22 x9;
(* eor	x0, x0, x4                                  #! PC = 0xaaaaaaaaaaa0 *)
xor x0@uint64 x0 x4;
(* eor	x5, x5, x4                                  #! PC = 0xaaaaaaaaaaa4 *)
xor x5@uint64 x5 x4;
(* eor	x10, x10, x4                                #! PC = 0xaaaaaaaaaaa8 *)
xor x10@uint64 x10 x4;
(* eor	x15, x15, x4                                #! PC = 0xaaaaaaaaaaac *)
xor x15@uint64 x15 x4;
(* eor	x20, x20, x4                                #! PC = 0xaaaaaaaaaab0 *)
xor x20@uint64 x20 x4;
(* ldp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; Value = 0x01b3d6bd05e1bd3f; PC = 0xaaaaaaaaaab4 *)
mov x4 L0xffffffffe8c0;
mov x9 L0xffffffffe8c8;
(* eor	x26, x3, x28                                #! PC = 0xaaaaaaaaaab8 *)
xor x26@uint64 x3 x28;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaaabc *)
xor x8@uint64 x8 x28;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaaac0 *)
xor x13@uint64 x13 x28;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaaac4 *)
xor x25@uint64 x25 x28;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaaac8 *)
xor x23@uint64 x23 x28;
(* eor	x28, x4, x30                                #! PC = 0xaaaaaaaaaacc *)
xor x28@uint64 x4 x30;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaad0 *)
xor x9@uint64 x9 x30;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaaad4 *)
xor x14@uint64 x14 x30;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaaad8 *)
xor x19@uint64 x19 x30;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaaadc *)
xor x24@uint64 x24 x30;
(* mov	x30, x1                                     #! PC = 0xaaaaaaaaaae0 *)
mov x30 x1;
(* ror	x1, x6, #20                                 #! PC = 0xaaaaaaaaaae4 *)
split x6_h x6_l x6 20;
shl x6_ls x6_l (64-20)@uint64;
add x1 x6_ls x6_h;
(* ror	x2, x12, #21                                #! PC = 0xaaaaaaaaaae8 *)
split x12_h x12_l x12 21;
shl x12_ls x12_l (64-21)@uint64;
add x2 x12_ls x12_h;
(* ror	x3, x25, #43                                #! PC = 0xaaaaaaaaaaec *)
split x25_h x25_l x25 43;
shl x25_ls x25_l (64-43)@uint64;
add x3 x25_ls x25_h;
(* ror	x4, x24, #50                                #! PC = 0xaaaaaaaaaaf0 *)
split x24_h x24_l x24 50;
shl x24_ls x24_l (64-50)@uint64;
add x4 x24_ls x24_h;
(* ror	x6, x9, #44                                 #! PC = 0xaaaaaaaaaaf4 *)
split x9_h x9_l x9 44;
shl x9_ls x9_l (64-44)@uint64;
add x6 x9_ls x9_h;
(* ror	x12, x13, #39                               #! PC = 0xaaaaaaaaaaf8 *)
split x13_h x13_l x13 39;
shl x13_ls x13_l (64-39)@uint64;
add x12 x13_ls x13_h;
(* ror	x25, x17, #49                               #! PC = 0xaaaaaaaaaafc *)
split x17_h x17_l x17 49;
shl x17_ls x17_l (64-49)@uint64;
add x25 x17_ls x17_h;
(* ror	x24, x21, #62                               #! PC = 0xaaaaaaaaab00 *)
split x21_h x21_l x21 62;
shl x21_ls x21_l (64-62)@uint64;
add x24 x21_ls x21_h;
(* ror	x9, x22, #3                                 #! PC = 0xaaaaaaaaab04 *)
split x22_h x22_l x22 3;
shl x22_ls x22_l (64-3)@uint64;
add x9 x22_ls x22_h;
(* ror	x13, x19, #56                               #! PC = 0xaaaaaaaaab08 *)
split x19_h x19_l x19 56;
shl x19_ls x19_l (64-56)@uint64;
add x13 x19_ls x19_h;
(* ror	x17, x11, #54                               #! PC = 0xaaaaaaaaab0c *)
split x11_h x11_l x11 54;
shl x11_ls x11_l (64-54)@uint64;
add x17 x11_ls x11_h;
(* ror	x21, x8, #9                                 #! PC = 0xaaaaaaaaab10 *)
split x8_h x8_l x8 9;
shl x8_ls x8_l (64-9)@uint64;
add x21 x8_ls x8_h;
(* ror	x22, x14, #25                               #! PC = 0xaaaaaaaaab14 *)
split x14_h x14_l x14 25;
shl x14_ls x14_l (64-25)@uint64;
add x22 x14_ls x14_h;
(* ror	x19, x23, #8                                #! PC = 0xaaaaaaaaab18 *)
split x23_h x23_l x23 8;
shl x23_ls x23_l (64-8)@uint64;
add x19 x23_ls x23_h;
(* ror	x11, x7, #58                                #! PC = 0xaaaaaaaaab1c *)
split x7_h x7_l x7 58;
shl x7_ls x7_l (64-58)@uint64;
add x11 x7_ls x7_h;
(* ror	x8, x16, #19                                #! PC = 0xaaaaaaaaab20 *)
split x16_h x16_l x16 19;
shl x16_ls x16_l (64-19)@uint64;
add x8 x16_ls x16_h;
(* ror	x14, x20, #46                               #! PC = 0xaaaaaaaaab24 *)
split x20_h x20_l x20 46;
shl x20_ls x20_l (64-46)@uint64;
add x14 x20_ls x20_h;
(* ror	x23, x15, #23                               #! PC = 0xaaaaaaaaab28 *)
split x15_h x15_l x15 23;
shl x15_ls x15_l (64-23)@uint64;
add x23 x15_ls x15_h;
(* ror	x7, x10, #61                                #! PC = 0xaaaaaaaaab2c *)
split x10_h x10_l x10 61;
shl x10_ls x10_l (64-61)@uint64;
add x7 x10_ls x10_h;
(* ror	x16, x5, #28                                #! PC = 0xaaaaaaaaab30 *)
split x5_h x5_l x5 28;
shl x5_ls x5_l (64-28)@uint64;
add x16 x5_ls x5_h;
(* ror	x5, x26, #36                                #! PC = 0xaaaaaaaaab34 *)
split x26_h x26_l x26 36;
shl x26_ls x26_l (64-36)@uint64;
add x5 x26_ls x26_h;
(* ror	x10, x30, #63                               #! PC = 0xaaaaaaaaab38 *)
split x30_h x30_l x30 63;
shl x30_ls x30_l (64-63)@uint64;
add x10 x30_ls x30_h;
(* ror	x15, x28, #37                               #! PC = 0xaaaaaaaaab3c *)
split x28_h x28_l x28 37;
shl x28_ls x28_l (64-37)@uint64;
add x15 x28_ls x28_h;
(* ror	x20, x27, #2                                #! PC = 0xaaaaaaaaab40 *)
split x27_h x27_l x27 2;
shl x27_ls x27_l (64-2)@uint64;
add x20 x27_ls x27_h;
(* bic	x26, x2, x1                                 #! PC = 0xaaaaaaaaab44 *)
not x1_not@uint64 x1;
and x26@uint64 x2 x1_not;
(* bic	x27, x3, x2                                 #! PC = 0xaaaaaaaaab48 *)
not x2_not@uint64 x2;
and x27@uint64 x3 x2_not;
(* bic	x28, x0, x4                                 #! PC = 0xaaaaaaaaab4c *)
not x4_not@uint64 x4;
and x28@uint64 x0 x4_not;
(* bic	x30, x1, x0                                 #! PC = 0xaaaaaaaaab50 *)
not x0_not@uint64 x0;
and x30@uint64 x1 x0_not;
(* eor	x0, x0, x26                                 #! PC = 0xaaaaaaaaab54 *)
xor x0@uint64 x0 x26;
(* bic	x26, x4, x3                                 #! PC = 0xaaaaaaaaab58 *)
not x3_not@uint64 x3;
and x26@uint64 x4 x3_not;
(* eor	x1, x1, x27                                 #! PC = 0xaaaaaaaaab5c *)
xor x1@uint64 x1 x27;
(* ldr	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; Value = 0x0000aaaaaaaaa968; PC = 0xaaaaaaaaab60 *)
mov x27 L0xffffffffe8d0;
(* eor	x3, x3, x28                                 #! PC = 0xaaaaaaaaab64 *)
xor x3@uint64 x3 x28;
(* eor	x4, x4, x30                                 #! PC = 0xaaaaaaaaab68 *)
xor x4@uint64 x4 x30;
(* eor	x2, x2, x26                                 #! PC = 0xaaaaaaaaab6c *)
xor x2@uint64 x2 x26;
(* ldr	x30, [x27], #8                              #! EA = L0xaaaaaaaaa968; Value = 0x0000000080000001; PC = 0xaaaaaaaaab70 *)
mov x30 L0xaaaaaaaaa968;
(* bic	x26, x7, x6                                 #! PC = 0xaaaaaaaaab74 *)
not x6_not@uint64 x6;
and x26@uint64 x7 x6_not;
(* str	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; PC = 0xaaaaaaaaab7c *)
mov L0xffffffffe8d0 x27;
(* bic	x27, x8, x7                                 #! PC = 0xaaaaaaaaab80 *)
not x7_not@uint64 x7;
and x27@uint64 x8 x7_not;
(* bic	x28, x5, x9                                 #! PC = 0xaaaaaaaaab84 *)
not x9_not@uint64 x9;
and x28@uint64 x5 x9_not;
(* eor	x0, x0, x30                                 #! PC = 0xaaaaaaaaab88 *)
xor x0@uint64 x0 x30;
(* bic	x30, x6, x5                                 #! PC = 0xaaaaaaaaab8c *)
not x5_not@uint64 x5;
and x30@uint64 x6 x5_not;
(* eor	x5, x5, x26                                 #! PC = 0xaaaaaaaaab90 *)
xor x5@uint64 x5 x26;
(* bic	x26, x9, x8                                 #! PC = 0xaaaaaaaaab94 *)
not x8_not@uint64 x8;
and x26@uint64 x9 x8_not;
(* eor	x6, x6, x27                                 #! PC = 0xaaaaaaaaab98 *)
xor x6@uint64 x6 x27;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaab9c *)
xor x8@uint64 x8 x28;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaba0 *)
xor x9@uint64 x9 x30;
(* eor	x7, x7, x26                                 #! PC = 0xaaaaaaaaaba4 *)
xor x7@uint64 x7 x26;
(* bic	x26, x12, x11                               #! PC = 0xaaaaaaaaaba8 *)
not x11_not@uint64 x11;
and x26@uint64 x12 x11_not;
(* bic	x27, x13, x12                               #! PC = 0xaaaaaaaaabac *)
not x12_not@uint64 x12;
and x27@uint64 x13 x12_not;
(* bic	x28, x10, x14                               #! PC = 0xaaaaaaaaabb0 *)
not x14_not@uint64 x14;
and x28@uint64 x10 x14_not;
(* bic	x30, x11, x10                               #! PC = 0xaaaaaaaaabb4 *)
not x10_not@uint64 x10;
and x30@uint64 x11 x10_not;
(* eor	x10, x10, x26                               #! PC = 0xaaaaaaaaabb8 *)
xor x10@uint64 x10 x26;
(* bic	x26, x14, x13                               #! PC = 0xaaaaaaaaabbc *)
not x13_not@uint64 x13;
and x26@uint64 x14 x13_not;
(* eor	x11, x11, x27                               #! PC = 0xaaaaaaaaabc0 *)
xor x11@uint64 x11 x27;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaabc4 *)
xor x13@uint64 x13 x28;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaabc8 *)
xor x14@uint64 x14 x30;
(* eor	x12, x12, x26                               #! PC = 0xaaaaaaaaabcc *)
xor x12@uint64 x12 x26;
(* bic	x26, x17, x16                               #! PC = 0xaaaaaaaaabd0 *)
not x16_not@uint64 x16;
and x26@uint64 x17 x16_not;
(* bic	x27, x25, x17                               #! PC = 0xaaaaaaaaabd4 *)
not x17_not@uint64 x17;
and x27@uint64 x25 x17_not;
(* bic	x28, x15, x19                               #! PC = 0xaaaaaaaaabd8 *)
not x19_not@uint64 x19;
and x28@uint64 x15 x19_not;
(* bic	x30, x16, x15                               #! PC = 0xaaaaaaaaabdc *)
not x15_not@uint64 x15;
and x30@uint64 x16 x15_not;
(* eor	x15, x15, x26                               #! PC = 0xaaaaaaaaabe0 *)
xor x15@uint64 x15 x26;
(* bic	x26, x19, x25                               #! PC = 0xaaaaaaaaabe4 *)
not x25_not@uint64 x25;
and x26@uint64 x19 x25_not;
(* eor	x16, x16, x27                               #! PC = 0xaaaaaaaaabe8 *)
xor x16@uint64 x16 x27;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaabec *)
xor x25@uint64 x25 x28;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaabf0 *)
xor x19@uint64 x19 x30;
(* eor	x17, x17, x26                               #! PC = 0xaaaaaaaaabf4 *)
xor x17@uint64 x17 x26;
(* bic	x26, x22, x21                               #! PC = 0xaaaaaaaaabf8 *)
not x21_not@uint64 x21;
and x26@uint64 x22 x21_not;
(* bic	x27, x23, x22                               #! PC = 0xaaaaaaaaabfc *)
not x22_not@uint64 x22;
and x27@uint64 x23 x22_not;
(* bic	x28, x20, x24                               #! PC = 0xaaaaaaaaac00 *)
not x24_not@uint64 x24;
and x28@uint64 x20 x24_not;
(* bic	x30, x21, x20                               #! PC = 0xaaaaaaaaac04 *)
not x20_not@uint64 x20;
and x30@uint64 x21 x20_not;
(* eor	x20, x20, x26                               #! PC = 0xaaaaaaaaac08 *)
xor x20@uint64 x20 x26;
(* bic	x26, x24, x23                               #! PC = 0xaaaaaaaaac0c *)
not x23_not@uint64 x23;
and x26@uint64 x24 x23_not;
(* eor	x21, x21, x27                               #! PC = 0xaaaaaaaaac10 *)
xor x21@uint64 x21 x27;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaac14 *)
xor x23@uint64 x23 x28;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaac18 *)
xor x24@uint64 x24 x30;
(* eor	x22, x22, x26                               #! PC = 0xaaaaaaaaac1c *)
xor x22@uint64 x22 x26;
(* #b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! PC = 0xaaaaaaaaac20 *)
#b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! 0xaaaaaaaaac20 = 0xaaaaaaaaac20;
(* eor	x26, x0, x5                                 #! PC = 0xaaaaaaaaaa10 *)
xor x26@uint64 x0 x5;
(* stp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; PC = 0xaaaaaaaaaa14 *)
mov L0xffffffffe8c0 x4;
mov L0xffffffffe8c8 x9;
(* eor	x27, x1, x6                                 #! PC = 0xaaaaaaaaaa18 *)
xor x27@uint64 x1 x6;
(* eor	x28, x2, x7                                 #! PC = 0xaaaaaaaaaa1c *)
xor x28@uint64 x2 x7;
(* eor	x30, x3, x8                                 #! PC = 0xaaaaaaaaaa20 *)
xor x30@uint64 x3 x8;
(* eor	x4, x4, x9                                  #! PC = 0xaaaaaaaaaa24 *)
xor x4@uint64 x4 x9;
(* eor	x26, x26, x10                               #! PC = 0xaaaaaaaaaa28 *)
xor x26@uint64 x26 x10;
(* eor	x27, x27, x11                               #! PC = 0xaaaaaaaaaa2c *)
xor x27@uint64 x27 x11;
(* eor	x28, x28, x12                               #! PC = 0xaaaaaaaaaa30 *)
xor x28@uint64 x28 x12;
(* eor	x30, x30, x13                               #! PC = 0xaaaaaaaaaa34 *)
xor x30@uint64 x30 x13;
(* eor	x4, x4, x14                                 #! PC = 0xaaaaaaaaaa38 *)
xor x4@uint64 x4 x14;
(* eor	x26, x26, x15                               #! PC = 0xaaaaaaaaaa3c *)
xor x26@uint64 x26 x15;
(* eor	x27, x27, x16                               #! PC = 0xaaaaaaaaaa40 *)
xor x27@uint64 x27 x16;
(* eor	x28, x28, x17                               #! PC = 0xaaaaaaaaaa44 *)
xor x28@uint64 x28 x17;
(* eor	x30, x30, x25                               #! PC = 0xaaaaaaaaaa48 *)
xor x30@uint64 x30 x25;
(* eor	x4, x4, x19                                 #! PC = 0xaaaaaaaaaa4c *)
xor x4@uint64 x4 x19;
(* eor	x26, x26, x20                               #! PC = 0xaaaaaaaaaa50 *)
xor x26@uint64 x26 x20;
(* eor	x28, x28, x22                               #! PC = 0xaaaaaaaaaa54 *)
xor x28@uint64 x28 x22;
(* eor	x27, x27, x21                               #! PC = 0xaaaaaaaaaa58 *)
xor x27@uint64 x27 x21;
(* eor	x30, x30, x23                               #! PC = 0xaaaaaaaaaa5c *)
xor x30@uint64 x30 x23;
(* eor	x4, x4, x24                                 #! PC = 0xaaaaaaaaaa60 *)
xor x4@uint64 x4 x24;
(* eor	x9, x26, x28, ror #63                       #! PC = 0xaaaaaaaaaa64 *)
split x28_h x28_l x28 63;
shl x28_ls x28_l 1@uint64;
add x28_ror x28_ls x28_h;
xor x9@uint64 x26 x28_ror;
(* eor	x1, x1, x9                                  #! PC = 0xaaaaaaaaaa68 *)
xor x1@uint64 x1 x9;
(* eor	x6, x6, x9                                  #! PC = 0xaaaaaaaaaa6c *)
xor x6@uint64 x6 x9;
(* eor	x11, x11, x9                                #! PC = 0xaaaaaaaaaa70 *)
xor x11@uint64 x11 x9;
(* eor	x16, x16, x9                                #! PC = 0xaaaaaaaaaa74 *)
xor x16@uint64 x16 x9;
(* eor	x21, x21, x9                                #! PC = 0xaaaaaaaaaa78 *)
xor x21@uint64 x21 x9;
(* eor	x9, x27, x30, ror #63                       #! PC = 0xaaaaaaaaaa7c *)
split x30_h x30_l x30 63;
shl x30_ls x30_l 1@uint64;
add x30_ror x30_ls x30_h;
xor x9@uint64 x27 x30_ror;
(* eor	x28, x28, x4, ror #63                       #! PC = 0xaaaaaaaaaa80 *)
split x4_h x4_l x4 63;
shl x4_ls x4_l 1@uint64;
add x4_ror x4_ls x4_h;
xor x28@uint64 x28 x4_ror;
(* eor	x30, x30, x26, ror #63                      #! PC = 0xaaaaaaaaaa84 *)
split x26_h x26_l x26 63;
shl x26_ls x26_l 1@uint64;
add x26_ror x26_ls x26_h;
xor x30@uint64 x30 x26_ror;
(* eor	x4, x4, x27, ror #63                        #! PC = 0xaaaaaaaaaa88 *)
split x27_h x27_l x27 63;
shl x27_ls x27_l 1@uint64;
add x27_ror x27_ls x27_h;
xor x4@uint64 x4 x27_ror;
(* eor	x27, x2, x9                                 #! PC = 0xaaaaaaaaaa8c *)
xor x27@uint64 x2 x9;
(* eor	x7, x7, x9                                  #! PC = 0xaaaaaaaaaa90 *)
xor x7@uint64 x7 x9;
(* eor	x12, x12, x9                                #! PC = 0xaaaaaaaaaa94 *)
xor x12@uint64 x12 x9;
(* eor	x17, x17, x9                                #! PC = 0xaaaaaaaaaa98 *)
xor x17@uint64 x17 x9;
(* eor	x22, x22, x9                                #! PC = 0xaaaaaaaaaa9c *)
xor x22@uint64 x22 x9;
(* eor	x0, x0, x4                                  #! PC = 0xaaaaaaaaaaa0 *)
xor x0@uint64 x0 x4;
(* eor	x5, x5, x4                                  #! PC = 0xaaaaaaaaaaa4 *)
xor x5@uint64 x5 x4;
(* eor	x10, x10, x4                                #! PC = 0xaaaaaaaaaaa8 *)
xor x10@uint64 x10 x4;
(* eor	x15, x15, x4                                #! PC = 0xaaaaaaaaaaac *)
xor x15@uint64 x15 x4;
(* eor	x20, x20, x4                                #! PC = 0xaaaaaaaaaab0 *)
xor x20@uint64 x20 x4;
(* ldp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; Value = 0x33760ab7782dc03c; PC = 0xaaaaaaaaaab4 *)
mov x4 L0xffffffffe8c0;
mov x9 L0xffffffffe8c8;
(* eor	x26, x3, x28                                #! PC = 0xaaaaaaaaaab8 *)
xor x26@uint64 x3 x28;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaaabc *)
xor x8@uint64 x8 x28;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaaac0 *)
xor x13@uint64 x13 x28;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaaac4 *)
xor x25@uint64 x25 x28;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaaac8 *)
xor x23@uint64 x23 x28;
(* eor	x28, x4, x30                                #! PC = 0xaaaaaaaaaacc *)
xor x28@uint64 x4 x30;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaad0 *)
xor x9@uint64 x9 x30;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaaad4 *)
xor x14@uint64 x14 x30;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaaad8 *)
xor x19@uint64 x19 x30;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaaadc *)
xor x24@uint64 x24 x30;
(* mov	x30, x1                                     #! PC = 0xaaaaaaaaaae0 *)
mov x30 x1;
(* ror	x1, x6, #20                                 #! PC = 0xaaaaaaaaaae4 *)
split x6_h x6_l x6 20;
shl x6_ls x6_l (64-20)@uint64;
add x1 x6_ls x6_h;
(* ror	x2, x12, #21                                #! PC = 0xaaaaaaaaaae8 *)
split x12_h x12_l x12 21;
shl x12_ls x12_l (64-21)@uint64;
add x2 x12_ls x12_h;
(* ror	x3, x25, #43                                #! PC = 0xaaaaaaaaaaec *)
split x25_h x25_l x25 43;
shl x25_ls x25_l (64-43)@uint64;
add x3 x25_ls x25_h;
(* ror	x4, x24, #50                                #! PC = 0xaaaaaaaaaaf0 *)
split x24_h x24_l x24 50;
shl x24_ls x24_l (64-50)@uint64;
add x4 x24_ls x24_h;
(* ror	x6, x9, #44                                 #! PC = 0xaaaaaaaaaaf4 *)
split x9_h x9_l x9 44;
shl x9_ls x9_l (64-44)@uint64;
add x6 x9_ls x9_h;
(* ror	x12, x13, #39                               #! PC = 0xaaaaaaaaaaf8 *)
split x13_h x13_l x13 39;
shl x13_ls x13_l (64-39)@uint64;
add x12 x13_ls x13_h;
(* ror	x25, x17, #49                               #! PC = 0xaaaaaaaaaafc *)
split x17_h x17_l x17 49;
shl x17_ls x17_l (64-49)@uint64;
add x25 x17_ls x17_h;
(* ror	x24, x21, #62                               #! PC = 0xaaaaaaaaab00 *)
split x21_h x21_l x21 62;
shl x21_ls x21_l (64-62)@uint64;
add x24 x21_ls x21_h;
(* ror	x9, x22, #3                                 #! PC = 0xaaaaaaaaab04 *)
split x22_h x22_l x22 3;
shl x22_ls x22_l (64-3)@uint64;
add x9 x22_ls x22_h;
(* ror	x13, x19, #56                               #! PC = 0xaaaaaaaaab08 *)
split x19_h x19_l x19 56;
shl x19_ls x19_l (64-56)@uint64;
add x13 x19_ls x19_h;
(* ror	x17, x11, #54                               #! PC = 0xaaaaaaaaab0c *)
split x11_h x11_l x11 54;
shl x11_ls x11_l (64-54)@uint64;
add x17 x11_ls x11_h;
(* ror	x21, x8, #9                                 #! PC = 0xaaaaaaaaab10 *)
split x8_h x8_l x8 9;
shl x8_ls x8_l (64-9)@uint64;
add x21 x8_ls x8_h;
(* ror	x22, x14, #25                               #! PC = 0xaaaaaaaaab14 *)
split x14_h x14_l x14 25;
shl x14_ls x14_l (64-25)@uint64;
add x22 x14_ls x14_h;
(* ror	x19, x23, #8                                #! PC = 0xaaaaaaaaab18 *)
split x23_h x23_l x23 8;
shl x23_ls x23_l (64-8)@uint64;
add x19 x23_ls x23_h;
(* ror	x11, x7, #58                                #! PC = 0xaaaaaaaaab1c *)
split x7_h x7_l x7 58;
shl x7_ls x7_l (64-58)@uint64;
add x11 x7_ls x7_h;
(* ror	x8, x16, #19                                #! PC = 0xaaaaaaaaab20 *)
split x16_h x16_l x16 19;
shl x16_ls x16_l (64-19)@uint64;
add x8 x16_ls x16_h;
(* ror	x14, x20, #46                               #! PC = 0xaaaaaaaaab24 *)
split x20_h x20_l x20 46;
shl x20_ls x20_l (64-46)@uint64;
add x14 x20_ls x20_h;
(* ror	x23, x15, #23                               #! PC = 0xaaaaaaaaab28 *)
split x15_h x15_l x15 23;
shl x15_ls x15_l (64-23)@uint64;
add x23 x15_ls x15_h;
(* ror	x7, x10, #61                                #! PC = 0xaaaaaaaaab2c *)
split x10_h x10_l x10 61;
shl x10_ls x10_l (64-61)@uint64;
add x7 x10_ls x10_h;
(* ror	x16, x5, #28                                #! PC = 0xaaaaaaaaab30 *)
split x5_h x5_l x5 28;
shl x5_ls x5_l (64-28)@uint64;
add x16 x5_ls x5_h;
(* ror	x5, x26, #36                                #! PC = 0xaaaaaaaaab34 *)
split x26_h x26_l x26 36;
shl x26_ls x26_l (64-36)@uint64;
add x5 x26_ls x26_h;
(* ror	x10, x30, #63                               #! PC = 0xaaaaaaaaab38 *)
split x30_h x30_l x30 63;
shl x30_ls x30_l (64-63)@uint64;
add x10 x30_ls x30_h;
(* ror	x15, x28, #37                               #! PC = 0xaaaaaaaaab3c *)
split x28_h x28_l x28 37;
shl x28_ls x28_l (64-37)@uint64;
add x15 x28_ls x28_h;
(* ror	x20, x27, #2                                #! PC = 0xaaaaaaaaab40 *)
split x27_h x27_l x27 2;
shl x27_ls x27_l (64-2)@uint64;
add x20 x27_ls x27_h;
(* bic	x26, x2, x1                                 #! PC = 0xaaaaaaaaab44 *)
not x1_not@uint64 x1;
and x26@uint64 x2 x1_not;
(* bic	x27, x3, x2                                 #! PC = 0xaaaaaaaaab48 *)
not x2_not@uint64 x2;
and x27@uint64 x3 x2_not;
(* bic	x28, x0, x4                                 #! PC = 0xaaaaaaaaab4c *)
not x4_not@uint64 x4;
and x28@uint64 x0 x4_not;
(* bic	x30, x1, x0                                 #! PC = 0xaaaaaaaaab50 *)
not x0_not@uint64 x0;
and x30@uint64 x1 x0_not;
(* eor	x0, x0, x26                                 #! PC = 0xaaaaaaaaab54 *)
xor x0@uint64 x0 x26;
(* bic	x26, x4, x3                                 #! PC = 0xaaaaaaaaab58 *)
not x3_not@uint64 x3;
and x26@uint64 x4 x3_not;
(* eor	x1, x1, x27                                 #! PC = 0xaaaaaaaaab5c *)
xor x1@uint64 x1 x27;
(* ldr	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; Value = 0x0000aaaaaaaaa970; PC = 0xaaaaaaaaab60 *)
mov x27 L0xffffffffe8d0;
(* eor	x3, x3, x28                                 #! PC = 0xaaaaaaaaab64 *)
xor x3@uint64 x3 x28;
(* eor	x4, x4, x30                                 #! PC = 0xaaaaaaaaab68 *)
xor x4@uint64 x4 x30;
(* eor	x2, x2, x26                                 #! PC = 0xaaaaaaaaab6c *)
xor x2@uint64 x2 x26;
(* ldr	x30, [x27], #8                              #! EA = L0xaaaaaaaaa970; Value = 0x8000000080008081; PC = 0xaaaaaaaaab70 *)
mov x30 L0xaaaaaaaaa970;
(* bic	x26, x7, x6                                 #! PC = 0xaaaaaaaaab74 *)
not x6_not@uint64 x6;
and x26@uint64 x7 x6_not;
(* str	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; PC = 0xaaaaaaaaab7c *)
mov L0xffffffffe8d0 x27;
(* bic	x27, x8, x7                                 #! PC = 0xaaaaaaaaab80 *)
not x7_not@uint64 x7;
and x27@uint64 x8 x7_not;
(* bic	x28, x5, x9                                 #! PC = 0xaaaaaaaaab84 *)
not x9_not@uint64 x9;
and x28@uint64 x5 x9_not;
(* eor	x0, x0, x30                                 #! PC = 0xaaaaaaaaab88 *)
xor x0@uint64 x0 x30;
(* bic	x30, x6, x5                                 #! PC = 0xaaaaaaaaab8c *)
not x5_not@uint64 x5;
and x30@uint64 x6 x5_not;
(* eor	x5, x5, x26                                 #! PC = 0xaaaaaaaaab90 *)
xor x5@uint64 x5 x26;
(* bic	x26, x9, x8                                 #! PC = 0xaaaaaaaaab94 *)
not x8_not@uint64 x8;
and x26@uint64 x9 x8_not;
(* eor	x6, x6, x27                                 #! PC = 0xaaaaaaaaab98 *)
xor x6@uint64 x6 x27;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaab9c *)
xor x8@uint64 x8 x28;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaba0 *)
xor x9@uint64 x9 x30;
(* eor	x7, x7, x26                                 #! PC = 0xaaaaaaaaaba4 *)
xor x7@uint64 x7 x26;
(* bic	x26, x12, x11                               #! PC = 0xaaaaaaaaaba8 *)
not x11_not@uint64 x11;
and x26@uint64 x12 x11_not;
(* bic	x27, x13, x12                               #! PC = 0xaaaaaaaaabac *)
not x12_not@uint64 x12;
and x27@uint64 x13 x12_not;
(* bic	x28, x10, x14                               #! PC = 0xaaaaaaaaabb0 *)
not x14_not@uint64 x14;
and x28@uint64 x10 x14_not;
(* bic	x30, x11, x10                               #! PC = 0xaaaaaaaaabb4 *)
not x10_not@uint64 x10;
and x30@uint64 x11 x10_not;
(* eor	x10, x10, x26                               #! PC = 0xaaaaaaaaabb8 *)
xor x10@uint64 x10 x26;
(* bic	x26, x14, x13                               #! PC = 0xaaaaaaaaabbc *)
not x13_not@uint64 x13;
and x26@uint64 x14 x13_not;
(* eor	x11, x11, x27                               #! PC = 0xaaaaaaaaabc0 *)
xor x11@uint64 x11 x27;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaabc4 *)
xor x13@uint64 x13 x28;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaabc8 *)
xor x14@uint64 x14 x30;
(* eor	x12, x12, x26                               #! PC = 0xaaaaaaaaabcc *)
xor x12@uint64 x12 x26;
(* bic	x26, x17, x16                               #! PC = 0xaaaaaaaaabd0 *)
not x16_not@uint64 x16;
and x26@uint64 x17 x16_not;
(* bic	x27, x25, x17                               #! PC = 0xaaaaaaaaabd4 *)
not x17_not@uint64 x17;
and x27@uint64 x25 x17_not;
(* bic	x28, x15, x19                               #! PC = 0xaaaaaaaaabd8 *)
not x19_not@uint64 x19;
and x28@uint64 x15 x19_not;
(* bic	x30, x16, x15                               #! PC = 0xaaaaaaaaabdc *)
not x15_not@uint64 x15;
and x30@uint64 x16 x15_not;
(* eor	x15, x15, x26                               #! PC = 0xaaaaaaaaabe0 *)
xor x15@uint64 x15 x26;
(* bic	x26, x19, x25                               #! PC = 0xaaaaaaaaabe4 *)
not x25_not@uint64 x25;
and x26@uint64 x19 x25_not;
(* eor	x16, x16, x27                               #! PC = 0xaaaaaaaaabe8 *)
xor x16@uint64 x16 x27;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaabec *)
xor x25@uint64 x25 x28;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaabf0 *)
xor x19@uint64 x19 x30;
(* eor	x17, x17, x26                               #! PC = 0xaaaaaaaaabf4 *)
xor x17@uint64 x17 x26;
(* bic	x26, x22, x21                               #! PC = 0xaaaaaaaaabf8 *)
not x21_not@uint64 x21;
and x26@uint64 x22 x21_not;
(* bic	x27, x23, x22                               #! PC = 0xaaaaaaaaabfc *)
not x22_not@uint64 x22;
and x27@uint64 x23 x22_not;
(* bic	x28, x20, x24                               #! PC = 0xaaaaaaaaac00 *)
not x24_not@uint64 x24;
and x28@uint64 x20 x24_not;
(* bic	x30, x21, x20                               #! PC = 0xaaaaaaaaac04 *)
not x20_not@uint64 x20;
and x30@uint64 x21 x20_not;
(* eor	x20, x20, x26                               #! PC = 0xaaaaaaaaac08 *)
xor x20@uint64 x20 x26;
(* bic	x26, x24, x23                               #! PC = 0xaaaaaaaaac0c *)
not x23_not@uint64 x23;
and x26@uint64 x24 x23_not;
(* eor	x21, x21, x27                               #! PC = 0xaaaaaaaaac10 *)
xor x21@uint64 x21 x27;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaac14 *)
xor x23@uint64 x23 x28;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaac18 *)
xor x24@uint64 x24 x30;
(* eor	x22, x22, x26                               #! PC = 0xaaaaaaaaac1c *)
xor x22@uint64 x22 x26;
(* #b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! PC = 0xaaaaaaaaac20 *)
#b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! 0xaaaaaaaaac20 = 0xaaaaaaaaac20;
(* eor	x26, x0, x5                                 #! PC = 0xaaaaaaaaaa10 *)
xor x26@uint64 x0 x5;
(* stp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; PC = 0xaaaaaaaaaa14 *)
mov L0xffffffffe8c0 x4;
mov L0xffffffffe8c8 x9;
(* eor	x27, x1, x6                                 #! PC = 0xaaaaaaaaaa18 *)
xor x27@uint64 x1 x6;
(* eor	x28, x2, x7                                 #! PC = 0xaaaaaaaaaa1c *)
xor x28@uint64 x2 x7;
(* eor	x30, x3, x8                                 #! PC = 0xaaaaaaaaaa20 *)
xor x30@uint64 x3 x8;
(* eor	x4, x4, x9                                  #! PC = 0xaaaaaaaaaa24 *)
xor x4@uint64 x4 x9;
(* eor	x26, x26, x10                               #! PC = 0xaaaaaaaaaa28 *)
xor x26@uint64 x26 x10;
(* eor	x27, x27, x11                               #! PC = 0xaaaaaaaaaa2c *)
xor x27@uint64 x27 x11;
(* eor	x28, x28, x12                               #! PC = 0xaaaaaaaaaa30 *)
xor x28@uint64 x28 x12;
(* eor	x30, x30, x13                               #! PC = 0xaaaaaaaaaa34 *)
xor x30@uint64 x30 x13;
(* eor	x4, x4, x14                                 #! PC = 0xaaaaaaaaaa38 *)
xor x4@uint64 x4 x14;
(* eor	x26, x26, x15                               #! PC = 0xaaaaaaaaaa3c *)
xor x26@uint64 x26 x15;
(* eor	x27, x27, x16                               #! PC = 0xaaaaaaaaaa40 *)
xor x27@uint64 x27 x16;
(* eor	x28, x28, x17                               #! PC = 0xaaaaaaaaaa44 *)
xor x28@uint64 x28 x17;
(* eor	x30, x30, x25                               #! PC = 0xaaaaaaaaaa48 *)
xor x30@uint64 x30 x25;
(* eor	x4, x4, x19                                 #! PC = 0xaaaaaaaaaa4c *)
xor x4@uint64 x4 x19;
(* eor	x26, x26, x20                               #! PC = 0xaaaaaaaaaa50 *)
xor x26@uint64 x26 x20;
(* eor	x28, x28, x22                               #! PC = 0xaaaaaaaaaa54 *)
xor x28@uint64 x28 x22;
(* eor	x27, x27, x21                               #! PC = 0xaaaaaaaaaa58 *)
xor x27@uint64 x27 x21;
(* eor	x30, x30, x23                               #! PC = 0xaaaaaaaaaa5c *)
xor x30@uint64 x30 x23;
(* eor	x4, x4, x24                                 #! PC = 0xaaaaaaaaaa60 *)
xor x4@uint64 x4 x24;
(* eor	x9, x26, x28, ror #63                       #! PC = 0xaaaaaaaaaa64 *)
split x28_h x28_l x28 63;
shl x28_ls x28_l 1@uint64;
add x28_ror x28_ls x28_h;
xor x9@uint64 x26 x28_ror;
(* eor	x1, x1, x9                                  #! PC = 0xaaaaaaaaaa68 *)
xor x1@uint64 x1 x9;
(* eor	x6, x6, x9                                  #! PC = 0xaaaaaaaaaa6c *)
xor x6@uint64 x6 x9;
(* eor	x11, x11, x9                                #! PC = 0xaaaaaaaaaa70 *)
xor x11@uint64 x11 x9;
(* eor	x16, x16, x9                                #! PC = 0xaaaaaaaaaa74 *)
xor x16@uint64 x16 x9;
(* eor	x21, x21, x9                                #! PC = 0xaaaaaaaaaa78 *)
xor x21@uint64 x21 x9;
(* eor	x9, x27, x30, ror #63                       #! PC = 0xaaaaaaaaaa7c *)
split x30_h x30_l x30 63;
shl x30_ls x30_l 1@uint64;
add x30_ror x30_ls x30_h;
xor x9@uint64 x27 x30_ror;
(* eor	x28, x28, x4, ror #63                       #! PC = 0xaaaaaaaaaa80 *)
split x4_h x4_l x4 63;
shl x4_ls x4_l 1@uint64;
add x4_ror x4_ls x4_h;
xor x28@uint64 x28 x4_ror;
(* eor	x30, x30, x26, ror #63                      #! PC = 0xaaaaaaaaaa84 *)
split x26_h x26_l x26 63;
shl x26_ls x26_l 1@uint64;
add x26_ror x26_ls x26_h;
xor x30@uint64 x30 x26_ror;
(* eor	x4, x4, x27, ror #63                        #! PC = 0xaaaaaaaaaa88 *)
split x27_h x27_l x27 63;
shl x27_ls x27_l 1@uint64;
add x27_ror x27_ls x27_h;
xor x4@uint64 x4 x27_ror;
(* eor	x27, x2, x9                                 #! PC = 0xaaaaaaaaaa8c *)
xor x27@uint64 x2 x9;
(* eor	x7, x7, x9                                  #! PC = 0xaaaaaaaaaa90 *)
xor x7@uint64 x7 x9;
(* eor	x12, x12, x9                                #! PC = 0xaaaaaaaaaa94 *)
xor x12@uint64 x12 x9;
(* eor	x17, x17, x9                                #! PC = 0xaaaaaaaaaa98 *)
xor x17@uint64 x17 x9;
(* eor	x22, x22, x9                                #! PC = 0xaaaaaaaaaa9c *)
xor x22@uint64 x22 x9;
(* eor	x0, x0, x4                                  #! PC = 0xaaaaaaaaaaa0 *)
xor x0@uint64 x0 x4;
(* eor	x5, x5, x4                                  #! PC = 0xaaaaaaaaaaa4 *)
xor x5@uint64 x5 x4;
(* eor	x10, x10, x4                                #! PC = 0xaaaaaaaaaaa8 *)
xor x10@uint64 x10 x4;
(* eor	x15, x15, x4                                #! PC = 0xaaaaaaaaaaac *)
xor x15@uint64 x15 x4;
(* eor	x20, x20, x4                                #! PC = 0xaaaaaaaaaab0 *)
xor x20@uint64 x20 x4;
(* ldp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; Value = 0x9a383388524e819a; PC = 0xaaaaaaaaaab4 *)
mov x4 L0xffffffffe8c0;
mov x9 L0xffffffffe8c8;
(* eor	x26, x3, x28                                #! PC = 0xaaaaaaaaaab8 *)
xor x26@uint64 x3 x28;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaaabc *)
xor x8@uint64 x8 x28;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaaac0 *)
xor x13@uint64 x13 x28;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaaac4 *)
xor x25@uint64 x25 x28;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaaac8 *)
xor x23@uint64 x23 x28;
(* eor	x28, x4, x30                                #! PC = 0xaaaaaaaaaacc *)
xor x28@uint64 x4 x30;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaad0 *)
xor x9@uint64 x9 x30;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaaad4 *)
xor x14@uint64 x14 x30;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaaad8 *)
xor x19@uint64 x19 x30;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaaadc *)
xor x24@uint64 x24 x30;
(* mov	x30, x1                                     #! PC = 0xaaaaaaaaaae0 *)
mov x30 x1;
(* ror	x1, x6, #20                                 #! PC = 0xaaaaaaaaaae4 *)
split x6_h x6_l x6 20;
shl x6_ls x6_l (64-20)@uint64;
add x1 x6_ls x6_h;
(* ror	x2, x12, #21                                #! PC = 0xaaaaaaaaaae8 *)
split x12_h x12_l x12 21;
shl x12_ls x12_l (64-21)@uint64;
add x2 x12_ls x12_h;
(* ror	x3, x25, #43                                #! PC = 0xaaaaaaaaaaec *)
split x25_h x25_l x25 43;
shl x25_ls x25_l (64-43)@uint64;
add x3 x25_ls x25_h;
(* ror	x4, x24, #50                                #! PC = 0xaaaaaaaaaaf0 *)
split x24_h x24_l x24 50;
shl x24_ls x24_l (64-50)@uint64;
add x4 x24_ls x24_h;
(* ror	x6, x9, #44                                 #! PC = 0xaaaaaaaaaaf4 *)
split x9_h x9_l x9 44;
shl x9_ls x9_l (64-44)@uint64;
add x6 x9_ls x9_h;
(* ror	x12, x13, #39                               #! PC = 0xaaaaaaaaaaf8 *)
split x13_h x13_l x13 39;
shl x13_ls x13_l (64-39)@uint64;
add x12 x13_ls x13_h;
(* ror	x25, x17, #49                               #! PC = 0xaaaaaaaaaafc *)
split x17_h x17_l x17 49;
shl x17_ls x17_l (64-49)@uint64;
add x25 x17_ls x17_h;
(* ror	x24, x21, #62                               #! PC = 0xaaaaaaaaab00 *)
split x21_h x21_l x21 62;
shl x21_ls x21_l (64-62)@uint64;
add x24 x21_ls x21_h;
(* ror	x9, x22, #3                                 #! PC = 0xaaaaaaaaab04 *)
split x22_h x22_l x22 3;
shl x22_ls x22_l (64-3)@uint64;
add x9 x22_ls x22_h;
(* ror	x13, x19, #56                               #! PC = 0xaaaaaaaaab08 *)
split x19_h x19_l x19 56;
shl x19_ls x19_l (64-56)@uint64;
add x13 x19_ls x19_h;
(* ror	x17, x11, #54                               #! PC = 0xaaaaaaaaab0c *)
split x11_h x11_l x11 54;
shl x11_ls x11_l (64-54)@uint64;
add x17 x11_ls x11_h;
(* ror	x21, x8, #9                                 #! PC = 0xaaaaaaaaab10 *)
split x8_h x8_l x8 9;
shl x8_ls x8_l (64-9)@uint64;
add x21 x8_ls x8_h;
(* ror	x22, x14, #25                               #! PC = 0xaaaaaaaaab14 *)
split x14_h x14_l x14 25;
shl x14_ls x14_l (64-25)@uint64;
add x22 x14_ls x14_h;
(* ror	x19, x23, #8                                #! PC = 0xaaaaaaaaab18 *)
split x23_h x23_l x23 8;
shl x23_ls x23_l (64-8)@uint64;
add x19 x23_ls x23_h;
(* ror	x11, x7, #58                                #! PC = 0xaaaaaaaaab1c *)
split x7_h x7_l x7 58;
shl x7_ls x7_l (64-58)@uint64;
add x11 x7_ls x7_h;
(* ror	x8, x16, #19                                #! PC = 0xaaaaaaaaab20 *)
split x16_h x16_l x16 19;
shl x16_ls x16_l (64-19)@uint64;
add x8 x16_ls x16_h;
(* ror	x14, x20, #46                               #! PC = 0xaaaaaaaaab24 *)
split x20_h x20_l x20 46;
shl x20_ls x20_l (64-46)@uint64;
add x14 x20_ls x20_h;
(* ror	x23, x15, #23                               #! PC = 0xaaaaaaaaab28 *)
split x15_h x15_l x15 23;
shl x15_ls x15_l (64-23)@uint64;
add x23 x15_ls x15_h;
(* ror	x7, x10, #61                                #! PC = 0xaaaaaaaaab2c *)
split x10_h x10_l x10 61;
shl x10_ls x10_l (64-61)@uint64;
add x7 x10_ls x10_h;
(* ror	x16, x5, #28                                #! PC = 0xaaaaaaaaab30 *)
split x5_h x5_l x5 28;
shl x5_ls x5_l (64-28)@uint64;
add x16 x5_ls x5_h;
(* ror	x5, x26, #36                                #! PC = 0xaaaaaaaaab34 *)
split x26_h x26_l x26 36;
shl x26_ls x26_l (64-36)@uint64;
add x5 x26_ls x26_h;
(* ror	x10, x30, #63                               #! PC = 0xaaaaaaaaab38 *)
split x30_h x30_l x30 63;
shl x30_ls x30_l (64-63)@uint64;
add x10 x30_ls x30_h;
(* ror	x15, x28, #37                               #! PC = 0xaaaaaaaaab3c *)
split x28_h x28_l x28 37;
shl x28_ls x28_l (64-37)@uint64;
add x15 x28_ls x28_h;
(* ror	x20, x27, #2                                #! PC = 0xaaaaaaaaab40 *)
split x27_h x27_l x27 2;
shl x27_ls x27_l (64-2)@uint64;
add x20 x27_ls x27_h;
(* bic	x26, x2, x1                                 #! PC = 0xaaaaaaaaab44 *)
not x1_not@uint64 x1;
and x26@uint64 x2 x1_not;
(* bic	x27, x3, x2                                 #! PC = 0xaaaaaaaaab48 *)
not x2_not@uint64 x2;
and x27@uint64 x3 x2_not;
(* bic	x28, x0, x4                                 #! PC = 0xaaaaaaaaab4c *)
not x4_not@uint64 x4;
and x28@uint64 x0 x4_not;
(* bic	x30, x1, x0                                 #! PC = 0xaaaaaaaaab50 *)
not x0_not@uint64 x0;
and x30@uint64 x1 x0_not;
(* eor	x0, x0, x26                                 #! PC = 0xaaaaaaaaab54 *)
xor x0@uint64 x0 x26;
(* bic	x26, x4, x3                                 #! PC = 0xaaaaaaaaab58 *)
not x3_not@uint64 x3;
and x26@uint64 x4 x3_not;
(* eor	x1, x1, x27                                 #! PC = 0xaaaaaaaaab5c *)
xor x1@uint64 x1 x27;
(* ldr	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; Value = 0x0000aaaaaaaaa978; PC = 0xaaaaaaaaab60 *)
mov x27 L0xffffffffe8d0;
(* eor	x3, x3, x28                                 #! PC = 0xaaaaaaaaab64 *)
xor x3@uint64 x3 x28;
(* eor	x4, x4, x30                                 #! PC = 0xaaaaaaaaab68 *)
xor x4@uint64 x4 x30;
(* eor	x2, x2, x26                                 #! PC = 0xaaaaaaaaab6c *)
xor x2@uint64 x2 x26;
(* ldr	x30, [x27], #8                              #! EA = L0xaaaaaaaaa978; Value = 0x8000000000008009; PC = 0xaaaaaaaaab70 *)
mov x30 L0xaaaaaaaaa978;
(* bic	x26, x7, x6                                 #! PC = 0xaaaaaaaaab74 *)
not x6_not@uint64 x6;
and x26@uint64 x7 x6_not;
(* str	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; PC = 0xaaaaaaaaab7c *)
mov L0xffffffffe8d0 x27;
(* bic	x27, x8, x7                                 #! PC = 0xaaaaaaaaab80 *)
not x7_not@uint64 x7;
and x27@uint64 x8 x7_not;
(* bic	x28, x5, x9                                 #! PC = 0xaaaaaaaaab84 *)
not x9_not@uint64 x9;
and x28@uint64 x5 x9_not;
(* eor	x0, x0, x30                                 #! PC = 0xaaaaaaaaab88 *)
xor x0@uint64 x0 x30;
(* bic	x30, x6, x5                                 #! PC = 0xaaaaaaaaab8c *)
not x5_not@uint64 x5;
and x30@uint64 x6 x5_not;
(* eor	x5, x5, x26                                 #! PC = 0xaaaaaaaaab90 *)
xor x5@uint64 x5 x26;
(* bic	x26, x9, x8                                 #! PC = 0xaaaaaaaaab94 *)
not x8_not@uint64 x8;
and x26@uint64 x9 x8_not;
(* eor	x6, x6, x27                                 #! PC = 0xaaaaaaaaab98 *)
xor x6@uint64 x6 x27;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaab9c *)
xor x8@uint64 x8 x28;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaba0 *)
xor x9@uint64 x9 x30;
(* eor	x7, x7, x26                                 #! PC = 0xaaaaaaaaaba4 *)
xor x7@uint64 x7 x26;
(* bic	x26, x12, x11                               #! PC = 0xaaaaaaaaaba8 *)
not x11_not@uint64 x11;
and x26@uint64 x12 x11_not;
(* bic	x27, x13, x12                               #! PC = 0xaaaaaaaaabac *)
not x12_not@uint64 x12;
and x27@uint64 x13 x12_not;
(* bic	x28, x10, x14                               #! PC = 0xaaaaaaaaabb0 *)
not x14_not@uint64 x14;
and x28@uint64 x10 x14_not;
(* bic	x30, x11, x10                               #! PC = 0xaaaaaaaaabb4 *)
not x10_not@uint64 x10;
and x30@uint64 x11 x10_not;
(* eor	x10, x10, x26                               #! PC = 0xaaaaaaaaabb8 *)
xor x10@uint64 x10 x26;
(* bic	x26, x14, x13                               #! PC = 0xaaaaaaaaabbc *)
not x13_not@uint64 x13;
and x26@uint64 x14 x13_not;
(* eor	x11, x11, x27                               #! PC = 0xaaaaaaaaabc0 *)
xor x11@uint64 x11 x27;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaabc4 *)
xor x13@uint64 x13 x28;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaabc8 *)
xor x14@uint64 x14 x30;
(* eor	x12, x12, x26                               #! PC = 0xaaaaaaaaabcc *)
xor x12@uint64 x12 x26;
(* bic	x26, x17, x16                               #! PC = 0xaaaaaaaaabd0 *)
not x16_not@uint64 x16;
and x26@uint64 x17 x16_not;
(* bic	x27, x25, x17                               #! PC = 0xaaaaaaaaabd4 *)
not x17_not@uint64 x17;
and x27@uint64 x25 x17_not;
(* bic	x28, x15, x19                               #! PC = 0xaaaaaaaaabd8 *)
not x19_not@uint64 x19;
and x28@uint64 x15 x19_not;
(* bic	x30, x16, x15                               #! PC = 0xaaaaaaaaabdc *)
not x15_not@uint64 x15;
and x30@uint64 x16 x15_not;
(* eor	x15, x15, x26                               #! PC = 0xaaaaaaaaabe0 *)
xor x15@uint64 x15 x26;
(* bic	x26, x19, x25                               #! PC = 0xaaaaaaaaabe4 *)
not x25_not@uint64 x25;
and x26@uint64 x19 x25_not;
(* eor	x16, x16, x27                               #! PC = 0xaaaaaaaaabe8 *)
xor x16@uint64 x16 x27;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaabec *)
xor x25@uint64 x25 x28;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaabf0 *)
xor x19@uint64 x19 x30;
(* eor	x17, x17, x26                               #! PC = 0xaaaaaaaaabf4 *)
xor x17@uint64 x17 x26;
(* bic	x26, x22, x21                               #! PC = 0xaaaaaaaaabf8 *)
not x21_not@uint64 x21;
and x26@uint64 x22 x21_not;
(* bic	x27, x23, x22                               #! PC = 0xaaaaaaaaabfc *)
not x22_not@uint64 x22;
and x27@uint64 x23 x22_not;
(* bic	x28, x20, x24                               #! PC = 0xaaaaaaaaac00 *)
not x24_not@uint64 x24;
and x28@uint64 x20 x24_not;
(* bic	x30, x21, x20                               #! PC = 0xaaaaaaaaac04 *)
not x20_not@uint64 x20;
and x30@uint64 x21 x20_not;
(* eor	x20, x20, x26                               #! PC = 0xaaaaaaaaac08 *)
xor x20@uint64 x20 x26;
(* bic	x26, x24, x23                               #! PC = 0xaaaaaaaaac0c *)
not x23_not@uint64 x23;
and x26@uint64 x24 x23_not;
(* eor	x21, x21, x27                               #! PC = 0xaaaaaaaaac10 *)
xor x21@uint64 x21 x27;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaac14 *)
xor x23@uint64 x23 x28;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaac18 *)
xor x24@uint64 x24 x30;
(* eor	x22, x22, x26                               #! PC = 0xaaaaaaaaac1c *)
xor x22@uint64 x22 x26;
(* #b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! PC = 0xaaaaaaaaac20 *)
#b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! 0xaaaaaaaaac20 = 0xaaaaaaaaac20;
(* eor	x26, x0, x5                                 #! PC = 0xaaaaaaaaaa10 *)
xor x26@uint64 x0 x5;
(* stp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; PC = 0xaaaaaaaaaa14 *)
mov L0xffffffffe8c0 x4;
mov L0xffffffffe8c8 x9;
(* eor	x27, x1, x6                                 #! PC = 0xaaaaaaaaaa18 *)
xor x27@uint64 x1 x6;
(* eor	x28, x2, x7                                 #! PC = 0xaaaaaaaaaa1c *)
xor x28@uint64 x2 x7;
(* eor	x30, x3, x8                                 #! PC = 0xaaaaaaaaaa20 *)
xor x30@uint64 x3 x8;
(* eor	x4, x4, x9                                  #! PC = 0xaaaaaaaaaa24 *)
xor x4@uint64 x4 x9;
(* eor	x26, x26, x10                               #! PC = 0xaaaaaaaaaa28 *)
xor x26@uint64 x26 x10;
(* eor	x27, x27, x11                               #! PC = 0xaaaaaaaaaa2c *)
xor x27@uint64 x27 x11;
(* eor	x28, x28, x12                               #! PC = 0xaaaaaaaaaa30 *)
xor x28@uint64 x28 x12;
(* eor	x30, x30, x13                               #! PC = 0xaaaaaaaaaa34 *)
xor x30@uint64 x30 x13;
(* eor	x4, x4, x14                                 #! PC = 0xaaaaaaaaaa38 *)
xor x4@uint64 x4 x14;
(* eor	x26, x26, x15                               #! PC = 0xaaaaaaaaaa3c *)
xor x26@uint64 x26 x15;
(* eor	x27, x27, x16                               #! PC = 0xaaaaaaaaaa40 *)
xor x27@uint64 x27 x16;
(* eor	x28, x28, x17                               #! PC = 0xaaaaaaaaaa44 *)
xor x28@uint64 x28 x17;
(* eor	x30, x30, x25                               #! PC = 0xaaaaaaaaaa48 *)
xor x30@uint64 x30 x25;
(* eor	x4, x4, x19                                 #! PC = 0xaaaaaaaaaa4c *)
xor x4@uint64 x4 x19;
(* eor	x26, x26, x20                               #! PC = 0xaaaaaaaaaa50 *)
xor x26@uint64 x26 x20;
(* eor	x28, x28, x22                               #! PC = 0xaaaaaaaaaa54 *)
xor x28@uint64 x28 x22;
(* eor	x27, x27, x21                               #! PC = 0xaaaaaaaaaa58 *)
xor x27@uint64 x27 x21;
(* eor	x30, x30, x23                               #! PC = 0xaaaaaaaaaa5c *)
xor x30@uint64 x30 x23;
(* eor	x4, x4, x24                                 #! PC = 0xaaaaaaaaaa60 *)
xor x4@uint64 x4 x24;
(* eor	x9, x26, x28, ror #63                       #! PC = 0xaaaaaaaaaa64 *)
split x28_h x28_l x28 63;
shl x28_ls x28_l 1@uint64;
add x28_ror x28_ls x28_h;
xor x9@uint64 x26 x28_ror;
(* eor	x1, x1, x9                                  #! PC = 0xaaaaaaaaaa68 *)
xor x1@uint64 x1 x9;
(* eor	x6, x6, x9                                  #! PC = 0xaaaaaaaaaa6c *)
xor x6@uint64 x6 x9;
(* eor	x11, x11, x9                                #! PC = 0xaaaaaaaaaa70 *)
xor x11@uint64 x11 x9;
(* eor	x16, x16, x9                                #! PC = 0xaaaaaaaaaa74 *)
xor x16@uint64 x16 x9;
(* eor	x21, x21, x9                                #! PC = 0xaaaaaaaaaa78 *)
xor x21@uint64 x21 x9;
(* eor	x9, x27, x30, ror #63                       #! PC = 0xaaaaaaaaaa7c *)
split x30_h x30_l x30 63;
shl x30_ls x30_l 1@uint64;
add x30_ror x30_ls x30_h;
xor x9@uint64 x27 x30_ror;
(* eor	x28, x28, x4, ror #63                       #! PC = 0xaaaaaaaaaa80 *)
split x4_h x4_l x4 63;
shl x4_ls x4_l 1@uint64;
add x4_ror x4_ls x4_h;
xor x28@uint64 x28 x4_ror;
(* eor	x30, x30, x26, ror #63                      #! PC = 0xaaaaaaaaaa84 *)
split x26_h x26_l x26 63;
shl x26_ls x26_l 1@uint64;
add x26_ror x26_ls x26_h;
xor x30@uint64 x30 x26_ror;
(* eor	x4, x4, x27, ror #63                        #! PC = 0xaaaaaaaaaa88 *)
split x27_h x27_l x27 63;
shl x27_ls x27_l 1@uint64;
add x27_ror x27_ls x27_h;
xor x4@uint64 x4 x27_ror;
(* eor	x27, x2, x9                                 #! PC = 0xaaaaaaaaaa8c *)
xor x27@uint64 x2 x9;
(* eor	x7, x7, x9                                  #! PC = 0xaaaaaaaaaa90 *)
xor x7@uint64 x7 x9;
(* eor	x12, x12, x9                                #! PC = 0xaaaaaaaaaa94 *)
xor x12@uint64 x12 x9;
(* eor	x17, x17, x9                                #! PC = 0xaaaaaaaaaa98 *)
xor x17@uint64 x17 x9;
(* eor	x22, x22, x9                                #! PC = 0xaaaaaaaaaa9c *)
xor x22@uint64 x22 x9;
(* eor	x0, x0, x4                                  #! PC = 0xaaaaaaaaaaa0 *)
xor x0@uint64 x0 x4;
(* eor	x5, x5, x4                                  #! PC = 0xaaaaaaaaaaa4 *)
xor x5@uint64 x5 x4;
(* eor	x10, x10, x4                                #! PC = 0xaaaaaaaaaaa8 *)
xor x10@uint64 x10 x4;
(* eor	x15, x15, x4                                #! PC = 0xaaaaaaaaaaac *)
xor x15@uint64 x15 x4;
(* eor	x20, x20, x4                                #! PC = 0xaaaaaaaaaab0 *)
xor x20@uint64 x20 x4;
(* ldp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; Value = 0xd8a510320dd9597b; PC = 0xaaaaaaaaaab4 *)
mov x4 L0xffffffffe8c0;
mov x9 L0xffffffffe8c8;
(* eor	x26, x3, x28                                #! PC = 0xaaaaaaaaaab8 *)
xor x26@uint64 x3 x28;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaaabc *)
xor x8@uint64 x8 x28;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaaac0 *)
xor x13@uint64 x13 x28;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaaac4 *)
xor x25@uint64 x25 x28;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaaac8 *)
xor x23@uint64 x23 x28;
(* eor	x28, x4, x30                                #! PC = 0xaaaaaaaaaacc *)
xor x28@uint64 x4 x30;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaad0 *)
xor x9@uint64 x9 x30;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaaad4 *)
xor x14@uint64 x14 x30;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaaad8 *)
xor x19@uint64 x19 x30;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaaadc *)
xor x24@uint64 x24 x30;
(* mov	x30, x1                                     #! PC = 0xaaaaaaaaaae0 *)
mov x30 x1;
(* ror	x1, x6, #20                                 #! PC = 0xaaaaaaaaaae4 *)
split x6_h x6_l x6 20;
shl x6_ls x6_l (64-20)@uint64;
add x1 x6_ls x6_h;
(* ror	x2, x12, #21                                #! PC = 0xaaaaaaaaaae8 *)
split x12_h x12_l x12 21;
shl x12_ls x12_l (64-21)@uint64;
add x2 x12_ls x12_h;
(* ror	x3, x25, #43                                #! PC = 0xaaaaaaaaaaec *)
split x25_h x25_l x25 43;
shl x25_ls x25_l (64-43)@uint64;
add x3 x25_ls x25_h;
(* ror	x4, x24, #50                                #! PC = 0xaaaaaaaaaaf0 *)
split x24_h x24_l x24 50;
shl x24_ls x24_l (64-50)@uint64;
add x4 x24_ls x24_h;
(* ror	x6, x9, #44                                 #! PC = 0xaaaaaaaaaaf4 *)
split x9_h x9_l x9 44;
shl x9_ls x9_l (64-44)@uint64;
add x6 x9_ls x9_h;
(* ror	x12, x13, #39                               #! PC = 0xaaaaaaaaaaf8 *)
split x13_h x13_l x13 39;
shl x13_ls x13_l (64-39)@uint64;
add x12 x13_ls x13_h;
(* ror	x25, x17, #49                               #! PC = 0xaaaaaaaaaafc *)
split x17_h x17_l x17 49;
shl x17_ls x17_l (64-49)@uint64;
add x25 x17_ls x17_h;
(* ror	x24, x21, #62                               #! PC = 0xaaaaaaaaab00 *)
split x21_h x21_l x21 62;
shl x21_ls x21_l (64-62)@uint64;
add x24 x21_ls x21_h;
(* ror	x9, x22, #3                                 #! PC = 0xaaaaaaaaab04 *)
split x22_h x22_l x22 3;
shl x22_ls x22_l (64-3)@uint64;
add x9 x22_ls x22_h;
(* ror	x13, x19, #56                               #! PC = 0xaaaaaaaaab08 *)
split x19_h x19_l x19 56;
shl x19_ls x19_l (64-56)@uint64;
add x13 x19_ls x19_h;
(* ror	x17, x11, #54                               #! PC = 0xaaaaaaaaab0c *)
split x11_h x11_l x11 54;
shl x11_ls x11_l (64-54)@uint64;
add x17 x11_ls x11_h;
(* ror	x21, x8, #9                                 #! PC = 0xaaaaaaaaab10 *)
split x8_h x8_l x8 9;
shl x8_ls x8_l (64-9)@uint64;
add x21 x8_ls x8_h;
(* ror	x22, x14, #25                               #! PC = 0xaaaaaaaaab14 *)
split x14_h x14_l x14 25;
shl x14_ls x14_l (64-25)@uint64;
add x22 x14_ls x14_h;
(* ror	x19, x23, #8                                #! PC = 0xaaaaaaaaab18 *)
split x23_h x23_l x23 8;
shl x23_ls x23_l (64-8)@uint64;
add x19 x23_ls x23_h;
(* ror	x11, x7, #58                                #! PC = 0xaaaaaaaaab1c *)
split x7_h x7_l x7 58;
shl x7_ls x7_l (64-58)@uint64;
add x11 x7_ls x7_h;
(* ror	x8, x16, #19                                #! PC = 0xaaaaaaaaab20 *)
split x16_h x16_l x16 19;
shl x16_ls x16_l (64-19)@uint64;
add x8 x16_ls x16_h;
(* ror	x14, x20, #46                               #! PC = 0xaaaaaaaaab24 *)
split x20_h x20_l x20 46;
shl x20_ls x20_l (64-46)@uint64;
add x14 x20_ls x20_h;
(* ror	x23, x15, #23                               #! PC = 0xaaaaaaaaab28 *)
split x15_h x15_l x15 23;
shl x15_ls x15_l (64-23)@uint64;
add x23 x15_ls x15_h;
(* ror	x7, x10, #61                                #! PC = 0xaaaaaaaaab2c *)
split x10_h x10_l x10 61;
shl x10_ls x10_l (64-61)@uint64;
add x7 x10_ls x10_h;
(* ror	x16, x5, #28                                #! PC = 0xaaaaaaaaab30 *)
split x5_h x5_l x5 28;
shl x5_ls x5_l (64-28)@uint64;
add x16 x5_ls x5_h;
(* ror	x5, x26, #36                                #! PC = 0xaaaaaaaaab34 *)
split x26_h x26_l x26 36;
shl x26_ls x26_l (64-36)@uint64;
add x5 x26_ls x26_h;
(* ror	x10, x30, #63                               #! PC = 0xaaaaaaaaab38 *)
split x30_h x30_l x30 63;
shl x30_ls x30_l (64-63)@uint64;
add x10 x30_ls x30_h;
(* ror	x15, x28, #37                               #! PC = 0xaaaaaaaaab3c *)
split x28_h x28_l x28 37;
shl x28_ls x28_l (64-37)@uint64;
add x15 x28_ls x28_h;
(* ror	x20, x27, #2                                #! PC = 0xaaaaaaaaab40 *)
split x27_h x27_l x27 2;
shl x27_ls x27_l (64-2)@uint64;
add x20 x27_ls x27_h;
(* bic	x26, x2, x1                                 #! PC = 0xaaaaaaaaab44 *)
not x1_not@uint64 x1;
and x26@uint64 x2 x1_not;
(* bic	x27, x3, x2                                 #! PC = 0xaaaaaaaaab48 *)
not x2_not@uint64 x2;
and x27@uint64 x3 x2_not;
(* bic	x28, x0, x4                                 #! PC = 0xaaaaaaaaab4c *)
not x4_not@uint64 x4;
and x28@uint64 x0 x4_not;
(* bic	x30, x1, x0                                 #! PC = 0xaaaaaaaaab50 *)
not x0_not@uint64 x0;
and x30@uint64 x1 x0_not;
(* eor	x0, x0, x26                                 #! PC = 0xaaaaaaaaab54 *)
xor x0@uint64 x0 x26;
(* bic	x26, x4, x3                                 #! PC = 0xaaaaaaaaab58 *)
not x3_not@uint64 x3;
and x26@uint64 x4 x3_not;
(* eor	x1, x1, x27                                 #! PC = 0xaaaaaaaaab5c *)
xor x1@uint64 x1 x27;
(* ldr	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; Value = 0x0000aaaaaaaaa980; PC = 0xaaaaaaaaab60 *)
mov x27 L0xffffffffe8d0;
(* eor	x3, x3, x28                                 #! PC = 0xaaaaaaaaab64 *)
xor x3@uint64 x3 x28;
(* eor	x4, x4, x30                                 #! PC = 0xaaaaaaaaab68 *)
xor x4@uint64 x4 x30;
(* eor	x2, x2, x26                                 #! PC = 0xaaaaaaaaab6c *)
xor x2@uint64 x2 x26;
(* ldr	x30, [x27], #8                              #! EA = L0xaaaaaaaaa980; Value = 0x000000000000008a; PC = 0xaaaaaaaaab70 *)
mov x30 L0xaaaaaaaaa980;
(* bic	x26, x7, x6                                 #! PC = 0xaaaaaaaaab74 *)
not x6_not@uint64 x6;
and x26@uint64 x7 x6_not;
(* str	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; PC = 0xaaaaaaaaab7c *)
mov L0xffffffffe8d0 x27;
(* bic	x27, x8, x7                                 #! PC = 0xaaaaaaaaab80 *)
not x7_not@uint64 x7;
and x27@uint64 x8 x7_not;
(* bic	x28, x5, x9                                 #! PC = 0xaaaaaaaaab84 *)
not x9_not@uint64 x9;
and x28@uint64 x5 x9_not;
(* eor	x0, x0, x30                                 #! PC = 0xaaaaaaaaab88 *)
xor x0@uint64 x0 x30;
(* bic	x30, x6, x5                                 #! PC = 0xaaaaaaaaab8c *)
not x5_not@uint64 x5;
and x30@uint64 x6 x5_not;
(* eor	x5, x5, x26                                 #! PC = 0xaaaaaaaaab90 *)
xor x5@uint64 x5 x26;
(* bic	x26, x9, x8                                 #! PC = 0xaaaaaaaaab94 *)
not x8_not@uint64 x8;
and x26@uint64 x9 x8_not;
(* eor	x6, x6, x27                                 #! PC = 0xaaaaaaaaab98 *)
xor x6@uint64 x6 x27;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaab9c *)
xor x8@uint64 x8 x28;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaba0 *)
xor x9@uint64 x9 x30;
(* eor	x7, x7, x26                                 #! PC = 0xaaaaaaaaaba4 *)
xor x7@uint64 x7 x26;
(* bic	x26, x12, x11                               #! PC = 0xaaaaaaaaaba8 *)
not x11_not@uint64 x11;
and x26@uint64 x12 x11_not;
(* bic	x27, x13, x12                               #! PC = 0xaaaaaaaaabac *)
not x12_not@uint64 x12;
and x27@uint64 x13 x12_not;
(* bic	x28, x10, x14                               #! PC = 0xaaaaaaaaabb0 *)
not x14_not@uint64 x14;
and x28@uint64 x10 x14_not;
(* bic	x30, x11, x10                               #! PC = 0xaaaaaaaaabb4 *)
not x10_not@uint64 x10;
and x30@uint64 x11 x10_not;
(* eor	x10, x10, x26                               #! PC = 0xaaaaaaaaabb8 *)
xor x10@uint64 x10 x26;
(* bic	x26, x14, x13                               #! PC = 0xaaaaaaaaabbc *)
not x13_not@uint64 x13;
and x26@uint64 x14 x13_not;
(* eor	x11, x11, x27                               #! PC = 0xaaaaaaaaabc0 *)
xor x11@uint64 x11 x27;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaabc4 *)
xor x13@uint64 x13 x28;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaabc8 *)
xor x14@uint64 x14 x30;
(* eor	x12, x12, x26                               #! PC = 0xaaaaaaaaabcc *)
xor x12@uint64 x12 x26;
(* bic	x26, x17, x16                               #! PC = 0xaaaaaaaaabd0 *)
not x16_not@uint64 x16;
and x26@uint64 x17 x16_not;
(* bic	x27, x25, x17                               #! PC = 0xaaaaaaaaabd4 *)
not x17_not@uint64 x17;
and x27@uint64 x25 x17_not;
(* bic	x28, x15, x19                               #! PC = 0xaaaaaaaaabd8 *)
not x19_not@uint64 x19;
and x28@uint64 x15 x19_not;
(* bic	x30, x16, x15                               #! PC = 0xaaaaaaaaabdc *)
not x15_not@uint64 x15;
and x30@uint64 x16 x15_not;
(* eor	x15, x15, x26                               #! PC = 0xaaaaaaaaabe0 *)
xor x15@uint64 x15 x26;
(* bic	x26, x19, x25                               #! PC = 0xaaaaaaaaabe4 *)
not x25_not@uint64 x25;
and x26@uint64 x19 x25_not;
(* eor	x16, x16, x27                               #! PC = 0xaaaaaaaaabe8 *)
xor x16@uint64 x16 x27;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaabec *)
xor x25@uint64 x25 x28;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaabf0 *)
xor x19@uint64 x19 x30;
(* eor	x17, x17, x26                               #! PC = 0xaaaaaaaaabf4 *)
xor x17@uint64 x17 x26;
(* bic	x26, x22, x21                               #! PC = 0xaaaaaaaaabf8 *)
not x21_not@uint64 x21;
and x26@uint64 x22 x21_not;
(* bic	x27, x23, x22                               #! PC = 0xaaaaaaaaabfc *)
not x22_not@uint64 x22;
and x27@uint64 x23 x22_not;
(* bic	x28, x20, x24                               #! PC = 0xaaaaaaaaac00 *)
not x24_not@uint64 x24;
and x28@uint64 x20 x24_not;
(* bic	x30, x21, x20                               #! PC = 0xaaaaaaaaac04 *)
not x20_not@uint64 x20;
and x30@uint64 x21 x20_not;
(* eor	x20, x20, x26                               #! PC = 0xaaaaaaaaac08 *)
xor x20@uint64 x20 x26;
(* bic	x26, x24, x23                               #! PC = 0xaaaaaaaaac0c *)
not x23_not@uint64 x23;
and x26@uint64 x24 x23_not;
(* eor	x21, x21, x27                               #! PC = 0xaaaaaaaaac10 *)
xor x21@uint64 x21 x27;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaac14 *)
xor x23@uint64 x23 x28;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaac18 *)
xor x24@uint64 x24 x30;
(* eor	x22, x22, x26                               #! PC = 0xaaaaaaaaac1c *)
xor x22@uint64 x22 x26;
(* #b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! PC = 0xaaaaaaaaac20 *)
#b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! 0xaaaaaaaaac20 = 0xaaaaaaaaac20;
(* eor	x26, x0, x5                                 #! PC = 0xaaaaaaaaaa10 *)
xor x26@uint64 x0 x5;
(* stp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; PC = 0xaaaaaaaaaa14 *)
mov L0xffffffffe8c0 x4;
mov L0xffffffffe8c8 x9;
(* eor	x27, x1, x6                                 #! PC = 0xaaaaaaaaaa18 *)
xor x27@uint64 x1 x6;
(* eor	x28, x2, x7                                 #! PC = 0xaaaaaaaaaa1c *)
xor x28@uint64 x2 x7;
(* eor	x30, x3, x8                                 #! PC = 0xaaaaaaaaaa20 *)
xor x30@uint64 x3 x8;
(* eor	x4, x4, x9                                  #! PC = 0xaaaaaaaaaa24 *)
xor x4@uint64 x4 x9;
(* eor	x26, x26, x10                               #! PC = 0xaaaaaaaaaa28 *)
xor x26@uint64 x26 x10;
(* eor	x27, x27, x11                               #! PC = 0xaaaaaaaaaa2c *)
xor x27@uint64 x27 x11;
(* eor	x28, x28, x12                               #! PC = 0xaaaaaaaaaa30 *)
xor x28@uint64 x28 x12;
(* eor	x30, x30, x13                               #! PC = 0xaaaaaaaaaa34 *)
xor x30@uint64 x30 x13;
(* eor	x4, x4, x14                                 #! PC = 0xaaaaaaaaaa38 *)
xor x4@uint64 x4 x14;
(* eor	x26, x26, x15                               #! PC = 0xaaaaaaaaaa3c *)
xor x26@uint64 x26 x15;
(* eor	x27, x27, x16                               #! PC = 0xaaaaaaaaaa40 *)
xor x27@uint64 x27 x16;
(* eor	x28, x28, x17                               #! PC = 0xaaaaaaaaaa44 *)
xor x28@uint64 x28 x17;
(* eor	x30, x30, x25                               #! PC = 0xaaaaaaaaaa48 *)
xor x30@uint64 x30 x25;
(* eor	x4, x4, x19                                 #! PC = 0xaaaaaaaaaa4c *)
xor x4@uint64 x4 x19;
(* eor	x26, x26, x20                               #! PC = 0xaaaaaaaaaa50 *)
xor x26@uint64 x26 x20;
(* eor	x28, x28, x22                               #! PC = 0xaaaaaaaaaa54 *)
xor x28@uint64 x28 x22;
(* eor	x27, x27, x21                               #! PC = 0xaaaaaaaaaa58 *)
xor x27@uint64 x27 x21;
(* eor	x30, x30, x23                               #! PC = 0xaaaaaaaaaa5c *)
xor x30@uint64 x30 x23;
(* eor	x4, x4, x24                                 #! PC = 0xaaaaaaaaaa60 *)
xor x4@uint64 x4 x24;
(* eor	x9, x26, x28, ror #63                       #! PC = 0xaaaaaaaaaa64 *)
split x28_h x28_l x28 63;
shl x28_ls x28_l 1@uint64;
add x28_ror x28_ls x28_h;
xor x9@uint64 x26 x28_ror;
(* eor	x1, x1, x9                                  #! PC = 0xaaaaaaaaaa68 *)
xor x1@uint64 x1 x9;
(* eor	x6, x6, x9                                  #! PC = 0xaaaaaaaaaa6c *)
xor x6@uint64 x6 x9;
(* eor	x11, x11, x9                                #! PC = 0xaaaaaaaaaa70 *)
xor x11@uint64 x11 x9;
(* eor	x16, x16, x9                                #! PC = 0xaaaaaaaaaa74 *)
xor x16@uint64 x16 x9;
(* eor	x21, x21, x9                                #! PC = 0xaaaaaaaaaa78 *)
xor x21@uint64 x21 x9;
(* eor	x9, x27, x30, ror #63                       #! PC = 0xaaaaaaaaaa7c *)
split x30_h x30_l x30 63;
shl x30_ls x30_l 1@uint64;
add x30_ror x30_ls x30_h;
xor x9@uint64 x27 x30_ror;
(* eor	x28, x28, x4, ror #63                       #! PC = 0xaaaaaaaaaa80 *)
split x4_h x4_l x4 63;
shl x4_ls x4_l 1@uint64;
add x4_ror x4_ls x4_h;
xor x28@uint64 x28 x4_ror;
(* eor	x30, x30, x26, ror #63                      #! PC = 0xaaaaaaaaaa84 *)
split x26_h x26_l x26 63;
shl x26_ls x26_l 1@uint64;
add x26_ror x26_ls x26_h;
xor x30@uint64 x30 x26_ror;
(* eor	x4, x4, x27, ror #63                        #! PC = 0xaaaaaaaaaa88 *)
split x27_h x27_l x27 63;
shl x27_ls x27_l 1@uint64;
add x27_ror x27_ls x27_h;
xor x4@uint64 x4 x27_ror;
(* eor	x27, x2, x9                                 #! PC = 0xaaaaaaaaaa8c *)
xor x27@uint64 x2 x9;
(* eor	x7, x7, x9                                  #! PC = 0xaaaaaaaaaa90 *)
xor x7@uint64 x7 x9;
(* eor	x12, x12, x9                                #! PC = 0xaaaaaaaaaa94 *)
xor x12@uint64 x12 x9;
(* eor	x17, x17, x9                                #! PC = 0xaaaaaaaaaa98 *)
xor x17@uint64 x17 x9;
(* eor	x22, x22, x9                                #! PC = 0xaaaaaaaaaa9c *)
xor x22@uint64 x22 x9;
(* eor	x0, x0, x4                                  #! PC = 0xaaaaaaaaaaa0 *)
xor x0@uint64 x0 x4;
(* eor	x5, x5, x4                                  #! PC = 0xaaaaaaaaaaa4 *)
xor x5@uint64 x5 x4;
(* eor	x10, x10, x4                                #! PC = 0xaaaaaaaaaaa8 *)
xor x10@uint64 x10 x4;
(* eor	x15, x15, x4                                #! PC = 0xaaaaaaaaaaac *)
xor x15@uint64 x15 x4;
(* eor	x20, x20, x4                                #! PC = 0xaaaaaaaaaab0 *)
xor x20@uint64 x20 x4;
(* ldp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; Value = 0x7b21a8009b595fda; PC = 0xaaaaaaaaaab4 *)
mov x4 L0xffffffffe8c0;
mov x9 L0xffffffffe8c8;
(* eor	x26, x3, x28                                #! PC = 0xaaaaaaaaaab8 *)
xor x26@uint64 x3 x28;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaaabc *)
xor x8@uint64 x8 x28;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaaac0 *)
xor x13@uint64 x13 x28;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaaac4 *)
xor x25@uint64 x25 x28;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaaac8 *)
xor x23@uint64 x23 x28;
(* eor	x28, x4, x30                                #! PC = 0xaaaaaaaaaacc *)
xor x28@uint64 x4 x30;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaad0 *)
xor x9@uint64 x9 x30;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaaad4 *)
xor x14@uint64 x14 x30;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaaad8 *)
xor x19@uint64 x19 x30;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaaadc *)
xor x24@uint64 x24 x30;
(* mov	x30, x1                                     #! PC = 0xaaaaaaaaaae0 *)
mov x30 x1;
(* ror	x1, x6, #20                                 #! PC = 0xaaaaaaaaaae4 *)
split x6_h x6_l x6 20;
shl x6_ls x6_l (64-20)@uint64;
add x1 x6_ls x6_h;
(* ror	x2, x12, #21                                #! PC = 0xaaaaaaaaaae8 *)
split x12_h x12_l x12 21;
shl x12_ls x12_l (64-21)@uint64;
add x2 x12_ls x12_h;
(* ror	x3, x25, #43                                #! PC = 0xaaaaaaaaaaec *)
split x25_h x25_l x25 43;
shl x25_ls x25_l (64-43)@uint64;
add x3 x25_ls x25_h;
(* ror	x4, x24, #50                                #! PC = 0xaaaaaaaaaaf0 *)
split x24_h x24_l x24 50;
shl x24_ls x24_l (64-50)@uint64;
add x4 x24_ls x24_h;
(* ror	x6, x9, #44                                 #! PC = 0xaaaaaaaaaaf4 *)
split x9_h x9_l x9 44;
shl x9_ls x9_l (64-44)@uint64;
add x6 x9_ls x9_h;
(* ror	x12, x13, #39                               #! PC = 0xaaaaaaaaaaf8 *)
split x13_h x13_l x13 39;
shl x13_ls x13_l (64-39)@uint64;
add x12 x13_ls x13_h;
(* ror	x25, x17, #49                               #! PC = 0xaaaaaaaaaafc *)
split x17_h x17_l x17 49;
shl x17_ls x17_l (64-49)@uint64;
add x25 x17_ls x17_h;
(* ror	x24, x21, #62                               #! PC = 0xaaaaaaaaab00 *)
split x21_h x21_l x21 62;
shl x21_ls x21_l (64-62)@uint64;
add x24 x21_ls x21_h;
(* ror	x9, x22, #3                                 #! PC = 0xaaaaaaaaab04 *)
split x22_h x22_l x22 3;
shl x22_ls x22_l (64-3)@uint64;
add x9 x22_ls x22_h;
(* ror	x13, x19, #56                               #! PC = 0xaaaaaaaaab08 *)
split x19_h x19_l x19 56;
shl x19_ls x19_l (64-56)@uint64;
add x13 x19_ls x19_h;
(* ror	x17, x11, #54                               #! PC = 0xaaaaaaaaab0c *)
split x11_h x11_l x11 54;
shl x11_ls x11_l (64-54)@uint64;
add x17 x11_ls x11_h;
(* ror	x21, x8, #9                                 #! PC = 0xaaaaaaaaab10 *)
split x8_h x8_l x8 9;
shl x8_ls x8_l (64-9)@uint64;
add x21 x8_ls x8_h;
(* ror	x22, x14, #25                               #! PC = 0xaaaaaaaaab14 *)
split x14_h x14_l x14 25;
shl x14_ls x14_l (64-25)@uint64;
add x22 x14_ls x14_h;
(* ror	x19, x23, #8                                #! PC = 0xaaaaaaaaab18 *)
split x23_h x23_l x23 8;
shl x23_ls x23_l (64-8)@uint64;
add x19 x23_ls x23_h;
(* ror	x11, x7, #58                                #! PC = 0xaaaaaaaaab1c *)
split x7_h x7_l x7 58;
shl x7_ls x7_l (64-58)@uint64;
add x11 x7_ls x7_h;
(* ror	x8, x16, #19                                #! PC = 0xaaaaaaaaab20 *)
split x16_h x16_l x16 19;
shl x16_ls x16_l (64-19)@uint64;
add x8 x16_ls x16_h;
(* ror	x14, x20, #46                               #! PC = 0xaaaaaaaaab24 *)
split x20_h x20_l x20 46;
shl x20_ls x20_l (64-46)@uint64;
add x14 x20_ls x20_h;
(* ror	x23, x15, #23                               #! PC = 0xaaaaaaaaab28 *)
split x15_h x15_l x15 23;
shl x15_ls x15_l (64-23)@uint64;
add x23 x15_ls x15_h;
(* ror	x7, x10, #61                                #! PC = 0xaaaaaaaaab2c *)
split x10_h x10_l x10 61;
shl x10_ls x10_l (64-61)@uint64;
add x7 x10_ls x10_h;
(* ror	x16, x5, #28                                #! PC = 0xaaaaaaaaab30 *)
split x5_h x5_l x5 28;
shl x5_ls x5_l (64-28)@uint64;
add x16 x5_ls x5_h;
(* ror	x5, x26, #36                                #! PC = 0xaaaaaaaaab34 *)
split x26_h x26_l x26 36;
shl x26_ls x26_l (64-36)@uint64;
add x5 x26_ls x26_h;
(* ror	x10, x30, #63                               #! PC = 0xaaaaaaaaab38 *)
split x30_h x30_l x30 63;
shl x30_ls x30_l (64-63)@uint64;
add x10 x30_ls x30_h;
(* ror	x15, x28, #37                               #! PC = 0xaaaaaaaaab3c *)
split x28_h x28_l x28 37;
shl x28_ls x28_l (64-37)@uint64;
add x15 x28_ls x28_h;
(* ror	x20, x27, #2                                #! PC = 0xaaaaaaaaab40 *)
split x27_h x27_l x27 2;
shl x27_ls x27_l (64-2)@uint64;
add x20 x27_ls x27_h;
(* bic	x26, x2, x1                                 #! PC = 0xaaaaaaaaab44 *)
not x1_not@uint64 x1;
and x26@uint64 x2 x1_not;
(* bic	x27, x3, x2                                 #! PC = 0xaaaaaaaaab48 *)
not x2_not@uint64 x2;
and x27@uint64 x3 x2_not;
(* bic	x28, x0, x4                                 #! PC = 0xaaaaaaaaab4c *)
not x4_not@uint64 x4;
and x28@uint64 x0 x4_not;
(* bic	x30, x1, x0                                 #! PC = 0xaaaaaaaaab50 *)
not x0_not@uint64 x0;
and x30@uint64 x1 x0_not;
(* eor	x0, x0, x26                                 #! PC = 0xaaaaaaaaab54 *)
xor x0@uint64 x0 x26;
(* bic	x26, x4, x3                                 #! PC = 0xaaaaaaaaab58 *)
not x3_not@uint64 x3;
and x26@uint64 x4 x3_not;
(* eor	x1, x1, x27                                 #! PC = 0xaaaaaaaaab5c *)
xor x1@uint64 x1 x27;
(* ldr	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; Value = 0x0000aaaaaaaaa988; PC = 0xaaaaaaaaab60 *)
mov x27 L0xffffffffe8d0;
(* eor	x3, x3, x28                                 #! PC = 0xaaaaaaaaab64 *)
xor x3@uint64 x3 x28;
(* eor	x4, x4, x30                                 #! PC = 0xaaaaaaaaab68 *)
xor x4@uint64 x4 x30;
(* eor	x2, x2, x26                                 #! PC = 0xaaaaaaaaab6c *)
xor x2@uint64 x2 x26;
(* ldr	x30, [x27], #8                              #! EA = L0xaaaaaaaaa988; Value = 0x0000000000000088; PC = 0xaaaaaaaaab70 *)
mov x30 L0xaaaaaaaaa988;
(* bic	x26, x7, x6                                 #! PC = 0xaaaaaaaaab74 *)
not x6_not@uint64 x6;
and x26@uint64 x7 x6_not;
(* str	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; PC = 0xaaaaaaaaab7c *)
mov L0xffffffffe8d0 x27;
(* bic	x27, x8, x7                                 #! PC = 0xaaaaaaaaab80 *)
not x7_not@uint64 x7;
and x27@uint64 x8 x7_not;
(* bic	x28, x5, x9                                 #! PC = 0xaaaaaaaaab84 *)
not x9_not@uint64 x9;
and x28@uint64 x5 x9_not;
(* eor	x0, x0, x30                                 #! PC = 0xaaaaaaaaab88 *)
xor x0@uint64 x0 x30;
(* bic	x30, x6, x5                                 #! PC = 0xaaaaaaaaab8c *)
not x5_not@uint64 x5;
and x30@uint64 x6 x5_not;
(* eor	x5, x5, x26                                 #! PC = 0xaaaaaaaaab90 *)
xor x5@uint64 x5 x26;
(* bic	x26, x9, x8                                 #! PC = 0xaaaaaaaaab94 *)
not x8_not@uint64 x8;
and x26@uint64 x9 x8_not;
(* eor	x6, x6, x27                                 #! PC = 0xaaaaaaaaab98 *)
xor x6@uint64 x6 x27;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaab9c *)
xor x8@uint64 x8 x28;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaba0 *)
xor x9@uint64 x9 x30;
(* eor	x7, x7, x26                                 #! PC = 0xaaaaaaaaaba4 *)
xor x7@uint64 x7 x26;
(* bic	x26, x12, x11                               #! PC = 0xaaaaaaaaaba8 *)
not x11_not@uint64 x11;
and x26@uint64 x12 x11_not;
(* bic	x27, x13, x12                               #! PC = 0xaaaaaaaaabac *)
not x12_not@uint64 x12;
and x27@uint64 x13 x12_not;
(* bic	x28, x10, x14                               #! PC = 0xaaaaaaaaabb0 *)
not x14_not@uint64 x14;
and x28@uint64 x10 x14_not;
(* bic	x30, x11, x10                               #! PC = 0xaaaaaaaaabb4 *)
not x10_not@uint64 x10;
and x30@uint64 x11 x10_not;
(* eor	x10, x10, x26                               #! PC = 0xaaaaaaaaabb8 *)
xor x10@uint64 x10 x26;
(* bic	x26, x14, x13                               #! PC = 0xaaaaaaaaabbc *)
not x13_not@uint64 x13;
and x26@uint64 x14 x13_not;
(* eor	x11, x11, x27                               #! PC = 0xaaaaaaaaabc0 *)
xor x11@uint64 x11 x27;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaabc4 *)
xor x13@uint64 x13 x28;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaabc8 *)
xor x14@uint64 x14 x30;
(* eor	x12, x12, x26                               #! PC = 0xaaaaaaaaabcc *)
xor x12@uint64 x12 x26;
(* bic	x26, x17, x16                               #! PC = 0xaaaaaaaaabd0 *)
not x16_not@uint64 x16;
and x26@uint64 x17 x16_not;
(* bic	x27, x25, x17                               #! PC = 0xaaaaaaaaabd4 *)
not x17_not@uint64 x17;
and x27@uint64 x25 x17_not;
(* bic	x28, x15, x19                               #! PC = 0xaaaaaaaaabd8 *)
not x19_not@uint64 x19;
and x28@uint64 x15 x19_not;
(* bic	x30, x16, x15                               #! PC = 0xaaaaaaaaabdc *)
not x15_not@uint64 x15;
and x30@uint64 x16 x15_not;
(* eor	x15, x15, x26                               #! PC = 0xaaaaaaaaabe0 *)
xor x15@uint64 x15 x26;
(* bic	x26, x19, x25                               #! PC = 0xaaaaaaaaabe4 *)
not x25_not@uint64 x25;
and x26@uint64 x19 x25_not;
(* eor	x16, x16, x27                               #! PC = 0xaaaaaaaaabe8 *)
xor x16@uint64 x16 x27;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaabec *)
xor x25@uint64 x25 x28;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaabf0 *)
xor x19@uint64 x19 x30;
(* eor	x17, x17, x26                               #! PC = 0xaaaaaaaaabf4 *)
xor x17@uint64 x17 x26;
(* bic	x26, x22, x21                               #! PC = 0xaaaaaaaaabf8 *)
not x21_not@uint64 x21;
and x26@uint64 x22 x21_not;
(* bic	x27, x23, x22                               #! PC = 0xaaaaaaaaabfc *)
not x22_not@uint64 x22;
and x27@uint64 x23 x22_not;
(* bic	x28, x20, x24                               #! PC = 0xaaaaaaaaac00 *)
not x24_not@uint64 x24;
and x28@uint64 x20 x24_not;
(* bic	x30, x21, x20                               #! PC = 0xaaaaaaaaac04 *)
not x20_not@uint64 x20;
and x30@uint64 x21 x20_not;
(* eor	x20, x20, x26                               #! PC = 0xaaaaaaaaac08 *)
xor x20@uint64 x20 x26;
(* bic	x26, x24, x23                               #! PC = 0xaaaaaaaaac0c *)
not x23_not@uint64 x23;
and x26@uint64 x24 x23_not;
(* eor	x21, x21, x27                               #! PC = 0xaaaaaaaaac10 *)
xor x21@uint64 x21 x27;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaac14 *)
xor x23@uint64 x23 x28;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaac18 *)
xor x24@uint64 x24 x30;
(* eor	x22, x22, x26                               #! PC = 0xaaaaaaaaac1c *)
xor x22@uint64 x22 x26;
(* #b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! PC = 0xaaaaaaaaac20 *)
#b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! 0xaaaaaaaaac20 = 0xaaaaaaaaac20;
(* eor	x26, x0, x5                                 #! PC = 0xaaaaaaaaaa10 *)
xor x26@uint64 x0 x5;
(* stp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; PC = 0xaaaaaaaaaa14 *)
mov L0xffffffffe8c0 x4;
mov L0xffffffffe8c8 x9;
(* eor	x27, x1, x6                                 #! PC = 0xaaaaaaaaaa18 *)
xor x27@uint64 x1 x6;
(* eor	x28, x2, x7                                 #! PC = 0xaaaaaaaaaa1c *)
xor x28@uint64 x2 x7;
(* eor	x30, x3, x8                                 #! PC = 0xaaaaaaaaaa20 *)
xor x30@uint64 x3 x8;
(* eor	x4, x4, x9                                  #! PC = 0xaaaaaaaaaa24 *)
xor x4@uint64 x4 x9;
(* eor	x26, x26, x10                               #! PC = 0xaaaaaaaaaa28 *)
xor x26@uint64 x26 x10;
(* eor	x27, x27, x11                               #! PC = 0xaaaaaaaaaa2c *)
xor x27@uint64 x27 x11;
(* eor	x28, x28, x12                               #! PC = 0xaaaaaaaaaa30 *)
xor x28@uint64 x28 x12;
(* eor	x30, x30, x13                               #! PC = 0xaaaaaaaaaa34 *)
xor x30@uint64 x30 x13;
(* eor	x4, x4, x14                                 #! PC = 0xaaaaaaaaaa38 *)
xor x4@uint64 x4 x14;
(* eor	x26, x26, x15                               #! PC = 0xaaaaaaaaaa3c *)
xor x26@uint64 x26 x15;
(* eor	x27, x27, x16                               #! PC = 0xaaaaaaaaaa40 *)
xor x27@uint64 x27 x16;
(* eor	x28, x28, x17                               #! PC = 0xaaaaaaaaaa44 *)
xor x28@uint64 x28 x17;
(* eor	x30, x30, x25                               #! PC = 0xaaaaaaaaaa48 *)
xor x30@uint64 x30 x25;
(* eor	x4, x4, x19                                 #! PC = 0xaaaaaaaaaa4c *)
xor x4@uint64 x4 x19;
(* eor	x26, x26, x20                               #! PC = 0xaaaaaaaaaa50 *)
xor x26@uint64 x26 x20;
(* eor	x28, x28, x22                               #! PC = 0xaaaaaaaaaa54 *)
xor x28@uint64 x28 x22;
(* eor	x27, x27, x21                               #! PC = 0xaaaaaaaaaa58 *)
xor x27@uint64 x27 x21;
(* eor	x30, x30, x23                               #! PC = 0xaaaaaaaaaa5c *)
xor x30@uint64 x30 x23;
(* eor	x4, x4, x24                                 #! PC = 0xaaaaaaaaaa60 *)
xor x4@uint64 x4 x24;
(* eor	x9, x26, x28, ror #63                       #! PC = 0xaaaaaaaaaa64 *)
split x28_h x28_l x28 63;
shl x28_ls x28_l 1@uint64;
add x28_ror x28_ls x28_h;
xor x9@uint64 x26 x28_ror;
(* eor	x1, x1, x9                                  #! PC = 0xaaaaaaaaaa68 *)
xor x1@uint64 x1 x9;
(* eor	x6, x6, x9                                  #! PC = 0xaaaaaaaaaa6c *)
xor x6@uint64 x6 x9;
(* eor	x11, x11, x9                                #! PC = 0xaaaaaaaaaa70 *)
xor x11@uint64 x11 x9;
(* eor	x16, x16, x9                                #! PC = 0xaaaaaaaaaa74 *)
xor x16@uint64 x16 x9;
(* eor	x21, x21, x9                                #! PC = 0xaaaaaaaaaa78 *)
xor x21@uint64 x21 x9;
(* eor	x9, x27, x30, ror #63                       #! PC = 0xaaaaaaaaaa7c *)
split x30_h x30_l x30 63;
shl x30_ls x30_l 1@uint64;
add x30_ror x30_ls x30_h;
xor x9@uint64 x27 x30_ror;
(* eor	x28, x28, x4, ror #63                       #! PC = 0xaaaaaaaaaa80 *)
split x4_h x4_l x4 63;
shl x4_ls x4_l 1@uint64;
add x4_ror x4_ls x4_h;
xor x28@uint64 x28 x4_ror;
(* eor	x30, x30, x26, ror #63                      #! PC = 0xaaaaaaaaaa84 *)
split x26_h x26_l x26 63;
shl x26_ls x26_l 1@uint64;
add x26_ror x26_ls x26_h;
xor x30@uint64 x30 x26_ror;
(* eor	x4, x4, x27, ror #63                        #! PC = 0xaaaaaaaaaa88 *)
split x27_h x27_l x27 63;
shl x27_ls x27_l 1@uint64;
add x27_ror x27_ls x27_h;
xor x4@uint64 x4 x27_ror;
(* eor	x27, x2, x9                                 #! PC = 0xaaaaaaaaaa8c *)
xor x27@uint64 x2 x9;
(* eor	x7, x7, x9                                  #! PC = 0xaaaaaaaaaa90 *)
xor x7@uint64 x7 x9;
(* eor	x12, x12, x9                                #! PC = 0xaaaaaaaaaa94 *)
xor x12@uint64 x12 x9;
(* eor	x17, x17, x9                                #! PC = 0xaaaaaaaaaa98 *)
xor x17@uint64 x17 x9;
(* eor	x22, x22, x9                                #! PC = 0xaaaaaaaaaa9c *)
xor x22@uint64 x22 x9;
(* eor	x0, x0, x4                                  #! PC = 0xaaaaaaaaaaa0 *)
xor x0@uint64 x0 x4;
(* eor	x5, x5, x4                                  #! PC = 0xaaaaaaaaaaa4 *)
xor x5@uint64 x5 x4;
(* eor	x10, x10, x4                                #! PC = 0xaaaaaaaaaaa8 *)
xor x10@uint64 x10 x4;
(* eor	x15, x15, x4                                #! PC = 0xaaaaaaaaaaac *)
xor x15@uint64 x15 x4;
(* eor	x20, x20, x4                                #! PC = 0xaaaaaaaaaab0 *)
xor x20@uint64 x20 x4;
(* ldp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; Value = 0x8ad9d5d75ba4f447; PC = 0xaaaaaaaaaab4 *)
mov x4 L0xffffffffe8c0;
mov x9 L0xffffffffe8c8;
(* eor	x26, x3, x28                                #! PC = 0xaaaaaaaaaab8 *)
xor x26@uint64 x3 x28;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaaabc *)
xor x8@uint64 x8 x28;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaaac0 *)
xor x13@uint64 x13 x28;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaaac4 *)
xor x25@uint64 x25 x28;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaaac8 *)
xor x23@uint64 x23 x28;
(* eor	x28, x4, x30                                #! PC = 0xaaaaaaaaaacc *)
xor x28@uint64 x4 x30;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaad0 *)
xor x9@uint64 x9 x30;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaaad4 *)
xor x14@uint64 x14 x30;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaaad8 *)
xor x19@uint64 x19 x30;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaaadc *)
xor x24@uint64 x24 x30;
(* mov	x30, x1                                     #! PC = 0xaaaaaaaaaae0 *)
mov x30 x1;
(* ror	x1, x6, #20                                 #! PC = 0xaaaaaaaaaae4 *)
split x6_h x6_l x6 20;
shl x6_ls x6_l (64-20)@uint64;
add x1 x6_ls x6_h;
(* ror	x2, x12, #21                                #! PC = 0xaaaaaaaaaae8 *)
split x12_h x12_l x12 21;
shl x12_ls x12_l (64-21)@uint64;
add x2 x12_ls x12_h;
(* ror	x3, x25, #43                                #! PC = 0xaaaaaaaaaaec *)
split x25_h x25_l x25 43;
shl x25_ls x25_l (64-43)@uint64;
add x3 x25_ls x25_h;
(* ror	x4, x24, #50                                #! PC = 0xaaaaaaaaaaf0 *)
split x24_h x24_l x24 50;
shl x24_ls x24_l (64-50)@uint64;
add x4 x24_ls x24_h;
(* ror	x6, x9, #44                                 #! PC = 0xaaaaaaaaaaf4 *)
split x9_h x9_l x9 44;
shl x9_ls x9_l (64-44)@uint64;
add x6 x9_ls x9_h;
(* ror	x12, x13, #39                               #! PC = 0xaaaaaaaaaaf8 *)
split x13_h x13_l x13 39;
shl x13_ls x13_l (64-39)@uint64;
add x12 x13_ls x13_h;
(* ror	x25, x17, #49                               #! PC = 0xaaaaaaaaaafc *)
split x17_h x17_l x17 49;
shl x17_ls x17_l (64-49)@uint64;
add x25 x17_ls x17_h;
(* ror	x24, x21, #62                               #! PC = 0xaaaaaaaaab00 *)
split x21_h x21_l x21 62;
shl x21_ls x21_l (64-62)@uint64;
add x24 x21_ls x21_h;
(* ror	x9, x22, #3                                 #! PC = 0xaaaaaaaaab04 *)
split x22_h x22_l x22 3;
shl x22_ls x22_l (64-3)@uint64;
add x9 x22_ls x22_h;
(* ror	x13, x19, #56                               #! PC = 0xaaaaaaaaab08 *)
split x19_h x19_l x19 56;
shl x19_ls x19_l (64-56)@uint64;
add x13 x19_ls x19_h;
(* ror	x17, x11, #54                               #! PC = 0xaaaaaaaaab0c *)
split x11_h x11_l x11 54;
shl x11_ls x11_l (64-54)@uint64;
add x17 x11_ls x11_h;
(* ror	x21, x8, #9                                 #! PC = 0xaaaaaaaaab10 *)
split x8_h x8_l x8 9;
shl x8_ls x8_l (64-9)@uint64;
add x21 x8_ls x8_h;
(* ror	x22, x14, #25                               #! PC = 0xaaaaaaaaab14 *)
split x14_h x14_l x14 25;
shl x14_ls x14_l (64-25)@uint64;
add x22 x14_ls x14_h;
(* ror	x19, x23, #8                                #! PC = 0xaaaaaaaaab18 *)
split x23_h x23_l x23 8;
shl x23_ls x23_l (64-8)@uint64;
add x19 x23_ls x23_h;
(* ror	x11, x7, #58                                #! PC = 0xaaaaaaaaab1c *)
split x7_h x7_l x7 58;
shl x7_ls x7_l (64-58)@uint64;
add x11 x7_ls x7_h;
(* ror	x8, x16, #19                                #! PC = 0xaaaaaaaaab20 *)
split x16_h x16_l x16 19;
shl x16_ls x16_l (64-19)@uint64;
add x8 x16_ls x16_h;
(* ror	x14, x20, #46                               #! PC = 0xaaaaaaaaab24 *)
split x20_h x20_l x20 46;
shl x20_ls x20_l (64-46)@uint64;
add x14 x20_ls x20_h;
(* ror	x23, x15, #23                               #! PC = 0xaaaaaaaaab28 *)
split x15_h x15_l x15 23;
shl x15_ls x15_l (64-23)@uint64;
add x23 x15_ls x15_h;
(* ror	x7, x10, #61                                #! PC = 0xaaaaaaaaab2c *)
split x10_h x10_l x10 61;
shl x10_ls x10_l (64-61)@uint64;
add x7 x10_ls x10_h;
(* ror	x16, x5, #28                                #! PC = 0xaaaaaaaaab30 *)
split x5_h x5_l x5 28;
shl x5_ls x5_l (64-28)@uint64;
add x16 x5_ls x5_h;
(* ror	x5, x26, #36                                #! PC = 0xaaaaaaaaab34 *)
split x26_h x26_l x26 36;
shl x26_ls x26_l (64-36)@uint64;
add x5 x26_ls x26_h;
(* ror	x10, x30, #63                               #! PC = 0xaaaaaaaaab38 *)
split x30_h x30_l x30 63;
shl x30_ls x30_l (64-63)@uint64;
add x10 x30_ls x30_h;
(* ror	x15, x28, #37                               #! PC = 0xaaaaaaaaab3c *)
split x28_h x28_l x28 37;
shl x28_ls x28_l (64-37)@uint64;
add x15 x28_ls x28_h;
(* ror	x20, x27, #2                                #! PC = 0xaaaaaaaaab40 *)
split x27_h x27_l x27 2;
shl x27_ls x27_l (64-2)@uint64;
add x20 x27_ls x27_h;
(* bic	x26, x2, x1                                 #! PC = 0xaaaaaaaaab44 *)
not x1_not@uint64 x1;
and x26@uint64 x2 x1_not;
(* bic	x27, x3, x2                                 #! PC = 0xaaaaaaaaab48 *)
not x2_not@uint64 x2;
and x27@uint64 x3 x2_not;
(* bic	x28, x0, x4                                 #! PC = 0xaaaaaaaaab4c *)
not x4_not@uint64 x4;
and x28@uint64 x0 x4_not;
(* bic	x30, x1, x0                                 #! PC = 0xaaaaaaaaab50 *)
not x0_not@uint64 x0;
and x30@uint64 x1 x0_not;
(* eor	x0, x0, x26                                 #! PC = 0xaaaaaaaaab54 *)
xor x0@uint64 x0 x26;
(* bic	x26, x4, x3                                 #! PC = 0xaaaaaaaaab58 *)
not x3_not@uint64 x3;
and x26@uint64 x4 x3_not;
(* eor	x1, x1, x27                                 #! PC = 0xaaaaaaaaab5c *)
xor x1@uint64 x1 x27;
(* ldr	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; Value = 0x0000aaaaaaaaa990; PC = 0xaaaaaaaaab60 *)
mov x27 L0xffffffffe8d0;
(* eor	x3, x3, x28                                 #! PC = 0xaaaaaaaaab64 *)
xor x3@uint64 x3 x28;
(* eor	x4, x4, x30                                 #! PC = 0xaaaaaaaaab68 *)
xor x4@uint64 x4 x30;
(* eor	x2, x2, x26                                 #! PC = 0xaaaaaaaaab6c *)
xor x2@uint64 x2 x26;
(* ldr	x30, [x27], #8                              #! EA = L0xaaaaaaaaa990; Value = 0x0000000080008009; PC = 0xaaaaaaaaab70 *)
mov x30 L0xaaaaaaaaa990;
(* bic	x26, x7, x6                                 #! PC = 0xaaaaaaaaab74 *)
not x6_not@uint64 x6;
and x26@uint64 x7 x6_not;
(* str	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; PC = 0xaaaaaaaaab7c *)
mov L0xffffffffe8d0 x27;
(* bic	x27, x8, x7                                 #! PC = 0xaaaaaaaaab80 *)
not x7_not@uint64 x7;
and x27@uint64 x8 x7_not;
(* bic	x28, x5, x9                                 #! PC = 0xaaaaaaaaab84 *)
not x9_not@uint64 x9;
and x28@uint64 x5 x9_not;
(* eor	x0, x0, x30                                 #! PC = 0xaaaaaaaaab88 *)
xor x0@uint64 x0 x30;
(* bic	x30, x6, x5                                 #! PC = 0xaaaaaaaaab8c *)
not x5_not@uint64 x5;
and x30@uint64 x6 x5_not;
(* eor	x5, x5, x26                                 #! PC = 0xaaaaaaaaab90 *)
xor x5@uint64 x5 x26;
(* bic	x26, x9, x8                                 #! PC = 0xaaaaaaaaab94 *)
not x8_not@uint64 x8;
and x26@uint64 x9 x8_not;
(* eor	x6, x6, x27                                 #! PC = 0xaaaaaaaaab98 *)
xor x6@uint64 x6 x27;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaab9c *)
xor x8@uint64 x8 x28;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaba0 *)
xor x9@uint64 x9 x30;
(* eor	x7, x7, x26                                 #! PC = 0xaaaaaaaaaba4 *)
xor x7@uint64 x7 x26;
(* bic	x26, x12, x11                               #! PC = 0xaaaaaaaaaba8 *)
not x11_not@uint64 x11;
and x26@uint64 x12 x11_not;
(* bic	x27, x13, x12                               #! PC = 0xaaaaaaaaabac *)
not x12_not@uint64 x12;
and x27@uint64 x13 x12_not;
(* bic	x28, x10, x14                               #! PC = 0xaaaaaaaaabb0 *)
not x14_not@uint64 x14;
and x28@uint64 x10 x14_not;
(* bic	x30, x11, x10                               #! PC = 0xaaaaaaaaabb4 *)
not x10_not@uint64 x10;
and x30@uint64 x11 x10_not;
(* eor	x10, x10, x26                               #! PC = 0xaaaaaaaaabb8 *)
xor x10@uint64 x10 x26;
(* bic	x26, x14, x13                               #! PC = 0xaaaaaaaaabbc *)
not x13_not@uint64 x13;
and x26@uint64 x14 x13_not;
(* eor	x11, x11, x27                               #! PC = 0xaaaaaaaaabc0 *)
xor x11@uint64 x11 x27;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaabc4 *)
xor x13@uint64 x13 x28;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaabc8 *)
xor x14@uint64 x14 x30;
(* eor	x12, x12, x26                               #! PC = 0xaaaaaaaaabcc *)
xor x12@uint64 x12 x26;
(* bic	x26, x17, x16                               #! PC = 0xaaaaaaaaabd0 *)
not x16_not@uint64 x16;
and x26@uint64 x17 x16_not;
(* bic	x27, x25, x17                               #! PC = 0xaaaaaaaaabd4 *)
not x17_not@uint64 x17;
and x27@uint64 x25 x17_not;
(* bic	x28, x15, x19                               #! PC = 0xaaaaaaaaabd8 *)
not x19_not@uint64 x19;
and x28@uint64 x15 x19_not;
(* bic	x30, x16, x15                               #! PC = 0xaaaaaaaaabdc *)
not x15_not@uint64 x15;
and x30@uint64 x16 x15_not;
(* eor	x15, x15, x26                               #! PC = 0xaaaaaaaaabe0 *)
xor x15@uint64 x15 x26;
(* bic	x26, x19, x25                               #! PC = 0xaaaaaaaaabe4 *)
not x25_not@uint64 x25;
and x26@uint64 x19 x25_not;
(* eor	x16, x16, x27                               #! PC = 0xaaaaaaaaabe8 *)
xor x16@uint64 x16 x27;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaabec *)
xor x25@uint64 x25 x28;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaabf0 *)
xor x19@uint64 x19 x30;
(* eor	x17, x17, x26                               #! PC = 0xaaaaaaaaabf4 *)
xor x17@uint64 x17 x26;
(* bic	x26, x22, x21                               #! PC = 0xaaaaaaaaabf8 *)
not x21_not@uint64 x21;
and x26@uint64 x22 x21_not;
(* bic	x27, x23, x22                               #! PC = 0xaaaaaaaaabfc *)
not x22_not@uint64 x22;
and x27@uint64 x23 x22_not;
(* bic	x28, x20, x24                               #! PC = 0xaaaaaaaaac00 *)
not x24_not@uint64 x24;
and x28@uint64 x20 x24_not;
(* bic	x30, x21, x20                               #! PC = 0xaaaaaaaaac04 *)
not x20_not@uint64 x20;
and x30@uint64 x21 x20_not;
(* eor	x20, x20, x26                               #! PC = 0xaaaaaaaaac08 *)
xor x20@uint64 x20 x26;
(* bic	x26, x24, x23                               #! PC = 0xaaaaaaaaac0c *)
not x23_not@uint64 x23;
and x26@uint64 x24 x23_not;
(* eor	x21, x21, x27                               #! PC = 0xaaaaaaaaac10 *)
xor x21@uint64 x21 x27;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaac14 *)
xor x23@uint64 x23 x28;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaac18 *)
xor x24@uint64 x24 x30;
(* eor	x22, x22, x26                               #! PC = 0xaaaaaaaaac1c *)
xor x22@uint64 x22 x26;
(* #b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! PC = 0xaaaaaaaaac20 *)
#b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! 0xaaaaaaaaac20 = 0xaaaaaaaaac20;
(* eor	x26, x0, x5                                 #! PC = 0xaaaaaaaaaa10 *)
xor x26@uint64 x0 x5;
(* stp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; PC = 0xaaaaaaaaaa14 *)
mov L0xffffffffe8c0 x4;
mov L0xffffffffe8c8 x9;
(* eor	x27, x1, x6                                 #! PC = 0xaaaaaaaaaa18 *)
xor x27@uint64 x1 x6;
(* eor	x28, x2, x7                                 #! PC = 0xaaaaaaaaaa1c *)
xor x28@uint64 x2 x7;
(* eor	x30, x3, x8                                 #! PC = 0xaaaaaaaaaa20 *)
xor x30@uint64 x3 x8;
(* eor	x4, x4, x9                                  #! PC = 0xaaaaaaaaaa24 *)
xor x4@uint64 x4 x9;
(* eor	x26, x26, x10                               #! PC = 0xaaaaaaaaaa28 *)
xor x26@uint64 x26 x10;
(* eor	x27, x27, x11                               #! PC = 0xaaaaaaaaaa2c *)
xor x27@uint64 x27 x11;
(* eor	x28, x28, x12                               #! PC = 0xaaaaaaaaaa30 *)
xor x28@uint64 x28 x12;
(* eor	x30, x30, x13                               #! PC = 0xaaaaaaaaaa34 *)
xor x30@uint64 x30 x13;
(* eor	x4, x4, x14                                 #! PC = 0xaaaaaaaaaa38 *)
xor x4@uint64 x4 x14;
(* eor	x26, x26, x15                               #! PC = 0xaaaaaaaaaa3c *)
xor x26@uint64 x26 x15;
(* eor	x27, x27, x16                               #! PC = 0xaaaaaaaaaa40 *)
xor x27@uint64 x27 x16;
(* eor	x28, x28, x17                               #! PC = 0xaaaaaaaaaa44 *)
xor x28@uint64 x28 x17;
(* eor	x30, x30, x25                               #! PC = 0xaaaaaaaaaa48 *)
xor x30@uint64 x30 x25;
(* eor	x4, x4, x19                                 #! PC = 0xaaaaaaaaaa4c *)
xor x4@uint64 x4 x19;
(* eor	x26, x26, x20                               #! PC = 0xaaaaaaaaaa50 *)
xor x26@uint64 x26 x20;
(* eor	x28, x28, x22                               #! PC = 0xaaaaaaaaaa54 *)
xor x28@uint64 x28 x22;
(* eor	x27, x27, x21                               #! PC = 0xaaaaaaaaaa58 *)
xor x27@uint64 x27 x21;
(* eor	x30, x30, x23                               #! PC = 0xaaaaaaaaaa5c *)
xor x30@uint64 x30 x23;
(* eor	x4, x4, x24                                 #! PC = 0xaaaaaaaaaa60 *)
xor x4@uint64 x4 x24;
(* eor	x9, x26, x28, ror #63                       #! PC = 0xaaaaaaaaaa64 *)
split x28_h x28_l x28 63;
shl x28_ls x28_l 1@uint64;
add x28_ror x28_ls x28_h;
xor x9@uint64 x26 x28_ror;
(* eor	x1, x1, x9                                  #! PC = 0xaaaaaaaaaa68 *)
xor x1@uint64 x1 x9;
(* eor	x6, x6, x9                                  #! PC = 0xaaaaaaaaaa6c *)
xor x6@uint64 x6 x9;
(* eor	x11, x11, x9                                #! PC = 0xaaaaaaaaaa70 *)
xor x11@uint64 x11 x9;
(* eor	x16, x16, x9                                #! PC = 0xaaaaaaaaaa74 *)
xor x16@uint64 x16 x9;
(* eor	x21, x21, x9                                #! PC = 0xaaaaaaaaaa78 *)
xor x21@uint64 x21 x9;
(* eor	x9, x27, x30, ror #63                       #! PC = 0xaaaaaaaaaa7c *)
split x30_h x30_l x30 63;
shl x30_ls x30_l 1@uint64;
add x30_ror x30_ls x30_h;
xor x9@uint64 x27 x30_ror;
(* eor	x28, x28, x4, ror #63                       #! PC = 0xaaaaaaaaaa80 *)
split x4_h x4_l x4 63;
shl x4_ls x4_l 1@uint64;
add x4_ror x4_ls x4_h;
xor x28@uint64 x28 x4_ror;
(* eor	x30, x30, x26, ror #63                      #! PC = 0xaaaaaaaaaa84 *)
split x26_h x26_l x26 63;
shl x26_ls x26_l 1@uint64;
add x26_ror x26_ls x26_h;
xor x30@uint64 x30 x26_ror;
(* eor	x4, x4, x27, ror #63                        #! PC = 0xaaaaaaaaaa88 *)
split x27_h x27_l x27 63;
shl x27_ls x27_l 1@uint64;
add x27_ror x27_ls x27_h;
xor x4@uint64 x4 x27_ror;
(* eor	x27, x2, x9                                 #! PC = 0xaaaaaaaaaa8c *)
xor x27@uint64 x2 x9;
(* eor	x7, x7, x9                                  #! PC = 0xaaaaaaaaaa90 *)
xor x7@uint64 x7 x9;
(* eor	x12, x12, x9                                #! PC = 0xaaaaaaaaaa94 *)
xor x12@uint64 x12 x9;
(* eor	x17, x17, x9                                #! PC = 0xaaaaaaaaaa98 *)
xor x17@uint64 x17 x9;
(* eor	x22, x22, x9                                #! PC = 0xaaaaaaaaaa9c *)
xor x22@uint64 x22 x9;
(* eor	x0, x0, x4                                  #! PC = 0xaaaaaaaaaaa0 *)
xor x0@uint64 x0 x4;
(* eor	x5, x5, x4                                  #! PC = 0xaaaaaaaaaaa4 *)
xor x5@uint64 x5 x4;
(* eor	x10, x10, x4                                #! PC = 0xaaaaaaaaaaa8 *)
xor x10@uint64 x10 x4;
(* eor	x15, x15, x4                                #! PC = 0xaaaaaaaaaaac *)
xor x15@uint64 x15 x4;
(* eor	x20, x20, x4                                #! PC = 0xaaaaaaaaaab0 *)
xor x20@uint64 x20 x4;
(* ldp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; Value = 0x007ce33d1f99b69e; PC = 0xaaaaaaaaaab4 *)
mov x4 L0xffffffffe8c0;
mov x9 L0xffffffffe8c8;
(* eor	x26, x3, x28                                #! PC = 0xaaaaaaaaaab8 *)
xor x26@uint64 x3 x28;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaaabc *)
xor x8@uint64 x8 x28;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaaac0 *)
xor x13@uint64 x13 x28;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaaac4 *)
xor x25@uint64 x25 x28;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaaac8 *)
xor x23@uint64 x23 x28;
(* eor	x28, x4, x30                                #! PC = 0xaaaaaaaaaacc *)
xor x28@uint64 x4 x30;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaad0 *)
xor x9@uint64 x9 x30;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaaad4 *)
xor x14@uint64 x14 x30;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaaad8 *)
xor x19@uint64 x19 x30;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaaadc *)
xor x24@uint64 x24 x30;
(* mov	x30, x1                                     #! PC = 0xaaaaaaaaaae0 *)
mov x30 x1;
(* ror	x1, x6, #20                                 #! PC = 0xaaaaaaaaaae4 *)
split x6_h x6_l x6 20;
shl x6_ls x6_l (64-20)@uint64;
add x1 x6_ls x6_h;
(* ror	x2, x12, #21                                #! PC = 0xaaaaaaaaaae8 *)
split x12_h x12_l x12 21;
shl x12_ls x12_l (64-21)@uint64;
add x2 x12_ls x12_h;
(* ror	x3, x25, #43                                #! PC = 0xaaaaaaaaaaec *)
split x25_h x25_l x25 43;
shl x25_ls x25_l (64-43)@uint64;
add x3 x25_ls x25_h;
(* ror	x4, x24, #50                                #! PC = 0xaaaaaaaaaaf0 *)
split x24_h x24_l x24 50;
shl x24_ls x24_l (64-50)@uint64;
add x4 x24_ls x24_h;
(* ror	x6, x9, #44                                 #! PC = 0xaaaaaaaaaaf4 *)
split x9_h x9_l x9 44;
shl x9_ls x9_l (64-44)@uint64;
add x6 x9_ls x9_h;
(* ror	x12, x13, #39                               #! PC = 0xaaaaaaaaaaf8 *)
split x13_h x13_l x13 39;
shl x13_ls x13_l (64-39)@uint64;
add x12 x13_ls x13_h;
(* ror	x25, x17, #49                               #! PC = 0xaaaaaaaaaafc *)
split x17_h x17_l x17 49;
shl x17_ls x17_l (64-49)@uint64;
add x25 x17_ls x17_h;
(* ror	x24, x21, #62                               #! PC = 0xaaaaaaaaab00 *)
split x21_h x21_l x21 62;
shl x21_ls x21_l (64-62)@uint64;
add x24 x21_ls x21_h;
(* ror	x9, x22, #3                                 #! PC = 0xaaaaaaaaab04 *)
split x22_h x22_l x22 3;
shl x22_ls x22_l (64-3)@uint64;
add x9 x22_ls x22_h;
(* ror	x13, x19, #56                               #! PC = 0xaaaaaaaaab08 *)
split x19_h x19_l x19 56;
shl x19_ls x19_l (64-56)@uint64;
add x13 x19_ls x19_h;
(* ror	x17, x11, #54                               #! PC = 0xaaaaaaaaab0c *)
split x11_h x11_l x11 54;
shl x11_ls x11_l (64-54)@uint64;
add x17 x11_ls x11_h;
(* ror	x21, x8, #9                                 #! PC = 0xaaaaaaaaab10 *)
split x8_h x8_l x8 9;
shl x8_ls x8_l (64-9)@uint64;
add x21 x8_ls x8_h;
(* ror	x22, x14, #25                               #! PC = 0xaaaaaaaaab14 *)
split x14_h x14_l x14 25;
shl x14_ls x14_l (64-25)@uint64;
add x22 x14_ls x14_h;
(* ror	x19, x23, #8                                #! PC = 0xaaaaaaaaab18 *)
split x23_h x23_l x23 8;
shl x23_ls x23_l (64-8)@uint64;
add x19 x23_ls x23_h;
(* ror	x11, x7, #58                                #! PC = 0xaaaaaaaaab1c *)
split x7_h x7_l x7 58;
shl x7_ls x7_l (64-58)@uint64;
add x11 x7_ls x7_h;
(* ror	x8, x16, #19                                #! PC = 0xaaaaaaaaab20 *)
split x16_h x16_l x16 19;
shl x16_ls x16_l (64-19)@uint64;
add x8 x16_ls x16_h;
(* ror	x14, x20, #46                               #! PC = 0xaaaaaaaaab24 *)
split x20_h x20_l x20 46;
shl x20_ls x20_l (64-46)@uint64;
add x14 x20_ls x20_h;
(* ror	x23, x15, #23                               #! PC = 0xaaaaaaaaab28 *)
split x15_h x15_l x15 23;
shl x15_ls x15_l (64-23)@uint64;
add x23 x15_ls x15_h;
(* ror	x7, x10, #61                                #! PC = 0xaaaaaaaaab2c *)
split x10_h x10_l x10 61;
shl x10_ls x10_l (64-61)@uint64;
add x7 x10_ls x10_h;
(* ror	x16, x5, #28                                #! PC = 0xaaaaaaaaab30 *)
split x5_h x5_l x5 28;
shl x5_ls x5_l (64-28)@uint64;
add x16 x5_ls x5_h;
(* ror	x5, x26, #36                                #! PC = 0xaaaaaaaaab34 *)
split x26_h x26_l x26 36;
shl x26_ls x26_l (64-36)@uint64;
add x5 x26_ls x26_h;
(* ror	x10, x30, #63                               #! PC = 0xaaaaaaaaab38 *)
split x30_h x30_l x30 63;
shl x30_ls x30_l (64-63)@uint64;
add x10 x30_ls x30_h;
(* ror	x15, x28, #37                               #! PC = 0xaaaaaaaaab3c *)
split x28_h x28_l x28 37;
shl x28_ls x28_l (64-37)@uint64;
add x15 x28_ls x28_h;
(* ror	x20, x27, #2                                #! PC = 0xaaaaaaaaab40 *)
split x27_h x27_l x27 2;
shl x27_ls x27_l (64-2)@uint64;
add x20 x27_ls x27_h;
(* bic	x26, x2, x1                                 #! PC = 0xaaaaaaaaab44 *)
not x1_not@uint64 x1;
and x26@uint64 x2 x1_not;
(* bic	x27, x3, x2                                 #! PC = 0xaaaaaaaaab48 *)
not x2_not@uint64 x2;
and x27@uint64 x3 x2_not;
(* bic	x28, x0, x4                                 #! PC = 0xaaaaaaaaab4c *)
not x4_not@uint64 x4;
and x28@uint64 x0 x4_not;
(* bic	x30, x1, x0                                 #! PC = 0xaaaaaaaaab50 *)
not x0_not@uint64 x0;
and x30@uint64 x1 x0_not;
(* eor	x0, x0, x26                                 #! PC = 0xaaaaaaaaab54 *)
xor x0@uint64 x0 x26;
(* bic	x26, x4, x3                                 #! PC = 0xaaaaaaaaab58 *)
not x3_not@uint64 x3;
and x26@uint64 x4 x3_not;
(* eor	x1, x1, x27                                 #! PC = 0xaaaaaaaaab5c *)
xor x1@uint64 x1 x27;
(* ldr	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; Value = 0x0000aaaaaaaaa998; PC = 0xaaaaaaaaab60 *)
mov x27 L0xffffffffe8d0;
(* eor	x3, x3, x28                                 #! PC = 0xaaaaaaaaab64 *)
xor x3@uint64 x3 x28;
(* eor	x4, x4, x30                                 #! PC = 0xaaaaaaaaab68 *)
xor x4@uint64 x4 x30;
(* eor	x2, x2, x26                                 #! PC = 0xaaaaaaaaab6c *)
xor x2@uint64 x2 x26;
(* ldr	x30, [x27], #8                              #! EA = L0xaaaaaaaaa998; Value = 0x000000008000000a; PC = 0xaaaaaaaaab70 *)
mov x30 L0xaaaaaaaaa998;
(* bic	x26, x7, x6                                 #! PC = 0xaaaaaaaaab74 *)
not x6_not@uint64 x6;
and x26@uint64 x7 x6_not;
(* str	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; PC = 0xaaaaaaaaab7c *)
mov L0xffffffffe8d0 x27;
(* bic	x27, x8, x7                                 #! PC = 0xaaaaaaaaab80 *)
not x7_not@uint64 x7;
and x27@uint64 x8 x7_not;
(* bic	x28, x5, x9                                 #! PC = 0xaaaaaaaaab84 *)
not x9_not@uint64 x9;
and x28@uint64 x5 x9_not;
(* eor	x0, x0, x30                                 #! PC = 0xaaaaaaaaab88 *)
xor x0@uint64 x0 x30;
(* bic	x30, x6, x5                                 #! PC = 0xaaaaaaaaab8c *)
not x5_not@uint64 x5;
and x30@uint64 x6 x5_not;
(* eor	x5, x5, x26                                 #! PC = 0xaaaaaaaaab90 *)
xor x5@uint64 x5 x26;
(* bic	x26, x9, x8                                 #! PC = 0xaaaaaaaaab94 *)
not x8_not@uint64 x8;
and x26@uint64 x9 x8_not;
(* eor	x6, x6, x27                                 #! PC = 0xaaaaaaaaab98 *)
xor x6@uint64 x6 x27;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaab9c *)
xor x8@uint64 x8 x28;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaba0 *)
xor x9@uint64 x9 x30;
(* eor	x7, x7, x26                                 #! PC = 0xaaaaaaaaaba4 *)
xor x7@uint64 x7 x26;
(* bic	x26, x12, x11                               #! PC = 0xaaaaaaaaaba8 *)
not x11_not@uint64 x11;
and x26@uint64 x12 x11_not;
(* bic	x27, x13, x12                               #! PC = 0xaaaaaaaaabac *)
not x12_not@uint64 x12;
and x27@uint64 x13 x12_not;
(* bic	x28, x10, x14                               #! PC = 0xaaaaaaaaabb0 *)
not x14_not@uint64 x14;
and x28@uint64 x10 x14_not;
(* bic	x30, x11, x10                               #! PC = 0xaaaaaaaaabb4 *)
not x10_not@uint64 x10;
and x30@uint64 x11 x10_not;
(* eor	x10, x10, x26                               #! PC = 0xaaaaaaaaabb8 *)
xor x10@uint64 x10 x26;
(* bic	x26, x14, x13                               #! PC = 0xaaaaaaaaabbc *)
not x13_not@uint64 x13;
and x26@uint64 x14 x13_not;
(* eor	x11, x11, x27                               #! PC = 0xaaaaaaaaabc0 *)
xor x11@uint64 x11 x27;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaabc4 *)
xor x13@uint64 x13 x28;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaabc8 *)
xor x14@uint64 x14 x30;
(* eor	x12, x12, x26                               #! PC = 0xaaaaaaaaabcc *)
xor x12@uint64 x12 x26;
(* bic	x26, x17, x16                               #! PC = 0xaaaaaaaaabd0 *)
not x16_not@uint64 x16;
and x26@uint64 x17 x16_not;
(* bic	x27, x25, x17                               #! PC = 0xaaaaaaaaabd4 *)
not x17_not@uint64 x17;
and x27@uint64 x25 x17_not;
(* bic	x28, x15, x19                               #! PC = 0xaaaaaaaaabd8 *)
not x19_not@uint64 x19;
and x28@uint64 x15 x19_not;
(* bic	x30, x16, x15                               #! PC = 0xaaaaaaaaabdc *)
not x15_not@uint64 x15;
and x30@uint64 x16 x15_not;
(* eor	x15, x15, x26                               #! PC = 0xaaaaaaaaabe0 *)
xor x15@uint64 x15 x26;
(* bic	x26, x19, x25                               #! PC = 0xaaaaaaaaabe4 *)
not x25_not@uint64 x25;
and x26@uint64 x19 x25_not;
(* eor	x16, x16, x27                               #! PC = 0xaaaaaaaaabe8 *)
xor x16@uint64 x16 x27;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaabec *)
xor x25@uint64 x25 x28;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaabf0 *)
xor x19@uint64 x19 x30;
(* eor	x17, x17, x26                               #! PC = 0xaaaaaaaaabf4 *)
xor x17@uint64 x17 x26;
(* bic	x26, x22, x21                               #! PC = 0xaaaaaaaaabf8 *)
not x21_not@uint64 x21;
and x26@uint64 x22 x21_not;
(* bic	x27, x23, x22                               #! PC = 0xaaaaaaaaabfc *)
not x22_not@uint64 x22;
and x27@uint64 x23 x22_not;
(* bic	x28, x20, x24                               #! PC = 0xaaaaaaaaac00 *)
not x24_not@uint64 x24;
and x28@uint64 x20 x24_not;
(* bic	x30, x21, x20                               #! PC = 0xaaaaaaaaac04 *)
not x20_not@uint64 x20;
and x30@uint64 x21 x20_not;
(* eor	x20, x20, x26                               #! PC = 0xaaaaaaaaac08 *)
xor x20@uint64 x20 x26;
(* bic	x26, x24, x23                               #! PC = 0xaaaaaaaaac0c *)
not x23_not@uint64 x23;
and x26@uint64 x24 x23_not;
(* eor	x21, x21, x27                               #! PC = 0xaaaaaaaaac10 *)
xor x21@uint64 x21 x27;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaac14 *)
xor x23@uint64 x23 x28;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaac18 *)
xor x24@uint64 x24 x30;
(* eor	x22, x22, x26                               #! PC = 0xaaaaaaaaac1c *)
xor x22@uint64 x22 x26;
(* #b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! PC = 0xaaaaaaaaac20 *)
#b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! 0xaaaaaaaaac20 = 0xaaaaaaaaac20;
(* eor	x26, x0, x5                                 #! PC = 0xaaaaaaaaaa10 *)
xor x26@uint64 x0 x5;
(* stp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; PC = 0xaaaaaaaaaa14 *)
mov L0xffffffffe8c0 x4;
mov L0xffffffffe8c8 x9;
(* eor	x27, x1, x6                                 #! PC = 0xaaaaaaaaaa18 *)
xor x27@uint64 x1 x6;
(* eor	x28, x2, x7                                 #! PC = 0xaaaaaaaaaa1c *)
xor x28@uint64 x2 x7;
(* eor	x30, x3, x8                                 #! PC = 0xaaaaaaaaaa20 *)
xor x30@uint64 x3 x8;
(* eor	x4, x4, x9                                  #! PC = 0xaaaaaaaaaa24 *)
xor x4@uint64 x4 x9;
(* eor	x26, x26, x10                               #! PC = 0xaaaaaaaaaa28 *)
xor x26@uint64 x26 x10;
(* eor	x27, x27, x11                               #! PC = 0xaaaaaaaaaa2c *)
xor x27@uint64 x27 x11;
(* eor	x28, x28, x12                               #! PC = 0xaaaaaaaaaa30 *)
xor x28@uint64 x28 x12;
(* eor	x30, x30, x13                               #! PC = 0xaaaaaaaaaa34 *)
xor x30@uint64 x30 x13;
(* eor	x4, x4, x14                                 #! PC = 0xaaaaaaaaaa38 *)
xor x4@uint64 x4 x14;
(* eor	x26, x26, x15                               #! PC = 0xaaaaaaaaaa3c *)
xor x26@uint64 x26 x15;
(* eor	x27, x27, x16                               #! PC = 0xaaaaaaaaaa40 *)
xor x27@uint64 x27 x16;
(* eor	x28, x28, x17                               #! PC = 0xaaaaaaaaaa44 *)
xor x28@uint64 x28 x17;
(* eor	x30, x30, x25                               #! PC = 0xaaaaaaaaaa48 *)
xor x30@uint64 x30 x25;
(* eor	x4, x4, x19                                 #! PC = 0xaaaaaaaaaa4c *)
xor x4@uint64 x4 x19;
(* eor	x26, x26, x20                               #! PC = 0xaaaaaaaaaa50 *)
xor x26@uint64 x26 x20;
(* eor	x28, x28, x22                               #! PC = 0xaaaaaaaaaa54 *)
xor x28@uint64 x28 x22;
(* eor	x27, x27, x21                               #! PC = 0xaaaaaaaaaa58 *)
xor x27@uint64 x27 x21;
(* eor	x30, x30, x23                               #! PC = 0xaaaaaaaaaa5c *)
xor x30@uint64 x30 x23;
(* eor	x4, x4, x24                                 #! PC = 0xaaaaaaaaaa60 *)
xor x4@uint64 x4 x24;
(* eor	x9, x26, x28, ror #63                       #! PC = 0xaaaaaaaaaa64 *)
split x28_h x28_l x28 63;
shl x28_ls x28_l 1@uint64;
add x28_ror x28_ls x28_h;
xor x9@uint64 x26 x28_ror;
(* eor	x1, x1, x9                                  #! PC = 0xaaaaaaaaaa68 *)
xor x1@uint64 x1 x9;
(* eor	x6, x6, x9                                  #! PC = 0xaaaaaaaaaa6c *)
xor x6@uint64 x6 x9;
(* eor	x11, x11, x9                                #! PC = 0xaaaaaaaaaa70 *)
xor x11@uint64 x11 x9;
(* eor	x16, x16, x9                                #! PC = 0xaaaaaaaaaa74 *)
xor x16@uint64 x16 x9;
(* eor	x21, x21, x9                                #! PC = 0xaaaaaaaaaa78 *)
xor x21@uint64 x21 x9;
(* eor	x9, x27, x30, ror #63                       #! PC = 0xaaaaaaaaaa7c *)
split x30_h x30_l x30 63;
shl x30_ls x30_l 1@uint64;
add x30_ror x30_ls x30_h;
xor x9@uint64 x27 x30_ror;
(* eor	x28, x28, x4, ror #63                       #! PC = 0xaaaaaaaaaa80 *)
split x4_h x4_l x4 63;
shl x4_ls x4_l 1@uint64;
add x4_ror x4_ls x4_h;
xor x28@uint64 x28 x4_ror;
(* eor	x30, x30, x26, ror #63                      #! PC = 0xaaaaaaaaaa84 *)
split x26_h x26_l x26 63;
shl x26_ls x26_l 1@uint64;
add x26_ror x26_ls x26_h;
xor x30@uint64 x30 x26_ror;
(* eor	x4, x4, x27, ror #63                        #! PC = 0xaaaaaaaaaa88 *)
split x27_h x27_l x27 63;
shl x27_ls x27_l 1@uint64;
add x27_ror x27_ls x27_h;
xor x4@uint64 x4 x27_ror;
(* eor	x27, x2, x9                                 #! PC = 0xaaaaaaaaaa8c *)
xor x27@uint64 x2 x9;
(* eor	x7, x7, x9                                  #! PC = 0xaaaaaaaaaa90 *)
xor x7@uint64 x7 x9;
(* eor	x12, x12, x9                                #! PC = 0xaaaaaaaaaa94 *)
xor x12@uint64 x12 x9;
(* eor	x17, x17, x9                                #! PC = 0xaaaaaaaaaa98 *)
xor x17@uint64 x17 x9;
(* eor	x22, x22, x9                                #! PC = 0xaaaaaaaaaa9c *)
xor x22@uint64 x22 x9;
(* eor	x0, x0, x4                                  #! PC = 0xaaaaaaaaaaa0 *)
xor x0@uint64 x0 x4;
(* eor	x5, x5, x4                                  #! PC = 0xaaaaaaaaaaa4 *)
xor x5@uint64 x5 x4;
(* eor	x10, x10, x4                                #! PC = 0xaaaaaaaaaaa8 *)
xor x10@uint64 x10 x4;
(* eor	x15, x15, x4                                #! PC = 0xaaaaaaaaaaac *)
xor x15@uint64 x15 x4;
(* eor	x20, x20, x4                                #! PC = 0xaaaaaaaaaab0 *)
xor x20@uint64 x20 x4;
(* ldp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; Value = 0x2b5b998778bd17de; PC = 0xaaaaaaaaaab4 *)
mov x4 L0xffffffffe8c0;
mov x9 L0xffffffffe8c8;
(* eor	x26, x3, x28                                #! PC = 0xaaaaaaaaaab8 *)
xor x26@uint64 x3 x28;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaaabc *)
xor x8@uint64 x8 x28;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaaac0 *)
xor x13@uint64 x13 x28;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaaac4 *)
xor x25@uint64 x25 x28;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaaac8 *)
xor x23@uint64 x23 x28;
(* eor	x28, x4, x30                                #! PC = 0xaaaaaaaaaacc *)
xor x28@uint64 x4 x30;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaad0 *)
xor x9@uint64 x9 x30;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaaad4 *)
xor x14@uint64 x14 x30;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaaad8 *)
xor x19@uint64 x19 x30;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaaadc *)
xor x24@uint64 x24 x30;
(* mov	x30, x1                                     #! PC = 0xaaaaaaaaaae0 *)
mov x30 x1;
(* ror	x1, x6, #20                                 #! PC = 0xaaaaaaaaaae4 *)
split x6_h x6_l x6 20;
shl x6_ls x6_l (64-20)@uint64;
add x1 x6_ls x6_h;
(* ror	x2, x12, #21                                #! PC = 0xaaaaaaaaaae8 *)
split x12_h x12_l x12 21;
shl x12_ls x12_l (64-21)@uint64;
add x2 x12_ls x12_h;
(* ror	x3, x25, #43                                #! PC = 0xaaaaaaaaaaec *)
split x25_h x25_l x25 43;
shl x25_ls x25_l (64-43)@uint64;
add x3 x25_ls x25_h;
(* ror	x4, x24, #50                                #! PC = 0xaaaaaaaaaaf0 *)
split x24_h x24_l x24 50;
shl x24_ls x24_l (64-50)@uint64;
add x4 x24_ls x24_h;
(* ror	x6, x9, #44                                 #! PC = 0xaaaaaaaaaaf4 *)
split x9_h x9_l x9 44;
shl x9_ls x9_l (64-44)@uint64;
add x6 x9_ls x9_h;
(* ror	x12, x13, #39                               #! PC = 0xaaaaaaaaaaf8 *)
split x13_h x13_l x13 39;
shl x13_ls x13_l (64-39)@uint64;
add x12 x13_ls x13_h;
(* ror	x25, x17, #49                               #! PC = 0xaaaaaaaaaafc *)
split x17_h x17_l x17 49;
shl x17_ls x17_l (64-49)@uint64;
add x25 x17_ls x17_h;
(* ror	x24, x21, #62                               #! PC = 0xaaaaaaaaab00 *)
split x21_h x21_l x21 62;
shl x21_ls x21_l (64-62)@uint64;
add x24 x21_ls x21_h;
(* ror	x9, x22, #3                                 #! PC = 0xaaaaaaaaab04 *)
split x22_h x22_l x22 3;
shl x22_ls x22_l (64-3)@uint64;
add x9 x22_ls x22_h;
(* ror	x13, x19, #56                               #! PC = 0xaaaaaaaaab08 *)
split x19_h x19_l x19 56;
shl x19_ls x19_l (64-56)@uint64;
add x13 x19_ls x19_h;
(* ror	x17, x11, #54                               #! PC = 0xaaaaaaaaab0c *)
split x11_h x11_l x11 54;
shl x11_ls x11_l (64-54)@uint64;
add x17 x11_ls x11_h;
(* ror	x21, x8, #9                                 #! PC = 0xaaaaaaaaab10 *)
split x8_h x8_l x8 9;
shl x8_ls x8_l (64-9)@uint64;
add x21 x8_ls x8_h;
(* ror	x22, x14, #25                               #! PC = 0xaaaaaaaaab14 *)
split x14_h x14_l x14 25;
shl x14_ls x14_l (64-25)@uint64;
add x22 x14_ls x14_h;
(* ror	x19, x23, #8                                #! PC = 0xaaaaaaaaab18 *)
split x23_h x23_l x23 8;
shl x23_ls x23_l (64-8)@uint64;
add x19 x23_ls x23_h;
(* ror	x11, x7, #58                                #! PC = 0xaaaaaaaaab1c *)
split x7_h x7_l x7 58;
shl x7_ls x7_l (64-58)@uint64;
add x11 x7_ls x7_h;
(* ror	x8, x16, #19                                #! PC = 0xaaaaaaaaab20 *)
split x16_h x16_l x16 19;
shl x16_ls x16_l (64-19)@uint64;
add x8 x16_ls x16_h;
(* ror	x14, x20, #46                               #! PC = 0xaaaaaaaaab24 *)
split x20_h x20_l x20 46;
shl x20_ls x20_l (64-46)@uint64;
add x14 x20_ls x20_h;
(* ror	x23, x15, #23                               #! PC = 0xaaaaaaaaab28 *)
split x15_h x15_l x15 23;
shl x15_ls x15_l (64-23)@uint64;
add x23 x15_ls x15_h;
(* ror	x7, x10, #61                                #! PC = 0xaaaaaaaaab2c *)
split x10_h x10_l x10 61;
shl x10_ls x10_l (64-61)@uint64;
add x7 x10_ls x10_h;
(* ror	x16, x5, #28                                #! PC = 0xaaaaaaaaab30 *)
split x5_h x5_l x5 28;
shl x5_ls x5_l (64-28)@uint64;
add x16 x5_ls x5_h;
(* ror	x5, x26, #36                                #! PC = 0xaaaaaaaaab34 *)
split x26_h x26_l x26 36;
shl x26_ls x26_l (64-36)@uint64;
add x5 x26_ls x26_h;
(* ror	x10, x30, #63                               #! PC = 0xaaaaaaaaab38 *)
split x30_h x30_l x30 63;
shl x30_ls x30_l (64-63)@uint64;
add x10 x30_ls x30_h;
(* ror	x15, x28, #37                               #! PC = 0xaaaaaaaaab3c *)
split x28_h x28_l x28 37;
shl x28_ls x28_l (64-37)@uint64;
add x15 x28_ls x28_h;
(* ror	x20, x27, #2                                #! PC = 0xaaaaaaaaab40 *)
split x27_h x27_l x27 2;
shl x27_ls x27_l (64-2)@uint64;
add x20 x27_ls x27_h;
(* bic	x26, x2, x1                                 #! PC = 0xaaaaaaaaab44 *)
not x1_not@uint64 x1;
and x26@uint64 x2 x1_not;
(* bic	x27, x3, x2                                 #! PC = 0xaaaaaaaaab48 *)
not x2_not@uint64 x2;
and x27@uint64 x3 x2_not;
(* bic	x28, x0, x4                                 #! PC = 0xaaaaaaaaab4c *)
not x4_not@uint64 x4;
and x28@uint64 x0 x4_not;
(* bic	x30, x1, x0                                 #! PC = 0xaaaaaaaaab50 *)
not x0_not@uint64 x0;
and x30@uint64 x1 x0_not;
(* eor	x0, x0, x26                                 #! PC = 0xaaaaaaaaab54 *)
xor x0@uint64 x0 x26;
(* bic	x26, x4, x3                                 #! PC = 0xaaaaaaaaab58 *)
not x3_not@uint64 x3;
and x26@uint64 x4 x3_not;
(* eor	x1, x1, x27                                 #! PC = 0xaaaaaaaaab5c *)
xor x1@uint64 x1 x27;
(* ldr	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; Value = 0x0000aaaaaaaaa9a0; PC = 0xaaaaaaaaab60 *)
mov x27 L0xffffffffe8d0;
(* eor	x3, x3, x28                                 #! PC = 0xaaaaaaaaab64 *)
xor x3@uint64 x3 x28;
(* eor	x4, x4, x30                                 #! PC = 0xaaaaaaaaab68 *)
xor x4@uint64 x4 x30;
(* eor	x2, x2, x26                                 #! PC = 0xaaaaaaaaab6c *)
xor x2@uint64 x2 x26;
(* ldr	x30, [x27], #8                              #! EA = L0xaaaaaaaaa9a0; Value = 0x000000008000808b; PC = 0xaaaaaaaaab70 *)
mov x30 L0xaaaaaaaaa9a0;
(* bic	x26, x7, x6                                 #! PC = 0xaaaaaaaaab74 *)
not x6_not@uint64 x6;
and x26@uint64 x7 x6_not;
(* str	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; PC = 0xaaaaaaaaab7c *)
mov L0xffffffffe8d0 x27;
(* bic	x27, x8, x7                                 #! PC = 0xaaaaaaaaab80 *)
not x7_not@uint64 x7;
and x27@uint64 x8 x7_not;
(* bic	x28, x5, x9                                 #! PC = 0xaaaaaaaaab84 *)
not x9_not@uint64 x9;
and x28@uint64 x5 x9_not;
(* eor	x0, x0, x30                                 #! PC = 0xaaaaaaaaab88 *)
xor x0@uint64 x0 x30;
(* bic	x30, x6, x5                                 #! PC = 0xaaaaaaaaab8c *)
not x5_not@uint64 x5;
and x30@uint64 x6 x5_not;
(* eor	x5, x5, x26                                 #! PC = 0xaaaaaaaaab90 *)
xor x5@uint64 x5 x26;
(* bic	x26, x9, x8                                 #! PC = 0xaaaaaaaaab94 *)
not x8_not@uint64 x8;
and x26@uint64 x9 x8_not;
(* eor	x6, x6, x27                                 #! PC = 0xaaaaaaaaab98 *)
xor x6@uint64 x6 x27;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaab9c *)
xor x8@uint64 x8 x28;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaba0 *)
xor x9@uint64 x9 x30;
(* eor	x7, x7, x26                                 #! PC = 0xaaaaaaaaaba4 *)
xor x7@uint64 x7 x26;
(* bic	x26, x12, x11                               #! PC = 0xaaaaaaaaaba8 *)
not x11_not@uint64 x11;
and x26@uint64 x12 x11_not;
(* bic	x27, x13, x12                               #! PC = 0xaaaaaaaaabac *)
not x12_not@uint64 x12;
and x27@uint64 x13 x12_not;
(* bic	x28, x10, x14                               #! PC = 0xaaaaaaaaabb0 *)
not x14_not@uint64 x14;
and x28@uint64 x10 x14_not;
(* bic	x30, x11, x10                               #! PC = 0xaaaaaaaaabb4 *)
not x10_not@uint64 x10;
and x30@uint64 x11 x10_not;
(* eor	x10, x10, x26                               #! PC = 0xaaaaaaaaabb8 *)
xor x10@uint64 x10 x26;
(* bic	x26, x14, x13                               #! PC = 0xaaaaaaaaabbc *)
not x13_not@uint64 x13;
and x26@uint64 x14 x13_not;
(* eor	x11, x11, x27                               #! PC = 0xaaaaaaaaabc0 *)
xor x11@uint64 x11 x27;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaabc4 *)
xor x13@uint64 x13 x28;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaabc8 *)
xor x14@uint64 x14 x30;
(* eor	x12, x12, x26                               #! PC = 0xaaaaaaaaabcc *)
xor x12@uint64 x12 x26;
(* bic	x26, x17, x16                               #! PC = 0xaaaaaaaaabd0 *)
not x16_not@uint64 x16;
and x26@uint64 x17 x16_not;
(* bic	x27, x25, x17                               #! PC = 0xaaaaaaaaabd4 *)
not x17_not@uint64 x17;
and x27@uint64 x25 x17_not;
(* bic	x28, x15, x19                               #! PC = 0xaaaaaaaaabd8 *)
not x19_not@uint64 x19;
and x28@uint64 x15 x19_not;
(* bic	x30, x16, x15                               #! PC = 0xaaaaaaaaabdc *)
not x15_not@uint64 x15;
and x30@uint64 x16 x15_not;
(* eor	x15, x15, x26                               #! PC = 0xaaaaaaaaabe0 *)
xor x15@uint64 x15 x26;
(* bic	x26, x19, x25                               #! PC = 0xaaaaaaaaabe4 *)
not x25_not@uint64 x25;
and x26@uint64 x19 x25_not;
(* eor	x16, x16, x27                               #! PC = 0xaaaaaaaaabe8 *)
xor x16@uint64 x16 x27;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaabec *)
xor x25@uint64 x25 x28;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaabf0 *)
xor x19@uint64 x19 x30;
(* eor	x17, x17, x26                               #! PC = 0xaaaaaaaaabf4 *)
xor x17@uint64 x17 x26;
(* bic	x26, x22, x21                               #! PC = 0xaaaaaaaaabf8 *)
not x21_not@uint64 x21;
and x26@uint64 x22 x21_not;
(* bic	x27, x23, x22                               #! PC = 0xaaaaaaaaabfc *)
not x22_not@uint64 x22;
and x27@uint64 x23 x22_not;
(* bic	x28, x20, x24                               #! PC = 0xaaaaaaaaac00 *)
not x24_not@uint64 x24;
and x28@uint64 x20 x24_not;
(* bic	x30, x21, x20                               #! PC = 0xaaaaaaaaac04 *)
not x20_not@uint64 x20;
and x30@uint64 x21 x20_not;
(* eor	x20, x20, x26                               #! PC = 0xaaaaaaaaac08 *)
xor x20@uint64 x20 x26;
(* bic	x26, x24, x23                               #! PC = 0xaaaaaaaaac0c *)
not x23_not@uint64 x23;
and x26@uint64 x24 x23_not;
(* eor	x21, x21, x27                               #! PC = 0xaaaaaaaaac10 *)
xor x21@uint64 x21 x27;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaac14 *)
xor x23@uint64 x23 x28;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaac18 *)
xor x24@uint64 x24 x30;
(* eor	x22, x22, x26                               #! PC = 0xaaaaaaaaac1c *)
xor x22@uint64 x22 x26;
(* #b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! PC = 0xaaaaaaaaac20 *)
#b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! 0xaaaaaaaaac20 = 0xaaaaaaaaac20;
(* eor	x26, x0, x5                                 #! PC = 0xaaaaaaaaaa10 *)
xor x26@uint64 x0 x5;
(* stp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; PC = 0xaaaaaaaaaa14 *)
mov L0xffffffffe8c0 x4;
mov L0xffffffffe8c8 x9;
(* eor	x27, x1, x6                                 #! PC = 0xaaaaaaaaaa18 *)
xor x27@uint64 x1 x6;
(* eor	x28, x2, x7                                 #! PC = 0xaaaaaaaaaa1c *)
xor x28@uint64 x2 x7;
(* eor	x30, x3, x8                                 #! PC = 0xaaaaaaaaaa20 *)
xor x30@uint64 x3 x8;
(* eor	x4, x4, x9                                  #! PC = 0xaaaaaaaaaa24 *)
xor x4@uint64 x4 x9;
(* eor	x26, x26, x10                               #! PC = 0xaaaaaaaaaa28 *)
xor x26@uint64 x26 x10;
(* eor	x27, x27, x11                               #! PC = 0xaaaaaaaaaa2c *)
xor x27@uint64 x27 x11;
(* eor	x28, x28, x12                               #! PC = 0xaaaaaaaaaa30 *)
xor x28@uint64 x28 x12;
(* eor	x30, x30, x13                               #! PC = 0xaaaaaaaaaa34 *)
xor x30@uint64 x30 x13;
(* eor	x4, x4, x14                                 #! PC = 0xaaaaaaaaaa38 *)
xor x4@uint64 x4 x14;
(* eor	x26, x26, x15                               #! PC = 0xaaaaaaaaaa3c *)
xor x26@uint64 x26 x15;
(* eor	x27, x27, x16                               #! PC = 0xaaaaaaaaaa40 *)
xor x27@uint64 x27 x16;
(* eor	x28, x28, x17                               #! PC = 0xaaaaaaaaaa44 *)
xor x28@uint64 x28 x17;
(* eor	x30, x30, x25                               #! PC = 0xaaaaaaaaaa48 *)
xor x30@uint64 x30 x25;
(* eor	x4, x4, x19                                 #! PC = 0xaaaaaaaaaa4c *)
xor x4@uint64 x4 x19;
(* eor	x26, x26, x20                               #! PC = 0xaaaaaaaaaa50 *)
xor x26@uint64 x26 x20;
(* eor	x28, x28, x22                               #! PC = 0xaaaaaaaaaa54 *)
xor x28@uint64 x28 x22;
(* eor	x27, x27, x21                               #! PC = 0xaaaaaaaaaa58 *)
xor x27@uint64 x27 x21;
(* eor	x30, x30, x23                               #! PC = 0xaaaaaaaaaa5c *)
xor x30@uint64 x30 x23;
(* eor	x4, x4, x24                                 #! PC = 0xaaaaaaaaaa60 *)
xor x4@uint64 x4 x24;
(* eor	x9, x26, x28, ror #63                       #! PC = 0xaaaaaaaaaa64 *)
split x28_h x28_l x28 63;
shl x28_ls x28_l 1@uint64;
add x28_ror x28_ls x28_h;
xor x9@uint64 x26 x28_ror;
(* eor	x1, x1, x9                                  #! PC = 0xaaaaaaaaaa68 *)
xor x1@uint64 x1 x9;
(* eor	x6, x6, x9                                  #! PC = 0xaaaaaaaaaa6c *)
xor x6@uint64 x6 x9;
(* eor	x11, x11, x9                                #! PC = 0xaaaaaaaaaa70 *)
xor x11@uint64 x11 x9;
(* eor	x16, x16, x9                                #! PC = 0xaaaaaaaaaa74 *)
xor x16@uint64 x16 x9;
(* eor	x21, x21, x9                                #! PC = 0xaaaaaaaaaa78 *)
xor x21@uint64 x21 x9;
(* eor	x9, x27, x30, ror #63                       #! PC = 0xaaaaaaaaaa7c *)
split x30_h x30_l x30 63;
shl x30_ls x30_l 1@uint64;
add x30_ror x30_ls x30_h;
xor x9@uint64 x27 x30_ror;
(* eor	x28, x28, x4, ror #63                       #! PC = 0xaaaaaaaaaa80 *)
split x4_h x4_l x4 63;
shl x4_ls x4_l 1@uint64;
add x4_ror x4_ls x4_h;
xor x28@uint64 x28 x4_ror;
(* eor	x30, x30, x26, ror #63                      #! PC = 0xaaaaaaaaaa84 *)
split x26_h x26_l x26 63;
shl x26_ls x26_l 1@uint64;
add x26_ror x26_ls x26_h;
xor x30@uint64 x30 x26_ror;
(* eor	x4, x4, x27, ror #63                        #! PC = 0xaaaaaaaaaa88 *)
split x27_h x27_l x27 63;
shl x27_ls x27_l 1@uint64;
add x27_ror x27_ls x27_h;
xor x4@uint64 x4 x27_ror;
(* eor	x27, x2, x9                                 #! PC = 0xaaaaaaaaaa8c *)
xor x27@uint64 x2 x9;
(* eor	x7, x7, x9                                  #! PC = 0xaaaaaaaaaa90 *)
xor x7@uint64 x7 x9;
(* eor	x12, x12, x9                                #! PC = 0xaaaaaaaaaa94 *)
xor x12@uint64 x12 x9;
(* eor	x17, x17, x9                                #! PC = 0xaaaaaaaaaa98 *)
xor x17@uint64 x17 x9;
(* eor	x22, x22, x9                                #! PC = 0xaaaaaaaaaa9c *)
xor x22@uint64 x22 x9;
(* eor	x0, x0, x4                                  #! PC = 0xaaaaaaaaaaa0 *)
xor x0@uint64 x0 x4;
(* eor	x5, x5, x4                                  #! PC = 0xaaaaaaaaaaa4 *)
xor x5@uint64 x5 x4;
(* eor	x10, x10, x4                                #! PC = 0xaaaaaaaaaaa8 *)
xor x10@uint64 x10 x4;
(* eor	x15, x15, x4                                #! PC = 0xaaaaaaaaaaac *)
xor x15@uint64 x15 x4;
(* eor	x20, x20, x4                                #! PC = 0xaaaaaaaaaab0 *)
xor x20@uint64 x20 x4;
(* ldp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; Value = 0x3eaddfdaa8d5595c; PC = 0xaaaaaaaaaab4 *)
mov x4 L0xffffffffe8c0;
mov x9 L0xffffffffe8c8;
(* eor	x26, x3, x28                                #! PC = 0xaaaaaaaaaab8 *)
xor x26@uint64 x3 x28;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaaabc *)
xor x8@uint64 x8 x28;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaaac0 *)
xor x13@uint64 x13 x28;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaaac4 *)
xor x25@uint64 x25 x28;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaaac8 *)
xor x23@uint64 x23 x28;
(* eor	x28, x4, x30                                #! PC = 0xaaaaaaaaaacc *)
xor x28@uint64 x4 x30;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaad0 *)
xor x9@uint64 x9 x30;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaaad4 *)
xor x14@uint64 x14 x30;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaaad8 *)
xor x19@uint64 x19 x30;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaaadc *)
xor x24@uint64 x24 x30;
(* mov	x30, x1                                     #! PC = 0xaaaaaaaaaae0 *)
mov x30 x1;
(* ror	x1, x6, #20                                 #! PC = 0xaaaaaaaaaae4 *)
split x6_h x6_l x6 20;
shl x6_ls x6_l (64-20)@uint64;
add x1 x6_ls x6_h;
(* ror	x2, x12, #21                                #! PC = 0xaaaaaaaaaae8 *)
split x12_h x12_l x12 21;
shl x12_ls x12_l (64-21)@uint64;
add x2 x12_ls x12_h;
(* ror	x3, x25, #43                                #! PC = 0xaaaaaaaaaaec *)
split x25_h x25_l x25 43;
shl x25_ls x25_l (64-43)@uint64;
add x3 x25_ls x25_h;
(* ror	x4, x24, #50                                #! PC = 0xaaaaaaaaaaf0 *)
split x24_h x24_l x24 50;
shl x24_ls x24_l (64-50)@uint64;
add x4 x24_ls x24_h;
(* ror	x6, x9, #44                                 #! PC = 0xaaaaaaaaaaf4 *)
split x9_h x9_l x9 44;
shl x9_ls x9_l (64-44)@uint64;
add x6 x9_ls x9_h;
(* ror	x12, x13, #39                               #! PC = 0xaaaaaaaaaaf8 *)
split x13_h x13_l x13 39;
shl x13_ls x13_l (64-39)@uint64;
add x12 x13_ls x13_h;
(* ror	x25, x17, #49                               #! PC = 0xaaaaaaaaaafc *)
split x17_h x17_l x17 49;
shl x17_ls x17_l (64-49)@uint64;
add x25 x17_ls x17_h;
(* ror	x24, x21, #62                               #! PC = 0xaaaaaaaaab00 *)
split x21_h x21_l x21 62;
shl x21_ls x21_l (64-62)@uint64;
add x24 x21_ls x21_h;
(* ror	x9, x22, #3                                 #! PC = 0xaaaaaaaaab04 *)
split x22_h x22_l x22 3;
shl x22_ls x22_l (64-3)@uint64;
add x9 x22_ls x22_h;
(* ror	x13, x19, #56                               #! PC = 0xaaaaaaaaab08 *)
split x19_h x19_l x19 56;
shl x19_ls x19_l (64-56)@uint64;
add x13 x19_ls x19_h;
(* ror	x17, x11, #54                               #! PC = 0xaaaaaaaaab0c *)
split x11_h x11_l x11 54;
shl x11_ls x11_l (64-54)@uint64;
add x17 x11_ls x11_h;
(* ror	x21, x8, #9                                 #! PC = 0xaaaaaaaaab10 *)
split x8_h x8_l x8 9;
shl x8_ls x8_l (64-9)@uint64;
add x21 x8_ls x8_h;
(* ror	x22, x14, #25                               #! PC = 0xaaaaaaaaab14 *)
split x14_h x14_l x14 25;
shl x14_ls x14_l (64-25)@uint64;
add x22 x14_ls x14_h;
(* ror	x19, x23, #8                                #! PC = 0xaaaaaaaaab18 *)
split x23_h x23_l x23 8;
shl x23_ls x23_l (64-8)@uint64;
add x19 x23_ls x23_h;
(* ror	x11, x7, #58                                #! PC = 0xaaaaaaaaab1c *)
split x7_h x7_l x7 58;
shl x7_ls x7_l (64-58)@uint64;
add x11 x7_ls x7_h;
(* ror	x8, x16, #19                                #! PC = 0xaaaaaaaaab20 *)
split x16_h x16_l x16 19;
shl x16_ls x16_l (64-19)@uint64;
add x8 x16_ls x16_h;
(* ror	x14, x20, #46                               #! PC = 0xaaaaaaaaab24 *)
split x20_h x20_l x20 46;
shl x20_ls x20_l (64-46)@uint64;
add x14 x20_ls x20_h;
(* ror	x23, x15, #23                               #! PC = 0xaaaaaaaaab28 *)
split x15_h x15_l x15 23;
shl x15_ls x15_l (64-23)@uint64;
add x23 x15_ls x15_h;
(* ror	x7, x10, #61                                #! PC = 0xaaaaaaaaab2c *)
split x10_h x10_l x10 61;
shl x10_ls x10_l (64-61)@uint64;
add x7 x10_ls x10_h;
(* ror	x16, x5, #28                                #! PC = 0xaaaaaaaaab30 *)
split x5_h x5_l x5 28;
shl x5_ls x5_l (64-28)@uint64;
add x16 x5_ls x5_h;
(* ror	x5, x26, #36                                #! PC = 0xaaaaaaaaab34 *)
split x26_h x26_l x26 36;
shl x26_ls x26_l (64-36)@uint64;
add x5 x26_ls x26_h;
(* ror	x10, x30, #63                               #! PC = 0xaaaaaaaaab38 *)
split x30_h x30_l x30 63;
shl x30_ls x30_l (64-63)@uint64;
add x10 x30_ls x30_h;
(* ror	x15, x28, #37                               #! PC = 0xaaaaaaaaab3c *)
split x28_h x28_l x28 37;
shl x28_ls x28_l (64-37)@uint64;
add x15 x28_ls x28_h;
(* ror	x20, x27, #2                                #! PC = 0xaaaaaaaaab40 *)
split x27_h x27_l x27 2;
shl x27_ls x27_l (64-2)@uint64;
add x20 x27_ls x27_h;
(* bic	x26, x2, x1                                 #! PC = 0xaaaaaaaaab44 *)
not x1_not@uint64 x1;
and x26@uint64 x2 x1_not;
(* bic	x27, x3, x2                                 #! PC = 0xaaaaaaaaab48 *)
not x2_not@uint64 x2;
and x27@uint64 x3 x2_not;
(* bic	x28, x0, x4                                 #! PC = 0xaaaaaaaaab4c *)
not x4_not@uint64 x4;
and x28@uint64 x0 x4_not;
(* bic	x30, x1, x0                                 #! PC = 0xaaaaaaaaab50 *)
not x0_not@uint64 x0;
and x30@uint64 x1 x0_not;
(* eor	x0, x0, x26                                 #! PC = 0xaaaaaaaaab54 *)
xor x0@uint64 x0 x26;
(* bic	x26, x4, x3                                 #! PC = 0xaaaaaaaaab58 *)
not x3_not@uint64 x3;
and x26@uint64 x4 x3_not;
(* eor	x1, x1, x27                                 #! PC = 0xaaaaaaaaab5c *)
xor x1@uint64 x1 x27;
(* ldr	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; Value = 0x0000aaaaaaaaa9a8; PC = 0xaaaaaaaaab60 *)
mov x27 L0xffffffffe8d0;
(* eor	x3, x3, x28                                 #! PC = 0xaaaaaaaaab64 *)
xor x3@uint64 x3 x28;
(* eor	x4, x4, x30                                 #! PC = 0xaaaaaaaaab68 *)
xor x4@uint64 x4 x30;
(* eor	x2, x2, x26                                 #! PC = 0xaaaaaaaaab6c *)
xor x2@uint64 x2 x26;
(* ldr	x30, [x27], #8                              #! EA = L0xaaaaaaaaa9a8; Value = 0x800000000000008b; PC = 0xaaaaaaaaab70 *)
mov x30 L0xaaaaaaaaa9a8;
(* bic	x26, x7, x6                                 #! PC = 0xaaaaaaaaab74 *)
not x6_not@uint64 x6;
and x26@uint64 x7 x6_not;
(* str	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; PC = 0xaaaaaaaaab7c *)
mov L0xffffffffe8d0 x27;
(* bic	x27, x8, x7                                 #! PC = 0xaaaaaaaaab80 *)
not x7_not@uint64 x7;
and x27@uint64 x8 x7_not;
(* bic	x28, x5, x9                                 #! PC = 0xaaaaaaaaab84 *)
not x9_not@uint64 x9;
and x28@uint64 x5 x9_not;
(* eor	x0, x0, x30                                 #! PC = 0xaaaaaaaaab88 *)
xor x0@uint64 x0 x30;
(* bic	x30, x6, x5                                 #! PC = 0xaaaaaaaaab8c *)
not x5_not@uint64 x5;
and x30@uint64 x6 x5_not;
(* eor	x5, x5, x26                                 #! PC = 0xaaaaaaaaab90 *)
xor x5@uint64 x5 x26;
(* bic	x26, x9, x8                                 #! PC = 0xaaaaaaaaab94 *)
not x8_not@uint64 x8;
and x26@uint64 x9 x8_not;
(* eor	x6, x6, x27                                 #! PC = 0xaaaaaaaaab98 *)
xor x6@uint64 x6 x27;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaab9c *)
xor x8@uint64 x8 x28;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaba0 *)
xor x9@uint64 x9 x30;
(* eor	x7, x7, x26                                 #! PC = 0xaaaaaaaaaba4 *)
xor x7@uint64 x7 x26;
(* bic	x26, x12, x11                               #! PC = 0xaaaaaaaaaba8 *)
not x11_not@uint64 x11;
and x26@uint64 x12 x11_not;
(* bic	x27, x13, x12                               #! PC = 0xaaaaaaaaabac *)
not x12_not@uint64 x12;
and x27@uint64 x13 x12_not;
(* bic	x28, x10, x14                               #! PC = 0xaaaaaaaaabb0 *)
not x14_not@uint64 x14;
and x28@uint64 x10 x14_not;
(* bic	x30, x11, x10                               #! PC = 0xaaaaaaaaabb4 *)
not x10_not@uint64 x10;
and x30@uint64 x11 x10_not;
(* eor	x10, x10, x26                               #! PC = 0xaaaaaaaaabb8 *)
xor x10@uint64 x10 x26;
(* bic	x26, x14, x13                               #! PC = 0xaaaaaaaaabbc *)
not x13_not@uint64 x13;
and x26@uint64 x14 x13_not;
(* eor	x11, x11, x27                               #! PC = 0xaaaaaaaaabc0 *)
xor x11@uint64 x11 x27;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaabc4 *)
xor x13@uint64 x13 x28;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaabc8 *)
xor x14@uint64 x14 x30;
(* eor	x12, x12, x26                               #! PC = 0xaaaaaaaaabcc *)
xor x12@uint64 x12 x26;
(* bic	x26, x17, x16                               #! PC = 0xaaaaaaaaabd0 *)
not x16_not@uint64 x16;
and x26@uint64 x17 x16_not;
(* bic	x27, x25, x17                               #! PC = 0xaaaaaaaaabd4 *)
not x17_not@uint64 x17;
and x27@uint64 x25 x17_not;
(* bic	x28, x15, x19                               #! PC = 0xaaaaaaaaabd8 *)
not x19_not@uint64 x19;
and x28@uint64 x15 x19_not;
(* bic	x30, x16, x15                               #! PC = 0xaaaaaaaaabdc *)
not x15_not@uint64 x15;
and x30@uint64 x16 x15_not;
(* eor	x15, x15, x26                               #! PC = 0xaaaaaaaaabe0 *)
xor x15@uint64 x15 x26;
(* bic	x26, x19, x25                               #! PC = 0xaaaaaaaaabe4 *)
not x25_not@uint64 x25;
and x26@uint64 x19 x25_not;
(* eor	x16, x16, x27                               #! PC = 0xaaaaaaaaabe8 *)
xor x16@uint64 x16 x27;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaabec *)
xor x25@uint64 x25 x28;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaabf0 *)
xor x19@uint64 x19 x30;
(* eor	x17, x17, x26                               #! PC = 0xaaaaaaaaabf4 *)
xor x17@uint64 x17 x26;
(* bic	x26, x22, x21                               #! PC = 0xaaaaaaaaabf8 *)
not x21_not@uint64 x21;
and x26@uint64 x22 x21_not;
(* bic	x27, x23, x22                               #! PC = 0xaaaaaaaaabfc *)
not x22_not@uint64 x22;
and x27@uint64 x23 x22_not;
(* bic	x28, x20, x24                               #! PC = 0xaaaaaaaaac00 *)
not x24_not@uint64 x24;
and x28@uint64 x20 x24_not;
(* bic	x30, x21, x20                               #! PC = 0xaaaaaaaaac04 *)
not x20_not@uint64 x20;
and x30@uint64 x21 x20_not;
(* eor	x20, x20, x26                               #! PC = 0xaaaaaaaaac08 *)
xor x20@uint64 x20 x26;
(* bic	x26, x24, x23                               #! PC = 0xaaaaaaaaac0c *)
not x23_not@uint64 x23;
and x26@uint64 x24 x23_not;
(* eor	x21, x21, x27                               #! PC = 0xaaaaaaaaac10 *)
xor x21@uint64 x21 x27;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaac14 *)
xor x23@uint64 x23 x28;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaac18 *)
xor x24@uint64 x24 x30;
(* eor	x22, x22, x26                               #! PC = 0xaaaaaaaaac1c *)
xor x22@uint64 x22 x26;
(* #b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! PC = 0xaaaaaaaaac20 *)
#b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! 0xaaaaaaaaac20 = 0xaaaaaaaaac20;
(* eor	x26, x0, x5                                 #! PC = 0xaaaaaaaaaa10 *)
xor x26@uint64 x0 x5;
(* stp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; PC = 0xaaaaaaaaaa14 *)
mov L0xffffffffe8c0 x4;
mov L0xffffffffe8c8 x9;
(* eor	x27, x1, x6                                 #! PC = 0xaaaaaaaaaa18 *)
xor x27@uint64 x1 x6;
(* eor	x28, x2, x7                                 #! PC = 0xaaaaaaaaaa1c *)
xor x28@uint64 x2 x7;
(* eor	x30, x3, x8                                 #! PC = 0xaaaaaaaaaa20 *)
xor x30@uint64 x3 x8;
(* eor	x4, x4, x9                                  #! PC = 0xaaaaaaaaaa24 *)
xor x4@uint64 x4 x9;
(* eor	x26, x26, x10                               #! PC = 0xaaaaaaaaaa28 *)
xor x26@uint64 x26 x10;
(* eor	x27, x27, x11                               #! PC = 0xaaaaaaaaaa2c *)
xor x27@uint64 x27 x11;
(* eor	x28, x28, x12                               #! PC = 0xaaaaaaaaaa30 *)
xor x28@uint64 x28 x12;
(* eor	x30, x30, x13                               #! PC = 0xaaaaaaaaaa34 *)
xor x30@uint64 x30 x13;
(* eor	x4, x4, x14                                 #! PC = 0xaaaaaaaaaa38 *)
xor x4@uint64 x4 x14;
(* eor	x26, x26, x15                               #! PC = 0xaaaaaaaaaa3c *)
xor x26@uint64 x26 x15;
(* eor	x27, x27, x16                               #! PC = 0xaaaaaaaaaa40 *)
xor x27@uint64 x27 x16;
(* eor	x28, x28, x17                               #! PC = 0xaaaaaaaaaa44 *)
xor x28@uint64 x28 x17;
(* eor	x30, x30, x25                               #! PC = 0xaaaaaaaaaa48 *)
xor x30@uint64 x30 x25;
(* eor	x4, x4, x19                                 #! PC = 0xaaaaaaaaaa4c *)
xor x4@uint64 x4 x19;
(* eor	x26, x26, x20                               #! PC = 0xaaaaaaaaaa50 *)
xor x26@uint64 x26 x20;
(* eor	x28, x28, x22                               #! PC = 0xaaaaaaaaaa54 *)
xor x28@uint64 x28 x22;
(* eor	x27, x27, x21                               #! PC = 0xaaaaaaaaaa58 *)
xor x27@uint64 x27 x21;
(* eor	x30, x30, x23                               #! PC = 0xaaaaaaaaaa5c *)
xor x30@uint64 x30 x23;
(* eor	x4, x4, x24                                 #! PC = 0xaaaaaaaaaa60 *)
xor x4@uint64 x4 x24;
(* eor	x9, x26, x28, ror #63                       #! PC = 0xaaaaaaaaaa64 *)
split x28_h x28_l x28 63;
shl x28_ls x28_l 1@uint64;
add x28_ror x28_ls x28_h;
xor x9@uint64 x26 x28_ror;
(* eor	x1, x1, x9                                  #! PC = 0xaaaaaaaaaa68 *)
xor x1@uint64 x1 x9;
(* eor	x6, x6, x9                                  #! PC = 0xaaaaaaaaaa6c *)
xor x6@uint64 x6 x9;
(* eor	x11, x11, x9                                #! PC = 0xaaaaaaaaaa70 *)
xor x11@uint64 x11 x9;
(* eor	x16, x16, x9                                #! PC = 0xaaaaaaaaaa74 *)
xor x16@uint64 x16 x9;
(* eor	x21, x21, x9                                #! PC = 0xaaaaaaaaaa78 *)
xor x21@uint64 x21 x9;
(* eor	x9, x27, x30, ror #63                       #! PC = 0xaaaaaaaaaa7c *)
split x30_h x30_l x30 63;
shl x30_ls x30_l 1@uint64;
add x30_ror x30_ls x30_h;
xor x9@uint64 x27 x30_ror;
(* eor	x28, x28, x4, ror #63                       #! PC = 0xaaaaaaaaaa80 *)
split x4_h x4_l x4 63;
shl x4_ls x4_l 1@uint64;
add x4_ror x4_ls x4_h;
xor x28@uint64 x28 x4_ror;
(* eor	x30, x30, x26, ror #63                      #! PC = 0xaaaaaaaaaa84 *)
split x26_h x26_l x26 63;
shl x26_ls x26_l 1@uint64;
add x26_ror x26_ls x26_h;
xor x30@uint64 x30 x26_ror;
(* eor	x4, x4, x27, ror #63                        #! PC = 0xaaaaaaaaaa88 *)
split x27_h x27_l x27 63;
shl x27_ls x27_l 1@uint64;
add x27_ror x27_ls x27_h;
xor x4@uint64 x4 x27_ror;
(* eor	x27, x2, x9                                 #! PC = 0xaaaaaaaaaa8c *)
xor x27@uint64 x2 x9;
(* eor	x7, x7, x9                                  #! PC = 0xaaaaaaaaaa90 *)
xor x7@uint64 x7 x9;
(* eor	x12, x12, x9                                #! PC = 0xaaaaaaaaaa94 *)
xor x12@uint64 x12 x9;
(* eor	x17, x17, x9                                #! PC = 0xaaaaaaaaaa98 *)
xor x17@uint64 x17 x9;
(* eor	x22, x22, x9                                #! PC = 0xaaaaaaaaaa9c *)
xor x22@uint64 x22 x9;
(* eor	x0, x0, x4                                  #! PC = 0xaaaaaaaaaaa0 *)
xor x0@uint64 x0 x4;
(* eor	x5, x5, x4                                  #! PC = 0xaaaaaaaaaaa4 *)
xor x5@uint64 x5 x4;
(* eor	x10, x10, x4                                #! PC = 0xaaaaaaaaaaa8 *)
xor x10@uint64 x10 x4;
(* eor	x15, x15, x4                                #! PC = 0xaaaaaaaaaaac *)
xor x15@uint64 x15 x4;
(* eor	x20, x20, x4                                #! PC = 0xaaaaaaaaaab0 *)
xor x20@uint64 x20 x4;
(* ldp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; Value = 0x53c1198e1e58d75b; PC = 0xaaaaaaaaaab4 *)
mov x4 L0xffffffffe8c0;
mov x9 L0xffffffffe8c8;
(* eor	x26, x3, x28                                #! PC = 0xaaaaaaaaaab8 *)
xor x26@uint64 x3 x28;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaaabc *)
xor x8@uint64 x8 x28;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaaac0 *)
xor x13@uint64 x13 x28;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaaac4 *)
xor x25@uint64 x25 x28;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaaac8 *)
xor x23@uint64 x23 x28;
(* eor	x28, x4, x30                                #! PC = 0xaaaaaaaaaacc *)
xor x28@uint64 x4 x30;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaad0 *)
xor x9@uint64 x9 x30;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaaad4 *)
xor x14@uint64 x14 x30;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaaad8 *)
xor x19@uint64 x19 x30;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaaadc *)
xor x24@uint64 x24 x30;
(* mov	x30, x1                                     #! PC = 0xaaaaaaaaaae0 *)
mov x30 x1;
(* ror	x1, x6, #20                                 #! PC = 0xaaaaaaaaaae4 *)
split x6_h x6_l x6 20;
shl x6_ls x6_l (64-20)@uint64;
add x1 x6_ls x6_h;
(* ror	x2, x12, #21                                #! PC = 0xaaaaaaaaaae8 *)
split x12_h x12_l x12 21;
shl x12_ls x12_l (64-21)@uint64;
add x2 x12_ls x12_h;
(* ror	x3, x25, #43                                #! PC = 0xaaaaaaaaaaec *)
split x25_h x25_l x25 43;
shl x25_ls x25_l (64-43)@uint64;
add x3 x25_ls x25_h;
(* ror	x4, x24, #50                                #! PC = 0xaaaaaaaaaaf0 *)
split x24_h x24_l x24 50;
shl x24_ls x24_l (64-50)@uint64;
add x4 x24_ls x24_h;
(* ror	x6, x9, #44                                 #! PC = 0xaaaaaaaaaaf4 *)
split x9_h x9_l x9 44;
shl x9_ls x9_l (64-44)@uint64;
add x6 x9_ls x9_h;
(* ror	x12, x13, #39                               #! PC = 0xaaaaaaaaaaf8 *)
split x13_h x13_l x13 39;
shl x13_ls x13_l (64-39)@uint64;
add x12 x13_ls x13_h;
(* ror	x25, x17, #49                               #! PC = 0xaaaaaaaaaafc *)
split x17_h x17_l x17 49;
shl x17_ls x17_l (64-49)@uint64;
add x25 x17_ls x17_h;
(* ror	x24, x21, #62                               #! PC = 0xaaaaaaaaab00 *)
split x21_h x21_l x21 62;
shl x21_ls x21_l (64-62)@uint64;
add x24 x21_ls x21_h;
(* ror	x9, x22, #3                                 #! PC = 0xaaaaaaaaab04 *)
split x22_h x22_l x22 3;
shl x22_ls x22_l (64-3)@uint64;
add x9 x22_ls x22_h;
(* ror	x13, x19, #56                               #! PC = 0xaaaaaaaaab08 *)
split x19_h x19_l x19 56;
shl x19_ls x19_l (64-56)@uint64;
add x13 x19_ls x19_h;
(* ror	x17, x11, #54                               #! PC = 0xaaaaaaaaab0c *)
split x11_h x11_l x11 54;
shl x11_ls x11_l (64-54)@uint64;
add x17 x11_ls x11_h;
(* ror	x21, x8, #9                                 #! PC = 0xaaaaaaaaab10 *)
split x8_h x8_l x8 9;
shl x8_ls x8_l (64-9)@uint64;
add x21 x8_ls x8_h;
(* ror	x22, x14, #25                               #! PC = 0xaaaaaaaaab14 *)
split x14_h x14_l x14 25;
shl x14_ls x14_l (64-25)@uint64;
add x22 x14_ls x14_h;
(* ror	x19, x23, #8                                #! PC = 0xaaaaaaaaab18 *)
split x23_h x23_l x23 8;
shl x23_ls x23_l (64-8)@uint64;
add x19 x23_ls x23_h;
(* ror	x11, x7, #58                                #! PC = 0xaaaaaaaaab1c *)
split x7_h x7_l x7 58;
shl x7_ls x7_l (64-58)@uint64;
add x11 x7_ls x7_h;
(* ror	x8, x16, #19                                #! PC = 0xaaaaaaaaab20 *)
split x16_h x16_l x16 19;
shl x16_ls x16_l (64-19)@uint64;
add x8 x16_ls x16_h;
(* ror	x14, x20, #46                               #! PC = 0xaaaaaaaaab24 *)
split x20_h x20_l x20 46;
shl x20_ls x20_l (64-46)@uint64;
add x14 x20_ls x20_h;
(* ror	x23, x15, #23                               #! PC = 0xaaaaaaaaab28 *)
split x15_h x15_l x15 23;
shl x15_ls x15_l (64-23)@uint64;
add x23 x15_ls x15_h;
(* ror	x7, x10, #61                                #! PC = 0xaaaaaaaaab2c *)
split x10_h x10_l x10 61;
shl x10_ls x10_l (64-61)@uint64;
add x7 x10_ls x10_h;
(* ror	x16, x5, #28                                #! PC = 0xaaaaaaaaab30 *)
split x5_h x5_l x5 28;
shl x5_ls x5_l (64-28)@uint64;
add x16 x5_ls x5_h;
(* ror	x5, x26, #36                                #! PC = 0xaaaaaaaaab34 *)
split x26_h x26_l x26 36;
shl x26_ls x26_l (64-36)@uint64;
add x5 x26_ls x26_h;
(* ror	x10, x30, #63                               #! PC = 0xaaaaaaaaab38 *)
split x30_h x30_l x30 63;
shl x30_ls x30_l (64-63)@uint64;
add x10 x30_ls x30_h;
(* ror	x15, x28, #37                               #! PC = 0xaaaaaaaaab3c *)
split x28_h x28_l x28 37;
shl x28_ls x28_l (64-37)@uint64;
add x15 x28_ls x28_h;
(* ror	x20, x27, #2                                #! PC = 0xaaaaaaaaab40 *)
split x27_h x27_l x27 2;
shl x27_ls x27_l (64-2)@uint64;
add x20 x27_ls x27_h;
(* bic	x26, x2, x1                                 #! PC = 0xaaaaaaaaab44 *)
not x1_not@uint64 x1;
and x26@uint64 x2 x1_not;
(* bic	x27, x3, x2                                 #! PC = 0xaaaaaaaaab48 *)
not x2_not@uint64 x2;
and x27@uint64 x3 x2_not;
(* bic	x28, x0, x4                                 #! PC = 0xaaaaaaaaab4c *)
not x4_not@uint64 x4;
and x28@uint64 x0 x4_not;
(* bic	x30, x1, x0                                 #! PC = 0xaaaaaaaaab50 *)
not x0_not@uint64 x0;
and x30@uint64 x1 x0_not;
(* eor	x0, x0, x26                                 #! PC = 0xaaaaaaaaab54 *)
xor x0@uint64 x0 x26;
(* bic	x26, x4, x3                                 #! PC = 0xaaaaaaaaab58 *)
not x3_not@uint64 x3;
and x26@uint64 x4 x3_not;
(* eor	x1, x1, x27                                 #! PC = 0xaaaaaaaaab5c *)
xor x1@uint64 x1 x27;
(* ldr	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; Value = 0x0000aaaaaaaaa9b0; PC = 0xaaaaaaaaab60 *)
mov x27 L0xffffffffe8d0;
(* eor	x3, x3, x28                                 #! PC = 0xaaaaaaaaab64 *)
xor x3@uint64 x3 x28;
(* eor	x4, x4, x30                                 #! PC = 0xaaaaaaaaab68 *)
xor x4@uint64 x4 x30;
(* eor	x2, x2, x26                                 #! PC = 0xaaaaaaaaab6c *)
xor x2@uint64 x2 x26;
(* ldr	x30, [x27], #8                              #! EA = L0xaaaaaaaaa9b0; Value = 0x8000000000008089; PC = 0xaaaaaaaaab70 *)
mov x30 L0xaaaaaaaaa9b0;
(* bic	x26, x7, x6                                 #! PC = 0xaaaaaaaaab74 *)
not x6_not@uint64 x6;
and x26@uint64 x7 x6_not;
(* str	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; PC = 0xaaaaaaaaab7c *)
mov L0xffffffffe8d0 x27;
(* bic	x27, x8, x7                                 #! PC = 0xaaaaaaaaab80 *)
not x7_not@uint64 x7;
and x27@uint64 x8 x7_not;
(* bic	x28, x5, x9                                 #! PC = 0xaaaaaaaaab84 *)
not x9_not@uint64 x9;
and x28@uint64 x5 x9_not;
(* eor	x0, x0, x30                                 #! PC = 0xaaaaaaaaab88 *)
xor x0@uint64 x0 x30;
(* bic	x30, x6, x5                                 #! PC = 0xaaaaaaaaab8c *)
not x5_not@uint64 x5;
and x30@uint64 x6 x5_not;
(* eor	x5, x5, x26                                 #! PC = 0xaaaaaaaaab90 *)
xor x5@uint64 x5 x26;
(* bic	x26, x9, x8                                 #! PC = 0xaaaaaaaaab94 *)
not x8_not@uint64 x8;
and x26@uint64 x9 x8_not;
(* eor	x6, x6, x27                                 #! PC = 0xaaaaaaaaab98 *)
xor x6@uint64 x6 x27;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaab9c *)
xor x8@uint64 x8 x28;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaba0 *)
xor x9@uint64 x9 x30;
(* eor	x7, x7, x26                                 #! PC = 0xaaaaaaaaaba4 *)
xor x7@uint64 x7 x26;
(* bic	x26, x12, x11                               #! PC = 0xaaaaaaaaaba8 *)
not x11_not@uint64 x11;
and x26@uint64 x12 x11_not;
(* bic	x27, x13, x12                               #! PC = 0xaaaaaaaaabac *)
not x12_not@uint64 x12;
and x27@uint64 x13 x12_not;
(* bic	x28, x10, x14                               #! PC = 0xaaaaaaaaabb0 *)
not x14_not@uint64 x14;
and x28@uint64 x10 x14_not;
(* bic	x30, x11, x10                               #! PC = 0xaaaaaaaaabb4 *)
not x10_not@uint64 x10;
and x30@uint64 x11 x10_not;
(* eor	x10, x10, x26                               #! PC = 0xaaaaaaaaabb8 *)
xor x10@uint64 x10 x26;
(* bic	x26, x14, x13                               #! PC = 0xaaaaaaaaabbc *)
not x13_not@uint64 x13;
and x26@uint64 x14 x13_not;
(* eor	x11, x11, x27                               #! PC = 0xaaaaaaaaabc0 *)
xor x11@uint64 x11 x27;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaabc4 *)
xor x13@uint64 x13 x28;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaabc8 *)
xor x14@uint64 x14 x30;
(* eor	x12, x12, x26                               #! PC = 0xaaaaaaaaabcc *)
xor x12@uint64 x12 x26;
(* bic	x26, x17, x16                               #! PC = 0xaaaaaaaaabd0 *)
not x16_not@uint64 x16;
and x26@uint64 x17 x16_not;
(* bic	x27, x25, x17                               #! PC = 0xaaaaaaaaabd4 *)
not x17_not@uint64 x17;
and x27@uint64 x25 x17_not;
(* bic	x28, x15, x19                               #! PC = 0xaaaaaaaaabd8 *)
not x19_not@uint64 x19;
and x28@uint64 x15 x19_not;
(* bic	x30, x16, x15                               #! PC = 0xaaaaaaaaabdc *)
not x15_not@uint64 x15;
and x30@uint64 x16 x15_not;
(* eor	x15, x15, x26                               #! PC = 0xaaaaaaaaabe0 *)
xor x15@uint64 x15 x26;
(* bic	x26, x19, x25                               #! PC = 0xaaaaaaaaabe4 *)
not x25_not@uint64 x25;
and x26@uint64 x19 x25_not;
(* eor	x16, x16, x27                               #! PC = 0xaaaaaaaaabe8 *)
xor x16@uint64 x16 x27;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaabec *)
xor x25@uint64 x25 x28;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaabf0 *)
xor x19@uint64 x19 x30;
(* eor	x17, x17, x26                               #! PC = 0xaaaaaaaaabf4 *)
xor x17@uint64 x17 x26;
(* bic	x26, x22, x21                               #! PC = 0xaaaaaaaaabf8 *)
not x21_not@uint64 x21;
and x26@uint64 x22 x21_not;
(* bic	x27, x23, x22                               #! PC = 0xaaaaaaaaabfc *)
not x22_not@uint64 x22;
and x27@uint64 x23 x22_not;
(* bic	x28, x20, x24                               #! PC = 0xaaaaaaaaac00 *)
not x24_not@uint64 x24;
and x28@uint64 x20 x24_not;
(* bic	x30, x21, x20                               #! PC = 0xaaaaaaaaac04 *)
not x20_not@uint64 x20;
and x30@uint64 x21 x20_not;
(* eor	x20, x20, x26                               #! PC = 0xaaaaaaaaac08 *)
xor x20@uint64 x20 x26;
(* bic	x26, x24, x23                               #! PC = 0xaaaaaaaaac0c *)
not x23_not@uint64 x23;
and x26@uint64 x24 x23_not;
(* eor	x21, x21, x27                               #! PC = 0xaaaaaaaaac10 *)
xor x21@uint64 x21 x27;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaac14 *)
xor x23@uint64 x23 x28;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaac18 *)
xor x24@uint64 x24 x30;
(* eor	x22, x22, x26                               #! PC = 0xaaaaaaaaac1c *)
xor x22@uint64 x22 x26;
(* #b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! PC = 0xaaaaaaaaac20 *)
#b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! 0xaaaaaaaaac20 = 0xaaaaaaaaac20;
(* eor	x26, x0, x5                                 #! PC = 0xaaaaaaaaaa10 *)
xor x26@uint64 x0 x5;
(* stp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; PC = 0xaaaaaaaaaa14 *)
mov L0xffffffffe8c0 x4;
mov L0xffffffffe8c8 x9;
(* eor	x27, x1, x6                                 #! PC = 0xaaaaaaaaaa18 *)
xor x27@uint64 x1 x6;
(* eor	x28, x2, x7                                 #! PC = 0xaaaaaaaaaa1c *)
xor x28@uint64 x2 x7;
(* eor	x30, x3, x8                                 #! PC = 0xaaaaaaaaaa20 *)
xor x30@uint64 x3 x8;
(* eor	x4, x4, x9                                  #! PC = 0xaaaaaaaaaa24 *)
xor x4@uint64 x4 x9;
(* eor	x26, x26, x10                               #! PC = 0xaaaaaaaaaa28 *)
xor x26@uint64 x26 x10;
(* eor	x27, x27, x11                               #! PC = 0xaaaaaaaaaa2c *)
xor x27@uint64 x27 x11;
(* eor	x28, x28, x12                               #! PC = 0xaaaaaaaaaa30 *)
xor x28@uint64 x28 x12;
(* eor	x30, x30, x13                               #! PC = 0xaaaaaaaaaa34 *)
xor x30@uint64 x30 x13;
(* eor	x4, x4, x14                                 #! PC = 0xaaaaaaaaaa38 *)
xor x4@uint64 x4 x14;
(* eor	x26, x26, x15                               #! PC = 0xaaaaaaaaaa3c *)
xor x26@uint64 x26 x15;
(* eor	x27, x27, x16                               #! PC = 0xaaaaaaaaaa40 *)
xor x27@uint64 x27 x16;
(* eor	x28, x28, x17                               #! PC = 0xaaaaaaaaaa44 *)
xor x28@uint64 x28 x17;
(* eor	x30, x30, x25                               #! PC = 0xaaaaaaaaaa48 *)
xor x30@uint64 x30 x25;
(* eor	x4, x4, x19                                 #! PC = 0xaaaaaaaaaa4c *)
xor x4@uint64 x4 x19;
(* eor	x26, x26, x20                               #! PC = 0xaaaaaaaaaa50 *)
xor x26@uint64 x26 x20;
(* eor	x28, x28, x22                               #! PC = 0xaaaaaaaaaa54 *)
xor x28@uint64 x28 x22;
(* eor	x27, x27, x21                               #! PC = 0xaaaaaaaaaa58 *)
xor x27@uint64 x27 x21;
(* eor	x30, x30, x23                               #! PC = 0xaaaaaaaaaa5c *)
xor x30@uint64 x30 x23;
(* eor	x4, x4, x24                                 #! PC = 0xaaaaaaaaaa60 *)
xor x4@uint64 x4 x24;
(* eor	x9, x26, x28, ror #63                       #! PC = 0xaaaaaaaaaa64 *)
split x28_h x28_l x28 63;
shl x28_ls x28_l 1@uint64;
add x28_ror x28_ls x28_h;
xor x9@uint64 x26 x28_ror;
(* eor	x1, x1, x9                                  #! PC = 0xaaaaaaaaaa68 *)
xor x1@uint64 x1 x9;
(* eor	x6, x6, x9                                  #! PC = 0xaaaaaaaaaa6c *)
xor x6@uint64 x6 x9;
(* eor	x11, x11, x9                                #! PC = 0xaaaaaaaaaa70 *)
xor x11@uint64 x11 x9;
(* eor	x16, x16, x9                                #! PC = 0xaaaaaaaaaa74 *)
xor x16@uint64 x16 x9;
(* eor	x21, x21, x9                                #! PC = 0xaaaaaaaaaa78 *)
xor x21@uint64 x21 x9;
(* eor	x9, x27, x30, ror #63                       #! PC = 0xaaaaaaaaaa7c *)
split x30_h x30_l x30 63;
shl x30_ls x30_l 1@uint64;
add x30_ror x30_ls x30_h;
xor x9@uint64 x27 x30_ror;
(* eor	x28, x28, x4, ror #63                       #! PC = 0xaaaaaaaaaa80 *)
split x4_h x4_l x4 63;
shl x4_ls x4_l 1@uint64;
add x4_ror x4_ls x4_h;
xor x28@uint64 x28 x4_ror;
(* eor	x30, x30, x26, ror #63                      #! PC = 0xaaaaaaaaaa84 *)
split x26_h x26_l x26 63;
shl x26_ls x26_l 1@uint64;
add x26_ror x26_ls x26_h;
xor x30@uint64 x30 x26_ror;
(* eor	x4, x4, x27, ror #63                        #! PC = 0xaaaaaaaaaa88 *)
split x27_h x27_l x27 63;
shl x27_ls x27_l 1@uint64;
add x27_ror x27_ls x27_h;
xor x4@uint64 x4 x27_ror;
(* eor	x27, x2, x9                                 #! PC = 0xaaaaaaaaaa8c *)
xor x27@uint64 x2 x9;
(* eor	x7, x7, x9                                  #! PC = 0xaaaaaaaaaa90 *)
xor x7@uint64 x7 x9;
(* eor	x12, x12, x9                                #! PC = 0xaaaaaaaaaa94 *)
xor x12@uint64 x12 x9;
(* eor	x17, x17, x9                                #! PC = 0xaaaaaaaaaa98 *)
xor x17@uint64 x17 x9;
(* eor	x22, x22, x9                                #! PC = 0xaaaaaaaaaa9c *)
xor x22@uint64 x22 x9;
(* eor	x0, x0, x4                                  #! PC = 0xaaaaaaaaaaa0 *)
xor x0@uint64 x0 x4;
(* eor	x5, x5, x4                                  #! PC = 0xaaaaaaaaaaa4 *)
xor x5@uint64 x5 x4;
(* eor	x10, x10, x4                                #! PC = 0xaaaaaaaaaaa8 *)
xor x10@uint64 x10 x4;
(* eor	x15, x15, x4                                #! PC = 0xaaaaaaaaaaac *)
xor x15@uint64 x15 x4;
(* eor	x20, x20, x4                                #! PC = 0xaaaaaaaaaab0 *)
xor x20@uint64 x20 x4;
(* ldp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; Value = 0x3f0b351f4f18969a; PC = 0xaaaaaaaaaab4 *)
mov x4 L0xffffffffe8c0;
mov x9 L0xffffffffe8c8;
(* eor	x26, x3, x28                                #! PC = 0xaaaaaaaaaab8 *)
xor x26@uint64 x3 x28;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaaabc *)
xor x8@uint64 x8 x28;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaaac0 *)
xor x13@uint64 x13 x28;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaaac4 *)
xor x25@uint64 x25 x28;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaaac8 *)
xor x23@uint64 x23 x28;
(* eor	x28, x4, x30                                #! PC = 0xaaaaaaaaaacc *)
xor x28@uint64 x4 x30;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaad0 *)
xor x9@uint64 x9 x30;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaaad4 *)
xor x14@uint64 x14 x30;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaaad8 *)
xor x19@uint64 x19 x30;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaaadc *)
xor x24@uint64 x24 x30;
(* mov	x30, x1                                     #! PC = 0xaaaaaaaaaae0 *)
mov x30 x1;
(* ror	x1, x6, #20                                 #! PC = 0xaaaaaaaaaae4 *)
split x6_h x6_l x6 20;
shl x6_ls x6_l (64-20)@uint64;
add x1 x6_ls x6_h;
(* ror	x2, x12, #21                                #! PC = 0xaaaaaaaaaae8 *)
split x12_h x12_l x12 21;
shl x12_ls x12_l (64-21)@uint64;
add x2 x12_ls x12_h;
(* ror	x3, x25, #43                                #! PC = 0xaaaaaaaaaaec *)
split x25_h x25_l x25 43;
shl x25_ls x25_l (64-43)@uint64;
add x3 x25_ls x25_h;
(* ror	x4, x24, #50                                #! PC = 0xaaaaaaaaaaf0 *)
split x24_h x24_l x24 50;
shl x24_ls x24_l (64-50)@uint64;
add x4 x24_ls x24_h;
(* ror	x6, x9, #44                                 #! PC = 0xaaaaaaaaaaf4 *)
split x9_h x9_l x9 44;
shl x9_ls x9_l (64-44)@uint64;
add x6 x9_ls x9_h;
(* ror	x12, x13, #39                               #! PC = 0xaaaaaaaaaaf8 *)
split x13_h x13_l x13 39;
shl x13_ls x13_l (64-39)@uint64;
add x12 x13_ls x13_h;
(* ror	x25, x17, #49                               #! PC = 0xaaaaaaaaaafc *)
split x17_h x17_l x17 49;
shl x17_ls x17_l (64-49)@uint64;
add x25 x17_ls x17_h;
(* ror	x24, x21, #62                               #! PC = 0xaaaaaaaaab00 *)
split x21_h x21_l x21 62;
shl x21_ls x21_l (64-62)@uint64;
add x24 x21_ls x21_h;
(* ror	x9, x22, #3                                 #! PC = 0xaaaaaaaaab04 *)
split x22_h x22_l x22 3;
shl x22_ls x22_l (64-3)@uint64;
add x9 x22_ls x22_h;
(* ror	x13, x19, #56                               #! PC = 0xaaaaaaaaab08 *)
split x19_h x19_l x19 56;
shl x19_ls x19_l (64-56)@uint64;
add x13 x19_ls x19_h;
(* ror	x17, x11, #54                               #! PC = 0xaaaaaaaaab0c *)
split x11_h x11_l x11 54;
shl x11_ls x11_l (64-54)@uint64;
add x17 x11_ls x11_h;
(* ror	x21, x8, #9                                 #! PC = 0xaaaaaaaaab10 *)
split x8_h x8_l x8 9;
shl x8_ls x8_l (64-9)@uint64;
add x21 x8_ls x8_h;
(* ror	x22, x14, #25                               #! PC = 0xaaaaaaaaab14 *)
split x14_h x14_l x14 25;
shl x14_ls x14_l (64-25)@uint64;
add x22 x14_ls x14_h;
(* ror	x19, x23, #8                                #! PC = 0xaaaaaaaaab18 *)
split x23_h x23_l x23 8;
shl x23_ls x23_l (64-8)@uint64;
add x19 x23_ls x23_h;
(* ror	x11, x7, #58                                #! PC = 0xaaaaaaaaab1c *)
split x7_h x7_l x7 58;
shl x7_ls x7_l (64-58)@uint64;
add x11 x7_ls x7_h;
(* ror	x8, x16, #19                                #! PC = 0xaaaaaaaaab20 *)
split x16_h x16_l x16 19;
shl x16_ls x16_l (64-19)@uint64;
add x8 x16_ls x16_h;
(* ror	x14, x20, #46                               #! PC = 0xaaaaaaaaab24 *)
split x20_h x20_l x20 46;
shl x20_ls x20_l (64-46)@uint64;
add x14 x20_ls x20_h;
(* ror	x23, x15, #23                               #! PC = 0xaaaaaaaaab28 *)
split x15_h x15_l x15 23;
shl x15_ls x15_l (64-23)@uint64;
add x23 x15_ls x15_h;
(* ror	x7, x10, #61                                #! PC = 0xaaaaaaaaab2c *)
split x10_h x10_l x10 61;
shl x10_ls x10_l (64-61)@uint64;
add x7 x10_ls x10_h;
(* ror	x16, x5, #28                                #! PC = 0xaaaaaaaaab30 *)
split x5_h x5_l x5 28;
shl x5_ls x5_l (64-28)@uint64;
add x16 x5_ls x5_h;
(* ror	x5, x26, #36                                #! PC = 0xaaaaaaaaab34 *)
split x26_h x26_l x26 36;
shl x26_ls x26_l (64-36)@uint64;
add x5 x26_ls x26_h;
(* ror	x10, x30, #63                               #! PC = 0xaaaaaaaaab38 *)
split x30_h x30_l x30 63;
shl x30_ls x30_l (64-63)@uint64;
add x10 x30_ls x30_h;
(* ror	x15, x28, #37                               #! PC = 0xaaaaaaaaab3c *)
split x28_h x28_l x28 37;
shl x28_ls x28_l (64-37)@uint64;
add x15 x28_ls x28_h;
(* ror	x20, x27, #2                                #! PC = 0xaaaaaaaaab40 *)
split x27_h x27_l x27 2;
shl x27_ls x27_l (64-2)@uint64;
add x20 x27_ls x27_h;
(* bic	x26, x2, x1                                 #! PC = 0xaaaaaaaaab44 *)
not x1_not@uint64 x1;
and x26@uint64 x2 x1_not;
(* bic	x27, x3, x2                                 #! PC = 0xaaaaaaaaab48 *)
not x2_not@uint64 x2;
and x27@uint64 x3 x2_not;
(* bic	x28, x0, x4                                 #! PC = 0xaaaaaaaaab4c *)
not x4_not@uint64 x4;
and x28@uint64 x0 x4_not;
(* bic	x30, x1, x0                                 #! PC = 0xaaaaaaaaab50 *)
not x0_not@uint64 x0;
and x30@uint64 x1 x0_not;
(* eor	x0, x0, x26                                 #! PC = 0xaaaaaaaaab54 *)
xor x0@uint64 x0 x26;
(* bic	x26, x4, x3                                 #! PC = 0xaaaaaaaaab58 *)
not x3_not@uint64 x3;
and x26@uint64 x4 x3_not;
(* eor	x1, x1, x27                                 #! PC = 0xaaaaaaaaab5c *)
xor x1@uint64 x1 x27;
(* ldr	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; Value = 0x0000aaaaaaaaa9b8; PC = 0xaaaaaaaaab60 *)
mov x27 L0xffffffffe8d0;
(* eor	x3, x3, x28                                 #! PC = 0xaaaaaaaaab64 *)
xor x3@uint64 x3 x28;
(* eor	x4, x4, x30                                 #! PC = 0xaaaaaaaaab68 *)
xor x4@uint64 x4 x30;
(* eor	x2, x2, x26                                 #! PC = 0xaaaaaaaaab6c *)
xor x2@uint64 x2 x26;
(* ldr	x30, [x27], #8                              #! EA = L0xaaaaaaaaa9b8; Value = 0x8000000000008003; PC = 0xaaaaaaaaab70 *)
mov x30 L0xaaaaaaaaa9b8;
(* bic	x26, x7, x6                                 #! PC = 0xaaaaaaaaab74 *)
not x6_not@uint64 x6;
and x26@uint64 x7 x6_not;
(* str	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; PC = 0xaaaaaaaaab7c *)
mov L0xffffffffe8d0 x27;
(* bic	x27, x8, x7                                 #! PC = 0xaaaaaaaaab80 *)
not x7_not@uint64 x7;
and x27@uint64 x8 x7_not;
(* bic	x28, x5, x9                                 #! PC = 0xaaaaaaaaab84 *)
not x9_not@uint64 x9;
and x28@uint64 x5 x9_not;
(* eor	x0, x0, x30                                 #! PC = 0xaaaaaaaaab88 *)
xor x0@uint64 x0 x30;
(* bic	x30, x6, x5                                 #! PC = 0xaaaaaaaaab8c *)
not x5_not@uint64 x5;
and x30@uint64 x6 x5_not;
(* eor	x5, x5, x26                                 #! PC = 0xaaaaaaaaab90 *)
xor x5@uint64 x5 x26;
(* bic	x26, x9, x8                                 #! PC = 0xaaaaaaaaab94 *)
not x8_not@uint64 x8;
and x26@uint64 x9 x8_not;
(* eor	x6, x6, x27                                 #! PC = 0xaaaaaaaaab98 *)
xor x6@uint64 x6 x27;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaab9c *)
xor x8@uint64 x8 x28;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaba0 *)
xor x9@uint64 x9 x30;
(* eor	x7, x7, x26                                 #! PC = 0xaaaaaaaaaba4 *)
xor x7@uint64 x7 x26;
(* bic	x26, x12, x11                               #! PC = 0xaaaaaaaaaba8 *)
not x11_not@uint64 x11;
and x26@uint64 x12 x11_not;
(* bic	x27, x13, x12                               #! PC = 0xaaaaaaaaabac *)
not x12_not@uint64 x12;
and x27@uint64 x13 x12_not;
(* bic	x28, x10, x14                               #! PC = 0xaaaaaaaaabb0 *)
not x14_not@uint64 x14;
and x28@uint64 x10 x14_not;
(* bic	x30, x11, x10                               #! PC = 0xaaaaaaaaabb4 *)
not x10_not@uint64 x10;
and x30@uint64 x11 x10_not;
(* eor	x10, x10, x26                               #! PC = 0xaaaaaaaaabb8 *)
xor x10@uint64 x10 x26;
(* bic	x26, x14, x13                               #! PC = 0xaaaaaaaaabbc *)
not x13_not@uint64 x13;
and x26@uint64 x14 x13_not;
(* eor	x11, x11, x27                               #! PC = 0xaaaaaaaaabc0 *)
xor x11@uint64 x11 x27;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaabc4 *)
xor x13@uint64 x13 x28;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaabc8 *)
xor x14@uint64 x14 x30;
(* eor	x12, x12, x26                               #! PC = 0xaaaaaaaaabcc *)
xor x12@uint64 x12 x26;
(* bic	x26, x17, x16                               #! PC = 0xaaaaaaaaabd0 *)
not x16_not@uint64 x16;
and x26@uint64 x17 x16_not;
(* bic	x27, x25, x17                               #! PC = 0xaaaaaaaaabd4 *)
not x17_not@uint64 x17;
and x27@uint64 x25 x17_not;
(* bic	x28, x15, x19                               #! PC = 0xaaaaaaaaabd8 *)
not x19_not@uint64 x19;
and x28@uint64 x15 x19_not;
(* bic	x30, x16, x15                               #! PC = 0xaaaaaaaaabdc *)
not x15_not@uint64 x15;
and x30@uint64 x16 x15_not;
(* eor	x15, x15, x26                               #! PC = 0xaaaaaaaaabe0 *)
xor x15@uint64 x15 x26;
(* bic	x26, x19, x25                               #! PC = 0xaaaaaaaaabe4 *)
not x25_not@uint64 x25;
and x26@uint64 x19 x25_not;
(* eor	x16, x16, x27                               #! PC = 0xaaaaaaaaabe8 *)
xor x16@uint64 x16 x27;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaabec *)
xor x25@uint64 x25 x28;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaabf0 *)
xor x19@uint64 x19 x30;
(* eor	x17, x17, x26                               #! PC = 0xaaaaaaaaabf4 *)
xor x17@uint64 x17 x26;
(* bic	x26, x22, x21                               #! PC = 0xaaaaaaaaabf8 *)
not x21_not@uint64 x21;
and x26@uint64 x22 x21_not;
(* bic	x27, x23, x22                               #! PC = 0xaaaaaaaaabfc *)
not x22_not@uint64 x22;
and x27@uint64 x23 x22_not;
(* bic	x28, x20, x24                               #! PC = 0xaaaaaaaaac00 *)
not x24_not@uint64 x24;
and x28@uint64 x20 x24_not;
(* bic	x30, x21, x20                               #! PC = 0xaaaaaaaaac04 *)
not x20_not@uint64 x20;
and x30@uint64 x21 x20_not;
(* eor	x20, x20, x26                               #! PC = 0xaaaaaaaaac08 *)
xor x20@uint64 x20 x26;
(* bic	x26, x24, x23                               #! PC = 0xaaaaaaaaac0c *)
not x23_not@uint64 x23;
and x26@uint64 x24 x23_not;
(* eor	x21, x21, x27                               #! PC = 0xaaaaaaaaac10 *)
xor x21@uint64 x21 x27;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaac14 *)
xor x23@uint64 x23 x28;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaac18 *)
xor x24@uint64 x24 x30;
(* eor	x22, x22, x26                               #! PC = 0xaaaaaaaaac1c *)
xor x22@uint64 x22 x26;
(* #b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! PC = 0xaaaaaaaaac20 *)
#b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! 0xaaaaaaaaac20 = 0xaaaaaaaaac20;
(* eor	x26, x0, x5                                 #! PC = 0xaaaaaaaaaa10 *)
xor x26@uint64 x0 x5;
(* stp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; PC = 0xaaaaaaaaaa14 *)
mov L0xffffffffe8c0 x4;
mov L0xffffffffe8c8 x9;
(* eor	x27, x1, x6                                 #! PC = 0xaaaaaaaaaa18 *)
xor x27@uint64 x1 x6;
(* eor	x28, x2, x7                                 #! PC = 0xaaaaaaaaaa1c *)
xor x28@uint64 x2 x7;
(* eor	x30, x3, x8                                 #! PC = 0xaaaaaaaaaa20 *)
xor x30@uint64 x3 x8;
(* eor	x4, x4, x9                                  #! PC = 0xaaaaaaaaaa24 *)
xor x4@uint64 x4 x9;
(* eor	x26, x26, x10                               #! PC = 0xaaaaaaaaaa28 *)
xor x26@uint64 x26 x10;
(* eor	x27, x27, x11                               #! PC = 0xaaaaaaaaaa2c *)
xor x27@uint64 x27 x11;
(* eor	x28, x28, x12                               #! PC = 0xaaaaaaaaaa30 *)
xor x28@uint64 x28 x12;
(* eor	x30, x30, x13                               #! PC = 0xaaaaaaaaaa34 *)
xor x30@uint64 x30 x13;
(* eor	x4, x4, x14                                 #! PC = 0xaaaaaaaaaa38 *)
xor x4@uint64 x4 x14;
(* eor	x26, x26, x15                               #! PC = 0xaaaaaaaaaa3c *)
xor x26@uint64 x26 x15;
(* eor	x27, x27, x16                               #! PC = 0xaaaaaaaaaa40 *)
xor x27@uint64 x27 x16;
(* eor	x28, x28, x17                               #! PC = 0xaaaaaaaaaa44 *)
xor x28@uint64 x28 x17;
(* eor	x30, x30, x25                               #! PC = 0xaaaaaaaaaa48 *)
xor x30@uint64 x30 x25;
(* eor	x4, x4, x19                                 #! PC = 0xaaaaaaaaaa4c *)
xor x4@uint64 x4 x19;
(* eor	x26, x26, x20                               #! PC = 0xaaaaaaaaaa50 *)
xor x26@uint64 x26 x20;
(* eor	x28, x28, x22                               #! PC = 0xaaaaaaaaaa54 *)
xor x28@uint64 x28 x22;
(* eor	x27, x27, x21                               #! PC = 0xaaaaaaaaaa58 *)
xor x27@uint64 x27 x21;
(* eor	x30, x30, x23                               #! PC = 0xaaaaaaaaaa5c *)
xor x30@uint64 x30 x23;
(* eor	x4, x4, x24                                 #! PC = 0xaaaaaaaaaa60 *)
xor x4@uint64 x4 x24;
(* eor	x9, x26, x28, ror #63                       #! PC = 0xaaaaaaaaaa64 *)
split x28_h x28_l x28 63;
shl x28_ls x28_l 1@uint64;
add x28_ror x28_ls x28_h;
xor x9@uint64 x26 x28_ror;
(* eor	x1, x1, x9                                  #! PC = 0xaaaaaaaaaa68 *)
xor x1@uint64 x1 x9;
(* eor	x6, x6, x9                                  #! PC = 0xaaaaaaaaaa6c *)
xor x6@uint64 x6 x9;
(* eor	x11, x11, x9                                #! PC = 0xaaaaaaaaaa70 *)
xor x11@uint64 x11 x9;
(* eor	x16, x16, x9                                #! PC = 0xaaaaaaaaaa74 *)
xor x16@uint64 x16 x9;
(* eor	x21, x21, x9                                #! PC = 0xaaaaaaaaaa78 *)
xor x21@uint64 x21 x9;
(* eor	x9, x27, x30, ror #63                       #! PC = 0xaaaaaaaaaa7c *)
split x30_h x30_l x30 63;
shl x30_ls x30_l 1@uint64;
add x30_ror x30_ls x30_h;
xor x9@uint64 x27 x30_ror;
(* eor	x28, x28, x4, ror #63                       #! PC = 0xaaaaaaaaaa80 *)
split x4_h x4_l x4 63;
shl x4_ls x4_l 1@uint64;
add x4_ror x4_ls x4_h;
xor x28@uint64 x28 x4_ror;
(* eor	x30, x30, x26, ror #63                      #! PC = 0xaaaaaaaaaa84 *)
split x26_h x26_l x26 63;
shl x26_ls x26_l 1@uint64;
add x26_ror x26_ls x26_h;
xor x30@uint64 x30 x26_ror;
(* eor	x4, x4, x27, ror #63                        #! PC = 0xaaaaaaaaaa88 *)
split x27_h x27_l x27 63;
shl x27_ls x27_l 1@uint64;
add x27_ror x27_ls x27_h;
xor x4@uint64 x4 x27_ror;
(* eor	x27, x2, x9                                 #! PC = 0xaaaaaaaaaa8c *)
xor x27@uint64 x2 x9;
(* eor	x7, x7, x9                                  #! PC = 0xaaaaaaaaaa90 *)
xor x7@uint64 x7 x9;
(* eor	x12, x12, x9                                #! PC = 0xaaaaaaaaaa94 *)
xor x12@uint64 x12 x9;
(* eor	x17, x17, x9                                #! PC = 0xaaaaaaaaaa98 *)
xor x17@uint64 x17 x9;
(* eor	x22, x22, x9                                #! PC = 0xaaaaaaaaaa9c *)
xor x22@uint64 x22 x9;
(* eor	x0, x0, x4                                  #! PC = 0xaaaaaaaaaaa0 *)
xor x0@uint64 x0 x4;
(* eor	x5, x5, x4                                  #! PC = 0xaaaaaaaaaaa4 *)
xor x5@uint64 x5 x4;
(* eor	x10, x10, x4                                #! PC = 0xaaaaaaaaaaa8 *)
xor x10@uint64 x10 x4;
(* eor	x15, x15, x4                                #! PC = 0xaaaaaaaaaaac *)
xor x15@uint64 x15 x4;
(* eor	x20, x20, x4                                #! PC = 0xaaaaaaaaaab0 *)
xor x20@uint64 x20 x4;
(* ldp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; Value = 0xdeaf444f28321586; PC = 0xaaaaaaaaaab4 *)
mov x4 L0xffffffffe8c0;
mov x9 L0xffffffffe8c8;
(* eor	x26, x3, x28                                #! PC = 0xaaaaaaaaaab8 *)
xor x26@uint64 x3 x28;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaaabc *)
xor x8@uint64 x8 x28;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaaac0 *)
xor x13@uint64 x13 x28;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaaac4 *)
xor x25@uint64 x25 x28;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaaac8 *)
xor x23@uint64 x23 x28;
(* eor	x28, x4, x30                                #! PC = 0xaaaaaaaaaacc *)
xor x28@uint64 x4 x30;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaad0 *)
xor x9@uint64 x9 x30;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaaad4 *)
xor x14@uint64 x14 x30;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaaad8 *)
xor x19@uint64 x19 x30;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaaadc *)
xor x24@uint64 x24 x30;
(* mov	x30, x1                                     #! PC = 0xaaaaaaaaaae0 *)
mov x30 x1;
(* ror	x1, x6, #20                                 #! PC = 0xaaaaaaaaaae4 *)
split x6_h x6_l x6 20;
shl x6_ls x6_l (64-20)@uint64;
add x1 x6_ls x6_h;
(* ror	x2, x12, #21                                #! PC = 0xaaaaaaaaaae8 *)
split x12_h x12_l x12 21;
shl x12_ls x12_l (64-21)@uint64;
add x2 x12_ls x12_h;
(* ror	x3, x25, #43                                #! PC = 0xaaaaaaaaaaec *)
split x25_h x25_l x25 43;
shl x25_ls x25_l (64-43)@uint64;
add x3 x25_ls x25_h;
(* ror	x4, x24, #50                                #! PC = 0xaaaaaaaaaaf0 *)
split x24_h x24_l x24 50;
shl x24_ls x24_l (64-50)@uint64;
add x4 x24_ls x24_h;
(* ror	x6, x9, #44                                 #! PC = 0xaaaaaaaaaaf4 *)
split x9_h x9_l x9 44;
shl x9_ls x9_l (64-44)@uint64;
add x6 x9_ls x9_h;
(* ror	x12, x13, #39                               #! PC = 0xaaaaaaaaaaf8 *)
split x13_h x13_l x13 39;
shl x13_ls x13_l (64-39)@uint64;
add x12 x13_ls x13_h;
(* ror	x25, x17, #49                               #! PC = 0xaaaaaaaaaafc *)
split x17_h x17_l x17 49;
shl x17_ls x17_l (64-49)@uint64;
add x25 x17_ls x17_h;
(* ror	x24, x21, #62                               #! PC = 0xaaaaaaaaab00 *)
split x21_h x21_l x21 62;
shl x21_ls x21_l (64-62)@uint64;
add x24 x21_ls x21_h;
(* ror	x9, x22, #3                                 #! PC = 0xaaaaaaaaab04 *)
split x22_h x22_l x22 3;
shl x22_ls x22_l (64-3)@uint64;
add x9 x22_ls x22_h;
(* ror	x13, x19, #56                               #! PC = 0xaaaaaaaaab08 *)
split x19_h x19_l x19 56;
shl x19_ls x19_l (64-56)@uint64;
add x13 x19_ls x19_h;
(* ror	x17, x11, #54                               #! PC = 0xaaaaaaaaab0c *)
split x11_h x11_l x11 54;
shl x11_ls x11_l (64-54)@uint64;
add x17 x11_ls x11_h;
(* ror	x21, x8, #9                                 #! PC = 0xaaaaaaaaab10 *)
split x8_h x8_l x8 9;
shl x8_ls x8_l (64-9)@uint64;
add x21 x8_ls x8_h;
(* ror	x22, x14, #25                               #! PC = 0xaaaaaaaaab14 *)
split x14_h x14_l x14 25;
shl x14_ls x14_l (64-25)@uint64;
add x22 x14_ls x14_h;
(* ror	x19, x23, #8                                #! PC = 0xaaaaaaaaab18 *)
split x23_h x23_l x23 8;
shl x23_ls x23_l (64-8)@uint64;
add x19 x23_ls x23_h;
(* ror	x11, x7, #58                                #! PC = 0xaaaaaaaaab1c *)
split x7_h x7_l x7 58;
shl x7_ls x7_l (64-58)@uint64;
add x11 x7_ls x7_h;
(* ror	x8, x16, #19                                #! PC = 0xaaaaaaaaab20 *)
split x16_h x16_l x16 19;
shl x16_ls x16_l (64-19)@uint64;
add x8 x16_ls x16_h;
(* ror	x14, x20, #46                               #! PC = 0xaaaaaaaaab24 *)
split x20_h x20_l x20 46;
shl x20_ls x20_l (64-46)@uint64;
add x14 x20_ls x20_h;
(* ror	x23, x15, #23                               #! PC = 0xaaaaaaaaab28 *)
split x15_h x15_l x15 23;
shl x15_ls x15_l (64-23)@uint64;
add x23 x15_ls x15_h;
(* ror	x7, x10, #61                                #! PC = 0xaaaaaaaaab2c *)
split x10_h x10_l x10 61;
shl x10_ls x10_l (64-61)@uint64;
add x7 x10_ls x10_h;
(* ror	x16, x5, #28                                #! PC = 0xaaaaaaaaab30 *)
split x5_h x5_l x5 28;
shl x5_ls x5_l (64-28)@uint64;
add x16 x5_ls x5_h;
(* ror	x5, x26, #36                                #! PC = 0xaaaaaaaaab34 *)
split x26_h x26_l x26 36;
shl x26_ls x26_l (64-36)@uint64;
add x5 x26_ls x26_h;
(* ror	x10, x30, #63                               #! PC = 0xaaaaaaaaab38 *)
split x30_h x30_l x30 63;
shl x30_ls x30_l (64-63)@uint64;
add x10 x30_ls x30_h;
(* ror	x15, x28, #37                               #! PC = 0xaaaaaaaaab3c *)
split x28_h x28_l x28 37;
shl x28_ls x28_l (64-37)@uint64;
add x15 x28_ls x28_h;
(* ror	x20, x27, #2                                #! PC = 0xaaaaaaaaab40 *)
split x27_h x27_l x27 2;
shl x27_ls x27_l (64-2)@uint64;
add x20 x27_ls x27_h;
(* bic	x26, x2, x1                                 #! PC = 0xaaaaaaaaab44 *)
not x1_not@uint64 x1;
and x26@uint64 x2 x1_not;
(* bic	x27, x3, x2                                 #! PC = 0xaaaaaaaaab48 *)
not x2_not@uint64 x2;
and x27@uint64 x3 x2_not;
(* bic	x28, x0, x4                                 #! PC = 0xaaaaaaaaab4c *)
not x4_not@uint64 x4;
and x28@uint64 x0 x4_not;
(* bic	x30, x1, x0                                 #! PC = 0xaaaaaaaaab50 *)
not x0_not@uint64 x0;
and x30@uint64 x1 x0_not;
(* eor	x0, x0, x26                                 #! PC = 0xaaaaaaaaab54 *)
xor x0@uint64 x0 x26;
(* bic	x26, x4, x3                                 #! PC = 0xaaaaaaaaab58 *)
not x3_not@uint64 x3;
and x26@uint64 x4 x3_not;
(* eor	x1, x1, x27                                 #! PC = 0xaaaaaaaaab5c *)
xor x1@uint64 x1 x27;
(* ldr	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; Value = 0x0000aaaaaaaaa9c0; PC = 0xaaaaaaaaab60 *)
mov x27 L0xffffffffe8d0;
(* eor	x3, x3, x28                                 #! PC = 0xaaaaaaaaab64 *)
xor x3@uint64 x3 x28;
(* eor	x4, x4, x30                                 #! PC = 0xaaaaaaaaab68 *)
xor x4@uint64 x4 x30;
(* eor	x2, x2, x26                                 #! PC = 0xaaaaaaaaab6c *)
xor x2@uint64 x2 x26;
(* ldr	x30, [x27], #8                              #! EA = L0xaaaaaaaaa9c0; Value = 0x8000000000008002; PC = 0xaaaaaaaaab70 *)
mov x30 L0xaaaaaaaaa9c0;
(* bic	x26, x7, x6                                 #! PC = 0xaaaaaaaaab74 *)
not x6_not@uint64 x6;
and x26@uint64 x7 x6_not;
(* str	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; PC = 0xaaaaaaaaab7c *)
mov L0xffffffffe8d0 x27;
(* bic	x27, x8, x7                                 #! PC = 0xaaaaaaaaab80 *)
not x7_not@uint64 x7;
and x27@uint64 x8 x7_not;
(* bic	x28, x5, x9                                 #! PC = 0xaaaaaaaaab84 *)
not x9_not@uint64 x9;
and x28@uint64 x5 x9_not;
(* eor	x0, x0, x30                                 #! PC = 0xaaaaaaaaab88 *)
xor x0@uint64 x0 x30;
(* bic	x30, x6, x5                                 #! PC = 0xaaaaaaaaab8c *)
not x5_not@uint64 x5;
and x30@uint64 x6 x5_not;
(* eor	x5, x5, x26                                 #! PC = 0xaaaaaaaaab90 *)
xor x5@uint64 x5 x26;
(* bic	x26, x9, x8                                 #! PC = 0xaaaaaaaaab94 *)
not x8_not@uint64 x8;
and x26@uint64 x9 x8_not;
(* eor	x6, x6, x27                                 #! PC = 0xaaaaaaaaab98 *)
xor x6@uint64 x6 x27;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaab9c *)
xor x8@uint64 x8 x28;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaba0 *)
xor x9@uint64 x9 x30;
(* eor	x7, x7, x26                                 #! PC = 0xaaaaaaaaaba4 *)
xor x7@uint64 x7 x26;
(* bic	x26, x12, x11                               #! PC = 0xaaaaaaaaaba8 *)
not x11_not@uint64 x11;
and x26@uint64 x12 x11_not;
(* bic	x27, x13, x12                               #! PC = 0xaaaaaaaaabac *)
not x12_not@uint64 x12;
and x27@uint64 x13 x12_not;
(* bic	x28, x10, x14                               #! PC = 0xaaaaaaaaabb0 *)
not x14_not@uint64 x14;
and x28@uint64 x10 x14_not;
(* bic	x30, x11, x10                               #! PC = 0xaaaaaaaaabb4 *)
not x10_not@uint64 x10;
and x30@uint64 x11 x10_not;
(* eor	x10, x10, x26                               #! PC = 0xaaaaaaaaabb8 *)
xor x10@uint64 x10 x26;
(* bic	x26, x14, x13                               #! PC = 0xaaaaaaaaabbc *)
not x13_not@uint64 x13;
and x26@uint64 x14 x13_not;
(* eor	x11, x11, x27                               #! PC = 0xaaaaaaaaabc0 *)
xor x11@uint64 x11 x27;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaabc4 *)
xor x13@uint64 x13 x28;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaabc8 *)
xor x14@uint64 x14 x30;
(* eor	x12, x12, x26                               #! PC = 0xaaaaaaaaabcc *)
xor x12@uint64 x12 x26;
(* bic	x26, x17, x16                               #! PC = 0xaaaaaaaaabd0 *)
not x16_not@uint64 x16;
and x26@uint64 x17 x16_not;
(* bic	x27, x25, x17                               #! PC = 0xaaaaaaaaabd4 *)
not x17_not@uint64 x17;
and x27@uint64 x25 x17_not;
(* bic	x28, x15, x19                               #! PC = 0xaaaaaaaaabd8 *)
not x19_not@uint64 x19;
and x28@uint64 x15 x19_not;
(* bic	x30, x16, x15                               #! PC = 0xaaaaaaaaabdc *)
not x15_not@uint64 x15;
and x30@uint64 x16 x15_not;
(* eor	x15, x15, x26                               #! PC = 0xaaaaaaaaabe0 *)
xor x15@uint64 x15 x26;
(* bic	x26, x19, x25                               #! PC = 0xaaaaaaaaabe4 *)
not x25_not@uint64 x25;
and x26@uint64 x19 x25_not;
(* eor	x16, x16, x27                               #! PC = 0xaaaaaaaaabe8 *)
xor x16@uint64 x16 x27;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaabec *)
xor x25@uint64 x25 x28;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaabf0 *)
xor x19@uint64 x19 x30;
(* eor	x17, x17, x26                               #! PC = 0xaaaaaaaaabf4 *)
xor x17@uint64 x17 x26;
(* bic	x26, x22, x21                               #! PC = 0xaaaaaaaaabf8 *)
not x21_not@uint64 x21;
and x26@uint64 x22 x21_not;
(* bic	x27, x23, x22                               #! PC = 0xaaaaaaaaabfc *)
not x22_not@uint64 x22;
and x27@uint64 x23 x22_not;
(* bic	x28, x20, x24                               #! PC = 0xaaaaaaaaac00 *)
not x24_not@uint64 x24;
and x28@uint64 x20 x24_not;
(* bic	x30, x21, x20                               #! PC = 0xaaaaaaaaac04 *)
not x20_not@uint64 x20;
and x30@uint64 x21 x20_not;
(* eor	x20, x20, x26                               #! PC = 0xaaaaaaaaac08 *)
xor x20@uint64 x20 x26;
(* bic	x26, x24, x23                               #! PC = 0xaaaaaaaaac0c *)
not x23_not@uint64 x23;
and x26@uint64 x24 x23_not;
(* eor	x21, x21, x27                               #! PC = 0xaaaaaaaaac10 *)
xor x21@uint64 x21 x27;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaac14 *)
xor x23@uint64 x23 x28;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaac18 *)
xor x24@uint64 x24 x30;
(* eor	x22, x22, x26                               #! PC = 0xaaaaaaaaac1c *)
xor x22@uint64 x22 x26;
(* #b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! PC = 0xaaaaaaaaac20 *)
#b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! 0xaaaaaaaaac20 = 0xaaaaaaaaac20;
(* eor	x26, x0, x5                                 #! PC = 0xaaaaaaaaaa10 *)
xor x26@uint64 x0 x5;
(* stp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; PC = 0xaaaaaaaaaa14 *)
mov L0xffffffffe8c0 x4;
mov L0xffffffffe8c8 x9;
(* eor	x27, x1, x6                                 #! PC = 0xaaaaaaaaaa18 *)
xor x27@uint64 x1 x6;
(* eor	x28, x2, x7                                 #! PC = 0xaaaaaaaaaa1c *)
xor x28@uint64 x2 x7;
(* eor	x30, x3, x8                                 #! PC = 0xaaaaaaaaaa20 *)
xor x30@uint64 x3 x8;
(* eor	x4, x4, x9                                  #! PC = 0xaaaaaaaaaa24 *)
xor x4@uint64 x4 x9;
(* eor	x26, x26, x10                               #! PC = 0xaaaaaaaaaa28 *)
xor x26@uint64 x26 x10;
(* eor	x27, x27, x11                               #! PC = 0xaaaaaaaaaa2c *)
xor x27@uint64 x27 x11;
(* eor	x28, x28, x12                               #! PC = 0xaaaaaaaaaa30 *)
xor x28@uint64 x28 x12;
(* eor	x30, x30, x13                               #! PC = 0xaaaaaaaaaa34 *)
xor x30@uint64 x30 x13;
(* eor	x4, x4, x14                                 #! PC = 0xaaaaaaaaaa38 *)
xor x4@uint64 x4 x14;
(* eor	x26, x26, x15                               #! PC = 0xaaaaaaaaaa3c *)
xor x26@uint64 x26 x15;
(* eor	x27, x27, x16                               #! PC = 0xaaaaaaaaaa40 *)
xor x27@uint64 x27 x16;
(* eor	x28, x28, x17                               #! PC = 0xaaaaaaaaaa44 *)
xor x28@uint64 x28 x17;
(* eor	x30, x30, x25                               #! PC = 0xaaaaaaaaaa48 *)
xor x30@uint64 x30 x25;
(* eor	x4, x4, x19                                 #! PC = 0xaaaaaaaaaa4c *)
xor x4@uint64 x4 x19;
(* eor	x26, x26, x20                               #! PC = 0xaaaaaaaaaa50 *)
xor x26@uint64 x26 x20;
(* eor	x28, x28, x22                               #! PC = 0xaaaaaaaaaa54 *)
xor x28@uint64 x28 x22;
(* eor	x27, x27, x21                               #! PC = 0xaaaaaaaaaa58 *)
xor x27@uint64 x27 x21;
(* eor	x30, x30, x23                               #! PC = 0xaaaaaaaaaa5c *)
xor x30@uint64 x30 x23;
(* eor	x4, x4, x24                                 #! PC = 0xaaaaaaaaaa60 *)
xor x4@uint64 x4 x24;
(* eor	x9, x26, x28, ror #63                       #! PC = 0xaaaaaaaaaa64 *)
split x28_h x28_l x28 63;
shl x28_ls x28_l 1@uint64;
add x28_ror x28_ls x28_h;
xor x9@uint64 x26 x28_ror;
(* eor	x1, x1, x9                                  #! PC = 0xaaaaaaaaaa68 *)
xor x1@uint64 x1 x9;
(* eor	x6, x6, x9                                  #! PC = 0xaaaaaaaaaa6c *)
xor x6@uint64 x6 x9;
(* eor	x11, x11, x9                                #! PC = 0xaaaaaaaaaa70 *)
xor x11@uint64 x11 x9;
(* eor	x16, x16, x9                                #! PC = 0xaaaaaaaaaa74 *)
xor x16@uint64 x16 x9;
(* eor	x21, x21, x9                                #! PC = 0xaaaaaaaaaa78 *)
xor x21@uint64 x21 x9;
(* eor	x9, x27, x30, ror #63                       #! PC = 0xaaaaaaaaaa7c *)
split x30_h x30_l x30 63;
shl x30_ls x30_l 1@uint64;
add x30_ror x30_ls x30_h;
xor x9@uint64 x27 x30_ror;
(* eor	x28, x28, x4, ror #63                       #! PC = 0xaaaaaaaaaa80 *)
split x4_h x4_l x4 63;
shl x4_ls x4_l 1@uint64;
add x4_ror x4_ls x4_h;
xor x28@uint64 x28 x4_ror;
(* eor	x30, x30, x26, ror #63                      #! PC = 0xaaaaaaaaaa84 *)
split x26_h x26_l x26 63;
shl x26_ls x26_l 1@uint64;
add x26_ror x26_ls x26_h;
xor x30@uint64 x30 x26_ror;
(* eor	x4, x4, x27, ror #63                        #! PC = 0xaaaaaaaaaa88 *)
split x27_h x27_l x27 63;
shl x27_ls x27_l 1@uint64;
add x27_ror x27_ls x27_h;
xor x4@uint64 x4 x27_ror;
(* eor	x27, x2, x9                                 #! PC = 0xaaaaaaaaaa8c *)
xor x27@uint64 x2 x9;
(* eor	x7, x7, x9                                  #! PC = 0xaaaaaaaaaa90 *)
xor x7@uint64 x7 x9;
(* eor	x12, x12, x9                                #! PC = 0xaaaaaaaaaa94 *)
xor x12@uint64 x12 x9;
(* eor	x17, x17, x9                                #! PC = 0xaaaaaaaaaa98 *)
xor x17@uint64 x17 x9;
(* eor	x22, x22, x9                                #! PC = 0xaaaaaaaaaa9c *)
xor x22@uint64 x22 x9;
(* eor	x0, x0, x4                                  #! PC = 0xaaaaaaaaaaa0 *)
xor x0@uint64 x0 x4;
(* eor	x5, x5, x4                                  #! PC = 0xaaaaaaaaaaa4 *)
xor x5@uint64 x5 x4;
(* eor	x10, x10, x4                                #! PC = 0xaaaaaaaaaaa8 *)
xor x10@uint64 x10 x4;
(* eor	x15, x15, x4                                #! PC = 0xaaaaaaaaaaac *)
xor x15@uint64 x15 x4;
(* eor	x20, x20, x4                                #! PC = 0xaaaaaaaaaab0 *)
xor x20@uint64 x20 x4;
(* ldp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; Value = 0x6df16cd29c66609a; PC = 0xaaaaaaaaaab4 *)
mov x4 L0xffffffffe8c0;
mov x9 L0xffffffffe8c8;
(* eor	x26, x3, x28                                #! PC = 0xaaaaaaaaaab8 *)
xor x26@uint64 x3 x28;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaaabc *)
xor x8@uint64 x8 x28;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaaac0 *)
xor x13@uint64 x13 x28;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaaac4 *)
xor x25@uint64 x25 x28;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaaac8 *)
xor x23@uint64 x23 x28;
(* eor	x28, x4, x30                                #! PC = 0xaaaaaaaaaacc *)
xor x28@uint64 x4 x30;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaad0 *)
xor x9@uint64 x9 x30;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaaad4 *)
xor x14@uint64 x14 x30;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaaad8 *)
xor x19@uint64 x19 x30;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaaadc *)
xor x24@uint64 x24 x30;
(* mov	x30, x1                                     #! PC = 0xaaaaaaaaaae0 *)
mov x30 x1;
(* ror	x1, x6, #20                                 #! PC = 0xaaaaaaaaaae4 *)
split x6_h x6_l x6 20;
shl x6_ls x6_l (64-20)@uint64;
add x1 x6_ls x6_h;
(* ror	x2, x12, #21                                #! PC = 0xaaaaaaaaaae8 *)
split x12_h x12_l x12 21;
shl x12_ls x12_l (64-21)@uint64;
add x2 x12_ls x12_h;
(* ror	x3, x25, #43                                #! PC = 0xaaaaaaaaaaec *)
split x25_h x25_l x25 43;
shl x25_ls x25_l (64-43)@uint64;
add x3 x25_ls x25_h;
(* ror	x4, x24, #50                                #! PC = 0xaaaaaaaaaaf0 *)
split x24_h x24_l x24 50;
shl x24_ls x24_l (64-50)@uint64;
add x4 x24_ls x24_h;
(* ror	x6, x9, #44                                 #! PC = 0xaaaaaaaaaaf4 *)
split x9_h x9_l x9 44;
shl x9_ls x9_l (64-44)@uint64;
add x6 x9_ls x9_h;
(* ror	x12, x13, #39                               #! PC = 0xaaaaaaaaaaf8 *)
split x13_h x13_l x13 39;
shl x13_ls x13_l (64-39)@uint64;
add x12 x13_ls x13_h;
(* ror	x25, x17, #49                               #! PC = 0xaaaaaaaaaafc *)
split x17_h x17_l x17 49;
shl x17_ls x17_l (64-49)@uint64;
add x25 x17_ls x17_h;
(* ror	x24, x21, #62                               #! PC = 0xaaaaaaaaab00 *)
split x21_h x21_l x21 62;
shl x21_ls x21_l (64-62)@uint64;
add x24 x21_ls x21_h;
(* ror	x9, x22, #3                                 #! PC = 0xaaaaaaaaab04 *)
split x22_h x22_l x22 3;
shl x22_ls x22_l (64-3)@uint64;
add x9 x22_ls x22_h;
(* ror	x13, x19, #56                               #! PC = 0xaaaaaaaaab08 *)
split x19_h x19_l x19 56;
shl x19_ls x19_l (64-56)@uint64;
add x13 x19_ls x19_h;
(* ror	x17, x11, #54                               #! PC = 0xaaaaaaaaab0c *)
split x11_h x11_l x11 54;
shl x11_ls x11_l (64-54)@uint64;
add x17 x11_ls x11_h;
(* ror	x21, x8, #9                                 #! PC = 0xaaaaaaaaab10 *)
split x8_h x8_l x8 9;
shl x8_ls x8_l (64-9)@uint64;
add x21 x8_ls x8_h;
(* ror	x22, x14, #25                               #! PC = 0xaaaaaaaaab14 *)
split x14_h x14_l x14 25;
shl x14_ls x14_l (64-25)@uint64;
add x22 x14_ls x14_h;
(* ror	x19, x23, #8                                #! PC = 0xaaaaaaaaab18 *)
split x23_h x23_l x23 8;
shl x23_ls x23_l (64-8)@uint64;
add x19 x23_ls x23_h;
(* ror	x11, x7, #58                                #! PC = 0xaaaaaaaaab1c *)
split x7_h x7_l x7 58;
shl x7_ls x7_l (64-58)@uint64;
add x11 x7_ls x7_h;
(* ror	x8, x16, #19                                #! PC = 0xaaaaaaaaab20 *)
split x16_h x16_l x16 19;
shl x16_ls x16_l (64-19)@uint64;
add x8 x16_ls x16_h;
(* ror	x14, x20, #46                               #! PC = 0xaaaaaaaaab24 *)
split x20_h x20_l x20 46;
shl x20_ls x20_l (64-46)@uint64;
add x14 x20_ls x20_h;
(* ror	x23, x15, #23                               #! PC = 0xaaaaaaaaab28 *)
split x15_h x15_l x15 23;
shl x15_ls x15_l (64-23)@uint64;
add x23 x15_ls x15_h;
(* ror	x7, x10, #61                                #! PC = 0xaaaaaaaaab2c *)
split x10_h x10_l x10 61;
shl x10_ls x10_l (64-61)@uint64;
add x7 x10_ls x10_h;
(* ror	x16, x5, #28                                #! PC = 0xaaaaaaaaab30 *)
split x5_h x5_l x5 28;
shl x5_ls x5_l (64-28)@uint64;
add x16 x5_ls x5_h;
(* ror	x5, x26, #36                                #! PC = 0xaaaaaaaaab34 *)
split x26_h x26_l x26 36;
shl x26_ls x26_l (64-36)@uint64;
add x5 x26_ls x26_h;
(* ror	x10, x30, #63                               #! PC = 0xaaaaaaaaab38 *)
split x30_h x30_l x30 63;
shl x30_ls x30_l (64-63)@uint64;
add x10 x30_ls x30_h;
(* ror	x15, x28, #37                               #! PC = 0xaaaaaaaaab3c *)
split x28_h x28_l x28 37;
shl x28_ls x28_l (64-37)@uint64;
add x15 x28_ls x28_h;
(* ror	x20, x27, #2                                #! PC = 0xaaaaaaaaab40 *)
split x27_h x27_l x27 2;
shl x27_ls x27_l (64-2)@uint64;
add x20 x27_ls x27_h;
(* bic	x26, x2, x1                                 #! PC = 0xaaaaaaaaab44 *)
not x1_not@uint64 x1;
and x26@uint64 x2 x1_not;
(* bic	x27, x3, x2                                 #! PC = 0xaaaaaaaaab48 *)
not x2_not@uint64 x2;
and x27@uint64 x3 x2_not;
(* bic	x28, x0, x4                                 #! PC = 0xaaaaaaaaab4c *)
not x4_not@uint64 x4;
and x28@uint64 x0 x4_not;
(* bic	x30, x1, x0                                 #! PC = 0xaaaaaaaaab50 *)
not x0_not@uint64 x0;
and x30@uint64 x1 x0_not;
(* eor	x0, x0, x26                                 #! PC = 0xaaaaaaaaab54 *)
xor x0@uint64 x0 x26;
(* bic	x26, x4, x3                                 #! PC = 0xaaaaaaaaab58 *)
not x3_not@uint64 x3;
and x26@uint64 x4 x3_not;
(* eor	x1, x1, x27                                 #! PC = 0xaaaaaaaaab5c *)
xor x1@uint64 x1 x27;
(* ldr	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; Value = 0x0000aaaaaaaaa9c8; PC = 0xaaaaaaaaab60 *)
mov x27 L0xffffffffe8d0;
(* eor	x3, x3, x28                                 #! PC = 0xaaaaaaaaab64 *)
xor x3@uint64 x3 x28;
(* eor	x4, x4, x30                                 #! PC = 0xaaaaaaaaab68 *)
xor x4@uint64 x4 x30;
(* eor	x2, x2, x26                                 #! PC = 0xaaaaaaaaab6c *)
xor x2@uint64 x2 x26;
(* ldr	x30, [x27], #8                              #! EA = L0xaaaaaaaaa9c8; Value = 0x8000000000000080; PC = 0xaaaaaaaaab70 *)
mov x30 L0xaaaaaaaaa9c8;
(* bic	x26, x7, x6                                 #! PC = 0xaaaaaaaaab74 *)
not x6_not@uint64 x6;
and x26@uint64 x7 x6_not;
(* str	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; PC = 0xaaaaaaaaab7c *)
mov L0xffffffffe8d0 x27;
(* bic	x27, x8, x7                                 #! PC = 0xaaaaaaaaab80 *)
not x7_not@uint64 x7;
and x27@uint64 x8 x7_not;
(* bic	x28, x5, x9                                 #! PC = 0xaaaaaaaaab84 *)
not x9_not@uint64 x9;
and x28@uint64 x5 x9_not;
(* eor	x0, x0, x30                                 #! PC = 0xaaaaaaaaab88 *)
xor x0@uint64 x0 x30;
(* bic	x30, x6, x5                                 #! PC = 0xaaaaaaaaab8c *)
not x5_not@uint64 x5;
and x30@uint64 x6 x5_not;
(* eor	x5, x5, x26                                 #! PC = 0xaaaaaaaaab90 *)
xor x5@uint64 x5 x26;
(* bic	x26, x9, x8                                 #! PC = 0xaaaaaaaaab94 *)
not x8_not@uint64 x8;
and x26@uint64 x9 x8_not;
(* eor	x6, x6, x27                                 #! PC = 0xaaaaaaaaab98 *)
xor x6@uint64 x6 x27;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaab9c *)
xor x8@uint64 x8 x28;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaba0 *)
xor x9@uint64 x9 x30;
(* eor	x7, x7, x26                                 #! PC = 0xaaaaaaaaaba4 *)
xor x7@uint64 x7 x26;
(* bic	x26, x12, x11                               #! PC = 0xaaaaaaaaaba8 *)
not x11_not@uint64 x11;
and x26@uint64 x12 x11_not;
(* bic	x27, x13, x12                               #! PC = 0xaaaaaaaaabac *)
not x12_not@uint64 x12;
and x27@uint64 x13 x12_not;
(* bic	x28, x10, x14                               #! PC = 0xaaaaaaaaabb0 *)
not x14_not@uint64 x14;
and x28@uint64 x10 x14_not;
(* bic	x30, x11, x10                               #! PC = 0xaaaaaaaaabb4 *)
not x10_not@uint64 x10;
and x30@uint64 x11 x10_not;
(* eor	x10, x10, x26                               #! PC = 0xaaaaaaaaabb8 *)
xor x10@uint64 x10 x26;
(* bic	x26, x14, x13                               #! PC = 0xaaaaaaaaabbc *)
not x13_not@uint64 x13;
and x26@uint64 x14 x13_not;
(* eor	x11, x11, x27                               #! PC = 0xaaaaaaaaabc0 *)
xor x11@uint64 x11 x27;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaabc4 *)
xor x13@uint64 x13 x28;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaabc8 *)
xor x14@uint64 x14 x30;
(* eor	x12, x12, x26                               #! PC = 0xaaaaaaaaabcc *)
xor x12@uint64 x12 x26;
(* bic	x26, x17, x16                               #! PC = 0xaaaaaaaaabd0 *)
not x16_not@uint64 x16;
and x26@uint64 x17 x16_not;
(* bic	x27, x25, x17                               #! PC = 0xaaaaaaaaabd4 *)
not x17_not@uint64 x17;
and x27@uint64 x25 x17_not;
(* bic	x28, x15, x19                               #! PC = 0xaaaaaaaaabd8 *)
not x19_not@uint64 x19;
and x28@uint64 x15 x19_not;
(* bic	x30, x16, x15                               #! PC = 0xaaaaaaaaabdc *)
not x15_not@uint64 x15;
and x30@uint64 x16 x15_not;
(* eor	x15, x15, x26                               #! PC = 0xaaaaaaaaabe0 *)
xor x15@uint64 x15 x26;
(* bic	x26, x19, x25                               #! PC = 0xaaaaaaaaabe4 *)
not x25_not@uint64 x25;
and x26@uint64 x19 x25_not;
(* eor	x16, x16, x27                               #! PC = 0xaaaaaaaaabe8 *)
xor x16@uint64 x16 x27;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaabec *)
xor x25@uint64 x25 x28;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaabf0 *)
xor x19@uint64 x19 x30;
(* eor	x17, x17, x26                               #! PC = 0xaaaaaaaaabf4 *)
xor x17@uint64 x17 x26;
(* bic	x26, x22, x21                               #! PC = 0xaaaaaaaaabf8 *)
not x21_not@uint64 x21;
and x26@uint64 x22 x21_not;
(* bic	x27, x23, x22                               #! PC = 0xaaaaaaaaabfc *)
not x22_not@uint64 x22;
and x27@uint64 x23 x22_not;
(* bic	x28, x20, x24                               #! PC = 0xaaaaaaaaac00 *)
not x24_not@uint64 x24;
and x28@uint64 x20 x24_not;
(* bic	x30, x21, x20                               #! PC = 0xaaaaaaaaac04 *)
not x20_not@uint64 x20;
and x30@uint64 x21 x20_not;
(* eor	x20, x20, x26                               #! PC = 0xaaaaaaaaac08 *)
xor x20@uint64 x20 x26;
(* bic	x26, x24, x23                               #! PC = 0xaaaaaaaaac0c *)
not x23_not@uint64 x23;
and x26@uint64 x24 x23_not;
(* eor	x21, x21, x27                               #! PC = 0xaaaaaaaaac10 *)
xor x21@uint64 x21 x27;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaac14 *)
xor x23@uint64 x23 x28;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaac18 *)
xor x24@uint64 x24 x30;
(* eor	x22, x22, x26                               #! PC = 0xaaaaaaaaac1c *)
xor x22@uint64 x22 x26;
(* #b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! PC = 0xaaaaaaaaac20 *)
#b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! 0xaaaaaaaaac20 = 0xaaaaaaaaac20;
(* eor	x26, x0, x5                                 #! PC = 0xaaaaaaaaaa10 *)
xor x26@uint64 x0 x5;
(* stp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; PC = 0xaaaaaaaaaa14 *)
mov L0xffffffffe8c0 x4;
mov L0xffffffffe8c8 x9;
(* eor	x27, x1, x6                                 #! PC = 0xaaaaaaaaaa18 *)
xor x27@uint64 x1 x6;
(* eor	x28, x2, x7                                 #! PC = 0xaaaaaaaaaa1c *)
xor x28@uint64 x2 x7;
(* eor	x30, x3, x8                                 #! PC = 0xaaaaaaaaaa20 *)
xor x30@uint64 x3 x8;
(* eor	x4, x4, x9                                  #! PC = 0xaaaaaaaaaa24 *)
xor x4@uint64 x4 x9;
(* eor	x26, x26, x10                               #! PC = 0xaaaaaaaaaa28 *)
xor x26@uint64 x26 x10;
(* eor	x27, x27, x11                               #! PC = 0xaaaaaaaaaa2c *)
xor x27@uint64 x27 x11;
(* eor	x28, x28, x12                               #! PC = 0xaaaaaaaaaa30 *)
xor x28@uint64 x28 x12;
(* eor	x30, x30, x13                               #! PC = 0xaaaaaaaaaa34 *)
xor x30@uint64 x30 x13;
(* eor	x4, x4, x14                                 #! PC = 0xaaaaaaaaaa38 *)
xor x4@uint64 x4 x14;
(* eor	x26, x26, x15                               #! PC = 0xaaaaaaaaaa3c *)
xor x26@uint64 x26 x15;
(* eor	x27, x27, x16                               #! PC = 0xaaaaaaaaaa40 *)
xor x27@uint64 x27 x16;
(* eor	x28, x28, x17                               #! PC = 0xaaaaaaaaaa44 *)
xor x28@uint64 x28 x17;
(* eor	x30, x30, x25                               #! PC = 0xaaaaaaaaaa48 *)
xor x30@uint64 x30 x25;
(* eor	x4, x4, x19                                 #! PC = 0xaaaaaaaaaa4c *)
xor x4@uint64 x4 x19;
(* eor	x26, x26, x20                               #! PC = 0xaaaaaaaaaa50 *)
xor x26@uint64 x26 x20;
(* eor	x28, x28, x22                               #! PC = 0xaaaaaaaaaa54 *)
xor x28@uint64 x28 x22;
(* eor	x27, x27, x21                               #! PC = 0xaaaaaaaaaa58 *)
xor x27@uint64 x27 x21;
(* eor	x30, x30, x23                               #! PC = 0xaaaaaaaaaa5c *)
xor x30@uint64 x30 x23;
(* eor	x4, x4, x24                                 #! PC = 0xaaaaaaaaaa60 *)
xor x4@uint64 x4 x24;
(* eor	x9, x26, x28, ror #63                       #! PC = 0xaaaaaaaaaa64 *)
split x28_h x28_l x28 63;
shl x28_ls x28_l 1@uint64;
add x28_ror x28_ls x28_h;
xor x9@uint64 x26 x28_ror;
(* eor	x1, x1, x9                                  #! PC = 0xaaaaaaaaaa68 *)
xor x1@uint64 x1 x9;
(* eor	x6, x6, x9                                  #! PC = 0xaaaaaaaaaa6c *)
xor x6@uint64 x6 x9;
(* eor	x11, x11, x9                                #! PC = 0xaaaaaaaaaa70 *)
xor x11@uint64 x11 x9;
(* eor	x16, x16, x9                                #! PC = 0xaaaaaaaaaa74 *)
xor x16@uint64 x16 x9;
(* eor	x21, x21, x9                                #! PC = 0xaaaaaaaaaa78 *)
xor x21@uint64 x21 x9;
(* eor	x9, x27, x30, ror #63                       #! PC = 0xaaaaaaaaaa7c *)
split x30_h x30_l x30 63;
shl x30_ls x30_l 1@uint64;
add x30_ror x30_ls x30_h;
xor x9@uint64 x27 x30_ror;
(* eor	x28, x28, x4, ror #63                       #! PC = 0xaaaaaaaaaa80 *)
split x4_h x4_l x4 63;
shl x4_ls x4_l 1@uint64;
add x4_ror x4_ls x4_h;
xor x28@uint64 x28 x4_ror;
(* eor	x30, x30, x26, ror #63                      #! PC = 0xaaaaaaaaaa84 *)
split x26_h x26_l x26 63;
shl x26_ls x26_l 1@uint64;
add x26_ror x26_ls x26_h;
xor x30@uint64 x30 x26_ror;
(* eor	x4, x4, x27, ror #63                        #! PC = 0xaaaaaaaaaa88 *)
split x27_h x27_l x27 63;
shl x27_ls x27_l 1@uint64;
add x27_ror x27_ls x27_h;
xor x4@uint64 x4 x27_ror;
(* eor	x27, x2, x9                                 #! PC = 0xaaaaaaaaaa8c *)
xor x27@uint64 x2 x9;
(* eor	x7, x7, x9                                  #! PC = 0xaaaaaaaaaa90 *)
xor x7@uint64 x7 x9;
(* eor	x12, x12, x9                                #! PC = 0xaaaaaaaaaa94 *)
xor x12@uint64 x12 x9;
(* eor	x17, x17, x9                                #! PC = 0xaaaaaaaaaa98 *)
xor x17@uint64 x17 x9;
(* eor	x22, x22, x9                                #! PC = 0xaaaaaaaaaa9c *)
xor x22@uint64 x22 x9;
(* eor	x0, x0, x4                                  #! PC = 0xaaaaaaaaaaa0 *)
xor x0@uint64 x0 x4;
(* eor	x5, x5, x4                                  #! PC = 0xaaaaaaaaaaa4 *)
xor x5@uint64 x5 x4;
(* eor	x10, x10, x4                                #! PC = 0xaaaaaaaaaaa8 *)
xor x10@uint64 x10 x4;
(* eor	x15, x15, x4                                #! PC = 0xaaaaaaaaaaac *)
xor x15@uint64 x15 x4;
(* eor	x20, x20, x4                                #! PC = 0xaaaaaaaaaab0 *)
xor x20@uint64 x20 x4;
(* ldp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; Value = 0x4e5922bec65e1e45; PC = 0xaaaaaaaaaab4 *)
mov x4 L0xffffffffe8c0;
mov x9 L0xffffffffe8c8;
(* eor	x26, x3, x28                                #! PC = 0xaaaaaaaaaab8 *)
xor x26@uint64 x3 x28;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaaabc *)
xor x8@uint64 x8 x28;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaaac0 *)
xor x13@uint64 x13 x28;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaaac4 *)
xor x25@uint64 x25 x28;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaaac8 *)
xor x23@uint64 x23 x28;
(* eor	x28, x4, x30                                #! PC = 0xaaaaaaaaaacc *)
xor x28@uint64 x4 x30;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaad0 *)
xor x9@uint64 x9 x30;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaaad4 *)
xor x14@uint64 x14 x30;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaaad8 *)
xor x19@uint64 x19 x30;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaaadc *)
xor x24@uint64 x24 x30;
(* mov	x30, x1                                     #! PC = 0xaaaaaaaaaae0 *)
mov x30 x1;
(* ror	x1, x6, #20                                 #! PC = 0xaaaaaaaaaae4 *)
split x6_h x6_l x6 20;
shl x6_ls x6_l (64-20)@uint64;
add x1 x6_ls x6_h;
(* ror	x2, x12, #21                                #! PC = 0xaaaaaaaaaae8 *)
split x12_h x12_l x12 21;
shl x12_ls x12_l (64-21)@uint64;
add x2 x12_ls x12_h;
(* ror	x3, x25, #43                                #! PC = 0xaaaaaaaaaaec *)
split x25_h x25_l x25 43;
shl x25_ls x25_l (64-43)@uint64;
add x3 x25_ls x25_h;
(* ror	x4, x24, #50                                #! PC = 0xaaaaaaaaaaf0 *)
split x24_h x24_l x24 50;
shl x24_ls x24_l (64-50)@uint64;
add x4 x24_ls x24_h;
(* ror	x6, x9, #44                                 #! PC = 0xaaaaaaaaaaf4 *)
split x9_h x9_l x9 44;
shl x9_ls x9_l (64-44)@uint64;
add x6 x9_ls x9_h;
(* ror	x12, x13, #39                               #! PC = 0xaaaaaaaaaaf8 *)
split x13_h x13_l x13 39;
shl x13_ls x13_l (64-39)@uint64;
add x12 x13_ls x13_h;
(* ror	x25, x17, #49                               #! PC = 0xaaaaaaaaaafc *)
split x17_h x17_l x17 49;
shl x17_ls x17_l (64-49)@uint64;
add x25 x17_ls x17_h;
(* ror	x24, x21, #62                               #! PC = 0xaaaaaaaaab00 *)
split x21_h x21_l x21 62;
shl x21_ls x21_l (64-62)@uint64;
add x24 x21_ls x21_h;
(* ror	x9, x22, #3                                 #! PC = 0xaaaaaaaaab04 *)
split x22_h x22_l x22 3;
shl x22_ls x22_l (64-3)@uint64;
add x9 x22_ls x22_h;
(* ror	x13, x19, #56                               #! PC = 0xaaaaaaaaab08 *)
split x19_h x19_l x19 56;
shl x19_ls x19_l (64-56)@uint64;
add x13 x19_ls x19_h;
(* ror	x17, x11, #54                               #! PC = 0xaaaaaaaaab0c *)
split x11_h x11_l x11 54;
shl x11_ls x11_l (64-54)@uint64;
add x17 x11_ls x11_h;
(* ror	x21, x8, #9                                 #! PC = 0xaaaaaaaaab10 *)
split x8_h x8_l x8 9;
shl x8_ls x8_l (64-9)@uint64;
add x21 x8_ls x8_h;
(* ror	x22, x14, #25                               #! PC = 0xaaaaaaaaab14 *)
split x14_h x14_l x14 25;
shl x14_ls x14_l (64-25)@uint64;
add x22 x14_ls x14_h;
(* ror	x19, x23, #8                                #! PC = 0xaaaaaaaaab18 *)
split x23_h x23_l x23 8;
shl x23_ls x23_l (64-8)@uint64;
add x19 x23_ls x23_h;
(* ror	x11, x7, #58                                #! PC = 0xaaaaaaaaab1c *)
split x7_h x7_l x7 58;
shl x7_ls x7_l (64-58)@uint64;
add x11 x7_ls x7_h;
(* ror	x8, x16, #19                                #! PC = 0xaaaaaaaaab20 *)
split x16_h x16_l x16 19;
shl x16_ls x16_l (64-19)@uint64;
add x8 x16_ls x16_h;
(* ror	x14, x20, #46                               #! PC = 0xaaaaaaaaab24 *)
split x20_h x20_l x20 46;
shl x20_ls x20_l (64-46)@uint64;
add x14 x20_ls x20_h;
(* ror	x23, x15, #23                               #! PC = 0xaaaaaaaaab28 *)
split x15_h x15_l x15 23;
shl x15_ls x15_l (64-23)@uint64;
add x23 x15_ls x15_h;
(* ror	x7, x10, #61                                #! PC = 0xaaaaaaaaab2c *)
split x10_h x10_l x10 61;
shl x10_ls x10_l (64-61)@uint64;
add x7 x10_ls x10_h;
(* ror	x16, x5, #28                                #! PC = 0xaaaaaaaaab30 *)
split x5_h x5_l x5 28;
shl x5_ls x5_l (64-28)@uint64;
add x16 x5_ls x5_h;
(* ror	x5, x26, #36                                #! PC = 0xaaaaaaaaab34 *)
split x26_h x26_l x26 36;
shl x26_ls x26_l (64-36)@uint64;
add x5 x26_ls x26_h;
(* ror	x10, x30, #63                               #! PC = 0xaaaaaaaaab38 *)
split x30_h x30_l x30 63;
shl x30_ls x30_l (64-63)@uint64;
add x10 x30_ls x30_h;
(* ror	x15, x28, #37                               #! PC = 0xaaaaaaaaab3c *)
split x28_h x28_l x28 37;
shl x28_ls x28_l (64-37)@uint64;
add x15 x28_ls x28_h;
(* ror	x20, x27, #2                                #! PC = 0xaaaaaaaaab40 *)
split x27_h x27_l x27 2;
shl x27_ls x27_l (64-2)@uint64;
add x20 x27_ls x27_h;
(* bic	x26, x2, x1                                 #! PC = 0xaaaaaaaaab44 *)
not x1_not@uint64 x1;
and x26@uint64 x2 x1_not;
(* bic	x27, x3, x2                                 #! PC = 0xaaaaaaaaab48 *)
not x2_not@uint64 x2;
and x27@uint64 x3 x2_not;
(* bic	x28, x0, x4                                 #! PC = 0xaaaaaaaaab4c *)
not x4_not@uint64 x4;
and x28@uint64 x0 x4_not;
(* bic	x30, x1, x0                                 #! PC = 0xaaaaaaaaab50 *)
not x0_not@uint64 x0;
and x30@uint64 x1 x0_not;
(* eor	x0, x0, x26                                 #! PC = 0xaaaaaaaaab54 *)
xor x0@uint64 x0 x26;
(* bic	x26, x4, x3                                 #! PC = 0xaaaaaaaaab58 *)
not x3_not@uint64 x3;
and x26@uint64 x4 x3_not;
(* eor	x1, x1, x27                                 #! PC = 0xaaaaaaaaab5c *)
xor x1@uint64 x1 x27;
(* ldr	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; Value = 0x0000aaaaaaaaa9d0; PC = 0xaaaaaaaaab60 *)
mov x27 L0xffffffffe8d0;
(* eor	x3, x3, x28                                 #! PC = 0xaaaaaaaaab64 *)
xor x3@uint64 x3 x28;
(* eor	x4, x4, x30                                 #! PC = 0xaaaaaaaaab68 *)
xor x4@uint64 x4 x30;
(* eor	x2, x2, x26                                 #! PC = 0xaaaaaaaaab6c *)
xor x2@uint64 x2 x26;
(* ldr	x30, [x27], #8                              #! EA = L0xaaaaaaaaa9d0; Value = 0x000000000000800a; PC = 0xaaaaaaaaab70 *)
mov x30 L0xaaaaaaaaa9d0;
(* bic	x26, x7, x6                                 #! PC = 0xaaaaaaaaab74 *)
not x6_not@uint64 x6;
and x26@uint64 x7 x6_not;
(* str	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; PC = 0xaaaaaaaaab7c *)
mov L0xffffffffe8d0 x27;
(* bic	x27, x8, x7                                 #! PC = 0xaaaaaaaaab80 *)
not x7_not@uint64 x7;
and x27@uint64 x8 x7_not;
(* bic	x28, x5, x9                                 #! PC = 0xaaaaaaaaab84 *)
not x9_not@uint64 x9;
and x28@uint64 x5 x9_not;
(* eor	x0, x0, x30                                 #! PC = 0xaaaaaaaaab88 *)
xor x0@uint64 x0 x30;
(* bic	x30, x6, x5                                 #! PC = 0xaaaaaaaaab8c *)
not x5_not@uint64 x5;
and x30@uint64 x6 x5_not;
(* eor	x5, x5, x26                                 #! PC = 0xaaaaaaaaab90 *)
xor x5@uint64 x5 x26;
(* bic	x26, x9, x8                                 #! PC = 0xaaaaaaaaab94 *)
not x8_not@uint64 x8;
and x26@uint64 x9 x8_not;
(* eor	x6, x6, x27                                 #! PC = 0xaaaaaaaaab98 *)
xor x6@uint64 x6 x27;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaab9c *)
xor x8@uint64 x8 x28;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaba0 *)
xor x9@uint64 x9 x30;
(* eor	x7, x7, x26                                 #! PC = 0xaaaaaaaaaba4 *)
xor x7@uint64 x7 x26;
(* bic	x26, x12, x11                               #! PC = 0xaaaaaaaaaba8 *)
not x11_not@uint64 x11;
and x26@uint64 x12 x11_not;
(* bic	x27, x13, x12                               #! PC = 0xaaaaaaaaabac *)
not x12_not@uint64 x12;
and x27@uint64 x13 x12_not;
(* bic	x28, x10, x14                               #! PC = 0xaaaaaaaaabb0 *)
not x14_not@uint64 x14;
and x28@uint64 x10 x14_not;
(* bic	x30, x11, x10                               #! PC = 0xaaaaaaaaabb4 *)
not x10_not@uint64 x10;
and x30@uint64 x11 x10_not;
(* eor	x10, x10, x26                               #! PC = 0xaaaaaaaaabb8 *)
xor x10@uint64 x10 x26;
(* bic	x26, x14, x13                               #! PC = 0xaaaaaaaaabbc *)
not x13_not@uint64 x13;
and x26@uint64 x14 x13_not;
(* eor	x11, x11, x27                               #! PC = 0xaaaaaaaaabc0 *)
xor x11@uint64 x11 x27;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaabc4 *)
xor x13@uint64 x13 x28;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaabc8 *)
xor x14@uint64 x14 x30;
(* eor	x12, x12, x26                               #! PC = 0xaaaaaaaaabcc *)
xor x12@uint64 x12 x26;
(* bic	x26, x17, x16                               #! PC = 0xaaaaaaaaabd0 *)
not x16_not@uint64 x16;
and x26@uint64 x17 x16_not;
(* bic	x27, x25, x17                               #! PC = 0xaaaaaaaaabd4 *)
not x17_not@uint64 x17;
and x27@uint64 x25 x17_not;
(* bic	x28, x15, x19                               #! PC = 0xaaaaaaaaabd8 *)
not x19_not@uint64 x19;
and x28@uint64 x15 x19_not;
(* bic	x30, x16, x15                               #! PC = 0xaaaaaaaaabdc *)
not x15_not@uint64 x15;
and x30@uint64 x16 x15_not;
(* eor	x15, x15, x26                               #! PC = 0xaaaaaaaaabe0 *)
xor x15@uint64 x15 x26;
(* bic	x26, x19, x25                               #! PC = 0xaaaaaaaaabe4 *)
not x25_not@uint64 x25;
and x26@uint64 x19 x25_not;
(* eor	x16, x16, x27                               #! PC = 0xaaaaaaaaabe8 *)
xor x16@uint64 x16 x27;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaabec *)
xor x25@uint64 x25 x28;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaabf0 *)
xor x19@uint64 x19 x30;
(* eor	x17, x17, x26                               #! PC = 0xaaaaaaaaabf4 *)
xor x17@uint64 x17 x26;
(* bic	x26, x22, x21                               #! PC = 0xaaaaaaaaabf8 *)
not x21_not@uint64 x21;
and x26@uint64 x22 x21_not;
(* bic	x27, x23, x22                               #! PC = 0xaaaaaaaaabfc *)
not x22_not@uint64 x22;
and x27@uint64 x23 x22_not;
(* bic	x28, x20, x24                               #! PC = 0xaaaaaaaaac00 *)
not x24_not@uint64 x24;
and x28@uint64 x20 x24_not;
(* bic	x30, x21, x20                               #! PC = 0xaaaaaaaaac04 *)
not x20_not@uint64 x20;
and x30@uint64 x21 x20_not;
(* eor	x20, x20, x26                               #! PC = 0xaaaaaaaaac08 *)
xor x20@uint64 x20 x26;
(* bic	x26, x24, x23                               #! PC = 0xaaaaaaaaac0c *)
not x23_not@uint64 x23;
and x26@uint64 x24 x23_not;
(* eor	x21, x21, x27                               #! PC = 0xaaaaaaaaac10 *)
xor x21@uint64 x21 x27;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaac14 *)
xor x23@uint64 x23 x28;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaac18 *)
xor x24@uint64 x24 x30;
(* eor	x22, x22, x26                               #! PC = 0xaaaaaaaaac1c *)
xor x22@uint64 x22 x26;
(* #b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! PC = 0xaaaaaaaaac20 *)
#b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! 0xaaaaaaaaac20 = 0xaaaaaaaaac20;
(* eor	x26, x0, x5                                 #! PC = 0xaaaaaaaaaa10 *)
xor x26@uint64 x0 x5;
(* stp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; PC = 0xaaaaaaaaaa14 *)
mov L0xffffffffe8c0 x4;
mov L0xffffffffe8c8 x9;
(* eor	x27, x1, x6                                 #! PC = 0xaaaaaaaaaa18 *)
xor x27@uint64 x1 x6;
(* eor	x28, x2, x7                                 #! PC = 0xaaaaaaaaaa1c *)
xor x28@uint64 x2 x7;
(* eor	x30, x3, x8                                 #! PC = 0xaaaaaaaaaa20 *)
xor x30@uint64 x3 x8;
(* eor	x4, x4, x9                                  #! PC = 0xaaaaaaaaaa24 *)
xor x4@uint64 x4 x9;
(* eor	x26, x26, x10                               #! PC = 0xaaaaaaaaaa28 *)
xor x26@uint64 x26 x10;
(* eor	x27, x27, x11                               #! PC = 0xaaaaaaaaaa2c *)
xor x27@uint64 x27 x11;
(* eor	x28, x28, x12                               #! PC = 0xaaaaaaaaaa30 *)
xor x28@uint64 x28 x12;
(* eor	x30, x30, x13                               #! PC = 0xaaaaaaaaaa34 *)
xor x30@uint64 x30 x13;
(* eor	x4, x4, x14                                 #! PC = 0xaaaaaaaaaa38 *)
xor x4@uint64 x4 x14;
(* eor	x26, x26, x15                               #! PC = 0xaaaaaaaaaa3c *)
xor x26@uint64 x26 x15;
(* eor	x27, x27, x16                               #! PC = 0xaaaaaaaaaa40 *)
xor x27@uint64 x27 x16;
(* eor	x28, x28, x17                               #! PC = 0xaaaaaaaaaa44 *)
xor x28@uint64 x28 x17;
(* eor	x30, x30, x25                               #! PC = 0xaaaaaaaaaa48 *)
xor x30@uint64 x30 x25;
(* eor	x4, x4, x19                                 #! PC = 0xaaaaaaaaaa4c *)
xor x4@uint64 x4 x19;
(* eor	x26, x26, x20                               #! PC = 0xaaaaaaaaaa50 *)
xor x26@uint64 x26 x20;
(* eor	x28, x28, x22                               #! PC = 0xaaaaaaaaaa54 *)
xor x28@uint64 x28 x22;
(* eor	x27, x27, x21                               #! PC = 0xaaaaaaaaaa58 *)
xor x27@uint64 x27 x21;
(* eor	x30, x30, x23                               #! PC = 0xaaaaaaaaaa5c *)
xor x30@uint64 x30 x23;
(* eor	x4, x4, x24                                 #! PC = 0xaaaaaaaaaa60 *)
xor x4@uint64 x4 x24;
(* eor	x9, x26, x28, ror #63                       #! PC = 0xaaaaaaaaaa64 *)
split x28_h x28_l x28 63;
shl x28_ls x28_l 1@uint64;
add x28_ror x28_ls x28_h;
xor x9@uint64 x26 x28_ror;
(* eor	x1, x1, x9                                  #! PC = 0xaaaaaaaaaa68 *)
xor x1@uint64 x1 x9;
(* eor	x6, x6, x9                                  #! PC = 0xaaaaaaaaaa6c *)
xor x6@uint64 x6 x9;
(* eor	x11, x11, x9                                #! PC = 0xaaaaaaaaaa70 *)
xor x11@uint64 x11 x9;
(* eor	x16, x16, x9                                #! PC = 0xaaaaaaaaaa74 *)
xor x16@uint64 x16 x9;
(* eor	x21, x21, x9                                #! PC = 0xaaaaaaaaaa78 *)
xor x21@uint64 x21 x9;
(* eor	x9, x27, x30, ror #63                       #! PC = 0xaaaaaaaaaa7c *)
split x30_h x30_l x30 63;
shl x30_ls x30_l 1@uint64;
add x30_ror x30_ls x30_h;
xor x9@uint64 x27 x30_ror;
(* eor	x28, x28, x4, ror #63                       #! PC = 0xaaaaaaaaaa80 *)
split x4_h x4_l x4 63;
shl x4_ls x4_l 1@uint64;
add x4_ror x4_ls x4_h;
xor x28@uint64 x28 x4_ror;
(* eor	x30, x30, x26, ror #63                      #! PC = 0xaaaaaaaaaa84 *)
split x26_h x26_l x26 63;
shl x26_ls x26_l 1@uint64;
add x26_ror x26_ls x26_h;
xor x30@uint64 x30 x26_ror;
(* eor	x4, x4, x27, ror #63                        #! PC = 0xaaaaaaaaaa88 *)
split x27_h x27_l x27 63;
shl x27_ls x27_l 1@uint64;
add x27_ror x27_ls x27_h;
xor x4@uint64 x4 x27_ror;
(* eor	x27, x2, x9                                 #! PC = 0xaaaaaaaaaa8c *)
xor x27@uint64 x2 x9;
(* eor	x7, x7, x9                                  #! PC = 0xaaaaaaaaaa90 *)
xor x7@uint64 x7 x9;
(* eor	x12, x12, x9                                #! PC = 0xaaaaaaaaaa94 *)
xor x12@uint64 x12 x9;
(* eor	x17, x17, x9                                #! PC = 0xaaaaaaaaaa98 *)
xor x17@uint64 x17 x9;
(* eor	x22, x22, x9                                #! PC = 0xaaaaaaaaaa9c *)
xor x22@uint64 x22 x9;
(* eor	x0, x0, x4                                  #! PC = 0xaaaaaaaaaaa0 *)
xor x0@uint64 x0 x4;
(* eor	x5, x5, x4                                  #! PC = 0xaaaaaaaaaaa4 *)
xor x5@uint64 x5 x4;
(* eor	x10, x10, x4                                #! PC = 0xaaaaaaaaaaa8 *)
xor x10@uint64 x10 x4;
(* eor	x15, x15, x4                                #! PC = 0xaaaaaaaaaaac *)
xor x15@uint64 x15 x4;
(* eor	x20, x20, x4                                #! PC = 0xaaaaaaaaaab0 *)
xor x20@uint64 x20 x4;
(* ldp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; Value = 0x39a944e367f174b2; PC = 0xaaaaaaaaaab4 *)
mov x4 L0xffffffffe8c0;
mov x9 L0xffffffffe8c8;
(* eor	x26, x3, x28                                #! PC = 0xaaaaaaaaaab8 *)
xor x26@uint64 x3 x28;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaaabc *)
xor x8@uint64 x8 x28;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaaac0 *)
xor x13@uint64 x13 x28;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaaac4 *)
xor x25@uint64 x25 x28;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaaac8 *)
xor x23@uint64 x23 x28;
(* eor	x28, x4, x30                                #! PC = 0xaaaaaaaaaacc *)
xor x28@uint64 x4 x30;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaad0 *)
xor x9@uint64 x9 x30;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaaad4 *)
xor x14@uint64 x14 x30;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaaad8 *)
xor x19@uint64 x19 x30;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaaadc *)
xor x24@uint64 x24 x30;
(* mov	x30, x1                                     #! PC = 0xaaaaaaaaaae0 *)
mov x30 x1;
(* ror	x1, x6, #20                                 #! PC = 0xaaaaaaaaaae4 *)
split x6_h x6_l x6 20;
shl x6_ls x6_l (64-20)@uint64;
add x1 x6_ls x6_h;
(* ror	x2, x12, #21                                #! PC = 0xaaaaaaaaaae8 *)
split x12_h x12_l x12 21;
shl x12_ls x12_l (64-21)@uint64;
add x2 x12_ls x12_h;
(* ror	x3, x25, #43                                #! PC = 0xaaaaaaaaaaec *)
split x25_h x25_l x25 43;
shl x25_ls x25_l (64-43)@uint64;
add x3 x25_ls x25_h;
(* ror	x4, x24, #50                                #! PC = 0xaaaaaaaaaaf0 *)
split x24_h x24_l x24 50;
shl x24_ls x24_l (64-50)@uint64;
add x4 x24_ls x24_h;
(* ror	x6, x9, #44                                 #! PC = 0xaaaaaaaaaaf4 *)
split x9_h x9_l x9 44;
shl x9_ls x9_l (64-44)@uint64;
add x6 x9_ls x9_h;
(* ror	x12, x13, #39                               #! PC = 0xaaaaaaaaaaf8 *)
split x13_h x13_l x13 39;
shl x13_ls x13_l (64-39)@uint64;
add x12 x13_ls x13_h;
(* ror	x25, x17, #49                               #! PC = 0xaaaaaaaaaafc *)
split x17_h x17_l x17 49;
shl x17_ls x17_l (64-49)@uint64;
add x25 x17_ls x17_h;
(* ror	x24, x21, #62                               #! PC = 0xaaaaaaaaab00 *)
split x21_h x21_l x21 62;
shl x21_ls x21_l (64-62)@uint64;
add x24 x21_ls x21_h;
(* ror	x9, x22, #3                                 #! PC = 0xaaaaaaaaab04 *)
split x22_h x22_l x22 3;
shl x22_ls x22_l (64-3)@uint64;
add x9 x22_ls x22_h;
(* ror	x13, x19, #56                               #! PC = 0xaaaaaaaaab08 *)
split x19_h x19_l x19 56;
shl x19_ls x19_l (64-56)@uint64;
add x13 x19_ls x19_h;
(* ror	x17, x11, #54                               #! PC = 0xaaaaaaaaab0c *)
split x11_h x11_l x11 54;
shl x11_ls x11_l (64-54)@uint64;
add x17 x11_ls x11_h;
(* ror	x21, x8, #9                                 #! PC = 0xaaaaaaaaab10 *)
split x8_h x8_l x8 9;
shl x8_ls x8_l (64-9)@uint64;
add x21 x8_ls x8_h;
(* ror	x22, x14, #25                               #! PC = 0xaaaaaaaaab14 *)
split x14_h x14_l x14 25;
shl x14_ls x14_l (64-25)@uint64;
add x22 x14_ls x14_h;
(* ror	x19, x23, #8                                #! PC = 0xaaaaaaaaab18 *)
split x23_h x23_l x23 8;
shl x23_ls x23_l (64-8)@uint64;
add x19 x23_ls x23_h;
(* ror	x11, x7, #58                                #! PC = 0xaaaaaaaaab1c *)
split x7_h x7_l x7 58;
shl x7_ls x7_l (64-58)@uint64;
add x11 x7_ls x7_h;
(* ror	x8, x16, #19                                #! PC = 0xaaaaaaaaab20 *)
split x16_h x16_l x16 19;
shl x16_ls x16_l (64-19)@uint64;
add x8 x16_ls x16_h;
(* ror	x14, x20, #46                               #! PC = 0xaaaaaaaaab24 *)
split x20_h x20_l x20 46;
shl x20_ls x20_l (64-46)@uint64;
add x14 x20_ls x20_h;
(* ror	x23, x15, #23                               #! PC = 0xaaaaaaaaab28 *)
split x15_h x15_l x15 23;
shl x15_ls x15_l (64-23)@uint64;
add x23 x15_ls x15_h;
(* ror	x7, x10, #61                                #! PC = 0xaaaaaaaaab2c *)
split x10_h x10_l x10 61;
shl x10_ls x10_l (64-61)@uint64;
add x7 x10_ls x10_h;
(* ror	x16, x5, #28                                #! PC = 0xaaaaaaaaab30 *)
split x5_h x5_l x5 28;
shl x5_ls x5_l (64-28)@uint64;
add x16 x5_ls x5_h;
(* ror	x5, x26, #36                                #! PC = 0xaaaaaaaaab34 *)
split x26_h x26_l x26 36;
shl x26_ls x26_l (64-36)@uint64;
add x5 x26_ls x26_h;
(* ror	x10, x30, #63                               #! PC = 0xaaaaaaaaab38 *)
split x30_h x30_l x30 63;
shl x30_ls x30_l (64-63)@uint64;
add x10 x30_ls x30_h;
(* ror	x15, x28, #37                               #! PC = 0xaaaaaaaaab3c *)
split x28_h x28_l x28 37;
shl x28_ls x28_l (64-37)@uint64;
add x15 x28_ls x28_h;
(* ror	x20, x27, #2                                #! PC = 0xaaaaaaaaab40 *)
split x27_h x27_l x27 2;
shl x27_ls x27_l (64-2)@uint64;
add x20 x27_ls x27_h;
(* bic	x26, x2, x1                                 #! PC = 0xaaaaaaaaab44 *)
not x1_not@uint64 x1;
and x26@uint64 x2 x1_not;
(* bic	x27, x3, x2                                 #! PC = 0xaaaaaaaaab48 *)
not x2_not@uint64 x2;
and x27@uint64 x3 x2_not;
(* bic	x28, x0, x4                                 #! PC = 0xaaaaaaaaab4c *)
not x4_not@uint64 x4;
and x28@uint64 x0 x4_not;
(* bic	x30, x1, x0                                 #! PC = 0xaaaaaaaaab50 *)
not x0_not@uint64 x0;
and x30@uint64 x1 x0_not;
(* eor	x0, x0, x26                                 #! PC = 0xaaaaaaaaab54 *)
xor x0@uint64 x0 x26;
(* bic	x26, x4, x3                                 #! PC = 0xaaaaaaaaab58 *)
not x3_not@uint64 x3;
and x26@uint64 x4 x3_not;
(* eor	x1, x1, x27                                 #! PC = 0xaaaaaaaaab5c *)
xor x1@uint64 x1 x27;
(* ldr	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; Value = 0x0000aaaaaaaaa9d8; PC = 0xaaaaaaaaab60 *)
mov x27 L0xffffffffe8d0;
(* eor	x3, x3, x28                                 #! PC = 0xaaaaaaaaab64 *)
xor x3@uint64 x3 x28;
(* eor	x4, x4, x30                                 #! PC = 0xaaaaaaaaab68 *)
xor x4@uint64 x4 x30;
(* eor	x2, x2, x26                                 #! PC = 0xaaaaaaaaab6c *)
xor x2@uint64 x2 x26;
(* ldr	x30, [x27], #8                              #! EA = L0xaaaaaaaaa9d8; Value = 0x800000008000000a; PC = 0xaaaaaaaaab70 *)
mov x30 L0xaaaaaaaaa9d8;
(* bic	x26, x7, x6                                 #! PC = 0xaaaaaaaaab74 *)
not x6_not@uint64 x6;
and x26@uint64 x7 x6_not;
(* str	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; PC = 0xaaaaaaaaab7c *)
mov L0xffffffffe8d0 x27;
(* bic	x27, x8, x7                                 #! PC = 0xaaaaaaaaab80 *)
not x7_not@uint64 x7;
and x27@uint64 x8 x7_not;
(* bic	x28, x5, x9                                 #! PC = 0xaaaaaaaaab84 *)
not x9_not@uint64 x9;
and x28@uint64 x5 x9_not;
(* eor	x0, x0, x30                                 #! PC = 0xaaaaaaaaab88 *)
xor x0@uint64 x0 x30;
(* bic	x30, x6, x5                                 #! PC = 0xaaaaaaaaab8c *)
not x5_not@uint64 x5;
and x30@uint64 x6 x5_not;
(* eor	x5, x5, x26                                 #! PC = 0xaaaaaaaaab90 *)
xor x5@uint64 x5 x26;
(* bic	x26, x9, x8                                 #! PC = 0xaaaaaaaaab94 *)
not x8_not@uint64 x8;
and x26@uint64 x9 x8_not;
(* eor	x6, x6, x27                                 #! PC = 0xaaaaaaaaab98 *)
xor x6@uint64 x6 x27;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaab9c *)
xor x8@uint64 x8 x28;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaba0 *)
xor x9@uint64 x9 x30;
(* eor	x7, x7, x26                                 #! PC = 0xaaaaaaaaaba4 *)
xor x7@uint64 x7 x26;
(* bic	x26, x12, x11                               #! PC = 0xaaaaaaaaaba8 *)
not x11_not@uint64 x11;
and x26@uint64 x12 x11_not;
(* bic	x27, x13, x12                               #! PC = 0xaaaaaaaaabac *)
not x12_not@uint64 x12;
and x27@uint64 x13 x12_not;
(* bic	x28, x10, x14                               #! PC = 0xaaaaaaaaabb0 *)
not x14_not@uint64 x14;
and x28@uint64 x10 x14_not;
(* bic	x30, x11, x10                               #! PC = 0xaaaaaaaaabb4 *)
not x10_not@uint64 x10;
and x30@uint64 x11 x10_not;
(* eor	x10, x10, x26                               #! PC = 0xaaaaaaaaabb8 *)
xor x10@uint64 x10 x26;
(* bic	x26, x14, x13                               #! PC = 0xaaaaaaaaabbc *)
not x13_not@uint64 x13;
and x26@uint64 x14 x13_not;
(* eor	x11, x11, x27                               #! PC = 0xaaaaaaaaabc0 *)
xor x11@uint64 x11 x27;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaabc4 *)
xor x13@uint64 x13 x28;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaabc8 *)
xor x14@uint64 x14 x30;
(* eor	x12, x12, x26                               #! PC = 0xaaaaaaaaabcc *)
xor x12@uint64 x12 x26;
(* bic	x26, x17, x16                               #! PC = 0xaaaaaaaaabd0 *)
not x16_not@uint64 x16;
and x26@uint64 x17 x16_not;
(* bic	x27, x25, x17                               #! PC = 0xaaaaaaaaabd4 *)
not x17_not@uint64 x17;
and x27@uint64 x25 x17_not;
(* bic	x28, x15, x19                               #! PC = 0xaaaaaaaaabd8 *)
not x19_not@uint64 x19;
and x28@uint64 x15 x19_not;
(* bic	x30, x16, x15                               #! PC = 0xaaaaaaaaabdc *)
not x15_not@uint64 x15;
and x30@uint64 x16 x15_not;
(* eor	x15, x15, x26                               #! PC = 0xaaaaaaaaabe0 *)
xor x15@uint64 x15 x26;
(* bic	x26, x19, x25                               #! PC = 0xaaaaaaaaabe4 *)
not x25_not@uint64 x25;
and x26@uint64 x19 x25_not;
(* eor	x16, x16, x27                               #! PC = 0xaaaaaaaaabe8 *)
xor x16@uint64 x16 x27;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaabec *)
xor x25@uint64 x25 x28;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaabf0 *)
xor x19@uint64 x19 x30;
(* eor	x17, x17, x26                               #! PC = 0xaaaaaaaaabf4 *)
xor x17@uint64 x17 x26;
(* bic	x26, x22, x21                               #! PC = 0xaaaaaaaaabf8 *)
not x21_not@uint64 x21;
and x26@uint64 x22 x21_not;
(* bic	x27, x23, x22                               #! PC = 0xaaaaaaaaabfc *)
not x22_not@uint64 x22;
and x27@uint64 x23 x22_not;
(* bic	x28, x20, x24                               #! PC = 0xaaaaaaaaac00 *)
not x24_not@uint64 x24;
and x28@uint64 x20 x24_not;
(* bic	x30, x21, x20                               #! PC = 0xaaaaaaaaac04 *)
not x20_not@uint64 x20;
and x30@uint64 x21 x20_not;
(* eor	x20, x20, x26                               #! PC = 0xaaaaaaaaac08 *)
xor x20@uint64 x20 x26;
(* bic	x26, x24, x23                               #! PC = 0xaaaaaaaaac0c *)
not x23_not@uint64 x23;
and x26@uint64 x24 x23_not;
(* eor	x21, x21, x27                               #! PC = 0xaaaaaaaaac10 *)
xor x21@uint64 x21 x27;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaac14 *)
xor x23@uint64 x23 x28;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaac18 *)
xor x24@uint64 x24 x30;
(* eor	x22, x22, x26                               #! PC = 0xaaaaaaaaac1c *)
xor x22@uint64 x22 x26;
(* #b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! PC = 0xaaaaaaaaac20 *)
#b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! 0xaaaaaaaaac20 = 0xaaaaaaaaac20;
(* eor	x26, x0, x5                                 #! PC = 0xaaaaaaaaaa10 *)
xor x26@uint64 x0 x5;
(* stp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; PC = 0xaaaaaaaaaa14 *)
mov L0xffffffffe8c0 x4;
mov L0xffffffffe8c8 x9;
(* eor	x27, x1, x6                                 #! PC = 0xaaaaaaaaaa18 *)
xor x27@uint64 x1 x6;
(* eor	x28, x2, x7                                 #! PC = 0xaaaaaaaaaa1c *)
xor x28@uint64 x2 x7;
(* eor	x30, x3, x8                                 #! PC = 0xaaaaaaaaaa20 *)
xor x30@uint64 x3 x8;
(* eor	x4, x4, x9                                  #! PC = 0xaaaaaaaaaa24 *)
xor x4@uint64 x4 x9;
(* eor	x26, x26, x10                               #! PC = 0xaaaaaaaaaa28 *)
xor x26@uint64 x26 x10;
(* eor	x27, x27, x11                               #! PC = 0xaaaaaaaaaa2c *)
xor x27@uint64 x27 x11;
(* eor	x28, x28, x12                               #! PC = 0xaaaaaaaaaa30 *)
xor x28@uint64 x28 x12;
(* eor	x30, x30, x13                               #! PC = 0xaaaaaaaaaa34 *)
xor x30@uint64 x30 x13;
(* eor	x4, x4, x14                                 #! PC = 0xaaaaaaaaaa38 *)
xor x4@uint64 x4 x14;
(* eor	x26, x26, x15                               #! PC = 0xaaaaaaaaaa3c *)
xor x26@uint64 x26 x15;
(* eor	x27, x27, x16                               #! PC = 0xaaaaaaaaaa40 *)
xor x27@uint64 x27 x16;
(* eor	x28, x28, x17                               #! PC = 0xaaaaaaaaaa44 *)
xor x28@uint64 x28 x17;
(* eor	x30, x30, x25                               #! PC = 0xaaaaaaaaaa48 *)
xor x30@uint64 x30 x25;
(* eor	x4, x4, x19                                 #! PC = 0xaaaaaaaaaa4c *)
xor x4@uint64 x4 x19;
(* eor	x26, x26, x20                               #! PC = 0xaaaaaaaaaa50 *)
xor x26@uint64 x26 x20;
(* eor	x28, x28, x22                               #! PC = 0xaaaaaaaaaa54 *)
xor x28@uint64 x28 x22;
(* eor	x27, x27, x21                               #! PC = 0xaaaaaaaaaa58 *)
xor x27@uint64 x27 x21;
(* eor	x30, x30, x23                               #! PC = 0xaaaaaaaaaa5c *)
xor x30@uint64 x30 x23;
(* eor	x4, x4, x24                                 #! PC = 0xaaaaaaaaaa60 *)
xor x4@uint64 x4 x24;
(* eor	x9, x26, x28, ror #63                       #! PC = 0xaaaaaaaaaa64 *)
split x28_h x28_l x28 63;
shl x28_ls x28_l 1@uint64;
add x28_ror x28_ls x28_h;
xor x9@uint64 x26 x28_ror;
(* eor	x1, x1, x9                                  #! PC = 0xaaaaaaaaaa68 *)
xor x1@uint64 x1 x9;
(* eor	x6, x6, x9                                  #! PC = 0xaaaaaaaaaa6c *)
xor x6@uint64 x6 x9;
(* eor	x11, x11, x9                                #! PC = 0xaaaaaaaaaa70 *)
xor x11@uint64 x11 x9;
(* eor	x16, x16, x9                                #! PC = 0xaaaaaaaaaa74 *)
xor x16@uint64 x16 x9;
(* eor	x21, x21, x9                                #! PC = 0xaaaaaaaaaa78 *)
xor x21@uint64 x21 x9;
(* eor	x9, x27, x30, ror #63                       #! PC = 0xaaaaaaaaaa7c *)
split x30_h x30_l x30 63;
shl x30_ls x30_l 1@uint64;
add x30_ror x30_ls x30_h;
xor x9@uint64 x27 x30_ror;
(* eor	x28, x28, x4, ror #63                       #! PC = 0xaaaaaaaaaa80 *)
split x4_h x4_l x4 63;
shl x4_ls x4_l 1@uint64;
add x4_ror x4_ls x4_h;
xor x28@uint64 x28 x4_ror;
(* eor	x30, x30, x26, ror #63                      #! PC = 0xaaaaaaaaaa84 *)
split x26_h x26_l x26 63;
shl x26_ls x26_l 1@uint64;
add x26_ror x26_ls x26_h;
xor x30@uint64 x30 x26_ror;
(* eor	x4, x4, x27, ror #63                        #! PC = 0xaaaaaaaaaa88 *)
split x27_h x27_l x27 63;
shl x27_ls x27_l 1@uint64;
add x27_ror x27_ls x27_h;
xor x4@uint64 x4 x27_ror;
(* eor	x27, x2, x9                                 #! PC = 0xaaaaaaaaaa8c *)
xor x27@uint64 x2 x9;
(* eor	x7, x7, x9                                  #! PC = 0xaaaaaaaaaa90 *)
xor x7@uint64 x7 x9;
(* eor	x12, x12, x9                                #! PC = 0xaaaaaaaaaa94 *)
xor x12@uint64 x12 x9;
(* eor	x17, x17, x9                                #! PC = 0xaaaaaaaaaa98 *)
xor x17@uint64 x17 x9;
(* eor	x22, x22, x9                                #! PC = 0xaaaaaaaaaa9c *)
xor x22@uint64 x22 x9;
(* eor	x0, x0, x4                                  #! PC = 0xaaaaaaaaaaa0 *)
xor x0@uint64 x0 x4;
(* eor	x5, x5, x4                                  #! PC = 0xaaaaaaaaaaa4 *)
xor x5@uint64 x5 x4;
(* eor	x10, x10, x4                                #! PC = 0xaaaaaaaaaaa8 *)
xor x10@uint64 x10 x4;
(* eor	x15, x15, x4                                #! PC = 0xaaaaaaaaaaac *)
xor x15@uint64 x15 x4;
(* eor	x20, x20, x4                                #! PC = 0xaaaaaaaaaab0 *)
xor x20@uint64 x20 x4;
(* ldp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; Value = 0x5b70da5ec8c701bf; PC = 0xaaaaaaaaaab4 *)
mov x4 L0xffffffffe8c0;
mov x9 L0xffffffffe8c8;
(* eor	x26, x3, x28                                #! PC = 0xaaaaaaaaaab8 *)
xor x26@uint64 x3 x28;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaaabc *)
xor x8@uint64 x8 x28;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaaac0 *)
xor x13@uint64 x13 x28;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaaac4 *)
xor x25@uint64 x25 x28;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaaac8 *)
xor x23@uint64 x23 x28;
(* eor	x28, x4, x30                                #! PC = 0xaaaaaaaaaacc *)
xor x28@uint64 x4 x30;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaad0 *)
xor x9@uint64 x9 x30;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaaad4 *)
xor x14@uint64 x14 x30;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaaad8 *)
xor x19@uint64 x19 x30;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaaadc *)
xor x24@uint64 x24 x30;
(* mov	x30, x1                                     #! PC = 0xaaaaaaaaaae0 *)
mov x30 x1;
(* ror	x1, x6, #20                                 #! PC = 0xaaaaaaaaaae4 *)
split x6_h x6_l x6 20;
shl x6_ls x6_l (64-20)@uint64;
add x1 x6_ls x6_h;
(* ror	x2, x12, #21                                #! PC = 0xaaaaaaaaaae8 *)
split x12_h x12_l x12 21;
shl x12_ls x12_l (64-21)@uint64;
add x2 x12_ls x12_h;
(* ror	x3, x25, #43                                #! PC = 0xaaaaaaaaaaec *)
split x25_h x25_l x25 43;
shl x25_ls x25_l (64-43)@uint64;
add x3 x25_ls x25_h;
(* ror	x4, x24, #50                                #! PC = 0xaaaaaaaaaaf0 *)
split x24_h x24_l x24 50;
shl x24_ls x24_l (64-50)@uint64;
add x4 x24_ls x24_h;
(* ror	x6, x9, #44                                 #! PC = 0xaaaaaaaaaaf4 *)
split x9_h x9_l x9 44;
shl x9_ls x9_l (64-44)@uint64;
add x6 x9_ls x9_h;
(* ror	x12, x13, #39                               #! PC = 0xaaaaaaaaaaf8 *)
split x13_h x13_l x13 39;
shl x13_ls x13_l (64-39)@uint64;
add x12 x13_ls x13_h;
(* ror	x25, x17, #49                               #! PC = 0xaaaaaaaaaafc *)
split x17_h x17_l x17 49;
shl x17_ls x17_l (64-49)@uint64;
add x25 x17_ls x17_h;
(* ror	x24, x21, #62                               #! PC = 0xaaaaaaaaab00 *)
split x21_h x21_l x21 62;
shl x21_ls x21_l (64-62)@uint64;
add x24 x21_ls x21_h;
(* ror	x9, x22, #3                                 #! PC = 0xaaaaaaaaab04 *)
split x22_h x22_l x22 3;
shl x22_ls x22_l (64-3)@uint64;
add x9 x22_ls x22_h;
(* ror	x13, x19, #56                               #! PC = 0xaaaaaaaaab08 *)
split x19_h x19_l x19 56;
shl x19_ls x19_l (64-56)@uint64;
add x13 x19_ls x19_h;
(* ror	x17, x11, #54                               #! PC = 0xaaaaaaaaab0c *)
split x11_h x11_l x11 54;
shl x11_ls x11_l (64-54)@uint64;
add x17 x11_ls x11_h;
(* ror	x21, x8, #9                                 #! PC = 0xaaaaaaaaab10 *)
split x8_h x8_l x8 9;
shl x8_ls x8_l (64-9)@uint64;
add x21 x8_ls x8_h;
(* ror	x22, x14, #25                               #! PC = 0xaaaaaaaaab14 *)
split x14_h x14_l x14 25;
shl x14_ls x14_l (64-25)@uint64;
add x22 x14_ls x14_h;
(* ror	x19, x23, #8                                #! PC = 0xaaaaaaaaab18 *)
split x23_h x23_l x23 8;
shl x23_ls x23_l (64-8)@uint64;
add x19 x23_ls x23_h;
(* ror	x11, x7, #58                                #! PC = 0xaaaaaaaaab1c *)
split x7_h x7_l x7 58;
shl x7_ls x7_l (64-58)@uint64;
add x11 x7_ls x7_h;
(* ror	x8, x16, #19                                #! PC = 0xaaaaaaaaab20 *)
split x16_h x16_l x16 19;
shl x16_ls x16_l (64-19)@uint64;
add x8 x16_ls x16_h;
(* ror	x14, x20, #46                               #! PC = 0xaaaaaaaaab24 *)
split x20_h x20_l x20 46;
shl x20_ls x20_l (64-46)@uint64;
add x14 x20_ls x20_h;
(* ror	x23, x15, #23                               #! PC = 0xaaaaaaaaab28 *)
split x15_h x15_l x15 23;
shl x15_ls x15_l (64-23)@uint64;
add x23 x15_ls x15_h;
(* ror	x7, x10, #61                                #! PC = 0xaaaaaaaaab2c *)
split x10_h x10_l x10 61;
shl x10_ls x10_l (64-61)@uint64;
add x7 x10_ls x10_h;
(* ror	x16, x5, #28                                #! PC = 0xaaaaaaaaab30 *)
split x5_h x5_l x5 28;
shl x5_ls x5_l (64-28)@uint64;
add x16 x5_ls x5_h;
(* ror	x5, x26, #36                                #! PC = 0xaaaaaaaaab34 *)
split x26_h x26_l x26 36;
shl x26_ls x26_l (64-36)@uint64;
add x5 x26_ls x26_h;
(* ror	x10, x30, #63                               #! PC = 0xaaaaaaaaab38 *)
split x30_h x30_l x30 63;
shl x30_ls x30_l (64-63)@uint64;
add x10 x30_ls x30_h;
(* ror	x15, x28, #37                               #! PC = 0xaaaaaaaaab3c *)
split x28_h x28_l x28 37;
shl x28_ls x28_l (64-37)@uint64;
add x15 x28_ls x28_h;
(* ror	x20, x27, #2                                #! PC = 0xaaaaaaaaab40 *)
split x27_h x27_l x27 2;
shl x27_ls x27_l (64-2)@uint64;
add x20 x27_ls x27_h;
(* bic	x26, x2, x1                                 #! PC = 0xaaaaaaaaab44 *)
not x1_not@uint64 x1;
and x26@uint64 x2 x1_not;
(* bic	x27, x3, x2                                 #! PC = 0xaaaaaaaaab48 *)
not x2_not@uint64 x2;
and x27@uint64 x3 x2_not;
(* bic	x28, x0, x4                                 #! PC = 0xaaaaaaaaab4c *)
not x4_not@uint64 x4;
and x28@uint64 x0 x4_not;
(* bic	x30, x1, x0                                 #! PC = 0xaaaaaaaaab50 *)
not x0_not@uint64 x0;
and x30@uint64 x1 x0_not;
(* eor	x0, x0, x26                                 #! PC = 0xaaaaaaaaab54 *)
xor x0@uint64 x0 x26;
(* bic	x26, x4, x3                                 #! PC = 0xaaaaaaaaab58 *)
not x3_not@uint64 x3;
and x26@uint64 x4 x3_not;
(* eor	x1, x1, x27                                 #! PC = 0xaaaaaaaaab5c *)
xor x1@uint64 x1 x27;
(* ldr	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; Value = 0x0000aaaaaaaaa9e0; PC = 0xaaaaaaaaab60 *)
mov x27 L0xffffffffe8d0;
(* eor	x3, x3, x28                                 #! PC = 0xaaaaaaaaab64 *)
xor x3@uint64 x3 x28;
(* eor	x4, x4, x30                                 #! PC = 0xaaaaaaaaab68 *)
xor x4@uint64 x4 x30;
(* eor	x2, x2, x26                                 #! PC = 0xaaaaaaaaab6c *)
xor x2@uint64 x2 x26;
(* ldr	x30, [x27], #8                              #! EA = L0xaaaaaaaaa9e0; Value = 0x8000000080008081; PC = 0xaaaaaaaaab70 *)
mov x30 L0xaaaaaaaaa9e0;
(* bic	x26, x7, x6                                 #! PC = 0xaaaaaaaaab74 *)
not x6_not@uint64 x6;
and x26@uint64 x7 x6_not;
(* str	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; PC = 0xaaaaaaaaab7c *)
mov L0xffffffffe8d0 x27;
(* bic	x27, x8, x7                                 #! PC = 0xaaaaaaaaab80 *)
not x7_not@uint64 x7;
and x27@uint64 x8 x7_not;
(* bic	x28, x5, x9                                 #! PC = 0xaaaaaaaaab84 *)
not x9_not@uint64 x9;
and x28@uint64 x5 x9_not;
(* eor	x0, x0, x30                                 #! PC = 0xaaaaaaaaab88 *)
xor x0@uint64 x0 x30;
(* bic	x30, x6, x5                                 #! PC = 0xaaaaaaaaab8c *)
not x5_not@uint64 x5;
and x30@uint64 x6 x5_not;
(* eor	x5, x5, x26                                 #! PC = 0xaaaaaaaaab90 *)
xor x5@uint64 x5 x26;
(* bic	x26, x9, x8                                 #! PC = 0xaaaaaaaaab94 *)
not x8_not@uint64 x8;
and x26@uint64 x9 x8_not;
(* eor	x6, x6, x27                                 #! PC = 0xaaaaaaaaab98 *)
xor x6@uint64 x6 x27;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaab9c *)
xor x8@uint64 x8 x28;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaba0 *)
xor x9@uint64 x9 x30;
(* eor	x7, x7, x26                                 #! PC = 0xaaaaaaaaaba4 *)
xor x7@uint64 x7 x26;
(* bic	x26, x12, x11                               #! PC = 0xaaaaaaaaaba8 *)
not x11_not@uint64 x11;
and x26@uint64 x12 x11_not;
(* bic	x27, x13, x12                               #! PC = 0xaaaaaaaaabac *)
not x12_not@uint64 x12;
and x27@uint64 x13 x12_not;
(* bic	x28, x10, x14                               #! PC = 0xaaaaaaaaabb0 *)
not x14_not@uint64 x14;
and x28@uint64 x10 x14_not;
(* bic	x30, x11, x10                               #! PC = 0xaaaaaaaaabb4 *)
not x10_not@uint64 x10;
and x30@uint64 x11 x10_not;
(* eor	x10, x10, x26                               #! PC = 0xaaaaaaaaabb8 *)
xor x10@uint64 x10 x26;
(* bic	x26, x14, x13                               #! PC = 0xaaaaaaaaabbc *)
not x13_not@uint64 x13;
and x26@uint64 x14 x13_not;
(* eor	x11, x11, x27                               #! PC = 0xaaaaaaaaabc0 *)
xor x11@uint64 x11 x27;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaabc4 *)
xor x13@uint64 x13 x28;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaabc8 *)
xor x14@uint64 x14 x30;
(* eor	x12, x12, x26                               #! PC = 0xaaaaaaaaabcc *)
xor x12@uint64 x12 x26;
(* bic	x26, x17, x16                               #! PC = 0xaaaaaaaaabd0 *)
not x16_not@uint64 x16;
and x26@uint64 x17 x16_not;
(* bic	x27, x25, x17                               #! PC = 0xaaaaaaaaabd4 *)
not x17_not@uint64 x17;
and x27@uint64 x25 x17_not;
(* bic	x28, x15, x19                               #! PC = 0xaaaaaaaaabd8 *)
not x19_not@uint64 x19;
and x28@uint64 x15 x19_not;
(* bic	x30, x16, x15                               #! PC = 0xaaaaaaaaabdc *)
not x15_not@uint64 x15;
and x30@uint64 x16 x15_not;
(* eor	x15, x15, x26                               #! PC = 0xaaaaaaaaabe0 *)
xor x15@uint64 x15 x26;
(* bic	x26, x19, x25                               #! PC = 0xaaaaaaaaabe4 *)
not x25_not@uint64 x25;
and x26@uint64 x19 x25_not;
(* eor	x16, x16, x27                               #! PC = 0xaaaaaaaaabe8 *)
xor x16@uint64 x16 x27;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaabec *)
xor x25@uint64 x25 x28;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaabf0 *)
xor x19@uint64 x19 x30;
(* eor	x17, x17, x26                               #! PC = 0xaaaaaaaaabf4 *)
xor x17@uint64 x17 x26;
(* bic	x26, x22, x21                               #! PC = 0xaaaaaaaaabf8 *)
not x21_not@uint64 x21;
and x26@uint64 x22 x21_not;
(* bic	x27, x23, x22                               #! PC = 0xaaaaaaaaabfc *)
not x22_not@uint64 x22;
and x27@uint64 x23 x22_not;
(* bic	x28, x20, x24                               #! PC = 0xaaaaaaaaac00 *)
not x24_not@uint64 x24;
and x28@uint64 x20 x24_not;
(* bic	x30, x21, x20                               #! PC = 0xaaaaaaaaac04 *)
not x20_not@uint64 x20;
and x30@uint64 x21 x20_not;
(* eor	x20, x20, x26                               #! PC = 0xaaaaaaaaac08 *)
xor x20@uint64 x20 x26;
(* bic	x26, x24, x23                               #! PC = 0xaaaaaaaaac0c *)
not x23_not@uint64 x23;
and x26@uint64 x24 x23_not;
(* eor	x21, x21, x27                               #! PC = 0xaaaaaaaaac10 *)
xor x21@uint64 x21 x27;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaac14 *)
xor x23@uint64 x23 x28;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaac18 *)
xor x24@uint64 x24 x30;
(* eor	x22, x22, x26                               #! PC = 0xaaaaaaaaac1c *)
xor x22@uint64 x22 x26;
(* #b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! PC = 0xaaaaaaaaac20 *)
#b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! 0xaaaaaaaaac20 = 0xaaaaaaaaac20;
(* eor	x26, x0, x5                                 #! PC = 0xaaaaaaaaaa10 *)
xor x26@uint64 x0 x5;
(* stp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; PC = 0xaaaaaaaaaa14 *)
mov L0xffffffffe8c0 x4;
mov L0xffffffffe8c8 x9;
(* eor	x27, x1, x6                                 #! PC = 0xaaaaaaaaaa18 *)
xor x27@uint64 x1 x6;
(* eor	x28, x2, x7                                 #! PC = 0xaaaaaaaaaa1c *)
xor x28@uint64 x2 x7;
(* eor	x30, x3, x8                                 #! PC = 0xaaaaaaaaaa20 *)
xor x30@uint64 x3 x8;
(* eor	x4, x4, x9                                  #! PC = 0xaaaaaaaaaa24 *)
xor x4@uint64 x4 x9;
(* eor	x26, x26, x10                               #! PC = 0xaaaaaaaaaa28 *)
xor x26@uint64 x26 x10;
(* eor	x27, x27, x11                               #! PC = 0xaaaaaaaaaa2c *)
xor x27@uint64 x27 x11;
(* eor	x28, x28, x12                               #! PC = 0xaaaaaaaaaa30 *)
xor x28@uint64 x28 x12;
(* eor	x30, x30, x13                               #! PC = 0xaaaaaaaaaa34 *)
xor x30@uint64 x30 x13;
(* eor	x4, x4, x14                                 #! PC = 0xaaaaaaaaaa38 *)
xor x4@uint64 x4 x14;
(* eor	x26, x26, x15                               #! PC = 0xaaaaaaaaaa3c *)
xor x26@uint64 x26 x15;
(* eor	x27, x27, x16                               #! PC = 0xaaaaaaaaaa40 *)
xor x27@uint64 x27 x16;
(* eor	x28, x28, x17                               #! PC = 0xaaaaaaaaaa44 *)
xor x28@uint64 x28 x17;
(* eor	x30, x30, x25                               #! PC = 0xaaaaaaaaaa48 *)
xor x30@uint64 x30 x25;
(* eor	x4, x4, x19                                 #! PC = 0xaaaaaaaaaa4c *)
xor x4@uint64 x4 x19;
(* eor	x26, x26, x20                               #! PC = 0xaaaaaaaaaa50 *)
xor x26@uint64 x26 x20;
(* eor	x28, x28, x22                               #! PC = 0xaaaaaaaaaa54 *)
xor x28@uint64 x28 x22;
(* eor	x27, x27, x21                               #! PC = 0xaaaaaaaaaa58 *)
xor x27@uint64 x27 x21;
(* eor	x30, x30, x23                               #! PC = 0xaaaaaaaaaa5c *)
xor x30@uint64 x30 x23;
(* eor	x4, x4, x24                                 #! PC = 0xaaaaaaaaaa60 *)
xor x4@uint64 x4 x24;
(* eor	x9, x26, x28, ror #63                       #! PC = 0xaaaaaaaaaa64 *)
split x28_h x28_l x28 63;
shl x28_ls x28_l 1@uint64;
add x28_ror x28_ls x28_h;
xor x9@uint64 x26 x28_ror;
(* eor	x1, x1, x9                                  #! PC = 0xaaaaaaaaaa68 *)
xor x1@uint64 x1 x9;
(* eor	x6, x6, x9                                  #! PC = 0xaaaaaaaaaa6c *)
xor x6@uint64 x6 x9;
(* eor	x11, x11, x9                                #! PC = 0xaaaaaaaaaa70 *)
xor x11@uint64 x11 x9;
(* eor	x16, x16, x9                                #! PC = 0xaaaaaaaaaa74 *)
xor x16@uint64 x16 x9;
(* eor	x21, x21, x9                                #! PC = 0xaaaaaaaaaa78 *)
xor x21@uint64 x21 x9;
(* eor	x9, x27, x30, ror #63                       #! PC = 0xaaaaaaaaaa7c *)
split x30_h x30_l x30 63;
shl x30_ls x30_l 1@uint64;
add x30_ror x30_ls x30_h;
xor x9@uint64 x27 x30_ror;
(* eor	x28, x28, x4, ror #63                       #! PC = 0xaaaaaaaaaa80 *)
split x4_h x4_l x4 63;
shl x4_ls x4_l 1@uint64;
add x4_ror x4_ls x4_h;
xor x28@uint64 x28 x4_ror;
(* eor	x30, x30, x26, ror #63                      #! PC = 0xaaaaaaaaaa84 *)
split x26_h x26_l x26 63;
shl x26_ls x26_l 1@uint64;
add x26_ror x26_ls x26_h;
xor x30@uint64 x30 x26_ror;
(* eor	x4, x4, x27, ror #63                        #! PC = 0xaaaaaaaaaa88 *)
split x27_h x27_l x27 63;
shl x27_ls x27_l 1@uint64;
add x27_ror x27_ls x27_h;
xor x4@uint64 x4 x27_ror;
(* eor	x27, x2, x9                                 #! PC = 0xaaaaaaaaaa8c *)
xor x27@uint64 x2 x9;
(* eor	x7, x7, x9                                  #! PC = 0xaaaaaaaaaa90 *)
xor x7@uint64 x7 x9;
(* eor	x12, x12, x9                                #! PC = 0xaaaaaaaaaa94 *)
xor x12@uint64 x12 x9;
(* eor	x17, x17, x9                                #! PC = 0xaaaaaaaaaa98 *)
xor x17@uint64 x17 x9;
(* eor	x22, x22, x9                                #! PC = 0xaaaaaaaaaa9c *)
xor x22@uint64 x22 x9;
(* eor	x0, x0, x4                                  #! PC = 0xaaaaaaaaaaa0 *)
xor x0@uint64 x0 x4;
(* eor	x5, x5, x4                                  #! PC = 0xaaaaaaaaaaa4 *)
xor x5@uint64 x5 x4;
(* eor	x10, x10, x4                                #! PC = 0xaaaaaaaaaaa8 *)
xor x10@uint64 x10 x4;
(* eor	x15, x15, x4                                #! PC = 0xaaaaaaaaaaac *)
xor x15@uint64 x15 x4;
(* eor	x20, x20, x4                                #! PC = 0xaaaaaaaaaab0 *)
xor x20@uint64 x20 x4;
(* ldp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; Value = 0xa368aaebf04c7c5f; PC = 0xaaaaaaaaaab4 *)
mov x4 L0xffffffffe8c0;
mov x9 L0xffffffffe8c8;
(* eor	x26, x3, x28                                #! PC = 0xaaaaaaaaaab8 *)
xor x26@uint64 x3 x28;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaaabc *)
xor x8@uint64 x8 x28;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaaac0 *)
xor x13@uint64 x13 x28;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaaac4 *)
xor x25@uint64 x25 x28;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaaac8 *)
xor x23@uint64 x23 x28;
(* eor	x28, x4, x30                                #! PC = 0xaaaaaaaaaacc *)
xor x28@uint64 x4 x30;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaad0 *)
xor x9@uint64 x9 x30;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaaad4 *)
xor x14@uint64 x14 x30;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaaad8 *)
xor x19@uint64 x19 x30;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaaadc *)
xor x24@uint64 x24 x30;
(* mov	x30, x1                                     #! PC = 0xaaaaaaaaaae0 *)
mov x30 x1;
(* ror	x1, x6, #20                                 #! PC = 0xaaaaaaaaaae4 *)
split x6_h x6_l x6 20;
shl x6_ls x6_l (64-20)@uint64;
add x1 x6_ls x6_h;
(* ror	x2, x12, #21                                #! PC = 0xaaaaaaaaaae8 *)
split x12_h x12_l x12 21;
shl x12_ls x12_l (64-21)@uint64;
add x2 x12_ls x12_h;
(* ror	x3, x25, #43                                #! PC = 0xaaaaaaaaaaec *)
split x25_h x25_l x25 43;
shl x25_ls x25_l (64-43)@uint64;
add x3 x25_ls x25_h;
(* ror	x4, x24, #50                                #! PC = 0xaaaaaaaaaaf0 *)
split x24_h x24_l x24 50;
shl x24_ls x24_l (64-50)@uint64;
add x4 x24_ls x24_h;
(* ror	x6, x9, #44                                 #! PC = 0xaaaaaaaaaaf4 *)
split x9_h x9_l x9 44;
shl x9_ls x9_l (64-44)@uint64;
add x6 x9_ls x9_h;
(* ror	x12, x13, #39                               #! PC = 0xaaaaaaaaaaf8 *)
split x13_h x13_l x13 39;
shl x13_ls x13_l (64-39)@uint64;
add x12 x13_ls x13_h;
(* ror	x25, x17, #49                               #! PC = 0xaaaaaaaaaafc *)
split x17_h x17_l x17 49;
shl x17_ls x17_l (64-49)@uint64;
add x25 x17_ls x17_h;
(* ror	x24, x21, #62                               #! PC = 0xaaaaaaaaab00 *)
split x21_h x21_l x21 62;
shl x21_ls x21_l (64-62)@uint64;
add x24 x21_ls x21_h;
(* ror	x9, x22, #3                                 #! PC = 0xaaaaaaaaab04 *)
split x22_h x22_l x22 3;
shl x22_ls x22_l (64-3)@uint64;
add x9 x22_ls x22_h;
(* ror	x13, x19, #56                               #! PC = 0xaaaaaaaaab08 *)
split x19_h x19_l x19 56;
shl x19_ls x19_l (64-56)@uint64;
add x13 x19_ls x19_h;
(* ror	x17, x11, #54                               #! PC = 0xaaaaaaaaab0c *)
split x11_h x11_l x11 54;
shl x11_ls x11_l (64-54)@uint64;
add x17 x11_ls x11_h;
(* ror	x21, x8, #9                                 #! PC = 0xaaaaaaaaab10 *)
split x8_h x8_l x8 9;
shl x8_ls x8_l (64-9)@uint64;
add x21 x8_ls x8_h;
(* ror	x22, x14, #25                               #! PC = 0xaaaaaaaaab14 *)
split x14_h x14_l x14 25;
shl x14_ls x14_l (64-25)@uint64;
add x22 x14_ls x14_h;
(* ror	x19, x23, #8                                #! PC = 0xaaaaaaaaab18 *)
split x23_h x23_l x23 8;
shl x23_ls x23_l (64-8)@uint64;
add x19 x23_ls x23_h;
(* ror	x11, x7, #58                                #! PC = 0xaaaaaaaaab1c *)
split x7_h x7_l x7 58;
shl x7_ls x7_l (64-58)@uint64;
add x11 x7_ls x7_h;
(* ror	x8, x16, #19                                #! PC = 0xaaaaaaaaab20 *)
split x16_h x16_l x16 19;
shl x16_ls x16_l (64-19)@uint64;
add x8 x16_ls x16_h;
(* ror	x14, x20, #46                               #! PC = 0xaaaaaaaaab24 *)
split x20_h x20_l x20 46;
shl x20_ls x20_l (64-46)@uint64;
add x14 x20_ls x20_h;
(* ror	x23, x15, #23                               #! PC = 0xaaaaaaaaab28 *)
split x15_h x15_l x15 23;
shl x15_ls x15_l (64-23)@uint64;
add x23 x15_ls x15_h;
(* ror	x7, x10, #61                                #! PC = 0xaaaaaaaaab2c *)
split x10_h x10_l x10 61;
shl x10_ls x10_l (64-61)@uint64;
add x7 x10_ls x10_h;
(* ror	x16, x5, #28                                #! PC = 0xaaaaaaaaab30 *)
split x5_h x5_l x5 28;
shl x5_ls x5_l (64-28)@uint64;
add x16 x5_ls x5_h;
(* ror	x5, x26, #36                                #! PC = 0xaaaaaaaaab34 *)
split x26_h x26_l x26 36;
shl x26_ls x26_l (64-36)@uint64;
add x5 x26_ls x26_h;
(* ror	x10, x30, #63                               #! PC = 0xaaaaaaaaab38 *)
split x30_h x30_l x30 63;
shl x30_ls x30_l (64-63)@uint64;
add x10 x30_ls x30_h;
(* ror	x15, x28, #37                               #! PC = 0xaaaaaaaaab3c *)
split x28_h x28_l x28 37;
shl x28_ls x28_l (64-37)@uint64;
add x15 x28_ls x28_h;
(* ror	x20, x27, #2                                #! PC = 0xaaaaaaaaab40 *)
split x27_h x27_l x27 2;
shl x27_ls x27_l (64-2)@uint64;
add x20 x27_ls x27_h;
(* bic	x26, x2, x1                                 #! PC = 0xaaaaaaaaab44 *)
not x1_not@uint64 x1;
and x26@uint64 x2 x1_not;
(* bic	x27, x3, x2                                 #! PC = 0xaaaaaaaaab48 *)
not x2_not@uint64 x2;
and x27@uint64 x3 x2_not;
(* bic	x28, x0, x4                                 #! PC = 0xaaaaaaaaab4c *)
not x4_not@uint64 x4;
and x28@uint64 x0 x4_not;
(* bic	x30, x1, x0                                 #! PC = 0xaaaaaaaaab50 *)
not x0_not@uint64 x0;
and x30@uint64 x1 x0_not;
(* eor	x0, x0, x26                                 #! PC = 0xaaaaaaaaab54 *)
xor x0@uint64 x0 x26;
(* bic	x26, x4, x3                                 #! PC = 0xaaaaaaaaab58 *)
not x3_not@uint64 x3;
and x26@uint64 x4 x3_not;
(* eor	x1, x1, x27                                 #! PC = 0xaaaaaaaaab5c *)
xor x1@uint64 x1 x27;
(* ldr	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; Value = 0x0000aaaaaaaaa9e8; PC = 0xaaaaaaaaab60 *)
mov x27 L0xffffffffe8d0;
(* eor	x3, x3, x28                                 #! PC = 0xaaaaaaaaab64 *)
xor x3@uint64 x3 x28;
(* eor	x4, x4, x30                                 #! PC = 0xaaaaaaaaab68 *)
xor x4@uint64 x4 x30;
(* eor	x2, x2, x26                                 #! PC = 0xaaaaaaaaab6c *)
xor x2@uint64 x2 x26;
(* ldr	x30, [x27], #8                              #! EA = L0xaaaaaaaaa9e8; Value = 0x8000000000008080; PC = 0xaaaaaaaaab70 *)
mov x30 L0xaaaaaaaaa9e8;
(* bic	x26, x7, x6                                 #! PC = 0xaaaaaaaaab74 *)
not x6_not@uint64 x6;
and x26@uint64 x7 x6_not;
(* str	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; PC = 0xaaaaaaaaab7c *)
mov L0xffffffffe8d0 x27;
(* bic	x27, x8, x7                                 #! PC = 0xaaaaaaaaab80 *)
not x7_not@uint64 x7;
and x27@uint64 x8 x7_not;
(* bic	x28, x5, x9                                 #! PC = 0xaaaaaaaaab84 *)
not x9_not@uint64 x9;
and x28@uint64 x5 x9_not;
(* eor	x0, x0, x30                                 #! PC = 0xaaaaaaaaab88 *)
xor x0@uint64 x0 x30;
(* bic	x30, x6, x5                                 #! PC = 0xaaaaaaaaab8c *)
not x5_not@uint64 x5;
and x30@uint64 x6 x5_not;
(* eor	x5, x5, x26                                 #! PC = 0xaaaaaaaaab90 *)
xor x5@uint64 x5 x26;
(* bic	x26, x9, x8                                 #! PC = 0xaaaaaaaaab94 *)
not x8_not@uint64 x8;
and x26@uint64 x9 x8_not;
(* eor	x6, x6, x27                                 #! PC = 0xaaaaaaaaab98 *)
xor x6@uint64 x6 x27;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaab9c *)
xor x8@uint64 x8 x28;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaba0 *)
xor x9@uint64 x9 x30;
(* eor	x7, x7, x26                                 #! PC = 0xaaaaaaaaaba4 *)
xor x7@uint64 x7 x26;
(* bic	x26, x12, x11                               #! PC = 0xaaaaaaaaaba8 *)
not x11_not@uint64 x11;
and x26@uint64 x12 x11_not;
(* bic	x27, x13, x12                               #! PC = 0xaaaaaaaaabac *)
not x12_not@uint64 x12;
and x27@uint64 x13 x12_not;
(* bic	x28, x10, x14                               #! PC = 0xaaaaaaaaabb0 *)
not x14_not@uint64 x14;
and x28@uint64 x10 x14_not;
(* bic	x30, x11, x10                               #! PC = 0xaaaaaaaaabb4 *)
not x10_not@uint64 x10;
and x30@uint64 x11 x10_not;
(* eor	x10, x10, x26                               #! PC = 0xaaaaaaaaabb8 *)
xor x10@uint64 x10 x26;
(* bic	x26, x14, x13                               #! PC = 0xaaaaaaaaabbc *)
not x13_not@uint64 x13;
and x26@uint64 x14 x13_not;
(* eor	x11, x11, x27                               #! PC = 0xaaaaaaaaabc0 *)
xor x11@uint64 x11 x27;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaabc4 *)
xor x13@uint64 x13 x28;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaabc8 *)
xor x14@uint64 x14 x30;
(* eor	x12, x12, x26                               #! PC = 0xaaaaaaaaabcc *)
xor x12@uint64 x12 x26;
(* bic	x26, x17, x16                               #! PC = 0xaaaaaaaaabd0 *)
not x16_not@uint64 x16;
and x26@uint64 x17 x16_not;
(* bic	x27, x25, x17                               #! PC = 0xaaaaaaaaabd4 *)
not x17_not@uint64 x17;
and x27@uint64 x25 x17_not;
(* bic	x28, x15, x19                               #! PC = 0xaaaaaaaaabd8 *)
not x19_not@uint64 x19;
and x28@uint64 x15 x19_not;
(* bic	x30, x16, x15                               #! PC = 0xaaaaaaaaabdc *)
not x15_not@uint64 x15;
and x30@uint64 x16 x15_not;
(* eor	x15, x15, x26                               #! PC = 0xaaaaaaaaabe0 *)
xor x15@uint64 x15 x26;
(* bic	x26, x19, x25                               #! PC = 0xaaaaaaaaabe4 *)
not x25_not@uint64 x25;
and x26@uint64 x19 x25_not;
(* eor	x16, x16, x27                               #! PC = 0xaaaaaaaaabe8 *)
xor x16@uint64 x16 x27;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaabec *)
xor x25@uint64 x25 x28;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaabf0 *)
xor x19@uint64 x19 x30;
(* eor	x17, x17, x26                               #! PC = 0xaaaaaaaaabf4 *)
xor x17@uint64 x17 x26;
(* bic	x26, x22, x21                               #! PC = 0xaaaaaaaaabf8 *)
not x21_not@uint64 x21;
and x26@uint64 x22 x21_not;
(* bic	x27, x23, x22                               #! PC = 0xaaaaaaaaabfc *)
not x22_not@uint64 x22;
and x27@uint64 x23 x22_not;
(* bic	x28, x20, x24                               #! PC = 0xaaaaaaaaac00 *)
not x24_not@uint64 x24;
and x28@uint64 x20 x24_not;
(* bic	x30, x21, x20                               #! PC = 0xaaaaaaaaac04 *)
not x20_not@uint64 x20;
and x30@uint64 x21 x20_not;
(* eor	x20, x20, x26                               #! PC = 0xaaaaaaaaac08 *)
xor x20@uint64 x20 x26;
(* bic	x26, x24, x23                               #! PC = 0xaaaaaaaaac0c *)
not x23_not@uint64 x23;
and x26@uint64 x24 x23_not;
(* eor	x21, x21, x27                               #! PC = 0xaaaaaaaaac10 *)
xor x21@uint64 x21 x27;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaac14 *)
xor x23@uint64 x23 x28;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaac18 *)
xor x24@uint64 x24 x30;
(* eor	x22, x22, x26                               #! PC = 0xaaaaaaaaac1c *)
xor x22@uint64 x22 x26;
(* #b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! PC = 0xaaaaaaaaac20 *)
#b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! 0xaaaaaaaaac20 = 0xaaaaaaaaac20;
(* eor	x26, x0, x5                                 #! PC = 0xaaaaaaaaaa10 *)
xor x26@uint64 x0 x5;
(* stp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; PC = 0xaaaaaaaaaa14 *)
mov L0xffffffffe8c0 x4;
mov L0xffffffffe8c8 x9;
(* eor	x27, x1, x6                                 #! PC = 0xaaaaaaaaaa18 *)
xor x27@uint64 x1 x6;
(* eor	x28, x2, x7                                 #! PC = 0xaaaaaaaaaa1c *)
xor x28@uint64 x2 x7;
(* eor	x30, x3, x8                                 #! PC = 0xaaaaaaaaaa20 *)
xor x30@uint64 x3 x8;
(* eor	x4, x4, x9                                  #! PC = 0xaaaaaaaaaa24 *)
xor x4@uint64 x4 x9;
(* eor	x26, x26, x10                               #! PC = 0xaaaaaaaaaa28 *)
xor x26@uint64 x26 x10;
(* eor	x27, x27, x11                               #! PC = 0xaaaaaaaaaa2c *)
xor x27@uint64 x27 x11;
(* eor	x28, x28, x12                               #! PC = 0xaaaaaaaaaa30 *)
xor x28@uint64 x28 x12;
(* eor	x30, x30, x13                               #! PC = 0xaaaaaaaaaa34 *)
xor x30@uint64 x30 x13;
(* eor	x4, x4, x14                                 #! PC = 0xaaaaaaaaaa38 *)
xor x4@uint64 x4 x14;
(* eor	x26, x26, x15                               #! PC = 0xaaaaaaaaaa3c *)
xor x26@uint64 x26 x15;
(* eor	x27, x27, x16                               #! PC = 0xaaaaaaaaaa40 *)
xor x27@uint64 x27 x16;
(* eor	x28, x28, x17                               #! PC = 0xaaaaaaaaaa44 *)
xor x28@uint64 x28 x17;
(* eor	x30, x30, x25                               #! PC = 0xaaaaaaaaaa48 *)
xor x30@uint64 x30 x25;
(* eor	x4, x4, x19                                 #! PC = 0xaaaaaaaaaa4c *)
xor x4@uint64 x4 x19;
(* eor	x26, x26, x20                               #! PC = 0xaaaaaaaaaa50 *)
xor x26@uint64 x26 x20;
(* eor	x28, x28, x22                               #! PC = 0xaaaaaaaaaa54 *)
xor x28@uint64 x28 x22;
(* eor	x27, x27, x21                               #! PC = 0xaaaaaaaaaa58 *)
xor x27@uint64 x27 x21;
(* eor	x30, x30, x23                               #! PC = 0xaaaaaaaaaa5c *)
xor x30@uint64 x30 x23;
(* eor	x4, x4, x24                                 #! PC = 0xaaaaaaaaaa60 *)
xor x4@uint64 x4 x24;
(* eor	x9, x26, x28, ror #63                       #! PC = 0xaaaaaaaaaa64 *)
split x28_h x28_l x28 63;
shl x28_ls x28_l 1@uint64;
add x28_ror x28_ls x28_h;
xor x9@uint64 x26 x28_ror;
(* eor	x1, x1, x9                                  #! PC = 0xaaaaaaaaaa68 *)
xor x1@uint64 x1 x9;
(* eor	x6, x6, x9                                  #! PC = 0xaaaaaaaaaa6c *)
xor x6@uint64 x6 x9;
(* eor	x11, x11, x9                                #! PC = 0xaaaaaaaaaa70 *)
xor x11@uint64 x11 x9;
(* eor	x16, x16, x9                                #! PC = 0xaaaaaaaaaa74 *)
xor x16@uint64 x16 x9;
(* eor	x21, x21, x9                                #! PC = 0xaaaaaaaaaa78 *)
xor x21@uint64 x21 x9;
(* eor	x9, x27, x30, ror #63                       #! PC = 0xaaaaaaaaaa7c *)
split x30_h x30_l x30 63;
shl x30_ls x30_l 1@uint64;
add x30_ror x30_ls x30_h;
xor x9@uint64 x27 x30_ror;
(* eor	x28, x28, x4, ror #63                       #! PC = 0xaaaaaaaaaa80 *)
split x4_h x4_l x4 63;
shl x4_ls x4_l 1@uint64;
add x4_ror x4_ls x4_h;
xor x28@uint64 x28 x4_ror;
(* eor	x30, x30, x26, ror #63                      #! PC = 0xaaaaaaaaaa84 *)
split x26_h x26_l x26 63;
shl x26_ls x26_l 1@uint64;
add x26_ror x26_ls x26_h;
xor x30@uint64 x30 x26_ror;
(* eor	x4, x4, x27, ror #63                        #! PC = 0xaaaaaaaaaa88 *)
split x27_h x27_l x27 63;
shl x27_ls x27_l 1@uint64;
add x27_ror x27_ls x27_h;
xor x4@uint64 x4 x27_ror;
(* eor	x27, x2, x9                                 #! PC = 0xaaaaaaaaaa8c *)
xor x27@uint64 x2 x9;
(* eor	x7, x7, x9                                  #! PC = 0xaaaaaaaaaa90 *)
xor x7@uint64 x7 x9;
(* eor	x12, x12, x9                                #! PC = 0xaaaaaaaaaa94 *)
xor x12@uint64 x12 x9;
(* eor	x17, x17, x9                                #! PC = 0xaaaaaaaaaa98 *)
xor x17@uint64 x17 x9;
(* eor	x22, x22, x9                                #! PC = 0xaaaaaaaaaa9c *)
xor x22@uint64 x22 x9;
(* eor	x0, x0, x4                                  #! PC = 0xaaaaaaaaaaa0 *)
xor x0@uint64 x0 x4;
(* eor	x5, x5, x4                                  #! PC = 0xaaaaaaaaaaa4 *)
xor x5@uint64 x5 x4;
(* eor	x10, x10, x4                                #! PC = 0xaaaaaaaaaaa8 *)
xor x10@uint64 x10 x4;
(* eor	x15, x15, x4                                #! PC = 0xaaaaaaaaaaac *)
xor x15@uint64 x15 x4;
(* eor	x20, x20, x4                                #! PC = 0xaaaaaaaaaab0 *)
xor x20@uint64 x20 x4;
(* ldp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; Value = 0xded91f04247cfb98; PC = 0xaaaaaaaaaab4 *)
mov x4 L0xffffffffe8c0;
mov x9 L0xffffffffe8c8;
(* eor	x26, x3, x28                                #! PC = 0xaaaaaaaaaab8 *)
xor x26@uint64 x3 x28;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaaabc *)
xor x8@uint64 x8 x28;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaaac0 *)
xor x13@uint64 x13 x28;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaaac4 *)
xor x25@uint64 x25 x28;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaaac8 *)
xor x23@uint64 x23 x28;
(* eor	x28, x4, x30                                #! PC = 0xaaaaaaaaaacc *)
xor x28@uint64 x4 x30;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaad0 *)
xor x9@uint64 x9 x30;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaaad4 *)
xor x14@uint64 x14 x30;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaaad8 *)
xor x19@uint64 x19 x30;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaaadc *)
xor x24@uint64 x24 x30;
(* mov	x30, x1                                     #! PC = 0xaaaaaaaaaae0 *)
mov x30 x1;
(* ror	x1, x6, #20                                 #! PC = 0xaaaaaaaaaae4 *)
split x6_h x6_l x6 20;
shl x6_ls x6_l (64-20)@uint64;
add x1 x6_ls x6_h;
(* ror	x2, x12, #21                                #! PC = 0xaaaaaaaaaae8 *)
split x12_h x12_l x12 21;
shl x12_ls x12_l (64-21)@uint64;
add x2 x12_ls x12_h;
(* ror	x3, x25, #43                                #! PC = 0xaaaaaaaaaaec *)
split x25_h x25_l x25 43;
shl x25_ls x25_l (64-43)@uint64;
add x3 x25_ls x25_h;
(* ror	x4, x24, #50                                #! PC = 0xaaaaaaaaaaf0 *)
split x24_h x24_l x24 50;
shl x24_ls x24_l (64-50)@uint64;
add x4 x24_ls x24_h;
(* ror	x6, x9, #44                                 #! PC = 0xaaaaaaaaaaf4 *)
split x9_h x9_l x9 44;
shl x9_ls x9_l (64-44)@uint64;
add x6 x9_ls x9_h;
(* ror	x12, x13, #39                               #! PC = 0xaaaaaaaaaaf8 *)
split x13_h x13_l x13 39;
shl x13_ls x13_l (64-39)@uint64;
add x12 x13_ls x13_h;
(* ror	x25, x17, #49                               #! PC = 0xaaaaaaaaaafc *)
split x17_h x17_l x17 49;
shl x17_ls x17_l (64-49)@uint64;
add x25 x17_ls x17_h;
(* ror	x24, x21, #62                               #! PC = 0xaaaaaaaaab00 *)
split x21_h x21_l x21 62;
shl x21_ls x21_l (64-62)@uint64;
add x24 x21_ls x21_h;
(* ror	x9, x22, #3                                 #! PC = 0xaaaaaaaaab04 *)
split x22_h x22_l x22 3;
shl x22_ls x22_l (64-3)@uint64;
add x9 x22_ls x22_h;
(* ror	x13, x19, #56                               #! PC = 0xaaaaaaaaab08 *)
split x19_h x19_l x19 56;
shl x19_ls x19_l (64-56)@uint64;
add x13 x19_ls x19_h;
(* ror	x17, x11, #54                               #! PC = 0xaaaaaaaaab0c *)
split x11_h x11_l x11 54;
shl x11_ls x11_l (64-54)@uint64;
add x17 x11_ls x11_h;
(* ror	x21, x8, #9                                 #! PC = 0xaaaaaaaaab10 *)
split x8_h x8_l x8 9;
shl x8_ls x8_l (64-9)@uint64;
add x21 x8_ls x8_h;
(* ror	x22, x14, #25                               #! PC = 0xaaaaaaaaab14 *)
split x14_h x14_l x14 25;
shl x14_ls x14_l (64-25)@uint64;
add x22 x14_ls x14_h;
(* ror	x19, x23, #8                                #! PC = 0xaaaaaaaaab18 *)
split x23_h x23_l x23 8;
shl x23_ls x23_l (64-8)@uint64;
add x19 x23_ls x23_h;
(* ror	x11, x7, #58                                #! PC = 0xaaaaaaaaab1c *)
split x7_h x7_l x7 58;
shl x7_ls x7_l (64-58)@uint64;
add x11 x7_ls x7_h;
(* ror	x8, x16, #19                                #! PC = 0xaaaaaaaaab20 *)
split x16_h x16_l x16 19;
shl x16_ls x16_l (64-19)@uint64;
add x8 x16_ls x16_h;
(* ror	x14, x20, #46                               #! PC = 0xaaaaaaaaab24 *)
split x20_h x20_l x20 46;
shl x20_ls x20_l (64-46)@uint64;
add x14 x20_ls x20_h;
(* ror	x23, x15, #23                               #! PC = 0xaaaaaaaaab28 *)
split x15_h x15_l x15 23;
shl x15_ls x15_l (64-23)@uint64;
add x23 x15_ls x15_h;
(* ror	x7, x10, #61                                #! PC = 0xaaaaaaaaab2c *)
split x10_h x10_l x10 61;
shl x10_ls x10_l (64-61)@uint64;
add x7 x10_ls x10_h;
(* ror	x16, x5, #28                                #! PC = 0xaaaaaaaaab30 *)
split x5_h x5_l x5 28;
shl x5_ls x5_l (64-28)@uint64;
add x16 x5_ls x5_h;
(* ror	x5, x26, #36                                #! PC = 0xaaaaaaaaab34 *)
split x26_h x26_l x26 36;
shl x26_ls x26_l (64-36)@uint64;
add x5 x26_ls x26_h;
(* ror	x10, x30, #63                               #! PC = 0xaaaaaaaaab38 *)
split x30_h x30_l x30 63;
shl x30_ls x30_l (64-63)@uint64;
add x10 x30_ls x30_h;
(* ror	x15, x28, #37                               #! PC = 0xaaaaaaaaab3c *)
split x28_h x28_l x28 37;
shl x28_ls x28_l (64-37)@uint64;
add x15 x28_ls x28_h;
(* ror	x20, x27, #2                                #! PC = 0xaaaaaaaaab40 *)
split x27_h x27_l x27 2;
shl x27_ls x27_l (64-2)@uint64;
add x20 x27_ls x27_h;
(* bic	x26, x2, x1                                 #! PC = 0xaaaaaaaaab44 *)
not x1_not@uint64 x1;
and x26@uint64 x2 x1_not;
(* bic	x27, x3, x2                                 #! PC = 0xaaaaaaaaab48 *)
not x2_not@uint64 x2;
and x27@uint64 x3 x2_not;
(* bic	x28, x0, x4                                 #! PC = 0xaaaaaaaaab4c *)
not x4_not@uint64 x4;
and x28@uint64 x0 x4_not;
(* bic	x30, x1, x0                                 #! PC = 0xaaaaaaaaab50 *)
not x0_not@uint64 x0;
and x30@uint64 x1 x0_not;
(* eor	x0, x0, x26                                 #! PC = 0xaaaaaaaaab54 *)
xor x0@uint64 x0 x26;
(* bic	x26, x4, x3                                 #! PC = 0xaaaaaaaaab58 *)
not x3_not@uint64 x3;
and x26@uint64 x4 x3_not;
(* eor	x1, x1, x27                                 #! PC = 0xaaaaaaaaab5c *)
xor x1@uint64 x1 x27;
(* ldr	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; Value = 0x0000aaaaaaaaa9f0; PC = 0xaaaaaaaaab60 *)
mov x27 L0xffffffffe8d0;
(* eor	x3, x3, x28                                 #! PC = 0xaaaaaaaaab64 *)
xor x3@uint64 x3 x28;
(* eor	x4, x4, x30                                 #! PC = 0xaaaaaaaaab68 *)
xor x4@uint64 x4 x30;
(* eor	x2, x2, x26                                 #! PC = 0xaaaaaaaaab6c *)
xor x2@uint64 x2 x26;
(* ldr	x30, [x27], #8                              #! EA = L0xaaaaaaaaa9f0; Value = 0x0000000080000001; PC = 0xaaaaaaaaab70 *)
mov x30 L0xaaaaaaaaa9f0;
(* bic	x26, x7, x6                                 #! PC = 0xaaaaaaaaab74 *)
not x6_not@uint64 x6;
and x26@uint64 x7 x6_not;
(* str	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; PC = 0xaaaaaaaaab7c *)
mov L0xffffffffe8d0 x27;
(* bic	x27, x8, x7                                 #! PC = 0xaaaaaaaaab80 *)
not x7_not@uint64 x7;
and x27@uint64 x8 x7_not;
(* bic	x28, x5, x9                                 #! PC = 0xaaaaaaaaab84 *)
not x9_not@uint64 x9;
and x28@uint64 x5 x9_not;
(* eor	x0, x0, x30                                 #! PC = 0xaaaaaaaaab88 *)
xor x0@uint64 x0 x30;
(* bic	x30, x6, x5                                 #! PC = 0xaaaaaaaaab8c *)
not x5_not@uint64 x5;
and x30@uint64 x6 x5_not;
(* eor	x5, x5, x26                                 #! PC = 0xaaaaaaaaab90 *)
xor x5@uint64 x5 x26;
(* bic	x26, x9, x8                                 #! PC = 0xaaaaaaaaab94 *)
not x8_not@uint64 x8;
and x26@uint64 x9 x8_not;
(* eor	x6, x6, x27                                 #! PC = 0xaaaaaaaaab98 *)
xor x6@uint64 x6 x27;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaab9c *)
xor x8@uint64 x8 x28;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaba0 *)
xor x9@uint64 x9 x30;
(* eor	x7, x7, x26                                 #! PC = 0xaaaaaaaaaba4 *)
xor x7@uint64 x7 x26;
(* bic	x26, x12, x11                               #! PC = 0xaaaaaaaaaba8 *)
not x11_not@uint64 x11;
and x26@uint64 x12 x11_not;
(* bic	x27, x13, x12                               #! PC = 0xaaaaaaaaabac *)
not x12_not@uint64 x12;
and x27@uint64 x13 x12_not;
(* bic	x28, x10, x14                               #! PC = 0xaaaaaaaaabb0 *)
not x14_not@uint64 x14;
and x28@uint64 x10 x14_not;
(* bic	x30, x11, x10                               #! PC = 0xaaaaaaaaabb4 *)
not x10_not@uint64 x10;
and x30@uint64 x11 x10_not;
(* eor	x10, x10, x26                               #! PC = 0xaaaaaaaaabb8 *)
xor x10@uint64 x10 x26;
(* bic	x26, x14, x13                               #! PC = 0xaaaaaaaaabbc *)
not x13_not@uint64 x13;
and x26@uint64 x14 x13_not;
(* eor	x11, x11, x27                               #! PC = 0xaaaaaaaaabc0 *)
xor x11@uint64 x11 x27;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaabc4 *)
xor x13@uint64 x13 x28;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaabc8 *)
xor x14@uint64 x14 x30;
(* eor	x12, x12, x26                               #! PC = 0xaaaaaaaaabcc *)
xor x12@uint64 x12 x26;
(* bic	x26, x17, x16                               #! PC = 0xaaaaaaaaabd0 *)
not x16_not@uint64 x16;
and x26@uint64 x17 x16_not;
(* bic	x27, x25, x17                               #! PC = 0xaaaaaaaaabd4 *)
not x17_not@uint64 x17;
and x27@uint64 x25 x17_not;
(* bic	x28, x15, x19                               #! PC = 0xaaaaaaaaabd8 *)
not x19_not@uint64 x19;
and x28@uint64 x15 x19_not;
(* bic	x30, x16, x15                               #! PC = 0xaaaaaaaaabdc *)
not x15_not@uint64 x15;
and x30@uint64 x16 x15_not;
(* eor	x15, x15, x26                               #! PC = 0xaaaaaaaaabe0 *)
xor x15@uint64 x15 x26;
(* bic	x26, x19, x25                               #! PC = 0xaaaaaaaaabe4 *)
not x25_not@uint64 x25;
and x26@uint64 x19 x25_not;
(* eor	x16, x16, x27                               #! PC = 0xaaaaaaaaabe8 *)
xor x16@uint64 x16 x27;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaabec *)
xor x25@uint64 x25 x28;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaabf0 *)
xor x19@uint64 x19 x30;
(* eor	x17, x17, x26                               #! PC = 0xaaaaaaaaabf4 *)
xor x17@uint64 x17 x26;
(* bic	x26, x22, x21                               #! PC = 0xaaaaaaaaabf8 *)
not x21_not@uint64 x21;
and x26@uint64 x22 x21_not;
(* bic	x27, x23, x22                               #! PC = 0xaaaaaaaaabfc *)
not x22_not@uint64 x22;
and x27@uint64 x23 x22_not;
(* bic	x28, x20, x24                               #! PC = 0xaaaaaaaaac00 *)
not x24_not@uint64 x24;
and x28@uint64 x20 x24_not;
(* bic	x30, x21, x20                               #! PC = 0xaaaaaaaaac04 *)
not x20_not@uint64 x20;
and x30@uint64 x21 x20_not;
(* eor	x20, x20, x26                               #! PC = 0xaaaaaaaaac08 *)
xor x20@uint64 x20 x26;
(* bic	x26, x24, x23                               #! PC = 0xaaaaaaaaac0c *)
not x23_not@uint64 x23;
and x26@uint64 x24 x23_not;
(* eor	x21, x21, x27                               #! PC = 0xaaaaaaaaac10 *)
xor x21@uint64 x21 x27;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaac14 *)
xor x23@uint64 x23 x28;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaac18 *)
xor x24@uint64 x24 x30;
(* eor	x22, x22, x26                               #! PC = 0xaaaaaaaaac1c *)
xor x22@uint64 x22 x26;
(* #b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! PC = 0xaaaaaaaaac20 *)
#b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! 0xaaaaaaaaac20 = 0xaaaaaaaaac20;
(* eor	x26, x0, x5                                 #! PC = 0xaaaaaaaaaa10 *)
xor x26@uint64 x0 x5;
(* stp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; PC = 0xaaaaaaaaaa14 *)
mov L0xffffffffe8c0 x4;
mov L0xffffffffe8c8 x9;
(* eor	x27, x1, x6                                 #! PC = 0xaaaaaaaaaa18 *)
xor x27@uint64 x1 x6;
(* eor	x28, x2, x7                                 #! PC = 0xaaaaaaaaaa1c *)
xor x28@uint64 x2 x7;
(* eor	x30, x3, x8                                 #! PC = 0xaaaaaaaaaa20 *)
xor x30@uint64 x3 x8;
(* eor	x4, x4, x9                                  #! PC = 0xaaaaaaaaaa24 *)
xor x4@uint64 x4 x9;
(* eor	x26, x26, x10                               #! PC = 0xaaaaaaaaaa28 *)
xor x26@uint64 x26 x10;
(* eor	x27, x27, x11                               #! PC = 0xaaaaaaaaaa2c *)
xor x27@uint64 x27 x11;
(* eor	x28, x28, x12                               #! PC = 0xaaaaaaaaaa30 *)
xor x28@uint64 x28 x12;
(* eor	x30, x30, x13                               #! PC = 0xaaaaaaaaaa34 *)
xor x30@uint64 x30 x13;
(* eor	x4, x4, x14                                 #! PC = 0xaaaaaaaaaa38 *)
xor x4@uint64 x4 x14;
(* eor	x26, x26, x15                               #! PC = 0xaaaaaaaaaa3c *)
xor x26@uint64 x26 x15;
(* eor	x27, x27, x16                               #! PC = 0xaaaaaaaaaa40 *)
xor x27@uint64 x27 x16;
(* eor	x28, x28, x17                               #! PC = 0xaaaaaaaaaa44 *)
xor x28@uint64 x28 x17;
(* eor	x30, x30, x25                               #! PC = 0xaaaaaaaaaa48 *)
xor x30@uint64 x30 x25;
(* eor	x4, x4, x19                                 #! PC = 0xaaaaaaaaaa4c *)
xor x4@uint64 x4 x19;
(* eor	x26, x26, x20                               #! PC = 0xaaaaaaaaaa50 *)
xor x26@uint64 x26 x20;
(* eor	x28, x28, x22                               #! PC = 0xaaaaaaaaaa54 *)
xor x28@uint64 x28 x22;
(* eor	x27, x27, x21                               #! PC = 0xaaaaaaaaaa58 *)
xor x27@uint64 x27 x21;
(* eor	x30, x30, x23                               #! PC = 0xaaaaaaaaaa5c *)
xor x30@uint64 x30 x23;
(* eor	x4, x4, x24                                 #! PC = 0xaaaaaaaaaa60 *)
xor x4@uint64 x4 x24;
(* eor	x9, x26, x28, ror #63                       #! PC = 0xaaaaaaaaaa64 *)
split x28_h x28_l x28 63;
shl x28_ls x28_l 1@uint64;
add x28_ror x28_ls x28_h;
xor x9@uint64 x26 x28_ror;
(* eor	x1, x1, x9                                  #! PC = 0xaaaaaaaaaa68 *)
xor x1@uint64 x1 x9;
(* eor	x6, x6, x9                                  #! PC = 0xaaaaaaaaaa6c *)
xor x6@uint64 x6 x9;
(* eor	x11, x11, x9                                #! PC = 0xaaaaaaaaaa70 *)
xor x11@uint64 x11 x9;
(* eor	x16, x16, x9                                #! PC = 0xaaaaaaaaaa74 *)
xor x16@uint64 x16 x9;
(* eor	x21, x21, x9                                #! PC = 0xaaaaaaaaaa78 *)
xor x21@uint64 x21 x9;
(* eor	x9, x27, x30, ror #63                       #! PC = 0xaaaaaaaaaa7c *)
split x30_h x30_l x30 63;
shl x30_ls x30_l 1@uint64;
add x30_ror x30_ls x30_h;
xor x9@uint64 x27 x30_ror;
(* eor	x28, x28, x4, ror #63                       #! PC = 0xaaaaaaaaaa80 *)
split x4_h x4_l x4 63;
shl x4_ls x4_l 1@uint64;
add x4_ror x4_ls x4_h;
xor x28@uint64 x28 x4_ror;
(* eor	x30, x30, x26, ror #63                      #! PC = 0xaaaaaaaaaa84 *)
split x26_h x26_l x26 63;
shl x26_ls x26_l 1@uint64;
add x26_ror x26_ls x26_h;
xor x30@uint64 x30 x26_ror;
(* eor	x4, x4, x27, ror #63                        #! PC = 0xaaaaaaaaaa88 *)
split x27_h x27_l x27 63;
shl x27_ls x27_l 1@uint64;
add x27_ror x27_ls x27_h;
xor x4@uint64 x4 x27_ror;
(* eor	x27, x2, x9                                 #! PC = 0xaaaaaaaaaa8c *)
xor x27@uint64 x2 x9;
(* eor	x7, x7, x9                                  #! PC = 0xaaaaaaaaaa90 *)
xor x7@uint64 x7 x9;
(* eor	x12, x12, x9                                #! PC = 0xaaaaaaaaaa94 *)
xor x12@uint64 x12 x9;
(* eor	x17, x17, x9                                #! PC = 0xaaaaaaaaaa98 *)
xor x17@uint64 x17 x9;
(* eor	x22, x22, x9                                #! PC = 0xaaaaaaaaaa9c *)
xor x22@uint64 x22 x9;
(* eor	x0, x0, x4                                  #! PC = 0xaaaaaaaaaaa0 *)
xor x0@uint64 x0 x4;
(* eor	x5, x5, x4                                  #! PC = 0xaaaaaaaaaaa4 *)
xor x5@uint64 x5 x4;
(* eor	x10, x10, x4                                #! PC = 0xaaaaaaaaaaa8 *)
xor x10@uint64 x10 x4;
(* eor	x15, x15, x4                                #! PC = 0xaaaaaaaaaaac *)
xor x15@uint64 x15 x4;
(* eor	x20, x20, x4                                #! PC = 0xaaaaaaaaaab0 *)
xor x20@uint64 x20 x4;
(* ldp	x4, x9, [sp]                                #! EA = L0xffffffffe8c0; Value = 0x1cc6fda03e8bc586; PC = 0xaaaaaaaaaab4 *)
mov x4 L0xffffffffe8c0;
mov x9 L0xffffffffe8c8;
(* eor	x26, x3, x28                                #! PC = 0xaaaaaaaaaab8 *)
xor x26@uint64 x3 x28;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaaabc *)
xor x8@uint64 x8 x28;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaaac0 *)
xor x13@uint64 x13 x28;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaaac4 *)
xor x25@uint64 x25 x28;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaaac8 *)
xor x23@uint64 x23 x28;
(* eor	x28, x4, x30                                #! PC = 0xaaaaaaaaaacc *)
xor x28@uint64 x4 x30;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaad0 *)
xor x9@uint64 x9 x30;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaaad4 *)
xor x14@uint64 x14 x30;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaaad8 *)
xor x19@uint64 x19 x30;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaaadc *)
xor x24@uint64 x24 x30;
(* mov	x30, x1                                     #! PC = 0xaaaaaaaaaae0 *)
mov x30 x1;
(* ror	x1, x6, #20                                 #! PC = 0xaaaaaaaaaae4 *)
split x6_h x6_l x6 20;
shl x6_ls x6_l (64-20)@uint64;
add x1 x6_ls x6_h;
(* ror	x2, x12, #21                                #! PC = 0xaaaaaaaaaae8 *)
split x12_h x12_l x12 21;
shl x12_ls x12_l (64-21)@uint64;
add x2 x12_ls x12_h;
(* ror	x3, x25, #43                                #! PC = 0xaaaaaaaaaaec *)
split x25_h x25_l x25 43;
shl x25_ls x25_l (64-43)@uint64;
add x3 x25_ls x25_h;
(* ror	x4, x24, #50                                #! PC = 0xaaaaaaaaaaf0 *)
split x24_h x24_l x24 50;
shl x24_ls x24_l (64-50)@uint64;
add x4 x24_ls x24_h;
(* ror	x6, x9, #44                                 #! PC = 0xaaaaaaaaaaf4 *)
split x9_h x9_l x9 44;
shl x9_ls x9_l (64-44)@uint64;
add x6 x9_ls x9_h;
(* ror	x12, x13, #39                               #! PC = 0xaaaaaaaaaaf8 *)
split x13_h x13_l x13 39;
shl x13_ls x13_l (64-39)@uint64;
add x12 x13_ls x13_h;
(* ror	x25, x17, #49                               #! PC = 0xaaaaaaaaaafc *)
split x17_h x17_l x17 49;
shl x17_ls x17_l (64-49)@uint64;
add x25 x17_ls x17_h;
(* ror	x24, x21, #62                               #! PC = 0xaaaaaaaaab00 *)
split x21_h x21_l x21 62;
shl x21_ls x21_l (64-62)@uint64;
add x24 x21_ls x21_h;
(* ror	x9, x22, #3                                 #! PC = 0xaaaaaaaaab04 *)
split x22_h x22_l x22 3;
shl x22_ls x22_l (64-3)@uint64;
add x9 x22_ls x22_h;
(* ror	x13, x19, #56                               #! PC = 0xaaaaaaaaab08 *)
split x19_h x19_l x19 56;
shl x19_ls x19_l (64-56)@uint64;
add x13 x19_ls x19_h;
(* ror	x17, x11, #54                               #! PC = 0xaaaaaaaaab0c *)
split x11_h x11_l x11 54;
shl x11_ls x11_l (64-54)@uint64;
add x17 x11_ls x11_h;
(* ror	x21, x8, #9                                 #! PC = 0xaaaaaaaaab10 *)
split x8_h x8_l x8 9;
shl x8_ls x8_l (64-9)@uint64;
add x21 x8_ls x8_h;
(* ror	x22, x14, #25                               #! PC = 0xaaaaaaaaab14 *)
split x14_h x14_l x14 25;
shl x14_ls x14_l (64-25)@uint64;
add x22 x14_ls x14_h;
(* ror	x19, x23, #8                                #! PC = 0xaaaaaaaaab18 *)
split x23_h x23_l x23 8;
shl x23_ls x23_l (64-8)@uint64;
add x19 x23_ls x23_h;
(* ror	x11, x7, #58                                #! PC = 0xaaaaaaaaab1c *)
split x7_h x7_l x7 58;
shl x7_ls x7_l (64-58)@uint64;
add x11 x7_ls x7_h;
(* ror	x8, x16, #19                                #! PC = 0xaaaaaaaaab20 *)
split x16_h x16_l x16 19;
shl x16_ls x16_l (64-19)@uint64;
add x8 x16_ls x16_h;
(* ror	x14, x20, #46                               #! PC = 0xaaaaaaaaab24 *)
split x20_h x20_l x20 46;
shl x20_ls x20_l (64-46)@uint64;
add x14 x20_ls x20_h;
(* ror	x23, x15, #23                               #! PC = 0xaaaaaaaaab28 *)
split x15_h x15_l x15 23;
shl x15_ls x15_l (64-23)@uint64;
add x23 x15_ls x15_h;
(* ror	x7, x10, #61                                #! PC = 0xaaaaaaaaab2c *)
split x10_h x10_l x10 61;
shl x10_ls x10_l (64-61)@uint64;
add x7 x10_ls x10_h;
(* ror	x16, x5, #28                                #! PC = 0xaaaaaaaaab30 *)
split x5_h x5_l x5 28;
shl x5_ls x5_l (64-28)@uint64;
add x16 x5_ls x5_h;
(* ror	x5, x26, #36                                #! PC = 0xaaaaaaaaab34 *)
split x26_h x26_l x26 36;
shl x26_ls x26_l (64-36)@uint64;
add x5 x26_ls x26_h;
(* ror	x10, x30, #63                               #! PC = 0xaaaaaaaaab38 *)
split x30_h x30_l x30 63;
shl x30_ls x30_l (64-63)@uint64;
add x10 x30_ls x30_h;
(* ror	x15, x28, #37                               #! PC = 0xaaaaaaaaab3c *)
split x28_h x28_l x28 37;
shl x28_ls x28_l (64-37)@uint64;
add x15 x28_ls x28_h;
(* ror	x20, x27, #2                                #! PC = 0xaaaaaaaaab40 *)
split x27_h x27_l x27 2;
shl x27_ls x27_l (64-2)@uint64;
add x20 x27_ls x27_h;
(* bic	x26, x2, x1                                 #! PC = 0xaaaaaaaaab44 *)
not x1_not@uint64 x1;
and x26@uint64 x2 x1_not;
(* bic	x27, x3, x2                                 #! PC = 0xaaaaaaaaab48 *)
not x2_not@uint64 x2;
and x27@uint64 x3 x2_not;
(* bic	x28, x0, x4                                 #! PC = 0xaaaaaaaaab4c *)
not x4_not@uint64 x4;
and x28@uint64 x0 x4_not;
(* bic	x30, x1, x0                                 #! PC = 0xaaaaaaaaab50 *)
not x0_not@uint64 x0;
and x30@uint64 x1 x0_not;
(* eor	x0, x0, x26                                 #! PC = 0xaaaaaaaaab54 *)
xor x0@uint64 x0 x26;
(* bic	x26, x4, x3                                 #! PC = 0xaaaaaaaaab58 *)
not x3_not@uint64 x3;
and x26@uint64 x4 x3_not;
(* eor	x1, x1, x27                                 #! PC = 0xaaaaaaaaab5c *)
xor x1@uint64 x1 x27;
(* ldr	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; Value = 0x0000aaaaaaaaa9f8; PC = 0xaaaaaaaaab60 *)
mov x27 L0xffffffffe8d0;
(* eor	x3, x3, x28                                 #! PC = 0xaaaaaaaaab64 *)
xor x3@uint64 x3 x28;
(* eor	x4, x4, x30                                 #! PC = 0xaaaaaaaaab68 *)
xor x4@uint64 x4 x30;
(* eor	x2, x2, x26                                 #! PC = 0xaaaaaaaaab6c *)
xor x2@uint64 x2 x26;
(* ldr	x30, [x27], #8                              #! EA = L0xaaaaaaaaa9f8; Value = 0x8000000080008008; PC = 0xaaaaaaaaab70 *)
mov x30 L0xaaaaaaaaa9f8;
(* bic	x26, x7, x6                                 #! PC = 0xaaaaaaaaab74 *)
not x6_not@uint64 x6;
and x26@uint64 x7 x6_not;
(* str	x27, [sp, #16]                              #! EA = L0xffffffffe8d0; PC = 0xaaaaaaaaab7c *)
mov L0xffffffffe8d0 x27;
(* bic	x27, x8, x7                                 #! PC = 0xaaaaaaaaab80 *)
not x7_not@uint64 x7;
and x27@uint64 x8 x7_not;
(* bic	x28, x5, x9                                 #! PC = 0xaaaaaaaaab84 *)
not x9_not@uint64 x9;
and x28@uint64 x5 x9_not;
(* eor	x0, x0, x30                                 #! PC = 0xaaaaaaaaab88 *)
xor x0@uint64 x0 x30;
(* bic	x30, x6, x5                                 #! PC = 0xaaaaaaaaab8c *)
not x5_not@uint64 x5;
and x30@uint64 x6 x5_not;
(* eor	x5, x5, x26                                 #! PC = 0xaaaaaaaaab90 *)
xor x5@uint64 x5 x26;
(* bic	x26, x9, x8                                 #! PC = 0xaaaaaaaaab94 *)
not x8_not@uint64 x8;
and x26@uint64 x9 x8_not;
(* eor	x6, x6, x27                                 #! PC = 0xaaaaaaaaab98 *)
xor x6@uint64 x6 x27;
(* eor	x8, x8, x28                                 #! PC = 0xaaaaaaaaab9c *)
xor x8@uint64 x8 x28;
(* eor	x9, x9, x30                                 #! PC = 0xaaaaaaaaaba0 *)
xor x9@uint64 x9 x30;
(* eor	x7, x7, x26                                 #! PC = 0xaaaaaaaaaba4 *)
xor x7@uint64 x7 x26;
(* bic	x26, x12, x11                               #! PC = 0xaaaaaaaaaba8 *)
not x11_not@uint64 x11;
and x26@uint64 x12 x11_not;
(* bic	x27, x13, x12                               #! PC = 0xaaaaaaaaabac *)
not x12_not@uint64 x12;
and x27@uint64 x13 x12_not;
(* bic	x28, x10, x14                               #! PC = 0xaaaaaaaaabb0 *)
not x14_not@uint64 x14;
and x28@uint64 x10 x14_not;
(* bic	x30, x11, x10                               #! PC = 0xaaaaaaaaabb4 *)
not x10_not@uint64 x10;
and x30@uint64 x11 x10_not;
(* eor	x10, x10, x26                               #! PC = 0xaaaaaaaaabb8 *)
xor x10@uint64 x10 x26;
(* bic	x26, x14, x13                               #! PC = 0xaaaaaaaaabbc *)
not x13_not@uint64 x13;
and x26@uint64 x14 x13_not;
(* eor	x11, x11, x27                               #! PC = 0xaaaaaaaaabc0 *)
xor x11@uint64 x11 x27;
(* eor	x13, x13, x28                               #! PC = 0xaaaaaaaaabc4 *)
xor x13@uint64 x13 x28;
(* eor	x14, x14, x30                               #! PC = 0xaaaaaaaaabc8 *)
xor x14@uint64 x14 x30;
(* eor	x12, x12, x26                               #! PC = 0xaaaaaaaaabcc *)
xor x12@uint64 x12 x26;
(* bic	x26, x17, x16                               #! PC = 0xaaaaaaaaabd0 *)
not x16_not@uint64 x16;
and x26@uint64 x17 x16_not;
(* bic	x27, x25, x17                               #! PC = 0xaaaaaaaaabd4 *)
not x17_not@uint64 x17;
and x27@uint64 x25 x17_not;
(* bic	x28, x15, x19                               #! PC = 0xaaaaaaaaabd8 *)
not x19_not@uint64 x19;
and x28@uint64 x15 x19_not;
(* bic	x30, x16, x15                               #! PC = 0xaaaaaaaaabdc *)
not x15_not@uint64 x15;
and x30@uint64 x16 x15_not;
(* eor	x15, x15, x26                               #! PC = 0xaaaaaaaaabe0 *)
xor x15@uint64 x15 x26;
(* bic	x26, x19, x25                               #! PC = 0xaaaaaaaaabe4 *)
not x25_not@uint64 x25;
and x26@uint64 x19 x25_not;
(* eor	x16, x16, x27                               #! PC = 0xaaaaaaaaabe8 *)
xor x16@uint64 x16 x27;
(* eor	x25, x25, x28                               #! PC = 0xaaaaaaaaabec *)
xor x25@uint64 x25 x28;
(* eor	x19, x19, x30                               #! PC = 0xaaaaaaaaabf0 *)
xor x19@uint64 x19 x30;
(* eor	x17, x17, x26                               #! PC = 0xaaaaaaaaabf4 *)
xor x17@uint64 x17 x26;
(* bic	x26, x22, x21                               #! PC = 0xaaaaaaaaabf8 *)
not x21_not@uint64 x21;
and x26@uint64 x22 x21_not;
(* bic	x27, x23, x22                               #! PC = 0xaaaaaaaaabfc *)
not x22_not@uint64 x22;
and x27@uint64 x23 x22_not;
(* bic	x28, x20, x24                               #! PC = 0xaaaaaaaaac00 *)
not x24_not@uint64 x24;
and x28@uint64 x20 x24_not;
(* bic	x30, x21, x20                               #! PC = 0xaaaaaaaaac04 *)
not x20_not@uint64 x20;
and x30@uint64 x21 x20_not;
(* eor	x20, x20, x26                               #! PC = 0xaaaaaaaaac08 *)
xor x20@uint64 x20 x26;
(* bic	x26, x24, x23                               #! PC = 0xaaaaaaaaac0c *)
not x23_not@uint64 x23;
and x26@uint64 x24 x23_not;
(* eor	x21, x21, x27                               #! PC = 0xaaaaaaaaac10 *)
xor x21@uint64 x21 x27;
(* eor	x23, x23, x28                               #! PC = 0xaaaaaaaaac14 *)
xor x23@uint64 x23 x28;
(* eor	x24, x24, x30                               #! PC = 0xaaaaaaaaac18 *)
xor x24@uint64 x24 x30;
(* eor	x22, x22, x26                               #! PC = 0xaaaaaaaaac1c *)
xor x22@uint64 x22 x26;
(* #b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! PC = 0xaaaaaaaaac20 *)
#b.ne	0xaaaaaaaaaa10 <KeccakF1600_int+16>  // b.any#! 0xaaaaaaaaac20 = 0xaaaaaaaaac20;
# (* ldr	x30, [sp, #24]                              #! EA = L0xffffffffe8d8; Value = 0x0000aaaaaaaaaedc; PC = 0xaaaaaaaaac24 *)
# mov x30 L0xffffffffe8d8;
(* #! <- SP = 0xffffffffe8c0 *)
#! 0xffffffffe8c0 = 0xffffffffe8c0;
(* #ret                                            #! PC = 0xaaaaaaaaac28 *)
#ret                                            #! 0xaaaaaaaaac28 = 0xaaaaaaaaac28;
# (* ldr	x27, [sp, #40]                              #! EA = L0xffffffffe8e8; Value = 0x0000ffffffffea38; PC = 0xaaaaaaaaaedc *)
# mov x27 L0xffffffffe8e8;
# (* ldp	x28, x30, [sp, #48]                         #! EA = L0xffffffffe8f0; Value = 0x0000000000000000; PC = 0xaaaaaaaaaee0 *)
# mov x28 L0xffffffffe8f0;
# mov x30 L0xffffffffe8f8;
# (* #b	0xaaaaaaaaad70 <SHA3_absorb+112>             #! PC = 0xaaaaaaaaaee4 *)
# #b	0xaaaaaaaaad70 <SHA3_absorb+112>             #! 0xaaaaaaaaaee4 = 0xaaaaaaaaaee4;
# (* subs	x26, x28, x30                              #! PC = 0xaaaaaaaaad70 *)
# subc carry x26 x28 x30;
# (* #b.cc	0xaaaaaaaaaef0 <SHA3_absorb+496>  // b.lo, b.ul, b.last#! PC = 0xaaaaaaaaad74 *)
# #b.cc	0xaaaaaaaaaef0 <SHA3_absorb+496>  // b.lo, b.ul, b.last#! 0xaaaaaaaaad74 = 0xaaaaaaaaad74;
# (* ldr	x27, [sp, #32]                              #! EA = L0xffffffffe8e0; Value = 0x0000aaaaaaabc018; PC = 0xaaaaaaaaaef0 *)
# mov x27 L0xffffffffe8e0;
(* stp	x0, x1, [x27]                               #! EA = L0xaaaaaaabc018; PC = 0xaaaaaaaaaef4 *)
mov L0xaaaaaaabc018 x0;
mov L0xaaaaaaabc020 x1;
(* stp	x2, x3, [x27, #16]                          #! EA = L0xaaaaaaabc028; PC = 0xaaaaaaaaaef8 *)
mov L0xaaaaaaabc028 x2;
mov L0xaaaaaaabc030 x3;
(* stp	x4, x5, [x27, #32]                          #! EA = L0xaaaaaaabc038; PC = 0xaaaaaaaaaefc *)
mov L0xaaaaaaabc038 x4;
mov L0xaaaaaaabc040 x5;
(* stp	x6, x7, [x27, #48]                          #! EA = L0xaaaaaaabc048; PC = 0xaaaaaaaaaf00 *)
mov L0xaaaaaaabc048 x6;
mov L0xaaaaaaabc050 x7;
(* stp	x8, x9, [x27, #64]                          #! EA = L0xaaaaaaabc058; PC = 0xaaaaaaaaaf04 *)
mov L0xaaaaaaabc058 x8;
mov L0xaaaaaaabc060 x9;
(* stp	x10, x11, [x27, #80]                        #! EA = L0xaaaaaaabc068; PC = 0xaaaaaaaaaf08 *)
mov L0xaaaaaaabc068 x10;
mov L0xaaaaaaabc070 x11;
(* stp	x12, x13, [x27, #96]                        #! EA = L0xaaaaaaabc078; PC = 0xaaaaaaaaaf0c *)
mov L0xaaaaaaabc078 x12;
mov L0xaaaaaaabc080 x13;
(* stp	x14, x15, [x27, #112]                       #! EA = L0xaaaaaaabc088; PC = 0xaaaaaaaaaf10 *)
mov L0xaaaaaaabc088 x14;
mov L0xaaaaaaabc090 x15;
(* stp	x16, x17, [x27, #128]                       #! EA = L0xaaaaaaabc098; PC = 0xaaaaaaaaaf14 *)
mov L0xaaaaaaabc098 x16;
mov L0xaaaaaaabc0a0 x17;
(* stp	x25, x19, [x27, #144]                       #! EA = L0xaaaaaaabc0a8; PC = 0xaaaaaaaaaf18 *)
mov L0xaaaaaaabc0a8 x25;
mov L0xaaaaaaabc0b0 x19;
(* stp	x20, x21, [x27, #160]                       #! EA = L0xaaaaaaabc0b8; PC = 0xaaaaaaaaaf1c *)
mov L0xaaaaaaabc0b8 x20;
mov L0xaaaaaaabc0c0 x21;
(* stp	x22, x23, [x27, #176]                       #! EA = L0xaaaaaaabc0c8; PC = 0xaaaaaaaaaf20 *)
mov L0xaaaaaaabc0c8 x22;
mov L0xaaaaaaabc0d0 x23;
(* str	x24, [x27, #192]                            #! EA = L0xaaaaaaabc0d8; PC = 0xaaaaaaaaaf24 *)
mov L0xaaaaaaabc0d8 x24;
# (* mov	x0, x28                                     #! PC = 0xaaaaaaaaaf28 *)
# mov x0 x28;
# (* ldp	x19, x20, [x29, #16]                        #! EA = L0xffffffffe910; Value = 0x0000aaaaaaaab548; PC = 0xaaaaaaaaaf2c *)
# mov x19 L0xffffffffe910;
# mov x20 L0xffffffffe918;
# (* add	sp, sp, #0x40                               #! PC = 0xaaaaaaaaaf30 *)
# adds dontcare sp sp 0x40@uint64;
# (* ldp	x21, x22, [x29, #32]                        #! EA = L0xffffffffe920; Value = 0x0000aaaaaaaaa700; PC = 0xaaaaaaaaaf34 *)
# mov x21 L0xffffffffe920;
# mov x22 L0xffffffffe928;
# (* ldp	x23, x24, [x29, #48]                        #! EA = L0xffffffffe930; Value = 0x0000000000000000; PC = 0xaaaaaaaaaf38 *)
# mov x23 L0xffffffffe930;
# mov x24 L0xffffffffe938;
# (* ldp	x25, x26, [x29, #64]                        #! EA = L0xffffffffe940; Value = 0x0000000000000000; PC = 0xaaaaaaaaaf3c *)
# mov x25 L0xffffffffe940;
# mov x26 L0xffffffffe948;
# (* ldp	x27, x28, [x29, #80]                        #! EA = L0xffffffffe950; Value = 0x0000000000000000; PC = 0xaaaaaaaaaf40 *)
# mov x27 L0xffffffffe950;
# mov x28 L0xffffffffe958;
# (* ldp	x29, x30, [sp], #128                        #! EA = L0xffffffffe900; Value = 0x0000ffffffffe980; PC = 0xaaaaaaaaaf44 *)
# mov x29 L0xffffffffe900;
# mov x30 L0xffffffffe908;
(* #! <- SP = 0xffffffffe980 *)
#! 0xffffffffe980 = 0xffffffffe980;
(* #ret                                            #! PC = 0xaaaaaaaaaf48 *)
#ret                                            #! 0xaaaaaaaaaf48 = 0xaaaaaaaaaf48;

(* outputs *)
mov a00 L0xaaaaaaabc018;
mov a01 L0xaaaaaaabc020;
mov a02 L0xaaaaaaabc028;
mov a03 L0xaaaaaaabc030;
mov a04 L0xaaaaaaabc038;
mov a10 L0xaaaaaaabc040;
mov a11 L0xaaaaaaabc048;
mov a12 L0xaaaaaaabc050;
mov a13 L0xaaaaaaabc058;
mov a14 L0xaaaaaaabc060;
mov a20 L0xaaaaaaabc068;
mov a21 L0xaaaaaaabc070;
mov a22 L0xaaaaaaabc078;
mov a23 L0xaaaaaaabc080;
mov a24 L0xaaaaaaabc088;
mov a30 L0xaaaaaaabc090;
mov a31 L0xaaaaaaabc098;
mov a32 L0xaaaaaaabc0a0;
mov a33 L0xaaaaaaabc0a8;
mov a34 L0xaaaaaaabc0b0;
mov a40 L0xaaaaaaabc0b8;
mov a41 L0xaaaaaaabc0c0;
mov a42 L0xaaaaaaabc0c8;
mov a43 L0xaaaaaaabc0d0;
mov a44 L0xaaaaaaabc0d8;


{
  true
  &&
  true
}

