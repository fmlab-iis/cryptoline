(* on frege: -v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint fp2neg751.cl
Parsing Cryptoline file:		[OK]		0.007069 seconds
Checking well-formedness:		[OK]		0.000713 seconds
Transforming to SSA form:		[OK]		0.000991 seconds
Normalizing specification:		[OK]		0.000251 seconds
Rewriting assignments:			[OK]		0.000344 seconds
Verifying program safety:
	 Cut 0
	     Round 1 (0 safety conditions, timeout = 14400 seconds)
	 Overall			[OK]		0.000141 seconds
Verifying range specification:		[OK]		5.960337 seconds
Rewriting value-preserved casting:	[OK]		0.000061 seconds
Verifying algebraic specification:	[OK]		0.000424 seconds
Verification result:			[OK]		5.970970 seconds
*)

(*
const uint64_t p751[NWORDS64_FIELD]              = { 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xEEAFFFFFFFFFFFFF,
                                                     0xE3EC968549F878A8, 0xDA959B1A13F7CC76, 0x084E9867D6EBE876, 0x8562B5045CB25748, 0x0E12909F97BADC66, 0x00006FE5D541F71C };
const uint64_t p751x2[NWORDS64_FIELD]            = { 0xFFFFFFFFFFFFFFFE, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xDD5FFFFFFFFFFFFF,
                                                     0xC7D92D0A93F0F151, 0xB52B363427EF98ED, 0x109D30CFADD7D0ED, 0x0AC56A08B964AE90, 0x1C25213F2F75B8CD, 0x0000DFCBAA83EE38 };
*)

const p751_0 = 0xFFFFFFFFFFFFFFFF
const p751_1 = 0xFFFFFFFFFFFFFFFF
const p751_2 = 0xFFFFFFFFFFFFFFFF
const p751_3 = 0xFFFFFFFFFFFFFFFF
const p751_4 = 0xFFFFFFFFFFFFFFFF
const p751_5 = 0xEEAFFFFFFFFFFFFF
const p751_6 = 0xE3EC968549F878A8
const p751_7 = 0xDA959B1A13F7CC76
const p751_8 = 0x084E9867D6EBE876
const p751_9 = 0x8562B5045CB25748
const p751_a = 0x0E12909F97BADC66
const p751_b = 0x00006FE5D541F71C

const p751x2_0 = 0xFFFFFFFFFFFFFFFE
const p751x2_1 = 0xFFFFFFFFFFFFFFFF
const p751x2_2 = 0xFFFFFFFFFFFFFFFF
const p751x2_3 = 0xFFFFFFFFFFFFFFFF
const p751x2_4 = 0xFFFFFFFFFFFFFFFF
const p751x2_5 = 0xDD5FFFFFFFFFFFFF
const p751x2_6 = 0xC7D92D0A93F0F151
const p751x2_7 = 0xB52B363427EF98ED
const p751x2_8 = 0x109D30CFADD7D0ED
const p751x2_9 = 0x0AC56A08B964AE90
const p751x2_a = 0x1C25213F2F75B8CD
const p751x2_b = 0x0000DFCBAA83EE38

proc main (a0_00@uint64, a0_01@uint64, a0_02@uint64, a0_03@uint64, a0_04@uint64, a0_05@uint64, a0_06@uint64, a0_07@uint64, a0_08@uint64, a0_09@uint64, a0_10@uint64, a0_11@uint64,
           a1_00@uint64, a1_01@uint64, a1_02@uint64, a1_03@uint64, a1_04@uint64, a1_05@uint64, a1_06@uint64, a1_07@uint64, a1_08@uint64, a1_09@uint64, a1_10@uint64, a1_11@uint64) =
{
  true
  &&
  and [
    limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ] <=u
      (2@768 * limbs 64 [ $p751_0@64, $p751_1@64, $p751_2@64, $p751_3@64, $p751_4@64, $p751_5@64, $p751_6@64, $p751_7@64, $p751_8@64, $p751_9@64, $p751_a@64, $p751_b@64 ] - 1@768),
    limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ] <=u
      (2@768 * limbs 64 [ $p751_0@64, $p751_1@64, $p751_2@64, $p751_3@64, $p751_4@64, $p751_5@64, $p751_6@64, $p751_7@64, $p751_8@64, $p751_9@64, $p751_a@64, $p751_b@64 ] - 1@768)
  ]
}

(* ===== Initialization ===== *)

mov L0x7fffffffd7f0 a0_00;
mov L0x7fffffffd7f8 a0_01;
mov L0x7fffffffd800 a0_02;
mov L0x7fffffffd808 a0_03;
mov L0x7fffffffd810 a0_04;
mov L0x7fffffffd818 a0_05;
mov L0x7fffffffd820 a0_06;
mov L0x7fffffffd828 a0_07;
mov L0x7fffffffd830 a0_08;
mov L0x7fffffffd838 a0_09;
mov L0x7fffffffd840 a0_10;
mov L0x7fffffffd848 a0_11;

mov L0x7fffffffd850 a1_00;
mov L0x7fffffffd858 a1_01;
mov L0x7fffffffd860 a1_02;
mov L0x7fffffffd868 a1_03;
mov L0x7fffffffd870 a1_04;
mov L0x7fffffffd878 a1_05;
mov L0x7fffffffd880 a1_06;
mov L0x7fffffffd888 a1_07;
mov L0x7fffffffd890 a1_08;
mov L0x7fffffffd898 a1_09;
mov L0x7fffffffd8a0 a1_10;
mov L0x7fffffffd8a8 a1_11;

