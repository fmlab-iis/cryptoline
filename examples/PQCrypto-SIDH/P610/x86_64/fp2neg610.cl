(* on frege: -v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint fp2neg610.cl
Parsing Cryptoline file:		[OK]		0.004692 seconds
Checking well-formedness:		[OK]		0.000256 seconds
Transforming to SSA form:		[OK]		0.000154 seconds
Normalizing specification:		[OK]		0.000201 seconds
Rewriting assignments:			[OK]		0.000526 seconds
Verifying program safety:
	 Cut 0
	     Round 1 (0 safety conditions, timeout = 14400 seconds)
	 Overall			[OK]		0.000135 seconds
Verifying range specification:		[OK]		5.314284 seconds
Rewriting value-preserved casting:	[OK]		0.000053 seconds
Verifying algebraic specification:	[OK]		0.000339 seconds
Verification result:			[OK]		5.321021 seconds
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

mov L0x7fffffffd470 a00;
mov L0x7fffffffd478 a01;
mov L0x7fffffffd480 a02;
mov L0x7fffffffd488 a03;
mov L0x7fffffffd490 a04;
mov L0x7fffffffd498 a05;
mov L0x7fffffffd4a0 a06;
mov L0x7fffffffd4a8 a07;
mov L0x7fffffffd4b0 a08;
mov L0x7fffffffd4b8 a09;
mov L0x7fffffffd4c0 a10;
mov L0x7fffffffd4c8 a11;
mov L0x7fffffffd4d0 a12;
mov L0x7fffffffd4d8 a13;
mov L0x7fffffffd4e0 a14;
mov L0x7fffffffd4e8 a15;
mov L0x7fffffffd4f0 a16;
mov L0x7fffffffd4f8 a17;
mov L0x7fffffffd500 a18;
mov L0x7fffffffd508 a19;

mov L0x55555556d680 $p610x2_0@uint64;
mov L0x55555556d688 $p610x2_1@uint64;
mov L0x55555556d690 $p610x2_2@uint64;
mov L0x55555556d698 $p610x2_3@uint64;
mov L0x55555556d6a0 $p610x2_4@uint64;
mov L0x55555556d6a8 $p610x2_5@uint64;
mov L0x55555556d6b0 $p610x2_6@uint64;
mov L0x55555556d6b8 $p610x2_7@uint64;
mov L0x55555556d6c0 $p610x2_8@uint64;
mov L0x55555556d6c8 $p610x2_9@uint64;

nondet rdi@uint64;

(* ===== Program ===== *)


(* #! -> SP = 0x7fffffffd238 *)
#! 0x7fffffffd238 = 0x7fffffffd238;
(* mov    %rdi,%rbx                                #! PC = 0x555555558675 *)
mov rbx rdi;
(* #callq  0x555555563cb0 <fpneg610>               #! PC = 0x555555558678 *)
#callq  0x555555563cb0 <fpneg610>               #! 0x555555558678 = 0x555555558678;
(* #! -> SP = 0x7fffffffd228 *)
#! 0x7fffffffd228 = 0x7fffffffd228;
(* mov    0x99c5(%rip),%rcx        # 0x55555556d680 <p610x2>#! EA = L0x55555556d680; Value = 0xfffffffffffffffe; PC = 0x555555563cb4 *)
mov rcx L0x55555556d680;
(* mov    (%rdi),%rsi                              #! EA = L0x7fffffffd470; Value = 0x6e94c9413e992a9a; PC = 0x555555563cbb *)
mov rsi L0x7fffffffd470;
(* mov    %rcx,%rax                                #! PC = 0x555555563cbe *)
mov rax rcx;
(* xor    %r9d,%r9d                                #! PC = 0x555555563cc1 *)
mov r9 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x555555563cc4 *)
mov rdx 0@uint64;
(* sub    %rsi,%rax                                #! PC = 0x555555563cc6 *)
subb carry rax rax rsi;
(* sbb    %r9,%rdx                                 #! PC = 0x555555563cc9 *)
sbbs carry rdx rdx r9 carry;
(* mov    %rdx,%rax                                #! PC = 0x555555563ccc *)
mov rax rdx;
(* shr    $0x3f,%rax                               #! PC = 0x555555563ccf *)
split rax dontcare rax 0x3f;
(* mov    0x8(%rdi),%r10                           #! EA = L0x7fffffffd478; Value = 0xfa15879a137d2ced; PC = 0x555555563cd3 *)
mov r10 L0x7fffffffd478;
(* mov    %rax,%r8                                 #! PC = 0x555555563cd7 *)
mov r8 rax;
(* mov    0x99a7(%rip),%rax        # 0x55555556d688 <p610x2+8>#! EA = L0x55555556d688; Value = 0xffffffffffffffff; PC = 0x555555563cda *)
mov rax L0x55555556d688;
(* xor    %edx,%edx                                #! PC = 0x555555563ce1 *)
mov rdx 0@uint64;
(* mov    %rdx,%r9                                 #! PC = 0x555555563ce3 *)
mov r9 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x555555563ce6 *)
mov r11 0@uint64;
(* sub    %rsi,%rcx                                #! PC = 0x555555563ce9 *)
subb carry rcx rcx rsi;
(* xor    %edx,%edx                                #! PC = 0x555555563cec *)
mov rdx 0@uint64;
(* sub    %r10,%rax                                #! PC = 0x555555563cee *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x555555563cf1 *)
sbbs carry rdx rdx r11 carry;
(* sub    %r8,%rax                                 #! PC = 0x555555563cf4 *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x555555563cf7 *)
sbbs carry rdx rdx r9 carry;
(* mov    0x10(%rdi),%r8                           #! EA = L0x7fffffffd480; Value = 0x56fbd2bb120caa13; PC = 0x555555563cfa *)
mov r8 L0x7fffffffd480;
(* mov    %rax,0x8(%rdi)                           #! EA = L0x7fffffffd478; PC = 0x555555563cfe *)
mov L0x7fffffffd478 rax;
(* mov    0x9987(%rip),%rax        # 0x55555556d690 <p610x2+16>#! EA = L0x55555556d690; Value = 0xffffffffffffffff; PC = 0x555555563d02 *)
mov rax L0x55555556d690;
(* mov    %rdx,%r10                                #! PC = 0x555555563d09 *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x555555563d0c *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x555555563d0f *)
split r10 dontcare r10 0x3f;
(* xor    %r9d,%r9d                                #! PC = 0x555555563d13 *)
mov r9 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x555555563d16 *)
mov rdx 0@uint64;
(* sub    %r8,%rax                                 #! PC = 0x555555563d18 *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x555555563d1b *)
sbbs carry rdx rdx r9 carry;
(* sub    %r10,%rax                                #! PC = 0x555555563d1e *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x555555563d21 *)
sbbs carry rdx rdx r11 carry;
(* mov    0x18(%rdi),%r8                           #! EA = L0x7fffffffd488; Value = 0x06735e6c7e990ca4; PC = 0x555555563d24 *)
mov r8 L0x7fffffffd488;
(* mov    %rax,0x10(%rdi)                          #! EA = L0x7fffffffd480; PC = 0x555555563d28 *)
mov L0x7fffffffd480 rax;
(* mov    0x9965(%rip),%rax        # 0x55555556d698 <p610x2+24>#! EA = L0x55555556d698; Value = 0xffffffffffffffff; PC = 0x555555563d2c *)
mov rax L0x55555556d698;
(* mov    %rdx,%r10                                #! PC = 0x555555563d33 *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x555555563d36 *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x555555563d39 *)
split r10 dontcare r10 0x3f;
(* xor    %r9d,%r9d                                #! PC = 0x555555563d3d *)
mov r9 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x555555563d40 *)
mov rdx 0@uint64;
(* sub    %r8,%rax                                 #! PC = 0x555555563d42 *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x555555563d45 *)
sbbs carry rdx rdx r9 carry;
(* sub    %r10,%rax                                #! PC = 0x555555563d48 *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x555555563d4b *)
sbbs carry rdx rdx r11 carry;
(* mov    0x20(%rdi),%r8                           #! EA = L0x7fffffffd490; Value = 0xc438d9d6ca440d89; PC = 0x555555563d4e *)
mov r8 L0x7fffffffd490;
(* mov    %rax,0x18(%rdi)                          #! EA = L0x7fffffffd488; PC = 0x555555563d52 *)
mov L0x7fffffffd488 rax;
(* mov    0x9943(%rip),%rax        # 0x55555556d6a0 <p610x2+32>#! EA = L0x55555556d6a0; Value = 0xdc03ffffffffffff; PC = 0x555555563d56 *)
mov rax L0x55555556d6a0;
(* mov    %rdx,%r10                                #! PC = 0x555555563d5d *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x555555563d60 *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x555555563d63 *)
split r10 dontcare r10 0x3f;
(* xor    %r9d,%r9d                                #! PC = 0x555555563d67 *)
mov r9 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x555555563d6a *)
mov rdx 0@uint64;
(* sub    %r8,%rax                                 #! PC = 0x555555563d6c *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x555555563d6f *)
sbbs carry rdx rdx r9 carry;
(* sub    %r10,%rax                                #! PC = 0x555555563d72 *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x555555563d75 *)
sbbs carry rdx rdx r11 carry;
(* mov    0x28(%rdi),%r8                           #! EA = L0x7fffffffd498; Value = 0x4f9aed3ca0d7b505; PC = 0x555555563d78 *)
mov r8 L0x7fffffffd498;
(* mov    %rax,0x20(%rdi)                          #! EA = L0x7fffffffd490; PC = 0x555555563d7c *)
mov L0x7fffffffd490 rax;
(* mov    0x9921(%rip),%rax        # 0x55555556d6a8 <p610x2+40>#! EA = L0x55555556d6a8; Value = 0x62f09bd154b5605c; PC = 0x555555563d80 *)
mov rax L0x55555556d6a8;
(* mov    %rdx,%r10                                #! PC = 0x555555563d87 *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x555555563d8a *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x555555563d8d *)
split r10 dontcare r10 0x3f;
(* xor    %r9d,%r9d                                #! PC = 0x555555563d91 *)
mov r9 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x555555563d94 *)
mov rdx 0@uint64;
(* sub    %r8,%rax                                 #! PC = 0x555555563d96 *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x555555563d99 *)
sbbs carry rdx rdx r9 carry;
(* sub    %r10,%rax                                #! PC = 0x555555563d9c *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x555555563d9f *)
sbbs carry rdx rdx r11 carry;
(* mov    0x30(%rdi),%r8                           #! EA = L0x7fffffffd4a0; Value = 0x1da85d795262a797; PC = 0x555555563da2 *)
mov r8 L0x7fffffffd4a0;
(* mov    %rax,0x28(%rdi)                          #! EA = L0x7fffffffd498; PC = 0x555555563da6 *)
mov L0x7fffffffd498 rax;
(* mov    0x98ff(%rip),%rax        # 0x55555556d6b0 <p610x2+48>#! EA = L0x55555556d6b0; Value = 0x35cf7e8a091ff357; PC = 0x555555563daa *)
mov rax L0x55555556d6b0;
(* mov    %rdx,%r10                                #! PC = 0x555555563db1 *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x555555563db4 *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x555555563db7 *)
split r10 dontcare r10 0x3f;
(* xor    %r9d,%r9d                                #! PC = 0x555555563dbb *)
mov r9 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x555555563dbe *)
mov rdx 0@uint64;
(* sub    %r8,%rax                                 #! PC = 0x555555563dc0 *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x555555563dc3 *)
sbbs carry rdx rdx r9 carry;
(* sub    %r10,%rax                                #! PC = 0x555555563dc6 *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x555555563dc9 *)
sbbs carry rdx rdx r11 carry;
(* mov    0x38(%rdi),%r8                           #! EA = L0x7fffffffd4a8; Value = 0x29db0ea0d59b4169; PC = 0x555555563dcc *)
mov r8 L0x7fffffffd4a8;
(* mov    %rax,0x30(%rdi)                          #! EA = L0x7fffffffd4a0; PC = 0x555555563dd0 *)
mov L0x7fffffffd4a0 rax;
(* mov    0x98dd(%rip),%rax        # 0x55555556d6b8 <p610x2+56>#! EA = L0x55555556d6b8; Value = 0x64ab65f421884a55; PC = 0x555555563dd4 *)
mov rax L0x55555556d6b8;
(* mov    %rdx,%r10                                #! PC = 0x555555563ddb *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x555555563dde *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x555555563de1 *)
split r10 dontcare r10 0x3f;
(* xor    %r9d,%r9d                                #! PC = 0x555555563de5 *)
mov r9 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x555555563de8 *)
mov rdx 0@uint64;
(* sub    %r8,%rax                                 #! PC = 0x555555563dea *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x555555563ded *)
sbbs carry rdx rdx r9 carry;
(* sub    %r10,%rax                                #! PC = 0x555555563df0 *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x555555563df3 *)
sbbs carry rdx rdx r11 carry;
(* mov    0x40(%rdi),%r8                           #! EA = L0x7fffffffd4b0; Value = 0xfeb62bf8f2f31f1b; PC = 0x555555563df6 *)
mov r8 L0x7fffffffd4b0;
(* mov    %rax,0x38(%rdi)                          #! EA = L0x7fffffffd4a8; PC = 0x555555563dfa *)
mov L0x7fffffffd4a8 rax;
(* mov    0x98bb(%rip),%rax        # 0x55555556d6c0 <p610x2+64>#! EA = L0x55555556d6c0; Value = 0x03202184a3cfb119; PC = 0x555555563dfe *)
mov rax L0x55555556d6c0;
(* mov    %rdx,%r10                                #! PC = 0x555555563e05 *)
mov r10 rdx;
(* shr    $0x3f,%r10                               #! PC = 0x555555563e08 *)
split r10 dontcare r10 0x3f;
(* xor    %r11d,%r11d                              #! PC = 0x555555563e0c *)
mov r11 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x555555563e0f *)
mov rdx 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x555555563e11 *)
mov r9 0@uint64;
(* sub    %r8,%rax                                 #! PC = 0x555555563e14 *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x555555563e17 *)
sbbs carry rdx rdx r9 carry;
(* sub    %r10,%rax                                #! PC = 0x555555563e1a *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x555555563e1d *)
sbbs carry rdx rdx r11 carry;
(* mov    0x48(%rdi),%r8                           #! EA = L0x7fffffffd4b8; Value = 0x000000021d9e8de0; PC = 0x555555563e20 *)
mov r8 L0x7fffffffd4b8;
(* mov    %rax,0x40(%rdi)                          #! EA = L0x7fffffffd4b0; PC = 0x555555563e24 *)
mov L0x7fffffffd4b0 rax;
(* mov    0x9899(%rip),%rax        # 0x55555556d6c8 <p610x2+72>#! EA = L0x55555556d6c8; Value = 0x00000004f7ed4ed1; PC = 0x555555563e28 *)
mov rax L0x55555556d6c8;
(* mov    %rdx,%r10                                #! PC = 0x555555563e2f *)
mov r10 rdx;
(* shr    $0x3f,%r10                               #! PC = 0x555555563e32 *)
split r10 dontcare r10 0x3f;
(* sub    %r8,%rax                                 #! PC = 0x555555563e36 *)
subb carry rax rax r8;
(* sub    %r10,%rax                                #! PC = 0x555555563e39 *)
subb carry rax rax r10;
(* mov    %rcx,(%rdi)                              #! EA = L0x7fffffffd470; PC = 0x555555563e3c *)
mov L0x7fffffffd470 rcx;
(* mov    %rax,0x48(%rdi)                          #! EA = L0x7fffffffd4b8; PC = 0x555555563e3f *)
mov L0x7fffffffd4b8 rax;
(* #! <- SP = 0x7fffffffd228 *)
#! 0x7fffffffd228 = 0x7fffffffd228;
(* #retq                                           #! PC = 0x555555563e43 *)
#retq                                           #! 0x555555563e43 = 0x555555563e43;
(* #jmpq   0x555555563cb0 <fpneg610>               #! PC = 0x555555558682 *)
#jmpq   0x555555563cb0 <fpneg610>               #! 0x555555558682 = 0x555555558682;
(* mov    0x99c5(%rip),%rcx        # 0x55555556d680 <p610x2>#! EA = L0x55555556d680; Value = 0xfffffffffffffffe; PC = 0x555555563cb4 *)
mov rcx L0x55555556d680;
(* mov    (%rdi),%rsi                              #! EA = L0x7fffffffd4c0; Value = 0x94750b2b5863cedf; PC = 0x555555563cbb *)
mov rsi L0x7fffffffd4c0;
(* mov    %rcx,%rax                                #! PC = 0x555555563cbe *)
mov rax rcx;
(* xor    %r9d,%r9d                                #! PC = 0x555555563cc1 *)
mov r9 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x555555563cc4 *)
mov rdx 0@uint64;
(* sub    %rsi,%rax                                #! PC = 0x555555563cc6 *)
subb carry rax rax rsi;
(* sbb    %r9,%rdx                                 #! PC = 0x555555563cc9 *)
sbbs carry rdx rdx r9 carry;
(* mov    %rdx,%rax                                #! PC = 0x555555563ccc *)
mov rax rdx;
(* shr    $0x3f,%rax                               #! PC = 0x555555563ccf *)
split rax dontcare rax 0x3f;
(* mov    0x8(%rdi),%r10                           #! EA = L0x7fffffffd4c8; Value = 0x3a16441fed69104d; PC = 0x555555563cd3 *)
mov r10 L0x7fffffffd4c8;
(* mov    %rax,%r8                                 #! PC = 0x555555563cd7 *)
mov r8 rax;
(* mov    0x99a7(%rip),%rax        # 0x55555556d688 <p610x2+8>#! EA = L0x55555556d688; Value = 0xffffffffffffffff; PC = 0x555555563cda *)
mov rax L0x55555556d688;
(* xor    %edx,%edx                                #! PC = 0x555555563ce1 *)
mov rdx 0@uint64;
(* mov    %rdx,%r9                                 #! PC = 0x555555563ce3 *)
mov r9 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x555555563ce6 *)
mov r11 0@uint64;
(* sub    %rsi,%rcx                                #! PC = 0x555555563ce9 *)
subb carry rcx rcx rsi;
(* xor    %edx,%edx                                #! PC = 0x555555563cec *)
mov rdx 0@uint64;
(* sub    %r10,%rax                                #! PC = 0x555555563cee *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x555555563cf1 *)
sbbs carry rdx rdx r11 carry;
(* sub    %r8,%rax                                 #! PC = 0x555555563cf4 *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x555555563cf7 *)
sbbs carry rdx rdx r9 carry;
(* mov    0x10(%rdi),%r8                           #! EA = L0x7fffffffd4d0; Value = 0x145ae2345c2c0964; PC = 0x555555563cfa *)
mov r8 L0x7fffffffd4d0;
(* mov    %rax,0x8(%rdi)                           #! EA = L0x7fffffffd4c8; PC = 0x555555563cfe *)
mov L0x7fffffffd4c8 rax;
(* mov    0x9987(%rip),%rax        # 0x55555556d690 <p610x2+16>#! EA = L0x55555556d690; Value = 0xffffffffffffffff; PC = 0x555555563d02 *)
mov rax L0x55555556d690;
(* mov    %rdx,%r10                                #! PC = 0x555555563d09 *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x555555563d0c *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x555555563d0f *)
split r10 dontcare r10 0x3f;
(* xor    %r9d,%r9d                                #! PC = 0x555555563d13 *)
mov r9 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x555555563d16 *)
mov rdx 0@uint64;
(* sub    %r8,%rax                                 #! PC = 0x555555563d18 *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x555555563d1b *)
sbbs carry rdx rdx r9 carry;
(* sub    %r10,%rax                                #! PC = 0x555555563d1e *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x555555563d21 *)
sbbs carry rdx rdx r11 carry;
(* mov    0x18(%rdi),%r8                           #! EA = L0x7fffffffd4d8; Value = 0x10fc9e31ea31f870; PC = 0x555555563d24 *)
mov r8 L0x7fffffffd4d8;
(* mov    %rax,0x10(%rdi)                          #! EA = L0x7fffffffd4d0; PC = 0x555555563d28 *)
mov L0x7fffffffd4d0 rax;
(* mov    0x9965(%rip),%rax        # 0x55555556d698 <p610x2+24>#! EA = L0x55555556d698; Value = 0xffffffffffffffff; PC = 0x555555563d2c *)
mov rax L0x55555556d698;
(* mov    %rdx,%r10                                #! PC = 0x555555563d33 *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x555555563d36 *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x555555563d39 *)
split r10 dontcare r10 0x3f;
(* xor    %r9d,%r9d                                #! PC = 0x555555563d3d *)
mov r9 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x555555563d40 *)
mov rdx 0@uint64;
(* sub    %r8,%rax                                 #! PC = 0x555555563d42 *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x555555563d45 *)
sbbs carry rdx rdx r9 carry;
(* sub    %r10,%rax                                #! PC = 0x555555563d48 *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x555555563d4b *)
sbbs carry rdx rdx r11 carry;
(* mov    0x20(%rdi),%r8                           #! EA = L0x7fffffffd4e0; Value = 0xb82cde6b98695f6c; PC = 0x555555563d4e *)
mov r8 L0x7fffffffd4e0;
(* mov    %rax,0x18(%rdi)                          #! EA = L0x7fffffffd4d8; PC = 0x555555563d52 *)
mov L0x7fffffffd4d8 rax;
(* mov    0x9943(%rip),%rax        # 0x55555556d6a0 <p610x2+32>#! EA = L0x55555556d6a0; Value = 0xdc03ffffffffffff; PC = 0x555555563d56 *)
mov rax L0x55555556d6a0;
(* mov    %rdx,%r10                                #! PC = 0x555555563d5d *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x555555563d60 *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x555555563d63 *)
split r10 dontcare r10 0x3f;
(* xor    %r9d,%r9d                                #! PC = 0x555555563d67 *)
mov r9 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x555555563d6a *)
mov rdx 0@uint64;
(* sub    %r8,%rax                                 #! PC = 0x555555563d6c *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x555555563d6f *)
sbbs carry rdx rdx r9 carry;
(* sub    %r10,%rax                                #! PC = 0x555555563d72 *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x555555563d75 *)
sbbs carry rdx rdx r11 carry;
(* mov    0x28(%rdi),%r8                           #! EA = L0x7fffffffd4e8; Value = 0x3e48bbda0ea596ef; PC = 0x555555563d78 *)
mov r8 L0x7fffffffd4e8;
(* mov    %rax,0x20(%rdi)                          #! EA = L0x7fffffffd4e0; PC = 0x555555563d7c *)
mov L0x7fffffffd4e0 rax;
(* mov    0x9921(%rip),%rax        # 0x55555556d6a8 <p610x2+40>#! EA = L0x55555556d6a8; Value = 0x62f09bd154b5605c; PC = 0x555555563d80 *)
mov rax L0x55555556d6a8;
(* mov    %rdx,%r10                                #! PC = 0x555555563d87 *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x555555563d8a *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x555555563d8d *)
split r10 dontcare r10 0x3f;
(* xor    %r9d,%r9d                                #! PC = 0x555555563d91 *)
mov r9 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x555555563d94 *)
mov rdx 0@uint64;
(* sub    %r8,%rax                                 #! PC = 0x555555563d96 *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x555555563d99 *)
sbbs carry rdx rdx r9 carry;
(* sub    %r10,%rax                                #! PC = 0x555555563d9c *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x555555563d9f *)
sbbs carry rdx rdx r11 carry;
(* mov    0x30(%rdi),%r8                           #! EA = L0x7fffffffd4f0; Value = 0xc70cf557f89b75c4; PC = 0x555555563da2 *)
mov r8 L0x7fffffffd4f0;
(* mov    %rax,0x28(%rdi)                          #! EA = L0x7fffffffd4e8; PC = 0x555555563da6 *)
mov L0x7fffffffd4e8 rax;
(* mov    0x98ff(%rip),%rax        # 0x55555556d6b0 <p610x2+48>#! EA = L0x55555556d6b0; Value = 0x35cf7e8a091ff357; PC = 0x555555563daa *)
mov rax L0x55555556d6b0;
(* mov    %rdx,%r10                                #! PC = 0x555555563db1 *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x555555563db4 *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x555555563db7 *)
split r10 dontcare r10 0x3f;
(* xor    %r9d,%r9d                                #! PC = 0x555555563dbb *)
mov r9 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x555555563dbe *)
mov rdx 0@uint64;
(* sub    %r8,%rax                                 #! PC = 0x555555563dc0 *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x555555563dc3 *)
sbbs carry rdx rdx r9 carry;
(* sub    %r10,%rax                                #! PC = 0x555555563dc6 *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x555555563dc9 *)
sbbs carry rdx rdx r11 carry;
(* mov    0x38(%rdi),%r8                           #! EA = L0x7fffffffd4f8; Value = 0x482faedc1fb23eee; PC = 0x555555563dcc *)
mov r8 L0x7fffffffd4f8;
(* mov    %rax,0x30(%rdi)                          #! EA = L0x7fffffffd4f0; PC = 0x555555563dd0 *)
mov L0x7fffffffd4f0 rax;
(* mov    0x98dd(%rip),%rax        # 0x55555556d6b8 <p610x2+56>#! EA = L0x55555556d6b8; Value = 0x64ab65f421884a55; PC = 0x555555563dd4 *)
mov rax L0x55555556d6b8;
(* mov    %rdx,%r10                                #! PC = 0x555555563ddb *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x555555563dde *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x555555563de1 *)
split r10 dontcare r10 0x3f;
(* xor    %r9d,%r9d                                #! PC = 0x555555563de5 *)
mov r9 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x555555563de8 *)
mov rdx 0@uint64;
(* sub    %r8,%rax                                 #! PC = 0x555555563dea *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x555555563ded *)
sbbs carry rdx rdx r9 carry;
(* sub    %r10,%rax                                #! PC = 0x555555563df0 *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x555555563df3 *)
sbbs carry rdx rdx r11 carry;
(* mov    0x40(%rdi),%r8                           #! EA = L0x7fffffffd500; Value = 0x66300d7778e0980d; PC = 0x555555563df6 *)
mov r8 L0x7fffffffd500;
(* mov    %rax,0x38(%rdi)                          #! EA = L0x7fffffffd4f8; PC = 0x555555563dfa *)
mov L0x7fffffffd4f8 rax;
(* mov    0x98bb(%rip),%rax        # 0x55555556d6c0 <p610x2+64>#! EA = L0x55555556d6c0; Value = 0x03202184a3cfb119; PC = 0x555555563dfe *)
mov rax L0x55555556d6c0;
(* mov    %rdx,%r10                                #! PC = 0x555555563e05 *)
mov r10 rdx;
(* shr    $0x3f,%r10                               #! PC = 0x555555563e08 *)
split r10 dontcare r10 0x3f;
(* xor    %r11d,%r11d                              #! PC = 0x555555563e0c *)
mov r11 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x555555563e0f *)
mov rdx 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x555555563e11 *)
mov r9 0@uint64;
(* sub    %r8,%rax                                 #! PC = 0x555555563e14 *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x555555563e17 *)
sbbs carry rdx rdx r9 carry;
(* sub    %r10,%rax                                #! PC = 0x555555563e1a *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x555555563e1d *)
sbbs carry rdx rdx r11 carry;
(* mov    0x48(%rdi),%r8                           #! EA = L0x7fffffffd508; Value = 0x000000007d74d5a3; PC = 0x555555563e20 *)
mov r8 L0x7fffffffd508;
(* mov    %rax,0x40(%rdi)                          #! EA = L0x7fffffffd500; PC = 0x555555563e24 *)
mov L0x7fffffffd500 rax;
(* mov    0x9899(%rip),%rax        # 0x55555556d6c8 <p610x2+72>#! EA = L0x55555556d6c8; Value = 0x00000004f7ed4ed1; PC = 0x555555563e28 *)
mov rax L0x55555556d6c8;
(* mov    %rdx,%r10                                #! PC = 0x555555563e2f *)
mov r10 rdx;
(* shr    $0x3f,%r10                               #! PC = 0x555555563e32 *)
split r10 dontcare r10 0x3f;
(* sub    %r8,%rax                                 #! PC = 0x555555563e36 *)
subb carry rax rax r8;
(* sub    %r10,%rax                                #! PC = 0x555555563e39 *)
subb carry rax rax r10;
(* mov    %rcx,(%rdi)                              #! EA = L0x7fffffffd4c0; PC = 0x555555563e3c *)
mov L0x7fffffffd4c0 rcx;
(* mov    %rax,0x48(%rdi)                          #! EA = L0x7fffffffd508; PC = 0x555555563e3f *)
mov L0x7fffffffd508 rax;
(* #! <- SP = 0x7fffffffd238 *)
#! 0x7fffffffd238 = 0x7fffffffd238;
(* #retq                                           #! PC = 0x555555563e43 *)
#retq                                           #! 0x555555563e43 = 0x555555563e43;

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
      (0@640 - limbs 64 [ a00, a01, a02, a03, a04, a05, a06, a07, a08, a09 ])
      (limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64,
                  $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ]),
    eqsmod
      (limbs 64 [ c10, c11, c12, c13, c14, c15, c16, c17, c18, c19 ])
      (0@640 - limbs 64 [ a10, a11, a12, a13, a14, a15, a16, a17, a18, a19 ])
      (limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64,
                  $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ]),
    1@640 <=u limbs 64 [c00, c01, c02, c03, c04, c05, c06, c07, c08, c09],
    limbs 64 [c00, c01, c02, c03, c04, c05, c06, c07, c08, c09] <=u
      (2@640 * limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64,
                          $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ]),
    1@640 <=u limbs 64 [c10, c11, c12, c13, c14, c15, c16, c17, c18, c19],
    limbs 64 [c10, c11, c12, c13, c14, c15, c16, c17, c18, c19] <=u
      (2@640 * limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64,
                          $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ])
  ]
}
