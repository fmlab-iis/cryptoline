(* on frege: -v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint ../fp2mul610_c0_mont.cl
Parsing Cryptoline file:		[OK]		0.014224 seconds
Checking well-formedness:		[OK]		0.001672 seconds
Transforming to SSA form:		[OK]		0.001307 seconds
Normalizing specification:		[OK]		0.001767 seconds
Rewriting assignments:			[OK]		0.000896 seconds
Verifying program safety:
	 Cut 0
	     Round 1 (0 safety conditions, timeout = 14400 seconds)
	 Overall			[OK]		0.000326 seconds
Verifying range assertions:		[OK]		33.631491 seconds
Verifying range specification:		[OK]		20.439581 seconds
Rewriting value-preserved casting:	[OK]		0.000256 seconds
Verifying algebraic assertions:		[OK]		0.002101 seconds
Verifying algebraic specification:	[OK]		0.419301 seconds
Verification result:			[OK]		54.513880 seconds
*)

(*
const uint64_t p610[NWORDS64_FIELD]              = { 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0x6E01FFFFFFFFFFFF,
                                                     0xB1784DE8AA5AB02E, 0x9AE7BF45048FF9AB, 0xB255B2FA10C4252A, 0x819010C251E7D88C, 0x000000027BF6A768 };
const uint64_t p610x8[NWORDS64_FIELD]            = { 0xFFFFFFFFFFFFFFF8, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0x700FFFFFFFFFFFFF,
                                                     0x8BC26F4552D58173, 0xD73DFA28247FCD5D, 0x92AD97D086212954, 0x0C8086128F3EC465, 0x00000013DFB53B44 };
const uint64_t p610p1[NWORDS64_FIELD]            = { 0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x6E02000000000000,
                                                     0xB1784DE8AA5AB02E, 0x9AE7BF45048FF9AB, 0xB255B2FA10C4252A, 0x819010C251E7D88C, 0x000000027BF6A768 };
*)

const p610_0 = 0xFFFFFFFFFFFFFFFF
const p610_1 = 0xFFFFFFFFFFFFFFFF
const p610_2 = 0xFFFFFFFFFFFFFFFF
const p610_3 = 0xFFFFFFFFFFFFFFFF
const p610_4 = 0x6E01FFFFFFFFFFFF
const p610_5 = 0xB1784DE8AA5AB02E
const p610_6 = 0x9AE7BF45048FF9AB
const p610_7 = 0xB255B2FA10C4252A
const p610_8 = 0x819010C251E7D88C
const p610_9 = 0x000000027BF6A768

const p610x8_0 = 0xFFFFFFFFFFFFFFF8
const p610x8_1 = 0xFFFFFFFFFFFFFFFF
const p610x8_2 = 0xFFFFFFFFFFFFFFFF
const p610x8_3 = 0xFFFFFFFFFFFFFFFF
const p610x8_4 = 0x700FFFFFFFFFFFFF
const p610x8_5 = 0x8BC26F4552D58173
const p610x8_6 = 0xD73DFA28247FCD5D
const p610x8_7 = 0x92AD97D086212954
const p610x8_8 = 0x0C8086128F3EC465
const p610x8_9 = 0x00000013DFB53B44

const p610p1_0 = 0x0000000000000000
const p610p1_1 = 0x0000000000000000
const p610p1_2 = 0x0000000000000000
const p610p1_3 = 0x0000000000000000
const p610p1_4 = 0x6E02000000000000
const p610p1_5 = 0xB1784DE8AA5AB02E
const p610p1_6 = 0x9AE7BF45048FF9AB
const p610p1_7 = 0xB255B2FA10C4252A
const p610p1_8 = 0x819010C251E7D88C
const p610p1_9 = 0x000000027BF6A768

proc main (a00@uint64, a01@uint64, a02@uint64, a03@uint64, a04@uint64, a05@uint64, a06@uint64, a07@uint64, a08@uint64, a09@uint64,
           a10@uint64, a11@uint64, a12@uint64, a13@uint64, a14@uint64, a15@uint64, a16@uint64, a17@uint64, a18@uint64, a19@uint64,
           b00@uint64, b01@uint64, b02@uint64, b03@uint64, b04@uint64, b05@uint64, b06@uint64, b07@uint64, b08@uint64, b09@uint64,
           b10@uint64, b11@uint64, b12@uint64, b13@uint64, b14@uint64, b15@uint64, b16@uint64, b17@uint64, b18@uint64, b19@uint64) =
{
  true
  &&
  and [
    limbs 64 [ a00, a01, a02, a03, a04, a05, a06, a07, a08, a09 ] <=u
      (2@640 * limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64,
                          $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ] - 1@640),
    limbs 64 [ a10, a11, a12, a13, a14, a15, a16, a17, a18, a19 ] <=u
      (2@640 * limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64,
                          $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ] - 1@640),
    limbs 64 [ b00, b01, b02, b03, b04, b05, b06, b07, b08, b09 ] <=u
      (2@640 * limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64,
                          $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ] - 1@640),
    limbs 64 [ b10, b11, b12, b13, b14, b15, b16, b17, b18, b19 ] <=u
      (2@640 * limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64,
                          $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ] - 1@640)
  ]
}

(* ===== Initialization ===== *)

mov L0x7fffffffd640 a00;
mov L0x7fffffffd648 a01;
mov L0x7fffffffd650 a02;
mov L0x7fffffffd658 a03;
mov L0x7fffffffd660 a04;
mov L0x7fffffffd668 a05;
mov L0x7fffffffd670 a06;
mov L0x7fffffffd678 a07;
mov L0x7fffffffd680 a08;
mov L0x7fffffffd688 a09;

mov L0x7fffffffd690 a10;
mov L0x7fffffffd698 a11;
mov L0x7fffffffd6a0 a12;
mov L0x7fffffffd6a8 a13;
mov L0x7fffffffd6b0 a14;
mov L0x7fffffffd6b8 a15;
mov L0x7fffffffd6c0 a16;
mov L0x7fffffffd6c8 a17;
mov L0x7fffffffd6d0 a18;
mov L0x7fffffffd6d8 a19;

mov L0x7fffffffd6e0 b00;
mov L0x7fffffffd6e8 b01;
mov L0x7fffffffd6f0 b02;
mov L0x7fffffffd6f8 b03;
mov L0x7fffffffd700 b04;
mov L0x7fffffffd708 b05;
mov L0x7fffffffd710 b06;
mov L0x7fffffffd718 b07;
mov L0x7fffffffd720 b08;
mov L0x7fffffffd728 b09;

mov L0x7fffffffd730 b10;
mov L0x7fffffffd738 b11;
mov L0x7fffffffd740 b12;
mov L0x7fffffffd748 b13;
mov L0x7fffffffd750 b14;
mov L0x7fffffffd758 b15;
mov L0x7fffffffd760 b16;
mov L0x7fffffffd768 b17;
mov L0x7fffffffd770 b18;
mov L0x7fffffffd778 b19;

mov L0x55555556d580 $p610p1_4@uint64;
mov L0x55555556d588 $p610p1_5@uint64;
mov L0x55555556d590 $p610p1_6@uint64;
mov L0x55555556d598 $p610p1_7@uint64;
mov L0x55555556d5a0 $p610p1_8@uint64;
mov L0x55555556d5a8 $p610p1_9@uint64;

mov L0x55555556d5c0 $p610x8_0@uint64;
mov L0x55555556d5c8 $p610x8_1@uint64;
mov L0x55555556d5e0 $p610x8_4@uint64;
mov L0x55555556d5e8 $p610x8_5@uint64;
mov L0x55555556d5f0 $p610x8_6@uint64;
mov L0x55555556d5f8 $p610x8_7@uint64;
mov L0x55555556d600 $p610x8_8@uint64;
mov L0x55555556d608 $p610x8_9@uint64;

nondet rdx@uint64;
nondet rsp@uint64;

(* ===== Program ===== *)

