(* quine: cv -v -isafety exercises/ecp_nistz256_from_mont.cl
Parsing Cryptoline file:		[OK]		0.002917 seconds
Checking well-formedness:		[OK]		0.000789 seconds
Transforming to SSA form:		[OK]		0.000300 seconds
Normalizing specification:		[OK]		0.000362 seconds
Rewriting assignments:			[OK]		0.000309 seconds
Verifying program safety:		
	 Cut 0
	     Round 1 (8 safety conditions, timeout = 300 seconds)
		 Safety condition #0	[OK]
		 Safety condition #2	[OK]
		 Safety condition #1	[OK]
		 Safety condition #4	[OK]
		 Safety condition #3	[OK]
		 Safety condition #6	[OK]
		 Safety condition #5	[OK]
		 Safety condition #7	[OK]
	 Overall			[OK]		0.342098 seconds
Verifying range assertions:		[OK]		3.972468 seconds
Verifying range specification:		[OK]		0.003091 seconds
Rewriting value-preserved casting:	[OK]		0.000047 seconds
Verifying algebraic assertions:		[OK]		0.000673 seconds
Verifying algebraic specification:	[OK]		0.104269 seconds
Verification result:			[OK]		4.428126 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
          uint64 m0, uint64 m1, uint64 m2, uint64 m3) =
{
  and [ m0 = 0xffffffffffffffff, m1 = 0x00000000ffffffff,
        m2 = 0x0000000000000000, m3 = 0xffffffff00000001
      ]
  &&
  and [ m0 = 0xffffffffffffffff@64, m1 = 0x00000000ffffffff@64,
        m2 = 0x0000000000000000@64, m3 = 0xffffffff00000001@64,
        limbs 64 [a0, a1, a2, a3] <u limbs 64 [m0, m1, m2, m3]
      ]
}
# R = 0x1 << 256

mov L0x7fffffffdc50 a0;
mov L0x7fffffffdc58 a1;
mov L0x7fffffffdc60 a2;
mov L0x7fffffffdc68 a3;

mov L0x55555557c000 0xffffffffffffffff@uint64;
mov L0x55555557c008 0x00000000ffffffff@uint64;
mov L0x55555557c010 0x0000000000000000@uint64;
mov L0x55555557c018 0xffffffff00000001@uint64;

