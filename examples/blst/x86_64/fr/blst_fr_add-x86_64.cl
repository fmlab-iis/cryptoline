(* quine: -v blst_fr_add-x86_64.cl
Parsing Cryptoline file:                [OK]            0.001355 seconds
Checking well-formedness:               [OK]            0.000322 seconds
Transforming to SSA form:               [OK]            0.000156 seconds
Normalizing specification:              [OK]            0.000147 seconds
Rewriting assignments:                  [OK]            0.000169 seconds
Verifying program safety:               [OK]            0.030016 seconds
Verifying range specification:          [OK]            1.633754 seconds
Rewriting value-preserved casting:      [OK]            0.000021 seconds
Verifying algebraic specification:      [OK]            0.000378 seconds
Verification result:                    [OK]            1.666866 seconds
*)

proc main (uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 y0, uint64 y1, uint64 y2, uint64 y3, uint64 m0, uint64 m1, uint64 m2, uint64 m3) =
{
  true
  &&
  and[
	  m0 = 0xffffffff00000001@64,
	  m1 = 0x53bda402fffe5bfe@64,
	  m2 = 0x3339d80809a1d805@64,
	  m3 = 0x73eda753299d7d48@64,
      limbs 64 [x0, x1, x2, x3] <u limbs 64 [m0, m1, m2, m3],
      limbs 64 [y0, y1, y2, y3] <u limbs 64 [m0, m1, m2, m3]
  	]
}

mov L0x7fffffffdb30 x0;
mov L0x7fffffffdb38 x1;
mov L0x7fffffffdb40 x2;
mov L0x7fffffffdb48 x3;
mov L0x7fffffffdb50 y0;
mov L0x7fffffffdb58 y1;
mov L0x7fffffffdb60 y2;
mov L0x7fffffffdb68 y3;

(* prime *)
mov L0x55555556c660 m0;
mov L0x55555556c668 m1;
mov L0x55555556c670 m2;
mov L0x55555556c678 m3;

(* mov    (%rsi),%r8                               #! EA = L0x7fffffffdb30; Value = 0x000009c0000009c0; PC = 0x93824992305866 *)
mov r8 L0x7fffffffdb30;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffdb38; Value = 0x000009c0000009c0; PC = 0x93824992305869 *)
mov r9 L0x7fffffffdb38;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffdb40; Value = 0x000009c0000009c0; PC = 0x93824992305873 *)
mov r10 L0x7fffffffdb40;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffdb48; Value = 0x000009c0000009c0; PC = 0x93824992305877 *)
mov r11 L0x7fffffffdb48;
(* add    (%rdx),%r8                               #! EA = L0x7fffffffdb50; Value = 0x000009c0000009c0; PC = 0x93824992305881 *)
adds carry r8 L0x7fffffffdb50 r8;
(* adc    0x8(%rdx),%r9                            #! EA = L0x7fffffffdb58; Value = 0x000009c0000009c0; PC = 0x93824992305884 *)
adcs carry r9 L0x7fffffffdb58 r9 carry;
(* mov    %r8,%rax                                 #! PC = 0x93824992305888 *)
mov rax r8;
(* adc    0x10(%rdx),%r10                          #! EA = L0x7fffffffdb60; Value = 0x000009c0000009c0; PC = 0x93824992305891 *)
adcs carry r10 L0x7fffffffdb60 r10 carry;
(* mov    %r9,%rsi                                 #! PC = 0x93824992305895 *)
mov rsi r9;
(* adc    0x18(%rdx),%r11                          #! EA = L0x7fffffffdb68; Value = 0x000009c0000009c0; PC = 0x93824992305898 *)
adcs carry r11 L0x7fffffffdb68 r11 carry;

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
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdb70; PC = 0x93824992305938 *)
mov L0x7fffffffdb70 r8;
(* cmovb  %rbx,%r10                                #! PC = 0x93824992305941 *)
cmov r10 carry rbx r10;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffdb78; PC = 0x93824992305945 *)
mov L0x7fffffffdb78 r9;
(* cmovb  %rbp,%r11                                #! PC = 0x93824992305949 *)
cmov r11 carry rbp r11;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffdb80; PC = 0x93824992305953 *)
mov L0x7fffffffdb80 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffdb88; PC = 0x93824992305957 *)
mov L0x7fffffffdb88 r11;
(* #retq                                           #! PC = 0x93824992297775 *)
#retq                                           #! 0x93824992297775 = 0x93824992297775;

mov c0 L0x7fffffffdb70;
mov c1 L0x7fffffffdb78;
mov c2 L0x7fffffffdb80;
mov c3 L0x7fffffffdb88;

{
  true
  &&
  and[eqmod
  	  limbs 64 [x0, x1, x2, x3] + limbs 64 [y0, y1, y2, y3]
	  limbs 64 [c0, c1, c2, c3]
	  limbs 64 [m0, m1, m2, m3],
      limbs 64 [c0, c1, c2, c3] <u limbs 64 [m0, m1, m2, m3]
      ]
}

