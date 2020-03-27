#!/bin/bash
set -xe
RELIC_DIR=~/source/relic
RELIC_BUILD_DIR=$RELIC_DIR/build_x64-pbc-bls381
CFLAGS="-I $RELIC_DIR/include -I $RELIC_DIR/include/low -I $RELIC_BUILD_DIR/include -lgmp"
LIB_DIR=$RELIC_BUILD_DIR/lib
LIB=$LIB_DIR/librelic_s.a
SOURCE=main-pp.c
FUNCS=(
    pp_add_k12_projc_lazyr
    pp_dbl_k12_projc_lazyr
)


gcc $CFLAGS $SOURCE $LIB -o a.out

for FUNC in "${FUNCS[@]}"
do
    itrace.py a.out $FUNC extract-pp/$FUNC.gas
done
