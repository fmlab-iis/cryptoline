(* quine: -v -jobs 10 -isafety -qfbv_args '-SE minisat' fp_subm_low.cl
Parsing Cryptoline file:                [OK]            0.000872 seconds
Checking well-formedness:               [OK]            0.000154 seconds
Transforming to SSA form:               [OK]            0.000068 seconds
Rewriting assignments:                  [OK]            0.000178 seconds
Verifying program safety:               [OK]            0.000111 seconds
Verifying range specification:          [OK]            59.409980 seconds
Rewriting value-preserved casting:      [OK]            0.000009 seconds
Verifying algebraic specification:      [OK]            0.000113 seconds
Verification result:                    [OK]            59.411779 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3) =
{
  true
&&
  and [
    limbs 64 [a0, a1, a2, a3] <
    limbs 64 [0xa700000000000013@64, 0x6121000000000013@64,
              0xba344d8000000008@64, 0x2523648240000001@64],
    limbs 64 [b0, b1, b2, b3] <
    limbs 64 [0xa700000000000013@64, 0x6121000000000013@64,
              0xba344d8000000008@64, 0x2523648240000001@64]
  ]
}

mov L0x7fffffffd9c0 a0;
mov L0x7fffffffd9c8 a1;
mov L0x7fffffffd9d0 a2;
mov L0x7fffffffd9d8 a3;

mov L0x7fffffffd9e0 b0;
mov L0x7fffffffd9e8 b1;
mov L0x7fffffffd9f0 b2;
mov L0x7fffffffd9f8 b3;

(* Breakpoint 1, 0x000055555555499a in fp_subm_low () *)
#Breakpoint 1, 0x000055555555499a in fp_subm_low ();
(* fp_subm_low: *)
#fp_subm_low:;
(* xor    %rax,%rax                                #! PC = 0x93824992233882 *)
mov rax 0@uint64;
(* xor    %rcx,%rcx                                #! PC = 0x93824992233885 *)
mov rcx 0@uint64;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffd9c0; Value = 0x0000004000000000; PC = 0x93824992233888 *)
mov r8 L0x7fffffffd9c0;
(* sub    (%rdx),%r8                               #! EA = L0x7fffffffd9e0; Value = 0x00007ffff7ffa268; PC = 0x93824992233891 *)
subb carry r8 r8 L0x7fffffffd9e0;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffda00; PC = 0x93824992233894 *)
mov L0x7fffffffda00 r8;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffd9c8; Value = 0x0000040000000200; PC = 0x93824992233897 *)
mov r9 L0x7fffffffd9c8;
(* sbb    0x8(%rdx),%r9                            #! EA = L0x7fffffffd9e8; Value = 0x00007ffff7ffe710; PC = 0x93824992233901 *)
sbbs carry r9 r9 L0x7fffffffd9e8 carry;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffda08; PC = 0x93824992233905 *)
mov L0x7fffffffda08 r9;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffd9d0; Value = 0x00000000ffffffff; PC = 0x93824992233909 *)
mov r10 L0x7fffffffd9d0;
(* sbb    0x10(%rdx),%r10                          #! EA = L0x7fffffffd9f0; Value = 0x0000000000000000; PC = 0x93824992233913 *)
sbbs carry r10 r10 L0x7fffffffd9f0 carry;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffda10; PC = 0x93824992233917 *)
mov L0x7fffffffda10 r10;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffd9d8; Value = 0x0000000000000000; PC = 0x93824992233921 *)
mov r11 L0x7fffffffd9d8;
(* sbb    0x18(%rdx),%r11                          #! EA = L0x7fffffffd9f8; Value = 0x0000000000000000; PC = 0x93824992233925 *)
sbbs carry r11 r11 L0x7fffffffd9f8 carry;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffda18; PC = 0x93824992233929 *)
mov L0x7fffffffda18 r11;
(* mov    $0x0,%rdx                                #! PC = 0x93824992233933 *)
mov rdx 0x0@uint64;
(* mov    $0x0,%rsi                                #! PC = 0x93824992233940 *)
mov rsi 0x0@uint64;
(* movabs $0xa700000000000013,%r8                  #! PC = 0x93824992233947 *)
mov r8 0xa700000000000013@uint64;
(* movabs $0x6121000000000013,%r9                  #! PC = 0x93824992233957 *)
mov r9 0x6121000000000013@uint64;
(* movabs $0xba344d8000000008,%r10                 #! PC = 0x93824992233967 *)
mov r10 0xba344d8000000008@uint64;
(* movabs $0x2523648240000001,%r11                 #! PC = 0x93824992233977 *)
mov r11 0x2523648240000001@uint64;
(* cmovb  %r8,%rax                                 #! PC = 0x93824992233987 *)
cmov rax carry r8 rax;
(* cmovb  %r9,%rcx                                 #! PC = 0x93824992233991 *)
cmov rcx carry r9 rcx;
(* cmovb  %r10,%rdx                                #! PC = 0x93824992233995 *)
cmov rdx carry r10 rdx;
(* cmovb  %r11,%rsi                                #! PC = 0x93824992233999 *)
cmov rsi carry r11 rsi;
(* add    %rax,(%rdi)                              #! EA = L0x7fffffffda00; PC = 0x93824992234003 *)
adds carry L0x7fffffffda00 L0x7fffffffda00 rax;
(* adc    %rcx,0x8(%rdi)                           #! EA = L0x7fffffffda08; PC = 0x93824992234006 *)
adcs carry L0x7fffffffda08 L0x7fffffffda08 rcx carry;
(* adc    %rdx,0x10(%rdi)                          #! EA = L0x7fffffffda10; PC = 0x93824992234010 *)
adcs carry L0x7fffffffda10 L0x7fffffffda10 rdx carry;
(* adc    %rsi,0x18(%rdi)                          #! EA = L0x7fffffffda18; PC = 0x93824992234014 *)
adcs carry L0x7fffffffda18 L0x7fffffffda18 rsi carry;
(* #retq                                           #! PC = 0x93824992234018 *)
#retq                                           #! 0x93824992234018 = 0x93824992234018;

mov c0 L0x7fffffffda00;
mov c1 L0x7fffffffda08;
mov c2 L0x7fffffffda10;
mov c3 L0x7fffffffda18;

{
  true
&&
  and [
    limbs 64 [c0, c1, c2, c3] <
    limbs 64 [0xa700000000000013@64, 0x6121000000000013@64,
              0xba344d8000000008@64, 0x2523648240000001@64],
    eqmod (limbs 64 [c0, c1, c2, c3])
          (limbs 64 [a0, a1, a2, a3] - limbs 64 [b0, b1, b2, b3])
          (limbs 64 [0xa700000000000013@64, 0x6121000000000013@64,
                     0xba344d8000000008@64, 0x2523648240000001@64])
  ]
}
