(* quine: -jobs 20 -v -btor -isafety -qfbv_args "-SE minisat" fp_rdcn_low.cl
Parsing Cryptoline file:                [OK]            0.006405 seconds
Checking well-formedness:               [OK]            0.001480 seconds
Transforming to SSA form:               [OK]            0.000422 seconds
Rewriting assignments:                  [OK]            0.002218 seconds
Verifying program safety:               [OK]            5.438224 seconds
Verifying range assertions:             [OK]            12.158579 seconds
Verifying range specification:          [OK]            10.291934 seconds
Rewriting value-preserved casting:      [OK]            0.000024 seconds
Verifying algebraic assertions:         [OK]            0.308091 seconds
Verifying algebraic specification:      [OK]            0.901961 seconds
Verification result:                    [OK]            29.110186 seconds
*)

proc main (uint64 c0, uint64 c1, uint64 c2, uint64 c3,  uint64 c4,  uint64 c5,
           uint64 c6, uint64 c7, uint64 c8, uint64 c9, uint64 c10, uint64 c11) =
{
  true
&&
  limbs 64 [c0, c1, c2, c3,  c4,  c5,
            c6, c7, c8, c9, c10, c11] <
  (limbs 64 [0x004e000000000013@64, 0x09480097801382be@64,
             0xa6e58dbe43002a06@64, 0x6f82cefbe47879bb@64,
             0x2d996cc179c6d166@64, 0x24009015183f9489@64,
             0@64, 0@64, 0@64, 0@64, 0@64, 0@64] *
   limbs 64 [0x004e000000000013@64, 0x09480097801382be@64,
             0xa6e58dbe43002a06@64, 0x6f82cefbe47879bb@64,
             0x2d996cc179c6d166@64, 0x24009015183f9489@64,
             0@64, 0@64, 0@64, 0@64, 0@64, 0@64])
}

mov L0x7fffffffda00 c0;
mov L0x7fffffffda08 c1;
mov L0x7fffffffda10 c2;
mov L0x7fffffffda18 c3;
mov L0x7fffffffda20 c4;
mov L0x7fffffffda28 c5;
mov L0x7fffffffda30 c6;
mov L0x7fffffffda38 c7;
mov L0x7fffffffda40 c8;
mov L0x7fffffffda48 c9;
mov L0x7fffffffda50 c10;
mov L0x7fffffffda58 c11;

(* prime *)
mov L0x555555757010 0x004e000000000013@uint64;
mov L0x555555757018 0x09480097801382be@uint64;
mov L0x555555757020 0xa6e58dbe43002a06@uint64;
mov L0x555555757028 0x6f82cefbe47879bb@uint64;
mov L0x555555757030 0x2d996cc179c6d166@uint64;
mov L0x555555757038 0x24009015183f9489@uint64;

