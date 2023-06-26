/// @file blas_comm_avx2.c
/// @brief Implementations for blas_comm_avx2.h
///

#include "gf16.h"

#include "config.h"

#include "gf16_avx2.h"

#include "blas_avx2.h"

#include "blas_comm.h"

#include "blas_matrix_sse.h"
#include "blas_matrix_avx2.h"

#include <immintrin.h>

#include "string.h"


#define _GE_CADD_EARLY_STOP_







////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////  matrix-vector multiplication, GF( 16 ) ////////////////////
////////////////////////////////////////////////////////////////////////////////////////////





static inline
void gf16mat_prod_multab_64x_avx2( uint8_t * c , const uint8_t * matA , unsigned n_ele , const __m256i * multab_b )
{
	__m256i mask_f = _mm256_set1_epi8(0xf);
	__m256i a0, a1;
	__m256i r0 = _mm256_setzero_si256();
	__m256i r1 = _mm256_setzero_si256();
	if( n_ele&1 ) {
		a0 = _mm256_loadu_si256((const __m256i*) (matA) );
		r0 ^= _mm256_shuffle_epi8( multab_b[0] , a0&mask_f )
			 ^_mm256_shuffle_epi8( _mm256_slli_epi16(multab_b[0],4) , _mm256_srli_epi16(a0,4)&mask_f );
		matA += 32;
		multab_b += 1;
		n_ele -= 1;
	}
	while( n_ele ) {
		a0 = _mm256_loadu_si256((const __m256i*) (matA) );
		a1 = _mm256_loadu_si256((const __m256i*) (matA+32) );

		r0 ^= _mm256_shuffle_epi8( multab_b[0] , a0&mask_f )
			 ^_mm256_shuffle_epi8( _mm256_slli_epi16(multab_b[0],4) , _mm256_srli_epi16(a0,4)&mask_f );
	    r1 ^= _mm256_shuffle_epi8( multab_b[1] , a1&mask_f )
			 ^_mm256_shuffle_epi8( _mm256_slli_epi16(multab_b[1],4) , _mm256_srli_epi16(a1,4)&mask_f );

		matA += 64;
		multab_b += 2;
		n_ele -= 2;
	}
	_mm256_storeu_si256( (__m256i*)c , r0^r1 );
}

static void gf16mat_prod_multab_32x32_avx2( uint8_t * c , const uint8_t * matA , const __m256i * multab_b )
{
	__m256i mask_f = _mm256_set1_epi8(0xf);
	__m256i ma01 = _mm256_loadu_si256((const __m256i*) (matA) ); // 2 rows
	__m256i ma23 = _mm256_loadu_si256((const __m256i*) (matA+32) ); // 2 rows
	__m256i ma45 = _mm256_loadu_si256((const __m256i*) (matA+64) ); // 2 rows
	__m256i ma67 = _mm256_loadu_si256((const __m256i*) (matA+96) ); // 2 rows
	__m256i mb01 = _mm256_permute2x128_si256( multab_b[0] , multab_b[1] , 0x20 );
	__m256i mb23 = _mm256_permute2x128_si256( multab_b[2] , multab_b[3] , 0x20 );
	__m256i mb45 = _mm256_permute2x128_si256( multab_b[4] , multab_b[5] , 0x20 );
	__m256i mb67 = _mm256_permute2x128_si256( multab_b[6] , multab_b[7] , 0x20 );
	__m256i r = _mm256_shuffle_epi8( mb01 , ma01&mask_f )^_mm256_shuffle_epi8( _mm256_slli_epi16(mb01,4) , _mm256_srli_epi16(ma01,4)&mask_f );
	r ^= _mm256_shuffle_epi8( mb23 , ma23&mask_f )^_mm256_shuffle_epi8( _mm256_slli_epi16(mb23,4) , _mm256_srli_epi16(ma23,4)&mask_f );
	r ^= _mm256_shuffle_epi8( mb45 , ma45&mask_f )^_mm256_shuffle_epi8( _mm256_slli_epi16(mb45,4) , _mm256_srli_epi16(ma45,4)&mask_f );
	r ^= _mm256_shuffle_epi8( mb67 , ma67&mask_f )^_mm256_shuffle_epi8( _mm256_slli_epi16(mb67,4) , _mm256_srli_epi16(ma67,4)&mask_f );
	for(int i=8;i<32;i+=8) {
		multab_b += 8;
		matA += 128;

		ma01 = _mm256_loadu_si256((const __m256i*) (matA) ); // 2 rows
		ma23 = _mm256_loadu_si256((const __m256i*) (matA+32) ); // 2 rows
		ma45 = _mm256_loadu_si256((const __m256i*) (matA+64) ); // 2 rows
		ma67 = _mm256_loadu_si256((const __m256i*) (matA+96) ); // 2 rows
		mb01 = _mm256_permute2x128_si256( multab_b[0] , multab_b[1] , 0x20 );
		mb23 = _mm256_permute2x128_si256( multab_b[2] , multab_b[3] , 0x20 );
		mb45 = _mm256_permute2x128_si256( multab_b[4] , multab_b[5] , 0x20 );
		mb67 = _mm256_permute2x128_si256( multab_b[6] , multab_b[7] , 0x20 ); 
		r ^= _mm256_shuffle_epi8( mb01 , ma01&mask_f )^_mm256_shuffle_epi8( _mm256_slli_epi16(mb01,4) , _mm256_srli_epi16(ma01,4)&mask_f );
		r ^= _mm256_shuffle_epi8( mb23 , ma23&mask_f )^_mm256_shuffle_epi8( _mm256_slli_epi16(mb23,4) , _mm256_srli_epi16(ma23,4)&mask_f );
		r ^= _mm256_shuffle_epi8( mb45 , ma45&mask_f )^_mm256_shuffle_epi8( _mm256_slli_epi16(mb45,4) , _mm256_srli_epi16(ma45,4)&mask_f );
		r ^= _mm256_shuffle_epi8( mb67 , ma67&mask_f )^_mm256_shuffle_epi8( _mm256_slli_epi16(mb67,4) , _mm256_srli_epi16(ma67,4)&mask_f );
	}

	__m128i r0 = _mm256_castsi256_si128( r );
	__m128i r1 = _mm256_extractf128_si256( r , 1 );
	_mm_storeu_si128( (__m128i*)c , r0^r1 );
}

static void gf16mat_prod_multab_16x16_avx2( uint8_t * c , const uint8_t * matA , const __m256i * multab_b )
{
	__m256i mask_f = _mm256_set1_epi8(0xf);

	__m256i ma0123 = _mm256_loadu_si256((const __m256i*) (matA) );    // 4 rows
	__m256i ma4567 = _mm256_loadu_si256((const __m256i*) (matA+32) ); // 4 rows
	__m256i mb02 = _mm256_permute2x128_si256( multab_b[0] , multab_b[2] , 0x20 );
	__m256i mb13 = _mm256_permute2x128_si256( multab_b[1] , multab_b[3] , 0x20 );
	__m256i mb46 = _mm256_permute2x128_si256( multab_b[4] , multab_b[6] , 0x20 );
	__m256i mb57 = _mm256_permute2x128_si256( multab_b[5] , multab_b[7] , 0x20 );
	__m256i ma0123l = ma0123&mask_f;
	__m256i ma0123h = _mm256_srli_epi16(ma0123,4)&mask_f;
	__m256i ma4567l = ma4567&mask_f;
	__m256i ma4567h = _mm256_srli_epi16(ma4567,4)&mask_f;
    __m256i ma02 = _mm256_unpacklo_epi64(ma0123l,ma0123h);
    __m256i ma13 = _mm256_unpackhi_epi64(ma0123l,ma0123h);
    __m256i ma46 = _mm256_unpacklo_epi64(ma4567l,ma4567h);
    __m256i ma57 = _mm256_unpackhi_epi64(ma4567l,ma4567h);
	__m256i r = _mm256_shuffle_epi8(mb02,ma02)^_mm256_shuffle_epi8(mb13,ma13)^_mm256_shuffle_epi8(mb46,ma46)^_mm256_shuffle_epi8(mb57,ma57);

	__m256i ma89ab = _mm256_loadu_si256((const __m256i*) (matA+64) );    // 4 rows
	__m256i macdef = _mm256_loadu_si256((const __m256i*) (matA+96) ); // 4 rows
	__m256i mb8a = _mm256_permute2x128_si256( multab_b[8] , multab_b[10] , 0x20 );
	__m256i mb9b = _mm256_permute2x128_si256( multab_b[9] , multab_b[11] , 0x20 );
	__m256i mbce = _mm256_permute2x128_si256( multab_b[12] , multab_b[14] , 0x20 );
	__m256i mbdf = _mm256_permute2x128_si256( multab_b[13] , multab_b[15] , 0x20 );
	__m256i ma89abl = ma89ab&mask_f;
	__m256i ma89abh = _mm256_srli_epi16(ma89ab,4)&mask_f;
	__m256i macdefl = macdef&mask_f;
	__m256i macdefh = _mm256_srli_epi16(macdef,4)&mask_f;
    __m256i ma8a = _mm256_unpacklo_epi64(ma89abl,ma89abh);
    __m256i ma9b = _mm256_unpackhi_epi64(ma89abl,ma89abh);
    __m256i mace = _mm256_unpacklo_epi64(macdefl,macdefh);
    __m256i madf = _mm256_unpackhi_epi64(macdefl,macdefh);
	r ^= _mm256_shuffle_epi8(mb8a,ma8a)^_mm256_shuffle_epi8(mb9b,ma9b)^_mm256_shuffle_epi8(mbce,mace)^_mm256_shuffle_epi8(mbdf,madf);

	__m128i rr = _mm256_castsi256_si128( r ) ^ _mm256_extractf128_si256( r , 1 );
	__m128i rr2 = rr ^ _mm_srli_si128( _mm_slli_epi16(rr,4) , 8 );

	uint8_t temp[16] __attribute__((aligned(16)));
	_mm_store_si128( (__m128i*)temp , rr2 );
	for(int i=0;i<8;i++) c[i] = temp[i];
}



