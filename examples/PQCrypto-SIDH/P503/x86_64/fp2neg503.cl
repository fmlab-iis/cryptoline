(* on frege: -v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint fp2neg503.cl
Parsing Cryptoline file:		[OK]		0.005152 seconds
Checking well-formedness:		[OK]		0.001577 seconds
Transforming to SSA form:		[OK]		0.000293 seconds
Normalizing specification:		[OK]		0.000430 seconds
Rewriting assignments:			[OK]		0.000572 seconds
Verifying program safety:
	 Cut 0
	     Round 1 (0 safety conditions, timeout = 14400 seconds)
	 Overall			[OK]		0.000169 seconds
Verifying range specification:		[OK]		2.578048 seconds
Rewriting value-preserved casting:	[OK]		0.000040 seconds
Verifying algebraic specification:	[OK]		0.000384 seconds
Verification result:			[OK]		2.587194 seconds
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
           a10@uint64, a11@uint64, a12@uint64, a13@uint64, a14@uint64, a15@uint64, a16@uint64, a17@uint64) =
{
  true
  &&
  and [
    limbs 64 [ a00, a01, a02, a03, a04, a05, a06, a07 ] <=u
      (2@512 * limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                          $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ] - 1@512),
    limbs 64 [ a10, a11, a12, a13, a14, a15, a16, a17 ] <=u
      (2@512 * limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                          $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ] - 1@512)
  ]
}

(* ===== Initialization ===== *)

mov L0x7fffffffdb20 a00;
mov L0x7fffffffdb28 a01;
mov L0x7fffffffdb30 a02;
mov L0x7fffffffdb38 a03;
mov L0x7fffffffdb40 a04;
mov L0x7fffffffdb48 a05;
mov L0x7fffffffdb50 a06;
mov L0x7fffffffdb58 a07;
mov L0x7fffffffdb60 a10;
mov L0x7fffffffdb68 a11;
mov L0x7fffffffdb70 a12;
mov L0x7fffffffdb78 a13;
mov L0x7fffffffdb80 a14;
mov L0x7fffffffdb88 a15;
mov L0x7fffffffdb90 a16;
mov L0x7fffffffdb98 a17;

mov L0x555555569400 $p503x2_0@uint64;
mov L0x555555569408 $p503x2_1@uint64;
mov L0x555555569410 $p503x2_2@uint64;
mov L0x555555569418 $p503x2_3@uint64;
mov L0x555555569420 $p503x2_4@uint64;
mov L0x555555569428 $p503x2_5@uint64;
mov L0x555555569430 $p503x2_6@uint64;
mov L0x555555569438 $p503x2_7@uint64;

nondet rdi@uint64;

(* ===== Program ===== *)

