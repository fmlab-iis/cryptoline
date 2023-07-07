#! CLFLAGS = -track-split

proc main(uint64 x, uint64 y, sint64 a, uint32 b) =
{ true && true }

join z x y;
spl hz lz z 64;

join c a b;
spl hc lc c 32;

{
  and [
    z = limbs 64 [ y, x ],
    z = limbs 64 [ lz, hz ],
    hz = x,
    lz = y,
    c = limbs 32 [ b, a ],
    c = limbs 32 [ lc, hc ],
    hc = a,
    lc = b
  ]
  &&
  and [
    z = concat x y,
    z = concat hz lz,
    hz = x,
    lz = y,
    c = concat a b,
    c = concat hc lc,
    hc = a,
    lc = b
  ]
}