static inline
void gf16mat_blockmat_madd_avx2( __m256i * dest , const uint8_t * org_mat , unsigned mat_vec_byte , unsigned blk_st_idx , unsigned blk_vec_byte ,
        const __m256i * multab_vec_ele , unsigned n_vec_ele )
{
    unsigned n_full_ymm = blk_vec_byte >> 5;
    unsigned n_rem_byte = blk_vec_byte & 31;
    __m256i mask_f = _mm256_set1_epi8(0xf);

  org_mat += blk_st_idx;
  if (!n_rem_byte) {
    for(unsigned i = 0; i < n_vec_ele; i++ ) {
        __m256i tab_l = multab_vec_ele[0];
        __m256i tab_h = _mm256_slli_epi16(tab_l,4);;
        multab_vec_ele ++;

        for(unsigned j=0;j<n_full_ymm;j++) {
            __m256i mj = _mm256_loadu_si256( (__m256i*)(org_mat+j*32) );
            dest[j] ^= linear_transform_8x8_256b( tab_l , tab_h , mj , mask_f );
        }
        org_mat += mat_vec_byte;
    }
  } else {
    for(unsigned i = 0; i < n_vec_ele-1; i++ ) {
        __m256i tab_l = multab_vec_ele[0];
        __m256i tab_h = _mm256_slli_epi16(tab_l,4);;
        multab_vec_ele ++;
        for(unsigned j=0;j<n_full_ymm+1;j++) {
            __m256i mj = _mm256_loadu_si256( (__m256i*)(org_mat+j*32) );
            dest[j] ^= linear_transform_8x8_256b( tab_l , tab_h , mj , mask_f );
        }
        org_mat += mat_vec_byte;
    }{ // i = n_vec_ele-1
        __m256i tab_l = multab_vec_ele[0];
        __m256i tab_h = _mm256_slli_epi16(tab_l,4);;
        multab_vec_ele ++;
        for(unsigned j=0;j<n_full_ymm;j++) {
            __m256i mj = _mm256_loadu_si256( (__m256i*)(org_mat+j*32) );
            dest[j] ^= linear_transform_8x8_256b( tab_l , tab_h , mj , mask_f );
        } //if( n_rem_byte )
        { // j = n_full_ymm;
            __m256i mj = _load_ymm( org_mat+(n_full_ymm*32) , n_rem_byte );
            dest[n_full_ymm] ^= linear_transform_8x8_256b( tab_l , tab_h , mj , mask_f );
        }
    }
  }
}


void gf16mat_prod_multab_avx2( uint8_t * c , const uint8_t * matA , unsigned matA_vec_byte , unsigned matA_n_vec , const uint8_t * multab_b )
{
	if((32==matA_vec_byte)) { gf16mat_prod_multab_64x_avx2(c,matA,matA_n_vec,(const __m256i*)multab_b); return; }
	if((16==matA_vec_byte)&&(32==matA_n_vec)) { gf16mat_prod_multab_32x32_avx2(c,matA,(const __m256i*)multab_b); return; }
	if((8==matA_vec_byte) &&(16==matA_n_vec)) { gf16mat_prod_multab_16x16_avx2(c,matA,(const __m256i*)multab_b); return; }

    const __m256i * multabs = (const __m256i*)multab_b;
    gf256v_set_zero( c , matA_vec_byte );

    __m256i blockmat_vec[8];

    while(matA_n_vec) {

	unsigned n_ele = (matA_n_vec>=32)?32:matA_n_vec;
        unsigned vec_len_to_go = matA_vec_byte;
        while( vec_len_to_go ) {
            unsigned block_len = (vec_len_to_go >= 8*32)? 8*32 : vec_len_to_go;
            unsigned block_st_idx = matA_vec_byte - vec_len_to_go;

            loadu_ymm( blockmat_vec , c + block_st_idx , block_len );
            gf16mat_blockmat_madd_avx2( blockmat_vec , matA , matA_vec_byte , block_st_idx , block_len , multabs , n_ele );
            storeu_ymm( c + block_st_idx , block_len , blockmat_vec );

            vec_len_to_go -= block_len;
        }

        matA_n_vec -= n_ele;
        multabs += n_ele;
        matA += n_ele*matA_vec_byte;
    }
}



////////////////////////////////////////////////////////////////////





static void gf16mat_prod_64x_avx2( uint8_t * c , const uint8_t * matA , unsigned n_ele , const uint8_t * b )
{
	__m256i multabs[32];
	__m256i ci;
	__m256i r = _mm256_setzero_si256();
	while( n_ele ) {
		unsigned i_ele = (32<=n_ele)? 32 : n_ele;
		_gf16v_generate_multabs_avx2( multabs, b , i_ele );
		gf16mat_prod_multab_64x_avx2( (uint8_t *)&ci , matA , i_ele , multabs );
		r ^= ci;
		n_ele -= i_ele;
		matA += 32*i_ele;
		b += i_ele/2;
	}
	_mm256_storeu_si256((__m256i_u*)c , r );
}


static void gf16mat_prod_32x32_avx2( uint8_t * c , const uint8_t * matA , const uint8_t * b )
{
	__m256i multabs[32];
	__m128i x0 = _mm_loadu_si128((const __m128i*)b);
	xmmx2_t xx = gf16v_split_16to32_sse2( x0 );
	gf16v_generate_multab_16_avx2( multabs    , xx.v0 , 16 );
	gf16v_generate_multab_16_avx2( multabs+16 , xx.v1 , 16 );

	gf16mat_prod_multab_32x32_avx2( c , matA , multabs );
}

static void gf16mat_prod_16x16_avx2( uint8_t * c , const uint8_t * matA , const uint8_t * b )
{
	__m256i multabs[16];
	uint8_t temp[16] __attribute__((aligned(16)));
	for(int i=0;i<8;i++) temp[i]=b[i];
	__m128i x0 = _mm_load_si128((const __m128i*)temp);
	xmmx2_t xx = gf16v_split_16to32_sse2( x0 );
	gf16v_generate_multab_16_avx2( multabs    , xx.v0 , 16 );

	gf16mat_prod_multab_16x16_avx2( c , matA , multabs );
}



void gf16mat_prod_avx2( uint8_t * c , const uint8_t * matA , unsigned matA_vec_byte , unsigned matA_n_vec , const uint8_t * b )
{
	if((32==matA_vec_byte)) { gf16mat_prod_64x_avx2(c,matA,matA_n_vec,b); return; }
	if((16==matA_vec_byte)&&(32==matA_n_vec)) { gf16mat_prod_32x32_avx2(c,matA,b); return; }
	if((8==matA_vec_byte) &&(16==matA_n_vec)) { gf16mat_prod_16x16_avx2(c,matA,b); return; }

    __m256i multabs[32];
    gf256v_set_zero( c , matA_vec_byte );

    __m256i blockmat_vec[8];

    while(matA_n_vec) {
        unsigned n_ele = (32<=matA_n_vec)? 32: matA_n_vec;
		_gf16v_generate_multabs_avx2( multabs , b , n_ele );

        unsigned vec_len_to_go = matA_vec_byte;
        while( vec_len_to_go ) {
            unsigned block_len = (vec_len_to_go >= 8*32)? 8*32 : vec_len_to_go;
            unsigned block_st_idx = matA_vec_byte - vec_len_to_go;

            loadu_ymm( blockmat_vec , c + block_st_idx , block_len );
            gf16mat_blockmat_madd_avx2( blockmat_vec , matA , matA_vec_byte , block_st_idx , block_len , multabs , n_ele );
            storeu_ymm( c + block_st_idx , block_len , blockmat_vec );

            vec_len_to_go -= block_len;
        }

        matA_n_vec -= n_ele;
        b += (n_ele>>1);
        matA += n_ele*matA_vec_byte;
    }
}











