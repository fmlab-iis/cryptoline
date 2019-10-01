# Not verified.

proc main(uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 y0, uint64 y1, uint64 y2, uint64 y3; uint64 r0, uint64 r1, uint64 r2, uint64 r3) =
{ true }
    /* # CPU: Intel(R) Xeon(R) CPU X5675 @ 3.07GHz */
    /* # RAM: 32GB */
    /* # Configuration: -c consts */
    /* # With Boolector 1.6.0 (-m -v -minisat): Killed after 5196m29.288s */
    /*  */
    /* int64 rp */
    /* int64 xp */
    /* int64 yp */
    /*  */
    /* input rp */
    /* input xp */
    /* input yp */
    /*  */
    /* int64 r0 */
    /* int64 r1 */
    /* int64 r2 */
    /* int64 r3 */
    /*  */
    /*  */
    /* int64 caller1 */
    /* int64 caller2 */
    /* int64 caller3 */
    /* int64 caller4 */
    /* int64 caller5 */
    /* int64 caller6 */
    /* int64 caller7 */
    /* caller caller1 */
    /* caller caller2 */
    /* caller caller3 */
    /* caller caller4 */
    /* caller caller5 */
    /* caller caller6 */
    /* caller caller7 */
    /* stack64 caller1_stack */
    /* stack64 caller2_stack */
    /* stack64 caller3_stack */
    /* stack64 caller4_stack */
    /* stack64 caller5_stack */
    /* stack64 caller6_stack */
    /* stack64 caller7_stack */
    /*  */
    /* int64 r4 */
    /* int64 r5 */
    /* int64 r6 */
    /* int64 r7 */
    /* int64 r8 */
    /* int64 rax */
    /* int64 rdx */
    /* int64 x0 */
    /* int64 x1 */
    /* int64 x2 */
    /* int64 x3 */
    /* int64 c */
    /* int64 zero */
    /* int64 i38 */
    /*  */
    /* enter fe25519_mul */
    /*  */
    /* ################################################################### */
    /* # Conditions on the inputs: x0 = *(uint64 *)(xp +  0), */
    /* #                           x1 = *(uint64 *)(xp +  8), */
    /* #                           x2 = *(uint64 *)(xp + 16), */
    /* #                           x3 = *(uint64 *)(xp + 24), */
    /* #                           y0 = *(uint64 *)(yp +  0), */
    /* #                           y1 = *(uint64 *)(yp +  8), */
    /* #                           y2 = *(uint64 *)(yp + 16) */
    /* #                           y3 = *(uint64 *)(yp + 24) are all arbitrary 64-bit unsigned integers */
    /* # */
    /* ################################################################### */
    /*  */
    /*  */
    /*  */
    /* caller1_stack = caller1 */
    /* caller2_stack = caller2 */
    /* caller3_stack = caller3 */
    /* caller4_stack = caller4 */
    /* caller5_stack = caller5 */
    /* caller6_stack = caller6 */
    /* caller7_stack = caller7 */
    /*  */
    /* yp = yp */
    /*  */
    /* #// var xp0 = mem64[xp +  0]@u128 */
    /* #//     xp1 = mem64[xp +  8]@u128 */
    /* #//     xp2 = mem64[xp +  16]@u128 */
    /* #//     xp3 = mem64[xp +  24]@u128 */
    /* #//     yp0 = mem64[yp +  0]@u128 */
    /* #//     yp1 = mem64[yp +  8]@u128 */
    /* #//     yp2 = mem64[yp +  16]@u128 */
    /* #//     yp3 = mem64[yp +  24]@u128 */
    /*  */
    /*   #BEGIN MACRO */
    /*   r4 = 0 */
    /*   r5 = 0 */
    /*   r6 = 0 */
    /*   r7 = 0 */
mov r4 0@uint64 ;
mov r5 0@uint64 ;
mov r6 0@uint64 ;
mov r7 0@uint64 ;
    /*  */
    /*   x0 = *(uint64 *)(xp + 0) */
    /*   rax = *(uint64 *)(yp + 0) */
    /*   (uint128) rdx rax = rax * x0 */
    /*   r0 = rax */
    /*   r1 = rdx */
mov rax y0;
mull rdx rax rax x0;
mov r0 rax;
mov r1 rdx;
    /*  */
    /*   rax = *(uint64 *)(yp + 8) */
    /*   (uint128) rdx rax = rax * x0 */
    /*   carry? r1 += rax */
    /*   r2 = 0 */
    /*   r2 += rdx + carry */
