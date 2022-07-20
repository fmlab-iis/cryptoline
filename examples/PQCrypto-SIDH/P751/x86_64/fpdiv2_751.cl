(* on frege: -v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint fpdiv2_751.cl
Parsing Cryptoline file:		[OK]		0.005127 seconds
Checking well-formedness:		[OK]		0.000439 seconds
Transforming to SSA form:		[OK]		0.000227 seconds
Normalizing specification:		[OK]		0.000301 seconds
Rewriting assignments:			[OK]		0.000361 seconds
Verifying program safety:
	 Cut 0
	     Round 1 (0 safety conditions, timeout = 14400 seconds)
	 Overall			[OK]		0.000178 seconds
Verifying range assertions:		[OK]		0.151054 seconds
Verifying range specification:		[OK]		5.017012 seconds
Rewriting value-preserved casting:	[OK]		0.000062 seconds
Verifying algebraic assertions:		[OK]		0.000273 seconds
Verifying algebraic specification:	[OK]		0.000223 seconds
Verification result:			[OK]		5.175778 seconds
*)

(*
const uint64_t p751[NWORDS64_FIELD]              = { 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xEEAFFFFFFFFFFFFF,
                                                     0xE3EC968549F878A8, 0xDA959B1A13F7CC76, 0x084E9867D6EBE876, 0x8562B5045CB25748, 0x0E12909F97BADC66, 0x00006FE5D541F71C };
*)

const p751_0 = 0xFFFFFFFFFFFFFFFF
const p751_1 = 0xFFFFFFFFFFFFFFFF
const p751_2 = 0xFFFFFFFFFFFFFFFF
const p751_3 = 0xFFFFFFFFFFFFFFFF
const p751_4 = 0xFFFFFFFFFFFFFFFF
const p751_5 = 0xEEAFFFFFFFFFFFFF
const p751_6 = 0xE3EC968549F878A8
const p751_7 = 0xDA959B1A13F7CC76
const p751_8 = 0x084E9867D6EBE876
const p751_9 = 0x8562B5045CB25748
const p751_a = 0x0E12909F97BADC66
const p751_b = 0x00006FE5D541F71C

proc main (a_0@uint64, a_1@uint64, a_2@uint64, a_3@uint64, a_4@uint64, a_5@uint64, a_6@uint64, a_7@uint64, a_8@uint64, a_9@uint64, a_a@uint64, a_b@uint64) =
{
  true
  &&
  and [
    limbs 64 [ a_0, a_1, a_2, a_3, a_4, a_5, a_6, a_7, a_8, a_9, a_a, a_b ] <=u
      (2@768 * limbs 64 [ $p751_0@64, $p751_1@64, $p751_2@64, $p751_3@64, $p751_4@64, $p751_5@64, $p751_6@64, $p751_7@64, $p751_8@64, $p751_9@64, $p751_a@64, $p751_b@64 ] - 1@768)
  ]
}

(* ===== Initialization ===== *)

mov L0x7fffffffba40 a_0;
mov L0x7fffffffba48 a_1;
mov L0x7fffffffba50 a_2;
mov L0x7fffffffba58 a_3;
mov L0x7fffffffba60 a_4;
mov L0x7fffffffba68 a_5;
mov L0x7fffffffba70 a_6;
mov L0x7fffffffba78 a_7;
mov L0x7fffffffba80 a_8;
mov L0x7fffffffba88 a_9;
mov L0x7fffffffba90 a_a;
mov L0x7fffffffba98 a_b;

mov L0x555555569080 $p751_0@uint64;
mov L0x555555569088 $p751_1@uint64;
mov L0x555555569090 $p751_2@uint64;
mov L0x555555569098 $p751_3@uint64;
mov L0x5555555690a0 $p751_4@uint64;
mov L0x5555555690a8 $p751_5@uint64;
mov L0x5555555690b0 $p751_6@uint64;
mov L0x5555555690b8 $p751_7@uint64;
mov L0x5555555690c0 $p751_8@uint64;
mov L0x5555555690c8 $p751_9@uint64;
mov L0x5555555690d0 $p751_a@uint64;
mov L0x5555555690d8 $p751_b@uint64;

nondet rdi@uint64;
nondet rsi@uint64;
nondet rsp@uint64;

(* ===== Program ===== *)

