(* macbook: cv -v -jobs 8 -slicing -isafety p256PointDoubleAsm.cl
Parsing CryptoLine file:			[OK]		0.0188 seconds
Checking well-formedness:			[OK]		0.0076 seconds

Procedure main
--------------
Transforming to SSA form:			[OK]		0.0015 seconds
Normalizing specification:			[OK]		0.0028 seconds
Rewriting assignments:				[OK]		0.0025 seconds
Verifying program safety:			
	Overall					[OK]		0.1345 seconds
Verifying range assertions:			[OK]		1279.4021 seconds
Verifying range specification:			[OK]		48.1378 seconds
Rewriting value-preserved casting:		[OK]		0.0005 seconds
Verifying algebraic assertions:			[OK]		0.0042 seconds
Verifying algebraic specification:		[OK]		4.5581 seconds
Procedure verification:				[OK]		1332.2454 seconds

Summary
-------
Verification result:				[OK]		1332.2720 seconds

*)

const P256_0 = 0xffffffffffffffff
const P256_1 = 0x00000000ffffffff
const P256_2 = 0x0000000000000000
const P256_3 = 0xffffffff00000001

proc main (uint64 xR_0, uint64 xR_1, uint64 xR_2, uint64 xR_3,
           uint64 yR_0, uint64 yR_1, uint64 yR_2, uint64 yR_3,
           uint64 zR_0, uint64 zR_1, uint64 zR_2, uint64 zR_3) =
{
  true
&&
  and [limbs 64 [xR_0,xR_1,xR_2,xR_3] <u
       limbs 64 [$P256_0@64,$P256_1@64,$P256_2@64,$P256_3@64],
       limbs 64 [yR_0,yR_1,yR_2,yR_3] <u
       limbs 64 [$P256_0@64,$P256_1@64,$P256_2@64,$P256_3@64],
       limbs 64 [zR_0,zR_1,zR_2,zR_3] <u
       limbs 64 [$P256_0@64,$P256_1@64,$P256_2@64,$P256_3@64]]
}

ghost x_0@uint64, x_1@uint64, x_2@uint64, x_3@uint64,
      y_0@uint64, y_1@uint64, y_2@uint64, y_3@uint64,
      z_0@uint64, z_1@uint64, z_2@uint64, z_3@uint64 :
      and [eqmod (limbs 64 [xR_0, xR_1, xR_2, xR_3])
                 (2**256 * limbs 64 [x_0, x_1, x_2, x_3])
                 (limbs 64 [$P256_0,$P256_1,$P256_2,$P256_3]),
           eqmod (limbs 64 [yR_0, yR_1, yR_2, yR_3])
                 (2**256 * limbs 64 [y_0, y_1, y_2, y_3])
                 (limbs 64 [$P256_0,$P256_1,$P256_2,$P256_3]),
           eqmod (limbs 64 [zR_0, zR_1, zR_2, zR_3])
                 (2**256 * limbs 64 [z_0, z_1, z_2, z_3])
                 (limbs 64 [$P256_0,$P256_1,$P256_2,$P256_3])] && true;

