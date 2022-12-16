#include <stdint.h>
#include <stdio.h>
#include <inttypes.h>

#define GFBITS 12

extern void PQCLEAN_MCELIECE348864_AVX_vec_mul_asm(uint64_t *, const uint64_t *, const uint64_t *);

void PQCLEAN_MCELIECE348864_AVX_vec_mul(uint64_t *h, const uint64_t *f, const uint64_t *g) {
  PQCLEAN_MCELIECE348864_AVX_vec_mul_asm(h, f, g);
}

void radix_conversions(uint64_t *in) {
    int i, j, k;

    const uint64_t mask[5][2] = {
        {0x8888888888888888, 0x4444444444444444},
        {0xC0C0C0C0C0C0C0C0, 0x3030303030303030},
        {0xF000F000F000F000, 0x0F000F000F000F00},
        {0xFF000000FF000000, 0x00FF000000FF0000},
        {0xFFFF000000000000, 0x0000FFFF00000000}
    };

    const uint64_t s[5][GFBITS] = {
{
    0XF3CFC030FC30F003,
    0X3FCF0F003C00C00C,
    0X30033CC300C0C03C,
    0XCCFF0F3C0F30F0C0,
    0X0300C03FF303C3F0,
    0X3FFF3C0FF0CCCCC0,
    0XF3FFF0C00F3C3CC0,
    0X3003333FFFC3C000,
    0X0FF30FFFC3FFF300,
    0XFFC0F300F0F0CC00,
    0XC0CFF3FCCC3CFC00,
    0XFC3C03F0F330C000,
},
{
    0X000F00000000F00F,
    0X00000F00F00000F0,
    0X0F00000F00000F00,
    0XF00F00F00F000000,
    0X00F00000000000F0,
    0X0000000F00000000,
    0XF00000000F00F000,
    0X00F00F00000F0000,
    0X0000F00000F00F00,
    0X000F00F00F00F000,
    0X00F00F0000000000,
    0X0000000000F00000,
},
{
    0X0000FF00FF0000FF,
    0X0000FF000000FF00,
    0XFF0000FF00FF0000,
    0XFFFF0000FF000000,
    0X00FF00FF00FF0000,
    0X0000FFFFFF000000,
    0X00FFFF00FF000000,
    0XFFFFFF0000FF0000,
    0XFFFF00FFFF00FF00,
    0X0000FF0000000000,
    0XFFFFFF00FF000000,
    0X00FF000000000000,
},
{
    0X000000000000FFFF,
    0X00000000FFFF0000,
    0X0000000000000000,
    0XFFFF000000000000,
    0X00000000FFFF0000,
    0X0000FFFF00000000,
    0X0000000000000000,
    0X00000000FFFF0000,
    0X0000FFFF00000000,
    0X0000000000000000,
    0X0000000000000000,
    0X0000000000000000,
},
{
    0X00000000FFFFFFFF,
    0XFFFFFFFF00000000,
    0XFFFFFFFF00000000,
    0X0000000000000000,
    0X0000000000000000,
    0XFFFFFFFF00000000,
    0X0000000000000000,
    0X0000000000000000,
    0XFFFFFFFF00000000,
    0X0000000000000000,
    0X0000000000000000,
    0X0000000000000000,
}
    };

    //

    for (j = 0; j <= 4; j++) {
        for (i = 0; i < GFBITS; i++) {
            for (k = 4; k >= j; k--) {
                in[i] ^= (in[i] & mask[k][0]) >> (1 << k);
                in[i] ^= (in[i] & mask[k][1]) >> (1 << k);
            }
        }

        PQCLEAN_MCELIECE348864_AVX_vec_mul(in, in, s[j]); // scaling
    }
}

int main() {
    uint64_t inp[GFBITS] = {123456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

    radix_conversions(inp);
    // PQCLEAN_MCELIECE348864_AVX_vec_mul(h, f, g);

    for (int i = 0; i < GFBITS; i++) {
        printf("#%d: %" PRIu64 "\n", i, inp[i]);
    }

    for (int i = 0; i < 64; i++) {
        int coeff = 0;
        for (int j = 0; j < GFBITS; j++) {
            if (inp[j] & (1LL << i)) {
                coeff += (1 << j);
            }
        }
        printf("%4d,%c", coeff, i % 8 == 7 ? '\n' : ' ');
    }
    printf("\n");
}
