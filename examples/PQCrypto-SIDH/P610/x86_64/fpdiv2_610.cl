(* on frege: -v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint fpdiv2_610.cl
Parsing Cryptoline file:		[OK]		0.005026 seconds
Checking well-formedness:		[OK]		0.001641 seconds
Transforming to SSA form:		[OK]		0.000323 seconds
Normalizing specification:		[OK]		0.000415 seconds
Rewriting assignments:			[OK]		0.000489 seconds
Verifying program safety:
	 Cut 0
	     Round 1 (4 safety conditions, timeout = 14400 seconds)
		 Safety condition #0	[OK]
		 Safety condition #1	[OK]
		 Safety condition #2	[OK]
		 Safety condition #3	[OK]
	 Overall			[OK]		0.126185 seconds
Verifying range assertions:		[OK]		0.073992 seconds
Verifying range specification:		[OK]		3.692385 seconds
Rewriting value-preserved casting:	[OK]		0.000097 seconds
Verifying algebraic assertions:		[OK]		0.000430 seconds
Verifying algebraic specification:	[OK]		0.000372 seconds
Verification result:			[OK]		3.901955 seconds
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

proc main (a0@uint64, a1@uint64, a2@uint64, a3@uint64, a4@uint64, a5@uint64, a6@uint64, a7@uint64, a8@uint64, a9@uint64) =
{
  true
  &&
  and [
    limbs 64 [ a0, a1, a2, a3, a4, a5, a6, a7, a8, a9 ] <=u
      (2@640 * limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64,
                          $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ] - 1@640)
  ]
}

(* ===== Initialization ===== *)

mov L0x7fffffffb5a0 a0;
mov L0x7fffffffb5a8 a1;
mov L0x7fffffffb5b0 a2;
mov L0x7fffffffb5b8 a3;
mov L0x7fffffffb5c0 a4;
mov L0x7fffffffb5c8 a5;
mov L0x7fffffffb5d0 a6;
mov L0x7fffffffb5d8 a7;
mov L0x7fffffffb5e0 a8;
mov L0x7fffffffb5e8 a9;

mov L0x55555556de60 $p610_0@uint64;
mov L0x55555556de68 $p610_1@uint64;
mov L0x55555556de70 $p610_2@uint64;
mov L0x55555556de78 $p610_3@uint64;
mov L0x55555556de80 $p610_4@uint64;
mov L0x55555556de88 $p610_5@uint64;
mov L0x55555556de90 $p610_6@uint64;
mov L0x55555556de98 $p610_7@uint64;
mov L0x55555556dea0 $p610_8@uint64;
mov L0x55555556dea8 $p610_9@uint64;

nondet rdi@uint64;
nondet rsi@uint64;
nondet rsp@uint64;

(* ===== Program ===== *)

