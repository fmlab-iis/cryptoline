#include <stddef.h>
#include <stdint.h>

uint64_t A[5][5];

size_t SHA3_absorb(uint64_t A[5][5], const unsigned char *inp, size_t len,
                   size_t r);
void SHA3_squeeze(uint64_t A[5][5], unsigned char *out, size_t len, size_t r);

int main (void)
{
  unsigned char inp[168];
  unsigned char out[512];

  SHA3_absorb (A, inp, 168, 168);
  // SHA3_squeeze(A, out, 512, 168);

  return (0);
}
