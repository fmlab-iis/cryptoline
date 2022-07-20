(* on frege: -v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint fp2div2_610.cl
Parsing Cryptoline file:		[OK]		0.007641 seconds
Checking well-formedness:		[OK]		0.000775 seconds
Transforming to SSA form:		[OK]		0.000482 seconds
Normalizing specification:		[OK]		0.000343 seconds
Rewriting assignments:			[OK]		0.000659 seconds
Verifying program safety:		[OK]		0.867308 seconds
Verifying range assertions:		[OK]		0.127886 seconds
Verifying range specification:		[OK]		4.023754 seconds
Rewriting value-preserved casting:	[OK]		0.000207 seconds
Verifying algebraic assertions:		[OK]		0.000536 seconds
Verifying algebraic specification:	[OK]		0.000420 seconds
Verification result:			[OK]		5.030520 seconds
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

proc main (a00@uint64, a01@uint64, a02@uint64, a03@uint64, a04@uint64, a05@uint64, a06@uint64, a07@uint64, a08@uint64, a09@uint64,
           a10@uint64, a11@uint64, a12@uint64, a13@uint64, a14@uint64, a15@uint64, a16@uint64, a17@uint64, a18@uint64, a19@uint64) =
{
  true
  &&
  and [
    limbs 64 [ a00, a01, a02, a03, a04, a05, a06, a07, a08, a09 ] <=u
      (2@640 * limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64,
                          $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ] - 1@640),
    limbs 64 [ a10, a11, a12, a13, a14, a15, a16, a17, a18, a19 ] <=u
      (2@640 * limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64,
                          $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ] - 1@640)
  ]
}

(* ===== Initialization ===== *)

mov L0x7fffffffbe80 a00;
mov L0x7fffffffbe88 a01;
mov L0x7fffffffbe90 a02;
mov L0x7fffffffbe98 a03;
mov L0x7fffffffbea0 a04;
mov L0x7fffffffbea8 a05;
mov L0x7fffffffbeb0 a06;
mov L0x7fffffffbeb8 a07;
mov L0x7fffffffbec0 a08;
mov L0x7fffffffbec8 a09;

mov L0x7fffffffbed0 a10;
mov L0x7fffffffbed8 a11;
mov L0x7fffffffbee0 a12;
mov L0x7fffffffbee8 a13;
mov L0x7fffffffbef0 a14;
mov L0x7fffffffbef8 a15;
mov L0x7fffffffbf00 a16;
mov L0x7fffffffbf08 a17;
mov L0x7fffffffbf10 a18;
mov L0x7fffffffbf18 a19;

mov L0x55555556bec0 $p610_0@uint64;
mov L0x55555556bec8 $p610_1@uint64;
mov L0x55555556bed0 $p610_2@uint64;
mov L0x55555556bed8 $p610_3@uint64;
mov L0x55555556bee0 $p610_4@uint64;
mov L0x55555556bee8 $p610_5@uint64;
mov L0x55555556bef0 $p610_6@uint64;
mov L0x55555556bef8 $p610_7@uint64;
mov L0x55555556bf00 $p610_8@uint64;
mov L0x55555556bf08 $p610_9@uint64;

nondet L0x7fffffffbe78@uint64;
nondet r15@uint64;
nondet rsp@uint64;

(* ===== Program ===== *)

