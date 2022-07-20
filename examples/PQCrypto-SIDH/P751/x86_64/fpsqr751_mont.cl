(* on frege: -v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint ../fpsqr751_mont.cl
Parsing Cryptoline file:		[OK]		0.013699 seconds
Checking well-formedness:		[OK]		0.002045 seconds
Transforming to SSA form:		[OK]		0.001317 seconds
Normalizing specification:		[OK]		0.001416 seconds
Rewriting assignments:			[OK]		0.001296 seconds
Verifying program safety:
	 Cut 0
	     Round 1 (6 safety conditions, timeout = 14400 seconds)
		 Safety condition #3	[OK]
		 Safety condition #4	[OK]
		 Safety condition #2	[OK]
		 Safety condition #1	[OK]
		 Safety condition #0	[OK]
		 Safety condition #5	[OK]
	 Overall			[OK]		0.177972 seconds
Verifying range assertions:		[OK]		11.359726 seconds
Verifying range specification:		[OK]		10.204360 seconds
Rewriting value-preserved casting:	[OK]		0.000306 seconds
Verifying algebraic assertions:		[OK]		0.372141 seconds
Verifying algebraic specification:	[OK]		0.362025 seconds
Verification result:			[OK]		22.497914 seconds
*)

(*
const uint64_t p751[NWORDS64_FIELD]              = { 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xEEAFFFFFFFFFFFFF,
                                                     0xE3EC968549F878A8, 0xDA959B1A13F7CC76, 0x084E9867D6EBE876, 0x8562B5045CB25748, 0x0E12909F97BADC66, 0x00006FE5D541F71C };
const uint64_t p751p1[NWORDS64_FIELD]            = { 0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0xEEB0000000000000,
                                                     0xE3EC968549F878A8, 0xDA959B1A13F7CC76, 0x084E9867D6EBE876, 0x8562B5045CB25748, 0x0E12909F97BADC66, 0x00006FE5D541F71C };
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

const p751p1_0 = 0x0000000000000000
const p751p1_1 = 0x0000000000000000
const p751p1_2 = 0x0000000000000000
const p751p1_3 = 0x0000000000000000
const p751p1_4 = 0x0000000000000000
const p751p1_5 = 0xEEB0000000000000
const p751p1_6 = 0xE3EC968549F878A8
const p751p1_7 = 0xDA959B1A13F7CC76
const p751p1_8 = 0x084E9867D6EBE876
const p751p1_9 = 0x8562B5045CB25748
const p751p1_a = 0x0E12909F97BADC66
const p751p1_b = 0x00006FE5D541F71C

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

mov L0x7fffffffdc60 a_0;
mov L0x7fffffffdc68 a_1;
mov L0x7fffffffdc70 a_2;
mov L0x7fffffffdc78 a_3;
mov L0x7fffffffdc80 a_4;
mov L0x7fffffffdc88 a_5;
mov L0x7fffffffdc90 a_6;
mov L0x7fffffffdc98 a_7;
mov L0x7fffffffdca0 a_8;
mov L0x7fffffffdca8 a_9;
mov L0x7fffffffdcb0 a_a;
mov L0x7fffffffdcb8 a_b;

mov L0x55555556a808 $p751p1_5@uint64;
mov L0x55555556a810 $p751p1_6@uint64;
mov L0x55555556a818 $p751p1_7@uint64;
mov L0x55555556a820 $p751p1_8@uint64;
mov L0x55555556a828 $p751p1_9@uint64;
mov L0x55555556a830 $p751p1_a@uint64;
mov L0x55555556a838 $p751p1_b@uint64;

nondet fs0x28@uint64;
nondet rdi@uint64;
nondet rdx@uint64;
nondet rsi@uint64;
nondet rsp@uint64;

(* ===== Program ===== *)

(* #! -> SP = 0x7fffffffd9c8 *)
#! 0x7fffffffd9c8 = 0x7fffffffd9c8;
(* xor    %edx,%edx                                #! PC = 0x555555558816 *)
mov edx 0@uint64;
clear carry;
clear overflow;
(* mov    %rsi,%rbp                                #! PC = 0x555555558819 *)
mov rbp rsi;
(* sub    $0xd8,%rsp                               #! PC = 0x55555555881c *)
subb carry rsp rsp 0xd8@uint64;
(* mov    %fs:0x28,%rax                            #! PC = 0x555555558823 *)
mov rax fs0x28;
(* mov    %rax,0xc8(%rsp)                          #! EA = L0x7fffffffd9a8; PC = 0x55555555882c *)
mov L0x7fffffffd9a8 rax;
(* xor    %eax,%eax                                #! PC = 0x555555558834 *)
mov rax 0@uint64;
(* mov    %eax,%ecx                                #! PC = 0x555555558836 *)
assert true && rax <=u 0x0000000100000000@64;
mov rcx rax;
(* add    $0x20,%eax                               #! PC = 0x555555558838 *)
add rax rax 0x20@uint64;
assert true && rax <=u 0x0000000100000000@64;
(* mov    %rdx,(%rsp,%rcx,1)                       #! EA = L0x7fffffffd8e0; PC = 0x55555555883b *)
mov L0x7fffffffd8e0 rdx;
(* mov    %rdx,0x8(%rsp,%rcx,1)                    #! EA = L0x7fffffffd8e8; PC = 0x55555555883f *)
mov L0x7fffffffd8e8 rdx;
(* mov    %rdx,0x10(%rsp,%rcx,1)                   #! EA = L0x7fffffffd8f0; PC = 0x555555558844 *)
mov L0x7fffffffd8f0 rdx;
(* mov    %rdx,0x18(%rsp,%rcx,1)                   #! EA = L0x7fffffffd8f8; PC = 0x555555558849 *)
mov L0x7fffffffd8f8 rdx;
(* #jb     0x555555558836 <fpsqr751_mont+38>       #! PC = 0x555555558853 *)
#jb     0x555555558836 <fpsqr751_mont+38>       #! 0x555555558853 = 0x555555558853;
(* mov    %eax,%ecx                                #! PC = 0x555555558836 *)
assert true && rax <=u 0x0000000100000000@64;
mov rcx rax;
(* add    $0x20,%eax                               #! PC = 0x555555558838 *)
add rax rax 0x20@uint64;
assert true && rax <=u 0x0000000100000000@64;
(* mov    %rdx,(%rsp,%rcx,1)                       #! EA = L0x7fffffffd900; PC = 0x55555555883b *)
mov L0x7fffffffd900 rdx;
(* mov    %rdx,0x8(%rsp,%rcx,1)                    #! EA = L0x7fffffffd908; PC = 0x55555555883f *)
mov L0x7fffffffd908 rdx;
(* mov    %rdx,0x10(%rsp,%rcx,1)                   #! EA = L0x7fffffffd910; PC = 0x555555558844 *)
mov L0x7fffffffd910 rdx;
(* mov    %rdx,0x18(%rsp,%rcx,1)                   #! EA = L0x7fffffffd918; PC = 0x555555558849 *)
mov L0x7fffffffd918 rdx;
(* #jb     0x555555558836 <fpsqr751_mont+38>       #! PC = 0x555555558853 *)
#jb     0x555555558836 <fpsqr751_mont+38>       #! 0x555555558853 = 0x555555558853;
(* mov    %eax,%ecx                                #! PC = 0x555555558836 *)
assert true && rax <=u 0x0000000100000000@64;
mov rcx rax;
(* add    $0x20,%eax                               #! PC = 0x555555558838 *)
add rax rax 0x20@uint64;
assert true && rax <=u 0x0000000100000000@64;
(* mov    %rdx,(%rsp,%rcx,1)                       #! EA = L0x7fffffffd920; PC = 0x55555555883b *)
mov L0x7fffffffd920 rdx;
(* mov    %rdx,0x8(%rsp,%rcx,1)                    #! EA = L0x7fffffffd928; PC = 0x55555555883f *)
mov L0x7fffffffd928 rdx;
(* mov    %rdx,0x10(%rsp,%rcx,1)                   #! EA = L0x7fffffffd930; PC = 0x555555558844 *)
mov L0x7fffffffd930 rdx;
(* mov    %rdx,0x18(%rsp,%rcx,1)                   #! EA = L0x7fffffffd938; PC = 0x555555558849 *)
mov L0x7fffffffd938 rdx;
(* #jb     0x555555558836 <fpsqr751_mont+38>       #! PC = 0x555555558853 *)
#jb     0x555555558836 <fpsqr751_mont+38>       #! 0x555555558853 = 0x555555558853;
(* mov    %eax,%ecx                                #! PC = 0x555555558836 *)
assert true && rax <=u 0x0000000100000000@64;
mov rcx rax;
(* add    $0x20,%eax                               #! PC = 0x555555558838 *)
add rax rax 0x20@uint64;
assert true && rax <=u 0x0000000100000000@64;
(* mov    %rdx,(%rsp,%rcx,1)                       #! EA = L0x7fffffffd940; PC = 0x55555555883b *)
mov L0x7fffffffd940 rdx;
(* mov    %rdx,0x8(%rsp,%rcx,1)                    #! EA = L0x7fffffffd948; PC = 0x55555555883f *)
mov L0x7fffffffd948 rdx;
(* mov    %rdx,0x10(%rsp,%rcx,1)                   #! EA = L0x7fffffffd950; PC = 0x555555558844 *)
mov L0x7fffffffd950 rdx;
(* mov    %rdx,0x18(%rsp,%rcx,1)                   #! EA = L0x7fffffffd958; PC = 0x555555558849 *)
mov L0x7fffffffd958 rdx;
(* #jb     0x555555558836 <fpsqr751_mont+38>       #! PC = 0x555555558853 *)
#jb     0x555555558836 <fpsqr751_mont+38>       #! 0x555555558853 = 0x555555558853;
(* mov    %eax,%ecx                                #! PC = 0x555555558836 *)
assert true && rax <=u 0x0000000100000000@64;
mov rcx rax;
(* add    $0x20,%eax                               #! PC = 0x555555558838 *)
add rax rax 0x20@uint64;
assert true && rax <=u 0x0000000100000000@64;
(* mov    %rdx,(%rsp,%rcx,1)                       #! EA = L0x7fffffffd960; PC = 0x55555555883b *)
mov L0x7fffffffd960 rdx;
(* mov    %rdx,0x8(%rsp,%rcx,1)                    #! EA = L0x7fffffffd968; PC = 0x55555555883f *)
mov L0x7fffffffd968 rdx;
(* mov    %rdx,0x10(%rsp,%rcx,1)                   #! EA = L0x7fffffffd970; PC = 0x555555558844 *)
mov L0x7fffffffd970 rdx;
(* mov    %rdx,0x18(%rsp,%rcx,1)                   #! EA = L0x7fffffffd978; PC = 0x555555558849 *)
mov L0x7fffffffd978 rdx;
(* #jb     0x555555558836 <fpsqr751_mont+38>       #! PC = 0x555555558853 *)
#jb     0x555555558836 <fpsqr751_mont+38>       #! 0x555555558853 = 0x555555558853;
(* mov    %eax,%ecx                                #! PC = 0x555555558836 *)
assert true && rax <=u 0x0000000100000000@64;
mov rcx rax;
(* add    $0x20,%eax                               #! PC = 0x555555558838 *)
add rax rax 0x20@uint64;
assert true && rax <=u 0x0000000100000000@64;
(* mov    %rdx,(%rsp,%rcx,1)                       #! EA = L0x7fffffffd980; PC = 0x55555555883b *)
mov L0x7fffffffd980 rdx;
(* mov    %rdx,0x8(%rsp,%rcx,1)                    #! EA = L0x7fffffffd988; PC = 0x55555555883f *)
mov L0x7fffffffd988 rdx;
(* mov    %rdx,0x10(%rsp,%rcx,1)                   #! EA = L0x7fffffffd990; PC = 0x555555558844 *)
mov L0x7fffffffd990 rdx;
(* mov    %rdx,0x18(%rsp,%rcx,1)                   #! EA = L0x7fffffffd998; PC = 0x555555558849 *)
mov L0x7fffffffd998 rdx;
(* #jb     0x555555558836 <fpsqr751_mont+38>       #! PC = 0x555555558853 *)
#jb     0x555555558836 <fpsqr751_mont+38>       #! 0x555555558853 = 0x555555558853;
(* mov    %rsp,%r12                                #! PC = 0x555555558855 *)
mov r12 rsp;
(* mov    %rdi,%rsi                                #! PC = 0x555555558858 *)
mov rsi rdi;
(* mov    $0xc,%ecx                                #! PC = 0x55555555885b *)
assert true && 0xc@64 <=u 0x0000000100000000@64;
mov rcx 0xc@uint64;
(* mov    %r12,%rdx                                #! PC = 0x555555558860 *)
mov rdx r12;
(* #callq  0x5555555650c0 <mp_mul>                 #! PC = 0x555555558863 *)
#callq  0x5555555650c0 <mp_mul>                 #! 0x555555558863 = 0x555555558863;
(* #! -> SP = 0x7fffffffd8d8 *)
#! 0x7fffffffd8d8 = 0x7fffffffd8d8;
(* #jmpq   0x555555565653 <mul751_asm>             #! PC = 0x5555555650c4 *)
#jmpq   0x555555565653 <mul751_asm>             #! 0x5555555650c4 = 0x5555555650c4;
(* mov    %rdx,%rcx                                #! PC = 0x55555556565b *)
mov rcx rdx;

// [rsp] <- AH + AL, rax <- mask
(* xor    %rax,%rax                                #! PC = 0x55555556565e *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffdc60; Value = 0x7d4ba15bf6d945b7; PC = 0x555555565661 *)
mov r8 L0x7fffffffdc60;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffdc68; Value = 0xd9bc783d7ea21ad4; PC = 0x555555565664 *)
mov r9 L0x7fffffffdc68;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffdc70; Value = 0xfaa6e144b74ddd82; PC = 0x555555565668 *)
mov r10 L0x7fffffffdc70;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffdc78; Value = 0x2e9dbfc846ea6876; PC = 0x55555556566c *)
mov r11 L0x7fffffffdc78;
(* mov    0x20(%rdi),%r12                          #! EA = L0x7fffffffdc80; Value = 0xde9c333d3d501a8f; PC = 0x555555565670 *)
mov r12 L0x7fffffffdc80;
(* mov    0x28(%rdi),%r13                          #! EA = L0x7fffffffdc88; Value = 0x06d48c9021a8c42a; PC = 0x555555565674 *)
mov r13 L0x7fffffffdc88;
(* sub    $0x98,%rsp                               #! PC = 0x55555556567a *)
subb carry rsp rsp 0x98@uint64;
(* add    0x30(%rdi),%r8                           #! EA = L0x7fffffffdc90; Value = 0x68b605a2bb6ccdba; PC = 0x555555565681 *)
adds carry r8 r8 L0x7fffffffdc90;
(* adc    0x38(%rdi),%r9                           #! EA = L0x7fffffffdc98; Value = 0xba13c9f7e5122a24; PC = 0x555555565685 *)
adcs carry r9 r9 L0x7fffffffdc98 carry;
(* adc    0x40(%rdi),%r10                          #! EA = L0x7fffffffdca0; Value = 0x805cd6da8958a135; PC = 0x555555565689 *)
adcs carry r10 r10 L0x7fffffffdca0 carry;
(* adc    0x48(%rdi),%r11                          #! EA = L0x7fffffffdca8; Value = 0x1e8ba1054d2e983b; PC = 0x55555556568d *)
adcs carry r11 r11 L0x7fffffffdca8 carry;
(* adc    0x50(%rdi),%r12                          #! EA = L0x7fffffffdcb0; Value = 0x245901bcab088612; PC = 0x555555565691 *)
adcs carry r12 r12 L0x7fffffffdcb0 carry;
(* adc    0x58(%rdi),%r13                          #! EA = L0x7fffffffdcb8; Value = 0x00004d3aeb57629f; PC = 0x555555565695 *)
adcs carry r13 r13 L0x7fffffffdcb8 carry;
ghost carry_ah_add_al1@uint1 : carry_ah_add_al1 = carry && carry_ah_add_al1 = carry;
(* sbb    $0x0,%rax                                #! PC = 0x555555565699 *)
sbbs carry rax rax 0x0@uint64 carry;
assert true && carry_ah_add_al1 = carry;
assume carry_ah_add_al1 = carry && true;
(* mov    %r8,(%rsp)                               #! EA = L0x7fffffffd810; PC = 0x55555556569d *)
mov L0x7fffffffd810 r8;
(* mov    %r9,0x8(%rsp)                            #! EA = L0x7fffffffd818; PC = 0x5555555656a1 *)
mov L0x7fffffffd818 r9;
(* mov    %r10,0x10(%rsp)                          #! EA = L0x7fffffffd820; PC = 0x5555555656a6 *)
mov L0x7fffffffd820 r10;
(* mov    %r11,0x18(%rsp)                          #! EA = L0x7fffffffd828; PC = 0x5555555656ab *)
mov L0x7fffffffd828 r11;
(* mov    %r12,0x20(%rsp)                          #! EA = L0x7fffffffd830; PC = 0x5555555656b0 *)
mov L0x7fffffffd830 r12;
(* mov    %r13,0x28(%rsp)                          #! EA = L0x7fffffffd838; PC = 0x5555555656b5 *)
mov L0x7fffffffd838 r13;

ghost ah_add_al1_0@uint64, ah_add_al1_1@uint64, ah_add_al1_2@uint64, ah_add_al1_3@uint64, ah_add_al1_4@uint64, ah_add_al1_5@uint64 :
  and [
    ah_add_al1_0 = L0x7fffffffd810,
    ah_add_al1_1 = L0x7fffffffd818,
    ah_add_al1_2 = L0x7fffffffd820,
    ah_add_al1_3 = L0x7fffffffd828,
    ah_add_al1_4 = L0x7fffffffd830,
    ah_add_al1_5 = L0x7fffffffd838
  ]
  &&
  and [
    ah_add_al1_0 = L0x7fffffffd810,
    ah_add_al1_1 = L0x7fffffffd818,
    ah_add_al1_2 = L0x7fffffffd820,
    ah_add_al1_3 = L0x7fffffffd828,
    ah_add_al1_4 = L0x7fffffffd830,
    ah_add_al1_5 = L0x7fffffffd838
  ];

assert
  limbs 64 [ ah_add_al1_0, ah_add_al1_1, ah_add_al1_2, ah_add_al1_3, ah_add_al1_4, ah_add_al1_5, carry_ah_add_al1 ]
  =
  (limbs 64 [ a_6, a_7, a_8, a_9, a_a, a_b ] + limbs 64 [ a_0, a_1, a_2, a_3, a_4, a_5 ])
  &&
  true;

// [rsp+48] <- BH + BL, rdx <- mask
(* xor    %rdx,%rdx                                #! PC = 0x5555555656ba *)
mov rdx 0@uint64;
clear carry;
clear overflow;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffdc60; Value = 0x7d4ba15bf6d945b7; PC = 0x5555555656bd *)
mov r8 L0x7fffffffdc60;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffdc68; Value = 0xd9bc783d7ea21ad4; PC = 0x5555555656c0 *)
mov r9 L0x7fffffffdc68;
(* mov    0x10(%rsi),%rbx                          #! EA = L0x7fffffffdc70; Value = 0xfaa6e144b74ddd82; PC = 0x5555555656c4 *)
mov rbx L0x7fffffffdc70;
(* mov    0x18(%rsi),%rbp                          #! EA = L0x7fffffffdc78; Value = 0x2e9dbfc846ea6876; PC = 0x5555555656c8 *)
mov rbp L0x7fffffffdc78;
(* mov    0x20(%rsi),%r14                          #! EA = L0x7fffffffdc80; Value = 0xde9c333d3d501a8f; PC = 0x5555555656cc *)
mov r14 L0x7fffffffdc80;
(* mov    0x28(%rsi),%r15                          #! EA = L0x7fffffffdc88; Value = 0x06d48c9021a8c42a; PC = 0x5555555656d0 *)
mov r15 L0x7fffffffdc88;
(* add    0x30(%rsi),%r8                           #! EA = L0x7fffffffdc90; Value = 0x68b605a2bb6ccdba; PC = 0x5555555656d4 *)
adds carry r8 r8 L0x7fffffffdc90;
(* adc    0x38(%rsi),%r9                           #! EA = L0x7fffffffdc98; Value = 0xba13c9f7e5122a24; PC = 0x5555555656d8 *)
adcs carry r9 r9 L0x7fffffffdc98 carry;
(* adc    0x40(%rsi),%rbx                          #! EA = L0x7fffffffdca0; Value = 0x805cd6da8958a135; PC = 0x5555555656dc *)
adcs carry rbx rbx L0x7fffffffdca0 carry;
(* adc    0x48(%rsi),%rbp                          #! EA = L0x7fffffffdca8; Value = 0x1e8ba1054d2e983b; PC = 0x5555555656e0 *)
adcs carry rbp rbp L0x7fffffffdca8 carry;
(* adc    0x50(%rsi),%r14                          #! EA = L0x7fffffffdcb0; Value = 0x245901bcab088612; PC = 0x5555555656e4 *)
adcs carry r14 r14 L0x7fffffffdcb0 carry;
(* adc    0x58(%rsi),%r15                          #! EA = L0x7fffffffdcb8; Value = 0x00004d3aeb57629f; PC = 0x5555555656e8 *)
adcs carry r15 r15 L0x7fffffffdcb8 carry;
ghost carry_ah_add_al2@uint1 : carry_ah_add_al2 = carry && carry_ah_add_al2 = carry;
(* sbb    $0x0,%rdx                                #! PC = 0x5555555656ec *)
sbbs carry rdx rdx 0x0@uint64 carry;
assert true && carry_ah_add_al2 = carry;
assume carry_ah_add_al2 = carry && true;
(* mov    %r8,0x30(%rsp)                           #! EA = L0x7fffffffd840; PC = 0x5555555656f0 *)
mov L0x7fffffffd840 r8;
(* mov    %r9,0x38(%rsp)                           #! EA = L0x7fffffffd848; PC = 0x5555555656f5 *)
mov L0x7fffffffd848 r9;
(* mov    %rbx,0x40(%rsp)                          #! EA = L0x7fffffffd850; PC = 0x5555555656fa *)
mov L0x7fffffffd850 rbx;
(* mov    %rbp,0x48(%rsp)                          #! EA = L0x7fffffffd858; PC = 0x5555555656ff *)
mov L0x7fffffffd858 rbp;
(* mov    %r14,0x50(%rsp)                          #! EA = L0x7fffffffd860; PC = 0x555555565704 *)
mov L0x7fffffffd860 r14;
(* mov    %r15,0x58(%rsp)                          #! EA = L0x7fffffffd868; PC = 0x555555565709 *)
mov L0x7fffffffd868 r15;

ghost ah_add_al12_0@uint64, ah_add_al12_1@uint64, ah_add_al12_2@uint64, ah_add_al12_3@uint64, ah_add_al12_4@uint64, ah_add_al12_5@uint64 :
  and [
    ah_add_al12_0 = L0x7fffffffd840,
    ah_add_al12_1 = L0x7fffffffd848,
    ah_add_al12_2 = L0x7fffffffd850,
    ah_add_al12_3 = L0x7fffffffd858,
    ah_add_al12_4 = L0x7fffffffd860,
    ah_add_al12_5 = L0x7fffffffd868
  ]
  &&
  and [
    ah_add_al12_0 = L0x7fffffffd840,
    ah_add_al12_1 = L0x7fffffffd848,
    ah_add_al12_2 = L0x7fffffffd850,
    ah_add_al12_3 = L0x7fffffffd858,
    ah_add_al12_4 = L0x7fffffffd860,
    ah_add_al12_5 = L0x7fffffffd868
  ];

assert
  limbs 64 [ ah_add_al12_0, ah_add_al12_1, ah_add_al12_2, ah_add_al12_3, ah_add_al12_4, ah_add_al12_5, carry_ah_add_al2 ]
  =
  (limbs 64 [ a_6, a_7, a_8, a_9, a_a, a_b ] + limbs 64 [ a_0, a_1, a_2, a_3, a_4, a_5 ])
  &&
  true;

// [rcx] <- masked (BH + BL)
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
(* mov    %r8,(%rcx)                               #! EA = L0x7fffffffd8e0; PC = 0x555555565720 *)
mov L0x7fffffffd8e0 r8;
(* mov    %r9,0x8(%rcx)                            #! EA = L0x7fffffffd8e8; PC = 0x555555565723 *)
mov L0x7fffffffd8e8 r9;

assert true && and [
  limbs 64 [ r8, r9, rbx, rbp, r14, r15, 0@64 ]
  =
  uext carry_ah_add_al1 447 * (limbs 64 [ ah_add_al12_0, ah_add_al12_1, ah_add_al12_2, ah_add_al12_3, ah_add_al12_4, ah_add_al12_5, 0@64 ])
];
assume and [
  limbs 64 [ r8, r9, rbx, rbp, r14, r15 ]
  =
  carry_ah_add_al1 * (limbs 64 [ ah_add_al12_0, ah_add_al12_1, ah_add_al12_2, ah_add_al12_3, ah_add_al12_4, ah_add_al12_5 ])
] && true;

// r8-r13 <- masked (AH + AL)
(* mov    (%rsp),%r8                               #! EA = L0x7fffffffd810; Value = 0xe601a6feb2461371; PC = 0x555555565727 *)
mov r8 L0x7fffffffd810;
(* mov    0x8(%rsp),%r9                            #! EA = L0x7fffffffd818; Value = 0x93d0423563b444f8; PC = 0x55555556572b *)
mov r9 L0x7fffffffd818;
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
  uext carry_ah_add_al2 447 * (limbs 64 [ ah_add_al1_0, ah_add_al1_1, ah_add_al1_2, ah_add_al1_3, ah_add_al1_4, ah_add_al1_5, 0@64 ])
];
assume and [
  limbs 64 [ r8, r9, r10, r11, r12, r13 ]
  =
  carry_ah_add_al2 * (limbs 64 [ ah_add_al1_0, ah_add_al1_1, ah_add_al1_2, ah_add_al1_3, ah_add_al1_4, ah_add_al1_5 ])
] && true;

// [rsp+96] <- masked (AH + AL) + masked (BH + BL)
(* mov    (%rcx),%rax                              #! EA = L0x7fffffffd8e0; Value = 0x0000000000000000; PC = 0x555555565742 *)
mov rax L0x7fffffffd8e0;
(* mov    0x8(%rcx),%rdx                           #! EA = L0x7fffffffd8e8; Value = 0x0000000000000000; PC = 0x555555565745 *)
mov rdx L0x7fffffffd8e8;
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
(* mov    %r8,0x60(%rsp)                           #! EA = L0x7fffffffd870; PC = 0x55555556575b *)
mov L0x7fffffffd870 r8;
(* mov    %r9,0x68(%rsp)                           #! EA = L0x7fffffffd878; PC = 0x555555565760 *)
mov L0x7fffffffd878 r9;
(* mov    %r10,0x70(%rsp)                          #! EA = L0x7fffffffd880; PC = 0x555555565765 *)
mov L0x7fffffffd880 r10;
(* mov    %r11,0x78(%rsp)                          #! EA = L0x7fffffffd888; PC = 0x55555556576a *)
mov L0x7fffffffd888 r11;

ghost m_ah_al_bh_bl_0@uint64, m_ah_al_bh_bl_1@uint64, m_ah_al_bh_bl_2@uint64, m_ah_al_bh_bl_3@uint64, m_ah_al_bh_bl_4@uint64, m_ah_al_bh_bl_5@uint64 :
  and [
    m_ah_al_bh_bl_0 = r8,
    m_ah_al_bh_bl_1 = r9,
    m_ah_al_bh_bl_2 = r10,
    m_ah_al_bh_bl_3 = r11,
    m_ah_al_bh_bl_4 = r12,
    m_ah_al_bh_bl_5 = r13
  ]
  &&
  and [
    m_ah_al_bh_bl_0 = r8,
    m_ah_al_bh_bl_1 = r9,
    m_ah_al_bh_bl_2 = r10,
    m_ah_al_bh_bl_3 = r11,
    m_ah_al_bh_bl_4 = r12,
    m_ah_al_bh_bl_5 = r13
  ];
assert and [
  limbs 64 [ m_ah_al_bh_bl_0, m_ah_al_bh_bl_1, m_ah_al_bh_bl_2, m_ah_al_bh_bl_3, m_ah_al_bh_bl_4, m_ah_al_bh_bl_5 ]
  =
  carry_ah_add_al2 * (limbs 64 [ ah_add_al1_0, ah_add_al1_1, ah_add_al1_2, ah_add_al1_3, ah_add_al1_4, ah_add_al1_5 ])
  +
  carry_ah_add_al1 * (limbs 64 [ ah_add_al12_0, ah_add_al12_1, ah_add_al12_2, ah_add_al12_3, ah_add_al12_4, ah_add_al12_5 ])
] && true;

// [rcx] <- AL x BL
(* mov    (%rdi),%rdx                              #! EA = L0x7fffffffdc60; Value = 0x7d4ba15bf6d945b7; PC = 0x55555556576f *)
mov rdx L0x7fffffffdc60;
(* mulx   (%rsi),%r9,%r8                           #! EA = L0x7fffffffdc60; Value = 0x7d4ba15bf6d945b7; PC = 0x555555565772 *)
mull r8 r9 L0x7fffffffdc60 rdx;
(* mulx   0x8(%rsi),%r11,%r10                      #! EA = L0x7fffffffdc68; Value = 0xd9bc783d7ea21ad4; PC = 0x555555565777 *)
mull r10 r11 L0x7fffffffdc68 rdx;
(* mov    %r9,(%rcx)                               #! EA = L0x7fffffffd8e0; PC = 0x55555556577d *)
mov L0x7fffffffd8e0 r9;
(* xor    %rax,%rax                                #! PC = 0x555555565780 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x10(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffdc70; Value = 0xfaa6e144b74ddd82; PC = 0x555555565783 *)
mull rbx rbp L0x7fffffffdc70 rdx;
(* adox   %r11,%r8                                 #! PC = 0x555555565789 *)
adcs overflow r8 r8 r11 overflow;
(* adox   %rbp,%r10                                #! PC = 0x55555556578f *)
adcs overflow r10 r10 rbp overflow;
(* mulx   0x18(%rsi),%r11,%r9                      #! EA = L0x7fffffffdc78; Value = 0x2e9dbfc846ea6876; PC = 0x555555565795 *)
mull r9 r11 L0x7fffffffdc78 rdx;
(* adox   %r11,%rbx                                #! PC = 0x55555556579b *)
adcs overflow rbx rbx r11 overflow;
(* mulx   0x20(%rsi),%r14,%rbp                     #! EA = L0x7fffffffdc80; Value = 0xde9c333d3d501a8f; PC = 0x5555555657a1 *)
mull rbp r14 L0x7fffffffdc80 rdx;
(* adox   %r14,%r9                                 #! PC = 0x5555555657a7 *)
adcs overflow r9 r9 r14 overflow;
(* mulx   0x28(%rsi),%r15,%r11                     #! EA = L0x7fffffffdc88; Value = 0x06d48c9021a8c42a; PC = 0x5555555657ad *)
mull r11 r15 L0x7fffffffdc88 rdx;
(* adox   %r15,%rbp                                #! PC = 0x5555555657b3 *)
adcs overflow rbp rbp r15 overflow;
(* adox   %rax,%r11                                #! PC = 0x5555555657b9 *)
adcs overflow r11 r11 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x8(%rdi),%rdx                           #! EA = L0x7fffffffdc68; Value = 0xd9bc783d7ea21ad4; PC = 0x5555555657bf *)
mov rdx L0x7fffffffdc68;
(* mulx   (%rsi),%r15,%r14                         #! EA = L0x7fffffffdc60; Value = 0x7d4ba15bf6d945b7; PC = 0x5555555657c3 *)
mull r14 r15 L0x7fffffffdc60 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555657c8 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r8                                 #! PC = 0x5555555657cb *)
adcs carry r8 r8 r15 carry;
(* mov    %r8,0x8(%rcx)                            #! EA = L0x7fffffffd8e8; PC = 0x5555555657d1 *)
mov L0x7fffffffd8e8 r8;
(* adcx   %r14,%r10                                #! PC = 0x5555555657d5 *)
adcs carry r10 r10 r14 carry;
(* mulx   0x8(%rsi),%r15,%r14                      #! EA = L0x7fffffffdc68; Value = 0xd9bc783d7ea21ad4; PC = 0x5555555657db *)
mull r14 r15 L0x7fffffffdc68 rdx;
(* adox   %r15,%r10                                #! PC = 0x5555555657e1 *)
adcs overflow r10 r10 r15 overflow;
(* adcx   %r14,%rbx                                #! PC = 0x5555555657e7 *)
adcs carry rbx rbx r14 carry;
(* mulx   0x10(%rsi),%r14,%r8                      #! EA = L0x7fffffffdc70; Value = 0xfaa6e144b74ddd82; PC = 0x5555555657ed *)
mull r8 r14 L0x7fffffffdc70 rdx;
(* adox   %r14,%rbx                                #! PC = 0x5555555657f3 *)
adcs overflow rbx rbx r14 overflow;
(* adcx   %r9,%r8                                  #! PC = 0x5555555657f9 *)
adcs carry r8 r8 r9 carry;
(* mulx   0x18(%rsi),%r15,%r9                      #! EA = L0x7fffffffdc78; Value = 0x2e9dbfc846ea6876; PC = 0x5555555657ff *)
mull r9 r15 L0x7fffffffdc78 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555565805 *)
adcs carry r9 r9 rbp carry;
(* mulx   0x20(%rsi),%r14,%rbp                     #! EA = L0x7fffffffdc80; Value = 0xde9c333d3d501a8f; PC = 0x55555556580b *)
mull rbp r14 L0x7fffffffdc80 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555565811 *)
adcs carry r11 r11 rbp carry;
(* mulx   0x28(%rsi),%rdx,%rbp                     #! EA = L0x7fffffffdc88; Value = 0x06d48c9021a8c42a; PC = 0x555555565817 *)
mull rbp rdx L0x7fffffffdc88 rdx;
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
(* mov    0x10(%rdi),%rdx                          #! EA = L0x7fffffffdc70; Value = 0xfaa6e144b74ddd82; PC = 0x55555556583b *)
mov rdx L0x7fffffffdc70;
(* mulx   (%rsi),%r15,%r14                         #! EA = L0x7fffffffdc60; Value = 0x7d4ba15bf6d945b7; PC = 0x55555556583f *)
mull r14 r15 L0x7fffffffdc60 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565844 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r10                                #! PC = 0x555555565847 *)
adcs carry r10 r10 r15 carry;
(* mov    %r10,0x10(%rcx)                          #! EA = L0x7fffffffd8f0; PC = 0x55555556584d *)
mov L0x7fffffffd8f0 r10;
(* adcx   %r14,%rbx                                #! PC = 0x555555565851 *)
adcs carry rbx rbx r14 carry;
(* mulx   0x8(%rsi),%r15,%r14                      #! EA = L0x7fffffffdc68; Value = 0xd9bc783d7ea21ad4; PC = 0x555555565857 *)
mull r14 r15 L0x7fffffffdc68 rdx;
(* adox   %r15,%rbx                                #! PC = 0x55555556585d *)
adcs overflow rbx rbx r15 overflow;
(* adcx   %r14,%r8                                 #! PC = 0x555555565863 *)
adcs carry r8 r8 r14 carry;
(* mulx   0x10(%rsi),%r14,%r10                     #! EA = L0x7fffffffdc70; Value = 0xfaa6e144b74ddd82; PC = 0x555555565869 *)
mull r10 r14 L0x7fffffffdc70 rdx;
(* adox   %r14,%r8                                 #! PC = 0x55555556586f *)
adcs overflow r8 r8 r14 overflow;
(* adcx   %r10,%r9                                 #! PC = 0x555555565875 *)
adcs carry r9 r9 r10 carry;
(* mulx   0x18(%rsi),%r15,%r10                     #! EA = L0x7fffffffdc78; Value = 0x2e9dbfc846ea6876; PC = 0x55555556587b *)
mull r10 r15 L0x7fffffffdc78 rdx;
(* adcx   %r10,%r11                                #! PC = 0x555555565881 *)
adcs carry r11 r11 r10 carry;
(* mulx   0x20(%rsi),%r14,%r10                     #! EA = L0x7fffffffdc80; Value = 0xde9c333d3d501a8f; PC = 0x555555565887 *)
mull r10 r14 L0x7fffffffdc80 rdx;
(* adcx   %r10,%rbp                                #! PC = 0x55555556588d *)
adcs carry rbp rbp r10 carry;
(* mulx   0x28(%rsi),%rdx,%r10                     #! EA = L0x7fffffffdc88; Value = 0x06d48c9021a8c42a; PC = 0x555555565893 *)
mull r10 rdx L0x7fffffffdc88 rdx;
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
(* mov    0x18(%rdi),%rdx                          #! EA = L0x7fffffffdc78; Value = 0x2e9dbfc846ea6876; PC = 0x5555555658b7 *)
mov rdx L0x7fffffffdc78;
(* mulx   (%rsi),%r15,%r14                         #! EA = L0x7fffffffdc60; Value = 0x7d4ba15bf6d945b7; PC = 0x5555555658bb *)
mull r14 r15 L0x7fffffffdc60 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555658c0 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%rbx                                #! PC = 0x5555555658c3 *)
adcs carry rbx rbx r15 carry;
(* mov    %rbx,0x18(%rcx)                          #! EA = L0x7fffffffd8f8; PC = 0x5555555658c9 *)
mov L0x7fffffffd8f8 rbx;
(* adcx   %r14,%r8                                 #! PC = 0x5555555658cd *)
adcs carry r8 r8 r14 carry;
(* mulx   0x8(%rsi),%r15,%r14                      #! EA = L0x7fffffffdc68; Value = 0xd9bc783d7ea21ad4; PC = 0x5555555658d3 *)
mull r14 r15 L0x7fffffffdc68 rdx;
(* adox   %r15,%r8                                 #! PC = 0x5555555658d9 *)
adcs overflow r8 r8 r15 overflow;
(* adcx   %r14,%r9                                 #! PC = 0x5555555658df *)
adcs carry r9 r9 r14 carry;
(* mulx   0x10(%rsi),%r14,%rbx                     #! EA = L0x7fffffffdc70; Value = 0xfaa6e144b74ddd82; PC = 0x5555555658e5 *)
mull rbx r14 L0x7fffffffdc70 rdx;
(* adox   %r14,%r9                                 #! PC = 0x5555555658eb *)
adcs overflow r9 r9 r14 overflow;
(* adcx   %rbx,%r11                                #! PC = 0x5555555658f1 *)
adcs carry r11 r11 rbx carry;
(* mulx   0x18(%rsi),%r15,%rbx                     #! EA = L0x7fffffffdc78; Value = 0x2e9dbfc846ea6876; PC = 0x5555555658f7 *)
mull rbx r15 L0x7fffffffdc78 rdx;
(* adcx   %rbx,%rbp                                #! PC = 0x5555555658fd *)
adcs carry rbp rbp rbx carry;
(* mulx   0x20(%rsi),%r14,%rbx                     #! EA = L0x7fffffffdc80; Value = 0xde9c333d3d501a8f; PC = 0x555555565903 *)
mull rbx r14 L0x7fffffffdc80 rdx;
(* adcx   %rbx,%r10                                #! PC = 0x555555565909 *)
adcs carry r10 r10 rbx carry;
(* mulx   0x28(%rsi),%rdx,%rbx                     #! EA = L0x7fffffffdc88; Value = 0x06d48c9021a8c42a; PC = 0x55555556590f *)
mull rbx rdx L0x7fffffffdc88 rdx;
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
(* mov    0x20(%rdi),%rdx                          #! EA = L0x7fffffffdc80; Value = 0xde9c333d3d501a8f; PC = 0x555555565933 *)
mov rdx L0x7fffffffdc80;
(* mulx   (%rsi),%r15,%r14                         #! EA = L0x7fffffffdc60; Value = 0x7d4ba15bf6d945b7; PC = 0x555555565937 *)
mull r14 r15 L0x7fffffffdc60 rdx;
(* xor    %rax,%rax                                #! PC = 0x55555556593c *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r8                                 #! PC = 0x55555556593f *)
adcs carry r8 r8 r15 carry;
(* mov    %r8,0x20(%rcx)                           #! EA = L0x7fffffffd900; PC = 0x555555565945 *)
mov L0x7fffffffd900 r8;
(* adcx   %r14,%r9                                 #! PC = 0x555555565949 *)
adcs carry r9 r9 r14 carry;
(* mulx   0x8(%rsi),%r15,%r14                      #! EA = L0x7fffffffdc68; Value = 0xd9bc783d7ea21ad4; PC = 0x55555556594f *)
mull r14 r15 L0x7fffffffdc68 rdx;
(* adox   %r15,%r9                                 #! PC = 0x555555565955 *)
adcs overflow r9 r9 r15 overflow;
(* adcx   %r14,%r11                                #! PC = 0x55555556595b *)
adcs carry r11 r11 r14 carry;
(* mulx   0x10(%rsi),%r14,%r8                      #! EA = L0x7fffffffdc70; Value = 0xfaa6e144b74ddd82; PC = 0x555555565961 *)
mull r8 r14 L0x7fffffffdc70 rdx;
(* adox   %r14,%r11                                #! PC = 0x555555565967 *)
adcs overflow r11 r11 r14 overflow;
(* adcx   %r8,%rbp                                 #! PC = 0x55555556596d *)
adcs carry rbp rbp r8 carry;
(* mulx   0x18(%rsi),%r15,%r8                      #! EA = L0x7fffffffdc78; Value = 0x2e9dbfc846ea6876; PC = 0x555555565973 *)
mull r8 r15 L0x7fffffffdc78 rdx;
(* adcx   %r8,%r10                                 #! PC = 0x555555565979 *)
adcs carry r10 r10 r8 carry;
(* mulx   0x20(%rsi),%r14,%r8                      #! EA = L0x7fffffffdc80; Value = 0xde9c333d3d501a8f; PC = 0x55555556597f *)
mull r8 r14 L0x7fffffffdc80 rdx;
(* adcx   %r8,%rbx                                 #! PC = 0x555555565985 *)
adcs carry rbx rbx r8 carry;
(* mulx   0x28(%rsi),%rdx,%r8                      #! EA = L0x7fffffffdc88; Value = 0x06d48c9021a8c42a; PC = 0x55555556598b *)
mull r8 rdx L0x7fffffffdc88 rdx;
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
(* mov    0x28(%rdi),%rdx                          #! EA = L0x7fffffffdc88; Value = 0x06d48c9021a8c42a; PC = 0x5555555659af *)
mov rdx L0x7fffffffdc88;
(* mulx   (%rsi),%r15,%r14                         #! EA = L0x7fffffffdc60; Value = 0x7d4ba15bf6d945b7; PC = 0x5555555659b3 *)
mull r14 r15 L0x7fffffffdc60 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555659b8 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r9                                 #! PC = 0x5555555659bb *)
adcs carry r9 r9 r15 carry;
(* mov    %r9,0x28(%rcx)                           #! EA = L0x7fffffffd908; PC = 0x5555555659c1 *)
mov L0x7fffffffd908 r9;
(* adcx   %r14,%r11                                #! PC = 0x5555555659c5 *)
adcs carry r11 r11 r14 carry;
(* mulx   0x8(%rsi),%r15,%r14                      #! EA = L0x7fffffffdc68; Value = 0xd9bc783d7ea21ad4; PC = 0x5555555659cb *)
mull r14 r15 L0x7fffffffdc68 rdx;
(* adox   %r15,%r11                                #! PC = 0x5555555659d1 *)
adcs overflow r11 r11 r15 overflow;
(* adcx   %r14,%rbp                                #! PC = 0x5555555659d7 *)
adcs carry rbp rbp r14 carry;
(* mulx   0x10(%rsi),%r14,%r9                      #! EA = L0x7fffffffdc70; Value = 0xfaa6e144b74ddd82; PC = 0x5555555659dd *)
mull r9 r14 L0x7fffffffdc70 rdx;
(* adox   %r14,%rbp                                #! PC = 0x5555555659e3 *)
adcs overflow rbp rbp r14 overflow;
(* adcx   %r9,%r10                                 #! PC = 0x5555555659e9 *)
adcs carry r10 r10 r9 carry;
(* mulx   0x18(%rsi),%r15,%r9                      #! EA = L0x7fffffffdc78; Value = 0x2e9dbfc846ea6876; PC = 0x5555555659ef *)
mull r9 r15 L0x7fffffffdc78 rdx;
(* adcx   %r9,%rbx                                 #! PC = 0x5555555659f5 *)
adcs carry rbx rbx r9 carry;
(* mulx   0x20(%rsi),%r14,%r9                      #! EA = L0x7fffffffdc80; Value = 0xde9c333d3d501a8f; PC = 0x5555555659fb *)
mull r9 r14 L0x7fffffffdc80 rdx;
(* adcx   %r9,%r8                                  #! PC = 0x555555565a01 *)
adcs carry r8 r8 r9 carry;
(* mulx   0x28(%rsi),%rdx,%r9                      #! EA = L0x7fffffffdc88; Value = 0x06d48c9021a8c42a; PC = 0x555555565a07 *)
mull r9 rdx L0x7fffffffdc88 rdx;
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
(* mov    %r11,0x30(%rcx)                          #! EA = L0x7fffffffd910; PC = 0x555555565a2b *)
mov L0x7fffffffd910 r11;
(* mov    %rbp,0x38(%rcx)                          #! EA = L0x7fffffffd918; PC = 0x555555565a2f *)
mov L0x7fffffffd918 rbp;
(* mov    %r10,0x40(%rcx)                          #! EA = L0x7fffffffd920; PC = 0x555555565a33 *)
mov L0x7fffffffd920 r10;
(* mov    %rbx,0x48(%rcx)                          #! EA = L0x7fffffffd928; PC = 0x555555565a37 *)
mov L0x7fffffffd928 rbx;
(* mov    %r8,0x50(%rcx)                           #! EA = L0x7fffffffd930; PC = 0x555555565a3b *)
mov L0x7fffffffd930 r8;
(* mov    %r9,0x58(%rcx)                           #! EA = L0x7fffffffd938; PC = 0x555555565a3f *)
mov L0x7fffffffd938 r9;

assert and [
  limbs 64 [ L0x7fffffffd8e0, L0x7fffffffd8e8, L0x7fffffffd8f0, L0x7fffffffd8f8, L0x7fffffffd900, L0x7fffffffd908,
             L0x7fffffffd910, L0x7fffffffd918, L0x7fffffffd920, L0x7fffffffd928, L0x7fffffffd930, L0x7fffffffd938 ]
  =
  limbs 64 [ a_0, a_1, a_2, a_3, a_4, a_5 ]
  *
  limbs 64 [ a_0, a_1, a_2, a_3, a_4, a_5 ]
] && true;

// [rcx+96] <- (AH+AL) x (BH+BL), low part
(* mov    (%rsp),%rdx                              #! EA = L0x7fffffffd810; Value = 0xe601a6feb2461371; PC = 0x555555565a43 *)
mov rdx L0x7fffffffd810;
(* mulx   0x30(%rsp),%r9,%r8                       #! EA = L0x7fffffffd840; Value = 0xe601a6feb2461371; PC = 0x555555565a47 *)
mull r8 r9 L0x7fffffffd840 rdx;
(* mulx   0x38(%rsp),%r11,%r10                     #! EA = L0x7fffffffd848; Value = 0x93d0423563b444f8; PC = 0x555555565a4e *)
mull r10 r11 L0x7fffffffd848 rdx;
(* mov    %r9,0x60(%rcx)                           #! EA = L0x7fffffffd940; PC = 0x555555565a55 *)
mov L0x7fffffffd940 r9;
(* xor    %rax,%rax                                #! PC = 0x555555565a59 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rsp),%rbp,%rbx                     #! EA = L0x7fffffffd850; Value = 0x7b03b81f40a67eb8; PC = 0x555555565a5c *)
mull rbx rbp L0x7fffffffd850 rdx;
(* adox   %r11,%r8                                 #! PC = 0x555555565a63 *)
adcs overflow r8 r8 r11 overflow;
(* adox   %rbp,%r10                                #! PC = 0x555555565a69 *)
adcs overflow r10 r10 rbp overflow;
(* mulx   0x48(%rsp),%r11,%r9                      #! EA = L0x7fffffffd858; Value = 0x4d2960cd941900b2; PC = 0x555555565a6f *)
mull r9 r11 L0x7fffffffd858 rdx;
(* adox   %r11,%rbx                                #! PC = 0x555555565a76 *)
adcs overflow rbx rbx r11 overflow;
(* mulx   0x50(%rsp),%r14,%rbp                     #! EA = L0x7fffffffd860; Value = 0x02f534f9e858a0a1; PC = 0x555555565a7c *)
mull rbp r14 L0x7fffffffd860 rdx;
(* adox   %r14,%r9                                 #! PC = 0x555555565a83 *)
adcs overflow r9 r9 r14 overflow;
(* mulx   0x58(%rsp),%r15,%r11                     #! EA = L0x7fffffffd868; Value = 0x06d4d9cb0d0026ca; PC = 0x555555565a89 *)
mull r11 r15 L0x7fffffffd868 rdx;
(* adox   %r15,%rbp                                #! PC = 0x555555565a90 *)
adcs overflow rbp rbp r15 overflow;
(* adox   %rax,%r11                                #! PC = 0x555555565a96 *)
adcs overflow r11 r11 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x8(%rsp),%rdx                           #! EA = L0x7fffffffd818; Value = 0x93d0423563b444f8; PC = 0x555555565a9c *)
mov rdx L0x7fffffffd818;
(* mulx   0x30(%rsp),%r15,%r14                     #! EA = L0x7fffffffd840; Value = 0xe601a6feb2461371; PC = 0x555555565aa1 *)
mull r14 r15 L0x7fffffffd840 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565aa8 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r8                                 #! PC = 0x555555565aab *)
adcs carry r8 r8 r15 carry;
(* mov    %r8,0x68(%rcx)                           #! EA = L0x7fffffffd948; PC = 0x555555565ab1 *)
mov L0x7fffffffd948 r8;
(* adcx   %r14,%r10                                #! PC = 0x555555565ab5 *)
adcs carry r10 r10 r14 carry;
(* mulx   0x38(%rsp),%r15,%r14                     #! EA = L0x7fffffffd848; Value = 0x93d0423563b444f8; PC = 0x555555565abb *)
mull r14 r15 L0x7fffffffd848 rdx;
(* adox   %r15,%r10                                #! PC = 0x555555565ac2 *)
adcs overflow r10 r10 r15 overflow;
(* adcx   %r14,%rbx                                #! PC = 0x555555565ac8 *)
adcs carry rbx rbx r14 carry;
(* mulx   0x40(%rsp),%r14,%r8                      #! EA = L0x7fffffffd850; Value = 0x7b03b81f40a67eb8; PC = 0x555555565ace *)
mull r8 r14 L0x7fffffffd850 rdx;
(* adox   %r14,%rbx                                #! PC = 0x555555565ad5 *)
adcs overflow rbx rbx r14 overflow;
(* adcx   %r9,%r8                                  #! PC = 0x555555565adb *)
adcs carry r8 r8 r9 carry;
(* mulx   0x48(%rsp),%r15,%r9                      #! EA = L0x7fffffffd858; Value = 0x4d2960cd941900b2; PC = 0x555555565ae1 *)
mull r9 r15 L0x7fffffffd858 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555565ae8 *)
adcs carry r9 r9 rbp carry;
(* mulx   0x50(%rsp),%r14,%rbp                     #! EA = L0x7fffffffd860; Value = 0x02f534f9e858a0a1; PC = 0x555555565aee *)
mull rbp r14 L0x7fffffffd860 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555565af5 *)
adcs carry r11 r11 rbp carry;
(* mulx   0x58(%rsp),%rdx,%rbp                     #! EA = L0x7fffffffd868; Value = 0x06d4d9cb0d0026ca; PC = 0x555555565afb *)
mull rbp rdx L0x7fffffffd868 rdx;
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
(* mov    0x10(%rsp),%rdx                          #! EA = L0x7fffffffd820; Value = 0x7b03b81f40a67eb8; PC = 0x555555565b20 *)
mov rdx L0x7fffffffd820;
(* mulx   0x30(%rsp),%r15,%r14                     #! EA = L0x7fffffffd840; Value = 0xe601a6feb2461371; PC = 0x555555565b25 *)
mull r14 r15 L0x7fffffffd840 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565b2c *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r10                                #! PC = 0x555555565b2f *)
adcs carry r10 r10 r15 carry;
(* mov    %r10,0x70(%rcx)                          #! EA = L0x7fffffffd950; PC = 0x555555565b35 *)
mov L0x7fffffffd950 r10;
(* adcx   %r14,%rbx                                #! PC = 0x555555565b39 *)
adcs carry rbx rbx r14 carry;
(* mulx   0x38(%rsp),%r15,%r14                     #! EA = L0x7fffffffd848; Value = 0x93d0423563b444f8; PC = 0x555555565b3f *)
mull r14 r15 L0x7fffffffd848 rdx;
(* adox   %r15,%rbx                                #! PC = 0x555555565b46 *)
adcs overflow rbx rbx r15 overflow;
(* adcx   %r14,%r8                                 #! PC = 0x555555565b4c *)
adcs carry r8 r8 r14 carry;
(* mulx   0x40(%rsp),%r14,%r10                     #! EA = L0x7fffffffd850; Value = 0x7b03b81f40a67eb8; PC = 0x555555565b52 *)
mull r10 r14 L0x7fffffffd850 rdx;
(* adox   %r14,%r8                                 #! PC = 0x555555565b59 *)
adcs overflow r8 r8 r14 overflow;
(* adcx   %r10,%r9                                 #! PC = 0x555555565b5f *)
adcs carry r9 r9 r10 carry;
(* mulx   0x48(%rsp),%r15,%r10                     #! EA = L0x7fffffffd858; Value = 0x4d2960cd941900b2; PC = 0x555555565b65 *)
mull r10 r15 L0x7fffffffd858 rdx;
(* adcx   %r10,%r11                                #! PC = 0x555555565b6c *)
adcs carry r11 r11 r10 carry;
(* mulx   0x50(%rsp),%r14,%r10                     #! EA = L0x7fffffffd860; Value = 0x02f534f9e858a0a1; PC = 0x555555565b72 *)
mull r10 r14 L0x7fffffffd860 rdx;
(* adcx   %r10,%rbp                                #! PC = 0x555555565b79 *)
adcs carry rbp rbp r10 carry;
(* mulx   0x58(%rsp),%rdx,%r10                     #! EA = L0x7fffffffd868; Value = 0x06d4d9cb0d0026ca; PC = 0x555555565b7f *)
mull r10 rdx L0x7fffffffd868 rdx;
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
(* mov    0x18(%rsp),%rdx                          #! EA = L0x7fffffffd828; Value = 0x4d2960cd941900b2; PC = 0x555555565ba4 *)
mov rdx L0x7fffffffd828;
(* mulx   0x30(%rsp),%r15,%r14                     #! EA = L0x7fffffffd840; Value = 0xe601a6feb2461371; PC = 0x555555565ba9 *)
mull r14 r15 L0x7fffffffd840 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565bb0 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%rbx                                #! PC = 0x555555565bb3 *)
adcs carry rbx rbx r15 carry;
(* mov    %rbx,0x78(%rcx)                          #! EA = L0x7fffffffd958; PC = 0x555555565bb9 *)
mov L0x7fffffffd958 rbx;
(* adcx   %r14,%r8                                 #! PC = 0x555555565bbd *)
adcs carry r8 r8 r14 carry;
(* mulx   0x38(%rsp),%r15,%r14                     #! EA = L0x7fffffffd848; Value = 0x93d0423563b444f8; PC = 0x555555565bc3 *)
mull r14 r15 L0x7fffffffd848 rdx;
(* adox   %r15,%r8                                 #! PC = 0x555555565bca *)
adcs overflow r8 r8 r15 overflow;
(* adcx   %r14,%r9                                 #! PC = 0x555555565bd0 *)
adcs carry r9 r9 r14 carry;
(* mulx   0x40(%rsp),%r14,%rbx                     #! EA = L0x7fffffffd850; Value = 0x7b03b81f40a67eb8; PC = 0x555555565bd6 *)
mull rbx r14 L0x7fffffffd850 rdx;
(* adox   %r14,%r9                                 #! PC = 0x555555565bdd *)
adcs overflow r9 r9 r14 overflow;
(* adcx   %rbx,%r11                                #! PC = 0x555555565be3 *)
adcs carry r11 r11 rbx carry;
(* mulx   0x48(%rsp),%r15,%rbx                     #! EA = L0x7fffffffd858; Value = 0x4d2960cd941900b2; PC = 0x555555565be9 *)
mull rbx r15 L0x7fffffffd858 rdx;
(* adcx   %rbx,%rbp                                #! PC = 0x555555565bf0 *)
adcs carry rbp rbp rbx carry;
(* mulx   0x50(%rsp),%r14,%rbx                     #! EA = L0x7fffffffd860; Value = 0x02f534f9e858a0a1; PC = 0x555555565bf6 *)
mull rbx r14 L0x7fffffffd860 rdx;
(* adcx   %rbx,%r10                                #! PC = 0x555555565bfd *)
adcs carry r10 r10 rbx carry;
(* mulx   0x58(%rsp),%rdx,%rbx                     #! EA = L0x7fffffffd868; Value = 0x06d4d9cb0d0026ca; PC = 0x555555565c03 *)
mull rbx rdx L0x7fffffffd868 rdx;
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
(* mov    0x20(%rsp),%rdx                          #! EA = L0x7fffffffd830; Value = 0x02f534f9e858a0a1; PC = 0x555555565c28 *)
mov rdx L0x7fffffffd830;
(* mulx   0x30(%rsp),%r15,%r14                     #! EA = L0x7fffffffd840; Value = 0xe601a6feb2461371; PC = 0x555555565c2d *)
mull r14 r15 L0x7fffffffd840 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565c34 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r8                                 #! PC = 0x555555565c37 *)
adcs carry r8 r8 r15 carry;
(* mov    %r8,0x80(%rcx)                           #! EA = L0x7fffffffd960; PC = 0x555555565c3d *)
mov L0x7fffffffd960 r8;
(* adcx   %r14,%r9                                 #! PC = 0x555555565c44 *)
adcs carry r9 r9 r14 carry;
(* mulx   0x38(%rsp),%r15,%r14                     #! EA = L0x7fffffffd848; Value = 0x93d0423563b444f8; PC = 0x555555565c4a *)
mull r14 r15 L0x7fffffffd848 rdx;
(* adox   %r15,%r9                                 #! PC = 0x555555565c51 *)
adcs overflow r9 r9 r15 overflow;
(* adcx   %r14,%r11                                #! PC = 0x555555565c57 *)
adcs carry r11 r11 r14 carry;
(* mulx   0x40(%rsp),%r14,%r8                      #! EA = L0x7fffffffd850; Value = 0x7b03b81f40a67eb8; PC = 0x555555565c5d *)
mull r8 r14 L0x7fffffffd850 rdx;
(* adox   %r14,%r11                                #! PC = 0x555555565c64 *)
adcs overflow r11 r11 r14 overflow;
(* adcx   %r8,%rbp                                 #! PC = 0x555555565c6a *)
adcs carry rbp rbp r8 carry;
(* mulx   0x48(%rsp),%r15,%r8                      #! EA = L0x7fffffffd858; Value = 0x4d2960cd941900b2; PC = 0x555555565c70 *)
mull r8 r15 L0x7fffffffd858 rdx;
(* adcx   %r8,%r10                                 #! PC = 0x555555565c77 *)
adcs carry r10 r10 r8 carry;
(* mulx   0x50(%rsp),%r14,%r8                      #! EA = L0x7fffffffd860; Value = 0x02f534f9e858a0a1; PC = 0x555555565c7d *)
mull r8 r14 L0x7fffffffd860 rdx;
(* adcx   %r8,%rbx                                 #! PC = 0x555555565c84 *)
adcs carry rbx rbx r8 carry;
(* mulx   0x58(%rsp),%rdx,%r8                      #! EA = L0x7fffffffd868; Value = 0x06d4d9cb0d0026ca; PC = 0x555555565c8a *)
mull r8 rdx L0x7fffffffd868 rdx;
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
(* mov    0x28(%rsp),%rdx                          #! EA = L0x7fffffffd838; Value = 0x06d4d9cb0d0026ca; PC = 0x555555565caf *)
mov rdx L0x7fffffffd838;
(* mulx   0x30(%rsp),%r15,%r14                     #! EA = L0x7fffffffd840; Value = 0xe601a6feb2461371; PC = 0x555555565cb4 *)
mull r14 r15 L0x7fffffffd840 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565cbb *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r9                                 #! PC = 0x555555565cbe *)
adcs carry r9 r9 r15 carry;
(* mov    %r9,0x88(%rcx)                           #! EA = L0x7fffffffd968; PC = 0x555555565cc4 *)
mov L0x7fffffffd968 r9;
(* adcx   %r14,%r11                                #! PC = 0x555555565ccb *)
adcs carry r11 r11 r14 carry;
(* mulx   0x38(%rsp),%r15,%r14                     #! EA = L0x7fffffffd848; Value = 0x93d0423563b444f8; PC = 0x555555565cd1 *)
mull r14 r15 L0x7fffffffd848 rdx;
(* adox   %r15,%r11                                #! PC = 0x555555565cd8 *)
adcs overflow r11 r11 r15 overflow;
(* adcx   %r14,%rbp                                #! PC = 0x555555565cde *)
adcs carry rbp rbp r14 carry;
(* mulx   0x40(%rsp),%r14,%r9                      #! EA = L0x7fffffffd850; Value = 0x7b03b81f40a67eb8; PC = 0x555555565ce4 *)
mull r9 r14 L0x7fffffffd850 rdx;
(* adox   %r14,%rbp                                #! PC = 0x555555565ceb *)
adcs overflow rbp rbp r14 overflow;
(* adcx   %r9,%r10                                 #! PC = 0x555555565cf1 *)
adcs carry r10 r10 r9 carry;
(* mulx   0x48(%rsp),%r15,%r9                      #! EA = L0x7fffffffd858; Value = 0x4d2960cd941900b2; PC = 0x555555565cf7 *)
mull r9 r15 L0x7fffffffd858 rdx;
(* adcx   %r9,%rbx                                 #! PC = 0x555555565cfe *)
adcs carry rbx rbx r9 carry;
(* mulx   0x50(%rsp),%r14,%r9                      #! EA = L0x7fffffffd860; Value = 0x02f534f9e858a0a1; PC = 0x555555565d04 *)
mull r9 r14 L0x7fffffffd860 rdx;
(* adcx   %r9,%r8                                  #! PC = 0x555555565d0b *)
adcs carry r8 r8 r9 carry;
(* mulx   0x58(%rsp),%rdx,%r9                      #! EA = L0x7fffffffd868; Value = 0x06d4d9cb0d0026ca; PC = 0x555555565d11 *)
mull r9 rdx L0x7fffffffd868 rdx;
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
(* mov    %r11,0x90(%rcx)                          #! EA = L0x7fffffffd970; PC = 0x555555565d36 *)
mov L0x7fffffffd970 r11;
(* mov    %rbp,0x98(%rcx)                          #! EA = L0x7fffffffd978; PC = 0x555555565d3d *)
mov L0x7fffffffd978 rbp;
(* mov    %r10,0xa0(%rcx)                          #! EA = L0x7fffffffd980; PC = 0x555555565d44 *)
mov L0x7fffffffd980 r10;
(* mov    %rbx,0xa8(%rcx)                          #! EA = L0x7fffffffd988; PC = 0x555555565d4b *)
mov L0x7fffffffd988 rbx;
(* mov    %r8,0xb0(%rcx)                           #! EA = L0x7fffffffd990; PC = 0x555555565d52 *)
mov L0x7fffffffd990 r8;
(* mov    %r9,0xb8(%rcx)                           #! EA = L0x7fffffffd998; PC = 0x555555565d59 *)
mov L0x7fffffffd998 r9;

assert and [
  limbs 64 [ L0x7fffffffd940, L0x7fffffffd948, L0x7fffffffd950, L0x7fffffffd958, L0x7fffffffd960, L0x7fffffffd968,
             L0x7fffffffd970, L0x7fffffffd978, L0x7fffffffd980, L0x7fffffffd988, L0x7fffffffd990, L0x7fffffffd998 ]
  =
  (limbs 64 [ ah_add_al1_0, ah_add_al1_1, ah_add_al1_2, ah_add_al1_3, ah_add_al1_4, ah_add_al1_5 ])
  *
  (limbs 64 [ ah_add_al12_0, ah_add_al12_1, ah_add_al12_2, ah_add_al12_3, ah_add_al12_4, ah_add_al12_5 ])
] && true;

// [rsp] <- AH x BH
(* mov    0x30(%rdi),%rdx                          #! EA = L0x7fffffffdc90; Value = 0x68b605a2bb6ccdba; PC = 0x555555565d60 *)
mov rdx L0x7fffffffdc90;
(* mulx   0x30(%rsi),%r9,%r8                       #! EA = L0x7fffffffdc90; Value = 0x68b605a2bb6ccdba; PC = 0x555555565d64 *)
mull r8 r9 L0x7fffffffdc90 rdx;
(* mulx   0x38(%rsi),%r11,%r10                     #! EA = L0x7fffffffdc98; Value = 0xba13c9f7e5122a24; PC = 0x555555565d6a *)
mull r10 r11 L0x7fffffffdc98 rdx;
(* mov    %r9,(%rsp)                               #! EA = L0x7fffffffd810; PC = 0x555555565d70 *)
mov L0x7fffffffd810 r9;
(* xor    %rax,%rax                                #! PC = 0x555555565d74 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffdca0; Value = 0x805cd6da8958a135; PC = 0x555555565d77 *)
mull rbx rbp L0x7fffffffdca0 rdx;
(* adox   %r11,%r8                                 #! PC = 0x555555565d7d *)
adcs overflow r8 r8 r11 overflow;
(* adox   %rbp,%r10                                #! PC = 0x555555565d83 *)
adcs overflow r10 r10 rbp overflow;
(* mulx   0x48(%rsi),%r11,%r9                      #! EA = L0x7fffffffdca8; Value = 0x1e8ba1054d2e983b; PC = 0x555555565d89 *)
mull r9 r11 L0x7fffffffdca8 rdx;
(* adox   %r11,%rbx                                #! PC = 0x555555565d8f *)
adcs overflow rbx rbx r11 overflow;
(* mulx   0x50(%rsi),%r14,%rbp                     #! EA = L0x7fffffffdcb0; Value = 0x245901bcab088612; PC = 0x555555565d95 *)
mull rbp r14 L0x7fffffffdcb0 rdx;
(* adox   %r14,%r9                                 #! PC = 0x555555565d9b *)
adcs overflow r9 r9 r14 overflow;
(* mulx   0x58(%rsi),%r15,%r11                     #! EA = L0x7fffffffdcb8; Value = 0x00004d3aeb57629f; PC = 0x555555565da1 *)
mull r11 r15 L0x7fffffffdcb8 rdx;
(* adox   %r15,%rbp                                #! PC = 0x555555565da7 *)
adcs overflow rbp rbp r15 overflow;
(* adox   %rax,%r11                                #! PC = 0x555555565dad *)
adcs overflow r11 r11 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x38(%rdi),%rdx                          #! EA = L0x7fffffffdc98; Value = 0xba13c9f7e5122a24; PC = 0x555555565db3 *)
mov rdx L0x7fffffffdc98;
(* mulx   0x30(%rsi),%r15,%r14                     #! EA = L0x7fffffffdc90; Value = 0x68b605a2bb6ccdba; PC = 0x555555565db7 *)
mull r14 r15 L0x7fffffffdc90 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565dbd *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r8                                 #! PC = 0x555555565dc0 *)
adcs carry r8 r8 r15 carry;
(* mov    %r8,0x8(%rsp)                            #! EA = L0x7fffffffd818; PC = 0x555555565dc6 *)
mov L0x7fffffffd818 r8;
(* adcx   %r14,%r10                                #! PC = 0x555555565dcb *)
adcs carry r10 r10 r14 carry;
(* mulx   0x38(%rsi),%r15,%r14                     #! EA = L0x7fffffffdc98; Value = 0xba13c9f7e5122a24; PC = 0x555555565dd1 *)
mull r14 r15 L0x7fffffffdc98 rdx;
(* adox   %r15,%r10                                #! PC = 0x555555565dd7 *)
adcs overflow r10 r10 r15 overflow;
(* adcx   %r14,%rbx                                #! PC = 0x555555565ddd *)
adcs carry rbx rbx r14 carry;
(* mulx   0x40(%rsi),%r14,%r8                      #! EA = L0x7fffffffdca0; Value = 0x805cd6da8958a135; PC = 0x555555565de3 *)
mull r8 r14 L0x7fffffffdca0 rdx;
(* adox   %r14,%rbx                                #! PC = 0x555555565de9 *)
adcs overflow rbx rbx r14 overflow;
(* adcx   %r9,%r8                                  #! PC = 0x555555565def *)
adcs carry r8 r8 r9 carry;
(* mulx   0x48(%rsi),%r15,%r9                      #! EA = L0x7fffffffdca8; Value = 0x1e8ba1054d2e983b; PC = 0x555555565df5 *)
mull r9 r15 L0x7fffffffdca8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555565dfb *)
adcs carry r9 r9 rbp carry;
(* mulx   0x50(%rsi),%r14,%rbp                     #! EA = L0x7fffffffdcb0; Value = 0x245901bcab088612; PC = 0x555555565e01 *)
mull rbp r14 L0x7fffffffdcb0 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555565e07 *)
adcs carry r11 r11 rbp carry;
(* mulx   0x58(%rsi),%rdx,%rbp                     #! EA = L0x7fffffffdcb8; Value = 0x00004d3aeb57629f; PC = 0x555555565e0d *)
mull rbp rdx L0x7fffffffdcb8 rdx;
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
(* mov    0x40(%rdi),%rdx                          #! EA = L0x7fffffffdca0; Value = 0x805cd6da8958a135; PC = 0x555555565e31 *)
mov rdx L0x7fffffffdca0;
(* mulx   0x30(%rsi),%r15,%r14                     #! EA = L0x7fffffffdc90; Value = 0x68b605a2bb6ccdba; PC = 0x555555565e35 *)
mull r14 r15 L0x7fffffffdc90 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565e3b *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r10                                #! PC = 0x555555565e3e *)
adcs carry r10 r10 r15 carry;
(* mov    %r10,0x10(%rsp)                          #! EA = L0x7fffffffd820; PC = 0x555555565e44 *)
mov L0x7fffffffd820 r10;
(* adcx   %r14,%rbx                                #! PC = 0x555555565e49 *)
adcs carry rbx rbx r14 carry;
(* mulx   0x38(%rsi),%r15,%r14                     #! EA = L0x7fffffffdc98; Value = 0xba13c9f7e5122a24; PC = 0x555555565e4f *)
mull r14 r15 L0x7fffffffdc98 rdx;
(* adox   %r15,%rbx                                #! PC = 0x555555565e55 *)
adcs overflow rbx rbx r15 overflow;
(* adcx   %r14,%r8                                 #! PC = 0x555555565e5b *)
adcs carry r8 r8 r14 carry;
(* mulx   0x40(%rsi),%r14,%r10                     #! EA = L0x7fffffffdca0; Value = 0x805cd6da8958a135; PC = 0x555555565e61 *)
mull r10 r14 L0x7fffffffdca0 rdx;
(* adox   %r14,%r8                                 #! PC = 0x555555565e67 *)
adcs overflow r8 r8 r14 overflow;
(* adcx   %r10,%r9                                 #! PC = 0x555555565e6d *)
adcs carry r9 r9 r10 carry;
(* mulx   0x48(%rsi),%r15,%r10                     #! EA = L0x7fffffffdca8; Value = 0x1e8ba1054d2e983b; PC = 0x555555565e73 *)
mull r10 r15 L0x7fffffffdca8 rdx;
(* adcx   %r10,%r11                                #! PC = 0x555555565e79 *)
adcs carry r11 r11 r10 carry;
(* mulx   0x50(%rsi),%r14,%r10                     #! EA = L0x7fffffffdcb0; Value = 0x245901bcab088612; PC = 0x555555565e7f *)
mull r10 r14 L0x7fffffffdcb0 rdx;
(* adcx   %r10,%rbp                                #! PC = 0x555555565e85 *)
adcs carry rbp rbp r10 carry;
(* mulx   0x58(%rsi),%rdx,%r10                     #! EA = L0x7fffffffdcb8; Value = 0x00004d3aeb57629f; PC = 0x555555565e8b *)
mull r10 rdx L0x7fffffffdcb8 rdx;
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
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffdca8; Value = 0x1e8ba1054d2e983b; PC = 0x555555565eaf *)
mov rdx L0x7fffffffdca8;
(* mulx   0x30(%rsi),%r15,%r14                     #! EA = L0x7fffffffdc90; Value = 0x68b605a2bb6ccdba; PC = 0x555555565eb3 *)
mull r14 r15 L0x7fffffffdc90 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565eb9 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%rbx                                #! PC = 0x555555565ebc *)
adcs carry rbx rbx r15 carry;
(* mov    %rbx,0x18(%rsp)                          #! EA = L0x7fffffffd828; PC = 0x555555565ec2 *)
mov L0x7fffffffd828 rbx;
(* adcx   %r14,%r8                                 #! PC = 0x555555565ec7 *)
adcs carry r8 r8 r14 carry;
(* mulx   0x38(%rsi),%r15,%r14                     #! EA = L0x7fffffffdc98; Value = 0xba13c9f7e5122a24; PC = 0x555555565ecd *)
mull r14 r15 L0x7fffffffdc98 rdx;
(* adox   %r15,%r8                                 #! PC = 0x555555565ed3 *)
adcs overflow r8 r8 r15 overflow;
(* adcx   %r14,%r9                                 #! PC = 0x555555565ed9 *)
adcs carry r9 r9 r14 carry;
(* mulx   0x40(%rsi),%r14,%rbx                     #! EA = L0x7fffffffdca0; Value = 0x805cd6da8958a135; PC = 0x555555565edf *)
mull rbx r14 L0x7fffffffdca0 rdx;
(* adox   %r14,%r9                                 #! PC = 0x555555565ee5 *)
adcs overflow r9 r9 r14 overflow;
(* adcx   %rbx,%r11                                #! PC = 0x555555565eeb *)
adcs carry r11 r11 rbx carry;
(* mulx   0x48(%rsi),%r15,%rbx                     #! EA = L0x7fffffffdca8; Value = 0x1e8ba1054d2e983b; PC = 0x555555565ef1 *)
mull rbx r15 L0x7fffffffdca8 rdx;
(* adcx   %rbx,%rbp                                #! PC = 0x555555565ef7 *)
adcs carry rbp rbp rbx carry;
(* mulx   0x50(%rsi),%r14,%rbx                     #! EA = L0x7fffffffdcb0; Value = 0x245901bcab088612; PC = 0x555555565efd *)
mull rbx r14 L0x7fffffffdcb0 rdx;
(* adcx   %rbx,%r10                                #! PC = 0x555555565f03 *)
adcs carry r10 r10 rbx carry;
(* mulx   0x58(%rsi),%rdx,%rbx                     #! EA = L0x7fffffffdcb8; Value = 0x00004d3aeb57629f; PC = 0x555555565f09 *)
mull rbx rdx L0x7fffffffdcb8 rdx;
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
(* mov    0x50(%rdi),%rdx                          #! EA = L0x7fffffffdcb0; Value = 0x245901bcab088612; PC = 0x555555565f2d *)
mov rdx L0x7fffffffdcb0;
(* mulx   0x30(%rsi),%r15,%r14                     #! EA = L0x7fffffffdc90; Value = 0x68b605a2bb6ccdba; PC = 0x555555565f31 *)
mull r14 r15 L0x7fffffffdc90 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565f37 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r8                                 #! PC = 0x555555565f3a *)
adcs carry r8 r8 r15 carry;
(* mov    %r8,0x20(%rsp)                           #! EA = L0x7fffffffd830; PC = 0x555555565f40 *)
mov L0x7fffffffd830 r8;
(* adcx   %r14,%r9                                 #! PC = 0x555555565f45 *)
adcs carry r9 r9 r14 carry;
(* mulx   0x38(%rsi),%r15,%r14                     #! EA = L0x7fffffffdc98; Value = 0xba13c9f7e5122a24; PC = 0x555555565f4b *)
mull r14 r15 L0x7fffffffdc98 rdx;
(* adox   %r15,%r9                                 #! PC = 0x555555565f51 *)
adcs overflow r9 r9 r15 overflow;
(* adcx   %r14,%r11                                #! PC = 0x555555565f57 *)
adcs carry r11 r11 r14 carry;
(* mulx   0x40(%rsi),%r14,%r8                      #! EA = L0x7fffffffdca0; Value = 0x805cd6da8958a135; PC = 0x555555565f5d *)
mull r8 r14 L0x7fffffffdca0 rdx;
(* adox   %r14,%r11                                #! PC = 0x555555565f63 *)
adcs overflow r11 r11 r14 overflow;
(* adcx   %r8,%rbp                                 #! PC = 0x555555565f69 *)
adcs carry rbp rbp r8 carry;
(* mulx   0x48(%rsi),%r15,%r8                      #! EA = L0x7fffffffdca8; Value = 0x1e8ba1054d2e983b; PC = 0x555555565f6f *)
mull r8 r15 L0x7fffffffdca8 rdx;
(* adcx   %r8,%r10                                 #! PC = 0x555555565f75 *)
adcs carry r10 r10 r8 carry;
(* mulx   0x50(%rsi),%r14,%r8                      #! EA = L0x7fffffffdcb0; Value = 0x245901bcab088612; PC = 0x555555565f7b *)
mull r8 r14 L0x7fffffffdcb0 rdx;
(* adcx   %r8,%rbx                                 #! PC = 0x555555565f81 *)
adcs carry rbx rbx r8 carry;
(* mulx   0x58(%rsi),%rdx,%r8                      #! EA = L0x7fffffffdcb8; Value = 0x00004d3aeb57629f; PC = 0x555555565f87 *)
mull r8 rdx L0x7fffffffdcb8 rdx;
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
(* mov    0x58(%rdi),%rdx                          #! EA = L0x7fffffffdcb8; Value = 0x00004d3aeb57629f; PC = 0x555555565fab *)
mov rdx L0x7fffffffdcb8;
(* mulx   0x30(%rsi),%r15,%r14                     #! EA = L0x7fffffffdc90; Value = 0x68b605a2bb6ccdba; PC = 0x555555565faf *)
mull r14 r15 L0x7fffffffdc90 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565fb5 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r9                                 #! PC = 0x555555565fb8 *)
adcs carry r9 r9 r15 carry;
(* mov    %r9,0x28(%rsp)                           #! EA = L0x7fffffffd838; PC = 0x555555565fbe *)
mov L0x7fffffffd838 r9;
(* adcx   %r14,%r11                                #! PC = 0x555555565fc3 *)
adcs carry r11 r11 r14 carry;
(* mulx   0x38(%rsi),%r15,%r14                     #! EA = L0x7fffffffdc98; Value = 0xba13c9f7e5122a24; PC = 0x555555565fc9 *)
mull r14 r15 L0x7fffffffdc98 rdx;
(* adox   %r15,%r11                                #! PC = 0x555555565fcf *)
adcs overflow r11 r11 r15 overflow;
(* adcx   %r14,%rbp                                #! PC = 0x555555565fd5 *)
adcs carry rbp rbp r14 carry;
(* mulx   0x40(%rsi),%r14,%r9                      #! EA = L0x7fffffffdca0; Value = 0x805cd6da8958a135; PC = 0x555555565fdb *)
mull r9 r14 L0x7fffffffdca0 rdx;
(* adox   %r14,%rbp                                #! PC = 0x555555565fe1 *)
adcs overflow rbp rbp r14 overflow;
(* adcx   %r9,%r10                                 #! PC = 0x555555565fe7 *)
adcs carry r10 r10 r9 carry;
(* mulx   0x48(%rsi),%r15,%r9                      #! EA = L0x7fffffffdca8; Value = 0x1e8ba1054d2e983b; PC = 0x555555565fed *)
mull r9 r15 L0x7fffffffdca8 rdx;
(* adcx   %r9,%rbx                                 #! PC = 0x555555565ff3 *)
adcs carry rbx rbx r9 carry;
(* mulx   0x50(%rsi),%r14,%r9                      #! EA = L0x7fffffffdcb0; Value = 0x245901bcab088612; PC = 0x555555565ff9 *)
mull r9 r14 L0x7fffffffdcb0 rdx;
(* adcx   %r9,%r8                                  #! PC = 0x555555565fff *)
adcs carry r8 r8 r9 carry;
(* mulx   0x58(%rsi),%rdx,%r9                      #! EA = L0x7fffffffdcb8; Value = 0x00004d3aeb57629f; PC = 0x555555566005 *)
mull r9 rdx L0x7fffffffdcb8 rdx;
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
(* mov    %r11,0x30(%rsp)                          #! EA = L0x7fffffffd840; PC = 0x555555566029 *)
mov L0x7fffffffd840 r11;
(* mov    %rbp,0x38(%rsp)                          #! EA = L0x7fffffffd848; PC = 0x55555556602e *)
mov L0x7fffffffd848 rbp;
(* mov    %r10,0x40(%rsp)                          #! EA = L0x7fffffffd850; PC = 0x555555566033 *)
mov L0x7fffffffd850 r10;
(* mov    %rbx,0x48(%rsp)                          #! EA = L0x7fffffffd858; PC = 0x555555566038 *)
mov L0x7fffffffd858 rbx;
(* mov    %r8,0x50(%rsp)                           #! EA = L0x7fffffffd860; PC = 0x55555556603d *)
mov L0x7fffffffd860 r8;
(* mov    %r9,0x58(%rsp)                           #! EA = L0x7fffffffd868; PC = 0x555555566042 *)
mov L0x7fffffffd868 r9;

assert and [
  limbs 64 [ L0x7fffffffd810, L0x7fffffffd818, L0x7fffffffd820, L0x7fffffffd828, L0x7fffffffd830, L0x7fffffffd838,
             L0x7fffffffd840, L0x7fffffffd848, L0x7fffffffd850, L0x7fffffffd858, L0x7fffffffd860, L0x7fffffffd868 ]
  =
  (limbs 64 [ a_6, a_7, a_8, a_9, a_a, a_b ])
  *
  (limbs 64 [ a_6, a_7, a_8, a_9, a_a, a_b ])
] && true;

// r8-r13 <- (AH+AL) x (BH+BL), final step
(* mov    0x60(%rsp),%r8                           #! EA = L0x7fffffffd870; Value = 0x0000000000000000; PC = 0x555555566047 *)
mov r8 L0x7fffffffd870;
(* mov    0x68(%rsp),%r9                           #! EA = L0x7fffffffd878; Value = 0x0000000000000000; PC = 0x55555556604c *)
mov r9 L0x7fffffffd878;
(* mov    0x70(%rsp),%r10                          #! EA = L0x7fffffffd880; Value = 0x0000000000000000; PC = 0x555555566051 *)
mov r10 L0x7fffffffd880;
(* mov    0x78(%rsp),%r11                          #! EA = L0x7fffffffd888; Value = 0x0000000000000000; PC = 0x555555566056 *)
mov r11 L0x7fffffffd888;
(* mov    0x90(%rcx),%rax                          #! EA = L0x7fffffffd970; Value = 0x78291a7024b36fed; PC = 0x55555556605b *)
mov rax L0x7fffffffd970;
(* add    %rax,%r8                                 #! PC = 0x555555566062 *)
adds carry r8 r8 rax;
(* mov    0x98(%rcx),%rax                          #! EA = L0x7fffffffd978; Value = 0x252662fae568d840; PC = 0x555555566065 *)
mov rax L0x7fffffffd978;
(* adc    %rax,%r9                                 #! PC = 0x55555556606c *)
adcs carry r9 r9 rax@uint64 carry;
(* mov    0xa0(%rcx),%rax                          #! EA = L0x7fffffffd980; Value = 0x81c70a87ae2817af; PC = 0x55555556606f *)
mov rax L0x7fffffffd980;
(* adc    %rax,%r10                                #! PC = 0x555555566076 *)
adcs carry r10 r10 rax@uint64 carry;
(* mov    0xa8(%rcx),%rax                          #! EA = L0x7fffffffd988; Value = 0x2ff97d12337cac57; PC = 0x555555566079 *)
mov rax L0x7fffffffd988;
(* adc    %rax,%r11                                #! PC = 0x555555566080 *)
adcs carry r11 r11 rax@uint64 carry;
(* mov    0xb0(%rcx),%rax                          #! EA = L0x7fffffffd990; Value = 0x976165f063ac2a39; PC = 0x555555566083 *)
mov rax L0x7fffffffd990;
(* adc    %rax,%r12                                #! PC = 0x55555556608a *)
adcs carry r12 r12 rax@uint64 carry;
(* mov    0xb8(%rcx),%rax                          #! EA = L0x7fffffffd998; Value = 0x002eab2ef6336729; PC = 0x55555556608d *)
mov rax L0x7fffffffd998;
(* adc    %rax,%r13                                #! PC = 0x555555566094 *)
adcs carry r13 r13 rax@uint64 carry;

// rdi,rdx,rbx,rbp,r14,r15,r8-r13 <- (AH+AL) x (BH+BL) - ALxBL
(* mov    0x60(%rcx),%rdi                          #! EA = L0x7fffffffd940; Value = 0x534ca673c745f7e1; PC = 0x555555566097 *)
mov rdi L0x7fffffffd940;
(* sub    (%rcx),%rdi                              #! EA = L0x7fffffffd8e0; Value = 0x4568087cf73a28d1; PC = 0x55555556609b *)
subb carry rdi rdi L0x7fffffffd8e0;
(* mov    0x68(%rcx),%rdx                          #! EA = L0x7fffffffd948; Value = 0x77490aa1c2444f04; PC = 0x55555556609e *)
mov rdx L0x7fffffffd948;
(* sbb    0x8(%rcx),%rdx                           #! EA = L0x7fffffffd8e8; Value = 0xd66df5331a484202; PC = 0x5555555660a2 *)
sbbs carry rdx rdx L0x7fffffffd8e8 carry;
(* mov    0x70(%rcx),%rbx                          #! EA = L0x7fffffffd950; Value = 0x716ba1fe7e51b9b0; PC = 0x5555555660a6 *)
mov rbx L0x7fffffffd950;
(* sbb    0x10(%rcx),%rbx                          #! EA = L0x7fffffffd8f0; Value = 0x7c80b79e1113a8cb; PC = 0x5555555660aa *)
sbbs carry rbx rbx L0x7fffffffd8f0 carry;
(* mov    0x78(%rcx),%rbp                          #! EA = L0x7fffffffd958; Value = 0xb1d36f60c07703f4; PC = 0x5555555660ae *)
mov rbp L0x7fffffffd958;
(* sbb    0x18(%rcx),%rbp                          #! EA = L0x7fffffffd8f8; Value = 0xf9bcd48b8418f8ce; PC = 0x5555555660b2 *)
sbbs carry rbp rbp L0x7fffffffd8f8 carry;
(* mov    0x80(%rcx),%r14                          #! EA = L0x7fffffffd960; Value = 0x6094c91722c691f5; PC = 0x5555555660b6 *)
mov r14 L0x7fffffffd960;
(* sbb    0x20(%rcx),%r14                          #! EA = L0x7fffffffd900; Value = 0x83ca515714317e3a; PC = 0x5555555660bd *)
sbbs carry r14 r14 L0x7fffffffd900 carry;
(* mov    0x88(%rcx),%r15                          #! EA = L0x7fffffffd968; Value = 0x6d3f4cacd2b8ace3; PC = 0x5555555660c1 *)
mov r15 L0x7fffffffd968;
(* sbb    0x28(%rcx),%r15                          #! EA = L0x7fffffffd908; Value = 0x4f1a9d31ba165296; PC = 0x5555555660c8 *)
sbbs carry r15 r15 L0x7fffffffd908 carry;
(* sbb    0x30(%rcx),%r8                           #! EA = L0x7fffffffd910; Value = 0x2d9db99a5706379e; PC = 0x5555555660cc *)
sbbs carry r8 r8 L0x7fffffffd910 carry;
(* sbb    0x38(%rcx),%r9                           #! EA = L0x7fffffffd918; Value = 0xe1a9b8e83c9d360e; PC = 0x5555555660d0 *)
sbbs carry r9 r9 L0x7fffffffd918 carry;
(* sbb    0x40(%rcx),%r10                          #! EA = L0x7fffffffd920; Value = 0xda251f43d3522f34; PC = 0x5555555660d4 *)
sbbs carry r10 r10 L0x7fffffffd920 carry;
(* sbb    0x48(%rcx),%r11                          #! EA = L0x7fffffffd928; Value = 0x4ff8147742642da1; PC = 0x5555555660d8 *)
sbbs carry r11 r11 L0x7fffffffd928 carry;
(* sbb    0x50(%rcx),%r12                          #! EA = L0x7fffffffd930; Value = 0x62488aa6200c0c25; PC = 0x5555555660dc *)
sbbs carry r12 r12 L0x7fffffffd930 carry;
(* sbb    0x58(%rcx),%r13                          #! EA = L0x7fffffffd938; Value = 0x002ea70fdd799ead; PC = 0x5555555660e0 *)
sbbs carry r13 r13 L0x7fffffffd938 carry;

// rdi,rdx,rbx,rbp,r14,r15,r8-r13 <- (AH+AL) x (BH+BL) - ALxBL - AHxBH
(* sub    (%rsp),%rdi                              #! EA = L0x7fffffffd810; Value = 0xa36dc633f6436b24; PC = 0x5555555660e4 *)
subb carry rdi rdi L0x7fffffffd810;
(* sbb    0x8(%rsp),%rdx                           #! EA = L0x7fffffffd818; Value = 0x9eb1758c580d8cef; PC = 0x5555555660e8 *)
sbbs carry rdx rdx L0x7fffffffd818 carry;
(* sbb    0x10(%rsp),%rbx                          #! EA = L0x7fffffffd820; Value = 0xdba5b77b43afd1aa; PC = 0x5555555660ed *)
sbbs carry rbx rbx L0x7fffffffd820 carry;
(* sbb    0x18(%rsp),%rbp                          #! EA = L0x7fffffffd828; Value = 0x5c2fb09e51c08bd0; PC = 0x5555555660f2 *)
sbbs carry rbp rbp L0x7fffffffd828 carry;
(* sbb    0x20(%rsp),%r14                          #! EA = L0x7fffffffd830; Value = 0x914a4438e5dc5808; PC = 0x5555555660f7 *)
sbbs carry r14 r14 L0x7fffffffd830 carry;
(* sbb    0x28(%rsp),%r15                          #! EA = L0x7fffffffd838; Value = 0x0f574e46e7253787; PC = 0x5555555660fc *)
sbbs carry r15 r15 L0x7fffffffd838 carry;
(* sbb    0x30(%rsp),%r8                           #! EA = L0x7fffffffd840; Value = 0xa15dd9e1a0cdd9eb; PC = 0x555555566101 *)
sbbs carry r8 r8 L0x7fffffffd840 carry;
(* sbb    0x38(%rsp),%r9                           #! EA = L0x7fffffffd848; Value = 0x460b5a3724feafa5; PC = 0x555555566106 *)
sbbs carry r9 r9 L0x7fffffffd848 carry;
(* sbb    0x40(%rsp),%r10                          #! EA = L0x7fffffffd850; Value = 0x0fbecfa289bde619; PC = 0x55555556610b *)
sbbs carry r10 r10 L0x7fffffffd850 carry;
(* sbb    0x48(%rsp),%r11                          #! EA = L0x7fffffffd858; Value = 0x81cf4f447b100345; PC = 0x555555566110 *)
sbbs carry r11 r11 L0x7fffffffd858 carry;
(* sbb    0x50(%rsp),%r12                          #! EA = L0x7fffffffd860; Value = 0x0d45f8de5e44a0d2; PC = 0x555555566115 *)
sbbs carry r12 r12 L0x7fffffffd860 carry;
(* sbb    0x58(%rsp),%r13                          #! EA = L0x7fffffffd868; Value = 0x00000000174c7f22; PC = 0x55555556611a *)
sbbs carry r13 r13 L0x7fffffffd868 carry;

assert and [
  eqmod
    (limbs 64 [ rdi, rdx, rbx, rbp, r14, r15, r8, r9, r10, r11, r12, r13 ])
    (
      (limbs 64 [ a_0, a_1, a_2, a_3, a_4, a_5 ] * limbs 64 [ a_6, a_7, a_8, a_9, a_a, a_b ])
      +
      (limbs 64 [ a_6, a_7, a_8, a_9, a_a, a_b ] * limbs 64 [ a_0, a_1, a_2, a_3, a_4, a_5 ])
    )
    (2**768)
] && and [
  (limbs 64 [ a_0, a_1, a_2, a_3, a_4, a_5, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64 ] * limbs 64 [ a_6, a_7, a_8, a_9, a_a, a_b, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64 ])
  +
  (limbs 64 [ a_6, a_7, a_8, a_9, a_a, a_b, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64 ] * limbs 64 [ a_0, a_1, a_2, a_3, a_4, a_5, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64 ])
  <u
  (2**768)@832
];
assume and [
  (limbs 64 [ rdi, rdx, rbx, rbp, r14, r15, r8, r9, r10, r11, r12, r13 ])
  =
  (
    (limbs 64 [ a_0, a_1, a_2, a_3, a_4, a_5 ] * limbs 64 [ a_6, a_7, a_8, a_9, a_a, a_b ])
    +
    (limbs 64 [ a_6, a_7, a_8, a_9, a_a, a_b ] * limbs 64 [ a_0, a_1, a_2, a_3, a_4, a_5 ])
  )
] && true;

//
(* mov    0x30(%rcx),%rax                          #! EA = L0x7fffffffd910; Value = 0x2d9db99a5706379e; PC = 0x55555556611f *)
mov rax L0x7fffffffd910;
(* add    %rdi,%rax                                #! PC = 0x555555566123 *)
adds carry rax rax rdi;
(* mov    %rax,0x30(%rcx)                          #! EA = L0x7fffffffd910; PC = 0x555555566126 *)
mov L0x7fffffffd910 rax;
(* mov    0x38(%rcx),%rax                          #! EA = L0x7fffffffd918; Value = 0xe1a9b8e83c9d360e; PC = 0x55555556612a *)
mov rax L0x7fffffffd918;
(* adc    %rdx,%rax                                #! PC = 0x55555556612e *)
adcs carry rax rax rdx@uint64 carry;
(* mov    %rax,0x38(%rcx)                          #! EA = L0x7fffffffd918; PC = 0x555555566131 *)
mov L0x7fffffffd918 rax;
(* mov    0x40(%rcx),%rax                          #! EA = L0x7fffffffd920; Value = 0xda251f43d3522f34; PC = 0x555555566135 *)
mov rax L0x7fffffffd920;
(* adc    %rbx,%rax                                #! PC = 0x555555566139 *)
adcs carry rax rax rbx@uint64 carry;
(* mov    %rax,0x40(%rcx)                          #! EA = L0x7fffffffd920; PC = 0x55555556613c *)
mov L0x7fffffffd920 rax;
(* mov    0x48(%rcx),%rax                          #! EA = L0x7fffffffd928; Value = 0x4ff8147742642da1; PC = 0x555555566140 *)
mov rax L0x7fffffffd928;
(* adc    %rbp,%rax                                #! PC = 0x555555566144 *)
adcs carry rax rax rbp@uint64 carry;
(* mov    %rax,0x48(%rcx)                          #! EA = L0x7fffffffd928; PC = 0x555555566147 *)
mov L0x7fffffffd928 rax;
(* mov    0x50(%rcx),%rax                          #! EA = L0x7fffffffd930; Value = 0x62488aa6200c0c25; PC = 0x55555556614b *)
mov rax L0x7fffffffd930;
(* adc    %r14,%rax                                #! PC = 0x55555556614f *)
adcs carry rax rax r14@uint64 carry;
(* mov    %rax,0x50(%rcx)                          #! EA = L0x7fffffffd930; PC = 0x555555566152 *)
mov L0x7fffffffd930 rax;
(* mov    0x58(%rcx),%rax                          #! EA = L0x7fffffffd938; Value = 0x002ea70fdd799ead; PC = 0x555555566156 *)
mov rax L0x7fffffffd938;
(* adc    %r15,%rax                                #! PC = 0x55555556615a *)
adcs carry rax rax r15@uint64 carry;
(* mov    %rax,0x58(%rcx)                          #! EA = L0x7fffffffd938; PC = 0x55555556615d *)
mov L0x7fffffffd938 rax;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd810; Value = 0xa36dc633f6436b24; PC = 0x555555566161 *)
mov rax L0x7fffffffd810;
(* adc    %rax,%r8                                 #! PC = 0x555555566165 *)
adcs carry r8 r8 rax@uint64 carry;
(* mov    %r8,0x60(%rcx)                           #! EA = L0x7fffffffd940; PC = 0x555555566168 *)
mov L0x7fffffffd940 r8;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd818; Value = 0x9eb1758c580d8cef; PC = 0x55555556616c *)
mov rax L0x7fffffffd818;
(* adc    %rax,%r9                                 #! PC = 0x555555566171 *)
adcs carry r9 r9 rax@uint64 carry;
(* mov    %r9,0x68(%rcx)                           #! EA = L0x7fffffffd948; PC = 0x555555566174 *)
mov L0x7fffffffd948 r9;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd820; Value = 0xdba5b77b43afd1aa; PC = 0x555555566178 *)
mov rax L0x7fffffffd820;
(* adc    %rax,%r10                                #! PC = 0x55555556617d *)
adcs carry r10 r10 rax@uint64 carry;
(* mov    %r10,0x70(%rcx)                          #! EA = L0x7fffffffd950; PC = 0x555555566180 *)
mov L0x7fffffffd950 r10;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd828; Value = 0x5c2fb09e51c08bd0; PC = 0x555555566184 *)
mov rax L0x7fffffffd828;
(* adc    %rax,%r11                                #! PC = 0x555555566189 *)
adcs carry r11 r11 rax@uint64 carry;
(* mov    %r11,0x78(%rcx)                          #! EA = L0x7fffffffd958; PC = 0x55555556618c *)
mov L0x7fffffffd958 r11;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd830; Value = 0x914a4438e5dc5808; PC = 0x555555566190 *)
mov rax L0x7fffffffd830;
(* adc    %rax,%r12                                #! PC = 0x555555566195 *)
adcs carry r12 r12 rax@uint64 carry;
(* mov    %r12,0x80(%rcx)                          #! EA = L0x7fffffffd960; PC = 0x555555566198 *)
mov L0x7fffffffd960 r12;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd838; Value = 0x0f574e46e7253787; PC = 0x55555556619f *)
mov rax L0x7fffffffd838;
(* adc    %rax,%r13                                #! PC = 0x5555555661a4 *)
adcs carry r13 r13 rax@uint64 carry;
(* mov    %r13,0x88(%rcx)                          #! EA = L0x7fffffffd968; PC = 0x5555555661a7 *)
mov L0x7fffffffd968 r13;
(* mov    0x30(%rsp),%r8                           #! EA = L0x7fffffffd840; Value = 0xa15dd9e1a0cdd9eb; PC = 0x5555555661ae *)
mov r8 L0x7fffffffd840;
(* mov    0x38(%rsp),%r9                           #! EA = L0x7fffffffd848; Value = 0x460b5a3724feafa5; PC = 0x5555555661b3 *)
mov r9 L0x7fffffffd848;
(* mov    0x40(%rsp),%r10                          #! EA = L0x7fffffffd850; Value = 0x0fbecfa289bde619; PC = 0x5555555661b8 *)
mov r10 L0x7fffffffd850;
(* mov    0x48(%rsp),%r11                          #! EA = L0x7fffffffd858; Value = 0x81cf4f447b100345; PC = 0x5555555661bd *)
mov r11 L0x7fffffffd858;
(* mov    0x50(%rsp),%r12                          #! EA = L0x7fffffffd860; Value = 0x0d45f8de5e44a0d2; PC = 0x5555555661c2 *)
mov r12 L0x7fffffffd860;
(* mov    0x58(%rsp),%r13                          #! EA = L0x7fffffffd868; Value = 0x00000000174c7f22; PC = 0x5555555661c7 *)
mov r13 L0x7fffffffd868;
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
(* mov    %r8,0x90(%rcx)                           #! EA = L0x7fffffffd970; PC = 0x5555555661eb *)
mov L0x7fffffffd970 r8;
(* mov    %r9,0x98(%rcx)                           #! EA = L0x7fffffffd978; PC = 0x5555555661f2 *)
mov L0x7fffffffd978 r9;
(* mov    %r10,0xa0(%rcx)                          #! EA = L0x7fffffffd980; PC = 0x5555555661f9 *)
mov L0x7fffffffd980 r10;
(* mov    %r11,0xa8(%rcx)                          #! EA = L0x7fffffffd988; PC = 0x555555566200 *)
mov L0x7fffffffd988 r11;
(* mov    %r12,0xb0(%rcx)                          #! EA = L0x7fffffffd990; PC = 0x555555566207 *)
mov L0x7fffffffd990 r12;
(* mov    %r13,0xb8(%rcx)                          #! EA = L0x7fffffffd998; PC = 0x55555556620e *)
mov L0x7fffffffd998 r13;
(* #! <- SP = 0x7fffffffd8d8 *)
#! 0x7fffffffd8d8 = 0x7fffffffd8d8;
(* #retq                                           #! PC = 0x55555556621f *)
#retq                                           #! 0x55555556621f = 0x55555556621f;

(* ===== Outputs of mul751_asm ===== *)

mov m_00 L0x7fffffffd8e0;
mov m_01 L0x7fffffffd8e8;
mov m_02 L0x7fffffffd8f0;
mov m_03 L0x7fffffffd8f8;
mov m_04 L0x7fffffffd900;
mov m_05 L0x7fffffffd908;
mov m_06 L0x7fffffffd910;
mov m_07 L0x7fffffffd918;
mov m_08 L0x7fffffffd920;
mov m_09 L0x7fffffffd928;
mov m_10 L0x7fffffffd930;
mov m_11 L0x7fffffffd938;
mov m_12 L0x7fffffffd940;
mov m_13 L0x7fffffffd948;
mov m_14 L0x7fffffffd950;
mov m_15 L0x7fffffffd958;
mov m_16 L0x7fffffffd960;
mov m_17 L0x7fffffffd968;
mov m_18 L0x7fffffffd970;
mov m_19 L0x7fffffffd978;
mov m_20 L0x7fffffffd980;
mov m_21 L0x7fffffffd988;
mov m_22 L0x7fffffffd990;
mov m_23 L0x7fffffffd998;

assert
  and [
    (limbs 64 [ m_00, m_01, m_02, m_03, m_04, m_05, m_06, m_07, m_08, m_09, m_10, m_11, m_12, m_13, m_14, m_15, m_16, m_17, m_18, m_19, m_20, m_21, m_22, m_23 ])
    =
    (
      (limbs 64 [ a_0, a_1, a_2, a_3, a_4, a_5, a_6, a_7, a_8, a_9, a_a, a_b ])
      *
      (limbs 64 [ a_0, a_1, a_2, a_3, a_4, a_5, a_6, a_7, a_8, a_9, a_a, a_b ])
    )
] && true;

(* mov    %rbp,%rsi                                #! PC = 0x555555558868 *)
mov rsi rbp;
(* mov    %r12,%rdi                                #! PC = 0x55555555886b *)
mov rdi r12;
(* #callq  0x5555555650d0 <rdc_mont>               #! PC = 0x55555555886e *)
#callq  0x5555555650d0 <rdc_mont>               #! 0x55555555886e = 0x55555555886e;
(* #! -> SP = 0x7fffffffd8d8 *)
#! 0x7fffffffd8d8 = 0x7fffffffd8d8;
(* #jmpq   0x555555566220 <rdc751_asm>             #! PC = 0x5555555650d4 *)
#jmpq   0x555555566220 <rdc751_asm>             #! 0x5555555650d4 = 0x5555555650d4;

// a[0-3] x p751p1_nz --> result: [reg_p2+48], [reg_p2+56], [reg_p2+64], and rbp, r8:r14
(* mov    (%rdi),%rdx                              #! EA = L0x7fffffffd8e0; Value = 0x4568087cf73a28d1; PC = 0x55555556622a *)
mov rdx L0x7fffffffd8e0;
(* mulx   0x45d2(%rip),%r9,%r8        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x55555556622d *)
mull r8 r9 L0x55555556a808 rdx;
(* mulx   0x45d1(%rip),%r10,%r13        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x555555566236 *)
mull r13 r10 L0x55555556a810 rdx;
(* mov    %r9,0x30(%rsi)                           #! EA = L0x7fffffffdcf0; PC = 0x55555556623f *)
mov L0x7fffffffdcf0 r9;
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
(* mov    0x8(%rdi),%rdx                           #! EA = L0x7fffffffd8e8; Value = 0xd66df5331a484202; PC = 0x55555556629d *)
mov rdx L0x7fffffffd8e8;
(* mulx   0x455e(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x5555555662a1 *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555662aa *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %rbp,%r8                                 #! PC = 0x5555555662ad *)
adcs carry r8 r8 rbp carry;
(* mov    %r8,0x38(%rsi)                           #! EA = L0x7fffffffdcf8; PC = 0x5555555662b3 *)
mov L0x7fffffffdcf8 r8;
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
(* mov    0x10(%rdi),%rdx                          #! EA = L0x7fffffffd8f0; Value = 0x7c80b79e1113a8cb; PC = 0x555555566341 *)
mov rdx L0x7fffffffd8f0;
(* mulx   0x44ba(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x555555566345 *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x55555556634e *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %rbp,%r13                                #! PC = 0x555555566351 *)
adcs carry r13 r13 rbp carry;
(* mov    %r13,0x40(%rsi)                          #! EA = L0x7fffffffdd00; PC = 0x555555566357 *)
mov L0x7fffffffdd00 r13;
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
(* mov    0x18(%rdi),%rdx                          #! EA = L0x7fffffffd8f8; Value = 0xf9bcd48b8418f8ce; PC = 0x5555555663e5 *)
mov rdx L0x7fffffffd8f8;
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

//
(* xor    %r15,%r15                                #! PC = 0x555555566485 *)
mov r15 0@uint64;
clear carry;
clear overflow;
(* mov    0x30(%rsi),%rax                          #! EA = L0x7fffffffdcf0; Value = 0x5db0000000000000; PC = 0x555555566488 *)
mov rax L0x7fffffffdcf0;
(* mov    0x38(%rsi),%rdx                          #! EA = L0x7fffffffdcf8; Value = 0x22b355dfa886cb16; PC = 0x55555556648c *)
mov rdx L0x7fffffffdcf8;
(* mov    0x40(%rsi),%rbx                          #! EA = L0x7fffffffdd00; Value = 0x3258787ea45a0233; PC = 0x555555566490 *)
mov rbx L0x7fffffffdd00;
(* add    0x28(%rdi),%rax                          #! EA = L0x7fffffffd908; Value = 0x4f1a9d31ba165296; PC = 0x555555566494 *)
adds carry rax rax L0x7fffffffd908;
(* adc    0x30(%rdi),%rdx                          #! EA = L0x7fffffffd910; Value = 0x9814915d30ce9b8a; PC = 0x555555566498 *)
adcs carry rdx rdx L0x7fffffffd910 carry;
(* adc    0x38(%rdi),%rbx                          #! EA = L0x7fffffffd918; Value = 0xe3d358ca8c8bb620; PC = 0x55555556649c *)
adcs carry rbx rbx L0x7fffffffd918 carry;
(* mov    %rax,0x28(%rdi)                          #! EA = L0x7fffffffd908; PC = 0x5555555664a0 *)
mov L0x7fffffffd908 rax;
(* mov    %rdx,0x30(%rdi)                          #! EA = L0x7fffffffd910; PC = 0x5555555664a4 *)
mov L0x7fffffffd910 rdx;
(* mov    %rbx,0x38(%rdi)                          #! EA = L0x7fffffffd918; PC = 0x5555555664a8 *)
mov L0x7fffffffd918 rbx;
(* adc    0x40(%rdi),%rbp                          #! EA = L0x7fffffffd920; Value = 0xf36a5228fce06e6e; PC = 0x5555555664ac *)
adcs carry rbp rbp L0x7fffffffd920 carry;
(* adc    0x48(%rdi),%r8                           #! EA = L0x7fffffffd928; Value = 0xabdefeae2d01acf6; PC = 0x5555555664b0 *)
adcs carry r8 r8 L0x7fffffffd928 carry;
(* adc    0x50(%rdi),%r9                           #! EA = L0x7fffffffd930; Value = 0xadc8be2d48c4c7d7; PC = 0x5555555664b4 *)
adcs carry r9 r9 L0x7fffffffd930 carry;
(* adc    0x58(%rdi),%r10                          #! EA = L0x7fffffffd938; Value = 0x0efc08440ef6c172; PC = 0x5555555664b8 *)
adcs carry r10 r10 L0x7fffffffd938 carry;
(* adc    0x60(%rdi),%r11                          #! EA = L0x7fffffffd940; Value = 0x4c9b4d282322c988; PC = 0x5555555664bc *)
adcs carry r11 r11 L0x7fffffffd940 carry;
(* adc    0x68(%rdi),%r12                          #! EA = L0x7fffffffd948; Value = 0x9c22c567dbda7f7c; PC = 0x5555555664c0 *)
adcs carry r12 r12 L0x7fffffffd948 carry;
(* adc    0x70(%rdi),%r13                          #! EA = L0x7fffffffd950; Value = 0x7388d31c94c7d40b; PC = 0x5555555664c4 *)
adcs carry r13 r13 L0x7fffffffd950 carry;
(* adc    0x78(%rdi),%r14                          #! EA = L0x7fffffffd958; Value = 0xba61c9f4c7c90741; PC = 0x5555555664c8 *)
adcs carry r14 r14 L0x7fffffffd958 carry;
(* adc    0x80(%rdi),%r15                          #! EA = L0x7fffffffd960; Value = 0xb91d26a4cb37d549; PC = 0x5555555664cc *)
adcs carry r15 r15 L0x7fffffffd960 carry;
(* mov    %rbp,0x40(%rdi)                          #! EA = L0x7fffffffd920; PC = 0x5555555664d3 *)
mov L0x7fffffffd920 rbp;
(* mov    %r8,0x48(%rdi)                           #! EA = L0x7fffffffd928; PC = 0x5555555664d7 *)
mov L0x7fffffffd928 r8;
(* mov    %r9,0x50(%rdi)                           #! EA = L0x7fffffffd930; PC = 0x5555555664db *)
mov L0x7fffffffd930 r9;
(* mov    %r10,0x58(%rdi)                          #! EA = L0x7fffffffd938; PC = 0x5555555664df *)
mov L0x7fffffffd938 r10;
(* mov    %r11,0x60(%rdi)                          #! EA = L0x7fffffffd940; PC = 0x5555555664e3 *)
mov L0x7fffffffd940 r11;
(* mov    %r12,0x68(%rdi)                          #! EA = L0x7fffffffd948; PC = 0x5555555664e7 *)
mov L0x7fffffffd948 r12;
(* mov    %r13,0x70(%rdi)                          #! EA = L0x7fffffffd950; PC = 0x5555555664eb *)
mov L0x7fffffffd950 r13;
(* mov    %r14,0x78(%rdi)                          #! EA = L0x7fffffffd958; PC = 0x5555555664ef *)
mov L0x7fffffffd958 r14;
(* mov    %r15,0x80(%rdi)                          #! EA = L0x7fffffffd960; PC = 0x5555555664f3 *)
mov L0x7fffffffd960 r15;
(* mov    0x88(%rdi),%r8                           #! EA = L0x7fffffffd968; Value = 0x0f575265e89280e1; PC = 0x5555555664fa *)
mov r8 L0x7fffffffd968;
(* mov    0x90(%rdi),%r9                           #! EA = L0x7fffffffd970; Value = 0xa15dd9e1a0cdd9eb; PC = 0x555555566501 *)
mov r9 L0x7fffffffd970;
(* mov    0x98(%rdi),%r10                          #! EA = L0x7fffffffd978; Value = 0x460b5a3724feafa5; PC = 0x555555566508 *)
mov r10 L0x7fffffffd978;
(* mov    0xa0(%rdi),%r11                          #! EA = L0x7fffffffd980; Value = 0x0fbecfa289bde619; PC = 0x55555556650f *)
mov r11 L0x7fffffffd980;
(* mov    0xa8(%rdi),%r12                          #! EA = L0x7fffffffd988; Value = 0x81cf4f447b100345; PC = 0x555555566516 *)
mov r12 L0x7fffffffd988;
(* mov    0xb0(%rdi),%r13                          #! EA = L0x7fffffffd990; Value = 0x0d45f8de5e44a0d2; PC = 0x55555556651d *)
mov r13 L0x7fffffffd990;
(* mov    0xb8(%rdi),%r14                          #! EA = L0x7fffffffd998; Value = 0x00000000174c7f22; PC = 0x555555566524 *)
mov r14 L0x7fffffffd998;
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
(* mov    %r8,0x88(%rdi)                           #! EA = L0x7fffffffd968; PC = 0x555555566547 *)
mov L0x7fffffffd968 r8;
(* mov    %r9,0x90(%rdi)                           #! EA = L0x7fffffffd970; PC = 0x55555556654e *)
mov L0x7fffffffd970 r9;
(* mov    %r10,0x98(%rdi)                          #! EA = L0x7fffffffd978; PC = 0x555555566555 *)
mov L0x7fffffffd978 r10;
(* mov    %r11,0xa0(%rdi)                          #! EA = L0x7fffffffd980; PC = 0x55555556655c *)
mov L0x7fffffffd980 r11;
(* mov    %r12,0xa8(%rdi)                          #! EA = L0x7fffffffd988; PC = 0x555555566563 *)
mov L0x7fffffffd988 r12;
(* mov    %r13,0xb0(%rdi)                          #! EA = L0x7fffffffd990; PC = 0x55555556656a *)
mov L0x7fffffffd990 r13;
(* mov    %r14,0xb8(%rdi)                          #! EA = L0x7fffffffd998; PC = 0x555555566571 *)
mov L0x7fffffffd998 r14;

// a[4-7] x p751p1_nz --> result: [reg_p2+48], [reg_p2+56], [reg_p2+64], and rbp, r8:r14
(* mov    0x20(%rdi),%rdx                          #! EA = L0x7fffffffd900; Value = 0x83ca515714317e3a; PC = 0x555555566578 *)
mov rdx L0x7fffffffd900;
(* mulx   0x4283(%rip),%r9,%r8        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x55555556657c *)
mull r8 r9 L0x55555556a808 rdx;
(* mulx   0x4282(%rip),%r10,%r13        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x555555566585 *)
mull r13 r10 L0x55555556a810 rdx;
(* mov    %r9,0x30(%rsi)                           #! EA = L0x7fffffffdcf0; PC = 0x55555556658e *)
mov L0x7fffffffdcf0 r9;
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
(* mov    0x28(%rdi),%rdx                          #! EA = L0x7fffffffd908; Value = 0xacca9d31ba165296; PC = 0x5555555665ec *)
mov rdx L0x7fffffffd908;
(* mulx   0x420f(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x5555555665f0 *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555665f9 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %rbp,%r8                                 #! PC = 0x5555555665fc *)
adcs carry r8 r8 rbp carry;
(* mov    %r8,0x38(%rsi)                           #! EA = L0x7fffffffdcf8; PC = 0x555555566602 *)
mov L0x7fffffffdcf8 r8;
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
(* mov    0x30(%rdi),%rdx                          #! EA = L0x7fffffffd910; Value = 0xbac7e73cd95566a0; PC = 0x555555566690 *)
mov rdx L0x7fffffffd910;
(* mulx   0x416b(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x555555566694 *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x55555556669d *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %rbp,%r13                                #! PC = 0x5555555666a0 *)
adcs carry r13 r13 rbp carry;
(* mov    %r13,0x40(%rsi)                          #! EA = L0x7fffffffdd00; PC = 0x5555555666a6 *)
mov L0x7fffffffdd00 r13;
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
(* mov    0x38(%rdi),%rdx                          #! EA = L0x7fffffffd918; Value = 0x162bd14930e5b853; PC = 0x555555566734 *)
mov rdx L0x7fffffffd918;
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

//
(* xor    %r15,%r15                                #! PC = 0x5555555667d4 *)
mov r15 0@uint64;
clear carry;
clear overflow;
(* mov    0x30(%rsi),%rax                          #! EA = L0x7fffffffdcf0; Value = 0xb3e0000000000000; PC = 0x5555555667d7 *)
mov rax L0x7fffffffdcf0;
(* mov    0x38(%rsi),%rdx                          #! EA = L0x7fffffffdcf8; Value = 0xf32922662679eb70; PC = 0x5555555667db *)
mov rdx L0x7fffffffdcf8;
(* mov    0x40(%rsi),%rbx                          #! EA = L0x7fffffffdd00; Value = 0xe9663cc5de41fd3a; PC = 0x5555555667df *)
mov rbx L0x7fffffffdd00;
(* add    0x48(%rdi),%rax                          #! EA = L0x7fffffffd928; Value = 0x8b08243b06feac2b; PC = 0x5555555667e3 *)
adds carry rax rax L0x7fffffffd928;
(* adc    0x50(%rdi),%rdx                          #! EA = L0x7fffffffd930; Value = 0xcc7ef44fa042cdf1; PC = 0x5555555667e7 *)
adcs carry rdx rdx L0x7fffffffd930 carry;
(* adc    0x58(%rdi),%rbx                          #! EA = L0x7fffffffd938; Value = 0x748939bb39b82d36; PC = 0x5555555667eb *)
adcs carry rbx rbx L0x7fffffffd938 carry;
(* mov    %rax,0x48(%rdi)                          #! EA = L0x7fffffffd928; PC = 0x5555555667ef *)
mov L0x7fffffffd928 rax;
(* mov    %rdx,0x50(%rdi)                          #! EA = L0x7fffffffd930; PC = 0x5555555667f3 *)
mov L0x7fffffffd930 rdx;
(* mov    %rbx,0x58(%rdi)                          #! EA = L0x7fffffffd938; PC = 0x5555555667f7 *)
mov L0x7fffffffd938 rbx;
(* adc    0x60(%rdi),%rbp                          #! EA = L0x7fffffffd940; Value = 0x9e7cd80bf519cccf; PC = 0x5555555667fb *)
adcs carry rbp rbp L0x7fffffffd940 carry;
(* adc    0x68(%rdi),%r8                           #! EA = L0x7fffffffd948; Value = 0x3e95979a33e99a6c; PC = 0x5555555667ff *)
adcs carry r8 r8 L0x7fffffffd948 carry;
(* adc    0x70(%rdi),%r9                           #! EA = L0x7fffffffd950; Value = 0x0d8a88dbc33c93e8; PC = 0x555555566803 *)
adcs carry r9 r9 L0x7fffffffd950 carry;
(* adc    0x78(%rdi),%r10                          #! EA = L0x7fffffffd958; Value = 0xba62371ddde61d30; PC = 0x555555566807 *)
adcs carry r10 r10 L0x7fffffffd958 carry;
(* adc    0x80(%rdi),%r11                          #! EA = L0x7fffffffd960; Value = 0xb91d26a4cb37d549; PC = 0x55555556680b *)
adcs carry r11 r11 L0x7fffffffd960 carry;
(* adc    0x88(%rdi),%r12                          #! EA = L0x7fffffffd968; Value = 0x0f575265e89280e1; PC = 0x555555566812 *)
adcs carry r12 r12 L0x7fffffffd968 carry;
(* adc    0x90(%rdi),%r13                          #! EA = L0x7fffffffd970; Value = 0xa15dd9e1a0cdd9eb; PC = 0x555555566819 *)
adcs carry r13 r13 L0x7fffffffd970 carry;
(* adc    0x98(%rdi),%r14                          #! EA = L0x7fffffffd978; Value = 0x460b5a3724feafa5; PC = 0x555555566820 *)
adcs carry r14 r14 L0x7fffffffd978 carry;
(* adc    0xa0(%rdi),%r15                          #! EA = L0x7fffffffd980; Value = 0x0fbecfa289bde619; PC = 0x555555566827 *)
adcs carry r15 r15 L0x7fffffffd980 carry;
(* mov    %rbp,(%rsi)                              #! EA = L0x7fffffffdcc0; PC = 0x55555556682e *)
mov L0x7fffffffdcc0 rbp;
(* mov    %r8,0x68(%rdi)                           #! EA = L0x7fffffffd948; PC = 0x555555566831 *)
mov L0x7fffffffd948 r8;
(* mov    %r9,0x70(%rdi)                           #! EA = L0x7fffffffd950; PC = 0x555555566835 *)
mov L0x7fffffffd950 r9;
(* mov    %r10,0x78(%rdi)                          #! EA = L0x7fffffffd958; PC = 0x555555566839 *)
mov L0x7fffffffd958 r10;
(* mov    %r11,0x80(%rdi)                          #! EA = L0x7fffffffd960; PC = 0x55555556683d *)
mov L0x7fffffffd960 r11;
(* mov    %r12,0x88(%rdi)                          #! EA = L0x7fffffffd968; PC = 0x555555566844 *)
mov L0x7fffffffd968 r12;
(* mov    %r13,0x90(%rdi)                          #! EA = L0x7fffffffd970; PC = 0x55555556684b *)
mov L0x7fffffffd970 r13;
(* mov    %r14,0x98(%rdi)                          #! EA = L0x7fffffffd978; PC = 0x555555566852 *)
mov L0x7fffffffd978 r14;
(* mov    %r15,0xa0(%rdi)                          #! EA = L0x7fffffffd980; PC = 0x555555566859 *)
mov L0x7fffffffd980 r15;
(* mov    0xa8(%rdi),%r12                          #! EA = L0x7fffffffd988; Value = 0x81cf4f447b100345; PC = 0x555555566860 *)
mov r12 L0x7fffffffd988;
(* mov    0xb0(%rdi),%r13                          #! EA = L0x7fffffffd990; Value = 0x0d45f8de5e44a0d2; PC = 0x555555566867 *)
mov r13 L0x7fffffffd990;
(* mov    0xb8(%rdi),%r14                          #! EA = L0x7fffffffd998; Value = 0x00000000174c7f22; PC = 0x55555556686e *)
mov r14 L0x7fffffffd998;
(* adc    $0x0,%r12                                #! PC = 0x555555566875 *)
adcs carry r12 r12 0x0@uint64 carry;
(* adc    $0x0,%r13                                #! PC = 0x555555566879 *)
adcs carry r13 r13 0x0@uint64 carry;
(* adc    $0x0,%r14                                #! PC = 0x55555556687d *)
adcs carry r14 r14 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r12,0xa8(%rdi)                          #! EA = L0x7fffffffd988; PC = 0x555555566881 *)
mov L0x7fffffffd988 r12;
(* mov    %r13,0xb0(%rdi)                          #! EA = L0x7fffffffd990; PC = 0x555555566888 *)
mov L0x7fffffffd990 r13;
(* mov    %r14,0xb8(%rdi)                          #! EA = L0x7fffffffd998; PC = 0x55555556688f *)
mov L0x7fffffffd998 r14;

// a[8-11] x p751p1_nz --> result: [reg_p2+48], [reg_p2+56], [reg_p2+64], and rbp, r8:r14
(* mov    0x40(%rdi),%rdx                          #! EA = L0x7fffffffd920; Value = 0xd13c690139259361; PC = 0x555555566896 *)
mov rdx L0x7fffffffd920;
(* mulx   0x3f65(%rip),%r9,%r8        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x55555556689a *)
mull r8 r9 L0x55555556a808 rdx;
(* mulx   0x3f64(%rip),%r10,%r13        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x5555555668a3 *)
mull r13 r10 L0x55555556a810 rdx;
(* mov    %r9,0x30(%rsi)                           #! EA = L0x7fffffffdcf0; PC = 0x5555555668ac *)
mov L0x7fffffffdcf0 r9;
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
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd928; Value = 0x3ee8243b06feac2b; PC = 0x55555556690a *)
mov rdx L0x7fffffffd928;
(* mulx   0x3ef1(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x55555556690e *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555566917 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %rbp,%r8                                 #! PC = 0x55555556691a *)
adcs carry r8 r8 rbp carry;
(* mov    %r8,0x38(%rsi)                           #! EA = L0x7fffffffdcf8; PC = 0x555555566920 *)
mov L0x7fffffffdcf8 r8;
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
(* mov    0x50(%rdi),%rdx                          #! EA = L0x7fffffffd930; Value = 0xbfa816b5c6bcb962; PC = 0x5555555669ae *)
mov rdx L0x7fffffffd930;
(* mulx   0x3e4d(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x5555555669b2 *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555669bb *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %rbp,%r13                                #! PC = 0x5555555669be *)
adcs carry r13 r13 rbp carry;
(* mov    %r13,0x40(%rsi)                          #! EA = L0x7fffffffdd00; PC = 0x5555555669c4 *)
mov L0x7fffffffdd00 r13;
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
(* mov    0x58(%rdi),%rdx                          #! EA = L0x7fffffffd938; Value = 0x5def768117fa2a71; PC = 0x555555566a52 *)
mov rdx L0x7fffffffd938;
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

// Final result c1:c11
(* mov    0x30(%rsi),%rax                          #! EA = L0x7fffffffdcf0; Value = 0x80b0000000000000; PC = 0x555555566af2 *)
mov rax L0x7fffffffdcf0;
(* mov    0x38(%rsi),%rdx                          #! EA = L0x7fffffffdcf8; Value = 0x634af990e0ae6881; PC = 0x555555566af6 *)
mov rdx L0x7fffffffdcf8;
(* mov    0x40(%rsi),%rbx                          #! EA = L0x7fffffffdd00; Value = 0x2c197d6ab518869b; PC = 0x555555566afa *)
mov rbx L0x7fffffffdd00;
(* add    0x68(%rdi),%rax                          #! EA = L0x7fffffffd948; Value = 0x1f77a5b94903395a; PC = 0x555555566afe *)
adds carry rax rax L0x7fffffffd948;
(* adc    0x70(%rdi),%rdx                          #! EA = L0x7fffffffd950; Value = 0x7e4f79fbac697af3; PC = 0x555555566b02 *)
adcs carry rdx rdx L0x7fffffffd950 carry;
(* adc    0x78(%rdi),%rbx                          #! EA = L0x7fffffffd958; Value = 0x7832ae96a6498e4a; PC = 0x555555566b06 *)
adcs carry rbx rbx L0x7fffffffd958 carry;
(* mov    %rax,0x8(%rsi)                           #! EA = L0x7fffffffdcc8; PC = 0x555555566b0a *)
mov L0x7fffffffdcc8 rax;
(* mov    %rdx,0x10(%rsi)                          #! EA = L0x7fffffffdcd0; PC = 0x555555566b0e *)
mov L0x7fffffffdcd0 rdx;
(* mov    %rbx,0x18(%rsi)                          #! EA = L0x7fffffffdcd8; PC = 0x555555566b12 *)
mov L0x7fffffffdcd8 rbx;
(* adc    0x80(%rdi),%rbp                          #! EA = L0x7fffffffd960; Value = 0xe01a3e846b0858fa; PC = 0x555555566b16 *)
adcs carry rbp rbp L0x7fffffffd960 carry;
(* adc    0x88(%rdi),%r8                           #! EA = L0x7fffffffd968; Value = 0x09d54e3bfe577a67; PC = 0x555555566b1d *)
adcs carry r8 r8 L0x7fffffffd968 carry;
(* adc    0x90(%rdi),%r9                           #! EA = L0x7fffffffd970; Value = 0xb7fd1ab2086cf7ad; PC = 0x555555566b24 *)
adcs carry r9 r9 L0x7fffffffd970 carry;
(* adc    0x98(%rdi),%r10                          #! EA = L0x7fffffffd978; Value = 0x460b63e80c67cdfa; PC = 0x555555566b2b *)
adcs carry r10 r10 L0x7fffffffd978 carry;
(* adc    0xa0(%rdi),%r11                          #! EA = L0x7fffffffd980; Value = 0x0fbecfa289bde619; PC = 0x555555566b32 *)
adcs carry r11 r11 L0x7fffffffd980 carry;
(* adc    0xa8(%rdi),%r12                          #! EA = L0x7fffffffd988; Value = 0x81cf4f447b100345; PC = 0x555555566b39 *)
adcs carry r12 r12 L0x7fffffffd988 carry;
(* adc    0xb0(%rdi),%r13                          #! EA = L0x7fffffffd990; Value = 0x0d45f8de5e44a0d2; PC = 0x555555566b40 *)
adcs carry r13 r13 L0x7fffffffd990 carry;
(* adc    0xb8(%rdi),%r14                          #! EA = L0x7fffffffd998; Value = 0x00000000174c7f22; PC = 0x555555566b47 *)
adcs carry r14 r14 L0x7fffffffd998 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rbp,0x20(%rsi)                          #! EA = L0x7fffffffdce0; PC = 0x555555566b4e *)
mov L0x7fffffffdce0 rbp;
(* mov    %r8,0x28(%rsi)                           #! EA = L0x7fffffffdce8; PC = 0x555555566b52 *)
mov L0x7fffffffdce8 r8;
(* mov    %r9,0x30(%rsi)                           #! EA = L0x7fffffffdcf0; PC = 0x555555566b56 *)
mov L0x7fffffffdcf0 r9;
(* mov    %r10,0x38(%rsi)                          #! EA = L0x7fffffffdcf8; PC = 0x555555566b5a *)
mov L0x7fffffffdcf8 r10;
(* mov    %r11,0x40(%rsi)                          #! EA = L0x7fffffffdd00; PC = 0x555555566b5e *)
mov L0x7fffffffdd00 r11;
(* mov    %r12,0x48(%rsi)                          #! EA = L0x7fffffffdd08; PC = 0x555555566b62 *)
mov L0x7fffffffdd08 r12;
(* mov    %r13,0x50(%rsi)                          #! EA = L0x7fffffffdd10; PC = 0x555555566b66 *)
mov L0x7fffffffdd10 r13;
(* mov    %r14,0x58(%rsi)                          #! EA = L0x7fffffffdd18; PC = 0x555555566b6a *)
mov L0x7fffffffdd18 r14;
(* #! <- SP = 0x7fffffffd8d8 *)
#! 0x7fffffffd8d8 = 0x7fffffffd8d8;
(* #retq                                           #! PC = 0x555555566b78 *)
#retq                                           #! 0x555555566b78 = 0x555555566b78;
(* mov    0xc8(%rsp),%rax                          #! EA = L0x7fffffffd9a8; Value = 0x4fb6fb4c9ba71700; PC = 0x555555558873 *)
mov rax L0x7fffffffd9a8;
(* xor    %fs:0x28,%rax                            #! PC = 0x55555555887b *)
xor rax@uint64 fs0x28 rax;
(* #jne    0x555555558891 <fpsqr751_mont+129>      #! PC = 0x555555558884 *)
#jne    0x555555558891 <fpsqr751_mont+129>      #! 0x555555558884 = 0x555555558884;
(* add    $0xd8,%rsp                               #! PC = 0x555555558886 *)
adds carry rsp rsp 0xd8@uint64;
(* #! <- SP = 0x7fffffffd9c8 *)
#! 0x7fffffffd9c8 = 0x7fffffffd9c8;
(* #retq                                           #! PC = 0x555555558890 *)
#retq                                           #! 0x555555558890 = 0x555555558890;

(* ===== Outputs ===== *)

mov c_0 L0x7fffffffdcc0;
mov c_1 L0x7fffffffdcc8;
mov c_2 L0x7fffffffdcd0;
mov c_3 L0x7fffffffdcd8;
mov c_4 L0x7fffffffdce0;
mov c_5 L0x7fffffffdce8;
mov c_6 L0x7fffffffdcf0;
mov c_7 L0x7fffffffdcf8;
mov c_8 L0x7fffffffdd00;
mov c_9 L0x7fffffffdd08;
mov c_a L0x7fffffffdd10;
mov c_b L0x7fffffffdd18;

{
  and [
    eqmod
      (limbs 64 [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, c_0, c_1, c_2, c_3, c_4, c_5, c_6, c_7, c_8, c_9, c_a, c_b ])
      (
        (limbs 64 [ a_0, a_1, a_2, a_3, a_4, a_5, a_6, a_7, a_8, a_9, a_a, a_b ])
        *
        (limbs 64 [ a_0, a_1, a_2, a_3, a_4, a_5, a_6, a_7, a_8, a_9, a_a, a_b ])
      )
      (limbs 64 [ $p751_0, $p751_1, $p751_2, $p751_3, $p751_4, $p751_5, $p751_6, $p751_7, $p751_8, $p751_9, $p751_a, $p751_b ])
  ]
  &&
  and [
    limbs 64 [ c_0, c_1, c_2, c_3, c_4, c_5, c_6, c_7, c_8, c_9, c_a, c_b ] <=u
      (2@768 * limbs 64 [ $p751_0@64, $p751_1@64, $p751_2@64, $p751_3@64, $p751_4@64, $p751_5@64, $p751_6@64, $p751_7@64, $p751_8@64, $p751_9@64, $p751_a@64, $p751_b@64 ] - 1@768)
  ]
}
