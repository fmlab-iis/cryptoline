(* on frege: -v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint fp2add751.cl
Parsing Cryptoline file:		[OK]		0.005537 seconds
Checking well-formedness:		[OK]		0.000317 seconds
Transforming to SSA form:		[OK]		0.000194 seconds
Normalizing specification:		[OK]		0.000604 seconds
Rewriting assignments:			[OK]		0.000330 seconds
Verifying program safety:
	 Cut 0
	     Round 1 (0 safety conditions, timeout = 14400 seconds)
	 Overall			[OK]		0.000144 seconds
Verifying range specification:		[OK]		22.342718 seconds
Rewriting value-preserved casting:	[OK]		0.000047 seconds
Verifying algebraic specification:	[OK]		0.000283 seconds
Verification result:			[OK]		22.350603 seconds
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
           a1_00@uint64, a1_01@uint64, a1_02@uint64, a1_03@uint64, a1_04@uint64, a1_05@uint64, a1_06@uint64, a1_07@uint64, a1_08@uint64, a1_09@uint64, a1_10@uint64, a1_11@uint64,
           b0_00@uint64, b0_01@uint64, b0_02@uint64, b0_03@uint64, b0_04@uint64, b0_05@uint64, b0_06@uint64, b0_07@uint64, b0_08@uint64, b0_09@uint64, b0_10@uint64, b0_11@uint64,
           b1_00@uint64, b1_01@uint64, b1_02@uint64, b1_03@uint64, b1_04@uint64, b1_05@uint64, b1_06@uint64, b1_07@uint64, b1_08@uint64, b1_09@uint64, b1_10@uint64, b1_11@uint64) =
{
  true
  &&
  and [
    limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ] <=u
      (2@768 * limbs 64 [ $p751_0@64, $p751_1@64, $p751_2@64, $p751_3@64, $p751_4@64, $p751_5@64, $p751_6@64, $p751_7@64, $p751_8@64, $p751_9@64, $p751_a@64, $p751_b@64 ] - 1@768),
    limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ] <=u
      (2@768 * limbs 64 [ $p751_0@64, $p751_1@64, $p751_2@64, $p751_3@64, $p751_4@64, $p751_5@64, $p751_6@64, $p751_7@64, $p751_8@64, $p751_9@64, $p751_a@64, $p751_b@64 ] - 1@768),
    limbs 64 [ b0_00, b0_01, b0_02, b0_03, b0_04, b0_05, b0_06, b0_07, b0_08, b0_09, b0_10, b0_11 ] <=u
      (2@768 * limbs 64 [ $p751_0@64, $p751_1@64, $p751_2@64, $p751_3@64, $p751_4@64, $p751_5@64, $p751_6@64, $p751_7@64, $p751_8@64, $p751_9@64, $p751_a@64, $p751_b@64 ] - 1@768),
    limbs 64 [ b1_00, b1_01, b1_02, b1_03, b1_04, b1_05, b1_06, b1_07, b1_08, b1_09, b1_10, b1_11 ] <=u
      (2@768 * limbs 64 [ $p751_0@64, $p751_1@64, $p751_2@64, $p751_3@64, $p751_4@64, $p751_5@64, $p751_6@64, $p751_7@64, $p751_8@64, $p751_9@64, $p751_a@64, $p751_b@64 ] - 1@768)
  ]
}

(* ===== Initialization ===== *)

mov L0x7fffffffd5c0 a0_00;
mov L0x7fffffffd5c8 a0_01;
mov L0x7fffffffd5d0 a0_02;
mov L0x7fffffffd5d8 a0_03;
mov L0x7fffffffd5e0 a0_04;
mov L0x7fffffffd5e8 a0_05;
mov L0x7fffffffd5f0 a0_06;
mov L0x7fffffffd5f8 a0_07;
mov L0x7fffffffd600 a0_08;
mov L0x7fffffffd608 a0_09;
mov L0x7fffffffd610 a0_10;
mov L0x7fffffffd618 a0_11;

mov L0x7fffffffd620 a1_00;
mov L0x7fffffffd628 a1_01;
mov L0x7fffffffd630 a1_02;
mov L0x7fffffffd638 a1_03;
mov L0x7fffffffd640 a1_04;
mov L0x7fffffffd648 a1_05;
mov L0x7fffffffd650 a1_06;
mov L0x7fffffffd658 a1_07;
mov L0x7fffffffd660 a1_08;
mov L0x7fffffffd668 a1_09;
mov L0x7fffffffd670 a1_10;
mov L0x7fffffffd678 a1_11;

mov L0x7fffffffd680 b0_00;
mov L0x7fffffffd688 b0_01;
mov L0x7fffffffd690 b0_02;
mov L0x7fffffffd698 b0_03;
mov L0x7fffffffd6a0 b0_04;
mov L0x7fffffffd6a8 b0_05;
mov L0x7fffffffd6b0 b0_06;
mov L0x7fffffffd6b8 b0_07;
mov L0x7fffffffd6c0 b0_08;
mov L0x7fffffffd6c8 b0_09;
mov L0x7fffffffd6d0 b0_10;
mov L0x7fffffffd6d8 b0_11;

