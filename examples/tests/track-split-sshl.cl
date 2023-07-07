proc main(x@sint64) =
{ true && and [ 0@64 <=s x, x <s (2**50)@64 ] }

shl r x 5;
split h l r 5;

{
  and [
    h = x,
    l = 0
  ]
  &&
  and [
    h = x,
    l = 0@64
  ]
}
