(* quine: -v fpmul25519.cl
Parsing Cryptoline file:                [OK]            0.005131 seconds
Checking well-formedness:               [OK]            0.001180 seconds
Transforming to SSA form:               [OK]            0.000152 seconds
Rewriting assignments:                  [OK]            0.001177 seconds
Verifying program safety:               [OK]            0.039775 seconds
Verifying range assertions:             [OK]            35.398234 seconds
Verifying range specification:          [OK]            1.821324 seconds
Rewriting value-preserved casting:      [OK]            0.000029 seconds
Verifying algebraic assertions:         [OK]            0.205847 seconds
Verifying algebraic specification:      [OK]            0.104101 seconds
Verification result:                    [OK]            37.577498 seconds
*)
proc main (uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 y0, uint64 y1, uint64 y2, uint64 y3, uint64 m0, uint64 m1, uint64 m2, uint64 m3) =
{
  and
	[
         m0 = 0xffffffffffffffed,
         m1 = 0xffffffffffffffff,
         m2 = 0xffffffffffffffff,
         m3 = 0x7fffffffffffffff
        ]
  &&
  and
	[
	 m0 = 0xffffffffffffffed@64,
	 m1 = 0xffffffffffffffff@64,
	 m2 = 0xffffffffffffffff@64,
	 m3 = 0x7fffffffffffffff@64
  	]
}

mov L0x7fffffffdfe0 x0;
mov L0x7fffffffdfe8 x1;
mov L0x7fffffffdff0 x2;
mov L0x7fffffffdff8 x3;
mov L0x7fffffffdf80 y0;
mov L0x7fffffffdf88 y1;
mov L0x7fffffffdf90 y2;
mov L0x7fffffffdf98 y3;


