proc main () =
{
  true
  &&
  true
}

mov z@double 0.0@double;

{
  true
  &&
  and [
    0.0@double <=f z,
    z <=f 0.0@double
  ]
}
