(* on frege: -v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint fp2add503.cl
Parsing Cryptoline file:		[OK]		0.004651 seconds
Checking well-formedness:		[OK]		0.001819 seconds
Transforming to SSA form:		[OK]		0.000327 seconds
Normalizing specification:		[OK]		0.000390 seconds
Rewriting assignments:			[OK]		0.000483 seconds
Verifying program safety:
	 Cut 0
	     Round 1 (4 safety conditions, timeout = 14400 seconds)
		 Safety condition #1	[OK]
		 Safety condition #3	[OK]
		 Safety condition #2	[OK]
		 Safety condition #0	[OK]
	 Overall			[OK]		0.179414 seconds
Verifying range specification:		[OK]		9.763476 seconds
Rewriting value-preserved casting:	[OK]		0.000076 seconds
Verifying algebraic specification:	[OK]		0.000363 seconds
Verification result:			[OK]		9.951585 seconds
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
(* mov    %rdx,%r12                                #! PC = 0x555555558456 *)
mov r12 rax;
(* mov    %rsi,%rbp                                #! PC = 0x55555555845a *)
mov rbp rsi;
(* mov    %rdi,%rbx                                #! PC = 0x55555555845e *)
mov rbx rdi;
(* #callq  0x555555561fb0 <fpadd503>               #! PC = 0x555555558461 *)
#callq  0x555555561fb0 <fpadd503>               #! 0x555555558461 = 0x555555558461;
(* #! -> SP = 0x7fffffffd928 *)
#! 0x7fffffffd928 = 0x7fffffffd928;
(* #jmpq   0x5555555625d7 <fpadd503_asm>           #! PC = 0x555555561fb4 *)
#jmpq   0x5555555625d7 <fpadd503_asm>           #! 0x555555561fb4 = 0x555555561fb4;
(* xor    %rax,%rax                                #! PC = 0x5555555625df *)
mov rax 0@uint64;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffd9a0; Value = 0xa243b46363e809c1; PC = 0x5555555625e2 *)
mov r8 L0x7fffffffd9a0;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffd9a8; Value = 0x5ff371f8651146ff; PC = 0x5555555625e5 *)
mov r9 L0x7fffffffd9a8;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffd9b0; Value = 0x4a346dc20166649d; PC = 0x5555555625e9 *)
mov r10 L0x7fffffffd9b0;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffd9b8; Value = 0x9fd166de5f7ee830; PC = 0x5555555625ed *)
mov r11 L0x7fffffffd9b8;
(* mov    0x20(%rdi),%r12                          #! EA = L0x7fffffffd9c0; Value = 0x6d75466ed202b96f; PC = 0x5555555625f1 *)
mov r12 L0x7fffffffd9c0;
(* mov    0x28(%rdi),%r13                          #! EA = L0x7fffffffd9c8; Value = 0x94e4c6f784d2868c; PC = 0x5555555625f5 *)
mov r13 L0x7fffffffd9c8;
(* mov    0x30(%rdi),%r14                          #! EA = L0x7fffffffd9d0; Value = 0xe836cab7ec964a2a; PC = 0x5555555625f9 *)
mov r14 L0x7fffffffd9d0;
(* mov    0x38(%rdi),%r15                          #! EA = L0x7fffffffd9d8; Value = 0x0030181b9147b5b3; PC = 0x5555555625fd *)
mov r15 L0x7fffffffd9d8;
(* add    (%rsi),%r8                               #! EA = L0x7fffffffda20; Value = 0xf80e670298fb8c7b; PC = 0x555555562601 *)
adds carry r8 r8 L0x7fffffffda20;
(* adc    0x8(%rsi),%r9                            #! EA = L0x7fffffffda28; Value = 0xa8dbdf81c034d55c; PC = 0x555555562604 *)
adcs carry r9 r9 L0x7fffffffda28 carry;
(* adc    0x10(%rsi),%r10                          #! EA = L0x7fffffffda30; Value = 0xca5d7a497e1566e5; PC = 0x555555562608 *)
adcs carry r10 r10 L0x7fffffffda30 carry;
(* adc    0x18(%rsi),%r11                          #! EA = L0x7fffffffda38; Value = 0x9da6c6cf11039f68; PC = 0x55555556260c *)
adcs carry r11 r11 L0x7fffffffda38 carry;
(* adc    0x20(%rsi),%r12                          #! EA = L0x7fffffffda40; Value = 0x5245942f32cfbab1; PC = 0x555555562610 *)
adcs carry r12 r12 L0x7fffffffda40 carry;
(* adc    0x28(%rsi),%r13                          #! EA = L0x7fffffffda48; Value = 0x2a530a97cba70416; PC = 0x555555562614 *)
adcs carry r13 r13 L0x7fffffffda48 carry;
(* adc    0x30(%rsi),%r14                          #! EA = L0x7fffffffda50; Value = 0x87355ac0d64b5f97; PC = 0x555555562618 *)
adcs carry r14 r14 L0x7fffffffda50 carry;
(* adc    0x38(%rsi),%r15                          #! EA = L0x7fffffffda58; Value = 0x0019374f4e7760a2; PC = 0x55555556261c *)
adcs carry r15 r15 L0x7fffffffda58 carry;
(* mov    0x6dd9(%rip),%rcx        # 0x555555569400 <p503x2>#! EA = L0x555555569400; Value = 0xfffffffffffffffe; PC = 0x555555562620 *)
mov rcx L0x555555569400;
(* sub    %rcx,%r8                                 #! PC = 0x555555562627 *)
subb carry r8 r8 rcx;
(* mov    0x6dd7(%rip),%rcx        # 0x555555569408 <p503x2+8>#! EA = L0x555555569408; Value = 0xffffffffffffffff; PC = 0x55555556262a *)
mov rcx L0x555555569408;
(* sbb    %rcx,%r9                                 #! PC = 0x555555562631 *)
sbbs carry r9 r9 rcx carry;
(* sbb    %rcx,%r10                                #! PC = 0x555555562634 *)
sbbs carry r10 r10 rcx carry;
(* mov    0x6dda(%rip),%rcx        # 0x555555569418 <p503x2+24>#! EA = L0x555555569418; Value = 0x57ffffffffffffff; PC = 0x555555562637 *)
mov rcx L0x555555569418;
(* sbb    %rcx,%r11                                #! PC = 0x55555556263e *)
sbbs carry r11 r11 rcx carry;
(* mov    0x6dd8(%rip),%rcx        # 0x555555569420 <p503x2+32>#! EA = L0x555555569420; Value = 0x2610b7b44423cf41; PC = 0x555555562641 *)
mov rcx L0x555555569420;
(* sbb    %rcx,%r12                                #! PC = 0x555555562648 *)
sbbs carry r12 r12 rcx carry;
(* mov    0x6dd6(%rip),%rcx        # 0x555555569428 <p503x2+40>#! EA = L0x555555569428; Value = 0x3737ed90f6fcfb5e; PC = 0x55555556264b *)
mov rcx L0x555555569428;
(* sbb    %rcx,%r13                                #! PC = 0x555555562652 *)
sbbs carry r13 r13 rcx carry;
(* mov    0x6dd4(%rip),%rcx        # 0x555555569430 <p503x2+48>#! EA = L0x555555569430; Value = 0xc08b8d7bb4ef49a0; PC = 0x555555562655 *)
mov rcx L0x555555569430;
(* sbb    %rcx,%r14                                #! PC = 0x55555556265c *)
sbbs carry r14 r14 rcx carry;
(* mov    0x6dd2(%rip),%rcx        # 0x555555569438 <p503x2+56>#! EA = L0x555555569438; Value = 0x0080cdea83023c3c; PC = 0x55555556265f *)
mov rcx L0x555555569438;
(* sbb    %rcx,%r15                                #! PC = 0x555555562666 *)
sbbs carry r15 r15 rcx carry;
(* sbb    $0x0,%rax                                #! PC = 0x555555562669 *)
sbbs carry rax rax 0x0@uint64 carry;
(* mov    0x6d8c(%rip),%rdi        # 0x555555569400 <p503x2>#! EA = L0x555555569400; Value = 0xfffffffffffffffe; PC = 0x55555556266d *)
mov rdi L0x555555569400;
(* and    %rax,%rdi                                #! PC = 0x555555562674 *)
and uint64 rdi rax rdi;
(* mov    0x6d8a(%rip),%rsi        # 0x555555569408 <p503x2+8>#! EA = L0x555555569408; Value = 0xffffffffffffffff; PC = 0x555555562677 *)
mov rsi L0x555555569408;
(* and    %rax,%rsi                                #! PC = 0x55555556267e *)
and uint64 rsi rax rsi;
(* mov    0x6d90(%rip),%rcx        # 0x555555569418 <p503x2+24>#! EA = L0x555555569418; Value = 0x57ffffffffffffff; PC = 0x555555562681 *)
mov rcx L0x555555569418;
(* and    %rax,%rcx                                #! PC = 0x555555562688 *)
and uint64 rcx rax rcx;
(* add    %rdi,%r8                                 #! PC = 0x55555556268b *)
adds carry r8 r8 rdi;
(* adc    %rsi,%r9                                 #! PC = 0x55555556268e *)
adcs carry r9 r9 rsi@uint64 carry;
(* adc    %rsi,%r10                                #! PC = 0x555555562691 *)
adcs carry r10 r10 rsi@uint64 carry;
(* adc    %rcx,%r11                                #! PC = 0x555555562694 *)
adcs carry r11 r11 rcx@uint64 carry;
(* mov    %r8,(%rdx)                               #! EA = L0x7fffffffdb20; PC = 0x555555562697 *)
mov L0x7fffffffdb20 r8;
(* mov    %r9,0x8(%rdx)                            #! EA = L0x7fffffffdb28; PC = 0x55555556269a *)
mov L0x7fffffffdb28 r9;
(* mov    %r10,0x10(%rdx)                          #! EA = L0x7fffffffdb30; PC = 0x55555556269e *)
mov L0x7fffffffdb30 r10;
(* mov    %r11,0x18(%rdx)                          #! EA = L0x7fffffffdb38; PC = 0x5555555626a2 *)
mov L0x7fffffffdb38 r11;
(* setb   %cl                                      #! PC = 0x5555555626a6 *)
mov carry_setb carry;
and uint64 rcx rcx 0xFFFFFFFFFFFFFFFE@uint64;
adc rcx rcx 0@uint64 carry;
(* mov    0x6d70(%rip),%r8        # 0x555555569420 <p503x2+32>#! EA = L0x555555569420; Value = 0x2610b7b44423cf41; PC = 0x5555555626a9 *)
mov r8 L0x555555569420;
(* and    %rax,%r8                                 #! PC = 0x5555555626b0 *)
and uint64 r8 rax r8;
(* mov    0x6d6e(%rip),%r9        # 0x555555569428 <p503x2+40>#! EA = L0x555555569428; Value = 0x3737ed90f6fcfb5e; PC = 0x5555555626b3 *)
mov r9 L0x555555569428;
(* and    %rax,%r9                                 #! PC = 0x5555555626ba *)
and uint64 r9 rax r9;
(* mov    0x6d6c(%rip),%r10        # 0x555555569430 <p503x2+48>#! EA = L0x555555569430; Value = 0xc08b8d7bb4ef49a0; PC = 0x5555555626bd *)
mov r10 L0x555555569430;
(* and    %rax,%r10                                #! PC = 0x5555555626c4 *)
and uint64 r10 rax r10;
(* mov    0x6d6a(%rip),%r11        # 0x555555569438 <p503x2+56>#! EA = L0x555555569438; Value = 0x0080cdea83023c3c; PC = 0x5555555626c7 *)
mov r11 L0x555555569438;
(* and    %rax,%r11                                #! PC = 0x5555555626ce *)
and uint64 r11 rax r11;
(* bt     $0x0,%rcx                                #! PC = 0x5555555626d1 *)
split dontcare carry rcx 1;
vpc carry@uint1 carry;
(* adc    %r8,%r12                                 #! PC = 0x5555555626d6 *)
adcs carry r12 r12 r8@uint64 carry;
(* adc    %r9,%r13                                 #! PC = 0x5555555626d9 *)
adcs carry r13 r13 r9@uint64 carry;
(* adc    %r10,%r14                                #! PC = 0x5555555626dc *)
adcs carry r14 r14 r10@uint64 carry;
(* adc    %r11,%r15                                #! PC = 0x5555555626df *)
adcs carry r15 r15 r11@uint64 carry;
(* mov    %r12,0x20(%rdx)                          #! EA = L0x7fffffffdb40; PC = 0x5555555626e2 *)
mov L0x7fffffffdb40 r12;
(* mov    %r13,0x28(%rdx)                          #! EA = L0x7fffffffdb48; PC = 0x5555555626e6 *)
mov L0x7fffffffdb48 r13;
(* mov    %r14,0x30(%rdx)                          #! EA = L0x7fffffffdb50; PC = 0x5555555626ea *)
mov L0x7fffffffdb50 r14;
(* mov    %r15,0x38(%rdx)                          #! EA = L0x7fffffffdb58; PC = 0x5555555626ee *)
mov L0x7fffffffdb58 r15;
(* #! <- SP = 0x7fffffffd928 *)
#! 0x7fffffffd928 = 0x7fffffffd928;
(* #retq                                           #! PC = 0x5555555626fa *)
#retq                                           #! 0x5555555626fa = 0x5555555626fa;
(* #jmpq   0x555555561fb0 <fpadd503>               #! PC = 0x555555558477 *)
#jmpq   0x555555561fb0 <fpadd503>               #! 0x555555558477 = 0x555555558477;
(* #jmpq   0x5555555625d7 <fpadd503_asm>           #! PC = 0x555555561fb4 *)
#jmpq   0x5555555625d7 <fpadd503_asm>           #! 0x555555561fb4 = 0x555555561fb4;
(* xor    %rax,%rax                                #! PC = 0x5555555625df *)
mov rax 0@uint64;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffd9e0; Value = 0x05add279405d33d3; PC = 0x5555555625e2 *)
mov r8 L0x7fffffffd9e0;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffd9e8; Value = 0x6fe56e45508a7f59; PC = 0x5555555625e5 *)
mov r9 L0x7fffffffd9e8;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffd9f0; Value = 0xf85792456f5b7bb8; PC = 0x5555555625e9 *)
mov r10 L0x7fffffffd9f0;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffd9f8; Value = 0xddedbab762899f47; PC = 0x5555555625ed *)
mov r11 L0x7fffffffd9f8;
(* mov    0x20(%rdi),%r12                          #! EA = L0x7fffffffda00; Value = 0x63631a4344b7644c; PC = 0x5555555625f1 *)
mov r12 L0x7fffffffda00;
(* mov    0x28(%rdi),%r13                          #! EA = L0x7fffffffda08; Value = 0x000fb59ac0497847; PC = 0x5555555625f5 *)
mov r13 L0x7fffffffda08;
(* mov    0x30(%rdi),%r14                          #! EA = L0x7fffffffda10; Value = 0x7f201bda92136157; PC = 0x5555555625f9 *)
mov r14 L0x7fffffffda10;
(* mov    0x38(%rdi),%r15                          #! EA = L0x7fffffffda18; Value = 0x0001c8b2f7c1d063; PC = 0x5555555625fd *)
mov r15 L0x7fffffffda18;
(* add    (%rsi),%r8                               #! EA = L0x7fffffffda60; Value = 0x70af38aa49ebba40; PC = 0x555555562601 *)
adds carry r8 r8 L0x7fffffffda60;
(* adc    0x8(%rsi),%r9                            #! EA = L0x7fffffffda68; Value = 0x3d5ea6d519b7d4b9; PC = 0x555555562604 *)
adcs carry r9 r9 L0x7fffffffda68 carry;
(* adc    0x10(%rsi),%r10                          #! EA = L0x7fffffffda70; Value = 0x0310684329ed22ab; PC = 0x555555562608 *)
adcs carry r10 r10 L0x7fffffffda70 carry;
(* adc    0x18(%rsi),%r11                          #! EA = L0x7fffffffda78; Value = 0xe7c26ca72b9308e7; PC = 0x55555556260c *)
adcs carry r11 r11 L0x7fffffffda78 carry;
(* adc    0x20(%rsi),%r12                          #! EA = L0x7fffffffda80; Value = 0x9e41e0e5d131ad26; PC = 0x555555562610 *)
adcs carry r12 r12 L0x7fffffffda80 carry;
(* adc    0x28(%rsi),%r13                          #! EA = L0x7fffffffda88; Value = 0x49c7159e8ab7f8b4; PC = 0x555555562614 *)
adcs carry r13 r13 L0x7fffffffda88 carry;
(* adc    0x30(%rsi),%r14                          #! EA = L0x7fffffffda90; Value = 0x047e831d7a73b437; PC = 0x555555562618 *)
adcs carry r14 r14 L0x7fffffffda90 carry;
(* adc    0x38(%rsi),%r15                          #! EA = L0x7fffffffda98; Value = 0x001af17d332f118c; PC = 0x55555556261c *)
adcs carry r15 r15 L0x7fffffffda98 carry;
(* mov    0x6dd9(%rip),%rcx        # 0x555555569400 <p503x2>#! EA = L0x555555569400; Value = 0xfffffffffffffffe; PC = 0x555555562620 *)
mov rcx L0x555555569400;
(* sub    %rcx,%r8                                 #! PC = 0x555555562627 *)
subb carry r8 r8 rcx;
(* mov    0x6dd7(%rip),%rcx        # 0x555555569408 <p503x2+8>#! EA = L0x555555569408; Value = 0xffffffffffffffff; PC = 0x55555556262a *)
mov rcx L0x555555569408;
(* sbb    %rcx,%r9                                 #! PC = 0x555555562631 *)
sbbs carry r9 r9 rcx carry;
(* sbb    %rcx,%r10                                #! PC = 0x555555562634 *)
sbbs carry r10 r10 rcx carry;
(* mov    0x6dda(%rip),%rcx        # 0x555555569418 <p503x2+24>#! EA = L0x555555569418; Value = 0x57ffffffffffffff; PC = 0x555555562637 *)
mov rcx L0x555555569418;
(* sbb    %rcx,%r11                                #! PC = 0x55555556263e *)
sbbs carry r11 r11 rcx carry;
(* mov    0x6dd8(%rip),%rcx        # 0x555555569420 <p503x2+32>#! EA = L0x555555569420; Value = 0x2610b7b44423cf41; PC = 0x555555562641 *)
mov rcx L0x555555569420;
(* sbb    %rcx,%r12                                #! PC = 0x555555562648 *)
sbbs carry r12 r12 rcx carry;
(* mov    0x6dd6(%rip),%rcx        # 0x555555569428 <p503x2+40>#! EA = L0x555555569428; Value = 0x3737ed90f6fcfb5e; PC = 0x55555556264b *)
mov rcx L0x555555569428;
(* sbb    %rcx,%r13                                #! PC = 0x555555562652 *)
sbbs carry r13 r13 rcx carry;
(* mov    0x6dd4(%rip),%rcx        # 0x555555569430 <p503x2+48>#! EA = L0x555555569430; Value = 0xc08b8d7bb4ef49a0; PC = 0x555555562655 *)
mov rcx L0x555555569430;
(* sbb    %rcx,%r14                                #! PC = 0x55555556265c *)
sbbs carry r14 r14 rcx carry;
(* mov    0x6dd2(%rip),%rcx        # 0x555555569438 <p503x2+56>#! EA = L0x555555569438; Value = 0x0080cdea83023c3c; PC = 0x55555556265f *)
mov rcx L0x555555569438;
(* sbb    %rcx,%r15                                #! PC = 0x555555562666 *)
sbbs carry r15 r15 rcx carry;
(* sbb    $0x0,%rax                                #! PC = 0x555555562669 *)
sbbs carry rax rax 0x0@uint64 carry;
(* mov    0x6d8c(%rip),%rdi        # 0x555555569400 <p503x2>#! EA = L0x555555569400; Value = 0xfffffffffffffffe; PC = 0x55555556266d *)
mov rdi L0x555555569400;
(* and    %rax,%rdi                                #! PC = 0x555555562674 *)
and uint64 rdi rax rdi;
(* mov    0x6d8a(%rip),%rsi        # 0x555555569408 <p503x2+8>#! EA = L0x555555569408; Value = 0xffffffffffffffff; PC = 0x555555562677 *)
mov rsi L0x555555569408;
(* and    %rax,%rsi                                #! PC = 0x55555556267e *)
and uint64 rsi rax rsi;
(* mov    0x6d90(%rip),%rcx        # 0x555555569418 <p503x2+24>#! EA = L0x555555569418; Value = 0x57ffffffffffffff; PC = 0x555555562681 *)
mov rcx L0x555555569418;
(* and    %rax,%rcx                                #! PC = 0x555555562688 *)
and uint64 rcx rax rcx;
(* add    %rdi,%r8                                 #! PC = 0x55555556268b *)
adds carry r8 r8 rdi;
(* adc    %rsi,%r9                                 #! PC = 0x55555556268e *)
adcs carry r9 r9 rsi@uint64 carry;
(* adc    %rsi,%r10                                #! PC = 0x555555562691 *)
adcs carry r10 r10 rsi@uint64 carry;
(* adc    %rcx,%r11                                #! PC = 0x555555562694 *)
adcs carry r11 r11 rcx@uint64 carry;
(* mov    %r8,(%rdx)                               #! EA = L0x7fffffffdb60; PC = 0x555555562697 *)
mov L0x7fffffffdb60 r8;
(* mov    %r9,0x8(%rdx)                            #! EA = L0x7fffffffdb68; PC = 0x55555556269a *)
mov L0x7fffffffdb68 r9;
(* mov    %r10,0x10(%rdx)                          #! EA = L0x7fffffffdb70; PC = 0x55555556269e *)
mov L0x7fffffffdb70 r10;
(* mov    %r11,0x18(%rdx)                          #! EA = L0x7fffffffdb78; PC = 0x5555555626a2 *)
mov L0x7fffffffdb78 r11;
(* setb   %cl                                      #! PC = 0x5555555626a6 *)
mov carry_setb carry;
and uint64 rcx rcx 0xFFFFFFFFFFFFFFFE@uint64;
adc rcx rcx 0@uint64 carry;
(* mov    0x6d70(%rip),%r8        # 0x555555569420 <p503x2+32>#! EA = L0x555555569420; Value = 0x2610b7b44423cf41; PC = 0x5555555626a9 *)
mov r8 L0x555555569420;
(* and    %rax,%r8                                 #! PC = 0x5555555626b0 *)
and uint64 r8 rax r8;
(* mov    0x6d6e(%rip),%r9        # 0x555555569428 <p503x2+40>#! EA = L0x555555569428; Value = 0x3737ed90f6fcfb5e; PC = 0x5555555626b3 *)
mov r9 L0x555555569428;
(* and    %rax,%r9                                 #! PC = 0x5555555626ba *)
and uint64 r9 rax r9;
(* mov    0x6d6c(%rip),%r10        # 0x555555569430 <p503x2+48>#! EA = L0x555555569430; Value = 0xc08b8d7bb4ef49a0; PC = 0x5555555626bd *)
mov r10 L0x555555569430;
(* and    %rax,%r10                                #! PC = 0x5555555626c4 *)
and uint64 r10 rax r10;
(* mov    0x6d6a(%rip),%r11        # 0x555555569438 <p503x2+56>#! EA = L0x555555569438; Value = 0x0080cdea83023c3c; PC = 0x5555555626c7 *)
mov r11 L0x555555569438;
(* and    %rax,%r11                                #! PC = 0x5555555626ce *)
and uint64 r11 rax r11;
(* bt     $0x0,%rcx                                #! PC = 0x5555555626d1 *)
split dontcare carry rcx 1;
vpc carry@uint1 carry;
(* adc    %r8,%r12                                 #! PC = 0x5555555626d6 *)
adcs carry r12 r12 r8@uint64 carry;
(* adc    %r9,%r13                                 #! PC = 0x5555555626d9 *)
adcs carry r13 r13 r9@uint64 carry;
(* adc    %r10,%r14                                #! PC = 0x5555555626dc *)
adcs carry r14 r14 r10@uint64 carry;
(* adc    %r11,%r15                                #! PC = 0x5555555626df *)
adcs carry r15 r15 r11@uint64 carry;
(* mov    %r12,0x20(%rdx)                          #! EA = L0x7fffffffdb80; PC = 0x5555555626e2 *)
mov L0x7fffffffdb80 r12;
(* mov    %r13,0x28(%rdx)                          #! EA = L0x7fffffffdb88; PC = 0x5555555626e6 *)
mov L0x7fffffffdb88 r13;
(* mov    %r14,0x30(%rdx)                          #! EA = L0x7fffffffdb90; PC = 0x5555555626ea *)
mov L0x7fffffffdb90 r14;
(* mov    %r15,0x38(%rdx)                          #! EA = L0x7fffffffdb98; PC = 0x5555555626ee *)
mov L0x7fffffffdb98 r15;
(* #! <- SP = 0x7fffffffd948 *)
#! 0x7fffffffd948 = 0x7fffffffd948;
(* #retq                                           #! PC = 0x5555555626fa *)
#retq                                           #! 0x5555555626fa = 0x5555555626fa;

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
    equmod
      (limbs 64 [ c00, c01, c02, c03, c04, c05, c06, c07 ])
      (
        limbs 64 [ a00, a01, a02, a03, a04, a05, a06, a07 ]
        +
        limbs 64 [ b00, b01, b02, b03, b04, b05, b06, b07 ]
      )
      (limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                  $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ]),
    equmod
      (limbs 64 [ c10, c11, c12, c13, c14, c15, c16, c17 ])
      (
        limbs 64 [ a10, a11, a12, a13, a14, a15, a16, a17 ]
        +
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

