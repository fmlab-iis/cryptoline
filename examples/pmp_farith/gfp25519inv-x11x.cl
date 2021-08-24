#by@aedes:pmp_farith$ cv  -isafety -jobs 16 -o t  -v gfp25519inv-x11x.cl 
#Parsing Cryptoline file:		[OK]		0.003367 seconds
#Checking well-formedness:		[OK]		0.000382 seconds
#Transforming to SSA form:		[OK]		0.000334 seconds
#Rewriting assignments:			[OK]		0.000419 seconds
#Verifying program safety:		
#	 Cut 0
#	     Round 1 (62 safety conditions, timeout = 300 seconds)
#		 Safety condition #8	[OK]
#		 Safety condition #16	[OK]
#		 Safety condition #4	[OK]
#		 Safety condition #0	[OK]
#		 Safety condition #9	[OK]
#		 Safety condition #6	[OK]
#		 Safety condition #11	[OK]
#		 Safety condition #7	[OK]
#		 Safety condition #20	[OK]
#		 Safety condition #10	[OK]
#		 Safety condition #2	[OK]
#		 Safety condition #3	[OK]
#		 Safety condition #1	[OK]
#		 Safety condition #5	[OK]
#		 Safety condition #28	[OK]
#		 Safety condition #18	[OK]
#		 Safety condition #12	[OK]
#		 Safety condition #19	[OK]
#		 Safety condition #13	[OK]
#		 Safety condition #32	[OK]
#		 Safety condition #14	[OK]
#		 Safety condition #22	[OK]
#		 Safety condition #23	[OK]
#		 Safety condition #21	[OK]
#		 Safety condition #15	[OK]
#		 Safety condition #17	[OK]
#		 Safety condition #30	[OK]
#		 Safety condition #31	[OK]
#		 Safety condition #34	[OK]
#		 Safety condition #35	[OK]
#		 Safety condition #33	[OK]
#		 Safety condition #45	[OK]
#		 Safety condition #24	[OK]
#		 Safety condition #25	[OK]
#		 Safety condition #26	[OK]
#		 Safety condition #27	[OK]
#		 Safety condition #29	[OK]
#		 Safety condition #43	[OK]
#		 Safety condition #44	[OK]
#		 Safety condition #46	[OK]
#		 Safety condition #47	[OK]
#		 Safety condition #48	[OK]
#		 Safety condition #36	[OK]
#		 Safety condition #58	[OK]
#		 Safety condition #37	[OK]
#		 Safety condition #38	[OK]
#		 Safety condition #39	[OK]
#		 Safety condition #40	[OK]
#		 Safety condition #42	[OK]
#		 Safety condition #41	[OK]
#		 Safety condition #56	[OK]
#		 Safety condition #57	[OK]
#		 Safety condition #59	[OK]
#		 Safety condition #61	[OK]
#		 Safety condition #49	[OK]
#		 Safety condition #60	[OK]
#		 Safety condition #51	[OK]
#		 Safety condition #50	[OK]
#		 Safety condition #52	[OK]
#		 Safety condition #53	[OK]
#		 Safety condition #54	[OK]
#		 Safety condition #55	[OK]
#	 Overall			[OK]		5.876796 seconds
#Verifying range assertions:		[OK]		0.000197 seconds
#Verifying range specification:		[OK]		1.772709 seconds
#Rewriting value-preserved casting:	[OK]		0.000134 seconds
#Verifying algebraic assertions:	[OK]		110.562204 seconds
#Verifying algebraic specification:	[OK]		1198.855145 seconds
#Verification result:			[OK]		1317.071982 seconds

proc main (uint64 L0x7fffffffdfe8, uint64 L0x7fffffffe030, uint64 L0x7fffffffe050, uint64 L0x7fffffffe058, uint64 L0x7fffffffe060, uint64 L0x7fffffffe068, uint64 rbx, uint64 rdi, uint64 rdx, uint64 rsi, uint64 rsp, uint256 X) =
{
  true
  &&
  true
}

mov x_0 L0x7fffffffe050;
mov x_1 L0x7fffffffe058;
mov x_2 L0x7fffffffe060;
mov x_3 L0x7fffffffe068;

assume eq X (limbs 64 [vars x|0..3]) && true;
	
