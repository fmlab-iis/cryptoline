proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
           sint64 c00, sint64 c01, sint64 c02, sint64 c03,
           sint64 c10, sint64 c11, sint64 c12, sint64 c13,
           sint64 c20, sint64 c21, sint64 c22, sint64 c23,
           sint64 c30, sint64 c31, sint64 c32, sint64 c33,
           sint64 c40, sint64 c41, sint64 c42, sint64 c43,
           sint64 c50, sint64 c51, sint64 c52, sint64 c53,
           sint64 c60, sint64 c61, sint64 c62, sint64 c63,
           sint64 c70, sint64 c71, sint64 c72, sint64 c73,
           sint64 c80, sint64 c81, sint64 c82, sint64 c83 ) =
{
  true
  &&
  and[ limbs 64 [a0, a1, a2, a3] <u (2**(255) - 19)@256,
       c00 = (-19)@64, c01 = 0@64, c03 = 0x3ffffff8@64,
       c10 = 0@64    , c11 = 0@64, c13 = 0x3fffffff@64,
       c20 = 0@64    , c21 = 0@64, c23 = 0x3fffffff@64,
       c30 = 0@64    , c31 = 0@64, c33 = 0x3fffffff@64,
       c40 = 0@64    , c41 = 0@64, c43 = 0x3fffffff@64,
       c50 = 0@64    , c51 = 0@64, c53 = 0x3fffffff@64,
       c60 = 0@64    , c61 = 0@64, c63 = 0x250d7fff@64,
       c70 = 0@64    , c71 = 0@64, c73 = 0x035e50d7@64,
       c80 = 32768@64, c81 = 0@64, c83 = 0x000035e5@64
      ]
}

mov rsi a0;
mov rcx a1;
mov r8  a2;
mov rdi a3;

mov rdx_288_0 c00; mov rdx_288_1 c01; mov rdx_288_2 c02; mov rdx_288_3 c03;
mov rdx_320_0 c10; mov rdx_320_1 c11; mov rdx_320_2 c12; mov rdx_320_3 c13;
mov rdx_352_0 c20; mov rdx_352_1 c21; mov rdx_352_2 c22; mov rdx_352_3 c23;
mov rdx_384_0 c30; mov rdx_384_1 c31; mov rdx_384_2 c32; mov rdx_384_3 c33;
mov rdx_416_0 c40; mov rdx_416_1 c41; mov rdx_416_2 c42; mov rdx_416_3 c43;
mov rdx_448_0 c50; mov rdx_448_1 c51; mov rdx_448_2 c52; mov rdx_448_3 c53;
mov rdx_480_0 c60; mov rdx_480_1 c61; mov rdx_480_2 c62; mov rdx_480_3 c63;
mov rdx_512_0 c70; mov rdx_512_1 c71; mov rdx_512_2 c72; mov rdx_512_3 c73;
mov rdx_544_0 c80; mov rdx_544_1 c81; mov rdx_544_2 c82; mov rdx_544_3 c83;


