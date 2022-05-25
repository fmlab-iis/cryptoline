(* quine: -v blst_fr_mul_by_3-x86_64.cl
Parsing Cryptoline file:                [OK]            0.001812 seconds
Checking well-formedness:               [OK]            0.000377 seconds
Transforming to SSA form:               [OK]            0.000180 seconds
Normalizing specification:              [OK]            0.000210 seconds
Rewriting assignments:                  [OK]            0.000181 seconds
Verifying program safety:               [OK]            0.031259 seconds
Verifying range specification:          [OK]            13.226489 seconds
Rewriting value-preserved casting:      [OK]            0.000027 seconds
Verifying algebraic specification:      [OK]            0.000433 seconds
Verification result:                    [OK]            13.261563 seconds
*)

proc main (uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 m0, uint64 m1, uint64 m2, uint64 m3) =
{
  true
  &&
  and[
	  m0 = 0xffffffff00000001@64,
	  m1 = 0x53bda402fffe5bfe@64,
	  m2 = 0x3339d80809a1d805@64,
	  m3 = 0x73eda753299d7d48@64,
      limbs 64 [x0, x1, x2, x3] <u limbs 64 [m0, m1, m2, m3]
  	]
}


mov L0x7fffffffdb20 x0;
mov L0x7fffffffdb28 x1;
mov L0x7fffffffdb30 x2;
mov L0x7fffffffdb38 x3;

(* prime *)
mov L0x55555556c660 m0;
mov L0x55555556c668 m1;
mov L0x55555556c670 m2;
mov L0x55555556c678 m3;


(* mov    (%rsi),%r8                               #! EA = L0x7fffffffdb20; Value = 0x000009c0000009c0; PC = 0x93824992305995 *)
mov r8 L0x7fffffffdb20;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffdb28; Value = 0x000009c0000009c0; PC = 0x93824992305998 *)
mov r9 L0x7fffffffdb28;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffdb30; Value = 0x000009c0000009c0; PC = 0x93824992306002 *)
mov r10 L0x7fffffffdb30;
(* mov    %rsi,%rdx                                #! PC = 0x93824992306006 *)
#mov rdx rsi;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffdb38; Value = 0x000009c0000009c0; PC = 0x93824992306009 *)
mov r11 L0x7fffffffdb38;
(* #callq  0x555555566380 <__lshift_mod_256>       #! PC = 0x93824992306013 *)
#callq  0x555555566380 <__lshift_mod_256>       #! 0x93824992306013 = 0x93824992306013;
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
nondet r12@uint64;

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
(* mov    (%rsp),%r12                              #! EA = L0x7fffffffdae0; Value = 0x0000555555555080; PC = 0x93824992306018 *)
#mov r12 L0x7fffffffdae0;
(* #jmpq   0x5555555662d9 <add_mod_256+25>         #! PC = 0x93824992306022 *)
#jmpq   0x5555555662d9 <add_mod_256+25>         #! 0x93824992306022 = 0x93824992306022;
(* add    (%rdx),%r8                               #! EA = L0x7fffffffdb20; Value = 0x000009c0000009c0; PC = 0x93824992305881 *)
adds carry r8 L0x7fffffffdb20 r8;
(* adc    0x8(%rdx),%r9                            #! EA = L0x7fffffffdb28; Value = 0x000009c0000009c0; PC = 0x93824992305884 *)
adcs carry r9 L0x7fffffffdb28 r9 carry;
(* mov    %r8,%rax                                 #! PC = 0x93824992305888 *)
mov rax r8;
(* adc    0x10(%rdx),%r10                          #! EA = L0x7fffffffdb30; Value = 0x000009c0000009c0; PC = 0x93824992305891 *)
adcs carry r10 L0x7fffffffdb30 r10 carry;
(* mov    %r9,%rsi                                 #! PC = 0x93824992305895 *)
mov rsi r9;
(* adc    0x18(%rdx),%r11                          #! EA = L0x7fffffffdb38; Value = 0x000009c0000009c0; PC = 0x93824992305898 *)
adcs carry r11 L0x7fffffffdb38 r11 carry;

(* Explicitly define rdx here, rdx can be anything *)
nondet rdx@uint64;

(* sbb    %rdx,%rdx                                #! PC = 0x93824992305902 *)
sbbs carry rdx rdx rdx carry;
(* mov    %r10,%rbx                                #! PC = 0x93824992305905 *)
mov rbx r10;
(* sub    (%rcx),%r8                               #! EA = L0x55555556c660; Value = 0xffffffff00000001; PC = 0x93824992305908 *)
subb carry r8 r8 L0x55555556c660;
(* sbb    0x8(%rcx),%r9                            #! EA = L0x55555556c668; Value = 0x53bda402fffe5bfe; PC = 0x93824992305911 *)
sbbs carry r9 r9 L0x55555556c668 carry;
(* sbb    0x10(%rcx),%r10                          #! EA = L0x55555556c670; Value = 0x3339d80809a1d805; PC = 0x93824992305915 *)
sbbs carry r10 r10 L0x55555556c670 carry;
(* mov    %r11,%rbp                                #! PC = 0x93824992305919 *)
mov rbp r11;
(* sbb    0x18(%rcx),%r11                          #! EA = L0x55555556c678; Value = 0x73eda753299d7d48; PC = 0x93824992305922 *)
sbbs carry r11 r11 L0x55555556c678 carry;
(* sbb    $0x0,%rdx                                #! PC = 0x93824992305926 *)
sbbs carry rdx rdx 0@uint64 carry;
(* cmovb  %rax,%r8                                 #! PC = 0x93824992305930 *)
cmov r8 carry rax r8;
(* cmovb  %rsi,%r9                                 #! PC = 0x93824992305934 *)
cmov r9 carry rsi r9;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdb60; PC = 0x93824992305938 *)
mov L0x7fffffffdb60 r8;
(* cmovb  %rbx,%r10                                #! PC = 0x93824992305941 *)
cmov r10 carry rbx r10;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffdb68; PC = 0x93824992305945 *)
mov L0x7fffffffdb68 r9;
(* cmovb  %rbp,%r11                                #! PC = 0x93824992305949 *)
cmov r11 carry rbp r11;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffdb70; PC = 0x93824992305953 *)
mov L0x7fffffffdb70 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffdb78; PC = 0x93824992305957 *)
mov L0x7fffffffdb78 r11;
(* #retq                                           #! PC = 0x93824992297825 *)
#retq                                           #! 0x93824992297825 = 0x93824992297825;

mov c0 L0x7fffffffdb60;
mov c1 L0x7fffffffdb68;
mov c2 L0x7fffffffdb70;
mov c3 L0x7fffffffdb78;


{
  true
  &&
  and[eqmod
  	  limbs 64 [x0, x1, x2, x3, 0@64] * 3@320
      limbs 64 [c0, c1, c2, c3, 0@64]
	  limbs 64 [m0, m1, m2, m3, 0@64],

      limbs 64 [c0, c1, c2, c3] <u limbs 64 [m0, m1, m2, m3]
      ]
}

