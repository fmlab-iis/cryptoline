(* quine: -v -btor -isafety -qfbv_args '-SE minisat' poly1305_blocks_vpmadd52.cl
Parsing Cryptoline file:                [OK]            0.003589 seconds
Checking well-formedness:               [OK]            0.001192 seconds
Transforming to SSA form:               [OK]            0.000330 seconds
Rewriting assignments:                  [OK]            0.002241 seconds
Verifying program safety:               [OK]            1.840330 seconds
Verifying range assertions:             [OK]            1.158530 seconds
Verifying range specification:          [OK]            0.719759 seconds
Rewriting value-preserved casting:      [OK]            0.000822 seconds
Verifying algebraic assertions:         [OK]            0.063178 seconds
Verifying algebraic specification:      [OK]            0.052531 seconds
Verification result:                    [OK]            3.843465 seconds
*)

proc main (uint64 inp0, uint64 inp1,
           uint64 r0, uint64 r1, uint64 r2,
           uint64 s0, uint64 s1, uint64 s2,
           uint64 h0, uint64 h1, uint64 h2,
           uint64 padbit) =
{
  and [ s0 = r0 * 20, s1 = r1 * 20, s2 = r2 * 20 ]
&&
  and [
    (* precondition for normal inputs *)
    r0 <u (2**44)@64, r1 <u (2**44)@64, r2 <u (2**42)@64,
    r0 & (!0xffc0fffffff@64) = 0@64,
    r1 & (!0xfffffc0ffff@64) = 0@64,
    r2 & (!0x00ffffffc0f@64) = 0@64,
    s0 = r0 * 20@64, s1 = r1 * 20@64, s2 = r2 * 20@64,
    h0 <=u 0x3ffffffffffff@64, h1 <=u 0xfffffffffff@64, h2 <=u 0x3ffffffffff@64,
    padbit <u 2@64,
    or [ padbit = 1@64,
         inp1 & 0xff00000000000000@64 = 0x0100000000000000@64,
         inp1 & 0xffff000000000000@64 = 0x0001000000000000@64,
         inp1 & 0xffffff0000000000@64 = 0x0000010000000000@64,
         inp1 & 0xffffffff00000000@64 = 0x0000000100000000@64,
         inp1 & 0xffffffffff000000@64 = 0x0000000001000000@64,
         inp1 & 0xffffffffffff0000@64 = 0x0000000000010000@64,
         inp1 & 0xffffffffffffff00@64 = 0x0000000000000100@64,
         inp1 & 0xffffffffffffffff@64 = 0x0000000000000001@64,
         and [ inp1 = 0@64,
               inp0 & 0xff00000000000000@64 = 0x0100000000000000@64],
         and [ inp1 = 0@64,
               inp0 & 0xffff000000000000@64 = 0x0001000000000000@64],
         and [ inp1 = 0@64,
               inp0 & 0xffffff0000000000@64 = 0x0000010000000000@64],
         and [ inp1 = 0@64,
               inp0 & 0xffffffff00000000@64 = 0x0000000100000000@64],
         and [ inp1 = 0@64,
               inp0 & 0xffffffffff000000@64 = 0x0000000001000000@64],
         and [ inp1 = 0@64,
               inp0 & 0xffffffffffff0000@64 = 0x0000000000010000@64],
         and [ inp1 = 0@64,
               inp0 & 0xffffffffffffff00@64 = 0x0000000000000100@64]
       ]
    ]
}

mov L0x606080 inp0;
mov L0x606088 inp1;
mov L0x649020 s0;
mov L0x649028 s1;
mov L0x649030 s2;
mov L0x649038 r0;
mov L0x649040 r1;
mov L0x649048 r2;
mov L0x649010 h0;
mov L0x649018 h1;
mov L0x649020 h2;

(*
#.L2_44_inp_permd:
#.long	0,1,1,2,2,3,7,7
*)
mov L0x404200 0x00010000@uint64;
mov L0x404208 0x00020001@uint64;
mov L0x404210 0x00030002@uint64;
mov L0x404218 0x00070007@uint64;

(*
#.L2_44_inp_shift:
#.quad	0,12,24,64
*)
mov L0x404220 0@uint64;
mov L0x404228 12@uint64;
mov L0x404230 24@uint64;
mov L0x404238 64@uint64;

(*
#.L2_44_mask:
#.quad	0xfffffffffff,0xfffffffffff,0x3ffffffffff,0xffffffffffffffff
*)
mov L0x404240 0xfffffffffff@uint64;
mov L0x404248 0xfffffffffff@uint64;
mov L0x404250 0x3ffffffffff@uint64;
mov L0x404258 0xffffffffffffffff@uint64;

(*
#.L2_44_shift_rgt:
#.quad	44,44,42,64
*)
mov L0x404260 44@uint64;
mov L0x404268 44@uint64;
mov L0x404270 42@uint64;
mov L0x404278 64@uint64;

(*
#.L2_44_shift_lft:
#.quad	8,8,10,64
*)
mov L0x404280  8@uint64;
mov L0x404288  8@uint64;
mov L0x404290 10@uint64;
mov L0x404298 64@uint64;


mov rcx padbit;

