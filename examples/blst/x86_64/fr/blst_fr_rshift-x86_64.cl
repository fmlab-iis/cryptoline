(* quine: -v -isafety -jobs 10 -no_carry_constraint -slicing -btor blst_fr_rshift-x86_64.cl
Parsing Cryptoline file:                [OK]            0.001339 seconds
Checking well-formedness:               [OK]            0.000269 seconds
Transforming to SSA form:               [OK]            0.000140 seconds
Rewriting assignments:                  [OK]            0.000289 seconds
Verifying program safety:               [OK]            0.114807 seconds
Verifying range specification:          [OK]            0.392493 seconds
Rewriting value-preserved casting:      [OK]            0.000010 seconds
Verifying algebraic specification:      [OK]            0.000120 seconds
Verification result:                    [OK]            0.509908 seconds
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



(* #callq  0x555555566440 <rshift_mod_256>         #! PC = 0x93824992297866 *)
#callq  0x555555566440 <rshift_mod_256>         #! 0x93824992297866 = 0x93824992297866;
(* mov    (%rsi),%rbp                              #! EA = L0x7fffffffdb30; Value = 0x000009c0000009c0; PC = 0x93824992306250 *)
mov rbp L0x7fffffffdb30;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffdb38; Value = 0x000009c0000009c0; PC = 0x93824992306253 *)
mov r9 L0x7fffffffdb38;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffdb40; Value = 0x000009c0000009c0; PC = 0x93824992306257 *)
mov r10 L0x7fffffffdb40;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffdb48; Value = 0x000009c0000009c0; PC = 0x93824992306261 *)
mov r11 L0x7fffffffdb48;
(* mov    %rbp,%r8                                 #! PC = 0x93824992306265 *)
mov r8 rbp;
(* and    $0x1,%rbp                                #! PC = 0x93824992306268 *)
and rbp@uint64 0x1@uint64 rbp;
(* mov    (%rcx),%rax                              #! EA = L0x55555556c660; Value = 0xffffffff00000001; PC = 0x93824992306272 *)
mov rax L0x55555556c660;
(* neg    %rbp                                     #! PC = 0x93824992306275 *)
subb dontcare rbp 0@uint64 rbp;
(* mov    0x8(%rcx),%rsi                           #! EA = L0x55555556c668; Value = 0x53bda402fffe5bfe; PC = 0x93824992306278 *)
mov rsi L0x55555556c668;
(* mov    0x10(%rcx),%rbx                          #! EA = L0x55555556c670; Value = 0x3339d80809a1d805; PC = 0x93824992306282 *)
mov rbx L0x55555556c670;
(* and    %rbp,%rax                                #! PC = 0x93824992306286 *)
and rax@uint64 rbp rax;
(* and    %rbp,%rsi                                #! PC = 0x93824992306289 *)
and rsi@uint64 rbp rsi;
(* and    %rbp,%rbx                                #! PC = 0x93824992306292 *)
and rbx@uint64 rbp rbx;
(* and    0x18(%rcx),%rbp                          #! EA = L0x55555556c678; Value = 0x73eda753299d7d48; PC = 0x93824992306295 *)
and rbp@uint64 L0x55555556c678 rbp;
(* add    %rax,%r8                                 #! PC = 0x93824992306299 *)
adds carry r8 rax r8;
(* adc    %rsi,%r9                                 #! PC = 0x93824992306302 *)
adcs carry r9 rsi r9 carry;
(* adc    %rbx,%r10                                #! PC = 0x93824992306305 *)
adcs carry r10 rbx r10 carry;
(* adc    %rbp,%r11                                #! PC = 0x93824992306308 *)
adcs carry r11 rbp r11 carry;
(* sbb    %rax,%rax                                #! PC = 0x93824992306311 *)
sbbs carry rax rax rax carry;
(* shr    %r8                                      #! PC = 0x93824992306314 *)
usplit r8 dontcare r8 1;
(* mov    %r9,%rbp                                 #! PC = 0x93824992306317 *)
mov rbp r9;
(* shr    %r9                                      #! PC = 0x93824992306320 *)
usplit r9 dontcare r9 1;
(* mov    %r10,%rbx                                #! PC = 0x93824992306323 *)
mov rbx r10;
(* shr    %r10                                     #! PC = 0x93824992306326 *)
usplit r10 dontcare r10 1;
(* mov    %r11,%rsi                                #! PC = 0x93824992306329 *)
mov rsi r11;
(* shr    %r11                                     #! PC = 0x93824992306332 *)
usplit r11 dontcare r11 1;
(* shl    $0x3f,%rbp                               #! PC = 0x93824992306335 *)
usplit dontcare rbp rbp 1;
shl rbp rbp 63;
(* shl    $0x3f,%rbx                               #! PC = 0x93824992306339 *)
usplit dontcare rbx rbx 1;
shl rbx rbx 63;
(* or     %r8,%rbp                                 #! PC = 0x93824992306343 *)
or rbp@uint64 r8 rbp;
(* shl    $0x3f,%rsi                               #! PC = 0x93824992306346 *)
usplit dontcare rsi rsi 1;
shl rsi rsi 63;
(* or     %rbx,%r9                                 #! PC = 0x93824992306350 *)
or r9@uint64 rbx r9;
(* shl    $0x3f,%rax                               #! PC = 0x93824992306353 *)
usplit dontcare rax rax 1;
shl rax rax 63;
(* or     %rsi,%r10                                #! PC = 0x93824992306357 *)
or r10@uint64 rsi r10;
(* or     %rax,%r11                                #! PC = 0x93824992306360 *)
or r11@uint64 rax r11;
(* #dec    %edx                                     #! PC = 0x93824992306363 *)
#dec    %edx                                     #! 0x93824992306363 = 0x93824992306363;
(* #jne    0x555555566459 <rshift_mod_256+25>      #! PC = 0x93824992306365 *)
#jne    0x555555566459 <rshift_mod_256+25>      #! 0x93824992306365 = 0x93824992306365;
(* mov    %rbp,(%rdi)                              #! EA = L0x7fffffffdb70; PC = 0x93824992306367 *)
mov L0x7fffffffdb70 rbp;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffdb78; PC = 0x93824992306370 *)
mov L0x7fffffffdb78 r9;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffdb80; PC = 0x93824992306374 *)
mov L0x7fffffffdb80 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffdb88; PC = 0x93824992306378 *)
mov L0x7fffffffdb88 r11;
(* #retq                                           #! PC = 0x93824992297875 *)
#retq                                           #! 0x93824992297875 = 0x93824992297875;

mov r0 L0x7fffffffdb70;
mov r1 L0x7fffffffdb78;
mov r2 L0x7fffffffdb80;
mov r3 L0x7fffffffdb88;

{
  true
&&
  and [
    eqmod ((limbs 64 [r0, r1, r2, r3]) * 2@256)
          (limbs 64 [x0, x1, x2, x3])
          (limbs 64 [m0, m1, m2, m3]),
    (limbs 64 [r0, r1, r2, r3]) <u (limbs 64 [m0, m1, m2, m3])
  ]
}

