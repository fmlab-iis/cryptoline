#!/bin/bash
set -e
RELIC_DIR=~/source/relic
RELIC_BUILD_DIR=$RELIC_DIR/build_x64-pbc-bn382
CFLAGS="-I $RELIC_DIR/include -I $RELIC_DIR/include/low -I $RELIC_BUILD_DIR/include -lgmp"
LIB_DIR=$RELIC_BUILD_DIR/lib
LIB=$LIB_DIR/librelic_s.a
SOURCE=main-fp2.c
FUNCS=(
    fp2_add_basic
    fp2_add_integ
    fp2_sub_basic
    fp2_sub_integ
    fp2_dbl_basic
    fp2_dbl_integ
    fp2_mul_basic
    fp2_mul_integ
    fp2_mul_nor_basic
    fp2_mul_nor_integ
    fp2_sqr_basic
    fp2_sqr_integ
)


gcc $CFLAGS $SOURCE $LIB -o a.out

for FUNC in "${FUNCS[@]}"
do
    itrace.py a.out $FUNC extract-fp2/$FUNC.gas
done
