(* quine: -v fpadd25519.cl
Parsing Cryptoline file:                [OK]            0.001899 seconds
Checking well-formedness:               [OK]            0.000245 seconds
Transforming to SSA form:               [OK]            0.000105 seconds
Rewriting assignments:                  [OK]            0.000260 seconds
Verifying program safety:               [OK]            0.033402 seconds
Verifying range assertions:             [OK]            0.128586 seconds
Verifying range specification:          [OK]            1.474089 seconds
Rewriting value-preserved casting:      [OK]            0.000008 seconds
Verifying algebraic assertions:         [OK]            0.003375 seconds
Verifying algebraic specification:      [OK]            0.081013 seconds
Verification result:                    [OK]            1.723514 seconds
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
	 m3 = 0x7fffffffffffffff@64,

    	 limbs 64 [x0, x1, x2, x3] <u limbs 64 [m0, m1, m2, m3],
    	 limbs 64 [y0, y1, y2, y3] <u limbs 64 [m0, m1, m2, m3]
  	]
}

mov L0x7fffffffdd40 x0;
mov L0x7fffffffdd48 x1;
mov L0x7fffffffdd50 x2;
mov L0x7fffffffdd58 x3;
mov L0x7fffffffdd60 y0;
mov L0x7fffffffdd68 y1;
mov L0x7fffffffdd70 y2;
mov L0x7fffffffdd78 y3;



