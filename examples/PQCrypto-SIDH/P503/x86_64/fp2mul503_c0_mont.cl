(* on frege: -v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint fp2mul503_c0_mont.cl
Parsing Cryptoline file:		[OK]		0.010312 seconds
Checking well-formedness:		[OK]		0.001386 seconds
Transforming to SSA form:		[OK]		0.000539 seconds
Normalizing specification:		[OK]		0.001169 seconds
Rewriting assignments:			[OK]		0.000541 seconds
Verifying program safety:
	 Cut 0
	     Round 1 (0 safety conditions, timeout = 14400 seconds)
	 Overall			[OK]		0.000117 seconds
Verifying range assertions:		[OK]		19.520988 seconds
Verifying range specification:		[OK]		13.740058 seconds
Rewriting value-preserved casting:	[OK]		0.000161 seconds
Verifying algebraic assertions:		[OK]		0.000966 seconds
Verifying algebraic specification:	[OK]		0.230244 seconds
Verification result:			[OK]		33.507143 seconds
*)


(*
const uint64_t p503[NWORDS64_FIELD]              = { 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xABFFFFFFFFFFFFFF,
                                                     0x13085BDA2211E7A0, 0x1B9BF6C87B7E7DAF, 0x6045C6BDDA77A4D0, 0x004066F541811E1E };
const uint64_t p503x8[NWORDS64_FIELD]            = { 0xFFFFFFFFFFFFFFF8, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0x5FFFFFFFFFFFFFFF,
                                                     0x9842DED1108F3D05, 0xDCDFB643DBF3ED78, 0x022E35EED3BD2680, 0x020337AA0C08F0F3 };
const uint64_t p503p1[NWORDS64_FIELD]            = { 0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0xAC00000000000000,
                                                     0x13085BDA2211E7A0, 0x1B9BF6C87B7E7DAF, 0x6045C6BDDA77A4D0, 0x004066F541811E1E };
*)

const p503_0 = 0xFFFFFFFFFFFFFFFF
const p503_1 = 0xFFFFFFFFFFFFFFFF
const p503_2 = 0xFFFFFFFFFFFFFFFF
const p503_3 = 0xABFFFFFFFFFFFFFF
const p503_4 = 0x13085BDA2211E7A0
const p503_5 = 0x1B9BF6C87B7E7DAF
const p503_6 = 0x6045C6BDDA77A4D0
const p503_7 = 0x004066F541811E1E
const p503x8_0 = 0xFFFFFFFFFFFFFFF8
const p503x8_1 = 0xFFFFFFFFFFFFFFFF
const p503x8_2 = 0xFFFFFFFFFFFFFFFF
const p503x8_3 = 0x5FFFFFFFFFFFFFFF
const p503x8_4 = 0x9842DED1108F3D05
const p503x8_5 = 0xDCDFB643DBF3ED78
const p503x8_6 = 0x022E35EED3BD2680
const p503x8_7 = 0x020337AA0C08F0F3
const p503p1_0 = 0x0000000000000000
const p503p1_1 = 0x0000000000000000
const p503p1_2 = 0x0000000000000000
const p503p1_3 = 0xAC00000000000000
const p503p1_4 = 0x13085BDA2211E7A0
const p503p1_5 = 0x1B9BF6C87B7E7DAF
const p503p1_6 = 0x6045C6BDDA77A4D0
const p503p1_7 = 0x004066F541811E1E

proc main (a00@uint64, a01@uint64, a02@uint64, a03@uint64, a04@uint64, a05@uint64, a06@uint64, a07@uint64,
           a10@uint64, a11@uint64, a12@uint64, a13@uint64, a14@uint64, a15@uint64, a16@uint64, a17@uint64,
           b00@uint64, b01@uint64, b02@uint64, b03@uint64, b04@uint64, b05@uint64, b06@uint64, b07@uint64,
           b10@uint64, b11@uint64, b12@uint64, b13@uint64, b14@uint64, b15@uint64, b16@uint64, b17@uint64) =
{
  true
  &&
  and [
    limbs 64 [ a00, a01, a02, a03, a04, a05, a06, a07 ] <=u
      (2@512 * limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                          $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ] - 1@512),
    limbs 64 [ a10, a11, a12, a13, a14, a15, a16, a17 ] <=u
      (2@512 * limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                          $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ] - 1@512),
    limbs 64 [ b00, b01, b02, b03, b04, b05, b06, b07 ] <=u
      (2@512 * limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                          $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ] - 1@512),
    limbs 64 [ b10, b11, b12, b13, b14, b15, b16, b17 ] <=u
      (2@512 * limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                          $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ] - 1@512)
  ]
}

(* ===== Initialization ===== *)

mov L0x7fffffffdc90 a00;
mov L0x7fffffffdc98 a01;
mov L0x7fffffffdca0 a02;
mov L0x7fffffffdca8 a03;
mov L0x7fffffffdcb0 a04;
mov L0x7fffffffdcb8 a05;
mov L0x7fffffffdcc0 a06;
mov L0x7fffffffdcc8 a07;
mov L0x7fffffffdcd0 a10;
mov L0x7fffffffdcd8 a11;
mov L0x7fffffffdce0 a12;
mov L0x7fffffffdce8 a13;
mov L0x7fffffffdcf0 a14;
mov L0x7fffffffdcf8 a15;
mov L0x7fffffffdd00 a16;
mov L0x7fffffffdd08 a17;
mov L0x7fffffffdd10 b00;
mov L0x7fffffffdd18 b01;
mov L0x7fffffffdd20 b02;
mov L0x7fffffffdd28 b03;
mov L0x7fffffffdd30 b04;
mov L0x7fffffffdd38 b05;
mov L0x7fffffffdd40 b06;
mov L0x7fffffffdd48 b07;
mov L0x7fffffffdd50 b10;
mov L0x7fffffffdd58 b11;
mov L0x7fffffffdd60 b12;
mov L0x7fffffffdd68 b13;
mov L0x7fffffffdd70 b14;
mov L0x7fffffffdd78 b15;
mov L0x7fffffffdd80 b16;
mov L0x7fffffffdd88 b17;

mov L0x555555569380 $p503x8_0@uint64;
mov L0x555555569388 $p503x8_1@uint64;
mov L0x555555569398 $p503x8_3@uint64;
mov L0x5555555693a0 $p503x8_4@uint64;
mov L0x5555555693a8 $p503x8_5@uint64;
mov L0x5555555693b0 $p503x8_6@uint64;
mov L0x5555555693b8 $p503x8_7@uint64;

mov L0x555555569358 $p503p1_3@uint64;
mov L0x555555569360 $p503p1_4@uint64;
mov L0x555555569368 $p503p1_5@uint64;
mov L0x555555569370 $p503p1_6@uint64;
mov L0x555555569378 $p503p1_7@uint64;

nondet rdx@uint64;

(* ===== Program ===== *)

