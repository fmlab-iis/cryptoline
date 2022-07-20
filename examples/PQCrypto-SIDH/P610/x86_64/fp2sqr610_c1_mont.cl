(* on frege: -v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint fp2sqr610_c1_mont.cl
Parsing Cryptoline file:		[OK]		0.009268 seconds
Checking well-formedness:		[OK]		0.001242 seconds
Transforming to SSA form:		[OK]		0.000439 seconds
Normalizing specification:		[OK]		0.000787 seconds
Rewriting assignments:			[OK]		0.000901 seconds
Verifying program safety:
	 Cut 0
	     Round 1 (0 safety conditions, timeout = 14400 seconds)
	 Overall			[OK]		0.000142 seconds
Verifying range assertions:		[OK]		14.902255 seconds
Verifying range specification:		[OK]		12.877288 seconds
Rewriting value-preserved casting:	[OK]		0.000439 seconds
Verifying algebraic assertions:		[OK]		0.000994 seconds
Verifying algebraic specification:	[OK]		0.243131 seconds
Verification result:			[OK]		28.037604 seconds
*)

(*
const uint64_t p610[NWORDS64_FIELD]              = { 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0x6E01FFFFFFFFFFFF,
                                                     0xB1784DE8AA5AB02E, 0x9AE7BF45048FF9AB, 0xB255B2FA10C4252A, 0x819010C251E7D88C, 0x000000027BF6A768 };
const uint64_t p610p1[NWORDS64_FIELD]            = { 0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x6E02000000000000,
                                                     0xB1784DE8AA5AB02E, 0x9AE7BF45048FF9AB, 0xB255B2FA10C4252A, 0x819010C251E7D88C, 0x000000027BF6A768 };
*)

const p610_0 = 0xFFFFFFFFFFFFFFFF
const p610_1 = 0xFFFFFFFFFFFFFFFF
const p610_2 = 0xFFFFFFFFFFFFFFFF
const p610_3 = 0xFFFFFFFFFFFFFFFF
const p610_4 = 0x6E01FFFFFFFFFFFF
const p610_5 = 0xB1784DE8AA5AB02E
const p610_6 = 0x9AE7BF45048FF9AB
const p610_7 = 0xB255B2FA10C4252A
const p610_8 = 0x819010C251E7D88C
const p610_9 = 0x000000027BF6A768

const p610p1_0 = 0x0000000000000000
const p610p1_1 = 0x0000000000000000
const p610p1_2 = 0x0000000000000000
const p610p1_3 = 0x0000000000000000
const p610p1_4 = 0x6E02000000000000
const p610p1_5 = 0xB1784DE8AA5AB02E
const p610p1_6 = 0x9AE7BF45048FF9AB
const p610p1_7 = 0xB255B2FA10C4252A
const p610p1_8 = 0x819010C251E7D88C
const p610p1_9 = 0x000000027BF6A768

proc main (a00@uint64, a01@uint64, a02@uint64, a03@uint64, a04@uint64, a05@uint64, a06@uint64, a07@uint64, a08@uint64, a09@uint64,
           a10@uint64, a11@uint64, a12@uint64, a13@uint64, a14@uint64, a15@uint64, a16@uint64, a17@uint64, a18@uint64, a19@uint64) =
{
  true
  &&
  and [
    limbs 64 [ a00, a01, a02, a03, a04, a05, a06, a07, a08, a09 ] <=u
      (2@640 * limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64,
                          $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ] - 1@640),
    limbs 64 [ a10, a11, a12, a13, a14, a15, a16, a17, a18, a19 ] <=u
      (2@640 * limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64,
                          $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ] - 1@640)
  ]
}

(* ===== Initialization ===== *)

mov L0x7fffffffd640 a00;
mov L0x7fffffffd648 a01;
mov L0x7fffffffd650 a02;
mov L0x7fffffffd658 a03;
mov L0x7fffffffd660 a04;
mov L0x7fffffffd668 a05;
mov L0x7fffffffd670 a06;
mov L0x7fffffffd678 a07;
mov L0x7fffffffd680 a08;
mov L0x7fffffffd688 a09;

mov L0x7fffffffd690 a10;
mov L0x7fffffffd698 a11;
mov L0x7fffffffd6a0 a12;
mov L0x7fffffffd6a8 a13;
mov L0x7fffffffd6b0 a14;
mov L0x7fffffffd6b8 a15;
mov L0x7fffffffd6c0 a16;
mov L0x7fffffffd6c8 a17;
mov L0x7fffffffd6d0 a18;
mov L0x7fffffffd6d8 a19;

mov L0x55555556d580 $p610p1_4@uint64;
mov L0x55555556d588 $p610p1_5@uint64;
mov L0x55555556d590 $p610p1_6@uint64;
mov L0x55555556d598 $p610p1_7@uint64;
mov L0x55555556d5a0 $p610p1_8@uint64;
mov L0x55555556d5a8 $p610p1_9@uint64;

nondet rsp@uint64;

(* ===== Program ===== *)