mov L0xc0000b1d48 xR_0; mov L0xc0000b1d50 xR_1;
mov L0xc0000b1d58 xR_2; mov L0xc0000b1d60 xR_3;
mov L0xc0000b1d68 yR_0; mov L0xc0000b1d70 yR_1;
mov L0xc0000b1d78 yR_2; mov L0xc0000b1d80 yR_3;
mov L0xc0000b1d88 zR_0; mov L0xc0000b1d90 zR_1;
mov L0xc0000b1d98 zR_2; mov L0xc0000b1da0 zR_3;
mov L0x539af8 $P256_1@uint64;
mov L0x539b00 $P256_3@uint64;
(* crypto/elliptic.p256PointDoubleAsm.abi0: *)
#crypto/elliptic.p256PointDoubleAsm.abi0:;
(* #! -> SP = 0xc0000b14d0 *)
#! 0xc0000b14d0 = 0xc0000b14d0;
(* sub    $0x108,%rsp                              #! PC = 0x4c93a0 *)
#subb carry rsp rsp 0x108@uint64;
(* mov    %rbp,0x100(%rsp)                         #! EA = L0xc0000b14c8; PC = 0x4c93a7 *)
#mov L0xc0000b14c8 rbp;
(* lea    0x100(%rsp),%rbp                         #! PC = 0x4c93af *)
#lea    %%EA,%%rbp                         #! 0x4c93af = 0x4c93af;
(* mov    0x110(%rsp),%rax                         #! EA = L0xc0000b14d8; Value = 0x000000c0000b1670; PC = 0x4c93b7 *)
#mov rax L0xc0000b14d8;
(* mov    0x128(%rsp),%rbx                         #! EA = L0xc0000b14f0; Value = 0x000000c0000b1d48; PC = 0x4c93bf *)
#mov rbx L0xc0000b14f0;
(* movdqu (%rbx),%xmm0                             #! EA = L0xc0000b1d48; Value = 0x73e27cfed6efd4e3; PC = 0x4c93c7 *)
mov xmm0_0 L0xc0000b1d48; #mov xmm0_1 L0xc0000b1d4c;
mov xmm0_2 L0xc0000b1d50; #mov xmm0_3 L0xc0000b1d54;
(* movdqu 0x10(%rbx),%xmm1                         #! EA = L0xc0000b1d58; Value = 0x28efc415cd8aba40; PC = 0x4c93cb *)
mov xmm1_0 L0xc0000b1d58; #mov xmm1_1 L0xc0000b1d5c;
mov xmm1_2 L0xc0000b1d60; #mov xmm1_3 L0xc0000b1d64;
(* movdqu 0x20(%rbx),%xmm2                         #! EA = L0xc0000b1d68; Value = 0x13ad699e5a568a88; PC = 0x4c93d0 *)
mov xmm2_0 L0xc0000b1d68; #mov xmm2_1 L0xc0000b1d6c;
mov xmm2_2 L0xc0000b1d70; #mov xmm2_3 L0xc0000b1d74;
(* movdqu 0x30(%rbx),%xmm3                         #! EA = L0xc0000b1d78; Value = 0xf846d91e15be3d53; PC = 0x4c93d5 *)
mov xmm3_0 L0xc0000b1d78; #mov xmm3_1 L0xc0000b1d7c;
mov xmm3_2 L0xc0000b1d80; #mov xmm3_3 L0xc0000b1d84;
(* movdqu 0x40(%rbx),%xmm4                         #! EA = L0xc0000b1d88; Value = 0x0000000000000001; PC = 0x4c93da *)
mov xmm4_0 L0xc0000b1d88; #mov xmm4_1 L0xc0000b1d8c;
mov xmm4_2 L0xc0000b1d90; #mov xmm4_3 L0xc0000b1d94;
(* movdqu 0x50(%rbx),%xmm5                         #! EA = L0xc0000b1d98; Value = 0xffffffffffffffff; PC = 0x4c93df *)
mov xmm5_0 L0xc0000b1d98; #mov xmm5_1 L0xc0000b1d9c;
mov xmm5_2 L0xc0000b1da0; #mov xmm5_3 L0xc0000b1da4;
(* movdqu %xmm0,(%rsp)                             #! EA = L0xc0000b13c8; PC = 0x4c93e4 *)
mov L0xc0000b13c8 xmm0_0; #mov L0xc0000b13cc xmm0_1;
mov L0xc0000b13d0 xmm0_2; #mov L0xc0000b13d4 xmm0_3;
(* movdqu %xmm1,0x10(%rsp)                         #! EA = L0xc0000b13d8; PC = 0x4c93e9 *)
mov L0xc0000b13d8 xmm1_0; #mov L0xc0000b13dc xmm1_1;
mov L0xc0000b13e0 xmm1_2; #mov L0xc0000b13e4 xmm1_3;
(* movdqu %xmm2,0x20(%rsp)                         #! EA = L0xc0000b13e8; PC = 0x4c93ef *)
mov L0xc0000b13e8 xmm2_0; #mov L0xc0000b13ec xmm2_1;
mov L0xc0000b13f0 xmm2_2; #mov L0xc0000b13f4 xmm2_3;
(* movdqu %xmm3,0x30(%rsp)                         #! EA = L0xc0000b13f8; PC = 0x4c93f5 *)
mov L0xc0000b13f8 xmm3_0; #mov L0xc0000b13fc xmm3_1;
mov L0xc0000b1400 xmm3_2; #mov L0xc0000b1404 xmm3_3;
(* movdqu %xmm4,0x40(%rsp)                         #! EA = L0xc0000b1408; PC = 0x4c93fb *)
mov L0xc0000b1408 xmm4_0; #mov L0xc0000b140c xmm4_1;
mov L0xc0000b1410 xmm4_2; #mov L0xc0000b1414 xmm4_3;
(* movdqu %xmm5,0x50(%rsp)                         #! EA = L0xc0000b1418; PC = 0x4c9401 *)
mov L0xc0000b1418 xmm5_0; #mov L0xc0000b141c xmm5_1;
mov L0xc0000b1420 xmm5_2; #mov L0xc0000b1424 xmm5_3;
(* mov    %rax,0xe0(%rsp)                          #! EA = L0xc0000b14a8; PC = 0x4c9407 *)
#mov L0xc0000b14a8 rax;
(* mov    0x40(%rsp),%r10                          #! EA = L0xc0000b1408; Value = 0x0000000000000001; PC = 0x4c940f *)
mov r10 L0xc0000b1408;
(* mov    0x48(%rsp),%r11                          #! EA = L0xc0000b1410; Value = 0xffffffff00000000; PC = 0x4c9414 *)
mov r11 L0xc0000b1410;
(* mov    0x50(%rsp),%r12                          #! EA = L0xc0000b1418; Value = 0xffffffffffffffff; PC = 0x4c9419 *)
mov r12 L0xc0000b1418;
(* mov    0x58(%rsp),%r13                          #! EA = L0xc0000b1420; Value = 0x00000000fffffffe; PC = 0x4c941e *)
mov r13 L0xc0000b1420;
(* #call   0x4c82e0 <p256SqrInternal>              #! PC = 0x4c9423 *)
#call   0x4c82e0 <p256SqrInternal>              #! 0x4c9423 = 0x4c9423;
(* #! -> SP = 0xc0000b13c0 *)
#! 0xc0000b13c0 = 0xc0000b13c0;
(* sub    $0x10,%rsp                               #! PC = 0x4c82e0 *)
#subb carry rsp rsp 0x10@uint64;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0xc0000b13b8; PC = 0x4c82e4 *)
#mov L0xc0000b13b8 rbp;
(* lea    0x8(%rsp),%rbp                           #! PC = 0x4c82e9 *)
#lea    %%EA,%%rbp                           #! 0x4c82e9 = 0x4c82e9;
(* mov    %r10,%rax                                #! PC = 0x4c82ee *)
mov rax r10;
(* mul    %r11                                     #! PC = 0x4c82f1 *)
mull rdx rax rax r11;
subc carry dc rdx 1@uint64; mov overflow carry;
(* mov    %rax,%rcx                                #! PC = 0x4c82f4 *)
mov rcx rax;
(* mov    %rdx,%r8                                 #! PC = 0x4c82f7 *)
mov r8 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c82fa *)
mov rax r10;
(* mul    %r12                                     #! PC = 0x4c82fd *)
mull rdx rax rax r12;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c8300 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8303 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c8307 *)
mov r9 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c830a *)
mov rax r10;
(* mul    %r13                                     #! PC = 0x4c830d *)
mull rdx rax rax r13;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c8310 *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8313 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r14                                #! PC = 0x4c8317 *)
mov r14 rdx;
(* mov    %r11,%rax                                #! PC = 0x4c831a *)
mov rax r11;
(* mul    %r12                                     #! PC = 0x4c831d *)
mull rdx rax rax r12;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c8320 *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8323 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8327 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c832a *)
mov rax r11;
(* mul    %r13                                     #! PC = 0x4c832d *)
mull rdx rax rax r13;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r14                                #! PC = 0x4c8330 *)
adds carry r14 r14 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8333 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r14                                #! PC = 0x4c8337 *)
adds carry r14 r14 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c833a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r15                                #! PC = 0x4c833e *)
mov r15 rdx;
(* mov    %r12,%rax                                #! PC = 0x4c8341 *)
mov rax r12;
(* mul    %r13                                     #! PC = 0x4c8344 *)
mull rdx rax rax r13;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r15                                #! PC = 0x4c8347 *)
adds carry r15 r15 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c834a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rdi                                #! PC = 0x4c834e *)
mov rdi rdx;
(* xor    %rsi,%rsi                                #! PC = 0x4c8351 *)
mov rsi 0@uint64;
clear carry;
clear overflow;
(* add    %rcx,%rcx                                #! PC = 0x4c8354 *)
adds carry rcx rcx rcx;
(* adc    %r8,%r8                                  #! PC = 0x4c8357 *)
adcs carry r8 r8 r8 carry;
(* adc    %r9,%r9                                  #! PC = 0x4c835a *)
adcs carry r9 r9 r9 carry;
(* adc    %r14,%r14                                #! PC = 0x4c835d *)
adcs carry r14 r14 r14 carry;
(* adc    %r15,%r15                                #! PC = 0x4c8360 *)
adcs carry r15 r15 r15 carry;
(* adc    %rdi,%rdi                                #! PC = 0x4c8363 *)
adcs carry rdi rdi rdi carry;
(* adc    $0x0,%rsi                                #! PC = 0x4c8366 *)
adcs carry rsi rsi 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r10,%rax                                #! PC = 0x4c836a *)
mov rax r10;
(* mul    %rax                                     #! PC = 0x4c836d *)
mull rdx rax rax rax;
subc carry dc rdx 1@uint64; mov overflow carry;
(* mov    %rax,%rbx                                #! PC = 0x4c8370 *)
mov rbx rax;
(* mov    %rdx,%r10                                #! PC = 0x4c8373 *)
mov r10 rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8376 *)
mov rax r11;
(* mul    %rax                                     #! PC = 0x4c8379 *)
mull rdx rax rax rax;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %r10,%rcx                                #! PC = 0x4c837c *)
adds carry rcx rcx r10;
(* adc    %rax,%r8                                 #! PC = 0x4c837f *)
adcs carry r8 r8 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8382 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r10                                #! PC = 0x4c8386 *)
mov r10 rdx;
(* mov    %r12,%rax                                #! PC = 0x4c8389 *)
mov rax r12;
(* mul    %rax                                     #! PC = 0x4c838c *)
mull rdx rax rax rax;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %r10,%r9                                 #! PC = 0x4c838f *)
adds carry r9 r9 r10;
(* adc    %rax,%r14                                #! PC = 0x4c8392 *)
adcs carry r14 r14 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8395 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r10                                #! PC = 0x4c8399 *)
mov r10 rdx;
(* mov    %r13,%rax                                #! PC = 0x4c839c *)
mov rax r13;
(* mul    %rax                                     #! PC = 0x4c839f *)
mull rdx rax rax rax;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %r10,%r15                                #! PC = 0x4c83a2 *)
adds carry r15 r15 r10;
(* adc    %rax,%rdi                                #! PC = 0x4c83a5 *)
adcs carry rdi rdi rax carry;
(* adc    %rdx,%rsi                                #! PC = 0x4c83a8 *)
adcs carry rsi rsi rdx carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rbx,%rax                                #! PC = 0x4c83ab *)
mov rax rbx;
(* mov    %rbx,%rbp                                #! PC = 0x4c83ae *)
mov rbp rbx;
(* shl    $0x20,%rbx                               #! PC = 0x4c83b1 *)
split ddc rbx rbx (64-0x20);
shl rbx rbx 0x20@uint64;
(* mulq   0x71744(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c83b5 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c83bc *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rbx,%rcx                                #! PC = 0x4c83c0 *)
adds carry rcx rcx rbx;
(* adc    %rbp,%r8                                 #! PC = 0x4c83c3 *)
adcs carry r8 r8 rbp carry;
(* adc    %rax,%r9                                 #! PC = 0x4c83c6 *)
adcs carry r9 r9 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c83c9 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbx                                #! PC = 0x4c83cd *)
mov rbx rdx;
(* mov    %rcx,%rax                                #! PC = 0x4c83d0 *)
mov rax rcx;
(* mov    %rcx,%rbp                                #! PC = 0x4c83d3 *)
mov rbp rcx;
(* shl    $0x20,%rcx                               #! PC = 0x4c83d6 *)
split ddc rcx rcx (64-0x20);
shl rcx rcx 0x20@uint64;
(* mulq   0x7171f(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c83da *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c83e1 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rcx,%r8                                 #! PC = 0x4c83e5 *)
adds carry r8 r8 rcx;
(* adc    %rbp,%r9                                 #! PC = 0x4c83e8 *)
adcs carry r9 r9 rbp carry;
(* adc    %rax,%rbx                                #! PC = 0x4c83eb *)
adcs carry rbx rbx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c83ee *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rcx                                #! PC = 0x4c83f2 *)
mov rcx rdx;
(* mov    %r8,%rax                                 #! PC = 0x4c83f5 *)
mov rax r8;
(* mov    %r8,%rbp                                 #! PC = 0x4c83f8 *)
mov rbp r8;
(* shl    $0x20,%r8                                #! PC = 0x4c83fb *)
split ddc r8 r8 (64-0x20);
shl r8 r8 0x20@uint64;
(* mulq   0x716fa(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c83ff *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8406 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r8,%r9                                  #! PC = 0x4c840a *)
adds carry r9 r9 r8;
(* adc    %rbp,%rbx                                #! PC = 0x4c840d *)
adcs carry rbx rbx rbp carry;
(* adc    %rax,%rcx                                #! PC = 0x4c8410 *)
adcs carry rcx rcx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8413 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c8417 *)
mov r8 rdx;
(* mov    %r9,%rax                                 #! PC = 0x4c841a *)
mov rax r9;
(* mov    %r9,%rbp                                 #! PC = 0x4c841d *)
mov rbp r9;
(* shl    $0x20,%r9                                #! PC = 0x4c8420 *)
split ddc r9 r9 (64-0x20);
shl r9 r9 0x20@uint64;
(* mulq   0x716d5(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8424 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c842b *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r9,%rbx                                 #! PC = 0x4c842f *)
adds carry rbx rbx r9;
(* adc    %rbp,%rcx                                #! PC = 0x4c8432 *)
adcs carry rcx rcx rbp carry;
(* adc    %rax,%r8                                 #! PC = 0x4c8435 *)
adcs carry r8 r8 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8438 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c843c *)
mov r9 rdx;
(* mov    $0x0,%rbp                                #! PC = 0x4c843f *)
mov rbp 0x0@uint64;
(* adc    %rbx,%r14                                #! PC = 0x4c8446 *)
adcs carry r14 r14 rbx carry;
(* adc    %rcx,%r15                                #! PC = 0x4c8449 *)
adcs carry r15 r15 rcx carry;
(* adc    %r8,%rdi                                 #! PC = 0x4c844c *)
adcs carry rdi rdi r8 carry;
(* adc    %r9,%rsi                                 #! PC = 0x4c844f *)
adcs carry0 rsi rsi r9 carry;
(* adc    $0x0,%rbp                                #! PC = 0x4c8452 *)
adcs carry rbp rbp 0x0@uint64 carry0;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r14,%r10                                #! PC = 0x4c8456 *)
mov r10 r14;
(* mov    %r15,%r11                                #! PC = 0x4c8459 *)
mov r11 r15;
(* mov    %rdi,%r12                                #! PC = 0x4c845c *)
mov r12 rdi;
(* mov    %rsi,%r13                                #! PC = 0x4c845f *)
mov r13 rsi;

ghost r10a@uint64, r11a@uint64, r12a@uint64, r13a@uint64, rbpa@uint64 :
      and [r10a=r10, r11a=r11, r12a=r12, r13a=r13, rbpa=rbp]
   && and [r10a=r10, r11a=r11, r12a=r12, r13a=r13, rbpa=rbp];

(* sub    $0xffffffffffffffff,%r10                 #! PC = 0x4c8462 *)
subb carry r10 r10 0xffffffffffffffff@uint64;
(* sbb    0x7168b(%rip),%r11        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c8466 *)
sbbs carry r11 r11 L0x539af8 carry;
(* sbb    $0x0,%r12                                #! PC = 0x4c846d *)
sbbs carry r12 r12 0x0@uint64 carry;
(* sbb    0x71688(%rip),%r13        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c8471 *)
sbbs carry1 r13 r13 L0x539b00 carry;
(* sbb    $0x0,%rbp                                #! PC = 0x4c8478 *)
sbbs carry rbp rbp 0x0@uint64 carry1;
(* cmovb  %r14,%r10                                #! PC = 0x4c847c *)
cmov r10 carry r14 r10;
(* cmovb  %r15,%r11                                #! PC = 0x4c8480 *)
cmov r11 carry r15 r11;
(* cmovb  %rdi,%r12                                #! PC = 0x4c8484 *)
cmov r12 carry rdi r12;
(* cmovb  %rsi,%r13                                #! PC = 0x4c8488 *)
cmov r13 carry rsi r13;

assert true &&
       eqmod (limbs 64 [r10, r11, r12, r13, 0@64])
             (limbs 64 [r10a, r11a, r12a, r13a, rbpa])
             (limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64, 0@64]);
assume eqmod (limbs 64 [r10, r11, r12, r13, 0])
             (limbs 64 [r10a, r11a, r12a, r13a, rbpa])
             (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3, 0]) && true;

(* mov    0x8(%rsp),%rbp                           #! EA = L0xc0000b13b8; Value = 0x000000c0000b14c8; PC = 0x4c848c *)
#mov rbp L0xc0000b13b8;
(* add    $0x10,%rsp                               #! PC = 0x4c8491 *)
#adds carry rsp rsp 0x10@uint64;
(* #! <- SP = 0xc0000b13c0 *)
#! 0xc0000b13c0 = 0xc0000b13c0;
(* #ret                                            #! PC = 0x4c8495 *)
#ret                                            #! 0x4c8495 = 0x4c8495;
(* mov    %r10,0xa0(%rsp)                          #! EA = L0xc0000b1468; PC = 0x4c9428 *)
mov L0xc0000b1468 r10;
(* mov    %r11,0xa8(%rsp)                          #! EA = L0xc0000b1470; PC = 0x4c9430 *)
mov L0xc0000b1470 r11;
(* mov    %r12,0xb0(%rsp)                          #! EA = L0xc0000b1478; PC = 0x4c9438 *)
mov L0xc0000b1478 r12;
(* mov    %r13,0xb8(%rsp)                          #! EA = L0xc0000b1480; PC = 0x4c9440 *)
mov L0xc0000b1480 r13;

(* 0 *)
cut eqmod (limbs 64 [L0xc0000b1468, L0xc0000b1470, L0xc0000b1478, L0xc0000b1480])
          (2**256 * (limbs 64 [z_0, z_1, z_2, z_3])**2)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [ precondition, all ghosts ]
 && limbs 64 [L0xc0000b1468, L0xc0000b1470, L0xc0000b1478, L0xc0000b1480] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [ precondition ];

(* mov    (%rsp),%r14                              #! EA = L0xc0000b13c8; Value = 0x73e27cfed6efd4e3; PC = 0x4c9448 *)
mov r14 L0xc0000b13c8;
(* mov    0x8(%rsp),%r15                           #! EA = L0xc0000b13d0; Value = 0x51688130d76bf7b9; PC = 0x4c944c *)
mov r15 L0xc0000b13d0;
(* mov    0x10(%rsp),%rdi                          #! EA = L0xc0000b13d8; Value = 0x28efc415cd8aba40; PC = 0x4c9451 *)
mov rdi L0xc0000b13d8;
(* mov    0x18(%rsp),%rsi                          #! EA = L0xc0000b13e0; Value = 0x8a0fc1d0000b538a; PC = 0x4c9456 *)
mov rsi L0xc0000b13e0;
(* xor    %rax,%rax                                #! PC = 0x4c945b *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* add    %r14,%r10                                #! PC = 0x4c945e *)
adds carry r10 r10 r14;
(* adc    %r15,%r11                                #! PC = 0x4c9461 *)
adcs carry r11 r11 r15 carry;
(* adc    %rdi,%r12                                #! PC = 0x4c9464 *)
adcs carry r12 r12 rdi carry;
(* adc    %rsi,%r13                                #! PC = 0x4c9467 *)
adcs carry r13 r13 rsi carry;
(* adc    $0x0,%rax                                #! PC = 0x4c946a *)
adcs carry rax rax 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r10,%r14                                #! PC = 0x4c946e *)
mov r14 r10;
(* mov    %r11,%r15                                #! PC = 0x4c9471 *)
mov r15 r11;
(* mov    %r12,%rdi                                #! PC = 0x4c9474 *)
mov rdi r12;
(* mov    %r13,%rsi                                #! PC = 0x4c9477 *)
mov rsi r13;

ghost r14j@uint64, r15j@uint64, rdij@uint64, rsij@uint64, raxj@uint64 :
      and [r14j=r14, r15j=r15, rdij=rdi, rsij=rsi, raxj=rax]
   && and [r14j=r14, r15j=r15, rdij=rdi, rsij=rsi, raxj=rax];

(* sub    $0xffffffffffffffff,%r14                 #! PC = 0x4c947a *)
subb carry r14 r14 0xffffffffffffffff@uint64;
(* sbb    0x70673(%rip),%r15        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c947e *)
sbbs carry r15 r15 L0x539af8 carry;
(* sbb    $0x0,%rdi                                #! PC = 0x4c9485 *)
sbbs carry rdi rdi 0x0@uint64 carry;
(* sbb    0x70670(%rip),%rsi        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c9489 *)
sbbs carry rsi rsi L0x539b00 carry;
(* sbb    $0x0,%rax                                #! PC = 0x4c9490 *)
sbbs carry rax rax 0x0@uint64 carry;
(* cmovb  %r10,%r14                                #! PC = 0x4c9494 *)
cmov r14 carry r10 r14;
(* cmovb  %r11,%r15                                #! PC = 0x4c9498 *)
cmov r15 carry r11 r15;
(* cmovb  %r12,%rdi                                #! PC = 0x4c949c *)
cmov rdi carry r12 rdi;
(* cmovb  %r13,%rsi                                #! PC = 0x4c94a0 *)
cmov rsi carry r13 rsi;

assert true &&
       eqmod (limbs 64 [r14, r15, rdi, rsi, 0@64])
             (limbs 64 [r14j, r15j, rdij, rsij, raxj])
             (limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64, 0@64]);
assume eqmod (limbs 64 [r14, r15, rdi, rsi, 0])
             (limbs 64 [r14j, r15j, rdij, rsij, raxj])
             (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3, 0]) && true;

(* mov    %r14,0x80(%rsp)                          #! EA = L0xc0000b1448; PC = 0x4c94a4 *)
mov L0xc0000b1448 r14;
(* mov    %r15,0x88(%rsp)                          #! EA = L0xc0000b1450; PC = 0x4c94ac *)
mov L0xc0000b1450 r15;
(* mov    %rdi,0x90(%rsp)                          #! EA = L0xc0000b1458; PC = 0x4c94b4 *)
mov L0xc0000b1458 rdi;
(* mov    %rsi,0x98(%rsp)                          #! EA = L0xc0000b1460; PC = 0x4c94bc *)
mov L0xc0000b1460 rsi;

(* 1 *)
cut eqmod (limbs 64 [L0xc0000b1448, L0xc0000b1450, L0xc0000b1458, L0xc0000b1460])
          (2**256*(limbs 64 [x_0,x_1,x_2,x_3] + limbs 64 [z_0,z_1,z_2,z_3]**2))
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [ precondition, all ghosts ]
 && limbs 64 [L0xc0000b1448, L0xc0000b1450, L0xc0000b1458, L0xc0000b1460] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [ precondition ];
  
(* mov    0x40(%rsp),%r10                          #! EA = L0xc0000b1408; Value = 0x0000000000000001; PC = 0x4c94c4 *)
mov r10 L0xc0000b1408;
(* mov    0x48(%rsp),%r11                          #! EA = L0xc0000b1410; Value = 0xffffffff00000000; PC = 0x4c94c9 *)
mov r11 L0xc0000b1410;
(* mov    0x50(%rsp),%r12                          #! EA = L0xc0000b1418; Value = 0xffffffffffffffff; PC = 0x4c94ce *)
mov r12 L0xc0000b1418;
(* mov    0x58(%rsp),%r13                          #! EA = L0xc0000b1420; Value = 0x00000000fffffffe; PC = 0x4c94d3 *)
mov r13 L0xc0000b1420;
(* mov    0x20(%rsp),%r14                          #! EA = L0xc0000b13e8; Value = 0x13ad699e5a568a88; PC = 0x4c94d8 *)
mov r14 L0xc0000b13e8;
(* mov    0x28(%rsp),%r15                          #! EA = L0xc0000b13f0; Value = 0x0cb4f2a3f60d7e38; PC = 0x4c94dd *)
mov r15 L0xc0000b13f0;
(* mov    0x30(%rsp),%rdi                          #! EA = L0xc0000b13f8; Value = 0xf846d91e15be3d53; PC = 0x4c94e2 *)
mov rdi L0xc0000b13f8;
(* mov    0x38(%rsp),%rsi                          #! EA = L0xc0000b1400; Value = 0x0ca72cbd91a05089; PC = 0x4c94e7 *)
mov rsi L0xc0000b1400;
(* #call   0x4c80a0 <p256MulInternal>              #! PC = 0x4c94ec *)
#call   0x4c80a0 <p256MulInternal>              #! 0x4c94ec = 0x4c94ec;
(* #! -> SP = 0xc0000b13c0 *)
#! 0xc0000b13c0 = 0xc0000b13c0;
(* sub    $0x10,%rsp                               #! PC = 0x4c80a0 *)
#subb carry rsp rsp 0x10@uint64;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0xc0000b13b8; PC = 0x4c80a4 *)
mov L0xc0000b13b8 rbp;
(* lea    0x8(%rsp),%rbp                           #! PC = 0x4c80a9 *)
#lea    %%EA,%%rbp                           #! 0x4c80a9 = 0x4c80a9;
(* mov    %r10,%rax                                #! PC = 0x4c80ae *)
mov rax r10;
(* mul    %r14                                     #! PC = 0x4c80b1 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* mov    %rax,%rbx                                #! PC = 0x4c80b4 *)
mov rbx rax;
(* mov    %rdx,%rcx                                #! PC = 0x4c80b7 *)
mov rcx rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80ba *)
mov rax r10;
(* mul    %r15                                     #! PC = 0x4c80bd *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%rcx                                #! PC = 0x4c80c0 *)
adds carry rcx rcx rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80c3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c80c7 *)
mov r8 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80ca *)
mov rax r10;
(* mul    %rdi                                     #! PC = 0x4c80cd *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c80d0 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80d3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c80d7 *)
mov r9 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80da *)
mov rax r10;
(* mul    %rsi                                     #! PC = 0x4c80dd *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c80e0 *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80e3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r10                                #! PC = 0x4c80e7 *)
mov r10 rdx;
(* mov    %r11,%rax                                #! PC = 0x4c80ea *)
mov rax r11;
(* mul    %r14                                     #! PC = 0x4c80ed *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%rcx                                #! PC = 0x4c80f0 *)
adds carry rcx rcx rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80f3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c80f7 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c80fa *)
mov rax r11;
(* mul    %r15                                     #! PC = 0x4c80fd *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r8                                 #! PC = 0x4c8100 *)
adds carry r8 r8 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8103 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r8                                 #! PC = 0x4c8107 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c810a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c810e *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8111 *)
mov rax r11;
(* mul    %rdi                                     #! PC = 0x4c8114 *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r9                                 #! PC = 0x4c8117 *)
adds carry r9 r9 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c811a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r9                                 #! PC = 0x4c811e *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8121 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8125 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8128 *)
mov rax r11;
(* mul    %rsi                                     #! PC = 0x4c812b *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c812e *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8131 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c8135 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8138 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r11                                #! PC = 0x4c813c *)
mov r11 rdx;
(* mov    %r12,%rax                                #! PC = 0x4c813f *)
mov rax r12;
(* mul    %r14                                     #! PC = 0x4c8142 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c8145 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8148 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c814c *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c814f *)
mov rax r12;
(* mul    %r15                                     #! PC = 0x4c8152 *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r9                                 #! PC = 0x4c8155 *)
adds carry r9 r9 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8158 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r9                                 #! PC = 0x4c815c *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c815f *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8163 *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c8166 *)
mov rax r12;
(* mul    %rdi                                     #! PC = 0x4c8169 *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c816c *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c816f *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c8173 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8176 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c817a *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c817d *)
mov rax r12;
(* mul    %rsi                                     #! PC = 0x4c8180 *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r11                                #! PC = 0x4c8183 *)
adds carry r11 r11 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8186 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r11                                #! PC = 0x4c818a *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c818d *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r12                                #! PC = 0x4c8191 *)
mov r12 rdx;
(* mov    %r13,%rax                                #! PC = 0x4c8194 *)
mov rax r13;
(* mul    %r14                                     #! PC = 0x4c8197 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c819a *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c819d *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81a1 *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81a4 *)
mov rax r13;
(* mul    %r15                                     #! PC = 0x4c81a7 *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c81aa *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81ad *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c81b1 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81b4 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81b8 *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81bb *)
mov rax r13;
(* mul    %rdi                                     #! PC = 0x4c81be *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r11                                #! PC = 0x4c81c1 *)
adds carry r11 r11 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81c4 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r11                                #! PC = 0x4c81c8 *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81cb *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81cf *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81d2 *)
mov rax r13;
(* mul    %rsi                                     #! PC = 0x4c81d5 *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r12                                #! PC = 0x4c81d8 *)
adds carry r12 r12 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81db *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r12                                #! PC = 0x4c81df *)
adds carry r12 r12 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81e2 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r13                                #! PC = 0x4c81e6 *)
mov r13 rdx;
(* mov    %rbx,%rax                                #! PC = 0x4c81e9 *)
mov rax rbx;
(* mov    %rbx,%rbp                                #! PC = 0x4c81ec *)
mov rbp rbx;
(* shl    $0x20,%rbx                               #! PC = 0x4c81ef *)
split ddc rbx rbx (64-0x20);
shl rbx rbx 0x20@uint64;
(* mulq   0x71906(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c81f3 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c81fa *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rbx,%rcx                                #! PC = 0x4c81fe *)
adds carry rcx rcx rbx;
(* adc    %rbp,%r8                                 #! PC = 0x4c8201 *)
adcs carry r8 r8 rbp carry;
(* adc    %rax,%r9                                 #! PC = 0x4c8204 *)
adcs carry r9 r9 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8207 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbx                                #! PC = 0x4c820b *)
mov rbx rdx;
(* mov    %rcx,%rax                                #! PC = 0x4c820e *)
mov rax rcx;
(* mov    %rcx,%rbp                                #! PC = 0x4c8211 *)
mov rbp rcx;
(* shl    $0x20,%rcx                               #! PC = 0x4c8214 *)
split ddc rcx rcx (64-0x20);
shl rcx rcx 0x20@uint64;
(* mulq   0x718e1(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8218 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c821f *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rcx,%r8                                 #! PC = 0x4c8223 *)
adds carry r8 r8 rcx;
(* adc    %rbp,%r9                                 #! PC = 0x4c8226 *)
adcs carry r9 r9 rbp carry;
(* adc    %rax,%rbx                                #! PC = 0x4c8229 *)
adcs carry rbx rbx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c822c *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rcx                                #! PC = 0x4c8230 *)
mov rcx rdx;
(* mov    %r8,%rax                                 #! PC = 0x4c8233 *)
mov rax r8;
(* mov    %r8,%rbp                                 #! PC = 0x4c8236 *)
mov rbp r8;
(* shl    $0x20,%r8                                #! PC = 0x4c8239 *)
split ddc r8 r8 (64-0x20);
shl r8 r8 0x20@uint64;
(* mulq   0x718bc(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c823d *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8244 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r8,%r9                                  #! PC = 0x4c8248 *)
adds carry r9 r9 r8;
(* adc    %rbp,%rbx                                #! PC = 0x4c824b *)
adcs carry rbx rbx rbp carry;
(* adc    %rax,%rcx                                #! PC = 0x4c824e *)
adcs carry rcx rcx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8251 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c8255 *)
mov r8 rdx;
(* mov    %r9,%rax                                 #! PC = 0x4c8258 *)
mov rax r9;
(* mov    %r9,%rbp                                 #! PC = 0x4c825b *)
mov rbp r9;
(* shl    $0x20,%r9                                #! PC = 0x4c825e *)
split ddc r9 r9 (64-0x20);
shl r9 r9 0x20@uint64;
(* mulq   0x71897(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8262 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8269 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r9,%rbx                                 #! PC = 0x4c826d *)
adds carry rbx rbx r9;
(* adc    %rbp,%rcx                                #! PC = 0x4c8270 *)
adcs carry rcx rcx rbp carry;
(* adc    %rax,%r8                                 #! PC = 0x4c8273 *)
adcs carry r8 r8 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8276 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c827a *)
mov r9 rdx;
(* mov    $0x0,%rbp                                #! PC = 0x4c827d *)
mov rbp 0x0@uint64;
(* adc    %rbx,%r10                                #! PC = 0x4c8284 *)
adcs carry r10 r10 rbx carry;
(* adc    %rcx,%r11                                #! PC = 0x4c8287 *)
adcs carry r11 r11 rcx carry;
(* adc    %r8,%r12                                 #! PC = 0x4c828a *)
adcs carry r12 r12 r8 carry;
(* adc    %r9,%r13                                 #! PC = 0x4c828d *)
adcs carry r13 r13 r9 carry;
(* adc    $0x0,%rbp                                #! PC = 0x4c8290 *)
adcs carry rbp rbp 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r10,%rbx                                #! PC = 0x4c8294 *)
mov rbx r10;
(* mov    %r11,%rcx                                #! PC = 0x4c8297 *)
mov rcx r11;
(* mov    %r12,%r8                                 #! PC = 0x4c829a *)
mov r8 r12;
(* mov    %r13,%r9                                 #! PC = 0x4c829d *)
mov r9 r13;

ghost r10e@uint64, r11e@uint64, r12e@uint64, r13e@uint64, rbpe@uint64 :
      and [r10e=r10, r11e=r11, r12e=r12, r13e=r13, rbpe=rbp]
   && and [r10e=r10, r11e=r11, r12e=r12, r13e=r13, rbpe=rbp];

(* sub    $0xffffffffffffffff,%r10                 #! PC = 0x4c82a0 *)
subb carry r10 r10 0xffffffffffffffff@uint64;
(* sbb    0x7184d(%rip),%r11        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c82a4 *)
sbbs carry r11 r11 L0x539af8 carry;
(* sbb    $0x0,%r12                                #! PC = 0x4c82ab *)
sbbs carry r12 r12 0x0@uint64 carry;
(* sbb    0x7184a(%rip),%r13        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c82af *)
sbbs carry r13 r13 L0x539b00 carry;
(* sbb    $0x0,%rbp                                #! PC = 0x4c82b6 *)
sbbs carry rbp rbp 0x0@uint64 carry;
(* cmovb  %rbx,%r10                                #! PC = 0x4c82ba *)
cmov r10 carry rbx r10;
(* cmovb  %rcx,%r11                                #! PC = 0x4c82be *)
cmov r11 carry rcx r11;
(* cmovb  %r8,%r12                                 #! PC = 0x4c82c2 *)
cmov r12 carry r8 r12;
(* cmovb  %r9,%r13                                 #! PC = 0x4c82c6 *)
cmov r13 carry r9 r13;

assert true &&
       eqmod (limbs 64 [r10, r11, r12, r13, 0@64])
             (limbs 64 [r10e, r11e, r12e, r13e, rbpe])
             (limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64, 0@64]);
assume eqmod (limbs 64 [r10, r11, r12, r13, 0])
             (limbs 64 [r10e, r11e, r12e, r13e, rbpe])
             (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3, 0]) && true;

(* mov    0x8(%rsp),%rbp                           #! EA = L0xc0000b13b8; Value = 0x000000c0000b14c8; PC = 0x4c82ca *)
mov rbp L0xc0000b13b8;
(* add    $0x10,%rsp                               #! PC = 0x4c82cf *)
#adds carry rsp rsp 0x10@uint64;
(* #! <- SP = 0xc0000b13c0 *)
#! 0xc0000b13c0 = 0xc0000b13c0;
(* #ret                                            #! PC = 0x4c82d3 *)
#ret                                            #! 0x4c82d3 = 0x4c82d3;

(* 2 *)
cut eqmod (limbs 64 [r10, r11, r12, r13])
          (2**256 * limbs 64 [y_0,y_1,y_2,y_3] * limbs 64 [z_0,z_1,z_2,z_3])
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [ precondition, all ghosts ]
 && limbs 64 [r10, r11, r12, r13] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [ precondition ];

(* xor    %rax,%rax                                #! PC = 0x4c94f1 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* add    %r10,%r10                                #! PC = 0x4c94f4 *)
adds carry r10 r10 r10;
(* adc    %r11,%r11                                #! PC = 0x4c94f7 *)
adcs carry r11 r11 r11 carry;
(* adc    %r12,%r12                                #! PC = 0x4c94fa *)
adcs carry r12 r12 r12 carry;
(* adc    %r13,%r13                                #! PC = 0x4c94fd *)
adcs carry r13 r13 r13 carry;
(* adc    $0x0,%rax                                #! PC = 0x4c9500 *)
adcs carry rax rax 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r10,%r14                                #! PC = 0x4c9504 *)
mov r14 r10;
(* mov    %r11,%r15                                #! PC = 0x4c9507 *)
mov r15 r11;
(* mov    %r12,%rdi                                #! PC = 0x4c950a *)
mov rdi r12;
(* mov    %r13,%rsi                                #! PC = 0x4c950d *)
mov rsi r13;

ghost r14i@uint64, r15i@uint64, rdii@uint64, rsii@uint64, raxi@uint64 :
      and [r14i=r14, r15i=r15, rdii=rdi, rsii=rsi, raxi=rax]
   && and [r14i=r14, r15i=r15, rdii=rdi, rsii=rsi, raxi=rax];

(* sub    $0xffffffffffffffff,%r14                 #! PC = 0x4c9510 *)
subb carry r14 r14 0xffffffffffffffff@uint64;
(* sbb    0x705dd(%rip),%r15        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c9514 *)
sbbs carry r15 r15 L0x539af8 carry;
(* sbb    $0x0,%rdi                                #! PC = 0x4c951b *)
sbbs carry rdi rdi 0x0@uint64 carry;
(* sbb    0x705da(%rip),%rsi        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c951f *)
sbbs carry rsi rsi L0x539b00 carry;
(* sbb    $0x0,%rax                                #! PC = 0x4c9526 *)
sbbs carry rax rax 0x0@uint64 carry;
(* cmovb  %r10,%r14                                #! PC = 0x4c952a *)
cmov r14 carry r10 r14;
(* cmovb  %r11,%r15                                #! PC = 0x4c952e *)
cmov r15 carry r11 r15;
(* cmovb  %r12,%rdi                                #! PC = 0x4c9532 *)
cmov rdi carry r12 rdi;
(* cmovb  %r13,%rsi                                #! PC = 0x4c9536 *)
cmov rsi carry r13 rsi;

assert true &&
       eqmod (limbs 64 [r14, r15, rdi, rsi, 0@64])
             (limbs 64 [r14i, r15i, rdii, rsii, raxi])
             (limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64, 0@64]);
assume eqmod (limbs 64 [r14, r15, rdi, rsi, 0])
             (limbs 64 [r14i, r15i, rdii, rsii, raxi])
             (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3, 0]) && true;

(* mov    0xe0(%rsp),%rax                          #! EA = L0xc0000b14a8; Value = 0x000000c0000b1670; PC = 0x4c953a *)
#mov rax L0xc0000b14a8;
(* mov    %r14,0x40(%rax)                          #! EA = L0xc0000b16b0; PC = 0x4c9542 *)
mov L0xc0000b16b0 r14;
(* mov    %r15,0x48(%rax)                          #! EA = L0xc0000b16b8; PC = 0x4c9546 *)
mov L0xc0000b16b8 r15;
(* mov    %rdi,0x50(%rax)                          #! EA = L0xc0000b16c0; PC = 0x4c954a *)
mov L0xc0000b16c0 rdi;
(* mov    %rsi,0x58(%rax)                          #! EA = L0xc0000b16c8; PC = 0x4c954e *)
mov L0xc0000b16c8 rsi;

(* 3 *)
cut eqmod (limbs 64 [L0xc0000b16b0, L0xc0000b16b8, L0xc0000b16c0, L0xc0000b16c8])
          (2 * 2**256 * limbs 64 [y_0,y_1,y_2,y_3] * limbs 64 [z_0,z_1,z_2,z_3])
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [ precondition, all ghosts ]
 && limbs 64 [L0xc0000b16b0, L0xc0000b16b8, L0xc0000b16c0, L0xc0000b16c8] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [ precondition ];

(* mov    (%rsp),%r10                              #! EA = L0xc0000b13c8; Value = 0x73e27cfed6efd4e3; PC = 0x4c9552 *)
mov r10 L0xc0000b13c8;
(* mov    0x8(%rsp),%r11                           #! EA = L0xc0000b13d0; Value = 0x51688130d76bf7b9; PC = 0x4c9556 *)
mov r11 L0xc0000b13d0;
(* mov    0x10(%rsp),%r12                          #! EA = L0xc0000b13d8; Value = 0x28efc415cd8aba40; PC = 0x4c955b *)
mov r12 L0xc0000b13d8;
(* mov    0x18(%rsp),%r13                          #! EA = L0xc0000b13e0; Value = 0x8a0fc1d0000b538a; PC = 0x4c9560 *)
mov r13 L0xc0000b13e0;
(* mov    0xa0(%rsp),%r14                          #! EA = L0xc0000b1468; Value = 0x0000000000000001; PC = 0x4c9565 *)
mov r14 L0xc0000b1468;
(* mov    0xa8(%rsp),%r15                          #! EA = L0xc0000b1470; Value = 0xffffffff00000000; PC = 0x4c956d *)
mov r15 L0xc0000b1470;
(* mov    0xb0(%rsp),%rdi                          #! EA = L0xc0000b1478; Value = 0xffffffffffffffff; PC = 0x4c9575 *)
mov rdi L0xc0000b1478;
(* mov    0xb8(%rsp),%rsi                          #! EA = L0xc0000b1480; Value = 0x00000000fffffffe; PC = 0x4c957d *)
mov rsi L0xc0000b1480;
(* #call   0x4c8040 <p256SubInternal>              #! PC = 0x4c9585 *)
#call   0x4c8040 <p256SubInternal>              #! 0x4c9585 = 0x4c9585;
(* #! -> SP = 0xc0000b13c0 *)
#! 0xc0000b13c0 = 0xc0000b13c0;
(* xor    %rax,%rax                                #! PC = 0x4c8040 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* sub    %r14,%r10                                #! PC = 0x4c8043 *)
subb carry r10 r10 r14;
(* sbb    %r15,%r11                                #! PC = 0x4c8046 *)
sbbs carry r11 r11 r15 carry;
(* sbb    %rdi,%r12                                #! PC = 0x4c8049 *)
sbbs carry r12 r12 rdi carry;
(* sbb    %rsi,%r13                                #! PC = 0x4c804c *)
sbbs carry0 r13 r13 rsi carry;
(* sbb    $0x0,%rax                                #! PC = 0x4c804f *)
sbbs carry rax rax 0x0@uint64 carry0;
(* mov    %r10,%rbx                                #! PC = 0x4c8053 *)
mov rbx r10;
(* mov    %r11,%rcx                                #! PC = 0x4c8056 *)
mov rcx r11;
(* mov    %r12,%r8                                 #! PC = 0x4c8059 *)
mov r8 r12;
(* mov    %r13,%r9                                 #! PC = 0x4c805c *)
mov r9 r13;
(* add    $0xffffffffffffffff,%r10                 #! PC = 0x4c805f *)
adds carry r10 r10 0xffffffffffffffff@uint64;
(* adc    0x71a8e(%rip),%r11        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c8063 *)
adcs carry r11 r11 L0x539af8 carry;
(* adc    $0x0,%r12                                #! PC = 0x4c806a *)
adcs carry r12 r12 0x0@uint64 carry;
(* adc    0x71a8b(%rip),%r13        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c806e *)
adcs dc0 r13 r13 L0x539b00 carry;
(* and    $0x1,%rax                                #! PC = 0x4c8075 *)
and rax@uint64 rax 0x1@uint64;
subc zero dc 0@uint64 rax;



assert true && (zero + 1@1)*(carry0)+(zero)*(carry0+1@1) = 1@1;
assume zero=carry0+1  && true;


assert true && (dc0 - 1@1)*(carry0 - 0@1) = 0@1;
assume (dc0- 1)*(carry0 - 0)= 0 && true;

(* cmove  %rbx,%r10                                #! PC = 0x4c8079 *)
cmov r10 zero rbx r10;
(* cmove  %rcx,%r11                                #! PC = 0x4c807d *)
cmov r11 zero rcx r11;
(* cmove  %r8,%r12                                 #! PC = 0x4c8081 *)
cmov r12 zero r8 r12;
(* cmove  %r9,%r13                                 #! PC = 0x4c8085 *)
cmov r13 zero r9 r13;
(* #! <- SP = 0xc0000b13c0 *)
#! 0xc0000b13c0 = 0xc0000b13c0;
(* #ret                                            #! PC = 0x4c8089 *)
#ret                                            #! 0x4c8089 = 0x4c8089;

(* 4 *)
cut eqmod (limbs 64 [r10, r11, r12, r13])
          (2**256 * (limbs 64 [x_0,x_1,x_2,x_3] - limbs 64 [z_0,z_1,z_2,z_3]**2))
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [ precondition, all ghosts, cuts [0] ]
 && limbs 64 [r10, r11, r12, r13] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [ precondition, cuts [0] ];

(* mov    0x80(%rsp),%r14                          #! EA = L0xc0000b1448; Value = 0x73e27cfed6efd4e4; PC = 0x4c958a *)
mov r14 L0xc0000b1448;
(* mov    0x88(%rsp),%r15                          #! EA = L0xc0000b1450; Value = 0x5168812fd76bf7b9; PC = 0x4c9592 *)
mov r15 L0xc0000b1450;
(* mov    0x90(%rsp),%rdi                          #! EA = L0xc0000b1458; Value = 0x28efc415cd8aba40; PC = 0x4c959a *)
mov rdi L0xc0000b1458;
(* mov    0x98(%rsp),%rsi                          #! EA = L0xc0000b1460; Value = 0x8a0fc1d1000b5389; PC = 0x4c95a2 *)
mov rsi L0xc0000b1460;
(* #call   0x4c80a0 <p256MulInternal>              #! PC = 0x4c95aa *)
#call   0x4c80a0 <p256MulInternal>              #! 0x4c95aa = 0x4c95aa;
(* #! -> SP = 0xc0000b13c0 *)
#! 0xc0000b13c0 = 0xc0000b13c0;
(* sub    $0x10,%rsp                               #! PC = 0x4c80a0 *)
#subb carry rsp rsp 0x10@uint64;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0xc0000b13b8; PC = 0x4c80a4 *)
mov L0xc0000b13b8 rbp;
(* lea    0x8(%rsp),%rbp                           #! PC = 0x4c80a9 *)
#lea    %%EA,%%rbp                           #! 0x4c80a9 = 0x4c80a9;
(* mov    %r10,%rax                                #! PC = 0x4c80ae *)
mov rax r10;
(* mul    %r14                                     #! PC = 0x4c80b1 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* mov    %rax,%rbx                                #! PC = 0x4c80b4 *)
mov rbx rax;
(* mov    %rdx,%rcx                                #! PC = 0x4c80b7 *)
mov rcx rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80ba *)
mov rax r10;
(* mul    %r15                                     #! PC = 0x4c80bd *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%rcx                                #! PC = 0x4c80c0 *)
adds carry rcx rcx rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80c3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c80c7 *)
mov r8 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80ca *)
mov rax r10;
(* mul    %rdi                                     #! PC = 0x4c80cd *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c80d0 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80d3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c80d7 *)
mov r9 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80da *)
mov rax r10;
(* mul    %rsi                                     #! PC = 0x4c80dd *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c80e0 *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80e3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r10                                #! PC = 0x4c80e7 *)
mov r10 rdx;
(* mov    %r11,%rax                                #! PC = 0x4c80ea *)
mov rax r11;
(* mul    %r14                                     #! PC = 0x4c80ed *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%rcx                                #! PC = 0x4c80f0 *)
adds carry rcx rcx rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80f3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c80f7 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c80fa *)
mov rax r11;
(* mul    %r15                                     #! PC = 0x4c80fd *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r8                                 #! PC = 0x4c8100 *)
adds carry r8 r8 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8103 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r8                                 #! PC = 0x4c8107 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c810a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c810e *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8111 *)
mov rax r11;
(* mul    %rdi                                     #! PC = 0x4c8114 *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r9                                 #! PC = 0x4c8117 *)
adds carry r9 r9 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c811a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r9                                 #! PC = 0x4c811e *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8121 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8125 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8128 *)
mov rax r11;
(* mul    %rsi                                     #! PC = 0x4c812b *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c812e *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8131 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c8135 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8138 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r11                                #! PC = 0x4c813c *)
mov r11 rdx;
(* mov    %r12,%rax                                #! PC = 0x4c813f *)
mov rax r12;
(* mul    %r14                                     #! PC = 0x4c8142 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c8145 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8148 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c814c *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c814f *)
mov rax r12;
(* mul    %r15                                     #! PC = 0x4c8152 *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r9                                 #! PC = 0x4c8155 *)
adds carry r9 r9 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8158 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r9                                 #! PC = 0x4c815c *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c815f *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8163 *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c8166 *)
mov rax r12;
(* mul    %rdi                                     #! PC = 0x4c8169 *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c816c *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c816f *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c8173 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8176 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c817a *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c817d *)
mov rax r12;
(* mul    %rsi                                     #! PC = 0x4c8180 *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r11                                #! PC = 0x4c8183 *)
adds carry r11 r11 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8186 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r11                                #! PC = 0x4c818a *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c818d *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r12                                #! PC = 0x4c8191 *)
mov r12 rdx;
(* mov    %r13,%rax                                #! PC = 0x4c8194 *)
mov rax r13;
(* mul    %r14                                     #! PC = 0x4c8197 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c819a *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c819d *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81a1 *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81a4 *)
mov rax r13;
(* mul    %r15                                     #! PC = 0x4c81a7 *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c81aa *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81ad *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c81b1 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81b4 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81b8 *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81bb *)
mov rax r13;
(* mul    %rdi                                     #! PC = 0x4c81be *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r11                                #! PC = 0x4c81c1 *)
adds carry r11 r11 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81c4 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r11                                #! PC = 0x4c81c8 *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81cb *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81cf *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81d2 *)
mov rax r13;
(* mul    %rsi                                     #! PC = 0x4c81d5 *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r12                                #! PC = 0x4c81d8 *)
adds carry r12 r12 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81db *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r12                                #! PC = 0x4c81df *)
adds carry r12 r12 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81e2 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r13                                #! PC = 0x4c81e6 *)
mov r13 rdx;
(* mov    %rbx,%rax                                #! PC = 0x4c81e9 *)
mov rax rbx;
(* mov    %rbx,%rbp                                #! PC = 0x4c81ec *)
mov rbp rbx;
(* shl    $0x20,%rbx                               #! PC = 0x4c81ef *)
split ddc rbx rbx (64-0x20);
shl rbx rbx 0x20@uint64;
(* mulq   0x71906(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c81f3 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c81fa *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rbx,%rcx                                #! PC = 0x4c81fe *)
adds carry rcx rcx rbx;
(* adc    %rbp,%r8                                 #! PC = 0x4c8201 *)
adcs carry r8 r8 rbp carry;
(* adc    %rax,%r9                                 #! PC = 0x4c8204 *)
adcs carry r9 r9 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8207 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbx                                #! PC = 0x4c820b *)
mov rbx rdx;
(* mov    %rcx,%rax                                #! PC = 0x4c820e *)
mov rax rcx;
(* mov    %rcx,%rbp                                #! PC = 0x4c8211 *)
mov rbp rcx;
(* shl    $0x20,%rcx                               #! PC = 0x4c8214 *)
split ddc rcx rcx (64-0x20);
shl rcx rcx 0x20@uint64;
(* mulq   0x718e1(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8218 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c821f *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rcx,%r8                                 #! PC = 0x4c8223 *)
adds carry r8 r8 rcx;
(* adc    %rbp,%r9                                 #! PC = 0x4c8226 *)
adcs carry r9 r9 rbp carry;
(* adc    %rax,%rbx                                #! PC = 0x4c8229 *)
adcs carry rbx rbx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c822c *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rcx                                #! PC = 0x4c8230 *)
mov rcx rdx;
(* mov    %r8,%rax                                 #! PC = 0x4c8233 *)
mov rax r8;
(* mov    %r8,%rbp                                 #! PC = 0x4c8236 *)
mov rbp r8;
(* shl    $0x20,%r8                                #! PC = 0x4c8239 *)
split ddc r8 r8 (64-0x20);
shl r8 r8 0x20@uint64;
(* mulq   0x718bc(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c823d *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8244 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r8,%r9                                  #! PC = 0x4c8248 *)
adds carry r9 r9 r8;
(* adc    %rbp,%rbx                                #! PC = 0x4c824b *)
adcs carry rbx rbx rbp carry;
(* adc    %rax,%rcx                                #! PC = 0x4c824e *)
adcs carry rcx rcx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8251 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c8255 *)
mov r8 rdx;
(* mov    %r9,%rax                                 #! PC = 0x4c8258 *)
mov rax r9;
(* mov    %r9,%rbp                                 #! PC = 0x4c825b *)
mov rbp r9;
(* shl    $0x20,%r9                                #! PC = 0x4c825e *)
split ddc r9 r9 (64-0x20);
shl r9 r9 0x20@uint64;
(* mulq   0x71897(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8262 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8269 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r9,%rbx                                 #! PC = 0x4c826d *)
adds carry rbx rbx r9;
(* adc    %rbp,%rcx                                #! PC = 0x4c8270 *)
adcs carry rcx rcx rbp carry;
(* adc    %rax,%r8                                 #! PC = 0x4c8273 *)
adcs carry r8 r8 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8276 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c827a *)
mov r9 rdx;
(* mov    $0x0,%rbp                                #! PC = 0x4c827d *)
mov rbp 0x0@uint64;
(* adc    %rbx,%r10                                #! PC = 0x4c8284 *)
adcs carry r10 r10 rbx carry;
(* adc    %rcx,%r11                                #! PC = 0x4c8287 *)
adcs carry r11 r11 rcx carry;
(* adc    %r8,%r12                                 #! PC = 0x4c828a *)
adcs carry r12 r12 r8 carry;
(* adc    %r9,%r13                                 #! PC = 0x4c828d *)
adcs carry r13 r13 r9 carry;
(* adc    $0x0,%rbp                                #! PC = 0x4c8290 *)
adcs carry rbp rbp 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r10,%rbx                                #! PC = 0x4c8294 *)
mov rbx r10;
(* mov    %r11,%rcx                                #! PC = 0x4c8297 *)
mov rcx r11;
(* mov    %r12,%r8                                 #! PC = 0x4c829a *)
mov r8 r12;
(* mov    %r13,%r9                                 #! PC = 0x4c829d *)
mov r9 r13;

ghost r10f@uint64, r11f@uint64, r12f@uint64, r13f@uint64, rbpf@uint64 :
      and [r10f=r10, r11f=r11, r12f=r12, r13f=r13, rbpf=rbp]
   && and [r10f=r10, r11f=r11, r12f=r12, r13f=r13, rbpf=rbp];
  
(* sub    $0xffffffffffffffff,%r10                 #! PC = 0x4c82a0 *)
subb carry r10 r10 0xffffffffffffffff@uint64;
(* sbb    0x7184d(%rip),%r11        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c82a4 *)
sbbs carry r11 r11 L0x539af8 carry;
(* sbb    $0x0,%r12                                #! PC = 0x4c82ab *)
sbbs carry r12 r12 0x0@uint64 carry;
(* sbb    0x7184a(%rip),%r13        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c82af *)
sbbs carry r13 r13 L0x539b00 carry;
(* sbb    $0x0,%rbp                                #! PC = 0x4c82b6 *)
sbbs carry rbp rbp 0x0@uint64 carry;
(* cmovb  %rbx,%r10                                #! PC = 0x4c82ba *)
cmov r10 carry rbx r10;
(* cmovb  %rcx,%r11                                #! PC = 0x4c82be *)
cmov r11 carry rcx r11;
(* cmovb  %r8,%r12                                 #! PC = 0x4c82c2 *)
cmov r12 carry r8 r12;
(* cmovb  %r9,%r13                                 #! PC = 0x4c82c6 *)
cmov r13 carry r9 r13;

assert true &&
       eqmod (limbs 64 [r10, r11, r12, r13, 0@64])
             (limbs 64 [r10f, r11f, r12f, r13f, rbpf])
             (limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64, 0@64]);
assume eqmod (limbs 64 [r10, r11, r12, r13, 0])
             (limbs 64 [r10f, r11f, r12f, r13f, rbpf])
             (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3, 0]) && true;

(* mov    0x8(%rsp),%rbp                           #! EA = L0xc0000b13b8; Value = 0x000000c0000b14c8; PC = 0x4c82ca *)
mov rbp L0xc0000b13b8;
(* add    $0x10,%rsp                               #! PC = 0x4c82cf *)
#adds carry rsp rsp 0x10@uint64;
(* #! <- SP = 0xc0000b13c0 *)
#! 0xc0000b13c0 = 0xc0000b13c0;
(* #ret                                            #! PC = 0x4c82d3 *)
#ret                                            #! 0x4c82d3 = 0x4c82d3;

(* 5 *)
cut eqmod (limbs 64 [r10, r11, r12, r13])
          (2**256 * (limbs 64 [x_0,x_1,x_2,x_3] - limbs 64 [z_0,z_1,z_2,z_3]**2) *
                   (limbs 64 [x_0,x_1,x_2,x_3] + limbs 64 [z_0,z_1,z_2,z_3]**2))
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [ precondition, all ghosts, cuts [1] ]
 && limbs 64 [r10, r11, r12, r13] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [ precondition, cuts [1] ];

(* mov    %r10,0x80(%rsp)                          #! EA = L0xc0000b1448; PC = 0x4c95af *)
mov L0xc0000b1448 r10;
(* mov    %r11,0x88(%rsp)                          #! EA = L0xc0000b1450; PC = 0x4c95b7 *)
mov L0xc0000b1450 r11;
(* mov    %r12,0x90(%rsp)                          #! EA = L0xc0000b1458; PC = 0x4c95bf *)
mov L0xc0000b1458 r12;
(* mov    %r13,0x98(%rsp)                          #! EA = L0xc0000b1460; PC = 0x4c95c7 *)
mov L0xc0000b1460 r13;
(* xor    %rax,%rax                                #! PC = 0x4c95cf *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* add    %r10,%r10                                #! PC = 0x4c95d2 *)
adds carry r10 r10 r10;
(* adc    %r11,%r11                                #! PC = 0x4c95d5 *)
adcs carry r11 r11 r11 carry;
(* adc    %r12,%r12                                #! PC = 0x4c95d8 *)
adcs carry r12 r12 r12 carry;
(* adc    %r13,%r13                                #! PC = 0x4c95db *)
adcs carry r13 r13 r13 carry;
(* adc    $0x0,%rax                                #! PC = 0x4c95de *)
adcs carry rax rax 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r10,%r14                                #! PC = 0x4c95e2 *)
mov r14 r10;
(* mov    %r11,%r15                                #! PC = 0x4c95e5 *)
mov r15 r11;
(* mov    %r12,%rdi                                #! PC = 0x4c95e8 *)
mov rdi r12;
(* mov    %r13,%rsi                                #! PC = 0x4c95eb *)
mov rsi r13;

ghost r14k@uint64, r15k@uint64, rdik@uint64, rsik@uint64, raxk@uint64 :
      and [r14k=r14, r15k=r15, rdik=rdi, rsik=rsi, raxk=rax]
   && and [r14k=r14, r15k=r15, rdik=rdi, rsik=rsi, raxk=rax];

(* sub    $0xffffffffffffffff,%r14                 #! PC = 0x4c95ee *)
subb carry r14 r14 0xffffffffffffffff@uint64;
(* sbb    0x704ff(%rip),%r15        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c95f2 *)
sbbs carry r15 r15 L0x539af8 carry;
(* sbb    $0x0,%rdi                                #! PC = 0x4c95f9 *)
sbbs carry rdi rdi 0x0@uint64 carry;
(* sbb    0x704fc(%rip),%rsi        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c95fd *)
sbbs carry rsi rsi L0x539b00 carry;
(* sbb    $0x0,%rax                                #! PC = 0x4c9604 *)
sbbs carry rax rax 0x0@uint64 carry;
(* cmovb  %r10,%r14                                #! PC = 0x4c9608 *)
cmov r14 carry r10 r14;
(* cmovb  %r11,%r15                                #! PC = 0x4c960c *)
cmov r15 carry r11 r15;
(* cmovb  %r12,%rdi                                #! PC = 0x4c9610 *)
cmov rdi carry r12 rdi;
(* cmovb  %r13,%rsi                                #! PC = 0x4c9614 *)
cmov rsi carry r13 rsi;

assert true &&
       eqmod (limbs 64 [r14, r15, rdi, rsi, 0@64])
             (limbs 64 [r14k, r15k, rdik, rsik, raxk])
             (limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64, 0@64]);
assume eqmod (limbs 64 [r14, r15, rdi, rsi, 0])
             (limbs 64 [r14k, r15k, rdik, rsik, raxk])
             (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3, 0]) && true;

(* mov    0x80(%rsp),%r10                          #! EA = L0xc0000b1448; Value = 0xa9ee75b85051b288; PC = 0x4c9618 *)
mov r10 L0xc0000b1448;
(* mov    0x88(%rsp),%r11                          #! EA = L0xc0000b1450; Value = 0xb17ea854879ad0b0; PC = 0x4c9620 *)
mov r11 L0xc0000b1450;
(* mov    0x90(%rsp),%r12                          #! EA = L0xc0000b1458; Value = 0x1b257c6ab5b7ff4f; PC = 0x4c9628 *)
mov r12 L0xc0000b1458;
(* mov    0x98(%rsp),%r13                          #! EA = L0xc0000b1460; Value = 0xe9483db7c076ec99; PC = 0x4c9630 *)
mov r13 L0xc0000b1460;
(* xor    %rax,%rax                                #! PC = 0x4c9638 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* add    %r14,%r10                                #! PC = 0x4c963b *)
adds carry r10 r10 r14;
(* adc    %r15,%r11                                #! PC = 0x4c963e *)
adcs carry r11 r11 r15 carry;
(* adc    %rdi,%r12                                #! PC = 0x4c9641 *)
adcs carry r12 r12 rdi carry;
(* adc    %rsi,%r13                                #! PC = 0x4c9644 *)
adcs carry r13 r13 rsi carry;
(* adc    $0x0,%rax                                #! PC = 0x4c9647 *)
adcs carry rax rax 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r10,%r14                                #! PC = 0x4c964b *)
mov r14 r10;
(* mov    %r11,%r15                                #! PC = 0x4c964e *)
mov r15 r11;
(* mov    %r12,%rdi                                #! PC = 0x4c9651 *)
mov rdi r12;
(* mov    %r13,%rsi                                #! PC = 0x4c9654 *)
mov rsi r13;

ghost r14l@uint64, r15l@uint64, rdil@uint64, rsil@uint64, raxl@uint64 :
      and [r14l=r14, r15l=r15, rdil=rdi, rsil=rsi, raxl=rax]
   && and [r14l=r14, r15l=r15, rdil=rdi, rsil=rsi, raxl=rax];

(* sub    $0xffffffffffffffff,%r14                 #! PC = 0x4c9657 *)
subb carry r14 r14 0xffffffffffffffff@uint64;
(* sbb    0x70496(%rip),%r15        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c965b *)
sbbs carry r15 r15 L0x539af8 carry;
(* sbb    $0x0,%rdi                                #! PC = 0x4c9662 *)
sbbs carry rdi rdi 0x0@uint64 carry;
(* sbb    0x70493(%rip),%rsi        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c9666 *)
sbbs carry rsi rsi L0x539b00 carry;
(* sbb    $0x0,%rax                                #! PC = 0x4c966d *)
sbbs carry rax rax 0x0@uint64 carry;
(* cmovb  %r10,%r14                                #! PC = 0x4c9671 *)
cmov r14 carry r10 r14;
(* cmovb  %r11,%r15                                #! PC = 0x4c9675 *)
cmov r15 carry r11 r15;
(* cmovb  %r12,%rdi                                #! PC = 0x4c9679 *)
cmov rdi carry r12 rdi;
(* cmovb  %r13,%rsi                                #! PC = 0x4c967d *)
cmov rsi carry r13 rsi;

assert true &&
       eqmod (limbs 64 [r14, r15, rdi, rsi, 0@64])
             (limbs 64 [r14l, r15l, rdil, rsil, raxl])
             (limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64, 0@64]);
assume eqmod (limbs 64 [r14, r15, rdi, rsi, 0])
             (limbs 64 [r14l, r15l, rdil, rsil, raxl])
             (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3, 0]) && true;

(* mov    %r14,0x80(%rsp)                          #! EA = L0xc0000b1448; PC = 0x4c9681 *)
mov L0xc0000b1448 r14;
(* mov    %r15,0x88(%rsp)                          #! EA = L0xc0000b1450; PC = 0x4c9689 *)
mov L0xc0000b1450 r15;
(* mov    %rdi,0x90(%rsp)                          #! EA = L0xc0000b1458; PC = 0x4c9691 *)
mov L0xc0000b1458 rdi;
(* mov    %rsi,0x98(%rsp)                          #! EA = L0xc0000b1460; PC = 0x4c9699 *)
mov L0xc0000b1460 rsi;

(* 6 *)
cut eqmod (limbs 64 [L0xc0000b1448, L0xc0000b1450, L0xc0000b1458, L0xc0000b1460])
          (2**256 *3*(limbs 64 [x_0,x_1,x_2,x_3] - limbs 64 [z_0,z_1,z_2,z_3]**2) *
                    (limbs 64 [x_0,x_1,x_2,x_3] + limbs 64 [z_0,z_1,z_2,z_3]**2))
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [ precondition, all ghosts ]
 && limbs 64 [L0xc0000b1448, L0xc0000b1450, L0xc0000b1458, L0xc0000b1460] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [ precondition ];

(* mov    0x20(%rsp),%r10                          #! EA = L0xc0000b13e8; Value = 0x13ad699e5a568a88; PC = 0x4c96a1 *)
mov r10 L0xc0000b13e8;
(* mov    0x28(%rsp),%r11                          #! EA = L0xc0000b13f0; Value = 0x0cb4f2a3f60d7e38; PC = 0x4c96a6 *)
mov r11 L0xc0000b13f0;
(* mov    0x30(%rsp),%r12                          #! EA = L0xc0000b13f8; Value = 0xf846d91e15be3d53; PC = 0x4c96ab *)
mov r12 L0xc0000b13f8;
(* mov    0x38(%rsp),%r13                          #! EA = L0xc0000b1400; Value = 0x0ca72cbd91a05089; PC = 0x4c96b0 *)
mov r13 L0xc0000b1400;
(* xor    %rax,%rax                                #! PC = 0x4c96b5 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* add    %r10,%r10                                #! PC = 0x4c96b8 *)
adds carry r10 r10 r10;
(* adc    %r11,%r11                                #! PC = 0x4c96bb *)
adcs carry r11 r11 r11 carry;
(* adc    %r12,%r12                                #! PC = 0x4c96be *)
adcs carry r12 r12 r12 carry;
(* adc    %r13,%r13                                #! PC = 0x4c96c1 *)
adcs carry r13 r13 r13 carry;
(* adc    $0x0,%rax                                #! PC = 0x4c96c4 *)
adcs carry rax rax 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r10,%r14                                #! PC = 0x4c96c8 *)
mov r14 r10;
(* mov    %r11,%r15                                #! PC = 0x4c96cb *)
mov r15 r11;
(* mov    %r12,%rdi                                #! PC = 0x4c96ce *)
mov rdi r12;
(* mov    %r13,%rsi                                #! PC = 0x4c96d1 *)
mov rsi r13;

ghost r14m@uint64, r15m@uint64, rdim@uint64, rsim@uint64, raxm@uint64 :
      and [r14m=r14, r15m=r15, rdim=rdi, rsim=rsi, raxm=rax]
   && and [r14m=r14, r15m=r15, rdim=rdi, rsim=rsi, raxm=rax];

(* sub    $0xffffffffffffffff,%r14                 #! PC = 0x4c96d4 *)
subb carry r14 r14 0xffffffffffffffff@uint64;
(* sbb    0x70419(%rip),%r15        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c96d8 *)
sbbs carry r15 r15 L0x539af8 carry;
(* sbb    $0x0,%rdi                                #! PC = 0x4c96df *)
sbbs carry rdi rdi 0x0@uint64 carry;
(* sbb    0x70416(%rip),%rsi        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c96e3 *)
sbbs carry rsi rsi L0x539b00 carry;
(* sbb    $0x0,%rax                                #! PC = 0x4c96ea *)
sbbs carry rax rax 0x0@uint64 carry;
(* cmovb  %r10,%r14                                #! PC = 0x4c96ee *)
cmov r14 carry r10 r14;
(* cmovb  %r11,%r15                                #! PC = 0x4c96f2 *)
cmov r15 carry r11 r15;
(* cmovb  %r12,%rdi                                #! PC = 0x4c96f6 *)
cmov rdi carry r12 rdi;
(* cmovb  %r13,%rsi                                #! PC = 0x4c96fa *)
cmov rsi carry r13 rsi;

assert true &&
       eqmod (limbs 64 [r14, r15, rdi, rsi, 0@64])
             (limbs 64 [r14m, r15m, rdim, rsim, raxm])
             (limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64, 0@64]);
assume eqmod (limbs 64 [r14, r15, rdi, rsi, 0])
             (limbs 64 [r14m, r15m, rdim, rsim, raxm])
             (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3, 0]) && true;

(* mov    %r14,%r10                                #! PC = 0x4c96fe *)
mov r10 r14;
(* mov    %r15,%r11                                #! PC = 0x4c9701 *)
mov r11 r15;
(* mov    %rdi,%r12                                #! PC = 0x4c9704 *)
mov r12 rdi;
(* mov    %rsi,%r13                                #! PC = 0x4c9707 *)
mov r13 rsi;
(* #call   0x4c82e0 <p256SqrInternal>              #! PC = 0x4c970a *)
#call   0x4c82e0 <p256SqrInternal>              #! 0x4c970a = 0x4c970a;
(* #! -> SP = 0xc0000b13c0 *)
#! 0xc0000b13c0 = 0xc0000b13c0;
(* sub    $0x10,%rsp                               #! PC = 0x4c82e0 *)
#subb carry rsp rsp 0x10@uint64;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0xc0000b13b8; PC = 0x4c82e4 *)
mov L0xc0000b13b8 rbp;
(* lea    0x8(%rsp),%rbp                           #! PC = 0x4c82e9 *)
#lea    %%EA,%%rbp                           #! 0x4c82e9 = 0x4c82e9;
(* mov    %r10,%rax                                #! PC = 0x4c82ee *)
mov rax r10;
(* mul    %r11                                     #! PC = 0x4c82f1 *)
mull rdx rax rax r11;
subc carry dc rdx 1@uint64; mov overflow carry;
(* mov    %rax,%rcx                                #! PC = 0x4c82f4 *)
mov rcx rax;
(* mov    %rdx,%r8                                 #! PC = 0x4c82f7 *)
mov r8 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c82fa *)
mov rax r10;
(* mul    %r12                                     #! PC = 0x4c82fd *)
mull rdx rax rax r12;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c8300 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8303 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c8307 *)
mov r9 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c830a *)
mov rax r10;
(* mul    %r13                                     #! PC = 0x4c830d *)
mull rdx rax rax r13;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c8310 *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8313 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r14                                #! PC = 0x4c8317 *)
mov r14 rdx;
(* mov    %r11,%rax                                #! PC = 0x4c831a *)
mov rax r11;
(* mul    %r12                                     #! PC = 0x4c831d *)
mull rdx rax rax r12;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c8320 *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8323 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8327 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c832a *)
mov rax r11;
(* mul    %r13                                     #! PC = 0x4c832d *)
mull rdx rax rax r13;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r14                                #! PC = 0x4c8330 *)
adds carry r14 r14 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8333 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r14                                #! PC = 0x4c8337 *)
adds carry r14 r14 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c833a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r15                                #! PC = 0x4c833e *)
mov r15 rdx;
(* mov    %r12,%rax                                #! PC = 0x4c8341 *)
mov rax r12;
(* mul    %r13                                     #! PC = 0x4c8344 *)
mull rdx rax rax r13;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r15                                #! PC = 0x4c8347 *)
adds carry r15 r15 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c834a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rdi                                #! PC = 0x4c834e *)
mov rdi rdx;
(* xor    %rsi,%rsi                                #! PC = 0x4c8351 *)
mov rsi 0@uint64;
clear carry;
clear overflow;
(* add    %rcx,%rcx                                #! PC = 0x4c8354 *)
adds carry rcx rcx rcx;
(* adc    %r8,%r8                                  #! PC = 0x4c8357 *)
adcs carry r8 r8 r8 carry;
(* adc    %r9,%r9                                  #! PC = 0x4c835a *)
adcs carry r9 r9 r9 carry;
(* adc    %r14,%r14                                #! PC = 0x4c835d *)
adcs carry r14 r14 r14 carry;
(* adc    %r15,%r15                                #! PC = 0x4c8360 *)
adcs carry r15 r15 r15 carry;
(* adc    %rdi,%rdi                                #! PC = 0x4c8363 *)
adcs carry rdi rdi rdi carry;
(* adc    $0x0,%rsi                                #! PC = 0x4c8366 *)
adcs carry rsi rsi 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r10,%rax                                #! PC = 0x4c836a *)
mov rax r10;
(* mul    %rax                                     #! PC = 0x4c836d *)
mull rdx rax rax rax;
subc carry dc rdx 1@uint64; mov overflow carry;
(* mov    %rax,%rbx                                #! PC = 0x4c8370 *)
mov rbx rax;
(* mov    %rdx,%r10                                #! PC = 0x4c8373 *)
mov r10 rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8376 *)
mov rax r11;
(* mul    %rax                                     #! PC = 0x4c8379 *)
mull rdx rax rax rax;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %r10,%rcx                                #! PC = 0x4c837c *)
adds carry rcx rcx r10;
(* adc    %rax,%r8                                 #! PC = 0x4c837f *)
adcs carry r8 r8 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8382 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r10                                #! PC = 0x4c8386 *)
mov r10 rdx;
(* mov    %r12,%rax                                #! PC = 0x4c8389 *)
mov rax r12;
(* mul    %rax                                     #! PC = 0x4c838c *)
mull rdx rax rax rax;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %r10,%r9                                 #! PC = 0x4c838f *)
adds carry r9 r9 r10;
(* adc    %rax,%r14                                #! PC = 0x4c8392 *)
adcs carry r14 r14 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8395 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r10                                #! PC = 0x4c8399 *)
mov r10 rdx;
(* mov    %r13,%rax                                #! PC = 0x4c839c *)
mov rax r13;
(* mul    %rax                                     #! PC = 0x4c839f *)
mull rdx rax rax rax;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %r10,%r15                                #! PC = 0x4c83a2 *)
adds carry r15 r15 r10;
(* adc    %rax,%rdi                                #! PC = 0x4c83a5 *)
adcs carry rdi rdi rax carry;
(* adc    %rdx,%rsi                                #! PC = 0x4c83a8 *)
adcs carry rsi rsi rdx carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rbx,%rax                                #! PC = 0x4c83ab *)
mov rax rbx;
(* mov    %rbx,%rbp                                #! PC = 0x4c83ae *)
mov rbp rbx;
(* shl    $0x20,%rbx                               #! PC = 0x4c83b1 *)
split ddc rbx rbx (64-0x20);
shl rbx rbx 0x20@uint64;
(* mulq   0x71744(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c83b5 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c83bc *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rbx,%rcx                                #! PC = 0x4c83c0 *)
adds carry rcx rcx rbx;
(* adc    %rbp,%r8                                 #! PC = 0x4c83c3 *)
adcs carry r8 r8 rbp carry;
(* adc    %rax,%r9                                 #! PC = 0x4c83c6 *)
adcs carry r9 r9 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c83c9 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbx                                #! PC = 0x4c83cd *)
mov rbx rdx;
(* mov    %rcx,%rax                                #! PC = 0x4c83d0 *)
mov rax rcx;
(* mov    %rcx,%rbp                                #! PC = 0x4c83d3 *)
mov rbp rcx;
(* shl    $0x20,%rcx                               #! PC = 0x4c83d6 *)
split ddc rcx rcx (64-0x20);
shl rcx rcx 0x20@uint64;
(* mulq   0x7171f(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c83da *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c83e1 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rcx,%r8                                 #! PC = 0x4c83e5 *)
adds carry r8 r8 rcx;
(* adc    %rbp,%r9                                 #! PC = 0x4c83e8 *)
adcs carry r9 r9 rbp carry;
(* adc    %rax,%rbx                                #! PC = 0x4c83eb *)
adcs carry rbx rbx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c83ee *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rcx                                #! PC = 0x4c83f2 *)
mov rcx rdx;
(* mov    %r8,%rax                                 #! PC = 0x4c83f5 *)
mov rax r8;
(* mov    %r8,%rbp                                 #! PC = 0x4c83f8 *)
mov rbp r8;
(* shl    $0x20,%r8                                #! PC = 0x4c83fb *)
split ddc r8 r8 (64-0x20);
shl r8 r8 0x20@uint64;
(* mulq   0x716fa(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c83ff *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8406 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r8,%r9                                  #! PC = 0x4c840a *)
adds carry r9 r9 r8;
(* adc    %rbp,%rbx                                #! PC = 0x4c840d *)
adcs carry rbx rbx rbp carry;
(* adc    %rax,%rcx                                #! PC = 0x4c8410 *)
adcs carry rcx rcx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8413 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c8417 *)
mov r8 rdx;
(* mov    %r9,%rax                                 #! PC = 0x4c841a *)
mov rax r9;
(* mov    %r9,%rbp                                 #! PC = 0x4c841d *)
mov rbp r9;
(* shl    $0x20,%r9                                #! PC = 0x4c8420 *)
split ddc r9 r9 (64-0x20);
shl r9 r9 0x20@uint64;
(* mulq   0x716d5(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8424 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c842b *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r9,%rbx                                 #! PC = 0x4c842f *)
adds carry rbx rbx r9;
(* adc    %rbp,%rcx                                #! PC = 0x4c8432 *)
adcs carry rcx rcx rbp carry;
(* adc    %rax,%r8                                 #! PC = 0x4c8435 *)
adcs carry r8 r8 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8438 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c843c *)
mov r9 rdx;
(* mov    $0x0,%rbp                                #! PC = 0x4c843f *)
mov rbp 0x0@uint64;
(* adc    %rbx,%r14                                #! PC = 0x4c8446 *)
adcs carry r14 r14 rbx carry;
(* adc    %rcx,%r15                                #! PC = 0x4c8449 *)
adcs carry r15 r15 rcx carry;
(* adc    %r8,%rdi                                 #! PC = 0x4c844c *)
adcs carry rdi rdi r8 carry;
(* adc    %r9,%rsi                                 #! PC = 0x4c844f *)
adcs carry rsi rsi r9 carry;
(* adc    $0x0,%rbp                                #! PC = 0x4c8452 *)
adcs carry rbp rbp 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r14,%r10                                #! PC = 0x4c8456 *)
mov r10 r14;
(* mov    %r15,%r11                                #! PC = 0x4c8459 *)
mov r11 r15;
(* mov    %rdi,%r12                                #! PC = 0x4c845c *)
mov r12 rdi;
(* mov    %rsi,%r13                                #! PC = 0x4c845f *)
mov r13 rsi;

ghost r10b@uint64, r11b@uint64, r12b@uint64, r13b@uint64, rbpb@uint64 :
      and [r10b=r10, r11b=r11, r12b=r12, r13b=r13, rbpb=rbp]
   && and [r10b=r10, r11b=r11, r12b=r12, r13b=r13, rbpb=rbp];


(* sub    $0xffffffffffffffff,%r10                 #! PC = 0x4c8462 *)
subb carry r10 r10 0xffffffffffffffff@uint64;
(* sbb    0x7168b(%rip),%r11        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c8466 *)
sbbs carry r11 r11 L0x539af8 carry;
(* sbb    $0x0,%r12                                #! PC = 0x4c846d *)
sbbs carry r12 r12 0x0@uint64 carry;
(* sbb    0x71688(%rip),%r13        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c8471 *)
sbbs carry r13 r13 L0x539b00 carry;
(* sbb    $0x0,%rbp                                #! PC = 0x4c8478 *)
sbbs carry rbp rbp 0x0@uint64 carry;
(* cmovb  %r14,%r10                                #! PC = 0x4c847c *)
cmov r10 carry r14 r10;
(* cmovb  %r15,%r11                                #! PC = 0x4c8480 *)
cmov r11 carry r15 r11;
(* cmovb  %rdi,%r12                                #! PC = 0x4c8484 *)
cmov r12 carry rdi r12;
(* cmovb  %rsi,%r13                                #! PC = 0x4c8488 *)
cmov r13 carry rsi r13;

assert true &&
       eqmod (limbs 64 [r10, r11, r12, r13, 0@64])
             (limbs 64 [r10b, r11b, r12b, r13b, rbpb])
             (limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64, 0@64]);
assume eqmod (limbs 64 [r10, r11, r12, r13, 0])
             (limbs 64 [r10b, r11b, r12b, r13b, rbpb])
             (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3, 0]) && true;

(* mov    0x8(%rsp),%rbp                           #! EA = L0xc0000b13b8; Value = 0x000000c0000b14c8; PC = 0x4c848c *)
mov rbp L0xc0000b13b8;
(* add    $0x10,%rsp                               #! PC = 0x4c8491 *)
#adds carry rsp rsp 0x10@uint64;
(* #! <- SP = 0xc0000b13c0 *)
#! 0xc0000b13c0 = 0xc0000b13c0;
(* #ret                                            #! PC = 0x4c8495 *)
#ret                                            #! 0x4c8495 = 0x4c8495;
(* mov    %r10,0x60(%rsp)                          #! EA = L0xc0000b1428; PC = 0x4c970f *)
mov L0xc0000b1428 r10;
(* mov    %r11,0x68(%rsp)                          #! EA = L0xc0000b1430; PC = 0x4c9714 *)
mov L0xc0000b1430 r11;
(* mov    %r12,0x70(%rsp)                          #! EA = L0xc0000b1438; PC = 0x4c9719 *)
mov L0xc0000b1438 r12;
(* mov    %r13,0x78(%rsp)                          #! EA = L0xc0000b1440; PC = 0x4c971e *)
mov L0xc0000b1440 r13;

(* 7 *)
cut eqmod (limbs 64 [L0xc0000b1428, L0xc0000b1430, L0xc0000b1438, L0xc0000b1440])
          (2**256 * 4 * limbs 64 [y_0,y_1,y_2,y_3]**2)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [ precondition, all ghosts ]
 && limbs 64 [L0xc0000b1428, L0xc0000b1430, L0xc0000b1438, L0xc0000b1440] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [ precondition ];

(* #call   0x4c82e0 <p256SqrInternal>              #! PC = 0x4c9723 *)
#call   0x4c82e0 <p256SqrInternal>              #! 0x4c9723 = 0x4c9723;
(* #! -> SP = 0xc0000b13c0 *)
#! 0xc0000b13c0 = 0xc0000b13c0;
(* sub    $0x10,%rsp                               #! PC = 0x4c82e0 *)
#subb carry rsp rsp 0x10@uint64;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0xc0000b13b8; PC = 0x4c82e4 *)
mov L0xc0000b13b8 rbp;
(* lea    0x8(%rsp),%rbp                           #! PC = 0x4c82e9 *)
#lea    %%EA,%%rbp                           #! 0x4c82e9 = 0x4c82e9;
(* mov    %r10,%rax                                #! PC = 0x4c82ee *)
mov rax r10;
(* mul    %r11                                     #! PC = 0x4c82f1 *)
mull rdx rax rax r11;
subc carry dc rdx 1@uint64; mov overflow carry;
(* mov    %rax,%rcx                                #! PC = 0x4c82f4 *)
mov rcx rax;
(* mov    %rdx,%r8                                 #! PC = 0x4c82f7 *)
mov r8 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c82fa *)
mov rax r10;
(* mul    %r12                                     #! PC = 0x4c82fd *)
mull rdx rax rax r12;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c8300 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8303 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c8307 *)
mov r9 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c830a *)
mov rax r10;
(* mul    %r13                                     #! PC = 0x4c830d *)
mull rdx rax rax r13;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c8310 *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8313 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r14                                #! PC = 0x4c8317 *)
mov r14 rdx;
(* mov    %r11,%rax                                #! PC = 0x4c831a *)
mov rax r11;
(* mul    %r12                                     #! PC = 0x4c831d *)
mull rdx rax rax r12;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c8320 *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8323 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8327 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c832a *)
mov rax r11;
(* mul    %r13                                     #! PC = 0x4c832d *)
mull rdx rax rax r13;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r14                                #! PC = 0x4c8330 *)
adds carry r14 r14 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8333 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r14                                #! PC = 0x4c8337 *)
adds carry r14 r14 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c833a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r15                                #! PC = 0x4c833e *)
mov r15 rdx;
(* mov    %r12,%rax                                #! PC = 0x4c8341 *)
mov rax r12;
(* mul    %r13                                     #! PC = 0x4c8344 *)
mull rdx rax rax r13;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r15                                #! PC = 0x4c8347 *)
adds carry r15 r15 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c834a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rdi                                #! PC = 0x4c834e *)
mov rdi rdx;
(* xor    %rsi,%rsi                                #! PC = 0x4c8351 *)
mov rsi 0@uint64;
clear carry;
clear overflow;
(* add    %rcx,%rcx                                #! PC = 0x4c8354 *)
adds carry rcx rcx rcx;
(* adc    %r8,%r8                                  #! PC = 0x4c8357 *)
adcs carry r8 r8 r8 carry;
(* adc    %r9,%r9                                  #! PC = 0x4c835a *)
adcs carry r9 r9 r9 carry;
(* adc    %r14,%r14                                #! PC = 0x4c835d *)
adcs carry r14 r14 r14 carry;
(* adc    %r15,%r15                                #! PC = 0x4c8360 *)
adcs carry r15 r15 r15 carry;
(* adc    %rdi,%rdi                                #! PC = 0x4c8363 *)
adcs carry rdi rdi rdi carry;
(* adc    $0x0,%rsi                                #! PC = 0x4c8366 *)
adcs carry rsi rsi 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r10,%rax                                #! PC = 0x4c836a *)
mov rax r10;
(* mul    %rax                                     #! PC = 0x4c836d *)
mull rdx rax rax rax;
subc carry dc rdx 1@uint64; mov overflow carry;
(* mov    %rax,%rbx                                #! PC = 0x4c8370 *)
mov rbx rax;
(* mov    %rdx,%r10                                #! PC = 0x4c8373 *)
mov r10 rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8376 *)
mov rax r11;
(* mul    %rax                                     #! PC = 0x4c8379 *)
mull rdx rax rax rax;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %r10,%rcx                                #! PC = 0x4c837c *)
adds carry rcx rcx r10;
(* adc    %rax,%r8                                 #! PC = 0x4c837f *)
adcs carry r8 r8 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8382 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r10                                #! PC = 0x4c8386 *)
mov r10 rdx;
(* mov    %r12,%rax                                #! PC = 0x4c8389 *)
mov rax r12;
(* mul    %rax                                     #! PC = 0x4c838c *)
mull rdx rax rax rax;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %r10,%r9                                 #! PC = 0x4c838f *)
adds carry r9 r9 r10;
(* adc    %rax,%r14                                #! PC = 0x4c8392 *)
adcs carry r14 r14 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8395 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r10                                #! PC = 0x4c8399 *)
mov r10 rdx;
(* mov    %r13,%rax                                #! PC = 0x4c839c *)
mov rax r13;
(* mul    %rax                                     #! PC = 0x4c839f *)
mull rdx rax rax rax;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %r10,%r15                                #! PC = 0x4c83a2 *)
adds carry r15 r15 r10;
(* adc    %rax,%rdi                                #! PC = 0x4c83a5 *)
adcs carry rdi rdi rax carry;
(* adc    %rdx,%rsi                                #! PC = 0x4c83a8 *)
adcs carry rsi rsi rdx carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rbx,%rax                                #! PC = 0x4c83ab *)
mov rax rbx;
(* mov    %rbx,%rbp                                #! PC = 0x4c83ae *)
mov rbp rbx;
(* shl    $0x20,%rbx                               #! PC = 0x4c83b1 *)
split ddc rbx rbx (64-0x20);
shl rbx rbx 0x20@uint64;
(* mulq   0x71744(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c83b5 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c83bc *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rbx,%rcx                                #! PC = 0x4c83c0 *)
adds carry rcx rcx rbx;
(* adc    %rbp,%r8                                 #! PC = 0x4c83c3 *)
adcs carry r8 r8 rbp carry;
(* adc    %rax,%r9                                 #! PC = 0x4c83c6 *)
adcs carry r9 r9 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c83c9 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbx                                #! PC = 0x4c83cd *)
mov rbx rdx;
(* mov    %rcx,%rax                                #! PC = 0x4c83d0 *)
mov rax rcx;
(* mov    %rcx,%rbp                                #! PC = 0x4c83d3 *)
mov rbp rcx;
(* shl    $0x20,%rcx                               #! PC = 0x4c83d6 *)
split ddc rcx rcx (64-0x20);
shl rcx rcx 0x20@uint64;
(* mulq   0x7171f(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c83da *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c83e1 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rcx,%r8                                 #! PC = 0x4c83e5 *)
adds carry r8 r8 rcx;
(* adc    %rbp,%r9                                 #! PC = 0x4c83e8 *)
adcs carry r9 r9 rbp carry;
(* adc    %rax,%rbx                                #! PC = 0x4c83eb *)
adcs carry rbx rbx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c83ee *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rcx                                #! PC = 0x4c83f2 *)
mov rcx rdx;
(* mov    %r8,%rax                                 #! PC = 0x4c83f5 *)
mov rax r8;
(* mov    %r8,%rbp                                 #! PC = 0x4c83f8 *)
mov rbp r8;
(* shl    $0x20,%r8                                #! PC = 0x4c83fb *)
split ddc r8 r8 (64-0x20);
shl r8 r8 0x20@uint64;
(* mulq   0x716fa(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c83ff *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8406 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r8,%r9                                  #! PC = 0x4c840a *)
adds carry r9 r9 r8;
(* adc    %rbp,%rbx                                #! PC = 0x4c840d *)
adcs carry rbx rbx rbp carry;
(* adc    %rax,%rcx                                #! PC = 0x4c8410 *)
adcs carry rcx rcx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8413 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c8417 *)
mov r8 rdx;
(* mov    %r9,%rax                                 #! PC = 0x4c841a *)
mov rax r9;
(* mov    %r9,%rbp                                 #! PC = 0x4c841d *)
mov rbp r9;
(* shl    $0x20,%r9                                #! PC = 0x4c8420 *)
split ddc r9 r9 (64-0x20);
shl r9 r9 0x20@uint64;
(* mulq   0x716d5(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8424 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c842b *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r9,%rbx                                 #! PC = 0x4c842f *)
adds carry rbx rbx r9;
(* adc    %rbp,%rcx                                #! PC = 0x4c8432 *)
adcs carry rcx rcx rbp carry;
(* adc    %rax,%r8                                 #! PC = 0x4c8435 *)
adcs carry r8 r8 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8438 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c843c *)
mov r9 rdx;
(* mov    $0x0,%rbp                                #! PC = 0x4c843f *)
mov rbp 0x0@uint64;
(* adc    %rbx,%r14                                #! PC = 0x4c8446 *)
adcs carry r14 r14 rbx carry;
(* adc    %rcx,%r15                                #! PC = 0x4c8449 *)
adcs carry r15 r15 rcx carry;
(* adc    %r8,%rdi                                 #! PC = 0x4c844c *)
adcs carry rdi rdi r8 carry;
(* adc    %r9,%rsi                                 #! PC = 0x4c844f *)
adcs carry rsi rsi r9 carry;
(* adc    $0x0,%rbp                                #! PC = 0x4c8452 *)
adcs carry rbp rbp 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r14,%r10                                #! PC = 0x4c8456 *)
mov r10 r14;
(* mov    %r15,%r11                                #! PC = 0x4c8459 *)
mov r11 r15;
(* mov    %rdi,%r12                                #! PC = 0x4c845c *)
mov r12 rdi;
(* mov    %rsi,%r13                                #! PC = 0x4c845f *)
mov r13 rsi;

ghost r10c@uint64, r11c@uint64, r12c@uint64, r13c@uint64, rbpc@uint64 :
      and [r10c=r10, r11c=r11, r12c=r12, r13c=r13, rbpc=rbp]
   && and [r10c=r10, r11c=r11, r12c=r12, r13c=r13, rbpc=rbp];

(* sub    $0xffffffffffffffff,%r10                 #! PC = 0x4c8462 *)
subb carry r10 r10 0xffffffffffffffff@uint64;
(* sbb    0x7168b(%rip),%r11        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c8466 *)
sbbs carry r11 r11 L0x539af8 carry;
(* sbb    $0x0,%r12                                #! PC = 0x4c846d *)
sbbs carry r12 r12 0x0@uint64 carry;
(* sbb    0x71688(%rip),%r13        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c8471 *)
sbbs carry r13 r13 L0x539b00 carry;
(* sbb    $0x0,%rbp                                #! PC = 0x4c8478 *)
sbbs carry rbp rbp 0x0@uint64 carry;
(* cmovb  %r14,%r10                                #! PC = 0x4c847c *)
cmov r10 carry r14 r10;
(* cmovb  %r15,%r11                                #! PC = 0x4c8480 *)
cmov r11 carry r15 r11;
(* cmovb  %rdi,%r12                                #! PC = 0x4c8484 *)
cmov r12 carry rdi r12;
(* cmovb  %rsi,%r13                                #! PC = 0x4c8488 *)
cmov r13 carry rsi r13;

assert true &&
       eqmod (limbs 64 [r10, r11, r12, r13, 0@64])
             (limbs 64 [r10c, r11c, r12c, r13c, rbpc])
             (limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64, 0@64]);
assume eqmod (limbs 64 [r10, r11, r12, r13, 0])
             (limbs 64 [r10c, r11c, r12c, r13c, rbpc])
             (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3, 0]) && true;

(* mov    0x8(%rsp),%rbp                           #! EA = L0xc0000b13b8; Value = 0x000000c0000b14c8; PC = 0x4c848c *)
mov rbp L0xc0000b13b8;
(* add    $0x10,%rsp                               #! PC = 0x4c8491 *)
#adds carry rsp rsp 0x10@uint64;
(* #! <- SP = 0xc0000b13c0 *)
#! 0xc0000b13c0 = 0xc0000b13c0;
(* #ret                                            #! PC = 0x4c8495 *)
#ret                                            #! 0x4c8495 = 0x4c8495;

(* 8 *)
cut eqmod (limbs 64 [r10, r11, r12, r13])
          (2**256 * 16 * limbs 64 [y_0,y_1,y_2,y_3]**4)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [ precondition, all ghosts ]
 && limbs 64 [r10, r11, r12, r13] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [ precondition ];

ghost r10o@uint64, r11o@uint64, r12o@uint64, r13o@uint64:
      and [r10o=r10, r11o=r11, r12o=r12, r13o=r13]
   && and [r10o=r10, r11o=r11, r12o=r12, r13o=r13];

(* xor    %rax,%rax                                #! PC = 0x4c9728 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mov    %r10,%r14                                #! PC = 0x4c972b *)
mov r14 r10;
(* mov    %r11,%r15                                #! PC = 0x4c972e *)
mov r15 r11;
(* mov    %r12,%rdi                                #! PC = 0x4c9731 *)
mov rdi r12;
(* mov    %r13,%rsi                                #! PC = 0x4c9734 *)
mov rsi r13;
(* add    $0xffffffffffffffff,%r10                 #! PC = 0x4c9737 *)
adds carry r10 r10 0xffffffffffffffff@uint64;
(* adc    0x703b6(%rip),%r11        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c973b *)
adcs carry r11 r11 L0x539af8 carry;
(* adc    $0x0,%r12                                #! PC = 0x4c9742 *)
adcs carry r12 r12 0x0@uint64 carry;
(* adc    0x703b3(%rip),%r13        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c9746 *)
adcs carry r13 r13 L0x539b00 carry;
(* adc    $0x0,%rax                                #! PC = 0x4c974d *)
adcs carry rax rax 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* test   $0x1,%r14                                #! PC = 0x4c9751 *)
and tmp@uint64 0x1@uint64 r14;
subb zero dontcare tmp 0x1@uint64;
(* cmove  %r14,%r10                                #! PC = 0x4c9758 *)
cmov r10 zero r14 r10;
(* cmove  %r15,%r11                                #! PC = 0x4c975c *)
cmov r11 zero r15 r11;
(* cmove  %rdi,%r12                                #! PC = 0x4c9760 *)
cmov r12 zero rdi r12;
(* cmove  %rsi,%r13                                #! PC = 0x4c9764 *)
cmov r13 zero rsi r13;
(* and    %r14,%rax                                #! PC = 0x4c9768 *)
and rax@uint64 rax r14;
(* shrd   $0x1,%r11,%r10                           #! PC = 0x4c976b *)
#shrd   $0x1,%%r11,%%r10                           #! 0x4c976b = 0x4c976b;
spl dc extr_H r11 1; spl extr_L dc r10 1; join r10 extr_H extr_L;
(* shrd   $0x1,%r12,%r11                           #! PC = 0x4c9770 *)
spl dc extr_H r12 1; spl extr_L dc r11 1; join r11 extr_H extr_L;
(* shrd   $0x1,%r13,%r12                           #! PC = 0x4c9775 *)
spl dc extr_H r13 1; spl extr_L dc r12 1; join r12 extr_H extr_L;
(* shrd   $0x1,%rax,%r13                           #! PC = 0x4c977a *)
spl dc extr_H rax 1; spl extr_L dc r13 1; join r13 extr_H extr_L;
(* mov    %r10,0x20(%rsp)                          #! EA = L0xc0000b13e8; PC = 0x4c977f *)
mov L0xc0000b13e8 r10;
(* mov    %r11,0x28(%rsp)                          #! EA = L0xc0000b13f0; PC = 0x4c9784 *)
mov L0xc0000b13f0 r11;
(* mov    %r12,0x30(%rsp)                          #! EA = L0xc0000b13f8; PC = 0x4c9789 *)
mov L0xc0000b13f8 r12;
(* mov    %r13,0x38(%rsp)                          #! EA = L0xc0000b1400; PC = 0x4c978e *)
mov L0xc0000b1400 r13;

assert true
    && eqmod (2@320 *
             limbs 64 [r10, r11, r12, r13, 0@64])
             (limbs 64 [r10o, r11o, r12o, r13o, 0@64])
             (limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64, 0@64]);
assume eqmod (2 * limbs 64 [r10, r11, r12, r13])
             (limbs 64 [r10o, r11o, r12o, r13o])
             (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    && true;

(* 9 *)
cut eqmod (limbs 64 [L0xc0000b13e8, L0xc0000b13f0, L0xc0000b13f8, L0xc0000b1400])
          (2**256 * 8 * limbs 64 [y_0,y_1,y_2,y_3]**4)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [ precondition, all ghosts ]
 && limbs 64 [L0xc0000b13e8, L0xc0000b13f0, L0xc0000b13f8, L0xc0000b1400] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [ precondition ];

(* mov    (%rsp),%r10                              #! EA = L0xc0000b13c8; Value = 0x73e27cfed6efd4e3; PC = 0x4c9793 *)
mov r10 L0xc0000b13c8;
(* mov    0x8(%rsp),%r11                           #! EA = L0xc0000b13d0; Value = 0x51688130d76bf7b9; PC = 0x4c9797 *)
mov r11 L0xc0000b13d0;
(* mov    0x10(%rsp),%r12                          #! EA = L0xc0000b13d8; Value = 0x28efc415cd8aba40; PC = 0x4c979c *)
mov r12 L0xc0000b13d8;
(* mov    0x18(%rsp),%r13                          #! EA = L0xc0000b13e0; Value = 0x8a0fc1d0000b538a; PC = 0x4c97a1 *)
mov r13 L0xc0000b13e0;
(* mov    0x60(%rsp),%r14                          #! EA = L0xc0000b1428; Value = 0x08eedaf09b4402f4; PC = 0x4c97a6 *)
mov r14 L0xc0000b1428;
(* mov    0x68(%rsp),%r15                          #! EA = L0xc0000b1430; Value = 0x25efd1a6dee5bf46; PC = 0x4c97ab *)
mov r15 L0xc0000b1430;
(* mov    0x70(%rsp),%rdi                          #! EA = L0xc0000b1438; Value = 0x562d446da633ee4b; PC = 0x4c97b0 *)
mov rdi L0xc0000b1438;
(* mov    0x78(%rsp),%rsi                          #! EA = L0xc0000b1440; Value = 0xf022023ae007bc49; PC = 0x4c97b5 *)
mov rsi L0xc0000b1440;
(* #call   0x4c80a0 <p256MulInternal>              #! PC = 0x4c97ba *)
#call   0x4c80a0 <p256MulInternal>              #! 0x4c97ba = 0x4c97ba;
(* #! -> SP = 0xc0000b13c0 *)
#! 0xc0000b13c0 = 0xc0000b13c0;
(* sub    $0x10,%rsp                               #! PC = 0x4c80a0 *)
#subb carry rsp rsp 0x10@uint64;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0xc0000b13b8; PC = 0x4c80a4 *)
mov L0xc0000b13b8 rbp;
(* lea    0x8(%rsp),%rbp                           #! PC = 0x4c80a9 *)
#lea    %%EA,%%rbp                           #! 0x4c80a9 = 0x4c80a9;
(* mov    %r10,%rax                                #! PC = 0x4c80ae *)
mov rax r10;
(* mul    %r14                                     #! PC = 0x4c80b1 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* mov    %rax,%rbx                                #! PC = 0x4c80b4 *)
mov rbx rax;
(* mov    %rdx,%rcx                                #! PC = 0x4c80b7 *)
mov rcx rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80ba *)
mov rax r10;
(* mul    %r15                                     #! PC = 0x4c80bd *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%rcx                                #! PC = 0x4c80c0 *)
adds carry rcx rcx rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80c3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c80c7 *)
mov r8 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80ca *)
mov rax r10;
(* mul    %rdi                                     #! PC = 0x4c80cd *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c80d0 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80d3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c80d7 *)
mov r9 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80da *)
mov rax r10;
(* mul    %rsi                                     #! PC = 0x4c80dd *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c80e0 *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80e3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r10                                #! PC = 0x4c80e7 *)
mov r10 rdx;
(* mov    %r11,%rax                                #! PC = 0x4c80ea *)
mov rax r11;
(* mul    %r14                                     #! PC = 0x4c80ed *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%rcx                                #! PC = 0x4c80f0 *)
adds carry rcx rcx rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80f3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c80f7 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c80fa *)
mov rax r11;
(* mul    %r15                                     #! PC = 0x4c80fd *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r8                                 #! PC = 0x4c8100 *)
adds carry r8 r8 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8103 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r8                                 #! PC = 0x4c8107 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c810a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c810e *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8111 *)
mov rax r11;
(* mul    %rdi                                     #! PC = 0x4c8114 *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r9                                 #! PC = 0x4c8117 *)
adds carry r9 r9 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c811a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r9                                 #! PC = 0x4c811e *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8121 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8125 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8128 *)
mov rax r11;
(* mul    %rsi                                     #! PC = 0x4c812b *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c812e *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8131 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c8135 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8138 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r11                                #! PC = 0x4c813c *)
mov r11 rdx;
(* mov    %r12,%rax                                #! PC = 0x4c813f *)
mov rax r12;
(* mul    %r14                                     #! PC = 0x4c8142 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c8145 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8148 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c814c *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c814f *)
mov rax r12;
(* mul    %r15                                     #! PC = 0x4c8152 *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r9                                 #! PC = 0x4c8155 *)
adds carry r9 r9 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8158 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r9                                 #! PC = 0x4c815c *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c815f *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8163 *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c8166 *)
mov rax r12;
(* mul    %rdi                                     #! PC = 0x4c8169 *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c816c *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c816f *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c8173 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8176 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c817a *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c817d *)
mov rax r12;
(* mul    %rsi                                     #! PC = 0x4c8180 *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r11                                #! PC = 0x4c8183 *)
adds carry r11 r11 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8186 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r11                                #! PC = 0x4c818a *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c818d *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r12                                #! PC = 0x4c8191 *)
mov r12 rdx;
(* mov    %r13,%rax                                #! PC = 0x4c8194 *)
mov rax r13;
(* mul    %r14                                     #! PC = 0x4c8197 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c819a *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c819d *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81a1 *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81a4 *)
mov rax r13;
(* mul    %r15                                     #! PC = 0x4c81a7 *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c81aa *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81ad *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c81b1 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81b4 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81b8 *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81bb *)
mov rax r13;
(* mul    %rdi                                     #! PC = 0x4c81be *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r11                                #! PC = 0x4c81c1 *)
adds carry r11 r11 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81c4 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r11                                #! PC = 0x4c81c8 *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81cb *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81cf *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81d2 *)
mov rax r13;
(* mul    %rsi                                     #! PC = 0x4c81d5 *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r12                                #! PC = 0x4c81d8 *)
adds carry r12 r12 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81db *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r12                                #! PC = 0x4c81df *)
adds carry r12 r12 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81e2 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r13                                #! PC = 0x4c81e6 *)
mov r13 rdx;
(* mov    %rbx,%rax                                #! PC = 0x4c81e9 *)
mov rax rbx;
(* mov    %rbx,%rbp                                #! PC = 0x4c81ec *)
mov rbp rbx;
(* shl    $0x20,%rbx                               #! PC = 0x4c81ef *)
split ddc rbx rbx (64-0x20);
shl rbx rbx 0x20@uint64;
(* mulq   0x71906(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c81f3 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c81fa *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rbx,%rcx                                #! PC = 0x4c81fe *)
adds carry rcx rcx rbx;
(* adc    %rbp,%r8                                 #! PC = 0x4c8201 *)
adcs carry r8 r8 rbp carry;
(* adc    %rax,%r9                                 #! PC = 0x4c8204 *)
adcs carry r9 r9 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8207 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbx                                #! PC = 0x4c820b *)
mov rbx rdx;
(* mov    %rcx,%rax                                #! PC = 0x4c820e *)
mov rax rcx;
(* mov    %rcx,%rbp                                #! PC = 0x4c8211 *)
mov rbp rcx;
(* shl    $0x20,%rcx                               #! PC = 0x4c8214 *)
split ddc rcx rcx (64-0x20);
shl rcx rcx 0x20@uint64;
(* mulq   0x718e1(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8218 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c821f *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rcx,%r8                                 #! PC = 0x4c8223 *)
adds carry r8 r8 rcx;
(* adc    %rbp,%r9                                 #! PC = 0x4c8226 *)
adcs carry r9 r9 rbp carry;
(* adc    %rax,%rbx                                #! PC = 0x4c8229 *)
adcs carry rbx rbx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c822c *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rcx                                #! PC = 0x4c8230 *)
mov rcx rdx;
(* mov    %r8,%rax                                 #! PC = 0x4c8233 *)
mov rax r8;
(* mov    %r8,%rbp                                 #! PC = 0x4c8236 *)
mov rbp r8;
(* shl    $0x20,%r8                                #! PC = 0x4c8239 *)
split ddc r8 r8 (64-0x20);
shl r8 r8 0x20@uint64;
(* mulq   0x718bc(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c823d *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8244 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r8,%r9                                  #! PC = 0x4c8248 *)
adds carry r9 r9 r8;
(* adc    %rbp,%rbx                                #! PC = 0x4c824b *)
adcs carry rbx rbx rbp carry;
(* adc    %rax,%rcx                                #! PC = 0x4c824e *)
adcs carry rcx rcx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8251 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c8255 *)
mov r8 rdx;
(* mov    %r9,%rax                                 #! PC = 0x4c8258 *)
mov rax r9;
(* mov    %r9,%rbp                                 #! PC = 0x4c825b *)
mov rbp r9;
(* shl    $0x20,%r9                                #! PC = 0x4c825e *)
split ddc r9 r9 (64-0x20);
shl r9 r9 0x20@uint64;
(* mulq   0x71897(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8262 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8269 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r9,%rbx                                 #! PC = 0x4c826d *)
adds carry rbx rbx r9;
(* adc    %rbp,%rcx                                #! PC = 0x4c8270 *)
adcs carry rcx rcx rbp carry;
(* adc    %rax,%r8                                 #! PC = 0x4c8273 *)
adcs carry r8 r8 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8276 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c827a *)
mov r9 rdx;
(* mov    $0x0,%rbp                                #! PC = 0x4c827d *)
mov rbp 0x0@uint64;
(* adc    %rbx,%r10                                #! PC = 0x4c8284 *)
adcs carry r10 r10 rbx carry;
(* adc    %rcx,%r11                                #! PC = 0x4c8287 *)
adcs carry r11 r11 rcx carry;
(* adc    %r8,%r12                                 #! PC = 0x4c828a *)
adcs carry r12 r12 r8 carry;
(* adc    %r9,%r13                                 #! PC = 0x4c828d *)
adcs carry r13 r13 r9 carry;
(* adc    $0x0,%rbp                                #! PC = 0x4c8290 *)
adcs carry rbp rbp 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r10,%rbx                                #! PC = 0x4c8294 *)
mov rbx r10;
(* mov    %r11,%rcx                                #! PC = 0x4c8297 *)
mov rcx r11;
(* mov    %r12,%r8                                 #! PC = 0x4c829a *)
mov r8 r12;
(* mov    %r13,%r9                                 #! PC = 0x4c829d *)
mov r9 r13;

ghost r10g@uint64, r11g@uint64, r12g@uint64, r13g@uint64, rbpg@uint64 :
      and [r10g=r10, r11g=r11, r12g=r12, r13g=r13, rbpg=rbp]
   && and [r10g=r10, r11g=r11, r12g=r12, r13g=r13, rbpg=rbp];

(* sub    $0xffffffffffffffff,%r10                 #! PC = 0x4c82a0 *)
subb carry r10 r10 0xffffffffffffffff@uint64;
(* sbb    0x7184d(%rip),%r11        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c82a4 *)
sbbs carry r11 r11 L0x539af8 carry;
(* sbb    $0x0,%r12                                #! PC = 0x4c82ab *)
sbbs carry r12 r12 0x0@uint64 carry;
(* sbb    0x7184a(%rip),%r13        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c82af *)
sbbs carry r13 r13 L0x539b00 carry;
(* sbb    $0x0,%rbp                                #! PC = 0x4c82b6 *)
sbbs carry rbp rbp 0x0@uint64 carry;
(* cmovb  %rbx,%r10                                #! PC = 0x4c82ba *)
cmov r10 carry rbx r10;
(* cmovb  %rcx,%r11                                #! PC = 0x4c82be *)
cmov r11 carry rcx r11;
(* cmovb  %r8,%r12                                 #! PC = 0x4c82c2 *)
cmov r12 carry r8 r12;
(* cmovb  %r9,%r13                                 #! PC = 0x4c82c6 *)
cmov r13 carry r9 r13;

assert true &&
       eqmod (limbs 64 [r10, r11, r12, r13, 0@64])
             (limbs 64 [r10g, r11g, r12g, r13g, rbpg])
             (limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64, 0@64]);
assume eqmod (limbs 64 [r10, r11, r12, r13, 0])
             (limbs 64 [r10g, r11g, r12g, r13g, rbpg])
             (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3, 0]) && true;

(* mov    0x8(%rsp),%rbp                           #! EA = L0xc0000b13b8; Value = 0x000000c0000b14c8; PC = 0x4c82ca *)
mov rbp L0xc0000b13b8;
(* add    $0x10,%rsp                               #! PC = 0x4c82cf *)
#adds carry rsp rsp 0x10@uint64;
(* #! <- SP = 0xc0000b13c0 *)
#! 0xc0000b13c0 = 0xc0000b13c0;
(* #ret                                            #! PC = 0x4c82d3 *)
#ret                                            #! 0x4c82d3 = 0x4c82d3;
(* mov    %r10,0x60(%rsp)                          #! EA = L0xc0000b1428; PC = 0x4c97bf *)
mov L0xc0000b1428 r10;
(* mov    %r11,0x68(%rsp)                          #! EA = L0xc0000b1430; PC = 0x4c97c4 *)
mov L0xc0000b1430 r11;
(* mov    %r12,0x70(%rsp)                          #! EA = L0xc0000b1438; PC = 0x4c97c9 *)
mov L0xc0000b1438 r12;
(* mov    %r13,0x78(%rsp)                          #! EA = L0xc0000b1440; PC = 0x4c97ce *)
mov L0xc0000b1440 r13;

(* 10 *)
cut eqmod (limbs 64 [L0xc0000b1428, L0xc0000b1430, L0xc0000b1438, L0xc0000b1440])
          (2**256 * 4 * limbs 64 [x_0, x_1, x_2, x_3] * limbs 64 [y_0,y_1,y_2,y_3]**2)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [ precondition, all ghosts, cuts [7] ]
 && limbs 64 [L0xc0000b1428, L0xc0000b1430, L0xc0000b1438, L0xc0000b1440] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [ precondition, cuts [7] ];

(* xor    %rax,%rax                                #! PC = 0x4c97d3 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* add    %r10,%r10                                #! PC = 0x4c97d6 *)
adds carry r10 r10 r10;
(* adc    %r11,%r11                                #! PC = 0x4c97d9 *)
adcs carry r11 r11 r11 carry;
(* adc    %r12,%r12                                #! PC = 0x4c97dc *)
adcs carry r12 r12 r12 carry;
(* adc    %r13,%r13                                #! PC = 0x4c97df *)
adcs carry r13 r13 r13 carry;
(* adc    $0x0,%rax                                #! PC = 0x4c97e2 *)
adcs carry rax rax 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r10,%r14                                #! PC = 0x4c97e6 *)
mov r14 r10;
(* mov    %r11,%r15                                #! PC = 0x4c97e9 *)
mov r15 r11;
(* mov    %r12,%rdi                                #! PC = 0x4c97ec *)
mov rdi r12;
(* mov    %r13,%rsi                                #! PC = 0x4c97ef *)
mov rsi r13;

ghost r14n@uint64, r15n@uint64, rdin@uint64, rsin@uint64, raxn@uint64 :
      and [r14n=r14, r15n=r15, rdin=rdi, rsin=rsi, raxn=rax]
   && and [r14n=r14, r15n=r15, rdin=rdi, rsin=rsi, raxn=rax];


(* sub    $0xffffffffffffffff,%r14                 #! PC = 0x4c97f2 *)
subb carry r14 r14 0xffffffffffffffff@uint64;
(* sbb    0x702fb(%rip),%r15        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c97f6 *)
sbbs carry r15 r15 L0x539af8 carry;
(* sbb    $0x0,%rdi                                #! PC = 0x4c97fd *)
sbbs carry rdi rdi 0x0@uint64 carry;
(* sbb    0x702f8(%rip),%rsi        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c9801 *)
sbbs carry rsi rsi L0x539b00 carry;
(* sbb    $0x0,%rax                                #! PC = 0x4c9808 *)
sbbs carry rax rax 0x0@uint64 carry;
(* cmovb  %r10,%r14                                #! PC = 0x4c980c *)
cmov r14 carry r10 r14;
(* cmovb  %r11,%r15                                #! PC = 0x4c9810 *)
cmov r15 carry r11 r15;
(* cmovb  %r12,%rdi                                #! PC = 0x4c9814 *)
cmov rdi carry r12 rdi;
(* cmovb  %r13,%rsi                                #! PC = 0x4c9818 *)
cmov rsi carry r13 rsi;

assert true &&
       eqmod (limbs 64 [r14, r15, rdi, rsi, 0@64])
             (limbs 64 [r14n, r15n, rdin, rsin, raxn])
             (limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64, 0@64]);
assume eqmod (limbs 64 [r14, r15, rdi, rsi, 0])
             (limbs 64 [r14n, r15n, rdin, rsin, raxn])
             (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3, 0]) && true;

(* mov    %r14,0xc0(%rsp)                          #! EA = L0xc0000b1488; PC = 0x4c981c *)
mov L0xc0000b1488 r14;
(* mov    %r15,0xc8(%rsp)                          #! EA = L0xc0000b1490; PC = 0x4c9824 *)
mov L0xc0000b1490 r15;
(* mov    %rdi,0xd0(%rsp)                          #! EA = L0xc0000b1498; PC = 0x4c982c *)
mov L0xc0000b1498 rdi;
(* mov    %rsi,0xd8(%rsp)                          #! EA = L0xc0000b14a0; PC = 0x4c9834 *)
mov L0xc0000b14a0 rsi;

(* 11 *)
cut eqmod (limbs 64 [L0xc0000b1488, L0xc0000b1490, L0xc0000b1498, L0xc0000b14a0])
          (2**256 * 8 * limbs 64 [x_0, x_1, x_2, x_3] * limbs 64 [y_0,y_1,y_2,y_3]**2)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [ precondition, all ghosts ]
 && limbs 64 [L0xc0000b1488, L0xc0000b1490, L0xc0000b1498, L0xc0000b14a0] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [ precondition ];

(* mov    0x80(%rsp),%r10                          #! EA = L0xc0000b1448; Value = 0xfdcb6128f0f5179a; PC = 0x4c983c *)
mov r10 L0xc0000b1448;
(* mov    0x88(%rsp),%r11                          #! EA = L0xc0000b1450; Value = 0x147bf8fb96d07211; PC = 0x4c9844 *)
mov r11 L0xc0000b1450;
(* mov    0x90(%rsp),%r12                          #! EA = L0xc0000b1458; Value = 0x517075402127fdef; PC = 0x4c984c *)
mov r12 L0xc0000b1458;
(* mov    0x98(%rsp),%r13                          #! EA = L0xc0000b1460; Value = 0xbbd8b9294164c5c9; PC = 0x4c9854 *)
mov r13 L0xc0000b1460;
(* #call   0x4c82e0 <p256SqrInternal>              #! PC = 0x4c985c *)
#call   0x4c82e0 <p256SqrInternal>              #! 0x4c985c = 0x4c985c;
(* #! -> SP = 0xc0000b13c0 *)
#! 0xc0000b13c0 = 0xc0000b13c0;
(* sub    $0x10,%rsp                               #! PC = 0x4c82e0 *)
#subb carry rsp rsp 0x10@uint64;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0xc0000b13b8; PC = 0x4c82e4 *)
mov L0xc0000b13b8 rbp;
(* lea    0x8(%rsp),%rbp                           #! PC = 0x4c82e9 *)
#lea    %%EA,%%rbp                           #! 0x4c82e9 = 0x4c82e9;
(* mov    %r10,%rax                                #! PC = 0x4c82ee *)
mov rax r10;
(* mul    %r11                                     #! PC = 0x4c82f1 *)
mull rdx rax rax r11;
subc carry dc rdx 1@uint64; mov overflow carry;
(* mov    %rax,%rcx                                #! PC = 0x4c82f4 *)
mov rcx rax;
(* mov    %rdx,%r8                                 #! PC = 0x4c82f7 *)
mov r8 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c82fa *)
mov rax r10;
(* mul    %r12                                     #! PC = 0x4c82fd *)
mull rdx rax rax r12;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c8300 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8303 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c8307 *)
mov r9 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c830a *)
mov rax r10;
(* mul    %r13                                     #! PC = 0x4c830d *)
mull rdx rax rax r13;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c8310 *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8313 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r14                                #! PC = 0x4c8317 *)
mov r14 rdx;
(* mov    %r11,%rax                                #! PC = 0x4c831a *)
mov rax r11;
(* mul    %r12                                     #! PC = 0x4c831d *)
mull rdx rax rax r12;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c8320 *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8323 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8327 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c832a *)
mov rax r11;
(* mul    %r13                                     #! PC = 0x4c832d *)
mull rdx rax rax r13;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r14                                #! PC = 0x4c8330 *)
adds carry r14 r14 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8333 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r14                                #! PC = 0x4c8337 *)
adds carry r14 r14 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c833a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r15                                #! PC = 0x4c833e *)
mov r15 rdx;
(* mov    %r12,%rax                                #! PC = 0x4c8341 *)
mov rax r12;
(* mul    %r13                                     #! PC = 0x4c8344 *)
mull rdx rax rax r13;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r15                                #! PC = 0x4c8347 *)
adds carry r15 r15 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c834a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rdi                                #! PC = 0x4c834e *)
mov rdi rdx;
(* xor    %rsi,%rsi                                #! PC = 0x4c8351 *)
mov rsi 0@uint64;
clear carry;
clear overflow;
(* add    %rcx,%rcx                                #! PC = 0x4c8354 *)
adds carry rcx rcx rcx;
(* adc    %r8,%r8                                  #! PC = 0x4c8357 *)
adcs carry r8 r8 r8 carry;
(* adc    %r9,%r9                                  #! PC = 0x4c835a *)
adcs carry r9 r9 r9 carry;
(* adc    %r14,%r14                                #! PC = 0x4c835d *)
adcs carry r14 r14 r14 carry;
(* adc    %r15,%r15                                #! PC = 0x4c8360 *)
adcs carry r15 r15 r15 carry;
(* adc    %rdi,%rdi                                #! PC = 0x4c8363 *)
adcs carry rdi rdi rdi carry;
(* adc    $0x0,%rsi                                #! PC = 0x4c8366 *)
adcs carry rsi rsi 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r10,%rax                                #! PC = 0x4c836a *)
mov rax r10;
(* mul    %rax                                     #! PC = 0x4c836d *)
mull rdx rax rax rax;
subc carry dc rdx 1@uint64; mov overflow carry;
(* mov    %rax,%rbx                                #! PC = 0x4c8370 *)
mov rbx rax;
(* mov    %rdx,%r10                                #! PC = 0x4c8373 *)
mov r10 rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8376 *)
mov rax r11;
(* mul    %rax                                     #! PC = 0x4c8379 *)
mull rdx rax rax rax;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %r10,%rcx                                #! PC = 0x4c837c *)
adds carry rcx rcx r10;
(* adc    %rax,%r8                                 #! PC = 0x4c837f *)
adcs carry r8 r8 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8382 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r10                                #! PC = 0x4c8386 *)
mov r10 rdx;
(* mov    %r12,%rax                                #! PC = 0x4c8389 *)
mov rax r12;
(* mul    %rax                                     #! PC = 0x4c838c *)
mull rdx rax rax rax;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %r10,%r9                                 #! PC = 0x4c838f *)
adds carry r9 r9 r10;
(* adc    %rax,%r14                                #! PC = 0x4c8392 *)
adcs carry r14 r14 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8395 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r10                                #! PC = 0x4c8399 *)
mov r10 rdx;
(* mov    %r13,%rax                                #! PC = 0x4c839c *)
mov rax r13;
(* mul    %rax                                     #! PC = 0x4c839f *)
mull rdx rax rax rax;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %r10,%r15                                #! PC = 0x4c83a2 *)
adds carry r15 r15 r10;
(* adc    %rax,%rdi                                #! PC = 0x4c83a5 *)
adcs carry rdi rdi rax carry;
(* adc    %rdx,%rsi                                #! PC = 0x4c83a8 *)
adcs carry rsi rsi rdx carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rbx,%rax                                #! PC = 0x4c83ab *)
mov rax rbx;
(* mov    %rbx,%rbp                                #! PC = 0x4c83ae *)
mov rbp rbx;
(* shl    $0x20,%rbx                               #! PC = 0x4c83b1 *)
split ddc rbx rbx (64-0x20);
shl rbx rbx 0x20@uint64;
(* mulq   0x71744(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c83b5 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c83bc *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rbx,%rcx                                #! PC = 0x4c83c0 *)
adds carry rcx rcx rbx;
(* adc    %rbp,%r8                                 #! PC = 0x4c83c3 *)
adcs carry r8 r8 rbp carry;
(* adc    %rax,%r9                                 #! PC = 0x4c83c6 *)
adcs carry r9 r9 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c83c9 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbx                                #! PC = 0x4c83cd *)
mov rbx rdx;
(* mov    %rcx,%rax                                #! PC = 0x4c83d0 *)
mov rax rcx;
(* mov    %rcx,%rbp                                #! PC = 0x4c83d3 *)
mov rbp rcx;
(* shl    $0x20,%rcx                               #! PC = 0x4c83d6 *)
split ddc rcx rcx (64-0x20);
shl rcx rcx 0x20@uint64;
(* mulq   0x7171f(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c83da *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c83e1 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rcx,%r8                                 #! PC = 0x4c83e5 *)
adds carry r8 r8 rcx;
(* adc    %rbp,%r9                                 #! PC = 0x4c83e8 *)
adcs carry r9 r9 rbp carry;
(* adc    %rax,%rbx                                #! PC = 0x4c83eb *)
adcs carry rbx rbx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c83ee *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rcx                                #! PC = 0x4c83f2 *)
mov rcx rdx;
(* mov    %r8,%rax                                 #! PC = 0x4c83f5 *)
mov rax r8;
(* mov    %r8,%rbp                                 #! PC = 0x4c83f8 *)
mov rbp r8;
(* shl    $0x20,%r8                                #! PC = 0x4c83fb *)
split ddc r8 r8 (64-0x20);
shl r8 r8 0x20@uint64;
(* mulq   0x716fa(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c83ff *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8406 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r8,%r9                                  #! PC = 0x4c840a *)
adds carry r9 r9 r8;
(* adc    %rbp,%rbx                                #! PC = 0x4c840d *)
adcs carry rbx rbx rbp carry;
(* adc    %rax,%rcx                                #! PC = 0x4c8410 *)
adcs carry rcx rcx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8413 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c8417 *)
mov r8 rdx;
(* mov    %r9,%rax                                 #! PC = 0x4c841a *)
mov rax r9;
(* mov    %r9,%rbp                                 #! PC = 0x4c841d *)
mov rbp r9;
(* shl    $0x20,%r9                                #! PC = 0x4c8420 *)
split ddc r9 r9 (64-0x20);
shl r9 r9 0x20@uint64;
(* mulq   0x716d5(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8424 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c842b *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r9,%rbx                                 #! PC = 0x4c842f *)
adds carry rbx rbx r9;
(* adc    %rbp,%rcx                                #! PC = 0x4c8432 *)
adcs carry rcx rcx rbp carry;
(* adc    %rax,%r8                                 #! PC = 0x4c8435 *)
adcs carry r8 r8 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8438 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c843c *)
mov r9 rdx;
(* mov    $0x0,%rbp                                #! PC = 0x4c843f *)
mov rbp 0x0@uint64;
(* adc    %rbx,%r14                                #! PC = 0x4c8446 *)
adcs carry r14 r14 rbx carry;
(* adc    %rcx,%r15                                #! PC = 0x4c8449 *)
adcs carry r15 r15 rcx carry;
(* adc    %r8,%rdi                                 #! PC = 0x4c844c *)
adcs carry rdi rdi r8 carry;
(* adc    %r9,%rsi                                 #! PC = 0x4c844f *)
adcs carry rsi rsi r9 carry;
(* adc    $0x0,%rbp                                #! PC = 0x4c8452 *)
adcs carry rbp rbp 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r14,%r10                                #! PC = 0x4c8456 *)
mov r10 r14;
(* mov    %r15,%r11                                #! PC = 0x4c8459 *)
mov r11 r15;
(* mov    %rdi,%r12                                #! PC = 0x4c845c *)
mov r12 rdi;
(* mov    %rsi,%r13                                #! PC = 0x4c845f *)
mov r13 rsi;

ghost r10d@uint64, r11d@uint64, r12d@uint64, r13d@uint64, rbpd@uint64 :
      and [r10d=r10, r11d=r11, r12d=r12, r13d=r13, rbpd=rbp]
   && and [r10d=r10, r11d=r11, r12d=r12, r13d=r13, rbpd=rbp];

(* sub    $0xffffffffffffffff,%r10                 #! PC = 0x4c8462 *)
subb carry r10 r10 0xffffffffffffffff@uint64;
(* sbb    0x7168b(%rip),%r11        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c8466 *)
sbbs carry r11 r11 L0x539af8 carry;
(* sbb    $0x0,%r12                                #! PC = 0x4c846d *)
sbbs carry r12 r12 0x0@uint64 carry;
(* sbb    0x71688(%rip),%r13        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c8471 *)
sbbs carry r13 r13 L0x539b00 carry;
(* sbb    $0x0,%rbp                                #! PC = 0x4c8478 *)
sbbs carry rbp rbp 0x0@uint64 carry;
(* cmovb  %r14,%r10                                #! PC = 0x4c847c *)
cmov r10 carry r14 r10;
(* cmovb  %r15,%r11                                #! PC = 0x4c8480 *)
cmov r11 carry r15 r11;
(* cmovb  %rdi,%r12                                #! PC = 0x4c8484 *)
cmov r12 carry rdi r12;
(* cmovb  %rsi,%r13                                #! PC = 0x4c8488 *)
cmov r13 carry rsi r13;

assert true &&
       eqmod (limbs 64 [r10, r11, r12, r13, 0@64])
             (limbs 64 [r10d, r11d, r12d, r13d, rbpd])
             (limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64, 0@64]);
assume eqmod (limbs 64 [r10, r11, r12, r13, 0])
             (limbs 64 [r10d, r11d, r12d, r13d, rbpd])
             (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3, 0]) && true;

(* mov    0x8(%rsp),%rbp                           #! EA = L0xc0000b13b8; Value = 0x000000c0000b14c8; PC = 0x4c848c *)
mov rbp L0xc0000b13b8;
(* add    $0x10,%rsp                               #! PC = 0x4c8491 *)
#adds carry rsp rsp 0x10@uint64;
(* #! <- SP = 0xc0000b13c0 *)
#! 0xc0000b13c0 = 0xc0000b13c0;
(* #ret                                            #! PC = 0x4c8495 *)
#ret                                            #! 0x4c8495 = 0x4c8495;

(* 12 *)
cut eqmod (limbs 64 [r10, r11, r12, r13])
          (2**256 *
          9 * ((limbs 64 [x_0,x_1,x_2,x_3] - limbs 64 [z_0,z_1,z_2,z_3]**2) *
               (limbs 64 [x_0,x_1,x_2,x_3] + limbs 64 [z_0,z_1,z_2,z_3]**2))**2)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [ precondition, all ghosts, cuts [6] ]
 && limbs 64 [r10, r11, r12, r13] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [ precondition, cuts [6] ];

(* mov    0xc0(%rsp),%r14                          #! EA = L0xc0000b1488; Value = 0x325171324074f91e; PC = 0x4c9861 *)
mov r14 L0xc0000b1488;
(* mov    0xc8(%rsp),%r15                          #! EA = L0xc0000b1490; Value = 0x9a5822556a4b2dd4; PC = 0x4c9869 *)
mov r15 L0xc0000b1490;
(* mov    0xd0(%rsp),%rdi                          #! EA = L0xc0000b1498; Value = 0x2494a48bb7b0db35; PC = 0x4c9871 *)
mov rdi L0xc0000b1498;
(* mov    0xd8(%rsp),%rsi                          #! EA = L0xc0000b14a0; Value = 0x272ce12ed32829b2; PC = 0x4c9879 *)
mov rsi L0xc0000b14a0;
(* #call   0x4c8040 <p256SubInternal>              #! PC = 0x4c9881 *)
#call   0x4c8040 <p256SubInternal>              #! 0x4c9881 = 0x4c9881;
(* #! -> SP = 0xc0000b13c0 *)
#! 0xc0000b13c0 = 0xc0000b13c0;
(* xor    %rax,%rax                                #! PC = 0x4c8040 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* sub    %r14,%r10                                #! PC = 0x4c8043 *)
subb carry r10 r10 r14;
(* sbb    %r15,%r11                                #! PC = 0x4c8046 *)
sbbs carry r11 r11 r15 carry;
(* sbb    %rdi,%r12                                #! PC = 0x4c8049 *)
sbbs carry r12 r12 rdi carry;
(* sbb    %rsi,%r13                                #! PC = 0x4c804c *)
sbbs carry0 r13 r13 rsi carry;
(* sbb    $0x0,%rax                                #! PC = 0x4c804f *)
sbbs carry rax rax 0x0@uint64 carry0;
(* mov    %r10,%rbx                                #! PC = 0x4c8053 *)
mov rbx r10;
(* mov    %r11,%rcx                                #! PC = 0x4c8056 *)
mov rcx r11;
(* mov    %r12,%r8                                 #! PC = 0x4c8059 *)
mov r8 r12;
(* mov    %r13,%r9                                 #! PC = 0x4c805c *)
mov r9 r13;
(* add    $0xffffffffffffffff,%r10                 #! PC = 0x4c805f *)
adds carry r10 r10 0xffffffffffffffff@uint64;
(* adc    0x71a8e(%rip),%r11        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c8063 *)
adcs carry r11 r11 L0x539af8 carry;
(* adc    $0x0,%r12                                #! PC = 0x4c806a *)
adcs carry r12 r12 0x0@uint64 carry;
(* adc    0x71a8b(%rip),%r13        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c806e *)
adcs dc0 r13 r13 L0x539b00 carry;
(* and    $0x1,%rax                                #! PC = 0x4c8075 *)
and rax@uint64 rax 0x1@uint64;
subc zero dc 0@uint64 rax;



assert true && (zero + 1@1)*(carry0)+(zero)*(carry0+1@1) = 1@1;
assume zero=carry0+1  && true;


assert true && (dc0 - 1@1)*(carry0 - 0@1) = 0@1;
assume (dc0- 1)*(carry0 - 0)= 0 && true;
(* cmove  %rbx,%r10                                #! PC = 0x4c8079 *)
cmov r10 zero rbx r10;
(* cmove  %rcx,%r11                                #! PC = 0x4c807d *)
cmov r11 zero rcx r11;
(* cmove  %r8,%r12                                 #! PC = 0x4c8081 *)
cmov r12 zero r8 r12;
(* cmove  %r9,%r13                                 #! PC = 0x4c8085 *)
cmov r13 zero r9 r13;
(* #! <- SP = 0xc0000b13c0 *)
#! 0xc0000b13c0 = 0xc0000b13c0;
(* #ret                                            #! PC = 0x4c8089 *)
#ret                                            #! 0x4c8089 = 0x4c8089;
(* mov    0xe0(%rsp),%rax                          #! EA = L0xc0000b14a8; Value = 0x000000c0000b1670; PC = 0x4c9886 *)
#mov rax L0xc0000b14a8;
(* mov    %r10,(%rax)                              #! EA = L0xc0000b1670; PC = 0x4c988e *)
mov L0xc0000b1670 r10;
(* mov    %r11,0x8(%rax)                           #! EA = L0xc0000b1678; PC = 0x4c9891 *)
mov L0xc0000b1678 r11;
(* mov    %r12,0x10(%rax)                          #! EA = L0xc0000b1680; PC = 0x4c9895 *)
mov L0xc0000b1680 r12;
(* mov    %r13,0x18(%rax)                          #! EA = L0xc0000b1688; PC = 0x4c9899 *)
mov L0xc0000b1688 r13;

(* 13 *)
cut eqmod (limbs 64 [L0xc0000b1670, L0xc0000b1678, L0xc0000b1680, L0xc0000b1688])
          (2**256 *
          (9 * ((limbs 64 [x_0,x_1,x_2,x_3] - limbs 64 [z_0,z_1,z_2,z_3]**2) *
                (limbs 64 [x_0,x_1,x_2,x_3] + limbs 64 [z_0,z_1,z_2,z_3]**2))**2 -
           8 * limbs 64 [x_0, x_1, x_2, x_3] * limbs 64 [y_0,y_1,y_2,y_3]**2))
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [ precondition, all ghosts, cuts [11] ]
 && limbs 64 [L0xc0000b1670, L0xc0000b1678, L0xc0000b1680, L0xc0000b1688] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [ precondition, cuts [11] ];

(* mov    %r10,%r14                                #! PC = 0x4c989d *)
mov r14 r10;
(* mov    %r11,%r15                                #! PC = 0x4c98a0 *)
mov r15 r11;
(* mov    %r12,%rdi                                #! PC = 0x4c98a3 *)
mov rdi r12;
(* mov    %r13,%rsi                                #! PC = 0x4c98a6 *)
mov rsi r13;
(* mov    0x60(%rsp),%r10                          #! EA = L0xc0000b1428; Value = 0x1928b899203a7c8f; PC = 0x4c98a9 *)
mov r10 L0xc0000b1428;
(* mov    0x68(%rsp),%r11                          #! EA = L0xc0000b1430; Value = 0xcd2c112ab52596ea; PC = 0x4c98ae *)
mov r11 L0xc0000b1430;
(* mov    0x70(%rsp),%r12                          #! EA = L0xc0000b1438; Value = 0x124a5245dbd86d9a; PC = 0x4c98b3 *)
mov r12 L0xc0000b1438;
(* mov    0x78(%rsp),%r13                          #! EA = L0xc0000b1440; Value = 0x13967097699414d9; PC = 0x4c98b8 *)
mov r13 L0xc0000b1440;
(* #call   0x4c8040 <p256SubInternal>              #! PC = 0x4c98bd *)
#call   0x4c8040 <p256SubInternal>              #! 0x4c98bd = 0x4c98bd;
(* #! -> SP = 0xc0000b13c0 *)
#! 0xc0000b13c0 = 0xc0000b13c0;
(* xor    %rax,%rax                                #! PC = 0x4c8040 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* sub    %r14,%r10                                #! PC = 0x4c8043 *)
subb carry r10 r10 r14;
(* sbb    %r15,%r11                                #! PC = 0x4c8046 *)
sbbs carry r11 r11 r15 carry;
(* sbb    %rdi,%r12                                #! PC = 0x4c8049 *)
sbbs carry r12 r12 rdi carry;
(* sbb    %rsi,%r13                                #! PC = 0x4c804c *)
sbbs carry0 r13 r13 rsi carry;
(* sbb    $0x0,%rax                                #! PC = 0x4c804f *)
sbbs carry rax rax 0x0@uint64 carry0;
(* mov    %r10,%rbx                                #! PC = 0x4c8053 *)
mov rbx r10;
(* mov    %r11,%rcx                                #! PC = 0x4c8056 *)
mov rcx r11;
(* mov    %r12,%r8                                 #! PC = 0x4c8059 *)
mov r8 r12;
(* mov    %r13,%r9                                 #! PC = 0x4c805c *)
mov r9 r13;
(* add    $0xffffffffffffffff,%r10                 #! PC = 0x4c805f *)
adds carry r10 r10 0xffffffffffffffff@uint64;
(* adc    0x71a8e(%rip),%r11        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c8063 *)
adcs carry r11 r11 L0x539af8 carry;
(* adc    $0x0,%r12                                #! PC = 0x4c806a *)
adcs carry r12 r12 0x0@uint64 carry;
(* adc    0x71a8b(%rip),%r13        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c806e *)
adcs dc0 r13 r13 L0x539b00 carry;
(* and    $0x1,%rax                                #! PC = 0x4c8075 *)
and rax@uint64 rax 0x1@uint64;
subc zero dc 0@uint64 rax;



#assert true && (zero + 1@1)*(carry0)+(zero)*(carry0+1@1) = 1@1;
#assume zero=carry0+1  && true;
assert true && zero = 1@1 - carry0;
assume zero = 1 - carry0 && true;


#assert true && (dc0 - 1@1)*(carry0 - 0@1) = 0@1;
#assume (dc0- 1)*(carry0 - 0)= 0 && true;
assert true && (1@1 - dc0) * carry0 = 0@1;
assume (1 - dc0) * carry0 = 0 && true;
(* cmove  %rbx,%r10                                #! PC = 0x4c8079 *)
cmov r10 zero rbx r10;
(* cmove  %rcx,%r11                                #! PC = 0x4c807d *)
cmov r11 zero rcx r11;
(* cmove  %r8,%r12                                 #! PC = 0x4c8081 *)
cmov r12 zero r8 r12;
(* cmove  %r9,%r13                                 #! PC = 0x4c8085 *)
cmov r13 zero r9 r13;
(* #! <- SP = 0xc0000b13c0 *)
#! 0xc0000b13c0 = 0xc0000b13c0;
(* #ret                                            #! PC = 0x4c8089 *)
#ret                                            #! 0x4c8089 = 0x4c8089;

(* 14 *)
cut eqmod (limbs 64 [r10, r11, r12, r13])
          (2**256 *
          (4 * limbs 64 [x_0, x_1, x_2, x_3] * limbs 64 [y_0,y_1,y_2,y_3]**2 -
           9 * ((limbs 64 [x_0,x_1,x_2,x_3] - limbs 64 [z_0,z_1,z_2,z_3]**2) *
                (limbs 64 [x_0,x_1,x_2,x_3] + limbs 64 [z_0,z_1,z_2,z_3]**2))**2 +
           8 * limbs 64 [x_0, x_1, x_2, x_3] * limbs 64 [y_0,y_1,y_2,y_3]**2))
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [ precondition, all ghosts, cuts [10] ]
 && limbs 64 [r10, r11, r12, r13] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [ precondition, cuts [10] ];

(* mov    0x80(%rsp),%r14                          #! EA = L0xc0000b1448; Value = 0xfdcb6128f0f5179a; PC = 0x4c98c2 *)
mov r14 L0xc0000b1448;
(* mov    0x88(%rsp),%r15                          #! EA = L0xc0000b1450; Value = 0x147bf8fb96d07211; PC = 0x4c98ca *)
mov r15 L0xc0000b1450;
(* mov    0x90(%rsp),%rdi                          #! EA = L0xc0000b1458; Value = 0x517075402127fdef; PC = 0x4c98d2 *)
mov rdi L0xc0000b1458;
(* mov    0x98(%rsp),%rsi                          #! EA = L0xc0000b1460; Value = 0xbbd8b9294164c5c9; PC = 0x4c98da *)
mov rsi L0xc0000b1460;
(* #call   0x4c80a0 <p256MulInternal>              #! PC = 0x4c98e2 *)
#call   0x4c80a0 <p256MulInternal>              #! 0x4c98e2 = 0x4c98e2;
(* #! -> SP = 0xc0000b13c0 *)
#! 0xc0000b13c0 = 0xc0000b13c0;
(* sub    $0x10,%rsp                               #! PC = 0x4c80a0 *)
#subb carry rsp rsp 0x10@uint64;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0xc0000b13b8; PC = 0x4c80a4 *)
mov L0xc0000b13b8 rbp;
(* lea    0x8(%rsp),%rbp                           #! PC = 0x4c80a9 *)
#lea    %%EA,%%rbp                           #! 0x4c80a9 = 0x4c80a9;
(* mov    %r10,%rax                                #! PC = 0x4c80ae *)
mov rax r10;
(* mul    %r14                                     #! PC = 0x4c80b1 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* mov    %rax,%rbx                                #! PC = 0x4c80b4 *)
mov rbx rax;
(* mov    %rdx,%rcx                                #! PC = 0x4c80b7 *)
mov rcx rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80ba *)
mov rax r10;
(* mul    %r15                                     #! PC = 0x4c80bd *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%rcx                                #! PC = 0x4c80c0 *)
adds carry rcx rcx rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80c3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c80c7 *)
mov r8 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80ca *)
mov rax r10;
(* mul    %rdi                                     #! PC = 0x4c80cd *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c80d0 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80d3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c80d7 *)
mov r9 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80da *)
mov rax r10;
(* mul    %rsi                                     #! PC = 0x4c80dd *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c80e0 *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80e3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r10                                #! PC = 0x4c80e7 *)
mov r10 rdx;
(* mov    %r11,%rax                                #! PC = 0x4c80ea *)
mov rax r11;
(* mul    %r14                                     #! PC = 0x4c80ed *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%rcx                                #! PC = 0x4c80f0 *)
adds carry rcx rcx rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80f3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c80f7 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c80fa *)
mov rax r11;
(* mul    %r15                                     #! PC = 0x4c80fd *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r8                                 #! PC = 0x4c8100 *)
adds carry r8 r8 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8103 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r8                                 #! PC = 0x4c8107 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c810a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c810e *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8111 *)
mov rax r11;
(* mul    %rdi                                     #! PC = 0x4c8114 *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r9                                 #! PC = 0x4c8117 *)
adds carry r9 r9 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c811a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r9                                 #! PC = 0x4c811e *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8121 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8125 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8128 *)
mov rax r11;
(* mul    %rsi                                     #! PC = 0x4c812b *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c812e *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8131 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c8135 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8138 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r11                                #! PC = 0x4c813c *)
mov r11 rdx;
(* mov    %r12,%rax                                #! PC = 0x4c813f *)
mov rax r12;
(* mul    %r14                                     #! PC = 0x4c8142 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c8145 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8148 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c814c *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c814f *)
mov rax r12;
(* mul    %r15                                     #! PC = 0x4c8152 *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r9                                 #! PC = 0x4c8155 *)
adds carry r9 r9 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8158 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r9                                 #! PC = 0x4c815c *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c815f *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8163 *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c8166 *)
mov rax r12;
(* mul    %rdi                                     #! PC = 0x4c8169 *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c816c *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c816f *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c8173 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8176 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c817a *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c817d *)
mov rax r12;
(* mul    %rsi                                     #! PC = 0x4c8180 *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r11                                #! PC = 0x4c8183 *)
adds carry r11 r11 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8186 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r11                                #! PC = 0x4c818a *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c818d *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r12                                #! PC = 0x4c8191 *)
mov r12 rdx;
(* mov    %r13,%rax                                #! PC = 0x4c8194 *)
mov rax r13;
(* mul    %r14                                     #! PC = 0x4c8197 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c819a *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c819d *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81a1 *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81a4 *)
mov rax r13;
(* mul    %r15                                     #! PC = 0x4c81a7 *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c81aa *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81ad *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c81b1 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81b4 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81b8 *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81bb *)
mov rax r13;
(* mul    %rdi                                     #! PC = 0x4c81be *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r11                                #! PC = 0x4c81c1 *)
adds carry r11 r11 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81c4 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r11                                #! PC = 0x4c81c8 *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81cb *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81cf *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81d2 *)
mov rax r13;
(* mul    %rsi                                     #! PC = 0x4c81d5 *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r12                                #! PC = 0x4c81d8 *)
adds carry r12 r12 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81db *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r12                                #! PC = 0x4c81df *)
adds carry r12 r12 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81e2 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r13                                #! PC = 0x4c81e6 *)
mov r13 rdx;
(* mov    %rbx,%rax                                #! PC = 0x4c81e9 *)
mov rax rbx;
(* mov    %rbx,%rbp                                #! PC = 0x4c81ec *)
mov rbp rbx;
(* shl    $0x20,%rbx                               #! PC = 0x4c81ef *)
split ddc rbx rbx (64-0x20);
shl rbx rbx 0x20@uint64;
(* mulq   0x71906(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c81f3 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c81fa *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rbx,%rcx                                #! PC = 0x4c81fe *)
adds carry rcx rcx rbx;
(* adc    %rbp,%r8                                 #! PC = 0x4c8201 *)
adcs carry r8 r8 rbp carry;
(* adc    %rax,%r9                                 #! PC = 0x4c8204 *)
adcs carry r9 r9 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8207 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbx                                #! PC = 0x4c820b *)
mov rbx rdx;
(* mov    %rcx,%rax                                #! PC = 0x4c820e *)
mov rax rcx;
(* mov    %rcx,%rbp                                #! PC = 0x4c8211 *)
mov rbp rcx;
(* shl    $0x20,%rcx                               #! PC = 0x4c8214 *)
split ddc rcx rcx (64-0x20);
shl rcx rcx 0x20@uint64;
(* mulq   0x718e1(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8218 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c821f *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rcx,%r8                                 #! PC = 0x4c8223 *)
adds carry r8 r8 rcx;
(* adc    %rbp,%r9                                 #! PC = 0x4c8226 *)
adcs carry r9 r9 rbp carry;
(* adc    %rax,%rbx                                #! PC = 0x4c8229 *)
adcs carry rbx rbx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c822c *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rcx                                #! PC = 0x4c8230 *)
mov rcx rdx;
(* mov    %r8,%rax                                 #! PC = 0x4c8233 *)
mov rax r8;
(* mov    %r8,%rbp                                 #! PC = 0x4c8236 *)
mov rbp r8;
(* shl    $0x20,%r8                                #! PC = 0x4c8239 *)
split ddc r8 r8 (64-0x20);
shl r8 r8 0x20@uint64;
(* mulq   0x718bc(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c823d *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8244 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r8,%r9                                  #! PC = 0x4c8248 *)
adds carry r9 r9 r8;
(* adc    %rbp,%rbx                                #! PC = 0x4c824b *)
adcs carry rbx rbx rbp carry;
(* adc    %rax,%rcx                                #! PC = 0x4c824e *)
adcs carry rcx rcx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8251 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c8255 *)
mov r8 rdx;
(* mov    %r9,%rax                                 #! PC = 0x4c8258 *)
mov rax r9;
(* mov    %r9,%rbp                                 #! PC = 0x4c825b *)
mov rbp r9;
(* shl    $0x20,%r9                                #! PC = 0x4c825e *)
split ddc r9 r9 (64-0x20);
shl r9 r9 0x20@uint64;
(* mulq   0x71897(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8262 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8269 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r9,%rbx                                 #! PC = 0x4c826d *)
adds carry rbx rbx r9;
(* adc    %rbp,%rcx                                #! PC = 0x4c8270 *)
adcs carry rcx rcx rbp carry;
(* adc    %rax,%r8                                 #! PC = 0x4c8273 *)
adcs carry r8 r8 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8276 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c827a *)
mov r9 rdx;
(* mov    $0x0,%rbp                                #! PC = 0x4c827d *)
mov rbp 0x0@uint64;
(* adc    %rbx,%r10                                #! PC = 0x4c8284 *)
adcs carry r10 r10 rbx carry;
(* adc    %rcx,%r11                                #! PC = 0x4c8287 *)
adcs carry r11 r11 rcx carry;
(* adc    %r8,%r12                                 #! PC = 0x4c828a *)
adcs carry r12 r12 r8 carry;
(* adc    %r9,%r13                                 #! PC = 0x4c828d *)
adcs carry r13 r13 r9 carry;
(* adc    $0x0,%rbp                                #! PC = 0x4c8290 *)
adcs carry rbp rbp 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r10,%rbx                                #! PC = 0x4c8294 *)
mov rbx r10;
(* mov    %r11,%rcx                                #! PC = 0x4c8297 *)
mov rcx r11;
(* mov    %r12,%r8                                 #! PC = 0x4c829a *)
mov r8 r12;
(* mov    %r13,%r9                                 #! PC = 0x4c829d *)
mov r9 r13;

ghost r10h@uint64, r11h@uint64, r12h@uint64, r13h@uint64, rbph@uint64 :
      and [r10h=r10, r11h=r11, r12h=r12, r13h=r13, rbph=rbp]
   && and [r10h=r10, r11h=r11, r12h=r12, r13h=r13, rbph=rbp];

(* sub    $0xffffffffffffffff,%r10                 #! PC = 0x4c82a0 *)
subb carry r10 r10 0xffffffffffffffff@uint64;
(* sbb    0x7184d(%rip),%r11        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c82a4 *)
sbbs carry r11 r11 L0x539af8 carry;
(* sbb    $0x0,%r12                                #! PC = 0x4c82ab *)
sbbs carry r12 r12 0x0@uint64 carry;
(* sbb    0x7184a(%rip),%r13        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c82af *)
sbbs carry r13 r13 L0x539b00 carry;
(* sbb    $0x0,%rbp                                #! PC = 0x4c82b6 *)
sbbs carry rbp rbp 0x0@uint64 carry;
(* cmovb  %rbx,%r10                                #! PC = 0x4c82ba *)
cmov r10 carry rbx r10;
(* cmovb  %rcx,%r11                                #! PC = 0x4c82be *)
cmov r11 carry rcx r11;
(* cmovb  %r8,%r12                                 #! PC = 0x4c82c2 *)
cmov r12 carry r8 r12;
(* cmovb  %r9,%r13                                 #! PC = 0x4c82c6 *)
cmov r13 carry r9 r13;

assert true &&
       eqmod (limbs 64 [r10, r11, r12, r13, 0@64])
             (limbs 64 [r10h, r11h, r12h, r13h, rbph])
             (limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64, 0@64]);
assume eqmod (limbs 64 [r10, r11, r12, r13, 0])
             (limbs 64 [r10h, r11h, r12h, r13h, rbph])
             (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3, 0]) && true;

(* mov    0x8(%rsp),%rbp                           #! EA = L0xc0000b13b8; Value = 0x000000c0000b14c8; PC = 0x4c82ca *)
mov rbp L0xc0000b13b8;
(* add    $0x10,%rsp                               #! PC = 0x4c82cf *)
#adds carry rsp rsp 0x10@uint64;
(* #! <- SP = 0xc0000b13c0 *)
#! 0xc0000b13c0 = 0xc0000b13c0;
(* #ret                                            #! PC = 0x4c82d3 *)
#ret                                            #! 0x4c82d3 = 0x4c82d3;

(* 15 *)
cut eqmod (limbs 64 [r10, r11, r12, r13])
          (2**256 *
          3 * (limbs 64 [x_0,x_1,x_2,x_3] - limbs 64 [z_0,z_1,z_2,z_3]**2) *
              (limbs 64 [x_0,x_1,x_2,x_3] + limbs 64 [z_0,z_1,z_2,z_3]**2) *
          (4 * limbs 64 [x_0, x_1, x_2, x_3] * limbs 64 [y_0,y_1,y_2,y_3]**2 -
           9 * ((limbs 64 [x_0,x_1,x_2,x_3] - limbs 64 [z_0,z_1,z_2,z_3]**2) *
                (limbs 64 [x_0,x_1,x_2,x_3] + limbs 64 [z_0,z_1,z_2,z_3]**2))**2 +
           8 * limbs 64 [x_0, x_1, x_2, x_3] * limbs 64 [y_0,y_1,y_2,y_3]**2))
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [ precondition, all ghosts, cuts [6] ]
 && limbs 64 [r10, r11, r12, r13] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [ precondition, cuts [6] ];

(* mov    0x20(%rsp),%r14                          #! EA = L0xc0000b13e8; Value = 0x62396080983e10f3; PC = 0x4c98e7 *)
mov r14 L0xc0000b13e8;
(* mov    0x28(%rsp),%r15                          #! EA = L0xc0000b13f0; Value = 0x1ee88b10ad1d9ffb; PC = 0x4c98ec *)
mov r15 L0xc0000b13f0;
(* mov    0x30(%rsp),%rdi                          #! EA = L0xc0000b13f8; Value = 0xb5f7aa6cdaf11a36; PC = 0x4c98f1 *)
mov rdi L0xc0000b13f8;
(* mov    0x38(%rsp),%rsi                          #! EA = L0xc0000b1400; Value = 0x0de6b8ccc18402c9; PC = 0x4c98f6 *)
mov rsi L0xc0000b1400;
(* #call   0x4c8040 <p256SubInternal>              #! PC = 0x4c98fb *)
#call   0x4c8040 <p256SubInternal>              #! 0x4c98fb = 0x4c98fb;
(* #! -> SP = 0xc0000b13c0 *)
#! 0xc0000b13c0 = 0xc0000b13c0;
(* xor    %rax,%rax                                #! PC = 0x4c8040 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* sub    %r14,%r10                                #! PC = 0x4c8043 *)
subb carry r10 r10 r14;
(* sbb    %r15,%r11                                #! PC = 0x4c8046 *)
sbbs carry r11 r11 r15 carry;
(* sbb    %rdi,%r12                                #! PC = 0x4c8049 *)
sbbs carry r12 r12 rdi carry;
(* sbb    %rsi,%r13                                #! PC = 0x4c804c *)
sbbs carry0 r13 r13 rsi carry;
(* sbb    $0x0,%rax                                #! PC = 0x4c804f *)
sbbs carry rax rax 0x0@uint64 carry0;
(* mov    %r10,%rbx                                #! PC = 0x4c8053 *)
mov rbx r10;
(* mov    %r11,%rcx                                #! PC = 0x4c8056 *)
mov rcx r11;
(* mov    %r12,%r8                                 #! PC = 0x4c8059 *)
mov r8 r12;
(* mov    %r13,%r9                                 #! PC = 0x4c805c *)
mov r9 r13;
(* add    $0xffffffffffffffff,%r10                 #! PC = 0x4c805f *)
adds carry r10 r10 0xffffffffffffffff@uint64;
(* adc    0x71a8e(%rip),%r11        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c8063 *)
adcs carry r11 r11 L0x539af8 carry;
(* adc    $0x0,%r12                                #! PC = 0x4c806a *)
adcs carry r12 r12 0x0@uint64 carry;
(* adc    0x71a8b(%rip),%r13        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c806e *)
adcs dc0 r13 r13 L0x539b00 carry;
(* and    $0x1,%rax                                #! PC = 0x4c8075 *)
and rax@uint64 rax 0x1@uint64;
subc zero dc 0@uint64 rax;



#assert true && (zero + 1@1)*(carry0)+(zero)*(carry0+1@1) = 1@1;
#assume zero=carry0+1  && true;
assert true && zero = 1@1 - carry0;
assume zero = 1 - carry0 && true;

#assert true && (dc0 - 1@1)*(carry0 - 0@1) = 0@1;
#assume (dc0- 1)*(carry0 - 0)= 0 && true;
assert true && (1@1 - dc0) * carry0 = 0@1;
assume (1 - dc0) * carry0 = 0 && true;
(* cmove  %rbx,%r10                                #! PC = 0x4c8079 *)
cmov r10 zero rbx r10;
(* cmove  %rcx,%r11                                #! PC = 0x4c807d *)
cmov r11 zero rcx r11;
(* cmove  %r8,%r12                                 #! PC = 0x4c8081 *)
cmov r12 zero r8 r12;
(* cmove  %r9,%r13                                 #! PC = 0x4c8085 *)
cmov r13 zero r9 r13;
(* #! <- SP = 0xc0000b13c0 *)
#! 0xc0000b13c0 = 0xc0000b13c0;
(* #ret                                            #! PC = 0x4c8089 *)
#ret                                            #! 0x4c8089 = 0x4c8089;
(* mov    0xe0(%rsp),%rax                          #! EA = L0xc0000b14a8; Value = 0x000000c0000b1670; PC = 0x4c9900 *)
#mov rax L0xc0000b14a8;
(* mov    %r10,0x20(%rax)                          #! EA = L0xc0000b1690; PC = 0x4c9908 *)
mov L0xc0000b1690 r10;
(* mov    %r11,0x28(%rax)                          #! EA = L0xc0000b1698; PC = 0x4c990c *)
mov L0xc0000b1698 r11;
(* mov    %r12,0x30(%rax)                          #! EA = L0xc0000b16a0; PC = 0x4c9910 *)
mov L0xc0000b16a0 r12;
(* mov    %r13,0x38(%rax)                          #! EA = L0xc0000b16a8; PC = 0x4c9914 *)
mov L0xc0000b16a8 r13;
(* movq   $0x0,0xe0(%rsp)                          #! EA = L0xc0000b14a8; PC = 0x4c9918 *)
#movq   $0x0,%%L0xc0000b14a8                          #! L0xc0000b14a8 = L0xc0000b14a8; 0x4c9918 = 0x4c9918;
(* mov    0x100(%rsp),%rbp                         #! EA = L0xc0000b14c8; Value = 0x000000c0000b1cd0; PC = 0x4c9924 *)
#mov rbp L0xc0000b14c8;
(* add    $0x108,%rsp                              #! PC = 0x4c992c *)
#adds carry rsp rsp 0x108@uint64;
(* #! <- SP = 0xc0000b14d0 *)
#! 0xc0000b14d0 = 0xc0000b14d0;
(* #ret                                            #! PC = 0x4c9933 *)
#ret                                            #! 0x4c9933 = 0x4c9933;

(* 16 *)
cut eqmod (limbs 64 [L0xc0000b1690, L0xc0000b1698, L0xc0000b16a0, L0xc0000b16a8])
          (2**256 *
          (3 * (limbs 64 [x_0,x_1,x_2,x_3] - limbs 64 [z_0,z_1,z_2,z_3]**2) *
               (limbs 64 [x_0,x_1,x_2,x_3] + limbs 64 [z_0,z_1,z_2,z_3]**2) *
           (4 * limbs 64 [x_0, x_1, x_2, x_3] * limbs 64 [y_0,y_1,y_2,y_3]**2 -
            9 * ((limbs 64 [x_0,x_1,x_2,x_3] - limbs 64 [z_0,z_1,z_2,z_3]**2) *
                 (limbs 64 [x_0,x_1,x_2,x_3] + limbs 64 [z_0,z_1,z_2,z_3]**2))**2 +
            8 * limbs 64 [x_0, x_1, x_2, x_3] * limbs 64 [y_0,y_1,y_2,y_3]**2) -
            8 * limbs 64 [y_0,y_1,y_2,y_3]**4))
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [ precondition, all ghosts, cuts [9] ]
 && limbs 64 [L0xc0000b1690, L0xc0000b1698, L0xc0000b16a0, L0xc0000b16a8] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [ precondition, cuts [9] ];

mov rx_0 L0xc0000b1670; mov rx_1 L0xc0000b1678;
mov rx_2 L0xc0000b1680; mov rx_3 L0xc0000b1688;
mov ry_0 L0xc0000b1690; mov ry_1 L0xc0000b1698;
mov ry_2 L0xc0000b16a0; mov ry_3 L0xc0000b16a8;
mov rz_0 L0xc0000b16b0; mov rz_1 L0xc0000b16b8;
mov rz_2 L0xc0000b16c0; mov rz_3 L0xc0000b16c8;


ghost X1@uint256, Y1@uint256, Z1@uint256, a@uint256:
  and [
    X1 = limbs 64 [x_0, x_1, x_2, x_3],
    Y1 = limbs 64 [y_0, y_1, y_2, y_3],
    Z1 = limbs 64 [z_0, z_1, z_2, z_3],
    a = -3
  ]
  &&
  true;

(*https://hyperelliptic.org/EFD/g1p/auto-shortw-jacobian-3.html#doubling-dbl-1998-cmo-2*)

ghost XX@uint256, YY@uint256, ZZ@uint256, S@uint256, 
      M@uint256, T@uint256, XR@uint256, YR@uint256, ZR@uint256:
  and [
      XX = X1 * X1,
      YY = Y1 * Y1,
      ZZ = Z1 * Z1,
      S = 4 * X1 * YY,
      M = 3*XX + a*ZZ**2,
      T = M * M - 2*S,
      XR = T,
      YR = M*(S-T) - 8*YY**2,
      ZR = 2*Y1*Z1
      ]
      && true;


{
  and [
    eqmod (limbs 64 [rx_0, rx_1, rx_2, rx_3])
    	  (2**256 * XR)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3]),
    eqmod (limbs 64 [ry_0, ry_1, ry_2, ry_3])
    	  (2**256 * YR)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3]),
    eqmod (limbs 64 [rz_0, rz_1, rz_2, rz_3])
    	  (2**256 * ZR)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])

]  prove with [ cuts [3, 13, 16] ]
&&
  and [limbs 64 [rx_0, rx_1, rx_2, rx_3] <u
       limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64],
       limbs 64 [ry_0, ry_1, ry_2, ry_3] <u
       limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64],
       limbs 64 [rz_0, rz_1, rz_2, rz_3] <u
       limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]]
  prove with [ cuts [3, 13, 16] ]
}

