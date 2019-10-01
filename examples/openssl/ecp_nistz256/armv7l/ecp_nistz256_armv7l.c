#include <stdio.h>

unsigned long long a[] = { 0x7f7fbfca0020813a, 0xfaafade709201c18,
                           0xcd20398728bdee5c, 0x15b5974233712938 };
unsigned long long b[] = { 0x7f7fbfca0020813a, 0xcd20398728bdee5c,
                           0xfaafade709201c18, 0x15b5974233712938 };

void ecp_nistz256_add(unsigned long long[4], unsigned long long[4], unsigned long long[4]);
void ecp_nistz256_sub(unsigned long long[4], unsigned long long[4], unsigned long long[4]);
void ecp_nistz256_mul_mont(unsigned long long[4], unsigned long long[4], unsigned long long[4]);
void ecp_nistz256_mul_by_2(unsigned long long[4], unsigned long long[4], unsigned long long[4]);

int main()
{
    unsigned long long r[4];

    ecp_nistz256_add(r, a, b);
    ecp_nistz256_sub(r, a, b);
    ecp_nistz256_mul_mont(r, a, b);
    ecp_nistz256_mul_by_2(r, a, b);

    printf("%016lx:%016lx:%016lx:%016lx\n",r[3],r[2],r[1],r[0]);
}
