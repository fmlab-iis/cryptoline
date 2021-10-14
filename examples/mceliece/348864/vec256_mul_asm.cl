(* quine:  -v vec256_mul_asm.cl
Parsing Cryptoline file:                [OK]            0.007906 seconds
Checking well-formedness:               [OK]            0.001039 seconds
Transforming to SSA form:               [OK]            0.000221 seconds
Rewriting assignments:                  [OK]            0.000165 seconds
Verifying program safety:               [OK]            0.058876 seconds
Verifying range specification:          [OK]            0.061632 seconds
Rewriting value-preserved casting:      [OK]            0.000034 seconds
Verifying algebraic specification:      [OK]            0.123344 seconds
Verification result:                    [OK]            0.253757 seconds
*)


proc main (
bit a00,bit a01,bit a02,bit a03,bit a04,bit a05,
bit a06,bit a07,bit a08,bit a09,bit a10,bit a11
,
bit b00,bit b01,bit b02,bit b03,bit b04,bit b05,
bit b06,bit b07,bit b08,bit b09,bit b10,bit b11
) =
{
  true
  &&
  true
}

ghost x@bit, f@bit, g@bit : 
and [
f = a00*(x**0) + a01*(x**1) + a02*(x**2) + a03*(x**3) +
a04*(x**4) + a05*(x**5) + a06*(x**6) + a07*(x**7) +
a08*(x**8) + a09*(x**9) + a10*(x**10) + a11*(x**11) 
,
g = b00*(x**0) + b01*(x**1) + b02*(x**2) + b03*(x**3) +
b04*(x**4) + b05*(x**5) + b06*(x**6) + b07*(x**7) +
b08*(x**8) + b09*(x**9) + b10*(x**10) + b11*(x**11) 
] && true;

mov L0x7ffffff904c0 a00;
mov L0x7ffffff904e0 a01;
mov L0x7ffffff90500 a02;
mov L0x7ffffff90520 a03;
mov L0x7ffffff90540 a04;
mov L0x7ffffff90560 a05;
mov L0x7ffffff90580 a06;
mov L0x7ffffff905a0 a07;
mov L0x7ffffff905c0 a08;
mov L0x7ffffff905e0 a09;
mov L0x7ffffff90600 a10;
mov L0x7ffffff90620 a11;

mov L0x7ffffffa6700 b00;
mov L0x7ffffffa6720 b01;
mov L0x7ffffffa6740 b02;
mov L0x7ffffffa6760 b03;
mov L0x7ffffffa6780 b04;
mov L0x7ffffffa67a0 b05;
mov L0x7ffffffa67c0 b06;
mov L0x7ffffffa67e0 b07;
mov L0x7ffffffa6800 b08;
mov L0x7ffffffa6820 b09;
mov L0x7ffffffa6840 b10;
mov L0x7ffffffa6860 b11;


