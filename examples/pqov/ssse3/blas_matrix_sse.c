/// @file blas_matrix_sse.c
/// @brief Implementations for blas_matrix_sse.h
///

#include "gf16.h"

#include "config.h"

#include "gf16_sse.h"

#include "blas_sse.h"

#include "blas_comm.h"

#include "blas_matrix_sse.h"


#include <emmintrin.h>
#include <tmmintrin.h>
#include "string.h"




static
void gf16mat_blockmat_madd_sse( __m128i * dest , const uint8_t * org_mat , unsigned mat_vec_byte , unsigned blk_st_idx , unsigned blk_vec_byte ,
        const __m128i * multab_vec_ele , unsigned n_vec_ele )
{
    unsigned n_full_xmm = blk_vec_byte >> 4;
    unsigned n_rem_byte = blk_vec_byte & 15;
    __m128i mask_f = _mm_set1_epi8(0xf);

    for(unsigned i = 0; i < n_vec_ele; i++ ) {
        __m128i tab_l = multab_vec_ele[0];
        __m128i tab_h = multab_vec_ele[1];
        multab_vec_ele += 2;

        for(unsigned j=0;j<n_full_xmm;j++) {
            __m128i mj = _mm_loadu_si128( (__m128i*)(org_mat+blk_st_idx+j*16) );
            dest[j] ^= linear_transform_8x8_128b( tab_l , tab_h , mj , mask_f );
        }
        if( n_rem_byte ) {
            __m128i mj = _load_xmm( org_mat+blk_st_idx+(n_full_xmm*16) , n_rem_byte );
            dest[n_full_xmm] ^= linear_transform_8x8_128b( tab_l , tab_h , mj , mask_f );
        }

        org_mat += mat_vec_byte;
    }
}


void gf16mat_prod_multab_sse( uint8_t * c , const uint8_t * matA , unsigned matA_vec_byte , unsigned matA_n_vec , const uint8_t * multab_b )
{
    const __m128i * multabs = (const __m128i*) multab_b;
    gf256v_set_zero( c , matA_vec_byte );

    __m128i blockmat_vec[8];

    while(matA_n_vec) {
        unsigned n_ele = (matA_n_vec>=32)?32:matA_n_vec;

        unsigned vec_len_to_go = matA_vec_byte;
        while( vec_len_to_go ) {
            unsigned block_len = (vec_len_to_go >= 8*16)? 8*16 : vec_len_to_go;
            unsigned block_st_idx = matA_vec_byte - vec_len_to_go;

            loadu_xmm( blockmat_vec , c + block_st_idx , block_len );
            gf16mat_blockmat_madd_sse( blockmat_vec , matA , matA_vec_byte , block_st_idx , block_len , multabs , n_ele );
            storeu_xmm( c + block_st_idx , block_len , blockmat_vec );

            vec_len_to_go -= block_len;
        }

        matA_n_vec -= n_ele;
        matA += n_ele*matA_vec_byte;
        multabs += 2*n_ele;
    }
}



void gf16mat_prod_sse( uint8_t * c , const uint8_t * matA , unsigned matA_vec_byte , unsigned matA_n_vec , const uint8_t * b )
{
    __m128i multabs[32*2];
    gf256v_set_zero( c , matA_vec_byte );

    __m128i blockmat_vec[8];

    while(matA_n_vec) {

        __m128i x[2];
        unsigned n_ele;
        if(matA_n_vec>=32) {
            n_ele = 32;
            x[0] = _mm_loadu_si128( (__m128i*)b );
        } else {
            n_ele = matA_n_vec;
            x[0] = _load_xmm( b , (n_ele+1)>>1 );
        }
        gf16v_split_16to32_sse( x , x[0] );
        if(n_ele<=16) {
            gf16v_generate_multab_16_sse( multabs , x[0] , n_ele );
        } else {
            gf16v_generate_multab_16_sse( multabs    , x[0] , 16 );
            gf16v_generate_multab_16_sse( multabs+32 , x[1] , n_ele-16 );
        }

        unsigned vec_len_to_go = matA_vec_byte;
        while( vec_len_to_go ) {
            unsigned block_len = (vec_len_to_go >= 8*16)? 8*16 : vec_len_to_go;
            unsigned block_st_idx = matA_vec_byte - vec_len_to_go;

            loadu_xmm( blockmat_vec , c + block_st_idx , block_len );
            gf16mat_blockmat_madd_sse( blockmat_vec , matA , matA_vec_byte , block_st_idx , block_len , multabs , n_ele );
            storeu_xmm( c + block_st_idx , block_len , blockmat_vec );

            vec_len_to_go -= block_len;
        }

        matA_n_vec -= n_ele;
        b += (n_ele>>1);
        matA += n_ele*matA_vec_byte;
    }
}





