#!/bin/bash
set -xe
RELIC_DIR=~/source/relic
RELIC_BUILD_DIR=$RELIC_DIR/build_x64-pbc-bls381
CFLAGS="-I $RELIC_DIR/include -I $RELIC_DIR/include/low -I $RELIC_BUILD_DIR/include -lgmp"
LIB_DIR=$RELIC_BUILD_DIR/lib
LIB=$LIB_DIR/librelic_s.a
SOURCE=main-ep.c
FUNCS=(
    # ep_neg_basic
    ep_neg_projc
    # ep_add_basic
    ep_add_projc
    # ep_sub_basic
    ep_sub_projc
)


gcc $CFLAGS $SOURCE $LIB -o a.out

for FUNC in "${FUNCS[@]}"
do
    itrace.py a.out $FUNC extract-ep/$FUNC.gas
done
