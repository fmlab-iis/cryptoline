(* quine: $ cv -v -isafety ecp_nistz256_sqr_mont.cl
Parsing CryptoLine file:    [OK]    0.004026 seconds
Checking well-formedness:   [OK]    0.000547 seconds
Transforming to SSA form:   [OK]    0.000151 seconds
Normalizing specification:    [OK]    0.000172 seconds
Rewriting assignments:      [OK]    0.000131 seconds
Verifying program safety:   
   Cut 0
       Round 1 (11 safety conditions, timeout = 300 seconds)
     Safety condition #2  [OK]
     Safety condition #3  [OK]
     Safety condition #5  [OK]
     Safety condition #1  [OK]
     Safety condition #7  [OK]
     Safety condition #0  [OK]
     Safety condition #4  [OK]
     Safety condition #6  [OK]
     Safety condition #10 [OK]
     Safety condition #8  [OK]
     Safety condition #9  [OK]
   Overall      [OK]    0.998507 seconds
Verifying range assertions:   [OK]    0.958143 seconds
Verifying range specification:    [OK]    1.112824 seconds
Rewriting value-preserved casting:  [OK]    0.000067 seconds
Verifying algebraic assertions:   [OK]    0.046538 seconds
Verifying algebraic specification:  [OK]    0.122732 seconds
Verification result:      [OK]    3.245033 seconds

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

mov L0x7fffffffdc50 a0;
mov L0x7fffffffdc58 a1;
mov L0x7fffffffdc60 a2;
mov L0x7fffffffdc68 a3;

mov L0x55555557c000 0xffffffffffffffff@uint64;
mov L0x55555557c008 0x00000000ffffffff@uint64;
mov L0x55555557c010 0x0000000000000000@uint64;
mov L0x55555557c018 0xffffffff00000001@uint64;

(* #! -> SP = 0x7fffffffdc48 *)
#! 0x7fffffffdc48 = 0x7fffffffdc48;
(* #mov    $0x80100,%ecx                            #! PC = 0x55555557d4c0 *)
#mov    $0x80100,%ecx                            #! 0x55555557d4c0 = 0x55555557d4c0;
(* #and    0x5b7d(%rip),%ecx        # 0x555555583048 <OPENSSL_ia32cap_P+8>#! EA = L0x555555583048; Value = 0x0040069c219c97a9; PC = 0x55555557d4c5 *)
#and    0x5b7d(%rip),%ecx        # 0x555555583048 <OPENSSL_ia32cap_P+8>#! L0x555555583048 = L0x555555583048; 0x0040069c219c97a9 = 0x0040069c219c97a9; 0x55555557d4c5 = 0x55555557d4c5;
(* #push   %rbp                                     #! EA = L0x7fffffffdc40; PC = 0x55555557d4cb *)
#push   %%rbp                                     #! L0x7fffffffdc40 = L0x7fffffffdc40; 0x55555557d4cb = 0x55555557d4cb;
(* #push   %rbx                                     #! EA = L0x7fffffffdc38; PC = 0x55555557d4cc *)
#push   %%rbx                                     #! L0x7fffffffdc38 = L0x7fffffffdc38; 0x55555557d4cc = 0x55555557d4cc;
(* #push   %r12                                     #! EA = L0x7fffffffdc30; PC = 0x55555557d4cd *)
#push   %%r12                                     #! L0x7fffffffdc30 = L0x7fffffffdc30; 0x55555557d4cd = 0x55555557d4cd;
(* #push   %r13                                     #! EA = L0x7fffffffdc28; PC = 0x55555557d4cf *)
#push   %%r13                                     #! L0x7fffffffdc28 = L0x7fffffffdc28; 0x55555557d4cf = 0x55555557d4cf;
(* #push   %r14                                     #! EA = L0x7fffffffdc20; PC = 0x55555557d4d1 *)
#push   %%r14                                     #! L0x7fffffffdc20 = L0x7fffffffdc20; 0x55555557d4d1 = 0x55555557d4d1;
(* #push   %r15                                     #! EA = L0x7fffffffdc18; PC = 0x55555557d4d3 *)
#push   %%r15                                     #! L0x7fffffffdc18 = L0x7fffffffdc18; 0x55555557d4d3 = 0x55555557d4d3;
(* #cmp    $0x80100,%ecx                            #! PC = 0x55555557d4d5 *)
#cmp    $0x80100,%ecx                            #! 0x55555557d4d5 = 0x55555557d4d5;
(* #je     0x55555557d500 <ecp_nistz256_sqr_mont+64>#! PC = 0x55555557d4db *)
#je     0x55555557d500 <ecp_nistz256_sqr_mont+64>#! 0x55555557d4db = 0x55555557d4db;
(* mov    (%rsi),%rdx                              #! EA = L0x7fffffffdc50; Value = 0x0000000000000000; PC = 0x55555557d500 *)
mov rdx L0x7fffffffdc50;
(* mov    0x8(%rsi),%r14                           #! EA = L0x7fffffffdc58; Value = 0x0000005000000019; PC = 0x55555557d503 *)
mov r14 L0x7fffffffdc58;
(* mov    0x10(%rsi),%r15                          #! EA = L0x7fffffffdc60; Value = 0x0000001000000000; PC = 0x55555557d507 *)
mov r15 L0x7fffffffdc60;
(* mov    0x18(%rsi),%r8                           #! EA = L0x7fffffffdc68; Value = 0x0000000000000000; PC = 0x55555557d50b *)
mov r8 L0x7fffffffdc68;
(* lea    -0x80(%rsi),%rsi                         #! PC = 0x55555557d50f *)
#lea    %%EA,%%rsi                         #! 0x55555557d50f = 0x55555557d50f;
(* #call   0x55555557d960 <__ecp_nistz256_sqr_montx>#! PC = 0x55555557d513 *)
#call   0x55555557d960 <__ecp_nistz256_sqr_montx>#! 0x55555557d513 = 0x55555557d513;
(* #! -> SP = 0x7fffffffdc10 *)
#! 0x7fffffffdc10 = 0x7fffffffdc10;
(* mulx   %r14,%r9,%r10                            #! PC = 0x55555557d960 *)
mull r10 r9 rdx r14;
(* mulx   %r15,%rcx,%r11                           #! PC = 0x55555557d965 *)
mull r11 rcx rdx r15;
(* xor    %eax,%eax                                #! PC = 0x55555557d96a *)
mov eax 0@uint64;
clear carry;
clear overflow;
(* adc    %rcx,%r10                                #! PC = 0x55555557d96c *)
adcs carry r10 r10 rcx carry;
(* mulx   %r8,%rbp,%r12                            #! PC = 0x55555557d96f *)
mull r12 rbp rdx r8;
(* mov    %r14,%rdx                                #! PC = 0x55555557d974 *)
mov rdx r14;
(* adc    %rbp,%r11                                #! PC = 0x55555557d977 *)
adcs carry r11 r11 rbp carry;
(* adc    $0x0,%r12                                #! PC = 0x55555557d97a *)
adc r12 r12 0x0@uint64 carry;
(* xor    %r13,%r13                                #! PC = 0x55555557d97e *)
mov r13 0@uint64;
clear carry;
clear overflow;
(* mulx   %r15,%rcx,%rbp                           #! PC = 0x55555557d981 *)
mull rbp rcx rdx r15;
(* adcx   %rcx,%r11                                #! PC = 0x55555557d986 *)
adcs carry r11 r11 rcx carry;
(* adox   %rbp,%r12                                #! PC = 0x55555557d98c *)
adcs overflow r12 r12 rbp overflow;
(* mulx   %r8,%rcx,%rbp                            #! PC = 0x55555557d992 *)
mull rbp rcx rdx r8;
(* mov    %r15,%rdx                                #! PC = 0x55555557d997 *)
mov rdx r15;
(* adcx   %rcx,%r12                                #! PC = 0x55555557d99a *)
adcs carry r12 r12 rcx carry;
(* adox   %rbp,%r13                                #! PC = 0x55555557d9a0 *)
adcs overflow r13 r13 rbp overflow;

assert true && overflow=0@1;
assume overflow=0 && true;

(* adc    $0x0,%r13                                #! PC = 0x55555557d9a6 *)
adc r13 r13 0x0@uint64 carry;
(* mulx   %r8,%rcx,%r14                            #! PC = 0x55555557d9aa *)
mull r14 rcx rdx r8;
(* mov    0x80(%rsi),%rdx                          #! EA = L0x7fffffffdc50; Value = 0x0000000000000000; PC = 0x55555557d9af *)
mov rdx L0x7fffffffdc50;
(* xor    %r15,%r15                                #! PC = 0x55555557d9b6 *)
mov r15 0@uint64;
clear carry;
clear overflow;
(* adcx   %r9,%r9                                  #! PC = 0x55555557d9b9 *)
adcs carry r9 r9 r9 carry;
(* adox   %rcx,%r13                                #! PC = 0x55555557d9bf *)
adcs overflow r13 r13 rcx overflow;
(* adcx   %r10,%r10                                #! PC = 0x55555557d9c5 *)
adcs carry r10 r10 r10 carry;
(* adox   %r15,%r14                                #! PC = 0x55555557d9cb *)
adcs overflow r14 r14 r15 overflow;

assert true && overflow=0@1;
assume overflow=0 && true;

(* mulx   %rdx,%r8,%rbp                            #! PC = 0x55555557d9d1 *)
mull rbp r8 rdx rdx;
(* mov    0x88(%rsi),%rdx                          #! EA = L0x7fffffffdc58; Value = 0x0000005000000019; PC = 0x55555557d9d6 *)
mov rdx L0x7fffffffdc58;
(* adcx   %r11,%r11                                #! PC = 0x55555557d9dd *)
adcs carry r11 r11 r11 carry;
(* adox   %rbp,%r9                                 #! PC = 0x55555557d9e3 *)
adcs overflow r9 r9 rbp overflow;
(* adcx   %r12,%r12                                #! PC = 0x55555557d9e9 *)
adcs carry r12 r12 r12 carry;
(* mulx   %rdx,%rcx,%rax                           #! PC = 0x55555557d9ef *)
mull rax rcx rdx rdx;
(* mov    0x90(%rsi),%rdx                          #! EA = L0x7fffffffdc60; Value = 0x0000001000000000; PC = 0x55555557d9f4 *)
mov rdx L0x7fffffffdc60;
(* adcx   %r13,%r13                                #! PC = 0x55555557d9fb *)
adcs carry r13 r13 r13 carry;
(* adox   %rcx,%r10                                #! PC = 0x55555557da01 *)
adcs overflow r10 r10 rcx overflow;
(* adcx   %r14,%r14                                #! PC = 0x55555557da07 *)
adcs carry r14 r14 r14 carry;
(* addr32 mulx %rdx,%rcx,%rbp                      #! PC = 0x55555557da0d *)
#addr32 mulx %%rdx,%%rcx,%%rbp                      #! 0x55555557da0d = 0x55555557da0d;
mull rbp rcx rdx rdx;
(* mov    0x98(%rsi),%rdx                          #! EA = L0x7fffffffdc68; Value = 0x0000000000000000; PC = 0x55555557da13 *)
mov rdx L0x7fffffffdc68;
(* adox   %rax,%r11                                #! PC = 0x55555557da1a *)
adcs overflow r11 r11 rax overflow;
(* adcx   %r15,%r15                                #! PC = 0x55555557da20 *)
adcs carry r15 r15 r15 carry;

assert true && carry=0@1;
assume carry=0 && true;

(* adox   %rcx,%r12                                #! PC = 0x55555557da26 *)
adcs overflow r12 r12 rcx overflow;
(* mov    $0x20,%rsi                               #! PC = 0x55555557da2c *)
mov rsi 0x20@uint64;
(* adox   %rbp,%r13                                #! PC = 0x55555557da33 *)
adcs overflow r13 r13 rbp overflow;
(* addr32 addr32 mulx %rdx,%rcx,%rax               #! PC = 0x55555557da39 *)
#addr32 addr32 mulx %%rdx,%%rcx,%%rax               #! 0x55555557da39 = 0x55555557da39;
mull rax rcx rdx rdx;
(* mov    -0x1a2f(%rip),%rdx        # 0x55555557c018#! EA = L0x55555557c018; Value = 0xffffffff00000001; PC = 0x55555557da40 *)
mov rdx L0x55555557c018;
(* adox   %rcx,%r14                                #! PC = 0x55555557da47 *)
adcs overflow r14 r14 rcx overflow;
(* shlx   %rsi,%r8,%rcx                            #! PC = 0x55555557da4d *)
assert rsi=32 && true;
split ddc rcx r8 32;
shl rcx rcx 32;
(* adox   %rax,%r15                                #! PC = 0x55555557da52 *)
adcs overflow r15 r15 rax overflow;

assert true && overflow=0@1;
assume overflow=0 && true;

(* shrx   %rsi,%r8,%rax                            #! PC = 0x55555557da58 *)
assert rsi=32 && true;
split rax dc r8 32;

(* NOTE: relate rax, ddc *)
assert true && rax=ddc;
assume rax=ddc && true;


(* mov    %rdx,%rbp                                #! PC = 0x55555557da5d *)
mov rbp rdx;
(* add    %rcx,%r9                                 #! PC = 0x55555557da60 *)
adds carry r9 r9 rcx;
(* adc    %rax,%r10                                #! PC = 0x55555557da63 *)
adcs carry r10 r10 rax carry;
(* mulx   %r8,%rcx,%r8                             #! PC = 0x55555557da66 *)
mull r8 rcx rdx r8;
(* adc    %rcx,%r11                                #! PC = 0x55555557da6b *)
adcs carry r11 r11 rcx carry;
(* shlx   %rsi,%r9,%rcx                            #! PC = 0x55555557da6e *)
assert rsi=32 && true;
split ddc rcx r9 32;
shl rcx rcx 32;
(* adc    $0x0,%r8                                 #! PC = 0x55555557da73 *)
adc r8 r8 0x0@uint64 carry;
(* shrx   %rsi,%r9,%rax                            #! PC = 0x55555557da77 *)
assert rsi=32 && true;
split rax dc r9 32;

(* NOTE: relate rax, ddc *)
assert true && rax=ddc;
assume rax=ddc && true;

(* add    %rcx,%r10                                #! PC = 0x55555557da7c *)
adds carry r10 r10 rcx;
(* adc    %rax,%r11                                #! PC = 0x55555557da7f *)
adcs carry r11 r11 rax carry;
(* mulx   %r9,%rcx,%r9                             #! PC = 0x55555557da82 *)
mull r9 rcx rdx r9;
(* adc    %rcx,%r8                                 #! PC = 0x55555557da87 *)
adcs carry r8 r8 rcx carry;
(* shlx   %rsi,%r10,%rcx                           #! PC = 0x55555557da8a *)
assert rsi=32 && true;
split ddc rcx r10 32;
shl rcx rcx 32;
(* adc    $0x0,%r9                                 #! PC = 0x55555557da8f *)
adc r9 r9 0x0@uint64 carry;
(* shrx   %rsi,%r10,%rax                           #! PC = 0x55555557da93 *)
assert rsi=32 && true;
split rax dc r10 32;

(* NOTE: relate rax, ddc *)
assert true && rax=ddc;
assume rax=ddc && true;

(* add    %rcx,%r11                                #! PC = 0x55555557da98 *)
adds carry r11 r11 rcx;
(* adc    %rax,%r8                                 #! PC = 0x55555557da9b *)
adcs carry r8 r8 rax carry;
(* mulx   %r10,%rcx,%r10                           #! PC = 0x55555557da9e *)
mull r10 rcx rdx r10;
(* adc    %rcx,%r9                                 #! PC = 0x55555557daa3 *)
adcs carry r9 r9 rcx carry;
(* shlx   %rsi,%r11,%rcx                           #! PC = 0x55555557daa6 *)
assert rsi=32 && true;
split ddc rcx r11 32;
shl rcx rcx 32;
(* adc    $0x0,%r10                                #! PC = 0x55555557daab *)
adc r10 r10 0x0@uint64 carry;
(* shrx   %rsi,%r11,%rax                           #! PC = 0x55555557daaf *)
assert rsi=32 && true;
split rax dc r11 32;

(* NOTE: relate rax, ddc *)
assert true && rax=ddc;
assume rax=ddc && true;

(* add    %rcx,%r8                                 #! PC = 0x55555557dab4 *)
adds carry r8 r8 rcx;
(* adc    %rax,%r9                                 #! PC = 0x55555557dab7 *)
adcs carry r9 r9 rax carry;
(* mulx   %r11,%rcx,%r11                           #! PC = 0x55555557daba *)
mull r11 rcx rdx r11;
(* adc    %rcx,%r10                                #! PC = 0x55555557dabf *)
adcs carry r10 r10 rcx carry;
(* adc    $0x0,%r11                                #! PC = 0x55555557dac2 *)
adc r11 r11 0x0@uint64 carry;
(* xor    %rdx,%rdx                                #! PC = 0x55555557dac6 *)
mov rdx 0@uint64;
clear carry;
clear overflow;
(* add    %r8,%r12                                 #! PC = 0x55555557dac9 *)
adds carry r12 r12 r8;
(* mov    -0x1acb(%rip),%rsi        # 0x55555557c008#! EA = L0x55555557c008; Value = 0x00000000ffffffff; PC = 0x55555557dacc *)
mov rsi L0x55555557c008;
(* adc    %r9,%r13                                 #! PC = 0x55555557dad3 *)
adcs carry r13 r13 r9 carry;
(* mov    %r12,%r8                                 #! PC = 0x55555557dad6 *)
mov r8 r12;
(* adc    %r10,%r14                                #! PC = 0x55555557dad9 *)
adcs carry r14 r14 r10 carry;
(* adc    %r11,%r15                                #! PC = 0x55555557dadc *)
adcs carry r15 r15 r11 carry;

(* carry_31
assert true && carry=0@1;
assume carry=0 && true;
000 001 011 110
*)

(* mov    %r13,%r9                                 #! PC = 0x55555557dadf *)
mov r9 r13;
(* adc    $0x0,%rdx                                #! PC = 0x55555557dae2 *)
adc rdx rdx 0x0@uint64 carry;
(* sub    $0xffffffffffffffff,%r12                 #! PC = 0x55555557dae6 *)
subb carry r12 r12 0xffffffffffffffff@uint64;
(* mov    %r14,%r10                                #! PC = 0x55555557daea *)
mov r10 r14;
(* sbb    %rsi,%r13                                #! PC = 0x55555557daed *)
sbbs carry r13 r13 rsi carry;
(* sbb    $0x0,%r14                                #! PC = 0x55555557daf0 *)
sbbs carry r14 r14 0x0@uint64 carry;
(* mov    %r15,%r11                                #! PC = 0x55555557daf4 *)
mov r11 r15;
(* sbb    %rbp,%r15                                #! PC = 0x55555557daf7 *)
sbbs carry r15 r15 rbp carry;
(* carry_35
assert true && carry=0@1;
assume carry=0 && true;
*)

ghost rdxo@uint64, carryo@bit :
      and [rdxo = rdx, carryo = carry] && and [rdxo = rdx, carryo = carry];

(* sbb    $0x0,%rdx                                #! PC = 0x55555557dafa *)
sbbs carry rdx rdx 0x0@uint64 carry;
(* carry_36
assert true && carry=0@1;
assume carry=0 && true;
*)

(* 000 001 011 110 *)

assert true && or [and [rdxo = 0@64, carryo = 0@1, carry = 0@1],
                   and [rdxo = 0@64, carryo = 0@1, carry = 1@1],
                   and [rdxo = 0@64, carryo = 1@1, carry = 1@1],
                   and [rdxo = 1@64, carryo = 1@1, carry = 0@1]];
assume (rdxo - 0) * (carryo  - 1) = 0 && true;
assume (rdxo - 0) * (carry   - 0) = 0 && true;
assume (rdxo - 1) * (carryo  - 0) * (carry - 1) = 0 && true;


(* cmovb  %r8,%r12                                 #! PC = 0x55555557dafe *)
cmov r12 carry r8 r12;
(* cmovb  %r9,%r13                                 #! PC = 0x55555557db02 *)
cmov r13 carry r9 r13;
(* mov    %r12,(%rdi)                              #! EA = L0x7fffffffdc90; PC = 0x55555557db06 *)
mov L0x7fffffffdc90 r12;
(* cmovb  %r10,%r14                                #! PC = 0x55555557db09 *)
cmov r14 carry r10 r14;
(* mov    %r13,0x8(%rdi)                           #! EA = L0x7fffffffdc98; PC = 0x55555557db0d *)
mov L0x7fffffffdc98 r13;
(* cmovb  %r11,%r15                                #! PC = 0x55555557db11 *)
cmov r15 carry r11 r15;
(* mov    %r14,0x10(%rdi)                          #! EA = L0x7fffffffdca0; PC = 0x55555557db15 *)
mov L0x7fffffffdca0 r14;
(* mov    %r15,0x18(%rdi)                          #! EA = L0x7fffffffdca8; PC = 0x55555557db19 *)
mov L0x7fffffffdca8 r15;
(* #! <- SP = 0x7fffffffdc10 *)
#! 0x7fffffffdc10 = 0x7fffffffdc10;
(* #repz ret                                       #! PC = 0x55555557db1d *)
#repz ret                                       #! 0x55555557db1d = 0x55555557db1d;
(* mov    (%rsp),%r15                              #! EA = L0x7fffffffdc18; Value = 0x00007ffff7ffd000; PC = 0x55555557d518 *)
#mov    (%rsp),%%r15                              #! L0x7fffffffdc18 = L0x7fffffffdc18; 0x00007ffff7ffd000 = 0x00007ffff7ffd000; 0x55555557d518 = 0x55555557d518;
(* mov    0x8(%rsp),%r14                           #! EA = L0x7fffffffdc20; Value = 0x0000555555582df0; PC = 0x55555557d51c *)
#mov    0x8(%rsp),%%r14                           #! L0x7fffffffdc20 = L0x7fffffffdc20; 0x0000555555582df0 = 0x0000555555582df0; 0x55555557d51c = 0x55555557d51c;
(* mov    0x10(%rsp),%r13                          #! EA = L0x7fffffffdc28; Value = 0x00007fffffffdde8; PC = 0x55555557d521 *)
#mov    0x10(%rsp),%%r13                          #! L0x7fffffffdc28 = L0x7fffffffdc28; 0x00007fffffffdde8 = 0x00007fffffffdde8; 0x55555557d521 = 0x55555557d521;
(* mov    0x18(%rsp),%r12                          #! EA = L0x7fffffffdc30; Value = 0x0000000000000000; PC = 0x55555557d526 *)
#mov    0x18(%rsp),%%r12                          #! L0x7fffffffdc30 = L0x7fffffffdc30; 0x0000000000000000 = 0x0000000000000000; 0x55555557d526 = 0x55555557d526;
(* mov    0x20(%rsp),%rbx                          #! EA = L0x7fffffffdc38; Value = 0x00007fffffffddd8; PC = 0x55555557d52b *)
#mov    0x20(%rsp),%%rbx                          #! L0x7fffffffdc38 = L0x7fffffffdc38; 0x00007fffffffddd8 = 0x00007fffffffddd8; 0x55555557d52b = 0x55555557d52b;
(* mov    0x28(%rsp),%rbp                          #! EA = L0x7fffffffdc40; Value = 0x00007fffffffdcc0; PC = 0x55555557d530 *)
#mov    0x28(%rsp),%%rbp                          #! L0x7fffffffdc40 = L0x7fffffffdc40; 0x00007fffffffdcc0 = 0x00007fffffffdcc0; 0x55555557d530 = 0x55555557d530;
(* lea    0x30(%rsp),%rsp                          #! PC = 0x55555557d535 *)
#lea    0x30(%rsp),%rsp                          #! 0x55555557d535 = 0x55555557d535;
(* #! <- SP = 0x7fffffffdc48 *)
#! 0x7fffffffdc48 = 0x7fffffffdc48;
(* #repz ret                                       #! PC = 0x55555557d53a *)
#repz ret                                       #! 0x55555557d53a = 0x55555557d53a;

mov c0 L0x7fffffffdc90;
mov c1 L0x7fffffffdc98;
mov c2 L0x7fffffffdca0;
mov c3 L0x7fffffffdca8;


{
  eqmod (limbs 64 [0, 0, 0, 0, c0, c1, c2, c3])
        (limbs 64 [a0, a1, a2, a3] * limbs 64 [a0, a1, a2, a3])
        (limbs 64 [m0, m1, m2, m3])
  &&
  limbs 64 [c0, c1, c2, c3] <u limbs 64 [m0, m1, m2, m3]
}

