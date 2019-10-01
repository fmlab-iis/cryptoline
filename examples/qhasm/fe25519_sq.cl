proc main(uint64 x0, uint64  x1, uint64 x2, uint64 x3, uint64 x4) =
{
  true
  &&
  and [
    x0 < const 64 (2**54),
    x1 < const 64 (2**54),
    x2 < const 64 (2**54),
    x3 < const 64 (2**54),
    x4 < const 64 (2**54)
  ]
}
      (*  *)
      (* int64 rp *)
      (* int64 xp *)
      (*  *)
      (* input rp *)
      (* input xp *)
      (*  *)
      (* int64 r0 *)
      (* int64 r1 *)
      (* int64 r2 *)
      (* int64 r3 *)
      (* int64 r4 *)
      (*  *)
      (* int64 c1 *)
      (* int64 c2 *)
      (* int64 c3 *)
      (* int64 c4 *)
      (* int64 c5 *)
      (* int64 c6 *)
      (* int64 c7 *)
      (* caller c1 *)
      (* caller c2 *)
      (* caller c3 *)
      (* caller c4 *)
      (* caller c5 *)
      (* caller c6 *)
      (* caller c7 *)
      (* stack64 c1_stack *)
      (* stack64 c2_stack *)
      (* stack64 c3_stack *)
      (* stack64 c4_stack *)
      (* stack64 c5_stack *)
      (* stack64 c6_stack *)
      (* stack64 c7_stack *)
      (* stack64 x119_stack *)
      (* stack64 x219_stack *)
      (* stack64 x319_stack *)
      (* stack64 x419_stack *)
      (*  *)

      (* #required for  macro *)

      (* int64 r01 *)
      (* int64 r11 *)
      (* int64 r21 *)
      (* int64 r31 *)
      (* int64 r41 *)
      (* int64 rax *)
      (* int64 rdx *)

      (* int64 t *)
      (* int64 redmask *)

      (*  *)
      (* enter fe25519_sq *)
      (*  *)
      (* c1_stack = c1 *)
      (* c2_stack = c2 *)
      (* c3_stack = c3 *)
      (* c4_stack = c4 *)
      (* c5_stack = c5 *)
      (* c6_stack = c6 *)
      (* c7_stack = c7 *)
      (*  *)
      (*   #BEGIN MACRO  *)
      (*   rax = *[uint64 *](xp + 0) *)
      (*   (uint128) rdx rax = rax * *[uint64 *](xp + 0) *)
      (*   r0 = rax *)
      (*   r01 = rdx *)
mov rax x0;
mull rdx rax rax x0;
mov r0 rax;
mov r01 rdx;
      (*   rax = *[uint64 *](xp + 0) *)
      (*   rax <<= 1 *)
      (*   (uint128) rdx rax = rax * *[uint64 *](xp + 8) *)
      (*   r1 = rax *)
      (*   r11 = rdx *)
mov rax x0;
mul rax rax 2@uint64;
mull rdx rax rax x1;
mov r1 rax;
mov r11 rdx;
      (*   rax = *[uint64 *](xp + 0) *)
      (*   rax <<= 1 *)
      (*   (uint128) rdx rax = rax * *[uint64 *](xp + 16) *)
      (*   r2 = rax *)
      (*   r21 = rdx *)
mov rax x0;
mul rax rax 2@uint64;
mull rdx rax rax x2;
mov r2 rax;
mov r21 rdx;
      (*   rax = *[uint64 *](xp + 0) *)
      (*   rax <<= 1 *)
      (*   (uint128) rdx rax = rax * *[uint64 *](xp + 24) *)
      (*   r3 = rax *)
      (*   r31 = rdx *)
mov rax x0;
mul rax rax 2@uint64;
mull rdx rax rax x3;
mov r3 rax;
mov r31 rdx;
      (*   rax = *[uint64 *](xp + 0) *)
      (*   rax <<= 1 *)
      (*   (uint128) rdx rax = rax * *[uint64 *](xp + 32) *)
      (*   r4 = rax *)
      (*   r41 = rdx *)
mov rax x0;
mul rax rax 2@uint64;
mull rdx rax rax x4;
mov r4 rax;
mov r41 rdx;
      (*  *)
      (*   rax = *[uint64 *](xp + 8) *)
      (*   (uint128) rdx rax = rax * *[uint64 *](xp + 8) *)
      (*   carry? r2 += rax *)
      (*   r21 += rdx + carry *)
mov rax x1;
mull rdx rax rax x1;
adds carry r2 r2 rax;
adc r21 r21 rdx carry;
      (*   rax = *[uint64 *](xp + 8) *)
      (*   rax <<= 1 *)
      (*   (uint128) rdx rax = rax * *[uint64 *](xp + 16) *)
      (*   carry? r3 += rax *)
      (*   r31 += rdx + carry *)
mov rax x1;
mul rax rax 2@uint64;
mull rdx rax rax x2;
adds carry r3 r3 rax;
adc r31 r31 rdx carry;
      (*   rax = *[uint64 *](xp + 8) *)
      (*   rax <<= 1 *)
      (*   (uint128) rdx rax = rax * *[uint64 *](xp + 24) *)
      (*   carry? r4 += rax *)
      (*   r41 += rdx + carry *)
mov rax x1;
mul rax rax 2@uint64;
mull rdx rax rax x3;
adds carry r4 r4 rax;
adc r41 r41 rdx carry;
      (*   rax = *[uint64 *](xp + 8) *)
      (*   rax *= 38 *)
      (*   (uint128) rdx rax = rax * *[uint64 *](xp + 32) *)
      (*   carry? r0 += rax *)
      (*   r01 += rdx + carry *)
mov rax x1;
mul rax rax 38@uint64;
mull rdx rax rax x4;
adds carry r0 r0 rax;
adc r01 r01 rdx carry;
      (*    *)
      (*   rax = *[uint64 *](xp + 16) *)
      (*   (uint128) rdx rax = rax * *[uint64 *](xp + 16) *)
      (*   carry? r4 += rax *)
      (*   r41 += rdx + carry *)
mov rax x2;
mull rdx rax rax x2;
adds carry r4 r4 rax;
adc r41 r41 rdx carry;
      (*   rax = *[uint64 *](xp + 16) *)
      (*   rax *= 38 *)
      (*   (uint128) rdx rax = rax * *[uint64 *](xp + 24) *)
      (*   carry? r0 += rax *)
      (*   r01 += rdx + carry *)
mov rax x2;
mul rax rax 38@uint64;
mull rdx rax rax x3;
adds carry r0 r0 rax;
adc r01 r01 rdx carry;
      (*   rax = *[uint64 *](xp + 16) *)
      (*   rax *= 38 *)
      (*   (uint128) rdx rax = rax * *[uint64 *](xp + 32) *)
      (*   carry? r1 += rax *)
      (*   r11 += rdx + carry *)
mov rax x2;
mul rax rax 38@uint64;
mull rdx rax rax x4;
adds carry r1 r1 rax;
adc r11 r11 rdx carry;
      (*    *)
      (*   rax = *[uint64 *](xp + 24) *)
      (*   rax *= 19 *)
      (*   (uint128) rdx rax = rax * *[uint64 *](xp + 24) *)
      (*   carry? r1 += rax *)
      (*   r11 += rdx + carry *)
mov rax x3;
mul rax rax 19@uint64;
mull rdx rax rax x3;
adds carry r1 r1 rax;
adc r11 r11 rdx carry;
      (*   rax = *[uint64 *](xp + 24) *)
      (*   rax *= 38 *)
      (*   (uint128) rdx rax = rax * *[uint64 *](xp + 32) *)
      (*   carry? r2 += rax *)
      (*   r21 += rdx + carry *)
mov rax x3;
mul rax rax 38@uint64;
mull rdx rax rax x4;
adds carry r2 r2 rax;
adc r21 r21 rdx carry;
      (*    *)
      (*   rax = *[uint64 *](xp + 32) *)
      (*   rax *= 19 *)
      (*   (uint128) rdx rax = rax * *[uint64 *](xp + 32) *)
      (*   carry? r3 += rax *)
      (*   r31 += rdx + carry *)
mov rax x4;
mul rax rax 19@uint64;
mull rdx rax rax x4;
adds carry r3 r3 rax;
adc r31 r31 rdx carry;
      (*  *)
      (*  *)
      (*  *)
      (*  *)
      (*   redmask = *[uint64 *] $crypto_sign_ed25519_amd64_51_REDMASK51 *)
      (*   r01 = (r01.r0) << 13 *)
      (*   r0 &= redmask *)
cshl r01 r0 r01 r0 13;
      (*    *)
      (*   r11 = (r11.r1) << 13 *)
      (*   r1 &= redmask *)
      (*   r1 += r01 *)
cshl r11 r1 r11 r1 13;
add r1 r1 r01;
      (*    *)
      (*   r21 = (r21.r2) << 13 *)
      (*   r2 &= redmask *)
      (*   r2 += r11 *)
cshl r21 r2 r21 r2 13;
add r2 r2 r11;
      (*    *)
      (*   r31 = (r31.r3) << 13 *)
      (*   r3 &= redmask *)
      (*   r3 += r21 *)
cshl r31 r3 r31 r3 13;
add r3 r3 r21;
      (*    *)
      (*   r41 = (r41.r4) << 13 *)
      (*   r4 &= redmask *)
      (*   r4 += r31 *)
cshl r41 r4 r41 r4 13;
add r4 r4 r31;
      (*   r41 = r41 * 19 *)
mul r41 r41 19@uint64;
      (*   r0 += r41 *)
add r0 r0 r41;
      (*  *)
      (*  *)
      (*  *)
      (*  *)
      (*   t = r0 *)
      (*   (uint64) t >>= 51 *)
      (*   t += r1 *)
      (*   r0 &= redmask *)
mov t r0;
split t tmp t 51;
add t t r1;
mov r0 tmp;
      (*    *)
      (*   r1 = t *)
      (*   (uint64) t >>= 51 *)
      (*   t += r2 *)
      (*   r1 &= redmask *)
mov r1 t;
split t tmp t 51;
add t t r2;
mov r1 tmp;
      (*    *)
      (*   r2 = t *)
      (*   (uint64) t >>= 51 *)
      (*   t += r3 *)
      (*   r2 &= redmask *)
mov r2 t;
split t tmp t 51;
add t t r3;
mov r2 tmp;
      (*    *)
      (*   r3 = t *)
      (*   (uint64) t >>= 51 *)
      (*   t += r4 *)
      (*   r3 &= redmask *)
mov r3 t;
split t tmp t 51;
add t t r4;
mov r3 tmp;
      (*    *)
      (*   r4 = t *)
      (*   (uint64) t >>= 51 *)
      (*   t *= 19 *)
      (*   r0 += t *)
      (*   r4 &= redmask *)
mov r4 t;
split t tmp t 51;
mul t t 19@uint64;
add r0 r0 t;
mov r4 tmp;
      (*   #END MACRO  *)
      (*  *)
      (*  *)
      (*  *)
      (*  *)
      (* *[uint64 *](rp + 0) = r0 *)
mov z0 r0;
      (* *[uint64 *](rp + 8) = r1 *)
mov z1 r1;
      (* *[uint64 *](rp + 16) = r2 *)
mov z2 r2;
      (* *[uint64 *](rp + 24) = r3 *)
mov z3 r3;
      (* *[uint64 *](rp + 32) = r4 *)
mov z4 r4;
      (*   *)
      (*  *)
      (* c1 =c1_stack *)
      (* c2 =c2_stack *)
      (* c3 =c3_stack *)
      (* c4 =c4_stack *)
      (* c5 =c5_stack *)
      (* c6 =c6_stack *)
      (* c7 =c7_stack *)
      (*  *)
      (* leave *)
{
  eqmod
    (sq (limbs 51 [x0, x1, x2, x3, x4]))
    (limbs 51 [z0, z1, z2, z3, z4])
    (((2**255 )- 19))
  &&
  and [
    z0 <= const 64 (2**51+2**15),
    z1 <= const 64 (2**51+2**15),
    z2 <= const 64 (2**51+2**15),
    z3 <= const 64 (2**51+2**15),
    z4 <= const 64 (2**51+2**15)
  ]
}