(* #push   %r12                                     #! PC = 0x93824992237997 *)
#push   %%r12                                     #! 0x93824992237997 = 0x93824992237997;
(* #push   %r13                                     #! PC = 0x93824992237999 *)
#push   %%r13                                     #! 0x93824992237999 = 0x93824992237999;
(* #push   %r14                                     #! PC = 0x93824992238001 *)
#push   %%r14                                     #! 0x93824992238001 = 0x93824992238001;
(* #push   %r15                                     #! PC = 0x93824992238003 *)
#push   %%r15                                     #! 0x93824992238003 = 0x93824992238003;
(* #push   %rbx                                     #! PC = 0x93824992238005 *)
#push   %rbx                                     #! 0x93824992238005 = 0x93824992238005;
(* #push   %rbp                                     #! PC = 0x93824992238006 *)
#push   %rbp                                     #! 0x93824992238006 = 0x93824992238006;
(* #lea    0x201652(%rip),%rbx        # 0x555555757010#! PC = 0x93824992238007 *)
#lea    %%EA,%rbx        # 0x555555757010#! 0x93824992238007 = 0x93824992238007;
(* xor    %r9,%r9                                  #! PC = 0x93824992238014 *)
mov r9 0@uint64;
(* movabs $0xdf615e50d79435e5,%rcx                 #! PC = 0x93824992238017 *)
mov rcx 0xdf615e50d79435e5@uint64;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffda00; Value = 0x0000000000000000; PC = 0x93824992238027 *)
mov r8 L0x7fffffffda00;
(* mov    %r8,%rax                                 #! PC = 0x93824992238030 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x93824992238033 *)
mull rdx rax rax rcx;
(* mov    %rax,(%rsi)                              #! EA = L0x7fffffffda00; PC = 0x93824992238036 *)
mov L0x7fffffffda00 rax;
(* mulq   (%rbx)                                   #! EA = L0x555555757010; PC = 0x93824992238039 *)
mull rdx rax rax L0x555555757010;
(* add    %rax,%r8                                 #! PC = 0x93824992238042 *)
adds carry r8 r8 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r8 0 (2**64) && true;
assume r8 + 0 = 0 && true;
(* adc    %rdx,%r9                                 #! PC = 0x93824992238045 *)
adc r9 r9 rdx carry;
(* xor    %r10,%r10                                #! PC = 0x93824992238048 *)
mov r10 0@uint64;
(* xor    %r8,%r8                                  #! PC = 0x93824992238051 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffda00; Value = 0x0000000000000000; PC = 0x93824992238054 *)
mov rax L0x7fffffffda00;
(* mulq   0x8(%rbx)                                #! EA = L0x555555757018; PC = 0x93824992238057 *)
mull rdx rax rax L0x555555757018;
(* add    %rax,%r9                                 #! PC = 0x93824992238061 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992238064 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992238067 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x8(%rsi),%r9                            #! EA = L0x7fffffffda08; Value = 0x00000000756e6547; PC = 0x93824992238071 *)
adds carry r9 r9 L0x7fffffffda08;
(* adc    $0x0,%r10                                #! PC = 0x93824992238075 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992238079 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x93824992238083 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x93824992238086 *)
mull rdx rax rax rcx;
(* mov    %rax,0x8(%rsi)                           #! EA = L0x7fffffffda08; PC = 0x93824992238089 *)
mov L0x7fffffffda08 rax;
(* mulq   (%rbx)                                   #! EA = L0x555555757010; PC = 0x93824992238093 *)
mull rdx rax rax L0x555555757010;
(* add    %rax,%r9                                 #! PC = 0x93824992238096 *)
adds carry r9 r9 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r9 0 (2**64) && true;
assume r9 = 0 && true;
(* adc    %rdx,%r10                                #! PC = 0x93824992238099 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992238102 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x93824992238106 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffda00; Value = 0x0000000000000000; PC = 0x93824992238109 *)
mov rax L0x7fffffffda00;
(* mulq   0x10(%rbx)                               #! EA = L0x555555757020; PC = 0x93824992238112 *)
mull rdx rax rax L0x555555757020;
(* add    %rax,%r10                                #! PC = 0x93824992238116 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992238119 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992238122 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffda08; Value = 0xd77a6bca14c44b83; PC = 0x93824992238126 *)
mov rax L0x7fffffffda08;
(* mulq   0x8(%rbx)                                #! EA = L0x555555757018; PC = 0x93824992238130 *)
mull rdx rax rax L0x555555757018;
(* add    %rax,%r10                                #! PC = 0x93824992238134 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992238137 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992238140 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x10(%rsi),%r10                          #! EA = L0x7fffffffda10; Value = 0x0000000000000009; PC = 0x93824992238144 *)
adds carry r10 r10 L0x7fffffffda10;
(* adc    $0x0,%r8                                 #! PC = 0x93824992238148 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992238152 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x93824992238156 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x93824992238159 *)
mull rdx rax rax rcx;
(* mov    %rax,0x10(%rsi)                          #! EA = L0x7fffffffda10; PC = 0x93824992238162 *)
mov L0x7fffffffda10 rax;
(* mulq   (%rbx)                                   #! EA = L0x555555757010; PC = 0x93824992238166 *)
mull rdx rax rax L0x555555757010;
(* add    %rax,%r10                                #! PC = 0x93824992238169 *)
adds carry r10 r10 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r10 0 (2**64) && true;
assume r10 = 0 && true;
(* adc    %rdx,%r8                                 #! PC = 0x93824992238172 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992238175 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x93824992238179 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffda00; Value = 0x0000000000000000; PC = 0x93824992238182 *)
mov rax L0x7fffffffda00;
(* mulq   0x18(%rbx)                               #! EA = L0x555555757028; PC = 0x93824992238185 *)
mull rdx rax rax L0x555555757028;
(* add    %rax,%r8                                 #! PC = 0x93824992238189 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x93824992238192 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992238195 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffda08; Value = 0xd77a6bca14c44b83; PC = 0x93824992238199 *)
mov rax L0x7fffffffda08;
(* mulq   0x10(%rbx)                               #! EA = L0x555555757020; PC = 0x93824992238203 *)
mull rdx rax rax L0x555555757020;
(* add    %rax,%r8                                 #! PC = 0x93824992238207 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x93824992238210 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992238213 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffda10; Value = 0xdc33c358a124016a; PC = 0x93824992238217 *)
mov rax L0x7fffffffda10;
(* mulq   0x8(%rbx)                                #! EA = L0x555555757018; PC = 0x93824992238221 *)
mull rdx rax rax L0x555555757018;
(* add    %rax,%r8                                 #! PC = 0x93824992238225 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x93824992238228 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992238231 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x18(%rsi),%r8                           #! EA = L0x7fffffffda18; Value = 0x00007ffff7dd7660; PC = 0x93824992238235 *)
adds carry r8 r8 L0x7fffffffda18;
(* adc    $0x0,%r9                                 #! PC = 0x93824992238239 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992238243 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,%rax                                 #! PC = 0x93824992238247 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x93824992238250 *)
mull rdx rax rax rcx;
(* mov    %rax,0x18(%rsi)                          #! EA = L0x7fffffffda18; PC = 0x93824992238253 *)
mov L0x7fffffffda18 rax;
(* mulq   (%rbx)                                   #! EA = L0x555555757010; PC = 0x93824992238257 *)
mull rdx rax rax L0x555555757010;
(* add    %rax,%r8                                 #! PC = 0x93824992238260 *)
adds carry r8 r8 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r8 0 (2**64) && true;
assume r8 = 0 && true;
(* adc    %rdx,%r9                                 #! PC = 0x93824992238263 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992238266 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x93824992238270 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffda00; Value = 0x0000000000000000; PC = 0x93824992238273 *)
mov rax L0x7fffffffda00;
(* mulq   0x20(%rbx)                               #! EA = L0x555555757030; PC = 0x93824992238276 *)
mull rdx rax rax L0x555555757030;
(* add    %rax,%r9                                 #! PC = 0x93824992238280 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992238283 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992238286 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffda08; Value = 0xd77a6bca14c44b83; PC = 0x93824992238290 *)
mov rax L0x7fffffffda08;
(* mulq   0x18(%rbx)                               #! EA = L0x555555757028; PC = 0x93824992238294 *)
mull rdx rax rax L0x555555757028;
(* add    %rax,%r9                                 #! PC = 0x93824992238298 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992238301 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992238304 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffda10; Value = 0xdc33c358a124016a; PC = 0x93824992238308 *)
mov rax L0x7fffffffda10;
(* mulq   0x10(%rbx)                               #! EA = L0x555555757020; PC = 0x93824992238312 *)
mull rdx rax rax L0x555555757020;
(* add    %rax,%r9                                 #! PC = 0x93824992238316 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992238319 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992238322 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffda18; Value = 0xdca821269c6f3a91; PC = 0x93824992238326 *)
mov rax L0x7fffffffda18;
(* mulq   0x8(%rbx)                                #! EA = L0x555555757018; PC = 0x93824992238330 *)
mull rdx rax rax L0x555555757018;
(* add    %rax,%r9                                 #! PC = 0x93824992238334 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992238337 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992238340 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x20(%rsi),%r9                           #! EA = L0x7fffffffda20; Value = 0x00007fffffffda88; PC = 0x93824992238344 *)
adds carry r9 r9 L0x7fffffffda20;
(* adc    $0x0,%r10                                #! PC = 0x93824992238348 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992238352 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x93824992238356 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x93824992238359 *)
mull rdx rax rax rcx;
(* mov    %rax,0x20(%rsi)                          #! EA = L0x7fffffffda20; PC = 0x93824992238362 *)
mov L0x7fffffffda20 rax;
(* mulq   (%rbx)                                   #! EA = L0x555555757010; PC = 0x93824992238366 *)
mull rdx rax rax L0x555555757010;
(* add    %rax,%r9                                 #! PC = 0x93824992238369 *)
adds carry r9 r9 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r9 0 (2**64) && true;
assume r9 = 0 && true;
(* adc    %rdx,%r10                                #! PC = 0x93824992238372 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992238375 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x93824992238379 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffda00; Value = 0x0000000000000000; PC = 0x93824992238382 *)
mov rax L0x7fffffffda00;
(* mulq   0x28(%rbx)                               #! EA = L0x555555757038; PC = 0x93824992238385 *)
mull rdx rax rax L0x555555757038;
(* add    %rax,%r10                                #! PC = 0x93824992238389 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992238392 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992238395 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffda08; Value = 0xd77a6bca14c44b83; PC = 0x93824992238399 *)
mov rax L0x7fffffffda08;
(* mulq   0x20(%rbx)                               #! EA = L0x555555757030; PC = 0x93824992238403 *)
mull rdx rax rax L0x555555757030;
(* add    %rax,%r10                                #! PC = 0x93824992238407 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992238410 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992238413 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffda10; Value = 0xdc33c358a124016a; PC = 0x93824992238417 *)
mov rax L0x7fffffffda10;
(* mulq   0x18(%rbx)                               #! EA = L0x555555757028; PC = 0x93824992238421 *)
mull rdx rax rax L0x555555757028;
(* add    %rax,%r10                                #! PC = 0x93824992238425 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992238428 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992238431 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffda18; Value = 0xdca821269c6f3a91; PC = 0x93824992238435 *)
mov rax L0x7fffffffda18;
(* mulq   0x10(%rbx)                               #! EA = L0x555555757020; PC = 0x93824992238439 *)
mull rdx rax rax L0x555555757020;
(* add    %rax,%r10                                #! PC = 0x93824992238443 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992238446 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992238449 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffda20; Value = 0x0921901e9c8d1bd4; PC = 0x93824992238453 *)
mov rax L0x7fffffffda20;
(* mulq   0x8(%rbx)                                #! EA = L0x555555757018; PC = 0x93824992238457 *)
mull rdx rax rax L0x555555757018;
(* add    %rax,%r10                                #! PC = 0x93824992238461 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992238464 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992238467 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x28(%rsi),%r10                          #! EA = L0x7fffffffda28; Value = 0x0000000000f0b5ff; PC = 0x93824992238471 *)
adds carry r10 r10 L0x7fffffffda28;
(* adc    $0x0,%r8                                 #! PC = 0x93824992238475 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992238479 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x93824992238483 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x93824992238486 *)
mull rdx rax rax rcx;
(* mov    %rax,0x28(%rsi)                          #! EA = L0x7fffffffda28; PC = 0x93824992238489 *)
mov L0x7fffffffda28 rax;
(* mulq   (%rbx)                                   #! EA = L0x555555757010; PC = 0x93824992238493 *)
mull rdx rax rax L0x555555757010;
(* add    %rax,%r10                                #! PC = 0x93824992238496 *)
adds carry r10 r10 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r10 0 (2**64) && true;
assume r10 = 0 && true;
(* adc    %rdx,%r8                                 #! PC = 0x93824992238499 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992238502 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x93824992238506 *)
mov r10 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffda08; Value = 0xd77a6bca14c44b83; PC = 0x93824992238509 *)
mov rax L0x7fffffffda08;
(* mulq   0x28(%rbx)                               #! EA = L0x555555757038; PC = 0x93824992238513 *)
mull rdx rax rax L0x555555757038;
(* add    %rax,%r8                                 #! PC = 0x93824992238517 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x93824992238520 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992238523 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffda10; Value = 0xdc33c358a124016a; PC = 0x93824992238527 *)
mov rax L0x7fffffffda10;
(* mulq   0x20(%rbx)                               #! EA = L0x555555757030; PC = 0x93824992238531 *)
mull rdx rax rax L0x555555757030;
(* add    %rax,%r8                                 #! PC = 0x93824992238535 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x93824992238538 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992238541 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffda18; Value = 0xdca821269c6f3a91; PC = 0x93824992238545 *)
mov rax L0x7fffffffda18;
(* mulq   0x18(%rbx)                               #! EA = L0x555555757028; PC = 0x93824992238549 *)
mull rdx rax rax L0x555555757028;
(* add    %rax,%r8                                 #! PC = 0x93824992238553 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x93824992238556 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992238559 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffda20; Value = 0x0921901e9c8d1bd4; PC = 0x93824992238563 *)
mov rax L0x7fffffffda20;
(* mulq   0x10(%rbx)                               #! EA = L0x555555757020; PC = 0x93824992238567 *)
mull rdx rax rax L0x555555757020;
(* add    %rax,%r8                                 #! PC = 0x93824992238571 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x93824992238574 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992238577 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffda28; Value = 0x6599227801afdab9; PC = 0x93824992238581 *)
mov rax L0x7fffffffda28;
(* mulq   0x8(%rbx)                                #! EA = L0x555555757018; PC = 0x93824992238585 *)
mull rdx rax rax L0x555555757018;
(* add    %rax,%r8                                 #! PC = 0x93824992238589 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x93824992238592 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992238595 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x30(%rsi),%r8                           #! EA = L0x7fffffffda30; Value = 0x0000000000000001; PC = 0x93824992238599 *)
adds carry r8 r8 L0x7fffffffda30;
(* adc    $0x0,%r9                                 #! PC = 0x93824992238603 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992238607 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,0x30(%rsi)                           #! EA = L0x7fffffffda30; PC = 0x93824992238611 *)
mov L0x7fffffffda30 r8;
(* xor    %r8,%r8                                  #! PC = 0x93824992238615 *)
mov r8 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffda10; Value = 0xdc33c358a124016a; PC = 0x93824992238618 *)
mov rax L0x7fffffffda10;
(* mulq   0x28(%rbx)                               #! EA = L0x555555757038; PC = 0x93824992238622 *)
mull rdx rax rax L0x555555757038;
(* add    %rax,%r9                                 #! PC = 0x93824992238626 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992238629 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992238632 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffda18; Value = 0xdca821269c6f3a91; PC = 0x93824992238636 *)
mov rax L0x7fffffffda18;
(* mulq   0x20(%rbx)                               #! EA = L0x555555757030; PC = 0x93824992238640 *)
mull rdx rax rax L0x555555757030;
(* add    %rax,%r9                                 #! PC = 0x93824992238644 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992238647 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992238650 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffda20; Value = 0x0921901e9c8d1bd4; PC = 0x93824992238654 *)
mov rax L0x7fffffffda20;
(* mulq   0x18(%rbx)                               #! EA = L0x555555757028; PC = 0x93824992238658 *)
mull rdx rax rax L0x555555757028;
(* add    %rax,%r9                                 #! PC = 0x93824992238662 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992238665 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992238668 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffda28; Value = 0x6599227801afdab9; PC = 0x93824992238672 *)
mov rax L0x7fffffffda28;
(* mulq   0x10(%rbx)                               #! EA = L0x555555757020; PC = 0x93824992238676 *)
mull rdx rax rax L0x555555757020;
(* add    %rax,%r9                                 #! PC = 0x93824992238680 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992238683 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992238686 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x38(%rsi),%r9                           #! EA = L0x7fffffffda38; Value = 0x0000555555555dfd; PC = 0x93824992238690 *)
adds carry r9 r9 L0x7fffffffda38;
(* adc    $0x0,%r10                                #! PC = 0x93824992238694 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992238698 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,0x38(%rsi)                           #! EA = L0x7fffffffda38; PC = 0x93824992238702 *)
mov L0x7fffffffda38 r9;
(* xor    %r9,%r9                                  #! PC = 0x93824992238706 *)
mov r9 0@uint64;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffda18; Value = 0xdca821269c6f3a91; PC = 0x93824992238709 *)
mov rax L0x7fffffffda18;
(* mulq   0x28(%rbx)                               #! EA = L0x555555757038; PC = 0x93824992238713 *)
mull rdx rax rax L0x555555757038;
(* add    %rax,%r10                                #! PC = 0x93824992238717 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992238720 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992238723 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffda20; Value = 0x0921901e9c8d1bd4; PC = 0x93824992238727 *)
mov rax L0x7fffffffda20;
(* mulq   0x20(%rbx)                               #! EA = L0x555555757030; PC = 0x93824992238731 *)
mull rdx rax rax L0x555555757030;
(* add    %rax,%r10                                #! PC = 0x93824992238735 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992238738 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992238741 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffda28; Value = 0x6599227801afdab9; PC = 0x93824992238745 *)
mov rax L0x7fffffffda28;
(* mulq   0x18(%rbx)                               #! EA = L0x555555757028; PC = 0x93824992238749 *)
mull rdx rax rax L0x555555757028;
(* add    %rax,%r10                                #! PC = 0x93824992238753 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992238756 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992238759 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x40(%rsi),%r10                          #! EA = L0x7fffffffda40; Value = 0x00007ffff7de59a0; PC = 0x93824992238763 *)
adds carry r10 r10 L0x7fffffffda40;
(* adc    $0x0,%r8                                 #! PC = 0x93824992238767 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992238771 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,0x40(%rsi)                          #! EA = L0x7fffffffda40; PC = 0x93824992238775 *)
mov L0x7fffffffda40 r10;
(* xor    %r10,%r10                                #! PC = 0x93824992238779 *)
mov r10 0@uint64;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffda20; Value = 0x0921901e9c8d1bd4; PC = 0x93824992238782 *)
mov rax L0x7fffffffda20;
(* mulq   0x28(%rbx)                               #! EA = L0x555555757038; PC = 0x93824992238786 *)
mull rdx rax rax L0x555555757038;
(* add    %rax,%r8                                 #! PC = 0x93824992238790 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x93824992238793 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992238796 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffda28; Value = 0x6599227801afdab9; PC = 0x93824992238800 *)
mov rax L0x7fffffffda28;
(* mulq   0x20(%rbx)                               #! EA = L0x555555757030; PC = 0x93824992238804 *)
mull rdx rax rax L0x555555757030;
(* add    %rax,%r8                                 #! PC = 0x93824992238808 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x93824992238811 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992238814 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x48(%rsi),%r8                           #! EA = L0x7fffffffda48; Value = 0x0000000000000000; PC = 0x93824992238818 *)
adds carry r8 r8 L0x7fffffffda48;
(* adc    $0x0,%r9                                 #! PC = 0x93824992238822 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992238826 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,0x48(%rsi)                           #! EA = L0x7fffffffda48; PC = 0x93824992238830 *)
mov L0x7fffffffda48 r8;
(* xor    %r8,%r8                                  #! PC = 0x93824992238834 *)
mov r8 0@uint64;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffda28; Value = 0x6599227801afdab9; PC = 0x93824992238837 *)
mov rax L0x7fffffffda28;
(* mulq   0x28(%rbx)                               #! EA = L0x555555757038; PC = 0x93824992238841 *)
mull rdx rax rax L0x555555757038;
(* add    %rax,%r9                                 #! PC = 0x93824992238845 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992238848 *)
adcs carry r10 r10 rdx carry;
(* NOTE: cannot carry *)
assert true && carry = 0@1;
assume carry = 0 && true;
(* adc    $0x0,%r8                                 #! PC = 0x93824992238851 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x50(%rsi),%r9                           #! EA = L0x7fffffffda50; Value = 0x0000555555555db0; PC = 0x93824992238855 *)
adds carry r9 r9 L0x7fffffffda50;
(* adc    $0x0,%r10                                #! PC = 0x93824992238859 *)
adcs carry r10 r10 0x0@uint64 carry;
(* NOTE: cannot carry *)
assert true && carry = 0@1;
assume carry = 0 && true;
(* adc    $0x0,%r8                                 #! PC = 0x93824992238863 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,0x50(%rsi)                           #! EA = L0x7fffffffda50; PC = 0x93824992238867 *)
mov L0x7fffffffda50 r9;
(* xor    %r9,%r9                                  #! PC = 0x93824992238871 *)
mov r9 0@uint64;
(* add    0x58(%rsi),%r10                          #! EA = L0x7fffffffda58; Value = 0x0000555555554560; PC = 0x93824992238874 *)
adds carry r10 r10 L0x7fffffffda58;
(* NOTE: cannot carry *)
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r10,0x58(%rsi)                          #! EA = L0x7fffffffda58; PC = 0x93824992238878 *)
mov L0x7fffffffda58 r10;
(* mov    0x30(%rsi),%r11                          #! EA = L0x7fffffffda30; Value = 0x2418099d7a5e0147; PC = 0x93824992238882 *)
mov r11 L0x7fffffffda30;
(* mov    0x38(%rsi),%r12                          #! EA = L0x7fffffffda38; Value = 0xb8a340fb8b4e4b9a; PC = 0x93824992238886 *)
mov r12 L0x7fffffffda38;
(* mov    0x40(%rsi),%r13                          #! EA = L0x7fffffffda40; Value = 0xe8ab4605ea73b7cd; PC = 0x93824992238890 *)
mov r13 L0x7fffffffda40;
(* mov    0x48(%rsi),%r14                          #! EA = L0x7fffffffda48; Value = 0x89d1ffa66c51d6eb; PC = 0x93824992238894 *)
mov r14 L0x7fffffffda48;
(* mov    0x50(%rsi),%r15                          #! EA = L0x7fffffffda50; Value = 0xc8689ca317757cd0; PC = 0x93824992238898 *)
mov r15 L0x7fffffffda50;
(* mov    0x58(%rsi),%rcx                          #! EA = L0x7fffffffda58; Value = 0x0e4a175cb824ebca; PC = 0x93824992238902 *)
mov rcx L0x7fffffffda58;
(* sub    0x2012cf(%rip),%r11        # 0x555555757010#! EA = L0x555555757010; Value = 0x004e000000000013; PC = 0x93824992238906 *)
subb carry r11 r11 L0x555555757010;
(* sbb    0x2012d0(%rip),%r12        # 0x555555757018#! EA = L0x555555757018; Value = 0x09480097801382be; PC = 0x93824992238913 *)
sbbs carry r12 r12 L0x555555757018 carry;
(* sbb    0x2012d1(%rip),%r13        # 0x555555757020#! EA = L0x555555757020; Value = 0xa6e58dbe43002a06; PC = 0x93824992238920 *)
sbbs carry r13 r13 L0x555555757020 carry;
(* sbb    0x2012d2(%rip),%r14        # 0x555555757028#! EA = L0x555555757028; Value = 0x6f82cefbe47879bb; PC = 0x93824992238927 *)
sbbs carry r14 r14 L0x555555757028 carry;
(* sbb    0x2012d3(%rip),%r15        # 0x555555757030#! EA = L0x555555757030; Value = 0x2d996cc179c6d166; PC = 0x93824992238934 *)
sbbs carry r15 r15 L0x555555757030 carry;
(* sbb    0x2012d4(%rip),%rcx        # 0x555555757038#! EA = L0x555555757038; Value = 0x24009015183f9489; PC = 0x93824992238941 *)
sbbs carry rcx rcx L0x555555757038 carry;
(* cmovb  0x30(%rsi),%r11                          #! EA = L0x7fffffffda30; Value = 0x2418099d7a5e0147; PC = 0x93824992238948 *)
cmov r11 carry L0x7fffffffda30 r11;
(* cmovb  0x38(%rsi),%r12                          #! EA = L0x7fffffffda38; Value = 0xb8a340fb8b4e4b9a; PC = 0x93824992238953 *)
cmov r12 carry L0x7fffffffda38 r12;
(* cmovb  0x40(%rsi),%r13                          #! EA = L0x7fffffffda40; Value = 0xe8ab4605ea73b7cd; PC = 0x93824992238958 *)
cmov r13 carry L0x7fffffffda40 r13;
(* cmovb  0x48(%rsi),%r14                          #! EA = L0x7fffffffda48; Value = 0x89d1ffa66c51d6eb; PC = 0x93824992238963 *)
cmov r14 carry L0x7fffffffda48 r14;
(* cmovb  0x50(%rsi),%r15                          #! EA = L0x7fffffffda50; Value = 0xc8689ca317757cd0; PC = 0x93824992238968 *)
cmov r15 carry L0x7fffffffda50 r15;
(* cmovb  0x58(%rsi),%rcx                          #! EA = L0x7fffffffda58; Value = 0x0e4a175cb824ebca; PC = 0x93824992238973 *)
cmov rcx carry L0x7fffffffda58 rcx;

assert true
    && eqmod (limbs 64 [r11, r12, r13, r14, r15, rcx])
             (limbs 64 [L0x7fffffffda30, L0x7fffffffda38,
                        L0x7fffffffda40, L0x7fffffffda48, 
                        L0x7fffffffda50, L0x7fffffffda58])
             (limbs 64 [0x004e000000000013@64, 0x09480097801382be@64,
                        0xa6e58dbe43002a06@64, 0x6f82cefbe47879bb@64,
                        0x2d996cc179c6d166@64, 0x24009015183f9489@64]);

assume eqmod (limbs 64 [r11, r12, r13, r14, r15, rcx])
             (limbs 64 [L0x7fffffffda30, L0x7fffffffda38,
                        L0x7fffffffda40, L0x7fffffffda48, 
                        L0x7fffffffda50, L0x7fffffffda58])
             (limbs 64 [0x004e000000000013, 0x09480097801382be,
                        0xa6e58dbe43002a06, 0x6f82cefbe47879bb,
                        0x2d996cc179c6d166, 0x24009015183f9489])
    && true;
                        

(* mov    %r11,(%rdi)                              #! EA = L0x7fffffffd9d0; PC = 0x93824992238978 *)
mov L0x7fffffffd9d0 r11;
(* mov    %r12,0x8(%rdi)                           #! EA = L0x7fffffffd9d8; PC = 0x93824992238981 *)
mov L0x7fffffffd9d8 r12;
(* mov    %r13,0x10(%rdi)                          #! EA = L0x7fffffffd9e0; PC = 0x93824992238985 *)
mov L0x7fffffffd9e0 r13;
(* mov    %r14,0x18(%rdi)                          #! EA = L0x7fffffffd9e8; PC = 0x93824992238989 *)
mov L0x7fffffffd9e8 r14;
(* mov    %r15,0x20(%rdi)                          #! EA = L0x7fffffffd9f0; PC = 0x93824992238993 *)
mov L0x7fffffffd9f0 r15;
(* mov    %rcx,0x28(%rdi)                          #! EA = L0x7fffffffd9f8; PC = 0x93824992238997 *)
mov L0x7fffffffd9f8 rcx;
(* #pop    %rbp                                     #! PC = 0x93824992239001 *)
#pop    %rbp                                     #! 0x93824992239001 = 0x93824992239001;
(* #pop    %rbx                                     #! PC = 0x93824992239002 *)
#pop    %rbx                                     #! 0x93824992239002 = 0x93824992239002;
(* #pop    %r15                                     #! PC = 0x93824992239003 *)
#pop    %%r15                                     #! 0x93824992239003 = 0x93824992239003;
(* #pop    %r14                                     #! PC = 0x93824992239005 *)
#pop    %%r14                                     #! 0x93824992239005 = 0x93824992239005;
(* #pop    %r13                                     #! PC = 0x93824992239007 *)
#pop    %%r13                                     #! 0x93824992239007 = 0x93824992239007;
(* #pop    %r12                                     #! PC = 0x93824992239009 *)
#pop    %%r12                                     #! 0x93824992239009 = 0x93824992239009;
(* #retq                                           #! PC = 0x93824992239011 *)
#retq                                           #! 0x93824992239011 = 0x93824992239011;

mov r0 L0x7fffffffd9d0;
mov r1 L0x7fffffffd9d8;
mov r2 L0x7fffffffd9e0;
mov r3 L0x7fffffffd9e8;
mov r4 L0x7fffffffd9f0;
mov r5 L0x7fffffffd9f8;

{
  eqmod (limbs 64 [ 0,  0,  0,  0 , 0,  0,
                   r0, r1, r2, r3, r4, r5])
        (limbs 64 [c0, c1, c2, c3,  c4,  c5,
                   c6, c7, c8, c9, c10, c11])
        (limbs 64 [0x004e000000000013, 0x09480097801382be,
                   0xa6e58dbe43002a06, 0x6f82cefbe47879bb,
                   0x2d996cc179c6d166, 0x24009015183f9489])
&&
  limbs 64 [r0, r1, r2, r3, r4, r5] <
  limbs 64 [0x004e000000000013@64, 0x09480097801382be@64,
            0xa6e58dbe43002a06@64, 0x6f82cefbe47879bb@64,
            0x2d996cc179c6d166@64, 0x24009015183f9489@64]
}

