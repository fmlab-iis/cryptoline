(* quine: -jobs 20 -v -btor -isafety -qfbv_args "-SE minisat" -no_carry_constraint fp_subm_low.cl
Parsing Cryptoline file:                [OK]            0.001224 seconds
Checking well-formedness:               [OK]            0.000260 seconds
Transforming to SSA form:               [OK]            0.000122 seconds
Rewriting assignments:                  [OK]            0.000432 seconds
Verifying program safety:               [OK]            0.013527 seconds
Verifying range specification:          [OK]            170.461747 seconds
Rewriting value-preserved casting:      [OK]            0.000009 seconds
Verifying algebraic specification:      [OK]            0.000100 seconds
Verification result:                    [OK]            170.477811 seconds
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 a5,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4, uint64 b5) =
{
  true
&&
  and [
    limbs 64 [a0, a1, a2, a3, a4, a5] <
    limbs 64 [0x004e000000000013@64, 0x09480097801382be@64,
              0xa6e58dbe43002a06@64, 0x6f82cefbe47879bb@64,
              0x2d996cc179c6d166@64, 0x24009015183f9489@64],
    limbs 64 [b0, b1, b2, b3, b4, b5] <
    limbs 64 [0x004e000000000013@64, 0x09480097801382be@64,
              0xa6e58dbe43002a06@64, 0x6f82cefbe47879bb@64,
              0x2d996cc179c6d166@64, 0x24009015183f9489@64]
  ]
}

mov L0x7fffffffd970 a0;
mov L0x7fffffffd978 a1;
mov L0x7fffffffd980 a2;
mov L0x7fffffffd988 a3;
mov L0x7fffffffd990 a4;
mov L0x7fffffffd998 a5;

mov L0x7fffffffd9a0 b0;
mov L0x7fffffffd9a8 b1;
mov L0x7fffffffd9b0 b2;
mov L0x7fffffffd9b8 b3;
mov L0x7fffffffd9c0 b4;
mov L0x7fffffffd9c8 b5;

(* prime *)
mov L0x555555757010 0x004e000000000013@uint64;
mov L0x555555757018 0x09480097801382be@uint64;
mov L0x555555757020 0xa6e58dbe43002a06@uint64;
mov L0x555555757028 0x6f82cefbe47879bb@uint64;
mov L0x555555757030 0x2d996cc179c6d166@uint64;
mov L0x555555757038 0x24009015183f9489@uint64;

