(* quine: -v div_by_z.cl
Parsing Cryptoline file:                [OK]            0.011156 seconds
Checking well-formedness:               [OK]            0.001422 seconds
Transforming to SSA form:               [OK]            0.000678 seconds
Normalizing specification:              [OK]            0.001539 seconds
Rewriting assignments:                  [OK]            0.001481 seconds
Verifying program safety:               [OK]            0.092912 seconds
Verifying range specification:          [OK]            15115.827304 seconds
Rewriting value-preserved casting:      [OK]            0.000190 seconds
Verifying algebraic specification:      [OK]            0.000662 seconds
Verification result:                    [OK]            15115.938054 seconds
*)
proc main (uint64 R0, uint64 R1, uint64 D0, uint64 D1) =
{
  true
  &&
  and[
      D1 = 0xd201000000010000@64,
      D0 = 0@64
      ]
}

mov L0x7fffffffd7c0 R0;
mov L0x7fffffffd7c8 R1;
mov rsi D0;
mov rdx D1;
mov L0x555555574fb0 D1;


(* mov    (%rdi),%r8                               #! EA = L0x7fffffffd7c0 *)
mov r8 L0x7fffffffd7c0;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffd7c8 *)
mov r9 L0x7fffffffd7c8;
(* xor    %rax,%rax *)
mov rax 0@uint64;
(* mov    $0x40,%ecx *)
mov ecx 0x40@uint64;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* mov    %r8,%r10 *)
mov r10 r8;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* mov    %r9,%r11 *)
mov r11 r9;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* lea    0x1(%rax,%rax,1),%rax                    #! EA = L0x1 *)
usplit dontcare rax rax 63;
shl rax rax 1;
adds dontcare rax rax 1@uint64;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* cmovb  %r10,%r8 *)
cmov r8 carry r10 r8;
(* cmovb  %r11,%r9 *)
cmov r9 carry r11 r9;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* shl    $0x3f,%rdi *)
usplit dontcare rdi rdi 1;
shl rdi rdi 63;
(* shr    %rsi *)
usplit rsi dontcare rsi 1;
(* shr    %rdx *)
usplit rdx dontcare rdx 1;
(* or     %rdi,%rsi *)
or rsi@uint64 rdi rsi;
(* sub    $0x1,%ecx *)
subb carry ecx ecx 0x1@uint64;
(* #jne    0x5555555724d3 <div_3_limbs+19> *)
#jne    0x5555555724d3 <div_3_limbs+19>;
(* lea    0x1(%rax,%rax,1),%rcx                    #! EA = L0x1 *)
usplit dontcare rcx rax 63;
shl rcx rcx 1;
adds dontcare rcx rcx 1@uint64;
(* sar    $0x3f,%rax *)
and msb@uint64 rax 0x8000000000000000@uint64;
subc flag dontcare msb 1@uint64;
cmov rax flag 0xffffffffffffffff@uint64 0@uint64;
(* sub    %rsi,%r8 *)
subb carry r8 r8 rsi;
(* sbb    %rdx,%r9 *)
sbbs carry r9 r9 rdx carry;
(* sbb    $0x0,%rcx *)
sbbs carry rcx rcx 0@uint64 carry;
(* or     %rcx,%rax *)
or rax@uint64 rcx rax;
(* #repz retq *)
#repz retq;
(* mov    %rax,-0x8(%rbp)                          #! EA = L0x7fffffffd798 *)
mov L0x7fffffffd798 rax;
(* mov    -0x28(%rbp),%rax                         #! EA = L0x7fffffffd778 *)
#mov rax L0x7fffffffd778;
(* #lea    0x0(,%rax,8),%rdx *)
#lea    0x0(,%%rax,8),%%rdx;
(* mov    -0x38(%rbp),%rax                         #! EA = L0x7fffffffd768 *)
#mov rax L0x7fffffffd768;
(* #lea    (%rdx,%rax,1),%rcx                       #! EA = L0x7fffffffd7c0 *)
#lea    (%%rdx,%%rax,1),%%rcx                       #! L0x7fffffffd7c0 = L0x7fffffffd7c0;
(* mov    -0x8(%rbp),%rax                          #! EA = L0x7fffffffd798 *)
mov rax L0x7fffffffd798;
(* mov    %rax,%rdx *)
mov rdx rax;
(* #lea    0xb8a5(%rip),%rsi        # 0x555555574fb0 <z.5534>#! EA = L0x555555574fb0 *)
#lea    0xb8a5(%rip),%%rsi        # 0x555555574fb0 <z.5534>#! L0x555555574fb0 = L0x555555574fb0;
(* mov    %rcx,%rdi *)
mov rdi rcx;
(* #callq  0x555555572580 <quot_rem_64> *)
#callq  0x555555572580 <quot_rem_64>;
(* #endbr64 *)
#endbr64;
(* mov    %rdx,%rax *)
mov rax rdx;
(* imul   (%rsi),%rdx                              #! EA = L0x555555574fb0 *)

cast t1@sint64 L0x555555574fb0;
cast t2@sint64 rdx;

smull dontcare rdx t1 t2;

nondet carry@uint1;
assume true && or[and[carry = 0@1,
                      or[and[rdx >=s 0@64, dontcare = 0@64],
                         and[rdx <s  0@64, dontcare = (-1)@64]]
                     ],
                  and[carry = 1@1,
                      or[and[rdx >=s 0@64, or[dontcare >s    0@64, dontcare <s    0@64]],
                         and[rdx <s  0@64, or[dontcare >s (-1)@64, dontcare <s (-1)@64]]
                        ]
                     ]
                 ];

(* mov    (%rdi),%r10                              #! EA = L0x7fffffffd7c0 *)
mov r10 L0x7fffffffd7c0;
(* sub    %rdx,%r10 *)
subb carry r10 r10 rdx;
(* mov    %r10,(%rdi)                              #! EA = L0x7fffffffd7c0 *)
mov L0x7fffffffd7c0 r10;
(* mov    %rax,0x8(%rdi)                           #! EA = L0x7fffffffd7c8 *)
mov L0x7fffffffd7c8 rax;

mov r L0x7fffffffd7c0;
mov q L0x7fffffffd7c8;


(* #repz retq *)
#repz retq;
(* mov    -0x28(%rbp),%rax                         #! EA = L0x7fffffffd778 *)
#mov rax L0x7fffffffd778;
(* #lea    -0x1(%rax),%rdx                          #! EA = L0x-1 *)
#lea    -0x1(%%rax),%%rdx                          #! L0x-1 = L0x-1;
(* mov    %rdx,-0x28(%rbp)                         #! EA = L0x7fffffffd778 *)
#mov L0x7fffffffd778 rdx;
(* #test   %rax,%rax *)
#test   %%rax,%%rax;
(* #jne    0x5555555696b7 <div_by_z+78> *)
#jne    0x5555555696b7 <div_by_z+78>;
(* #nop *)
#nop;
(* #nop *)
#nop;
(* #leaveq *)
#leaveq;

{
  true
  &&
  and[
      ecx = 0@64,
      or[ 
	 and[limbs 64 [R0, R1] <u limbs 64[D0, D1],
	     limbs 64 [0@64, R0, R1] - limbs 64 [0@64, r, 0@64] = limbs 64 [D0, D1, 0@64] * limbs 64 [q, 0@64, 0@64]
	    ],
	 and[limbs 64 [R0, R1] >=u limbs 64[D0, D1],
         q = 18446744073709551615@64]
	] 
     ]  
}

