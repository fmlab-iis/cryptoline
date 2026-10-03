proc main (double x) =
{
  true
  &&
  and [
    1.0e308@double <=f x,
    x <=f 1.0e308@double
  ]
}

sub nx@double 0.0@double x;
add z@double nx nx;

{
  true
  &&
  true
}
