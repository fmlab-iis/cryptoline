(* quine:$ cv -v -isafety P256Sqr.cl
Parsing CryptoLine file:    [OK]    0.003569 seconds
Checking well-formedness:   [OK]    0.001243 seconds
Transforming to SSA form:   [OK]    0.000168 seconds
Normalizing specification:    [OK]    0.000227 seconds
Rewriting assignments:      [OK]    0.000177 seconds
Verifying program safety:   
   Cut 0
       Round 1 (4 safety conditions, timeout = 300 seconds)
     Safety condition #1  [OK]
     Safety condition #0  [OK]
     Safety condition #3  [OK]
     Safety condition #2  [OK]
   Overall      [OK]    0.153769 seconds
Verifying range assertions:   [OK]    2.233822 seconds
Verifying range specification:    [OK]    1.179647 seconds
Rewriting value-preserved casting:  [OK]    0.000087 seconds
Verifying algebraic assertions:   [OK]    0.058829 seconds
Verifying algebraic specification:  [OK]    0.135863 seconds
Verification result:      [OK]    3.767937 seconds

*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
          uint64 m0, uint64 m1, uint64 m2, uint64 m3) =
{
  and [ m0 = 0xffffffffffffffff, m1 = 0x00000000ffffffff,
        m2 = 0x0000000000000000, m3 = 0xffffffff00000001 ]
  &&
  and [ m0 = 0xffffffffffffffff@64, m1 = 0x00000000ffffffff@64,
        m2 = 0x0000000000000000@64, m3 = 0xffffffff00000001@64,
        limbs 64 [a0, a1, a2, a3] <u limbs 64 [m0, m1, m2, m3]
      ]
}


mov L0xc00006df40 0x000000c00001a2e0@uint64;
mov L0xc00006df48 0x000000c00001a2a0@uint64;

mov L0xc00006df50 1@uint64; (* only 1 square *)

mov L0xc00001a2a0 a0;
mov L0xc00001a2a8 a1;
mov L0xc00001a2b0 a2;
mov L0xc00001a2b8 a3;

mov L0x4befe0 m1;
mov L0x4befe8 m3;

