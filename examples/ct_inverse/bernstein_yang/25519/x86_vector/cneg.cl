(* quine: -v -isafety -isafety_timeout 100000 -slicing -jobs 40 cneg.cl
Parsing Cryptoline file:                [OK]            0.003853 seconds
Checking well-formedness:               [OK]            0.002074 seconds
Transforming to SSA form:               [OK]            0.000753 seconds
Normalizing specification:              [OK]            0.000381 seconds
Rewriting assignments:                  [OK]            0.000346 seconds
Verifying program safety:
-----------------------------------------------------------------------
         Overall                        [OK]            30208.542692 seconds
Verifying range assertions:             [OK]            41.584373 seconds
Verifying range specification:          [OK]            0.933252 seconds
Rewriting value-preserved casting:      [OK]            0.000353 seconds
Verifying algebraic assertions:         [OK]            0.284730 seconds
Verifying algebraic specification:      [OK]            0.147078 seconds
Verification result:                    [OK]            30251.500661 seconds
*)
proc main (sint64 u , sint64 v ,
           sint64 V0, sint64 S0,
           uint64 V1, uint64 S1,
           uint64 V2, uint64 S2,
           uint64 V3, uint64 S3,
           uint64 V4, uint64 S4,
           uint64 V5, uint64 S5,
           uint64 V6, uint64 S6,
           uint64 V7, uint64 S7,
           uint64 V8, uint64 S8
           ) =
{
  true
  &&
  and[
      (-(2**(60)))@64 <=s u , u  <=s (2**(60)-1)@64,
      (-(2**(60)))@64 <=s v , v  <=s (2**(60)-1)@64,

      (sext V0 301) * (2**(30*0))@365 +
      (sext V1 301) * (2**(30*1))@365 +
      (sext V2 301) * (2**(30*2))@365 +
      (sext V3 301) * (2**(30*3))@365 +
      (sext V4 301) * (2**(30*4))@365 +
      (sext V5 301) * (2**(30*5))@365 +
      (sext V6 301) * (2**(30*6))@365 +
      (sext V7 301) * (2**(30*7))@365 +
      (sext V8 301) * (2**(30*8))@365 >s (-(2**(29)))@365,
      (sext V0 301) * (2**(30*0))@365 +
      (sext V1 301) * (2**(30*1))@365 +
      (sext V2 301) * (2**(30*2))@365 +
      (sext V3 301) * (2**(30*3))@365 +
      (sext V4 301) * (2**(30*4))@365 +
      (sext V5 301) * (2**(30*5))@365 +
      (sext V6 301) * (2**(30*6))@365 +
      (sext V7 301) * (2**(30*7))@365 +
      (sext V8 301) * (2**(30*8))@365 <s ((2**(255))+(2**(29)))@365,

      (sext S0 301) * (2**(30*0))@365 +
      (sext S1 301) * (2**(30*1))@365 +
      (sext S2 301) * (2**(30*2))@365 +
      (sext S3 301) * (2**(30*3))@365 +
      (sext S4 301) * (2**(30*4))@365 +
      (sext S5 301) * (2**(30*5))@365 +
      (sext S6 301) * (2**(30*6))@365 +
      (sext S7 301) * (2**(30*7))@365 +
      (sext S8 301) * (2**(30*8))@365 >s (-(2**(29)))@365,
      (sext S0 301) * (2**(30*0))@365 +
      (sext S1 301) * (2**(30*1))@365 +
      (sext S2 301) * (2**(30*2))@365 +
      (sext S3 301) * (2**(30*3))@365 +
      (sext S4 301) * (2**(30*4))@365 +
      (sext S5 301) * (2**(30*5))@365 +
      (sext S6 301) * (2**(30*6))@365 +
      (sext S7 301) * (2**(30*7))@365 +
      (sext S8 301) * (2**(30*8))@365 <s ((2**(255)) + (2**(29)))@365,

      (-(2**(29)))@64 <s V0, V0 <s (2**(30) + 2**(29))@64,
      0@64 <=u V1, V1 <u (2**(30))@64,
      0@64 <=u V2, V2 <u (2**(30))@64,
      0@64 <=u V3, V3 <u (2**(30))@64,
      0@64 <=u V4, V4 <u (2**(30))@64,
      0@64 <=u V5, V5 <u (2**(30))@64,
      0@64 <=u V6, V6 <u (2**(30))@64,
      0@64 <=u V7, V7 <u (2**(30))@64,
      0@64 <=u V8, V8 <u (2**(15))@64,
      (-(2**(29)))@64 <s S0, S0 <s (2**(30) + 2**(29))@64,
      0@64 <=u S1, S1 <u (2**(30))@64,
      0@64 <=u S2, S2 <u (2**(30))@64,
      0@64 <=u S3, S3 <u (2**(30))@64,
      0@64 <=u S4, S4 <u (2**(30))@64,
      0@64 <=u S5, S5 <u (2**(30))@64,
      0@64 <=u S6, S6 <u (2**(30))@64,
      0@64 <=u S7, S7 <u (2**(30))@64,
      0@64 <=u S8, S8 <u (2**(15))@64

                      ]
}

