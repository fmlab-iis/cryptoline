#include <stdint.h>

uint8_t out[2048], inp[2048];
uint32_t key[8] = { 0, 1, 2, 3, 4, 5, 6, 7 };
uint32_t counter[4] = { 0x00, 0x10, 0x20, 0x30 };

int main (void)
{
  int i;
  OPENSSL_cpuid_setup ();
  for (i = 0; i < 2048; i++)
    inp[i] = 0x42;
  /* ChaCha20_avx512vl x 2 */
  /* ChaCha20_ctr32 (out, inp, 128, key, counter); */
  /* ChaCha20_avx512vl x 8 */
  /* ChaCha20_ctr32 (out, inp, 256, key, counter); */
  /* ChaCha20_avx512   x 16 */
  ChaCha20_ctr32 (out, inp, 1024, key, counter);
  return 0;
}

