(* quine:
Parsing Cryptoline file:		[OK]		0.003336 seconds
Checking well-formedness:		[OK]		0.000881 seconds
Transforming to SSA form:		[OK]		0.000343 seconds
Normalizing specification:		[OK]		0.000464 seconds
Rewriting assignments:			[OK]		0.000298 seconds
Verifying program safety:
	 Cut 0
	     Round 1 (0 safety conditions, timeout = 300 seconds)
	 Overall			[OK]		0.000249 seconds
Verifying range assertions:		[OK]		5.759533 seconds
Verifying range specification:		[OK]		0.003098 seconds
Rewriting value-preserved casting:	[OK]		0.000043 seconds
Verifying algebraic assertions:		[OK]		0.000689 seconds
Verifying algebraic specification:	[OK]		0.105392 seconds
Verification result:			[OK]		5.875106 seconds
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3) =
{
  true
  &&
  true
}

mov L0x7fffffffdb60 a0;
mov L0x7fffffffdb68 a1;
mov L0x7fffffffdb70 a2;
mov L0x7fffffffdb78 a3;

mov L0x7fffffffdb80 b0;
mov L0x7fffffffdb88 b1;
mov L0x7fffffffdb90 b2;
mov L0x7fffffffdb98 b3;

nondet rdx@uint64;
nondet rdi@uint64;

