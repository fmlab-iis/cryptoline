#! CLFLAGS = -track-split

proc main(uint64 x, uint64 y, uint64 z) =
{ true && true }

cshrs yh c zl y z 13;
cshrs a b yl x y 13;
spl xh xl x 13;

{
  and [
    limbs 64 [ c, b, a ] * (2**13) + zl = limbs 64 [ z, y, x ],
    a = xh,
    y = yl + yh * (2**13)
  ]
  &&
  and [
    limbs 64 [ shl (uext zl 51) 51@64, c, b, a ]
    =
    limbs 64 [ z, y, x, 0@64 ] * (2**51)@256
  ]
}
