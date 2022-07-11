(* on frege: -v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint fpadd610.cl
Parsing Cryptoline file:		[OK]		0.003065 seconds
Checking well-formedness:		[OK]		0.000693 seconds
Transforming to SSA form:		[OK]		0.000321 seconds
Normalizing specification:		[OK]		0.000337 seconds
Rewriting assignments:			[OK]		0.000452 seconds
Verifying program safety:
	 Cut 0
	     Round 1 (2 safety conditions, timeout = 14400 seconds)
		 Safety condition #1	[OK]
		 Safety condition #0	[OK]
	 Overall			[OK]		0.237645 seconds
Verifying range specification:		[OK]		16.239116 seconds
Rewriting value-preserved casting:	[OK]		0.000062 seconds
Verifying algebraic specification:	[OK]		0.000330 seconds
Verification result:			[OK]		16.482684 seconds
*)


(*
const uint64_t p610[NWORDS64_FIELD]              = { 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0x6E01FFFFFFFFFFFF,
                                                     0xB1784DE8AA5AB02E, 0x9AE7BF45048FF9AB, 0xB255B2FA10C4252A, 0x819010C251E7D88C, 0x000000027BF6A768 };
const uint64_t p610x2[NWORDS64_FIELD]            = { 0xFFFFFFFFFFFFFFFE, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xDC03FFFFFFFFFFFF,
                                                     0x62F09BD154B5605C, 0x35CF7E8A091FF357, 0x64AB65F421884A55, 0x03202184A3CFB119, 0x00000004F7ED4ED1 };
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

const p610x2_0 = 0xFFFFFFFFFFFFFFFE
const p610x2_1 = 0xFFFFFFFFFFFFFFFF
const p610x2_2 = 0xFFFFFFFFFFFFFFFF
const p610x2_3 = 0xFFFFFFFFFFFFFFFF
const p610x2_4 = 0xDC03FFFFFFFFFFFF
const p610x2_5 = 0x62F09BD154B5605C
const p610x2_6 = 0x35CF7E8A091FF357
const p610x2_7 = 0x64AB65F421884A55
const p610x2_8 = 0x03202184A3CFB119
const p610x2_9 = 0x00000004F7ED4ED1

proc main (a0@uint64, a1@uint64, a2@uint64, a3@uint64, a4@uint64, a5@uint64, a6@uint64, a7@uint64, a8@uint64, a9@uint64,
           b0@uint64, b1@uint64, b2@uint64, b3@uint64, b4@uint64, b5@uint64, b6@uint64, b7@uint64, b8@uint64, b9@uint64) =
{
  true
  &&
  and [
    limbs 64 [ a0, a1, a2, a3, a4, a5, a6, a7, a8, a9 ] <=u
      (2@640 * limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64,
                          $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ] - 1@640),
    limbs 64 [ b0, b1, b2, b3, b4, b5, b6, b7, b8, b9 ] <=u
      (2@640 * limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64,
                          $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ] - 1@640)
  ]
}

(* ===== Initialization ===== *)

mov L0x7fffffffd650 a0;
mov L0x7fffffffd658 a1;
mov L0x7fffffffd660 a2;
mov L0x7fffffffd668 a3;
mov L0x7fffffffd670 a4;
mov L0x7fffffffd678 a5;
mov L0x7fffffffd680 a6;
mov L0x7fffffffd688 a7;
mov L0x7fffffffd690 a8;
mov L0x7fffffffd698 a9;

mov L0x7fffffffd6a0 b0;
mov L0x7fffffffd6a8 b1;
mov L0x7fffffffd6b0 b2;
mov L0x7fffffffd6b8 b3;
mov L0x7fffffffd6c0 b4;
mov L0x7fffffffd6c8 b5;
mov L0x7fffffffd6d0 b6;
mov L0x7fffffffd6d8 b7;
mov L0x7fffffffd6e0 b8;
mov L0x7fffffffd6e8 b9;

mov L0x55555556d680 $p610x2_0@uint64;
mov L0x55555556d688 $p610x2_1@uint64;
mov L0x55555556d6a0 $p610x2_4@uint64;
mov L0x55555556d6a8 $p610x2_5@uint64;
mov L0x55555556d6b0 $p610x2_6@uint64;
mov L0x55555556d6b8 $p610x2_7@uint64;
mov L0x55555556d6c0 $p610x2_8@uint64;
mov L0x55555556d6c8 $p610x2_9@uint64;

