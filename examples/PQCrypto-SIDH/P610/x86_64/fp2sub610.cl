(* on frege: -v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint fp2sub610.cl
Parsing Cryptoline file:		[OK]		0.005019 seconds
Checking well-formedness:		[OK]		0.001301 seconds
Transforming to SSA form:		[OK]		0.000137 seconds
Normalizing specification:		[OK]		0.000154 seconds
Rewriting assignments:			[OK]		0.000204 seconds
Verifying program safety:
	 Cut 0
	     Round 1 (4 safety conditions, timeout = 14400 seconds)
		 Safety condition #3	[OK]
		 Safety condition #1	[OK]
		 Safety condition #2	[OK]
		 Safety condition #0	[OK]
	 Overall			[OK]		0.265300 seconds
Verifying range specification:		[OK]		81.468154 seconds
Rewriting value-preserved casting:	[OK]		0.000103 seconds
Verifying algebraic specification:	[OK]		0.000408 seconds
Verification result:			[OK]		81.741243 seconds
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

proc main (a00@uint64, a01@uint64, a02@uint64, a03@uint64, a04@uint64, a05@uint64, a06@uint64, a07@uint64, a08@uint64, a09@uint64,
           a10@uint64, a11@uint64, a12@uint64, a13@uint64, a14@uint64, a15@uint64, a16@uint64, a17@uint64, a18@uint64, a19@uint64,
           b00@uint64, b01@uint64, b02@uint64, b03@uint64, b04@uint64, b05@uint64, b06@uint64, b07@uint64, b08@uint64, b09@uint64,
           b10@uint64, b11@uint64, b12@uint64, b13@uint64, b14@uint64, b15@uint64, b16@uint64, b17@uint64, b18@uint64, b19@uint64) =
{
  true
  &&
  and [
    limbs 64 [ a00, a01, a02, a03, a04, a05, a06, a07, a08, a09 ] <=u
      (2@640 * limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64,
                          $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ] - 1@640),
    limbs 64 [ a10, a11, a12, a13, a14, a15, a16, a17, a18, a19 ] <=u
      (2@640 * limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64,
                          $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ] - 1@640),
    limbs 64 [ b00, b01, b02, b03, b04, b05, b06, b07, b08, b09 ] <=u
      (2@640 * limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64,
                          $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ] - 1@640),
    limbs 64 [ b10, b11, b12, b13, b14, b15, b16, b17, b18, b19 ] <=u
      (2@640 * limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64,
                          $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ] - 1@640)
  ]
}

(* ===== Initialization ===== *)

mov L0x7fffffffd290 a00;
mov L0x7fffffffd298 a01;
mov L0x7fffffffd2a0 a02;
mov L0x7fffffffd2a8 a03;
mov L0x7fffffffd2b0 a04;
mov L0x7fffffffd2b8 a05;
mov L0x7fffffffd2c0 a06;
mov L0x7fffffffd2c8 a07;
mov L0x7fffffffd2d0 a08;
mov L0x7fffffffd2d8 a09;
mov L0x7fffffffd2e0 a10;
mov L0x7fffffffd2e8 a11;
mov L0x7fffffffd2f0 a12;
mov L0x7fffffffd2f8 a13;
mov L0x7fffffffd300 a14;
mov L0x7fffffffd308 a15;
mov L0x7fffffffd310 a16;
mov L0x7fffffffd318 a17;
mov L0x7fffffffd320 a18;
mov L0x7fffffffd328 a19;

