(* macbook: cv -v -jobs 8 -isafety p256Sqr.cl
Parsing CryptoLine file:            [OK]        0.0030 seconds
Checking well-formedness:           [OK]        0.0004 seconds

Procedure main
--------------
Transforming to SSA form:           [OK]        0.0006 seconds
Normalizing specification:          [OK]        0.0002 seconds
Rewriting assignments:              [OK]        0.0002 seconds
Verifying program safety:           
    Overall                 [OK]        0.0149 seconds
Verifying range assertions:         [OK]        55.5658 seconds
Verifying range specification:          [OK]        5.0680 seconds
Rewriting value-preserved casting:      [OK]        0.0000 seconds
Verifying algebraic assertions:         [OK]        0.0001 seconds
Verifying algebraic specification:      [OK]        0.0359 seconds
Procedure verification:             [OK]        60.6858 seconds

Summary
-------
Verification result:                [OK]        60.6893 seconds
*)


const P256_0 = 0xffffffffffffffff
const P256_1 = 0x00000000ffffffff
const P256_2 = 0x0000000000000000
const P256_3 = 0xffffffff00000001

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3) =
{
  true
&&
  limbs 64 [a0, a1, a2, a3] <u
  limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
}

mov L0xc0000cdd60 a0; mov L0xc0000cdd68 a1;
mov L0xc0000cdd70 a2; mov L0xc0000cdd78 a3;
mov L0x539b00 0xffffffff00000001@uint64;
mov L0x539af8 0x00000000ffffffff@uint64;