///////////////////////////////  GF( 256 ) ////////////////////////////////////////////////////






static
void gf256mat_blockmat_madd_sse( __m128i * dest , const uint8_t * org_mat , unsigned mat_vec_byte , unsigned blk_st_idx , unsigned blk_vec_byte ,
        const __m128i * multab_vec_ele , unsigned n_vec_ele )
{
    unsigned n_full_xmm = blk_vec_byte >> 4;
    unsigned n_rem_byte = blk_vec_byte & 15;
    __m128i mask_f = _mm_set1_epi8(0xf);

    for(unsigned i = 0; i < n_vec_ele; i++ ) {
        __m128i tab_l = multab_vec_ele[0];
        __m128i tab_h = multab_vec_ele[1];
        multab_vec_ele += 2;

        for(unsigned j=0;j<n_full_xmm;j++) {
            __m128i mj = _mm_loadu_si128( (__m128i*)(org_mat+blk_st_idx+j*16) );
            dest[j] ^= linear_transform_8x8_128b( tab_l , tab_h , mj , mask_f );
        }
        if( n_rem_byte ) {
            __m128i mj = _load_xmm( org_mat+blk_st_idx+(n_full_xmm*16) , n_rem_byte );
            dest[n_full_xmm] ^= linear_transform_8x8_128b( tab_l , tab_h , mj , mask_f );
        }

        org_mat += mat_vec_byte;
    }
}


void gf256mat_prod_multab_sse( uint8_t * c , const uint8_t * matA , unsigned matA_vec_byte , unsigned matA_n_vec , const uint8_t * multab_b )
{
    const __m128i * multabs = (const __m128i*)multab_b;
    gf256v_set_zero( c , matA_vec_byte );

    __m128i blockmat_vec[8];

    while(matA_n_vec) {
        unsigned n_ele = (matA_n_vec>=16)? 16: matA_n_vec;
        unsigned vec_len_to_go = matA_vec_byte;
        while( vec_len_to_go ) {
            unsigned block_len = (vec_len_to_go >= 8*16)? 8*16 : vec_len_to_go;
            unsigned block_st_idx = matA_vec_byte - vec_len_to_go;

            loadu_xmm( blockmat_vec , c + block_st_idx , block_len );
            gf256mat_blockmat_madd_sse( blockmat_vec , matA , matA_vec_byte , block_st_idx , block_len , multabs , n_ele );
            storeu_xmm( c + block_st_idx , block_len , blockmat_vec );

            vec_len_to_go -= block_len;
        }

        matA_n_vec -= n_ele;
        matA += n_ele*matA_vec_byte;
        multabs += n_ele*2;
    }
}


void gf256mat_prod_sse( uint8_t * c , const uint8_t * matA , unsigned matA_vec_byte , unsigned matA_n_vec , const uint8_t * b ) {

    __m128i multabs[16*2];
    gf256v_set_zero( c , matA_vec_byte );

    __m128i blockmat_vec[8];

    while(matA_n_vec) {

        unsigned n_ele = (matA_n_vec>=16)? 16: matA_n_vec;
        __m128i x = (matA_n_vec>=16)? _mm_loadu_si128( (const __m128i*)b ) : _load_xmm( b , matA_n_vec );
        gf256v_generate_multab_16_sse( multabs , x , n_ele );

        unsigned vec_len_to_go = matA_vec_byte;
        while( vec_len_to_go ) {
            unsigned block_len = (vec_len_to_go >= 8*16)? 8*16 : vec_len_to_go;
            unsigned block_st_idx = matA_vec_byte - vec_len_to_go;

            loadu_xmm( blockmat_vec , c + block_st_idx , block_len );
            gf256mat_blockmat_madd_sse( blockmat_vec , matA , matA_vec_byte , block_st_idx , block_len , multabs , n_ele );
            storeu_xmm( c + block_st_idx , block_len , blockmat_vec );

            vec_len_to_go -= block_len;
        }

        matA_n_vec -= n_ele;
        b += n_ele;
        matA += n_ele*matA_vec_byte;
    }
}




