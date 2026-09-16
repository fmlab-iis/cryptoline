proc main (double x) =
{
  true
  &&
  and [
    2.0@double <=f x,
    x <=f 3.0@double
  ]
}

sub y@double x 1.0@double;

{
  true
  &&
  and [
    1.0@double <=f y,
    y <=f 2.0@double
  ]
}