mov r10 u;
mov r11 v;

mov rsp_40  V0;
mov rsp_56  S0;
mov rsp_72  V1;
mov rsp_88  S1;
mov rsp_104 V2;
mov rsp_120 S2;
mov rsp_136 V3;
mov rsp_152 S3;
mov rsp_168 V4;
mov rsp_184 S4;
mov rsp_200 V5;
mov rsp_216 S5;
mov rsp_232 V6;
mov rsp_248 S6;
mov rsp_264 V7;
mov rsp_280 S7;
mov rsp_296 V8;
mov rsp_312 S8;


(* movq 296(%rsp),%rax *)
mov rax rsp_296;
(* imul %r10 *)
vpc rax@sint64 rax;
smull rdx rax r10 rax;
#assert limbs 64 [rax, rdx] = V8 * u && true;
(* mov  %rdx,%rdi *)
mov rdi rdx;
(* mov  %rax,%rsi *)
mov rsi rax;
(* movq 312(%rsp),%rax *)
mov rax rsp_312;
(* imul %r11 *)
vpc rax@sint64 rax;
smull rdx rax r11 rax;
#assert limbs 64 [rax, rdx] = S8 * v && true;
(* add  %rax,%rsi *)
adds carry rsi rax rsi;
(* adc %rdx,%rdi *)
adcs carry rdi rdx rdi carry;
#assert limbs 64 [rsi, rdi] = V8 * u + S8 * v && true;

mov high rdi;
mov low rsi;

(* shld $48,%rsi,%rdi *)
join tmp rdi rsi;
ssplit tmp dontcare tmp (64-48);
cast rdi@sint64 tmp;
(* shl  $48,%rsi *)
and rsi@uint64 rsi (2**(64-48)-1)@sint64;
shl rsi rsi 48;

assert true && (sext (slimbs 64 [rsi, rdi]) 64) = (sext (slimbs 64 [low, high]) 64) * (2**48)@192;
assume limbs 64 [rsi, rdi] = limbs 64 [low, high] * (2**48) && true;

#assert limbs 64 [rsi, rdi] = (V8 * u + S8 * v) * (2**48) && true;

(* movq 232(%rsp),%rax *)
mov rax rsp_232;
(* movq 264(%rsp),%rdx *)
mov rdx rsp_264;
(* shl  $30,%rdx *)
and rdx@uint64 rdx (2**(64-30)-1)@sint64;
shl rdx rdx 30;
(* add  %rdx,%rax *)
adds carry rax rdx rax;

assert true && rax = (V6 + V7 * (2**30)@64);
assume rax = V6 + V7 * (2**30) && true;