(* #! -> SP = 0x7fffffffdd38 *)
#! 0x7fffffffdd38 = 0x7fffffffdd38;
(* #mov    %rsp,%r11                                #! PC = 0x402120 *)
#mov    %%rsp,%%r11                                #! 0x402120 = 0x402120;
(* #and    $0x1f,%r11                               #! PC = 0x402123 *)
#and    $0x1f,%%r11                               #! 0x402123 = 0x402123;
(* #add    $0x40,%r11                               #! PC = 0x402127 *)
#add    $0x40,%%r11                               #! 0x402127 = 0x402127;
(* #sub    %r11,%rsp                                #! PC = 0x40212b *)
#sub    %%r11,%%rsp                                #! 0x40212b = 0x40212b;
(* #mov    %r11,(%rsp)                              #! EA = L0x7fffffffdce0; PC = 0x40212e *)
#mov    %%r11,%%L0x7fffffffdce0                              #! L0x7fffffffdce0 = L0x7fffffffdce0; 0x40212e = 0x40212e;
(* #mov    %r12,0x8(%rsp)                           #! EA = L0x7fffffffdce8; PC = 0x402132 *)
#mov    %%r12,%%L0x7fffffffdce8                           #! L0x7fffffffdce8 = L0x7fffffffdce8; 0x402132 = 0x402132;
(* #mov    %r13,0x10(%rsp)                          #! EA = L0x7fffffffdcf0; PC = 0x402137 *)
#mov    %%r13,%%L0x7fffffffdcf0                          #! L0x7fffffffdcf0 = L0x7fffffffdcf0; 0x402137 = 0x402137;
(* #mov    %r14,0x18(%rsp)                          #! EA = L0x7fffffffdcf8; PC = 0x40213c *)
#mov    %%r14,%%L0x7fffffffdcf8                          #! L0x7fffffffdcf8 = L0x7fffffffdcf8; 0x40213c = 0x40213c;
(* #mov    %r15,0x20(%rsp)                          #! EA = L0x7fffffffdd00; PC = 0x402141 *)
#mov    %%r15,%%L0x7fffffffdd00                          #! L0x7fffffffdd00 = L0x7fffffffdd00; 0x402141 = 0x402141;
(* #mov    %rbx,0x28(%rsp)                          #! EA = L0x7fffffffdd08; PC = 0x402146 *)
#mov    %%rbx,%%L0x7fffffffdd08                          #! L0x7fffffffdd08 = L0x7fffffffdd08; 0x402146 = 0x402146;
(* #mov    %rbp,0x30(%rsp)                          #! EA = L0x7fffffffdd10; PC = 0x40214b *)
#mov    %%rbp,%%L0x7fffffffdd10                          #! L0x7fffffffdd10 = L0x7fffffffdd10; 0x40214b = 0x40214b;
(* #mov    %rdx,0x38(%rsp)                          #! EA = L0x7fffffffdd18; PC = 0x402150 *)
#mov    %%rdx,%%L0x7fffffffdd18                          #! L0x7fffffffdd18 = L0x7fffffffdd18; 0x402150 = 0x402150;
(* mov    (%rdi),%rdx                              #! EA = L0x7fffffffdd40; Value = 0x60a028a676ef9eda; PC = 0x402155 *)
mov rdx L0x7fffffffdd40;
(* mov    0x8(%rdi),%rcx                           #! EA = L0x7fffffffdd48; Value = 0xe428265f162a7bf4; PC = 0x402158 *)
mov rcx L0x7fffffffdd48;
(* mov    0x10(%rdi),%r8                           #! EA = L0x7fffffffdd50; Value = 0xe8a57f1d3b1ea825; PC = 0x40215c *)
mov r8 L0x7fffffffdd50;
(* mov    0x18(%rdi),%rdi                          #! EA = L0x7fffffffdd58; Value = 0x691e6e2900dcee22; PC = 0x402160 *)
mov rdi L0x7fffffffdd58;
(* add    (%rsi),%rdx                              #! EA = L0x7fffffffdd60; Value = 0xcf9fd8a0896f4705; PC = 0x402164 *)
adds carry rdx L0x7fffffffdd60 rdx;
(* adc    0x8(%rsi),%rcx                           #! EA = L0x7fffffffdd68; Value = 0xd8be078d8650a0e0; PC = 0x402167 *)
adcs carry rcx L0x7fffffffdd68 rcx carry;
(* adc    0x10(%rsi),%r8                           #! EA = L0x7fffffffdd70; Value = 0xae98d9476d490b24; PC = 0x40216b *)
adcs carry r8 L0x7fffffffdd70 r8 carry;
(* adc    0x18(%rsi),%rdi                          #! EA = L0x7fffffffdd78; Value = 0x56374fcffcc3b096; PC = 0x40216f *)
adcs carry rdi L0x7fffffffdd78 rdi carry;

assert true && carry = 0@1;
assume carry = 0 && true;

(* mov    $0x0,%rsi                                #! PC = 0x402173 *)
mov rsi 0x0@uint64;
(* mov    $0x13,%r9                                #! PC = 0x40217a *)
mov r9 0x13@uint64;
(* btr    $0x3f,%rdi                               #! PC = 0x402181 *)

ghost ordi@uint64:
     and[ordi = rdi]
  && and[ordi = rdi];

subb carry dontcare 0x7fffffffffffffff@uint64 rdi;
and rdi@uint64 rdi 0x7fffffffffffffff@uint64;

assert true &&
  and[ordi = rdi + (uext carry 63) * 0x8000000000000000@64];
assume ordi = rdi + carry * 0x8000000000000000 && true;

(* cmovb  %r9,%rsi                                 #! PC = 0x402186 *)
cmov rsi carry r9 rsi;
(* add    %rsi,%rdx                                #! PC = 0x40218a *)
adds carry rdx rsi rdx;
(* adc    $0x0,%rcx                                #! PC = 0x40218d *)
adcs carry rcx 0@uint64 rcx carry;
(* adc    $0x0,%r8                                 #! PC = 0x402191 *)
adcs carry r8 0@uint64 r8 carry;
(* adc    $0x0,%rdi                                #! PC = 0x402195 *)
adcs carry rdi 0@uint64 rdi carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rsi                                #! PC = 0x402199 *)
mov rsi rdx;
(* mov    %rcx,%r9                                 #! PC = 0x40219c *)
mov r9 rcx;
(* mov    %r8,%rax                                 #! PC = 0x40219f *)
mov rax r8;
(* mov    %rdi,%r10                                #! PC = 0x4021a2 *)
mov r10 rdi;
(* movabs $0x7fffffffffffffff,%r11                 #! PC = 0x4021a5 *)
mov r11 0x7fffffffffffffff@uint64;
(* sub    $0xffffffffffffffed,%rdx                 #! PC = 0x4021af *)
subb carry rdx rdx 0xffffffffffffffed@uint64;
(* sbb    $0xffffffffffffffff,%rcx                 #! PC = 0x4021b3 *)
sbbs carry rcx rcx 0xffffffffffffffff@uint64 carry;
(* sbb    $0xffffffffffffffff,%r8                  #! PC = 0x4021b7 *)
sbbs carry r8 r8 0xffffffffffffffff@uint64 carry;
(* sbb    %r11,%rdi                                #! PC = 0x4021bb *)
sbbs carry rdi rdi r11 carry;
(* cmovb  %rsi,%rdx                                #! PC = 0x4021be *)
cmov rdx carry rsi rdx;
(* cmovb  %r9,%rcx                                 #! PC = 0x4021c2 *)
cmov rcx carry r9 rcx;
(* cmovb  %rax,%r8                                 #! PC = 0x4021c6 *)
cmov r8 carry rax r8;
(* cmovb  %r10,%rdi                                #! PC = 0x4021ca *)
cmov rdi carry r10 rdi;
(* mov    0x38(%rsp),%rsi                          #! EA = L0x7fffffffdd18; Value = 0x00007fffffffe090; PC = 0x4021ce *)
#mov rsi L0x7fffffffdd18;
(* mov    %rcx,0x8(%rsi)                           #! EA = L0x7fffffffe098; PC = 0x4021d3 *)
mov L0x7fffffffe098 rcx;
(* mov    %r8,0x10(%rsi)                           #! EA = L0x7fffffffe0a0; PC = 0x4021d7 *)
mov L0x7fffffffe0a0 r8;
(* mov    %rdi,0x18(%rsi)                          #! EA = L0x7fffffffe0a8; PC = 0x4021db *)
mov L0x7fffffffe0a8 rdi;
(* mov    %rdx,(%rsi)                              #! EA = L0x7fffffffe090; PC = 0x4021df *)
mov L0x7fffffffe090 rdx;
(* #mov    (%rsp),%r11                              #! EA = L0x7fffffffdce0; Value = 0x0000000000000058; PC = 0x4021e2 *)
#mov    %%L0x7fffffffdce0,%%r11                              #! L0x7fffffffdce0 = L0x7fffffffdce0; 0x0000000000000058 = 0x0000000000000058; 0x4021e2 = 0x4021e2;
(* #mov    0x8(%rsp),%r12                           #! EA = L0x7fffffffdce8; Value = 0x00007fffffffe070; PC = 0x4021e6 *)
#mov    %%L0x7fffffffdce8,%%r12                           #! L0x7fffffffdce8 = L0x7fffffffdce8; 0x00007fffffffe070 = 0x00007fffffffe070; 0x4021e6 = 0x4021e6;
(* #mov    0x10(%rsp),%r13                          #! EA = L0x7fffffffdcf0; Value = 0x00007fffffffdd40; PC = 0x4021eb *)
#mov    %%L0x7fffffffdcf0,%%r13                          #! L0x7fffffffdcf0 = L0x7fffffffdcf0; 0x00007fffffffdd40 = 0x00007fffffffdd40; 0x4021eb = 0x4021eb;
(* #mov    0x18(%rsp),%r14                          #! EA = L0x7fffffffdcf8; Value = 0x00007fffffffdd60; PC = 0x4021f0 *)
#mov    %%L0x7fffffffdcf8,%%r14                          #! L0x7fffffffdcf8 = L0x7fffffffdcf8; 0x00007fffffffdd60 = 0x00007fffffffdd60; 0x4021f0 = 0x4021f0;
(* #mov    0x20(%rsp),%r15                          #! EA = L0x7fffffffdd00; Value = 0x00007fffffffdf90; PC = 0x4021f5 *)
#mov    %%L0x7fffffffdd00,%%r15                          #! L0x7fffffffdd00 = L0x7fffffffdd00; 0x00007fffffffdf90 = 0x00007fffffffdf90; 0x4021f5 = 0x4021f5;
(* #mov    0x28(%rsp),%rbx                          #! EA = L0x7fffffffdd08; Value = 0x00007fffffffdff0; PC = 0x4021fa *)
#mov    %%L0x7fffffffdd08,%%rbx                          #! L0x7fffffffdd08 = L0x7fffffffdd08; 0x00007fffffffdff0 = 0x00007fffffffdff0; 0x4021fa = 0x4021fa;
(* #mov    0x30(%rsp),%rbp                          #! EA = L0x7fffffffdd10; Value = 0x00007fffffffdfd0; PC = 0x4021ff *)
#mov    %%L0x7fffffffdd10,%%rbp                          #! L0x7fffffffdd10 = L0x7fffffffdd10; 0x00007fffffffdfd0 = 0x00007fffffffdfd0; 0x4021ff = 0x4021ff;
(* #add    %r11,%rsp                                #! PC = 0x402204 *)
#add    %%r11,%%rsp                                #! 0x402204 = 0x402204;
(* #! <- SP = 0x7fffffffdd38 *)
#! 0x7fffffffdd38 = 0x7fffffffdd38;
(* #retq                                           #! PC = 0x402207 *)
#retq                                           #! 0x402207 = 0x402207;



mov c0 L0x7fffffffe090;
mov c1 L0x7fffffffe098;
mov c2 L0x7fffffffe0a0;
mov c3 L0x7fffffffe0a8;

{
   eqmod
        (limbs 64 [x0, x1, x2, x3]
         +
         limbs 64 [y0, y1, y2, y3])

        (limbs 64 [c0, c1, c2, c3])
        (limbs 64 [m0, m1, m2, m3])
  &&
  eqmod
  	(limbs 64 [x0, x1, x2, x3] 
	 +
	 limbs 64 [y0, y1, y2, y3])

	(limbs 64 [c0, c1, c2, c3])
	
	(limbs 64 [m0, m1, m2, m3])
}
