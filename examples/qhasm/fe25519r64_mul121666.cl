proc main(uint64 x0, uint64 x1, uint64 x2, uint64 x3; uint64 r0, uint64 r1, uint64 r2, uint64 r3) =
{ true }
    /* # CPU: Intel(R) Xeon(R) CPU X5675 @ 3.07GHz */
    /* # RAM: 32GB */
    /* # Configuration: -c consts -s */
    /* # With Boolector 1.6.0 (-minisat): 0m2.034s */
    /*  */
    /* int64 rp */
    /* int64 xp */
    /*  */
    /* input rp */
    /* input xp */
    /*  */
    /* int64 t1 */
    /* int64 t2 */
    /* int64 t3 */
    /*  */
    /* int64 r0 */
    /* int64 r1 */
    /* int64 r2 */
    /* int64 r3 */
    /* int64 r4 */
    /*  */
    /* int64 rax */
    /* int64 rdx */
    /*  */
    /*  */
    /*   #BEGIN MACRO callerregs_declare */
    /*   int64 caller1 */
    /*   int64 caller2 */
    /*   int64 caller3 */
    /*   int64 caller4 */
    /*   int64 caller5 */
    /*   int64 caller6 */
    /*   int64 caller7 */
    /*   caller caller1 */
    /*   caller caller2 */
    /*   caller caller3 */
    /*   caller caller4 */
    /*   caller caller5 */
    /*   caller caller6 */
    /*   caller caller7 */
    /*   stack64 caller1_stack */
    /*   stack64 caller2_stack */
    /*   stack64 caller3_stack */
    /*   stack64 caller4_stack */
    /*   stack64 caller5_stack */
    /*   stack64 caller6_stack */
    /*   stack64 caller7_stack */
    /*   #END MACRO callerregs_declare */
    /*  */
    /*  */
    /* # Required for mul121666 macro */
    /* int64 mul121666rax */
    /* int64 mul121666rdx */
    /* int64 mul121666r4 */
    /* int64 mul121666t1 */
    /* int64 mul121666t2 */
    /* int64 mul121666t3 */
    /*  */
    /* enter fe25519_mul121666 */
    /*  */
    /* caller1_stack = caller1 */
    /* caller2_stack = caller2 */
    /*  */
    /* ################################################################### */
    /* # Conditions on the inputs: x0 = *(uint64 *)(xp +  0), */
    /* #                           x1 = *(uint64 *)(xp +  8), */
    /* #                           x2 = *(uint64 *)(xp + 16), */
    /* #                           x3 = *(uint64 *)(xp + 24) are all arbitrary 64-bit unsigned integers */
    /* # */
    /* ################################################################### */
    /*  */
    /*  */
    /*   #BEGIN MACRO mul121666 */
    /*   mul121666rax = *(uint64 *)(xp + 0) */
    /*   (uint128) mul121666rdx mul121666rax = mul121666rax * *(uint64 *)$crypto_sign_ed25519_amd64_64_121666 */
    /*   r0 = mul121666rax */
    /*   r1 = mul121666rdx */
mov mul121666rax x0;
mull mul121666rdx mul121666rax mul121666rax 121666@uint64;
mov r0 mul121666rax;
mov r1 mul121666rdx;
    /*  */
    /*   mul121666rax = *(uint64 *)(xp + 16) */
    /*   (uint128) mul121666rdx mul121666rax = mul121666rax * *(uint64 *)$crypto_sign_ed25519_amd64_64_121666 */
    /*   r2 = mul121666rax */
    /*   r3 = mul121666rdx */
mov mul121666rax x2;
mull mul121666rdx mul121666rax mul121666rax 121666@uint64;
mov r2 mul121666rax;
mov r3 mul121666rdx;
    /*    */
    /*   mul121666rax = *(uint64 *)(xp + 8) */
    /*   (uint128) mul121666rdx mul121666rax = mul121666rax * *(uint64 *)$crypto_sign_ed25519_amd64_64_121666 */
    /*   mul121666t1 = mul121666rax */
    /*   mul121666t2 = mul121666rdx */
mov mul121666rax x1;
mull mul121666rdx mul121666rax mul121666rax 121666@uint64;
mov mul121666t1 mul121666rax;
mov mul121666t2 mul121666rdx;
    /*    */
    /*   mul121666rax = *(uint64 *)(xp + 24) */
    /*   (uint128) mul121666rdx mul121666rax = mul121666rax * *(uint64 *)$crypto_sign_ed25519_amd64_64_121666 */
    /*   mul121666t3 = mul121666rax */
    /*   mul121666r4 = mul121666rdx */
