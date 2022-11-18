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

  ctx.A[0] = ctx.B[0] = ctx.C[0] = ctx.D[0] =
    ctx.E[0] = ctx.F[0] = ctx.G[0] = ctx.H[0] = 0xc1059ed8UL;
  ctx.A[1] = ctx.B[1] = ctx.C[1] = ctx.D[1] =
    ctx.E[1] = ctx.F[1] = ctx.G[1] = ctx.H[1] = 0x367cd507UL;
  ctx.A[2] = ctx.B[2] = ctx.C[2] = ctx.D[2] =
    ctx.E[2] = ctx.F[2] = ctx.G[2] = ctx.H[2] = 0x3070dd17UL;
  ctx.A[3] = ctx.B[3] = ctx.C[3] = ctx.D[3] =
    ctx.E[3] = ctx.F[3] = ctx.G[3] = ctx.H[3] = 0xf70e5939UL;
  ctx.A[4] = ctx.B[4] = ctx.C[4] = ctx.D[4] =
    ctx.E[4] = ctx.F[4] = ctx.G[4] = ctx.H[4] = 0xffc00b31UL;
  ctx.A[5] = ctx.B[5] = ctx.C[5] = ctx.D[5] =
    ctx.E[5] = ctx.F[5] = ctx.G[5] = ctx.H[5] = 0x68581511UL;
  ctx.A[6] = ctx.B[6] = ctx.C[6] = ctx.D[6] =
    ctx.E[6] = ctx.F[6] = ctx.G[6] = ctx.H[6] = 0x64f98fa7UL;
  ctx.A[7] = ctx.B[7] = ctx.C[7] = ctx.D[7] =
    ctx.E[7] = ctx.F[7] = ctx.G[7] = ctx.H[7] = 0xbefa4fa4UL;

  for (i = 0; i < 8; i++) {
    data[i].ptr = mem = (unsigned char *) malloc (64);
    for (j = 0; j < 64; j++)
      mem[j] = j;
    data[i].blocks = 1;
  }
  
  sha256_multi_block (&ctx, data, 1);
  sha256_multi_block (&ctx, data, 2);

  return (0);
}
