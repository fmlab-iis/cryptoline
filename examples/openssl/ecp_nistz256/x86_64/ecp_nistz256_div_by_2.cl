(* quine: cv -v -isafety exercises/ecp_nistz256_div_by_2.cl 
Parsing Cryptoline file:		[OK]		0.001335 seconds
Checking well-formedness:		[OK]		0.000324 seconds
Transforming to SSA form:		[OK]		0.000147 seconds
Normalizing specification:		[OK]		0.000139 seconds
Rewriting assignments:			[OK]		0.000181 seconds
Verifying program safety:		
	 Cut 0
	     Round 1 (5 safety conditions, timeout = 300 seconds)
		 Safety condition #0	[OK]
		 Safety condition #1	[OK]
		 Safety condition #3	[OK]
		 Safety condition #2	[OK]
		 Safety condition #4	[OK]
	 Overall			[OK]		0.187149 seconds
Verifying range specification:		[OK]		3.104174 seconds
Rewriting value-preserved casting:	[OK]		0.000023 seconds
Verifying algebraic specification:	[OK]		0.000246 seconds
Verification result:			[OK]		3.294132 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
          uint64 m0, uint64 m1, uint64 m2, uint64 m3) =
{
  true
  &&
  and [ m0 = 0xffffffffffffffff@64, m1 = 0x00000000ffffffff@64,
        m2 = 0x0000000000000000@64, m3 = 0xffffffff00000001@64,
        limbs 64 [a0, a1, a2, a3] <u limbs 64 [m0, m1, m2, m3]
      ]
}

mov L0x7fffffffdbd0 a0;
mov L0x7fffffffdbd8 a1;
mov L0x7fffffffdbe0 a2;
mov L0x7fffffffdbe8 a3;

mov L0x55555557c000 0xffffffffffffffff@uint64;
mov L0x55555557c008 0x00000000ffffffff@uint64;
mov L0x55555557c010 0x0000000000000000@uint64;
mov L0x55555557c018 0xffffffff00000001@uint64;


