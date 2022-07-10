(*
by@aedes:x86_64$ cv  -v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint fpsub434.cl
Parsing Cryptoline file:		[OK]		0.002875 seconds
Checking well-formedness:		[OK]		0.000507 seconds
Transforming to SSA form:		[OK]		0.000281 seconds
Normalizing specification:		[OK]		0.000016 seconds
Rewriting assignments:			[OK]		0.000204 seconds
Verifying program safety:		
	 Cut 0
	     Round 1 (2 safety conditions, timeout = 14400 seconds)
		 Safety condition #1	[OK]
		 Safety condition #0	[OK]
	 Overall			[OK]		0.061386 seconds
Verifying range specification:		[OK]		56.871052 seconds
Rewriting value-preserved casting:	[OK]		0.000008 seconds
Verifying algebraic specification:	[OK]		0.000177 seconds
Verification result:			[OK]		56.937143 seconds
*)


(*
const uint64_t p434[NWORDS64_FIELD]              = { 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFDC1767AE2FFFFFF, 
                                                     0x7BC65C783158AEA3, 0x6CFC5FD681C52056, 0x0002341F27177344 };
const uint64_t p434x2[NWORDS64_FIELD]            = { 0xFFFFFFFFFFFFFFFE, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFB82ECF5C5FFFFFF,
                                                     0xF78CB8F062B15D47, 0xD9F8BFAD038A40AC, 0x0004683E4E2EE688 }; 
*)

const p434_0 = 0xFFFFFFFFFFFFFFFF
const p434_1 = 0xFFFFFFFFFFFFFFFF
const p434_2 = 0xFFFFFFFFFFFFFFFF
const p434_3 = 0xFDC1767AE2FFFFFF
const p434_4 = 0x7BC65C783158AEA3
const p434_5 = 0x6CFC5FD681C52056
const p434_6 = 0x0002341F27177344 

const p434x2_0 = 0xFFFFFFFFFFFFFFFE
const p434x2_1 = 0xFFFFFFFFFFFFFFFF
const p434x2_2 = 0xFFFFFFFFFFFFFFFF
const p434x2_3 = 0xFB82ECF5C5FFFFFF
const p434x2_4 = 0xF78CB8F062B15D47
const p434x2_5 = 0xD9F8BFAD038A40AC
const p434x2_6 = 0x0004683E4E2EE688

proc main (a0@uint64, a1@uint64, a2@uint64, a3@uint64, a4@uint64, a5@uint64, a6@uint64,
           b0@uint64, b1@uint64, b2@uint64, b3@uint64, b4@uint64, b5@uint64, b6@uint64) =
{
  true
  &&
  and [
    limbs 64 [ a0, a1, a2, a3, a4, a5, a6 ] <=u
      (2@448 * limbs 64 [ $p434_0@64, $p434_1@64, $p434_2@64, $p434_3@64,
                          $p434_4@64, $p434_5@64, $p434_6@64 ] - 1@448),
    limbs 64 [ b0, b1, b2, b3, b4, b5, b6 ] <=u
      (2@448 * limbs 64 [ $p434_0@64, $p434_1@64, $p434_2@64, $p434_3@64,
                          $p434_4@64, $p434_5@64, $p434_6@64 ] - 1@448)
  ]
}

(* ===== Initialization ===== *)
mov L0x7fffffffd800 a0;
mov L0x7fffffffd808 a1;
mov L0x7fffffffd810 a2;
mov L0x7fffffffd818 a3;
mov L0x7fffffffd820 a4;
mov L0x7fffffffd828 a5;
mov L0x7fffffffd830 a6;

mov L0x7fffffffd840 b0;
mov L0x7fffffffd848 b1;
mov L0x7fffffffd850 b2;
mov L0x7fffffffd858 b3;
mov L0x7fffffffd860 b4;
mov L0x7fffffffd868 b5;
mov L0x7fffffffd870 b6;

mov L0x555555568320 $p434x2_0@uint64;
mov L0x555555568328 $p434x2_1@uint64;
mov L0x555555568330 $p434x2_2@uint64;
mov L0x555555568338 $p434x2_3@uint64;
mov L0x555555568340 $p434x2_4@uint64;
mov L0x555555568348 $p434x2_5@uint64;
mov L0x555555568350 $p434x2_6@uint64;


