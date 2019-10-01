proc main(uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 x4, uint64 y0, uint64 y1, uint64 y2, uint64 y3, uint64 y4) =
{ true
  &&
  and [
    x0 <= const 64 (2**52),
    x1 <= const 64 (2**52),
    x2 <= const 64 (2**52),
    x3 <= const 64 (2**52),
    x4 <= const 64 (2**52),
    y0 <= const 64 (2**52),
    y1 <= const 64 (2**52),
    y2 <= const 64 (2**52),
    y3 <= const 64 (2**52),
    y4 <= const 64 (2**52)
  ]
}
      (* int64 rp *)
      (* int64 xp *)
      (* int64 yp *)
      (*  *)
      (* input rp *)
      (* input xp *)
      (* input yp *)
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
      (* stack64 rp_stack *)
      (*  *)
      (* # required for the mul template *)
      (* int64 mulr01 *)
      (* int64 mulr11 *)
      (* int64 mulr21 *)
      (* int64 mulr31 *)
      (* int64 mulr41 *)
      (* int64 mulrax *)
      (* int64 mulrdx *)
      (* int64 mult *)
      (* int64 mulredmask *)
      (* stack64 mulx219_stack *)
      (* stack64 mulx319_stack *)
      (* stack64 mulx419_stack *)

      (*  *)

      (* enter crypto_sign_ed25519_amd64_51_fe25519_mul *)

      (*  *)

      (*   c1_stack = c1 *)
      (*   c2_stack = c2 *)
      (*   c3_stack = c3 *)
      (*   c4_stack = c4 *)
      (*   c5_stack = c5 *)
      (*   c6_stack = c6 *)
      (*   c7_stack = c7 *)
      (*   rp_stack = rp *)

      (*  *)
      (* yp = yp *)
      (*  *)
      (*  *)

      (*   #BEGIN MACRO mul *)
      (*   mulrax = *[uint64 *](xp + 24) *)
      (*   mulrax *= 19 *)
      (*   mulx319_stack = mulrax *)
      (*   (uint128) mulrdx mulrax = mulrax * *[uint64 *](yp + 16) *)
      (*   r0 = mulrax *)
      (*   mulr01 = mulrdx *)
mov mulrax x3;
mul mulrax mulrax 19@uint64;
mov mulx319 mulrax;
mull mulrdx mulrax mulrax y2;
mov r0 mulrax;
mov mulr01 mulrdx;
      (*  *)
      (*  *)
      (*   mulrax = *[uint64 *](xp + 32) *)
      (*   mulrax *= 19 *)
      (*   mulx419_stack = mulrax *)
      (*   (uint128) mulrdx mulrax = mulrax * *[uint64 *](yp + 8) *)
      (*   carry? r0 += mulrax *)
      (*   mulr01 += mulrdx + carry *)
mov mulrax x4;
mul mulrax mulrax 19@uint64;
mov mulx419 mulrax;
mull mulrdx mulrax mulrax y1;
adds carry r0 r0 mulrax;
adc mulr01 mulr01 mulrdx carry;
      (*  *)
      (*  *)
      (*   mulrax = *[uint64 *](xp + 0) *)
      (*   (uint128) mulrdx mulrax = mulrax * *[uint64 *](yp + 0) *)
      (*   carry? r0 += mulrax *)
      (*   mulr01 += mulrdx + carry *)
mov mulrax x0;
mull mulrdx mulrax mulrax y0;
adds carry r0 r0 mulrax;
adc mulr01 mulr01 mulrdx carry;
      (*  *)
      (*  *)
      (*   mulrax = *[uint64 *](xp + 0) *)
      (*   (uint128) mulrdx mulrax = mulrax * *[uint64 *](yp + 8) *)
      (*   r1 = mulrax *)
      (*   mulr11 = mulrdx *)
mov mulrax x0;
mull mulrdx mulrax mulrax y1;
mov r1 mulrax;
mov mulr11 mulrdx;
      (*  *)
      (*  *)
      (*   mulrax = *[uint64 *](xp + 0) *)
      (*   (uint128) mulrdx mulrax = mulrax * *[uint64 *](yp + 16) *)
      (*   r2 = mulrax *)
      (*   mulr21 = mulrdx *)
mov mulrax x0;
mull mulrdx mulrax mulrax y2;
mov r2 mulrax;
mov mulr21 mulrdx;
      (*  *)
      (*  *)
      (*   mulrax = *[uint64 *](xp + 0) *)
      (*   (uint128) mulrdx mulrax = mulrax * *[uint64 *](yp + 24) *)
      (*   r3 = mulrax *)
      (*   mulr31 = mulrdx *)
mov mulrax x0;
mull mulrdx mulrax mulrax y3;
mov r3 mulrax;
mov mulr31 mulrdx;
      (*  *)
      (*  *)
      (*   mulrax = *[uint64 *](xp + 0) *)
      (*   (uint128) mulrdx mulrax = mulrax * *[uint64 *](yp + 32) *)
      (*   r4 = mulrax *)
      (*   mulr41 = mulrdx *)
mov mulrax x0;
mull mulrdx mulrax mulrax y4;
mov r4 mulrax;
mov mulr41 mulrdx;
      (*  *)
      (*  *)
      (*   mulrax = *[uint64 *](xp + 8) *)
      (*   (uint128) mulrdx mulrax = mulrax * *[uint64 *](yp + 0) *)
      (*   carry? r1 += mulrax *)
      (*   mulr11 += mulrdx + carry *)
mov mulrax x1;
mull mulrdx mulrax mulrax y0;
adds carry r1 r1 mulrax;
adc mulr11 mulr11 mulrdx carry;
      (*  *)
      (*  *)
      (*   mulrax = *[uint64 *](xp + 8) *)
      (*   (uint128) mulrdx mulrax = mulrax * *[uint64 *](yp + 8) *)
      (*   carry? r2 += mulrax *)
      (*   mulr21 += mulrdx + carry *)
mov mulrax x1;
mull mulrdx mulrax mulrax y1;
adds carry r2 r2 mulrax;
adc mulr21 mulr21 mulrdx carry;
      (*  *)
      (*  *)
      (*   mulrax = *[uint64 *](xp + 8) *)
      (*   (uint128) mulrdx mulrax = mulrax * *[uint64 *](yp + 16) *)
      (*   carry? r3 += mulrax *)
      (*   mulr31 += mulrdx + carry *)
mov mulrax x1;
mull mulrdx mulrax mulrax y2;
adds carry r3 r3 mulrax;
adc mulr31 mulr31 mulrdx carry;
      (*  *)
      (*  *)
      (*   mulrax = *[uint64 *](xp + 8) *)
      (*   (uint128) mulrdx mulrax = mulrax * *[uint64 *](yp + 24) *)
      (*   carry? r4 += mulrax *)
      (*   mulr41 += mulrdx + carry *)
mov mulrax x1;
mull mulrdx mulrax mulrax y3;
adds carry r4 r4 mulrax;
adc mulr41 mulr41 mulrdx carry;
      (*  *)
      (*  *)
      (*   mulrax = *[uint64 *](xp + 8) *)
      (*   mulrax *= 19 *)
      (*   (uint128) mulrdx mulrax = mulrax * *[uint64 *](yp + 32) *)
      (*   carry? r0 += mulrax *)
      (*   mulr01 += mulrdx + carry *)
mov mulrax x1;
mul mulrax mulrax 19@uint64;
mull mulrdx mulrax mulrax y4;
adds carry r0 r0 mulrax;
adc mulr01 mulr01 mulrdx carry;
      (*  *)
      (*  *)
      (*   mulrax = *[uint64 *](xp + 16) *)
      (*   (uint128) mulrdx mulrax = mulrax * *[uint64 *](yp + 0) *)
      (*   carry? r2 += mulrax *)
      (*   mulr21 += mulrdx + carry *)
mov mulrax x2;
mull mulrdx mulrax mulrax y0;
adds carry r2 r2 mulrax;
adc mulr21 mulr21 mulrdx carry;
      (*  *)
      (*  *)
      (*   mulrax = *[uint64 *](xp + 16) *)
      (*   (uint128) mulrdx mulrax = mulrax * *[uint64 *](yp + 8) *)
      (*   carry? r3 += mulrax *)
      (*   mulr31 += mulrdx + carry *)
mov mulrax x2;
mull mulrdx mulrax mulrax y1;
adds carry r3 r3 mulrax;
adc mulr31 mulr31 mulrdx carry;
      (*  *)
      (*  *)
      (*   mulrax = *[uint64 *](xp + 16) *)
      (*   (uint128) mulrdx mulrax = mulrax * *[uint64 *](yp + 16) *)
      (*   carry? r4 += mulrax *)
      (*   mulr41 += mulrdx + carry *)
mov mulrax x2;
mull mulrdx mulrax mulrax y2;
adds carry r4 r4 mulrax;
adc mulr41 mulr41 mulrdx carry;
      (*  *)
      (*  *)
      (*   mulrax = *[uint64 *](xp + 16) *)
      (*   mulrax *= 19 *)
      (*   (uint128) mulrdx mulrax = mulrax * *[uint64 *](yp + 24) *)
      (*   carry? r0 += mulrax *)
      (*   mulr01 += mulrdx + carry *)
mov mulrax x2;
mul mulrax mulrax 19@uint64;
mull mulrdx mulrax mulrax y3;
adds carry r0 r0 mulrax;
adc mulr01 mulr01 mulrdx carry;
      (*  *)
      (*  *)
      (*   mulrax = *[uint64 *](xp + 16) *)
      (*   mulrax *= 19 *)
      (*   (uint128) mulrdx mulrax = mulrax * *[uint64 *](yp + 32) *)
      (*   carry? r1 += mulrax *)
      (*   mulr11 += mulrdx + carry *)
mov mulrax x2;
mul mulrax mulrax 19@uint64;
mull mulrdx mulrax mulrax y4;
adds carry r1 r1 mulrax;
adc mulr11 mulr11 mulrdx carry;
      (*  *)
      (*  *)
      (*   mulrax = *[uint64 *](xp + 24) *)
      (*   (uint128) mulrdx mulrax = mulrax * *[uint64 *](yp + 0) *)
      (*   carry? r3 += mulrax *)
      (*   mulr31 += mulrdx + carry *)
mov mulrax x3;
mull mulrdx mulrax mulrax y0;
adds carry r3 r3 mulrax;
adc mulr31 mulr31 mulrdx carry;
      (*  *)
      (*  *)
      (*   mulrax = *[uint64 *](xp + 24) *)
      (*   (uint128) mulrdx mulrax = mulrax * *[uint64 *](yp + 8) *)
      (*   carry? r4 += mulrax *)
      (*   mulr41 += mulrdx + carry *)
mov mulrax x3;
mull mulrdx mulrax mulrax y1;
adds carry r4 r4 mulrax;
adc mulr41 mulr41 mulrdx carry;
      (*  *)
      (*  *)
      (*   mulrax = mulx319_stack *)
      (*   #mulrax *= 19 *)
      (*   (uint128) mulrdx mulrax = mulrax * *[uint64 *](yp + 24) *)
      (*   carry? r1 += mulrax *)
      (*   mulr11 += mulrdx + carry *)
mov mulrax mulx319;
mull mulrdx mulrax mulrax y3;
adds carry r1 r1 mulrax;
adc mulr11 mulr11 mulrdx carry;
      (*  *)
      (*  *)
      (*   mulrax = mulx319_stack *)
      (*   #mulrax *= 19 *)
      (*   (uint128) mulrdx mulrax = mulrax * *[uint64 *](yp + 32) *)
      (*   carry? r2 += mulrax *)
      (*   mulr21 += mulrdx + carry *)
mov mulrax mulx319;
mull mulrdx mulrax mulrax y4;
adds carry r2 r2 mulrax;
adc mulr21 mulr21 mulrdx carry;
      (*  *)
      (*  *)
      (*   mulrax = *[uint64 *](xp + 32) *)
      (*   (uint128) mulrdx mulrax = mulrax * *[uint64 *](yp + 0) *)
      (*   carry? r4 += mulrax *)
      (*   mulr41 += mulrdx + carry *)
mov mulrax x4;
mull mulrdx mulrax mulrax y0;
adds carry r4 r4 mulrax;
adc mulr41 mulr41 mulrdx carry;
      (*  *)
      (*  *)
      (*   mulrax = mulx419_stack *)
      (*   #mulrax *= 19 *)
      (*   (uint128) mulrdx mulrax = mulrax * *[uint64 *](yp + 16) *)
      (*   carry? r1 += mulrax *)
      (*   mulr11 += mulrdx + carry *)
mov mulrax mulx419;
mull mulrdx mulrax mulrax y2;
adds carry r1 r1 mulrax;
adc mulr11 mulr11 mulrdx carry;
      (*  *)
      (*  *)
      (*   mulrax = mulx419_stack *)
      (*   #mulrax *= 19 *)
      (*   (uint128) mulrdx mulrax = mulrax * *[uint64 *](yp + 24) *)
      (*   carry? r2 += mulrax *)
      (*   mulr21 += mulrdx + carry *)
mov mulrax mulx419;
mull mulrdx mulrax mulrax y3;
adds carry r2 r2 mulrax;
adc mulr21 mulr21 mulrdx carry;
      (*  *)
      (*  *)
      (*   mulrax = mulx419_stack *)
      (*   #mulrax *= 19 *)
      (*   (uint128) mulrdx mulrax = mulrax * *[uint64 *](yp + 32) *)
      (*   carry? r3 += mulrax *)
      (*   mulr31 += mulrdx + carry *)
mov mulrax mulx419;
mull mulrdx mulrax mulrax y4;
adds carry r3 r3 mulrax;
adc mulr31 mulr31 mulrdx carry;
      (*  *)
      (*  *)
      (*  *)
      (*  *)
      (*   mulredmask = *[uint64 *] $crypto_sign_ed25519_amd64_51_REDMASK51 *)
      (*   mulr01 = (mulr01.r0) << 13 *)
      (*   r0 &= mulredmask *)
cshl mulr01 r0 mulr01 r0 13;
      (*   mulr11 = (mulr11.r1) << 13 *)
      (*   r1 &= mulredmask *)
      (*   r1 += mulr01 *)
cshl mulr11 r1 mulr11 r1 13;
add r1 r1 mulr01;
      (*   mulr21 = (mulr21.r2) << 13 *)
      (*   r2 &= mulredmask *)
      (*   r2 += mulr11 *)
cshl mulr21 r2 mulr21 r2 13;
add r2 r2 mulr11;
      (*   mulr31 = (mulr31.r3) << 13 *)
      (*   r3 &= mulredmask *)
      (*   r3 += mulr21 *)
cshl mulr31 r3 mulr31 r3 13;
add r3 r3 mulr21;
      (*   mulr41 = (mulr41.r4) << 13 *)
      (*   r4 &= mulredmask *)
      (*   r4 += mulr31 *)
cshl mulr41 r4 mulr41 r4 13;
add r4 r4 mulr31;
      (*   mulr41 = mulr41 * 19 *)
mul mulr41 mulr41 19@uint64;
      (*   r0 += mulr41 *)
add r0 r0 mulr41;
      (*  *)
      (*  *)
      (*  *)
      (*  *)
      (*   mult = r0 *)
      (*   (uint64) mult >>= 51 *)
      (*   mult += r1 *)
mov mult r0;
split mult tmp mult 51;
add mult mult r1;
      (*   r1 = mult *)
      (*   (uint64) mult >>= 51 *)
      (*   r0 &= mulredmask *)
      (*   mult += r2 *)
mov r1 mult;
split mult tmp2 mult 51;
mov r0 tmp;
add mult mult r2;
      (*   r2 = mult *)
      (*   (uint64) mult >>= 51 *)
      (*   r1 &= mulredmask *)
      (*   mult += r3 *)
mov r2 mult;
split mult tmp mult 51;
mov r1 tmp2;
add mult mult r3;
      (*   r3 = mult *)
      (*   (uint64) mult >>= 51 *)
      (*   r2 &= mulredmask *)
      (*   mult += r4 *)
mov r3 mult;
split mult tmp2 mult 51;
mov r2 tmp;
add mult mult r4;
      (*   r4 = mult *)
      (*   (uint64) mult >>= 51 *)
      (*   r3 &= mulredmask *)
mov r4 mult;
split mult tmp mult 51;
mov r3 tmp2;
      (*   mult *= 19 *)
      (*   r0 += mult *)
      (*   r4 &= mulredmask *)
mul mult mult 19@uint64;
add r0 r0 mult;
mov r4 tmp;
      (*   #END MACRO mul *)

      (*  *)
      (* *[uint64 *](rp + 0) = r0 *)
      (* *[uint64 *](rp + 8) = r1 *)
      (* *[uint64 *](rp + 16) = r2 *)
      (* *[uint64 *](rp + 24) = r3 *)
      (* *[uint64 *](rp + 32) = r4 *)
mov z0 r0;
mov z1 r1;
mov z2 r2;
mov z3 r3;
mov z4 r4;
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
    (
      (limbs 51 [x0, x1, x2, x3, x4])
      *
      (limbs 51 [y0, y1, y2, y3, y4])
    )
    (limbs 51 [r0, r1, r2, r3, r4])
    (((2**255 )- 19))
  &&
  and [
     r0 <= const 64 (2**52),
     r1 <= const 64 (2**52),
     r2 <= const 64 (2**52),
     r3 <= const 64 (2**52),
     r4 <= const 64 (2**52)
  ]
}
