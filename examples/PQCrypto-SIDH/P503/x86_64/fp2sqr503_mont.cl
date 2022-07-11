(* on frege:  -v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint fp2sqr503_mont.cl
Parsing Cryptoline file:		[OK]		0.013384 seconds
Checking well-formedness:		[OK]		0.001644 seconds
Transforming to SSA form:		[OK]		0.000616 seconds
Normalizing specification:		[OK]		0.001548 seconds
Rewriting assignments:			[OK]		0.000762 seconds
Verifying program safety:
	 Cut 0
	     Round 1 (0 safety conditions, timeout = 14400 seconds)
	 Overall			[OK]		0.000719 seconds
Verifying range assertions:		[OK]		13.386252 seconds
Verifying range specification:		[OK]		7.968878 seconds
Rewriting value-preserved casting:	[OK]		0.000223 seconds
Verifying algebraic assertions:		[OK]		0.001498 seconds
Verifying algebraic specification:	[OK]		0.446060 seconds
Verification result:			[OK]		21.822453 seconds
*)


(*
const uint64_t p503[NWORDS64_FIELD]              = { 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xABFFFFFFFFFFFFFF,
                                                     0x13085BDA2211E7A0, 0x1B9BF6C87B7E7DAF, 0x6045C6BDDA77A4D0, 0x004066F541811E1E };
const uint64_t p503x4[NWORDS64_FIELD]            = { 0xFFFFFFFFFFFFFFFC, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xAFFFFFFFFFFFFFFF,
                                                     0x4C216F6888479E82, 0x6E6FDB21EDF9F6BC, 0x81171AF769DE9340, 0x01019BD506047879 };
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
const p503x4_0 = 0xFFFFFFFFFFFFFFFC
const p503x4_1 = 0xFFFFFFFFFFFFFFFF
const p503x4_2 = 0xFFFFFFFFFFFFFFFF
const p503x4_3 = 0xAFFFFFFFFFFFFFFF
const p503x4_4 = 0x4C216F6888479E82
const p503x4_5 = 0x6E6FDB21EDF9F6BC
const p503x4_6 = 0x81171AF769DE9340
const p503x4_7 = 0x01019BD506047879
const p503p1_0 = 0x0000000000000000
const p503p1_1 = 0x0000000000000000
const p503p1_2 = 0x0000000000000000
const p503p1_3 = 0xAC00000000000000
const p503p1_4 = 0x13085BDA2211E7A0
const p503p1_5 = 0x1B9BF6C87B7E7DAF
const p503p1_6 = 0x6045C6BDDA77A4D0
const p503p1_7 = 0x004066F541811E1E

proc main (a00@uint64, a01@uint64, a02@uint64, a03@uint64, a04@uint64, a05@uint64, a06@uint64, a07@uint64,
           a10@uint64, a11@uint64, a12@uint64, a13@uint64, a14@uint64, a15@uint64, a16@uint64, a17@uint64) =
{
  true
  &&
  and [
    limbs 64 [ a00, a01, a02, a03, a04, a05, a06, a07 ] <=u
      (2@512 * limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                          $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ] - 1@512),
    limbs 64 [ a10, a11, a12, a13, a14, a15, a16, a17 ] <=u
      (2@512 * limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                          $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ] - 1@512)
  ]
}

(* ===== Initialization ===== *)

mov L0x7fffffffdca0 a00;
mov L0x7fffffffdca8 a01;
mov L0x7fffffffdcb0 a02;
mov L0x7fffffffdcb8 a03;
mov L0x7fffffffdcc0 a04;
mov L0x7fffffffdcc8 a05;
mov L0x7fffffffdcd0 a06;
mov L0x7fffffffdcd8 a07;
mov L0x7fffffffdce0 a10;
mov L0x7fffffffdce8 a11;
mov L0x7fffffffdcf0 a12;
mov L0x7fffffffdcf8 a13;
mov L0x7fffffffdd00 a14;
mov L0x7fffffffdd08 a15;
mov L0x7fffffffdd10 a16;
mov L0x7fffffffdd18 a17;

mov L0x5555555693c0 $p503x4_0@uint64;
mov L0x5555555693c8 $p503x4_1@uint64;
mov L0x5555555693d8 $p503x4_3@uint64;
mov L0x5555555693e0 $p503x4_4@uint64;
mov L0x5555555693e8 $p503x4_5@uint64;
mov L0x5555555693f0 $p503x4_6@uint64;
mov L0x5555555693f8 $p503x4_7@uint64;

mov L0x555555569358 $p503p1_3@uint64;
mov L0x555555569360 $p503p1_4@uint64;
mov L0x555555569368 $p503p1_5@uint64;
mov L0x555555569370 $p503p1_6@uint64;
mov L0x555555569378 $p503p1_7@uint64;

nondet fs0x28@uint64;
nondet rdi@uint64;
nondet rsi@uint64;
nondet rsp@uint64;

(* ===== Program ===== *)

