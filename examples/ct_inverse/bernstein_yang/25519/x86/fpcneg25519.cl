(* quine: -v fpcneg25519.cl
Parsing Cryptoline file:                [OK]            0.001498 seconds
Checking well-formedness:               [OK]            0.000221 seconds
Transforming to SSA form:               [OK]            0.000111 seconds
Rewriting assignments:                  [OK]            0.000249 seconds
Verifying program safety:               [OK]            0.031418 seconds
Verifying range assertions:             [OK]            0.071943 seconds
Verifying range specification:          [OK]            0.656100 seconds
Rewriting value-preserved casting:      [OK]            0.000011 seconds
Verifying algebraic assertions:         [OK]            0.002938 seconds
Verifying algebraic specification:      [OK]            0.000767 seconds
Verification result:                    [OK]            0.765686 seconds
*)

proc main (uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 m0, uint64 m1, uint64 m2, uint64 m3, uint64 flag) =
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
         m3 = 0x7fffffffffffffff@64,
         limbs 64 [x0, x1, x2, x3] <u limbs 64 [m0, m1, m2, m3]
        ]
}

nondet rdi@uint64;
mov rsi flag;


mov L0x405080 x0;
mov L0x405088 x1;
mov L0x405090 x2;
mov L0x405098 x3;


