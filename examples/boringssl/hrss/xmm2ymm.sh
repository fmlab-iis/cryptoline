#!/bin/bash

sed -e 's/xmm0_/ymm0_/' -e 's/xmm1_/ymm1_/' -e 's/xmm2_/ymm2_/' \
    -e 's/xmm3_/ymm3_/' -e 's/xmm4_/ymm4_/' -e 's/xmm5_/ymm5_/' \
    -e 's/xmm6_/ymm6_/' -e 's/xmm7_/ymm7_/' -e 's/xmm8_/ymm8_/' \
    -e 's/xmm9_/ymm9_/' -e 's/xmm10_/ymm10_/' -e 's/xmm11_/ymm11_/' \
    -e 's/xmm12_/ymm12_/' -e 's/xmm13_/ymm13_/' -e 's/xmm14_/ymm14_/' \
    -e 's/xmm15_/ymm15_/'
