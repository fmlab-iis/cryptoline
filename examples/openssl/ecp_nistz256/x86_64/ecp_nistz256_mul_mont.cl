(* quine: cv.exe -v -isafety -slicing -no_carry_constraint ecp_nistz256_mul_mont.cl
Parsing Cryptoline file:                [OK]            0.003889 seconds
Checking well-formedness:               [OK]            0.001153 seconds
Transforming to SSA form:               [OK]            0.000164 seconds
Normalizing specification:              [OK]            0.000008 seconds
Rewriting assignments:                  [OK]            0.000120 seconds
Verifying program safety:               [OK]            2.419037 seconds
Verifying range assertions:             [OK]            10.889658 seconds
Verifying range specification:          [OK]            2.998128 seconds
Rewriting value-preserved casting:      [OK]            0.000021 seconds
Verifying algebraic assertions:         [OK]            0.301553 seconds
Verifying algebraic specification:      [OK]            0.140719 seconds
Verification result:                    [OK]            16.754983 seconds
*)         

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3,
           uint64 m0, uint64 m1, uint64 m2, uint64 m3) =
{
  and [ m0 = 0xffffffffffffffff, m1 = 0x00000000ffffffff,
        m2 = 0x0000000000000000, m3 = 0xffffffff00000001 ]
  &&
  and [ m0 = 0xffffffffffffffff@64, m1 = 0x00000000ffffffff@64,
        m2 = 0x0000000000000000@64, m3 = 0xffffffff00000001@64,
        limbs 64 [a0, a1, a2, a3] <u limbs 64 [m0, m1, m2, m3],
        limbs 64 [b0, b1, b2, b3] <u limbs 64 [m0, m1, m2, m3]
  ]
}

mov L0x7fffffffd9b0 a0;
mov L0x7fffffffd9b8 a1;
mov L0x7fffffffd9c0 a2;
mov L0x7fffffffd9c8 a3;
mov L0x7fffffffd9d0 b0;
mov L0x7fffffffd9d8 b1;
mov L0x7fffffffd9e0 b2;
mov L0x7fffffffd9e8 b3;

mov L0x55555557c000 0xffffffffffffffff@uint64;
mov L0x55555557c008 0x00000000ffffffff@uint64;
mov L0x55555557c010 0x0000000000000000@uint64;
mov L0x55555557c018 0xffffffff00000001@uint64;

