#include <stdint.h>

uint8_t out[128], inp[128];
uint32_t key[8] = { 0, 1, 2, 3, 4, 5, 6, 7 };
uint32_t counter[4] = { 0x00, 0x10, 0x20, 0x30 };

int main (void)
{
  int i;
  for (i = 0; i < 128; i++)
    inp[i] = 0x42;
  ChaCha20_ctr32 (out, inp, 20, key, counter);
  return 0;
}