(* #shr    $0x4,%rdx                                #! PC = 0x4206944 *)
#shr    $0x4,%%rdx                                #! 0x4206944 = 0x4206944;
(* #je     0x4032f9 <poly1305_blocks_vpmadd52+409> #! PC = 0x4206948 *)
#je     0x4032f9 <poly1305_blocks_vpmadd52+409> #! 0x4206948 = 0x4206948;
(* shl    $0x28,%rcx                               #! PC = 0x4206954 *)
shl rcx rcx 40;
(* #mov    0x40(%rdi),%r8                           #! EA = L0x649050; Value = 0xffffffffffffffff; PC = 0x4206958 *)
#mov    %%L0x649050,%%r8                           #! L0x649050 = L0x649050; 0xffffffffffffffff = 0xffffffffffffffff; 0x4206958 = 0x4206958;
(* #mov    $0x3,%rax                                #! PC = 0x4206962 *)
#mov    $0x3,%%rax                                #! 0x4206962 = 0x4206962;
(* #mov    $0x1,%r10                                #! PC = 0x4206969 *)
#mov    $0x1,%%r10                                #! 0x4206969 = 0x4206969;
(* #cmp    $0x4,%rdx                                #! PC = 0x4206976 *)
#cmp    $0x4,%%rdx                                #! 0x4206976 = 0x4206976;
(* #cmovae %r10,%rax                                #! PC = 0x4206980 *)
#cmovae %%r10,%%rax                                #! 0x4206980 = 0x4206980;
(* #test   %r8,%r8                                  #! PC = 0x4206984 *)
#test   %%r8,%%r8                                  #! 0x4206984 = 0x4206984;
(* #cmovns %r10,%rax                                #! PC = 0x4206987 *)
#cmovns %%r10,%%rax                                #! 0x4206987 = 0x4206987;
(* #and    %rdx,%rax                                #! PC = 0x4206991 *)
#and    %%rdx,%%rax                                #! 0x4206991 = 0x4206991;
(* #je     0x403312 <poly1305_blocks_vpmadd52_4x+18>#! PC = 0x4206994 *)
#je     0x403312 <poly1305_blocks_vpmadd52_4x+18>#! 0x4206994 = 0x4206994;
(* #sub    %rax,%rdx                                #! PC = 0x4207000 *)
#sub    %%rax,%%rdx                                #! 0x4207000 = 0x4207000;
(* #mov    $0x7,%r10d                               #! PC = 0x4207003 *)
#mov    $0x7,%%r10d                               #! 0x4207003 = 0x4207003;
(* #mov    $0x1,%r11d                               #! PC = 0x4207009 *)
#mov    $0x1,%%r11d                               #! 0x4207009 = 0x4207009;
(* #kmovw  %r10d,%k7                                #! PC = 0x4207015 *)
#kmovw  %%r10d,%k7                                #! 0x4207015 = 0x4207015;
(* #lea    0x104d(%rip),%r10        # 0x404200      #! PC = 0x4207020 *)
#lea    %%EA,%%r10        # 0x404200      #! 0x4207020 = 0x4207020;
(* #kmovw  %r11d,%k1                                #! PC = 0x4207027 *)
#kmovw  %%r11d,%k1                                #! 0x4207027 = 0x4207027;
(* vmovq  %rcx,%xmm21                              #! PC = 0x4207032 *)
mov ymm21_LL rcx;
mov ymm21_LH 0@uint64;
mov ymm21_HL 0@uint64;
mov ymm21_HH 0@uint64;
(* vmovdqa64 (%r10),%ymm19                         #! EA = L0x404200; Value = 0x0000000100000000; PC = 0x4207038 *)
mov ymm19_LL L0x404200;
mov ymm19_LH L0x404208;
mov ymm19_HL L0x404210;
mov ymm19_HH L0x404218;
(* vmovdqa64 0x20(%r10),%ymm20                     #! EA = L0x404220; Value = 0x0000000000000000; PC = 0x4207044 *)
mov ymm20_LL L0x404220;
mov ymm20_LH L0x404228;
mov ymm20_HL L0x404230;
mov ymm20_HH L0x404238;
(* vpermq $0xcf,%ymm21,%ymm21                      #! PC = 0x4207051 *)
mov ymm21_ll ymm21_HH;
mov ymm21_lh ymm21_HH;
mov ymm21_hl ymm21_LL;
mov ymm21_hh ymm21_HH;
mov ymm21_LL ymm21_ll;
mov ymm21_LH ymm21_lh;
mov ymm21_HL ymm21_hl;
mov ymm21_HH ymm21_hh;
(* vmovdqa64 0x40(%r10),%ymm22                     #! EA = L0x404240; Value = 0x00000fffffffffff; PC = 0x4207058 *)
mov ymm22_LL L0x404240;
mov ymm22_LH L0x404248;
mov ymm22_HL L0x404250;
mov ymm22_HH L0x404258;
(* vmovdqu64 (%rdi),%ymm16{%k7}{z}                 #! EA = L0x649010; Value = 0x0000000000000000; PC = 0x4207065 *)
mov ymm16_LL L0x649010;
mov ymm16_LH L0x649018;
mov ymm16_HL L0x649020;
mov ymm16_HH 0@uint64;
(* vmovdqu64 0x28(%rdi),%ymm3{%k7}{z}              #! EA = L0x649038; Value = 0x00000aa80ccddeef; PC = 0x4207071 *)
mov ymm3_LL L0x649038;
mov ymm3_LH L0x649040;
mov ymm3_HL L0x649048;
mov ymm3_HH 0@uint64;
(* vmovdqu64 0x20(%rdi),%ymm4{%k7}{z}              #! EA = L0x649030; Value = 0x000000aa953fd050; PC = 0x4207081 *)
mov ymm4_LL L0x649030;
mov ymm4_LH L0x649038;
mov ymm4_HL L0x649040;
mov ymm4_HH 0@uint64;
(* vmovdqu64 0x18(%rdi),%ymm5{%k7}{z}              #! EA = L0x649028; Value = 0x000053fea80aabf4; PC = 0x4207088 *)
mov ymm5_LL L0x649028;
mov ymm5_LH L0x649030;
mov ymm5_HL L0x649038;
mov ymm5_HH 0@uint64;
(* vmovdqa64 0x60(%r10),%ymm23                     #! EA = L0x404260; Value = 0x000000000000002c; PC = 0x4207098 *)
mov ymm23_LL L0x404260;
mov ymm23_LH L0x404268;
mov ymm23_HL L0x404270;
mov ymm23_HH L0x404278;
(* vmovdqa64 0x80(%r10),%ymm24                     #! EA = L0x404280; Value = 0x0000000000000008; PC = 0x4207105 *)
mov ymm24_LL L0x404280;
mov ymm24_LH L0x404288;
mov ymm24_HL L0x404290;
mov ymm24_HH L0x404298;
(* #jmp    0x403220 <poly1305_blocks_vpmadd52+192> #! PC = 0x4207112 *)
#jmp    0x403220 <poly1305_blocks_vpmadd52+192> #! 0x4207112 = 0x4207112;
(* vmovdqu32 (%rsi),%xmm18                         #! EA = L0x606080; Value = 0x8978675645342312; PC = 0x4207136 *)
mov ymm18_LL L0x606080;
mov ymm18_LH L0x606088;
nondet ymm18_HL@uint64;
nondet ymm18_HH@uint64;
(* #lea    0x10(%rsi),%rsi                          #! PC = 0x4207142 *)
#lea    0x10%%EA,%rsi                          #! 0x4207142 = 0x4207142;
(* vpermd %ymm18,%ymm19,%ymm18                     #! PC = 0x4207146 *)
assert true && and [ymm19_LL = 0x10000@64, ymm19_LH = 0x20001@64, ymm19_HL = 0x30002@64, ymm19_HH = 0x70007@64];
usplit ymm18_1 ymm18_0 ymm18_LL 32;
usplit ymm18_3 ymm18_2 ymm18_LH 32;
usplit ymm18_7 ymm18_6 ymm18_HH 32;
mov ymm18_LL ymm18_LL;
shl ymm18_2h ymm18_2 32;
uadd ymm18_LH ymm18_2h ymm18_1;
shl ymm18_3h ymm18_3 32;
uadd ymm18_HL ymm18_3h ymm18_2;
shl ymm18_7h ymm18_7 32;
uadd ymm18_HH ymm18_7h ymm18_7;
(* vpsrlvq %ymm20,%ymm18,%ymm18                    #! PC = 0x4207152 *)
assert true && and [ymm20_LL = 0@64, ymm20_LH = 12@64, ymm20_HL = 24@64, ymm20_HH = 64@64];
mov ymm18_LL ymm18_LL;
usplit ymm18_LH srdc12 ymm18_LH 12;
usplit ymm18_HL srdc24 ymm18_HL 24;
mov ymm18_HH 0@uint64;
(* vpandq %ymm22,%ymm18,%ymm18                     #! PC = 0x4207158 *)
and ymm18_LL@uint64 ymm22_LL ymm18_LL;
and ymm18_LH@uint64 ymm22_LH ymm18_LH;
and ymm18_HL@uint64 ymm22_HL ymm18_HL;
and ymm18_HH@uint64 ymm22_HH ymm18_HH;
(* vporq  %ymm21,%ymm18,%ymm18                     #! PC = 0x4207164 *)
or ymm18_LL@uint64 ymm21_LL ymm18_LL;
or ymm18_LH@uint64 ymm21_LH ymm18_LH;
or ymm18_HL@uint64 ymm21_HL ymm18_HL;
or ymm18_HH@uint64 ymm21_HH ymm18_HH;

(* NOTE: summary of splitting inputs *)
assert true &&
       limbs 64 [ymm18_LL, 0@64, 0@64] +
       limbs 64 [ymm18_LH, 0@64, 0@64] * (2**44)@192 +
       limbs 64 [ymm18_HL, 0@64, 0@64] * (2**88)@192 =
       limbs 64 [inp0, inp1, padbit];
assume limbs 44 [ymm18_LL, ymm18_LH, ymm18_HL] = limbs 64 [inp0, inp1, padbit]
    && true;

(* vpaddq %ymm18,%ymm16,%ymm16                     #! PC = 0x4207170 *)
uadd ymm16_LL ymm18_LL ymm16_LL;
uadd ymm16_LH ymm18_LH ymm16_LH;
uadd ymm16_HL ymm18_HL ymm16_HL;
uadd ymm16_HH ymm18_HH ymm16_HH;
(* vpermq $0x0,%ymm16,%ymm0{%k7}{z}                #! PC = 0x4207176 *)
mov ymm0_LL ymm16_LL;
mov ymm0_LH ymm16_LL;
mov ymm0_HL ymm16_LL;
mov ymm0_HH 0@uint64;
(* vpermq $0x55,%ymm16,%ymm1{%k7}{z}               #! PC = 0x4207183 *)
mov ymm1_LL ymm16_LH;
mov ymm1_LH ymm16_LH;
mov ymm1_HL ymm16_LH;
mov ymm1_HH 0@uint64;
(* vpermq $0xaa,%ymm16,%ymm2{%k7}{z}               #! PC = 0x4207190 *)
mov ymm2_LL ymm16_HL;
mov ymm2_LH ymm16_HL;
mov ymm2_HL ymm16_HL;
mov ymm2_HH 0@uint64;

assert limbs 44 [ymm0_LL, ymm1_LL, ymm2_LL] =
       limbs 64 [inp0, inp1, padbit] + limbs 44 [h0, h1, h2] && true;
assume  limbs 44 [ymm0_LL, ymm1_LL, ymm2_LL] =
       limbs 64 [inp0, inp1, padbit] + limbs 44 [h0, h1, h2] && true;
assert limbs 44 [ymm0_LH, ymm1_LH, ymm2_LH] =
       limbs 64 [inp0, inp1, padbit] + limbs 44 [h0, h1, h2] && true;
assume  limbs 44 [ymm0_LH, ymm1_LH, ymm2_LH] =
       limbs 64 [inp0, inp1, padbit] + limbs 44 [h0, h1, h2] && true;
assert limbs 44 [ymm0_HL, ymm1_HL, ymm2_HL] =
       limbs 64 [inp0, inp1, padbit] + limbs 44 [h0, h1, h2] && true;
assume  limbs 44 [ymm0_HL, ymm1_HL, ymm2_HL] =
       limbs 64 [inp0, inp1, padbit] + limbs 44 [h0, h1, h2] && true;

(* vpxord %ymm16,%ymm16,%ymm16                     #! PC = 0x4207197 *)
mov ymm16_LL 0@uint64;
mov ymm16_LH 0@uint64;
mov ymm16_HL 0@uint64;
mov ymm16_HH 0@uint64;
(* vpxord %ymm17,%ymm17,%ymm17                     #! PC = 0x4207203 *)
mov ymm17_LL 0@uint64;
mov ymm17_LH 0@uint64;
mov ymm17_HL 0@uint64;
mov ymm17_HH 0@uint64;
(* vpmadd52luq %ymm3,%ymm0,%ymm16                  #! PC = 0x4207209 *)
usplit ymm3_LLh ymm3_LLl ymm3_LL 52;
assert true && ymm3_LLh = 0@64;
assume ymm3_LLh = 0 && true;
usplit ymm0_LLh ymm0_LLl ymm0_LL 52;
assert true && ymm0_LLh = 0@64;
assume ymm0_LLh = 0 && true;
umulj prodLL ymm3_LLl ymm0_LLl;
usplit prodLLh prodLLl prodLL 52;
vpc prodLLh@uint64 prodLLh;
vpc prodLLl@uint64 prodLLl;
uadd ymm16_LL ymm16_LL prodLLl;
usplit ymm3_LHh ymm3_LHl ymm3_LH 52;
assert true && ymm3_LHh = 0@64;
assume ymm3_LHh = 0 && true;
usplit ymm0_LHh ymm0_LHl ymm0_LH 52;
assert true && ymm0_LHh = 0@64;
assume ymm0_LHh = 0 && true;
umulj prodLH ymm3_LHl ymm0_LHl;
usplit prodLHh prodLHl prodLH 52;
vpc prodLHh@uint64 prodLHh;
vpc prodLHl@uint64 prodLHl;
uadd ymm16_LH ymm16_LH prodLHl;
usplit ymm3_HLh ymm3_HLl ymm3_HL 52;
assert true && ymm3_HLh = 0@64;
assume ymm3_HLh = 0 && true;
usplit ymm0_HLh ymm0_HLl ymm0_HL 52;
assert true && ymm0_HLh = 0@64;
assume ymm0_HLh = 0 && true;
umulj prodHL ymm3_HLl ymm0_HLl;
usplit prodHLh prodHLl prodHL 52;
vpc prodHLh@uint64 prodHLh;
vpc prodHLl@uint64 prodHLl;
uadd ymm16_HL ymm16_HL prodHLl;
usplit ymm3_HHh ymm3_HHl ymm3_HH 52;
assert true && ymm3_HHh = 0@64;
assume ymm3_HHh = 0 && true;
usplit ymm0_HHh ymm0_HHl ymm0_HH 52;
assert true && ymm0_HHh = 0@64;
assume ymm0_HHh = 0 && true;
umulj prodHH ymm3_HHl ymm0_HHl;
usplit prodHHh prodHHl prodHH 52;
vpc prodHHh@uint64 prodHHh;
vpc prodHHl@uint64 prodHHl;
uadd ymm16_HH ymm16_HH prodHHl;
(* vpmadd52huq %ymm3,%ymm0,%ymm17                  #! PC = 0x4207215 *)
uadd ymm17_LL ymm17_LL prodLLh;
uadd ymm17_LH ymm17_LH prodLHh;
uadd ymm17_HL ymm17_HL prodHLh;
uadd ymm17_HH ymm17_HH prodHHh;

(* NOTE: summary of 52-bit full multiplications *)
(*
assert true
    && limbs 64 [ymm16_LL, 0@64] + limbs 64 [ymm17_LL, 0@64] * (2**52)@128 =
       limbs 64  [ymm3_LL, 0@64] * limbs 64 [ymm0_LL, 0@64];
assume limbs 52 [ymm16_LL, ymm17_LL] = ymm3_LL * ymm0_LL && true;
assert true
    && limbs 64 [ymm16_LH, 0@64] + limbs 64 [ymm17_LH, 0@64] * (2**52)@128 =
       limbs 64  [ymm3_LH, 0@64] * limbs 64 [ymm0_LH, 0@64];
assume limbs 52 [ymm16_LH, ymm17_LH] = ymm3_LH * ymm0_LH && true;
assert true
    && limbs 64 [ymm16_HL, 0@64] + limbs 64 [ymm17_HL, 0@64] * (2**52)@128 =
       limbs 64  [ymm3_HL, 0@64] * limbs 64 [ymm0_HL, 0@64];
assume limbs 52 [ymm16_HL, ymm17_HL] = ymm3_HL * ymm0_HL && true;
assert true
    && limbs 64 [ymm16_HH, 0@64] + limbs 64 [ymm17_HH, 0@64] * (2**52)@128 =
       limbs 64  [ymm3_HH, 0@64] * limbs 64 [ymm0_HH, 0@64];
assume limbs 52 [ymm16_HH, ymm17_HH] = ymm3_HH * ymm0_HH && true;
*)

(* vpmadd52luq %ymm4,%ymm1,%ymm16                  #! PC = 0x4207221 *)
usplit ymm4_LLh ymm4_LLl ymm4_LL 52;
assert true && ymm4_LLh = 0@64;
assume ymm4_LLh = 0 && true;
usplit ymm1_LLh ymm1_LLl ymm1_LL 52;
assert true && ymm1_LLh = 0@64;
assume ymm1_LLh = 0 && true;
umulj prodLL ymm4_LLl ymm1_LLl;
usplit prodLLh prodLLl prodLL 52;
vpc prodLLh@uint64 prodLLh;
vpc prodLLl@uint64 prodLLl;
uadd ymm16_LL ymm16_LL prodLLl;
usplit ymm4_LHh ymm4_LHl ymm4_LH 52;
assert true && ymm4_LHh = 0@64;
assume ymm4_LHh = 0 && true;
usplit ymm1_LHh ymm1_LHl ymm1_LH 52;
assert true && ymm1_LHh = 0@64;
assume ymm1_LHh = 0 && true;
umulj prodLH ymm4_LHl ymm1_LHl;
usplit prodLHh prodLHl prodLH 52;
vpc prodLHh@uint64 prodLHh;
vpc prodLHl@uint64 prodLHl;
uadd ymm16_LH ymm16_LH prodLHl;
usplit ymm4_HLh ymm4_HLl ymm4_HL 52;
assert true && ymm4_HLh = 0@64;
assume ymm4_HLh = 0 && true;
usplit ymm1_HLh ymm1_HLl ymm1_HL 52;
assert true && ymm1_HLh = 0@64;
assume ymm1_HLh = 0 && true;
umulj prodHL ymm4_HLl ymm1_HLl;
usplit prodHLh prodHLl prodHL 52;
vpc prodHLh@uint64 prodHLh;
vpc prodHLl@uint64 prodHLl;
uadd ymm16_HL ymm16_HL prodHLl;
usplit ymm4_HHh ymm4_HHl ymm4_HH 52;
assert true && ymm4_HHh = 0@64;
assume ymm4_HHh = 0 && true;
usplit ymm1_HHh ymm1_HHl ymm1_HH 52;
assert true && ymm1_HHh = 0@64;
assume ymm1_HHh = 0 && true;
umulj prodHH ymm4_HHl ymm1_HHl;
usplit prodHHh prodHHl prodHH 52;
vpc prodHHh@uint64 prodHHh;
vpc prodHHl@uint64 prodHHl;
uadd ymm16_HH ymm16_HH prodHHl;
(* vpmadd52huq %ymm4,%ymm1,%ymm17                  #! PC = 0x4207227 *)
uadd ymm17_LL ymm17_LL prodLLh;
uadd ymm17_LH ymm17_LH prodLHh;
uadd ymm17_HL ymm17_HL prodHLh;
uadd ymm17_HH ymm17_HH prodHHh;

(* NOTE: summary of 52-bit full multiplications *)
(*
assert true
    && limbs 64 [ymm16_LL, 0@64] + limbs 64 [ymm17_LL, 0@64] * (2**52)@128 =
       limbs 64  [ymm3_LL, 0@64] * limbs 64 [ymm0_LL, 0@64] +
       limbs 64  [ymm4_LL, 0@64] * limbs 64 [ymm1_LL, 0@64];
assume limbs 52 [ymm16_LL, ymm17_LL] =
       ymm3_LL * ymm0_LL + ymm4_LL * ymm1_LL
    && true;
assert true
    && limbs 64 [ymm16_LH, 0@64] + limbs 64 [ymm17_LH, 0@64] * (2**52)@128 =
       limbs 64  [ymm3_LH, 0@64] * limbs 64 [ymm0_LH, 0@64] +
       limbs 64  [ymm4_LH, 0@64] * limbs 64 [ymm1_LH, 0@64];
assume limbs 52 [ymm16_LH, ymm17_LH] =
       ymm3_LH * ymm0_LH + ymm4_LH * ymm1_LH
    && true;
assert true
    && limbs 64 [ymm16_HL, 0@64] + limbs 64 [ymm17_HL, 0@64] * (2**52)@128 =
       limbs 64  [ymm3_HL, 0@64] * limbs 64 [ymm0_HL, 0@64] +
       limbs 64  [ymm4_HL, 0@64] * limbs 64 [ymm1_HL, 0@64];
assume limbs 52 [ymm16_HL, ymm17_HL] =
       ymm3_HL * ymm0_HL + ymm4_HL * ymm1_HL
    && true;
assert true
    && limbs 64 [ymm16_HH, 0@64] + limbs 64 [ymm17_HH, 0@64] * (2**52)@128 =
       limbs 64  [ymm3_HH, 0@64] * limbs 64 [ymm0_HH, 0@64] +
       limbs 64  [ymm4_HH, 0@64] * limbs 64 [ymm1_HH, 0@64];
assume limbs 52 [ymm16_HH, ymm17_HH] =
       ymm3_HH * ymm0_HH + ymm4_HH * ymm1_HH
    && true;
*)
(* vpmadd52luq %ymm5,%ymm2,%ymm16                  #! PC = 0x4207233 *)
usplit ymm5_LLh ymm5_LLl ymm5_LL 52;
assert true && ymm5_LLh = 0@64;
assume ymm5_LLh = 0 && true;
usplit ymm2_LLh ymm2_LLl ymm2_LL 52;
assert true && ymm2_LLh = 0@64;
assume ymm2_LLh = 0 && true;
umulj prodLL ymm5_LLl ymm2_LLl;
usplit prodLLh prodLLl prodLL 52;
vpc prodLLh@uint64 prodLLh;
vpc prodLLl@uint64 prodLLl;
uadd ymm16_LL ymm16_LL prodLLl;
usplit ymm5_LHh ymm5_LHl ymm5_LH 52;
assert true && ymm5_LHh = 0@64;
assume ymm5_LHh = 0 && true;
usplit ymm2_LHh ymm2_LHl ymm2_LH 52;
assert true && ymm2_LHh = 0@64;
assume ymm2_LHh = 0 && true;
umulj prodLH ymm5_LHl ymm2_LHl;
usplit prodLHh prodLHl prodLH 52;
vpc prodLHh@uint64 prodLHh;
vpc prodLHl@uint64 prodLHl;
uadd ymm16_LH ymm16_LH prodLHl;
usplit ymm5_HLh ymm5_HLl ymm5_HL 52;
assert true && ymm5_HLh = 0@64;
assume ymm5_HLh = 0 && true;
usplit ymm2_HLh ymm2_HLl ymm2_HL 52;
assert true && ymm2_HLh = 0@64;
assume ymm2_HLh = 0 && true;
umulj prodHL ymm5_HLl ymm2_HLl;
usplit prodHLh prodHLl prodHL 52;
vpc prodHLh@uint64 prodHLh;
vpc prodHLl@uint64 prodHLl;
uadd ymm16_HL ymm16_HL prodHLl;
usplit ymm5_HHh ymm5_HHl ymm5_HH 52;
assert true && ymm5_HHh = 0@64;
assume ymm5_HHh = 0 && true;
usplit ymm2_HHh ymm2_HHl ymm2_HH 52;
assert true && ymm2_HHh = 0@64;
assume ymm2_HHh = 0 && true;
umulj prodHH ymm5_HHl ymm2_HHl;
usplit prodHHh prodHHl prodHH 52;
vpc prodHHh@uint64 prodHHh;
vpc prodHHl@uint64 prodHHl;
uadd ymm16_HH ymm16_HH prodHHl;
(* vpmadd52huq %ymm5,%ymm2,%ymm17                  #! PC = 0x4207239 *)
uadd ymm17_LL ymm17_LL prodLLh;
uadd ymm17_LH ymm17_LH prodLHh;
uadd ymm17_HL ymm17_HL prodHLh;
uadd ymm17_HH ymm17_HH prodHHh;

(* NOTE: summary of 52-bit full multiplications *)
(*
assert true
    && limbs 64 [ymm16_LL, 0@64] + limbs 64 [ymm17_LL, 0@64] * (2**52)@128 =
       limbs 64  [ymm3_LL, 0@64] * limbs 64 [ymm0_LL, 0@64] +
       limbs 64  [ymm4_LL, 0@64] * limbs 64 [ymm1_LL, 0@64] +
       limbs 64  [ymm5_LL, 0@64] * limbs 64 [ymm2_LL, 0@64];
assume limbs 52 [ymm16_LL, ymm17_LL] =
       ymm3_LL * ymm0_LL + ymm4_LL * ymm1_LL + ymm5_LL * ymm2_LL
    && true;
assert true
    && limbs 64 [ymm16_LH, 0@64] + limbs 64 [ymm17_LH, 0@64] * (2**52)@128 =
       limbs 64  [ymm3_LH, 0@64] * limbs 64 [ymm0_LH, 0@64] +
       limbs 64  [ymm4_LH, 0@64] * limbs 64 [ymm1_LH, 0@64] +
       limbs 64  [ymm5_LH, 0@64] * limbs 64 [ymm2_LH, 0@64];
assume limbs 52 [ymm16_LH, ymm17_LH] =
       ymm3_LH * ymm0_LH + ymm4_LH * ymm1_LH + ymm5_LH * ymm2_LH
    && true;
assert true
    && limbs 64 [ymm16_HL, 0@64] + limbs 64 [ymm17_HL, 0@64] * (2**52)@128 =
       limbs 64  [ymm3_HL, 0@64] * limbs 64 [ymm0_HL, 0@64] +
       limbs 64  [ymm4_HL, 0@64] * limbs 64 [ymm1_HL, 0@64] +
       limbs 64  [ymm5_HL, 0@64] * limbs 64 [ymm2_HL, 0@64];
assume limbs 52 [ymm16_HL, ymm17_HL] =
       ymm3_HL * ymm0_HL + ymm4_HL * ymm1_HL + ymm5_HL * ymm2_HL
    && true;
assert true
    && limbs 64 [ymm16_HH, 0@64] + limbs 64 [ymm17_HH, 0@64] * (2**52)@128 =
       limbs 64  [ymm3_HH, 0@64] * limbs 64 [ymm0_HH, 0@64] +
       limbs 64  [ymm4_HH, 0@64] * limbs 64 [ymm1_HH, 0@64] +
       limbs 64  [ymm5_HH, 0@64] * limbs 64 [ymm2_HH, 0@64];
assume limbs 52 [ymm16_HH, ymm17_HH] =
       ymm3_HH * ymm0_HH + ymm4_HH * ymm1_HH + ymm5_HH * ymm2_HH
    && true;
*)
(* NOTE: save ymm16, ymm17 in ymm16_52, ymm17_52 *)

ghost ymm16_LL52@uint64, ymm16_LH52@uint64,
      ymm16_HL52@uint64, ymm16_HH52@uint64, 
      ymm17_LL52@uint64, ymm17_LH52@uint64,
      ymm17_HL52@uint64, ymm17_HH52@uint64 :
      true
   && and [ ymm16_LL52 = ymm16_LL, ymm16_LH52 = ymm16_LH,
            ymm16_HL52 = ymm16_HL, ymm16_HH52 = ymm16_HH,
            ymm17_LL52 = ymm17_LL, ymm17_LH52 = ymm17_LH,
            ymm17_HL52 = ymm17_HL, ymm17_HH52 = ymm17_HH ];

(* vpsrlvq %ymm23,%ymm16,%ymm18                    #! PC = 0x4207245 *)
assert true && and [ymm23_LL = 44@64, ymm23_LH = 44@64, ymm23_HL = 42@64, ymm23_HH = 64@64];
usplit ymm18_LL srdc440 ymm16_LL 44;
usplit ymm18_LH srdc441 ymm16_LH 44;
usplit ymm18_HL srdc42 ymm16_HL 42;
mov ymm18_HH 0@uint64;
(* vpsllvq %ymm24,%ymm17,%ymm17                    #! PC = 0x4207251 *)
assert true && and [ymm24_LL = 8@64, ymm24_LH = 8@64, ymm24_HL = 10@64, ymm24_HH = 64@64];
usplit slldc80 ymm17_LL ymm17_LL 56;
assert true && slldc80 = 0@64;
assume slldc80 = 0 && true;
shl ymm17_LL ymm17_LL 8;
usplit slldc81 ymm17_LH ymm17_LH 56;
assert true && slldc81 = 0@64;
assume slldc81 = 0 && true;
shl ymm17_LH ymm17_LH 8;
usplit slldc10 ymm17_HL ymm17_HL 54;
assert true && slldc10 = 0@64;
assume slldc10 = 0 && true;
shl ymm17_HL ymm17_HL 10;
mov ymm17_HH 0@uint64;
(* vpandq %ymm22,%ymm16,%ymm16                     #! PC = 0x4207257 *)
(* NOTE: use split for bit masks *)
usplit dc ymm16_LL ymm16_LL 44;
assert true && dc = ymm18_LL;
assume dc = ymm18_LL && true;
usplit dc ymm16_LH ymm16_LH 44;
assert true && dc = ymm18_LH;
assume dc = ymm18_LH && true;
usplit dc ymm16_HL ymm16_HL 42;
assert true && dc = ymm18_HL;
assume dc = ymm18_HL && true;
(* vpaddq %ymm18,%ymm17,%ymm17                     #! PC = 0x4207263 *)
uadd ymm17_LL ymm18_LL ymm17_LL;
uadd ymm17_LH ymm18_LH ymm17_LH;
uadd ymm17_HL ymm18_HL ymm17_HL;
uadd ymm17_HH ymm18_HH ymm17_HH;

(* NOTE: summary of radix 52 to radix 44 conversion *)
assert true &&
       limbs 64 [ymm16_LL, 0@64] + limbs 64 [ymm17_LL, 0@64] * (2**44)@128 =
       limbs 64 [ymm16_LL52, 0@64] + limbs 64 [ymm17_LL52, 0@64] * (2**52)@128;
assume limbs 44 [ymm16_LL, ymm17_LL] = limbs 52 [ymm16_LL52, ymm17_LL52]
    && true;
assert true &&
       limbs 64 [ymm16_LH, 0@64] + limbs 64 [ymm17_LH, 0@64] * (2**44)@128 =
       limbs 64 [ymm16_LH52, 0@64] + limbs 64 [ymm17_LH52, 0@64] * (2**52)@128;
assume limbs 44 [ymm16_LH, ymm17_LH] = limbs 52 [ymm16_LH52, ymm17_LH52]
    && true;
assert true &&
       limbs 64 [ymm16_HL, 0@64] + limbs 64 [ymm17_HL, 0@64] * (2**42)@128 =
       limbs 64 [ymm16_HL52, 0@64] + limbs 64 [ymm17_HL52, 0@64] * (2**52)@128;
assume limbs 44 [ymm16_HL, ymm17_HL] = limbs 52 [ymm16_HL52, ymm17_HL52]
    && true;
assert true && and [ymm16_HH = 0@64, ymm17_HH = 0@64];
assume and [ymm16_HH = 0, ymm17_HH = 0] && true;

(* vpermq $0x93,%ymm17,%ymm17                      #! PC = 0x4207269 *)
mov ymm17_ll ymm17_HH;
mov ymm17_lh ymm17_LL;
mov ymm17_hl ymm17_LH;
mov ymm17_hh ymm17_HL;
mov ymm17_LL ymm17_ll;
mov ymm17_LH ymm17_lh;
mov ymm17_HL ymm17_hl;
mov ymm17_HH ymm17_hh;
(* vpaddq %ymm17,%ymm16,%ymm16                     #! PC = 0x4207276 *)
uadd ymm16_LL ymm17_LL ymm16_LL;
uadd ymm16_LH ymm17_LH ymm16_LH;
uadd ymm16_HL ymm17_HL ymm16_HL;
uadd ymm16_HH ymm17_HH ymm16_HH;

(* NOTE: radix 44 for ymm16 *)
(*
assert limbs 44 [ymm16_LL, ymm16_LH, ymm16_HL, ymm16_HH] =
       limbs 52 [ymm16_LL52, ymm17_LL52] +
       limbs 52 [ymm16_LH52, ymm17_LH52] * 2**44 +
       limbs 52 [ymm16_HL52, ymm17_HL52] * 2**88 && true;
assume limbs 44 [ymm16_LL, ymm16_LH, ymm16_HL, ymm16_HH] =
       limbs 52 [ymm16_LL52, ymm17_LL52] +
       limbs 52 [ymm16_LH52, ymm17_LH52] * 2**44 +
       limbs 52 [ymm16_HL52, ymm17_HL52] * 2**88 && true;
*)

(* vpsrlvq %ymm23,%ymm16,%ymm18                    #! PC = 0x4207282 *)
assert true && and [ymm23_LL = 44@64, ymm23_LH = 44@64, ymm23_HL = 42@64, ymm23_HH = 64@64];
usplit ymm18_LL srdc440 ymm16_LL 44;
usplit ymm18_LH srdc441 ymm16_LH 44;
usplit ymm18_HL srdc42 ymm16_HL 42;
mov ymm18_HH 0@uint64;
(* vpandq %ymm22,%ymm16,%ymm16                     #! PC = 0x4207288 *)
(* NOTE: use split for bit masks *)
usplit dc ymm16_LL ymm16_LL 44;
assert true && dc = ymm18_LL;
assume dc = ymm18_LL && true;
usplit dc ymm16_LH ymm16_LH 44;
assert true && dc = ymm18_LH;
assume dc = ymm18_LH && true;
usplit dc ymm16_HL ymm16_HL 42;
assert true && dc = ymm18_HL;
assume dc = ymm18_HL && true;
(* vpermq $0x93,%ymm18,%ymm18                      #! PC = 0x4207294 *)
mov ymm18_ll ymm18_HH;
mov ymm18_lh ymm18_LL;
mov ymm18_hl ymm18_LH;
mov ymm18_hh ymm18_HL;
mov ymm18_LL ymm18_ll;
mov ymm18_LH ymm18_lh;
mov ymm18_HL ymm18_hl;
mov ymm18_HH ymm18_hh;
(* vpaddq %ymm18,%ymm16,%ymm16                     #! PC = 0x4207301 *)
uadd ymm16_LL ymm18_LL ymm16_LL;
uadd ymm16_LH ymm18_LH ymm16_LH;
uadd ymm16_HL ymm18_HL ymm16_HL;
uadd ymm16_HH ymm18_HH ymm16_HH;

(* NOTE: ymm16 is no longer radix 44 *)
(*
assert true
    && limbs 64 [ymm16_LL, 0@64, 0@64] +
       limbs 64 [ymm16_LH, 0@64, 0@64] *  (2**44)@192 +
       limbs 64 [ymm16_HL, 0@64, 0@64] *  (2**88)@192 +
       limbs 64 [ymm16_HH, 0@64, 0@64] * (2**130)@192 =
       (limbs 64 [ymm16_LL52, 0@64, 0@64] +
        limbs 64 [ymm17_LL52, 0@64, 0@64] * (2**52)@192) +
       (limbs 64 [ymm16_LH52, 0@64, 0@64] +
        limbs 64 [ymm17_LH52, 0@64, 0@64] * (2**52)@192) * (2**44)@192 +
       (limbs 64 [ymm16_HL52, 0@64, 0@64] +
        limbs 64 [ymm17_HL52, 0@64, 0@64] * (2**52)@192) * (2**88)@192;
assume limbs 44 [ymm16_LL, ymm16_LH, ymm16_HL] + ymm16_HH * 2**130 =
       limbs 52 [ymm16_LL52, ymm17_LL52] +
       limbs 52 [ymm16_LH52, ymm17_LH52] * 2**44 +
       limbs 52 [ymm16_HL52, ymm17_HL52] * 2**88 && true;
*)

(* vpermq $0x93,%ymm16,%ymm18{%k1}{z}              #! PC = 0x4207307 *)
mov ymm18_LL ymm16_HH;
mov ymm18_LH 0@uint64;
mov ymm18_HL 0@uint64;
mov ymm18_HH 0@uint64;
(* vpaddq %ymm18,%ymm16,%ymm16                     #! PC = 0x4207314 *)
uadd ymm16_LL ymm18_LL ymm16_LL;
uadd ymm16_LH ymm18_LH ymm16_LH;
uadd ymm16_HL ymm18_HL ymm16_HL;
uadd ymm16_HH ymm18_HH ymm16_HH;
(* vpsllq $0x2,%ymm18,%ymm18                       #! PC = 0x4207320 *)
shl ymm18_LL ymm18_LL 2;
shl ymm18_LH ymm18_LH 2;
shl ymm18_HL ymm18_HL 2;
shl ymm18_HH ymm18_HH 2;
(* vpaddq %ymm18,%ymm16,%ymm16                     #! PC = 0x4207327 *)
uadd ymm16_LL ymm18_LL ymm16_LL;
uadd ymm16_LH ymm18_LH ymm16_LH;
uadd ymm16_HL ymm18_HL ymm16_HL;
uadd ymm16_HH ymm18_HH ymm16_HH;
(* #dec    %rax                                     #! PC = 0x4207333 *)
#dec    %%rax                                     #! 0x4207333 = 0x4207333;
(* #jne    0x403220 <poly1305_blocks_vpmadd52+192> #! PC = 0x4207336 *)
#jne    0x403220 <poly1305_blocks_vpmadd52+192> #! 0x4207336 = 0x4207336;
(* vmovdqu64 %ymm16,(%rdi){%k7}                    #! EA = L0x649010; PC = 0x4207342 *)
mov L0x649010 ymm16_LL;
mov L0x649018 ymm16_LH;
mov L0x649020 ymm16_HL;
(* #test   %rdx,%rdx                                #! PC = 0x4207348 *)
#test   %%rdx,%%rdx                                #! 0x4207348 = 0x4207348;
(* #jne    0x403312 <poly1305_blocks_vpmadd52_4x+18>#! PC = 0x4207351 *)
#jne    0x403312 <poly1305_blocks_vpmadd52_4x+18>#! 0x4207351 = 0x4207351;
(* #repz retq                                      #! PC = 0x4207353 *)
#repz retq                                      #! 0x4207353 = 0x4207353;

mov H0 L0x649010;
mov H1 L0x649018;
mov H2 L0x649020;

{
  eqmod (limbs 44 [H0, H1, H2])
        (((limbs 44 [h0, h1, h2]) + (limbs 64 [inp0, inp1, padbit]))
         *
         (limbs 44 [r0, r1, r2]))
        (2**130-5)
&&
  and [
    H0 <u (2**50)@64, H1 <u (2**44)@64, H2 <u (2**43)@64
  ]
}