////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////  matrix-vector multiplication, GF( 256 ) ///////////////////
////////////////////////////////////////////////////////////////////////////////////////////







static
void gf256mat_blockmat_madd_avx2( __m256i * dest , const uint8_t * org_mat , unsigned mat_vec_byte , unsigned blk_st_idx , unsigned blk_vec_byte ,
        const __m256i * multab_vec_ele , unsigned n_vec_ele )
{
    unsigned n_full_ymm = blk_vec_byte >> 5;
    unsigned n_rem_byte = blk_vec_byte & 31;
    __m256i mask_f = _mm256_set1_epi8(0xf);

  org_mat += blk_st_idx;
  if(!n_rem_byte) {
    for(unsigned i = 0; i < n_vec_ele; i++ ) {
        __m256i m_tab = multab_vec_ele[0];
        multab_vec_ele ++;
        __m256i ml = _mm256_permute2x128_si256( m_tab , m_tab , 0 );
        __m256i mh = _mm256_permute2x128_si256( m_tab , m_tab , 0x11 );

        for(unsigned j=0;j<n_full_ymm;j++) {
            __m256i mj = _mm256_loadu_si256( (__m256i*)(org_mat+j*32) );
            dest[j] ^= linear_transform_8x8_256b( ml , mh , mj , mask_f );
        }
        org_mat += mat_vec_byte;
    }
  } else {
    for(unsigned i = 0; i < n_vec_ele-1; i++ ) {
        __m256i m_tab = multab_vec_ele[0];
        multab_vec_ele ++;
        __m256i ml = _mm256_permute2x128_si256( m_tab , m_tab , 0 );
        __m256i mh = _mm256_permute2x128_si256( m_tab , m_tab , 0x11 );

        for(unsigned j=0;j<n_full_ymm+1;j++) {
            __m256i mj = _mm256_loadu_si256( (__m256i*)(org_mat+j*32) );
            dest[j] ^= linear_transform_8x8_256b( ml , mh , mj , mask_f );
        }
        org_mat += mat_vec_byte;
    }{  // i = n_vec_ele-1;
        __m256i m_tab = multab_vec_ele[0];
        multab_vec_ele ++;
        __m256i ml = _mm256_permute2x128_si256( m_tab , m_tab , 0 );
        __m256i mh = _mm256_permute2x128_si256( m_tab , m_tab , 0x11 );

        for(unsigned j=0;j<n_full_ymm;j++) {
            __m256i mj = _mm256_loadu_si256( (__m256i*)(org_mat+j*32) );
            dest[j] ^= linear_transform_8x8_256b( ml , mh , mj , mask_f );
        } //if( n_rem_byte )
        { // unsigned j=n_full_ymm
            __m256i mj = _load_ymm( org_mat+(n_full_ymm*32) , n_rem_byte );
            dest[n_full_ymm] ^= linear_transform_8x8_256b( ml , mh , mj , mask_f );
        }
    }
  }
}

static void gf256mat_prod_multab_1ymm_avx2( uint8_t * c , const uint8_t * matA , unsigned matA_vec_byte , unsigned matA_n_vec , const __m256i * multabs ) {
	__m256i tmp = _mm256_setzero_si256();
    __m256i mask_f = _mm256_set1_epi8(0xf);
	for(unsigned i=0;i<matA_n_vec-1;i++) {
        __m256i m_tab = multabs[i];
        __m256i ml = _mm256_permute2x128_si256( m_tab , m_tab , 0 );
        __m256i mh = _mm256_permute2x128_si256( m_tab , m_tab , 0x11 );

        __m256i mj = _mm256_loadu_si256( (__m256i*)matA );
    	tmp ^= linear_transform_8x8_256b( ml , mh , mj , mask_f );
		matA += matA_vec_byte;
	}{
		unsigned i=matA_n_vec-1;
        __m256i m_tab = multabs[i];
        __m256i ml = _mm256_permute2x128_si256( m_tab , m_tab , 0 );
        __m256i mh = _mm256_permute2x128_si256( m_tab , m_tab , 0x11 );

        __m256i mj = (32==matA_vec_byte)? _mm256_loadu_si256((const __m256i*)matA) : _load_ymm( matA , matA_vec_byte );
    	tmp ^= linear_transform_8x8_256b( ml , mh , mj , mask_f );
	}
	_store_ymm( c , matA_vec_byte , tmp );
	//storeu_ymm( c , matA_vec_byte , blockmat_vec );
}
static void gf256mat_prod_multab_2ymm_avx2( uint8_t * c , const uint8_t * matA , unsigned matA_vec_byte , unsigned matA_n_vec , const __m256i * multabs ) {
	__m256i tmp0 = _mm256_setzero_si256();
	__m256i tmp1 = _mm256_setzero_si256();
    __m256i mask_f = _mm256_set1_epi8(0xf);
	for(unsigned i=0;i<matA_n_vec-1;i++) {
        __m256i m_tab = multabs[i];
        __m256i ml = _mm256_permute2x128_si256( m_tab , m_tab , 0 );
        __m256i mh = _mm256_permute2x128_si256( m_tab , m_tab , 0x11 );

        __m256i mj0 = _mm256_loadu_si256( (__m256i*)matA );
        __m256i mj1 = _mm256_loadu_si256( (__m256i*)(matA+32) );
    	tmp0 ^= linear_transform_8x8_256b( ml , mh , mj0 , mask_f );
    	tmp1 ^= linear_transform_8x8_256b( ml , mh , mj1 , mask_f );
		matA += matA_vec_byte;
	}{
		unsigned i=matA_n_vec-1;
        __m256i m_tab = multabs[i];
        __m256i ml = _mm256_permute2x128_si256( m_tab , m_tab , 0 );
        __m256i mh = _mm256_permute2x128_si256( m_tab , m_tab , 0x11 );

        __m256i mj0 = _mm256_loadu_si256( (__m256i*)matA );
        __m256i mj1 = (64==matA_vec_byte)? _mm256_loadu_si256( (__m256i*)(matA+32) ) : _load_ymm( matA+32 , matA_vec_byte-32 );
    	tmp0 ^= linear_transform_8x8_256b( ml , mh , mj0 , mask_f );
    	tmp1 ^= linear_transform_8x8_256b( ml , mh , mj1 , mask_f );
	}
	_mm256_storeu_si256( (__m256i*)c , tmp0 );
	_store_ymm( c+32 , matA_vec_byte-32 , tmp1 );
}
static void gf256mat_prod_multab_3ymm_avx2( uint8_t * c , const uint8_t * matA , unsigned matA_vec_byte , unsigned matA_n_vec , const __m256i * multabs ) {
	__m256i tmp0 = _mm256_setzero_si256();
	__m256i tmp1 = _mm256_setzero_si256();
	__m256i tmp2 = _mm256_setzero_si256();
    __m256i mask_f = _mm256_set1_epi8(0xf);
	for(unsigned i=0;i<matA_n_vec-1;i++) {
        __m256i m_tab = multabs[i];
        __m256i ml = _mm256_permute2x128_si256( m_tab , m_tab , 0 );
        __m256i mh = _mm256_permute2x128_si256( m_tab , m_tab , 0x11 );

        __m256i mj0 = _mm256_loadu_si256( (__m256i*)matA );
        __m256i mj1 = _mm256_loadu_si256( (__m256i*)(matA+32) );
        __m256i mj2 = _mm256_loadu_si256( (__m256i*)(matA+64) );
    	tmp0 ^= linear_transform_8x8_256b( ml , mh , mj0 , mask_f );
    	tmp1 ^= linear_transform_8x8_256b( ml , mh , mj1 , mask_f );
    	tmp2 ^= linear_transform_8x8_256b( ml , mh , mj2 , mask_f );
		matA += matA_vec_byte;
	}{
		unsigned i=matA_n_vec-1;
        __m256i m_tab = multabs[i];
        __m256i ml = _mm256_permute2x128_si256( m_tab , m_tab , 0 );
        __m256i mh = _mm256_permute2x128_si256( m_tab , m_tab , 0x11 );

        __m256i mj0 = _mm256_loadu_si256( (__m256i*)matA );
        __m256i mj1 = _mm256_loadu_si256( (__m256i*)(matA+32) );
        __m256i mj2 = (96==matA_vec_byte)? _mm256_loadu_si256( (__m256i*)(matA+64) ) : _load_ymm( matA+64 , matA_vec_byte-64 );
    	tmp0 ^= linear_transform_8x8_256b( ml , mh , mj0 , mask_f );
    	tmp1 ^= linear_transform_8x8_256b( ml , mh , mj1 , mask_f );
    	tmp2 ^= linear_transform_8x8_256b( ml , mh , mj2 , mask_f );
	}
	_mm256_storeu_si256( (__m256i*)c , tmp0 );
	_mm256_storeu_si256( (__m256i*)(c+32) , tmp1 );
	_store_ymm( c+64 , matA_vec_byte-64 , tmp2 );
}
static void gf256mat_prod_multab_small_avx2( uint8_t * c , const uint8_t * matA , unsigned matA_vec_byte , unsigned matA_n_vec , const __m256i * multabs ) {
	// XXX: if(matA_vec_byte <16 ) exit(-1);
#if 1
// faster
    if     (matA_vec_byte <= 32) { gf256mat_prod_multab_1ymm_avx2(c,matA,matA_vec_byte,matA_n_vec,multabs); return; }
    else if(matA_vec_byte <= 64) { gf256mat_prod_multab_2ymm_avx2(c,matA,matA_vec_byte,matA_n_vec,multabs); return; }
    else {                         gf256mat_prod_multab_3ymm_avx2(c,matA,matA_vec_byte,matA_n_vec,multabs); return; }
#else
    if     (matA_vec_byte > 64) { gf256mat_prod_multab_3ymm_avx2(c,matA,matA_vec_byte,matA_n_vec,multabs); return; }
	else if(matA_vec_byte > 32) { gf256mat_prod_multab_2ymm_avx2(c,matA,matA_vec_byte,matA_n_vec,multabs); return; }
    else {                        gf256mat_prod_multab_1ymm_avx2(c,matA,matA_vec_byte,matA_n_vec,multabs); return; }
#endif
}