(* mov  $-1152921504606846976,%r9 *)
mov r9 (-1152921504606846976)@sint64;
(* andn  %rsi,%r9,%r9 *)
not tmp@uint64 r9;
and r9@uint64 tmp rsi;
(* vmovupd   288(%rdx),%ymm0 *)
mov ymm0_0 rdx_288_0;
mov ymm0_1 rdx_288_1;
mov ymm0_2 rdx_288_2;
mov ymm0_3 rdx_288_3;
(* vmovapd %ymm0,32(%rsp) *)
mov rsp_32_0 ymm0_0;
mov rsp_32_1 ymm0_1;
mov rsp_32_2 ymm0_2;
mov rsp_32_3 ymm0_3;
(* mov  %rsi,%rax *)
mov rax rsi;
(* and  $1073741823,%rax *)
and rax@uint64 1073741823@uint64 rax;
(* movq %rax,48(%rsp) *)
mov rsp_32_2 rax;
(* vmovupd   320(%rdx),%ymm0 *)
mov ymm0_0 rdx_320_0;
mov ymm0_1 rdx_320_1;
mov ymm0_2 rdx_320_2;
mov ymm0_3 rdx_320_3;
(* vmovapd %ymm0,64(%rsp) *)
mov rsp_64_0 ymm0_0;
mov rsp_64_1 ymm0_1;
mov rsp_64_2 ymm0_2;
mov rsp_64_3 ymm0_3;
(* mov  %rsi,%rax *)
mov rax rsi;
(* shr  $30,%rax *)
usplit rax dontcare rax 30;
(* and  $1073741823,%rax *)
and rax@uint64 1073741823@uint64 rax;
(* movq %rax,80(%rsp) *)
mov rsp_64_2 rax;
(* vmovupd   352(%rdx),%ymm0 *)
mov ymm0_0 rdx_352_0;
mov ymm0_1 rdx_352_1;
mov ymm0_2 rdx_352_2;
mov ymm0_3 rdx_352_3;
(* vmovapd %ymm0,96(%rsp) *)
mov rsp_96_0 ymm0_0;
mov rsp_96_1 ymm0_1;
mov rsp_96_2 ymm0_2;
mov rsp_96_3 ymm0_3;
(* shrd $60,%rcx,%rsi *)
join tmp rcx rsi;
usplit tmp dontcare tmp 60;
cast rsi@uint64 tmp;
(* and  $1073741823,%rsi *)
and rsi@uint64 1073741823@uint64 rsi;
(* movq %rsi,112(%rsp) *)
mov rsp_96_2 rsi;
(* vmovupd   384(%rdx),%ymm0 *)
mov ymm0_0 rdx_384_0;
mov ymm0_1 rdx_384_1;
mov ymm0_2 rdx_384_2;
mov ymm0_3 rdx_384_3;
(* vmovapd %ymm0,128(%rsp) *)
mov rsp_128_0 ymm0_0;
mov rsp_128_1 ymm0_1;
mov rsp_128_2 ymm0_2;
mov rsp_128_3 ymm0_3;
(* mov  %rcx,%rsi *)
mov rsi rcx;
(* shr  $26,%rsi *)
usplit rsi dontcare rsi 26;
(* and  $1073741823,%rsi *)
and rsi@uint64 1073741823@uint64 rsi;
(* movq %rsi,144(%rsp) *)
mov rsp_128_2 rsi;
(* vmovupd   416(%rdx),%ymm0 *)
mov ymm0_0 rdx_416_0;
mov ymm0_1 rdx_416_1;
mov ymm0_2 rdx_416_2;
mov ymm0_3 rdx_416_3;
(* vmovapd %ymm0,160(%rsp) *)
mov rsp_160_0 ymm0_0;
mov rsp_160_1 ymm0_1;
mov rsp_160_2 ymm0_2;
mov rsp_160_3 ymm0_3;
(* shrd $56,%r8,%rcx *)
join tmp r8 rcx;
usplit tmp dontcare tmp 56;
cast rcx@uint64 tmp;
(* and  $1073741823,%rcx *)
and rcx@uint64 1073741823@uint64 rcx;
(* movq %rcx,176(%rsp) *)
mov rsp_160_2 rcx;
(* vmovupd   448(%rdx),%ymm0 *)
mov ymm0_0 rdx_448_0;
mov ymm0_1 rdx_448_1;
mov ymm0_2 rdx_448_2;
mov ymm0_3 rdx_448_3;
(* vmovapd %ymm0,192(%rsp) *)
mov rsp_192_0 ymm0_0;
mov rsp_192_1 ymm0_1;
mov rsp_192_2 ymm0_2;
mov rsp_192_3 ymm0_3;
(* mov  %r8,%rsi *)
mov rsi r8;
(* shr  $22,%rsi *)
usplit rsi dontcare rsi 22;
(* and  $1073741823,%rsi *)
and rsi@uint64 1073741823@uint64 rsi;
(* movq %rsi,208(%rsp) *)
mov rsp_192_2 rsi;
(* vmovupd   480(%rdx),%ymm0 *)
mov ymm0_0 rdx_480_0;
mov ymm0_1 rdx_480_1;
mov ymm0_2 rdx_480_2;
mov ymm0_3 rdx_480_3;
(* vmovapd %ymm0,224(%rsp) *)
mov rsp_224_0 ymm0_0;
mov rsp_224_1 ymm0_1;
mov rsp_224_2 ymm0_2;
mov rsp_224_3 ymm0_3;
(* shrd $52,%rdi,%r8 *)
join tmp rdi r8;
usplit tmp dontcare tmp 52;
cast r8@uint64 tmp;
(* and  $1073741823,%r8 *)
and r8@uint64 1073741823@uint64 r8;
(* movq %r8,240(%rsp) *)
mov rsp_224_2 r8;
(* vmovupd   512(%rdx),%ymm0 *)
mov ymm0_0 rdx_512_0;
mov ymm0_1 rdx_512_1;
mov ymm0_2 rdx_512_2;
mov ymm0_3 rdx_512_3;
(* vmovapd %ymm0,256(%rsp) *)
mov rsp_256_0 ymm0_0;
mov rsp_256_1 ymm0_1;
mov rsp_256_2 ymm0_2;
mov rsp_256_3 ymm0_3;
(* mov  %rdi,%rsi *)
mov rsi rdi;
(* shr  $18,%rsi *)
usplit rsi dontcare rsi 18;
(* and  $1073741823,%rsi *)
and rsi@uint64 1073741823@uint64 rsi;
(* movq %rsi,272(%rsp) *)
mov rsp_256_2 rsi;
(* vmovupd   544(%rdx),%ymm0 *)
mov ymm0_0 rdx_544_0;
mov ymm0_1 rdx_544_1;
mov ymm0_2 rdx_544_2;
mov ymm0_3 rdx_544_3;
(* vmovapd %ymm0,288(%rsp) *)
mov rsp_288_0 ymm0_0;
mov rsp_288_1 ymm0_1;
mov rsp_288_2 ymm0_2;
mov rsp_288_3 ymm0_3;
(* shr  $48,%rdi *)
usplit rdi dontcare rdi 48;
(* movq %rdi,304(%rsp) *)
mov rsp_288_2 rdi;

