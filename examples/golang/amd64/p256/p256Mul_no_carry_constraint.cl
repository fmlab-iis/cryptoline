(* popper: cv -v -jobs 24 -isafety -slicing -no_carry_constraint p256Mul_no_carry_constraint.cl
Parsing CryptoLine file:			[OK]		0.0014 seconds
Checking well-formedness:			[OK]		0.0007 seconds

Procedure main
--------------
Transforming to SSA form:			[OK]		0.0001 seconds
Normalizing specification:			[OK]		0.0002 seconds
Rewriting assignments:				[OK]		0.0002 seconds
Verifying program safety:
	Overall					[OK]		0.0083 seconds
Verifying range assertions:			[OK]		26.5705 seconds
Verifying range specification:			[OK]		2.8034 seconds
Rewriting value-preserved casting:		[OK]		0.0002 seconds
Verifying algebraic assertions:			[OK]		0.0003 seconds
Verifying algebraic specification:		[OK]		0.0976 seconds
Procedure verification:				[OK]		29.4809 seconds

Summary
-------
Verification result:				[OK]		29.4831 seconds
*)


const P256_0 = 0xffffffffffffffff
const P256_1 = 0x00000000ffffffff
const P256_2 = 0x0000000000000000
const P256_3 = 0xffffffff00000001

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3) =
{
  true
&&
  and [limbs 64 [a0, a1, a2, a3] <u
       limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64],
       limbs 64 [b0, b1, b2, b3] <u
       limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]]
}

mov L0xc0000b1c90 a0; mov L0xc0000b1c98 a1;
mov L0xc0000b1ca0 a2; mov L0xc0000b1ca8 a3;
mov L0xc0000b1d60 b0; mov L0xc0000b1d68 b1;
mov L0xc0000b1d70 b2; mov L0xc0000b1d78 b3;

mov L0x539b00 0xffffffff00000001@uint64;
mov L0x539af8 0x00000000ffffffff@uint64;

