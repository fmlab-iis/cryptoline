proc main (double x) =
{
  true
  &&
  and [
    10.0@double <=f x,
    x <=f 20.0@double
  ]
}

cast i@uint64 x;

{
  true
  &&
  and [
    10@64 <= i,
    i <= 20@64
  ]
}
