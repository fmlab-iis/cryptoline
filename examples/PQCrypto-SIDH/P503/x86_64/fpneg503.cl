(* on frege: -v -jobs 24 -isafety fpneg503.cl
Parsing Cryptoline file:		[OK]		0.002789 seconds
Checking well-formedness:		[OK]		0.000524 seconds
Transforming to SSA form:		[OK]		0.000239 seconds
Normalizing specification:		[OK]		0.000303 seconds
Rewriting assignments:			[OK]		0.000428 seconds
Verifying program safety:
	 Cut 0
	     Round 1 (0 safety conditions, timeout = 300 seconds)
	 Overall			[OK]		0.000944 seconds
Verifying range specification:		[OK]		2.663311 seconds
Rewriting value-preserved casting:	[OK]		0.000029 seconds
Verifying algebraic specification:	[OK]		0.000303 seconds
Verification result:			[OK]		2.669393 seconds
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

proc main (a0@uint64, a1@uint64, a2@uint64, a3@uint64, a4@uint64, a5@uint64, a6@uint64, a7@uint64) =
{
  true
  &&
  and [
    limbs 64 [ a0, a1, a2, a3, a4, a5, a6, a7 ] <=u
      (2@512 * limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                          $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ] - 1@512)
  ]
}

(* ===== Initialization ===== *)

mov L0x7fffffffdd60 a0;
mov L0x7fffffffdd68 a1;
mov L0x7fffffffdd70 a2;
mov L0x7fffffffdd78 a3;
mov L0x7fffffffdd80 a4;
mov L0x7fffffffdd88 a5;
mov L0x7fffffffdd90 a6;
mov L0x7fffffffdd98 a7;

mov L0x555555569400 $p503x2_0@uint64;
mov L0x555555569408 $p503x2_1@uint64;
mov L0x555555569410 $p503x2_2@uint64;
mov L0x555555569418 $p503x2_3@uint64;
mov L0x555555569420 $p503x2_4@uint64;
mov L0x555555569428 $p503x2_5@uint64;
mov L0x555555569430 $p503x2_6@uint64;
mov L0x555555569438 $p503x2_7@uint64;

(* ===== Program ===== *)

