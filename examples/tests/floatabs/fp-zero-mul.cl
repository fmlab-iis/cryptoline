proc main (double x, double y) =
{
  true
  &&
  and [
    0.0@double <=f x,
    x <=f 1.0@double,
    1.0@double <=f y,
    y <=f 2.0@double
  ]
}

mul z@double x y;

{
  true
  &&
  true
}