(* gfp25519inv: *)
(* gfp25519inv:; *)
(* #! -> SP = 0x7fffffffe038 *)
#! 0x7fffffffe038 = 0x7fffffffe038;
(* endbr64                                         #! PC = 0x401f30 *)
(* endbr64                                         #! 0x401f30 = 0x401f30; *)
(* push   %rbp                                     #! EA = L0x7fffffffe030; PC = 0x401f34 *)
(* push   %%rbp *)
(* mov    %rdi,%rbp                                #! PC = 0x401f35 *)
mov rbp rdi;
(* #callq  0x401d40 <gfp25519fltinv>               #! PC = 0x401f38 *)
#callq  0x401d40 <gfp25519fltinv>               #! 0x401f38 = 0x401f38;
(* #! -> SP = 0x7fffffffe028 *)
#! 0x7fffffffe028 = 0x7fffffffe028;
(* endbr64                                         #! PC = 0x401d40 *)
(* endbr64                                         #! 0x401d40 = 0x401d40; *)
(* push   %r15                                     #! EA = L0x7fffffffe020; PC = 0x401d44 *)
(* push   %%r15 *)
(* mov    $0x1,%edx                                #! PC = 0x401d46 *)
mov rdx 1@uint64;
(* push   %r14                                     #! EA = L0x7fffffffe018; PC = 0x401d4b *)
(* push   %%r14 *)
(* mov    %rdi,%r14                                #! PC = 0x401d4d *)
mov r14 rdi;
(* push   %r13                                     #! EA = L0x7fffffffe010; PC = 0x401d50 *)
(* push   %%r13 *)
(* push   %r12                                     #! EA = L0x7fffffffe008; PC = 0x401d52 *)
(* push   %%r12 *)
(* mov    %rsi,%r12                                #! PC = 0x401d54 *)
mov r12 rsi;
(* push   %rbp                                     #! EA = L0x7fffffffe000; PC = 0x401d57 *)
(* push   %%rbp *)
(* push   %rbx                                     #! EA = L0x7fffffffdff8; PC = 0x401d58 *)
(* push   %%rbx *)
(* sub    $0x138,%rsp                              #! PC = 0x401d59 *)
subs carry rsp rsp 0x138@uint64;
(* lea    0x20(%rsp),%rbx                          #! PC = 0x401d60 *)
adds dontcare rbx rsp 0x20@uint64;
(* mov    %rsp,%rbp                                #! PC = 0x401d65 *)
mov rbp rsp;
(* mov    %rbx,%rdi                                #! PC = 0x401d68 *)
mov rdi rbx;
(* mov    %fs:0x28,%rax                            #! PC = 0x401d6b *)
(* mov    %fs:0x28,%%rax                            #! 0x401d6b = 0x401d6b; *)
(* mov    %rax,0x128(%rsp)                         #! EA = L0x7fffffffdfe8; PC = 0x401d74 *)
(* mov    %%rax,0x128(%%rsp)                         #! L0x7fffffffdfe8 = L0x7fffffffdfe8; 0x401d74 = 0x401d74; *)
(* xor    %eax,%eax                                #! PC = 0x401d7c *)
(* xor    %eax,%eax                                #! 0x401d7c = 0x401d7c; *)

(* #callq  0x401b20 <gfp25519nsqr>                 #! PC = 0x401d7e *)
#callq  0x401b20 <gfp25519nsqr>                 #! 0x401d7e = 0x401d7e;
(* #! -> SP = 0x7fffffffdeb8 *)
#! 0x7fffffffdeb8 = 0x7fffffffdeb8;
(* push   %rbp                                     #! EA = L0x7fffffffdeb0; PC = 0x401b20 *)
(* push   %%rbp *)
(* push   %rbx                                     #! EA = L0x7fffffffdea8; PC = 0x401b21 *)
(* push   %%rbx *)
(* push   %r12                                     #! EA = L0x7fffffffdea0; PC = 0x401b22 *)
(* push   %%r12 *)
(* push   %r13                                     #! EA = L0x7fffffffde98; PC = 0x401b24 *)
(* push   %%r13 *)
(* push   %r14                                     #! EA = L0x7fffffffde90; PC = 0x401b26 *)
(* push   %%r14 *)
(* push   %r15                                     #! EA = L0x7fffffffde88; PC = 0x401b28 *)
(* push   %%r15 *)
(* push   %rdi                                     #! EA = L0x7fffffffde80; PC = 0x401b2a *)
(* push   %%rdi *)
(* mov    (%rsi),%rbx                              #! EA = L0x7fffffffe050; Value = 0xffffffffffffffec; PC = 0x401b2b *)
mov rbx L0x7fffffffe050;
(* mov    0x8(%rsi),%rbp                           #! EA = L0x7fffffffe058; Value = 0xffffffffffffffff; PC = 0x401b2e *)
mov rbp L0x7fffffffe058;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffe060; Value = 0xffffffffffffffff; PC = 0x401b32 *)
mov rax L0x7fffffffe060;
(* mov    0x18(%rsi),%rsi                          #! EA = L0x7fffffffe068; Value = 0x7fffffffffffffff; PC = 0x401b36 *)
mov rsi L0x7fffffffe068;
(* mov    %rdx,%rdi                                #! PC = 0x401b3a *)
mov rdi rdx;
(* dec    %rdi                                     #! PC = 0x401b3d *)
(* dec    %%rdi *)
(* xor    %r13,%r13                                #! PC = 0x401b40 *)
mov r13 0@uint64;
mov carry 0@uint1;
mov overflow 0@uint1;
(* mov    %rbx,%rdx                                #! PC = 0x401b43 *)
mov rdx rbx;
(* mulx   %rbp,%r9,%r10                            #! PC = 0x401b46 *)
umull r10 r9 rbp rdx;
(* mulx   %rax,%rcx,%r11                           #! PC = 0x401b4b *)
umull r11 rcx rax rdx;
(* adcx   %rcx,%r10                                #! PC = 0x401b50 *)
adcs carry r10 r10 rcx carry;
(* mulx   %rsi,%rcx,%r12                           #! PC = 0x401b56 *)
umull r12 rcx rsi rdx;
(* adcx   %rcx,%r11                                #! PC = 0x401b5b *)
adcs carry r11 r11 rcx carry;
(* adcx   %r13,%r12                                #! PC = 0x401b61 *)
adc r12 r12 r13 carry;
(* mov    %rbp,%rdx                                #! PC = 0x401b67 *)
mov rdx rbp;
(* xor    %r14,%r14                                #! PC = 0x401b6a *)
mov r14 0@uint64;
mov carry 0@uint1;
mov overflow 0@uint1;
(* mulx   %rax,%rcx,%rdx                           #! PC = 0x401b6d *)
umull rdx rcx rax rdx;
(* adcx   %rcx,%r11                                #! PC = 0x401b72 *)
adcs carry r11 r11 rcx carry;
(* adox   %rdx,%r12                                #! PC = 0x401b78 *)
adcs overflow r12 r12 rdx overflow;
(* mov    %rbp,%rdx                                #! PC = 0x401b7e *)
mov rdx rbp;
(* mulx   %rsi,%rcx,%rdx                           #! PC = 0x401b81 *)
umull rdx rcx rsi rdx;
(* adcx   %rcx,%r12                                #! PC = 0x401b86 *)
adcs carry r12 r12 rcx carry;
(* adox   %rdx,%r13                                #! PC = 0x401b8c *)
adc r13 r13 rdx overflow;
(* adcx   %r14,%r13                                #! PC = 0x401b92 *)
adc r13 r13 r14 carry;
(* xor    %r15,%r15                                #! PC = 0x401b98 *)
mov r15 0@uint64;
mov carry 0@uint1;
mov overflow 0@uint1;
(* mov    %rax,%rdx                                #! PC = 0x401b9b *)
mov rdx rax;
(* mulx   %rsi,%rcx,%r14                           #! PC = 0x401b9e *)
umull r14 rcx rsi rdx;
(* adcx   %rcx,%r13                                #! PC = 0x401ba3 *)
adcs carry r13 r13 rcx carry;
(* adcx   %r15,%r14                                #! PC = 0x401ba9 *)
adc r14 r14 r15 carry;
(* shld   $0x1,%r14,%r15                           #! PC = 0x401baf *)
(* cshl r15 dontcare r15 r14 0x1; *)
(* shld   $0x1,%r13,%r14                           #! PC = 0x401bb4 *)
(* cshl r14 dontcare r14 r13 0x1; *)
(* shld   $0x1,%r12,%r13                           #! PC = 0x401bb9 *)
(* cshl r13 dontcare r13 r12 0x1; *)
(* shld   $0x1,%r11,%r12                           #! PC = 0x401bbe *)
(* cshl r12 dontcare r12 r11 0x1; *)
(* shld   $0x1,%r10,%r11                           #! PC = 0x401bc3 *)
(* cshl r11 dontcare r11 r10 0x1; *)
(* shld   $0x1,%r9,%r10                            #! PC = 0x401bc8 *)
(* cshl r10 dontcare r10 r9 0x1; *)
(* shl    %r9                                      #! PC = 0x401bcd *)
(* shl    %%r9                                      #! 0x401bcd = 0x401bcd; *)



adds carry r9 r9 r9;
adcs carry r10 r10 r10 carry;
adcs carry r11 r11 r11 carry;
adcs carry r12 r12 r12 carry;
adcs carry r13 r13 r13 carry;
adcs carry r14 r14 r14 carry;
adc r15 r15 r15 carry;

(* xor    %rdx,%rdx                                #! PC = 0x401bd0 *)
mov rdx 0@uint64;
mov carry 0@uint1;
mov overflow 0@uint1;
(* mov    %rbx,%rdx                                #! PC = 0x401bd3 *)
mov rdx rbx;
(* mulx   %rdx,%r8,%rdx                            #! PC = 0x401bd6 *)
umull rdx r8 rdx rdx;
(* adcx   %rdx,%r9                                 #! PC = 0x401bdb *)
adcs carry r9 r9 rdx carry;
(* mov    %rbp,%rdx                                #! PC = 0x401be1 *)
mov rdx rbp;
(* mulx   %rdx,%rcx,%rdx                           #! PC = 0x401be4 *)
umull rdx rcx rdx rdx;
(* adcx   %rcx,%r10                                #! PC = 0x401be9 *)
adcs carry r10 r10 rcx carry;
(* adcx   %rdx,%r11                                #! PC = 0x401bef *)
adcs carry r11 r11 rdx carry;
(* mov    %rax,%rdx                                #! PC = 0x401bf5 *)
mov rdx rax;
(* mulx   %rdx,%rcx,%rdx                           #! PC = 0x401bf8 *)
umull rdx rcx rdx rdx;
(* adcx   %rcx,%r12                                #! PC = 0x401bfd *)
adcs carry r12 r12 rcx carry;
(* adcx   %rdx,%r13                                #! PC = 0x401c03 *)
adcs carry r13 r13 rdx carry;
(* mov    %rsi,%rdx                                #! PC = 0x401c09 *)
mov rdx rsi;
(* mulx   %rdx,%rcx,%rdx                           #! PC = 0x401c0c *)
umull rdx rcx rdx rdx;
(* adcx   %rcx,%r14                                #! PC = 0x401c11 *)
adcs carry r14 r14 rcx carry;
(* adcx   %rdx,%r15                                #! PC = 0x401c17 *)
adc r15 r15 rdx carry;
(* xor    %rbp,%rbp                                #! PC = 0x401c1d *)
mov rbp 0@uint64;
mov carry 0@uint1;
mov overflow 0@uint1;
(* mov    $0x26,%rdx                               #! PC = 0x401c20 *)
mov rdx 0x26@uint64;
(* mulx   %r12,%rbx,%rbp                           #! PC = 0x401c27 *)
umull rbp rbx r12 rdx;
(* adcx   %r8,%rbx                                 #! PC = 0x401c2c *)
adcs carry rbx rbx r8 carry;
(* adox   %r9,%rbp                                 #! PC = 0x401c32 *)
adcs overflow rbp rbp r9 overflow;
(* mulx   %r13,%rcx,%rax                           #! PC = 0x401c38 *)
umull rax rcx r13 rdx;
(* adcx   %rcx,%rbp                                #! PC = 0x401c3d *)
adcs carry rbp rbp rcx carry;
(* adox   %r10,%rax                                #! PC = 0x401c43 *)
adcs overflow rax rax r10 overflow;
(* mulx   %r14,%rcx,%rsi                           #! PC = 0x401c49 *)
umull rsi rcx r14 rdx;
(* adcx   %rcx,%rax                                #! PC = 0x401c4e *)
adcs carry rax rax rcx carry;
(* adox   %r11,%rsi                                #! PC = 0x401c54 *)
adcs overflow rsi rsi r11 overflow;
(* mulx   %r15,%rcx,%r15                           #! PC = 0x401c5a *)
umull r15 rcx r15 rdx;
(* adcx   %rcx,%rsi                                #! PC = 0x401c5f *)
adcs carry rsi rsi rcx carry;
(* adox   0x405068,%r15                            #! PC = 0x401c65 *)
adc r15 0@uint64 r15 overflow;
(* adcx   0x405068,%r15                            #! PC = 0x401c70 *)
adc r15 0@uint64 r15 carry;
(* shld   $0x1,%rsi,%r15                           #! PC = 0x401c7b *)
(* cshl r15 dontcare r15 rsi 0x1; *)
(* and    0x405070,%rsi                            #! PC = 0x401c80 *)
(* split dontcare rsi rsi 63; *)
join t r15 rsi;
split t1 t2 t 63;
vpc rsi@uint64 t2;
vpc r15@uint64 t1;
(* imul   $0x13,%r15,%r15                          #! PC = 0x401c88 *)
mul r15 r15 0x13@uint64;
(* add    %r15,%rbx                                #! PC = 0x401c8c *)
adds carry rbx r15 rbx;
nondet overflow@uint1;
(* adc    $0x0,%rbp                                #! PC = 0x401c8f *)
adcs carry rbp 0x0@uint64 rbp carry;
nondet overflow@uint1;
(* adc    $0x0,%rax                                #! PC = 0x401c93 *)
adcs carry rax 0x0@uint64 rax carry;
nondet overflow@uint1;
(* adc    $0x0,%rsi                                #! PC = 0x401c97 *)
adc rsi 0x0@uint64 rsi carry;
nondet overflow@uint1;
(* cmp    $0x0,%rdi                                #! PC = 0x401c9b *)
(* cmp    $0x0,%%rdi                                #! 0x401c9b = 0x401c9b; *)
nondet carry@uint1;
nondet overflow@uint1;
(* #jne    0x401b3d <.START>                       #! PC = 0x401c9f *)
#jne    0x401b3d <.START>                       #! 0x401c9f = 0x401c9f;
(* pop    %rdi                                     #! EA = L0x7fffffffde80; Value = 0x00007fffffffdee0; PC = 0x401ca5 *)
(* pop    %%rdi *)
(* mov    %rbx,(%rdi)                              #! EA = L0x7fffffffdee0; PC = 0x401ca6 *)
mov L0x7fffffffdee0 rbx;
(* mov    %rbp,0x8(%rdi)                           #! EA = L0x7fffffffdee8; PC = 0x401ca9 *)
mov L0x7fffffffdee8 rbp;
(* mov    %rax,0x10(%rdi)                          #! EA = L0x7fffffffdef0; PC = 0x401cad *)
mov L0x7fffffffdef0 rax;
(* mov    %rsi,0x18(%rdi)                          #! EA = L0x7fffffffdef8; PC = 0x401cb1 *)
mov L0x7fffffffdef8 rsi;
(* pop    %r15                                     #! EA = L0x7fffffffde88; Value = 0x00007fffffffe050; PC = 0x401cb5 *)
(* pop    %%r15 *)
(* pop    %r14                                     #! EA = L0x7fffffffde90; Value = 0x00007fffffffe070; PC = 0x401cb7 *)
(* pop    %%r14 *)
(* pop    %r13                                     #! EA = L0x7fffffffde98; Value = 0x00000000004050a0; PC = 0x401cb9 *)
(* pop    %%r13 *)
(* pop    %r12                                     #! EA = L0x7fffffffdea0; Value = 0x00007fffffffe050; PC = 0x401cbb *)
(* pop    %%r12 *)
(* pop    %rbx                                     #! EA = L0x7fffffffdea8; Value = 0x00007fffffffdee0; PC = 0x401cbd *)
(* pop    %%rbx *)
(* pop    %rbp                                     #! EA = L0x7fffffffdeb0; Value = 0x00007fffffffdec0; PC = 0x401cbe *)
(* pop    %%rbp *)
(* #! <- SP = 0x7fffffffdeb8 *)
#! 0x7fffffffdeb8 = 0x7fffffffdeb8;
(* #retq                                           #! PC = 0x401cbf *)
#retq                                           #! 0x401cbf = 0x401cbf;

# gfp25519sqr(&z2,e);
mov z2_0 L0x7fffffffdee0;
mov z2_1 L0x7fffffffdee8;
mov z2_2 L0x7fffffffdef0;
mov z2_3 L0x7fffffffdef8;



(* mov    %rbx,%rsi                                #! PC = 0x401d83 *)
mov rsi rbx;
(* mov    $0x1,%edx                                #! PC = 0x401d86 *)
mov rdx 0x1@uint64;
(* mov    %rbp,%rdi                                #! PC = 0x401d8b *)
mov rdi rbp;
(* #callq  0x401b20 <gfp25519nsqr>                 #! PC = 0x401d8e *)
#callq  0x401b20 <gfp25519nsqr>                 #! 0x401d8e = 0x401d8e;
(* #! -> SP = 0x7fffffffdeb8 *)
#! 0x7fffffffdeb8 = 0x7fffffffdeb8;
(* push   %rbp                                     #! EA = L0x7fffffffdeb0; PC = 0x401b20 *)
(* push   %%rbp *)
(* push   %rbx                                     #! EA = L0x7fffffffdea8; PC = 0x401b21 *)
(* push   %%rbx *)
(* push   %r12                                     #! EA = L0x7fffffffdea0; PC = 0x401b22 *)
(* push   %%r12 *)
(* push   %r13                                     #! EA = L0x7fffffffde98; PC = 0x401b24 *)
(* push   %%r13 *)
(* push   %r14                                     #! EA = L0x7fffffffde90; PC = 0x401b26 *)
(* push   %%r14 *)
(* push   %r15                                     #! EA = L0x7fffffffde88; PC = 0x401b28 *)
(* push   %%r15 *)
(* push   %rdi                                     #! EA = L0x7fffffffde80; PC = 0x401b2a *)
(* push   %%rdi *)
(* mov    (%rsi),%rbx                              #! EA = L0x7fffffffdee0; Value = 0xffffffffffffffee; PC = 0x401b2b *)
mov rbx L0x7fffffffdee0;
(* mov    0x8(%rsi),%rbp                           #! EA = L0x7fffffffdee8; Value = 0xffffffffffffffff; PC = 0x401b2e *)
mov rbp L0x7fffffffdee8;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdef0; Value = 0xffffffffffffffff; PC = 0x401b32 *)
mov rax L0x7fffffffdef0;
(* mov    0x18(%rsi),%rsi                          #! EA = L0x7fffffffdef8; Value = 0x7fffffffffffffff; PC = 0x401b36 *)
mov rsi L0x7fffffffdef8;
(* mov    %rdx,%rdi                                #! PC = 0x401b3a *)
mov rdi rdx;
(* dec    %rdi                                     #! PC = 0x401b3d *)
(* dec    %%rdi *)
(* xor    %r13,%r13                                #! PC = 0x401b40 *)
mov r13 0@uint64;
mov carry 0@uint1;
mov overflow 0@uint1;
(* mov    %rbx,%rdx                                #! PC = 0x401b43 *)
mov rdx rbx;
(* mulx   %rbp,%r9,%r10                            #! PC = 0x401b46 *)
umull r10 r9 rbp rdx;
(* mulx   %rax,%rcx,%r11                           #! PC = 0x401b4b *)
umull r11 rcx rax rdx;
(* adcx   %rcx,%r10                                #! PC = 0x401b50 *)
adcs carry r10 r10 rcx carry;
(* mulx   %rsi,%rcx,%r12                           #! PC = 0x401b56 *)
umull r12 rcx rsi rdx;
(* adcx   %rcx,%r11                                #! PC = 0x401b5b *)
adcs carry r11 r11 rcx carry;
(* adcx   %r13,%r12                                #! PC = 0x401b61 *)
adc r12 r12 r13 carry;
(* mov    %rbp,%rdx                                #! PC = 0x401b67 *)
mov rdx rbp;
(* xor    %r14,%r14                                #! PC = 0x401b6a *)
mov r14 0@uint64;
mov carry 0@uint1;
mov overflow 0@uint1;
(* mulx   %rax,%rcx,%rdx                           #! PC = 0x401b6d *)
umull rdx rcx rax rdx;
(* adcx   %rcx,%r11                                #! PC = 0x401b72 *)
adcs carry r11 r11 rcx carry;
(* adox   %rdx,%r12                                #! PC = 0x401b78 *)
adcs overflow r12 r12 rdx overflow;
(* mov    %rbp,%rdx                                #! PC = 0x401b7e *)
mov rdx rbp;
(* mulx   %rsi,%rcx,%rdx                           #! PC = 0x401b81 *)
umull rdx rcx rsi rdx;
(* adcx   %rcx,%r12                                #! PC = 0x401b86 *)
adcs carry r12 r12 rcx carry;
(* adox   %rdx,%r13                                #! PC = 0x401b8c *)
adc r13 r13 rdx overflow;
(* adcx   %r14,%r13                                #! PC = 0x401b92 *)
adc r13 r13 r14 carry;
(* xor    %r15,%r15                                #! PC = 0x401b98 *)
mov r15 0@uint64;
mov carry 0@uint1;
mov overflow 0@uint1;
(* mov    %rax,%rdx                                #! PC = 0x401b9b *)
mov rdx rax;
(* mulx   %rsi,%rcx,%r14                           #! PC = 0x401b9e *)
umull r14 rcx rsi rdx;
(* adcx   %rcx,%r13                                #! PC = 0x401ba3 *)
adcs carry r13 r13 rcx carry;
(* adcx   %r15,%r14                                #! PC = 0x401ba9 *)
adc r14 r14 r15 carry;
(* shld   $0x1,%r14,%r15                           #! PC = 0x401baf *)
(* cshl r15 dontcare r15 r14 0x1; *)
(* shld   $0x1,%r13,%r14                           #! PC = 0x401bb4 *)
(* cshl r14 dontcare r14 r13 0x1; *)
(* shld   $0x1,%r12,%r13                           #! PC = 0x401bb9 *)
(* cshl r13 dontcare r13 r12 0x1; *)
(* shld   $0x1,%r11,%r12                           #! PC = 0x401bbe *)
(* cshl r12 dontcare r12 r11 0x1; *)
(* shld   $0x1,%r10,%r11                           #! PC = 0x401bc3 *)
(* cshl r11 dontcare r11 r10 0x1; *)
(* shld   $0x1,%r9,%r10                            #! PC = 0x401bc8 *)
(* cshl r10 dontcare r10 r9 0x1; *)
(* shl    %r9                                      #! PC = 0x401bcd *)
(* shl    %%r9                                      #! 0x401bcd = 0x401bcd; *)



adds carry r9 r9 r9;
adcs carry r10 r10 r10 carry;
adcs carry r11 r11 r11 carry;
adcs carry r12 r12 r12 carry;
adcs carry r13 r13 r13 carry;
adcs carry r14 r14 r14 carry;
adc r15 r15 r15 carry;

(* xor    %rdx,%rdx                                #! PC = 0x401bd0 *)
mov rdx 0@uint64;
mov carry 0@uint1;
mov overflow 0@uint1;
(* mov    %rbx,%rdx                                #! PC = 0x401bd3 *)
mov rdx rbx;
(* mulx   %rdx,%r8,%rdx                            #! PC = 0x401bd6 *)
umull rdx r8 rdx rdx;
(* adcx   %rdx,%r9                                 #! PC = 0x401bdb *)
adcs carry r9 r9 rdx carry;
(* mov    %rbp,%rdx                                #! PC = 0x401be1 *)
mov rdx rbp;
(* mulx   %rdx,%rcx,%rdx                           #! PC = 0x401be4 *)
umull rdx rcx rdx rdx;
(* adcx   %rcx,%r10                                #! PC = 0x401be9 *)
adcs carry r10 r10 rcx carry;
(* adcx   %rdx,%r11                                #! PC = 0x401bef *)
adcs carry r11 r11 rdx carry;
(* mov    %rax,%rdx                                #! PC = 0x401bf5 *)
mov rdx rax;
(* mulx   %rdx,%rcx,%rdx                           #! PC = 0x401bf8 *)
umull rdx rcx rdx rdx;
(* adcx   %rcx,%r12                                #! PC = 0x401bfd *)
adcs carry r12 r12 rcx carry;
(* adcx   %rdx,%r13                                #! PC = 0x401c03 *)
adcs carry r13 r13 rdx carry;
(* mov    %rsi,%rdx                                #! PC = 0x401c09 *)
mov rdx rsi;
(* mulx   %rdx,%rcx,%rdx                           #! PC = 0x401c0c *)
umull rdx rcx rdx rdx;
(* adcx   %rcx,%r14                                #! PC = 0x401c11 *)
adcs carry r14 r14 rcx carry;
(* adcx   %rdx,%r15                                #! PC = 0x401c17 *)
adc r15 r15 rdx carry;
(* xor    %rbp,%rbp                                #! PC = 0x401c1d *)
mov rbp 0@uint64;
mov carry 0@uint1;
mov overflow 0@uint1;
(* mov    $0x26,%rdx                               #! PC = 0x401c20 *)
mov rdx 0x26@uint64;
(* mulx   %r12,%rbx,%rbp                           #! PC = 0x401c27 *)
umull rbp rbx r12 rdx;
(* adcx   %r8,%rbx                                 #! PC = 0x401c2c *)
adcs carry rbx rbx r8 carry;
(* adox   %r9,%rbp                                 #! PC = 0x401c32 *)
adcs overflow rbp rbp r9 overflow;
(* mulx   %r13,%rcx,%rax                           #! PC = 0x401c38 *)
umull rax rcx r13 rdx;
(* adcx   %rcx,%rbp                                #! PC = 0x401c3d *)
adcs carry rbp rbp rcx carry;
(* adox   %r10,%rax                                #! PC = 0x401c43 *)
adcs overflow rax rax r10 overflow;
(* mulx   %r14,%rcx,%rsi                           #! PC = 0x401c49 *)
umull rsi rcx r14 rdx;
(* adcx   %rcx,%rax                                #! PC = 0x401c4e *)
adcs carry rax rax rcx carry;
(* adox   %r11,%rsi                                #! PC = 0x401c54 *)
adcs overflow rsi rsi r11 overflow;
(* mulx   %r15,%rcx,%r15                           #! PC = 0x401c5a *)
umull r15 rcx r15 rdx;
(* adcx   %rcx,%rsi                                #! PC = 0x401c5f *)
adcs carry rsi rsi rcx carry;
(* adox   0x405068,%r15                            #! PC = 0x401c65 *)
adc r15 0@uint64 r15 overflow;
(* adcx   0x405068,%r15                            #! PC = 0x401c70 *)
adc r15 0@uint64 r15 carry;
(* shld   $0x1,%rsi,%r15                           #! PC = 0x401c7b *)
(* cshl r15 dontcare r15 rsi 0x1; *)
(* and    0x405070,%rsi                            #! PC = 0x401c80 *)
(* split dontcare rsi rsi 63; *)
join t r15 rsi;
split t1 t2 t 63;
vpc rsi@uint64 t2;
vpc r15@uint64 t1;
(* imul   $0x13,%r15,%r15                          #! PC = 0x401c88 *)
mul r15 r15 0x13@uint64;
(* add    %r15,%rbx                                #! PC = 0x401c8c *)
adds carry rbx r15 rbx;
nondet overflow@uint1;
(* adc    $0x0,%rbp                                #! PC = 0x401c8f *)
adcs carry rbp 0x0@uint64 rbp carry;
nondet overflow@uint1;
(* adc    $0x0,%rax                                #! PC = 0x401c93 *)
adcs carry rax 0x0@uint64 rax carry;
nondet overflow@uint1;
(* adc    $0x0,%rsi                                #! PC = 0x401c97 *)
adc rsi 0x0@uint64 rsi carry;
nondet overflow@uint1;
(* cmp    $0x0,%rdi                                #! PC = 0x401c9b *)
(* cmp    $0x0,%%rdi                                #! 0x401c9b = 0x401c9b; *)
nondet carry@uint1;
nondet overflow@uint1;
(* #jne    0x401b3d <.START>                       #! PC = 0x401c9f *)
#jne    0x401b3d <.START>                       #! 0x401c9f = 0x401c9f;
(* pop    %rdi                                     #! EA = L0x7fffffffde80; Value = 0x00007fffffffdec0; PC = 0x401ca5 *)
(* pop    %%rdi *)
(* mov    %rbx,(%rdi)                              #! EA = L0x7fffffffdec0; PC = 0x401ca6 *)
mov L0x7fffffffdec0 rbx;
(* mov    %rbp,0x8(%rdi)                           #! EA = L0x7fffffffdec8; PC = 0x401ca9 *)
mov L0x7fffffffdec8 rbp;
(* mov    %rax,0x10(%rdi)                          #! EA = L0x7fffffffded0; PC = 0x401cad *)
mov L0x7fffffffded0 rax;
(* mov    %rsi,0x18(%rdi)                          #! EA = L0x7fffffffded8; PC = 0x401cb1 *)
mov L0x7fffffffded8 rsi;
(* pop    %r15                                     #! EA = L0x7fffffffde88; Value = 0x00007fffffffe050; PC = 0x401cb5 *)
(* pop    %%r15 *)
(* pop    %r14                                     #! EA = L0x7fffffffde90; Value = 0x00007fffffffe070; PC = 0x401cb7 *)
(* pop    %%r14 *)
(* pop    %r13                                     #! EA = L0x7fffffffde98; Value = 0x00000000004050a0; PC = 0x401cb9 *)
(* pop    %%r13 *)
(* pop    %r12                                     #! EA = L0x7fffffffdea0; Value = 0x00007fffffffe050; PC = 0x401cbb *)
(* pop    %%r12 *)
(* pop    %rbx                                     #! EA = L0x7fffffffdea8; Value = 0x00007fffffffdee0; PC = 0x401cbd *)
(* pop    %%rbx *)
(* pop    %rbp                                     #! EA = L0x7fffffffdeb0; Value = 0x00007fffffffdec0; PC = 0x401cbe *)
(* pop    %%rbp *)
(* #! <- SP = 0x7fffffffdeb8 *)
#! 0x7fffffffdeb8 = 0x7fffffffdeb8;
(* #retq                                           #! PC = 0x401cbf *)
#retq                                           #! 0x401cbf = 0x401cbf;

#        /* 4  */ gfp25519sqr(&t,&z2);


(* lea    0x40(%rsp),%r13                          #! PC = 0x401d93 *)
adds dontcare r13 rsp 0x40@uint64;
(* mov    $0x1,%edx                                #! PC = 0x401d98 *)
mov rdx 0x1@uint64;
(* mov    %rbp,%rsi                                #! PC = 0x401d9d *)
mov rsi rbp;
(* mov    %rbp,%rdi                                #! PC = 0x401da0 *)
mov rdi rbp;
(* #callq  0x401b20 <gfp25519nsqr>                 #! PC = 0x401da3 *)
#callq  0x401b20 <gfp25519nsqr>                 #! 0x401da3 = 0x401da3;
(* #! -> SP = 0x7fffffffdeb8 *)
#! 0x7fffffffdeb8 = 0x7fffffffdeb8;
(* push   %rbp                                     #! EA = L0x7fffffffdeb0; PC = 0x401b20 *)
(* push   %%rbp *)
(* push   %rbx                                     #! EA = L0x7fffffffdea8; PC = 0x401b21 *)
(* push   %%rbx *)
(* push   %r12                                     #! EA = L0x7fffffffdea0; PC = 0x401b22 *)
(* push   %%r12 *)
(* push   %r13                                     #! EA = L0x7fffffffde98; PC = 0x401b24 *)
(* push   %%r13 *)
(* push   %r14                                     #! EA = L0x7fffffffde90; PC = 0x401b26 *)
(* push   %%r14 *)
(* push   %r15                                     #! EA = L0x7fffffffde88; PC = 0x401b28 *)
(* push   %%r15 *)
(* push   %rdi                                     #! EA = L0x7fffffffde80; PC = 0x401b2a *)
(* push   %%rdi *)
(* mov    (%rsi),%rbx                              #! EA = L0x7fffffffdec0; Value = 0xffffffffffffffee; PC = 0x401b2b *)
mov rbx L0x7fffffffdec0;
(* mov    0x8(%rsi),%rbp                           #! EA = L0x7fffffffdec8; Value = 0xffffffffffffffff; PC = 0x401b2e *)
mov rbp L0x7fffffffdec8;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffded0; Value = 0xffffffffffffffff; PC = 0x401b32 *)
mov rax L0x7fffffffded0;
(* mov    0x18(%rsi),%rsi                          #! EA = L0x7fffffffded8; Value = 0x7fffffffffffffff; PC = 0x401b36 *)
mov rsi L0x7fffffffded8;
(* mov    %rdx,%rdi                                #! PC = 0x401b3a *)
mov rdi rdx;
(* dec    %rdi                                     #! PC = 0x401b3d *)
(* dec    %%rdi *)
(* xor    %r13,%r13                                #! PC = 0x401b40 *)
mov r13 0@uint64;
mov carry 0@uint1;
mov overflow 0@uint1;
(* mov    %rbx,%rdx                                #! PC = 0x401b43 *)
mov rdx rbx;
(* mulx   %rbp,%r9,%r10                            #! PC = 0x401b46 *)
umull r10 r9 rbp rdx;
(* mulx   %rax,%rcx,%r11                           #! PC = 0x401b4b *)
umull r11 rcx rax rdx;
(* adcx   %rcx,%r10                                #! PC = 0x401b50 *)
adcs carry r10 r10 rcx carry;
(* mulx   %rsi,%rcx,%r12                           #! PC = 0x401b56 *)
umull r12 rcx rsi rdx;
(* adcx   %rcx,%r11                                #! PC = 0x401b5b *)
adcs carry r11 r11 rcx carry;
(* adcx   %r13,%r12                                #! PC = 0x401b61 *)
adc r12 r12 r13 carry;
(* mov    %rbp,%rdx                                #! PC = 0x401b67 *)
mov rdx rbp;
(* xor    %r14,%r14                                #! PC = 0x401b6a *)
mov r14 0@uint64;
mov carry 0@uint1;
mov overflow 0@uint1;
(* mulx   %rax,%rcx,%rdx                           #! PC = 0x401b6d *)
umull rdx rcx rax rdx;
(* adcx   %rcx,%r11                                #! PC = 0x401b72 *)
adcs carry r11 r11 rcx carry;
(* adox   %rdx,%r12                                #! PC = 0x401b78 *)
adcs overflow r12 r12 rdx overflow;
(* mov    %rbp,%rdx                                #! PC = 0x401b7e *)
mov rdx rbp;
(* mulx   %rsi,%rcx,%rdx                           #! PC = 0x401b81 *)
umull rdx rcx rsi rdx;
(* adcx   %rcx,%r12                                #! PC = 0x401b86 *)
adcs carry r12 r12 rcx carry;
(* adox   %rdx,%r13                                #! PC = 0x401b8c *)
adc r13 r13 rdx overflow;
(* adcx   %r14,%r13                                #! PC = 0x401b92 *)
adc r13 r13 r14 carry;
(* xor    %r15,%r15                                #! PC = 0x401b98 *)
mov r15 0@uint64;
mov carry 0@uint1;
mov overflow 0@uint1;
(* mov    %rax,%rdx                                #! PC = 0x401b9b *)
mov rdx rax;
(* mulx   %rsi,%rcx,%r14                           #! PC = 0x401b9e *)
umull r14 rcx rsi rdx;
(* adcx   %rcx,%r13                                #! PC = 0x401ba3 *)
adcs carry r13 r13 rcx carry;
(* adcx   %r15,%r14                                #! PC = 0x401ba9 *)
adc r14 r14 r15 carry;
(* shld   $0x1,%r14,%r15                           #! PC = 0x401baf *)
(* cshl r15 dontcare r15 r14 0x1; *)
(* shld   $0x1,%r13,%r14                           #! PC = 0x401bb4 *)
(* cshl r14 dontcare r14 r13 0x1; *)
(* shld   $0x1,%r12,%r13                           #! PC = 0x401bb9 *)
(* cshl r13 dontcare r13 r12 0x1; *)
(* shld   $0x1,%r11,%r12                           #! PC = 0x401bbe *)
(* cshl r12 dontcare r12 r11 0x1; *)
(* shld   $0x1,%r10,%r11                           #! PC = 0x401bc3 *)
(* cshl r11 dontcare r11 r10 0x1; *)
(* shld   $0x1,%r9,%r10                            #! PC = 0x401bc8 *)
(* cshl r10 dontcare r10 r9 0x1; *)
(* shl    %r9                                      #! PC = 0x401bcd *)
(* shl    %%r9                                      #! 0x401bcd = 0x401bcd; *)



adds carry r9 r9 r9;
adcs carry r10 r10 r10 carry;
adcs carry r11 r11 r11 carry;
adcs carry r12 r12 r12 carry;
adcs carry r13 r13 r13 carry;
adcs carry r14 r14 r14 carry;
adc r15 r15 r15 carry;

(* xor    %rdx,%rdx                                #! PC = 0x401bd0 *)
mov rdx 0@uint64;
mov carry 0@uint1;
mov overflow 0@uint1;
(* mov    %rbx,%rdx                                #! PC = 0x401bd3 *)
mov rdx rbx;
(* mulx   %rdx,%r8,%rdx                            #! PC = 0x401bd6 *)
umull rdx r8 rdx rdx;
(* adcx   %rdx,%r9                                 #! PC = 0x401bdb *)
adcs carry r9 r9 rdx carry;
(* mov    %rbp,%rdx                                #! PC = 0x401be1 *)
mov rdx rbp;
(* mulx   %rdx,%rcx,%rdx                           #! PC = 0x401be4 *)
umull rdx rcx rdx rdx;
(* adcx   %rcx,%r10                                #! PC = 0x401be9 *)
adcs carry r10 r10 rcx carry;
(* adcx   %rdx,%r11                                #! PC = 0x401bef *)
adcs carry r11 r11 rdx carry;
(* mov    %rax,%rdx                                #! PC = 0x401bf5 *)
mov rdx rax;
(* mulx   %rdx,%rcx,%rdx                           #! PC = 0x401bf8 *)
umull rdx rcx rdx rdx;
(* adcx   %rcx,%r12                                #! PC = 0x401bfd *)
adcs carry r12 r12 rcx carry;
(* adcx   %rdx,%r13                                #! PC = 0x401c03 *)
adcs carry r13 r13 rdx carry;
(* mov    %rsi,%rdx                                #! PC = 0x401c09 *)
mov rdx rsi;
(* mulx   %rdx,%rcx,%rdx                           #! PC = 0x401c0c *)
umull rdx rcx rdx rdx;
(* adcx   %rcx,%r14                                #! PC = 0x401c11 *)
adcs carry r14 r14 rcx carry;
(* adcx   %rdx,%r15                                #! PC = 0x401c17 *)
adc r15 r15 rdx carry;
(* xor    %rbp,%rbp                                #! PC = 0x401c1d *)
mov rbp 0@uint64;
mov carry 0@uint1;
mov overflow 0@uint1;
(* mov    $0x26,%rdx                               #! PC = 0x401c20 *)
mov rdx 0x26@uint64;
(* mulx   %r12,%rbx,%rbp                           #! PC = 0x401c27 *)
umull rbp rbx r12 rdx;
(* adcx   %r8,%rbx                                 #! PC = 0x401c2c *)
adcs carry rbx rbx r8 carry;
(* adox   %r9,%rbp                                 #! PC = 0x401c32 *)
adcs overflow rbp rbp r9 overflow;
(* mulx   %r13,%rcx,%rax                           #! PC = 0x401c38 *)
umull rax rcx r13 rdx;
(* adcx   %rcx,%rbp                                #! PC = 0x401c3d *)
adcs carry rbp rbp rcx carry;
(* adox   %r10,%rax                                #! PC = 0x401c43 *)
adcs overflow rax rax r10 overflow;
(* mulx   %r14,%rcx,%rsi                           #! PC = 0x401c49 *)
umull rsi rcx r14 rdx;
(* adcx   %rcx,%rax                                #! PC = 0x401c4e *)
adcs carry rax rax rcx carry;
(* adox   %r11,%rsi                                #! PC = 0x401c54 *)
adcs overflow rsi rsi r11 overflow;
(* mulx   %r15,%rcx,%r15                           #! PC = 0x401c5a *)
umull r15 rcx r15 rdx;
(* adcx   %rcx,%rsi                                #! PC = 0x401c5f *)
adcs carry rsi rsi rcx carry;
(* adox   0x405068,%r15                            #! PC = 0x401c65 *)
adc r15 0@uint64 r15 overflow;
(* adcx   0x405068,%r15                            #! PC = 0x401c70 *)
adc r15 0@uint64 r15 carry;
(* shld   $0x1,%rsi,%r15                           #! PC = 0x401c7b *)
(* cshl r15 dontcare r15 rsi 0x1; *)
(* and    0x405070,%rsi                            #! PC = 0x401c80 *)
(* split dontcare rsi rsi 63; *)
join t r15 rsi;
split t1 t2 t 63;
vpc rsi@uint64 t2;
vpc r15@uint64 t1;
(* imul   $0x13,%r15,%r15                          #! PC = 0x401c88 *)
mul r15 r15 0x13@uint64;
(* add    %r15,%rbx                                #! PC = 0x401c8c *)
adds carry rbx r15 rbx;
nondet overflow@uint1;
(* adc    $0x0,%rbp                                #! PC = 0x401c8f *)
adcs carry rbp 0x0@uint64 rbp carry;
nondet overflow@uint1;
(* adc    $0x0,%rax                                #! PC = 0x401c93 *)
adcs carry rax 0x0@uint64 rax carry;
nondet overflow@uint1;
(* adc    $0x0,%rsi                                #! PC = 0x401c97 *)
adc rsi 0x0@uint64 rsi carry;
nondet overflow@uint1;
(* cmp    $0x0,%rdi                                #! PC = 0x401c9b *)
(* cmp    $0x0,%%rdi                                #! 0x401c9b = 0x401c9b; *)
nondet carry@uint1;
nondet overflow@uint1;
(* #jne    0x401b3d <.START>                       #! PC = 0x401c9f *)
#jne    0x401b3d <.START>                       #! 0x401c9f = 0x401c9f;
(* pop    %rdi                                     #! EA = L0x7fffffffde80; Value = 0x00007fffffffdec0; PC = 0x401ca5 *)
(* pop    %%rdi *)
(* mov    %rbx,(%rdi)                              #! EA = L0x7fffffffdec0; PC = 0x401ca6 *)
mov L0x7fffffffdec0 rbx;
(* mov    %rbp,0x8(%rdi)                           #! EA = L0x7fffffffdec8; PC = 0x401ca9 *)
mov L0x7fffffffdec8 rbp;
(* mov    %rax,0x10(%rdi)                          #! EA = L0x7fffffffded0; PC = 0x401cad *)
mov L0x7fffffffded0 rax;
(* mov    %rsi,0x18(%rdi)                          #! EA = L0x7fffffffded8; PC = 0x401cb1 *)
mov L0x7fffffffded8 rsi;
(* pop    %r15                                     #! EA = L0x7fffffffde88; Value = 0x00007fffffffe050; PC = 0x401cb5 *)
(* pop    %%r15 *)
(* pop    %r14                                     #! EA = L0x7fffffffde90; Value = 0x00007fffffffe070; PC = 0x401cb7 *)
(* pop    %%r14 *)
(* pop    %r13                                     #! EA = L0x7fffffffde98; Value = 0x00007fffffffdf00; PC = 0x401cb9 *)
(* pop    %%r13 *)
(* pop    %r12                                     #! EA = L0x7fffffffdea0; Value = 0x00007fffffffe050; PC = 0x401cbb *)
(* pop    %%r12 *)
(* pop    %rbx                                     #! EA = L0x7fffffffdea8; Value = 0x00007fffffffdee0; PC = 0x401cbd *)
(* pop    %%rbx *)
(* pop    %rbp                                     #! EA = L0x7fffffffdeb0; Value = 0x00007fffffffdec0; PC = 0x401cbe *)
(* pop    %%rbp *)
(* #! <- SP = 0x7fffffffdeb8 *)
#! 0x7fffffffdeb8 = 0x7fffffffdeb8;
(* #retq                                           #! PC = 0x401cbf *)
#retq                                           #! 0x401cbf = 0x401cbf;


mov t_0 L0x7fffffffdec0;
mov t_1 L0x7fffffffdec8;
mov t_2 L0x7fffffffded0;
mov t_3 L0x7fffffffded8;

(* lea    0x60(%rsp),%r15                          #! PC = 0x401da8 *)
adds dontcare r15 rsp 0x60@uint64;
(* mov    %r12,%rdx                                #! PC = 0x401dad *)
mov rdx r12;
(* mov    %r13,%rdi                                #! PC = 0x401db0 *)
mov rdi r13;
(* mov    %rbp,%rsi                                #! PC = 0x401db3 *)
mov rsi rbp;
(* #callq  0x401900 <gfp25519mul>                  #! PC = 0x401db6 *)
#callq  0x401900 <gfp25519mul>                  #! 0x401db6 = 0x401db6;
(* #! -> SP = 0x7fffffffdeb8 *)
#! 0x7fffffffdeb8 = 0x7fffffffdeb8;
(* push   %rbp                                     #! EA = L0x7fffffffdeb0; PC = 0x401900 *)
(* push   %%rbp *)
(* push   %rbx                                     #! EA = L0x7fffffffdea8; PC = 0x401901 *)
(* push   %%rbx *)
(* push   %r12                                     #! EA = L0x7fffffffdea0; PC = 0x401902 *)
(* push   %%r12 *)
(* push   %r13                                     #! EA = L0x7fffffffde98; PC = 0x401904 *)
(* push   %%r13 *)
(* push   %r14                                     #! EA = L0x7fffffffde90; PC = 0x401906 *)
(* push   %%r14 *)
(* push   %r15                                     #! EA = L0x7fffffffde88; PC = 0x401908 *)
(* push   %%r15 *)
(* mov    %rdx,%rbx                                #! PC = 0x40190a *)
mov rbx rdx;
(* xor    %r13,%r13                                #! PC = 0x40190d *)
mov r13 0@uint64;
mov carry 0@uint1;
mov overflow 0@uint1;
(* mov    (%rbx),%rdx                              #! EA = L0x7fffffffe050; Value = 0xffffffffffffffec; PC = 0x401910 *)
mov rdx L0x7fffffffe050;
(* mulx   (%rsi),%r8,%r9                           #! EA = L0x7fffffffdec0; Value = 0xffffffffffffffee; PC = 0x401913 *)
umull r9 r8 L0x7fffffffdec0 rdx;
(* mulx   0x8(%rsi),%rcx,%r10                      #! EA = L0x7fffffffdec8; Value = 0xffffffffffffffff; PC = 0x401918 *)
umull r10 rcx L0x7fffffffdec8 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x40191e *)
adcs carry r9 r9 rcx carry;
(* mulx   0x10(%rsi),%rcx,%r11                     #! EA = L0x7fffffffded0; Value = 0xffffffffffffffff; PC = 0x401924 *)
umull r11 rcx L0x7fffffffded0 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x40192a *)
adcs carry r10 r10 rcx carry;
(* mulx   0x18(%rsi),%rcx,%r12                     #! EA = L0x7fffffffded8; Value = 0x7fffffffffffffff; PC = 0x401930 *)
umull r12 rcx L0x7fffffffded8 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x401936 *)
adcs carry r11 r11 rcx carry;
(* adcx   %r13,%r12                                #! PC = 0x40193c *)
adc r12 r12 r13 carry;
(* xor    %r14,%r14                                #! PC = 0x401942 *)
mov r14 0@uint64;
mov carry 0@uint1;
mov overflow 0@uint1;
(* mov    0x8(%rbx),%rdx                           #! EA = L0x7fffffffe058; Value = 0xffffffffffffffff; PC = 0x401945 *)
mov rdx L0x7fffffffe058;
(* mulx   (%rsi),%rcx,%rbp                         #! EA = L0x7fffffffdec0; Value = 0xffffffffffffffee; PC = 0x401949 *)
umull rbp rcx L0x7fffffffdec0 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x40194e *)
adcs carry r9 r9 rcx carry;
(* adox   %rbp,%r10                                #! PC = 0x401954 *)
adcs overflow r10 r10 rbp overflow;
(* mulx   0x8(%rsi),%rcx,%rbp                      #! EA = L0x7fffffffdec8; Value = 0xffffffffffffffff; PC = 0x40195a *)
umull rbp rcx L0x7fffffffdec8 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x401960 *)
adcs carry r10 r10 rcx carry;
(* adox   %rbp,%r11                                #! PC = 0x401966 *)
adcs overflow r11 r11 rbp overflow;
(* mulx   0x10(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffded0; Value = 0xffffffffffffffff; PC = 0x40196c *)
umull rbp rcx L0x7fffffffded0 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x401972 *)
adcs carry r11 r11 rcx carry;
(* adox   %rbp,%r12                                #! PC = 0x401978 *)
adcs overflow r12 r12 rbp overflow;
(* mulx   0x18(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffded8; Value = 0x7fffffffffffffff; PC = 0x40197e *)
umull rbp rcx L0x7fffffffded8 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x401984 *)
adcs carry r12 r12 rcx carry;
(* adox   %rbp,%r13                                #! PC = 0x40198a *)
adc r13 r13 rbp overflow;
(* adcx   %r14,%r13                                #! PC = 0x401990 *)
adc r13 r13 r14 carry;
(* xor    %r15,%r15                                #! PC = 0x401996 *)
mov r15 0@uint64;
mov carry 0@uint1;
mov overflow 0@uint1;
(* mov    0x10(%rbx),%rdx                          #! EA = L0x7fffffffe060; Value = 0xffffffffffffffff; PC = 0x401999 *)
mov rdx L0x7fffffffe060;
(* mulx   (%rsi),%rcx,%rbp                         #! EA = L0x7fffffffdec0; Value = 0xffffffffffffffee; PC = 0x40199d *)
umull rbp rcx L0x7fffffffdec0 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x4019a2 *)
adcs carry r10 r10 rcx carry;
(* adox   %rbp,%r11                                #! PC = 0x4019a8 *)
adcs overflow r11 r11 rbp overflow;
(* mulx   0x8(%rsi),%rcx,%rbp                      #! EA = L0x7fffffffdec8; Value = 0xffffffffffffffff; PC = 0x4019ae *)
umull rbp rcx L0x7fffffffdec8 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x4019b4 *)
adcs carry r11 r11 rcx carry;
(* adox   %rbp,%r12                                #! PC = 0x4019ba *)
adcs overflow r12 r12 rbp overflow;
(* mulx   0x10(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffded0; Value = 0xffffffffffffffff; PC = 0x4019c0 *)
umull rbp rcx L0x7fffffffded0 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x4019c6 *)
adcs carry r12 r12 rcx carry;
(* adox   %rbp,%r13                                #! PC = 0x4019cc *)
adcs overflow r13 r13 rbp overflow;
(* mulx   0x18(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffded8; Value = 0x7fffffffffffffff; PC = 0x4019d2 *)
umull rbp rcx L0x7fffffffded8 rdx;
(* adcx   %rcx,%r13                                #! PC = 0x4019d8 *)
adcs carry r13 r13 rcx carry;
(* adox   %rbp,%r14                                #! PC = 0x4019de *)
adc r14 r14 rbp overflow;
(* adcx   %r15,%r14                                #! PC = 0x4019e4 *)
adc r14 r14 r15 carry;
(* xor    %rax,%rax                                #! PC = 0x4019ea *)
mov rax 0@uint64;
mov carry 0@uint1;
mov overflow 0@uint1;
(* mov    0x18(%rbx),%rdx                          #! EA = L0x7fffffffe068; Value = 0x7fffffffffffffff; PC = 0x4019ed *)
mov rdx L0x7fffffffe068;
(* mulx   (%rsi),%rcx,%rbp                         #! EA = L0x7fffffffdec0; Value = 0xffffffffffffffee; PC = 0x4019f1 *)
umull rbp rcx L0x7fffffffdec0 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x4019f6 *)
adcs carry r11 r11 rcx carry;
(* adox   %rbp,%r12                                #! PC = 0x4019fc *)
adcs overflow r12 r12 rbp overflow;
(* mulx   0x8(%rsi),%rcx,%rbp                      #! EA = L0x7fffffffdec8; Value = 0xffffffffffffffff; PC = 0x401a02 *)
umull rbp rcx L0x7fffffffdec8 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x401a08 *)
adcs carry r12 r12 rcx carry;
(* adox   %rbp,%r13                                #! PC = 0x401a0e *)
adcs overflow r13 r13 rbp overflow;
(* mulx   0x10(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffded0; Value = 0xffffffffffffffff; PC = 0x401a14 *)
umull rbp rcx L0x7fffffffded0 rdx;
(* adcx   %rcx,%r13                                #! PC = 0x401a1a *)
adcs carry r13 r13 rcx carry;
(* adox   %rbp,%r14                                #! PC = 0x401a20 *)
adcs overflow r14 r14 rbp overflow;
(* mulx   0x18(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffded8; Value = 0x7fffffffffffffff; PC = 0x401a26 *)
umull rbp rcx L0x7fffffffded8 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x401a2c *)
adcs carry r14 r14 rcx carry;
(* adox   %rbp,%r15                                #! PC = 0x401a32 *)
adc r15 r15 rbp overflow;
(* adcx   %rax,%r15                                #! PC = 0x401a38 *)
adc r15 r15 rax carry;
(* xor    %rbp,%rbp                                #! PC = 0x401a3e *)
mov rbp 0@uint64;
mov carry 0@uint1;
mov overflow 0@uint1;
(* mov    $0x26,%rdx                               #! PC = 0x401a41 *)
mov rdx 0x26@uint64;
(* mulx   %r12,%rax,%r12                           #! PC = 0x401a48 *)
umull r12 rax r12 rdx;
(* adcx   %rax,%r8                                 #! PC = 0x401a4d *)
adcs carry r8 r8 rax carry;
(* adox   %r12,%r9                                 #! PC = 0x401a53 *)
adcs overflow r9 r9 r12 overflow;
(* mulx   %r13,%rcx,%r13                           #! PC = 0x401a59 *)
umull r13 rcx r13 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x401a5e *)
adcs carry r9 r9 rcx carry;
(* adox   %r13,%r10                                #! PC = 0x401a64 *)
adcs overflow r10 r10 r13 overflow;
(* mulx   %r14,%rcx,%r14                           #! PC = 0x401a6a *)
umull r14 rcx r14 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x401a6f *)
adcs carry r10 r10 rcx carry;
(* adox   %r14,%r11                                #! PC = 0x401a75 *)
adcs overflow r11 r11 r14 overflow;
(* mulx   %r15,%rcx,%r15                           #! PC = 0x401a7b *)
umull r15 rcx r15 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x401a80 *)
adcs carry r11 r11 rcx carry;
(* adox   0x405068,%r15                            #! PC = 0x401a86 *)
adc r15 0@uint64 r15 overflow;
(* adcx   0x405068,%r15                            #! PC = 0x401a91 *)
adc r15 0@uint64 r15 carry;
(* shld   $0x1,%r11,%r15                           #! PC = 0x401a9c *)
(* cshl r15 dontcare r15 r11 0x1; *)
(* and    0x405070,%r11                            #! PC = 0x401aa1 *)
(* split dontcare r11 r11 63; *)
join t r15 r11;
split t1 t2 t 63;
vpc r11@uint64 t2;
vpc r15@uint64 t1;
(* imul   $0x13,%r15,%r15                          #! PC = 0x401aa9 *)
mul r15 r15 0x13@uint64;
(* add    %r15,%r8                                 #! PC = 0x401aad *)
adds carry r8 r15 r8;
nondet overflow@uint1;
(* adc    $0x0,%r9                                 #! PC = 0x401ab0 *)
adcs carry r9 0x0@uint64 r9 carry;
nondet overflow@uint1;
(* adc    $0x0,%r10                                #! PC = 0x401ab4 *)
adcs carry r10 0x0@uint64 r10 carry;
nondet overflow@uint1;
(* adc    $0x0,%r11                                #! PC = 0x401ab8 *)
adc r11 0x0@uint64 r11 carry;
nondet overflow@uint1;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdf00; PC = 0x401abc *)
mov L0x7fffffffdf00 r8;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffdf08; PC = 0x401abf *)
mov L0x7fffffffdf08 r9;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffdf10; PC = 0x401ac3 *)
mov L0x7fffffffdf10 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffdf18; PC = 0x401ac7 *)
mov L0x7fffffffdf18 r11;
(* pop    %r15                                     #! EA = L0x7fffffffde88; Value = 0x00007fffffffdf20; PC = 0x401acb *)
(* pop    %%r15 *)
(* pop    %r14                                     #! EA = L0x7fffffffde90; Value = 0x00007fffffffe070; PC = 0x401acd *)
(* pop    %%r14 *)
(* pop    %r13                                     #! EA = L0x7fffffffde98; Value = 0x00007fffffffdf00; PC = 0x401acf *)
(* pop    %%r13 *)
(* pop    %r12                                     #! EA = L0x7fffffffdea0; Value = 0x00007fffffffe050; PC = 0x401ad1 *)
(* pop    %%r12 *)
(* pop    %rbx                                     #! EA = L0x7fffffffdea8; Value = 0x00007fffffffdee0; PC = 0x401ad3 *)
(* pop    %%rbx *)
(* pop    %rbp                                     #! EA = L0x7fffffffdeb0; Value = 0x00007fffffffdec0; PC = 0x401ad4 *)
(* pop    %%rbp *)
(* #! <- SP = 0x7fffffffdeb8 *)
#! 0x7fffffffdeb8 = 0x7fffffffdeb8;
(* #retq                                           #! PC = 0x401ad5 *)
#retq                                           #! 0x401ad5 = 0x401ad5;

#  /* 9  */ gfp25519mul(&z9,&t,e);
mov z9_0 L0x7fffffffdf00;
mov z9_1 L0x7fffffffdf08;
mov z9_2 L0x7fffffffdf10;
mov z9_3 L0x7fffffffdf18;

cut
    and [
    	eqmod
      (X ** 9)
      (limbs 64 [vars z9|0..3]) 
      (((2**255 )- 19)),
       	eqmod
      (X ** 2)
      (limbs 64 [vars z2|0..3]) 
      (((2**255 )- 19))
    ] && true;


mov L0x7fffffffdee0 z2_0;
mov L0x7fffffffdee8 z2_1;
mov L0x7fffffffdef0 z2_2;
mov L0x7fffffffdef8 z2_3;

mov L0x7fffffffdf00 z9_0;
mov L0x7fffffffdf08 z9_1;
mov L0x7fffffffdf10 z9_2;
mov L0x7fffffffdf18 z9_3;

(* mov    %rbx,%rdx                                #! PC = 0x401dbb *)
mov rdx rbx;
(* mov    %r13,%rsi                                #! PC = 0x401dbe *)
mov rsi r13;
(* mov    %r15,%rdi                                #! PC = 0x401dc1 *)
mov rdi r15;
(* #callq  0x401900 <gfp25519mul>                  #! PC = 0x401dc4 *)
#callq  0x401900 <gfp25519mul>                  #! 0x401dc4 = 0x401dc4;
(* #! -> SP = 0x7fffffffdeb8 *)
#! 0x7fffffffdeb8 = 0x7fffffffdeb8;
(* push   %rbp                                     #! EA = L0x7fffffffdeb0; PC = 0x401900 *)
(* push   %%rbp *)
(* push   %rbx                                     #! EA = L0x7fffffffdea8; PC = 0x401901 *)
(* push   %%rbx *)
(* push   %r12                                     #! EA = L0x7fffffffdea0; PC = 0x401902 *)
(* push   %%r12 *)
(* push   %r13                                     #! EA = L0x7fffffffde98; PC = 0x401904 *)
(* push   %%r13 *)
(* push   %r14                                     #! EA = L0x7fffffffde90; PC = 0x401906 *)
(* push   %%r14 *)
(* push   %r15                                     #! EA = L0x7fffffffde88; PC = 0x401908 *)
(* push   %%r15 *)
(* mov    %rdx,%rbx                                #! PC = 0x40190a *)
mov rbx rdx;
(* xor    %r13,%r13                                #! PC = 0x40190d *)
mov r13 0@uint64;
mov carry 0@uint1;
mov overflow 0@uint1;
(* mov    (%rbx),%rdx                              #! EA = L0x7fffffffdee0; Value = 0xffffffffffffffee; PC = 0x401910 *)
mov rdx L0x7fffffffdee0;
(* mulx   (%rsi),%r8,%r9                           #! EA = L0x7fffffffdf00; Value = 0xffffffffffffffec; PC = 0x401913 *)
umull r9 r8 L0x7fffffffdf00 rdx;
(* mulx   0x8(%rsi),%rcx,%r10                      #! EA = L0x7fffffffdf08; Value = 0xffffffffffffffff; PC = 0x401918 *)
umull r10 rcx L0x7fffffffdf08 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x40191e *)
adcs carry r9 r9 rcx carry;
(* mulx   0x10(%rsi),%rcx,%r11                     #! EA = L0x7fffffffdf10; Value = 0xffffffffffffffff; PC = 0x401924 *)
umull r11 rcx L0x7fffffffdf10 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x40192a *)
adcs carry r10 r10 rcx carry;
(* mulx   0x18(%rsi),%rcx,%r12                     #! EA = L0x7fffffffdf18; Value = 0x7fffffffffffffff; PC = 0x401930 *)
umull r12 rcx L0x7fffffffdf18 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x401936 *)
adcs carry r11 r11 rcx carry;
(* adcx   %r13,%r12                                #! PC = 0x40193c *)
adc r12 r12 r13 carry;
(* xor    %r14,%r14                                #! PC = 0x401942 *)
mov r14 0@uint64;
mov carry 0@uint1;
mov overflow 0@uint1;
(* mov    0x8(%rbx),%rdx                           #! EA = L0x7fffffffdee8; Value = 0xffffffffffffffff; PC = 0x401945 *)
mov rdx L0x7fffffffdee8;
(* mulx   (%rsi),%rcx,%rbp                         #! EA = L0x7fffffffdf00; Value = 0xffffffffffffffec; PC = 0x401949 *)
umull rbp rcx L0x7fffffffdf00 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x40194e *)
adcs carry r9 r9 rcx carry;
(* adox   %rbp,%r10                                #! PC = 0x401954 *)
adcs overflow r10 r10 rbp overflow;
(* mulx   0x8(%rsi),%rcx,%rbp                      #! EA = L0x7fffffffdf08; Value = 0xffffffffffffffff; PC = 0x40195a *)
umull rbp rcx L0x7fffffffdf08 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x401960 *)
adcs carry r10 r10 rcx carry;
(* adox   %rbp,%r11                                #! PC = 0x401966 *)
adcs overflow r11 r11 rbp overflow;
(* mulx   0x10(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffdf10; Value = 0xffffffffffffffff; PC = 0x40196c *)
umull rbp rcx L0x7fffffffdf10 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x401972 *)
adcs carry r11 r11 rcx carry;
(* adox   %rbp,%r12                                #! PC = 0x401978 *)
adcs overflow r12 r12 rbp overflow;
(* mulx   0x18(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffdf18; Value = 0x7fffffffffffffff; PC = 0x40197e *)
umull rbp rcx L0x7fffffffdf18 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x401984 *)
adcs carry r12 r12 rcx carry;
(* adox   %rbp,%r13                                #! PC = 0x40198a *)
adc r13 r13 rbp overflow;
(* adcx   %r14,%r13                                #! PC = 0x401990 *)
adc r13 r13 r14 carry;
(* xor    %r15,%r15                                #! PC = 0x401996 *)
mov r15 0@uint64;
mov carry 0@uint1;
mov overflow 0@uint1;
(* mov    0x10(%rbx),%rdx                          #! EA = L0x7fffffffdef0; Value = 0xffffffffffffffff; PC = 0x401999 *)
mov rdx L0x7fffffffdef0;
(* mulx   (%rsi),%rcx,%rbp                         #! EA = L0x7fffffffdf00; Value = 0xffffffffffffffec; PC = 0x40199d *)
umull rbp rcx L0x7fffffffdf00 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x4019a2 *)
adcs carry r10 r10 rcx carry;
(* adox   %rbp,%r11                                #! PC = 0x4019a8 *)
adcs overflow r11 r11 rbp overflow;
(* mulx   0x8(%rsi),%rcx,%rbp                      #! EA = L0x7fffffffdf08; Value = 0xffffffffffffffff; PC = 0x4019ae *)
umull rbp rcx L0x7fffffffdf08 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x4019b4 *)
adcs carry r11 r11 rcx carry;
(* adox   %rbp,%r12                                #! PC = 0x4019ba *)
adcs overflow r12 r12 rbp overflow;
(* mulx   0x10(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffdf10; Value = 0xffffffffffffffff; PC = 0x4019c0 *)
umull rbp rcx L0x7fffffffdf10 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x4019c6 *)
adcs carry r12 r12 rcx carry;
(* adox   %rbp,%r13                                #! PC = 0x4019cc *)
adcs overflow r13 r13 rbp overflow;
(* mulx   0x18(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffdf18; Value = 0x7fffffffffffffff; PC = 0x4019d2 *)
umull rbp rcx L0x7fffffffdf18 rdx;
(* adcx   %rcx,%r13                                #! PC = 0x4019d8 *)
adcs carry r13 r13 rcx carry;
(* adox   %rbp,%r14                                #! PC = 0x4019de *)
adc r14 r14 rbp overflow;
(* adcx   %r15,%r14                                #! PC = 0x4019e4 *)
adc r14 r14 r15 carry;
(* xor    %rax,%rax                                #! PC = 0x4019ea *)
mov rax 0@uint64;
mov carry 0@uint1;
mov overflow 0@uint1;
(* mov    0x18(%rbx),%rdx                          #! EA = L0x7fffffffdef8; Value = 0x7fffffffffffffff; PC = 0x4019ed *)
mov rdx L0x7fffffffdef8;
(* mulx   (%rsi),%rcx,%rbp                         #! EA = L0x7fffffffdf00; Value = 0xffffffffffffffec; PC = 0x4019f1 *)
umull rbp rcx L0x7fffffffdf00 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x4019f6 *)
adcs carry r11 r11 rcx carry;
(* adox   %rbp,%r12                                #! PC = 0x4019fc *)
adcs overflow r12 r12 rbp overflow;
(* mulx   0x8(%rsi),%rcx,%rbp                      #! EA = L0x7fffffffdf08; Value = 0xffffffffffffffff; PC = 0x401a02 *)
umull rbp rcx L0x7fffffffdf08 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x401a08 *)
adcs carry r12 r12 rcx carry;
(* adox   %rbp,%r13                                #! PC = 0x401a0e *)
adcs overflow r13 r13 rbp overflow;
(* mulx   0x10(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffdf10; Value = 0xffffffffffffffff; PC = 0x401a14 *)
umull rbp rcx L0x7fffffffdf10 rdx;
(* adcx   %rcx,%r13                                #! PC = 0x401a1a *)
adcs carry r13 r13 rcx carry;
(* adox   %rbp,%r14                                #! PC = 0x401a20 *)
adcs overflow r14 r14 rbp overflow;
(* mulx   0x18(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffdf18; Value = 0x7fffffffffffffff; PC = 0x401a26 *)
umull rbp rcx L0x7fffffffdf18 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x401a2c *)
adcs carry r14 r14 rcx carry;
(* adox   %rbp,%r15                                #! PC = 0x401a32 *)
adc r15 r15 rbp overflow;
(* adcx   %rax,%r15                                #! PC = 0x401a38 *)
adc r15 r15 rax carry;
(* xor    %rbp,%rbp                                #! PC = 0x401a3e *)
mov rbp 0@uint64;
mov carry 0@uint1;
mov overflow 0@uint1;
(* mov    $0x26,%rdx                               #! PC = 0x401a41 *)
mov rdx 0x26@uint64;
(* mulx   %r12,%rax,%r12                           #! PC = 0x401a48 *)
umull r12 rax r12 rdx;
(* adcx   %rax,%r8                                 #! PC = 0x401a4d *)
adcs carry r8 r8 rax carry;
(* adox   %r12,%r9                                 #! PC = 0x401a53 *)
adcs overflow r9 r9 r12 overflow;
(* mulx   %r13,%rcx,%r13                           #! PC = 0x401a59 *)
umull r13 rcx r13 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x401a5e *)
adcs carry r9 r9 rcx carry;
(* adox   %r13,%r10                                #! PC = 0x401a64 *)
adcs overflow r10 r10 r13 overflow;
(* mulx   %r14,%rcx,%r14                           #! PC = 0x401a6a *)
umull r14 rcx r14 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x401a6f *)
adcs carry r10 r10 rcx carry;
(* adox   %r14,%r11                                #! PC = 0x401a75 *)
adcs overflow r11 r11 r14 overflow;
(* mulx   %r15,%rcx,%r15                           #! PC = 0x401a7b *)
umull r15 rcx r15 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x401a80 *)
adcs carry r11 r11 rcx carry;
(* adox   0x405068,%r15                            #! PC = 0x401a86 *)
adc r15 0@uint64 r15 overflow;
(* adcx   0x405068,%r15                            #! PC = 0x401a91 *)
adc r15 0@uint64 r15 carry;
(* shld   $0x1,%r11,%r15                           #! PC = 0x401a9c *)
(* cshl r15 dontcare r15 r11 0x1; *)
(* and    0x405070,%r11                            #! PC = 0x401aa1 *)
(* split dontcare r11 r11 63; *)
join t r15 r11;
split t1 t2 t 63;
vpc r11@uint64 t2;
vpc r15@uint64 t1;
(* imul   $0x13,%r15,%r15                          #! PC = 0x401aa9 *)
mul r15 r15 0x13@uint64;
(* add    %r15,%r8                                 #! PC = 0x401aad *)
adds carry r8 r15 r8;
nondet overflow@uint1;
(* adc    $0x0,%r9                                 #! PC = 0x401ab0 *)
adcs carry r9 0x0@uint64 r9 carry;
nondet overflow@uint1;
(* adc    $0x0,%r10                                #! PC = 0x401ab4 *)
adcs carry r10 0x0@uint64 r10 carry;
nondet overflow@uint1;
(* adc    $0x0,%r11                                #! PC = 0x401ab8 *)
adc r11 0x0@uint64 r11 carry;
nondet overflow@uint1;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdf20; PC = 0x401abc *)
mov L0x7fffffffdf20 r8;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffdf28; PC = 0x401abf *)
mov L0x7fffffffdf28 r9;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffdf30; PC = 0x401ac3 *)
mov L0x7fffffffdf30 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffdf38; PC = 0x401ac7 *)
mov L0x7fffffffdf38 r11;
(* pop    %r15                                     #! EA = L0x7fffffffde88; Value = 0x00007fffffffdf20; PC = 0x401acb *)
(* pop    %%r15 *)
(* pop    %r14                                     #! EA = L0x7fffffffde90; Value = 0x00007fffffffe070; PC = 0x401acd *)
(* pop    %%r14 *)
(* pop    %r13                                     #! EA = L0x7fffffffde98; Value = 0x00007fffffffdf00; PC = 0x401acf *)
(* pop    %%r13 *)
(* pop    %r12                                     #! EA = L0x7fffffffdea0; Value = 0x00007fffffffe050; PC = 0x401ad1 *)
(* pop    %%r12 *)
(* pop    %rbx                                     #! EA = L0x7fffffffdea8; Value = 0x00007fffffffdee0; PC = 0x401ad3 *)
(* pop    %%rbx *)
(* pop    %rbp                                     #! EA = L0x7fffffffdeb0; Value = 0x00007fffffffdec0; PC = 0x401ad4 *)
(* pop    %%rbp *)
(* #! <- SP = 0x7fffffffdeb8 *)
#! 0x7fffffffdeb8 = 0x7fffffffdeb8;
(* #retq                                           #! PC = 0x401ad5 *)
#retq                                           #! 0x401ad5 = 0x401ad5;

mov z11_0 L0x7fffffffdf20;
mov z11_1 L0x7fffffffdf28;
mov z11_2 L0x7fffffffdf30;
mov z11_3 L0x7fffffffdf38;

#  /* 11 */ gfp25519mul(&z11,&z9,&z2);

{
    eqmod
      (X ** 11)
      (limbs 64 [vars z11|0..3]) 
      (((2**255 )- 19))
  &&
  limbs 64 [vars z11|0..3] < (2**255+2**64)@256
}