(* #! -> SP = 0x7ffffff8e818 *)
#! 0x7ffffff8e818 = 0x7ffffff8e818;
(* #mov    %rsp,%r11                                #! PC = 0x55555557f100 *)
#mov    %rsp,%r11                                #! 0x55555557f100 = 0x55555557f100;
(* #and    $0x1f,%r11                               #! PC = 0x55555557f103 *)
#and    $0x1f,%r11                               #! 0x55555557f103 = 0x55555557f103;
(* #add    $0x0,%r11                                #! PC = 0x55555557f107 *)
#add    $0x0,%r11                                #! 0x55555557f107 = 0x55555557f107;
(* #sub    %r11,%rsp                                #! PC = 0x55555557f10b *)
#sub    %r11,%rsp                                #! 0x55555557f10b = 0x55555557f10b;
(* vmovupd (%rdx),%ymm0                            #! EA = L0x7ffffff904c0; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f10e *)
mov ymm0 L0x7ffffff904c0;
(* vmovupd 0x160(%rsi),%ymm1                       #! EA = L0x7ffffffa6860; Value = 0xffffffffffffffff; PC = 0x55555557f112 *)
mov ymm1 L0x7ffffffa6860;
(* vpand  %ymm1,%ymm0,%ymm2                        #! PC = 0x55555557f11a *)
mul ymm2 ymm0 ymm1;
(* vpand  0x20(%rdx),%ymm1,%ymm3                   #! EA = L0x7ffffff904e0; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555557f11e *)
mul ymm3 ymm1 L0x7ffffff904e0;
(* vpand  0x40(%rdx),%ymm1,%ymm4                   #! EA = L0x7ffffff90500; Value = 0x0ff00ff00ff00ff0; PC = 0x55555557f123 *)
mul ymm4 ymm1 L0x7ffffff90500;
(* vpand  0x60(%rdx),%ymm1,%ymm5                   #! EA = L0x7ffffff90520; Value = 0xaa5555aaaa5555aa; PC = 0x55555557f128 *)
mul ymm5 ymm1 L0x7ffffff90520;
(* vpand  0x80(%rdx),%ymm1,%ymm6                   #! EA = L0x7ffffff90540; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f12d *)
mul ymm6 ymm1 L0x7ffffff90540;
(* vpand  0xa0(%rdx),%ymm1,%ymm7                   #! EA = L0x7ffffff90560; Value = 0x33cccc33cc3333cc; PC = 0x55555557f135 *)
mul ymm7 ymm1 L0x7ffffff90560;
(* vpand  0xc0(%rdx),%ymm1,%ymm8                   #! EA = L0x7ffffff90580; Value = 0xffff0000ffff0000; PC = 0x55555557f13d *)
mul ymm8 ymm1 L0x7ffffff90580;
(* vpand  0xe0(%rdx),%ymm1,%ymm9                   #! EA = L0x7ffffff905a0; Value = 0xcc33cc3333cc33cc; PC = 0x55555557f145 *)
mul ymm9 ymm1 L0x7ffffff905a0;
(* vpand  0x100(%rdx),%ymm1,%ymm10                 #! EA = L0x7ffffff905c0; Value = 0x33cc33cc33cc33cc; PC = 0x55555557f14d *)
mul ymm10 ymm1 L0x7ffffff905c0;
(* vpand  0x120(%rdx),%ymm1,%ymm11                 #! EA = L0x7ffffff905e0; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555557f155 *)
mul ymm11 ymm1 L0x7ffffff905e0;
(* vpand  0x140(%rdx),%ymm1,%ymm12                 #! EA = L0x7ffffff90600; Value = 0xff00ff00ff00ff00; PC = 0x55555557f15d *)
mul ymm12 ymm1 L0x7ffffff90600;
(* vpand  0x160(%rdx),%ymm1,%ymm1                  #! EA = L0x7ffffff90620; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f165 *)
mul ymm1 ymm1 L0x7ffffff90620;
(* vpxor  %ymm1,%ymm4,%ymm4                        #! PC = 0x55555557f16d *)
adds dc ymm4 ymm4 ymm1;
(* vmovapd %ymm1,%ymm1                             #! PC = 0x55555557f171 *)
mov ymm1 ymm1;
(* vmovupd 0x140(%rsi),%ymm13                      #! EA = L0x7ffffffa6840; Value = 0xffffffffffffffff; PC = 0x55555557f175 *)
mov ymm13 L0x7ffffffa6840;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555557f17d *)
mul ymm14 ymm0 ymm13;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555557f182 *)
adds dc ymm1 ymm1 ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff904e0; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555557f187 *)
mul ymm14 ymm13 L0x7ffffff904e0;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555557f18c *)
adds dc ymm2 ymm2 ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90500; Value = 0x0ff00ff00ff00ff0; PC = 0x55555557f191 *)
mul ymm14 ymm13 L0x7ffffff90500;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555557f196 *)
adds dc ymm3 ymm3 ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90520; Value = 0xaa5555aaaa5555aa; PC = 0x55555557f19b *)
mul ymm14 ymm13 L0x7ffffff90520;
(* vpxor  %ymm14,%ymm4,%ymm4                       #! PC = 0x55555557f1a0 *)
adds dc ymm4 ymm4 ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90540; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f1a5 *)
mul ymm14 ymm13 L0x7ffffff90540;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555557f1ad *)
adds dc ymm5 ymm5 ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90560; Value = 0x33cccc33cc3333cc; PC = 0x55555557f1b2 *)
mul ymm14 ymm13 L0x7ffffff90560;
(* vpxor  %ymm14,%ymm6,%ymm6                       #! PC = 0x55555557f1ba *)
adds dc ymm6 ymm6 ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90580; Value = 0xffff0000ffff0000; PC = 0x55555557f1bf *)
mul ymm14 ymm13 L0x7ffffff90580;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555557f1c7 *)
adds dc ymm7 ymm7 ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff905a0; Value = 0xcc33cc3333cc33cc; PC = 0x55555557f1cc *)
mul ymm14 ymm13 L0x7ffffff905a0;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555557f1d4 *)
adds dc ymm8 ymm8 ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905c0; Value = 0x33cc33cc33cc33cc; PC = 0x55555557f1d9 *)
mul ymm14 ymm13 L0x7ffffff905c0;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555557f1e1 *)
adds dc ymm9 ymm9 ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905e0; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555557f1e6 *)
mul ymm14 ymm13 L0x7ffffff905e0;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555557f1ee *)
adds dc ymm10 ymm10 ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff90600; Value = 0xff00ff00ff00ff00; PC = 0x55555557f1f3 *)
mul ymm14 ymm13 L0x7ffffff90600;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555557f1fb *)
adds dc ymm11 ymm11 ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff90620; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f200 *)
mul ymm13 ymm13 L0x7ffffff90620;
(* vpxor  %ymm13,%ymm12,%ymm12                     #! PC = 0x55555557f208 *)
adds dc ymm12 ymm12 ymm13;
(* vpxor  %ymm12,%ymm3,%ymm3                       #! PC = 0x55555557f20d *)
adds dc ymm3 ymm3 ymm12;
(* vmovapd %ymm12,%ymm12                           #! PC = 0x55555557f212 *)
mov ymm12 ymm12;
(* vmovupd 0x120(%rsi),%ymm13                      #! EA = L0x7ffffffa6820; Value = 0xffffffffffffffff; PC = 0x55555557f217 *)
mov ymm13 L0x7ffffffa6820;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555557f21f *)
mul ymm14 ymm0 ymm13;
(* vpxor  %ymm14,%ymm12,%ymm12                     #! PC = 0x55555557f224 *)
adds dc ymm12 ymm12 ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff904e0; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555557f229 *)
mul ymm14 ymm13 L0x7ffffff904e0;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555557f22e *)
adds dc ymm1 ymm1 ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90500; Value = 0x0ff00ff00ff00ff0; PC = 0x55555557f233 *)
mul ymm14 ymm13 L0x7ffffff90500;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555557f238 *)
adds dc ymm2 ymm2 ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90520; Value = 0xaa5555aaaa5555aa; PC = 0x55555557f23d *)
mul ymm14 ymm13 L0x7ffffff90520;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555557f242 *)
adds dc ymm3 ymm3 ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90540; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f247 *)
mul ymm14 ymm13 L0x7ffffff90540;
(* vpxor  %ymm14,%ymm4,%ymm4                       #! PC = 0x55555557f24f *)
adds dc ymm4 ymm4 ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90560; Value = 0x33cccc33cc3333cc; PC = 0x55555557f254 *)
mul ymm14 ymm13 L0x7ffffff90560;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555557f25c *)
adds dc ymm5 ymm5 ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90580; Value = 0xffff0000ffff0000; PC = 0x55555557f261 *)
mul ymm14 ymm13 L0x7ffffff90580;
(* vpxor  %ymm14,%ymm6,%ymm6                       #! PC = 0x55555557f269 *)
adds dc ymm6 ymm6 ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff905a0; Value = 0xcc33cc3333cc33cc; PC = 0x55555557f26e *)
mul ymm14 ymm13 L0x7ffffff905a0;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555557f276 *)
adds dc ymm7 ymm7 ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905c0; Value = 0x33cc33cc33cc33cc; PC = 0x55555557f27b *)
mul ymm14 ymm13 L0x7ffffff905c0;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555557f283 *)
adds dc ymm8 ymm8 ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905e0; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555557f288 *)
mul ymm14 ymm13 L0x7ffffff905e0;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555557f290 *)
adds dc ymm9 ymm9 ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff90600; Value = 0xff00ff00ff00ff00; PC = 0x55555557f295 *)
mul ymm14 ymm13 L0x7ffffff90600;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555557f29d *)
adds dc ymm10 ymm10 ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff90620; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f2a2 *)
mul ymm13 ymm13 L0x7ffffff90620;
(* vpxor  %ymm13,%ymm11,%ymm11                     #! PC = 0x55555557f2aa *)
adds dc ymm11 ymm11 ymm13;
(* vpxor  %ymm11,%ymm2,%ymm2                       #! PC = 0x55555557f2af *)
adds dc ymm2 ymm2 ymm11;
(* vmovapd %ymm11,%ymm11                           #! PC = 0x55555557f2b4 *)
mov ymm11 ymm11;
(* vmovupd 0x100(%rsi),%ymm13                      #! EA = L0x7ffffffa6800; Value = 0xffffffffffffffff; PC = 0x55555557f2b9 *)
mov ymm13 L0x7ffffffa6800;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555557f2c1 *)
mul ymm14 ymm0 ymm13;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555557f2c6 *)
adds dc ymm11 ymm11 ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff904e0; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555557f2cb *)
mul ymm14 ymm13 L0x7ffffff904e0;
(* vpxor  %ymm14,%ymm12,%ymm12                     #! PC = 0x55555557f2d0 *)
adds dc ymm12 ymm12 ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90500; Value = 0x0ff00ff00ff00ff0; PC = 0x55555557f2d5 *)
mul ymm14 ymm13 L0x7ffffff90500;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555557f2da *)
adds dc ymm1 ymm1 ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90520; Value = 0xaa5555aaaa5555aa; PC = 0x55555557f2df *)
mul ymm14 ymm13 L0x7ffffff90520;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555557f2e4 *)
adds dc ymm2 ymm2 ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90540; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f2e9 *)
mul ymm14 ymm13 L0x7ffffff90540;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555557f2f1 *)
adds dc ymm3 ymm3 ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90560; Value = 0x33cccc33cc3333cc; PC = 0x55555557f2f6 *)
mul ymm14 ymm13 L0x7ffffff90560;
(* vpxor  %ymm14,%ymm4,%ymm4                       #! PC = 0x55555557f2fe *)
adds dc ymm4 ymm4 ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90580; Value = 0xffff0000ffff0000; PC = 0x55555557f303 *)
mul ymm14 ymm13 L0x7ffffff90580;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555557f30b *)
adds dc ymm5 ymm5 ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff905a0; Value = 0xcc33cc3333cc33cc; PC = 0x55555557f310 *)
mul ymm14 ymm13 L0x7ffffff905a0;
(* vpxor  %ymm14,%ymm6,%ymm6                       #! PC = 0x55555557f318 *)
adds dc ymm6 ymm6 ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905c0; Value = 0x33cc33cc33cc33cc; PC = 0x55555557f31d *)
mul ymm14 ymm13 L0x7ffffff905c0;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555557f325 *)
adds dc ymm7 ymm7 ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905e0; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555557f32a *)
mul ymm14 ymm13 L0x7ffffff905e0;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555557f332 *)
adds dc ymm8 ymm8 ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff90600; Value = 0xff00ff00ff00ff00; PC = 0x55555557f337 *)
mul ymm14 ymm13 L0x7ffffff90600;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555557f33f *)
adds dc ymm9 ymm9 ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff90620; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f344 *)
mul ymm13 ymm13 L0x7ffffff90620;
(* vpxor  %ymm13,%ymm10,%ymm10                     #! PC = 0x55555557f34c *)
adds dc ymm10 ymm10 ymm13;
(* vpxor  %ymm10,%ymm1,%ymm1                       #! PC = 0x55555557f351 *)
adds dc ymm1 ymm1 ymm10;
(* vmovapd %ymm10,%ymm10                           #! PC = 0x55555557f356 *)
mov ymm10 ymm10;
(* vmovupd 0xe0(%rsi),%ymm13                       #! EA = L0x7ffffffa67e0; Value = 0xffffffffffffffff; PC = 0x55555557f35b *)
mov ymm13 L0x7ffffffa67e0;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555557f363 *)
mul ymm14 ymm0 ymm13;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555557f368 *)
adds dc ymm10 ymm10 ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff904e0; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555557f36d *)
mul ymm14 ymm13 L0x7ffffff904e0;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555557f372 *)
adds dc ymm11 ymm11 ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90500; Value = 0x0ff00ff00ff00ff0; PC = 0x55555557f377 *)
mul ymm14 ymm13 L0x7ffffff90500;
(* vpxor  %ymm14,%ymm12,%ymm12                     #! PC = 0x55555557f37c *)
adds dc ymm12 ymm12 ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90520; Value = 0xaa5555aaaa5555aa; PC = 0x55555557f381 *)
mul ymm14 ymm13 L0x7ffffff90520;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555557f386 *)
adds dc ymm1 ymm1 ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90540; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f38b *)
mul ymm14 ymm13 L0x7ffffff90540;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555557f393 *)
adds dc ymm2 ymm2 ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90560; Value = 0x33cccc33cc3333cc; PC = 0x55555557f398 *)
mul ymm14 ymm13 L0x7ffffff90560;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555557f3a0 *)
adds dc ymm3 ymm3 ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90580; Value = 0xffff0000ffff0000; PC = 0x55555557f3a5 *)
mul ymm14 ymm13 L0x7ffffff90580;
(* vpxor  %ymm14,%ymm4,%ymm4                       #! PC = 0x55555557f3ad *)
adds dc ymm4 ymm4 ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff905a0; Value = 0xcc33cc3333cc33cc; PC = 0x55555557f3b2 *)
mul ymm14 ymm13 L0x7ffffff905a0;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555557f3ba *)
adds dc ymm5 ymm5 ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905c0; Value = 0x33cc33cc33cc33cc; PC = 0x55555557f3bf *)
mul ymm14 ymm13 L0x7ffffff905c0;
(* vpxor  %ymm14,%ymm6,%ymm6                       #! PC = 0x55555557f3c7 *)
adds dc ymm6 ymm6 ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905e0; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555557f3cc *)
mul ymm14 ymm13 L0x7ffffff905e0;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555557f3d4 *)
adds dc ymm7 ymm7 ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff90600; Value = 0xff00ff00ff00ff00; PC = 0x55555557f3d9 *)
mul ymm14 ymm13 L0x7ffffff90600;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555557f3e1 *)
adds dc ymm8 ymm8 ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff90620; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f3e6 *)
mul ymm13 ymm13 L0x7ffffff90620;
(* vpxor  %ymm13,%ymm9,%ymm9                       #! PC = 0x55555557f3ee *)
adds dc ymm9 ymm9 ymm13;
(* vpxor  %ymm9,%ymm12,%ymm12                      #! PC = 0x55555557f3f3 *)
adds dc ymm12 ymm12 ymm9;
(* vmovapd %ymm9,%ymm9                             #! PC = 0x55555557f3f8 *)
mov ymm9 ymm9;
(* vmovupd 0xc0(%rsi),%ymm13                       #! EA = L0x7ffffffa67c0; Value = 0x0000000000000000; PC = 0x55555557f3fd *)
mov ymm13 L0x7ffffffa67c0;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555557f405 *)
mul ymm14 ymm0 ymm13;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555557f40a *)
adds dc ymm9 ymm9 ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff904e0; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555557f40f *)
mul ymm14 ymm13 L0x7ffffff904e0;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555557f414 *)
adds dc ymm10 ymm10 ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90500; Value = 0x0ff00ff00ff00ff0; PC = 0x55555557f419 *)
mul ymm14 ymm13 L0x7ffffff90500;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555557f41e *)
adds dc ymm11 ymm11 ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90520; Value = 0xaa5555aaaa5555aa; PC = 0x55555557f423 *)
mul ymm14 ymm13 L0x7ffffff90520;
(* vpxor  %ymm14,%ymm12,%ymm12                     #! PC = 0x55555557f428 *)
adds dc ymm12 ymm12 ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90540; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f42d *)
mul ymm14 ymm13 L0x7ffffff90540;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555557f435 *)
adds dc ymm1 ymm1 ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90560; Value = 0x33cccc33cc3333cc; PC = 0x55555557f43a *)
mul ymm14 ymm13 L0x7ffffff90560;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555557f442 *)
adds dc ymm2 ymm2 ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90580; Value = 0xffff0000ffff0000; PC = 0x55555557f447 *)
mul ymm14 ymm13 L0x7ffffff90580;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555557f44f *)
adds dc ymm3 ymm3 ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff905a0; Value = 0xcc33cc3333cc33cc; PC = 0x55555557f454 *)
mul ymm14 ymm13 L0x7ffffff905a0;
(* vpxor  %ymm14,%ymm4,%ymm4                       #! PC = 0x55555557f45c *)
adds dc ymm4 ymm4 ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905c0; Value = 0x33cc33cc33cc33cc; PC = 0x55555557f461 *)
mul ymm14 ymm13 L0x7ffffff905c0;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555557f469 *)
adds dc ymm5 ymm5 ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905e0; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555557f46e *)
mul ymm14 ymm13 L0x7ffffff905e0;
(* vpxor  %ymm14,%ymm6,%ymm6                       #! PC = 0x55555557f476 *)
adds dc ymm6 ymm6 ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff90600; Value = 0xff00ff00ff00ff00; PC = 0x55555557f47b *)
mul ymm14 ymm13 L0x7ffffff90600;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555557f483 *)
adds dc ymm7 ymm7 ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff90620; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f488 *)
mul ymm13 ymm13 L0x7ffffff90620;
(* vpxor  %ymm13,%ymm8,%ymm8                       #! PC = 0x55555557f490 *)
adds dc ymm8 ymm8 ymm13;
(* vpxor  %ymm8,%ymm11,%ymm11                      #! PC = 0x55555557f495 *)
adds dc ymm11 ymm11 ymm8;
(* vmovapd %ymm8,%ymm8                             #! PC = 0x55555557f49a *)
mov ymm8 ymm8;
(* vmovupd 0xa0(%rsi),%ymm13                       #! EA = L0x7ffffffa67a0; Value = 0xffffffffffffffff; PC = 0x55555557f49f *)
mov ymm13 L0x7ffffffa67a0;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555557f4a7 *)
mul ymm14 ymm0 ymm13;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555557f4ac *)
adds dc ymm8 ymm8 ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff904e0; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555557f4b1 *)
mul ymm14 ymm13 L0x7ffffff904e0;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555557f4b6 *)
adds dc ymm9 ymm9 ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90500; Value = 0x0ff00ff00ff00ff0; PC = 0x55555557f4bb *)
mul ymm14 ymm13 L0x7ffffff90500;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555557f4c0 *)
adds dc ymm10 ymm10 ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90520; Value = 0xaa5555aaaa5555aa; PC = 0x55555557f4c5 *)
mul ymm14 ymm13 L0x7ffffff90520;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555557f4ca *)
adds dc ymm11 ymm11 ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90540; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f4cf *)
mul ymm14 ymm13 L0x7ffffff90540;
(* vpxor  %ymm14,%ymm12,%ymm12                     #! PC = 0x55555557f4d7 *)
adds dc ymm12 ymm12 ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90560; Value = 0x33cccc33cc3333cc; PC = 0x55555557f4dc *)
mul ymm14 ymm13 L0x7ffffff90560;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555557f4e4 *)
adds dc ymm1 ymm1 ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90580; Value = 0xffff0000ffff0000; PC = 0x55555557f4e9 *)
mul ymm14 ymm13 L0x7ffffff90580;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555557f4f1 *)
adds dc ymm2 ymm2 ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff905a0; Value = 0xcc33cc3333cc33cc; PC = 0x55555557f4f6 *)
mul ymm14 ymm13 L0x7ffffff905a0;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555557f4fe *)
adds dc ymm3 ymm3 ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905c0; Value = 0x33cc33cc33cc33cc; PC = 0x55555557f503 *)
mul ymm14 ymm13 L0x7ffffff905c0;
(* vpxor  %ymm14,%ymm4,%ymm4                       #! PC = 0x55555557f50b *)
adds dc ymm4 ymm4 ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905e0; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555557f510 *)
mul ymm14 ymm13 L0x7ffffff905e0;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555557f518 *)
adds dc ymm5 ymm5 ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff90600; Value = 0xff00ff00ff00ff00; PC = 0x55555557f51d *)
mul ymm14 ymm13 L0x7ffffff90600;
(* vpxor  %ymm14,%ymm6,%ymm6                       #! PC = 0x55555557f525 *)
adds dc ymm6 ymm6 ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff90620; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f52a *)
mul ymm13 ymm13 L0x7ffffff90620;
(* vpxor  %ymm13,%ymm7,%ymm7                       #! PC = 0x55555557f532 *)
adds dc ymm7 ymm7 ymm13;
(* vpxor  %ymm7,%ymm10,%ymm10                      #! PC = 0x55555557f537 *)
adds dc ymm10 ymm10 ymm7;
(* vmovapd %ymm7,%ymm7                             #! PC = 0x55555557f53b *)
mov ymm7 ymm7;
(* vmovupd 0x80(%rsi),%ymm13                       #! EA = L0x7ffffffa6780; Value = 0xffffffffffffffff; PC = 0x55555557f53f *)
mov ymm13 L0x7ffffffa6780;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555557f547 *)
mul ymm14 ymm0 ymm13;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555557f54c *)
adds dc ymm7 ymm7 ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff904e0; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555557f551 *)
mul ymm14 ymm13 L0x7ffffff904e0;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555557f556 *)
adds dc ymm8 ymm8 ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90500; Value = 0x0ff00ff00ff00ff0; PC = 0x55555557f55b *)
mul ymm14 ymm13 L0x7ffffff90500;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555557f560 *)
adds dc ymm9 ymm9 ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90520; Value = 0xaa5555aaaa5555aa; PC = 0x55555557f565 *)
mul ymm14 ymm13 L0x7ffffff90520;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555557f56a *)
adds dc ymm10 ymm10 ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90540; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f56f *)
mul ymm14 ymm13 L0x7ffffff90540;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555557f577 *)
adds dc ymm11 ymm11 ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90560; Value = 0x33cccc33cc3333cc; PC = 0x55555557f57c *)
mul ymm14 ymm13 L0x7ffffff90560;
(* vpxor  %ymm14,%ymm12,%ymm12                     #! PC = 0x55555557f584 *)
adds dc ymm12 ymm12 ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90580; Value = 0xffff0000ffff0000; PC = 0x55555557f589 *)
mul ymm14 ymm13 L0x7ffffff90580;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555557f591 *)
adds dc ymm1 ymm1 ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff905a0; Value = 0xcc33cc3333cc33cc; PC = 0x55555557f596 *)
mul ymm14 ymm13 L0x7ffffff905a0;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555557f59e *)
adds dc ymm2 ymm2 ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905c0; Value = 0x33cc33cc33cc33cc; PC = 0x55555557f5a3 *)
mul ymm14 ymm13 L0x7ffffff905c0;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555557f5ab *)
adds dc ymm3 ymm3 ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905e0; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555557f5b0 *)
mul ymm14 ymm13 L0x7ffffff905e0;
(* vpxor  %ymm14,%ymm4,%ymm4                       #! PC = 0x55555557f5b8 *)
adds dc ymm4 ymm4 ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff90600; Value = 0xff00ff00ff00ff00; PC = 0x55555557f5bd *)
mul ymm14 ymm13 L0x7ffffff90600;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555557f5c5 *)
adds dc ymm5 ymm5 ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff90620; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f5ca *)
mul ymm13 ymm13 L0x7ffffff90620;
(* vpxor  %ymm13,%ymm6,%ymm6                       #! PC = 0x55555557f5d2 *)
adds dc ymm6 ymm6 ymm13;
(* vpxor  %ymm6,%ymm9,%ymm9                        #! PC = 0x55555557f5d7 *)
adds dc ymm9 ymm9 ymm6;
(* vmovapd %ymm6,%ymm6                             #! PC = 0x55555557f5db *)
mov ymm6 ymm6;
(* vmovupd 0x60(%rsi),%ymm13                       #! EA = L0x7ffffffa6760; Value = 0x0000000000000000; PC = 0x55555557f5df *)
mov ymm13 L0x7ffffffa6760;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555557f5e4 *)
mul ymm14 ymm0 ymm13;
(* vpxor  %ymm14,%ymm6,%ymm6                       #! PC = 0x55555557f5e9 *)
adds dc ymm6 ymm6 ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff904e0; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555557f5ee *)
mul ymm14 ymm13 L0x7ffffff904e0;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555557f5f3 *)
adds dc ymm7 ymm7 ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90500; Value = 0x0ff00ff00ff00ff0; PC = 0x55555557f5f8 *)
mul ymm14 ymm13 L0x7ffffff90500;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555557f5fd *)
adds dc ymm8 ymm8 ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90520; Value = 0xaa5555aaaa5555aa; PC = 0x55555557f602 *)
mul ymm14 ymm13 L0x7ffffff90520;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555557f607 *)
adds dc ymm9 ymm9 ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90540; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f60c *)
mul ymm14 ymm13 L0x7ffffff90540;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555557f614 *)
adds dc ymm10 ymm10 ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90560; Value = 0x33cccc33cc3333cc; PC = 0x55555557f619 *)
mul ymm14 ymm13 L0x7ffffff90560;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555557f621 *)
adds dc ymm11 ymm11 ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90580; Value = 0xffff0000ffff0000; PC = 0x55555557f626 *)
mul ymm14 ymm13 L0x7ffffff90580;
(* vpxor  %ymm14,%ymm12,%ymm12                     #! PC = 0x55555557f62e *)
adds dc ymm12 ymm12 ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff905a0; Value = 0xcc33cc3333cc33cc; PC = 0x55555557f633 *)
mul ymm14 ymm13 L0x7ffffff905a0;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555557f63b *)
adds dc ymm1 ymm1 ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905c0; Value = 0x33cc33cc33cc33cc; PC = 0x55555557f640 *)
mul ymm14 ymm13 L0x7ffffff905c0;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555557f648 *)
adds dc ymm2 ymm2 ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905e0; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555557f64d *)
mul ymm14 ymm13 L0x7ffffff905e0;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555557f655 *)
adds dc ymm3 ymm3 ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff90600; Value = 0xff00ff00ff00ff00; PC = 0x55555557f65a *)
mul ymm14 ymm13 L0x7ffffff90600;
(* vpxor  %ymm14,%ymm4,%ymm4                       #! PC = 0x55555557f662 *)
adds dc ymm4 ymm4 ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff90620; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f667 *)
mul ymm13 ymm13 L0x7ffffff90620;
(* vpxor  %ymm13,%ymm5,%ymm5                       #! PC = 0x55555557f66f *)
adds dc ymm5 ymm5 ymm13;
(* vpxor  %ymm5,%ymm8,%ymm8                        #! PC = 0x55555557f674 *)
adds dc ymm8 ymm8 ymm5;
(* vmovapd %ymm5,%ymm5                             #! PC = 0x55555557f678 *)
mov ymm5 ymm5;
(* vmovupd 0x40(%rsi),%ymm13                       #! EA = L0x7ffffffa6740; Value = 0x0000000000000000; PC = 0x55555557f67c *)
mov ymm13 L0x7ffffffa6740;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555557f681 *)
mul ymm14 ymm0 ymm13;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555557f686 *)
adds dc ymm5 ymm5 ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff904e0; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555557f68b *)
mul ymm14 ymm13 L0x7ffffff904e0;
(* vpxor  %ymm14,%ymm6,%ymm6                       #! PC = 0x55555557f690 *)
adds dc ymm6 ymm6 ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90500; Value = 0x0ff00ff00ff00ff0; PC = 0x55555557f695 *)
mul ymm14 ymm13 L0x7ffffff90500;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555557f69a *)
adds dc ymm7 ymm7 ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90520; Value = 0xaa5555aaaa5555aa; PC = 0x55555557f69f *)
mul ymm14 ymm13 L0x7ffffff90520;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555557f6a4 *)
adds dc ymm8 ymm8 ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90540; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f6a9 *)
mul ymm14 ymm13 L0x7ffffff90540;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555557f6b1 *)
adds dc ymm9 ymm9 ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90560; Value = 0x33cccc33cc3333cc; PC = 0x55555557f6b6 *)
mul ymm14 ymm13 L0x7ffffff90560;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555557f6be *)
adds dc ymm10 ymm10 ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90580; Value = 0xffff0000ffff0000; PC = 0x55555557f6c3 *)
mul ymm14 ymm13 L0x7ffffff90580;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555557f6cb *)
adds dc ymm11 ymm11 ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff905a0; Value = 0xcc33cc3333cc33cc; PC = 0x55555557f6d0 *)
mul ymm14 ymm13 L0x7ffffff905a0;
(* vpxor  %ymm14,%ymm12,%ymm12                     #! PC = 0x55555557f6d8 *)
adds dc ymm12 ymm12 ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905c0; Value = 0x33cc33cc33cc33cc; PC = 0x55555557f6dd *)
mul ymm14 ymm13 L0x7ffffff905c0;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555557f6e5 *)
adds dc ymm1 ymm1 ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905e0; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555557f6ea *)
mul ymm14 ymm13 L0x7ffffff905e0;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555557f6f2 *)
adds dc ymm2 ymm2 ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff90600; Value = 0xff00ff00ff00ff00; PC = 0x55555557f6f7 *)
mul ymm14 ymm13 L0x7ffffff90600;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555557f6ff *)
adds dc ymm3 ymm3 ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff90620; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f704 *)
mul ymm13 ymm13 L0x7ffffff90620;
(* vpxor  %ymm13,%ymm4,%ymm4                       #! PC = 0x55555557f70c *)
adds dc ymm4 ymm4 ymm13;
(* vpxor  %ymm4,%ymm7,%ymm7                        #! PC = 0x55555557f711 *)
adds dc ymm7 ymm7 ymm4;
(* vmovapd %ymm4,%ymm4                             #! PC = 0x55555557f715 *)
mov ymm4 ymm4;
(* vmovupd 0x20(%rsi),%ymm13                       #! EA = L0x7ffffffa6720; Value = 0xffffffffffffffff; PC = 0x55555557f719 *)
mov ymm13 L0x7ffffffa6720;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555557f71e *)
mul ymm14 ymm0 ymm13;
(* vpxor  %ymm14,%ymm4,%ymm4                       #! PC = 0x55555557f723 *)
adds dc ymm4 ymm4 ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff904e0; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555557f728 *)
mul ymm14 ymm13 L0x7ffffff904e0;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555557f72d *)
adds dc ymm5 ymm5 ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90500; Value = 0x0ff00ff00ff00ff0; PC = 0x55555557f732 *)
mul ymm14 ymm13 L0x7ffffff90500;
(* vpxor  %ymm14,%ymm6,%ymm6                       #! PC = 0x55555557f737 *)
adds dc ymm6 ymm6 ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90520; Value = 0xaa5555aaaa5555aa; PC = 0x55555557f73c *)
mul ymm14 ymm13 L0x7ffffff90520;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555557f741 *)
adds dc ymm7 ymm7 ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90540; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f746 *)
mul ymm14 ymm13 L0x7ffffff90540;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555557f74e *)
adds dc ymm8 ymm8 ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90560; Value = 0x33cccc33cc3333cc; PC = 0x55555557f753 *)
mul ymm14 ymm13 L0x7ffffff90560;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555557f75b *)
adds dc ymm9 ymm9 ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90580; Value = 0xffff0000ffff0000; PC = 0x55555557f760 *)
mul ymm14 ymm13 L0x7ffffff90580;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555557f768 *)
adds dc ymm10 ymm10 ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff905a0; Value = 0xcc33cc3333cc33cc; PC = 0x55555557f76d *)
mul ymm14 ymm13 L0x7ffffff905a0;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555557f775 *)
adds dc ymm11 ymm11 ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905c0; Value = 0x33cc33cc33cc33cc; PC = 0x55555557f77a *)
mul ymm14 ymm13 L0x7ffffff905c0;
(* vpxor  %ymm14,%ymm12,%ymm12                     #! PC = 0x55555557f782 *)
adds dc ymm12 ymm12 ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905e0; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555557f787 *)
mul ymm14 ymm13 L0x7ffffff905e0;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555557f78f *)
adds dc ymm1 ymm1 ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff90600; Value = 0xff00ff00ff00ff00; PC = 0x55555557f794 *)
mul ymm14 ymm13 L0x7ffffff90600;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555557f79c *)
adds dc ymm2 ymm2 ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff90620; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f7a1 *)
mul ymm13 ymm13 L0x7ffffff90620;
(* vpxor  %ymm13,%ymm3,%ymm3                       #! PC = 0x55555557f7a9 *)
adds dc ymm3 ymm3 ymm13;
(* vpxor  %ymm3,%ymm6,%ymm6                        #! PC = 0x55555557f7ae *)
adds dc ymm6 ymm6 ymm3;
(* vmovapd %ymm3,%ymm3                             #! PC = 0x55555557f7b2 *)
mov ymm3 ymm3;
(* vmovupd (%rsi),%ymm13                           #! EA = L0x7ffffffa6700; Value = 0x0000000000000000; PC = 0x55555557f7b6 *)
mov ymm13 L0x7ffffffa6700;
(* vpand  %ymm13,%ymm0,%ymm0                       #! PC = 0x55555557f7ba *)
mul ymm0 ymm0 ymm13;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x55555557f7bf *)
adds dc ymm3 ymm3 ymm0;
(* vpand  0x20(%rdx),%ymm13,%ymm0                  #! EA = L0x7ffffff904e0; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555557f7c3 *)
mul ymm0 ymm13 L0x7ffffff904e0;
(* vpxor  %ymm0,%ymm4,%ymm4                        #! PC = 0x55555557f7c8 *)
adds dc ymm4 ymm4 ymm0;
(* vpand  0x40(%rdx),%ymm13,%ymm0                  #! EA = L0x7ffffff90500; Value = 0x0ff00ff00ff00ff0; PC = 0x55555557f7cc *)
mul ymm0 ymm13 L0x7ffffff90500;
(* vpxor  %ymm0,%ymm5,%ymm5                        #! PC = 0x55555557f7d1 *)
adds dc ymm5 ymm5 ymm0;
(* vpand  0x60(%rdx),%ymm13,%ymm0                  #! EA = L0x7ffffff90520; Value = 0xaa5555aaaa5555aa; PC = 0x55555557f7d5 *)
mul ymm0 ymm13 L0x7ffffff90520;
(* vpxor  %ymm0,%ymm6,%ymm6                        #! PC = 0x55555557f7da *)
adds dc ymm6 ymm6 ymm0;
(* vpand  0x80(%rdx),%ymm13,%ymm0                  #! EA = L0x7ffffff90540; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f7de *)
mul ymm0 ymm13 L0x7ffffff90540;
(* vpxor  %ymm0,%ymm7,%ymm7                        #! PC = 0x55555557f7e6 *)
adds dc ymm7 ymm7 ymm0;
(* vpand  0xa0(%rdx),%ymm13,%ymm0                  #! EA = L0x7ffffff90560; Value = 0x33cccc33cc3333cc; PC = 0x55555557f7ea *)
mul ymm0 ymm13 L0x7ffffff90560;
(* vpxor  %ymm0,%ymm8,%ymm8                        #! PC = 0x55555557f7f2 *)
adds dc ymm8 ymm8 ymm0;
(* vpand  0xc0(%rdx),%ymm13,%ymm0                  #! EA = L0x7ffffff90580; Value = 0xffff0000ffff0000; PC = 0x55555557f7f6 *)
mul ymm0 ymm13 L0x7ffffff90580;
(* vpxor  %ymm0,%ymm9,%ymm9                        #! PC = 0x55555557f7fe *)
adds dc ymm9 ymm9 ymm0;
(* vpand  0xe0(%rdx),%ymm13,%ymm0                  #! EA = L0x7ffffff905a0; Value = 0xcc33cc3333cc33cc; PC = 0x55555557f802 *)
mul ymm0 ymm13 L0x7ffffff905a0;
(* vpxor  %ymm0,%ymm10,%ymm10                      #! PC = 0x55555557f80a *)
adds dc ymm10 ymm10 ymm0;
(* vpand  0x100(%rdx),%ymm13,%ymm0                 #! EA = L0x7ffffff905c0; Value = 0x33cc33cc33cc33cc; PC = 0x55555557f80e *)
mul ymm0 ymm13 L0x7ffffff905c0;
(* vpxor  %ymm0,%ymm11,%ymm11                      #! PC = 0x55555557f816 *)
adds dc ymm11 ymm11 ymm0;
(* vpand  0x120(%rdx),%ymm13,%ymm0                 #! EA = L0x7ffffff905e0; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555557f81a *)
mul ymm0 ymm13 L0x7ffffff905e0;
(* vpxor  %ymm0,%ymm12,%ymm12                      #! PC = 0x55555557f822 *)
adds dc ymm12 ymm12 ymm0;
(* vpand  0x140(%rdx),%ymm13,%ymm0                 #! EA = L0x7ffffff90600; Value = 0xff00ff00ff00ff00; PC = 0x55555557f826 *)
mul ymm0 ymm13 L0x7ffffff90600;
(* vpxor  %ymm0,%ymm1,%ymm1                        #! PC = 0x55555557f82e *)
adds dc ymm1 ymm1 ymm0;
(* vpand  0x160(%rdx),%ymm13,%ymm0                 #! EA = L0x7ffffff90620; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f832 *)
mul ymm0 ymm13 L0x7ffffff90620;
(* vpxor  %ymm0,%ymm2,%ymm2                        #! PC = 0x55555557f83a *)
adds dc ymm2 ymm2 ymm0;
(* vmovupd %ymm2,0x160(%rdi)                       #! EA = L0x7ffffff8eb20; PC = 0x55555557f83e *)
mov L0x7ffffff8eb20 ymm2;
(* vmovupd %ymm1,0x140(%rdi)                       #! EA = L0x7ffffff8eb00; PC = 0x55555557f846 *)
mov L0x7ffffff8eb00 ymm1;
(* vmovupd %ymm12,0x120(%rdi)                      #! EA = L0x7ffffff8eae0; PC = 0x55555557f84e *)
mov L0x7ffffff8eae0 ymm12;
(* vmovupd %ymm11,0x100(%rdi)                      #! EA = L0x7ffffff8eac0; PC = 0x55555557f856 *)
mov L0x7ffffff8eac0 ymm11;
(* vmovupd %ymm10,0xe0(%rdi)                       #! EA = L0x7ffffff8eaa0; PC = 0x55555557f85e *)
mov L0x7ffffff8eaa0 ymm10;
(* vmovupd %ymm9,0xc0(%rdi)                        #! EA = L0x7ffffff8ea80; PC = 0x55555557f866 *)
mov L0x7ffffff8ea80 ymm9;
(* vmovupd %ymm8,0xa0(%rdi)                        #! EA = L0x7ffffff8ea60; PC = 0x55555557f86e *)
mov L0x7ffffff8ea60 ymm8;
(* vmovupd %ymm7,0x80(%rdi)                        #! EA = L0x7ffffff8ea40; PC = 0x55555557f876 *)
mov L0x7ffffff8ea40 ymm7;
(* vmovupd %ymm6,0x60(%rdi)                        #! EA = L0x7ffffff8ea20; PC = 0x55555557f87e *)
mov L0x7ffffff8ea20 ymm6;
(* vmovupd %ymm5,0x40(%rdi)                        #! EA = L0x7ffffff8ea00; PC = 0x55555557f883 *)
mov L0x7ffffff8ea00 ymm5;
(* vmovupd %ymm4,0x20(%rdi)                        #! EA = L0x7ffffff8e9e0; PC = 0x55555557f888 *)
mov L0x7ffffff8e9e0 ymm4;
(* vmovupd %ymm3,(%rdi)                            #! EA = L0x7ffffff8e9c0; PC = 0x55555557f88d *)
mov L0x7ffffff8e9c0 ymm3;
(* #add    %r11,%rsp                                #! PC = 0x55555557f891 *)
#add    %r11,%rsp                                #! 0x55555557f891 = 0x55555557f891;
(* #! <- SP = 0x7ffffff8e818 *)
#! 0x7ffffff8e818 = 0x7ffffff8e818;
(* #retq                                           #! PC = 0x55555557f894 *)
#retq                                           #! 0x55555557f894 = 0x55555557f894;

mov c00 L0x7ffffff8e9c0;
mov c01 L0x7ffffff8e9e0;
mov c02 L0x7ffffff8ea00;
mov c03 L0x7ffffff8ea20;
mov c04 L0x7ffffff8ea40;
mov c05 L0x7ffffff8ea60;
mov c06 L0x7ffffff8ea80;
mov c07 L0x7ffffff8eaa0;
mov c08 L0x7ffffff8eac0;
mov c09 L0x7ffffff8eae0;
mov c10 L0x7ffffff8eb00;
mov c11 L0x7ffffff8eb20;

ghost h@bit :
h = c00*(x**0) + c01*(x**1) + c02*(x**2) + c03*(x**3) +
c04*(x**4) + c05*(x**5) + c06*(x**6) + c07*(x**7) +
c08*(x**8) + c09*(x**9) + c10*(x**10) + c11*(x**11) 
 && true;

{
  eqmod h (f * g) [2, x**12 + x**3 + 1]
&&
  true
}

