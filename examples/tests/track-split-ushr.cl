#! CLFLAGS = -track-split

proc main(x@uint37) =
{ true && true }

join y x 0@uint27;
shr z y 27;
spl h l z 37;

{
  and [
    h = 0,
    l = x
  ]
  &&
  and [
    h = 0@27,
    l = x
  ]
}
