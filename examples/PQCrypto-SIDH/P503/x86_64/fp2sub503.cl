(* on frege: -v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint fp2sub503.cl
Parsing Cryptoline file:		[OK]		0.004003 seconds
Checking well-formedness:		[OK]		0.000938 seconds
Transforming to SSA form:		[OK]		0.000283 seconds
Normalizing specification:		[OK]		0.000321 seconds
Rewriting assignments:			[OK]		0.000406 seconds
Verifying program safety:
	 Cut 0
	     Round 1 (4 safety conditions, timeout = 14400 seconds)
		 Safety condition #1	[OK]
		 Safety condition #3	[OK]
		 Safety condition #2	[OK]
		 Safety condition #0	[OK]
	 Overall			[OK]		0.177698 seconds
Verifying range specification:		[OK]		38.144168 seconds
Rewriting value-preserved casting:	[OK]		0.000075 seconds
Verifying algebraic specification:	[OK]		0.000333 seconds
Verification result:			[OK]		38.329853 seconds
*)


(*
const uint64_t p503[NWORDS64_FIELD]              = { 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xABFFFFFFFFFFFFFF,
                                                     0x13085BDA2211E7A0, 0x1B9BF6C87B7E7DAF, 0x6045C6BDDA77A4D0, 0x004066F541811E1E };
const uint64_t p503x2[NWORDS64_FIELD]            = { 0xFFFFFFFFFFFFFFFE, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0x57FFFFFFFFFFFFFF,
                                                     0x2610B7B44423CF41, 0x3737ED90F6FCFB5E, 0xC08B8D7BB4EF49A0, 0x0080CDEA83023C3C };
*)

const p503_0 = 0xFFFFFFFFFFFFFFFF
const p503_1 = 0xFFFFFFFFFFFFFFFF
const p503_2 = 0xFFFFFFFFFFFFFFFF
const p503_3 = 0xABFFFFFFFFFFFFFF
const p503_4 = 0x13085BDA2211E7A0
const p503_5 = 0x1B9BF6C87B7E7DAF
const p503_6 = 0x6045C6BDDA77A4D0
const p503_7 = 0x004066F541811E1E
const p503x2_0 = 0xFFFFFFFFFFFFFFFE
const p503x2_1 = 0xFFFFFFFFFFFFFFFF
const p503x2_2 = 0xFFFFFFFFFFFFFFFF
const p503x2_3 = 0x57FFFFFFFFFFFFFF
const p503x2_4 = 0x2610B7B44423CF41
const p503x2_5 = 0x3737ED90F6FCFB5E
const p503x2_6 = 0xC08B8D7BB4EF49A0
const p503x2_7 = 0x0080CDEA83023C3C

proc main (a00@uint64, a01@uint64, a02@uint64, a03@uint64, a04@uint64, a05@uint64, a06@uint64, a07@uint64,
           a10@uint64, a11@uint64, a12@uint64, a13@uint64, a14@uint64, a15@uint64, a16@uint64, a17@uint64,
           b00@uint64, b01@uint64, b02@uint64, b03@uint64, b04@uint64, b05@uint64, b06@uint64, b07@uint64,
           b10@uint64, b11@uint64, b12@uint64, b13@uint64, b14@uint64, b15@uint64, b16@uint64, b17@uint64) =
{
  true
  &&
  and [
    limbs 64 [ a00, a01, a02, a03, a04, a05, a06, a07 ] <=u
      (2@512 * limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                          $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ] - 1@512),
    limbs 64 [ a10, a11, a12, a13, a14, a15, a16, a17 ] <=u
      (2@512 * limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                          $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ] - 1@512),
    limbs 64 [ b00, b01, b02, b03, b04, b05, b06, b07 ] <=u
      (2@512 * limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                          $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ] - 1@512),
    limbs 64 [ b10, b11, b12, b13, b14, b15, b16, b17 ] <=u
      (2@512 * limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                          $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ] - 1@512)
  ]
}