(* crypto/elliptic.p256Sqr.abi0: *)
#crypto/elliptic.p256Sqr.abi0:;
(* #! -> SP = 0xc0000cdac8 *)
#! 0xc0000cdac8 = 0xc0000cdac8;
(* mov    0x8(%rsp),%rdi                           #! EA = L0xc0000cdad0; Value = 0x000000c0000cdc90; PC = 0x4c7920 *)
#mov rdi L0xc0000cdad0;
(* mov    0x20(%rsp),%rsi                          #! EA = L0xc0000cdae8; Value = 0x000000c0000cdd60; PC = 0x4c7925 *)
#mov rsi L0xc0000cdae8;
(* mov    0x38(%rsp),%rbx                          #! EA = L0xc0000cdb00; Value = 0x0000000000000001; PC = 0x4c792a *)
#mov rbx L0xc0000cdb00;                        #! L0xc0000cdb00 = L0xc0000cdb00; 0x0000000000000001 = 0x0000000000000001; 0x4c792a = 0x4c792a;
(* mov    (%rsi),%r14                              #! EA = L0xc0000cdd60; Value = 0xee5fbd7e7c885766; PC = 0x4c792f *)
mov r14 L0xc0000cdd60;
(* mov    0x8(%rsi),%rax                           #! EA = L0xc0000cdd68; Value = 0x7feb8f3012c19a2c; PC = 0x4c7932 *)
mov rax L0xc0000cdd68;
(* mul    %r14                                     #! PC = 0x4c7936 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* mov    %rax,%r9                                 #! PC = 0x4c7939 *)
mov r9 rax;
(* mov    %rdx,%r10                                #! PC = 0x4c793c *)
mov r10 rdx;
(* mov    0x10(%rsi),%rax                          #! EA = L0xc0000cdd70; Value = 0xe7f6f8ce3046c7db; PC = 0x4c793f *)
mov rax L0xc0000cdd70;
(* mul    %r14                                     #! PC = 0x4c7943 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r10                                #! PC = 0x4c7946 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c7949 *)
adcs carry rdx rdx 0x0@uint64 carry;

assert true && carry = 0@1;
assume carry=0 && true;

(* mov    %rdx,%r11                                #! PC = 0x4c794d *)
mov r11 rdx;
(* mov    0x18(%rsi),%rax                          #! EA = L0xc0000cdd78; Value = 0xb6835029b014a723; PC = 0x4c7950 *)
mov rax L0xc0000cdd78;
(* mul    %r14                                     #! PC = 0x4c7954 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r11                                #! PC = 0x4c7957 *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c795a *)
adcs carry rdx rdx 0x0@uint64 carry;

assert true && carry = 0@1;
assume carry=0 && true;

(* mov    %rdx,%r12                                #! PC = 0x4c795e *)
mov r12 rdx;
(* mov    0x8(%rsi),%r14                           #! EA = L0xc0000cdd68; Value = 0x7feb8f3012c19a2c; PC = 0x4c7961 *)
mov r14 L0xc0000cdd68;
(* mov    0x10(%rsi),%rax                          #! EA = L0xc0000cdd70; Value = 0xe7f6f8ce3046c7db; PC = 0x4c7965 *)
mov rax L0xc0000cdd70;
(* mul    %r14                                     #! PC = 0x4c7969 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r11                                #! PC = 0x4c796c *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c796f *)
adcs carry rdx rdx 0x0@uint64 carry;

assert true && carry = 0@1;
assume carry=0 && true;

(* mov    %rdx,%r15                                #! PC = 0x4c7973 *)
mov r15 rdx;
(* mov    0x18(%rsi),%rax                          #! EA = L0xc0000cdd78; Value = 0xb6835029b014a723; PC = 0x4c7976 *)
mov rax L0xc0000cdd78;
(* mul    %r14                                     #! PC = 0x4c797a *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %r15,%r12                                #! PC = 0x4c797d *)
adds carry r12 r12 r15;
(* adc    $0x0,%rdx                                #! PC = 0x4c7980 *)
adcs carry rdx rdx 0x0@uint64 carry;

assert true && carry = 0@1;
assume carry=0 && true;

(* add    %rax,%r12                                #! PC = 0x4c7984 *)
adds carry r12 r12 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c7987 *)
adcs carry rdx rdx 0x0@uint64 carry;

assert true && carry = 0@1;
assume carry=0 && true;

(* mov    %rdx,%r13                                #! PC = 0x4c798b *)
mov r13 rdx;
(* mov    0x10(%rsi),%r14                          #! EA = L0xc0000cdd70; Value = 0xe7f6f8ce3046c7db; PC = 0x4c798e *)
mov r14 L0xc0000cdd70;
(* mov    0x18(%rsi),%rax                          #! EA = L0xc0000cdd78; Value = 0xb6835029b014a723; PC = 0x4c7992 *)
mov rax L0xc0000cdd78;
(* mul    %r14                                     #! PC = 0x4c7996 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r13                                #! PC = 0x4c7999 *)
adds carry r13 r13 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c799c *)
adcs carry rdx rdx 0x0@uint64 carry;

assert true && carry = 0@1;
assume carry=0 && true;

(* mov    %rdx,%rcx                                #! PC = 0x4c79a0 *)
mov rcx rdx;
(* xor    %r15,%r15                                #! PC = 0x4c79a3 *)
mov r15 0@uint64;
clear carry;
clear overflow;
(* add    %r9,%r9                                  #! PC = 0x4c79a6 *)
adds carry r9 r9 r9;
(* adc    %r10,%r10                                #! PC = 0x4c79a9 *)
adcs carry r10 r10 r10 carry;
(* adc    %r11,%r11                                #! PC = 0x4c79ac *)
adcs carry r11 r11 r11 carry;
(* adc    %r12,%r12                                #! PC = 0x4c79af *)
adcs carry r12 r12 r12 carry;
(* adc    %r13,%r13                                #! PC = 0x4c79b2 *)
adcs carry r13 r13 r13 carry;
(* adc    %rcx,%rcx                                #! PC = 0x4c79b5 *)
adcs carry rcx rcx rcx carry;
(* adc    $0x0,%r15                                #! PC = 0x4c79b8 *)
adcs carry r15 r15 0x0@uint64 carry;

assert true && carry = 0@1;
assume carry=0 && true;

(* mov    (%rsi),%rax                              #! EA = L0xc0000cdd60; Value = 0xee5fbd7e7c885766; PC = 0x4c79bc *)
mov rax L0xc0000cdd60;
(* mul    %rax                                     #! PC = 0x4c79bf *)
mull rdx rax rax rax;
subc carry dc rdx 1@uint64; mov overflow carry;
(* mov    %rax,%r8                                 #! PC = 0x4c79c2 *)
mov r8 rax;
(* mov    %rdx,%r14                                #! PC = 0x4c79c5 *)
mov r14 rdx;
(* mov    0x8(%rsi),%rax                           #! EA = L0xc0000cdd68; Value = 0x7feb8f3012c19a2c; PC = 0x4c79c8 *)
mov rax L0xc0000cdd68;
(* mul    %rax                                     #! PC = 0x4c79cc *)
mull rdx rax rax rax;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %r14,%r9                                 #! PC = 0x4c79cf *)
adds carry r9 r9 r14;
(* adc    %rax,%r10                                #! PC = 0x4c79d2 *)
adcs carry r10 r10 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c79d5 *)
adcs carry rdx rdx 0x0@uint64 carry;

assert true && carry = 0@1;
assume carry=0 && true;

(* mov    %rdx,%r14                                #! PC = 0x4c79d9 *)
mov r14 rdx;
(* mov    0x10(%rsi),%rax                          #! EA = L0xc0000cdd70; Value = 0xe7f6f8ce3046c7db; PC = 0x4c79dc *)
mov rax L0xc0000cdd70;
(* mul    %rax                                     #! PC = 0x4c79e0 *)
mull rdx rax rax rax;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %r14,%r11                                #! PC = 0x4c79e3 *)
adds carry r11 r11 r14;
(* adc    %rax,%r12                                #! PC = 0x4c79e6 *)
adcs carry r12 r12 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c79e9 *)
adcs carry rdx rdx 0x0@uint64 carry;

assert true && carry = 0@1;
assume carry=0 && true;

(* mov    %rdx,%r14                                #! PC = 0x4c79ed *)
mov r14 rdx;
(* mov    0x18(%rsi),%rax                          #! EA = L0xc0000cdd78; Value = 0xb6835029b014a723; PC = 0x4c79f0 *)
mov rax L0xc0000cdd78;
(* mul    %rax                                     #! PC = 0x4c79f4 *)
mull rdx rax rax rax;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %r14,%r13                                #! PC = 0x4c79f7 *)
adds carry r13 r13 r14;
(* adc    %rax,%rcx                                #! PC = 0x4c79fa *)
adcs carry rcx rcx rax carry;
(* adc    %rdx,%r15                                #! PC = 0x4c79fd *)
adcs carry r15 r15 rdx carry;

assert true && carry = 0@1;
assume carry=0 && true;

(* mov    %r15,%rsi                                #! PC = 0x4c7a00 *)
mov rsi r15;
(* mov    %r8,%rax                                 #! PC = 0x4c7a03 *)
mov rax r8;
(* mov    %r8,%r15                                 #! PC = 0x4c7a06 *)
mov r15 r8;
(* shl    $0x20,%r8                                #! PC = 0x4c7a09 *)
split ddc r8 r8 (64-0x20);
shl r8 r8 0x20@uint64;
(* mulq   0x720ec(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c7a0d *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%r15                               #! PC = 0x4c7a14 *)
split r15 dc r15 0x20;

assert true && ddc = r15;
assume ddc = r15 && true;

(* add    %r8,%r9                                  #! PC = 0x4c7a18 *)
adds carry r9 r9 r8;
(* adc    %r15,%r10                                #! PC = 0x4c7a1b *)
adcs carry r10 r10 r15 carry;
(* adc    %rax,%r11                                #! PC = 0x4c7a1e *)
adcs carry r11 r11 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c7a21 *)
adcs carry rdx rdx 0x0@uint64 carry;

assert true && carry = 0@1;
assume carry=0 && true;

(* mov    %rdx,%r8                                 #! PC = 0x4c7a25 *)
mov r8 rdx;
(* mov    %r9,%rax                                 #! PC = 0x4c7a28 *)
mov rax r9;
(* mov    %r9,%r15                                 #! PC = 0x4c7a2b *)
mov r15 r9;
(* shl    $0x20,%r9                                #! PC = 0x4c7a2e *)
split ddc r9 r9 (64-0x20);
shl r9 r9 0x20@uint64;
(* mulq   0x720c7(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c7a32 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%r15                               #! PC = 0x4c7a39 *)
split r15 dc r15 0x20;
assert true && ddc = r15;
assume ddc = r15 && true;
(* add    %r9,%r10                                 #! PC = 0x4c7a3d *)
adds carry r10 r10 r9;
(* adc    %r15,%r11                                #! PC = 0x4c7a40 *)
adcs carry r11 r11 r15 carry;
(* adc    %rax,%r8                                 #! PC = 0x4c7a43 *)
adcs carry r8 r8 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c7a46 *)
adcs carry rdx rdx 0x0@uint64 carry;

assert true && carry = 0@1;
assume carry=0 && true;

(* mov    %rdx,%r9                                 #! PC = 0x4c7a4a *)
mov r9 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c7a4d *)
mov rax r10;
(* mov    %r10,%r15                                #! PC = 0x4c7a50 *)
mov r15 r10;
(* shl    $0x20,%r10                               #! PC = 0x4c7a53 *)
split ddc r10 r10 (64-0x20);
shl r10 r10 0x20@uint64;
(* mulq   0x720a2(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c7a57 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%r15                               #! PC = 0x4c7a5e *)
split r15 dc r15 0x20;
assert true && ddc = r15;
assume ddc = r15 && true;
(* add    %r10,%r11                                #! PC = 0x4c7a62 *)
adds carry r11 r11 r10;
(* adc    %r15,%r8                                 #! PC = 0x4c7a65 *)
adcs carry r8 r8 r15 carry;
(* adc    %rax,%r9                                 #! PC = 0x4c7a68 *)
adcs carry r9 r9 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c7a6b *)
adcs carry rdx rdx 0x0@uint64 carry;

assert true && carry = 0@1;
assume carry=0 && true;

(* mov    %rdx,%r10                                #! PC = 0x4c7a6f *)
mov r10 rdx;
(* xor    %r14,%r14                                #! PC = 0x4c7a72 *)
mov r14 0@uint64;
clear carry;
clear overflow;
(* mov    %r11,%rax                                #! PC = 0x4c7a75 *)
mov rax r11;
(* mov    %r11,%r15                                #! PC = 0x4c7a78 *)
mov r15 r11;
(* shl    $0x20,%r11                               #! PC = 0x4c7a7b *)
split ddc r11 r11 (64-0x20);
shl r11 r11 0x20@uint64;
(* mulq   0x7207a(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c7a7f *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%r15                               #! PC = 0x4c7a86 *)
split r15 dc r15 0x20;
assert true && ddc = r15;
assume ddc = r15 && true;
(* add    %r11,%r8                                 #! PC = 0x4c7a8a *)
adds carry r8 r8 r11;
(* adc    %r15,%r9                                 #! PC = 0x4c7a8d *)
adcs carry r9 r9 r15 carry;
(* adc    %rax,%r10                                #! PC = 0x4c7a90 *)
adcs carry r10 r10 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c7a93 *)
adcs carry rdx rdx 0x0@uint64 carry;

assert true && carry = 0@1;
assume carry=0 && true;

(* mov    %rdx,%r11                                #! PC = 0x4c7a97 *)
mov r11 rdx;
(* adc    %r12,%r8                                 #! PC = 0x4c7a9a *)
adcs carry r8 r8 r12 carry;
(* adc    %r13,%r9                                 #! PC = 0x4c7a9d *)
adcs carry r9 r9 r13 carry;
(* adc    %rcx,%r10                                #! PC = 0x4c7aa0 *)
adcs carry r10 r10 rcx carry;
(* adc    %rsi,%r11                                #! PC = 0x4c7aa3 *)
adcs carry r11 r11 rsi carry;
(* adc    $0x0,%r14                                #! PC = 0x4c7aa6 *)
adcs carry r14 r14 0x0@uint64 carry;

assert true && carry = 0@1;
assume carry=0 && true;

(* mov    %r8,%r12                                 #! PC = 0x4c7aaa *)
mov r12 r8;
(* mov    %r9,%r13                                 #! PC = 0x4c7aad *)
mov r13 r9;
(* mov    %r10,%rcx                                #! PC = 0x4c7ab0 *)
mov rcx r10;
(* mov    %r11,%r15                                #! PC = 0x4c7ab3 *)
mov r15 r11;

ghost r8o@uint64, r9o@uint64, r10o@uint64, r11o@uint64, r14o@uint64 :
      and [r8o=r8, r9o=r9, r10o=r10, r11o=r11, r14o=r14]
   && and [r8o=r8, r9o=r9, r10o=r10, r11o=r11, r14o=r14];

(* sub    $0xffffffffffffffff,%r8                  #! PC = 0x4c7ab6 *)
subb carry r8 r8 0xffffffffffffffff@uint64;
(* sbb    0x72037(%rip),%r9        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c7aba *)
#sbb    %%L0x539af8,%%r9        # 0x539af8 <p256const0>#! L0x539af8 = L0x539af8; 0x00000000ffffffff = 0x00000000ffffffff; 0x4c7aba = 0x4c7aba;
sbbs carry r9 r9 L0x539af8 carry;
(* sbb    $0x0,%r10                                #! PC = 0x4c7ac1 *)
sbbs carry r10 r10 0x0@uint64 carry;
(* sbb    0x72034(%rip),%r11        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c7ac5 *)
#sbb    %%L0x539b00,%%r11        # 0x539b00 <p256const1>#! L0x539b00 = L0x539b00; 0xffffffff00000001 = 0xffffffff00000001; 0x4c7ac5 = 0x4c7ac5;
sbbs carry r11 r11 L0x539b00 carry;
(* sbb    $0x0,%r14                                #! PC = 0x4c7acc *)
sbbs carry r14 r14 0x0@uint64 carry;
(* cmovb  %r12,%r8                                 #! PC = 0x4c7ad0 *)
cmov r8 carry r12 r8;
(* cmovb  %r13,%r9                                 #! PC = 0x4c7ad4 *)
cmov r9 carry r13 r9;
(* cmovb  %rcx,%r10                                #! PC = 0x4c7ad8 *)
cmov r10 carry rcx r10;
(* cmovb  %r15,%r11                                #! PC = 0x4c7adc *)
cmov r11 carry r15 r11;


assert true &&
       eqmod (limbs 64 [r8, r9, r10, r11, 0@64])
             (limbs 64 [r8o, r9o, r10o, r11o, r14o])
             (limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64, 0@64]);
assume eqmod (limbs 64 [r8, r9, r10, r11, 0])
             (limbs 64 [r8o, r9o, r10o, r11o, r14o])
             (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3, 0]) && true;


(* mov    %r8,(%rdi)                               #! EA = L0xc0000cdc90; PC = 0x4c7ae0 *)
mov L0xc0000cdc90 r8;
(* mov    %r9,0x8(%rdi)                            #! EA = L0xc0000cdc98; PC = 0x4c7ae3 *)
mov L0xc0000cdc98 r9;
(* mov    %r10,0x10(%rdi)                          #! EA = L0xc0000cdca0; PC = 0x4c7ae7 *)
mov L0xc0000cdca0 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0xc0000cdca8; PC = 0x4c7aeb *)
mov L0xc0000cdca8 r11;
(* mov    %rdi,%rsi                                #! PC = 0x4c7aef *)
#mov rsi rdi;
(* dec    %rbx                                     #! PC = 0x4c7af2 *)
#dec    %rbx                                     #! 0x4c7af2 = 0x4c7af2;
(* #jne    0x4c792f <crypto/elliptic.p256Sqr+15>   #! PC = 0x4c7af5 *)
#jne    0x4c792f <crypto/elliptic.p256Sqr+15>   #! 0x4c7af5 = 0x4c7af5;
(* #! <- SP = 0xc0000cdac8 *)
#! 0xc0000cdac8 = 0xc0000cdac8;
(* #ret                                            #! PC = 0x4c7afb *)
#ret                                            #! 0x4c7afb = 0x4c7afb;

mov r0 L0xc0000cdc90; mov r1 L0xc0000cdc98;
mov r2 L0xc0000cdca0; mov r3 L0xc0000cdca8;

{
  eqmod (limbs 64 [0, 0, 0, 0, r0, r1, r2, r3])
        (limbs 64 [a0, a1, a2, a3] * limbs 64 [a0, a1, a2, a3])
        (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
&&
  limbs 64 [r0, r1, r2, r3] <u
  limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]

}

