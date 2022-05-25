(* quine: -v from_fp.cl
Parsing Cryptoline file:                [OK]            0.006896 seconds
Checking well-formedness:               [OK]            0.001296 seconds
Transforming to SSA form:               [OK]            0.000418 seconds
Normalizing specification:              [OK]            0.000692 seconds
Rewriting assignments:                  [OK]            0.000286 seconds
Verifying program safety:               [OK]            0.044839 seconds
Verifying range assertions:             [OK]            368.441010 seconds
Verifying range specification:          [OK]            5.034580 seconds
Rewriting value-preserved casting:      [OK]            0.000142 seconds
Verifying algebraic assertions:         [OK]            1.193858 seconds
Verifying algebraic specification:      [OK]            2.529788 seconds
Verification result:                    [OK]            377.254950 seconds
*)

proc main (uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 x4, uint64 x5, uint64 m0, uint64 m1, uint64 m2, uint64 m3, uint64 m4, uint64 m5, uint64 n0) =
{
  and[
    	 m0 = 0xb9feffffffffaaab,
         m1 = 0x1eabfffeb153ffff,
         m2 = 0x6730d2a0f6b0f624,
         m3 = 0x64774b84f38512bf,
         m4 = 0x4b1ba7b6434bacd7,
         m5 = 0x1a0111ea397fe69a,
    	 n0 = 0x89f3fffcfffcfffd,
    	 eqmod m0 1 2,
    	 eqmod (1 + m0 * n0) 0 (2**64)
  ]
  &&
  and
	[
	 m0 = 0xb9feffffffffaaab@64,
	 m1 = 0x1eabfffeb153ffff@64,
	 m2 = 0x6730d2a0f6b0f624@64,
	 m3 = 0x64774b84f38512bf@64,
	 m4 = 0x4b1ba7b6434bacd7@64,
	 m5 = 0x1a0111ea397fe69a@64,
	 n0 = 0x89f3fffcfffcfffd@64,
	 eqmod m0 (1@64) (2@64),
     add 1@64 (mul m0 n0) = 0@64,
     limbs 64 [x0, x1, x2, x3, x4, x5] <u limbs 64 [m0, m1, m2, m3, m4, m5]
  	]
}

mov L0x7fffffffda90 x0;
mov L0x7fffffffda98 x1;
mov L0x7fffffffdaa0 x2;
mov L0x7fffffffdaa8 x3;
mov L0x7fffffffdab0 x4;
mov L0x7fffffffdab8 x5;

(* prime *)
mov L0x55555556e4c0 m0;
mov L0x55555556e4c8 m1;
mov L0x55555556e4d0 m2;
mov L0x55555556e4d8 m3;
mov L0x55555556e4e0 m4;
mov L0x55555556e4e8 m5;


