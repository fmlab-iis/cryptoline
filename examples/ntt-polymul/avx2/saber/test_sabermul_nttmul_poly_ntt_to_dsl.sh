#!/bin/bash

../../../../scripts/to_zdsl.py --no-main --no-pre --no-post -t sint16 \
	test_sabermul_nttmul_poly_ntt.gas 1> test_sabermul_nttmul_poly_ntt_preprocessed.cl

./test_sabermul_nttmul_poly_ntt.py \
	test_sabermul_nttmul_poly_ntt_preprocessed.cl > test_sabermul_nttmul_poly_ntt.cl

rm test_sabermul_nttmul_poly_ntt_preprocessed.cl
