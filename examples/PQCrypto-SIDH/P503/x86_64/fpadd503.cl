(* on frege: -v -jobs 24 -isafety fpadd503.cl
Parsing Cryptoline file:		[OK]		0.002402 seconds
Checking well-formedness:		[OK]		0.000493 seconds
Transforming to SSA form:		[OK]		0.000243 seconds
Normalizing specification:		[OK]		0.000242 seconds
Rewriting assignments:			[OK]		0.000316 seconds
Verifying program safety:
	 Cut 0
	     Round 1 (2 safety conditions, timeout = 300 seconds)
		 Safety condition #1	[OK]
		 Safety condition #0	[OK]
	 Overall			[OK]		0.150816 seconds
Verifying range specification:		[OK]		9.900199 seconds
Rewriting value-preserved casting:	[OK]		0.000041 seconds
Verifying algebraic specification:	[OK]		0.000371 seconds
Verification result:			[OK]		10.055644 seconds
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

proc main (a0@uint64, a1@uint64, a2@uint64, a3@uint64, a4@uint64, a5@uint64, a6@uint64, a7@uint64,
           b0@uint64, b1@uint64, b2@uint64, b3@uint64, b4@uint64, b5@uint64, b6@uint64, b7@uint64) =
{
  true
  &&
  and [
    limbs 64 [ a0, a1, a2, a3, a4, a5, a6, a7 ] <=u
      (2@512 * limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                          $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ] - 1@512),
    limbs 64 [ b0, b1, b2, b3, b4, b5, b6, b7 ] <=u
      (2@512 * limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                          $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ] - 1@512)
  ]
}

(* ===== Initialization ===== *)

mov L0x7fffffffdca0 a0;
mov L0x7fffffffdca8 a1;
mov L0x7fffffffdcb0 a2;
mov L0x7fffffffdcb8 a3;
mov L0x7fffffffdcc0 a4;
mov L0x7fffffffdcc8 a5;
mov L0x7fffffffdcd0 a6;
mov L0x7fffffffdcd8 a7;
mov L0x7fffffffdce0 b0;
mov L0x7fffffffdce8 b1;
mov L0x7fffffffdcf0 b2;
mov L0x7fffffffdcf8 b3;
mov L0x7fffffffdd00 b4;
mov L0x7fffffffdd08 b5;
mov L0x7fffffffdd10 b6;
mov L0x7fffffffdd18 b7;

mov L0x555555569400 $p503x2_0@uint64;
mov L0x555555569408 $p503x2_1@uint64;
mov L0x555555569418 $p503x2_3@uint64;
mov L0x555555569420 $p503x2_4@uint64;
mov L0x555555569428 $p503x2_5@uint64;
mov L0x555555569430 $p503x2_6@uint64;
mov L0x555555569438 $p503x2_7@uint64;

(* ===== Program ===== *)

