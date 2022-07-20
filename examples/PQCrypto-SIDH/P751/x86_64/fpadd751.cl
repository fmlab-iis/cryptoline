(* on frege: -v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint fpadd751.cl
Parsing Cryptoline file:		[OK]		0.003867 seconds
Checking well-formedness:		[OK]		0.000815 seconds
Transforming to SSA form:		[OK]		0.000823 seconds
Normalizing specification:		[OK]		0.000116 seconds
Rewriting assignments:			[OK]		0.000156 seconds
Verifying program safety:
	 Cut 0
	     Round 1 (0 safety conditions, timeout = 14400 seconds)
	 Overall			[OK]		0.000102 seconds
Verifying range specification:		[OK]		22.605980 seconds
Rewriting value-preserved casting:	[OK]		0.000032 seconds
Verifying algebraic specification:	[OK]		0.000353 seconds
Verification result:			[OK]		22.612963 seconds
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

proc main (a_0@uint64, a_1@uint64, a_2@uint64, a_3@uint64, a_4@uint64, a_5@uint64, a_6@uint64, a_7@uint64, a_8@uint64, a_9@uint64, a_a@uint64, a_b@uint64,
           b_0@uint64, b_1@uint64, b_2@uint64, b_3@uint64, b_4@uint64, b_5@uint64, b_6@uint64, b_7@uint64, b_8@uint64, b_9@uint64, b_a@uint64, b_b@uint64) =
{
  true
  &&
  and [
    limbs 64 [ a_0, a_1, a_2, a_3, a_4, a_5, a_6, a_7, a_8, a_9, a_a, a_b ] <=u
      (2@768 * limbs 64 [ $p751_0@64, $p751_1@64, $p751_2@64, $p751_3@64, $p751_4@64, $p751_5@64, $p751_6@64, $p751_7@64, $p751_8@64, $p751_9@64, $p751_a@64, $p751_b@64 ] - 1@768),
    limbs 64 [ b_0, b_1, b_2, b_3, b_4, b_5, b_6, b_7, b_8, b_9, b_a, b_b ] <=u
      (2@768 * limbs 64 [ $p751_0@64, $p751_1@64, $p751_2@64, $p751_3@64, $p751_4@64, $p751_5@64, $p751_6@64, $p751_7@64, $p751_8@64, $p751_9@64, $p751_a@64, $p751_b@64 ] - 1@768)
  ]
}

(* ===== Initialization ===== *)

mov L0x7fffffffda30 a_0;
mov L0x7fffffffda38 a_1;
mov L0x7fffffffda40 a_2;
mov L0x7fffffffda48 a_3;
mov L0x7fffffffda50 a_4;
mov L0x7fffffffda58 a_5;
mov L0x7fffffffda60 a_6;
mov L0x7fffffffda68 a_7;
mov L0x7fffffffda70 a_8;
mov L0x7fffffffda78 a_9;
mov L0x7fffffffda80 a_a;
mov L0x7fffffffda88 a_b;

mov L0x7fffffffda90 b_0;
mov L0x7fffffffda98 b_1;
mov L0x7fffffffdaa0 b_2;
mov L0x7fffffffdaa8 b_3;
mov L0x7fffffffdab0 b_4;
mov L0x7fffffffdab8 b_5;
mov L0x7fffffffdac0 b_6;
mov L0x7fffffffdac8 b_7;
mov L0x7fffffffdad0 b_8;
mov L0x7fffffffdad8 b_9;
mov L0x7fffffffdae0 b_a;
mov L0x7fffffffdae8 b_b;

mov L0x55555556a8a0 $p751x2_0@uint64;
mov L0x55555556a8a8 $p751x2_1@uint64;
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
(* #jmpq   0x5555555650d9 <fpadd751_asm>           #! PC = 0x555555564864 *)
#jmpq   0x5555555650d9 <fpadd751_asm>           #! 0x555555564864 = 0x555555564864;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffda30; Value = 0xec4aff517369c667; PC = 0x5555555650e1 *)
mov r8 L0x7fffffffda30;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffda38; Value = 0x46e3fbf2abbacd29; PC = 0x5555555650e4 *)
mov r9 L0x7fffffffda38;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffda40; Value = 0x8de7e81bf854c27c; PC = 0x5555555650e8 *)
mov r10 L0x7fffffffda40;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffda48; Value = 0x9ac99f33632e5a76; PC = 0x5555555650ec *)
mov r11 L0x7fffffffda48;
(* mov    0x20(%rdi),%r12                          #! EA = L0x7fffffffda50; Value = 0x5aa35831b70d3266; PC = 0x5555555650f0 *)
mov r12 L0x7fffffffda50;
(* mov    0x28(%rdi),%r13                          #! EA = L0x7fffffffda58; Value = 0xd45ee95817055d25; PC = 0x5555555650f4 *)
mov r13 L0x7fffffffda58;
(* mov    0x30(%rdi),%r14                          #! EA = L0x7fffffffda60; Value = 0x1154b49bc6cdb2ab; PC = 0x5555555650f8 *)
mov r14 L0x7fffffffda60;
(* mov    0x38(%rdi),%r15                          #! EA = L0x7fffffffda68; Value = 0x87dc3d214174820e; PC = 0x5555555650fc *)
mov r15 L0x7fffffffda68;
(* mov    0x40(%rdi),%rcx                          #! EA = L0x7fffffffda70; Value = 0x67fce141a13ee970; PC = 0x555555565100 *)
mov rcx L0x7fffffffda70;
(* add    (%rsi),%r8                               #! EA = L0x7fffffffda90; Value = 0x3aaafafb43fe1a02; PC = 0x555555565104 *)
adds carry r8 r8 L0x7fffffffda90;
(* adc    0x8(%rsi),%r9                            #! EA = L0x7fffffffda98; Value = 0x947c3c05e6d129fb; PC = 0x555555565107 *)
adcs carry r9 r9 L0x7fffffffda98 carry;
(* adc    0x10(%rsi),%r10                          #! EA = L0x7fffffffdaa0; Value = 0xbb5cf98961bed875; PC = 0x55555556510b *)
adcs carry r10 r10 L0x7fffffffdaa0 carry;
(* adc    0x18(%rsi),%r11                          #! EA = L0x7fffffffdaa8; Value = 0xb3f1ebb1950f99a8; PC = 0x55555556510f *)
adcs carry r11 r11 L0x7fffffffdaa8 carry;
(* adc    0x20(%rsi),%r12                          #! EA = L0x7fffffffdab0; Value = 0xe53aa1e900f7ef05; PC = 0x555555565113 *)
adcs carry r12 r12 L0x7fffffffdab0 carry;
(* adc    0x28(%rsi),%r13                          #! EA = L0x7fffffffdab8; Value = 0xbd644748d0cb0bca; PC = 0x555555565117 *)
adcs carry r13 r13 L0x7fffffffdab8 carry;
(* adc    0x30(%rsi),%r14                          #! EA = L0x7fffffffdac0; Value = 0xc5647b1ca81e231f; PC = 0x55555556511b *)
adcs carry r14 r14 L0x7fffffffdac0 carry;
(* adc    0x38(%rsi),%r15                          #! EA = L0x7fffffffdac8; Value = 0x63794b5ec55a7314; PC = 0x55555556511f *)
adcs carry r15 r15 L0x7fffffffdac8 carry;
(* adc    0x40(%rsi),%rcx                          #! EA = L0x7fffffffdad0; Value = 0xdc099e112464703b; PC = 0x555555565123 *)
adcs carry rcx rcx L0x7fffffffdad0 carry;
(* mov    0x48(%rdi),%rax                          #! EA = L0x7fffffffda78; Value = 0x966bdcea977e013e; PC = 0x555555565127 *)
mov rax L0x7fffffffda78;
(* adc    0x48(%rsi),%rax                          #! EA = L0x7fffffffdad8; Value = 0x3baf101bf2acd4aa; PC = 0x55555556512b *)
adcs carry rax rax L0x7fffffffdad8 carry;
(* mov    %rax,0x48(%rdx)                          #! EA = L0x7fffffffdb98; PC = 0x55555556512f *)
mov L0x7fffffffdb98 rax;
(* mov    0x50(%rdi),%rax                          #! EA = L0x7fffffffda80; Value = 0xfb3bb0ec2a5c388f; PC = 0x555555565133 *)
mov rax L0x7fffffffda80;
(* adc    0x50(%rsi),%rax                          #! EA = L0x7fffffffdae0; Value = 0x5c15474850e3cd33; PC = 0x555555565137 *)
adcs carry rax rax L0x7fffffffdae0 carry;
(* mov    %rax,0x50(%rdx)                          #! EA = L0x7fffffffdba0; PC = 0x55555556513b *)
mov L0x7fffffffdba0 rax;
(* mov    0x58(%rdi),%rax                          #! EA = L0x7fffffffda88; Value = 0x000018ec543caf32; PC = 0x55555556513f *)
mov rax L0x7fffffffda88;
(* adc    0x58(%rsi),%rax                          #! EA = L0x7fffffffdae8; Value = 0x00001bba19226fbb; PC = 0x555555565143 *)
adcs carry rax rax L0x7fffffffdae8 carry;
(* mov    %rax,0x58(%rdx)                          #! EA = L0x7fffffffdba8; PC = 0x555555565147 *)
mov L0x7fffffffdba8 rax;
(* mov    0x574e(%rip),%rax        # 0x55555556a8a0 <p751x2>#! EA = L0x55555556a8a0; Value = 0xfffffffffffffffe; PC = 0x55555556514b *)
mov rax L0x55555556a8a0;
(* sub    %rax,%r8                                 #! PC = 0x555555565152 *)
subb carry r8 r8 rax;
(* mov    0x574c(%rip),%rax        # 0x55555556a8a8 <p751x2+8>#! EA = L0x55555556a8a8; Value = 0xffffffffffffffff; PC = 0x555555565155 *)
mov rax L0x55555556a8a8;
(* sbb    %rax,%r9                                 #! PC = 0x55555556515c *)
sbbs carry r9 r9 rax carry;
(* sbb    %rax,%r10                                #! PC = 0x55555556515f *)
sbbs carry r10 r10 rax carry;
(* sbb    %rax,%r11                                #! PC = 0x555555565162 *)
sbbs carry r11 r11 rax carry;
(* sbb    %rax,%r12                                #! PC = 0x555555565165 *)
sbbs carry r12 r12 rax carry;
(* mov    0x5759(%rip),%rax        # 0x55555556a8c8 <p751x2+40>#! EA = L0x55555556a8c8; Value = 0xdd5fffffffffffff; PC = 0x555555565168 *)
mov rax L0x55555556a8c8;
(* sbb    %rax,%r13                                #! PC = 0x55555556516f *)
sbbs carry r13 r13 rax carry;
(* mov    0x5757(%rip),%rax        # 0x55555556a8d0 <p751x2+48>#! EA = L0x55555556a8d0; Value = 0xc7d92d0a93f0f151; PC = 0x555555565172 *)
mov rax L0x55555556a8d0;
(* sbb    %rax,%r14                                #! PC = 0x555555565179 *)
sbbs carry r14 r14 rax carry;
(* mov    0x5755(%rip),%rax        # 0x55555556a8d8 <p751x2+56>#! EA = L0x55555556a8d8; Value = 0xb52b363427ef98ed; PC = 0x55555556517c *)
mov rax L0x55555556a8d8;
(* sbb    %rax,%r15                                #! PC = 0x555555565183 *)
sbbs carry r15 r15 rax carry;
(* mov    0x5753(%rip),%rax        # 0x55555556a8e0 <p751x2+64>#! EA = L0x55555556a8e0; Value = 0x109d30cfadd7d0ed; PC = 0x555555565186 *)
mov rax L0x55555556a8e0;
(* sbb    %rax,%rcx                                #! PC = 0x55555556518d *)
sbbs carry rcx rcx rax carry;
(* mov    %r8,(%rdx)                               #! EA = L0x7fffffffdb50; PC = 0x555555565190 *)
mov L0x7fffffffdb50 r8;
(* mov    %r9,0x8(%rdx)                            #! EA = L0x7fffffffdb58; PC = 0x555555565193 *)
mov L0x7fffffffdb58 r9;
(* mov    %r10,0x10(%rdx)                          #! EA = L0x7fffffffdb60; PC = 0x555555565197 *)
mov L0x7fffffffdb60 r10;
(* mov    %r11,0x18(%rdx)                          #! EA = L0x7fffffffdb68; PC = 0x55555556519b *)
mov L0x7fffffffdb68 r11;
(* mov    %r12,0x20(%rdx)                          #! EA = L0x7fffffffdb70; PC = 0x55555556519f *)
mov L0x7fffffffdb70 r12;
(* mov    %r13,0x28(%rdx)                          #! EA = L0x7fffffffdb78; PC = 0x5555555651a3 *)
mov L0x7fffffffdb78 r13;
(* mov    %r14,0x30(%rdx)                          #! EA = L0x7fffffffdb80; PC = 0x5555555651a7 *)
mov L0x7fffffffdb80 r14;
(* mov    %r15,0x38(%rdx)                          #! EA = L0x7fffffffdb88; PC = 0x5555555651ab *)
mov L0x7fffffffdb88 r15;
(* mov    %rcx,0x40(%rdx)                          #! EA = L0x7fffffffdb90; PC = 0x5555555651af *)
mov L0x7fffffffdb90 rcx;
(* mov    0x48(%rdx),%r8                           #! EA = L0x7fffffffdb98; Value = 0xd21aed068a2ad5e9; PC = 0x5555555651b3 *)
mov r8 L0x7fffffffdb98;
(* mov    0x50(%rdx),%r9                           #! EA = L0x7fffffffdba0; Value = 0x5750f8347b4005c2; PC = 0x5555555651b7 *)
mov r9 L0x7fffffffdba0;
(* mov    0x58(%rdx),%r10                          #! EA = L0x7fffffffdba8; Value = 0x000034a66d5f1eee; PC = 0x5555555651bb *)
mov r10 L0x7fffffffdba8;
(* mov    0x5722(%rip),%rax        # 0x55555556a8e8 <p751x2+72>#! EA = L0x55555556a8e8; Value = 0x0ac56a08b964ae90; PC = 0x5555555651bf *)
mov rax L0x55555556a8e8;
(* sbb    %rax,%r8                                 #! PC = 0x5555555651c6 *)
sbbs carry r8 r8 rax carry;
(* mov    0x5720(%rip),%rax        # 0x55555556a8f0 <p751x2+80>#! EA = L0x55555556a8f0; Value = 0x1c25213f2f75b8cd; PC = 0x5555555651c9 *)
mov rax L0x55555556a8f0;
(* sbb    %rax,%r9                                 #! PC = 0x5555555651d0 *)
sbbs carry r9 r9 rax carry;
(* mov    0x571e(%rip),%rax        # 0x55555556a8f8 <p751x2+88>#! EA = L0x55555556a8f8; Value = 0x0000dfcbaa83ee38; PC = 0x5555555651d3 *)
mov rax L0x55555556a8f8;
(* sbb    %rax,%r10                                #! PC = 0x5555555651da *)
sbbs carry r10 r10 rax carry;
(* mov    %r8,0x48(%rdx)                           #! EA = L0x7fffffffdb98; PC = 0x5555555651dd *)
mov L0x7fffffffdb98 r8;
(* mov    %r9,0x50(%rdx)                           #! EA = L0x7fffffffdba0; PC = 0x5555555651e1 *)
mov L0x7fffffffdba0 r9;
(* mov    %r10,0x58(%rdx)                          #! EA = L0x7fffffffdba8; PC = 0x5555555651e5 *)
mov L0x7fffffffdba8 r10;
(* mov    $0x0,%rax                                #! PC = 0x5555555651e9 *)
mov rax 0x0@uint64;
(* sbb    $0x0,%rax                                #! PC = 0x5555555651f0 *)
sbbs carry rax rax 0x0@uint64 carry;
(* mov    0x56a5(%rip),%rsi        # 0x55555556a8a0 <p751x2>#! EA = L0x55555556a8a0; Value = 0xfffffffffffffffe; PC = 0x5555555651f4 *)
mov rsi L0x55555556a8a0;
(* and    %rax,%rsi                                #! PC = 0x5555555651fb *)
and uint64 rsi rax rsi;
(* mov    0x56a3(%rip),%r8        # 0x55555556a8a8 <p751x2+8>#! EA = L0x55555556a8a8; Value = 0xffffffffffffffff; PC = 0x5555555651fe *)
mov r8 L0x55555556a8a8;
(* and    %rax,%r8                                 #! PC = 0x555555565205 *)
and uint64 r8 rax r8;
(* mov    0x56b9(%rip),%r9        # 0x55555556a8c8 <p751x2+40>#! EA = L0x55555556a8c8; Value = 0xdd5fffffffffffff; PC = 0x555555565208 *)
mov r9 L0x55555556a8c8;
(* and    %rax,%r9                                 #! PC = 0x55555556520f *)
and uint64 r9 rax r9;
(* mov    0x56b7(%rip),%r10        # 0x55555556a8d0 <p751x2+48>#! EA = L0x55555556a8d0; Value = 0xc7d92d0a93f0f151; PC = 0x555555565212 *)
mov r10 L0x55555556a8d0;
(* and    %rax,%r10                                #! PC = 0x555555565219 *)
and uint64 r10 rax r10;
(* mov    0x56b5(%rip),%r11        # 0x55555556a8d8 <p751x2+56>#! EA = L0x55555556a8d8; Value = 0xb52b363427ef98ed; PC = 0x55555556521c *)
mov r11 L0x55555556a8d8;
(* and    %rax,%r11                                #! PC = 0x555555565223 *)
and uint64 r11 rax r11;
(* mov    0x56b3(%rip),%r12        # 0x55555556a8e0 <p751x2+64>#! EA = L0x55555556a8e0; Value = 0x109d30cfadd7d0ed; PC = 0x555555565226 *)
mov r12 L0x55555556a8e0;
(* and    %rax,%r12                                #! PC = 0x55555556522d *)
and uint64 r12 rax r12;
(* mov    0x56b1(%rip),%r13        # 0x55555556a8e8 <p751x2+72>#! EA = L0x55555556a8e8; Value = 0x0ac56a08b964ae90; PC = 0x555555565230 *)
mov r13 L0x55555556a8e8;
(* and    %rax,%r13                                #! PC = 0x555555565237 *)
and uint64 r13 rax r13;
(* mov    0x56af(%rip),%r14        # 0x55555556a8f0 <p751x2+80>#! EA = L0x55555556a8f0; Value = 0x1c25213f2f75b8cd; PC = 0x55555556523a *)
mov r14 L0x55555556a8f0;
(* and    %rax,%r14                                #! PC = 0x555555565241 *)
and uint64 r14 rax r14;
(* mov    0x56ad(%rip),%r15        # 0x55555556a8f8 <p751x2+88>#! EA = L0x55555556a8f8; Value = 0x0000dfcbaa83ee38; PC = 0x555555565244 *)
mov r15 L0x55555556a8f8;
(* and    %rax,%r15                                #! PC = 0x55555556524b *)
and uint64 r15 rax r15;
(* add    (%rdx),%rsi                              #! EA = L0x7fffffffdb50; Value = 0x26f5fa4cb767e06b; PC = 0x55555556524e *)
adds carry rsi rsi L0x7fffffffdb50;
(* mov    %rsi,(%rdx)                              #! EA = L0x7fffffffdb50; PC = 0x555555565251 *)
mov L0x7fffffffdb50 rsi;
(* mov    0x8(%rdx),%rax                           #! EA = L0x7fffffffdb58; Value = 0xdb6037f8928bf725; PC = 0x555555565254 *)
mov rax L0x7fffffffdb58;
(* adc    %r8,%rax                                 #! PC = 0x555555565258 *)
adcs carry rax rax r8@uint64 carry;
(* mov    %rax,0x8(%rdx)                           #! EA = L0x7fffffffdb58; PC = 0x55555556525b *)
mov L0x7fffffffdb58 rax;
(* mov    0x10(%rdx),%rax                          #! EA = L0x7fffffffdb60; Value = 0x4944e1a55a139af1; PC = 0x55555556525f *)
mov rax L0x7fffffffdb60;
(* adc    %r8,%rax                                 #! PC = 0x555555565263 *)
adcs carry rax rax r8@uint64 carry;
(* mov    %rax,0x10(%rdx)                          #! EA = L0x7fffffffdb60; PC = 0x555555565266 *)
mov L0x7fffffffdb60 rax;
(* mov    0x18(%rdx),%rax                          #! EA = L0x7fffffffdb68; Value = 0x4ebb8ae4f83df41f; PC = 0x55555556526a *)
mov rax L0x7fffffffdb68;
(* adc    %r8,%rax                                 #! PC = 0x55555556526e *)
adcs carry rax rax r8@uint64 carry;
(* mov    %rax,0x18(%rdx)                          #! EA = L0x7fffffffdb68; PC = 0x555555565271 *)
mov L0x7fffffffdb68 rax;
(* mov    0x20(%rdx),%rax                          #! EA = L0x7fffffffdb70; Value = 0x3fddfa1ab805216c; PC = 0x555555565275 *)
mov rax L0x7fffffffdb70;
(* adc    %r8,%rax                                 #! PC = 0x555555565279 *)
adcs carry rax rax r8@uint64 carry;
(* mov    %rax,0x20(%rdx)                          #! EA = L0x7fffffffdb70; PC = 0x55555556527c *)
mov L0x7fffffffdb70 rax;
(* adc    0x28(%rdx),%r9                           #! EA = L0x7fffffffdb78; Value = 0xb46330a0e7d068f0; PC = 0x555555565280 *)
adcs carry r9 r9 L0x7fffffffdb78 carry;
(* adc    0x30(%rdx),%r10                          #! EA = L0x7fffffffdb80; Value = 0x0ee002addafae479; PC = 0x555555565284 *)
adcs carry r10 r10 L0x7fffffffdb80 carry;
(* adc    0x38(%rdx),%r11                          #! EA = L0x7fffffffdb88; Value = 0x362a524bdedf5c35; PC = 0x555555565288 *)
adcs carry r11 r11 L0x7fffffffdb88 carry;
(* adc    0x40(%rdx),%r12                          #! EA = L0x7fffffffdb90; Value = 0x33694e8317cb88be; PC = 0x55555556528c *)
adcs carry r12 r12 L0x7fffffffdb90 carry;
(* adc    0x48(%rdx),%r13                          #! EA = L0x7fffffffdb98; Value = 0xc75582fdd0c62759; PC = 0x555555565290 *)
adcs carry r13 r13 L0x7fffffffdb98 carry;
(* adc    0x50(%rdx),%r14                          #! EA = L0x7fffffffdba0; Value = 0x3b2bd6f54bca4cf5; PC = 0x555555565294 *)
adcs carry r14 r14 L0x7fffffffdba0 carry;
(* adc    0x58(%rdx),%r15                          #! EA = L0x7fffffffdba8; Value = 0xffff54dac2db30b6; PC = 0x555555565298 *)
adcs carry r15 r15 L0x7fffffffdba8 carry;
(* mov    %r9,0x28(%rdx)                           #! EA = L0x7fffffffdb78; PC = 0x55555556529c *)
mov L0x7fffffffdb78 r9;
(* mov    %r10,0x30(%rdx)                          #! EA = L0x7fffffffdb80; PC = 0x5555555652a0 *)
mov L0x7fffffffdb80 r10;
(* mov    %r11,0x38(%rdx)                          #! EA = L0x7fffffffdb88; PC = 0x5555555652a4 *)
mov L0x7fffffffdb88 r11;
(* mov    %r12,0x40(%rdx)                          #! EA = L0x7fffffffdb90; PC = 0x5555555652a8 *)
mov L0x7fffffffdb90 r12;
(* mov    %r13,0x48(%rdx)                          #! EA = L0x7fffffffdb98; PC = 0x5555555652ac *)
mov L0x7fffffffdb98 r13;
(* mov    %r14,0x50(%rdx)                          #! EA = L0x7fffffffdba0; PC = 0x5555555652b0 *)
mov L0x7fffffffdba0 r14;
(* mov    %r15,0x58(%rdx)                          #! EA = L0x7fffffffdba8; PC = 0x5555555652b4 *)
mov L0x7fffffffdba8 r15;
(* #! <- SP = 0x7fffffffd9d8 *)
#! 0x7fffffffd9d8 = 0x7fffffffd9d8;
(* #retq                                           #! PC = 0x5555555652c0 *)
#retq                                           #! 0x5555555652c0 = 0x5555555652c0;

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
    equmod
      (limbs 64 [ c_0, c_1, c_2, c_3, c_4, c_5, c_6, c_7, c_8, c_9, c_a, c_b ])
      (
        (limbs 64 [ a_0, a_1, a_2, a_3, a_4, a_5, a_6, a_7, a_8, a_9, a_a, a_b ])
        +
        (limbs 64 [ b_0, b_1, b_2, b_3, b_4, b_5, b_6, b_7, b_8, b_9, b_a, b_b ])
      )
      (limbs 64 [ $p751_0@64, $p751_1@64, $p751_2@64, $p751_3@64, $p751_4@64, $p751_5@64, $p751_6@64, $p751_7@64, $p751_8@64, $p751_9@64, $p751_a@64, $p751_b@64 ]),
    limbs 64 [ c_0, c_1, c_2, c_3, c_4, c_5, c_6, c_7, c_8, c_9, c_a, c_b ] <=u
      (2@768 * limbs 64 [ $p751_0@64, $p751_1@64, $p751_2@64, $p751_3@64, $p751_4@64, $p751_5@64, $p751_6@64, $p751_7@64, $p751_8@64, $p751_9@64, $p751_a@64, $p751_b@64 ] - 1@768)
  ]
}