(* #! -> SP = 0x7fffffffdc48 *)
#! 0x7fffffffdc48 = 0x7fffffffdc48;
(* mov    0x7425(%rip),%rcx        # 0x555555569400 <p503x2>#! EA = L0x555555569400; Value = 0xfffffffffffffffe; PC = 0x555555561fd4 *)
mov rcx L0x555555569400;
(* mov    (%rdi),%rsi                              #! EA = L0x7fffffffdd60; Value = 0xec4aff517369c668; PC = 0x555555561fdb *)
mov rsi L0x7fffffffdd60;
(* mov    %rcx,%rax                                #! PC = 0x555555561fde *)
mov rax rcx;
(* xor    %r9d,%r9d                                #! PC = 0x555555561fe1 *)
mov r9 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x555555561fe4 *)
mov rdx 0@uint64;
(* sub    %rsi,%rax                                #! PC = 0x555555561fe6 *)
subb carry rax rax rsi;
(* sbb    %r9,%rdx                                 #! PC = 0x555555561fe9 *)
sbbs carry rdx rdx r9 carry;
(* mov    %rdx,%rax                                #! PC = 0x555555561fec *)
mov rax rdx;
(* shr    $0x3f,%rax                               #! PC = 0x555555561fef *)
split rax dontcare rax 0x3f;
(* mov    0x8(%rdi),%r10                           #! EA = L0x7fffffffdd68; Value = 0x46e3fbf2abbacd29; PC = 0x555555561ff3 *)
mov r10 L0x7fffffffdd68;
(* mov    %rax,%r8                                 #! PC = 0x555555561ff7 *)
mov r8 rax;
(* mov    0x7407(%rip),%rax        # 0x555555569408 <p503x2+8>#! EA = L0x555555569408; Value = 0xffffffffffffffff; PC = 0x555555561ffa *)
mov rax L0x555555569408;
(* xor    %edx,%edx                                #! PC = 0x555555562001 *)
mov rdx 0@uint64;
(* mov    %rdx,%r9                                 #! PC = 0x555555562003 *)
mov r9 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x555555562006 *)
mov r11 0@uint64;
(* sub    %rsi,%rcx                                #! PC = 0x555555562009 *)
subb carry rcx rcx rsi;
(* xor    %edx,%edx                                #! PC = 0x55555556200c *)
mov rdx 0@uint64;
(* sub    %r10,%rax                                #! PC = 0x55555556200e *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x555555562011 *)
sbbs carry rdx rdx r11 carry;
(* sub    %r8,%rax                                 #! PC = 0x555555562014 *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x555555562017 *)
sbbs carry rdx rdx r9 carry;
(* mov    0x10(%rdi),%r8                           #! EA = L0x7fffffffdd70; Value = 0x8de7e81bf854c27c; PC = 0x55555556201a *)
mov r8 L0x7fffffffdd70;
(* mov    %rax,0x8(%rdi)                           #! EA = L0x7fffffffdd68; PC = 0x55555556201e *)
mov L0x7fffffffdd68 rax;
(* mov    0x73e7(%rip),%rax        # 0x555555569410 <p503x2+16>#! EA = L0x555555569410; Value = 0xffffffffffffffff; PC = 0x555555562022 *)
mov rax L0x555555569410;
(* mov    %rdx,%r10                                #! PC = 0x555555562029 *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x55555556202c *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x55555556202f *)
split r10 dontcare r10 0x3f;
(* xor    %r9d,%r9d                                #! PC = 0x555555562033 *)
mov r9 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x555555562036 *)
mov rdx 0@uint64;
(* sub    %r8,%rax                                 #! PC = 0x555555562038 *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x55555556203b *)
sbbs carry rdx rdx r9 carry;
(* sub    %r10,%rax                                #! PC = 0x55555556203e *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x555555562041 *)
sbbs carry rdx rdx r11 carry;
(* mov    0x18(%rdi),%r8                           #! EA = L0x7fffffffdd78; Value = 0xeec99f33632e5a76; PC = 0x555555562044 *)
mov r8 L0x7fffffffdd78;
(* mov    %rax,0x10(%rdi)                          #! EA = L0x7fffffffdd70; PC = 0x555555562048 *)
mov L0x7fffffffdd70 rax;
(* mov    0x73c5(%rip),%rax        # 0x555555569418 <p503x2+24>#! EA = L0x555555569418; Value = 0x57ffffffffffffff; PC = 0x55555556204c *)
mov rax L0x555555569418;
(* mov    %rdx,%r10                                #! PC = 0x555555562053 *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x555555562056 *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x555555562059 *)
split r10 dontcare r10 0x3f;
(* xor    %r9d,%r9d                                #! PC = 0x55555556205d *)
mov r9 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x555555562060 *)
mov rdx 0@uint64;
(* sub    %r8,%rax                                 #! PC = 0x555555562062 *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x555555562065 *)
sbbs carry rdx rdx r9 carry;
(* sub    %r10,%rax                                #! PC = 0x555555562068 *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x55555556206b *)
sbbs carry rdx rdx r11 carry;
(* mov    0x20(%rdi),%r8                           #! EA = L0x7fffffffdd80; Value = 0x479afc5794fb4ac5; PC = 0x55555556206e *)
mov r8 L0x7fffffffdd80;
(* mov    %rax,0x18(%rdi)                          #! EA = L0x7fffffffdd78; PC = 0x555555562072 *)
mov L0x7fffffffdd78 rax;
(* mov    0x73a3(%rip),%rax        # 0x555555569420 <p503x2+32>#! EA = L0x555555569420; Value = 0x2610b7b44423cf41; PC = 0x555555562076 *)
mov rax L0x555555569420;
(* mov    %rdx,%r10                                #! PC = 0x55555556207d *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x555555562080 *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x555555562083 *)
split r10 dontcare r10 0x3f;
(* xor    %r9d,%r9d                                #! PC = 0x555555562087 *)
mov r9 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x55555556208a *)
mov rdx 0@uint64;
(* sub    %r8,%rax                                 #! PC = 0x55555556208c *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x55555556208f *)
sbbs carry rdx rdx r9 carry;
(* sub    %r10,%rax                                #! PC = 0x555555562092 *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x555555562095 *)
sbbs carry rdx rdx r11 carry;
(* mov    0x28(%rdi),%r8                           #! EA = L0x7fffffffdd88; Value = 0xb8c2f28f9b86df76; PC = 0x555555562098 *)
mov r8 L0x7fffffffdd88;
(* mov    %rax,0x20(%rdi)                          #! EA = L0x7fffffffdd80; PC = 0x55555556209c *)
mov L0x7fffffffdd80 rax;
(* mov    0x7381(%rip),%rax        # 0x555555569428 <p503x2+40>#! EA = L0x555555569428; Value = 0x3737ed90f6fcfb5e; PC = 0x5555555620a0 *)
mov rax L0x555555569428;
(* mov    %rdx,%r10                                #! PC = 0x5555555620a7 *)
mov r10 rdx;
(* xor    %r11d,%r11d                              #! PC = 0x5555555620aa *)
mov r11 0@uint64;
(* shr    $0x3f,%r10                               #! PC = 0x5555555620ad *)
split r10 dontcare r10 0x3f;
(* xor    %r9d,%r9d                                #! PC = 0x5555555620b1 *)
mov r9 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x5555555620b4 *)
mov rdx 0@uint64;
(* sub    %r8,%rax                                 #! PC = 0x5555555620b6 *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x5555555620b9 *)
sbbs carry rdx rdx r9 carry;
(* sub    %r10,%rax                                #! PC = 0x5555555620bc *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x5555555620bf *)
sbbs carry rdx rdx r11 carry;
(* mov    0x30(%rdi),%r8                           #! EA = L0x7fffffffdd90; Value = 0xb10eedddec560ddb; PC = 0x5555555620c2 *)
mov r8 L0x7fffffffdd90;
(* mov    %rax,0x28(%rdi)                          #! EA = L0x7fffffffdd88; PC = 0x5555555620c6 *)
mov L0x7fffffffdd88 rax;
(* mov    0x735f(%rip),%rax        # 0x555555569430 <p503x2+48>#! EA = L0x555555569430; Value = 0xc08b8d7bb4ef49a0; PC = 0x5555555620ca *)
mov rax L0x555555569430;
(* mov    %rdx,%r10                                #! PC = 0x5555555620d1 *)
mov r10 rdx;
(* shr    $0x3f,%r10                               #! PC = 0x5555555620d4 *)
split r10 dontcare r10 0x3f;
(* xor    %r11d,%r11d                              #! PC = 0x5555555620d8 *)
mov r11 0@uint64;
(* xor    %edx,%edx                                #! PC = 0x5555555620db *)
mov rdx 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x5555555620dd *)
mov r9 0@uint64;
(* sub    %r8,%rax                                 #! PC = 0x5555555620e0 *)
subb carry rax rax r8;
(* sbb    %r9,%rdx                                 #! PC = 0x5555555620e3 *)
sbbs carry rdx rdx r9 carry;
(* sub    %r10,%rax                                #! PC = 0x5555555620e6 *)
subb carry rax rax r10;
(* sbb    %r11,%rdx                                #! PC = 0x5555555620e9 *)
sbbs carry rdx rdx r11 carry;
(* mov    0x38(%rdi),%r8                           #! EA = L0x7fffffffdd98; Value = 0x001bd62bfff363ef; PC = 0x5555555620ec *)
mov r8 L0x7fffffffdd98;
(* mov    %rax,0x30(%rdi)                          #! EA = L0x7fffffffdd90; PC = 0x5555555620f0 *)
mov L0x7fffffffdd90 rax;
(* mov    0x733d(%rip),%rax        # 0x555555569438 <p503x2+56>#! EA = L0x555555569438; Value = 0x0080cdea83023c3c; PC = 0x5555555620f4 *)
mov rax L0x555555569438;
(* mov    %rdx,%r10                                #! PC = 0x5555555620fb *)
mov r10 rdx;
(* shr    $0x3f,%r10                               #! PC = 0x5555555620fe *)
split r10 dontcare r10 0x3f;
(* sub    %r8,%rax                                 #! PC = 0x555555562102 *)
subb carry rax rax r8;
(* sub    %r10,%rax                                #! PC = 0x555555562105 *)
subb carry rax rax r10;
(* mov    %rcx,(%rdi)                              #! EA = L0x7fffffffdd60; PC = 0x555555562108 *)
mov L0x7fffffffdd60 rcx;
(* mov    %rax,0x38(%rdi)                          #! EA = L0x7fffffffdd98; PC = 0x55555556210b *)
mov L0x7fffffffdd98 rax;
(* #! <- SP = 0x7fffffffdc48 *)
#! 0x7fffffffdc48 = 0x7fffffffdc48;
(* #retq                                           #! PC = 0x55555556210f *)
#retq                                           #! 0x55555556210f = 0x55555556210f;


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
        limbs 64 [ 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64 ]
        -
        limbs 64 [ a0, a1, a2, a3, a4, a5, a6, a7 ]
      )
      (limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                  $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ]),
  (*
    Comment in P503/AMD64/fp_x64.c: Input/output: a in [0, 2*p503-1]
    Failed to verify.
  *)
  (*
    limbs 64 [ c0, c1, c2, c3, c4, c5, c6, c7 ] <=u
      (2@512 * limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                          $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ] - 1@512)
  *)
    1@512 <=u limbs 64 [ c0, c1, c2, c3, c4, c5, c6, c7 ],
    limbs 64 [ c0, c1, c2, c3, c4, c5, c6, c7 ] <=u
      (2@512 * limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                          $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ])
  ]
}

