(* popper: cv -v -jobs 24 -isafety -slicing -no_carry_constraint
Parsing CryptoLine file:			[OK]		0.0007 seconds
Checking well-formedness:			[OK]		0.0002 seconds

Procedure main
--------------
Transforming to SSA form:			[OK]		0.0001 seconds
Normalizing specification:			[OK]		0.0001 seconds
Rewriting assignments:				[OK]		0.0001 seconds
Verifying program safety:
	Overall					[OK]		0.0069 seconds
Verifying range assertions:			[OK]		0.0716 seconds
Verifying range specification:			[OK]		0.0000 seconds
Rewriting value-preserved casting:		[OK]		0.0000 seconds
Verifying algebraic assertions:			[OK]		0.0000 seconds
Verifying algebraic specification:		[OK]		0.0752 seconds
Procedure verification:				[OK]		0.1541 seconds

Summary
-------
Verification result:				[OK]		0.1550 seconds
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
        ulimbs 64 [a0, a1, a2, a3] <u ulimbs 64 [m0, m1, m2, m3]
      ]
}

mov L0xc000095f58 0x000000c00018a140@uint64;
mov L0xc000095f60 0x000000c00018a120@uint64;

mov L0xc00018a120 a0;
mov L0xc00018a128 a1;
mov L0xc00018a130 a2;
mov L0xc00018a138 a3;

mov L0x4bef88 m1;
mov L0x4bef90 m3;