mov mul121666rax x3;
mull mul121666rdx mul121666rax mul121666rax 121666@uint64;
mov mul121666t3 mul121666rax;
mov mul121666r4 mul121666rdx;
    /*  */
    /*   carry? r1 += mul121666t1 */
    /*   carry? r2 += mul121666t2 + carry */
    /*   carry? r3 += mul121666t3 + carry */
    /*   mul121666r4 += 0 + carry */
adds carry r1 r1 mul121666t1;
adcs carry r2 r2 mul121666t2 carry;
adcs carry r3 r3 mul121666t3 carry;
adc mul121666r4 mul121666r4 0@uint64 carry;
    /*  */
    /*   #// cut r0@u512 + r1@u512 << 64 + r2@u512 << 128 + r3@u512 << 192 + mul121666r4@u512 << 256 = */
    /*   #//     xp[0]@u512 * 121666 + (xp[16]@u512 << 128) * 121666 + (xp[8]@u512 << 64) * 121666 + (xp[24]@u512 << 192) * 121666 */
    /*  */
    /*   #// var r0_0 = r0 */
    /*   #//     r1_0 = r1 */
    /*   #//     r2_0 = r2 */
    /*   #//     r3_0 = r3 */
    /*   #//     mul121666r4_0 = mul121666r4 */
    /*  */
    /*   mul121666r4 *= 38 */
    /*   carry? r0 += mul121666r4 */
    /*   carry? r1 += 0 + carry */
    /*   carry? r2 += 0 + carry */
    /*   carry? r3 += 0 + carry */
mul mul121666r4 mul121666r4 38@uint64;
adds carry r0 r0 mul121666r4;
adcs carry r1 r1 0@uint64 carry;
adcs carry r2 r2 0@uint64 carry;
adcs carry r3 r3 0@uint64 carry;
    /*  */
    /*   #// var r0_1 = r0 */
    /*   #//     r1_1 = r1 */
    /*   #//     r2_1 = r2 */
    /*   #//     r3_1 = r3 */
    /*   #//     mul121666r4_1 = mul121666r4 */
    /*  */
    /*   #// cut (r0_0@u70 + 38 * mul121666r4_0@u70)@u512 + r1_0@u512 << 64 + r2_0@u512 << 128 + r3_0@u512 << 192 = */
    /*   #//     r0_1@u512 + r1_1@u512 << 64 + r2_1@u512 << 128 + r3_1@u512 << 192 + carry@u512 << 256 && */
    /*   #//     r0 = r0_1 && */
    /*   #//     r1 = r1_1 && */
    /*   #//     r2 = r2_1 && */
    /*   #//     r3 = r3_1 && */
    /*   #//     (carry = 0 &&| carry = 1) */
    /*    */
    /*   mul121666t1 = 38 */
    /*   mul121666t2 = 0 */
    /*   mul121666t1 = mul121666t2 if !carry */
    /*   r0 += mul121666t1 */
mov mul121666t1 38@uint64;
mov mul121666t2 0@uint64;
cmov mul121666t1 carry mul121666t1 mul121666t2;
add r0 r0 mul121666t1;
    /*  */
    /*   #// var r0_2 = r0 */
    /*   #//     r1_2 = r1 */
    /*   #//     r2_2 = r2 */
    /*   #//     r3_2 = r3 */
    /*  */
    /*   #// cut r0_2@u512 + r1_2@u512 << 64 + r2_2@u512 << 128 + r3_2@u512 << 192 = */
    /*   #//     (r0_1@u70 + 38 * carry@u70)@u512 + r1_1@u512 << 64 + r2_1@u512 << 128 + r3_1@u512 << 192 */
    /*  */
    /*   #END MACRO mul121666 */
    /*  */
    /* ################################################################### */
    /* # The following should hold at this point: */
    /* # */
    /* # (x0 + 2**64*x1 + 2**128*x2 + 2**192*x3) * 121666  congruent (r0 + 2**64*r1 + 2**128*r2 + 2**192*r3) (modulo 2**255-19) */
    /* # */
    /* ################################################################### */
    /*  */
    /*  */
    /* *(uint64 *)(rp + 0) = r0 */
    /* *(uint64 *)(rp + 8) = r1 */
    /* *(uint64 *)(rp + 16) = r2 */
    /* *(uint64 *)(rp + 24) = r3 */
    /*  */
    /* caller1 = caller1_stack */
    /* caller2 = caller2_stack */
    /*  */
    /* leave */
{
  eqmod
    (
      (limbs 64 [x0, x1, x2, x3])
      *
      121666
    )
    (limbs 64 [r0, r1, r2, r3])
    (((2**255 )- 19))
  &&
  true
}