(* ===== Program ===== *)

(* #! -> SP = 0x7fffffffd5f8 *)
#! 0x7fffffffd5f8 = 0x7fffffffd5f8;
(* #jmpq   0x55555556446f <fpadd610_asm>           #! PC = 0x555555563c94 *)
#jmpq   0x55555556446f <fpadd610_asm>           #! 0x555555563c94 = 0x555555563c94;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffd650; Value = 0xec4aff517369c668; PC = 0x555555564477 *)
mov r8 L0x7fffffffd650;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffd658; Value = 0x46e3fbf2abbacd29; PC = 0x55555556447a *)
mov r9 L0x7fffffffd658;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffd660; Value = 0x8de7e81bf854c27c; PC = 0x55555556447e *)
mov r10 L0x7fffffffd660;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffd668; Value = 0x9ac99f33632e5a76; PC = 0x555555564482 *)
mov r11 L0x7fffffffd668;
(* mov    0x20(%rdi),%r12                          #! EA = L0x7fffffffd670; Value = 0xeca15831b70d3266; PC = 0x555555564486 *)
mov r12 L0x7fffffffd670;
(* mov    0x28(%rdi),%r13                          #! EA = L0x7fffffffd678; Value = 0x22e69b6f6caaacf6; PC = 0x55555556448a *)
mov r13 L0x7fffffffd678;
(* mov    0x30(%rdi),%r14                          #! EA = L0x7fffffffd680; Value = 0x766cf556c23db900; PC = 0x55555556448e *)
mov r14 L0x7fffffffd680;
(* mov    0x38(%rdi),%r15                          #! EA = L0x7fffffffd688; Value = 0xd5868a2730b05ce3; PC = 0x555555564492 *)
mov r15 L0x7fffffffd688;
(* mov    0x40(%rdi),%rcx                          #! EA = L0x7fffffffd690; Value = 0xe66cd07f4f5710e3; PC = 0x555555564496 *)
mov rcx L0x7fffffffd690;
(* mov    0x48(%rdi),%rdi                          #! EA = L0x7fffffffd698; Value = 0x000000001b8759d5; PC = 0x55555556449a *)
mov rdi L0x7fffffffd698;
(* add    (%rsi),%r8                               #! EA = L0x7fffffffd6a0; Value = 0xfb3bb0ec2a5c3890; PC = 0x55555556449e *)
adds carry r8 r8 L0x7fffffffd6a0;
(* adc    0x8(%rsi),%r9                            #! EA = L0x7fffffffd6a8; Value = 0x5cdb18ec543caf32; PC = 0x5555555644a1 *)
adcs carry r9 r9 L0x7fffffffd6a8 carry;
(* adc    0x10(%rsi),%r10                          #! EA = L0x7fffffffd6b0; Value = 0x3aaafafb43fe1a02; PC = 0x5555555644a5 *)
adcs carry r10 r10 L0x7fffffffd6b0 carry;
(* adc    0x18(%rsi),%r11                          #! EA = L0x7fffffffd6b8; Value = 0x947c3c05e6d129fb; PC = 0x5555555644a9 *)
adcs carry r11 r11 L0x7fffffffd6b8 carry;
(* adc    0x20(%rsi),%r12                          #! EA = L0x7fffffffd6c0; Value = 0x4d5af98961bed875; PC = 0x5555555644ad *)
adcs carry r12 r12 L0x7fffffffd6c0 carry;
(* adc    0x28(%rsi),%r13                          #! EA = L0x7fffffffd6c8; Value = 0x02799dc8eab4e97a; PC = 0x5555555644b1 *)
adcs carry r13 r13 L0x7fffffffd6c8 carry;
(* adc    0x30(%rsi),%r14                          #! EA = L0x7fffffffd6d0; Value = 0x4a52e2a3fc67f55a; PC = 0x5555555644b5 *)
adcs carry r14 r14 L0x7fffffffd6d0 carry;
(* adc    0x38(%rsi),%r15                          #! EA = L0x7fffffffd6d8; Value = 0x0b0e944ec006e6a0; PC = 0x5555555644b9 *)
adcs carry r15 r15 L0x7fffffffd6d8 carry;
(* adc    0x40(%rsi),%rcx                          #! EA = L0x7fffffffd6e0; Value = 0x43d46a5a56364a93; PC = 0x5555555644bd *)
adcs carry rcx rcx L0x7fffffffd6e0 carry;
(* adc    0x48(%rsi),%rdi                          #! EA = L0x7fffffffd6e8; Value = 0x000000004963cbac; PC = 0x5555555644c1 *)
adcs carry rdi rdi L0x7fffffffd6e8 carry;
(* mov    0x91b4(%rip),%rax        # 0x55555556d680 <p610x2>#! EA = L0x55555556d680; Value = 0xfffffffffffffffe; PC = 0x5555555644c5 *)
mov rax L0x55555556d680;
(* sub    %rax,%r8                                 #! PC = 0x5555555644cc *)
subb carry r8 r8 rax;
(* mov    0x91b2(%rip),%rax        # 0x55555556d688 <p610x2+8>#! EA = L0x55555556d688; Value = 0xffffffffffffffff; PC = 0x5555555644cf *)
mov rax L0x55555556d688;
(* sbb    %rax,%r9                                 #! PC = 0x5555555644d6 *)
sbbs carry r9 r9 rax carry;
(* sbb    %rax,%r10                                #! PC = 0x5555555644d9 *)
sbbs carry r10 r10 rax carry;
(* sbb    %rax,%r11                                #! PC = 0x5555555644dc *)
sbbs carry r11 r11 rax carry;
(* mov    0x91ba(%rip),%rax        # 0x55555556d6a0 <p610x2+32>#! EA = L0x55555556d6a0; Value = 0xdc03ffffffffffff; PC = 0x5555555644df *)
mov rax L0x55555556d6a0;
(* sbb    %rax,%r12                                #! PC = 0x5555555644e6 *)
sbbs carry r12 r12 rax carry;
(* mov    0x91b8(%rip),%rax        # 0x55555556d6a8 <p610x2+40>#! EA = L0x55555556d6a8; Value = 0x62f09bd154b5605c; PC = 0x5555555644e9 *)
mov rax L0x55555556d6a8;
(* sbb    %rax,%r13                                #! PC = 0x5555555644f0 *)
sbbs carry r13 r13 rax carry;
(* mov    0x91b6(%rip),%rax        # 0x55555556d6b0 <p610x2+48>#! EA = L0x55555556d6b0; Value = 0x35cf7e8a091ff357; PC = 0x5555555644f3 *)
mov rax L0x55555556d6b0;
(* sbb    %rax,%r14                                #! PC = 0x5555555644fa *)
sbbs carry r14 r14 rax carry;
(* mov    0x91b4(%rip),%rax        # 0x55555556d6b8 <p610x2+56>#! EA = L0x55555556d6b8; Value = 0x64ab65f421884a55; PC = 0x5555555644fd *)
mov rax L0x55555556d6b8;
(* sbb    %rax,%r15                                #! PC = 0x555555564504 *)
sbbs carry r15 r15 rax carry;
(* mov    0x91b2(%rip),%rax        # 0x55555556d6c0 <p610x2+64>#! EA = L0x55555556d6c0; Value = 0x03202184a3cfb119; PC = 0x555555564507 *)
mov rax L0x55555556d6c0;
(* sbb    %rax,%rcx                                #! PC = 0x55555556450e *)
sbbs carry rcx rcx rax carry;
(* mov    0x91b0(%rip),%rax        # 0x55555556d6c8 <p610x2+72>#! EA = L0x55555556d6c8; Value = 0x00000004f7ed4ed1; PC = 0x555555564511 *)
mov rax L0x55555556d6c8;
(* sbb    %rax,%rdi                                #! PC = 0x555555564518 *)
sbbs carry rdi rdi rax carry;
(* mov    %rcx,0x40(%rdx)                          #! EA = L0x7fffffffd780; PC = 0x55555556451b *)
mov L0x7fffffffd780 rcx;
(* mov    %rdi,0x48(%rdx)                          #! EA = L0x7fffffffd788; PC = 0x55555556451f *)
mov L0x7fffffffd788 rdi;
(* mov    $0x0,%rax                                #! PC = 0x555555564523 *)
mov rax 0x0@uint64;
(* sbb    $0x0,%rax                                #! PC = 0x55555556452a *)
sbbs carry rax rax 0x0@uint64 carry;
(* mov    0x914b(%rip),%rsi        # 0x55555556d680 <p610x2>#! EA = L0x55555556d680; Value = 0xfffffffffffffffe; PC = 0x55555556452e *)
mov rsi L0x55555556d680;
(* and    %rax,%rsi                                #! PC = 0x555555564535 *)
and uint64 rsi rax rsi;
(* mov    0x9149(%rip),%rdi        # 0x55555556d688 <p610x2+8>#! EA = L0x55555556d688; Value = 0xffffffffffffffff; PC = 0x555555564538 *)
mov rdi L0x55555556d688;
(* and    %rax,%rdi                                #! PC = 0x55555556453f *)
and uint64 rdi rax rdi;
(* add    %rsi,%r8                                 #! PC = 0x555555564542 *)
adds carry r8 r8 rsi;
(* adc    %rdi,%r9                                 #! PC = 0x555555564545 *)
adcs carry r9 r9 rdi@uint64 carry;
(* adc    %rdi,%r10                                #! PC = 0x555555564548 *)
adcs carry r10 r10 rdi@uint64 carry;
(* adc    %rdi,%r11                                #! PC = 0x55555556454b *)
adcs carry r11 r11 rdi@uint64 carry;
(* mov    %r8,(%rdx)                               #! EA = L0x7fffffffd740; PC = 0x55555556454e *)
mov L0x7fffffffd740 r8;
(* mov    %r9,0x8(%rdx)                            #! EA = L0x7fffffffd748; PC = 0x555555564551 *)
mov L0x7fffffffd748 r9;
(* mov    %r10,0x10(%rdx)                          #! EA = L0x7fffffffd750; PC = 0x555555564555 *)
mov L0x7fffffffd750 r10;
(* mov    %r11,0x18(%rdx)                          #! EA = L0x7fffffffd758; PC = 0x555555564559 *)
mov L0x7fffffffd758 r11;
(* setb   %cl                                      #! PC = 0x55555556455d *)
and uint64 rcx rcx 0xFFFFFFFFFFFFFF00@uint64;
adc rcx rcx 0@uint64 carry;
(* mov    0x9139(%rip),%rdi        # 0x55555556d6a0 <p610x2+32>#! EA = L0x55555556d6a0; Value = 0xdc03ffffffffffff; PC = 0x555555564560 *)
mov rdi L0x55555556d6a0;
(* and    %rax,%rdi                                #! PC = 0x555555564567 *)
and uint64 rdi rax rdi;
(* mov    0x9137(%rip),%rsi        # 0x55555556d6a8 <p610x2+40>#! EA = L0x55555556d6a8; Value = 0x62f09bd154b5605c; PC = 0x55555556456a *)
mov rsi L0x55555556d6a8;
(* and    %rax,%rsi                                #! PC = 0x555555564571 *)
and uint64 rsi rax rsi;
(* mov    0x9135(%rip),%r8        # 0x55555556d6b0 <p610x2+48>#! EA = L0x55555556d6b0; Value = 0x35cf7e8a091ff357; PC = 0x555555564574 *)
mov r8 L0x55555556d6b0;
(* and    %rax,%r8                                 #! PC = 0x55555556457b *)
and uint64 r8 rax r8;
(* mov    0x9133(%rip),%r9        # 0x55555556d6b8 <p610x2+56>#! EA = L0x55555556d6b8; Value = 0x64ab65f421884a55; PC = 0x55555556457e *)
mov r9 L0x55555556d6b8;
(* and    %rax,%r9                                 #! PC = 0x555555564585 *)
and uint64 r9 rax r9;
(* mov    0x9131(%rip),%r10        # 0x55555556d6c0 <p610x2+64>#! EA = L0x55555556d6c0; Value = 0x03202184a3cfb119; PC = 0x555555564588 *)
mov r10 L0x55555556d6c0;
(* and    %rax,%r10                                #! PC = 0x55555556458f *)
and uint64 r10 rax r10;
(* mov    0x912f(%rip),%r11        # 0x55555556d6c8 <p610x2+72>#! EA = L0x55555556d6c8; Value = 0x00000004f7ed4ed1; PC = 0x555555564592 *)
mov r11 L0x55555556d6c8;
(* and    %rax,%r11                                #! PC = 0x555555564599 *)
and uint64 r11 rax r11;
(* bt     $0x0,%rcx                                #! PC = 0x55555556459c *)
split dontcare carry rcx 1;
vpc carry@uint1 carry;
(* adc    %rdi,%r12                                #! PC = 0x5555555645a1 *)
adcs carry r12 r12 rdi@uint64 carry;
(* adc    %rsi,%r13                                #! PC = 0x5555555645a4 *)
adcs carry r13 r13 rsi@uint64 carry;
(* adc    %r8,%r14                                 #! PC = 0x5555555645a7 *)
adcs carry r14 r14 r8@uint64 carry;
(* adc    %r9,%r15                                 #! PC = 0x5555555645aa *)
adcs carry r15 r15 r9@uint64 carry;
(* mov    0x40(%rdx),%rsi                          #! EA = L0x7fffffffd780; Value = 0x2721195501bdaa5d; PC = 0x5555555645ad *)
mov rsi L0x7fffffffd780;
(* mov    0x48(%rdx),%rdi                          #! EA = L0x7fffffffd788; Value = 0xfffffffb6cfdd6b1; PC = 0x5555555645b1 *)
mov rdi L0x7fffffffd788;
(* adc    %r10,%rsi                                #! PC = 0x5555555645b5 *)
adcs carry rsi rsi r10@uint64 carry;
(* adc    %r11,%rdi                                #! PC = 0x5555555645b8 *)
adcs carry rdi rdi r11@uint64 carry;
(* mov    %r12,0x20(%rdx)                          #! EA = L0x7fffffffd760; PC = 0x5555555645bb *)
mov L0x7fffffffd760 r12;
(* mov    %r13,0x28(%rdx)                          #! EA = L0x7fffffffd768; PC = 0x5555555645bf *)
mov L0x7fffffffd768 r13;
(* mov    %r14,0x30(%rdx)                          #! EA = L0x7fffffffd770; PC = 0x5555555645c3 *)
mov L0x7fffffffd770 r14;
(* mov    %r15,0x38(%rdx)                          #! EA = L0x7fffffffd778; PC = 0x5555555645c7 *)
mov L0x7fffffffd778 r15;
(* mov    %rsi,0x40(%rdx)                          #! EA = L0x7fffffffd780; PC = 0x5555555645cb *)
mov L0x7fffffffd780 rsi;
(* mov    %rdi,0x48(%rdx)                          #! EA = L0x7fffffffd788; PC = 0x5555555645cf *)
mov L0x7fffffffd788 rdi;
(* #! <- SP = 0x7fffffffd5f8 *)
#! 0x7fffffffd5f8 = 0x7fffffffd5f8;
(* #retq                                           #! PC = 0x5555555645db *)
#retq                                           #! 0x5555555645db = 0x5555555645db;

(* ===== Outputs ===== *)

mov c0 L0x7fffffffd740;
mov c1 L0x7fffffffd748;
mov c2 L0x7fffffffd750;
mov c3 L0x7fffffffd758;
mov c4 L0x7fffffffd760;
mov c5 L0x7fffffffd768;
mov c6 L0x7fffffffd770;
mov c7 L0x7fffffffd778;
mov c8 L0x7fffffffd780;
mov c9 L0x7fffffffd788;

{
  true
  &&
  and [
    equmod
      (limbs 64 [ c0, c1, c2, c3, c4, c5, c6, c7, c8, c9 ])
      (
        limbs 64 [ a0, a1, a2, a3, a4, a5, a6, a7, a8, a9 ]
        +
        limbs 64 [ b0, b1, b2, b3, b4, b5, b6, b7, b8, b9 ]
      )
      (limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64,
                  $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ]),
    limbs 64 [c0, c1, c2, c3, c4, c5, c6, c7, c8, c9] <=u
      (2@640 * limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64,
                          $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ] - 1@640)
  ]
}

