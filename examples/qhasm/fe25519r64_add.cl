
proc main(uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 y0, uint64 y1, uint64 y2, uint64 y3) =
{ true }
   (* int64 x0 *)
   (* int64 x1 *)
   (* int64 x2 *)
   (* int64 x3 *)

   (* int64 y0 *)
   (* int64 y1 *)
   (* int64 y2 *)
   (* int64 y3 *)

   (* int64 addt0 *)
   (* int64 addt1 *)

   (*   #// var sum_x() = x0@u512 + x1@u512 * 2**64 + x2@u512 * 2**128 + x3@u512 * 2**192 *)
   (*   #//     sum_y() = y0@u512 + y1@u512 * 2**64 + y2@u512 * 2**128 + y3@u512 * 2**192 *)
   (*   #//     init_sum_x = sum_x() *)
   (*   #//     init_sum_y = sum_y() *)

   (* carry? x0 += y0 *)
   (* carry? x1 += y1 + carry *)
   (* carry? x2 += y2 + carry *)
   (* carry? x3 += y3 + carry *)
   adds carry r0 x0 y0;
   adcs carry r1 x1 y1 carry;
   adcs carry r2 x2 y2 carry;
   adcs carry r3 x3 y3 carry;

   (* addt0 = 0 *)
   (* addt1 = 38 *)
   (* addt1 = addt0 if !carry *)
   mov addt0 0@uint64;
   mov addt1 38@uint64;
   cmov addt1 carry addt1 addt0;

   (* carry? x0 += addt1 *)
   (* carry? x1 += addt0 + carry *)
   (* carry? x2 += addt0 + carry *)
   (* carry? x3 += addt0 + carry *)
   adds carry r0 r0 addt1;
   adcs carry r1 r1 addt0 carry;
   adcs carry r2 r2 addt0 carry;
   adcs carry r3 r3 addt0 carry;

   (* addt0 = addt1 if carry *)
   (* x0 += addt0 *)
   # If the carry in the first if-condition is false, then the carry in the second
   # if-condition should also be false. However, in the polynomial view, it is
   # possible that the first carry is true but the second carry is false.
   mov addt1 38@uint64;
   cmov addt0 carry addt1 addt0;
   add r0 r0 addt0;

   (* #// assert (sum_x() - (init_sum_x + init_sum_y)) % (2**255 - 19) = 0 *)
{
  eqmod
  (
    (limbs 64 [x0, x1, x2, x3])
    +
    (limbs 64 [y0, y1, y2, y3])
  )
  (limbs 64 [r0, r1, r2, r3])
  (((2**255 )- 19))
  &&
  true
}