(* mov    $0x0,%rcx                                #! PC = 0x402275 *)
mov rcx 0x0@uint64;
(* mov    $0x0,%r8                                 #! PC = 0x40227c *)
mov r8 0x0@uint64;
(* mov    $0x0,%r9                                 #! PC = 0x402283 *)
mov r9 0x0@uint64;
(* mov    $0x0,%r10                                #! PC = 0x40228a *)
mov r10 0x0@uint64;
(* mov    (%rdi),%r11                              #! EA = L0x7fffffffdfe0; Value = 0x306a9f9776616255; PC = 0x402291 *)
mov r11 L0x7fffffffdfe0;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdf80; Value = 0x0c712a8e20623360; PC = 0x402294 *)
mov rax L0x7fffffffdf80;
(* mul    %r11                                     #! PC = 0x402297 *)
umull rdx rax r11 rax;
(* mov    %rax,%r12                                #! PC = 0x40229a *)
mov r12 rax;
(* mov    %rdx,%r13                                #! PC = 0x40229d *)
mov r13 rdx;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdf88; Value = 0xb0ab3928f02f7fe6; PC = 0x4022a0 *)
mov rax L0x7fffffffdf88;
(* mul    %r11                                     #! PC = 0x4022a4 *)
umull rdx rax r11 rax;
(* add    %rax,%r13                                #! PC = 0x4022a7 *)
adds carry r13 rax r13;
(* mov    $0x0,%r14                                #! PC = 0x4022aa *)
mov r14 0x0@uint64;
(* adc    %rdx,%r14                                #! PC = 0x4022b1 *)
adcs carry r14 rdx r14 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdf90; Value = 0x0000000000000017; PC = 0x4022b4 *)
mov rax L0x7fffffffdf90;
(* mul    %r11                                     #! PC = 0x4022b8 *)
umull rdx rax r11 rax;
(* add    %rax,%r14                                #! PC = 0x4022bb *)
adds carry r14 rax r14;
(* mov    $0x0,%r15                                #! PC = 0x4022be *)
mov r15 0x0@uint64;
(* adc    %rdx,%r15                                #! PC = 0x4022c5 *)
adcs carry r15 rdx r15 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdf98; Value = 0x0000000000000000; PC = 0x4022c8 *)
mov rax L0x7fffffffdf98;
(* mul    %r11                                     #! PC = 0x4022cc *)
umull rdx rax r11 rax;
(* add    %rax,%r15                                #! PC = 0x4022cf *)
adds carry r15 rax r15;
(* adc    %rdx,%rcx                                #! PC = 0x4022d2 *)
adcs carry rcx rdx rcx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    0x8(%rdi),%r11                           #! EA = L0x7fffffffdfe8; Value = 0xf9a18c8641810ec8; PC = 0x4022d5 *)
mov r11 L0x7fffffffdfe8;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdf80; Value = 0x0c712a8e20623360; PC = 0x4022d9 *)
mov rax L0x7fffffffdf80;
(* mul    %r11                                     #! PC = 0x4022dc *)
umull rdx rax r11 rax;
(* add    %rax,%r13                                #! PC = 0x4022df *)
adds carry r13 rax r13;
(* mov    $0x0,%rbx                                #! PC = 0x4022e2 *)
mov rbx 0x0@uint64;
(* adc    %rdx,%rbx                                #! PC = 0x4022e9 *)
adcs carry rbx rdx rbx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdf88; Value = 0xb0ab3928f02f7fe6; PC = 0x4022ec *)
mov rax L0x7fffffffdf88;
(* mul    %r11                                     #! PC = 0x4022f0 *)
umull rdx rax r11 rax;
(* add    %rax,%r14                                #! PC = 0x4022f3 *)
adds carry r14 rax r14;
(* adc    $0x0,%rdx                                #! PC = 0x4022f6 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbx,%r14                                #! PC = 0x4022fa *)
adds carry r14 rbx r14;
(* mov    $0x0,%rbx                                #! PC = 0x4022fd *)
mov rbx 0x0@uint64;
(* adc    %rdx,%rbx                                #! PC = 0x402304 *)
adcs carry rbx rdx rbx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdf90; Value = 0x0000000000000017; PC = 0x402307 *)
mov rax L0x7fffffffdf90;
(* mul    %r11                                     #! PC = 0x40230b *)
umull rdx rax r11 rax;
(* add    %rax,%r15                                #! PC = 0x40230e *)
adds carry r15 rax r15;
(* adc    $0x0,%rdx                                #! PC = 0x402311 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbx,%r15                                #! PC = 0x402315 *)
adds carry r15 rbx r15;
(* mov    $0x0,%rbx                                #! PC = 0x402318 *)
mov rbx 0x0@uint64;
(* adc    %rdx,%rbx                                #! PC = 0x40231f *)
adcs carry rbx rdx rbx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdf98; Value = 0x0000000000000000; PC = 0x402322 *)
mov rax L0x7fffffffdf98;
(* mul    %r11                                     #! PC = 0x402326 *)
umull rdx rax r11 rax;
(* add    %rax,%rcx                                #! PC = 0x402329 *)
adds carry rcx rax rcx;
(* adc    $0x0,%rdx                                #! PC = 0x40232c *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbx,%rcx                                #! PC = 0x402330 *)
adds carry rcx rbx rcx;
(* adc    %rdx,%r8                                 #! PC = 0x402333 *)
adcs carry r8 rdx r8 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    0x10(%rdi),%r11                          #! EA = L0x7fffffffdff0; Value = 0xffffffffffffffff; PC = 0x402336 *)
mov r11 L0x7fffffffdff0;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdf80; Value = 0x0c712a8e20623360; PC = 0x40233a *)
mov rax L0x7fffffffdf80;
(* mul    %r11                                     #! PC = 0x40233d *)
umull rdx rax r11 rax;
(* add    %rax,%r14                                #! PC = 0x402340 *)
adds carry r14 rax r14;
(* mov    $0x0,%rbx                                #! PC = 0x402343 *)
mov rbx 0x0@uint64;
(* adc    %rdx,%rbx                                #! PC = 0x40234a *)
adcs carry rbx rdx rbx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdf88; Value = 0xb0ab3928f02f7fe6; PC = 0x40234d *)
mov rax L0x7fffffffdf88;
(* mul    %r11                                     #! PC = 0x402351 *)
umull rdx rax r11 rax;
(* add    %rax,%r15                                #! PC = 0x402354 *)
adds carry r15 rax r15;
(* adc    $0x0,%rdx                                #! PC = 0x402357 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbx,%r15                                #! PC = 0x40235b *)
adds carry r15 rbx r15;
(* mov    $0x0,%rbx                                #! PC = 0x40235e *)
mov rbx 0x0@uint64;
(* adc    %rdx,%rbx                                #! PC = 0x402365 *)
adcs carry rbx rdx rbx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdf90; Value = 0x0000000000000017; PC = 0x402368 *)
mov rax L0x7fffffffdf90;
(* mul    %r11                                     #! PC = 0x40236c *)
umull rdx rax r11 rax;
(* add    %rax,%rcx                                #! PC = 0x40236f *)
adds carry rcx rax rcx;
(* adc    $0x0,%rdx                                #! PC = 0x402372 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbx,%rcx                                #! PC = 0x402376 *)
adds carry rcx rbx rcx;
(* mov    $0x0,%rbx                                #! PC = 0x402379 *)
mov rbx 0x0@uint64;
(* adc    %rdx,%rbx                                #! PC = 0x402380 *)
adcs carry rbx rdx rbx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdf98; Value = 0x0000000000000000; PC = 0x402383 *)
mov rax L0x7fffffffdf98;
(* mul    %r11                                     #! PC = 0x402387 *)
umull rdx rax r11 rax;
(* add    %rax,%r8                                 #! PC = 0x40238a *)
adds carry r8 rax r8;
(* adc    $0x0,%rdx                                #! PC = 0x40238d *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbx,%r8                                 #! PC = 0x402391 *)
adds carry r8 rbx r8;
(* adc    %rdx,%r9                                 #! PC = 0x402394 *)
adcs carry r9 rdx r9 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    0x18(%rdi),%rdi                          #! EA = L0x7fffffffdff8; Value = 0x7fffffffffffffff; PC = 0x402397 *)
mov rdi L0x7fffffffdff8;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdf80; Value = 0x0c712a8e20623360; PC = 0x40239b *)
mov rax L0x7fffffffdf80;
(* mul    %rdi                                     #! PC = 0x40239e *)
umull rdx rax rdi rax;
(* add    %rax,%r15                                #! PC = 0x4023a1 *)
adds carry r15 rax r15;
(* mov    $0x0,%r11                                #! PC = 0x4023a4 *)
mov r11 0x0@uint64;
(* adc    %rdx,%r11                                #! PC = 0x4023ab *)
adcs carry r11 rdx r11 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdf88; Value = 0xb0ab3928f02f7fe6; PC = 0x4023ae *)
mov rax L0x7fffffffdf88;
(* mul    %rdi                                     #! PC = 0x4023b2 *)
umull rdx rax rdi rax;
(* add    %rax,%rcx                                #! PC = 0x4023b5 *)
adds carry rcx rax rcx;
(* adc    $0x0,%rdx                                #! PC = 0x4023b8 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%rcx                                #! PC = 0x4023bc *)
adds carry rcx r11 rcx;
(* mov    $0x0,%r11                                #! PC = 0x4023bf *)
mov r11 0x0@uint64;
(* adc    %rdx,%r11                                #! PC = 0x4023c6 *)
adcs carry r11 rdx r11 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdf90; Value = 0x0000000000000017; PC = 0x4023c9 *)
mov rax L0x7fffffffdf90;
(* mul    %rdi                                     #! PC = 0x4023cd *)
umull rdx rax rdi rax;
(* add    %rax,%r8                                 #! PC = 0x4023d0 *)
adds carry r8 rax r8;
(* adc    $0x0,%rdx                                #! PC = 0x4023d3 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r8                                 #! PC = 0x4023d7 *)
adds carry r8 r11 r8;
(* mov    $0x0,%r11                                #! PC = 0x4023da *)
mov r11 0x0@uint64;
(* adc    %rdx,%r11                                #! PC = 0x4023e1 *)
adcs carry r11 rdx r11 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdf98; Value = 0x0000000000000000; PC = 0x4023e4 *)
mov rax L0x7fffffffdf98;
(* mul    %rdi                                     #! PC = 0x4023e8 *)
umull rdx rax rdi rax;
(* add    %rax,%r9                                 #! PC = 0x4023eb *)
adds carry r9 rax r9;
(* adc    $0x0,%rdx                                #! PC = 0x4023ee *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r9                                 #! PC = 0x4023f2 *)
adds carry r9 r11 r9;
(* adc    %rdx,%r10                                #! PC = 0x4023f5 *)
adcs carry r10 rdx r10 carry;
assert true && carry = 0@1;
assume carry = 0 && true;


assert limbs 64 [x0, x1, x2, x3] * limbs 64 [y0, y1, y2, y3] 
       = 
       limbs 64 [r12, r13, r14, r15, rcx, r8, r9, r10]
 && true;

ghost rcxo@uint64, r8o@uint64, r9o@uint64, r10o@uint64:
     and[rcxo = rcx, r8o = r8, r9o = r9, r10o = r10]
  && and[rcxo = rcx, r8o = r8, r9o = r9, r10o = r10];

(* mov    %rcx,%rax                                #! PC = 0x4023f8 *)
mov rax rcx;
(* mulq   0x26                                 #! PC = 0x4023fb *)
umull rdx rax 0x26@uint64 rax;
(* mov    %rax,%rdi                                #! PC = 0x402403 *)
mov rdi rax;
(* mov    %r8,%rax                                 #! PC = 0x402406 *)
mov rax r8;
(* mov    %rdx,%rsi                                #! PC = 0x402409 *)
mov rsi rdx;
(* mulq   0x26                                 #! PC = 0x40240c *)
umull rdx rax 0x26@uint64 rax;
(* add    %rax,%rsi                                #! PC = 0x402414 *)
adds carry rsi rax rsi;
(* mov    %r9,%rax                                 #! PC = 0x402417 *)
mov rax r9;
(* mov    $0x0,%rcx                                #! PC = 0x40241a *)
mov rcx 0x0@uint64;
(* adc    %rdx,%rcx                                #! PC = 0x402421 *)
adcs carry rcx rdx rcx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mulq   0x26                                 #! PC = 0x402424 *)
umull rdx rax 0x26@uint64 rax;
(* add    %rax,%rcx                                #! PC = 0x40242c *)
adds carry rcx rax rcx;
(* mov    %r10,%rax                                #! PC = 0x40242f *)
mov rax r10;
(* mov    $0x0,%r8                                 #! PC = 0x402432 *)
mov r8 0x0@uint64;
(* adc    %rdx,%r8                                 #! PC = 0x402439 *)
adcs carry r8 rdx r8 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mulq   0x26                                 #! PC = 0x40243c *)
umull rdx rax 0x26@uint64 rax;
(* add    %rax,%r8                                 #! PC = 0x402444 *)
adds carry r8 rax r8;
(* mov    $0x0,%r9                                 #! PC = 0x402447 *)
mov r9 0x0@uint64;
(* adc    %rdx,%r9                                 #! PC = 0x40244e *)
adcs carry r9 rdx r9 carry;
assert true && carry = 0@1;
assume carry = 0 && true;

assert limbs 64 [rcxo, r8o, r9o, r10o] * 0x26 
     = limbs 64 [rdi, rsi, rcx, r8, r9] 
  && true;


assert eqmod limbs 64 [0, 0, 0, 0, rcxo, r8o, r9o, r10o] 
             limbs 64 [rdi, rsi, rcx, r8, r9]
             limbs 64 [m0, m1, m2, m3]
  && true;

(* add    %rdi,%r12                                #! PC = 0x402451 *)
adds carry r12 rdi r12;
(* adc    %rsi,%r13                                #! PC = 0x402454 *)
adcs carry r13 rsi r13 carry;
(* adc    %rcx,%r14                                #! PC = 0x402457 *)
adcs carry r14 rcx r14 carry;
(* adc    %r8,%r15                                 #! PC = 0x40245a *)
adcs carry r15 r8 r15 carry;
(* mov    $0x0,%rdi                                #! PC = 0x40245d *)
mov rdi 0x0@uint64;
(* adc    %rdi,%r9                                 #! PC = 0x402464 *)
adcs carry r9 rdi r9 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* imul   $0x26,%r9,%rsi                           #! PC = 0x402467 *)
smull dontcare rsi 0x26@uint64 r9;
assert true && dontcare = 0@64;
assume dontcare = 0 && true;
(* add    %rsi,%r12                                #! PC = 0x40246b *)
adds carry r12 rsi r12;
(* adc    %rdi,%r13                                #! PC = 0x40246e *)
adcs carry r13 rdi r13 carry;
(* adc    %rdi,%r14                                #! PC = 0x402471 *)
adcs carry r14 rdi r14 carry;
(* adc    %rdi,%r15                                #! PC = 0x402474 *)
adcs carry r15 rdi r15 carry;
(* adc    %rdi,%rdi                                #! PC = 0x402477 *)
adcs carry rdi rdi rdi carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* imul   $0x26,%rdi,%rdi                          #! PC = 0x40247a *)
smull dontcare rdi 0x26@uint64 rdi;
assert true && dontcare = 0@64;
assume dontcare = 0 && true;
(* add    %rdi,%r12                                #! PC = 0x40247e *)
adds carry r12 rdi r12;
assert true && carry = 0@1;
assume carry = 0 && true;



assert eqmod
       limbs 64 [x0, x1, x2, x3] * limbs 64 [y0, y1, y2, y3] 
       limbs 64 [r12, r13, r14, r15]
       limbs 64 [m0, m1, m2, m3]
 && true;
ghost r12o@uint64, r13o@uint64, r14o@uint64, r15o@uint64:
     and[r12o = r12, r13o = r13, r14o = r14, r15o = r15]
  && and[r12o = r12, r13o = r13, r14o = r14, r15o = r15];

(* mov    $0x0,%rdi                                #! PC = 0x402481 *)
mov rdi 0x0@uint64;
(* mov    $0x13,%rsi                               #! PC = 0x402488 *)
mov rsi 0x13@uint64;
(* btr    $0x3f,%r15                               #! PC = 0x40248f *)
subb carry dontcare 0x7fffffffffffffff@uint64 r15;
and r15@uint64 r15 0x7fffffffffffffff@uint64;
(* cmovb  %rsi,%rdi                                #! PC = 0x402494 *)
cmov rdi carry rsi rdi;
(* add    %rdi,%r12                                #! PC = 0x402498 *)
adds carry r12 rdi r12;
(* adc    $0x0,%r13                                #! PC = 0x40249b *)
adcs carry r13 0@uint64 r13 carry;
(* adc    $0x0,%r14                                #! PC = 0x40249f *)
adcs carry r14 0@uint64 r14 carry;
(* adc    $0x0,%r15                                #! PC = 0x4024a3 *)
adcs carry r15 0@uint64 r15 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r12,%rdi                                #! PC = 0x4024a7 *)
mov rdi r12;
(* mov    %r13,%rsi                                #! PC = 0x4024aa *)
mov rsi r13;
(* mov    %r14,%rdx                                #! PC = 0x4024ad *)
mov rdx r14;
(* mov    %r15,%rcx                                #! PC = 0x4024b0 *)
mov rcx r15;
(* movabs $0x7fffffffffffffff,%r8                  #! PC = 0x4024b3 *)
mov r8 0x7fffffffffffffff@uint64;
(* sub    $0xffffffffffffffed,%r12                 #! PC = 0x4024bd *)
subb carry r12 r12 0xffffffffffffffed@uint64;
(* sbb    $0xffffffffffffffff,%r13                 #! PC = 0x4024c1 *)
sbbs carry r13 r13 0xffffffffffffffff@uint64 carry;
(* sbb    $0xffffffffffffffff,%r14                 #! PC = 0x4024c5 *)
sbbs carry r14 r14 0xffffffffffffffff@uint64 carry;
(* sbb    %r8,%r15                                 #! PC = 0x4024c9 *)
sbbs carry r15 r15 r8 carry;
(* cmovb  %rdi,%r12                                #! PC = 0x4024cc *)
cmov r12 carry rdi r12;
(* cmovb  %rsi,%r13                                #! PC = 0x4024d0 *)
cmov r13 carry rsi r13;
(* cmovb  %rdx,%r14                                #! PC = 0x4024d4 *)
cmov r14 carry rdx r14;
(* cmovb  %rcx,%r15                                #! PC = 0x4024d8 *)
cmov r15 carry rcx r15;
(* #mov    0x38(%rsp),%rdi                          #! EA = L0x7fffffffdd18; Value = 0x00007fffffffdd30; PC = 0x4024dc *)
#mov    %%L0x7fffffffdd18,%%rdi                          #! L0x7fffffffdd18 = L0x7fffffffdd18; 0x00007fffffffdd30 = 0x00007fffffffdd30; 0x4024dc = 0x4024dc;
(* mov    %r13,0x8(%rdi)                           #! EA = L0x7fffffffdd38; PC = 0x4024e1 *)
mov L0x7fffffffdd38 r13;
(* mov    %r14,0x10(%rdi)                          #! EA = L0x7fffffffdd40; PC = 0x4024e5 *)
mov L0x7fffffffdd40 r14;
(* mov    %r15,0x18(%rdi)                          #! EA = L0x7fffffffdd48; PC = 0x4024e9 *)
mov L0x7fffffffdd48 r15;
(* mov    %r12,(%rdi)                              #! EA = L0x7fffffffdd30; PC = 0x4024ed *)
mov L0x7fffffffdd30 r12;


mov r0 L0x7fffffffdd30;
mov r1 L0x7fffffffdd38;
mov r2 L0x7fffffffdd40;
mov r3 L0x7fffffffdd48;

assert true &&
  eqmod (limbs 64 [r0, r1, r2, r3])
        (limbs 64 [r12o, r13o, r14o, r15o])
        (limbs 64 [m0, m1, m2, m3]);
assume 	
  eqmod (limbs 64 [r0, r1, r2, r3])
        (limbs 64 [r12o, r13o, r14o, r15o])
        (limbs 64 [m0, m1, m2, m3])
  && true;

{
  eqmod (limbs 64 [r0, r1, r2, r3])
        ((limbs 64 [x0, x1, x2, x3]) * (limbs 64 [y0, y1, y2, y3]))
        (limbs 64 [m0, m1, m2, m3])
  &&
  limbs 64 [r0, r1, r2, r3] <u limbs 64 [m0, m1, m2, m3]
}

