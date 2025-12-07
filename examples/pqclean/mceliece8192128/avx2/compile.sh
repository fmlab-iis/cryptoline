#!/bin/bash

# - Put compile.sh and main.c in `PQClean/crypto_kem/mceliece8192128/avx2`.
# - Compile C files in PQClean/common.
# - Compile the library in PQClean/crypto_kem/mceliece8192128/avx2.
# - Compile main.c.

OBJS="../../../common/randombytes.o ../../../common/sha2.o ../../../common/fips202.o"
SRC=main.c
BIN=main

make
gcc -L . ${SRC} -lcrypto -lmceliece8192128_avx2 ${OBJS} -o ${BIN}
