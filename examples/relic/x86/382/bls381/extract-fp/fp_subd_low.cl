proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4,  uint64 a5,
           uint64 a6, uint64 a7, uint64 a8, uint64 a9, uint64 a10, uint64 a11,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4,  uint64 b5,
           uint64 b6, uint64 b7, uint64 b8, uint64 b9, uint64 b10, uint64 b11) =
{
  true
&&
  and [
  limbs 64 [a0, a1, a2, a3,  a4,  a5,
            a6, a7, a8, a9, a10, a11] <
  sq (limbs 64 [0xb9feffffffffaaab@64, 0x1eabfffeb153ffff@64,
              0x6730d2a0f6b0f624@64, 0x64774b84f38512bf@64,
              0x4b1ba7b6434bacd7@64, 0x1a0111ea397fe69a@64,
              0@64, 0@64, 0@64, 0@64, 0@64, 0@64]),
  limbs 64 [b0, b1, b2, b3,  b4,  b5,
            b6, b7, b8, b9, b10, b11] <
  sq (limbs 64 [0xb9feffffffffaaab@64, 0x1eabfffeb153ffff@64,
              0x6730d2a0f6b0f624@64, 0x64774b84f38512bf@64,
              0x4b1ba7b6434bacd7@64, 0x1a0111ea397fe69a@64,
              0@64, 0@64, 0@64, 0@64, 0@64, 0@64])
  ]
}

mov L0x7fffffffd220 a0;
mov L0x7fffffffd228 a1;
mov L0x7fffffffd230 a2;
mov L0x7fffffffd238 a3;
mov L0x7fffffffd240 a4;
mov L0x7fffffffd248 a5;
mov L0x7fffffffd250 a6;
mov L0x7fffffffd258 a7;
mov L0x7fffffffd260 a8;
mov L0x7fffffffd268 a9;
mov L0x7fffffffd270 a10;
mov L0x7fffffffd278 a11;

mov L0x7fffffffd1c0 b0;
mov L0x7fffffffd1c8 b1;
mov L0x7fffffffd1d0 b2;
mov L0x7fffffffd1d8 b3;
mov L0x7fffffffd1e0 b4;
mov L0x7fffffffd1e8 b5;
mov L0x7fffffffd1f0 b6;
mov L0x7fffffffd1f8 b7;
mov L0x7fffffffd200 b8;
mov L0x7fffffffd208 b9;
mov L0x7fffffffd210 b10;
mov L0x7fffffffd218 b11;