(* imul %r10 *)
vpc rax@sint64 rax;
smull rdx rax r10 rax;
(* mov  %rdx,%rcx *)
mov rcx rdx;
(* mov  %rax,%r8 *)
mov r8 rax;
(* movq 248(%rsp),%rax *)
mov rax rsp_248;
(* movq 280(%rsp),%rdx *)
mov rdx rsp_280;
(* shl  $30,%rdx *)
and rdx@uint64 rdx (2**(64-30)-1)@sint64;
shl rdx rdx 30;
(* add  %rdx,%rax *)
adds carry rax rdx rax;

assert true && rax = (S6 + S7 * (2**30)@64);
assume rax = S6 + S7 * (2**30) && true;

(* imul %r11 *)
vpc rax@sint64 rax;
smull rdx rax r11 rax;
(* add  %rax,%r8 *)
adds carry r8 rax r8;
(* adc %rdx,%rcx *)
adcs carry rcx rdx rcx carry;

mov low r8;
mov high rcx;

(* mov  %r8,%r9 *)
mov r9 r8;
(* shrd $12,%rcx,%r8 *)
join tmp rcx r8;
cast tmp@uint128 tmp;
usplit tmp dontcare tmp 12;
cast r8@uint64 tmp;

mov t1 r8;

(* shl  $52,%r9 *)
and r9@uint64 r9 (2**(64-52)-1)@sint64;
shl r9 r9 52;

mov a2 r9;

(* sar  $12,%rcx *)
ssplit rcx dontcare rcx 12;

mov t2 rcx;

assert true && slimbs 64 [a2, t1, t2] = (sext (limbs 64 [low, high]) 64) * (2**52)@192;
assume limbs 64 [a2, t1, t2] = limbs 64 [low, high] * (2**52) && true;

(* add  %r8,%rsi *)
adds carry rsi r8 rsi;
(* adc %rcx,%rdi *)
adcs carry rdi rcx rdi carry;

#assert limbs 64 [r9, rsi, rdi] = (V8 * u + S8 * v) * (2**112) + ((V6 + V7 * (2**30)) * u + (S6 + S7 * (2**30)) * v) * (2**52) && true;

(* movq 168(%rsp),%rax *)
mov rax rsp_168;
(* movq 200(%rsp),%rdx *)
mov rdx rsp_200;
(* shl  $30,%rdx *)
and rdx@uint64 rdx (2**(64-30)-1)@sint64;
shl rdx rdx 30;
(* add  %rdx,%rax *)
adds carry rax rdx rax;

assert true && rax = (V4 + V5 * (2**30)@64);
assume rax = V4 + V5 * (2**30) && true;

(* imul %r10 *)
vpc rax@sint64 rax;
smull rdx rax r10 rax;
(* mov  %rdx,%rcx *)
mov rcx rdx;
(* mov  %rax,%r8 *)
mov r8 rax;
(* movq 184(%rsp),%rax *)
mov rax rsp_184;
(* movq 216(%rsp),%rdx *)
mov rdx rsp_216;
(* shl  $30,%rdx *)
and rdx@uint64 rdx (2**(64-30)-1)@sint64;
shl rdx rdx 30;
(* add  %rdx,%rax *)
adds carry rax rdx rax;

assert true && rax = (S4 + S5 * (2**30)@64);
assume rax = S4 + S5 * (2**30) && true;

(* imul %r11 *)
vpc rax@sint64 rax;
smull rdx rax r11 rax;
(* add  %rax,%r8 *)
adds carry r8 rax r8;
(* adc %rdx,%rcx *)
adcs carry rcx rdx rcx carry;

mov low r8;
mov high rcx;

(* mov  %r8,%r12 *)
mov r12 r8;
(* shrd $8,%rcx,%r8 *)
join tmp rcx r8;
cast tmp@uint128 tmp;
usplit tmp dontcare tmp 8;
cast r8@uint64 tmp;
(* shl  $56,%r12 *)
and r12@uint64 r12 (2**(64-56)-1)@sint64;
shl r12 r12 56;
(* mov  %rcx,%rdx *)
mov rdx rcx;
(* sar  $8,%rcx *)
ssplit rcx dontcare rcx 8;
(* sar  $63,%rdx *)
ssplit rdx dontcare rdx 63;

