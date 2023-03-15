(* quine: -v -slicing -isafety -isafety_timeout 20000 -jobs 10 muls64xs64.cl
Parsing Cryptoline file:                [OK]            0.001835 seconds
Checking well-formedness:               [OK]            0.000370 seconds
Transforming to SSA form:               [OK]            0.000158 seconds
Rewriting assignments:                  [OK]            0.000366 seconds
Verifying program safety:
         Cut 0
             Round 1 (4 safety conditions, timeout = 20000 seconds)
                 Safety condition #3    [OK]
                 Safety condition #0    [OK]
                 Safety condition #2    [OK]
                 Safety condition #1    [OK]
         Overall                        [OK]            5930.784833 seconds
Verifying range specification:          [OK]            0.541371 seconds
Rewriting value-preserved casting:      [OK]            0.000010 seconds
Verifying algebraic specification:      [OK]            0.000738 seconds
Verification result:                    [OK]            5931.330235 seconds
*)

proc main (sint64 x0, sint64 x1, sint64 x2, sint64 x3, sint64 y0, sint64 y1, sint64 y2, sint64 y3) =
{
  true
&&
  and[const 64 (-(2**62)) <=s x0, x0 <=s const 64 (2**62),
      const 64 (-(2**62)) <=s x1, x1 <=s const 64 (2**62),
      const 64 (-(2**62)) <=s x2, x2 <=s const 64 (2**62),
      const 64 (-(2**62)) <=s x3, x3 <=s const 64 (2**62),
      const 64 (-(2**62)) <=s y0, y0 <=s const 64 (2**62),
      const 64 (-(2**62)) <=s y1, y1 <=s const 64 (2**62),
      const 64 (-(2**62)) <=s y2, y2 <=s const 64 (2**62),
      const 64 (-(2**62)) <=s y3, y3 <=s const 64 (2**62)
     ]
}

mov L0x7fffffffdeb8 x0;
mov L0x7fffffffdec0 x1;
mov L0x7fffffffdec8 x2;
mov L0x7fffffffded0 x3;
mov L0x7fffffffde78 y0;
mov L0x7fffffffde80 y1;
mov L0x7fffffffde88 y2;
mov L0x7fffffffde90 y3;


