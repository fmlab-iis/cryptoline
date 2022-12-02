#include <openssl/sha.h>
#include <stdlib.h>

typedef struct {
  unsigned int A[8], B[8], C[8], D[8], E[8], F[8], G[8], H[8];
} SHA256_MB_CTX;
typedef struct {
  const unsigned char *ptr;
  int blocks;
} HASH_DESC;

void sha256_multi_block(SHA256_MB_CTX *, const HASH_DESC *, int);

int main (void)
{
  SHA256_MB_CTX ctx;
  HASH_DESC    data[8];
  unsigned char *mem;
  int i, j;

  for (i = 0; i < 8; i++) {
    ctx.A[i] = 0x6a09e667UL;
    ctx.B[i] = 0xbb67ae85UL;
    ctx.C[i] = 0x3c6ef372UL;
    ctx.D[i] = 0xa54ff53aUL;
    ctx.E[i] = 0x510e527fUL;
    ctx.F[i] = 0x9b05688cUL;
    ctx.G[i] = 0x1f83d9abUL;
    ctx.H[i] = 0x5be0cd19UL;
  }

  for (i = 0; i < 8; i++) {
    data[i].ptr = mem = (unsigned char *) malloc (256);
    for (j = 0; j < 256; j++)
      mem[j] = j;
    data[i].blocks = 1;
  }
  
  sha256_multi_block (&ctx, data, 1);
  sha256_multi_block (&ctx, data, 2);

  return (0);
}