mov rax y1;
mull rdx rax rax x0;
adds carry r1 r1 rax;
mov r2 0@uint64 ;
adc r2 r2 rdx carry;
    /*  */
    /*   rax = *(uint64 *)(yp + 16) */
    /*   (uint128) rdx rax = rax * x0 */
    /*   carry? r2 += rax */
    /*   r3 = 0 */
    /*   r3 += rdx + carry */
mov rax y2;
mull rdx rax rax x0;
adds carry r2 r2 rax;
mov r3 0@uint64 ;
adc r3 r3 rdx carry;
    /*  */
    /*   rax = *(uint64 *)(yp + 24) */
    /*   (uint128) rdx rax = rax * x0 */
    /*   carry? r3 += rax */
    /*   r4 += rdx + carry */
mov rax y3;
mull rdx rax rax x0;
adds carry r3 r3 rax;
adc r4 r4 rdx carry;
    /*  */
    /*  */
    /*   x1 = *(uint64 *)(xp + 8) */
    /*   rax = *(uint64 *)(yp + 0) */
    /*   (uint128) rdx rax = rax * x1 */
    /*   carry? r1 += rax */
    /*   c = 0 */
    /*   c += rdx + carry */
mov rax y0;
mull rdx rax rax x1;
adds carry r1 r1 rax;
mov c 0@uint64 ;
adc c c rdx carry;
    /*  */
    /*   rax = *(uint64 *)(yp + 8) */
    /*   (uint128) rdx rax = rax * x1 */
    /*   carry? r2 += rax */
    /*   rdx += 0 + carry */
    /*   carry? r2 += c */
    /*   c = 0 */
    /*   c += rdx + carry */
mov rax y1;
mull rdx rax rax x1;
adds carry r2 r2 rax;
adc rdx rdx 0@uint64  carry;
adds carry r2 r2 c;
mov c 0@uint64 ;
adc c c rdx carry;
    /*  */
    /*   rax = *(uint64 *)(yp + 16) */
    /*   (uint128) rdx rax = rax * x1 */
    /*   carry? r3 += rax */
    /*   rdx += 0 + carry */
    /*   carry? r3 += c */
    /*   c = 0 */
    /*   c += rdx + carry */
mov rax y2;
mull rdx rax rax x1;
adds carry r3 r3 rax;
adc rdx rdx 0@uint64  carry;
adds carry r3 r3 c;
mov c 0@uint64 ;
adc c c rdx carry;
    /*  */
    /*   rax = *(uint64 *)(yp + 24) */
    /*   (uint128) rdx rax = rax * x1 */
    /*   carry? r4 += rax */
    /*   rdx += 0 + carry */
    /*   carry? r4 += c */
    /*   r5 += rdx + carry */
mov rax y3;
mull rdx rax rax x1;
adds carry r4 r4 rax;
adc rdx rdx 0@uint64  carry;
adds carry r4 r4 c;
adc r5 r5 rdx carry;
    /*  */
    /*  */
    /*   x2 = *(uint64 *)(xp + 16) */
    /*   rax = *(uint64 *)(yp + 0) */
    /*   (uint128) rdx rax = rax * x2 */
    /*   carry? r2 += rax */
    /*   c = 0 */
    /*   c += rdx + carry */
mov rax y0;
mull rdx rax rax x2;
adds carry r2 r2 rax;
mov c 0@uint64 ;
adc c c rdx carry;
    /*  */
    /*   rax = *(uint64 *)(yp + 8) */
    /*   (uint128) rdx rax = rax * x2 */
    /*   carry? r3 += rax */
    /*   rdx += 0 + carry */
    /*   carry? r3 += c */
    /*   c = 0 */
    /*   c += rdx + carry */
mov rax y1;
mull rdx rax rax x2;
adds carry r3 r3 rax;
adc rdx rdx 0@uint64  carry;
adds carry r3 r3 c;
mov c 0@uint64 ;
adc c c rdx carry;
    /*  */
    /*   rax = *(uint64 *)(yp + 16) */
    /*   (uint128) rdx rax = rax * x2 */
    /*   carry? r4 += rax */
    /*   rdx += 0 + carry */
    /*   carry? r4 += c */
    /*   c = 0 */
    /*   c += rdx + carry */
mov rax y2;
mull rdx rax rax x2;
adds carry r4 r4 rax;
adc rdx rdx 0@uint64  carry;
adds carry r4 r4 c;
mov c 0@uint64 ;
adc c c rdx carry;
    /*  */
    /*   rax = *(uint64 *)(yp + 24) */
    /*   (uint128) rdx rax = rax * x2 */
    /*   carry? r5 += rax */
    /*   rdx += 0 + carry */
    /*   carry? r5 += c */
    /*   r6 += rdx + carry */