cast rcx@uint64 rcx;
assert true && (sext (slimbs 64 [low, high]) 128) * (2**56)@256 = slimbs 64 [r12, r8, rcx, rdx];
assume limbs 64 [low, high] * (2**56) = limbs 64 [r12, r8, rcx, rdx] && true;

(* add  %r8,%r9 *)
adds carry r9 r8 r9;
(* adc %rcx,%rsi *)
adcs carry rsi rcx rsi carry;
(* adc %rdx,%rdi *)
adcs carry rdi rdx rdi carry;
(* movq 104(%rsp),%rax *)
mov rax rsp_104;
(* movq 136(%rsp),%rdx *)
mov rdx rsp_136;
(* shl  $30,%rdx *)
and rdx@uint64 rdx (2**(64-30)-1)@sint64;
shl rdx rdx 30;
(* add  %rdx,%rax *)
adds carry rax rdx rax;

assert true && rax = (V2 + V3 * (2**30)@64);
assume rax = V2 + V3 * (2**30) && true;

(* imul %r10 *)
vpc rax@sint64 rax;
smull rdx rax r10 rax;
(* mov  %rdx,%rcx *)
mov rcx rdx;
(* mov  %rax,%r8 *)
mov r8 rax;
(* movq 120(%rsp),%rax *)
mov rax rsp_120;
(* movq 152(%rsp),%rdx *)
mov rdx rsp_152;
(* shl  $30,%rdx *)
and rdx@uint64 rdx (2**(64-30)-1)@sint64;
shl rdx rdx 30;
(* add  %rdx,%rax *)
adds carry rax rdx rax;

assert true && rax = (S2 + S3 * (2**30)@64);
assume rax = S2 + S3 * (2**30) && true;

(* imul %r11 *)
vpc rax@sint64 rax;
smull rdx rax r11 rax;
(* add  %rax,%r8 *)
adds carry r8 rax r8;
(* adc %rdx,%rcx *)
adcs carry rcx rdx rcx carry;

mov low r8;
mov high rcx;

(* mov  %r8,%r13 *)
mov r13 r8;
(* shrd $4,%rcx,%r8 *)
join tmp rcx r8;
cast tmp@uint128 tmp;
usplit tmp dontcare tmp 4;
cast r8@uint64 tmp;
(* shl  $60,%r13 *)
and r13@uint64 r13 (2**(64-60)-1)@sint64;
shl r13 r13 60;
(* mov  %rcx,%rdx *)
mov rdx rcx;
(* sar  $4,%rcx *)
ssplit rcx dontcare rcx 4;
(* sar  $63,%rdx *)
ssplit rdx dontcare rdx 63;

cast rcx@uint64 rcx;
cast tmp@uint64 rdx;
assert true && (sext (slimbs 64 [low, high]) 192) * (2**60)@320 = slimbs 64 [r13, r8, rcx, tmp, rdx];
assume limbs 64 [low, high] * (2**60) = limbs 64 [r13, r8, rcx, tmp, rdx] && true;

(* add  %r8,%r12 *)
adds carry r12 r8 r12;
(* adc %rcx,%r9 *)
adcs carry r9 rcx r9 carry;
(* adc %rdx,%rsi *)
adcs carry rsi tmp rsi carry;
(* adc %rdx,%rdi *)
adcs carry rdi rdx rdi carry;
(* movq 40(%rsp),%rax *)
mov rax rsp_40;
(* movq 72(%rsp),%rdx *)
mov rdx rsp_72;
(* shl  $30,%rdx *)
and rdx@uint64 rdx (2**(64-30)-1)@sint64;
shl rdx rdx 30;
(* add  %rdx,%rax *)
vpc rdx@sint64 rdx;
adds carry rax rdx rax;

assert true && rax = (V0 + V1 * (2**30)@64);
assume rax = V0 + V1 * (2**30) && true;