mov b0 rsp_32_2;
mov b1 rsp_64_2;
mov b2 rsp_96_2;
mov b3 rsp_128_2;
mov b4 rsp_160_2;
mov b5 rsp_192_2;
mov b6 rsp_224_2;
mov b7 rsp_256_2;
mov b8 rsp_288_2;

{
  true
  &&
  and[
      ((2**(255))-19)@270 = (sext c00 206) * (2**(0*30))@270 +
                            (sext c10 206) * (2**(1*30))@270 +
                            (sext c20 206) * (2**(2*30))@270 +
                            (sext c30 206) * (2**(3*30))@270 +
                            (sext c40 206) * (2**(4*30))@270 +
                            (sext c50 206) * (2**(5*30))@270 +
                            (sext c60 206) * (2**(6*30))@270 +
                            (sext c70 206) * (2**(7*30))@270 +
                            (sext c80 206) * (2**(8*30))@270, 

                    0@270 = (sext c01 206) * (2**(0*30))@270 +
                            (sext c11 206) * (2**(1*30))@270 +
                            (sext c21 206) * (2**(2*30))@270 +
                            (sext c31 206) * (2**(3*30))@270 +
                            (sext c41 206) * (2**(4*30))@270 +
                            (sext c51 206) * (2**(5*30))@270 +
                            (sext c61 206) * (2**(6*30))@270 +
                            (sext c71 206) * (2**(7*30))@270 +
                            (sext c81 206) * (2**(8*30))@270,

      (uext (limbs 64 [a0, a1, a2, a3]) 14) = 
                            (sext b0 206) * (2**(0*30))@270 +
                            (sext b1 206) * (2**(1*30))@270 +
                            (sext b2 206) * (2**(2*30))@270 +
                            (sext b3 206) * (2**(3*30))@270 +
                            (sext b4 206) * (2**(4*30))@270 +
                            (sext b5 206) * (2**(5*30))@270 +
                            (sext b6 206) * (2**(6*30))@270 +
                            (sext b7 206) * (2**(7*30))@270 +
                            (sext b8 206) * (2**(8*30))@270,
      eqmod 
      1@330
      ((2**(60))@330      * ((sext c03 266) * (2**(0*30))@330 +
                             (sext c13 266) * (2**(1*30))@330 +
                             (sext c23 266) * (2**(2*30))@330 +
                             (sext c33 266) * (2**(3*30))@330 +
                             (sext c43 266) * (2**(4*30))@330 +
                             (sext c53 266) * (2**(5*30))@330 +
                             (sext c63 266) * (2**(6*30))@330 +
                             (sext c73 266) * (2**(7*30))@330 +
                             (sext c83 266) * (2**(8*30))@330))
      ((2**(255))-19)@330,

      b0 <u (2**(30))@64,
      b1 <u (2**(30))@64,
      b2 <u (2**(30))@64,
      b3 <u (2**(30))@64,
      b4 <u (2**(30))@64,
      b5 <u (2**(30))@64,
      b6 <u (2**(30))@64,
      b7 <u (2**(30))@64,
      b8 <u (2**(30))@64,

      rsp_32_0  = c00, rsp_32_1  = c01, rsp_32_3  = c03,
      rsp_64_0  = c10, rsp_64_1  = c11, rsp_64_3  = c13,
      rsp_96_0  = c20, rsp_96_1  = c21, rsp_96_3  = c23,
      rsp_128_0 = c30, rsp_128_1 = c31, rsp_128_3 = c33,
      rsp_160_0 = c40, rsp_160_1 = c41, rsp_160_3 = c43,
      rsp_192_0 = c50, rsp_192_1 = c51, rsp_192_3 = c53,
      rsp_224_0 = c60, rsp_224_1 = c61, rsp_224_3 = c63,
      rsp_256_0 = c70, rsp_256_1 = c71, rsp_256_3 = c73,
      rsp_288_0 = c80, rsp_288_1 = c81, rsp_288_3 = c83
    
      ]
}

