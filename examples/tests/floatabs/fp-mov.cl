proc main (double x) =
{
  true
  &&
  and [
    1.0@double <=f x,
    x <=f 2.0@double
  ]
}

mov y@double x;

{
  true
  &&
  and [
    1.0@double <=f y,
    y <=f 2.0@double
  ]
}
