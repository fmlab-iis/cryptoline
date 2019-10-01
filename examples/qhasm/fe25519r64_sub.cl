proc main(uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 y0, uint64 y1, uint64 y2, uint64 y3; uint64 r0, uint64 r1, uint64 r2, uint64 r3) =
{ true }
    (* int64 x0 *)
    (* int64 x1 *)
    (* int64 x2 *)
    (* int64 x3 *)
    (*  *)
    (* int64 y0 *)
    (* int64 y1 *)
    (* int64 y2 *)
    (* int64 y3 *)
    (*  *)
    (* int64 r0 *)
    (* int64 r1 *)
    (* int64 r2 *)
    (* int64 r3 *)
    (*  *)
    (* int64 subt0 *)
    (* int64 subt1 *)
    (*  *)
    (* r0 = x0 *)
    (* r1 = x1 *)
    (* r2 = x2 *)
    (* r3 = x3 *)
mov r0 x0;
mov r1 x1;
mov r2 x2;
mov r3 x3;
    (*  *)
    (*   #// var sum_x() = x0@u512 + x1@u512 * 2**64 + x2@u512 * 2**128 + x3@u512 * 2**192 *)
    (*   #//     sum_y() = y0@u512 + y1@u512 * 2**64 + y2@u512 * 2**128 + y3@u512 * 2**192 *)
    (*   #//     sum_r() = r0@u512 + r1@u512 * 2**64 + r2@u512 * 2**128 + r3@u512 * 2**192 *)
    (*  *)
    (*   #BEGIN MACRO sub *)
    (*   carry? r0 -= y0 *)
    (*   carry? r1 -= y1 - carry *)
    (*   carry? r2 -= y2 - carry *)
    (*   carry? r3 -= y3 - carry *)
subb carry r0 r0 y0;
sbbs carry r1 r1 y1 carry;
sbbs carry r2 r2 y2 carry;
sbbs carry r3 r3 y3 carry;
    (*  *)
    (*   subt0 = 0 *)
    (*   subt1 = 38 *)
    (*   subt1 = subt0 if !carry *)
mov subt0 0@uint64;
mov subt1 38@uint64;
cmov subt1 carry subt1 subt0;
    (*  *)
    (*   carry? r0 -= subt1 *)
    (*   carry? r1 -= subt0 - carry *)
    (*   carry? r2 -= subt0 - carry *)
    (*   carry? r3 -= subt0 - carry *)
subb carry r0 r0 subt1;
sbbs carry r1 r1 subt0 carry;
sbbs carry r2 r2 subt0 carry;
sbbs carry r3 r3 subt0 carry;
    (*  *)
    (*   subt0 = subt1 if carry *)
    (*   r0 -= subt0 *)
# If the carry in the first if-condition is false, then the carry in the second
# if-condition should also be false. However, in the polynomial view, it is
# possible that the first carry is true but the second carry is false.
mov subt1 38@uint64;
cmov subt0 carry subt1 subt0;
sub r0 r0 subt0;
    (*   #END MACRO sub *)
    (*  *)
    (*   #// assert (sum_r() - (sum_x() - sum_y())) % (2**255 - 19) = 0 *)
{
  eqmod
    (
      (limbs 64 [x0, x1, x2, x3])
      -
      (limbs 64 [y0, y1, y2, y3])
    )
    (limbs 64 [r0, r1, r2, r3])
    (((2**255 )- 19))
  &&
  true
}
