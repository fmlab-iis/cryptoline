proc main (double x) =
{
  true
  &&
  and [
    1.0@double <=f x,
    x <=f 2.0@double
  ]
}

sub z@double x x;

{
  true
  &&
  and [
    0.0@double <=f z,
    z <=f 0.0@double
  ]
}
