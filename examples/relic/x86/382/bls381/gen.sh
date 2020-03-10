#!/bin/bash
set -e
RELIC_DIR=~/source/relic
RELIC_BUILD_DIR=$RELIC_DIR/build_x64-pbc-bls381
CFLAGS="-I $RELIC_DIR/include -I $RELIC_DIR/include/low -I $RELIC_BUILD_DIR/include -lgmp"
LIB_DIR=$RELIC_BUILD_DIR/lib
LIB=$LIB_DIR/librelic_s.a
SOURCE=main-fp.c
FUNCS=(
  fp_addm_low
  fp_subm_low
  fp_mulm_low
  fp_rdcn_low
)


gcc $CFLAGS $SOURCE $LIB -o a.out

for FUNC in "${FUNCS[@]}"
do
    itrace.py a.out $FUNC extract-fp/$FUNC.gas
done
