#! CLFLAGS = -track-split

proc main(x@sint37) =
{ true && true }

join y x 0@uint27;
sar z y 27;
spl h l z 37;

{
  and [
    l = x
  ]
  &&
  and [
    l = x
  ]
}
