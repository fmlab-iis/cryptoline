#! CLFLAGS = -track-split

proc main(x@uint64) =
{ true && true }

shrs y z x 13;
spl h l y 51;

{
  and [
    h = 0,
    l = y,
    x = z + l * (2**13)
  ]
  &&
  and [
    h = 0@13,
    uext l 13 = y
  ]
}
