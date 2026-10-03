proc main (double x) =
{
  true
  &&
  and [
    1.0@double <=f x,
    x <=f 2.0@double
  ]
}

sub nx@double 0.0@double x;
add z@double nx 0.5@double;

{
  true
  &&
  true
}
