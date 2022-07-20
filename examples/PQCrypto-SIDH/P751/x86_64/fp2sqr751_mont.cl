(* on frege: -v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint fp2sqr751_mont.cl
Parsing Cryptoline file:		[OK]		0.024971 seconds
Checking well-formedness:		[OK]		0.005747 seconds
Transforming to SSA form:		[OK]		0.002586 seconds
Normalizing specification:		[OK]		0.003517 seconds
Rewriting assignments:			[OK]		0.004205 seconds
Verifying program safety:		[OK]		0.581018 seconds
Verifying range assertions:		[OK]		25.884184 seconds
Verifying range specification:		[OK]		15.314483 seconds
Rewriting value-preserved casting:	[OK]		0.006090 seconds
Verifying algebraic assertions:		[OK]		0.230174 seconds
Verifying algebraic specification:	[OK]		1.446595 seconds
Verification result:			[OK]		43.505697 seconds
*)

(*
const uint64_t p751[NWORDS64_FIELD]              = { 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xEEAFFFFFFFFFFFFF,
                                                     0xE3EC968549F878A8, 0xDA959B1A13F7CC76, 0x084E9867D6EBE876, 0x8562B5045CB25748, 0x0E12909F97BADC66, 0x00006FE5D541F71C };

const uint64_t p751x4[NWORDS64_FIELD]            = { 0xFFFFFFFFFFFFFFFC, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xBABFFFFFFFFFFFFF,
                                                     0x8FB25A1527E1E2A3, 0x6A566C684FDF31DB, 0x213A619F5BAFA1DB, 0x158AD41172C95D20, 0x384A427E5EEB719A, 0x0001BF975507DC70 };
const uint64_t p751p1[NWORDS64_FIELD]            = { 0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0xEEB0000000000000,
                                                     0xE3EC968549F878A8, 0xDA959B1A13F7CC76, 0x084E9867D6EBE876, 0x8562B5045CB25748, 0x0E12909F97BADC66, 0x00006FE5D541F71C };
*)

const p751_00 = 0xFFFFFFFFFFFFFFFF
const p751_01 = 0xFFFFFFFFFFFFFFFF
const p751_02 = 0xFFFFFFFFFFFFFFFF
const p751_03 = 0xFFFFFFFFFFFFFFFF
const p751_04 = 0xFFFFFFFFFFFFFFFF
const p751_05 = 0xEEAFFFFFFFFFFFFF
const p751_06 = 0xE3EC968549F878A8
const p751_07 = 0xDA959B1A13F7CC76
const p751_08 = 0x084E9867D6EBE876
const p751_09 = 0x8562B5045CB25748
const p751_10 = 0x0E12909F97BADC66
const p751_11 = 0x00006FE5D541F71C

const p751x4_00 = 0xFFFFFFFFFFFFFFFC
const p751x4_01 = 0xFFFFFFFFFFFFFFFF
const p751x4_02 = 0xFFFFFFFFFFFFFFFF
const p751x4_03 = 0xFFFFFFFFFFFFFFFF
const p751x4_04 = 0xFFFFFFFFFFFFFFFF
const p751x4_05 = 0xBABFFFFFFFFFFFFF
const p751x4_06 = 0x8FB25A1527E1E2A3
const p751x4_07 = 0x6A566C684FDF31DB
const p751x4_08 = 0x213A619F5BAFA1DB
const p751x4_09 = 0x158AD41172C95D20
const p751x4_10 = 0x384A427E5EEB719A
const p751x4_11 = 0x0001BF975507DC70

const p751p1_00 = 0x0000000000000000
const p751p1_01 = 0x0000000000000000
const p751p1_02 = 0x0000000000000000
const p751p1_03 = 0x0000000000000000
const p751p1_04 = 0x0000000000000000
const p751p1_05 = 0xEEB0000000000000
const p751p1_06 = 0xE3EC968549F878A8
const p751p1_07 = 0xDA959B1A13F7CC76
const p751p1_08 = 0x084E9867D6EBE876
const p751p1_09 = 0x8562B5045CB25748
const p751p1_10 = 0x0E12909F97BADC66
const p751p1_11 = 0x00006FE5D541F71C

proc main (a0_00@uint64, a0_01@uint64, a0_02@uint64, a0_03@uint64, a0_04@uint64, a0_05@uint64, a0_06@uint64, a0_07@uint64, a0_08@uint64, a0_09@uint64, a0_10@uint64, a0_11@uint64,
           a1_00@uint64, a1_01@uint64, a1_02@uint64, a1_03@uint64, a1_04@uint64, a1_05@uint64, a1_06@uint64, a1_07@uint64, a1_08@uint64, a1_09@uint64, a1_10@uint64, a1_11@uint64) =
{
  true
  &&
  and [
    limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ] <=u
      (2@768 * limbs 64 [ $p751_00@64, $p751_01@64, $p751_02@64, $p751_03@64, $p751_04@64, $p751_05@64, $p751_06@64, $p751_07@64, $p751_08@64, $p751_09@64, $p751_10@64, $p751_11@64 ] - 1@768),
    limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ] <=u
      (2@768 * limbs 64 [ $p751_00@64, $p751_01@64, $p751_02@64, $p751_03@64, $p751_04@64, $p751_05@64, $p751_06@64, $p751_07@64, $p751_08@64, $p751_09@64, $p751_10@64, $p751_11@64 ] - 1@768)
  ]
}

(* ===== Initialization ===== *)

mov L0x7fffffffda20 a0_00;
mov L0x7fffffffda28 a0_01;
mov L0x7fffffffda30 a0_02;
mov L0x7fffffffda38 a0_03;
mov L0x7fffffffda40 a0_04;
mov L0x7fffffffda48 a0_05;
mov L0x7fffffffda50 a0_06;
mov L0x7fffffffda58 a0_07;
mov L0x7fffffffda60 a0_08;
mov L0x7fffffffda68 a0_09;
mov L0x7fffffffda70 a0_10;
mov L0x7fffffffda78 a0_11;

mov L0x7fffffffda80 a1_00;
mov L0x7fffffffda88 a1_01;
mov L0x7fffffffda90 a1_02;
mov L0x7fffffffda98 a1_03;
mov L0x7fffffffdaa0 a1_04;
mov L0x7fffffffdaa8 a1_05;
mov L0x7fffffffdab0 a1_06;
mov L0x7fffffffdab8 a1_07;
mov L0x7fffffffdac0 a1_08;
mov L0x7fffffffdac8 a1_09;
mov L0x7fffffffdad0 a1_10;
mov L0x7fffffffdad8 a1_11;

mov L0x55555556a808 $p751p1_05@uint64;
mov L0x55555556a810 $p751p1_06@uint64;
mov L0x55555556a818 $p751p1_07@uint64;
mov L0x55555556a820 $p751p1_08@uint64;
mov L0x55555556a828 $p751p1_09@uint64;
mov L0x55555556a830 $p751p1_10@uint64;
mov L0x55555556a838 $p751p1_11@uint64;

mov L0x55555556a840 $p751x4_00@uint64;
mov L0x55555556a848 $p751x4_01@uint64;
mov L0x55555556a868 $p751x4_05@uint64;
mov L0x55555556a870 $p751x4_06@uint64;
mov L0x55555556a878 $p751x4_07@uint64;
mov L0x55555556a880 $p751x4_08@uint64;
mov L0x55555556a888 $p751x4_09@uint64;
mov L0x55555556a890 $p751x4_10@uint64;
mov L0x55555556a898 $p751x4_11@uint64;

nondet fs0x28@uint64;
nondet r12@uint64;
nondet r15@uint64;
nondet rdi@uint64;
nondet rsi@uint64;
nondet rsp@uint64;

(* ===== Program ===== *)

// mp_addfast(a[0], a[1], t1);                      // t1 = a0+a1
(* #! -> SP = 0x7fffffffd548 *)
#! 0x7fffffffd548 = 0x7fffffffd548;
(* mov    %rdi,%rbp                                #! PC = 0x555555558c51 *)
mov rbp rdi;
(* mov    %rsi,%rbx                                #! PC = 0x555555558c55 *)
mov rbx rsi;
(* mov    %r12,%rsi                                #! PC = 0x555555558c58 *)
mov rsi r12;
(* sub    $0x1f8,%rsp                              #! PC = 0x555555558c5b *)
subb carry rsp rsp 0x1f8@uint64;
(* mov    %rsp,%r14                                #! PC = 0x555555558c62 *)
mov r14 rsp;
(* mov    %r14,%rdx                                #! PC = 0x555555558c65 *)
mov rdx r14;
(* mov    %fs:0x28,%rax                            #! PC = 0x555555558c6d *)
mov rax fs0x28;
(* mov    %rax,0x1e8(%rsp)                         #! EA = L0x7fffffffd508; PC = 0x555555558c76 *)
mov L0x7fffffffd508 rax;
(* xor    %eax,%eax                                #! PC = 0x555555558c7e *)
mov rax 0@uint64;
(* #callq  0x555555566b79 <mp_add751_asm>          #! PC = 0x555555558c88 *)
#callq  0x555555566b79 <mp_add751_asm>          #! 0x555555558c88 = 0x555555558c88;
(* #! -> SP = 0x7fffffffd318 *)
#! 0x7fffffffd318 = 0x7fffffffd318;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffda20; Value = 0x7025d9bbebb61e93; PC = 0x555555566b79 *)
mov r8 L0x7fffffffda20;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffda28; Value = 0xbc29dd8370a4a655; PC = 0x555555566b7c *)
mov r9 L0x7fffffffda28;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffda30; Value = 0x9f776cd1ca8060fa; PC = 0x555555566b80 *)
mov r10 L0x7fffffffda30;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffda38; Value = 0x05fe2ef2ee9b3cdf; PC = 0x555555566b84 *)
mov r11 L0x7fffffffda38;
(* mov    0x20(%rdi),%rax                          #! EA = L0x7fffffffda40; Value = 0x6432933727620f12; PC = 0x555555566b88 *)
mov rax L0x7fffffffda40;
(* mov    0x28(%rdi),%rcx                          #! EA = L0x7fffffffda48; Value = 0xb2cb4891b6be1eed; PC = 0x555555566b8c *)
mov rcx L0x7fffffffda48;
(* add    (%rsi),%r8                               #! EA = L0x7fffffffda80; Value = 0xa98128db284259e7; PC = 0x555555566b90 *)
adds carry r8 r8 L0x7fffffffda80;
(* adc    0x8(%rsi),%r9                            #! EA = L0x7fffffffda88; Value = 0xc9da63fce08e0f05; PC = 0x555555566b93 *)
adcs carry r9 r9 L0x7fffffffda88 carry;
(* adc    0x10(%rsi),%r10                          #! EA = L0x7fffffffda90; Value = 0xf44298c9e7f6ccbe; PC = 0x555555566b97 *)
adcs carry r10 r10 L0x7fffffffda90 carry;
(* adc    0x18(%rsi),%r11                          #! EA = L0x7fffffffda98; Value = 0xc29ea1fdb4e0ac33; PC = 0x555555566b9b *)
adcs carry r11 r11 L0x7fffffffda98 carry;
(* adc    0x20(%rsi),%rax                          #! EA = L0x7fffffffdaa0; Value = 0xb2a4acf0365da5de; PC = 0x555555566b9f *)
adcs carry rax rax L0x7fffffffdaa0 carry;
(* adc    0x28(%rsi),%rcx                          #! EA = L0x7fffffffdaa8; Value = 0xea74acb25e04c35f; PC = 0x555555566ba3 *)
adcs carry rcx rcx L0x7fffffffdaa8 carry;
(* mov    %r8,(%rdx)                               #! EA = L0x7fffffffd320; PC = 0x555555566ba7 *)
mov L0x7fffffffd320 r8;
(* mov    %r9,0x8(%rdx)                            #! EA = L0x7fffffffd328; PC = 0x555555566baa *)
mov L0x7fffffffd328 r9;
(* mov    %r10,0x10(%rdx)                          #! EA = L0x7fffffffd330; PC = 0x555555566bae *)
mov L0x7fffffffd330 r10;
(* mov    %r11,0x18(%rdx)                          #! EA = L0x7fffffffd338; PC = 0x555555566bb2 *)
mov L0x7fffffffd338 r11;
(* mov    %rax,0x20(%rdx)                          #! EA = L0x7fffffffd340; PC = 0x555555566bb6 *)
mov L0x7fffffffd340 rax;
(* mov    %rcx,0x28(%rdx)                          #! EA = L0x7fffffffd348; PC = 0x555555566bba *)
mov L0x7fffffffd348 rcx;
(* mov    0x30(%rdi),%r8                           #! EA = L0x7fffffffda50; Value = 0x6f3b53839df92ca8; PC = 0x555555566bbe *)
mov r8 L0x7fffffffda50;
(* mov    0x38(%rdi),%r9                           #! EA = L0x7fffffffda58; Value = 0x20d32f3610891b14; PC = 0x555555566bc2 *)
mov r9 L0x7fffffffda58;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffda60; Value = 0x70a96bd5339a92af; PC = 0x555555566bc6 *)
mov r10 L0x7fffffffda60;
(* mov    0x48(%rdi),%r11                          #! EA = L0x7fffffffda68; Value = 0x6a09928dfc8ac72b; PC = 0x555555566bca *)
mov r11 L0x7fffffffda68;
(* mov    0x50(%rdi),%rax                          #! EA = L0x7fffffffda70; Value = 0xda7e0c4c67039286; PC = 0x555555566bce *)
mov rax L0x7fffffffda70;
(* mov    0x58(%rdi),%rcx                          #! EA = L0x7fffffffda78; Value = 0x0000324a125c28cc; PC = 0x555555566bd2 *)
mov rcx L0x7fffffffda78;
(* adc    0x30(%rsi),%r8                           #! EA = L0x7fffffffdab0; Value = 0x20d8e525d66d928e; PC = 0x555555566bd6 *)
adcs carry r8 r8 L0x7fffffffdab0 carry;
(* adc    0x38(%rsi),%r9                           #! EA = L0x7fffffffdab8; Value = 0xb855deb0c3c406b1; PC = 0x555555566bda *)
adcs carry r9 r9 L0x7fffffffdab8 carry;
(* adc    0x40(%rsi),%r10                          #! EA = L0x7fffffffdac0; Value = 0x18c6c043bca5fed2; PC = 0x555555566bde *)
adcs carry r10 r10 L0x7fffffffdac0 carry;
(* adc    0x48(%rsi),%r11                          #! EA = L0x7fffffffdac8; Value = 0x87b7a301489efc15; PC = 0x555555566be2 *)
adcs carry r11 r11 L0x7fffffffdac8 carry;
(* adc    0x50(%rsi),%rax                          #! EA = L0x7fffffffdad0; Value = 0x6ef4efa68271a705; PC = 0x555555566be6 *)
adcs carry rax rax L0x7fffffffdad0 carry;
(* adc    0x58(%rsi),%rcx                          #! EA = L0x7fffffffdad8; Value = 0x00006b1db5fa24ac; PC = 0x555555566bea *)
adcs carry rcx rcx L0x7fffffffdad8 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r8,0x30(%rdx)                           #! EA = L0x7fffffffd350; PC = 0x555555566bee *)
mov L0x7fffffffd350 r8;
(* mov    %r9,0x38(%rdx)                           #! EA = L0x7fffffffd358; PC = 0x555555566bf2 *)
mov L0x7fffffffd358 r9;
(* mov    %r10,0x40(%rdx)                          #! EA = L0x7fffffffd360; PC = 0x555555566bf6 *)
mov L0x7fffffffd360 r10;
(* mov    %r11,0x48(%rdx)                          #! EA = L0x7fffffffd368; PC = 0x555555566bfa *)
mov L0x7fffffffd368 r11;
(* mov    %rax,0x50(%rdx)                          #! EA = L0x7fffffffd370; PC = 0x555555566bfe *)
mov L0x7fffffffd370 rax;
(* mov    %rcx,0x58(%rdx)                          #! EA = L0x7fffffffd378; PC = 0x555555566c02 *)
mov L0x7fffffffd378 rcx;
(* #! <- SP = 0x7fffffffd318 *)
#! 0x7fffffffd318 = 0x7fffffffd318;
(* #retq                                           #! PC = 0x555555566c06 *)
#retq                                           #! 0x555555566c06 = 0x555555566c06;

ghost t1_00@uint64, t1_01@uint64, t1_02@uint64, t1_03@uint64, t1_04@uint64, t1_05@uint64,
      t1_06@uint64, t1_07@uint64, t1_08@uint64, t1_09@uint64, t1_10@uint64, t1_11@uint64 :
  and [
    t1_00 = L0x7fffffffd320, t1_01 = L0x7fffffffd328, t1_02 = L0x7fffffffd330,
    t1_03 = L0x7fffffffd338, t1_04 = L0x7fffffffd340, t1_05 = L0x7fffffffd348,
    t1_06 = L0x7fffffffd350, t1_07 = L0x7fffffffd358, t1_08 = L0x7fffffffd360,
    t1_09 = L0x7fffffffd368, t1_10 = L0x7fffffffd370, t1_11 = L0x7fffffffd378
  ]  &&
  and [
    t1_00 = L0x7fffffffd320, t1_01 = L0x7fffffffd328, t1_02 = L0x7fffffffd330,
    t1_03 = L0x7fffffffd338, t1_04 = L0x7fffffffd340, t1_05 = L0x7fffffffd348,
    t1_06 = L0x7fffffffd350, t1_07 = L0x7fffffffd358, t1_08 = L0x7fffffffd360,
    t1_09 = L0x7fffffffd368, t1_10 = L0x7fffffffd370, t1_11 = L0x7fffffffd378
  ];

# Ecut 0
ecut (limbs 64 [ t1_00, t1_01, t1_02, t1_03, t1_04, t1_05, t1_06, t1_07, t1_08, t1_09, t1_10, t1_11 ])
     =
     (
       (limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ])
       +
       (limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ])
     );

// sub_p4(a[0], a[1], t2);                          // t2 = a0-a1
(* mov    %r15,%rdx                                #! PC = 0x555555558c8d *)
mov rdx r15;
(* mov    %r12,%rsi                                #! PC = 0x555555558c90 *)
mov rsi r12;
(* mov    %rbp,%rdi                                #! PC = 0x555555558c93 *)
mov rdi rbp;
(* #callq  0x555555564850 <mp_sub751_p4>           #! PC = 0x555555558c96 *)
#callq  0x555555564850 <mp_sub751_p4>           #! 0x555555558c96 = 0x555555558c96;
(* #! -> SP = 0x7fffffffd318 *)
#! 0x7fffffffd318 = 0x7fffffffd318;
(* #jmpq   0x555555565542 <mp_sub751_p4_asm>       #! PC = 0x555555564854 *)
#jmpq   0x555555565542 <mp_sub751_p4_asm>       #! 0x555555564854 = 0x555555564854;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffda20; Value = 0x7025d9bbebb61e93; PC = 0x55555556554a *)
mov r8 L0x7fffffffda20;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffda28; Value = 0xbc29dd8370a4a655; PC = 0x55555556554d *)
mov r9 L0x7fffffffda28;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffda30; Value = 0x9f776cd1ca8060fa; PC = 0x555555565551 *)
mov r10 L0x7fffffffda30;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffda38; Value = 0x05fe2ef2ee9b3cdf; PC = 0x555555565555 *)
mov r11 L0x7fffffffda38;
(* mov    0x20(%rdi),%r12                          #! EA = L0x7fffffffda40; Value = 0x6432933727620f12; PC = 0x555555565559 *)
mov r12 L0x7fffffffda40;
(* mov    0x28(%rdi),%r13                          #! EA = L0x7fffffffda48; Value = 0xb2cb4891b6be1eed; PC = 0x55555556555d *)
mov r13 L0x7fffffffda48;
(* sub    (%rsi),%r8                               #! EA = L0x7fffffffda80; Value = 0xa98128db284259e7; PC = 0x555555565561 *)
subb carry r8 r8 L0x7fffffffda80;
(* sbb    0x8(%rsi),%r9                            #! EA = L0x7fffffffda88; Value = 0xc9da63fce08e0f05; PC = 0x555555565564 *)
sbbs carry r9 r9 L0x7fffffffda88 carry;
(* sbb    0x10(%rsi),%r10                          #! EA = L0x7fffffffda90; Value = 0xf44298c9e7f6ccbe; PC = 0x555555565568 *)
sbbs carry r10 r10 L0x7fffffffda90 carry;
(* sbb    0x18(%rsi),%r11                          #! EA = L0x7fffffffda98; Value = 0xc29ea1fdb4e0ac33; PC = 0x55555556556c *)
sbbs carry r11 r11 L0x7fffffffda98 carry;
(* sbb    0x20(%rsi),%r12                          #! EA = L0x7fffffffdaa0; Value = 0xb2a4acf0365da5de; PC = 0x555555565570 *)
sbbs carry r12 r12 L0x7fffffffdaa0 carry;
(* sbb    0x28(%rsi),%r13                          #! EA = L0x7fffffffdaa8; Value = 0xea74acb25e04c35f; PC = 0x555555565574 *)
sbbs carry r13 r13 L0x7fffffffdaa8 carry;
ghost carry_sub_a0a1_0@uint1 : carry_sub_a0a1_0 = carry && carry_sub_a0a1_0 = carry;
(* setb   %al                                      #! PC = 0x555555565578 *)
and uint64 rax rax 0xFFFFFFFFFFFFFF00@uint64;
adc rax rax 0@uint64 carry;
(* mov    0x52be(%rip),%r14        # 0x55555556a840 <p751x4>#! EA = L0x55555556a840; Value = 0xfffffffffffffffc; PC = 0x55555556557b *)
mov r14 L0x55555556a840;
(* mov    0x52bf(%rip),%r15        # 0x55555556a848 <p751x4+8>#! EA = L0x55555556a848; Value = 0xffffffffffffffff; PC = 0x555555565582 *)
mov r15 L0x55555556a848;
(* add    %r14,%r8                                 #! PC = 0x555555565589 *)
adds carry r8 r8 r14;
(* adc    %r15,%r9                                 #! PC = 0x55555556558c *)
adcs carry r9 r9 r15@uint64 carry;
(* adc    %r15,%r10                                #! PC = 0x55555556558f *)
adcs carry r10 r10 r15@uint64 carry;
(* adc    %r15,%r11                                #! PC = 0x555555565592 *)
adcs carry r11 r11 r15@uint64 carry;
(* adc    %r15,%r12                                #! PC = 0x555555565595 *)
adcs carry r12 r12 r15@uint64 carry;
(* mov    0x52c9(%rip),%r14        # 0x55555556a868 <p751x4+40>#! EA = L0x55555556a868; Value = 0xbabfffffffffffff; PC = 0x555555565598 *)
mov r14 L0x55555556a868;
(* adc    %r14,%r13                                #! PC = 0x55555556559f *)
adcs carry r13 r13 r14@uint64 carry;
ghost carry_addx4_0@uint1 : carry_addx4_0 = carry && carry_addx4_0 = carry;
(* mov    %r8,(%rdx)                               #! EA = L0x7fffffffd380; PC = 0x5555555655a2 *)
mov L0x7fffffffd380 r8;
(* mov    %r9,0x8(%rdx)                            #! EA = L0x7fffffffd388; PC = 0x5555555655a5 *)
mov L0x7fffffffd388 r9;
(* mov    %r10,0x10(%rdx)                          #! EA = L0x7fffffffd390; PC = 0x5555555655a9 *)
mov L0x7fffffffd390 r10;
(* mov    %r11,0x18(%rdx)                          #! EA = L0x7fffffffd398; PC = 0x5555555655ad *)
mov L0x7fffffffd398 r11;
(* mov    %r12,0x20(%rdx)                          #! EA = L0x7fffffffd3a0; PC = 0x5555555655b1 *)
mov L0x7fffffffd3a0 r12;
(* mov    %r13,0x28(%rdx)                          #! EA = L0x7fffffffd3a8; PC = 0x5555555655b5 *)
mov L0x7fffffffd3a8 r13;
(* setb   %cl                                      #! PC = 0x5555555655b9 *)
and uint64 rcx rcx 0xFFFFFFFFFFFFFF00@uint64;
adc rcx rcx 0@uint64 carry;
(* bt     $0x0,%rax                                #! PC = 0x5555555655bc *)
split dontcare carry rax 1;
vpc carry@uint1 carry;
assert true && carry = carry_sub_a0a1_0;
assume carry = carry_sub_a0a1_0 && true;
(* mov    0x30(%rdi),%r8                           #! EA = L0x7fffffffda50; Value = 0x6f3b53839df92ca8; PC = 0x5555555655c1 *)
mov r8 L0x7fffffffda50;
(* mov    0x38(%rdi),%r9                           #! EA = L0x7fffffffda58; Value = 0x20d32f3610891b14; PC = 0x5555555655c5 *)
mov r9 L0x7fffffffda58;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffda60; Value = 0x70a96bd5339a92af; PC = 0x5555555655c9 *)
mov r10 L0x7fffffffda60;
(* mov    0x48(%rdi),%r11                          #! EA = L0x7fffffffda68; Value = 0x6a09928dfc8ac72b; PC = 0x5555555655cd *)
mov r11 L0x7fffffffda68;
(* mov    0x50(%rdi),%r12                          #! EA = L0x7fffffffda70; Value = 0xda7e0c4c67039286; PC = 0x5555555655d1 *)
mov r12 L0x7fffffffda70;
(* mov    0x58(%rdi),%r13                          #! EA = L0x7fffffffda78; Value = 0x0000324a125c28cc; PC = 0x5555555655d5 *)
mov r13 L0x7fffffffda78;
(* sbb    0x30(%rsi),%r8                           #! EA = L0x7fffffffdab0; Value = 0x20d8e525d66d928e; PC = 0x5555555655d9 *)
sbbs carry r8 r8 L0x7fffffffdab0 carry;
(* sbb    0x38(%rsi),%r9                           #! EA = L0x7fffffffdab8; Value = 0xb855deb0c3c406b1; PC = 0x5555555655dd *)
sbbs carry r9 r9 L0x7fffffffdab8 carry;
(* sbb    0x40(%rsi),%r10                          #! EA = L0x7fffffffdac0; Value = 0x18c6c043bca5fed2; PC = 0x5555555655e1 *)
sbbs carry r10 r10 L0x7fffffffdac0 carry;
(* sbb    0x48(%rsi),%r11                          #! EA = L0x7fffffffdac8; Value = 0x87b7a301489efc15; PC = 0x5555555655e5 *)
sbbs carry r11 r11 L0x7fffffffdac8 carry;
(* sbb    0x50(%rsi),%r12                          #! EA = L0x7fffffffdad0; Value = 0x6ef4efa68271a705; PC = 0x5555555655e9 *)
sbbs carry r12 r12 L0x7fffffffdad0 carry;
(* sbb    0x58(%rsi),%r13                          #! EA = L0x7fffffffdad8; Value = 0x00006b1db5fa24ac; PC = 0x5555555655ed *)
sbbs carry r13 r13 L0x7fffffffdad8 carry;
ghost carry_sub_a0a1_1@uint1 : carry_sub_a0a1_1 = carry && carry_sub_a0a1_1 = carry;
(* bt     $0x0,%rcx                                #! PC = 0x5555555655f1 *)
split dontcare carry rcx 1;
vpc carry@uint1 carry;
assert true && carry = carry_addx4_0;
assume carry = carry_addx4_0 && true;
(* mov    0x5273(%rip),%r14        # 0x55555556a870 <p751x4+48>#! EA = L0x55555556a870; Value = 0x8fb25a1527e1e2a3; PC = 0x5555555655f6 *)
mov r14 L0x55555556a870;
(* mov    0x5274(%rip),%r15        # 0x55555556a878 <p751x4+56>#! EA = L0x55555556a878; Value = 0x6a566c684fdf31db; PC = 0x5555555655fd *)
mov r15 L0x55555556a878;
(* adc    %r14,%r8                                 #! PC = 0x555555565604 *)
adcs carry r8 r8 r14@uint64 carry;
(* adc    %r15,%r9                                 #! PC = 0x555555565607 *)
adcs carry r9 r9 r15@uint64 carry;
(* mov    0x526f(%rip),%r14        # 0x55555556a880 <p751x4+64>#! EA = L0x55555556a880; Value = 0x213a619f5bafa1db; PC = 0x55555556560a *)
mov r14 L0x55555556a880;
(* mov    0x5270(%rip),%r15        # 0x55555556a888 <p751x4+72>#! EA = L0x55555556a888; Value = 0x158ad41172c95d20; PC = 0x555555565611 *)
mov r15 L0x55555556a888;
(* adc    %r14,%r10                                #! PC = 0x555555565618 *)
adcs carry r10 r10 r14@uint64 carry;
(* adc    %r15,%r11                                #! PC = 0x55555556561b *)
adcs carry r11 r11 r15@uint64 carry;
(* mov    0x526b(%rip),%r14        # 0x55555556a890 <p751x4+80>#! EA = L0x55555556a890; Value = 0x384a427e5eeb719a; PC = 0x55555556561e *)
mov r14 L0x55555556a890;
(* mov    0x526c(%rip),%r15        # 0x55555556a898 <p751x4+88>#! EA = L0x55555556a898; Value = 0x0001bf975507dc70; PC = 0x555555565625 *)
mov r15 L0x55555556a898;
(* adc    %r14,%r12                                #! PC = 0x55555556562c *)
adcs carry r12 r12 r14@uint64 carry;
(* adc    %r15,%r13                                #! PC = 0x55555556562f *)
adcs carry r13 r13 r15@uint64 carry;
ghost carry_addx4_1@uint1 : carry_addx4_1 = carry && carry_addx4_1 = carry;
(* mov    %r8,0x30(%rdx)                           #! EA = L0x7fffffffd3b0; PC = 0x555555565632 *)
mov L0x7fffffffd3b0 r8;
(* mov    %r9,0x38(%rdx)                           #! EA = L0x7fffffffd3b8; PC = 0x555555565636 *)
mov L0x7fffffffd3b8 r9;
(* mov    %r10,0x40(%rdx)                          #! EA = L0x7fffffffd3c0; PC = 0x55555556563a *)
mov L0x7fffffffd3c0 r10;
(* mov    %r11,0x48(%rdx)                          #! EA = L0x7fffffffd3c8; PC = 0x55555556563e *)
mov L0x7fffffffd3c8 r11;
(* mov    %r12,0x50(%rdx)                          #! EA = L0x7fffffffd3d0; PC = 0x555555565642 *)
mov L0x7fffffffd3d0 r12;
(* mov    %r13,0x58(%rdx)                          #! EA = L0x7fffffffd3d8; PC = 0x555555565646 *)
mov L0x7fffffffd3d8 r13;
(* #! <- SP = 0x7fffffffd318 *)
#! 0x7fffffffd318 = 0x7fffffffd318;
(* #retq                                           #! PC = 0x555555565652 *)
#retq                                           #! 0x555555565652 = 0x555555565652;

ghost t2_00@uint64, t2_01@uint64, t2_02@uint64, t2_03@uint64, t2_04@uint64, t2_05@uint64,
      t2_06@uint64, t2_07@uint64, t2_08@uint64, t2_09@uint64, t2_10@uint64, t2_11@uint64 :
  and [
    t2_00 = L0x7fffffffd380, t2_01 = L0x7fffffffd388, t2_02 = L0x7fffffffd390,
    t2_03 = L0x7fffffffd398, t2_04 = L0x7fffffffd3a0, t2_05 = L0x7fffffffd3a8,
    t2_06 = L0x7fffffffd3b0, t2_07 = L0x7fffffffd3b8, t2_08 = L0x7fffffffd3c0,
    t2_09 = L0x7fffffffd3c8, t2_10 = L0x7fffffffd3d0, t2_11 = L0x7fffffffd3d8
  ]
  &&
  and [
    t2_00 = L0x7fffffffd380, t2_01 = L0x7fffffffd388, t2_02 = L0x7fffffffd390,
    t2_03 = L0x7fffffffd398, t2_04 = L0x7fffffffd3a0, t2_05 = L0x7fffffffd3a8,
    t2_06 = L0x7fffffffd3b0, t2_07 = L0x7fffffffd3b8, t2_08 = L0x7fffffffd3c0,
    t2_09 = L0x7fffffffd3c8, t2_10 = L0x7fffffffd3d0, t2_11 = L0x7fffffffd3d8
  ];

# Ecut 1
ecut eqmod (limbs 64 [ t2_00, t2_01, t2_02, t2_03, t2_04, t2_05, t2_06, t2_07, t2_08, t2_09, t2_10, t2_11 ])
           (
             (limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ])
             -
             (limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ])
             +
             4 * (limbs 64 [ $p751_00, $p751_01, $p751_02, $p751_03, $p751_04, $p751_05, $p751_06, $p751_07, $p751_08, $p751_09, $p751_10, $p751_11 ])
           )
           (2**768);
assert true && and [
         (limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11, 0@64 ])
         +
         4@832 * (limbs 64 [ $p751_00@64, $p751_01@64, $p751_02@64, $p751_03@64, $p751_04@64,
                             $p751_05@64, $p751_06@64, $p751_07@64, $p751_08@64, $p751_09@64, $p751_10@64, $p751_11@64, 0@64 ])
         <u
         (2**768)@832,
         (limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ])
         <=u
         (limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ])
         +
         4@768 * (limbs 64 [ $p751_00@64, $p751_01@64, $p751_02@64, $p751_03@64, $p751_04@64,
                             $p751_05@64, $p751_06@64, $p751_07@64, $p751_08@64, $p751_09@64, $p751_10@64, $p751_11@64 ])
];
assume (limbs 64 [ t2_00, t2_01, t2_02, t2_03, t2_04, t2_05, t2_06, t2_07, t2_08, t2_09, t2_10, t2_11 ])
       =
       (
         (limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ])
         -
         (limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ])
         +
         4 * (limbs 64 [ $p751_00, $p751_01, $p751_02, $p751_03, $p751_04, $p751_05, $p751_06, $p751_07, $p751_08, $p751_09, $p751_10, $p751_11 ])
       ) && true;
# Ecut 2
ecut (limbs 64 [ t2_00, t2_01, t2_02, t2_03, t2_04, t2_05, t2_06, t2_07, t2_08, t2_09, t2_10, t2_11 ])
     =
     (
       (limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ])
       -
       (limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ])
       +
       4 * (limbs 64 [ $p751_00, $p751_01, $p751_02, $p751_03, $p751_04, $p751_05, $p751_06, $p751_07, $p751_08, $p751_09, $p751_10, $p751_11 ])
     );

// mp_addfast(a[0], a[0], t3);                      // t3 = 2a0
(* mov    %r13,%rdx                                #! PC = 0x555555558c9b *)
mov rdx r13;
(* mov    %rbp,%rsi                                #! PC = 0x555555558c9e *)
mov rsi rbp;
(* mov    %rbp,%rdi                                #! PC = 0x555555558ca1 *)
mov rdi rbp;
(* #callq  0x555555566b79 <mp_add751_asm>          #! PC = 0x555555558ca4 *)
#callq  0x555555566b79 <mp_add751_asm>          #! 0x555555558ca4 = 0x555555558ca4;
(* #! -> SP = 0x7fffffffd318 *)
#! 0x7fffffffd318 = 0x7fffffffd318;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffda20; Value = 0x7025d9bbebb61e93; PC = 0x555555566b79 *)
mov r8 L0x7fffffffda20;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffda28; Value = 0xbc29dd8370a4a655; PC = 0x555555566b7c *)
mov r9 L0x7fffffffda28;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffda30; Value = 0x9f776cd1ca8060fa; PC = 0x555555566b80 *)
mov r10 L0x7fffffffda30;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffda38; Value = 0x05fe2ef2ee9b3cdf; PC = 0x555555566b84 *)
mov r11 L0x7fffffffda38;
(* mov    0x20(%rdi),%rax                          #! EA = L0x7fffffffda40; Value = 0x6432933727620f12; PC = 0x555555566b88 *)
mov rax L0x7fffffffda40;
(* mov    0x28(%rdi),%rcx                          #! EA = L0x7fffffffda48; Value = 0xb2cb4891b6be1eed; PC = 0x555555566b8c *)
mov rcx L0x7fffffffda48;
(* add    (%rsi),%r8                               #! EA = L0x7fffffffda20; Value = 0x7025d9bbebb61e93; PC = 0x555555566b90 *)
adds carry r8 r8 L0x7fffffffda20;
(* adc    0x8(%rsi),%r9                            #! EA = L0x7fffffffda28; Value = 0xbc29dd8370a4a655; PC = 0x555555566b93 *)
adcs carry r9 r9 L0x7fffffffda28 carry;
(* adc    0x10(%rsi),%r10                          #! EA = L0x7fffffffda30; Value = 0x9f776cd1ca8060fa; PC = 0x555555566b97 *)
adcs carry r10 r10 L0x7fffffffda30 carry;
(* adc    0x18(%rsi),%r11                          #! EA = L0x7fffffffda38; Value = 0x05fe2ef2ee9b3cdf; PC = 0x555555566b9b *)
adcs carry r11 r11 L0x7fffffffda38 carry;
(* adc    0x20(%rsi),%rax                          #! EA = L0x7fffffffda40; Value = 0x6432933727620f12; PC = 0x555555566b9f *)
adcs carry rax rax L0x7fffffffda40 carry;
(* adc    0x28(%rsi),%rcx                          #! EA = L0x7fffffffda48; Value = 0xb2cb4891b6be1eed; PC = 0x555555566ba3 *)
adcs carry rcx rcx L0x7fffffffda48 carry;
(* mov    %r8,(%rdx)                               #! EA = L0x7fffffffd3e0; PC = 0x555555566ba7 *)
mov L0x7fffffffd3e0 r8;
(* mov    %r9,0x8(%rdx)                            #! EA = L0x7fffffffd3e8; PC = 0x555555566baa *)
mov L0x7fffffffd3e8 r9;
(* mov    %r10,0x10(%rdx)                          #! EA = L0x7fffffffd3f0; PC = 0x555555566bae *)
mov L0x7fffffffd3f0 r10;
(* mov    %r11,0x18(%rdx)                          #! EA = L0x7fffffffd3f8; PC = 0x555555566bb2 *)
mov L0x7fffffffd3f8 r11;
(* mov    %rax,0x20(%rdx)                          #! EA = L0x7fffffffd400; PC = 0x555555566bb6 *)
mov L0x7fffffffd400 rax;
(* mov    %rcx,0x28(%rdx)                          #! EA = L0x7fffffffd408; PC = 0x555555566bba *)
mov L0x7fffffffd408 rcx;
(* mov    0x30(%rdi),%r8                           #! EA = L0x7fffffffda50; Value = 0x6f3b53839df92ca8; PC = 0x555555566bbe *)
mov r8 L0x7fffffffda50;
(* mov    0x38(%rdi),%r9                           #! EA = L0x7fffffffda58; Value = 0x20d32f3610891b14; PC = 0x555555566bc2 *)
mov r9 L0x7fffffffda58;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffda60; Value = 0x70a96bd5339a92af; PC = 0x555555566bc6 *)
mov r10 L0x7fffffffda60;
(* mov    0x48(%rdi),%r11                          #! EA = L0x7fffffffda68; Value = 0x6a09928dfc8ac72b; PC = 0x555555566bca *)
mov r11 L0x7fffffffda68;
(* mov    0x50(%rdi),%rax                          #! EA = L0x7fffffffda70; Value = 0xda7e0c4c67039286; PC = 0x555555566bce *)
mov rax L0x7fffffffda70;
(* mov    0x58(%rdi),%rcx                          #! EA = L0x7fffffffda78; Value = 0x0000324a125c28cc; PC = 0x555555566bd2 *)
mov rcx L0x7fffffffda78;
(* adc    0x30(%rsi),%r8                           #! EA = L0x7fffffffda50; Value = 0x6f3b53839df92ca8; PC = 0x555555566bd6 *)
adcs carry r8 r8 L0x7fffffffda50 carry;
(* adc    0x38(%rsi),%r9                           #! EA = L0x7fffffffda58; Value = 0x20d32f3610891b14; PC = 0x555555566bda *)
adcs carry r9 r9 L0x7fffffffda58 carry;
(* adc    0x40(%rsi),%r10                          #! EA = L0x7fffffffda60; Value = 0x70a96bd5339a92af; PC = 0x555555566bde *)
adcs carry r10 r10 L0x7fffffffda60 carry;
(* adc    0x48(%rsi),%r11                          #! EA = L0x7fffffffda68; Value = 0x6a09928dfc8ac72b; PC = 0x555555566be2 *)
adcs carry r11 r11 L0x7fffffffda68 carry;
(* adc    0x50(%rsi),%rax                          #! EA = L0x7fffffffda70; Value = 0xda7e0c4c67039286; PC = 0x555555566be6 *)
adcs carry rax rax L0x7fffffffda70 carry;
(* adc    0x58(%rsi),%rcx                          #! EA = L0x7fffffffda78; Value = 0x0000324a125c28cc; PC = 0x555555566bea *)
adcs carry rcx rcx L0x7fffffffda78 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r8,0x30(%rdx)                           #! EA = L0x7fffffffd410; PC = 0x555555566bee *)
mov L0x7fffffffd410 r8;
(* mov    %r9,0x38(%rdx)                           #! EA = L0x7fffffffd418; PC = 0x555555566bf2 *)
mov L0x7fffffffd418 r9;
(* mov    %r10,0x40(%rdx)                          #! EA = L0x7fffffffd420; PC = 0x555555566bf6 *)
mov L0x7fffffffd420 r10;
(* mov    %r11,0x48(%rdx)                          #! EA = L0x7fffffffd428; PC = 0x555555566bfa *)
mov L0x7fffffffd428 r11;
(* mov    %rax,0x50(%rdx)                          #! EA = L0x7fffffffd430; PC = 0x555555566bfe *)
mov L0x7fffffffd430 rax;
(* mov    %rcx,0x58(%rdx)                          #! EA = L0x7fffffffd438; PC = 0x555555566c02 *)
mov L0x7fffffffd438 rcx;
(* #! <- SP = 0x7fffffffd318 *)
#! 0x7fffffffd318 = 0x7fffffffd318;
(* #retq                                           #! PC = 0x555555566c06 *)
#retq                                           #! 0x555555566c06 = 0x555555566c06;

ghost t3_00@uint64, t3_01@uint64, t3_02@uint64, t3_03@uint64, t3_04@uint64, t3_05@uint64,
      t3_06@uint64, t3_07@uint64, t3_08@uint64, t3_09@uint64, t3_10@uint64, t3_11@uint64 :
  and [
    t3_00 = L0x7fffffffd3e0, t3_01 = L0x7fffffffd3e8, t3_02 = L0x7fffffffd3f0,
    t3_03 = L0x7fffffffd3f8, t3_04 = L0x7fffffffd400, t3_05 = L0x7fffffffd408,
    t3_06 = L0x7fffffffd410, t3_07 = L0x7fffffffd418, t3_08 = L0x7fffffffd420,
    t3_09 = L0x7fffffffd428, t3_10 = L0x7fffffffd430, t3_11 = L0x7fffffffd438
  ]
  &&
  and [
    t3_00 = L0x7fffffffd3e0, t3_01 = L0x7fffffffd3e8, t3_02 = L0x7fffffffd3f0,
    t3_03 = L0x7fffffffd3f8, t3_04 = L0x7fffffffd400, t3_05 = L0x7fffffffd408,
    t3_06 = L0x7fffffffd410, t3_07 = L0x7fffffffd418, t3_08 = L0x7fffffffd420,
    t3_09 = L0x7fffffffd428, t3_10 = L0x7fffffffd430, t3_11 = L0x7fffffffd438
  ];

# Ecut 3
ecut (limbs 64 [ t3_00, t3_01, t3_02, t3_03, t3_04, t3_05, t3_06, t3_07, t3_08, t3_09, t3_10, t3_11 ])
     =
     (2 * limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ]);

// fpmul_mont(t1, t2, c[0]);                        // c0 = (a0+a1)(a0-a1)
(* xor    %edx,%edx                                #! PC = 0x555555558ca9 *)
mov rdx 0@uint64;
(* xor    %eax,%eax                                #! PC = 0x555555558cab *)
mov rax 0@uint64;
(* mov    %eax,%ecx                                #! PC = 0x555555558cad *)
assert true && rax <=u 0x0000000100000000@64;
mov rcx rax;
(* add    $0x20,%eax                               #! PC = 0x555555558caf *)
add rax rax 0x20@uint64;
assert true && rax <=u 0x0000000100000000@64;
(* mov    %rdx,0x120(%rsp,%rcx,1)                  #! EA = L0x7fffffffd440; PC = 0x555555558cb2 *)
mov L0x7fffffffd440 rdx;
(* mov    %rdx,0x128(%rsp,%rcx,1)                  #! EA = L0x7fffffffd448; PC = 0x555555558cba *)
mov L0x7fffffffd448 rdx;
(* mov    %rdx,0x130(%rsp,%rcx,1)                  #! EA = L0x7fffffffd450; PC = 0x555555558cc2 *)
mov L0x7fffffffd450 rdx;
(* mov    %rdx,0x138(%rsp,%rcx,1)                  #! EA = L0x7fffffffd458; PC = 0x555555558cca *)
mov L0x7fffffffd458 rdx;
(* #jb     0x555555558cad <fp2sqr751_mont+109>     #! PC = 0x555555558cd7 *)
#jb     0x555555558cad <fp2sqr751_mont+109>     #! 0x555555558cd7 = 0x555555558cd7;
(* mov    %eax,%ecx                                #! PC = 0x555555558cad *)
assert true && rax <=u 0x0000000100000000@64;
mov rcx rax;
(* add    $0x20,%eax                               #! PC = 0x555555558caf *)
add rax rax 0x20@uint64;
assert true && rax <=u 0x0000000100000000@64;
(* mov    %rdx,0x120(%rsp,%rcx,1)                  #! EA = L0x7fffffffd460; PC = 0x555555558cb2 *)
mov L0x7fffffffd460 rdx;
(* mov    %rdx,0x128(%rsp,%rcx,1)                  #! EA = L0x7fffffffd468; PC = 0x555555558cba *)
mov L0x7fffffffd468 rdx;
(* mov    %rdx,0x130(%rsp,%rcx,1)                  #! EA = L0x7fffffffd470; PC = 0x555555558cc2 *)
mov L0x7fffffffd470 rdx;
(* mov    %rdx,0x138(%rsp,%rcx,1)                  #! EA = L0x7fffffffd478; PC = 0x555555558cca *)
mov L0x7fffffffd478 rdx;
(* #jb     0x555555558cad <fp2sqr751_mont+109>     #! PC = 0x555555558cd7 *)
#jb     0x555555558cad <fp2sqr751_mont+109>     #! 0x555555558cd7 = 0x555555558cd7;
(* mov    %eax,%ecx                                #! PC = 0x555555558cad *)
assert true && rax <=u 0x0000000100000000@64;
mov rcx rax;
(* add    $0x20,%eax                               #! PC = 0x555555558caf *)
add rax rax 0x20@uint64;
assert true && rax <=u 0x0000000100000000@64;
(* mov    %rdx,0x120(%rsp,%rcx,1)                  #! EA = L0x7fffffffd480; PC = 0x555555558cb2 *)
mov L0x7fffffffd480 rdx;
(* mov    %rdx,0x128(%rsp,%rcx,1)                  #! EA = L0x7fffffffd488; PC = 0x555555558cba *)
mov L0x7fffffffd488 rdx;
(* mov    %rdx,0x130(%rsp,%rcx,1)                  #! EA = L0x7fffffffd490; PC = 0x555555558cc2 *)
mov L0x7fffffffd490 rdx;
(* mov    %rdx,0x138(%rsp,%rcx,1)                  #! EA = L0x7fffffffd498; PC = 0x555555558cca *)
mov L0x7fffffffd498 rdx;
(* #jb     0x555555558cad <fp2sqr751_mont+109>     #! PC = 0x555555558cd7 *)
#jb     0x555555558cad <fp2sqr751_mont+109>     #! 0x555555558cd7 = 0x555555558cd7;
(* mov    %eax,%ecx                                #! PC = 0x555555558cad *)
assert true && rax <=u 0x0000000100000000@64;
mov rcx rax;
(* add    $0x20,%eax                               #! PC = 0x555555558caf *)
add rax rax 0x20@uint64;
assert true && rax <=u 0x0000000100000000@64;
(* mov    %rdx,0x120(%rsp,%rcx,1)                  #! EA = L0x7fffffffd4a0; PC = 0x555555558cb2 *)
mov L0x7fffffffd4a0 rdx;
(* mov    %rdx,0x128(%rsp,%rcx,1)                  #! EA = L0x7fffffffd4a8; PC = 0x555555558cba *)
mov L0x7fffffffd4a8 rdx;
(* mov    %rdx,0x130(%rsp,%rcx,1)                  #! EA = L0x7fffffffd4b0; PC = 0x555555558cc2 *)
mov L0x7fffffffd4b0 rdx;
(* mov    %rdx,0x138(%rsp,%rcx,1)                  #! EA = L0x7fffffffd4b8; PC = 0x555555558cca *)
mov L0x7fffffffd4b8 rdx;
(* #jb     0x555555558cad <fp2sqr751_mont+109>     #! PC = 0x555555558cd7 *)
#jb     0x555555558cad <fp2sqr751_mont+109>     #! 0x555555558cd7 = 0x555555558cd7;
(* mov    %eax,%ecx                                #! PC = 0x555555558cad *)
assert true && rax <=u 0x0000000100000000@64;
mov rcx rax;
(* add    $0x20,%eax                               #! PC = 0x555555558caf *)
add rax rax 0x20@uint64;
assert true && rax <=u 0x0000000100000000@64;
(* mov    %rdx,0x120(%rsp,%rcx,1)                  #! EA = L0x7fffffffd4c0; PC = 0x555555558cb2 *)
mov L0x7fffffffd4c0 rdx;
(* mov    %rdx,0x128(%rsp,%rcx,1)                  #! EA = L0x7fffffffd4c8; PC = 0x555555558cba *)
mov L0x7fffffffd4c8 rdx;
(* mov    %rdx,0x130(%rsp,%rcx,1)                  #! EA = L0x7fffffffd4d0; PC = 0x555555558cc2 *)
mov L0x7fffffffd4d0 rdx;
(* mov    %rdx,0x138(%rsp,%rcx,1)                  #! EA = L0x7fffffffd4d8; PC = 0x555555558cca *)
mov L0x7fffffffd4d8 rdx;
(* #jb     0x555555558cad <fp2sqr751_mont+109>     #! PC = 0x555555558cd7 *)
#jb     0x555555558cad <fp2sqr751_mont+109>     #! 0x555555558cd7 = 0x555555558cd7;
(* mov    %eax,%ecx                                #! PC = 0x555555558cad *)
assert true && rax <=u 0x0000000100000000@64;
mov rcx rax;
(* add    $0x20,%eax                               #! PC = 0x555555558caf *)
add rax rax 0x20@uint64;
assert true && rax <=u 0x0000000100000000@64;
(* mov    %rdx,0x120(%rsp,%rcx,1)                  #! EA = L0x7fffffffd4e0; PC = 0x555555558cb2 *)
mov L0x7fffffffd4e0 rdx;
(* mov    %rdx,0x128(%rsp,%rcx,1)                  #! EA = L0x7fffffffd4e8; PC = 0x555555558cba *)
mov L0x7fffffffd4e8 rdx;
(* mov    %rdx,0x130(%rsp,%rcx,1)                  #! EA = L0x7fffffffd4f0; PC = 0x555555558cc2 *)
mov L0x7fffffffd4f0 rdx;
(* mov    %rdx,0x138(%rsp,%rcx,1)                  #! EA = L0x7fffffffd4f8; PC = 0x555555558cca *)
mov L0x7fffffffd4f8 rdx;
(* #jb     0x555555558cad <fp2sqr751_mont+109>     #! PC = 0x555555558cd7 *)
#jb     0x555555558cad <fp2sqr751_mont+109>     #! 0x555555558cd7 = 0x555555558cd7;
(* mov    $0xc,%ecx                                #! PC = 0x555555558ce1 *)
assert true && 0xc@64 <=u 0x0000000100000000@64;
mov rcx 0xc@uint64;
(* mov    %rbp,%rdx                                #! PC = 0x555555558ce6 *)
mov rdx rbp;
(* mov    %r15,%rsi                                #! PC = 0x555555558ce9 *)
mov rsi r15;
(* mov    %r14,%rdi                                #! PC = 0x555555558cec *)
mov rdi r14;
(* #callq  0x5555555650c0 <mp_mul>                 #! PC = 0x555555558cef *)
#callq  0x5555555650c0 <mp_mul>                 #! 0x555555558cef = 0x555555558cef;
(* #! -> SP = 0x7fffffffd318 *)
#! 0x7fffffffd318 = 0x7fffffffd318;
(* #jmpq   0x555555565653 <mul751_asm>             #! PC = 0x5555555650c4 *)
#jmpq   0x555555565653 <mul751_asm>             #! 0x5555555650c4 = 0x5555555650c4;
(* mov    %rdx,%rcx                                #! PC = 0x55555556565b *)
mov rcx rdx;
(* xor    %rax,%rax                                #! PC = 0x55555556565e *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffd320; Value = 0x19a7029713f8787a; PC = 0x555555565661 *)
mov r8 L0x7fffffffd320;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffd328; Value = 0x860441805132b55b; PC = 0x555555565664 *)
mov r9 L0x7fffffffd328;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffd330; Value = 0x93ba059bb2772db9; PC = 0x555555565668 *)
mov r10 L0x7fffffffd330;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffd338; Value = 0xc89cd0f0a37be913; PC = 0x55555556566c *)
mov r11 L0x7fffffffd338;
(* mov    0x20(%rdi),%r12                          #! EA = L0x7fffffffd340; Value = 0x16d740275dbfb4f0; PC = 0x555555565670 *)
mov r12 L0x7fffffffd340;
(* mov    0x28(%rdi),%r13                          #! EA = L0x7fffffffd348; Value = 0x9d3ff54414c2e24d; PC = 0x555555565674 *)
mov r13 L0x7fffffffd348;
(* sub    $0x98,%rsp                               #! PC = 0x55555556567a *)
subb carry rsp rsp 0x98@uint64;
(* add    0x30(%rdi),%r8                           #! EA = L0x7fffffffd350; Value = 0x901438a97466bf37; PC = 0x555555565681 *)
adds carry r8 r8 L0x7fffffffd350;
(* adc    0x38(%rdi),%r9                           #! EA = L0x7fffffffd358; Value = 0xd9290de6d44d21c5; PC = 0x555555565685 *)
adcs carry r9 r9 L0x7fffffffd358 carry;
(* adc    0x40(%rdi),%r10                          #! EA = L0x7fffffffd360; Value = 0x89702c18f0409181; PC = 0x555555565689 *)
adcs carry r10 r10 L0x7fffffffd360 carry;
(* adc    0x48(%rdi),%r11                          #! EA = L0x7fffffffd368; Value = 0xf1c1358f4529c340; PC = 0x55555556568d *)
adcs carry r11 r11 L0x7fffffffd368 carry;
(* adc    0x50(%rdi),%r12                          #! EA = L0x7fffffffd370; Value = 0x4972fbf2e975398b; PC = 0x555555565691 *)
adcs carry r12 r12 L0x7fffffffd370 carry;
(* adc    0x58(%rdi),%r13                          #! EA = L0x7fffffffd378; Value = 0x00009d67c8564d79; PC = 0x555555565695 *)
adcs carry r13 r13 L0x7fffffffd378 carry;
ghost carry_t1h_add_t1l@uint1 : carry_t1h_add_t1l = carry && carry_t1h_add_t1l = carry;
(* sbb    $0x0,%rax                                #! PC = 0x555555565699 *)
sbbs carry rax rax 0x0@uint64 carry;
assert true && carry_t1h_add_t1l = carry;
assume carry_t1h_add_t1l = carry && true;
(* mov    %r8,(%rsp)                               #! EA = L0x7fffffffd250; PC = 0x55555556569d *)
mov L0x7fffffffd250 r8;
(* mov    %r9,0x8(%rsp)                            #! EA = L0x7fffffffd258; PC = 0x5555555656a1 *)
mov L0x7fffffffd258 r9;
(* mov    %r10,0x10(%rsp)                          #! EA = L0x7fffffffd260; PC = 0x5555555656a6 *)
mov L0x7fffffffd260 r10;
(* mov    %r11,0x18(%rsp)                          #! EA = L0x7fffffffd268; PC = 0x5555555656ab *)
mov L0x7fffffffd268 r11;
(* mov    %r12,0x20(%rsp)                          #! EA = L0x7fffffffd270; PC = 0x5555555656b0 *)
mov L0x7fffffffd270 r12;
(* mov    %r13,0x28(%rsp)                          #! EA = L0x7fffffffd278; PC = 0x5555555656b5 *)
mov L0x7fffffffd278 r13;
ghost t1h_add_t1l_0@uint64, t1h_add_t1l_1@uint64, t1h_add_t1l_2@uint64, t1h_add_t1l_3@uint64, t1h_add_t1l_4@uint64, t1h_add_t1l_5@uint64 :
  and [
    t1h_add_t1l_0 = L0x7fffffffd250, t1h_add_t1l_1 = L0x7fffffffd258, t1h_add_t1l_2 = L0x7fffffffd260,
    t1h_add_t1l_3 = L0x7fffffffd268, t1h_add_t1l_4 = L0x7fffffffd270, t1h_add_t1l_5 = L0x7fffffffd278
  ]
  &&
  and [
    t1h_add_t1l_0 = L0x7fffffffd250, t1h_add_t1l_1 = L0x7fffffffd258, t1h_add_t1l_2 = L0x7fffffffd260,
    t1h_add_t1l_3 = L0x7fffffffd268, t1h_add_t1l_4 = L0x7fffffffd270, t1h_add_t1l_5 = L0x7fffffffd278
  ];
(* xor    %rdx,%rdx                                #! PC = 0x5555555656ba *)
mov rdx 0@uint64;
clear carry;
clear overflow;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffd380; Value = 0xc6a4b0e0c373c4a8; PC = 0x5555555656bd *)
mov r8 L0x7fffffffd380;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffd388; Value = 0xf24f79869016974f; PC = 0x5555555656c0 *)
mov r9 L0x7fffffffd388;
(* mov    0x10(%rsi),%rbx                          #! EA = L0x7fffffffd390; Value = 0xab34d407e289943b; PC = 0x5555555656c4 *)
mov rbx L0x7fffffffd390;
(* mov    0x18(%rsi),%rbp                          #! EA = L0x7fffffffd398; Value = 0x435f8cf539ba90ab; PC = 0x5555555656c8 *)
mov rbp L0x7fffffffd398;
(* mov    0x20(%rsi),%r14                          #! EA = L0x7fffffffd3a0; Value = 0xb18de646f1046933; PC = 0x5555555656cc *)
mov r14 L0x7fffffffd3a0;
(* mov    0x28(%rsi),%r15                          #! EA = L0x7fffffffd3a8; Value = 0x83169bdf58b95b8d; PC = 0x5555555656d0 *)
mov r15 L0x7fffffffd3a8;
(* add    0x30(%rsi),%r8                           #! EA = L0x7fffffffd3b0; Value = 0xde14c872ef6d7cbd; PC = 0x5555555656d4 *)
adds carry r8 r8 L0x7fffffffd3b0;
(* adc    0x38(%rsi),%r9                           #! EA = L0x7fffffffd3b8; Value = 0xd2d3bced9ca4463e; PC = 0x5555555656d8 *)
adcs carry r9 r9 L0x7fffffffd3b8 carry;
(* adc    0x40(%rsi),%rbx                          #! EA = L0x7fffffffd3c0; Value = 0x791d0d30d2a435b7; PC = 0x5555555656dc *)
adcs carry rbx rbx L0x7fffffffd3c0 carry;
(* adc    0x48(%rsi),%rbp                          #! EA = L0x7fffffffd3c8; Value = 0xf7dcc39e26b52836; PC = 0x5555555656e0 *)
adcs carry rbp rbp L0x7fffffffd3c8 carry;
(* adc    0x50(%rsi),%r14                          #! EA = L0x7fffffffd3d0; Value = 0xa3d35f24437d5d1a; PC = 0x5555555656e4 *)
adcs carry r14 r14 L0x7fffffffd3d0 carry;
(* adc    0x58(%rsi),%r15                          #! EA = L0x7fffffffd3d8; Value = 0x000186c3b169e090; PC = 0x5555555656e8 *)
adcs carry r15 r15 L0x7fffffffd3d8 carry;
ghost carry_t2h_add_t2l@uint1 : carry_t2h_add_t2l = carry && carry_t2h_add_t2l = carry;
(* sbb    $0x0,%rdx                                #! PC = 0x5555555656ec *)
sbbs carry rdx rdx 0x0@uint64 carry;
assert true && carry_t2h_add_t2l = carry;
assume carry_t2h_add_t2l = carry && true;
(* mov    %r8,0x30(%rsp)                           #! EA = L0x7fffffffd280; PC = 0x5555555656f0 *)
mov L0x7fffffffd280 r8;
(* mov    %r9,0x38(%rsp)                           #! EA = L0x7fffffffd288; PC = 0x5555555656f5 *)
mov L0x7fffffffd288 r9;
(* mov    %rbx,0x40(%rsp)                          #! EA = L0x7fffffffd290; PC = 0x5555555656fa *)
mov L0x7fffffffd290 rbx;
(* mov    %rbp,0x48(%rsp)                          #! EA = L0x7fffffffd298; PC = 0x5555555656ff *)
mov L0x7fffffffd298 rbp;
(* mov    %r14,0x50(%rsp)                          #! EA = L0x7fffffffd2a0; PC = 0x555555565704 *)
mov L0x7fffffffd2a0 r14;
(* mov    %r15,0x58(%rsp)                          #! EA = L0x7fffffffd2a8; PC = 0x555555565709 *)
mov L0x7fffffffd2a8 r15;
ghost t2h_add_t2l_0@uint64, t2h_add_t2l_1@uint64, t2h_add_t2l_2@uint64, t2h_add_t2l_3@uint64, t2h_add_t2l_4@uint64, t2h_add_t2l_5@uint64 :
  and [
    t2h_add_t2l_0 = L0x7fffffffd280, t2h_add_t2l_1 = L0x7fffffffd288, t2h_add_t2l_2 = L0x7fffffffd290,
    t2h_add_t2l_3 = L0x7fffffffd298, t2h_add_t2l_4 = L0x7fffffffd2a0, t2h_add_t2l_5 = L0x7fffffffd2a8
  ]
  &&
  and [
    t2h_add_t2l_0 = L0x7fffffffd280, t2h_add_t2l_1 = L0x7fffffffd288, t2h_add_t2l_2 = L0x7fffffffd290,
    t2h_add_t2l_3 = L0x7fffffffd298, t2h_add_t2l_4 = L0x7fffffffd2a0, t2h_add_t2l_5 = L0x7fffffffd2a8
  ];
(* and    %rax,%r8                                 #! PC = 0x55555556570e *)
and uint64 r8 rax r8;
(* and    %rax,%r9                                 #! PC = 0x555555565711 *)
and uint64 r9 rax r9;
(* and    %rax,%rbx                                #! PC = 0x555555565714 *)
and uint64 rbx rax rbx;
(* and    %rax,%rbp                                #! PC = 0x555555565717 *)
and uint64 rbp rax rbp;
(* and    %rax,%r14                                #! PC = 0x55555556571a *)
and uint64 r14 rax r14;
(* and    %rax,%r15                                #! PC = 0x55555556571d *)
and uint64 r15 rax r15;
(* mov    %r8,(%rcx)                               #! EA = L0x7fffffffd440; PC = 0x555555565720 *)
mov L0x7fffffffd440 r8;
(* mov    %r9,0x8(%rcx)                            #! EA = L0x7fffffffd448; PC = 0x555555565723 *)
mov L0x7fffffffd448 r9;
assert true && and [
  limbs 64 [ r8, r9, rbx, rbp, r14, r15 ]
  =
  uext carry_t1h_add_t1l 383 * (limbs 64 [ t2h_add_t2l_0, t2h_add_t2l_1, t2h_add_t2l_2, t2h_add_t2l_3, t2h_add_t2l_4, t2h_add_t2l_5 ])
];
assume and [
  limbs 64 [ r8, r9, rbx, rbp, r14, r15 ]
  =
  carry_t1h_add_t1l * (limbs 64 [ t2h_add_t2l_0, t2h_add_t2l_1, t2h_add_t2l_2, t2h_add_t2l_3, t2h_add_t2l_4, t2h_add_t2l_5 ])
] && true;
(* mov    (%rsp),%r8                               #! EA = L0x7fffffffd250; Value = 0xa9bb3b40885f37b1; PC = 0x555555565727 *)
mov r8 L0x7fffffffd250;
(* mov    0x8(%rsp),%r9                            #! EA = L0x7fffffffd258; Value = 0x5f2d4f67257fd720; PC = 0x55555556572b *)
mov r9 L0x7fffffffd258;
(* and    %rdx,%r8                                 #! PC = 0x555555565730 *)
and uint64 r8 rdx r8;
(* and    %rdx,%r9                                 #! PC = 0x555555565733 *)
and uint64 r9 rdx r9;
(* and    %rdx,%r10                                #! PC = 0x555555565736 *)
and uint64 r10 rdx r10;
(* and    %rdx,%r11                                #! PC = 0x555555565739 *)
and uint64 r11 rdx r11;
(* and    %rdx,%r12                                #! PC = 0x55555556573c *)
and uint64 r12 rdx r12;
(* and    %rdx,%r13                                #! PC = 0x55555556573f *)
and uint64 r13 rdx r13;
assert true && and [
  limbs 64 [ r8, r9, r10, r11, r12, r13 ]
  =
  uext carry_t2h_add_t2l 383 * (limbs 64 [ t1h_add_t1l_0, t1h_add_t1l_1, t1h_add_t1l_2, t1h_add_t1l_3, t1h_add_t1l_4, t1h_add_t1l_5 ])
];
assume and [
  limbs 64 [ r8, r9, r10, r11, r12, r13 ]
  =
  carry_t2h_add_t2l * (limbs 64 [ t1h_add_t1l_0, t1h_add_t1l_1, t1h_add_t1l_2, t1h_add_t1l_3, t1h_add_t1l_4, t1h_add_t1l_5 ])
] && true;
(* mov    (%rcx),%rax                              #! EA = L0x7fffffffd440; Value = 0x0000000000000000; PC = 0x555555565742 *)
mov rax L0x7fffffffd440;
(* mov    0x8(%rcx),%rdx                           #! EA = L0x7fffffffd448; Value = 0x0000000000000000; PC = 0x555555565745 *)
mov rdx L0x7fffffffd448;
(* add    %rax,%r8                                 #! PC = 0x555555565749 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x55555556574c *)
adcs carry r9 r9 rdx@uint64 carry;
(* adc    %rbx,%r10                                #! PC = 0x55555556574f *)
adcs carry r10 r10 rbx@uint64 carry;
(* adc    %rbp,%r11                                #! PC = 0x555555565752 *)
adcs carry r11 r11 rbp@uint64 carry;
(* adc    %r14,%r12                                #! PC = 0x555555565755 *)
adcs carry r12 r12 r14@uint64 carry;
(* adc    %r15,%r13                                #! PC = 0x555555565758 *)
adcs carry r13 r13 r15@uint64 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r8,0x60(%rsp)                           #! EA = L0x7fffffffd2b0; PC = 0x55555556575b *)
mov L0x7fffffffd2b0 r8;
(* mov    %r9,0x68(%rsp)                           #! EA = L0x7fffffffd2b8; PC = 0x555555565760 *)
mov L0x7fffffffd2b8 r9;
(* mov    %r10,0x70(%rsp)                          #! EA = L0x7fffffffd2c0; PC = 0x555555565765 *)
mov L0x7fffffffd2c0 r10;
(* mov    %r11,0x78(%rsp)                          #! EA = L0x7fffffffd2c8; PC = 0x55555556576a *)
mov L0x7fffffffd2c8 r11;
ghost m_t1h_t1l_t2h_t2l_0@uint64, m_t1h_t1l_t2h_t2l_1@uint64, m_t1h_t1l_t2h_t2l_2@uint64, m_t1h_t1l_t2h_t2l_3@uint64, m_t1h_t1l_t2h_t2l_4@uint64, m_t1h_t1l_t2h_t2l_5@uint64 :
  and [
    m_t1h_t1l_t2h_t2l_0 = r8, m_t1h_t1l_t2h_t2l_1 = r9, m_t1h_t1l_t2h_t2l_2 = r10,
    m_t1h_t1l_t2h_t2l_3 = r11, m_t1h_t1l_t2h_t2l_4 = r12, m_t1h_t1l_t2h_t2l_5 = r13
  ]
  &&
  and [
    m_t1h_t1l_t2h_t2l_0 = r8, m_t1h_t1l_t2h_t2l_1 = r9, m_t1h_t1l_t2h_t2l_2 = r10,
    m_t1h_t1l_t2h_t2l_3 = r11, m_t1h_t1l_t2h_t2l_4 = r12, m_t1h_t1l_t2h_t2l_5 = r13
  ];
(* mov    (%rdi),%rdx                              #! EA = L0x7fffffffd320; Value = 0x19a7029713f8787a; PC = 0x55555556576f *)
mov rdx L0x7fffffffd320;
(* mulx   (%rsi),%r9,%r8                           #! EA = L0x7fffffffd380; Value = 0xc6a4b0e0c373c4a8; PC = 0x555555565772 *)
mull r8 r9 L0x7fffffffd380 rdx;
(* mulx   0x8(%rsi),%r11,%r10                      #! EA = L0x7fffffffd388; Value = 0xf24f79869016974f; PC = 0x555555565777 *)
mull r10 r11 L0x7fffffffd388 rdx;
(* mov    %r9,(%rcx)                               #! EA = L0x7fffffffd440; PC = 0x55555556577d *)
mov L0x7fffffffd440 r9;
(* xor    %rax,%rax                                #! PC = 0x555555565780 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x10(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd390; Value = 0xab34d407e289943b; PC = 0x555555565783 *)
mull rbx rbp L0x7fffffffd390 rdx;
(* adox   %r11,%r8                                 #! PC = 0x555555565789 *)
adcs overflow r8 r8 r11 overflow;
(* adox   %rbp,%r10                                #! PC = 0x55555556578f *)
adcs overflow r10 r10 rbp overflow;
(* mulx   0x18(%rsi),%r11,%r9                      #! EA = L0x7fffffffd398; Value = 0x435f8cf539ba90ab; PC = 0x555555565795 *)
mull r9 r11 L0x7fffffffd398 rdx;
(* adox   %r11,%rbx                                #! PC = 0x55555556579b *)
adcs overflow rbx rbx r11 overflow;
(* mulx   0x20(%rsi),%r14,%rbp                     #! EA = L0x7fffffffd3a0; Value = 0xb18de646f1046933; PC = 0x5555555657a1 *)
mull rbp r14 L0x7fffffffd3a0 rdx;
(* adox   %r14,%r9                                 #! PC = 0x5555555657a7 *)
adcs overflow r9 r9 r14 overflow;
(* mulx   0x28(%rsi),%r15,%r11                     #! EA = L0x7fffffffd3a8; Value = 0x83169bdf58b95b8d; PC = 0x5555555657ad *)
mull r11 r15 L0x7fffffffd3a8 rdx;
(* adox   %r15,%rbp                                #! PC = 0x5555555657b3 *)
adcs overflow rbp rbp r15 overflow;
(* adox   %rax,%r11                                #! PC = 0x5555555657b9 *)
adcs overflow r11 r11 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x8(%rdi),%rdx                           #! EA = L0x7fffffffd328; Value = 0x860441805132b55b; PC = 0x5555555657bf *)
mov rdx L0x7fffffffd328;
(* mulx   (%rsi),%r15,%r14                         #! EA = L0x7fffffffd380; Value = 0xc6a4b0e0c373c4a8; PC = 0x5555555657c3 *)
mull r14 r15 L0x7fffffffd380 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555657c8 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r8                                 #! PC = 0x5555555657cb *)
adcs carry r8 r8 r15 carry;
(* mov    %r8,0x8(%rcx)                            #! EA = L0x7fffffffd448; PC = 0x5555555657d1 *)
mov L0x7fffffffd448 r8;
(* adcx   %r14,%r10                                #! PC = 0x5555555657d5 *)
adcs carry r10 r10 r14 carry;
(* mulx   0x8(%rsi),%r15,%r14                      #! EA = L0x7fffffffd388; Value = 0xf24f79869016974f; PC = 0x5555555657db *)
mull r14 r15 L0x7fffffffd388 rdx;
(* adox   %r15,%r10                                #! PC = 0x5555555657e1 *)
adcs overflow r10 r10 r15 overflow;
(* adcx   %r14,%rbx                                #! PC = 0x5555555657e7 *)
adcs carry rbx rbx r14 carry;
(* mulx   0x10(%rsi),%r14,%r8                      #! EA = L0x7fffffffd390; Value = 0xab34d407e289943b; PC = 0x5555555657ed *)
mull r8 r14 L0x7fffffffd390 rdx;
(* adox   %r14,%rbx                                #! PC = 0x5555555657f3 *)
adcs overflow rbx rbx r14 overflow;
(* adcx   %r9,%r8                                  #! PC = 0x5555555657f9 *)
adcs carry r8 r8 r9 carry;
(* mulx   0x18(%rsi),%r15,%r9                      #! EA = L0x7fffffffd398; Value = 0x435f8cf539ba90ab; PC = 0x5555555657ff *)
mull r9 r15 L0x7fffffffd398 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555565805 *)
adcs carry r9 r9 rbp carry;
(* mulx   0x20(%rsi),%r14,%rbp                     #! EA = L0x7fffffffd3a0; Value = 0xb18de646f1046933; PC = 0x55555556580b *)
mull rbp r14 L0x7fffffffd3a0 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555565811 *)
adcs carry r11 r11 rbp carry;
(* mulx   0x28(%rsi),%rdx,%rbp                     #! EA = L0x7fffffffd3a8; Value = 0x83169bdf58b95b8d; PC = 0x555555565817 *)
mull rbp rdx L0x7fffffffd3a8 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x55555556581d *)
adcs carry rbp rbp rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r8                                 #! PC = 0x555555565823 *)
adcs overflow r8 r8 r15 overflow;
(* adox   %r14,%r9                                 #! PC = 0x555555565829 *)
adcs overflow r9 r9 r14 overflow;
(* adox   %rdx,%r11                                #! PC = 0x55555556582f *)
adcs overflow r11 r11 rdx overflow;
(* adox   %rax,%rbp                                #! PC = 0x555555565835 *)
adcs overflow rbp rbp rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x10(%rdi),%rdx                          #! EA = L0x7fffffffd330; Value = 0x93ba059bb2772db9; PC = 0x55555556583b *)
mov rdx L0x7fffffffd330;
(* mulx   (%rsi),%r15,%r14                         #! EA = L0x7fffffffd380; Value = 0xc6a4b0e0c373c4a8; PC = 0x55555556583f *)
mull r14 r15 L0x7fffffffd380 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565844 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r10                                #! PC = 0x555555565847 *)
adcs carry r10 r10 r15 carry;
(* mov    %r10,0x10(%rcx)                          #! EA = L0x7fffffffd450; PC = 0x55555556584d *)
mov L0x7fffffffd450 r10;
(* adcx   %r14,%rbx                                #! PC = 0x555555565851 *)
adcs carry rbx rbx r14 carry;
(* mulx   0x8(%rsi),%r15,%r14                      #! EA = L0x7fffffffd388; Value = 0xf24f79869016974f; PC = 0x555555565857 *)
mull r14 r15 L0x7fffffffd388 rdx;
(* adox   %r15,%rbx                                #! PC = 0x55555556585d *)
adcs overflow rbx rbx r15 overflow;
(* adcx   %r14,%r8                                 #! PC = 0x555555565863 *)
adcs carry r8 r8 r14 carry;
(* mulx   0x10(%rsi),%r14,%r10                     #! EA = L0x7fffffffd390; Value = 0xab34d407e289943b; PC = 0x555555565869 *)
mull r10 r14 L0x7fffffffd390 rdx;
(* adox   %r14,%r8                                 #! PC = 0x55555556586f *)
adcs overflow r8 r8 r14 overflow;
(* adcx   %r10,%r9                                 #! PC = 0x555555565875 *)
adcs carry r9 r9 r10 carry;
(* mulx   0x18(%rsi),%r15,%r10                     #! EA = L0x7fffffffd398; Value = 0x435f8cf539ba90ab; PC = 0x55555556587b *)
mull r10 r15 L0x7fffffffd398 rdx;
(* adcx   %r10,%r11                                #! PC = 0x555555565881 *)
adcs carry r11 r11 r10 carry;
(* mulx   0x20(%rsi),%r14,%r10                     #! EA = L0x7fffffffd3a0; Value = 0xb18de646f1046933; PC = 0x555555565887 *)
mull r10 r14 L0x7fffffffd3a0 rdx;
(* adcx   %r10,%rbp                                #! PC = 0x55555556588d *)
adcs carry rbp rbp r10 carry;
(* mulx   0x28(%rsi),%rdx,%r10                     #! EA = L0x7fffffffd3a8; Value = 0x83169bdf58b95b8d; PC = 0x555555565893 *)
mull r10 rdx L0x7fffffffd3a8 rdx;
(* adcx   %rax,%r10                                #! PC = 0x555555565899 *)
adcs carry r10 r10 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r9                                 #! PC = 0x55555556589f *)
adcs overflow r9 r9 r15 overflow;
(* adox   %r14,%r11                                #! PC = 0x5555555658a5 *)
adcs overflow r11 r11 r14 overflow;
(* adox   %rdx,%rbp                                #! PC = 0x5555555658ab *)
adcs overflow rbp rbp rdx overflow;
(* adox   %rax,%r10                                #! PC = 0x5555555658b1 *)
adcs overflow r10 r10 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x18(%rdi),%rdx                          #! EA = L0x7fffffffd338; Value = 0xc89cd0f0a37be913; PC = 0x5555555658b7 *)
mov rdx L0x7fffffffd338;
(* mulx   (%rsi),%r15,%r14                         #! EA = L0x7fffffffd380; Value = 0xc6a4b0e0c373c4a8; PC = 0x5555555658bb *)
mull r14 r15 L0x7fffffffd380 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555658c0 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%rbx                                #! PC = 0x5555555658c3 *)
adcs carry rbx rbx r15 carry;
(* mov    %rbx,0x18(%rcx)                          #! EA = L0x7fffffffd458; PC = 0x5555555658c9 *)
mov L0x7fffffffd458 rbx;
(* adcx   %r14,%r8                                 #! PC = 0x5555555658cd *)
adcs carry r8 r8 r14 carry;
(* mulx   0x8(%rsi),%r15,%r14                      #! EA = L0x7fffffffd388; Value = 0xf24f79869016974f; PC = 0x5555555658d3 *)
mull r14 r15 L0x7fffffffd388 rdx;
(* adox   %r15,%r8                                 #! PC = 0x5555555658d9 *)
adcs overflow r8 r8 r15 overflow;
(* adcx   %r14,%r9                                 #! PC = 0x5555555658df *)
adcs carry r9 r9 r14 carry;
(* mulx   0x10(%rsi),%r14,%rbx                     #! EA = L0x7fffffffd390; Value = 0xab34d407e289943b; PC = 0x5555555658e5 *)
mull rbx r14 L0x7fffffffd390 rdx;
(* adox   %r14,%r9                                 #! PC = 0x5555555658eb *)
adcs overflow r9 r9 r14 overflow;
(* adcx   %rbx,%r11                                #! PC = 0x5555555658f1 *)
adcs carry r11 r11 rbx carry;
(* mulx   0x18(%rsi),%r15,%rbx                     #! EA = L0x7fffffffd398; Value = 0x435f8cf539ba90ab; PC = 0x5555555658f7 *)
mull rbx r15 L0x7fffffffd398 rdx;
(* adcx   %rbx,%rbp                                #! PC = 0x5555555658fd *)
adcs carry rbp rbp rbx carry;
(* mulx   0x20(%rsi),%r14,%rbx                     #! EA = L0x7fffffffd3a0; Value = 0xb18de646f1046933; PC = 0x555555565903 *)
mull rbx r14 L0x7fffffffd3a0 rdx;
(* adcx   %rbx,%r10                                #! PC = 0x555555565909 *)
adcs carry r10 r10 rbx carry;
(* mulx   0x28(%rsi),%rdx,%rbx                     #! EA = L0x7fffffffd3a8; Value = 0x83169bdf58b95b8d; PC = 0x55555556590f *)
mull rbx rdx L0x7fffffffd3a8 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555565915 *)
adcs carry rbx rbx rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r11                                #! PC = 0x55555556591b *)
adcs overflow r11 r11 r15 overflow;
(* adox   %r14,%rbp                                #! PC = 0x555555565921 *)
adcs overflow rbp rbp r14 overflow;
(* adox   %rdx,%r10                                #! PC = 0x555555565927 *)
adcs overflow r10 r10 rdx overflow;
(* adox   %rax,%rbx                                #! PC = 0x55555556592d *)
adcs overflow rbx rbx rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x20(%rdi),%rdx                          #! EA = L0x7fffffffd340; Value = 0x16d740275dbfb4f0; PC = 0x555555565933 *)
mov rdx L0x7fffffffd340;
(* mulx   (%rsi),%r15,%r14                         #! EA = L0x7fffffffd380; Value = 0xc6a4b0e0c373c4a8; PC = 0x555555565937 *)
mull r14 r15 L0x7fffffffd380 rdx;
(* xor    %rax,%rax                                #! PC = 0x55555556593c *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r8                                 #! PC = 0x55555556593f *)
adcs carry r8 r8 r15 carry;
(* mov    %r8,0x20(%rcx)                           #! EA = L0x7fffffffd460; PC = 0x555555565945 *)
mov L0x7fffffffd460 r8;
(* adcx   %r14,%r9                                 #! PC = 0x555555565949 *)
adcs carry r9 r9 r14 carry;
(* mulx   0x8(%rsi),%r15,%r14                      #! EA = L0x7fffffffd388; Value = 0xf24f79869016974f; PC = 0x55555556594f *)
mull r14 r15 L0x7fffffffd388 rdx;
(* adox   %r15,%r9                                 #! PC = 0x555555565955 *)
adcs overflow r9 r9 r15 overflow;
(* adcx   %r14,%r11                                #! PC = 0x55555556595b *)
adcs carry r11 r11 r14 carry;
(* mulx   0x10(%rsi),%r14,%r8                      #! EA = L0x7fffffffd390; Value = 0xab34d407e289943b; PC = 0x555555565961 *)
mull r8 r14 L0x7fffffffd390 rdx;
(* adox   %r14,%r11                                #! PC = 0x555555565967 *)
adcs overflow r11 r11 r14 overflow;
(* adcx   %r8,%rbp                                 #! PC = 0x55555556596d *)
adcs carry rbp rbp r8 carry;
(* mulx   0x18(%rsi),%r15,%r8                      #! EA = L0x7fffffffd398; Value = 0x435f8cf539ba90ab; PC = 0x555555565973 *)
mull r8 r15 L0x7fffffffd398 rdx;
(* adcx   %r8,%r10                                 #! PC = 0x555555565979 *)
adcs carry r10 r10 r8 carry;
(* mulx   0x20(%rsi),%r14,%r8                      #! EA = L0x7fffffffd3a0; Value = 0xb18de646f1046933; PC = 0x55555556597f *)
mull r8 r14 L0x7fffffffd3a0 rdx;
(* adcx   %r8,%rbx                                 #! PC = 0x555555565985 *)
adcs carry rbx rbx r8 carry;
(* mulx   0x28(%rsi),%rdx,%r8                      #! EA = L0x7fffffffd3a8; Value = 0x83169bdf58b95b8d; PC = 0x55555556598b *)
mull r8 rdx L0x7fffffffd3a8 rdx;
(* adcx   %rax,%r8                                 #! PC = 0x555555565991 *)
adcs carry r8 r8 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%rbp                                #! PC = 0x555555565997 *)
adcs overflow rbp rbp r15 overflow;
(* adox   %r14,%r10                                #! PC = 0x55555556599d *)
adcs overflow r10 r10 r14 overflow;
(* adox   %rdx,%rbx                                #! PC = 0x5555555659a3 *)
adcs overflow rbx rbx rdx overflow;
(* adox   %rax,%r8                                 #! PC = 0x5555555659a9 *)
adcs overflow r8 r8 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x28(%rdi),%rdx                          #! EA = L0x7fffffffd348; Value = 0x9d3ff54414c2e24d; PC = 0x5555555659af *)
mov rdx L0x7fffffffd348;
(* mulx   (%rsi),%r15,%r14                         #! EA = L0x7fffffffd380; Value = 0xc6a4b0e0c373c4a8; PC = 0x5555555659b3 *)
mull r14 r15 L0x7fffffffd380 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555659b8 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r9                                 #! PC = 0x5555555659bb *)
adcs carry r9 r9 r15 carry;
(* mov    %r9,0x28(%rcx)                           #! EA = L0x7fffffffd468; PC = 0x5555555659c1 *)
mov L0x7fffffffd468 r9;
(* adcx   %r14,%r11                                #! PC = 0x5555555659c5 *)
adcs carry r11 r11 r14 carry;
(* mulx   0x8(%rsi),%r15,%r14                      #! EA = L0x7fffffffd388; Value = 0xf24f79869016974f; PC = 0x5555555659cb *)
mull r14 r15 L0x7fffffffd388 rdx;
(* adox   %r15,%r11                                #! PC = 0x5555555659d1 *)
adcs overflow r11 r11 r15 overflow;
(* adcx   %r14,%rbp                                #! PC = 0x5555555659d7 *)
adcs carry rbp rbp r14 carry;
(* mulx   0x10(%rsi),%r14,%r9                      #! EA = L0x7fffffffd390; Value = 0xab34d407e289943b; PC = 0x5555555659dd *)
mull r9 r14 L0x7fffffffd390 rdx;
(* adox   %r14,%rbp                                #! PC = 0x5555555659e3 *)
adcs overflow rbp rbp r14 overflow;
(* adcx   %r9,%r10                                 #! PC = 0x5555555659e9 *)
adcs carry r10 r10 r9 carry;
(* mulx   0x18(%rsi),%r15,%r9                      #! EA = L0x7fffffffd398; Value = 0x435f8cf539ba90ab; PC = 0x5555555659ef *)
mull r9 r15 L0x7fffffffd398 rdx;
(* adcx   %r9,%rbx                                 #! PC = 0x5555555659f5 *)
adcs carry rbx rbx r9 carry;
(* mulx   0x20(%rsi),%r14,%r9                      #! EA = L0x7fffffffd3a0; Value = 0xb18de646f1046933; PC = 0x5555555659fb *)
mull r9 r14 L0x7fffffffd3a0 rdx;
(* adcx   %r9,%r8                                  #! PC = 0x555555565a01 *)
adcs carry r8 r8 r9 carry;
(* mulx   0x28(%rsi),%rdx,%r9                      #! EA = L0x7fffffffd3a8; Value = 0x83169bdf58b95b8d; PC = 0x555555565a07 *)
mull r9 rdx L0x7fffffffd3a8 rdx;
(* adcx   %rax,%r9                                 #! PC = 0x555555565a0d *)
adcs carry r9 r9 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r10                                #! PC = 0x555555565a13 *)
adcs overflow r10 r10 r15 overflow;
(* adox   %r14,%rbx                                #! PC = 0x555555565a19 *)
adcs overflow rbx rbx r14 overflow;
(* adox   %rdx,%r8                                 #! PC = 0x555555565a1f *)
adcs overflow r8 r8 rdx overflow;
(* adox   %rax,%r9                                 #! PC = 0x555555565a25 *)
adcs overflow r9 r9 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    %r11,0x30(%rcx)                          #! EA = L0x7fffffffd470; PC = 0x555555565a2b *)
mov L0x7fffffffd470 r11;
(* mov    %rbp,0x38(%rcx)                          #! EA = L0x7fffffffd478; PC = 0x555555565a2f *)
mov L0x7fffffffd478 rbp;
(* mov    %r10,0x40(%rcx)                          #! EA = L0x7fffffffd480; PC = 0x555555565a33 *)
mov L0x7fffffffd480 r10;
(* mov    %rbx,0x48(%rcx)                          #! EA = L0x7fffffffd488; PC = 0x555555565a37 *)
mov L0x7fffffffd488 rbx;
(* mov    %r8,0x50(%rcx)                           #! EA = L0x7fffffffd490; PC = 0x555555565a3b *)
mov L0x7fffffffd490 r8;
(* mov    %r9,0x58(%rcx)                           #! EA = L0x7fffffffd498; PC = 0x555555565a3f *)
mov L0x7fffffffd498 r9;
(* mov    (%rsp),%rdx                              #! EA = L0x7fffffffd250; Value = 0xa9bb3b40885f37b1; PC = 0x555555565a43 *)
mov rdx L0x7fffffffd250;
(* mulx   0x30(%rsp),%r9,%r8                       #! EA = L0x7fffffffd280; Value = 0xa4b97953b2e14165; PC = 0x555555565a47 *)
mull r8 r9 L0x7fffffffd280 rdx;
(* mulx   0x38(%rsp),%r11,%r10                     #! EA = L0x7fffffffd288; Value = 0xc52336742cbadd8e; PC = 0x555555565a4e *)
mull r10 r11 L0x7fffffffd288 rdx;
(* mov    %r9,0x60(%rcx)                           #! EA = L0x7fffffffd4a0; PC = 0x555555565a55 *)
mov L0x7fffffffd4a0 r9;
(* xor    %rax,%rax                                #! PC = 0x555555565a59 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rsp),%rbp,%rbx                     #! EA = L0x7fffffffd290; Value = 0x2451e138b52dc9f3; PC = 0x555555565a5c *)
mull rbx rbp L0x7fffffffd290 rdx;
(* adox   %r11,%r8                                 #! PC = 0x555555565a63 *)
adcs overflow r8 r8 r11 overflow;
(* adox   %rbp,%r10                                #! PC = 0x555555565a69 *)
adcs overflow r10 r10 rbp overflow;
(* mulx   0x48(%rsp),%r11,%r9                      #! EA = L0x7fffffffd298; Value = 0x3b3c5093606fb8e2; PC = 0x555555565a6f *)
mull r9 r11 L0x7fffffffd298 rdx;
(* adox   %r11,%rbx                                #! PC = 0x555555565a76 *)
adcs overflow rbx rbx r11 overflow;
(* mulx   0x50(%rsp),%r14,%rbp                     #! EA = L0x7fffffffd2a0; Value = 0x5561456b3481c64e; PC = 0x555555565a7c *)
mull rbp r14 L0x7fffffffd2a0 rdx;
(* adox   %r14,%r9                                 #! PC = 0x555555565a83 *)
adcs overflow r9 r9 r14 overflow;
(* mulx   0x58(%rsp),%r15,%r11                     #! EA = L0x7fffffffd2a8; Value = 0x831822a30a233c1e; PC = 0x555555565a89 *)
mull r11 r15 L0x7fffffffd2a8 rdx;
(* adox   %r15,%rbp                                #! PC = 0x555555565a90 *)
adcs overflow rbp rbp r15 overflow;
(* adox   %rax,%r11                                #! PC = 0x555555565a96 *)
adcs overflow r11 r11 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x8(%rsp),%rdx                           #! EA = L0x7fffffffd258; Value = 0x5f2d4f67257fd720; PC = 0x555555565a9c *)
mov rdx L0x7fffffffd258;
(* mulx   0x30(%rsp),%r15,%r14                     #! EA = L0x7fffffffd280; Value = 0xa4b97953b2e14165; PC = 0x555555565aa1 *)
mull r14 r15 L0x7fffffffd280 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565aa8 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r8                                 #! PC = 0x555555565aab *)
adcs carry r8 r8 r15 carry;
(* mov    %r8,0x68(%rcx)                           #! EA = L0x7fffffffd4a8; PC = 0x555555565ab1 *)
mov L0x7fffffffd4a8 r8;
(* adcx   %r14,%r10                                #! PC = 0x555555565ab5 *)
adcs carry r10 r10 r14 carry;
(* mulx   0x38(%rsp),%r15,%r14                     #! EA = L0x7fffffffd288; Value = 0xc52336742cbadd8e; PC = 0x555555565abb *)
mull r14 r15 L0x7fffffffd288 rdx;
(* adox   %r15,%r10                                #! PC = 0x555555565ac2 *)
adcs overflow r10 r10 r15 overflow;
(* adcx   %r14,%rbx                                #! PC = 0x555555565ac8 *)
adcs carry rbx rbx r14 carry;
(* mulx   0x40(%rsp),%r14,%r8                      #! EA = L0x7fffffffd290; Value = 0x2451e138b52dc9f3; PC = 0x555555565ace *)
mull r8 r14 L0x7fffffffd290 rdx;
(* adox   %r14,%rbx                                #! PC = 0x555555565ad5 *)
adcs overflow rbx rbx r14 overflow;
(* adcx   %r9,%r8                                  #! PC = 0x555555565adb *)
adcs carry r8 r8 r9 carry;
(* mulx   0x48(%rsp),%r15,%r9                      #! EA = L0x7fffffffd298; Value = 0x3b3c5093606fb8e2; PC = 0x555555565ae1 *)
mull r9 r15 L0x7fffffffd298 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555565ae8 *)
adcs carry r9 r9 rbp carry;
(* mulx   0x50(%rsp),%r14,%rbp                     #! EA = L0x7fffffffd2a0; Value = 0x5561456b3481c64e; PC = 0x555555565aee *)
mull rbp r14 L0x7fffffffd2a0 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555565af5 *)
adcs carry r11 r11 rbp carry;
(* mulx   0x58(%rsp),%rdx,%rbp                     #! EA = L0x7fffffffd2a8; Value = 0x831822a30a233c1e; PC = 0x555555565afb *)
mull rbp rdx L0x7fffffffd2a8 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555565b02 *)
adcs carry rbp rbp rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r8                                 #! PC = 0x555555565b08 *)
adcs overflow r8 r8 r15 overflow;
(* adox   %r14,%r9                                 #! PC = 0x555555565b0e *)
adcs overflow r9 r9 r14 overflow;
(* adox   %rdx,%r11                                #! PC = 0x555555565b14 *)
adcs overflow r11 r11 rdx overflow;
(* adox   %rax,%rbp                                #! PC = 0x555555565b1a *)
adcs overflow rbp rbp rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x10(%rsp),%rdx                          #! EA = L0x7fffffffd260; Value = 0x1d2a31b4a2b7bf3b; PC = 0x555555565b20 *)
mov rdx L0x7fffffffd260;
(* mulx   0x30(%rsp),%r15,%r14                     #! EA = L0x7fffffffd280; Value = 0xa4b97953b2e14165; PC = 0x555555565b25 *)
mull r14 r15 L0x7fffffffd280 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565b2c *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r10                                #! PC = 0x555555565b2f *)
adcs carry r10 r10 r15 carry;
(* mov    %r10,0x70(%rcx)                          #! EA = L0x7fffffffd4b0; PC = 0x555555565b35 *)
mov L0x7fffffffd4b0 r10;
(* adcx   %r14,%rbx                                #! PC = 0x555555565b39 *)
adcs carry rbx rbx r14 carry;
(* mulx   0x38(%rsp),%r15,%r14                     #! EA = L0x7fffffffd288; Value = 0xc52336742cbadd8e; PC = 0x555555565b3f *)
mull r14 r15 L0x7fffffffd288 rdx;
(* adox   %r15,%rbx                                #! PC = 0x555555565b46 *)
adcs overflow rbx rbx r15 overflow;
(* adcx   %r14,%r8                                 #! PC = 0x555555565b4c *)
adcs carry r8 r8 r14 carry;
(* mulx   0x40(%rsp),%r14,%r10                     #! EA = L0x7fffffffd290; Value = 0x2451e138b52dc9f3; PC = 0x555555565b52 *)
mull r10 r14 L0x7fffffffd290 rdx;
(* adox   %r14,%r8                                 #! PC = 0x555555565b59 *)
adcs overflow r8 r8 r14 overflow;
(* adcx   %r10,%r9                                 #! PC = 0x555555565b5f *)
adcs carry r9 r9 r10 carry;
(* mulx   0x48(%rsp),%r15,%r10                     #! EA = L0x7fffffffd298; Value = 0x3b3c5093606fb8e2; PC = 0x555555565b65 *)
mull r10 r15 L0x7fffffffd298 rdx;
(* adcx   %r10,%r11                                #! PC = 0x555555565b6c *)
adcs carry r11 r11 r10 carry;
(* mulx   0x50(%rsp),%r14,%r10                     #! EA = L0x7fffffffd2a0; Value = 0x5561456b3481c64e; PC = 0x555555565b72 *)
mull r10 r14 L0x7fffffffd2a0 rdx;
(* adcx   %r10,%rbp                                #! PC = 0x555555565b79 *)
adcs carry rbp rbp r10 carry;
(* mulx   0x58(%rsp),%rdx,%r10                     #! EA = L0x7fffffffd2a8; Value = 0x831822a30a233c1e; PC = 0x555555565b7f *)
mull r10 rdx L0x7fffffffd2a8 rdx;
(* adcx   %rax,%r10                                #! PC = 0x555555565b86 *)
adcs carry r10 r10 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r9                                 #! PC = 0x555555565b8c *)
adcs overflow r9 r9 r15 overflow;
(* adox   %r14,%r11                                #! PC = 0x555555565b92 *)
adcs overflow r11 r11 r14 overflow;
(* adox   %rdx,%rbp                                #! PC = 0x555555565b98 *)
adcs overflow rbp rbp rdx overflow;
(* adox   %rax,%r10                                #! PC = 0x555555565b9e *)
adcs overflow r10 r10 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x18(%rsp),%rdx                          #! EA = L0x7fffffffd268; Value = 0xba5e067fe8a5ac54; PC = 0x555555565ba4 *)
mov rdx L0x7fffffffd268;
(* mulx   0x30(%rsp),%r15,%r14                     #! EA = L0x7fffffffd280; Value = 0xa4b97953b2e14165; PC = 0x555555565ba9 *)
mull r14 r15 L0x7fffffffd280 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565bb0 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%rbx                                #! PC = 0x555555565bb3 *)
adcs carry rbx rbx r15 carry;
(* mov    %rbx,0x78(%rcx)                          #! EA = L0x7fffffffd4b8; PC = 0x555555565bb9 *)
mov L0x7fffffffd4b8 rbx;
(* adcx   %r14,%r8                                 #! PC = 0x555555565bbd *)
adcs carry r8 r8 r14 carry;
(* mulx   0x38(%rsp),%r15,%r14                     #! EA = L0x7fffffffd288; Value = 0xc52336742cbadd8e; PC = 0x555555565bc3 *)
mull r14 r15 L0x7fffffffd288 rdx;
(* adox   %r15,%r8                                 #! PC = 0x555555565bca *)
adcs overflow r8 r8 r15 overflow;
(* adcx   %r14,%r9                                 #! PC = 0x555555565bd0 *)
adcs carry r9 r9 r14 carry;
(* mulx   0x40(%rsp),%r14,%rbx                     #! EA = L0x7fffffffd290; Value = 0x2451e138b52dc9f3; PC = 0x555555565bd6 *)
mull rbx r14 L0x7fffffffd290 rdx;
(* adox   %r14,%r9                                 #! PC = 0x555555565bdd *)
adcs overflow r9 r9 r14 overflow;
(* adcx   %rbx,%r11                                #! PC = 0x555555565be3 *)
adcs carry r11 r11 rbx carry;
(* mulx   0x48(%rsp),%r15,%rbx                     #! EA = L0x7fffffffd298; Value = 0x3b3c5093606fb8e2; PC = 0x555555565be9 *)
mull rbx r15 L0x7fffffffd298 rdx;
(* adcx   %rbx,%rbp                                #! PC = 0x555555565bf0 *)
adcs carry rbp rbp rbx carry;
(* mulx   0x50(%rsp),%r14,%rbx                     #! EA = L0x7fffffffd2a0; Value = 0x5561456b3481c64e; PC = 0x555555565bf6 *)
mull rbx r14 L0x7fffffffd2a0 rdx;
(* adcx   %rbx,%r10                                #! PC = 0x555555565bfd *)
adcs carry r10 r10 rbx carry;
(* mulx   0x58(%rsp),%rdx,%rbx                     #! EA = L0x7fffffffd2a8; Value = 0x831822a30a233c1e; PC = 0x555555565c03 *)
mull rbx rdx L0x7fffffffd2a8 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555565c0a *)
adcs carry rbx rbx rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r11                                #! PC = 0x555555565c10 *)
adcs overflow r11 r11 r15 overflow;
(* adox   %r14,%rbp                                #! PC = 0x555555565c16 *)
adcs overflow rbp rbp r14 overflow;
(* adox   %rdx,%r10                                #! PC = 0x555555565c1c *)
adcs overflow r10 r10 rdx overflow;
(* adox   %rax,%rbx                                #! PC = 0x555555565c22 *)
adcs overflow rbx rbx rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x20(%rsp),%rdx                          #! EA = L0x7fffffffd270; Value = 0x604a3c1a4734ee7c; PC = 0x555555565c28 *)
mov rdx L0x7fffffffd270;
(* mulx   0x30(%rsp),%r15,%r14                     #! EA = L0x7fffffffd280; Value = 0xa4b97953b2e14165; PC = 0x555555565c2d *)
mull r14 r15 L0x7fffffffd280 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565c34 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r8                                 #! PC = 0x555555565c37 *)
adcs carry r8 r8 r15 carry;
(* mov    %r8,0x80(%rcx)                           #! EA = L0x7fffffffd4c0; PC = 0x555555565c3d *)
mov L0x7fffffffd4c0 r8;
(* adcx   %r14,%r9                                 #! PC = 0x555555565c44 *)
adcs carry r9 r9 r14 carry;
(* mulx   0x38(%rsp),%r15,%r14                     #! EA = L0x7fffffffd288; Value = 0xc52336742cbadd8e; PC = 0x555555565c4a *)
mull r14 r15 L0x7fffffffd288 rdx;
(* adox   %r15,%r9                                 #! PC = 0x555555565c51 *)
adcs overflow r9 r9 r15 overflow;
(* adcx   %r14,%r11                                #! PC = 0x555555565c57 *)
adcs carry r11 r11 r14 carry;
(* mulx   0x40(%rsp),%r14,%r8                      #! EA = L0x7fffffffd290; Value = 0x2451e138b52dc9f3; PC = 0x555555565c5d *)
mull r8 r14 L0x7fffffffd290 rdx;
(* adox   %r14,%r11                                #! PC = 0x555555565c64 *)
adcs overflow r11 r11 r14 overflow;
(* adcx   %r8,%rbp                                 #! PC = 0x555555565c6a *)
adcs carry rbp rbp r8 carry;
(* mulx   0x48(%rsp),%r15,%r8                      #! EA = L0x7fffffffd298; Value = 0x3b3c5093606fb8e2; PC = 0x555555565c70 *)
mull r8 r15 L0x7fffffffd298 rdx;
(* adcx   %r8,%r10                                 #! PC = 0x555555565c77 *)
adcs carry r10 r10 r8 carry;
(* mulx   0x50(%rsp),%r14,%r8                      #! EA = L0x7fffffffd2a0; Value = 0x5561456b3481c64e; PC = 0x555555565c7d *)
mull r8 r14 L0x7fffffffd2a0 rdx;
(* adcx   %r8,%rbx                                 #! PC = 0x555555565c84 *)
adcs carry rbx rbx r8 carry;
(* mulx   0x58(%rsp),%rdx,%r8                      #! EA = L0x7fffffffd2a8; Value = 0x831822a30a233c1e; PC = 0x555555565c8a *)
mull r8 rdx L0x7fffffffd2a8 rdx;
(* adcx   %rax,%r8                                 #! PC = 0x555555565c91 *)
adcs carry r8 r8 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%rbp                                #! PC = 0x555555565c97 *)
adcs overflow rbp rbp r15 overflow;
(* adox   %r14,%r10                                #! PC = 0x555555565c9d *)
adcs overflow r10 r10 r14 overflow;
(* adox   %rdx,%rbx                                #! PC = 0x555555565ca3 *)
adcs overflow rbx rbx rdx overflow;
(* adox   %rax,%r8                                 #! PC = 0x555555565ca9 *)
adcs overflow r8 r8 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x28(%rsp),%rdx                          #! EA = L0x7fffffffd278; Value = 0x9d4092abdd192fc6; PC = 0x555555565caf *)
mov rdx L0x7fffffffd278;
(* mulx   0x30(%rsp),%r15,%r14                     #! EA = L0x7fffffffd280; Value = 0xa4b97953b2e14165; PC = 0x555555565cb4 *)
mull r14 r15 L0x7fffffffd280 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565cbb *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r9                                 #! PC = 0x555555565cbe *)
adcs carry r9 r9 r15 carry;
(* mov    %r9,0x88(%rcx)                           #! EA = L0x7fffffffd4c8; PC = 0x555555565cc4 *)
mov L0x7fffffffd4c8 r9;
(* adcx   %r14,%r11                                #! PC = 0x555555565ccb *)
adcs carry r11 r11 r14 carry;
(* mulx   0x38(%rsp),%r15,%r14                     #! EA = L0x7fffffffd288; Value = 0xc52336742cbadd8e; PC = 0x555555565cd1 *)
mull r14 r15 L0x7fffffffd288 rdx;
(* adox   %r15,%r11                                #! PC = 0x555555565cd8 *)
adcs overflow r11 r11 r15 overflow;
(* adcx   %r14,%rbp                                #! PC = 0x555555565cde *)
adcs carry rbp rbp r14 carry;
(* mulx   0x40(%rsp),%r14,%r9                      #! EA = L0x7fffffffd290; Value = 0x2451e138b52dc9f3; PC = 0x555555565ce4 *)
mull r9 r14 L0x7fffffffd290 rdx;
(* adox   %r14,%rbp                                #! PC = 0x555555565ceb *)
adcs overflow rbp rbp r14 overflow;
(* adcx   %r9,%r10                                 #! PC = 0x555555565cf1 *)
adcs carry r10 r10 r9 carry;
(* mulx   0x48(%rsp),%r15,%r9                      #! EA = L0x7fffffffd298; Value = 0x3b3c5093606fb8e2; PC = 0x555555565cf7 *)
mull r9 r15 L0x7fffffffd298 rdx;
(* adcx   %r9,%rbx                                 #! PC = 0x555555565cfe *)
adcs carry rbx rbx r9 carry;
(* mulx   0x50(%rsp),%r14,%r9                      #! EA = L0x7fffffffd2a0; Value = 0x5561456b3481c64e; PC = 0x555555565d04 *)
mull r9 r14 L0x7fffffffd2a0 rdx;
(* adcx   %r9,%r8                                  #! PC = 0x555555565d0b *)
adcs carry r8 r8 r9 carry;
(* mulx   0x58(%rsp),%rdx,%r9                      #! EA = L0x7fffffffd2a8; Value = 0x831822a30a233c1e; PC = 0x555555565d11 *)
mull r9 rdx L0x7fffffffd2a8 rdx;
(* adcx   %rax,%r9                                 #! PC = 0x555555565d18 *)
adcs carry r9 r9 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r10                                #! PC = 0x555555565d1e *)
adcs overflow r10 r10 r15 overflow;
(* adox   %r14,%rbx                                #! PC = 0x555555565d24 *)
adcs overflow rbx rbx r14 overflow;
(* adox   %rdx,%r8                                 #! PC = 0x555555565d2a *)
adcs overflow r8 r8 rdx overflow;
(* adox   %rax,%r9                                 #! PC = 0x555555565d30 *)
adcs overflow r9 r9 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    %r11,0x90(%rcx)                          #! EA = L0x7fffffffd4d0; PC = 0x555555565d36 *)
mov L0x7fffffffd4d0 r11;
(* mov    %rbp,0x98(%rcx)                          #! EA = L0x7fffffffd4d8; PC = 0x555555565d3d *)
mov L0x7fffffffd4d8 rbp;
(* mov    %r10,0xa0(%rcx)                          #! EA = L0x7fffffffd4e0; PC = 0x555555565d44 *)
mov L0x7fffffffd4e0 r10;
(* mov    %rbx,0xa8(%rcx)                          #! EA = L0x7fffffffd4e8; PC = 0x555555565d4b *)
mov L0x7fffffffd4e8 rbx;
(* mov    %r8,0xb0(%rcx)                           #! EA = L0x7fffffffd4f0; PC = 0x555555565d52 *)
mov L0x7fffffffd4f0 r8;
(* mov    %r9,0xb8(%rcx)                           #! EA = L0x7fffffffd4f8; PC = 0x555555565d59 *)
mov L0x7fffffffd4f8 r9;
(* mov    0x30(%rdi),%rdx                          #! EA = L0x7fffffffd350; Value = 0x901438a97466bf37; PC = 0x555555565d60 *)
mov rdx L0x7fffffffd350;
(* mulx   0x30(%rsi),%r9,%r8                       #! EA = L0x7fffffffd3b0; Value = 0xde14c872ef6d7cbd; PC = 0x555555565d64 *)
mull r8 r9 L0x7fffffffd3b0 rdx;
(* mulx   0x38(%rsi),%r11,%r10                     #! EA = L0x7fffffffd3b8; Value = 0xd2d3bced9ca4463e; PC = 0x555555565d6a *)
mull r10 r11 L0x7fffffffd3b8 rdx;
(* mov    %r9,(%rsp)                               #! EA = L0x7fffffffd250; PC = 0x555555565d70 *)
mov L0x7fffffffd250 r9;
(* xor    %rax,%rax                                #! PC = 0x555555565d74 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd3c0; Value = 0x791d0d30d2a435b7; PC = 0x555555565d77 *)
mull rbx rbp L0x7fffffffd3c0 rdx;
(* adox   %r11,%r8                                 #! PC = 0x555555565d7d *)
adcs overflow r8 r8 r11 overflow;
(* adox   %rbp,%r10                                #! PC = 0x555555565d83 *)
adcs overflow r10 r10 rbp overflow;
(* mulx   0x48(%rsi),%r11,%r9                      #! EA = L0x7fffffffd3c8; Value = 0xf7dcc39e26b52836; PC = 0x555555565d89 *)
mull r9 r11 L0x7fffffffd3c8 rdx;
(* adox   %r11,%rbx                                #! PC = 0x555555565d8f *)
adcs overflow rbx rbx r11 overflow;
(* mulx   0x50(%rsi),%r14,%rbp                     #! EA = L0x7fffffffd3d0; Value = 0xa3d35f24437d5d1a; PC = 0x555555565d95 *)
mull rbp r14 L0x7fffffffd3d0 rdx;
(* adox   %r14,%r9                                 #! PC = 0x555555565d9b *)
adcs overflow r9 r9 r14 overflow;
(* mulx   0x58(%rsi),%r15,%r11                     #! EA = L0x7fffffffd3d8; Value = 0x000186c3b169e090; PC = 0x555555565da1 *)
mull r11 r15 L0x7fffffffd3d8 rdx;
(* adox   %r15,%rbp                                #! PC = 0x555555565da7 *)
adcs overflow rbp rbp r15 overflow;
(* adox   %rax,%r11                                #! PC = 0x555555565dad *)
adcs overflow r11 r11 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x38(%rdi),%rdx                          #! EA = L0x7fffffffd358; Value = 0xd9290de6d44d21c5; PC = 0x555555565db3 *)
mov rdx L0x7fffffffd358;
(* mulx   0x30(%rsi),%r15,%r14                     #! EA = L0x7fffffffd3b0; Value = 0xde14c872ef6d7cbd; PC = 0x555555565db7 *)
mull r14 r15 L0x7fffffffd3b0 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565dbd *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r8                                 #! PC = 0x555555565dc0 *)
adcs carry r8 r8 r15 carry;
(* mov    %r8,0x8(%rsp)                            #! EA = L0x7fffffffd258; PC = 0x555555565dc6 *)
mov L0x7fffffffd258 r8;
(* adcx   %r14,%r10                                #! PC = 0x555555565dcb *)
adcs carry r10 r10 r14 carry;
(* mulx   0x38(%rsi),%r15,%r14                     #! EA = L0x7fffffffd3b8; Value = 0xd2d3bced9ca4463e; PC = 0x555555565dd1 *)
mull r14 r15 L0x7fffffffd3b8 rdx;
(* adox   %r15,%r10                                #! PC = 0x555555565dd7 *)
adcs overflow r10 r10 r15 overflow;
(* adcx   %r14,%rbx                                #! PC = 0x555555565ddd *)
adcs carry rbx rbx r14 carry;
(* mulx   0x40(%rsi),%r14,%r8                      #! EA = L0x7fffffffd3c0; Value = 0x791d0d30d2a435b7; PC = 0x555555565de3 *)
mull r8 r14 L0x7fffffffd3c0 rdx;
(* adox   %r14,%rbx                                #! PC = 0x555555565de9 *)
adcs overflow rbx rbx r14 overflow;
(* adcx   %r9,%r8                                  #! PC = 0x555555565def *)
adcs carry r8 r8 r9 carry;
(* mulx   0x48(%rsi),%r15,%r9                      #! EA = L0x7fffffffd3c8; Value = 0xf7dcc39e26b52836; PC = 0x555555565df5 *)
mull r9 r15 L0x7fffffffd3c8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555565dfb *)
adcs carry r9 r9 rbp carry;
(* mulx   0x50(%rsi),%r14,%rbp                     #! EA = L0x7fffffffd3d0; Value = 0xa3d35f24437d5d1a; PC = 0x555555565e01 *)
mull rbp r14 L0x7fffffffd3d0 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555565e07 *)
adcs carry r11 r11 rbp carry;
(* mulx   0x58(%rsi),%rdx,%rbp                     #! EA = L0x7fffffffd3d8; Value = 0x000186c3b169e090; PC = 0x555555565e0d *)
mull rbp rdx L0x7fffffffd3d8 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555565e13 *)
adcs carry rbp rbp rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r8                                 #! PC = 0x555555565e19 *)
adcs overflow r8 r8 r15 overflow;
(* adox   %r14,%r9                                 #! PC = 0x555555565e1f *)
adcs overflow r9 r9 r14 overflow;
(* adox   %rdx,%r11                                #! PC = 0x555555565e25 *)
adcs overflow r11 r11 rdx overflow;
(* adox   %rax,%rbp                                #! PC = 0x555555565e2b *)
adcs overflow rbp rbp rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x40(%rdi),%rdx                          #! EA = L0x7fffffffd360; Value = 0x89702c18f0409181; PC = 0x555555565e31 *)
mov rdx L0x7fffffffd360;
(* mulx   0x30(%rsi),%r15,%r14                     #! EA = L0x7fffffffd3b0; Value = 0xde14c872ef6d7cbd; PC = 0x555555565e35 *)
mull r14 r15 L0x7fffffffd3b0 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565e3b *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r10                                #! PC = 0x555555565e3e *)
adcs carry r10 r10 r15 carry;
(* mov    %r10,0x10(%rsp)                          #! EA = L0x7fffffffd260; PC = 0x555555565e44 *)
mov L0x7fffffffd260 r10;
(* adcx   %r14,%rbx                                #! PC = 0x555555565e49 *)
adcs carry rbx rbx r14 carry;
(* mulx   0x38(%rsi),%r15,%r14                     #! EA = L0x7fffffffd3b8; Value = 0xd2d3bced9ca4463e; PC = 0x555555565e4f *)
mull r14 r15 L0x7fffffffd3b8 rdx;
(* adox   %r15,%rbx                                #! PC = 0x555555565e55 *)
adcs overflow rbx rbx r15 overflow;
(* adcx   %r14,%r8                                 #! PC = 0x555555565e5b *)
adcs carry r8 r8 r14 carry;
(* mulx   0x40(%rsi),%r14,%r10                     #! EA = L0x7fffffffd3c0; Value = 0x791d0d30d2a435b7; PC = 0x555555565e61 *)
mull r10 r14 L0x7fffffffd3c0 rdx;
(* adox   %r14,%r8                                 #! PC = 0x555555565e67 *)
adcs overflow r8 r8 r14 overflow;
(* adcx   %r10,%r9                                 #! PC = 0x555555565e6d *)
adcs carry r9 r9 r10 carry;
(* mulx   0x48(%rsi),%r15,%r10                     #! EA = L0x7fffffffd3c8; Value = 0xf7dcc39e26b52836; PC = 0x555555565e73 *)
mull r10 r15 L0x7fffffffd3c8 rdx;
(* adcx   %r10,%r11                                #! PC = 0x555555565e79 *)
adcs carry r11 r11 r10 carry;
(* mulx   0x50(%rsi),%r14,%r10                     #! EA = L0x7fffffffd3d0; Value = 0xa3d35f24437d5d1a; PC = 0x555555565e7f *)
mull r10 r14 L0x7fffffffd3d0 rdx;
(* adcx   %r10,%rbp                                #! PC = 0x555555565e85 *)
adcs carry rbp rbp r10 carry;
(* mulx   0x58(%rsi),%rdx,%r10                     #! EA = L0x7fffffffd3d8; Value = 0x000186c3b169e090; PC = 0x555555565e8b *)
mull r10 rdx L0x7fffffffd3d8 rdx;
(* adcx   %rax,%r10                                #! PC = 0x555555565e91 *)
adcs carry r10 r10 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r9                                 #! PC = 0x555555565e97 *)
adcs overflow r9 r9 r15 overflow;
(* adox   %r14,%r11                                #! PC = 0x555555565e9d *)
adcs overflow r11 r11 r14 overflow;
(* adox   %rdx,%rbp                                #! PC = 0x555555565ea3 *)
adcs overflow rbp rbp rdx overflow;
(* adox   %rax,%r10                                #! PC = 0x555555565ea9 *)
adcs overflow r10 r10 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd368; Value = 0xf1c1358f4529c340; PC = 0x555555565eaf *)
mov rdx L0x7fffffffd368;
(* mulx   0x30(%rsi),%r15,%r14                     #! EA = L0x7fffffffd3b0; Value = 0xde14c872ef6d7cbd; PC = 0x555555565eb3 *)
mull r14 r15 L0x7fffffffd3b0 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565eb9 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%rbx                                #! PC = 0x555555565ebc *)
adcs carry rbx rbx r15 carry;
(* mov    %rbx,0x18(%rsp)                          #! EA = L0x7fffffffd268; PC = 0x555555565ec2 *)
mov L0x7fffffffd268 rbx;
(* adcx   %r14,%r8                                 #! PC = 0x555555565ec7 *)
adcs carry r8 r8 r14 carry;
(* mulx   0x38(%rsi),%r15,%r14                     #! EA = L0x7fffffffd3b8; Value = 0xd2d3bced9ca4463e; PC = 0x555555565ecd *)
mull r14 r15 L0x7fffffffd3b8 rdx;
(* adox   %r15,%r8                                 #! PC = 0x555555565ed3 *)
adcs overflow r8 r8 r15 overflow;
(* adcx   %r14,%r9                                 #! PC = 0x555555565ed9 *)
adcs carry r9 r9 r14 carry;
(* mulx   0x40(%rsi),%r14,%rbx                     #! EA = L0x7fffffffd3c0; Value = 0x791d0d30d2a435b7; PC = 0x555555565edf *)
mull rbx r14 L0x7fffffffd3c0 rdx;
(* adox   %r14,%r9                                 #! PC = 0x555555565ee5 *)
adcs overflow r9 r9 r14 overflow;
(* adcx   %rbx,%r11                                #! PC = 0x555555565eeb *)
adcs carry r11 r11 rbx carry;
(* mulx   0x48(%rsi),%r15,%rbx                     #! EA = L0x7fffffffd3c8; Value = 0xf7dcc39e26b52836; PC = 0x555555565ef1 *)
mull rbx r15 L0x7fffffffd3c8 rdx;
(* adcx   %rbx,%rbp                                #! PC = 0x555555565ef7 *)
adcs carry rbp rbp rbx carry;
(* mulx   0x50(%rsi),%r14,%rbx                     #! EA = L0x7fffffffd3d0; Value = 0xa3d35f24437d5d1a; PC = 0x555555565efd *)
mull rbx r14 L0x7fffffffd3d0 rdx;
(* adcx   %rbx,%r10                                #! PC = 0x555555565f03 *)
adcs carry r10 r10 rbx carry;
(* mulx   0x58(%rsi),%rdx,%rbx                     #! EA = L0x7fffffffd3d8; Value = 0x000186c3b169e090; PC = 0x555555565f09 *)
mull rbx rdx L0x7fffffffd3d8 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555565f0f *)
adcs carry rbx rbx rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r11                                #! PC = 0x555555565f15 *)
adcs overflow r11 r11 r15 overflow;
(* adox   %r14,%rbp                                #! PC = 0x555555565f1b *)
adcs overflow rbp rbp r14 overflow;
(* adox   %rdx,%r10                                #! PC = 0x555555565f21 *)
adcs overflow r10 r10 rdx overflow;
(* adox   %rax,%rbx                                #! PC = 0x555555565f27 *)
adcs overflow rbx rbx rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x50(%rdi),%rdx                          #! EA = L0x7fffffffd370; Value = 0x4972fbf2e975398b; PC = 0x555555565f2d *)
mov rdx L0x7fffffffd370;
(* mulx   0x30(%rsi),%r15,%r14                     #! EA = L0x7fffffffd3b0; Value = 0xde14c872ef6d7cbd; PC = 0x555555565f31 *)
mull r14 r15 L0x7fffffffd3b0 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565f37 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r8                                 #! PC = 0x555555565f3a *)
adcs carry r8 r8 r15 carry;
(* mov    %r8,0x20(%rsp)                           #! EA = L0x7fffffffd270; PC = 0x555555565f40 *)
mov L0x7fffffffd270 r8;
(* adcx   %r14,%r9                                 #! PC = 0x555555565f45 *)
adcs carry r9 r9 r14 carry;
(* mulx   0x38(%rsi),%r15,%r14                     #! EA = L0x7fffffffd3b8; Value = 0xd2d3bced9ca4463e; PC = 0x555555565f4b *)
mull r14 r15 L0x7fffffffd3b8 rdx;
(* adox   %r15,%r9                                 #! PC = 0x555555565f51 *)
adcs overflow r9 r9 r15 overflow;
(* adcx   %r14,%r11                                #! PC = 0x555555565f57 *)
adcs carry r11 r11 r14 carry;
(* mulx   0x40(%rsi),%r14,%r8                      #! EA = L0x7fffffffd3c0; Value = 0x791d0d30d2a435b7; PC = 0x555555565f5d *)
mull r8 r14 L0x7fffffffd3c0 rdx;
(* adox   %r14,%r11                                #! PC = 0x555555565f63 *)
adcs overflow r11 r11 r14 overflow;
(* adcx   %r8,%rbp                                 #! PC = 0x555555565f69 *)
adcs carry rbp rbp r8 carry;
(* mulx   0x48(%rsi),%r15,%r8                      #! EA = L0x7fffffffd3c8; Value = 0xf7dcc39e26b52836; PC = 0x555555565f6f *)
mull r8 r15 L0x7fffffffd3c8 rdx;
(* adcx   %r8,%r10                                 #! PC = 0x555555565f75 *)
adcs carry r10 r10 r8 carry;
(* mulx   0x50(%rsi),%r14,%r8                      #! EA = L0x7fffffffd3d0; Value = 0xa3d35f24437d5d1a; PC = 0x555555565f7b *)
mull r8 r14 L0x7fffffffd3d0 rdx;
(* adcx   %r8,%rbx                                 #! PC = 0x555555565f81 *)
adcs carry rbx rbx r8 carry;
(* mulx   0x58(%rsi),%rdx,%r8                      #! EA = L0x7fffffffd3d8; Value = 0x000186c3b169e090; PC = 0x555555565f87 *)
mull r8 rdx L0x7fffffffd3d8 rdx;
(* adcx   %rax,%r8                                 #! PC = 0x555555565f8d *)
adcs carry r8 r8 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%rbp                                #! PC = 0x555555565f93 *)
adcs overflow rbp rbp r15 overflow;
(* adox   %r14,%r10                                #! PC = 0x555555565f99 *)
adcs overflow r10 r10 r14 overflow;
(* adox   %rdx,%rbx                                #! PC = 0x555555565f9f *)
adcs overflow rbx rbx rdx overflow;
(* adox   %rax,%r8                                 #! PC = 0x555555565fa5 *)
adcs overflow r8 r8 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x58(%rdi),%rdx                          #! EA = L0x7fffffffd378; Value = 0x00009d67c8564d79; PC = 0x555555565fab *)
mov rdx L0x7fffffffd378;
(* mulx   0x30(%rsi),%r15,%r14                     #! EA = L0x7fffffffd3b0; Value = 0xde14c872ef6d7cbd; PC = 0x555555565faf *)
mull r14 r15 L0x7fffffffd3b0 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565fb5 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r9                                 #! PC = 0x555555565fb8 *)
adcs carry r9 r9 r15 carry;
(* mov    %r9,0x28(%rsp)                           #! EA = L0x7fffffffd278; PC = 0x555555565fbe *)
mov L0x7fffffffd278 r9;
(* adcx   %r14,%r11                                #! PC = 0x555555565fc3 *)
adcs carry r11 r11 r14 carry;
(* mulx   0x38(%rsi),%r15,%r14                     #! EA = L0x7fffffffd3b8; Value = 0xd2d3bced9ca4463e; PC = 0x555555565fc9 *)
mull r14 r15 L0x7fffffffd3b8 rdx;
(* adox   %r15,%r11                                #! PC = 0x555555565fcf *)
adcs overflow r11 r11 r15 overflow;
(* adcx   %r14,%rbp                                #! PC = 0x555555565fd5 *)
adcs carry rbp rbp r14 carry;
(* mulx   0x40(%rsi),%r14,%r9                      #! EA = L0x7fffffffd3c0; Value = 0x791d0d30d2a435b7; PC = 0x555555565fdb *)
mull r9 r14 L0x7fffffffd3c0 rdx;
(* adox   %r14,%rbp                                #! PC = 0x555555565fe1 *)
adcs overflow rbp rbp r14 overflow;
(* adcx   %r9,%r10                                 #! PC = 0x555555565fe7 *)
adcs carry r10 r10 r9 carry;
(* mulx   0x48(%rsi),%r15,%r9                      #! EA = L0x7fffffffd3c8; Value = 0xf7dcc39e26b52836; PC = 0x555555565fed *)
mull r9 r15 L0x7fffffffd3c8 rdx;
(* adcx   %r9,%rbx                                 #! PC = 0x555555565ff3 *)
adcs carry rbx rbx r9 carry;
(* mulx   0x50(%rsi),%r14,%r9                      #! EA = L0x7fffffffd3d0; Value = 0xa3d35f24437d5d1a; PC = 0x555555565ff9 *)
mull r9 r14 L0x7fffffffd3d0 rdx;
(* adcx   %r9,%r8                                  #! PC = 0x555555565fff *)
adcs carry r8 r8 r9 carry;
(* mulx   0x58(%rsi),%rdx,%r9                      #! EA = L0x7fffffffd3d8; Value = 0x000186c3b169e090; PC = 0x555555566005 *)
mull r9 rdx L0x7fffffffd3d8 rdx;
(* adcx   %rax,%r9                                 #! PC = 0x55555556600b *)
adcs carry r9 r9 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r10                                #! PC = 0x555555566011 *)
adcs overflow r10 r10 r15 overflow;
(* adox   %r14,%rbx                                #! PC = 0x555555566017 *)
adcs overflow rbx rbx r14 overflow;
(* adox   %rdx,%r8                                 #! PC = 0x55555556601d *)
adcs overflow r8 r8 rdx overflow;
(* adox   %rax,%r9                                 #! PC = 0x555555566023 *)
adcs overflow r9 r9 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    %r11,0x30(%rsp)                          #! EA = L0x7fffffffd280; PC = 0x555555566029 *)
mov L0x7fffffffd280 r11;
(* mov    %rbp,0x38(%rsp)                          #! EA = L0x7fffffffd288; PC = 0x55555556602e *)
mov L0x7fffffffd288 rbp;
(* mov    %r10,0x40(%rsp)                          #! EA = L0x7fffffffd290; PC = 0x555555566033 *)
mov L0x7fffffffd290 r10;
(* mov    %rbx,0x48(%rsp)                          #! EA = L0x7fffffffd298; PC = 0x555555566038 *)
mov L0x7fffffffd298 rbx;
(* mov    %r8,0x50(%rsp)                           #! EA = L0x7fffffffd2a0; PC = 0x55555556603d *)
mov L0x7fffffffd2a0 r8;
(* mov    %r9,0x58(%rsp)                           #! EA = L0x7fffffffd2a8; PC = 0x555555566042 *)
mov L0x7fffffffd2a8 r9;
(* mov    0x60(%rsp),%r8                           #! EA = L0x7fffffffd2b0; Value = 0x0000000000000000; PC = 0x555555566047 *)
mov r8 L0x7fffffffd2b0;
(* mov    0x68(%rsp),%r9                           #! EA = L0x7fffffffd2b8; Value = 0x0000000000000000; PC = 0x55555556604c *)
mov r9 L0x7fffffffd2b8;
(* mov    0x70(%rsp),%r10                          #! EA = L0x7fffffffd2c0; Value = 0x0000000000000000; PC = 0x555555566051 *)
mov r10 L0x7fffffffd2c0;
(* mov    0x78(%rsp),%r11                          #! EA = L0x7fffffffd2c8; Value = 0x0000000000000000; PC = 0x555555566056 *)
mov r11 L0x7fffffffd2c8;
(* mov    0x90(%rcx),%rax                          #! EA = L0x7fffffffd4d0; Value = 0x7aacb4a299cab3c5; PC = 0x55555556605b *)
mov rax L0x7fffffffd4d0;
(* add    %rax,%r8                                 #! PC = 0x555555566062 *)
adds carry r8 r8 rax;
(* mov    0x98(%rcx),%rax                          #! EA = L0x7fffffffd4d8; Value = 0xf4c5b455dcd2dd47; PC = 0x555555566065 *)
mov rax L0x7fffffffd4d8;
(* adc    %rax,%r9                                 #! PC = 0x55555556606c *)
adcs carry r9 r9 rax@uint64 carry;
(* mov    0xa0(%rcx),%rax                          #! EA = L0x7fffffffd4e0; Value = 0x64e67231b7a3569a; PC = 0x55555556606f *)
mov rax L0x7fffffffd4e0;
(* adc    %rax,%r10                                #! PC = 0x555555566076 *)
adcs carry r10 r10 rax@uint64 carry;
(* mov    0xa8(%rcx),%rax                          #! EA = L0x7fffffffd4e8; Value = 0x7727a6c81a90caac; PC = 0x555555566079 *)
mov rax L0x7fffffffd4e8;
(* adc    %rax,%r11                                #! PC = 0x555555566080 *)
adcs carry r11 r11 rax@uint64 carry;
(* mov    0xb0(%rcx),%rax                          #! EA = L0x7fffffffd4f0; Value = 0xa5c6a6e43d7d467a; PC = 0x555555566083 *)
mov rax L0x7fffffffd4f0;
(* adc    %rax,%r12                                #! PC = 0x55555556608a *)
adcs carry r12 r12 rax@uint64 carry;
(* mov    0xb8(%rcx),%rax                          #! EA = L0x7fffffffd4f8; Value = 0x5086de626c12ff16; PC = 0x55555556608d *)
mov rax L0x7fffffffd4f8;
(* adc    %rax,%r13                                #! PC = 0x555555566094 *)
adcs carry r13 r13 rax@uint64 carry;
(* mov    0x60(%rcx),%rdi                          #! EA = L0x7fffffffd4a0; Value = 0x4e8e8ae1ff45e9d5; PC = 0x555555566097 *)
mov rdi L0x7fffffffd4a0;
(* sub    (%rcx),%rdi                              #! EA = L0x7fffffffd440; Value = 0xc80ee592641a7810; PC = 0x55555556609b *)
subb carry rdi rdi L0x7fffffffd440;
(* mov    0x68(%rcx),%rdx                          #! EA = L0x7fffffffd4a8; Value = 0x27a8bfb674fc7bc9; PC = 0x55555556609e *)
mov rdx L0x7fffffffd4a8;
(* sbb    0x8(%rcx),%rdx                           #! EA = L0x7fffffffd448; Value = 0xf49f5f0571f5be59; PC = 0x5555555660a2 *)
sbbs carry rdx rdx L0x7fffffffd448 carry;
(* mov    0x70(%rcx),%rbx                          #! EA = L0x7fffffffd4b0; Value = 0x5d40094b540c69bf; PC = 0x5555555660a6 *)
mov rbx L0x7fffffffd4b0;
(* sbb    0x10(%rcx),%rbx                          #! EA = L0x7fffffffd450; Value = 0x169006b9d2a13744; PC = 0x5555555660aa *)
sbbs carry rbx rbx L0x7fffffffd450 carry;
(* mov    0x78(%rcx),%rbp                          #! EA = L0x7fffffffd4b8; Value = 0x88d9c64a857d499c; PC = 0x5555555660ae *)
mov rbp L0x7fffffffd4b8;
(* sbb    0x18(%rcx),%rbp                          #! EA = L0x7fffffffd458; Value = 0xfcfa45db0627c72b; PC = 0x5555555660b2 *)
sbbs carry rbp rbp L0x7fffffffd458 carry;
(* mov    0x80(%rcx),%r14                          #! EA = L0x7fffffffd4c0; Value = 0x902aec3a12099c21; PC = 0x5555555660b6 *)
mov r14 L0x7fffffffd4c0;
(* sbb    0x20(%rcx),%r14                          #! EA = L0x7fffffffd460; Value = 0xa16cf7bf5c5b0942; PC = 0x5555555660bd *)
sbbs carry r14 r14 L0x7fffffffd460 carry;
(* mov    0x88(%rcx),%r15                          #! EA = L0x7fffffffd4c8; Value = 0xcb2eef6a7128b101; PC = 0x5555555660c1 *)
mov r15 L0x7fffffffd4c8;
(* sbb    0x28(%rcx),%r15                          #! EA = L0x7fffffffd468; Value = 0xc78da97b75d41bbe; PC = 0x5555555660c8 *)
sbbs carry r15 r15 L0x7fffffffd468 carry;
(* sbb    0x30(%rcx),%r8                           #! EA = L0x7fffffffd470; Value = 0x0ed62c32c8941bad; PC = 0x5555555660cc *)
sbbs carry r8 r8 L0x7fffffffd470 carry;
(* sbb    0x38(%rcx),%r9                           #! EA = L0x7fffffffd478; Value = 0x958ef3aa5ce73b6b; PC = 0x5555555660d0 *)
sbbs carry r9 r9 L0x7fffffffd478 carry;
(* sbb    0x40(%rcx),%r10                          #! EA = L0x7fffffffd480; Value = 0xb93d095899df8384; PC = 0x5555555660d4 *)
sbbs carry r10 r10 L0x7fffffffd480 carry;
(* sbb    0x48(%rcx),%r11                          #! EA = L0x7fffffffd488; Value = 0xd81f6a88e92996c4; PC = 0x5555555660d8 *)
sbbs carry r11 r11 L0x7fffffffd488 carry;
(* sbb    0x50(%rcx),%r12                          #! EA = L0x7fffffffd490; Value = 0x64e79510d3c9bfe3; PC = 0x5555555660dc *)
sbbs carry r12 r12 L0x7fffffffd490 carry;
(* sbb    0x58(%rcx),%r13                          #! EA = L0x7fffffffd498; Value = 0x50859dbfd5303931; PC = 0x5555555660e0 *)
sbbs carry r13 r13 L0x7fffffffd498 carry;
(* sub    (%rsp),%rdi                              #! EA = L0x7fffffffd250; Value = 0x3ba2843e77e4cf9b; PC = 0x5555555660e4 *)
subb carry rdi rdi L0x7fffffffd250;
(* sbb    0x8(%rsp),%rdx                           #! EA = L0x7fffffffd258; Value = 0x50654e018dca03b8; PC = 0x5555555660e8 *)
sbbs carry rdx rdx L0x7fffffffd258 carry;
(* sbb    0x10(%rsp),%rbx                          #! EA = L0x7fffffffd260; Value = 0xeba449e36f7d226b; PC = 0x5555555660ed *)
sbbs carry rbx rbx L0x7fffffffd260 carry;
(* sbb    0x18(%rsp),%rbp                          #! EA = L0x7fffffffd268; Value = 0x265f6191b8a8e573; PC = 0x5555555660f2 *)
sbbs carry rbp rbp L0x7fffffffd268 carry;
(* sbb    0x20(%rsp),%r14                          #! EA = L0x7fffffffd270; Value = 0x27e141e91aac73ea; PC = 0x5555555660f7 *)
sbbs carry r14 r14 L0x7fffffffd270 carry;
(* sbb    0x28(%rsp),%r15                          #! EA = L0x7fffffffd278; Value = 0x59720cc5203034e7; PC = 0x5555555660fc *)
sbbs carry r15 r15 L0x7fffffffd278 carry;
(* sbb    0x30(%rsp),%r8                           #! EA = L0x7fffffffd280; Value = 0x68498d2b851aa43f; PC = 0x555555566101 *)
sbbs carry r8 r8 L0x7fffffffd280 carry;
(* sbb    0x38(%rsp),%r9                           #! EA = L0x7fffffffd288; Value = 0x75329cf2d0348da5; PC = 0x555555566106 *)
sbbs carry r9 r9 L0x7fffffffd288 carry;
(* sbb    0x40(%rsp),%r10                          #! EA = L0x7fffffffd290; Value = 0xd9a404300f72ba54; PC = 0x55555556610b *)
sbbs carry r10 r10 L0x7fffffffd290 carry;
(* sbb    0x48(%rsp),%r11                          #! EA = L0x7fffffffd298; Value = 0x271d7352373fdf89; PC = 0x555555566110 *)
sbbs carry r11 r11 L0x7fffffffd298 carry;
(* sbb    0x50(%rsp),%r12                          #! EA = L0x7fffffffd2a0; Value = 0xeeec5ea600e03070; PC = 0x555555566115 *)
sbbs carry r12 r12 L0x7fffffffd2a0 carry;
(* sbb    0x58(%rsp),%r13                          #! EA = L0x7fffffffd2a8; Value = 0x00000000f0446e56; PC = 0x55555556611a *)
sbbs carry r13 r13 L0x7fffffffd2a8 carry;
assert and [
  eqmod
    (limbs 64 [ rdi, rdx, rbx, rbp, r14, r15, r8, r9, r10, r11, r12, r13 ])
    (
      (limbs 64 [ t1_00, t1_01, t1_02, t1_03, t1_04, t1_05 ] * limbs 64 [ t2_06, t2_07, t2_08, t2_09, t2_10, t2_11 ])
      +
      (limbs 64 [ t1_06, t1_07, t1_08, t1_09, t1_10, t1_11 ] * limbs 64 [ t2_00, t2_01, t2_02, t2_03, t2_04, t2_05 ])
    )
    (2**768)
] && and [
  (limbs 64 [ t1_00, t1_01, t1_02, t1_03, t1_04, t1_05, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64 ] * limbs 64 [ t2_06, t2_07, t2_08, t2_09, t2_10, t2_11, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64 ])
  +
  (limbs 64 [ t1_06, t1_07, t1_08, t1_09, t1_10, t1_11, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64 ] * limbs 64 [ t2_00, t2_01, t2_02, t2_03, t2_04, t2_05, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64 ])
  <u
  (2**768)@832
];
assume and [
  (limbs 64 [ rdi, rdx, rbx, rbp, r14, r15, r8, r9, r10, r11, r12, r13 ])
  =
  (
    (limbs 64 [ t1_00, t1_01, t1_02, t1_03, t1_04, t1_05 ] * limbs 64 [ t2_06, t2_07, t2_08, t2_09, t2_10, t2_11 ])
    +
    (limbs 64 [ t1_06, t1_07, t1_08, t1_09, t1_10, t1_11 ] * limbs 64 [ t2_00, t2_01, t2_02, t2_03, t2_04, t2_05 ])
  )
] && true;
(* mov    0x30(%rcx),%rax                          #! EA = L0x7fffffffd470; Value = 0x0ed62c32c8941bad; PC = 0x55555556611f *)
mov rax L0x7fffffffd470;
(* add    %rdi,%rax                                #! PC = 0x555555566123 *)
adds carry rax rax rdi;
(* mov    %rax,0x30(%rcx)                          #! EA = L0x7fffffffd470; PC = 0x555555566126 *)
mov L0x7fffffffd470 rax;
(* mov    0x38(%rcx),%rax                          #! EA = L0x7fffffffd478; Value = 0x958ef3aa5ce73b6b; PC = 0x55555556612a *)
mov rax L0x7fffffffd478;
(* adc    %rdx,%rax                                #! PC = 0x55555556612e *)
adcs carry rax rax rdx@uint64 carry;
(* mov    %rax,0x38(%rcx)                          #! EA = L0x7fffffffd478; PC = 0x555555566131 *)
mov L0x7fffffffd478 rax;
(* mov    0x40(%rcx),%rax                          #! EA = L0x7fffffffd480; Value = 0xb93d095899df8384; PC = 0x555555566135 *)
mov rax L0x7fffffffd480;
(* adc    %rbx,%rax                                #! PC = 0x555555566139 *)
adcs carry rax rax rbx@uint64 carry;
(* mov    %rax,0x40(%rcx)                          #! EA = L0x7fffffffd480; PC = 0x55555556613c *)
mov L0x7fffffffd480 rax;
(* mov    0x48(%rcx),%rax                          #! EA = L0x7fffffffd488; Value = 0xd81f6a88e92996c4; PC = 0x555555566140 *)
mov rax L0x7fffffffd488;
(* adc    %rbp,%rax                                #! PC = 0x555555566144 *)
adcs carry rax rax rbp@uint64 carry;
(* mov    %rax,0x48(%rcx)                          #! EA = L0x7fffffffd488; PC = 0x555555566147 *)
mov L0x7fffffffd488 rax;
(* mov    0x50(%rcx),%rax                          #! EA = L0x7fffffffd490; Value = 0x64e79510d3c9bfe3; PC = 0x55555556614b *)
mov rax L0x7fffffffd490;
(* adc    %r14,%rax                                #! PC = 0x55555556614f *)
adcs carry rax rax r14@uint64 carry;
(* mov    %rax,0x50(%rcx)                          #! EA = L0x7fffffffd490; PC = 0x555555566152 *)
mov L0x7fffffffd490 rax;
(* mov    0x58(%rcx),%rax                          #! EA = L0x7fffffffd498; Value = 0x50859dbfd5303931; PC = 0x555555566156 *)
mov rax L0x7fffffffd498;
(* adc    %r15,%rax                                #! PC = 0x55555556615a *)
adcs carry rax rax r15@uint64 carry;
(* mov    %rax,0x58(%rcx)                          #! EA = L0x7fffffffd498; PC = 0x55555556615d *)
mov L0x7fffffffd498 rax;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd250; Value = 0x3ba2843e77e4cf9b; PC = 0x555555566161 *)
mov rax L0x7fffffffd250;
(* adc    %rax,%r8                                 #! PC = 0x555555566165 *)
adcs carry r8 r8 rax@uint64 carry;
(* mov    %r8,0x60(%rcx)                           #! EA = L0x7fffffffd4a0; PC = 0x555555566168 *)
mov L0x7fffffffd4a0 r8;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd258; Value = 0x50654e018dca03b8; PC = 0x55555556616c *)
mov rax L0x7fffffffd258;
(* adc    %rax,%r9                                 #! PC = 0x555555566171 *)
adcs carry r9 r9 rax@uint64 carry;
(* mov    %r9,0x68(%rcx)                           #! EA = L0x7fffffffd4a8; PC = 0x555555566174 *)
mov L0x7fffffffd4a8 r9;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd260; Value = 0xeba449e36f7d226b; PC = 0x555555566178 *)
mov rax L0x7fffffffd260;
(* adc    %rax,%r10                                #! PC = 0x55555556617d *)
adcs carry r10 r10 rax@uint64 carry;
(* mov    %r10,0x70(%rcx)                          #! EA = L0x7fffffffd4b0; PC = 0x555555566180 *)
mov L0x7fffffffd4b0 r10;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd268; Value = 0x265f6191b8a8e573; PC = 0x555555566184 *)
mov rax L0x7fffffffd268;
(* adc    %rax,%r11                                #! PC = 0x555555566189 *)
adcs carry r11 r11 rax@uint64 carry;
(* mov    %r11,0x78(%rcx)                          #! EA = L0x7fffffffd4b8; PC = 0x55555556618c *)
mov L0x7fffffffd4b8 r11;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd270; Value = 0x27e141e91aac73ea; PC = 0x555555566190 *)
mov rax L0x7fffffffd270;
(* adc    %rax,%r12                                #! PC = 0x555555566195 *)
adcs carry r12 r12 rax@uint64 carry;
(* mov    %r12,0x80(%rcx)                          #! EA = L0x7fffffffd4c0; PC = 0x555555566198 *)
mov L0x7fffffffd4c0 r12;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd278; Value = 0x59720cc5203034e7; PC = 0x55555556619f *)
mov rax L0x7fffffffd278;
(* adc    %rax,%r13                                #! PC = 0x5555555661a4 *)
adcs carry r13 r13 rax@uint64 carry;
(* mov    %r13,0x88(%rcx)                          #! EA = L0x7fffffffd4c8; PC = 0x5555555661a7 *)
mov L0x7fffffffd4c8 r13;
(* mov    0x30(%rsp),%r8                           #! EA = L0x7fffffffd280; Value = 0x68498d2b851aa43f; PC = 0x5555555661ae *)
mov r8 L0x7fffffffd280;
(* mov    0x38(%rsp),%r9                           #! EA = L0x7fffffffd288; Value = 0x75329cf2d0348da5; PC = 0x5555555661b3 *)
mov r9 L0x7fffffffd288;
(* mov    0x40(%rsp),%r10                          #! EA = L0x7fffffffd290; Value = 0xd9a404300f72ba54; PC = 0x5555555661b8 *)
mov r10 L0x7fffffffd290;
(* mov    0x48(%rsp),%r11                          #! EA = L0x7fffffffd298; Value = 0x271d7352373fdf89; PC = 0x5555555661bd *)
mov r11 L0x7fffffffd298;
(* mov    0x50(%rsp),%r12                          #! EA = L0x7fffffffd2a0; Value = 0xeeec5ea600e03070; PC = 0x5555555661c2 *)
mov r12 L0x7fffffffd2a0;
(* mov    0x58(%rsp),%r13                          #! EA = L0x7fffffffd2a8; Value = 0x00000000f0446e56; PC = 0x5555555661c7 *)
mov r13 L0x7fffffffd2a8;
(* adc    $0x0,%r8                                 #! PC = 0x5555555661cc *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x5555555661d0 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x5555555661d4 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r11                                #! PC = 0x5555555661d8 *)
adcs carry r11 r11 0x0@uint64 carry;
(* adc    $0x0,%r12                                #! PC = 0x5555555661dc *)
adcs carry r12 r12 0x0@uint64 carry;
(* adc    $0x0,%r13                                #! PC = 0x5555555661e0 *)
adcs carry r13 r13 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    $0x98,%rsp                               #! PC = 0x5555555661e4 *)
adds carry rsp rsp 0x98@uint64;
(* mov    %r8,0x90(%rcx)                           #! EA = L0x7fffffffd4d0; PC = 0x5555555661eb *)
mov L0x7fffffffd4d0 r8;
(* mov    %r9,0x98(%rcx)                           #! EA = L0x7fffffffd4d8; PC = 0x5555555661f2 *)
mov L0x7fffffffd4d8 r9;
(* mov    %r10,0xa0(%rcx)                          #! EA = L0x7fffffffd4e0; PC = 0x5555555661f9 *)
mov L0x7fffffffd4e0 r10;
(* mov    %r11,0xa8(%rcx)                          #! EA = L0x7fffffffd4e8; PC = 0x555555566200 *)
mov L0x7fffffffd4e8 r11;
(* mov    %r12,0xb0(%rcx)                          #! EA = L0x7fffffffd4f0; PC = 0x555555566207 *)
mov L0x7fffffffd4f0 r12;
(* mov    %r13,0xb8(%rcx)                          #! EA = L0x7fffffffd4f8; PC = 0x55555556620e *)
mov L0x7fffffffd4f8 r13;
(* #! <- SP = 0x7fffffffd318 *)
#! 0x7fffffffd318 = 0x7fffffffd318;
(* #retq                                           #! PC = 0x55555556621f *)
#retq                                           #! 0x55555556621f = 0x55555556621f;
(* mov    %rbx,%rsi                                #! PC = 0x555555558cf4 *)
mov rsi rbx;
(* mov    %rbp,%rdi                                #! PC = 0x555555558cf7 *)
mov rdi rbp;
(* #callq  0x5555555650d0 <rdc_mont>               #! PC = 0x555555558cfa *)
#callq  0x5555555650d0 <rdc_mont>               #! 0x555555558cfa = 0x555555558cfa;
(* #! -> SP = 0x7fffffffd318 *)
#! 0x7fffffffd318 = 0x7fffffffd318;
(* #jmpq   0x555555566220 <rdc751_asm>             #! PC = 0x5555555650d4 *)
#jmpq   0x555555566220 <rdc751_asm>             #! 0x5555555650d4 = 0x5555555650d4;
(* mov    (%rdi),%rdx                              #! EA = L0x7fffffffd440; Value = 0xc80ee592641a7810; PC = 0x55555556622a *)
mov rdx L0x7fffffffd440;
(* mulx   0x45d2(%rip),%r9,%r8        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x55555556622d *)
mull r8 r9 L0x55555556a808 rdx;
(* mulx   0x45d1(%rip),%r10,%r13        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x555555566236 *)
mull r13 r10 L0x55555556a810 rdx;
(* mov    %r9,0x30(%rsi)                           #! EA = L0x7fffffffdb10; PC = 0x55555556623f *)
mov L0x7fffffffdb10 r9;
(* xor    %rax,%rax                                #! PC = 0x555555566243 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x45c9(%rip),%r12,%r14        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x555555566246 *)
mull r14 r12 L0x55555556a818 rdx;
(* adox   %r10,%r8                                 #! PC = 0x55555556624f *)
adcs overflow r8 r8 r10 overflow;
(* adox   %r12,%r13                                #! PC = 0x555555566255 *)
adcs overflow r13 r13 r12 overflow;
(* mulx   0x45bc(%rip),%r10,%r9        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x55555556625b *)
mull r9 r10 L0x55555556a820 rdx;
(* adox   %r10,%r14                                #! PC = 0x555555566264 *)
adcs overflow r14 r14 r10 overflow;
(* mulx   0x45b5(%rip),%r11,%r12        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x55555556626a *)
mull r12 r11 L0x55555556a828 rdx;
(* adox   %r11,%r9                                 #! PC = 0x555555566273 *)
adcs overflow r9 r9 r11 overflow;
(* mulx   0x45ae(%rip),%rbp,%r10        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x555555566279 *)
mull r10 rbp L0x55555556a830 rdx;
(* adox   %rbp,%r12                                #! PC = 0x555555566282 *)
adcs overflow r12 r12 rbp overflow;
(* mulx   0x45a7(%rip),%rbx,%r11        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x555555566288 *)
mull r11 rbx L0x55555556a838 rdx;
(* adox   %rbx,%r10                                #! PC = 0x555555566291 *)
adcs overflow r10 r10 rbx overflow;
(* adox   %rax,%r11                                #! PC = 0x555555566297 *)
adcs overflow r11 r11 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x8(%rdi),%rdx                           #! EA = L0x7fffffffd448; Value = 0xf49f5f0571f5be59; PC = 0x55555556629d *)
mov rdx L0x7fffffffd448;
(* mulx   0x455e(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x5555555662a1 *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555662aa *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %rbp,%r8                                 #! PC = 0x5555555662ad *)
adcs carry r8 r8 rbp carry;
(* mov    %r8,0x38(%rsi)                           #! EA = L0x7fffffffdb18; PC = 0x5555555662b3 *)
mov L0x7fffffffdb18 r8;
(* adcx   %rbx,%r13                                #! PC = 0x5555555662b7 *)
adcs carry r13 r13 rbx carry;
(* mulx   0x454a(%rip),%rbx,%rbp        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x5555555662bd *)
mull rbp rbx L0x55555556a810 rdx;
(* adox   %rbx,%r13                                #! PC = 0x5555555662c6 *)
adcs overflow r13 r13 rbx overflow;
(* adcx   %rbp,%r14                                #! PC = 0x5555555662cc *)
adcs carry r14 r14 rbp carry;
(* mulx   0x453d(%rip),%rbx,%r8        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x5555555662d2 *)
mull r8 rbx L0x55555556a818 rdx;
(* adox   %rbx,%r14                                #! PC = 0x5555555662db *)
adcs overflow r14 r14 rbx overflow;
(* adcx   %r9,%r8                                  #! PC = 0x5555555662e1 *)
adcs carry r8 r8 r9 carry;
(* mulx   0x4530(%rip),%rbp,%r9        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x5555555662e7 *)
mull r9 rbp L0x55555556a820 rdx;
(* adcx   %r12,%r9                                 #! PC = 0x5555555662f0 *)
adcs carry r9 r9 r12 carry;
(* mulx   0x4529(%rip),%rbx,%r12        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x5555555662f6 *)
mull r12 rbx L0x55555556a828 rdx;
(* adcx   %r12,%r10                                #! PC = 0x5555555662ff *)
adcs carry r10 r10 r12 carry;
(* mulx   0x4522(%rip),%rcx,%r12        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x555555566305 *)
mull r12 rcx L0x55555556a830 rdx;
(* adcx   %r12,%r11                                #! PC = 0x55555556630e *)
adcs carry r11 r11 r12 carry;
(* mulx   0x451b(%rip),%rdx,%r12        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x555555566314 *)
mull r12 rdx L0x55555556a838 rdx;
(* adcx   %rax,%r12                                #! PC = 0x55555556631d *)
adcs carry r12 r12 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %rbp,%r8                                 #! PC = 0x555555566323 *)
adcs overflow r8 r8 rbp overflow;
(* adox   %rbx,%r9                                 #! PC = 0x555555566329 *)
adcs overflow r9 r9 rbx overflow;
(* adox   %rcx,%r10                                #! PC = 0x55555556632f *)
adcs overflow r10 r10 rcx overflow;
(* adox   %rdx,%r11                                #! PC = 0x555555566335 *)
adcs overflow r11 r11 rdx overflow;
(* adox   %rax,%r12                                #! PC = 0x55555556633b *)
adcs overflow r12 r12 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x10(%rdi),%rdx                          #! EA = L0x7fffffffd450; Value = 0x169006b9d2a13744; PC = 0x555555566341 *)
mov rdx L0x7fffffffd450;
(* mulx   0x44ba(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x555555566345 *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x55555556634e *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %rbp,%r13                                #! PC = 0x555555566351 *)
adcs carry r13 r13 rbp carry;
(* mov    %r13,0x40(%rsi)                          #! EA = L0x7fffffffdb20; PC = 0x555555566357 *)
mov L0x7fffffffdb20 r13;
(* adcx   %rbx,%r14                                #! PC = 0x55555556635b *)
adcs carry r14 r14 rbx carry;
(* mulx   0x44a6(%rip),%rbp,%rbx        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x555555566361 *)
mull rbx rbp L0x55555556a810 rdx;
(* adox   %rbp,%r14                                #! PC = 0x55555556636a *)
adcs overflow r14 r14 rbp overflow;
(* adcx   %rbx,%r8                                 #! PC = 0x555555566370 *)
adcs carry r8 r8 rbx carry;
(* mulx   0x4499(%rip),%rbx,%r13        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x555555566376 *)
mull r13 rbx L0x55555556a818 rdx;
(* adox   %rbx,%r8                                 #! PC = 0x55555556637f *)
adcs overflow r8 r8 rbx overflow;
(* adcx   %r13,%r9                                 #! PC = 0x555555566385 *)
adcs carry r9 r9 r13 carry;
(* mulx   0x448c(%rip),%rbp,%r13        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x55555556638b *)
mull r13 rbp L0x55555556a820 rdx;
(* adcx   %r13,%r10                                #! PC = 0x555555566394 *)
adcs carry r10 r10 r13 carry;
(* mulx   0x4485(%rip),%rbx,%r13        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x55555556639a *)
mull r13 rbx L0x55555556a828 rdx;
(* adcx   %r13,%r11                                #! PC = 0x5555555663a3 *)
adcs carry r11 r11 r13 carry;
(* mulx   0x447e(%rip),%rcx,%r13        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x5555555663a9 *)
mull r13 rcx L0x55555556a830 rdx;
(* adcx   %r13,%r12                                #! PC = 0x5555555663b2 *)
adcs carry r12 r12 r13 carry;
(* mulx   0x4477(%rip),%rdx,%r13        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x5555555663b8 *)
mull r13 rdx L0x55555556a838 rdx;
(* adcx   %rax,%r13                                #! PC = 0x5555555663c1 *)
adcs carry r13 r13 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %rbp,%r9                                 #! PC = 0x5555555663c7 *)
adcs overflow r9 r9 rbp overflow;
(* adox   %rbx,%r10                                #! PC = 0x5555555663cd *)
adcs overflow r10 r10 rbx overflow;
(* adox   %rcx,%r11                                #! PC = 0x5555555663d3 *)
adcs overflow r11 r11 rcx overflow;
(* adox   %rdx,%r12                                #! PC = 0x5555555663d9 *)
adcs overflow r12 r12 rdx overflow;
(* adox   %rax,%r13                                #! PC = 0x5555555663df *)
adcs overflow r13 r13 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x18(%rdi),%rdx                          #! EA = L0x7fffffffd458; Value = 0xfcfa45db0627c72b; PC = 0x5555555663e5 *)
mov rdx L0x7fffffffd458;
(* mulx   0x4416(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x5555555663e9 *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555663f2 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r14,%rbp                                #! PC = 0x5555555663f5 *)
adcs carry rbp rbp r14 carry;
(* adcx   %rbx,%r8                                 #! PC = 0x5555555663fb *)
adcs carry r8 r8 rbx carry;
(* mulx   0x4406(%rip),%r15,%rbx        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x555555566401 *)
mull rbx r15 L0x55555556a810 rdx;
(* adox   %r15,%r8                                 #! PC = 0x55555556640a *)
adcs overflow r8 r8 r15 overflow;
(* adcx   %rbx,%r9                                 #! PC = 0x555555566410 *)
adcs carry r9 r9 rbx carry;
(* mulx   0x43f9(%rip),%rbx,%r14        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x555555566416 *)
mull r14 rbx L0x55555556a818 rdx;
(* adox   %rbx,%r9                                 #! PC = 0x55555556641f *)
adcs overflow r9 r9 rbx overflow;
(* adcx   %r14,%r10                                #! PC = 0x555555566425 *)
adcs carry r10 r10 r14 carry;
(* mulx   0x43ec(%rip),%r15,%r14        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x55555556642b *)
mull r14 r15 L0x55555556a820 rdx;
(* adcx   %r14,%r11                                #! PC = 0x555555566434 *)
adcs carry r11 r11 r14 carry;
(* mulx   0x43e5(%rip),%rbx,%r14        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x55555556643a *)
mull r14 rbx L0x55555556a828 rdx;
(* adcx   %r14,%r12                                #! PC = 0x555555566443 *)
adcs carry r12 r12 r14 carry;
(* mulx   0x43de(%rip),%rcx,%r14        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x555555566449 *)
mull r14 rcx L0x55555556a830 rdx;
(* adcx   %r14,%r13                                #! PC = 0x555555566452 *)
adcs carry r13 r13 r14 carry;
(* mulx   0x43d7(%rip),%rdx,%r14        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x555555566458 *)
mull r14 rdx L0x55555556a838 rdx;
(* adcx   %rax,%r14                                #! PC = 0x555555566461 *)
adcs carry r14 r14 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r10                                #! PC = 0x555555566467 *)
adcs overflow r10 r10 r15 overflow;
(* adox   %rbx,%r11                                #! PC = 0x55555556646d *)
adcs overflow r11 r11 rbx overflow;
(* adox   %rcx,%r12                                #! PC = 0x555555566473 *)
adcs overflow r12 r12 rcx overflow;
(* adox   %rdx,%r13                                #! PC = 0x555555566479 *)
adcs overflow r13 r13 rdx overflow;
(* adox   %rax,%r14                                #! PC = 0x55555556647f *)
adcs overflow r14 r14 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* xor    %r15,%r15                                #! PC = 0x555555566485 *)
mov r15 0@uint64;
clear carry;
clear overflow;
(* mov    0x30(%rsi),%rax                          #! EA = L0x7fffffffdb10; Value = 0x6b00000000000000; PC = 0x555555566488 *)
mov rax L0x7fffffffdb10;
(* mov    0x38(%rsi),%rdx                          #! EA = L0x7fffffffdb18; Value = 0x2250f0dae6dbb851; PC = 0x55555556648c *)
mov rdx L0x7fffffffdb18;
(* mov    0x40(%rsi),%rbx                          #! EA = L0x7fffffffdb20; Value = 0x6245c4babe7ec274; PC = 0x555555566490 *)
mov rbx L0x7fffffffdb20;
(* add    0x28(%rdi),%rax                          #! EA = L0x7fffffffd468; Value = 0xc78da97b75d41bbe; PC = 0x555555566494 *)
adds carry rax rax L0x7fffffffd468;
(* adc    0x30(%rdi),%rdx                          #! EA = L0x7fffffffd470; Value = 0x59b34d43ebdabdd7; PC = 0x555555566498 *)
adcs carry rdx rdx L0x7fffffffd470 carry;
(* adc    0x38(%rdi),%rbx                          #! EA = L0x7fffffffd478; Value = 0x78330659d223f522; PC = 0x55555556649c *)
adcs carry rbx rbx L0x7fffffffd478 carry;
(* mov    %rax,0x28(%rdi)                          #! EA = L0x7fffffffd468; PC = 0x5555555664a0 *)
mov L0x7fffffffd468 rax;
(* mov    %rdx,0x30(%rdi)                          #! EA = L0x7fffffffd470; PC = 0x5555555664a4 *)
mov L0x7fffffffd470 rdx;
(* mov    %rbx,0x38(%rdi)                          #! EA = L0x7fffffffd478; PC = 0x5555555664a8 *)
mov L0x7fffffffd478 rbx;
(* adc    0x40(%rdi),%rbp                          #! EA = L0x7fffffffd480; Value = 0x1448c206abcd9393; PC = 0x5555555664ac *)
adcs carry rbp rbp L0x7fffffffd480 carry;
(* adc    0x48(%rdi),%r8                           #! EA = L0x7fffffffd488; Value = 0x3d9f8966afd633c2; PC = 0x5555555664b0 *)
adcs carry r8 r8 L0x7fffffffd488 carry;
(* adc    0x50(%rdi),%r9                           #! EA = L0x7fffffffd490; Value = 0x2bc447a26ecbded8; PC = 0x5555555664b4 *)
adcs carry r9 r9 L0x7fffffffd490 carry;
(* adc    0x58(%rdi),%r10                          #! EA = L0x7fffffffd498; Value = 0xfab4d6e9b054998d; PC = 0x5555555664b8 *)
adcs carry r10 r10 L0x7fffffffd498 carry;
(* adc    0x60(%rdi),%r11                          #! EA = L0x7fffffffd4a0; Value = 0x3f2f7f82c400c373; PC = 0x5555555664bc *)
adcs carry r11 r11 L0x7fffffffd4a0 carry;
(* adc    0x68(%rdi),%r12                          #! EA = L0x7fffffffd4a8; Value = 0x3a6971ba3d8117ef; PC = 0x5555555664c0 *)
adcs carry r12 r12 L0x7fffffffd4a8 carry;
(* adc    0x70(%rdi),%r13                          #! EA = L0x7fffffffd4b0; Value = 0xbda9ae8c7dce3b2d; PC = 0x5555555664c4 *)
adcs carry r13 r13 L0x7fffffffd4b0 carry;
(* adc    0x78(%rdi),%r14                          #! EA = L0x7fffffffd4b8; Value = 0x9e4a2a7eb2d039d1; PC = 0x5555555664c8 *)
adcs carry r14 r14 L0x7fffffffd4b8 carry;
(* adc    0x80(%rdi),%r15                          #! EA = L0x7fffffffd4c0; Value = 0x79d3f516837fca10; PC = 0x5555555664cc *)
adcs carry r15 r15 L0x7fffffffd4c0 carry;
(* mov    %rbp,0x40(%rdi)                          #! EA = L0x7fffffffd480; PC = 0x5555555664d3 *)
mov L0x7fffffffd480 rbp;
(* mov    %r8,0x48(%rdi)                           #! EA = L0x7fffffffd488; PC = 0x5555555664d7 *)
mov L0x7fffffffd488 r8;
(* mov    %r9,0x50(%rdi)                           #! EA = L0x7fffffffd490; PC = 0x5555555664db *)
mov L0x7fffffffd490 r9;
(* mov    %r10,0x58(%rdi)                          #! EA = L0x7fffffffd498; PC = 0x5555555664df *)
mov L0x7fffffffd498 r10;
(* mov    %r11,0x60(%rdi)                          #! EA = L0x7fffffffd4a0; PC = 0x5555555664e3 *)
mov L0x7fffffffd4a0 r11;
(* mov    %r12,0x68(%rdi)                          #! EA = L0x7fffffffd4a8; PC = 0x5555555664e7 *)
mov L0x7fffffffd4a8 r12;
(* mov    %r13,0x70(%rdi)                          #! EA = L0x7fffffffd4b0; PC = 0x5555555664eb *)
mov L0x7fffffffd4b0 r13;
(* mov    %r14,0x78(%rdi)                          #! EA = L0x7fffffffd4b8; PC = 0x5555555664ef *)
mov L0x7fffffffd4b8 r14;
(* mov    %r15,0x80(%rdi)                          #! EA = L0x7fffffffd4c0; PC = 0x5555555664f3 *)
mov L0x7fffffffd4c0 r15;
(* mov    0x88(%rdi),%r8                           #! EA = L0x7fffffffd4c8; Value = 0x59734d66c6ce8c75; PC = 0x5555555664fa *)
mov r8 L0x7fffffffd4c8;
(* mov    0x90(%rdi),%r9                           #! EA = L0x7fffffffd4d0; Value = 0x68498d2b851aa43f; PC = 0x555555566501 *)
mov r9 L0x7fffffffd4d0;
(* mov    0x98(%rdi),%r10                          #! EA = L0x7fffffffd4d8; Value = 0x75329cf2d0348da5; PC = 0x555555566508 *)
mov r10 L0x7fffffffd4d8;
(* mov    0xa0(%rdi),%r11                          #! EA = L0x7fffffffd4e0; Value = 0xd9a404300f72ba54; PC = 0x55555556650f *)
mov r11 L0x7fffffffd4e0;
(* mov    0xa8(%rdi),%r12                          #! EA = L0x7fffffffd4e8; Value = 0x271d7352373fdf89; PC = 0x555555566516 *)
mov r12 L0x7fffffffd4e8;
(* mov    0xb0(%rdi),%r13                          #! EA = L0x7fffffffd4f0; Value = 0xeeec5ea600e03070; PC = 0x55555556651d *)
mov r13 L0x7fffffffd4f0;
(* mov    0xb8(%rdi),%r14                          #! EA = L0x7fffffffd4f8; Value = 0x00000000f0446e56; PC = 0x555555566524 *)
mov r14 L0x7fffffffd4f8;
(* adc    $0x0,%r8                                 #! PC = 0x55555556652b *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x55555556652f *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x555555566533 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r11                                #! PC = 0x555555566537 *)
adcs carry r11 r11 0x0@uint64 carry;
(* adc    $0x0,%r12                                #! PC = 0x55555556653b *)
adcs carry r12 r12 0x0@uint64 carry;
(* adc    $0x0,%r13                                #! PC = 0x55555556653f *)
adcs carry r13 r13 0x0@uint64 carry;
(* adc    $0x0,%r14                                #! PC = 0x555555566543 *)
adcs carry r14 r14 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r8,0x88(%rdi)                           #! EA = L0x7fffffffd4c8; PC = 0x555555566547 *)
mov L0x7fffffffd4c8 r8;
(* mov    %r9,0x90(%rdi)                           #! EA = L0x7fffffffd4d0; PC = 0x55555556654e *)
mov L0x7fffffffd4d0 r9;
(* mov    %r10,0x98(%rdi)                          #! EA = L0x7fffffffd4d8; PC = 0x555555566555 *)
mov L0x7fffffffd4d8 r10;
(* mov    %r11,0xa0(%rdi)                          #! EA = L0x7fffffffd4e0; PC = 0x55555556655c *)
mov L0x7fffffffd4e0 r11;
(* mov    %r12,0xa8(%rdi)                          #! EA = L0x7fffffffd4e8; PC = 0x555555566563 *)
mov L0x7fffffffd4e8 r12;
(* mov    %r13,0xb0(%rdi)                          #! EA = L0x7fffffffd4f0; PC = 0x55555556656a *)
mov L0x7fffffffd4f0 r13;
(* mov    %r14,0xb8(%rdi)                          #! EA = L0x7fffffffd4f8; PC = 0x555555566571 *)
mov L0x7fffffffd4f8 r14;
(* mov    0x20(%rdi),%rdx                          #! EA = L0x7fffffffd460; Value = 0xa16cf7bf5c5b0942; PC = 0x555555566578 *)
mov rdx L0x7fffffffd460;
(* mulx   0x4283(%rip),%r9,%r8        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x55555556657c *)
mull r8 r9 L0x55555556a808 rdx;
(* mulx   0x4282(%rip),%r10,%r13        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x555555566585 *)
mull r13 r10 L0x55555556a810 rdx;
(* mov    %r9,0x30(%rsi)                           #! EA = L0x7fffffffdb10; PC = 0x55555556658e *)
mov L0x7fffffffdb10 r9;
(* xor    %rax,%rax                                #! PC = 0x555555566592 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x427a(%rip),%r12,%r14        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x555555566595 *)
mull r14 r12 L0x55555556a818 rdx;
(* adox   %r10,%r8                                 #! PC = 0x55555556659e *)
adcs overflow r8 r8 r10 overflow;
(* adox   %r12,%r13                                #! PC = 0x5555555665a4 *)
adcs overflow r13 r13 r12 overflow;
(* mulx   0x426d(%rip),%r10,%r9        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x5555555665aa *)
mull r9 r10 L0x55555556a820 rdx;
(* adox   %r10,%r14                                #! PC = 0x5555555665b3 *)
adcs overflow r14 r14 r10 overflow;
(* mulx   0x4266(%rip),%r11,%r12        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x5555555665b9 *)
mull r12 r11 L0x55555556a828 rdx;
(* adox   %r11,%r9                                 #! PC = 0x5555555665c2 *)
adcs overflow r9 r9 r11 overflow;
(* mulx   0x425f(%rip),%rbp,%r10        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x5555555665c8 *)
mull r10 rbp L0x55555556a830 rdx;
(* adox   %rbp,%r12                                #! PC = 0x5555555665d1 *)
adcs overflow r12 r12 rbp overflow;
(* mulx   0x4258(%rip),%rbx,%r11        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x5555555665d7 *)
mull r11 rbx L0x55555556a838 rdx;
(* adox   %rbx,%r10                                #! PC = 0x5555555665e0 *)
adcs overflow r10 r10 rbx overflow;
(* adox   %rax,%r11                                #! PC = 0x5555555665e6 *)
adcs overflow r11 r11 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x28(%rdi),%rdx                          #! EA = L0x7fffffffd468; Value = 0x328da97b75d41bbe; PC = 0x5555555665ec *)
mov rdx L0x7fffffffd468;
(* mulx   0x420f(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x5555555665f0 *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555665f9 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %rbp,%r8                                 #! PC = 0x5555555665fc *)
adcs carry r8 r8 rbp carry;
(* mov    %r8,0x38(%rsi)                           #! EA = L0x7fffffffdb18; PC = 0x555555566602 *)
mov L0x7fffffffdb18 r8;
(* adcx   %rbx,%r13                                #! PC = 0x555555566606 *)
adcs carry r13 r13 rbx carry;
(* mulx   0x41fb(%rip),%rbx,%rbp        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x55555556660c *)
mull rbp rbx L0x55555556a810 rdx;
(* adox   %rbx,%r13                                #! PC = 0x555555566615 *)
adcs overflow r13 r13 rbx overflow;
(* adcx   %rbp,%r14                                #! PC = 0x55555556661b *)
adcs carry r14 r14 rbp carry;
(* mulx   0x41ee(%rip),%rbx,%r8        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x555555566621 *)
mull r8 rbx L0x55555556a818 rdx;
(* adox   %rbx,%r14                                #! PC = 0x55555556662a *)
adcs overflow r14 r14 rbx overflow;
(* adcx   %r9,%r8                                  #! PC = 0x555555566630 *)
adcs carry r8 r8 r9 carry;
(* mulx   0x41e1(%rip),%rbp,%r9        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x555555566636 *)
mull r9 rbp L0x55555556a820 rdx;
(* adcx   %r12,%r9                                 #! PC = 0x55555556663f *)
adcs carry r9 r9 r12 carry;
(* mulx   0x41da(%rip),%rbx,%r12        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x555555566645 *)
mull r12 rbx L0x55555556a828 rdx;
(* adcx   %r12,%r10                                #! PC = 0x55555556664e *)
adcs carry r10 r10 r12 carry;
(* mulx   0x41d3(%rip),%rcx,%r12        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x555555566654 *)
mull r12 rcx L0x55555556a830 rdx;
(* adcx   %r12,%r11                                #! PC = 0x55555556665d *)
adcs carry r11 r11 r12 carry;
(* mulx   0x41cc(%rip),%rdx,%r12        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x555555566663 *)
mull r12 rdx L0x55555556a838 rdx;
(* adcx   %rax,%r12                                #! PC = 0x55555556666c *)
adcs carry r12 r12 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %rbp,%r8                                 #! PC = 0x555555566672 *)
adcs overflow r8 r8 rbp overflow;
(* adox   %rbx,%r9                                 #! PC = 0x555555566678 *)
adcs overflow r9 r9 rbx overflow;
(* adox   %rcx,%r10                                #! PC = 0x55555556667e *)
adcs overflow r10 r10 rcx overflow;
(* adox   %rdx,%r11                                #! PC = 0x555555566684 *)
adcs overflow r11 r11 rdx overflow;
(* adox   %rax,%r12                                #! PC = 0x55555556668a *)
adcs overflow r12 r12 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x30(%rdi),%rdx                          #! EA = L0x7fffffffd470; Value = 0x7c043e1ed2b67629; PC = 0x555555566690 *)
mov rdx L0x7fffffffd470;
(* mulx   0x416b(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x555555566694 *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x55555556669d *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %rbp,%r13                                #! PC = 0x5555555666a0 *)
adcs carry r13 r13 rbp carry;
(* mov    %r13,0x40(%rsi)                          #! EA = L0x7fffffffdb20; PC = 0x5555555666a6 *)
mov L0x7fffffffdb20 r13;
(* adcx   %rbx,%r14                                #! PC = 0x5555555666aa *)
adcs carry r14 r14 rbx carry;
(* mulx   0x4157(%rip),%rbp,%rbx        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x5555555666b0 *)
mull rbx rbp L0x55555556a810 rdx;
(* adox   %rbp,%r14                                #! PC = 0x5555555666b9 *)
adcs overflow r14 r14 rbp overflow;
(* adcx   %rbx,%r8                                 #! PC = 0x5555555666bf *)
adcs carry r8 r8 rbx carry;
(* mulx   0x414a(%rip),%rbx,%r13        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x5555555666c5 *)
mull r13 rbx L0x55555556a818 rdx;
(* adox   %rbx,%r8                                 #! PC = 0x5555555666ce *)
adcs overflow r8 r8 rbx overflow;
(* adcx   %r13,%r9                                 #! PC = 0x5555555666d4 *)
adcs carry r9 r9 r13 carry;
(* mulx   0x413d(%rip),%rbp,%r13        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x5555555666da *)
mull r13 rbp L0x55555556a820 rdx;
(* adcx   %r13,%r10                                #! PC = 0x5555555666e3 *)
adcs carry r10 r10 r13 carry;
(* mulx   0x4136(%rip),%rbx,%r13        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x5555555666e9 *)
mull r13 rbx L0x55555556a828 rdx;
(* adcx   %r13,%r11                                #! PC = 0x5555555666f2 *)
adcs carry r11 r11 r13 carry;
(* mulx   0x412f(%rip),%rcx,%r13        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x5555555666f8 *)
mull r13 rcx L0x55555556a830 rdx;
(* adcx   %r13,%r12                                #! PC = 0x555555566701 *)
adcs carry r12 r12 r13 carry;
(* mulx   0x4128(%rip),%rdx,%r13        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x555555566707 *)
mull r13 rdx L0x55555556a838 rdx;
(* adcx   %rax,%r13                                #! PC = 0x555555566710 *)
adcs carry r13 r13 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %rbp,%r9                                 #! PC = 0x555555566716 *)
adcs overflow r9 r9 rbp overflow;
(* adox   %rbx,%r10                                #! PC = 0x55555556671c *)
adcs overflow r10 r10 rbx overflow;
(* adox   %rcx,%r11                                #! PC = 0x555555566722 *)
adcs overflow r11 r11 rcx overflow;
(* adox   %rdx,%r12                                #! PC = 0x555555566728 *)
adcs overflow r12 r12 rdx overflow;
(* adox   %rax,%r13                                #! PC = 0x55555556672e *)
adcs overflow r13 r13 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x38(%rdi),%rdx                          #! EA = L0x7fffffffd478; Value = 0xda78cb1490a2b796; PC = 0x555555566734 *)
mov rdx L0x7fffffffd478;
(* mulx   0x40c7(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x555555566738 *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555566741 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r14,%rbp                                #! PC = 0x555555566744 *)
adcs carry rbp rbp r14 carry;
(* adcx   %rbx,%r8                                 #! PC = 0x55555556674a *)
adcs carry r8 r8 rbx carry;
(* mulx   0x40b7(%rip),%r15,%rbx        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x555555566750 *)
mull rbx r15 L0x55555556a810 rdx;
(* adox   %r15,%r8                                 #! PC = 0x555555566759 *)
adcs overflow r8 r8 r15 overflow;
(* adcx   %rbx,%r9                                 #! PC = 0x55555556675f *)
adcs carry r9 r9 rbx carry;
(* mulx   0x40aa(%rip),%rbx,%r14        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x555555566765 *)
mull r14 rbx L0x55555556a818 rdx;
(* adox   %rbx,%r9                                 #! PC = 0x55555556676e *)
adcs overflow r9 r9 rbx overflow;
(* adcx   %r14,%r10                                #! PC = 0x555555566774 *)
adcs carry r10 r10 r14 carry;
(* mulx   0x409d(%rip),%r15,%r14        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x55555556677a *)
mull r14 r15 L0x55555556a820 rdx;
(* adcx   %r14,%r11                                #! PC = 0x555555566783 *)
adcs carry r11 r11 r14 carry;
(* mulx   0x4096(%rip),%rbx,%r14        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x555555566789 *)
mull r14 rbx L0x55555556a828 rdx;
(* adcx   %r14,%r12                                #! PC = 0x555555566792 *)
adcs carry r12 r12 r14 carry;
(* mulx   0x408f(%rip),%rcx,%r14        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x555555566798 *)
mull r14 rcx L0x55555556a830 rdx;
(* adcx   %r14,%r13                                #! PC = 0x5555555667a1 *)
adcs carry r13 r13 r14 carry;
(* mulx   0x4088(%rip),%rdx,%r14        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x5555555667a7 *)
mull r14 rdx L0x55555556a838 rdx;
(* adcx   %rax,%r14                                #! PC = 0x5555555667b0 *)
adcs carry r14 r14 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r10                                #! PC = 0x5555555667b6 *)
adcs overflow r10 r10 r15 overflow;
(* adox   %rbx,%r11                                #! PC = 0x5555555667bc *)
adcs overflow r11 r11 rbx overflow;
(* adox   %rcx,%r12                                #! PC = 0x5555555667c2 *)
adcs overflow r12 r12 rcx overflow;
(* adox   %rdx,%r13                                #! PC = 0x5555555667c8 *)
adcs overflow r13 r13 rdx overflow;
(* adox   %rax,%r14                                #! PC = 0x5555555667ce *)
adcs overflow r14 r14 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* xor    %r15,%r15                                #! PC = 0x5555555667d4 *)
mov r15 0@uint64;
clear carry;
clear overflow;
(* mov    0x30(%rsi),%rax                          #! EA = L0x7fffffffdb10; Value = 0xb960000000000000; PC = 0x5555555667d7 *)
mov rax L0x7fffffffdb10;
(* mov    0x38(%rsi),%rdx                          #! EA = L0x7fffffffdb18; Value = 0x450e7b3c4d712481; PC = 0x5555555667db *)
mov rdx L0x7fffffffdb18;
(* mov    0x40(%rsi),%rbx                          #! EA = L0x7fffffffdb20; Value = 0x30ab2f64056dc8af; PC = 0x5555555667df *)
mov rbx L0x7fffffffdb20;
(* add    0x48(%rdi),%rax                          #! EA = L0x7fffffffd488; Value = 0xee31b6bee16d964a; PC = 0x5555555667e3 *)
adds carry rax rax L0x7fffffffd488;
(* adc    0x50(%rdi),%rdx                          #! EA = L0x7fffffffd490; Value = 0x09841f99c5c0e2a7; PC = 0x5555555667e7 *)
adcs carry rdx rdx L0x7fffffffd490 carry;
(* adc    0x58(%rdi),%rbx                          #! EA = L0x7fffffffd498; Value = 0xf010024435838642; PC = 0x5555555667eb *)
adcs carry rbx rbx L0x7fffffffd498 carry;
(* mov    %rax,0x48(%rdi)                          #! EA = L0x7fffffffd488; PC = 0x5555555667ef *)
mov L0x7fffffffd488 rax;
(* mov    %rdx,0x50(%rdi)                          #! EA = L0x7fffffffd490; PC = 0x5555555667f3 *)
mov L0x7fffffffd490 rdx;
(* mov    %rbx,0x58(%rdi)                          #! EA = L0x7fffffffd498; PC = 0x5555555667f7 *)
mov L0x7fffffffd498 rbx;
(* adc    0x60(%rdi),%rbp                          #! EA = L0x7fffffffd4a0; Value = 0xb53776ba7fd25ebc; PC = 0x5555555667fb *)
adcs carry rbp rbp L0x7fffffffd4a0 carry;
(* adc    0x68(%rdi),%r8                           #! EA = L0x7fffffffd4a8; Value = 0x2f9762cf5fa8f393; PC = 0x5555555667ff *)
adcs carry r8 r8 L0x7fffffffd4a8 carry;
(* adc    0x70(%rdi),%r9                           #! EA = L0x7fffffffd4b0; Value = 0xaa042eeaf9333667; PC = 0x555555566803 *)
adcs carry r9 r9 L0x7fffffffd4b0 carry;
(* adc    0x78(%rdi),%r10                          #! EA = L0x7fffffffd4b8; Value = 0x9e4a991255b81a45; PC = 0x555555566807 *)
adcs carry r10 r10 L0x7fffffffd4b8 carry;
(* adc    0x80(%rdi),%r11                          #! EA = L0x7fffffffd4c0; Value = 0x79d3f516837fca10; PC = 0x55555556680b *)
adcs carry r11 r11 L0x7fffffffd4c0 carry;
(* adc    0x88(%rdi),%r12                          #! EA = L0x7fffffffd4c8; Value = 0x59734d66c6ce8c75; PC = 0x555555566812 *)
adcs carry r12 r12 L0x7fffffffd4c8 carry;
(* adc    0x90(%rdi),%r13                          #! EA = L0x7fffffffd4d0; Value = 0x68498d2b851aa43f; PC = 0x555555566819 *)
adcs carry r13 r13 L0x7fffffffd4d0 carry;
(* adc    0x98(%rdi),%r14                          #! EA = L0x7fffffffd4d8; Value = 0x75329cf2d0348da5; PC = 0x555555566820 *)
adcs carry r14 r14 L0x7fffffffd4d8 carry;
(* adc    0xa0(%rdi),%r15                          #! EA = L0x7fffffffd4e0; Value = 0xd9a404300f72ba54; PC = 0x555555566827 *)
adcs carry r15 r15 L0x7fffffffd4e0 carry;
(* mov    %rbp,(%rsi)                              #! EA = L0x7fffffffdae0; PC = 0x55555556682e *)
mov L0x7fffffffdae0 rbp;
(* mov    %r8,0x68(%rdi)                           #! EA = L0x7fffffffd4a8; PC = 0x555555566831 *)
mov L0x7fffffffd4a8 r8;
(* mov    %r9,0x70(%rdi)                           #! EA = L0x7fffffffd4b0; PC = 0x555555566835 *)
mov L0x7fffffffd4b0 r9;
(* mov    %r10,0x78(%rdi)                          #! EA = L0x7fffffffd4b8; PC = 0x555555566839 *)
mov L0x7fffffffd4b8 r10;
(* mov    %r11,0x80(%rdi)                          #! EA = L0x7fffffffd4c0; PC = 0x55555556683d *)
mov L0x7fffffffd4c0 r11;
(* mov    %r12,0x88(%rdi)                          #! EA = L0x7fffffffd4c8; PC = 0x555555566844 *)
mov L0x7fffffffd4c8 r12;
(* mov    %r13,0x90(%rdi)                          #! EA = L0x7fffffffd4d0; PC = 0x55555556684b *)
mov L0x7fffffffd4d0 r13;
(* mov    %r14,0x98(%rdi)                          #! EA = L0x7fffffffd4d8; PC = 0x555555566852 *)
mov L0x7fffffffd4d8 r14;
(* mov    %r15,0xa0(%rdi)                          #! EA = L0x7fffffffd4e0; PC = 0x555555566859 *)
mov L0x7fffffffd4e0 r15;
(* mov    0xa8(%rdi),%r12                          #! EA = L0x7fffffffd4e8; Value = 0x271d7352373fdf89; PC = 0x555555566860 *)
mov r12 L0x7fffffffd4e8;
(* mov    0xb0(%rdi),%r13                          #! EA = L0x7fffffffd4f0; Value = 0xeeec5ea600e03070; PC = 0x555555566867 *)
mov r13 L0x7fffffffd4f0;
(* mov    0xb8(%rdi),%r14                          #! EA = L0x7fffffffd4f8; Value = 0x00000000f0446e56; PC = 0x55555556686e *)
mov r14 L0x7fffffffd4f8;
(* adc    $0x0,%r12                                #! PC = 0x555555566875 *)
adcs carry r12 r12 0x0@uint64 carry;
(* adc    $0x0,%r13                                #! PC = 0x555555566879 *)
adcs carry r13 r13 0x0@uint64 carry;
(* adc    $0x0,%r14                                #! PC = 0x55555556687d *)
adcs carry r14 r14 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r12,0xa8(%rdi)                          #! EA = L0x7fffffffd4e8; PC = 0x555555566881 *)
mov L0x7fffffffd4e8 r12;
(* mov    %r13,0xb0(%rdi)                          #! EA = L0x7fffffffd4f0; PC = 0x555555566888 *)
mov L0x7fffffffd4f0 r13;
(* mov    %r14,0xb8(%rdi)                          #! EA = L0x7fffffffd4f8; PC = 0x55555556688f *)
mov L0x7fffffffd4f8 r14;
(* mov    0x40(%rdi),%rdx                          #! EA = L0x7fffffffd480; Value = 0x39c31c82f644cfd9; PC = 0x555555566896 *)
mov rdx L0x7fffffffd480;
(* mulx   0x3f65(%rip),%r9,%r8        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x55555556689a *)
mull r8 r9 L0x55555556a808 rdx;
(* mulx   0x3f64(%rip),%r10,%r13        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x5555555668a3 *)
mull r13 r10 L0x55555556a810 rdx;
(* mov    %r9,0x30(%rsi)                           #! EA = L0x7fffffffdb10; PC = 0x5555555668ac *)
mov L0x7fffffffdb10 r9;
(* xor    %rax,%rax                                #! PC = 0x5555555668b0 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x3f5c(%rip),%r12,%r14        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x5555555668b3 *)
mull r14 r12 L0x55555556a818 rdx;
(* adox   %r10,%r8                                 #! PC = 0x5555555668bc *)
adcs overflow r8 r8 r10 overflow;
(* adox   %r12,%r13                                #! PC = 0x5555555668c2 *)
adcs overflow r13 r13 r12 overflow;
(* mulx   0x3f4f(%rip),%r10,%r9        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x5555555668c8 *)
mull r9 r10 L0x55555556a820 rdx;
(* adox   %r10,%r14                                #! PC = 0x5555555668d1 *)
adcs overflow r14 r14 r10 overflow;
(* mulx   0x3f48(%rip),%r11,%r12        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x5555555668d7 *)
mull r12 r11 L0x55555556a828 rdx;
(* adox   %r11,%r9                                 #! PC = 0x5555555668e0 *)
adcs overflow r9 r9 r11 overflow;
(* mulx   0x3f41(%rip),%rbp,%r10        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x5555555668e6 *)
mull r10 rbp L0x55555556a830 rdx;
(* adox   %rbp,%r12                                #! PC = 0x5555555668ef *)
adcs overflow r12 r12 rbp overflow;
(* mulx   0x3f3a(%rip),%rbx,%r11        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x5555555668f5 *)
mull r11 rbx L0x55555556a838 rdx;
(* adox   %rbx,%r10                                #! PC = 0x5555555668fe *)
adcs overflow r10 r10 rbx overflow;
(* adox   %rax,%r11                                #! PC = 0x555555566904 *)
adcs overflow r11 r11 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd488; Value = 0xa791b6bee16d964a; PC = 0x55555556690a *)
mov rdx L0x7fffffffd488;
(* mulx   0x3ef1(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x55555556690e *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555566917 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %rbp,%r8                                 #! PC = 0x55555556691a *)
adcs carry r8 r8 rbp carry;
(* mov    %r8,0x38(%rsi)                           #! EA = L0x7fffffffdb18; PC = 0x555555566920 *)
mov L0x7fffffffdb18 r8;
(* adcx   %rbx,%r13                                #! PC = 0x555555566924 *)
adcs carry r13 r13 rbx carry;
(* mulx   0x3edd(%rip),%rbx,%rbp        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x55555556692a *)
mull rbp rbx L0x55555556a810 rdx;
(* adox   %rbx,%r13                                #! PC = 0x555555566933 *)
adcs overflow r13 r13 rbx overflow;
(* adcx   %rbp,%r14                                #! PC = 0x555555566939 *)
adcs carry r14 r14 rbp carry;
(* mulx   0x3ed0(%rip),%rbx,%r8        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x55555556693f *)
mull r8 rbx L0x55555556a818 rdx;
(* adox   %rbx,%r14                                #! PC = 0x555555566948 *)
adcs overflow r14 r14 rbx overflow;
(* adcx   %r9,%r8                                  #! PC = 0x55555556694e *)
adcs carry r8 r8 r9 carry;
(* mulx   0x3ec3(%rip),%rbp,%r9        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x555555566954 *)
mull r9 rbp L0x55555556a820 rdx;
(* adcx   %r12,%r9                                 #! PC = 0x55555556695d *)
adcs carry r9 r9 r12 carry;
(* mulx   0x3ebc(%rip),%rbx,%r12        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x555555566963 *)
mull r12 rbx L0x55555556a828 rdx;
(* adcx   %r12,%r10                                #! PC = 0x55555556696c *)
adcs carry r10 r10 r12 carry;
(* mulx   0x3eb5(%rip),%rcx,%r12        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x555555566972 *)
mull r12 rcx L0x55555556a830 rdx;
(* adcx   %r12,%r11                                #! PC = 0x55555556697b *)
adcs carry r11 r11 r12 carry;
(* mulx   0x3eae(%rip),%rdx,%r12        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x555555566981 *)
mull r12 rdx L0x55555556a838 rdx;
(* adcx   %rax,%r12                                #! PC = 0x55555556698a *)
adcs carry r12 r12 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %rbp,%r8                                 #! PC = 0x555555566990 *)
adcs overflow r8 r8 rbp overflow;
(* adox   %rbx,%r9                                 #! PC = 0x555555566996 *)
adcs overflow r9 r9 rbx overflow;
(* adox   %rcx,%r10                                #! PC = 0x55555556699c *)
adcs overflow r10 r10 rcx overflow;
(* adox   %rdx,%r11                                #! PC = 0x5555555669a2 *)
adcs overflow r11 r11 rdx overflow;
(* adox   %rax,%r12                                #! PC = 0x5555555669a8 *)
adcs overflow r12 r12 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x50(%rdi),%rdx                          #! EA = L0x7fffffffd490; Value = 0x4e929ad613320729; PC = 0x5555555669ae *)
mov rdx L0x7fffffffd490;
(* mulx   0x3e4d(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x5555555669b2 *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555669bb *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %rbp,%r13                                #! PC = 0x5555555669be *)
adcs carry r13 r13 rbp carry;
(* mov    %r13,0x40(%rsi)                          #! EA = L0x7fffffffdb20; PC = 0x5555555669c4 *)
mov L0x7fffffffdb20 r13;
(* adcx   %rbx,%r14                                #! PC = 0x5555555669c8 *)
adcs carry r14 r14 rbx carry;
(* mulx   0x3e39(%rip),%rbp,%rbx        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x5555555669ce *)
mull rbx rbp L0x55555556a810 rdx;
(* adox   %rbp,%r14                                #! PC = 0x5555555669d7 *)
adcs overflow r14 r14 rbp overflow;
(* adcx   %rbx,%r8                                 #! PC = 0x5555555669dd *)
adcs carry r8 r8 rbx carry;
(* mulx   0x3e2c(%rip),%rbx,%r13        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x5555555669e3 *)
mull r13 rbx L0x55555556a818 rdx;
(* adox   %rbx,%r8                                 #! PC = 0x5555555669ec *)
adcs overflow r8 r8 rbx overflow;
(* adcx   %r13,%r9                                 #! PC = 0x5555555669f2 *)
adcs carry r9 r9 r13 carry;
(* mulx   0x3e1f(%rip),%rbp,%r13        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x5555555669f8 *)
mull r13 rbp L0x55555556a820 rdx;
(* adcx   %r13,%r10                                #! PC = 0x555555566a01 *)
adcs carry r10 r10 r13 carry;
(* mulx   0x3e18(%rip),%rbx,%r13        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x555555566a07 *)
mull r13 rbx L0x55555556a828 rdx;
(* adcx   %r13,%r11                                #! PC = 0x555555566a10 *)
adcs carry r11 r11 r13 carry;
(* mulx   0x3e11(%rip),%rcx,%r13        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x555555566a16 *)
mull r13 rcx L0x55555556a830 rdx;
(* adcx   %r13,%r12                                #! PC = 0x555555566a1f *)
adcs carry r12 r12 r13 carry;
(* mulx   0x3e0a(%rip),%rdx,%r13        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x555555566a25 *)
mull r13 rdx L0x55555556a838 rdx;
(* adcx   %rax,%r13                                #! PC = 0x555555566a2e *)
adcs carry r13 r13 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %rbp,%r9                                 #! PC = 0x555555566a34 *)
adcs overflow r9 r9 rbp overflow;
(* adox   %rbx,%r10                                #! PC = 0x555555566a3a *)
adcs overflow r10 r10 rbx overflow;
(* adox   %rcx,%r11                                #! PC = 0x555555566a40 *)
adcs overflow r11 r11 rcx overflow;
(* adox   %rdx,%r12                                #! PC = 0x555555566a46 *)
adcs overflow r12 r12 rdx overflow;
(* adox   %rax,%r13                                #! PC = 0x555555566a4c *)
adcs overflow r13 r13 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x58(%rdi),%rdx                          #! EA = L0x7fffffffd498; Value = 0x20bb31a83af14ef1; PC = 0x555555566a52 *)
mov rdx L0x7fffffffd498;
(* mulx   0x3da9(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x555555566a56 *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555566a5f *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r14,%rbp                                #! PC = 0x555555566a62 *)
adcs carry rbp rbp r14 carry;
(* adcx   %rbx,%r8                                 #! PC = 0x555555566a68 *)
adcs carry r8 r8 rbx carry;
(* mulx   0x3d99(%rip),%r15,%rbx        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x555555566a6e *)
mull rbx r15 L0x55555556a810 rdx;
(* adox   %r15,%r8                                 #! PC = 0x555555566a77 *)
adcs overflow r8 r8 r15 overflow;
(* adcx   %rbx,%r9                                 #! PC = 0x555555566a7d *)
adcs carry r9 r9 rbx carry;
(* mulx   0x3d8c(%rip),%rbx,%r14        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x555555566a83 *)
mull r14 rbx L0x55555556a818 rdx;
(* adox   %rbx,%r9                                 #! PC = 0x555555566a8c *)
adcs overflow r9 r9 rbx overflow;
(* adcx   %r14,%r10                                #! PC = 0x555555566a92 *)
adcs carry r10 r10 r14 carry;
(* mulx   0x3d7f(%rip),%r15,%r14        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x555555566a98 *)
mull r14 r15 L0x55555556a820 rdx;
(* adcx   %r14,%r11                                #! PC = 0x555555566aa1 *)
adcs carry r11 r11 r14 carry;
(* mulx   0x3d78(%rip),%rbx,%r14        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x555555566aa7 *)
mull r14 rbx L0x55555556a828 rdx;
(* adcx   %r14,%r12                                #! PC = 0x555555566ab0 *)
adcs carry r12 r12 r14 carry;
(* mulx   0x3d71(%rip),%rcx,%r14        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x555555566ab6 *)
mull r14 rcx L0x55555556a830 rdx;
(* adcx   %r14,%r13                                #! PC = 0x555555566abf *)
adcs carry r13 r13 r14 carry;
(* mulx   0x3d6a(%rip),%rdx,%r14        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x555555566ac5 *)
mull r14 rdx L0x55555556a838 rdx;
(* adcx   %rax,%r14                                #! PC = 0x555555566ace *)
adcs carry r14 r14 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r10                                #! PC = 0x555555566ad4 *)
adcs overflow r10 r10 r15 overflow;
(* adox   %rbx,%r11                                #! PC = 0x555555566ada *)
adcs overflow r11 r11 rbx overflow;
(* adox   %rcx,%r12                                #! PC = 0x555555566ae0 *)
adcs overflow r12 r12 rcx overflow;
(* adox   %rdx,%r13                                #! PC = 0x555555566ae6 *)
adcs overflow r13 r13 rdx overflow;
(* adox   %rax,%r14                                #! PC = 0x555555566aec *)
adcs overflow r14 r14 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x30(%rsi),%rax                          #! EA = L0x7fffffffdb10; Value = 0xa330000000000000; PC = 0x555555566af2 *)
mov rax L0x7fffffffdb10;
(* mov    0x38(%rsi),%rdx                          #! EA = L0x7fffffffdb18; Value = 0xf3d087b274cb66f2; PC = 0x555555566af6 *)
mov rdx L0x7fffffffdb18;
(* mov    0x40(%rsi),%rbx                          #! EA = L0x7fffffffdb20; Value = 0xd9f9410de6713317; PC = 0x555555566afa *)
mov rbx L0x7fffffffdb20;
(* add    0x68(%rdi),%rax                          #! EA = L0x7fffffffd4a8; Value = 0x92a4df3964b24d80; PC = 0x555555566afe *)
adds carry rax rax L0x7fffffffd4a8;
(* adc    0x70(%rdi),%rdx                          #! EA = L0x7fffffffd4b0; Value = 0xf981f75b0685401f; PC = 0x555555566b02 *)
adcs carry rdx rdx L0x7fffffffd4b0 carry;
(* adc    0x78(%rdi),%rbx                          #! EA = L0x7fffffffd4b8; Value = 0xd22233fedff39a65; PC = 0x555555566b06 *)
adcs carry rbx rbx L0x7fffffffd4b8 carry;
(* mov    %rax,0x8(%rsi)                           #! EA = L0x7fffffffdae8; PC = 0x555555566b0a *)
mov L0x7fffffffdae8 rax;
(* mov    %rdx,0x10(%rsi)                          #! EA = L0x7fffffffdaf0; PC = 0x555555566b0e *)
mov L0x7fffffffdaf0 rdx;
(* mov    %rbx,0x18(%rsi)                          #! EA = L0x7fffffffdaf8; PC = 0x555555566b12 *)
mov L0x7fffffffdaf8 rbx;
(* adc    0x80(%rdi),%rbp                          #! EA = L0x7fffffffd4c0; Value = 0x23f240d150837cc6; PC = 0x555555566b16 *)
adcs carry rbp rbp L0x7fffffffd4c0 carry;
(* adc    0x88(%rdi),%r8                           #! EA = L0x7fffffffd4c8; Value = 0x81e0fba46d74152f; PC = 0x555555566b1d *)
adcs carry r8 r8 L0x7fffffffd4c8 carry;
(* adc    0x90(%rdi),%r9                           #! EA = L0x7fffffffd4d0; Value = 0x812ba3717b425a50; PC = 0x555555566b24 *)
adcs carry r9 r9 L0x7fffffffd4d0 carry;
(* adc    0x98(%rdi),%r10                          #! EA = L0x7fffffffd4d8; Value = 0x7532fc71544eee47; PC = 0x555555566b2b *)
adcs carry r10 r10 L0x7fffffffd4d8 carry;
(* adc    0xa0(%rdi),%r11                          #! EA = L0x7fffffffd4e0; Value = 0xd9a404300f72ba54; PC = 0x555555566b32 *)
adcs carry r11 r11 L0x7fffffffd4e0 carry;
(* adc    0xa8(%rdi),%r12                          #! EA = L0x7fffffffd4e8; Value = 0x271d7352373fdf89; PC = 0x555555566b39 *)
adcs carry r12 r12 L0x7fffffffd4e8 carry;
(* adc    0xb0(%rdi),%r13                          #! EA = L0x7fffffffd4f0; Value = 0xeeec5ea600e03070; PC = 0x555555566b40 *)
adcs carry r13 r13 L0x7fffffffd4f0 carry;
(* adc    0xb8(%rdi),%r14                          #! EA = L0x7fffffffd4f8; Value = 0x00000000f0446e56; PC = 0x555555566b47 *)
adcs carry r14 r14 L0x7fffffffd4f8 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rbp,0x20(%rsi)                          #! EA = L0x7fffffffdb00; PC = 0x555555566b4e *)
mov L0x7fffffffdb00 rbp;
(* mov    %r8,0x28(%rsi)                           #! EA = L0x7fffffffdb08; PC = 0x555555566b52 *)
mov L0x7fffffffdb08 r8;
(* mov    %r9,0x30(%rsi)                           #! EA = L0x7fffffffdb10; PC = 0x555555566b56 *)
mov L0x7fffffffdb10 r9;
(* mov    %r10,0x38(%rsi)                          #! EA = L0x7fffffffdb18; PC = 0x555555566b5a *)
mov L0x7fffffffdb18 r10;
(* mov    %r11,0x40(%rsi)                          #! EA = L0x7fffffffdb20; PC = 0x555555566b5e *)
mov L0x7fffffffdb20 r11;
(* mov    %r12,0x48(%rsi)                          #! EA = L0x7fffffffdb28; PC = 0x555555566b62 *)
mov L0x7fffffffdb28 r12;
(* mov    %r13,0x50(%rsi)                          #! EA = L0x7fffffffdb30; PC = 0x555555566b66 *)
mov L0x7fffffffdb30 r13;
(* mov    %r14,0x58(%rsi)                          #! EA = L0x7fffffffdb38; PC = 0x555555566b6a *)
mov L0x7fffffffdb38 r14;
(* #! <- SP = 0x7fffffffd318 *)
#! 0x7fffffffd318 = 0x7fffffffd318;
(* #retq                                           #! PC = 0x555555566b78 *)
#retq                                           #! 0x555555566b78 = 0x555555566b78;

ghost c0_rdc_00@uint64, c0_rdc_01@uint64, c0_rdc_02@uint64, c0_rdc_03@uint64, c0_rdc_04@uint64, c0_rdc_05@uint64,
      c0_rdc_06@uint64, c0_rdc_07@uint64, c0_rdc_08@uint64, c0_rdc_09@uint64, c0_rdc_10@uint64, c0_rdc_11@uint64 :
  and [
    c0_rdc_00 = L0x7fffffffdae0, c0_rdc_01 = L0x7fffffffdae8, c0_rdc_02 = L0x7fffffffdaf0,
    c0_rdc_03 = L0x7fffffffdaf8, c0_rdc_04 = L0x7fffffffdb00, c0_rdc_05 = L0x7fffffffdb08,
    c0_rdc_06 = L0x7fffffffdb10, c0_rdc_07 = L0x7fffffffdb18, c0_rdc_08 = L0x7fffffffdb20,
    c0_rdc_09 = L0x7fffffffdb28, c0_rdc_10 = L0x7fffffffdb30, c0_rdc_11 = L0x7fffffffdb38
  ]
  &&
  and [
    c0_rdc_00 = L0x7fffffffdae0, c0_rdc_01 = L0x7fffffffdae8, c0_rdc_02 = L0x7fffffffdaf0,
    c0_rdc_03 = L0x7fffffffdaf8, c0_rdc_04 = L0x7fffffffdb00, c0_rdc_05 = L0x7fffffffdb08,
    c0_rdc_06 = L0x7fffffffdb10, c0_rdc_07 = L0x7fffffffdb18, c0_rdc_08 = L0x7fffffffdb20,
    c0_rdc_09 = L0x7fffffffdb28, c0_rdc_10 = L0x7fffffffdb30, c0_rdc_11 = L0x7fffffffdb38
  ];

# Ecut 4
ecut eqmod (limbs 64 [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                       c0_rdc_00, c0_rdc_01, c0_rdc_02, c0_rdc_03, c0_rdc_04, c0_rdc_05, c0_rdc_06, c0_rdc_07, c0_rdc_08, c0_rdc_09, c0_rdc_10, c0_rdc_11 ])
           (
             (
               (limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ])
               +
               (limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ])
             )
             *
             (
               (limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ])
               -
               (limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ])
             )
           )
           (limbs 64 [ $p751_00, $p751_01, $p751_02, $p751_03, $p751_04, $p751_05, $p751_06, $p751_07, $p751_08, $p751_09, $p751_10, $p751_11 ])
     prove with [all ghosts, cuts [0,2]];

// fpmul_mont(t3, a[1], c[1]);                      // c1 = 2a0*a1
(* xor    %ecx,%ecx                                #! PC = 0x555555558cff *)
mov rcx 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x555555558d01 *)
mov rdx 0@uint64;
(* mov    %edx,%eax                                #! PC = 0x555555558d03 *)
assert true && rdx <=u 0x0000000100000000@64;
mov rax rdx;
(* add    $0x20,%edx                               #! PC = 0x555555558d05 *)
add rdx rdx 0x20@uint64;
assert true && rdx <=u 0x0000000100000000@64;
(* mov    %rcx,0x120(%rsp,%rax,1)                  #! EA = L0x7fffffffd440; PC = 0x555555558d08 *)
mov L0x7fffffffd440 rcx;
(* mov    %rcx,0x128(%rsp,%rax,1)                  #! EA = L0x7fffffffd448; PC = 0x555555558d10 *)
mov L0x7fffffffd448 rcx;
(* mov    %rcx,0x130(%rsp,%rax,1)                  #! EA = L0x7fffffffd450; PC = 0x555555558d18 *)
mov L0x7fffffffd450 rcx;
(* mov    %rcx,0x138(%rsp,%rax,1)                  #! EA = L0x7fffffffd458; PC = 0x555555558d20 *)
mov L0x7fffffffd458 rcx;
(* #jb     0x555555558d03 <fp2sqr751_mont+195>     #! PC = 0x555555558d2e *)
#jb     0x555555558d03 <fp2sqr751_mont+195>     #! 0x555555558d2e = 0x555555558d2e;
(* mov    %edx,%eax                                #! PC = 0x555555558d03 *)
assert true && rdx <=u 0x0000000100000000@64;
mov rax rdx;
(* add    $0x20,%edx                               #! PC = 0x555555558d05 *)
add rdx rdx 0x20@uint64;
assert true && rdx <=u 0x0000000100000000@64;
(* mov    %rcx,0x120(%rsp,%rax,1)                  #! EA = L0x7fffffffd460; PC = 0x555555558d08 *)
mov L0x7fffffffd460 rcx;
(* mov    %rcx,0x128(%rsp,%rax,1)                  #! EA = L0x7fffffffd468; PC = 0x555555558d10 *)
mov L0x7fffffffd468 rcx;
(* mov    %rcx,0x130(%rsp,%rax,1)                  #! EA = L0x7fffffffd470; PC = 0x555555558d18 *)
mov L0x7fffffffd470 rcx;
(* mov    %rcx,0x138(%rsp,%rax,1)                  #! EA = L0x7fffffffd478; PC = 0x555555558d20 *)
mov L0x7fffffffd478 rcx;
(* #jb     0x555555558d03 <fp2sqr751_mont+195>     #! PC = 0x555555558d2e *)
#jb     0x555555558d03 <fp2sqr751_mont+195>     #! 0x555555558d2e = 0x555555558d2e;
(* mov    %edx,%eax                                #! PC = 0x555555558d03 *)
assert true && rdx <=u 0x0000000100000000@64;
mov rax rdx;
(* add    $0x20,%edx                               #! PC = 0x555555558d05 *)
add rdx rdx 0x20@uint64;
assert true && rdx <=u 0x0000000100000000@64;
(* mov    %rcx,0x120(%rsp,%rax,1)                  #! EA = L0x7fffffffd480; PC = 0x555555558d08 *)
mov L0x7fffffffd480 rcx;
(* mov    %rcx,0x128(%rsp,%rax,1)                  #! EA = L0x7fffffffd488; PC = 0x555555558d10 *)
mov L0x7fffffffd488 rcx;
(* mov    %rcx,0x130(%rsp,%rax,1)                  #! EA = L0x7fffffffd490; PC = 0x555555558d18 *)
mov L0x7fffffffd490 rcx;
(* mov    %rcx,0x138(%rsp,%rax,1)                  #! EA = L0x7fffffffd498; PC = 0x555555558d20 *)
mov L0x7fffffffd498 rcx;
(* #jb     0x555555558d03 <fp2sqr751_mont+195>     #! PC = 0x555555558d2e *)
#jb     0x555555558d03 <fp2sqr751_mont+195>     #! 0x555555558d2e = 0x555555558d2e;
(* mov    %edx,%eax                                #! PC = 0x555555558d03 *)
assert true && rdx <=u 0x0000000100000000@64;
mov rax rdx;
(* add    $0x20,%edx                               #! PC = 0x555555558d05 *)
add rdx rdx 0x20@uint64;
assert true && rdx <=u 0x0000000100000000@64;
(* mov    %rcx,0x120(%rsp,%rax,1)                  #! EA = L0x7fffffffd4a0; PC = 0x555555558d08 *)
mov L0x7fffffffd4a0 rcx;
(* mov    %rcx,0x128(%rsp,%rax,1)                  #! EA = L0x7fffffffd4a8; PC = 0x555555558d10 *)
mov L0x7fffffffd4a8 rcx;
(* mov    %rcx,0x130(%rsp,%rax,1)                  #! EA = L0x7fffffffd4b0; PC = 0x555555558d18 *)
mov L0x7fffffffd4b0 rcx;
(* mov    %rcx,0x138(%rsp,%rax,1)                  #! EA = L0x7fffffffd4b8; PC = 0x555555558d20 *)
mov L0x7fffffffd4b8 rcx;
(* #jb     0x555555558d03 <fp2sqr751_mont+195>     #! PC = 0x555555558d2e *)
#jb     0x555555558d03 <fp2sqr751_mont+195>     #! 0x555555558d2e = 0x555555558d2e;
(* mov    %edx,%eax                                #! PC = 0x555555558d03 *)
assert true && rdx <=u 0x0000000100000000@64;
mov rax rdx;
(* add    $0x20,%edx                               #! PC = 0x555555558d05 *)
add rdx rdx 0x20@uint64;
assert true && rdx <=u 0x0000000100000000@64;
(* mov    %rcx,0x120(%rsp,%rax,1)                  #! EA = L0x7fffffffd4c0; PC = 0x555555558d08 *)
mov L0x7fffffffd4c0 rcx;
(* mov    %rcx,0x128(%rsp,%rax,1)                  #! EA = L0x7fffffffd4c8; PC = 0x555555558d10 *)
mov L0x7fffffffd4c8 rcx;
(* mov    %rcx,0x130(%rsp,%rax,1)                  #! EA = L0x7fffffffd4d0; PC = 0x555555558d18 *)
mov L0x7fffffffd4d0 rcx;
(* mov    %rcx,0x138(%rsp,%rax,1)                  #! EA = L0x7fffffffd4d8; PC = 0x555555558d20 *)
mov L0x7fffffffd4d8 rcx;
(* #jb     0x555555558d03 <fp2sqr751_mont+195>     #! PC = 0x555555558d2e *)
#jb     0x555555558d03 <fp2sqr751_mont+195>     #! 0x555555558d2e = 0x555555558d2e;
(* mov    %edx,%eax                                #! PC = 0x555555558d03 *)
assert true && rdx <=u 0x0000000100000000@64;
mov rax rdx;
(* add    $0x20,%edx                               #! PC = 0x555555558d05 *)
add rdx rdx 0x20@uint64;
assert true && rdx <=u 0x0000000100000000@64;
(* mov    %rcx,0x120(%rsp,%rax,1)                  #! EA = L0x7fffffffd4e0; PC = 0x555555558d08 *)
mov L0x7fffffffd4e0 rcx;
(* mov    %rcx,0x128(%rsp,%rax,1)                  #! EA = L0x7fffffffd4e8; PC = 0x555555558d10 *)
mov L0x7fffffffd4e8 rcx;
(* mov    %rcx,0x130(%rsp,%rax,1)                  #! EA = L0x7fffffffd4f0; PC = 0x555555558d18 *)
mov L0x7fffffffd4f0 rcx;
(* mov    %rcx,0x138(%rsp,%rax,1)                  #! EA = L0x7fffffffd4f8; PC = 0x555555558d20 *)
mov L0x7fffffffd4f8 rcx;
(* #jb     0x555555558d03 <fp2sqr751_mont+195>     #! PC = 0x555555558d2e *)
#jb     0x555555558d03 <fp2sqr751_mont+195>     #! 0x555555558d2e = 0x555555558d2e;
(* mov    $0xc,%ecx                                #! PC = 0x555555558d30 *)
assert true && 0xc@64 <=u 0x0000000100000000@64;
mov rcx 0xc@uint64;
(* mov    %rbp,%rdx                                #! PC = 0x555555558d35 *)
mov rdx rbp;
(* mov    %r12,%rsi                                #! PC = 0x555555558d38 *)
mov rsi r12;
(* mov    %r13,%rdi                                #! PC = 0x555555558d3b *)
mov rdi r13;
(* #callq  0x5555555650c0 <mp_mul>                 #! PC = 0x555555558d3e *)
#callq  0x5555555650c0 <mp_mul>                 #! 0x555555558d3e = 0x555555558d3e;
(* #! -> SP = 0x7fffffffd318 *)
#! 0x7fffffffd318 = 0x7fffffffd318;
(* #jmpq   0x555555565653 <mul751_asm>             #! PC = 0x5555555650c4 *)
#jmpq   0x555555565653 <mul751_asm>             #! 0x5555555650c4 = 0x5555555650c4;
(* mov    %rdx,%rcx                                #! PC = 0x55555556565b *)
mov rcx rdx;
(* xor    %rax,%rax                                #! PC = 0x55555556565e *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffd3e0; Value = 0xe04bb377d76c3d26; PC = 0x555555565661 *)
mov r8 L0x7fffffffd3e0;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffd3e8; Value = 0x7853bb06e1494caa; PC = 0x555555565664 *)
mov r9 L0x7fffffffd3e8;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffd3f0; Value = 0x3eeed9a39500c1f5; PC = 0x555555565668 *)
mov r10 L0x7fffffffd3f0;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffd3f8; Value = 0x0bfc5de5dd3679bf; PC = 0x55555556566c *)
mov r11 L0x7fffffffd3f8;
(* mov    0x20(%rdi),%r12                          #! EA = L0x7fffffffd400; Value = 0xc865266e4ec41e24; PC = 0x555555565670 *)
mov r12 L0x7fffffffd400;
(* mov    0x28(%rdi),%r13                          #! EA = L0x7fffffffd408; Value = 0x659691236d7c3dda; PC = 0x555555565674 *)
mov r13 L0x7fffffffd408;
(* sub    $0x98,%rsp                               #! PC = 0x55555556567a *)
subb carry rsp rsp 0x98@uint64;
(* add    0x30(%rdi),%r8                           #! EA = L0x7fffffffd410; Value = 0xde76a7073bf25951; PC = 0x555555565681 *)
adds carry r8 r8 L0x7fffffffd410;
(* adc    0x38(%rdi),%r9                           #! EA = L0x7fffffffd418; Value = 0x41a65e6c21123628; PC = 0x555555565685 *)
adcs carry r9 r9 L0x7fffffffd418 carry;
(* adc    0x40(%rdi),%r10                          #! EA = L0x7fffffffd420; Value = 0xe152d7aa6735255e; PC = 0x555555565689 *)
adcs carry r10 r10 L0x7fffffffd420 carry;
(* adc    0x48(%rdi),%r11                          #! EA = L0x7fffffffd428; Value = 0xd413251bf9158e56; PC = 0x55555556568d *)
adcs carry r11 r11 L0x7fffffffd428 carry;
(* adc    0x50(%rdi),%r12                          #! EA = L0x7fffffffd430; Value = 0xb4fc1898ce07250c; PC = 0x555555565691 *)
adcs carry r12 r12 L0x7fffffffd430 carry;
(* adc    0x58(%rdi),%r13                          #! EA = L0x7fffffffd438; Value = 0x0000649424b85199; PC = 0x555555565695 *)
adcs carry r13 r13 L0x7fffffffd438 carry;
ghost carry_t3h_add_t3l@uint1 : carry_t3h_add_t3l = carry && carry_t3h_add_t3l = carry;
(* sbb    $0x0,%rax                                #! PC = 0x555555565699 *)
sbbs carry rax rax 0x0@uint64 carry;
assert true && carry_t3h_add_t3l = carry;
assume carry_t3h_add_t3l = carry && true;
(* mov    %r8,(%rsp)                               #! EA = L0x7fffffffd250; PC = 0x55555556569d *)
mov L0x7fffffffd250 r8;
(* mov    %r9,0x8(%rsp)                            #! EA = L0x7fffffffd258; PC = 0x5555555656a1 *)
mov L0x7fffffffd258 r9;
(* mov    %r10,0x10(%rsp)                          #! EA = L0x7fffffffd260; PC = 0x5555555656a6 *)
mov L0x7fffffffd260 r10;
(* mov    %r11,0x18(%rsp)                          #! EA = L0x7fffffffd268; PC = 0x5555555656ab *)
mov L0x7fffffffd268 r11;
(* mov    %r12,0x20(%rsp)                          #! EA = L0x7fffffffd270; PC = 0x5555555656b0 *)
mov L0x7fffffffd270 r12;
(* mov    %r13,0x28(%rsp)                          #! EA = L0x7fffffffd278; PC = 0x5555555656b5 *)
mov L0x7fffffffd278 r13;

ghost t3h_add_t3l_0@uint64, t3h_add_t3l_1@uint64, t3h_add_t3l_2@uint64, t3h_add_t3l_3@uint64, t3h_add_t3l_4@uint64, t3h_add_t3l_5@uint64 :
  and [
    t3h_add_t3l_0 = L0x7fffffffd250,
    t3h_add_t3l_1 = L0x7fffffffd258,
    t3h_add_t3l_2 = L0x7fffffffd260,
    t3h_add_t3l_3 = L0x7fffffffd268,
    t3h_add_t3l_4 = L0x7fffffffd270,
    t3h_add_t3l_5 = L0x7fffffffd278
  ]
  &&
  and [
    t3h_add_t3l_0 = L0x7fffffffd250,
    t3h_add_t3l_1 = L0x7fffffffd258,
    t3h_add_t3l_2 = L0x7fffffffd260,
    t3h_add_t3l_3 = L0x7fffffffd268,
    t3h_add_t3l_4 = L0x7fffffffd270,
    t3h_add_t3l_5 = L0x7fffffffd278
  ];

(* xor    %rdx,%rdx                                #! PC = 0x5555555656ba *)
mov rdx 0@uint64;
clear carry;
clear overflow;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffda80; Value = 0xa98128db284259e7; PC = 0x5555555656bd *)
mov r8 L0x7fffffffda80;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffda88; Value = 0xc9da63fce08e0f05; PC = 0x5555555656c0 *)
mov r9 L0x7fffffffda88;
(* mov    0x10(%rsi),%rbx                          #! EA = L0x7fffffffda90; Value = 0xf44298c9e7f6ccbe; PC = 0x5555555656c4 *)
mov rbx L0x7fffffffda90;
(* mov    0x18(%rsi),%rbp                          #! EA = L0x7fffffffda98; Value = 0xc29ea1fdb4e0ac33; PC = 0x5555555656c8 *)
mov rbp L0x7fffffffda98;
(* mov    0x20(%rsi),%r14                          #! EA = L0x7fffffffdaa0; Value = 0xb2a4acf0365da5de; PC = 0x5555555656cc *)
mov r14 L0x7fffffffdaa0;
(* mov    0x28(%rsi),%r15                          #! EA = L0x7fffffffdaa8; Value = 0xea74acb25e04c35f; PC = 0x5555555656d0 *)
mov r15 L0x7fffffffdaa8;
(* add    0x30(%rsi),%r8                           #! EA = L0x7fffffffdab0; Value = 0x20d8e525d66d928e; PC = 0x5555555656d4 *)
adds carry r8 r8 L0x7fffffffdab0;
(* adc    0x38(%rsi),%r9                           #! EA = L0x7fffffffdab8; Value = 0xb855deb0c3c406b1; PC = 0x5555555656d8 *)
adcs carry r9 r9 L0x7fffffffdab8 carry;
(* adc    0x40(%rsi),%rbx                          #! EA = L0x7fffffffdac0; Value = 0x18c6c043bca5fed2; PC = 0x5555555656dc *)
adcs carry rbx rbx L0x7fffffffdac0 carry;
(* adc    0x48(%rsi),%rbp                          #! EA = L0x7fffffffdac8; Value = 0x87b7a301489efc15; PC = 0x5555555656e0 *)
adcs carry rbp rbp L0x7fffffffdac8 carry;
(* adc    0x50(%rsi),%r14                          #! EA = L0x7fffffffdad0; Value = 0x6ef4efa68271a705; PC = 0x5555555656e4 *)
adcs carry r14 r14 L0x7fffffffdad0 carry;
(* adc    0x58(%rsi),%r15                          #! EA = L0x7fffffffdad8; Value = 0x00006b1db5fa24ac; PC = 0x5555555656e8 *)
adcs carry r15 r15 L0x7fffffffdad8 carry;
ghost carry_a1h_add_a1l@uint1 : carry_a1h_add_a1l = carry && carry_a1h_add_a1l = carry;
(* sbb    $0x0,%rdx                                #! PC = 0x5555555656ec *)
sbbs carry rdx rdx 0x0@uint64 carry;
assert true && carry_a1h_add_a1l = carry;
assume carry_a1h_add_a1l = carry && true;
(* mov    %r8,0x30(%rsp)                           #! EA = L0x7fffffffd280; PC = 0x5555555656f0 *)
mov L0x7fffffffd280 r8;
(* mov    %r9,0x38(%rsp)                           #! EA = L0x7fffffffd288; PC = 0x5555555656f5 *)
mov L0x7fffffffd288 r9;
(* mov    %rbx,0x40(%rsp)                          #! EA = L0x7fffffffd290; PC = 0x5555555656fa *)
mov L0x7fffffffd290 rbx;
(* mov    %rbp,0x48(%rsp)                          #! EA = L0x7fffffffd298; PC = 0x5555555656ff *)
mov L0x7fffffffd298 rbp;
(* mov    %r14,0x50(%rsp)                          #! EA = L0x7fffffffd2a0; PC = 0x555555565704 *)
mov L0x7fffffffd2a0 r14;
(* mov    %r15,0x58(%rsp)                          #! EA = L0x7fffffffd2a8; PC = 0x555555565709 *)
mov L0x7fffffffd2a8 r15;

ghost a1h_add_a1l_0@uint64, a1h_add_a1l_1@uint64, a1h_add_a1l_2@uint64, a1h_add_a1l_3@uint64, a1h_add_a1l_4@uint64, a1h_add_a1l_5@uint64 :
  and [
    a1h_add_a1l_0 = L0x7fffffffd280,
    a1h_add_a1l_1 = L0x7fffffffd288,
    a1h_add_a1l_2 = L0x7fffffffd290,
    a1h_add_a1l_3 = L0x7fffffffd298,
    a1h_add_a1l_4 = L0x7fffffffd2a0,
    a1h_add_a1l_5 = L0x7fffffffd2a8
  ]
  &&
  and [
    a1h_add_a1l_0 = L0x7fffffffd280,
    a1h_add_a1l_1 = L0x7fffffffd288,
    a1h_add_a1l_2 = L0x7fffffffd290,
    a1h_add_a1l_3 = L0x7fffffffd298,
    a1h_add_a1l_4 = L0x7fffffffd2a0,
    a1h_add_a1l_5 = L0x7fffffffd2a8
  ];

(* and    %rax,%r8                                 #! PC = 0x55555556570e *)
and uint64 r8 rax r8;
(* and    %rax,%r9                                 #! PC = 0x555555565711 *)
and uint64 r9 rax r9;
(* and    %rax,%rbx                                #! PC = 0x555555565714 *)
and uint64 rbx rax rbx;
(* and    %rax,%rbp                                #! PC = 0x555555565717 *)
and uint64 rbp rax rbp;
(* and    %rax,%r14                                #! PC = 0x55555556571a *)
and uint64 r14 rax r14;
(* and    %rax,%r15                                #! PC = 0x55555556571d *)
and uint64 r15 rax r15;
(* mov    %r8,(%rcx)                               #! EA = L0x7fffffffd440; PC = 0x555555565720 *)
mov L0x7fffffffd440 r8;
(* mov    %r9,0x8(%rcx)                            #! EA = L0x7fffffffd448; PC = 0x555555565723 *)
mov L0x7fffffffd448 r9;

assert true && and [
  limbs 64 [ r8, r9, rbx, rbp, r14, r15, 0@64 ]
  =
  uext carry_t3h_add_t3l 447 * (limbs 64 [ a1h_add_a1l_0, a1h_add_a1l_1, a1h_add_a1l_2, a1h_add_a1l_3, a1h_add_a1l_4, a1h_add_a1l_5, 0@64 ])
];
assume and [
  limbs 64 [ r8, r9, rbx, rbp, r14, r15 ]
  =
  carry_t3h_add_t3l * (limbs 64 [ a1h_add_a1l_0, a1h_add_a1l_1, a1h_add_a1l_2, a1h_add_a1l_3, a1h_add_a1l_4, a1h_add_a1l_5 ])
] && true;

(* mov    (%rsp),%r8                               #! EA = L0x7fffffffd250; Value = 0xbec25a7f135e9677; PC = 0x555555565727 *)
mov r8 L0x7fffffffd250;
(* mov    0x8(%rsp),%r9                            #! EA = L0x7fffffffd258; Value = 0xb9fa1973025b82d3; PC = 0x55555556572b *)
mov r9 L0x7fffffffd258;
(* and    %rdx,%r8                                 #! PC = 0x555555565730 *)
and uint64 r8 rdx r8;
(* and    %rdx,%r9                                 #! PC = 0x555555565733 *)
and uint64 r9 rdx r9;
(* and    %rdx,%r10                                #! PC = 0x555555565736 *)
and uint64 r10 rdx r10;
(* and    %rdx,%r11                                #! PC = 0x555555565739 *)
and uint64 r11 rdx r11;
(* and    %rdx,%r12                                #! PC = 0x55555556573c *)
and uint64 r12 rdx r12;
(* and    %rdx,%r13                                #! PC = 0x55555556573f *)
and uint64 r13 rdx r13;

assert true && and [
  limbs 64 [ r8, r9, r10, r11, r12, r13, 0@64 ]
  =
  uext carry_a1h_add_a1l 447 * (limbs 64 [ t3h_add_t3l_0, t3h_add_t3l_1, t3h_add_t3l_2, t3h_add_t3l_3, t3h_add_t3l_4, t3h_add_t3l_5, 0@64 ])
];
assume and [
  limbs 64 [ r8, r9, r10, r11, r12, r13 ]
  =
  carry_a1h_add_a1l * (limbs 64 [ t3h_add_t3l_0, t3h_add_t3l_1, t3h_add_t3l_2, t3h_add_t3l_3, t3h_add_t3l_4, t3h_add_t3l_5 ])
] && true;

(* mov    (%rcx),%rax                              #! EA = L0x7fffffffd440; Value = 0x0000000000000000; PC = 0x555555565742 *)
mov rax L0x7fffffffd440;
(* mov    0x8(%rcx),%rdx                           #! EA = L0x7fffffffd448; Value = 0x0000000000000000; PC = 0x555555565745 *)
mov rdx L0x7fffffffd448;
(* add    %rax,%r8                                 #! PC = 0x555555565749 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x55555556574c *)
adcs carry r9 r9 rdx@uint64 carry;
(* adc    %rbx,%r10                                #! PC = 0x55555556574f *)
adcs carry r10 r10 rbx@uint64 carry;
(* adc    %rbp,%r11                                #! PC = 0x555555565752 *)
adcs carry r11 r11 rbp@uint64 carry;
(* adc    %r14,%r12                                #! PC = 0x555555565755 *)
adcs carry r12 r12 r14@uint64 carry;
(* adc    %r15,%r13                                #! PC = 0x555555565758 *)
adcs carry r13 r13 r15@uint64 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r8,0x60(%rsp)                           #! EA = L0x7fffffffd2b0; PC = 0x55555556575b *)
mov L0x7fffffffd2b0 r8;
(* mov    %r9,0x68(%rsp)                           #! EA = L0x7fffffffd2b8; PC = 0x555555565760 *)
mov L0x7fffffffd2b8 r9;
(* mov    %r10,0x70(%rsp)                          #! EA = L0x7fffffffd2c0; PC = 0x555555565765 *)
mov L0x7fffffffd2c0 r10;
(* mov    %r11,0x78(%rsp)                          #! EA = L0x7fffffffd2c8; PC = 0x55555556576a *)
mov L0x7fffffffd2c8 r11;

ghost m_t3h_t3l_a1h_a1l_0@uint64, m_t3h_t3l_a1h_a1l_1@uint64, m_t3h_t3l_a1h_a1l_2@uint64, m_t3h_t3l_a1h_a1l_3@uint64, m_t3h_t3l_a1h_a1l_4@uint64, m_t3h_t3l_a1h_a1l_5@uint64 :
  and [
    m_t3h_t3l_a1h_a1l_0 = r8,
    m_t3h_t3l_a1h_a1l_1 = r9,
    m_t3h_t3l_a1h_a1l_2 = r10,
    m_t3h_t3l_a1h_a1l_3 = r11,
    m_t3h_t3l_a1h_a1l_4 = r12,
    m_t3h_t3l_a1h_a1l_5 = r13
  ]
  &&
  and [
    m_t3h_t3l_a1h_a1l_0 = r8,
    m_t3h_t3l_a1h_a1l_1 = r9,
    m_t3h_t3l_a1h_a1l_2 = r10,
    m_t3h_t3l_a1h_a1l_3 = r11,
    m_t3h_t3l_a1h_a1l_4 = r12,
    m_t3h_t3l_a1h_a1l_5 = r13
  ];

(* mov    (%rdi),%rdx                              #! EA = L0x7fffffffd3e0; Value = 0xe04bb377d76c3d26; PC = 0x55555556576f *)
mov rdx L0x7fffffffd3e0;
(* mulx   (%rsi),%r9,%r8                           #! EA = L0x7fffffffda80; Value = 0xa98128db284259e7; PC = 0x555555565772 *)
mull r8 r9 L0x7fffffffda80 rdx;
(* mulx   0x8(%rsi),%r11,%r10                      #! EA = L0x7fffffffda88; Value = 0xc9da63fce08e0f05; PC = 0x555555565777 *)
mull r10 r11 L0x7fffffffda88 rdx;
(* mov    %r9,(%rcx)                               #! EA = L0x7fffffffd440; PC = 0x55555556577d *)
mov L0x7fffffffd440 r9;
(* xor    %rax,%rax                                #! PC = 0x555555565780 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x10(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffda90; Value = 0xf44298c9e7f6ccbe; PC = 0x555555565783 *)
mull rbx rbp L0x7fffffffda90 rdx;
(* adox   %r11,%r8                                 #! PC = 0x555555565789 *)
adcs overflow r8 r8 r11 overflow;
(* adox   %rbp,%r10                                #! PC = 0x55555556578f *)
adcs overflow r10 r10 rbp overflow;
(* mulx   0x18(%rsi),%r11,%r9                      #! EA = L0x7fffffffda98; Value = 0xc29ea1fdb4e0ac33; PC = 0x555555565795 *)
mull r9 r11 L0x7fffffffda98 rdx;
(* adox   %r11,%rbx                                #! PC = 0x55555556579b *)
adcs overflow rbx rbx r11 overflow;
(* mulx   0x20(%rsi),%r14,%rbp                     #! EA = L0x7fffffffdaa0; Value = 0xb2a4acf0365da5de; PC = 0x5555555657a1 *)
mull rbp r14 L0x7fffffffdaa0 rdx;
(* adox   %r14,%r9                                 #! PC = 0x5555555657a7 *)
adcs overflow r9 r9 r14 overflow;
(* mulx   0x28(%rsi),%r15,%r11                     #! EA = L0x7fffffffdaa8; Value = 0xea74acb25e04c35f; PC = 0x5555555657ad *)
mull r11 r15 L0x7fffffffdaa8 rdx;
(* adox   %r15,%rbp                                #! PC = 0x5555555657b3 *)
adcs overflow rbp rbp r15 overflow;
(* adox   %rax,%r11                                #! PC = 0x5555555657b9 *)
adcs overflow r11 r11 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x8(%rdi),%rdx                           #! EA = L0x7fffffffd3e8; Value = 0x7853bb06e1494caa; PC = 0x5555555657bf *)
mov rdx L0x7fffffffd3e8;
(* mulx   (%rsi),%r15,%r14                         #! EA = L0x7fffffffda80; Value = 0xa98128db284259e7; PC = 0x5555555657c3 *)
mull r14 r15 L0x7fffffffda80 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555657c8 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r8                                 #! PC = 0x5555555657cb *)
adcs carry r8 r8 r15 carry;
(* mov    %r8,0x8(%rcx)                            #! EA = L0x7fffffffd448; PC = 0x5555555657d1 *)
mov L0x7fffffffd448 r8;
(* adcx   %r14,%r10                                #! PC = 0x5555555657d5 *)
adcs carry r10 r10 r14 carry;
(* mulx   0x8(%rsi),%r15,%r14                      #! EA = L0x7fffffffda88; Value = 0xc9da63fce08e0f05; PC = 0x5555555657db *)
mull r14 r15 L0x7fffffffda88 rdx;
(* adox   %r15,%r10                                #! PC = 0x5555555657e1 *)
adcs overflow r10 r10 r15 overflow;
(* adcx   %r14,%rbx                                #! PC = 0x5555555657e7 *)
adcs carry rbx rbx r14 carry;
(* mulx   0x10(%rsi),%r14,%r8                      #! EA = L0x7fffffffda90; Value = 0xf44298c9e7f6ccbe; PC = 0x5555555657ed *)
mull r8 r14 L0x7fffffffda90 rdx;
(* adox   %r14,%rbx                                #! PC = 0x5555555657f3 *)
adcs overflow rbx rbx r14 overflow;
(* adcx   %r9,%r8                                  #! PC = 0x5555555657f9 *)
adcs carry r8 r8 r9 carry;
(* mulx   0x18(%rsi),%r15,%r9                      #! EA = L0x7fffffffda98; Value = 0xc29ea1fdb4e0ac33; PC = 0x5555555657ff *)
mull r9 r15 L0x7fffffffda98 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555565805 *)
adcs carry r9 r9 rbp carry;
(* mulx   0x20(%rsi),%r14,%rbp                     #! EA = L0x7fffffffdaa0; Value = 0xb2a4acf0365da5de; PC = 0x55555556580b *)
mull rbp r14 L0x7fffffffdaa0 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555565811 *)
adcs carry r11 r11 rbp carry;
(* mulx   0x28(%rsi),%rdx,%rbp                     #! EA = L0x7fffffffdaa8; Value = 0xea74acb25e04c35f; PC = 0x555555565817 *)
mull rbp rdx L0x7fffffffdaa8 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x55555556581d *)
adcs carry rbp rbp rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r8                                 #! PC = 0x555555565823 *)
adcs overflow r8 r8 r15 overflow;
(* adox   %r14,%r9                                 #! PC = 0x555555565829 *)
adcs overflow r9 r9 r14 overflow;
(* adox   %rdx,%r11                                #! PC = 0x55555556582f *)
adcs overflow r11 r11 rdx overflow;
(* adox   %rax,%rbp                                #! PC = 0x555555565835 *)
adcs overflow rbp rbp rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x10(%rdi),%rdx                          #! EA = L0x7fffffffd3f0; Value = 0x3eeed9a39500c1f5; PC = 0x55555556583b *)
mov rdx L0x7fffffffd3f0;
(* mulx   (%rsi),%r15,%r14                         #! EA = L0x7fffffffda80; Value = 0xa98128db284259e7; PC = 0x55555556583f *)
mull r14 r15 L0x7fffffffda80 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565844 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r10                                #! PC = 0x555555565847 *)
adcs carry r10 r10 r15 carry;
(* mov    %r10,0x10(%rcx)                          #! EA = L0x7fffffffd450; PC = 0x55555556584d *)
mov L0x7fffffffd450 r10;
(* adcx   %r14,%rbx                                #! PC = 0x555555565851 *)
adcs carry rbx rbx r14 carry;
(* mulx   0x8(%rsi),%r15,%r14                      #! EA = L0x7fffffffda88; Value = 0xc9da63fce08e0f05; PC = 0x555555565857 *)
mull r14 r15 L0x7fffffffda88 rdx;
(* adox   %r15,%rbx                                #! PC = 0x55555556585d *)
adcs overflow rbx rbx r15 overflow;
(* adcx   %r14,%r8                                 #! PC = 0x555555565863 *)
adcs carry r8 r8 r14 carry;
(* mulx   0x10(%rsi),%r14,%r10                     #! EA = L0x7fffffffda90; Value = 0xf44298c9e7f6ccbe; PC = 0x555555565869 *)
mull r10 r14 L0x7fffffffda90 rdx;
(* adox   %r14,%r8                                 #! PC = 0x55555556586f *)
adcs overflow r8 r8 r14 overflow;
(* adcx   %r10,%r9                                 #! PC = 0x555555565875 *)
adcs carry r9 r9 r10 carry;
(* mulx   0x18(%rsi),%r15,%r10                     #! EA = L0x7fffffffda98; Value = 0xc29ea1fdb4e0ac33; PC = 0x55555556587b *)
mull r10 r15 L0x7fffffffda98 rdx;
(* adcx   %r10,%r11                                #! PC = 0x555555565881 *)
adcs carry r11 r11 r10 carry;
(* mulx   0x20(%rsi),%r14,%r10                     #! EA = L0x7fffffffdaa0; Value = 0xb2a4acf0365da5de; PC = 0x555555565887 *)
mull r10 r14 L0x7fffffffdaa0 rdx;
(* adcx   %r10,%rbp                                #! PC = 0x55555556588d *)
adcs carry rbp rbp r10 carry;
(* mulx   0x28(%rsi),%rdx,%r10                     #! EA = L0x7fffffffdaa8; Value = 0xea74acb25e04c35f; PC = 0x555555565893 *)
mull r10 rdx L0x7fffffffdaa8 rdx;
(* adcx   %rax,%r10                                #! PC = 0x555555565899 *)
adcs carry r10 r10 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r9                                 #! PC = 0x55555556589f *)
adcs overflow r9 r9 r15 overflow;
(* adox   %r14,%r11                                #! PC = 0x5555555658a5 *)
adcs overflow r11 r11 r14 overflow;
(* adox   %rdx,%rbp                                #! PC = 0x5555555658ab *)
adcs overflow rbp rbp rdx overflow;
(* adox   %rax,%r10                                #! PC = 0x5555555658b1 *)
adcs overflow r10 r10 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x18(%rdi),%rdx                          #! EA = L0x7fffffffd3f8; Value = 0x0bfc5de5dd3679bf; PC = 0x5555555658b7 *)
mov rdx L0x7fffffffd3f8;
(* mulx   (%rsi),%r15,%r14                         #! EA = L0x7fffffffda80; Value = 0xa98128db284259e7; PC = 0x5555555658bb *)
mull r14 r15 L0x7fffffffda80 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555658c0 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%rbx                                #! PC = 0x5555555658c3 *)
adcs carry rbx rbx r15 carry;
(* mov    %rbx,0x18(%rcx)                          #! EA = L0x7fffffffd458; PC = 0x5555555658c9 *)
mov L0x7fffffffd458 rbx;
(* adcx   %r14,%r8                                 #! PC = 0x5555555658cd *)
adcs carry r8 r8 r14 carry;
(* mulx   0x8(%rsi),%r15,%r14                      #! EA = L0x7fffffffda88; Value = 0xc9da63fce08e0f05; PC = 0x5555555658d3 *)
mull r14 r15 L0x7fffffffda88 rdx;
(* adox   %r15,%r8                                 #! PC = 0x5555555658d9 *)
adcs overflow r8 r8 r15 overflow;
(* adcx   %r14,%r9                                 #! PC = 0x5555555658df *)
adcs carry r9 r9 r14 carry;
(* mulx   0x10(%rsi),%r14,%rbx                     #! EA = L0x7fffffffda90; Value = 0xf44298c9e7f6ccbe; PC = 0x5555555658e5 *)
mull rbx r14 L0x7fffffffda90 rdx;
(* adox   %r14,%r9                                 #! PC = 0x5555555658eb *)
adcs overflow r9 r9 r14 overflow;
(* adcx   %rbx,%r11                                #! PC = 0x5555555658f1 *)
adcs carry r11 r11 rbx carry;
(* mulx   0x18(%rsi),%r15,%rbx                     #! EA = L0x7fffffffda98; Value = 0xc29ea1fdb4e0ac33; PC = 0x5555555658f7 *)
mull rbx r15 L0x7fffffffda98 rdx;
(* adcx   %rbx,%rbp                                #! PC = 0x5555555658fd *)
adcs carry rbp rbp rbx carry;
(* mulx   0x20(%rsi),%r14,%rbx                     #! EA = L0x7fffffffdaa0; Value = 0xb2a4acf0365da5de; PC = 0x555555565903 *)
mull rbx r14 L0x7fffffffdaa0 rdx;
(* adcx   %rbx,%r10                                #! PC = 0x555555565909 *)
adcs carry r10 r10 rbx carry;
(* mulx   0x28(%rsi),%rdx,%rbx                     #! EA = L0x7fffffffdaa8; Value = 0xea74acb25e04c35f; PC = 0x55555556590f *)
mull rbx rdx L0x7fffffffdaa8 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555565915 *)
adcs carry rbx rbx rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r11                                #! PC = 0x55555556591b *)
adcs overflow r11 r11 r15 overflow;
(* adox   %r14,%rbp                                #! PC = 0x555555565921 *)
adcs overflow rbp rbp r14 overflow;
(* adox   %rdx,%r10                                #! PC = 0x555555565927 *)
adcs overflow r10 r10 rdx overflow;
(* adox   %rax,%rbx                                #! PC = 0x55555556592d *)
adcs overflow rbx rbx rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x20(%rdi),%rdx                          #! EA = L0x7fffffffd400; Value = 0xc865266e4ec41e24; PC = 0x555555565933 *)
mov rdx L0x7fffffffd400;
(* mulx   (%rsi),%r15,%r14                         #! EA = L0x7fffffffda80; Value = 0xa98128db284259e7; PC = 0x555555565937 *)
mull r14 r15 L0x7fffffffda80 rdx;
(* xor    %rax,%rax                                #! PC = 0x55555556593c *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r8                                 #! PC = 0x55555556593f *)
adcs carry r8 r8 r15 carry;
(* mov    %r8,0x20(%rcx)                           #! EA = L0x7fffffffd460; PC = 0x555555565945 *)
mov L0x7fffffffd460 r8;
(* adcx   %r14,%r9                                 #! PC = 0x555555565949 *)
adcs carry r9 r9 r14 carry;
(* mulx   0x8(%rsi),%r15,%r14                      #! EA = L0x7fffffffda88; Value = 0xc9da63fce08e0f05; PC = 0x55555556594f *)
mull r14 r15 L0x7fffffffda88 rdx;
(* adox   %r15,%r9                                 #! PC = 0x555555565955 *)
adcs overflow r9 r9 r15 overflow;
(* adcx   %r14,%r11                                #! PC = 0x55555556595b *)
adcs carry r11 r11 r14 carry;
(* mulx   0x10(%rsi),%r14,%r8                      #! EA = L0x7fffffffda90; Value = 0xf44298c9e7f6ccbe; PC = 0x555555565961 *)
mull r8 r14 L0x7fffffffda90 rdx;
(* adox   %r14,%r11                                #! PC = 0x555555565967 *)
adcs overflow r11 r11 r14 overflow;
(* adcx   %r8,%rbp                                 #! PC = 0x55555556596d *)
adcs carry rbp rbp r8 carry;
(* mulx   0x18(%rsi),%r15,%r8                      #! EA = L0x7fffffffda98; Value = 0xc29ea1fdb4e0ac33; PC = 0x555555565973 *)
mull r8 r15 L0x7fffffffda98 rdx;
(* adcx   %r8,%r10                                 #! PC = 0x555555565979 *)
adcs carry r10 r10 r8 carry;
(* mulx   0x20(%rsi),%r14,%r8                      #! EA = L0x7fffffffdaa0; Value = 0xb2a4acf0365da5de; PC = 0x55555556597f *)
mull r8 r14 L0x7fffffffdaa0 rdx;
(* adcx   %r8,%rbx                                 #! PC = 0x555555565985 *)
adcs carry rbx rbx r8 carry;
(* mulx   0x28(%rsi),%rdx,%r8                      #! EA = L0x7fffffffdaa8; Value = 0xea74acb25e04c35f; PC = 0x55555556598b *)
mull r8 rdx L0x7fffffffdaa8 rdx;
(* adcx   %rax,%r8                                 #! PC = 0x555555565991 *)
adcs carry r8 r8 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%rbp                                #! PC = 0x555555565997 *)
adcs overflow rbp rbp r15 overflow;
(* adox   %r14,%r10                                #! PC = 0x55555556599d *)
adcs overflow r10 r10 r14 overflow;
(* adox   %rdx,%rbx                                #! PC = 0x5555555659a3 *)
adcs overflow rbx rbx rdx overflow;
(* adox   %rax,%r8                                 #! PC = 0x5555555659a9 *)
adcs overflow r8 r8 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x28(%rdi),%rdx                          #! EA = L0x7fffffffd408; Value = 0x659691236d7c3dda; PC = 0x5555555659af *)
mov rdx L0x7fffffffd408;
(* mulx   (%rsi),%r15,%r14                         #! EA = L0x7fffffffda80; Value = 0xa98128db284259e7; PC = 0x5555555659b3 *)
mull r14 r15 L0x7fffffffda80 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555659b8 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r9                                 #! PC = 0x5555555659bb *)
adcs carry r9 r9 r15 carry;
(* mov    %r9,0x28(%rcx)                           #! EA = L0x7fffffffd468; PC = 0x5555555659c1 *)
mov L0x7fffffffd468 r9;
(* adcx   %r14,%r11                                #! PC = 0x5555555659c5 *)
adcs carry r11 r11 r14 carry;
(* mulx   0x8(%rsi),%r15,%r14                      #! EA = L0x7fffffffda88; Value = 0xc9da63fce08e0f05; PC = 0x5555555659cb *)
mull r14 r15 L0x7fffffffda88 rdx;
(* adox   %r15,%r11                                #! PC = 0x5555555659d1 *)
adcs overflow r11 r11 r15 overflow;
(* adcx   %r14,%rbp                                #! PC = 0x5555555659d7 *)
adcs carry rbp rbp r14 carry;
(* mulx   0x10(%rsi),%r14,%r9                      #! EA = L0x7fffffffda90; Value = 0xf44298c9e7f6ccbe; PC = 0x5555555659dd *)
mull r9 r14 L0x7fffffffda90 rdx;
(* adox   %r14,%rbp                                #! PC = 0x5555555659e3 *)
adcs overflow rbp rbp r14 overflow;
(* adcx   %r9,%r10                                 #! PC = 0x5555555659e9 *)
adcs carry r10 r10 r9 carry;
(* mulx   0x18(%rsi),%r15,%r9                      #! EA = L0x7fffffffda98; Value = 0xc29ea1fdb4e0ac33; PC = 0x5555555659ef *)
mull r9 r15 L0x7fffffffda98 rdx;
(* adcx   %r9,%rbx                                 #! PC = 0x5555555659f5 *)
adcs carry rbx rbx r9 carry;
(* mulx   0x20(%rsi),%r14,%r9                      #! EA = L0x7fffffffdaa0; Value = 0xb2a4acf0365da5de; PC = 0x5555555659fb *)
mull r9 r14 L0x7fffffffdaa0 rdx;
(* adcx   %r9,%r8                                  #! PC = 0x555555565a01 *)
adcs carry r8 r8 r9 carry;
(* mulx   0x28(%rsi),%rdx,%r9                      #! EA = L0x7fffffffdaa8; Value = 0xea74acb25e04c35f; PC = 0x555555565a07 *)
mull r9 rdx L0x7fffffffdaa8 rdx;
(* adcx   %rax,%r9                                 #! PC = 0x555555565a0d *)
adcs carry r9 r9 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r10                                #! PC = 0x555555565a13 *)
adcs overflow r10 r10 r15 overflow;
(* adox   %r14,%rbx                                #! PC = 0x555555565a19 *)
adcs overflow rbx rbx r14 overflow;
(* adox   %rdx,%r8                                 #! PC = 0x555555565a1f *)
adcs overflow r8 r8 rdx overflow;
(* adox   %rax,%r9                                 #! PC = 0x555555565a25 *)
adcs overflow r9 r9 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    %r11,0x30(%rcx)                          #! EA = L0x7fffffffd470; PC = 0x555555565a2b *)
mov L0x7fffffffd470 r11;
(* mov    %rbp,0x38(%rcx)                          #! EA = L0x7fffffffd478; PC = 0x555555565a2f *)
mov L0x7fffffffd478 rbp;
(* mov    %r10,0x40(%rcx)                          #! EA = L0x7fffffffd480; PC = 0x555555565a33 *)
mov L0x7fffffffd480 r10;
(* mov    %rbx,0x48(%rcx)                          #! EA = L0x7fffffffd488; PC = 0x555555565a37 *)
mov L0x7fffffffd488 rbx;
(* mov    %r8,0x50(%rcx)                           #! EA = L0x7fffffffd490; PC = 0x555555565a3b *)
mov L0x7fffffffd490 r8;
(* mov    %r9,0x58(%rcx)                           #! EA = L0x7fffffffd498; PC = 0x555555565a3f *)
mov L0x7fffffffd498 r9;
(* mov    (%rsp),%rdx                              #! EA = L0x7fffffffd250; Value = 0xbec25a7f135e9677; PC = 0x555555565a43 *)
mov rdx L0x7fffffffd250;
(* mulx   0x30(%rsp),%r9,%r8                       #! EA = L0x7fffffffd280; Value = 0xca5a0e00feafec75; PC = 0x555555565a47 *)
mull r8 r9 L0x7fffffffd280 rdx;
(* mulx   0x38(%rsp),%r11,%r10                     #! EA = L0x7fffffffd288; Value = 0x823042ada45215b6; PC = 0x555555565a4e *)
mull r10 r11 L0x7fffffffd288 rdx;
(* mov    %r9,0x60(%rcx)                           #! EA = L0x7fffffffd4a0; PC = 0x555555565a55 *)
mov L0x7fffffffd4a0 r9;
(* xor    %rax,%rax                                #! PC = 0x555555565a59 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rsp),%rbp,%rbx                     #! EA = L0x7fffffffd290; Value = 0x0d09590da49ccb91; PC = 0x555555565a5c *)
mull rbx rbp L0x7fffffffd290 rdx;
(* adox   %r11,%r8                                 #! PC = 0x555555565a63 *)
adcs overflow r8 r8 r11 overflow;
(* adox   %rbp,%r10                                #! PC = 0x555555565a69 *)
adcs overflow r10 r10 rbp overflow;
(* mulx   0x48(%rsp),%r11,%r9                      #! EA = L0x7fffffffd298; Value = 0x4a5644fefd7fa849; PC = 0x555555565a6f *)
mull r9 r11 L0x7fffffffd298 rdx;
(* adox   %r11,%rbx                                #! PC = 0x555555565a76 *)
adcs overflow rbx rbx r11 overflow;
(* mulx   0x50(%rsp),%r14,%rbp                     #! EA = L0x7fffffffd2a0; Value = 0x21999c96b8cf4ce4; PC = 0x555555565a7c *)
mull rbp r14 L0x7fffffffd2a0 rdx;
(* adox   %r14,%r9                                 #! PC = 0x555555565a83 *)
adcs overflow r9 r9 r14 overflow;
(* mulx   0x58(%rsp),%r15,%r11                     #! EA = L0x7fffffffd2a8; Value = 0xea7517d013fee80c; PC = 0x555555565a89 *)
mull r11 r15 L0x7fffffffd2a8 rdx;
(* adox   %r15,%rbp                                #! PC = 0x555555565a90 *)
adcs overflow rbp rbp r15 overflow;
(* adox   %rax,%r11                                #! PC = 0x555555565a96 *)
adcs overflow r11 r11 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x8(%rsp),%rdx                           #! EA = L0x7fffffffd258; Value = 0xb9fa1973025b82d3; PC = 0x555555565a9c *)
mov rdx L0x7fffffffd258;
(* mulx   0x30(%rsp),%r15,%r14                     #! EA = L0x7fffffffd280; Value = 0xca5a0e00feafec75; PC = 0x555555565aa1 *)
mull r14 r15 L0x7fffffffd280 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565aa8 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r8                                 #! PC = 0x555555565aab *)
adcs carry r8 r8 r15 carry;
(* mov    %r8,0x68(%rcx)                           #! EA = L0x7fffffffd4a8; PC = 0x555555565ab1 *)
mov L0x7fffffffd4a8 r8;
(* adcx   %r14,%r10                                #! PC = 0x555555565ab5 *)
adcs carry r10 r10 r14 carry;
(* mulx   0x38(%rsp),%r15,%r14                     #! EA = L0x7fffffffd288; Value = 0x823042ada45215b6; PC = 0x555555565abb *)
mull r14 r15 L0x7fffffffd288 rdx;
(* adox   %r15,%r10                                #! PC = 0x555555565ac2 *)
adcs overflow r10 r10 r15 overflow;
(* adcx   %r14,%rbx                                #! PC = 0x555555565ac8 *)
adcs carry rbx rbx r14 carry;
(* mulx   0x40(%rsp),%r14,%r8                      #! EA = L0x7fffffffd290; Value = 0x0d09590da49ccb91; PC = 0x555555565ace *)
mull r8 r14 L0x7fffffffd290 rdx;
(* adox   %r14,%rbx                                #! PC = 0x555555565ad5 *)
adcs overflow rbx rbx r14 overflow;
(* adcx   %r9,%r8                                  #! PC = 0x555555565adb *)
adcs carry r8 r8 r9 carry;
(* mulx   0x48(%rsp),%r15,%r9                      #! EA = L0x7fffffffd298; Value = 0x4a5644fefd7fa849; PC = 0x555555565ae1 *)
mull r9 r15 L0x7fffffffd298 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555565ae8 *)
adcs carry r9 r9 rbp carry;
(* mulx   0x50(%rsp),%r14,%rbp                     #! EA = L0x7fffffffd2a0; Value = 0x21999c96b8cf4ce4; PC = 0x555555565aee *)
mull rbp r14 L0x7fffffffd2a0 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555565af5 *)
adcs carry r11 r11 rbp carry;
(* mulx   0x58(%rsp),%rdx,%rbp                     #! EA = L0x7fffffffd2a8; Value = 0xea7517d013fee80c; PC = 0x555555565afb *)
mull rbp rdx L0x7fffffffd2a8 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555565b02 *)
adcs carry rbp rbp rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r8                                 #! PC = 0x555555565b08 *)
adcs overflow r8 r8 r15 overflow;
(* adox   %r14,%r9                                 #! PC = 0x555555565b0e *)
adcs overflow r9 r9 r14 overflow;
(* adox   %rdx,%r11                                #! PC = 0x555555565b14 *)
adcs overflow r11 r11 rdx overflow;
(* adox   %rax,%rbp                                #! PC = 0x555555565b1a *)
adcs overflow rbp rbp rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x10(%rsp),%rdx                          #! EA = L0x7fffffffd260; Value = 0x2041b14dfc35e753; PC = 0x555555565b20 *)
mov rdx L0x7fffffffd260;
(* mulx   0x30(%rsp),%r15,%r14                     #! EA = L0x7fffffffd280; Value = 0xca5a0e00feafec75; PC = 0x555555565b25 *)
mull r14 r15 L0x7fffffffd280 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565b2c *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r10                                #! PC = 0x555555565b2f *)
adcs carry r10 r10 r15 carry;
(* mov    %r10,0x70(%rcx)                          #! EA = L0x7fffffffd4b0; PC = 0x555555565b35 *)
mov L0x7fffffffd4b0 r10;
(* adcx   %r14,%rbx                                #! PC = 0x555555565b39 *)
adcs carry rbx rbx r14 carry;
(* mulx   0x38(%rsp),%r15,%r14                     #! EA = L0x7fffffffd288; Value = 0x823042ada45215b6; PC = 0x555555565b3f *)
mull r14 r15 L0x7fffffffd288 rdx;
(* adox   %r15,%rbx                                #! PC = 0x555555565b46 *)
adcs overflow rbx rbx r15 overflow;
(* adcx   %r14,%r8                                 #! PC = 0x555555565b4c *)
adcs carry r8 r8 r14 carry;
(* mulx   0x40(%rsp),%r14,%r10                     #! EA = L0x7fffffffd290; Value = 0x0d09590da49ccb91; PC = 0x555555565b52 *)
mull r10 r14 L0x7fffffffd290 rdx;
(* adox   %r14,%r8                                 #! PC = 0x555555565b59 *)
adcs overflow r8 r8 r14 overflow;
(* adcx   %r10,%r9                                 #! PC = 0x555555565b5f *)
adcs carry r9 r9 r10 carry;
(* mulx   0x48(%rsp),%r15,%r10                     #! EA = L0x7fffffffd298; Value = 0x4a5644fefd7fa849; PC = 0x555555565b65 *)
mull r10 r15 L0x7fffffffd298 rdx;
(* adcx   %r10,%r11                                #! PC = 0x555555565b6c *)
adcs carry r11 r11 r10 carry;
(* mulx   0x50(%rsp),%r14,%r10                     #! EA = L0x7fffffffd2a0; Value = 0x21999c96b8cf4ce4; PC = 0x555555565b72 *)
mull r10 r14 L0x7fffffffd2a0 rdx;
(* adcx   %r10,%rbp                                #! PC = 0x555555565b79 *)
adcs carry rbp rbp r10 carry;
(* mulx   0x58(%rsp),%rdx,%r10                     #! EA = L0x7fffffffd2a8; Value = 0xea7517d013fee80c; PC = 0x555555565b7f *)
mull r10 rdx L0x7fffffffd2a8 rdx;
(* adcx   %rax,%r10                                #! PC = 0x555555565b86 *)
adcs carry r10 r10 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r9                                 #! PC = 0x555555565b8c *)
adcs overflow r9 r9 r15 overflow;
(* adox   %r14,%r11                                #! PC = 0x555555565b92 *)
adcs overflow r11 r11 r14 overflow;
(* adox   %rdx,%rbp                                #! PC = 0x555555565b98 *)
adcs overflow rbp rbp rdx overflow;
(* adox   %rax,%r10                                #! PC = 0x555555565b9e *)
adcs overflow r10 r10 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x18(%rsp),%rdx                          #! EA = L0x7fffffffd268; Value = 0xe00f8301d64c0816; PC = 0x555555565ba4 *)
mov rdx L0x7fffffffd268;
(* mulx   0x30(%rsp),%r15,%r14                     #! EA = L0x7fffffffd280; Value = 0xca5a0e00feafec75; PC = 0x555555565ba9 *)
mull r14 r15 L0x7fffffffd280 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565bb0 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%rbx                                #! PC = 0x555555565bb3 *)
adcs carry rbx rbx r15 carry;
(* mov    %rbx,0x78(%rcx)                          #! EA = L0x7fffffffd4b8; PC = 0x555555565bb9 *)
mov L0x7fffffffd4b8 rbx;
(* adcx   %r14,%r8                                 #! PC = 0x555555565bbd *)
adcs carry r8 r8 r14 carry;
(* mulx   0x38(%rsp),%r15,%r14                     #! EA = L0x7fffffffd288; Value = 0x823042ada45215b6; PC = 0x555555565bc3 *)
mull r14 r15 L0x7fffffffd288 rdx;
(* adox   %r15,%r8                                 #! PC = 0x555555565bca *)
adcs overflow r8 r8 r15 overflow;
(* adcx   %r14,%r9                                 #! PC = 0x555555565bd0 *)
adcs carry r9 r9 r14 carry;
(* mulx   0x40(%rsp),%r14,%rbx                     #! EA = L0x7fffffffd290; Value = 0x0d09590da49ccb91; PC = 0x555555565bd6 *)
mull rbx r14 L0x7fffffffd290 rdx;
(* adox   %r14,%r9                                 #! PC = 0x555555565bdd *)
adcs overflow r9 r9 r14 overflow;
(* adcx   %rbx,%r11                                #! PC = 0x555555565be3 *)
adcs carry r11 r11 rbx carry;
(* mulx   0x48(%rsp),%r15,%rbx                     #! EA = L0x7fffffffd298; Value = 0x4a5644fefd7fa849; PC = 0x555555565be9 *)
mull rbx r15 L0x7fffffffd298 rdx;
(* adcx   %rbx,%rbp                                #! PC = 0x555555565bf0 *)
adcs carry rbp rbp rbx carry;
(* mulx   0x50(%rsp),%r14,%rbx                     #! EA = L0x7fffffffd2a0; Value = 0x21999c96b8cf4ce4; PC = 0x555555565bf6 *)
mull rbx r14 L0x7fffffffd2a0 rdx;
(* adcx   %rbx,%r10                                #! PC = 0x555555565bfd *)
adcs carry r10 r10 rbx carry;
(* mulx   0x58(%rsp),%rdx,%rbx                     #! EA = L0x7fffffffd2a8; Value = 0xea7517d013fee80c; PC = 0x555555565c03 *)
mull rbx rdx L0x7fffffffd2a8 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555565c0a *)
adcs carry rbx rbx rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r11                                #! PC = 0x555555565c10 *)
adcs overflow r11 r11 r15 overflow;
(* adox   %r14,%rbp                                #! PC = 0x555555565c16 *)
adcs overflow rbp rbp r14 overflow;
(* adox   %rdx,%r10                                #! PC = 0x555555565c1c *)
adcs overflow r10 r10 rdx overflow;
(* adox   %rax,%rbx                                #! PC = 0x555555565c22 *)
adcs overflow rbx rbx rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x20(%rsp),%rdx                          #! EA = L0x7fffffffd270; Value = 0x7d613f071ccb4330; PC = 0x555555565c28 *)
mov rdx L0x7fffffffd270;
(* mulx   0x30(%rsp),%r15,%r14                     #! EA = L0x7fffffffd280; Value = 0xca5a0e00feafec75; PC = 0x555555565c2d *)
mull r14 r15 L0x7fffffffd280 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565c34 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r8                                 #! PC = 0x555555565c37 *)
adcs carry r8 r8 r15 carry;
(* mov    %r8,0x80(%rcx)                           #! EA = L0x7fffffffd4c0; PC = 0x555555565c3d *)
mov L0x7fffffffd4c0 r8;
(* adcx   %r14,%r9                                 #! PC = 0x555555565c44 *)
adcs carry r9 r9 r14 carry;
(* mulx   0x38(%rsp),%r15,%r14                     #! EA = L0x7fffffffd288; Value = 0x823042ada45215b6; PC = 0x555555565c4a *)
mull r14 r15 L0x7fffffffd288 rdx;
(* adox   %r15,%r9                                 #! PC = 0x555555565c51 *)
adcs overflow r9 r9 r15 overflow;
(* adcx   %r14,%r11                                #! PC = 0x555555565c57 *)
adcs carry r11 r11 r14 carry;
(* mulx   0x40(%rsp),%r14,%r8                      #! EA = L0x7fffffffd290; Value = 0x0d09590da49ccb91; PC = 0x555555565c5d *)
mull r8 r14 L0x7fffffffd290 rdx;
(* adox   %r14,%r11                                #! PC = 0x555555565c64 *)
adcs overflow r11 r11 r14 overflow;
(* adcx   %r8,%rbp                                 #! PC = 0x555555565c6a *)
adcs carry rbp rbp r8 carry;
(* mulx   0x48(%rsp),%r15,%r8                      #! EA = L0x7fffffffd298; Value = 0x4a5644fefd7fa849; PC = 0x555555565c70 *)
mull r8 r15 L0x7fffffffd298 rdx;
(* adcx   %r8,%r10                                 #! PC = 0x555555565c77 *)
adcs carry r10 r10 r8 carry;
(* mulx   0x50(%rsp),%r14,%r8                      #! EA = L0x7fffffffd2a0; Value = 0x21999c96b8cf4ce4; PC = 0x555555565c7d *)
mull r8 r14 L0x7fffffffd2a0 rdx;
(* adcx   %r8,%rbx                                 #! PC = 0x555555565c84 *)
adcs carry rbx rbx r8 carry;
(* mulx   0x58(%rsp),%rdx,%r8                      #! EA = L0x7fffffffd2a8; Value = 0xea7517d013fee80c; PC = 0x555555565c8a *)
mull r8 rdx L0x7fffffffd2a8 rdx;
(* adcx   %rax,%r8                                 #! PC = 0x555555565c91 *)
adcs carry r8 r8 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%rbp                                #! PC = 0x555555565c97 *)
adcs overflow rbp rbp r15 overflow;
(* adox   %r14,%r10                                #! PC = 0x555555565c9d *)
adcs overflow r10 r10 r14 overflow;
(* adox   %rdx,%rbx                                #! PC = 0x555555565ca3 *)
adcs overflow rbx rbx rdx overflow;
(* adox   %rax,%r8                                 #! PC = 0x555555565ca9 *)
adcs overflow r8 r8 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x28(%rsp),%rdx                          #! EA = L0x7fffffffd278; Value = 0x6596f5b792348f74; PC = 0x555555565caf *)
mov rdx L0x7fffffffd278;
(* mulx   0x30(%rsp),%r15,%r14                     #! EA = L0x7fffffffd280; Value = 0xca5a0e00feafec75; PC = 0x555555565cb4 *)
mull r14 r15 L0x7fffffffd280 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565cbb *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r9                                 #! PC = 0x555555565cbe *)
adcs carry r9 r9 r15 carry;
(* mov    %r9,0x88(%rcx)                           #! EA = L0x7fffffffd4c8; PC = 0x555555565cc4 *)
mov L0x7fffffffd4c8 r9;
(* adcx   %r14,%r11                                #! PC = 0x555555565ccb *)
adcs carry r11 r11 r14 carry;
(* mulx   0x38(%rsp),%r15,%r14                     #! EA = L0x7fffffffd288; Value = 0x823042ada45215b6; PC = 0x555555565cd1 *)
mull r14 r15 L0x7fffffffd288 rdx;
(* adox   %r15,%r11                                #! PC = 0x555555565cd8 *)
adcs overflow r11 r11 r15 overflow;
(* adcx   %r14,%rbp                                #! PC = 0x555555565cde *)
adcs carry rbp rbp r14 carry;
(* mulx   0x40(%rsp),%r14,%r9                      #! EA = L0x7fffffffd290; Value = 0x0d09590da49ccb91; PC = 0x555555565ce4 *)
mull r9 r14 L0x7fffffffd290 rdx;
(* adox   %r14,%rbp                                #! PC = 0x555555565ceb *)
adcs overflow rbp rbp r14 overflow;
(* adcx   %r9,%r10                                 #! PC = 0x555555565cf1 *)
adcs carry r10 r10 r9 carry;
(* mulx   0x48(%rsp),%r15,%r9                      #! EA = L0x7fffffffd298; Value = 0x4a5644fefd7fa849; PC = 0x555555565cf7 *)
mull r9 r15 L0x7fffffffd298 rdx;
(* adcx   %r9,%rbx                                 #! PC = 0x555555565cfe *)
adcs carry rbx rbx r9 carry;
(* mulx   0x50(%rsp),%r14,%r9                      #! EA = L0x7fffffffd2a0; Value = 0x21999c96b8cf4ce4; PC = 0x555555565d04 *)
mull r9 r14 L0x7fffffffd2a0 rdx;
(* adcx   %r9,%r8                                  #! PC = 0x555555565d0b *)
adcs carry r8 r8 r9 carry;
(* mulx   0x58(%rsp),%rdx,%r9                      #! EA = L0x7fffffffd2a8; Value = 0xea7517d013fee80c; PC = 0x555555565d11 *)
mull r9 rdx L0x7fffffffd2a8 rdx;
(* adcx   %rax,%r9                                 #! PC = 0x555555565d18 *)
adcs carry r9 r9 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r10                                #! PC = 0x555555565d1e *)
adcs overflow r10 r10 r15 overflow;
(* adox   %r14,%rbx                                #! PC = 0x555555565d24 *)
adcs overflow rbx rbx r14 overflow;
(* adox   %rdx,%r8                                 #! PC = 0x555555565d2a *)
adcs overflow r8 r8 rdx overflow;
(* adox   %rax,%r9                                 #! PC = 0x555555565d30 *)
adcs overflow r9 r9 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    %r11,0x90(%rcx)                          #! EA = L0x7fffffffd4d0; PC = 0x555555565d36 *)
mov L0x7fffffffd4d0 r11;
(* mov    %rbp,0x98(%rcx)                          #! EA = L0x7fffffffd4d8; PC = 0x555555565d3d *)
mov L0x7fffffffd4d8 rbp;
(* mov    %r10,0xa0(%rcx)                          #! EA = L0x7fffffffd4e0; PC = 0x555555565d44 *)
mov L0x7fffffffd4e0 r10;
(* mov    %rbx,0xa8(%rcx)                          #! EA = L0x7fffffffd4e8; PC = 0x555555565d4b *)
mov L0x7fffffffd4e8 rbx;
(* mov    %r8,0xb0(%rcx)                           #! EA = L0x7fffffffd4f0; PC = 0x555555565d52 *)
mov L0x7fffffffd4f0 r8;
(* mov    %r9,0xb8(%rcx)                           #! EA = L0x7fffffffd4f8; PC = 0x555555565d59 *)
mov L0x7fffffffd4f8 r9;
(* mov    0x30(%rdi),%rdx                          #! EA = L0x7fffffffd410; Value = 0xde76a7073bf25951; PC = 0x555555565d60 *)
mov rdx L0x7fffffffd410;
(* mulx   0x30(%rsi),%r9,%r8                       #! EA = L0x7fffffffdab0; Value = 0x20d8e525d66d928e; PC = 0x555555565d64 *)
mull r8 r9 L0x7fffffffdab0 rdx;
(* mulx   0x38(%rsi),%r11,%r10                     #! EA = L0x7fffffffdab8; Value = 0xb855deb0c3c406b1; PC = 0x555555565d6a *)
mull r10 r11 L0x7fffffffdab8 rdx;
(* mov    %r9,(%rsp)                               #! EA = L0x7fffffffd250; PC = 0x555555565d70 *)
mov L0x7fffffffd250 r9;
(* xor    %rax,%rax                                #! PC = 0x555555565d74 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffdac0; Value = 0x18c6c043bca5fed2; PC = 0x555555565d77 *)
mull rbx rbp L0x7fffffffdac0 rdx;
(* adox   %r11,%r8                                 #! PC = 0x555555565d7d *)
adcs overflow r8 r8 r11 overflow;
(* adox   %rbp,%r10                                #! PC = 0x555555565d83 *)
adcs overflow r10 r10 rbp overflow;
(* mulx   0x48(%rsi),%r11,%r9                      #! EA = L0x7fffffffdac8; Value = 0x87b7a301489efc15; PC = 0x555555565d89 *)
mull r9 r11 L0x7fffffffdac8 rdx;
(* adox   %r11,%rbx                                #! PC = 0x555555565d8f *)
adcs overflow rbx rbx r11 overflow;
(* mulx   0x50(%rsi),%r14,%rbp                     #! EA = L0x7fffffffdad0; Value = 0x6ef4efa68271a705; PC = 0x555555565d95 *)
mull rbp r14 L0x7fffffffdad0 rdx;
(* adox   %r14,%r9                                 #! PC = 0x555555565d9b *)
adcs overflow r9 r9 r14 overflow;
(* mulx   0x58(%rsi),%r15,%r11                     #! EA = L0x7fffffffdad8; Value = 0x00006b1db5fa24ac; PC = 0x555555565da1 *)
mull r11 r15 L0x7fffffffdad8 rdx;
(* adox   %r15,%rbp                                #! PC = 0x555555565da7 *)
adcs overflow rbp rbp r15 overflow;
(* adox   %rax,%r11                                #! PC = 0x555555565dad *)
adcs overflow r11 r11 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x38(%rdi),%rdx                          #! EA = L0x7fffffffd418; Value = 0x41a65e6c21123628; PC = 0x555555565db3 *)
mov rdx L0x7fffffffd418;
(* mulx   0x30(%rsi),%r15,%r14                     #! EA = L0x7fffffffdab0; Value = 0x20d8e525d66d928e; PC = 0x555555565db7 *)
mull r14 r15 L0x7fffffffdab0 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565dbd *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r8                                 #! PC = 0x555555565dc0 *)
adcs carry r8 r8 r15 carry;
(* mov    %r8,0x8(%rsp)                            #! EA = L0x7fffffffd258; PC = 0x555555565dc6 *)
mov L0x7fffffffd258 r8;
(* adcx   %r14,%r10                                #! PC = 0x555555565dcb *)
adcs carry r10 r10 r14 carry;
(* mulx   0x38(%rsi),%r15,%r14                     #! EA = L0x7fffffffdab8; Value = 0xb855deb0c3c406b1; PC = 0x555555565dd1 *)
mull r14 r15 L0x7fffffffdab8 rdx;
(* adox   %r15,%r10                                #! PC = 0x555555565dd7 *)
adcs overflow r10 r10 r15 overflow;
(* adcx   %r14,%rbx                                #! PC = 0x555555565ddd *)
adcs carry rbx rbx r14 carry;
(* mulx   0x40(%rsi),%r14,%r8                      #! EA = L0x7fffffffdac0; Value = 0x18c6c043bca5fed2; PC = 0x555555565de3 *)
mull r8 r14 L0x7fffffffdac0 rdx;
(* adox   %r14,%rbx                                #! PC = 0x555555565de9 *)
adcs overflow rbx rbx r14 overflow;
(* adcx   %r9,%r8                                  #! PC = 0x555555565def *)
adcs carry r8 r8 r9 carry;
(* mulx   0x48(%rsi),%r15,%r9                      #! EA = L0x7fffffffdac8; Value = 0x87b7a301489efc15; PC = 0x555555565df5 *)
mull r9 r15 L0x7fffffffdac8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555565dfb *)
adcs carry r9 r9 rbp carry;
(* mulx   0x50(%rsi),%r14,%rbp                     #! EA = L0x7fffffffdad0; Value = 0x6ef4efa68271a705; PC = 0x555555565e01 *)
mull rbp r14 L0x7fffffffdad0 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555565e07 *)
adcs carry r11 r11 rbp carry;
(* mulx   0x58(%rsi),%rdx,%rbp                     #! EA = L0x7fffffffdad8; Value = 0x00006b1db5fa24ac; PC = 0x555555565e0d *)
mull rbp rdx L0x7fffffffdad8 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555565e13 *)
adcs carry rbp rbp rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r8                                 #! PC = 0x555555565e19 *)
adcs overflow r8 r8 r15 overflow;
(* adox   %r14,%r9                                 #! PC = 0x555555565e1f *)
adcs overflow r9 r9 r14 overflow;
(* adox   %rdx,%r11                                #! PC = 0x555555565e25 *)
adcs overflow r11 r11 rdx overflow;
(* adox   %rax,%rbp                                #! PC = 0x555555565e2b *)
adcs overflow rbp rbp rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x40(%rdi),%rdx                          #! EA = L0x7fffffffd420; Value = 0xe152d7aa6735255e; PC = 0x555555565e31 *)
mov rdx L0x7fffffffd420;
(* mulx   0x30(%rsi),%r15,%r14                     #! EA = L0x7fffffffdab0; Value = 0x20d8e525d66d928e; PC = 0x555555565e35 *)
mull r14 r15 L0x7fffffffdab0 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565e3b *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r10                                #! PC = 0x555555565e3e *)
adcs carry r10 r10 r15 carry;
(* mov    %r10,0x10(%rsp)                          #! EA = L0x7fffffffd260; PC = 0x555555565e44 *)
mov L0x7fffffffd260 r10;
(* adcx   %r14,%rbx                                #! PC = 0x555555565e49 *)
adcs carry rbx rbx r14 carry;
(* mulx   0x38(%rsi),%r15,%r14                     #! EA = L0x7fffffffdab8; Value = 0xb855deb0c3c406b1; PC = 0x555555565e4f *)
mull r14 r15 L0x7fffffffdab8 rdx;
(* adox   %r15,%rbx                                #! PC = 0x555555565e55 *)
adcs overflow rbx rbx r15 overflow;
(* adcx   %r14,%r8                                 #! PC = 0x555555565e5b *)
adcs carry r8 r8 r14 carry;
(* mulx   0x40(%rsi),%r14,%r10                     #! EA = L0x7fffffffdac0; Value = 0x18c6c043bca5fed2; PC = 0x555555565e61 *)
mull r10 r14 L0x7fffffffdac0 rdx;
(* adox   %r14,%r8                                 #! PC = 0x555555565e67 *)
adcs overflow r8 r8 r14 overflow;
(* adcx   %r10,%r9                                 #! PC = 0x555555565e6d *)
adcs carry r9 r9 r10 carry;
(* mulx   0x48(%rsi),%r15,%r10                     #! EA = L0x7fffffffdac8; Value = 0x87b7a301489efc15; PC = 0x555555565e73 *)
mull r10 r15 L0x7fffffffdac8 rdx;
(* adcx   %r10,%r11                                #! PC = 0x555555565e79 *)
adcs carry r11 r11 r10 carry;
(* mulx   0x50(%rsi),%r14,%r10                     #! EA = L0x7fffffffdad0; Value = 0x6ef4efa68271a705; PC = 0x555555565e7f *)
mull r10 r14 L0x7fffffffdad0 rdx;
(* adcx   %r10,%rbp                                #! PC = 0x555555565e85 *)
adcs carry rbp rbp r10 carry;
(* mulx   0x58(%rsi),%rdx,%r10                     #! EA = L0x7fffffffdad8; Value = 0x00006b1db5fa24ac; PC = 0x555555565e8b *)
mull r10 rdx L0x7fffffffdad8 rdx;
(* adcx   %rax,%r10                                #! PC = 0x555555565e91 *)
adcs carry r10 r10 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r9                                 #! PC = 0x555555565e97 *)
adcs overflow r9 r9 r15 overflow;
(* adox   %r14,%r11                                #! PC = 0x555555565e9d *)
adcs overflow r11 r11 r14 overflow;
(* adox   %rdx,%rbp                                #! PC = 0x555555565ea3 *)
adcs overflow rbp rbp rdx overflow;
(* adox   %rax,%r10                                #! PC = 0x555555565ea9 *)
adcs overflow r10 r10 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd428; Value = 0xd413251bf9158e56; PC = 0x555555565eaf *)
mov rdx L0x7fffffffd428;
(* mulx   0x30(%rsi),%r15,%r14                     #! EA = L0x7fffffffdab0; Value = 0x20d8e525d66d928e; PC = 0x555555565eb3 *)
mull r14 r15 L0x7fffffffdab0 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565eb9 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%rbx                                #! PC = 0x555555565ebc *)
adcs carry rbx rbx r15 carry;
(* mov    %rbx,0x18(%rsp)                          #! EA = L0x7fffffffd268; PC = 0x555555565ec2 *)
mov L0x7fffffffd268 rbx;
(* adcx   %r14,%r8                                 #! PC = 0x555555565ec7 *)
adcs carry r8 r8 r14 carry;
(* mulx   0x38(%rsi),%r15,%r14                     #! EA = L0x7fffffffdab8; Value = 0xb855deb0c3c406b1; PC = 0x555555565ecd *)
mull r14 r15 L0x7fffffffdab8 rdx;
(* adox   %r15,%r8                                 #! PC = 0x555555565ed3 *)
adcs overflow r8 r8 r15 overflow;
(* adcx   %r14,%r9                                 #! PC = 0x555555565ed9 *)
adcs carry r9 r9 r14 carry;
(* mulx   0x40(%rsi),%r14,%rbx                     #! EA = L0x7fffffffdac0; Value = 0x18c6c043bca5fed2; PC = 0x555555565edf *)
mull rbx r14 L0x7fffffffdac0 rdx;
(* adox   %r14,%r9                                 #! PC = 0x555555565ee5 *)
adcs overflow r9 r9 r14 overflow;
(* adcx   %rbx,%r11                                #! PC = 0x555555565eeb *)
adcs carry r11 r11 rbx carry;
(* mulx   0x48(%rsi),%r15,%rbx                     #! EA = L0x7fffffffdac8; Value = 0x87b7a301489efc15; PC = 0x555555565ef1 *)
mull rbx r15 L0x7fffffffdac8 rdx;
(* adcx   %rbx,%rbp                                #! PC = 0x555555565ef7 *)
adcs carry rbp rbp rbx carry;
(* mulx   0x50(%rsi),%r14,%rbx                     #! EA = L0x7fffffffdad0; Value = 0x6ef4efa68271a705; PC = 0x555555565efd *)
mull rbx r14 L0x7fffffffdad0 rdx;
(* adcx   %rbx,%r10                                #! PC = 0x555555565f03 *)
adcs carry r10 r10 rbx carry;
(* mulx   0x58(%rsi),%rdx,%rbx                     #! EA = L0x7fffffffdad8; Value = 0x00006b1db5fa24ac; PC = 0x555555565f09 *)
mull rbx rdx L0x7fffffffdad8 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555565f0f *)
adcs carry rbx rbx rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r11                                #! PC = 0x555555565f15 *)
adcs overflow r11 r11 r15 overflow;
(* adox   %r14,%rbp                                #! PC = 0x555555565f1b *)
adcs overflow rbp rbp r14 overflow;
(* adox   %rdx,%r10                                #! PC = 0x555555565f21 *)
adcs overflow r10 r10 rdx overflow;
(* adox   %rax,%rbx                                #! PC = 0x555555565f27 *)
adcs overflow rbx rbx rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x50(%rdi),%rdx                          #! EA = L0x7fffffffd430; Value = 0xb4fc1898ce07250c; PC = 0x555555565f2d *)
mov rdx L0x7fffffffd430;
(* mulx   0x30(%rsi),%r15,%r14                     #! EA = L0x7fffffffdab0; Value = 0x20d8e525d66d928e; PC = 0x555555565f31 *)
mull r14 r15 L0x7fffffffdab0 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565f37 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r8                                 #! PC = 0x555555565f3a *)
adcs carry r8 r8 r15 carry;
(* mov    %r8,0x20(%rsp)                           #! EA = L0x7fffffffd270; PC = 0x555555565f40 *)
mov L0x7fffffffd270 r8;
(* adcx   %r14,%r9                                 #! PC = 0x555555565f45 *)
adcs carry r9 r9 r14 carry;
(* mulx   0x38(%rsi),%r15,%r14                     #! EA = L0x7fffffffdab8; Value = 0xb855deb0c3c406b1; PC = 0x555555565f4b *)
mull r14 r15 L0x7fffffffdab8 rdx;
(* adox   %r15,%r9                                 #! PC = 0x555555565f51 *)
adcs overflow r9 r9 r15 overflow;
(* adcx   %r14,%r11                                #! PC = 0x555555565f57 *)
adcs carry r11 r11 r14 carry;
(* mulx   0x40(%rsi),%r14,%r8                      #! EA = L0x7fffffffdac0; Value = 0x18c6c043bca5fed2; PC = 0x555555565f5d *)
mull r8 r14 L0x7fffffffdac0 rdx;
(* adox   %r14,%r11                                #! PC = 0x555555565f63 *)
adcs overflow r11 r11 r14 overflow;
(* adcx   %r8,%rbp                                 #! PC = 0x555555565f69 *)
adcs carry rbp rbp r8 carry;
(* mulx   0x48(%rsi),%r15,%r8                      #! EA = L0x7fffffffdac8; Value = 0x87b7a301489efc15; PC = 0x555555565f6f *)
mull r8 r15 L0x7fffffffdac8 rdx;
(* adcx   %r8,%r10                                 #! PC = 0x555555565f75 *)
adcs carry r10 r10 r8 carry;
(* mulx   0x50(%rsi),%r14,%r8                      #! EA = L0x7fffffffdad0; Value = 0x6ef4efa68271a705; PC = 0x555555565f7b *)
mull r8 r14 L0x7fffffffdad0 rdx;
(* adcx   %r8,%rbx                                 #! PC = 0x555555565f81 *)
adcs carry rbx rbx r8 carry;
(* mulx   0x58(%rsi),%rdx,%r8                      #! EA = L0x7fffffffdad8; Value = 0x00006b1db5fa24ac; PC = 0x555555565f87 *)
mull r8 rdx L0x7fffffffdad8 rdx;
(* adcx   %rax,%r8                                 #! PC = 0x555555565f8d *)
adcs carry r8 r8 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%rbp                                #! PC = 0x555555565f93 *)
adcs overflow rbp rbp r15 overflow;
(* adox   %r14,%r10                                #! PC = 0x555555565f99 *)
adcs overflow r10 r10 r14 overflow;
(* adox   %rdx,%rbx                                #! PC = 0x555555565f9f *)
adcs overflow rbx rbx rdx overflow;
(* adox   %rax,%r8                                 #! PC = 0x555555565fa5 *)
adcs overflow r8 r8 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x58(%rdi),%rdx                          #! EA = L0x7fffffffd438; Value = 0x0000649424b85199; PC = 0x555555565fab *)
mov rdx L0x7fffffffd438;
(* mulx   0x30(%rsi),%r15,%r14                     #! EA = L0x7fffffffdab0; Value = 0x20d8e525d66d928e; PC = 0x555555565faf *)
mull r14 r15 L0x7fffffffdab0 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565fb5 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r9                                 #! PC = 0x555555565fb8 *)
adcs carry r9 r9 r15 carry;
(* mov    %r9,0x28(%rsp)                           #! EA = L0x7fffffffd278; PC = 0x555555565fbe *)
mov L0x7fffffffd278 r9;
(* adcx   %r14,%r11                                #! PC = 0x555555565fc3 *)
adcs carry r11 r11 r14 carry;
(* mulx   0x38(%rsi),%r15,%r14                     #! EA = L0x7fffffffdab8; Value = 0xb855deb0c3c406b1; PC = 0x555555565fc9 *)
mull r14 r15 L0x7fffffffdab8 rdx;
(* adox   %r15,%r11                                #! PC = 0x555555565fcf *)
adcs overflow r11 r11 r15 overflow;
(* adcx   %r14,%rbp                                #! PC = 0x555555565fd5 *)
adcs carry rbp rbp r14 carry;
(* mulx   0x40(%rsi),%r14,%r9                      #! EA = L0x7fffffffdac0; Value = 0x18c6c043bca5fed2; PC = 0x555555565fdb *)
mull r9 r14 L0x7fffffffdac0 rdx;
(* adox   %r14,%rbp                                #! PC = 0x555555565fe1 *)
adcs overflow rbp rbp r14 overflow;
(* adcx   %r9,%r10                                 #! PC = 0x555555565fe7 *)
adcs carry r10 r10 r9 carry;
(* mulx   0x48(%rsi),%r15,%r9                      #! EA = L0x7fffffffdac8; Value = 0x87b7a301489efc15; PC = 0x555555565fed *)
mull r9 r15 L0x7fffffffdac8 rdx;
(* adcx   %r9,%rbx                                 #! PC = 0x555555565ff3 *)
adcs carry rbx rbx r9 carry;
(* mulx   0x50(%rsi),%r14,%r9                      #! EA = L0x7fffffffdad0; Value = 0x6ef4efa68271a705; PC = 0x555555565ff9 *)
mull r9 r14 L0x7fffffffdad0 rdx;
(* adcx   %r9,%r8                                  #! PC = 0x555555565fff *)
adcs carry r8 r8 r9 carry;
(* mulx   0x58(%rsi),%rdx,%r9                      #! EA = L0x7fffffffdad8; Value = 0x00006b1db5fa24ac; PC = 0x555555566005 *)
mull r9 rdx L0x7fffffffdad8 rdx;
(* adcx   %rax,%r9                                 #! PC = 0x55555556600b *)
adcs carry r9 r9 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r10                                #! PC = 0x555555566011 *)
adcs overflow r10 r10 r15 overflow;
(* adox   %r14,%rbx                                #! PC = 0x555555566017 *)
adcs overflow rbx rbx r14 overflow;
(* adox   %rdx,%r8                                 #! PC = 0x55555556601d *)
adcs overflow r8 r8 rdx overflow;
(* adox   %rax,%r9                                 #! PC = 0x555555566023 *)
adcs overflow r9 r9 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    %r11,0x30(%rsp)                          #! EA = L0x7fffffffd280; PC = 0x555555566029 *)
mov L0x7fffffffd280 r11;
(* mov    %rbp,0x38(%rsp)                          #! EA = L0x7fffffffd288; PC = 0x55555556602e *)
mov L0x7fffffffd288 rbp;
(* mov    %r10,0x40(%rsp)                          #! EA = L0x7fffffffd290; PC = 0x555555566033 *)
mov L0x7fffffffd290 r10;
(* mov    %rbx,0x48(%rsp)                          #! EA = L0x7fffffffd298; PC = 0x555555566038 *)
mov L0x7fffffffd298 rbx;
(* mov    %r8,0x50(%rsp)                           #! EA = L0x7fffffffd2a0; PC = 0x55555556603d *)
mov L0x7fffffffd2a0 r8;
(* mov    %r9,0x58(%rsp)                           #! EA = L0x7fffffffd2a8; PC = 0x555555566042 *)
mov L0x7fffffffd2a8 r9;
(* mov    0x60(%rsp),%r8                           #! EA = L0x7fffffffd2b0; Value = 0x0000000000000000; PC = 0x555555566047 *)
mov r8 L0x7fffffffd2b0;
(* mov    0x68(%rsp),%r9                           #! EA = L0x7fffffffd2b8; Value = 0x0000000000000000; PC = 0x55555556604c *)
mov r9 L0x7fffffffd2b8;
(* mov    0x70(%rsp),%r10                          #! EA = L0x7fffffffd2c0; Value = 0x0000000000000000; PC = 0x555555566051 *)
mov r10 L0x7fffffffd2c0;
(* mov    0x78(%rsp),%r11                          #! EA = L0x7fffffffd2c8; Value = 0x0000000000000000; PC = 0x555555566056 *)
mov r11 L0x7fffffffd2c8;
(* mov    0x90(%rcx),%rax                          #! EA = L0x7fffffffd4d0; Value = 0x77ac492d66676b6d; PC = 0x55555556605b *)
mov rax L0x7fffffffd4d0;
(* add    %rax,%r8                                 #! PC = 0x555555566062 *)
adds carry r8 r8 rax;
(* mov    0x98(%rcx),%rax                          #! EA = L0x7fffffffd4d8; Value = 0x551b14392d38f765; PC = 0x555555566065 *)
mov rax L0x7fffffffd4d8;
(* adc    %rax,%r9                                 #! PC = 0x55555556606c *)
adcs carry r9 r9 rax@uint64 carry;
(* mov    0xa0(%rcx),%rax                          #! EA = L0x7fffffffd4e0; Value = 0x9dd900338df8e686; PC = 0x55555556606f *)
mov rax L0x7fffffffd4e0;
(* adc    %rax,%r10                                #! PC = 0x555555566076 *)
adcs carry r10 r10 rax@uint64 carry;
(* mov    0xa8(%rcx),%rax                          #! EA = L0x7fffffffd4e8; Value = 0x989d574c9845f7b6; PC = 0x555555566079 *)
mov rax L0x7fffffffd4e8;
(* adc    %rax,%r11                                #! PC = 0x555555566080 *)
adcs carry r11 r11 rax@uint64 carry;
(* mov    0xb0(%rcx),%rax                          #! EA = L0x7fffffffd4f0; Value = 0x998479e7b3af79ad; PC = 0x555555566083 *)
mov rax L0x7fffffffd4f0;
(* adc    %rax,%r12                                #! PC = 0x55555556608a *)
adcs carry r12 r12 rax@uint64 carry;
(* mov    0xb8(%rcx),%rax                          #! EA = L0x7fffffffd4f8; Value = 0x5d0a740b3b345c89; PC = 0x55555556608d *)
mov rax L0x7fffffffd4f8;
(* adc    %rax,%r13                                #! PC = 0x555555566094 *)
adcs carry r13 r13 rax@uint64 carry;
(* mov    0x60(%rcx),%rdi                          #! EA = L0x7fffffffd4a0; Value = 0x44671ae1fa497863; PC = 0x555555566097 *)
mov rdi L0x7fffffffd4a0;
(* sub    (%rcx),%rdi                              #! EA = L0x7fffffffd440; Value = 0xcd8e4dffb7b9634a; PC = 0x55555556609b *)
subb carry rdi rdi L0x7fffffffd440;
(* mov    0x68(%rcx),%rdx                          #! EA = L0x7fffffffd4a8; Value = 0x3792fc4da30f5beb; PC = 0x55555556609e *)
mov rdx L0x7fffffffd4a8;
(* sbb    0x8(%rcx),%rdx                           #! EA = L0x7fffffffd448; Value = 0xa4ed972b3512ec8e; PC = 0x5555555660a2 *)
sbbs carry rdx rdx L0x7fffffffd448 carry;
(* mov    0x70(%rcx),%rbx                          #! EA = L0x7fffffffd4b0; Value = 0xf23aeddab1e4ac4a; PC = 0x5555555660a6 *)
mov rbx L0x7fffffffd4b0;
(* sbb    0x10(%rcx),%rbx                          #! EA = L0x7fffffffd450; Value = 0x3a841264cae6b5f1; PC = 0x5555555660aa *)
sbbs carry rbx rbx L0x7fffffffd450 carry;
(* mov    0x78(%rcx),%rbp                          #! EA = L0x7fffffffd4b8; Value = 0xaee621d2c764afc2; PC = 0x5555555660ae *)
mov rbp L0x7fffffffd4b8;
(* sbb    0x18(%rcx),%rbp                          #! EA = L0x7fffffffd458; Value = 0x536293445845f421; PC = 0x5555555660b2 *)
sbbs carry rbp rbp L0x7fffffffd458 carry;
(* mov    0x80(%rcx),%r14                          #! EA = L0x7fffffffd4c0; Value = 0x2ed181430863ffa4; PC = 0x5555555660b6 *)
mov r14 L0x7fffffffd4c0;
(* sbb    0x20(%rcx),%r14                          #! EA = L0x7fffffffd460; Value = 0x8d8aa717f124cffe; PC = 0x5555555660bd *)
sbbs carry r14 r14 L0x7fffffffd460 carry;
(* mov    0x88(%rcx),%r15                          #! EA = L0x7fffffffd4c8; Value = 0xa6568c1e8e7dbe66; PC = 0x5555555660c1 *)
mov r15 L0x7fffffffd4c8;
(* sbb    0x28(%rcx),%r15                          #! EA = L0x7fffffffd468; Value = 0xb075ca8a08ab615e; PC = 0x5555555660c8 *)
sbbs carry r15 r15 L0x7fffffffd468 carry;
(* sbb    0x30(%rcx),%r8                           #! EA = L0x7fffffffd470; Value = 0xac0e5726b51e88e3; PC = 0x5555555660cc *)
sbbs carry r8 r8 L0x7fffffffd470 carry;
(* sbb    0x38(%rcx),%r9                           #! EA = L0x7fffffffd478; Value = 0x3f6da7fc952021fd; PC = 0x5555555660d0 *)
sbbs carry r9 r9 L0x7fffffffd478 carry;
(* sbb    0x40(%rcx),%r10                          #! EA = L0x7fffffffd480; Value = 0x1f9049060c06d015; PC = 0x5555555660d4 *)
sbbs carry r10 r10 L0x7fffffffd480 carry;
(* sbb    0x48(%rcx),%r11                          #! EA = L0x7fffffffd488; Value = 0x2a333c4d75c17993; PC = 0x5555555660d8 *)
sbbs carry r11 r11 L0x7fffffffd488 carry;
(* sbb    0x50(%rcx),%r12                          #! EA = L0x7fffffffd490; Value = 0x8d547aec346bfc12; PC = 0x5555555660dc *)
sbbs carry r12 r12 L0x7fffffffd490 carry;
(* sbb    0x58(%rcx),%r13                          #! EA = L0x7fffffffd498; Value = 0x5d09ed6c17a51234; PC = 0x5555555660e0 *)
sbbs carry r13 r13 L0x7fffffffd498 carry;
(* sub    (%rsp),%rdi                              #! EA = L0x7fffffffd250; Value = 0x2b8840c234dabcee; PC = 0x5555555660e4 *)
subb carry rdi rdi L0x7fffffffd250;
(* sbb    0x8(%rsp),%rdx                           #! EA = L0x7fffffffd258; Value = 0x004e11714a2f6502; PC = 0x5555555660e8 *)
sbbs carry rdx rdx L0x7fffffffd258 carry;
(* sbb    0x10(%rsp),%rbx                          #! EA = L0x7fffffffd260; Value = 0x6998d95fd2d20073; PC = 0x5555555660ed *)
sbbs carry rbx rbx L0x7fffffffd260 carry;
(* sbb    0x18(%rsp),%rbp                          #! EA = L0x7fffffffd268; Value = 0x52d9218cb280976a; PC = 0x5555555660f2 *)
sbbs carry rbp rbp L0x7fffffffd268 carry;
(* sbb    0x20(%rsp),%r14                          #! EA = L0x7fffffffd270; Value = 0xace29e64fe56973f; PC = 0x5555555660f7 *)
sbbs carry r14 r14 L0x7fffffffd270 carry;
(* sbb    0x28(%rsp),%r15                          #! EA = L0x7fffffffd278; Value = 0x0109967f65c0224f; PC = 0x5555555660fc *)
sbbs carry r15 r15 L0x7fffffffd278 carry;
(* sbb    0x30(%rsp),%r8                           #! EA = L0x7fffffffd280; Value = 0xf13377f6f72859f0; PC = 0x555555566101 *)
sbbs carry r8 r8 L0x7fffffffd280 carry;
(* sbb    0x38(%rsp),%r9                           #! EA = L0x7fffffffd288; Value = 0x098b2777356c4f9b; PC = 0x555555566106 *)
sbbs carry r9 r9 L0x7fffffffd288 carry;
(* sbb    0x40(%rsp),%r10                          #! EA = L0x7fffffffd290; Value = 0xf9db0225b3e4d580; PC = 0x55555556610b *)
sbbs carry r10 r10 L0x7fffffffd290 carry;
(* sbb    0x48(%rsp),%r11                          #! EA = L0x7fffffffd298; Value = 0x06a6ae5ad2a753ed; PC = 0x555555566110 *)
sbbs carry r11 r11 L0x7fffffffd298 carry;
(* sbb    0x50(%rsp),%r12                          #! EA = L0x7fffffffd2a0; Value = 0x38073f0ab65a000f; PC = 0x555555566115 *)
sbbs carry r12 r12 L0x7fffffffd2a0 carry;
(* sbb    0x58(%rsp),%r13                          #! EA = L0x7fffffffd2a8; Value = 0x000000002a1597a0; PC = 0x55555556611a *)
sbbs carry r13 r13 L0x7fffffffd2a8 carry;

assert and [
  eqmod
    (limbs 64 [ rdi, rdx, rbx, rbp, r14, r15, r8, r9, r10, r11, r12, r13 ])
    (
      (limbs 64 [ t3_00, t3_01, t3_02, t3_03, t3_04, t3_05 ] * limbs 64 [ a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ])
      +
      (limbs 64 [ t3_06, t3_07, t3_08, t3_09, t3_10, t3_11 ] * limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05 ])
    )
    (2**768)
] && and [
  (limbs 64 [ t3_00, t3_01, t3_02, t3_03, t3_04, t3_05, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64 ] * limbs 64 [ a1_06, a1_07, a1_08, a1_09, a1_10, a1_11, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64 ])
  +
  (limbs 64 [ t3_06, t3_07, t3_08, t3_09, t3_10, t3_11, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64 ] * limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64 ])
  <u
  (2**768)@832
];
assume and [
  (limbs 64 [ rdi, rdx, rbx, rbp, r14, r15, r8, r9, r10, r11, r12, r13 ])
  =
  (
    (limbs 64 [ t3_00, t3_01, t3_02, t3_03, t3_04, t3_05 ] * limbs 64 [ a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ])
    +
    (limbs 64 [ t3_06, t3_07, t3_08, t3_09, t3_10, t3_11 ] * limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05 ])
  )
] && true;

(* mov    0x30(%rcx),%rax                          #! EA = L0x7fffffffd470; Value = 0xac0e5726b51e88e3; PC = 0x55555556611f *)
mov rax L0x7fffffffd470;
(* add    %rdi,%rax                                #! PC = 0x555555566123 *)
adds carry rax rax rdi;
(* mov    %rax,0x30(%rcx)                          #! EA = L0x7fffffffd470; PC = 0x555555566126 *)
mov L0x7fffffffd470 rax;
(* mov    0x38(%rcx),%rax                          #! EA = L0x7fffffffd478; Value = 0x3f6da7fc952021fd; PC = 0x55555556612a *)
mov rax L0x7fffffffd478;
(* adc    %rdx,%rax                                #! PC = 0x55555556612e *)
adcs carry rax rax rdx@uint64 carry;
(* mov    %rax,0x38(%rcx)                          #! EA = L0x7fffffffd478; PC = 0x555555566131 *)
mov L0x7fffffffd478 rax;
(* mov    0x40(%rcx),%rax                          #! EA = L0x7fffffffd480; Value = 0x1f9049060c06d015; PC = 0x555555566135 *)
mov rax L0x7fffffffd480;
(* adc    %rbx,%rax                                #! PC = 0x555555566139 *)
adcs carry rax rax rbx@uint64 carry;
(* mov    %rax,0x40(%rcx)                          #! EA = L0x7fffffffd480; PC = 0x55555556613c *)
mov L0x7fffffffd480 rax;
(* mov    0x48(%rcx),%rax                          #! EA = L0x7fffffffd488; Value = 0x2a333c4d75c17993; PC = 0x555555566140 *)
mov rax L0x7fffffffd488;
(* adc    %rbp,%rax                                #! PC = 0x555555566144 *)
adcs carry rax rax rbp@uint64 carry;
(* mov    %rax,0x48(%rcx)                          #! EA = L0x7fffffffd488; PC = 0x555555566147 *)
mov L0x7fffffffd488 rax;
(* mov    0x50(%rcx),%rax                          #! EA = L0x7fffffffd490; Value = 0x8d547aec346bfc12; PC = 0x55555556614b *)
mov rax L0x7fffffffd490;
(* adc    %r14,%rax                                #! PC = 0x55555556614f *)
adcs carry rax rax r14@uint64 carry;
(* mov    %rax,0x50(%rcx)                          #! EA = L0x7fffffffd490; PC = 0x555555566152 *)
mov L0x7fffffffd490 rax;
(* mov    0x58(%rcx),%rax                          #! EA = L0x7fffffffd498; Value = 0x5d09ed6c17a51234; PC = 0x555555566156 *)
mov rax L0x7fffffffd498;
(* adc    %r15,%rax                                #! PC = 0x55555556615a *)
adcs carry rax rax r15@uint64 carry;
(* mov    %rax,0x58(%rcx)                          #! EA = L0x7fffffffd498; PC = 0x55555556615d *)
mov L0x7fffffffd498 rax;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd250; Value = 0x2b8840c234dabcee; PC = 0x555555566161 *)
mov rax L0x7fffffffd250;
(* adc    %rax,%r8                                 #! PC = 0x555555566165 *)
adcs carry r8 r8 rax@uint64 carry;
(* mov    %r8,0x60(%rcx)                           #! EA = L0x7fffffffd4a0; PC = 0x555555566168 *)
mov L0x7fffffffd4a0 r8;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd258; Value = 0x004e11714a2f6502; PC = 0x55555556616c *)
mov rax L0x7fffffffd258;
(* adc    %rax,%r9                                 #! PC = 0x555555566171 *)
adcs carry r9 r9 rax@uint64 carry;
(* mov    %r9,0x68(%rcx)                           #! EA = L0x7fffffffd4a8; PC = 0x555555566174 *)
mov L0x7fffffffd4a8 r9;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd260; Value = 0x6998d95fd2d20073; PC = 0x555555566178 *)
mov rax L0x7fffffffd260;
(* adc    %rax,%r10                                #! PC = 0x55555556617d *)
adcs carry r10 r10 rax@uint64 carry;
(* mov    %r10,0x70(%rcx)                          #! EA = L0x7fffffffd4b0; PC = 0x555555566180 *)
mov L0x7fffffffd4b0 r10;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd268; Value = 0x52d9218cb280976a; PC = 0x555555566184 *)
mov rax L0x7fffffffd268;
(* adc    %rax,%r11                                #! PC = 0x555555566189 *)
adcs carry r11 r11 rax@uint64 carry;
(* mov    %r11,0x78(%rcx)                          #! EA = L0x7fffffffd4b8; PC = 0x55555556618c *)
mov L0x7fffffffd4b8 r11;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd270; Value = 0xace29e64fe56973f; PC = 0x555555566190 *)
mov rax L0x7fffffffd270;
(* adc    %rax,%r12                                #! PC = 0x555555566195 *)
adcs carry r12 r12 rax@uint64 carry;
(* mov    %r12,0x80(%rcx)                          #! EA = L0x7fffffffd4c0; PC = 0x555555566198 *)
mov L0x7fffffffd4c0 r12;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd278; Value = 0x0109967f65c0224f; PC = 0x55555556619f *)
mov rax L0x7fffffffd278;
(* adc    %rax,%r13                                #! PC = 0x5555555661a4 *)
adcs carry r13 r13 rax@uint64 carry;
(* mov    %r13,0x88(%rcx)                          #! EA = L0x7fffffffd4c8; PC = 0x5555555661a7 *)
mov L0x7fffffffd4c8 r13;
(* mov    0x30(%rsp),%r8                           #! EA = L0x7fffffffd280; Value = 0xf13377f6f72859f0; PC = 0x5555555661ae *)
mov r8 L0x7fffffffd280;
(* mov    0x38(%rsp),%r9                           #! EA = L0x7fffffffd288; Value = 0x098b2777356c4f9b; PC = 0x5555555661b3 *)
mov r9 L0x7fffffffd288;
(* mov    0x40(%rsp),%r10                          #! EA = L0x7fffffffd290; Value = 0xf9db0225b3e4d580; PC = 0x5555555661b8 *)
mov r10 L0x7fffffffd290;
(* mov    0x48(%rsp),%r11                          #! EA = L0x7fffffffd298; Value = 0x06a6ae5ad2a753ed; PC = 0x5555555661bd *)
mov r11 L0x7fffffffd298;
(* mov    0x50(%rsp),%r12                          #! EA = L0x7fffffffd2a0; Value = 0x38073f0ab65a000f; PC = 0x5555555661c2 *)
mov r12 L0x7fffffffd2a0;
(* mov    0x58(%rsp),%r13                          #! EA = L0x7fffffffd2a8; Value = 0x000000002a1597a0; PC = 0x5555555661c7 *)
mov r13 L0x7fffffffd2a8;
(* adc    $0x0,%r8                                 #! PC = 0x5555555661cc *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x5555555661d0 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x5555555661d4 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r11                                #! PC = 0x5555555661d8 *)
adcs carry r11 r11 0x0@uint64 carry;
(* adc    $0x0,%r12                                #! PC = 0x5555555661dc *)
adcs carry r12 r12 0x0@uint64 carry;
(* adc    $0x0,%r13                                #! PC = 0x5555555661e0 *)
adcs carry r13 r13 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    $0x98,%rsp                               #! PC = 0x5555555661e4 *)
adds carry rsp rsp 0x98@uint64;
(* mov    %r8,0x90(%rcx)                           #! EA = L0x7fffffffd4d0; PC = 0x5555555661eb *)
mov L0x7fffffffd4d0 r8;
(* mov    %r9,0x98(%rcx)                           #! EA = L0x7fffffffd4d8; PC = 0x5555555661f2 *)
mov L0x7fffffffd4d8 r9;
(* mov    %r10,0xa0(%rcx)                          #! EA = L0x7fffffffd4e0; PC = 0x5555555661f9 *)
mov L0x7fffffffd4e0 r10;
(* mov    %r11,0xa8(%rcx)                          #! EA = L0x7fffffffd4e8; PC = 0x555555566200 *)
mov L0x7fffffffd4e8 r11;
(* mov    %r12,0xb0(%rcx)                          #! EA = L0x7fffffffd4f0; PC = 0x555555566207 *)
mov L0x7fffffffd4f0 r12;
(* mov    %r13,0xb8(%rcx)                          #! EA = L0x7fffffffd4f8; PC = 0x55555556620e *)
mov L0x7fffffffd4f8 r13;
(* #! <- SP = 0x7fffffffd318 *)
#! 0x7fffffffd318 = 0x7fffffffd318;
(* #retq                                           #! PC = 0x55555556621f *)
#retq                                           #! 0x55555556621f = 0x55555556621f;
(* mov    %rbp,%rdi                                #! PC = 0x555555558d47 *)
mov rdi rbp;
(* #callq  0x5555555650d0 <rdc_mont>               #! PC = 0x555555558d4a *)
#callq  0x5555555650d0 <rdc_mont>               #! 0x555555558d4a = 0x555555558d4a;
(* #! -> SP = 0x7fffffffd318 *)
#! 0x7fffffffd318 = 0x7fffffffd318;
(* #jmpq   0x555555566220 <rdc751_asm>             #! PC = 0x5555555650d4 *)
#jmpq   0x555555566220 <rdc751_asm>             #! 0x5555555650d4 = 0x5555555650d4;
(* mov    (%rdi),%rdx                              #! EA = L0x7fffffffd440; Value = 0xcd8e4dffb7b9634a; PC = 0x55555556622a *)
mov rdx L0x7fffffffd440;
(* mulx   0x45d2(%rip),%r9,%r8        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x55555556622d *)
mull r8 r9 L0x55555556a808 rdx;
(* mulx   0x45d1(%rip),%r10,%r13        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x555555566236 *)
mull r13 r10 L0x55555556a810 rdx;
(* mov    %r9,0x30(%rsi)                           #! EA = L0x7fffffffdb70; PC = 0x55555556623f *)
mov L0x7fffffffdb70 r9;
(* xor    %rax,%rax                                #! PC = 0x555555566243 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x45c9(%rip),%r12,%r14        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x555555566246 *)
mull r14 r12 L0x55555556a818 rdx;
(* adox   %r10,%r8                                 #! PC = 0x55555556624f *)
adcs overflow r8 r8 r10 overflow;
(* adox   %r12,%r13                                #! PC = 0x555555566255 *)
adcs overflow r13 r13 r12 overflow;
(* mulx   0x45bc(%rip),%r10,%r9        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x55555556625b *)
mull r9 r10 L0x55555556a820 rdx;
(* adox   %r10,%r14                                #! PC = 0x555555566264 *)
adcs overflow r14 r14 r10 overflow;
(* mulx   0x45b5(%rip),%r11,%r12        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x55555556626a *)
mull r12 r11 L0x55555556a828 rdx;
(* adox   %r11,%r9                                 #! PC = 0x555555566273 *)
adcs overflow r9 r9 r11 overflow;
(* mulx   0x45ae(%rip),%rbp,%r10        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x555555566279 *)
mull r10 rbp L0x55555556a830 rdx;
(* adox   %rbp,%r12                                #! PC = 0x555555566282 *)
adcs overflow r12 r12 rbp overflow;
(* mulx   0x45a7(%rip),%rbx,%r11        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x555555566288 *)
mull r11 rbx L0x55555556a838 rdx;
(* adox   %rbx,%r10                                #! PC = 0x555555566291 *)
adcs overflow r10 r10 rbx overflow;
(* adox   %rax,%r11                                #! PC = 0x555555566297 *)
adcs overflow r11 r11 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x8(%rdi),%rdx                           #! EA = L0x7fffffffd448; Value = 0xa4ed972b3512ec8e; PC = 0x55555556629d *)
mov rdx L0x7fffffffd448;
(* mulx   0x455e(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x5555555662a1 *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555662aa *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %rbp,%r8                                 #! PC = 0x5555555662ad *)
adcs carry r8 r8 rbp carry;
(* mov    %r8,0x38(%rsi)                           #! EA = L0x7fffffffdb78; PC = 0x5555555662b3 *)
mov L0x7fffffffdb78 r8;
(* adcx   %rbx,%r13                                #! PC = 0x5555555662b7 *)
adcs carry r13 r13 rbx carry;
(* mulx   0x454a(%rip),%rbx,%rbp        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x5555555662bd *)
mull rbp rbx L0x55555556a810 rdx;
(* adox   %rbx,%r13                                #! PC = 0x5555555662c6 *)
adcs overflow r13 r13 rbx overflow;
(* adcx   %rbp,%r14                                #! PC = 0x5555555662cc *)
adcs carry r14 r14 rbp carry;
(* mulx   0x453d(%rip),%rbx,%r8        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x5555555662d2 *)
mull r8 rbx L0x55555556a818 rdx;
(* adox   %rbx,%r14                                #! PC = 0x5555555662db *)
adcs overflow r14 r14 rbx overflow;
(* adcx   %r9,%r8                                  #! PC = 0x5555555662e1 *)
adcs carry r8 r8 r9 carry;
(* mulx   0x4530(%rip),%rbp,%r9        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x5555555662e7 *)
mull r9 rbp L0x55555556a820 rdx;
(* adcx   %r12,%r9                                 #! PC = 0x5555555662f0 *)
adcs carry r9 r9 r12 carry;
(* mulx   0x4529(%rip),%rbx,%r12        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x5555555662f6 *)
mull r12 rbx L0x55555556a828 rdx;
(* adcx   %r12,%r10                                #! PC = 0x5555555662ff *)
adcs carry r10 r10 r12 carry;
(* mulx   0x4522(%rip),%rcx,%r12        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x555555566305 *)
mull r12 rcx L0x55555556a830 rdx;
(* adcx   %r12,%r11                                #! PC = 0x55555556630e *)
adcs carry r11 r11 r12 carry;
(* mulx   0x451b(%rip),%rdx,%r12        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x555555566314 *)
mull r12 rdx L0x55555556a838 rdx;
(* adcx   %rax,%r12                                #! PC = 0x55555556631d *)
adcs carry r12 r12 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %rbp,%r8                                 #! PC = 0x555555566323 *)
adcs overflow r8 r8 rbp overflow;
(* adox   %rbx,%r9                                 #! PC = 0x555555566329 *)
adcs overflow r9 r9 rbx overflow;
(* adox   %rcx,%r10                                #! PC = 0x55555556632f *)
adcs overflow r10 r10 rcx overflow;
(* adox   %rdx,%r11                                #! PC = 0x555555566335 *)
adcs overflow r11 r11 rdx overflow;
(* adox   %rax,%r12                                #! PC = 0x55555556633b *)
adcs overflow r12 r12 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x10(%rdi),%rdx                          #! EA = L0x7fffffffd450; Value = 0x3a841264cae6b5f1; PC = 0x555555566341 *)
mov rdx L0x7fffffffd450;
(* mulx   0x44ba(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x555555566345 *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x55555556634e *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %rbp,%r13                                #! PC = 0x555555566351 *)
adcs carry r13 r13 rbp carry;
(* mov    %r13,0x40(%rsi)                          #! EA = L0x7fffffffdb80; PC = 0x555555566357 *)
mov L0x7fffffffdb80 r13;
(* adcx   %rbx,%r14                                #! PC = 0x55555556635b *)
adcs carry r14 r14 rbx carry;
(* mulx   0x44a6(%rip),%rbp,%rbx        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x555555566361 *)
mull rbx rbp L0x55555556a810 rdx;
(* adox   %rbp,%r14                                #! PC = 0x55555556636a *)
adcs overflow r14 r14 rbp overflow;
(* adcx   %rbx,%r8                                 #! PC = 0x555555566370 *)
adcs carry r8 r8 rbx carry;
(* mulx   0x4499(%rip),%rbx,%r13        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x555555566376 *)
mull r13 rbx L0x55555556a818 rdx;
(* adox   %rbx,%r8                                 #! PC = 0x55555556637f *)
adcs overflow r8 r8 rbx overflow;
(* adcx   %r13,%r9                                 #! PC = 0x555555566385 *)
adcs carry r9 r9 r13 carry;
(* mulx   0x448c(%rip),%rbp,%r13        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x55555556638b *)
mull r13 rbp L0x55555556a820 rdx;
(* adcx   %r13,%r10                                #! PC = 0x555555566394 *)
adcs carry r10 r10 r13 carry;
(* mulx   0x4485(%rip),%rbx,%r13        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x55555556639a *)
mull r13 rbx L0x55555556a828 rdx;
(* adcx   %r13,%r11                                #! PC = 0x5555555663a3 *)
adcs carry r11 r11 r13 carry;
(* mulx   0x447e(%rip),%rcx,%r13        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x5555555663a9 *)
mull r13 rcx L0x55555556a830 rdx;
(* adcx   %r13,%r12                                #! PC = 0x5555555663b2 *)
adcs carry r12 r12 r13 carry;
(* mulx   0x4477(%rip),%rdx,%r13        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x5555555663b8 *)
mull r13 rdx L0x55555556a838 rdx;
(* adcx   %rax,%r13                                #! PC = 0x5555555663c1 *)
adcs carry r13 r13 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %rbp,%r9                                 #! PC = 0x5555555663c7 *)
adcs overflow r9 r9 rbp overflow;
(* adox   %rbx,%r10                                #! PC = 0x5555555663cd *)
adcs overflow r10 r10 rbx overflow;
(* adox   %rcx,%r11                                #! PC = 0x5555555663d3 *)
adcs overflow r11 r11 rcx overflow;
(* adox   %rdx,%r12                                #! PC = 0x5555555663d9 *)
adcs overflow r12 r12 rdx overflow;
(* adox   %rax,%r13                                #! PC = 0x5555555663df *)
adcs overflow r13 r13 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x18(%rdi),%rdx                          #! EA = L0x7fffffffd458; Value = 0x536293445845f421; PC = 0x5555555663e5 *)
mov rdx L0x7fffffffd458;
(* mulx   0x4416(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x5555555663e9 *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555663f2 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r14,%rbp                                #! PC = 0x5555555663f5 *)
adcs carry rbp rbp r14 carry;
(* adcx   %rbx,%r8                                 #! PC = 0x5555555663fb *)
adcs carry r8 r8 rbx carry;
(* mulx   0x4406(%rip),%r15,%rbx        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x555555566401 *)
mull rbx r15 L0x55555556a810 rdx;
(* adox   %r15,%r8                                 #! PC = 0x55555556640a *)
adcs overflow r8 r8 r15 overflow;
(* adcx   %rbx,%r9                                 #! PC = 0x555555566410 *)
adcs carry r9 r9 rbx carry;
(* mulx   0x43f9(%rip),%rbx,%r14        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x555555566416 *)
mull r14 rbx L0x55555556a818 rdx;
(* adox   %rbx,%r9                                 #! PC = 0x55555556641f *)
adcs overflow r9 r9 rbx overflow;
(* adcx   %r14,%r10                                #! PC = 0x555555566425 *)
adcs carry r10 r10 r14 carry;
(* mulx   0x43ec(%rip),%r15,%r14        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x55555556642b *)
mull r14 r15 L0x55555556a820 rdx;
(* adcx   %r14,%r11                                #! PC = 0x555555566434 *)
adcs carry r11 r11 r14 carry;
(* mulx   0x43e5(%rip),%rbx,%r14        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x55555556643a *)
mull r14 rbx L0x55555556a828 rdx;
(* adcx   %r14,%r12                                #! PC = 0x555555566443 *)
adcs carry r12 r12 r14 carry;
(* mulx   0x43de(%rip),%rcx,%r14        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x555555566449 *)
mull r14 rcx L0x55555556a830 rdx;
(* adcx   %r14,%r13                                #! PC = 0x555555566452 *)
adcs carry r13 r13 r14 carry;
(* mulx   0x43d7(%rip),%rdx,%r14        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x555555566458 *)
mull r14 rdx L0x55555556a838 rdx;
(* adcx   %rax,%r14                                #! PC = 0x555555566461 *)
adcs carry r14 r14 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r10                                #! PC = 0x555555566467 *)
adcs overflow r10 r10 r15 overflow;
(* adox   %rbx,%r11                                #! PC = 0x55555556646d *)
adcs overflow r11 r11 rbx overflow;
(* adox   %rcx,%r12                                #! PC = 0x555555566473 *)
adcs overflow r12 r12 rcx overflow;
(* adox   %rdx,%r13                                #! PC = 0x555555566479 *)
adcs overflow r13 r13 rdx overflow;
(* adox   %rax,%r14                                #! PC = 0x55555556647f *)
adcs overflow r14 r14 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* xor    %r15,%r15                                #! PC = 0x555555566485 *)
mov r15 0@uint64;
clear carry;
clear overflow;
(* mov    0x30(%rsi),%rax                          #! EA = L0x7fffffffdb70; Value = 0x0ee0000000000000; PC = 0x555555566488 *)
mov rax L0x7fffffffdb70;
(* mov    0x38(%rsi),%rdx                          #! EA = L0x7fffffffdb78; Value = 0xb40e76a31e808253; PC = 0x55555556648c *)
mov rdx L0x7fffffffdb78;
(* mov    0x40(%rsi),%rbx                          #! EA = L0x7fffffffdb80; Value = 0x91b76feb3890d2a9; PC = 0x555555566490 *)
mov rbx L0x7fffffffdb80;
(* add    0x28(%rdi),%rax                          #! EA = L0x7fffffffd468; Value = 0xb075ca8a08ab615e; PC = 0x555555566494 *)
adds carry rax rax L0x7fffffffd468;
(* adc    0x30(%rdi),%rdx                          #! EA = L0x7fffffffd470; Value = 0xf75ee346c2d3e10e; PC = 0x555555566498 *)
adcs carry rdx rdx L0x7fffffffd470 carry;
(* adc    0x38(%rdi),%rbx                          #! EA = L0x7fffffffd478; Value = 0xd1c4fbadb8ed2c57; PC = 0x55555556649c *)
adcs carry rbx rbx L0x7fffffffd478 carry;
(* mov    %rax,0x28(%rdi)                          #! EA = L0x7fffffffd468; PC = 0x5555555664a0 *)
mov L0x7fffffffd468 rax;
(* mov    %rdx,0x30(%rdi)                          #! EA = L0x7fffffffd470; PC = 0x5555555664a4 *)
mov L0x7fffffffd470 rdx;
(* mov    %rbx,0x38(%rdi)                          #! EA = L0x7fffffffd478; PC = 0x5555555664a8 *)
mov L0x7fffffffd478 rbx;
(* adc    0x40(%rdi),%rbp                          #! EA = L0x7fffffffd480; Value = 0x6dae4b1c2032c5fa; PC = 0x5555555664ac *)
adcs carry rbp rbp L0x7fffffffd480 carry;
(* adc    0x48(%rdi),%r8                           #! EA = L0x7fffffffd488; Value = 0x32dda94f325f9dca; PC = 0x5555555664b0 *)
adcs carry r8 r8 L0x7fffffffd488 carry;
(* adc    0x50(%rdi),%r9                           #! EA = L0x7fffffffd490; Value = 0x81b8b6b24d549479; PC = 0x5555555664b4 *)
adcs carry r9 r9 L0x7fffffffd490 carry;
(* adc    0x58(%rdi),%r10                          #! EA = L0x7fffffffd498; Value = 0x51e1188137b74cec; PC = 0x5555555664b8 *)
adcs carry r10 r10 L0x7fffffffd498 carry;
(* adc    0x60(%rdi),%r11                          #! EA = L0x7fffffffd4a0; Value = 0x05f2bad1eefb4588; PC = 0x5555555664bc *)
adcs carry r11 r11 L0x7fffffffd4a0 carry;
(* adc    0x68(%rdi),%r12                          #! EA = L0x7fffffffd4a8; Value = 0x0c705636acdbeace; PC = 0x5555555664c0 *)
adcs carry r12 r12 L0x7fffffffd4a8 carry;
(* adc    0x70(%rdi),%r13                          #! EA = L0x7fffffffd4b0; Value = 0xee068e67a0df4164; PC = 0x5555555664c4 *)
adcs carry r13 r13 L0x7fffffffd4b0 carry;
(* adc    0x78(%rdi),%r14                          #! EA = L0x7fffffffd4b8; Value = 0xba9c8e31025dc19f; PC = 0x5555555664c8 *)
adcs carry r14 r14 L0x7fffffffd4b8 carry;
(* adc    0x80(%rdi),%r15                          #! EA = L0x7fffffffd4c0; Value = 0x810b5e55c74014cb; PC = 0x5555555664cc *)
adcs carry r15 r15 L0x7fffffffd4c0 carry;
(* mov    %rbp,0x40(%rdi)                          #! EA = L0x7fffffffd480; PC = 0x5555555664d3 *)
mov L0x7fffffffd480 rbp;
(* mov    %r8,0x48(%rdi)                           #! EA = L0x7fffffffd488; PC = 0x5555555664d7 *)
mov L0x7fffffffd488 r8;
(* mov    %r9,0x50(%rdi)                           #! EA = L0x7fffffffd490; PC = 0x5555555664db *)
mov L0x7fffffffd490 r9;
(* mov    %r10,0x58(%rdi)                          #! EA = L0x7fffffffd498; PC = 0x5555555664df *)
mov L0x7fffffffd498 r10;
(* mov    %r11,0x60(%rdi)                          #! EA = L0x7fffffffd4a0; PC = 0x5555555664e3 *)
mov L0x7fffffffd4a0 r11;
(* mov    %r12,0x68(%rdi)                          #! EA = L0x7fffffffd4a8; PC = 0x5555555664e7 *)
mov L0x7fffffffd4a8 r12;
(* mov    %r13,0x70(%rdi)                          #! EA = L0x7fffffffd4b0; PC = 0x5555555664eb *)
mov L0x7fffffffd4b0 r13;
(* mov    %r14,0x78(%rdi)                          #! EA = L0x7fffffffd4b8; PC = 0x5555555664ef *)
mov L0x7fffffffd4b8 r14;
(* mov    %r15,0x80(%rdi)                          #! EA = L0x7fffffffd4c0; PC = 0x5555555664f3 *)
mov L0x7fffffffd4c0 r15;
(* mov    0x88(%rdi),%r8                           #! EA = L0x7fffffffd4c8; Value = 0x010a1d1e5f39d504; PC = 0x5555555664fa *)
mov r8 L0x7fffffffd4c8;
(* mov    0x90(%rdi),%r9                           #! EA = L0x7fffffffd4d0; Value = 0xf13377f6f72859f0; PC = 0x555555566501 *)
mov r9 L0x7fffffffd4d0;
(* mov    0x98(%rdi),%r10                          #! EA = L0x7fffffffd4d8; Value = 0x098b2777356c4f9b; PC = 0x555555566508 *)
mov r10 L0x7fffffffd4d8;
(* mov    0xa0(%rdi),%r11                          #! EA = L0x7fffffffd4e0; Value = 0xf9db0225b3e4d580; PC = 0x55555556650f *)
mov r11 L0x7fffffffd4e0;
(* mov    0xa8(%rdi),%r12                          #! EA = L0x7fffffffd4e8; Value = 0x06a6ae5ad2a753ed; PC = 0x555555566516 *)
mov r12 L0x7fffffffd4e8;
(* mov    0xb0(%rdi),%r13                          #! EA = L0x7fffffffd4f0; Value = 0x38073f0ab65a000f; PC = 0x55555556651d *)
mov r13 L0x7fffffffd4f0;
(* mov    0xb8(%rdi),%r14                          #! EA = L0x7fffffffd4f8; Value = 0x000000002a1597a0; PC = 0x555555566524 *)
mov r14 L0x7fffffffd4f8;
(* adc    $0x0,%r8                                 #! PC = 0x55555556652b *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x55555556652f *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x555555566533 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r11                                #! PC = 0x555555566537 *)
adcs carry r11 r11 0x0@uint64 carry;
(* adc    $0x0,%r12                                #! PC = 0x55555556653b *)
adcs carry r12 r12 0x0@uint64 carry;
(* adc    $0x0,%r13                                #! PC = 0x55555556653f *)
adcs carry r13 r13 0x0@uint64 carry;
(* adc    $0x0,%r14                                #! PC = 0x555555566543 *)
adcs carry r14 r14 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r8,0x88(%rdi)                           #! EA = L0x7fffffffd4c8; PC = 0x555555566547 *)
mov L0x7fffffffd4c8 r8;
(* mov    %r9,0x90(%rdi)                           #! EA = L0x7fffffffd4d0; PC = 0x55555556654e *)
mov L0x7fffffffd4d0 r9;
(* mov    %r10,0x98(%rdi)                          #! EA = L0x7fffffffd4d8; PC = 0x555555566555 *)
mov L0x7fffffffd4d8 r10;
(* mov    %r11,0xa0(%rdi)                          #! EA = L0x7fffffffd4e0; PC = 0x55555556655c *)
mov L0x7fffffffd4e0 r11;
(* mov    %r12,0xa8(%rdi)                          #! EA = L0x7fffffffd4e8; PC = 0x555555566563 *)
mov L0x7fffffffd4e8 r12;
(* mov    %r13,0xb0(%rdi)                          #! EA = L0x7fffffffd4f0; PC = 0x55555556656a *)
mov L0x7fffffffd4f0 r13;
(* mov    %r14,0xb8(%rdi)                          #! EA = L0x7fffffffd4f8; PC = 0x555555566571 *)
mov L0x7fffffffd4f8 r14;
(* mov    0x20(%rdi),%rdx                          #! EA = L0x7fffffffd460; Value = 0x8d8aa717f124cffe; PC = 0x555555566578 *)
mov rdx L0x7fffffffd460;
(* mulx   0x4283(%rip),%r9,%r8        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x55555556657c *)
mull r8 r9 L0x55555556a808 rdx;
(* mulx   0x4282(%rip),%r10,%r13        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x555555566585 *)
mull r13 r10 L0x55555556a810 rdx;
(* mov    %r9,0x30(%rsi)                           #! EA = L0x7fffffffdb70; PC = 0x55555556658e *)
mov L0x7fffffffdb70 r9;
(* xor    %rax,%rax                                #! PC = 0x555555566592 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x427a(%rip),%r12,%r14        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x555555566595 *)
mull r14 r12 L0x55555556a818 rdx;
(* adox   %r10,%r8                                 #! PC = 0x55555556659e *)
adcs overflow r8 r8 r10 overflow;
(* adox   %r12,%r13                                #! PC = 0x5555555665a4 *)
adcs overflow r13 r13 r12 overflow;
(* mulx   0x426d(%rip),%r10,%r9        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x5555555665aa *)
mull r9 r10 L0x55555556a820 rdx;
(* adox   %r10,%r14                                #! PC = 0x5555555665b3 *)
adcs overflow r14 r14 r10 overflow;
(* mulx   0x4266(%rip),%r11,%r12        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x5555555665b9 *)
mull r12 r11 L0x55555556a828 rdx;
(* adox   %r11,%r9                                 #! PC = 0x5555555665c2 *)
adcs overflow r9 r9 r11 overflow;
(* mulx   0x425f(%rip),%rbp,%r10        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x5555555665c8 *)
mull r10 rbp L0x55555556a830 rdx;
(* adox   %rbp,%r12                                #! PC = 0x5555555665d1 *)
adcs overflow r12 r12 rbp overflow;
(* mulx   0x4258(%rip),%rbx,%r11        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x5555555665d7 *)
mull r11 rbx L0x55555556a838 rdx;
(* adox   %rbx,%r10                                #! PC = 0x5555555665e0 *)
adcs overflow r10 r10 rbx overflow;
(* adox   %rax,%r11                                #! PC = 0x5555555665e6 *)
adcs overflow r11 r11 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x28(%rdi),%rdx                          #! EA = L0x7fffffffd468; Value = 0xbf55ca8a08ab615e; PC = 0x5555555665ec *)
mov rdx L0x7fffffffd468;
(* mulx   0x420f(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x5555555665f0 *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555665f9 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %rbp,%r8                                 #! PC = 0x5555555665fc *)
adcs carry r8 r8 rbp carry;
(* mov    %r8,0x38(%rsi)                           #! EA = L0x7fffffffdb78; PC = 0x555555566602 *)
mov L0x7fffffffdb78 r8;
(* adcx   %rbx,%r13                                #! PC = 0x555555566606 *)
adcs carry r13 r13 rbx carry;
(* mulx   0x41fb(%rip),%rbx,%rbp        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x55555556660c *)
mull rbp rbx L0x55555556a810 rdx;
(* adox   %rbx,%r13                                #! PC = 0x555555566615 *)
adcs overflow r13 r13 rbx overflow;
(* adcx   %rbp,%r14                                #! PC = 0x55555556661b *)
adcs carry r14 r14 rbp carry;
(* mulx   0x41ee(%rip),%rbx,%r8        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x555555566621 *)
mull r8 rbx L0x55555556a818 rdx;
(* adox   %rbx,%r14                                #! PC = 0x55555556662a *)
adcs overflow r14 r14 rbx overflow;
(* adcx   %r9,%r8                                  #! PC = 0x555555566630 *)
adcs carry r8 r8 r9 carry;
(* mulx   0x41e1(%rip),%rbp,%r9        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x555555566636 *)
mull r9 rbp L0x55555556a820 rdx;
(* adcx   %r12,%r9                                 #! PC = 0x55555556663f *)
adcs carry r9 r9 r12 carry;
(* mulx   0x41da(%rip),%rbx,%r12        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x555555566645 *)
mull r12 rbx L0x55555556a828 rdx;
(* adcx   %r12,%r10                                #! PC = 0x55555556664e *)
adcs carry r10 r10 r12 carry;
(* mulx   0x41d3(%rip),%rcx,%r12        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x555555566654 *)
mull r12 rcx L0x55555556a830 rdx;
(* adcx   %r12,%r11                                #! PC = 0x55555556665d *)
adcs carry r11 r11 r12 carry;
(* mulx   0x41cc(%rip),%rdx,%r12        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x555555566663 *)
mull r12 rdx L0x55555556a838 rdx;
(* adcx   %rax,%r12                                #! PC = 0x55555556666c *)
adcs carry r12 r12 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %rbp,%r8                                 #! PC = 0x555555566672 *)
adcs overflow r8 r8 rbp overflow;
(* adox   %rbx,%r9                                 #! PC = 0x555555566678 *)
adcs overflow r9 r9 rbx overflow;
(* adox   %rcx,%r10                                #! PC = 0x55555556667e *)
adcs overflow r10 r10 rcx overflow;
(* adox   %rdx,%r11                                #! PC = 0x555555566684 *)
adcs overflow r11 r11 rdx overflow;
(* adox   %rax,%r12                                #! PC = 0x55555556668a *)
adcs overflow r12 r12 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x30(%rdi),%rdx                          #! EA = L0x7fffffffd470; Value = 0xab6d59e9e1546361; PC = 0x555555566690 *)
mov rdx L0x7fffffffd470;
(* mulx   0x416b(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x555555566694 *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x55555556669d *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %rbp,%r13                                #! PC = 0x5555555666a0 *)
adcs carry r13 r13 rbp carry;
(* mov    %r13,0x40(%rsi)                          #! EA = L0x7fffffffdb80; PC = 0x5555555666a6 *)
mov L0x7fffffffdb80 r13;
(* adcx   %rbx,%r14                                #! PC = 0x5555555666aa *)
adcs carry r14 r14 rbx carry;
(* mulx   0x4157(%rip),%rbp,%rbx        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x5555555666b0 *)
mull rbx rbp L0x55555556a810 rdx;
(* adox   %rbp,%r14                                #! PC = 0x5555555666b9 *)
adcs overflow r14 r14 rbp overflow;
(* adcx   %rbx,%r8                                 #! PC = 0x5555555666bf *)
adcs carry r8 r8 rbx carry;
(* mulx   0x414a(%rip),%rbx,%r13        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x5555555666c5 *)
mull r13 rbx L0x55555556a818 rdx;
(* adox   %rbx,%r8                                 #! PC = 0x5555555666ce *)
adcs overflow r8 r8 rbx overflow;
(* adcx   %r13,%r9                                 #! PC = 0x5555555666d4 *)
adcs carry r9 r9 r13 carry;
(* mulx   0x413d(%rip),%rbp,%r13        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x5555555666da *)
mull r13 rbp L0x55555556a820 rdx;
(* adcx   %r13,%r10                                #! PC = 0x5555555666e3 *)
adcs carry r10 r10 r13 carry;
(* mulx   0x4136(%rip),%rbx,%r13        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x5555555666e9 *)
mull r13 rbx L0x55555556a828 rdx;
(* adcx   %r13,%r11                                #! PC = 0x5555555666f2 *)
adcs carry r11 r11 r13 carry;
(* mulx   0x412f(%rip),%rcx,%r13        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x5555555666f8 *)
mull r13 rcx L0x55555556a830 rdx;
(* adcx   %r13,%r12                                #! PC = 0x555555566701 *)
adcs carry r12 r12 r13 carry;
(* mulx   0x4128(%rip),%rdx,%r13        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x555555566707 *)
mull r13 rdx L0x55555556a838 rdx;
(* adcx   %rax,%r13                                #! PC = 0x555555566710 *)
adcs carry r13 r13 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %rbp,%r9                                 #! PC = 0x555555566716 *)
adcs overflow r9 r9 rbp overflow;
(* adox   %rbx,%r10                                #! PC = 0x55555556671c *)
adcs overflow r10 r10 rbx overflow;
(* adox   %rcx,%r11                                #! PC = 0x555555566722 *)
adcs overflow r11 r11 rcx overflow;
(* adox   %rdx,%r12                                #! PC = 0x555555566728 *)
adcs overflow r12 r12 rdx overflow;
(* adox   %rax,%r13                                #! PC = 0x55555556672e *)
adcs overflow r13 r13 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x38(%rdi),%rdx                          #! EA = L0x7fffffffd478; Value = 0x637c6b98f17dff01; PC = 0x555555566734 *)
mov rdx L0x7fffffffd478;
(* mulx   0x40c7(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x555555566738 *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555566741 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r14,%rbp                                #! PC = 0x555555566744 *)
adcs carry rbp rbp r14 carry;
(* adcx   %rbx,%r8                                 #! PC = 0x55555556674a *)
adcs carry r8 r8 rbx carry;
(* mulx   0x40b7(%rip),%r15,%rbx        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x555555566750 *)
mull rbx r15 L0x55555556a810 rdx;
(* adox   %r15,%r8                                 #! PC = 0x555555566759 *)
adcs overflow r8 r8 r15 overflow;
(* adcx   %rbx,%r9                                 #! PC = 0x55555556675f *)
adcs carry r9 r9 rbx carry;
(* mulx   0x40aa(%rip),%rbx,%r14        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x555555566765 *)
mull r14 rbx L0x55555556a818 rdx;
(* adox   %rbx,%r9                                 #! PC = 0x55555556676e *)
adcs overflow r9 r9 rbx overflow;
(* adcx   %r14,%r10                                #! PC = 0x555555566774 *)
adcs carry r10 r10 r14 carry;
(* mulx   0x409d(%rip),%r15,%r14        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x55555556677a *)
mull r14 r15 L0x55555556a820 rdx;
(* adcx   %r14,%r11                                #! PC = 0x555555566783 *)
adcs carry r11 r11 r14 carry;
(* mulx   0x4096(%rip),%rbx,%r14        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x555555566789 *)
mull r14 rbx L0x55555556a828 rdx;
(* adcx   %r14,%r12                                #! PC = 0x555555566792 *)
adcs carry r12 r12 r14 carry;
(* mulx   0x408f(%rip),%rcx,%r14        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x555555566798 *)
mull r14 rcx L0x55555556a830 rdx;
(* adcx   %r14,%r13                                #! PC = 0x5555555667a1 *)
adcs carry r13 r13 r14 carry;
(* mulx   0x4088(%rip),%rdx,%r14        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x5555555667a7 *)
mull r14 rdx L0x55555556a838 rdx;
(* adcx   %rax,%r14                                #! PC = 0x5555555667b0 *)
adcs carry r14 r14 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r10                                #! PC = 0x5555555667b6 *)
adcs overflow r10 r10 r15 overflow;
(* adox   %rbx,%r11                                #! PC = 0x5555555667bc *)
adcs overflow r11 r11 rbx overflow;
(* adox   %rcx,%r12                                #! PC = 0x5555555667c2 *)
adcs overflow r12 r12 rcx overflow;
(* adox   %rdx,%r13                                #! PC = 0x5555555667c8 *)
adcs overflow r13 r13 rdx overflow;
(* adox   %rax,%r14                                #! PC = 0x5555555667ce *)
adcs overflow r14 r14 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* xor    %r15,%r15                                #! PC = 0x5555555667d4 *)
mov r15 0@uint64;
clear carry;
clear overflow;
(* mov    0x30(%rsi),%rax                          #! EA = L0x7fffffffdb70; Value = 0x22a0000000000000; PC = 0x5555555667d7 *)
mov rax L0x7fffffffdb70;
(* mov    0x38(%rsi),%rdx                          #! EA = L0x7fffffffdb78; Value = 0x3f051559905d915d; PC = 0x5555555667db *)
mov rdx L0x7fffffffdb78;
(* mov    0x40(%rsi),%rbx                          #! EA = L0x7fffffffdb80; Value = 0xefd904b5f3a63ae4; PC = 0x5555555667df *)
mov rbx L0x7fffffffdb80;
(* add    0x48(%rdi),%rax                          #! EA = L0x7fffffffd488; Value = 0x6d7a6d6a6f2d961b; PC = 0x5555555667e3 *)
adds carry rax rax L0x7fffffffd488;
(* adc    0x50(%rdi),%rdx                          #! EA = L0x7fffffffd490; Value = 0xe80fc66233095bcd; PC = 0x5555555667e7 *)
adcs carry rdx rdx L0x7fffffffd490 carry;
(* adc    0x58(%rdi),%rbx                          #! EA = L0x7fffffffd498; Value = 0x57425251220fee14; PC = 0x5555555667eb *)
adcs carry rbx rbx L0x7fffffffd498 carry;
(* mov    %rax,0x48(%rdi)                          #! EA = L0x7fffffffd488; PC = 0x5555555667ef *)
mov L0x7fffffffd488 rax;
(* mov    %rdx,0x50(%rdi)                          #! EA = L0x7fffffffd490; PC = 0x5555555667f3 *)
mov L0x7fffffffd490 rdx;
(* mov    %rbx,0x58(%rdi)                          #! EA = L0x7fffffffd498; PC = 0x5555555667f7 *)
mov L0x7fffffffd498 rbx;
(* adc    0x60(%rdi),%rbp                          #! EA = L0x7fffffffd4a0; Value = 0x39f2d66eb5e59b66; PC = 0x5555555667fb *)
adcs carry rbp rbp L0x7fffffffd4a0 carry;
(* adc    0x68(%rdi),%r8                           #! EA = L0x7fffffffd4a8; Value = 0x859f6e9af911015b; PC = 0x5555555667ff *)
adcs carry r8 r8 L0x7fffffffd4a8 carry;
(* adc    0x70(%rdi),%r9                           #! EA = L0x7fffffffd4b0; Value = 0xbab5731f8b6ddf1b; PC = 0x555555566803 *)
adcs carry r9 r9 L0x7fffffffd4b0 carry;
(* adc    0x78(%rdi),%r10                          #! EA = L0x7fffffffd4b8; Value = 0xba9cb2a39cdca115; PC = 0x555555566807 *)
adcs carry r10 r10 L0x7fffffffd4b8 carry;
(* adc    0x80(%rdi),%r11                          #! EA = L0x7fffffffd4c0; Value = 0x810b5e55c74014cb; PC = 0x55555556680b *)
adcs carry r11 r11 L0x7fffffffd4c0 carry;
(* adc    0x88(%rdi),%r12                          #! EA = L0x7fffffffd4c8; Value = 0x010a1d1e5f39d504; PC = 0x555555566812 *)
adcs carry r12 r12 L0x7fffffffd4c8 carry;
(* adc    0x90(%rdi),%r13                          #! EA = L0x7fffffffd4d0; Value = 0xf13377f6f72859f0; PC = 0x555555566819 *)
adcs carry r13 r13 L0x7fffffffd4d0 carry;
(* adc    0x98(%rdi),%r14                          #! EA = L0x7fffffffd4d8; Value = 0x098b2777356c4f9b; PC = 0x555555566820 *)
adcs carry r14 r14 L0x7fffffffd4d8 carry;
(* adc    0xa0(%rdi),%r15                          #! EA = L0x7fffffffd4e0; Value = 0xf9db0225b3e4d580; PC = 0x555555566827 *)
adcs carry r15 r15 L0x7fffffffd4e0 carry;
(* mov    %rbp,(%rsi)                              #! EA = L0x7fffffffdb40; PC = 0x55555556682e *)
mov L0x7fffffffdb40 rbp;
(* mov    %r8,0x68(%rdi)                           #! EA = L0x7fffffffd4a8; PC = 0x555555566831 *)
mov L0x7fffffffd4a8 r8;
(* mov    %r9,0x70(%rdi)                           #! EA = L0x7fffffffd4b0; PC = 0x555555566835 *)
mov L0x7fffffffd4b0 r9;
(* mov    %r10,0x78(%rdi)                          #! EA = L0x7fffffffd4b8; PC = 0x555555566839 *)
mov L0x7fffffffd4b8 r10;
(* mov    %r11,0x80(%rdi)                          #! EA = L0x7fffffffd4c0; PC = 0x55555556683d *)
mov L0x7fffffffd4c0 r11;
(* mov    %r12,0x88(%rdi)                          #! EA = L0x7fffffffd4c8; PC = 0x555555566844 *)
mov L0x7fffffffd4c8 r12;
(* mov    %r13,0x90(%rdi)                          #! EA = L0x7fffffffd4d0; PC = 0x55555556684b *)
mov L0x7fffffffd4d0 r13;
(* mov    %r14,0x98(%rdi)                          #! EA = L0x7fffffffd4d8; PC = 0x555555566852 *)
mov L0x7fffffffd4d8 r14;
(* mov    %r15,0xa0(%rdi)                          #! EA = L0x7fffffffd4e0; PC = 0x555555566859 *)
mov L0x7fffffffd4e0 r15;
(* mov    0xa8(%rdi),%r12                          #! EA = L0x7fffffffd4e8; Value = 0x06a6ae5ad2a753ed; PC = 0x555555566860 *)
mov r12 L0x7fffffffd4e8;
(* mov    0xb0(%rdi),%r13                          #! EA = L0x7fffffffd4f0; Value = 0x38073f0ab65a000f; PC = 0x555555566867 *)
mov r13 L0x7fffffffd4f0;
(* mov    0xb8(%rdi),%r14                          #! EA = L0x7fffffffd4f8; Value = 0x000000002a1597a0; PC = 0x55555556686e *)
mov r14 L0x7fffffffd4f8;
(* adc    $0x0,%r12                                #! PC = 0x555555566875 *)
adcs carry r12 r12 0x0@uint64 carry;
(* adc    $0x0,%r13                                #! PC = 0x555555566879 *)
adcs carry r13 r13 0x0@uint64 carry;
(* adc    $0x0,%r14                                #! PC = 0x55555556687d *)
adcs carry r14 r14 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r12,0xa8(%rdi)                          #! EA = L0x7fffffffd4e8; PC = 0x555555566881 *)
mov L0x7fffffffd4e8 r12;
(* mov    %r13,0xb0(%rdi)                          #! EA = L0x7fffffffd4f0; PC = 0x555555566888 *)
mov L0x7fffffffd4f0 r13;
(* mov    %r14,0xb8(%rdi)                          #! EA = L0x7fffffffd4f8; PC = 0x55555556688f *)
mov L0x7fffffffd4f8 r14;
(* mov    0x40(%rdi),%rdx                          #! EA = L0x7fffffffd480; Value = 0xcfcf0c74c9719f25; PC = 0x555555566896 *)
mov rdx L0x7fffffffd480;
(* mulx   0x3f65(%rip),%r9,%r8        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x55555556689a *)
mull r8 r9 L0x55555556a808 rdx;
(* mulx   0x3f64(%rip),%r10,%r13        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x5555555668a3 *)
mull r13 r10 L0x55555556a810 rdx;
(* mov    %r9,0x30(%rsi)                           #! EA = L0x7fffffffdb70; PC = 0x5555555668ac *)
mov L0x7fffffffdb70 r9;
(* xor    %rax,%rax                                #! PC = 0x5555555668b0 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x3f5c(%rip),%r12,%r14        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x5555555668b3 *)
mull r14 r12 L0x55555556a818 rdx;
(* adox   %r10,%r8                                 #! PC = 0x5555555668bc *)
adcs overflow r8 r8 r10 overflow;
(* adox   %r12,%r13                                #! PC = 0x5555555668c2 *)
adcs overflow r13 r13 r12 overflow;
(* mulx   0x3f4f(%rip),%r10,%r9        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x5555555668c8 *)
mull r9 r10 L0x55555556a820 rdx;
(* adox   %r10,%r14                                #! PC = 0x5555555668d1 *)
adcs overflow r14 r14 r10 overflow;
(* mulx   0x3f48(%rip),%r11,%r12        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x5555555668d7 *)
mull r12 r11 L0x55555556a828 rdx;
(* adox   %r11,%r9                                 #! PC = 0x5555555668e0 *)
adcs overflow r9 r9 r11 overflow;
(* mulx   0x3f41(%rip),%rbp,%r10        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x5555555668e6 *)
mull r10 rbp L0x55555556a830 rdx;
(* adox   %rbp,%r12                                #! PC = 0x5555555668ef *)
adcs overflow r12 r12 rbp overflow;
(* mulx   0x3f3a(%rip),%rbx,%r11        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x5555555668f5 *)
mull r11 rbx L0x55555556a838 rdx;
(* adox   %rbx,%r10                                #! PC = 0x5555555668fe *)
adcs overflow r10 r10 rbx overflow;
(* adox   %rax,%r11                                #! PC = 0x555555566904 *)
adcs overflow r11 r11 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd488; Value = 0x901a6d6a6f2d961b; PC = 0x55555556690a *)
mov rdx L0x7fffffffd488;
(* mulx   0x3ef1(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x55555556690e *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555566917 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %rbp,%r8                                 #! PC = 0x55555556691a *)
adcs carry r8 r8 rbp carry;
(* mov    %r8,0x38(%rsi)                           #! EA = L0x7fffffffdb78; PC = 0x555555566920 *)
mov L0x7fffffffdb78 r8;
(* adcx   %rbx,%r13                                #! PC = 0x555555566924 *)
adcs carry r13 r13 rbx carry;
(* mulx   0x3edd(%rip),%rbx,%rbp        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x55555556692a *)
mull rbp rbx L0x55555556a810 rdx;
(* adox   %rbx,%r13                                #! PC = 0x555555566933 *)
adcs overflow r13 r13 rbx overflow;
(* adcx   %rbp,%r14                                #! PC = 0x555555566939 *)
adcs carry r14 r14 rbp carry;
(* mulx   0x3ed0(%rip),%rbx,%r8        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x55555556693f *)
mull r8 rbx L0x55555556a818 rdx;
(* adox   %rbx,%r14                                #! PC = 0x555555566948 *)
adcs overflow r14 r14 rbx overflow;
(* adcx   %r9,%r8                                  #! PC = 0x55555556694e *)
adcs carry r8 r8 r9 carry;
(* mulx   0x3ec3(%rip),%rbp,%r9        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x555555566954 *)
mull r9 rbp L0x55555556a820 rdx;
(* adcx   %r12,%r9                                 #! PC = 0x55555556695d *)
adcs carry r9 r9 r12 carry;
(* mulx   0x3ebc(%rip),%rbx,%r12        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x555555566963 *)
mull r12 rbx L0x55555556a828 rdx;
(* adcx   %r12,%r10                                #! PC = 0x55555556696c *)
adcs carry r10 r10 r12 carry;
(* mulx   0x3eb5(%rip),%rcx,%r12        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x555555566972 *)
mull r12 rcx L0x55555556a830 rdx;
(* adcx   %r12,%r11                                #! PC = 0x55555556697b *)
adcs carry r11 r11 r12 carry;
(* mulx   0x3eae(%rip),%rdx,%r12        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x555555566981 *)
mull r12 rdx L0x55555556a838 rdx;
(* adcx   %rax,%r12                                #! PC = 0x55555556698a *)
adcs carry r12 r12 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %rbp,%r8                                 #! PC = 0x555555566990 *)
adcs overflow r8 r8 rbp overflow;
(* adox   %rbx,%r9                                 #! PC = 0x555555566996 *)
adcs overflow r9 r9 rbx overflow;
(* adox   %rcx,%r10                                #! PC = 0x55555556699c *)
adcs overflow r10 r10 rcx overflow;
(* adox   %rdx,%r11                                #! PC = 0x5555555669a2 *)
adcs overflow r11 r11 rdx overflow;
(* adox   %rax,%r12                                #! PC = 0x5555555669a8 *)
adcs overflow r12 r12 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x50(%rdi),%rdx                          #! EA = L0x7fffffffd490; Value = 0x2714dbbbc366ed2a; PC = 0x5555555669ae *)
mov rdx L0x7fffffffd490;
(* mulx   0x3e4d(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x5555555669b2 *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555669bb *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %rbp,%r13                                #! PC = 0x5555555669be *)
adcs carry r13 r13 rbp carry;
(* mov    %r13,0x40(%rsi)                          #! EA = L0x7fffffffdb80; PC = 0x5555555669c4 *)
mov L0x7fffffffdb80 r13;
(* adcx   %rbx,%r14                                #! PC = 0x5555555669c8 *)
adcs carry r14 r14 rbx carry;
(* mulx   0x3e39(%rip),%rbp,%rbx        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x5555555669ce *)
mull rbx rbp L0x55555556a810 rdx;
(* adox   %rbp,%r14                                #! PC = 0x5555555669d7 *)
adcs overflow r14 r14 rbp overflow;
(* adcx   %rbx,%r8                                 #! PC = 0x5555555669dd *)
adcs carry r8 r8 rbx carry;
(* mulx   0x3e2c(%rip),%rbx,%r13        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x5555555669e3 *)
mull r13 rbx L0x55555556a818 rdx;
(* adox   %rbx,%r8                                 #! PC = 0x5555555669ec *)
adcs overflow r8 r8 rbx overflow;
(* adcx   %r13,%r9                                 #! PC = 0x5555555669f2 *)
adcs carry r9 r9 r13 carry;
(* mulx   0x3e1f(%rip),%rbp,%r13        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x5555555669f8 *)
mull r13 rbp L0x55555556a820 rdx;
(* adcx   %r13,%r10                                #! PC = 0x555555566a01 *)
adcs carry r10 r10 r13 carry;
(* mulx   0x3e18(%rip),%rbx,%r13        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x555555566a07 *)
mull r13 rbx L0x55555556a828 rdx;
(* adcx   %r13,%r11                                #! PC = 0x555555566a10 *)
adcs carry r11 r11 r13 carry;
(* mulx   0x3e11(%rip),%rcx,%r13        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x555555566a16 *)
mull r13 rcx L0x55555556a830 rdx;
(* adcx   %r13,%r12                                #! PC = 0x555555566a1f *)
adcs carry r12 r12 r13 carry;
(* mulx   0x3e0a(%rip),%rdx,%r13        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x555555566a25 *)
mull r13 rdx L0x55555556a838 rdx;
(* adcx   %rax,%r13                                #! PC = 0x555555566a2e *)
adcs carry r13 r13 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %rbp,%r9                                 #! PC = 0x555555566a34 *)
adcs overflow r9 r9 rbp overflow;
(* adox   %rbx,%r10                                #! PC = 0x555555566a3a *)
adcs overflow r10 r10 rbx overflow;
(* adox   %rcx,%r11                                #! PC = 0x555555566a40 *)
adcs overflow r11 r11 rcx overflow;
(* adox   %rdx,%r12                                #! PC = 0x555555566a46 *)
adcs overflow r12 r12 rdx overflow;
(* adox   %rax,%r13                                #! PC = 0x555555566a4c *)
adcs overflow r13 r13 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x58(%rdi),%rdx                          #! EA = L0x7fffffffd498; Value = 0x471b570715b628f9; PC = 0x555555566a52 *)
mov rdx L0x7fffffffd498;
(* mulx   0x3da9(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x555555566a56 *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555566a5f *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r14,%rbp                                #! PC = 0x555555566a62 *)
adcs carry rbp rbp r14 carry;
(* adcx   %rbx,%r8                                 #! PC = 0x555555566a68 *)
adcs carry r8 r8 rbx carry;
(* mulx   0x3d99(%rip),%r15,%rbx        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x555555566a6e *)
mull rbx r15 L0x55555556a810 rdx;
(* adox   %r15,%r8                                 #! PC = 0x555555566a77 *)
adcs overflow r8 r8 r15 overflow;
(* adcx   %rbx,%r9                                 #! PC = 0x555555566a7d *)
adcs carry r9 r9 rbx carry;
(* mulx   0x3d8c(%rip),%rbx,%r14        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x555555566a83 *)
mull r14 rbx L0x55555556a818 rdx;
(* adox   %rbx,%r9                                 #! PC = 0x555555566a8c *)
adcs overflow r9 r9 rbx overflow;
(* adcx   %r14,%r10                                #! PC = 0x555555566a92 *)
adcs carry r10 r10 r14 carry;
(* mulx   0x3d7f(%rip),%r15,%r14        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x555555566a98 *)
mull r14 r15 L0x55555556a820 rdx;
(* adcx   %r14,%r11                                #! PC = 0x555555566aa1 *)
adcs carry r11 r11 r14 carry;
(* mulx   0x3d78(%rip),%rbx,%r14        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x555555566aa7 *)
mull r14 rbx L0x55555556a828 rdx;
(* adcx   %r14,%r12                                #! PC = 0x555555566ab0 *)
adcs carry r12 r12 r14 carry;
(* mulx   0x3d71(%rip),%rcx,%r14        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x555555566ab6 *)
mull r14 rcx L0x55555556a830 rdx;
(* adcx   %r14,%r13                                #! PC = 0x555555566abf *)
adcs carry r13 r13 r14 carry;
(* mulx   0x3d6a(%rip),%rdx,%r14        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x555555566ac5 *)
mull r14 rdx L0x55555556a838 rdx;
(* adcx   %rax,%r14                                #! PC = 0x555555566ace *)
adcs carry r14 r14 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r10                                #! PC = 0x555555566ad4 *)
adcs overflow r10 r10 r15 overflow;
(* adox   %rbx,%r11                                #! PC = 0x555555566ada *)
adcs overflow r11 r11 rbx overflow;
(* adox   %rcx,%r12                                #! PC = 0x555555566ae0 *)
adcs overflow r12 r12 rcx overflow;
(* adox   %rdx,%r13                                #! PC = 0x555555566ae6 *)
adcs overflow r13 r13 rdx overflow;
(* adox   %rax,%r14                                #! PC = 0x555555566aec *)
adcs overflow r14 r14 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x30(%rsi),%rax                          #! EA = L0x7fffffffdb70; Value = 0xcf70000000000000; PC = 0x555555566af2 *)
mov rax L0x7fffffffdb70;
(* mov    0x38(%rsi),%rdx                          #! EA = L0x7fffffffdb78; Value = 0x9b002fab5193e859; PC = 0x555555566af6 *)
mov rdx L0x7fffffffdb78;
(* mov    0x40(%rsi),%rbx                          #! EA = L0x7fffffffdb80; Value = 0x4aa5a780dd0eea4f; PC = 0x555555566afa *)
mov rbx L0x7fffffffdb80;
(* add    0x68(%rdi),%rax                          #! EA = L0x7fffffffd4a8; Value = 0xbceea3758ddaf594; PC = 0x555555566afe *)
adds carry rax rax L0x7fffffffd4a8;
(* adc    0x70(%rdi),%rdx                          #! EA = L0x7fffffffd4b0; Value = 0x582d599bf183ffc3; PC = 0x555555566b02 *)
adcs carry rdx rdx L0x7fffffffd4b0 carry;
(* adc    0x78(%rdi),%rbx                          #! EA = L0x7fffffffd4b8; Value = 0x986fd0def535927d; PC = 0x555555566b06 *)
adcs carry rbx rbx L0x7fffffffd4b8 carry;
(* mov    %rax,0x8(%rsi)                           #! EA = L0x7fffffffdb48; PC = 0x555555566b0a *)
mov L0x7fffffffdb48 rax;
(* mov    %rdx,0x10(%rsi)                          #! EA = L0x7fffffffdb50; PC = 0x555555566b0e *)
mov L0x7fffffffdb50 rdx;
(* mov    %rbx,0x18(%rsi)                          #! EA = L0x7fffffffdb58; PC = 0x555555566b12 *)
mov L0x7fffffffdb58 rbx;
(* adc    0x80(%rdi),%rbp                          #! EA = L0x7fffffffd4c0; Value = 0x40d8381f9ddab4d3; PC = 0x555555566b16 *)
adcs carry rbp rbp L0x7fffffffd4c0 carry;
(* adc    0x88(%rdi),%r8                           #! EA = L0x7fffffffd4c8; Value = 0xe0d3c0ff85e9b2a6; PC = 0x555555566b1d *)
adcs carry r8 r8 L0x7fffffffd4c8 carry;
(* adc    0x90(%rdi),%r9                           #! EA = L0x7fffffffd4d0; Value = 0x1e21ce84c790f029; PC = 0x555555566b24 *)
adcs carry r9 r9 L0x7fffffffd4d0 carry;
(* adc    0x98(%rdi),%r10                          #! EA = L0x7fffffffd4d8; Value = 0x098b52f379400847; PC = 0x555555566b2b *)
adcs carry r10 r10 L0x7fffffffd4d8 carry;
(* adc    0xa0(%rdi),%r11                          #! EA = L0x7fffffffd4e0; Value = 0xf9db0225b3e4d580; PC = 0x555555566b32 *)
adcs carry r11 r11 L0x7fffffffd4e0 carry;
(* adc    0xa8(%rdi),%r12                          #! EA = L0x7fffffffd4e8; Value = 0x06a6ae5ad2a753ed; PC = 0x555555566b39 *)
adcs carry r12 r12 L0x7fffffffd4e8 carry;
(* adc    0xb0(%rdi),%r13                          #! EA = L0x7fffffffd4f0; Value = 0x38073f0ab65a000f; PC = 0x555555566b40 *)
adcs carry r13 r13 L0x7fffffffd4f0 carry;
(* adc    0xb8(%rdi),%r14                          #! EA = L0x7fffffffd4f8; Value = 0x000000002a1597a0; PC = 0x555555566b47 *)
adcs carry r14 r14 L0x7fffffffd4f8 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rbp,0x20(%rsi)                          #! EA = L0x7fffffffdb60; PC = 0x555555566b4e *)
mov L0x7fffffffdb60 rbp;
(* mov    %r8,0x28(%rsi)                           #! EA = L0x7fffffffdb68; PC = 0x555555566b52 *)
mov L0x7fffffffdb68 r8;
(* mov    %r9,0x30(%rsi)                           #! EA = L0x7fffffffdb70; PC = 0x555555566b56 *)
mov L0x7fffffffdb70 r9;
(* mov    %r10,0x38(%rsi)                          #! EA = L0x7fffffffdb78; PC = 0x555555566b5a *)
mov L0x7fffffffdb78 r10;
(* mov    %r11,0x40(%rsi)                          #! EA = L0x7fffffffdb80; PC = 0x555555566b5e *)
mov L0x7fffffffdb80 r11;
(* mov    %r12,0x48(%rsi)                          #! EA = L0x7fffffffdb88; PC = 0x555555566b62 *)
mov L0x7fffffffdb88 r12;
(* mov    %r13,0x50(%rsi)                          #! EA = L0x7fffffffdb90; PC = 0x555555566b66 *)
mov L0x7fffffffdb90 r13;
(* mov    %r14,0x58(%rsi)                          #! EA = L0x7fffffffdb98; PC = 0x555555566b6a *)
mov L0x7fffffffdb98 r14;
(* #! <- SP = 0x7fffffffd318 *)
#! 0x7fffffffd318 = 0x7fffffffd318;
(* #retq                                           #! PC = 0x555555566b78 *)
#retq                                           #! 0x555555566b78 = 0x555555566b78;
(* mov    0x1e8(%rsp),%rax                         #! EA = L0x7fffffffd508; Value = 0xd8d61de2c4887c00; PC = 0x555555558d4f *)
mov rax L0x7fffffffd508;
(* xor    %fs:0x28,%rax                            #! PC = 0x555555558d57 *)
xor rax@uint64 fs0x28 rax;
(* #jne    0x555555558d74 <fp2sqr751_mont+308>     #! PC = 0x555555558d60 *)
#jne    0x555555558d74 <fp2sqr751_mont+308>     #! 0x555555558d60 = 0x555555558d60;
(* add    $0x1f8,%rsp                              #! PC = 0x555555558d62 *)
adds carry rsp rsp 0x1f8@uint64;
(* #! <- SP = 0x7fffffffd548 *)
#! 0x7fffffffd548 = 0x7fffffffd548;
(* #retq                                           #! PC = 0x555555558d73 *)
#retq                                           #! 0x555555558d73 = 0x555555558d73;

ghost c1_rdc_00@uint64, c1_rdc_01@uint64, c1_rdc_02@uint64, c1_rdc_03@uint64, c1_rdc_04@uint64, c1_rdc_05@uint64,
      c1_rdc_06@uint64, c1_rdc_07@uint64, c1_rdc_08@uint64, c1_rdc_09@uint64, c1_rdc_10@uint64, c1_rdc_11@uint64 :
  and [
    c1_rdc_00 = L0x7fffffffdb40, c1_rdc_01 = L0x7fffffffdb48, c1_rdc_02 = L0x7fffffffdb50,
    c1_rdc_03 = L0x7fffffffdb58, c1_rdc_04 = L0x7fffffffdb60, c1_rdc_05 = L0x7fffffffdb68,
    c1_rdc_06 = L0x7fffffffdb70, c1_rdc_07 = L0x7fffffffdb78, c1_rdc_08 = L0x7fffffffdb80,
    c1_rdc_09 = L0x7fffffffdb88, c1_rdc_10 = L0x7fffffffdb90, c1_rdc_11 = L0x7fffffffdb98
  ]
  &&
  and [
    c1_rdc_00 = L0x7fffffffdb40, c1_rdc_01 = L0x7fffffffdb48, c1_rdc_02 = L0x7fffffffdb50,
    c1_rdc_03 = L0x7fffffffdb58, c1_rdc_04 = L0x7fffffffdb60, c1_rdc_05 = L0x7fffffffdb68,
    c1_rdc_06 = L0x7fffffffdb70, c1_rdc_07 = L0x7fffffffdb78, c1_rdc_08 = L0x7fffffffdb80,
    c1_rdc_09 = L0x7fffffffdb88, c1_rdc_10 = L0x7fffffffdb90, c1_rdc_11 = L0x7fffffffdb98
  ];

# Ecut 5
ecut eqmod (limbs 64 [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                       c1_rdc_00, c1_rdc_01, c1_rdc_02, c1_rdc_03, c1_rdc_04, c1_rdc_05, c1_rdc_06, c1_rdc_07, c1_rdc_08, c1_rdc_09, c1_rdc_10, c1_rdc_11 ])
           (
             2
             *
             (limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ])
             *
             (limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ])
           )
           (limbs 64 [ $p751_00, $p751_01, $p751_02, $p751_03, $p751_04, $p751_05, $p751_06, $p751_07, $p751_08, $p751_09, $p751_10, $p751_11 ])
     prove with [all ghosts, cuts [3]];

(* ===== Outputs ===== *)

mov c0_00 L0x7fffffffdae0;
mov c0_01 L0x7fffffffdae8;
mov c0_02 L0x7fffffffdaf0;
mov c0_03 L0x7fffffffdaf8;
mov c0_04 L0x7fffffffdb00;
mov c0_05 L0x7fffffffdb08;
mov c0_06 L0x7fffffffdb10;
mov c0_07 L0x7fffffffdb18;
mov c0_08 L0x7fffffffdb20;
mov c0_09 L0x7fffffffdb28;
mov c0_10 L0x7fffffffdb30;
mov c0_11 L0x7fffffffdb38;

mov c1_00 L0x7fffffffdb40;
mov c1_01 L0x7fffffffdb48;
mov c1_02 L0x7fffffffdb50;
mov c1_03 L0x7fffffffdb58;
mov c1_04 L0x7fffffffdb60;
mov c1_05 L0x7fffffffdb68;
mov c1_06 L0x7fffffffdb70;
mov c1_07 L0x7fffffffdb78;
mov c1_08 L0x7fffffffdb80;
mov c1_09 L0x7fffffffdb88;
mov c1_10 L0x7fffffffdb90;
mov c1_11 L0x7fffffffdb98;

ghost i@uint64 : true && true;

{
  and [
    eqmod (limbs 64 [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                      c0_00, c0_01, c0_02, c0_03, c0_04, c0_05, c0_06, c0_07, c0_08, c0_09, c0_10, c0_11 ])
          (
            (
              (limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ])
              +
              (limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ])
            )
            *
            (
              (limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ])
              -
              (limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ])
            )
          )
          (limbs 64 [ $p751_00, $p751_01, $p751_02, $p751_03, $p751_04, $p751_05, $p751_06, $p751_07, $p751_08, $p751_09, $p751_10, $p751_11 ]),
    eqmod (limbs 64 [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                      c1_00, c1_01, c1_02, c1_03, c1_04, c1_05, c1_06, c1_07, c1_08, c1_09, c1_10, c1_11 ])
          (
            2
            *
            (limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ])
            *
            (limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ])
          )
          (limbs 64 [ $p751_00, $p751_01, $p751_02, $p751_03, $p751_04, $p751_05, $p751_06, $p751_07, $p751_08, $p751_09, $p751_10, $p751_11 ]),
    eqmod (
            2**768
            *
            (
              (limbs 64 [ c0_00, c0_01, c0_02, c0_03, c0_04, c0_05, c0_06, c0_07, c0_08, c0_09, c0_10, c0_11 ])
              +
              (limbs 64 [ c1_00, c1_01, c1_02, c1_03, c1_04, c1_05, c1_06, c1_07, c1_08, c1_09, c1_10, c1_11 ]) * i
            )
          )
          (
            (
              (limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ])
              +
              (limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ]) * i
            )
            *
            (
              (limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ])
              +
              (limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ]) * i
            )
          )
          [i**2 + 1, limbs 64 [ $p751_00, $p751_01, $p751_02, $p751_03, $p751_04, $p751_05, $p751_06, $p751_07, $p751_08, $p751_09, $p751_10, $p751_11 ]]
  ] prove with [all ghosts, cuts [4]]
  &&
  and [
    limbs 64 [ c0_00, c0_01, c0_02, c0_03, c0_04, c0_05, c0_06, c0_07, c0_08, c0_09, c0_10, c0_11 ] <=u
      (2@768 * limbs 64 [ $p751_00@64, $p751_01@64, $p751_02@64, $p751_03@64, $p751_04@64, $p751_05@64, $p751_06@64, $p751_07@64, $p751_08@64, $p751_09@64, $p751_10@64, $p751_11@64 ] - 1@768),
    limbs 64 [ c1_00, c1_01, c1_02, c1_03, c1_04, c1_05, c1_06, c1_07, c1_08, c1_09, c1_10, c1_11 ] <=u
      (2@768 * limbs 64 [ $p751_00@64, $p751_01@64, $p751_02@64, $p751_03@64, $p751_04@64, $p751_05@64, $p751_06@64, $p751_07@64, $p751_08@64, $p751_09@64, $p751_10@64, $p751_11@64 ] - 1@768)
  ]
}