mov L0x7fffffffd6e0 b1_00;
mov L0x7fffffffd6e8 b1_01;
mov L0x7fffffffd6f0 b1_02;
mov L0x7fffffffd6f8 b1_03;
mov L0x7fffffffd700 b1_04;
mov L0x7fffffffd708 b1_05;
mov L0x7fffffffd710 b1_06;
mov L0x7fffffffd718 b1_07;
mov L0x7fffffffd720 b1_08;
mov L0x7fffffffd728 b1_09;
mov L0x7fffffffd730 b1_10;
mov L0x7fffffffd738 b1_11;

mov L0x55555556a8a0 $p751x2_0@uint64;
mov L0x55555556a8a8 $p751x2_1@uint64;
mov L0x55555556a8c8 $p751x2_5@uint64;
mov L0x55555556a8d0 $p751x2_6@uint64;
mov L0x55555556a8d8 $p751x2_7@uint64;
mov L0x55555556a8e0 $p751x2_8@uint64;
mov L0x55555556a8e8 $p751x2_9@uint64;
mov L0x55555556a8f0 $p751x2_a@uint64;
mov L0x55555556a8f8 $p751x2_b@uint64;

nondet rax@uint64;
nondet rdi@uint64;
nondet rsi@uint64;

(* ===== Program ===== *)

