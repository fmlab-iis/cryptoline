(* quine:$ cv -v -isafety ecp_nistz256_mul_by_2.cl
Parsing CryptoLine file:    [OK]    0.000943 seconds
Checking well-formedness:   [OK]    0.000208 seconds
Transforming to SSA form:   [OK]    0.000084 seconds
Normalizing specification:    [OK]    0.000080 seconds
Rewriting assignments:      [OK]    0.000095 seconds
Verifying program safety:   
   Cut 0
       Round 1 (1 safety conditions, timeout = 300 seconds)
     Safety condition #0  [OK]
   Overall      [OK]    0.045731 seconds
Verifying range specification:    [OK]    3.203267 seconds
Rewriting value-preserved casting:  [OK]    0.000045 seconds
Verifying algebraic specification:  [OK]    0.004605 seconds
Verification result:      [OK]    3.255495 seconds
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
          uint64 m0, uint64 m1, uint64 m2, uint64 m3) =
{
  true
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

(* ecp_nistz256_mul_by_2: *)
#ecp_nistz256_mul_by_2:;
(* #! -> SP = 0x7fffffffdc38 *)
#! 0x7fffffffdc38 = 0x7fffffffdc38;
(* push   %r12                                     #! EA = L0x7fffffffdc30; PC = 0x55555557c100 *)
#push   %%r12                                     #! L0x7fffffffdc30 = L0x7fffffffdc30; 0x55555557c100 = 0x55555557c100;
(* push   %r13                                     #! EA = L0x7fffffffdc28; PC = 0x55555557c102 *)
#push   %%r13                                     #! L0x7fffffffdc28 = L0x7fffffffdc28; 0x55555557c102 = 0x55555557c102;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffdc50; Value = 0x0000000080000002; PC = 0x55555557c104 *)
mov r8 L0x7fffffffdc50;
(* xor    %r13,%r13                                #! PC = 0x55555557c107 *)
mov r13 0@uint64;
clear carry;
clear overflow;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffdc58; Value = 0x6b80000000000000; PC = 0x55555557c10a *)
mov r9 L0x7fffffffdc58;
(* add    %r8,%r8                                  #! PC = 0x55555557c10e *)
adds carry r8 r8 r8;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffdc60; Value = 0x0000000000000000; PC = 0x55555557c111 *)
mov r10 L0x7fffffffdc60;
(* adc    %r9,%r9                                  #! PC = 0x55555557c115 *)
adcs carry r9 r9 r9 carry;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffdc68; Value = 0x0000000000000000; PC = 0x55555557c118 *)
mov r11 L0x7fffffffdc68;
(* lea    -0x123(%rip),%rsi        # 0x55555557c000#! PC = 0x55555557c11c *)
#lea    %%EA,%%rsi        # 0x55555557c000#! 0x55555557c11c = 0x55555557c11c;
(* mov    %r8,%rax                                 #! PC = 0x55555557c123 *)
mov rax r8;
(* adc    %r10,%r10                                #! PC = 0x55555557c126 *)
adcs carry r10 r10 r10 carry;
(* adc    %r11,%r11                                #! PC = 0x55555557c129 *)
adcs carry r11 r11 r11 carry;
(* mov    %r9,%rdx                                 #! PC = 0x55555557c12c *)
mov rdx r9;
(* adc    $0x0,%r13                                #! PC = 0x55555557c12f *)
adc r13 r13 0x0@uint64 carry;
(* sub    (%rsi),%r8                               #! EA = L0x55555557c000; Value = 0xffffffffffffffff; PC = 0x55555557c133 *)
subb carry r8 r8 L0x55555557c000;
(* mov    %r10,%rcx                                #! PC = 0x55555557c136 *)
mov rcx r10;
(* sbb    0x8(%rsi),%r9                            #! EA = L0x55555557c008; Value = 0x00000000ffffffff; PC = 0x55555557c139 *)
sbbs carry r9 r9 L0x55555557c008 carry;
(* sbb    0x10(%rsi),%r10                          #! EA = L0x55555557c010; Value = 0x0000000000000000; PC = 0x55555557c13d *)
sbbs carry r10 r10 L0x55555557c010 carry;
(* mov    %r11,%r12                                #! PC = 0x55555557c141 *)
mov r12 r11;
(* sbb    0x18(%rsi),%r11                          #! EA = L0x55555557c018; Value = 0xffffffff00000001; PC = 0x55555557c144 *)
sbbs carry r11 r11 L0x55555557c018 carry;
(* sbb    $0x0,%r13                                #! PC = 0x55555557c148 *)
sbbs carry r13 r13 0x0@uint64 carry;
(* cmovb  %rax,%r8                                 #! PC = 0x55555557c14c *)
cmov r8 carry rax r8;
(* cmovb  %rdx,%r9                                 #! PC = 0x55555557c150 *)
cmov r9 carry rdx r9;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdc90; PC = 0x55555557c154 *)
mov L0x7fffffffdc90 r8;
(* cmovb  %rcx,%r10                                #! PC = 0x55555557c157 *)
cmov r10 carry rcx r10;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffdc98; PC = 0x55555557c15b *)
mov L0x7fffffffdc98 r9;
(* cmovb  %r12,%r11                                #! PC = 0x55555557c15f *)
cmov r11 carry r12 r11;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffdca0; PC = 0x55555557c163 *)
mov L0x7fffffffdca0 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffdca8; PC = 0x55555557c167 *)
mov L0x7fffffffdca8 r11;
(* mov    (%rsp),%r13                              #! EA = L0x7fffffffdc28; Value = 0x00007fffffffdde8; PC = 0x55555557c16b *)
#mov    (%rsp),%%r13                              #! L0x7fffffffdc28 = L0x7fffffffdc28; 0x00007fffffffdde8 = 0x00007fffffffdde8; 0x55555557c16b = 0x55555557c16b;
(* mov    0x8(%rsp),%r12                           #! EA = L0x7fffffffdc30; Value = 0x0000000000000000; PC = 0x55555557c16f *)
#mov    0x8(%rsp),%%r12                           #! L0x7fffffffdc30 = L0x7fffffffdc30; 0x0000000000000000 = 0x0000000000000000; 0x55555557c16f = 0x55555557c16f;
(* lea    0x10(%rsp),%rsp                          #! PC = 0x55555557c174 *)
#lea    0x10(%rsp),%rsp                          #! 0x55555557c174 = 0x55555557c174;
(* #! <- SP = 0x7fffffffdc38 *)
#! 0x7fffffffdc38 = 0x7fffffffdc38;
(* #repz ret                                       #! PC = 0x55555557c179 *)
#repz ret                                       #! 0x55555557c179 = 0x55555557c179;

mov c0 L0x7fffffffdc90;
mov c1 L0x7fffffffdc98;
mov c2 L0x7fffffffdca0;
mov c3 L0x7fffffffdca8;

{
  true
  &&
  and [
        eqmod (limbs 64 [c0, c1, c2, c3, 0@64])
              (limbs 64 [a0, a1, a2, a3, 0@64] +
               limbs 64 [a0, a1, a2, a3, 0@64])
              (limbs 64 [m0, m1, m2, m3, 0@64]),
        limbs 64 [c0, c1, c2, c3] <u limbs 64 [m0, m1, m2, m3]
  ]
}