void gf256mat_prod_multab_avx2( uint8_t * c , const uint8_t * matA , unsigned matA_vec_byte , unsigned matA_n_vec , const uint8_t * multab_b )
{
    const __m256i *multabs = (const __m256i *)multab_b;
	if( 96>=matA_vec_byte ) { gf256mat_prod_multab_small_avx2(c,matA,matA_vec_byte,matA_n_vec,multabs); return; }

    while(matA_n_vec) {
        unsigned n_ele = matA_n_vec;

        unsigned vec_len_to_go = matA_vec_byte;
        while( vec_len_to_go ) {
            unsigned block_len = (vec_len_to_go >= 8*32)? 8*32 : vec_len_to_go;
            unsigned block_st_idx = matA_vec_byte - vec_len_to_go;

			__m256i blockmat_vec[8]; for(int i=0;i<8;i++) blockmat_vec[i] = _mm256_setzero_si256();
            gf256mat_blockmat_madd_avx2( blockmat_vec , matA , matA_vec_byte , block_st_idx , block_len , multabs , n_ele );
            storeu_ymm( c + block_st_idx , block_len , blockmat_vec );

            vec_len_to_go -= block_len;
        }

        matA_n_vec -= n_ele;
        multabs += n_ele;
        matA += n_ele*matA_vec_byte;
    }
}

#if 1
static
void gf256mat_prod_small_avx2( uint8_t * c , const uint8_t * matA , unsigned matA_vec_byte , unsigned matA_n_vec , const uint8_t * b )
{
    __m256i multabs[96];
    for(unsigned i=0;i<matA_n_vec;i+=16) {
		unsigned rem = matA_n_vec-i;
        unsigned n_ele = (rem>=16) ? 16 : rem;
        __m128i x = (rem>=16)? _mm_loadu_si128( (const __m128i*)(b+i) ) : _load_xmm( (b+i) , rem );
        gf256v_generate_multab_16_avx2( multabs+i , x , n_ele );
	}

	gf256mat_prod_multab_small_avx2(c, matA, matA_vec_byte, matA_n_vec , multabs );
}
#endif

void gf256mat_prod_avx2( uint8_t * c , const uint8_t * matA , unsigned matA_vec_byte , unsigned matA_n_vec , const uint8_t * b )
{
	if( (96>=matA_vec_byte)&&(96>=matA_n_vec) ) { gf256mat_prod_small_avx2(c,matA,matA_vec_byte,matA_n_vec,b); return; }

    __m256i multabs[16];
    gf256v_set_zero( c , matA_vec_byte );

    __m256i blockmat_vec[8];

    while(matA_n_vec) {

        unsigned n_ele = (matA_n_vec>=16)? 16: matA_n_vec;
        __m128i x = (matA_n_vec>=16)? _mm_loadu_si128( (const __m128i*)b ) : _load_xmm( b , matA_n_vec );
        gf256v_generate_multab_16_avx2( multabs , x , n_ele );

        unsigned vec_len_to_go = matA_vec_byte;
        while( vec_len_to_go ) {
            unsigned block_len = (vec_len_to_go >= 8*32)? 8*32 : vec_len_to_go;
            unsigned block_st_idx = matA_vec_byte - vec_len_to_go;

            loadu_ymm( blockmat_vec , c + block_st_idx , block_len );
            gf256mat_blockmat_madd_avx2( blockmat_vec , matA , matA_vec_byte , block_st_idx , block_len , multabs , n_ele );
            storeu_ymm( c + block_st_idx , block_len , blockmat_vec );

            vec_len_to_go -= block_len;
        }

        matA_n_vec -= n_ele;
        b += n_ele;
        matA += n_ele*matA_vec_byte;
    }
}






/////////////////////////////////////////////////////////////////////////////////////
///////////////////  code for solving linear equations,  GF(16) /////////////////////
/////////////////////////////////////////////////////////////////////////////////////







// input -> output
// 0 -> 0xff
// 1 .. 15 -> 0
static inline
uint8_t _if_zero_then_0xff(uint8_t p ) {
	return (p-1)>>4;  // signed shift. don't know why
}


