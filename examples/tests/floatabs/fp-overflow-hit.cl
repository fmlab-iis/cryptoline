proc main (double x) =
{
  true
  &&
  and [
    1.0e308@double <=f x,
    x <=f 1.0e308@double
  ]
}

add z@double x x;

{
  true
  &&
  true
}
