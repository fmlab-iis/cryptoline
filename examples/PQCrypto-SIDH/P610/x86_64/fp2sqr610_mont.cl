(* on frege: -v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint fp2sqr610_mont.cl
Parsing Cryptoline file:		[OK]		0.016555 seconds
Checking well-formedness:		[OK]		0.002777 seconds
Transforming to SSA form:		[OK]		0.000970 seconds
Normalizing specification:		[OK]		0.002461 seconds
Rewriting assignments:			[OK]		0.001426 seconds
Verifying program safety:
	 Cut 0
	     Round 1 (0 safety conditions, timeout = 14400 seconds)
	 Overall			[OK]		0.000176 seconds
Verifying range assertions:		[OK]		26.555174 seconds
Verifying range specification:		[OK]		13.136106 seconds
Rewriting value-preserved casting:	[OK]		0.000335 seconds
Verifying algebraic assertions:		[OK]		0.002520 seconds
Verifying algebraic specification:	[OK]		0.780277 seconds
Verification result:			[OK]		40.499963 seconds
*)

(*
const uint64_t p610[NWORDS64_FIELD]              = { 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0x6E01FFFFFFFFFFFF,
                                                     0xB1784DE8AA5AB02E, 0x9AE7BF45048FF9AB, 0xB255B2FA10C4252A, 0x819010C251E7D88C, 0x000000027BF6A768 };
const uint64_t p610x4[NWORDS64_FIELD]            = { 0xFFFFFFFFFFFFFFFC, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xB807FFFFFFFFFFFF,
                                                     0xC5E137A2A96AC0B9, 0x6B9EFD14123FE6AE, 0xC956CBE8431094AA, 0x06404309479F6232, 0x00000009EFDA9DA2 };
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

const p610x4_0 = 0xFFFFFFFFFFFFFFFC
const p610x4_1 = 0xFFFFFFFFFFFFFFFF
const p610x4_2 = 0xFFFFFFFFFFFFFFFF
const p610x4_3 = 0xFFFFFFFFFFFFFFFF
const p610x4_4 = 0xB807FFFFFFFFFFFF
const p610x4_5 = 0xC5E137A2A96AC0B9
const p610x4_6 = 0x6B9EFD14123FE6AE
const p610x4_7 = 0xC956CBE8431094AA
const p610x4_8 = 0x06404309479F6232
const p610x4_9 = 0x00000009EFDA9DA2

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

mov L0x55555556d620 $p610x4_0@uint64;
mov L0x55555556d628 $p610x4_1@uint64;
mov L0x55555556d640 $p610x4_4@uint64;
mov L0x55555556d648 $p610x4_5@uint64;
mov L0x55555556d650 $p610x4_6@uint64;
mov L0x55555556d658 $p610x4_7@uint64;
mov L0x55555556d660 $p610x4_8@uint64;
mov L0x55555556d668 $p610x4_9@uint64;

nondet fs0x28@uint64;
nondet rdi@uint64;
nondet rsi@uint64;
nondet rsp@uint64;

(* ===== Program ===== *)

(* #! -> SP = 0x7fffffffd228 *)
#! 0x7fffffffd228 = 0x7fffffffd228;
(* mov    %rdi,%rbp                                #! PC = 0x5555555587b5 *)
mov rbp rdi;
(* mov    %rsi,%rbx                                #! PC = 0x5555555587b9 *)
mov rbx rsi;
(* sub    $0xb8,%rsp                               #! PC = 0x5555555587bc *)
subb carry rsp rsp 0xb8@uint64;
(* mov    %rsp,%rsi                                #! PC = 0x5555555587c3 *)
mov rsi rsp;
(* mov    %fs:0x28,%rax                            #! PC = 0x5555555587c6 *)
mov rax fs0x28;
(* mov    %rax,0xa8(%rsp)                          #! EA = L0x7fffffffd208; PC = 0x5555555587cf *)
mov L0x7fffffffd208 rax;
(* xor    %eax,%eax                                #! PC = 0x5555555587d7 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* #callq  0x5555555643d0 <fp2sqr610_c0_mont>      #! PC = 0x5555555587d9 *)
#callq  0x5555555643d0 <fp2sqr610_c0_mont>      #! 0x5555555587d9 = 0x5555555587d9;
(* #! -> SP = 0x7fffffffd158 *)
#! 0x7fffffffd158 = 0x7fffffffd158;
(* #jmpq   0x5555555674d9 <fp2sqr610_c0_asm>       #! PC = 0x5555555643d4 *)
#jmpq   0x5555555674d9 <fp2sqr610_c0_asm>       #! 0x5555555643d4 = 0x5555555643d4;
(* sub    $0x20,%rsp                               #! PC = 0x5555555674e3 *)
subb carry rsp rsp 0x20@uint64;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffd640; Value = 0xac2c052460c238ea; PC = 0x5555555674e7 *)
mov r8 L0x7fffffffd640;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffd648; Value = 0xe5275a5926ba2c2c; PC = 0x5555555674ea *)
mov r9 L0x7fffffffd648;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffd650; Value = 0x6b55cfe38b5027f7; PC = 0x5555555674ee *)
mov r10 L0x7fffffffd650;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffd658; Value = 0x0e77088df31ce512; PC = 0x5555555674f2 *)
mov r11 L0x7fffffffd658;
(* mov    0x20(%rdi),%r12                          #! EA = L0x7fffffffd660; Value = 0x8a6880402a3cb8e8; PC = 0x5555555674f6 *)
mov r12 L0x7fffffffd660;
(* mov    0x28(%rdi),%r13                          #! EA = L0x7fffffffd668; Value = 0x253e57fdef627d81; PC = 0x5555555674fa *)
mov r13 L0x7fffffffd668;
(* add    0x50(%rdi),%r8                           #! EA = L0x7fffffffd690; Value = 0xbdcb9628ddd92f69; PC = 0x5555555674fe *)
adds carry r8 r8 L0x7fffffffd690;
(* adc    0x58(%rdi),%r9                           #! EA = L0x7fffffffd698; Value = 0xfe849797b2460d11; PC = 0x555555567502 *)
adcs carry r9 r9 L0x7fffffffd698 carry;
(* mov    %r8,(%rsi)                               #! EA = L0x7fffffffd160; PC = 0x555555567506 *)
mov L0x7fffffffd160 r8;
(* adc    0x60(%rdi),%r10                          #! EA = L0x7fffffffd6a0; Value = 0x1a79aff667022373; PC = 0x555555567509 *)
adcs carry r10 r10 L0x7fffffffd6a0 carry;
(* adc    0x68(%rdi),%r11                          #! EA = L0x7fffffffd6a8; Value = 0xe083fda72798bc1f; PC = 0x55555556750d *)
adcs carry r11 r11 L0x7fffffffd6a8 carry;
(* mov    %r9,0x8(%rsi)                            #! EA = L0x7fffffffd168; PC = 0x555555567511 *)
mov L0x7fffffffd168 r9;
(* mov    %r10,0x10(%rsi)                          #! EA = L0x7fffffffd170; PC = 0x555555567515 *)
mov L0x7fffffffd170 r10;
(* adc    0x70(%rdi),%r12                          #! EA = L0x7fffffffd6b0; Value = 0x01564e06f44cb9a4; PC = 0x555555567519 *)
adcs carry r12 r12 L0x7fffffffd6b0 carry;
(* adc    0x78(%rdi),%r13                          #! EA = L0x7fffffffd6b8; Value = 0x9f842affd6f7f45a; PC = 0x55555556751d *)
adcs carry r13 r13 L0x7fffffffd6b8 carry;
(* mov    0x30(%rdi),%r14                          #! EA = L0x7fffffffd670; Value = 0x69350d4694a441bb; PC = 0x555555567521 *)
mov r14 L0x7fffffffd670;
(* mov    0x38(%rdi),%r15                          #! EA = L0x7fffffffd678; Value = 0xa94a9c540cb5cab6; PC = 0x555555567525 *)
mov r15 L0x7fffffffd678;
(* adc    0x80(%rdi),%r14                          #! EA = L0x7fffffffd6c0; Value = 0x6c84b8a77f7a3cbb; PC = 0x555555567529 *)
adcs carry r14 r14 L0x7fffffffd6c0 carry;
(* adc    0x88(%rdi),%r15                          #! EA = L0x7fffffffd6c8; Value = 0xe8c6dc8a214ea9d6; PC = 0x555555567530 *)
adcs carry r15 r15 L0x7fffffffd6c8 carry;
(* mov    0x40(%rdi),%r9                           #! EA = L0x7fffffffd680; Value = 0x844023bcd1adf628; PC = 0x555555567537 *)
mov r9 L0x7fffffffd680;
(* mov    0x48(%rdi),%r10                          #! EA = L0x7fffffffd688; Value = 0x0000000221e6bf03; PC = 0x55555556753b *)
mov r10 L0x7fffffffd688;
(* adc    0x90(%rdi),%r9                           #! EA = L0x7fffffffd6d0; Value = 0xad455c4d0ed290e0; PC = 0x55555556753f *)
adcs carry r9 r9 L0x7fffffffd6d0 carry;
(* adc    0x98(%rdi),%r10                          #! EA = L0x7fffffffd6d8; Value = 0x000000017dcf9970; PC = 0x555555567546 *)
adcs carry r10 r10 L0x7fffffffd6d8 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r11,0x18(%rsi)                          #! EA = L0x7fffffffd178; PC = 0x55555556754d *)
mov L0x7fffffffd178 r11;
(* mov    %r12,0x20(%rsi)                          #! EA = L0x7fffffffd180; PC = 0x555555567551 *)
mov L0x7fffffffd180 r12;
(* mov    %r13,0x28(%rsi)                          #! EA = L0x7fffffffd188; PC = 0x555555567555 *)
mov L0x7fffffffd188 r13;
(* mov    %r14,0x30(%rsi)                          #! EA = L0x7fffffffd190; PC = 0x555555567559 *)
mov L0x7fffffffd190 r14;
(* mov    %r15,0x38(%rsi)                          #! EA = L0x7fffffffd198; PC = 0x55555556755d *)
mov L0x7fffffffd198 r15;
(* mov    %r9,0x40(%rsi)                           #! EA = L0x7fffffffd1a0; PC = 0x555555567561 *)
mov L0x7fffffffd1a0 r9;
(* mov    %r10,0x48(%rsi)                          #! EA = L0x7fffffffd1a8; PC = 0x555555567565 *)
mov L0x7fffffffd1a8 r10;
(* mov    (%rdi),%rcx                              #! EA = L0x7fffffffd640; Value = 0xac2c052460c238ea; PC = 0x555555567569 *)
mov rcx L0x7fffffffd640;
(* mov    0x8(%rdi),%r10                           #! EA = L0x7fffffffd648; Value = 0xe5275a5926ba2c2c; PC = 0x55555556756c *)
mov r10 L0x7fffffffd648;
(* mov    0x10(%rdi),%r12                          #! EA = L0x7fffffffd650; Value = 0x6b55cfe38b5027f7; PC = 0x555555567570 *)
mov r12 L0x7fffffffd650;
(* mov    0x18(%rdi),%r13                          #! EA = L0x7fffffffd658; Value = 0x0e77088df31ce512; PC = 0x555555567574 *)
mov r13 L0x7fffffffd658;
(* mov    0x20(%rdi),%r14                          #! EA = L0x7fffffffd660; Value = 0x8a6880402a3cb8e8; PC = 0x555555567578 *)
mov r14 L0x7fffffffd660;
(* mov    0x28(%rdi),%r15                          #! EA = L0x7fffffffd668; Value = 0x253e57fdef627d81; PC = 0x55555556757c *)
mov r15 L0x7fffffffd668;
(* sub    0x50(%rdi),%rcx                          #! EA = L0x7fffffffd690; Value = 0xbdcb9628ddd92f69; PC = 0x555555567580 *)
subb carry rcx rcx L0x7fffffffd690;
(* sbb    0x58(%rdi),%r10                          #! EA = L0x7fffffffd698; Value = 0xfe849797b2460d11; PC = 0x555555567584 *)
sbbs carry r10 r10 L0x7fffffffd698 carry;
(* sbb    0x60(%rdi),%r12                          #! EA = L0x7fffffffd6a0; Value = 0x1a79aff667022373; PC = 0x555555567588 *)
sbbs carry r12 r12 L0x7fffffffd6a0 carry;
(* sbb    0x68(%rdi),%r13                          #! EA = L0x7fffffffd6a8; Value = 0xe083fda72798bc1f; PC = 0x55555556758c *)
sbbs carry r13 r13 L0x7fffffffd6a8 carry;
(* sbb    0x70(%rdi),%r14                          #! EA = L0x7fffffffd6b0; Value = 0x01564e06f44cb9a4; PC = 0x555555567590 *)
sbbs carry r14 r14 L0x7fffffffd6b0 carry;
(* sbb    0x78(%rdi),%r15                          #! EA = L0x7fffffffd6b8; Value = 0x9f842affd6f7f45a; PC = 0x555555567594 *)
sbbs carry r15 r15 L0x7fffffffd6b8 carry;
(* mov    0x30(%rdi),%rbx                          #! EA = L0x7fffffffd670; Value = 0x69350d4694a441bb; PC = 0x555555567598 *)
mov rbx L0x7fffffffd670;
(* mov    0x38(%rdi),%rbp                          #! EA = L0x7fffffffd678; Value = 0xa94a9c540cb5cab6; PC = 0x55555556759c *)
mov rbp L0x7fffffffd678;
(* mov    0x40(%rdi),%r8                           #! EA = L0x7fffffffd680; Value = 0x844023bcd1adf628; PC = 0x5555555675a0 *)
mov r8 L0x7fffffffd680;
(* mov    0x48(%rdi),%rax                          #! EA = L0x7fffffffd688; Value = 0x0000000221e6bf03; PC = 0x5555555675a4 *)
mov rax L0x7fffffffd688;
(* sbb    0x80(%rdi),%rbx                          #! EA = L0x7fffffffd6c0; Value = 0x6c84b8a77f7a3cbb; PC = 0x5555555675a8 *)
sbbs carry rbx rbx L0x7fffffffd6c0 carry;
(* sbb    0x88(%rdi),%rbp                          #! EA = L0x7fffffffd6c8; Value = 0xe8c6dc8a214ea9d6; PC = 0x5555555675af *)
sbbs carry rbp rbp L0x7fffffffd6c8 carry;
(* sbb    0x90(%rdi),%r8                           #! EA = L0x7fffffffd6d0; Value = 0xad455c4d0ed290e0; PC = 0x5555555675b6 *)
sbbs carry r8 r8 L0x7fffffffd6d0 carry;
(* sbb    0x98(%rdi),%rax                          #! EA = L0x7fffffffd6d8; Value = 0x000000017dcf9970; PC = 0x5555555675bd *)
sbbs carry rax rax L0x7fffffffd6d8 carry;
ghost borrow@uint1 : borrow = carry && borrow = carry;
(* add    0x6055(%rip),%rcx        # 0x55555556d620 <p610x4>#! EA = L0x55555556d620; Value = 0xfffffffffffffffc; PC = 0x5555555675c4 *)
adds carry rcx rcx L0x55555556d620;
(* mov    0x6056(%rip),%rdx        # 0x55555556d628 <p610x4+8>#! EA = L0x55555556d628; Value = 0xffffffffffffffff; PC = 0x5555555675cb *)
mov rdx L0x55555556d628;
(* adc    %rdx,%r10                                #! PC = 0x5555555675d2 *)
adcs carry r10 r10 rdx@uint64 carry;
(* adc    %rdx,%r12                                #! PC = 0x5555555675d5 *)
adcs carry r12 r12 rdx@uint64 carry;
(* adc    %rdx,%r13                                #! PC = 0x5555555675d8 *)
adcs carry r13 r13 rdx@uint64 carry;
(* adc    0x605e(%rip),%r14        # 0x55555556d640 <p610x4+32>#! EA = L0x55555556d640; Value = 0xb807ffffffffffff; PC = 0x5555555675db *)
adcs carry r14 r14 L0x55555556d640 carry;
(* adc    0x605f(%rip),%r15        # 0x55555556d648 <p610x4+40>#! EA = L0x55555556d648; Value = 0xc5e137a2a96ac0b9; PC = 0x5555555675e2 *)
adcs carry r15 r15 L0x55555556d648 carry;
(* adc    0x6060(%rip),%rbx        # 0x55555556d650 <p610x4+48>#! EA = L0x55555556d650; Value = 0x6b9efd14123fe6ae; PC = 0x5555555675e9 *)
adcs carry rbx rbx L0x55555556d650 carry;
(* adc    0x6061(%rip),%rbp        # 0x55555556d658 <p610x4+56>#! EA = L0x55555556d658; Value = 0xc956cbe8431094aa; PC = 0x5555555675f0 *)
adcs carry rbp rbp L0x55555556d658 carry;
(* adc    0x6062(%rip),%r8        # 0x55555556d660 <p610x4+64>#! EA = L0x55555556d660; Value = 0x06404309479f6232; PC = 0x5555555675f7 *)
adcs carry r8 r8 L0x55555556d660 carry;
(* adc    0x6063(%rip),%rax        # 0x55555556d668 <p610x4+72>#! EA = L0x55555556d668; Value = 0x00000009efda9da2; PC = 0x5555555675fe *)
adcs carry rax rax L0x55555556d668 carry;
assert true && borrow = carry;
assume borrow = carry && true;
(* mov    %rcx,0x50(%rsi)                          #! EA = L0x7fffffffd1b0; PC = 0x555555567605 *)
mov L0x7fffffffd1b0 rcx;
(* mov    %r10,0x58(%rsi)                          #! EA = L0x7fffffffd1b8; PC = 0x555555567609 *)
mov L0x7fffffffd1b8 r10;
(* mov    %r12,0x60(%rsi)                          #! EA = L0x7fffffffd1c0; PC = 0x55555556760d *)
mov L0x7fffffffd1c0 r12;
(* mov    %r13,0x68(%rsi)                          #! EA = L0x7fffffffd1c8; PC = 0x555555567611 *)
mov L0x7fffffffd1c8 r13;
(* mov    %r14,0x70(%rsi)                          #! EA = L0x7fffffffd1d0; PC = 0x555555567615 *)
mov L0x7fffffffd1d0 r14;
(* mov    %r8,0x90(%rsi)                           #! EA = L0x7fffffffd1f0; PC = 0x555555567619 *)
mov L0x7fffffffd1f0 r8;
(* mov    %rax,0x98(%rsi)                          #! EA = L0x7fffffffd1f8; PC = 0x555555567620 *)
mov L0x7fffffffd1f8 rax;
(* mov    (%rsi),%rdx                              #! EA = L0x7fffffffd160; Value = 0x69f79b4d3e9b6853; PC = 0x555555567627 *)
mov rdx L0x7fffffffd160;
(* mulx   %rcx,%r8,%r9                             #! PC = 0x55555556762a *)
mull r9 r8 rcx rdx;
(* mov    %r15,0x78(%rsi)                          #! EA = L0x7fffffffd1d8; PC = 0x55555556762f *)
mov L0x7fffffffd1d8 r15;
(* xor    %rax,%rax                                #! PC = 0x555555567633 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   %r10,%r11,%r10                           #! PC = 0x555555567636 *)
mull r10 r11 r10 rdx;
(* mov    %rbx,0x80(%rsi)                          #! EA = L0x7fffffffd1e0; PC = 0x55555556763b *)
mov L0x7fffffffd1e0 rbx;
(* adcx   %r11,%r9                                 #! PC = 0x555555567642 *)
adcs carry r9 r9 r11 carry;
(* mulx   %r12,%r12,%r11                           #! PC = 0x555555567648 *)
mull r11 r12 r12 rdx;
(* mov    %rbp,0x88(%rsi)                          #! EA = L0x7fffffffd1e8; PC = 0x55555556764d *)
mov L0x7fffffffd1e8 rbp;
(* adcx   %r12,%r10                                #! PC = 0x555555567654 *)
adcs carry r10 r10 r12 carry;
(* mulx   %r13,%r13,%r12                           #! PC = 0x55555556765a *)
mull r12 r13 r13 rdx;
(* mov    %r8,0x18(%rsp)                           #! EA = L0x7fffffffd120; PC = 0x55555556765f *)
mov L0x7fffffffd120 r8;
(* adcx   %r13,%r11                                #! PC = 0x555555567664 *)
adcs carry r11 r11 r13 carry;
(* mulx   %r14,%r8,%r13                            #! PC = 0x55555556766a *)
mull r13 r8 r14 rdx;
(* mov    %r9,(%rsp)                               #! EA = L0x7fffffffd108; PC = 0x55555556766f *)
mov L0x7fffffffd108 r9;
(* adcx   %r8,%r12                                 #! PC = 0x555555567673 *)
adcs carry r12 r12 r8 carry;
(* mulx   %r15,%r9,%r14                            #! PC = 0x555555567679 *)
mull r14 r9 r15 rdx;
(* mov    %r10,0x8(%rsp)                           #! EA = L0x7fffffffd110; PC = 0x55555556767e *)
mov L0x7fffffffd110 r10;
(* adcx   %r9,%r13                                 #! PC = 0x555555567683 *)
adcs carry r13 r13 r9 carry;
(* mulx   %rbx,%rax,%r15                           #! PC = 0x555555567689 *)
mull r15 rax rbx rdx;
(* mov    %r11,0x10(%rsp)                          #! EA = L0x7fffffffd118; PC = 0x55555556768e *)
mov L0x7fffffffd118 r11;
(* adcx   %rax,%r14                                #! PC = 0x555555567693 *)
adcs carry r14 r14 rax carry;
(* mulx   %rbp,%r10,%r8                            #! PC = 0x555555567699 *)
mull r8 r10 rbp rdx;
(* adcx   %r10,%r15                                #! PC = 0x55555556769e *)
adcs carry r15 r15 r10 carry;
(* mulx   0x90(%rsi),%rax,%r9                      #! EA = L0x7fffffffd1f0; Value = 0xdd3b0a790a7ac77a; PC = 0x5555555676a4 *)
mull r9 rax L0x7fffffffd1f0 rdx;
(* adcx   %rax,%r8                                 #! PC = 0x5555555676ad *)
adcs carry r8 r8 rax carry;
(* mulx   0x98(%rsi),%rbx,%r10                     #! EA = L0x7fffffffd1f8; Value = 0x0000000a93f1c334; PC = 0x5555555676b3 *)
mull r10 rbx L0x7fffffffd1f8 rdx;
(* adcx   %rbx,%r9                                 #! PC = 0x5555555676bc *)
adcs carry r9 r9 rbx carry;
(* adc    $0x0,%r10                                #! PC = 0x5555555676c2 *)
adcs carry r10 r10 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rsp),%rdx                          #! EA = L0x7fffffffd120; Value = 0x77c865b82217db87; PC = 0x5555555676c6 *)
mov rdx L0x7fffffffd120;
(* mulx   0x5eac(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x5555555676cb *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555676d4 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r12                                #! PC = 0x5555555676d7 *)
adcs overflow r12 r12 rbp overflow;
(* adox   %rbx,%r13                                #! PC = 0x5555555676dd *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x5e9c(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x5555555676e3 *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x5555555676ec *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x5555555676f2 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x5e8f(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x5555555676f8 *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555567701 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555567707 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x5e82(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x55555556770d *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555567716 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x55555556771c *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x5e75(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x555555567722 *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x55555556772b *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555567731 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x5e68(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x555555567737 *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555567740 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555567746 *)
adcs overflow r10 r10 rbx overflow;
(* adc    $0x0,%r10                                #! PC = 0x55555556774c *)
adcs carry r10 r10 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x8(%rsi),%rdx                           #! EA = L0x7fffffffd168; Value = 0xe3abf1f0d900393e; PC = 0x555555567750 *)
mov rdx L0x7fffffffd168;
(* mulx   0x50(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1b0; Value = 0xee606efb82e9097d; PC = 0x555555567754 *)
mull rbx rbp L0x7fffffffd1b0 rdx;
(* xor    %r11,%r11                                #! PC = 0x55555556775a *)
mov r11 0@uint64;
clear carry;
clear overflow;
(* adox   (%rsp),%rbp                              #! EA = L0x7fffffffd108; Value = 0x0fbd93dd9ce3437c; PC = 0x55555556775d *)
adcs overflow rbp rbp L0x7fffffffd108 overflow;
(* adox   0x8(%rsp),%rbx                           #! EA = L0x7fffffffd110; Value = 0x04c612335123ceab; PC = 0x555555567764 *)
adcs overflow rbx rbx L0x7fffffffd110 overflow;
(* mov    %rbp,0x18(%rsp)                          #! EA = L0x7fffffffd120; PC = 0x55555556776c *)
mov L0x7fffffffd120 rbp;
(* mulx   0x58(%rsi),%rax,%rbp                     #! EA = L0x7fffffffd1b8; Value = 0xe6a2c2c174741f1a; PC = 0x555555567771 *)
mull rbp rax L0x7fffffffd1b8 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555567777 *)
adcs carry rbx rbx rax carry;
(* adox   0x10(%rsp),%rbp                          #! EA = L0x7fffffffd118; Value = 0xabba7711109f9b2f; PC = 0x55555556777d *)
adcs overflow rbp rbp L0x7fffffffd118 overflow;
(* mov    %rbx,(%rsp)                              #! EA = L0x7fffffffd108; PC = 0x555555567785 *)
mov L0x7fffffffd108 rbx;
(* mulx   0x60(%rsi),%rax,%rbx                     #! EA = L0x7fffffffd1c0; Value = 0x50dc1fed244e0483; PC = 0x555555567789 *)
mull rbx rax L0x7fffffffd1c0 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x55555556778f *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r12                                #! PC = 0x555555567795 *)
adcs overflow r12 r12 rbx overflow;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0x7fffffffd110; PC = 0x55555556779b *)
mov L0x7fffffffd110 rbp;
(* mulx   0x68(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1c8; Value = 0x2df30ae6cb8428f3; PC = 0x5555555677a0 *)
mull rbx rbp L0x7fffffffd1c8 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x5555555677a6 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555677ac *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x70(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1d0; Value = 0x411a323935efff43; PC = 0x5555555677b2 *)
mull rbx rbp L0x7fffffffd1d0 rdx;
(* mov    %r12,0x10(%rsp)                          #! EA = L0x7fffffffd118; PC = 0x5555555677b8 *)
mov L0x7fffffffd118 r12;
(* adcx   %rbp,%r13                                #! PC = 0x5555555677bd *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x5555555677c3 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x78(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1d8; Value = 0x4b9b64a0c1d549e1; PC = 0x5555555677c9 *)
mull rbx rbp L0x7fffffffd1d8 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x5555555677cf *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x5555555677d5 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x80(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1e0; Value = 0x684f51b32769ebae; PC = 0x5555555677db *)
mull rbx rbp L0x7fffffffd1e0 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x5555555677e4 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555677ea *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x88(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1e8; Value = 0x89da8bb22e77b58a; PC = 0x5555555677f0 *)
mull rbx rbp L0x7fffffffd1e8 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x5555555677f9 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555677ff *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x90(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1f0; Value = 0xdd3b0a790a7ac77a; PC = 0x555555567805 *)
mull rbx rbp L0x7fffffffd1f0 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x55555556780e *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555567814 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x98(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1f8; Value = 0x0000000a93f1c334; PC = 0x55555556781a *)
mull rbx rbp L0x7fffffffd1f8 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555567823 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555567829 *)
adcs overflow r11 r11 rbx overflow;
(* adc    $0x0,%r11                                #! PC = 0x55555556782f *)
adcs carry r11 r11 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rsp),%rdx                          #! EA = L0x7fffffffd120; Value = 0xbfac9028297064c2; PC = 0x555555567833 *)
mov rdx L0x7fffffffd120;
(* mulx   0x5d3f(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x555555567838 *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555567841 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r13                                #! PC = 0x555555567844 *)
adcs overflow r13 r13 rbp overflow;
(* adox   %rbx,%r14                                #! PC = 0x55555556784a *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x5d2f(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x555555567850 *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555567859 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x55555556785f *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x5d22(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x555555567865 *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x55555556786e *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555567874 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x5d15(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x55555556787a *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555567883 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555567889 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x5d08(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x55555556788f *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555567898 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x55555556789e *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x5cfb(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x5555555678a4 *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x5555555678ad *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555678b3 *)
adcs overflow r11 r11 rbx overflow;
(* adc    $0x0,%r11                                #! PC = 0x5555555678b9 *)
adcs carry r11 r11 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x10(%rsi),%rdx                          #! EA = L0x7fffffffd170; Value = 0x85cf7fd9f2524b6b; PC = 0x5555555678bd *)
mov rdx L0x7fffffffd170;
(* mulx   0x50(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1b0; Value = 0xee606efb82e9097d; PC = 0x5555555678c1 *)
mull rbx rbp L0x7fffffffd1b0 rdx;
(* xor    %r12,%r12                                #! PC = 0x5555555678c7 *)
mov r12 0@uint64;
clear carry;
clear overflow;
(* adox   (%rsp),%rbp                              #! EA = L0x7fffffffd108; Value = 0x3fc6fed49e37fb72; PC = 0x5555555678ca *)
adcs overflow rbp rbp L0x7fffffffd108 overflow;
(* adox   0x8(%rsp),%rbx                           #! EA = L0x7fffffffd110; Value = 0xbcedea9a1c707db5; PC = 0x5555555678d1 *)
adcs overflow rbx rbx L0x7fffffffd110 overflow;
(* mov    %rbp,0x18(%rsp)                          #! EA = L0x7fffffffd120; PC = 0x5555555678d9 *)
mov L0x7fffffffd120 rbp;
(* mulx   0x58(%rsi),%rax,%rbp                     #! EA = L0x7fffffffd1b8; Value = 0xe6a2c2c174741f1a; PC = 0x5555555678de *)
mull rbp rax L0x7fffffffd1b8 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x5555555678e4 *)
adcs carry rbx rbx rax carry;
(* adox   0x10(%rsp),%rbp                          #! EA = L0x7fffffffd118; Value = 0x4f897c1690db9ccd; PC = 0x5555555678ea *)
adcs overflow rbp rbp L0x7fffffffd118 overflow;
(* mov    %rbx,(%rsp)                              #! EA = L0x7fffffffd108; PC = 0x5555555678f2 *)
mov L0x7fffffffd108 rbx;
(* mulx   0x60(%rsi),%rax,%rbx                     #! EA = L0x7fffffffd1c0; Value = 0x50dc1fed244e0483; PC = 0x5555555678f6 *)
mull rbx rax L0x7fffffffd1c0 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x5555555678fc *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r13                                #! PC = 0x555555567902 *)
adcs overflow r13 r13 rbx overflow;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0x7fffffffd110; PC = 0x555555567908 *)
mov L0x7fffffffd110 rbp;
(* mulx   0x68(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1c8; Value = 0x2df30ae6cb8428f3; PC = 0x55555556790d *)
mull rbx rbp L0x7fffffffd1c8 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555567913 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555567919 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x70(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1d0; Value = 0x411a323935efff43; PC = 0x55555556791f *)
mull rbx rbp L0x7fffffffd1d0 rdx;
(* mov    %r13,0x10(%rsp)                          #! EA = L0x7fffffffd118; PC = 0x555555567925 *)
mov L0x7fffffffd118 r13;
(* adcx   %rbp,%r14                                #! PC = 0x55555556792a *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555567930 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x78(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1d8; Value = 0x4b9b64a0c1d549e1; PC = 0x555555567936 *)
mull rbx rbp L0x7fffffffd1d8 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x55555556793c *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555567942 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x80(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1e0; Value = 0x684f51b32769ebae; PC = 0x555555567948 *)
mull rbx rbp L0x7fffffffd1e0 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555567951 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555567957 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x88(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1e8; Value = 0x89da8bb22e77b58a; PC = 0x55555556795d *)
mull rbx rbp L0x7fffffffd1e8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555567966 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x55555556796c *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x90(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1f0; Value = 0xdd3b0a790a7ac77a; PC = 0x555555567972 *)
mull rbx rbp L0x7fffffffd1f0 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x55555556797b *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555567981 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x98(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1f8; Value = 0x0000000a93f1c334; PC = 0x555555567987 *)
mull rbx rbp L0x7fffffffd1f8 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555567990 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555567996 *)
adcs overflow r12 r12 rbx overflow;
(* adc    $0x0,%r12                                #! PC = 0x55555556799c *)
adcs carry r12 r12 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rsp),%rdx                          #! EA = L0x7fffffffd120; Value = 0xa13a58e0cf7091b1; PC = 0x5555555679a0 *)
mov rdx L0x7fffffffd120;
(* mulx   0x5bd2(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x5555555679a5 *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555679ae *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r14                                #! PC = 0x5555555679b1 *)
adcs overflow r14 r14 rbp overflow;
(* adox   %rbx,%r15                                #! PC = 0x5555555679b7 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x5bc2(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x5555555679bd *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x5555555679c6 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555679cc *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x5bb5(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x5555555679d2 *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x5555555679db *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555679e1 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x5ba8(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x5555555679e7 *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x5555555679f0 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555679f6 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x5b9b(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x5555555679fc *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555567a05 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555567a0b *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x5b8e(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x555555567a11 *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555567a1a *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555567a20 *)
adcs overflow r12 r12 rbx overflow;
(* adc    $0x0,%r12                                #! PC = 0x555555567a26 *)
adcs carry r12 r12 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rsi),%rdx                          #! EA = L0x7fffffffd178; Value = 0xeefb06351ab5a131; PC = 0x555555567a2a *)
mov rdx L0x7fffffffd178;
(* mulx   0x50(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1b0; Value = 0xee606efb82e9097d; PC = 0x555555567a2e *)
mull rbx rbp L0x7fffffffd1b0 rdx;
(* xor    %r13,%r13                                #! PC = 0x555555567a34 *)
mov r13 0@uint64;
clear carry;
clear overflow;
(* adox   (%rsp),%rbp                              #! EA = L0x7fffffffd108; Value = 0x8a8ca4e5893cab1a; PC = 0x555555567a37 *)
adcs overflow rbp rbp L0x7fffffffd108 overflow;
(* adox   0x8(%rsp),%rbx                           #! EA = L0x7fffffffd110; Value = 0xa705ff1cf5926d8d; PC = 0x555555567a3e *)
adcs overflow rbx rbx L0x7fffffffd110 overflow;
(* mov    %rbp,0x18(%rsp)                          #! EA = L0x7fffffffd120; PC = 0x555555567a46 *)
mov L0x7fffffffd120 rbp;
(* mulx   0x58(%rsi),%rax,%rbp                     #! EA = L0x7fffffffd1b8; Value = 0xe6a2c2c174741f1a; PC = 0x555555567a4b *)
mull rbp rax L0x7fffffffd1b8 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555567a51 *)
adcs carry rbx rbx rax carry;
(* adox   0x10(%rsp),%rbp                          #! EA = L0x7fffffffd118; Value = 0xf50cf4d056fda039; PC = 0x555555567a57 *)
adcs overflow rbp rbp L0x7fffffffd118 overflow;
(* mov    %rbx,(%rsp)                              #! EA = L0x7fffffffd108; PC = 0x555555567a5f *)
mov L0x7fffffffd108 rbx;
(* mulx   0x60(%rsi),%rax,%rbx                     #! EA = L0x7fffffffd1c0; Value = 0x50dc1fed244e0483; PC = 0x555555567a63 *)
mull rbx rax L0x7fffffffd1c0 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555567a69 *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r14                                #! PC = 0x555555567a6f *)
adcs overflow r14 r14 rbx overflow;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0x7fffffffd110; PC = 0x555555567a75 *)
mov L0x7fffffffd110 rbp;
(* mulx   0x68(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1c8; Value = 0x2df30ae6cb8428f3; PC = 0x555555567a7a *)
mull rbx rbp L0x7fffffffd1c8 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555567a80 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555567a86 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x70(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1d0; Value = 0x411a323935efff43; PC = 0x555555567a8c *)
mull rbx rbp L0x7fffffffd1d0 rdx;
(* mov    %r14,0x10(%rsp)                          #! EA = L0x7fffffffd118; PC = 0x555555567a92 *)
mov L0x7fffffffd118 r14;
(* adcx   %rbp,%r15                                #! PC = 0x555555567a97 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555567a9d *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x78(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1d8; Value = 0x4b9b64a0c1d549e1; PC = 0x555555567aa3 *)
mull rbx rbp L0x7fffffffd1d8 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555567aa9 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555567aaf *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x80(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1e0; Value = 0x684f51b32769ebae; PC = 0x555555567ab5 *)
mull rbx rbp L0x7fffffffd1e0 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555567abe *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555567ac4 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x88(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1e8; Value = 0x89da8bb22e77b58a; PC = 0x555555567aca *)
mull rbx rbp L0x7fffffffd1e8 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555567ad3 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555567ad9 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x90(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1f0; Value = 0xdd3b0a790a7ac77a; PC = 0x555555567adf *)
mull rbx rbp L0x7fffffffd1f0 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555567ae8 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555567aee *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x98(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1f8; Value = 0x0000000a93f1c334; PC = 0x555555567af4 *)
mull rbx rbp L0x7fffffffd1f8 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555567afd *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555567b03 *)
adcs overflow r13 r13 rbx overflow;
(* adc    $0x0,%r13                                #! PC = 0x555555567b09 *)
adcs carry r13 r13 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rsp),%rdx                          #! EA = L0x7fffffffd120; Value = 0xe7f42ef98e301907; PC = 0x555555567b0d *)
mov rdx L0x7fffffffd120;
(* mulx   0x5a65(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x555555567b12 *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555567b1b *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r15                                #! PC = 0x555555567b1e *)
adcs overflow r15 r15 rbp overflow;
(* adox   %rbx,%r8                                 #! PC = 0x555555567b24 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x5a55(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x555555567b2a *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555567b33 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555567b39 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x5a48(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x555555567b3f *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555567b48 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555567b4e *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x5a3b(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x555555567b54 *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555567b5d *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555567b63 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x5a2e(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x555555567b69 *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555567b72 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555567b78 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x5a21(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x555555567b7e *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555567b87 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555567b8d *)
adcs overflow r13 r13 rbx overflow;
(* adc    $0x0,%r13                                #! PC = 0x555555567b93 *)
adcs carry r13 r13 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x20(%rsi),%rdx                          #! EA = L0x7fffffffd180; Value = 0x8bbece471e89728c; PC = 0x555555567b97 *)
mov rdx L0x7fffffffd180;
(* mulx   0x50(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1b0; Value = 0xee606efb82e9097d; PC = 0x555555567b9b *)
mull rbx rbp L0x7fffffffd1b0 rdx;
(* xor    %r14,%r14                                #! PC = 0x555555567ba1 *)
mov r14 0@uint64;
clear carry;
clear overflow;
(* adox   (%rsp),%rbp                              #! EA = L0x7fffffffd108; Value = 0xdf0e8388427b8785; PC = 0x555555567ba4 *)
adcs overflow rbp rbp L0x7fffffffd108 overflow;
(* adox   0x8(%rsp),%rbx                           #! EA = L0x7fffffffd110; Value = 0xed9e46034fa607ed; PC = 0x555555567bab *)
adcs overflow rbx rbx L0x7fffffffd110 overflow;
(* mov    %rbp,0x18(%rsp)                          #! EA = L0x7fffffffd120; PC = 0x555555567bb3 *)
mov L0x7fffffffd120 rbp;
(* mulx   0x58(%rsi),%rax,%rbp                     #! EA = L0x7fffffffd1b8; Value = 0xe6a2c2c174741f1a; PC = 0x555555567bb8 *)
mull rbp rax L0x7fffffffd1b8 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555567bbe *)
adcs carry rbx rbx rax carry;
(* adox   0x10(%rsp),%rbp                          #! EA = L0x7fffffffd118; Value = 0xf915cb89e289d948; PC = 0x555555567bc4 *)
adcs overflow rbp rbp L0x7fffffffd118 overflow;
(* mov    %rbx,(%rsp)                              #! EA = L0x7fffffffd108; PC = 0x555555567bcc *)
mov L0x7fffffffd108 rbx;
(* mulx   0x60(%rsi),%rax,%rbx                     #! EA = L0x7fffffffd1c0; Value = 0x50dc1fed244e0483; PC = 0x555555567bd0 *)
mull rbx rax L0x7fffffffd1c0 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555567bd6 *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r15                                #! PC = 0x555555567bdc *)
adcs overflow r15 r15 rbx overflow;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0x7fffffffd110; PC = 0x555555567be2 *)
mov L0x7fffffffd110 rbp;
(* mulx   0x68(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1c8; Value = 0x2df30ae6cb8428f3; PC = 0x555555567be7 *)
mull rbx rbp L0x7fffffffd1c8 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555567bed *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555567bf3 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x70(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1d0; Value = 0x411a323935efff43; PC = 0x555555567bf9 *)
mull rbx rbp L0x7fffffffd1d0 rdx;
(* mov    %r15,0x10(%rsp)                          #! EA = L0x7fffffffd118; PC = 0x555555567bff *)
mov L0x7fffffffd118 r15;
(* adcx   %rbp,%r8                                 #! PC = 0x555555567c04 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555567c0a *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x78(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1d8; Value = 0x4b9b64a0c1d549e1; PC = 0x555555567c10 *)
mull rbx rbp L0x7fffffffd1d8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555567c16 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555567c1c *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x80(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1e0; Value = 0x684f51b32769ebae; PC = 0x555555567c22 *)
mull rbx rbp L0x7fffffffd1e0 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555567c2b *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555567c31 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x88(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1e8; Value = 0x89da8bb22e77b58a; PC = 0x555555567c37 *)
mull rbx rbp L0x7fffffffd1e8 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555567c40 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555567c46 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x90(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1f0; Value = 0xdd3b0a790a7ac77a; PC = 0x555555567c4c *)
mull rbx rbp L0x7fffffffd1f0 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555567c55 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555567c5b *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x98(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1f8; Value = 0x0000000a93f1c334; PC = 0x555555567c61 *)
mull rbx rbp L0x7fffffffd1f8 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555567c6a *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555567c70 *)
adcs overflow r14 r14 rbx overflow;
(* adc    $0x0,%r14                                #! PC = 0x555555567c76 *)
adcs carry r14 r14 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rsp),%rdx                          #! EA = L0x7fffffffd120; Value = 0xc931cadd5a0b61e1; PC = 0x555555567c7a *)
mov rdx L0x7fffffffd120;
(* mulx   0x58f8(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x555555567c7f *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555567c88 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r8                                 #! PC = 0x555555567c8b *)
adcs overflow r8 r8 rbp overflow;
(* adox   %rbx,%r9                                 #! PC = 0x555555567c91 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x58e8(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x555555567c97 *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555567ca0 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555567ca6 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x58db(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x555555567cac *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555567cb5 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555567cbb *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x58ce(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x555555567cc1 *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555567cca *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555567cd0 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x58c1(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x555555567cd6 *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555567cdf *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555567ce5 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x58b4(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x555555567ceb *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555567cf4 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555567cfa *)
adcs overflow r14 r14 rbx overflow;
(* adc    $0x0,%r14                                #! PC = 0x555555567d00 *)
adcs carry r14 r14 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x28(%rsi),%rdx                          #! EA = L0x7fffffffd188; Value = 0xc4c282fdc65a71db; PC = 0x555555567d04 *)
mov rdx L0x7fffffffd188;
(* mulx   0x50(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1b0; Value = 0xee606efb82e9097d; PC = 0x555555567d08 *)
mull rbx rbp L0x7fffffffd1b0 rdx;
(* xor    %r15,%r15                                #! PC = 0x555555567d0e *)
mov r15 0@uint64;
clear carry;
clear overflow;
(* adox   (%rsp),%rbp                              #! EA = L0x7fffffffd108; Value = 0xe12f6f932726c3a0; PC = 0x555555567d11 *)
adcs overflow rbp rbp L0x7fffffffd108 overflow;
(* adox   0x8(%rsp),%rbx                           #! EA = L0x7fffffffd110; Value = 0xe93d5e63e07fb87b; PC = 0x555555567d18 *)
adcs overflow rbx rbx L0x7fffffffd110 overflow;
(* mov    %rbp,0x18(%rsp)                          #! EA = L0x7fffffffd120; PC = 0x555555567d20 *)
mov L0x7fffffffd120 rbp;
(* mulx   0x58(%rsi),%rax,%rbp                     #! EA = L0x7fffffffd1b8; Value = 0xe6a2c2c174741f1a; PC = 0x555555567d25 *)
mull rbp rax L0x7fffffffd1b8 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555567d2b *)
adcs carry rbx rbx rax carry;
(* adox   0x10(%rsp),%rbp                          #! EA = L0x7fffffffd118; Value = 0x486d812b4788e59a; PC = 0x555555567d31 *)
adcs overflow rbp rbp L0x7fffffffd118 overflow;
(* mov    %rbx,(%rsp)                              #! EA = L0x7fffffffd108; PC = 0x555555567d39 *)
mov L0x7fffffffd108 rbx;
(* mulx   0x60(%rsi),%rax,%rbx                     #! EA = L0x7fffffffd1c0; Value = 0x50dc1fed244e0483; PC = 0x555555567d3d *)
mull rbx rax L0x7fffffffd1c0 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555567d43 *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555567d49 *)
adcs overflow r8 r8 rbx overflow;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0x7fffffffd110; PC = 0x555555567d4f *)
mov L0x7fffffffd110 rbp;
(* mulx   0x68(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1c8; Value = 0x2df30ae6cb8428f3; PC = 0x555555567d54 *)
mull rbx rbp L0x7fffffffd1c8 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555567d5a *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555567d60 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x70(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1d0; Value = 0x411a323935efff43; PC = 0x555555567d66 *)
mull rbx rbp L0x7fffffffd1d0 rdx;
(* mov    %r8,0x10(%rsp)                           #! EA = L0x7fffffffd118; PC = 0x555555567d6c *)
mov L0x7fffffffd118 r8;
(* adcx   %rbp,%r9                                 #! PC = 0x555555567d71 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555567d77 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x78(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1d8; Value = 0x4b9b64a0c1d549e1; PC = 0x555555567d7d *)
mull rbx rbp L0x7fffffffd1d8 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555567d83 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555567d89 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x80(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1e0; Value = 0x684f51b32769ebae; PC = 0x555555567d8f *)
mull rbx rbp L0x7fffffffd1e0 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555567d98 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555567d9e *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x88(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1e8; Value = 0x89da8bb22e77b58a; PC = 0x555555567da4 *)
mull rbx rbp L0x7fffffffd1e8 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555567dad *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555567db3 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x90(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1f0; Value = 0xdd3b0a790a7ac77a; PC = 0x555555567db9 *)
mull rbx rbp L0x7fffffffd1f0 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555567dc2 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555567dc8 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x98(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1f8; Value = 0x0000000a93f1c334; PC = 0x555555567dce *)
mull rbx rbp L0x7fffffffd1f8 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555567dd7 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555567ddd *)
adcs overflow r15 r15 rbx overflow;
(* adc    $0x0,%r15                                #! PC = 0x555555567de3 *)
adcs carry r15 r15 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rsp),%rdx                          #! EA = L0x7fffffffd120; Value = 0x8631835205a40e8f; PC = 0x555555567de7 *)
mov rdx L0x7fffffffd120;
(* mulx   0x578b(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x555555567dec *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555567df5 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r9                                 #! PC = 0x555555567df8 *)
adcs overflow r9 r9 rbp overflow;
(* adox   %rbx,%r10                                #! PC = 0x555555567dfe *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x577b(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x555555567e04 *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555567e0d *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555567e13 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x576e(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x555555567e19 *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555567e22 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555567e28 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x5761(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x555555567e2e *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555567e37 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555567e3d *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x5754(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x555555567e43 *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555567e4c *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555567e52 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x5747(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x555555567e58 *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555567e61 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555567e67 *)
adcs overflow r15 r15 rbx overflow;
(* adc    $0x0,%r15                                #! PC = 0x555555567e6d *)
adcs carry r15 r15 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x30(%rsi),%rdx                          #! EA = L0x7fffffffd190; Value = 0xd5b9c5ee141e7e76; PC = 0x555555567e71 *)
mov rdx L0x7fffffffd190;
(* mulx   0x50(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1b0; Value = 0xee606efb82e9097d; PC = 0x555555567e75 *)
mull rbx rbp L0x7fffffffd1b0 rdx;
(* xor    %r8,%r8                                  #! PC = 0x555555567e7b *)
mov r8 0@uint64;
clear carry;
clear overflow;
(* adox   (%rsp),%rbp                              #! EA = L0x7fffffffd108; Value = 0x65ff03e2bde4a263; PC = 0x555555567e7e *)
adcs overflow rbp rbp L0x7fffffffd108 overflow;
(* adox   0x8(%rsp),%rbx                           #! EA = L0x7fffffffd110; Value = 0x2a366ee8aa89d13c; PC = 0x555555567e85 *)
adcs overflow rbx rbx L0x7fffffffd110 overflow;
(* mov    %rbp,0x18(%rsp)                          #! EA = L0x7fffffffd120; PC = 0x555555567e8d *)
mov L0x7fffffffd120 rbp;
(* mulx   0x58(%rsi),%rax,%rbp                     #! EA = L0x7fffffffd1b8; Value = 0xe6a2c2c174741f1a; PC = 0x555555567e92 *)
mull rbp rax L0x7fffffffd1b8 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555567e98 *)
adcs carry rbx rbx rax carry;
(* adox   0x10(%rsp),%rbp                          #! EA = L0x7fffffffd118; Value = 0x4108de01ff5243e8; PC = 0x555555567e9e *)
adcs overflow rbp rbp L0x7fffffffd118 overflow;
(* mov    %rbx,(%rsp)                              #! EA = L0x7fffffffd108; PC = 0x555555567ea6 *)
mov L0x7fffffffd108 rbx;
(* mulx   0x60(%rsi),%rax,%rbx                     #! EA = L0x7fffffffd1c0; Value = 0x50dc1fed244e0483; PC = 0x555555567eaa *)
mull rbx rax L0x7fffffffd1c0 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555567eb0 *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555567eb6 *)
adcs overflow r9 r9 rbx overflow;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0x7fffffffd110; PC = 0x555555567ebc *)
mov L0x7fffffffd110 rbp;
(* mulx   0x68(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1c8; Value = 0x2df30ae6cb8428f3; PC = 0x555555567ec1 *)
mull rbx rbp L0x7fffffffd1c8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555567ec7 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555567ecd *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x70(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1d0; Value = 0x411a323935efff43; PC = 0x555555567ed3 *)
mull rbx rbp L0x7fffffffd1d0 rdx;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffd118; PC = 0x555555567ed9 *)
mov L0x7fffffffd118 r9;
(* adcx   %rbp,%r10                                #! PC = 0x555555567ede *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555567ee4 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x78(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1d8; Value = 0x4b9b64a0c1d549e1; PC = 0x555555567eea *)
mull rbx rbp L0x7fffffffd1d8 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555567ef0 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555567ef6 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x80(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1e0; Value = 0x684f51b32769ebae; PC = 0x555555567efc *)
mull rbx rbp L0x7fffffffd1e0 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555567f05 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555567f0b *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x88(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1e8; Value = 0x89da8bb22e77b58a; PC = 0x555555567f11 *)
mull rbx rbp L0x7fffffffd1e8 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555567f1a *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555567f20 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x90(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1f0; Value = 0xdd3b0a790a7ac77a; PC = 0x555555567f26 *)
mull rbx rbp L0x7fffffffd1f0 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555567f2f *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555567f35 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x98(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1f8; Value = 0x0000000a93f1c334; PC = 0x555555567f3b *)
mull rbx rbp L0x7fffffffd1f8 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555567f44 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555567f4a *)
adcs overflow r8 r8 rbx overflow;
(* adc    $0x0,%r8                                 #! PC = 0x555555567f50 *)
adcs carry r8 r8 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rsp),%rdx                          #! EA = L0x7fffffffd120; Value = 0x4a0e8582a8a08801; PC = 0x555555567f54 *)
mov rdx L0x7fffffffd120;
(* mulx   0x561e(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x555555567f59 *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555567f62 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r10                                #! PC = 0x555555567f65 *)
adcs overflow r10 r10 rbp overflow;
(* adox   %rbx,%r11                                #! PC = 0x555555567f6b *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x560e(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x555555567f71 *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555567f7a *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555567f80 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x5601(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x555555567f86 *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555567f8f *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555567f95 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x55f4(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x555555567f9b *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555567fa4 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555567faa *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x55e7(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x555555567fb0 *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555567fb9 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555567fbf *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x55da(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x555555567fc5 *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555567fce *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555567fd4 *)
adcs overflow r8 r8 rbx overflow;
(* adc    $0x0,%r8                                 #! PC = 0x555555567fda *)
adcs carry r8 r8 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x38(%rsi),%rdx                          #! EA = L0x7fffffffd198; Value = 0x921178de2e04748c; PC = 0x555555567fde *)
mov rdx L0x7fffffffd198;
(* mulx   0x50(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1b0; Value = 0xee606efb82e9097d; PC = 0x555555567fe2 *)
mull rbx rbp L0x7fffffffd1b0 rdx;
(* xor    %r9,%r9                                  #! PC = 0x555555567fe8 *)
mov r9 0@uint64;
clear carry;
clear overflow;
(* adox   (%rsp),%rbp                              #! EA = L0x7fffffffd108; Value = 0x078d47f089e319d0; PC = 0x555555567feb *)
adcs overflow rbp rbp L0x7fffffffd108 overflow;
(* adox   0x8(%rsp),%rbx                           #! EA = L0x7fffffffd110; Value = 0xef0f717355dcb6c6; PC = 0x555555567ff2 *)
adcs overflow rbx rbx L0x7fffffffd110 overflow;
(* mov    %rbp,0x18(%rsp)                          #! EA = L0x7fffffffd120; PC = 0x555555567ffa *)
mov L0x7fffffffd120 rbp;
(* mulx   0x58(%rsi),%rax,%rbp                     #! EA = L0x7fffffffd1b8; Value = 0xe6a2c2c174741f1a; PC = 0x555555567fff *)
mull rbp rax L0x7fffffffd1b8 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555568005 *)
adcs carry rbx rbx rax carry;
(* adox   0x10(%rsp),%rbp                          #! EA = L0x7fffffffd118; Value = 0xae6ee12024586559; PC = 0x55555556800b *)
adcs overflow rbp rbp L0x7fffffffd118 overflow;
(* mov    %rbx,(%rsp)                              #! EA = L0x7fffffffd108; PC = 0x555555568013 *)
mov L0x7fffffffd108 rbx;
(* mulx   0x60(%rsi),%rax,%rbx                     #! EA = L0x7fffffffd1c0; Value = 0x50dc1fed244e0483; PC = 0x555555568017 *)
mull rbx rax L0x7fffffffd1c0 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x55555556801d *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r10                                #! PC = 0x555555568023 *)
adcs overflow r10 r10 rbx overflow;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0x7fffffffd110; PC = 0x555555568029 *)
mov L0x7fffffffd110 rbp;
(* mulx   0x68(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1c8; Value = 0x2df30ae6cb8428f3; PC = 0x55555556802e *)
mull rbx rbp L0x7fffffffd1c8 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555568034 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x55555556803a *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x70(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1d0; Value = 0x411a323935efff43; PC = 0x555555568040 *)
mull rbx rbp L0x7fffffffd1d0 rdx;
(* mov    %r10,0x10(%rsp)                          #! EA = L0x7fffffffd118; PC = 0x555555568046 *)
mov L0x7fffffffd118 r10;
(* adcx   %rbp,%r11                                #! PC = 0x55555556804b *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555568051 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x78(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1d8; Value = 0x4b9b64a0c1d549e1; PC = 0x555555568057 *)
mull rbx rbp L0x7fffffffd1d8 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x55555556805d *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555568063 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x80(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1e0; Value = 0x684f51b32769ebae; PC = 0x555555568069 *)
mull rbx rbp L0x7fffffffd1e0 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555568072 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555568078 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x88(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1e8; Value = 0x89da8bb22e77b58a; PC = 0x55555556807e *)
mull rbx rbp L0x7fffffffd1e8 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555568087 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x55555556808d *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x90(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1f0; Value = 0xdd3b0a790a7ac77a; PC = 0x555555568093 *)
mull rbx rbp L0x7fffffffd1f0 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x55555556809c *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555680a2 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x98(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1f8; Value = 0x0000000a93f1c334; PC = 0x5555555680a8 *)
mull rbx rbp L0x7fffffffd1f8 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x5555555680b1 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555680b7 *)
adcs overflow r9 r9 rbx overflow;
(* adc    $0x0,%r9                                 #! PC = 0x5555555680bd *)
adcs carry r9 r9 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rsp),%rdx                          #! EA = L0x7fffffffd120; Value = 0xb1ddae8c5594ee2c; PC = 0x5555555680c1 *)
mov rdx L0x7fffffffd120;
(* mulx   0x54b1(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x5555555680c6 *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555680cf *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r11                                #! PC = 0x5555555680d2 *)
adcs overflow r11 r11 rbp overflow;
(* adox   %rbx,%r12                                #! PC = 0x5555555680d8 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x54a1(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x5555555680de *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x5555555680e7 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555680ed *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x5494(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x5555555680f3 *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x5555555680fc *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555568102 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x5487(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x555555568108 *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555568111 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555568117 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x547a(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x55555556811d *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555568126 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x55555556812c *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x546d(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x555555568132 *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x55555556813b *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555568141 *)
adcs overflow r9 r9 rbx overflow;
(* adc    $0x0,%r9                                 #! PC = 0x555555568147 *)
adcs carry r9 r9 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x40(%rsi),%rdx                          #! EA = L0x7fffffffd1a0; Value = 0x31858009e0808709; PC = 0x55555556814b *)
mov rdx L0x7fffffffd1a0;
(* mulx   0x50(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1b0; Value = 0xee606efb82e9097d; PC = 0x55555556814f *)
mull rbx rbp L0x7fffffffd1b0 rdx;
(* xor    %r10,%r10                                #! PC = 0x555555568155 *)
mov r10 0@uint64;
clear carry;
clear overflow;
(* adox   (%rsp),%rbp                              #! EA = L0x7fffffffd108; Value = 0x7648b835b1b9b752; PC = 0x555555568158 *)
adcs overflow rbp rbp L0x7fffffffd108 overflow;
(* adox   0x8(%rsp),%rbx                           #! EA = L0x7fffffffd110; Value = 0x559343aaae420354; PC = 0x55555556815f *)
adcs overflow rbx rbx L0x7fffffffd110 overflow;
(* mov    %rbp,0x18(%rsp)                          #! EA = L0x7fffffffd120; PC = 0x555555568167 *)
mov L0x7fffffffd120 rbp;
(* mulx   0x58(%rsi),%rax,%rbp                     #! EA = L0x7fffffffd1b8; Value = 0xe6a2c2c174741f1a; PC = 0x55555556816c *)
mull rbp rax L0x7fffffffd1b8 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555568172 *)
adcs carry rbx rbx rax carry;
(* adox   0x10(%rsp),%rbp                          #! EA = L0x7fffffffd118; Value = 0xace0d8210c5918ca; PC = 0x555555568178 *)
adcs overflow rbp rbp L0x7fffffffd118 overflow;
(* mov    %rbx,(%rsp)                              #! EA = L0x7fffffffd108; PC = 0x555555568180 *)
mov L0x7fffffffd108 rbx;
(* mulx   0x60(%rsi),%rax,%rbx                     #! EA = L0x7fffffffd1c0; Value = 0x50dc1fed244e0483; PC = 0x555555568184 *)
mull rbx rax L0x7fffffffd1c0 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x55555556818a *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r11                                #! PC = 0x555555568190 *)
adcs overflow r11 r11 rbx overflow;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0x7fffffffd110; PC = 0x555555568196 *)
mov L0x7fffffffd110 rbp;
(* mulx   0x68(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1c8; Value = 0x2df30ae6cb8428f3; PC = 0x55555556819b *)
mull rbx rbp L0x7fffffffd1c8 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x5555555681a1 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555681a7 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x70(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1d0; Value = 0x411a323935efff43; PC = 0x5555555681ad *)
mull rbx rbp L0x7fffffffd1d0 rdx;
(* mov    %r11,0x10(%rsp)                          #! EA = L0x7fffffffd118; PC = 0x5555555681b3 *)
mov L0x7fffffffd118 r11;
(* adcx   %rbp,%r12                                #! PC = 0x5555555681b8 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555681be *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x78(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1d8; Value = 0x4b9b64a0c1d549e1; PC = 0x5555555681c4 *)
mull rbx rbp L0x7fffffffd1d8 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x5555555681ca *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x5555555681d0 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x80(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1e0; Value = 0x684f51b32769ebae; PC = 0x5555555681d6 *)
mull rbx rbp L0x7fffffffd1e0 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x5555555681df *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x5555555681e5 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x88(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1e8; Value = 0x89da8bb22e77b58a; PC = 0x5555555681eb *)
mull rbx rbp L0x7fffffffd1e8 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x5555555681f4 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555681fa *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x90(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1f0; Value = 0xdd3b0a790a7ac77a; PC = 0x555555568200 *)
mull rbx rbp L0x7fffffffd1f0 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555568209 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x55555556820f *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x98(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1f8; Value = 0x0000000a93f1c334; PC = 0x555555568215 *)
mull rbx rbp L0x7fffffffd1f8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x55555556821e *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555568224 *)
adcs overflow r10 r10 rbx overflow;
(* adc    $0x0,%r10                                #! PC = 0x55555556822a *)
adcs carry r10 r10 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rsp),%rdx                          #! EA = L0x7fffffffd120; Value = 0x3c61734d4e6bf7b7; PC = 0x55555556822e *)
mov rdx L0x7fffffffd120;
(* mulx   0x5344(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x555555568233 *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x55555556823c *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r12                                #! PC = 0x55555556823f *)
adcs overflow r12 r12 rbp overflow;
(* adox   %rbx,%r13                                #! PC = 0x555555568245 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x5334(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x55555556824b *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555568254 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x55555556825a *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x5327(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x555555568260 *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555568269 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x55555556826f *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x531a(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x555555568275 *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x55555556827e *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555568284 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x530d(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x55555556828a *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555568293 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555568299 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x5300(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x55555556829f *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x5555555682a8 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555682ae *)
adcs overflow r10 r10 rbx overflow;
(* adc    $0x0,%r10                                #! PC = 0x5555555682b4 *)
adcs carry r10 r10 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x48(%rsi),%rdx                          #! EA = L0x7fffffffd1a8; Value = 0x000000039fb65874; PC = 0x5555555682b8 *)
mov rdx L0x7fffffffd1a8;
(* mulx   0x50(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1b0; Value = 0xee606efb82e9097d; PC = 0x5555555682bc *)
mull rbx rbp L0x7fffffffd1b0 rdx;
(* xor    %r11,%r11                                #! PC = 0x5555555682c2 *)
mov r11 0@uint64;
clear carry;
clear overflow;
(* adox   (%rsp),%rbp                              #! EA = L0x7fffffffd108; Value = 0x64e0d2a28665267e; PC = 0x5555555682c5 *)
adcs overflow rbp rbp L0x7fffffffd108 overflow;
(* adox   0x8(%rsp),%rbx                           #! EA = L0x7fffffffd110; Value = 0xf076865cd61fd927; PC = 0x5555555682cc *)
adcs overflow rbx rbx L0x7fffffffd110 overflow;
(* mov    %rbp,0x18(%rsp)                          #! EA = L0x7fffffffd120; PC = 0x5555555682d4 *)
mov L0x7fffffffd120 rbp;
(* mulx   0x58(%rsi),%rax,%rbp                     #! EA = L0x7fffffffd1b8; Value = 0xe6a2c2c174741f1a; PC = 0x5555555682d9 *)
mull rbp rax L0x7fffffffd1b8 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x5555555682df *)
adcs carry rbx rbx rax carry;
(* adox   0x10(%rsp),%rbp                          #! EA = L0x7fffffffd118; Value = 0x67c8c527ff0c87ed; PC = 0x5555555682e5 *)
adcs overflow rbp rbp L0x7fffffffd118 overflow;
(* mov    %rbx,(%rsi)                              #! EA = L0x7fffffffd160; PC = 0x5555555682ed *)
mov L0x7fffffffd160 rbx;
(* mulx   0x60(%rsi),%rax,%rbx                     #! EA = L0x7fffffffd1c0; Value = 0x50dc1fed244e0483; PC = 0x5555555682f0 *)
mull rbx rax L0x7fffffffd1c0 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x5555555682f6 *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555682fc *)
adcs overflow r12 r12 rbx overflow;
(* mov    %rbp,0x8(%rsi)                           #! EA = L0x7fffffffd168; PC = 0x555555568302 *)
mov L0x7fffffffd168 rbp;
(* mulx   0x68(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1c8; Value = 0x2df30ae6cb8428f3; PC = 0x555555568306 *)
mull rbx rbp L0x7fffffffd1c8 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x55555556830c *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555568312 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x70(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1d0; Value = 0x411a323935efff43; PC = 0x555555568318 *)
mull rbx rbp L0x7fffffffd1d0 rdx;
(* mov    %r12,0x10(%rsi)                          #! EA = L0x7fffffffd170; PC = 0x55555556831e *)
mov L0x7fffffffd170 r12;
(* adcx   %rbp,%r13                                #! PC = 0x555555568322 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555568328 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x78(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1d8; Value = 0x4b9b64a0c1d549e1; PC = 0x55555556832e *)
mull rbx rbp L0x7fffffffd1d8 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555568334 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x55555556833a *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x80(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1e0; Value = 0x684f51b32769ebae; PC = 0x555555568340 *)
mull rbx rbp L0x7fffffffd1e0 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555568349 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x55555556834f *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x88(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1e8; Value = 0x89da8bb22e77b58a; PC = 0x555555568355 *)
mull rbx rbp L0x7fffffffd1e8 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x55555556835e *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555568364 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x90(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1f0; Value = 0xdd3b0a790a7ac77a; PC = 0x55555556836a *)
mull rbx rbp L0x7fffffffd1f0 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555568373 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555568379 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x98(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd1f8; Value = 0x0000000a93f1c334; PC = 0x55555556837f *)
mull rbx rbp L0x7fffffffd1f8 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555568388 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x55555556838e *)
adcs overflow r11 r11 rbx overflow;
(* adc    $0x0,%r11                                #! PC = 0x555555568394 *)
adcs carry r11 r11 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rsp),%rdx                          #! EA = L0x7fffffffd120; Value = 0x34927ca2551e6b22; PC = 0x555555568398 *)
mov rdx L0x7fffffffd120;
(* mulx   0x51da(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x55555556839d *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555683a6 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r13                                #! PC = 0x5555555683a9 *)
adcs overflow r13 r13 rbp overflow;
(* adox   %rbx,%r14                                #! PC = 0x5555555683af *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x51ca(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x5555555683b5 *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x5555555683be *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x5555555683c4 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x51bd(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x5555555683ca *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x5555555683d3 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555683d9 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x51b0(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x5555555683df *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x5555555683e8 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555683ee *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x51a3(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x5555555683f4 *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x5555555683fd *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555568403 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x5196(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x555555568409 *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555568412 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555568418 *)
adcs overflow r11 r11 rbx overflow;
(* adc    $0x0,%r11                                #! PC = 0x55555556841e *)
adcs carry r11 r11 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r13,0x18(%rsi)                          #! EA = L0x7fffffffd178; PC = 0x555555568422 *)
mov L0x7fffffffd178 r13;
(* mov    %r14,0x20(%rsi)                          #! EA = L0x7fffffffd180; PC = 0x555555568426 *)
mov L0x7fffffffd180 r14;
(* mov    %r15,0x28(%rsi)                          #! EA = L0x7fffffffd188; PC = 0x55555556842a *)
mov L0x7fffffffd188 r15;
(* mov    %r8,0x30(%rsi)                           #! EA = L0x7fffffffd190; PC = 0x55555556842e *)
mov L0x7fffffffd190 r8;
(* mov    %r9,0x38(%rsi)                           #! EA = L0x7fffffffd198; PC = 0x555555568432 *)
mov L0x7fffffffd198 r9;
(* mov    %r10,0x40(%rsi)                          #! EA = L0x7fffffffd1a0; PC = 0x555555568436 *)
mov L0x7fffffffd1a0 r10;
(* mov    %r11,0x48(%rsi)                          #! EA = L0x7fffffffd1a8; PC = 0x55555556843a *)
mov L0x7fffffffd1a8 r11;
(* add    $0x20,%rsp                               #! PC = 0x55555556843e *)
adds carry rsp rsp 0x20@uint64;
(* #! <- SP = 0x7fffffffd158 *)
#! 0x7fffffffd158 = 0x7fffffffd158;
(* #retq                                           #! PC = 0x55555556844c *)
#retq                                           #! 0x55555556844c = 0x55555556844c;
(* mov    %rbp,%rdi                                #! PC = 0x5555555587e2 *)
mov rdi rbp;
(* #callq  0x5555555643e0 <fp2sqr610_c1_mont>      #! PC = 0x5555555587e5 *)
#callq  0x5555555643e0 <fp2sqr610_c1_mont>      #! 0x5555555587e5 = 0x5555555587e5;
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
(* vmovdqa64 (%rsp),%xmm0                          #! EA = L0x7fffffffd160; Value = 0x5f628d3e27c3ddbc; PC = 0x5555555587ea *)
mov xmm0_L L0x7fffffffd160;
mov xmm0_H L0x7fffffffd168;
(* vmovdqa64 0x10(%rsp),%xmm1                      #! EA = L0x7fffffffd170; Value = 0x90ce98859153ff3c; PC = 0x5555555587f1 *)
mov xmm1_L L0x7fffffffd170;
mov xmm1_H L0x7fffffffd178;
(* vmovdqa64 0x20(%rsp),%xmm2                      #! EA = L0x7fffffffd180; Value = 0x7bfb8d3358a38133; PC = 0x5555555587f9 *)
mov xmm2_L L0x7fffffffd180;
mov xmm2_H L0x7fffffffd188;
(* vmovdqa64 0x30(%rsp),%xmm3                      #! EA = L0x7fffffffd190; Value = 0x5376ddd41c91c281; PC = 0x555555558801 *)
mov xmm3_L L0x7fffffffd190;
mov xmm3_H L0x7fffffffd198;
(* vmovdqa64 0x40(%rsp),%xmm4                      #! EA = L0x7fffffffd1a0; Value = 0xc7cd747ca7e77db6; PC = 0x555555558809 *)
mov xmm4_L L0x7fffffffd1a0;
mov xmm4_H L0x7fffffffd1a8;
(* vmovups %xmm0,(%rbx)                            #! EA = L0x7fffffffd6e0; PC = 0x555555558811 *)
mov L0x7fffffffd6e0 xmm0_L;
mov L0x7fffffffd6e8 xmm0_H;
(* vmovups %xmm1,0x10(%rbx)                        #! EA = L0x7fffffffd6f0; PC = 0x555555558815 *)
mov L0x7fffffffd6f0 xmm1_L;
mov L0x7fffffffd6f8 xmm1_H;
(* vmovups %xmm2,0x20(%rbx)                        #! EA = L0x7fffffffd700; PC = 0x55555555881a *)
mov L0x7fffffffd700 xmm2_L;
mov L0x7fffffffd708 xmm2_H;
(* vmovups %xmm3,0x30(%rbx)                        #! EA = L0x7fffffffd710; PC = 0x55555555881f *)
mov L0x7fffffffd710 xmm3_L;
mov L0x7fffffffd718 xmm3_H;
(* vmovups %xmm4,0x40(%rbx)                        #! EA = L0x7fffffffd720; PC = 0x555555558824 *)
mov L0x7fffffffd720 xmm4_L;
mov L0x7fffffffd728 xmm4_H;
(* mov    0xa8(%rsp),%rax                          #! EA = L0x7fffffffd208; Value = 0x0a0736746fb29400; PC = 0x555555558829 *)
mov rax L0x7fffffffd208;
(* xor    %fs:0x28,%rax                            #! PC = 0x555555558831 *)
xor rax@uint64 rax fs0x28;
(* #jne    0x555555558846 <fp2sqr610_mont+150>     #! PC = 0x55555555883a *)
#jne    0x555555558846 <fp2sqr610_mont+150>     #! 0x55555555883a = 0x55555555883a;
(* add    $0xb8,%rsp                               #! PC = 0x55555555883c *)
adds carry rsp rsp 0xb8@uint64;
(* #! <- SP = 0x7fffffffd228 *)
#! 0x7fffffffd228 = 0x7fffffffd228;
(* #retq                                           #! PC = 0x555555558845 *)
#retq                                           #! 0x555555558845 = 0x555555558845;

(* ===== Outputs ===== *)

mov c00 L0x7fffffffd6e0;
mov c01 L0x7fffffffd6e8;
mov c02 L0x7fffffffd6f0;
mov c03 L0x7fffffffd6f8;
mov c04 L0x7fffffffd700;
mov c05 L0x7fffffffd708;
mov c06 L0x7fffffffd710;
mov c07 L0x7fffffffd718;
mov c08 L0x7fffffffd720;
mov c09 L0x7fffffffd728;

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

ghost i@uint64 : true && true;

{
  and [
    eqmod (2**640 * ((limbs 64 [ c00, c01, c02, c03, c04, c05, c06, c07, c08, c09 ]) + (limbs 64 [ c10, c11, c12, c13, c14, c15, c16, c17, c18, c19 ]) * i))
          (
            ((limbs 64 [ a00, a01, a02, a03, a04, a05, a06, a07, a08, a09 ]) + (limbs 64 [ a10, a11, a12, a13, a14, a15, a16, a17, a18, a19 ]) * i)
            *
            ((limbs 64 [ a00, a01, a02, a03, a04, a05, a06, a07, a08, a09 ]) + (limbs 64 [ a10, a11, a12, a13, a14, a15, a16, a17, a18, a19 ]) * i)
          )
          [i**2 + 1, limbs 64 [ $p610_0, $p610_1, $p610_2, $p610_3, $p610_4, $p610_5, $p610_6, $p610_7, $p610_8, $p610_9 ]],
    eqmod (2**640 * (limbs 64 [ c00, c01, c02, c03, c04, c05, c06, c07, c08, c09 ]))
          (
            ( (limbs 64 [ a00, a01, a02, a03, a04, a05, a06, a07, a08, a09 ])
              +
              (limbs 64 [ a10, a11, a12, a13, a14, a15, a16, a17, a18, a19 ]) )
            *
            ( (limbs 64 [ a00, a01, a02, a03, a04, a05, a06, a07, a08, a09 ])
              -
              (limbs 64 [ a10, a11, a12, a13, a14, a15, a16, a17, a18, a19 ]) )
          )
          (limbs 64 [ $p610_0, $p610_1, $p610_2, $p610_3, $p610_4, $p610_5, $p610_6, $p610_7, $p610_8, $p610_9 ]),
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
    limbs 64 [ c00, c01, c02, c03, c04, c05, c06, c07, c08, c09 ] <=u
        (2@640 * limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64,
                            $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ] - 1@640),
    limbs 64 [ c10, c11, c12, c13, c14, c15, c16, c17, c18, c19 ] <=u
        (2@640 * limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64,
                            $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ] - 1@640)
  ]
}
