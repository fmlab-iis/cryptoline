#include <stdio.h>

unsigned long a[] = { 0x782a9b3e02d82d6b, 0xa9b3e02d78282d6b,
                      0x9819818fc810a0bc, 0xabcdef1928102888,
                      0x9b3e02d82d6b782a, 0xae02d7829b382d6b,
                      0xc810a0bc9819818f, 0x8102888abcdef192,
                      0xcbc9819818f810a0, 0x02888abcdef19181,
                      0x9b3e02d82d6b782a, 0xae02d7829b382d6b,
                      0x82a9b3e02d82d6b7, 0x82ae02d7829b3d6b,
                      0xcbc9819818f810a0, 0x02888abcdef19181 };
unsigned long b[] = { 0x82a9b3e02d82d6b7, 0x82ae02d7829b3d6b,
                      0xcbc9819818f810a0, 0x02888abcdef19181,
                      0x9b3e02d82d6b782a, 0xae02d7829b382d6b,
                      0x9b3e02d82d6b782a, 0xae02d7829b382d6b,
                      0xc810a0bc9819818f, 0x8102888abcdef192,
                      0xcbc9819818f810a0, 0x02888abcdef19181,
                      0x9b3e02d82d6b782a, 0xae02d7829b382d6b,
                      0xc810a0bc9819818f, 0x8102888abcdef192 };
unsigned long m[] = { 0xcbc9819818f810a0, 0x02888abcdef19181,
                      0x9b3e02d82d6b782a, 0xae02d7829b382d6b,
                      0x82a9b3e02d82d6b7, 0x82ae02d7829b3d6b,
                      0xcbc9819818f810a0, 0x02888abcdef19181,
                      0x9b3e02d82d6b782a, 0xae02d7829b382d6b,
                      0x9b3e02d82d6b782a, 0xae02d7829b382d6b,
                      0xc810a0bc9819818f, 0x8102888abcdef192,
                      0xcbc9819818f810a0, 0x02888abcdef19181 };

unsigned long n0  = 0x5094f3d5989f517f;

int bn_mul_mont (unsigned long [], unsigned long [], unsigned long [],
                 unsigned long [], unsigned long *, unsigned long);

int main ()
{
  unsigned long r[16];

  bn_mul_mont (r, a, b, m, &n0, 16);

  return 0;
}
