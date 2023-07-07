#! CLFLAGS = -track-split

proc main(uint64 x, uint64 y) =
{ true && equmod y 0@64 (2**13)@64 }

cshr xh a x y 13;
spl xl yh a 51;

{
  and [
    limbs 64 [ a, xh ] * (2**13) = limbs 64 [ y, x ],
    xl + xh * (2**13) = x
  ]
  &&
  and [
    limbs 64 [ a, xh ] * (2**13)@128 = limbs 64 [ y, x ],
    x = (shl xh 13@64) + (uext xl 51)
  ]
}
