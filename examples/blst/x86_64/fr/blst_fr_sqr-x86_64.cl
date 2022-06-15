(* quine: -v blst_fr_sqr-x86_64.cl
Parsing Cryptoline file:                [OK]            0.004287 seconds
Checking well-formedness:               [OK]            0.001145 seconds
Transforming to SSA form:               [OK]            0.000164 seconds
Normalizing specification:              [OK]            0.000232 seconds
Rewriting assignments:                  [OK]            0.000149 seconds
Verifying program safety:               [OK]            0.038239 seconds
Verifying range assertions:             [OK]            575.575906 seconds
Verifying range specification:          [OK]            2.467369 seconds
Rewriting value-preserved casting:      [OK]            0.000089 seconds
Verifying algebraic assertions:         [OK]            0.394199 seconds
Verifying algebraic specification:      [OK]            0.201097 seconds
Verification result:                    [OK]            578.683425 seconds
*)

proc main (uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 m0, uint64 m1, uint64 m2, uint64 m3, uint64 n0) =
{
  and[
	  m0 = 0xffffffff00000001,
	  m1 = 0x53bda402fffe5bfe,
	  m2 = 0x3339d80809a1d805,
	  m3 = 0x73eda753299d7d48,
      eqmod m0 1 2,
      eqmod (1 + m0 * n0) 0 (2**64)
  ]
  &&
  and[
	  m0 = 0xffffffff00000001@64,
	  m1 = 0x53bda402fffe5bfe@64,
	  m2 = 0x3339d80809a1d805@64,
	  m3 = 0x73eda753299d7d48@64,
	  eqmod m0 (1@64) (2@64),
      add 1@64 (mul m0 n0) = 0@64,
      limbs 64 [x0, x1, x2, x3] <u limbs 64 [m0, m1, m2, m3]
  ]
}

mov L0x7fffffffdb30 x0;
mov L0x7fffffffdb38 x1;
mov L0x7fffffffdb40 x2;
mov L0x7fffffffdb48 x3;

mov r8 n0;

(* prime *)
mov L0x55555556c660 m0;
mov L0x55555556c668 m1;
mov L0x55555556c670 m2;
mov L0x55555556c678 m3;


