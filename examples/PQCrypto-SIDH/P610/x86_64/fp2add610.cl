(* on frege: -v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint fp2add610.cl
Parsing Cryptoline file:		[OK]		0.007093 seconds
Checking well-formedness:		[OK]		0.000655 seconds
Transforming to SSA form:		[OK]		0.000412 seconds
Normalizing specification:		[OK]		0.000503 seconds
Rewriting assignments:			[OK]		0.000513 seconds
Verifying program safety:
	 Cut 0
	     Round 1 (4 safety conditions, timeout = 14400 seconds)
		 Safety condition #1	[OK]
		 Safety condition #3	[OK]
		 Safety condition #0	[OK]
		 Safety condition #2	[OK]
	 Overall			[OK]		0.284338 seconds
Verifying range specification:		[OK]		17.206667 seconds
Rewriting value-preserved casting:	[OK]		0.000082 seconds
Verifying algebraic specification:	[OK]		0.000391 seconds
Verification result:			[OK]		17.501341 seconds
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
(* mov    %rdx,%r12                                #! PC = 0x555555558696 *)
mov r12 rax;
(* mov    %rsi,%rbp                                #! PC = 0x55555555869a *)
mov rbp rsi;
(* mov    %rdi,%rbx                                #! PC = 0x55555555869e *)
mov rbx rdi;
(* #callq  0x555555563c90 <fpadd610>               #! PC = 0x5555555586a1 *)
#callq  0x555555563c90 <fpadd610>               #! 0x5555555586a1 = 0x5555555586a1;
(* #! -> SP = 0x7fffffffd218 *)
#! 0x7fffffffd218 = 0x7fffffffd218;
(* #jmpq   0x55555556446f <fpadd610_asm>           #! PC = 0x555555563c94 *)
#jmpq   0x55555556446f <fpadd610_asm>           #! 0x555555563c94 = 0x555555563c94;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffd290; Value = 0x6e94c9413e992a9a; PC = 0x555555564477 *)
mov r8 L0x7fffffffd290;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffd298; Value = 0xfa15879a137d2ced; PC = 0x55555556447a *)
mov r9 L0x7fffffffd298;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffd2a0; Value = 0x56fbd2bb120caa13; PC = 0x55555556447e *)
mov r10 L0x7fffffffd2a0;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffd2a8; Value = 0x06735e6c7e990ca4; PC = 0x555555564482 *)
mov r11 L0x7fffffffd2a8;
(* mov    0x20(%rdi),%r12                          #! EA = L0x7fffffffd2b0; Value = 0xc438d9d6ca440d89; PC = 0x555555564486 *)
mov r12 L0x7fffffffd2b0;
(* mov    0x28(%rdi),%r13                          #! EA = L0x7fffffffd2b8; Value = 0x4f9aed3ca0d7b505; PC = 0x55555556448a *)
mov r13 L0x7fffffffd2b8;
(* mov    0x30(%rdi),%r14                          #! EA = L0x7fffffffd2c0; Value = 0x1da85d795262a797; PC = 0x55555556448e *)
mov r14 L0x7fffffffd2c0;
(* mov    0x38(%rdi),%r15                          #! EA = L0x7fffffffd2c8; Value = 0x29db0ea0d59b4169; PC = 0x555555564492 *)
mov r15 L0x7fffffffd2c8;
(* mov    0x40(%rdi),%rcx                          #! EA = L0x7fffffffd2d0; Value = 0xfeb62bf8f2f31f1b; PC = 0x555555564496 *)
mov rcx L0x7fffffffd2d0;
(* mov    0x48(%rdi),%rdi                          #! EA = L0x7fffffffd2d8; Value = 0x000000021d9e8de0; PC = 0x55555556449a *)
mov rdi L0x7fffffffd2d8;
(* add    (%rsi),%r8                               #! EA = L0x7fffffffd330; Value = 0x3a50594c894c5731; PC = 0x55555556449e *)
adds carry r8 r8 L0x7fffffffd330;
(* adc    0x8(%rsi),%r9                            #! EA = L0x7fffffffd338; Value = 0xbebb89b073590297; PC = 0x5555555644a1 *)
adcs carry r9 r9 L0x7fffffffd338 carry;
(* adc    0x10(%rsi),%r10                          #! EA = L0x7fffffffd340; Value = 0x4cfe67a998369c21; PC = 0x5555555644a5 *)
adcs carry r10 r10 L0x7fffffffd340 carry;
(* adc    0x18(%rsi),%r11                          #! EA = L0x7fffffffd348; Value = 0x6021852fcdc9723c; PC = 0x5555555644a9 *)
adcs carry r11 r11 L0x7fffffffd348 carry;
(* adc    0x20(%rsi),%r12                          #! EA = L0x7fffffffd350; Value = 0x5e633ac729e96edc; PC = 0x5555555644ad *)
adcs carry r12 r12 L0x7fffffffd350 carry;
(* adc    0x28(%rsi),%r13                          #! EA = L0x7fffffffd358; Value = 0x67ab8c46edd1bd3c; PC = 0x5555555644b1 *)
adcs carry r13 r13 L0x7fffffffd358 carry;
(* adc    0x30(%rsi),%r14                          #! EA = L0x7fffffffd360; Value = 0x851dfe48d100e128; PC = 0x5555555644b5 *)
adcs carry r14 r14 L0x7fffffffd360 carry;
(* adc    0x38(%rsi),%r15                          #! EA = L0x7fffffffd368; Value = 0x4900736ca052e771; PC = 0x5555555644b9 *)
adcs carry r15 r15 L0x7fffffffd368 carry;
(* adc    0x40(%rsi),%rcx                          #! EA = L0x7fffffffd370; Value = 0x6006d524a872eae1; PC = 0x5555555644bd *)
adcs carry rcx rcx L0x7fffffffd370 carry;
(* adc    0x48(%rsi),%rdi                          #! EA = L0x7fffffffd378; Value = 0x00000000d84dd792; PC = 0x5555555644c1 *)
adcs carry rdi rdi L0x7fffffffd378 carry;
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
(* mov    %rcx,0x40(%rdx)                          #! EA = L0x7fffffffd4b0; PC = 0x55555556451b *)
mov L0x7fffffffd4b0 rcx;
(* mov    %rdi,0x48(%rdx)                          #! EA = L0x7fffffffd4b8; PC = 0x55555556451f *)
mov L0x7fffffffd4b8 rdi;
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
(* mov    %r8,(%rdx)                               #! EA = L0x7fffffffd470; PC = 0x55555556454e *)
mov L0x7fffffffd470 r8;
(* mov    %r9,0x8(%rdx)                            #! EA = L0x7fffffffd478; PC = 0x555555564551 *)
mov L0x7fffffffd478 r9;
(* mov    %r10,0x10(%rdx)                          #! EA = L0x7fffffffd480; PC = 0x555555564555 *)
mov L0x7fffffffd480 r10;
(* mov    %r11,0x18(%rdx)                          #! EA = L0x7fffffffd488; PC = 0x555555564559 *)
mov L0x7fffffffd488 r11;
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
(* mov    0x40(%rdx),%rsi                          #! EA = L0x7fffffffd4b0; Value = 0x5b9cdf98f79658e3; PC = 0x5555555645ad *)
mov rsi L0x7fffffffd4b0;
(* mov    0x48(%rdx),%rdi                          #! EA = L0x7fffffffd4b8; Value = 0xfffffffdfdff16a2; PC = 0x5555555645b1 *)
mov rdi L0x7fffffffd4b8;
(* adc    %r10,%rsi                                #! PC = 0x5555555645b5 *)
adcs carry rsi rsi r10@uint64 carry;
(* adc    %r11,%rdi                                #! PC = 0x5555555645b8 *)
adcs carry rdi rdi r11@uint64 carry;
(* mov    %r12,0x20(%rdx)                          #! EA = L0x7fffffffd490; PC = 0x5555555645bb *)
mov L0x7fffffffd490 r12;
(* mov    %r13,0x28(%rdx)                          #! EA = L0x7fffffffd498; PC = 0x5555555645bf *)
mov L0x7fffffffd498 r13;
(* mov    %r14,0x30(%rdx)                          #! EA = L0x7fffffffd4a0; PC = 0x5555555645c3 *)
mov L0x7fffffffd4a0 r14;
(* mov    %r15,0x38(%rdx)                          #! EA = L0x7fffffffd4a8; PC = 0x5555555645c7 *)
mov L0x7fffffffd4a8 r15;
(* mov    %rsi,0x40(%rdx)                          #! EA = L0x7fffffffd4b0; PC = 0x5555555645cb *)
mov L0x7fffffffd4b0 rsi;
(* mov    %rdi,0x48(%rdx)                          #! EA = L0x7fffffffd4b8; PC = 0x5555555645cf *)
mov L0x7fffffffd4b8 rdi;
(* #! <- SP = 0x7fffffffd218 *)
#! 0x7fffffffd218 = 0x7fffffffd218;
(* #retq                                           #! PC = 0x5555555645db *)
#retq                                           #! 0x5555555645db = 0x5555555645db;
(* #jmpq   0x555555563c90 <fpadd610>               #! PC = 0x5555555586b7 *)
#jmpq   0x555555563c90 <fpadd610>               #! 0x5555555586b7 = 0x5555555586b7;
(* #jmpq   0x55555556446f <fpadd610_asm>           #! PC = 0x555555563c94 *)
#jmpq   0x55555556446f <fpadd610_asm>           #! 0x555555563c94 = 0x555555563c94;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffd2e0; Value = 0x94750b2b5863cedf; PC = 0x555555564477 *)
mov r8 L0x7fffffffd2e0;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffd2e8; Value = 0x3a16441fed69104d; PC = 0x55555556447a *)
mov r9 L0x7fffffffd2e8;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffd2f0; Value = 0x145ae2345c2c0964; PC = 0x55555556447e *)
mov r10 L0x7fffffffd2f0;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffd2f8; Value = 0x10fc9e31ea31f870; PC = 0x555555564482 *)
mov r11 L0x7fffffffd2f8;
(* mov    0x20(%rdi),%r12                          #! EA = L0x7fffffffd300; Value = 0xb82cde6b98695f6c; PC = 0x555555564486 *)
mov r12 L0x7fffffffd300;
(* mov    0x28(%rdi),%r13                          #! EA = L0x7fffffffd308; Value = 0x3e48bbda0ea596ef; PC = 0x55555556448a *)
mov r13 L0x7fffffffd308;
(* mov    0x30(%rdi),%r14                          #! EA = L0x7fffffffd310; Value = 0xc70cf557f89b75c4; PC = 0x55555556448e *)
mov r14 L0x7fffffffd310;
(* mov    0x38(%rdi),%r15                          #! EA = L0x7fffffffd318; Value = 0x482faedc1fb23eee; PC = 0x555555564492 *)
mov r15 L0x7fffffffd318;
(* mov    0x40(%rdi),%rcx                          #! EA = L0x7fffffffd320; Value = 0x66300d7778e0980d; PC = 0x555555564496 *)
mov rcx L0x7fffffffd320;
(* mov    0x48(%rdi),%rdi                          #! EA = L0x7fffffffd328; Value = 0x000000007d74d5a3; PC = 0x55555556449a *)
mov rdi L0x7fffffffd328;
(* add    (%rsi),%r8                               #! EA = L0x7fffffffd380; Value = 0xafa77b3e225e40da; PC = 0x55555556449e *)
adds carry r8 r8 L0x7fffffffd380;
(* adc    0x8(%rsi),%r9                            #! EA = L0x7fffffffd388; Value = 0x4e18506dcf4ff962; PC = 0x5555555644a1 *)
adcs carry r9 r9 L0x7fffffffd388 carry;
(* adc    0x10(%rsi),%r10                          #! EA = L0x7fffffffd390; Value = 0xf2befd5f5ef78a3a; PC = 0x5555555644a5 *)
adcs carry r10 r10 L0x7fffffffd390 carry;
(* adc    0x18(%rsi),%r11                          #! EA = L0x7fffffffd398; Value = 0xdec50a0439ca0cd5; PC = 0x5555555644a9 *)
adcs carry r11 r11 L0x7fffffffd398 carry;
(* adc    0x20(%rsi),%r12                          #! EA = L0x7fffffffd3a0; Value = 0x0138a89f8901234a; PC = 0x5555555644ad *)
adcs carry r12 r12 L0x7fffffffd3a0 carry;
(* adc    0x28(%rsi),%r13                          #! EA = L0x7fffffffd3a8; Value = 0x125de8d80fd088a2; PC = 0x5555555644b1 *)
adcs carry r13 r13 L0x7fffffffd3a8 carry;
(* adc    0x30(%rsi),%r14                          #! EA = L0x7fffffffd3b0; Value = 0x27c42e52d2705472; PC = 0x5555555644b5 *)
adcs carry r14 r14 L0x7fffffffd3b0 carry;
(* adc    0x38(%rsi),%r15                          #! EA = L0x7fffffffd3b8; Value = 0xe31d25993f608e3a; PC = 0x5555555644b9 *)
adcs carry r15 r15 L0x7fffffffd3b8 carry;
(* adc    0x40(%rsi),%rcx                          #! EA = L0x7fffffffd3c0; Value = 0x69e9a5c7e86c1e49; PC = 0x5555555644bd *)
adcs carry rcx rcx L0x7fffffffd3c0 carry;
(* adc    0x48(%rsi),%rdi                          #! EA = L0x7fffffffd3c8; Value = 0x000000020578ba2d; PC = 0x5555555644c1 *)
adcs carry rdi rdi L0x7fffffffd3c8 carry;
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
(* mov    %rcx,0x40(%rdx)                          #! EA = L0x7fffffffd500; PC = 0x55555556451b *)
mov L0x7fffffffd500 rcx;
(* mov    %rdi,0x48(%rdx)                          #! EA = L0x7fffffffd508; PC = 0x55555556451f *)
mov L0x7fffffffd508 rdi;
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
(* mov    %r8,(%rdx)                               #! EA = L0x7fffffffd4c0; PC = 0x55555556454e *)
mov L0x7fffffffd4c0 r8;
(* mov    %r9,0x8(%rdx)                            #! EA = L0x7fffffffd4c8; PC = 0x555555564551 *)
mov L0x7fffffffd4c8 r9;
(* mov    %r10,0x10(%rdx)                          #! EA = L0x7fffffffd4d0; PC = 0x555555564555 *)
mov L0x7fffffffd4d0 r10;
(* mov    %r11,0x18(%rdx)                          #! EA = L0x7fffffffd4d8; PC = 0x555555564559 *)
mov L0x7fffffffd4d8 r11;
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
(* mov    0x40(%rdx),%rsi                          #! EA = L0x7fffffffd500; Value = 0xccf991babd7d053d; PC = 0x5555555645ad *)
mov rsi L0x7fffffffd500;
(* mov    0x48(%rdx),%rdi                          #! EA = L0x7fffffffd508; Value = 0xfffffffd8b0040ff; PC = 0x5555555645b1 *)
mov rdi L0x7fffffffd508;
(* adc    %r10,%rsi                                #! PC = 0x5555555645b5 *)
adcs carry rsi rsi r10@uint64 carry;
(* adc    %r11,%rdi                                #! PC = 0x5555555645b8 *)
adcs carry rdi rdi r11@uint64 carry;
(* mov    %r12,0x20(%rdx)                          #! EA = L0x7fffffffd4e0; PC = 0x5555555645bb *)
mov L0x7fffffffd4e0 r12;
(* mov    %r13,0x28(%rdx)                          #! EA = L0x7fffffffd4e8; PC = 0x5555555645bf *)
mov L0x7fffffffd4e8 r13;
(* mov    %r14,0x30(%rdx)                          #! EA = L0x7fffffffd4f0; PC = 0x5555555645c3 *)
mov L0x7fffffffd4f0 r14;
(* mov    %r15,0x38(%rdx)                          #! EA = L0x7fffffffd4f8; PC = 0x5555555645c7 *)
mov L0x7fffffffd4f8 r15;
(* mov    %rsi,0x40(%rdx)                          #! EA = L0x7fffffffd500; PC = 0x5555555645cb *)
mov L0x7fffffffd500 rsi;
(* mov    %rdi,0x48(%rdx)                          #! EA = L0x7fffffffd508; PC = 0x5555555645cf *)
mov L0x7fffffffd508 rdi;
(* #! <- SP = 0x7fffffffd238 *)
#! 0x7fffffffd238 = 0x7fffffffd238;
(* #retq                                           #! PC = 0x5555555645db *)
#retq                                           #! 0x5555555645db = 0x5555555645db;

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
    equmod
      (limbs 64 [ c00, c01, c02, c03, c04, c05, c06, c07, c08, c09 ])
      (
        limbs 64 [ a00, a01, a02, a03, a04, a05, a06, a07, a08, a09 ]
        +
        limbs 64 [ b00, b01, b02, b03, b04, b05, b06, b07, b08, b09 ]
      )
      (limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64,
                  $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ]),
    equmod
      (limbs 64 [ c10, c11, c12, c13, c14, c15, c16, c17, c18, c19 ])
      (
        limbs 64 [ a10, a11, a12, a13, a14, a15, a16, a17, a18, a19 ]
        +
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