(* ecp_nistz256_from_mont: *)
#ecp_nistz256_from_mont:;
(* #! -> SP = 0x7fffffffdc38 *)
#! 0x7fffffffdc38 = 0x7fffffffdc38;
(* push   %r12                                     #! EA = L0x7fffffffdc30; PC = 0x55555557db20 *)
#push   %%r12                                     #! L0x7fffffffdc30 = L0x7fffffffdc30; 0x55555557db20 = 0x55555557db20;
(* push   %r13                                     #! EA = L0x7fffffffdc28; PC = 0x55555557db22 *)
#push   %%r13                                     #! L0x7fffffffdc28 = L0x7fffffffdc28; 0x55555557db22 = 0x55555557db22;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdc50; Value = 0x0000000000000000; PC = 0x55555557db24 *)
mov rax L0x7fffffffdc50;
(* mov    -0x1b16(%rip),%r13        # 0x55555557c018#! EA = L0x55555557c018; Value = 0xffffffff00000001; PC = 0x55555557db27 *)
mov r13 L0x55555557c018;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffdc58; Value = 0x0000005000000019; PC = 0x55555557db2e *)
mov r9 L0x7fffffffdc58;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffdc60; Value = 0x0000001000000000; PC = 0x55555557db32 *)
mov r10 L0x7fffffffdc60;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffdc68; Value = 0x0000000000000000; PC = 0x55555557db36 *)
mov r11 L0x7fffffffdc68;
(* mov    %rax,%r8                                 #! PC = 0x55555557db3a *)
mov r8 rax;
(* mov    -0x1b3c(%rip),%r12        # 0x55555557c008#! EA = L0x55555557c008; Value = 0x00000000ffffffff; PC = 0x55555557db3d *)
mov r12 L0x55555557c008;
(* mov    %rax,%rcx                                #! PC = 0x55555557db44 *)
mov rcx rax;
(* shl    $0x20,%r8                                #! PC = 0x55555557db47 *)
split ddc r8 r8 32;
shl r8 r8 32;
(* mul    %r13                                     #! PC = 0x55555557db4b *)
mull rdx rax rax r13;
subb tmp dontcare rdx 1@uint64;
not carry@bit tmp;
not overflow@bit tmp;
(* shr    $0x20,%rcx                               #! PC = 0x55555557db4e *)
split rcx ddcc rcx 32;

(* NOTE: added *)
assert true && ddc = rcx;
assume ddc = rcx && true;

(* add    %r8,%r9                                  #! PC = 0x55555557db52 *)
adds carry r9 r9 r8;
(* adc    %rcx,%r10                                #! PC = 0x55555557db55 *)
adcs carry r10 r10 rcx carry;
(* adc    %rax,%r11                                #! PC = 0x55555557db58 *)
adcs carry r11 r11 rax carry;
(* mov    %r9,%rax                                 #! PC = 0x55555557db5b *)
mov rax r9;
(* adc    $0x0,%rdx                                #! PC = 0x55555557db5e *)
adc rdx rdx 0x0@uint64 carry;
(*
cut eqmod limbs 64 [ 0, r9, r10, r11, rdx]
          limbs 64 [a0, a1, a2, a3]
          limbs 64 [m0, m1, m2, m3]
    && 
    r9=rax;
*)
(* mov    %r9,%rcx                                 #! PC = 0x55555557db62 *)
mov rcx r9;
(* shl    $0x20,%r9                                #! PC = 0x55555557db65 *)
split ddc r9 r9 32;
shl r9 r9 32;
(* mov    %rdx,%r8                                 #! PC = 0x55555557db69 *)
mov r8 rdx;
(* mul    %r13                                     #! PC = 0x55555557db6c *)
mull rdx rax rax r13;
subb tmp dontcare rdx 1@uint64;
not carry@bit tmp;
not overflow@bit tmp;
(* shr    $0x20,%rcx                               #! PC = 0x55555557db6f *)
split rcx ddcc rcx 32;

(* NOTE: added *)
assert true && ddc = rcx;
assume ddc = rcx && true;

(* add    %r9,%r10                                 #! PC = 0x55555557db73 *)
adds carry r10 r10 r9;
(* adc    %rcx,%r11                                #! PC = 0x55555557db76 *)
adcs carry r11 r11 rcx carry;
(* adc    %rax,%r8                                 #! PC = 0x55555557db79 *)
adcs carry r8 r8 rax carry;
(* mov    %r10,%rax                                #! PC = 0x55555557db7c *)
mov rax r10;
(* adc    $0x0,%rdx                                #! PC = 0x55555557db7f *)
adc rdx rdx 0x0@uint64 carry;
(*
cut eqmod limbs 64 [0, 0, r10, r11, r8, rdx]
          limbs 64 [a0, a1, a2, a3]
          limbs 64 [m0, m1, m2, m3]
    prove with [ precondition ]
    && 
    r10=rax;
*)

(* mov    %r10,%rcx                                #! PC = 0x55555557db83 *)
mov rcx r10;
(* shl    $0x20,%r10                               #! PC = 0x55555557db86 *)
split ddc r10 r10 32;
shl r10 r10 32;
(* mov    %rdx,%r9                                 #! PC = 0x55555557db8a *)
mov r9 rdx;
(* mul    %r13                                     #! PC = 0x55555557db8d *)
mull rdx rax rax r13;
subb tmp dontcare rdx 1@uint64;
not carry@bit tmp;
not overflow@bit tmp;
(* shr    $0x20,%rcx                               #! PC = 0x55555557db90 *)
split rcx ddcc rcx 32;

(* NOTE: added *)
assert true && ddc=rcx;
assume ddc=rcx && true;

(* add    %r10,%r11                                #! PC = 0x55555557db94 *)
adds carry r11 r11 r10;
(* adc    %rcx,%r8                                 #! PC = 0x55555557db97 *)
adcs carry r8 r8 rcx carry;
(* adc    %rax,%r9                                 #! PC = 0x55555557db9a *)
adcs carry r9 r9 rax carry;
(* mov    %r11,%rax                                #! PC = 0x55555557db9d *)
mov rax r11;
(* adc    $0x0,%rdx                                #! PC = 0x55555557dba0 *)
adc rdx rdx 0x0@uint64 carry;
(*
cut eqmod limbs 64 [0, 0, 0, r11, r8, r9, rdx]
          limbs 64 [a0, a1, a2, a3]
          limbs 64 [m0, m1, m2, m3]
    prove with [ precondition ]
    && 
    r11=rax;
*)
(* mov    %r11,%rcx                                #! PC = 0x55555557dba4 *)
mov rcx r11;
(* shl    $0x20,%r11                               #! PC = 0x55555557dba7 *)
split ddc r11 r11 32;
shl r11 r11 32;
(* mov    %rdx,%r10                                #! PC = 0x55555557dbab *)
mov r10 rdx;
(* mul    %r13                                     #! PC = 0x55555557dbae *)
mull rdx rax rax r13;
subb tmp dontcare rdx 1@uint64;
not carry@bit tmp;
not overflow@bit tmp;
(* shr    $0x20,%rcx                               #! PC = 0x55555557dbb1 *)
split rcx ddcc rcx 32;

assert true && ddc=rcx;
assume ddc=rcx && true;

(* add    %r11,%r8                                 #! PC = 0x55555557dbb5 *)
adds carry r8 r8 r11;
(* adc    %rcx,%r9                                 #! PC = 0x55555557dbb8 *)
adcs carry r9 r9 rcx carry;
(* mov    %r8,%rcx                                 #! PC = 0x55555557dbbb *)
mov rcx r8;
(* adc    %rax,%r10                                #! PC = 0x55555557dbbe *)
adcs carry r10 r10 rax carry;
(* mov    %r9,%rsi                                 #! PC = 0x55555557dbc1 *)
mov rsi r9;
(* adc    $0x0,%rdx                                #! PC = 0x55555557dbc4 *)
adc rdx rdx 0x0@uint64 carry;
(*
cut eqmod limbs 64 [0, 0, 0, 0, r8, r9, r10, rdx]
          limbs 64 [a0, a1, a2, a3]
          limbs 64 [m0, m1, m2, m3]
    prove with [ precondition ]
    && 
    and [r8=rcx, r9=rsi];
*)

ghost r8o@uint64, r9o@uint64, r10o@uint64, rdxo@uint64 :
      and [r8o=r8, r9o=r9, r10o=r10, rdxo=rdx]
   && and [r8o=r8, r9o=r9, r10o=r10, rdxo=rdx];
   
(* sub    $0xffffffffffffffff,%r8                  #! PC = 0x55555557dbc8 *)
subb carry r8 r8 0xffffffffffffffff@uint64;
(* mov    %r10,%rax                                #! PC = 0x55555557dbcc *)
mov rax r10;
(* sbb    %r12,%r9                                 #! PC = 0x55555557dbcf *)
sbbs carry r9 r9 r12 carry;
(* sbb    $0x0,%r10                                #! PC = 0x55555557dbd2 *)
sbbs carry r10 r10 0x0@uint64 carry;
(* mov    %rdx,%r11                                #! PC = 0x55555557dbd6 *)
mov r11 rdx;
(* sbb    %r13,%rdx                                #! PC = 0x55555557dbd9 *)
sbbs carry rdx rdx r13 carry;
(* sbb    %r13,%r13                                #! PC = 0x55555557dbdc *)
sbbs carry r13 r13 r13 carry;
mov overflow carry;
not zero@bit carry;
(* cmovne %rcx,%r8                                 #! PC = 0x55555557dbdf *)
cmov r8 zero r8 rcx;
(* cmovne %rsi,%r9                                 #! PC = 0x55555557dbe3 *)
cmov r9 zero r9 rsi;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdc90; PC = 0x55555557dbe7 *)
mov L0x7fffffffdc90 r8;
(* cmovne %rax,%r10                                #! PC = 0x55555557dbea *)
cmov r10 zero r10 rax;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffdc98; PC = 0x55555557dbee *)
mov L0x7fffffffdc98 r9;
(* cmove  %rdx,%r11                                #! PC = 0x55555557dbf2 *)
cmov r11 zero rdx r11;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffdca0; PC = 0x55555557dbf6 *)
mov L0x7fffffffdca0 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffdca8; PC = 0x55555557dbfa *)
mov L0x7fffffffdca8 r11;
(* mov    (%rsp),%r13                              #! EA = L0x7fffffffdc28; Value = 0x00007fffffffdde8; PC = 0x55555557dbfe *)
#mov    (%rsp),%%r13                              #! L0x7fffffffdc28 = L0x7fffffffdc28; 0x00007fffffffdde8 = 0x00007fffffffdde8; 0x55555557dbfe = 0x55555557dbfe;
(* mov    0x8(%rsp),%r12                           #! EA = L0x7fffffffdc30; Value = 0x0000000000000000; PC = 0x55555557dc02 *)
#mov    0x8(%rsp),%%r12                           #! L0x7fffffffdc30 = L0x7fffffffdc30; 0x0000000000000000 = 0x0000000000000000; 0x55555557dc02 = 0x55555557dc02;
(* lea    0x10(%rsp),%rsp                          #! PC = 0x55555557dc07 *)
#lea    0x10(%rsp),%rsp                          #! 0x55555557dc07 = 0x55555557dc07;
(* #! <- SP = 0x7fffffffdc38 *)
#! 0x7fffffffdc38 = 0x7fffffffdc38;
(* #repz ret                                       #! PC = 0x55555557dc0c *)
#repz ret                                       #! 0x55555557dc0c = 0x55555557dc0c;

mov c0 L0x7fffffffdc90;
mov c1 L0x7fffffffdc98;
mov c2 L0x7fffffffdca0;
mov c3 L0x7fffffffdca8;

assert true
    && eqmod (limbs 64 [c0, c1, c2, c3])
             (limbs 64 [r8o, r9o, r10o, rdxo])
             (limbs 64 [m0, m1, m2, m3]);
assume eqmod (limbs 64 [c0, c1, c2, c3])
             (limbs 64 [r8o, r9o, r10o, rdxo])
             (limbs 64 [m0, m1, m2, m3])
    && true;
    
{
  eqmod (limbs 64 [a0, a1, a2, a3])
        (limbs 64 [0, 0, 0, 0, c0, c1, c2, c3])
        (limbs 64 [m0, m1, m2, m3])
  &&
  true
}

(*
{
  eqmod limbs 64 [0, 0, 0, 0, a0, a1, a2, a3]
        limbs 64 [c0, c1, c2, c3]
        limbs 64 [m0, m1, m2, m3]
  &&
  limbs 64 [c0, c1, c2, c3] <u limbs 64 [m0, m1, m2, m3]
}
*)