(* go_testing_env/nistec.P256FromMont: *)
#go_testing_env/nistec.P256FromMont:;
(* #! -> SP = 0xc000095f50 *)
#! 0xc000095f50 = 0xc000095f50;
(* mov    0x8(%rsp),%rdi                           #! EA = L0xc000095f58; Value = 0x000000c00018a140; PC = 0x47c6c0 *)
mov rdi L0xc000095f58;
(* mov    0x10(%rsp),%rsi                          #! EA = L0xc000095f60; Value = 0x000000c00018a120; PC = 0x47c6c5 *)
mov rsi L0xc000095f60;
(* mov    (%rsi),%r8                               #! EA = L0xc00018a120; Value = 0x0000000000000000; PC = 0x47c6ca *)
mov r8 L0xc00018a120;
(* mov    0x8(%rsi),%r9                            #! EA = L0xc00018a128; Value = 0x0000000000000000; PC = 0x47c6cd *)
mov r9 L0xc00018a128;
(* mov    0x10(%rsi),%r10                          #! EA = L0xc00018a130; Value = 0x0000000000000000; PC = 0x47c6d1 *)
mov r10 L0xc00018a130;
(* mov    0x18(%rsi),%r11                          #! EA = L0xc00018a138; Value = 0x0000000000000000; PC = 0x47c6d5 *)
mov r11 L0xc00018a138;
(* xor    %r12,%r12                                #! PC = 0x47c6d9 *)
mov r12 0@uint64;
clear carry;
clear overflow;
(* mov    %r8,%rax                                 #! PC = 0x47c6dc *)
mov rax r8;
(* mov    %r8,%r15                                 #! PC = 0x47c6df *)
mov r15 r8;
(* shl    $0x20,%r8                                #! PC = 0x47c6e2 *)
split ddc r8 r8 32;
shl r8 r8 32;
(* mulq   0x428a3(%rip)        # 0x4bef90 <p256const1>#! EA = L0x4bef90; PC = 0x47c6e6 *)
mull rdx rax rax L0x4bef90;
(* shr    $0x20,%r15                               #! PC = 0x47c6ed *)
split r15 ddcc r15 32;

assert true && ddc = r15;
assume ddc = r15 && true;

(* add    %r8,%r9                                  #! PC = 0x47c6f1 *)
adds carry r9 r9 r8;
(* adc    %r15,%r10                                #! PC = 0x47c6f4 *)
adcs carry r10 r10 r15 carry;
(* adc    %rax,%r11                                #! PC = 0x47c6f7 *)
adcs carry r11 r11 rax carry;
(* adc    %rdx,%r12                                #! PC = 0x47c6fa *)
adcs carry r12 r12 rdx carry;

(* NOTE: No Carry *)
assert true && carry = 0@1;
assume carry = 0 && true;

(* xor    %r13,%r13                                #! PC = 0x47c6fd *)
mov r13 0@uint64;
clear carry;
clear overflow;
(* mov    %r9,%rax                                 #! PC = 0x47c700 *)
mov rax r9;
(* mov    %r9,%r15                                 #! PC = 0x47c703 *)
mov r15 r9;
(* shl    $0x20,%r9                                #! PC = 0x47c706 *)
split ddc r9 r9 32;
shl r9 r9 32;
(* mulq   0x4287f(%rip)        # 0x4bef90 <p256const1>#! EA = L0x4bef90; PC = 0x47c70a *)
mull rdx rax rax L0x4bef90;
(* shr    $0x20,%r15                               #! PC = 0x47c711 *)
split r15 ddcc r15 32;

assert true && ddc = r15;
assume ddc = r15 && true;

(* add    %r9,%r10                                 #! PC = 0x47c715 *)
adds carry r10 r10 r9;
(* adc    %r15,%r11                                #! PC = 0x47c718 *)
adcs carry r11 r11 r15 carry;
(* adc    %rax,%r12                                #! PC = 0x47c71b *)
adcs carry r12 r12 rax carry;
(* adc    %rdx,%r13                                #! PC = 0x47c71e *)
adcs carry r13 r13 rdx carry;

(* NOTE: No Carry *)
assert true && carry = 0@1;
assume carry = 0 && true;

(* xor    %r8,%r8                                  #! PC = 0x47c721 *)
mov r8 0@uint64;
clear carry;
clear overflow;
(* mov    %r10,%rax                                #! PC = 0x47c724 *)
mov rax r10;
(* mov    %r10,%r15                                #! PC = 0x47c727 *)
mov r15 r10;
(* shl    $0x20,%r10                               #! PC = 0x47c72a *)
split ddc r10 r10 32;
shl r10 r10 32;
(* mulq   0x4285b(%rip)        # 0x4bef90 <p256const1>#! EA = L0x4bef90; PC = 0x47c72e *)
mull rdx rax rax L0x4bef90;
(* shr    $0x20,%r15                               #! PC = 0x47c735 *)
split r15 ddcc r15 32;

assert true && ddc = r15;
assume ddc = r15 && true;

(* add    %r10,%r11                                #! PC = 0x47c739 *)
adds carry r11 r11 r10;
(* adc    %r15,%r12                                #! PC = 0x47c73c *)
adcs carry r12 r12 r15 carry;
(* adc    %rax,%r13                                #! PC = 0x47c73f *)
adcs carry r13 r13 rax carry;
(* adc    %rdx,%r8                                 #! PC = 0x47c742 *)
adcs carry r8 r8 rdx carry;

(* NOTE: No Carry *)
assert true && carry = 0@1;
assume carry = 0 && true;

(* xor    %r9,%r9                                  #! PC = 0x47c745 *)
mov r9 0@uint64;
clear carry;
clear overflow;
(* mov    %r11,%rax                                #! PC = 0x47c748 *)
mov rax r11;
(* mov    %r11,%r15                                #! PC = 0x47c74b *)
mov r15 r11;
(* shl    $0x20,%r11                               #! PC = 0x47c74e *)
split ddc r11 r11 32;
shl r11 r11 32;
(* mulq   0x42837(%rip)        # 0x4bef90 <p256const1>#! EA = L0x4bef90; PC = 0x47c752 *)
mull rdx rax rax L0x4bef90;
(* shr    $0x20,%r15                               #! PC = 0x47c759 *)
split r15 ddcc r15 32;

assert true && ddc = r15;
assume ddc = r15 && true;

(* add    %r11,%r12                                #! PC = 0x47c75d *)
adds carry r12 r12 r11;
(* adc    %r15,%r13                                #! PC = 0x47c760 *)
adcs carry r13 r13 r15 carry;
(* adc    %rax,%r8                                 #! PC = 0x47c763 *)
adcs carry r8 r8 rax carry;
(* adc    %rdx,%r9                                 #! PC = 0x47c766 *)
adcs carry r9 r9 rdx carry;

(* NOTE: No Carry *)
assert true && carry = 0@1;
assume carry = 0 && true;

(* mov    %r12,%rsi                                #! PC = 0x47c769 *)
mov rsi r12;
(* mov    %r13,%r11                                #! PC = 0x47c76c *)
mov r11 r13;
(* mov    %r8,%r14                                 #! PC = 0x47c76f *)
mov r14 r8;
(* mov    %r9,%r15                                 #! PC = 0x47c772 *)
mov r15 r9;
(* sub    $0xffffffffffffffff,%r12                 #! PC = 0x47c775 *)
subb carry r12 r12 0xffffffffffffffff@uint64;
(* sbb    0x42808(%rip),%r13        # 0x4bef88 <p256const0>#! EA = L0x4bef88; Value = 0x00000000ffffffff; PC = 0x47c779 *)
sbbs carry r13 r13 L0x4bef88 carry;
(* sbb    $0x0,%r8                                 #! PC = 0x47c780 *)
sbbs carry r8 r8 0x0@uint64 carry;
(* sbb    0x42805(%rip),%r9        # 0x4bef90 <p256const1>#! EA = L0x4bef90; Value = 0xffffffff00000001; PC = 0x47c784 *)
sbbs carry r9 r9 L0x4bef90 carry;

assert true && carry * (1@1 - carry) = 0@1;
assume carry * (1 - carry) = 0 && true;

(* cmovb  %rsi,%r12                                #! PC = 0x47c78b *)
cmov r12 carry rsi r12;
(* cmovb  %r11,%r13                                #! PC = 0x47c78f *)
cmov r13 carry r11 r13;
(* cmovb  %r14,%r8                                 #! PC = 0x47c793 *)
cmov r8 carry r14 r8;
(* cmovb  %r15,%r9                                 #! PC = 0x47c797 *)
cmov r9 carry r15 r9;
(* mov    %r12,(%rdi)                              #! EA = L0xc00018a140; PC = 0x47c79b *)
mov L0xc00018a140 r12;
(* mov    %r13,0x8(%rdi)                           #! EA = L0xc00018a148; PC = 0x47c79e *)
mov L0xc00018a148 r13;
(* mov    %r8,0x10(%rdi)                           #! EA = L0xc00018a150; PC = 0x47c7a2 *)
mov L0xc00018a150 r8;
(* mov    %r9,0x18(%rdi)                           #! EA = L0xc00018a158; PC = 0x47c7a6 *)
mov L0xc00018a158 r9;
(* #! <- SP = 0xc000095f50 *)
#! 0xc000095f50 = 0xc000095f50;
(* #ret                                            #! PC = 0x47c7aa *)
#ret                                            #! 0x47c7aa = 0x47c7aa;

mov c0 L0xc00018a140;
mov c1 L0xc00018a148;
mov c2 L0xc00018a150;
mov c3 L0xc00018a158;

{
  eqmod (limbs 64 [a0, a1, a2, a3])
        (limbs 64 [0, 0, 0, 0, c0, c1, c2, c3])
        (limbs 64 [m0, m1, m2, m3])
  &&
  true
}