(* xor    %rax,%rax                                #! PC = 0x93824992234106 *)
mov rax 0@uint64;
(* xor    %rcx,%rcx                                #! PC = 0x93824992234109 *)
mov rcx 0@uint64;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffd970; Value = 0x0000000000000000; PC = 0x93824992234112 *)
mov r8 L0x7fffffffd970;
(* sub    (%rdx),%r8                               #! EA = L0x7fffffffd9a0; Value = 0x00007fffffffd9d0; PC = 0x93824992234115 *)
subb carry r8 r8 L0x7fffffffd9a0;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffd9d0; PC = 0x93824992234118 *)
mov L0x7fffffffd9d0 r8;
(* mov    0x8(%rsi),%r8                            #! EA = L0x7fffffffd978; Value = 0x0000000000000000; PC = 0x93824992234121 *)
mov r8 L0x7fffffffd978;
(* sbb    0x8(%rdx),%r8                            #! EA = L0x7fffffffd9a8; Value = 0x00007fffffffd9e0; PC = 0x93824992234125 *)
sbbs carry r8 r8 L0x7fffffffd9a8 carry;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffd9d8; PC = 0x93824992234129 *)
mov L0x7fffffffd9d8 r8;
(* mov    0x10(%rsi),%r8                           #! EA = L0x7fffffffd980; Value = 0x0000000000000000; PC = 0x93824992234133 *)
mov r8 L0x7fffffffd980;
(* sbb    0x10(%rdx),%r8                           #! EA = L0x7fffffffd9b0; Value = 0x00007ffff7ffea98; PC = 0x93824992234137 *)
sbbs carry r8 r8 L0x7fffffffd9b0 carry;
(* mov    %r8,0x10(%rdi)                           #! EA = L0x7fffffffd9e0; PC = 0x93824992234141 *)
mov L0x7fffffffd9e0 r8;
(* mov    0x18(%rsi),%r8                           #! EA = L0x7fffffffd988; Value = 0x00007ffff7ffe710; PC = 0x93824992234145 *)
mov r8 L0x7fffffffd988;
(* sbb    0x18(%rdx),%r8                           #! EA = L0x7fffffffd9b8; Value = 0x0000000000000000; PC = 0x93824992234149 *)
sbbs carry r8 r8 L0x7fffffffd9b8 carry;
(* mov    %r8,0x18(%rdi)                           #! EA = L0x7fffffffd9e8; PC = 0x93824992234153 *)
mov L0x7fffffffd9e8 r8;
(* mov    0x20(%rsi),%r8                           #! EA = L0x7fffffffd990; Value = 0x00007ffff7b97787; PC = 0x93824992234157 *)
mov r8 L0x7fffffffd990;
(* sbb    0x20(%rdx),%r8                           #! EA = L0x7fffffffd9c0; Value = 0x0000004000000000; PC = 0x93824992234161 *)
sbbs carry r8 r8 L0x7fffffffd9c0 carry;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x7fffffffd9f0; PC = 0x93824992234165 *)
mov L0x7fffffffd9f0 r8;
(* mov    0x28(%rsi),%r8                           #! EA = L0x7fffffffd998; Value = 0x00000000000009c0; PC = 0x93824992234169 *)
mov r8 L0x7fffffffd998;
(* sbb    0x28(%rdx),%r8                           #! EA = L0x7fffffffd9c8; Value = 0x0000040000000200; PC = 0x93824992234173 *)
sbbs carry r8 r8 L0x7fffffffd9c8 carry;
(* mov    %r8,0x28(%rdi)                           #! EA = L0x7fffffffd9f8; PC = 0x93824992234177 *)
mov L0x7fffffffd9f8 r8;
                        
(* NOTE: keep old values *)
mov L0x7fffffffd9d0o L0x7fffffffd9d0;
mov L0x7fffffffd9d8o L0x7fffffffd9d8;
mov L0x7fffffffd9e0o L0x7fffffffd9e0;
mov L0x7fffffffd9e8o L0x7fffffffd9e8;
mov L0x7fffffffd9f0o L0x7fffffffd9f0;
mov L0x7fffffffd9f8o L0x7fffffffd9f8;

(* mov    $0x0,%r8                                 #! PC = 0x93824992234181 *)
mov r8 0x0@uint64;
(* mov    $0x0,%r9                                 #! PC = 0x93824992234188 *)
mov r9 0x0@uint64;
(* mov    $0x0,%r10                                #! PC = 0x93824992234195 *)
mov r10 0x0@uint64;
(* mov    $0x0,%r11                                #! PC = 0x93824992234202 *)
mov r11 0x0@uint64;
(* cmovb  0x202527(%rip),%rax        # 0x555555757010#! EA = L0x555555757010; Value = 0x004e000000000013; PC = 0x93824992234209 *)
cmov rax carry L0x555555757010 rax;
(* cmovb  0x202527(%rip),%rcx        # 0x555555757018#! EA = L0x555555757018; Value = 0x09480097801382be; PC = 0x93824992234217 *)
cmov rcx carry L0x555555757018 rcx;
(* cmovb  0x202527(%rip),%r8        # 0x555555757020#! EA = L0x555555757020; Value = 0xa6e58dbe43002a06; PC = 0x93824992234225 *)
cmov r8 carry L0x555555757020 r8;
(* cmovb  0x202527(%rip),%r9        # 0x555555757028#! EA = L0x555555757028; Value = 0x6f82cefbe47879bb; PC = 0x93824992234233 *)
cmov r9 carry L0x555555757028 r9;
(* cmovb  0x202527(%rip),%r10        # 0x555555757030#! EA = L0x555555757030; Value = 0x2d996cc179c6d166; PC = 0x93824992234241 *)
cmov r10 carry L0x555555757030 r10;
(* cmovb  0x202527(%rip),%r11        # 0x555555757038#! EA = L0x555555757038; Value = 0x24009015183f9489; PC = 0x93824992234249 *)
cmov r11 carry L0x555555757038 r11;
(* add    %rax,(%rdi)                              #! EA = L0x7fffffffd9d0; PC = 0x93824992234257 *)
adds carry L0x7fffffffd9d0 L0x7fffffffd9d0 rax;
(* adc    %rcx,0x8(%rdi)                           #! EA = L0x7fffffffd9d8; PC = 0x93824992234260 *)
adcs carry L0x7fffffffd9d8 L0x7fffffffd9d8 rcx carry;
(* adc    %r8,0x10(%rdi)                           #! EA = L0x7fffffffd9e0; PC = 0x93824992234264 *)
adcs carry L0x7fffffffd9e0 L0x7fffffffd9e0 r8 carry;
(* adc    %r9,0x18(%rdi)                           #! EA = L0x7fffffffd9e8; PC = 0x93824992234268 *)
adcs carry L0x7fffffffd9e8 L0x7fffffffd9e8 r9 carry;
(* adc    %r10,0x20(%rdi)                          #! EA = L0x7fffffffd9f0; PC = 0x93824992234272 *)
adcs carry L0x7fffffffd9f0 L0x7fffffffd9f0 r10 carry;
(* adc    %r11,0x28(%rdi)                          #! EA = L0x7fffffffd9f8; PC = 0x93824992234276 *)
adcs carry L0x7fffffffd9f8 L0x7fffffffd9f8 r11 carry;

(* #retq                                           #! PC = 0x93824992234280 *)
#retq                                           #! 0x93824992234280 = 0x93824992234280;

mov r0 L0x7fffffffd9d0;
mov r1 L0x7fffffffd9d8;
mov r2 L0x7fffffffd9e0;
mov r3 L0x7fffffffd9e8;
mov r4 L0x7fffffffd9f0;
mov r5 L0x7fffffffd9f8;
{
  true
&&
  and [
    eqmod (limbs 64 [r0, r1, r2, r3, r4, r5])
          (limbs 64 [a0, a1, a2, a3, a4, a5] -
           limbs 64 [b0, b1, b2, b3, b4, b5])
          (limbs 64 [0x004e000000000013@64, 0x09480097801382be@64,
                     0xa6e58dbe43002a06@64, 0x6f82cefbe47879bb@64,
                     0x2d996cc179c6d166@64, 0x24009015183f9489@64]),
    limbs 64 [r0, r1, r2, r3, r4, r5] <
    limbs 64 [0x004e000000000013@64, 0x09480097801382be@64,
              0xa6e58dbe43002a06@64, 0x6f82cefbe47879bb@64,
              0x2d996cc179c6d166@64, 0x24009015183f9489@64]
  ]
}
