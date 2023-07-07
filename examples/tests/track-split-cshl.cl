#! CLFLAGS = -track-split

proc main(uint64 x, uint64 y) =
{ true && x <u (2**50)@64 }

cshl a yl x y 13;
spl xl yh a 13;

{
  and [
    limbs 64 [ yl * (2**13), a ] = limbs 64 [ y, x ] * (2**13),
    y = yl + yh * (2**51)
  ]
  &&
  and [
    limbs 64 [ shl yl 13@64, a, 0@64 ] = (limbs 64 [ y, x, 0@64 ]) * (2**13)@192,
    y = yl + (uext yh 51) * (2**51)@64
  ]
}