(* ===== Initialization ===== *)

mov L0x7fffffffd9a0 a00;
mov L0x7fffffffd9a8 a01;
mov L0x7fffffffd9b0 a02;
mov L0x7fffffffd9b8 a03;
mov L0x7fffffffd9c0 a04;
mov L0x7fffffffd9c8 a05;
mov L0x7fffffffd9d0 a06;
mov L0x7fffffffd9d8 a07;
mov L0x7fffffffd9e0 a10;
mov L0x7fffffffd9e8 a11;
mov L0x7fffffffd9f0 a12;
mov L0x7fffffffd9f8 a13;
mov L0x7fffffffda00 a14;
mov L0x7fffffffda08 a15;
mov L0x7fffffffda10 a16;
mov L0x7fffffffda18 a17;
mov L0x7fffffffda20 b00;
mov L0x7fffffffda28 b01;
mov L0x7fffffffda30 b02;
mov L0x7fffffffda38 b03;
mov L0x7fffffffda40 b04;
mov L0x7fffffffda48 b05;
mov L0x7fffffffda50 b06;
mov L0x7fffffffda58 b07;
mov L0x7fffffffda60 b10;
mov L0x7fffffffda68 b11;
mov L0x7fffffffda70 b12;
mov L0x7fffffffda78 b13;
mov L0x7fffffffda80 b14;
mov L0x7fffffffda88 b15;
mov L0x7fffffffda90 b16;
mov L0x7fffffffda98 b17;

mov L0x555555569400 $p503x2_0@uint64;
mov L0x555555569408 $p503x2_1@uint64;
mov L0x555555569418 $p503x2_3@uint64;
mov L0x555555569420 $p503x2_4@uint64;
mov L0x555555569428 $p503x2_5@uint64;
mov L0x555555569430 $p503x2_6@uint64;
mov L0x555555569438 $p503x2_7@uint64;

nondet rax@uint64;
nondet rsi@uint64;
nondet rdi@uint64;

(* ===== Program ===== *)

