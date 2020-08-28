(* quine: -v -isafety -jobs 10 -no_carry_constraint -slicing -btor blst_fr_lshift-x86_64.cl
Parsing Cryptoline file:                [OK]            0.001215 seconds
Checking well-formedness:               [OK]            0.000256 seconds
Transforming to SSA form:               [OK]            0.000125 seconds
Rewriting assignments:                  [OK]            0.000209 seconds
Verifying program safety:               [OK]            0.001262 seconds
Verifying range specification:          [OK]            0.226598 seconds
Rewriting value-preserved casting:      [OK]            0.000010 seconds
Verifying algebraic specification:      [OK]            0.000097 seconds
Verification result:                    [OK]            0.230194 seconds
*)

proc main (uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 m0, uint64 m1, uint64 m2, uint64 m3) =
{
  true
  &&
  and
	[
	 m0 = 0xffffffff00000001@64,
	 m1 = 0x53bda402fffe5bfe@64,
	 m2 = 0x3339d80809a1d805@64,
	 m3 = 0x73eda753299d7d48@64,
    	 limbs 64 [x0, x1, x2, x3] <u limbs 64 [m0, m1, m2, m3]
  	]
}


mov L0x7fffffffdb30 x0;
mov L0x7fffffffdb38 x1;
mov L0x7fffffffdb40 x2;
mov L0x7fffffffdb48 x3;

(* prime *)
mov L0x55555556c660 m0;
mov L0x55555556c668 m1;
mov L0x55555556c670 m2;
mov L0x55555556c678 m3;



(* mov    (%rsi),%r8                               #! EA = L0x7fffffffdb30; Value = 0x000009c0000009c0; PC = 0x93824992306152 *)
mov r8 L0x7fffffffdb30;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffdb38; Value = 0x000009c0000009c0; PC = 0x93824992306155 *)
mov r9 L0x7fffffffdb38;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffdb40; Value = 0x000009c0000009c0; PC = 0x93824992306159 *)
mov r10 L0x7fffffffdb40;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffdb48; Value = 0x000009c0000009c0; PC = 0x93824992306163 *)
mov r11 L0x7fffffffdb48;
(* #callq  0x555555566380 <__lshift_mod_256>       #! PC = 0x93824992306167 *)
#callq  0x555555566380 <__lshift_mod_256>       #! 0x93824992306167 = 0x93824992306167;
(* add    %r8,%r8                                  #! PC = 0x93824992306052 *)
adds carry r8 r8 r8;
(* adc    %r9,%r9                                  #! PC = 0x93824992306055 *)
adcs carry r9 r9 r9 carry;
(* mov    %r8,%rax                                 #! PC = 0x93824992306058 *)
mov rax r8;
(* adc    %r10,%r10                                #! PC = 0x93824992306061 *)
adcs carry r10 r10 r10 carry;
(* mov    %r9,%rsi                                 #! PC = 0x93824992306064 *)
mov rsi r9;
(* adc    %r11,%r11                                #! PC = 0x93824992306067 *)
adcs carry r11 r11 r11 carry;

(* Explicitly define r12 here, r12 can be anything *)
mov r12 0@uint64;

(* sbb    %r12,%r12                                #! PC = 0x93824992306070 *)
sbbs carry r12 r12 r12 carry;
(* mov    %r10,%rbx                                #! PC = 0x93824992306073 *)
mov rbx r10;
(* sub    (%rcx),%r8                               #! EA = L0x55555556c660; Value = 0xffffffff00000001; PC = 0x93824992306076 *)
subb carry r8 r8 L0x55555556c660;
(* sbb    0x8(%rcx),%r9                            #! EA = L0x55555556c668; Value = 0x53bda402fffe5bfe; PC = 0x93824992306079 *)
sbbs carry r9 r9 L0x55555556c668 carry;
(* sbb    0x10(%rcx),%r10                          #! EA = L0x55555556c670; Value = 0x3339d80809a1d805; PC = 0x93824992306083 *)
sbbs carry r10 r10 L0x55555556c670 carry;
(* mov    %r11,%rbp                                #! PC = 0x93824992306087 *)
mov rbp r11;
(* sbb    0x18(%rcx),%r11                          #! EA = L0x55555556c678; Value = 0x73eda753299d7d48; PC = 0x93824992306090 *)
sbbs carry r11 r11 L0x55555556c678 carry;
(* sbb    $0x0,%r12                                #! PC = 0x93824992306094 *)
sbbs carry r12 r12 0@uint64 carry;
(* cmovb  %rax,%r8                                 #! PC = 0x93824992306098 *)
cmov r8 carry rax r8;
(* cmovb  %rsi,%r9                                 #! PC = 0x93824992306102 *)
cmov r9 carry rsi r9;
(* cmovb  %rbx,%r10                                #! PC = 0x93824992306106 *)
cmov r10 carry rbx r10;
(* cmovb  %rbp,%r11                                #! PC = 0x93824992306110 *)
cmov r11 carry rbp r11;
(* #repz retq                                      #! PC = 0x93824992306114 *)
#repz retq                                      #! 0x93824992306114 = 0x93824992306114;
(* #dec    %edx                                     #! PC = 0x93824992306172 *)
#dec    %edx                                     #! 0x93824992306172 = 0x93824992306172;
(* #jne    0x5555555663f7 <lshift_mod_256+23>      #! PC = 0x93824992306174 *)
#jne    0x5555555663f7 <lshift_mod_256+23>      #! 0x93824992306174 = 0x93824992306174;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdb70; PC = 0x93824992306176 *)
mov L0x7fffffffdb70 r8;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffdb78; PC = 0x93824992306179 *)
mov L0x7fffffffdb78 r9;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffdb80; PC = 0x93824992306183 *)
mov L0x7fffffffdb80 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffdb88; PC = 0x93824992306187 *)
mov L0x7fffffffdb88 r11;
(* #retq                                           #! PC = 0x93824992297850 *)
#retq                                           #! 0x93824992297850 = 0x93824992297850;

mov c0 L0x7fffffffdb70;
mov c1 L0x7fffffffdb78;
mov c2 L0x7fffffffdb80;
mov c3 L0x7fffffffdb88;

{
  true
  &&
  eqmod
  	(limbs 64 [x0, x1, x2, x3] 
	 *
	 2@256)

	(limbs 64 [c0, c1, c2, c3])
	
	(limbs 64 [m0, m1, m2, m3])
}

