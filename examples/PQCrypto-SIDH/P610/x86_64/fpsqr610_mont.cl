(* on frege: -v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint fpsqr610_mont.cl
Parsing Cryptoline file:		[OK]		0.009948 seconds
Checking well-formedness:		[OK]		0.001119 seconds
Transforming to SSA form:		[OK]		0.000553 seconds
Normalizing specification:		[OK]		0.000750 seconds
Rewriting assignments:			[OK]		0.000489 seconds
Verifying program safety:
	 Cut 0
	     Round 1 (0 safety conditions, timeout = 14400 seconds)
	 Overall			[OK]		0.000148 seconds
Verifying range assertions:		[OK]		10.045070 seconds
Verifying range specification:		[OK]		7.928841 seconds
Rewriting value-preserved casting:	[OK]		0.000159 seconds
Verifying algebraic assertions:		[OK]		0.001274 seconds
Verifying algebraic specification:	[OK]		0.222713 seconds
Verification result:			[OK]		18.211677 seconds
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

proc main (a0@uint64, a1@uint64, a2@uint64, a3@uint64, a4@uint64, a5@uint64, a6@uint64, a7@uint64, a8@uint64, a9@uint64) =
{
  true
  &&
  and [
    limbs 64 [ a0, a1, a2, a3, a4, a5, a6, a7, a8, a9 ] <=u
      (2@640 * limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64,
                          $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ] - 1@640)
  ]
}

(* ===== Initialization ===== *)

mov L0x7fffffffd830 a0;
mov L0x7fffffffd838 a1;
mov L0x7fffffffd840 a2;
mov L0x7fffffffd848 a3;
mov L0x7fffffffd850 a4;
mov L0x7fffffffd858 a5;
mov L0x7fffffffd860 a6;
mov L0x7fffffffd868 a7;
mov L0x7fffffffd870 a8;
mov L0x7fffffffd878 a9;

mov L0x55555556d580 $p610p1_4@uint64;
mov L0x55555556d588 $p610p1_5@uint64;
mov L0x55555556d590 $p610p1_6@uint64;
mov L0x55555556d598 $p610p1_7@uint64;
mov L0x55555556d5a0 $p610p1_8@uint64;
mov L0x55555556d5a8 $p610p1_9@uint64;

nondet rdi@uint64;
nondet rsi@uint64;
nondet rsp@uint64;

(* ===== Program ===== *)