(* #! -> SP = 0x7fffffffb9b8 *)
#! 0x7fffffffb9b8 = 0x7fffffffb9b8;
(* mov    %rdi,%rax                                #! PC = 0x555555563244 *)
mov rax rdi;
(* mov    (%rax),%rcx                              #! EA = L0x7fffffffba40; Value = 0x0000000000124d68; PC = 0x555555563247 *)
mov rcx L0x7fffffffba40;
(* mov    %rsi,%rdi                                #! PC = 0x55555556324a *)
mov rdi rsi;
(* mov    %rcx,%rdx                                #! PC = 0x55555556324d *)
mov rdx rcx;
(* mov    0x5e29(%rip),%rsi        # 0x555555569080 <p751>#! EA = L0x555555569080; Value = 0xffffffffffffffff; PC = 0x555555563250 *)
mov rsi L0x555555569080;
(* and    $0x1,%edx                                #! PC = 0x555555563257 *)
and rdx@uint64 rdx 0x00000000FFFFFFFF@uint64;
and rdx@uint64 rdx 0x1@uint64;
(* neg    %rdx                                     #! PC = 0x55555556325a *)
subb dontcare rdx 0@uint64 rdx;
(* and    %rdx,%rsi                                #! PC = 0x55555556325d *)
and uint64 rsi rdx rsi;
(* mov    %rcx,%r10                                #! PC = 0x555555563260 *)
mov r10 rcx;
(* xor    %r9d,%r9d                                #! PC = 0x555555563263 *)
mov r9 0@uint64;
(* xor    %r11d,%r11d                              #! PC = 0x555555563266 *)
mov r11 0@uint64;
(* add    %rsi,%r10                                #! PC = 0x555555563269 *)
adds carry r10 r10 rsi;
(* adc    %r9,%r11                                 #! PC = 0x55555556326c *)
adcs carry r11 r11 r9@uint64 carry;
(* add    %rsi,%rcx                                #! PC = 0x55555556326f *)
adds carry rcx rcx rsi;
(* mov    %rcx,(%rdi)                              #! EA = L0x7fffffffba40; PC = 0x555555563272 *)
mov L0x7fffffffba40 rcx;
(* mov    0x5e0b(%rip),%rbx        # 0x555555569088 <p751+8>#! EA = L0x555555569088; Value = 0xffffffffffffffff; PC = 0x555555563276 *)
mov rbx L0x555555569088;
(* mov    0x8(%rax),%rcx                           #! EA = L0x7fffffffba48; Value = 0x0000000000000000; PC = 0x55555556327d *)
mov rcx L0x7fffffffba48;
(* and    %rdx,%rbx                                #! PC = 0x555555563281 *)
and uint64 rbx rdx rbx;
(* mov    %rbx,%r8                                 #! PC = 0x555555563284 *)
mov r8 rbx;
(* mov    %r11,%r10                                #! PC = 0x555555563287 *)
mov r10 r11;
(* xor    %ebx,%ebx                                #! PC = 0x55555556328a *)
mov rbx 0@uint64;
(* xor    %r11d,%r11d                              #! PC = 0x55555556328c *)
mov r11 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x55555556328f *)
mov r9 0@uint64;
(* add    %rcx,%r8                                 #! PC = 0x555555563292 *)
adds carry r8 r8 rcx;
(* adc    %rbx,%r9                                 #! PC = 0x555555563295 *)
adcs carry r9 r9 rbx@uint64 carry;
(* add    %r10,%r8                                 #! PC = 0x555555563298 *)
adds carry r8 r8 r10;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffba48; PC = 0x55555556329b *)
mov L0x7fffffffba48 r8;
(* mov    0x5dea(%rip),%rbx        # 0x555555569090 <p751+16>#! EA = L0x555555569090; Value = 0xffffffffffffffff; PC = 0x55555556329f *)
mov rbx L0x555555569090;
(* adc    %r11,%r9                                 #! PC = 0x5555555632a6 *)
adcs carry r9 r9 r11@uint64 carry;
(* mov    0x10(%rax),%rcx                          #! EA = L0x7fffffffba50; Value = 0x0000000000000000; PC = 0x5555555632a9 *)
mov rcx L0x7fffffffba50;
(* and    %rdx,%rbx                                #! PC = 0x5555555632ad *)
and uint64 rbx rdx rbx;
(* mov    %rbx,%r8                                 #! PC = 0x5555555632b0 *)
mov r8 rbx;
(* mov    %r9,%r10                                 #! PC = 0x5555555632b3 *)
mov r10 r9;
(* xor    %r11d,%r11d                              #! PC = 0x5555555632b6 *)
mov r11 0@uint64;
(* xor    %ebx,%ebx                                #! PC = 0x5555555632b9 *)
mov rbx 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x5555555632bb *)
mov r9 0@uint64;
(* add    %rcx,%r8                                 #! PC = 0x5555555632be *)
adds carry r8 r8 rcx;
(* adc    %rbx,%r9                                 #! PC = 0x5555555632c1 *)
adcs carry r9 r9 rbx@uint64 carry;
(* add    %r10,%r8                                 #! PC = 0x5555555632c4 *)
adds carry r8 r8 r10;
(* mov    %r8,0x10(%rdi)                           #! EA = L0x7fffffffba50; PC = 0x5555555632c7 *)
mov L0x7fffffffba50 r8;
(* mov    0x5dc6(%rip),%rbx        # 0x555555569098 <p751+24>#! EA = L0x555555569098; Value = 0xffffffffffffffff; PC = 0x5555555632cb *)
mov rbx L0x555555569098;
(* adc    %r11,%r9                                 #! PC = 0x5555555632d2 *)
adcs carry r9 r9 r11@uint64 carry;
(* mov    0x18(%rax),%rcx                          #! EA = L0x7fffffffba58; Value = 0x0000000000000000; PC = 0x5555555632d5 *)
mov rcx L0x7fffffffba58;
(* and    %rdx,%rbx                                #! PC = 0x5555555632d9 *)
and uint64 rbx rdx rbx;
(* mov    %rbx,%r8                                 #! PC = 0x5555555632dc *)
mov r8 rbx;
(* mov    %r9,%r10                                 #! PC = 0x5555555632df *)
mov r10 r9;
(* xor    %r11d,%r11d                              #! PC = 0x5555555632e2 *)
mov r11 0@uint64;
(* xor    %ebx,%ebx                                #! PC = 0x5555555632e5 *)
mov rbx 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x5555555632e7 *)
mov r9 0@uint64;
(* add    %rcx,%r8                                 #! PC = 0x5555555632ea *)
adds carry r8 r8 rcx;
(* adc    %rbx,%r9                                 #! PC = 0x5555555632ed *)
adcs carry r9 r9 rbx@uint64 carry;
(* add    %r10,%r8                                 #! PC = 0x5555555632f0 *)
adds carry r8 r8 r10;
(* mov    %r8,0x18(%rdi)                           #! EA = L0x7fffffffba58; PC = 0x5555555632f3 *)
mov L0x7fffffffba58 r8;
(* mov    0x5da2(%rip),%rbx        # 0x5555555690a0 <p751+32>#! EA = L0x5555555690a0; Value = 0xffffffffffffffff; PC = 0x5555555632f7 *)
mov rbx L0x5555555690a0;
(* adc    %r11,%r9                                 #! PC = 0x5555555632fe *)
adcs carry r9 r9 r11@uint64 carry;
(* mov    0x20(%rax),%rcx                          #! EA = L0x7fffffffba60; Value = 0x0000000000000000; PC = 0x555555563301 *)
mov rcx L0x7fffffffba60;
(* and    %rdx,%rbx                                #! PC = 0x555555563305 *)
and uint64 rbx rdx rbx;
(* mov    %rbx,%r8                                 #! PC = 0x555555563308 *)
mov r8 rbx;
(* mov    %r9,%r10                                 #! PC = 0x55555556330b *)
mov r10 r9;
(* xor    %r11d,%r11d                              #! PC = 0x55555556330e *)
mov r11 0@uint64;
(* xor    %ebx,%ebx                                #! PC = 0x555555563311 *)
mov rbx 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x555555563313 *)
mov r9 0@uint64;
(* add    %rcx,%r8                                 #! PC = 0x555555563316 *)
adds carry r8 r8 rcx;
(* adc    %rbx,%r9                                 #! PC = 0x555555563319 *)
adcs carry r9 r9 rbx@uint64 carry;
(* add    %r10,%r8                                 #! PC = 0x55555556331c *)
adds carry r8 r8 r10;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x7fffffffba60; PC = 0x55555556331f *)
mov L0x7fffffffba60 r8;
(* mov    0x5d7e(%rip),%rsi        # 0x5555555690a8 <p751+40>#! EA = L0x5555555690a8; Value = 0xeeafffffffffffff; PC = 0x555555563323 *)
mov rsi L0x5555555690a8;
(* adc    %r11,%r9                                 #! PC = 0x55555556332a *)
adcs carry r9 r9 r11@uint64 carry;
(* mov    0x28(%rax),%rcx                          #! EA = L0x7fffffffba68; Value = 0x1880000000000000; PC = 0x55555556332d *)
mov rcx L0x7fffffffba68;
(* and    %rdx,%rsi                                #! PC = 0x555555563331 *)
and uint64 rsi rdx rsi;
(* mov    %rsi,%r8                                 #! PC = 0x555555563334 *)
mov r8 rsi;
(* mov    %r9,%r10                                 #! PC = 0x555555563337 *)
mov r10 r9;
(* xor    %r11d,%r11d                              #! PC = 0x55555556333a *)
mov r11 0@uint64;
(* xor    %ebx,%ebx                                #! PC = 0x55555556333d *)
mov rbx 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x55555556333f *)
mov r9 0@uint64;
(* add    %rcx,%r8                                 #! PC = 0x555555563342 *)
adds carry r8 r8 rcx;
(* adc    %rbx,%r9                                 #! PC = 0x555555563345 *)
adcs carry r9 r9 rbx@uint64 carry;
(* add    %r10,%r8                                 #! PC = 0x555555563348 *)
adds carry r8 r8 r10;
(* mov    %r8,0x28(%rdi)                           #! EA = L0x7fffffffba68; PC = 0x55555556334b *)
mov L0x7fffffffba68 r8;
(* mov    0x5d5a(%rip),%rbx        # 0x5555555690b0 <p751+48>#! EA = L0x5555555690b0; Value = 0xe3ec968549f878a8; PC = 0x55555556334f *)
mov rbx L0x5555555690b0;
(* adc    %r11,%r9                                 #! PC = 0x555555563356 *)
adcs carry r9 r9 r11@uint64 carry;
(* mov    0x30(%rax),%rcx                          #! EA = L0x7fffffffba70; Value = 0xa93d8f21bae36334; PC = 0x555555563359 *)
mov rcx L0x7fffffffba70;
(* and    %rdx,%rbx                                #! PC = 0x55555556335d *)
and uint64 rbx rdx rbx;
(* mov    %rbx,%r8                                 #! PC = 0x555555563360 *)
mov r8 rbx;
(* mov    %r9,%r10                                 #! PC = 0x555555563363 *)
mov r10 r9;
(* xor    %r11d,%r11d                              #! PC = 0x555555563366 *)
mov r11 0@uint64;
(* xor    %ebx,%ebx                                #! PC = 0x555555563369 *)
mov rbx 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x55555556336b *)
mov r9 0@uint64;
(* add    %rcx,%r8                                 #! PC = 0x55555556336e *)
adds carry r8 r8 rcx;
(* adc    %rbx,%r9                                 #! PC = 0x555555563371 *)
adcs carry r9 r9 rbx@uint64 carry;
(* add    %r10,%r8                                 #! PC = 0x555555563374 *)
adds carry r8 r8 r10;
(* mov    %r8,0x30(%rdi)                           #! EA = L0x7fffffffba70; PC = 0x555555563377 *)
mov L0x7fffffffba70 r8;
(* mov    0x5d36(%rip),%rsi        # 0x5555555690b8 <p751+56>#! EA = L0x5555555690b8; Value = 0xda959b1a13f7cc76; PC = 0x55555556337b *)
mov rsi L0x5555555690b8;
(* adc    %r11,%r9                                 #! PC = 0x555555563382 *)
adcs carry r9 r9 r11@uint64 carry;
(* mov    0x38(%rax),%rcx                          #! EA = L0x7fffffffba78; Value = 0x4bbcbdf9fa792682; PC = 0x555555563385 *)
mov rcx L0x7fffffffba78;
(* and    %rdx,%rsi                                #! PC = 0x555555563389 *)
and uint64 rsi rdx rsi;
(* mov    %rsi,%r8                                 #! PC = 0x55555556338c *)
mov r8 rsi;
(* mov    %r9,%r10                                 #! PC = 0x55555556338f *)
mov r10 r9;
(* xor    %r11d,%r11d                              #! PC = 0x555555563392 *)
mov r11 0@uint64;
(* xor    %ebx,%ebx                                #! PC = 0x555555563395 *)
mov rbx 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x555555563397 *)
mov r9 0@uint64;
(* add    %rcx,%r8                                 #! PC = 0x55555556339a *)
adds carry r8 r8 rcx;
(* adc    %rbx,%r9                                 #! PC = 0x55555556339d *)
adcs carry r9 r9 rbx@uint64 carry;
(* add    %r10,%r8                                 #! PC = 0x5555555633a0 *)
adds carry r8 r8 r10;
(* mov    %r8,0x38(%rdi)                           #! EA = L0x7fffffffba78; PC = 0x5555555633a3 *)
mov L0x7fffffffba78 r8;
(* mov    0x5d12(%rip),%rbx        # 0x5555555690c0 <p751+64>#! EA = L0x5555555690c0; Value = 0x084e9867d6ebe876; PC = 0x5555555633a7 *)
mov rbx L0x5555555690c0;
(* adc    %r11,%r9                                 #! PC = 0x5555555633ae *)
adcs carry r9 r9 r11@uint64 carry;
(* mov    0x40(%rax),%rcx                          #! EA = L0x7fffffffba80; Value = 0x44edbd9562e27173; PC = 0x5555555633b1 *)
mov rcx L0x7fffffffba80;
(* and    %rdx,%rbx                                #! PC = 0x5555555633b5 *)
and uint64 rbx rdx rbx;
(* mov    %rbx,%r8                                 #! PC = 0x5555555633b8 *)
mov r8 rbx;
(* mov    %r9,%r10                                 #! PC = 0x5555555633bb *)
mov r10 r9;
(* xor    %r11d,%r11d                              #! PC = 0x5555555633be *)
mov r11 0@uint64;
(* xor    %ebx,%ebx                                #! PC = 0x5555555633c1 *)
mov rbx 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x5555555633c3 *)
mov r9 0@uint64;
(* add    %rcx,%r8                                 #! PC = 0x5555555633c6 *)
adds carry r8 r8 rcx;
(* adc    %rbx,%r9                                 #! PC = 0x5555555633c9 *)
adcs carry r9 r9 rbx@uint64 carry;
(* add    %r10,%r8                                 #! PC = 0x5555555633cc *)
adds carry r8 r8 r10;
(* mov    %r8,0x40(%rdi)                           #! EA = L0x7fffffffba80; PC = 0x5555555633cf *)
mov L0x7fffffffba80 r8;
(* mov    0x5cee(%rip),%rsi        # 0x5555555690c8 <p751+72>#! EA = L0x5555555690c8; Value = 0x8562b5045cb25748; PC = 0x5555555633d3 *)
mov rsi L0x5555555690c8;
(* adc    %r11,%r9                                 #! PC = 0x5555555633da *)
adcs carry r9 r9 r11@uint64 carry;
(* mov    0x48(%rax),%rcx                          #! EA = L0x7fffffffba88; Value = 0x6525a1ce903b4ab6; PC = 0x5555555633dd *)
mov rcx L0x7fffffffba88;
(* and    %rdx,%rsi                                #! PC = 0x5555555633e1 *)
and uint64 rsi rdx rsi;
(* mov    %rsi,%r8                                 #! PC = 0x5555555633e4 *)
mov r8 rsi;
(* mov    %r9,%r10                                 #! PC = 0x5555555633e7 *)
mov r10 r9;
(* xor    %r11d,%r11d                              #! PC = 0x5555555633ea *)
mov r11 0@uint64;
(* xor    %ebx,%ebx                                #! PC = 0x5555555633ed *)
mov rbx 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x5555555633ef *)
mov r9 0@uint64;
(* add    %rcx,%r8                                 #! PC = 0x5555555633f2 *)
adds carry r8 r8 rcx;
(* adc    %rbx,%r9                                 #! PC = 0x5555555633f5 *)
adcs carry r9 r9 rbx@uint64 carry;
(* add    %r10,%r8                                 #! PC = 0x5555555633f8 *)
adds carry r8 r8 r10;
(* mov    %r8,0x48(%rdi)                           #! EA = L0x7fffffffba88; PC = 0x5555555633fb *)
mov L0x7fffffffba88 r8;
(* mov    0x5cca(%rip),%rbx        # 0x5555555690d0 <p751+80>#! EA = L0x5555555690d0; Value = 0x0e12909f97badc66; PC = 0x5555555633ff *)
mov rbx L0x5555555690d0;
(* adc    %r11,%r9                                 #! PC = 0x555555563406 *)
adcs carry r9 r9 r11@uint64 carry;
(* mov    0x50(%rax),%rcx                          #! EA = L0x7fffffffba90; Value = 0x87bc9363a8963f4a; PC = 0x555555563409 *)
mov rcx L0x7fffffffba90;
(* and    %rdx,%rbx                                #! PC = 0x55555556340d *)
and uint64 rbx rdx rbx;
(* mov    %rbx,%r8                                 #! PC = 0x555555563410 *)
mov r8 rbx;
(* mov    %r9,%r10                                 #! PC = 0x555555563413 *)
mov r10 r9;
(* xor    %ebx,%ebx                                #! PC = 0x555555563416 *)
mov rbx 0@uint64;
(* xor    %r11d,%r11d                              #! PC = 0x555555563418 *)
mov r11 0@uint64;
(* xor    %r9d,%r9d                                #! PC = 0x55555556341b *)
mov r9 0@uint64;
(* add    %rcx,%r8                                 #! PC = 0x55555556341e *)
adds carry r8 r8 rcx;
(* adc    %rbx,%r9                                 #! PC = 0x555555563421 *)
adcs carry r9 r9 rbx@uint64 carry;
(* add    %r10,%r8                                 #! PC = 0x555555563424 *)
adds carry r8 r8 r10;
(* mov    %r8,0x50(%rdi)                           #! EA = L0x7fffffffba90; PC = 0x555555563427 *)
mov L0x7fffffffba90 r8;
(* adc    %r11,%r9                                 #! PC = 0x55555556342b *)
adcs carry r9 r9 r11@uint64 carry;
(* and    0x5ca3(%rip),%rdx        # 0x5555555690d8 <p751+88>#! EA = L0x5555555690d8; Value = 0x00006fe5d541f71c; PC = 0x55555556342e *)
and uint64 rdx L0x5555555690d8 rdx;
(* mov    0x58(%rax),%rcx                          #! EA = L0x7fffffffba98; Value = 0x00016ad925e72f10; PC = 0x555555563435 *)
mov rcx L0x7fffffffba98;
(* mov    %rdx,%r8                                 #! PC = 0x555555563439 *)
mov r8 rdx;
(* add    %rcx,%r8                                 #! PC = 0x55555556343c *)
adds carry r8 r8 rcx;
(* add    %r9,%r8                                  #! PC = 0x55555556343f *)
adds carry r8 r8 r9;
(* mov    %r8,0x58(%rdi)                           #! EA = L0x7fffffffba98; PC = 0x555555563442 *)
mov L0x7fffffffba98 r8;
(* mov    $0xc,%esi                                #! PC = 0x555555563446 *)
and rsi@uint64 0xc@uint64 0x00000000FFFFFFFF@uint64;
(* #jmpq   0x55555555ac70 <mp_shiftr1>             #! PC = 0x55555556344c *)
#jmpq   0x55555555ac70 <mp_shiftr1>             #! 0x55555556344c = 0x55555556344c;
(* mov    %esi,%ecx                                #! PC = 0x55555555ac74 *)
and rcx@uint64 rsi 0x00000000FFFFFFFF@uint64;
(* dec    %ecx                                     #! PC = 0x55555555ac76 *)
spl dontcare ecx rcx 32;
subb dontcare ecx ecx 1@uint32;
vpc rcx@uint64 ecx;
(* #je     0x55555555ad59 <mp_shiftr1+233>         #! PC = 0x55555555ac78 *)
#je     0x55555555ad59 <mp_shiftr1+233>         #! 0x55555555ac78 = 0x55555555ac78;
(* sub    $0x2,%esi                                #! PC = 0x55555555ac7e *)
spl dontcare esi rsi 32;
subb carry esi esi 0x2@uint32;
vpc rsi@uint64 esi;
(* #jbe    0x55555555ad60 <mp_shiftr1+240>         #! PC = 0x55555555ac84 *)
#jbe    0x55555555ad60 <mp_shiftr1+240>         #! 0x55555555ac84 = 0x55555555ac84;
(* mov    %ecx,%edx                                #! PC = 0x55555555ac8a *)
and rdx@uint64 rcx 0x00000000FFFFFFFF@uint64;
(* shr    $0x2,%edx                                #! PC = 0x55555555ac8c *)
spl dontcare edx rdx 32;
shrs edx dontcare edx 0x2;
vpc rdx@uint64 edx;
(* shl    $0x5,%rdx                                #! PC = 0x55555555ac8f *)
shls dontcare rdx rdx 0x5;
(* mov    %rdi,%rax                                #! PC = 0x55555555ac93 *)
mov rax rdi;
(* add    %rdi,%rdx                                #! PC = 0x55555555ac96 *)
adds carry rdx rdx rdi;
(* vpsrlq $0x1,(%rax),%ymm0                        #! EA = L0x7fffffffba40; Value = 0x0000000000124d68; PC = 0x55555555aca0 *)
shrs ymm0_0 dontcare L0x7fffffffba40 0x1;
shrs ymm0_1 dontcare L0x7fffffffba48 0x1;
shrs ymm0_2 dontcare L0x7fffffffba50 0x1;
shrs ymm0_3 dontcare L0x7fffffffba58 0x1;
(* vpsllq $0x3f,0x8(%rax),%ymm1                    #! EA = L0x7fffffffba48; Value = 0x0000000000000000; PC = 0x55555555aca7 *)
shls dontcare ymm1_0 L0x7fffffffba48 0x3f;
shls dontcare ymm1_1 L0x7fffffffba50 0x3f;
shls dontcare ymm1_2 L0x7fffffffba58 0x3f;
shls dontcare ymm1_3 L0x7fffffffba60 0x3f;
(* add    $0x20,%rax                               #! PC = 0x55555555acb2 *)
adds carry rax rax 0x20@uint64;
(* vpxor  %ymm1,%ymm0,%ymm0                        #! PC = 0x55555555acb6 *)
xor ymm0_0@uint64 ymm1_0 ymm0_0;
xor ymm0_1@uint64 ymm1_1 ymm0_1;
xor ymm0_2@uint64 ymm1_2 ymm0_2;
xor ymm0_3@uint64 ymm1_3 ymm0_3;
(* vmovdqu64 %ymm0,-0x20(%rax)                     #! EA = L0x7fffffffba40; PC = 0x55555555acba *)
mov L0x7fffffffba40 ymm0_0;
mov L0x7fffffffba48 ymm0_1;
mov L0x7fffffffba50 ymm0_2;
mov L0x7fffffffba58 ymm0_3;
(* #jne    0x55555555aca0 <mp_shiftr1+48>          #! PC = 0x55555555acc4 *)
#jne    0x55555555aca0 <mp_shiftr1+48>          #! 0x55555555acc4 = 0x55555555acc4;
(* vpsrlq $0x1,(%rax),%ymm0                        #! EA = L0x7fffffffba60; Value = 0x0000000000000000; PC = 0x55555555aca0 *)
shrs ymm0_0 dontcare L0x7fffffffba60 0x1;
shrs ymm0_1 dontcare L0x7fffffffba68 0x1;
shrs ymm0_2 dontcare L0x7fffffffba70 0x1;
shrs ymm0_3 dontcare L0x7fffffffba78 0x1;
(* vpsllq $0x3f,0x8(%rax),%ymm1                    #! EA = L0x7fffffffba68; Value = 0x1880000000000000; PC = 0x55555555aca7 *)
shls dontcare ymm1_0 L0x7fffffffba68 0x3f;
shls dontcare ymm1_1 L0x7fffffffba70 0x3f;
shls dontcare ymm1_2 L0x7fffffffba78 0x3f;
shls dontcare ymm1_3 L0x7fffffffba80 0x3f;
(* add    $0x20,%rax                               #! PC = 0x55555555acb2 *)
adds carry rax rax 0x20@uint64;
(* vpxor  %ymm1,%ymm0,%ymm0                        #! PC = 0x55555555acb6 *)
xor ymm0_0@uint64 ymm1_0 ymm0_0;
xor ymm0_1@uint64 ymm1_1 ymm0_1;
xor ymm0_2@uint64 ymm1_2 ymm0_2;
xor ymm0_3@uint64 ymm1_3 ymm0_3;
(* vmovdqu64 %ymm0,-0x20(%rax)                     #! EA = L0x7fffffffba60; PC = 0x55555555acba *)
mov L0x7fffffffba60 ymm0_0;
mov L0x7fffffffba68 ymm0_1;
mov L0x7fffffffba70 ymm0_2;
mov L0x7fffffffba78 ymm0_3;
(* #jne    0x55555555aca0 <mp_shiftr1+48>          #! PC = 0x55555555acc4 *)
#jne    0x55555555aca0 <mp_shiftr1+48>          #! 0x55555555acc4 = 0x55555555acc4;
(* mov    %ecx,%edx                                #! PC = 0x55555555acc6 *)
and rdx@uint64 rcx 0x00000000FFFFFFFF@uint64;
(* and    $0xfffffffc,%edx                         #! PC = 0x55555555acc8 *)
and rdx@uint64 rdx 0x00000000FFFFFFFF@uint64;
and rdx@uint64 rdx 0xfffffffc@uint64;
(* #je     0x55555555ad50 <mp_shiftr1+224>         #! PC = 0x55555555acce *)
#je     0x55555555ad50 <mp_shiftr1+224>         #! 0x55555555acce = 0x55555555acce;
(* vzeroupper                                      #! PC = 0x55555555acd4 *)
mov ymm0_2 0@uint64;
mov ymm0_3 0@uint64;
mov ymm1_2 0@uint64;
mov ymm1_3 0@uint64;
(* mov    %edx,%eax                                #! PC = 0x55555555acd8 *)
and rax@uint64 rdx 0x00000000FFFFFFFF@uint64;
(* mov    %rsp,%rbp                                #! PC = 0x55555555acde *)
mov rbp rsp;
(* mov    $0x1,%r11d                               #! PC = 0x55555555ace9 *)
and r11@uint64 0x1@uint64 0x00000000FFFFFFFF@uint64;
(* mov    $0x3f,%ebx                               #! PC = 0x55555555acef *)
and rbx@uint64 0x3f@uint64 0x00000000FFFFFFFF@uint64;
(* shlx   %rbx,(%r8),%rsi                          #! EA = L0x7fffffffba88; Value = 0x6525a1ce903b4ab6; PC = 0x55555555acf4 *)
assert true && rbx = 63@64;
shls dontcare rsi L0x7fffffffba88 63;
(* mov    %rax,%r9                                 #! PC = 0x55555555acf9 *)
mov r9 rax;
(* shrx   %r11,(%r10),%rax                         #! EA = L0x7fffffffba80; Value = 0x44edbd9562e27173; PC = 0x55555555acfc *)
assert true && r11 = 1@64;
shrs rax dontcare L0x7fffffffba80 1;
(* xor    %rsi,%rax                                #! PC = 0x55555555ad01 *)
xor rax@uint64 rsi rax;
(* mov    %rax,(%r10)                              #! EA = L0x7fffffffba80; PC = 0x55555555ad04 *)
mov L0x7fffffffba80 rax;
(* #jae    0x55555555ad41 <mp_shiftr1+209>         #! PC = 0x55555555ad0a *)
#jae    0x55555555ad41 <mp_shiftr1+209>         #! 0x55555555ad0a = 0x55555555ad0a;
(* shlx   %rbx,(%r9),%rsi                          #! EA = L0x7fffffffba90; Value = 0x87bc9363a8963f4a; PC = 0x55555555ad13 *)
assert true && rbx = 63@64;
shls dontcare rsi L0x7fffffffba90 63;
(* mov    %rax,%r10                                #! PC = 0x55555555ad18 *)
mov r10 rax;
(* shrx   %r11,(%r8),%rax                          #! EA = L0x7fffffffba88; Value = 0x6525a1ce903b4ab6; PC = 0x55555555ad1b *)
assert true && r11 = 1@64;
shrs rax dontcare L0x7fffffffba88 1;
(* xor    %rsi,%rax                                #! PC = 0x55555555ad20 *)
xor rax@uint64 rsi rax;
(* mov    %rax,(%r8)                               #! EA = L0x7fffffffba88; PC = 0x55555555ad23 *)
mov L0x7fffffffba88 rax;
(* #jbe    0x55555555ad41 <mp_shiftr1+209>         #! PC = 0x55555555ad29 *)
#jbe    0x55555555ad41 <mp_shiftr1+209>         #! 0x55555555ad29 = 0x55555555ad29;
(* mov    (%rdi,%rax,8),%rax                       #! EA = L0x7fffffffba98; Value = 0x00016ad925e72f10; PC = 0x55555555ad2e *)
mov rax L0x7fffffffba98;
(* shrx   %r11,(%r9),%rdx                          #! EA = L0x7fffffffba90; Value = 0x87bc9363a8963f4a; PC = 0x55555555ad32 *)
assert true && r11 = 1@64;
shrs rdx dontcare L0x7fffffffba90 1;
(* shl    $0x3f,%rax                               #! PC = 0x55555555ad37 *)
shls dontcare rax rax 0x3f;
(* xor    %rdx,%rax                                #! PC = 0x55555555ad3b *)
xor rax@uint64 rdx rax;
(* mov    %rax,(%r9)                               #! EA = L0x7fffffffba90; PC = 0x55555555ad3e *)
mov L0x7fffffffba90 rax;
(* mov    %ecx,%ecx                                #! PC = 0x55555555ad41 *)
and rcx@uint64 rcx 0x00000000FFFFFFFF@uint64;
(* shrq   (%rdi)                                   #! EA = L0x7fffffffba98; PC = 0x55555555ad48 *)
shrs L0x7fffffffba98 dontcare L0x7fffffffba98 1;
(* #! <- SP = 0x7fffffffb9b8 *)
#! 0x7fffffffb9b8 = 0x7fffffffb9b8;
(* #retq                                           #! PC = 0x55555555ad4c *)
#retq                                           #! 0x55555555ad4c = 0x55555555ad4c;

(* ===== Outputs ===== *)

mov c_0 L0x7fffffffba40;
mov c_1 L0x7fffffffba48;
mov c_2 L0x7fffffffba50;
mov c_3 L0x7fffffffba58;
mov c_4 L0x7fffffffba60;
mov c_5 L0x7fffffffba68;
mov c_6 L0x7fffffffba70;
mov c_7 L0x7fffffffba78;
mov c_8 L0x7fffffffba80;
mov c_9 L0x7fffffffba88;
mov c_a L0x7fffffffba90;
mov c_b L0x7fffffffba98;

{
  true
  && and [
    equmod (2@768 * (limbs 64 [ c_0, c_1, c_2, c_3, c_4, c_5, c_6, c_7, c_8, c_9, c_a, c_b ]))
           (limbs 64 [ a_0, a_1, a_2, a_3, a_4, a_5, a_6, a_7, a_8, a_9, a_a, a_b ])
           (limbs 64 [ $p751_0@64, $p751_1@64, $p751_2@64, $p751_3@64, $p751_4@64, $p751_5@64, $p751_6@64, $p751_7@64, $p751_8@64, $p751_9@64, $p751_a@64, $p751_b@64 ]),
    limbs 64 [ c_0, c_1, c_2, c_3, c_4, c_5, c_6, c_7, c_8, c_9, c_a, c_b ] <=u
      (2@768 * limbs 64 [ $p751_0@64, $p751_1@64, $p751_2@64, $p751_3@64, $p751_4@64, $p751_5@64, $p751_6@64, $p751_7@64, $p751_8@64, $p751_9@64, $p751_a@64, $p751_b@64 ] - 1@768)
  ]
}
