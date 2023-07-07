#! CLFLAGS = -track-split

proc main(x@uint64) =
{ true && true }

shls dc r x 5;
spl h l r 5;

{
  and [
    x * (2**5) = limbs 64 [r, dc],
    h * (2**5) = r,
    l = 0
  ]
  &&
  and [
    x = concat dc h,
    l = 0@5
  ]
}
