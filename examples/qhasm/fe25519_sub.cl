proc main(uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 x4, uint64 y0, uint64 y1, uint64 y2, uint64 y3, uint64 y4) =
{
  true
  &&
  and
  [
    x0 <= (const 64 ((2**51 )+ 2**15)),
    x1 <= (const 64 ((2**51 )+ 2**15)),
    x2 <= (const 64 ((2**51 )+ 2**15)),
    x3 <= (const 64 ((2**51 )+ 2**15)),
    x4 <= (const 64 ((2**51 )+ 2**15)),
    y0 <= (const 64 ((2**51 )+ 2**15)),
    y1 <= (const 64 ((2**51 )+ 2**15)),
    y2 <= (const 64 ((2**51 )+ 2**15)),
    y3 <= (const 64 ((2**51 )+ 2**15)),
    y4 <= (const 64 ((2**51 )+ 2**15))
  ]
}
      (* int64 x0 *)
      (* int64 x1 *)
      (* int64 x2 *)
      (* int64 x3 *)
      (* int64 x4 *)
      (*  *)
      (* int64 y0 *)
      (* int64 y1 *)
      (* int64 y2 *)
      (* int64 y3 *)
      (* int64 y4 *)
      (*  *)
      (* int64 r0 *)
      (* int64 r1 *)
      (* int64 r2 *)
      (* int64 r3 *)
      (* int64 r4 *)
      (*  *)
      (* #// assume 0 <=u x0, x1, x2, x3, x4, y0, y1, y2, y3, y4 <=u 2**51 + 2**15 *)
      (*  *)
      (* r0 = x0 *)
mov r0 x0;
      (* r1 = x1 *)
mov r1 x1;
      (* r2 = x2 *)
mov r2 x2;
      (* r3 = x3 *)
mov r3 x3;
      (* r4 = x4 *)
mov r4 x4;
      (* r0 += *[uint64 *] $0xFFFFFFFFFFFDA *)
add r0 r0 0xFFFFFFFFFFFDA@uint64;
      (* r1 += *[uint64 *] $crypto_sign_ed25519_amd64_51_2P1234 *)
add r1 r1 0xFFFFFFFFFFFFE@uint64;
      (* r2 += *[uint64 *] $crypto_sign_ed25519_amd64_51_2P1234 *)
add r2 r2 0xFFFFFFFFFFFFE@uint64;
      (* r3 += *[uint64 *] $crypto_sign_ed25519_amd64_51_2P1234 *)
add r3 r3 0xFFFFFFFFFFFFE@uint64;
      (* r4 += *[uint64 *] $crypto_sign_ed25519_amd64_51_2P1234 *)
add r4 r4 0xFFFFFFFFFFFFE@uint64;
      (* r0 -= y0 *)
sub r0 r0 y0;
      (* r1 -= y1 *)
sub r1 r1 y1;
      (* r2 -= y2 *)
sub r2 r2 y2;
      (* r3 -= y3 *)
sub r3 r3 y3;
      (* r4 -= y4 *)
sub r4 r4 y4;
      (*  *)
      (* #// var sum_x = x0@u320 + x1@u320 * 2**51 + x2@u320 * 2**102 + x3@u320 * 2**153 + x4@u320 * 2**204 *)
      (* #//     sum_y = y0@u320 + y1@u320 * 2**51 + y2@u320 * 2**102 + y3@u320 * 2**153 + y4@u320 * 2**204 *)
      (* #//     sum_r = r0@u320 + r1@u320 * 2**51 + r2@u320 * 2**102 + r3@u320 * 2**153 + r4@u320 * 2**204 *)
      (* #// assert (sum_r - (sum_x - sum_y)) % (2**255 - 19) = 0 && *)
      (* #//        0 <=u r0, r1, r2, r3, r4 <u 2**54 *)
{
  eqmod
    (
      (limbs 51 [x0, x1, x2, x3, x4])
      -
      (limbs 51 [y0, y1, y2, y3, y4])
    )
    (limbs 51 [r0, r1, r2, r3, r4])
    (((2**255 )- 19))
  &&
  and
  [
    r0 < const 64 (2**54),
    r1 < const 64 (2**54),
    r2 < const 64 (2**54),
    r3 < const 64 (2**54),
    r4 < const 64 (2**54)
  ]
}