(* #! -> SP = 0x7fffffffd948 *)
#! 0x7fffffffd948 = 0x7fffffffd948;
(* mov    %rdi,%rbp                                #! PC = 0x555555558575 *)
mov rbp rdi;
(* mov    %rsi,%rbx                                #! PC = 0x555555558579 *)
mov rbx rsi;
(* sub    $0x98,%rsp                               #! PC = 0x55555555857c *)
subb carry rsp rsp 0x98@uint64;
(* mov    %rsp,%rsi                                #! PC = 0x555555558583 *)
mov rsi rsp;
(* mov    %fs:0x28,%rax                            #! PC = 0x555555558586 *)
mov rax fs0x28;
(* mov    %rax,0x88(%rsp)                          #! EA = L0x7fffffffd928; PC = 0x55555555858f *)
mov L0x7fffffffd928 rax;
(* xor    %eax,%eax                                #! PC = 0x555555558597 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* #callq  0x555555562550 <fp2sqr503_c0_mont>      #! PC = 0x555555558599 *)
#callq  0x555555562550 <fp2sqr503_c0_mont>      #! 0x555555558599 = 0x555555558599;
(* #! -> SP = 0x7fffffffd898 *)
#! 0x7fffffffd898 = 0x7fffffffd898;
(* #jmpq   0x555555564396 <fp2sqr503_c0_asm>       #! PC = 0x555555562554 *)
#jmpq   0x555555564396 <fp2sqr503_c0_asm>       #! 0x555555562554 = 0x555555562554;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffdca0; Value = 0x2c26f9460e9fbe7b; PC = 0x55555556439a *)
mov r8 L0x7fffffffdca0;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffdca8; Value = 0xe96985f7cddf774e; PC = 0x55555556439d *)
mov r9 L0x7fffffffdca8;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffdcb0; Value = 0x42f81597c74f32e8; PC = 0x5555555643a1 *)
mov r10 L0x7fffffffdcb0;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffdcb8; Value = 0xffebb5f67cc15d8f; PC = 0x5555555643a5 *)
mov r11 L0x7fffffffdcb8;
(* mov    0x20(%rdi),%r12                          #! EA = L0x7fffffffdcc0; Value = 0xe4513663febc7cb4; PC = 0x5555555643a9 *)
mov r12 L0x7fffffffdcc0;
(* mov    0x28(%rdi),%r13                          #! EA = L0x7fffffffdcc8; Value = 0x93dcd4e0aea806eb; PC = 0x5555555643ad *)
mov r13 L0x7fffffffdcc8;
(* add    0x40(%rdi),%r8                           #! EA = L0x7fffffffdce0; Value = 0xb372154e1a5219e1; PC = 0x5555555643b1 *)
adds carry r8 r8 L0x7fffffffdce0;
(* adc    0x48(%rdi),%r9                           #! EA = L0x7fffffffdce8; Value = 0x59cabde497a02c69; PC = 0x5555555643b5 *)
adcs carry r9 r9 L0x7fffffffdce8 carry;
(* adc    0x50(%rdi),%r10                          #! EA = L0x7fffffffdcf0; Value = 0x5f21bf09582ae1ce; PC = 0x5555555643bb *)
adcs carry r10 r10 L0x7fffffffdcf0 carry;
(* adc    0x58(%rdi),%r11                          #! EA = L0x7fffffffdcf8; Value = 0xed43caaf4bd76655; PC = 0x5555555643bf *)
adcs carry r11 r11 L0x7fffffffdcf8 carry;
(* adc    0x60(%rdi),%r12                          #! EA = L0x7fffffffdd00; Value = 0x377cc7c6ab9bd1a6; PC = 0x5555555643c5 *)
adcs carry r12 r12 L0x7fffffffdd00 carry;
(* adc    0x68(%rdi),%r13                          #! EA = L0x7fffffffdd08; Value = 0x15cc2a9365fb501a; PC = 0x5555555643c9 *)
adcs carry r13 r13 L0x7fffffffdd08 carry;
(* mov    0x30(%rdi),%r14                          #! EA = L0x7fffffffdcd0; Value = 0x67a9fc08f28d9284; PC = 0x5555555643cd *)
mov r14 L0x7fffffffdcd0;
(* mov    0x38(%rdi),%r15                          #! EA = L0x7fffffffdcd8; Value = 0x002473b991e50fd5; PC = 0x5555555643d1 *)
mov r15 L0x7fffffffdcd8;
(* adc    0x70(%rdi),%r14                          #! EA = L0x7fffffffdd10; Value = 0x3ff11d0423e82c0f; PC = 0x5555555643d5 *)
adcs carry r14 r14 L0x7fffffffdd10 carry;
(* adc    0x78(%rdi),%r15                          #! EA = L0x7fffffffdd18; Value = 0x0009dc2efa8ac250; PC = 0x5555555643d9 *)
adcs carry r15 r15 L0x7fffffffdd18 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r9,0x8(%rsi)                            #! EA = L0x7fffffffd8a8; PC = 0x5555555643dd *)
mov L0x7fffffffd8a8 r9;
(* mov    %r10,0x10(%rsi)                          #! EA = L0x7fffffffd8b0; PC = 0x5555555643e1 *)
mov L0x7fffffffd8b0 r10;
(* mov    %r11,0x18(%rsi)                          #! EA = L0x7fffffffd8b8; PC = 0x5555555643e5 *)
mov L0x7fffffffd8b8 r11;
(* mov    %r12,0x20(%rsi)                          #! EA = L0x7fffffffd8c0; PC = 0x5555555643e9 *)
mov L0x7fffffffd8c0 r12;
(* mov    %r13,0x28(%rsi)                          #! EA = L0x7fffffffd8c8; PC = 0x5555555643ed *)
mov L0x7fffffffd8c8 r13;
(* mov    %r14,0x30(%rsi)                          #! EA = L0x7fffffffd8d0; PC = 0x5555555643f1 *)
mov L0x7fffffffd8d0 r14;
(* mov    %r15,0x38(%rsi)                          #! EA = L0x7fffffffd8d8; PC = 0x5555555643f5 *)
mov L0x7fffffffd8d8 r15;
(* mov    (%rdi),%rcx                              #! EA = L0x7fffffffdca0; Value = 0x2c26f9460e9fbe7b; PC = 0x5555555643f9 *)
mov rcx L0x7fffffffdca0;
(* mov    0x8(%rdi),%r10                           #! EA = L0x7fffffffdca8; Value = 0xe96985f7cddf774e; PC = 0x5555555643fc *)
mov r10 L0x7fffffffdca8;
(* mov    0x10(%rdi),%r12                          #! EA = L0x7fffffffdcb0; Value = 0x42f81597c74f32e8; PC = 0x555555564400 *)
mov r12 L0x7fffffffdcb0;
(* mov    0x18(%rdi),%r13                          #! EA = L0x7fffffffdcb8; Value = 0xffebb5f67cc15d8f; PC = 0x555555564404 *)
mov r13 L0x7fffffffdcb8;
(* mov    0x20(%rdi),%r14                          #! EA = L0x7fffffffdcc0; Value = 0xe4513663febc7cb4; PC = 0x555555564408 *)
mov r14 L0x7fffffffdcc0;
(* mov    0x28(%rdi),%r15                          #! EA = L0x7fffffffdcc8; Value = 0x93dcd4e0aea806eb; PC = 0x55555556440c *)
mov r15 L0x7fffffffdcc8;
(* sub    0x40(%rdi),%rcx                          #! EA = L0x7fffffffdce0; Value = 0xb372154e1a5219e1; PC = 0x555555564410 *)
subb carry rcx rcx L0x7fffffffdce0;
(* sbb    0x48(%rdi),%r10                          #! EA = L0x7fffffffdce8; Value = 0x59cabde497a02c69; PC = 0x555555564414 *)
sbbs carry r10 r10 L0x7fffffffdce8 carry;
(* sbb    0x50(%rdi),%r12                          #! EA = L0x7fffffffdcf0; Value = 0x5f21bf09582ae1ce; PC = 0x555555564419 *)
sbbs carry r12 r12 L0x7fffffffdcf0 carry;
(* sbb    0x58(%rdi),%r13                          #! EA = L0x7fffffffdcf8; Value = 0xed43caaf4bd76655; PC = 0x55555556441d *)
sbbs carry r13 r13 L0x7fffffffdcf8 carry;
(* sbb    0x60(%rdi),%r14                          #! EA = L0x7fffffffdd00; Value = 0x377cc7c6ab9bd1a6; PC = 0x555555564422 *)
sbbs carry r14 r14 L0x7fffffffdd00 carry;
(* sbb    0x68(%rdi),%r15                          #! EA = L0x7fffffffdd08; Value = 0x15cc2a9365fb501a; PC = 0x555555564426 *)
sbbs carry r15 r15 L0x7fffffffdd08 carry;
(* mov    0x30(%rdi),%rbx                          #! EA = L0x7fffffffdcd0; Value = 0x67a9fc08f28d9284; PC = 0x55555556442a *)
mov rbx L0x7fffffffdcd0;
(* mov    0x38(%rdi),%rbp                          #! EA = L0x7fffffffdcd8; Value = 0x002473b991e50fd5; PC = 0x55555556442e *)
mov rbp L0x7fffffffdcd8;
(* sbb    0x70(%rdi),%rbx                          #! EA = L0x7fffffffdd10; Value = 0x3ff11d0423e82c0f; PC = 0x555555564432 *)
sbbs carry rbx rbx L0x7fffffffdd10 carry;
(* sbb    0x78(%rdi),%rbp                          #! EA = L0x7fffffffdd18; Value = 0x0009dc2efa8ac250; PC = 0x555555564436 *)
sbbs carry rbp rbp L0x7fffffffdd18 carry;
ghost borrow@uint1 : borrow = carry && borrow = carry;
(* add    0x4f7f(%rip),%rcx        # 0x5555555693c0 <p503x4>#! EA = L0x5555555693c0; Value = 0xfffffffffffffffc; PC = 0x55555556443a *)
adds carry rcx rcx L0x5555555693c0;
(* mov    0x4f80(%rip),%rdx        # 0x5555555693c8 <p503x4+8>#! EA = L0x5555555693c8; Value = 0xffffffffffffffff; PC = 0x555555564441 *)
mov rdx L0x5555555693c8;
(* adc    %rdx,%r10                                #! PC = 0x555555564448 *)
adcs carry r10 r10 rdx@uint64 carry;
(* adc    %rdx,%r12                                #! PC = 0x55555556444b *)
adcs carry r12 r12 rdx@uint64 carry;
(* adc    0x4f83(%rip),%r13        # 0x5555555693d8 <p503x4+24>#! EA = L0x5555555693d8; Value = 0xafffffffffffffff; PC = 0x55555556444e *)
adcs carry r13 r13 L0x5555555693d8 carry;
(* adc    0x4f84(%rip),%r14        # 0x5555555693e0 <p503x4+32>#! EA = L0x5555555693e0; Value = 0x4c216f6888479e82; PC = 0x555555564455 *)
adcs carry r14 r14 L0x5555555693e0 carry;
(* adc    0x4f85(%rip),%r15        # 0x5555555693e8 <p503x4+40>#! EA = L0x5555555693e8; Value = 0x6e6fdb21edf9f6bc; PC = 0x55555556445c *)
adcs carry r15 r15 L0x5555555693e8 carry;
(* adc    0x4f86(%rip),%rbx        # 0x5555555693f0 <p503x4+48>#! EA = L0x5555555693f0; Value = 0x81171af769de9340; PC = 0x555555564463 *)
adcs carry rbx rbx L0x5555555693f0 carry;
(* adc    0x4f87(%rip),%rbp        # 0x5555555693f8 <p503x4+56>#! EA = L0x5555555693f8; Value = 0x01019bd506047879; PC = 0x55555556446a *)
adcs carry rbp rbp L0x5555555693f8 carry;
assert true && borrow = carry;
assume borrow = carry && true;
(* mov    %rcx,0x40(%rsi)                          #! EA = L0x7fffffffd8e0; PC = 0x555555564471 *)
mov L0x7fffffffd8e0 rcx;
(* mov    %r10,0x48(%rsi)                          #! EA = L0x7fffffffd8e8; PC = 0x555555564475 *)
mov L0x7fffffffd8e8 r10;
(* mov    %r8,%rdx                                 #! PC = 0x555555564479 *)
mov rdx r8;
(* mulx   %rcx,%r8,%r9                             #! PC = 0x55555556447c *)
mull r9 r8 rcx rdx;
(* xor    %rax,%rax                                #! PC = 0x555555564481 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mov    %r12,0x50(%rsi)                          #! EA = L0x7fffffffd8f0; PC = 0x555555564484 *)
mov L0x7fffffffd8f0 r12;
(* mulx   %r10,%r11,%r10                           #! PC = 0x555555564488 *)
mull r10 r11 r10 rdx;
(* mov    %r13,0x58(%rsi)                          #! EA = L0x7fffffffd8f8; PC = 0x55555556448d *)
mov L0x7fffffffd8f8 r13;
(* adox   %r11,%r9                                 #! PC = 0x555555564491 *)
adcs overflow r9 r9 r11 overflow;
(* mulx   %r12,%r12,%r11                           #! PC = 0x555555564497 *)
mull r11 r12 r12 rdx;
(* mov    %r14,0x60(%rsi)                          #! EA = L0x7fffffffd900; PC = 0x55555556449c *)
mov L0x7fffffffd900 r14;
(* adox   %r12,%r10                                #! PC = 0x5555555644a0 *)
adcs overflow r10 r10 r12 overflow;
(* mulx   %r13,%r13,%r12                           #! PC = 0x5555555644a6 *)
mull r12 r13 r13 rdx;
(* mov    %r15,0x68(%rsi)                          #! EA = L0x7fffffffd908; PC = 0x5555555644ab *)
mov L0x7fffffffd908 r15;
(* adox   %r13,%r11                                #! PC = 0x5555555644af *)
adcs overflow r11 r11 r13 overflow;
(* mulx   %r14,%r14,%r13                           #! PC = 0x5555555644b5 *)
mull r13 r14 r14 rdx;
(* mov    %rbx,0x70(%rsi)                          #! EA = L0x7fffffffd910; PC = 0x5555555644ba *)
mov L0x7fffffffd910 rbx;
(* adox   %r14,%r12                                #! PC = 0x5555555644be *)
adcs overflow r12 r12 r14 overflow;
(* mulx   %r15,%r15,%r14                           #! PC = 0x5555555644c4 *)
mull r14 r15 r15 rdx;
(* mov    %rbp,0x78(%rsi)                          #! EA = L0x7fffffffd918; PC = 0x5555555644c9 *)
mov L0x7fffffffd918 rbp;
(* adox   %r15,%r13                                #! PC = 0x5555555644cd *)
adcs overflow r13 r13 r15 overflow;
(* mulx   %rbx,%rbp,%r15                           #! PC = 0x5555555644d3 *)
mull r15 rbp rbx rdx;
(* adox   %rbp,%r14                                #! PC = 0x5555555644d8 *)
adcs overflow r14 r14 rbp overflow;
(* mulx   0x78(%rsi),%rbx,%rbp                     #! EA = L0x7fffffffd918; Value = 0x011c335f9d5ec5fe; PC = 0x5555555644de *)
mull rbp rbx L0x7fffffffd918 rdx;
(* adox   %rbx,%r15                                #! PC = 0x5555555644e4 *)
adcs overflow r15 r15 rbx overflow;
(* adox   %rax,%rbp                                #! PC = 0x5555555644ea *)
adcs overflow rbp rbp rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    %r8,%rdx                                 #! PC = 0x5555555644f0 *)
mov rdx r8;
(* xor    %rbx,%rbx                                #! PC = 0x5555555644f3 *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x4e59(%rip),%rcx,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x5555555644f6 *)
mull rbx rcx L0x555555569358 rdx;
(* adox   %rcx,%r11                                #! PC = 0x5555555644ff *)
adcs overflow r11 r11 rcx overflow;
(* adox   %rbx,%r12                                #! PC = 0x555555564505 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x4e4c(%rip),%rcx,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x55555556450b *)
mull rbx rcx L0x555555569360 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x555555564514 *)
adcs carry r12 r12 rcx carry;
(* adox   %rbx,%r13                                #! PC = 0x55555556451a *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x4e3f(%rip),%rcx,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x555555564520 *)
mull rbx rcx L0x555555569368 rdx;
(* adcx   %rcx,%r13                                #! PC = 0x555555564529 *)
adcs carry r13 r13 rcx carry;
(* adox   %rbx,%r14                                #! PC = 0x55555556452f *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x4e32(%rip),%rcx,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x555555564535 *)
mull rbx rcx L0x555555569370 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x55555556453e *)
adcs carry r14 r14 rcx carry;
(* adox   %rbx,%r15                                #! PC = 0x555555564544 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x4e25(%rip),%rcx,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x55555556454a *)
mull rbx rcx L0x555555569378 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x555555564553 *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%rbp                                #! PC = 0x555555564559 *)
adcs overflow rbp rbp rbx overflow;
(* adc    $0x0,%rbp                                #! PC = 0x55555556455f *)
adcs carry rbp rbp 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x8(%rsi),%rdx                           #! EA = L0x7fffffffd8a8; Value = 0x433443dc657fa3b7; PC = 0x555555564563 *)
mov rdx L0x7fffffffd8a8;
(* xor    %r8,%r8                                  #! PC = 0x555555564567 *)
mov r8 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd8e0; Value = 0x78b4e3f7f44da496; PC = 0x55555556456a *)
mull rbx rcx L0x7fffffffd8e0 rdx;
(* adox   %rcx,%r9                                 #! PC = 0x555555564570 *)
adcs overflow r9 r9 rcx overflow;
(* adox   %rbx,%r10                                #! PC = 0x555555564576 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x48(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd8e8; Value = 0x8f9ec813363f4ae4; PC = 0x55555556457c *)
mull rbx rcx L0x7fffffffd8e8 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x555555564582 *)
adcs carry r10 r10 rcx carry;
(* adox   %rbx,%r11                                #! PC = 0x555555564588 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x50(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd8f0; Value = 0xe3d6568e6f24511a; PC = 0x55555556458e *)
mull rbx rcx L0x7fffffffd8f0 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x555555564594 *)
adcs carry r11 r11 rcx carry;
(* adox   %rbx,%r12                                #! PC = 0x55555556459a *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x58(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd8f8; Value = 0xc2a7eb4730e9f739; PC = 0x5555555645a0 *)
mull rbx rcx L0x7fffffffd8f8 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x5555555645a6 *)
adcs carry r12 r12 rcx carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555645ac *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x60(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd900; Value = 0xf8f5de05db684990; PC = 0x5555555645b2 *)
mull rbx rcx L0x7fffffffd900 rdx;
(* adcx   %rcx,%r13                                #! PC = 0x5555555645b8 *)
adcs carry r13 r13 rcx carry;
(* adox   %rbx,%r14                                #! PC = 0x5555555645be *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x68(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd908; Value = 0xec80856f36a6ad8d; PC = 0x5555555645c4 *)
mull rbx rcx L0x7fffffffd908 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x5555555645ca *)
adcs carry r14 r14 rcx carry;
(* adox   %rbx,%r15                                #! PC = 0x5555555645d0 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x70(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd910; Value = 0xa8cff9fc3883f9b5; PC = 0x5555555645d6 *)
mull rbx rcx L0x7fffffffd910 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x5555555645dc *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%rbp                                #! PC = 0x5555555645e2 *)
adcs overflow rbp rbp rbx overflow;
(* mulx   0x78(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd918; Value = 0x011c335f9d5ec5fe; PC = 0x5555555645e8 *)
mull rbx rcx L0x7fffffffd918 rdx;
(* adcx   %rcx,%rbp                                #! PC = 0x5555555645ee *)
adcs carry rbp rbp rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555645f4 *)
adcs overflow r8 r8 rbx overflow;
(* adc    $0x0,%r8                                 #! PC = 0x5555555645fa *)
adcs carry r8 r8 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r9,%rdx                                 #! PC = 0x5555555645fe *)
mov rdx r9;
(* xor    %rbx,%rbx                                #! PC = 0x555555564601 *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x4d4b(%rip),%rcx,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x555555564604 *)
mull rbx rcx L0x555555569358 rdx;
(* adox   %rcx,%r12                                #! PC = 0x55555556460d *)
adcs overflow r12 r12 rcx overflow;
(* adox   %rbx,%r13                                #! PC = 0x555555564613 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x4d3e(%rip),%rcx,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x555555564619 *)
mull rbx rcx L0x555555569360 rdx;
(* adcx   %rcx,%r13                                #! PC = 0x555555564622 *)
adcs carry r13 r13 rcx carry;
(* adox   %rbx,%r14                                #! PC = 0x555555564628 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x4d31(%rip),%rcx,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x55555556462e *)
mull rbx rcx L0x555555569368 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x555555564637 *)
adcs carry r14 r14 rcx carry;
(* adox   %rbx,%r15                                #! PC = 0x55555556463d *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x4d24(%rip),%rcx,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x555555564643 *)
mull rbx rcx L0x555555569370 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x55555556464c *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%rbp                                #! PC = 0x555555564652 *)
adcs overflow rbp rbp rbx overflow;
(* mulx   0x4d17(%rip),%rcx,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x555555564658 *)
mull rbx rcx L0x555555569378 rdx;
(* adcx   %rcx,%rbp                                #! PC = 0x555555564661 *)
adcs carry rbp rbp rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555564667 *)
adcs overflow r8 r8 rbx overflow;
(* adc    $0x0,%r8                                 #! PC = 0x55555556466d *)
adcs carry r8 r8 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x10(%rsi),%rdx                          #! EA = L0x7fffffffd8b0; Value = 0xa219d4a11f7a14b7; PC = 0x555555564671 *)
mov rdx L0x7fffffffd8b0;
(* xor    %r9,%r9                                  #! PC = 0x555555564675 *)
mov r9 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd8e0; Value = 0x78b4e3f7f44da496; PC = 0x555555564678 *)
mull rbx rcx L0x7fffffffd8e0 rdx;
(* adox   %rcx,%r10                                #! PC = 0x55555556467e *)
adcs overflow r10 r10 rcx overflow;
(* adox   %rbx,%r11                                #! PC = 0x555555564684 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x48(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd8e8; Value = 0x8f9ec813363f4ae4; PC = 0x55555556468a *)
mull rbx rcx L0x7fffffffd8e8 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x555555564690 *)
adcs carry r11 r11 rcx carry;
(* adox   %rbx,%r12                                #! PC = 0x555555564696 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x50(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd8f0; Value = 0xe3d6568e6f24511a; PC = 0x55555556469c *)
mull rbx rcx L0x7fffffffd8f0 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x5555555646a2 *)
adcs carry r12 r12 rcx carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555646a8 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x58(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd8f8; Value = 0xc2a7eb4730e9f739; PC = 0x5555555646ae *)
mull rbx rcx L0x7fffffffd8f8 rdx;
(* adcx   %rcx,%r13                                #! PC = 0x5555555646b4 *)
adcs carry r13 r13 rcx carry;
(* adox   %rbx,%r14                                #! PC = 0x5555555646ba *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x60(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd900; Value = 0xf8f5de05db684990; PC = 0x5555555646c0 *)
mull rbx rcx L0x7fffffffd900 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x5555555646c6 *)
adcs carry r14 r14 rcx carry;
(* adox   %rbx,%r15                                #! PC = 0x5555555646cc *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x68(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd908; Value = 0xec80856f36a6ad8d; PC = 0x5555555646d2 *)
mull rbx rcx L0x7fffffffd908 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x5555555646d8 *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%rbp                                #! PC = 0x5555555646de *)
adcs overflow rbp rbp rbx overflow;
(* mulx   0x70(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd910; Value = 0xa8cff9fc3883f9b5; PC = 0x5555555646e4 *)
mull rbx rcx L0x7fffffffd910 rdx;
(* adcx   %rcx,%rbp                                #! PC = 0x5555555646ea *)
adcs carry rbp rbp rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555646f0 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x78(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd918; Value = 0x011c335f9d5ec5fe; PC = 0x5555555646f6 *)
mull rbx rcx L0x7fffffffd918 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x5555555646fc *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555564702 *)
adcs overflow r9 r9 rbx overflow;
(* adc    $0x0,%r9                                 #! PC = 0x555555564708 *)
adcs carry r9 r9 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r10,%rdx                                #! PC = 0x55555556470c *)
mov rdx r10;
(* xor    %rbx,%rbx                                #! PC = 0x55555556470f *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x4c3d(%rip),%rcx,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x555555564712 *)
mull rbx rcx L0x555555569358 rdx;
(* adox   %rcx,%r13                                #! PC = 0x55555556471b *)
adcs overflow r13 r13 rcx overflow;
(* adox   %rbx,%r14                                #! PC = 0x555555564721 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x4c30(%rip),%rcx,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x555555564727 *)
mull rbx rcx L0x555555569360 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x555555564730 *)
adcs carry r14 r14 rcx carry;
(* adox   %rbx,%r15                                #! PC = 0x555555564736 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x4c23(%rip),%rcx,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x55555556473c *)
mull rbx rcx L0x555555569368 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x555555564745 *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%rbp                                #! PC = 0x55555556474b *)
adcs overflow rbp rbp rbx overflow;
(* mulx   0x4c16(%rip),%rcx,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x555555564751 *)
mull rbx rcx L0x555555569370 rdx;
(* adcx   %rcx,%rbp                                #! PC = 0x55555556475a *)
adcs carry rbp rbp rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555564760 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x4c09(%rip),%rcx,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x555555564766 *)
mull rbx rcx L0x555555569378 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x55555556476f *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555564775 *)
adcs overflow r9 r9 rbx overflow;
(* adc    $0x0,%r9                                 #! PC = 0x55555556477b *)
adcs carry r9 r9 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rsi),%rdx                          #! EA = L0x7fffffffd8b8; Value = 0xed2f80a5c898c3e4; PC = 0x55555556477f *)
mov rdx L0x7fffffffd8b8;
(* xor    %r10,%r10                                #! PC = 0x555555564783 *)
mov r10 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd8e0; Value = 0x78b4e3f7f44da496; PC = 0x555555564786 *)
mull rbx rcx L0x7fffffffd8e0 rdx;
(* adox   %rcx,%r11                                #! PC = 0x55555556478c *)
adcs overflow r11 r11 rcx overflow;
(* adox   %rbx,%r12                                #! PC = 0x555555564792 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x48(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd8e8; Value = 0x8f9ec813363f4ae4; PC = 0x555555564798 *)
mull rbx rcx L0x7fffffffd8e8 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x55555556479e *)
adcs carry r12 r12 rcx carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555647a4 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x50(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd8f0; Value = 0xe3d6568e6f24511a; PC = 0x5555555647aa *)
mull rbx rcx L0x7fffffffd8f0 rdx;
(* adcx   %rcx,%r13                                #! PC = 0x5555555647b0 *)
adcs carry r13 r13 rcx carry;
(* adox   %rbx,%r14                                #! PC = 0x5555555647b6 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x58(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd8f8; Value = 0xc2a7eb4730e9f739; PC = 0x5555555647bc *)
mull rbx rcx L0x7fffffffd8f8 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x5555555647c2 *)
adcs carry r14 r14 rcx carry;
(* adox   %rbx,%r15                                #! PC = 0x5555555647c8 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x60(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd900; Value = 0xf8f5de05db684990; PC = 0x5555555647ce *)
mull rbx rcx L0x7fffffffd900 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x5555555647d4 *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%rbp                                #! PC = 0x5555555647da *)
adcs overflow rbp rbp rbx overflow;
(* mulx   0x68(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd908; Value = 0xec80856f36a6ad8d; PC = 0x5555555647e0 *)
mull rbx rcx L0x7fffffffd908 rdx;
(* adcx   %rcx,%rbp                                #! PC = 0x5555555647e6 *)
adcs carry rbp rbp rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555647ec *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x70(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd910; Value = 0xa8cff9fc3883f9b5; PC = 0x5555555647f2 *)
mull rbx rcx L0x7fffffffd910 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x5555555647f8 *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555647fe *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x78(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd918; Value = 0x011c335f9d5ec5fe; PC = 0x555555564804 *)
mull rbx rcx L0x7fffffffd918 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x55555556480a *)
adcs carry r9 r9 rcx carry;
(* adox   %rbx,%r10                                #! PC = 0x555555564810 *)
adcs overflow r10 r10 rbx overflow;
(* adc    $0x0,%r10                                #! PC = 0x555555564816 *)
adcs carry r10 r10 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r11,%rdx                                #! PC = 0x55555556481a *)
mov rdx r11;
(* xor    %rbx,%rbx                                #! PC = 0x55555556481d *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x4b2f(%rip),%rcx,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x555555564820 *)
mull rbx rcx L0x555555569358 rdx;
(* adox   %rcx,%r14                                #! PC = 0x555555564829 *)
adcs overflow r14 r14 rcx overflow;
(* adox   %rbx,%r15                                #! PC = 0x55555556482f *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x4b22(%rip),%rcx,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x555555564835 *)
mull rbx rcx L0x555555569360 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x55555556483e *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%rbp                                #! PC = 0x555555564844 *)
adcs overflow rbp rbp rbx overflow;
(* mulx   0x4b15(%rip),%rcx,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x55555556484a *)
mull rbx rcx L0x555555569368 rdx;
(* adcx   %rcx,%rbp                                #! PC = 0x555555564853 *)
adcs carry rbp rbp rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555564859 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x4b08(%rip),%rcx,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x55555556485f *)
mull rbx rcx L0x555555569370 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x555555564868 *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x55555556486e *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x4afb(%rip),%rcx,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x555555564874 *)
mull rbx rcx L0x555555569378 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x55555556487d *)
adcs carry r9 r9 rcx carry;
(* adox   %rbx,%r10                                #! PC = 0x555555564883 *)
adcs overflow r10 r10 rbx overflow;
(* adc    $0x0,%r10                                #! PC = 0x555555564889 *)
adcs carry r10 r10 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x20(%rsi),%rdx                          #! EA = L0x7fffffffd8c0; Value = 0x1bcdfe2aaa584e5b; PC = 0x55555556488d *)
mov rdx L0x7fffffffd8c0;
(* xor    %r11,%r11                                #! PC = 0x555555564891 *)
mov r11 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd8e0; Value = 0x78b4e3f7f44da496; PC = 0x555555564894 *)
mull rbx rcx L0x7fffffffd8e0 rdx;
(* adox   %rcx,%r12                                #! PC = 0x55555556489a *)
adcs overflow r12 r12 rcx overflow;
(* adox   %rbx,%r13                                #! PC = 0x5555555648a0 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x48(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd8e8; Value = 0x8f9ec813363f4ae4; PC = 0x5555555648a6 *)
mull rbx rcx L0x7fffffffd8e8 rdx;
(* adcx   %rcx,%r13                                #! PC = 0x5555555648ac *)
adcs carry r13 r13 rcx carry;
(* adox   %rbx,%r14                                #! PC = 0x5555555648b2 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x50(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd8f0; Value = 0xe3d6568e6f24511a; PC = 0x5555555648b8 *)
mull rbx rcx L0x7fffffffd8f0 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x5555555648be *)
adcs carry r14 r14 rcx carry;
(* adox   %rbx,%r15                                #! PC = 0x5555555648c4 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x58(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd8f8; Value = 0xc2a7eb4730e9f739; PC = 0x5555555648ca *)
mull rbx rcx L0x7fffffffd8f8 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x5555555648d0 *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%rbp                                #! PC = 0x5555555648d6 *)
adcs overflow rbp rbp rbx overflow;
(* mulx   0x60(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd900; Value = 0xf8f5de05db684990; PC = 0x5555555648dc *)
mull rbx rcx L0x7fffffffd900 rdx;
(* adcx   %rcx,%rbp                                #! PC = 0x5555555648e2 *)
adcs carry rbp rbp rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555648e8 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x68(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd908; Value = 0xec80856f36a6ad8d; PC = 0x5555555648ee *)
mull rbx rcx L0x7fffffffd908 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x5555555648f4 *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555648fa *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x70(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd910; Value = 0xa8cff9fc3883f9b5; PC = 0x555555564900 *)
mull rbx rcx L0x7fffffffd910 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x555555564906 *)
adcs carry r9 r9 rcx carry;
(* adox   %rbx,%r10                                #! PC = 0x55555556490c *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x78(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd918; Value = 0x011c335f9d5ec5fe; PC = 0x555555564912 *)
mull rbx rcx L0x7fffffffd918 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x555555564918 *)
adcs carry r10 r10 rcx carry;
(* adox   %rbx,%r11                                #! PC = 0x55555556491e *)
adcs overflow r11 r11 rbx overflow;
(* adc    $0x0,%r11                                #! PC = 0x555555564924 *)
adcs carry r11 r11 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r12,%rdx                                #! PC = 0x555555564928 *)
mov rdx r12;
(* xor    %rbx,%rbx                                #! PC = 0x55555556492b *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x4a21(%rip),%rcx,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x55555556492e *)
mull rbx rcx L0x555555569358 rdx;
(* adox   %rcx,%r15                                #! PC = 0x555555564937 *)
adcs overflow r15 r15 rcx overflow;
(* adox   %rbx,%rbp                                #! PC = 0x55555556493d *)
adcs overflow rbp rbp rbx overflow;
(* mulx   0x4a14(%rip),%rcx,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x555555564943 *)
mull rbx rcx L0x555555569360 rdx;
(* adcx   %rcx,%rbp                                #! PC = 0x55555556494c *)
adcs carry rbp rbp rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555564952 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x4a07(%rip),%rcx,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x555555564958 *)
mull rbx rcx L0x555555569368 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x555555564961 *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555564967 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x49fa(%rip),%rcx,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x55555556496d *)
mull rbx rcx L0x555555569370 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x555555564976 *)
adcs carry r9 r9 rcx carry;
(* adox   %rbx,%r10                                #! PC = 0x55555556497c *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x49ed(%rip),%rcx,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x555555564982 *)
mull rbx rcx L0x555555569378 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x55555556498b *)
adcs carry r10 r10 rcx carry;
(* adox   %rbx,%r11                                #! PC = 0x555555564991 *)
adcs overflow r11 r11 rbx overflow;
(* adc    $0x0,%r11                                #! PC = 0x555555564997 *)
adcs carry r11 r11 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x28(%rsi),%rdx                          #! EA = L0x7fffffffd8c8; Value = 0xa9a8ff7414a35706; PC = 0x55555556499b *)
mov rdx L0x7fffffffd8c8;
(* xor    %r12,%r12                                #! PC = 0x55555556499f *)
mov r12 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd8e0; Value = 0x78b4e3f7f44da496; PC = 0x5555555649a2 *)
mull rbx rcx L0x7fffffffd8e0 rdx;
(* adox   %rcx,%r13                                #! PC = 0x5555555649a8 *)
adcs overflow r13 r13 rcx overflow;
(* adox   %rbx,%r14                                #! PC = 0x5555555649ae *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x48(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd8e8; Value = 0x8f9ec813363f4ae4; PC = 0x5555555649b4 *)
mull rbx rcx L0x7fffffffd8e8 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x5555555649ba *)
adcs carry r14 r14 rcx carry;
(* adox   %rbx,%r15                                #! PC = 0x5555555649c0 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x50(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd8f0; Value = 0xe3d6568e6f24511a; PC = 0x5555555649c6 *)
mull rbx rcx L0x7fffffffd8f0 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x5555555649cc *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%rbp                                #! PC = 0x5555555649d2 *)
adcs overflow rbp rbp rbx overflow;
(* mulx   0x58(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd8f8; Value = 0xc2a7eb4730e9f739; PC = 0x5555555649d8 *)
mull rbx rcx L0x7fffffffd8f8 rdx;
(* adcx   %rcx,%rbp                                #! PC = 0x5555555649de *)
adcs carry rbp rbp rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555649e4 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x60(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd900; Value = 0xf8f5de05db684990; PC = 0x5555555649ea *)
mull rbx rcx L0x7fffffffd900 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x5555555649f0 *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555649f6 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x68(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd908; Value = 0xec80856f36a6ad8d; PC = 0x5555555649fc *)
mull rbx rcx L0x7fffffffd908 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x555555564a02 *)
adcs carry r9 r9 rcx carry;
(* adox   %rbx,%r10                                #! PC = 0x555555564a08 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x70(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd910; Value = 0xa8cff9fc3883f9b5; PC = 0x555555564a0e *)
mull rbx rcx L0x7fffffffd910 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x555555564a14 *)
adcs carry r10 r10 rcx carry;
(* adox   %rbx,%r11                                #! PC = 0x555555564a1a *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x78(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd918; Value = 0x011c335f9d5ec5fe; PC = 0x555555564a20 *)
mull rbx rcx L0x7fffffffd918 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x555555564a26 *)
adcs carry r11 r11 rcx carry;
(* adox   %rbx,%r12                                #! PC = 0x555555564a2c *)
adcs overflow r12 r12 rbx overflow;
(* adc    $0x0,%r12                                #! PC = 0x555555564a32 *)
adcs carry r12 r12 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r13,%rdx                                #! PC = 0x555555564a36 *)
mov rdx r13;
(* xor    %rbx,%rbx                                #! PC = 0x555555564a39 *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x4913(%rip),%rcx,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x555555564a3c *)
mull rbx rcx L0x555555569358 rdx;
(* adox   %rcx,%rbp                                #! PC = 0x555555564a45 *)
adcs overflow rbp rbp rcx overflow;
(* adox   %rbx,%r8                                 #! PC = 0x555555564a4b *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x4906(%rip),%rcx,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x555555564a51 *)
mull rbx rcx L0x555555569360 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x555555564a5a *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555564a60 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x48f9(%rip),%rcx,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x555555564a66 *)
mull rbx rcx L0x555555569368 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x555555564a6f *)
adcs carry r9 r9 rcx carry;
(* adox   %rbx,%r10                                #! PC = 0x555555564a75 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x48ec(%rip),%rcx,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x555555564a7b *)
mull rbx rcx L0x555555569370 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x555555564a84 *)
adcs carry r10 r10 rcx carry;
(* adox   %rbx,%r11                                #! PC = 0x555555564a8a *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x48df(%rip),%rcx,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x555555564a90 *)
mull rbx rcx L0x555555569378 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x555555564a99 *)
adcs carry r11 r11 rcx carry;
(* adox   %rbx,%r12                                #! PC = 0x555555564a9f *)
adcs overflow r12 r12 rbx overflow;
(* adc    $0x0,%r12                                #! PC = 0x555555564aa5 *)
adcs carry r12 r12 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x30(%rsi),%rdx                          #! EA = L0x7fffffffd8d0; Value = 0xa79b190d1675be93; PC = 0x555555564aa9 *)
mov rdx L0x7fffffffd8d0;
(* xor    %r13,%r13                                #! PC = 0x555555564aad *)
mov r13 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd8e0; Value = 0x78b4e3f7f44da496; PC = 0x555555564ab0 *)
mull rbx rcx L0x7fffffffd8e0 rdx;
(* adox   %rcx,%r14                                #! PC = 0x555555564ab6 *)
adcs overflow r14 r14 rcx overflow;
(* adox   %rbx,%r15                                #! PC = 0x555555564abc *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x48(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd8e8; Value = 0x8f9ec813363f4ae4; PC = 0x555555564ac2 *)
mull rbx rcx L0x7fffffffd8e8 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x555555564ac8 *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%rbp                                #! PC = 0x555555564ace *)
adcs overflow rbp rbp rbx overflow;
(* mulx   0x50(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd8f0; Value = 0xe3d6568e6f24511a; PC = 0x555555564ad4 *)
mull rbx rcx L0x7fffffffd8f0 rdx;
(* adcx   %rcx,%rbp                                #! PC = 0x555555564ada *)
adcs carry rbp rbp rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555564ae0 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x58(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd8f8; Value = 0xc2a7eb4730e9f739; PC = 0x555555564ae6 *)
mull rbx rcx L0x7fffffffd8f8 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x555555564aec *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555564af2 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x60(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd900; Value = 0xf8f5de05db684990; PC = 0x555555564af8 *)
mull rbx rcx L0x7fffffffd900 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x555555564afe *)
adcs carry r9 r9 rcx carry;
(* adox   %rbx,%r10                                #! PC = 0x555555564b04 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x68(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd908; Value = 0xec80856f36a6ad8d; PC = 0x555555564b0a *)
mull rbx rcx L0x7fffffffd908 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x555555564b10 *)
adcs carry r10 r10 rcx carry;
(* adox   %rbx,%r11                                #! PC = 0x555555564b16 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x70(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd910; Value = 0xa8cff9fc3883f9b5; PC = 0x555555564b1c *)
mull rbx rcx L0x7fffffffd910 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x555555564b22 *)
adcs carry r11 r11 rcx carry;
(* adox   %rbx,%r12                                #! PC = 0x555555564b28 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x78(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd918; Value = 0x011c335f9d5ec5fe; PC = 0x555555564b2e *)
mull rbx rcx L0x7fffffffd918 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x555555564b34 *)
adcs carry r12 r12 rcx carry;
(* adox   %rbx,%r13                                #! PC = 0x555555564b3a *)
adcs overflow r13 r13 rbx overflow;
(* adc    $0x0,%r13                                #! PC = 0x555555564b40 *)
adcs carry r13 r13 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r14,%rdx                                #! PC = 0x555555564b44 *)
mov rdx r14;
(* xor    %rbx,%rbx                                #! PC = 0x555555564b47 *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x4805(%rip),%rcx,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x555555564b4a *)
mull rbx rcx L0x555555569358 rdx;
(* adox   %rcx,%r8                                 #! PC = 0x555555564b53 *)
adcs overflow r8 r8 rcx overflow;
(* adox   %rbx,%r9                                 #! PC = 0x555555564b59 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x47f8(%rip),%rcx,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x555555564b5f *)
mull rbx rcx L0x555555569360 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x555555564b68 *)
adcs carry r9 r9 rcx carry;
(* adox   %rbx,%r10                                #! PC = 0x555555564b6e *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x47eb(%rip),%rcx,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x555555564b74 *)
mull rbx rcx L0x555555569368 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x555555564b7d *)
adcs carry r10 r10 rcx carry;
(* adox   %rbx,%r11                                #! PC = 0x555555564b83 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x47de(%rip),%rcx,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x555555564b89 *)
mull rbx rcx L0x555555569370 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x555555564b92 *)
adcs carry r11 r11 rcx carry;
(* adox   %rbx,%r12                                #! PC = 0x555555564b98 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x47d1(%rip),%rcx,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x555555564b9e *)
mull rbx rcx L0x555555569378 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x555555564ba7 *)
adcs carry r12 r12 rcx carry;
(* adox   %rbx,%r13                                #! PC = 0x555555564bad *)
adcs overflow r13 r13 rbx overflow;
(* adc    $0x0,%r13                                #! PC = 0x555555564bb3 *)
adcs carry r13 r13 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x38(%rsi),%rdx                          #! EA = L0x7fffffffd8d8; Value = 0x002e4fe88c6fd225; PC = 0x555555564bb7 *)
mov rdx L0x7fffffffd8d8;
(* xor    %r14,%r14                                #! PC = 0x555555564bbb *)
mov r14 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd8e0; Value = 0x78b4e3f7f44da496; PC = 0x555555564bbe *)
mull rbx rcx L0x7fffffffd8e0 rdx;
(* adox   %rcx,%r15                                #! PC = 0x555555564bc4 *)
adcs overflow r15 r15 rcx overflow;
(* adox   %rbx,%rbp                                #! PC = 0x555555564bca *)
adcs overflow rbp rbp rbx overflow;
(* mulx   0x48(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd8e8; Value = 0x8f9ec813363f4ae4; PC = 0x555555564bd0 *)
mull rbx rcx L0x7fffffffd8e8 rdx;
(* adcx   %rcx,%rbp                                #! PC = 0x555555564bd6 *)
adcs carry rbp rbp rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555564bdc *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x50(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd8f0; Value = 0xe3d6568e6f24511a; PC = 0x555555564be2 *)
mull rbx rcx L0x7fffffffd8f0 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x555555564be8 *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555564bee *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x58(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd8f8; Value = 0xc2a7eb4730e9f739; PC = 0x555555564bf4 *)
mull rbx rcx L0x7fffffffd8f8 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x555555564bfa *)
adcs carry r9 r9 rcx carry;
(* adox   %rbx,%r10                                #! PC = 0x555555564c00 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x60(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd900; Value = 0xf8f5de05db684990; PC = 0x555555564c06 *)
mull rbx rcx L0x7fffffffd900 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x555555564c0c *)
adcs carry r10 r10 rcx carry;
(* adox   %rbx,%r11                                #! PC = 0x555555564c12 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x68(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd908; Value = 0xec80856f36a6ad8d; PC = 0x555555564c18 *)
mull rbx rcx L0x7fffffffd908 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x555555564c1e *)
adcs carry r11 r11 rcx carry;
(* adox   %rbx,%r12                                #! PC = 0x555555564c24 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x70(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd910; Value = 0xa8cff9fc3883f9b5; PC = 0x555555564c2a *)
mull rbx rcx L0x7fffffffd910 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x555555564c30 *)
adcs carry r12 r12 rcx carry;
(* adox   %rbx,%r13                                #! PC = 0x555555564c36 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x78(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd918; Value = 0x011c335f9d5ec5fe; PC = 0x555555564c3c *)
mull rbx rcx L0x7fffffffd918 rdx;
(* adcx   %rcx,%r13                                #! PC = 0x555555564c42 *)
adcs carry r13 r13 rcx carry;
(* adox   %rbx,%r14                                #! PC = 0x555555564c48 *)
adcs overflow r14 r14 rbx overflow;
(* adc    $0x0,%r14                                #! PC = 0x555555564c4e *)
adcs carry r14 r14 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r15,%rdx                                #! PC = 0x555555564c52 *)
mov rdx r15;
(* xor    %rbx,%rbx                                #! PC = 0x555555564c55 *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x46f7(%rip),%rcx,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x555555564c58 *)
mull rbx rcx L0x555555569358 rdx;
(* adox   %rcx,%r9                                 #! PC = 0x555555564c61 *)
adcs overflow r9 r9 rcx overflow;
(* adox   %rbx,%r10                                #! PC = 0x555555564c67 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x46ea(%rip),%rcx,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x555555564c6d *)
mull rbx rcx L0x555555569360 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x555555564c76 *)
adcs carry r10 r10 rcx carry;
(* adox   %rbx,%r11                                #! PC = 0x555555564c7c *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x46dd(%rip),%rcx,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x555555564c82 *)
mull rbx rcx L0x555555569368 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x555555564c8b *)
adcs carry r11 r11 rcx carry;
(* adox   %rbx,%r12                                #! PC = 0x555555564c91 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x46d0(%rip),%rcx,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x555555564c97 *)
mull rbx rcx L0x555555569370 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x555555564ca0 *)
adcs carry r12 r12 rcx carry;
(* adox   %rbx,%r13                                #! PC = 0x555555564ca6 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x46c3(%rip),%rcx,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x555555564cac *)
mull rbx rcx L0x555555569378 rdx;
(* adcx   %rcx,%r13                                #! PC = 0x555555564cb5 *)
adcs carry r13 r13 rcx carry;
(* adox   %rbx,%r14                                #! PC = 0x555555564cbb *)
adcs overflow r14 r14 rbx overflow;
(* adc    $0x0,%r14                                #! PC = 0x555555564cc1 *)
adcs carry r14 r14 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %rbp,(%rsi)                              #! EA = L0x7fffffffd8a0; PC = 0x555555564cc5 *)
mov L0x7fffffffd8a0 rbp;
(* mov    %r8,0x8(%rsi)                            #! EA = L0x7fffffffd8a8; PC = 0x555555564cc8 *)
mov L0x7fffffffd8a8 r8;
(* mov    %r9,0x10(%rsi)                           #! EA = L0x7fffffffd8b0; PC = 0x555555564ccc *)
mov L0x7fffffffd8b0 r9;
(* mov    %r10,0x18(%rsi)                          #! EA = L0x7fffffffd8b8; PC = 0x555555564cd0 *)
mov L0x7fffffffd8b8 r10;
(* mov    %r11,0x20(%rsi)                          #! EA = L0x7fffffffd8c0; PC = 0x555555564cd4 *)
mov L0x7fffffffd8c0 r11;
(* mov    %r12,0x28(%rsi)                          #! EA = L0x7fffffffd8c8; PC = 0x555555564cd8 *)
mov L0x7fffffffd8c8 r12;
(* mov    %r13,0x30(%rsi)                          #! EA = L0x7fffffffd8d0; PC = 0x555555564cdc *)
mov L0x7fffffffd8d0 r13;
(* mov    %r14,0x38(%rsi)                          #! EA = L0x7fffffffd8d8; PC = 0x555555564ce0 *)
mov L0x7fffffffd8d8 r14;
(* #! <- SP = 0x7fffffffd898 *)
#! 0x7fffffffd898 = 0x7fffffffd898;
(* #retq                                           #! PC = 0x555555564cee *)
#retq                                           #! 0x555555564cee = 0x555555564cee;
(* mov    %rbp,%rdi                                #! PC = 0x5555555585a2 *)
mov rdi rbp;
(* #callq  0x555555562560 <fp2sqr503_c1_mont>      #! PC = 0x5555555585a5 *)
#callq  0x555555562560 <fp2sqr503_c1_mont>      #! 0x5555555585a5 = 0x5555555585a5;
(* #! -> SP = 0x7fffffffd898 *)
#! 0x7fffffffd898 = 0x7fffffffd898;
(* #jmpq   0x555555564cef <fp2sqr503_c1_asm>       #! PC = 0x555555562564 *)
#jmpq   0x555555564cef <fp2sqr503_c1_asm>       #! 0x555555562564 = 0x555555562564;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffdca0; Value = 0x2c26f9460e9fbe7b; PC = 0x555555564cf3 *)
mov r8 L0x7fffffffdca0;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffdca8; Value = 0xe96985f7cddf774e; PC = 0x555555564cf6 *)
mov r9 L0x7fffffffdca8;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffdcb0; Value = 0x42f81597c74f32e8; PC = 0x555555564cfa *)
mov r10 L0x7fffffffdcb0;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffdcb8; Value = 0xffebb5f67cc15d8f; PC = 0x555555564cfe *)
mov r11 L0x7fffffffdcb8;
(* mov    0x20(%rdi),%r12                          #! EA = L0x7fffffffdcc0; Value = 0xe4513663febc7cb4; PC = 0x555555564d02 *)
mov r12 L0x7fffffffdcc0;
(* mov    0x28(%rdi),%r13                          #! EA = L0x7fffffffdcc8; Value = 0x93dcd4e0aea806eb; PC = 0x555555564d06 *)
mov r13 L0x7fffffffdcc8;
(* add    %r8,%r8                                  #! PC = 0x555555564d0a *)
adds carry r8 r8 r8;
(* adc    %r9,%r9                                  #! PC = 0x555555564d0d *)
adcs carry r9 r9 r9@uint64 carry;
(* adc    %r10,%r10                                #! PC = 0x555555564d12 *)
adcs carry r10 r10 r10@uint64 carry;
(* adc    %r11,%r11                                #! PC = 0x555555564d15 *)
adcs carry r11 r11 r11@uint64 carry;
(* adc    %r12,%r12                                #! PC = 0x555555564d1a *)
adcs carry r12 r12 r12@uint64 carry;
(* mov    0x30(%rdi),%r14                          #! EA = L0x7fffffffdcd0; Value = 0x67a9fc08f28d9284; PC = 0x555555564d1d *)
mov r14 L0x7fffffffdcd0;
(* mov    0x38(%rdi),%r15                          #! EA = L0x7fffffffdcd8; Value = 0x002473b991e50fd5; PC = 0x555555564d21 *)
mov r15 L0x7fffffffdcd8;
(* adc    %r13,%r13                                #! PC = 0x555555564d25 *)
adcs carry r13 r13 r13@uint64 carry;
(* adc    %r14,%r14                                #! PC = 0x555555564d29 *)
adcs carry r14 r14 r14@uint64 carry;
(* adc    %r15,%r15                                #! PC = 0x555555564d2d *)
adcs carry r15 r15 r15@uint64 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r9,0x8(%rsp)                            #! EA = L0x7fffffffd830; PC = 0x555555564d34 *)
mov L0x7fffffffd830 r9;
(* mov    %r10,0x10(%rsp)                          #! EA = L0x7fffffffd838; PC = 0x555555564d39 *)
mov L0x7fffffffd838 r10;
(* mov    %r8,%rdx                                 #! PC = 0x555555564d3e *)
mov rdx r8;
(* mulx   0x40(%rdi),%r8,%r9                       #! EA = L0x7fffffffdce0; Value = 0xb372154e1a5219e1; PC = 0x555555564d41 *)
mull r9 r8 L0x7fffffffdce0 rdx;
(* mov    %r11,0x18(%rsp)                          #! EA = L0x7fffffffd840; PC = 0x555555564d47 *)
mov L0x7fffffffd840 r11;
(* xor    %rax,%rax                                #! PC = 0x555555564d4c *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x48(%rdi),%r11,%r10                     #! EA = L0x7fffffffdce8; Value = 0x59cabde497a02c69; PC = 0x555555564d4f *)
mull r10 r11 L0x7fffffffdce8 rdx;
(* mov    %r12,0x20(%rsp)                          #! EA = L0x7fffffffd848; PC = 0x555555564d55 *)
mov L0x7fffffffd848 r12;
(* adox   %r11,%r9                                 #! PC = 0x555555564d5a *)
adcs overflow r9 r9 r11 overflow;
(* mulx   0x50(%rdi),%r12,%r11                     #! EA = L0x7fffffffdcf0; Value = 0x5f21bf09582ae1ce; PC = 0x555555564d60 *)
mull r11 r12 L0x7fffffffdcf0 rdx;
(* mov    %r13,0x28(%rsp)                          #! EA = L0x7fffffffd850; PC = 0x555555564d66 *)
mov L0x7fffffffd850 r13;
(* adox   %r12,%r10                                #! PC = 0x555555564d6b *)
adcs overflow r10 r10 r12 overflow;
(* mulx   0x58(%rdi),%r13,%r12                     #! EA = L0x7fffffffdcf8; Value = 0xed43caaf4bd76655; PC = 0x555555564d71 *)
mull r12 r13 L0x7fffffffdcf8 rdx;
(* mov    %r14,0x30(%rsp)                          #! EA = L0x7fffffffd858; PC = 0x555555564d77 *)
mov L0x7fffffffd858 r14;
(* adox   %r13,%r11                                #! PC = 0x555555564d7c *)
adcs overflow r11 r11 r13 overflow;
(* mulx   0x60(%rdi),%r14,%r13                     #! EA = L0x7fffffffdd00; Value = 0x377cc7c6ab9bd1a6; PC = 0x555555564d82 *)
mull r13 r14 L0x7fffffffdd00 rdx;
(* mov    %r15,0x38(%rsp)                          #! EA = L0x7fffffffd860; PC = 0x555555564d88 *)
mov L0x7fffffffd860 r15;
(* adox   %r14,%r12                                #! PC = 0x555555564d8d *)
adcs overflow r12 r12 r14 overflow;
(* mulx   0x68(%rdi),%r15,%r14                     #! EA = L0x7fffffffdd08; Value = 0x15cc2a9365fb501a; PC = 0x555555564d93 *)
mull r14 r15 L0x7fffffffdd08 rdx;
(* adox   %r15,%r13                                #! PC = 0x555555564d99 *)
adcs overflow r13 r13 r15 overflow;
(* mulx   0x70(%rdi),%rbp,%r15                     #! EA = L0x7fffffffdd10; Value = 0x3ff11d0423e82c0f; PC = 0x555555564d9f *)
mull r15 rbp L0x7fffffffdd10 rdx;
(* adox   %rbp,%r14                                #! PC = 0x555555564da5 *)
adcs overflow r14 r14 rbp overflow;
(* mulx   0x78(%rdi),%rbx,%rbp                     #! EA = L0x7fffffffdd18; Value = 0x0009dc2efa8ac250; PC = 0x555555564dab *)
mull rbp rbx L0x7fffffffdd18 rdx;
(* adox   %rbx,%r15                                #! PC = 0x555555564db1 *)
adcs overflow r15 r15 rbx overflow;
(* adox   %rax,%rbp                                #! PC = 0x555555564db7 *)
adcs overflow rbp rbp rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    %r8,%rdx                                 #! PC = 0x555555564dbd *)
mov rdx r8;
(* xor    %rbx,%rbx                                #! PC = 0x555555564dc0 *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x458c(%rip),%rcx,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x555555564dc3 *)
mull rbx rcx L0x555555569358 rdx;
(* adox   %rcx,%r11                                #! PC = 0x555555564dcc *)
adcs overflow r11 r11 rcx overflow;
(* adox   %rbx,%r12                                #! PC = 0x555555564dd2 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x457f(%rip),%rcx,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x555555564dd8 *)
mull rbx rcx L0x555555569360 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x555555564de1 *)
adcs carry r12 r12 rcx carry;
(* adox   %rbx,%r13                                #! PC = 0x555555564de7 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x4572(%rip),%rcx,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x555555564ded *)
mull rbx rcx L0x555555569368 rdx;
(* adcx   %rcx,%r13                                #! PC = 0x555555564df6 *)
adcs carry r13 r13 rcx carry;
(* adox   %rbx,%r14                                #! PC = 0x555555564dfc *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x4565(%rip),%rcx,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x555555564e02 *)
mull rbx rcx L0x555555569370 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x555555564e0b *)
adcs carry r14 r14 rcx carry;
(* adox   %rbx,%r15                                #! PC = 0x555555564e11 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x4558(%rip),%rcx,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x555555564e17 *)
mull rbx rcx L0x555555569378 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x555555564e20 *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%rbp                                #! PC = 0x555555564e26 *)
adcs overflow rbp rbp rbx overflow;
(* adc    $0x0,%rbp                                #! PC = 0x555555564e2c *)
adcs carry rbp rbp 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x8(%rsp),%rdx                           #! EA = L0x7fffffffd830; Value = 0xd2d30bef9bbeee9c; PC = 0x555555564e30 *)
mov rdx L0x7fffffffd830;
(* xor    %r8,%r8                                  #! PC = 0x555555564e35 *)
mov r8 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdce0; Value = 0xb372154e1a5219e1; PC = 0x555555564e38 *)
mull rbx rcx L0x7fffffffdce0 rdx;
(* adox   %rcx,%r9                                 #! PC = 0x555555564e3e *)
adcs overflow r9 r9 rcx overflow;
(* adox   %rbx,%r10                                #! PC = 0x555555564e44 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x48(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdce8; Value = 0x59cabde497a02c69; PC = 0x555555564e4a *)
mull rbx rcx L0x7fffffffdce8 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x555555564e50 *)
adcs carry r10 r10 rcx carry;
(* adox   %rbx,%r11                                #! PC = 0x555555564e56 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x50(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcf0; Value = 0x5f21bf09582ae1ce; PC = 0x555555564e5c *)
mull rbx rcx L0x7fffffffdcf0 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x555555564e62 *)
adcs carry r11 r11 rcx carry;
(* adox   %rbx,%r12                                #! PC = 0x555555564e68 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x58(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcf8; Value = 0xed43caaf4bd76655; PC = 0x555555564e6e *)
mull rbx rcx L0x7fffffffdcf8 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x555555564e74 *)
adcs carry r12 r12 rcx carry;
(* adox   %rbx,%r13                                #! PC = 0x555555564e7a *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x60(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd00; Value = 0x377cc7c6ab9bd1a6; PC = 0x555555564e80 *)
mull rbx rcx L0x7fffffffdd00 rdx;
(* adcx   %rcx,%r13                                #! PC = 0x555555564e86 *)
adcs carry r13 r13 rcx carry;
(* adox   %rbx,%r14                                #! PC = 0x555555564e8c *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x68(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd08; Value = 0x15cc2a9365fb501a; PC = 0x555555564e92 *)
mull rbx rcx L0x7fffffffdd08 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x555555564e98 *)
adcs carry r14 r14 rcx carry;
(* adox   %rbx,%r15                                #! PC = 0x555555564e9e *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x70(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd10; Value = 0x3ff11d0423e82c0f; PC = 0x555555564ea4 *)
mull rbx rcx L0x7fffffffdd10 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x555555564eaa *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%rbp                                #! PC = 0x555555564eb0 *)
adcs overflow rbp rbp rbx overflow;
(* mulx   0x78(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd18; Value = 0x0009dc2efa8ac250; PC = 0x555555564eb6 *)
mull rbx rcx L0x7fffffffdd18 rdx;
(* adcx   %rcx,%rbp                                #! PC = 0x555555564ebc *)
adcs carry rbp rbp rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555564ec2 *)
adcs overflow r8 r8 rbx overflow;
(* adc    $0x0,%r8                                 #! PC = 0x555555564ec8 *)
adcs carry r8 r8 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r9,%rdx                                 #! PC = 0x555555564ecc *)
mov rdx r9;
(* xor    %rbx,%rbx                                #! PC = 0x555555564ecf *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x447d(%rip),%rcx,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x555555564ed2 *)
mull rbx rcx L0x555555569358 rdx;
(* adox   %rcx,%r12                                #! PC = 0x555555564edb *)
adcs overflow r12 r12 rcx overflow;
(* adox   %rbx,%r13                                #! PC = 0x555555564ee1 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x4470(%rip),%rcx,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x555555564ee7 *)
mull rbx rcx L0x555555569360 rdx;
(* adcx   %rcx,%r13                                #! PC = 0x555555564ef0 *)
adcs carry r13 r13 rcx carry;
(* adox   %rbx,%r14                                #! PC = 0x555555564ef6 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x4463(%rip),%rcx,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x555555564efc *)
mull rbx rcx L0x555555569368 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x555555564f05 *)
adcs carry r14 r14 rcx carry;
(* adox   %rbx,%r15                                #! PC = 0x555555564f0b *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x4456(%rip),%rcx,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x555555564f11 *)
mull rbx rcx L0x555555569370 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x555555564f1a *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%rbp                                #! PC = 0x555555564f20 *)
adcs overflow rbp rbp rbx overflow;
(* mulx   0x4449(%rip),%rcx,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x555555564f26 *)
mull rbx rcx L0x555555569378 rdx;
(* adcx   %rcx,%rbp                                #! PC = 0x555555564f2f *)
adcs carry rbp rbp rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555564f35 *)
adcs overflow r8 r8 rbx overflow;
(* adc    $0x0,%r8                                 #! PC = 0x555555564f3b *)
adcs carry r8 r8 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x10(%rsp),%rdx                          #! EA = L0x7fffffffd838; Value = 0x85f02b2f8e9e65d1; PC = 0x555555564f3f *)
mov rdx L0x7fffffffd838;
(* xor    %r9,%r9                                  #! PC = 0x555555564f44 *)
mov r9 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdce0; Value = 0xb372154e1a5219e1; PC = 0x555555564f47 *)
mull rbx rcx L0x7fffffffdce0 rdx;
(* adox   %rcx,%r10                                #! PC = 0x555555564f4d *)
adcs overflow r10 r10 rcx overflow;
(* adox   %rbx,%r11                                #! PC = 0x555555564f53 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x48(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdce8; Value = 0x59cabde497a02c69; PC = 0x555555564f59 *)
mull rbx rcx L0x7fffffffdce8 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x555555564f5f *)
adcs carry r11 r11 rcx carry;
(* adox   %rbx,%r12                                #! PC = 0x555555564f65 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x50(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcf0; Value = 0x5f21bf09582ae1ce; PC = 0x555555564f6b *)
mull rbx rcx L0x7fffffffdcf0 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x555555564f71 *)
adcs carry r12 r12 rcx carry;
(* adox   %rbx,%r13                                #! PC = 0x555555564f77 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x58(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcf8; Value = 0xed43caaf4bd76655; PC = 0x555555564f7d *)
mull rbx rcx L0x7fffffffdcf8 rdx;
(* adcx   %rcx,%r13                                #! PC = 0x555555564f83 *)
adcs carry r13 r13 rcx carry;
(* adox   %rbx,%r14                                #! PC = 0x555555564f89 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x60(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd00; Value = 0x377cc7c6ab9bd1a6; PC = 0x555555564f8f *)
mull rbx rcx L0x7fffffffdd00 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x555555564f95 *)
adcs carry r14 r14 rcx carry;
(* adox   %rbx,%r15                                #! PC = 0x555555564f9b *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x68(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd08; Value = 0x15cc2a9365fb501a; PC = 0x555555564fa1 *)
mull rbx rcx L0x7fffffffdd08 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x555555564fa7 *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%rbp                                #! PC = 0x555555564fad *)
adcs overflow rbp rbp rbx overflow;
(* mulx   0x70(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd10; Value = 0x3ff11d0423e82c0f; PC = 0x555555564fb3 *)
mull rbx rcx L0x7fffffffdd10 rdx;
(* adcx   %rcx,%rbp                                #! PC = 0x555555564fb9 *)
adcs carry rbp rbp rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555564fbf *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x78(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd18; Value = 0x0009dc2efa8ac250; PC = 0x555555564fc5 *)
mull rbx rcx L0x7fffffffdd18 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x555555564fcb *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555564fd1 *)
adcs overflow r9 r9 rbx overflow;
(* adc    $0x0,%r9                                 #! PC = 0x555555564fd7 *)
adcs carry r9 r9 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r10,%rdx                                #! PC = 0x555555564fdb *)
mov rdx r10;
(* xor    %rbx,%rbx                                #! PC = 0x555555564fde *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x436e(%rip),%rcx,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x555555564fe1 *)
mull rbx rcx L0x555555569358 rdx;
(* adox   %rcx,%r13                                #! PC = 0x555555564fea *)
adcs overflow r13 r13 rcx overflow;
(* adox   %rbx,%r14                                #! PC = 0x555555564ff0 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x4361(%rip),%rcx,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x555555564ff6 *)
mull rbx rcx L0x555555569360 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x555555564fff *)
adcs carry r14 r14 rcx carry;
(* adox   %rbx,%r15                                #! PC = 0x555555565005 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x4354(%rip),%rcx,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x55555556500b *)
mull rbx rcx L0x555555569368 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x555555565014 *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%rbp                                #! PC = 0x55555556501a *)
adcs overflow rbp rbp rbx overflow;
(* mulx   0x4347(%rip),%rcx,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x555555565020 *)
mull rbx rcx L0x555555569370 rdx;
(* adcx   %rcx,%rbp                                #! PC = 0x555555565029 *)
adcs carry rbp rbp rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x55555556502f *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x433a(%rip),%rcx,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x555555565035 *)
mull rbx rcx L0x555555569378 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x55555556503e *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555565044 *)
adcs overflow r9 r9 rbx overflow;
(* adc    $0x0,%r9                                 #! PC = 0x55555556504a *)
adcs carry r9 r9 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rsp),%rdx                          #! EA = L0x7fffffffd840; Value = 0xffd76becf982bb1e; PC = 0x55555556504e *)
mov rdx L0x7fffffffd840;
(* xor    %r10,%r10                                #! PC = 0x555555565053 *)
mov r10 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdce0; Value = 0xb372154e1a5219e1; PC = 0x555555565056 *)
mull rbx rcx L0x7fffffffdce0 rdx;
(* adox   %rcx,%r11                                #! PC = 0x55555556505c *)
adcs overflow r11 r11 rcx overflow;
(* adox   %rbx,%r12                                #! PC = 0x555555565062 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x48(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdce8; Value = 0x59cabde497a02c69; PC = 0x555555565068 *)
mull rbx rcx L0x7fffffffdce8 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x55555556506e *)
adcs carry r12 r12 rcx carry;
(* adox   %rbx,%r13                                #! PC = 0x555555565074 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x50(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcf0; Value = 0x5f21bf09582ae1ce; PC = 0x55555556507a *)
mull rbx rcx L0x7fffffffdcf0 rdx;
(* adcx   %rcx,%r13                                #! PC = 0x555555565080 *)
adcs carry r13 r13 rcx carry;
(* adox   %rbx,%r14                                #! PC = 0x555555565086 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x58(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcf8; Value = 0xed43caaf4bd76655; PC = 0x55555556508c *)
mull rbx rcx L0x7fffffffdcf8 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x555555565092 *)
adcs carry r14 r14 rcx carry;
(* adox   %rbx,%r15                                #! PC = 0x555555565098 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x60(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd00; Value = 0x377cc7c6ab9bd1a6; PC = 0x55555556509e *)
mull rbx rcx L0x7fffffffdd00 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x5555555650a4 *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%rbp                                #! PC = 0x5555555650aa *)
adcs overflow rbp rbp rbx overflow;
(* mulx   0x68(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd08; Value = 0x15cc2a9365fb501a; PC = 0x5555555650b0 *)
mull rbx rcx L0x7fffffffdd08 rdx;
(* adcx   %rcx,%rbp                                #! PC = 0x5555555650b6 *)
adcs carry rbp rbp rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555650bc *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x70(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd10; Value = 0x3ff11d0423e82c0f; PC = 0x5555555650c2 *)
mull rbx rcx L0x7fffffffdd10 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x5555555650c8 *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555650ce *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x78(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd18; Value = 0x0009dc2efa8ac250; PC = 0x5555555650d4 *)
mull rbx rcx L0x7fffffffdd18 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x5555555650da *)
adcs carry r9 r9 rcx carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555650e0 *)
adcs overflow r10 r10 rbx overflow;
(* adc    $0x0,%r10                                #! PC = 0x5555555650e6 *)
adcs carry r10 r10 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r11,%rdx                                #! PC = 0x5555555650ea *)
mov rdx r11;
(* xor    %rbx,%rbx                                #! PC = 0x5555555650ed *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x425f(%rip),%rcx,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x5555555650f0 *)
mull rbx rcx L0x555555569358 rdx;
(* adox   %rcx,%r14                                #! PC = 0x5555555650f9 *)
adcs overflow r14 r14 rcx overflow;
(* adox   %rbx,%r15                                #! PC = 0x5555555650ff *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x4252(%rip),%rcx,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x555555565105 *)
mull rbx rcx L0x555555569360 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x55555556510e *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%rbp                                #! PC = 0x555555565114 *)
adcs overflow rbp rbp rbx overflow;
(* mulx   0x4245(%rip),%rcx,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x55555556511a *)
mull rbx rcx L0x555555569368 rdx;
(* adcx   %rcx,%rbp                                #! PC = 0x555555565123 *)
adcs carry rbp rbp rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555565129 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x4238(%rip),%rcx,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x55555556512f *)
mull rbx rcx L0x555555569370 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x555555565138 *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x55555556513e *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x422b(%rip),%rcx,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x555555565144 *)
mull rbx rcx L0x555555569378 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x55555556514d *)
adcs carry r9 r9 rcx carry;
(* adox   %rbx,%r10                                #! PC = 0x555555565153 *)
adcs overflow r10 r10 rbx overflow;
(* adc    $0x0,%r10                                #! PC = 0x555555565159 *)
adcs carry r10 r10 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x20(%rsp),%rdx                          #! EA = L0x7fffffffd848; Value = 0xc8a26cc7fd78f969; PC = 0x55555556515d *)
mov rdx L0x7fffffffd848;
(* xor    %r11,%r11                                #! PC = 0x555555565162 *)
mov r11 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdce0; Value = 0xb372154e1a5219e1; PC = 0x555555565165 *)
mull rbx rcx L0x7fffffffdce0 rdx;
(* adox   %rcx,%r12                                #! PC = 0x55555556516b *)
adcs overflow r12 r12 rcx overflow;
(* adox   %rbx,%r13                                #! PC = 0x555555565171 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x48(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdce8; Value = 0x59cabde497a02c69; PC = 0x555555565177 *)
mull rbx rcx L0x7fffffffdce8 rdx;
(* adcx   %rcx,%r13                                #! PC = 0x55555556517d *)
adcs carry r13 r13 rcx carry;
(* adox   %rbx,%r14                                #! PC = 0x555555565183 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x50(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcf0; Value = 0x5f21bf09582ae1ce; PC = 0x555555565189 *)
mull rbx rcx L0x7fffffffdcf0 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x55555556518f *)
adcs carry r14 r14 rcx carry;
(* adox   %rbx,%r15                                #! PC = 0x555555565195 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x58(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcf8; Value = 0xed43caaf4bd76655; PC = 0x55555556519b *)
mull rbx rcx L0x7fffffffdcf8 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x5555555651a1 *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%rbp                                #! PC = 0x5555555651a7 *)
adcs overflow rbp rbp rbx overflow;
(* mulx   0x60(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd00; Value = 0x377cc7c6ab9bd1a6; PC = 0x5555555651ad *)
mull rbx rcx L0x7fffffffdd00 rdx;
(* adcx   %rcx,%rbp                                #! PC = 0x5555555651b3 *)
adcs carry rbp rbp rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555651b9 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x68(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd08; Value = 0x15cc2a9365fb501a; PC = 0x5555555651bf *)
mull rbx rcx L0x7fffffffdd08 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x5555555651c5 *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555651cb *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x70(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd10; Value = 0x3ff11d0423e82c0f; PC = 0x5555555651d1 *)
mull rbx rcx L0x7fffffffdd10 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x5555555651d7 *)
adcs carry r9 r9 rcx carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555651dd *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x78(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd18; Value = 0x0009dc2efa8ac250; PC = 0x5555555651e3 *)
mull rbx rcx L0x7fffffffdd18 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x5555555651e9 *)
adcs carry r10 r10 rcx carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555651ef *)
adcs overflow r11 r11 rbx overflow;
(* adc    $0x0,%r11                                #! PC = 0x5555555651f5 *)
adcs carry r11 r11 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r12,%rdx                                #! PC = 0x5555555651f9 *)
mov rdx r12;
(* xor    %rbx,%rbx                                #! PC = 0x5555555651fc *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x4150(%rip),%rcx,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x5555555651ff *)
mull rbx rcx L0x555555569358 rdx;
(* adox   %rcx,%r15                                #! PC = 0x555555565208 *)
adcs overflow r15 r15 rcx overflow;
(* adox   %rbx,%rbp                                #! PC = 0x55555556520e *)
adcs overflow rbp rbp rbx overflow;
(* mulx   0x4143(%rip),%rcx,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x555555565214 *)
mull rbx rcx L0x555555569360 rdx;
(* adcx   %rcx,%rbp                                #! PC = 0x55555556521d *)
adcs carry rbp rbp rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555565223 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x4136(%rip),%rcx,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x555555565229 *)
mull rbx rcx L0x555555569368 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x555555565232 *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555565238 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x4129(%rip),%rcx,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x55555556523e *)
mull rbx rcx L0x555555569370 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x555555565247 *)
adcs carry r9 r9 rcx carry;
(* adox   %rbx,%r10                                #! PC = 0x55555556524d *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x411c(%rip),%rcx,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x555555565253 *)
mull rbx rcx L0x555555569378 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x55555556525c *)
adcs carry r10 r10 rcx carry;
(* adox   %rbx,%r11                                #! PC = 0x555555565262 *)
adcs overflow r11 r11 rbx overflow;
(* adc    $0x0,%r11                                #! PC = 0x555555565268 *)
adcs carry r11 r11 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x28(%rsp),%rdx                          #! EA = L0x7fffffffd850; Value = 0x27b9a9c15d500dd7; PC = 0x55555556526c *)
mov rdx L0x7fffffffd850;
(* xor    %r12,%r12                                #! PC = 0x555555565271 *)
mov r12 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdce0; Value = 0xb372154e1a5219e1; PC = 0x555555565274 *)
mull rbx rcx L0x7fffffffdce0 rdx;
(* adox   %rcx,%r13                                #! PC = 0x55555556527a *)
adcs overflow r13 r13 rcx overflow;
(* adox   %rbx,%r14                                #! PC = 0x555555565280 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x48(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdce8; Value = 0x59cabde497a02c69; PC = 0x555555565286 *)
mull rbx rcx L0x7fffffffdce8 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x55555556528c *)
adcs carry r14 r14 rcx carry;
(* adox   %rbx,%r15                                #! PC = 0x555555565292 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x50(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcf0; Value = 0x5f21bf09582ae1ce; PC = 0x555555565298 *)
mull rbx rcx L0x7fffffffdcf0 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x55555556529e *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%rbp                                #! PC = 0x5555555652a4 *)
adcs overflow rbp rbp rbx overflow;
(* mulx   0x58(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcf8; Value = 0xed43caaf4bd76655; PC = 0x5555555652aa *)
mull rbx rcx L0x7fffffffdcf8 rdx;
(* adcx   %rcx,%rbp                                #! PC = 0x5555555652b0 *)
adcs carry rbp rbp rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555652b6 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x60(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd00; Value = 0x377cc7c6ab9bd1a6; PC = 0x5555555652bc *)
mull rbx rcx L0x7fffffffdd00 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x5555555652c2 *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555652c8 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x68(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd08; Value = 0x15cc2a9365fb501a; PC = 0x5555555652ce *)
mull rbx rcx L0x7fffffffdd08 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x5555555652d4 *)
adcs carry r9 r9 rcx carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555652da *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x70(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd10; Value = 0x3ff11d0423e82c0f; PC = 0x5555555652e0 *)
mull rbx rcx L0x7fffffffdd10 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x5555555652e6 *)
adcs carry r10 r10 rcx carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555652ec *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x78(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd18; Value = 0x0009dc2efa8ac250; PC = 0x5555555652f2 *)
mull rbx rcx L0x7fffffffdd18 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x5555555652f8 *)
adcs carry r11 r11 rcx carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555652fe *)
adcs overflow r12 r12 rbx overflow;
(* adc    $0x0,%r12                                #! PC = 0x555555565304 *)
adcs carry r12 r12 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r13,%rdx                                #! PC = 0x555555565308 *)
mov rdx r13;
(* xor    %rbx,%rbx                                #! PC = 0x55555556530b *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x4041(%rip),%rcx,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x55555556530e *)
mull rbx rcx L0x555555569358 rdx;
(* adox   %rcx,%rbp                                #! PC = 0x555555565317 *)
adcs overflow rbp rbp rcx overflow;
(* adox   %rbx,%r8                                 #! PC = 0x55555556531d *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x4034(%rip),%rcx,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x555555565323 *)
mull rbx rcx L0x555555569360 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x55555556532c *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555565332 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x4027(%rip),%rcx,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x555555565338 *)
mull rbx rcx L0x555555569368 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x555555565341 *)
adcs carry r9 r9 rcx carry;
(* adox   %rbx,%r10                                #! PC = 0x555555565347 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x401a(%rip),%rcx,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x55555556534d *)
mull rbx rcx L0x555555569370 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x555555565356 *)
adcs carry r10 r10 rcx carry;
(* adox   %rbx,%r11                                #! PC = 0x55555556535c *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x400d(%rip),%rcx,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x555555565362 *)
mull rbx rcx L0x555555569378 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x55555556536b *)
adcs carry r11 r11 rcx carry;
(* adox   %rbx,%r12                                #! PC = 0x555555565371 *)
adcs overflow r12 r12 rbx overflow;
(* adc    $0x0,%r12                                #! PC = 0x555555565377 *)
adcs carry r12 r12 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x30(%rsp),%rdx                          #! EA = L0x7fffffffd858; Value = 0xcf53f811e51b2509; PC = 0x55555556537b *)
mov rdx L0x7fffffffd858;
(* xor    %r13,%r13                                #! PC = 0x555555565380 *)
mov r13 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdce0; Value = 0xb372154e1a5219e1; PC = 0x555555565383 *)
mull rbx rcx L0x7fffffffdce0 rdx;
(* adox   %rcx,%r14                                #! PC = 0x555555565389 *)
adcs overflow r14 r14 rcx overflow;
(* adox   %rbx,%r15                                #! PC = 0x55555556538f *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x48(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdce8; Value = 0x59cabde497a02c69; PC = 0x555555565395 *)
mull rbx rcx L0x7fffffffdce8 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x55555556539b *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%rbp                                #! PC = 0x5555555653a1 *)
adcs overflow rbp rbp rbx overflow;
(* mulx   0x50(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcf0; Value = 0x5f21bf09582ae1ce; PC = 0x5555555653a7 *)
mull rbx rcx L0x7fffffffdcf0 rdx;
(* adcx   %rcx,%rbp                                #! PC = 0x5555555653ad *)
adcs carry rbp rbp rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555653b3 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x58(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcf8; Value = 0xed43caaf4bd76655; PC = 0x5555555653b9 *)
mull rbx rcx L0x7fffffffdcf8 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x5555555653bf *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555653c5 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x60(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd00; Value = 0x377cc7c6ab9bd1a6; PC = 0x5555555653cb *)
mull rbx rcx L0x7fffffffdd00 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x5555555653d1 *)
adcs carry r9 r9 rcx carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555653d7 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x68(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd08; Value = 0x15cc2a9365fb501a; PC = 0x5555555653dd *)
mull rbx rcx L0x7fffffffdd08 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x5555555653e3 *)
adcs carry r10 r10 rcx carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555653e9 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x70(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd10; Value = 0x3ff11d0423e82c0f; PC = 0x5555555653ef *)
mull rbx rcx L0x7fffffffdd10 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x5555555653f5 *)
adcs carry r11 r11 rcx carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555653fb *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x78(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd18; Value = 0x0009dc2efa8ac250; PC = 0x555555565401 *)
mull rbx rcx L0x7fffffffdd18 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x555555565407 *)
adcs carry r12 r12 rcx carry;
(* adox   %rbx,%r13                                #! PC = 0x55555556540d *)
adcs overflow r13 r13 rbx overflow;
(* adc    $0x0,%r13                                #! PC = 0x555555565413 *)
adcs carry r13 r13 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r14,%rdx                                #! PC = 0x555555565417 *)
mov rdx r14;
(* xor    %rbx,%rbx                                #! PC = 0x55555556541a *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x3f32(%rip),%rcx,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x55555556541d *)
mull rbx rcx L0x555555569358 rdx;
(* adox   %rcx,%r8                                 #! PC = 0x555555565426 *)
adcs overflow r8 r8 rcx overflow;
(* adox   %rbx,%r9                                 #! PC = 0x55555556542c *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x3f25(%rip),%rcx,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x555555565432 *)
mull rbx rcx L0x555555569360 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x55555556543b *)
adcs carry r9 r9 rcx carry;
(* adox   %rbx,%r10                                #! PC = 0x555555565441 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x3f18(%rip),%rcx,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x555555565447 *)
mull rbx rcx L0x555555569368 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x555555565450 *)
adcs carry r10 r10 rcx carry;
(* adox   %rbx,%r11                                #! PC = 0x555555565456 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x3f0b(%rip),%rcx,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x55555556545c *)
mull rbx rcx L0x555555569370 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x555555565465 *)
adcs carry r11 r11 rcx carry;
(* adox   %rbx,%r12                                #! PC = 0x55555556546b *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x3efe(%rip),%rcx,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x555555565471 *)
mull rbx rcx L0x555555569378 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x55555556547a *)
adcs carry r12 r12 rcx carry;
(* adox   %rbx,%r13                                #! PC = 0x555555565480 *)
adcs overflow r13 r13 rbx overflow;
(* adc    $0x0,%r13                                #! PC = 0x555555565486 *)
adcs carry r13 r13 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x38(%rsp),%rdx                          #! EA = L0x7fffffffd860; Value = 0x0048e77323ca1faa; PC = 0x55555556548a *)
mov rdx L0x7fffffffd860;
(* xor    %r14,%r14                                #! PC = 0x55555556548f *)
mov r14 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdce0; Value = 0xb372154e1a5219e1; PC = 0x555555565492 *)
mull rbx rcx L0x7fffffffdce0 rdx;
(* adox   %rcx,%r15                                #! PC = 0x555555565498 *)
adcs overflow r15 r15 rcx overflow;
(* adox   %rbx,%rbp                                #! PC = 0x55555556549e *)
adcs overflow rbp rbp rbx overflow;
(* mulx   0x48(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdce8; Value = 0x59cabde497a02c69; PC = 0x5555555654a4 *)
mull rbx rcx L0x7fffffffdce8 rdx;
(* adcx   %rcx,%rbp                                #! PC = 0x5555555654aa *)
adcs carry rbp rbp rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555654b0 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x50(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcf0; Value = 0x5f21bf09582ae1ce; PC = 0x5555555654b6 *)
mull rbx rcx L0x7fffffffdcf0 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x5555555654bc *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555654c2 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x58(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcf8; Value = 0xed43caaf4bd76655; PC = 0x5555555654c8 *)
mull rbx rcx L0x7fffffffdcf8 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x5555555654ce *)
adcs carry r9 r9 rcx carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555654d4 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x60(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd00; Value = 0x377cc7c6ab9bd1a6; PC = 0x5555555654da *)
mull rbx rcx L0x7fffffffdd00 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x5555555654e0 *)
adcs carry r10 r10 rcx carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555654e6 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x68(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd08; Value = 0x15cc2a9365fb501a; PC = 0x5555555654ec *)
mull rbx rcx L0x7fffffffdd08 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x5555555654f2 *)
adcs carry r11 r11 rcx carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555654f8 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x70(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd10; Value = 0x3ff11d0423e82c0f; PC = 0x5555555654fe *)
mull rbx rcx L0x7fffffffdd10 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x555555565504 *)
adcs carry r12 r12 rcx carry;
(* adox   %rbx,%r13                                #! PC = 0x55555556550a *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x78(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd18; Value = 0x0009dc2efa8ac250; PC = 0x555555565510 *)
mull rbx rcx L0x7fffffffdd18 rdx;
(* adcx   %rcx,%r13                                #! PC = 0x555555565516 *)
adcs carry r13 r13 rcx carry;
(* adox   %rbx,%r14                                #! PC = 0x55555556551c *)
adcs overflow r14 r14 rbx overflow;
(* adc    $0x0,%r14                                #! PC = 0x555555565522 *)
adcs carry r14 r14 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r15,%rdx                                #! PC = 0x555555565526 *)
mov rdx r15;
(* xor    %rbx,%rbx                                #! PC = 0x555555565529 *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x3e23(%rip),%rcx,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x55555556552c *)
mull rbx rcx L0x555555569358 rdx;
(* adox   %rcx,%r9                                 #! PC = 0x555555565535 *)
adcs overflow r9 r9 rcx overflow;
(* adox   %rbx,%r10                                #! PC = 0x55555556553b *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x3e16(%rip),%rcx,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x555555565541 *)
mull rbx rcx L0x555555569360 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x55555556554a *)
adcs carry r10 r10 rcx carry;
(* adox   %rbx,%r11                                #! PC = 0x555555565550 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x3e09(%rip),%rcx,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x555555565556 *)
mull rbx rcx L0x555555569368 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x55555556555f *)
adcs carry r11 r11 rcx carry;
(* adox   %rbx,%r12                                #! PC = 0x555555565565 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x3dfc(%rip),%rcx,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x55555556556b *)
mull rbx rcx L0x555555569370 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x555555565574 *)
adcs carry r12 r12 rcx carry;
(* adox   %rbx,%r13                                #! PC = 0x55555556557a *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x3def(%rip),%rcx,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x555555565580 *)
mull rbx rcx L0x555555569378 rdx;
(* adcx   %rcx,%r13                                #! PC = 0x555555565589 *)
adcs carry r13 r13 rcx carry;
(* adox   %rbx,%r14                                #! PC = 0x55555556558f *)
adcs overflow r14 r14 rbx overflow;
(* adc    $0x0,%r14                                #! PC = 0x555555565595 *)
adcs carry r14 r14 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %rbp,(%rsi)                              #! EA = L0x7fffffffdd60; PC = 0x555555565599 *)
mov L0x7fffffffdd60 rbp;
(* mov    %r8,0x8(%rsi)                            #! EA = L0x7fffffffdd68; PC = 0x55555556559c *)
mov L0x7fffffffdd68 r8;
(* mov    %r9,0x10(%rsi)                           #! EA = L0x7fffffffdd70; PC = 0x5555555655a0 *)
mov L0x7fffffffdd70 r9;
(* mov    %r10,0x18(%rsi)                          #! EA = L0x7fffffffdd78; PC = 0x5555555655a4 *)
mov L0x7fffffffdd78 r10;
(* mov    %r11,0x20(%rsi)                          #! EA = L0x7fffffffdd80; PC = 0x5555555655a8 *)
mov L0x7fffffffdd80 r11;
(* mov    %r12,0x28(%rsi)                          #! EA = L0x7fffffffdd88; PC = 0x5555555655ac *)
mov L0x7fffffffdd88 r12;
(* mov    %r13,0x30(%rsi)                          #! EA = L0x7fffffffdd90; PC = 0x5555555655b0 *)
mov L0x7fffffffdd90 r13;
(* mov    %r14,0x38(%rsi)                          #! EA = L0x7fffffffdd98; PC = 0x5555555655b4 *)
mov L0x7fffffffdd98 r14;
(* #! <- SP = 0x7fffffffd898 *)
#! 0x7fffffffd898 = 0x7fffffffd898;
(* #retq                                           #! PC = 0x5555555655c6 *)
#retq                                           #! 0x5555555655c6 = 0x5555555655c6;
(* vmovdqa64 (%rsp),%xmm0                          #! EA = L0x7fffffffd8a0; Value = 0x1c1446bf51647cac; PC = 0x5555555585aa *)
mov xmm0_L L0x7fffffffd8a0;
mov xmm0_H L0x7fffffffd8a8;
(* vmovdqa64 0x10(%rsp),%xmm1                      #! EA = L0x7fffffffd8b0; Value = 0x120ecd831c0f3442; PC = 0x5555555585b1 *)
mov xmm1_L L0x7fffffffd8b0;
mov xmm1_H L0x7fffffffd8b8;
(* vmovdqa64 0x20(%rsp),%xmm2                      #! EA = L0x7fffffffd8c0; Value = 0xdb860fcb34a990dc; PC = 0x5555555585b9 *)
mov xmm2_L L0x7fffffffd8c0;
mov xmm2_H L0x7fffffffd8c8;
(* vmovdqa64 0x30(%rsp),%xmm3                      #! EA = L0x7fffffffd8d0; Value = 0xf6529af540c378b2; PC = 0x5555555585c1 *)
mov xmm3_L L0x7fffffffd8d0;
mov xmm3_H L0x7fffffffd8d8;
(* vmovups %xmm0,(%rbx)                            #! EA = L0x7fffffffdd20; PC = 0x5555555585c9 *)
mov L0x7fffffffdd20 xmm0_L;
mov L0x7fffffffdd28 xmm0_H;
(* vmovups %xmm1,0x10(%rbx)                        #! EA = L0x7fffffffdd30; PC = 0x5555555585cd *)
mov L0x7fffffffdd30 xmm1_L;
mov L0x7fffffffdd38 xmm1_H;
(* vmovups %xmm2,0x20(%rbx)                        #! EA = L0x7fffffffdd40; PC = 0x5555555585d2 *)
mov L0x7fffffffdd40 xmm2_L;
mov L0x7fffffffdd48 xmm2_H;
(* vmovups %xmm3,0x30(%rbx)                        #! EA = L0x7fffffffdd50; PC = 0x5555555585d7 *)
mov L0x7fffffffdd50 xmm3_L;
mov L0x7fffffffdd58 xmm3_H;
(* mov    0x88(%rsp),%rax                          #! EA = L0x7fffffffd928; Value = 0xb2bd2a7e7b712c00; PC = 0x5555555585dc *)
mov rax L0x7fffffffd928;
(* xor    %fs:0x28,%rax                            #! PC = 0x5555555585e4 *)
xor rax@uint64 rax fs0x28;
(* #jne    0x5555555585f9 <fp2sqr503_mont+137>     #! PC = 0x5555555585ed *)
#jne    0x5555555585f9 <fp2sqr503_mont+137>     #! 0x5555555585ed = 0x5555555585ed;
(* add    $0x98,%rsp                               #! PC = 0x5555555585ef *)
adds carry rsp rsp 0x98@uint64;
(* #! <- SP = 0x7fffffffd948 *)
#! 0x7fffffffd948 = 0x7fffffffd948;
(* #retq                                           #! PC = 0x5555555585f8 *)
#retq                                           #! 0x5555555585f8 = 0x5555555585f8;

(* ===== Outputs ===== *)

mov c00 L0x7fffffffdd20;
mov c01 L0x7fffffffdd28;
mov c02 L0x7fffffffdd30;
mov c03 L0x7fffffffdd38;
mov c04 L0x7fffffffdd40;
mov c05 L0x7fffffffdd48;
mov c06 L0x7fffffffdd50;
mov c07 L0x7fffffffdd58;
mov c10 L0x7fffffffdd60;
mov c11 L0x7fffffffdd68;
mov c12 L0x7fffffffdd70;
mov c13 L0x7fffffffdd78;
mov c14 L0x7fffffffdd80;
mov c15 L0x7fffffffdd88;
mov c16 L0x7fffffffdd90;
mov c17 L0x7fffffffdd98;

ghost i@uint64 : true && true;

{
  and [
    eqmod ((limbs 64 [ 0, 0, 0, 0, 0, 0, 0, 0, c00, c01, c02, c03, c04, c05, c06, c07 ]) + (limbs 64 [ 0, 0, 0, 0, 0, 0, 0, 0, c10, c11, c12, c13, c14, c15, c16, c17 ]) * i)
          (
            ((limbs 64 [ a00, a01, a02, a03, a04, a05, a06, a07 ]) + (limbs 64 [ a10, a11, a12, a13, a14, a15, a16, a17 ]) * i)
            *
            ((limbs 64 [ a00, a01, a02, a03, a04, a05, a06, a07 ]) + (limbs 64 [ a10, a11, a12, a13, a14, a15, a16, a17 ]) * i)
          )
          [i**2 + 1, limbs 64 [ $p503_0, $p503_1, $p503_2, $p503_3, $p503_4, $p503_5, $p503_6, $p503_7 ]],
    eqmod (limbs 64 [ 0, 0, 0, 0, 0, 0, 0, 0, c00, c01, c02, c03, c04, c05, c06, c07 ])
          (
            ( (limbs 64 [ a00, a01, a02, a03, a04, a05, a06, a07 ])
              +
              (limbs 64 [ a10, a11, a12, a13, a14, a15, a16, a17 ]) )
            *
            ( (limbs 64 [ a00, a01, a02, a03, a04, a05, a06, a07 ])
              -
              (limbs 64 [ a10, a11, a12, a13, a14, a15, a16, a17 ]) )
          )
          (limbs 64 [ $p503_0, $p503_1, $p503_2, $p503_3, $p503_4, $p503_5, $p503_6, $p503_7 ]),
    eqmod (limbs 64 [ 0, 0, 0, 0, 0, 0, 0, 0, c10, c11, c12, c13, c14, c15, c16, c17 ])
          ( 2
            *
            (limbs 64 [ a00, a01, a02, a03, a04, a05, a06, a07 ])
            *
            (limbs 64 [ a10, a11, a12, a13, a14, a15, a16, a17 ])
          )
          (limbs 64 [ $p503_0, $p503_1, $p503_2, $p503_3, $p503_4, $p503_5, $p503_6, $p503_7 ])
  ]
  &&
  and [
    limbs 64 [ c00, c01, c02, c03, c04, c05, c06, c07 ] <=u
        (2@512 * limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                            $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ] - 1@512),
    limbs 64 [ c10, c11, c12, c13, c14, c15, c16, c17 ] <=u
        (2@512 * limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                            $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ] - 1@512)
  ]
}