(* #! -> SP = 0x7fffffffddc8 *)
#! 0x7fffffffddc8 = 0x7fffffffddc8;
(* #mov    %rsp,%r11                                #! PC = 0x401fe0 *)
#mov    %%rsp,%%r11                                #! 0x401fe0 = 0x401fe0;
(* #and    $0x1f,%r11                               #! PC = 0x401fe3 *)
#and    $0x1f,%%r11                               #! 0x401fe3 = 0x401fe3;
(* #add    $0x40,%r11                               #! PC = 0x401fe7 *)
#add    $0x40,%%r11                               #! 0x401fe7 = 0x401fe7;
(* #sub    %r11,%rsp                                #! PC = 0x401feb *)
#sub    %%r11,%%rsp                                #! 0x401feb = 0x401feb;
(* #mov    %r11,(%rsp)                              #! EA = L0x7fffffffdd80; PC = 0x401fee *)
#mov    %%r11,%%L0x7fffffffdd80                              #! L0x7fffffffdd80 = L0x7fffffffdd80; 0x401fee = 0x401fee;
(* #mov    %r12,0x8(%rsp)                           #! EA = L0x7fffffffdd88; PC = 0x401ff2 *)
#mov    %%r12,%%L0x7fffffffdd88                           #! L0x7fffffffdd88 = L0x7fffffffdd88; 0x401ff2 = 0x401ff2;
(* #mov    %r13,0x10(%rsp)                          #! EA = L0x7fffffffdd90; PC = 0x401ff7 *)
#mov    %%r13,%%L0x7fffffffdd90                          #! L0x7fffffffdd90 = L0x7fffffffdd90; 0x401ff7 = 0x401ff7;
(* #mov    %r14,0x18(%rsp)                          #! EA = L0x7fffffffdd98; PC = 0x401ffc *)
#mov    %%r14,%%L0x7fffffffdd98                          #! L0x7fffffffdd98 = L0x7fffffffdd98; 0x401ffc = 0x401ffc;
(* #mov    %r15,0x20(%rsp)                          #! EA = L0x7fffffffdda0; PC = 0x402001 *)
#mov    %%r15,%%L0x7fffffffdda0                          #! L0x7fffffffdda0 = L0x7fffffffdda0; 0x402001 = 0x402001;
(* #mov    %rbx,0x28(%rsp)                          #! EA = L0x7fffffffdda8; PC = 0x402006 *)
#mov    %%rbx,%%L0x7fffffffdda8                          #! L0x7fffffffdda8 = L0x7fffffffdda8; 0x402006 = 0x402006;
(* #mov    %rbp,0x30(%rsp)                          #! EA = L0x7fffffffddb0; PC = 0x40200b *)
#mov    %%rbp,%%L0x7fffffffddb0                          #! L0x7fffffffddb0 = L0x7fffffffddb0; 0x40200b = 0x40200b;
(* mov    %rdi,%rdi                                #! PC = 0x402010 *)
mov rdi rdi;
(* mov    %rsi,%rsi                                #! PC = 0x402013 *)
mov rsi rsi;
(* mov    (%rdi),%rdx                              #! EA = L0x405080; Value = 0xd256e3d5810a503c; PC = 0x402016 *)
mov rdx L0x405080;
(* mov    0x8(%rdi),%rcx                           #! EA = L0x405088; Value = 0x11c6a638f259a955; PC = 0x402019 *)
mov rcx L0x405088;
(* mov    0x10(%rdi),%r8                           #! EA = L0x405090; Value = 0x58e5f56a0da90aa1; PC = 0x40201d *)
mov r8 L0x405090;
(* mov    0x18(%rdi),%r9                           #! EA = L0x405098; Value = 0x3f95c2cb173dee1a; PC = 0x402021 *)
mov r9 L0x405098;
(* mov    $0xffffffffffffffda,%rax                 #! PC = 0x402025 *)
mov rax 0xffffffffffffffda@uint64;
(* mov    $0xffffffffffffffff,%r10                 #! PC = 0x40202c *)
mov r10 0xffffffffffffffff@uint64;
(* mov    $0xffffffffffffffff,%r11                 #! PC = 0x402033 *)
mov r11 0xffffffffffffffff@uint64;
(* mov    $0xffffffffffffffff,%r12                 #! PC = 0x40203a *)
mov r12 0xffffffffffffffff@uint64;
(* sub    %rdx,%rax                                #! PC = 0x402041 *)
subb carry rax rax rdx;
(* sbb    %rcx,%r10                                #! PC = 0x402044 *)
sbbs carry r10 r10 rcx carry;
(* sbb    %r8,%r11                                 #! PC = 0x402047 *)
sbbs carry r11 r11 r8 carry;
(* sbb    %r9,%r12                                 #! PC = 0x40204a *)
sbbs carry r12 r12 r9 carry;
(* btr    $0x3f,%r12                               #! PC = 0x40204d *)
subb carry dontcare 0x7fffffffffffffff@uint64 r12;
and r12@uint64 r12 0x7fffffffffffffff@uint64;
(* mov    $0x0,%r13                                #! PC = 0x402052 *)
mov r13 0x0@uint64;
(* adc    $0x0,%r13                                #! PC = 0x402059 *)
adcs carry r13 0@uint64 r13 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* imul   $0x13,%r13,%r13                          #! PC = 0x40205d *)
smull dontcare r13 0x13@uint64 r13;
(* add    %r13,%rax                                #! PC = 0x402061 *)
adds carry rax r13 rax;
(* adc    $0x0,%r10                                #! PC = 0x402064 *)
adcs carry r10 0@uint64 r10 carry;
(* adc    $0x0,%r11                                #! PC = 0x402068 *)
adcs carry r11 0@uint64 r11 carry;
(* adc    $0x0,%r12                                #! PC = 0x40206c *)
adcs carry r12 0@uint64 r12 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* bt     $0x3f,%rsi                               #! PC = 0x402070 *)
subb carry dontcare 0x7fffffffffffffff@uint64 rsi;
(* cmovb  %rax,%rdx                                #! PC = 0x402075 *)
cmov rdx carry rax rdx;
(* cmovb  %r10,%rcx                                #! PC = 0x402079 *)
cmov rcx carry r10 rcx;
(* cmovb  %r11,%r8                                 #! PC = 0x40207d *)
cmov r8 carry r11 r8;
(* cmovb  %r12,%r9                                 #! PC = 0x402081 *)
cmov r9 carry r12 r9;
(* mov    %rdx,%rsi                                #! PC = 0x402085 *)
mov rsi rdx;
(* mov    %rcx,%rax                                #! PC = 0x402088 *)
mov rax rcx;
(* mov    %r8,%r10                                 #! PC = 0x40208b *)
mov r10 r8;
(* mov    %r9,%r11                                 #! PC = 0x40208e *)
mov r11 r9;
(* movabs $0x7fffffffffffffff,%r12                 #! PC = 0x402091 *)
mov r12 0x7fffffffffffffff@uint64;
(* sub    $0xffffffffffffffed,%rsi                 #! PC = 0x40209b *)
subb carry rsi rsi 0xffffffffffffffed@uint64;
(* sbb    $0xffffffffffffffff,%rax                 #! PC = 0x40209f *)
sbbs carry rax rax 0xffffffffffffffff@uint64 carry;
(* sbb    $0xffffffffffffffff,%r10                 #! PC = 0x4020a3 *)
sbbs carry r10 r10 0xffffffffffffffff@uint64 carry;
(* sbb    %r12,%r11                                #! PC = 0x4020a7 *)
sbbs carry r11 r11 r12 carry;
(* cmovae %rsi,%rdx                                #! PC = 0x4020aa *)
cmov rdx carry rdx rsi;
(* cmovae %rax,%rcx                                #! PC = 0x4020ae *)
cmov rcx carry rcx rax;
(* cmovae %r10,%r8                                 #! PC = 0x4020b2 *)
cmov r8 carry r8 r10;
(* cmovae %r11,%r9                                 #! PC = 0x4020b6 *)
cmov r9 carry r9 r11;
(* mov    %rdx,(%rdi)                              #! EA = L0x405080; PC = 0x4020ba *)
mov L0x405080 rdx;
(* mov    %rcx,0x8(%rdi)                           #! EA = L0x405088; PC = 0x4020bd *)
mov L0x405088 rcx;
(* mov    %r8,0x10(%rdi)                           #! EA = L0x405090; PC = 0x4020c1 *)
mov L0x405090 r8;
(* mov    %r9,0x18(%rdi)                           #! EA = L0x405098; PC = 0x4020c5 *)
mov L0x405098 r9;
(* #mov    (%rsp),%r11                              #! EA = L0x7fffffffdd80; Value = 0x0000000000000048; PC = 0x4020c9 *)
#mov    %%L0x7fffffffdd80,%%r11                              #! L0x7fffffffdd80 = L0x7fffffffdd80; 0x0000000000000048 = 0x0000000000000048; 0x4020c9 = 0x4020c9;
(* #mov    0x8(%rsp),%r12                           #! EA = L0x7fffffffdd88; Value = 0x00007fffffffde30; PC = 0x4020cd *)
#mov    %%L0x7fffffffdd88,%%r12                           #! L0x7fffffffdd88 = L0x7fffffffdd88; 0x00007fffffffde30 = 0x00007fffffffde30; 0x4020cd = 0x4020cd;
(* #mov    0x10(%rsp),%r13                          #! EA = L0x7fffffffdd90; Value = 0x00007fffffffde50; PC = 0x4020d2 *)
#mov    %%L0x7fffffffdd90,%%r13                          #! L0x7fffffffdd90 = L0x7fffffffdd90; 0x00007fffffffde50 = 0x00007fffffffde50; 0x4020d2 = 0x4020d2;
(* #mov    0x18(%rsp),%r14                          #! EA = L0x7fffffffdd98; Value = 0x00007fffffffde70; PC = 0x4020d7 *)
#mov    %%L0x7fffffffdd98,%%r14                          #! L0x7fffffffdd98 = L0x7fffffffdd98; 0x00007fffffffde70 = 0x00007fffffffde70; 0x4020d7 = 0x4020d7;
(* #mov    0x20(%rsp),%r15                          #! EA = L0x7fffffffdda0; Value = 0x00007fffffffdff0; PC = 0x4020dc *)
#mov    %%L0x7fffffffdda0,%%r15                          #! L0x7fffffffdda0 = L0x7fffffffdda0; 0x00007fffffffdff0 = 0x00007fffffffdff0; 0x4020dc = 0x4020dc;
(* #mov    0x28(%rsp),%rbx                          #! EA = L0x7fffffffdda8; Value = 0x0000000000405080; PC = 0x4020e1 *)
#mov    %%L0x7fffffffdda8,%%rbx                          #! L0x7fffffffdda8 = L0x7fffffffdda8; 0x0000000000405080 = 0x0000000000405080; 0x4020e1 = 0x4020e1;
(* #mov    0x30(%rsp),%rbp                          #! EA = L0x7fffffffddb0; Value = 0x00007fffffffde88; PC = 0x4020e6 *)
#mov    %%L0x7fffffffddb0,%%rbp                          #! L0x7fffffffddb0 = L0x7fffffffddb0; 0x00007fffffffde88 = 0x00007fffffffde88; 0x4020e6 = 0x4020e6;
(* #add    %r11,%rsp                                #! PC = 0x4020eb *)
#add    %%r11,%%rsp                                #! 0x4020eb = 0x4020eb;
(* #! <- SP = 0x7fffffffddc8 *)
#! 0x7fffffffddc8 = 0x7fffffffddc8;
(* #retq                                           #! PC = 0x4020ee *)
#retq                                           #! 0x4020ee = 0x4020ee;

mov c0 L0x405080;
mov c1 L0x405088;
mov c2 L0x405090;
mov c3 L0x405098;

{
 true
  &&
 or[
    and[
        flag >u (0x7fffffffffffffff@64),
        eqmod
        (
   	 (
          (limbs 64 [c0, c1, c2, c3])
          +
          (limbs 64 [x0, x1, x2, x3])
         )
	)
        0@256
        (limbs 64 [m0, m1, m2, m3])
       ]
   ,
    and[
        flag <=u (0x7fffffffffffffff@64)
        ,
        eq 
        (limbs 64 [c0, c1, c2, c3])
        (limbs 64 [x0, x1, x2, x3])
        ]
   ]
}
