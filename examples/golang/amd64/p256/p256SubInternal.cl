(* macbook: cv -v -jobs 8 -isafety p256SubInternal.cl
Parsing CryptoLine file:         [OK]     0.0020 seconds
Checking well-formedness:        [OK]     0.0001 seconds

Procedure main
--------------
Transforming to SSA form:        [OK]     0.0000 seconds
Normalizing specification:       [OK]     0.0001 seconds
Rewriting assignments:           [OK]     0.0001 seconds
Verifying program safety:        
   Overall              [OK]     0.0000 seconds
Verifying range assertions:         [OK]     0.1957 seconds
Verifying range specification:         [OK]     0.2421 seconds
Rewriting value-preserved casting:     [OK]     0.0000 seconds
Verifying algebraic assertions:        [OK]     0.0000 seconds
Verifying algebraic specification:     [OK]     0.0218 seconds
Procedure verification:          [OK]     0.4599 seconds

Summary
-------
Verification result:          [OK]     0.4621 seconds
*)


const P256_0 = 0xffffffffffffffff
const P256_1 = 0x00000000ffffffff
const P256_2 = 0x0000000000000000
const P256_3 = 0xffffffff00000001

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3) =
{
  true
&& and [limbs 64 [a0, a1, a2, a3] <u
        limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64],
        limbs 64 [b0, b1, b2, b3] <u
        limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]]
}
mov r10 a0; mov r11 a1; mov r12 a2; mov r13 a3;
mov r14 b0; mov r15 b1; mov rdi b2; mov rsi b3;

mov L0x539af8 $P256_1@uint64;
mov L0x539b00 $P256_3@uint64;

(* p256SubInternal: *)
#p256SubInternal:;
(* #! -> SP = 0xc0000c39b0 *)
#! 0xc0000c39b0 = 0xc0000c39b0;
(* xor    %rax,%rax                                #! PC = 0x4c8040 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* sub    %r14,%r10                                #! PC = 0x4c8043 *)
subb carry r10 r10 r14;
(* sbb    %r15,%r11                                #! PC = 0x4c8046 *)
sbbs carry r11 r11 r15 carry;
(* sbb    %rdi,%r12                                #! PC = 0x4c8049 *)
sbbs carry r12 r12 rdi carry;
(* sbb    %rsi,%r13                                #! PC = 0x4c804c *)
sbbs carry0 r13 r13 rsi carry;                                #! 0x4c804c = 0x4c804c;
(* sbb    $0x0,%rax                                #! PC = 0x4c804f *)
sbbs dc rax rax 0x0@uint64 carry0;
(* mov    %r10,%rbx                                #! PC = 0x4c8053 *)
mov rbx r10;
(* mov    %r11,%rcx                                #! PC = 0x4c8056 *)
mov rcx r11;
(* mov    %r12,%r8                                 #! PC = 0x4c8059 *)
mov r8 r12;
(* mov    %r13,%r9                                 #! PC = 0x4c805c *)
mov r9 r13;
(* add    $0xffffffffffffffff,%r10                 #! PC = 0x4c805f *)
adds carry r10 r10 0xffffffffffffffff@uint64;
(* adc    0x71a8e(%rip),%r11        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c8063 *)
adcs carry r11 r11 L0x539af8 carry;
(* adc    $0x0,%r12                                #! PC = 0x4c806a *)
adcs carry r12 r12 0x0@uint64 carry;
(* adc    0x71a8b(%rip),%r13        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c806e *)
adcs dc0 r13 r13 L0x539b00 carry;
(* and    $0x1,%rax                                #! PC = 0x4c8075 *)
and rax@uint64 rax 0x1@uint64;
subc zero dc 0@uint64 rax;

#assert true && (zero + 1@1)*(carry0)+(zero)*(carry0+1@1) = 1@1;
#assume zero=carry0+1  && true;
assert true && zero = 1@1 - carry0;
assume zero = 1 - carry0 && true;

#assert true && (dc0 - 1@1)*(carry0 - 0@1) = 0@1;
#assume (dc0- 1)*(carry0 - 0)= 0 && true;
assert true && (1@1 - dc0) * carry0 = 0@1;
assume (1 - dc0) * carry0 = 0 && true;

(* cmove  %rbx,%r10                                #! PC = 0x4c8079 *)
cmov r10 zero rbx r10;
(* cmove  %rcx,%r11                                #! PC = 0x4c807d *)
cmov r11 zero rcx r11;
(* cmove  %r8,%r12                                 #! PC = 0x4c8081 *)
cmov r12 zero r8 r12;
(* cmove  %r9,%r13                                 #! PC = 0x4c8085 *)
cmov r13 zero r9 r13;
(* #! <- SP = 0xc0000c39b0 *)
#! 0xc0000c39b0 = 0xc0000c39b0;
(* #ret                                            #! PC = 0x4c8089 *)
#ret                                            #! 0x4c8089 = 0x4c8089;

mov r0 r10; mov r1 r11; mov r2 r12; mov r3 r13;

{
   eqmod (limbs 64 [r0, r1, r2, r3])
         (limbs 64 [a0, a1, a2, a3] - limbs 64 [b0, b1, b2, b3])
         (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
&&
   limbs 64 [r0, r1, r2, r3] <u
   limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
}


