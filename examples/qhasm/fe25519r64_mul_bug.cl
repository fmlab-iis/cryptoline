
(* This is a buggy implementation of fe25519_mul with
   radix 2**64 representation. *)

proc main(uint64 xp0, uint64 xp1, uint64 xp2, uint64 xp3, uint64 yp0, uint64 yp1, uint64 yp2, uint64 yp3) =
{ true }
   (* int64 rp *)
   (* int64 xp *)
   (* int64 yp *)

   (* input rp *)
   (* input xp *)
   (* input yp *)

   (* int64 r0 *)
   (* int64 r1 *)
   (* int64 r2 *)
   (* int64 r3 *)

   (* #BEGIN MACRO callerregs_declare *)
   (* int64 caller1 *)
   (* int64 caller2 *)
   (* int64 caller3 *)
   (* int64 caller4 *)
   (* int64 caller5 *)
   (* int64 caller6 *)
   (* int64 caller7 *)
   (* caller caller1 *)
   (* caller caller2 *)
   (* caller caller3 *)
   (* caller caller4 *)
   (* caller caller5 *)
   (* caller caller6 *)
   (* caller caller7 *)
   (* stack64 caller1_stack *)
   (* stack64 caller2_stack *)
   (* stack64 caller3_stack *)
   (* stack64 caller4_stack *)
   (* stack64 caller5_stack *)
   (* stack64 caller6_stack *)
   (* stack64 caller7_stack *)
   (* #END MACRO callerregs_declare *)

   (* # Required for the mul template *)
   (* int64 mulr4 *)
   (* int64 mulr5 *)
   (* int64 mulr6 *)
   (* int64 mulr7 *)
   (* int64 mulrax *)
   (* int64 mulrdx *)
   (* int64 mulx0 *)
   (* int64 mulx1 *)
   (* int64 mulx2 *)
   (* int64 mulx3 *)
   (* int64 mulc *)
   (* int64 mulzero *)
   (* int64 muli38 *)

   (* enter fe25519_mul *)

   (* #BEGIN MACRO callerregs_save *)
   (* caller1_stack = caller1 *)
   (* caller2_stack = caller2 *)
   (* caller3_stack = caller3 *)
   (* caller4_stack = caller4 *)
   (* caller5_stack = caller5 *)
   (* caller6_stack = caller6 *)
   (* caller7_stack = caller7 *)
   (* #END MACRO callerregs_save *)

   (* yp = yp *)

   (* #BEGIN MACRO mul *)

   (* mulr4 = 0 *)
   (* mulr5 = 0 *)
   (* mulr6 = 0 *)
   (* mulr7 = 0 *)
   mov mulr4 0@uint64;
   mov mulr5 0@uint64;
   mov mulr6 0@uint64;
   mov mulr7 0@uint64;

   (* mulx0 = *[uint64 *](xp + 0) *)
   (* mulrax = *[uint64 *](yp + 0) *)
   (* (uint128) mulrdx mulrax = mulrax * mulx0 *)
   (* r0 = mulrax *)
   (* r1 = mulrdx *)
   mov mulx0 xp0;
   mov mulrax yp0;
   mull mulrdx mulrax mulrax mulx0;
   mov r0 mulrax;
   mov r1 mulrdx;

   (* mulrax = *[uint64 *](yp + 8) *)
   (* (uint128) mulrdx mulrax = mulrax * mulx0 *)
   (* carry? r1 += mulrax *)
   (* r2 = 0 *)
   (* r2 += mulrdx + carry *)
   mov mulrax yp1;
   mull mulrdx mulrax mulrax mulx0;
   adds carry r1 r1 mulrax;
   mov r2 0@uint64;
   adc r2 r2 mulrdx carry;

   (* mulrax = *[uint64 *](yp + 16) *)
   (* (uint128) mulrdx mulrax = mulrax * mulx0 *)
   (* carry? r2 += mulrax *)
   (* r3 = 0 *)
   (* r3 += mulrdx + carry *)
   mov mulrax yp2;
   mull mulrdx mulrax mulrax mulx0;
   adds carry r2 r2 mulrax;
   mov r3 0@uint64;
   adc r3 r3 mulrdx carry;

   (* mulrax = *[uint64 *](yp + 24) *)
   (* (uint128) mulrdx mulrax = mulrax * mulx0 *)
   (* carry? r3 += mulrax *)
   (* mulr4 += mulrdx + carry *)
   mov mulrax yp3;
   mull mulrdx mulrax mulrax mulx0;
   adds carry r3 r3 mulrax;
   adc mulr4 mulr4 mulrdx carry;

   (* mulx1 = *[uint64 *](xp + 8) *)
   (* mulrax = *[uint64 *](yp + 0) *)
   (* (uint128) mulrdx mulrax = mulrax * mulx1 *)
   (* carry? r1 += mulrax *)
   (* mulc = 0 *)
   (* mulc += mulrdx + carry *)
   mov mulx1 xp1;
   mov mulrax yp0;
   mull mulrdx mulrax mulrax mulx1;
   adds carry r1 r1 mulrax;
   mov mulc 0@uint64;
   adc mulc mulc mulrdx carry;

   (* mulrax = *[uint64 *](yp + 8) *)
   (* (uint128) mulrdx mulrax = mulrax * mulx1 *)
   (* carry? r2 += mulrax *)
   (* mulrdx += 0 + carry *)
   (* carry? r2 += mulc *)
   (* mulc = 0 *)
   (* mulc += mulrdx + carry *)
   mov mulrax yp1;
   mull mulrdx mulrax mulrax mulx1;
   adds carry r2 r2 mulrax;
   adc mulrdx mulrdx 0@uint64 carry;
   adds carry r2 r2 mulc;
   mov mulc 0@uint64;
   adc mulc mulc mulrdx carry;

   (* mulrax = *[uint64 *](yp + 16) *)
   (* (uint128) mulrdx mulrax = mulrax * mulx1 *)
   (* carry? r3 += mulrax *)
   (* mulrdx += 0 + carry *)
   (* carry? r3 += mulc *)
   (* mulc = 0 *)
   (* mulc += mulrdx + carry *)
   mov mulrax yp2;
   mull mulrdx mulrax mulrax mulx1;
   adds carry r3 r3 mulrax;
   adc mulrdx mulrdx 0@uint64 carry;
   adds carry r3 r3 mulc;
   mov mulc 0@uint64;
   adc mulc mulc mulrdx carry;

   (* mulrax = *[uint64 *](yp + 24) *)
   (* (uint128) mulrdx mulrax = mulrax * mulx1 *)
   (* carry? mulr4 += mulrax *)
   (* mulrdx += 0 + carry *)
   (* carry? mulr4 += mulc *)
   (* mulr5 += mulrdx + carry *)
   mov mulrax yp3;
   mull mulrdx mulrax mulrax mulx1;
   adds carry mulr4 mulr4 mulrax;
   adc mulrdx mulrdx 0@uint64 carry;
   adds carry mulr4 mulr4 mulc;
   adc mulr5 mulr5 mulrdx carry;

   (* mulx2 = *[uint64 *](xp + 16) *)
   (* mulrax = *[uint64 *](yp + 0) *)
   (* (uint128) mulrdx mulrax = mulrax * mulx2 *)
   (* carry? r2 += mulrax *)
   (* mulc = 0 *)
   (* mulc += mulrdx + carry *)
   mov mulx2 xp2;
   mov mulrax yp0;
   mull mulrdx mulrax mulrax mulx2;
   adds carry r2 r2 mulrax;
   mov mulc 0@uint64;
   adc mulc mulc mulrdx carry;

   (* mulrax = *[uint64 *](yp + 8) *)
   (* (uint128) mulrdx mulrax = mulrax * mulx2 *)
   (* carry? r3 += mulrax *)
   (* mulrdx += 0 + carry *)
   (* carry? r3 += mulc *)
   (* mulc = 0 *)
   (* mulc += mulrdx + carry *)
   mov mulrax yp1;
   mull mulrdx mulrax mulrax mulx2;
   adds carry r3 r3 mulrax;
   adc mulrdx mulrdx 0@uint64 carry;
   adds carry r3 r3 mulc;
   mov mulc 0@uint64;
   adc mulc mulc mulrdx carry;

   (* mulrax = *[uint64 *](yp + 16) *)
   (* (uint128) mulrdx mulrax = mulrax * mulx2 *)
   (* carry? mulr4 += mulrax *)
   (* mulrdx += 0 + carry *)
   (* carry? mulr4 += mulc *)
   (* mulc = 0 *)
   (* mulc += mulrdx + carry *)
   mov mulrax yp2;
   mull mulrdx mulrax mulrax mulx2;
   adds carry mulr4 mulr4 mulrax;
   adc mulrdx mulrdx 0@uint64 carry;
   adds carry mulr4 mulr4 mulc;
   mov mulc 0@uint64;
   adc mulc mulc mulrdx carry;

   (* mulrax = *[uint64 *](yp + 24) *)
   (* (uint128) mulrdx mulrax = mulrax * mulx2 *)
   (* carry? mulr5 += mulrax *)
   (* mulrdx += 0 + carry *)
   (* carry? mulr5 += mulc *)
   (* mulr6 += mulrdx + carry *)
   mov mulrax yp3;
   mull mulrdx mulrax mulrax mulx2;
   adds carry mulr5 mulr5 mulrax;
   adc mulrdx mulrdx 0@uint64 carry;
   adds carry mulr5 mulr5 mulc;
   adc mulr6 mulr6 mulrdx carry;

   (* mulx3 = *[uint64 *](xp + 24) *)
   (* mulrax = *[uint64 *](yp + 0) *)
   (* (uint128) mulrdx mulrax = mulrax * mulx3 *)
   (* carry? r3 += mulrax *)
   (* mulc = 0 *)
   (* mulc += mulrdx + carry *)
   mov mulx3 xp3;
   mov mulrax yp0;
   mull mulrdx mulrax mulrax mulx3;
   adds carry r3 r3 mulrax;
   mov mulc 0@uint64;
   adc mulc mulc mulrdx carry;

   (* mulrax = *[uint64 *](yp + 8) *)
   (* (uint128) mulrdx mulrax = mulrax * mulx3 *)
   (* carry? mulr4 += mulrax *)
   (* mulrdx += 0 + carry *)
   (* carry? mulr4 += mulc *)
   (* mulc = 0 *)
   (* mulc += mulrdx + carry *)
   mov mulrax yp1;
   mull mulrdx mulrax mulrax mulx3;
   adds carry mulr4 mulr4 mulrax;
   adc mulrdx mulrdx 0@uint64 carry;
   adds carry mulr4 mulr4 mulc;
   mov mulc 0@uint64;
   adc mulc mulc mulrdx carry;

   (* mulrax = *[uint64 *](yp + 16) *)
   (* (uint128) mulrdx mulrax = mulrax * mulx3 *)
   (* carry? mulr5 += mulrax *)
   (* mulrdx += 0 + carry *)
   (* carry? mulr5 += mulc *)
   (* mulc = 0 *)
   (* mulc += mulrdx + carry *)
   mov mulrax yp2;
   mull mulrdx mulrax mulrax mulx3;
   adds carry mulr5 mulr5 mulrax;
   adc mulrdx mulrdx 0@uint64 carry;
   adds carry mulr5 mulr5 mulc;
   mov mulc 0@uint64;
   adc mulc mulc mulrdx carry;

   (* mulrax = *[uint64 *](yp + 24) *)
   (* (uint128) mulrdx mulrax = mulrax * mulx3 *)
   (* carry? mulr6 += mulrax *)
   (* mulrdx += 0 + carry *)
   (* carry? mulr6 += mulc *)
   (* mulr7 += mulrdx + carry *)
   mov mulrax yp3;
   mull mulrdx mulrax mulrax mulx3;
   adds carry mulr6 mulr6 mulrax;
   adc mulrdx mulrdx 0@uint64 carry;
   adds carry mulr6 mulr6 mulc;
   adc mulr7 mulr7 mulrdx carry;

   (* mulrax = mulr4 *)
   (* (uint128) mulrdx mulrax = mulrax * *[uint64 *]$crypto_sign_ed25519_amd64_64_38 *)
   (* carry? r0 += mulrax *)
   (* carry? r1 += mulrdx + carry *)
   (* r1 += 0 + carry *)
   mov mulrax mulr4;
   mull mulrdx mulrax mulrax 38@uint64;
   adds carry r0 r0 mulrax;
   adcs carry r1 r1 mulrdx carry;
   adc r1 r1 0@uint64 carry;

   (* mulrax = mulr5 *)
   (* (uint128) mulrdx mulrax = mulrax * *[uint64 *]$crypto_sign_ed25519_amd64_64_38 *)
   (* carry? r1 += mulrax *)
   (* carry? r2 += mulrdx + carry *)
   (* r2 += 0 + carry *)
   mov mulrax mulr5;
   mull mulrdx mulrax mulrax 38@uint64;
   adds carry r1 r1 mulrax;
   adcs carry r2 r2 mulrdx carry;
   adc r2 r2 0@uint64 carry;

   (* mulrax = mulr6 *)
   (* (uint128) mulrdx mulrax = mulrax * *[uint64 *]$crypto_sign_ed25519_amd64_64_38 *)
   (* carry? r2 += mulrax *)
   (* carry? r3 += mulrdx + carry *)
   (* r3 += 0 + carry *)
   mov mulrax mulr6;
   mull mulrdx mulrax mulrax 38@uint64;
   adds carry r2 r2 mulrax;
   adcs carry r3 r3 mulrdx carry;
   adc r3 r3 0@uint64 carry;

   (* mulrax = mulr7 *)
   (* (uint128) mulrdx mulrax = mulrax * *[uint64 *]$crypto_sign_ed25519_amd64_64_38 *)
   (* carry? r3 += mulrax *)
   (* mulr4 = 0 *)
   (* mulr4 += mulrdx + carry *)
   mov mulrax mulr7;
   mull mulrdx mulrax mulrax 38@uint64;
   adds carry r3 r3 mulrax;
   mov mulr4 0@uint64;
   adc mulr4 mulr4 mulrdx carry;

   (* mulr4 *= 38 *)
   mul mulr4 mulr4 38@uint64;

   (* carry? r0 += mulr4 *)
   (* carry? r1 += 0 + carry *)
   (* carry? r2 += 0 + carry *)
   (* carry? r3 += 0 + carry *)
   adds carry r0 r0 mulr4;
   adcs carry r1 r1 0@uint64 carry;
   adcs carry r2 r2 0@uint64 carry;
   adcs carry r3 r3 0@uint64 carry;

   (* mulzero = 0 *)
   (* muli38 = 38 *)
   (* mulzero = muli38 if carry *)
   (* r0 += mulzero *)
   mov mulzero 0@uint64;
   mov muli38 38@uint64;
   vpc carry@uint64 carry;
   mul mulzero muli38 carry;
   add r0 r0 mulzero;

   (* #END MACRO mul *)
{
  eqmod
    (
      (limbs 64 [xp0, xp1, xp2, xp3])
      *
      (limbs 64 [yp0, yp1, yp2, yp3])
    )
    (limbs 64 [r0, r1, r2, r3])
    (((2**255 )- 19))
  &&
  true
}