(* #callq  0x5555555679e0 <sqrx_mont_sparse_256>   #! PC = 0x93824992297936 *)
#callq  0x5555555679e0 <sqrx_mont_sparse_256>   #! 0x93824992297936 = 0x93824992297936;
(* mov    (%rsi),%rdx                              #! EA = L0x7fffffffdb30; Value = 0x000009c0000009c0; PC = 0x93824992311803 *)
mov rdx L0x7fffffffdb30;
(* mov    0x8(%rsi),%r15                           #! EA = L0x7fffffffdb38; Value = 0x000009c0000009c0; PC = 0x93824992311806 *)
mov r15 L0x7fffffffdb38;
(* mov    0x10(%rsi),%rbp                          #! EA = L0x7fffffffdb40; Value = 0x000009c0000009c0; PC = 0x93824992311810 *)
mov rbp L0x7fffffffdb40;
(* mov    0x18(%rsi),%r9                           #! EA = L0x7fffffffdb48; Value = 0x000009c0000009c0; PC = 0x93824992311814 *)
mov r9 L0x7fffffffdb48;
(* mulx   %rdx,%rax,%r11                           #! PC = 0x93824992311826 *)
umull r11 rax rdx rdx;
(* #callq  0x555555567a60 <__mulx_mont_sparse_256> #! PC = 0x93824992311831 *)
#callq  0x555555567a60 <__mulx_mont_sparse_256> #! 0x93824992311831 = 0x93824992311831;
(* mulx   %r15,%r15,%r12                           #! PC = 0x93824992311908 *)
umull r12 r15 r15 rdx;
(* mulx   %rbp,%rbp,%r13                           #! PC = 0x93824992311913 *)
umull r13 rbp rbp rdx;
(* add    %r15,%r11                                #! PC = 0x93824992311918 *)
adds carry r11 r15 r11;
(* mulx   %r9,%r9,%r14                             #! PC = 0x93824992311921 *)
umull r14 r9 r9 rdx;
(* mov    0x8(%rbx),%rdx                           #! EA = L0x7fffffffdb38; Value = 0x000009c0000009c0; PC = 0x93824992311926 *)
mov rdx L0x7fffffffdb38;
(* adc    %rbp,%r12                                #! PC = 0x93824992311930 *)
adcs carry r12 rbp r12 carry;
(* adc    %r9,%r13                                 #! PC = 0x93824992311933 *)
adcs carry r13 r9 r13 carry;
(* adc    $0x0,%r14                                #! PC = 0x93824992311936 *)
adcs carry r14 0@uint64 r14 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rax,%r10                                #! PC = 0x93824992311940 *)
mov r10 rax;
(* imul   %r8,%rax                                 #! PC = 0x93824992311943 *)
umull dontcare rax r8 rax;
(* xor    %r15,%r15                                #! PC = 0x93824992311947 *)
mov r15 0@uint64;
(* mulx   0x80(%rsi),%rbp,%r9                      #! EA = L0x7fffffffdb30; Value = 0x000009c0000009c0; PC = 0x93824992311950 *)
umull r9 rbp L0x7fffffffdb30 rdx;

mov OF 0@uint1;

(* adox   %rbp,%r11                                #! PC = 0x93824992311959 *)
adcs OF r11 rbp r11 OF;
(* adcx   %r9,%r12                                 #! PC = 0x93824992311965 *)
adcs carry r12 r9 r12 carry;
(* mulx   0x88(%rsi),%rbp,%r9                      #! EA = L0x7fffffffdb38; Value = 0x000009c0000009c0; PC = 0x93824992311971 *)
umull r9 rbp L0x7fffffffdb38 rdx;
(* adox   %rbp,%r12                                #! PC = 0x93824992311980 *)
adcs OF r12 rbp r12 OF;
(* adcx   %r9,%r13                                 #! PC = 0x93824992311986 *)
adcs carry r13 r9 r13 carry;
(* mulx   0x90(%rsi),%rbp,%r9                      #! EA = L0x7fffffffdb40; Value = 0x000009c0000009c0; PC = 0x93824992311992 *)
umull r9 rbp L0x7fffffffdb40 rdx;
(* adox   %rbp,%r13                                #! PC = 0x93824992312001 *)
adcs OF r13 rbp r13 OF;
(* adcx   %r9,%r14                                 #! PC = 0x93824992312007 *)
adcs carry r14 r9 r14 carry;
(* mulx   0x98(%rsi),%rbp,%r9                      #! EA = L0x7fffffffdb48; Value = 0x000009c0000009c0; PC = 0x93824992312013 *)
umull r9 rbp L0x7fffffffdb48 rdx;
(* mov    %rax,%rdx                                #! PC = 0x93824992312022 *)
mov rdx rax;
(* adox   %rbp,%r14                                #! PC = 0x93824992312025 *)
adcs OF r14 rbp r14 OF;
(* adcx   %r15,%r9                                 #! PC = 0x93824992312031 *)
adcs carry r9 r15 r9 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r9,%r15                                 #! PC = 0x93824992312037 *)
adcs OF r15 r9 r15 OF;
assert true && OF = 0@1;
assume OF = 0 && true;
(* mulx   0x80(%rcx),%rbp,%rax                     #! EA = L0x55555556c660; Value = 0xffffffff00000001; PC = 0x93824992312043 *)
umull rax rbp L0x55555556c660 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x93824992312052 *)
adcs carry r10 rbp r10 carry;

(* NOTE: Montgomery reduction *)
assert eqmod r10 0 (2**64) && true;
assume r10 = 0 && r10 = 0@64;

(* adox   %r11,%rax                                #! PC = 0x93824992312058 *)
adcs OF rax r11 rax OF;
(* mulx   0x88(%rcx),%rbp,%r9                      #! EA = L0x55555556c668; Value = 0x53bda402fffe5bfe; PC = 0x93824992312064 *)
umull r9 rbp L0x55555556c668 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x93824992312073 *)
adcs carry rax rbp rax carry;
(* adox   %r9,%r12                                 #! PC = 0x93824992312079 *)
adcs OF r12 r9 r12 OF;
(* mulx   0x90(%rcx),%rbp,%r9                      #! EA = L0x55555556c670; Value = 0x3339d80809a1d805; PC = 0x93824992312085 *)
umull r9 rbp L0x55555556c670 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x93824992312094 *)
adcs carry r12 rbp r12 carry;
(* adox   %r9,%r13                                 #! PC = 0x93824992312100 *)
adcs OF r13 r9 r13 OF;
(* mulx   0x98(%rcx),%rbp,%r9                      #! EA = L0x55555556c678; Value = 0x73eda753299d7d48; PC = 0x93824992312106 *)
umull r9 rbp L0x55555556c678 rdx;
(* mov    0x10(%rbx),%rdx                          #! EA = L0x7fffffffdb40; Value = 0x000009c0000009c0; PC = 0x93824992312115 *)
mov rdx L0x7fffffffdb40;
(* adcx   %rbp,%r13                                #! PC = 0x93824992312119 *)
adcs carry r13 rbp r13 carry;
(* adox   %r9,%r14                                 #! PC = 0x93824992312125 *)
adcs OF r14 r9 r14 OF;
(* adcx   %r10,%r14                                #! PC = 0x93824992312131 *)
adcs carry r14 r10 r14 carry;
(* adox   %r10,%r15                                #! PC = 0x93824992312137 *)
adcs OF r15 r10 r15 OF;
assert true && OF = 0@1;
assume OF = 0 && true;
(* adcx   %r10,%r15                                #! PC = 0x93824992312143 *)
adcs carry r15 r10 r15 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r10,%r10                                #! PC = 0x93824992312149 *)
adcs OF r10 r10 r10 OF;
assert true && OF = 0@1;
assume OF = 0 && true;
(* adc    $0x0,%r10                                #! PC = 0x93824992312155 *)
adcs carry r10 0@uint64 r10 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rax,%r11                                #! PC = 0x93824992312159 *)
mov r11 rax;
(* imul   %r8,%rax                                 #! PC = 0x93824992312162 *)
umull dontcare rax r8 rax;
(* xor    %rbp,%rbp                                #! PC = 0x93824992312166 *)
mov rbp 0@uint64;
(* mulx   0x80(%rsi),%rbp,%r9                      #! EA = L0x7fffffffdb30; Value = 0x000009c0000009c0; PC = 0x93824992312169 *)
umull r9 rbp L0x7fffffffdb30 rdx;
(* adox   %rbp,%r12                                #! PC = 0x93824992312178 *)
adcs OF r12 rbp r12 OF;
(* adcx   %r9,%r13                                 #! PC = 0x93824992312184 *)
adcs carry r13 r9 r13 carry;
(* mulx   0x88(%rsi),%rbp,%r9                      #! EA = L0x7fffffffdb38; Value = 0x000009c0000009c0; PC = 0x93824992312190 *)
umull r9 rbp L0x7fffffffdb38 rdx;
(* adox   %rbp,%r13                                #! PC = 0x93824992312199 *)
adcs OF r13 rbp r13 OF;
(* adcx   %r9,%r14                                 #! PC = 0x93824992312205 *)
adcs carry r14 r9 r14 carry;
(* mulx   0x90(%rsi),%rbp,%r9                      #! EA = L0x7fffffffdb40; Value = 0x000009c0000009c0; PC = 0x93824992312211 *)
umull r9 rbp L0x7fffffffdb40 rdx;
(* adox   %rbp,%r14                                #! PC = 0x93824992312220 *)
adcs OF r14 rbp r14 OF;
(* adcx   %r9,%r15                                 #! PC = 0x93824992312226 *)
adcs carry r15 r9 r15 carry;
(* mulx   0x98(%rsi),%rbp,%r9                      #! EA = L0x7fffffffdb48; Value = 0x000009c0000009c0; PC = 0x93824992312232 *)
umull r9 rbp L0x7fffffffdb48 rdx;
(* mov    %rax,%rdx                                #! PC = 0x93824992312241 *)
mov rdx rax;
(* adox   %rbp,%r15                                #! PC = 0x93824992312244 *)
adcs OF r15 rbp r15 OF;
(* adcx   %r10,%r9                                 #! PC = 0x93824992312250 *)
adcs carry r9 r10 r9 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r9,%r10                                 #! PC = 0x93824992312256 *)
adcs OF r10 r9 r10 OF;
assert true && OF = 0@1;
assume OF = 0 && true;
(* mulx   0x80(%rcx),%rbp,%rax                     #! EA = L0x55555556c660; Value = 0xffffffff00000001; PC = 0x93824992312262 *)
umull rax rbp L0x55555556c660 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x93824992312271 *)
adcs carry r11 rbp r11 carry;

(* NOTE: Montgomery reduction *)
assert eqmod r11 0 (2**64) && true;
assume r11 = 0 && r11 = 0@64;

(* adox   %r12,%rax                                #! PC = 0x93824992312277 *)
adcs OF rax r12 rax OF;
(* mulx   0x88(%rcx),%rbp,%r9                      #! EA = L0x55555556c668; Value = 0x53bda402fffe5bfe; PC = 0x93824992312283 *)
umull r9 rbp L0x55555556c668 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x93824992312292 *)
adcs carry rax rbp rax carry;
(* adox   %r9,%r13                                 #! PC = 0x93824992312298 *)
adcs OF r13 r9 r13 OF;
(* mulx   0x90(%rcx),%rbp,%r9                      #! EA = L0x55555556c670; Value = 0x3339d80809a1d805; PC = 0x93824992312304 *)
umull r9 rbp L0x55555556c670 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x93824992312313 *)
adcs carry r13 rbp r13 carry;
(* adox   %r9,%r14                                 #! PC = 0x93824992312319 *)
adcs OF r14 r9 r14 OF;
(* mulx   0x98(%rcx),%rbp,%r9                      #! EA = L0x55555556c678; Value = 0x73eda753299d7d48; PC = 0x93824992312325 *)
umull r9 rbp L0x55555556c678 rdx;
(* mov    0x18(%rbx),%rdx                          #! EA = L0x7fffffffdb48; Value = 0x000009c0000009c0; PC = 0x93824992312334 *)
mov rdx L0x7fffffffdb48;
(* adcx   %rbp,%r14                                #! PC = 0x93824992312338 *)
adcs carry r14 rbp r14 carry;
(* adox   %r9,%r15                                 #! PC = 0x93824992312344 *)
adcs OF r15 r9 r15 OF;
(* adcx   %r11,%r15                                #! PC = 0x93824992312350 *)
adcs carry r15 r11 r15 carry;
(* adox   %r11,%r10                                #! PC = 0x93824992312356 *)
adcs OF r10 r11 r10 OF;
assert true && OF = 0@1;
assume OF = 0 && true;
(* adcx   %r11,%r10                                #! PC = 0x93824992312362 *)
adcs carry r10 r11 r10 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r11,%r11                                #! PC = 0x93824992312368 *)
adcs OF r11 r11 r11 OF;
assert true && OF = 0@1;
assume OF = 0 && true;
(* adc    $0x0,%r11                                #! PC = 0x93824992312374 *)
adcs carry r11 0@uint64 r11 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rax,%r12                                #! PC = 0x93824992312378 *)
mov r12 rax;
(* imul   %r8,%rax                                 #! PC = 0x93824992312381 *)
umull dontcare rax r8 rax;
(* xor    %rbp,%rbp                                #! PC = 0x93824992312385 *)
mov rbp 0@uint64;
(* mulx   0x80(%rsi),%rbp,%r9                      #! EA = L0x7fffffffdb30; Value = 0x000009c0000009c0; PC = 0x93824992312388 *)
umull r9 rbp L0x7fffffffdb30 rdx;
(* adox   %rbp,%r13                                #! PC = 0x93824992312397 *)
adcs OF r13 rbp r13 OF;
(* adcx   %r9,%r14                                 #! PC = 0x93824992312403 *)
adcs carry r14 r9 r14 carry;
(* mulx   0x88(%rsi),%rbp,%r9                      #! EA = L0x7fffffffdb38; Value = 0x000009c0000009c0; PC = 0x93824992312409 *)
umull r9 rbp L0x7fffffffdb38 rdx;
(* adox   %rbp,%r14                                #! PC = 0x93824992312418 *)
adcs OF r14 rbp r14 OF;
(* adcx   %r9,%r15                                 #! PC = 0x93824992312424 *)
adcs carry r15 r9 r15 carry;
(* mulx   0x90(%rsi),%rbp,%r9                      #! EA = L0x7fffffffdb40; Value = 0x000009c0000009c0; PC = 0x93824992312430 *)
umull r9 rbp L0x7fffffffdb40 rdx;
(* adox   %rbp,%r15                                #! PC = 0x93824992312439 *)
adcs OF r15 rbp r15 OF;
(* adcx   %r9,%r10                                 #! PC = 0x93824992312445 *)
adcs carry r10 r9 r10 carry;
(* mulx   0x98(%rsi),%rbp,%r9                      #! EA = L0x7fffffffdb48; Value = 0x000009c0000009c0; PC = 0x93824992312451 *)
umull r9 rbp L0x7fffffffdb48 rdx;
(* mov    %rax,%rdx                                #! PC = 0x93824992312460 *)
mov rdx rax;
(* adox   %rbp,%r10                                #! PC = 0x93824992312463 *)
adcs OF r10 rbp r10 OF;
(* adcx   %r11,%r9                                 #! PC = 0x93824992312469 *)
adcs carry r9 r11 r9 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r9,%r11                                 #! PC = 0x93824992312475 *)
adcs OF r11 r9 r11 OF;
assert true && OF = 0@1;
assume OF = 0 && true;
(* mulx   0x80(%rcx),%rbp,%rax                     #! EA = L0x55555556c660; Value = 0xffffffff00000001; PC = 0x93824992312481 *)
umull rax rbp L0x55555556c660 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x93824992312490 *)
adcs carry r12 rbp r12 carry;

(* NOTE: Montgomery reduction *)
assert eqmod r12 0 (2**64) && true;
assume r12 = 0 && r12 = 0@64;

(* adox   %r13,%rax                                #! PC = 0x93824992312496 *)
adcs OF rax r13 rax OF;
(* mulx   0x88(%rcx),%rbp,%r9                      #! EA = L0x55555556c668; Value = 0x53bda402fffe5bfe; PC = 0x93824992312502 *)
umull r9 rbp L0x55555556c668 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x93824992312511 *)
adcs carry rax rbp rax carry;
(* adox   %r9,%r14                                 #! PC = 0x93824992312517 *)
adcs OF r14 r9 r14 OF;
(* mulx   0x90(%rcx),%rbp,%r9                      #! EA = L0x55555556c670; Value = 0x3339d80809a1d805; PC = 0x93824992312523 *)
umull r9 rbp L0x55555556c670 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x93824992312532 *)
adcs carry r14 rbp r14 carry;
(* adox   %r9,%r15                                 #! PC = 0x93824992312538 *)
adcs OF r15 r9 r15 OF;
(* mulx   0x98(%rcx),%rbp,%r9                      #! EA = L0x55555556c678; Value = 0x73eda753299d7d48; PC = 0x93824992312544 *)
umull r9 rbp L0x55555556c678 rdx;
(* mov    %rax,%rdx                                #! PC = 0x93824992312553 *)
mov rdx rax;
(* adcx   %rbp,%r15                                #! PC = 0x93824992312556 *)
adcs carry r15 rbp r15 carry;
(* adox   %r9,%r10                                 #! PC = 0x93824992312562 *)
adcs OF r10 r9 r10 OF;
(* adcx   %r12,%r10                                #! PC = 0x93824992312568 *)
adcs carry r10 r12 r10 carry;
(* adox   %r12,%r11                                #! PC = 0x93824992312574 *)
adcs OF r11 r12 r11 OF;
(* adcx   %r12,%r11                                #! PC = 0x93824992312580 *)
adcs carry r11 r12 r11 carry;
(* adox   %r12,%r12                                #! PC = 0x93824992312586 *)
adcs OF r12 r12 r12 OF;
assert true && OF = 0@1;
assume OF = 0 && true;
(* adc    $0x0,%r12                                #! PC = 0x93824992312592 *)
adcs carry r12 0@uint64 r12 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* imul   %r8,%rdx                                 #! PC = 0x93824992312596 *)
umull dontcare rdx r8 rdx;
(* xor    %rbp,%rbp                                #! PC = 0x93824992312600 *)
mov rbp 0@uint64;
(* mulx   0x80(%rcx),%r13,%r9                      #! EA = L0x55555556c660; Value = 0xffffffff00000001; PC = 0x93824992312603 *)
umull r9 r13 L0x55555556c660 rdx;
(* adcx   %rax,%r13                                #! PC = 0x93824992312612 *)
adcs carry r13 rax r13 carry;

(* NOTE: Montgomery reduction *)
assert eqmod r13 0 (2**64) && true;
assume r13 = 0 && r13 = 0@64;

(* adox   %r9,%r14                                 #! PC = 0x93824992312618 *)
adcs OF r14 r9 r14 OF;
(* mulx   0x88(%rcx),%rbp,%r9                      #! EA = L0x55555556c668; Value = 0x53bda402fffe5bfe; PC = 0x93824992312624 *)
umull r9 rbp L0x55555556c668 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x93824992312633 *)
adcs carry r14 rbp r14 carry;
(* adox   %r9,%r15                                 #! PC = 0x93824992312639 *)
adcs OF r15 r9 r15 OF;
(* mulx   0x90(%rcx),%rbp,%r9                      #! EA = L0x55555556c670; Value = 0x3339d80809a1d805; PC = 0x93824992312645 *)
umull r9 rbp L0x55555556c670 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x93824992312654 *)
adcs carry r15 rbp r15 carry;
(* adox   %r9,%r10                                 #! PC = 0x93824992312660 *)
adcs OF r10 r9 r10 OF;
(* mulx   0x98(%rcx),%rbp,%r9                      #! EA = L0x55555556c678; Value = 0x73eda753299d7d48; PC = 0x93824992312666 *)
umull r9 rbp L0x55555556c678 rdx;
(* mov    %r14,%rdx                                #! PC = 0x93824992312675 *)
mov rdx r14;
(* lea    0x80(%rcx),%rcx                          #! PC = 0x93824992312678 *)
#lea    %%EA,%%rcx                          #! 0x93824992312678 = 0x93824992312678;
(* adcx   %rbp,%r10                                #! PC = 0x93824992312685 *)
adcs carry r10 rbp r10 carry;
(* adox   %r9,%r11                                 #! PC = 0x93824992312691 *)
adcs OF r11 r9 r11 OF;
(* mov    %r15,%rax                                #! PC = 0x93824992312697 *)
mov rax r15;
(* adcx   %r13,%r11                                #! PC = 0x93824992312700 *)
adcs carry r11 r13 r11 carry;
(* adox   %r13,%r12                                #! PC = 0x93824992312706 *)
adcs OF r12 r13 r12 OF;
assert true && OF = 0@1;
assume OF = 0 && true;
(* adc    $0x0,%r12                                #! PC = 0x93824992312712 *)
adcs carry r12 0@uint64 r12 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r10,%rbp                                #! PC = 0x93824992312716 *)
mov rbp r10;


mov q0 r14;
mov q1 r15;
mov q2 r10;
mov q3 r11;
mov q4 r12;


assert true && or[q4 = 0@64, q4 = 1@64];
assert true && (limbs 64 [q0, q1, q2, q3, q4] <u 2@320 * (limbs 64 [m0, m1, m2, m3, 0@64]));
assume true && (limbs 64 [q0, q1, q2, q3, q4] <u 2@320 * (limbs 64 [m0, m1, m2, m3, 0@64]));


assert eqmod (limbs 64 [0, 0, 0, 0, q0, q1, q2, q3, q4])
             ((limbs 64 [x0, x1, x2, x3]) * (limbs 64 [x0, x1, x2, x3]))
             (limbs 64 [m0, m1, m2, m3]) && true;


(* sub    (%rcx),%r14                              #! EA = L0x55555556c660; Value = 0xffffffff00000001; PC = 0x93824992312719 *)
subb carry r14 r14 L0x55555556c660;
(* sbb    0x8(%rcx),%r15                           #! EA = L0x55555556c668; Value = 0x53bda402fffe5bfe; PC = 0x93824992312722 *)
sbbs carry r15 r15 L0x55555556c668 carry;
(* sbb    0x10(%rcx),%r10                          #! EA = L0x55555556c670; Value = 0x3339d80809a1d805; PC = 0x93824992312726 *)
sbbs carry r10 r10 L0x55555556c670 carry;
(* mov    %r11,%r9                                 #! PC = 0x93824992312730 *)
mov r9 r11;
(* sbb    0x18(%rcx),%r11                          #! EA = L0x55555556c678; Value = 0x73eda753299d7d48; PC = 0x93824992312733 *)
sbbs carry r11 r11 L0x55555556c678 carry;
(* sbb    $0x0,%r12                                #! PC = 0x93824992312737 *)
sbbs carry r12 r12 0@uint64 carry;
(* cmovb  %rdx,%r14                                #! PC = 0x93824992312741 *)
cmov r14 carry rdx r14;
(* cmovb  %rax,%r15                                #! PC = 0x93824992312745 *)
cmov r15 carry rax r15;
(* cmovb  %rbp,%r10                                #! PC = 0x93824992312749 *)
cmov r10 carry rbp r10;
(* mov    %r14,(%rdi)                              #! EA = L0x7fffffffdb70; PC = 0x93824992312753 *)
mov L0x7fffffffdb70 r14;
(* cmovb  %r9,%r11                                 #! PC = 0x93824992312756 *)
cmov r11 carry r9 r11;
(* mov    %r15,0x8(%rdi)                           #! EA = L0x7fffffffdb78; PC = 0x93824992312760 *)
mov L0x7fffffffdb78 r15;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffdb80; PC = 0x93824992312764 *)
mov L0x7fffffffdb80 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffdb88; PC = 0x93824992312768 *)
mov L0x7fffffffdb88 r11;
(* #retq                                           #! PC = 0x93824992297945 *)
#retq                                           #! 0x93824992297945 = 0x93824992297945;


mov c0 L0x7fffffffdb70;
mov c1 L0x7fffffffdb78;
mov c2 L0x7fffffffdb80;
mov c3 L0x7fffffffdb88;


assert true &&
       eqmod (limbs 64 [q0, q1, q2, q3, q4])
             (limbs 64 [c0, c1, c2, c3, 0@64])
             (limbs 64 [m0, m1, m2, m3, 0@64]);

assume eqmod (limbs 64 [q0, q1, q2, q3, q4])
             (limbs 64 [c0, c1, c2, c3, 0])
             (limbs 64 [m0, m1, m2, m3, 0]) && true;


{
  eqmod (limbs 64 [0, 0, 0, 0, c0, c1, c2, c3])
        ((limbs 64 [x0, x1, x2, x3]) * (limbs 64 [x0, x1, x2, x3]))
        (limbs 64 [m0, m1, m2, m3])
&&
  limbs 64 [c0, c1, c2, c3] <u limbs 64 [m0, m1, m2, m3]
}