mov rax y3;
mull rdx rax rax x2;
adds carry r5 r5 rax;
adc rdx rdx 0@uint64  carry;
adds carry r5 r5 c;
adc r6 r6 rdx carry;
    /*  */
    /*  */
    /*   x3 = *(uint64 *)(xp + 24) */
    /*   rax = *(uint64 *)(yp + 0) */
    /*   (uint128) rdx rax = rax * x3 */
    /*   carry? r3 += rax */
    /*   c = 0 */
    /*   c += rdx + carry */
mov rax y0;
mull rdx rax rax x3;
adds carry r3 r3 rax;
mov c 0@uint64 ;
adc c c rdx carry;
    /*  */
    /*   rax = *(uint64 *)(yp + 8) */
    /*   (uint128) rdx rax = rax * x3 */
    /*   carry? r4 += rax */
    /*   rdx += 0 + carry */
    /*   carry? r4 += c */
    /*   c = 0 */
    /*   c += rdx + carry */
mov rax y1;
mull rdx rax rax x3;
adds carry r4 r4 rax;
adc rdx rdx 0@uint64  carry;
adds carry r4 r4 c;
mov c 0@uint64 ;
adc c c rdx carry;
    /*  */
    /*   rax = *(uint64 *)(yp + 16) */
    /*   (uint128) rdx rax = rax * x3 */
    /*   carry? r5 += rax */
    /*   rdx += 0 + carry */
    /*   carry? r5 += c */
    /*   c = 0 */
    /*   c += rdx + carry */
mov rax y2;
mull rdx rax rax x3;
adds carry r5 r5 rax;
adc rdx rdx 0@uint64  carry;
adds carry r5 r5 c;
mov c 0@uint64 ;
adc c c rdx carry;
    /*  */
    /*   rax = *(uint64 *)(yp + 24) */
    /*   (uint128) rdx rax = rax * x3 */
    /*   carry? r6 += rax */
    /*   rdx += 0 + carry */
    /*   carry? r6 += c */
    /*   r7 += rdx + carry */
mov rax y3;
mull rdx rax rax x3;
adds carry r6 r6 rax;
adc rdx rdx 0@uint64  carry;
adds carry r6 r6 c;
adc r7 r7 rdx carry;
    /*  */
    /*   #// var x0y0 = (xp0@u128 * yp0@u128)@u512 */
    /*   #//     x0y1 = (xp0@u128 * yp1@u128)@u512 */
    /*   #//     x0y2 = (xp0@u128 * yp2@u128)@u512 */
    /*   #//     x0y3 = (xp0@u128 * yp3@u128)@u512 */
    /*   #//     x1y0 = (xp1@u128 * yp0@u128)@u512 */
    /*   #//     x1y1 = (xp1@u128 * yp1@u128)@u512 */
    /*   #//     x1y2 = (xp1@u128 * yp2@u128)@u512 */
    /*   #//     x1y3 = (xp1@u128 * yp3@u128)@u512 */
    /*   #//     x2y0 = (xp2@u128 * yp0@u128)@u512 */
    /*   #//     x2y1 = (xp2@u128 * yp1@u128)@u512 */
    /*   #//     x2y2 = (xp2@u128 * yp2@u128)@u512 */
    /*   #//     x2y3 = (xp2@u128 * yp3@u128)@u512 */
    /*   #//     x3y0 = (xp3@u128 * yp0@u128)@u512 */
    /*   #//     x3y1 = (xp3@u128 * yp1@u128)@u512 */
    /*   #//     x3y2 = (xp3@u128 * yp2@u128)@u512 */
    /*   #//     x3y3 = (xp3@u128 * yp3@u128)@u512 */
    /*   #// const (2**64)@u256 (2**128)@u256 (2**192)@u256 */
    /*   #// var lhs = x0y0 + */
    /*   #//           (x0y1 + x1y0) * 2**64 + */
    /*   #//           (x0y2 + x1y1 + x2y0) * 2**128 + */
    /*   #//           (x0y3 + x1y2 + x2y1 + x3y0) * 2**192 + */
    /*   #//           (x1y3 + x2y2 + x3y1) * 2**256 + */
    /*   #//           (x2y3 + x3y2) * 2**320 + */
    /*   #//           x3y3 * 2**384 */
    /*   #//     rhs = r0@u512 + r1@u512 * 2**64 + r2@u512 * 2**128 + r3@u512 * 2**192 + */
    /*   #//           r4@u512 * 2**256 + r5@u512 * 2**320 + r6@u512 * 2**384 + r7@u512 * 2**448 */
    /*   #// assert lhs = rhs */
    /*  */
    /* ################################################################### */
    /* # The following should hold at this point: */
    /* # */
    /* # (x0 + 2**64*x1 + 2**128*x2 + 2**192*x3) * (y0 + 2**64*x1 + 2**128*y2 + 2**192*y3) = (r0 + 2**64*r1 + 2**128*r2 + 2**192*r3 + 2**256*r4 + 2**320*r5 + 2**384*r6 + 2**448*r7) */
    /* # */
    /* ################################################################### */
    /*  */
    /*  */
    /*   rax = r4 */
    /*   (uint128) rdx rax = rax * *(uint64 *)$crypto_sign_ed25519_amd64_64_38 */