(* #! -> SP = 0x7fffffffd1a8 *)
#! 0x7fffffffd1a8 = 0x7fffffffd1a8;
(* #jmpq   0x5555555647cf <fp2mul610_c0_asm>       #! PC = 0x5555555643b4 *)
#jmpq   0x5555555647cf <fp2mul610_c0_asm>       #! 0x5555555643b4 = 0x5555555643b4;
(* sub    $0x50,%rsp                               #! PC = 0x5555555647d9 *)
subb carry rsp rsp 0x50@uint64;
(* mov    %rdx,%rcx                                #! PC = 0x5555555647dd *)
mov rcx rdx;
(* mov    0x8dd9(%rip),%r8        # 0x55555556d5c0 <p610x8>#! EA = L0x55555556d5c0; Value = 0xfffffffffffffff8; PC = 0x5555555647e0 *)
mov r8 L0x55555556d5c0;
(* mov    0x8dda(%rip),%r9        # 0x55555556d5c8 <p610x8+8>#! EA = L0x55555556d5c8; Value = 0xffffffffffffffff; PC = 0x5555555647e7 *)
mov r9 L0x55555556d5c8;
(* mov    0x8deb(%rip),%r12        # 0x55555556d5e0 <p610x8+32>#! EA = L0x55555556d5e0; Value = 0x700fffffffffffff; PC = 0x5555555647ee *)
mov r12 L0x55555556d5e0;
(* mov    0x8dec(%rip),%r13        # 0x55555556d5e8 <p610x8+40>#! EA = L0x55555556d5e8; Value = 0x8bc26f4552d58173; PC = 0x5555555647f5 *)
mov r13 L0x55555556d5e8;
(* mov    0x50(%rsi),%rax                          #! EA = L0x7fffffffd730; Value = 0xf0721ae7b0ee18c2; PC = 0x5555555647fc *)
mov rax L0x7fffffffd730;
(* mov    0x58(%rsi),%rdx                          #! EA = L0x7fffffffd738; Value = 0xd98365ccabe31c18; PC = 0x555555564800 *)
mov rdx L0x7fffffffd738;
(* mov    %r9,%r10                                 #! PC = 0x555555564804 *)
mov r10 r9;
(* mov    %r9,%r11                                 #! PC = 0x555555564807 *)
mov r11 r9;
(* sub    %rax,%r8                                 #! PC = 0x55555556480a *)
subb carry r8 r8 rax;
(* sbb    %rdx,%r9                                 #! PC = 0x55555556480d *)
sbbs carry r9 r9 rdx carry;
(* mov    0x60(%rsi),%rax                          #! EA = L0x7fffffffd740; Value = 0x55ed30181229a118; PC = 0x555555564810 *)
mov rax L0x7fffffffd740;
(* mov    0x68(%rsi),%rdx                          #! EA = L0x7fffffffd748; Value = 0xcef4a714158b3660; PC = 0x555555564814 *)
mov rdx L0x7fffffffd748;
(* sbb    %rax,%r10                                #! PC = 0x555555564818 *)
sbbs carry r10 r10 rax carry;
(* sbb    %rdx,%r11                                #! PC = 0x55555556481b *)
sbbs carry r11 r11 rdx carry;
(* mov    0x70(%rsi),%rax                          #! EA = L0x7fffffffd750; Value = 0x3647d345b923d00a; PC = 0x55555556481e *)
mov rax L0x7fffffffd750;
(* mov    0x78(%rsi),%rdx                          #! EA = L0x7fffffffd758; Value = 0xb173d735f2c65001; PC = 0x555555564822 *)
mov rdx L0x7fffffffd758;
(* sbb    %rax,%r12                                #! PC = 0x555555564826 *)
sbbs carry r12 r12 rax carry;
(* sbb    %rdx,%r13                                #! PC = 0x555555564829 *)
sbbs carry r13 r13 rdx carry;
(* mov    %r8,(%rsp)                               #! EA = L0x7fffffffd128; PC = 0x55555556482c *)
mov L0x7fffffffd128 r8;
(* mov    %r9,0x8(%rsp)                            #! EA = L0x7fffffffd130; PC = 0x555555564830 *)
mov L0x7fffffffd130 r9;
(* mov    %r10,0x10(%rsp)                          #! EA = L0x7fffffffd138; PC = 0x555555564835 *)
mov L0x7fffffffd138 r10;
(* mov    %r11,0x18(%rsp)                          #! EA = L0x7fffffffd140; PC = 0x55555556483a *)
mov L0x7fffffffd140 r11;
(* mov    %r12,0x20(%rsp)                          #! EA = L0x7fffffffd148; PC = 0x55555556483f *)
mov L0x7fffffffd148 r12;
(* mov    %r13,0x28(%rsp)                          #! EA = L0x7fffffffd150; PC = 0x555555564844 *)
mov L0x7fffffffd150 r13;
(* mov    0x8da0(%rip),%r8        # 0x55555556d5f0 <p610x8+48>#! EA = L0x55555556d5f0; Value = 0xd73dfa28247fcd5d; PC = 0x555555564849 *)
mov r8 L0x55555556d5f0;
(* mov    0x8da1(%rip),%r9        # 0x55555556d5f8 <p610x8+56>#! EA = L0x55555556d5f8; Value = 0x92ad97d086212954; PC = 0x555555564850 *)
mov r9 L0x55555556d5f8;
(* mov    0x8da2(%rip),%r10        # 0x55555556d600 <p610x8+64>#! EA = L0x55555556d600; Value = 0x0c8086128f3ec465; PC = 0x555555564857 *)
mov r10 L0x55555556d600;
(* mov    0x8da3(%rip),%r11        # 0x55555556d608 <p610x8+72>#! EA = L0x55555556d608; Value = 0x00000013dfb53b44; PC = 0x55555556485e *)
mov r11 L0x55555556d608;
(* mov    0x80(%rsi),%rax                          #! EA = L0x7fffffffd760; Value = 0x9ccfa4405cc535c0; PC = 0x555555564865 *)
mov rax L0x7fffffffd760;
(* mov    0x88(%rsi),%rdx                          #! EA = L0x7fffffffd768; Value = 0xc7055a1c5dd141f1; PC = 0x55555556486c *)
mov rdx L0x7fffffffd768;
(* sbb    %rax,%r8                                 #! PC = 0x555555564873 *)
sbbs carry r8 r8 rax carry;
(* sbb    %rdx,%r9                                 #! PC = 0x555555564876 *)
sbbs carry r9 r9 rdx carry;
(* mov    0x90(%rsi),%rax                          #! EA = L0x7fffffffd770; Value = 0x367156d3d98f96d6; PC = 0x555555564879 *)
mov rax L0x7fffffffd770;
(* mov    0x98(%rsi),%rdx                          #! EA = L0x7fffffffd778; Value = 0x000000000147efee; PC = 0x555555564880 *)
mov rdx L0x7fffffffd778;
(* sbb    %rax,%r10                                #! PC = 0x555555564887 *)
sbbs carry r10 r10 rax carry;
(* sbb    %rdx,%r11                                #! PC = 0x55555556488a *)
sbbs carry r11 r11 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r8,0x30(%rsp)                           #! EA = L0x7fffffffd158; PC = 0x55555556488d *)
mov L0x7fffffffd158 r8;
(* mov    %r9,0x38(%rsp)                           #! EA = L0x7fffffffd160; PC = 0x555555564892 *)
mov L0x7fffffffd160 r9;
(* mov    %r10,0x40(%rsp)                          #! EA = L0x7fffffffd168; PC = 0x555555564897 *)
mov L0x7fffffffd168 r10;
(* mov    %r11,0x48(%rsp)                          #! EA = L0x7fffffffd170; PC = 0x55555556489c *)
mov L0x7fffffffd170 r11;
(* mov    (%rsi),%rdx                              #! EA = L0x7fffffffd6e0; Value = 0x545c6864103dce42; PC = 0x5555555648a1 *)
mov rdx L0x7fffffffd6e0;
(* mulx   (%rdi),%r8,%r9                           #! EA = L0x7fffffffd640; Value = 0xbc8c6ee7af2eba52; PC = 0x5555555648a4 *)
mull r9 r8 L0x7fffffffd640 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555648a9 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x8(%rdi),%r11,%r10                      #! EA = L0x7fffffffd648; Value = 0x082ba9eb11c8cca2; PC = 0x5555555648ac *)
mull r10 r11 L0x7fffffffd648 rdx;
(* mov    %r8,(%rcx)                               #! EA = L0x7fffffffd1b0; PC = 0x5555555648b2 *)
mov L0x7fffffffd1b0 r8;
(* adcx   %r11,%r9                                 #! PC = 0x5555555648b5 *)
adcs carry r9 r9 r11 carry;
(* mulx   0x10(%rdi),%r12,%r11                     #! EA = L0x7fffffffd650; Value = 0x12f249b5b505249c; PC = 0x5555555648bb *)
mull r11 r12 L0x7fffffffd650 rdx;
(* mov    %r9,0x8(%rcx)                            #! EA = L0x7fffffffd1b8; PC = 0x5555555648c1 *)
mov L0x7fffffffd1b8 r9;
(* adcx   %r12,%r10                                #! PC = 0x5555555648c5 *)
adcs carry r10 r10 r12 carry;
(* mulx   0x18(%rdi),%r13,%r12                     #! EA = L0x7fffffffd658; Value = 0x0f78a1c3be4d90ac; PC = 0x5555555648cb *)
mull r12 r13 L0x7fffffffd658 rdx;
(* mov    %r10,0x10(%rcx)                          #! EA = L0x7fffffffd1c0; PC = 0x5555555648d1 *)
mov L0x7fffffffd1c0 r10;
(* adcx   %r13,%r11                                #! PC = 0x5555555648d5 *)
adcs carry r11 r11 r13 carry;
(* mulx   0x20(%rdi),%r8,%r13                      #! EA = L0x7fffffffd660; Value = 0xdc2780c414bc970f; PC = 0x5555555648db *)
mull r13 r8 L0x7fffffffd660 rdx;
(* adcx   %r8,%r12                                 #! PC = 0x5555555648e1 *)
adcs carry r12 r12 r8 carry;
(* mulx   0x28(%rdi),%r9,%r14                      #! EA = L0x7fffffffd668; Value = 0x2ba26832c8c3af74; PC = 0x5555555648e7 *)
mull r14 r9 L0x7fffffffd668 rdx;
(* adcx   %r9,%r13                                 #! PC = 0x5555555648ed *)
adcs carry r13 r13 r9 carry;
(* mulx   0x30(%rdi),%rax,%r15                     #! EA = L0x7fffffffd670; Value = 0xb3d1e0f9ae656c2e; PC = 0x5555555648f3 *)
mull r15 rax L0x7fffffffd670 rdx;
(* adcx   %rax,%r14                                #! PC = 0x5555555648f9 *)
adcs carry r14 r14 rax carry;
(* mulx   0x38(%rdi),%r10,%r8                      #! EA = L0x7fffffffd678; Value = 0x52b57228fe99195b; PC = 0x5555555648ff *)
mull r8 r10 L0x7fffffffd678 rdx;
(* adcx   %r10,%r15                                #! PC = 0x555555564905 *)
adcs carry r15 r15 r10 carry;
(* mulx   0x40(%rdi),%rax,%r9                      #! EA = L0x7fffffffd680; Value = 0x86ac02afd8a24676; PC = 0x55555556490b *)
mull r9 rax L0x7fffffffd680 rdx;
(* adcx   %rax,%r8                                 #! PC = 0x555555564911 *)
adcs carry r8 r8 rax carry;
(* mulx   0x48(%rdi),%rbx,%r10                     #! EA = L0x7fffffffd688; Value = 0x000000009ce32441; PC = 0x555555564917 *)
mull r10 rbx L0x7fffffffd688 rdx;
(* adcx   %rbx,%r9                                 #! PC = 0x55555556491d *)
adcs carry r9 r9 rbx carry;
(* adc    $0x0,%r10                                #! PC = 0x555555564923 *)
adcs carry r10 r10 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    (%rsp),%rdx                              #! EA = L0x7fffffffd128; Value = 0x0f8de5184f11e736; PC = 0x555555564927 *)
mov rdx L0x7fffffffd128;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd690; Value = 0xabd34327f67a00c5; PC = 0x55555556492b *)
mull rbx rbp L0x7fffffffd690 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555564931 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   (%rcx),%rbp                              #! EA = L0x7fffffffd1b0; Value = 0xcd04c88249840524; PC = 0x555555564934 *)
adcs overflow rbp rbp L0x7fffffffd1b0 overflow;
(* adox   0x8(%rcx),%rbx                           #! EA = L0x7fffffffd1b8; Value = 0xe208a393ada725ab; PC = 0x55555556493a *)
adcs overflow rbx rbx L0x7fffffffd1b8 overflow;
(* mov    %rbp,0x18(%rcx)                          #! EA = L0x7fffffffd1c8; PC = 0x555555564941 *)
mov L0x7fffffffd1c8 rbp;
(* mulx   0x58(%rdi),%rax,%rbp                     #! EA = L0x7fffffffd698; Value = 0xef6a82721cb98c2f; PC = 0x555555564945 *)
mull rbp rax L0x7fffffffd698 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x55555556494b *)
adcs carry rbx rbx rax carry;
(* adox   0x10(%rcx),%rbp                          #! EA = L0x7fffffffd1c0; Value = 0xed06a0bd68dfd22e; PC = 0x555555564951 *)
adcs overflow rbp rbp L0x7fffffffd1c0 overflow;
(* mov    %rbx,(%rcx)                              #! EA = L0x7fffffffd1b0; PC = 0x555555564958 *)
mov L0x7fffffffd1b0 rbx;
(* mulx   0x60(%rdi),%rax,%rbx                     #! EA = L0x7fffffffd6a0; Value = 0xdb12d37b563e23c7; PC = 0x55555556495b *)
mull rbx rax L0x7fffffffd6a0 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555564961 *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r11                                #! PC = 0x555555564967 *)
adcs overflow r11 r11 rbx overflow;
(* mov    %rbp,0x8(%rcx)                           #! EA = L0x7fffffffd1b8; PC = 0x55555556496d *)
mov L0x7fffffffd1b8 rbp;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6a8; Value = 0xafb884deeb02fedf; PC = 0x555555564971 *)
mull rbx rbp L0x7fffffffd6a8 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555564977 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x55555556497d *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x70(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6b0; Value = 0x624ccf9246b5cc94; PC = 0x555555564983 *)
mull rbx rbp L0x7fffffffd6b0 rdx;
(* mov    %r11,0x10(%rcx)                          #! EA = L0x7fffffffd1c0; PC = 0x555555564989 *)
mov L0x7fffffffd1c0 r11;
(* adcx   %rbp,%r12                                #! PC = 0x55555556498d *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555564993 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x78(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6b8; Value = 0x5627ee8f489ec34e; PC = 0x555555564999 *)
mull rbx rbp L0x7fffffffd6b8 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x55555556499f *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x5555555649a5 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x80(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6c0; Value = 0xa1620adc90bff912; PC = 0x5555555649ab *)
mull rbx rbp L0x7fffffffd6c0 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x5555555649b4 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x5555555649ba *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x88(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6c8; Value = 0x8a51181ee01a7d65; PC = 0x5555555649c0 *)
mull rbx rbp L0x7fffffffd6c8 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x5555555649c9 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555649cf *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x90(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6d0; Value = 0xb4bbb9ad51928a5a; PC = 0x5555555649d5 *)
mull rbx rbp L0x7fffffffd6d0 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x5555555649de *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555649e4 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x98(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6d8; Value = 0x0000000083de5cb4; PC = 0x5555555649ea *)
mull rbx rbp L0x7fffffffd6d8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x5555555649f3 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555649f9 *)
adcs overflow r10 r10 rbx overflow;
(* adc    $0x0,%r10                                #! PC = 0x5555555649ff *)
adcs carry r10 r10 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rcx),%rdx                          #! EA = L0x7fffffffd1c8; Value = 0xad8652273606f1b2; PC = 0x555555564a03 *)
mov rdx L0x7fffffffd1c8;
(* mulx   0x8b70(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x555555564a07 *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555564a10 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r12                                #! PC = 0x555555564a13 *)
adcs overflow r12 r12 rbp overflow;
(* adox   %rbx,%r13                                #! PC = 0x555555564a19 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x8b60(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x555555564a1f *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555564a28 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555564a2e *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x8b53(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x555555564a34 *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555564a3d *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555564a43 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x8b46(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x555555564a49 *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555564a52 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555564a58 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x8b39(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x555555564a5e *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555564a67 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555564a6d *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x8b2c(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x555555564a73 *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555564a7c *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555564a82 *)
adcs overflow r10 r10 rbx overflow;
(* adc    $0x0,%r10                                #! PC = 0x555555564a88 *)
adcs carry r10 r10 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x8(%rsi),%rdx                           #! EA = L0x7fffffffd6e8; Value = 0x0f5ab502f408d5e0; PC = 0x555555564a8c *)
mov rdx L0x7fffffffd6e8;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffd640; Value = 0xbc8c6ee7af2eba52; PC = 0x555555564a90 *)
mull rbx rbp L0x7fffffffd640 rdx;
(* xor    %r11,%r11                                #! PC = 0x555555564a95 *)
mov r11 0@uint64;
clear carry;
clear overflow;
(* adox   (%rcx),%rbp                              #! EA = L0x7fffffffd1b0; Value = 0x0bc5179d9acf48fe; PC = 0x555555564a98 *)
adcs overflow rbp rbp L0x7fffffffd1b0 overflow;
(* adox   0x8(%rcx),%rbx                           #! EA = L0x7fffffffd1b8; Value = 0x529cbdf600a28b86; PC = 0x555555564a9e *)
adcs overflow rbx rbx L0x7fffffffd1b8 overflow;
(* mov    %rbp,(%rcx)                              #! EA = L0x7fffffffd1b0; PC = 0x555555564aa5 *)
mov L0x7fffffffd1b0 rbp;
(* mulx   0x8(%rdi),%rax,%rbp                      #! EA = L0x7fffffffd648; Value = 0x082ba9eb11c8cca2; PC = 0x555555564aa8 *)
mull rbp rax L0x7fffffffd648 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555564aae *)
adcs carry rbx rbx rax carry;
(* adox   0x10(%rcx),%rbp                          #! EA = L0x7fffffffd1c0; Value = 0x877bbff203e62fc5; PC = 0x555555564ab4 *)
adcs overflow rbp rbp L0x7fffffffd1c0 overflow;
(* mov    %rbx,0x8(%rcx)                           #! EA = L0x7fffffffd1b8; PC = 0x555555564abb *)
mov L0x7fffffffd1b8 rbx;
(* mulx   0x10(%rdi),%rax,%rbx                     #! EA = L0x7fffffffd650; Value = 0x12f249b5b505249c; PC = 0x555555564abf *)
mull rbx rax L0x7fffffffd650 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555564ac5 *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r12                                #! PC = 0x555555564acb *)
adcs overflow r12 r12 rbx overflow;
(* mov    %rbp,0x10(%rcx)                          #! EA = L0x7fffffffd1c0; PC = 0x555555564ad1 *)
mov L0x7fffffffd1c0 rbp;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd658; Value = 0x0f78a1c3be4d90ac; PC = 0x555555564ad5 *)
mull rbx rbp L0x7fffffffd658 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555564adb *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555564ae1 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd660; Value = 0xdc2780c414bc970f; PC = 0x555555564ae7 *)
mull rbx rbp L0x7fffffffd660 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555564aed *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555564af3 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd668; Value = 0x2ba26832c8c3af74; PC = 0x555555564af9 *)
mull rbx rbp L0x7fffffffd668 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555564aff *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555564b05 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd670; Value = 0xb3d1e0f9ae656c2e; PC = 0x555555564b0b *)
mull rbx rbp L0x7fffffffd670 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555564b11 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555564b17 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd678; Value = 0x52b57228fe99195b; PC = 0x555555564b1d *)
mull rbx rbp L0x7fffffffd678 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555564b23 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555564b29 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd680; Value = 0x86ac02afd8a24676; PC = 0x555555564b2f *)
mull rbx rbp L0x7fffffffd680 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555564b35 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555564b3b *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd688; Value = 0x000000009ce32441; PC = 0x555555564b41 *)
mull rbx rbp L0x7fffffffd688 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555564b47 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555564b4d *)
adcs overflow r11 r11 rbx overflow;
(* adc    $0x0,%r11                                #! PC = 0x555555564b53 *)
adcs carry r11 r11 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x8(%rsp),%rdx                           #! EA = L0x7fffffffd130; Value = 0x267c9a33541ce3e7; PC = 0x555555564b57 *)
mov rdx L0x7fffffffd130;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd690; Value = 0xabd34327f67a00c5; PC = 0x555555564b5c *)
mull rbx rbp L0x7fffffffd690 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555564b62 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   (%rcx),%rbp                              #! EA = L0x7fffffffd1b0; Value = 0xe01058c8bf488abe; PC = 0x555555564b65 *)
adcs overflow rbp rbp L0x7fffffffd1b0 overflow;
(* adox   0x8(%rcx),%rbx                           #! EA = L0x7fffffffd1b8; Value = 0xc0011f36779ebee7; PC = 0x555555564b6b *)
adcs overflow rbx rbx L0x7fffffffd1b8 overflow;
(* mov    %rbp,0x18(%rcx)                          #! EA = L0x7fffffffd1c8; PC = 0x555555564b72 *)
mov L0x7fffffffd1c8 rbp;
(* mulx   0x58(%rdi),%rax,%rbp                     #! EA = L0x7fffffffd698; Value = 0xef6a82721cb98c2f; PC = 0x555555564b76 *)
mull rbp rax L0x7fffffffd698 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555564b7c *)
adcs carry rbx rbx rax carry;
(* adox   0x10(%rcx),%rbp                          #! EA = L0x7fffffffd1c0; Value = 0x414906e8feaf7668; PC = 0x555555564b82 *)
adcs overflow rbp rbp L0x7fffffffd1c0 overflow;
(* mov    %rbx,(%rcx)                              #! EA = L0x7fffffffd1b0; PC = 0x555555564b89 *)
mov L0x7fffffffd1b0 rbx;
(* mulx   0x60(%rdi),%rax,%rbx                     #! EA = L0x7fffffffd6a0; Value = 0xdb12d37b563e23c7; PC = 0x555555564b8c *)
mull rbx rax L0x7fffffffd6a0 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555564b92 *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r12                                #! PC = 0x555555564b98 *)
adcs overflow r12 r12 rbx overflow;
(* mov    %rbp,0x8(%rcx)                           #! EA = L0x7fffffffd1b8; PC = 0x555555564b9e *)
mov L0x7fffffffd1b8 rbp;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6a8; Value = 0xafb884deeb02fedf; PC = 0x555555564ba2 *)
mull rbx rbp L0x7fffffffd6a8 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555564ba8 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555564bae *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x70(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6b0; Value = 0x624ccf9246b5cc94; PC = 0x555555564bb4 *)
mull rbx rbp L0x7fffffffd6b0 rdx;
(* mov    %r12,0x10(%rcx)                          #! EA = L0x7fffffffd1c0; PC = 0x555555564bba *)
mov L0x7fffffffd1c0 r12;
(* adcx   %rbp,%r13                                #! PC = 0x555555564bbe *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555564bc4 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x78(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6b8; Value = 0x5627ee8f489ec34e; PC = 0x555555564bca *)
mull rbx rbp L0x7fffffffd6b8 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555564bd0 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555564bd6 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x80(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6c0; Value = 0xa1620adc90bff912; PC = 0x555555564bdc *)
mull rbx rbp L0x7fffffffd6c0 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555564be5 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555564beb *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x88(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6c8; Value = 0x8a51181ee01a7d65; PC = 0x555555564bf1 *)
mull rbx rbp L0x7fffffffd6c8 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555564bfa *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555564c00 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x90(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6d0; Value = 0xb4bbb9ad51928a5a; PC = 0x555555564c06 *)
mull rbx rbp L0x7fffffffd6d0 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555564c0f *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555564c15 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x98(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6d8; Value = 0x0000000083de5cb4; PC = 0x555555564c1b *)
mull rbx rbp L0x7fffffffd6d8 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555564c24 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555564c2a *)
adcs overflow r11 r11 rbx overflow;
(* adc    $0x0,%r11                                #! PC = 0x555555564c30 *)
adcs carry r11 r11 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rcx),%rdx                          #! EA = L0x7fffffffd1c8; Value = 0xd1ae083e0f99eb81; PC = 0x555555564c34 *)
mov rdx L0x7fffffffd1c8;
(* mulx   0x893f(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x555555564c38 *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555564c41 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r13                                #! PC = 0x555555564c44 *)
adcs overflow r13 r13 rbp overflow;
(* adox   %rbx,%r14                                #! PC = 0x555555564c4a *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x892f(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x555555564c50 *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555564c59 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555564c5f *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x8922(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x555555564c65 *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555564c6e *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555564c74 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x8915(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x555555564c7a *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555564c83 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555564c89 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x8908(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x555555564c8f *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555564c98 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555564c9e *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x88fb(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x555555564ca4 *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555564cad *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555564cb3 *)
adcs overflow r11 r11 rbx overflow;
(* adc    $0x0,%r11                                #! PC = 0x555555564cb9 *)
adcs carry r11 r11 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x10(%rsi),%rdx                          #! EA = L0x7fffffffd6f0; Value = 0x00124067f0f875c2; PC = 0x555555564cbd *)
mov rdx L0x7fffffffd6f0;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffd640; Value = 0xbc8c6ee7af2eba52; PC = 0x555555564cc1 *)
mull rbx rbp L0x7fffffffd640 rdx;
(* xor    %r12,%r12                                #! PC = 0x555555564cc6 *)
mov r12 0@uint64;
clear carry;
clear overflow;
(* adox   (%rcx),%rbp                              #! EA = L0x7fffffffd1b0; Value = 0x42943b1aab608add; PC = 0x555555564cc9 *)
adcs overflow rbp rbp L0x7fffffffd1b0 overflow;
(* adox   0x8(%rcx),%rbx                           #! EA = L0x7fffffffd1b8; Value = 0xccdf390553234243; PC = 0x555555564ccf *)
adcs overflow rbx rbx L0x7fffffffd1b8 overflow;
(* mov    %rbp,(%rcx)                              #! EA = L0x7fffffffd1b0; PC = 0x555555564cd6 *)
mov L0x7fffffffd1b0 rbp;
(* mulx   0x8(%rdi),%rax,%rbp                      #! EA = L0x7fffffffd648; Value = 0x082ba9eb11c8cca2; PC = 0x555555564cd9 *)
mull rbp rax L0x7fffffffd648 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555564cdf *)
adcs carry rbx rbx rax carry;
(* adox   0x10(%rcx),%rbp                          #! EA = L0x7fffffffd1c0; Value = 0x5fd5dc2e02df7745; PC = 0x555555564ce5 *)
adcs overflow rbp rbp L0x7fffffffd1c0 overflow;
(* mov    %rbx,0x8(%rcx)                           #! EA = L0x7fffffffd1b8; PC = 0x555555564cec *)
mov L0x7fffffffd1b8 rbx;
(* mulx   0x10(%rdi),%rax,%rbx                     #! EA = L0x7fffffffd650; Value = 0x12f249b5b505249c; PC = 0x555555564cf0 *)
mull rbx rax L0x7fffffffd650 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555564cf6 *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r13                                #! PC = 0x555555564cfc *)
adcs overflow r13 r13 rbx overflow;
(* mov    %rbp,0x10(%rcx)                          #! EA = L0x7fffffffd1c0; PC = 0x555555564d02 *)
mov L0x7fffffffd1c0 rbp;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd658; Value = 0x0f78a1c3be4d90ac; PC = 0x555555564d06 *)
mull rbx rbp L0x7fffffffd658 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555564d0c *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555564d12 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd660; Value = 0xdc2780c414bc970f; PC = 0x555555564d18 *)
mull rbx rbp L0x7fffffffd660 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555564d1e *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555564d24 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd668; Value = 0x2ba26832c8c3af74; PC = 0x555555564d2a *)
mull rbx rbp L0x7fffffffd668 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555564d30 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555564d36 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd670; Value = 0xb3d1e0f9ae656c2e; PC = 0x555555564d3c *)
mull rbx rbp L0x7fffffffd670 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555564d42 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555564d48 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd678; Value = 0x52b57228fe99195b; PC = 0x555555564d4e *)
mull rbx rbp L0x7fffffffd678 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555564d54 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555564d5a *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd680; Value = 0x86ac02afd8a24676; PC = 0x555555564d60 *)
mull rbx rbp L0x7fffffffd680 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555564d66 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555564d6c *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd688; Value = 0x000000009ce32441; PC = 0x555555564d72 *)
mull rbx rbp L0x7fffffffd688 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555564d78 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555564d7e *)
adcs overflow r12 r12 rbx overflow;
(* adc    $0x0,%r12                                #! PC = 0x555555564d84 *)
adcs carry r12 r12 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x10(%rsp),%rdx                          #! EA = L0x7fffffffd138; Value = 0xaa12cfe7edd65ee7; PC = 0x555555564d88 *)
mov rdx L0x7fffffffd138;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd690; Value = 0xabd34327f67a00c5; PC = 0x555555564d8d *)
mull rbx rbp L0x7fffffffd690 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555564d93 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   (%rcx),%rbp                              #! EA = L0x7fffffffd1b0; Value = 0x3c8324ad27613701; PC = 0x555555564d96 *)
adcs overflow rbp rbp L0x7fffffffd1b0 overflow;
(* adox   0x8(%rcx),%rbx                           #! EA = L0x7fffffffd1b8; Value = 0xad682d2525c3e213; PC = 0x555555564d9c *)
adcs overflow rbx rbx L0x7fffffffd1b8 overflow;
(* mov    %rbp,0x18(%rcx)                          #! EA = L0x7fffffffd1c8; PC = 0x555555564da3 *)
mov L0x7fffffffd1c8 rbp;
(* mulx   0x58(%rdi),%rax,%rbp                     #! EA = L0x7fffffffd698; Value = 0xef6a82721cb98c2f; PC = 0x555555564da7 *)
mull rbp rax L0x7fffffffd698 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555564dad *)
adcs carry rbx rbx rax carry;
(* adox   0x10(%rcx),%rbp                          #! EA = L0x7fffffffd1c0; Value = 0xea0f42ce6fe4c0fd; PC = 0x555555564db3 *)
adcs overflow rbp rbp L0x7fffffffd1c0 overflow;
(* mov    %rbx,(%rcx)                              #! EA = L0x7fffffffd1b0; PC = 0x555555564dba *)
mov L0x7fffffffd1b0 rbx;
(* mulx   0x60(%rdi),%rax,%rbx                     #! EA = L0x7fffffffd6a0; Value = 0xdb12d37b563e23c7; PC = 0x555555564dbd *)
mull rbx rax L0x7fffffffd6a0 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555564dc3 *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r13                                #! PC = 0x555555564dc9 *)
adcs overflow r13 r13 rbx overflow;
(* mov    %rbp,0x8(%rcx)                           #! EA = L0x7fffffffd1b8; PC = 0x555555564dcf *)
mov L0x7fffffffd1b8 rbp;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6a8; Value = 0xafb884deeb02fedf; PC = 0x555555564dd3 *)
mull rbx rbp L0x7fffffffd6a8 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555564dd9 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555564ddf *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x70(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6b0; Value = 0x624ccf9246b5cc94; PC = 0x555555564de5 *)
mull rbx rbp L0x7fffffffd6b0 rdx;
(* mov    %r13,0x10(%rcx)                          #! EA = L0x7fffffffd1c0; PC = 0x555555564deb *)
mov L0x7fffffffd1c0 r13;
(* adcx   %rbp,%r14                                #! PC = 0x555555564def *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555564df5 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x78(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6b8; Value = 0x5627ee8f489ec34e; PC = 0x555555564dfb *)
mull rbx rbp L0x7fffffffd6b8 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555564e01 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555564e07 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x80(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6c0; Value = 0xa1620adc90bff912; PC = 0x555555564e0d *)
mull rbx rbp L0x7fffffffd6c0 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555564e16 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555564e1c *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x88(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6c8; Value = 0x8a51181ee01a7d65; PC = 0x555555564e22 *)
mull rbx rbp L0x7fffffffd6c8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555564e2b *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555564e31 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x90(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6d0; Value = 0xb4bbb9ad51928a5a; PC = 0x555555564e37 *)
mull rbx rbp L0x7fffffffd6d0 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555564e40 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555564e46 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x98(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6d8; Value = 0x0000000083de5cb4; PC = 0x555555564e4c *)
mull rbx rbp L0x7fffffffd6d8 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555564e55 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555564e5b *)
adcs overflow r12 r12 rbx overflow;
(* adc    $0x0,%r12                                #! PC = 0x555555564e61 *)
adcs carry r12 r12 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rcx),%rdx                          #! EA = L0x7fffffffd1c8; Value = 0xebf463b3616e3ec4; PC = 0x555555564e65 *)
mov rdx L0x7fffffffd1c8;
(* mulx   0x870e(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x555555564e69 *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555564e72 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r14                                #! PC = 0x555555564e75 *)
adcs overflow r14 r14 rbp overflow;
(* adox   %rbx,%r15                                #! PC = 0x555555564e7b *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x86fe(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x555555564e81 *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555564e8a *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555564e90 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x86f1(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x555555564e96 *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555564e9f *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555564ea5 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x86e4(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x555555564eab *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555564eb4 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555564eba *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x86d7(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x555555564ec0 *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555564ec9 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555564ecf *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x86ca(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x555555564ed5 *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555564ede *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555564ee4 *)
adcs overflow r12 r12 rbx overflow;
(* adc    $0x0,%r12                                #! PC = 0x555555564eea *)
adcs carry r12 r12 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rsi),%rdx                          #! EA = L0x7fffffffd6f8; Value = 0x43bb37ff311795e8; PC = 0x555555564eee *)
mov rdx L0x7fffffffd6f8;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffd640; Value = 0xbc8c6ee7af2eba52; PC = 0x555555564ef2 *)
mull rbx rbp L0x7fffffffd640 rdx;
(* xor    %r13,%r13                                #! PC = 0x555555564ef7 *)
mov r13 0@uint64;
clear carry;
clear overflow;
(* adox   (%rcx),%rbp                              #! EA = L0x7fffffffd1b0; Value = 0xf9a1fcf3a6025c67; PC = 0x555555564efa *)
adcs overflow rbp rbp L0x7fffffffd1b0 overflow;
(* adox   0x8(%rcx),%rbx                           #! EA = L0x7fffffffd1b8; Value = 0xd3b183f330916871; PC = 0x555555564f00 *)
adcs overflow rbx rbx L0x7fffffffd1b8 overflow;
(* mov    %rbp,(%rcx)                              #! EA = L0x7fffffffd1b0; PC = 0x555555564f07 *)
mov L0x7fffffffd1b0 rbp;
(* mulx   0x8(%rdi),%rax,%rbp                      #! EA = L0x7fffffffd648; Value = 0x082ba9eb11c8cca2; PC = 0x555555564f0a *)
mull rbp rax L0x7fffffffd648 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555564f10 *)
adcs carry rbx rbx rax carry;
(* adox   0x10(%rcx),%rbp                          #! EA = L0x7fffffffd1c0; Value = 0xfdd68f8adcf450d8; PC = 0x555555564f16 *)
adcs overflow rbp rbp L0x7fffffffd1c0 overflow;
(* mov    %rbx,0x8(%rcx)                           #! EA = L0x7fffffffd1b8; PC = 0x555555564f1d *)
mov L0x7fffffffd1b8 rbx;
(* mulx   0x10(%rdi),%rax,%rbx                     #! EA = L0x7fffffffd650; Value = 0x12f249b5b505249c; PC = 0x555555564f21 *)
mull rbx rax L0x7fffffffd650 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555564f27 *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r14                                #! PC = 0x555555564f2d *)
adcs overflow r14 r14 rbx overflow;
(* mov    %rbp,0x10(%rcx)                          #! EA = L0x7fffffffd1c0; PC = 0x555555564f33 *)
mov L0x7fffffffd1c0 rbp;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd658; Value = 0x0f78a1c3be4d90ac; PC = 0x555555564f37 *)
mull rbx rbp L0x7fffffffd658 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555564f3d *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555564f43 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd660; Value = 0xdc2780c414bc970f; PC = 0x555555564f49 *)
mull rbx rbp L0x7fffffffd660 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555564f4f *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555564f55 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd668; Value = 0x2ba26832c8c3af74; PC = 0x555555564f5b *)
mull rbx rbp L0x7fffffffd668 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555564f61 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555564f67 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd670; Value = 0xb3d1e0f9ae656c2e; PC = 0x555555564f6d *)
mull rbx rbp L0x7fffffffd670 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555564f73 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555564f79 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd678; Value = 0x52b57228fe99195b; PC = 0x555555564f7f *)
mull rbx rbp L0x7fffffffd678 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555564f85 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555564f8b *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd680; Value = 0x86ac02afd8a24676; PC = 0x555555564f91 *)
mull rbx rbp L0x7fffffffd680 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555564f97 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555564f9d *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd688; Value = 0x000000009ce32441; PC = 0x555555564fa3 *)
mull rbx rbp L0x7fffffffd688 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555564fa9 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555564faf *)
adcs overflow r13 r13 rbx overflow;
(* adc    $0x0,%r13                                #! PC = 0x555555564fb5 *)
adcs carry r13 r13 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rsp),%rdx                          #! EA = L0x7fffffffd140; Value = 0x310b58ebea74c99f; PC = 0x555555564fb9 *)
mov rdx L0x7fffffffd140;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd690; Value = 0xabd34327f67a00c5; PC = 0x555555564fbe *)
mull rbx rbp L0x7fffffffd690 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555564fc4 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   (%rcx),%rbp                              #! EA = L0x7fffffffd1b0; Value = 0xfe453c6b0a2af0b7; PC = 0x555555564fc7 *)
adcs overflow rbp rbp L0x7fffffffd1b0 overflow;
(* adox   0x8(%rcx),%rbx                           #! EA = L0x7fffffffd1b8; Value = 0xd4e2a2c25827d6d2; PC = 0x555555564fcd *)
adcs overflow rbx rbx L0x7fffffffd1b8 overflow;
(* mov    %rbp,0x18(%rcx)                          #! EA = L0x7fffffffd1c8; PC = 0x555555564fd4 *)
mov L0x7fffffffd1c8 rbp;
(* mulx   0x58(%rdi),%rax,%rbp                     #! EA = L0x7fffffffd698; Value = 0xef6a82721cb98c2f; PC = 0x555555564fd8 *)
mull rbp rax L0x7fffffffd698 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555564fde *)
adcs carry rbx rbx rax carry;
(* adox   0x10(%rcx),%rbp                          #! EA = L0x7fffffffd1c0; Value = 0x9463c09638deb3a8; PC = 0x555555564fe4 *)
adcs overflow rbp rbp L0x7fffffffd1c0 overflow;
(* mov    %rbx,(%rcx)                              #! EA = L0x7fffffffd1b0; PC = 0x555555564feb *)
mov L0x7fffffffd1b0 rbx;
(* mulx   0x60(%rdi),%rax,%rbx                     #! EA = L0x7fffffffd6a0; Value = 0xdb12d37b563e23c7; PC = 0x555555564fee *)
mull rbx rax L0x7fffffffd6a0 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555564ff4 *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r14                                #! PC = 0x555555564ffa *)
adcs overflow r14 r14 rbx overflow;
(* mov    %rbp,0x8(%rcx)                           #! EA = L0x7fffffffd1b8; PC = 0x555555565000 *)
mov L0x7fffffffd1b8 rbp;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6a8; Value = 0xafb884deeb02fedf; PC = 0x555555565004 *)
mull rbx rbp L0x7fffffffd6a8 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x55555556500a *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555565010 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x70(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6b0; Value = 0x624ccf9246b5cc94; PC = 0x555555565016 *)
mull rbx rbp L0x7fffffffd6b0 rdx;
(* mov    %r14,0x10(%rcx)                          #! EA = L0x7fffffffd1c0; PC = 0x55555556501c *)
mov L0x7fffffffd1c0 r14;
(* adcx   %rbp,%r15                                #! PC = 0x555555565020 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555565026 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x78(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6b8; Value = 0x5627ee8f489ec34e; PC = 0x55555556502c *)
mull rbx rbp L0x7fffffffd6b8 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555565032 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555565038 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x80(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6c0; Value = 0xa1620adc90bff912; PC = 0x55555556503e *)
mull rbx rbp L0x7fffffffd6c0 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555565047 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x55555556504d *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x88(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6c8; Value = 0x8a51181ee01a7d65; PC = 0x555555565053 *)
mull rbx rbp L0x7fffffffd6c8 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x55555556505c *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555565062 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x90(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6d0; Value = 0xb4bbb9ad51928a5a; PC = 0x555555565068 *)
mull rbx rbp L0x7fffffffd6d0 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555565071 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555565077 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x98(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6d8; Value = 0x0000000083de5cb4; PC = 0x55555556507d *)
mull rbx rbp L0x7fffffffd6d8 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555565086 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x55555556508c *)
adcs overflow r13 r13 rbx overflow;
(* adc    $0x0,%r13                                #! PC = 0x555555565092 *)
adcs carry r13 r13 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rcx),%rdx                          #! EA = L0x7fffffffd1c8; Value = 0x7b56f39655d01812; PC = 0x555555565096 *)
mov rdx L0x7fffffffd1c8;
(* mulx   0x84dd(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x55555556509a *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555650a3 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r15                                #! PC = 0x5555555650a6 *)
adcs overflow r15 r15 rbp overflow;
(* adox   %rbx,%r8                                 #! PC = 0x5555555650ac *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x84cd(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x5555555650b2 *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x5555555650bb *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555650c1 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x84c0(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x5555555650c7 *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x5555555650d0 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555650d6 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x84b3(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x5555555650dc *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x5555555650e5 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555650eb *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x84a6(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x5555555650f1 *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x5555555650fa *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555565100 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x8499(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x555555565106 *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x55555556510f *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555565115 *)
adcs overflow r13 r13 rbx overflow;
(* adc    $0x0,%r13                                #! PC = 0x55555556511b *)
adcs carry r13 r13 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x20(%rsi),%rdx                          #! EA = L0x7fffffffd700; Value = 0xc324473757bc68c1; PC = 0x55555556511f *)
mov rdx L0x7fffffffd700;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffd640; Value = 0xbc8c6ee7af2eba52; PC = 0x555555565123 *)
mull rbx rbp L0x7fffffffd640 rdx;
(* xor    %r14,%r14                                #! PC = 0x555555565128 *)
mov r14 0@uint64;
clear carry;
clear overflow;
(* adox   (%rcx),%rbp                              #! EA = L0x7fffffffd1b0; Value = 0xdedfc328da09a141; PC = 0x55555556512b *)
adcs overflow rbp rbp L0x7fffffffd1b0 overflow;
(* adox   0x8(%rcx),%rbx                           #! EA = L0x7fffffffd1b8; Value = 0x539b1125610277be; PC = 0x555555565131 *)
adcs overflow rbx rbx L0x7fffffffd1b8 overflow;
(* mov    %rbp,(%rcx)                              #! EA = L0x7fffffffd1b0; PC = 0x555555565138 *)
mov L0x7fffffffd1b0 rbp;
(* mulx   0x8(%rdi),%rax,%rbp                      #! EA = L0x7fffffffd648; Value = 0x082ba9eb11c8cca2; PC = 0x55555556513b *)
mull rbp rax L0x7fffffffd648 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555565141 *)
adcs carry rbx rbx rax carry;
(* adox   0x10(%rcx),%rbp                          #! EA = L0x7fffffffd1c0; Value = 0x90c164da52fd2175; PC = 0x555555565147 *)
adcs overflow rbp rbp L0x7fffffffd1c0 overflow;
(* mov    %rbx,0x8(%rcx)                           #! EA = L0x7fffffffd1b8; PC = 0x55555556514e *)
mov L0x7fffffffd1b8 rbx;
(* mulx   0x10(%rdi),%rax,%rbx                     #! EA = L0x7fffffffd650; Value = 0x12f249b5b505249c; PC = 0x555555565152 *)
mull rbx rax L0x7fffffffd650 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555565158 *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r15                                #! PC = 0x55555556515e *)
adcs overflow r15 r15 rbx overflow;
(* mov    %rbp,0x10(%rcx)                          #! EA = L0x7fffffffd1c0; PC = 0x555555565164 *)
mov L0x7fffffffd1c0 rbp;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd658; Value = 0x0f78a1c3be4d90ac; PC = 0x555555565168 *)
mull rbx rbp L0x7fffffffd658 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x55555556516e *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555565174 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd660; Value = 0xdc2780c414bc970f; PC = 0x55555556517a *)
mull rbx rbp L0x7fffffffd660 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555565180 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555565186 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd668; Value = 0x2ba26832c8c3af74; PC = 0x55555556518c *)
mull rbx rbp L0x7fffffffd668 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555565192 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555565198 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd670; Value = 0xb3d1e0f9ae656c2e; PC = 0x55555556519e *)
mull rbx rbp L0x7fffffffd670 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x5555555651a4 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555651aa *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd678; Value = 0x52b57228fe99195b; PC = 0x5555555651b0 *)
mull rbx rbp L0x7fffffffd678 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x5555555651b6 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555651bc *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd680; Value = 0x86ac02afd8a24676; PC = 0x5555555651c2 *)
mull rbx rbp L0x7fffffffd680 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x5555555651c8 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555651ce *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd688; Value = 0x000000009ce32441; PC = 0x5555555651d4 *)
mull rbx rbp L0x7fffffffd688 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x5555555651da *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x5555555651e0 *)
adcs overflow r14 r14 rbx overflow;
(* adc    $0x0,%r14                                #! PC = 0x5555555651e6 *)
adcs carry r14 r14 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x20(%rsp),%rdx                          #! EA = L0x7fffffffd148; Value = 0x39c82cba46dc2ff5; PC = 0x5555555651ea *)
mov rdx L0x7fffffffd148;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd690; Value = 0xabd34327f67a00c5; PC = 0x5555555651ef *)
mull rbx rbp L0x7fffffffd690 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555651f5 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   (%rcx),%rbp                              #! EA = L0x7fffffffd1b0; Value = 0x82b9cc3f9a2d6913; PC = 0x5555555651f8 *)
adcs overflow rbp rbp L0x7fffffffd1b0 overflow;
(* adox   0x8(%rcx),%rbx                           #! EA = L0x7fffffffd1b8; Value = 0x24a08d147a105bb5; PC = 0x5555555651fe *)
adcs overflow rbx rbx L0x7fffffffd1b8 overflow;
(* mov    %rbp,0x18(%rcx)                          #! EA = L0x7fffffffd1c8; PC = 0x555555565205 *)
mov L0x7fffffffd1c8 rbp;
(* mulx   0x58(%rdi),%rax,%rbp                     #! EA = L0x7fffffffd698; Value = 0xef6a82721cb98c2f; PC = 0x555555565209 *)
mull rbp rax L0x7fffffffd698 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x55555556520f *)
adcs carry rbx rbx rax carry;
(* adox   0x10(%rcx),%rbp                          #! EA = L0x7fffffffd1c0; Value = 0x7abf03f59d361cc5; PC = 0x555555565215 *)
adcs overflow rbp rbp L0x7fffffffd1c0 overflow;
(* mov    %rbx,(%rcx)                              #! EA = L0x7fffffffd1b0; PC = 0x55555556521c *)
mov L0x7fffffffd1b0 rbx;
(* mulx   0x60(%rdi),%rax,%rbx                     #! EA = L0x7fffffffd6a0; Value = 0xdb12d37b563e23c7; PC = 0x55555556521f *)
mull rbx rax L0x7fffffffd6a0 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555565225 *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r15                                #! PC = 0x55555556522b *)
adcs overflow r15 r15 rbx overflow;
(* mov    %rbp,0x8(%rcx)                           #! EA = L0x7fffffffd1b8; PC = 0x555555565231 *)
mov L0x7fffffffd1b8 rbp;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6a8; Value = 0xafb884deeb02fedf; PC = 0x555555565235 *)
mull rbx rbp L0x7fffffffd6a8 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x55555556523b *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555565241 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x70(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6b0; Value = 0x624ccf9246b5cc94; PC = 0x555555565247 *)
mull rbx rbp L0x7fffffffd6b0 rdx;
(* mov    %r15,0x10(%rcx)                          #! EA = L0x7fffffffd1c0; PC = 0x55555556524d *)
mov L0x7fffffffd1c0 r15;
(* adcx   %rbp,%r8                                 #! PC = 0x555555565251 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555565257 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x78(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6b8; Value = 0x5627ee8f489ec34e; PC = 0x55555556525d *)
mull rbx rbp L0x7fffffffd6b8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555565263 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555565269 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x80(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6c0; Value = 0xa1620adc90bff912; PC = 0x55555556526f *)
mull rbx rbp L0x7fffffffd6c0 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555565278 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x55555556527e *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x88(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6c8; Value = 0x8a51181ee01a7d65; PC = 0x555555565284 *)
mull rbx rbp L0x7fffffffd6c8 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x55555556528d *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555565293 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x90(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6d0; Value = 0xb4bbb9ad51928a5a; PC = 0x555555565299 *)
mull rbx rbp L0x7fffffffd6d0 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x5555555652a2 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555652a8 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x98(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6d8; Value = 0x0000000083de5cb4; PC = 0x5555555652ae *)
mull rbx rbp L0x7fffffffd6d8 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x5555555652b7 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x5555555652bd *)
adcs overflow r14 r14 rbx overflow;
(* adc    $0x0,%r14                                #! PC = 0x5555555652c3 *)
adcs carry r14 r14 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rcx),%rdx                          #! EA = L0x7fffffffd1c8; Value = 0xe4a8ffef6a60509c; PC = 0x5555555652c7 *)
mov rdx L0x7fffffffd1c8;
(* mulx   0x82ac(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x5555555652cb *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555652d4 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r8                                 #! PC = 0x5555555652d7 *)
adcs overflow r8 r8 rbp overflow;
(* adox   %rbx,%r9                                 #! PC = 0x5555555652dd *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x829c(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x5555555652e3 *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x5555555652ec *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555652f2 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x828f(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x5555555652f8 *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555565301 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555565307 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x8282(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x55555556530d *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555565316 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x55555556531c *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x8275(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x555555565322 *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x55555556532b *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555565331 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x8268(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x555555565337 *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555565340 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555565346 *)
adcs overflow r14 r14 rbx overflow;
(* adc    $0x0,%r14                                #! PC = 0x55555556534c *)
adcs carry r14 r14 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x28(%rsi),%rdx                          #! EA = L0x7fffffffd708; Value = 0x2305ca7b914f6996; PC = 0x555555565350 *)
mov rdx L0x7fffffffd708;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffd640; Value = 0xbc8c6ee7af2eba52; PC = 0x555555565354 *)
mull rbx rbp L0x7fffffffd640 rdx;
(* xor    %r15,%r15                                #! PC = 0x555555565359 *)
mov r15 0@uint64;
clear carry;
clear overflow;
(* adox   (%rcx),%rbp                              #! EA = L0x7fffffffd1b0; Value = 0x06d616850e7716ad; PC = 0x55555556535c *)
adcs overflow rbp rbp L0x7fffffffd1b0 overflow;
(* adox   0x8(%rcx),%rbx                           #! EA = L0x7fffffffd1b8; Value = 0xdff847af8de3144a; PC = 0x555555565362 *)
adcs overflow rbx rbx L0x7fffffffd1b8 overflow;
(* mov    %rbp,(%rcx)                              #! EA = L0x7fffffffd1b0; PC = 0x555555565369 *)
mov L0x7fffffffd1b0 rbp;
(* mulx   0x8(%rdi),%rax,%rbp                      #! EA = L0x7fffffffd648; Value = 0x082ba9eb11c8cca2; PC = 0x55555556536c *)
mull rbp rax L0x7fffffffd648 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555565372 *)
adcs carry rbx rbx rax carry;
(* adox   0x10(%rcx),%rbp                          #! EA = L0x7fffffffd1c0; Value = 0x04c0e1a8baade979; PC = 0x555555565378 *)
adcs overflow rbp rbp L0x7fffffffd1c0 overflow;
(* mov    %rbx,0x8(%rcx)                           #! EA = L0x7fffffffd1b8; PC = 0x55555556537f *)
mov L0x7fffffffd1b8 rbx;
(* mulx   0x10(%rdi),%rax,%rbx                     #! EA = L0x7fffffffd650; Value = 0x12f249b5b505249c; PC = 0x555555565383 *)
mull rbx rax L0x7fffffffd650 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555565389 *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r8                                 #! PC = 0x55555556538f *)
adcs overflow r8 r8 rbx overflow;
(* mov    %rbp,0x10(%rcx)                          #! EA = L0x7fffffffd1c0; PC = 0x555555565395 *)
mov L0x7fffffffd1c0 rbp;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd658; Value = 0x0f78a1c3be4d90ac; PC = 0x555555565399 *)
mull rbx rbp L0x7fffffffd658 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x55555556539f *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555653a5 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd660; Value = 0xdc2780c414bc970f; PC = 0x5555555653ab *)
mull rbx rbp L0x7fffffffd660 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x5555555653b1 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555653b7 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd668; Value = 0x2ba26832c8c3af74; PC = 0x5555555653bd *)
mull rbx rbp L0x7fffffffd668 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x5555555653c3 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555653c9 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd670; Value = 0xb3d1e0f9ae656c2e; PC = 0x5555555653cf *)
mull rbx rbp L0x7fffffffd670 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x5555555653d5 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555653db *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd678; Value = 0x52b57228fe99195b; PC = 0x5555555653e1 *)
mull rbx rbp L0x7fffffffd678 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x5555555653e7 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555653ed *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd680; Value = 0x86ac02afd8a24676; PC = 0x5555555653f3 *)
mull rbx rbp L0x7fffffffd680 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x5555555653f9 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x5555555653ff *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd688; Value = 0x000000009ce32441; PC = 0x555555565405 *)
mull rbx rbp L0x7fffffffd688 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x55555556540b *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555565411 *)
adcs overflow r15 r15 rbx overflow;
(* adc    $0x0,%r15                                #! PC = 0x555555565417 *)
adcs carry r15 r15 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x28(%rsp),%rdx                          #! EA = L0x7fffffffd150; Value = 0xda4e980f600f3172; PC = 0x55555556541b *)
mov rdx L0x7fffffffd150;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd690; Value = 0xabd34327f67a00c5; PC = 0x555555565420 *)
mull rbx rbp L0x7fffffffd690 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565426 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   (%rcx),%rbp                              #! EA = L0x7fffffffd1b0; Value = 0x7266d979cf91e4b9; PC = 0x555555565429 *)
adcs overflow rbp rbp L0x7fffffffd1b0 overflow;
(* adox   0x8(%rcx),%rbx                           #! EA = L0x7fffffffd1b8; Value = 0x62c41775e6f35e10; PC = 0x55555556542f *)
adcs overflow rbx rbx L0x7fffffffd1b8 overflow;
(* mov    %rbp,0x18(%rcx)                          #! EA = L0x7fffffffd1c8; PC = 0x555555565436 *)
mov L0x7fffffffd1c8 rbp;
(* mulx   0x58(%rdi),%rax,%rbp                     #! EA = L0x7fffffffd698; Value = 0xef6a82721cb98c2f; PC = 0x55555556543a *)
mull rbp rax L0x7fffffffd698 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555565440 *)
adcs carry rbx rbx rax carry;
(* adox   0x10(%rcx),%rbp                          #! EA = L0x7fffffffd1c0; Value = 0x3e1436326a9089d8; PC = 0x555555565446 *)
adcs overflow rbp rbp L0x7fffffffd1c0 overflow;
(* mov    %rbx,(%rcx)                              #! EA = L0x7fffffffd1b0; PC = 0x55555556544d *)
mov L0x7fffffffd1b0 rbx;
(* mulx   0x60(%rdi),%rax,%rbx                     #! EA = L0x7fffffffd6a0; Value = 0xdb12d37b563e23c7; PC = 0x555555565450 *)
mull rbx rax L0x7fffffffd6a0 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555565456 *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r8                                 #! PC = 0x55555556545c *)
adcs overflow r8 r8 rbx overflow;
(* mov    %rbp,0x8(%rcx)                           #! EA = L0x7fffffffd1b8; PC = 0x555555565462 *)
mov L0x7fffffffd1b8 rbp;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6a8; Value = 0xafb884deeb02fedf; PC = 0x555555565466 *)
mull rbx rbp L0x7fffffffd6a8 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x55555556546c *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555565472 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x70(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6b0; Value = 0x624ccf9246b5cc94; PC = 0x555555565478 *)
mull rbx rbp L0x7fffffffd6b0 rdx;
(* mov    %r8,0x10(%rcx)                           #! EA = L0x7fffffffd1c0; PC = 0x55555556547e *)
mov L0x7fffffffd1c0 r8;
(* adcx   %rbp,%r9                                 #! PC = 0x555555565482 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555565488 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x78(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6b8; Value = 0x5627ee8f489ec34e; PC = 0x55555556548e *)
mull rbx rbp L0x7fffffffd6b8 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555565494 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x55555556549a *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x80(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6c0; Value = 0xa1620adc90bff912; PC = 0x5555555654a0 *)
mull rbx rbp L0x7fffffffd6c0 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x5555555654a9 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555654af *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x88(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6c8; Value = 0x8a51181ee01a7d65; PC = 0x5555555654b5 *)
mull rbx rbp L0x7fffffffd6c8 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x5555555654be *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555654c4 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x90(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6d0; Value = 0xb4bbb9ad51928a5a; PC = 0x5555555654ca *)
mull rbx rbp L0x7fffffffd6d0 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x5555555654d3 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x5555555654d9 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x98(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6d8; Value = 0x0000000083de5cb4; PC = 0x5555555654df *)
mull rbx rbp L0x7fffffffd6d8 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x5555555654e8 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x5555555654ee *)
adcs overflow r15 r15 rbx overflow;
(* adc    $0x0,%r15                                #! PC = 0x5555555654f4 *)
adcs carry r15 r15 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rcx),%rdx                          #! EA = L0x7fffffffd1c8; Value = 0x31bb9c6dd796f173; PC = 0x5555555654f8 *)
mov rdx L0x7fffffffd1c8;
(* mulx   0x807b(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x5555555654fc *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565505 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r9                                 #! PC = 0x555555565508 *)
adcs overflow r9 r9 rbp overflow;
(* adox   %rbx,%r10                                #! PC = 0x55555556550e *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x806b(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x555555565514 *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x55555556551d *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555565523 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x805e(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x555555565529 *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555565532 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555565538 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x8051(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x55555556553e *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555565547 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x55555556554d *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x8044(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x555555565553 *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x55555556555c *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555565562 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x8037(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x555555565568 *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555565571 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555565577 *)
adcs overflow r15 r15 rbx overflow;
(* adc    $0x0,%r15                                #! PC = 0x55555556557d *)
adcs carry r15 r15 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x30(%rsi),%rdx                          #! EA = L0x7fffffffd710; Value = 0x9807bb0b581ba25f; PC = 0x555555565581 *)
mov rdx L0x7fffffffd710;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffd640; Value = 0xbc8c6ee7af2eba52; PC = 0x555555565585 *)
mull rbx rbp L0x7fffffffd640 rdx;
(* xor    %r8,%r8                                  #! PC = 0x55555556558a *)
mov r8 0@uint64;
clear carry;
clear overflow;
(* adox   (%rcx),%rbp                              #! EA = L0x7fffffffd1b0; Value = 0xfb930f964bf4dd42; PC = 0x55555556558d *)
adcs overflow rbp rbp L0x7fffffffd1b0 overflow;
(* adox   0x8(%rcx),%rbx                           #! EA = L0x7fffffffd1b8; Value = 0x2730ce16f980dd83; PC = 0x555555565593 *)
adcs overflow rbx rbx L0x7fffffffd1b8 overflow;
(* mov    %rbp,(%rcx)                              #! EA = L0x7fffffffd1b0; PC = 0x55555556559a *)
mov L0x7fffffffd1b0 rbp;
(* mulx   0x8(%rdi),%rax,%rbp                      #! EA = L0x7fffffffd648; Value = 0x082ba9eb11c8cca2; PC = 0x55555556559d *)
mull rbp rax L0x7fffffffd648 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x5555555655a3 *)
adcs carry rbx rbx rax carry;
(* adox   0x10(%rcx),%rbp                          #! EA = L0x7fffffffd1c0; Value = 0x1f598bc2f2238ecc; PC = 0x5555555655a9 *)
adcs overflow rbp rbp L0x7fffffffd1c0 overflow;
(* mov    %rbx,0x8(%rcx)                           #! EA = L0x7fffffffd1b8; PC = 0x5555555655b0 *)
mov L0x7fffffffd1b8 rbx;
(* mulx   0x10(%rdi),%rax,%rbx                     #! EA = L0x7fffffffd650; Value = 0x12f249b5b505249c; PC = 0x5555555655b4 *)
mull rbx rax L0x7fffffffd650 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x5555555655ba *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555655c0 *)
adcs overflow r9 r9 rbx overflow;
(* mov    %rbp,0x10(%rcx)                          #! EA = L0x7fffffffd1c0; PC = 0x5555555655c6 *)
mov L0x7fffffffd1c0 rbp;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd658; Value = 0x0f78a1c3be4d90ac; PC = 0x5555555655ca *)
mull rbx rbp L0x7fffffffd658 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x5555555655d0 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555655d6 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd660; Value = 0xdc2780c414bc970f; PC = 0x5555555655dc *)
mull rbx rbp L0x7fffffffd660 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x5555555655e2 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555655e8 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd668; Value = 0x2ba26832c8c3af74; PC = 0x5555555655ee *)
mull rbx rbp L0x7fffffffd668 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x5555555655f4 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555655fa *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd670; Value = 0xb3d1e0f9ae656c2e; PC = 0x555555565600 *)
mull rbx rbp L0x7fffffffd670 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555565606 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x55555556560c *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd678; Value = 0x52b57228fe99195b; PC = 0x555555565612 *)
mull rbx rbp L0x7fffffffd678 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555565618 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x55555556561e *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd680; Value = 0x86ac02afd8a24676; PC = 0x555555565624 *)
mull rbx rbp L0x7fffffffd680 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x55555556562a *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555565630 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd688; Value = 0x000000009ce32441; PC = 0x555555565636 *)
mull rbx rbp L0x7fffffffd688 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x55555556563c *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555565642 *)
adcs overflow r8 r8 rbx overflow;
(* adc    $0x0,%r8                                 #! PC = 0x555555565648 *)
adcs carry r8 r8 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x30(%rsp),%rdx                          #! EA = L0x7fffffffd158; Value = 0x3a6e55e7c7ba979c; PC = 0x55555556564c *)
mov rdx L0x7fffffffd158;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd690; Value = 0xabd34327f67a00c5; PC = 0x555555565651 *)
mull rbx rbp L0x7fffffffd690 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565657 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   (%rcx),%rbp                              #! EA = L0x7fffffffd1b0; Value = 0x99e045ebb6d9e5b0; PC = 0x55555556565a *)
adcs overflow rbp rbp L0x7fffffffd1b0 overflow;
(* adox   0x8(%rcx),%rbx                           #! EA = L0x7fffffffd1b8; Value = 0x3455b88271e37bfb; PC = 0x555555565660 *)
adcs overflow rbx rbx L0x7fffffffd1b8 overflow;
(* mov    %rbp,0x18(%rcx)                          #! EA = L0x7fffffffd1c8; PC = 0x555555565667 *)
mov L0x7fffffffd1c8 rbp;
(* mulx   0x58(%rdi),%rax,%rbp                     #! EA = L0x7fffffffd698; Value = 0xef6a82721cb98c2f; PC = 0x55555556566b *)
mull rbp rax L0x7fffffffd698 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555565671 *)
adcs carry rbx rbx rax carry;
(* adox   0x10(%rcx),%rbp                          #! EA = L0x7fffffffd1c0; Value = 0xe46071a0567679f8; PC = 0x555555565677 *)
adcs overflow rbp rbp L0x7fffffffd1c0 overflow;
(* mov    %rbx,(%rcx)                              #! EA = L0x7fffffffd1b0; PC = 0x55555556567e *)
mov L0x7fffffffd1b0 rbx;
(* mulx   0x60(%rdi),%rax,%rbx                     #! EA = L0x7fffffffd6a0; Value = 0xdb12d37b563e23c7; PC = 0x555555565681 *)
mull rbx rax L0x7fffffffd6a0 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555565687 *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r9                                 #! PC = 0x55555556568d *)
adcs overflow r9 r9 rbx overflow;
(* mov    %rbp,0x8(%rcx)                           #! EA = L0x7fffffffd1b8; PC = 0x555555565693 *)
mov L0x7fffffffd1b8 rbp;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6a8; Value = 0xafb884deeb02fedf; PC = 0x555555565697 *)
mull rbx rbp L0x7fffffffd6a8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x55555556569d *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555656a3 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x70(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6b0; Value = 0x624ccf9246b5cc94; PC = 0x5555555656a9 *)
mull rbx rbp L0x7fffffffd6b0 rdx;
(* mov    %r9,0x10(%rcx)                           #! EA = L0x7fffffffd1c0; PC = 0x5555555656af *)
mov L0x7fffffffd1c0 r9;
(* adcx   %rbp,%r10                                #! PC = 0x5555555656b3 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555656b9 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x78(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6b8; Value = 0x5627ee8f489ec34e; PC = 0x5555555656bf *)
mull rbx rbp L0x7fffffffd6b8 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x5555555656c5 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555656cb *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x80(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6c0; Value = 0xa1620adc90bff912; PC = 0x5555555656d1 *)
mull rbx rbp L0x7fffffffd6c0 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x5555555656da *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555656e0 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x88(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6c8; Value = 0x8a51181ee01a7d65; PC = 0x5555555656e6 *)
mull rbx rbp L0x7fffffffd6c8 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x5555555656ef *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x5555555656f5 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x90(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6d0; Value = 0xb4bbb9ad51928a5a; PC = 0x5555555656fb *)
mull rbx rbp L0x7fffffffd6d0 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555565704 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x55555556570a *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x98(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6d8; Value = 0x0000000083de5cb4; PC = 0x555555565710 *)
mull rbx rbp L0x7fffffffd6d8 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555565719 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x55555556571f *)
adcs overflow r8 r8 rbx overflow;
(* adc    $0x0,%r8                                 #! PC = 0x555555565725 *)
adcs carry r8 r8 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rcx),%rdx                          #! EA = L0x7fffffffd1c8; Value = 0xa7d9caa891c890bc; PC = 0x555555565729 *)
mov rdx L0x7fffffffd1c8;
(* mulx   0x7e4a(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x55555556572d *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565736 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r10                                #! PC = 0x555555565739 *)
adcs overflow r10 r10 rbp overflow;
(* adox   %rbx,%r11                                #! PC = 0x55555556573f *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x7e3a(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x555555565745 *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x55555556574e *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555565754 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x7e2d(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x55555556575a *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555565763 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555565769 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x7e20(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x55555556576f *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555565778 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x55555556577e *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x7e13(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x555555565784 *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x55555556578d *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555565793 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x7e06(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x555555565799 *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x5555555657a2 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555657a8 *)
adcs overflow r8 r8 rbx overflow;
(* adc    $0x0,%r8                                 #! PC = 0x5555555657ae *)
adcs carry r8 r8 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x38(%rsi),%rdx                          #! EA = L0x7fffffffd718; Value = 0x27e3bfb62d220520; PC = 0x5555555657b2 *)
mov rdx L0x7fffffffd718;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffd640; Value = 0xbc8c6ee7af2eba52; PC = 0x5555555657b6 *)
mull rbx rbp L0x7fffffffd640 rdx;
(* xor    %r9,%r9                                  #! PC = 0x5555555657bb *)
mov r9 0@uint64;
clear carry;
clear overflow;
(* adox   (%rcx),%rbp                              #! EA = L0x7fffffffd1b0; Value = 0xf7cea4d567ca8293; PC = 0x5555555657be *)
adcs overflow rbp rbp L0x7fffffffd1b0 overflow;
(* adox   0x8(%rcx),%rbx                           #! EA = L0x7fffffffd1b8; Value = 0x2658b4d743c4eecd; PC = 0x5555555657c4 *)
adcs overflow rbx rbx L0x7fffffffd1b8 overflow;
(* mov    %rbp,(%rcx)                              #! EA = L0x7fffffffd1b0; PC = 0x5555555657cb *)
mov L0x7fffffffd1b0 rbp;
(* mulx   0x8(%rdi),%rax,%rbp                      #! EA = L0x7fffffffd648; Value = 0x082ba9eb11c8cca2; PC = 0x5555555657ce *)
mull rbp rax L0x7fffffffd648 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x5555555657d4 *)
adcs carry rbx rbx rax carry;
(* adox   0x10(%rcx),%rbp                          #! EA = L0x7fffffffd1c0; Value = 0x6f7eb1c956837dc5; PC = 0x5555555657da *)
adcs overflow rbp rbp L0x7fffffffd1c0 overflow;
(* mov    %rbx,0x8(%rcx)                           #! EA = L0x7fffffffd1b8; PC = 0x5555555657e1 *)
mov L0x7fffffffd1b8 rbx;
(* mulx   0x10(%rdi),%rax,%rbx                     #! EA = L0x7fffffffd650; Value = 0x12f249b5b505249c; PC = 0x5555555657e5 *)
mull rbx rax L0x7fffffffd650 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x5555555657eb *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555657f1 *)
adcs overflow r10 r10 rbx overflow;
(* mov    %rbp,0x10(%rcx)                          #! EA = L0x7fffffffd1c0; PC = 0x5555555657f7 *)
mov L0x7fffffffd1c0 rbp;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd658; Value = 0x0f78a1c3be4d90ac; PC = 0x5555555657fb *)
mull rbx rbp L0x7fffffffd658 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555565801 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555565807 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd660; Value = 0xdc2780c414bc970f; PC = 0x55555556580d *)
mull rbx rbp L0x7fffffffd660 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555565813 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555565819 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd668; Value = 0x2ba26832c8c3af74; PC = 0x55555556581f *)
mull rbx rbp L0x7fffffffd668 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555565825 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x55555556582b *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd670; Value = 0xb3d1e0f9ae656c2e; PC = 0x555555565831 *)
mull rbx rbp L0x7fffffffd670 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555565837 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x55555556583d *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd678; Value = 0x52b57228fe99195b; PC = 0x555555565843 *)
mull rbx rbp L0x7fffffffd678 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555565849 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x55555556584f *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd680; Value = 0x86ac02afd8a24676; PC = 0x555555565855 *)
mull rbx rbp L0x7fffffffd680 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x55555556585b *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555565861 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd688; Value = 0x000000009ce32441; PC = 0x555555565867 *)
mull rbx rbp L0x7fffffffd688 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x55555556586d *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555565873 *)
adcs overflow r9 r9 rbx overflow;
(* adc    $0x0,%r9                                 #! PC = 0x555555565879 *)
adcs carry r9 r9 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x38(%rsp),%rdx                          #! EA = L0x7fffffffd160; Value = 0xcba83db4284fe763; PC = 0x55555556587d *)
mov rdx L0x7fffffffd160;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd690; Value = 0xabd34327f67a00c5; PC = 0x555555565882 *)
mull rbx rbp L0x7fffffffd690 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565888 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   (%rcx),%rbp                              #! EA = L0x7fffffffd1b0; Value = 0xd9092778602966d3; PC = 0x55555556588b *)
adcs overflow rbp rbp L0x7fffffffd1b0 overflow;
(* adox   0x8(%rcx),%rbx                           #! EA = L0x7fffffffd1b8; Value = 0x9dedae00a7559435; PC = 0x555555565891 *)
adcs overflow rbx rbx L0x7fffffffd1b8 overflow;
(* mov    %rbp,0x18(%rcx)                          #! EA = L0x7fffffffd1c8; PC = 0x555555565898 *)
mov L0x7fffffffd1c8 rbp;
(* mulx   0x58(%rdi),%rax,%rbp                     #! EA = L0x7fffffffd698; Value = 0xef6a82721cb98c2f; PC = 0x55555556589c *)
mull rbp rax L0x7fffffffd698 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x5555555658a2 *)
adcs carry rbx rbx rax carry;
(* adox   0x10(%rcx),%rbp                          #! EA = L0x7fffffffd1c0; Value = 0x07bebdc838ff6bb7; PC = 0x5555555658a8 *)
adcs overflow rbp rbp L0x7fffffffd1c0 overflow;
(* mov    %rbx,(%rcx)                              #! EA = L0x7fffffffd1b0; PC = 0x5555555658af *)
mov L0x7fffffffd1b0 rbx;
(* mulx   0x60(%rdi),%rax,%rbx                     #! EA = L0x7fffffffd6a0; Value = 0xdb12d37b563e23c7; PC = 0x5555555658b2 *)
mull rbx rax L0x7fffffffd6a0 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x5555555658b8 *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555658be *)
adcs overflow r10 r10 rbx overflow;
(* mov    %rbp,0x8(%rcx)                           #! EA = L0x7fffffffd1b8; PC = 0x5555555658c4 *)
mov L0x7fffffffd1b8 rbp;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6a8; Value = 0xafb884deeb02fedf; PC = 0x5555555658c8 *)
mull rbx rbp L0x7fffffffd6a8 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x5555555658ce *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555658d4 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x70(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6b0; Value = 0x624ccf9246b5cc94; PC = 0x5555555658da *)
mull rbx rbp L0x7fffffffd6b0 rdx;
(* mov    %r10,0x10(%rcx)                          #! EA = L0x7fffffffd1c0; PC = 0x5555555658e0 *)
mov L0x7fffffffd1c0 r10;
(* adcx   %rbp,%r11                                #! PC = 0x5555555658e4 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555658ea *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x78(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6b8; Value = 0x5627ee8f489ec34e; PC = 0x5555555658f0 *)
mull rbx rbp L0x7fffffffd6b8 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x5555555658f6 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555658fc *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x80(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6c0; Value = 0xa1620adc90bff912; PC = 0x555555565902 *)
mull rbx rbp L0x7fffffffd6c0 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x55555556590b *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555565911 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x88(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6c8; Value = 0x8a51181ee01a7d65; PC = 0x555555565917 *)
mull rbx rbp L0x7fffffffd6c8 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555565920 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555565926 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x90(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6d0; Value = 0xb4bbb9ad51928a5a; PC = 0x55555556592c *)
mull rbx rbp L0x7fffffffd6d0 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555565935 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x55555556593b *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x98(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6d8; Value = 0x0000000083de5cb4; PC = 0x555555565941 *)
mull rbx rbp L0x7fffffffd6d8 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x55555556594a *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555565950 *)
adcs overflow r9 r9 rbx overflow;
(* adc    $0x0,%r9                                 #! PC = 0x555555565956 *)
adcs carry r9 r9 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rcx),%rdx                          #! EA = L0x7fffffffd1c8; Value = 0xfd6cca9dccd47602; PC = 0x55555556595a *)
mov rdx L0x7fffffffd1c8;
(* mulx   0x7c19(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x55555556595e *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565967 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r11                                #! PC = 0x55555556596a *)
adcs overflow r11 r11 rbp overflow;
(* adox   %rbx,%r12                                #! PC = 0x555555565970 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x7c09(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x555555565976 *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x55555556597f *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555565985 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x7bfc(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x55555556598b *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555565994 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x55555556599a *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x7bef(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x5555555659a0 *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x5555555659a9 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x5555555659af *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x7be2(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x5555555659b5 *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x5555555659be *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555659c4 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x7bd5(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x5555555659ca *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x5555555659d3 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555659d9 *)
adcs overflow r9 r9 rbx overflow;
(* adc    $0x0,%r9                                 #! PC = 0x5555555659df *)
adcs carry r9 r9 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x40(%rsi),%rdx                          #! EA = L0x7fffffffd720; Value = 0x72d1bb6342be8fd8; PC = 0x5555555659e3 *)
mov rdx L0x7fffffffd720;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffd640; Value = 0xbc8c6ee7af2eba52; PC = 0x5555555659e7 *)
mull rbx rbp L0x7fffffffd640 rdx;
(* xor    %r10,%r10                                #! PC = 0x5555555659ec *)
mov r10 0@uint64;
clear carry;
clear overflow;
(* adox   (%rcx),%rbp                              #! EA = L0x7fffffffd1b0; Value = 0x9aee2991d05d13e1; PC = 0x5555555659ef *)
adcs overflow rbp rbp L0x7fffffffd1b0 overflow;
(* adox   0x8(%rcx),%rbx                           #! EA = L0x7fffffffd1b8; Value = 0xbdaa8407bd0f1654; PC = 0x5555555659f5 *)
adcs overflow rbx rbx L0x7fffffffd1b8 overflow;
(* mov    %rbp,(%rcx)                              #! EA = L0x7fffffffd1b0; PC = 0x5555555659fc *)
mov L0x7fffffffd1b0 rbp;
(* mulx   0x8(%rdi),%rax,%rbp                      #! EA = L0x7fffffffd648; Value = 0x082ba9eb11c8cca2; PC = 0x5555555659ff *)
mull rbp rax L0x7fffffffd648 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555565a05 *)
adcs carry rbx rbx rax carry;
(* adox   0x10(%rcx),%rbp                          #! EA = L0x7fffffffd1c0; Value = 0x20e413516af4a495; PC = 0x555555565a0b *)
adcs overflow rbp rbp L0x7fffffffd1c0 overflow;
(* mov    %rbx,0x8(%rcx)                           #! EA = L0x7fffffffd1b8; PC = 0x555555565a12 *)
mov L0x7fffffffd1b8 rbx;
(* mulx   0x10(%rdi),%rax,%rbx                     #! EA = L0x7fffffffd650; Value = 0x12f249b5b505249c; PC = 0x555555565a16 *)
mull rbx rax L0x7fffffffd650 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555565a1c *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r11                                #! PC = 0x555555565a22 *)
adcs overflow r11 r11 rbx overflow;
(* mov    %rbp,0x10(%rcx)                          #! EA = L0x7fffffffd1c0; PC = 0x555555565a28 *)
mov L0x7fffffffd1c0 rbp;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd658; Value = 0x0f78a1c3be4d90ac; PC = 0x555555565a2c *)
mull rbx rbp L0x7fffffffd658 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555565a32 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555565a38 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd660; Value = 0xdc2780c414bc970f; PC = 0x555555565a3e *)
mull rbx rbp L0x7fffffffd660 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555565a44 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555565a4a *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd668; Value = 0x2ba26832c8c3af74; PC = 0x555555565a50 *)
mull rbx rbp L0x7fffffffd668 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555565a56 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555565a5c *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd670; Value = 0xb3d1e0f9ae656c2e; PC = 0x555555565a62 *)
mull rbx rbp L0x7fffffffd670 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555565a68 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555565a6e *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd678; Value = 0x52b57228fe99195b; PC = 0x555555565a74 *)
mull rbx rbp L0x7fffffffd678 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555565a7a *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555565a80 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd680; Value = 0x86ac02afd8a24676; PC = 0x555555565a86 *)
mull rbx rbp L0x7fffffffd680 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555565a8c *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555565a92 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd688; Value = 0x000000009ce32441; PC = 0x555555565a98 *)
mull rbx rbp L0x7fffffffd688 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555565a9e *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555565aa4 *)
adcs overflow r10 r10 rbx overflow;
(* adc    $0x0,%r10                                #! PC = 0x555555565aaa *)
adcs carry r10 r10 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x40(%rsp),%rdx                          #! EA = L0x7fffffffd168; Value = 0xd60f2f3eb5af2d8e; PC = 0x555555565aae *)
mov rdx L0x7fffffffd168;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd690; Value = 0xabd34327f67a00c5; PC = 0x555555565ab3 *)
mull rbx rbp L0x7fffffffd690 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565ab9 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   (%rcx),%rbp                              #! EA = L0x7fffffffd1b0; Value = 0xb09b2c5626ba1711; PC = 0x555555565abc *)
adcs overflow rbp rbp L0x7fffffffd1b0 overflow;
(* adox   0x8(%rcx),%rbx                           #! EA = L0x7fffffffd1b8; Value = 0xd46da3caf4a9c076; PC = 0x555555565ac2 *)
adcs overflow rbx rbx L0x7fffffffd1b8 overflow;
(* mov    %rbp,0x18(%rcx)                          #! EA = L0x7fffffffd1c8; PC = 0x555555565ac9 *)
mov L0x7fffffffd1c8 rbp;
(* mulx   0x58(%rdi),%rax,%rbp                     #! EA = L0x7fffffffd698; Value = 0xef6a82721cb98c2f; PC = 0x555555565acd *)
mull rbp rax L0x7fffffffd698 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555565ad3 *)
adcs carry rbx rbx rax carry;
(* adox   0x10(%rcx),%rbp                          #! EA = L0x7fffffffd1c0; Value = 0x23c7b1a0e17e5ef8; PC = 0x555555565ad9 *)
adcs overflow rbp rbp L0x7fffffffd1c0 overflow;
(* mov    %rbx,(%rcx)                              #! EA = L0x7fffffffd1b0; PC = 0x555555565ae0 *)
mov L0x7fffffffd1b0 rbx;
(* mulx   0x60(%rdi),%rax,%rbx                     #! EA = L0x7fffffffd6a0; Value = 0xdb12d37b563e23c7; PC = 0x555555565ae3 *)
mull rbx rax L0x7fffffffd6a0 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555565ae9 *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r11                                #! PC = 0x555555565aef *)
adcs overflow r11 r11 rbx overflow;
(* mov    %rbp,0x8(%rcx)                           #! EA = L0x7fffffffd1b8; PC = 0x555555565af5 *)
mov L0x7fffffffd1b8 rbp;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6a8; Value = 0xafb884deeb02fedf; PC = 0x555555565af9 *)
mull rbx rbp L0x7fffffffd6a8 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555565aff *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555565b05 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x70(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6b0; Value = 0x624ccf9246b5cc94; PC = 0x555555565b0b *)
mull rbx rbp L0x7fffffffd6b0 rdx;
(* mov    %r11,0x10(%rcx)                          #! EA = L0x7fffffffd1c0; PC = 0x555555565b11 *)
mov L0x7fffffffd1c0 r11;
(* adcx   %rbp,%r12                                #! PC = 0x555555565b15 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555565b1b *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x78(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6b8; Value = 0x5627ee8f489ec34e; PC = 0x555555565b21 *)
mull rbx rbp L0x7fffffffd6b8 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555565b27 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555565b2d *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x80(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6c0; Value = 0xa1620adc90bff912; PC = 0x555555565b33 *)
mull rbx rbp L0x7fffffffd6c0 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555565b3c *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555565b42 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x88(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6c8; Value = 0x8a51181ee01a7d65; PC = 0x555555565b48 *)
mull rbx rbp L0x7fffffffd6c8 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555565b51 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555565b57 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x90(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6d0; Value = 0xb4bbb9ad51928a5a; PC = 0x555555565b5d *)
mull rbx rbp L0x7fffffffd6d0 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555565b66 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555565b6c *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x98(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6d8; Value = 0x0000000083de5cb4; PC = 0x555555565b72 *)
mull rbx rbp L0x7fffffffd6d8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555565b7b *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555565b81 *)
adcs overflow r10 r10 rbx overflow;
(* adc    $0x0,%r10                                #! PC = 0x555555565b87 *)
adcs carry r10 r10 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rcx),%rdx                          #! EA = L0x7fffffffd1c8; Value = 0x1d698d7c20342557; PC = 0x555555565b8b *)
mov rdx L0x7fffffffd1c8;
(* mulx   0x79e8(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x555555565b8f *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565b98 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r12                                #! PC = 0x555555565b9b *)
adcs overflow r12 r12 rbp overflow;
(* adox   %rbx,%r13                                #! PC = 0x555555565ba1 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x79d8(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x555555565ba7 *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555565bb0 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555565bb6 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x79cb(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x555555565bbc *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555565bc5 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555565bcb *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x79be(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x555555565bd1 *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555565bda *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555565be0 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x79b1(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x555555565be6 *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555565bef *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555565bf5 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x79a4(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x555555565bfb *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555565c04 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555565c0a *)
adcs overflow r10 r10 rbx overflow;
(* adc    $0x0,%r10                                #! PC = 0x555555565c10 *)
adcs carry r10 r10 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x48(%rsi),%rdx                          #! EA = L0x7fffffffd728; Value = 0x00000001b6418226; PC = 0x555555565c14 *)
mov rdx L0x7fffffffd728;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffd640; Value = 0xbc8c6ee7af2eba52; PC = 0x555555565c18 *)
mull rbx rbp L0x7fffffffd640 rdx;
(* xor    %r11,%r11                                #! PC = 0x555555565c1d *)
mov r11 0@uint64;
clear carry;
clear overflow;
(* adox   (%rcx),%rbp                              #! EA = L0x7fffffffd1b0; Value = 0x4adb40b3c82cbfbb; PC = 0x555555565c20 *)
adcs overflow rbp rbp L0x7fffffffd1b0 overflow;
(* adox   0x8(%rcx),%rbx                           #! EA = L0x7fffffffd1b8; Value = 0x432801a408a4a9f7; PC = 0x555555565c26 *)
adcs overflow rbx rbx L0x7fffffffd1b8 overflow;
(* mov    %rbp,(%rcx)                              #! EA = L0x7fffffffd1b0; PC = 0x555555565c2d *)
mov L0x7fffffffd1b0 rbp;
(* mulx   0x8(%rdi),%rax,%rbp                      #! EA = L0x7fffffffd648; Value = 0x082ba9eb11c8cca2; PC = 0x555555565c30 *)
mull rbp rax L0x7fffffffd648 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555565c36 *)
adcs carry rbx rbx rax carry;
(* adox   0x10(%rcx),%rbp                          #! EA = L0x7fffffffd1c0; Value = 0xf212d7d47e462355; PC = 0x555555565c3c *)
adcs overflow rbp rbp L0x7fffffffd1c0 overflow;
(* mov    %rbx,0x8(%rcx)                           #! EA = L0x7fffffffd1b8; PC = 0x555555565c43 *)
mov L0x7fffffffd1b8 rbx;
(* mulx   0x10(%rdi),%rax,%rbx                     #! EA = L0x7fffffffd650; Value = 0x12f249b5b505249c; PC = 0x555555565c47 *)
mull rbx rax L0x7fffffffd650 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555565c4d *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r12                                #! PC = 0x555555565c53 *)
adcs overflow r12 r12 rbx overflow;
(* mov    %rbp,0x10(%rcx)                          #! EA = L0x7fffffffd1c0; PC = 0x555555565c59 *)
mov L0x7fffffffd1c0 rbp;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd658; Value = 0x0f78a1c3be4d90ac; PC = 0x555555565c5d *)
mull rbx rbp L0x7fffffffd658 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555565c63 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555565c69 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd660; Value = 0xdc2780c414bc970f; PC = 0x555555565c6f *)
mull rbx rbp L0x7fffffffd660 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555565c75 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555565c7b *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd668; Value = 0x2ba26832c8c3af74; PC = 0x555555565c81 *)
mull rbx rbp L0x7fffffffd668 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555565c87 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555565c8d *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd670; Value = 0xb3d1e0f9ae656c2e; PC = 0x555555565c93 *)
mull rbx rbp L0x7fffffffd670 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555565c99 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555565c9f *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd678; Value = 0x52b57228fe99195b; PC = 0x555555565ca5 *)
mull rbx rbp L0x7fffffffd678 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555565cab *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555565cb1 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd680; Value = 0x86ac02afd8a24676; PC = 0x555555565cb7 *)
mull rbx rbp L0x7fffffffd680 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555565cbd *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555565cc3 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd688; Value = 0x000000009ce32441; PC = 0x555555565cc9 *)
mull rbx rbp L0x7fffffffd688 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555565ccf *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555565cd5 *)
adcs overflow r11 r11 rbx overflow;
(* adc    $0x0,%r11                                #! PC = 0x555555565cdb *)
adcs carry r11 r11 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x48(%rsp),%rdx                          #! EA = L0x7fffffffd170; Value = 0x00000013de6d4b55; PC = 0x555555565cdf *)
mov rdx L0x7fffffffd170;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd690; Value = 0xabd34327f67a00c5; PC = 0x555555565ce4 *)
mull rbx rbp L0x7fffffffd690 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565cea *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   (%rcx),%rbp                              #! EA = L0x7fffffffd1b0; Value = 0x2692cbb31e8c0be7; PC = 0x555555565ced *)
adcs overflow rbp rbp L0x7fffffffd1b0 overflow;
(* adox   0x8(%rcx),%rbx                           #! EA = L0x7fffffffd1b8; Value = 0xfb09abab0847d347; PC = 0x555555565cf3 *)
adcs overflow rbx rbx L0x7fffffffd1b8 overflow;
(* mov    %rbp,0x18(%rcx)                          #! EA = L0x7fffffffd1c8; PC = 0x555555565cfa *)
mov L0x7fffffffd1c8 rbp;
(* mulx   0x58(%rdi),%rax,%rbp                     #! EA = L0x7fffffffd698; Value = 0xef6a82721cb98c2f; PC = 0x555555565cfe *)
mull rbp rax L0x7fffffffd698 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555565d04 *)
adcs carry rbx rbx rax carry;
(* adox   0x10(%rcx),%rbp                          #! EA = L0x7fffffffd1c0; Value = 0x6651d1ab3b399672; PC = 0x555555565d0a *)
adcs overflow rbp rbp L0x7fffffffd1c0 overflow;
(* mov    %rbx,(%rcx)                              #! EA = L0x7fffffffd1b0; PC = 0x555555565d11 *)
mov L0x7fffffffd1b0 rbx;
(* mulx   0x60(%rdi),%rax,%rbx                     #! EA = L0x7fffffffd6a0; Value = 0xdb12d37b563e23c7; PC = 0x555555565d14 *)
mull rbx rax L0x7fffffffd6a0 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555565d1a *)
adcs carry rbp rbp rax carry;
(* adox   %rbx,%r12                                #! PC = 0x555555565d20 *)
adcs overflow r12 r12 rbx overflow;
(* mov    %rbp,0x8(%rcx)                           #! EA = L0x7fffffffd1b8; PC = 0x555555565d26 *)
mov L0x7fffffffd1b8 rbp;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6a8; Value = 0xafb884deeb02fedf; PC = 0x555555565d2a *)
mull rbx rbp L0x7fffffffd6a8 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555565d30 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555565d36 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x70(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6b0; Value = 0x624ccf9246b5cc94; PC = 0x555555565d3c *)
mull rbx rbp L0x7fffffffd6b0 rdx;
(* mov    %r12,0x10(%rcx)                          #! EA = L0x7fffffffd1c0; PC = 0x555555565d42 *)
mov L0x7fffffffd1c0 r12;
(* adcx   %rbp,%r13                                #! PC = 0x555555565d46 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555565d4c *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x78(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6b8; Value = 0x5627ee8f489ec34e; PC = 0x555555565d52 *)
mull rbx rbp L0x7fffffffd6b8 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555565d58 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555565d5e *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x80(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6c0; Value = 0xa1620adc90bff912; PC = 0x555555565d64 *)
mull rbx rbp L0x7fffffffd6c0 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555565d6d *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555565d73 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x88(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6c8; Value = 0x8a51181ee01a7d65; PC = 0x555555565d79 *)
mull rbx rbp L0x7fffffffd6c8 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555565d82 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555565d88 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x90(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6d0; Value = 0xb4bbb9ad51928a5a; PC = 0x555555565d8e *)
mull rbx rbp L0x7fffffffd6d0 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555565d97 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555565d9d *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x98(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd6d8; Value = 0x0000000083de5cb4; PC = 0x555555565da3 *)
mull rbx rbp L0x7fffffffd6d8 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555565dac *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555565db2 *)
adcs overflow r11 r11 rbx overflow;
(* adc    $0x0,%r11                                #! PC = 0x555555565db8 *)
adcs carry r11 r11 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rcx),%rdx                          #! EA = L0x7fffffffd1c8; Value = 0xa3349a69dd290450; PC = 0x555555565dbc *)
mov rdx L0x7fffffffd1c8;
(* mulx   0x77b7(%rip),%rbp,%rbx        # 0x55555556d580 <p610p1+32>#! EA = L0x55555556d580; Value = 0x6e02000000000000; PC = 0x555555565dc0 *)
mull rbx rbp L0x55555556d580 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565dc9 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r13                                #! PC = 0x555555565dcc *)
adcs overflow r13 r13 rbp overflow;
(* adox   %rbx,%r14                                #! PC = 0x555555565dd2 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x77a7(%rip),%rbp,%rbx        # 0x55555556d588 <p610p1+40>#! EA = L0x55555556d588; Value = 0xb1784de8aa5ab02e; PC = 0x555555565dd8 *)
mull rbx rbp L0x55555556d588 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555565de1 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555565de7 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x779a(%rip),%rbp,%rbx        # 0x55555556d590 <p610p1+48>#! EA = L0x55555556d590; Value = 0x9ae7bf45048ff9ab; PC = 0x555555565ded *)
mull rbx rbp L0x55555556d590 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555565df6 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555565dfc *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x778d(%rip),%rbp,%rbx        # 0x55555556d598 <p610p1+56>#! EA = L0x55555556d598; Value = 0xb255b2fa10c4252a; PC = 0x555555565e02 *)
mull rbx rbp L0x55555556d598 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555565e0b *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555565e11 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x7780(%rip),%rbp,%rbx        # 0x55555556d5a0 <p610p1+64>#! EA = L0x55555556d5a0; Value = 0x819010c251e7d88c; PC = 0x555555565e17 *)
mull rbx rbp L0x55555556d5a0 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555565e20 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555565e26 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x7773(%rip),%rbp,%rbx        # 0x55555556d5a8 <p610p1+72>#! EA = L0x55555556d5a8; Value = 0x000000027bf6a768; PC = 0x555555565e2c *)
mull rbx rbp L0x55555556d5a8 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555565e35 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555565e3b *)
adcs overflow r11 r11 rbx overflow;
(* adc    $0x0,%r11                                #! PC = 0x555555565e41 *)
adcs carry r11 r11 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r13,0x18(%rcx)                          #! EA = L0x7fffffffd1c8; PC = 0x555555565e45 *)
mov L0x7fffffffd1c8 r13;
(* mov    %r14,0x20(%rcx)                          #! EA = L0x7fffffffd1d0; PC = 0x555555565e49 *)
mov L0x7fffffffd1d0 r14;
(* mov    %r15,0x28(%rcx)                          #! EA = L0x7fffffffd1d8; PC = 0x555555565e4d *)
mov L0x7fffffffd1d8 r15;
(* mov    %r8,0x30(%rcx)                           #! EA = L0x7fffffffd1e0; PC = 0x555555565e51 *)
mov L0x7fffffffd1e0 r8;
(* mov    %r9,0x38(%rcx)                           #! EA = L0x7fffffffd1e8; PC = 0x555555565e55 *)
mov L0x7fffffffd1e8 r9;
(* mov    %r10,0x40(%rcx)                          #! EA = L0x7fffffffd1f0; PC = 0x555555565e59 *)
mov L0x7fffffffd1f0 r10;
(* mov    %r11,0x48(%rcx)                          #! EA = L0x7fffffffd1f8; PC = 0x555555565e5d *)
mov L0x7fffffffd1f8 r11;
(* add    $0x50,%rsp                               #! PC = 0x555555565e61 *)
adds carry rsp rsp 0x50@uint64;
(* #! <- SP = 0x7fffffffd1a8 *)
#! 0x7fffffffd1a8 = 0x7fffffffd1a8;
(* #retq                                           #! PC = 0x555555565e6f *)
#retq                                           #! 0x555555565e6f = 0x555555565e6f;

(* ===== Outputs ===== *)

mov c00 L0x7fffffffd1b0;
mov c01 L0x7fffffffd1b8;
mov c02 L0x7fffffffd1c0;
mov c03 L0x7fffffffd1c8;
mov c04 L0x7fffffffd1d0;
mov c05 L0x7fffffffd1d8;
mov c06 L0x7fffffffd1e0;
mov c07 L0x7fffffffd1e8;
mov c08 L0x7fffffffd1f0;
mov c09 L0x7fffffffd1f8;

{
  and [
    eqmod (2**640 * (limbs 64 [ c00, c01, c02, c03, c04, c05, c06, c07, c08, c09 ]))
          (
            ( (limbs 64 [ a00, a01, a02, a03, a04, a05, a06, a07, a08, a09 ])
              *
              (limbs 64 [ b00, b01, b02, b03, b04, b05, b06, b07, b08, b09 ]) )
            -
            ( (limbs 64 [ a10, a11, a12, a13, a14, a15, a16, a17, a18, a19 ])
              *
              (limbs 64 [ b10, b11, b12, b13, b14, b15, b16, b17, b18, b19 ]) )
          )
          (limbs 64 [ $p610_0, $p610_1, $p610_2, $p610_3, $p610_4, $p610_5, $p610_6, $p610_7, $p610_8, $p610_9 ])
  ]
  &&
  and [
    limbs 64 [ c00, c01, c02, c03, c04, c05, c06, c07, c08, c09 ] <=u
        (2@640 * limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64,
                            $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ] - 1@640)
  ]
}
