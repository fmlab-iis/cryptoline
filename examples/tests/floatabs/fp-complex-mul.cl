proc main (double ar, double ai, double br, double bi) =
{
  true
  &&
  and [
    1.0@double <=f ar,
    ar <=f 2.0@double,
    1.0@double <=f ai,
    ai <=f 2.0@double,
    1.0@double <=f br,
    br <=f 2.0@double,
    1.0@double <=f bi,
    bi <=f 2.0@double
  ]
}

mul ac@double ar br;
mul bd@double ai bi;
sub re@double ac bd;

mul ad@double ar bi;
mul bc@double ai br;
add im@double ad bc;

{
  true
  &&
  true
}
