(* quine: -v -btor -qfbv_args '-SE minisat' -isafety
Parsing Cryptoline file:                [OK]            0.001206 seconds
Checking well-formedness:               [OK]            0.000243 seconds
Transforming to SSA form:               [OK]            0.000105 seconds
Rewriting assignments:                  [OK]            0.000248 seconds
Verifying program safety:               [OK]            0.590392 seconds
Verifying range assertions:             [OK]            0.530133 seconds
Verifying range specification:          [OK]            1.152379 seconds
Rewriting value-preserved casting:      [OK]            0.000008 seconds
Verifying algebraic assertions:         [OK]            0.005546 seconds
Verifying algebraic specification:      [OK]            0.037712 seconds
Verification result:                    [OK]            2.318349 seconds
*)

proc main (uint64 inp0, uint64 inp1,
           uint64 r0, uint64 r1, uint64 r2,
           uint64 s0, uint64 s1, uint64 s2,
           uint64 h0, uint64 h1, uint64 h2, uint64 padbit) =
{
  and [ s0 = r0 * 20, s1 = r1 * 20, s2 = r2 * 20 ]
&&
  and [
    (* precondition for normal inputs *)
    r0 <=u 0xfffffffffff@64, r1 <=u 0xfffffffffff@64, r2 <=u 0x3ffffffffff@64,
    r0 & (!0xffc0fffffff@64) = 0@64,
    r1 & (!0xfffffc0ffff@64) = 0@64,
    r2 & (!0x00ffffffc0f@64) = 0@64,
    s0 = r0 * 20@64, s1 = r1 * 20@64, s2 = r2 * 20@64,
    h0 <=u 0x3ffffffffffff@64, h1 <=u 0xfffffffffff@64, h2 <=u 0x3ffffffffff@64,
    padbit <u 2@64,
    or [ padbit = 1@64,
         inp1 & 0xff00000000000000@64 = 0x0100000000000000@64,
         inp1 & 0xffff000000000000@64 = 0x0001000000000000@64,
         inp1 & 0xffffff0000000000@64 = 0x0000010000000000@64,
         inp1 & 0xffffffff00000000@64 = 0x0000000100000000@64,
         inp1 & 0xffffffffff000000@64 = 0x0000000001000000@64,
         inp1 & 0xffffffffffff0000@64 = 0x0000000000010000@64,
         inp1 & 0xffffffffffffff00@64 = 0x0000000000000100@64,
         inp1 & 0xffffffffffffffff@64 = 0x0000000000000001@64,
         and [ inp1 = 0@64,
               inp0 & 0xff00000000000000@64 = 0x0100000000000000@64],
         and [ inp1 = 0@64,
               inp0 & 0xffff000000000000@64 = 0x0001000000000000@64],
         and [ inp1 = 0@64,
               inp0 & 0xffffff0000000000@64 = 0x0000010000000000@64],
         and [ inp1 = 0@64,
               inp0 & 0xffffffff00000000@64 = 0x0000000100000000@64],
         and [ inp1 = 0@64,
               inp0 & 0xffffffffff000000@64 = 0x0000000001000000@64],
         and [ inp1 = 0@64,
               inp0 & 0xffffffffffff0000@64 = 0x0000000000010000@64],
         and [ inp1 = 0@64,
               inp0 & 0xffffffffffffff00@64 = 0x0000000000000100@64]
       ]

    (* additional preconditions to set padbit = h0 = h1 = h2 = 0 *)
    (*
    ,
    padbit = 0@64,
    h0 = 0@64, h1 = 0@64, h2 = 0@64
    *)
  ]
}

mov L0x605080 inp0;
mov L0x605088 inp1;
mov L0x16af010 h0;
mov L0x16af018 h1;
mov L0x16af020 h2;
mov L0x16af028 s1;
mov L0x16af030 s2;
mov L0x16af038 r0;
mov L0x16af040 r1;
mov L0x16af048 r2;
mov rcx padbit;

