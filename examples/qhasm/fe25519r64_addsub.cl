proc main(uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 y0, uint64 y1, uint64 y2, uint64 y3; uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 b0, uint64 b1, uint64 b2, uint64 b3) =
{ true && true}
    (* # CPU: Intel(R) Xeon(R) CPU X5675 @ 3.07GHz *)
    (* # RAM: 32GB *)
    (* # Configuration: -c consts -s *)
    (* # With Boolector 1.6.0 (-minisat): 0m19.275s *)
    (*  *)
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
    (* int64 a0 *)
    (* int64 a1 *)
    (* int64 a2 *)
    (* int64 a3 *)
    (*  *)
    (* int64 b0 *)
    (* int64 b1 *)
    (* int64 b2 *)
    (* int64 b3 *)
    (*  *)
    (* int64 addt0 *)
    (* int64 addt1 *)
    (*  *)
    (* int64 subt0 *)
    (* int64 subt1 *)
    (*  *)
    (* a0 = x0 *)
    (* a1 = x1 *)
    (* a2 = x2 *)
    (* a3 = x3 *)
    (* b0 = a0 *)
    (* b1 = a1 *)
    (* b2 = a2 *)
    (* b3 = a3 *)
mov a0 x0;
mov a1 x1;
mov a2 x2;
mov a3 x3;
mov b0 a0;
mov b1 a1;
mov b2 a2;
mov b3 a3;
    (*  *)
    (*   #// var sum_x() = x0@u512 + x1@u512 * 2**64 + x2@u512 * 2**128 + x3@u512 * 2**192 *)
    (*   #//     sum_y() = y0@u512 + y1@u512 * 2**64 + y2@u512 * 2**128 + y3@u512 * 2**192 *)
    (*   #//     sum_a() = a0@u512 + a1@u512 * 2**64 + a2@u512 * 2**128 + a3@u512 * 2**192 *)
    (*   #//     sum_b() = b0@u512 + b1@u512 * 2**64 + b2@u512 * 2**128 + b3@u512 * 2**192 *)
    (*  *)
    (*   #BEGIN MACRO add *)
    (*   carry? a0 += y0 *)
    (*   carry? a1 += y1 + carry *)
    (*   carry? a2 += y2 + carry *)
    (*   carry? a3 += y3 + carry *)
adds carry a0 a0 y0;
adcs carry a1 a1 y1 carry;
adcs carry a2 a2 y2 carry;
adcs carry a3 a3 y3 carry;
    (*  *)
    (*   addt0 = 0 *)
    (*   addt1 = 38 *)
    (*   addt1 = addt0 if !carry *)
mov addt0 0@uint64 ;
mov addt1 38@uint64 ;
cmov addt1 carry addt1 addt0;
    (*  *)
    (*   carry? a0 += addt1 *)
    (*   carry? a1 += addt0 + carry *)
    (*   carry? a2 += addt0 + carry *)
    (*   carry? a3 += addt0 + carry *)
adds carry a0 a0 addt1;
adcs carry a1 a1 addt0 carry;
adcs carry a2 a2 addt0 carry;
adcs carry a3 a3 addt0 carry;
    (*  *)
    (*   addt0 = addt1 if carry *)
    (*   a0 += addt0 *)
mov addt1 38@uint64 ;
cmov addt0 carry addt1 addt0;
add a0 a0 addt0;
    (*   #END MACRO add *)
    (*  *)
    (*   #BEGIN MACRO sub *)
    (*   carry? b0 -= y0 *)
    (*   carry? b1 -= y1 - carry *)
    (*   carry? b2 -= y2 - carry *)
    (*   carry? b3 -= y3 - carry *)
subb carry b0 b0 y0;
sbbs carry b1 b1 y1 carry;
sbbs carry b2 b2 y2 carry;
sbbs carry b3 b3 y3 carry;
    (*  *)
    (*   subt0 = 0 *)
    (*   subt1 = 38 *)
    (*   subt1 = subt0 if !carry *)
mov subt0 0@uint64 ;
mov subt1 38@uint64 ;
cmov subt1 carry subt1 subt0;
    (*  *)
    (*   carry? b0 -= subt1 *)
    (*   carry? b1 -= subt0 - carry *)
    (*   carry? b2 -= subt0 - carry *)
    (*   carry? b3 -= subt0 - carry *)
subb carry b0 b0 subt1;
sbbs carry b1 b1 subt0 carry;
sbbs carry b2 b2 subt0 carry;
sbbs carry b3 b3 subt0 carry;
    (*  *)
    (*   subt0 = subt1 if carry *)
    (*   b0 -= subt0 *)
mov subt1 38@uint64 ;
cmov subt0 carry subt1 subt0;
sub b0 b0 subt0;
    (*   #END MACRO sub *)
    (*  *)
    (*   #// assert (sum_a() - (sum_x() + sum_y())) % (2**255 - 19) = 0 && *)
    (*   #//        (sum_b() - (sum_x() - sum_y())) % (2**255 - 19) = 0 *)
{
  and [
    eqmod
      (
        (limbs 64 [x0, x1, x2, x3])
        +
        (limbs 64 [y0, y1, y2, y3])
      )
      (limbs 64 [a0, a1, a2, a3])
      (((2**255 )- 19)),
    eqmod
      (
        (limbs 64 [x0, x1, x2, x3])
        -
        (limbs 64 [y0, y1, y2, y3])
      )
      (limbs 64 [b0, b1, b2, b3])
      (((2**255 )- 19))
  ]
  &&
  true
}