/////////////////////////////////////////////////////////////////////




#if 1


/// access aligned memory.
static
unsigned _gf16mat_gauss_elim_sse( uint8_t * mat , unsigned h , unsigned w_byte )
{
	//assert( 0==(w_byte&15) ); /// w_byte is a multiple of 16.
	//assert( 128 >= h );

	uint8_t pivot_column[128] __attribute__((aligned(32)));
	__m128i multab[128*2];
	__m128i mask_f = _mm_set1_epi8( 0xf );
	unsigned w_2 = w_byte;
	unsigned w_n_16 = w_byte>>4;

	uint8_t r8 = 1;
	for(unsigned i=0;i<h;i++) {
		unsigned offset_16 = i>>5;

		for(unsigned j=0;j<h;j++) { pivot_column[j] = gf16v_get_ele( mat+w_2*j, i ); }

		uint8_t * ai = mat + w_2*i;
		for(unsigned j=i+1;j<h;j++) {
			uint8_t * aj = mat + w_2*j;

			uint8_t predicate = !gf16_is_nonzero( pivot_column[i] );
			uint32_t pr_u32 = ((uint32_t)0)-((uint32_t)predicate);
			__m128i pr_u128 = _mm_set1_epi32( pr_u32 );

			pivot_column[i] ^= pivot_column[j]&pr_u32;

			for(unsigned k=offset_16;k<w_n_16;k++) {
				__m128i inp0 = _mm_load_si128( (__m128i*)(ai+k*16) );
				__m128i inp1 = _mm_load_si128( (__m128i*)(aj+k*16) );
				__m128i r = inp0^(inp1&pr_u128);
				_mm_store_si128( (__m128i*)(ai+k*16) , r );
			}
		}
		r8 &= gf16_is_nonzero( pivot_column[i] );
		pivot_column[i] = gf16_inv_sse( pivot_column[i] );

		for(unsigned j=0;j<h;j+=16){
			unsigned num = ((h-j)>16)? 16:h-j;
			gf16v_generate_multab_16_sse( &multab[j*2] , _mm_load_si128((__m128i*)(pivot_column+j)) , num );
		}

		{ // pivot row
			unsigned j=i;
			uint8_t * aj = mat + w_2*j;
			__m128i ml = multab[j*2];
			__m128i mh = multab[j*2+1];
			for(unsigned k=offset_16;k<w_n_16;k++) {
				__m128i inp = _mm_load_si128( (__m128i*)(aj+k*16) );
				__m128i r = linear_transform_8x8_128b( ml , mh , inp , mask_f );
				_mm_store_si128( (__m128i*)(aj+k*16) , r );
			}
		}
		for(unsigned j=0;j<h;j++) {
			if( i == j ) continue;
			uint8_t * aj = mat + w_2*j;
			__m128i ml = multab[j*2];
			__m128i mh = multab[j*2+1];
			for(unsigned k=offset_16;k<w_n_16;k++) {
				__m128i inp0 = _mm_load_si128( (__m128i*)(ai+k*16) );
				__m128i inp = _mm_load_si128( (__m128i*)(aj+k*16) );
				__m128i r = inp ^ linear_transform_8x8_128b( ml , mh , inp0 , mask_f );
				_mm_store_si128( (__m128i*)(aj+k*16) , r );
			}
		}
	}
	return r8;
}




unsigned gf16mat_inv_32x32_sse( uint8_t * inv_a , const uint8_t * mat_a )
{
	//const unsigned h=32;

	uint8_t mat[ 32*32 ] __attribute__((aligned(32))) = {0};
	for(unsigned i=0;i<32;i++) {
		memcpy( mat + i*32 , mat_a + i*16 , 16 );
		gf16v_set_ele( mat+i*32+16 , i , 1 );
	}
	unsigned r8 = _gf16mat_gauss_elim_sse( mat , 32 , 32 );
	for(unsigned i=0;i<32;i++) memcpy( inv_a + i*16 , mat + i*32 + 16 , 16 );

	gf256v_set_zero( mat , 32*32 );
	return r8;
}



//#include "blas_matrix_ref.h"