(* #! -> SP = 0x7fffffffd568 *)
#! 0x7fffffffd568 = 0x7fffffffd568;
(* mov    %rdx,%r12                                #! PC = 0x555555558b26 *)
mov r12 rax;
(* mov    %rsi,%rbp                                #! PC = 0x555555558b2a *)
mov rbp rsi;
(* mov    %rdi,%rbx                                #! PC = 0x555555558b2e *)
mov rbx rdi;
(* #callq  0x555555564860 <fpadd751>               #! PC = 0x555555558b31 *)
#callq  0x555555564860 <fpadd751>               #! 0x555555558b31 = 0x555555558b31;
(* #! -> SP = 0x7fffffffd548 *)
#! 0x7fffffffd548 = 0x7fffffffd548;
(* #jmpq   0x5555555650d9 <fpadd751_asm>           #! PC = 0x555555564864 *)
#jmpq   0x5555555650d9 <fpadd751_asm>           #! 0x555555564864 = 0x555555564864;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffd5c0; Value = 0xcf84246d5a43c63f; PC = 0x5555555650e1 *)
mov r8 L0x7fffffffd5c0;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffd5c8; Value = 0x9b8671400ed9a445; PC = 0x5555555650e4 *)
mov r9 L0x7fffffffd5c8;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffd5d0; Value = 0x71667993f99ac2a2; PC = 0x5555555650e8 *)
mov r10 L0x7fffffffd5d0;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffd5d8; Value = 0xd62cb596738bf766; PC = 0x5555555650ec *)
mov r11 L0x7fffffffd5d8;
(* mov    0x20(%rdi),%r12                          #! EA = L0x7fffffffd5e0; Value = 0xd8b7b493e8306f7b; PC = 0x5555555650f0 *)
mov r12 L0x7fffffffd5e0;
(* mov    0x28(%rdi),%r13                          #! EA = L0x7fffffffd5e8; Value = 0xa4346c0299e69158; PC = 0x5555555650f4 *)
mov r13 L0x7fffffffd5e8;
(* mov    0x30(%rdi),%r14                          #! EA = L0x7fffffffd5f0; Value = 0xad330347c29dce2e; PC = 0x5555555650f8 *)
mov r14 L0x7fffffffd5f0;
(* mov    0x38(%rdi),%r15                          #! EA = L0x7fffffffd5f8; Value = 0xee674d739121befa; PC = 0x5555555650fc *)
mov r15 L0x7fffffffd5f8;
(* mov    0x40(%rdi),%rcx                          #! EA = L0x7fffffffd600; Value = 0xa4288e4b50d697bc; PC = 0x555555565100 *)
mov rcx L0x7fffffffd600;
(* add    (%rsi),%r8                               #! EA = L0x7fffffffd680; Value = 0xd4be51ffacb99060; PC = 0x555555565104 *)
adds carry r8 r8 L0x7fffffffd680;
(* adc    0x8(%rsi),%r9                            #! EA = L0x7fffffffd688; Value = 0xb0efbaafaa39259d; PC = 0x555555565107 *)
adcs carry r9 r9 L0x7fffffffd688 carry;
(* adc    0x10(%rsi),%r10                          #! EA = L0x7fffffffd690; Value = 0x48de9be140b4854b; PC = 0x55555556510b *)
adcs carry r10 r10 L0x7fffffffd690 carry;
(* adc    0x18(%rsi),%r11                          #! EA = L0x7fffffffd698; Value = 0xe2f3e48280c0c4e9; PC = 0x55555556510f *)
adcs carry r11 r11 L0x7fffffffd698 carry;
(* adc    0x20(%rsi),%r12                          #! EA = L0x7fffffffd6a0; Value = 0x9b484dfe748eac75; PC = 0x555555565113 *)
adcs carry r12 r12 L0x7fffffffd6a0 carry;
(* adc    0x28(%rsi),%r13                          #! EA = L0x7fffffffd6a8; Value = 0x87d2353b21458172; PC = 0x555555565117 *)
adcs carry r13 r13 L0x7fffffffd6a8 carry;
(* adc    0x30(%rsi),%r14                          #! EA = L0x7fffffffd6b0; Value = 0x0be3a5229bc786ba; PC = 0x55555556511b *)
adcs carry r14 r14 L0x7fffffffd6b0 carry;
(* adc    0x38(%rsi),%r15                          #! EA = L0x7fffffffd6b8; Value = 0xfdce7e88ec8ba369; PC = 0x55555556511f *)
adcs carry r15 r15 L0x7fffffffd6b8 carry;
(* adc    0x40(%rsi),%rcx                          #! EA = L0x7fffffffd6c0; Value = 0x1cc4b9aa28715d2a; PC = 0x555555565123 *)
adcs carry rcx rcx L0x7fffffffd6c0 carry;
(* mov    0x48(%rdi),%rax                          #! EA = L0x7fffffffd608; Value = 0xaac5717b213d0f1f; PC = 0x555555565127 *)
mov rax L0x7fffffffd608;
(* adc    0x48(%rsi),%rax                          #! EA = L0x7fffffffd6c8; Value = 0xf9fc103e753e093a; PC = 0x55555556512b *)
adcs carry rax rax L0x7fffffffd6c8 carry;
(* mov    %rax,0x48(%rdx)                          #! EA = L0x7fffffffd848; PC = 0x55555556512f *)
mov L0x7fffffffd848 rax;
(* mov    0x50(%rdi),%rax                          #! EA = L0x7fffffffd610; Value = 0x61359f66876c6340; PC = 0x555555565133 *)
mov rax L0x7fffffffd610;
(* adc    0x50(%rsi),%rax                          #! EA = L0x7fffffffd6d0; Value = 0xd2c37868b894c396; PC = 0x555555565137 *)
adcs carry rax rax L0x7fffffffd6d0 carry;
(* mov    %rax,0x50(%rdx)                          #! EA = L0x7fffffffd850; PC = 0x55555556513b *)
mov L0x7fffffffd850 rax;
(* mov    0x58(%rdi),%rax                          #! EA = L0x7fffffffd618; Value = 0x000059a3d1f2565d; PC = 0x55555556513f *)
mov rax L0x7fffffffd618;
(* adc    0x58(%rsi),%rax                          #! EA = L0x7fffffffd6d8; Value = 0x00000ccca3be4e1b; PC = 0x555555565143 *)
adcs carry rax rax L0x7fffffffd6d8 carry;
(* mov    %rax,0x58(%rdx)                          #! EA = L0x7fffffffd858; PC = 0x555555565147 *)
mov L0x7fffffffd858 rax;
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
(* mov    %r8,(%rdx)                               #! EA = L0x7fffffffd800; PC = 0x555555565190 *)
mov L0x7fffffffd800 r8;
(* mov    %r9,0x8(%rdx)                            #! EA = L0x7fffffffd808; PC = 0x555555565193 *)
mov L0x7fffffffd808 r9;
(* mov    %r10,0x10(%rdx)                          #! EA = L0x7fffffffd810; PC = 0x555555565197 *)
mov L0x7fffffffd810 r10;
(* mov    %r11,0x18(%rdx)                          #! EA = L0x7fffffffd818; PC = 0x55555556519b *)
mov L0x7fffffffd818 r11;
(* mov    %r12,0x20(%rdx)                          #! EA = L0x7fffffffd820; PC = 0x55555556519f *)
mov L0x7fffffffd820 r12;
(* mov    %r13,0x28(%rdx)                          #! EA = L0x7fffffffd828; PC = 0x5555555651a3 *)
mov L0x7fffffffd828 r13;
(* mov    %r14,0x30(%rdx)                          #! EA = L0x7fffffffd830; PC = 0x5555555651a7 *)
mov L0x7fffffffd830 r14;
(* mov    %r15,0x38(%rdx)                          #! EA = L0x7fffffffd838; PC = 0x5555555651ab *)
mov L0x7fffffffd838 r15;
(* mov    %rcx,0x40(%rdx)                          #! EA = L0x7fffffffd840; PC = 0x5555555651af *)
mov L0x7fffffffd840 rcx;
(* mov    0x48(%rdx),%r8                           #! EA = L0x7fffffffd848; Value = 0xa4c181b9967b1859; PC = 0x5555555651b3 *)
mov r8 L0x7fffffffd848;
(* mov    0x50(%rdx),%r9                           #! EA = L0x7fffffffd850; Value = 0x33f917cf400126d7; PC = 0x5555555651b7 *)
mov r9 L0x7fffffffd850;
(* mov    0x58(%rdx),%r10                          #! EA = L0x7fffffffd858; Value = 0x0000667075b0a479; PC = 0x5555555651bb *)
mov r10 L0x7fffffffd858;
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
(* mov    %r8,0x48(%rdx)                           #! EA = L0x7fffffffd848; PC = 0x5555555651dd *)
mov L0x7fffffffd848 r8;
(* mov    %r9,0x50(%rdx)                           #! EA = L0x7fffffffd850; PC = 0x5555555651e1 *)
mov L0x7fffffffd850 r9;
(* mov    %r10,0x58(%rdx)                          #! EA = L0x7fffffffd858; PC = 0x5555555651e5 *)
mov L0x7fffffffd858 r10;
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
(* add    (%rdx),%rsi                              #! EA = L0x7fffffffd800; Value = 0xa442766d06fd56a1; PC = 0x55555556524e *)
adds carry rsi rsi L0x7fffffffd800;
(* mov    %rsi,(%rdx)                              #! EA = L0x7fffffffd800; PC = 0x555555565251 *)
mov L0x7fffffffd800 rsi;
(* mov    0x8(%rdx),%rax                           #! EA = L0x7fffffffd808; Value = 0x4c762befb912c9e3; PC = 0x555555565254 *)
mov rax L0x7fffffffd808;
(* adc    %r8,%rax                                 #! PC = 0x555555565258 *)
adcs carry rax rax r8@uint64 carry;
(* mov    %rax,0x8(%rdx)                           #! EA = L0x7fffffffd808; PC = 0x55555556525b *)
mov L0x7fffffffd808 rax;
(* mov    0x10(%rdx),%rax                          #! EA = L0x7fffffffd810; Value = 0xba4515753a4f47ee; PC = 0x55555556525f *)
mov rax L0x7fffffffd810;
(* adc    %r8,%rax                                 #! PC = 0x555555565263 *)
adcs carry rax rax r8@uint64 carry;
(* mov    %rax,0x10(%rdx)                          #! EA = L0x7fffffffd810; PC = 0x555555565266 *)
mov L0x7fffffffd810 rax;
(* mov    0x18(%rdx),%rax                          #! EA = L0x7fffffffd818; Value = 0xb9209a18f44cbc4f; PC = 0x55555556526a *)
mov rax L0x7fffffffd818;
(* adc    %r8,%rax                                 #! PC = 0x55555556526e *)
adcs carry rax rax r8@uint64 carry;
(* mov    %rax,0x18(%rdx)                          #! EA = L0x7fffffffd818; PC = 0x555555565271 *)
mov L0x7fffffffd818 rax;
(* mov    0x20(%rdx),%rax                          #! EA = L0x7fffffffd820; Value = 0x740002925cbf1bf1; PC = 0x555555565275 *)
mov rax L0x7fffffffd820;
(* adc    %r8,%rax                                 #! PC = 0x555555565279 *)
adcs carry rax rax r8@uint64 carry;
(* mov    %rax,0x20(%rdx)                          #! EA = L0x7fffffffd820; PC = 0x55555556527c *)
mov L0x7fffffffd820 rax;
(* adc    0x28(%rdx),%r9                           #! EA = L0x7fffffffd828; Value = 0x4ea6a13dbb2c12cb; PC = 0x555555565280 *)
adcs carry r9 r9 L0x7fffffffd828 carry;
(* adc    0x30(%rdx),%r10                          #! EA = L0x7fffffffd830; Value = 0xf13d7b5fca746397; PC = 0x555555565284 *)
adcs carry r10 r10 L0x7fffffffd830 carry;
(* adc    0x38(%rdx),%r11                          #! EA = L0x7fffffffd838; Value = 0x370a95c855bdc975; PC = 0x555555565288 *)
adcs carry r11 r11 L0x7fffffffd838 carry;
(* adc    0x40(%rdx),%r12                          #! EA = L0x7fffffffd840; Value = 0xb0501725cb7023fa; PC = 0x55555556528c *)
adcs carry r12 r12 L0x7fffffffd840 carry;
(* adc    0x48(%rdx),%r13                          #! EA = L0x7fffffffd848; Value = 0x99fc17b0dd1669c9; PC = 0x555555565290 *)
adcs carry r13 r13 L0x7fffffffd848 carry;
(* adc    0x50(%rdx),%r14                          #! EA = L0x7fffffffd850; Value = 0x17d3f690108b6e0a; PC = 0x555555565294 *)
adcs carry r14 r14 L0x7fffffffd850 carry;
(* adc    0x58(%rdx),%r15                          #! EA = L0x7fffffffd858; Value = 0xffff86a4cb2cb641; PC = 0x555555565298 *)
adcs carry r15 r15 L0x7fffffffd858 carry;
(* mov    %r9,0x28(%rdx)                           #! EA = L0x7fffffffd828; PC = 0x55555556529c *)
mov L0x7fffffffd828 r9;
(* mov    %r10,0x30(%rdx)                          #! EA = L0x7fffffffd830; PC = 0x5555555652a0 *)
mov L0x7fffffffd830 r10;
(* mov    %r11,0x38(%rdx)                          #! EA = L0x7fffffffd838; PC = 0x5555555652a4 *)
mov L0x7fffffffd838 r11;
(* mov    %r12,0x40(%rdx)                          #! EA = L0x7fffffffd840; PC = 0x5555555652a8 *)
mov L0x7fffffffd840 r12;
(* mov    %r13,0x48(%rdx)                          #! EA = L0x7fffffffd848; PC = 0x5555555652ac *)
mov L0x7fffffffd848 r13;
(* mov    %r14,0x50(%rdx)                          #! EA = L0x7fffffffd850; PC = 0x5555555652b0 *)
mov L0x7fffffffd850 r14;
(* mov    %r15,0x58(%rdx)                          #! EA = L0x7fffffffd858; PC = 0x5555555652b4 *)
mov L0x7fffffffd858 r15;
(* #! <- SP = 0x7fffffffd548 *)
#! 0x7fffffffd548 = 0x7fffffffd548;
(* #retq                                           #! PC = 0x5555555652c0 *)
#retq                                           #! 0x5555555652c0 = 0x5555555652c0;
(* #jmpq   0x555555564860 <fpadd751>               #! PC = 0x555555558b47 *)
#jmpq   0x555555564860 <fpadd751>               #! 0x555555558b47 = 0x555555558b47;
(* #jmpq   0x5555555650d9 <fpadd751_asm>           #! PC = 0x555555564864 *)
#jmpq   0x5555555650d9 <fpadd751_asm>           #! 0x555555564864 = 0x555555564864;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffd620; Value = 0x43dfd8243baf96f0; PC = 0x5555555650e1 *)
mov r8 L0x7fffffffd620;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffd628; Value = 0xce0c298e62641ce7; PC = 0x5555555650e4 *)
mov r9 L0x7fffffffd628;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffd630; Value = 0x75548a17f355788c; PC = 0x5555555650e8 *)
mov r10 L0x7fffffffd630;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffd638; Value = 0x8fe3059f834646e0; PC = 0x5555555650ec *)
mov r11 L0x7fffffffd638;
(* mov    0x20(%rdi),%r12                          #! EA = L0x7fffffffd640; Value = 0x5102aa6abfca929b; PC = 0x5555555650f0 *)
mov r12 L0x7fffffffd640;
(* mov    0x28(%rdi),%r13                          #! EA = L0x7fffffffd648; Value = 0x1c22c09054b466c6; PC = 0x5555555650f4 *)
mov r13 L0x7fffffffd648;
(* mov    0x30(%rdi),%r14                          #! EA = L0x7fffffffd650; Value = 0xe3c56302500f7839; PC = 0x5555555650f8 *)
mov r14 L0x7fffffffd650;
(* mov    0x38(%rdi),%r15                          #! EA = L0x7fffffffd658; Value = 0xacd7491148660ba9; PC = 0x5555555650fc *)
mov r15 L0x7fffffffd658;
(* mov    0x40(%rdi),%rcx                          #! EA = L0x7fffffffd660; Value = 0x12986e4c466ca2dc; PC = 0x555555565100 *)
mov rcx L0x7fffffffd660;
(* add    (%rsi),%r8                               #! EA = L0x7fffffffd6e0; Value = 0x04b0e3ca931f11e9; PC = 0x555555565104 *)
adds carry r8 r8 L0x7fffffffd6e0;
(* adc    0x8(%rsi),%r9                            #! EA = L0x7fffffffd6e8; Value = 0x942476fe2b7aeeed; PC = 0x555555565107 *)
adcs carry r9 r9 L0x7fffffffd6e8 carry;
(* adc    0x10(%rsi),%r10                          #! EA = L0x7fffffffd6f0; Value = 0x4c741031a24db93a; PC = 0x55555556510b *)
adcs carry r10 r10 L0x7fffffffd6f0 carry;
(* adc    0x18(%rsi),%r11                          #! EA = L0x7fffffffd6f8; Value = 0xa82290bf2bf0325f; PC = 0x55555556510f *)
adcs carry r11 r11 L0x7fffffffd6f8 carry;
(* adc    0x20(%rsi),%r12                          #! EA = L0x7fffffffd700; Value = 0x1271ec256c3c42a2; PC = 0x555555565113 *)
adcs carry r12 r12 L0x7fffffffd700 carry;
(* adc    0x28(%rsi),%r13                          #! EA = L0x7fffffffd708; Value = 0x9b6c6261d83eebda; PC = 0x555555565117 *)
adcs carry r13 r13 L0x7fffffffd708 carry;
(* adc    0x30(%rsi),%r14                          #! EA = L0x7fffffffd710; Value = 0x2999b2ca4c3eb91b; PC = 0x55555556511b *)
adcs carry r14 r14 L0x7fffffffd710 carry;
(* adc    0x38(%rsi),%r15                          #! EA = L0x7fffffffd718; Value = 0xbb4c7719a45489e5; PC = 0x55555556511f *)
adcs carry r15 r15 L0x7fffffffd718 carry;
(* adc    0x40(%rsi),%rcx                          #! EA = L0x7fffffffd720; Value = 0x4ef19974de2888b9; PC = 0x555555565123 *)
adcs carry rcx rcx L0x7fffffffd720 carry;
(* mov    0x48(%rdi),%rax                          #! EA = L0x7fffffffd668; Value = 0x4581890c65674cd5; PC = 0x555555565127 *)
mov rax L0x7fffffffd668;
(* adc    0x48(%rsi),%rax                          #! EA = L0x7fffffffd728; Value = 0xad819391e5262f84; PC = 0x55555556512b *)
adcs carry rax rax L0x7fffffffd728 carry;
(* mov    %rax,0x48(%rdx)                          #! EA = L0x7fffffffd8a8; PC = 0x55555556512f *)
mov L0x7fffffffd8a8 rax;
(* mov    0x50(%rdi),%rax                          #! EA = L0x7fffffffd670; Value = 0x9ee75bf404969101; PC = 0x555555565133 *)
mov rax L0x7fffffffd670;
(* adc    0x50(%rsi),%rax                          #! EA = L0x7fffffffd730; Value = 0x563f927116f9bf4c; PC = 0x555555565137 *)
adcs carry rax rax L0x7fffffffd730 carry;
(* mov    %rax,0x50(%rdx)                          #! EA = L0x7fffffffd8b0; PC = 0x55555556513b *)
mov L0x7fffffffd8b0 rax;
(* mov    0x58(%rdi),%rax                          #! EA = L0x7fffffffd678; Value = 0x00003e9778e64d67; PC = 0x55555556513f *)
mov rax L0x7fffffffd678;
(* adc    0x58(%rsi),%rax                          #! EA = L0x7fffffffd738; Value = 0x0000470b35fa941b; PC = 0x555555565143 *)
adcs carry rax rax L0x7fffffffd738 carry;
(* mov    %rax,0x58(%rdx)                          #! EA = L0x7fffffffd8b8; PC = 0x555555565147 *)
mov L0x7fffffffd8b8 rax;
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
(* mov    %r8,(%rdx)                               #! EA = L0x7fffffffd860; PC = 0x555555565190 *)
mov L0x7fffffffd860 r8;
(* mov    %r9,0x8(%rdx)                            #! EA = L0x7fffffffd868; PC = 0x555555565193 *)
mov L0x7fffffffd868 r9;
(* mov    %r10,0x10(%rdx)                          #! EA = L0x7fffffffd870; PC = 0x555555565197 *)
mov L0x7fffffffd870 r10;
(* mov    %r11,0x18(%rdx)                          #! EA = L0x7fffffffd878; PC = 0x55555556519b *)
mov L0x7fffffffd878 r11;
(* mov    %r12,0x20(%rdx)                          #! EA = L0x7fffffffd880; PC = 0x55555556519f *)
mov L0x7fffffffd880 r12;
(* mov    %r13,0x28(%rdx)                          #! EA = L0x7fffffffd888; PC = 0x5555555651a3 *)
mov L0x7fffffffd888 r13;
(* mov    %r14,0x30(%rdx)                          #! EA = L0x7fffffffd890; PC = 0x5555555651a7 *)
mov L0x7fffffffd890 r14;
(* mov    %r15,0x38(%rdx)                          #! EA = L0x7fffffffd898; PC = 0x5555555651ab *)
mov L0x7fffffffd898 r15;
(* mov    %rcx,0x40(%rdx)                          #! EA = L0x7fffffffd8a0; PC = 0x5555555651af *)
mov L0x7fffffffd8a0 rcx;
(* mov    0x48(%rdx),%r8                           #! EA = L0x7fffffffd8a8; Value = 0xf3031c9e4a8d7c59; PC = 0x5555555651b3 *)
mov r8 L0x7fffffffd8a8;
(* mov    0x50(%rdx),%r9                           #! EA = L0x7fffffffd8b0; Value = 0xf526ee651b90504d; PC = 0x5555555651b7 *)
mov r9 L0x7fffffffd8b0;
(* mov    0x58(%rdx),%r10                          #! EA = L0x7fffffffd8b8; Value = 0x000085a2aee0e182; PC = 0x5555555651bb *)
mov r10 L0x7fffffffd8b8;
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
(* mov    %r8,0x48(%rdx)                           #! EA = L0x7fffffffd8a8; PC = 0x5555555651dd *)
mov L0x7fffffffd8a8 r8;
(* mov    %r9,0x50(%rdx)                           #! EA = L0x7fffffffd8b0; PC = 0x5555555651e1 *)
mov L0x7fffffffd8b0 r9;
(* mov    %r10,0x58(%rdx)                          #! EA = L0x7fffffffd8b8; PC = 0x5555555651e5 *)
mov L0x7fffffffd8b8 r10;
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
(* add    (%rdx),%rsi                              #! EA = L0x7fffffffd860; Value = 0x4890bbeececea8db; PC = 0x55555556524e *)
adds carry rsi rsi L0x7fffffffd860;
(* mov    %rsi,(%rdx)                              #! EA = L0x7fffffffd860; PC = 0x555555565251 *)
mov L0x7fffffffd860 rsi;
(* mov    0x8(%rdx),%rax                           #! EA = L0x7fffffffd868; Value = 0x6230a08c8ddf0bd4; PC = 0x555555565254 *)
mov rax L0x7fffffffd868;
(* adc    %r8,%rax                                 #! PC = 0x555555565258 *)
adcs carry rax rax r8@uint64 carry;
(* mov    %rax,0x8(%rdx)                           #! EA = L0x7fffffffd868; PC = 0x55555556525b *)
mov L0x7fffffffd868 rax;
(* mov    0x10(%rdx),%rax                          #! EA = L0x7fffffffd870; Value = 0xc1c89a4995a331c7; PC = 0x55555556525f *)
mov rax L0x7fffffffd870;
(* adc    %r8,%rax                                 #! PC = 0x555555565263 *)
adcs carry rax rax r8@uint64 carry;
(* mov    %rax,0x10(%rdx)                          #! EA = L0x7fffffffd870; PC = 0x555555565266 *)
mov L0x7fffffffd870 rax;
(* mov    0x18(%rdx),%rax                          #! EA = L0x7fffffffd878; Value = 0x3805965eaf36793f; PC = 0x55555556526a *)
mov rax L0x7fffffffd878;
(* adc    %r8,%rax                                 #! PC = 0x55555556526e *)
adcs carry rax rax r8@uint64 carry;
(* mov    %rax,0x18(%rdx)                          #! EA = L0x7fffffffd878; PC = 0x555555565271 *)
mov L0x7fffffffd878 rax;
(* mov    0x20(%rdx),%rax                          #! EA = L0x7fffffffd880; Value = 0x637496902c06d53e; PC = 0x555555565275 *)
mov rax L0x7fffffffd880;
(* adc    %r8,%rax                                 #! PC = 0x555555565279 *)
adcs carry rax rax r8@uint64 carry;
(* mov    %rax,0x20(%rdx)                          #! EA = L0x7fffffffd880; PC = 0x55555556527c *)
mov L0x7fffffffd880 rax;
(* adc    0x28(%rdx),%r9                           #! EA = L0x7fffffffd888; Value = 0xda2f22f22cf352a0; PC = 0x555555565280 *)
adcs carry r9 r9 L0x7fffffffd888 carry;
(* adc    0x30(%rdx),%r10                          #! EA = L0x7fffffffd890; Value = 0x4585e8c2085d4002; PC = 0x555555565284 *)
adcs carry r10 r10 L0x7fffffffd890 carry;
(* adc    0x38(%rdx),%r11                          #! EA = L0x7fffffffd898; Value = 0xb2f889f6c4cafca1; PC = 0x555555565288 *)
adcs carry r11 r11 L0x7fffffffd898 carry;
(* adc    0x40(%rdx),%r12                          #! EA = L0x7fffffffd8a0; Value = 0x50ecd6f176bd5aa8; PC = 0x55555556528c *)
adcs carry r12 r12 L0x7fffffffd8a0 carry;
(* adc    0x48(%rdx),%r13                          #! EA = L0x7fffffffd8a8; Value = 0xe83db2959128cdc9; PC = 0x555555565290 *)
adcs carry r13 r13 L0x7fffffffd8a8 carry;
(* adc    0x50(%rdx),%r14                          #! EA = L0x7fffffffd8b0; Value = 0xd901cd25ec1a9780; PC = 0x555555565294 *)
adcs carry r14 r14 L0x7fffffffd8b0 carry;
(* adc    0x58(%rdx),%r15                          #! EA = L0x7fffffffd8b8; Value = 0xffffa5d7045cf34a; PC = 0x555555565298 *)
adcs carry r15 r15 L0x7fffffffd8b8 carry;
(* mov    %r9,0x28(%rdx)                           #! EA = L0x7fffffffd888; PC = 0x55555556529c *)
mov L0x7fffffffd888 r9;
(* mov    %r10,0x30(%rdx)                          #! EA = L0x7fffffffd890; PC = 0x5555555652a0 *)
mov L0x7fffffffd890 r10;
(* mov    %r11,0x38(%rdx)                          #! EA = L0x7fffffffd898; PC = 0x5555555652a4 *)
mov L0x7fffffffd898 r11;
(* mov    %r12,0x40(%rdx)                          #! EA = L0x7fffffffd8a0; PC = 0x5555555652a8 *)
mov L0x7fffffffd8a0 r12;
(* mov    %r13,0x48(%rdx)                          #! EA = L0x7fffffffd8a8; PC = 0x5555555652ac *)
mov L0x7fffffffd8a8 r13;
(* mov    %r14,0x50(%rdx)                          #! EA = L0x7fffffffd8b0; PC = 0x5555555652b0 *)
mov L0x7fffffffd8b0 r14;
(* mov    %r15,0x58(%rdx)                          #! EA = L0x7fffffffd8b8; PC = 0x5555555652b4 *)
mov L0x7fffffffd8b8 r15;
(* #! <- SP = 0x7fffffffd568 *)
#! 0x7fffffffd568 = 0x7fffffffd568;
(* #retq                                           #! PC = 0x5555555652c0 *)
#retq                                           #! 0x5555555652c0 = 0x5555555652c0;

(* ===== Outputs ===== *)

mov c0_00 L0x7fffffffd800;
mov c0_01 L0x7fffffffd808;
mov c0_02 L0x7fffffffd810;
mov c0_03 L0x7fffffffd818;
mov c0_04 L0x7fffffffd820;
mov c0_05 L0x7fffffffd828;
mov c0_06 L0x7fffffffd830;
mov c0_07 L0x7fffffffd838;
mov c0_08 L0x7fffffffd840;
mov c0_09 L0x7fffffffd848;
mov c0_10 L0x7fffffffd850;
mov c0_11 L0x7fffffffd858;

mov c1_00 L0x7fffffffd860;
mov c1_01 L0x7fffffffd868;
mov c1_02 L0x7fffffffd870;
mov c1_03 L0x7fffffffd878;
mov c1_04 L0x7fffffffd880;
mov c1_05 L0x7fffffffd888;
mov c1_06 L0x7fffffffd890;
mov c1_07 L0x7fffffffd898;
mov c1_08 L0x7fffffffd8a0;
mov c1_09 L0x7fffffffd8a8;
mov c1_10 L0x7fffffffd8b0;
mov c1_11 L0x7fffffffd8b8;

{
  true
  &&
  and [
    equmod
      (limbs 64 [ c0_00, c0_01, c0_02, c0_03, c0_04, c0_05, c0_06, c0_07, c0_08, c0_09, c0_10, c0_11 ])
      (
        (limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ])
        +
        (limbs 64 [ b0_00, b0_01, b0_02, b0_03, b0_04, b0_05, b0_06, b0_07, b0_08, b0_09, b0_10, b0_11 ])
      )
      (limbs 64 [ $p751_0@64, $p751_1@64, $p751_2@64, $p751_3@64, $p751_4@64, $p751_5@64, $p751_6@64, $p751_7@64, $p751_8@64, $p751_9@64, $p751_a@64, $p751_b@64 ]),
    equmod
      (limbs 64 [ c1_00, c1_01, c1_02, c1_03, c1_04, c1_05, c1_06, c1_07, c1_08, c1_09, c1_10, c1_11 ])
      (
        (limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ])
        +
        (limbs 64 [ b1_00, b1_01, b1_02, b1_03, b1_04, b1_05, b1_06, b1_07, b1_08, b1_09, b1_10, b1_11 ])
      )
      (limbs 64 [ $p751_0@64, $p751_1@64, $p751_2@64, $p751_3@64, $p751_4@64, $p751_5@64, $p751_6@64, $p751_7@64, $p751_8@64, $p751_9@64, $p751_a@64, $p751_b@64 ]),
    limbs 64 [ c0_00, c0_01, c0_02, c0_03, c0_04, c0_05, c0_06, c0_07, c0_08, c0_09, c0_10, c0_11 ] <=u
      (2@768 * limbs 64 [ $p751_0@64, $p751_1@64, $p751_2@64, $p751_3@64, $p751_4@64, $p751_5@64, $p751_6@64, $p751_7@64, $p751_8@64, $p751_9@64, $p751_a@64, $p751_b@64 ] - 1@768),
    limbs 64 [ c1_00, c1_01, c1_02, c1_03, c1_04, c1_05, c1_06, c1_07, c1_08, c1_09, c1_10, c1_11 ] <=u
      (2@768 * limbs 64 [ $p751_0@64, $p751_1@64, $p751_2@64, $p751_3@64, $p751_4@64, $p751_5@64, $p751_6@64, $p751_7@64, $p751_8@64, $p751_9@64, $p751_a@64, $p751_b@64 ] - 1@768)
  ]
}