(* go_testing_env/nistec.P256Sqr: *)
#go_testing_env/nistec.P256Sqr:;
(* #! -> SP = 0xc00006df38 *)
#! 0xc00006df38 = 0xc00006df38;
(* mov    0x8(%rsp),%rdi                           #! EA = L0xc00006df40; Value = 0x000000c00001a2e0; PC = 0x47c740 *)
mov rdi L0xc00006df40;
(* mov    0x10(%rsp),%rsi                          #! EA = L0xc00006df48; Value = 0x000000c00001a2a0; PC = 0x47c745 *)
mov rsi L0xc00006df48;
(* mov    0x18(%rsp),%rbx                          #! EA = L0xc00006df50; Value = 0x0000000000000001; PC = 0x47c74a *)
mov rbx L0xc00006df50;
(* mov    (%rsi),%r14                              #! EA = L0xc00001a2a0; Value = 0x0000000000000000; PC = 0x47c74f *)
mov r14 L0xc00001a2a0;
(* mov    0x8(%rsi),%rax                           #! EA = L0xc00001a2a8; Value = 0x0000000000000000; PC = 0x47c752 *)
mov rax L0xc00001a2a8;
(* mul    %r14                                     #! PC = 0x47c756 *)
mull rdx rax rax r14;
subb tmp dontcare rdx 1@uint64;
not carry@bit tmp;
not overflow@bit tmp;
(* mov    %rax,%r9                                 #! PC = 0x47c759 *)
mov r9 rax;
(* mov    %rdx,%r10                                #! PC = 0x47c75c *)
mov r10 rdx;
(* mov    0x10(%rsi),%rax                          #! EA = L0xc00001a2b0; Value = 0x0000000000000000; PC = 0x47c75f *)
mov rax L0xc00001a2b0;
(* mul    %r14                                     #! PC = 0x47c763 *)
mull rdx rax rax r14;
subb tmp dontcare rdx 1@uint64;
not carry@bit tmp;
not overflow@bit tmp;
(* add    %rax,%r10                                #! PC = 0x47c766 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x47c769 *)
adcs carry rdx rdx 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry=0@1;
assume carry=0 && true;

(* mov    %rdx,%r11                                #! PC = 0x47c76d *)
mov r11 rdx;
(* mov    0x18(%rsi),%rax                          #! EA = L0xc00001a2b8; Value = 0x0000000000000000; PC = 0x47c770 *)
mov rax L0xc00001a2b8;
(* mul    %r14                                     #! PC = 0x47c774 *)
mull rdx rax rax r14;
subb tmp dontcare rdx 1@uint64;
not carry@bit tmp;
not overflow@bit tmp;
(* add    %rax,%r11                                #! PC = 0x47c777 *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x47c77a *)
adcs carry rdx rdx 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry=0@1;
assume carry=0 && true;

(* mov    %rdx,%r12                                #! PC = 0x47c77e *)
mov r12 rdx;
(* mov    0x8(%rsi),%r14                           #! EA = L0xc00001a2a8; Value = 0x0000000000000000; PC = 0x47c781 *)
mov r14 L0xc00001a2a8;
(* mov    0x10(%rsi),%rax                          #! EA = L0xc00001a2b0; Value = 0x0000000000000000; PC = 0x47c785 *)
mov rax L0xc00001a2b0;
(* mul    %r14                                     #! PC = 0x47c789 *)
mull rdx rax rax r14;
subb tmp dontcare rdx 1@uint64;
not carry@bit tmp;
not overflow@bit tmp;
(* add    %rax,%r11                                #! PC = 0x47c78c *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x47c78f *)
adcs carry rdx rdx 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry=0@1;
assume carry=0 && true;

(* mov    %rdx,%r15                                #! PC = 0x47c793 *)
mov r15 rdx;
(* mov    0x18(%rsi),%rax                          #! EA = L0xc00001a2b8; Value = 0x0000000000000000; PC = 0x47c796 *)
mov rax L0xc00001a2b8;
(* mul    %r14                                     #! PC = 0x47c79a *)
mull rdx rax rax r14;
subb tmp dontcare rdx 1@uint64;
not carry@bit tmp;
not overflow@bit tmp;
(* add    %r15,%r12                                #! PC = 0x47c79d *)
adds carry r12 r12 r15;
(* adc    $0x0,%rdx                                #! PC = 0x47c7a0 *)
adcs carry rdx rdx 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry=0@1;
assume carry=0 && true;

(* add    %rax,%r12                                #! PC = 0x47c7a4 *)
adds carry r12 r12 rax;
(* adc    $0x0,%rdx                                #! PC = 0x47c7a7 *)
adcs carry rdx rdx 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry=0@1;
assume carry=0 && true;

(* mov    %rdx,%r13                                #! PC = 0x47c7ab *)
mov r13 rdx;
(* mov    0x10(%rsi),%r14                          #! EA = L0xc00001a2b0; Value = 0x0000000000000000; PC = 0x47c7ae *)
mov r14 L0xc00001a2b0;
(* mov    0x18(%rsi),%rax                          #! EA = L0xc00001a2b8; Value = 0x0000000000000000; PC = 0x47c7b2 *)
mov rax L0xc00001a2b8;
(* mul    %r14                                     #! PC = 0x47c7b6 *)
mull rdx rax rax r14;
subb tmp dontcare rdx 1@uint64;
not carry@bit tmp;
not overflow@bit tmp;
(* add    %rax,%r13                                #! PC = 0x47c7b9 *)
adds carry r13 r13 rax;
(* adc    $0x0,%rdx                                #! PC = 0x47c7bc *)
adcs carry rdx rdx 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry=0@1;
assume carry=0 && true;

(* mov    %rdx,%rcx                                #! PC = 0x47c7c0 *)
mov rcx rdx;
(* xor    %r15,%r15                                #! PC = 0x47c7c3 *)
mov r15 0@uint64;
clear carry;
clear overflow;
(* add    %r9,%r9                                  #! PC = 0x47c7c6 *)
adds carry r9 r9 r9;
(* adc    %r10,%r10                                #! PC = 0x47c7c9 *)
adcs carry r10 r10 r10 carry;
(* adc    %r11,%r11                                #! PC = 0x47c7cc *)
adcs carry r11 r11 r11 carry;
(* adc    %r12,%r12                                #! PC = 0x47c7cf *)
adcs carry r12 r12 r12 carry;
(* adc    %r13,%r13                                #! PC = 0x47c7d2 *)
adcs carry r13 r13 r13 carry;
(* adc    %rcx,%rcx                                #! PC = 0x47c7d5 *)
adcs carry rcx rcx rcx carry;
(* adc    $0x0,%r15                                #! PC = 0x47c7d8 *)
adcs carry r15 r15 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry=0@1;
assume carry=0 && true;

(* mov    (%rsi),%rax                              #! EA = L0xc00001a2a0; Value = 0x0000000000000000; PC = 0x47c7dc *)
mov rax L0xc00001a2a0;
(* mul    %rax                                     #! PC = 0x47c7df *)
mull rdx rax rax rax;
subb tmp dontcare rdx 1@uint64;
not carry@bit tmp;
not overflow@bit tmp;
(* mov    %rax,%r8                                 #! PC = 0x47c7e2 *)
mov r8 rax;
(* mov    %rdx,%r14                                #! PC = 0x47c7e5 *)
mov r14 rdx;
(* mov    0x8(%rsi),%rax                           #! EA = L0xc00001a2a8; Value = 0x0000000000000000; PC = 0x47c7e8 *)
mov rax L0xc00001a2a8;
(* mul    %rax                                     #! PC = 0x47c7ec *)
mull rdx rax rax rax;
subb tmp dontcare rdx 1@uint64;
not carry@bit tmp;
not overflow@bit tmp;
(* add    %r14,%r9                                 #! PC = 0x47c7ef *)
adds carry r9 r9 r14;
(* adc    %rax,%r10                                #! PC = 0x47c7f2 *)
adcs carry r10 r10 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x47c7f5 *)
adcs carry rdx rdx 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry=0@1;
assume carry=0 && true;

(* mov    %rdx,%r14                                #! PC = 0x47c7f9 *)
mov r14 rdx;
(* mov    0x10(%rsi),%rax                          #! EA = L0xc00001a2b0; Value = 0x0000000000000000; PC = 0x47c7fc *)
mov rax L0xc00001a2b0;
(* mul    %rax                                     #! PC = 0x47c800 *)
mull rdx rax rax rax;
subb tmp dontcare rdx 1@uint64;
not carry@bit tmp;
not overflow@bit tmp;
(* add    %r14,%r11                                #! PC = 0x47c803 *)
adds carry r11 r11 r14;
(* adc    %rax,%r12                                #! PC = 0x47c806 *)
adcs carry r12 r12 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x47c809 *)
adcs carry rdx rdx 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry=0@1;
assume carry=0 && true;

(* mov    %rdx,%r14                                #! PC = 0x47c80d *)
mov r14 rdx;
(* mov    0x18(%rsi),%rax                          #! EA = L0xc00001a2b8; Value = 0x0000000000000000; PC = 0x47c810 *)
mov rax L0xc00001a2b8;
(* mul    %rax                                     #! PC = 0x47c814 *)
mull rdx rax rax rax;
subb tmp dontcare rdx 1@uint64;
not carry@bit tmp;
not overflow@bit tmp;
(* add    %r14,%r13                                #! PC = 0x47c817 *)
adds carry r13 r13 r14;
(* adc    %rax,%rcx                                #! PC = 0x47c81a *)
adcs carry rcx rcx rax carry;
(* adc    %rdx,%r15                                #! PC = 0x47c81d *)
adcs carry r15 r15 rdx carry;

(* Note: No Carry *)
assert true && carry=0@1;
assume carry=0 && true;

(* mov    %r15,%rsi                                #! PC = 0x47c820 *)
mov rsi r15;
(* mov    %r8,%rax                                 #! PC = 0x47c823 *)
mov rax r8;
(* mov    %r8,%r15                                 #! PC = 0x47c826 *)
mov r15 r8;
(* shl    $0x20,%r8                                #! PC = 0x47c829 *)
split ddc r8 r8 32;
shl r8 r8 32;
(* mulq   0x427b4(%rip)        # 0x4befe8 <p256const1>#! EA = L0x4befe8; PC = 0x47c82d *)
mull rdx rax rax L0x4befe8;
(* shr    $0x20,%r15                               #! PC = 0x47c834 *)
split r15 ddcc r15 32;

assert true && ddc = r15;
assume ddc = r15 && true;

(* add    %r8,%r9                                  #! PC = 0x47c838 *)
adds carry r9 r9 r8;
(* adc    %r15,%r10                                #! PC = 0x47c83b *)
adcs carry r10 r10 r15 carry;
(* adc    %rax,%r11                                #! PC = 0x47c83e *)
adcs carry r11 r11 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x47c841 *)
adcs carry rdx rdx 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry=0@1;
assume carry=0 && true;

(* mov    %rdx,%r8                                 #! PC = 0x47c845 *)
mov r8 rdx;
(* mov    %r9,%rax                                 #! PC = 0x47c848 *)
mov rax r9;
(* mov    %r9,%r15                                 #! PC = 0x47c84b *)
mov r15 r9;
(* shl    $0x20,%r9                                #! PC = 0x47c84e *)
split ddc r9 r9 32;
shl r9 r9 32;
(* mulq   0x4278f(%rip)        # 0x4befe8 <p256const1>#! EA = L0x4befe8; PC = 0x47c852 *)
mull rdx rax rax L0x4befe8;
(* shr    $0x20,%r15                               #! PC = 0x47c859 *)
split r15 ddcc r15 32;

assert true && ddc = r15;
assume ddc = r15 && true;

(* add    %r9,%r10                                 #! PC = 0x47c85d *)
adds carry r10 r10 r9;
(* adc    %r15,%r11                                #! PC = 0x47c860 *)
adcs carry r11 r11 r15 carry;
(* adc    %rax,%r8                                 #! PC = 0x47c863 *)
adcs carry r8 r8 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x47c866 *)
adcs carry rdx rdx 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry=0@1;
assume carry=0 && true;

(* mov    %rdx,%r9                                 #! PC = 0x47c86a *)
mov r9 rdx;
(* mov    %r10,%rax                                #! PC = 0x47c86d *)
mov rax r10;
(* mov    %r10,%r15                                #! PC = 0x47c870 *)
mov r15 r10;
(* shl    $0x20,%r10                               #! PC = 0x47c873 *)
split ddc r10 r10 32;
shl r10 r10 32;
(* mulq   0x4276a(%rip)        # 0x4befe8 <p256const1>#! EA = L0x4befe8; PC = 0x47c877 *)
mull rdx rax rax L0x4befe8;
(* shr    $0x20,%r15                               #! PC = 0x47c87e *)
split r15 ddcc r15 32;

assert true && ddc = r15;
assume ddc = r15 && true;

(* add    %r10,%r11                                #! PC = 0x47c882 *)
adds carry r11 r11 r10;
(* adc    %r15,%r8                                 #! PC = 0x47c885 *)
adcs carry r8 r8 r15 carry;
(* adc    %rax,%r9                                 #! PC = 0x47c888 *)
adcs carry r9 r9 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x47c88b *)
adcs carry rdx rdx 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry=0@1;
assume carry=0 && true;

(* mov    %rdx,%r10                                #! PC = 0x47c88f *)
mov r10 rdx;
(* xor    %r14,%r14                                #! PC = 0x47c892 *)
mov r14 0@uint64;
clear carry;
clear overflow;
(* mov    %r11,%rax                                #! PC = 0x47c895 *)
mov rax r11;
(* mov    %r11,%r15                                #! PC = 0x47c898 *)
mov r15 r11;
(* shl    $0x20,%r11                               #! PC = 0x47c89b *)
split ddc r11 r11 32;
shl r11 r11 32;
(* mulq   0x42742(%rip)        # 0x4befe8 <p256const1>#! EA = L0x4befe8; PC = 0x47c89f *)
mull rdx rax rax L0x4befe8;
(* shr    $0x20,%r15                               #! PC = 0x47c8a6 *)
split r15 ddcc r15 32;

assert true && ddc = r15;
assume ddc = r15 && true;

(* add    %r11,%r8                                 #! PC = 0x47c8aa *)
adds carry r8 r8 r11;
(* adc    %r15,%r9                                 #! PC = 0x47c8ad *)
adcs carry r9 r9 r15 carry;
(* adc    %rax,%r10                                #! PC = 0x47c8b0 *)
adcs carry r10 r10 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x47c8b3 *)
adcs carry rdx rdx 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry=0@1;
assume carry=0 && true;

(* mov    %rdx,%r11                                #! PC = 0x47c8b7 *)
mov r11 rdx;
(* adc    %r12,%r8                                 #! PC = 0x47c8ba *)
adcs carry r8 r8 r12 carry;
(* adc    %r13,%r9                                 #! PC = 0x47c8bd *)
adcs carry r9 r9 r13 carry;
(* adc    %rcx,%r10                                #! PC = 0x47c8c0 *)
adcs carry r10 r10 rcx carry;
(* adc    %rsi,%r11                                #! PC = 0x47c8c3 *)
adcs carry r11 r11 rsi carry;

ghost carryo1@bit:
    carryo1 = carry && carryo1 = carry;

(* adc    $0x0,%r14                                #! PC = 0x47c8c6 *)
adcs carry r14 r14 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry=0@1;
assume carry=0 && true;

(* mov    %r8,%r12                                 #! PC = 0x47c8ca *)
mov r12 r8;
(* mov    %r9,%r13                                 #! PC = 0x47c8cd *)
mov r13 r9;
(* mov    %r10,%rcx                                #! PC = 0x47c8d0 *)
mov rcx r10;
(* mov    %r11,%r15                                #! PC = 0x47c8d3 *)
mov r15 r11;
(* sub    $0xffffffffffffffff,%r8                  #! PC = 0x47c8d6 *)
subb carry r8 r8 0xffffffffffffffff@uint64;
(* sbb    0x426ff(%rip),%r9        # 0x4befe0 <p256const0>#! EA = L0x4befe0; Value = 0x00000000ffffffff; PC = 0x47c8da *)
sbbs carry r9 r9 L0x4befe0 carry;
(* sbb    $0x0,%r10                                #! PC = 0x47c8e1 *)
sbbs carry r10 r10 0x0@uint64 carry;
(* sbb    0x426fc(%rip),%r11        # 0x4befe8 <p256const1>#! EA = L0x4befe8; Value = 0xffffffff00000001; PC = 0x47c8e5 *)
sbbs carry r11 r11 L0x4befe8 carry;

ghost carryo2@bit:
    carryo2 = carry && carryo2 = carry;

(* sbb    $0x0,%r14                                #! PC = 0x47c8ec *)
sbbs carry r14 r14 0x0@uint64 carry;

ghost carryo3@bit:
    carryo3 = carry && carryo3 = carry;

(* cmovb  %r12,%r8                                 #! PC = 0x47c8f0 *)
cmov r8 carry r12 r8;
(* cmovb  %r13,%r9                                 #! PC = 0x47c8f4 *)
cmov r9 carry r13 r9;
(* cmovb  %rcx,%r10                                #! PC = 0x47c8f8 *)
cmov r10 carry rcx r10;
(* cmovb  %r15,%r11                                #! PC = 0x47c8fc *)
cmov r11 carry r15 r11;
(* mov    %r8,(%rdi)                               #! EA = L0xc00001a2e0; PC = 0x47c900 *)
mov L0xc00001a2e0 r8;
(* mov    %r9,0x8(%rdi)                            #! EA = L0xc00001a2e8; PC = 0x47c903 *)
mov L0xc00001a2e8 r9;
(* mov    %r10,0x10(%rdi)                          #! EA = L0xc00001a2f0; PC = 0x47c907 *)
mov L0xc00001a2f0 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0xc00001a2f8; PC = 0x47c90b *)
mov L0xc00001a2f8 r11;
(* mov    %rdi,%rsi                                #! PC = 0x47c90f *)
mov rsi rdi;
(* dec    %rbx                                     #! PC = 0x47c912 *)
subb overflow rbx rbx 1@uint64;

(* Note: overflow=0 rbx=0 loop end *)
assert true && and [overflow=0@1, rbx=0@64];
assume and [overflow=0, rbx=0] && true;

(* #jne    0x47c74f <go_testing_env/nistec.P256Sqr+15>#! PC = 0x47c915 *)
#jne    0x47c74f <go_testing_env/nistec.P256Sqr+15>#! 0x47c915 = 0x47c915;
(* #! <- SP = 0xc00006df38 *)
#! 0xc00006df38 = 0xc00006df38;
(* #ret                                            #! PC = 0x47c91b *)
#ret                                            #! 0x47c91b = 0x47c91b;

assert true && or [and [carryo2=0@1, carryo1=0@1, carryo3=0@1],
                   and [carryo2=1@1, carryo1=1@1, carryo3=0@1],
                   and [carryo2=1@1, carryo1=0@1, carryo3=1@1]];

assume (carryo2 - 0) * (carryo1 - 1) = 0 && true;
assume (carryo1 - 0) * (carryo3 - 0) = 0 && true;

assume (carryo2 - 1) * (carryo1 - 1) = 1 && true;
assume (carryo2 - 1) * (carryo3 - 1) = 1 && true;

mov c0 L0xc00001a2e0;
mov c1 L0xc00001a2e8;
mov c2 L0xc00001a2f0;
mov c3 L0xc00001a2f8;


{
  eqmod (limbs 64 [0, 0, 0, 0, c0, c1, c2, c3])
        (limbs 64 [a0, a1, a2, a3] * limbs 64 [a0, a1, a2, a3])
        (limbs 64 [m0, m1, m2, m3])
  &&
  limbs 64 [c0, c1, c2, c3] <u limbs 64 [m0, m1, m2, m3]
}

