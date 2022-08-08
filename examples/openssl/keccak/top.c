#include <stddef.h>
#include <stdint.h>

uint64_t A[5][5];

size_t SHA3_absorb(uint64_t A[5][5], const unsigned char *inp, size_t len,
                   size_t r);

int main (void)
{
  unsigned char inp[168];
  
  SHA3_absorb (A, inp, 168, 168);
  return (0);
}