unsigned gf16mat_inv_sse(uint8_t *inv_a, const uint8_t *a , unsigned h )
{
    if( 32==h ) return gf16mat_inv_32x32_sse( inv_a , a );

//    return gf16mat_inv_ref(inv_a,a,h);

#define MAX_H  64
    uint8_t mat[MAX_H*MAX_H] __attribute__((aligned(32)));  // max: 64x128
#undef MAX_H

    unsigned h_byte = (h+1)>>1;
    unsigned w_byte = ((h_byte+15)>>4)<<5;
    for (unsigned i = 0; i < h; i++) {
        uint8_t *ai = mat + i * w_byte;
        gf256v_set_zero(ai, w_byte );
        gf256v_add_sse(ai, a + i * h_byte, h_byte);
        gf16v_set_ele(ai + h_byte, i, 1);
    }
    uint8_t r8 = _gf16mat_gauss_elim_sse(mat, h , w_byte);
    for( unsigned i=0;i<h;i++) { memcpy( inv_a + i*h_byte , mat + i*w_byte + h_byte , h_byte ); }
    return r8;
}



unsigned gf16mat_solve_linear_eq_32x32_sse( uint8_t * sol , const uint8_t * inp_mat , const uint8_t * c_terms )
{
	//const unsigned n = 32;

	uint8_t mat[ 32*16 ] __attribute__((aligned(32)));
	unsigned r8 = gf16mat_inv_32x32_sse( mat , inp_mat );
	gf16mat_prod_sse( sol , mat , 16 , 32 , c_terms );

	gf256v_set_zero( mat , 32*16 );
	return r8;
}




#endif




///////////////////////////////////////////////////////////////////////////




static
unsigned _gf256mat_gauss_elim_sse( uint8_t * mat , unsigned h , unsigned w )
{
	//assert( 0 == (w&15) );  // w must be a multiple of 16
	//assert( 128 >= h );

	uint8_t pivot_column[128] __attribute__((aligned(32)));
	__m128i multab[128*2] __attribute__((aligned(32)));
	__m128i mask_f = _mm_set1_epi8( 0xf );

	unsigned n_xmm = w>>4;
	uint8_t rr8 = 1;
	for(unsigned i=0;i<h;i++) {

		for(unsigned j=0;j<h;j++) { pivot_column[j] = mat[w*j+i]; }

		unsigned i_d = i>>4;
		uint8_t * mi = mat+i*w;

		for(unsigned j=i+1;j<h;j++) {
			uint8_t predicate = !gf256_is_nonzero( pivot_column[i] );
			uint32_t pr_u32 = ((uint32_t)0)-((uint32_t)predicate);

			pivot_column[i] ^= pivot_column[j]&pr_u32;

			__m128i add_mask = _mm_set1_epi32( pr_u32 );
			uint8_t * mj = mat+j*w;
			for(unsigned k=i_d;k<n_xmm;k++) {
				_mm_store_si128((__m128i*)(mi+k*16) ,
					_mm_load_si128((__m128i*)(mi+k*16))^(add_mask&_mm_load_si128((__m128i*)(mj+k*16))) );
			}
		}
		rr8 &= gf256_is_nonzero( pivot_column[i] );
		pivot_column[i] = gf256_inv_sse( pivot_column[i] );

		for(unsigned j=0;j<h;j+=16){
			unsigned num = ((h-j)>16)? 16:h-j;
			gf256v_generate_multab_16_sse( &multab[j*2] , _mm_load_si128((__m128i*)(pivot_column+j)) , num );
		}

		{   // pivot row
			unsigned j=i;
			uint8_t * aj = mat + w*j;
			__m128i ml = multab[j*2];
			__m128i mh = multab[j*2+1];
			for(unsigned k=i_d;k<n_xmm;k++) {
				__m128i inp = _mm_load_si128( (__m128i*)(aj+k*16) );
				__m128i r = linear_transform_8x8_128b( ml , mh , inp , mask_f );
				_mm_store_si128( (__m128i*)(aj+k*16) , r );
			}
		}
		for(unsigned j=0;j<h;j++) {
			if( i == j ) continue;
			uint8_t * aj = mat + w*j;
			__m128i ml = multab[j*2];
			__m128i mh = multab[j*2+1];
			for(unsigned k=i_d;k<n_xmm;k++) {
				__m128i inp0 = _mm_load_si128( (__m128i*)(mi+k*16) );
				__m128i inp = _mm_load_si128( (__m128i*)(aj+k*16) );
				__m128i r = inp ^ linear_transform_8x8_128b( ml , mh , inp0 , mask_f );
				_mm_store_si128( (__m128i*)(aj+k*16) , r );
			}
		}
	}
	return rr8;
}




