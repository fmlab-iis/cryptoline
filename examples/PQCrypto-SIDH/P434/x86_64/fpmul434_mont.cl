(*
by@aedes:x86_64$ cv -v -isafety -isafety_timeout 14400 -jobs 12 -slicing -no_carry_constraint fpmul434_mont.cl
Parsing Cryptoline file:		[OK]		0.010614 seconds
Checking well-formedness:		[OK]		0.002358 seconds
Transforming to SSA form:		[OK]		0.001020 seconds
Normalizing specification:		[OK]		0.000041 seconds
Rewriting assignments:			[OK]		0.000589 seconds
Verifying program safety:		
	 Cut 0
	     Round 1 (0 safety conditions, timeout = 14400 seconds)
	 Overall			[OK]		0.000244 seconds
Verifying range assertions:		[OK]		6.395027 seconds
Verifying range specification:		[OK]		2.227104 seconds
Rewriting value-preserved casting:	[OK]		0.000007 seconds
Verifying algebraic assertions:		[OK]		0.000185 seconds
Verifying algebraic specification:	[OK]		0.044719 seconds
Verification result:			[OK]		8.683435 seconds
*)

(*
const uint64_t p434[NWORDS64_FIELD]              = { 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFDC1767AE2FFFFFF, 
                                                     0x7BC65C783158AEA3, 0x6CFC5FD681C52056, 0x0002341F27177344 };
const uint64_t p434p1[NWORDS64_FIELD]            = { 0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0xFDC1767AE3000000,
                                                     0x7BC65C783158AEA3, 0x6CFC5FD681C52056, 0x0002341f27177344 }; 
*)

const p434_0 = 0xFFFFFFFFFFFFFFFF
const p434_1 = 0xFFFFFFFFFFFFFFFF
const p434_2 = 0xFFFFFFFFFFFFFFFF
const p434_3 = 0xFDC1767AE2FFFFFF
const p434_4 = 0x7BC65C783158AEA3
const p434_5 = 0x6CFC5FD681C52056
const p434_6 = 0x0002341F27177344 

const p434p1_0 = 0x0000000000000000
const p434p1_1 = 0x0000000000000000
const p434p1_2 = 0x0000000000000000
const p434p1_3 = 0xFDC1767AE3000000
const p434p1_4 = 0x7BC65C783158AEA3
const p434p1_5 = 0x6CFC5FD681C52056
const p434p1_6 = 0x0002341f27177344

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
mov L0x7fffffffd970 a0;
mov L0x7fffffffd978 a1;
mov L0x7fffffffd980 a2;
mov L0x7fffffffd988 a3;
mov L0x7fffffffd990 a4;
mov L0x7fffffffd998 a5;
mov L0x7fffffffd9a0 a6;

mov L0x7fffffffd9b0 b0;
mov L0x7fffffffd9b8 b1;
mov L0x7fffffffd9c0 b2;
mov L0x7fffffffd9c8 b3;
mov L0x7fffffffd9d0 b4;
mov L0x7fffffffd9d8 b5;
mov L0x7fffffffd9e0 b6;

mov L0x555555568260 $p434p1_0@uint64;
mov L0x555555568268 $p434p1_1@uint64;
mov L0x555555568270 $p434p1_2@uint64;
mov L0x555555568278 $p434p1_3@uint64;
mov L0x555555568280 $p434p1_4@uint64;
mov L0x555555568288 $p434p1_5@uint64;
mov L0x555555568290 $p434p1_6@uint64;

nondet rdx@uint64;

(* ===== Program ===== *)


