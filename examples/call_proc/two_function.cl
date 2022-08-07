proc Add(uint16 a, uint16 b) = 
{
    true
    && 
    and [ a <s 20@16, b <s 20@16 ]
}

nondet ret@uint17;
adds carry ret a b;
{
    true
    && 
    ret = a + b
}

proc main(sint16 a) =
{
    true 
    &&
    true
}
mov r8 0@sint16; 
mov L0x2001a4b0 a;
{
    true 
    && 
    true
}