///////////////////////////////////////


unsigned gf256mat_inv_32x32_sse( uint8_t * inv_a , const uint8_t * mat_a )
{
	const unsigned h = 32;
	const unsigned vec_len = 64;

	uint8_t mat[32*64] __attribute__((aligned(32))) = {0};
	for(unsigned i=0;i<h;i++) {
		memcpy( mat+i*vec_len , mat_a+i*h , h );
		mat[i*vec_len + h + i] = 1;
	}
	unsigned r = _gf256mat_gauss_elim_sse( mat , h , vec_len );
	for(unsigned i=0;i<h;i++) memcpy( inv_a+i*h , mat+i*vec_len+h , h );

	gf256v_set_zero( mat , h*vec_len );
	return r;
}

unsigned gf256mat_solve_linear_eq_48x48_sse( uint8_t * sol , const uint8_t * mat_a , const uint8_t * c_terms )
{
	const unsigned h = 48;
	const unsigned vec_len = 96;

	uint8_t mat[48*96] __attribute__((aligned(32))) = {0};
	for(unsigned i=0;i<h;i++) {
		memcpy( mat+i*vec_len , mat_a+i*h , h );
		mat[i*vec_len + h + i] = 1;
	}
	unsigned r = _gf256mat_gauss_elim_sse( mat , h , vec_len );
	for(unsigned i=0;i<h;i++) memcpy( mat+i*h , mat+i*vec_len+h , h );
	gf256mat_prod_sse( sol , mat , h , h , c_terms );

	gf256v_set_zero( mat , h*vec_len );
	return r;
}


////////////////////////////////////////


unsigned gf256mat_inv_36x36_sse( uint8_t * inv_a , const uint8_t * mat_a )
{
	const unsigned h = 36;
	const unsigned vec_len = 80;

	uint8_t mat[36*80] __attribute__((aligned(32))) = {0};
	for(unsigned i=0;i<h;i++) {
		memcpy( mat+i*vec_len , mat_a+i*h , h );
		mat[i*vec_len + h + i] = 1;
	}
	unsigned r = _gf256mat_gauss_elim_sse( mat , h , vec_len );
	for(unsigned i=0;i<h;i++) memcpy( inv_a+i*h , mat+i*vec_len+h , h );

	gf256v_set_zero( mat , h*vec_len );
	return r;
}



unsigned gf256mat_inv_sse( uint8_t * inv_a , const uint8_t * a , unsigned h )
{
    if( 32 == h ) return gf256mat_inv_32x32_sse(inv_a,a);
    if( 36 == h ) return gf256mat_inv_36x36_sse(inv_a,a);

//    return gf256mat_inv_ref(inv_a,a,h);


#define MAX_H  96
    uint8_t mat[MAX_H*MAX_H*2] __attribute__((aligned(32))) = {0};
#undef MAX_H

    unsigned h_byte = h;
    unsigned w_byte = ((h+7)>>3)<<4;
    for (unsigned i = 0; i < h; i++) {
        uint8_t *ai = mat + i * w_byte;
        gf256v_set_zero(ai, w_byte );
        gf256v_add_sse(ai, a + i * h_byte, h_byte);
        gf256v_set_ele(ai + h_byte, i, 1);
    }
    uint8_t r8 = _gf256mat_gauss_elim_sse(mat, h , w_byte);
    for( unsigned i=0;i<h;i++) { memcpy( inv_a + i*h_byte , mat + i*w_byte + h_byte , h_byte ); }
    return r8;
}



unsigned gf256mat_solve_linear_eq_64x64_sse( uint8_t * sol , const uint8_t * mat_a , const uint8_t * c_terms )
{
	const unsigned h = 64;
	const unsigned vec_len = 128;

	uint8_t mat[64*128] __attribute__((aligned(32))) = {0};
	for(unsigned i=0;i<h;i++) {
		memcpy( mat+i*vec_len , mat_a+i*h , h );
		mat[i*vec_len + h + i] = 1;
	}
	unsigned r = _gf256mat_gauss_elim_sse( mat , h , vec_len );
	for(unsigned i=0;i<h;i++) memcpy( mat+i*h , mat+i*vec_len+h , h );
	gf256mat_prod_sse( sol , mat , h , h , c_terms );

	gf256v_set_zero( mat , h*vec_len );
	return r;
}






