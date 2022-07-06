(* on frege: -v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint fpneg751.cl
Parsing Cryptoline file:		[OK]		0.004462 seconds
Checking well-formedness:		[OK]		0.001751 seconds
Transforming to SSA form:		[OK]		0.000095 seconds
Normalizing specification:		[OK]		0.000125 seconds
Rewriting assignments:			[OK]		0.000166 seconds
Verifying program safety:
	 Cut 0
	     Round 1 (0 safety conditions, timeout = 14400 seconds)
	 Overall			[OK]		0.000131 seconds
Verifying range specification:		[OK]		5.905376 seconds
Rewriting value-preserved casting:	[OK]		0.000035 seconds
Verifying algebraic specification:	[OK]		0.000301 seconds
Verification result:			[OK]		5.912920 seconds
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

proc main (a_0@uint64, a_1@uint64, a_2@uint64, a_3@uint64, a_4@uint64, a_5@uint64, a_6@uint64, a_7@uint64, a_8@uint64, a_9@uint64, a_a@uint64, a_b@uint64) =
{
  true
  &&
  and [
    limbs 64 [ a_0, a_1, a_2, a_3, a_4, a_5, a_6, a_7, a_8, a_9, a_a, a_b ] <=u
      (2@768 * limbs 64 [ $p751_0@64, $p751_1@64, $p751_2@64, $p751_3@64, $p751_4@64, $p751_5@64, $p751_6@64, $p751_7@64, $p751_8@64, $p751_9@64, $p751_a@64, $p751_b@64 ] - 1@768)
  ]
}

(* ===== Initialization ===== *)

mov L0x7fffffffdb50 a_0;
mov L0x7fffffffdb58 a_1;
mov L0x7fffffffdb60 a_2;
mov L0x7fffffffdb68 a_3;
mov L0x7fffffffdb70 a_4;
mov L0x7fffffffdb78 a_5;
mov L0x7fffffffdb80 a_6;
mov L0x7fffffffdb88 a_7;
mov L0x7fffffffdb90 a_8;
mov L0x7fffffffdb98 a_9;
mov L0x7fffffffdba0 a_a;
mov L0x7fffffffdba8 a_b;

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

(* ===== Program ===== *)

(* #! -> SP = 0x7fffffffd9d8 *)
#! 0x7fffffffd9d8 = 0x7fffffffd9d8;
(* mov    0x6015(%rip),%rcx        # 0x55555556a8a0 <p751x2>#! EA = L0x55555556a8a0; Value = 0xfffffffffffffffe; PC = 0x555555564884 *)
mov rcx L0x55555556a8a0;
(* mov    (%rdi),%rsi                              #! EA = L0x7fffffffdb50; Value = 0xec4aff517369c667; PC = 0x55555556488b *)
mov rsi L0x7fffffffdb50;
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
split rax dontcare rax 0x3f;
(* mov    0x8(%rdi),%r10                           #! EA = L0x7fffffffdb58; Value = 0x46e3fbf2abbacd29; PC = 0x5555555648a3 *)
mov r10 L0x7fffffffdb58;
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
(* mov    0x10(%rdi),%r8                           #! EA = L0x7fffffffdb60; Value = 0x8de7e81bf854c27c; PC = 0x5555555648ca *)
mov r8 L0x7fffffffdb60;
(* mov    %rax,0x8(%rdi)                           #! EA = L0x7fffffffdb58; PC = 0x5555555648ce *)
mov L0x7fffffffdb58 rax;
(* mov    0x5fd7(%rip),%rax        # 0x55555556a8b0 <p751x2+16>#! EA = L0x55555556a8b0; Value = 0xffffffffffffffff; PC = 0x5555555648d2 *)
mov rax L0x55555556a8b0;
(* mov    %rdx,%r10                                #! PC = 0x5555555648d9 *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x5555555648dc *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x5555555648df *)
split r10 dontcare r10 0x3f;
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
(* mov    0x18(%rdi),%r8                           #! EA = L0x7fffffffdb68; Value = 0x9ac99f33632e5a76; PC = 0x5555555648f4 *)
mov r8 L0x7fffffffdb68;
(* mov    %rax,0x10(%rdi)                          #! EA = L0x7fffffffdb60; PC = 0x5555555648f8 *)
mov L0x7fffffffdb60 rax;
(* mov    0x5fb5(%rip),%rax        # 0x55555556a8b8 <p751x2+24>#! EA = L0x55555556a8b8; Value = 0xffffffffffffffff; PC = 0x5555555648fc *)
mov rax L0x55555556a8b8;
(* mov    %rdx,%r10                                #! PC = 0x555555564903 *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x555555564906 *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x555555564909 *)
split r10 dontcare r10 0x3f;
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
(* mov    0x20(%rdi),%r8                           #! EA = L0x7fffffffdb70; Value = 0x5aa35831b70d3266; PC = 0x55555556491e *)
mov r8 L0x7fffffffdb70;
(* mov    %rax,0x18(%rdi)                          #! EA = L0x7fffffffdb68; PC = 0x555555564922 *)
mov L0x7fffffffdb68 rax;
(* mov    0x5f93(%rip),%rax        # 0x55555556a8c0 <p751x2+32>#! EA = L0x55555556a8c0; Value = 0xffffffffffffffff; PC = 0x555555564926 *)
mov rax L0x55555556a8c0;
(* mov    %rdx,%r10                                #! PC = 0x55555556492d *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x555555564930 *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x555555564933 *)
split r10 dontcare r10 0x3f;
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
(* mov    0x28(%rdi),%r8                           #! EA = L0x7fffffffdb78; Value = 0xd45ee95817055d25; PC = 0x555555564948 *)
mov r8 L0x7fffffffdb78;
(* mov    %rax,0x20(%rdi)                          #! EA = L0x7fffffffdb70; PC = 0x55555556494c *)
mov L0x7fffffffdb70 rax;
(* mov    0x5f71(%rip),%rax        # 0x55555556a8c8 <p751x2+40>#! EA = L0x55555556a8c8; Value = 0xdd5fffffffffffff; PC = 0x555555564950 *)
mov rax L0x55555556a8c8;
(* mov    %rdx,%r10                                #! PC = 0x555555564957 *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x55555556495a *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x55555556495d *)
split r10 dontcare r10 0x3f;
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
(* mov    0x30(%rdi),%r8                           #! EA = L0x7fffffffdb80; Value = 0x1154b49bc6cdb2ab; PC = 0x555555564972 *)
mov r8 L0x7fffffffdb80;
(* mov    %rax,0x28(%rdi)                          #! EA = L0x7fffffffdb78; PC = 0x555555564976 *)
mov L0x7fffffffdb78 rax;
(* mov    0x5f4f(%rip),%rax        # 0x55555556a8d0 <p751x2+48>#! EA = L0x55555556a8d0; Value = 0xc7d92d0a93f0f151; PC = 0x55555556497a *)
mov rax L0x55555556a8d0;
(* mov    %rdx,%r10                                #! PC = 0x555555564981 *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x555555564984 *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x555555564987 *)
split r10 dontcare r10 0x3f;
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
(* mov    0x38(%rdi),%r8                           #! EA = L0x7fffffffdb88; Value = 0x87dc3d214174820e; PC = 0x55555556499c *)
mov r8 L0x7fffffffdb88;
(* mov    %rax,0x30(%rdi)                          #! EA = L0x7fffffffdb80; PC = 0x5555555649a0 *)
mov L0x7fffffffdb80 rax;
(* mov    0x5f2d(%rip),%rax        # 0x55555556a8d8 <p751x2+56>#! EA = L0x55555556a8d8; Value = 0xb52b363427ef98ed; PC = 0x5555555649a4 *)
mov rax L0x55555556a8d8;
(* mov    %rdx,%r10                                #! PC = 0x5555555649ab *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x5555555649ae *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x5555555649b1 *)
split r10 dontcare r10 0x3f;
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
(* mov    0x40(%rdi),%r8                           #! EA = L0x7fffffffdb90; Value = 0x67fce141a13ee970; PC = 0x5555555649c6 *)
mov r8 L0x7fffffffdb90;
(* mov    %rax,0x38(%rdi)                          #! EA = L0x7fffffffdb88; PC = 0x5555555649ca *)
mov L0x7fffffffdb88 rax;
(* mov    0x5f0b(%rip),%rax        # 0x55555556a8e0 <p751x2+64>#! EA = L0x55555556a8e0; Value = 0x109d30cfadd7d0ed; PC = 0x5555555649ce *)
mov rax L0x55555556a8e0;
(* mov    %rdx,%r10                                #! PC = 0x5555555649d5 *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x5555555649d8 *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x5555555649db *)
split r10 dontcare r10 0x3f;
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
(* mov    0x48(%rdi),%r8                           #! EA = L0x7fffffffdb98; Value = 0x966bdcea977e013e; PC = 0x5555555649f0 *)
mov r8 L0x7fffffffdb98;
(* mov    %rax,0x40(%rdi)                          #! EA = L0x7fffffffdb90; PC = 0x5555555649f4 *)
mov L0x7fffffffdb90 rax;
(* mov    0x5ee9(%rip),%rax        # 0x55555556a8e8 <p751x2+72>#! EA = L0x55555556a8e8; Value = 0x0ac56a08b964ae90; PC = 0x5555555649f8 *)
mov rax L0x55555556a8e8;
(* mov    %rdx,%r10                                #! PC = 0x5555555649ff *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x555555564a02 *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x555555564a05 *)
split r10 dontcare r10 0x3f;
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
(* mov    0x50(%rdi),%r8                           #! EA = L0x7fffffffdba0; Value = 0xfb3bb0ec2a5c388f; PC = 0x555555564a1a *)
mov r8 L0x7fffffffdba0;
(* mov    %rax,0x48(%rdi)                          #! EA = L0x7fffffffdb98; PC = 0x555555564a1e *)
mov L0x7fffffffdb98 rax;
(* mov    0x5ec7(%rip),%rax        # 0x55555556a8f0 <p751x2+80>#! EA = L0x55555556a8f0; Value = 0x1c25213f2f75b8cd; PC = 0x555555564a22 *)
mov rax L0x55555556a8f0;
(* mov    %rdx,%r10                                #! PC = 0x555555564a29 *)
mov r10 rdx;
(* shr    $0x3f,%r10                               #! PC = 0x555555564a2c *)
split r10 dontcare r10 0x3f;
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
(* mov    %rcx,(%rdi)                              #! EA = L0x7fffffffdb50; PC = 0x555555564a44 *)
mov L0x7fffffffdb50 rcx;
(* mov    %rax,0x50(%rdi)                          #! EA = L0x7fffffffdba0; PC = 0x555555564a47 *)
mov L0x7fffffffdba0 rax;
(* mov    0x58(%rdi),%r8                           #! EA = L0x7fffffffdba8; Value = 0x000018ec543caf32; PC = 0x555555564a4b *)
mov r8 L0x7fffffffdba8;
(* mov    0x5ea2(%rip),%rax        # 0x55555556a8f8 <p751x2+88>#! EA = L0x55555556a8f8; Value = 0x0000dfcbaa83ee38; PC = 0x555555564a4f *)
mov rax L0x55555556a8f8;
(* mov    %rdx,%r10                                #! PC = 0x555555564a56 *)
mov r10 rdx;
(* shr    $0x3f,%r10                               #! PC = 0x555555564a59 *)
split r10 dontcare r10 0x3f;
(* sub    %r8,%rax                                 #! PC = 0x555555564a5d *)
subb carry rax rax r8;
(* sub    %r10,%rax                                #! PC = 0x555555564a60 *)
subb carry rax rax r10;
(* mov    %rax,0x58(%rdi)                          #! EA = L0x7fffffffdba8; PC = 0x555555564a63 *)
mov L0x7fffffffdba8 rax;
(* #! <- SP = 0x7fffffffd9d8 *)
#! 0x7fffffffd9d8 = 0x7fffffffd9d8;
(* #retq                                           #! PC = 0x555555564a67 *)
#retq                                           #! 0x555555564a67 = 0x555555564a67;

(* ===== Outputs ===== *)

mov c_0 L0x7fffffffdb50;
mov c_1 L0x7fffffffdb58;
mov c_2 L0x7fffffffdb60;
mov c_3 L0x7fffffffdb68;
mov c_4 L0x7fffffffdb70;
mov c_5 L0x7fffffffdb78;
mov c_6 L0x7fffffffdb80;
mov c_7 L0x7fffffffdb88;
mov c_8 L0x7fffffffdb90;
mov c_9 L0x7fffffffdb98;
mov c_a L0x7fffffffdba0;
mov c_b L0x7fffffffdba8;

{
  true
  &&
  and [
    eqsmod
      (limbs 64 [ c_0, c_1, c_2, c_3, c_4, c_5, c_6, c_7, c_8, c_9, c_a, c_b ])
      (0@768 - (limbs 64 [ a_0, a_1, a_2, a_3, a_4, a_5, a_6, a_7, a_8, a_9, a_a, a_b ]))
      (limbs 64 [ $p751_0@64, $p751_1@64, $p751_2@64, $p751_3@64, $p751_4@64, $p751_5@64, $p751_6@64, $p751_7@64, $p751_8@64, $p751_9@64, $p751_a@64, $p751_b@64 ]),
    1@768 <=u limbs 64 [ c_0, c_1, c_2, c_3, c_4, c_5, c_6, c_7, c_8, c_9, c_a, c_b ],
    limbs 64 [ c_0, c_1, c_2, c_3, c_4, c_5, c_6, c_7, c_8, c_9, c_a, c_b ] <=u
      (2@768 * limbs 64 [ $p751_0@64, $p751_1@64, $p751_2@64, $p751_3@64, $p751_4@64, $p751_5@64, $p751_6@64, $p751_7@64, $p751_8@64, $p751_9@64, $p751_a@64, $p751_b@64 ])
  ]
}