mov L0x7fffffffd330 b00;
mov L0x7fffffffd338 b01;
mov L0x7fffffffd340 b02;
mov L0x7fffffffd348 b03;
mov L0x7fffffffd350 b04;
mov L0x7fffffffd358 b05;
mov L0x7fffffffd360 b06;
mov L0x7fffffffd368 b07;
mov L0x7fffffffd370 b08;
mov L0x7fffffffd378 b09;
mov L0x7fffffffd380 b10;
mov L0x7fffffffd388 b11;
mov L0x7fffffffd390 b12;
mov L0x7fffffffd398 b13;
mov L0x7fffffffd3a0 b14;
mov L0x7fffffffd3a8 b15;
mov L0x7fffffffd3b0 b16;
mov L0x7fffffffd3b8 b17;
mov L0x7fffffffd3c0 b18;
mov L0x7fffffffd3c8 b19;

mov L0x55555556d680 $p610x2_0@uint64;
mov L0x55555556d688 $p610x2_1@uint64;
mov L0x55555556d6a0 $p610x2_4@uint64;
mov L0x55555556d6a8 $p610x2_5@uint64;
mov L0x55555556d6b0 $p610x2_6@uint64;
mov L0x55555556d6b8 $p610x2_7@uint64;
mov L0x55555556d6c0 $p610x2_8@uint64;
mov L0x55555556d6c8 $p610x2_9@uint64;

nondet rax@uint64;
nondet rdi@uint64;
nondet rsi@uint64;

(* ===== Program ===== *)

