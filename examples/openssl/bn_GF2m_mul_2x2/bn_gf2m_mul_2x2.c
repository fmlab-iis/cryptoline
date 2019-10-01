
typedef unsigned long BN_ULONG;

void bn_GF2m_mul_2x2(BN_ULONG *r, BN_ULONG a1, BN_ULONG a0, BN_ULONG b1,
                     BN_ULONG b0);

void main (void)
{
   BN_ULONG r[4];
   BN_ULONG a[2] = 
     {
	 0x9821491827acdef8, 0x1491827acd982ef8
     };
   BN_ULONG b[2] =
     {
	 0xacdef89821491827, 0xd982ef81491827ac
     };

   bn_GF2m_mul_2x2 (r, a[1], a[0], b[1], b[0]);
}