(* #! -> SP = 0x7fffffffd948 *)
#! 0x7fffffffd948 = 0x7fffffffd948;
(* mov    %rdx,%r12                                #! PC = 0x555555558486 *)
mov r12 rax;
(* mov    %rsi,%rbp                                #! PC = 0x55555555848a *)
mov rbp rsi;
(* mov    %rdi,%rbx                                #! PC = 0x55555555848e *)
mov rbx rdi;
(* #callq  0x555555561fc0 <fpsub503>               #! PC = 0x555555558491 *)
#callq  0x555555561fc0 <fpsub503>               #! 0x555555558491 = 0x555555558491;
(* #! -> SP = 0x7fffffffd928 *)
#! 0x7fffffffd928 = 0x7fffffffd928;
(* #jmpq   0x5555555626fb <fpsub503_asm>           #! PC = 0x555555561fc4 *)
#jmpq   0x5555555626fb <fpsub503_asm>           #! 0x555555561fc4 = 0x555555561fc4;
(* xor    %rax,%rax                                #! PC = 0x555555562703 *)
mov rax 0@uint64;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffd9a0; Value = 0xaf2a03cc474f67fc; PC = 0x555555562706 *)
mov r8 L0x7fffffffd9a0;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffd9a8; Value = 0x062cb9d7247cb599; PC = 0x555555562709 *)
mov r9 L0x7fffffffd9a8;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffd9b0; Value = 0x7a0638f4d96eecc2; PC = 0x55555556270d *)
mov r10 L0x7fffffffd9b0;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffd9b8; Value = 0x6ab3236ee36e7ebf; PC = 0x555555562711 *)
mov r11 L0x7fffffffd9b8;
(* mov    0x20(%rdi),%r12                          #! EA = L0x7fffffffd9c0; Value = 0x9e06dc0557b2028b; PC = 0x555555562715 *)
mov r12 L0x7fffffffd9c0;
(* mov    0x28(%rdi),%r13                          #! EA = L0x7fffffffd9c8; Value = 0xfd70ef3b69c38292; PC = 0x555555562719 *)
mov r13 L0x7fffffffd9c8;
(* mov    0x30(%rdi),%r14                          #! EA = L0x7fffffffd9d0; Value = 0xd54add16cfd7dedb; PC = 0x55555556271d *)
mov r14 L0x7fffffffd9d0;
(* mov    0x38(%rdi),%r15                          #! EA = L0x7fffffffd9d8; Value = 0x00346cdbc9b9b85b; PC = 0x555555562721 *)
mov r15 L0x7fffffffd9d8;
(* sub    (%rsi),%r8                               #! EA = L0x7fffffffda20; Value = 0xf50ea30b931bf75f; PC = 0x555555562725 *)
subb carry r8 r8 L0x7fffffffda20;
(* sbb    0x8(%rsi),%r9                            #! EA = L0x7fffffffda28; Value = 0x58dff3865ea40bea; PC = 0x555555562728 *)
sbbs carry r9 r9 L0x7fffffffda28 carry;
(* sbb    0x10(%rsi),%r10                          #! EA = L0x7fffffffda30; Value = 0x6918ef1d2c5c82b3; PC = 0x55555556272c *)
sbbs carry r10 r10 L0x7fffffffda30 carry;
(* sbb    0x18(%rsi),%r11                          #! EA = L0x7fffffffda38; Value = 0xf035c83e4ed251d9; PC = 0x555555562730 *)
sbbs carry r11 r11 L0x7fffffffda38 carry;
(* sbb    0x20(%rsi),%r12                          #! EA = L0x7fffffffda40; Value = 0xcbb6e31aa81e691e; PC = 0x555555562734 *)
sbbs carry r12 r12 L0x7fffffffda40 carry;
(* sbb    0x28(%rsi),%r13                          #! EA = L0x7fffffffda48; Value = 0xee8c248f54bde59a; PC = 0x555555562738 *)
sbbs carry r13 r13 L0x7fffffffda48 carry;
(* sbb    0x30(%rsi),%r14                          #! EA = L0x7fffffffda50; Value = 0xebdd87b5dfbedfcc; PC = 0x55555556273c *)
sbbs carry r14 r14 L0x7fffffffda50 carry;
(* sbb    0x38(%rsi),%r15                          #! EA = L0x7fffffffda58; Value = 0x003a69c99c1ad880; PC = 0x555555562740 *)
sbbs carry r15 r15 L0x7fffffffda58 carry;
(* sbb    $0x0,%rax                                #! PC = 0x555555562744 *)
sbbs carry rax rax 0x0@uint64 carry;
(* mov    0x6cb1(%rip),%rdi        # 0x555555569400 <p503x2>#! EA = L0x555555569400; Value = 0xfffffffffffffffe; PC = 0x555555562748 *)
mov rdi L0x555555569400;
(* and    %rax,%rdi                                #! PC = 0x55555556274f *)
and uint64 rdi rax rdi;
(* mov    0x6caf(%rip),%rsi        # 0x555555569408 <p503x2+8>#! EA = L0x555555569408; Value = 0xffffffffffffffff; PC = 0x555555562752 *)
mov rsi L0x555555569408;
(* and    %rax,%rsi                                #! PC = 0x555555562759 *)
and uint64 rsi rax rsi;
(* mov    0x6cb5(%rip),%rcx        # 0x555555569418 <p503x2+24>#! EA = L0x555555569418; Value = 0x57ffffffffffffff; PC = 0x55555556275c *)
mov rcx L0x555555569418;
(* and    %rax,%rcx                                #! PC = 0x555555562763 *)
and uint64 rcx rax rcx;
(* add    %rdi,%r8                                 #! PC = 0x555555562766 *)
adds carry r8 r8 rdi;
(* adc    %rsi,%r9                                 #! PC = 0x555555562769 *)
adcs carry r9 r9 rsi@uint64 carry;
(* adc    %rsi,%r10                                #! PC = 0x55555556276c *)
adcs carry r10 r10 rsi@uint64 carry;
(* adc    %rcx,%r11                                #! PC = 0x55555556276f *)
adcs carry r11 r11 rcx@uint64 carry;
(* mov    %r8,(%rdx)                               #! EA = L0x7fffffffdb20; PC = 0x555555562772 *)
mov L0x7fffffffdb20 r8;
(* mov    %r9,0x8(%rdx)                            #! EA = L0x7fffffffdb28; PC = 0x555555562775 *)
mov L0x7fffffffdb28 r9;
(* mov    %r10,0x10(%rdx)                          #! EA = L0x7fffffffdb30; PC = 0x555555562779 *)
mov L0x7fffffffdb30 r10;
(* mov    %r11,0x18(%rdx)                          #! EA = L0x7fffffffdb38; PC = 0x55555556277d *)
mov L0x7fffffffdb38 r11;
(* setb   %cl                                      #! PC = 0x555555562781 *)
mov carry_setb carry;
and uint64 rcx rcx 0xFFFFFFFFFFFFFFFE@uint64;
adc rcx rcx 0@uint64 carry;
(* mov    0x6c95(%rip),%r8        # 0x555555569420 <p503x2+32>#! EA = L0x555555569420; Value = 0x2610b7b44423cf41; PC = 0x555555562784 *)
mov r8 L0x555555569420;
(* and    %rax,%r8                                 #! PC = 0x55555556278b *)
and uint64 r8 rax r8;
(* mov    0x6c93(%rip),%r9        # 0x555555569428 <p503x2+40>#! EA = L0x555555569428; Value = 0x3737ed90f6fcfb5e; PC = 0x55555556278e *)
mov r9 L0x555555569428;
(* and    %rax,%r9                                 #! PC = 0x555555562795 *)
and uint64 r9 rax r9;
(* mov    0x6c91(%rip),%r10        # 0x555555569430 <p503x2+48>#! EA = L0x555555569430; Value = 0xc08b8d7bb4ef49a0; PC = 0x555555562798 *)
mov r10 L0x555555569430;
(* and    %rax,%r10                                #! PC = 0x55555556279f *)
and uint64 r10 rax r10;
(* mov    0x6c8f(%rip),%r11        # 0x555555569438 <p503x2+56>#! EA = L0x555555569438; Value = 0x0080cdea83023c3c; PC = 0x5555555627a2 *)
mov r11 L0x555555569438;
(* and    %rax,%r11                                #! PC = 0x5555555627a9 *)
and uint64 r11 rax r11;
(* bt     $0x0,%rcx                                #! PC = 0x5555555627ac *)
split dontcare carry rcx 1;
vpc carry@uint1 carry;
(* adc    %r8,%r12                                 #! PC = 0x5555555627b1 *)
adcs carry r12 r12 r8@uint64 carry;
(* adc    %r9,%r13                                 #! PC = 0x5555555627b4 *)
adcs carry r13 r13 r9@uint64 carry;
(* adc    %r10,%r14                                #! PC = 0x5555555627b7 *)
adcs carry r14 r14 r10@uint64 carry;
(* adc    %r11,%r15                                #! PC = 0x5555555627ba *)
adcs carry r15 r15 r11@uint64 carry;
(* mov    %r12,0x20(%rdx)                          #! EA = L0x7fffffffdb40; PC = 0x5555555627bd *)
mov L0x7fffffffdb40 r12;
(* mov    %r13,0x28(%rdx)                          #! EA = L0x7fffffffdb48; PC = 0x5555555627c1 *)
mov L0x7fffffffdb48 r13;
(* mov    %r14,0x30(%rdx)                          #! EA = L0x7fffffffdb50; PC = 0x5555555627c5 *)
mov L0x7fffffffdb50 r14;
(* mov    %r15,0x38(%rdx)                          #! EA = L0x7fffffffdb58; PC = 0x5555555627c9 *)
mov L0x7fffffffdb58 r15;
(* #! <- SP = 0x7fffffffd928 *)
#! 0x7fffffffd928 = 0x7fffffffd928;
(* #retq                                           #! PC = 0x5555555627d5 *)
#retq                                           #! 0x5555555627d5 = 0x5555555627d5;
(* #jmpq   0x555555561fc0 <fpsub503>               #! PC = 0x5555555584a7 *)
#jmpq   0x555555561fc0 <fpsub503>               #! 0x5555555584a7 = 0x5555555584a7;
(* #jmpq   0x5555555626fb <fpsub503_asm>           #! PC = 0x555555561fc4 *)
#jmpq   0x5555555626fb <fpsub503_asm>           #! 0x555555561fc4 = 0x555555561fc4;
(* xor    %rax,%rax                                #! PC = 0x555555562703 *)
mov rax 0@uint64;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffd9e0; Value = 0x5413c3c274bde670; PC = 0x555555562706 *)
mov r8 L0x7fffffffd9e0;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffd9e8; Value = 0xa07f2ec581bed646; PC = 0x555555562709 *)
mov r9 L0x7fffffffd9e8;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffd9f0; Value = 0x8ef8ba332270560c; PC = 0x55555556270d *)
mov r10 L0x7fffffffd9f0;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffd9f8; Value = 0xe0b48b1d4d57b172; PC = 0x555555562711 *)
mov r11 L0x7fffffffd9f8;
(* mov    0x20(%rdi),%r12                          #! EA = L0x7fffffffda00; Value = 0x687fb85b11ef89d0; PC = 0x555555562715 *)
mov r12 L0x7fffffffda00;
(* mov    0x28(%rdi),%r13                          #! EA = L0x7fffffffda08; Value = 0x64b384ac347dc93b; PC = 0x555555562719 *)
mov r13 L0x7fffffffda08;
(* mov    0x30(%rdi),%r14                          #! EA = L0x7fffffffda10; Value = 0x8b4cd4bb2a2c1b01; PC = 0x55555556271d *)
mov r14 L0x7fffffffda10;
(* mov    0x38(%rdi),%r15                          #! EA = L0x7fffffffda18; Value = 0x0036868027b8cc2e; PC = 0x555555562721 *)
mov r15 L0x7fffffffda18;
(* sub    (%rsi),%r8                               #! EA = L0x7fffffffda60; Value = 0x32f308e81548aa22; PC = 0x555555562725 *)
subb carry r8 r8 L0x7fffffffda60;
(* sbb    0x8(%rsi),%r9                            #! EA = L0x7fffffffda68; Value = 0xe8cc2a4bc2022f6b; PC = 0x555555562728 *)
sbbs carry r9 r9 L0x7fffffffda68 carry;
(* sbb    0x10(%rsi),%r10                          #! EA = L0x7fffffffda70; Value = 0xf16ec65122a303ae; PC = 0x55555556272c *)
sbbs carry r10 r10 L0x7fffffffda70 carry;
(* sbb    0x18(%rsi),%r11                          #! EA = L0x7fffffffda78; Value = 0x4ff948da7bce09bc; PC = 0x555555562730 *)
sbbs carry r11 r11 L0x7fffffffda78 carry;
(* sbb    0x20(%rsi),%r12                          #! EA = L0x7fffffffda80; Value = 0xa204a76fb8fe5a52; PC = 0x555555562734 *)
sbbs carry r12 r12 L0x7fffffffda80 carry;
(* sbb    0x28(%rsi),%r13                          #! EA = L0x7fffffffda88; Value = 0xcbca4d7101f89183; PC = 0x555555562738 *)
sbbs carry r13 r13 L0x7fffffffda88 carry;
(* sbb    0x30(%rsi),%r14                          #! EA = L0x7fffffffda90; Value = 0x2c43b211bd916477; PC = 0x55555556273c *)
sbbs carry r14 r14 L0x7fffffffda90 carry;
(* sbb    0x38(%rsi),%r15                          #! EA = L0x7fffffffda98; Value = 0x001599ab19863a63; PC = 0x555555562740 *)
sbbs carry r15 r15 L0x7fffffffda98 carry;
(* sbb    $0x0,%rax                                #! PC = 0x555555562744 *)
sbbs carry rax rax 0x0@uint64 carry;
(* mov    0x6cb1(%rip),%rdi        # 0x555555569400 <p503x2>#! EA = L0x555555569400; Value = 0xfffffffffffffffe; PC = 0x555555562748 *)
mov rdi L0x555555569400;
(* and    %rax,%rdi                                #! PC = 0x55555556274f *)
and uint64 rdi rax rdi;
(* mov    0x6caf(%rip),%rsi        # 0x555555569408 <p503x2+8>#! EA = L0x555555569408; Value = 0xffffffffffffffff; PC = 0x555555562752 *)
mov rsi L0x555555569408;
(* and    %rax,%rsi                                #! PC = 0x555555562759 *)
and uint64 rsi rax rsi;
(* mov    0x6cb5(%rip),%rcx        # 0x555555569418 <p503x2+24>#! EA = L0x555555569418; Value = 0x57ffffffffffffff; PC = 0x55555556275c *)
mov rcx L0x555555569418;
(* and    %rax,%rcx                                #! PC = 0x555555562763 *)
and uint64 rcx rax rcx;
(* add    %rdi,%r8                                 #! PC = 0x555555562766 *)
adds carry r8 r8 rdi;
(* adc    %rsi,%r9                                 #! PC = 0x555555562769 *)
adcs carry r9 r9 rsi@uint64 carry;
(* adc    %rsi,%r10                                #! PC = 0x55555556276c *)
adcs carry r10 r10 rsi@uint64 carry;
(* adc    %rcx,%r11                                #! PC = 0x55555556276f *)
adcs carry r11 r11 rcx@uint64 carry;
(* mov    %r8,(%rdx)                               #! EA = L0x7fffffffdb60; PC = 0x555555562772 *)
mov L0x7fffffffdb60 r8;
(* mov    %r9,0x8(%rdx)                            #! EA = L0x7fffffffdb68; PC = 0x555555562775 *)
mov L0x7fffffffdb68 r9;
(* mov    %r10,0x10(%rdx)                          #! EA = L0x7fffffffdb70; PC = 0x555555562779 *)
mov L0x7fffffffdb70 r10;
(* mov    %r11,0x18(%rdx)                          #! EA = L0x7fffffffdb78; PC = 0x55555556277d *)
mov L0x7fffffffdb78 r11;
(* setb   %cl                                      #! PC = 0x555555562781 *)
mov carry_setb carry;
and uint64 rcx rcx 0xFFFFFFFFFFFFFFFE@uint64;
adc rcx rcx 0@uint64 carry;
(* mov    0x6c95(%rip),%r8        # 0x555555569420 <p503x2+32>#! EA = L0x555555569420; Value = 0x2610b7b44423cf41; PC = 0x555555562784 *)
mov r8 L0x555555569420;
(* and    %rax,%r8                                 #! PC = 0x55555556278b *)
and uint64 r8 rax r8;
(* mov    0x6c93(%rip),%r9        # 0x555555569428 <p503x2+40>#! EA = L0x555555569428; Value = 0x3737ed90f6fcfb5e; PC = 0x55555556278e *)
mov r9 L0x555555569428;
(* and    %rax,%r9                                 #! PC = 0x555555562795 *)
and uint64 r9 rax r9;
(* mov    0x6c91(%rip),%r10        # 0x555555569430 <p503x2+48>#! EA = L0x555555569430; Value = 0xc08b8d7bb4ef49a0; PC = 0x555555562798 *)
mov r10 L0x555555569430;
(* and    %rax,%r10                                #! PC = 0x55555556279f *)
and uint64 r10 rax r10;
(* mov    0x6c8f(%rip),%r11        # 0x555555569438 <p503x2+56>#! EA = L0x555555569438; Value = 0x0080cdea83023c3c; PC = 0x5555555627a2 *)
mov r11 L0x555555569438;
(* and    %rax,%r11                                #! PC = 0x5555555627a9 *)
and uint64 r11 rax r11;
(* bt     $0x0,%rcx                                #! PC = 0x5555555627ac *)
split dontcare carry rcx 1;
vpc carry@uint1 carry;
(* adc    %r8,%r12                                 #! PC = 0x5555555627b1 *)
adcs carry r12 r12 r8@uint64 carry;
(* adc    %r9,%r13                                 #! PC = 0x5555555627b4 *)
adcs carry r13 r13 r9@uint64 carry;
(* adc    %r10,%r14                                #! PC = 0x5555555627b7 *)
adcs carry r14 r14 r10@uint64 carry;
(* adc    %r11,%r15                                #! PC = 0x5555555627ba *)
adcs carry r15 r15 r11@uint64 carry;
(* mov    %r12,0x20(%rdx)                          #! EA = L0x7fffffffdb80; PC = 0x5555555627bd *)
mov L0x7fffffffdb80 r12;
(* mov    %r13,0x28(%rdx)                          #! EA = L0x7fffffffdb88; PC = 0x5555555627c1 *)
mov L0x7fffffffdb88 r13;
(* mov    %r14,0x30(%rdx)                          #! EA = L0x7fffffffdb90; PC = 0x5555555627c5 *)
mov L0x7fffffffdb90 r14;
(* mov    %r15,0x38(%rdx)                          #! EA = L0x7fffffffdb98; PC = 0x5555555627c9 *)
mov L0x7fffffffdb98 r15;
(* #! <- SP = 0x7fffffffd948 *)
#! 0x7fffffffd948 = 0x7fffffffd948;
(* #retq                                           #! PC = 0x5555555627d5 *)
#retq                                           #! 0x5555555627d5 = 0x5555555627d5;

(* ===== Outputs ===== *)

mov c00 L0x7fffffffdb20;
mov c01 L0x7fffffffdb28;
mov c02 L0x7fffffffdb30;
mov c03 L0x7fffffffdb38;
mov c04 L0x7fffffffdb40;
mov c05 L0x7fffffffdb48;
mov c06 L0x7fffffffdb50;
mov c07 L0x7fffffffdb58;
mov c10 L0x7fffffffdb60;
mov c11 L0x7fffffffdb68;
mov c12 L0x7fffffffdb70;
mov c13 L0x7fffffffdb78;
mov c14 L0x7fffffffdb80;
mov c15 L0x7fffffffdb88;
mov c16 L0x7fffffffdb90;
mov c17 L0x7fffffffdb98;

{
  true
  &&
  and [
    eqsmod
      (limbs 64 [ c00, c01, c02, c03, c04, c05, c06, c07 ])
      (
        limbs 64 [ a00, a01, a02, a03, a04, a05, a06, a07 ]
        -
        limbs 64 [ b00, b01, b02, b03, b04, b05, b06, b07 ]
      )
      (limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                  $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ]),
    eqsmod
      (limbs 64 [ c10, c11, c12, c13, c14, c15, c16, c17 ])
      (
        limbs 64 [ a10, a11, a12, a13, a14, a15, a16, a17 ]
        -
        limbs 64 [ b10, b11, b12, b13, b14, b15, b16, b17 ]
      )
      (limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                  $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ]),
    limbs 64 [c00, c01, c02, c03, c04, c05, c06, c07] <=u
      (2@512 * limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                          $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ] - 1@512),
    limbs 64 [c10, c11, c12, c13, c14, c15, c16, c17] <=u
      (2@512 * limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                          $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ] - 1@512)
  ]
}

