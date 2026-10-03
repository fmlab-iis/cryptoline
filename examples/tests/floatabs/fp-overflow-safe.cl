proc main (double x) =
{
  true
  &&
  and [
    1.0@double <=f x,
    x <=f 2.0@double
  ]
}

mul z@double x 4.0@double;

{
  true
  &&
  and [
    4.0@double <=f z,
    z <=f 8.0@double
  ]
}
