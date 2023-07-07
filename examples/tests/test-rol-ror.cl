#! CLFLAGS = -track-split

proc main(uint64 x) =
{ true && true }

rol y x 3;
ror z y 3;

{
  z = x
  &&
  and [
    z = x,
    y = rol x 3@64,
    z = ror y 3@64
  ]
}
