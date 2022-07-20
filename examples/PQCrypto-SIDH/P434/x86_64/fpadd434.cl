(*
by@aedes:x86_64$ cv  -v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint fpadd434.cl
Parsing Cryptoline file:		[OK]		0.002702 seconds
Checking well-formedness:		[OK]		0.000543 seconds
Transforming to SSA form:		[OK]		0.000299 seconds
Normalizing specification:		[OK]		0.000016 seconds
Rewriting assignments:			[OK]		0.000214 seconds
Verifying program safety:		
	 Cut 0
	     Round 1 (0 safety conditions, timeout = 14400 seconds)
	 Overall			[OK]		0.000291 seconds
Verifying range specification:		[OK]		13.157451 seconds
Rewriting value-preserved casting:	[OK]		0.000003 seconds
Verifying algebraic specification:	[OK]		0.000088 seconds
Verification result:			[OK]		13.162231 seconds
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
(* #jmpq   0x55555556232b <fpadd434_asm>           #! PC = 0x555555561db4 *)
#jmpq   0x55555556232b <fpadd434_asm>           #! 0x555555561db4 = 0x555555561db4;
(* xor    %rax,%rax                                #! PC = 0x555555562335 *)
mov rax 0@uint64;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffd800; Value = 0xec4aff517369c667; PC = 0x555555562338 *)
mov r8 L0x7fffffffd800;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffd808; Value = 0x46e3fbf2abbacd29; PC = 0x55555556233b *)
mov r9 L0x7fffffffd808;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffd810; Value = 0x8de7e81bf854c27c; PC = 0x55555556233f *)
mov r10 L0x7fffffffd810;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffd818; Value = 0x9ac99f33632e5a76; PC = 0x555555562343 *)
mov r11 L0x7fffffffd818;
(* mov    0x20(%rdi),%r12                          #! EA = L0x7fffffffd820; Value = 0x5aa35831b70d3266; PC = 0x555555562347 *)
mov r12 L0x7fffffffd820;
(* mov    0x28(%rdi),%r13                          #! EA = L0x7fffffffd828; Value = 0xd45ee95817055d25; PC = 0x55555556234b *)
mov r13 L0x7fffffffd828;
(* mov    0x30(%rdi),%r14                          #! EA = L0x7fffffffd830; Value = 0x0000b49bc6cdb2ab; PC = 0x55555556234f *)
mov r14 L0x7fffffffd830;
(* add    (%rsi),%r8                               #! EA = L0x7fffffffd840; Value = 0x87dc3d214174820e; PC = 0x555555562353 *)
adds carry r8 r8 L0x7fffffffd840;
(* adc    0x8(%rsi),%r9                            #! EA = L0x7fffffffd848; Value = 0x67fce141a13ee970; PC = 0x555555562356 *)
adcs carry r9 r9 L0x7fffffffd848 carry;
(* adc    0x10(%rsi),%r10                          #! EA = L0x7fffffffd850; Value = 0x966bdcea977e013e; PC = 0x55555556235a *)
adcs carry r10 r10 L0x7fffffffd850 carry;
(* adc    0x18(%rsi),%r11                          #! EA = L0x7fffffffd858; Value = 0xfb3bb0ec2a5c388f; PC = 0x55555556235e *)
adcs carry r11 r11 L0x7fffffffd858 carry;
(* adc    0x20(%rsi),%r12                          #! EA = L0x7fffffffd860; Value = 0x5cdb18ec543caf32; PC = 0x555555562362 *)
adcs carry r12 r12 L0x7fffffffd860 carry;
(* adc    0x28(%rsi),%r13                          #! EA = L0x7fffffffd868; Value = 0x3aaafafb43fe1a02; PC = 0x555555562366 *)
adcs carry r13 r13 L0x7fffffffd868 carry;
(* adc    0x30(%rsi),%r14                          #! EA = L0x7fffffffd870; Value = 0x00003c05e6d129fb; PC = 0x55555556236a *)
adcs carry r14 r14 L0x7fffffffd870 carry;
(* mov    0x5fab(%rip),%rbx        # 0x555555568320 <p434x2>#! EA = L0x555555568320; Value = 0xfffffffffffffffe; PC = 0x55555556236e *)
mov rbx L0x555555568320;
(* sub    %rbx,%r8                                 #! PC = 0x555555562375 *)
subb carry r8 r8 rbx;
(* mov    0x5fa9(%rip),%rcx        # 0x555555568328 <p434x2+8>#! EA = L0x555555568328; Value = 0xffffffffffffffff; PC = 0x555555562378 *)
mov rcx L0x555555568328;
(* sbb    %rcx,%r9                                 #! PC = 0x55555556237f *)
sbbs carry r9 r9 rcx carry;
(* sbb    %rcx,%r10                                #! PC = 0x555555562382 *)
sbbs carry r10 r10 rcx carry;
(* mov    0x5fac(%rip),%rdi        # 0x555555568338 <p434x2+24>#! EA = L0x555555568338; Value = 0xfb82ecf5c5ffffff; PC = 0x555555562385 *)
mov rdi L0x555555568338;
(* sbb    %rdi,%r11                                #! PC = 0x55555556238c *)
sbbs carry r11 r11 rdi carry;
(* mov    0x5faa(%rip),%rsi        # 0x555555568340 <p434x2+32>#! EA = L0x555555568340; Value = 0xf78cb8f062b15d47; PC = 0x55555556238f *)
mov rsi L0x555555568340;
(* sbb    %rsi,%r12                                #! PC = 0x555555562396 *)
sbbs carry r12 r12 rsi carry;
(* mov    0x5fa8(%rip),%rbp        # 0x555555568348 <p434x2+40>#! EA = L0x555555568348; Value = 0xd9f8bfad038a40ac; PC = 0x555555562399 *)
mov rbp L0x555555568348;
(* sbb    %rbp,%r13                                #! PC = 0x5555555623a0 *)
sbbs carry r13 r13 rbp carry;
(* mov    0x5fa6(%rip),%r15        # 0x555555568350 <p434x2+48>#! EA = L0x555555568350; Value = 0x0004683e4e2ee688; PC = 0x5555555623a3 *)
mov r15 L0x555555568350;
(* sbb    %r15,%r14                                #! PC = 0x5555555623aa *)
sbbs carry r14 r14 r15 carry;
(* sbb    $0x0,%rax                                #! PC = 0x5555555623ad *)
sbbs carry rax rax 0x0@uint64 carry;
(* and    %rax,%rbx                                #! PC = 0x5555555623b1 *)
and uint64 rbx rax rbx;
(* and    %rax,%rcx                                #! PC = 0x5555555623b4 *)
and uint64 rcx rax rcx;
(* and    %rax,%rdi                                #! PC = 0x5555555623b7 *)
and uint64 rdi rax rdi;
(* and    %rax,%rsi                                #! PC = 0x5555555623ba *)
and uint64 rsi rax rsi;
(* and    %rax,%rbp                                #! PC = 0x5555555623bd *)
and uint64 rbp rax rbp;
(* and    %rax,%r15                                #! PC = 0x5555555623c0 *)
and uint64 r15 rax r15;
(* add    %rbx,%r8                                 #! PC = 0x5555555623c3 *)
adds carry r8 r8 rbx;
(* adc    %rcx,%r9                                 #! PC = 0x5555555623c6 *)
adcs carry r9 r9 rcx@uint64 carry;
(* adc    %rcx,%r10                                #! PC = 0x5555555623c9 *)
adcs carry r10 r10 rcx@uint64 carry;
(* adc    %rdi,%r11                                #! PC = 0x5555555623cc *)
adcs carry r11 r11 rdi@uint64 carry;
(* adc    %rsi,%r12                                #! PC = 0x5555555623cf *)
adcs carry r12 r12 rsi@uint64 carry;
(* adc    %rbp,%r13                                #! PC = 0x5555555623d2 *)
adcs carry r13 r13 rbp@uint64 carry;
(* adc    %r15,%r14                                #! PC = 0x5555555623d5 *)
adcs carry r14 r14 r15@uint64 carry;
(* mov    %r8,(%rdx)                               #! EA = L0x7fffffffd8c0; PC = 0x5555555623d8 *)
mov L0x7fffffffd8c0 r8;
(* mov    %r9,0x8(%rdx)                            #! EA = L0x7fffffffd8c8; PC = 0x5555555623db *)
mov L0x7fffffffd8c8 r9;
(* mov    %r10,0x10(%rdx)                          #! EA = L0x7fffffffd8d0; PC = 0x5555555623df *)
mov L0x7fffffffd8d0 r10;
(* mov    %r11,0x18(%rdx)                          #! EA = L0x7fffffffd8d8; PC = 0x5555555623e3 *)
mov L0x7fffffffd8d8 r11;
(* mov    %r12,0x20(%rdx)                          #! EA = L0x7fffffffd8e0; PC = 0x5555555623e7 *)
mov L0x7fffffffd8e0 r12;
(* mov    %r13,0x28(%rdx)                          #! EA = L0x7fffffffd8e8; PC = 0x5555555623eb *)
mov L0x7fffffffd8e8 r13;
(* mov    %r14,0x30(%rdx)                          #! EA = L0x7fffffffd8f0; PC = 0x5555555623ef *)
mov L0x7fffffffd8f0 r14;
(* #! <- SP = 0x7fffffffd7a8 *)
#! 0x7fffffffd7a8 = 0x7fffffffd7a8;
(* #retq                                           #! PC = 0x5555555623fd *)
#retq                                           #! 0x5555555623fd = 0x5555555623fd;

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
    equmod
      (limbs 64 [ c0, c1, c2, c3, c4, c5, c6 ])
      (
        limbs 64 [ a0, a1, a2, a3, a4, a5, a6 ]
        +
        limbs 64 [ b0, b1, b2, b3, b4, b5, b6 ]
      )
      (limbs 64 [ $p434_0@64, $p434_1@64, $p434_2@64, $p434_3@64,
                  $p434_4@64, $p434_5@64, $p434_6@64 ]),
    limbs 64 [c0, c1, c2, c3, c4, c5, c6] <=u
      (2@448 * limbs 64 [ $p434_0@64, $p434_1@64, $p434_2@64, $p434_3@64,
                          $p434_4@64, $p434_5@64, $p434_6@64 ] - 1@448)
  ]
}