(* #! -> SP = 0x7fffffffd798 *)
#! 0x7fffffffd798 = 0x7fffffffd798;
(* #jmpq   0x5555555622d0 <fpmul434>               #! PC = 0x5555555580f4 *)
#jmpq   0x5555555622d0 <fpmul434>               #! 0x5555555580f4 = 0x5555555580f4;
(* #jmpq   0x5555555647df <fpmul434_asm>           #! PC = 0x5555555622d4 *)
#jmpq   0x5555555647df <fpmul434_asm>           #! 0x5555555622d4 = 0x5555555622d4;
(* mov    %rdx,%rcx                                #! PC = 0x5555555647df *)
mov rcx rdx;
(* mov    (%rsi),%rdx                              #! EA = L0x7fffffffd9b0; Value = 0xc20c1a870e6f01ae; PC = 0x5555555647e2 *)
mov rdx L0x7fffffffd9b0;
(* mulx   (%rdi),%r8,%r9                           #! EA = L0x7fffffffd970; Value = 0x58c05c6fc0fe4efa; PC = 0x5555555647e5 *)
mull r9 r8 L0x7fffffffd970 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555647ec *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x8(%rdi),%r11,%r10                      #! EA = L0x7fffffffd978; Value = 0xac6d2fd04d19348b; PC = 0x5555555647ef *)
mull r10 r11 L0x7fffffffd978 rdx;
(* adox   %r11,%r9                                 #! PC = 0x5555555647f7 *)
adcs overflow r9 r9 r11 overflow;
(* mulx   0x10(%rdi),%r12,%r11                     #! EA = L0x7fffffffd980; Value = 0xc547f7c363e74bbc; PC = 0x5555555647fd *)
mull r11 r12 L0x7fffffffd980 rdx;
(* adox   %r12,%r10                                #! PC = 0x555555564805 *)
adcs overflow r10 r10 r12 overflow;
(* mulx   0x18(%rdi),%r13,%r12                     #! EA = L0x7fffffffd988; Value = 0x43a9af81bc249fdb; PC = 0x55555556480b *)
mull r12 r13 L0x7fffffffd988 rdx;
(* adox   %r13,%r11                                #! PC = 0x555555564813 *)
adcs overflow r11 r11 r13 overflow;
(* mulx   0x20(%rdi),%r14,%r13                     #! EA = L0x7fffffffd990; Value = 0xcda74475c45f28d2; PC = 0x555555564819 *)
mull r13 r14 L0x7fffffffd990 rdx;
(* adox   %r14,%r12                                #! PC = 0x555555564820 *)
adcs overflow r12 r12 r14 overflow;
(* mulx   0x28(%rdi),%r15,%r14                     #! EA = L0x7fffffffd998; Value = 0xbe2bbf2886c9f683; PC = 0x555555564826 *)
mull r14 r15 L0x7fffffffd998 rdx;
(* adox   %r15,%r13                                #! PC = 0x55555556482d *)
adcs overflow r13 r13 r15 overflow;
(* mulx   0x30(%rdi),%rbx,%r15                     #! EA = L0x7fffffffd9a0; Value = 0x0000f80490342f70; PC = 0x555555564833 *)
mull r15 rbx L0x7fffffffd9a0 rdx;
(* adox   %rbx,%r14                                #! PC = 0x555555564839 *)
adcs overflow r14 r14 rbx overflow;
(* adox   %rax,%r15                                #! PC = 0x55555556483f *)
adcs overflow r15 r15 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    %r8,%rdx                                 #! PC = 0x555555564845 *)
mov rdx r8;
(* mulx   0x3a27(%rip),%rbp,%rbx        # 0x555555568278 <p434p1+24>#! EA = L0x555555568278; Value = 0xfdc1767ae3000000; PC = 0x555555564848 *)
mull rbx rbp L0x555555568278 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555564851 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r11                                #! PC = 0x555555564854 *)
adcs overflow r11 r11 rbp overflow;
(* adox   %rbx,%r12                                #! PC = 0x55555556485a *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x3a17(%rip),%rbp,%rbx        # 0x555555568280 <p434p1+32>#! EA = L0x555555568280; Value = 0x7bc65c783158aea3; PC = 0x555555564860 *)
mull rbx rbp L0x555555568280 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555564869 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x55555556486f *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x3a0a(%rip),%rbp,%rbx        # 0x555555568288 <p434p1+40>#! EA = L0x555555568288; Value = 0x6cfc5fd681c52056; PC = 0x555555564875 *)
mull rbx rbp L0x555555568288 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x55555556487e *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555564884 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x39fd(%rip),%rbp,%rbx        # 0x555555568290 <p434p1+48>#! EA = L0x555555568290; Value = 0x0002341f27177344; PC = 0x55555556488a *)
mull rbx rbp L0x555555568290 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555564893 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555564899 *)
adcs overflow r15 r15 rbx overflow;
(* adcx   %rax,%r15                                #! PC = 0x55555556489f *)
adcs carry r15 r15 rax carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x8(%rsi),%rdx                           #! EA = L0x7fffffffd9b8; Value = 0xc005c7c7c32d1d3d; PC = 0x5555555648a5 *)
mov rdx L0x7fffffffd9b8;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffd970; Value = 0x58c05c6fc0fe4efa; PC = 0x5555555648a9 *)
mull rbx rbp L0x7fffffffd970 rdx;
(* xor    %r8,%r8                                  #! PC = 0x5555555648ae *)
mov r8 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r9                                 #! PC = 0x5555555648b1 *)
adcs overflow r9 r9 rbp overflow;
(* adox   %rbx,%r10                                #! PC = 0x5555555648b7 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffd978; Value = 0xac6d2fd04d19348b; PC = 0x5555555648bd *)
mull rbx rbp L0x7fffffffd978 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x5555555648c3 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555648c9 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd980; Value = 0xc547f7c363e74bbc; PC = 0x5555555648cf *)
mull rbx rbp L0x7fffffffd980 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x5555555648d5 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555648db *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd988; Value = 0x43a9af81bc249fdb; PC = 0x5555555648e1 *)
mull rbx rbp L0x7fffffffd988 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x5555555648e7 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555648ed *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd990; Value = 0xcda74475c45f28d2; PC = 0x5555555648f3 *)
mull rbx rbp L0x7fffffffd990 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x5555555648f9 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x5555555648ff *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd998; Value = 0xbe2bbf2886c9f683; PC = 0x555555564905 *)
mull rbx rbp L0x7fffffffd998 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x55555556490b *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555564911 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd9a0; Value = 0x0000f80490342f70; PC = 0x555555564917 *)
mull rbx rbp L0x7fffffffd9a0 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x55555556491d *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555564923 *)
adcs overflow r8 r8 rbx overflow;
(* adc    $0x0,%r8                                 #! PC = 0x555555564929 *)
adcs carry r8 r8 0x0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r9,%rdx                                 #! PC = 0x55555556492d *)
mov rdx r9;
(* mulx   0x393f(%rip),%rbp,%rbx        # 0x555555568278 <p434p1+24>#! EA = L0x555555568278; Value = 0xfdc1767ae3000000; PC = 0x555555564930 *)
mull rbx rbp L0x555555568278 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555564939 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r12                                #! PC = 0x55555556493c *)
adcs overflow r12 r12 rbp overflow;
(* adox   %rbx,%r13                                #! PC = 0x555555564942 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x392f(%rip),%rbp,%rbx        # 0x555555568280 <p434p1+32>#! EA = L0x555555568280; Value = 0x7bc65c783158aea3; PC = 0x555555564948 *)
mull rbx rbp L0x555555568280 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555564951 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555564957 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x3922(%rip),%rbp,%rbx        # 0x555555568288 <p434p1+40>#! EA = L0x555555568288; Value = 0x6cfc5fd681c52056; PC = 0x55555556495d *)
mull rbx rbp L0x555555568288 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555564966 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x55555556496c *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x3915(%rip),%rbp,%rbx        # 0x555555568290 <p434p1+48>#! EA = L0x555555568290; Value = 0x0002341f27177344; PC = 0x555555564972 *)
mull rbx rbp L0x555555568290 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x55555556497b *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555564981 *)
adcs overflow r8 r8 rbx overflow;
(* adcx   %rax,%r8                                 #! PC = 0x555555564987 *)
adcs carry r8 r8 rax carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x10(%rsi),%rdx                          #! EA = L0x7fffffffd9c0; Value = 0x19e6be2744d37c8f; PC = 0x55555556498d *)
mov rdx L0x7fffffffd9c0;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffd970; Value = 0x58c05c6fc0fe4efa; PC = 0x555555564991 *)
mull rbx rbp L0x7fffffffd970 rdx;
(* xor    %r9,%r9                                  #! PC = 0x555555564996 *)
mov r9 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r10                                #! PC = 0x555555564999 *)
adcs overflow r10 r10 rbp overflow;
(* adox   %rbx,%r11                                #! PC = 0x55555556499f *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffd978; Value = 0xac6d2fd04d19348b; PC = 0x5555555649a5 *)
mull rbx rbp L0x7fffffffd978 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x5555555649ab *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555649b1 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd980; Value = 0xc547f7c363e74bbc; PC = 0x5555555649b7 *)
mull rbx rbp L0x7fffffffd980 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x5555555649bd *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555649c3 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd988; Value = 0x43a9af81bc249fdb; PC = 0x5555555649c9 *)
mull rbx rbp L0x7fffffffd988 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x5555555649cf *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x5555555649d5 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd990; Value = 0xcda74475c45f28d2; PC = 0x5555555649db *)
mull rbx rbp L0x7fffffffd990 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x5555555649e1 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x5555555649e7 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd998; Value = 0xbe2bbf2886c9f683; PC = 0x5555555649ed *)
mull rbx rbp L0x7fffffffd998 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x5555555649f3 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555649f9 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd9a0; Value = 0x0000f80490342f70; PC = 0x5555555649ff *)
mull rbx rbp L0x7fffffffd9a0 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555564a05 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555564a0b *)
adcs overflow r9 r9 rbx overflow;
(* adc    $0x0,%r9                                 #! PC = 0x555555564a11 *)
adcs carry r9 r9 0x0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r10,%rdx                                #! PC = 0x555555564a15 *)
mov rdx r10;
(* mulx   0x3857(%rip),%rbp,%rbx        # 0x555555568278 <p434p1+24>#! EA = L0x555555568278; Value = 0xfdc1767ae3000000; PC = 0x555555564a18 *)
mull rbx rbp L0x555555568278 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555564a21 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r13                                #! PC = 0x555555564a24 *)
adcs overflow r13 r13 rbp overflow;
(* adox   %rbx,%r14                                #! PC = 0x555555564a2a *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x3847(%rip),%rbp,%rbx        # 0x555555568280 <p434p1+32>#! EA = L0x555555568280; Value = 0x7bc65c783158aea3; PC = 0x555555564a30 *)
mull rbx rbp L0x555555568280 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555564a39 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555564a3f *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x383a(%rip),%rbp,%rbx        # 0x555555568288 <p434p1+40>#! EA = L0x555555568288; Value = 0x6cfc5fd681c52056; PC = 0x555555564a45 *)
mull rbx rbp L0x555555568288 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555564a4e *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555564a54 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x382d(%rip),%rbp,%rbx        # 0x555555568290 <p434p1+48>#! EA = L0x555555568290; Value = 0x0002341f27177344; PC = 0x555555564a5a *)
mull rbx rbp L0x555555568290 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555564a63 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555564a69 *)
adcs overflow r9 r9 rbx overflow;
(* adcx   %rax,%r9                                 #! PC = 0x555555564a6f *)
adcs carry r9 r9 rax carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rsi),%rdx                          #! EA = L0x7fffffffd9c8; Value = 0xa1a8baca179f2063; PC = 0x555555564a75 *)
mov rdx L0x7fffffffd9c8;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffd970; Value = 0x58c05c6fc0fe4efa; PC = 0x555555564a79 *)
mull rbx rbp L0x7fffffffd970 rdx;
(* xor    %r10,%r10                                #! PC = 0x555555564a7e *)
mov r10 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r11                                #! PC = 0x555555564a81 *)
adcs overflow r11 r11 rbp overflow;
(* adox   %rbx,%r12                                #! PC = 0x555555564a87 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffd978; Value = 0xac6d2fd04d19348b; PC = 0x555555564a8d *)
mull rbx rbp L0x7fffffffd978 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555564a93 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555564a99 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd980; Value = 0xc547f7c363e74bbc; PC = 0x555555564a9f *)
mull rbx rbp L0x7fffffffd980 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555564aa5 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555564aab *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd988; Value = 0x43a9af81bc249fdb; PC = 0x555555564ab1 *)
mull rbx rbp L0x7fffffffd988 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555564ab7 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555564abd *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd990; Value = 0xcda74475c45f28d2; PC = 0x555555564ac3 *)
mull rbx rbp L0x7fffffffd990 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555564ac9 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555564acf *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd998; Value = 0xbe2bbf2886c9f683; PC = 0x555555564ad5 *)
mull rbx rbp L0x7fffffffd998 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555564adb *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555564ae1 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd9a0; Value = 0x0000f80490342f70; PC = 0x555555564ae7 *)
mull rbx rbp L0x7fffffffd9a0 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555564aed *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555564af3 *)
adcs overflow r10 r10 rbx overflow;
(* adc    $0x0,%r10                                #! PC = 0x555555564af9 *)
adcs carry r10 r10 0x0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r11,%rdx                                #! PC = 0x555555564afd *)
mov rdx r11;
(* mulx   0x376f(%rip),%rbp,%rbx        # 0x555555568278 <p434p1+24>#! EA = L0x555555568278; Value = 0xfdc1767ae3000000; PC = 0x555555564b00 *)
mull rbx rbp L0x555555568278 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555564b09 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r14                                #! PC = 0x555555564b0c *)
adcs overflow r14 r14 rbp overflow;
(* adox   %rbx,%r15                                #! PC = 0x555555564b12 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x375f(%rip),%rbp,%rbx        # 0x555555568280 <p434p1+32>#! EA = L0x555555568280; Value = 0x7bc65c783158aea3; PC = 0x555555564b18 *)
mull rbx rbp L0x555555568280 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555564b21 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555564b27 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x3752(%rip),%rbp,%rbx        # 0x555555568288 <p434p1+40>#! EA = L0x555555568288; Value = 0x6cfc5fd681c52056; PC = 0x555555564b2d *)
mull rbx rbp L0x555555568288 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555564b36 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555564b3c *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x3745(%rip),%rbp,%rbx        # 0x555555568290 <p434p1+48>#! EA = L0x555555568290; Value = 0x0002341f27177344; PC = 0x555555564b42 *)
mull rbx rbp L0x555555568290 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555564b4b *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555564b51 *)
adcs overflow r10 r10 rbx overflow;
(* adcx   %rax,%r10                                #! PC = 0x555555564b57 *)
adcs carry r10 r10 rax carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x20(%rsi),%rdx                          #! EA = L0x7fffffffd9d0; Value = 0x37fdd87b6b64ac1c; PC = 0x555555564b5d *)
mov rdx L0x7fffffffd9d0;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffd970; Value = 0x58c05c6fc0fe4efa; PC = 0x555555564b61 *)
mull rbx rbp L0x7fffffffd970 rdx;
(* xor    %r11,%r11                                #! PC = 0x555555564b66 *)
mov r11 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r12                                #! PC = 0x555555564b69 *)
adcs overflow r12 r12 rbp overflow;
(* adox   %rbx,%r13                                #! PC = 0x555555564b6f *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffd978; Value = 0xac6d2fd04d19348b; PC = 0x555555564b75 *)
mull rbx rbp L0x7fffffffd978 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555564b7b *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555564b81 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd980; Value = 0xc547f7c363e74bbc; PC = 0x555555564b87 *)
mull rbx rbp L0x7fffffffd980 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555564b8d *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555564b93 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd988; Value = 0x43a9af81bc249fdb; PC = 0x555555564b99 *)
mull rbx rbp L0x7fffffffd988 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555564b9f *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555564ba5 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd990; Value = 0xcda74475c45f28d2; PC = 0x555555564bab *)
mull rbx rbp L0x7fffffffd990 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555564bb1 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555564bb7 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd998; Value = 0xbe2bbf2886c9f683; PC = 0x555555564bbd *)
mull rbx rbp L0x7fffffffd998 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555564bc3 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555564bc9 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd9a0; Value = 0x0000f80490342f70; PC = 0x555555564bcf *)
mull rbx rbp L0x7fffffffd9a0 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555564bd5 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555564bdb *)
adcs overflow r11 r11 rbx overflow;
(* adc    $0x0,%r11                                #! PC = 0x555555564be1 *)
adcs carry r11 r11 0x0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r12,%rdx                                #! PC = 0x555555564be5 *)
mov rdx r12;
(* mulx   0x3687(%rip),%rbp,%rbx        # 0x555555568278 <p434p1+24>#! EA = L0x555555568278; Value = 0xfdc1767ae3000000; PC = 0x555555564be8 *)
mull rbx rbp L0x555555568278 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555564bf1 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r15                                #! PC = 0x555555564bf4 *)
adcs overflow r15 r15 rbp overflow;
(* adox   %rbx,%r8                                 #! PC = 0x555555564bfa *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x3677(%rip),%rbp,%rbx        # 0x555555568280 <p434p1+32>#! EA = L0x555555568280; Value = 0x7bc65c783158aea3; PC = 0x555555564c00 *)
mull rbx rbp L0x555555568280 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555564c09 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555564c0f *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x366a(%rip),%rbp,%rbx        # 0x555555568288 <p434p1+40>#! EA = L0x555555568288; Value = 0x6cfc5fd681c52056; PC = 0x555555564c15 *)
mull rbx rbp L0x555555568288 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555564c1e *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555564c24 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x365d(%rip),%rbp,%rbx        # 0x555555568290 <p434p1+48>#! EA = L0x555555568290; Value = 0x0002341f27177344; PC = 0x555555564c2a *)
mull rbx rbp L0x555555568290 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555564c33 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555564c39 *)
adcs overflow r11 r11 rbx overflow;
(* adcx   %rax,%r11                                #! PC = 0x555555564c3f *)
adcs carry r11 r11 rax carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x28(%rsi),%rdx                          #! EA = L0x7fffffffd9d8; Value = 0x3f51a5a36b10cd81; PC = 0x555555564c45 *)
mov rdx L0x7fffffffd9d8;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffd970; Value = 0x58c05c6fc0fe4efa; PC = 0x555555564c49 *)
mull rbx rbp L0x7fffffffd970 rdx;
(* xor    %r12,%r12                                #! PC = 0x555555564c4e *)
mov r12 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r13                                #! PC = 0x555555564c51 *)
adcs overflow r13 r13 rbp overflow;
(* adox   %rbx,%r14                                #! PC = 0x555555564c57 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffd978; Value = 0xac6d2fd04d19348b; PC = 0x555555564c5d *)
mull rbx rbp L0x7fffffffd978 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555564c63 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555564c69 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd980; Value = 0xc547f7c363e74bbc; PC = 0x555555564c6f *)
mull rbx rbp L0x7fffffffd980 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555564c75 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555564c7b *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd988; Value = 0x43a9af81bc249fdb; PC = 0x555555564c81 *)
mull rbx rbp L0x7fffffffd988 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555564c87 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555564c8d *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd990; Value = 0xcda74475c45f28d2; PC = 0x555555564c93 *)
mull rbx rbp L0x7fffffffd990 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555564c99 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555564c9f *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd998; Value = 0xbe2bbf2886c9f683; PC = 0x555555564ca5 *)
mull rbx rbp L0x7fffffffd998 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555564cab *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555564cb1 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd9a0; Value = 0x0000f80490342f70; PC = 0x555555564cb7 *)
mull rbx rbp L0x7fffffffd9a0 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555564cbd *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555564cc3 *)
adcs overflow r12 r12 rbx overflow;
(* adc    $0x0,%r12                                #! PC = 0x555555564cc9 *)
adcs carry r12 r12 0x0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r13,%rdx                                #! PC = 0x555555564ccd *)
mov rdx r13;
(* mulx   0x359f(%rip),%rbp,%rbx        # 0x555555568278 <p434p1+24>#! EA = L0x555555568278; Value = 0xfdc1767ae3000000; PC = 0x555555564cd0 *)
mull rbx rbp L0x555555568278 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555564cd9 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r8                                 #! PC = 0x555555564cdc *)
adcs overflow r8 r8 rbp overflow;
(* adox   %rbx,%r9                                 #! PC = 0x555555564ce2 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x358f(%rip),%rbp,%rbx        # 0x555555568280 <p434p1+32>#! EA = L0x555555568280; Value = 0x7bc65c783158aea3; PC = 0x555555564ce8 *)
mull rbx rbp L0x555555568280 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555564cf1 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555564cf7 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x3582(%rip),%rbp,%rbx        # 0x555555568288 <p434p1+40>#! EA = L0x555555568288; Value = 0x6cfc5fd681c52056; PC = 0x555555564cfd *)
mull rbx rbp L0x555555568288 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555564d06 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555564d0c *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x3575(%rip),%rbp,%rbx        # 0x555555568290 <p434p1+48>#! EA = L0x555555568290; Value = 0x0002341f27177344; PC = 0x555555564d12 *)
mull rbx rbp L0x555555568290 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555564d1b *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555564d21 *)
adcs overflow r12 r12 rbx overflow;
(* adcx   %rax,%r12                                #! PC = 0x555555564d27 *)
adcs carry r12 r12 rax carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x30(%rsi),%rdx                          #! EA = L0x7fffffffd9e0; Value = 0x000059b95660e18e; PC = 0x555555564d2d *)
mov rdx L0x7fffffffd9e0;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffd970; Value = 0x58c05c6fc0fe4efa; PC = 0x555555564d31 *)
mull rbx rbp L0x7fffffffd970 rdx;
(* xor    %r13,%r13                                #! PC = 0x555555564d36 *)
mov r13 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r14                                #! PC = 0x555555564d39 *)
adcs overflow r14 r14 rbp overflow;
(* adox   %rbx,%r15                                #! PC = 0x555555564d3f *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffd978; Value = 0xac6d2fd04d19348b; PC = 0x555555564d45 *)
mull rbx rbp L0x7fffffffd978 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555564d4b *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555564d51 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd980; Value = 0xc547f7c363e74bbc; PC = 0x555555564d57 *)
mull rbx rbp L0x7fffffffd980 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555564d5d *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555564d63 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd988; Value = 0x43a9af81bc249fdb; PC = 0x555555564d69 *)
mull rbx rbp L0x7fffffffd988 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555564d6f *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555564d75 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd990; Value = 0xcda74475c45f28d2; PC = 0x555555564d7b *)
mull rbx rbp L0x7fffffffd990 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555564d81 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555564d87 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd998; Value = 0xbe2bbf2886c9f683; PC = 0x555555564d8d *)
mull rbx rbp L0x7fffffffd998 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555564d93 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555564d99 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd9a0; Value = 0x0000f80490342f70; PC = 0x555555564d9f *)
mull rbx rbp L0x7fffffffd9a0 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555564da5 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555564dab *)
adcs overflow r13 r13 rbx overflow;
(* adc    $0x0,%r13                                #! PC = 0x555555564db1 *)
adcs carry r13 r13 0x0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r14,%rdx                                #! PC = 0x555555564db5 *)
mov rdx r14;
(* mulx   0x34b7(%rip),%rbp,%rbx        # 0x555555568278 <p434p1+24>#! EA = L0x555555568278; Value = 0xfdc1767ae3000000; PC = 0x555555564db8 *)
mull rbx rbp L0x555555568278 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555564dc1 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r9                                 #! PC = 0x555555564dc4 *)
adcs overflow r9 r9 rbp overflow;
(* adox   %rbx,%r10                                #! PC = 0x555555564dca *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x34a7(%rip),%rbp,%rbx        # 0x555555568280 <p434p1+32>#! EA = L0x555555568280; Value = 0x7bc65c783158aea3; PC = 0x555555564dd0 *)
mull rbx rbp L0x555555568280 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555564dd9 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555564ddf *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x349a(%rip),%rbp,%rbx        # 0x555555568288 <p434p1+40>#! EA = L0x555555568288; Value = 0x6cfc5fd681c52056; PC = 0x555555564de5 *)
mull rbx rbp L0x555555568288 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555564dee *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555564df4 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x348d(%rip),%rbp,%rbx        # 0x555555568290 <p434p1+48>#! EA = L0x555555568290; Value = 0x0002341f27177344; PC = 0x555555564dfa *)
mull rbx rbp L0x555555568290 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555564e03 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555564e09 *)
adcs overflow r13 r13 rbx overflow;
(* adcx   %rax,%r13                                #! PC = 0x555555564e0f *)
adcs carry r13 r13 rax carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r15,(%rcx)                              #! EA = L0x7fffffffda30; PC = 0x555555564e15 *)
mov L0x7fffffffda30 r15;
(* mov    %r8,0x8(%rcx)                            #! EA = L0x7fffffffda38; PC = 0x555555564e18 *)
mov L0x7fffffffda38 r8;
(* mov    %r9,0x10(%rcx)                           #! EA = L0x7fffffffda40; PC = 0x555555564e1c *)
mov L0x7fffffffda40 r9;
(* mov    %r10,0x18(%rcx)                          #! EA = L0x7fffffffda48; PC = 0x555555564e20 *)
mov L0x7fffffffda48 r10;
(* mov    %r11,0x20(%rcx)                          #! EA = L0x7fffffffda50; PC = 0x555555564e24 *)
mov L0x7fffffffda50 r11;
(* mov    %r12,0x28(%rcx)                          #! EA = L0x7fffffffda58; PC = 0x555555564e28 *)
mov L0x7fffffffda58 r12;
(* mov    %r13,0x30(%rcx)                          #! EA = L0x7fffffffda60; PC = 0x555555564e2c *)
mov L0x7fffffffda60 r13;
(* #! <- SP = 0x7fffffffd798 *)
#! 0x7fffffffd798 = 0x7fffffffd798;
(* #retq                                           #! PC = 0x555555564e3a *)
#retq                                           #! 0x555555564e3a = 0x555555564e3a;

(* ===== Outputs ===== *)

mov c0 L0x7fffffffda30;
mov c1 L0x7fffffffda38;
mov c2 L0x7fffffffda40;
mov c3 L0x7fffffffda48;
mov c4 L0x7fffffffda50;
mov c5 L0x7fffffffda58;
mov c6 L0x7fffffffda60;


{
  eqmod (limbs 64 [ 0, 0, 0, 0, 0, 0, 0, c0, c1, c2, c3, c4, c5, c6 ])
        (
          (limbs 64 [ a0, a1, a2, a3, a4, a5, a6 ])
          *
          (limbs 64 [ b0, b1, b2, b3, b4, b5, b6 ])
        )
        (limbs 64 [ $p434_0, $p434_1, $p434_2, $p434_3, $p434_4, $p434_5, $p434_6 ])
  &&
  limbs 64 [ c0, c1, c2, c3, c4, c5, c6 ] <=u
      (2@448 * limbs 64 [ $p434_0@64, $p434_1@64, $p434_2@64, $p434_3@64,
                          $p434_4@64, $p434_5@64, $p434_6@64 ] - 1@448)
}