(* imul %r10 *)
smull rdx rax r10 rax;
(* mov  %rdx,%rcx *)
mov rcx rdx;
(* mov  %rax,%r8 *)
mov r8 rax;
(* movq 56(%rsp),%rax *)
mov rax rsp_56;
(* movq 88(%rsp),%rdx *)
mov rdx rsp_88;
(* shl  $30,%rdx *)
and rdx@uint64 rdx (2**(64-30)-1)@sint64;
shl rdx rdx 30;
(* add  %rdx,%rax *)
vpc rdx@sint64 rdx;
adds carry rax rdx rax;

assert true && rax = (S0 + S1 * (2**30)@64);
assume rax = S0 + S1 * (2**30) && true;

(* imul %r11 *)
smull rdx rax r11 rax;
(* add  %rax,%r8 *)
adds carry r8 rax r8;
(* adc %rdx,%rcx *)
adcs carry rcx rdx rcx carry;

mov low r8;
mov high rcx;

(* mov  %rcx,%rdx *)
mov rdx rcx;
(* sar  $63,%rdx *)
ssplit rdx dontcare rdx 63;

cast rcx@uint64 rcx;
cast tmp@uint64 rdx;
assert true && (sext (slimbs 64 [low, high]) 192) = slimbs 64 [r8, rcx, tmp, tmp, rdx];
assume limbs 64 [low, high] = limbs 64 [r8, rcx, tmp, tmp, rdx] && true;

(* add  %r8,%r13 *)
adds carry r13 r8 r13;
(* adc %rcx,%r12 *)
adcs carry r12 rcx r12 carry;
(* adc %rdx,%r9 *)
adcs carry r9 tmp r9 carry;
(* adc %rdx,%rsi *)
adcs carry rsi tmp rsi carry;
(* adc %rdx,%rdi *)
adcs carry rdi rdx rdi carry;

mov q0 r13;
mov q1 r12;
mov q2 r9;
mov q3 rsi;
mov q4 rdi;

assert limbs 64 [q0, q1, q2, q3, q4] 
    = u *((V0 * (2**(30*0))) +
          (V1 * (2**(30*1))) +
          (V2 * (2**(30*2))) +
          (V3 * (2**(30*3))) +
          (V4 * (2**(30*4))) +
          (V5 * (2**(30*5))) +
          (V6 * (2**(30*6))) +
          (V7 * (2**(30*7))) +
          (V8 * (2**(30*8))))
    + v *((S0 * (2**(30*0))) +
          (S1 * (2**(30*1))) +
          (S2 * (2**(30*2))) +
          (S3 * (2**(30*3))) +
          (S4 * (2**(30*4))) +
          (S5 * (2**(30*5))) +
          (S6 * (2**(30*6))) +
          (S7 * (2**(30*7))) +
          (S8 * (2**(30*8))))
    && true;

(* btr  $63,%rsi *)
subb carry dontcare 0x7fffffffffffffff@uint64 rsi;
and rsi@uint64 rsi 0x7fffffffffffffff@uint64;
(* adc %rdi,%rdi *)
adcs carry rdi rdi rdi carry;

mov a3 rsi;
mov a4 rdi;

assert true && slimbs 64 [q0, q1, q2, q3, q4] = (sext (slimbs 64 [q0, q1, q2, a3]) 64) + (sext a4 256) * (2**255)@320;
assume limbs 64 [q0, q1, q2, q3, q4] = limbs 64 [q0, q1, q2, a3] + a4 * (2**255) && true;

(* mov  %rdi,%rcx *)
mov rcx rdi;
(* mov  $19,%rax *)
mov rax 19@sint64;
(* imul %rdi *)
smull rdx rax rdi rax;

cast rdx@uint64 rdx;
assert true && slimbs 64 [rax, rdx] = 19@128 * (sext a4 64);
assume limbs 64 [rax, rdx] = 19 * a4 && true;

(* sar  $63,%rcx *)
ssplit rcx dontcare rcx 63;

cast tmp@uint64 rcx;
mov low rax;
mov high rdx;

