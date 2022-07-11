(* on frege: -v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint fp2sqr503_c1_mont.cl
Parsing Cryptoline file:		[OK]		0.008642 seconds
Checking well-formedness:		[OK]		0.000944 seconds
Transforming to SSA form:		[OK]		0.000303 seconds
Normalizing specification:		[OK]		0.000689 seconds
Rewriting assignments:			[OK]		0.000334 seconds
Verifying program safety:
	 Cut 0
	     Round 1 (0 safety conditions, timeout = 14400 seconds)
	 Overall			[OK]		0.000135 seconds
Verifying range assertions:		[OK]		7.806661 seconds
Verifying range specification:		[OK]		7.724823 seconds
Rewriting value-preserved casting:	[OK]		0.000104 seconds
Verifying algebraic assertions:		[OK]		0.000830 seconds
Verifying algebraic specification:	[OK]		0.165942 seconds
Verification result:			[OK]		15.710161 seconds
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

mov L0x555555569358 $p503p1_3@uint64;
mov L0x555555569360 $p503p1_4@uint64;
mov L0x555555569368 $p503p1_5@uint64;
mov L0x555555569370 $p503p1_6@uint64;
mov L0x555555569378 $p503p1_7@uint64;

(* ===== Program ===== *)

(* #! -> SP = 0x7fffffffd888 *)
#! 0x7fffffffd888 = 0x7fffffffd888;
(* #jmpq   0x555555564cef <fp2sqr503_c1_asm>       #! PC = 0x555555562564 *)
#jmpq   0x555555564cef <fp2sqr503_c1_asm>       #! 0x555555562564 = 0x555555562564;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffdc90; Value = 0x2c26f9460e9fbe7b; PC = 0x555555564cf3 *)
mov r8 L0x7fffffffdc90;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffdc98; Value = 0xe96985f7cddf774e; PC = 0x555555564cf6 *)
mov r9 L0x7fffffffdc98;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffdca0; Value = 0x42f81597c74f32e8; PC = 0x555555564cfa *)
mov r10 L0x7fffffffdca0;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffdca8; Value = 0xffebb5f67cc15d8f; PC = 0x555555564cfe *)
mov r11 L0x7fffffffdca8;
(* mov    0x20(%rdi),%r12                          #! EA = L0x7fffffffdcb0; Value = 0xe4513663febc7cb4; PC = 0x555555564d02 *)
mov r12 L0x7fffffffdcb0;
(* mov    0x28(%rdi),%r13                          #! EA = L0x7fffffffdcb8; Value = 0x93dcd4e0aea806eb; PC = 0x555555564d06 *)
mov r13 L0x7fffffffdcb8;
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
(* mov    0x30(%rdi),%r14                          #! EA = L0x7fffffffdcc0; Value = 0x67a9fc08f28d9284; PC = 0x555555564d1d *)
mov r14 L0x7fffffffdcc0;
(* mov    0x38(%rdi),%r15                          #! EA = L0x7fffffffdcc8; Value = 0x002473b991e50fd5; PC = 0x555555564d21 *)
mov r15 L0x7fffffffdcc8;
(* adc    %r13,%r13                                #! PC = 0x555555564d25 *)
adcs carry r13 r13 r13@uint64 carry;
(* adc    %r14,%r14                                #! PC = 0x555555564d29 *)
adcs carry r14 r14 r14@uint64 carry;
(* adc    %r15,%r15                                #! PC = 0x555555564d2d *)
adcs carry r15 r15 r15@uint64 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r9,0x8(%rsp)                            #! EA = L0x7fffffffd820; PC = 0x555555564d34 *)
mov L0x7fffffffd820 r9;
(* mov    %r10,0x10(%rsp)                          #! EA = L0x7fffffffd828; PC = 0x555555564d39 *)
mov L0x7fffffffd828 r10;
(* mov    %r8,%rdx                                 #! PC = 0x555555564d3e *)
mov rdx r8;
(* mulx   0x40(%rdi),%r8,%r9                       #! EA = L0x7fffffffdcd0; Value = 0xb372154e1a5219e1; PC = 0x555555564d41 *)
mull r9 r8 L0x7fffffffdcd0 rdx;
(* mov    %r11,0x18(%rsp)                          #! EA = L0x7fffffffd830; PC = 0x555555564d47 *)
mov L0x7fffffffd830 r11;
(* xor    %rax,%rax                                #! PC = 0x555555564d4c *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x48(%rdi),%r11,%r10                     #! EA = L0x7fffffffdcd8; Value = 0x59cabde497a02c69; PC = 0x555555564d4f *)
mull r10 r11 L0x7fffffffdcd8 rdx;
(* mov    %r12,0x20(%rsp)                          #! EA = L0x7fffffffd838; PC = 0x555555564d55 *)
mov L0x7fffffffd838 r12;
(* adox   %r11,%r9                                 #! PC = 0x555555564d5a *)
adcs overflow r9 r9 r11 overflow;
(* mulx   0x50(%rdi),%r12,%r11                     #! EA = L0x7fffffffdce0; Value = 0x5f21bf09582ae1ce; PC = 0x555555564d60 *)
mull r11 r12 L0x7fffffffdce0 rdx;
(* mov    %r13,0x28(%rsp)                          #! EA = L0x7fffffffd840; PC = 0x555555564d66 *)
mov L0x7fffffffd840 r13;
(* adox   %r12,%r10                                #! PC = 0x555555564d6b *)
adcs overflow r10 r10 r12 overflow;
(* mulx   0x58(%rdi),%r13,%r12                     #! EA = L0x7fffffffdce8; Value = 0xed43caaf4bd76655; PC = 0x555555564d71 *)
mull r12 r13 L0x7fffffffdce8 rdx;
(* mov    %r14,0x30(%rsp)                          #! EA = L0x7fffffffd848; PC = 0x555555564d77 *)
mov L0x7fffffffd848 r14;
(* adox   %r13,%r11                                #! PC = 0x555555564d7c *)
adcs overflow r11 r11 r13 overflow;
(* mulx   0x60(%rdi),%r14,%r13                     #! EA = L0x7fffffffdcf0; Value = 0x377cc7c6ab9bd1a6; PC = 0x555555564d82 *)
mull r13 r14 L0x7fffffffdcf0 rdx;
(* mov    %r15,0x38(%rsp)                          #! EA = L0x7fffffffd850; PC = 0x555555564d88 *)
mov L0x7fffffffd850 r15;
(* adox   %r14,%r12                                #! PC = 0x555555564d8d *)
adcs overflow r12 r12 r14 overflow;
(* mulx   0x68(%rdi),%r15,%r14                     #! EA = L0x7fffffffdcf8; Value = 0x15cc2a9365fb501a; PC = 0x555555564d93 *)
mull r14 r15 L0x7fffffffdcf8 rdx;
(* adox   %r15,%r13                                #! PC = 0x555555564d99 *)
adcs overflow r13 r13 r15 overflow;
(* mulx   0x70(%rdi),%rbp,%r15                     #! EA = L0x7fffffffdd00; Value = 0x3ff11d0423e82c0f; PC = 0x555555564d9f *)
mull r15 rbp L0x7fffffffdd00 rdx;
(* adox   %rbp,%r14                                #! PC = 0x555555564da5 *)
adcs overflow r14 r14 rbp overflow;
(* mulx   0x78(%rdi),%rbx,%rbp                     #! EA = L0x7fffffffdd08; Value = 0x0009dc2efa8ac250; PC = 0x555555564dab *)
mull rbp rbx L0x7fffffffdd08 rdx;
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
(* mov    0x8(%rsp),%rdx                           #! EA = L0x7fffffffd820; Value = 0xd2d30bef9bbeee9c; PC = 0x555555564e30 *)
mov rdx L0x7fffffffd820;
(* xor    %r8,%r8                                  #! PC = 0x555555564e35 *)
mov r8 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcd0; Value = 0xb372154e1a5219e1; PC = 0x555555564e38 *)
mull rbx rcx L0x7fffffffdcd0 rdx;
(* adox   %rcx,%r9                                 #! PC = 0x555555564e3e *)
adcs overflow r9 r9 rcx overflow;
(* adox   %rbx,%r10                                #! PC = 0x555555564e44 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x48(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcd8; Value = 0x59cabde497a02c69; PC = 0x555555564e4a *)
mull rbx rcx L0x7fffffffdcd8 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x555555564e50 *)
adcs carry r10 r10 rcx carry;
(* adox   %rbx,%r11                                #! PC = 0x555555564e56 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x50(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdce0; Value = 0x5f21bf09582ae1ce; PC = 0x555555564e5c *)
mull rbx rcx L0x7fffffffdce0 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x555555564e62 *)
adcs carry r11 r11 rcx carry;
(* adox   %rbx,%r12                                #! PC = 0x555555564e68 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x58(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdce8; Value = 0xed43caaf4bd76655; PC = 0x555555564e6e *)
mull rbx rcx L0x7fffffffdce8 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x555555564e74 *)
adcs carry r12 r12 rcx carry;
(* adox   %rbx,%r13                                #! PC = 0x555555564e7a *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x60(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcf0; Value = 0x377cc7c6ab9bd1a6; PC = 0x555555564e80 *)
mull rbx rcx L0x7fffffffdcf0 rdx;
(* adcx   %rcx,%r13                                #! PC = 0x555555564e86 *)
adcs carry r13 r13 rcx carry;
(* adox   %rbx,%r14                                #! PC = 0x555555564e8c *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x68(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcf8; Value = 0x15cc2a9365fb501a; PC = 0x555555564e92 *)
mull rbx rcx L0x7fffffffdcf8 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x555555564e98 *)
adcs carry r14 r14 rcx carry;
(* adox   %rbx,%r15                                #! PC = 0x555555564e9e *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x70(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd00; Value = 0x3ff11d0423e82c0f; PC = 0x555555564ea4 *)
mull rbx rcx L0x7fffffffdd00 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x555555564eaa *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%rbp                                #! PC = 0x555555564eb0 *)
adcs overflow rbp rbp rbx overflow;
(* mulx   0x78(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd08; Value = 0x0009dc2efa8ac250; PC = 0x555555564eb6 *)
mull rbx rcx L0x7fffffffdd08 rdx;
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
(* mov    0x10(%rsp),%rdx                          #! EA = L0x7fffffffd828; Value = 0x85f02b2f8e9e65d1; PC = 0x555555564f3f *)
mov rdx L0x7fffffffd828;
(* xor    %r9,%r9                                  #! PC = 0x555555564f44 *)
mov r9 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcd0; Value = 0xb372154e1a5219e1; PC = 0x555555564f47 *)
mull rbx rcx L0x7fffffffdcd0 rdx;
(* adox   %rcx,%r10                                #! PC = 0x555555564f4d *)
adcs overflow r10 r10 rcx overflow;
(* adox   %rbx,%r11                                #! PC = 0x555555564f53 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x48(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcd8; Value = 0x59cabde497a02c69; PC = 0x555555564f59 *)
mull rbx rcx L0x7fffffffdcd8 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x555555564f5f *)
adcs carry r11 r11 rcx carry;
(* adox   %rbx,%r12                                #! PC = 0x555555564f65 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x50(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdce0; Value = 0x5f21bf09582ae1ce; PC = 0x555555564f6b *)
mull rbx rcx L0x7fffffffdce0 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x555555564f71 *)
adcs carry r12 r12 rcx carry;
(* adox   %rbx,%r13                                #! PC = 0x555555564f77 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x58(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdce8; Value = 0xed43caaf4bd76655; PC = 0x555555564f7d *)
mull rbx rcx L0x7fffffffdce8 rdx;
(* adcx   %rcx,%r13                                #! PC = 0x555555564f83 *)
adcs carry r13 r13 rcx carry;
(* adox   %rbx,%r14                                #! PC = 0x555555564f89 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x60(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcf0; Value = 0x377cc7c6ab9bd1a6; PC = 0x555555564f8f *)
mull rbx rcx L0x7fffffffdcf0 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x555555564f95 *)
adcs carry r14 r14 rcx carry;
(* adox   %rbx,%r15                                #! PC = 0x555555564f9b *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x68(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcf8; Value = 0x15cc2a9365fb501a; PC = 0x555555564fa1 *)
mull rbx rcx L0x7fffffffdcf8 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x555555564fa7 *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%rbp                                #! PC = 0x555555564fad *)
adcs overflow rbp rbp rbx overflow;
(* mulx   0x70(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd00; Value = 0x3ff11d0423e82c0f; PC = 0x555555564fb3 *)
mull rbx rcx L0x7fffffffdd00 rdx;
(* adcx   %rcx,%rbp                                #! PC = 0x555555564fb9 *)
adcs carry rbp rbp rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555564fbf *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x78(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd08; Value = 0x0009dc2efa8ac250; PC = 0x555555564fc5 *)
mull rbx rcx L0x7fffffffdd08 rdx;
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
(* mov    0x18(%rsp),%rdx                          #! EA = L0x7fffffffd830; Value = 0xffd76becf982bb1e; PC = 0x55555556504e *)
mov rdx L0x7fffffffd830;
(* xor    %r10,%r10                                #! PC = 0x555555565053 *)
mov r10 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcd0; Value = 0xb372154e1a5219e1; PC = 0x555555565056 *)
mull rbx rcx L0x7fffffffdcd0 rdx;
(* adox   %rcx,%r11                                #! PC = 0x55555556505c *)
adcs overflow r11 r11 rcx overflow;
(* adox   %rbx,%r12                                #! PC = 0x555555565062 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x48(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcd8; Value = 0x59cabde497a02c69; PC = 0x555555565068 *)
mull rbx rcx L0x7fffffffdcd8 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x55555556506e *)
adcs carry r12 r12 rcx carry;
(* adox   %rbx,%r13                                #! PC = 0x555555565074 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x50(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdce0; Value = 0x5f21bf09582ae1ce; PC = 0x55555556507a *)
mull rbx rcx L0x7fffffffdce0 rdx;
(* adcx   %rcx,%r13                                #! PC = 0x555555565080 *)
adcs carry r13 r13 rcx carry;
(* adox   %rbx,%r14                                #! PC = 0x555555565086 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x58(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdce8; Value = 0xed43caaf4bd76655; PC = 0x55555556508c *)
mull rbx rcx L0x7fffffffdce8 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x555555565092 *)
adcs carry r14 r14 rcx carry;
(* adox   %rbx,%r15                                #! PC = 0x555555565098 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x60(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcf0; Value = 0x377cc7c6ab9bd1a6; PC = 0x55555556509e *)
mull rbx rcx L0x7fffffffdcf0 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x5555555650a4 *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%rbp                                #! PC = 0x5555555650aa *)
adcs overflow rbp rbp rbx overflow;
(* mulx   0x68(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcf8; Value = 0x15cc2a9365fb501a; PC = 0x5555555650b0 *)
mull rbx rcx L0x7fffffffdcf8 rdx;
(* adcx   %rcx,%rbp                                #! PC = 0x5555555650b6 *)
adcs carry rbp rbp rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555650bc *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x70(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd00; Value = 0x3ff11d0423e82c0f; PC = 0x5555555650c2 *)
mull rbx rcx L0x7fffffffdd00 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x5555555650c8 *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555650ce *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x78(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd08; Value = 0x0009dc2efa8ac250; PC = 0x5555555650d4 *)
mull rbx rcx L0x7fffffffdd08 rdx;
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
(* mov    0x20(%rsp),%rdx                          #! EA = L0x7fffffffd838; Value = 0xc8a26cc7fd78f969; PC = 0x55555556515d *)
mov rdx L0x7fffffffd838;
(* xor    %r11,%r11                                #! PC = 0x555555565162 *)
mov r11 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcd0; Value = 0xb372154e1a5219e1; PC = 0x555555565165 *)
mull rbx rcx L0x7fffffffdcd0 rdx;
(* adox   %rcx,%r12                                #! PC = 0x55555556516b *)
adcs overflow r12 r12 rcx overflow;
(* adox   %rbx,%r13                                #! PC = 0x555555565171 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x48(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcd8; Value = 0x59cabde497a02c69; PC = 0x555555565177 *)
mull rbx rcx L0x7fffffffdcd8 rdx;
(* adcx   %rcx,%r13                                #! PC = 0x55555556517d *)
adcs carry r13 r13 rcx carry;
(* adox   %rbx,%r14                                #! PC = 0x555555565183 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x50(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdce0; Value = 0x5f21bf09582ae1ce; PC = 0x555555565189 *)
mull rbx rcx L0x7fffffffdce0 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x55555556518f *)
adcs carry r14 r14 rcx carry;
(* adox   %rbx,%r15                                #! PC = 0x555555565195 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x58(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdce8; Value = 0xed43caaf4bd76655; PC = 0x55555556519b *)
mull rbx rcx L0x7fffffffdce8 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x5555555651a1 *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%rbp                                #! PC = 0x5555555651a7 *)
adcs overflow rbp rbp rbx overflow;
(* mulx   0x60(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcf0; Value = 0x377cc7c6ab9bd1a6; PC = 0x5555555651ad *)
mull rbx rcx L0x7fffffffdcf0 rdx;
(* adcx   %rcx,%rbp                                #! PC = 0x5555555651b3 *)
adcs carry rbp rbp rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555651b9 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x68(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcf8; Value = 0x15cc2a9365fb501a; PC = 0x5555555651bf *)
mull rbx rcx L0x7fffffffdcf8 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x5555555651c5 *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555651cb *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x70(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd00; Value = 0x3ff11d0423e82c0f; PC = 0x5555555651d1 *)
mull rbx rcx L0x7fffffffdd00 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x5555555651d7 *)
adcs carry r9 r9 rcx carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555651dd *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x78(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd08; Value = 0x0009dc2efa8ac250; PC = 0x5555555651e3 *)
mull rbx rcx L0x7fffffffdd08 rdx;
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
(* mov    0x28(%rsp),%rdx                          #! EA = L0x7fffffffd840; Value = 0x27b9a9c15d500dd7; PC = 0x55555556526c *)
mov rdx L0x7fffffffd840;
(* xor    %r12,%r12                                #! PC = 0x555555565271 *)
mov r12 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcd0; Value = 0xb372154e1a5219e1; PC = 0x555555565274 *)
mull rbx rcx L0x7fffffffdcd0 rdx;
(* adox   %rcx,%r13                                #! PC = 0x55555556527a *)
adcs overflow r13 r13 rcx overflow;
(* adox   %rbx,%r14                                #! PC = 0x555555565280 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x48(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcd8; Value = 0x59cabde497a02c69; PC = 0x555555565286 *)
mull rbx rcx L0x7fffffffdcd8 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x55555556528c *)
adcs carry r14 r14 rcx carry;
(* adox   %rbx,%r15                                #! PC = 0x555555565292 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x50(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdce0; Value = 0x5f21bf09582ae1ce; PC = 0x555555565298 *)
mull rbx rcx L0x7fffffffdce0 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x55555556529e *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%rbp                                #! PC = 0x5555555652a4 *)
adcs overflow rbp rbp rbx overflow;
(* mulx   0x58(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdce8; Value = 0xed43caaf4bd76655; PC = 0x5555555652aa *)
mull rbx rcx L0x7fffffffdce8 rdx;
(* adcx   %rcx,%rbp                                #! PC = 0x5555555652b0 *)
adcs carry rbp rbp rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555652b6 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x60(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcf0; Value = 0x377cc7c6ab9bd1a6; PC = 0x5555555652bc *)
mull rbx rcx L0x7fffffffdcf0 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x5555555652c2 *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555652c8 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x68(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcf8; Value = 0x15cc2a9365fb501a; PC = 0x5555555652ce *)
mull rbx rcx L0x7fffffffdcf8 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x5555555652d4 *)
adcs carry r9 r9 rcx carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555652da *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x70(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd00; Value = 0x3ff11d0423e82c0f; PC = 0x5555555652e0 *)
mull rbx rcx L0x7fffffffdd00 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x5555555652e6 *)
adcs carry r10 r10 rcx carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555652ec *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x78(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd08; Value = 0x0009dc2efa8ac250; PC = 0x5555555652f2 *)
mull rbx rcx L0x7fffffffdd08 rdx;
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
(* mov    0x30(%rsp),%rdx                          #! EA = L0x7fffffffd848; Value = 0xcf53f811e51b2509; PC = 0x55555556537b *)
mov rdx L0x7fffffffd848;
(* xor    %r13,%r13                                #! PC = 0x555555565380 *)
mov r13 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcd0; Value = 0xb372154e1a5219e1; PC = 0x555555565383 *)
mull rbx rcx L0x7fffffffdcd0 rdx;
(* adox   %rcx,%r14                                #! PC = 0x555555565389 *)
adcs overflow r14 r14 rcx overflow;
(* adox   %rbx,%r15                                #! PC = 0x55555556538f *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x48(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcd8; Value = 0x59cabde497a02c69; PC = 0x555555565395 *)
mull rbx rcx L0x7fffffffdcd8 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x55555556539b *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%rbp                                #! PC = 0x5555555653a1 *)
adcs overflow rbp rbp rbx overflow;
(* mulx   0x50(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdce0; Value = 0x5f21bf09582ae1ce; PC = 0x5555555653a7 *)
mull rbx rcx L0x7fffffffdce0 rdx;
(* adcx   %rcx,%rbp                                #! PC = 0x5555555653ad *)
adcs carry rbp rbp rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555653b3 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x58(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdce8; Value = 0xed43caaf4bd76655; PC = 0x5555555653b9 *)
mull rbx rcx L0x7fffffffdce8 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x5555555653bf *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555653c5 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x60(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcf0; Value = 0x377cc7c6ab9bd1a6; PC = 0x5555555653cb *)
mull rbx rcx L0x7fffffffdcf0 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x5555555653d1 *)
adcs carry r9 r9 rcx carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555653d7 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x68(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcf8; Value = 0x15cc2a9365fb501a; PC = 0x5555555653dd *)
mull rbx rcx L0x7fffffffdcf8 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x5555555653e3 *)
adcs carry r10 r10 rcx carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555653e9 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x70(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd00; Value = 0x3ff11d0423e82c0f; PC = 0x5555555653ef *)
mull rbx rcx L0x7fffffffdd00 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x5555555653f5 *)
adcs carry r11 r11 rcx carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555653fb *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x78(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd08; Value = 0x0009dc2efa8ac250; PC = 0x555555565401 *)
mull rbx rcx L0x7fffffffdd08 rdx;
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
(* mov    0x38(%rsp),%rdx                          #! EA = L0x7fffffffd850; Value = 0x0048e77323ca1faa; PC = 0x55555556548a *)
mov rdx L0x7fffffffd850;
(* xor    %r14,%r14                                #! PC = 0x55555556548f *)
mov r14 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcd0; Value = 0xb372154e1a5219e1; PC = 0x555555565492 *)
mull rbx rcx L0x7fffffffdcd0 rdx;
(* adox   %rcx,%r15                                #! PC = 0x555555565498 *)
adcs overflow r15 r15 rcx overflow;
(* adox   %rbx,%rbp                                #! PC = 0x55555556549e *)
adcs overflow rbp rbp rbx overflow;
(* mulx   0x48(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcd8; Value = 0x59cabde497a02c69; PC = 0x5555555654a4 *)
mull rbx rcx L0x7fffffffdcd8 rdx;
(* adcx   %rcx,%rbp                                #! PC = 0x5555555654aa *)
adcs carry rbp rbp rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555654b0 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x50(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdce0; Value = 0x5f21bf09582ae1ce; PC = 0x5555555654b6 *)
mull rbx rcx L0x7fffffffdce0 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x5555555654bc *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555654c2 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x58(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdce8; Value = 0xed43caaf4bd76655; PC = 0x5555555654c8 *)
mull rbx rcx L0x7fffffffdce8 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x5555555654ce *)
adcs carry r9 r9 rcx carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555654d4 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x60(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcf0; Value = 0x377cc7c6ab9bd1a6; PC = 0x5555555654da *)
mull rbx rcx L0x7fffffffdcf0 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x5555555654e0 *)
adcs carry r10 r10 rcx carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555654e6 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x68(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdcf8; Value = 0x15cc2a9365fb501a; PC = 0x5555555654ec *)
mull rbx rcx L0x7fffffffdcf8 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x5555555654f2 *)
adcs carry r11 r11 rcx carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555654f8 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x70(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd00; Value = 0x3ff11d0423e82c0f; PC = 0x5555555654fe *)
mull rbx rcx L0x7fffffffdd00 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x555555565504 *)
adcs carry r12 r12 rcx carry;
(* adox   %rbx,%r13                                #! PC = 0x55555556550a *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x78(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffdd08; Value = 0x0009dc2efa8ac250; PC = 0x555555565510 *)
mull rbx rcx L0x7fffffffdd08 rdx;
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
(* mov    %rbp,(%rsi)                              #! EA = L0x7fffffffdd50; PC = 0x555555565599 *)
mov L0x7fffffffdd50 rbp;
(* mov    %r8,0x8(%rsi)                            #! EA = L0x7fffffffdd58; PC = 0x55555556559c *)
mov L0x7fffffffdd58 r8;
(* mov    %r9,0x10(%rsi)                           #! EA = L0x7fffffffdd60; PC = 0x5555555655a0 *)
mov L0x7fffffffdd60 r9;
(* mov    %r10,0x18(%rsi)                          #! EA = L0x7fffffffdd68; PC = 0x5555555655a4 *)
mov L0x7fffffffdd68 r10;
(* mov    %r11,0x20(%rsi)                          #! EA = L0x7fffffffdd70; PC = 0x5555555655a8 *)
mov L0x7fffffffdd70 r11;
(* mov    %r12,0x28(%rsi)                          #! EA = L0x7fffffffdd78; PC = 0x5555555655ac *)
mov L0x7fffffffdd78 r12;
(* mov    %r13,0x30(%rsi)                          #! EA = L0x7fffffffdd80; PC = 0x5555555655b0 *)
mov L0x7fffffffdd80 r13;
(* mov    %r14,0x38(%rsi)                          #! EA = L0x7fffffffdd88; PC = 0x5555555655b4 *)
mov L0x7fffffffdd88 r14;
(* #! <- SP = 0x7fffffffd888 *)
#! 0x7fffffffd888 = 0x7fffffffd888;
(* #retq                                           #! PC = 0x5555555655c6 *)
#retq                                           #! 0x5555555655c6 = 0x5555555655c6;

(* ===== Outputs ===== *)

mov c10 L0x7fffffffdd50;
mov c11 L0x7fffffffdd58;
mov c12 L0x7fffffffdd60;
mov c13 L0x7fffffffdd68;
mov c14 L0x7fffffffdd70;
mov c15 L0x7fffffffdd78;
mov c16 L0x7fffffffdd80;
mov c17 L0x7fffffffdd88;

{
  eqmod (limbs 64 [ 0, 0, 0, 0, 0, 0, 0, 0, c10, c11, c12, c13, c14, c15, c16, c17 ])
        ( 2
          *
          (limbs 64 [ a00, a01, a02, a03, a04, a05, a06, a07 ])
          *
          (limbs 64 [ a10, a11, a12, a13, a14, a15, a16, a17 ])
        )
        (limbs 64 [ $p503_0, $p503_1, $p503_2, $p503_3, $p503_4, $p503_5, $p503_6, $p503_7 ])
  &&
  limbs 64 [ c10, c11, c12, c13, c14, c15, c16, c17 ] <=u
      (2@512 * limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                          $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ] - 1@512)
}