(* #! -> SP = 0x7fffffffd238 *)
#! 0x7fffffffd238 = 0x7fffffffd238;
(* mov    %rdx,%r12                                #! PC = 0x5555555586c6 *)
mov r12 rax;
(* mov    %rsi,%rbp                                #! PC = 0x5555555586ca *)
mov rbp rsi;
(* mov    %rdi,%rbx                                #! PC = 0x5555555586ce *)
mov rbx rdi;
(* #callq  0x555555563ca0 <fpsub610>               #! PC = 0x5555555586d1 *)
#callq  0x555555563ca0 <fpsub610>               #! 0x5555555586d1 = 0x5555555586d1;
(* #! -> SP = 0x7fffffffd218 *)
#! 0x7fffffffd218 = 0x7fffffffd218;
(* #jmpq   0x5555555645dc <fpsub610_asm>           #! PC = 0x555555563ca4 *)
#jmpq   0x5555555645dc <fpsub610_asm>           #! 0x555555563ca4 = 0x555555563ca4;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffd290; Value = 0x151a1b1583183123; PC = 0x5555555645e4 *)
mov r8 L0x7fffffffd290;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffd298; Value = 0x14601e2e3f9eccfc; PC = 0x5555555645e7 *)
mov r9 L0x7fffffffd298;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffd2a0; Value = 0xc54ddd17ae591eac; PC = 0x5555555645eb *)
mov r10 L0x7fffffffd2a0;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffd2a8; Value = 0x9ff4b67cffed9f10; PC = 0x5555555645ef *)
mov r11 L0x7fffffffd2a8;
(* mov    0x20(%rdi),%r12                          #! EA = L0x7fffffffd2b0; Value = 0x24123d28fd220de8; PC = 0x5555555645f3 *)
mov r12 L0x7fffffffd2b0;
(* mov    0x28(%rdi),%r13                          #! EA = L0x7fffffffd2b8; Value = 0x7b4bc3cf3763b009; PC = 0x5555555645f7 *)
mov r13 L0x7fffffffd2b8;
(* mov    0x30(%rdi),%r14                          #! EA = L0x7fffffffd2c0; Value = 0x92bd7782f829a5e1; PC = 0x5555555645fb *)
mov r14 L0x7fffffffd2c0;
(* mov    0x38(%rdi),%r15                          #! EA = L0x7fffffffd2c8; Value = 0x493286619291aa16; PC = 0x5555555645ff *)
mov r15 L0x7fffffffd2c8;
(* mov    0x40(%rdi),%rcx                          #! EA = L0x7fffffffd2d0; Value = 0x9bdf5991bb465493; PC = 0x555555564603 *)
mov rcx L0x7fffffffd2d0;
(* mov    0x48(%rdi),%rdi                          #! EA = L0x7fffffffd2d8; Value = 0x00000001d8d24209; PC = 0x555555564607 *)
mov rdi L0x7fffffffd2d8;
(* sub    (%rsi),%r8                               #! EA = L0x7fffffffd330; Value = 0xa3ecf3ab37f0d5e2; PC = 0x55555556460b *)
subb carry r8 r8 L0x7fffffffd330;
(* sbb    0x8(%rsi),%r9                            #! EA = L0x7fffffffd338; Value = 0xf11f1767a2db0568; PC = 0x55555556460e *)
sbbs carry r9 r9 L0x7fffffffd338 carry;
(* sbb    0x10(%rsi),%r10                          #! EA = L0x7fffffffd340; Value = 0x9a7397c7423fd39c; PC = 0x555555564612 *)
sbbs carry r10 r10 L0x7fffffffd340 carry;
(* sbb    0x18(%rsi),%r11                          #! EA = L0x7fffffffd348; Value = 0xa5d569c44f191da2; PC = 0x555555564616 *)
sbbs carry r11 r11 L0x7fffffffd348 carry;
(* sbb    0x20(%rsi),%r12                          #! EA = L0x7fffffffd350; Value = 0xb28bc9b8eaddc53f; PC = 0x55555556461a *)
sbbs carry r12 r12 L0x7fffffffd350 carry;
(* sbb    0x28(%rsi),%r13                          #! EA = L0x7fffffffd358; Value = 0x6aae94978b68b89f; PC = 0x55555556461e *)
sbbs carry r13 r13 L0x7fffffffd358 carry;
(* sbb    0x30(%rsi),%r14                          #! EA = L0x7fffffffd360; Value = 0x043013b878cf6c09; PC = 0x555555564622 *)
sbbs carry r14 r14 L0x7fffffffd360 carry;
(* sbb    0x38(%rsi),%r15                          #! EA = L0x7fffffffd368; Value = 0x270410a0a42a0bc5; PC = 0x555555564626 *)
sbbs carry r15 r15 L0x7fffffffd368 carry;
(* sbb    0x40(%rsi),%rcx                          #! EA = L0x7fffffffd370; Value = 0x4cd23f3defdb5dfd; PC = 0x55555556462a *)
sbbs carry rcx rcx L0x7fffffffd370 carry;
(* sbb    0x48(%rsi),%rdi                          #! EA = L0x7fffffffd378; Value = 0x00000000bc0d7e50; PC = 0x55555556462e *)
sbbs carry rdi rdi L0x7fffffffd378 carry;
(* mov    %rcx,0x40(%rdx)                          #! EA = L0x7fffffffd4b0; PC = 0x555555564632 *)
mov L0x7fffffffd4b0 rcx;
(* mov    %rdi,0x48(%rdx)                          #! EA = L0x7fffffffd4b8; PC = 0x555555564636 *)
mov L0x7fffffffd4b8 rdi;
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
(* mov    %r8,(%rdx)                               #! EA = L0x7fffffffd470; PC = 0x555555564665 *)
mov L0x7fffffffd470 r8;
(* mov    %r9,0x8(%rdx)                            #! EA = L0x7fffffffd478; PC = 0x555555564668 *)
mov L0x7fffffffd478 r9;
(* mov    %r10,0x10(%rdx)                          #! EA = L0x7fffffffd480; PC = 0x55555556466c *)
mov L0x7fffffffd480 r10;
(* mov    %r11,0x18(%rdx)                          #! EA = L0x7fffffffd488; PC = 0x555555564670 *)
mov L0x7fffffffd488 r11;
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
(* mov    0x40(%rdx),%rsi                          #! EA = L0x7fffffffd4b0; Value = 0x4f0d1a53cb6af696; PC = 0x5555555646c4 *)
mov rsi L0x7fffffffd4b0;
(* mov    0x48(%rdx),%rdi                          #! EA = L0x7fffffffd4b8; Value = 0x000000011cc4c3b9; PC = 0x5555555646c8 *)
mov rdi L0x7fffffffd4b8;
(* adc    %r10,%rsi                                #! PC = 0x5555555646cc *)
adcs carry rsi rsi r10@uint64 carry;
(* adc    %r11,%rdi                                #! PC = 0x5555555646cf *)
adcs carry rdi rdi r11@uint64 carry;
(* mov    %r12,0x20(%rdx)                          #! EA = L0x7fffffffd490; PC = 0x5555555646d2 *)
mov L0x7fffffffd490 r12;
(* mov    %r13,0x28(%rdx)                          #! EA = L0x7fffffffd498; PC = 0x5555555646d6 *)
mov L0x7fffffffd498 r13;
(* mov    %r14,0x30(%rdx)                          #! EA = L0x7fffffffd4a0; PC = 0x5555555646da *)
mov L0x7fffffffd4a0 r14;
(* mov    %r15,0x38(%rdx)                          #! EA = L0x7fffffffd4a8; PC = 0x5555555646de *)
mov L0x7fffffffd4a8 r15;
(* mov    %rsi,0x40(%rdx)                          #! EA = L0x7fffffffd4b0; PC = 0x5555555646e2 *)
mov L0x7fffffffd4b0 rsi;
(* mov    %rdi,0x48(%rdx)                          #! EA = L0x7fffffffd4b8; PC = 0x5555555646e6 *)
mov L0x7fffffffd4b8 rdi;
(* #! <- SP = 0x7fffffffd218 *)
#! 0x7fffffffd218 = 0x7fffffffd218;
(* #retq                                           #! PC = 0x5555555646f2 *)
#retq                                           #! 0x5555555646f2 = 0x5555555646f2;
(* #jmpq   0x555555563ca0 <fpsub610>               #! PC = 0x5555555586e7 *)
#jmpq   0x555555563ca0 <fpsub610>               #! 0x5555555586e7 = 0x5555555586e7;
(* #jmpq   0x5555555645dc <fpsub610_asm>           #! PC = 0x555555563ca4 *)
#jmpq   0x5555555645dc <fpsub610_asm>           #! 0x555555563ca4 = 0x555555563ca4;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffd2e0; Value = 0x0ad89cf445de7dc3; PC = 0x5555555645e4 *)
mov r8 L0x7fffffffd2e0;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffd2e8; Value = 0x82f0cfefa79d6946; PC = 0x5555555645e7 *)
mov r9 L0x7fffffffd2e8;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffd2f0; Value = 0x99501c90b53d3723; PC = 0x5555555645eb *)
mov r10 L0x7fffffffd2f0;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffd2f8; Value = 0x0349c5406372225e; PC = 0x5555555645ef *)
mov r11 L0x7fffffffd2f8;
(* mov    0x20(%rdi),%r12                          #! EA = L0x7fffffffd300; Value = 0x0a4121c436492842; PC = 0x5555555645f3 *)
mov r12 L0x7fffffffd300;
(* mov    0x28(%rdi),%r13                          #! EA = L0x7fffffffd308; Value = 0xd0fca2ad7ab2de8a; PC = 0x5555555645f7 *)
mov r13 L0x7fffffffd308;
(* mov    0x30(%rdi),%r14                          #! EA = L0x7fffffffd310; Value = 0xb503d55669853ad9; PC = 0x5555555645fb *)
mov r14 L0x7fffffffd310;
(* mov    0x38(%rdi),%r15                          #! EA = L0x7fffffffd318; Value = 0x7d3c623a381875f8; PC = 0x5555555645ff *)
mov r15 L0x7fffffffd318;
(* mov    0x40(%rdi),%rcx                          #! EA = L0x7fffffffd320; Value = 0x3058f4a64eb3858a; PC = 0x555555564603 *)
mov rcx L0x7fffffffd320;
(* mov    0x48(%rdi),%rdi                          #! EA = L0x7fffffffd328; Value = 0x000000017faa0ad2; PC = 0x555555564607 *)
mov rdi L0x7fffffffd328;
(* sub    (%rsi),%r8                               #! EA = L0x7fffffffd380; Value = 0x752c51868d3ab490; PC = 0x55555556460b *)
subb carry r8 r8 L0x7fffffffd380;
(* sbb    0x8(%rsi),%r9                            #! EA = L0x7fffffffd388; Value = 0x66f483dd1b291a81; PC = 0x55555556460e *)
sbbs carry r9 r9 L0x7fffffffd388 carry;
(* sbb    0x10(%rsi),%r10                          #! EA = L0x7fffffffd390; Value = 0xc0880a07b9a8b7b9; PC = 0x555555564612 *)
sbbs carry r10 r10 L0x7fffffffd390 carry;
(* sbb    0x18(%rsi),%r11                          #! EA = L0x7fffffffd398; Value = 0x46f34db636f88c2f; PC = 0x555555564616 *)
sbbs carry r11 r11 L0x7fffffffd398 carry;
(* sbb    0x20(%rsi),%r12                          #! EA = L0x7fffffffd3a0; Value = 0x00fdff7e87d32d01; PC = 0x55555556461a *)
sbbs carry r12 r12 L0x7fffffffd3a0 carry;
(* sbb    0x28(%rsi),%r13                          #! EA = L0x7fffffffd3a8; Value = 0x635d10a9f71b2619; PC = 0x55555556461e *)
sbbs carry r13 r13 L0x7fffffffd3a8 carry;
(* sbb    0x30(%rsi),%r14                          #! EA = L0x7fffffffd3b0; Value = 0x3e8fa40fcf1c05c7; PC = 0x555555564622 *)
sbbs carry r14 r14 L0x7fffffffd3b0 carry;
(* sbb    0x38(%rsi),%r15                          #! EA = L0x7fffffffd3b8; Value = 0xd62d68d5e7758730; PC = 0x555555564626 *)
sbbs carry r15 r15 L0x7fffffffd3b8 carry;
(* sbb    0x40(%rsi),%rcx                          #! EA = L0x7fffffffd3c0; Value = 0x1a145b00145e0196; PC = 0x55555556462a *)
sbbs carry rcx rcx L0x7fffffffd3c0 carry;
(* sbb    0x48(%rsi),%rdi                          #! EA = L0x7fffffffd3c8; Value = 0x000000002b113081; PC = 0x55555556462e *)
sbbs carry rdi rdi L0x7fffffffd3c8 carry;
(* mov    %rcx,0x40(%rdx)                          #! EA = L0x7fffffffd500; PC = 0x555555564632 *)
mov L0x7fffffffd500 rcx;
(* mov    %rdi,0x48(%rdx)                          #! EA = L0x7fffffffd508; PC = 0x555555564636 *)
mov L0x7fffffffd508 rdi;
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
(* mov    %r8,(%rdx)                               #! EA = L0x7fffffffd4c0; PC = 0x555555564665 *)
mov L0x7fffffffd4c0 r8;
(* mov    %r9,0x8(%rdx)                            #! EA = L0x7fffffffd4c8; PC = 0x555555564668 *)
mov L0x7fffffffd4c8 r9;
(* mov    %r10,0x10(%rdx)                          #! EA = L0x7fffffffd4d0; PC = 0x55555556466c *)
mov L0x7fffffffd4d0 r10;
(* mov    %r11,0x18(%rdx)                          #! EA = L0x7fffffffd4d8; PC = 0x555555564670 *)
mov L0x7fffffffd4d8 r11;
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
(* mov    0x40(%rdx),%rsi                          #! EA = L0x7fffffffd500; Value = 0x164499a63a5583f3; PC = 0x5555555646c4 *)
mov rsi L0x7fffffffd500;
(* mov    0x48(%rdx),%rdi                          #! EA = L0x7fffffffd508; Value = 0x000000015498da51; PC = 0x5555555646c8 *)
mov rdi L0x7fffffffd508;
(* adc    %r10,%rsi                                #! PC = 0x5555555646cc *)
adcs carry rsi rsi r10@uint64 carry;
(* adc    %r11,%rdi                                #! PC = 0x5555555646cf *)
adcs carry rdi rdi r11@uint64 carry;
(* mov    %r12,0x20(%rdx)                          #! EA = L0x7fffffffd4e0; PC = 0x5555555646d2 *)
mov L0x7fffffffd4e0 r12;
(* mov    %r13,0x28(%rdx)                          #! EA = L0x7fffffffd4e8; PC = 0x5555555646d6 *)
mov L0x7fffffffd4e8 r13;
(* mov    %r14,0x30(%rdx)                          #! EA = L0x7fffffffd4f0; PC = 0x5555555646da *)
mov L0x7fffffffd4f0 r14;
(* mov    %r15,0x38(%rdx)                          #! EA = L0x7fffffffd4f8; PC = 0x5555555646de *)
mov L0x7fffffffd4f8 r15;
(* mov    %rsi,0x40(%rdx)                          #! EA = L0x7fffffffd500; PC = 0x5555555646e2 *)
mov L0x7fffffffd500 rsi;
(* mov    %rdi,0x48(%rdx)                          #! EA = L0x7fffffffd508; PC = 0x5555555646e6 *)
mov L0x7fffffffd508 rdi;
(* #! <- SP = 0x7fffffffd238 *)
#! 0x7fffffffd238 = 0x7fffffffd238;
(* #retq                                           #! PC = 0x5555555646f2 *)
#retq                                           #! 0x5555555646f2 = 0x5555555646f2;

(* ===== Outputs ===== *)

mov c00 L0x7fffffffd470;
mov c01 L0x7fffffffd478;
mov c02 L0x7fffffffd480;
mov c03 L0x7fffffffd488;
mov c04 L0x7fffffffd490;
mov c05 L0x7fffffffd498;
mov c06 L0x7fffffffd4a0;
mov c07 L0x7fffffffd4a8;
mov c08 L0x7fffffffd4b0;
mov c09 L0x7fffffffd4b8;
mov c10 L0x7fffffffd4c0;
mov c11 L0x7fffffffd4c8;
mov c12 L0x7fffffffd4d0;
mov c13 L0x7fffffffd4d8;
mov c14 L0x7fffffffd4e0;
mov c15 L0x7fffffffd4e8;
mov c16 L0x7fffffffd4f0;
mov c17 L0x7fffffffd4f8;
mov c18 L0x7fffffffd500;
mov c19 L0x7fffffffd508;

{
  true
  &&
  and [
    eqsmod
      (limbs 64 [ c00, c01, c02, c03, c04, c05, c06, c07, c08, c09 ])
      (
        limbs 64 [ a00, a01, a02, a03, a04, a05, a06, a07, a08, a09 ]
        -
        limbs 64 [ b00, b01, b02, b03, b04, b05, b06, b07, b08, b09 ]
      )
      (limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64,
                  $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ]),
    eqsmod
      (limbs 64 [ c10, c11, c12, c13, c14, c15, c16, c17, c18, c19 ])
      (
        limbs 64 [ a10, a11, a12, a13, a14, a15, a16, a17, a18, a19 ]
        -
        limbs 64 [ b10, b11, b12, b13, b14, b15, b16, b17, b18, b19 ]
      )
      (limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64,
                  $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ]),
    limbs 64 [c00, c01, c02, c03, c04, c05, c06, c07, c08, c09] <=u
      (2@640 * limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64,
                          $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ] - 1@640),
    limbs 64 [c10, c11, c12, c13, c14, c15, c16, c17, c18, c19] <=u
      (2@640 * limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64,
                          $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ] - 1@640)
  ]
}

