(* on frege: -v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint fpsub503.cl
Parsing Cryptoline file:		[OK]		0.002216 seconds
Checking well-formedness:		[OK]		0.000463 seconds
Transforming to SSA form:		[OK]		0.000237 seconds
Normalizing specification:		[OK]		0.000217 seconds
Rewriting assignments:			[OK]		0.000289 seconds
Verifying program safety:
	 Cut 0
	     Round 1 (2 safety conditions, timeout = 14400 seconds)
		 Safety condition #1	[OK]
		 Safety condition #0	[OK]
	 Overall			[OK]		0.154147 seconds
Verifying range specification:		[OK]		37.428038 seconds
Rewriting value-preserved casting:	[OK]		0.000028 seconds
Verifying algebraic specification:	[OK]		0.000322 seconds
Verification result:			[OK]		37.586517 seconds
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
(* #jmpq   0x5555555626fb <fpsub503_asm>           #! PC = 0x555555561fc4 *)
#jmpq   0x5555555626fb <fpsub503_asm>           #! 0x555555561fc4 = 0x555555561fc4;
(* xor    %rax,%rax                                #! PC = 0x555555562703 *)
mov rax 0@uint64;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffdca0; Value = 0xdbb1598ca655327f; PC = 0x555555562706 *)
mov r8 L0x7fffffffdca0;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffdca8; Value = 0x9fa5f65c60b74dc6; PC = 0x555555562709 *)
mov r9 L0x7fffffffdca8;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffdcb0; Value = 0xd786494c0de734b9; PC = 0x55555556270d *)
mov r10 L0x7fffffffdcb0;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffdcb8; Value = 0x55d458d5f9cd89c8; PC = 0x555555562711 *)
mov r11 L0x7fffffffdcb8;
(* mov    0x20(%rdi),%r12                          #! EA = L0x7fffffffdcc0; Value = 0x49f2ac8317fb298a; PC = 0x555555562715 *)
mov r12 L0x7fffffffdcc0;
(* mov    0x28(%rdi),%r13                          #! EA = L0x7fffffffdcc8; Value = 0x58f54e9f56a9a9fa; PC = 0x555555562719 *)
mov r13 L0x7fffffffdcc8;
(* mov    0x30(%rdi),%r14                          #! EA = L0x7fffffffdcd0; Value = 0xeea6eb25ce65dc82; PC = 0x55555556271d *)
mov r14 L0x7fffffffdcd0;
(* mov    0x38(%rdi),%r15                          #! EA = L0x7fffffffdcd8; Value = 0x001fbbcb4ae77375; PC = 0x555555562721 *)
mov r15 L0x7fffffffdcd8;
(* sub    (%rsi),%r8                               #! EA = L0x7fffffffdce0; Value = 0x41b15f47686d9ae6; PC = 0x555555562725 *)
subb carry r8 r8 L0x7fffffffdce0;
(* sbb    0x8(%rsi),%r9                            #! EA = L0x7fffffffdce8; Value = 0x2b008da8a8975a08; PC = 0x555555562728 *)
sbbs carry r9 r9 L0x7fffffffdce8 carry;
(* sbb    0x10(%rsi),%r10                          #! EA = L0x7fffffffdcf0; Value = 0xc67d9f518ff96669; PC = 0x55555556272c *)
sbbs carry r10 r10 L0x7fffffffdcf0 carry;
(* sbb    0x18(%rsi),%r11                          #! EA = L0x7fffffffdcf8; Value = 0x5934b020de116413; PC = 0x555555562730 *)
sbbs carry r11 r11 L0x7fffffffdcf8 carry;
(* sbb    0x20(%rsi),%r12                          #! EA = L0x7fffffffdd00; Value = 0xf6cac226705bb9aa; PC = 0x555555562734 *)
sbbs carry r12 r12 L0x7fffffffdd00 carry;
(* sbb    0x28(%rsi),%r13                          #! EA = L0x7fffffffdd08; Value = 0x45afbb2ea532ecc8; PC = 0x555555562738 *)
sbbs carry r13 r13 L0x7fffffffdd08 carry;
(* sbb    0x30(%rsi),%r14                          #! EA = L0x7fffffffdd10; Value = 0x96e9a7268f78a047; PC = 0x55555556273c *)
sbbs carry r14 r14 L0x7fffffffdd10 carry;
(* sbb    0x38(%rsi),%r15                          #! EA = L0x7fffffffdd18; Value = 0x0035a3fcb05522b3; PC = 0x555555562740 *)
sbbs carry r15 r15 L0x7fffffffdd18 carry;
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
(* mov    %r8,(%rdx)                               #! EA = L0x7fffffffdd60; PC = 0x555555562772 *)
mov L0x7fffffffdd60 r8;
(* mov    %r9,0x8(%rdx)                            #! EA = L0x7fffffffdd68; PC = 0x555555562775 *)
mov L0x7fffffffdd68 r9;
(* mov    %r10,0x10(%rdx)                          #! EA = L0x7fffffffdd70; PC = 0x555555562779 *)
mov L0x7fffffffdd70 r10;
(* mov    %r11,0x18(%rdx)                          #! EA = L0x7fffffffdd78; PC = 0x55555556277d *)
mov L0x7fffffffdd78 r11;
(* setb   %cl                                      #! PC = 0x555555562781 *)
and uint64 rcx rcx 0xFFFFFFFFFFFFFF00@uint64;
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
(* mov    %r12,0x20(%rdx)                          #! EA = L0x7fffffffdd80; PC = 0x5555555627bd *)
mov L0x7fffffffdd80 r12;
(* mov    %r13,0x28(%rdx)                          #! EA = L0x7fffffffdd88; PC = 0x5555555627c1 *)
mov L0x7fffffffdd88 r13;
(* mov    %r14,0x30(%rdx)                          #! EA = L0x7fffffffdd90; PC = 0x5555555627c5 *)
mov L0x7fffffffdd90 r14;
(* mov    %r15,0x38(%rdx)                          #! EA = L0x7fffffffdd98; PC = 0x5555555627c9 *)
mov L0x7fffffffdd98 r15;
(* #! <- SP = 0x7fffffffdc48 *)
#! 0x7fffffffdc48 = 0x7fffffffdc48;
(* #retq                                           #! PC = 0x5555555627d5 *)
#retq                                           #! 0x5555555627d5 = 0x5555555627d5;

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
    eqsmod
      (limbs 64 [ c0, c1, c2, c3, c4, c5, c6, c7 ])
      (
        limbs 64 [ a0, a1, a2, a3, a4, a5, a6, a7 ]
        -
        limbs 64 [ b0, b1, b2, b3, b4, b5, b6, b7 ]
      )
      (limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                  $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ]),
    limbs 64 [c0, c1, c2, c3, c4, c5, c6, c7] <=u
      (2@512 * limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                          $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ] - 1@512)
  ]
}