assert true && (sext (slimbs 64 [low, high]) 192) = slimbs 64 [rax, rdx, tmp, tmp, rcx];
assume limbs 64 [low, high] = limbs 64 [rax, rdx, tmp, tmp, rcx] && true;

(* xor  %rdi,%rdi *)
mov rdi 0@sint64;
(* add  %rax,%r13 *)
adds carry r13 rax r13;
(* adc %rdx,%r12 *)
adcs carry r12 rdx r12 carry;
(* adc %rcx,%r9 *)
adcs carry r9 tmp r9 carry;
(* adc %rcx,%rsi *)
adcs carry rsi tmp rsi carry;
(* adc %rcx,%rdi *)
adcs carry rdi rcx rdi carry;

mov p0 r13;
mov p1 r12;
mov p2 r9;
mov p3 rsi;
mov p4 rdi;

assert eqmod (limbs 64 [p0, p1, p2, p3, p4])
             (limbs 64 [q0, q1, q2, q3, q4])
             (2**(255)-19) && true;

(* btr  $63,%rsi *)
subb carry dontcare 0x7fffffffffffffff@uint64 rsi;
and rsi@uint64 rsi 0x7fffffffffffffff@uint64;
(* adc %rdi,%rdi *)
adcs carry rdi rdi rdi carry;

mov b3 rsi;
mov b4 rdi;

assert true && slimbs 64 [p0, p1, p2, p3, p4] = (sext (slimbs 64 [p0, p1, p2, b3]) 64) + (sext b4 256) * (2**255)@320;
assume limbs 64 [p0, p1, p2, p3, p4] = limbs 64 [p0, p1, p2, b3] + b4 * (2**255) && true;

(* mov  %rdi,%rcx *)
mov rcx rdi;
(* mov  $19,%rax *)
mov rax 19@sint64;
(* imul %rdi *)
smull rdx rax rdi rax;

cast rdx@uint64 rdx;
assert true && slimbs 64 [rax, rdx] = 19@128 * (sext b4 64);
assume limbs 64 [rax, rdx] = 19 * b4 && true;

(* sar  $63,%rcx *)
ssplit rcx dontcare rcx 63;

cast tmp@uint64 rcx;
mov low rax;
mov high rdx;

assert true && (sext (slimbs 64 [low, high]) 128) = slimbs 64 [rax, rdx, tmp, tmp];
assume limbs 64 [low, high] = limbs 64 [rax, rdx, tmp, tmp] && true;

mov t0 r13;
mov t1 r12;
mov t2 r9;
mov t3 rsi;

(* add  %rax,%r13 *)
adds carry r13 rax r13;
(* adc %rdx,%r12 *)
adcs carry r12 rdx r12 carry;
(* adc %rcx,%r9 *)
adcs carry r9 tmp r9 carry;
(* adc %rcx,%rsi *)
adcs carry rsi tmp rsi carry;

(* I think this is redundant *)
(* adc %rcx,%rdi *)
adcs carry rdi rcx rdi carry;

mov g0 r13;
mov g1 r12;
mov g2 r9;
mov g3 rsi;

assert true && (sext (slimbs 64 [t0, t1, t2, t3]) 64) + 19@320 * (sext b4 256) = (sext (slimbs 64 [g0, g1, g2, g3]) 64);
assume limbs 64 [t0, t1, t2, t3] + 19 * b4 = limbs 64 [g0, g1, g2, g3] && true;

assert eqmod (limbs 64 [p0, p1, p2, p3, p4])
             (limbs 64 [g0, g1, g2, g3])
             (2**(255)-19) && true;