(* ecp_nistz256_div_by_2: *)
#ecp_nistz256_div_by_2:;
(* #! -> SP = 0x7fffffffdbb8 *)
#! 0x7fffffffdbb8 = 0x7fffffffdbb8;
(* push   %r12                                     #! EA = L0x7fffffffdbb0; PC = 0x55555557c180 *)
#push   %%r12                                     #! L0x7fffffffdbb0 = L0x7fffffffdbb0; 0x55555557c180 = 0x55555557c180;
(* push   %r13                                     #! EA = L0x7fffffffdba8; PC = 0x55555557c182 *)
#push   %%r13                                     #! L0x7fffffffdba8 = L0x7fffffffdba8; 0x55555557c182 = 0x55555557c182;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffdbd0; Value = 0x0000000000000000; PC = 0x55555557c184 *)
mov r8 L0x7fffffffdbd0;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffdbd8; Value = 0x0000005000000019; PC = 0x55555557c187 *)
mov r9 L0x7fffffffdbd8;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffdbe0; Value = 0x0000001000000000; PC = 0x55555557c18b *)
mov r10 L0x7fffffffdbe0;
(* mov    %r8,%rax                                 #! PC = 0x55555557c18f *)
mov rax r8;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffdbe8; Value = 0x0000000000000000; PC = 0x55555557c192 *)
mov r11 L0x7fffffffdbe8;
(* lea    -0x19d(%rip),%rsi        # 0x55555557c000#! PC = 0x55555557c196 *)
#lea    %%EA,%%rsi        # 0x55555557c000#! 0x55555557c196 = 0x55555557c196;
(* mov    %r9,%rdx                                 #! PC = 0x55555557c19d *)
mov rdx r9;
(* xor    %r13,%r13                                #! PC = 0x55555557c1a0 *)
mov r13 0@uint64;
clear carry;
clear overflow;
(* add    (%rsi),%r8                               #! EA = L0x55555557c000; Value = 0xffffffffffffffff; PC = 0x55555557c1a3 *)
adds carry r8 r8 L0x55555557c000;
(* mov    %r10,%rcx                                #! PC = 0x55555557c1a6 *)
mov rcx r10;
(* adc    0x8(%rsi),%r9                            #! EA = L0x55555557c008; Value = 0x00000000ffffffff; PC = 0x55555557c1a9 *)
adcs carry r9 r9 L0x55555557c008 carry;
(* adc    0x10(%rsi),%r10                          #! EA = L0x55555557c010; Value = 0x0000000000000000; PC = 0x55555557c1ad *)
adcs carry r10 r10 L0x55555557c010 carry;
(* mov    %r11,%r12                                #! PC = 0x55555557c1b1 *)
mov r12 r11;
(* adc    0x18(%rsi),%r11                          #! EA = L0x55555557c018; Value = 0xffffffff00000001; PC = 0x55555557c1b4 *)
adcs carry r11 r11 L0x55555557c018 carry;
(* adc    $0x0,%r13                                #! PC = 0x55555557c1b8 *)
adc r13 r13 0x0@uint64 carry;
(* xor    %rsi,%rsi                                #! PC = 0x55555557c1bc *)
mov rsi 0@uint64;
clear carry;
clear overflow;
(* test   $0x1,%rax                                #! PC = 0x55555557c1bf *)
and tmp@uint64 0x1@uint64 rax;
subb zero dontcare tmp 0x1@uint64;
(* cmove  %rax,%r8                                 #! PC = 0x55555557c1c5 *)
cmov r8 zero rax r8;
(* cmove  %rdx,%r9                                 #! PC = 0x55555557c1c9 *)
cmov r9 zero rdx r9;
(* cmove  %rcx,%r10                                #! PC = 0x55555557c1cd *)
cmov r10 zero rcx r10;
(* cmove  %r12,%r11                                #! PC = 0x55555557c1d1 *)
cmov r11 zero r12 r11;
(* cmove  %rsi,%r13                                #! PC = 0x55555557c1d5 *)
cmov r13 zero rsi r13;
(* mov    %r9,%rax                                 #! PC = 0x55555557c1d9 *)
mov rax r9;
(* shr    %r8                                      #! PC = 0x55555557c1dc *)
split r8 dontcare r8 1;
(* shl    $0x3f,%rax                               #! PC = 0x55555557c1df *)
split ddc rax rax 1;
shl rax rax 63;
(* mov    %r10,%rdx                                #! PC = 0x55555557c1e3 *)
mov rdx r10;
(* shr    %r9                                      #! PC = 0x55555557c1e6 *)
split r9 dontcare r9 1;
(* or     %rax,%r8                                 #! PC = 0x55555557c1e9 *)
or r8@uint64 rax r8;
clear carry;
clear overflow;
(* shl    $0x3f,%rdx                               #! PC = 0x55555557c1ec *)
split ddc rdx rdx 1;
shl rdx rdx 63;
(* mov    %r11,%rcx                                #! PC = 0x55555557c1f0 *)
mov rcx r11;
(* shr    %r10                                     #! PC = 0x55555557c1f3 *)
split r10 dontcare r10 1;
(* or     %rdx,%r9                                 #! PC = 0x55555557c1f6 *)
or r9@uint64 rdx r9;
clear carry;
clear overflow;
(* shl    $0x3f,%rcx                               #! PC = 0x55555557c1f9 *)
split ddc rcx rcx 1;
shl rcx rcx 63;
(* shr    %r11                                     #! PC = 0x55555557c1fd *)
split r11 dontcare r11 1;
(* shl    $0x3f,%r13                               #! PC = 0x55555557c200 *)
split ddc r13 r13 1;
shl r13 r13 63;
(* or     %rcx,%r10                                #! PC = 0x55555557c204 *)
or r10@uint64 rcx r10;
clear carry;
clear overflow;
(* or     %r13,%r11                                #! PC = 0x55555557c207 *)
or r11@uint64 r13 r11;
clear carry;
clear overflow;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdc10; PC = 0x55555557c20a *)
mov L0x7fffffffdc10 r8;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffdc18; PC = 0x55555557c20d *)
mov L0x7fffffffdc18 r9;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffdc20; PC = 0x55555557c211 *)
mov L0x7fffffffdc20 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffdc28; PC = 0x55555557c215 *)
mov L0x7fffffffdc28 r11;
(* mov    (%rsp),%r13                              #! EA = L0x7fffffffdba8; Value = 0x00007fffffffdd68; PC = 0x55555557c219 *)
#mov    (%rsp),%%r13                              #! L0x7fffffffdba8 = L0x7fffffffdba8; 0x00007fffffffdd68 = 0x00007fffffffdd68; 0x55555557c219 = 0x55555557c219;
(* mov    0x8(%rsp),%r12                           #! EA = L0x7fffffffdbb0; Value = 0x0000000000000000; PC = 0x55555557c21d *)
#mov    0x8(%rsp),%%r12                           #! L0x7fffffffdbb0 = L0x7fffffffdbb0; 0x0000000000000000 = 0x0000000000000000; 0x55555557c21d = 0x55555557c21d;
(* lea    0x10(%rsp),%rsp                          #! PC = 0x55555557c222 *)
#lea    0x10(%rsp),%rsp                          #! 0x55555557c222 = 0x55555557c222;
(* #! <- SP = 0x7fffffffdbb8 *)
#! 0x7fffffffdbb8 = 0x7fffffffdbb8;
(* #repz ret                                       #! PC = 0x55555557c227 *)
#repz ret                                       #! 0x55555557c227 = 0x55555557c227;


mov c0 L0x7fffffffdc10;
mov c1 L0x7fffffffdc18;
mov c2 L0x7fffffffdc20;
mov c3 L0x7fffffffdc28;
{
  true
  &&
  and [ 
      eqmod  (limbs 64 [c0, c1, c2, c3, 0@64] +
              limbs 64 [c0, c1, c2, c3, 0@64])
             (limbs 64 [a0, a1, a2, a3, 0@64])
             (limbs 64 [m0, m1, m2, m3, 0@64]),
      limbs 64 [c0, c1, c2, c3] <u limbs 64 [m0, m1, m2, m3]
  ]
}