(* #! -> SP = 0x7fffffffb518 *)
#! 0x7fffffffb518 = 0x7fffffffb518;
(* mov    %rdi,%rax                                #! PC = 0x555555563d64 *)
mov rax rdi;
(* mov    (%rax),%rcx                              #! EA = L0x7fffffffb5a0; Value = 0x0000000338664730; PC = 0x555555563d67 *)
mov rcx L0x7fffffffb5a0;
(* mov    %rsi,%rdi                                #! PC = 0x555555563d6a *)
mov rdi rsi;
(* mov    %rcx,%rdx                                #! PC = 0x555555563d6d *)
mov rdx rcx;
(* and    $0x1,%edx                                #! PC = 0x555555563d70 *)
and rdx@uint64 rdx 0x00000000FFFFFFFF@uint64;
and rdx@uint64 rdx 0x1@uint64;
(* mov    0xa0e6(%rip),%rsi        # 0x55555556de60 <p610>#! EA = L0x55555556de60; Value = 0xffffffffffffffff; PC = 0x555555563d73 *)
mov rsi L0x55555556de60;
(* neg    %rdx                                     #! PC = 0x555555563d7a *)
subb dontcare rdx 0@uint64 rdx;
(* and    %rdx,%rsi                                #! PC = 0x555555563d7d *)
and uint64 rsi rdx rsi;
(* mov    %rcx,%r10                                #! PC = 0x555555563d80 *)
mov r10 rcx;
(* xor    %r9d,%r9d                                #! PC = 0x555555563d83 *)
mov r9 0@uint64;
(* xor    %r11d,%r11d                              #! PC = 0x555555563d86 *)
mov r11 0@uint64;
(* add    %rsi,%r10                                #! PC = 0x555555563d89 *)
adds carry r10 r10 rsi;
(* adc    %r9,%r11                                 #! PC = 0x555555563d8c *)
adcs carry r11 r11 r9@uint64 carry;
(* add    %rsi,%rcx                                #! PC = 0x555555563d8f *)
adds carry rcx rcx rsi;
(* mov    %rcx,(%rdi)                              #! EA = L0x7fffffffb5a0; PC = 0x555555563d92 *)
mov L0x7fffffffb5a0 rcx;
(* mov    0xa0cb(%rip),%rbx        # 0x55555556de68 <p610+8>#! EA = L0x55555556de68; Value = 0xffffffffffffffff; PC = 0x555555563d96 *)
mov rbx L0x55555556de68;
(* mov    0x8(%rax),%rcx                           #! EA = L0x7fffffffb5a8; Value = 0x0000000000000000; PC = 0x555555563d9d *)
mov rcx L0x7fffffffb5a8;
(* and    %rdx,%rbx                                #! PC = 0x555555563da1 *)
and uint64 rbx rdx rbx;
(* mov    %rbx,%r8                                 #! PC = 0x555555563da4 *)
mov r8 rbx;
(* mov    %r11,%r10                                #! PC = 0x555555563da7 *)
mov r10 r11;
(* xor    %ebx,%ebx                                #! PC = 0x555555563daa *)
mov rbx 0@uint64;
(* xor    %r11d,%r11d                              #! PC = 0x555555563dac *)
mov r11 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x555555563daf *)
mov r9 0@uint64;
(* add    %rcx,%r8                                 #! PC = 0x555555563db2 *)
adds carry r8 r8 rcx;
(* adc    %rbx,%r9                                 #! PC = 0x555555563db5 *)
adcs carry r9 r9 rbx@uint64 carry;
(* add    %r10,%r8                                 #! PC = 0x555555563db8 *)
adds carry r8 r8 r10;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffb5a8; PC = 0x555555563dbb *)
mov L0x7fffffffb5a8 r8;
(* mov    0xa0aa(%rip),%rbx        # 0x55555556de70 <p610+16>#! EA = L0x55555556de70; Value = 0xffffffffffffffff; PC = 0x555555563dbf *)
mov rbx L0x55555556de70;
(* adc    %r11,%r9                                 #! PC = 0x555555563dc6 *)
adcs carry r9 r9 r11@uint64 carry;
(* mov    0x10(%rax),%rcx                          #! EA = L0x7fffffffb5b0; Value = 0x0000000000000000; PC = 0x555555563dc9 *)
mov rcx L0x7fffffffb5b0;
(* and    %rdx,%rbx                                #! PC = 0x555555563dcd *)
and uint64 rbx rdx rbx;
(* mov    %rbx,%r8                                 #! PC = 0x555555563dd0 *)
mov r8 rbx;
(* mov    %r9,%r10                                 #! PC = 0x555555563dd3 *)
mov r10 r9;
(* xor    %r11d,%r11d                              #! PC = 0x555555563dd6 *)
mov r11 0@uint64;
(* xor    %ebx,%ebx                                #! PC = 0x555555563dd9 *)
mov rbx 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x555555563ddb *)
mov r9 0@uint64;
(* add    %rcx,%r8                                 #! PC = 0x555555563dde *)
adds carry r8 r8 rcx;
(* adc    %rbx,%r9                                 #! PC = 0x555555563de1 *)
adcs carry r9 r9 rbx@uint64 carry;
(* add    %r10,%r8                                 #! PC = 0x555555563de4 *)
adds carry r8 r8 r10;
(* mov    %r8,0x10(%rdi)                           #! EA = L0x7fffffffb5b0; PC = 0x555555563de7 *)
mov L0x7fffffffb5b0 r8;
(* mov    0xa086(%rip),%rbx        # 0x55555556de78 <p610+24>#! EA = L0x55555556de78; Value = 0xffffffffffffffff; PC = 0x555555563deb *)
mov rbx L0x55555556de78;
(* adc    %r11,%r9                                 #! PC = 0x555555563df2 *)
adcs carry r9 r9 r11@uint64 carry;
(* mov    0x18(%rax),%rcx                          #! EA = L0x7fffffffb5b8; Value = 0x0000000000000000; PC = 0x555555563df5 *)
mov rcx L0x7fffffffb5b8;
(* and    %rdx,%rbx                                #! PC = 0x555555563df9 *)
and uint64 rbx rdx rbx;
(* mov    %rbx,%r8                                 #! PC = 0x555555563dfc *)
mov r8 rbx;
(* mov    %r9,%r10                                 #! PC = 0x555555563dff *)
mov r10 r9;
(* xor    %r11d,%r11d                              #! PC = 0x555555563e02 *)
mov r11 0@uint64;
(* xor    %ebx,%ebx                                #! PC = 0x555555563e05 *)
mov rbx 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x555555563e07 *)
mov r9 0@uint64;
(* add    %rcx,%r8                                 #! PC = 0x555555563e0a *)
adds carry r8 r8 rcx;
(* adc    %rbx,%r9                                 #! PC = 0x555555563e0d *)
adcs carry r9 r9 rbx@uint64 carry;
(* add    %r10,%r8                                 #! PC = 0x555555563e10 *)
adds carry r8 r8 r10;
(* mov    %r8,0x18(%rdi)                           #! EA = L0x7fffffffb5b8; PC = 0x555555563e13 *)
mov L0x7fffffffb5b8 r8;
(* mov    0xa062(%rip),%rbx        # 0x55555556de80 <p610+32>#! EA = L0x55555556de80; Value = 0x6e01ffffffffffff; PC = 0x555555563e17 *)
mov rbx L0x55555556de80;
(* adc    %r11,%r9                                 #! PC = 0x555555563e1e *)
adcs carry r9 r9 r11@uint64 carry;
(* mov    0x20(%rax),%rcx                          #! EA = L0x7fffffffb5c0; Value = 0xd1a0000000000000; PC = 0x555555563e21 *)
mov rcx L0x7fffffffb5c0;
(* and    %rdx,%rbx                                #! PC = 0x555555563e25 *)
and uint64 rbx rdx rbx;
(* mov    %rbx,%r8                                 #! PC = 0x555555563e28 *)
mov r8 rbx;
(* mov    %r9,%r10                                 #! PC = 0x555555563e2b *)
mov r10 r9;
(* xor    %r11d,%r11d                              #! PC = 0x555555563e2e *)
mov r11 0@uint64;
(* xor    %ebx,%ebx                                #! PC = 0x555555563e31 *)
mov rbx 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x555555563e33 *)
mov r9 0@uint64;
(* add    %rcx,%r8                                 #! PC = 0x555555563e36 *)
adds carry r8 r8 rcx;
(* adc    %rbx,%r9                                 #! PC = 0x555555563e39 *)
adcs carry r9 r9 rbx@uint64 carry;
(* add    %r10,%r8                                 #! PC = 0x555555563e3c *)
adds carry r8 r8 r10;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x7fffffffb5c0; PC = 0x555555563e3f *)
mov L0x7fffffffb5c0 r8;
(* mov    0xa03e(%rip),%rsi        # 0x55555556de88 <p610+40>#! EA = L0x55555556de88; Value = 0xb1784de8aa5ab02e; PC = 0x555555563e43 *)
mov rsi L0x55555556de88;
(* adc    %r11,%r9                                 #! PC = 0x555555563e4a *)
adcs carry r9 r9 r11@uint64 carry;
(* mov    0x28(%rax),%rcx                          #! EA = L0x7fffffffb5c8; Value = 0x6cce15e9438bd1fc; PC = 0x555555563e4d *)
mov rcx L0x7fffffffb5c8;
(* and    %rdx,%rsi                                #! PC = 0x555555563e51 *)
and uint64 rsi rdx rsi;
(* mov    %rsi,%r8                                 #! PC = 0x555555563e54 *)
mov r8 rsi;
(* mov    %r9,%r10                                 #! PC = 0x555555563e57 *)
mov r10 r9;
(* xor    %r11d,%r11d                              #! PC = 0x555555563e5a *)
mov r11 0@uint64;
(* xor    %ebx,%ebx                                #! PC = 0x555555563e5d *)
mov rbx 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x555555563e5f *)
mov r9 0@uint64;
(* add    %rcx,%r8                                 #! PC = 0x555555563e62 *)
adds carry r8 r8 rcx;
(* adc    %rbx,%r9                                 #! PC = 0x555555563e65 *)
adcs carry r9 r9 rbx@uint64 carry;
(* add    %r10,%r8                                 #! PC = 0x555555563e68 *)
adds carry r8 r8 r10;
(* mov    %r8,0x28(%rdi)                           #! EA = L0x7fffffffb5c8; PC = 0x555555563e6b *)
mov L0x7fffffffb5c8 r8;
(* mov    0xa01a(%rip),%rbx        # 0x55555556de90 <p610+48>#! EA = L0x55555556de90; Value = 0x9ae7bf45048ff9ab; PC = 0x555555563e6f *)
mov rbx L0x55555556de90;
(* adc    %r11,%r9                                 #! PC = 0x555555563e76 *)
adcs carry r9 r9 r11@uint64 carry;
(* mov    0x30(%rax),%rcx                          #! EA = L0x7fffffffb5d0; Value = 0x5250c1cd191ea0e2; PC = 0x555555563e79 *)
mov rcx L0x7fffffffb5d0;
(* and    %rdx,%rbx                                #! PC = 0x555555563e7d *)
and uint64 rbx rdx rbx;
(* mov    %rbx,%r8                                 #! PC = 0x555555563e80 *)
mov r8 rbx;
(* mov    %r9,%r10                                 #! PC = 0x555555563e83 *)
mov r10 r9;
(* xor    %r11d,%r11d                              #! PC = 0x555555563e86 *)
mov r11 0@uint64;
(* xor    %ebx,%ebx                                #! PC = 0x555555563e89 *)
mov rbx 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x555555563e8b *)
mov r9 0@uint64;
(* add    %rcx,%r8                                 #! PC = 0x555555563e8e *)
adds carry r8 r8 rcx;
(* adc    %rbx,%r9                                 #! PC = 0x555555563e91 *)
adcs carry r9 r9 rbx@uint64 carry;
(* add    %r10,%r8                                 #! PC = 0x555555563e94 *)
adds carry r8 r8 r10;
(* mov    %r8,0x30(%rdi)                           #! EA = L0x7fffffffb5d0; PC = 0x555555563e97 *)
mov L0x7fffffffb5d0 r8;
(* mov    0x9ff6(%rip),%rsi        # 0x55555556de98 <p610+56>#! EA = L0x55555556de98; Value = 0xb255b2fa10c4252a; PC = 0x555555563e9b *)
mov rsi L0x55555556de98;
(* adc    %r11,%r9                                 #! PC = 0x555555563ea2 *)
adcs carry r9 r9 r11@uint64 carry;
(* mov    0x38(%rax),%rcx                          #! EA = L0x7fffffffb5d8; Value = 0x95b110ae83568f10; PC = 0x555555563ea5 *)
mov rcx L0x7fffffffb5d8;
(* and    %rdx,%rsi                                #! PC = 0x555555563ea9 *)
and uint64 rsi rdx rsi;
(* mov    %rsi,%r8                                 #! PC = 0x555555563eac *)
mov r8 rsi;
(* mov    %r9,%r10                                 #! PC = 0x555555563eaf *)
mov r10 r9;
(* xor    %r11d,%r11d                              #! PC = 0x555555563eb2 *)
mov r11 0@uint64;
(* xor    %ebx,%ebx                                #! PC = 0x555555563eb5 *)
mov rbx 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x555555563eb7 *)
mov r9 0@uint64;
(* add    %rcx,%r8                                 #! PC = 0x555555563eba *)
adds carry r8 r8 rcx;
(* adc    %rbx,%r9                                 #! PC = 0x555555563ebd *)
adcs carry r9 r9 rbx@uint64 carry;
(* add    %r10,%r8                                 #! PC = 0x555555563ec0 *)
adds carry r8 r8 r10;
(* mov    %r8,0x38(%rdi)                           #! EA = L0x7fffffffb5d8; PC = 0x555555563ec3 *)
mov L0x7fffffffb5d8 r8;
(* mov    0x9fd2(%rip),%rbx        # 0x55555556dea0 <p610+64>#! EA = L0x55555556dea0; Value = 0x819010c251e7d88c; PC = 0x555555563ec7 *)
mov rbx L0x55555556dea0;
(* adc    %r11,%r9                                 #! PC = 0x555555563ece *)
adcs carry r9 r9 r11@uint64 carry;
(* mov    0x40(%rax),%rcx                          #! EA = L0x7fffffffb5e0; Value = 0x9b481374316579ee; PC = 0x555555563ed1 *)
mov rcx L0x7fffffffb5e0;
(* and    %rdx,%rbx                                #! PC = 0x555555563ed5 *)
and uint64 rbx rdx rbx;
(* mov    %rbx,%r8                                 #! PC = 0x555555563ed8 *)
mov r8 rbx;
(* mov    %r9,%r10                                 #! PC = 0x555555563edb *)
mov r10 r9;
(* xor    %ebx,%ebx                                #! PC = 0x555555563ede *)
mov rbx 0@uint64;
(* xor    %r11d,%r11d                              #! PC = 0x555555563ee0 *)
mov r11 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x555555563ee3 *)
mov r9 0@uint64;
(* add    %rcx,%r8                                 #! PC = 0x555555563ee6 *)
adds carry r8 r8 rcx;
(* adc    %rbx,%r9                                 #! PC = 0x555555563ee9 *)
adcs carry r9 r9 rbx@uint64 carry;
(* add    %r10,%r8                                 #! PC = 0x555555563eec *)
adds carry r8 r8 r10;
(* mov    %r8,0x40(%rdi)                           #! EA = L0x7fffffffb5e0; PC = 0x555555563eef *)
mov L0x7fffffffb5e0 r8;
(* adc    %r11,%r9                                 #! PC = 0x555555563ef3 *)
adcs carry r9 r9 r11@uint64 carry;
(* and    0x9fab(%rip),%rdx        # 0x55555556dea8 <p610+72>#! EA = L0x55555556dea8; Value = 0x000000027bf6a768; PC = 0x555555563ef6 *)
and uint64 rdx L0x55555556dea8 rdx;
(* mov    0x48(%rax),%rcx                          #! EA = L0x7fffffffb5e8; Value = 0x0000000844a74b20; PC = 0x555555563efd *)
mov rcx L0x7fffffffb5e8;
(* mov    %rdx,%r8                                 #! PC = 0x555555563f01 *)
mov r8 rdx;
(* add    %rcx,%r8                                 #! PC = 0x555555563f04 *)
adds carry r8 r8 rcx;
(* add    %r9,%r8                                  #! PC = 0x555555563f07 *)
adds carry r8 r8 r9;
(* mov    %r8,0x48(%rdi)                           #! EA = L0x7fffffffb5e8; PC = 0x555555563f0a *)
mov L0x7fffffffb5e8 r8;
(* mov    $0xa,%esi                                #! PC = 0x555555563f0e *)
and rsi@uint64 0xa@uint64 0x00000000FFFFFFFF@uint64;
(* #jmpq   0x5555555596e0 <mp_shiftr1>             #! PC = 0x555555563f14 *)
#jmpq   0x5555555596e0 <mp_shiftr1>             #! 0x555555563f14 = 0x555555563f14;
(* mov    %esi,%ecx                                #! PC = 0x5555555596e4 *)
and rcx@uint64 rsi 0x00000000FFFFFFFF@uint64;
(* dec    %ecx                                     #! PC = 0x5555555596e6 *)
and ecx@uint64 rcx 0x00000000FFFFFFFF@uint64;
vpc ecx@uint32 ecx;
subb dontcare ecx ecx 1@uint32;
vpc rcx@uint64 ecx;
(* #je     0x5555555597c9 <mp_shiftr1+233>         #! PC = 0x5555555596e8 *)
#je     0x5555555597c9 <mp_shiftr1+233>         #! 0x5555555596e8 = 0x5555555596e8;
(* sub    $0x2,%esi                                #! PC = 0x5555555596ee *)
and esi@uint64 rsi 0x00000000FFFFFFFF@uint64;
vpc esi@uint32 esi;
subb carry esi esi 0x2@uint32;
vpc rsi@uint64 esi;
(* #jbe    0x5555555597d0 <mp_shiftr1+240>         #! PC = 0x5555555596f4 *)
#jbe    0x5555555597d0 <mp_shiftr1+240>         #! 0x5555555596f4 = 0x5555555596f4;
(* mov    %ecx,%edx                                #! PC = 0x5555555596fa *)
and rdx@uint64 rcx 0x00000000FFFFFFFF@uint64;
(* shr    $0x2,%edx                                #! PC = 0x5555555596fc *)
and edx@uint64 rdx 0x00000000FFFFFFFF@uint64;
vpc edx@uint32 edx;
shrs edx dontcare edx 0x2;
vpc rdx@uint64 edx;
(* shl    $0x5,%rdx                                #! PC = 0x5555555596ff *)
shl rdx rdx 0x5;
(* mov    %rdi,%rax                                #! PC = 0x555555559703 *)
mov rax rdi;
(* add    %rdi,%rdx                                #! PC = 0x555555559706 *)
adds carry rdx rdx rdi;
(* vpsrlq $0x1,(%rax),%ymm0                        #! EA = L0x7fffffffb5a0; Value = 0x0000000338664730; PC = 0x555555559710 *)
shrs ymm0_0 dontcare L0x7fffffffb5a0 0x1;
shrs ymm0_1 dontcare L0x7fffffffb5a8 0x1;
shrs ymm0_2 dontcare L0x7fffffffb5b0 0x1;
shrs ymm0_3 dontcare L0x7fffffffb5b8 0x1;
(* vpsllq $0x3f,0x8(%rax),%ymm1                    #! EA = L0x7fffffffb5a8; Value = 0x0000000000000000; PC = 0x555555559717 *)
shls dontcare ymm1_0 L0x7fffffffb5a8 0x3f;
shls dontcare ymm1_1 L0x7fffffffb5b0 0x3f;
shls dontcare ymm1_2 L0x7fffffffb5b8 0x3f;
shls dontcare ymm1_3 L0x7fffffffb5c0 0x3f;
(* add    $0x20,%rax                               #! PC = 0x555555559722 *)
adds carry rax rax 0x20@uint64;
(* vpxor  %ymm1,%ymm0,%ymm0                        #! PC = 0x555555559726 *)
xor ymm0_0@uint64 ymm1_0 ymm0_0;
xor ymm0_1@uint64 ymm1_1 ymm0_1;
xor ymm0_2@uint64 ymm1_2 ymm0_2;
xor ymm0_3@uint64 ymm1_3 ymm0_3;
(* vmovdqu64 %ymm0,-0x20(%rax)                     #! EA = L0x7fffffffb5a0; PC = 0x55555555972a *)
mov L0x7fffffffb5a0 ymm0_0;
mov L0x7fffffffb5a8 ymm0_1;
mov L0x7fffffffb5b0 ymm0_2;
mov L0x7fffffffb5b8 ymm0_3;
(* #jne    0x555555559710 <mp_shiftr1+48>          #! PC = 0x555555559734 *)
#jne    0x555555559710 <mp_shiftr1+48>          #! 0x555555559734 = 0x555555559734;
(* vpsrlq $0x1,(%rax),%ymm0                        #! EA = L0x7fffffffb5c0; Value = 0xd1a0000000000000; PC = 0x555555559710 *)
shrs ymm0_0 dontcare L0x7fffffffb5c0 0x1;
shrs ymm0_1 dontcare L0x7fffffffb5c8 0x1;
shrs ymm0_2 dontcare L0x7fffffffb5d0 0x1;
shrs ymm0_3 dontcare L0x7fffffffb5d8 0x1;
(* vpsllq $0x3f,0x8(%rax),%ymm1                    #! EA = L0x7fffffffb5c8; Value = 0x6cce15e9438bd1fc; PC = 0x555555559717 *)
shls dontcare ymm1_0 L0x7fffffffb5c8 0x3f;
shls dontcare ymm1_1 L0x7fffffffb5d0 0x3f;
shls dontcare ymm1_2 L0x7fffffffb5d8 0x3f;
shls dontcare ymm1_3 L0x7fffffffb5e0 0x3f;
(* add    $0x20,%rax                               #! PC = 0x555555559722 *)
adds carry rax rax 0x20@uint64;
(* vpxor  %ymm1,%ymm0,%ymm0                        #! PC = 0x555555559726 *)
xor ymm0_0@uint64 ymm1_0 ymm0_0;
xor ymm0_1@uint64 ymm1_1 ymm0_1;
xor ymm0_2@uint64 ymm1_2 ymm0_2;
xor ymm0_3@uint64 ymm1_3 ymm0_3;
(* vmovdqu64 %ymm0,-0x20(%rax)                     #! EA = L0x7fffffffb5c0; PC = 0x55555555972a *)
mov L0x7fffffffb5c0 ymm0_0;
mov L0x7fffffffb5c8 ymm0_1;
mov L0x7fffffffb5d0 ymm0_2;
mov L0x7fffffffb5d8 ymm0_3;
(* #jne    0x555555559710 <mp_shiftr1+48>          #! PC = 0x555555559734 *)
#jne    0x555555559710 <mp_shiftr1+48>          #! 0x555555559734 = 0x555555559734;
(* mov    %ecx,%edx                                #! PC = 0x555555559736 *)
and rdx@uint64 rcx 0x00000000FFFFFFFF@uint64;
(* and    $0xfffffffc,%edx                         #! PC = 0x555555559738 *)
and rdx@uint64 rdx 0x00000000FFFFFFFF@uint64;
and rdx@uint64 rdx 0xfffffffc@uint64;
(* #je     0x5555555597c0 <mp_shiftr1+224>         #! PC = 0x55555555973e *)
#je     0x5555555597c0 <mp_shiftr1+224>         #! 0x55555555973e = 0x55555555973e;
(* vzeroupper                                      #! PC = 0x555555559744 *)
mov ymm0_2 0@uint64;
mov ymm0_3 0@uint64;
mov ymm1_2 0@uint64;
mov ymm1_3 0@uint64;
(* mov    %edx,%eax                                #! PC = 0x555555559748 *)
and rax@uint64 rdx 0x00000000FFFFFFFF@uint64;
(* mov    %rsp,%rbp                                #! PC = 0x55555555974e *)
mov rbp rsp;
(* mov    $0x1,%r11d                               #! PC = 0x555555559759 *)
and r11@uint64 0x1@uint64 0x00000000FFFFFFFF@uint64;
(* mov    $0x3f,%ebx                               #! PC = 0x55555555975f *)
and rbx@uint64 0x3f@uint64 0x00000000FFFFFFFF@uint64;
(* shlx   %rbx,(%r8),%rsi                          #! EA = L0x7fffffffb5e8; Value = 0x0000000844a74b20; PC = 0x555555559764 *)
assert true && rbx = 63@64;
shls dontcare rsi L0x7fffffffb5e8 63;
(* mov    %rax,%r9                                 #! PC = 0x555555559769 *)
mov r9 rax;
(* shrx   %r11,(%r10),%rax                         #! EA = L0x7fffffffb5e0; Value = 0x9b481374316579ee; PC = 0x55555555976c *)
assert true && r11 = 1@64;
shrs rax dontcare L0x7fffffffb5e0 1;
(* xor    %rsi,%rax                                #! PC = 0x555555559771 *)
xor rax@uint64 rsi rax;
(* mov    %rax,(%r10)                              #! EA = L0x7fffffffb5e0; PC = 0x555555559774 *)
mov L0x7fffffffb5e0 rax;
(* #jae    0x5555555597b1 <mp_shiftr1+209>         #! PC = 0x55555555977a *)
#jae    0x5555555597b1 <mp_shiftr1+209>         #! 0x55555555977a = 0x55555555977a;
(* mov    %ecx,%ecx                                #! PC = 0x5555555597b1 *)
and rcx@uint64 rcx 0x00000000FFFFFFFF@uint64;
(* shrq   (%rdi)                                   #! EA = L0x7fffffffb5e8; PC = 0x5555555597b8 *)
shrs L0x7fffffffb5e8 dontcare L0x7fffffffb5e8 1;
(* #! <- SP = 0x7fffffffb518 *)
#! 0x7fffffffb518 = 0x7fffffffb518;
(* #retq                                           #! PC = 0x5555555597bc *)
#retq                                           #! 0x5555555597bc = 0x5555555597bc;

(* ===== Outputs ===== *)

mov c0 L0x7fffffffb5a0;
mov c1 L0x7fffffffb5a8;
mov c2 L0x7fffffffb5b0;
mov c3 L0x7fffffffb5b8;
mov c4 L0x7fffffffb5c0;
mov c5 L0x7fffffffb5c8;
mov c6 L0x7fffffffb5d0;
mov c7 L0x7fffffffb5d8;
mov c8 L0x7fffffffb5e0;
mov c9 L0x7fffffffb5e8;

{
  true
  && and [
    equmod (2@640 * (limbs 64 [ c0, c1, c2, c3, c4, c5, c6, c7, c8, c9 ]))
           (limbs 64 [ a0, a1, a2, a3, a4, a5, a6, a7, a8, a9 ])
           (limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64, $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ]),
    limbs 64 [ c0, c1, c2, c3, c4, c5, c6, c7, c8, c9 ] <=u
      (2@640 * limbs 64 [ $p610_0@64, $p610_1@64, $p610_2@64, $p610_3@64, $p610_4@64,
                          $p610_5@64, $p610_6@64, $p610_7@64, $p610_8@64, $p610_9@64 ] - 1@640)
  ]
}