(* fp_subd_low: *)
/* fp_subd_low:; */
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffd220; Value = 0x000000006562b026; PC = 0x4199961 *)
mov r8 L0x7fffffffd220;
(* sub    (%rdx),%r8                               #! EA = L0x7fffffffd1c0; Value = 0x00007ffff7ffa2b0; PC = 0x4199964 *)
subb carry r8 r8 L0x7fffffffd1c0;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffd280; PC = 0x4199967 *)
mov L0x7fffffffd280 r8;
(* mov    0x8(%rsi),%r8                            #! EA = L0x7fffffffd228; Value = 0x0000000001958ac0; PC = 0x4199970 *)
mov r8 L0x7fffffffd228;
(* sbb    0x8(%rdx),%r8                            #! EA = L0x7fffffffd1c8; Value = 0x00007ffff7de164b; PC = 0x4199974 *)
sbbs carry r8 r8 L0x7fffffffd1c8 carry;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffd288; PC = 0x4199978 *)
mov L0x7fffffffd288 r8;
(* mov    0x10(%rsi),%r8                           #! EA = L0x7fffffffd230; Value = 0x0000000000000026; PC = 0x4199982 *)
mov r8 L0x7fffffffd230;
(* sbb    0x10(%rdx),%r8                           #! EA = L0x7fffffffd1d0; Value = 0x0000000000000009; PC = 0x4199986 *)
sbbs carry r8 r8 L0x7fffffffd1d0 carry;
(* mov    %r8,0x10(%rdi)                           #! EA = L0x7fffffffd290; PC = 0x4199990 *)
mov L0x7fffffffd290 r8;
(* mov    0x18(%rsi),%r8                           #! EA = L0x7fffffffd238; Value = 0x00007fffffffd360; PC = 0x4199994 *)
mov r8 L0x7fffffffd238;
(* sbb    0x18(%rdx),%r8                           #! EA = L0x7fffffffd1d8; Value = 0x00007ffff7ffa2b0; PC = 0x4199998 *)
sbbs carry r8 r8 L0x7fffffffd1d8 carry;
(* mov    %r8,0x18(%rdi)                           #! EA = L0x7fffffffd298; PC = 0x4200002 *)
mov L0x7fffffffd298 r8;
(* mov    0x20(%rsi),%r8                           #! EA = L0x7fffffffd240; Value = 0x00007ffff7ffa2b0; PC = 0x4200006 *)
mov r8 L0x7fffffffd240;
(* sbb    0x20(%rdx),%r8                           #! EA = L0x7fffffffd1e0; Value = 0x00007ffff7ffe700; PC = 0x4200010 *)
sbbs carry r8 r8 L0x7fffffffd1e0 carry;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x7fffffffd2a0; PC = 0x4200014 *)
mov L0x7fffffffd2a0 r8;
(* mov    0x28(%rsi),%r8                           #! EA = L0x7fffffffd248; Value = 0x00007ffff7ffa1a8; PC = 0x4200018 *)
mov r8 L0x7fffffffd248;
(* sbb    0x28(%rdx),%r8                           #! EA = L0x7fffffffd1e8; Value = 0x00007fffffffd288; PC = 0x4200022 *)
sbbs carry r8 r8 L0x7fffffffd1e8 carry;
(* mov    %r8,0x28(%rdi)                           #! EA = L0x7fffffffd2a8; PC = 0x4200026 *)
mov L0x7fffffffd2a8 r8;
(* mov    0x30(%rsi),%r8                           #! EA = L0x7fffffffd250; Value = 0x00007fffffffd284; PC = 0x4200030 *)
mov r8 L0x7fffffffd250;
(* sbb    0x30(%rdx),%r8                           #! EA = L0x7fffffffd1f0; Value = 0x00007fffffffd284; PC = 0x4200034 *)
sbbs carry r8 r8 L0x7fffffffd1f0 carry;
(* mov    %r8,0x30(%rdi)                           #! EA = L0x7fffffffd2b0; PC = 0x4200038 *)
mov L0x7fffffffd2b0 r8;
(* mov    0x38(%rsi),%r8                           #! EA = L0x7fffffffd258; Value = 0x00007fffffffd350; PC = 0x4200042 *)
mov r8 L0x7fffffffd258;
(* sbb    0x38(%rdx),%r8                           #! EA = L0x7fffffffd1f8; Value = 0x00007ffff7de3cd8; PC = 0x4200046 *)
sbbs carry r8 r8 L0x7fffffffd1f8 carry;
(* mov    %r8,0x38(%rdi)                           #! EA = L0x7fffffffd2b8; PC = 0x4200050 *)
mov L0x7fffffffd2b8 r8;
(* mov    0x40(%rsi),%r8                           #! EA = L0x7fffffffd260; Value = 0x00007ffff7ffe728; PC = 0x4200054 *)
mov r8 L0x7fffffffd260;
(* sbb    0x40(%rdx),%r8                           #! EA = L0x7fffffffd200; Value = 0x0000000000000000; PC = 0x4200058 *)
sbbs carry r8 r8 L0x7fffffffd200 carry;
(* mov    %r8,0x40(%rdi)                           #! EA = L0x7fffffffd2c0; PC = 0x4200062 *)
mov L0x7fffffffd2c0 r8;
(* mov    0x48(%rsi),%r8                           #! EA = L0x7fffffffd268; Value = 0x0000000000000000; PC = 0x4200066 *)
mov r8 L0x7fffffffd268;
(* sbb    0x48(%rdx),%r8                           #! EA = L0x7fffffffd208; Value = 0x00007ffff791a627; PC = 0x4200070 *)
sbbs carry r8 r8 L0x7fffffffd208 carry;
(* mov    %r8,0x48(%rdi)                           #! EA = L0x7fffffffd2c8; PC = 0x4200074 *)
mov L0x7fffffffd2c8 r8;
(* mov    0x50(%rsi),%r8                           #! EA = L0x7fffffffd270; Value = 0x0000000000000001; PC = 0x4200078 *)
mov r8 L0x7fffffffd270;
(* sbb    0x50(%rdx),%r8                           #! EA = L0x7fffffffd210; Value = 0x00007fffffffd420; PC = 0x4200082 *)
sbbs carry r8 r8 L0x7fffffffd210 carry;
(* mov    %r8,0x50(%rdi)                           #! EA = L0x7fffffffd2d0; PC = 0x4200086 *)
mov L0x7fffffffd2d0 r8;
(* mov    0x58(%rsi),%r8                           #! EA = L0x7fffffffd278; Value = 0x00007ffff7dd77f0; PC = 0x4200090 *)
mov r8 L0x7fffffffd278;
(* sbb    0x58(%rdx),%r8                           #! EA = L0x7fffffffd218; Value = 0x00007fffffffd288; PC = 0x4200094 *)
sbbs carry r8 r8 L0x7fffffffd218 carry;
(* mov    %r8,0x58(%rdi)                           #! EA = L0x7fffffffd2d8; PC = 0x4200098 *)
mov L0x7fffffffd2d8 r8;
(* #retq                                           #! PC = 0x4200102 *)
#retq                                           #! 0x4200102 = 0x4200102;

mov c0 L0x7fffffffd280;
mov c1 L0x7fffffffd288;
mov c2 L0x7fffffffd290;
mov c3 L0x7fffffffd298;
mov c4 L0x7fffffffd2a0;
mov c5 L0x7fffffffd2a8;
mov c6 L0x7fffffffd2b0;
mov c7 L0x7fffffffd2b8;
mov c8 L0x7fffffffd2c0;
mov c9 L0x7fffffffd2c8;
mov c10 L0x7fffffffd2d0;
mov c11 L0x7fffffffd2d8;

{
  (limbs 64 [c0, c1, c2, c3, c4, c5,
             c6, c7, c8, c9, c10, c11] -
             limbs 64 [0, 0, 0, 0, 0, 0,
                       0, 0, 0, 0, 0, 0, carry])
  =
  ((limbs 64 [a0, a1, a2, a3, a4, a5,
                   a6, a7, a8, a9, a10, a11]) -
             (limbs 64 [b0, b1, b2, b3, b4, b5,
                   b6, b7, b8, b9, b10, b11]))
  &&
  true
}
