/// @file blas_u64.h
/// @brief Inlined functions for implementing basic linear algebra functions for uint64 arch.
///

#ifndef _BLAS_U64_H_
#define _BLAS_U64_H_

#include <string.h>
#include <stdint.h>
#include <stdio.h>



#include <stdint.h>

#include "gf16.h"

#include "gf16_u64.h"

#include "blas_u32.h"


#ifdef  __cplusplus
extern  "C" {
#endif





static inline void _gf256v_add_u64_aligned(uint8_t *accu_b, const uint8_t *a, unsigned _num_byte) {
    while( _num_byte >= 8 ) {
      uint64_t       *bx = (uint64_t*)accu_b;
      const uint64_t *ax = (const uint64_t*)a;
      bx[0] ^= ax[0];
      a += 8;
      accu_b += 8;
      _num_byte -= 8;
    }
    while( _num_byte ) {
      _num_byte--;
      accu_b[_num_byte] ^= a[_num_byte];
    }
}



static inline
void _gf256v_add_u64( uint8_t * accu_b, const uint8_t * a , unsigned _num_byte ) {

    uintptr_t bp = (uintptr_t)(const void *)accu_b;
    uintptr_t ap = (uintptr_t)(const void *)a;
    if( (bp&7) || (ap&7) || (_num_byte<8) ) { _gf256v_add_u32(accu_b,a,_num_byte); }
    else { _gf256v_add_u64_aligned(accu_b,a,_num_byte); }
}



////////////////




static inline void _gf256v_conditional_add_u64_aligned(uint8_t *accu_b, uint8_t condition, const uint8_t *a, unsigned _num_byte) {
    uint64_t pr_u64 = ((uint64_t)0)-((uint64_t)condition);
    uint8_t pr_u8 = pr_u64 & 0xff;

    while( _num_byte >= 8 ) {
      uint64_t       *bx = (uint64_t*)accu_b;
      const uint64_t *ax = (const uint64_t*)a;
      bx[0] ^= ax[0]&pr_u64;
      a += 8;
      accu_b += 8;
      _num_byte -= 8;
    }
    while( _num_byte ) {
      _num_byte--;
      accu_b[_num_byte] ^= a[_num_byte]&pr_u8;
    }
}



static inline
void _gf256v_conditional_add_u64( uint8_t * accu_b, uint8_t condition , const uint8_t * a , unsigned _num_byte ) {

    uintptr_t bp = (uintptr_t)(const void *)accu_b;
    uintptr_t ap = (uintptr_t)(const void *)a;
    if( (bp&7) || (ap&7) || (_num_byte<8) ) { _gf256v_conditional_add_u32(accu_b,condition,a,_num_byte); }
    else { _gf256v_conditional_add_u64_aligned(accu_b,condition,a,_num_byte); }
}



///////////////////////////////////////////////////




static inline void _gf16v_mul_scalar_u64_aligned(uint8_t *a, uint8_t gf16_b, unsigned _num_byte) {

    while( _num_byte >= 8 ) {
      uint64_t *ax = (uint64_t*)a;
      ax[0] = gf16v_mul_u64( ax[0] , gf16_b );
      a += 8;
      _num_byte -= 8;
    }
    if( 0==_num_byte ) return;

    union tmp_64 {
        uint8_t u8[8];
        uint64_t u64;
    } t;
    for(unsigned i=0;i<_num_byte;i++) t.u8[i]=a[i];
    t.u64 = gf16v_mul_u64(t.u64, gf16_b);
    for(unsigned i=0;i<_num_byte;i++) a[i] = t.u8[i];
}



static inline
void _gf16v_mul_scalar_u64( uint8_t * a, uint8_t gf16_b , unsigned _num_byte ) {

    uintptr_t ap = (uintptr_t)(const void *)a;
    if( !((ap&7) || (_num_byte<8)) ) {  _gf16v_mul_scalar_u64_aligned(a,gf16_b,_num_byte); return; }

    union tmp_64 {
        uint8_t u8[8];
        uint64_t u64;
    } t;

    while( _num_byte >= 8 ) {
      for(int i=0;i<8;i++) t.u8[i] = a[i];
      t.u64 = gf16v_mul_u64(t.u64, gf16_b);
      for(int i=0;i<8;i++) a[i] = t.u8[i];
      a += 8;
      _num_byte -= 8;
    }
    if( 0==_num_byte ) return;

    for(unsigned i=0;i<_num_byte;i++) t.u8[i]=a[i];
    t.u64 = gf16v_mul_u64(t.u64, gf16_b);
    for(unsigned i=0;i<_num_byte;i++) a[i] = t.u8[i];

}





////////////////////////




static inline void _gf256v_mul_scalar_u64_aligned(uint8_t *a, uint8_t gf256_b, unsigned _num_byte) {

    while( _num_byte >= 8 ) {
      uint64_t *ax = (uint64_t*)a;
      ax[0] = gf256v_mul_u64( ax[0] , gf256_b );
      a += 8;
      _num_byte -= 8;
    }
    if( 0==_num_byte ) return;

    union tmp_64 {
        uint8_t u8[8];
        uint64_t u64;
    } t;
    for(unsigned i=0;i<_num_byte;i++) t.u8[i]=a[i];
    t.u64 = gf256v_mul_u64(t.u64, gf256_b);
    for(unsigned i=0;i<_num_byte;i++) a[i] = t.u8[i];
}



static inline
void _gf256v_mul_scalar_u64( uint8_t * a, uint8_t gf256_b , unsigned _num_byte ) {

    uintptr_t ap = (uintptr_t)(const void *)a;
    if( !((ap&7) || (_num_byte<8)) ) {  _gf256v_mul_scalar_u64_aligned(a,gf256_b,_num_byte); return; }

    union tmp_64 {
        uint8_t u8[8];
        uint64_t u64;
    } t;

    while( _num_byte >= 8 ) {
      for(int i=0;i<8;i++) t.u8[i] = a[i];
      t.u64 = gf256v_mul_u64(t.u64, gf256_b);
      for(int i=0;i<8;i++) a[i] = t.u8[i];
      a += 8;
      _num_byte -= 8;
    }
    if( 0==_num_byte ) return;

    for(unsigned i=0;i<_num_byte;i++) t.u8[i]=a[i];
    t.u64 = gf256v_mul_u64(t.u64, gf256_b);
    for(unsigned i=0;i<_num_byte;i++) a[i] = t.u8[i];

}




//////////////////////////////////////////////



static inline void _gf16v_madd_u64_aligned(uint8_t *accu_c, const uint8_t *a, uint8_t gf16_b, unsigned _num_byte) {
    while( _num_byte >= 8 ) {
      const uint64_t *ax = (const uint64_t*)a;
      uint64_t *cx = (uint64_t*)accu_c;
      cx[0] ^= gf16v_mul_u64( ax[0] , gf16_b );
      a += 8;
      accu_c += 8;
      _num_byte -= 8;
    }
    if( 0==_num_byte ) return;

    union tmp_64 {
        uint8_t u8[8];
        uint64_t u64;
    } t;
    for(unsigned i=0;i<_num_byte;i++) t.u8[i]=a[i];
    t.u64 = gf16v_mul_u64(t.u64, gf16_b);
    for(unsigned i=0;i<_num_byte;i++) accu_c[i] ^= t.u8[i];
}

static inline void _gf16v_madd_u64(uint8_t *accu_c, const uint8_t *a, uint8_t gf16_b, unsigned _num_byte) {

    uintptr_t ap = (uintptr_t)(const void *)a;
    uintptr_t cp = (uintptr_t)(const void *)accu_c;
    if( !((cp&7) || (ap&7) || (_num_byte<8)) ) {  _gf16v_madd_u64_aligned(accu_c,a,gf16_b,_num_byte); return; }

    union tmp_64 {
        uint8_t u8[8];
        uint64_t u64;
    } t;

    while( _num_byte >= 8 ) {
      for(int i=0;i<8;i++) t.u8[i]=a[i];
      t.u64 = gf16v_mul_u64(t.u64, gf16_b);
      for(int i=0;i<8;i++) accu_c[i] ^= t.u8[i];
      a += 8;
      accu_c += 8;
      _num_byte -= 8;
    }
    if( 0==_num_byte ) return;

    for(unsigned i=0;i<_num_byte;i++) t.u8[i]=a[i];
    t.u64 = gf16v_mul_u64(t.u64, gf16_b);
    for(unsigned i=0;i<_num_byte;i++) accu_c[i] ^= t.u8[i];

}





///////////////////////////////////////////////





static inline void _gf256v_madd_u64_aligned(uint8_t *accu_c, const uint8_t *a, uint8_t gf256_b, unsigned _num_byte) {
    while( _num_byte >= 8 ) {
      const uint64_t *ax = (const uint64_t*)a;
      uint64_t *cx = (uint64_t*)accu_c;
      cx[0] ^= gf256v_mul_u64( ax[0] , gf256_b );
      a += 8;
      accu_c += 8;
      _num_byte -= 8;
    }
    if( 0==_num_byte ) return;

    union tmp_64 {
        uint8_t u8[8];
        uint64_t u64;
    } t;
    for(unsigned i=0;i<_num_byte;i++) t.u8[i]=a[i];
    t.u64 = gf256v_mul_u64(t.u64, gf256_b);
    for(unsigned i=0;i<_num_byte;i++) accu_c[i] ^= t.u8[i];
}

static inline void _gf256v_madd_u64(uint8_t *accu_c, const uint8_t *a, uint8_t gf256_b, unsigned _num_byte) {

    uintptr_t ap = (uintptr_t)(const void *)a;
    uintptr_t cp = (uintptr_t)(const void *)accu_c;
    if( !((cp&7) || (ap&7) || (_num_byte<8)) ) {  _gf256v_madd_u64_aligned(accu_c,a,gf256_b,_num_byte); return; }

    union tmp_64 {
        uint8_t u8[8];
        uint64_t u64;
    } t;

    while( _num_byte >= 8 ) {
      for(int i=0;i<8;i++) t.u8[i]=a[i];
      t.u64 = gf256v_mul_u64(t.u64, gf256_b);
      for(int i=0;i<8;i++) accu_c[i] ^= t.u8[i];
      a += 8;
      accu_c += 8;
      _num_byte -= 8;
    }
    if( 0==_num_byte ) return;

    for(unsigned i=0;i<_num_byte;i++) t.u8[i]=a[i];
    t.u64 = gf256v_mul_u64(t.u64, gf256_b);
    for(unsigned i=0;i<_num_byte;i++) accu_c[i] ^= t.u8[i];

}





#ifdef  __cplusplus
}
#endif



#endif // _BLAS_U64_H_