(* #! -> SP = 0x7fffffffd9a8 *)
#! 0x7fffffffd9a8 = 0x7fffffffd9a8;
(* #mov    $0x80100,%ecx                            #! PC = 0x55555557d1e0 *)
#mov    $0x80100,%ecx                            #! 0x55555557d1e0 = 0x55555557d1e0;
(* #and    0x5e35(%rip),%ecx        # 0x555555583020 <OPENSSL_ia32cap_P+8>#! EA = L0x555555583020; Value = 0x00000018d39efffb; PC = 0x55555557d1e5 *)
#and    0x5e35(%rip),%ecx        # 0x555555583020 <OPENSSL_ia32cap_P+8>#! L0x555555583020 = L0x555555583020; 0x00000018d39efffb = 0x00000018d39efffb; 0x55555557d1e5 = 0x55555557d1e5;
(* #push   %rbp                                     #! EA = L0x7fffffffd9a0; PC = 0x55555557d1eb *)
#push   %%rbp                                     #! L0x7fffffffd9a0 = L0x7fffffffd9a0; 0x55555557d1eb = 0x55555557d1eb;
(* #push   %rbx                                     #! EA = L0x7fffffffd998; PC = 0x55555557d1ec *)
#push   %%rbx                                     #! L0x7fffffffd998 = L0x7fffffffd998; 0x55555557d1ec = 0x55555557d1ec;
(* #push   %r12                                     #! EA = L0x7fffffffd990; PC = 0x55555557d1ed *)
#push   %%r12                                     #! L0x7fffffffd990 = L0x7fffffffd990; 0x55555557d1ed = 0x55555557d1ed;
(* #push   %r13                                     #! EA = L0x7fffffffd988; PC = 0x55555557d1ef *)
#push   %%r13                                     #! L0x7fffffffd988 = L0x7fffffffd988; 0x55555557d1ef = 0x55555557d1ef;
(* #push   %r14                                     #! EA = L0x7fffffffd980; PC = 0x55555557d1f1 *)
#push   %%r14                                     #! L0x7fffffffd980 = L0x7fffffffd980; 0x55555557d1f1 = 0x55555557d1f1;
(* #push   %r15                                     #! EA = L0x7fffffffd978; PC = 0x55555557d1f3 *)
#push   %%r15                                     #! L0x7fffffffd978 = L0x7fffffffd978; 0x55555557d1f3 = 0x55555557d1f3;
(* #cmp    $0x80100,%ecx                            #! PC = 0x55555557d1f5 *)
#cmp    $0x80100,%ecx                            #! 0x55555557d1f5 = 0x55555557d1f5;
(* #je     0x55555557d220 <ecp_nistz256_mul_mont+64>#! PC = 0x55555557d1fb *)
#je     0x55555557d220 <ecp_nistz256_mul_mont+64>#! 0x55555557d1fb = 0x55555557d1fb;
(* #mov    %rdx,%rbx                                #! PC = 0x55555557d220 *)
#mov    %%rdx,%%rbx                                #! 0x55555557d220 = 0x55555557d220;
(* mov    (%rdx),%rdx                              #! EA = L0x7fffffffd9d0; Value = 0x0000555555582d98; PC = 0x55555557d223 *)
mov rdx L0x7fffffffd9d0;
(* mov    (%rsi),%r9                               #! EA = L0x7fffffffd9b0; Value = 0x0000000000000008; PC = 0x55555557d226 *)
mov r9 L0x7fffffffd9b0;
(* mov    0x8(%rsi),%r10                           #! EA = L0x7fffffffd9b8; Value = 0x0000000000000001; PC = 0x55555557d229 *)
mov r10 L0x7fffffffd9b8;
(* mov    0x10(%rsi),%r11                          #! EA = L0x7fffffffd9c0; Value = 0x00007fffffffdb18; PC = 0x55555557d22d *)
mov r11 L0x7fffffffd9c0;
(* mov    0x18(%rsi),%r12                          #! EA = L0x7fffffffd9c8; Value = 0x00007fffffffdb28; PC = 0x55555557d231 *)
mov r12 L0x7fffffffd9c8;
(* #lea    -0x80(%rsi),%rsi                         #! PC = 0x55555557d235 *)
#lea    %%EA,%rsi                         #! 0x55555557d235 = 0x55555557d235;
(* #callq  0x55555557d700 <__ecp_nistz256_mul_montx>#! PC = 0x55555557d239 *)
#callq  0x55555557d700 <__ecp_nistz256_mul_montx>#! 0x55555557d239 = 0x55555557d239;
(* #! -> SP = 0x7fffffffd970 *)
#! 0x7fffffffd970 = 0x7fffffffd970;
(* mulx   %r9,%r8,%r9                              #! PC = 0x55555557d700 *)
mull r9 r8 rdx r9;
(* mulx   %r10,%rcx,%r10                           #! PC = 0x55555557d705 *)
mull r10 rcx rdx r10;
(* mov    $0x20,%r14                               #! PC = 0x55555557d70a *)
mov r14 0x20@uint64;
(* xor    %r13,%r13                                #! PC = 0x55555557d711 *)
mov r13 0@uint64;
clear carry;
clear overflow;
(* mulx   %r11,%rbp,%r11                           #! PC = 0x55555557d714 *)
mull r11 rbp rdx r11;
(* mov    -0x1708(%rip),%r15        # 0x55555557c018#! EA = L0x55555557c018; Value = 0xffffffff00000001; PC = 0x55555557d719 *)
mov r15 L0x55555557c018;
(* adc    %rcx,%r9                                 #! PC = 0x55555557d720 *)
adcs carry r9 r9 rcx carry;
(* mulx   %r12,%rcx,%r12                           #! PC = 0x55555557d723 *)
mull r12 rcx rdx r12;
(* mov    %r8,%rdx                                 #! PC = 0x55555557d728 *)
mov rdx r8;
(* adc    %rbp,%r10                                #! PC = 0x55555557d72b *)
adcs carry r10 r10 rbp carry;
(* shlx   %r14,%r8,%rbp                            #! PC = 0x55555557d72e *)
assert r14=32 && true;
split ddc rbp r8 32;
shl rbp rbp 32;
(* adc    %rcx,%r11                                #! PC = 0x55555557d733 *)
adcs carry r11 r11 rcx carry;
(* shrx   %r14,%r8,%rcx                            #! PC = 0x55555557d736 *)
assert r14=32 && true;
split rcx dc r8 32;

(* NOTE: relate rcx, ddc *)
assert true && rcx=ddc;
assume rcx=ddc && true;

(* adc    $0x0,%r12                                #! PC = 0x55555557d73b *)
adc r12 r12 0x0@uint64 carry;
(* add    %rbp,%r9                                 #! PC = 0x55555557d73f *)
adds carry r9 r9 rbp;
(* adc    %rcx,%r10                                #! PC = 0x55555557d742 *)
adcs carry r10 r10 rcx carry;
(* mulx   %r15,%rcx,%rbp                           #! PC = 0x55555557d745 *)
mull rbp rcx rdx r15;
(* mov    0x8(%rbx),%rdx                           #! EA = L0x7fffffffd9d8; Value = 0x000055555555501b; PC = 0x55555557d74a *)
mov rdx L0x7fffffffd9d8;
(* adc    %rcx,%r11                                #! PC = 0x55555557d74e *)
adcs carry r11 r11 rcx carry;
(* adc    %rbp,%r12                                #! PC = 0x55555557d751 *)
adcs carry r12 r12 rbp carry;
(* adc    $0x0,%r13                                #! PC = 0x55555557d754 *)
adc r13 r13 0x0@uint64 carry;

(* NOTE: first reduction step *)
(*
assert eqmod limbs 64 [0, r9, r10, r11, r12, r13]
             (b0 * limbs 64 [a0, a1, a2, a3])
             limbs 64 [m0, m1, m2, m3] && true;
*)

(* xor    %r8,%r8                                  #! PC = 0x55555557d758 *)
mov r8 0@uint64;
clear carry;
clear overflow;
(* mulx   0x80(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffd9b0; Value = 0x0000000000000008; PC = 0x55555557d75b *)
mull rbp rcx rdx L0x7fffffffd9b0;
(* adcx   %rcx,%r9                                 #! PC = 0x55555557d764 *)
adcs carry r9 r9 rcx carry;
(* adox   %rbp,%r10                                #! PC = 0x55555557d76a *)
adcs overflow r10 r10 rbp overflow;
(* mulx   0x88(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffd9b8; Value = 0x0000000000000001; PC = 0x55555557d770 *)
mull rbp rcx rdx L0x7fffffffd9b8;
(* adcx   %rcx,%r10                                #! PC = 0x55555557d779 *)
adcs carry r10 r10 rcx carry;
(* adox   %rbp,%r11                                #! PC = 0x55555557d77f *)
adcs overflow r11 r11 rbp overflow;
(* mulx   0x90(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffd9c0; Value = 0x00007fffffffdb18; PC = 0x55555557d785 *)
mull rbp rcx rdx L0x7fffffffd9c0;
(* adcx   %rcx,%r11                                #! PC = 0x55555557d78e *)
adcs carry r11 r11 rcx carry;
(* adox   %rbp,%r12                                #! PC = 0x55555557d794 *)
adcs overflow r12 r12 rbp overflow;
(* mulx   0x98(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffd9c8; Value = 0x00007fffffffdb28; PC = 0x55555557d79a *)
mull rbp rcx rdx L0x7fffffffd9c8;
(* mov    %r9,%rdx                                 #! PC = 0x55555557d7a3 *)
mov rdx r9;
(* adcx   %rcx,%r12                                #! PC = 0x55555557d7a6 *)
adcs carry r12 r12 rcx carry;
(* shlx   %r14,%r9,%rcx                            #! PC = 0x55555557d7ac *)
assert r14=32 && true;
split ddc rcx r9 32;
shl rcx rcx 32;
(* adox   %rbp,%r13                                #! PC = 0x55555557d7b1 *)
adcs overflow r13 r13 rbp overflow;
(* shrx   %r14,%r9,%rbp                            #! PC = 0x55555557d7b7 *)
assert r14=32 && true;
split rbp dc r9 32;

(* NOTE: relate rbp, ddc *)
assert true && rbp=ddc;
assume rbp=ddc && true;

(* adcx   %r8,%r13                                 #! PC = 0x55555557d7bc *)
adcs carry r13 r13 r8 carry;
(* adox   %r8,%r8                                  #! PC = 0x55555557d7c2 *)
adcs overflow r8 r8 r8 overflow;

(* NOTE: can't carry *)
assert true && and [carry=0@1,overflow=0@1];
assume and [carry=0,overflow=0] && true;

(* adc    $0x0,%r8                                 #! PC = 0x55555557d7c8 *)
adc r8 r8 0x0@uint64 carry;
(* add    %rcx,%r10                                #! PC = 0x55555557d7cc *)
adds carry r10 r10 rcx;
(* adc    %rbp,%r11                                #! PC = 0x55555557d7cf *)
adcs carry r11 r11 rbp carry;
(* mulx   %r15,%rcx,%rbp                           #! PC = 0x55555557d7d2 *)
mull rbp rcx rdx r15;
(* mov    0x10(%rbx),%rdx                          #! EA = L0x7fffffffd9e0; Value = 0x00007fffffffda06; PC = 0x55555557d7d7 *)
mov rdx L0x7fffffffd9e0;
(* adc    %rcx,%r12                                #! PC = 0x55555557d7db *)
adcs carry r12 r12 rcx carry;
(* adc    %rbp,%r13                                #! PC = 0x55555557d7de *)
adcs carry r13 r13 rbp carry;
(* adc    $0x0,%r8                                 #! PC = 0x55555557d7e1 *)
adc r8 r8 0x0@uint64 carry;

(* NOTE: second reduction step *)
(*
assert eqmod limbs 64 [0, 0, r10, r11, r12, r13, r8]
             limbs 64 [b0, b1] * limbs 64 [a0, a1, a2, a3]
             limbs 64 [m0, m1, m2, m3] && true;
*)

(* xor    %r9,%r9                                  #! PC = 0x55555557d7e5 *)
mov r9 0@uint64;
clear carry;
clear overflow;
(* mulx   0x80(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffd9b0; Value = 0x0000000000000008; PC = 0x55555557d7e8 *)
mull rbp rcx rdx L0x7fffffffd9b0;
(* adcx   %rcx,%r10                                #! PC = 0x55555557d7f1 *)
adcs carry r10 r10 rcx carry;
(* adox   %rbp,%r11                                #! PC = 0x55555557d7f7 *)
adcs overflow r11 r11 rbp overflow;
(* mulx   0x88(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffd9b8; Value = 0x0000000000000001; PC = 0x55555557d7fd *)
mull rbp rcx rdx L0x7fffffffd9b8;
(* adcx   %rcx,%r11                                #! PC = 0x55555557d806 *)
adcs carry r11 r11 rcx carry;
(* adox   %rbp,%r12                                #! PC = 0x55555557d80c *)
adcs overflow r12 r12 rbp overflow;
(* mulx   0x90(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffd9c0; Value = 0x00007fffffffdb18; PC = 0x55555557d812 *)
mull rbp rcx rdx L0x7fffffffd9c0;
(* adcx   %rcx,%r12                                #! PC = 0x55555557d81b *)
adcs carry r12 r12 rcx carry;
(* adox   %rbp,%r13                                #! PC = 0x55555557d821 *)
adcs overflow r13 r13 rbp overflow;
(* mulx   0x98(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffd9c8; Value = 0x00007fffffffdb28; PC = 0x55555557d827 *)
mull rbp rcx rdx L0x7fffffffd9c8;
(* mov    %r10,%rdx                                #! PC = 0x55555557d830 *)
mov rdx r10;
(* adcx   %rcx,%r13                                #! PC = 0x55555557d833 *)
adcs carry r13 r13 rcx carry;
(* shlx   %r14,%r10,%rcx                           #! PC = 0x55555557d839 *)
assert r14=32 && true;
split ddc rcx r10 32;
shl rcx rcx 32;
(* adox   %rbp,%r8                                 #! PC = 0x55555557d83e *)
adcs overflow r8 r8 rbp overflow;
(* shrx   %r14,%r10,%rbp                           #! PC = 0x55555557d844 *)
assert r14=32 && true;
split rbp dc r10 32;

(* NOTE: relate rbp, ddc *)
assert true && rbp=ddc;
assume rbp=ddc && true;

(* adcx   %r9,%r8                                  #! PC = 0x55555557d849 *)
adcs carry r8 r8 r9 carry;
(* adox   %r9,%r9                                  #! PC = 0x55555557d84f *)
adcs overflow r9 r9 r9 overflow;

(* NOTE: can't carry *)
assert true && and [carry=0@1,overflow=0@1];
assume and [carry=0,overflow=0] && true;

(* adc    $0x0,%r9                                 #! PC = 0x55555557d855 *)
adc r9 r9 0x0@uint64 carry;
(* add    %rcx,%r11                                #! PC = 0x55555557d859 *)
adds carry r11 r11 rcx;
(* adc    %rbp,%r12                                #! PC = 0x55555557d85c *)
adcs carry r12 r12 rbp carry;
(* mulx   %r15,%rcx,%rbp                           #! PC = 0x55555557d85f *)
mull rbp rcx rdx r15;
(* mov    0x18(%rbx),%rdx                          #! EA = L0x7fffffffd9e8; Value = 0x0000555555580cbd; PC = 0x55555557d864 *)
mov rdx L0x7fffffffd9e8;
(* adc    %rcx,%r13                                #! PC = 0x55555557d868 *)
adcs carry r13 r13 rcx carry;
(* adc    %rbp,%r8                                 #! PC = 0x55555557d86b *)
adcs carry r8 r8 rbp carry;
(* adc    $0x0,%r9                                 #! PC = 0x55555557d86e *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x55555557d872 *)
mov r10 0@uint64;
clear carry;
clear overflow;
(* mulx   0x80(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffd9b0; Value = 0x0000000000000008; PC = 0x55555557d875 *)
mull rbp rcx rdx L0x7fffffffd9b0;
(* adcx   %rcx,%r11                                #! PC = 0x55555557d87e *)
adcs carry r11 r11 rcx carry;
(* adox   %rbp,%r12                                #! PC = 0x55555557d884 *)
adcs overflow r12 r12 rbp overflow;
(* mulx   0x88(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffd9b8; Value = 0x0000000000000001; PC = 0x55555557d88a *)
mull rbp rcx rdx L0x7fffffffd9b8;
(* adcx   %rcx,%r12                                #! PC = 0x55555557d893 *)
adcs carry r12 r12 rcx carry;
(* adox   %rbp,%r13                                #! PC = 0x55555557d899 *)
adcs overflow r13 r13 rbp overflow;
(* mulx   0x90(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffd9c0; Value = 0x00007fffffffdb18; PC = 0x55555557d89f *)
mull rbp rcx rdx L0x7fffffffd9c0;
(* adcx   %rcx,%r13                                #! PC = 0x55555557d8a8 *)
adcs carry r13 r13 rcx carry;
(* adox   %rbp,%r8                                 #! PC = 0x55555557d8ae *)
adcs overflow r8 r8 rbp overflow;
(* mulx   0x98(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffd9c8; Value = 0x00007fffffffdb28; PC = 0x55555557d8b4 *)
mull rbp rcx rdx L0x7fffffffd9c8;
(* mov    %r11,%rdx                                #! PC = 0x55555557d8bd *)
mov rdx r11;
(* adcx   %rcx,%r8                                 #! PC = 0x55555557d8c0 *)
adcs carry r8 r8 rcx carry;
(* shlx   %r14,%r11,%rcx                           #! PC = 0x55555557d8c6 *)
assert r14=32 && true;
split ddc rcx r11 32;
shl rcx rcx 32;
(* adox   %rbp,%r9                                 #! PC = 0x55555557d8cb *)
adcs overflow r9 r9 rbp overflow;
(* shrx   %r14,%r11,%rbp                           #! PC = 0x55555557d8d1 *)
assert r14=32 && true;
split rbp dc r11 32;

(* NOTE: relate rbp, ddc *)
assert true && rbp=ddc;
assume rbp=ddc && true;

(* adcx   %r10,%r9                                 #! PC = 0x55555557d8d6 *)
adcs carry r9 r9 r10 carry;
(* adox   %r10,%r10                                #! PC = 0x55555557d8dc *)
adcs overflow r10 r10 r10 overflow;

(* NOTE: can't carry *)
assert true && and [carry=0@1,overflow=0@1];
assume and [carry=0,overflow=0] && true;

(* adc    $0x0,%r10                                #! PC = 0x55555557d8e2 *)
adc r10 r10 0x0@uint64 carry;
(* add    %rcx,%r12                                #! PC = 0x55555557d8e6 *)
adds carry r12 r12 rcx;
(* adc    %rbp,%r13                                #! PC = 0x55555557d8e9 *)
adcs carry r13 r13 rbp carry;
(* mulx   %r15,%rcx,%rbp                           #! PC = 0x55555557d8ec *)
mull rbp rcx rdx r15;
(* mov    %r12,%rbx                                #! PC = 0x55555557d8f1 *)
mov rbx r12;
(* mov    -0x18f3(%rip),%r14        # 0x55555557c008#! EA = L0x55555557c008; Value = 0x00000000ffffffff; PC = 0x55555557d8f4 *)
mov r14 L0x55555557c008;
(* adc    %rcx,%r8                                 #! PC = 0x55555557d8fb *)
adcs carry r8 r8 rcx carry;
(* mov    %r13,%rdx                                #! PC = 0x55555557d8fe *)
mov rdx r13;
(* adc    %rbp,%r9                                 #! PC = 0x55555557d901 *)
adcs carry r9 r9 rbp carry;
(* adc    $0x0,%r10                                #! PC = 0x55555557d904 *)
adc r10 r10 0x0@uint64 carry;

(* NOTE: fourth reduction step *)
(*
assert eqmod limbs 64 [0, 0, 0, 0, r12, r13, r8, r9, r10]
             (limbs 64 [a0, a1, a2, a3] * limbs 64 [b0, b1, b2, b3])
             limbs 64 [m0, m1, m2, m3] && true;
*)

cut eqmod (limbs 64 [0, 0, 0, 0, r12, r13, r8, r9, r10])
          (limbs 64 [a0, a1, a2, a3] * limbs 64 [b0, b1, b2, b3])
          (limbs 64 [m0, m1, m2, m3]) &&
    and [m0 = 0xffffffffffffffff@64, m1 = 0x00000000ffffffff@64,
         m2 = 0x0000000000000000@64, m3 = 0xffffffff00000001@64,
         r14=0x00000000ffffffff@64, r15=0xffffffff00000001@64,
         limbs 64 [r12, r13, r8, r9, r10] <u
         2@320 * limbs 64 [m0, m1, m2, m3, 0@64],
         r12=rbx, r13=rdx];

ghost r12o@uint64, r13o@uint64, r8o@uint64, r9o@uint64, r10o@uint64 :
      and [r12o=r12, r13o=r13, r8o=r8, r9o=r9, r10o=r10]
   && and [r12o=r12, r13o=r13, r8o=r8, r9o=r9, r10o=r10];

(* xor    %eax,%eax                                #! PC = 0x55555557d908 *)
mov eax 0@uint64;
clear carry;
clear overflow;
(* mov    %r8,%rcx                                 #! PC = 0x55555557d90a *)
mov rcx r8;
(* sbb    $0xffffffffffffffff,%r12                 #! PC = 0x55555557d90d *)
sbbs carry r12 r12 0xffffffffffffffff@uint64 carry;
(* sbb    %r14,%r13                                #! PC = 0x55555557d911 *)
sbbs carry r13 r13 r14 carry;
(* sbb    $0x0,%r8                                 #! PC = 0x55555557d914 *)
sbbs carry r8 r8 0x0@uint64 carry;
(* mov    %r9,%rbp                                 #! PC = 0x55555557d918 *)
mov rbp r9;
(* sbb    %r15,%r9                                 #! PC = 0x55555557d91b *)
sbbs carry r9 r9 r15 carry;
(* sbb    $0x0,%r10                                #! PC = 0x55555557d91e *)
sbbs carry r10 r10 0x0@uint64 carry;
(* cmovb  %rbx,%r12                                #! PC = 0x55555557d922 *)
cmov r12 carry rbx r12;
(* cmovb  %rdx,%r13                                #! PC = 0x55555557d926 *)
cmov r13 carry rdx r13;
(* mov    %r12,(%rdi)                              #! EA = L0x7fffffffd9f0; PC = 0x55555557d92a *)
mov L0x7fffffffd9f0 r12;
(* cmovb  %rcx,%r8                                 #! PC = 0x55555557d92d *)
cmov r8 carry rcx r8;
(* mov    %r13,0x8(%rdi)                           #! EA = L0x7fffffffd9f8; PC = 0x55555557d931 *)
mov L0x7fffffffd9f8 r13;
(* cmovb  %rbp,%r9                                 #! PC = 0x55555557d935 *)
cmov r9 carry rbp r9;

(* NOTE: final reduction *)

assert true &&
       eqmod (limbs 64 [r12, r13, r8, r9, 0@64])
             (limbs 64 [r12o, r13o, r8o, r9o, r10o])
             (limbs 64 [m0, m1, m2, m3, 0@64]);
assume eqmod (limbs 64 [r12, r13, r8, r9, 0])
             (limbs 64 [r12o, r13o, r8o, r9o, r10o])
             (limbs 64 [m0, m1, m2, m3, 0]) && true;
       
(* mov    %r8,0x10(%rdi)                           #! EA = L0x7fffffffda00; PC = 0x55555557d939 *)
mov L0x7fffffffda00 r8;
(* mov    %r9,0x18(%rdi)                           #! EA = L0x7fffffffda08; PC = 0x55555557d93d *)
mov L0x7fffffffda08 r9;
(* #! <- SP = 0x7fffffffd970 *)
#! 0x7fffffffd970 = 0x7fffffffd970;
(* #repz retq                                      #! PC = 0x55555557d941 *)
#repz retq                                      #! 0x55555557d941 = 0x55555557d941;
(* #mov    (%rsp),%r15                              #! EA = L0x7fffffffd978; Value = 0x0000000000000000; PC = 0x55555557d23e *)
#mov    (%rsp),%%r15                              #! L0x7fffffffd978 = L0x7fffffffd978; 0x0000000000000000 = 0x0000000000000000; 0x55555557d23e = 0x55555557d23e;
(* #mov    0x8(%rsp),%r14                           #! EA = L0x7fffffffd980; Value = 0x0000000000000000; PC = 0x55555557d242 *)
#mov    0x8(%rsp),%%r14                           #! L0x7fffffffd980 = L0x7fffffffd980; 0x0000000000000000 = 0x0000000000000000; 0x55555557d242 = 0x55555557d242;
(* #mov    0x10(%rsp),%r13                          #! EA = L0x7fffffffd988; Value = 0x00007fffffffdb10; PC = 0x55555557d247 *)
#mov    0x10(%rsp),%%r13                          #! L0x7fffffffd988 = L0x7fffffffd988; 0x00007fffffffdb10 = 0x00007fffffffdb10; 0x55555557d247 = 0x55555557d247;
(* #mov    0x18(%rsp),%r12                          #! EA = L0x7fffffffd990; Value = 0x0000555555556000; PC = 0x55555557d24c *)
#mov    0x18(%rsp),%%r12                          #! L0x7fffffffd990 = L0x7fffffffd990; 0x0000555555556000 = 0x0000555555556000; 0x55555557d24c = 0x55555557d24c;
(* #mov    0x20(%rsp),%rbx                          #! EA = L0x7fffffffd998; Value = 0x0000555555580c70; PC = 0x55555557d251 *)
#mov    0x20(%rsp),%%rbx                          #! L0x7fffffffd998 = L0x7fffffffd998; 0x0000555555580c70 = 0x0000555555580c70; 0x55555557d251 = 0x55555557d251;
(* #mov    0x28(%rsp),%rbp                          #! EA = L0x7fffffffd9a0; Value = 0x00007fffffffda20; PC = 0x55555557d256 *)
#mov    0x28(%rsp),%%rbp                          #! L0x7fffffffd9a0 = L0x7fffffffd9a0; 0x00007fffffffda20 = 0x00007fffffffda20; 0x55555557d256 = 0x55555557d256;
(* #lea    0x30(%rsp),%rsp                          #! PC = 0x55555557d25b *)
#lea    0x30(%rsp),%rsp                          #! 0x55555557d25b = 0x55555557d25b;
(* #! <- SP = 0x7fffffffd9a8 *)
#! 0x7fffffffd9a8 = 0x7fffffffd9a8;
(* #repz retq                                      #! PC = 0x55555557d260 *)
#repz retq                                      #! 0x55555557d260 = 0x55555557d260;

mov c0 L0x7fffffffd9f0;
mov c1 L0x7fffffffd9f8;
mov c2 L0x7fffffffda00;
mov c3 L0x7fffffffda08;

{
  eqmod (limbs 64 [0, 0, 0, 0, c0, c1, c2, c3])
        (limbs 64 [a0, a1, a2, a3] * limbs 64 [b0, b1, b2, b3])
        (limbs 64 [m0, m1, m2, m3])
&&
  limbs 64 [c0, c1, c2, c3] <u limbs 64 [m0, m1, m2, m3]
}