(* #! -> SP = 0x7fffffffdc48 *)
#! 0x7fffffffdc48 = 0x7fffffffdc48;
(* #jmpq   0x5555555625d7 <fpadd503_asm>           #! PC = 0x555555561fb4 *)
#jmpq   0x5555555625d7 <fpadd503_asm>           #! 0x555555561fb4 = 0x555555561fb4;
(* xor    %rax,%rax                                #! PC = 0x5555555625df *)
mov rax 0@uint64;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffdca0; Value = 0xec4aff517369c668; PC = 0x5555555625e2 *)
mov r8 L0x7fffffffdca0;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffdca8; Value = 0x46e3fbf2abbacd29; PC = 0x5555555625e5 *)
mov r9 L0x7fffffffdca8;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffdcb0; Value = 0x8de7e81bf854c27c; PC = 0x5555555625e9 *)
mov r10 L0x7fffffffdcb0;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffdcb8; Value = 0xeec99f33632e5a76; PC = 0x5555555625ed *)
mov r11 L0x7fffffffdcb8;
(* mov    0x20(%rdi),%r12                          #! EA = L0x7fffffffdcc0; Value = 0x479afc5794fb4ac5; PC = 0x5555555625f1 *)
mov r12 L0x7fffffffdcc0;
(* mov    0x28(%rdi),%r13                          #! EA = L0x7fffffffdcc8; Value = 0xb8c2f28f9b86df76; PC = 0x5555555625f5 *)
mov r13 L0x7fffffffdcc8;
(* mov    0x30(%rdi),%r14                          #! EA = L0x7fffffffdcd0; Value = 0xb10eedddec560ddb; PC = 0x5555555625f9 *)
mov r14 L0x7fffffffdcd0;
(* mov    0x38(%rdi),%r15                          #! EA = L0x7fffffffdcd8; Value = 0x001bd62bfff363ef; PC = 0x5555555625fd *)
mov r15 L0x7fffffffdcd8;
(* add    (%rsi),%r8                               #! EA = L0x7fffffffdce0; Value = 0x67fce141a13ee971; PC = 0x555555562601 *)
adds carry r8 r8 L0x7fffffffdce0;
(* adc    0x8(%rsi),%r9                            #! EA = L0x7fffffffdce8; Value = 0x966bdcea977e013e; PC = 0x555555562604 *)
adcs carry r9 r9 L0x7fffffffdce8 carry;
(* adc    0x10(%rsi),%r10                          #! EA = L0x7fffffffdcf0; Value = 0xfb3bb0ec2a5c388f; PC = 0x555555562608 *)
adcs carry r10 r10 L0x7fffffffdcf0 carry;
(* adc    0x18(%rsi),%r11                          #! EA = L0x7fffffffdcf8; Value = 0xb0db18ec543caf32; PC = 0x55555556260c *)
adcs carry r11 r11 L0x7fffffffdcf8 carry;
(* adc    0x20(%rsi),%r12                          #! EA = L0x7fffffffdd00; Value = 0x27a29f2121ec3261; PC = 0x555555562610 *)
adcs carry r12 r12 L0x7fffffffdd00 carry;
(* adc    0x28(%rsi),%r13                          #! EA = L0x7fffffffdd08; Value = 0x78e0453d6b52ac4c; PC = 0x555555562614 *)
adcs carry r13 r13 L0x7fffffffdd08 carry;
(* adc    0x30(%rsi),%r14                          #! EA = L0x7fffffffdd10; Value = 0x5b1732cb874733a5; PC = 0x555555562618 *)
adcs carry r14 r14 L0x7fffffffdd10 carry;
(* adc    0x38(%rsi),%r15                          #! EA = L0x7fffffffdd18; Value = 0x003184bc538e7b8a; PC = 0x55555556261c *)
adcs carry r15 r15 L0x7fffffffdd18 carry;
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
(* mov    %r8,(%rdx)                               #! EA = L0x7fffffffdd60; PC = 0x555555562697 *)
mov L0x7fffffffdd60 r8;
(* mov    %r9,0x8(%rdx)                            #! EA = L0x7fffffffdd68; PC = 0x55555556269a *)
mov L0x7fffffffdd68 r9;
(* mov    %r10,0x10(%rdx)                          #! EA = L0x7fffffffdd70; PC = 0x55555556269e *)
mov L0x7fffffffdd70 r10;
(* mov    %r11,0x18(%rdx)                          #! EA = L0x7fffffffdd78; PC = 0x5555555626a2 *)
mov L0x7fffffffdd78 r11;
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
(* mov    %r12,0x20(%rdx)                          #! EA = L0x7fffffffdd80; PC = 0x5555555626e2 *)
mov L0x7fffffffdd80 r12;
(* mov    %r13,0x28(%rdx)                          #! EA = L0x7fffffffdd88; PC = 0x5555555626e6 *)
mov L0x7fffffffdd88 r13;
(* mov    %r14,0x30(%rdx)                          #! EA = L0x7fffffffdd90; PC = 0x5555555626ea *)
mov L0x7fffffffdd90 r14;
(* mov    %r15,0x38(%rdx)                          #! EA = L0x7fffffffdd98; PC = 0x5555555626ee *)
mov L0x7fffffffdd98 r15;
(* #! <- SP = 0x7fffffffdc48 *)
#! 0x7fffffffdc48 = 0x7fffffffdc48;
(* #retq                                           #! PC = 0x5555555626fa *)
#retq                                           #! 0x5555555626fa = 0x5555555626fa;

(* ===== Outputs ===== *)

mov c0 L0x7fffffffdd60;
mov c1 L0x7fffffffdd68;
mov c2 L0x7fffffffdd70;
mov c3 L0x7fffffffdd78;
mov c4 L0x7fffffffdd80;
mov c5 L0x7fffffffdd88;
mov c6 L0x7fffffffdd90;
mov c7 L0x7fffffffdd98;

{
  true
  &&
  and [
    equmod
      (limbs 64 [ c0, c1, c2, c3, c4, c5, c6, c7 ])
      (
        limbs 64 [ a0, a1, a2, a3, a4, a5, a6, a7 ]
        +
        limbs 64 [ b0, b1, b2, b3, b4, b5, b6, b7 ]
      )
      (limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                  $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ]),
    limbs 64 [c0, c1, c2, c3, c4, c5, c6, c7] <=u
      (2@512 * limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                          $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ] - 1@512)
  ]
}

