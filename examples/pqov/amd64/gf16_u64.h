/// @file gf16_u64.h
/// @brief Inlined functions for implementing GF arithmetics for uint64 arch.
///

#ifndef _GF16_U64_H_
#define _GF16_U64_H_

#include <stdint.h>


#include "gf16.h"



#ifdef  __cplusplus
extern  "C" {
#endif





//////////////////////////////////////////////////////////////////////////////////


// gf16 := gf2[x]/ (x^4+x+1)


static inline uint64_t gf16v_mul_u64( uint64_t a , uint8_t b )
{
    uint64_t mask_msb = 0x8888888888888888ULL;
    uint64_t a_msb;
    uint64_t a64 = a;
    uint64_t b32 = b;
    uint64_t r64 = a64*(b32&1);

    a_msb = a64&mask_msb;  // MSB, 3rd bits
    a64 ^= a_msb;   // clear MSB
    a64 = (a64<<1)^((a_msb>>3)*3);
    r64 ^= (a64)*((b32>>1)&1);

    a_msb = a64&mask_msb;  // MSB, 3rd bits
    a64 ^= a_msb;   // clear MSB
    a64 = (a64<<1)^((a_msb>>3)*3);
    r64 ^= (a64)*((b32>>2)&1);

    a_msb = a64&mask_msb;  // MSB, 3rd bits
    a64 ^= a_msb;   // clear MSB
    a64 = (a64<<1)^((a_msb>>3)*3);
    r64 ^= (a64)*((b32>>3)&1);

    return r64;
}


static inline uint64_t gf16v_squ_u64( uint64_t a )
{
    uint64_t a01 = (a & 0x1111111111111111ULL) + ((a<<1) & 0x4444444444444444ULL);
    uint64_t a23 = (((a>>2)&0x1111111111111111ULL)+((a>>1)&0x4444444444444444ULL))*3;
    return a01^a23;
}



static inline uint64_t _gf16v_mul_u64_u64( uint64_t a0 , uint64_t a1 , uint64_t a2 , uint64_t a3 , uint64_t b0 , uint64_t b1 , uint64_t b2 , uint64_t b3 )
{
    uint64_t c0 = a0&b0;
    uint64_t c1 = (a0&b1)^(a1&b0);
    uint64_t c2 = (a0&b2)^(a1&b1)^(a2&b0);
    uint64_t c3 = (a0&b3)^(a1&b2)^(a2&b1)^(a3&b0);
    uint64_t c4 = (a1&b3)^(a2&b2)^(a3&b1);
    uint64_t c5 = (a2&b3)^(a3&b2);
    uint64_t c6 = a3&b3;

    return c0^(c1<<1)^(c2<<2)^(c3<<3)^(c4*3)^(c5*6)^(c6*12);
}

static inline uint64_t gf16v_mul_u64_u64( uint64_t a , uint64_t b )
{
    uint64_t a0 = a        & 0x1111111111111111ULL;
    uint64_t a1 = (a >> 1) & 0x1111111111111111ULL;
    uint64_t a2 = (a >> 2) & 0x1111111111111111ULL;
    uint64_t a3 = (a >> 3) & 0x1111111111111111ULL;
    uint64_t b0 = b        & 0x1111111111111111ULL;
    uint64_t b1 = (b >> 1) & 0x1111111111111111ULL;
    uint64_t b2 = (b >> 2) & 0x1111111111111111ULL;
    uint64_t b3 = (b >> 3) & 0x1111111111111111ULL;

    return _gf16v_mul_u64_u64(a0, a1, a2, a3, b0, b1, b2, b3);
}





//////////////////////////////////////////////////////////


// gf256 := 0x11b , AES field

static inline uint64_t gf256v_mul_u64( uint64_t a , uint8_t b )
{
    uint64_t mask_msb = 0x8080808080808080ULL;
    uint64_t a_msb;
    uint64_t a64 = a;
    uint64_t b32 = b;
    uint64_t r64 = a64*(b32&1);

    a_msb = a64&mask_msb;  // MSB, 7th bits
    a64 ^= a_msb;   // clear MSB
    a64 = (a64<<1)^((a_msb>>7)*0x1b);
    r64 ^= (a64)*((b32>>1)&1);

    a_msb = a64&mask_msb;  // MSB, 7th bits
    a64 ^= a_msb;   // clear MSB
    a64 = (a64<<1)^((a_msb>>7)*0x1b);
    r64 ^= (a64)*((b32>>2)&1);

    a_msb = a64&mask_msb;  // MSB, 7th bits
    a64 ^= a_msb;   // clear MSB
    a64 = (a64<<1)^((a_msb>>7)*0x1b);
    r64 ^= (a64)*((b32>>3)&1);

    a_msb = a64&mask_msb;  // MSB, 7th bits
    a64 ^= a_msb;   // clear MSB
    a64 = (a64<<1)^((a_msb>>7)*0x1b);
    r64 ^= (a64)*((b32>>4)&1);

    a_msb = a64&mask_msb;  // MSB, 7th bits
    a64 ^= a_msb;   // clear MSB
    a64 = (a64<<1)^((a_msb>>7)*0x1b);
    r64 ^= (a64)*((b32>>5)&1);

    a_msb = a64&mask_msb;  // MSB, 7th bits
    a64 ^= a_msb;   // clear MSB
    a64 = (a64<<1)^((a_msb>>7)*0x1b);
    r64 ^= (a64)*((b32>>6)&1);

    a_msb = a64&mask_msb;  // MSB, 7th bits
    a64 ^= a_msb;   // clear MSB
    a64 = (a64<<1)^((a_msb>>7)*0x1b);
    r64 ^= (a64)*((b32>>7)&1);

    return r64;
}


static inline uint64_t gf256v_squ_u64( uint64_t a )
{

    uint32_t r64 = a&0x0101010101010101ULL;
    r64 ^= (a<<1)   &0x0404040404040404ULL; // x^1 -> x^2
    r64 ^= (a<<2)   &0x1010101010101010ULL; // x^2 -> x^4
    r64 ^= (a<<3)   &0x4040404040404040ULL; // x^3 -> x^6

    r64 ^= ((a>>4)&0x0101010101010101ULL)*0x1b;    // x^4 -> x^8  --> 0x1b
    r64 ^= ((a>>5)&0x0101010101010101ULL)*(0x1b<<2);  // x^5 -> x^10  --> (0x1b<<2)
    r64 ^= ((a>>6)&0x0101010101010101ULL)*(0xab);  // x^6 -> x^12  --> (0xab)
    r64 ^= ((a>>7)&0x0101010101010101ULL)*(0x9a);  // x^7 -> x^14  --> (0x9a)

    return r64;

}





/////////////////////////////////////////////////////////


static inline uint8_t gf256v_reduce_u64( uint64_t a )
{
	uint32_t * aa = (uint32_t *)(&a);
	uint32_t r = aa[0]^aa[1];
	return gf256v_reduce_u32( r );
}

static inline uint8_t gf16v_reduce_u64( uint64_t a )
{
	uint8_t r256 = gf256v_reduce_u64( a );
	return (r256&0xf)^(r256>>4);
}





#ifdef  __cplusplus
}
#endif


#endif // _GF16_U64_H_

