(* quine: -v -isafety -jobs 10 -no_carry_constraint -slicing -btor blst_fr_cneg-x86_64.cl
Parsing Cryptoline file:                [OK]            0.001340 seconds
Checking well-formedness:               [OK]            0.000323 seconds
Transforming to SSA form:               [OK]            0.000146 seconds
Rewriting assignments:                  [OK]            0.000424 seconds
Verifying program safety:               [OK]            0.001267 seconds
Verifying range specification:          [OK]            0.515394 seconds
Rewriting value-preserved casting:      [OK]            0.000011 seconds
Verifying algebraic specification:      [OK]            0.000121 seconds
Verification result:                    [OK]            0.519494 seconds
*)

proc main (uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 m0, uint64 m1, uint64 m2, uint64 m3, uint64 flag, uint1 V1, uint1 V2) =
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

mov rdx flag;

mov L0x7fffffffdb30 x0;
mov L0x7fffffffdb38 x1;
mov L0x7fffffffdb40 x2;
mov L0x7fffffffdb48 x3;

(* prime *)
mov L0x55555556c660 m0;
mov L0x55555556c668 m1;
mov L0x55555556c670 m2;
mov L0x55555556c678 m3;


(* mov    (%rsi),%r12                              #! EA = L0x7fffffffdb30; Value = 0x000009c0000009c0; PC = 0x93824992306408 *)
mov r12 L0x7fffffffdb30;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffdb38; Value = 0x000009c0000009c0; PC = 0x93824992306411 *)
mov r9 L0x7fffffffdb38;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffdb40; Value = 0x000009c0000009c0; PC = 0x93824992306415 *)
mov r10 L0x7fffffffdb40;
(* mov    %r12,%r8                                 #! PC = 0x93824992306419 *)
mov r8 r12;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffdb48; Value = 0x000009c0000009c0; PC = 0x93824992306422 *)
mov r11 L0x7fffffffdb48;
(* or     %r9,%r12                                 #! PC = 0x93824992306426 *)
or r12@uint64 r9 r12;
(* or     %r10,%r12                                #! PC = 0x93824992306429 *)
or r12@uint64 r10 r12;
(* or     %r11,%r12                                #! PC = 0x93824992306432 *)
or r12@uint64 r11 r12;
mov nZF r12;
(* mov    $0xffffffffffffffff,%rbp                 #! PC = 0x93824992306435 *)
mov rbp 0xffffffffffffffff@uint64;
(* mov    (%rcx),%rax                              #! EA = L0x55555556c660; Value = 0xffffffff00000001; PC = 0x93824992306442 *)
mov rax L0x55555556c660;

mov ZF V1;
assume ZF * nZF = 0 && or[ and[ZF = 0@1, nZF >u 0@64], and[ZF = 1@1, nZF = 0@64]];

(* cmovne %rbp,%r12                                #! PC = 0x93824992306445 *)
cmov r12 ZF r12 rbp;
(* mov    0x8(%rcx),%rsi                           #! EA = L0x55555556c668; Value = 0x53bda402fffe5bfe; PC = 0x93824992306449 *)
mov rsi L0x55555556c668;
(* mov    0x10(%rcx),%rbx                          #! EA = L0x55555556c670; Value = 0x3339d80809a1d805; PC = 0x93824992306453 *)
mov rbx L0x55555556c670;
(* and    %r12,%rax                                #! PC = 0x93824992306457 *)
and rax@uint64 r12 rax;
(* mov    0x18(%rcx),%rbp                          #! EA = L0x55555556c678; Value = 0x73eda753299d7d48; PC = 0x93824992306460 *)
mov rbp L0x55555556c678;
(* and    %r12,%rsi                                #! PC = 0x93824992306464 *)
and rsi@uint64 r12 rsi;
(* and    %r12,%rbx                                #! PC = 0x93824992306467 *)
and rbx@uint64 r12 rbx;
(* and    %r12,%rbp                                #! PC = 0x93824992306470 *)
and rbp@uint64 r12 rbp;
(* sub    %r8,%rax                                 #! PC = 0x93824992306473 *)
subb carry rax rax r8;
(* sbb    %r9,%rsi                                 #! PC = 0x93824992306476 *)
sbbs carry rsi rsi r9 carry;
(* sbb    %r10,%rbx                                #! PC = 0x93824992306479 *)
sbbs carry rbx rbx r10 carry;
(* sbb    %r11,%rbp                                #! PC = 0x93824992306482 *)
sbbs carry rbp rbp r11 carry;
(* or     %rdx,%rdx                                #! PC = 0x93824992306485 *)
or rdx@uint64 rdx rdx;
mov nZF rdx;

mov ZF V2;
assume ZF * nZF = 0 && or[ and[ZF = 0@1, nZF >u 0@64], and[ZF = 1@1, nZF = 0@64]];

(* cmove  %r8,%rax                                 #! PC = 0x93824992306488 *)
cmov rax ZF r8 rax;
(* cmove  %r9,%rsi                                 #! PC = 0x93824992306492 *)
cmov rsi ZF r9 rsi;
(* mov    %rax,(%rdi)                              #! EA = L0x7fffffffdb70; PC = 0x93824992306496 *)
mov L0x7fffffffdb70 rax;
(* cmove  %r10,%rbx                                #! PC = 0x93824992306499 *)
cmov rbx ZF r10 rbx;
(* mov    %rsi,0x8(%rdi)                           #! EA = L0x7fffffffdb78; PC = 0x93824992306503 *)
mov L0x7fffffffdb78 rsi;
(* cmove  %r11,%rbp                                #! PC = 0x93824992306507 *)
cmov rbp ZF r11 rbp;
(* mov    %rbx,0x10(%rdi)                          #! EA = L0x7fffffffdb80; PC = 0x93824992306511 *)
mov L0x7fffffffdb80 rbx;
(* mov    %rbp,0x18(%rdi)                          #! EA = L0x7fffffffdb88; PC = 0x93824992306515 *)
mov L0x7fffffffdb88 rbp;
(* #retq                                           #! PC = 0x93824992297970 *)
#retq                                           #! 0x93824992297970 = 0x93824992297970;

mov c0 L0x7fffffffdb70;
mov c1 L0x7fffffffdb78;
mov c2 L0x7fffffffdb80;
mov c3 L0x7fffffffdb88;

{
 true
  &&
 or[
    and[
   	flag >u (0@64),
	eqmod
  	(
   	((limbs 64 [c0, c1, c2, c3])
    	+
   	(limbs 64 [x0, x1, x2, x3])
   	)
  	)

  	0@256

  	(limbs 64 [m0, m1, m2, m3])
  	]
   ,
    and[
   	flag = (0@64)
	,
	eq 
	(limbs 64 [c0, c1, c2, c3])
	(limbs 64 [x0, x1, x2, x3])
	]
   ]
}