mov L0x55555556a8a0 $p751x2_0@uint64;
mov L0x55555556a8a8 $p751x2_1@uint64;
mov L0x55555556a8b0 $p751x2_2@uint64;
mov L0x55555556a8b8 $p751x2_3@uint64;
mov L0x55555556a8c0 $p751x2_4@uint64;
mov L0x55555556a8c8 $p751x2_5@uint64;
mov L0x55555556a8d0 $p751x2_6@uint64;
mov L0x55555556a8d8 $p751x2_7@uint64;
mov L0x55555556a8e0 $p751x2_8@uint64;
mov L0x55555556a8e8 $p751x2_9@uint64;
mov L0x55555556a8f0 $p751x2_a@uint64;
mov L0x55555556a8f8 $p751x2_b@uint64;

nondet rdi@uint64;

(* ===== Program ===== *)

(* #! -> SP = 0x7fffffffd558 *)
#! 0x7fffffffd558 = 0x7fffffffd558;
(* mov    %rdi,%rbx                                #! PC = 0x555555558b05 *)
mov rbx rdi;
(* #callq  0x555555564880 <fpneg751>               #! PC = 0x555555558b08 *)
#callq  0x555555564880 <fpneg751>               #! 0x555555558b08 = 0x555555558b08;
(* #! -> SP = 0x7fffffffd548 *)
#! 0x7fffffffd548 = 0x7fffffffd548;
(* mov    0x6015(%rip),%rcx        # 0x55555556a8a0 <p751x2>#! EA = L0x55555556a8a0; Value = 0xfffffffffffffffe; PC = 0x555555564884 *)
mov rcx L0x55555556a8a0;
(* mov    (%rdi),%rsi                              #! EA = L0x7fffffffd7f0; Value = 0xcf84246d5a43c63f; PC = 0x55555556488b *)
mov rsi L0x7fffffffd7f0;
(* mov    %rcx,%rax                                #! PC = 0x55555556488e *)
mov rax rcx;
(* xor    %r9d,%r9d                                #! PC = 0x555555564891 *)
mov r9 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x555555564894 *)
mov rdx 0@uint64;
(* sub    %rsi,%rax                                #! PC = 0x555555564896 *)
subb carry rax rax rsi;
(* sbb    %r9,%rdx                                 #! PC = 0x555555564899 *)
sbbs carry rdx rdx r9 carry;
(* mov    %rdx,%rax                                #! PC = 0x55555556489c *)
mov rax rdx;
(* shr    $0x3f,%rax                               #! PC = 0x55555556489f *)
shrs rax dontcare rax 0x3f;
(* mov    0x8(%rdi),%r10                           #! EA = L0x7fffffffd7f8; Value = 0x9b8671400ed9a445; PC = 0x5555555648a3 *)
mov r10 L0x7fffffffd7f8;
(* mov    %rax,%r8                                 #! PC = 0x5555555648a7 *)
mov r8 rax;
(* mov    0x5ff7(%rip),%rax        # 0x55555556a8a8 <p751x2+8>#! EA = L0x55555556a8a8; Value = 0xffffffffffffffff; PC = 0x5555555648aa *)
mov rax L0x55555556a8a8;
(* xor    %edx,%edx                                #! PC = 0x5555555648b1 *)
mov rdx 0@uint64;
(* mov    %rdx,%r9                                 #! PC = 0x5555555648b3 *)
mov r9 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x5555555648b6 *)
mov r11 0@uint64;
(* sub    %rsi,%rcx                                #! PC = 0x5555555648b9 *)
subb carry rcx rcx rsi;
(* xor    %edx,%edx                                #! PC = 0x5555555648bc *)
mov rdx 0@uint64;
(* sub    %r10,%rax                                #! PC = 0x5555555648be *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x5555555648c1 *)
sbbs carry rdx rdx r11 carry;
(* sub    %r8,%rax                                 #! PC = 0x5555555648c4 *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x5555555648c7 *)
sbbs carry rdx rdx r9 carry;
(* mov    0x10(%rdi),%r8                           #! EA = L0x7fffffffd800; Value = 0x71667993f99ac2a2; PC = 0x5555555648ca *)
mov r8 L0x7fffffffd800;
(* mov    %rax,0x8(%rdi)                           #! EA = L0x7fffffffd7f8; PC = 0x5555555648ce *)
mov L0x7fffffffd7f8 rax;
(* mov    0x5fd7(%rip),%rax        # 0x55555556a8b0 <p751x2+16>#! EA = L0x55555556a8b0; Value = 0xffffffffffffffff; PC = 0x5555555648d2 *)
mov rax L0x55555556a8b0;
(* mov    %rdx,%r10                                #! PC = 0x5555555648d9 *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x5555555648dc *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x5555555648df *)
shrs r10 dontcare r10 0x3f;
(* xor    %r9d,%r9d                                #! PC = 0x5555555648e3 *)
mov r9 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x5555555648e6 *)
mov rdx 0@uint64;
(* sub    %r8,%rax                                 #! PC = 0x5555555648e8 *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x5555555648eb *)
sbbs carry rdx rdx r9 carry;
(* sub    %r10,%rax                                #! PC = 0x5555555648ee *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x5555555648f1 *)
sbbs carry rdx rdx r11 carry;
(* mov    0x18(%rdi),%r8                           #! EA = L0x7fffffffd808; Value = 0xd62cb596738bf766; PC = 0x5555555648f4 *)
mov r8 L0x7fffffffd808;
(* mov    %rax,0x10(%rdi)                          #! EA = L0x7fffffffd800; PC = 0x5555555648f8 *)
mov L0x7fffffffd800 rax;
(* mov    0x5fb5(%rip),%rax        # 0x55555556a8b8 <p751x2+24>#! EA = L0x55555556a8b8; Value = 0xffffffffffffffff; PC = 0x5555555648fc *)
mov rax L0x55555556a8b8;
(* mov    %rdx,%r10                                #! PC = 0x555555564903 *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x555555564906 *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x555555564909 *)
shrs r10 dontcare r10 0x3f;
(* xor    %r9d,%r9d                                #! PC = 0x55555556490d *)
mov r9 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x555555564910 *)
mov rdx 0@uint64;
(* sub    %r8,%rax                                 #! PC = 0x555555564912 *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x555555564915 *)
sbbs carry rdx rdx r9 carry;
(* sub    %r10,%rax                                #! PC = 0x555555564918 *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x55555556491b *)
sbbs carry rdx rdx r11 carry;
(* mov    0x20(%rdi),%r8                           #! EA = L0x7fffffffd810; Value = 0xd8b7b493e8306f7b; PC = 0x55555556491e *)
mov r8 L0x7fffffffd810;
(* mov    %rax,0x18(%rdi)                          #! EA = L0x7fffffffd808; PC = 0x555555564922 *)
mov L0x7fffffffd808 rax;
(* mov    0x5f93(%rip),%rax        # 0x55555556a8c0 <p751x2+32>#! EA = L0x55555556a8c0; Value = 0xffffffffffffffff; PC = 0x555555564926 *)
mov rax L0x55555556a8c0;
(* mov    %rdx,%r10                                #! PC = 0x55555556492d *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x555555564930 *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x555555564933 *)
shrs r10 dontcare r10 0x3f;
(* xor    %r9d,%r9d                                #! PC = 0x555555564937 *)
mov r9 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x55555556493a *)
mov rdx 0@uint64;
(* sub    %r8,%rax                                 #! PC = 0x55555556493c *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x55555556493f *)
sbbs carry rdx rdx r9 carry;
(* sub    %r10,%rax                                #! PC = 0x555555564942 *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x555555564945 *)
sbbs carry rdx rdx r11 carry;
(* mov    0x28(%rdi),%r8                           #! EA = L0x7fffffffd818; Value = 0xa4346c0299e69158; PC = 0x555555564948 *)
mov r8 L0x7fffffffd818;
(* mov    %rax,0x20(%rdi)                          #! EA = L0x7fffffffd810; PC = 0x55555556494c *)
mov L0x7fffffffd810 rax;
(* mov    0x5f71(%rip),%rax        # 0x55555556a8c8 <p751x2+40>#! EA = L0x55555556a8c8; Value = 0xdd5fffffffffffff; PC = 0x555555564950 *)
mov rax L0x55555556a8c8;
(* mov    %rdx,%r10                                #! PC = 0x555555564957 *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x55555556495a *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x55555556495d *)
shrs r10 dontcare r10 0x3f;
(* xor    %r9d,%r9d                                #! PC = 0x555555564961 *)
mov r9 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x555555564964 *)
mov rdx 0@uint64;
(* sub    %r8,%rax                                 #! PC = 0x555555564966 *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x555555564969 *)
sbbs carry rdx rdx r9 carry;
(* sub    %r10,%rax                                #! PC = 0x55555556496c *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x55555556496f *)
sbbs carry rdx rdx r11 carry;
(* mov    0x30(%rdi),%r8                           #! EA = L0x7fffffffd820; Value = 0xad330347c29dce2e; PC = 0x555555564972 *)
mov r8 L0x7fffffffd820;
(* mov    %rax,0x28(%rdi)                          #! EA = L0x7fffffffd818; PC = 0x555555564976 *)
mov L0x7fffffffd818 rax;
(* mov    0x5f4f(%rip),%rax        # 0x55555556a8d0 <p751x2+48>#! EA = L0x55555556a8d0; Value = 0xc7d92d0a93f0f151; PC = 0x55555556497a *)
mov rax L0x55555556a8d0;
(* mov    %rdx,%r10                                #! PC = 0x555555564981 *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x555555564984 *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x555555564987 *)
shrs r10 dontcare r10 0x3f;
(* xor    %r9d,%r9d                                #! PC = 0x55555556498b *)
mov r9 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x55555556498e *)
mov rdx 0@uint64;
(* sub    %r8,%rax                                 #! PC = 0x555555564990 *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x555555564993 *)
sbbs carry rdx rdx r9 carry;
(* sub    %r10,%rax                                #! PC = 0x555555564996 *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x555555564999 *)
sbbs carry rdx rdx r11 carry;
(* mov    0x38(%rdi),%r8                           #! EA = L0x7fffffffd828; Value = 0xee674d739121befa; PC = 0x55555556499c *)
mov r8 L0x7fffffffd828;
(* mov    %rax,0x30(%rdi)                          #! EA = L0x7fffffffd820; PC = 0x5555555649a0 *)
mov L0x7fffffffd820 rax;
(* mov    0x5f2d(%rip),%rax        # 0x55555556a8d8 <p751x2+56>#! EA = L0x55555556a8d8; Value = 0xb52b363427ef98ed; PC = 0x5555555649a4 *)
mov rax L0x55555556a8d8;
(* mov    %rdx,%r10                                #! PC = 0x5555555649ab *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x5555555649ae *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x5555555649b1 *)
shrs r10 dontcare r10 0x3f;
(* xor    %r9d,%r9d                                #! PC = 0x5555555649b5 *)
mov r9 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x5555555649b8 *)
mov rdx 0@uint64;
(* sub    %r8,%rax                                 #! PC = 0x5555555649ba *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x5555555649bd *)
sbbs carry rdx rdx r9 carry;
(* sub    %r10,%rax                                #! PC = 0x5555555649c0 *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x5555555649c3 *)
sbbs carry rdx rdx r11 carry;
(* mov    0x40(%rdi),%r8                           #! EA = L0x7fffffffd830; Value = 0xa4288e4b50d697bc; PC = 0x5555555649c6 *)
mov r8 L0x7fffffffd830;
(* mov    %rax,0x38(%rdi)                          #! EA = L0x7fffffffd828; PC = 0x5555555649ca *)
mov L0x7fffffffd828 rax;
(* mov    0x5f0b(%rip),%rax        # 0x55555556a8e0 <p751x2+64>#! EA = L0x55555556a8e0; Value = 0x109d30cfadd7d0ed; PC = 0x5555555649ce *)
mov rax L0x55555556a8e0;
(* mov    %rdx,%r10                                #! PC = 0x5555555649d5 *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x5555555649d8 *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x5555555649db *)
shrs r10 dontcare r10 0x3f;
(* xor    %r9d,%r9d                                #! PC = 0x5555555649df *)
mov r9 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x5555555649e2 *)
mov rdx 0@uint64;
(* sub    %r8,%rax                                 #! PC = 0x5555555649e4 *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x5555555649e7 *)
sbbs carry rdx rdx r9 carry;
(* sub    %r10,%rax                                #! PC = 0x5555555649ea *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x5555555649ed *)
sbbs carry rdx rdx r11 carry;
(* mov    0x48(%rdi),%r8                           #! EA = L0x7fffffffd838; Value = 0xaac5717b213d0f1f; PC = 0x5555555649f0 *)
mov r8 L0x7fffffffd838;
(* mov    %rax,0x40(%rdi)                          #! EA = L0x7fffffffd830; PC = 0x5555555649f4 *)
mov L0x7fffffffd830 rax;
(* mov    0x5ee9(%rip),%rax        # 0x55555556a8e8 <p751x2+72>#! EA = L0x55555556a8e8; Value = 0x0ac56a08b964ae90; PC = 0x5555555649f8 *)
mov rax L0x55555556a8e8;
(* mov    %rdx,%r10                                #! PC = 0x5555555649ff *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x555555564a02 *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x555555564a05 *)
shrs r10 dontcare r10 0x3f;
(* xor    %r9d,%r9d                                #! PC = 0x555555564a09 *)
mov r9 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x555555564a0c *)
mov rdx 0@uint64;
(* sub    %r8,%rax                                 #! PC = 0x555555564a0e *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x555555564a11 *)
sbbs carry rdx rdx r9 carry;
(* sub    %r10,%rax                                #! PC = 0x555555564a14 *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x555555564a17 *)
sbbs carry rdx rdx r11 carry;
(* mov    0x50(%rdi),%r8                           #! EA = L0x7fffffffd840; Value = 0x61359f66876c6340; PC = 0x555555564a1a *)
mov r8 L0x7fffffffd840;
(* mov    %rax,0x48(%rdi)                          #! EA = L0x7fffffffd838; PC = 0x555555564a1e *)
mov L0x7fffffffd838 rax;
(* mov    0x5ec7(%rip),%rax        # 0x55555556a8f0 <p751x2+80>#! EA = L0x55555556a8f0; Value = 0x1c25213f2f75b8cd; PC = 0x555555564a22 *)
mov rax L0x55555556a8f0;
(* mov    %rdx,%r10                                #! PC = 0x555555564a29 *)
mov r10 rdx;
(* shr    $0x3f,%r10                               #! PC = 0x555555564a2c *)
shrs r10 dontcare r10 0x3f;
(* xor    %r11d,%r11d                              #! PC = 0x555555564a30 *)
mov r11 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x555555564a33 *)
mov rdx 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x555555564a35 *)
mov r9 0@uint64;
(* sub    %r8,%rax                                 #! PC = 0x555555564a38 *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x555555564a3b *)
sbbs carry rdx rdx r9 carry;
(* sub    %r10,%rax                                #! PC = 0x555555564a3e *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x555555564a41 *)
sbbs carry rdx rdx r11 carry;
(* mov    %rcx,(%rdi)                              #! EA = L0x7fffffffd7f0; PC = 0x555555564a44 *)
mov L0x7fffffffd7f0 rcx;
(* mov    %rax,0x50(%rdi)                          #! EA = L0x7fffffffd840; PC = 0x555555564a47 *)
mov L0x7fffffffd840 rax;
(* mov    0x58(%rdi),%r8                           #! EA = L0x7fffffffd848; Value = 0x000059a3d1f2565d; PC = 0x555555564a4b *)
mov r8 L0x7fffffffd848;
(* mov    0x5ea2(%rip),%rax        # 0x55555556a8f8 <p751x2+88>#! EA = L0x55555556a8f8; Value = 0x0000dfcbaa83ee38; PC = 0x555555564a4f *)
mov rax L0x55555556a8f8;
(* mov    %rdx,%r10                                #! PC = 0x555555564a56 *)
mov r10 rdx;
(* shr    $0x3f,%r10                               #! PC = 0x555555564a59 *)
shrs r10 dontcare r10 0x3f;
(* sub    %r8,%rax                                 #! PC = 0x555555564a5d *)
subb carry rax rax r8;
(* sub    %r10,%rax                                #! PC = 0x555555564a60 *)
subb carry rax rax r10;
(* mov    %rax,0x58(%rdi)                          #! EA = L0x7fffffffd848; PC = 0x555555564a63 *)
mov L0x7fffffffd848 rax;
(* #! <- SP = 0x7fffffffd548 *)
#! 0x7fffffffd548 = 0x7fffffffd548;
(* #retq                                           #! PC = 0x555555564a67 *)
#retq                                           #! 0x555555564a67 = 0x555555564a67;
(* #jmpq   0x555555564880 <fpneg751>               #! PC = 0x555555558b12 *)
#jmpq   0x555555564880 <fpneg751>               #! 0x555555558b12 = 0x555555558b12;
(* mov    0x6015(%rip),%rcx        # 0x55555556a8a0 <p751x2>#! EA = L0x55555556a8a0; Value = 0xfffffffffffffffe; PC = 0x555555564884 *)
mov rcx L0x55555556a8a0;
(* mov    (%rdi),%rsi                              #! EA = L0x7fffffffd850; Value = 0x43dfd8243baf96f0; PC = 0x55555556488b *)
mov rsi L0x7fffffffd850;
(* mov    %rcx,%rax                                #! PC = 0x55555556488e *)
mov rax rcx;
(* xor    %r9d,%r9d                                #! PC = 0x555555564891 *)
mov r9 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x555555564894 *)
mov rdx 0@uint64;
(* sub    %rsi,%rax                                #! PC = 0x555555564896 *)
subb carry rax rax rsi;
(* sbb    %r9,%rdx                                 #! PC = 0x555555564899 *)
sbbs carry rdx rdx r9 carry;
(* mov    %rdx,%rax                                #! PC = 0x55555556489c *)
mov rax rdx;
(* shr    $0x3f,%rax                               #! PC = 0x55555556489f *)
shrs rax dontcare rax 0x3f;
(* mov    0x8(%rdi),%r10                           #! EA = L0x7fffffffd858; Value = 0xce0c298e62641ce7; PC = 0x5555555648a3 *)
mov r10 L0x7fffffffd858;
(* mov    %rax,%r8                                 #! PC = 0x5555555648a7 *)
mov r8 rax;
(* mov    0x5ff7(%rip),%rax        # 0x55555556a8a8 <p751x2+8>#! EA = L0x55555556a8a8; Value = 0xffffffffffffffff; PC = 0x5555555648aa *)
mov rax L0x55555556a8a8;
(* xor    %edx,%edx                                #! PC = 0x5555555648b1 *)
mov rdx 0@uint64;
(* mov    %rdx,%r9                                 #! PC = 0x5555555648b3 *)
mov r9 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x5555555648b6 *)
mov r11 0@uint64;
(* sub    %rsi,%rcx                                #! PC = 0x5555555648b9 *)
subb carry rcx rcx rsi;
(* xor    %edx,%edx                                #! PC = 0x5555555648bc *)
mov rdx 0@uint64;
(* sub    %r10,%rax                                #! PC = 0x5555555648be *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x5555555648c1 *)
sbbs carry rdx rdx r11 carry;
(* sub    %r8,%rax                                 #! PC = 0x5555555648c4 *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x5555555648c7 *)
sbbs carry rdx rdx r9 carry;
(* mov    0x10(%rdi),%r8                           #! EA = L0x7fffffffd860; Value = 0x75548a17f355788c; PC = 0x5555555648ca *)
mov r8 L0x7fffffffd860;
(* mov    %rax,0x8(%rdi)                           #! EA = L0x7fffffffd858; PC = 0x5555555648ce *)
mov L0x7fffffffd858 rax;
(* mov    0x5fd7(%rip),%rax        # 0x55555556a8b0 <p751x2+16>#! EA = L0x55555556a8b0; Value = 0xffffffffffffffff; PC = 0x5555555648d2 *)
mov rax L0x55555556a8b0;
(* mov    %rdx,%r10                                #! PC = 0x5555555648d9 *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x5555555648dc *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x5555555648df *)
shrs r10 dontcare r10 0x3f;
(* xor    %r9d,%r9d                                #! PC = 0x5555555648e3 *)
mov r9 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x5555555648e6 *)
mov rdx 0@uint64;
(* sub    %r8,%rax                                 #! PC = 0x5555555648e8 *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x5555555648eb *)
sbbs carry rdx rdx r9 carry;
(* sub    %r10,%rax                                #! PC = 0x5555555648ee *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x5555555648f1 *)
sbbs carry rdx rdx r11 carry;
(* mov    0x18(%rdi),%r8                           #! EA = L0x7fffffffd868; Value = 0x8fe3059f834646e0; PC = 0x5555555648f4 *)
mov r8 L0x7fffffffd868;
(* mov    %rax,0x10(%rdi)                          #! EA = L0x7fffffffd860; PC = 0x5555555648f8 *)
mov L0x7fffffffd860 rax;
(* mov    0x5fb5(%rip),%rax        # 0x55555556a8b8 <p751x2+24>#! EA = L0x55555556a8b8; Value = 0xffffffffffffffff; PC = 0x5555555648fc *)
mov rax L0x55555556a8b8;
(* mov    %rdx,%r10                                #! PC = 0x555555564903 *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x555555564906 *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x555555564909 *)
shrs r10 dontcare r10 0x3f;
(* xor    %r9d,%r9d                                #! PC = 0x55555556490d *)
mov r9 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x555555564910 *)
mov rdx 0@uint64;
(* sub    %r8,%rax                                 #! PC = 0x555555564912 *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x555555564915 *)
sbbs carry rdx rdx r9 carry;
(* sub    %r10,%rax                                #! PC = 0x555555564918 *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x55555556491b *)
sbbs carry rdx rdx r11 carry;
(* mov    0x20(%rdi),%r8                           #! EA = L0x7fffffffd870; Value = 0x5102aa6abfca929b; PC = 0x55555556491e *)
mov r8 L0x7fffffffd870;
(* mov    %rax,0x18(%rdi)                          #! EA = L0x7fffffffd868; PC = 0x555555564922 *)
mov L0x7fffffffd868 rax;
(* mov    0x5f93(%rip),%rax        # 0x55555556a8c0 <p751x2+32>#! EA = L0x55555556a8c0; Value = 0xffffffffffffffff; PC = 0x555555564926 *)
mov rax L0x55555556a8c0;
(* mov    %rdx,%r10                                #! PC = 0x55555556492d *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x555555564930 *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x555555564933 *)
shrs r10 dontcare r10 0x3f;
(* xor    %r9d,%r9d                                #! PC = 0x555555564937 *)
mov r9 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x55555556493a *)
mov rdx 0@uint64;
(* sub    %r8,%rax                                 #! PC = 0x55555556493c *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x55555556493f *)
sbbs carry rdx rdx r9 carry;
(* sub    %r10,%rax                                #! PC = 0x555555564942 *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x555555564945 *)
sbbs carry rdx rdx r11 carry;
(* mov    0x28(%rdi),%r8                           #! EA = L0x7fffffffd878; Value = 0x1c22c09054b466c6; PC = 0x555555564948 *)
mov r8 L0x7fffffffd878;
(* mov    %rax,0x20(%rdi)                          #! EA = L0x7fffffffd870; PC = 0x55555556494c *)
mov L0x7fffffffd870 rax;
(* mov    0x5f71(%rip),%rax        # 0x55555556a8c8 <p751x2+40>#! EA = L0x55555556a8c8; Value = 0xdd5fffffffffffff; PC = 0x555555564950 *)
mov rax L0x55555556a8c8;
(* mov    %rdx,%r10                                #! PC = 0x555555564957 *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x55555556495a *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x55555556495d *)
shrs r10 dontcare r10 0x3f;
(* xor    %r9d,%r9d                                #! PC = 0x555555564961 *)
mov r9 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x555555564964 *)
mov rdx 0@uint64;
(* sub    %r8,%rax                                 #! PC = 0x555555564966 *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x555555564969 *)
sbbs carry rdx rdx r9 carry;
(* sub    %r10,%rax                                #! PC = 0x55555556496c *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x55555556496f *)
sbbs carry rdx rdx r11 carry;
(* mov    0x30(%rdi),%r8                           #! EA = L0x7fffffffd880; Value = 0xe3c56302500f7839; PC = 0x555555564972 *)
mov r8 L0x7fffffffd880;
(* mov    %rax,0x28(%rdi)                          #! EA = L0x7fffffffd878; PC = 0x555555564976 *)
mov L0x7fffffffd878 rax;
(* mov    0x5f4f(%rip),%rax        # 0x55555556a8d0 <p751x2+48>#! EA = L0x55555556a8d0; Value = 0xc7d92d0a93f0f151; PC = 0x55555556497a *)
mov rax L0x55555556a8d0;
(* mov    %rdx,%r10                                #! PC = 0x555555564981 *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x555555564984 *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x555555564987 *)
shrs r10 dontcare r10 0x3f;
(* xor    %r9d,%r9d                                #! PC = 0x55555556498b *)
mov r9 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x55555556498e *)
mov rdx 0@uint64;
(* sub    %r8,%rax                                 #! PC = 0x555555564990 *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x555555564993 *)
sbbs carry rdx rdx r9 carry;
(* sub    %r10,%rax                                #! PC = 0x555555564996 *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x555555564999 *)
sbbs carry rdx rdx r11 carry;
(* mov    0x38(%rdi),%r8                           #! EA = L0x7fffffffd888; Value = 0xacd7491148660ba9; PC = 0x55555556499c *)
mov r8 L0x7fffffffd888;
(* mov    %rax,0x30(%rdi)                          #! EA = L0x7fffffffd880; PC = 0x5555555649a0 *)
mov L0x7fffffffd880 rax;
(* mov    0x5f2d(%rip),%rax        # 0x55555556a8d8 <p751x2+56>#! EA = L0x55555556a8d8; Value = 0xb52b363427ef98ed; PC = 0x5555555649a4 *)
mov rax L0x55555556a8d8;
(* mov    %rdx,%r10                                #! PC = 0x5555555649ab *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x5555555649ae *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x5555555649b1 *)
shrs r10 dontcare r10 0x3f;
(* xor    %r9d,%r9d                                #! PC = 0x5555555649b5 *)
mov r9 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x5555555649b8 *)
mov rdx 0@uint64;
(* sub    %r8,%rax                                 #! PC = 0x5555555649ba *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x5555555649bd *)
sbbs carry rdx rdx r9 carry;
(* sub    %r10,%rax                                #! PC = 0x5555555649c0 *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x5555555649c3 *)
sbbs carry rdx rdx r11 carry;
(* mov    0x40(%rdi),%r8                           #! EA = L0x7fffffffd890; Value = 0x12986e4c466ca2dc; PC = 0x5555555649c6 *)
mov r8 L0x7fffffffd890;
(* mov    %rax,0x38(%rdi)                          #! EA = L0x7fffffffd888; PC = 0x5555555649ca *)
mov L0x7fffffffd888 rax;
(* mov    0x5f0b(%rip),%rax        # 0x55555556a8e0 <p751x2+64>#! EA = L0x55555556a8e0; Value = 0x109d30cfadd7d0ed; PC = 0x5555555649ce *)
mov rax L0x55555556a8e0;
(* mov    %rdx,%r10                                #! PC = 0x5555555649d5 *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x5555555649d8 *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x5555555649db *)
shrs r10 dontcare r10 0x3f;
(* xor    %r9d,%r9d                                #! PC = 0x5555555649df *)
mov r9 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x5555555649e2 *)
mov rdx 0@uint64;
(* sub    %r8,%rax                                 #! PC = 0x5555555649e4 *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x5555555649e7 *)
sbbs carry rdx rdx r9 carry;
(* sub    %r10,%rax                                #! PC = 0x5555555649ea *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x5555555649ed *)
sbbs carry rdx rdx r11 carry;
(* mov    0x48(%rdi),%r8                           #! EA = L0x7fffffffd898; Value = 0x4581890c65674cd5; PC = 0x5555555649f0 *)
mov r8 L0x7fffffffd898;
(* mov    %rax,0x40(%rdi)                          #! EA = L0x7fffffffd890; PC = 0x5555555649f4 *)
mov L0x7fffffffd890 rax;
(* mov    0x5ee9(%rip),%rax        # 0x55555556a8e8 <p751x2+72>#! EA = L0x55555556a8e8; Value = 0x0ac56a08b964ae90; PC = 0x5555555649f8 *)
mov rax L0x55555556a8e8;
(* mov    %rdx,%r10                                #! PC = 0x5555555649ff *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x555555564a02 *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x555555564a05 *)
shrs r10 dontcare r10 0x3f;
(* xor    %r9d,%r9d                                #! PC = 0x555555564a09 *)
mov r9 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x555555564a0c *)
mov rdx 0@uint64;
(* sub    %r8,%rax                                 #! PC = 0x555555564a0e *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x555555564a11 *)
sbbs carry rdx rdx r9 carry;
(* sub    %r10,%rax                                #! PC = 0x555555564a14 *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x555555564a17 *)
sbbs carry rdx rdx r11 carry;
(* mov    0x50(%rdi),%r8                           #! EA = L0x7fffffffd8a0; Value = 0x9ee75bf404969101; PC = 0x555555564a1a *)
mov r8 L0x7fffffffd8a0;
(* mov    %rax,0x48(%rdi)                          #! EA = L0x7fffffffd898; PC = 0x555555564a1e *)
mov L0x7fffffffd898 rax;
(* mov    0x5ec7(%rip),%rax        # 0x55555556a8f0 <p751x2+80>#! EA = L0x55555556a8f0; Value = 0x1c25213f2f75b8cd; PC = 0x555555564a22 *)
mov rax L0x55555556a8f0;
(* mov    %rdx,%r10                                #! PC = 0x555555564a29 *)
mov r10 rdx;
(* shr    $0x3f,%r10                               #! PC = 0x555555564a2c *)
shrs r10 dontcare r10 0x3f;
(* xor    %r11d,%r11d                              #! PC = 0x555555564a30 *)
mov r11 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x555555564a33 *)
mov rdx 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x555555564a35 *)
mov r9 0@uint64;
(* sub    %r8,%rax                                 #! PC = 0x555555564a38 *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x555555564a3b *)
sbbs carry rdx rdx r9 carry;
(* sub    %r10,%rax                                #! PC = 0x555555564a3e *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x555555564a41 *)
sbbs carry rdx rdx r11 carry;
(* mov    %rcx,(%rdi)                              #! EA = L0x7fffffffd850; PC = 0x555555564a44 *)
mov L0x7fffffffd850 rcx;
(* mov    %rax,0x50(%rdi)                          #! EA = L0x7fffffffd8a0; PC = 0x555555564a47 *)
mov L0x7fffffffd8a0 rax;
(* mov    0x58(%rdi),%r8                           #! EA = L0x7fffffffd8a8; Value = 0x00003e9778e64d67; PC = 0x555555564a4b *)
mov r8 L0x7fffffffd8a8;
(* mov    0x5ea2(%rip),%rax        # 0x55555556a8f8 <p751x2+88>#! EA = L0x55555556a8f8; Value = 0x0000dfcbaa83ee38; PC = 0x555555564a4f *)
mov rax L0x55555556a8f8;
(* mov    %rdx,%r10                                #! PC = 0x555555564a56 *)
mov r10 rdx;
(* shr    $0x3f,%r10                               #! PC = 0x555555564a59 *)
shrs r10 dontcare r10 0x3f;
(* sub    %r8,%rax                                 #! PC = 0x555555564a5d *)
subb carry rax rax r8;
(* sub    %r10,%rax                                #! PC = 0x555555564a60 *)
subb carry rax rax r10;
(* mov    %rax,0x58(%rdi)                          #! EA = L0x7fffffffd8a8; PC = 0x555555564a63 *)
mov L0x7fffffffd8a8 rax;
(* #! <- SP = 0x7fffffffd558 *)
#! 0x7fffffffd558 = 0x7fffffffd558;
(* #retq                                           #! PC = 0x555555564a67 *)
#retq                                           #! 0x555555564a67 = 0x555555564a67;

(* ===== Outputs ===== *)

mov c0_00 L0x7fffffffd7f0;
mov c0_01 L0x7fffffffd7f8;
mov c0_02 L0x7fffffffd800;
mov c0_03 L0x7fffffffd808;
mov c0_04 L0x7fffffffd810;
mov c0_05 L0x7fffffffd818;
mov c0_06 L0x7fffffffd820;
mov c0_07 L0x7fffffffd828;
mov c0_08 L0x7fffffffd830;
mov c0_09 L0x7fffffffd838;
mov c0_10 L0x7fffffffd840;
mov c0_11 L0x7fffffffd848;

mov c1_00 L0x7fffffffd850;
mov c1_01 L0x7fffffffd858;
mov c1_02 L0x7fffffffd860;
mov c1_03 L0x7fffffffd868;
mov c1_04 L0x7fffffffd870;
mov c1_05 L0x7fffffffd878;
mov c1_06 L0x7fffffffd880;
mov c1_07 L0x7fffffffd888;
mov c1_08 L0x7fffffffd890;
mov c1_09 L0x7fffffffd898;
mov c1_10 L0x7fffffffd8a0;
mov c1_11 L0x7fffffffd8a8;

{
  true
  &&
  and [
    eqsmod
      (limbs 64 [ c0_00, c0_01, c0_02, c0_03, c0_04, c0_05, c0_06, c0_07, c0_08, c0_09, c0_10, c0_11 ])
      (0@768 - (limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ]))
      (limbs 64 [ $p751_0@64, $p751_1@64, $p751_2@64, $p751_3@64, $p751_4@64, $p751_5@64, $p751_6@64, $p751_7@64, $p751_8@64, $p751_9@64, $p751_a@64, $p751_b@64 ]),
    eqsmod
      (limbs 64 [ c1_00, c1_01, c1_02, c1_03, c1_04, c1_05, c1_06, c1_07, c1_08, c1_09, c1_10, c1_11 ])
      (0@768 - (limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ]))
      (limbs 64 [ $p751_0@64, $p751_1@64, $p751_2@64, $p751_3@64, $p751_4@64, $p751_5@64, $p751_6@64, $p751_7@64, $p751_8@64, $p751_9@64, $p751_a@64, $p751_b@64 ]),
    1@768 <=u limbs 64 [ c0_00, c0_01, c0_02, c0_03, c0_04, c0_05, c0_06, c0_07, c0_08, c0_09, c0_10, c0_11 ],
    limbs 64 [ c0_00, c0_01, c0_02, c0_03, c0_04, c0_05, c0_06, c0_07, c0_08, c0_09, c0_10, c0_11 ] <=u
      (2@768 * limbs 64 [ $p751_0@64, $p751_1@64, $p751_2@64, $p751_3@64, $p751_4@64, $p751_5@64, $p751_6@64, $p751_7@64, $p751_8@64, $p751_9@64, $p751_a@64, $p751_b@64 ]),
    1@768 <=u limbs 64 [ c1_00, c1_01, c1_02, c1_03, c1_04, c1_05, c1_06, c1_07, c1_08, c1_09, c1_10, c1_11 ],
    limbs 64 [ c1_00, c1_01, c1_02, c1_03, c1_04, c1_05, c1_06, c1_07, c1_08, c1_09, c1_10, c1_11 ] <=u
      (2@768 * limbs 64 [ $p751_0@64, $p751_1@64, $p751_2@64, $p751_3@64, $p751_4@64, $p751_5@64, $p751_6@64, $p751_7@64, $p751_8@64, $p751_9@64, $p751_a@64, $p751_b@64 ])
  ]
}