(* x25519_fe64_mul: *)
#x25519_fe64_mul:;
(* #! -> SP = 0x7fffffffdb58 *)
#! 0x7fffffffdb58 = 0x7fffffffdb58;
(* push   %rbp                                     #! EA = L0x7fffffffdb50; PC = 0x5555555556a0 *)
#push   %%rbp                                     #! L0x7fffffffdb50 = L0x7fffffffdb50; 0x5555555556a0 = 0x5555555556a0;
(* push   %rbx                                     #! EA = L0x7fffffffdb48; PC = 0x5555555556a1 *)
#push   %%rbx                                     #! L0x7fffffffdb48 = L0x7fffffffdb48; 0x5555555556a1 = 0x5555555556a1;
(* push   %r12                                     #! EA = L0x7fffffffdb40; PC = 0x5555555556a2 *)
#push   %%r12                                     #! L0x7fffffffdb40 = L0x7fffffffdb40; 0x5555555556a2 = 0x5555555556a2;
(* push   %r13                                     #! EA = L0x7fffffffdb38; PC = 0x5555555556a4 *)
#push   %%r13                                     #! L0x7fffffffdb38 = L0x7fffffffdb38; 0x5555555556a4 = 0x5555555556a4;
(* push   %r14                                     #! EA = L0x7fffffffdb30; PC = 0x5555555556a6 *)
#push   %%r14                                     #! L0x7fffffffdb30 = L0x7fffffffdb30; 0x5555555556a6 = 0x5555555556a6;
(* push   %r15                                     #! EA = L0x7fffffffdb28; PC = 0x5555555556a8 *)
#push   %%r15                                     #! L0x7fffffffdb28 = L0x7fffffffdb28; 0x5555555556a8 = 0x5555555556a8;
(* push   %rdi                                     #! EA = L0x7fffffffdb20; PC = 0x5555555556aa *)
#push   %%rdi                                     #! L0x7fffffffdb20 = L0x7fffffffdb20; 0x5555555556aa = 0x5555555556aa;
(* lea    -0x10(%rsp),%rsp                         #! PC = 0x5555555556ab *)
#lea    %%EA,%rsp                         #! 0x5555555556ab = 0x5555555556ab;
(* mov    %rdx,%rax                                #! PC = 0x5555555556b0 *)
mov rax rdx;
(* mov    (%rdx),%rbp                              #! EA = L0x7fffffffdb80; Value = 0x0000000000c00000; PC = 0x5555555556b3 *)
mov rbp L0x7fffffffdb80;
(* mov    (%rsi),%rdx                              #! EA = L0x7fffffffdb60; Value = 0x0000000000000000; PC = 0x5555555556b6 *)
mov rdx L0x7fffffffdb60;
(* mov    0x8(%rax),%rcx                           #! EA = L0x7fffffffdb88; Value = 0x0000000000000800; PC = 0x5555555556b9 *)
mov rcx L0x7fffffffdb88;
(* mov    0x10(%rax),%r14                          #! EA = L0x7fffffffdb90; Value = 0x0000000000c00000; PC = 0x5555555556bd *)
mov r14 L0x7fffffffdb90;
(* mov    0x18(%rax),%r15                          #! EA = L0x7fffffffdb98; Value = 0x0000000000080000; PC = 0x5555555556c1 *)
mov r15 L0x7fffffffdb98;
(* mulx   %rbp,%r8,%rax                            #! PC = 0x5555555556c5 *)
mull rax r8 rdx rbp;
(* xor    %edi,%edi                                #! PC = 0x5555555556ca *)
#mov edi 0@uint64;

mov rdi 0@uint64;

clear carry;
clear overflow;
(* mulx   %rcx,%r9,%rbx                            #! PC = 0x5555555556cc *)
mull rbx r9 rdx rcx;
(* adcx   %rax,%r9                                 #! PC = 0x5555555556d1 *)
adcs carry r9 r9 rax carry;
(* mulx   %r14,%r10,%rax                           #! PC = 0x5555555556d7 *)
mull rax r10 rdx r14;
(* adcx   %rbx,%r10                                #! PC = 0x5555555556dc *)
adcs carry r10 r10 rbx carry;
(* mulx   %r15,%r11,%r12                           #! PC = 0x5555555556e2 *)
mull r12 r11 rdx r15;
(* mov    0x8(%rsi),%rdx                           #! EA = L0x7fffffffdb68; Value = 0x0000000000000000; PC = 0x5555555556e7 *)
mov rdx L0x7fffffffdb68;
(* adcx   %rax,%r11                                #! PC = 0x5555555556eb *)
adcs carry r11 r11 rax carry;
(* mov    %r14,(%rsp)                              #! EA = L0x7fffffffdb10; PC = 0x5555555556f1 *)
mov L0x7fffffffdb10 r14;
(* adcx   %rdi,%r12                                #! PC = 0x5555555556f5 *)
adcs carry r12 r12 rdi carry;

assert true && carry = 0@1;
assume carry = 0 && true;

(* mulx   %rbp,%rax,%rbx                           #! PC = 0x5555555556fb *)
mull rbx rax rdx rbp;
(* adox   %rax,%r9                                 #! PC = 0x555555555700 *)
adcs overflow r9 r9 rax overflow;
(* adcx   %rbx,%r10                                #! PC = 0x555555555706 *)
adcs carry r10 r10 rbx carry;
(* mulx   %rcx,%rax,%rbx                           #! PC = 0x55555555570c *)
mull rbx rax rdx rcx;
(* adox   %rax,%r10                                #! PC = 0x555555555711 *)
adcs overflow r10 r10 rax overflow;
(* adcx   %rbx,%r11                                #! PC = 0x555555555717 *)
adcs carry r11 r11 rbx carry;
(* mulx   %r14,%rax,%rbx                           #! PC = 0x55555555571d *)
mull rbx rax rdx r14;
(* adox   %rax,%r11                                #! PC = 0x555555555722 *)
adcs overflow r11 r11 rax overflow;
(* adcx   %rbx,%r12                                #! PC = 0x555555555728 *)
adcs carry r12 r12 rbx carry;
(* mulx   %r15,%rax,%r13                           #! PC = 0x55555555572e *)
mull r13 rax rdx r15;
(* mov    0x10(%rsi),%rdx                          #! EA = L0x7fffffffdb70; Value = 0x0000000000000000; PC = 0x555555555733 *)
mov rdx L0x7fffffffdb70;
(* adox   %rax,%r12                                #! PC = 0x555555555737 *)
adcs overflow r12 r12 rax overflow;
(* adcx   %rdi,%r13                                #! PC = 0x55555555573d *)
adcs carry r13 r13 rdi carry;
(* adox   %rdi,%r13                                #! PC = 0x555555555743 *)
adcs overflow r13 r13 rdi overflow;

assert true && and [carry=0@1, overflow=0@1];
assume and [carry=0, overflow=0] && true;

(* mulx   %rbp,%rax,%rbx                           #! PC = 0x555555555749 *)
mull rbx rax rdx rbp;
(* adcx   %rax,%r10                                #! PC = 0x55555555574e *)
adcs carry r10 r10 rax carry;
(* adox   %rbx,%r11                                #! PC = 0x555555555754 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   %rcx,%rax,%rbx                           #! PC = 0x55555555575a *)
mull rbx rax rdx rcx;
(* adcx   %rax,%r11                                #! PC = 0x55555555575f *)
adcs carry r11 r11 rax carry;
(* adox   %rbx,%r12                                #! PC = 0x555555555765 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   %r14,%rax,%rbx                           #! PC = 0x55555555576b *)
mull rbx rax rdx r14;
(* adcx   %rax,%r12                                #! PC = 0x555555555770 *)
adcs carry r12 r12 rax carry;
(* adox   %rbx,%r13                                #! PC = 0x555555555776 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   %r15,%rax,%r14                           #! PC = 0x55555555577c *)
mull r14 rax rdx r15;
(* mov    0x18(%rsi),%rdx                          #! EA = L0x7fffffffdb78; Value = 0x0000000000000000; PC = 0x555555555781 *)
mov rdx L0x7fffffffdb78;
(* adcx   %rax,%r13                                #! PC = 0x555555555785 *)
adcs carry r13 r13 rax carry;
(* adox   %rdi,%r14                                #! PC = 0x55555555578b *)
adcs overflow r14 r14 rdi overflow;
(* adcx   %rdi,%r14                                #! PC = 0x555555555791 *)
adcs carry r14 r14 rdi carry;

assert true && and [carry=0@1, overflow=0@1];
assume and [carry=0, overflow=0] && true;

(* mulx   %rbp,%rax,%rbx                           #! PC = 0x555555555797 *)
mull rbx rax rdx rbp;
(* adox   %rax,%r11                                #! PC = 0x55555555579c *)
adcs overflow r11 r11 rax overflow;
(* adcx   %rbx,%r12                                #! PC = 0x5555555557a2 *)
adcs carry r12 r12 rbx carry;
(* mulx   %rcx,%rax,%rbx                           #! PC = 0x5555555557a8 *)
mull rbx rax rdx rcx;
(* adox   %rax,%r12                                #! PC = 0x5555555557ad *)
adcs overflow r12 r12 rax overflow;
(* adcx   %rbx,%r13                                #! PC = 0x5555555557b3 *)
adcs carry r13 r13 rbx carry;
(* mulx   (%rsp),%rax,%rbx                         #! EA = L0x7fffffffdb10; Value = 0x0000000000c00000; PC = 0x5555555557b9 *)
mull rbx rax rdx L0x7fffffffdb10;
(* adox   %rax,%r13                                #! PC = 0x5555555557bf *)
adcs overflow r13 r13 rax overflow;
(* adcx   %rbx,%r14                                #! PC = 0x5555555557c5 *)
adcs carry r14 r14 rbx carry;
(* mulx   %r15,%rax,%r15                           #! PC = 0x5555555557cb *)
mull r15 rax rdx r15;
(* mov    $0x26,%edx                               #! PC = 0x5555555557d0 *)
#mov edx 0x26@uint64;

(* equivilent to rdx = 0x26 *)
mov rdx 0x26@uint64;


(* adox   %rax,%r14                                #! PC = 0x5555555557d5 *)
adcs overflow r14 r14 rax overflow;
(* adcx   %rdi,%r15                                #! PC = 0x5555555557db *)
adcs carry r15 r15 rdi carry;
(* adox   %rdi,%r15                                #! PC = 0x5555555557e1 *)
adcs overflow r15 r15 rdi overflow;

assert true && and [carry=0@1, overflow=0@1];
assume and [carry=0, overflow=0] && true;

(* #jmp    0x555555555900 <x25519_fe64_sqr+256>    #! PC = 0x5555555557e7 *)
#jmp    0x555555555900 <x25519_fe64_sqr+256>    #! 0x5555555557e7 = 0x5555555557e7;
(* mulx   %r12,%rax,%rbx                           #! PC = 0x555555555900 *)
mull rbx rax rdx r12;
(* adcx   %rax,%r8                                 #! PC = 0x555555555905 *)
adcs carry r8 r8 rax carry;
(* adox   %rbx,%r9                                 #! PC = 0x55555555590b *)
adcs overflow r9 r9 rbx overflow;
(* mulx   %r13,%rax,%rbx                           #! PC = 0x555555555911 *)
mull rbx rax rdx r13;
(* adcx   %rax,%r9                                 #! PC = 0x555555555916 *)
adcs carry r9 r9 rax carry;
(* adox   %rbx,%r10                                #! PC = 0x55555555591c *)
adcs overflow r10 r10 rbx overflow;
(* mulx   %r14,%rax,%rbx                           #! PC = 0x555555555922 *)
mull rbx rax rdx r14;
(* adcx   %rax,%r10                                #! PC = 0x555555555927 *)
adcs carry r10 r10 rax carry;
(* adox   %rbx,%r11                                #! PC = 0x55555555592d *)
adcs overflow r11 r11 rbx overflow;
(* mulx   %r15,%rax,%r12                           #! PC = 0x555555555933 *)
mull r12 rax rdx r15;
(* adcx   %rax,%r11                                #! PC = 0x555555555938 *)
adcs carry r11 r11 rax carry;
(* adox   %rdi,%r12                                #! PC = 0x55555555593e *)
adcs overflow r12 r12 rdi overflow;
(* adcx   %rdi,%r12                                #! PC = 0x555555555944 *)
adcs carry r12 r12 rdi carry;
(* mov    0x10(%rsp),%rdi                          #! EA = L0x7fffffffdb20; Value = 0x00007fffffffdba0; PC = 0x55555555594a *)
#mov rdi L0x7fffffffdb20;
(* imul   %rdx,%r12                                #! PC = 0x55555555594f *)
mull dontcare r12 rdx r12;

(* NOTE: can't carry *)
assert true && and [dontcare = 0@64,carry=0@1,overflow=0@1];
assume and [dontcare = 0,carry=0,overflow=0] && true;

(* add    %r12,%r8                                 #! PC = 0x555555555953 *)
adds carry r8 r8 r12;
(* adc    $0x0,%r9                                 #! PC = 0x555555555956 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x55555555595a *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r11                                #! PC = 0x55555555595e *)
adcs carry r11 r11 0x0@uint64 carry;

ghost carryo@bit:
      carryo = carry && carryo = carry;

(* sbb    %rax,%rax                                #! PC = 0x555555555962 *)
sbbs carry rax rax rax carry;

assert true && carry = carryo;
assume carry = carryo && true;

mov overflow carry;
not zero@bit carry;
(* and    $0x26,%rax                               #! PC = 0x555555555965 *)
and rax@uint64 rax 0x26@uint64;

assert true && or [ and [carry=0@1, rax=0@64],
                    and [carry=1@1, rax=0x26@64]];
assume rax = carry*0x26 && true;

(* add    %rax,%r8                                 #! PC = 0x555555555969 *)
adds carry r8 r8 rax;

(* NOTE: can't carry *)
assert true && carry=0@1;
assume carry=0 && true;

(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffdba8; PC = 0x55555555596c *)
mov L0x7fffffffdba8 r9;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffdbb0; PC = 0x555555555970 *)
mov L0x7fffffffdbb0 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffdbb8; PC = 0x555555555974 *)
mov L0x7fffffffdbb8 r11;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdba0; PC = 0x555555555978 *)
mov L0x7fffffffdba0 r8;
(* mov    0x18(%rsp),%r15                          #! EA = L0x7fffffffdb28; Value = 0x00007ffff7ffd000; PC = 0x55555555597b *)
#mov r15 L0x7fffffffdb28;
(* mov    0x20(%rsp),%r14                          #! EA = L0x7fffffffdb30; Value = 0x0000555555558df0; PC = 0x555555555980 *)
#mov r14 L0x7fffffffdb30;
(* mov    0x28(%rsp),%r13                          #! EA = L0x7fffffffdb38; Value = 0x00007fffffffdd78; PC = 0x555555555985 *)
#mov r13 L0x7fffffffdb38;
(* mov    0x30(%rsp),%r12                          #! EA = L0x7fffffffdb40; Value = 0x0000000000000000; PC = 0x55555555598a *)
#mov r12 L0x7fffffffdb40;
(* mov    0x38(%rsp),%rbx                          #! EA = L0x7fffffffdb48; Value = 0x00007fffffffdd68; PC = 0x55555555598f *)
#mov rbx L0x7fffffffdb48;
(* mov    0x40(%rsp),%rbp                          #! EA = L0x7fffffffdb50; Value = 0x00007fffffffdc50; PC = 0x555555555994 *)
#mov rbp L0x7fffffffdb50;
(* lea    0x48(%rsp),%rsp                          #! PC = 0x555555555999 *)
#lea    %%EA,%rsp                          #! 0x555555555999 = 0x555555555999;
(* #! <- SP = 0x7fffffffdb58 *)
#! 0x7fffffffdb58 = 0x7fffffffdb58;
(* #repz ret                                       #! PC = 0x55555555599e *)
#repz ret                                       #! 0x55555555599e = 0x55555555599e;


mov c0 L0x7fffffffdba0;
mov c1 L0x7fffffffdba8;
mov c2 L0x7fffffffdbb0;
mov c3 L0x7fffffffdbb8;


{
  eqmod limbs 64 [c0, c1, c2, c3]
        limbs 64 [a0, a1, a2, a3] * limbs 64 [b0, b1, b2, b3]
        ((2**255)-19)
  &&
  true
}