(* crypto/elliptic.p256Mul.abi0: *)
#crypto/elliptic.p256Mul.abi0:;
(* #! -> SP = 0xc0000b1ac8 *)
#! 0xc0000b1ac8 = 0xc0000b1ac8;
(* mov    0x8(%rsp),%rdi                           #! EA = L0xc0000b1ad0; Value = 0x000000c0000b1b18; PC = 0x4c7b00 *)
#mov rdi L0xc0000b1ad0;
(* mov    0x20(%rsp),%rsi                          #! EA = L0xc0000b1ae8; Value = 0x000000c0000b1c90; PC = 0x4c7b05 *)
#mov rsi L0xc0000b1ae8;
(* mov    0x38(%rsp),%rcx                          #! EA = L0xc0000b1b00; Value = 0x000000c0000b1d60; PC = 0x4c7b0a *)
#mov rcx L0xc0000b1b00;
(* mov    (%rcx),%r14                              #! EA = L0xc0000b1d60; Value = 0x20ed8268fbeca235; PC = 0x4c7b0f *)
mov r14 L0xc0000b1d60;
(* mov    (%rsi),%rax                              #! EA = L0xc0000b1c90; Value = 0x6978f9c9439c4424; PC = 0x4c7b12 *)
mov rax L0xc0000b1c90;
(* mul    %r14                                     #! PC = 0x4c7b15 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* mov    %rax,%r8                                 #! PC = 0x4c7b18 *)
mov r8 rax;
(* mov    %rdx,%r9                                 #! PC = 0x4c7b1b *)
mov r9 rdx;
(* mov    0x8(%rsi),%rax                           #! EA = L0xc0000b1c98; Value = 0x9c09cb4c53b9c62b; PC = 0x4c7b1e *)
mov rax L0xc0000b1c98;
(* mul    %r14                                     #! PC = 0x4c7b22 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c7b25 *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c7b28 *)
adcs carry rdx rdx 0x0@uint64 carry;

assert true && carry = 0@1;
assume carry=0 && true;

(* mov    %rdx,%r10                                #! PC = 0x4c7b2c *)
mov r10 rdx;
(* mov    0x10(%rsi),%rax                          #! EA = L0xc0000b1ca0; Value = 0x9dd5af124e597397; PC = 0x4c7b2f *)
mov rax L0xc0000b1ca0;
(* mul    %r14                                     #! PC = 0x4c7b33 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r10                                #! PC = 0x4c7b36 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c7b39 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r11                                #! PC = 0x4c7b3d *)
mov r11 rdx;
(* mov    0x18(%rsi),%rax                          #! EA = L0xc0000b1ca8; Value = 0x2abc3e35d6085e89; PC = 0x4c7b40 *)
mov rax L0xc0000b1ca8;
(* mul    %r14                                     #! PC = 0x4c7b44 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r11                                #! PC = 0x4c7b47 *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c7b4a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r12                                #! PC = 0x4c7b4e *)
mov r12 rdx;
(* xor    %r13,%r13                                #! PC = 0x4c7b51 *)
mov r13 0@uint64;
clear carry;
clear overflow;
(* mov    %r8,%rax                                 #! PC = 0x4c7b54 *)
mov rax r8;
(* mov    %r8,%r15                                 #! PC = 0x4c7b57 *)
mov r15 r8;
(* shl    $0x20,%r8                                #! PC = 0x4c7b5a *)
split ddc r8 r8 32;
shl r8 r8 32;
(* mulq   0x71f9b(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c7b5e *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%r15                               #! PC = 0x4c7b65 *)
#shr    $0x20,%%r15                               #! 0x4c7b65 = 0x4c7b65;
split r15 dc r15 32;

(* NOTE: related variables *)
assert true && r15 = ddc;
assume r15 = ddc && true;

(* add    %r8,%r9                                  #! PC = 0x4c7b69 *)
adds carry r9 r9 r8;
(* adc    %r15,%r10                                #! PC = 0x4c7b6c *)
adcs carry r10 r10 r15 carry;
(* adc    %rax,%r11                                #! PC = 0x4c7b6f *)
adcs carry r11 r11 rax carry;
(* adc    %rdx,%r12                                #! PC = 0x4c7b72 *)
adcs carry r12 r12 rdx carry;
(* adc    $0x0,%r13                                #! PC = 0x4c7b75 *)
adcs carry r13 r13 0x0@uint64 carry;

assert true && carry = 0@1;
assume carry=0 && true;


(* xor    %r8,%r8                                  #! PC = 0x4c7b79 *)
mov r8 0@uint64;
clear carry;
clear overflow;
(* mov    0x8(%rcx),%r14                           #! EA = L0xc0000b1d68; Value = 0xa18fde72432d4d27; PC = 0x4c7b7c *)
mov r14 L0xc0000b1d68;
(* mov    (%rsi),%rax                              #! EA = L0xc0000b1c90; Value = 0x6978f9c9439c4424; PC = 0x4c7b80 *)
mov rax L0xc0000b1c90;
(* mul    %r14                                     #! PC = 0x4c7b83 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c7b86 *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c7b89 *)
adcs carry rdx rdx 0x0@uint64 carry;

assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r15                                #! PC = 0x4c7b8d *)
mov r15 rdx;
(* mov    0x8(%rsi),%rax                           #! EA = L0xc0000b1c98; Value = 0x9c09cb4c53b9c62b; PC = 0x4c7b90 *)
mov rax L0xc0000b1c98;
(* mul    %r14                                     #! PC = 0x4c7b94 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %r15,%r10                                #! PC = 0x4c7b97 *)
adds carry r10 r10 r15;
(* adc    $0x0,%rdx                                #! PC = 0x4c7b9a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c7b9e *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c7ba1 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r15                                #! PC = 0x4c7ba5 *)
mov r15 rdx;
(* mov    0x10(%rsi),%rax                          #! EA = L0xc0000b1ca0; Value = 0x9dd5af124e597397; PC = 0x4c7ba8 *)
mov rax L0xc0000b1ca0;
(* mul    %r14                                     #! PC = 0x4c7bac *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %r15,%r11                                #! PC = 0x4c7baf *)
adds carry r11 r11 r15;
(* adc    $0x0,%rdx                                #! PC = 0x4c7bb2 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r11                                #! PC = 0x4c7bb6 *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c7bb9 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r15                                #! PC = 0x4c7bbd *)
mov r15 rdx;
(* mov    0x18(%rsi),%rax                          #! EA = L0xc0000b1ca8; Value = 0x2abc3e35d6085e89; PC = 0x4c7bc0 *)
mov rax L0xc0000b1ca8;
(* mul    %r14                                     #! PC = 0x4c7bc4 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %r15,%r12                                #! PC = 0x4c7bc7 *)
adds carry r12 r12 r15;
(* adc    $0x0,%rdx                                #! PC = 0x4c7bca *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r12                                #! PC = 0x4c7bce *)
adds carry r12 r12 rax;
(* adc    %rdx,%r13                                #! PC = 0x4c7bd1 *)
adcs carry r13 r13 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4c7bd4 *)
adcs carry r8 r8 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r9,%rax                                 #! PC = 0x4c7bd8 *)
mov rax r9;
(* mov    %r9,%r15                                 #! PC = 0x4c7bdb *)
mov r15 r9;
(* shl    $0x20,%r9                                #! PC = 0x4c7bde *)
split ddc r9 r9 32;
shl r9 r9 32;
(* mulq   0x71f17(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c7be2 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%r15                               #! PC = 0x4c7be9 *)
#shr    $0x20,%%r15                               #! 0x4c7be9 = 0x4c7be9;
split r15 dc r15 32;

(* NOTE: related variables *)
assert true && r15 = ddc;
assume r15 = ddc && true;

(* add    %r9,%r10                                 #! PC = 0x4c7bed *)
adds carry r10 r10 r9;
(* adc    %r15,%r11                                #! PC = 0x4c7bf0 *)
adcs carry r11 r11 r15 carry;
(* adc    %rax,%r12                                #! PC = 0x4c7bf3 *)
adcs carry r12 r12 rax carry;
(* adc    %rdx,%r13                                #! PC = 0x4c7bf6 *)
adcs carry r13 r13 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4c7bf9 *)
adcs carry r8 r8 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;

(* xor    %r9,%r9                                  #! PC = 0x4c7bfd *)
mov r9 0@uint64;
clear carry;
clear overflow;
(* mov    0x10(%rcx),%r14                          #! EA = L0xc0000b1d70; Value = 0x29b50191d021feae; PC = 0x4c7c00 *)
mov r14 L0xc0000b1d70;
(* mov    (%rsi),%rax                              #! EA = L0xc0000b1c90; Value = 0x6978f9c9439c4424; PC = 0x4c7c04 *)
mov rax L0xc0000b1c90;
(* mul    %r14                                     #! PC = 0x4c7c07 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r10                                #! PC = 0x4c7c0a *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c7c0d *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r15                                #! PC = 0x4c7c11 *)
mov r15 rdx;
(* mov    0x8(%rsi),%rax                           #! EA = L0xc0000b1c98; Value = 0x9c09cb4c53b9c62b; PC = 0x4c7c14 *)
mov rax L0xc0000b1c98;
(* mul    %r14                                     #! PC = 0x4c7c18 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %r15,%r11                                #! PC = 0x4c7c1b *)
adds carry r11 r11 r15;
(* adc    $0x0,%rdx                                #! PC = 0x4c7c1e *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r11                                #! PC = 0x4c7c22 *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c7c25 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r15                                #! PC = 0x4c7c29 *)
mov r15 rdx;
(* mov    0x10(%rsi),%rax                          #! EA = L0xc0000b1ca0; Value = 0x9dd5af124e597397; PC = 0x4c7c2c *)
mov rax L0xc0000b1ca0;
(* mul    %r14                                     #! PC = 0x4c7c30 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %r15,%r12                                #! PC = 0x4c7c33 *)
adds carry r12 r12 r15;
(* adc    $0x0,%rdx                                #! PC = 0x4c7c36 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r12                                #! PC = 0x4c7c3a *)
adds carry r12 r12 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c7c3d *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r15                                #! PC = 0x4c7c41 *)
mov r15 rdx;
(* mov    0x18(%rsi),%rax                          #! EA = L0xc0000b1ca8; Value = 0x2abc3e35d6085e89; PC = 0x4c7c44 *)
mov rax L0xc0000b1ca8;
(* mul    %r14                                     #! PC = 0x4c7c48 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %r15,%r13                                #! PC = 0x4c7c4b *)
adds carry r13 r13 r15;
(* adc    $0x0,%rdx                                #! PC = 0x4c7c4e *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r13                                #! PC = 0x4c7c52 *)
adds carry r13 r13 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4c7c55 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4c7c58 *)
adcs carry r9 r9 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r10,%rax                                #! PC = 0x4c7c5c *)
mov rax r10;
(* mov    %r10,%r15                                #! PC = 0x4c7c5f *)
mov r15 r10;
(* shl    $0x20,%r10                               #! PC = 0x4c7c62 *)
split ddc r10 r10 32;
shl r10 r10 32;
(* mulq   0x71e93(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c7c66 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%r15                               #! PC = 0x4c7c6d *)
#shr    $0x20,%%r15                               #! 0x4c7c6d = 0x4c7c6d;
split r15 dc r15 32;

(* NOTE: related variables *)
assert true && r15 = ddc;
assume r15 = ddc && true;

(* add    %r10,%r11                                #! PC = 0x4c7c71 *)
adds carry r11 r11 r10;
(* adc    %r15,%r12                                #! PC = 0x4c7c74 *)
adcs carry r12 r12 r15 carry;
(* adc    %rax,%r13                                #! PC = 0x4c7c77 *)
adcs carry r13 r13 rax carry;
(* adc    %rdx,%r8                                 #! PC = 0x4c7c7a *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4c7c7d *)
adcs carry r9 r9 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;


(* xor    %r10,%r10                                #! PC = 0x4c7c81 *)
mov r10 0@uint64;
clear carry;
clear overflow;
(* mov    0x18(%rcx),%r14                          #! EA = L0xc0000b1d78; Value = 0x5d290b473add4856; PC = 0x4c7c84 *)
mov r14 L0xc0000b1d78;
(* mov    (%rsi),%rax                              #! EA = L0xc0000b1c90; Value = 0x6978f9c9439c4424; PC = 0x4c7c88 *)
mov rax L0xc0000b1c90;
(* mul    %r14                                     #! PC = 0x4c7c8b *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r11                                #! PC = 0x4c7c8e *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c7c91 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r15                                #! PC = 0x4c7c95 *)
mov r15 rdx;
(* mov    0x8(%rsi),%rax                           #! EA = L0xc0000b1c98; Value = 0x9c09cb4c53b9c62b; PC = 0x4c7c98 *)
mov rax L0xc0000b1c98;
(* mul    %r14                                     #! PC = 0x4c7c9c *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %r15,%r12                                #! PC = 0x4c7c9f *)
adds carry r12 r12 r15;
(* adc    $0x0,%rdx                                #! PC = 0x4c7ca2 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r12                                #! PC = 0x4c7ca6 *)
adds carry r12 r12 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c7ca9 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r15                                #! PC = 0x4c7cad *)
mov r15 rdx;
(* mov    0x10(%rsi),%rax                          #! EA = L0xc0000b1ca0; Value = 0x9dd5af124e597397; PC = 0x4c7cb0 *)
mov rax L0xc0000b1ca0;
(* mul    %r14                                     #! PC = 0x4c7cb4 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %r15,%r13                                #! PC = 0x4c7cb7 *)
adds carry r13 r13 r15;
(* adc    $0x0,%rdx                                #! PC = 0x4c7cba *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r13                                #! PC = 0x4c7cbe *)
adds carry r13 r13 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c7cc1 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r15                                #! PC = 0x4c7cc5 *)
mov r15 rdx;
(* mov    0x18(%rsi),%rax                          #! EA = L0xc0000b1ca8; Value = 0x2abc3e35d6085e89; PC = 0x4c7cc8 *)
mov rax L0xc0000b1ca8;
(* mul    %r14                                     #! PC = 0x4c7ccc *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %r15,%r8                                 #! PC = 0x4c7ccf *)
adds carry r8 r8 r15;
(* adc    $0x0,%rdx                                #! PC = 0x4c7cd2 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r8                                 #! PC = 0x4c7cd6 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4c7cd9 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4c7cdc *)
adcs carry r10 r10 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r11,%rax                                #! PC = 0x4c7ce0 *)
mov rax r11;
(* mov    %r11,%r15                                #! PC = 0x4c7ce3 *)
mov r15 r11;
(* shl    $0x20,%r11                               #! PC = 0x4c7ce6 *)
split ddc r11 r11 32;
shl r11 r11 32;
(* mulq   0x71e0f(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c7cea *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%r15                               #! PC = 0x4c7cf1 *)
#shr    $0x20,%%r15                               #! 0x4c7cf1 = 0x4c7cf1;
split r15 dc r15 32;

(* NOTE: related variables *)
assert true && r15 = ddc;
assume r15 = ddc && true;

(* add    %r11,%r12                                #! PC = 0x4c7cf5 *)
adds carry r12 r12 r11;
(* adc    %r15,%r13                                #! PC = 0x4c7cf8 *)
adcs carry r13 r13 r15 carry;
(* adc    %rax,%r8                                 #! PC = 0x4c7cfb *)
adcs carry r8 r8 rax carry;
(* adc    %rdx,%r9                                 #! PC = 0x4c7cfe *)
adcs carry0 r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4c7d01 *)
adcs carry r10 r10 0x0@uint64 carry0;

assert true && carry = 0@1;
assume carry = 0 && true;

ghost r12o@uint64, r13o@uint64, r8o@uint64, r9o@uint64, r10o@uint64 :
      and [r12o=r12, r13o=r13, r8o=r8, r9o=r9, r10o=r10]
   && and [r12o=r12, r13o=r13, r8o=r8, r9o=r9, r10o=r10];


(* mov    %r12,%rsi                                #! PC = 0x4c7d05 *)
mov rsi r12;
(* mov    %r13,%r11                                #! PC = 0x4c7d08 *)
mov r11 r13;
(* mov    %r8,%r14                                 #! PC = 0x4c7d0b *)
mov r14 r8;
(* mov    %r9,%r15                                 #! PC = 0x4c7d0e *)
mov r15 r9;
(* sub    $0xffffffffffffffff,%r12                 #! PC = 0x4c7d11 *)
subb carry r12 r12 0xffffffffffffffff@uint64;
(* sbb    0x71ddc(%rip),%r13        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c7d15 *)
#sbb    %%L0x539af8,%%r13        # 0x539af8 <p256const0>#! L0x539af8 = L0x539af8; 0x00000000ffffffff = 0x00000000ffffffff; 0x4c7d15 = 0x4c7d15;
sbbs carry r13 r13 L0x539af8 carry;
(* sbb    $0x0,%r8                                 #! PC = 0x4c7d1c *)
sbbs carry r8 r8 0x0@uint64 carry;
(* sbb    0x71dd9(%rip),%r9        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c7d20 *)
#sbb    %%L0x539b00,%%r9        # 0x539b00 <p256const1>#! L0x539b00 = L0x539b00; 0xffffffff00000001 = 0xffffffff00000001; 0x4c7d20 = 0x4c7d20;
sbbs carry1 r9 r9 L0x539b00 carry;
(* sbb    $0x0,%r10                                #! PC = 0x4c7d27 *)
sbbs carry r10 r10 0x0@uint64 carry1;



(* cmovb  %rsi,%r12                                #! PC = 0x4c7d2b *)
cmov r12 carry rsi r12;
(* cmovb  %r11,%r13                                #! PC = 0x4c7d2f *)
cmov r13 carry r11 r13;
(* cmovb  %r14,%r8                                 #! PC = 0x4c7d33 *)
cmov r8 carry r14 r8;
(* cmovb  %r15,%r9                                 #! PC = 0x4c7d37 *)
cmov r9 carry r15 r9;

assert true &&
       eqmod (limbs 64 [r12, r13, r8, r9, 0@64])
             (limbs 64 [r12o, r13o, r8o, r9o, r10o])
             (limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64, 0@64]);
assume eqmod (limbs 64 [r12, r13, r8, r9, 0])
             (limbs 64 [r12o, r13o, r8o, r9o, r10o])
             (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3, 0]) && true;


(* mov    %r12,(%rdi)                              #! EA = L0xc0000b1b18; PC = 0x4c7d3b *)
mov L0xc0000b1b18 r12;
(* mov    %r13,0x8(%rdi)                           #! EA = L0xc0000b1b20; PC = 0x4c7d3e *)
mov L0xc0000b1b20 r13;
(* mov    %r8,0x10(%rdi)                           #! EA = L0xc0000b1b28; PC = 0x4c7d42 *)
mov L0xc0000b1b28 r8;
(* mov    %r9,0x18(%rdi)                           #! EA = L0xc0000b1b30; PC = 0x4c7d46 *)
mov L0xc0000b1b30 r9;
(* #! <- SP = 0xc0000b1ac8 *)
#! 0xc0000b1ac8 = 0xc0000b1ac8;
(* #ret                                            #! PC = 0x4c7d4a *)
#ret                                            #! 0x4c7d4a = 0x4c7d4a;

mov r0 L0xc0000b1b18; mov r1 L0xc0000b1b20;
mov r2 L0xc0000b1b28; mov r3 L0xc0000b1b30;

{
  eqmod (limbs 64 [0, 0, 0, 0, r0, r1, r2, r3])
        (limbs 64 [a0, a1, a2, a3] * limbs 64 [b0, b1, b2, b3])
        (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
&&
  limbs 64 [r0, r1, r2, r3] <u
  limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]

}