mov rax r4;
mull rdx rax rax 38@uint64 ;
    /*  */
    /*   r4 = rax */
    /*   rax = r5 */
    /*   r5 = rdx */
mov r4 rax;
mov rax r5;
mov r5 rdx;
    /*  */
    /*   (uint128) rdx rax = rax * *(uint64 *)$crypto_sign_ed25519_amd64_64_38 */
mull rdx rax rax 38@uint64 ;
    /*  */
    /*   carry? r5 += rax */
    /*   rax = r6 */
    /*   r6 = 0 */
    /*   r6 += rdx + carry */
adds carry r5 r5 rax;
mov rax r6;
mov r6 0@uint64 ;
adc r6 r6 rdx carry;
    /*  */
    /*   (uint128) rdx rax = rax * *(uint64 *)$crypto_sign_ed25519_amd64_64_38 */
mull rdx rax rax 38@uint64 ;
    /*  */
    /*   carry? r6 += rax */
    /*   rax = r7 */
    /*   r7 = 0 */
    /*   r7 += rdx + carry */
adds carry r6 r6 rax;
mov rax r7;
mov r7 0@uint64 ;
adc r7 r7 rdx carry;
    /*  */
    /*   (uint128) rdx rax = rax * *(uint64 *)$crypto_sign_ed25519_amd64_64_38 */
mull rdx rax rax 38@uint64 ;
    /*  */
    /*   carry? r7 += rax */
    /*   r8 = 0 */
    /*   r8 += rdx + carry */
adds carry r7 r7 rax;
mov r8 0@uint64 ;
adc r8 r8 rdx carry;
    /*  */
    /*   carry? r0 += r4 */
    /*   carry? r1 += r5 + carry */
    /*   carry? r2 += r6 + carry */
    /*   carry? r3 += r7 + carry */
adds carry r0 r0 r4;
adcs carry r1 r1 r5 carry;
adcs carry r2 r2 r6 carry;
adcs carry r3 r3 r7 carry;
    /*  */
    /*   zero = 0 */
    /*   r8 += zero + carry */
    /*   r8 *= 38 */
    /*   carry? r0 += r8 */
    /*   carry? r1 += zero + carry */
    /*   carry? r2 += zero + carry */
    /*   r3 += zero + carry */
mov zero 0@uint64 ;
adc r8 r8 zero carry;
mul r8 r8 38@uint64 ;
adds carry r0 r0 r8;
adcs carry r1 r1 zero carry;
adcs carry r2 r2 zero carry;
adc r3 r3 zero carry;
    /*  */
    /* ################################################################### */
    /* # The following should hold at this point: */
    /* # */
    /* # (x0 + 2**64*x1 + 2**128*x2 + 2**192*x3) * (y0 + 2**64*x1 + 2**128*y2 + 2**192*y3) congruent (r0 + 2**64*r1 + 2**128*r2 + 2**192*r3) (modulo 2**255-19) */
    /* # */
    /* ################################################################### */
    /*  */
    /* *(uint64 *)(rp + 8) = r1 */
    /* *(uint64 *)(rp + 16) = r2 */
    /* *(uint64 *)(rp + 24) = r3 */
    /* *(uint64 *)(rp + 0) = r0 */
    /*  */
    /*  */
    /*   caller1 = caller1_stack */
    /*   caller2 = caller2_stack */
    /*   caller3 = caller3_stack */
    /*   caller4 = caller4_stack */
    /*   caller5 = caller5_stack */
    /*   caller6 = caller6_stack */
    /*   caller7 = caller7_stack */
    /*  */
    /*  */
    /* leave */
{
  eqmod
  (
    (limbs 64 [x0, x1, x2, x3])
    *
    (limbs 64 [y0, y1, y2, y3])
  )
  (limbs 64 [r0, r1, r2, r3])
  (((2**255 )- 19))
  &&
  true
}
