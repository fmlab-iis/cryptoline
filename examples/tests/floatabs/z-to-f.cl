proc main (uint64 i) =
{
  true
  &&
  and [
    10@64 <= i,
    i <= 20@64
  ]
}

cast x@double i;

{
  true
  &&
  and [
    10.0@double <=f x,
    x <=f 20.0@double
  ]
}
