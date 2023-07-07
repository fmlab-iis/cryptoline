#! CLFLAGS = -track-split

proc main(uint64 x, uint64 y, uint64 z) =
{ true && true }

cshls xh a yl x y 13;
cshls yh b c y z 13; 
spl xl dc a 13;

{
  and [
    y = yl + yh * (2**51),
    limbs 64 [ c * (2**13), b, a, xh ] = limbs 64 [ z, y, x ] * (2**13),
    a + xh * (2**64) = yh + x * (2**13),
    dc = yh,
    x = xl + xh * (2**51)
  ]
  &&
  and [
    limbs 64 [ shl c 13@64, b, a, uext xh 51 ]
    =
    (limbs 64 [ z, y, x, 0@64 ]) * (2**13)@256
  ]
}
