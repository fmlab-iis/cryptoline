(* quine: 
Parsing Cryptoline file:		[OK]		0.002938 seconds
Checking well-formedness:		[OK]		0.000729 seconds
Transforming to SSA form:		[OK]		0.000273 seconds
Normalizing specification:		[OK]		0.000348 seconds
Rewriting assignments:			[OK]		0.000220 seconds
Verifying program safety:		
	 Cut 0
	     Round 1 (0 safety conditions, timeout = 300 seconds)
	 Overall			[OK]		0.000297 seconds
Verifying range assertions:		[OK]		1.365446 seconds
Verifying range specification:		[OK]		0.003221 seconds
Rewriting value-preserved casting:	[OK]		0.000043 seconds
Verifying algebraic assertions:		[OK]		0.000629 seconds
Verifying algebraic specification:	[OK]		0.097542 seconds
Verification result:			[OK]		1.472404 seconds
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3) =
{
  true
  &&
  true
}

mov L0x7fffffffdb60 a0;
mov L0x7fffffffdb68 a1;
mov L0x7fffffffdb70 a2;
mov L0x7fffffffdb78 a3;

nondet rdi@uint64;

(* x25519_fe64_sqr: *)
#x25519_fe64_sqr:;
(* #! -> SP = 0x7fffffffdb58 *)
#! 0x7fffffffdb58 = 0x7fffffffdb58;
(* push   %rbp                                     #! EA = L0x7fffffffdb50; PC = 0x555555555800 *)
#push   %%rbp                                     #! L0x7fffffffdb50 = L0x7fffffffdb50; 0x555555555800 = 0x555555555800;
(* push   %rbx                                     #! EA = L0x7fffffffdb48; PC = 0x555555555801 *)
#push   %%rbx                                     #! L0x7fffffffdb48 = L0x7fffffffdb48; 0x555555555801 = 0x555555555801;
(* push   %r12                                     #! EA = L0x7fffffffdb40; PC = 0x555555555802 *)
#push   %%r12                                     #! L0x7fffffffdb40 = L0x7fffffffdb40; 0x555555555802 = 0x555555555802;
(* push   %r13                                     #! EA = L0x7fffffffdb38; PC = 0x555555555804 *)
#push   %%r13                                     #! L0x7fffffffdb38 = L0x7fffffffdb38; 0x555555555804 = 0x555555555804;
(* push   %r14                                     #! EA = L0x7fffffffdb30; PC = 0x555555555806 *)
#push   %%r14                                     #! L0x7fffffffdb30 = L0x7fffffffdb30; 0x555555555806 = 0x555555555806;
(* push   %r15                                     #! EA = L0x7fffffffdb28; PC = 0x555555555808 *)
#push   %%r15                                     #! L0x7fffffffdb28 = L0x7fffffffdb28; 0x555555555808 = 0x555555555808;
(* push   %rdi                                     #! EA = L0x7fffffffdb20; PC = 0x55555555580a *)
#push   %%rdi                                     #! L0x7fffffffdb20 = L0x7fffffffdb20; 0x55555555580a = 0x55555555580a;
(* lea    -0x10(%rsp),%rsp                         #! PC = 0x55555555580b *)
#lea    %%EA,%rsp                         #! 0x55555555580b = 0x55555555580b;
(* mov    (%rsi),%rdx                              #! EA = L0x7fffffffdb60; Value = 0x0000000000000000; PC = 0x555555555810 *)
mov rdx L0x7fffffffdb60;
(* mov    0x8(%rsi),%rcx                           #! EA = L0x7fffffffdb68; Value = 0x0000000000000000; PC = 0x555555555813 *)
mov rcx L0x7fffffffdb68;
(* mov    0x10(%rsi),%rbp                          #! EA = L0x7fffffffdb70; Value = 0x0000000000000000; PC = 0x555555555817 *)
mov rbp L0x7fffffffdb70;
(* mov    0x18(%rsi),%rsi                          #! EA = L0x7fffffffdb78; Value = 0x0000000000000000; PC = 0x55555555581b *)
mov rsi L0x7fffffffdb78;
(* mulx   %rdx,%r8,%r15                            #! PC = 0x55555555581f *)
mull r15 r8 rdx rdx;
(* mulx   %rcx,%r9,%rax                            #! PC = 0x555555555824 *)
mull rax r9 rdx rcx;
(* xor    %edi,%edi                                #! PC = 0x555555555829 *)
#mov edi 0@uint64;

(* this is equal to rdi = 0 *)
(* https://stackoverflow.com/questions/15442259/are-edx-and-dx-the-same-register *)
mov rdi 0@uint64;

clear carry;
clear overflow;
(* mulx   %rbp,%r10,%rbx                           #! PC = 0x55555555582b *)
mull rbx r10 rdx rbp;
(* adcx   %rax,%r10                                #! PC = 0x555555555830 *)
adcs carry r10 r10 rax carry;
(* mulx   %rsi,%r11,%r12                           #! PC = 0x555555555836 *)
mull r12 r11 rdx rsi;
(* mov    %rcx,%rdx                                #! PC = 0x55555555583b *)
mov rdx rcx;
(* adcx   %rbx,%r11                                #! PC = 0x55555555583e *)
adcs carry r11 r11 rbx carry;
(* adcx   %rdi,%r12                                #! PC = 0x555555555844 *)
adcs carry r12 r12 rdi carry;

(* no carry *)
assert true && carry=0@1;
assume carry=0 && true;

(* mulx   %rbp,%rax,%rbx                           #! PC = 0x55555555584a *)
mull rbx rax rdx rbp;
(* adox   %rax,%r11                                #! PC = 0x55555555584f *)
adcs overflow r11 r11 rax overflow;
(* adcx   %rbx,%r12                                #! PC = 0x555555555855 *)
adcs carry r12 r12 rbx carry;
(* mulx   %rsi,%rax,%r13                           #! PC = 0x55555555585b *)
mull r13 rax rdx rsi;
(* mov    %rbp,%rdx                                #! PC = 0x555555555860 *)
mov rdx rbp;
(* adox   %rax,%r12                                #! PC = 0x555555555863 *)
adcs overflow r12 r12 rax overflow;
(* adcx   %rdi,%r13                                #! PC = 0x555555555869 *)
adcs carry r13 r13 rdi carry;
(* mulx   %rsi,%rax,%r14                           #! PC = 0x55555555586f *)
mull r14 rax rdx rsi;
(* mov    %rcx,%rdx                                #! PC = 0x555555555874 *)
mov rdx rcx;
(* adox   %rax,%r13                                #! PC = 0x555555555877 *)
adcs overflow r13 r13 rax overflow;
(* adcx   %rdi,%r14                                #! PC = 0x55555555587d *)
adcs carry r14 r14 rdi carry;
(* adox   %rdi,%r14                                #! PC = 0x555555555883 *)
adcs overflow r14 r14 rdi overflow;

(* NOTE: can't carry *)
assert true && and [carry=0@1,overflow=0@1];
assume and [carry=0,overflow=0] && true;

(* adcx   %r9,%r9                                  #! PC = 0x555555555889 *)
adcs carry r9 r9 r9 carry;
(* adox   %r15,%r9                                 #! PC = 0x55555555588f *)
adcs overflow r9 r9 r15 overflow;
(* adcx   %r10,%r10                                #! PC = 0x555555555895 *)
adcs carry r10 r10 r10 carry;
(* mulx   %rdx,%rax,%rbx                           #! PC = 0x55555555589b *)
mull rbx rax rdx rdx;
(* mov    %rbp,%rdx                                #! PC = 0x5555555558a0 *)
mov rdx rbp;
(* adcx   %r11,%r11                                #! PC = 0x5555555558a3 *)
adcs carry r11 r11 r11 carry;
(* adox   %rax,%r10                                #! PC = 0x5555555558a9 *)
adcs overflow r10 r10 rax overflow;
(* adcx   %r12,%r12                                #! PC = 0x5555555558af *)
adcs carry r12 r12 r12 carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555558b5 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   %rdx,%rax,%rbx                           #! PC = 0x5555555558bb *)
mull rbx rax rdx rdx;
(* mov    %rsi,%rdx                                #! PC = 0x5555555558c0 *)
mov rdx rsi;
(* adcx   %r13,%r13                                #! PC = 0x5555555558c3 *)
adcs carry r13 r13 r13 carry;
(* adox   %rax,%r12                                #! PC = 0x5555555558c9 *)
adcs overflow r12 r12 rax overflow;
(* adcx   %r14,%r14                                #! PC = 0x5555555558cf *)
adcs carry r14 r14 r14 carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555558d5 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   %rdx,%rax,%r15                           #! PC = 0x5555555558db *)
mull r15 rax rdx rdx;
(* mov    $0x26,%edx                               #! PC = 0x5555555558e0 *)
#mov edx 0x26@uint64;

(* this is equal to rdx = 0x26 *)
(* https://stackoverflow.com/questions/15442259/are-edx-and-dx-the-same-register *)
mov rdx 0x26@uint64;

(* adox   %rax,%r14                                #! PC = 0x5555555558e5 *)
adcs overflow r14 r14 rax overflow;
(* adcx   %rdi,%r15                                #! PC = 0x5555555558eb *)
adcs carry r15 r15 rdi carry;
(* adox   %rdi,%r15                                #! PC = 0x5555555558f1 *)
adcs overflow r15 r15 rdi overflow;

(* NOTE: can't carry *)
assert true && and [carry=0@1,overflow=0@1];
assume and [carry=0,overflow=0] && true;

(* START REDUCE *)

(* #jmp    0x555555555900 <x25519_fe64_sqr+256>    #! PC = 0x5555555558f7 *)
#jmp    0x555555555900 <x25519_fe64_sqr+256>    #! 0x5555555558f7 = 0x5555555558f7;
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
  eqmod (limbs 64 [c0, c1, c2, c3])
        (limbs 64 [a0, a1, a2, a3] * limbs 64 [a0, a1, a2, a3])
        ((2**255)-19)
  &&
  true
}