(* shl    $0x28,%rcx                               #! PC = 0x4206961 *)
shl rcx rcx 40;
(* mov    (%rdi),%rdx                              #! EA = L0x16af010; Value = 0x0000000000000000; PC = 0x4206966 *)
mov rdx L0x16af010;
(* mov    0x8(%rdi),%r8                            #! EA = L0x16af018; Value = 0x0000000000000000; PC = 0x4206969 *)
mov r8 L0x16af018;
(* mov    0x10(%rdi),%r9                           #! EA = L0x16af020; Value = 0x0000000000000000; PC = 0x4206973 *)
mov r9 L0x16af020;
(* mov    0x28(%rdi),%r13                          #! EA = L0x16af038; Value = 0x00000aa80ccddeef; PC = 0x4206977 *)
mov r13 L0x16af038;
(* mov    0x30(%rdi),%r14                          #! EA = L0x16af040; Value = 0x0000043322008899; PC = 0x4206981 *)
mov r14 L0x16af040;
(* mov    0x20(%rdi),%r15                          #! EA = L0x16af030; Value = 0x000000aa953fd050; PC = 0x4206985 *)
mov r15 L0x16af030;
(* movabs $0xfffff00000000000,%rax                 #! PC = 0x4206989 *)
mov rax 0xfffff00000000000@uint64;
(* #jmp    0x4031a0 <poly1305_blocks_base2_44+64>  #! PC = 0x4206999 *)
#jmp    0x4031a0 <poly1305_blocks_base2_44+64>  #! 0x4206999 = 0x4206999;
(* mov    (%rsi),%r11                              #! EA = L0x605080; Value = 0x8978675645342312; PC = 0x4207008 *)
mov r11 L0x605080;
(* mov    0x8(%rsi),%r12                           #! EA = L0x605088; Value = 0x8798a9bacbdcedfe; PC = 0x4207011 *)
mov r12 L0x605088;
(* lea    0x10(%rsi),%rsi                          #! PC = 0x4207015 *)
#lea    %%EA,%rsi                          #! 0x4207015 = 0x4207015;
(* andn   %r11,%rax,%r10                           #! PC = 0x4207019 *)
assert true && rax = 0xfffff00000000000@64;
usplit r11_H r10 r11 44;
(* shrd   $0x2c,%r12,%r11                          #! PC = 0x4207024 *)
usplit r12_H r12_L r12 44;
cshl r11 dontcare r12_L r11 20;
(* NOTE: add relation *)
assert true && r11 = r11_H + r12_L * (2**20)@64;
assume r11 = r11_H + r12_L * 2**20 && true;
(* add    %r10,%rdx                                #! PC = 0x4207029 *)
uadd rdx r10 rdx;
(* shr    $0x18,%r12                               #! PC = 0x4207032 *)
usplit r12 dontcare r12 24;
(* NOTE: add relation *)
assert true && r12 * (2**24)@64 + dontcare = r12_H * (2**44)@64 + r12_L;
assume r12 * 2**24 + dontcare = r12_H * 2**44 + r12_L && true;
(* andn   %r11,%rax,%r11                           #! PC = 0x4207036 *)
assert true && rax = 0xfffff00000000000@64;
usplit r11_HH r11 r11 44;
(* NOTE: add relation *)
assert true && r11 = dontcare * (2**20)@64 + r11_H;
assume r11 = dontcare * 2**20 + r11_H && true;
(* add    %rcx,%r9                                 #! PC = 0x4207041 *)
uadd r9 rcx r9;
(* add    %r11,%r8                                 #! PC = 0x4207044 *)
uadd r8 r11 r8;
(* add    %r12,%r9                                 #! PC = 0x4207047 *)
uadd r9 r12 r9;
(* mulx   %r13,%r10,%rbx                           #! PC = 0x4207050 *)
umull rbx r10 r13 rdx;
(* mulx   %r14,%r11,%rcx                           #! PC = 0x4207055 *)
umull rcx r11 r14 rdx;
(* mulx   0x38(%rdi),%r12,%rbp                     #! EA = L0x16af048; Value = 0x0000000887766404; PC = 0x4207060 *)
umull rbp r12 L0x16af048 rdx;
(* mov    %r8,%rdx                                 #! PC = 0x4207066 *)
mov rdx r8;
(* mulx   %r15,%rax,%r8                            #! PC = 0x4207069 *)
umull r8 rax r15 rdx;
(* add    %rax,%r10                                #! PC = 0x4207074 *)
uadds carry r10 rax r10;
(* adc    %rbx,%r8                                 #! PC = 0x4207077 *)
uadc r8 rbx r8 carry;
(* mulx   %r13,%rax,%rbx                           #! PC = 0x4207080 *)
umull rbx rax r13 rdx;
(* add    %rax,%r11                                #! PC = 0x4207085 *)
uadds carry r11 rax r11;
(* adc    %rbx,%rcx                                #! PC = 0x4207088 *)
uadc rcx rbx rcx carry;
(* mulx   %r14,%rax,%rbx                           #! PC = 0x4207091 *)
umull rbx rax r14 rdx;
(* mov    %r9,%rdx                                 #! PC = 0x4207096 *)
mov rdx r9;
(* add    %rax,%r12                                #! PC = 0x4207099 *)
uadds carry r12 rax r12;
(* adc    %rbx,%rbp                                #! PC = 0x4207102 *)
uadc rbp rbx rbp carry;
(* mulx   0x18(%rdi),%rax,%rbx                     #! EA = L0x16af028; Value = 0x000053fea80aabf4; PC = 0x4207105 *)
umull rbx rax L0x16af028 rdx;
(* add    %rax,%r10                                #! PC = 0x4207111 *)
uadds carry r10 rax r10;
(* adc    %rbx,%r8                                 #! PC = 0x4207114 *)
uadc r8 rbx r8 carry;
(* mulx   %r15,%rax,%r9                            #! PC = 0x4207117 *)
umull r9 rax r15 rdx;
(* add    %rax,%r11                                #! PC = 0x4207122 *)
uadds carry r11 rax r11;
(* adc    %rcx,%r9                                 #! PC = 0x4207125 *)
uadc r9 rcx r9 carry;
(* mulx   %r13,%rax,%rbx                           #! PC = 0x4207128 *)
umull rbx rax r13 rdx;
(* add    %rax,%r12                                #! PC = 0x4207133 *)
uadds carry r12 rax r12;
(* adc    %rbx,%rbp                                #! PC = 0x4207136 *)
uadc rbp rbx rbp carry;
(* movabs $0xfffff00000000000,%rax                 #! PC = 0x4207139 *)
mov rax 0xfffff00000000000@uint64;
(* andn   %r10,%rax,%rdx                           #! PC = 0x4207149 *)
assert true && rax = 0xfffff00000000000@64;
usplit r10_H rdx r10 44;
(* shrd   $0x2c,%r8,%r10                           #! PC = 0x4207154 *)
usplit r8_H r8_L r8 44;
cshl r10 dontcare r8_L r10 20;
(* NOTE: add relation *)
assert true && r10 = r8_L * (2**20)@64 + r10_H;
assume r10 = r8_L * 2**20 + r10_H && true;
assert true && r8_H = 0@64;
assume r8_H = 0 && true;
(* add    %r10,%r11                                #! PC = 0x4207159 *)
uadds carry r11 r10 r11;
(* WARNING: carry can be 1 *)
(*
assert true && carry = 0@1;
*)
(* adc    $0x0,%r9                                 #! PC = 0x4207162 *)
uadc r9 r9 0@uint64 carry;
(* andn   %r11,%rax,%r8                            #! PC = 0x4207166 *)
assert true && rax = 0xfffff00000000000@64;
usplit r11_H r8 r11 44;
(* shrd   $0x2c,%r9,%r11                           #! PC = 0x4207171 *)
usplit r9_H r9_L r9 44;
cshl r11 dontcare r9_L r11 20;
(* NOTE: add relation *)
assert true && r11 = r9_L * (2**20)@64 + r11_H;
assume r11 = r9_L * 2**20 + r11_H && true;
assert true && r9_H = 0@64;
assume r9_H = 0 && true;
(* movabs $0x3ffffffffff,%r9                       #! PC = 0x4207176 *)
mov r9 0x3ffffffffff@uint64;
(* add    %r11,%r12                                #! PC = 0x4207186 *)
uadds carry r12 r11 r12;
(* WARNING: carry can be 1 *)
(*
assert true && carry = 0@1;
assume carry = 0 && true;
*)
(* #?#adc	\$0,%rbp *)
#?#adc	\$0,%%rbp;
uadc rbp rbp 0@uint64 carry;
(* and    %r12,%r9                                 #! PC = 0x4207189 *)
assert true && r9 = 0x3ffffffffff@64;
usplit r12_H r9 r12 42;
(* shrd   $0x2a,%rbp,%r12                          #! PC = 0x4207192 *)
usplit rbp_H rbp_L rbp 42;
cshl r12 dontcare rbp_L r12 22;
(* NOTE: add relation *)
assert true && r12 = rbp_L * (2**22)@64 + r12_H;
assume r12 = rbp_L * 2**22 + r12_H && true;
assert true && rbp_H = 0@64;
assume rbp_H = 0 && true;
(* movabs $0x10000000000,%rcx                      #! PC = 0x4207197 *)
mov rcx 0x10000000000@uint64;
(* lea    (%r12,%r12,4),%r12                       #! PC = 0x4207207 *)
#lea    (%%r12,%%r12,4),%%r12                       #! 0x4207207 = 0x4207207;
umul r12 r12 5@uint64;
(* add    %r12,%rdx                                #! PC = 0x4207211 *)
uadd rdx r12 rdx;
(* #jb     0x4031a0 <poly1305_blocks_base2_44+64>  #! PC = 0x4207218 *)
#jb     0x4031a0 <poly1305_blocks_base2_44+64>  #! 0x4207218 = 0x4207218;
(* #repz retq                                      #! PC = 0x4207270 *)
#repz retq                                      #! 0x4207270 = 0x4207270;

mov H0 rdx;
mov H1 r8;
mov H2 r9;

{
  eqmod (limbs 44 [H0, H1, H2])
        (((limbs 44 [h0, h1, h2]) + (limbs 64 [inp0, inp1, padbit]))
         *
         (limbs 44 [r0, r1, r2]))
        (2**130-5)
&&
  and [
    H0 <=u 0x3ffffffffffff@64, H1 <=u 0xfffffffffff@64, H2 <=u 0x3ffffffffff@64
  ]

}