(* #! -> SP = 0x7fffffffddb8 *)
#! 0x7fffffffddb8 = 0x7fffffffddb8;
(* #mov    %rsp,%r11                                #! PC = 0x4013c0 *)
#mov    %%rsp,%%r11                                #! 0x4013c0 = 0x4013c0;
(* #and    $0x1f,%r11                               #! PC = 0x4013c3 *)
#and    $0x1f,%%r11                               #! 0x4013c3 = 0x4013c3;
(* #add    $0x0,%r11                                #! PC = 0x4013c7 *)
#add    $0x0,%%r11                                #! 0x4013c7 = 0x4013c7;
(* #sub    %r11,%rsp                                #! PC = 0x4013cb *)
#sub    %%r11,%%rsp                                #! 0x4013cb = 0x4013cb;
(* #mov    %rdx,%rcx                                #! PC = 0x4013ce *)
#mov    %%rdx,%%rcx                                #! 0x4013ce = 0x4013ce;
(* mov    (%rdi),%rax                              #! EA = L0x7fffffffdeb8; Value = 0xffffffff924dafb8; PC = 0x4013d1 *)
mov rax L0x7fffffffdeb8;
(* imulq  (%rsi)                                   #! EA = L0x7fffffffde78; PC = 0x4013d4 *)
smull rdx rax L0x7fffffffde78 rax;
(* mov    %rax,%r8                                 #! PC = 0x4013d7 *)
mov r8 rax;
(* mov    %rdx,%r9                                 #! PC = 0x4013da *)
mov r9 rdx;
(* mov    0x8(%rdi),%rax                           #! EA = L0x7fffffffdec0; Value = 0x000000006dca7248; PC = 0x4013dd *)
mov rax L0x7fffffffdec0;
(* imulq  0x10(%rsi)                               #! EA = L0x7fffffffde88; PC = 0x4013e1 *)
smull rdx rax L0x7fffffffde88 rax;
(* add    %rax,%r8                                 #! PC = 0x4013e5 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9                                 #! PC = 0x4013e8 *)
adcs carry r9 rdx r9 carry;
(* mov    %r8,(%rcx)                               #! EA = L0x7fffffffdee0; PC = 0x4013eb *)
mov L0x7fffffffdee0 r8;
(* mov    %r9,0x8(%rcx)                            #! EA = L0x7fffffffdee8; PC = 0x4013ee *)
mov L0x7fffffffdee8 r9;
(* mov    (%rdi),%rax                              #! EA = L0x7fffffffdeb8; Value = 0xffffffff924dafb8; PC = 0x4013f2 *)
mov rax L0x7fffffffdeb8;
(* imulq  0x8(%rsi)                                #! EA = L0x7fffffffde80; PC = 0x4013f5 *)
smull rdx rax L0x7fffffffde80 rax;
(* mov    %rax,%r8                                 #! PC = 0x4013f9 *)
mov r8 rax;
(* mov    %rdx,%r9                                 #! PC = 0x4013fc *)
mov r9 rdx;
(* mov    0x8(%rdi),%rax                           #! EA = L0x7fffffffdec0; Value = 0x000000006dca7248; PC = 0x4013ff *)
mov rax L0x7fffffffdec0;
(* imulq  0x18(%rsi)                               #! EA = L0x7fffffffde90; PC = 0x401403 *)
smull rdx rax L0x7fffffffde90 rax;
(* add    %rax,%r8                                 #! PC = 0x401407 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9                                 #! PC = 0x40140a *)
adcs carry r9 rdx r9 carry;
(* mov    %r8,0x10(%rcx)                           #! EA = L0x7fffffffdef0; PC = 0x40140d *)
mov L0x7fffffffdef0 r8;
(* mov    %r9,0x18(%rcx)                           #! EA = L0x7fffffffdef8; PC = 0x401411 *)
mov L0x7fffffffdef8 r9;
(* mov    0x10(%rdi),%rax                          #! EA = L0x7fffffffdec8; Value = 0x0000000080bf9de7; PC = 0x401415 *)
mov rax L0x7fffffffdec8;
(* imulq  (%rsi)                                   #! EA = L0x7fffffffde78; PC = 0x401419 *)
smull rdx rax L0x7fffffffde78 rax;
(* mov    %rax,%r8                                 #! PC = 0x40141c *)
mov r8 rax;
(* mov    %rdx,%r9                                 #! PC = 0x40141f *)
mov r9 rdx;
(* mov    0x18(%rdi),%rax                          #! EA = L0x7fffffffded0; Value = 0xfffffffee9c88a59; PC = 0x401422 *)
mov rax L0x7fffffffded0;
(* imulq  0x10(%rsi)                               #! EA = L0x7fffffffde88; PC = 0x401426 *)
smull rdx rax L0x7fffffffde88 rax;
(* add    %rax,%r8                                 #! PC = 0x40142a *)
adds carry r8 rax r8;
(* adc    %rdx,%r9                                 #! PC = 0x40142d *)
adcs carry r9 rdx r9 carry;
(* mov    %r8,0x20(%rcx)                           #! EA = L0x7fffffffdf00; PC = 0x401430 *)
mov L0x7fffffffdf00 r8;
(* mov    %r9,0x28(%rcx)                           #! EA = L0x7fffffffdf08; PC = 0x401434 *)
mov L0x7fffffffdf08 r9;
(* mov    0x10(%rdi),%rax                          #! EA = L0x7fffffffdec8; Value = 0x0000000080bf9de7; PC = 0x401438 *)
mov rax L0x7fffffffdec8;
(* imulq  0x8(%rsi)                                #! EA = L0x7fffffffde80; PC = 0x40143c *)
smull rdx rax L0x7fffffffde80 rax;
(* mov    %rax,%r8                                 #! PC = 0x401440 *)
mov r8 rax;
(* mov    %rdx,%r9                                 #! PC = 0x401443 *)
mov r9 rdx;
(* mov    0x18(%rdi),%rax                          #! EA = L0x7fffffffded0; Value = 0xfffffffee9c88a59; PC = 0x401446 *)
mov rax L0x7fffffffded0;
(* imulq  0x18(%rsi)                               #! EA = L0x7fffffffde90; PC = 0x40144a *)
smull rdx rax L0x7fffffffde90 rax;
(* add    %rax,%r8                                 #! PC = 0x40144e *)
adds carry r8 rax r8;
(* adc    %rdx,%r9                                 #! PC = 0x401451 *)
adcs carry r9 rdx r9 carry;
(* mov    %r8,0x30(%rcx)                           #! EA = L0x7fffffffdf10; PC = 0x401454 *)
mov L0x7fffffffdf10 r8;
(* mov    %r9,0x38(%rcx)                           #! EA = L0x7fffffffdf18; PC = 0x401458 *)
mov L0x7fffffffdf18 r9;
(* #add    %r11,%rsp                                #! PC = 0x40145c *)
#add    %%r11,%%rsp                                #! 0x40145c = 0x40145c;
(* #! <- SP = 0x7fffffffddb8 *)
#! 0x7fffffffddb8 = 0x7fffffffddb8;
(* #retq                                           #! PC = 0x40145f *)
#retq                                           #! 0x40145f = 0x40145f;

mov c0 L0x7fffffffdee0; 
mov c1 L0x7fffffffdee8; 
mov c2 L0x7fffffffdef0; 
mov c3 L0x7fffffffdef8; 
mov c4 L0x7fffffffdf00; 
mov c5 L0x7fffffffdf08; 
mov c6 L0x7fffffffdf10; 
mov c7 L0x7fffffffdf18; 


{
  true
  &&
  and [
	slimbs 64 [c0, c1] =
	(sext x0 64) * (sext y0 64) + (sext x1 64) * (sext y2 64),
	slimbs 64 [c2, c3] =
	(sext x0 64) * (sext y1 64) + (sext x1 64) * (sext y3 64),
	slimbs 64 [c4, c5] =
	(sext x2 64) * (sext y0 64) + (sext x3 64) * (sext y2 64),
	slimbs 64 [c6, c7] =
	(sext x2 64) * (sext y1 64) + (sext x3 64) * (sext y3 64)
	]
}

