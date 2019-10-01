(* ========== fe25519_add ========== *)

proc fe25519_add(uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 x4, uint64 y0, uint64 y1, uint64 y2, uint64 y3, uint64 y4; uint64 r0, uint64 r1, uint64 r2, uint64 r3, uint64 r4) =
{
  true
  &&
  and [
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
      (* r0 += y0 *)
add r0 r0 y0;
      (* r1 += y1 *)
add r1 r1 y1;
      (* r2 += y2 *)
add r2 r2 y2;
      (* r3 += y3 *)
add r3 r3 y3;
      (* r4 += y4 *)
add r4 r4 y4;
      (*  *)
      (* #// var sum_x = x0@u320 + x1@u320 * 2**51 + x2@u320 * 2**102 + x3@u320 * 2**153 + x4@u320 * 2**204 *)
      (* #//     sum_y = y0@u320 + y1@u320 * 2**51 + y2@u320 * 2**102 + y3@u320 * 2**153 + y4@u320 * 2**204 *)
      (* #//     sum_r = r0@u320 + r1@u320 * 2**51 + r2@u320 * 2**102 + r3@u320 * 2**153 + r4@u320 * 2**204 *)
      (* #// assert (sum_r - (sum_x + sum_y)) % (2**255 - 19) = 0 && *)
      (* #//        0 <=u r0, r1, r2, r3, r4 <u 2**53 *)
{
  eqmod
    (
      (limbs 51 [x0, x1, x2, x3, x4])
      +
      (limbs 51 [y0, y1, y2, y3, y4])
    )
    (limbs 51 [r0, r1, r2, r3, r4])
    (((2**255 )- 19))
  &&
  and [
    r0 < const 64 (2**53),
    r1 < const 64 (2**53),
    r2 < const 64 (2**53),
    r3 < const 64 (2**53),
    r4 < const 64 (2**53)
  ]
}

(* ========== fe25519_sub ========== *)

proc fe25519_sub(uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 x4, uint64 y0, uint64 y1, uint64 y2, uint64 y3, uint64 y4; uint64 r0, uint64 r1, uint64 r2, uint64 r3, uint64 r4) =
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

(* ========== fe25519_mul121666 ========== *)

proc fe25519_mul121666(uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 x4; uint64 r0, uint64 r1, uint64 r2, uint64 r3, uint64 r4) =
{ true }
mov rax x0;
mull rdx rax rax 121666@uint64;
cshl rdx rax rdx rax 13;
mov r0 rax;
mov r1 rdx;
      (*    *)
mov rax x1;
mull rdx rax rax 121666@uint64;
cshl rdx rax rdx rax 13;
add r1 r1 rax;
mov r2 rdx;
      (*    *)
mov rax x2;
mull rdx rax rax 121666@uint64;
cshl rdx rax rdx rax 13;
add r2 r2 rax;
mov r3 rdx;
      (*    *)
mov rax x3;
mull rdx rax rax 121666@uint64;
cshl rdx rax rdx rax 13;
add r3 r3 rax;
mov r4 rdx;
      (*    *)
mov rax x4;
mull rdx rax rax 121666@uint64;
cshl rdx rax rdx rax 13;
add r4 r4 rax;
mul rdx rdx 19@uint64;
add r0 r0 rdx;
{
  eqmod (
      (limbs 51 [x0, x1, x2, x3, x4])
      *
      121666
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

(* ========== fe25519_mul ========== *)

proc fe25519_mul(uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 x4, uint64 y0, uint64 y1, uint64 y2, uint64 y3, uint64 y4; uint64 r0, uint64 r1, uint64 r2, uint64 r3, uint64 r4) =
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

(* ========== fe25519_sq ========== *)

proc fe25519_sq(uint64 x0, uint64  x1, uint64 x2, uint64 x3, uint64 x4; uint64 r0, uint64 r1, uint64 r2, uint64 r3, uint64 r4) =
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

(* ========== fe25519_ladderstep ========== *)

proc main(uint64 X1|0..4, uint64 X2|0..4, uint64 Z2|0..4, uint64 X3|0..4, uint64 Z3|0..4) =
{
  true
  &&
  and [
    X1_0 <= const 64 (2**51+2**15),
    X1_1 <= const 64 (2**51+2**15),
    X1_2 <= const 64 (2**51+2**15),
    X1_3 <= const 64 (2**51+2**15),
    X1_4 <= const 64 (2**51+2**15),
    X2_0 <= const 64 (2**51+2**15),
    X2_1 <= const 64 (2**51+2**15),
    X2_2 <= const 64 (2**51+2**15),
    X2_3 <= const 64 (2**51+2**15),
    X2_4 <= const 64 (2**51+2**15),
    Z2_0 <= const 64 (2**51+2**15),
    Z2_1 <= const 64 (2**51+2**15),
    Z2_2 <= const 64 (2**51+2**15),
    Z2_3 <= const 64 (2**51+2**15),
    Z2_4 <= const 64 (2**51+2**15),
    X3_0 <= const 64 (2**51+2**15),
    X3_1 <= const 64 (2**51+2**15),
    X3_2 <= const 64 (2**51+2**15),
    X3_3 <= const 64 (2**51+2**15),
    X3_4 <= const 64 (2**51+2**15),
    Z3_0 <= const 64 (2**51+2**15),
    Z3_1 <= const 64 (2**51+2**15),
    Z3_2 <= const 64 (2**51+2**15),
    Z3_3 <= const 64 (2**51+2**15),
    Z3_4 <= const 64 (2**51+2**15)
  ]
}
call fe25519_add(X2|0..4, Z2|0..4, T1|0..4);
call fe25519_sub(X2|0..4, Z2|0..4, T2|0..4);
call fe25519_sq(T2|0..4, T7|0..4);
call fe25519_sq(T1|0..4, T6|0..4);
call fe25519_sub(T6|0..4, T7|0..4, T5|0..4);
call fe25519_add(X3|0..4, Z3|0..4, T3|0..4);
call fe25519_sub(X3|0..4, Z3|0..4, T4|0..4);
call fe25519_mul(T3|0..4, T2|0..4, T9|0..4);
call fe25519_mul(T4|0..4, T1|0..4, T8|0..4);
call fe25519_add(T8|0..4, T9|0..4, X3_1|0..4);
call fe25519_sub(T8|0..4, T9|0..4, Z3_1|0..4);
call fe25519_sq(X3_1|0..4, X3p|0..4);
call fe25519_sq(Z3_1|0..4, Z3_2|0..4);
call fe25519_mul(Z3_2|0..4, X1|0..4, Z3p|0..4);
call fe25519_mul(T6|0..4, T7|0..4, X2p|0..4);
call fe25519_mul121666(T5|0..4, Z2_1|0..4);
call fe25519_add(Z2_1|0..4, T7|0..4, Z2_2|0..4);
call fe25519_mul(Z2_2|0..4, T5|0..4, Z2p|0..4);
{
  and
  [
     eqmod
     (limbs 51 [vars Z3p|0..4])
     (mul 4
             (mul (limbs 51 [vars X1|0..4])
                     (sq (sub (mul (limbs 51 [vars X3|0..4]) (limbs 51 [vars Z2|0..4]))
                                    (mul (limbs 51 [vars X2|0..4]) (limbs 51 [vars Z3|0..4]))))))
     (((2**255 )- 19))
  ]
  &&
  and
  [
    Z3p_0 <= const 64 (2**51+2**15),
    Z3p_1 <= const 64 (2**51+2**15),
    Z3p_2 <= const 64 (2**51+2**15),
    Z3p_3 <= const 64 (2**51+2**15),
    Z3p_4 <= const 64 (2**51+2**15)
  ]
}