(* #! -> SP = 0x7fffffffd7a8 *)
#! 0x7fffffffd7a8 = 0x7fffffffd7a8;
(* #jmpq   0x5555555623fe <fpsub434_asm>           #! PC = 0x555555561dc4 *)
#jmpq   0x5555555623fe <fpsub434_asm>           #! 0x555555561dc4 = 0x555555561dc4;
(* xor    %rax,%rax                                #! PC = 0x555555562404 *)
mov rax 0@uint64;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffd800; Value = 0xc3b42df01a07738f; PC = 0x555555562407 *)
mov r8 L0x7fffffffd800;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffd808; Value = 0x3ebae1de527503a8; PC = 0x55555556240a *)
mov r9 L0x7fffffffd808;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffd810; Value = 0x4b77b3f074420fb5; PC = 0x55555556240e *)
mov r10 L0x7fffffffd810;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffd818; Value = 0x85b5c4f6dfb914e8; PC = 0x555555562412 *)
mov r11 L0x7fffffffd818;
(* mov    0x20(%rdi),%r12                          #! EA = L0x7fffffffd820; Value = 0x91eb54e9279fbc37; PC = 0x555555562416 *)
mov r12 L0x7fffffffd820;
(* mov    0x28(%rdi),%r13                          #! EA = L0x7fffffffd828; Value = 0xf7749e4135e46057; PC = 0x55555556241a *)
mov r13 L0x7fffffffd828;
(* mov    0x30(%rdi),%r14                          #! EA = L0x7fffffffd830; Value = 0x0000e3699d6bb6ad; PC = 0x55555556241e *)
mov r14 L0x7fffffffd830;
(* sub    (%rsi),%r8                               #! EA = L0x7fffffffd840; Value = 0x9c72e565ed30a1f7; PC = 0x555555562422 *)
subb carry r8 r8 L0x7fffffffd840;
(* sbb    0x8(%rsi),%r9                            #! EA = L0x7fffffffd848; Value = 0xbd1daf668bc412a2; PC = 0x555555562425 *)
sbbs carry r9 r9 L0x7fffffffd848 carry;
(* sbb    0x10(%rsi),%r10                          #! EA = L0x7fffffffd850; Value = 0x4c48669f51f2010f; PC = 0x555555562429 *)
sbbs carry r10 r10 L0x7fffffffd850 carry;
(* sbb    0x18(%rsi),%r11                          #! EA = L0x7fffffffd858; Value = 0x8ed8d29686eab31d; PC = 0x55555556242d *)
sbbs carry r11 r11 L0x7fffffffd858 carry;
(* sbb    0x20(%rsi),%r12                          #! EA = L0x7fffffffd860; Value = 0x9076eeeed97b0874; PC = 0x555555562431 *)
sbbs carry r12 r12 L0x7fffffffd860 carry;
(* sbb    0x28(%rsi),%r13                          #! EA = L0x7fffffffd868; Value = 0xf82338e9661b3a00; PC = 0x555555562435 *)
sbbs carry r13 r13 L0x7fffffffd868 carry;
(* sbb    0x30(%rsi),%r14                          #! EA = L0x7fffffffd870; Value = 0x0001917cd8491539; PC = 0x555555562439 *)
sbbs carry r14 r14 L0x7fffffffd870 carry;
(* sbb    $0x0,%rax                                #! PC = 0x55555556243d *)
sbbs carry rax rax 0x0@uint64 carry;
(* mov    0x5ed8(%rip),%rcx        # 0x555555568320 <p434x2>#! EA = L0x555555568320; Value = 0xfffffffffffffffe; PC = 0x555555562441 *)
mov rcx L0x555555568320;
(* mov    0x5ed9(%rip),%rdi        # 0x555555568328 <p434x2+8>#! EA = L0x555555568328; Value = 0xffffffffffffffff; PC = 0x555555562448 *)
mov rdi L0x555555568328;
(* mov    0x5ee2(%rip),%rsi        # 0x555555568338 <p434x2+24>#! EA = L0x555555568338; Value = 0xfb82ecf5c5ffffff; PC = 0x55555556244f *)
mov rsi L0x555555568338;
(* and    %rax,%rcx                                #! PC = 0x555555562456 *)
and uint64 rcx rax rcx;
(* and    %rax,%rdi                                #! PC = 0x555555562459 *)
and uint64 rdi rax rdi;
(* and    %rax,%rsi                                #! PC = 0x55555556245c *)
and uint64 rsi rax rsi;
(* add    %rcx,%r8                                 #! PC = 0x55555556245f *)
adds carry r8 r8 rcx;
(* adc    %rdi,%r9                                 #! PC = 0x555555562462 *)
adcs carry r9 r9 rdi@uint64 carry;
(* adc    %rdi,%r10                                #! PC = 0x555555562465 *)
adcs carry r10 r10 rdi@uint64 carry;
(* adc    %rsi,%r11                                #! PC = 0x555555562468 *)
adcs carry r11 r11 rsi@uint64 carry;
(* mov    %r8,(%rdx)                               #! EA = L0x7fffffffd8c0; PC = 0x55555556246b *)
mov L0x7fffffffd8c0 r8;
(* mov    %r9,0x8(%rdx)                            #! EA = L0x7fffffffd8c8; PC = 0x55555556246e *)
mov L0x7fffffffd8c8 r9;
(* mov    %r10,0x10(%rdx)                          #! EA = L0x7fffffffd8d0; PC = 0x555555562472 *)
mov L0x7fffffffd8d0 r10;
(* mov    %r11,0x18(%rdx)                          #! EA = L0x7fffffffd8d8; PC = 0x555555562476 *)
mov L0x7fffffffd8d8 r11;
(* setb   %cl                                      #! PC = 0x55555556247a *)
and uint64 rcx rcx 0xFFFFFFFFFFFFFF00@uint64;
adc rcx rcx 0@uint64 carry;
(* mov    0x5ebc(%rip),%r8        # 0x555555568340 <p434x2+32>#! EA = L0x555555568340; Value = 0xf78cb8f062b15d47; PC = 0x55555556247d *)
mov r8 L0x555555568340;
(* mov    0x5ebd(%rip),%rdi        # 0x555555568348 <p434x2+40>#! EA = L0x555555568348; Value = 0xd9f8bfad038a40ac; PC = 0x555555562484 *)
mov rdi L0x555555568348;
(* mov    0x5ebe(%rip),%rsi        # 0x555555568350 <p434x2+48>#! EA = L0x555555568350; Value = 0x0004683e4e2ee688; PC = 0x55555556248b *)
mov rsi L0x555555568350;
(* and    %rax,%r8                                 #! PC = 0x555555562492 *)
and uint64 r8 rax r8;
(* and    %rax,%rdi                                #! PC = 0x555555562495 *)
and uint64 rdi rax rdi;
(* and    %rax,%rsi                                #! PC = 0x555555562498 *)
and uint64 rsi rax rsi;
(* bt     $0x0,%rcx                                #! PC = 0x55555556249b *)
split dontcare carry rcx 1;
vpc carry@uint1 carry;
(* adc    %r8,%r12                                 #! PC = 0x5555555624a0 *)
adcs carry r12 r12 r8@uint64 carry;
(* adc    %rdi,%r13                                #! PC = 0x5555555624a3 *)
adcs carry r13 r13 rdi@uint64 carry;
(* adc    %rsi,%r14                                #! PC = 0x5555555624a6 *)
adcs carry r14 r14 rsi@uint64 carry;
(* mov    %r12,0x20(%rdx)                          #! EA = L0x7fffffffd8e0; PC = 0x5555555624a9 *)
mov L0x7fffffffd8e0 r12;
(* mov    %r13,0x28(%rdx)                          #! EA = L0x7fffffffd8e8; PC = 0x5555555624ad *)
mov L0x7fffffffd8e8 r13;
(* mov    %r14,0x30(%rdx)                          #! EA = L0x7fffffffd8f0; PC = 0x5555555624b1 *)
mov L0x7fffffffd8f0 r14;
(* #! <- SP = 0x7fffffffd7a8 *)
#! 0x7fffffffd7a8 = 0x7fffffffd7a8;
(* #retq                                           #! PC = 0x5555555624bb *)
#retq                                           #! 0x5555555624bb = 0x5555555624bb;
(* ===== Outputs ===== *)

mov c0 L0x7fffffffd8c0;
mov c1 L0x7fffffffd8c8;
mov c2 L0x7fffffffd8d0;
mov c3 L0x7fffffffd8d8;
mov c4 L0x7fffffffd8e0;
mov c5 L0x7fffffffd8e8;
mov c6 L0x7fffffffd8f0;


{
  true
  &&
  and [
    eqsmod
      (limbs 64 [ c0, c1, c2, c3, c4, c5, c6 ])
      (
        limbs 64 [ a0, a1, a2, a3, a4, a5, a6 ]
        -
        limbs 64 [ b0, b1, b2, b3, b4, b5, b6 ]
      )
      (limbs 64 [ $p434_0@64, $p434_1@64, $p434_2@64, $p434_3@64,
                  $p434_4@64, $p434_5@64, $p434_6@64 ]),
    limbs 64 [c0, c1, c2, c3, c4, c5, c6] <=u
      (2@448 * limbs 64 [ $p434_0@64, $p434_1@64, $p434_2@64, $p434_3@64,
                          $p434_4@64, $p434_5@64, $p434_6@64 ] - 1@448)
  ]
}