(* #! -> SP = 0x7fffffffd948 *)
#! 0x7fffffffd948 = 0x7fffffffd948;
(* mov    %rdi,%rbx                                #! PC = 0x555555558435 *)
mov rbx rdi;
(* #callq  0x555555561fd0 <fpneg503>               #! PC = 0x555555558438 *)
#callq  0x555555561fd0 <fpneg503>               #! 0x555555558438 = 0x555555558438;
(* #! -> SP = 0x7fffffffd938 *)
#! 0x7fffffffd938 = 0x7fffffffd938;
(* mov    0x7425(%rip),%rcx        # 0x555555569400 <p503x2>#! EA = L0x555555569400; Value = 0xfffffffffffffffe; PC = 0x555555561fd4 *)
mov rcx L0x555555569400;
(* mov    (%rdi),%rsi                              #! EA = L0x7fffffffdb20; Value = 0xa243b46363e809c1; PC = 0x555555561fdb *)
mov rsi L0x7fffffffdb20;
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
(* mov    0x8(%rdi),%r10                           #! EA = L0x7fffffffdb28; Value = 0x5ff371f8651146ff; PC = 0x555555561ff3 *)
mov r10 L0x7fffffffdb28;
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
(* mov    0x10(%rdi),%r8                           #! EA = L0x7fffffffdb30; Value = 0x4a346dc20166649d; PC = 0x55555556201a *)
mov r8 L0x7fffffffdb30;
(* mov    %rax,0x8(%rdi)                           #! EA = L0x7fffffffdb28; PC = 0x55555556201e *)
mov L0x7fffffffdb28 rax;
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
(* mov    0x18(%rdi),%r8                           #! EA = L0x7fffffffdb38; Value = 0x9fd166de5f7ee830; PC = 0x555555562044 *)
mov r8 L0x7fffffffdb38;
(* mov    %rax,0x10(%rdi)                          #! EA = L0x7fffffffdb30; PC = 0x555555562048 *)
mov L0x7fffffffdb30 rax;
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
(* mov    0x20(%rdi),%r8                           #! EA = L0x7fffffffdb40; Value = 0x6d75466ed202b96f; PC = 0x55555556206e *)
mov r8 L0x7fffffffdb40;
(* mov    %rax,0x18(%rdi)                          #! EA = L0x7fffffffdb38; PC = 0x555555562072 *)
mov L0x7fffffffdb38 rax;
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
(* mov    0x28(%rdi),%r8                           #! EA = L0x7fffffffdb48; Value = 0x94e4c6f784d2868c; PC = 0x555555562098 *)
mov r8 L0x7fffffffdb48;
(* mov    %rax,0x20(%rdi)                          #! EA = L0x7fffffffdb40; PC = 0x55555556209c *)
mov L0x7fffffffdb40 rax;
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
(* mov    0x30(%rdi),%r8                           #! EA = L0x7fffffffdb50; Value = 0xe836cab7ec964a2a; PC = 0x5555555620c2 *)
mov r8 L0x7fffffffdb50;
(* mov    %rax,0x28(%rdi)                          #! EA = L0x7fffffffdb48; PC = 0x5555555620c6 *)
mov L0x7fffffffdb48 rax;
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
(* mov    0x38(%rdi),%r8                           #! EA = L0x7fffffffdb58; Value = 0x0030181b9147b5b3; PC = 0x5555555620ec *)
mov r8 L0x7fffffffdb58;
(* mov    %rax,0x30(%rdi)                          #! EA = L0x7fffffffdb50; PC = 0x5555555620f0 *)
mov L0x7fffffffdb50 rax;
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
(* mov    %rcx,(%rdi)                              #! EA = L0x7fffffffdb20; PC = 0x555555562108 *)
mov L0x7fffffffdb20 rcx;
(* mov    %rax,0x38(%rdi)                          #! EA = L0x7fffffffdb58; PC = 0x55555556210b *)
mov L0x7fffffffdb58 rax;
(* #! <- SP = 0x7fffffffd938 *)
#! 0x7fffffffd938 = 0x7fffffffd938;
(* #retq                                           #! PC = 0x55555556210f *)
#retq                                           #! 0x55555556210f = 0x55555556210f;
(* #jmpq   0x555555561fd0 <fpneg503>               #! PC = 0x555555558442 *)
#jmpq   0x555555561fd0 <fpneg503>               #! 0x555555558442 = 0x555555558442;
(* mov    0x7425(%rip),%rcx        # 0x555555569400 <p503x2>#! EA = L0x555555569400; Value = 0xfffffffffffffffe; PC = 0x555555561fd4 *)
mov rcx L0x555555569400;
(* mov    (%rdi),%rsi                              #! EA = L0x7fffffffdb60; Value = 0x05add279405d33d3; PC = 0x555555561fdb *)
mov rsi L0x7fffffffdb60;
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
(* mov    0x8(%rdi),%r10                           #! EA = L0x7fffffffdb68; Value = 0x6fe56e45508a7f59; PC = 0x555555561ff3 *)
mov r10 L0x7fffffffdb68;
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
(* mov    0x10(%rdi),%r8                           #! EA = L0x7fffffffdb70; Value = 0xf85792456f5b7bb8; PC = 0x55555556201a *)
mov r8 L0x7fffffffdb70;
(* mov    %rax,0x8(%rdi)                           #! EA = L0x7fffffffdb68; PC = 0x55555556201e *)
mov L0x7fffffffdb68 rax;
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
(* mov    0x18(%rdi),%r8                           #! EA = L0x7fffffffdb78; Value = 0xddedbab762899f47; PC = 0x555555562044 *)
mov r8 L0x7fffffffdb78;
(* mov    %rax,0x10(%rdi)                          #! EA = L0x7fffffffdb70; PC = 0x555555562048 *)
mov L0x7fffffffdb70 rax;
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
(* mov    0x20(%rdi),%r8                           #! EA = L0x7fffffffdb80; Value = 0x63631a4344b7644c; PC = 0x55555556206e *)
mov r8 L0x7fffffffdb80;
(* mov    %rax,0x18(%rdi)                          #! EA = L0x7fffffffdb78; PC = 0x555555562072 *)
mov L0x7fffffffdb78 rax;
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
(* mov    0x28(%rdi),%r8                           #! EA = L0x7fffffffdb88; Value = 0x000fb59ac0497847; PC = 0x555555562098 *)
mov r8 L0x7fffffffdb88;
(* mov    %rax,0x20(%rdi)                          #! EA = L0x7fffffffdb80; PC = 0x55555556209c *)
mov L0x7fffffffdb80 rax;
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
(* mov    0x30(%rdi),%r8                           #! EA = L0x7fffffffdb90; Value = 0x7f201bda92136157; PC = 0x5555555620c2 *)
mov r8 L0x7fffffffdb90;
(* mov    %rax,0x28(%rdi)                          #! EA = L0x7fffffffdb88; PC = 0x5555555620c6 *)
mov L0x7fffffffdb88 rax;
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
(* mov    0x38(%rdi),%r8                           #! EA = L0x7fffffffdb98; Value = 0x0001c8b2f7c1d063; PC = 0x5555555620ec *)
mov r8 L0x7fffffffdb98;
(* mov    %rax,0x30(%rdi)                          #! EA = L0x7fffffffdb90; PC = 0x5555555620f0 *)
mov L0x7fffffffdb90 rax;
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
(* mov    %rcx,(%rdi)                              #! EA = L0x7fffffffdb60; PC = 0x555555562108 *)
mov L0x7fffffffdb60 rcx;
(* mov    %rax,0x38(%rdi)                          #! EA = L0x7fffffffdb98; PC = 0x55555556210b *)
mov L0x7fffffffdb98 rax;
(* #! <- SP = 0x7fffffffd948 *)
#! 0x7fffffffd948 = 0x7fffffffd948;
(* #retq                                           #! PC = 0x55555556210f *)
#retq                                           #! 0x55555556210f = 0x55555556210f;

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
      (neg (limbs 64 [ a00, a01, a02, a03, a04, a05, a06, a07 ]))
      (limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                  $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ]),
    eqsmod
      (limbs 64 [ c10, c11, c12, c13, c14, c15, c16, c17 ])
      (neg (limbs 64 [ a10, a11, a12, a13, a14, a15, a16, a17 ]))
      (limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                  $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ]),
    1@512 <=u limbs 64 [c00, c01, c02, c03, c04, c05, c06, c07],
    limbs 64 [c00, c01, c02, c03, c04, c05, c06, c07] <=u
      (2@512 * limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                          $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ]),
    1@512 <=u limbs 64 [c10, c11, c12, c13, c14, c15, c16, c17],
    limbs 64 [c10, c11, c12, c13, c14, c15, c16, c17] <=u
      (2@512 * limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                          $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ])
  ]
}