(* movabs $0x89f3fffcfffcfffd,%rdx                 #! PC = 0x93824992242317 *)
mov rdx 0x89f3fffcfffcfffd@uint64;
(* mov    %rdx,%rcx                                #! PC = 0x93824992242335 *)
mov rcx rdx;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffda90; Value = 0x0000000000000000; PC = 0x93824992314980 *)
mov rax L0x7fffffffda90;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffda98; Value = 0x0000000000000000; PC = 0x93824992314983 *)
mov r9 L0x7fffffffda98;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffdaa0; Value = 0x0000000000000001; PC = 0x93824992314987 *)
mov r10 L0x7fffffffdaa0;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffdaa8; Value = 0x0000000103ae75f6; PC = 0x93824992314991 *)
mov r11 L0x7fffffffdaa8;
(* mov    0x20(%rsi),%r12                          #! EA = L0x7fffffffdab0; Value = 0x0000000000000000; PC = 0x93824992314995 *)
mov r12 L0x7fffffffdab0;
(* mov    0x28(%rsi),%r13                          #! EA = L0x7fffffffdab8; Value = 0x0000000000000000; PC = 0x93824992314999 *)
mov r13 L0x7fffffffdab8;
(* mov    %rax,%r14                                #! PC = 0x93824992315003 *)
mov r14 rax;
(* imul   %rcx,%rax                                #! PC = 0x93824992315006 *)
umull dontcare rax rcx rax;
(* mov    %rax,%r8                                 #! PC = 0x93824992315010 *)
mov r8 rax;
(* mulq   (%rbx)                                   #! EA = L0x55555556e4c0; PC = 0x93824992315013 *)
umull rdx rax L0x55555556e4c0 rax;
(* add    %rax,%r14                                #! PC = 0x93824992315016 *)
adds carry r14 rax r14;

(* NOTE: Montgomery reduction *)
assert eqmod r14 0 (2**64) && true;
assume r14 = 0 && r14 = 0@64;

(* mov    %r8,%rax                                 #! PC = 0x93824992315019 *)
mov rax r8;
(* adc    %rdx,%r14                                #! PC = 0x93824992315022 *)
adcs carry r14 rdx r14 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mulq   0x8(%rbx)                                #! EA = L0x55555556e4c8; PC = 0x93824992315025 *)
umull rdx rax L0x55555556e4c8 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992315029 *)
adds carry r9 rax r9;
(* mov    %r8,%rax                                 #! PC = 0x93824992315032 *)
mov rax r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315035 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r14,%r9                                 #! PC = 0x93824992315039 *)
adds carry r9 r14 r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315042 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r14                                #! PC = 0x93824992315046 *)
mov r14 rdx;
(* mulq   0x10(%rbx)                               #! EA = L0x55555556e4d0; PC = 0x93824992315049 *)
umull rdx rax L0x55555556e4d0 rax;
(* add    %rax,%r10                                #! PC = 0x93824992315053 *)
adds carry r10 rax r10;
(* mov    %r8,%rax                                 #! PC = 0x93824992315056 *)
mov rax r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315059 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r14,%r10                                #! PC = 0x93824992315063 *)
adds carry r10 r14 r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315066 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r14                                #! PC = 0x93824992315070 *)
mov r14 rdx;
(* mulq   0x18(%rbx)                               #! EA = L0x55555556e4d8; PC = 0x93824992315073 *)
umull rdx rax L0x55555556e4d8 rax;
(* add    %rax,%r11                                #! PC = 0x93824992315077 *)
adds carry r11 rax r11;
(* mov    %r8,%rax                                 #! PC = 0x93824992315080 *)
mov rax r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315083 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r9,%r15                                 #! PC = 0x93824992315087 *)
mov r15 r9;
(* imul   %rcx,%r9                                 #! PC = 0x93824992315090 *)
umull dontcare r9 rcx r9;
(* add    %r14,%r11                                #! PC = 0x93824992315094 *)
adds carry r11 r14 r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315097 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r14                                #! PC = 0x93824992315101 *)
mov r14 rdx;
(* mulq   0x20(%rbx)                               #! EA = L0x55555556e4e0; PC = 0x93824992315104 *)
umull rdx rax L0x55555556e4e0 rax;
(* add    %rax,%r12                                #! PC = 0x93824992315108 *)
adds carry r12 rax r12;
(* mov    %r8,%rax                                 #! PC = 0x93824992315111 *)
mov rax r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315114 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r14,%r12                                #! PC = 0x93824992315118 *)
adds carry r12 r14 r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315121 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r14                                #! PC = 0x93824992315125 *)
mov r14 rdx;
(* mulq   0x28(%rbx)                               #! EA = L0x55555556e4e8; PC = 0x93824992315128 *)
umull rdx rax L0x55555556e4e8 rax;
(* add    %rax,%r13                                #! PC = 0x93824992315132 *)
adds carry r13 rax r13;
(* mov    %r9,%rax                                 #! PC = 0x93824992315135 *)
mov rax r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315138 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r14,%r13                                #! PC = 0x93824992315142 *)
adds carry r13 r14 r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315145 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r14                                #! PC = 0x93824992315149 *)
mov r14 rdx;
(* mulq   (%rbx)                                   #! EA = L0x55555556e4c0; PC = 0x93824992315152 *)
umull rdx rax L0x55555556e4c0 rax;
(* add    %rax,%r15                                #! PC = 0x93824992315155 *)
adds carry r15 rax r15;

(* NOTE: Montgomery reduction *)
assert eqmod r15 0 (2**64) && true;
assume r15 = 0 && r15 = 0@64;

(* mov    %r9,%rax                                 #! PC = 0x93824992315158 *)
mov rax r9;
(* adc    %rdx,%r15                                #! PC = 0x93824992315161 *)
adcs carry r15 rdx r15 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mulq   0x8(%rbx)                                #! EA = L0x55555556e4c8; PC = 0x93824992315164 *)
umull rdx rax L0x55555556e4c8 rax;
(* add    %rax,%r10                                #! PC = 0x93824992315168 *)
adds carry r10 rax r10;
(* mov    %r9,%rax                                 #! PC = 0x93824992315171 *)
mov rax r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315174 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r15,%r10                                #! PC = 0x93824992315178 *)
adds carry r10 r15 r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315181 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r15                                #! PC = 0x93824992315185 *)
mov r15 rdx;
(* mulq   0x10(%rbx)                               #! EA = L0x55555556e4d0; PC = 0x93824992315188 *)
umull rdx rax L0x55555556e4d0 rax;
(* add    %rax,%r11                                #! PC = 0x93824992315192 *)
adds carry r11 rax r11;
(* mov    %r9,%rax                                 #! PC = 0x93824992315195 *)
mov rax r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315198 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r15,%r11                                #! PC = 0x93824992315202 *)
adds carry r11 r15 r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315205 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r15                                #! PC = 0x93824992315209 *)
mov r15 rdx;
(* mulq   0x18(%rbx)                               #! EA = L0x55555556e4d8; PC = 0x93824992315212 *)
umull rdx rax L0x55555556e4d8 rax;
(* add    %rax,%r12                                #! PC = 0x93824992315216 *)
adds carry r12 rax r12;
(* mov    %r9,%rax                                 #! PC = 0x93824992315219 *)
mov rax r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315222 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r10,%r8                                 #! PC = 0x93824992315226 *)
mov r8 r10;
(* imul   %rcx,%r10                                #! PC = 0x93824992315229 *)
umull dontcare r10 rcx r10;
(* add    %r15,%r12                                #! PC = 0x93824992315233 *)
adds carry r12 r15 r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315236 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r15                                #! PC = 0x93824992315240 *)
mov r15 rdx;
(* mulq   0x20(%rbx)                               #! EA = L0x55555556e4e0; PC = 0x93824992315243 *)
umull rdx rax L0x55555556e4e0 rax;
(* add    %rax,%r13                                #! PC = 0x93824992315247 *)
adds carry r13 rax r13;
(* mov    %r9,%rax                                 #! PC = 0x93824992315250 *)
mov rax r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315253 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r15,%r13                                #! PC = 0x93824992315257 *)
adds carry r13 r15 r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315260 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r15                                #! PC = 0x93824992315264 *)
mov r15 rdx;
(* mulq   0x28(%rbx)                               #! EA = L0x55555556e4e8; PC = 0x93824992315267 *)
umull rdx rax L0x55555556e4e8 rax;
(* add    %rax,%r14                                #! PC = 0x93824992315271 *)
adds carry r14 rax r14;
(* mov    %r10,%rax                                #! PC = 0x93824992315274 *)
mov rax r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315277 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r15,%r14                                #! PC = 0x93824992315281 *)
adds carry r14 r15 r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315284 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r15                                #! PC = 0x93824992315288 *)
mov r15 rdx;
(* mulq   (%rbx)                                   #! EA = L0x55555556e4c0; PC = 0x93824992315291 *)
umull rdx rax L0x55555556e4c0 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992315294 *)
adds carry r8 rax r8;

(* NOTE: Montgomery reduction *)
assert eqmod r8 0 (2**64) && true;
assume r8 = 0 && r8 = 0@64;

(* mov    %r10,%rax                                #! PC = 0x93824992315297 *)
mov rax r10;
(* adc    %rdx,%r8                                 #! PC = 0x93824992315300 *)
adcs carry r8 rdx r8 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mulq   0x8(%rbx)                                #! EA = L0x55555556e4c8; PC = 0x93824992315303 *)
umull rdx rax L0x55555556e4c8 rax;
(* add    %rax,%r11                                #! PC = 0x93824992315307 *)
adds carry r11 rax r11;
(* mov    %r10,%rax                                #! PC = 0x93824992315310 *)
mov rax r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315313 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%r11                                 #! PC = 0x93824992315317 *)
adds carry r11 r8 r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315320 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992315324 *)
mov r8 rdx;
(* mulq   0x10(%rbx)                               #! EA = L0x55555556e4d0; PC = 0x93824992315327 *)
umull rdx rax L0x55555556e4d0 rax;
(* add    %rax,%r12                                #! PC = 0x93824992315331 *)
adds carry r12 rax r12;
(* mov    %r10,%rax                                #! PC = 0x93824992315334 *)
mov rax r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315337 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%r12                                 #! PC = 0x93824992315341 *)
adds carry r12 r8 r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315344 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992315348 *)
mov r8 rdx;
(* mulq   0x18(%rbx)                               #! EA = L0x55555556e4d8; PC = 0x93824992315351 *)
umull rdx rax L0x55555556e4d8 rax;
(* add    %rax,%r13                                #! PC = 0x93824992315355 *)
adds carry r13 rax r13;
(* mov    %r10,%rax                                #! PC = 0x93824992315358 *)
mov rax r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315361 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r11,%r9                                 #! PC = 0x93824992315365 *)
mov r9 r11;
(* imul   %rcx,%r11                                #! PC = 0x93824992315368 *)
umull dontcare r11 rcx r11;
(* add    %r8,%r13                                 #! PC = 0x93824992315372 *)
adds carry r13 r8 r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315375 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992315379 *)
mov r8 rdx;
(* mulq   0x20(%rbx)                               #! EA = L0x55555556e4e0; PC = 0x93824992315382 *)
umull rdx rax L0x55555556e4e0 rax;
(* add    %rax,%r14                                #! PC = 0x93824992315386 *)
adds carry r14 rax r14;
(* mov    %r10,%rax                                #! PC = 0x93824992315389 *)
mov rax r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315392 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%r14                                 #! PC = 0x93824992315396 *)
adds carry r14 r8 r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315399 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992315403 *)
mov r8 rdx;
(* mulq   0x28(%rbx)                               #! EA = L0x55555556e4e8; PC = 0x93824992315406 *)
umull rdx rax L0x55555556e4e8 rax;
(* add    %rax,%r15                                #! PC = 0x93824992315410 *)
adds carry r15 rax r15;
(* mov    %r11,%rax                                #! PC = 0x93824992315413 *)
mov rax r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315416 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%r15                                 #! PC = 0x93824992315420 *)
adds carry r15 r8 r15;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315423 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992315427 *)
mov r8 rdx;
(* mulq   (%rbx)                                   #! EA = L0x55555556e4c0; PC = 0x93824992315430 *)
umull rdx rax L0x55555556e4c0 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992315433 *)
adds carry r9 rax r9;

(* NOTE: Montgomery reduction *)
assert eqmod r9 0 (2**64) && true;
assume r9 = 0 && r9 = 0@64;

(* mov    %r11,%rax                                #! PC = 0x93824992315436 *)
mov rax r11;
(* adc    %rdx,%r9                                 #! PC = 0x93824992315439 *)
adcs carry r9 rdx r9 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mulq   0x8(%rbx)                                #! EA = L0x55555556e4c8; PC = 0x93824992315442 *)
umull rdx rax L0x55555556e4c8 rax;
(* add    %rax,%r12                                #! PC = 0x93824992315446 *)
adds carry r12 rax r12;
(* mov    %r11,%rax                                #! PC = 0x93824992315449 *)
mov rax r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315452 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r12                                 #! PC = 0x93824992315456 *)
adds carry r12 r9 r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315459 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992315463 *)
mov r9 rdx;
(* mulq   0x10(%rbx)                               #! EA = L0x55555556e4d0; PC = 0x93824992315466 *)
umull rdx rax L0x55555556e4d0 rax;
(* add    %rax,%r13                                #! PC = 0x93824992315470 *)
adds carry r13 rax r13;
(* mov    %r11,%rax                                #! PC = 0x93824992315473 *)
mov rax r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315476 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r13                                 #! PC = 0x93824992315480 *)
adds carry r13 r9 r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315483 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992315487 *)
mov r9 rdx;
(* mulq   0x18(%rbx)                               #! EA = L0x55555556e4d8; PC = 0x93824992315490 *)
umull rdx rax L0x55555556e4d8 rax;
(* add    %rax,%r14                                #! PC = 0x93824992315494 *)
adds carry r14 rax r14;
(* mov    %r11,%rax                                #! PC = 0x93824992315497 *)
mov rax r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315500 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r12,%r10                                #! PC = 0x93824992315504 *)
mov r10 r12;
(* imul   %rcx,%r12                                #! PC = 0x93824992315507 *)
umull dontcare r12 rcx r12;
(* add    %r9,%r14                                 #! PC = 0x93824992315511 *)
adds carry r14 r9 r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315514 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992315518 *)
mov r9 rdx;
(* mulq   0x20(%rbx)                               #! EA = L0x55555556e4e0; PC = 0x93824992315521 *)
umull rdx rax L0x55555556e4e0 rax;
(* add    %rax,%r15                                #! PC = 0x93824992315525 *)
adds carry r15 rax r15;
(* mov    %r11,%rax                                #! PC = 0x93824992315528 *)
mov rax r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315531 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r15                                 #! PC = 0x93824992315535 *)
adds carry r15 r9 r15;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315538 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992315542 *)
mov r9 rdx;
(* mulq   0x28(%rbx)                               #! EA = L0x55555556e4e8; PC = 0x93824992315545 *)
umull rdx rax L0x55555556e4e8 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992315549 *)
adds carry r8 rax r8;
(* mov    %r12,%rax                                #! PC = 0x93824992315552 *)
mov rax r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315555 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r8                                  #! PC = 0x93824992315559 *)
adds carry r8 r9 r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315562 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992315566 *)
mov r9 rdx;
(* mulq   (%rbx)                                   #! EA = L0x55555556e4c0; PC = 0x93824992315569 *)
umull rdx rax L0x55555556e4c0 rax;
(* add    %rax,%r10                                #! PC = 0x93824992315572 *)
adds carry r10 rax r10;

(* NOTE: Montgomery reduction *)
assert eqmod r10 0 (2**64) && true;
assume r10 = 0 && r10 = 0@64;

(* mov    %r12,%rax                                #! PC = 0x93824992315575 *)
mov rax r12;
(* adc    %rdx,%r10                                #! PC = 0x93824992315578 *)
adcs carry r10 rdx r10 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mulq   0x8(%rbx)                                #! EA = L0x55555556e4c8; PC = 0x93824992315581 *)
umull rdx rax L0x55555556e4c8 rax;
(* add    %rax,%r13                                #! PC = 0x93824992315585 *)
adds carry r13 rax r13;
(* mov    %r12,%rax                                #! PC = 0x93824992315588 *)
mov rax r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315591 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r13                                #! PC = 0x93824992315595 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315598 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992315602 *)
mov r10 rdx;
(* mulq   0x10(%rbx)                               #! EA = L0x55555556e4d0; PC = 0x93824992315605 *)
umull rdx rax L0x55555556e4d0 rax;
(* add    %rax,%r14                                #! PC = 0x93824992315609 *)
adds carry r14 rax r14;
(* mov    %r12,%rax                                #! PC = 0x93824992315612 *)
mov rax r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315615 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r14                                #! PC = 0x93824992315619 *)
adds carry r14 r10 r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315622 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992315626 *)
mov r10 rdx;
(* mulq   0x18(%rbx)                               #! EA = L0x55555556e4d8; PC = 0x93824992315629 *)
umull rdx rax L0x55555556e4d8 rax;
(* add    %rax,%r15                                #! PC = 0x93824992315633 *)
adds carry r15 rax r15;
(* mov    %r12,%rax                                #! PC = 0x93824992315636 *)
mov rax r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315639 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r13,%r11                                #! PC = 0x93824992315643 *)
mov r11 r13;
(* imul   %rcx,%r13                                #! PC = 0x93824992315646 *)
umull dontcare r13 rcx r13;
(* add    %r10,%r15                                #! PC = 0x93824992315650 *)
adds carry r15 r10 r15;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315653 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992315657 *)
mov r10 rdx;
(* mulq   0x20(%rbx)                               #! EA = L0x55555556e4e0; PC = 0x93824992315660 *)
umull rdx rax L0x55555556e4e0 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992315664 *)
adds carry r8 rax r8;
(* mov    %r12,%rax                                #! PC = 0x93824992315667 *)
mov rax r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315670 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r8                                 #! PC = 0x93824992315674 *)
adds carry r8 r10 r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315677 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992315681 *)
mov r10 rdx;
(* mulq   0x28(%rbx)                               #! EA = L0x55555556e4e8; PC = 0x93824992315684 *)
umull rdx rax L0x55555556e4e8 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992315688 *)
adds carry r9 rax r9;
(* mov    %r13,%rax                                #! PC = 0x93824992315691 *)
mov rax r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315694 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r9                                 #! PC = 0x93824992315698 *)
adds carry r9 r10 r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315701 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992315705 *)
mov r10 rdx;
(* mulq   (%rbx)                                   #! EA = L0x55555556e4c0; PC = 0x93824992315708 *)
umull rdx rax L0x55555556e4c0 rax;
(* add    %rax,%r11                                #! PC = 0x93824992315711 *)
adds carry r11 rax r11;

(* NOTE: Montgomery reduction *)
assert eqmod r11 0 (2**64) && true;
assume r11 = 0 && r11 = 0@64;

(* mov    %r13,%rax                                #! PC = 0x93824992315714 *)
mov rax r13;
(* adc    %rdx,%r11                                #! PC = 0x93824992315717 *)
adcs carry r11 rdx r11 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mulq   0x8(%rbx)                                #! EA = L0x55555556e4c8; PC = 0x93824992315720 *)
umull rdx rax L0x55555556e4c8 rax;
(* add    %rax,%r14                                #! PC = 0x93824992315724 *)
adds carry r14 rax r14;
(* mov    %r13,%rax                                #! PC = 0x93824992315727 *)
mov rax r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315730 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r14                                #! PC = 0x93824992315734 *)
adds carry r14 r11 r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315737 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992315741 *)
mov r11 rdx;
(* mulq   0x10(%rbx)                               #! EA = L0x55555556e4d0; PC = 0x93824992315744 *)
umull rdx rax L0x55555556e4d0 rax;
(* add    %rax,%r15                                #! PC = 0x93824992315748 *)
adds carry r15 rax r15;
(* mov    %r13,%rax                                #! PC = 0x93824992315751 *)
mov rax r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315754 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r15                                #! PC = 0x93824992315758 *)
adds carry r15 r11 r15;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315761 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992315765 *)
mov r11 rdx;
(* mulq   0x18(%rbx)                               #! EA = L0x55555556e4d8; PC = 0x93824992315768 *)
umull rdx rax L0x55555556e4d8 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992315772 *)
adds carry r8 rax r8;
(* mov    %r13,%rax                                #! PC = 0x93824992315775 *)
mov rax r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315778 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r8                                 #! PC = 0x93824992315782 *)
adds carry r8 r11 r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315785 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992315789 *)
mov r11 rdx;
(* mulq   0x20(%rbx)                               #! EA = L0x55555556e4e0; PC = 0x93824992315792 *)
umull rdx rax L0x55555556e4e0 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992315796 *)
adds carry r9 rax r9;
(* mov    %r13,%rax                                #! PC = 0x93824992315799 *)
mov rax r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315802 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r9                                 #! PC = 0x93824992315806 *)
adds carry r9 r11 r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315809 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992315813 *)
mov r11 rdx;
(* mulq   0x28(%rbx)                               #! EA = L0x55555556e4e8; PC = 0x93824992315816 *)
umull rdx rax L0x55555556e4e8 rax;
(* add    %rax,%r10                                #! PC = 0x93824992315820 *)
adds carry r10 rax r10;
(* mov    %r14,%rax                                #! PC = 0x93824992315823 *)
mov rax r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315826 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r10                                #! PC = 0x93824992315830 *)
adds carry r10 r11 r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992315833 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992315837 *)
mov r11 rdx;
(* #repz retq                                      #! PC = 0x93824992315840 *)
#repz retq                                      #! 0x93824992315840 = 0x93824992315840;


mov q0 r14;
mov q1 r15;
mov q2 r8;
mov q3 r9;
mov q4 r10;
mov q5 r11;

assert eqmod (limbs 64 [q0, q1, q2, q3, q4, q5] * (2**384))
             (limbs 64 [x0, x1, x2, x3, x4, x5])
             (limbs 64 [m0, m1, m2, m3, m4, m5]) && true;
assume true && eqmod
             (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64, q0, q1, q2, q3, q4, q5])
             (limbs 64 [x0, x1, x2, x3, x4, x5, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64])
             (limbs 64 [m0, m1, m2, m3, m4, m5, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64]);



(* mov    %r15,%rcx                                #! PC = 0x93824992314842 *)
mov rcx r15;
(* mov    %r8,%rdx                                 #! PC = 0x93824992314845 *)
mov rdx r8;
(* mov    %r9,%rbp                                 #! PC = 0x93824992314848 *)
mov rbp r9;
(* sub    (%rbx),%r14                              #! EA = L0x55555556e4c0; Value = 0xb9feffffffffaaab; PC = 0x93824992314851 *)
subb carry r14 r14 L0x55555556e4c0;
(* sbb    0x8(%rbx),%r15                           #! EA = L0x55555556e4c8; Value = 0x1eabfffeb153ffff; PC = 0x93824992314854 *)
sbbs carry r15 r15 L0x55555556e4c8 carry;
(* mov    %r10,%r13                                #! PC = 0x93824992314858 *)
mov r13 r10;
(* sbb    0x10(%rbx),%r8                           #! EA = L0x55555556e4d0; Value = 0x6730d2a0f6b0f624; PC = 0x93824992314861 *)
sbbs carry r8 r8 L0x55555556e4d0 carry;
(* sbb    0x18(%rbx),%r9                           #! EA = L0x55555556e4d8; Value = 0x64774b84f38512bf; PC = 0x93824992314865 *)
sbbs carry r9 r9 L0x55555556e4d8 carry;
(* sbb    0x20(%rbx),%r10                          #! EA = L0x55555556e4e0; Value = 0x4b1ba7b6434bacd7; PC = 0x93824992314869 *)
sbbs carry r10 r10 L0x55555556e4e0 carry;
(* mov    %r11,%rsi                                #! PC = 0x93824992314873 *)
mov rsi r11;
(* sbb    0x28(%rbx),%r11                          #! EA = L0x55555556e4e8; Value = 0x1a0111ea397fe69a; PC = 0x93824992314876 *)
sbbs carry r11 r11 L0x55555556e4e8 carry;
(* cmovb  %rax,%r14                                #! PC = 0x93824992314880 *)
cmov r14 carry rax r14;
(* cmovb  %rcx,%r15                                #! PC = 0x93824992314884 *)
cmov r15 carry rcx r15;
(* cmovb  %rdx,%r8                                 #! PC = 0x93824992314888 *)
cmov r8 carry rdx r8;
(* mov    %r14,(%rdi)                              #! EA = L0x7fffffffda60; PC = 0x93824992314892 *)
mov L0x7fffffffda60 r14;
(* cmovb  %rbp,%r9                                 #! PC = 0x93824992314895 *)
cmov r9 carry rbp r9;
(* mov    %r15,0x8(%rdi)                           #! EA = L0x7fffffffda68; PC = 0x93824992314899 *)
mov L0x7fffffffda68 r15;
(* cmovb  %r13,%r10                                #! PC = 0x93824992314903 *)
cmov r10 carry r13 r10;
(* mov    %r8,0x10(%rdi)                           #! EA = L0x7fffffffda70; PC = 0x93824992314907 *)
mov L0x7fffffffda70 r8;
(* cmovb  %rsi,%r11                                #! PC = 0x93824992314911 *)
cmov r11 carry rsi r11;
(* mov    %r9,0x18(%rdi)                           #! EA = L0x7fffffffda78; PC = 0x93824992314915 *)
mov L0x7fffffffda78 r9;
(* mov    %r10,0x20(%rdi)                          #! EA = L0x7fffffffda80; PC = 0x93824992314919 *)
mov L0x7fffffffda80 r10;
(* mov    %r11,0x28(%rdi)                          #! EA = L0x7fffffffda88; PC = 0x93824992314923 *)
mov L0x7fffffffda88 r11;
(* #repz retq                                      #! PC = 0x93824992314962 *)
#repz retq                                      #! 0x93824992314962 = 0x93824992314962;
(* #retq                                           #! PC = 0x93824992242355 *)
#retq                                           #! 0x93824992242355 = 0x93824992242355;

mov c0 L0x7fffffffda60;
mov c1 L0x7fffffffda68;
mov c2 L0x7fffffffda70;
mov c3 L0x7fffffffda78;
mov c4 L0x7fffffffda80;
mov c5 L0x7fffffffda88;

assert true &&
       eqmod (limbs 64 [q0, q1, q2, q3, q4, q5])
             (limbs 64 [c0, c1, c2, c3, c4, c5])
             (limbs 64 [m0, m1, m2, m3, m4, m5]);

assume eqmod (limbs 64 [q0, q1, q2, q3, q4, q5])
             (limbs 64 [c0, c1, c2, c3, c4, c5])
             (limbs 64 [m0, m1, m2, m3, m4, m5]) && true;

{
  eqmod (limbs 64 [c0, c1, c2, c3, c4, c5]) * (2**384)
        (limbs 64 [x0, x1, x2, x3, x4, x5])
        (limbs 64 [m0, m1, m2, m3, m4, m5])
&&
  limbs 64 [c0, c1, c2, c3, c4, c5] <u limbs 64 [m0, m1, m2, m3, m4, m5]
}