(* #! -> SP = 0x7fffffffbe00 *)
#! 0x7fffffffbe00 = 0x7fffffffbe00;
(* mov    %r15,%rsi                                #! PC = 0x55555555ba9a *)
mov rsi r15;
(* mov    %r15,%rdi                                #! PC = 0x55555555ba9d *)
mov rdi r15;
(* #callq  0x5555555626b0 <fpdiv2_610>             #! PC = 0x55555555baa0 *)
#callq  0x5555555626b0 <fpdiv2_610>             #! 0x55555555baa0 = 0x55555555baa0;
(* #! -> SP = 0x7fffffffbdf8 *)
#! 0x7fffffffbdf8 = 0x7fffffffbdf8;
(* mov    %rdi,%rax                                #! PC = 0x5555555626b4 *)
mov rax rdi;
(* mov    (%rax),%rcx                              #! EA = L0x7fffffffbe80; Value = 0x0000000338664730; PC = 0x5555555626b7 *)
mov rcx L0x7fffffffbe80;
(* mov    %rsi,%rdi                                #! PC = 0x5555555626ba *)
mov rdi rsi;
(* mov    %rcx,%rdx                                #! PC = 0x5555555626bd *)
mov rdx rcx;
(* and    $0x1,%edx                                #! PC = 0x5555555626c0 *)
and rdx@uint64 rdx 0x00000000FFFFFFFF@uint64;
and rdx@uint64 rdx 0x1@uint64;
(* mov    0x97f6(%rip),%rsi        # 0x55555556bec0 <p610>#! EA = L0x55555556bec0; Value = 0xffffffffffffffff; PC = 0x5555555626c3 *)
mov rsi L0x55555556bec0;
(* neg    %rdx                                     #! PC = 0x5555555626ca *)
subb dontcare rdx 0@uint64 rdx;
(* and    %rdx,%rsi                                #! PC = 0x5555555626cd *)
and uint64 rsi rdx rsi;
(* mov    %rcx,%r10                                #! PC = 0x5555555626d0 *)
mov r10 rcx;
(* xor    %r9d,%r9d                                #! PC = 0x5555555626d3 *)
mov r9 0@uint64;
(* xor    %r11d,%r11d                              #! PC = 0x5555555626d6 *)
mov r11 0@uint64;
(* add    %rsi,%r10                                #! PC = 0x5555555626d9 *)
adds carry r10 r10 rsi;
(* adc    %r9,%r11                                 #! PC = 0x5555555626dc *)
adcs carry r11 r11 r9@uint64 carry;
(* add    %rsi,%rcx                                #! PC = 0x5555555626df *)
adds carry rcx rcx rsi;
(* mov    %rcx,(%rdi)                              #! EA = L0x7fffffffbe80; PC = 0x5555555626e2 *)
mov L0x7fffffffbe80 rcx;
(* mov    0x97db(%rip),%rbx        # 0x55555556bec8 <p610+8>#! EA = L0x55555556bec8; Value = 0xffffffffffffffff; PC = 0x5555555626e6 *)
mov rbx L0x55555556bec8;
(* mov    0x8(%rax),%rcx                           #! EA = L0x7fffffffbe88; Value = 0x0000000000000000; PC = 0x5555555626ed *)
mov rcx L0x7fffffffbe88;
(* and    %rdx,%rbx                                #! PC = 0x5555555626f1 *)
and uint64 rbx rdx rbx;
(* mov    %rbx,%r8                                 #! PC = 0x5555555626f4 *)
mov r8 rbx;
(* mov    %r11,%r10                                #! PC = 0x5555555626f7 *)
mov r10 r11;
(* xor    %ebx,%ebx                                #! PC = 0x5555555626fa *)
mov rbx 0@uint64;
(* xor    %r11d,%r11d                              #! PC = 0x5555555626fc *)
mov r11 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x5555555626ff *)
mov r9 0@uint64;
(* add    %rcx,%r8                                 #! PC = 0x555555562702 *)
adds carry r8 r8 rcx;
(* adc    %rbx,%r9                                 #! PC = 0x555555562705 *)
adcs carry r9 r9 rbx@uint64 carry;
(* add    %r10,%r8                                 #! PC = 0x555555562708 *)
adds carry r8 r8 r10;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffbe88; PC = 0x55555556270b *)
mov L0x7fffffffbe88 r8;
(* mov    0x97ba(%rip),%rbx        # 0x55555556bed0 <p610+16>#! EA = L0x55555556bed0; Value = 0xffffffffffffffff; PC = 0x55555556270f *)
mov rbx L0x55555556bed0;
(* adc    %r11,%r9                                 #! PC = 0x555555562716 *)
adcs carry r9 r9 r11@uint64 carry;
(* mov    0x10(%rax),%rcx                          #! EA = L0x7fffffffbe90; Value = 0x0000000000000000; PC = 0x555555562719 *)
mov rcx L0x7fffffffbe90;
(* and    %rdx,%rbx                                #! PC = 0x55555556271d *)
and uint64 rbx rdx rbx;
(* mov    %rbx,%r8                                 #! PC = 0x555555562720 *)
mov r8 rbx;
(* mov    %r9,%r10                                 #! PC = 0x555555562723 *)
mov r10 r9;
(* xor    %r11d,%r11d                              #! PC = 0x555555562726 *)
mov r11 0@uint64;
(* xor    %ebx,%ebx                                #! PC = 0x555555562729 *)
mov rbx 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x55555556272b *)
mov r9 0@uint64;
(* add    %rcx,%r8                                 #! PC = 0x55555556272e *)
adds carry r8 r8 rcx;
(* adc    %rbx,%r9                                 #! PC = 0x555555562731 *)
adcs carry r9 r9 rbx@uint64 carry;
(* add    %r10,%r8                                 #! PC = 0x555555562734 *)
adds carry r8 r8 r10;
(* mov    %r8,0x10(%rdi)                           #! EA = L0x7fffffffbe90; PC = 0x555555562737 *)
mov L0x7fffffffbe90 r8;
(* mov    0x9796(%rip),%rbx        # 0x55555556bed8 <p610+24>#! EA = L0x55555556bed8; Value = 0xffffffffffffffff; PC = 0x55555556273b *)
mov rbx L0x55555556bed8;
(* adc    %r11,%r9                                 #! PC = 0x555555562742 *)
adcs carry r9 r9 r11@uint64 carry;
(* mov    0x18(%rax),%rcx                          #! EA = L0x7fffffffbe98; Value = 0x0000000000000000; PC = 0x555555562745 *)
mov rcx L0x7fffffffbe98;
(* and    %rdx,%rbx                                #! PC = 0x555555562749 *)
and uint64 rbx rdx rbx;
(* mov    %rbx,%r8                                 #! PC = 0x55555556274c *)
mov r8 rbx;
(* mov    %r9,%r10                                 #! PC = 0x55555556274f *)
mov r10 r9;
(* xor    %r11d,%r11d                              #! PC = 0x555555562752 *)
mov r11 0@uint64;
(* xor    %ebx,%ebx                                #! PC = 0x555555562755 *)
mov rbx 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x555555562757 *)
mov r9 0@uint64;
(* add    %rcx,%r8                                 #! PC = 0x55555556275a *)
adds carry r8 r8 rcx;
(* adc    %rbx,%r9                                 #! PC = 0x55555556275d *)
adcs carry r9 r9 rbx@uint64 carry;
(* add    %r10,%r8                                 #! PC = 0x555555562760 *)
adds carry r8 r8 r10;
(* mov    %r8,0x18(%rdi)                           #! EA = L0x7fffffffbe98; PC = 0x555555562763 *)
mov L0x7fffffffbe98 r8;
(* mov    0x9772(%rip),%rbx        # 0x55555556bee0 <p610+32>#! EA = L0x55555556bee0; Value = 0x6e01ffffffffffff; PC = 0x555555562767 *)
mov rbx L0x55555556bee0;
(* adc    %r11,%r9                                 #! PC = 0x55555556276e *)
adcs carry r9 r9 r11@uint64 carry;
(* mov    0x20(%rax),%rcx                          #! EA = L0x7fffffffbea0; Value = 0xd1a0000000000000; PC = 0x555555562771 *)
mov rcx L0x7fffffffbea0;
(* and    %rdx,%rbx                                #! PC = 0x555555562775 *)
and uint64 rbx rdx rbx;
(* mov    %rbx,%r8                                 #! PC = 0x555555562778 *)
mov r8 rbx;
(* mov    %r9,%r10                                 #! PC = 0x55555556277b *)
mov r10 r9;
(* xor    %r11d,%r11d                              #! PC = 0x55555556277e *)
mov r11 0@uint64;
(* xor    %ebx,%ebx                                #! PC = 0x555555562781 *)
mov rbx 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x555555562783 *)
mov r9 0@uint64;
(* add    %rcx,%r8                                 #! PC = 0x555555562786 *)
adds carry r8 r8 rcx;
(* adc    %rbx,%r9                                 #! PC = 0x555555562789 *)
adcs carry r9 r9 rbx@uint64 carry;
(* add    %r10,%r8                                 #! PC = 0x55555556278c *)
adds carry r8 r8 r10;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x7fffffffbea0; PC = 0x55555556278f *)
mov L0x7fffffffbea0 r8;
(* mov    0x974e(%rip),%rsi        # 0x55555556bee8 <p610+40>#! EA = L0x55555556bee8; Value = 0xb1784de8aa5ab02e; PC = 0x555555562793 *)
mov rsi L0x55555556bee8;
(* adc    %r11,%r9                                 #! PC = 0x55555556279a *)
adcs carry r9 r9 r11@uint64 carry;
(* mov    0x28(%rax),%rcx                          #! EA = L0x7fffffffbea8; Value = 0x6cce15e9438bd1fc; PC = 0x55555556279d *)
mov rcx L0x7fffffffbea8;
(* and    %rdx,%rsi                                #! PC = 0x5555555627a1 *)
and uint64 rsi rdx rsi;
(* mov    %rsi,%r8                                 #! PC = 0x5555555627a4 *)
mov r8 rsi;
(* mov    %r9,%r10                                 #! PC = 0x5555555627a7 *)
mov r10 r9;
(* xor    %r11d,%r11d                              #! PC = 0x5555555627aa *)
mov r11 0@uint64;
(* xor    %ebx,%ebx                                #! PC = 0x5555555627ad *)
mov rbx 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x5555555627af *)
mov r9 0@uint64;
(* add    %rcx,%r8                                 #! PC = 0x5555555627b2 *)
adds carry r8 r8 rcx;
(* adc    %rbx,%r9                                 #! PC = 0x5555555627b5 *)
adcs carry r9 r9 rbx@uint64 carry;
(* add    %r10,%r8                                 #! PC = 0x5555555627b8 *)
adds carry r8 r8 r10;
(* mov    %r8,0x28(%rdi)                           #! EA = L0x7fffffffbea8; PC = 0x5555555627bb *)
mov L0x7fffffffbea8 r8;
(* mov    0x972a(%rip),%rbx        # 0x55555556bef0 <p610+48>#! EA = L0x55555556bef0; Value = 0x9ae7bf45048ff9ab; PC = 0x5555555627bf *)
mov rbx L0x55555556bef0;
(* adc    %r11,%r9                                 #! PC = 0x5555555627c6 *)
adcs carry r9 r9 r11@uint64 carry;
(* mov    0x30(%rax),%rcx                          #! EA = L0x7fffffffbeb0; Value = 0x5250c1cd191ea0e2; PC = 0x5555555627c9 *)
mov rcx L0x7fffffffbeb0;
(* and    %rdx,%rbx                                #! PC = 0x5555555627cd *)
and uint64 rbx rdx rbx;
(* mov    %rbx,%r8                                 #! PC = 0x5555555627d0 *)
mov r8 rbx;
(* mov    %r9,%r10                                 #! PC = 0x5555555627d3 *)
mov r10 r9;
(* xor    %r11d,%r11d                              #! PC = 0x5555555627d6 *)
mov r11 0@uint64;
(* xor    %ebx,%ebx                                #! PC = 0x5555555627d9 *)
mov rbx 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x5555555627db *)
mov r9 0@uint64;
(* add    %rcx,%r8                                 #! PC = 0x5555555627de *)
adds carry r8 r8 rcx;
(* adc    %rbx,%r9                                 #! PC = 0x5555555627e1 *)
adcs carry r9 r9 rbx@uint64 carry;
(* add    %r10,%r8                                 #! PC = 0x5555555627e4 *)
adds carry r8 r8 r10;
(* mov    %r8,0x30(%rdi)                           #! EA = L0x7fffffffbeb0; PC = 0x5555555627e7 *)
mov L0x7fffffffbeb0 r8;
(* mov    0x9706(%rip),%rsi        # 0x55555556bef8 <p610+56>#! EA = L0x55555556bef8; Value = 0xb255b2fa10c4252a; PC = 0x5555555627eb *)
mov rsi L0x55555556bef8;
(* adc    %r11,%r9                                 #! PC = 0x5555555627f2 *)
adcs carry r9 r9 r11@uint64 carry;
(* mov    0x38(%rax),%rcx                          #! EA = L0x7fffffffbeb8; Value = 0x95b110ae83568f10; PC = 0x5555555627f5 *)
mov rcx L0x7fffffffbeb8;
(* and    %rdx,%rsi                                #! PC = 0x5555555627f9 *)
and uint64 rsi rdx rsi;
(* mov    %rsi,%r8                                 #! PC = 0x5555555627fc *)
mov r8 rsi;
(* mov    %r9,%r10                                 #! PC = 0x5555555627ff *)
mov r10 r9;
(* xor    %r11d,%r11d                              #! PC = 0x555555562802 *)
mov r11 0@uint64;
(* xor    %ebx,%ebx                                #! PC = 0x555555562805 *)
mov rbx 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x555555562807 *)
mov r9 0@uint64;
(* add    %rcx,%r8                                 #! PC = 0x55555556280a *)
adds carry r8 r8 rcx;
(* adc    %rbx,%r9                                 #! PC = 0x55555556280d *)
adcs carry r9 r9 rbx@uint64 carry;
(* add    %r10,%r8                                 #! PC = 0x555555562810 *)
adds carry r8 r8 r10;
(* mov    %r8,0x38(%rdi)                           #! EA = L0x7fffffffbeb8; PC = 0x555555562813 *)
mov L0x7fffffffbeb8 r8;
(* mov    0x96e2(%rip),%rbx        # 0x55555556bf00 <p610+64>#! EA = L0x55555556bf00; Value = 0x819010c251e7d88c; PC = 0x555555562817 *)
mov rbx L0x55555556bf00;
(* adc    %r11,%r9                                 #! PC = 0x55555556281e *)
adcs carry r9 r9 r11@uint64 carry;
(* mov    0x40(%rax),%rcx                          #! EA = L0x7fffffffbec0; Value = 0x9b481374316579ee; PC = 0x555555562821 *)
mov rcx L0x7fffffffbec0;
(* and    %rdx,%rbx                                #! PC = 0x555555562825 *)
and uint64 rbx rdx rbx;
(* mov    %rbx,%r8                                 #! PC = 0x555555562828 *)
mov r8 rbx;
(* mov    %r9,%r10                                 #! PC = 0x55555556282b *)
mov r10 r9;
(* xor    %ebx,%ebx                                #! PC = 0x55555556282e *)
mov rbx 0@uint64;
(* xor    %r11d,%r11d                              #! PC = 0x555555562830 *)
mov r11 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x555555562833 *)
mov r9 0@uint64;
(* add    %rcx,%r8                                 #! PC = 0x555555562836 *)
adds carry r8 r8 rcx;
(* adc    %rbx,%r9                                 #! PC = 0x555555562839 *)
adcs carry r9 r9 rbx@uint64 carry;
(* add    %r10,%r8                                 #! PC = 0x55555556283c *)
adds carry r8 r8 r10;
(* mov    %r8,0x40(%rdi)                           #! EA = L0x7fffffffbec0; PC = 0x55555556283f *)
mov L0x7fffffffbec0 r8;
(* adc    %r11,%r9                                 #! PC = 0x555555562843 *)
adcs carry r9 r9 r11@uint64 carry;
(* and    0x96bb(%rip),%rdx        # 0x55555556bf08 <p610+72>#! EA = L0x55555556bf08; Value = 0x000000027bf6a768; PC = 0x555555562846 *)
and uint64 rdx L0x55555556bf08 rdx;
(* mov    0x48(%rax),%rcx                          #! EA = L0x7fffffffbec8; Value = 0x0000000844a74b20; PC = 0x55555556284d *)
mov rcx L0x7fffffffbec8;
(* mov    %rdx,%r8                                 #! PC = 0x555555562851 *)
mov r8 rdx;
(* add    %rcx,%r8                                 #! PC = 0x555555562854 *)
adds carry r8 r8 rcx;
(* add    %r9,%r8                                  #! PC = 0x555555562857 *)
adds carry r8 r8 r9;
(* mov    %r8,0x48(%rdi)                           #! EA = L0x7fffffffbec8; PC = 0x55555556285a *)
mov L0x7fffffffbec8 r8;
(* mov    $0xa,%esi                                #! PC = 0x55555556285e *)
and rsi@uint64 0xa@uint64 0x00000000FFFFFFFF@uint64;
(* #jmpq   0x555555558030 <mp_shiftr1>             #! PC = 0x555555562864 *)
#jmpq   0x555555558030 <mp_shiftr1>             #! 0x555555562864 = 0x555555562864;
(* mov    %esi,%ecx                                #! PC = 0x555555558034 *)
and rcx@uint64 rsi 0x00000000FFFFFFFF@uint64;
(* dec    %ecx                                     #! PC = 0x555555558036 *)
and ecx@uint64 rcx 0x00000000FFFFFFFF@uint64;
vpc ecx@uint32 ecx;
subb dontcare ecx ecx 1@uint32;
vpc rcx@uint64 ecx;
(* #je     0x555555558119 <mp_shiftr1+233>         #! PC = 0x555555558038 *)
#je     0x555555558119 <mp_shiftr1+233>         #! 0x555555558038 = 0x555555558038;
(* sub    $0x2,%esi                                #! PC = 0x55555555803e *)
and esi@uint64 rsi 0x00000000FFFFFFFF@uint64;
vpc esi@uint32 esi;
subb carry esi esi 0x2@uint32;
vpc rsi@uint64 esi;
(* #jbe    0x555555558120 <mp_shiftr1+240>         #! PC = 0x555555558044 *)
#jbe    0x555555558120 <mp_shiftr1+240>         #! 0x555555558044 = 0x555555558044;
(* mov    %ecx,%edx                                #! PC = 0x55555555804a *)
and rdx@uint64 rcx 0x00000000FFFFFFFF@uint64;
(* shr    $0x2,%edx                                #! PC = 0x55555555804c *)
and edx@uint64 rdx 0x00000000FFFFFFFF@uint64;
vpc edx@uint32 edx;
split edx dontcare edx 0x2;
vpc rdx@uint64 edx;
(* shl    $0x5,%rdx                                #! PC = 0x55555555804f *)
shl rdx rdx 0x5;
(* mov    %rdi,%rax                                #! PC = 0x555555558053 *)
mov rax rdi;
(* add    %rdi,%rdx                                #! PC = 0x555555558056 *)
adds carry rdx rdx rdi;
(* vpsrlq $0x1,(%rax),%ymm0                        #! EA = L0x7fffffffbe80; Value = 0x0000000338664730; PC = 0x555555558060 *)
split ymm0_0 dontcare L0x7fffffffbe80 0x1;
split ymm0_1 dontcare L0x7fffffffbe88 0x1;
split ymm0_2 dontcare L0x7fffffffbe90 0x1;
split ymm0_3 dontcare L0x7fffffffbe98 0x1;
(* vpsllq $0x3f,0x8(%rax),%ymm1                    #! EA = L0x7fffffffbe88; Value = 0x0000000000000000; PC = 0x555555558067 *)
split dontcare ymm1_0 L0x7fffffffbe88 (64 - 0x3f);
split dontcare ymm1_1 L0x7fffffffbe90 (64 - 0x3f);
split dontcare ymm1_2 L0x7fffffffbe98 (64 - 0x3f);
split dontcare ymm1_3 L0x7fffffffbea0 (64 - 0x3f);
shl ymm1_0 ymm1_0 0x3f;
shl ymm1_1 ymm1_1 0x3f;
shl ymm1_2 ymm1_2 0x3f;
shl ymm1_3 ymm1_3 0x3f;
(* add    $0x20,%rax                               #! PC = 0x555555558072 *)
adds carry rax rax 0x20@uint64;
(* vpxor  %ymm1,%ymm0,%ymm0                        #! PC = 0x555555558076 *)
xor ymm0_0@uint64 ymm1_0 ymm0_0;
xor ymm0_1@uint64 ymm1_1 ymm0_1;
xor ymm0_2@uint64 ymm1_2 ymm0_2;
xor ymm0_3@uint64 ymm1_3 ymm0_3;
(* vmovdqu64 %ymm0,-0x20(%rax)                     #! EA = L0x7fffffffbe80; PC = 0x55555555807a *)
mov L0x7fffffffbe80 ymm0_0;
mov L0x7fffffffbe88 ymm0_1;
mov L0x7fffffffbe90 ymm0_2;
mov L0x7fffffffbe98 ymm0_3;
(* #jne    0x555555558060 <mp_shiftr1+48>          #! PC = 0x555555558084 *)
#jne    0x555555558060 <mp_shiftr1+48>          #! 0x555555558084 = 0x555555558084;
(* vpsrlq $0x1,(%rax),%ymm0                        #! EA = L0x7fffffffbea0; Value = 0xd1a0000000000000; PC = 0x555555558060 *)
split ymm0_0 dontcare L0x7fffffffbea0 0x1;
split ymm0_1 dontcare L0x7fffffffbea8 0x1;
split ymm0_2 dontcare L0x7fffffffbeb0 0x1;
split ymm0_3 dontcare L0x7fffffffbeb8 0x1;
(* vpsllq $0x3f,0x8(%rax),%ymm1                    #! EA = L0x7fffffffbea8; Value = 0x6cce15e9438bd1fc; PC = 0x555555558067 *)
split dontcare ymm1_0 L0x7fffffffbea8 (64 - 0x3f);
split dontcare ymm1_1 L0x7fffffffbeb0 (64 - 0x3f);
split dontcare ymm1_2 L0x7fffffffbeb8 (64 - 0x3f);
split dontcare ymm1_3 L0x7fffffffbec0 (64 - 0x3f);
shl ymm1_0 ymm1_0 0x3f;
shl ymm1_1 ymm1_1 0x3f;
shl ymm1_2 ymm1_2 0x3f;
shl ymm1_3 ymm1_3 0x3f;
(* add    $0x20,%rax                               #! PC = 0x555555558072 *)
adds carry rax rax 0x20@uint64;
(* vpxor  %ymm1,%ymm0,%ymm0                        #! PC = 0x555555558076 *)
xor ymm0_0@uint64 ymm1_0 ymm0_0;
xor ymm0_1@uint64 ymm1_1 ymm0_1;
xor ymm0_2@uint64 ymm1_2 ymm0_2;
xor ymm0_3@uint64 ymm1_3 ymm0_3;
(* vmovdqu64 %ymm0,-0x20(%rax)                     #! EA = L0x7fffffffbea0; PC = 0x55555555807a *)
mov L0x7fffffffbea0 ymm0_0;
mov L0x7fffffffbea8 ymm0_1;
mov L0x7fffffffbeb0 ymm0_2;
mov L0x7fffffffbeb8 ymm0_3;
(* #jne    0x555555558060 <mp_shiftr1+48>          #! PC = 0x555555558084 *)
#jne    0x555555558060 <mp_shiftr1+48>          #! 0x555555558084 = 0x555555558084;
(* mov    %ecx,%edx                                #! PC = 0x555555558086 *)
and rdx@uint64 rcx 0x00000000FFFFFFFF@uint64;
(* and    $0xfffffffc,%edx                         #! PC = 0x555555558088 *)
and rdx@uint64 rdx 0x00000000FFFFFFFF@uint64;
and rdx@uint64 rdx 0xfffffffc@uint64;
(* #je     0x555555558110 <mp_shiftr1+224>         #! PC = 0x55555555808e *)
#je     0x555555558110 <mp_shiftr1+224>         #! 0x55555555808e = 0x55555555808e;
(* vzeroupper                                      #! PC = 0x555555558094 *)
mov ymm0_2 0@uint64;
mov ymm0_3 0@uint64;
mov ymm1_2 0@uint64;
mov ymm1_3 0@uint64;
(* mov    %edx,%eax                                #! PC = 0x555555558098 *)
and rax@uint64 rdx 0x00000000FFFFFFFF@uint64;
(* mov    %rsp,%rbp                                #! PC = 0x55555555809e *)
mov rbp rsp;
(* mov    $0x1,%r11d                               #! PC = 0x5555555580a9 *)
and r11@uint64 0x1@uint64 0x00000000FFFFFFFF@uint64;
(* mov    $0x3f,%ebx                               #! PC = 0x5555555580af *)
and rbx@uint64 0x3f@uint64 0x00000000FFFFFFFF@uint64;
(* shlx   %rbx,(%r8),%rsi                          #! EA = L0x7fffffffbec8; Value = 0x0000000844a74b20; PC = 0x5555555580b4 *)
assert true && rbx = 63@64;
split dontcare rsi L0x7fffffffbec8 1;
shl rsi rsi 63;
(* mov    %rax,%r9                                 #! PC = 0x5555555580b9 *)
mov r9 rax;
(* shrx   %r11,(%r10),%rax                         #! EA = L0x7fffffffbec0; Value = 0x9b481374316579ee; PC = 0x5555555580bc *)
assert true && r11 = 1@64;
split rax dontcare L0x7fffffffbec0 1;
(* xor    %rsi,%rax                                #! PC = 0x5555555580c1 *)
xor rax@uint64 rsi rax;
(* mov    %rax,(%r10)                              #! EA = L0x7fffffffbec0; PC = 0x5555555580c4 *)
mov L0x7fffffffbec0 rax;
(* #jae    0x555555558101 <mp_shiftr1+209>         #! PC = 0x5555555580ca *)
#jae    0x555555558101 <mp_shiftr1+209>         #! 0x5555555580ca = 0x5555555580ca;
(* mov    %ecx,%ecx                                #! PC = 0x555555558101 *)
and rcx@uint64 rcx 0x00000000FFFFFFFF@uint64;
(* shrq   (%rdi)                                   #! EA = L0x7fffffffbec8; PC = 0x555555558108 *)
split L0x7fffffffbec8 dontcare L0x7fffffffbec8 1;
(* #! <- SP = 0x7fffffffbdf8 *)
#! 0x7fffffffbdf8 = 0x7fffffffbdf8;
(* #retq                                           #! PC = 0x55555555810c *)
#retq                                           #! 0x55555555810c = 0x55555555810c;
(* mov    0x78(%rsp),%r8                           #! EA = L0x7fffffffbe78; Value = 0x00007fffffffbed0; PC = 0x55555555baa5 *)
mov r8 L0x7fffffffbe78;
(* mov    %r8,%rsi                                 #! PC = 0x55555555baaa *)
mov rsi r8;
(* mov    %r8,%rdi                                 #! PC = 0x55555555baad *)
mov rdi r8;
(* #callq  0x5555555626b0 <fpdiv2_610>             #! PC = 0x55555555bab0 *)
#callq  0x5555555626b0 <fpdiv2_610>             #! 0x55555555bab0 = 0x55555555bab0;
(* #! -> SP = 0x7fffffffbdf8 *)
#! 0x7fffffffbdf8 = 0x7fffffffbdf8;
(* mov    %rdi,%rax                                #! PC = 0x5555555626b4 *)
mov rax rdi;
(* mov    (%rax),%rcx                              #! EA = L0x7fffffffbed0; Value = 0x0000000000000000; PC = 0x5555555626b7 *)
mov rcx L0x7fffffffbed0;
(* mov    %rsi,%rdi                                #! PC = 0x5555555626ba *)
mov rdi rsi;
(* mov    %rcx,%rdx                                #! PC = 0x5555555626bd *)
mov rdx rcx;
(* and    $0x1,%edx                                #! PC = 0x5555555626c0 *)
and rdx@uint64 rdx 0x00000000FFFFFFFF@uint64;
and rdx@uint64 rdx 0x1@uint64;
(* mov    0x97f6(%rip),%rsi        # 0x55555556bec0 <p610>#! EA = L0x55555556bec0; Value = 0xffffffffffffffff; PC = 0x5555555626c3 *)
mov rsi L0x55555556bec0;
(* neg    %rdx                                     #! PC = 0x5555555626ca *)
subb dontcare rdx 0@uint64 rdx;
(* and    %rdx,%rsi                                #! PC = 0x5555555626cd *)
and uint64 rsi rdx rsi;
(* mov    %rcx,%r10                                #! PC = 0x5555555626d0 *)
mov r10 rcx;
(* xor    %r9d,%r9d                                #! PC = 0x5555555626d3 *)
mov r9 0@uint64;
(* xor    %r11d,%r11d                              #! PC = 0x5555555626d6 *)
mov r11 0@uint64;
(* add    %rsi,%r10                                #! PC = 0x5555555626d9 *)
adds carry r10 r10 rsi;
(* adc    %r9,%r11                                 #! PC = 0x5555555626dc *)
adcs carry r11 r11 r9@uint64 carry;
(* add    %rsi,%rcx                                #! PC = 0x5555555626df *)
adds carry rcx rcx rsi;
(* mov    %rcx,(%rdi)                              #! EA = L0x7fffffffbed0; PC = 0x5555555626e2 *)
mov L0x7fffffffbed0 rcx;
(* mov    0x97db(%rip),%rbx        # 0x55555556bec8 <p610+8>#! EA = L0x55555556bec8; Value = 0xffffffffffffffff; PC = 0x5555555626e6 *)
mov rbx L0x55555556bec8;
(* mov    0x8(%rax),%rcx                           #! EA = L0x7fffffffbed8; Value = 0x0000000000000000; PC = 0x5555555626ed *)
mov rcx L0x7fffffffbed8;
(* and    %rdx,%rbx                                #! PC = 0x5555555626f1 *)
and uint64 rbx rdx rbx;
(* mov    %rbx,%r8                                 #! PC = 0x5555555626f4 *)
mov r8 rbx;
(* mov    %r11,%r10                                #! PC = 0x5555555626f7 *)
mov r10 r11;
(* xor    %ebx,%ebx                                #! PC = 0x5555555626fa *)
mov rbx 0@uint64;
(* xor    %r11d,%r11d                              #! PC = 0x5555555626fc *)
mov r11 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x5555555626ff *)
mov r9 0@uint64;
(* add    %rcx,%r8                                 #! PC = 0x555555562702 *)
adds carry r8 r8 rcx;
(* adc    %rbx,%r9                                 #! PC = 0x555555562705 *)
adcs carry r9 r9 rbx@uint64 carry;
(* add    %r10,%r8                                 #! PC = 0x555555562708 *)
adds carry r8 r8 r10;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffbed8; PC = 0x55555556270b *)
mov L0x7fffffffbed8 r8;
(* mov    0x97ba(%rip),%rbx        # 0x55555556bed0 <p610+16>#! EA = L0x55555556bed0; Value = 0xffffffffffffffff; PC = 0x55555556270f *)
mov rbx L0x55555556bed0;
(* adc    %r11,%r9                                 #! PC = 0x555555562716 *)
adcs carry r9 r9 r11@uint64 carry;
(* mov    0x10(%rax),%rcx                          #! EA = L0x7fffffffbee0; Value = 0x0000000000000000; PC = 0x555555562719 *)
mov rcx L0x7fffffffbee0;
(* and    %rdx,%rbx                                #! PC = 0x55555556271d *)
and uint64 rbx rdx rbx;
(* mov    %rbx,%r8                                 #! PC = 0x555555562720 *)
mov r8 rbx;
(* mov    %r9,%r10                                 #! PC = 0x555555562723 *)
mov r10 r9;
(* xor    %r11d,%r11d                              #! PC = 0x555555562726 *)
mov r11 0@uint64;
(* xor    %ebx,%ebx                                #! PC = 0x555555562729 *)
mov rbx 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x55555556272b *)
mov r9 0@uint64;
(* add    %rcx,%r8                                 #! PC = 0x55555556272e *)
adds carry r8 r8 rcx;
(* adc    %rbx,%r9                                 #! PC = 0x555555562731 *)
adcs carry r9 r9 rbx@uint64 carry;
(* add    %r10,%r8                                 #! PC = 0x555555562734 *)
adds carry r8 r8 r10;
(* mov    %r8,0x10(%rdi)                           #! EA = L0x7fffffffbee0; PC = 0x555555562737 *)
mov L0x7fffffffbee0 r8;
(* mov    0x9796(%rip),%rbx        # 0x55555556bed8 <p610+24>#! EA = L0x55555556bed8; Value = 0xffffffffffffffff; PC = 0x55555556273b *)
mov rbx L0x55555556bed8;
(* adc    %r11,%r9                                 #! PC = 0x555555562742 *)
adcs carry r9 r9 r11@uint64 carry;
(* mov    0x18(%rax),%rcx                          #! EA = L0x7fffffffbee8; Value = 0x0000000000000000; PC = 0x555555562745 *)
mov rcx L0x7fffffffbee8;
(* and    %rdx,%rbx                                #! PC = 0x555555562749 *)
and uint64 rbx rdx rbx;
(* mov    %rbx,%r8                                 #! PC = 0x55555556274c *)
mov r8 rbx;
(* mov    %r9,%r10                                 #! PC = 0x55555556274f *)
mov r10 r9;
(* xor    %r11d,%r11d                              #! PC = 0x555555562752 *)
mov r11 0@uint64;
(* xor    %ebx,%ebx                                #! PC = 0x555555562755 *)
mov rbx 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x555555562757 *)
mov r9 0@uint64;
(* add    %rcx,%r8                                 #! PC = 0x55555556275a *)
adds carry r8 r8 rcx;
(* adc    %rbx,%r9                                 #! PC = 0x55555556275d *)
adcs carry r9 r9 rbx@uint64 carry;
(* add    %r10,%r8                                 #! PC = 0x555555562760 *)
adds carry r8 r8 r10;
(* mov    %r8,0x18(%rdi)                           #! EA = L0x7fffffffbee8; PC = 0x555555562763 *)
mov L0x7fffffffbee8 r8;
(* mov    0x9772(%rip),%rbx        # 0x55555556bee0 <p610+32>#! EA = L0x55555556bee0; Value = 0x6e01ffffffffffff; PC = 0x555555562767 *)
mov rbx L0x55555556bee0;
(* adc    %r11,%r9                                 #! PC = 0x55555556276e *)
adcs carry r9 r9 r11@uint64 carry;
(* mov    0x20(%rax),%rcx                          #! EA = L0x7fffffffbef0; Value = 0x0000000000000000; PC = 0x555555562771 *)
mov rcx L0x7fffffffbef0;
(* and    %rdx,%rbx                                #! PC = 0x555555562775 *)
and uint64 rbx rdx rbx;
(* mov    %rbx,%r8                                 #! PC = 0x555555562778 *)
mov r8 rbx;
(* mov    %r9,%r10                                 #! PC = 0x55555556277b *)
mov r10 r9;
(* xor    %r11d,%r11d                              #! PC = 0x55555556277e *)
mov r11 0@uint64;
(* xor    %ebx,%ebx                                #! PC = 0x555555562781 *)
mov rbx 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x555555562783 *)
mov r9 0@uint64;
(* add    %rcx,%r8                                 #! PC = 0x555555562786 *)
adds carry r8 r8 rcx;
(* adc    %rbx,%r9                                 #! PC = 0x555555562789 *)
adcs carry r9 r9 rbx@uint64 carry;
(* add    %r10,%r8                                 #! PC = 0x55555556278c *)
adds carry r8 r8 r10;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x7fffffffbef0; PC = 0x55555556278f *)
mov L0x7fffffffbef0 r8;
(* mov    0x974e(%rip),%rsi        # 0x55555556bee8 <p610+40>#! EA = L0x55555556bee8; Value = 0xb1784de8aa5ab02e; PC = 0x555555562793 *)
mov rsi L0x55555556bee8;
(* adc    %r11,%r9                                 #! PC = 0x55555556279a *)
adcs carry r9 r9 r11@uint64 carry;
(* mov    0x28(%rax),%rcx                          #! EA = L0x7fffffffbef8; Value = 0x0000000000000000; PC = 0x55555556279d *)
mov rcx L0x7fffffffbef8;
(* and    %rdx,%rsi                                #! PC = 0x5555555627a1 *)
and uint64 rsi rdx rsi;
(* mov    %rsi,%r8                                 #! PC = 0x5555555627a4 *)
mov r8 rsi;
(* mov    %r9,%r10                                 #! PC = 0x5555555627a7 *)
mov r10 r9;
(* xor    %r11d,%r11d                              #! PC = 0x5555555627aa *)
mov r11 0@uint64;
(* xor    %ebx,%ebx                                #! PC = 0x5555555627ad *)
mov rbx 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x5555555627af *)
mov r9 0@uint64;
(* add    %rcx,%r8                                 #! PC = 0x5555555627b2 *)
adds carry r8 r8 rcx;
(* adc    %rbx,%r9                                 #! PC = 0x5555555627b5 *)
adcs carry r9 r9 rbx@uint64 carry;
(* add    %r10,%r8                                 #! PC = 0x5555555627b8 *)
adds carry r8 r8 r10;
(* mov    %r8,0x28(%rdi)                           #! EA = L0x7fffffffbef8; PC = 0x5555555627bb *)
mov L0x7fffffffbef8 r8;
(* mov    0x972a(%rip),%rbx        # 0x55555556bef0 <p610+48>#! EA = L0x55555556bef0; Value = 0x9ae7bf45048ff9ab; PC = 0x5555555627bf *)
mov rbx L0x55555556bef0;
(* adc    %r11,%r9                                 #! PC = 0x5555555627c6 *)
adcs carry r9 r9 r11@uint64 carry;
(* mov    0x30(%rax),%rcx                          #! EA = L0x7fffffffbf00; Value = 0x0000000000000000; PC = 0x5555555627c9 *)
mov rcx L0x7fffffffbf00;
(* and    %rdx,%rbx                                #! PC = 0x5555555627cd *)
and uint64 rbx rdx rbx;
(* mov    %rbx,%r8                                 #! PC = 0x5555555627d0 *)
mov r8 rbx;
(* mov    %r9,%r10                                 #! PC = 0x5555555627d3 *)
mov r10 r9;
(* xor    %r11d,%r11d                              #! PC = 0x5555555627d6 *)
mov r11 0@uint64;
(* xor    %ebx,%ebx                                #! PC = 0x5555555627d9 *)
mov rbx 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x5555555627db *)
mov r9 0@uint64;
(* add    %rcx,%r8                                 #! PC = 0x5555555627de *)
adds carry r8 r8 rcx;
(* adc    %rbx,%r9                                 #! PC = 0x5555555627e1 *)
adcs carry r9 r9 rbx@uint64 carry;
(* add    %r10,%r8                                 #! PC = 0x5555555627e4 *)
adds carry r8 r8 r10;
(* mov    %r8,0x30(%rdi)                           #! EA = L0x7fffffffbf00; PC = 0x5555555627e7 *)
mov L0x7fffffffbf00 r8;
(* mov    0x9706(%rip),%rsi        # 0x55555556bef8 <p610+56>#! EA = L0x55555556bef8; Value = 0xb255b2fa10c4252a; PC = 0x5555555627eb *)
mov rsi L0x55555556bef8;
(* adc    %r11,%r9                                 #! PC = 0x5555555627f2 *)
adcs carry r9 r9 r11@uint64 carry;
(* mov    0x38(%rax),%rcx                          #! EA = L0x7fffffffbf08; Value = 0x0000000000000000; PC = 0x5555555627f5 *)
mov rcx L0x7fffffffbf08;
(* and    %rdx,%rsi                                #! PC = 0x5555555627f9 *)
and uint64 rsi rdx rsi;
(* mov    %rsi,%r8                                 #! PC = 0x5555555627fc *)
mov r8 rsi;
(* mov    %r9,%r10                                 #! PC = 0x5555555627ff *)
mov r10 r9;
(* xor    %r11d,%r11d                              #! PC = 0x555555562802 *)
mov r11 0@uint64;
(* xor    %ebx,%ebx                                #! PC = 0x555555562805 *)
mov rbx 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x555555562807 *)
mov r9 0@uint64;
(* add    %rcx,%r8                                 #! PC = 0x55555556280a *)
adds carry r8 r8 rcx;
(* adc    %rbx,%r9                                 #! PC = 0x55555556280d *)
adcs carry r9 r9 rbx@uint64 carry;
(* add    %r10,%r8                                 #! PC = 0x555555562810 *)
adds carry r8 r8 r10;
(* mov    %r8,0x38(%rdi)                           #! EA = L0x7fffffffbf08; PC = 0x555555562813 *)
mov L0x7fffffffbf08 r8;
(* mov    0x96e2(%rip),%rbx        # 0x55555556bf00 <p610+64>#! EA = L0x55555556bf00; Value = 0x819010c251e7d88c; PC = 0x555555562817 *)
mov rbx L0x55555556bf00;
(* adc    %r11,%r9                                 #! PC = 0x55555556281e *)
adcs carry r9 r9 r11@uint64 carry;
(* mov    0x40(%rax),%rcx                          #! EA = L0x7fffffffbf10; Value = 0x0000000000000000; PC = 0x555555562821 *)
mov rcx L0x7fffffffbf10;
(* and    %rdx,%rbx                                #! PC = 0x555555562825 *)
and uint64 rbx rdx rbx;
(* mov    %rbx,%r8                                 #! PC = 0x555555562828 *)
mov r8 rbx;
(* mov    %r9,%r10                                 #! PC = 0x55555556282b *)
mov r10 r9;
(* xor    %ebx,%ebx                                #! PC = 0x55555556282e *)
mov rbx 0@uint64;
(* xor    %r11d,%r11d                              #! PC = 0x555555562830 *)
mov r11 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x555555562833 *)
mov r9 0@uint64;
(* add    %rcx,%r8                                 #! PC = 0x555555562836 *)
adds carry r8 r8 rcx;
(* adc    %rbx,%r9                                 #! PC = 0x555555562839 *)
adcs carry r9 r9 rbx@uint64 carry;
(* add    %r10,%r8                                 #! PC = 0x55555556283c *)
adds carry r8 r8 r10;
(* mov    %r8,0x40(%rdi)                           #! EA = L0x7fffffffbf10; PC = 0x55555556283f *)
mov L0x7fffffffbf10 r8;
(* adc    %r11,%r9                                 #! PC = 0x555555562843 *)
adcs carry r9 r9 r11@uint64 carry;
(* and    0x96bb(%rip),%rdx        # 0x55555556bf08 <p610+72>#! EA = L0x55555556bf08; Value = 0x000000027bf6a768; PC = 0x555555562846 *)
and uint64 rdx L0x55555556bf08 rdx;
(* mov    0x48(%rax),%rcx                          #! EA = L0x7fffffffbf18; Value = 0x0000000000000000; PC = 0x55555556284d *)
mov rcx L0x7fffffffbf18;
(* mov    %rdx,%r8                                 #! PC = 0x555555562851 *)
mov r8 rdx;
(* add    %rcx,%r8                                 #! PC = 0x555555562854 *)
adds carry r8 r8 rcx;
(* add    %r9,%r8                                  #! PC = 0x555555562857 *)
adds carry r8 r8 r9;
(* mov    %r8,0x48(%rdi)                           #! EA = L0x7fffffffbf18; PC = 0x55555556285a *)
mov L0x7fffffffbf18 r8;
(* mov    $0xa,%esi                                #! PC = 0x55555556285e *)
and rsi@uint64 0xa@uint64 0x00000000FFFFFFFF@uint64;
(* #jmpq   0x555555558030 <mp_shiftr1>             #! PC = 0x555555562864 *)
#jmpq   0x555555558030 <mp_shiftr1>             #! 0x555555562864 = 0x555555562864;
(* mov    %esi,%ecx                                #! PC = 0x555555558034 *)
and rcx@uint64 rsi 0x00000000FFFFFFFF@uint64;
(* dec    %ecx                                     #! PC = 0x555555558036 *)
and ecx@uint64 rcx 0x00000000FFFFFFFF@uint64;
vpc ecx@uint32 ecx;
subb dontcare ecx ecx 1@uint32;
vpc rcx@uint64 ecx;
(* #je     0x555555558119 <mp_shiftr1+233>         #! PC = 0x555555558038 *)
#je     0x555555558119 <mp_shiftr1+233>         #! 0x555555558038 = 0x555555558038;
(* sub    $0x2,%esi                                #! PC = 0x55555555803e *)
and esi@uint64 rsi 0x00000000FFFFFFFF@uint64;
vpc esi@uint32 esi;
subb carry esi esi 0x2@uint32;
vpc rsi@uint64 esi;
(* #jbe    0x555555558120 <mp_shiftr1+240>         #! PC = 0x555555558044 *)
#jbe    0x555555558120 <mp_shiftr1+240>         #! 0x555555558044 = 0x555555558044;
(* mov    %ecx,%edx                                #! PC = 0x55555555804a *)
and rdx@uint64 rcx 0x00000000FFFFFFFF@uint64;
(* shr    $0x2,%edx                                #! PC = 0x55555555804c *)
and edx@uint64 rdx 0x00000000FFFFFFFF@uint64;
vpc edx@uint32 edx;
split edx dontcare edx 0x2;
vpc rdx@uint64 edx;
(* shl    $0x5,%rdx                                #! PC = 0x55555555804f *)
shl rdx rdx 0x5;
(* mov    %rdi,%rax                                #! PC = 0x555555558053 *)
mov rax rdi;
(* add    %rdi,%rdx                                #! PC = 0x555555558056 *)
adds carry rdx rdx rdi;
(* vpsrlq $0x1,(%rax),%ymm0                        #! EA = L0x7fffffffbed0; Value = 0x0000000000000000; PC = 0x555555558060 *)
split ymm0_0 dontcare L0x7fffffffbed0 0x1;
split ymm0_1 dontcare L0x7fffffffbed8 0x1;
split ymm0_2 dontcare L0x7fffffffbee0 0x1;
split ymm0_3 dontcare L0x7fffffffbee8 0x1;
(* vpsllq $0x3f,0x8(%rax),%ymm1                    #! EA = L0x7fffffffbed8; Value = 0x0000000000000000; PC = 0x555555558067 *)
split dontcare ymm1_0 L0x7fffffffbed8 (64 - 0x3f);
split dontcare ymm1_1 L0x7fffffffbee0 (64 - 0x3f);
split dontcare ymm1_2 L0x7fffffffbee8 (64 - 0x3f);
split dontcare ymm1_3 L0x7fffffffbef0 (64 - 0x3f);
shl ymm1_0 ymm1_0 0x3f;
shl ymm1_1 ymm1_1 0x3f;
shl ymm1_2 ymm1_2 0x3f;
shl ymm1_3 ymm1_3 0x3f;
(* add    $0x20,%rax                               #! PC = 0x555555558072 *)
adds carry rax rax 0x20@uint64;
(* vpxor  %ymm1,%ymm0,%ymm0                        #! PC = 0x555555558076 *)
xor ymm0_0@uint64 ymm1_0 ymm0_0;
xor ymm0_1@uint64 ymm1_1 ymm0_1;
xor ymm0_2@uint64 ymm1_2 ymm0_2;
xor ymm0_3@uint64 ymm1_3 ymm0_3;
(* vmovdqu64 %ymm0,-0x20(%rax)                     #! EA = L0x7fffffffbed0; PC = 0x55555555807a *)
mov L0x7fffffffbed0 ymm0_0;
mov L0x7fffffffbed8 ymm0_1;
mov L0x7fffffffbee0 ymm0_2;
mov L0x7fffffffbee8 ymm0_3;
(* #jne    0x555555558060 <mp_shiftr1+48>          #! PC = 0x555555558084 *)
#jne    0x555555558060 <mp_shiftr1+48>          #! 0x555555558084 = 0x555555558084;
(* vpsrlq $0x1,(%rax),%ymm0                        #! EA = L0x7fffffffbef0; Value = 0x0000000000000000; PC = 0x555555558060 *)
split ymm0_0 dontcare L0x7fffffffbef0 0x1;
split ymm0_1 dontcare L0x7fffffffbef8 0x1;
split ymm0_2 dontcare L0x7fffffffbf00 0x1;
split ymm0_3 dontcare L0x7fffffffbf08 0x1;
(* vpsllq $0x3f,0x8(%rax),%ymm1                    #! EA = L0x7fffffffbef8; Value = 0x0000000000000000; PC = 0x555555558067 *)
split dontcare ymm1_0 L0x7fffffffbef8 (64 - 0x3f);
split dontcare ymm1_1 L0x7fffffffbf00 (64 - 0x3f);
split dontcare ymm1_2 L0x7fffffffbf08 (64 - 0x3f);
split dontcare ymm1_3 L0x7fffffffbf10 (64 - 0x3f);
shl ymm1_0 ymm1_0 0x3f;
shl ymm1_1 ymm1_1 0x3f;
shl ymm1_2 ymm1_2 0x3f;
shl ymm1_3 ymm1_3 0x3f;
(* add    $0x20,%rax                               #! PC = 0x555555558072 *)
adds carry rax rax 0x20@uint64;
(* vpxor  %ymm1,%ymm0,%ymm0                        #! PC = 0x555555558076 *)
xor ymm0_0@uint64 ymm1_0 ymm0_0;
xor ymm0_1@uint64 ymm1_1 ymm0_1;
xor ymm0_2@uint64 ymm1_2 ymm0_2;
xor ymm0_3@uint64 ymm1_3 ymm0_3;
(* vmovdqu64 %ymm0,-0x20(%rax)                     #! EA = L0x7fffffffbef0; PC = 0x55555555807a *)
mov L0x7fffffffbef0 ymm0_0;
mov L0x7fffffffbef8 ymm0_1;
mov L0x7fffffffbf00 ymm0_2;
mov L0x7fffffffbf08 ymm0_3;
(* #jne    0x555555558060 <mp_shiftr1+48>          #! PC = 0x555555558084 *)
#jne    0x555555558060 <mp_shiftr1+48>          #! 0x555555558084 = 0x555555558084;
(* mov    %ecx,%edx                                #! PC = 0x555555558086 *)
and rdx@uint64 rcx 0x00000000FFFFFFFF@uint64;
(* and    $0xfffffffc,%edx                         #! PC = 0x555555558088 *)
and rdx@uint64 rdx 0x00000000FFFFFFFF@uint64;
and rdx@uint64 rdx 0xfffffffc@uint64;
(* #je     0x555555558110 <mp_shiftr1+224>         #! PC = 0x55555555808e *)
#je     0x555555558110 <mp_shiftr1+224>         #! 0x55555555808e = 0x55555555808e;
(* vzeroupper                                      #! PC = 0x555555558094 *)
mov ymm0_2 0@uint64;
mov ymm0_3 0@uint64;
mov ymm1_2 0@uint64;
mov ymm1_3 0@uint64;
(* mov    %edx,%eax                                #! PC = 0x555555558098 *)
and rax@uint64 rdx 0x00000000FFFFFFFF@uint64;
(* mov    %rsp,%rbp                                #! PC = 0x55555555809e *)
mov rbp rsp;
(* mov    $0x1,%r11d                               #! PC = 0x5555555580a9 *)
and r11@uint64 0x1@uint64 0x00000000FFFFFFFF@uint64;
(* mov    $0x3f,%ebx                               #! PC = 0x5555555580af *)
and rbx@uint64 0x3f@uint64 0x00000000FFFFFFFF@uint64;
(* shlx   %rbx,(%r8),%rsi                          #! EA = L0x7fffffffbf18; Value = 0x0000000000000000; PC = 0x5555555580b4 *)
assert true && rbx = 63@64;
split dontcare rsi L0x7fffffffbf18 1;
shl rsi rsi 63;
(* mov    %rax,%r9                                 #! PC = 0x5555555580b9 *)
mov r9 rax;
(* shrx   %r11,(%r10),%rax                         #! EA = L0x7fffffffbf10; Value = 0x0000000000000000; PC = 0x5555555580bc *)
assert true && r11 = 1@64;
split rax dontcare L0x7fffffffbf10 1;
(* xor    %rsi,%rax                                #! PC = 0x5555555580c1 *)
xor rax@uint64 rsi rax;
(* mov    %rax,(%r10)                              #! EA = L0x7fffffffbf10; PC = 0x5555555580c4 *)
mov L0x7fffffffbf10 rax;
(* #jae    0x555555558101 <mp_shiftr1+209>         #! PC = 0x5555555580ca *)
#jae    0x555555558101 <mp_shiftr1+209>         #! 0x5555555580ca = 0x5555555580ca;
(* mov    %ecx,%ecx                                #! PC = 0x555555558101 *)
and rcx@uint64 rcx 0x00000000FFFFFFFF@uint64;
(* shrq   (%rdi)                                   #! EA = L0x7fffffffbf18; PC = 0x555555558108 *)
split L0x7fffffffbf18 dontcare L0x7fffffffbf18 1;
(* #! <- SP = 0x7fffffffbdf8 *)
#! 0x7fffffffbdf8 = 0x7fffffffbdf8;
(* #retq                                           #! PC = 0x55555555810c *)
#retq                                           #! 0x55555555810c = 0x55555555810c;

(* ===== Outputs ===== *)

mov c00 L0x7fffffffbe80;
mov c01 L0x7fffffffbe88;
mov c02 L0x7fffffffbe90;
mov c03 L0x7fffffffbe98;
mov c04 L0x7fffffffbea0;
mov c05 L0x7fffffffbea8;
mov c06 L0x7fffffffbeb0;
mov c07 L0x7fffffffbeb8;
mov c08 L0x7fffffffbec0;
mov c09 L0x7fffffffbec8;

mov c10 L0x7fffffffbed0;
mov c11 L0x7fffffffbed8;
mov c12 L0x7fffffffbee0;
mov c13 L0x7fffffffbee8;
mov c14 L0x7fffffffbef0;
mov c15 L0x7fffffffbef8;
mov c16 L0x7fffffffbf00;
mov c17 L0x7fffffffbf08;
mov c18 L0x7fffffffbf10;
mov c19 L0x7fffffffbf18;

{
  true
  && and [
    equmod (2@640 * (limbs 64 [ c00, c01, c02, c03, c04, c05, c06, c07, c08, c09 ]))
           (limbs 64 [ a00, a01, a02, a03, a04, a05, a06, a07, a08, a09 ])
           (limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64, $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ]),
    equmod (2@640 * (limbs 64 [ c10, c11, c12, c13, c14, c15, c16, c17, c18, c19 ]))
           (limbs 64 [ a10, a11, a12, a13, a14, a15, a16, a17, a18, a19 ])
           (limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64, $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ]),
    limbs 64 [ c00, c01, c02, c03, c04, c05, c06, c07, c08, c09 ] <=u
      (2@640 * limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64,
                          $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ] - 1@640),
    limbs 64 [ c10, c11, c12, c13, c14, c15, c16, c17, c18, c19 ] <=u
      (2@640 * limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64,
                          $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ] - 1@640)
  ]
}
