proc main (double x, double y) =
{
  true
  &&
  and [
    1.0@double <=f x,
    x <=f 2.0@double,
    0.0@double <=f y,
    y <=f 1.0@double
  ]
}

div z@double x y;

{
  true
  &&
  true
}
