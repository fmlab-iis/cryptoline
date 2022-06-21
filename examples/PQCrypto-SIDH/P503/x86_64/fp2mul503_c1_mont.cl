(* on frege: -v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint fp2mul503_c1_mont.cl
Parsing Cryptoline file:		[OK]		0.009282 seconds
Checking well-formedness:		[OK]		0.001214 seconds
Transforming to SSA form:		[OK]		0.000440 seconds
Normalizing specification:		[OK]		0.000808 seconds
Rewriting assignments:			[OK]		0.000839 seconds
Verifying program safety:
	 Cut 0
	     Round 1 (0 safety conditions, timeout = 14400 seconds)
	 Overall			[OK]		0.000117 seconds
Verifying range assertions:		[OK]		18.191549 seconds
Verifying range specification:		[OK]		13.872719 seconds
Rewriting value-preserved casting:	[OK]		0.000275 seconds
Verifying algebraic assertions:		[OK]		0.000966 seconds
Verifying algebraic specification:	[OK]		0.220125 seconds
Verification result:			[OK]		32.298998 seconds
*)

(*
const uint64_t p503[NWORDS64_FIELD]              = { 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xABFFFFFFFFFFFFFF,
                                                     0x13085BDA2211E7A0, 0x1B9BF6C87B7E7DAF, 0x6045C6BDDA77A4D0, 0x004066F541811E1E };
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

mov L0x555555569358 $p503p1_3@uint64;
mov L0x555555569360 $p503p1_4@uint64;
mov L0x555555569368 $p503p1_5@uint64;
mov L0x555555569370 $p503p1_6@uint64;
mov L0x555555569378 $p503p1_7@uint64;

nondet rdx@uint64;

(* ===== Program ===== *)

(* #! -> SP = 0x7fffffffd8c8 *)
#! 0x7fffffffd8c8 = 0x7fffffffd8c8;
(* #jmpq   0x555555563656 <fp2mul503_c1_asm>       #! PC = 0x555555562544 *)
#jmpq   0x555555563656 <fp2mul503_c1_asm>       #! 0x555555562544 = 0x555555562544;
(* mov    %rdx,%rcx                                #! PC = 0x555555563656 *)
mov rcx rdx;
(* mov    (%rsi),%rdx                              #! EA = L0x7fffffffdd10; Value = 0x4b04287c96128413; PC = 0x555555563659 *)
mov rdx L0x7fffffffdd10;
(* mulx   0x40(%rdi),%r8,%r9                       #! EA = L0x7fffffffdcd0; Value = 0x7a5c28ade7ac6139; PC = 0x55555556365c *)
mull r9 r8 L0x7fffffffdcd0 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555563662 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x48(%rdi),%r11,%r10                     #! EA = L0x7fffffffdcd8; Value = 0x0fa9a9c3dd08ab22; PC = 0x555555563667 *)
mull r10 r11 L0x7fffffffdcd8 rdx;
(* adcx   %r11,%r9                                 #! PC = 0x55555556366f *)
adcs carry r9 r9 r11 carry;
(* mulx   0x50(%rdi),%r12,%r11                     #! EA = L0x7fffffffdce0; Value = 0xc21448a6b5b8229a; PC = 0x555555563675 *)
mull r11 r12 L0x7fffffffdce0 rdx;
(* adcx   %r12,%r10                                #! PC = 0x55555556367d *)
adcs carry r10 r10 r12 carry;
(* mulx   0x58(%rdi),%r13,%r12                     #! EA = L0x7fffffffdce8; Value = 0x69f6c1db04a190d7; PC = 0x555555563683 *)
mull r12 r13 L0x7fffffffdce8 rdx;
(* adcx   %r13,%r11                                #! PC = 0x55555556368b *)
adcs carry r11 r11 r13 carry;
(* mulx   0x60(%rdi),%r14,%r13                     #! EA = L0x7fffffffdcf0; Value = 0x88199b4d604763dc; PC = 0x555555563691 *)
mull r13 r14 L0x7fffffffdcf0 rdx;
(* adcx   %r14,%r12                                #! PC = 0x555555563698 *)
adcs carry r12 r12 r14 carry;
(* mulx   0x68(%rdi),%r15,%r14                     #! EA = L0x7fffffffdcf8; Value = 0xcb6d0788c13ac4e0; PC = 0x55555556369e *)
mull r14 r15 L0x7fffffffdcf8 rdx;
(* adcx   %r15,%r13                                #! PC = 0x5555555636a5 *)
adcs carry r13 r13 r15 carry;
(* mulx   0x70(%rdi),%rbp,%r15                     #! EA = L0x7fffffffdd00; Value = 0xedd0195887a889e0; PC = 0x5555555636ab *)
mull r15 rbp L0x7fffffffdd00 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x5555555636b1 *)
adcs carry r14 r14 rbp carry;
(* mulx   0x78(%rdi),%rbx,%rax                     #! EA = L0x7fffffffdd08; Value = 0x00347f65736c4dee; PC = 0x5555555636b7 *)
mull rax rbx L0x7fffffffdd08 rdx;
(* adcx   %rbx,%r15                                #! PC = 0x5555555636bd *)
adcs carry r15 r15 rbx carry;
(* adc    $0x0,%rax                                #! PC = 0x5555555636c3 *)
adcs carry rax rax 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x40(%rsi),%rdx                          #! EA = L0x7fffffffdd50; Value = 0xcdcf719aa0d5d773; PC = 0x5555555636c7 *)
mov rdx L0x7fffffffdd50;
(* xor    %rbx,%rbx                                #! PC = 0x5555555636cb *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffdc90; Value = 0xdf0a0ac0afcd1683; PC = 0x5555555636ce *)
mull rbx rbp L0x7fffffffdc90 rdx;
(* adox   %rbp,%r8                                 #! PC = 0x5555555636d3 *)
adcs overflow r8 r8 rbp overflow;
(* adox   %rbx,%r9                                 #! PC = 0x5555555636d9 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffdc98; Value = 0x45f7c85c86f95016; PC = 0x5555555636df *)
mull rbx rbp L0x7fffffffdc98 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x5555555636e5 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555636eb *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdca0; Value = 0xf06e02a8386b9c1f; PC = 0x5555555636f1 *)
mull rbx rbp L0x7fffffffdca0 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x5555555636f7 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555636fd *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdca8; Value = 0xcfcc1e46f8785dfa; PC = 0x555555563703 *)
mull rbx rbp L0x7fffffffdca8 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555563709 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x55555556370f *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcb0; Value = 0x0b10a71845db075f; PC = 0x555555563715 *)
mull rbx rbp L0x7fffffffdcb0 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x55555556371b *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555563721 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcb8; Value = 0xc339b05bb57b2953; PC = 0x555555563727 *)
mull rbx rbp L0x7fffffffdcb8 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x55555556372d *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555563733 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcc0; Value = 0x9a2306af37dfc7ad; PC = 0x555555563739 *)
mull rbx rbp L0x7fffffffdcc0 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x55555556373f *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555563745 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcc8; Value = 0x00281f35054d23a3; PC = 0x55555556374b *)
mull rbx rbp L0x7fffffffdcc8 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555563751 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x555555563757 *)
adcs overflow rax rax rbx overflow;
(* adc    $0x0,%rax                                #! PC = 0x55555556375d *)
adcs carry rax rax 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r8,%rdx                                 #! PC = 0x555555563761 *)
mov rdx r8;
(* xor    %rbx,%rbx                                #! PC = 0x555555563764 *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x5be8(%rip),%rbp,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x555555563767 *)
mull rbx rbp L0x555555569358 rdx;
(* adox   %rbp,%r11                                #! PC = 0x555555563770 *)
adcs overflow r11 r11 rbp overflow;
(* adox   %rbx,%r12                                #! PC = 0x555555563776 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x5bdb(%rip),%rbp,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x55555556377c *)
mull rbx rbp L0x555555569360 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555563785 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x55555556378b *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x5bce(%rip),%rbp,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x555555563791 *)
mull rbx rbp L0x555555569368 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x55555556379a *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x5555555637a0 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x5bc1(%rip),%rbp,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x5555555637a6 *)
mull rbx rbp L0x555555569370 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x5555555637af *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x5555555637b5 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x5bb4(%rip),%rbp,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x5555555637bb *)
mull rbx rbp L0x555555569378 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x5555555637c4 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x5555555637ca *)
adcs overflow rax rax rbx overflow;
(* adc    $0x0,%rax                                #! PC = 0x5555555637d0 *)
adcs carry rax rax 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x8(%rsi),%rdx                           #! EA = L0x7fffffffdd18; Value = 0x03499b9b29c2c29f; PC = 0x5555555637d4 *)
mov rdx L0x7fffffffdd18;
(* xor    %r8,%r8                                  #! PC = 0x5555555637d8 *)
mov r8 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcd0; Value = 0x7a5c28ade7ac6139; PC = 0x5555555637db *)
mull rbx rbp L0x7fffffffdcd0 rdx;
(* adox   %rbp,%r9                                 #! PC = 0x5555555637e1 *)
adcs overflow r9 r9 rbp overflow;
(* adox   %rbx,%r10                                #! PC = 0x5555555637e7 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcd8; Value = 0x0fa9a9c3dd08ab22; PC = 0x5555555637ed *)
mull rbx rbp L0x7fffffffdcd8 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x5555555637f3 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555637f9 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdce0; Value = 0xc21448a6b5b8229a; PC = 0x5555555637ff *)
mull rbx rbp L0x7fffffffdce0 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555563805 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x55555556380b *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x58(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdce8; Value = 0x69f6c1db04a190d7; PC = 0x555555563811 *)
mull rbx rbp L0x7fffffffdce8 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555563817 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x55555556381d *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x60(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcf0; Value = 0x88199b4d604763dc; PC = 0x555555563823 *)
mull rbx rbp L0x7fffffffdcf0 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555563829 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x55555556382f *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcf8; Value = 0xcb6d0788c13ac4e0; PC = 0x555555563835 *)
mull rbx rbp L0x7fffffffdcf8 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x55555556383b *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555563841 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x70(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdd00; Value = 0xedd0195887a889e0; PC = 0x555555563847 *)
mull rbx rbp L0x7fffffffdd00 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x55555556384d *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x555555563853 *)
adcs overflow rax rax rbx overflow;
(* mulx   0x78(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdd08; Value = 0x00347f65736c4dee; PC = 0x555555563859 *)
mull rbx rbp L0x7fffffffdd08 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x55555556385f *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555563865 *)
adcs overflow r8 r8 rbx overflow;
(* adc    $0x0,%r8                                 #! PC = 0x55555556386b *)
adcs carry r8 r8 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x48(%rsi),%rdx                          #! EA = L0x7fffffffdd58; Value = 0xb2cc3d1c22e94437; PC = 0x55555556386f *)
mov rdx L0x7fffffffdd58;
(* xor    %rbx,%rbx                                #! PC = 0x555555563873 *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffdc90; Value = 0xdf0a0ac0afcd1683; PC = 0x555555563876 *)
mull rbx rbp L0x7fffffffdc90 rdx;
(* adox   %rbp,%r9                                 #! PC = 0x55555556387b *)
adcs overflow r9 r9 rbp overflow;
(* adox   %rbx,%r10                                #! PC = 0x555555563881 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffdc98; Value = 0x45f7c85c86f95016; PC = 0x555555563887 *)
mull rbx rbp L0x7fffffffdc98 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x55555556388d *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555563893 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdca0; Value = 0xf06e02a8386b9c1f; PC = 0x555555563899 *)
mull rbx rbp L0x7fffffffdca0 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x55555556389f *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555638a5 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdca8; Value = 0xcfcc1e46f8785dfa; PC = 0x5555555638ab *)
mull rbx rbp L0x7fffffffdca8 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x5555555638b1 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555638b7 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcb0; Value = 0x0b10a71845db075f; PC = 0x5555555638bd *)
mull rbx rbp L0x7fffffffdcb0 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x5555555638c3 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x5555555638c9 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcb8; Value = 0xc339b05bb57b2953; PC = 0x5555555638cf *)
mull rbx rbp L0x7fffffffdcb8 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x5555555638d5 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x5555555638db *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcc0; Value = 0x9a2306af37dfc7ad; PC = 0x5555555638e1 *)
mull rbx rbp L0x7fffffffdcc0 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x5555555638e7 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x5555555638ed *)
adcs overflow rax rax rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcc8; Value = 0x00281f35054d23a3; PC = 0x5555555638f3 *)
mull rbx rbp L0x7fffffffdcc8 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x5555555638f9 *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555638ff *)
adcs overflow r8 r8 rbx overflow;
(* adc    $0x0,%r8                                 #! PC = 0x555555563905 *)
adcs carry r8 r8 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r9,%rdx                                 #! PC = 0x555555563909 *)
mov rdx r9;
(* xor    %rbx,%rbx                                #! PC = 0x55555556390c *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x5a40(%rip),%rbp,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x55555556390f *)
mull rbx rbp L0x555555569358 rdx;
(* adox   %rbp,%r12                                #! PC = 0x555555563918 *)
adcs overflow r12 r12 rbp overflow;
(* adox   %rbx,%r13                                #! PC = 0x55555556391e *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x5a33(%rip),%rbp,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x555555563924 *)
mull rbx rbp L0x555555569360 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x55555556392d *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555563933 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x5a26(%rip),%rbp,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x555555563939 *)
mull rbx rbp L0x555555569368 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555563942 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555563948 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x5a19(%rip),%rbp,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x55555556394e *)
mull rbx rbp L0x555555569370 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555563957 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x55555556395d *)
adcs overflow rax rax rbx overflow;
(* mulx   0x5a0c(%rip),%rbp,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x555555563963 *)
mull rbx rbp L0x555555569378 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x55555556396c *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555563972 *)
adcs overflow r8 r8 rbx overflow;
(* adc    $0x0,%r8                                 #! PC = 0x555555563978 *)
adcs carry r8 r8 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x10(%rsi),%rdx                          #! EA = L0x7fffffffdd20; Value = 0x47f3fbaf1be723a5; PC = 0x55555556397c *)
mov rdx L0x7fffffffdd20;
(* xor    %r9,%r9                                  #! PC = 0x555555563980 *)
mov r9 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcd0; Value = 0x7a5c28ade7ac6139; PC = 0x555555563983 *)
mull rbx rbp L0x7fffffffdcd0 rdx;
(* adox   %rbp,%r10                                #! PC = 0x555555563989 *)
adcs overflow r10 r10 rbp overflow;
(* adox   %rbx,%r11                                #! PC = 0x55555556398f *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcd8; Value = 0x0fa9a9c3dd08ab22; PC = 0x555555563995 *)
mull rbx rbp L0x7fffffffdcd8 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x55555556399b *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555639a1 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdce0; Value = 0xc21448a6b5b8229a; PC = 0x5555555639a7 *)
mull rbx rbp L0x7fffffffdce0 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x5555555639ad *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555639b3 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x58(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdce8; Value = 0x69f6c1db04a190d7; PC = 0x5555555639b9 *)
mull rbx rbp L0x7fffffffdce8 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x5555555639bf *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x5555555639c5 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x60(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcf0; Value = 0x88199b4d604763dc; PC = 0x5555555639cb *)
mull rbx rbp L0x7fffffffdcf0 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x5555555639d1 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x5555555639d7 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcf8; Value = 0xcb6d0788c13ac4e0; PC = 0x5555555639dd *)
mull rbx rbp L0x7fffffffdcf8 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x5555555639e3 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x5555555639e9 *)
adcs overflow rax rax rbx overflow;
(* mulx   0x70(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdd00; Value = 0xedd0195887a889e0; PC = 0x5555555639ef *)
mull rbx rbp L0x7fffffffdd00 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x5555555639f5 *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555639fb *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x78(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdd08; Value = 0x00347f65736c4dee; PC = 0x555555563a01 *)
mull rbx rbp L0x7fffffffdd08 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555563a07 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555563a0d *)
adcs overflow r9 r9 rbx overflow;
(* adc    $0x0,%r9                                 #! PC = 0x555555563a13 *)
adcs carry r9 r9 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x50(%rsi),%rdx                          #! EA = L0x7fffffffdd60; Value = 0xb1d616dd2ee9db10; PC = 0x555555563a17 *)
mov rdx L0x7fffffffdd60;
(* xor    %rbx,%rbx                                #! PC = 0x555555563a1b *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffdc90; Value = 0xdf0a0ac0afcd1683; PC = 0x555555563a1e *)
mull rbx rbp L0x7fffffffdc90 rdx;
(* adox   %rbp,%r10                                #! PC = 0x555555563a23 *)
adcs overflow r10 r10 rbp overflow;
(* adox   %rbx,%r11                                #! PC = 0x555555563a29 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffdc98; Value = 0x45f7c85c86f95016; PC = 0x555555563a2f *)
mull rbx rbp L0x7fffffffdc98 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555563a35 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555563a3b *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdca0; Value = 0xf06e02a8386b9c1f; PC = 0x555555563a41 *)
mull rbx rbp L0x7fffffffdca0 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555563a47 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555563a4d *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdca8; Value = 0xcfcc1e46f8785dfa; PC = 0x555555563a53 *)
mull rbx rbp L0x7fffffffdca8 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555563a59 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555563a5f *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcb0; Value = 0x0b10a71845db075f; PC = 0x555555563a65 *)
mull rbx rbp L0x7fffffffdcb0 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555563a6b *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555563a71 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcb8; Value = 0xc339b05bb57b2953; PC = 0x555555563a77 *)
mull rbx rbp L0x7fffffffdcb8 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555563a7d *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x555555563a83 *)
adcs overflow rax rax rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcc0; Value = 0x9a2306af37dfc7ad; PC = 0x555555563a89 *)
mull rbx rbp L0x7fffffffdcc0 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x555555563a8f *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555563a95 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcc8; Value = 0x00281f35054d23a3; PC = 0x555555563a9b *)
mull rbx rbp L0x7fffffffdcc8 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555563aa1 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555563aa7 *)
adcs overflow r9 r9 rbx overflow;
(* adc    $0x0,%r9                                 #! PC = 0x555555563aad *)
adcs carry r9 r9 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r10,%rdx                                #! PC = 0x555555563ab1 *)
mov rdx r10;
(* xor    %rbx,%rbx                                #! PC = 0x555555563ab4 *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x5898(%rip),%rbp,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x555555563ab7 *)
mull rbx rbp L0x555555569358 rdx;
(* adox   %rbp,%r13                                #! PC = 0x555555563ac0 *)
adcs overflow r13 r13 rbp overflow;
(* adox   %rbx,%r14                                #! PC = 0x555555563ac6 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x588b(%rip),%rbp,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x555555563acc *)
mull rbx rbp L0x555555569360 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555563ad5 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555563adb *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x587e(%rip),%rbp,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x555555563ae1 *)
mull rbx rbp L0x555555569368 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555563aea *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x555555563af0 *)
adcs overflow rax rax rbx overflow;
(* mulx   0x5871(%rip),%rbp,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x555555563af6 *)
mull rbx rbp L0x555555569370 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x555555563aff *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555563b05 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x5864(%rip),%rbp,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x555555563b0b *)
mull rbx rbp L0x555555569378 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555563b14 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555563b1a *)
adcs overflow r9 r9 rbx overflow;
(* adc    $0x0,%r9                                 #! PC = 0x555555563b20 *)
adcs carry r9 r9 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rsi),%rdx                          #! EA = L0x7fffffffdd28; Value = 0x9e2fe6f1cf439cec; PC = 0x555555563b24 *)
mov rdx L0x7fffffffdd28;
(* xor    %r10,%r10                                #! PC = 0x555555563b28 *)
mov r10 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcd0; Value = 0x7a5c28ade7ac6139; PC = 0x555555563b2b *)
mull rbx rbp L0x7fffffffdcd0 rdx;
(* adox   %rbp,%r11                                #! PC = 0x555555563b31 *)
adcs overflow r11 r11 rbp overflow;
(* adox   %rbx,%r12                                #! PC = 0x555555563b37 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcd8; Value = 0x0fa9a9c3dd08ab22; PC = 0x555555563b3d *)
mull rbx rbp L0x7fffffffdcd8 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555563b43 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555563b49 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdce0; Value = 0xc21448a6b5b8229a; PC = 0x555555563b4f *)
mull rbx rbp L0x7fffffffdce0 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555563b55 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555563b5b *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x58(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdce8; Value = 0x69f6c1db04a190d7; PC = 0x555555563b61 *)
mull rbx rbp L0x7fffffffdce8 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555563b67 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555563b6d *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x60(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcf0; Value = 0x88199b4d604763dc; PC = 0x555555563b73 *)
mull rbx rbp L0x7fffffffdcf0 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555563b79 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x555555563b7f *)
adcs overflow rax rax rbx overflow;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcf8; Value = 0xcb6d0788c13ac4e0; PC = 0x555555563b85 *)
mull rbx rbp L0x7fffffffdcf8 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x555555563b8b *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555563b91 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x70(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdd00; Value = 0xedd0195887a889e0; PC = 0x555555563b97 *)
mull rbx rbp L0x7fffffffdd00 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555563b9d *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555563ba3 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x78(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdd08; Value = 0x00347f65736c4dee; PC = 0x555555563ba9 *)
mull rbx rbp L0x7fffffffdd08 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555563baf *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555563bb5 *)
adcs overflow r10 r10 rbx overflow;
(* adc    $0x0,%r10                                #! PC = 0x555555563bbb *)
adcs carry r10 r10 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x58(%rsi),%rdx                          #! EA = L0x7fffffffdd68; Value = 0x689a77a2f3f780fa; PC = 0x555555563bbf *)
mov rdx L0x7fffffffdd68;
(* xor    %rbx,%rbx                                #! PC = 0x555555563bc3 *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffdc90; Value = 0xdf0a0ac0afcd1683; PC = 0x555555563bc6 *)
mull rbx rbp L0x7fffffffdc90 rdx;
(* adox   %rbp,%r11                                #! PC = 0x555555563bcb *)
adcs overflow r11 r11 rbp overflow;
(* adox   %rbx,%r12                                #! PC = 0x555555563bd1 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffdc98; Value = 0x45f7c85c86f95016; PC = 0x555555563bd7 *)
mull rbx rbp L0x7fffffffdc98 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555563bdd *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555563be3 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdca0; Value = 0xf06e02a8386b9c1f; PC = 0x555555563be9 *)
mull rbx rbp L0x7fffffffdca0 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555563bef *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555563bf5 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdca8; Value = 0xcfcc1e46f8785dfa; PC = 0x555555563bfb *)
mull rbx rbp L0x7fffffffdca8 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555563c01 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555563c07 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcb0; Value = 0x0b10a71845db075f; PC = 0x555555563c0d *)
mull rbx rbp L0x7fffffffdcb0 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555563c13 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x555555563c19 *)
adcs overflow rax rax rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcb8; Value = 0xc339b05bb57b2953; PC = 0x555555563c1f *)
mull rbx rbp L0x7fffffffdcb8 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x555555563c25 *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555563c2b *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcc0; Value = 0x9a2306af37dfc7ad; PC = 0x555555563c31 *)
mull rbx rbp L0x7fffffffdcc0 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555563c37 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555563c3d *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcc8; Value = 0x00281f35054d23a3; PC = 0x555555563c43 *)
mull rbx rbp L0x7fffffffdcc8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555563c49 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555563c4f *)
adcs overflow r10 r10 rbx overflow;
(* adc    $0x0,%r10                                #! PC = 0x555555563c55 *)
adcs carry r10 r10 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r11,%rdx                                #! PC = 0x555555563c59 *)
mov rdx r11;
(* xor    %rbx,%rbx                                #! PC = 0x555555563c5c *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x56f0(%rip),%rbp,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x555555563c5f *)
mull rbx rbp L0x555555569358 rdx;
(* adox   %rbp,%r14                                #! PC = 0x555555563c68 *)
adcs overflow r14 r14 rbp overflow;
(* adox   %rbx,%r15                                #! PC = 0x555555563c6e *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x56e3(%rip),%rbp,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x555555563c74 *)
mull rbx rbp L0x555555569360 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555563c7d *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x555555563c83 *)
adcs overflow rax rax rbx overflow;
(* mulx   0x56d6(%rip),%rbp,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x555555563c89 *)
mull rbx rbp L0x555555569368 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x555555563c92 *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555563c98 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x56c9(%rip),%rbp,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x555555563c9e *)
mull rbx rbp L0x555555569370 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555563ca7 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555563cad *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x56bc(%rip),%rbp,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x555555563cb3 *)
mull rbx rbp L0x555555569378 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555563cbc *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555563cc2 *)
adcs overflow r10 r10 rbx overflow;
(* adc    $0x0,%r10                                #! PC = 0x555555563cc8 *)
adcs carry r10 r10 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x20(%rsi),%rdx                          #! EA = L0x7fffffffdd30; Value = 0xb098e0e5cd7bb255; PC = 0x555555563ccc *)
mov rdx L0x7fffffffdd30;
(* xor    %r11,%r11                                #! PC = 0x555555563cd0 *)
mov r11 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcd0; Value = 0x7a5c28ade7ac6139; PC = 0x555555563cd3 *)
mull rbx rbp L0x7fffffffdcd0 rdx;
(* adox   %rbp,%r12                                #! PC = 0x555555563cd9 *)
adcs overflow r12 r12 rbp overflow;
(* adox   %rbx,%r13                                #! PC = 0x555555563cdf *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcd8; Value = 0x0fa9a9c3dd08ab22; PC = 0x555555563ce5 *)
mull rbx rbp L0x7fffffffdcd8 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555563ceb *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555563cf1 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdce0; Value = 0xc21448a6b5b8229a; PC = 0x555555563cf7 *)
mull rbx rbp L0x7fffffffdce0 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555563cfd *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555563d03 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x58(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdce8; Value = 0x69f6c1db04a190d7; PC = 0x555555563d09 *)
mull rbx rbp L0x7fffffffdce8 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555563d0f *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x555555563d15 *)
adcs overflow rax rax rbx overflow;
(* mulx   0x60(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcf0; Value = 0x88199b4d604763dc; PC = 0x555555563d1b *)
mull rbx rbp L0x7fffffffdcf0 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x555555563d21 *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555563d27 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcf8; Value = 0xcb6d0788c13ac4e0; PC = 0x555555563d2d *)
mull rbx rbp L0x7fffffffdcf8 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555563d33 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555563d39 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x70(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdd00; Value = 0xedd0195887a889e0; PC = 0x555555563d3f *)
mull rbx rbp L0x7fffffffdd00 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555563d45 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555563d4b *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x78(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdd08; Value = 0x00347f65736c4dee; PC = 0x555555563d51 *)
mull rbx rbp L0x7fffffffdd08 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555563d57 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555563d5d *)
adcs overflow r11 r11 rbx overflow;
(* adc    $0x0,%r11                                #! PC = 0x555555563d63 *)
adcs carry r11 r11 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x60(%rsi),%rdx                          #! EA = L0x7fffffffdd70; Value = 0xb34c6e80eb363132; PC = 0x555555563d67 *)
mov rdx L0x7fffffffdd70;
(* xor    %rbx,%rbx                                #! PC = 0x555555563d6b *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffdc90; Value = 0xdf0a0ac0afcd1683; PC = 0x555555563d6e *)
mull rbx rbp L0x7fffffffdc90 rdx;
(* adox   %rbp,%r12                                #! PC = 0x555555563d73 *)
adcs overflow r12 r12 rbp overflow;
(* adox   %rbx,%r13                                #! PC = 0x555555563d79 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffdc98; Value = 0x45f7c85c86f95016; PC = 0x555555563d7f *)
mull rbx rbp L0x7fffffffdc98 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555563d85 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555563d8b *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdca0; Value = 0xf06e02a8386b9c1f; PC = 0x555555563d91 *)
mull rbx rbp L0x7fffffffdca0 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555563d97 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555563d9d *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdca8; Value = 0xcfcc1e46f8785dfa; PC = 0x555555563da3 *)
mull rbx rbp L0x7fffffffdca8 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555563da9 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x555555563daf *)
adcs overflow rax rax rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcb0; Value = 0x0b10a71845db075f; PC = 0x555555563db5 *)
mull rbx rbp L0x7fffffffdcb0 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x555555563dbb *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555563dc1 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcb8; Value = 0xc339b05bb57b2953; PC = 0x555555563dc7 *)
mull rbx rbp L0x7fffffffdcb8 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555563dcd *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555563dd3 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcc0; Value = 0x9a2306af37dfc7ad; PC = 0x555555563dd9 *)
mull rbx rbp L0x7fffffffdcc0 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555563ddf *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555563de5 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcc8; Value = 0x00281f35054d23a3; PC = 0x555555563deb *)
mull rbx rbp L0x7fffffffdcc8 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555563df1 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555563df7 *)
adcs overflow r11 r11 rbx overflow;
(* adc    $0x0,%r11                                #! PC = 0x555555563dfd *)
adcs carry r11 r11 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r12,%rdx                                #! PC = 0x555555563e01 *)
mov rdx r12;
(* xor    %rbx,%rbx                                #! PC = 0x555555563e04 *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x5548(%rip),%rbp,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x555555563e07 *)
mull rbx rbp L0x555555569358 rdx;
(* adox   %rbp,%r15                                #! PC = 0x555555563e10 *)
adcs overflow r15 r15 rbp overflow;
(* adox   %rbx,%rax                                #! PC = 0x555555563e16 *)
adcs overflow rax rax rbx overflow;
(* mulx   0x553b(%rip),%rbp,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x555555563e1c *)
mull rbx rbp L0x555555569360 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x555555563e25 *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555563e2b *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x552e(%rip),%rbp,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x555555563e31 *)
mull rbx rbp L0x555555569368 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555563e3a *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555563e40 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x5521(%rip),%rbp,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x555555563e46 *)
mull rbx rbp L0x555555569370 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555563e4f *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555563e55 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x5514(%rip),%rbp,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x555555563e5b *)
mull rbx rbp L0x555555569378 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555563e64 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555563e6a *)
adcs overflow r11 r11 rbx overflow;
(* adc    $0x0,%r11                                #! PC = 0x555555563e70 *)
adcs carry r11 r11 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x28(%rsi),%rdx                          #! EA = L0x7fffffffdd38; Value = 0xbfeb9c36159ff215; PC = 0x555555563e74 *)
mov rdx L0x7fffffffdd38;
(* xor    %r12,%r12                                #! PC = 0x555555563e78 *)
mov r12 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcd0; Value = 0x7a5c28ade7ac6139; PC = 0x555555563e7b *)
mull rbx rbp L0x7fffffffdcd0 rdx;
(* adox   %rbp,%r13                                #! PC = 0x555555563e81 *)
adcs overflow r13 r13 rbp overflow;
(* adox   %rbx,%r14                                #! PC = 0x555555563e87 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcd8; Value = 0x0fa9a9c3dd08ab22; PC = 0x555555563e8d *)
mull rbx rbp L0x7fffffffdcd8 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555563e93 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555563e99 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdce0; Value = 0xc21448a6b5b8229a; PC = 0x555555563e9f *)
mull rbx rbp L0x7fffffffdce0 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555563ea5 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x555555563eab *)
adcs overflow rax rax rbx overflow;
(* mulx   0x58(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdce8; Value = 0x69f6c1db04a190d7; PC = 0x555555563eb1 *)
mull rbx rbp L0x7fffffffdce8 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x555555563eb7 *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555563ebd *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x60(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcf0; Value = 0x88199b4d604763dc; PC = 0x555555563ec3 *)
mull rbx rbp L0x7fffffffdcf0 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555563ec9 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555563ecf *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcf8; Value = 0xcb6d0788c13ac4e0; PC = 0x555555563ed5 *)
mull rbx rbp L0x7fffffffdcf8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555563edb *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555563ee1 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x70(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdd00; Value = 0xedd0195887a889e0; PC = 0x555555563ee7 *)
mull rbx rbp L0x7fffffffdd00 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555563eed *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555563ef3 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x78(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdd08; Value = 0x00347f65736c4dee; PC = 0x555555563ef9 *)
mull rbx rbp L0x7fffffffdd08 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555563eff *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555563f05 *)
adcs overflow r12 r12 rbx overflow;
(* adc    $0x0,%r12                                #! PC = 0x555555563f0b *)
adcs carry r12 r12 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x68(%rsi),%rdx                          #! EA = L0x7fffffffdd78; Value = 0xabf8fb696e5c7470; PC = 0x555555563f0f *)
mov rdx L0x7fffffffdd78;
(* xor    %rbx,%rbx                                #! PC = 0x555555563f13 *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffdc90; Value = 0xdf0a0ac0afcd1683; PC = 0x555555563f16 *)
mull rbx rbp L0x7fffffffdc90 rdx;
(* adox   %rbp,%r13                                #! PC = 0x555555563f1b *)
adcs overflow r13 r13 rbp overflow;
(* adox   %rbx,%r14                                #! PC = 0x555555563f21 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffdc98; Value = 0x45f7c85c86f95016; PC = 0x555555563f27 *)
mull rbx rbp L0x7fffffffdc98 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555563f2d *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555563f33 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdca0; Value = 0xf06e02a8386b9c1f; PC = 0x555555563f39 *)
mull rbx rbp L0x7fffffffdca0 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555563f3f *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x555555563f45 *)
adcs overflow rax rax rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdca8; Value = 0xcfcc1e46f8785dfa; PC = 0x555555563f4b *)
mull rbx rbp L0x7fffffffdca8 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x555555563f51 *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555563f57 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcb0; Value = 0x0b10a71845db075f; PC = 0x555555563f5d *)
mull rbx rbp L0x7fffffffdcb0 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555563f63 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555563f69 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcb8; Value = 0xc339b05bb57b2953; PC = 0x555555563f6f *)
mull rbx rbp L0x7fffffffdcb8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555563f75 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555563f7b *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcc0; Value = 0x9a2306af37dfc7ad; PC = 0x555555563f81 *)
mull rbx rbp L0x7fffffffdcc0 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555563f87 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555563f8d *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcc8; Value = 0x00281f35054d23a3; PC = 0x555555563f93 *)
mull rbx rbp L0x7fffffffdcc8 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555563f99 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555563f9f *)
adcs overflow r12 r12 rbx overflow;
(* adc    $0x0,%r12                                #! PC = 0x555555563fa5 *)
adcs carry r12 r12 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r13,%rdx                                #! PC = 0x555555563fa9 *)
mov rdx r13;
(* xor    %rbx,%rbx                                #! PC = 0x555555563fac *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x53a0(%rip),%rbp,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x555555563faf *)
mull rbx rbp L0x555555569358 rdx;
(* adox   %rbp,%rax                                #! PC = 0x555555563fb8 *)
adcs overflow rax rax rbp overflow;
(* adox   %rbx,%r8                                 #! PC = 0x555555563fbe *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x5393(%rip),%rbp,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x555555563fc4 *)
mull rbx rbp L0x555555569360 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555563fcd *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555563fd3 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x5386(%rip),%rbp,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x555555563fd9 *)
mull rbx rbp L0x555555569368 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555563fe2 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555563fe8 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x5379(%rip),%rbp,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x555555563fee *)
mull rbx rbp L0x555555569370 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555563ff7 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555563ffd *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x536c(%rip),%rbp,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x555555564003 *)
mull rbx rbp L0x555555569378 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x55555556400c *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555564012 *)
adcs overflow r12 r12 rbx overflow;
(* adc    $0x0,%r12                                #! PC = 0x555555564018 *)
adcs carry r12 r12 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x30(%rsi),%rdx                          #! EA = L0x7fffffffdd40; Value = 0x348f964f78f83c36; PC = 0x55555556401c *)
mov rdx L0x7fffffffdd40;
(* xor    %r13,%r13                                #! PC = 0x555555564020 *)
mov r13 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcd0; Value = 0x7a5c28ade7ac6139; PC = 0x555555564023 *)
mull rbx rbp L0x7fffffffdcd0 rdx;
(* adox   %rbp,%r14                                #! PC = 0x555555564029 *)
adcs overflow r14 r14 rbp overflow;
(* adox   %rbx,%r15                                #! PC = 0x55555556402f *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcd8; Value = 0x0fa9a9c3dd08ab22; PC = 0x555555564035 *)
mull rbx rbp L0x7fffffffdcd8 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x55555556403b *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x555555564041 *)
adcs overflow rax rax rbx overflow;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdce0; Value = 0xc21448a6b5b8229a; PC = 0x555555564047 *)
mull rbx rbp L0x7fffffffdce0 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x55555556404d *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555564053 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x58(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdce8; Value = 0x69f6c1db04a190d7; PC = 0x555555564059 *)
mull rbx rbp L0x7fffffffdce8 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x55555556405f *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555564065 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x60(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcf0; Value = 0x88199b4d604763dc; PC = 0x55555556406b *)
mull rbx rbp L0x7fffffffdcf0 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555564071 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555564077 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcf8; Value = 0xcb6d0788c13ac4e0; PC = 0x55555556407d *)
mull rbx rbp L0x7fffffffdcf8 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555564083 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555564089 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x70(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdd00; Value = 0xedd0195887a889e0; PC = 0x55555556408f *)
mull rbx rbp L0x7fffffffdd00 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555564095 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x55555556409b *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x78(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdd08; Value = 0x00347f65736c4dee; PC = 0x5555555640a1 *)
mull rbx rbp L0x7fffffffdd08 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x5555555640a7 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555640ad *)
adcs overflow r13 r13 rbx overflow;
(* adc    $0x0,%r13                                #! PC = 0x5555555640b3 *)
adcs carry r13 r13 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x70(%rsi),%rdx                          #! EA = L0x7fffffffdd80; Value = 0xe5d96cd4bbaa54e9; PC = 0x5555555640b7 *)
mov rdx L0x7fffffffdd80;
(* xor    %rbx,%rbx                                #! PC = 0x5555555640bb *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffdc90; Value = 0xdf0a0ac0afcd1683; PC = 0x5555555640be *)
mull rbx rbp L0x7fffffffdc90 rdx;
(* adox   %rbp,%r14                                #! PC = 0x5555555640c3 *)
adcs overflow r14 r14 rbp overflow;
(* adox   %rbx,%r15                                #! PC = 0x5555555640c9 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffdc98; Value = 0x45f7c85c86f95016; PC = 0x5555555640cf *)
mull rbx rbp L0x7fffffffdc98 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x5555555640d5 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x5555555640db *)
adcs overflow rax rax rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdca0; Value = 0xf06e02a8386b9c1f; PC = 0x5555555640e1 *)
mull rbx rbp L0x7fffffffdca0 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x5555555640e7 *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555640ed *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdca8; Value = 0xcfcc1e46f8785dfa; PC = 0x5555555640f3 *)
mull rbx rbp L0x7fffffffdca8 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x5555555640f9 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555640ff *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcb0; Value = 0x0b10a71845db075f; PC = 0x555555564105 *)
mull rbx rbp L0x7fffffffdcb0 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x55555556410b *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555564111 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcb8; Value = 0xc339b05bb57b2953; PC = 0x555555564117 *)
mull rbx rbp L0x7fffffffdcb8 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x55555556411d *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555564123 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcc0; Value = 0x9a2306af37dfc7ad; PC = 0x555555564129 *)
mull rbx rbp L0x7fffffffdcc0 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x55555556412f *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555564135 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcc8; Value = 0x00281f35054d23a3; PC = 0x55555556413b *)
mull rbx rbp L0x7fffffffdcc8 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555564141 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555564147 *)
adcs overflow r13 r13 rbx overflow;
(* adc    $0x0,%r13                                #! PC = 0x55555556414d *)
adcs carry r13 r13 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r14,%rdx                                #! PC = 0x555555564151 *)
mov rdx r14;
(* xor    %rbx,%rbx                                #! PC = 0x555555564154 *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x51f8(%rip),%rbp,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x555555564157 *)
mull rbx rbp L0x555555569358 rdx;
(* adox   %rbp,%r8                                 #! PC = 0x555555564160 *)
adcs overflow r8 r8 rbp overflow;
(* adox   %rbx,%r9                                 #! PC = 0x555555564166 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x51eb(%rip),%rbp,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x55555556416c *)
mull rbx rbp L0x555555569360 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555564175 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x55555556417b *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x51de(%rip),%rbp,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x555555564181 *)
mull rbx rbp L0x555555569368 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x55555556418a *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555564190 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x51d1(%rip),%rbp,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x555555564196 *)
mull rbx rbp L0x555555569370 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x55555556419f *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555641a5 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x51c4(%rip),%rbp,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x5555555641ab *)
mull rbx rbp L0x555555569378 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x5555555641b4 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555641ba *)
adcs overflow r13 r13 rbx overflow;
(* adc    $0x0,%r13                                #! PC = 0x5555555641c0 *)
adcs carry r13 r13 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x38(%rsi),%rdx                          #! EA = L0x7fffffffdd48; Value = 0x003dc795d777f573; PC = 0x5555555641c4 *)
mov rdx L0x7fffffffdd48;
(* xor    %r14,%r14                                #! PC = 0x5555555641c8 *)
mov r14 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcd0; Value = 0x7a5c28ade7ac6139; PC = 0x5555555641cb *)
mull rbx rbp L0x7fffffffdcd0 rdx;
(* adox   %rbp,%r15                                #! PC = 0x5555555641d1 *)
adcs overflow r15 r15 rbp overflow;
(* adox   %rbx,%rax                                #! PC = 0x5555555641d7 *)
adcs overflow rax rax rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcd8; Value = 0x0fa9a9c3dd08ab22; PC = 0x5555555641dd *)
mull rbx rbp L0x7fffffffdcd8 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x5555555641e3 *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555641e9 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdce0; Value = 0xc21448a6b5b8229a; PC = 0x5555555641ef *)
mull rbx rbp L0x7fffffffdce0 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x5555555641f5 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555641fb *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x58(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdce8; Value = 0x69f6c1db04a190d7; PC = 0x555555564201 *)
mull rbx rbp L0x7fffffffdce8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555564207 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x55555556420d *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x60(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcf0; Value = 0x88199b4d604763dc; PC = 0x555555564213 *)
mull rbx rbp L0x7fffffffdcf0 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555564219 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x55555556421f *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcf8; Value = 0xcb6d0788c13ac4e0; PC = 0x555555564225 *)
mull rbx rbp L0x7fffffffdcf8 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x55555556422b *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555564231 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x70(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdd00; Value = 0xedd0195887a889e0; PC = 0x555555564237 *)
mull rbx rbp L0x7fffffffdd00 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x55555556423d *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555564243 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x78(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdd08; Value = 0x00347f65736c4dee; PC = 0x555555564249 *)
mull rbx rbp L0x7fffffffdd08 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x55555556424f *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555564255 *)
adcs overflow r14 r14 rbx overflow;
(* adc    $0x0,%r14                                #! PC = 0x55555556425b *)
adcs carry r14 r14 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x78(%rsi),%rdx                          #! EA = L0x7fffffffdd88; Value = 0x002ccee91454cc5d; PC = 0x55555556425f *)
mov rdx L0x7fffffffdd88;
(* xor    %rbx,%rbx                                #! PC = 0x555555564263 *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffdc90; Value = 0xdf0a0ac0afcd1683; PC = 0x555555564266 *)
mull rbx rbp L0x7fffffffdc90 rdx;
(* adox   %rbp,%r15                                #! PC = 0x55555556426b *)
adcs overflow r15 r15 rbp overflow;
(* adox   %rbx,%rax                                #! PC = 0x555555564271 *)
adcs overflow rax rax rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffdc98; Value = 0x45f7c85c86f95016; PC = 0x555555564277 *)
mull rbx rbp L0x7fffffffdc98 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x55555556427d *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555564283 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdca0; Value = 0xf06e02a8386b9c1f; PC = 0x555555564289 *)
mull rbx rbp L0x7fffffffdca0 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x55555556428f *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555564295 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdca8; Value = 0xcfcc1e46f8785dfa; PC = 0x55555556429b *)
mull rbx rbp L0x7fffffffdca8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x5555555642a1 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555642a7 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcb0; Value = 0x0b10a71845db075f; PC = 0x5555555642ad *)
mull rbx rbp L0x7fffffffdcb0 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x5555555642b3 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555642b9 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcb8; Value = 0xc339b05bb57b2953; PC = 0x5555555642bf *)
mull rbx rbp L0x7fffffffdcb8 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x5555555642c5 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555642cb *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcc0; Value = 0x9a2306af37dfc7ad; PC = 0x5555555642d1 *)
mull rbx rbp L0x7fffffffdcc0 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x5555555642d7 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555642dd *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffdcc8; Value = 0x00281f35054d23a3; PC = 0x5555555642e3 *)
mull rbx rbp L0x7fffffffdcc8 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x5555555642e9 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x5555555642ef *)
adcs overflow r14 r14 rbx overflow;
(* adc    $0x0,%r14                                #! PC = 0x5555555642f5 *)
adcs carry r14 r14 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r15,%rdx                                #! PC = 0x5555555642f9 *)
mov rdx r15;
(* mov    %rax,(%rcx)                              #! EA = L0x7fffffffde50; PC = 0x5555555642fc *)
mov L0x7fffffffde50 rax;
(* mov    %r8,0x8(%rcx)                            #! EA = L0x7fffffffde58; PC = 0x5555555642ff *)
mov L0x7fffffffde58 r8;
(* xor    %rbx,%rbx                                #! PC = 0x555555564303 *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x5049(%rip),%rbp,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x555555564306 *)
mull rbx rbp L0x555555569358 rdx;
(* adox   %rbp,%r9                                 #! PC = 0x55555556430f *)
adcs overflow r9 r9 rbp overflow;
(* adox   %rbx,%r10                                #! PC = 0x555555564315 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x503c(%rip),%rbp,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x55555556431b *)
mull rbx rbp L0x555555569360 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555564324 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x55555556432a *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x502f(%rip),%rbp,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x555555564330 *)
mull rbx rbp L0x555555569368 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555564339 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x55555556433f *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x5022(%rip),%rbp,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x555555564345 *)
mull rbx rbp L0x555555569370 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x55555556434e *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555564354 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x5015(%rip),%rbp,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x55555556435a *)
mull rbx rbp L0x555555569378 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555564363 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555564369 *)
adcs overflow r14 r14 rbx overflow;
(* adc    $0x0,%r14                                #! PC = 0x55555556436f *)
adcs carry r14 r14 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r9,0x10(%rcx)                           #! EA = L0x7fffffffde60; PC = 0x555555564373 *)
mov L0x7fffffffde60 r9;
(* mov    %r10,0x18(%rcx)                          #! EA = L0x7fffffffde68; PC = 0x555555564377 *)
mov L0x7fffffffde68 r10;
(* mov    %r11,0x20(%rcx)                          #! EA = L0x7fffffffde70; PC = 0x55555556437b *)
mov L0x7fffffffde70 r11;
(* mov    %r12,0x28(%rcx)                          #! EA = L0x7fffffffde78; PC = 0x55555556437f *)
mov L0x7fffffffde78 r12;
(* mov    %r13,0x30(%rcx)                          #! EA = L0x7fffffffde80; PC = 0x555555564383 *)
mov L0x7fffffffde80 r13;
(* mov    %r14,0x38(%rcx)                          #! EA = L0x7fffffffde88; PC = 0x555555564387 *)
mov L0x7fffffffde88 r14;
(* #! <- SP = 0x7fffffffd8c8 *)
#! 0x7fffffffd8c8 = 0x7fffffffd8c8;
(* #retq                                           #! PC = 0x555555564395 *)
#retq                                           #! 0x555555564395 = 0x555555564395;

(* ===== Outputs ===== *)

mov c10 L0x7fffffffde50;
mov c11 L0x7fffffffde58;
mov c12 L0x7fffffffde60;
mov c13 L0x7fffffffde68;
mov c14 L0x7fffffffde70;
mov c15 L0x7fffffffde78;
mov c16 L0x7fffffffde80;
mov c17 L0x7fffffffde88;

{
  eqmod (limbs 64 [ 0, 0, 0, 0, 0, 0, 0, 0, c10, c11, c12, c13, c14, c15, c16, c17 ])
        (
          ( (limbs 64 [ a00, a01, a02, a03, a04, a05, a06, a07 ])
            *
            (limbs 64 [ b10, b11, b12, b13, b14, b15, b16, b17 ]) )
          +
          ( (limbs 64 [ a10, a11, a12, a13, a14, a15, a16, a17 ])
            *
            (limbs 64 [ b00, b01, b02, b03, b04, b05, b06, b07 ]) )
        )
        (limbs 64 [ $p503_0, $p503_1, $p503_2, $p503_3, $p503_4, $p503_5, $p503_6, $p503_7 ])
  &&
  limbs 64 [ c10, c11, c12, c13, c14, c15, c16, c17 ] <=u
      (2@512 * limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                          $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ] - 1@512)
}

