(* on frege: -v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint fpsub610.cl
Parsing Cryptoline file:		[OK]		0.002766 seconds
Checking well-formedness:		[OK]		0.000616 seconds
Transforming to SSA form:		[OK]		0.000327 seconds
Normalizing specification:		[OK]		0.000286 seconds
Rewriting assignments:			[OK]		0.000406 seconds
Verifying program safety:
	 Cut 0
	     Round 1 (2 safety conditions, timeout = 14400 seconds)
		 Safety condition #1	[OK]
		 Safety condition #0	[OK]
	 Overall			[OK]		0.230773 seconds
Verifying range specification:		[OK]		76.848028 seconds
Rewriting value-preserved casting:	[OK]		0.000039 seconds
Verifying algebraic specification:	[OK]		0.000345 seconds
Verification result:			[OK]		77.084220 seconds
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
(* #jmpq   0x5555555645dc <fpsub610_asm>           #! PC = 0x555555563ca4 *)
#jmpq   0x5555555645dc <fpsub610_asm>           #! 0x555555563ca4 = 0x555555563ca4;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffd650; Value = 0xc38f944a3131e467; PC = 0x5555555645e4 *)
mov r8 L0x7fffffffd650;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffd658; Value = 0x055294e5819ad165; PC = 0x5555555645e7 *)
mov r9 L0x7fffffffd658;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffd660; Value = 0xab3e117d3632cd66; PC = 0x5555555645eb *)
mov r10 L0x7fffffffd660;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffd668; Value = 0xfead209807da7884; PC = 0x5555555645ef *)
mov r11 L0x7fffffffd668;
(* mov    0x20(%rdi),%r12                          #! EA = L0x7fffffffd670; Value = 0x6a10be734f2fdf04; PC = 0x5555555645f3 *)
mov r12 L0x7fffffffd670;
(* mov    0x28(%rdi),%r13                          #! EA = L0x7fffffffd678; Value = 0xf6025e57cafffc62; PC = 0x5555555645f7 *)
mov r13 L0x7fffffffd678;
(* mov    0x30(%rdi),%r14                          #! EA = L0x7fffffffd680; Value = 0xa6b95d78f24db2cd; PC = 0x5555555645fb *)
mov r14 L0x7fffffffd680;
(* mov    0x38(%rdi),%r15                          #! EA = L0x7fffffffd688; Value = 0xedd543a21b845669; PC = 0x5555555645ff *)
mov r15 L0x7fffffffd688;
(* mov    0x40(%rdi),%rcx                          #! EA = L0x7fffffffd690; Value = 0x2690f055f7078248; PC = 0x555555564603 *)
mov rcx L0x7fffffffd690;
(* mov    0x48(%rdi),%rdi                          #! EA = L0x7fffffffd698; Value = 0x000000017226d446; PC = 0x555555564607 *)
mov rdi L0x7fffffffd698;
(* sub    (%rsi),%r8                               #! EA = L0x7fffffffd6a0; Value = 0x2343398f01977344; PC = 0x55555556460b *)
subb carry r8 r8 L0x7fffffffd6a0;
(* sbb    0x8(%rsi),%r9                            #! EA = L0x7fffffffd6a8; Value = 0x56f17981504f8bb4; PC = 0x55555556460e *)
sbbs carry r9 r9 L0x7fffffffd6a8 carry;
(* sbb    0x10(%rsi),%r10                          #! EA = L0x7fffffffd6b0; Value = 0x9094c0e2ec9fe0d3; PC = 0x555555564612 *)
sbbs carry r10 r10 L0x7fffffffd6b0 carry;
(* sbb    0x18(%rsi),%r11                          #! EA = L0x7fffffffd6b8; Value = 0x8d031449627eb23b; PC = 0x555555564616 *)
sbbs carry r11 r11 L0x7fffffffd6b8 carry;
(* sbb    0x20(%rsi),%r12                          #! EA = L0x7fffffffd6c0; Value = 0x8839d2d4168f9b87; PC = 0x55555556461a *)
sbbs carry r12 r12 L0x7fffffffd6c0 carry;
(* sbb    0x28(%rsi),%r13                          #! EA = L0x7fffffffd6c8; Value = 0xd535ca01dfd9885d; PC = 0x55555556461e *)
sbbs carry r13 r13 L0x7fffffffd6c8 carry;
(* sbb    0x30(%rsi),%r14                          #! EA = L0x7fffffffd6d0; Value = 0xcf1c55948cc1d4aa; PC = 0x555555564622 *)
sbbs carry r14 r14 L0x7fffffffd6d0 carry;
(* sbb    0x38(%rsi),%r15                          #! EA = L0x7fffffffd6d8; Value = 0x36de35af51329b07; PC = 0x555555564626 *)
sbbs carry r15 r15 L0x7fffffffd6d8 carry;
(* sbb    0x40(%rsi),%rcx                          #! EA = L0x7fffffffd6e0; Value = 0x9d2d853fa44c6dd0; PC = 0x55555556462a *)
sbbs carry rcx rcx L0x7fffffffd6e0 carry;
(* sbb    0x48(%rsi),%rdi                          #! EA = L0x7fffffffd6e8; Value = 0x000000000e7c060d; PC = 0x55555556462e *)
sbbs carry rdi rdi L0x7fffffffd6e8 carry;
(* mov    %rcx,0x40(%rdx)                          #! EA = L0x7fffffffd780; PC = 0x555555564632 *)
mov L0x7fffffffd780 rcx;
(* mov    %rdi,0x48(%rdx)                          #! EA = L0x7fffffffd788; PC = 0x555555564636 *)
mov L0x7fffffffd788 rdi;
(* mov    $0x0,%rax                                #! PC = 0x55555556463a *)
mov rax 0x0@uint64;
(* sbb    $0x0,%rax                                #! PC = 0x555555564641 *)
sbbs carry rax rax 0x0@uint64 carry;
(* mov    0x9034(%rip),%rsi        # 0x55555556d680 <p610x2>#! EA = L0x55555556d680; Value = 0xfffffffffffffffe; PC = 0x555555564645 *)
mov rsi L0x55555556d680;
(* and    %rax,%rsi                                #! PC = 0x55555556464c *)
and uint64 rsi rax rsi;
(* mov    0x9032(%rip),%rdi        # 0x55555556d688 <p610x2+8>#! EA = L0x55555556d688; Value = 0xffffffffffffffff; PC = 0x55555556464f *)
mov rdi L0x55555556d688;
(* and    %rax,%rdi                                #! PC = 0x555555564656 *)
and uint64 rdi rax rdi;
(* add    %rsi,%r8                                 #! PC = 0x555555564659 *)
adds carry r8 r8 rsi;
(* adc    %rdi,%r9                                 #! PC = 0x55555556465c *)
adcs carry r9 r9 rdi@uint64 carry;
(* adc    %rdi,%r10                                #! PC = 0x55555556465f *)
adcs carry r10 r10 rdi@uint64 carry;
(* adc    %rdi,%r11                                #! PC = 0x555555564662 *)
adcs carry r11 r11 rdi@uint64 carry;
(* mov    %r8,(%rdx)                               #! EA = L0x7fffffffd740; PC = 0x555555564665 *)
mov L0x7fffffffd740 r8;
(* mov    %r9,0x8(%rdx)                            #! EA = L0x7fffffffd748; PC = 0x555555564668 *)
mov L0x7fffffffd748 r9;
(* mov    %r10,0x10(%rdx)                          #! EA = L0x7fffffffd750; PC = 0x55555556466c *)
mov L0x7fffffffd750 r10;
(* mov    %r11,0x18(%rdx)                          #! EA = L0x7fffffffd758; PC = 0x555555564670 *)
mov L0x7fffffffd758 r11;
(* setb   %cl                                      #! PC = 0x555555564674 *)
and uint64 rcx rcx 0xFFFFFFFFFFFFFF00@uint64;
adc rcx rcx 0@uint64 carry;
(* mov    0x9022(%rip),%rdi        # 0x55555556d6a0 <p610x2+32>#! EA = L0x55555556d6a0; Value = 0xdc03ffffffffffff; PC = 0x555555564677 *)
mov rdi L0x55555556d6a0;
(* and    %rax,%rdi                                #! PC = 0x55555556467e *)
and uint64 rdi rax rdi;
(* mov    0x9020(%rip),%rsi        # 0x55555556d6a8 <p610x2+40>#! EA = L0x55555556d6a8; Value = 0x62f09bd154b5605c; PC = 0x555555564681 *)
mov rsi L0x55555556d6a8;
(* and    %rax,%rsi                                #! PC = 0x555555564688 *)
and uint64 rsi rax rsi;
(* mov    0x901e(%rip),%r8        # 0x55555556d6b0 <p610x2+48>#! EA = L0x55555556d6b0; Value = 0x35cf7e8a091ff357; PC = 0x55555556468b *)
mov r8 L0x55555556d6b0;
(* and    %rax,%r8                                 #! PC = 0x555555564692 *)
and uint64 r8 rax r8;
(* mov    0x901c(%rip),%r9        # 0x55555556d6b8 <p610x2+56>#! EA = L0x55555556d6b8; Value = 0x64ab65f421884a55; PC = 0x555555564695 *)
mov r9 L0x55555556d6b8;
(* and    %rax,%r9                                 #! PC = 0x55555556469c *)
and uint64 r9 rax r9;
(* mov    0x901a(%rip),%r10        # 0x55555556d6c0 <p610x2+64>#! EA = L0x55555556d6c0; Value = 0x03202184a3cfb119; PC = 0x55555556469f *)
mov r10 L0x55555556d6c0;
(* and    %rax,%r10                                #! PC = 0x5555555646a6 *)
and uint64 r10 rax r10;
(* mov    0x9018(%rip),%r11        # 0x55555556d6c8 <p610x2+72>#! EA = L0x55555556d6c8; Value = 0x00000004f7ed4ed1; PC = 0x5555555646a9 *)
mov r11 L0x55555556d6c8;
(* and    %rax,%r11                                #! PC = 0x5555555646b0 *)
and uint64 r11 rax r11;
(* bt     $0x0,%rcx                                #! PC = 0x5555555646b3 *)
split dontcare carry rcx 1;
vpc carry@uint1 carry;
(* adc    %rdi,%r12                                #! PC = 0x5555555646b8 *)
adcs carry r12 r12 rdi@uint64 carry;
(* adc    %rsi,%r13                                #! PC = 0x5555555646bb *)
adcs carry r13 r13 rsi@uint64 carry;
(* adc    %r8,%r14                                 #! PC = 0x5555555646be *)
adcs carry r14 r14 r8@uint64 carry;
(* adc    %r9,%r15                                 #! PC = 0x5555555646c1 *)
adcs carry r15 r15 r9@uint64 carry;
(* mov    0x40(%rdx),%rsi                          #! EA = L0x7fffffffd780; Value = 0x89636b1652bb1478; PC = 0x5555555646c4 *)
mov rsi L0x7fffffffd780;
(* mov    0x48(%rdx),%rdi                          #! EA = L0x7fffffffd788; Value = 0x0000000163aace38; PC = 0x5555555646c8 *)
mov rdi L0x7fffffffd788;
(* adc    %r10,%rsi                                #! PC = 0x5555555646cc *)
adcs carry rsi rsi r10@uint64 carry;
(* adc    %r11,%rdi                                #! PC = 0x5555555646cf *)
adcs carry rdi rdi r11@uint64 carry;
(* mov    %r12,0x20(%rdx)                          #! EA = L0x7fffffffd760; PC = 0x5555555646d2 *)
mov L0x7fffffffd760 r12;
(* mov    %r13,0x28(%rdx)                          #! EA = L0x7fffffffd768; PC = 0x5555555646d6 *)
mov L0x7fffffffd768 r13;
(* mov    %r14,0x30(%rdx)                          #! EA = L0x7fffffffd770; PC = 0x5555555646da *)
mov L0x7fffffffd770 r14;
(* mov    %r15,0x38(%rdx)                          #! EA = L0x7fffffffd778; PC = 0x5555555646de *)
mov L0x7fffffffd778 r15;
(* mov    %rsi,0x40(%rdx)                          #! EA = L0x7fffffffd780; PC = 0x5555555646e2 *)
mov L0x7fffffffd780 rsi;
(* mov    %rdi,0x48(%rdx)                          #! EA = L0x7fffffffd788; PC = 0x5555555646e6 *)
mov L0x7fffffffd788 rdi;
(* #! <- SP = 0x7fffffffd5f8 *)
#! 0x7fffffffd5f8 = 0x7fffffffd5f8;
(* #retq                                           #! PC = 0x5555555646f2 *)
#retq                                           #! 0x5555555646f2 = 0x5555555646f2;

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
    eqsmod
      (limbs 64 [ c0, c1, c2, c3, c4, c5, c6, c7, c8, c9 ])
      (
        limbs 64 [ a0, a1, a2, a3, a4, a5, a6, a7, a8, a9 ]
        -
        limbs 64 [ b0, b1, b2, b3, b4, b5, b6, b7, b8, b9 ]
      )
      (limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64,
                  $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ]),
    limbs 64 [c0, c1, c2, c3, c4, c5, c6, c7, c8, c9] <=u
      (2@640 * limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64,
                          $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ] - 1@640)
  ]
}