static inline
unsigned _gf16mat_gauss_elim_h32xw64_avx2( const uint8_t * mat )
{
	__m256i mask_f = _mm256_set1_epi8( 0xf );

	uint8_t temp[32] __attribute__((aligned(32)));
	uint8_t pivots[32] __attribute__((aligned(32)));
	__m256i multabs[32];

	uint8_t rr8 = 1;
	for(unsigned i=0;i<32;i++) {
		if( i&1 ) { for(unsigned j=0;j<32;j++) pivots[j] = mat[j*32+(i>>1)]>>4; }
		else { for(unsigned j=0;j<32;j++) pivots[j] = mat[j*32+(i>>1)]&0xf; }

		__m256i rowi = _mm256_load_si256( (__m256i*)(mat+i*32) );
#if defined( _GE_CADD_EARLY_STOP_ )
        unsigned stop = (i+16 < 32)? i+16: 32;
        for(unsigned j=i+1;j<stop;j++) {
#else
		for(unsigned j=i+1;j<32;j++) {
#endif
			temp[0] = _if_zero_then_0xff( pivots[i] );
			__m256i mask_zero = _mm256_set1_epi8( temp[0] );

			__m256i rowj = _mm256_load_si256( (__m256i*)(mat+j*32) );
			rowi ^= mask_zero&rowj;
			pivots[i] ^= temp[0]&pivots[j];
		}
		uint8_t is_pi_nz = _if_zero_then_0xff(pivots[i]);
		is_pi_nz = ~is_pi_nz;
		rr8 &= is_pi_nz;

		pivots[i] = gf16_inv_sse( pivots[i] );

		gf16v_generate_multab_16_avx2( multabs , _mm_load_si128((__m128i*)pivots) , 16 );
		gf16v_generate_multab_16_avx2( multabs+16 , _mm_load_si128((__m128i*)(pivots+16)) , 16 );

		{  // pivot row
			rowi = linear_transform_8x8_256b( multabs[i] , _mm256_slli_epi16(multabs[i],4) , rowi , mask_f );
			_mm256_store_si256( (__m256i*)(mat+i*32) , rowi );
		}
		for(unsigned j=0;j<32;j++) {
			if( j == i ) continue;
			__m256i rowj = _mm256_load_si256( (__m256i*)(mat+j*32) );
			rowj ^= linear_transform_8x8_256b( multabs[j] , _mm256_slli_epi16(multabs[j],4) , rowi , mask_f );
			_mm256_store_si256( (__m256i*)(mat+j*32) , rowj );
		}
	}
	return rr8;
}

static inline
unsigned _gf16mat_gauss_elim_h16xw32_avx2( const uint8_t * mat )
{
	uint8_t pivots[16] __attribute__((aligned(32)));
	__m256i multabs[16];

	uint8_t rr8 = 1;
	for(unsigned i=0;i<16;i++) {
		for(int j=0;j<16;j++) pivots[j] = mat[j*32+i];

		__m256i rowi = _mm256_load_si256( (__m256i*)(mat+i*32) );
		uint8_t pi = pivots[i];
		for(unsigned j=i+1;j<16;j++) {
			uint8_t temp = _if_zero_then_0xff( pi );
			__m256i mask_zero = _mm256_set1_epi8( temp );

			__m256i rowj = _mm256_load_si256( (__m256i*)(mat+j*32) );
			rowi ^= mask_zero&rowj;
			pi ^= temp&pivots[j];
		}
		uint8_t is_pi_nz = _if_zero_then_0xff(pi);
		is_pi_nz = ~is_pi_nz;
		rr8 &= is_pi_nz;

		pivots[i] = gf16_inv_sse( pi );

		gf16v_generate_multab_16_avx2( multabs , _mm_load_si128((__m128i*)pivots) , 16 );

		{  // pivot row
			rowi = _mm256_shuffle_epi8( multabs[i] , rowi );
			_mm256_store_si256( (__m256i*)(mat+i*32) , rowi );
		}
		for(unsigned j=0;j<16;j++) {
			if( j == i ) continue;
			__m256i rowj = _mm256_load_si256( (__m256i*)(mat+j*32) );
			rowj ^= _mm256_shuffle_epi8( multabs[j] , rowi );
			_mm256_store_si256( (__m256i*)(mat+j*32) , rowj );
		}
	}
	return rr8;
}




static inline
unsigned _gf16mat_gauss_elim_avx2( const uint8_t * mat , unsigned h , unsigned w_byte )
{
        //assert( 0==(w_byte&63) ); /// w_byte is a multiple of 64.
        //assert( 128 >= h );

	__m256i mask_f = _mm256_set1_epi8( 0xf );

	uint8_t temp[32] __attribute__((aligned(32)));
	uint8_t pivots[128] __attribute__((aligned(32)));
	__m256i multabs[128];

	unsigned n_ymm = w_byte>>5;

	uint8_t rr8 = 1;
	for(unsigned i=0;i<h;i++) {
		if(i&1) { for(unsigned j=0;j<h;j++) pivots[j] = mat[j*w_byte+(i>>1)]>>4; }
		else { for(unsigned j=0;j<h;j++) pivots[j] = mat[j*w_byte+(i>>1)]&0xf; }

		unsigned offset_ymm = i>>6;  // 1 ymm -> 64 gf16 elements

#if defined( _GE_CADD_EARLY_STOP_ )
        unsigned stop = (i+16 < h)? i+16: h;
        for(unsigned j=i+1;j<stop;j++) {
#else
		for(unsigned j=i+1;j<h;j++) {
#endif
			temp[0] = _if_zero_then_0xff( pivots[i] );
			pivots[i] ^= temp[0]&pivots[j];

			__m256i mask_zero = _mm256_set1_epi8( temp[0] );
			for(unsigned k=offset_ymm;k<n_ymm;k++) {
				__m256i rowi = _mm256_load_si256( (__m256i*)(mat+i*w_byte+k*32) );
				__m256i rowj = _mm256_load_si256( (__m256i*)(mat+j*w_byte+k*32) );
				rowi ^= mask_zero&rowj;
				_mm256_store_si256( (__m256i*)(mat+i*w_byte+k*32) , rowi );
			}
		}
		uint8_t is_pi_nz = _if_zero_then_0xff(pivots[i]);
		is_pi_nz = ~is_pi_nz;
		rr8 &= is_pi_nz;

		pivots[i] = gf16_inv_sse( pivots[i] );

		for(unsigned j=0;j<h;j+=16) {
			unsigned num = ((h-j)>16)? 16 : h-j;
			gf16v_generate_multab_16_avx2( multabs+j , _mm_load_si128((__m128i*)(pivots+j)) , num );
		}

		{  // pivot row
			__m256i ml = multabs[i];
			__m256i mh = _mm256_slli_epi16(multabs[i],4);
			for(unsigned k=offset_ymm;k<n_ymm;k++) {
				__m256i rowi = _mm256_load_si256( (__m256i*)(mat+i*w_byte+k*32) );
				rowi = linear_transform_8x8_256b( ml , mh , rowi , mask_f );
				_mm256_store_si256( (__m256i*)(mat+i*w_byte+k*32) , rowi );
			}
		}
		for(unsigned j=0;j<h;j++) {
			if( j == i ) continue;
			__m256i ml = multabs[j];
			__m256i mh = _mm256_slli_epi16(multabs[j],4);
			for(unsigned k=offset_ymm;k<n_ymm;k++) {
				__m256i rowi = _mm256_load_si256( (__m256i*)(mat+i*w_byte+k*32) );
				__m256i rowj = _mm256_load_si256( (__m256i*)(mat+j*w_byte+k*32) );
				rowj ^= linear_transform_8x8_256b( ml , mh , rowi , mask_f );
				_mm256_store_si256( (__m256i*)(mat+j*w_byte+k*32) , rowj );
			}
		}
	}
	return rr8;
}




unsigned gf16mat_inv_32x32_avx2(uint8_t *inv_a, const uint8_t *a )
{
	uint8_t mat[32*32] __attribute__((aligned(32))) = {0};
	for(int i=0;i<32;i++) {
		memcpy( mat+i*32 , a+i*16 , 16 );
		gf16v_set_ele( mat+i*32+16 , i , 1 );
	}
	unsigned r8 = _gf16mat_gauss_elim_h32xw64_avx2( mat );
	for(int i=0;i<32;i++) memcpy( inv_a+i*16 , mat+i*32+16 , 16 );
	gf256v_set_zero( mat , 32*32 );
	return r8;
}


unsigned gf16mat_inv_16x16_avx2(uint8_t *inv_a, const uint8_t *a )
{
	uint8_t mat[16*32] __attribute__((aligned(32))) = {0};
	for(int i=0;i<8;i++) {
		__m128i ai = _mm_loadu_si128( (const __m128i*)(a+16*i) ); // read 2 rows
		xmmx2_t ai2 = gf16v_split_16to32_sse2( ai );
		_mm_store_si128( (__m128i*)&mat[(i*2)  *32] , ai2.v0 );  mat[(i*2)  *32+16+i*2  ] = 1;
		_mm_store_si128( (__m128i*)&mat[(i*2+1)*32] , ai2.v1 );  mat[(i*2+1)*32+16+i*2+1] = 1;
	}

	unsigned r8 = _gf16mat_gauss_elim_h16xw32_avx2( mat );

	for(int i=0;i<16;i++) {
		for(int j=0;j<8;j++) {
			uint8_t ele = mat[i*32+16+j*2]|(mat[i*32+16+j*2+1]<<4);
			inv_a[i*8+j] = ele;
		}
	}
	return r8;
}



unsigned gf16mat_inv_avx2(uint8_t *inv_a, const uint8_t *a , unsigned h )
{
    if( 32==h ) return gf16mat_inv_32x32_avx2( inv_a , a );
	if( 16==h ) return gf16mat_inv_16x16_avx2( inv_a , a );
    // assert( h <= 64 );
#define MAX_H  64
    uint8_t mat[MAX_H*MAX_H] __attribute__((aligned(32)));  // max: 64x128
#undef MAX_H

    unsigned h_byte = (h+1)>>1;
    unsigned w_byte = ((h_byte+31)>>5)<<(5+1);  // a multiple of 64
    for (unsigned i = 0; i < h; i++) {
        uint8_t *ai = mat + i * w_byte;
        gf256v_set_zero(ai, w_byte );
        gf256v_add_sse(ai, a + i * h_byte, h_byte);
        gf16v_set_ele(ai + h_byte, i, 1);
    }
    uint8_t r8 = _gf16mat_gauss_elim_avx2(mat, h , w_byte);
    for( unsigned i=0;i<h;i++) { memcpy( inv_a + i*h_byte , mat + i*w_byte + h_byte , h_byte ); }
    return r8;
}







//////////////////    Gaussian elimination + Back substitution for solving linear equations  //////////////////





static inline
unsigned _gf16mat_sol_64x64_avx2( uint8_t * mat , __m256i * vec)
{
        //assert( 0==(w_byte&63) ); /// w_byte is a multiple of 64.
        //assert( 128 >= h );

	__m256i mask_f = _mm256_set1_epi8( 0xf );

	uint8_t pivots[64] __attribute__((aligned(32)));
	__m256i multabs[64];

	const unsigned h = 64;
	const unsigned w_byte = 32;

	uint8_t rr8 = 1;
	for(unsigned i=0;i<1;i++) {
		if(i&1) { for(unsigned j=0;j<h;j++) pivots[j] = mat[j*w_byte+(i>>1)]>>4; }
		else { for(unsigned j=0;j<h;j++) pivots[j] = mat[j*w_byte+(i>>1)]&0xf; }

		__m256i rowi = _mm256_load_si256( (__m256i*)(mat+i*w_byte) );

#if defined( _GE_CADD_EARLY_STOP_ )
        unsigned stop = (i+16 < h)? i+16: h;
        for(unsigned j=i+1;j<stop;j++) {
#else
		for(unsigned j=i+1;j<h;j++) {
#endif
			uint8_t mask = _if_zero_then_0xff( pivots[i] );
			pivots[i] ^= mask&pivots[j];

			__m256i mask_zero = _mm256_set1_epi8( mask );
			vec[i] ^= mask_zero&vec[j];
			rowi   ^= mask_zero&_mm256_load_si256( (__m256i*)(mat+j*w_byte) );
			_mm256_store_si256( (__m256i*)(mat+i*w_byte) , rowi );
		}
		uint8_t is_pi_nz = ~_if_zero_then_0xff(pivots[i]);
		rr8 &= is_pi_nz;

		pivots[i] = gf16_inv_sse( pivots[i] );

		for(unsigned j=0;j<h;j+=16) {
			unsigned num = ((h-j)>16)? 16 : h-j;
			gf16v_generate_multab_16_avx2( multabs+j , _mm_load_si128((__m128i*)(pivots+j)) , num );
		}

		{  // pivot row
			__m256i ml = multabs[i];
			__m256i mh = _mm256_slli_epi16(multabs[i],4);
			rowi   = linear_transform_8x8_256b( ml , mh , rowi , mask_f );
			_mm256_store_si256( (__m256i*)(mat+i*w_byte) , rowi );
			vec[i] = _mm256_shuffle_epi8( ml , vec[i] );
		}
		for(unsigned j=i+1;j<h;j++) {
			__m256i ml = multabs[j];
			__m256i mh = _mm256_slli_epi16(multabs[j],4);
			__m256i rowj = _mm256_load_si256( (__m256i*)(mat+j*w_byte) );
			rowj ^= linear_transform_8x8_256b( ml , mh , rowi , mask_f );
			_mm256_store_si256( (__m256i*)(mat+j*w_byte) , rowj );
			vec[j] ^= _mm256_shuffle_epi8( ml , vec[i] );
		}
	}

	// copy vec to mat
	do {  // i = 0
		__m256i temp = _mm256_insert_epi8( _mm256_setzero_si256() , 1 , 0 );
		_mm256_store_si256( (__m256i*)mat , _mm256_load_si256( (__m256i*)mat )^temp^vec[0] );
	} while(0);
	for(unsigned i=1;i<h;i++) {
		_mm256_store_si256( (__m256i*)(mat+i*w_byte) , _mm256_load_si256( (__m256i*)(mat+i*w_byte) )^vec[i] );
	}

	for(unsigned i=1;i<h;i++) {
		if(i&1) { for(unsigned j=i;j<h;j++) pivots[j] = mat[j*w_byte+(i>>1)]>>4; }
		else { for(unsigned j=i;j<h;j++) pivots[j] = mat[j*w_byte+(i>>1)]&0xf; }

		__m256i rowi = _mm256_load_si256( (__m256i*)(mat+i*w_byte) );

#if defined( _GE_CADD_EARLY_STOP_ )
        unsigned stop = (i+16 < h)? i+16: h;
        for(unsigned j=i+1;j<stop;j++) {
#else
		for(unsigned j=i+1;j<h;j++) {
#endif
			uint8_t mask = _if_zero_then_0xff( pivots[i] );
			pivots[i] ^= mask&pivots[j];
			__m256i mask_zero = _mm256_set1_epi8( mask );
			__m256i rowj = _mm256_load_si256( (__m256i*)(mat+j*w_byte) );
			rowi ^= mask_zero&rowj;
			_mm256_store_si256( (__m256i*)(mat+i*w_byte) , rowi );
		}
		uint8_t is_pi_nz = ~_if_zero_then_0xff(pivots[i]);
		rr8 &= is_pi_nz;

		pivots[i] = gf16_inv_sse( pivots[i] );

		for(unsigned j=((i)>>4)<<4;j<h;j+=16) {
			unsigned num = ((h-j)>16)? 16 : h-j;
			gf16v_generate_multab_16_avx2( multabs+j , _mm_load_si128((__m128i*)(pivots+j)) , num );
		}

		{  // pivot row
			__m256i ml = multabs[i];
			__m256i mh = _mm256_slli_epi16(multabs[i],4);
			rowi = linear_transform_8x8_256b( ml , mh , rowi , mask_f );
			_mm256_store_si256( (__m256i*)(mat+i*w_byte) , rowi );
		}
		for(unsigned j=i+1;j<h;j++) {
			__m256i ml = multabs[j];
			__m256i mh = _mm256_slli_epi16(multabs[j],4);
			__m256i rowj = _mm256_load_si256( (__m256i*)(mat+j*w_byte) );
			rowj ^= linear_transform_8x8_256b( ml , mh , rowi , mask_f );
			_mm256_store_si256( (__m256i*)(mat+j*w_byte) , rowj );
		}
	}

	return rr8;
}


#if 0
static inline
void split_32_to_64( __m256i * vec64 , __m256i vec_pack ) {
	__m256i mask_f = _mm256_set1_epi8(0xf);
	__m256i al = vec_pack&mask_f;
	__m256i ah = _mm256_srli_epi16( vec_pack,4 )&mask_f;

	__m256i a0 = _mm256_unpacklo_epi8( al , ah );
	__m256i a1 = _mm256_unpackhi_epi8( al , ah );

	__m256i b0 = _mm256_permute2x128_si256(a0,a1,0x20);
	__m256i b1 = _mm256_permute2x128_si256(a0,a1,0x31);

	_mm256_store_si256( vec64 , b0 );
	_mm256_store_si256( vec64 + 1 , b1 );
}
#endif




/*
static
void gf256mat_transpose_16x16_x2_even( uint8_t * mat )
{
#if 0
	for(int i=0;i<8;i+=4) {
		__m256i row0 = _mm256_load_si256( (__m256i*)(mat+i    *64) );
		__m256i row1 = _mm256_load_si256( (__m256i*)(mat+(i+1)*64) );
		__m256i row2 = _mm256_load_si256( (__m256i*)(mat+(i+2)*64) );
		__m256i row3 = _mm256_load_si256( (__m256i*)(mat+(i+3)*64) );
		__m256i row4 = _mm256_load_si256( (__m256i*)(mat+8*64+i    *64) );
		__m256i row5 = _mm256_load_si256( (__m256i*)(mat+8*64+(i+1)*64) );
		__m256i row6 = _mm256_load_si256( (__m256i*)(mat+8*64+(i+2)*64) );
		__m256i row7 = _mm256_load_si256( (__m256i*)(mat+8*64+(i+3)*64) );

		__m256i r0 = _mm256_unpacklo_epi64(row0,row4);
		__m256i r4 = _mm256_unpackhi_epi64(row0,row4);
		__m256i r1 = _mm256_unpacklo_epi64(row1,row5);
		__m256i r5 = _mm256_unpackhi_epi64(row1,row5);
		__m256i r2 = _mm256_unpacklo_epi64(row2,row6);
		__m256i r6 = _mm256_unpackhi_epi64(row2,row6);
		__m256i r3 = _mm256_unpacklo_epi64(row3,row7);
		__m256i r7 = _mm256_unpackhi_epi64(row3,row7);

		_mm256_store_si256( (__m256i*)(mat+i    *64) , r0);
		_mm256_store_si256( (__m256i*)(mat+(i+1)*64) , r1);
		_mm256_store_si256( (__m256i*)(mat+(i+2)*64) , r2);
		_mm256_store_si256( (__m256i*)(mat+(i+3)*64) , r3);
		_mm256_store_si256( (__m256i*)(mat+8*64+i    *64) , r4);
		_mm256_store_si256( (__m256i*)(mat+8*64+(i+1)*64) , r5);
		_mm256_store_si256( (__m256i*)(mat+8*64+(i+2)*64) , r6);
		_mm256_store_si256( (__m256i*)(mat+8*64+(i+3)*64) , r7);
	}
	gf256mat_transpose_8x8_x4_even( mat );
	gf256mat_transpose_8x8_x4_even( mat+8*64 );
#else
	for(int i=0;i<16;i++) {
		for(unsigned j=i+1;j<16;j++){
			uint8_t tmp = mat[j*64+i];
			mat[j*64+i] = mat[i*64+j];
			mat[i*64+j] = tmp;
		}
		for(unsigned j=i+1;j<16;j++){
			uint8_t tmp    = mat[j*64+i+16];
			mat[j*64+i+16] = mat[i*64+j+16];
			mat[i*64+j+16] = tmp;
		}
	}
#endif
}*/

#include <stdio.h>

static
void gf256mat_transpose_32x32_even( uint8_t * mat_8 )
{
#if 1
	__m256i mat[32];
	// load 
	for (size_t i = 0; i < 32; i++)
	{
		mat[i] = _mm256_load_si256( (__m256i*)(mat_8+i*64) );
	}
	// swap 16x16 blocks
	for (size_t i = 0; i < 16; i++)
	{
		__m256i tmp = _mm256_permute2x128_si256(mat[i],mat[i+16],0x20);
		mat[i+16] = _mm256_permute2x128_si256(mat[i],mat[i+16],0x31);
		mat[i] = tmp;
	}
	// swap 8x8 blocks
	for (size_t i = 0; i < 2; i++)
	{
		for (size_t j = 0; j < 8; j++)
		{
			size_t r = 16*i + j;
			__m256i tmp = _mm256_unpacklo_epi64(mat[r],mat[r+8]);
			mat[r+8] = _mm256_unpackhi_epi64(mat[r],mat[r+8]);
			mat[r] = tmp;
		}
	}
	// swap 4x4 blocks
	for (size_t i = 0; i < 4; i++)
	{
		for (size_t j = 0; j < 4; j++)
		{
			size_t r = 8*i + j;
			__m256i tmp = _mm256_blend_epi32(mat[r], _mm256_bslli_epi128(mat[r+4],4) , 0xaa);
			mat[r+4] = _mm256_blend_epi32(_mm256_bsrli_epi128(mat[r],4), mat[r+4] , 0xaa);
			mat[r] = tmp;
		}
	}
	// swap 2x2 blocks
	for (size_t i = 0; i < 8; i++)
	{
		for (size_t j = 0; j < 2; j++)
		{
			size_t r = 4*i + j;
			__m256i tmp = _mm256_blend_epi16(mat[r], _mm256_bslli_epi128(mat[r+2],2) , 0xaa);
			mat[r+2] = _mm256_blend_epi16(_mm256_bsrli_epi128(mat[r],2), mat[r+2] , 0xaa);
			mat[r] = tmp;
		}
	}
	// swap last bytes
	for (size_t i = 0; i < 16; i++)
	{
		size_t r = 2*i;
		__m256i blend_mask = _mm256_set1_epi16(0xFF00);
		__m256i tmp = _mm256_blendv_epi8(mat[r], _mm256_bslli_epi128(mat[r+1],1) , blend_mask);
		mat[r+1] = _mm256_blendv_epi8(_mm256_bsrli_epi128(mat[r],1), mat[r+1] , blend_mask);
		mat[r] = tmp;
	}
	// store result 
	for (size_t i = 0; i < 32; i++)
	{
		_mm256_store_si256( (__m256i*)(mat_8+i*64), mat[i]);
	}
	#else
	for(unsigned i=0;i<32;i++) {
		for(unsigned j=i+1;j<32;j++){
			uint8_t tmp = mat[j*64+i];
			mat[j*64+i] = mat[i*64+j];
			mat[i*64+j] = tmp;
		}
	}
#endif
}

static
void gf16mat_transpose_64x64(uint8_t *mat, const uint8_t *sqmat_a )
{
	for (size_t t = 0; t < 1; t++)
	{	
		memcpy( mat , sqmat_a , 64*32 );
		gf256mat_transpose_32x32_even( mat );
		gf256mat_transpose_32x32_even( mat+32 );
		__m256i mask_0f = _mm256_set1_epi8(0xf);
		__m256i mask_f0 = _mm256_set1_epi8(0xf0);
		// transpose 2x2 4-bit blocks
		for(int i=0;i<64;i+=2) {
			__m256i in1 = _mm256_load_si256((__m256i*)(mat+i*32));
			__m256i in2 = _mm256_load_si256((__m256i*)(mat+i*32+32));
			__m256i in1_0f = in1&mask_0f;
			__m256i in1_f0 = in1&mask_f0;
			__m256i in2_0f = in2&mask_0f;
			__m256i in2_f0 = in2&mask_f0;
			_mm256_store_si256( (__m256i*)(mat+i*32)    , in1_0f ^ _mm256_slli_epi16(in2_0f,4) );
			_mm256_store_si256( (__m256i*)(mat+i*32+32) , in2_f0 ^ _mm256_srli_epi16(in1_f0,4) );
		}
	}
}



static
unsigned gf16mat_GE_64x64_avx2(uint8_t *sqmat_a , uint8_t *constant)
{
    uint8_t mat[64*32] __attribute__((aligned(32)));
	__m256i vec[64] = {0};

    const unsigned height = 64;
    //unsigned width  = len/2;

    gf16mat_transpose_64x64( mat , sqmat_a );

	uint8_t * ptr = (uint8_t *)vec;
	for(unsigned i=0;i<height;i++) { ptr[32*i] = gf16v_get_ele(constant,i); }

    unsigned char r8 = _gf16mat_sol_64x64_avx2( mat , vec );

    //for(unsigned i=0;i<height;i++) {  gf16v_set_ele(constant,i, mat[32*i]&0xf ); }  	// This is only for the compatibility with ref version.
	memcpy(sqmat_a, mat , 64*32 );

    return r8;
}


static
void gf16mat_BS_64x64_avx2(uint8_t *constant , const uint8_t *sq_row_mat_a)
{
    uint8_t mat[64*64] __attribute__((aligned(32)));

    const unsigned height = 64;

    gf16mat_transpose_64x64( mat , sq_row_mat_a );

	__m256i vec = _mm256_load_si256( (__m256i*) mat );  // or should I follow the convension, loading it from constant ?

	for(unsigned i=1;i<height;i++) gf16v_set_ele( mat+i*32 , i , 0 ); // set diagonal terms to 0
	for(unsigned i=height-1;i>0;i--) {
		__m256i col_i = _mm256_load_si256( (__m256i*)(mat+i*32) );
		_mm256_store_si256( (__m256i*) mat , vec );
		uint8_t v = gf16v_get_ele( mat , i  );
		vec ^= gf16v_mul_avx2( col_i , v );
	}
	_mm256_storeu_si256( (__m256i*) constant , vec );
}


#include "blas_matrix_ref.h"

unsigned gf16mat_gaussian_elim_avx2(uint8_t *sqmat_a , uint8_t *constant, unsigned len)
{
    if(64 == len ) {
		return gf16mat_GE_64x64_avx2( sqmat_a , constant );
	} else {
#if 0
		return gf16mat_gaussian_elim_ref(sqmat_a,constant,len);
#else
		printf("unsupported len for gf16 GE.\n");
		exit(-1);
#endif
	}
}

void gf16mat_back_substitute_avx2( uint8_t *constant, const uint8_t *sq_row_mat_a, unsigned len)
{
    if(64==len) {
		gf16mat_BS_64x64_avx2(constant,sq_row_mat_a);
	} else {
#if 0 
		gf16mat_back_substitute_ref(constant,sq_row_mat_a,len);
#else
		printf("unsupported len for gf16 BS.\n");
		exit(-1);
#endif
	}
}






//////////////////////////////////////////////////////////////////////////////////////
///////////////////  code for solving linear equations,  GF(256) /////////////////////
//////////////////////////////////////////////////////////////////////////////////////










static
unsigned _gf256mat_gauss_elim_avx2( uint8_t * mat , unsigned h , unsigned w )
{
	// assert( (w&31)==0 );
	unsigned n_ymm = w>>5;
	__m256i mask_f = _mm256_set1_epi8(0xf);
	__m128i mask_0 = _mm_setzero_si128();

	// assert( h <= 128 );
	uint8_t pivots[128] __attribute__((aligned(32)));
	__m256i multabs[128];

	uint8_t rr8 = 1;
	for(unsigned i=0;i<h;i++) {
		unsigned char i_r16 = i&0xf;
		unsigned i_d16 = i>>4;
		unsigned i_d32 = i>>5;

		uint8_t * mi = mat+i*w;
		for(unsigned j=i+1;j<h;j++) {
			__m128i piv_i   = _mm_load_si128( (__m128i*)( mi + i_d16*16 ) );
			__m128i is_zero = _mm_cmpeq_epi8( piv_i , mask_0 );
			__m128i add_mask = _mm_shuffle_epi8( is_zero , _mm_set1_epi8(i_r16) );

			__m256i mask = _mm256_setr_m128i( add_mask , add_mask );
			uint8_t * mj = mat+j*w;

			for(unsigned k=i_d32;k<n_ymm;k++) {
				__m256i p_i = _mm256_load_si256( (__m256i*)( mi + k*32 ) );
				__m256i p_j = _mm256_load_si256( (__m256i*)( mj + k*32 ) );

				p_i ^= mask & p_j;
				_mm256_store_si256( (__m256i*)( mi+ k*32 ) , p_i );
			}
		}
		for(unsigned j=0;j<h;j++) pivots[j] = mat[j*w+i];
		rr8 &= gf256_is_nonzero( pivots[i] );
		pivots[i] = gf256_inv_sse( pivots[i] );

		for(unsigned j=0;j<h;j+=16) {
			unsigned num = ((h-j)>16)? 16 : h-j;
			gf256v_generate_multab_16_avx2( multabs+j , _mm_load_si128((__m128i*)(pivots+j)) , num );
		}

		{  // pivot row
			__m256i m_tab = multabs[i];
			__m256i ml = _mm256_permute2x128_si256( m_tab , m_tab , 0 );
			__m256i mh = _mm256_permute2x128_si256( m_tab , m_tab , 0x11 );

			for(unsigned k=i_d32;k<n_ymm;k++) {
				__m256i rowi = _mm256_load_si256( (__m256i*)(mi+k*32) );
				rowi = linear_transform_8x8_256b( ml , mh , rowi , mask_f );
				_mm256_store_si256( (__m256i*)(mi+k*32) , rowi );
			}
		}

		for(unsigned j=0;j<h;j++) {
			if(i==j) continue;

			uint8_t * mj = mat+j*w;
			__m256i m_tab = multabs[j];
			__m256i ml = _mm256_permute2x128_si256( m_tab , m_tab , 0 );
			__m256i mh = _mm256_permute2x128_si256( m_tab , m_tab , 0x11 );

			for(unsigned k=i_d32;k<n_ymm;k++) {
				__m256i rowi = _mm256_load_si256( (__m256i*)(mi+k*32) );
				rowi = linear_transform_8x8_256b( ml , mh , rowi , mask_f ) ^ _mm256_load_si256( (__m256i*)(mj+k*32) );
				_mm256_store_si256( (__m256i*)(mj+k*32) , rowi );
			}
		}
	}
	return rr8;
}




////////////////////////////////////////////



unsigned gf256mat_inv_avx2(uint8_t *inv_a, const uint8_t *mat_a , unsigned h )
{
	// assert( h <= 96 );
	uint8_t mat[96*96*2] __attribute__((aligned(32)));

	unsigned w = ((h*2+31)>>5)<<5;

	for(unsigned i=0;i<h;i++) {
		uint8_t * mi = mat+i*w;
		const uint8_t *ai = mat_a+i*h;
		gf256v_add_avx2( mi , mi , w );
		gf256v_add_avx2( mi , ai , h );
		mi[h + i] = 1;
	}
	unsigned r = _gf256mat_gauss_elim_avx2( mat , h , w );
	for(unsigned i=0;i<h;i++) memcpy( inv_a+i*h , mat+i*w+h , h );

	return r;
}



//////////////////    Gaussian elimination + Back substitution for solving linear equations  //////////////////


static
unsigned _gf256mat_gauss_elim_row_echelon_avx2( uint8_t * mat , unsigned h , unsigned w , unsigned offset )
{
	// assert( (w&31)==0 );
	unsigned n_ymm = w>>5;
	__m256i mask_f = _mm256_set1_epi8(0xf);
	__m128i mask_0 = _mm_setzero_si128();

	// assert( h <= 128 );
#define MAX_H  96
	uint8_t pivots[MAX_H] __attribute__((aligned(32)));
	__m256i multabs[MAX_H];
#undef MAX_H

	uint8_t rr8 = 1;
	for(unsigned i=0;i<h;i++) {
		unsigned idx = offset + i;
		unsigned char i_r16 = idx&0xf;
		unsigned i_d16 = idx>>4;
		unsigned i_d32 = idx>>5;

		uint8_t * mi = mat+i*w;

#if defined( _GE_CADD_EARLY_STOP_ )
        unsigned stop = (i+8 < h)? i+8: h;
        for(unsigned j=i+1;j<stop;j++) {
#else
		for(unsigned j=i+1;j<h;j++) {
#endif
			__m128i piv_i   = _mm_load_si128( (__m128i*)( mi + i_d16*16 ) );
			__m128i is_zero = _mm_cmpeq_epi8( piv_i , mask_0 );
			__m128i add_mask = _mm_shuffle_epi8( is_zero , _mm_set1_epi8(i_r16) );

			__m256i mask = _mm256_setr_m128i( add_mask , add_mask );
			uint8_t * mj = mat+j*w;

			for(unsigned k=i_d32;k<n_ymm;k++) {
				__m256i p_i = _mm256_load_si256( (__m256i*)( mi + k*32 ) );
				__m256i p_j = _mm256_load_si256( (__m256i*)( mj + k*32 ) );

				p_i ^= mask & p_j;
				_mm256_store_si256( (__m256i*)( mi+ k*32 ) , p_i );
			}
		}
		for(unsigned j=i;j<h;j++) pivots[j] = mat[j*w+idx];
		rr8 &= gf256_is_nonzero( pivots[i] );
		pivots[i] = gf256_inv_sse( pivots[i] );

		for(unsigned j=((i)>>4)<<4;j<h;j+=16) {
			unsigned num = ((h-j)>16)? 16 : h-j;
			gf256v_generate_multab_16_avx2( multabs+j , _mm_load_si128((__m128i*)(pivots+j)) , num );
		}

		{  // pivot row
			__m256i m_tab = multabs[i];
			__m256i ml = _mm256_permute2x128_si256( m_tab , m_tab , 0 );
			__m256i mh = _mm256_permute2x128_si256( m_tab , m_tab , 0x11 );

			for(unsigned k=i_d32;k<n_ymm;k++) {
				__m256i rowi = _mm256_load_si256( (__m256i*)(mi+k*32) );
				rowi = linear_transform_8x8_256b( ml , mh , rowi , mask_f );
				_mm256_store_si256( (__m256i*)(mi+k*32) , rowi );
			}
		}

		for(unsigned j=i+1;j<h;j++) {
			uint8_t * mj = mat+j*w;
			__m256i m_tab = multabs[j];
			__m256i ml = _mm256_permute2x128_si256( m_tab , m_tab , 0 );
			__m256i mh = _mm256_permute2x128_si256( m_tab , m_tab , 0x11 );

			for(unsigned k=i_d32;k<n_ymm;k++) {
				__m256i rowi = _mm256_load_si256( (__m256i*)(mi+k*32) );
				rowi = linear_transform_8x8_256b( ml , mh , rowi , mask_f ) ^ _mm256_load_si256( (__m256i*)(mj+k*32) );
				_mm256_store_si256( (__m256i*)(mj+k*32) , rowi );
			}
		}
	}
	return rr8;
}



unsigned gf256mat_gaussian_elim_avx2(uint8_t *sqmat_a , uint8_t *constant, unsigned len)
{
#define MAX_H  96
    uint8_t mat[MAX_H*(MAX_H+32)] __attribute__((aligned(32)));
#undef MAX_H

    unsigned height = len;
    unsigned width  = ((len+1+31)>>5)<<5;
    unsigned offset = width - (len+1);
    for(unsigned i=0;i<height;i++) {
        uint8_t * ai = mat + i*width;
        for(unsigned j=0;j<height;j++) ai[offset+j] = sqmat_a[j*len+i];  // transpose since sqmat_a is col-major
        ai[offset+height] = constant[i];
    }
    unsigned char r8 =  _gf256mat_gauss_elim_row_echelon_avx2( mat , height , width , offset );

    for(unsigned i=0;i<height;i++) {
        uint8_t * ai = mat + i*width;
        memcpy( sqmat_a + i*len , ai+offset , len );     // output a row-major matrix
        constant[i] = ai[offset+len];
    }
    return r8;
}


void gf256mat_back_substitute_avx2( uint8_t *constant, const uint8_t *sq_row_mat_a, unsigned len)
{
    //const unsigned MAX_H=96;
#define MAX_H  96
    uint8_t column[MAX_H] __attribute__((aligned(32))) = {0};
	uint8_t temp[MAX_H] __attribute__((aligned(32)));
#undef MAX_H
	memcpy( temp , constant , len );
    for(int i=len-1;i>0;i--) {
        for(int j=0;j<i;j++) column[j] = sq_row_mat_a[j*len+i];   // row-major -> column-major, i.e., transpose
		column[i] = 0;
		unsigned len = ((i+31)>>5)<<5;
        gf256v_madd_avx2( temp , column , temp[i] , len );
    }
	memcpy( constant , temp , len );
}