(* xor  %rdi,%rdi *)
mov rdi 0@uint64;
(* mov  $-19,%rdx *)
mov rdx ((2**(64))-19)@uint64;
(* mov  $-1,%rcx *)
mov rcx ((2**(64))-1)@uint64;
(* mov  $9223372036854775807,%r8 *)
mov r8 9223372036854775807@uint64;
(* cmp  $0,%rsi *)
subb SFeOF dontcare rsi ((2**(64))-(2)**(63))@uint64;
(* cmovge %rdi,%rdx *)
cmov rdx SFeOF rdi rdx;
(* cmovge %rdi,%rcx *)
cmov rcx SFeOF rdi rcx;
(* cmovge %rdi,%r8 *)
cmov r8 SFeOF rdi r8;
(* add  %rdx,%r13 *)
adds carry r13 rdx r13;
(* adc %rcx,%r12 *)
adcs carry r12 rcx r12 carry;
(* adc %rcx,%r9 *)
adcs carry r9 rcx r9 carry;
(* adc %r8,%rsi *)
adcs carry rsi r8 rsi carry;
(* add  $19,%r13 *)
adds carry r13 19@uint64 r13;
(* adc $0,%r12 *)
adcs carry r12 0@uint64 r12 carry;
(* adc $0,%r9 *)
adcs carry r9 0@uint64 r9 carry;
(* adc $0,%rsi *)
adcs carry rsi 0@uint64 rsi carry;
(* mov  %rsi,%rdi *)
mov rdi rsi;
(* sar  $63,%rdi *)
cast rdi@sint64 rdi;
ssplit rdi dontcare rdi 63;
(* btr  $63,%rsi *)
subb carry dontcare 0x7fffffffffffffff@uint64 rsi;
and rsi@uint64 rsi 0x7fffffffffffffff@uint64;
(* and  $19,%rdi *)
and rdi@uint64 19@uint64 rdi;
(* add  %rdi,%r13 *)
adds carry r13 rdi r13;
(* adc $0,%r12 *)
adcs carry r12 0@uint64 r12 carry;
(* adc $0,%r9 *)
adcs carry r9 0@uint64 r9 carry;
(* adc $0,%rsi *)
adcs carry rsi 0@uint64 rsi carry;
(* sub  $19,%r13 *)
subb carry r13 r13 19@uint64;
(* sbb  $0,%r12 *)
sbbs carry r12 r12 0@uint64 carry;
(* sbb  $0,%r9 *)
sbbs carry r9 r9 0@uint64 carry;
(* sbb  $0,%rsi *)
sbbs carry rsi rsi 0@uint64 carry;
(* movq 672(%rsp),%rdi *)
(* pointer *)
(* movq   %r13,0(%rdi) *)
mov rdi_0 r13;
(* movq   %r12,8(%rdi) *)
mov rdi_8 r12;
(* movq   %r9,16(%rdi) *)
mov rdi_16 r9;
(* movq   %rsi,24(%rdi) *)
mov rdi_24 rsi;

mov c0 rdi_0;
mov c1 rdi_8;
mov c2 rdi_16;
mov c3 rdi_24;

assert true && eqmod (limbs 64 [c0, c1, c2, c3])
                     (slimbs 64 [g0, g1, g2, g3])
                     (2**(255)-19)@256;
assume eqmod (limbs 64 [c0, c1, c2, c3])
             (limbs 64 [g0, g1, g2, g3])
             (2**(255)-19) && true;
{
  and[eqmod
      
      (limbs 64 [c0, c1, c2, c3])
      
      (u *((V0 * (2**(30*0))) +
           (V1 * (2**(30*1))) +
           (V2 * (2**(30*2))) +
           (V3 * (2**(30*3))) +
           (V4 * (2**(30*4))) +
           (V5 * (2**(30*5))) +
           (V6 * (2**(30*6))) +
           (V7 * (2**(30*7))) +
           (V8 * (2**(30*8))))
     + v *((S0 * (2**(30*0))) +
           (S1 * (2**(30*1))) +
           (S2 * (2**(30*2))) +
           (S3 * (2**(30*3))) +
           (S4 * (2**(30*4))) +
           (S5 * (2**(30*5))) +
           (S6 * (2**(30*6))) +
           (S7 * (2**(30*7))) +
           (S8 * (2**(30*8)))))
       
      (2**(255)-19) 

      ]
  &&
  and[0@256 <=u limbs 64 [c0, c1, c2, c3],
      limbs 64 [c0, c1, c2, c3] <u (2**(255)-19)@256]
}

