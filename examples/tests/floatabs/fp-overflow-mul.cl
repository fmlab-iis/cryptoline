proc main (double x) =
{
  true
  &&
  and [
    1.0e308@double <=f x,
    x <=f 1.0e308@double
  ]
}

mul z@double x 2.0@double;

{
  true
  &&
  true
}
