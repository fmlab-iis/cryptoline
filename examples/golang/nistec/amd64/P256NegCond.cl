(* quine:$ cv -v -isafety P256NegCond.cl
Parsing CryptoLine file:    [OK]    0.001296 seconds
Checking well-formedness:   [OK]    0.000307 seconds
Transforming to SSA form:   [OK]    0.000148 seconds
Normalizing specification:    [OK]    0.000124 seconds
Rewriting assignments:      [OK]    0.000176 seconds
Verifying program safety:   
   Cut 0
       Round 1 (0 safety conditions, timeout = 300 seconds)
   Overall      [OK]    0.000206 seconds
Verifying range assertions:   [OK]    0.085484 seconds
Verifying range specification:    [OK]    0.108171 seconds
Rewriting value-preserved casting:  [OK]    0.000031 seconds
Verifying algebraic assertions:   [OK]    0.004888 seconds
Verifying algebraic specification:  [OK]    0.097818 seconds
Verification result:      [OK]    0.299260 seconds
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 cond,
           uint64 m0, uint64 m1, uint64 m2, uint64 m3) =
{
  and [ m0 = 0xffffffffffffffff, m1 = 0x00000000ffffffff,
        m2 = 0x0000000000000000, m3 = 0xffffffff00000001 ]
  &&
  and [ m0 = 0xffffffffffffffff@64, m1 = 0x00000000ffffffff@64,
        m2 = 0x0000000000000000@64, m3 = 0xffffffff00000001@64,
        ulimbs 64 [a0, a1, a2, a3] <u ulimbs 64 [m0, m1, m2, m3]
      ]
}

mov L0xc00010ff40 0x000000c000196120@uint64;

mov L0xc000196120 a0;
mov L0xc000196128 a1;
mov L0xc000196130 a2;
mov L0xc000196138 a3;

ghost a0o@uint64, a1o@uint64, a2o@uint64, a3o@uint64:
      and [a0o=a0, a1o=a1, a2o=a2, a3o=a3]
  &&  and [a0o=a0, a1o=a1, a2o=a2, a3o=a3]; 

mov L0x4befe0 m1;
mov L0x4befe8 m3;

mov L0xc00010ff48 cond;

(* go_testing_env/nistec.P256NegCond: *)
#go_testing_env/nistec.P256NegCond:;
(* #! -> SP = 0xc00010ff38 *)
#! 0xc00010ff38 = 0xc00010ff38;
(* mov    0x8(%rsp),%rdi                           #! EA = L0xc00010ff40; Value = 0x000000c000196120; PC = 0x47c6c0 *)
mov rdi L0xc00010ff40;
(* mov    0x10(%rsp),%r14                          #! EA = L0xc00010ff48; Value = 0x0000000000000000; PC = 0x47c6c5 *)
mov r14 L0xc00010ff48;
(* mov    $0xffffffffffffffff,%r8                  #! PC = 0x47c6ca *)
mov r8 0xffffffffffffffff@uint64;
(* mov    0x42908(%rip),%r9        # 0x4befe0 <p256const0>#! EA = L0x4befe0; Value = 0x00000000ffffffff; PC = 0x47c6d1 *)
mov r9 L0x4befe0;
(* mov    $0x0,%r10                                #! PC = 0x47c6d8 *)
mov r10 0x0@uint64;
(* mov    0x42902(%rip),%r11        # 0x4befe8 <p256const1>#! EA = L0x4befe8; Value = 0xffffffff00000001; PC = 0x47c6df *)
mov r11 L0x4befe8;
(* mov    (%rdi),%r13                              #! EA = L0xc000196120; Value = 0x0000000000000000; PC = 0x47c6e6 *)
mov r13 L0xc000196120;
(* mov    0x8(%rdi),%rsi                           #! EA = L0xc000196128; Value = 0x0000000000000000; PC = 0x47c6e9 *)
mov rsi L0xc000196128;
(* mov    0x10(%rdi),%rcx                          #! EA = L0xc000196130; Value = 0x0000000000000000; PC = 0x47c6ed *)
mov rcx L0xc000196130;
(* mov    0x18(%rdi),%r15                          #! EA = L0xc000196138; Value = 0x0000000000000000; PC = 0x47c6f1 *)
mov r15 L0xc000196138;
(* sub    %r13,%r8                                 #! PC = 0x47c6f5 *)
subb carry r8 r8 r13;
(* sbb    %rsi,%r9                                 #! PC = 0x47c6f8 *)
sbbs carry r9 r9 rsi carry;
(* sbb    %rcx,%r10                                #! PC = 0x47c6fb *)
sbbs carry r10 r10 rcx carry;
(* sbb    %r15,%r11                                #! PC = 0x47c6fe *)
sbbs carry r11 r11 r15 carry;

(* Note: No Carry*)
assert true && carry=0@1;
assume carry=0 && true;

(* test   %r14,%r14                                #! PC = 0x47c701 *)
subb zero dontcare r14 1@uint64;
(* cmove  %r13,%r8                                 #! PC = 0x47c704 *)
cmov r8 zero r13 r8;
(* cmove  %rsi,%r9                                 #! PC = 0x47c708 *)
cmov r9 zero rsi r9;
(* cmove  %rcx,%r10                                #! PC = 0x47c70c *)
cmov r10 zero rcx r10;
(* cmove  %r15,%r11                                #! PC = 0x47c710 *)
cmov r11 zero r15 r11;
(* mov    %r8,(%rdi)                               #! EA = L0xc000196120; PC = 0x47c714 *)
mov L0xc000196120 r8;
(* mov    %r9,0x8(%rdi)                            #! EA = L0xc000196128; PC = 0x47c717 *)
mov L0xc000196128 r9;
(* mov    %r10,0x10(%rdi)                          #! EA = L0xc000196130; PC = 0x47c71b *)
mov L0xc000196130 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0xc000196138; PC = 0x47c71f *)
mov L0xc000196138 r11;
(* #! <- SP = 0xc00010ff38 *)
#! 0xc00010ff38 = 0xc00010ff38;
(* #ret                                            #! PC = 0x47c723 *)
#ret                                            #! 0x47c723 = 0x47c723;

mov c0 L0xc000196120;
mov c1 L0xc000196128;
mov c2 L0xc000196130;
mov c3 L0xc000196138;

{
  eqmod  (limbs 64 [c0, c1, c2, c3, 0] +
          limbs 64 [a0o, a1o, a2o, a3o, 0])
         (limbs 64 [a0o, a1o, a2o, a3o, 0] * 2 * zero)
         (limbs 64 [m0, m1, m2, m3, 0])
  &&
  ulimbs 64 [c0, c1, c2, c3] <=u ulimbs 64 [m0, m1, m2, m3]
  (* <"="u because a = 0@256 -> c = m *)
}

