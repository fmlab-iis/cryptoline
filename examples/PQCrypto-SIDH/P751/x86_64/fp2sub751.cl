(* on frege: -v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint fp2sub751.cl
Parsing Cryptoline file:		[OK]		0.005409 seconds
Checking well-formedness:		[OK]		0.000265 seconds
Transforming to SSA form:		[OK]		0.000161 seconds
Normalizing specification:		[OK]		0.000189 seconds
Rewriting assignments:			[OK]		0.000274 seconds
Verifying program safety:
	 Cut 0
	     Round 1 (0 safety conditions, timeout = 14400 seconds)
	 Overall			[OK]		0.000135 seconds
Verifying range specification:		[OK]		65.724596 seconds
Rewriting value-preserved casting:	[OK]		0.000045 seconds
Verifying algebraic specification:	[OK]		0.000352 seconds
Verification result:			[OK]		65.731839 seconds
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

mov L0x7fffffffd5b0 a0_00;
mov L0x7fffffffd5b8 a0_01;
mov L0x7fffffffd5c0 a0_02;
mov L0x7fffffffd5c8 a0_03;
mov L0x7fffffffd5d0 a0_04;
mov L0x7fffffffd5d8 a0_05;
mov L0x7fffffffd5e0 a0_06;
mov L0x7fffffffd5e8 a0_07;
mov L0x7fffffffd5f0 a0_08;
mov L0x7fffffffd5f8 a0_09;
mov L0x7fffffffd600 a0_10;
mov L0x7fffffffd608 a0_11;

mov L0x7fffffffd610 a1_00;
mov L0x7fffffffd618 a1_01;
mov L0x7fffffffd620 a1_02;
mov L0x7fffffffd628 a1_03;
mov L0x7fffffffd630 a1_04;
mov L0x7fffffffd638 a1_05;
mov L0x7fffffffd640 a1_06;
mov L0x7fffffffd648 a1_07;
mov L0x7fffffffd650 a1_08;
mov L0x7fffffffd658 a1_09;
mov L0x7fffffffd660 a1_10;
mov L0x7fffffffd668 a1_11;

mov L0x7fffffffd670 b0_00;
mov L0x7fffffffd678 b0_01;
mov L0x7fffffffd680 b0_02;
mov L0x7fffffffd688 b0_03;
mov L0x7fffffffd690 b0_04;
mov L0x7fffffffd698 b0_05;
mov L0x7fffffffd6a0 b0_06;
mov L0x7fffffffd6a8 b0_07;
mov L0x7fffffffd6b0 b0_08;
mov L0x7fffffffd6b8 b0_09;
mov L0x7fffffffd6c0 b0_10;
mov L0x7fffffffd6c8 b0_11;

mov L0x7fffffffd6d0 b1_00;
mov L0x7fffffffd6d8 b1_01;
mov L0x7fffffffd6e0 b1_02;
mov L0x7fffffffd6e8 b1_03;
mov L0x7fffffffd6f0 b1_04;
mov L0x7fffffffd6f8 b1_05;
mov L0x7fffffffd700 b1_06;
mov L0x7fffffffd708 b1_07;
mov L0x7fffffffd710 b1_08;
mov L0x7fffffffd718 b1_09;
mov L0x7fffffffd720 b1_10;
mov L0x7fffffffd728 b1_11;

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

(* #! -> SP = 0x7fffffffd558 *)
#! 0x7fffffffd558 = 0x7fffffffd558;
(* mov    %rdx,%r12                                #! PC = 0x555555558b56 *)
mov r12 rax;
(* mov    %rsi,%rbp                                #! PC = 0x555555558b5a *)
mov rbp rsi;
(* mov    %rdi,%rbx                                #! PC = 0x555555558b5e *)
mov rbx rdi;
(* #callq  0x555555564870 <fpsub751>               #! PC = 0x555555558b61 *)
#callq  0x555555564870 <fpsub751>               #! 0x555555558b61 = 0x555555558b61;
(* #! -> SP = 0x7fffffffd538 *)
#! 0x7fffffffd538 = 0x7fffffffd538;
(* #jmpq   0x5555555652c1 <fpsub751_asm>           #! PC = 0x555555564874 *)
#jmpq   0x5555555652c1 <fpsub751_asm>           #! 0x555555564874 = 0x555555564874;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffd5b0; Value = 0x3a06123744cccd36; PC = 0x5555555652c9 *)
mov r8 L0x7fffffffd5b0;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffd5b8; Value = 0x8335944d539b3787; PC = 0x5555555652cc *)
mov r9 L0x7fffffffd5b8;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffd5c0; Value = 0xf49cd76644eaa3ee; PC = 0x5555555652d0 *)
mov r10 L0x7fffffffd5c0;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffd5c8; Value = 0x05530fce4bc80f36; PC = 0x5555555652d4 *)
mov r11 L0x7fffffffd5c8;
(* mov    0x20(%rdi),%r12                          #! EA = L0x7fffffffd5d0; Value = 0xb94e4f3214491fdd; PC = 0x5555555652d8 *)
mov r12 L0x7fffffffd5d0;
(* mov    0x28(%rdi),%r13                          #! EA = L0x7fffffffd5d8; Value = 0x6c56427ed30dea86; PC = 0x5555555652dc *)
mov r13 L0x7fffffffd5d8;
(* mov    0x30(%rdi),%r14                          #! EA = L0x7fffffffd5e0; Value = 0x4e404d184bb040e5; PC = 0x5555555652e0 *)
mov r14 L0x7fffffffd5e0;
(* mov    0x38(%rdi),%r15                          #! EA = L0x7fffffffd5e8; Value = 0xf42fec172a99085c; PC = 0x5555555652e4 *)
mov r15 L0x7fffffffd5e8;
(* mov    0x40(%rdi),%rcx                          #! EA = L0x7fffffffd5f0; Value = 0x4df757c73e08780c; PC = 0x5555555652e8 *)
mov rcx L0x7fffffffd5f0;
(* sub    (%rsi),%r8                               #! EA = L0x7fffffffd670; Value = 0xfc0529adbf75e35d; PC = 0x5555555652ec *)
subb carry r8 r8 L0x7fffffffd670;
(* sbb    0x8(%rsi),%r9                            #! EA = L0x7fffffffd678; Value = 0x1e26620fe9273686; PC = 0x5555555652ef *)
sbbs carry r9 r9 L0x7fffffffd678 carry;
(* sbb    0x10(%rsi),%r10                          #! EA = L0x7fffffffd680; Value = 0x4be04320040eca0b; PC = 0x5555555652f3 *)
sbbs carry r10 r10 L0x7fffffffd680 carry;
(* sbb    0x18(%rsi),%r11                          #! EA = L0x7fffffffd688; Value = 0xc38aa966513813c7; PC = 0x5555555652f7 *)
sbbs carry r11 r11 L0x7fffffffd688 carry;
(* sbb    0x20(%rsi),%r12                          #! EA = L0x7fffffffd690; Value = 0xae3688283a82ff8c; PC = 0x5555555652fb *)
sbbs carry r12 r12 L0x7fffffffd690 carry;
(* sbb    0x28(%rsi),%r13                          #! EA = L0x7fffffffd698; Value = 0xcbecbec0ce975ebe; PC = 0x5555555652ff *)
sbbs carry r13 r13 L0x7fffffffd698 carry;
(* sbb    0x30(%rsi),%r14                          #! EA = L0x7fffffffd6a0; Value = 0x04f4b03da9cffa88; PC = 0x555555565303 *)
sbbs carry r14 r14 L0x7fffffffd6a0 carry;
(* sbb    0x38(%rsi),%r15                          #! EA = L0x7fffffffd6a8; Value = 0x62ece0d529562cc3; PC = 0x555555565307 *)
sbbs carry r15 r15 L0x7fffffffd6a8 carry;
(* sbb    0x40(%rsi),%rcx                          #! EA = L0x7fffffffd6b0; Value = 0xb5b7d2f7089c6fe0; PC = 0x55555556530b *)
sbbs carry rcx rcx L0x7fffffffd6b0 carry;
(* mov    %r8,(%rdx)                               #! EA = L0x7fffffffd7f0; PC = 0x55555556530f *)
mov L0x7fffffffd7f0 r8;
(* mov    %r9,0x8(%rdx)                            #! EA = L0x7fffffffd7f8; PC = 0x555555565312 *)
mov L0x7fffffffd7f8 r9;
(* mov    %r10,0x10(%rdx)                          #! EA = L0x7fffffffd800; PC = 0x555555565316 *)
mov L0x7fffffffd800 r10;
(* mov    %r11,0x18(%rdx)                          #! EA = L0x7fffffffd808; PC = 0x55555556531a *)
mov L0x7fffffffd808 r11;
(* mov    %r12,0x20(%rdx)                          #! EA = L0x7fffffffd810; PC = 0x55555556531e *)
mov L0x7fffffffd810 r12;
(* mov    %r13,0x28(%rdx)                          #! EA = L0x7fffffffd818; PC = 0x555555565322 *)
mov L0x7fffffffd818 r13;
(* mov    %r14,0x30(%rdx)                          #! EA = L0x7fffffffd820; PC = 0x555555565326 *)
mov L0x7fffffffd820 r14;
(* mov    %r15,0x38(%rdx)                          #! EA = L0x7fffffffd828; PC = 0x55555556532a *)
mov L0x7fffffffd828 r15;
(* mov    %rcx,0x40(%rdx)                          #! EA = L0x7fffffffd830; PC = 0x55555556532e *)
mov L0x7fffffffd830 rcx;
(* mov    0x48(%rdi),%rax                          #! EA = L0x7fffffffd5f8; Value = 0x2c2c7746bf210441; PC = 0x555555565332 *)
mov rax L0x7fffffffd5f8;
(* sbb    0x48(%rsi),%rax                          #! EA = L0x7fffffffd6b8; Value = 0x95bc6f0cf1834e30; PC = 0x555555565336 *)
sbbs carry rax rax L0x7fffffffd6b8 carry;
(* mov    %rax,0x48(%rdx)                          #! EA = L0x7fffffffd838; PC = 0x55555556533a *)
mov L0x7fffffffd838 rax;
(* mov    0x50(%rdi),%rax                          #! EA = L0x7fffffffd600; Value = 0x851eb729d077dcb8; PC = 0x55555556533e *)
mov rax L0x7fffffffd600;
(* sbb    0x50(%rsi),%rax                          #! EA = L0x7fffffffd6c0; Value = 0xffab323ca73e8c69; PC = 0x555555565342 *)
sbbs carry rax rax L0x7fffffffd6c0 carry;
(* mov    %rax,0x50(%rdx)                          #! EA = L0x7fffffffd840; PC = 0x555555565346 *)
mov L0x7fffffffd840 rax;
(* mov    0x58(%rdi),%rax                          #! EA = L0x7fffffffd608; Value = 0x00005fa4d7b0b8bf; PC = 0x55555556534a *)
mov rax L0x7fffffffd608;
(* sbb    0x58(%rsi),%rax                          #! EA = L0x7fffffffd6c8; Value = 0x000014e23328015e; PC = 0x55555556534e *)
sbbs carry rax rax L0x7fffffffd6c8 carry;
(* mov    %rax,0x58(%rdx)                          #! EA = L0x7fffffffd848; PC = 0x555555565352 *)
mov L0x7fffffffd848 rax;
(* mov    $0x0,%rax                                #! PC = 0x555555565356 *)
mov rax 0x0@uint64;
(* sbb    $0x0,%rax                                #! PC = 0x55555556535d *)
sbbs carry rax rax 0x0@uint64 carry;
(* mov    0x5538(%rip),%rsi        # 0x55555556a8a0 <p751x2>#! EA = L0x55555556a8a0; Value = 0xfffffffffffffffe; PC = 0x555555565361 *)
mov rsi L0x55555556a8a0;
(* and    %rax,%rsi                                #! PC = 0x555555565368 *)
and uint64 rsi rax rsi;
(* mov    0x5536(%rip),%r8        # 0x55555556a8a8 <p751x2+8>#! EA = L0x55555556a8a8; Value = 0xffffffffffffffff; PC = 0x55555556536b *)
mov r8 L0x55555556a8a8;
(* and    %rax,%r8                                 #! PC = 0x555555565372 *)
and uint64 r8 rax r8;
(* mov    0x554c(%rip),%r9        # 0x55555556a8c8 <p751x2+40>#! EA = L0x55555556a8c8; Value = 0xdd5fffffffffffff; PC = 0x555555565375 *)
mov r9 L0x55555556a8c8;
(* and    %rax,%r9                                 #! PC = 0x55555556537c *)
and uint64 r9 rax r9;
(* mov    0x554a(%rip),%r10        # 0x55555556a8d0 <p751x2+48>#! EA = L0x55555556a8d0; Value = 0xc7d92d0a93f0f151; PC = 0x55555556537f *)
mov r10 L0x55555556a8d0;
(* and    %rax,%r10                                #! PC = 0x555555565386 *)
and uint64 r10 rax r10;
(* mov    0x5548(%rip),%r11        # 0x55555556a8d8 <p751x2+56>#! EA = L0x55555556a8d8; Value = 0xb52b363427ef98ed; PC = 0x555555565389 *)
mov r11 L0x55555556a8d8;
(* and    %rax,%r11                                #! PC = 0x555555565390 *)
and uint64 r11 rax r11;
(* mov    0x5546(%rip),%r12        # 0x55555556a8e0 <p751x2+64>#! EA = L0x55555556a8e0; Value = 0x109d30cfadd7d0ed; PC = 0x555555565393 *)
mov r12 L0x55555556a8e0;
(* and    %rax,%r12                                #! PC = 0x55555556539a *)
and uint64 r12 rax r12;
(* mov    0x5544(%rip),%r13        # 0x55555556a8e8 <p751x2+72>#! EA = L0x55555556a8e8; Value = 0x0ac56a08b964ae90; PC = 0x55555556539d *)
mov r13 L0x55555556a8e8;
(* and    %rax,%r13                                #! PC = 0x5555555653a4 *)
and uint64 r13 rax r13;
(* mov    0x5542(%rip),%r14        # 0x55555556a8f0 <p751x2+80>#! EA = L0x55555556a8f0; Value = 0x1c25213f2f75b8cd; PC = 0x5555555653a7 *)
mov r14 L0x55555556a8f0;
(* and    %rax,%r14                                #! PC = 0x5555555653ae *)
and uint64 r14 rax r14;
(* mov    0x5540(%rip),%r15        # 0x55555556a8f8 <p751x2+88>#! EA = L0x55555556a8f8; Value = 0x0000dfcbaa83ee38; PC = 0x5555555653b1 *)
mov r15 L0x55555556a8f8;
(* and    %rax,%r15                                #! PC = 0x5555555653b8 *)
and uint64 r15 rax r15;
(* mov    (%rdx),%rax                              #! EA = L0x7fffffffd7f0; Value = 0x3e00e8898556e9d9; PC = 0x5555555653bb *)
mov rax L0x7fffffffd7f0;
(* add    %rsi,%rax                                #! PC = 0x5555555653be *)
adds carry rax rax rsi;
(* mov    %rax,(%rdx)                              #! EA = L0x7fffffffd7f0; PC = 0x5555555653c1 *)
mov L0x7fffffffd7f0 rax;
(* mov    0x8(%rdx),%rax                           #! EA = L0x7fffffffd7f8; Value = 0x650f323d6a740100; PC = 0x5555555653c4 *)
mov rax L0x7fffffffd7f8;
(* adc    %r8,%rax                                 #! PC = 0x5555555653c8 *)
adcs carry rax rax r8@uint64 carry;
(* mov    %rax,0x8(%rdx)                           #! EA = L0x7fffffffd7f8; PC = 0x5555555653cb *)
mov L0x7fffffffd7f8 rax;
(* mov    0x10(%rdx),%rax                          #! EA = L0x7fffffffd800; Value = 0xa8bc944640dbd9e3; PC = 0x5555555653cf *)
mov rax L0x7fffffffd800;
(* adc    %r8,%rax                                 #! PC = 0x5555555653d3 *)
adcs carry rax rax r8@uint64 carry;
(* mov    %rax,0x10(%rdx)                          #! EA = L0x7fffffffd800; PC = 0x5555555653d6 *)
mov L0x7fffffffd800 rax;
(* mov    0x18(%rdx),%rax                          #! EA = L0x7fffffffd808; Value = 0x41c86667fa8ffb6f; PC = 0x5555555653da *)
mov rax L0x7fffffffd808;
(* adc    %r8,%rax                                 #! PC = 0x5555555653de *)
adcs carry rax rax r8@uint64 carry;
(* mov    %rax,0x18(%rdx)                          #! EA = L0x7fffffffd808; PC = 0x5555555653e1 *)
mov L0x7fffffffd808 rax;
(* mov    0x20(%rdx),%rax                          #! EA = L0x7fffffffd810; Value = 0x0b17c709d9c62050; PC = 0x5555555653e5 *)
mov rax L0x7fffffffd810;
(* adc    %r8,%rax                                 #! PC = 0x5555555653e9 *)
adcs carry rax rax r8@uint64 carry;
(* mov    %rax,0x20(%rdx)                          #! EA = L0x7fffffffd810; PC = 0x5555555653ec *)
mov L0x7fffffffd810 rax;
(* adc    0x28(%rdx),%r9                           #! EA = L0x7fffffffd818; Value = 0xa06983be04768bc8; PC = 0x5555555653f0 *)
adcs carry r9 r9 L0x7fffffffd818 carry;
(* adc    0x30(%rdx),%r10                          #! EA = L0x7fffffffd820; Value = 0x494b9cdaa1e0465c; PC = 0x5555555653f4 *)
adcs carry r10 r10 L0x7fffffffd820 carry;
(* adc    0x38(%rdx),%r11                          #! EA = L0x7fffffffd828; Value = 0x91430b420142db99; PC = 0x5555555653f8 *)
adcs carry r11 r11 L0x7fffffffd828 carry;
(* adc    0x40(%rdx),%r12                          #! EA = L0x7fffffffd830; Value = 0x983f84d0356c082c; PC = 0x5555555653fc *)
adcs carry r12 r12 L0x7fffffffd830 carry;
(* adc    0x48(%rdx),%r13                          #! EA = L0x7fffffffd838; Value = 0x96700839cd9db610; PC = 0x555555565400 *)
adcs carry r13 r13 L0x7fffffffd838 carry;
(* adc    0x50(%rdx),%r14                          #! EA = L0x7fffffffd840; Value = 0x857384ed2939504e; PC = 0x555555565404 *)
adcs carry r14 r14 L0x7fffffffd840 carry;
(* adc    0x58(%rdx),%r15                          #! EA = L0x7fffffffd848; Value = 0x00004ac2a488b760; PC = 0x555555565408 *)
adcs carry r15 r15 L0x7fffffffd848 carry;
(* mov    %r9,0x28(%rdx)                           #! EA = L0x7fffffffd818; PC = 0x55555556540c *)
mov L0x7fffffffd818 r9;
(* mov    %r10,0x30(%rdx)                          #! EA = L0x7fffffffd820; PC = 0x555555565410 *)
mov L0x7fffffffd820 r10;
(* mov    %r11,0x38(%rdx)                          #! EA = L0x7fffffffd828; PC = 0x555555565414 *)
mov L0x7fffffffd828 r11;
(* mov    %r12,0x40(%rdx)                          #! EA = L0x7fffffffd830; PC = 0x555555565418 *)
mov L0x7fffffffd830 r12;
(* mov    %r13,0x48(%rdx)                          #! EA = L0x7fffffffd838; PC = 0x55555556541c *)
mov L0x7fffffffd838 r13;
(* mov    %r14,0x50(%rdx)                          #! EA = L0x7fffffffd840; PC = 0x555555565420 *)
mov L0x7fffffffd840 r14;
(* mov    %r15,0x58(%rdx)                          #! EA = L0x7fffffffd848; PC = 0x555555565424 *)
mov L0x7fffffffd848 r15;
(* #! <- SP = 0x7fffffffd538 *)
#! 0x7fffffffd538 = 0x7fffffffd538;
(* #retq                                           #! PC = 0x555555565430 *)
#retq                                           #! 0x555555565430 = 0x555555565430;
(* #jmpq   0x555555564870 <fpsub751>               #! PC = 0x555555558b77 *)
#jmpq   0x555555564870 <fpsub751>               #! 0x555555558b77 = 0x555555558b77;
(* #jmpq   0x5555555652c1 <fpsub751_asm>           #! PC = 0x555555564874 *)
#jmpq   0x5555555652c1 <fpsub751_asm>           #! 0x555555564874 = 0x555555564874;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffd610; Value = 0x6c6de62b1feed458; PC = 0x5555555652c9 *)
mov r8 L0x7fffffffd610;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffd618; Value = 0xbd5d5705312b8eea; PC = 0x5555555652cc *)
mov r9 L0x7fffffffd618;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffd620; Value = 0x4be3ac8c5d8dd434; PC = 0x5555555652d0 *)
mov r10 L0x7fffffffd620;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffd628; Value = 0xcab9ee7208229364; PC = 0x5555555652d4 *)
mov r11 L0x7fffffffd628;
(* mov    0x20(%rdi),%r12                          #! EA = L0x7fffffffd630; Value = 0x7859578dedeaa7c2; PC = 0x5555555652d8 *)
mov r12 L0x7fffffffd630;
(* mov    0x28(%rdi),%r13                          #! EA = L0x7fffffffd638; Value = 0x10a806dceaa984e5; PC = 0x5555555652dc *)
mov r13 L0x7fffffffd638;
(* mov    0x30(%rdi),%r14                          #! EA = L0x7fffffffd640; Value = 0x45b250e1666d35da; PC = 0x5555555652e0 *)
mov r14 L0x7fffffffd640;
(* mov    0x38(%rdi),%r15                          #! EA = L0x7fffffffd648; Value = 0x842007c2564ed4e3; PC = 0x5555555652e4 *)
mov r15 L0x7fffffffd648;
(* mov    0x40(%rdi),%rcx                          #! EA = L0x7fffffffd650; Value = 0x46b4ca613c710aae; PC = 0x5555555652e8 *)
mov rcx L0x7fffffffd650;
(* sub    (%rsi),%r8                               #! EA = L0x7fffffffd6d0; Value = 0x343081047aca3183; PC = 0x5555555652ec *)
subb carry r8 r8 L0x7fffffffd6d0;
(* sbb    0x8(%rsi),%r9                            #! EA = L0x7fffffffd6d8; Value = 0x8c71e223dc25b3d0; PC = 0x5555555652ef *)
sbbs carry r9 r9 L0x7fffffffd6d8 carry;
(* sbb    0x10(%rsi),%r10                          #! EA = L0x7fffffffd6e0; Value = 0x3fa9dfe1aa33af6e; PC = 0x5555555652f3 *)
sbbs carry r10 r10 L0x7fffffffd6e0 carry;
(* sbb    0x18(%rsi),%r11                          #! EA = L0x7fffffffd6e8; Value = 0x698408e5c273d1e0; PC = 0x5555555652f7 *)
sbbs carry r11 r11 L0x7fffffffd6e8 carry;
(* sbb    0x20(%rsi),%r12                          #! EA = L0x7fffffffd6f0; Value = 0xa07213d03ee34f3a; PC = 0x5555555652fb *)
sbbs carry r12 r12 L0x7fffffffd6f0 carry;
(* sbb    0x28(%rsi),%r13                          #! EA = L0x7fffffffd6f8; Value = 0xe876ee7aea7d98c7; PC = 0x5555555652ff *)
sbbs carry r13 r13 L0x7fffffffd6f8 carry;
(* sbb    0x30(%rsi),%r14                          #! EA = L0x7fffffffd700; Value = 0x69bf3b897f92aa9e; PC = 0x555555565303 *)
sbbs carry r14 r14 L0x7fffffffd700 carry;
(* sbb    0x38(%rsi),%r15                          #! EA = L0x7fffffffd708; Value = 0x745ab03af12c320c; PC = 0x555555565307 *)
sbbs carry r15 r15 L0x7fffffffd708 carry;
(* sbb    0x40(%rsi),%rcx                          #! EA = L0x7fffffffd710; Value = 0x18702551d0b23eff; PC = 0x55555556530b *)
sbbs carry rcx rcx L0x7fffffffd710 carry;
(* mov    %r8,(%rdx)                               #! EA = L0x7fffffffd850; PC = 0x55555556530f *)
mov L0x7fffffffd850 r8;
(* mov    %r9,0x8(%rdx)                            #! EA = L0x7fffffffd858; PC = 0x555555565312 *)
mov L0x7fffffffd858 r9;
(* mov    %r10,0x10(%rdx)                          #! EA = L0x7fffffffd860; PC = 0x555555565316 *)
mov L0x7fffffffd860 r10;
(* mov    %r11,0x18(%rdx)                          #! EA = L0x7fffffffd868; PC = 0x55555556531a *)
mov L0x7fffffffd868 r11;
(* mov    %r12,0x20(%rdx)                          #! EA = L0x7fffffffd870; PC = 0x55555556531e *)
mov L0x7fffffffd870 r12;
(* mov    %r13,0x28(%rdx)                          #! EA = L0x7fffffffd878; PC = 0x555555565322 *)
mov L0x7fffffffd878 r13;
(* mov    %r14,0x30(%rdx)                          #! EA = L0x7fffffffd880; PC = 0x555555565326 *)
mov L0x7fffffffd880 r14;
(* mov    %r15,0x38(%rdx)                          #! EA = L0x7fffffffd888; PC = 0x55555556532a *)
mov L0x7fffffffd888 r15;
(* mov    %rcx,0x40(%rdx)                          #! EA = L0x7fffffffd890; PC = 0x55555556532e *)
mov L0x7fffffffd890 rcx;
(* mov    0x48(%rdi),%rax                          #! EA = L0x7fffffffd658; Value = 0x3d3bd9632b315d4f; PC = 0x555555565332 *)
mov rax L0x7fffffffd658;
(* sbb    0x48(%rsi),%rax                          #! EA = L0x7fffffffd718; Value = 0x7a1f79dc3702edbd; PC = 0x555555565336 *)
sbbs carry rax rax L0x7fffffffd718 carry;
(* mov    %rax,0x48(%rdx)                          #! EA = L0x7fffffffd898; PC = 0x55555556533a *)
mov L0x7fffffffd898 rax;
(* mov    0x50(%rdi),%rax                          #! EA = L0x7fffffffd660; Value = 0xdc3556f9f0a4a80e; PC = 0x55555556533e *)
mov rax L0x7fffffffd660;
(* sbb    0x50(%rsi),%rax                          #! EA = L0x7fffffffd720; Value = 0xf815b8ecacf9b123; PC = 0x555555565342 *)
sbbs carry rax rax L0x7fffffffd720 carry;
(* mov    %rax,0x50(%rdx)                          #! EA = L0x7fffffffd8a0; PC = 0x555555565346 *)
mov L0x7fffffffd8a0 rax;
(* mov    0x58(%rdi),%rax                          #! EA = L0x7fffffffd668; Value = 0x0000538aed32832a; PC = 0x55555556534a *)
mov rax L0x7fffffffd668;
(* sbb    0x58(%rsi),%rax                          #! EA = L0x7fffffffd728; Value = 0x000044f225e941ea; PC = 0x55555556534e *)
sbbs carry rax rax L0x7fffffffd728 carry;
(* mov    %rax,0x58(%rdx)                          #! EA = L0x7fffffffd8a8; PC = 0x555555565352 *)
mov L0x7fffffffd8a8 rax;
(* mov    $0x0,%rax                                #! PC = 0x555555565356 *)
mov rax 0x0@uint64;
(* sbb    $0x0,%rax                                #! PC = 0x55555556535d *)
sbbs carry rax rax 0x0@uint64 carry;
(* mov    0x5538(%rip),%rsi        # 0x55555556a8a0 <p751x2>#! EA = L0x55555556a8a0; Value = 0xfffffffffffffffe; PC = 0x555555565361 *)
mov rsi L0x55555556a8a0;
(* and    %rax,%rsi                                #! PC = 0x555555565368 *)
and uint64 rsi rax rsi;
(* mov    0x5536(%rip),%r8        # 0x55555556a8a8 <p751x2+8>#! EA = L0x55555556a8a8; Value = 0xffffffffffffffff; PC = 0x55555556536b *)
mov r8 L0x55555556a8a8;
(* and    %rax,%r8                                 #! PC = 0x555555565372 *)
and uint64 r8 rax r8;
(* mov    0x554c(%rip),%r9        # 0x55555556a8c8 <p751x2+40>#! EA = L0x55555556a8c8; Value = 0xdd5fffffffffffff; PC = 0x555555565375 *)
mov r9 L0x55555556a8c8;
(* and    %rax,%r9                                 #! PC = 0x55555556537c *)
and uint64 r9 rax r9;
(* mov    0x554a(%rip),%r10        # 0x55555556a8d0 <p751x2+48>#! EA = L0x55555556a8d0; Value = 0xc7d92d0a93f0f151; PC = 0x55555556537f *)
mov r10 L0x55555556a8d0;
(* and    %rax,%r10                                #! PC = 0x555555565386 *)
and uint64 r10 rax r10;
(* mov    0x5548(%rip),%r11        # 0x55555556a8d8 <p751x2+56>#! EA = L0x55555556a8d8; Value = 0xb52b363427ef98ed; PC = 0x555555565389 *)
mov r11 L0x55555556a8d8;
(* and    %rax,%r11                                #! PC = 0x555555565390 *)
and uint64 r11 rax r11;
(* mov    0x5546(%rip),%r12        # 0x55555556a8e0 <p751x2+64>#! EA = L0x55555556a8e0; Value = 0x109d30cfadd7d0ed; PC = 0x555555565393 *)
mov r12 L0x55555556a8e0;
(* and    %rax,%r12                                #! PC = 0x55555556539a *)
and uint64 r12 rax r12;
(* mov    0x5544(%rip),%r13        # 0x55555556a8e8 <p751x2+72>#! EA = L0x55555556a8e8; Value = 0x0ac56a08b964ae90; PC = 0x55555556539d *)
mov r13 L0x55555556a8e8;
(* and    %rax,%r13                                #! PC = 0x5555555653a4 *)
and uint64 r13 rax r13;
(* mov    0x5542(%rip),%r14        # 0x55555556a8f0 <p751x2+80>#! EA = L0x55555556a8f0; Value = 0x1c25213f2f75b8cd; PC = 0x5555555653a7 *)
mov r14 L0x55555556a8f0;
(* and    %rax,%r14                                #! PC = 0x5555555653ae *)
and uint64 r14 rax r14;
(* mov    0x5540(%rip),%r15        # 0x55555556a8f8 <p751x2+88>#! EA = L0x55555556a8f8; Value = 0x0000dfcbaa83ee38; PC = 0x5555555653b1 *)
mov r15 L0x55555556a8f8;
(* and    %rax,%r15                                #! PC = 0x5555555653b8 *)
and uint64 r15 rax r15;
(* mov    (%rdx),%rax                              #! EA = L0x7fffffffd850; Value = 0x383d6526a524a2d5; PC = 0x5555555653bb *)
mov rax L0x7fffffffd850;
(* add    %rsi,%rax                                #! PC = 0x5555555653be *)
adds carry rax rax rsi;
(* mov    %rax,(%rdx)                              #! EA = L0x7fffffffd850; PC = 0x5555555653c1 *)
mov L0x7fffffffd850 rax;
(* mov    0x8(%rdx),%rax                           #! EA = L0x7fffffffd858; Value = 0x30eb74e15505db1a; PC = 0x5555555653c4 *)
mov rax L0x7fffffffd858;
(* adc    %r8,%rax                                 #! PC = 0x5555555653c8 *)
adcs carry rax rax r8@uint64 carry;
(* mov    %rax,0x8(%rdx)                           #! EA = L0x7fffffffd858; PC = 0x5555555653cb *)
mov L0x7fffffffd858 rax;
(* mov    0x10(%rdx),%rax                          #! EA = L0x7fffffffd860; Value = 0x0c39ccaab35a24c6; PC = 0x5555555653cf *)
mov rax L0x7fffffffd860;
(* adc    %r8,%rax                                 #! PC = 0x5555555653d3 *)
adcs carry rax rax r8@uint64 carry;
(* mov    %rax,0x10(%rdx)                          #! EA = L0x7fffffffd860; PC = 0x5555555653d6 *)
mov L0x7fffffffd860 rax;
(* mov    0x18(%rdx),%rax                          #! EA = L0x7fffffffd868; Value = 0x6135e58c45aec184; PC = 0x5555555653da *)
mov rax L0x7fffffffd868;
(* adc    %r8,%rax                                 #! PC = 0x5555555653de *)
adcs carry rax rax r8@uint64 carry;
(* mov    %rax,0x18(%rdx)                          #! EA = L0x7fffffffd868; PC = 0x5555555653e1 *)
mov L0x7fffffffd868 rax;
(* mov    0x20(%rdx),%rax                          #! EA = L0x7fffffffd870; Value = 0xd7e743bdaf075888; PC = 0x5555555653e5 *)
mov rax L0x7fffffffd870;
(* adc    %r8,%rax                                 #! PC = 0x5555555653e9 *)
adcs carry rax rax r8@uint64 carry;
(* mov    %rax,0x20(%rdx)                          #! EA = L0x7fffffffd870; PC = 0x5555555653ec *)
mov L0x7fffffffd870 rax;
(* adc    0x28(%rdx),%r9                           #! EA = L0x7fffffffd878; Value = 0x28311862002bec1d; PC = 0x5555555653f0 *)
adcs carry r9 r9 L0x7fffffffd878 carry;
(* adc    0x30(%rdx),%r10                          #! EA = L0x7fffffffd880; Value = 0xdbf31557e6da8b3b; PC = 0x5555555653f4 *)
adcs carry r10 r10 L0x7fffffffd880 carry;
(* adc    0x38(%rdx),%r11                          #! EA = L0x7fffffffd888; Value = 0x0fc557876522a2d6; PC = 0x5555555653f8 *)
adcs carry r11 r11 L0x7fffffffd888 carry;
(* adc    0x40(%rdx),%r12                          #! EA = L0x7fffffffd890; Value = 0x2e44a50f6bbecbaf; PC = 0x5555555653fc *)
adcs carry r12 r12 L0x7fffffffd890 carry;
(* adc    0x48(%rdx),%r13                          #! EA = L0x7fffffffd898; Value = 0xc31c5f86f42e6f92; PC = 0x555555565400 *)
adcs carry r13 r13 L0x7fffffffd898 carry;
(* adc    0x50(%rdx),%r14                          #! EA = L0x7fffffffd8a0; Value = 0xe41f9e0d43aaf6ea; PC = 0x555555565404 *)
adcs carry r14 r14 L0x7fffffffd8a0 carry;
(* adc    0x58(%rdx),%r15                          #! EA = L0x7fffffffd8a8; Value = 0x00000e98c749413f; PC = 0x555555565408 *)
adcs carry r15 r15 L0x7fffffffd8a8 carry;
(* mov    %r9,0x28(%rdx)                           #! EA = L0x7fffffffd878; PC = 0x55555556540c *)
mov L0x7fffffffd878 r9;
(* mov    %r10,0x30(%rdx)                          #! EA = L0x7fffffffd880; PC = 0x555555565410 *)
mov L0x7fffffffd880 r10;
(* mov    %r11,0x38(%rdx)                          #! EA = L0x7fffffffd888; PC = 0x555555565414 *)
mov L0x7fffffffd888 r11;
(* mov    %r12,0x40(%rdx)                          #! EA = L0x7fffffffd890; PC = 0x555555565418 *)
mov L0x7fffffffd890 r12;
(* mov    %r13,0x48(%rdx)                          #! EA = L0x7fffffffd898; PC = 0x55555556541c *)
mov L0x7fffffffd898 r13;
(* mov    %r14,0x50(%rdx)                          #! EA = L0x7fffffffd8a0; PC = 0x555555565420 *)
mov L0x7fffffffd8a0 r14;
(* mov    %r15,0x58(%rdx)                          #! EA = L0x7fffffffd8a8; PC = 0x555555565424 *)
mov L0x7fffffffd8a8 r15;
(* #! <- SP = 0x7fffffffd558 *)
#! 0x7fffffffd558 = 0x7fffffffd558;
(* #retq                                           #! PC = 0x555555565430 *)
#retq                                           #! 0x555555565430 = 0x555555565430;

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
      (
        (limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ])
        -
        (limbs 64 [ b0_00, b0_01, b0_02, b0_03, b0_04, b0_05, b0_06, b0_07, b0_08, b0_09, b0_10, b0_11 ])
      )
      (limbs 64 [ $p751_0@64, $p751_1@64, $p751_2@64, $p751_3@64, $p751_4@64, $p751_5@64, $p751_6@64, $p751_7@64, $p751_8@64, $p751_9@64, $p751_a@64, $p751_b@64 ]),
    eqsmod
      (limbs 64 [ c1_00, c1_01, c1_02, c1_03, c1_04, c1_05, c1_06, c1_07, c1_08, c1_09, c1_10, c1_11 ])
      (
        (limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ])
        -
        (limbs 64 [ b1_00, b1_01, b1_02, b1_03, b1_04, b1_05, b1_06, b1_07, b1_08, b1_09, b1_10, b1_11 ])
      )
      (limbs 64 [ $p751_0@64, $p751_1@64, $p751_2@64, $p751_3@64, $p751_4@64, $p751_5@64, $p751_6@64, $p751_7@64, $p751_8@64, $p751_9@64, $p751_a@64, $p751_b@64 ]),
    limbs 64 [ c0_00, c0_01, c0_02, c0_03, c0_04, c0_05, c0_06, c0_07, c0_08, c0_09, c0_10, c0_11 ] <=u
      (2@768 * limbs 64 [ $p751_0@64, $p751_1@64, $p751_2@64, $p751_3@64, $p751_4@64, $p751_5@64, $p751_6@64, $p751_7@64, $p751_8@64, $p751_9@64, $p751_a@64, $p751_b@64 ] - 1@768),
    limbs 64 [ c1_00, c1_01, c1_02, c1_03, c1_04, c1_05, c1_06, c1_07, c1_08, c1_09, c1_10, c1_11 ] <=u
      (2@768 * limbs 64 [ $p751_0@64, $p751_1@64, $p751_2@64, $p751_3@64, $p751_4@64, $p751_5@64, $p751_6@64, $p751_7@64, $p751_8@64, $p751_9@64, $p751_a@64, $p751_b@64 ] - 1@768)
  ]
}