(* #! -> SP = 0x7fffffffd5f8 *)
#! 0x7fffffffd5f8 = 0x7fffffffd5f8;
(* mov    %rsi,%rdx                                #! PC = 0x5555555584b4 *)
mov rdx rsi;
(* mov    %rdi,%rsi                                #! PC = 0x5555555584b7 *)
mov rsi rdi;
(* #jmpq   0x5555555643f0 <fpmul610>               #! PC = 0x5555555584ba *)
#jmpq   0x5555555643f0 <fpmul610>               #! 0x5555555584ba = 0x5555555584ba;
(* #jmpq   0x55555556930a <fpmul610_asm>           #! PC = 0x5555555643f4 *)
#jmpq   0x55555556930a <fpmul610_asm>           #! 0x5555555643f4 = 0x5555555643f4;
(* mov    %rdx,%rcx                                #! PC = 0x55555556930a *)
mov rcx rdx;
(* sub    $0x20,%rsp                               #! PC = 0x555555569317 *)
subb carry rsp rsp 0x20@uint64;
(* mov    (%rsi),%rdx                              #! EA = L0x7fffffffd830; Value = 0x42cc1347c72a4869; PC = 0x55555556931b *)
mov rdx L0x7fffffffd830;
(* mulx   (%rdi),%r8,%r9                           #! EA = L0x7fffffffd830; Value = 0x42cc1347c72a4869; PC = 0x55555556931e *)
mull r9 r8 L0x7fffffffd830 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555569323 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mov    %r8,0x18(%rsp)                           #! EA = L0x7fffffffd5c0; PC = 0x555555569326 *)
mov L0x7fffffffd5c0 r8;
(* mulx   0x8(%rdi),%r11,%r10                      #! EA = L0x7fffffffd838; Value = 0x00932cf40a0538fb; PC = 0x55555556932b *)
mull r10 r11 L0x7fffffffd838 rdx;
(* adcx   %r11,%r9                                 #! PC = 0x555555569331 *)
adcs carry r9 r9 r11 carry;
(* mulx   0x10(%rdi),%r12,%r11                     #! EA = L0x7fffffffd840; Value = 0xa0c10507221b728b; PC = 0x555555569337 *)
mull r11 r12 L0x7fffffffd840 rdx;
(* adcx   %r12,%r10                                #! PC = 0x55555556933d *)
adcs carry r10 r10 r12 carry;
(* mulx   0x18(%rdi),%r13,%r12                     #! EA = L0x7fffffffd848; Value = 0x7335d9f1fef72c0a; PC = 0x555555569343 *)
mull r12 r13 L0x7fffffffd848 rdx;
(* adcx   %r13,%r11                                #! PC = 0x555555569349 *)
adcs carry r11 r11 r13 carry;
(* mulx   0x20(%rdi),%r8,%r13                      #! EA = L0x7fffffffd850; Value = 0x58936217b931465f; PC = 0x55555556934f *)
mull r13 r8 L0x7fffffffd850 rdx;
(* adcx   %r8,%r12                                 #! PC = 0x555555569355 *)
adcs carry r12 r12 r8 carry;
(* mulx   0x28(%rdi),%rax,%r14                     #! EA = L0x7fffffffd858; Value = 0xddfe826c9fe9ebf9; PC = 0x55555556935b *)
mull r14 rax L0x7fffffffd858 rdx;
(* adcx   %rax,%r13                                #! PC = 0x555555569361 *)
adcs carry r13 r13 rax carry;
(* mulx   0x30(%rdi),%rax,%r15                     #! EA = L0x7fffffffd860; Value = 0x95e4a9c39e45f93c; PC = 0x555555569367 *)
mull r15 rax L0x7fffffffd860 rdx;
(* mov    %r9,(%rsp)                               #! EA = L0x7fffffffd5a8; PC = 0x55555556936d *)
mov L0x7fffffffd5a8 r9;
(* adcx   %rax,%r14                                #! PC = 0x555555569371 *)
adcs carry r14 r14 rax carry;
(* mulx   0x38(%rdi),%rbx,%r8                      #! EA = L0x7fffffffd868; Value = 0x2de7539cdfc674c4; PC = 0x555555569377 *)
mull r8 rbx L0x7fffffffd868 rdx;
(* mov    %r10,0x8(%rsp)                           #! EA = L0x7fffffffd5b0; PC = 0x55555556937d *)
mov L0x7fffffffd5b0 r10;
(* adcx   %rbx,%r15                                #! PC = 0x555555569382 *)
adcs carry r15 r15 rbx carry;
(* mulx   0x40(%rdi),%rax,%r9                      #! EA = L0x7fffffffd870; Value = 0xa6ea96f46cb15d67; PC = 0x555555569388 *)
mull r9 rax L0x7fffffffd870 rdx;
(* mov    %r11,0x10(%rsp)                          #! EA = L0x7fffffffd5b8; PC = 0x55555556938e *)
mov L0x7fffffffd5b8 r11;
(* adcx   %rax,%r8                                 #! PC = 0x555555569393 *)
adcs carry r8 r8 rax carry;
(* mulx   0x48(%rdi),%rbx,%r10                     #! EA = L0x7fffffffd878; Value = 0x00000000c23d1e7b; PC = 0x555555569399 *)
mull r10 rbx L0x7fffffffd878 rdx;
(* adcx   %rbx,%r9                                 #! PC = 0x55555556939f *)
adcs carry r9 r9 rbx carry;
(* adc    $0x0,%r10                                #! PC = 0x5555555693a5 *)
adcs carry r10 r10 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rsp),%rdx                          #! EA = L0x7fffffffd5c0; Value = 0xe67e83cd14ef3b11; PC = 0x5555555693a9 *)
mov rdx L0x7fffffffd5c0;
(* mulx   0x41c9(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x5555555693ae *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555693b7 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r12                                #! PC = 0x5555555693ba *)
adcs overflow r12 r12 rbp overflow;
(* adox   %rbx,%r13                                #! PC = 0x5555555693c0 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x41b9(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x5555555693c6 *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x5555555693cf *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x5555555693d5 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x41ac(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x5555555693db *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x5555555693e4 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x5555555693ea *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x419f(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x5555555693f0 *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x5555555693f9 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555693ff *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x4192(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x555555569405 *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x55555556940e *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555569414 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x4185(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x55555556941a *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555569423 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555569429 *)
adcs overflow r10 r10 rbx overflow;
(* adc    $0x0,%r10                                #! PC = 0x55555556942f *)
adcs carry r10 r10 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x8(%rsi),%rdx                           #! EA = L0x7fffffffd838; Value = 0x00932cf40a0538fb; PC = 0x555555569433 *)
mov rdx L0x7fffffffd838;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffd830; Value = 0x42cc1347c72a4869; PC = 0x555555569437 *)
mull rbx rbp L0x7fffffffd830 rdx;
(* xor    %r11,%r11                                #! PC = 0x55555556943c *)
mov r11 0@uint64;
clear carry;
clear overflow;
(* adox   (%rsp),%rbp                              #! EA = L0x7fffffffd5a8; Value = 0x0ef5124cc8e3eb5c; PC = 0x55555556943f *)
adcs overflow rbp rbp L0x7fffffffd5a8 overflow;
(* adox   0x8(%rsp),%rbx                           #! EA = L0x7fffffffd5b0; Value = 0x334b7c865fee7c8b; PC = 0x555555569446 *)
adcs overflow rbx rbx L0x7fffffffd5b0 overflow;
(* mov    %rbp,0x18(%rsp)                          #! EA = L0x7fffffffd5c0; PC = 0x55555556944e *)
mov L0x7fffffffd5c0 rbp;
(* mulx   0x8(%rdi),%rax,%rbp                      #! EA = L0x7fffffffd838; Value = 0x00932cf40a0538fb; PC = 0x555555569453 *)
mull rbp rax L0x7fffffffd838 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555569459 *)
adcs carry rbx rbx rax carry;
(* adox   0x10(%rsp),%rbp                          #! EA = L0x7fffffffd5b8; Value = 0x2a0449bd55daa60f; PC = 0x55555556945f *)
adcs overflow rbp rbp L0x7fffffffd5b8 overflow;
(* mov    %rbx,(%rsp)                              #! EA = L0x7fffffffd5a8; PC = 0x555555569467 *)
mov L0x7fffffffd5a8 rbx;
(* mulx   0x10(%rdi),%rax,%rbx                     #! EA = L0x7fffffffd840; Value = 0xa0c10507221b728b; PC = 0x55555556946b *)
mull rbx rax L0x7fffffffd840 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555569471 *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r12                                #! PC = 0x555555569477 *)
adcs overflow r12 r12 rbx overflow;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0x7fffffffd5b0; PC = 0x55555556947d *)
mov L0x7fffffffd5b0 rbp;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd848; Value = 0x7335d9f1fef72c0a; PC = 0x555555569482 *)
mull rbx rbp L0x7fffffffd848 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555569488 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x55555556948e *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd850; Value = 0x58936217b931465f; PC = 0x555555569494 *)
mull rbx rbp L0x7fffffffd850 rdx;
(* mov    %r12,0x10(%rsp)                          #! EA = L0x7fffffffd5b8; PC = 0x55555556949a *)
mov L0x7fffffffd5b8 r12;
(* adcx   %rbp,%r13                                #! PC = 0x55555556949f *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x5555555694a5 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd858; Value = 0xddfe826c9fe9ebf9; PC = 0x5555555694ab *)
mull rbx rbp L0x7fffffffd858 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x5555555694b1 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x5555555694b7 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd860; Value = 0x95e4a9c39e45f93c; PC = 0x5555555694bd *)
mull rbx rbp L0x7fffffffd860 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x5555555694c3 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555694c9 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd868; Value = 0x2de7539cdfc674c4; PC = 0x5555555694cf *)
mull rbx rbp L0x7fffffffd868 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x5555555694d5 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555694db *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd870; Value = 0xa6ea96f46cb15d67; PC = 0x5555555694e1 *)
mull rbx rbp L0x7fffffffd870 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x5555555694e7 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555694ed *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd878; Value = 0x00000000c23d1e7b; PC = 0x5555555694f3 *)
mull rbx rbp L0x7fffffffd878 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x5555555694f9 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555694ff *)
adcs overflow r11 r11 rbx overflow;
(* adc    $0x0,%r11                                #! PC = 0x555555569505 *)
adcs carry r11 r11 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rsp),%rdx                          #! EA = L0x7fffffffd5c0; Value = 0x0c7c47f9d33ce24f; PC = 0x555555569509 *)
mov rdx L0x7fffffffd5c0;
(* mulx   0x4069(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x55555556950e *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555569517 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r13                                #! PC = 0x55555556951a *)
adcs overflow r13 r13 rbp overflow;
(* adox   %rbx,%r14                                #! PC = 0x555555569520 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x4059(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x555555569526 *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x55555556952f *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555569535 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x404c(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x55555556953b *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555569544 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x55555556954a *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x403f(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x555555569550 *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555569559 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x55555556955f *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x4032(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x555555569565 *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x55555556956e *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555569574 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x4025(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x55555556957a *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555569583 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555569589 *)
adcs overflow r11 r11 rbx overflow;
(* adc    $0x0,%r11                                #! PC = 0x55555556958f *)
adcs carry r11 r11 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x10(%rsi),%rdx                          #! EA = L0x7fffffffd840; Value = 0xa0c10507221b728b; PC = 0x555555569593 *)
mov rdx L0x7fffffffd840;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffd830; Value = 0x42cc1347c72a4869; PC = 0x555555569597 *)
mull rbx rbp L0x7fffffffd830 rdx;
(* xor    %r12,%r12                                #! PC = 0x55555556959c *)
mov r12 0@uint64;
clear carry;
clear overflow;
(* adox   (%rsp),%rbp                              #! EA = L0x7fffffffd5a8; Value = 0x89a332771512ac2c; PC = 0x55555556959f *)
adcs overflow rbp rbp L0x7fffffffd5a8 overflow;
(* adox   0x8(%rsp),%rbx                           #! EA = L0x7fffffffd5b0; Value = 0x6080e94d1ab1aa6c; PC = 0x5555555695a6 *)
adcs overflow rbx rbx L0x7fffffffd5b0 overflow;
(* mov    %rbp,0x18(%rsp)                          #! EA = L0x7fffffffd5c0; PC = 0x5555555695ae *)
mov L0x7fffffffd5c0 rbp;
(* mulx   0x8(%rdi),%rax,%rbp                      #! EA = L0x7fffffffd838; Value = 0x00932cf40a0538fb; PC = 0x5555555695b3 *)
mull rbp rax L0x7fffffffd838 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x5555555695b9 *)
adcs carry rbx rbx rax carry;
(* adox   0x10(%rsp),%rbp                          #! EA = L0x7fffffffd5b8; Value = 0x061841ea2f4d9123; PC = 0x5555555695bf *)
adcs overflow rbp rbp L0x7fffffffd5b8 overflow;
(* mov    %rbx,(%rsp)                              #! EA = L0x7fffffffd5a8; PC = 0x5555555695c7 *)
mov L0x7fffffffd5a8 rbx;
(* mulx   0x10(%rdi),%rax,%rbx                     #! EA = L0x7fffffffd840; Value = 0xa0c10507221b728b; PC = 0x5555555695cb *)
mull rbx rax L0x7fffffffd840 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x5555555695d1 *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555695d7 *)
adcs overflow r13 r13 rbx overflow;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0x7fffffffd5b0; PC = 0x5555555695dd *)
mov L0x7fffffffd5b0 rbp;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd848; Value = 0x7335d9f1fef72c0a; PC = 0x5555555695e2 *)
mull rbx rbp L0x7fffffffd848 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x5555555695e8 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x5555555695ee *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd850; Value = 0x58936217b931465f; PC = 0x5555555695f4 *)
mull rbx rbp L0x7fffffffd850 rdx;
(* mov    %r13,0x10(%rsp)                          #! EA = L0x7fffffffd5b8; PC = 0x5555555695fa *)
mov L0x7fffffffd5b8 r13;
(* adcx   %rbp,%r14                                #! PC = 0x5555555695ff *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555569605 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd858; Value = 0xddfe826c9fe9ebf9; PC = 0x55555556960b *)
mull rbx rbp L0x7fffffffd858 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555569611 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555569617 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd860; Value = 0x95e4a9c39e45f93c; PC = 0x55555556961d *)
mull rbx rbp L0x7fffffffd860 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555569623 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555569629 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd868; Value = 0x2de7539cdfc674c4; PC = 0x55555556962f *)
mull rbx rbp L0x7fffffffd868 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555569635 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x55555556963b *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd870; Value = 0xa6ea96f46cb15d67; PC = 0x555555569641 *)
mull rbx rbp L0x7fffffffd870 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555569647 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x55555556964d *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd878; Value = 0x00000000c23d1e7b; PC = 0x555555569653 *)
mull rbx rbp L0x7fffffffd878 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555569659 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x55555556965f *)
adcs overflow r12 r12 rbx overflow;
(* adc    $0x0,%r12                                #! PC = 0x555555569665 *)
adcs carry r12 r12 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rsp),%rdx                          #! EA = L0x7fffffffd5c0; Value = 0xbcc84813a259bf2f; PC = 0x555555569669 *)
mov rdx L0x7fffffffd5c0;
(* mulx   0x3f09(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x55555556966e *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555569677 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r14                                #! PC = 0x55555556967a *)
adcs overflow r14 r14 rbp overflow;
(* adox   %rbx,%r15                                #! PC = 0x555555569680 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x3ef9(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x555555569686 *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x55555556968f *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555569695 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x3eec(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x55555556969b *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x5555555696a4 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555696aa *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x3edf(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x5555555696b0 *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x5555555696b9 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555696bf *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x3ed2(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x5555555696c5 *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x5555555696ce *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555696d4 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x3ec5(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x5555555696da *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x5555555696e3 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555696e9 *)
adcs overflow r12 r12 rbx overflow;
(* adc    $0x0,%r12                                #! PC = 0x5555555696ef *)
adcs carry r12 r12 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rsi),%rdx                          #! EA = L0x7fffffffd848; Value = 0x7335d9f1fef72c0a; PC = 0x5555555696f3 *)
mov rdx L0x7fffffffd848;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffd830; Value = 0x42cc1347c72a4869; PC = 0x5555555696f7 *)
mull rbx rbp L0x7fffffffd830 rdx;
(* xor    %r13,%r13                                #! PC = 0x5555555696fc *)
mov r13 0@uint64;
clear carry;
clear overflow;
(* adox   (%rsp),%rbp                              #! EA = L0x7fffffffd5a8; Value = 0xc0ef1d7775d326aa; PC = 0x5555555696ff *)
adcs overflow rbp rbp L0x7fffffffd5a8 overflow;
(* adox   0x8(%rsp),%rbx                           #! EA = L0x7fffffffd5b0; Value = 0x708fabf2c61914c7; PC = 0x555555569706 *)
adcs overflow rbx rbx L0x7fffffffd5b0 overflow;
(* mov    %rbp,0x18(%rsp)                          #! EA = L0x7fffffffd5c0; PC = 0x55555556970e *)
mov L0x7fffffffd5c0 rbp;
(* mulx   0x8(%rdi),%rax,%rbp                      #! EA = L0x7fffffffd838; Value = 0x00932cf40a0538fb; PC = 0x555555569713 *)
mull rbp rax L0x7fffffffd838 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555569719 *)
adcs carry rbx rbx rax carry;
(* adox   0x10(%rsp),%rbp                          #! EA = L0x7fffffffd5b8; Value = 0x85fbf687cc39dbef; PC = 0x55555556971f *)
adcs overflow rbp rbp L0x7fffffffd5b8 overflow;
(* mov    %rbx,(%rsp)                              #! EA = L0x7fffffffd5a8; PC = 0x555555569727 *)
mov L0x7fffffffd5a8 rbx;
(* mulx   0x10(%rdi),%rax,%rbx                     #! EA = L0x7fffffffd840; Value = 0xa0c10507221b728b; PC = 0x55555556972b *)
mull rbx rax L0x7fffffffd840 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555569731 *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r14                                #! PC = 0x555555569737 *)
adcs overflow r14 r14 rbx overflow;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0x7fffffffd5b0; PC = 0x55555556973d *)
mov L0x7fffffffd5b0 rbp;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd848; Value = 0x7335d9f1fef72c0a; PC = 0x555555569742 *)
mull rbx rbp L0x7fffffffd848 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555569748 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x55555556974e *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd850; Value = 0x58936217b931465f; PC = 0x555555569754 *)
mull rbx rbp L0x7fffffffd850 rdx;
(* mov    %r14,0x10(%rsp)                          #! EA = L0x7fffffffd5b8; PC = 0x55555556975a *)
mov L0x7fffffffd5b8 r14;
(* adcx   %rbp,%r15                                #! PC = 0x55555556975f *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555569765 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd858; Value = 0xddfe826c9fe9ebf9; PC = 0x55555556976b *)
mull rbx rbp L0x7fffffffd858 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555569771 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555569777 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd860; Value = 0x95e4a9c39e45f93c; PC = 0x55555556977d *)
mull rbx rbp L0x7fffffffd860 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555569783 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555569789 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd868; Value = 0x2de7539cdfc674c4; PC = 0x55555556978f *)
mull rbx rbp L0x7fffffffd868 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555569795 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x55555556979b *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd870; Value = 0xa6ea96f46cb15d67; PC = 0x5555555697a1 *)
mull rbx rbp L0x7fffffffd870 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x5555555697a7 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555697ad *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd878; Value = 0x00000000c23d1e7b; PC = 0x5555555697b3 *)
mull rbx rbp L0x7fffffffd878 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x5555555697b9 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555697bf *)
adcs overflow r13 r13 rbx overflow;
(* adc    $0x0,%r13                                #! PC = 0x5555555697c5 *)
adcs carry r13 r13 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rsp),%rdx                          #! EA = L0x7fffffffd5c0; Value = 0xc1017dfd8d3b06c4; PC = 0x5555555697c9 *)
mov rdx L0x7fffffffd5c0;
(* mulx   0x3da9(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x5555555697ce *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555697d7 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r15                                #! PC = 0x5555555697da *)
adcs overflow r15 r15 rbp overflow;
(* adox   %rbx,%r8                                 #! PC = 0x5555555697e0 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x3d99(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x5555555697e6 *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x5555555697ef *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555697f5 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x3d8c(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x5555555697fb *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555569804 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x55555556980a *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x3d7f(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x555555569810 *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555569819 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x55555556981f *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x3d72(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x555555569825 *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x55555556982e *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555569834 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x3d65(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x55555556983a *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555569843 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555569849 *)
adcs overflow r13 r13 rbx overflow;
(* adc    $0x0,%r13                                #! PC = 0x55555556984f *)
adcs carry r13 r13 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x20(%rsi),%rdx                          #! EA = L0x7fffffffd850; Value = 0x58936217b931465f; PC = 0x555555569853 *)
mov rdx L0x7fffffffd850;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffd830; Value = 0x42cc1347c72a4869; PC = 0x555555569857 *)
mull rbx rbp L0x7fffffffd830 rdx;
(* xor    %r14,%r14                                #! PC = 0x55555556985c *)
mov r14 0@uint64;
clear carry;
clear overflow;
(* adox   (%rsp),%rbp                              #! EA = L0x7fffffffd5a8; Value = 0xcaae59d97196a4c8; PC = 0x55555556985f *)
adcs overflow rbp rbp L0x7fffffffd5a8 overflow;
(* adox   0x8(%rsp),%rbx                           #! EA = L0x7fffffffd5b0; Value = 0x70146acf825a67fa; PC = 0x555555569866 *)
adcs overflow rbx rbx L0x7fffffffd5b0 overflow;
(* mov    %rbp,0x18(%rsp)                          #! EA = L0x7fffffffd5c0; PC = 0x55555556986e *)
mov L0x7fffffffd5c0 rbp;
(* mulx   0x8(%rdi),%rax,%rbp                      #! EA = L0x7fffffffd838; Value = 0x00932cf40a0538fb; PC = 0x555555569873 *)
mull rbp rax L0x7fffffffd838 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555569879 *)
adcs carry rbx rbx rax carry;
(* adox   0x10(%rsp),%rbp                          #! EA = L0x7fffffffd5b8; Value = 0x0f94c96c69726c5c; PC = 0x55555556987f *)
adcs overflow rbp rbp L0x7fffffffd5b8 overflow;
(* mov    %rbx,(%rsp)                              #! EA = L0x7fffffffd5a8; PC = 0x555555569887 *)
mov L0x7fffffffd5a8 rbx;
(* mulx   0x10(%rdi),%rax,%rbx                     #! EA = L0x7fffffffd840; Value = 0xa0c10507221b728b; PC = 0x55555556988b *)
mull rbx rax L0x7fffffffd840 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555569891 *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r15                                #! PC = 0x555555569897 *)
adcs overflow r15 r15 rbx overflow;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0x7fffffffd5b0; PC = 0x55555556989d *)
mov L0x7fffffffd5b0 rbp;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd848; Value = 0x7335d9f1fef72c0a; PC = 0x5555555698a2 *)
mull rbx rbp L0x7fffffffd848 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x5555555698a8 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555698ae *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd850; Value = 0x58936217b931465f; PC = 0x5555555698b4 *)
mull rbx rbp L0x7fffffffd850 rdx;
(* mov    %r15,0x10(%rsp)                          #! EA = L0x7fffffffd5b8; PC = 0x5555555698ba *)
mov L0x7fffffffd5b8 r15;
(* adcx   %rbp,%r8                                 #! PC = 0x5555555698bf *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555698c5 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd858; Value = 0xddfe826c9fe9ebf9; PC = 0x5555555698cb *)
mull rbx rbp L0x7fffffffd858 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x5555555698d1 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555698d7 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd860; Value = 0x95e4a9c39e45f93c; PC = 0x5555555698dd *)
mull rbx rbp L0x7fffffffd860 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x5555555698e3 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555698e9 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd868; Value = 0x2de7539cdfc674c4; PC = 0x5555555698ef *)
mull rbx rbp L0x7fffffffd868 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x5555555698f5 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555698fb *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd870; Value = 0xa6ea96f46cb15d67; PC = 0x555555569901 *)
mull rbx rbp L0x7fffffffd870 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555569907 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x55555556990d *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd878; Value = 0x00000000c23d1e7b; PC = 0x555555569913 *)
mull rbx rbp L0x7fffffffd878 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555569919 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x55555556991f *)
adcs overflow r14 r14 rbx overflow;
(* adc    $0x0,%r14                                #! PC = 0x555555569925 *)
adcs carry r14 r14 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rsp),%rdx                          #! EA = L0x7fffffffd5c0; Value = 0xb22982cca72d39bf; PC = 0x555555569929 *)
mov rdx L0x7fffffffd5c0;
(* mulx   0x3c49(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x55555556992e *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555569937 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r8                                 #! PC = 0x55555556993a *)
adcs overflow r8 r8 rbp overflow;
(* adox   %rbx,%r9                                 #! PC = 0x555555569940 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x3c39(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x555555569946 *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x55555556994f *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555569955 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x3c2c(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x55555556995b *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555569964 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x55555556996a *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x3c1f(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x555555569970 *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555569979 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x55555556997f *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x3c12(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x555555569985 *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x55555556998e *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555569994 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x3c05(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x55555556999a *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x5555555699a3 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x5555555699a9 *)
adcs overflow r14 r14 rbx overflow;
(* adc    $0x0,%r14                                #! PC = 0x5555555699af *)
adcs carry r14 r14 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x28(%rsi),%rdx                          #! EA = L0x7fffffffd858; Value = 0xddfe826c9fe9ebf9; PC = 0x5555555699b3 *)
mov rdx L0x7fffffffd858;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffd830; Value = 0x42cc1347c72a4869; PC = 0x5555555699b7 *)
mull rbx rbp L0x7fffffffd830 rdx;
(* xor    %r15,%r15                                #! PC = 0x5555555699bc *)
mov r15 0@uint64;
clear carry;
clear overflow;
(* adox   (%rsp),%rbp                              #! EA = L0x7fffffffd5a8; Value = 0xd876553f01a1a057; PC = 0x5555555699bf *)
adcs overflow rbp rbp L0x7fffffffd5a8 overflow;
(* adox   0x8(%rsp),%rbx                           #! EA = L0x7fffffffd5b0; Value = 0xbced64190afb6a1a; PC = 0x5555555699c6 *)
adcs overflow rbx rbx L0x7fffffffd5b0 overflow;
(* mov    %rbp,0x18(%rsp)                          #! EA = L0x7fffffffd5c0; PC = 0x5555555699ce *)
mov L0x7fffffffd5c0 rbp;
(* mulx   0x8(%rdi),%rax,%rbp                      #! EA = L0x7fffffffd838; Value = 0x00932cf40a0538fb; PC = 0x5555555699d3 *)
mull rbp rax L0x7fffffffd838 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x5555555699d9 *)
adcs carry rbx rbx rax carry;
(* adox   0x10(%rsp),%rbp                          #! EA = L0x7fffffffd5b8; Value = 0xb265d137b0054f60; PC = 0x5555555699df *)
adcs overflow rbp rbp L0x7fffffffd5b8 overflow;
(* mov    %rbx,(%rsp)                              #! EA = L0x7fffffffd5a8; PC = 0x5555555699e7 *)
mov L0x7fffffffd5a8 rbx;
(* mulx   0x10(%rdi),%rax,%rbx                     #! EA = L0x7fffffffd840; Value = 0xa0c10507221b728b; PC = 0x5555555699eb *)
mull rbx rax L0x7fffffffd840 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x5555555699f1 *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555699f7 *)
adcs overflow r8 r8 rbx overflow;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0x7fffffffd5b0; PC = 0x5555555699fd *)
mov L0x7fffffffd5b0 rbp;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd848; Value = 0x7335d9f1fef72c0a; PC = 0x555555569a02 *)
mull rbx rbp L0x7fffffffd848 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555569a08 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555569a0e *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd850; Value = 0x58936217b931465f; PC = 0x555555569a14 *)
mull rbx rbp L0x7fffffffd850 rdx;
(* mov    %r8,0x10(%rsp)                           #! EA = L0x7fffffffd5b8; PC = 0x555555569a1a *)
mov L0x7fffffffd5b8 r8;
(* adcx   %rbp,%r9                                 #! PC = 0x555555569a1f *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555569a25 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd858; Value = 0xddfe826c9fe9ebf9; PC = 0x555555569a2b *)
mull rbx rbp L0x7fffffffd858 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555569a31 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555569a37 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd860; Value = 0x95e4a9c39e45f93c; PC = 0x555555569a3d *)
mull rbx rbp L0x7fffffffd860 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555569a43 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555569a49 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd868; Value = 0x2de7539cdfc674c4; PC = 0x555555569a4f *)
mull rbx rbp L0x7fffffffd868 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555569a55 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555569a5b *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd870; Value = 0xa6ea96f46cb15d67; PC = 0x555555569a61 *)
mull rbx rbp L0x7fffffffd870 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555569a67 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555569a6d *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd878; Value = 0x00000000c23d1e7b; PC = 0x555555569a73 *)
mull rbx rbp L0x7fffffffd878 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555569a79 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555569a7f *)
adcs overflow r15 r15 rbx overflow;
(* adc    $0x0,%r15                                #! PC = 0x555555569a85 *)
adcs carry r15 r15 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rsp),%rdx                          #! EA = L0x7fffffffd5c0; Value = 0x437960a4a8cb7178; PC = 0x555555569a89 *)
mov rdx L0x7fffffffd5c0;
(* mulx   0x3ae9(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x555555569a8e *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555569a97 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r9                                 #! PC = 0x555555569a9a *)
adcs overflow r9 r9 rbp overflow;
(* adox   %rbx,%r10                                #! PC = 0x555555569aa0 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x3ad9(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x555555569aa6 *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555569aaf *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555569ab5 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x3acc(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x555555569abb *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555569ac4 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555569aca *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x3abf(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x555555569ad0 *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555569ad9 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555569adf *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x3ab2(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x555555569ae5 *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555569aee *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555569af4 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x3aa5(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x555555569afa *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555569b03 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555569b09 *)
adcs overflow r15 r15 rbx overflow;
(* adc    $0x0,%r15                                #! PC = 0x555555569b0f *)
adcs carry r15 r15 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x30(%rsi),%rdx                          #! EA = L0x7fffffffd860; Value = 0x95e4a9c39e45f93c; PC = 0x555555569b13 *)
mov rdx L0x7fffffffd860;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffd830; Value = 0x42cc1347c72a4869; PC = 0x555555569b17 *)
mull rbx rbp L0x7fffffffd830 rdx;
(* xor    %r8,%r8                                  #! PC = 0x555555569b1c *)
mov r8 0@uint64;
clear carry;
clear overflow;
(* adox   (%rsp),%rbp                              #! EA = L0x7fffffffd5a8; Value = 0x35c894da6894ba69; PC = 0x555555569b1f *)
adcs overflow rbp rbp L0x7fffffffd5a8 overflow;
(* adox   0x8(%rsp),%rbx                           #! EA = L0x7fffffffd5b0; Value = 0x3896e15ae66f9865; PC = 0x555555569b26 *)
adcs overflow rbx rbx L0x7fffffffd5b0 overflow;
(* mov    %rbp,0x18(%rsp)                          #! EA = L0x7fffffffd5c0; PC = 0x555555569b2e *)
mov L0x7fffffffd5c0 rbp;
(* mulx   0x8(%rdi),%rax,%rbp                      #! EA = L0x7fffffffd838; Value = 0x00932cf40a0538fb; PC = 0x555555569b33 *)
mull rbp rax L0x7fffffffd838 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555569b39 *)
adcs carry rbx rbx rax carry;
(* adox   0x10(%rsp),%rbp                          #! EA = L0x7fffffffd5b8; Value = 0x32a52d78bd70b1e1; PC = 0x555555569b3f *)
adcs overflow rbp rbp L0x7fffffffd5b8 overflow;
(* mov    %rbx,(%rsp)                              #! EA = L0x7fffffffd5a8; PC = 0x555555569b47 *)
mov L0x7fffffffd5a8 rbx;
(* mulx   0x10(%rdi),%rax,%rbx                     #! EA = L0x7fffffffd840; Value = 0xa0c10507221b728b; PC = 0x555555569b4b *)
mull rbx rax L0x7fffffffd840 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555569b51 *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555569b57 *)
adcs overflow r9 r9 rbx overflow;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0x7fffffffd5b0; PC = 0x555555569b5d *)
mov L0x7fffffffd5b0 rbp;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd848; Value = 0x7335d9f1fef72c0a; PC = 0x555555569b62 *)
mull rbx rbp L0x7fffffffd848 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555569b68 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555569b6e *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd850; Value = 0x58936217b931465f; PC = 0x555555569b74 *)
mull rbx rbp L0x7fffffffd850 rdx;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffd5b8; PC = 0x555555569b7a *)
mov L0x7fffffffd5b8 r9;
(* adcx   %rbp,%r10                                #! PC = 0x555555569b7f *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555569b85 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd858; Value = 0xddfe826c9fe9ebf9; PC = 0x555555569b8b *)
mull rbx rbp L0x7fffffffd858 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555569b91 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555569b97 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd860; Value = 0x95e4a9c39e45f93c; PC = 0x555555569b9d *)
mull rbx rbp L0x7fffffffd860 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555569ba3 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555569ba9 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd868; Value = 0x2de7539cdfc674c4; PC = 0x555555569baf *)
mull rbx rbp L0x7fffffffd868 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555569bb5 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555569bbb *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd870; Value = 0xa6ea96f46cb15d67; PC = 0x555555569bc1 *)
mull rbx rbp L0x7fffffffd870 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555569bc7 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555569bcd *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd878; Value = 0x00000000c23d1e7b; PC = 0x555555569bd3 *)
mull rbx rbp L0x7fffffffd878 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555569bd9 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555569bdf *)
adcs overflow r8 r8 rbx overflow;
(* adc    $0x0,%r8                                 #! PC = 0x555555569be5 *)
adcs carry r8 r8 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rsp),%rdx                          #! EA = L0x7fffffffd5c0; Value = 0x15292a768938d405; PC = 0x555555569be9 *)
mov rdx L0x7fffffffd5c0;
(* mulx   0x3989(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x555555569bee *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555569bf7 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r10                                #! PC = 0x555555569bfa *)
adcs overflow r10 r10 rbp overflow;
(* adox   %rbx,%r11                                #! PC = 0x555555569c00 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x3979(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x555555569c06 *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555569c0f *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555569c15 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x396c(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x555555569c1b *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555569c24 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555569c2a *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x395f(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x555555569c30 *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555569c39 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555569c3f *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x3952(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x555555569c45 *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555569c4e *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555569c54 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x3945(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x555555569c5a *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555569c63 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555569c69 *)
adcs overflow r8 r8 rbx overflow;
(* adc    $0x0,%r8                                 #! PC = 0x555555569c6f *)
adcs carry r8 r8 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x38(%rsi),%rdx                          #! EA = L0x7fffffffd868; Value = 0x2de7539cdfc674c4; PC = 0x555555569c73 *)
mov rdx L0x7fffffffd868;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffd830; Value = 0x42cc1347c72a4869; PC = 0x555555569c77 *)
mull rbx rbp L0x7fffffffd830 rdx;
(* xor    %r9,%r9                                  #! PC = 0x555555569c7c *)
mov r9 0@uint64;
clear carry;
clear overflow;
(* adox   (%rsp),%rbp                              #! EA = L0x7fffffffd5a8; Value = 0x50054056500e5c1e; PC = 0x555555569c7f *)
adcs overflow rbp rbp L0x7fffffffd5a8 overflow;
(* adox   0x8(%rsp),%rbx                           #! EA = L0x7fffffffd5b0; Value = 0x64679ce9c4110ac0; PC = 0x555555569c86 *)
adcs overflow rbx rbx L0x7fffffffd5b0 overflow;
(* mov    %rbp,0x18(%rsp)                          #! EA = L0x7fffffffd5c0; PC = 0x555555569c8e *)
mov L0x7fffffffd5c0 rbp;
(* mulx   0x8(%rdi),%rax,%rbp                      #! EA = L0x7fffffffd838; Value = 0x00932cf40a0538fb; PC = 0x555555569c93 *)
mull rbp rax L0x7fffffffd838 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555569c99 *)
adcs carry rbx rbx rax carry;
(* adox   0x10(%rsp),%rbp                          #! EA = L0x7fffffffd5b8; Value = 0x2612954e2aa7afeb; PC = 0x555555569c9f *)
adcs overflow rbp rbp L0x7fffffffd5b8 overflow;
(* mov    %rbx,(%rsp)                              #! EA = L0x7fffffffd5a8; PC = 0x555555569ca7 *)
mov L0x7fffffffd5a8 rbx;
(* mulx   0x10(%rdi),%rax,%rbx                     #! EA = L0x7fffffffd840; Value = 0xa0c10507221b728b; PC = 0x555555569cab *)
mull rbx rax L0x7fffffffd840 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555569cb1 *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r10                                #! PC = 0x555555569cb7 *)
adcs overflow r10 r10 rbx overflow;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0x7fffffffd5b0; PC = 0x555555569cbd *)
mov L0x7fffffffd5b0 rbp;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd848; Value = 0x7335d9f1fef72c0a; PC = 0x555555569cc2 *)
mull rbx rbp L0x7fffffffd848 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555569cc8 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555569cce *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd850; Value = 0x58936217b931465f; PC = 0x555555569cd4 *)
mull rbx rbp L0x7fffffffd850 rdx;
(* mov    %r10,0x10(%rsp)                          #! EA = L0x7fffffffd5b8; PC = 0x555555569cda *)
mov L0x7fffffffd5b8 r10;
(* adcx   %rbp,%r11                                #! PC = 0x555555569cdf *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555569ce5 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd858; Value = 0xddfe826c9fe9ebf9; PC = 0x555555569ceb *)
mull rbx rbp L0x7fffffffd858 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555569cf1 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555569cf7 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd860; Value = 0x95e4a9c39e45f93c; PC = 0x555555569cfd *)
mull rbx rbp L0x7fffffffd860 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555569d03 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555569d09 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd868; Value = 0x2de7539cdfc674c4; PC = 0x555555569d0f *)
mull rbx rbp L0x7fffffffd868 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555569d15 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555569d1b *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd870; Value = 0xa6ea96f46cb15d67; PC = 0x555555569d21 *)
mull rbx rbp L0x7fffffffd870 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555569d27 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555569d2d *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd878; Value = 0x00000000c23d1e7b; PC = 0x555555569d33 *)
mull rbx rbp L0x7fffffffd878 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555569d39 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555569d3f *)
adcs overflow r9 r9 rbx overflow;
(* adc    $0x0,%r9                                 #! PC = 0x555555569d45 *)
adcs carry r9 r9 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rsp),%rdx                          #! EA = L0x7fffffffd5c0; Value = 0x3bff944d6d736082; PC = 0x555555569d49 *)
mov rdx L0x7fffffffd5c0;
(* mulx   0x3829(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x555555569d4e *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555569d57 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r11                                #! PC = 0x555555569d5a *)
adcs overflow r11 r11 rbp overflow;
(* adox   %rbx,%r12                                #! PC = 0x555555569d60 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x3819(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x555555569d66 *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555569d6f *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555569d75 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x380c(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x555555569d7b *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555569d84 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555569d8a *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x37ff(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x555555569d90 *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555569d99 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555569d9f *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x37f2(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x555555569da5 *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555569dae *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555569db4 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x37e5(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x555555569dba *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555569dc3 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555569dc9 *)
adcs overflow r9 r9 rbx overflow;
(* adc    $0x0,%r9                                 #! PC = 0x555555569dcf *)
adcs carry r9 r9 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x40(%rsi),%rdx                          #! EA = L0x7fffffffd870; Value = 0xa6ea96f46cb15d67; PC = 0x555555569dd3 *)
mov rdx L0x7fffffffd870;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffd830; Value = 0x42cc1347c72a4869; PC = 0x555555569dd7 *)
mull rbx rbp L0x7fffffffd830 rdx;
(* xor    %r10,%r10                                #! PC = 0x555555569ddc *)
mov r10 0@uint64;
clear carry;
clear overflow;
(* adox   (%rsp),%rbp                              #! EA = L0x7fffffffd5a8; Value = 0x410e3e46a1cb1f38; PC = 0x555555569ddf *)
adcs overflow rbp rbp L0x7fffffffd5a8 overflow;
(* adox   0x8(%rsp),%rbx                           #! EA = L0x7fffffffd5b0; Value = 0x43c035d2ebcf7e48; PC = 0x555555569de6 *)
adcs overflow rbx rbx L0x7fffffffd5b0 overflow;
(* mov    %rbp,0x18(%rsp)                          #! EA = L0x7fffffffd5c0; PC = 0x555555569dee *)
mov L0x7fffffffd5c0 rbp;
(* mulx   0x8(%rdi),%rax,%rbp                      #! EA = L0x7fffffffd838; Value = 0x00932cf40a0538fb; PC = 0x555555569df3 *)
mull rbp rax L0x7fffffffd838 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555569df9 *)
adcs carry rbx rbx rax carry;
(* adox   0x10(%rsp),%rbp                          #! EA = L0x7fffffffd5b8; Value = 0xd813b1a3bf74ca89; PC = 0x555555569dff *)
adcs overflow rbp rbp L0x7fffffffd5b8 overflow;
(* mov    %rbx,(%rsp)                              #! EA = L0x7fffffffd5a8; PC = 0x555555569e07 *)
mov L0x7fffffffd5a8 rbx;
(* mulx   0x10(%rdi),%rax,%rbx                     #! EA = L0x7fffffffd840; Value = 0xa0c10507221b728b; PC = 0x555555569e0b *)
mull rbx rax L0x7fffffffd840 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555569e11 *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r11                                #! PC = 0x555555569e17 *)
adcs overflow r11 r11 rbx overflow;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0x7fffffffd5b0; PC = 0x555555569e1d *)
mov L0x7fffffffd5b0 rbp;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd848; Value = 0x7335d9f1fef72c0a; PC = 0x555555569e22 *)
mull rbx rbp L0x7fffffffd848 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555569e28 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555569e2e *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd850; Value = 0x58936217b931465f; PC = 0x555555569e34 *)
mull rbx rbp L0x7fffffffd850 rdx;
(* mov    %r11,0x10(%rsp)                          #! EA = L0x7fffffffd5b8; PC = 0x555555569e3a *)
mov L0x7fffffffd5b8 r11;
(* adcx   %rbp,%r12                                #! PC = 0x555555569e3f *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555569e45 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd858; Value = 0xddfe826c9fe9ebf9; PC = 0x555555569e4b *)
mull rbx rbp L0x7fffffffd858 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555569e51 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555569e57 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd860; Value = 0x95e4a9c39e45f93c; PC = 0x555555569e5d *)
mull rbx rbp L0x7fffffffd860 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555569e63 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555569e69 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd868; Value = 0x2de7539cdfc674c4; PC = 0x555555569e6f *)
mull rbx rbp L0x7fffffffd868 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555569e75 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555569e7b *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd870; Value = 0xa6ea96f46cb15d67; PC = 0x555555569e81 *)
mull rbx rbp L0x7fffffffd870 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555569e87 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555569e8d *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd878; Value = 0x00000000c23d1e7b; PC = 0x555555569e93 *)
mull rbx rbp L0x7fffffffd878 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555569e99 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555569e9f *)
adcs overflow r10 r10 rbx overflow;
(* adc    $0x0,%r10                                #! PC = 0x555555569ea5 *)
adcs carry r10 r10 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rsp),%rdx                          #! EA = L0x7fffffffd5c0; Value = 0xc186285e7cb56677; PC = 0x555555569ea9 *)
mov rdx L0x7fffffffd5c0;
(* mulx   0x36c9(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x555555569eae *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555569eb7 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r12                                #! PC = 0x555555569eba *)
adcs overflow r12 r12 rbp overflow;
(* adox   %rbx,%r13                                #! PC = 0x555555569ec0 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x36b9(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x555555569ec6 *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555569ecf *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555569ed5 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x36ac(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x555555569edb *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555569ee4 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555569eea *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x369f(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x555555569ef0 *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555569ef9 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555569eff *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x3692(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x555555569f05 *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555569f0e *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555569f14 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x3685(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x555555569f1a *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555569f23 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555569f29 *)
adcs overflow r10 r10 rbx overflow;
(* adc    $0x0,%r10                                #! PC = 0x555555569f2f *)
adcs carry r10 r10 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x48(%rsi),%rdx                          #! EA = L0x7fffffffd878; Value = 0x00000000c23d1e7b; PC = 0x555555569f33 *)
mov rdx L0x7fffffffd878;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffd830; Value = 0x42cc1347c72a4869; PC = 0x555555569f37 *)
mull rbx rbp L0x7fffffffd830 rdx;
(* xor    %r11,%r11                                #! PC = 0x555555569f3c *)
mov r11 0@uint64;
clear carry;
clear overflow;
(* adox   (%rsp),%rbp                              #! EA = L0x7fffffffd5a8; Value = 0x9e9a00f6a813e096; PC = 0x555555569f3f *)
adcs overflow rbp rbp L0x7fffffffd5a8 overflow;
(* adox   0x8(%rsp),%rbx                           #! EA = L0x7fffffffd5b0; Value = 0x8d970cb365a43e96; PC = 0x555555569f46 *)
adcs overflow rbx rbx L0x7fffffffd5b0 overflow;
(* mov    %rbp,0x18(%rsp)                          #! EA = L0x7fffffffd5c0; PC = 0x555555569f4e *)
mov L0x7fffffffd5c0 rbp;
(* mulx   0x8(%rdi),%rax,%rbp                      #! EA = L0x7fffffffd838; Value = 0x00932cf40a0538fb; PC = 0x555555569f53 *)
mull rbp rax L0x7fffffffd838 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555569f59 *)
adcs carry rbx rbx rax carry;
(* adox   0x10(%rsp),%rbp                          #! EA = L0x7fffffffd5b8; Value = 0x90b92f958a9ea96c; PC = 0x555555569f5f *)
adcs overflow rbp rbp L0x7fffffffd5b8 overflow;
(* mov    %rbx,(%rcx)                              #! EA = L0x7fffffffd880; PC = 0x555555569f67 *)
mov L0x7fffffffd880 rbx;
(* mulx   0x10(%rdi),%rax,%rbx                     #! EA = L0x7fffffffd840; Value = 0xa0c10507221b728b; PC = 0x555555569f6a *)
mull rbx rax L0x7fffffffd840 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555569f70 *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r12                                #! PC = 0x555555569f76 *)
adcs overflow r12 r12 rbx overflow;
(* mov    %rbp,0x8(%rcx)                           #! EA = L0x7fffffffd888; PC = 0x555555569f7c *)
mov L0x7fffffffd888 rbp;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd848; Value = 0x7335d9f1fef72c0a; PC = 0x555555569f80 *)
mull rbx rbp L0x7fffffffd848 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555569f86 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555569f8c *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd850; Value = 0x58936217b931465f; PC = 0x555555569f92 *)
mull rbx rbp L0x7fffffffd850 rdx;
(* mov    %r12,0x10(%rcx)                          #! EA = L0x7fffffffd890; PC = 0x555555569f98 *)
mov L0x7fffffffd890 r12;
(* adcx   %rbp,%r13                                #! PC = 0x555555569f9c *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555569fa2 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd858; Value = 0xddfe826c9fe9ebf9; PC = 0x555555569fa8 *)
mull rbx rbp L0x7fffffffd858 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555569fae *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555569fb4 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd860; Value = 0x95e4a9c39e45f93c; PC = 0x555555569fba *)
mull rbx rbp L0x7fffffffd860 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555569fc0 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555569fc6 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd868; Value = 0x2de7539cdfc674c4; PC = 0x555555569fcc *)
mull rbx rbp L0x7fffffffd868 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555569fd2 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555569fd8 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd870; Value = 0xa6ea96f46cb15d67; PC = 0x555555569fde *)
mull rbx rbp L0x7fffffffd870 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555569fe4 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555569fea *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd878; Value = 0x00000000c23d1e7b; PC = 0x555555569ff0 *)
mull rbx rbp L0x7fffffffd878 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555569ff6 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555569ffc *)
adcs overflow r11 r11 rbx overflow;
(* adc    $0x0,%r11                                #! PC = 0x55555556a002 *)
adcs carry r11 r11 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rsp),%rdx                          #! EA = L0x7fffffffd5c0; Value = 0x9df22dbd20e5f909; PC = 0x55555556a006 *)
mov rdx L0x7fffffffd5c0;
(* mulx   0x356c(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x55555556a00b *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x55555556a014 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r13                                #! PC = 0x55555556a017 *)
adcs overflow r13 r13 rbp overflow;
(* adox   %rbx,%r14                                #! PC = 0x55555556a01d *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x355c(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x55555556a023 *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x55555556a02c *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x55555556a032 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x354f(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x55555556a038 *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x55555556a041 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x55555556a047 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x3542(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x55555556a04d *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x55555556a056 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x55555556a05c *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x3535(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x55555556a062 *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x55555556a06b *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x55555556a071 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x3528(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x55555556a077 *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x55555556a080 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x55555556a086 *)
adcs overflow r11 r11 rbx overflow;
(* adc    $0x0,%r11                                #! PC = 0x55555556a08c *)
adcs carry r11 r11 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r13,0x18(%rcx)                          #! EA = L0x7fffffffd898; PC = 0x55555556a090 *)
mov L0x7fffffffd898 r13;
(* mov    %r14,0x20(%rcx)                          #! EA = L0x7fffffffd8a0; PC = 0x55555556a094 *)
mov L0x7fffffffd8a0 r14;
(* mov    %r15,0x28(%rcx)                          #! EA = L0x7fffffffd8a8; PC = 0x55555556a098 *)
mov L0x7fffffffd8a8 r15;
(* mov    %r8,0x30(%rcx)                           #! EA = L0x7fffffffd8b0; PC = 0x55555556a09c *)
mov L0x7fffffffd8b0 r8;
(* mov    %r9,0x38(%rcx)                           #! EA = L0x7fffffffd8b8; PC = 0x55555556a0a0 *)
mov L0x7fffffffd8b8 r9;
(* mov    %r10,0x40(%rcx)                          #! EA = L0x7fffffffd8c0; PC = 0x55555556a0a4 *)
mov L0x7fffffffd8c0 r10;
(* mov    %r11,0x48(%rcx)                          #! EA = L0x7fffffffd8c8; PC = 0x55555556a0a8 *)
mov L0x7fffffffd8c8 r11;
(* add    $0x20,%rsp                               #! PC = 0x55555556a0ac *)
adds carry rsp rsp 0x20@uint64;
(* #! <- SP = 0x7fffffffd5f8 *)
#! 0x7fffffffd5f8 = 0x7fffffffd5f8;
(* #retq                                           #! PC = 0x55555556a0ba *)
#retq                                           #! 0x55555556a0ba = 0x55555556a0ba;

(* ===== Outputs ===== *)

mov c0 L0x7fffffffd880;
mov c1 L0x7fffffffd888;
mov c2 L0x7fffffffd890;
mov c3 L0x7fffffffd898;
mov c4 L0x7fffffffd8a0;
mov c5 L0x7fffffffd8a8;
mov c6 L0x7fffffffd8b0;
mov c7 L0x7fffffffd8b8;
mov c8 L0x7fffffffd8c0;
mov c9 L0x7fffffffd8c8;

{
  and [
    eqmod
      (2**640 * (limbs 64 [c0, c1, c2, c3, c4, c5, c6, c7, c8, c9 ]))
      (
        limbs 64 [ a0, a1, a2, a3, a4, a5, a6, a7, a8, a9 ]
        *
        limbs 64 [ a0, a1, a2, a3, a4, a5, a6, a7, a8, a9 ]
      )
      (limbs 64 [ $p610_0, $p610_1, $p610_2, $p610_3, $p610_4,
                  $p610_5, $p610_6, $p610_7, $p610_8, $p610_9 ])
  ]
  &&
  and [
    limbs 64 [c0, c1, c2, c3, c4, c5, c6, c7, c8, c9] <=u
      (2@640 * limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64,
                          $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ] - 1@640)
  ]
}