(* #! -> SP = 0x7fffffffd8c8 *)
#! 0x7fffffffd8c8 = 0x7fffffffd8c8;
(* #jmpq   0x555555562889 <fp2mul503_c0_asm>       #! PC = 0x555555562534 *)
#jmpq   0x555555562889 <fp2mul503_c0_asm>       #! 0x555555562534 = 0x555555562534;
(* mov    %rdx,%rcx                                #! PC = 0x55555556288b *)
mov rcx rdx;
(* mov    0x6aeb(%rip),%r8        # 0x555555569380 <p503x8>#! EA = L0x555555569380; Value = 0xfffffffffffffff8; PC = 0x55555556288e *)
mov r8 L0x555555569380;
(* mov    0x6aec(%rip),%r9        # 0x555555569388 <p503x8+8>#! EA = L0x555555569388; Value = 0xffffffffffffffff; PC = 0x555555562895 *)
mov r9 L0x555555569388;
(* mov    0x6af5(%rip),%r11        # 0x555555569398 <p503x8+24>#! EA = L0x555555569398; Value = 0x5fffffffffffffff; PC = 0x55555556289c *)
mov r11 L0x555555569398;
(* mov    0x6af6(%rip),%r12        # 0x5555555693a0 <p503x8+32>#! EA = L0x5555555693a0; Value = 0x9842ded1108f3d05; PC = 0x5555555628a3 *)
mov r12 L0x5555555693a0;
(* mov    0x40(%rsi),%rax                          #! EA = L0x7fffffffdd50; Value = 0xcdcf719aa0d5d773; PC = 0x5555555628aa *)
mov rax L0x7fffffffdd50;
(* mov    0x48(%rsi),%rdx                          #! EA = L0x7fffffffdd58; Value = 0xb2cc3d1c22e94437; PC = 0x5555555628ae *)
mov rdx L0x7fffffffdd58;
(* mov    %r9,%r10                                 #! PC = 0x5555555628b2 *)
mov r10 r9;
(* sub    %rax,%r8                                 #! PC = 0x5555555628b5 *)
subb carry r8 r8 rax;
(* sbb    %rdx,%r9                                 #! PC = 0x5555555628ba *)
sbbs carry r9 r9 rdx carry;
(* mov    0x50(%rsi),%rax                          #! EA = L0x7fffffffdd60; Value = 0xb1d616dd2ee9db10; PC = 0x5555555628bd *)
mov rax L0x7fffffffdd60;
(* mov    0x58(%rsi),%rdx                          #! EA = L0x7fffffffdd68; Value = 0x689a77a2f3f780fa; PC = 0x5555555628c1 *)
mov rdx L0x7fffffffdd68;
(* sbb    %rax,%r10                                #! PC = 0x5555555628c5 *)
sbbs carry r10 r10 rax carry;
(* sbb    %rdx,%r11                                #! PC = 0x5555555628ca *)
sbbs carry r11 r11 rdx carry;
(* mov    0x60(%rsi),%rax                          #! EA = L0x7fffffffdd70; Value = 0xb34c6e80eb363132; PC = 0x5555555628cd *)
mov rax L0x7fffffffdd70;
(* mov    0x68(%rsi),%rdx                          #! EA = L0x7fffffffdd78; Value = 0xabf8fb696e5c7470; PC = 0x5555555628d1 *)
mov rdx L0x7fffffffdd78;
(* mov    %r8,(%rcx)                               #! EA = L0x7fffffffd8d0; PC = 0x5555555628d5 *)
mov L0x7fffffffd8d0 r8;
(* mov    %r9,0x8(%rcx)                            #! EA = L0x7fffffffd8d8; PC = 0x5555555628d8 *)
mov L0x7fffffffd8d8 r9;
(* mov    0x6ac5(%rip),%r13        # 0x5555555693a8 <p503x8+40>#! EA = L0x5555555693a8; Value = 0xdcdfb643dbf3ed78; PC = 0x5555555628dc *)
mov r13 L0x5555555693a8;
(* mov    0x6ac6(%rip),%r14        # 0x5555555693b0 <p503x8+48>#! EA = L0x5555555693b0; Value = 0x022e35eed3bd2680; PC = 0x5555555628e3 *)
mov r14 L0x5555555693b0;
(* sbb    %rax,%r12                                #! PC = 0x5555555628ea *)
sbbs carry r12 r12 rax carry;
(* sbb    %rdx,%r13                                #! PC = 0x5555555628ef *)
sbbs carry r13 r13 rdx carry;
(* mov    0x70(%rsi),%rax                          #! EA = L0x7fffffffdd80; Value = 0xe5d96cd4bbaa54e9; PC = 0x5555555628f2 *)
mov rax L0x7fffffffdd80;
(* mov    0x78(%rsi),%rdx                          #! EA = L0x7fffffffdd88; Value = 0x002ccee91454cc5d; PC = 0x5555555628f6 *)
mov rdx L0x7fffffffdd88;
(* mov    0x6ab7(%rip),%r15        # 0x5555555693b8 <p503x8+56>#! EA = L0x5555555693b8; Value = 0x020337aa0c08f0f3; PC = 0x5555555628fa *)
mov r15 L0x5555555693b8;
(* sbb    %rax,%r14                                #! PC = 0x555555562901 *)
sbbs carry r14 r14 rax carry;
(* sbb    %rdx,%r15                                #! PC = 0x555555562904 *)
sbbs carry r15 r15 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r10,0x10(%rcx)                          #! EA = L0x7fffffffd8e0; PC = 0x555555562907 *)
mov L0x7fffffffd8e0 r10;
(* mov    (%rsi),%rdx                              #! EA = L0x7fffffffdd10; Value = 0x4b04287c96128413; PC = 0x55555556290b *)
mov rdx L0x7fffffffdd10;
(* mulx   (%rdi),%r8,%r9                           #! EA = L0x7fffffffdc90; Value = 0xdf0a0ac0afcd1683; PC = 0x55555556290e *)
mull r9 r8 L0x7fffffffdc90 rdx;
(* mov    %r11,0x18(%rcx)                          #! EA = L0x7fffffffd8e8; PC = 0x555555562913 *)
mov L0x7fffffffd8e8 r11;
(* xor    %rax,%rax                                #! PC = 0x555555562917 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x8(%rdi),%r11,%r10                      #! EA = L0x7fffffffdc98; Value = 0x45f7c85c86f95016; PC = 0x55555556291a *)
mull r10 r11 L0x7fffffffdc98 rdx;
(* mov    %r12,0x20(%rcx)                          #! EA = L0x7fffffffd8f0; PC = 0x555555562920 *)
mov L0x7fffffffd8f0 r12;
(* adcx   %r11,%r9                                 #! PC = 0x555555562924 *)
adcs carry r9 r9 r11 carry;
(* mulx   0x10(%rdi),%r12,%r11                     #! EA = L0x7fffffffdca0; Value = 0xf06e02a8386b9c1f; PC = 0x55555556292a *)
mull r11 r12 L0x7fffffffdca0 rdx;
(* mov    %r13,0x28(%rcx)                          #! EA = L0x7fffffffd8f8; PC = 0x555555562930 *)
mov L0x7fffffffd8f8 r13;
(* adcx   %r12,%r10                                #! PC = 0x555555562934 *)
adcs carry r10 r10 r12 carry;
(* mulx   0x18(%rdi),%r13,%r12                     #! EA = L0x7fffffffdca8; Value = 0xcfcc1e46f8785dfa; PC = 0x55555556293a *)
mull r12 r13 L0x7fffffffdca8 rdx;
(* mov    %r14,0x30(%rcx)                          #! EA = L0x7fffffffd900; PC = 0x555555562940 *)
mov L0x7fffffffd900 r14;
(* adcx   %r13,%r11                                #! PC = 0x555555562944 *)
adcs carry r11 r11 r13 carry;
(* mulx   0x20(%rdi),%r14,%r13                     #! EA = L0x7fffffffdcb0; Value = 0x0b10a71845db075f; PC = 0x55555556294a *)
mull r13 r14 L0x7fffffffdcb0 rdx;
(* mov    %r15,0x38(%rcx)                          #! EA = L0x7fffffffd908; PC = 0x555555562950 *)
mov L0x7fffffffd908 r15;
(* adcx   %r14,%r12                                #! PC = 0x555555562954 *)
adcs carry r12 r12 r14 carry;
(* mulx   0x28(%rdi),%rax,%r14                     #! EA = L0x7fffffffdcb8; Value = 0xc339b05bb57b2953; PC = 0x55555556295a *)
mull r14 rax L0x7fffffffdcb8 rdx;
(* adcx   %rax,%r13                                #! PC = 0x555555562961 *)
adcs carry r13 r13 rax carry;
(* mulx   0x30(%rdi),%rax,%r15                     #! EA = L0x7fffffffdcc0; Value = 0x9a2306af37dfc7ad; PC = 0x555555562967 *)
mull r15 rax L0x7fffffffdcc0 rdx;
(* adcx   %rax,%r14                                #! PC = 0x55555556296e *)
adcs carry r14 r14 rax carry;
(* mulx   0x38(%rdi),%rbx,%rax                     #! EA = L0x7fffffffdcc8; Value = 0x00281f35054d23a3; PC = 0x555555562974 *)
mull rax rbx L0x7fffffffdcc8 rdx;
(* mov    (%rcx),%rdx                              #! EA = L0x7fffffffd8d0; Value = 0x32308e655f2a2885; PC = 0x55555556297a *)
mov rdx L0x7fffffffd8d0;
(* adcx   %rbx,%r15                                #! PC = 0x55555556297d *)
adcs carry r15 r15 rbx carry;
(* adc    $0x0,%rax                                #! PC = 0x555555562983 *)
adcs carry rax rax 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    (%rcx),%rdx                              #! EA = L0x7fffffffd8d0; Value = 0x32308e655f2a2885; PC = 0x555555562987 *)
mov rdx L0x7fffffffd8d0;
(* xor    %rbx,%rbx                                #! PC = 0x55555556298a *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcd0; Value = 0x7a5c28ade7ac6139; PC = 0x55555556298d *)
mull rbx rbp L0x7fffffffdcd0 rdx;
(* adox   %rbp,%r8                                 #! PC = 0x555555562993 *)
adcs overflow r8 r8 rbp overflow;
(* adox   %rbx,%r9                                 #! PC = 0x555555562999 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcd8; Value = 0x0fa9a9c3dd08ab22; PC = 0x55555556299f *)
mull rbx rbp L0x7fffffffdcd8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x5555555629a5 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555629ab *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdce0; Value = 0xc21448a6b5b8229a; PC = 0x5555555629b1 *)
mull rbx rbp L0x7fffffffdce0 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x5555555629b7 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555629bd *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x58(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdce8; Value = 0x69f6c1db04a190d7; PC = 0x5555555629c3 *)
mull rbx rbp L0x7fffffffdce8 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x5555555629c9 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555629cf *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x60(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcf0; Value = 0x88199b4d604763dc; PC = 0x5555555629d5 *)
mull rbx rbp L0x7fffffffdcf0 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x5555555629db *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555629e1 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcf8; Value = 0xcb6d0788c13ac4e0; PC = 0x5555555629e7 *)
mull rbx rbp L0x7fffffffdcf8 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x5555555629ed *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x5555555629f3 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x70(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdd00; Value = 0xedd0195887a889e0; PC = 0x5555555629f9 *)
mull rbx rbp L0x7fffffffdd00 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x5555555629ff *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555562a05 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x78(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdd08; Value = 0x00347f65736c4dee; PC = 0x555555562a0b *)
mull rbx rbp L0x7fffffffdd08 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555562a11 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x555555562a17 *)
adcs overflow rax rax rbx overflow;
(* adc    $0x0,%rax                                #! PC = 0x555555562a1d *)
adcs carry rax rax 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r8,%rdx                                 #! PC = 0x555555562a21 *)
mov rdx r8;
(* xor    %rbx,%rbx                                #! PC = 0x555555562a24 *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x6928(%rip),%rbp,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x555555562a27 *)
mull rbx rbp L0x555555569358 rdx;
(* adox   %rbp,%r11                                #! PC = 0x555555562a30 *)
adcs overflow r11 r11 rbp overflow;
(* adox   %rbx,%r12                                #! PC = 0x555555562a36 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x691b(%rip),%rbp,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x555555562a3c *)
mull rbx rbp L0x555555569360 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555562a45 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555562a4b *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x690e(%rip),%rbp,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x555555562a51 *)
mull rbx rbp L0x555555569368 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555562a5a *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555562a60 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x6901(%rip),%rbp,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x555555562a66 *)
mull rbx rbp L0x555555569370 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555562a6f *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555562a75 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x68f4(%rip),%rbp,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x555555562a7b *)
mull rbx rbp L0x555555569378 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555562a84 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x555555562a8a *)
adcs overflow rax rax rbx overflow;
(* adc    $0x0,%rax                                #! PC = 0x555555562a90 *)
adcs carry rax rax 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x8(%rsi),%rdx                           #! EA = L0x7fffffffdd18; Value = 0x03499b9b29c2c29f; PC = 0x555555562a94 *)
mov rdx L0x7fffffffdd18;
(* xor    %r8,%r8                                  #! PC = 0x555555562a98 *)
mov r8 0@uint64;
clear carry;
clear overflow;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffdc90; Value = 0xdf0a0ac0afcd1683; PC = 0x555555562a9b *)
mull rbx rbp L0x7fffffffdc90 rdx;
(* adox   %rbp,%r9                                 #! PC = 0x555555562aa0 *)
adcs overflow r9 r9 rbp overflow;
(* adox   %rbx,%r10                                #! PC = 0x555555562aa6 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffdc98; Value = 0x45f7c85c86f95016; PC = 0x555555562aac *)
mull rbx rbp L0x7fffffffdc98 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555562ab2 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555562ab8 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdca0; Value = 0xf06e02a8386b9c1f; PC = 0x555555562abe *)
mull rbx rbp L0x7fffffffdca0 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555562ac4 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555562aca *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdca8; Value = 0xcfcc1e46f8785dfa; PC = 0x555555562ad0 *)
mull rbx rbp L0x7fffffffdca8 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555562ad6 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555562adc *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcb0; Value = 0x0b10a71845db075f; PC = 0x555555562ae2 *)
mull rbx rbp L0x7fffffffdcb0 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555562ae8 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555562aee *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcb8; Value = 0xc339b05bb57b2953; PC = 0x555555562af4 *)
mull rbx rbp L0x7fffffffdcb8 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555562afa *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555562b00 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcc0; Value = 0x9a2306af37dfc7ad; PC = 0x555555562b06 *)
mull rbx rbp L0x7fffffffdcc0 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555562b0c *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x555555562b12 *)
adcs overflow rax rax rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcc8; Value = 0x00281f35054d23a3; PC = 0x555555562b18 *)
mull rbx rbp L0x7fffffffdcc8 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x555555562b1e *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555562b24 *)
adcs overflow r8 r8 rbx overflow;
(* adc    $0x0,%r8                                 #! PC = 0x555555562b2a *)
adcs carry r8 r8 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x8(%rcx),%rdx                           #! EA = L0x7fffffffd8d8; Value = 0x4d33c2e3dd16bbc8; PC = 0x555555562b2e *)
mov rdx L0x7fffffffd8d8;
(* xor    %rbx,%rbx                                #! PC = 0x555555562b32 *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcd0; Value = 0x7a5c28ade7ac6139; PC = 0x555555562b35 *)
mull rbx rbp L0x7fffffffdcd0 rdx;
(* adox   %rbp,%r9                                 #! PC = 0x555555562b3b *)
adcs overflow r9 r9 rbp overflow;
(* adox   %rbx,%r10                                #! PC = 0x555555562b41 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcd8; Value = 0x0fa9a9c3dd08ab22; PC = 0x555555562b47 *)
mull rbx rbp L0x7fffffffdcd8 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555562b4d *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555562b53 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdce0; Value = 0xc21448a6b5b8229a; PC = 0x555555562b59 *)
mull rbx rbp L0x7fffffffdce0 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555562b5f *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555562b65 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x58(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdce8; Value = 0x69f6c1db04a190d7; PC = 0x555555562b6b *)
mull rbx rbp L0x7fffffffdce8 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555562b71 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555562b77 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x60(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcf0; Value = 0x88199b4d604763dc; PC = 0x555555562b7d *)
mull rbx rbp L0x7fffffffdcf0 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555562b83 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555562b89 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcf8; Value = 0xcb6d0788c13ac4e0; PC = 0x555555562b8f *)
mull rbx rbp L0x7fffffffdcf8 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555562b95 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555562b9b *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x70(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdd00; Value = 0xedd0195887a889e0; PC = 0x555555562ba1 *)
mull rbx rbp L0x7fffffffdd00 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555562ba7 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x555555562bad *)
adcs overflow rax rax rbx overflow;
(* mulx   0x78(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdd08; Value = 0x00347f65736c4dee; PC = 0x555555562bb3 *)
mull rbx rbp L0x7fffffffdd08 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x555555562bb9 *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555562bbf *)
adcs overflow r8 r8 rbx overflow;
(* adc    $0x0,%r8                                 #! PC = 0x555555562bc5 *)
adcs carry r8 r8 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r9,%rdx                                 #! PC = 0x555555562bc9 *)
mov rdx r9;
(* xor    %rbx,%rbx                                #! PC = 0x555555562bcc *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x6780(%rip),%rbp,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x555555562bcf *)
mull rbx rbp L0x555555569358 rdx;
(* adox   %rbp,%r12                                #! PC = 0x555555562bd8 *)
adcs overflow r12 r12 rbp overflow;
(* adox   %rbx,%r13                                #! PC = 0x555555562bde *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x6773(%rip),%rbp,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x555555562be4 *)
mull rbx rbp L0x555555569360 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555562bed *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555562bf3 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x6766(%rip),%rbp,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x555555562bf9 *)
mull rbx rbp L0x555555569368 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555562c02 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555562c08 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x6759(%rip),%rbp,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x555555562c0e *)
mull rbx rbp L0x555555569370 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555562c17 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x555555562c1d *)
adcs overflow rax rax rbx overflow;
(* mulx   0x674c(%rip),%rbp,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x555555562c23 *)
mull rbx rbp L0x555555569378 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x555555562c2c *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555562c32 *)
adcs overflow r8 r8 rbx overflow;
(* adc    $0x0,%r8                                 #! PC = 0x555555562c38 *)
adcs carry r8 r8 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x10(%rsi),%rdx                          #! EA = L0x7fffffffdd20; Value = 0x47f3fbaf1be723a5; PC = 0x555555562c3c *)
mov rdx L0x7fffffffdd20;
(* xor    %r9,%r9                                  #! PC = 0x555555562c40 *)
mov r9 0@uint64;
clear carry;
clear overflow;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffdc90; Value = 0xdf0a0ac0afcd1683; PC = 0x555555562c43 *)
mull rbx rbp L0x7fffffffdc90 rdx;
(* adox   %rbp,%r10                                #! PC = 0x555555562c48 *)
adcs overflow r10 r10 rbp overflow;
(* adox   %rbx,%r11                                #! PC = 0x555555562c4e *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffdc98; Value = 0x45f7c85c86f95016; PC = 0x555555562c54 *)
mull rbx rbp L0x7fffffffdc98 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555562c5a *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555562c60 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdca0; Value = 0xf06e02a8386b9c1f; PC = 0x555555562c66 *)
mull rbx rbp L0x7fffffffdca0 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555562c6c *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555562c72 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdca8; Value = 0xcfcc1e46f8785dfa; PC = 0x555555562c78 *)
mull rbx rbp L0x7fffffffdca8 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555562c7e *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555562c84 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcb0; Value = 0x0b10a71845db075f; PC = 0x555555562c8a *)
mull rbx rbp L0x7fffffffdcb0 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555562c90 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555562c96 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcb8; Value = 0xc339b05bb57b2953; PC = 0x555555562c9c *)
mull rbx rbp L0x7fffffffdcb8 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555562ca2 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x555555562ca8 *)
adcs overflow rax rax rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcc0; Value = 0x9a2306af37dfc7ad; PC = 0x555555562cae *)
mull rbx rbp L0x7fffffffdcc0 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x555555562cb4 *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555562cba *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcc8; Value = 0x00281f35054d23a3; PC = 0x555555562cc0 *)
mull rbx rbp L0x7fffffffdcc8 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555562cc6 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555562ccc *)
adcs overflow r9 r9 rbx overflow;
(* adc    $0x0,%r9                                 #! PC = 0x555555562cd2 *)
adcs carry r9 r9 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x10(%rcx),%rdx                          #! EA = L0x7fffffffd8e0; Value = 0x4e29e922d11624ef; PC = 0x555555562cd6 *)
mov rdx L0x7fffffffd8e0;
(* xor    %rbx,%rbx                                #! PC = 0x555555562cda *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcd0; Value = 0x7a5c28ade7ac6139; PC = 0x555555562cdd *)
mull rbx rbp L0x7fffffffdcd0 rdx;
(* adox   %rbp,%r10                                #! PC = 0x555555562ce3 *)
adcs overflow r10 r10 rbp overflow;
(* adox   %rbx,%r11                                #! PC = 0x555555562ce9 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcd8; Value = 0x0fa9a9c3dd08ab22; PC = 0x555555562cef *)
mull rbx rbp L0x7fffffffdcd8 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555562cf5 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555562cfb *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdce0; Value = 0xc21448a6b5b8229a; PC = 0x555555562d01 *)
mull rbx rbp L0x7fffffffdce0 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555562d07 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555562d0d *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x58(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdce8; Value = 0x69f6c1db04a190d7; PC = 0x555555562d13 *)
mull rbx rbp L0x7fffffffdce8 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555562d19 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555562d1f *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x60(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcf0; Value = 0x88199b4d604763dc; PC = 0x555555562d25 *)
mull rbx rbp L0x7fffffffdcf0 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555562d2b *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555562d31 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcf8; Value = 0xcb6d0788c13ac4e0; PC = 0x555555562d37 *)
mull rbx rbp L0x7fffffffdcf8 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555562d3d *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x555555562d43 *)
adcs overflow rax rax rbx overflow;
(* mulx   0x70(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdd00; Value = 0xedd0195887a889e0; PC = 0x555555562d49 *)
mull rbx rbp L0x7fffffffdd00 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x555555562d4f *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555562d55 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x78(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdd08; Value = 0x00347f65736c4dee; PC = 0x555555562d5b *)
mull rbx rbp L0x7fffffffdd08 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555562d61 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555562d67 *)
adcs overflow r9 r9 rbx overflow;
(* adc    $0x0,%r9                                 #! PC = 0x555555562d6d *)
adcs carry r9 r9 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r10,%rdx                                #! PC = 0x555555562d71 *)
mov rdx r10;
(* xor    %rbx,%rbx                                #! PC = 0x555555562d74 *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x65d8(%rip),%rbp,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x555555562d77 *)
mull rbx rbp L0x555555569358 rdx;
(* adox   %rbp,%r13                                #! PC = 0x555555562d80 *)
adcs overflow r13 r13 rbp overflow;
(* adox   %rbx,%r14                                #! PC = 0x555555562d86 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x65cb(%rip),%rbp,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x555555562d8c *)
mull rbx rbp L0x555555569360 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555562d95 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555562d9b *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x65be(%rip),%rbp,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x555555562da1 *)
mull rbx rbp L0x555555569368 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555562daa *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x555555562db0 *)
adcs overflow rax rax rbx overflow;
(* mulx   0x65b1(%rip),%rbp,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x555555562db6 *)
mull rbx rbp L0x555555569370 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x555555562dbf *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555562dc5 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x65a4(%rip),%rbp,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x555555562dcb *)
mull rbx rbp L0x555555569378 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555562dd4 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555562dda *)
adcs overflow r9 r9 rbx overflow;
(* adc    $0x0,%r9                                 #! PC = 0x555555562de0 *)
adcs carry r9 r9 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rsi),%rdx                          #! EA = L0x7fffffffdd28; Value = 0x9e2fe6f1cf439cec; PC = 0x555555562de4 *)
mov rdx L0x7fffffffdd28;
(* xor    %r10,%r10                                #! PC = 0x555555562de8 *)
mov r10 0@uint64;
clear carry;
clear overflow;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffdc90; Value = 0xdf0a0ac0afcd1683; PC = 0x555555562deb *)
mull rbx rbp L0x7fffffffdc90 rdx;
(* adox   %rbp,%r11                                #! PC = 0x555555562df0 *)
adcs overflow r11 r11 rbp overflow;
(* adox   %rbx,%r12                                #! PC = 0x555555562df6 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffdc98; Value = 0x45f7c85c86f95016; PC = 0x555555562dfc *)
mull rbx rbp L0x7fffffffdc98 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555562e02 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555562e08 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdca0; Value = 0xf06e02a8386b9c1f; PC = 0x555555562e0e *)
mull rbx rbp L0x7fffffffdca0 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555562e14 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555562e1a *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdca8; Value = 0xcfcc1e46f8785dfa; PC = 0x555555562e20 *)
mull rbx rbp L0x7fffffffdca8 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555562e26 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555562e2c *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcb0; Value = 0x0b10a71845db075f; PC = 0x555555562e32 *)
mull rbx rbp L0x7fffffffdcb0 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555562e38 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x555555562e3e *)
adcs overflow rax rax rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcb8; Value = 0xc339b05bb57b2953; PC = 0x555555562e44 *)
mull rbx rbp L0x7fffffffdcb8 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x555555562e4a *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555562e50 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcc0; Value = 0x9a2306af37dfc7ad; PC = 0x555555562e56 *)
mull rbx rbp L0x7fffffffdcc0 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555562e5c *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555562e62 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcc8; Value = 0x00281f35054d23a3; PC = 0x555555562e68 *)
mull rbx rbp L0x7fffffffdcc8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555562e6e *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555562e74 *)
adcs overflow r10 r10 rbx overflow;
(* adc    $0x0,%r10                                #! PC = 0x555555562e7a *)
adcs carry r10 r10 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rcx),%rdx                          #! EA = L0x7fffffffd8e8; Value = 0xf765885d0c087f05; PC = 0x555555562e7e *)
mov rdx L0x7fffffffd8e8;
(* xor    %rbx,%rbx                                #! PC = 0x555555562e82 *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcd0; Value = 0x7a5c28ade7ac6139; PC = 0x555555562e85 *)
mull rbx rbp L0x7fffffffdcd0 rdx;
(* adox   %rbp,%r11                                #! PC = 0x555555562e8b *)
adcs overflow r11 r11 rbp overflow;
(* adox   %rbx,%r12                                #! PC = 0x555555562e91 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcd8; Value = 0x0fa9a9c3dd08ab22; PC = 0x555555562e97 *)
mull rbx rbp L0x7fffffffdcd8 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555562e9d *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555562ea3 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdce0; Value = 0xc21448a6b5b8229a; PC = 0x555555562ea9 *)
mull rbx rbp L0x7fffffffdce0 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555562eaf *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555562eb5 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x58(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdce8; Value = 0x69f6c1db04a190d7; PC = 0x555555562ebb *)
mull rbx rbp L0x7fffffffdce8 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555562ec1 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555562ec7 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x60(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcf0; Value = 0x88199b4d604763dc; PC = 0x555555562ecd *)
mull rbx rbp L0x7fffffffdcf0 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555562ed3 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x555555562ed9 *)
adcs overflow rax rax rbx overflow;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcf8; Value = 0xcb6d0788c13ac4e0; PC = 0x555555562edf *)
mull rbx rbp L0x7fffffffdcf8 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x555555562ee5 *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555562eeb *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x70(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdd00; Value = 0xedd0195887a889e0; PC = 0x555555562ef1 *)
mull rbx rbp L0x7fffffffdd00 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555562ef7 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555562efd *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x78(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdd08; Value = 0x00347f65736c4dee; PC = 0x555555562f03 *)
mull rbx rbp L0x7fffffffdd08 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555562f09 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555562f0f *)
adcs overflow r10 r10 rbx overflow;
(* adc    $0x0,%r10                                #! PC = 0x555555562f15 *)
adcs carry r10 r10 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r11,%rdx                                #! PC = 0x555555562f19 *)
mov rdx r11;
(* xor    %rbx,%rbx                                #! PC = 0x555555562f1c *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x6430(%rip),%rbp,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x555555562f1f *)
mull rbx rbp L0x555555569358 rdx;
(* adox   %rbp,%r14                                #! PC = 0x555555562f28 *)
adcs overflow r14 r14 rbp overflow;
(* adox   %rbx,%r15                                #! PC = 0x555555562f2e *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x6423(%rip),%rbp,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x555555562f34 *)
mull rbx rbp L0x555555569360 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555562f3d *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x555555562f43 *)
adcs overflow rax rax rbx overflow;
(* mulx   0x6416(%rip),%rbp,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x555555562f49 *)
mull rbx rbp L0x555555569368 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x555555562f52 *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555562f58 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x6409(%rip),%rbp,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x555555562f5e *)
mull rbx rbp L0x555555569370 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555562f67 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555562f6d *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x63fc(%rip),%rbp,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x555555562f73 *)
mull rbx rbp L0x555555569378 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555562f7c *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555562f82 *)
adcs overflow r10 r10 rbx overflow;
(* adc    $0x0,%r10                                #! PC = 0x555555562f88 *)
adcs carry r10 r10 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x20(%rsi),%rdx                          #! EA = L0x7fffffffdd30; Value = 0xb098e0e5cd7bb255; PC = 0x555555562f8c *)
mov rdx L0x7fffffffdd30;
(* xor    %r11,%r11                                #! PC = 0x555555562f90 *)
mov r11 0@uint64;
clear carry;
clear overflow;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffdc90; Value = 0xdf0a0ac0afcd1683; PC = 0x555555562f93 *)
mull rbx rbp L0x7fffffffdc90 rdx;
(* adox   %rbp,%r12                                #! PC = 0x555555562f98 *)
adcs overflow r12 r12 rbp overflow;
(* adox   %rbx,%r13                                #! PC = 0x555555562f9e *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffdc98; Value = 0x45f7c85c86f95016; PC = 0x555555562fa4 *)
mull rbx rbp L0x7fffffffdc98 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555562faa *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555562fb0 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdca0; Value = 0xf06e02a8386b9c1f; PC = 0x555555562fb6 *)
mull rbx rbp L0x7fffffffdca0 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555562fbc *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555562fc2 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdca8; Value = 0xcfcc1e46f8785dfa; PC = 0x555555562fc8 *)
mull rbx rbp L0x7fffffffdca8 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555562fce *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x555555562fd4 *)
adcs overflow rax rax rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcb0; Value = 0x0b10a71845db075f; PC = 0x555555562fda *)
mull rbx rbp L0x7fffffffdcb0 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x555555562fe0 *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555562fe6 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcb8; Value = 0xc339b05bb57b2953; PC = 0x555555562fec *)
mull rbx rbp L0x7fffffffdcb8 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555562ff2 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555562ff8 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcc0; Value = 0x9a2306af37dfc7ad; PC = 0x555555562ffe *)
mull rbx rbp L0x7fffffffdcc0 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555563004 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x55555556300a *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcc8; Value = 0x00281f35054d23a3; PC = 0x555555563010 *)
mull rbx rbp L0x7fffffffdcc8 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555563016 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x55555556301c *)
adcs overflow r11 r11 rbx overflow;
(* adc    $0x0,%r11                                #! PC = 0x555555563022 *)
adcs carry r11 r11 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x20(%rcx),%rdx                          #! EA = L0x7fffffffd8f0; Value = 0xe4f6705025590bd2; PC = 0x555555563026 *)
mov rdx L0x7fffffffd8f0;
(* xor    %rbx,%rbx                                #! PC = 0x55555556302a *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcd0; Value = 0x7a5c28ade7ac6139; PC = 0x55555556302d *)
mull rbx rbp L0x7fffffffdcd0 rdx;
(* adox   %rbp,%r12                                #! PC = 0x555555563033 *)
adcs overflow r12 r12 rbp overflow;
(* adox   %rbx,%r13                                #! PC = 0x555555563039 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcd8; Value = 0x0fa9a9c3dd08ab22; PC = 0x55555556303f *)
mull rbx rbp L0x7fffffffdcd8 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555563045 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x55555556304b *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdce0; Value = 0xc21448a6b5b8229a; PC = 0x555555563051 *)
mull rbx rbp L0x7fffffffdce0 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555563057 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x55555556305d *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x58(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdce8; Value = 0x69f6c1db04a190d7; PC = 0x555555563063 *)
mull rbx rbp L0x7fffffffdce8 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555563069 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x55555556306f *)
adcs overflow rax rax rbx overflow;
(* mulx   0x60(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcf0; Value = 0x88199b4d604763dc; PC = 0x555555563075 *)
mull rbx rbp L0x7fffffffdcf0 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x55555556307b *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555563081 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcf8; Value = 0xcb6d0788c13ac4e0; PC = 0x555555563087 *)
mull rbx rbp L0x7fffffffdcf8 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x55555556308d *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555563093 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x70(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdd00; Value = 0xedd0195887a889e0; PC = 0x555555563099 *)
mull rbx rbp L0x7fffffffdd00 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x55555556309f *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555630a5 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x78(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdd08; Value = 0x00347f65736c4dee; PC = 0x5555555630ab *)
mull rbx rbp L0x7fffffffdd08 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x5555555630b1 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555630b7 *)
adcs overflow r11 r11 rbx overflow;
(* adc    $0x0,%r11                                #! PC = 0x5555555630bd *)
adcs carry r11 r11 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r12,%rdx                                #! PC = 0x5555555630c1 *)
mov rdx r12;
(* xor    %rbx,%rbx                                #! PC = 0x5555555630c4 *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x6288(%rip),%rbp,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x5555555630c7 *)
mull rbx rbp L0x555555569358 rdx;
(* adox   %rbp,%r15                                #! PC = 0x5555555630d0 *)
adcs overflow r15 r15 rbp overflow;
(* adox   %rbx,%rax                                #! PC = 0x5555555630d6 *)
adcs overflow rax rax rbx overflow;
(* mulx   0x627b(%rip),%rbp,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x5555555630dc *)
mull rbx rbp L0x555555569360 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x5555555630e5 *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555630eb *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x626e(%rip),%rbp,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x5555555630f1 *)
mull rbx rbp L0x555555569368 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x5555555630fa *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555563100 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x6261(%rip),%rbp,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x555555563106 *)
mull rbx rbp L0x555555569370 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x55555556310f *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555563115 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x6254(%rip),%rbp,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x55555556311b *)
mull rbx rbp L0x555555569378 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555563124 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x55555556312a *)
adcs overflow r11 r11 rbx overflow;
(* adc    $0x0,%r11                                #! PC = 0x555555563130 *)
adcs carry r11 r11 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x28(%rsi),%rdx                          #! EA = L0x7fffffffdd38; Value = 0xbfeb9c36159ff215; PC = 0x555555563134 *)
mov rdx L0x7fffffffdd38;
(* xor    %r12,%r12                                #! PC = 0x555555563138 *)
mov r12 0@uint64;
clear carry;
clear overflow;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffdc90; Value = 0xdf0a0ac0afcd1683; PC = 0x55555556313b *)
mull rbx rbp L0x7fffffffdc90 rdx;
(* adox   %rbp,%r13                                #! PC = 0x555555563140 *)
adcs overflow r13 r13 rbp overflow;
(* adox   %rbx,%r14                                #! PC = 0x555555563146 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffdc98; Value = 0x45f7c85c86f95016; PC = 0x55555556314c *)
mull rbx rbp L0x7fffffffdc98 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555563152 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555563158 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdca0; Value = 0xf06e02a8386b9c1f; PC = 0x55555556315e *)
mull rbx rbp L0x7fffffffdca0 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555563164 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x55555556316a *)
adcs overflow rax rax rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdca8; Value = 0xcfcc1e46f8785dfa; PC = 0x555555563170 *)
mull rbx rbp L0x7fffffffdca8 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x555555563176 *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x55555556317c *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcb0; Value = 0x0b10a71845db075f; PC = 0x555555563182 *)
mull rbx rbp L0x7fffffffdcb0 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555563188 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x55555556318e *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcb8; Value = 0xc339b05bb57b2953; PC = 0x555555563194 *)
mull rbx rbp L0x7fffffffdcb8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x55555556319a *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555631a0 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcc0; Value = 0x9a2306af37dfc7ad; PC = 0x5555555631a6 *)
mull rbx rbp L0x7fffffffdcc0 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x5555555631ac *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555631b2 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcc8; Value = 0x00281f35054d23a3; PC = 0x5555555631b8 *)
mull rbx rbp L0x7fffffffdcc8 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x5555555631be *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555631c4 *)
adcs overflow r12 r12 rbx overflow;
(* adc    $0x0,%r12                                #! PC = 0x5555555631ca *)
adcs carry r12 r12 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x28(%rcx),%rdx                          #! EA = L0x7fffffffd8f8; Value = 0x30e6bada6d977907; PC = 0x5555555631ce *)
mov rdx L0x7fffffffd8f8;
(* xor    %rbx,%rbx                                #! PC = 0x5555555631d2 *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcd0; Value = 0x7a5c28ade7ac6139; PC = 0x5555555631d5 *)
mull rbx rbp L0x7fffffffdcd0 rdx;
(* adox   %rbp,%r13                                #! PC = 0x5555555631db *)
adcs overflow r13 r13 rbp overflow;
(* adox   %rbx,%r14                                #! PC = 0x5555555631e1 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcd8; Value = 0x0fa9a9c3dd08ab22; PC = 0x5555555631e7 *)
mull rbx rbp L0x7fffffffdcd8 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x5555555631ed *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x5555555631f3 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdce0; Value = 0xc21448a6b5b8229a; PC = 0x5555555631f9 *)
mull rbx rbp L0x7fffffffdce0 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x5555555631ff *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x555555563205 *)
adcs overflow rax rax rbx overflow;
(* mulx   0x58(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdce8; Value = 0x69f6c1db04a190d7; PC = 0x55555556320b *)
mull rbx rbp L0x7fffffffdce8 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x555555563211 *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555563217 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x60(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcf0; Value = 0x88199b4d604763dc; PC = 0x55555556321d *)
mull rbx rbp L0x7fffffffdcf0 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555563223 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555563229 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcf8; Value = 0xcb6d0788c13ac4e0; PC = 0x55555556322f *)
mull rbx rbp L0x7fffffffdcf8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555563235 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x55555556323b *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x70(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdd00; Value = 0xedd0195887a889e0; PC = 0x555555563241 *)
mull rbx rbp L0x7fffffffdd00 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555563247 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x55555556324d *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x78(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdd08; Value = 0x00347f65736c4dee; PC = 0x555555563253 *)
mull rbx rbp L0x7fffffffdd08 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555563259 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x55555556325f *)
adcs overflow r12 r12 rbx overflow;
(* adc    $0x0,%r12                                #! PC = 0x555555563265 *)
adcs carry r12 r12 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r13,%rdx                                #! PC = 0x555555563269 *)
mov rdx r13;
(* xor    %rbx,%rbx                                #! PC = 0x55555556326c *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x60e0(%rip),%rbp,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x55555556326f *)
mull rbx rbp L0x555555569358 rdx;
(* adox   %rbp,%rax                                #! PC = 0x555555563278 *)
adcs overflow rax rax rbp overflow;
(* adox   %rbx,%r8                                 #! PC = 0x55555556327e *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x60d3(%rip),%rbp,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x555555563284 *)
mull rbx rbp L0x555555569360 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x55555556328d *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555563293 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x60c6(%rip),%rbp,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x555555563299 *)
mull rbx rbp L0x555555569368 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x5555555632a2 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555632a8 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x60b9(%rip),%rbp,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x5555555632ae *)
mull rbx rbp L0x555555569370 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x5555555632b7 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555632bd *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x60ac(%rip),%rbp,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x5555555632c3 *)
mull rbx rbp L0x555555569378 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x5555555632cc *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555632d2 *)
adcs overflow r12 r12 rbx overflow;
(* adc    $0x0,%r12                                #! PC = 0x5555555632d8 *)
adcs carry r12 r12 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x30(%rsi),%rdx                          #! EA = L0x7fffffffdd40; Value = 0x348f964f78f83c36; PC = 0x5555555632dc *)
mov rdx L0x7fffffffdd40;
(* xor    %r13,%r13                                #! PC = 0x5555555632e0 *)
mov r13 0@uint64;
clear carry;
clear overflow;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffdc90; Value = 0xdf0a0ac0afcd1683; PC = 0x5555555632e3 *)
mull rbx rbp L0x7fffffffdc90 rdx;
(* adox   %rbp,%r14                                #! PC = 0x5555555632e8 *)
adcs overflow r14 r14 rbp overflow;
(* adox   %rbx,%r15                                #! PC = 0x5555555632ee *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffdc98; Value = 0x45f7c85c86f95016; PC = 0x5555555632f4 *)
mull rbx rbp L0x7fffffffdc98 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x5555555632fa *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x555555563300 *)
adcs overflow rax rax rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdca0; Value = 0xf06e02a8386b9c1f; PC = 0x555555563306 *)
mull rbx rbp L0x7fffffffdca0 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x55555556330c *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555563312 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdca8; Value = 0xcfcc1e46f8785dfa; PC = 0x555555563318 *)
mull rbx rbp L0x7fffffffdca8 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x55555556331e *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555563324 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcb0; Value = 0x0b10a71845db075f; PC = 0x55555556332a *)
mull rbx rbp L0x7fffffffdcb0 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555563330 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555563336 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcb8; Value = 0xc339b05bb57b2953; PC = 0x55555556333c *)
mull rbx rbp L0x7fffffffdcb8 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555563342 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555563348 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcc0; Value = 0x9a2306af37dfc7ad; PC = 0x55555556334e *)
mull rbx rbp L0x7fffffffdcc0 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555563354 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x55555556335a *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcc8; Value = 0x00281f35054d23a3; PC = 0x555555563360 *)
mull rbx rbp L0x7fffffffdcc8 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555563366 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x55555556336c *)
adcs overflow r13 r13 rbx overflow;
(* adc    $0x0,%r13                                #! PC = 0x555555563372 *)
adcs carry r13 r13 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x30(%rcx),%rdx                          #! EA = L0x7fffffffd900; Value = 0x1c54c91a1812d197; PC = 0x555555563376 *)
mov rdx L0x7fffffffd900;
(* xor    %rbx,%rbx                                #! PC = 0x55555556337a *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcd0; Value = 0x7a5c28ade7ac6139; PC = 0x55555556337d *)
mull rbx rbp L0x7fffffffdcd0 rdx;
(* adox   %rbp,%r14                                #! PC = 0x555555563383 *)
adcs overflow r14 r14 rbp overflow;
(* adox   %rbx,%r15                                #! PC = 0x555555563389 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcd8; Value = 0x0fa9a9c3dd08ab22; PC = 0x55555556338f *)
mull rbx rbp L0x7fffffffdcd8 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555563395 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x55555556339b *)
adcs overflow rax rax rbx overflow;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdce0; Value = 0xc21448a6b5b8229a; PC = 0x5555555633a1 *)
mull rbx rbp L0x7fffffffdce0 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x5555555633a7 *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555633ad *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x58(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdce8; Value = 0x69f6c1db04a190d7; PC = 0x5555555633b3 *)
mull rbx rbp L0x7fffffffdce8 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x5555555633b9 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555633bf *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x60(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcf0; Value = 0x88199b4d604763dc; PC = 0x5555555633c5 *)
mull rbx rbp L0x7fffffffdcf0 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x5555555633cb *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555633d1 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcf8; Value = 0xcb6d0788c13ac4e0; PC = 0x5555555633d7 *)
mull rbx rbp L0x7fffffffdcf8 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x5555555633dd *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555633e3 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x70(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdd00; Value = 0xedd0195887a889e0; PC = 0x5555555633e9 *)
mull rbx rbp L0x7fffffffdd00 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x5555555633ef *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555633f5 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x78(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdd08; Value = 0x00347f65736c4dee; PC = 0x5555555633fb *)
mull rbx rbp L0x7fffffffdd08 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555563401 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555563407 *)
adcs overflow r13 r13 rbx overflow;
(* adc    $0x0,%r13                                #! PC = 0x55555556340d *)
adcs carry r13 r13 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r14,%rdx                                #! PC = 0x555555563411 *)
mov rdx r14;
(* xor    %rbx,%rbx                                #! PC = 0x555555563414 *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x5f38(%rip),%rbp,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x555555563417 *)
mull rbx rbp L0x555555569358 rdx;
(* adox   %rbp,%r8                                 #! PC = 0x555555563420 *)
adcs overflow r8 r8 rbp overflow;
(* adox   %rbx,%r9                                 #! PC = 0x555555563426 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x5f2b(%rip),%rbp,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x55555556342c *)
mull rbx rbp L0x555555569360 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555563435 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x55555556343b *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x5f1e(%rip),%rbp,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x555555563441 *)
mull rbx rbp L0x555555569368 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x55555556344a *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555563450 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x5f11(%rip),%rbp,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x555555563456 *)
mull rbx rbp L0x555555569370 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x55555556345f *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555563465 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x5f04(%rip),%rbp,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x55555556346b *)
mull rbx rbp L0x555555569378 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555563474 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x55555556347a *)
adcs overflow r13 r13 rbx overflow;
(* adc    $0x0,%r13                                #! PC = 0x555555563480 *)
adcs carry r13 r13 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x38(%rsi),%rdx                          #! EA = L0x7fffffffdd48; Value = 0x003dc795d777f573; PC = 0x555555563484 *)
mov rdx L0x7fffffffdd48;
(* xor    %r14,%r14                                #! PC = 0x555555563488 *)
mov r14 0@uint64;
clear carry;
clear overflow;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffdc90; Value = 0xdf0a0ac0afcd1683; PC = 0x55555556348b *)
mull rbx rbp L0x7fffffffdc90 rdx;
(* adox   %rbp,%r15                                #! PC = 0x555555563490 *)
adcs overflow r15 r15 rbp overflow;
(* adox   %rbx,%rax                                #! PC = 0x555555563496 *)
adcs overflow rax rax rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffdc98; Value = 0x45f7c85c86f95016; PC = 0x55555556349c *)
mull rbx rbp L0x7fffffffdc98 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x5555555634a2 *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555634a8 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdca0; Value = 0xf06e02a8386b9c1f; PC = 0x5555555634ae *)
mull rbx rbp L0x7fffffffdca0 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x5555555634b4 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555634ba *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdca8; Value = 0xcfcc1e46f8785dfa; PC = 0x5555555634c0 *)
mull rbx rbp L0x7fffffffdca8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x5555555634c6 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555634cc *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcb0; Value = 0x0b10a71845db075f; PC = 0x5555555634d2 *)
mull rbx rbp L0x7fffffffdcb0 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x5555555634d8 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555634de *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcb8; Value = 0xc339b05bb57b2953; PC = 0x5555555634e4 *)
mull rbx rbp L0x7fffffffdcb8 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x5555555634ea *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555634f0 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcc0; Value = 0x9a2306af37dfc7ad; PC = 0x5555555634f6 *)
mull rbx rbp L0x7fffffffdcc0 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x5555555634fc *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555563502 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcc8; Value = 0x00281f35054d23a3; PC = 0x555555563508 *)
mull rbx rbp L0x7fffffffdcc8 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x55555556350e *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555563514 *)
adcs overflow r14 r14 rbx overflow;
(* adc    $0x0,%r14                                #! PC = 0x55555556351a *)
adcs carry r14 r14 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x38(%rcx),%rdx                          #! EA = L0x7fffffffd908; Value = 0x01d668c0f7b42495; PC = 0x55555556351e *)
mov rdx L0x7fffffffd908;
(* xor    %rbx,%rbx                                #! PC = 0x555555563522 *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcd0; Value = 0x7a5c28ade7ac6139; PC = 0x555555563525 *)
mull rbx rbp L0x7fffffffdcd0 rdx;
(* adox   %rbp,%r15                                #! PC = 0x55555556352b *)
adcs overflow r15 r15 rbp overflow;
(* adox   %rbx,%rax                                #! PC = 0x555555563531 *)
adcs overflow rax rax rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcd8; Value = 0x0fa9a9c3dd08ab22; PC = 0x555555563537 *)
mull rbx rbp L0x7fffffffdcd8 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x55555556353d *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555563543 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdce0; Value = 0xc21448a6b5b8229a; PC = 0x555555563549 *)
mull rbx rbp L0x7fffffffdce0 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x55555556354f *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555563555 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x58(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdce8; Value = 0x69f6c1db04a190d7; PC = 0x55555556355b *)
mull rbx rbp L0x7fffffffdce8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555563561 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555563567 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x60(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcf0; Value = 0x88199b4d604763dc; PC = 0x55555556356d *)
mull rbx rbp L0x7fffffffdcf0 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555563573 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555563579 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcf8; Value = 0xcb6d0788c13ac4e0; PC = 0x55555556357f *)
mull rbx rbp L0x7fffffffdcf8 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555563585 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x55555556358b *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x70(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdd00; Value = 0xedd0195887a889e0; PC = 0x555555563591 *)
mull rbx rbp L0x7fffffffdd00 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555563597 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x55555556359d *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x78(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdd08; Value = 0x00347f65736c4dee; PC = 0x5555555635a3 *)
mull rbx rbp L0x7fffffffdd08 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x5555555635a9 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x5555555635af *)
adcs overflow r14 r14 rbx overflow;
(* adc    $0x0,%r14                                #! PC = 0x5555555635b5 *)
adcs carry r14 r14 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r15,%rdx                                #! PC = 0x5555555635b9 *)
mov rdx r15;
(* mov    %rax,(%rcx)                              #! EA = L0x7fffffffd8d0; PC = 0x5555555635bc *)
mov L0x7fffffffd8d0 rax;
(* mov    %r8,0x8(%rcx)                            #! EA = L0x7fffffffd8d8; PC = 0x5555555635bf *)
mov L0x7fffffffd8d8 r8;
(* xor    %rbx,%rbx                                #! PC = 0x5555555635c3 *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x5d89(%rip),%rbp,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x5555555635c6 *)
mull rbx rbp L0x555555569358 rdx;
(* adox   %rbp,%r9                                 #! PC = 0x5555555635cf *)
adcs overflow r9 r9 rbp overflow;
(* adox   %rbx,%r10                                #! PC = 0x5555555635d5 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x5d7c(%rip),%rbp,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x5555555635db *)
mull rbx rbp L0x555555569360 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x5555555635e4 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555635ea *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x5d6f(%rip),%rbp,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x5555555635f0 *)
mull rbx rbp L0x555555569368 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x5555555635f9 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555635ff *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x5d62(%rip),%rbp,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x555555563605 *)
mull rbx rbp L0x555555569370 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x55555556360e *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555563614 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x5d55(%rip),%rbp,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x55555556361a *)
mull rbx rbp L0x555555569378 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555563623 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555563629 *)
adcs overflow r14 r14 rbx overflow;
(* adc    $0x0,%r14                                #! PC = 0x55555556362f *)
adcs carry r14 r14 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r9,0x10(%rcx)                           #! EA = L0x7fffffffd8e0; PC = 0x555555563633 *)
mov L0x7fffffffd8e0 r9;
(* mov    %r10,0x18(%rcx)                          #! EA = L0x7fffffffd8e8; PC = 0x555555563637 *)
mov L0x7fffffffd8e8 r10;
(* mov    %r11,0x20(%rcx)                          #! EA = L0x7fffffffd8f0; PC = 0x55555556363b *)
mov L0x7fffffffd8f0 r11;
(* mov    %r12,0x28(%rcx)                          #! EA = L0x7fffffffd8f8; PC = 0x55555556363f *)
mov L0x7fffffffd8f8 r12;
(* mov    %r13,0x30(%rcx)                          #! EA = L0x7fffffffd900; PC = 0x555555563643 *)
mov L0x7fffffffd900 r13;
(* mov    %r14,0x38(%rcx)                          #! EA = L0x7fffffffd908; PC = 0x555555563647 *)
mov L0x7fffffffd908 r14;
(* #! <- SP = 0x7fffffffd8c8 *)
#! 0x7fffffffd8c8 = 0x7fffffffd8c8;
(* #retq                                           #! PC = 0x555555563655 *)
#retq                                           #! 0x555555563655 = 0x555555563655;

(* ===== Outputs ===== *)

mov c00 L0x7fffffffd8d0;
mov c01 L0x7fffffffd8d8;
mov c02 L0x7fffffffd8e0;
mov c03 L0x7fffffffd8e8;
mov c04 L0x7fffffffd8f0;
mov c05 L0x7fffffffd8f8;
mov c06 L0x7fffffffd900;
mov c07 L0x7fffffffd908;

{
  eqmod (limbs 64 [ 0, 0, 0, 0, 0, 0, 0, 0, c00, c01, c02, c03, c04, c05, c06, c07 ])
        (
          ( (limbs 64 [ a00, a01, a02, a03, a04, a05, a06, a07 ])
            *
            (limbs 64 [ b00, b01, b02, b03, b04, b05, b06, b07 ]) )
          -
          ( (limbs 64 [ a10, a11, a12, a13, a14, a15, a16, a17 ])
            *
            (limbs 64 [ b10, b11, b12, b13, b14, b15, b16, b17 ]) )
        )
        (limbs 64 [ $p503_0, $p503_1, $p503_2, $p503_3, $p503_4, $p503_5, $p503_6, $p503_7 ])
  &&
  limbs 64 [ c00, c01, c02, c03, c04, c05, c06, c07 ] <=u
      (2@512 * limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                          $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ] - 1@512)
}

