proc main (uint32 x) =
{
  true
  &&
  and [
    10@32 <= x,
    x <= 20@32
  ]
}

cast y@uint64 x;

{
  true
  &&
  and [
    10@64 <= y,
    y <= 20@64
  ]
}
