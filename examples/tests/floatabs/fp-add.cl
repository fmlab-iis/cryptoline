proc main (double x) =
{
  true
  &&
  and [
    1.0@double <=f x,
    x <=f 2.0@double
  ]
}

add y@double x 1.0@double;

{
  true
  &&
  and [
    2.0@double <=f y,
    y <=f 3.0@double
  ]
}
