#include <stdint.h>
#include <stdio.h>

typedef uint64_t fe64[4];
typedef uint64_t fe51[5];

void x25519_fe64_mul(fe64 h, const fe64 f, const fe64 g);
void x25519_fe64_sqr(fe64 h, const fe64 f);
void x25519_fe64_mul121666(fe64 h, fe64 f);
void x25519_fe64_add(fe64 h, const fe64 f, const fe64 g);
void x25519_fe64_sub(fe64 h, const fe64 f, const fe64 g);

void x25519_fe51_mul(fe51 h, const fe51 f, const fe51 g);
void x25519_fe51_sqr(fe51 h, const fe51 f);
void x25519_fe51_mul121666(fe51 h, fe51 f);

int main (void)
{
  fe64 f64, g64, h64;
  fe51 f51, g51, h51;

  x25519_fe64_mul(h64, f64, g64);
  x25519_fe64_sqr(h64, f64);
  x25519_fe64_mul121666(h64, f64);
  x25519_fe64_add(h64, f64, g64);
  x25519_fe64_sub(h64, f64, g64);

  x25519_fe51_mul(h51, f51, g51);
  x25519_fe51_sqr(h51, f51);
  x25519_fe51_mul121666(h51, f51);
  
  return 0;
}