(* #! -> SP = 0x7fffffffd158 *)
#! 0x7fffffffd158 = 0x7fffffffd158;
(* #jmpq   0x55555556844d <fp2sqr610_c1_asm>       #! PC = 0x5555555643e4 *)
#jmpq   0x55555556844d <fp2sqr610_c1_asm>       #! 0x5555555643e4 = 0x5555555643e4;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffd640; Value = 0xac2c052460c238ea; PC = 0x555555568455 *)
mov r8 L0x7fffffffd640;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffd648; Value = 0xe5275a5926ba2c2c; PC = 0x555555568458 *)
mov r9 L0x7fffffffd648;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffd650; Value = 0x6b55cfe38b5027f7; PC = 0x55555556845c *)
mov r10 L0x7fffffffd650;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffd658; Value = 0x0e77088df31ce512; PC = 0x555555568460 *)
mov r11 L0x7fffffffd658;
(* mov    0x20(%rdi),%r12                          #! EA = L0x7fffffffd660; Value = 0x8a6880402a3cb8e8; PC = 0x555555568464 *)
mov r12 L0x7fffffffd660;
(* mov    0x28(%rdi),%r13                          #! EA = L0x7fffffffd668; Value = 0x253e57fdef627d81; PC = 0x555555568468 *)
mov r13 L0x7fffffffd668;
(* add    %r8,%r8                                  #! PC = 0x55555556846c *)
adds carry r8 r8 r8;
(* adc    %r9,%r9                                  #! PC = 0x55555556846f *)
adcs carry r9 r9 r9@uint64 carry;
(* adc    %r10,%r10                                #! PC = 0x555555568473 *)
adcs carry r10 r10 r10@uint64 carry;
(* adc    %r11,%r11                                #! PC = 0x555555568476 *)
adcs carry r11 r11 r11@uint64 carry;
(* adc    %r12,%r12                                #! PC = 0x55555556847a *)
adcs carry r12 r12 r12@uint64 carry;
(* adc    %r13,%r13                                #! PC = 0x55555556847d *)
adcs carry r13 r13 r13@uint64 carry;
(* mov    0x30(%rdi),%r14                          #! EA = L0x7fffffffd670; Value = 0x69350d4694a441bb; PC = 0x555555568480 *)
mov r14 L0x7fffffffd670;
(* mov    0x38(%rdi),%r15                          #! EA = L0x7fffffffd678; Value = 0xa94a9c540cb5cab6; PC = 0x555555568484 *)
mov r15 L0x7fffffffd678;
(* adc    %r14,%r14                                #! PC = 0x555555568488 *)
adcs carry r14 r14 r14@uint64 carry;
(* adc    %r15,%r15                                #! PC = 0x55555556848b *)
adcs carry r15 r15 r15@uint64 carry;
(* mov    0x40(%rdi),%rbx                          #! EA = L0x7fffffffd680; Value = 0x844023bcd1adf628; PC = 0x55555556848e *)
mov rbx L0x7fffffffd680;
(* mov    0x48(%rdi),%rbp                          #! EA = L0x7fffffffd688; Value = 0x0000000221e6bf03; PC = 0x555555568492 *)
mov rbp L0x7fffffffd688;
(* adc    %rbx,%rbx                                #! PC = 0x555555568496 *)
adcs carry rbx rbx rbx@uint64 carry;
(* adc    %rbp,%rbp                                #! PC = 0x555555568499 *)
adcs carry rbp rbp rbp@uint64 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* sub    $0x70,%rsp                               #! PC = 0x55555556849c *)
subb carry rsp rsp 0x70@uint64;
(* mov    %r9,0x8(%rsp)                            #! EA = L0x7fffffffd0c0; PC = 0x5555555684a0 *)
mov L0x7fffffffd0c0 r9;
(* mov    %r10,0x10(%rsp)                          #! EA = L0x7fffffffd0c8; PC = 0x5555555684a5 *)
mov L0x7fffffffd0c8 r10;
(* mov    %r11,0x18(%rsp)                          #! EA = L0x7fffffffd0d0; PC = 0x5555555684aa *)
mov L0x7fffffffd0d0 r11;
(* mov    %r8,%rdx                                 #! PC = 0x5555555684af *)
mov rdx r8;
(* mulx   0x50(%rdi),%r8,%r9                       #! EA = L0x7fffffffd690; Value = 0xbdcb9628ddd92f69; PC = 0x5555555684b2 *)
mull r9 r8 L0x7fffffffd690 rdx;
(* mov    %r12,0x20(%rsp)                          #! EA = L0x7fffffffd0d8; PC = 0x5555555684b8 *)
mov L0x7fffffffd0d8 r12;
(* xor    %rax,%rax                                #! PC = 0x5555555684bd *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x58(%rdi),%r11,%r10                     #! EA = L0x7fffffffd698; Value = 0xfe849797b2460d11; PC = 0x5555555684c0 *)
mull r10 r11 L0x7fffffffd698 rdx;
(* mov    %r13,0x28(%rsp)                          #! EA = L0x7fffffffd0e0; PC = 0x5555555684c6 *)
mov L0x7fffffffd0e0 r13;
(* adcx   %r11,%r9                                 #! PC = 0x5555555684cb *)
adcs carry r9 r9 r11 carry;
(* mulx   0x60(%rdi),%r12,%r11                     #! EA = L0x7fffffffd6a0; Value = 0x1a79aff667022373; PC = 0x5555555684d1 *)
mull r11 r12 L0x7fffffffd6a0 rdx;
(* mov    %r14,0x30(%rsp)                          #! EA = L0x7fffffffd0e8; PC = 0x5555555684d7 *)
mov L0x7fffffffd0e8 r14;
(* adcx   %r12,%r10                                #! PC = 0x5555555684dc *)
adcs carry r10 r10 r12 carry;
(* mulx   0x68(%rdi),%r13,%r12                     #! EA = L0x7fffffffd6a8; Value = 0xe083fda72798bc1f; PC = 0x5555555684e2 *)
mull r12 r13 L0x7fffffffd6a8 rdx;
(* mov    %r8,0x68(%rsp)                           #! EA = L0x7fffffffd120; PC = 0x5555555684e8 *)
mov L0x7fffffffd120 r8;
(* adcx   %r13,%r11                                #! PC = 0x5555555684ed *)
adcs carry r11 r11 r13 carry;
(* mulx   0x70(%rdi),%r8,%r13                      #! EA = L0x7fffffffd6b0; Value = 0x01564e06f44cb9a4; PC = 0x5555555684f3 *)
mull r13 r8 L0x7fffffffd6b0 rdx;
(* mov    %r9,0x50(%rsp)                           #! EA = L0x7fffffffd108; PC = 0x5555555684f9 *)
mov L0x7fffffffd108 r9;
(* adcx   %r8,%r12                                 #! PC = 0x5555555684fe *)
adcs carry r12 r12 r8 carry;
(* mulx   0x78(%rdi),%r9,%r14                      #! EA = L0x7fffffffd6b8; Value = 0x9f842affd6f7f45a; PC = 0x555555568504 *)
mull r14 r9 L0x7fffffffd6b8 rdx;
(* mov    %r15,0x38(%rsp)                          #! EA = L0x7fffffffd0f0; PC = 0x55555556850a *)
mov L0x7fffffffd0f0 r15;
(* adcx   %r9,%r13                                 #! PC = 0x55555556850f *)
adcs carry r13 r13 r9 carry;
(* mulx   0x80(%rdi),%rax,%r15                     #! EA = L0x7fffffffd6c0; Value = 0x6c84b8a77f7a3cbb; PC = 0x555555568515 *)
mull r15 rax L0x7fffffffd6c0 rdx;
(* mov    %r10,0x58(%rsp)                          #! EA = L0x7fffffffd110; PC = 0x55555556851e *)
mov L0x7fffffffd110 r10;
(* adcx   %rax,%r14                                #! PC = 0x555555568523 *)
adcs carry r14 r14 rax carry;
(* mulx   0x88(%rdi),%r10,%r8                      #! EA = L0x7fffffffd6c8; Value = 0xe8c6dc8a214ea9d6; PC = 0x555555568529 *)
mull r8 r10 L0x7fffffffd6c8 rdx;
(* mov    %r11,0x60(%rsp)                          #! EA = L0x7fffffffd118; PC = 0x555555568532 *)
mov L0x7fffffffd118 r11;
(* adcx   %r10,%r15                                #! PC = 0x555555568537 *)
adcs carry r15 r15 r10 carry;
(* mulx   0x90(%rdi),%rax,%r9                      #! EA = L0x7fffffffd6d0; Value = 0xad455c4d0ed290e0; PC = 0x55555556853d *)
mull r9 rax L0x7fffffffd6d0 rdx;
(* mov    %rbx,0x40(%rsp)                          #! EA = L0x7fffffffd0f8; PC = 0x555555568546 *)
mov L0x7fffffffd0f8 rbx;
(* adcx   %rax,%r8                                 #! PC = 0x55555556854b *)
adcs carry r8 r8 rax carry;
(* mulx   0x98(%rdi),%rbx,%r10                     #! EA = L0x7fffffffd6d8; Value = 0x000000017dcf9970; PC = 0x555555568551 *)
mull r10 rbx L0x7fffffffd6d8 rdx;
(* mov    %rbp,0x48(%rsp)                          #! EA = L0x7fffffffd100; PC = 0x55555556855a *)
mov L0x7fffffffd100 rbp;
(* adcx   %rbx,%r9                                 #! PC = 0x55555556855f *)
adcs carry r9 r9 rbx carry;
(* adc    $0x0,%r10                                #! PC = 0x555555568565 *)
adcs carry r10 r10 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x68(%rsp),%rdx                          #! EA = L0x7fffffffd120; Value = 0x8b3af40730ec9bf4; PC = 0x555555568569 *)
mov rdx L0x7fffffffd120;
(* mulx   0x5009(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x55555556856e *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555568577 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r12                                #! PC = 0x55555556857a *)
adcs overflow r12 r12 rbp overflow;
(* adox   %rbx,%r13                                #! PC = 0x555555568580 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x4ff9(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x555555568586 *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x55555556858f *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555568595 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x4fec(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x55555556859b *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x5555555685a4 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x5555555685aa *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x4fdf(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x5555555685b0 *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x5555555685b9 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555685bf *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x4fd2(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x5555555685c5 *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x5555555685ce *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555685d4 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x4fc5(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x5555555685da *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x5555555685e3 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555685e9 *)
adcs overflow r10 r10 rbx overflow;
(* adc    $0x0,%r10                                #! PC = 0x5555555685ef *)
adcs carry r10 r10 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x8(%rsp),%rdx                           #! EA = L0x7fffffffd0c0; Value = 0xca4eb4b24d745859; PC = 0x5555555685f3 *)
mov rdx L0x7fffffffd0c0;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd690; Value = 0xbdcb9628ddd92f69; PC = 0x5555555685f8 *)
mull rbx rbp L0x7fffffffd690 rdx;
(* xor    %r11,%r11                                #! PC = 0x5555555685fe *)
mov r11 0@uint64;
clear carry;
clear overflow;
(* adox   0x50(%rsp),%rbp                          #! EA = L0x7fffffffd108; Value = 0x4be3d34aaa72bfc3; PC = 0x555555568601 *)
adcs overflow rbp rbp L0x7fffffffd108 overflow;
(* adox   0x58(%rsp),%rbx                          #! EA = L0x7fffffffd110; Value = 0x3f80c79afec0ae42; PC = 0x555555568609 *)
adcs overflow rbx rbx L0x7fffffffd110 overflow;
(* mov    %rbp,0x68(%rsp)                          #! EA = L0x7fffffffd120; PC = 0x555555568611 *)
mov L0x7fffffffd120 rbp;
(* mulx   0x58(%rdi),%rax,%rbp                     #! EA = L0x7fffffffd698; Value = 0xfe849797b2460d11; PC = 0x555555568616 *)
mull rbp rax L0x7fffffffd698 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x55555556861c *)
adcs carry rbx rbx rax carry;
(* adox   0x60(%rsp),%rbp                          #! EA = L0x7fffffffd118; Value = 0x756875950bba2b18; PC = 0x555555568622 *)
adcs overflow rbp rbp L0x7fffffffd118 overflow;
(* mov    %rbx,0x50(%rsp)                          #! EA = L0x7fffffffd108; PC = 0x55555556862a *)
mov L0x7fffffffd108 rbx;
(* mulx   0x60(%rdi),%rax,%rbx                     #! EA = L0x7fffffffd6a0; Value = 0x1a79aff667022373; PC = 0x55555556862f *)
mull rbx rax L0x7fffffffd6a0 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555568635 *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r12                                #! PC = 0x55555556863b *)
adcs overflow r12 r12 rbx overflow;
(* mov    %rbp,0x58(%rsp)                          #! EA = L0x7fffffffd110; PC = 0x555555568641 *)
mov L0x7fffffffd110 rbp;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6a8; Value = 0xe083fda72798bc1f; PC = 0x555555568646 *)
mull rbx rbp L0x7fffffffd6a8 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x55555556864c *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555568652 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x70(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6b0; Value = 0x01564e06f44cb9a4; PC = 0x555555568658 *)
mull rbx rbp L0x7fffffffd6b0 rdx;
(* mov    %r12,0x60(%rsp)                          #! EA = L0x7fffffffd118; PC = 0x55555556865e *)
mov L0x7fffffffd118 r12;
(* adcx   %rbp,%r13                                #! PC = 0x555555568663 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555568669 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x78(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6b8; Value = 0x9f842affd6f7f45a; PC = 0x55555556866f *)
mull rbx rbp L0x7fffffffd6b8 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555568675 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x55555556867b *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x80(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6c0; Value = 0x6c84b8a77f7a3cbb; PC = 0x555555568681 *)
mull rbx rbp L0x7fffffffd6c0 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x55555556868a *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555568690 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x88(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6c8; Value = 0xe8c6dc8a214ea9d6; PC = 0x555555568696 *)
mull rbx rbp L0x7fffffffd6c8 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x55555556869f *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555686a5 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x90(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6d0; Value = 0xad455c4d0ed290e0; PC = 0x5555555686ab *)
mull rbx rbp L0x7fffffffd6d0 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x5555555686b4 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555686ba *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x98(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6d8; Value = 0x000000017dcf9970; PC = 0x5555555686c0 *)
mull rbx rbp L0x7fffffffd6d8 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x5555555686c9 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555686cf *)
adcs overflow r11 r11 rbx overflow;
(* adc    $0x0,%r11                                #! PC = 0x5555555686d5 *)
adcs carry r11 r11 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x68(%rsp),%rdx                          #! EA = L0x7fffffffd120; Value = 0xdadeb87083d45344; PC = 0x5555555686d9 *)
mov rdx L0x7fffffffd120;
(* mulx   0x4e99(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x5555555686de *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555686e7 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r13                                #! PC = 0x5555555686ea *)
adcs overflow r13 r13 rbp overflow;
(* adox   %rbx,%r14                                #! PC = 0x5555555686f0 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x4e89(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x5555555686f6 *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x5555555686ff *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555568705 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x4e7c(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x55555556870b *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555568714 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x55555556871a *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x4e6f(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x555555568720 *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555568729 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x55555556872f *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x4e62(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x555555568735 *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x55555556873e *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555568744 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x4e55(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x55555556874a *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555568753 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555568759 *)
adcs overflow r11 r11 rbx overflow;
(* adc    $0x0,%r11                                #! PC = 0x55555556875f *)
adcs carry r11 r11 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x10(%rsp),%rdx                          #! EA = L0x7fffffffd0c8; Value = 0xd6ab9fc716a04fef; PC = 0x555555568763 *)
mov rdx L0x7fffffffd0c8;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd690; Value = 0xbdcb9628ddd92f69; PC = 0x555555568768 *)
mull rbx rbp L0x7fffffffd690 rdx;
(* xor    %r12,%r12                                #! PC = 0x55555556876e *)
mov r12 0@uint64;
clear carry;
clear overflow;
(* adox   0x50(%rsp),%rbp                          #! EA = L0x7fffffffd108; Value = 0xd22182996c5dab11; PC = 0x555555568771 *)
adcs overflow rbp rbp L0x7fffffffd108 overflow;
(* adox   0x58(%rsp),%rbx                          #! EA = L0x7fffffffd110; Value = 0xcb6c08e9a1713c11; PC = 0x555555568779 *)
adcs overflow rbx rbx L0x7fffffffd110 overflow;
(* mov    %rbp,0x68(%rsp)                          #! EA = L0x7fffffffd120; PC = 0x555555568781 *)
mov L0x7fffffffd120 rbp;
(* mulx   0x58(%rdi),%rax,%rbp                     #! EA = L0x7fffffffd698; Value = 0xfe849797b2460d11; PC = 0x555555568786 *)
mull rbp rax L0x7fffffffd698 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x55555556878c *)
adcs carry rbx rbx rax carry;
(* adox   0x60(%rsp),%rbp                          #! EA = L0x7fffffffd118; Value = 0x5cd6fb8008602304; PC = 0x555555568792 *)
adcs overflow rbp rbp L0x7fffffffd118 overflow;
(* mov    %rbx,0x50(%rsp)                          #! EA = L0x7fffffffd108; PC = 0x55555556879a *)
mov L0x7fffffffd108 rbx;
(* mulx   0x60(%rdi),%rax,%rbx                     #! EA = L0x7fffffffd6a0; Value = 0x1a79aff667022373; PC = 0x55555556879f *)
mull rbx rax L0x7fffffffd6a0 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x5555555687a5 *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555687ab *)
adcs overflow r13 r13 rbx overflow;
(* mov    %rbp,0x58(%rsp)                          #! EA = L0x7fffffffd110; PC = 0x5555555687b1 *)
mov L0x7fffffffd110 rbp;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6a8; Value = 0xe083fda72798bc1f; PC = 0x5555555687b6 *)
mull rbx rbp L0x7fffffffd6a8 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x5555555687bc *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x5555555687c2 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x70(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6b0; Value = 0x01564e06f44cb9a4; PC = 0x5555555687c8 *)
mull rbx rbp L0x7fffffffd6b0 rdx;
(* mov    %r13,0x60(%rsp)                          #! EA = L0x7fffffffd118; PC = 0x5555555687ce *)
mov L0x7fffffffd118 r13;
(* adcx   %rbp,%r14                                #! PC = 0x5555555687d3 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x5555555687d9 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x78(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6b8; Value = 0x9f842affd6f7f45a; PC = 0x5555555687df *)
mull rbx rbp L0x7fffffffd6b8 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x5555555687e5 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555687eb *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x80(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6c0; Value = 0x6c84b8a77f7a3cbb; PC = 0x5555555687f1 *)
mull rbx rbp L0x7fffffffd6c0 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x5555555687fa *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555568800 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x88(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6c8; Value = 0xe8c6dc8a214ea9d6; PC = 0x555555568806 *)
mull rbx rbp L0x7fffffffd6c8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x55555556880f *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555568815 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x90(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6d0; Value = 0xad455c4d0ed290e0; PC = 0x55555556881b *)
mull rbx rbp L0x7fffffffd6d0 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555568824 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x55555556882a *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x98(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6d8; Value = 0x000000017dcf9970; PC = 0x555555568830 *)
mull rbx rbp L0x7fffffffd6d8 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555568839 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x55555556883f *)
adcs overflow r12 r12 rbx overflow;
(* adc    $0x0,%r12                                #! PC = 0x555555568845 *)
adcs carry r12 r12 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x68(%rsp),%rdx                          #! EA = L0x7fffffffd120; Value = 0xfc8db2a637625518; PC = 0x555555568849 *)
mov rdx L0x7fffffffd120;
(* mulx   0x4d29(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x55555556884e *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555568857 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r14                                #! PC = 0x55555556885a *)
adcs overflow r14 r14 rbp overflow;
(* adox   %rbx,%r15                                #! PC = 0x555555568860 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x4d19(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x555555568866 *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x55555556886f *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555568875 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x4d0c(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x55555556887b *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555568884 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x55555556888a *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x4cff(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x555555568890 *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555568899 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x55555556889f *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x4cf2(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x5555555688a5 *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x5555555688ae *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555688b4 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x4ce5(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x5555555688ba *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x5555555688c3 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555688c9 *)
adcs overflow r12 r12 rbx overflow;
(* adc    $0x0,%r12                                #! PC = 0x5555555688cf *)
adcs carry r12 r12 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rsp),%rdx                          #! EA = L0x7fffffffd0d0; Value = 0x1cee111be639ca24; PC = 0x5555555688d3 *)
mov rdx L0x7fffffffd0d0;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd690; Value = 0xbdcb9628ddd92f69; PC = 0x5555555688d8 *)
mull rbx rbp L0x7fffffffd690 rdx;
(* xor    %r13,%r13                                #! PC = 0x5555555688de *)
mov r13 0@uint64;
clear carry;
clear overflow;
(* adox   0x50(%rsp),%rbp                          #! EA = L0x7fffffffd108; Value = 0xc232f4a3d28ae09b; PC = 0x5555555688e1 *)
adcs overflow rbp rbp L0x7fffffffd108 overflow;
(* adox   0x58(%rsp),%rbx                          #! EA = L0x7fffffffd110; Value = 0xd486503f4142321c; PC = 0x5555555688e9 *)
adcs overflow rbx rbx L0x7fffffffd110 overflow;
(* mov    %rbp,0x68(%rsp)                          #! EA = L0x7fffffffd120; PC = 0x5555555688f1 *)
mov L0x7fffffffd120 rbp;
(* mulx   0x58(%rdi),%rax,%rbp                     #! EA = L0x7fffffffd698; Value = 0xfe849797b2460d11; PC = 0x5555555688f6 *)
mull rbp rax L0x7fffffffd698 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x5555555688fc *)
adcs carry rbx rbx rax carry;
(* adox   0x60(%rsp),%rbp                          #! EA = L0x7fffffffd118; Value = 0xb121068fbadd0273; PC = 0x555555568902 *)
adcs overflow rbp rbp L0x7fffffffd118 overflow;
(* mov    %rbx,0x50(%rsp)                          #! EA = L0x7fffffffd108; PC = 0x55555556890a *)
mov L0x7fffffffd108 rbx;
(* mulx   0x60(%rdi),%rax,%rbx                     #! EA = L0x7fffffffd6a0; Value = 0x1a79aff667022373; PC = 0x55555556890f *)
mull rbx rax L0x7fffffffd6a0 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555568915 *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r14                                #! PC = 0x55555556891b *)
adcs overflow r14 r14 rbx overflow;
(* mov    %rbp,0x58(%rsp)                          #! EA = L0x7fffffffd110; PC = 0x555555568921 *)
mov L0x7fffffffd110 rbp;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6a8; Value = 0xe083fda72798bc1f; PC = 0x555555568926 *)
mull rbx rbp L0x7fffffffd6a8 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x55555556892c *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555568932 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x70(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6b0; Value = 0x01564e06f44cb9a4; PC = 0x555555568938 *)
mull rbx rbp L0x7fffffffd6b0 rdx;
(* mov    %r14,0x60(%rsp)                          #! EA = L0x7fffffffd118; PC = 0x55555556893e *)
mov L0x7fffffffd118 r14;
(* adcx   %rbp,%r15                                #! PC = 0x555555568943 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555568949 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x78(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6b8; Value = 0x9f842affd6f7f45a; PC = 0x55555556894f *)
mull rbx rbp L0x7fffffffd6b8 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555568955 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x55555556895b *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x80(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6c0; Value = 0x6c84b8a77f7a3cbb; PC = 0x555555568961 *)
mull rbx rbp L0x7fffffffd6c0 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x55555556896a *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555568970 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x88(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6c8; Value = 0xe8c6dc8a214ea9d6; PC = 0x555555568976 *)
mull rbx rbp L0x7fffffffd6c8 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x55555556897f *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555568985 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x90(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6d0; Value = 0xad455c4d0ed290e0; PC = 0x55555556898b *)
mull rbx rbp L0x7fffffffd6d0 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555568994 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x55555556899a *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x98(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6d8; Value = 0x000000017dcf9970; PC = 0x5555555689a0 *)
mull rbx rbp L0x7fffffffd6d8 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x5555555689a9 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555689af *)
adcs overflow r13 r13 rbx overflow;
(* adc    $0x0,%r13                                #! PC = 0x5555555689b5 *)
adcs carry r13 r13 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x68(%rsp),%rdx                          #! EA = L0x7fffffffd120; Value = 0x9f66d07748df655f; PC = 0x5555555689b9 *)
mov rdx L0x7fffffffd120;
(* mulx   0x4bb9(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x5555555689be *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555689c7 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r15                                #! PC = 0x5555555689ca *)
adcs overflow r15 r15 rbp overflow;
(* adox   %rbx,%r8                                 #! PC = 0x5555555689d0 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x4ba9(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x5555555689d6 *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x5555555689df *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555689e5 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x4b9c(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x5555555689eb *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x5555555689f4 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555689fa *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x4b8f(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x555555568a00 *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555568a09 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555568a0f *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x4b82(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x555555568a15 *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555568a1e *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555568a24 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x4b75(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x555555568a2a *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555568a33 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555568a39 *)
adcs overflow r13 r13 rbx overflow;
(* adc    $0x0,%r13                                #! PC = 0x555555568a3f *)
adcs carry r13 r13 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x20(%rsp),%rdx                          #! EA = L0x7fffffffd0d8; Value = 0x14d10080547971d0; PC = 0x555555568a43 *)
mov rdx L0x7fffffffd0d8;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd690; Value = 0xbdcb9628ddd92f69; PC = 0x555555568a48 *)
mull rbx rbp L0x7fffffffd690 rdx;
(* xor    %r14,%r14                                #! PC = 0x555555568a4e *)
mov r14 0@uint64;
clear carry;
clear overflow;
(* adox   0x50(%rsp),%rbp                          #! EA = L0x7fffffffd108; Value = 0xd53d3bc20e97c1bf; PC = 0x555555568a51 *)
adcs overflow rbp rbp L0x7fffffffd108 overflow;
(* adox   0x58(%rsp),%rbx                          #! EA = L0x7fffffffd110; Value = 0xa4c09ece2f36c7b4; PC = 0x555555568a59 *)
adcs overflow rbx rbx L0x7fffffffd110 overflow;
(* mov    %rbp,0x68(%rsp)                          #! EA = L0x7fffffffd120; PC = 0x555555568a61 *)
mov L0x7fffffffd120 rbp;
(* mulx   0x58(%rdi),%rax,%rbp                     #! EA = L0x7fffffffd698; Value = 0xfe849797b2460d11; PC = 0x555555568a66 *)
mull rbp rax L0x7fffffffd698 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555568a6c *)
adcs carry rbx rbx rax carry;
(* adox   0x60(%rsp),%rbp                          #! EA = L0x7fffffffd118; Value = 0x477c2bc5e20fb465; PC = 0x555555568a72 *)
adcs overflow rbp rbp L0x7fffffffd118 overflow;
(* mov    %rbx,0x50(%rsp)                          #! EA = L0x7fffffffd108; PC = 0x555555568a7a *)
mov L0x7fffffffd108 rbx;
(* mulx   0x60(%rdi),%rax,%rbx                     #! EA = L0x7fffffffd6a0; Value = 0x1a79aff667022373; PC = 0x555555568a7f *)
mull rbx rax L0x7fffffffd6a0 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555568a85 *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r15                                #! PC = 0x555555568a8b *)
adcs overflow r15 r15 rbx overflow;
(* mov    %rbp,0x58(%rsp)                          #! EA = L0x7fffffffd110; PC = 0x555555568a91 *)
mov L0x7fffffffd110 rbp;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6a8; Value = 0xe083fda72798bc1f; PC = 0x555555568a96 *)
mull rbx rbp L0x7fffffffd6a8 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555568a9c *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555568aa2 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x70(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6b0; Value = 0x01564e06f44cb9a4; PC = 0x555555568aa8 *)
mull rbx rbp L0x7fffffffd6b0 rdx;
(* mov    %r15,0x60(%rsp)                          #! EA = L0x7fffffffd118; PC = 0x555555568aae *)
mov L0x7fffffffd118 r15;
(* adcx   %rbp,%r8                                 #! PC = 0x555555568ab3 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555568ab9 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x78(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6b8; Value = 0x9f842affd6f7f45a; PC = 0x555555568abf *)
mull rbx rbp L0x7fffffffd6b8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555568ac5 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555568acb *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x80(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6c0; Value = 0x6c84b8a77f7a3cbb; PC = 0x555555568ad1 *)
mull rbx rbp L0x7fffffffd6c0 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555568ada *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555568ae0 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x88(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6c8; Value = 0xe8c6dc8a214ea9d6; PC = 0x555555568ae6 *)
mull rbx rbp L0x7fffffffd6c8 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555568aef *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555568af5 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x90(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6d0; Value = 0xad455c4d0ed290e0; PC = 0x555555568afb *)
mull rbx rbp L0x7fffffffd6d0 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555568b04 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555568b0a *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x98(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6d8; Value = 0x000000017dcf9970; PC = 0x555555568b10 *)
mull rbx rbp L0x7fffffffd6d8 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555568b19 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555568b1f *)
adcs overflow r14 r14 rbx overflow;
(* adc    $0x0,%r14                                #! PC = 0x555555568b25 *)
adcs carry r14 r14 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x68(%rsp),%rdx                          #! EA = L0x7fffffffd120; Value = 0x1f5c1a99099ca00f; PC = 0x555555568b29 *)
mov rdx L0x7fffffffd120;
(* mulx   0x4a49(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x555555568b2e *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555568b37 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r8                                 #! PC = 0x555555568b3a *)
adcs overflow r8 r8 rbp overflow;
(* adox   %rbx,%r9                                 #! PC = 0x555555568b40 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x4a39(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x555555568b46 *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555568b4f *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555568b55 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x4a2c(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x555555568b5b *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555568b64 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555568b6a *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x4a1f(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x555555568b70 *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555568b79 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555568b7f *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x4a12(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x555555568b85 *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555568b8e *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555568b94 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x4a05(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x555555568b9a *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555568ba3 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555568ba9 *)
adcs overflow r14 r14 rbx overflow;
(* adc    $0x0,%r14                                #! PC = 0x555555568baf *)
adcs carry r14 r14 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x28(%rsp),%rdx                          #! EA = L0x7fffffffd0e0; Value = 0x4a7caffbdec4fb03; PC = 0x555555568bb3 *)
mov rdx L0x7fffffffd0e0;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd690; Value = 0xbdcb9628ddd92f69; PC = 0x555555568bb8 *)
mull rbx rbp L0x7fffffffd690 rdx;
(* xor    %r15,%r15                                #! PC = 0x555555568bbe *)
mov r15 0@uint64;
clear carry;
clear overflow;
(* adox   0x50(%rsp),%rbp                          #! EA = L0x7fffffffd108; Value = 0x95ee62f5a20ce7d8; PC = 0x555555568bc1 *)
adcs overflow rbp rbp L0x7fffffffd108 overflow;
(* adox   0x58(%rsp),%rbx                          #! EA = L0x7fffffffd110; Value = 0x08f12b2d35db5475; PC = 0x555555568bc9 *)
adcs overflow rbx rbx L0x7fffffffd110 overflow;
(* mov    %rbp,0x68(%rsp)                          #! EA = L0x7fffffffd120; PC = 0x555555568bd1 *)
mov L0x7fffffffd120 rbp;
(* mulx   0x58(%rdi),%rax,%rbp                     #! EA = L0x7fffffffd698; Value = 0xfe849797b2460d11; PC = 0x555555568bd6 *)
mull rbp rax L0x7fffffffd698 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555568bdc *)
adcs carry rbx rbx rax carry;
(* adox   0x60(%rsp),%rbp                          #! EA = L0x7fffffffd118; Value = 0x660d4027dcd705f0; PC = 0x555555568be2 *)
adcs overflow rbp rbp L0x7fffffffd118 overflow;
(* mov    %rbx,0x50(%rsp)                          #! EA = L0x7fffffffd108; PC = 0x555555568bea *)
mov L0x7fffffffd108 rbx;
(* mulx   0x60(%rdi),%rax,%rbx                     #! EA = L0x7fffffffd6a0; Value = 0x1a79aff667022373; PC = 0x555555568bef *)
mull rbx rax L0x7fffffffd6a0 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555568bf5 *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555568bfb *)
adcs overflow r8 r8 rbx overflow;
(* mov    %rbp,0x58(%rsp)                          #! EA = L0x7fffffffd110; PC = 0x555555568c01 *)
mov L0x7fffffffd110 rbp;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6a8; Value = 0xe083fda72798bc1f; PC = 0x555555568c06 *)
mull rbx rbp L0x7fffffffd6a8 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555568c0c *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555568c12 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x70(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6b0; Value = 0x01564e06f44cb9a4; PC = 0x555555568c18 *)
mull rbx rbp L0x7fffffffd6b0 rdx;
(* mov    %r8,0x60(%rsp)                           #! EA = L0x7fffffffd118; PC = 0x555555568c1e *)
mov L0x7fffffffd118 r8;
(* adcx   %rbp,%r9                                 #! PC = 0x555555568c23 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555568c29 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x78(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6b8; Value = 0x9f842affd6f7f45a; PC = 0x555555568c2f *)
mull rbx rbp L0x7fffffffd6b8 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555568c35 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555568c3b *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x80(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6c0; Value = 0x6c84b8a77f7a3cbb; PC = 0x555555568c41 *)
mull rbx rbp L0x7fffffffd6c0 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555568c4a *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555568c50 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x88(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6c8; Value = 0xe8c6dc8a214ea9d6; PC = 0x555555568c56 *)
mull rbx rbp L0x7fffffffd6c8 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555568c5f *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555568c65 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x90(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6d0; Value = 0xad455c4d0ed290e0; PC = 0x555555568c6b *)
mull rbx rbp L0x7fffffffd6d0 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555568c74 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555568c7a *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x98(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6d8; Value = 0x000000017dcf9970; PC = 0x555555568c80 *)
mull rbx rbp L0x7fffffffd6d8 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555568c89 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555568c8f *)
adcs overflow r15 r15 rbx overflow;
(* adc    $0x0,%r15                                #! PC = 0x555555568c95 *)
adcs carry r15 r15 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x68(%rsp),%rdx                          #! EA = L0x7fffffffd120; Value = 0x1f6dab4c87786913; PC = 0x555555568c99 *)
mov rdx L0x7fffffffd120;
(* mulx   0x48d9(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x555555568c9e *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555568ca7 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r9                                 #! PC = 0x555555568caa *)
adcs overflow r9 r9 rbp overflow;
(* adox   %rbx,%r10                                #! PC = 0x555555568cb0 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x48c9(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x555555568cb6 *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555568cbf *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555568cc5 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x48bc(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x555555568ccb *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555568cd4 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555568cda *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x48af(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x555555568ce0 *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555568ce9 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555568cef *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x48a2(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x555555568cf5 *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555568cfe *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555568d04 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x4895(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x555555568d0a *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555568d13 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555568d19 *)
adcs overflow r15 r15 rbx overflow;
(* adc    $0x0,%r15                                #! PC = 0x555555568d1f *)
adcs carry r15 r15 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x30(%rsp),%rdx                          #! EA = L0x7fffffffd0e8; Value = 0xd26a1a8d29488376; PC = 0x555555568d23 *)
mov rdx L0x7fffffffd0e8;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd690; Value = 0xbdcb9628ddd92f69; PC = 0x555555568d28 *)
mull rbx rbp L0x7fffffffd690 rdx;
(* xor    %r8,%r8                                  #! PC = 0x555555568d2e *)
mov r8 0@uint64;
clear carry;
clear overflow;
(* adox   0x50(%rsp),%rbp                          #! EA = L0x7fffffffd108; Value = 0xc4f0a3de2dd82378; PC = 0x555555568d31 *)
adcs overflow rbp rbp L0x7fffffffd108 overflow;
(* adox   0x58(%rsp),%rbx                          #! EA = L0x7fffffffd110; Value = 0x9412492e5cc9f220; PC = 0x555555568d39 *)
adcs overflow rbx rbx L0x7fffffffd110 overflow;
(* mov    %rbp,0x68(%rsp)                          #! EA = L0x7fffffffd120; PC = 0x555555568d41 *)
mov L0x7fffffffd120 rbp;
(* mulx   0x58(%rdi),%rax,%rbp                     #! EA = L0x7fffffffd698; Value = 0xfe849797b2460d11; PC = 0x555555568d46 *)
mull rbp rax L0x7fffffffd698 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555568d4c *)
adcs carry rbx rbx rax carry;
(* adox   0x60(%rsp),%rbp                          #! EA = L0x7fffffffd118; Value = 0x87267a7f20f17803; PC = 0x555555568d52 *)
adcs overflow rbp rbp L0x7fffffffd118 overflow;
(* mov    %rbx,0x50(%rsp)                          #! EA = L0x7fffffffd108; PC = 0x555555568d5a *)
mov L0x7fffffffd108 rbx;
(* mulx   0x60(%rdi),%rax,%rbx                     #! EA = L0x7fffffffd6a0; Value = 0x1a79aff667022373; PC = 0x555555568d5f *)
mull rbx rax L0x7fffffffd6a0 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555568d65 *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555568d6b *)
adcs overflow r9 r9 rbx overflow;
(* mov    %rbp,0x58(%rsp)                          #! EA = L0x7fffffffd110; PC = 0x555555568d71 *)
mov L0x7fffffffd110 rbp;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6a8; Value = 0xe083fda72798bc1f; PC = 0x555555568d76 *)
mull rbx rbp L0x7fffffffd6a8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555568d7c *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555568d82 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x70(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6b0; Value = 0x01564e06f44cb9a4; PC = 0x555555568d88 *)
mull rbx rbp L0x7fffffffd6b0 rdx;
(* mov    %r9,0x60(%rsp)                           #! EA = L0x7fffffffd118; PC = 0x555555568d8e *)
mov L0x7fffffffd118 r9;
(* adcx   %rbp,%r10                                #! PC = 0x555555568d93 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555568d99 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x78(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6b8; Value = 0x9f842affd6f7f45a; PC = 0x555555568d9f *)
mull rbx rbp L0x7fffffffd6b8 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555568da5 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555568dab *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x80(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6c0; Value = 0x6c84b8a77f7a3cbb; PC = 0x555555568db1 *)
mull rbx rbp L0x7fffffffd6c0 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555568dba *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555568dc0 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x88(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6c8; Value = 0xe8c6dc8a214ea9d6; PC = 0x555555568dc6 *)
mull rbx rbp L0x7fffffffd6c8 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555568dcf *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555568dd5 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x90(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6d0; Value = 0xad455c4d0ed290e0; PC = 0x555555568ddb *)
mull rbx rbp L0x7fffffffd6d0 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555568de4 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555568dea *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x98(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6d8; Value = 0x000000017dcf9970; PC = 0x555555568df0 *)
mull rbx rbp L0x7fffffffd6d8 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555568df9 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555568dff *)
adcs overflow r8 r8 rbx overflow;
(* adc    $0x0,%r8                                 #! PC = 0x555555568e05 *)
adcs carry r8 r8 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x68(%rsp),%rdx                          #! EA = L0x7fffffffd120; Value = 0x388eb8bcb9beb8de; PC = 0x555555568e09 *)
mov rdx L0x7fffffffd120;
(* mulx   0x4769(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x555555568e0e *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555568e17 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r10                                #! PC = 0x555555568e1a *)
adcs overflow r10 r10 rbp overflow;
(* adox   %rbx,%r11                                #! PC = 0x555555568e20 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x4759(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x555555568e26 *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555568e2f *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555568e35 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x474c(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x555555568e3b *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555568e44 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555568e4a *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x473f(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x555555568e50 *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555568e59 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555568e5f *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x4732(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x555555568e65 *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555568e6e *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555568e74 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x4725(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x555555568e7a *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555568e83 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555568e89 *)
adcs overflow r8 r8 rbx overflow;
(* adc    $0x0,%r8                                 #! PC = 0x555555568e8f *)
adcs carry r8 r8 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x38(%rsp),%rdx                          #! EA = L0x7fffffffd0f0; Value = 0x529538a8196b956c; PC = 0x555555568e93 *)
mov rdx L0x7fffffffd0f0;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd690; Value = 0xbdcb9628ddd92f69; PC = 0x555555568e98 *)
mull rbx rbp L0x7fffffffd690 rdx;
(* xor    %r9,%r9                                  #! PC = 0x555555568e9e *)
mov r9 0@uint64;
clear carry;
clear overflow;
(* adox   0x50(%rsp),%rbp                          #! EA = L0x7fffffffd108; Value = 0xf1ecbca5cf70e898; PC = 0x555555568ea1 *)
adcs overflow rbp rbp L0x7fffffffd108 overflow;
(* adox   0x58(%rsp),%rbx                          #! EA = L0x7fffffffd110; Value = 0xbcac730e1bef2aac; PC = 0x555555568ea9 *)
adcs overflow rbx rbx L0x7fffffffd110 overflow;
(* mov    %rbp,0x68(%rsp)                          #! EA = L0x7fffffffd120; PC = 0x555555568eb1 *)
mov L0x7fffffffd120 rbp;
(* mulx   0x58(%rdi),%rax,%rbp                     #! EA = L0x7fffffffd698; Value = 0xfe849797b2460d11; PC = 0x555555568eb6 *)
mull rbp rax L0x7fffffffd698 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555568ebc *)
adcs carry rbx rbx rax carry;
(* adox   0x60(%rsp),%rbp                          #! EA = L0x7fffffffd118; Value = 0xbe709e0a9c443247; PC = 0x555555568ec2 *)
adcs overflow rbp rbp L0x7fffffffd118 overflow;
(* mov    %rbx,0x50(%rsp)                          #! EA = L0x7fffffffd108; PC = 0x555555568eca *)
mov L0x7fffffffd108 rbx;
(* mulx   0x60(%rdi),%rax,%rbx                     #! EA = L0x7fffffffd6a0; Value = 0x1a79aff667022373; PC = 0x555555568ecf *)
mull rbx rax L0x7fffffffd6a0 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555568ed5 *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r10                                #! PC = 0x555555568edb *)
adcs overflow r10 r10 rbx overflow;
(* mov    %rbp,0x58(%rsp)                          #! EA = L0x7fffffffd110; PC = 0x555555568ee1 *)
mov L0x7fffffffd110 rbp;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6a8; Value = 0xe083fda72798bc1f; PC = 0x555555568ee6 *)
mull rbx rbp L0x7fffffffd6a8 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555568eec *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555568ef2 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x70(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6b0; Value = 0x01564e06f44cb9a4; PC = 0x555555568ef8 *)
mull rbx rbp L0x7fffffffd6b0 rdx;
(* mov    %r10,0x60(%rsp)                          #! EA = L0x7fffffffd118; PC = 0x555555568efe *)
mov L0x7fffffffd118 r10;
(* adcx   %rbp,%r11                                #! PC = 0x555555568f03 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555568f09 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x78(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6b8; Value = 0x9f842affd6f7f45a; PC = 0x555555568f0f *)
mull rbx rbp L0x7fffffffd6b8 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555568f15 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555568f1b *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x80(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6c0; Value = 0x6c84b8a77f7a3cbb; PC = 0x555555568f21 *)
mull rbx rbp L0x7fffffffd6c0 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555568f2a *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555568f30 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x88(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6c8; Value = 0xe8c6dc8a214ea9d6; PC = 0x555555568f36 *)
mull rbx rbp L0x7fffffffd6c8 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555568f3f *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555568f45 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x90(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6d0; Value = 0xad455c4d0ed290e0; PC = 0x555555568f4b *)
mull rbx rbp L0x7fffffffd6d0 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555568f54 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555568f5a *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x98(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6d8; Value = 0x000000017dcf9970; PC = 0x555555568f60 *)
mull rbx rbp L0x7fffffffd6d8 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555568f69 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555568f6f *)
adcs overflow r9 r9 rbx overflow;
(* adc    $0x0,%r9                                 #! PC = 0x555555568f75 *)
adcs carry r9 r9 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x68(%rsp),%rdx                          #! EA = L0x7fffffffd120; Value = 0x95f7e352e18c05e4; PC = 0x555555568f79 *)
mov rdx L0x7fffffffd120;
(* mulx   0x45f9(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x555555568f7e *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555568f87 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r11                                #! PC = 0x555555568f8a *)
adcs overflow r11 r11 rbp overflow;
(* adox   %rbx,%r12                                #! PC = 0x555555568f90 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x45e9(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x555555568f96 *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555568f9f *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555568fa5 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x45dc(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x555555568fab *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555568fb4 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555568fba *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x45cf(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x555555568fc0 *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555568fc9 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555568fcf *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x45c2(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x555555568fd5 *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555568fde *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555568fe4 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x45b5(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x555555568fea *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555568ff3 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555568ff9 *)
adcs overflow r9 r9 rbx overflow;
(* adc    $0x0,%r9                                 #! PC = 0x555555568fff *)
adcs carry r9 r9 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x40(%rsp),%rdx                          #! EA = L0x7fffffffd0f8; Value = 0x08804779a35bec51; PC = 0x555555569003 *)
mov rdx L0x7fffffffd0f8;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd690; Value = 0xbdcb9628ddd92f69; PC = 0x555555569008 *)
mull rbx rbp L0x7fffffffd690 rdx;
(* xor    %r10,%r10                                #! PC = 0x55555556900e *)
mov r10 0@uint64;
clear carry;
clear overflow;
(* adox   0x50(%rsp),%rbp                          #! EA = L0x7fffffffd108; Value = 0x109b2f1edc576353; PC = 0x555555569011 *)
adcs overflow rbp rbp L0x7fffffffd108 overflow;
(* adox   0x58(%rsp),%rbx                          #! EA = L0x7fffffffd110; Value = 0x346fc6d44fb5dc15; PC = 0x555555569019 *)
adcs overflow rbx rbx L0x7fffffffd110 overflow;
(* mov    %rbp,0x68(%rsp)                          #! EA = L0x7fffffffd120; PC = 0x555555569021 *)
mov L0x7fffffffd120 rbp;
(* mulx   0x58(%rdi),%rax,%rbp                     #! EA = L0x7fffffffd698; Value = 0xfe849797b2460d11; PC = 0x555555569026 *)
mull rbp rax L0x7fffffffd698 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x55555556902c *)
adcs carry rbx rbx rax carry;
(* adox   0x60(%rsp),%rbp                          #! EA = L0x7fffffffd118; Value = 0xee6180c3ebb63129; PC = 0x555555569032 *)
adcs overflow rbp rbp L0x7fffffffd118 overflow;
(* mov    %rbx,0x50(%rsp)                          #! EA = L0x7fffffffd108; PC = 0x55555556903a *)
mov L0x7fffffffd108 rbx;
(* mulx   0x60(%rdi),%rax,%rbx                     #! EA = L0x7fffffffd6a0; Value = 0x1a79aff667022373; PC = 0x55555556903f *)
mull rbx rax L0x7fffffffd6a0 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555569045 *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r11                                #! PC = 0x55555556904b *)
adcs overflow r11 r11 rbx overflow;
(* mov    %rbp,0x58(%rsp)                          #! EA = L0x7fffffffd110; PC = 0x555555569051 *)
mov L0x7fffffffd110 rbp;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6a8; Value = 0xe083fda72798bc1f; PC = 0x555555569056 *)
mull rbx rbp L0x7fffffffd6a8 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x55555556905c *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555569062 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x70(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6b0; Value = 0x01564e06f44cb9a4; PC = 0x555555569068 *)
mull rbx rbp L0x7fffffffd6b0 rdx;
(* mov    %r11,0x60(%rsp)                          #! EA = L0x7fffffffd118; PC = 0x55555556906e *)
mov L0x7fffffffd118 r11;
(* adcx   %rbp,%r12                                #! PC = 0x555555569073 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555569079 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x78(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6b8; Value = 0x9f842affd6f7f45a; PC = 0x55555556907f *)
mull rbx rbp L0x7fffffffd6b8 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555569085 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x55555556908b *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x80(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6c0; Value = 0x6c84b8a77f7a3cbb; PC = 0x555555569091 *)
mull rbx rbp L0x7fffffffd6c0 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x55555556909a *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x5555555690a0 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x88(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6c8; Value = 0xe8c6dc8a214ea9d6; PC = 0x5555555690a6 *)
mull rbx rbp L0x7fffffffd6c8 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x5555555690af *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555690b5 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x90(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6d0; Value = 0xad455c4d0ed290e0; PC = 0x5555555690bb *)
mull rbx rbp L0x7fffffffd6d0 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x5555555690c4 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555690ca *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x98(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6d8; Value = 0x000000017dcf9970; PC = 0x5555555690d0 *)
mull rbx rbp L0x7fffffffd6d8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x5555555690d9 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555690df *)
adcs overflow r10 r10 rbx overflow;
(* adc    $0x0,%r10                                #! PC = 0x5555555690e5 *)
adcs carry r10 r10 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x68(%rsp),%rdx                          #! EA = L0x7fffffffd120; Value = 0x46890b95fb172f8c; PC = 0x5555555690e9 *)
mov rdx L0x7fffffffd120;
(* mulx   0x4489(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x5555555690ee *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555690f7 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r12                                #! PC = 0x5555555690fa *)
adcs overflow r12 r12 rbp overflow;
(* adox   %rbx,%r13                                #! PC = 0x555555569100 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x4479(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x555555569106 *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x55555556910f *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555569115 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x446c(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x55555556911b *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555569124 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x55555556912a *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x445f(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x555555569130 *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555569139 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x55555556913f *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x4452(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x555555569145 *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x55555556914e *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555569154 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x4445(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x55555556915a *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555569163 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555569169 *)
adcs overflow r10 r10 rbx overflow;
(* adc    $0x0,%r10                                #! PC = 0x55555556916f *)
adcs carry r10 r10 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x48(%rsp),%rdx                          #! EA = L0x7fffffffd100; Value = 0x0000000443cd7e07; PC = 0x555555569173 *)
mov rdx L0x7fffffffd100;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd690; Value = 0xbdcb9628ddd92f69; PC = 0x555555569178 *)
mull rbx rbp L0x7fffffffd690 rdx;
(* xor    %r11,%r11                                #! PC = 0x55555556917e *)
mov r11 0@uint64;
clear carry;
clear overflow;
(* adox   0x50(%rsp),%rbp                          #! EA = L0x7fffffffd108; Value = 0x391beae7c450768f; PC = 0x555555569181 *)
adcs overflow rbp rbp L0x7fffffffd108 overflow;
(* adox   0x58(%rsp),%rbx                          #! EA = L0x7fffffffd110; Value = 0x8f11a3788d7e49ba; PC = 0x555555569189 *)
adcs overflow rbx rbx L0x7fffffffd110 overflow;
(* mov    %rbp,0x68(%rsp)                          #! EA = L0x7fffffffd120; PC = 0x555555569191 *)
mov L0x7fffffffd120 rbp;
(* mulx   0x58(%rdi),%rax,%rbp                     #! EA = L0x7fffffffd698; Value = 0xfe849797b2460d11; PC = 0x555555569196 *)
mull rbp rax L0x7fffffffd698 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x55555556919c *)
adcs carry rbx rbx rax carry;
(* adox   0x60(%rsp),%rbp                          #! EA = L0x7fffffffd118; Value = 0x2d85175363994a88; PC = 0x5555555691a2 *)
adcs overflow rbp rbp L0x7fffffffd118 overflow;
(* mov    %rbx,(%rsi)                              #! EA = L0x7fffffffd730; PC = 0x5555555691aa *)
mov L0x7fffffffd730 rbx;
(* mulx   0x60(%rdi),%rax,%rbx                     #! EA = L0x7fffffffd6a0; Value = 0x1a79aff667022373; PC = 0x5555555691ad *)
mull rbx rax L0x7fffffffd6a0 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x5555555691b3 *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555691b9 *)
adcs overflow r12 r12 rbx overflow;
(* mov    %rbp,0x8(%rsi)                           #! EA = L0x7fffffffd738; PC = 0x5555555691bf *)
mov L0x7fffffffd738 rbp;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6a8; Value = 0xe083fda72798bc1f; PC = 0x5555555691c3 *)
mull rbx rbp L0x7fffffffd6a8 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x5555555691c9 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555691cf *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x70(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6b0; Value = 0x01564e06f44cb9a4; PC = 0x5555555691d5 *)
mull rbx rbp L0x7fffffffd6b0 rdx;
(* mov    %r12,0x10(%rsi)                          #! EA = L0x7fffffffd740; PC = 0x5555555691db *)
mov L0x7fffffffd740 r12;
(* adcx   %rbp,%r13                                #! PC = 0x5555555691df *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x5555555691e5 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x78(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6b8; Value = 0x9f842affd6f7f45a; PC = 0x5555555691eb *)
mull rbx rbp L0x7fffffffd6b8 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x5555555691f1 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x5555555691f7 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x80(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6c0; Value = 0x6c84b8a77f7a3cbb; PC = 0x5555555691fd *)
mull rbx rbp L0x7fffffffd6c0 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555569206 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x55555556920c *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x88(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6c8; Value = 0xe8c6dc8a214ea9d6; PC = 0x555555569212 *)
mull rbx rbp L0x7fffffffd6c8 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x55555556921b *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555569221 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x90(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6d0; Value = 0xad455c4d0ed290e0; PC = 0x555555569227 *)
mull rbx rbp L0x7fffffffd6d0 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555569230 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555569236 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x98(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6d8; Value = 0x000000017dcf9970; PC = 0x55555556923c *)
mull rbx rbp L0x7fffffffd6d8 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555569245 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x55555556924b *)
adcs overflow r11 r11 rbx overflow;
(* adc    $0x0,%r11                                #! PC = 0x555555569251 *)
adcs carry r11 r11 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x68(%rsp),%rdx                          #! EA = L0x7fffffffd120; Value = 0x05c35f2e2cab706e; PC = 0x555555569255 *)
mov rdx L0x7fffffffd120;
(* mulx   0x431d(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x55555556925a *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555569263 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r13                                #! PC = 0x555555569266 *)
adcs overflow r13 r13 rbp overflow;
(* adox   %rbx,%r14                                #! PC = 0x55555556926c *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x430d(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x555555569272 *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x55555556927b *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555569281 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x4300(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x555555569287 *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555569290 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555569296 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x42f3(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x55555556929c *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x5555555692a5 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555692ab *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x42e6(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x5555555692b1 *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x5555555692ba *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555692c0 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x42d9(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x5555555692c6 *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x5555555692cf *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555692d5 *)
adcs overflow r11 r11 rbx overflow;
(* adc    $0x0,%r11                                #! PC = 0x5555555692db *)
adcs carry r11 r11 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r13,0x18(%rsi)                          #! EA = L0x7fffffffd748; PC = 0x5555555692df *)
mov L0x7fffffffd748 r13;
(* mov    %r14,0x20(%rsi)                          #! EA = L0x7fffffffd750; PC = 0x5555555692e3 *)
mov L0x7fffffffd750 r14;
(* mov    %r15,0x28(%rsi)                          #! EA = L0x7fffffffd758; PC = 0x5555555692e7 *)
mov L0x7fffffffd758 r15;
(* mov    %r8,0x30(%rsi)                           #! EA = L0x7fffffffd760; PC = 0x5555555692eb *)
mov L0x7fffffffd760 r8;
(* mov    %r9,0x38(%rsi)                           #! EA = L0x7fffffffd768; PC = 0x5555555692ef *)
mov L0x7fffffffd768 r9;
(* mov    %r10,0x40(%rsi)                          #! EA = L0x7fffffffd770; PC = 0x5555555692f3 *)
mov L0x7fffffffd770 r10;
(* mov    %r11,0x48(%rsi)                          #! EA = L0x7fffffffd778; PC = 0x5555555692f7 *)
mov L0x7fffffffd778 r11;
(* add    $0x70,%rsp                               #! PC = 0x5555555692fb *)
adds carry rsp rsp 0x70@uint64;
(* #! <- SP = 0x7fffffffd158 *)
#! 0x7fffffffd158 = 0x7fffffffd158;
(* #retq                                           #! PC = 0x555555569309 *)
#retq                                           #! 0x555555569309 = 0x555555569309;

(* ===== Outputs ===== *)

mov c10 L0x7fffffffd730;
mov c11 L0x7fffffffd738;
mov c12 L0x7fffffffd740;
mov c13 L0x7fffffffd748;
mov c14 L0x7fffffffd750;
mov c15 L0x7fffffffd758;
mov c16 L0x7fffffffd760;
mov c17 L0x7fffffffd768;
mov c18 L0x7fffffffd770;
mov c19 L0x7fffffffd778;

{
  and [
    eqmod (2**640 * (limbs 64 [ c10, c11, c12, c13, c14, c15, c16, c17, c18, c19 ]))
          (
            2
            *
            (limbs 64 [ a00, a01, a02, a03, a04, a05, a06, a07, a08, a09 ])
            *
            (limbs 64 [ a10, a11, a12, a13, a14, a15, a16, a17, a18, a19 ])
          )
          (limbs 64 [ $p610_0, $p610_1, $p610_2, $p610_3, $p610_4, $p610_5, $p610_6, $p610_7, $p610_8, $p610_9 ])
  ]
  &&
  and [
    limbs 64 [ c10, c11, c12, c13, c14, c15, c16, c17, c18, c19 ] <=u
        (2@640 * limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64,
                            $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ] - 1@640)
  ]
}
