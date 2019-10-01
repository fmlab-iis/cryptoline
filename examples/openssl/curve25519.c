typedef unsigned long fe51[5];

void x25519_fe51_mul(fe51 h, const fe51 f, const fe51 g);
void x25519_fe51_sqr(fe51 h, const fe51 f);
void x25519_fe51_mul121666(fe51 h, fe51 f);
void x25519_fe64_add(fe51 h, const fe51 f, const fe51 g);
void x25519_fe64_sub(fe51 h, const fe51 f, const fe51 g);
void x25519_fe64_mul(fe51 h, const fe51 f, const fe51 g);
void x25519_fe64_sqr(fe51 h, const fe51 f);
void x25519_fe64_mul121666(fe51 h, fe51 f);

fe51 a = { 0x82374abe23ab903, 0x4abe23ab9082373,
           0xbe23ab903c829a8, 0x9374abe203c8298,
           0x4abe2303c829aab };

fe51 b = { 0xab903c829a82374, 0x082373c829a4abe2,
           0xc829a82374abe23, 0x829823aba9374abe,
           0x29aab982374abe2 };

void main (void) {
  fe51 r;

  x25519_fe51_mul (r, a, b);
  x25519_fe51_sqr (r, a);
  x25519_fe51_mul121666 (r, b);
  x25519_fe64_add (r, a, b);
  x25519_fe64_sub (r, a, b);
  x25519_fe64_mul (r, a, b);
  x25519_fe64_sqr (r, a);
  x25519_fe64_mul121666 (r, b);
}
