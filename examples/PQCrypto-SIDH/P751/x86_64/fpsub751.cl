(* on frege: -v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint fpsub751.cl
Parsing Cryptoline file:		[OK]		0.003260 seconds
Checking well-formedness:		[OK]		0.000689 seconds
Transforming to SSA form:		[OK]		0.000329 seconds
Normalizing specification:		[OK]		0.000353 seconds
Rewriting assignments:			[OK]		0.001437 seconds
Verifying program safety:
	 Cut 0
	     Round 1 (0 safety conditions, timeout = 14400 seconds)
	 Overall			[OK]		0.000211 seconds
Verifying range specification:		[OK]		65.388262 seconds
Rewriting value-preserved casting:	[OK]		0.000031 seconds
Verifying algebraic specification:	[OK]		0.000311 seconds
Verification result:			[OK]		65.395571 seconds
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
(* #jmpq   0x5555555652c1 <fpsub751_asm>           #! PC = 0x555555564874 *)
#jmpq   0x5555555652c1 <fpsub751_asm>           #! 0x555555564874 = 0x555555564874;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffda30; Value = 0x819725770586caa5; PC = 0x5555555652c9 *)
mov r8 L0x7fffffffda30;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffda38; Value = 0xea5de983be3d767a; PC = 0x5555555652cc *)
mov r9 L0x7fffffffda38;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffda40; Value = 0x1ca809c32c503791; PC = 0x5555555652d0 *)
mov r10 L0x7fffffffda40;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffda48; Value = 0xcf08522a42168d30; PC = 0x5555555652d4 *)
mov r11 L0x7fffffffda48;
(* mov    0x20(%rdi),%r12                          #! EA = L0x7fffffffda50; Value = 0x2e146bb393d48e1c; PC = 0x5555555652d8 *)
mov r12 L0x7fffffffda50;
(* mov    0x28(%rdi),%r13                          #! EA = L0x7fffffffda58; Value = 0xcb4e4a3a64ec51e1; PC = 0x5555555652dc *)
mov r13 L0x7fffffffda58;
(* mov    0x30(%rdi),%r14                          #! EA = L0x7fffffffda60; Value = 0xd861a0a744f89e81; PC = 0x5555555652e0 *)
mov r14 L0x7fffffffda60;
(* mov    0x38(%rdi),%r15                          #! EA = L0x7fffffffda68; Value = 0xe52622c9571a772d; PC = 0x5555555652e4 *)
mov r15 L0x7fffffffda68;
(* mov    0x40(%rdi),%rcx                          #! EA = L0x7fffffffda70; Value = 0x46928d656479fab0; PC = 0x5555555652e8 *)
mov rcx L0x7fffffffda70;
(* sub    (%rsi),%r8                               #! EA = L0x7fffffffda90; Value = 0xfacff91b89678d23; PC = 0x5555555652ec *)
subb carry r8 r8 L0x7fffffffda90;
(* sbb    0x8(%rsi),%r9                            #! EA = L0x7fffffffda98; Value = 0x0a8af87340137a78; PC = 0x5555555652ef *)
sbbs carry r9 r9 L0x7fffffffda98 carry;
(* sbb    0x10(%rsi),%r10                          #! EA = L0x7fffffffdaa0; Value = 0x6dfe6007534918d5; PC = 0x5555555652f3 *)
sbbs carry r10 r10 L0x7fffffffdaa0 carry;
(* sbb    0x18(%rsi),%r11                          #! EA = L0x7fffffffdaa8; Value = 0x4de8b029e49c0091; PC = 0x5555555652f7 *)
sbbs carry r11 r11 L0x7fffffffdaa8 carry;
(* sbb    0x20(%rsi),%r12                          #! EA = L0x7fffffffdab0; Value = 0xc153a54959d64f3e; PC = 0x5555555652fb *)
sbbs carry r12 r12 L0x7fffffffdab0 carry;
(* sbb    0x28(%rsi),%r13                          #! EA = L0x7fffffffdab8; Value = 0x349d8b5f9201661f; PC = 0x5555555652ff *)
sbbs carry r13 r13 L0x7fffffffdab8 carry;
(* sbb    0x30(%rsi),%r14                          #! EA = L0x7fffffffdac0; Value = 0xd8178547aa87e6a3; PC = 0x555555565303 *)
sbbs carry r14 r14 L0x7fffffffdac0 carry;
(* sbb    0x38(%rsi),%r15                          #! EA = L0x7fffffffdac8; Value = 0xa2fca564afbdb386; PC = 0x555555565307 *)
sbbs carry r15 r15 L0x7fffffffdac8 carry;
(* sbb    0x40(%rsi),%rcx                          #! EA = L0x7fffffffdad0; Value = 0x97fe4e783dfbd2f4; PC = 0x55555556530b *)
sbbs carry rcx rcx L0x7fffffffdad0 carry;
(* mov    %r8,(%rdx)                               #! EA = L0x7fffffffdb50; PC = 0x55555556530f *)
mov L0x7fffffffdb50 r8;
(* mov    %r9,0x8(%rdx)                            #! EA = L0x7fffffffdb58; PC = 0x555555565312 *)
mov L0x7fffffffdb58 r9;
(* mov    %r10,0x10(%rdx)                          #! EA = L0x7fffffffdb60; PC = 0x555555565316 *)
mov L0x7fffffffdb60 r10;
(* mov    %r11,0x18(%rdx)                          #! EA = L0x7fffffffdb68; PC = 0x55555556531a *)
mov L0x7fffffffdb68 r11;
(* mov    %r12,0x20(%rdx)                          #! EA = L0x7fffffffdb70; PC = 0x55555556531e *)
mov L0x7fffffffdb70 r12;
(* mov    %r13,0x28(%rdx)                          #! EA = L0x7fffffffdb78; PC = 0x555555565322 *)
mov L0x7fffffffdb78 r13;
(* mov    %r14,0x30(%rdx)                          #! EA = L0x7fffffffdb80; PC = 0x555555565326 *)
mov L0x7fffffffdb80 r14;
(* mov    %r15,0x38(%rdx)                          #! EA = L0x7fffffffdb88; PC = 0x55555556532a *)
mov L0x7fffffffdb88 r15;
(* mov    %rcx,0x40(%rdx)                          #! EA = L0x7fffffffdb90; PC = 0x55555556532e *)
mov L0x7fffffffdb90 rcx;
(* mov    0x48(%rdi),%rax                          #! EA = L0x7fffffffda78; Value = 0x49e5f9c819aa7edf; PC = 0x555555565332 *)
mov rax L0x7fffffffda78;
(* sbb    0x48(%rsi),%rax                          #! EA = L0x7fffffffdad8; Value = 0x2f48c78b132a00b4; PC = 0x555555565336 *)
sbbs carry rax rax L0x7fffffffdad8 carry;
(* mov    %rax,0x48(%rdx)                          #! EA = L0x7fffffffdb98; PC = 0x55555556533a *)
mov L0x7fffffffdb98 rax;
(* mov    0x50(%rdi),%rax                          #! EA = L0x7fffffffda80; Value = 0xab17ef7d3f8edd97; PC = 0x55555556533e *)
mov rax L0x7fffffffda80;
(* sbb    0x50(%rsi),%rax                          #! EA = L0x7fffffffdae0; Value = 0xdbcdf155f4d9cfad; PC = 0x555555565342 *)
sbbs carry rax rax L0x7fffffffdae0 carry;
(* mov    %rax,0x50(%rdx)                          #! EA = L0x7fffffffdba0; PC = 0x555555565346 *)
mov L0x7fffffffdba0 rax;
(* mov    0x58(%rdi),%rax                          #! EA = L0x7fffffffda88; Value = 0x000029532f023166; PC = 0x55555556534a *)
mov rax L0x7fffffffda88;
(* sbb    0x58(%rsi),%rax                          #! EA = L0x7fffffffdae8; Value = 0x0000072f088a8aa4; PC = 0x55555556534e *)
sbbs carry rax rax L0x7fffffffdae8 carry;
(* mov    %rax,0x58(%rdx)                          #! EA = L0x7fffffffdba8; PC = 0x555555565352 *)
mov L0x7fffffffdba8 rax;
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
(* mov    (%rdx),%rax                              #! EA = L0x7fffffffdb50; Value = 0x86c72c5b7c1f3d82; PC = 0x5555555653bb *)
mov rax L0x7fffffffdb50;
(* add    %rsi,%rax                                #! PC = 0x5555555653be *)
adds carry rax rax rsi;
(* mov    %rax,(%rdx)                              #! EA = L0x7fffffffdb50; PC = 0x5555555653c1 *)
mov L0x7fffffffdb50 rax;
(* mov    0x8(%rdx),%rax                           #! EA = L0x7fffffffdb58; Value = 0xdfd2f1107e29fc01; PC = 0x5555555653c4 *)
mov rax L0x7fffffffdb58;
(* adc    %r8,%rax                                 #! PC = 0x5555555653c8 *)
adcs carry rax rax r8@uint64 carry;
(* mov    %rax,0x8(%rdx)                           #! EA = L0x7fffffffdb58; PC = 0x5555555653cb *)
mov L0x7fffffffdb58 rax;
(* mov    0x10(%rdx),%rax                          #! EA = L0x7fffffffdb60; Value = 0xaea9a9bbd9071ebc; PC = 0x5555555653cf *)
mov rax L0x7fffffffdb60;
(* adc    %r8,%rax                                 #! PC = 0x5555555653d3 *)
adcs carry rax rax r8@uint64 carry;
(* mov    %rax,0x10(%rdx)                          #! EA = L0x7fffffffdb60; PC = 0x5555555653d6 *)
mov L0x7fffffffdb60 rax;
(* mov    0x18(%rdx),%rax                          #! EA = L0x7fffffffdb68; Value = 0x811fa2005d7a8c9e; PC = 0x5555555653da *)
mov rax L0x7fffffffdb68;
(* adc    %r8,%rax                                 #! PC = 0x5555555653de *)
adcs carry rax rax r8@uint64 carry;
(* mov    %rax,0x18(%rdx)                          #! EA = L0x7fffffffdb68; PC = 0x5555555653e1 *)
mov L0x7fffffffdb68 rax;
(* mov    0x20(%rdx),%rax                          #! EA = L0x7fffffffdb70; Value = 0x6cc0c66a39fe3ede; PC = 0x5555555653e5 *)
mov rax L0x7fffffffdb70;
(* adc    %r8,%rax                                 #! PC = 0x5555555653e9 *)
adcs carry rax rax r8@uint64 carry;
(* mov    %rax,0x20(%rdx)                          #! EA = L0x7fffffffdb70; PC = 0x5555555653ec *)
mov L0x7fffffffdb70 rax;
(* adc    0x28(%rdx),%r9                           #! EA = L0x7fffffffdb78; Value = 0x96b0bedad2eaebc1; PC = 0x5555555653f0 *)
adcs carry r9 r9 L0x7fffffffdb78 carry;
(* adc    0x30(%rdx),%r10                          #! EA = L0x7fffffffdb80; Value = 0x004a1b5f9a70b7de; PC = 0x5555555653f4 *)
adcs carry r10 r10 L0x7fffffffdb80 carry;
(* adc    0x38(%rdx),%r11                          #! EA = L0x7fffffffdb88; Value = 0x42297d64a75cc3a7; PC = 0x5555555653f8 *)
adcs carry r11 r11 L0x7fffffffdb88 carry;
(* adc    0x40(%rdx),%r12                          #! EA = L0x7fffffffdb90; Value = 0xae943eed267e27bc; PC = 0x5555555653fc *)
adcs carry r12 r12 L0x7fffffffdb90 carry;
(* adc    0x48(%rdx),%r13                          #! EA = L0x7fffffffdb98; Value = 0x1a9d323d06807e2a; PC = 0x555555565400 *)
adcs carry r13 r13 L0x7fffffffdb98 carry;
(* adc    0x50(%rdx),%r14                          #! EA = L0x7fffffffdba0; Value = 0xcf49fe274ab50dea; PC = 0x555555565404 *)
adcs carry r14 r14 L0x7fffffffdba0 carry;
(* adc    0x58(%rdx),%r15                          #! EA = L0x7fffffffdba8; Value = 0x000022242677a6c1; PC = 0x555555565408 *)
adcs carry r15 r15 L0x7fffffffdba8 carry;
(* mov    %r9,0x28(%rdx)                           #! EA = L0x7fffffffdb78; PC = 0x55555556540c *)
mov L0x7fffffffdb78 r9;
(* mov    %r10,0x30(%rdx)                          #! EA = L0x7fffffffdb80; PC = 0x555555565410 *)
mov L0x7fffffffdb80 r10;
(* mov    %r11,0x38(%rdx)                          #! EA = L0x7fffffffdb88; PC = 0x555555565414 *)
mov L0x7fffffffdb88 r11;
(* mov    %r12,0x40(%rdx)                          #! EA = L0x7fffffffdb90; PC = 0x555555565418 *)
mov L0x7fffffffdb90 r12;
(* mov    %r13,0x48(%rdx)                          #! EA = L0x7fffffffdb98; PC = 0x55555556541c *)
mov L0x7fffffffdb98 r13;
(* mov    %r14,0x50(%rdx)                          #! EA = L0x7fffffffdba0; PC = 0x555555565420 *)
mov L0x7fffffffdba0 r14;
(* mov    %r15,0x58(%rdx)                          #! EA = L0x7fffffffdba8; PC = 0x555555565424 *)
mov L0x7fffffffdba8 r15;
(* #! <- SP = 0x7fffffffd9d8 *)
#! 0x7fffffffd9d8 = 0x7fffffffd9d8;
(* #retq                                           #! PC = 0x555555565430 *)
#retq                                           #! 0x555555565430 = 0x555555565430;

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
      (
        (limbs 64 [ a_0, a_1, a_2, a_3, a_4, a_5, a_6, a_7, a_8, a_9, a_a, a_b ])
        -
        (limbs 64 [ b_0, b_1, b_2, b_3, b_4, b_5, b_6, b_7, b_8, b_9, b_a, b_b ])
      )
      (limbs 64 [ $p751_0@64, $p751_1@64, $p751_2@64, $p751_3@64, $p751_4@64, $p751_5@64, $p751_6@64, $p751_7@64, $p751_8@64, $p751_9@64, $p751_a@64, $p751_b@64 ]),
    limbs 64 [ c_0, c_1, c_2, c_3, c_4, c_5, c_6, c_7, c_8, c_9, c_a, c_b ] <=u
      (2@768 * limbs 64 [ $p751_0@64, $p751_1@64, $p751_2@64, $p751_3@64, $p751_4@64, $p751_5@64, $p751_6@64, $p751_7@64, $p751_8@64, $p751_9@64, $p751_a@64, $p751_b@64 ] - 1@768)
  ]
}
