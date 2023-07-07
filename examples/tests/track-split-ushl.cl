#! CLFLAGS = -track-split

proc main(x@uint64) =
{ true && x < (2**50)@64 }

shl r x 5;
split h l r 5;

{
  and [
    h = x,
    l = 0
  ]
  &&
  and [
    h = x,
    l = 0@64
  ]
}
