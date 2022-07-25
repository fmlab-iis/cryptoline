#!/bin/bash

FILES=(
    examples/qhasm/fe25519_add.cl
    examples/qhasm/fe25519_mul.cl
    examples/qhasm/fe25519_mul121666_ver2.cl
    examples/qhasm/fe25519_sq.cl
    examples/qhasm/fe25519_sub.cl
    examples/qhasm/fe25519r64_add.cl
    examples/qhasm/fe25519r64_addsub.cl
    examples/qhasm/fe25519r64_mul.cl
    examples/qhasm/fe25519r64_mul121666.cl
    examples/qhasm/fe25519r64_mul_bug.cl
    examples/qhasm/fe25519r64_sub.cl
    examples/qhasm/ladderstep.cl
    examples/qhasm/ladderstep1.cl
    examples/qhasm/ladderstep2.cl
    examples/qhasm/ladderstep3.cl
    examples/qhasm/ladderstep3_1.cl
    examples/qhasm/ladderstep3_2.cl
    examples/ntt-polymul/avx2/saber/test_sabermul_nttmul_poly_crt.cl
    examples/ntt-polymul/avx2/saber/test_sabermul_nttmul_poly_invntt_tomont.cl
    examples/ntt-polymul/avx2/saber/test_sabermul_nttmul_poly_invntt_tomont10753.cl
    examples/ntt-polymul/avx2/saber/test_sabermul_nttmul_poly_ntt.cl
    examples/ntt-polymul/avx2/saber/test_sabermul_nttmul_poly_ntt10753.cl
    examples/ntt-polymul/avx2/saber/test_sabermul_nttmul_polyvec_basemul_acc_montgomery10753.cl
    examples/ntt-polymul/avx2/saber/test_sabermul_nttmul_polyvec_basemul_acc_montgomery7681.cl
    examples/ntt-polymul/avx2/saber/test_speed256nx3_nttmul_poly_basemul_montgomery10753.cl
    examples/ntt-polymul/avx2/saber/test_speed256nx3_nttmul_poly_basemul_montgomery7681.cl
    examples/PQCrypto-SIDH/P503/arm64/fp2mul503_mont.cl
    examples/PQCrypto-SIDH/P503/arm64/fp2sqr503_mont.cl
    examples/PQCrypto-SIDH/P503/arm64/fpadd503.cl
    examples/PQCrypto-SIDH/P503/arm64/fpmul503_mont.cl
    examples/PQCrypto-SIDH/P503/arm64/fpneg503.cl
    examples/PQCrypto-SIDH/P503/arm64/fpsqr503_mont.cl
    examples/PQCrypto-SIDH/P503/arm64/fpsub503.cl
    examples/PQCrypto-SIDH/P503/arm64/fpzero503.cl
    examples/PQCrypto-SIDH/P503/x86_64/fp2add503.cl
    examples/PQCrypto-SIDH/P503/x86_64/fp2mul503_c0_mont.cl
    examples/PQCrypto-SIDH/P503/x86_64/fp2mul503_c1_mont.cl
    examples/PQCrypto-SIDH/P503/x86_64/fp2mul503_mont.cl
    examples/PQCrypto-SIDH/P503/x86_64/fp2neg503.cl
    examples/PQCrypto-SIDH/P503/x86_64/fp2sqr503_c0_mont.cl
    examples/PQCrypto-SIDH/P503/x86_64/fp2sqr503_c1_mont.cl
    examples/PQCrypto-SIDH/P503/x86_64/fp2sqr503_mont.cl
    examples/PQCrypto-SIDH/P503/x86_64/fp2sub503.cl
    examples/PQCrypto-SIDH/P503/x86_64/fpadd503.cl
    examples/PQCrypto-SIDH/P503/x86_64/fpinv503_chain_mont.cl
    examples/PQCrypto-SIDH/P503/x86_64/fpmul503_mont.cl
    examples/PQCrypto-SIDH/P503/x86_64/fpneg503.cl
    examples/PQCrypto-SIDH/P503/x86_64/fpsqr503_mont.cl
    examples/PQCrypto-SIDH/P503/x86_64/fpsub503.cl
    examples/PQCrypto-SIDH/P610/arm64/fp2add610.cl
    examples/PQCrypto-SIDH/P610/arm64/fp2mul610_mont.cl
    examples/PQCrypto-SIDH/P610/arm64/fp2neg610.cl
    examples/PQCrypto-SIDH/P610/arm64/fp2sqr610_mont.cl
    examples/PQCrypto-SIDH/P610/arm64/fp2sub610.cl
    examples/PQCrypto-SIDH/P610/arm64/fp2zero610.cl
    examples/PQCrypto-SIDH/P610/arm64/fpadd610.cl
    examples/PQCrypto-SIDH/P610/arm64/fpmul610_mont.cl
    examples/PQCrypto-SIDH/P610/arm64/fpneg610.cl
    examples/PQCrypto-SIDH/P610/arm64/fpsqr610_mont.cl
    examples/PQCrypto-SIDH/P610/arm64/fpsub610.cl
    examples/PQCrypto-SIDH/P610/arm64/fpzero610.cl
    examples/PQCrypto-SIDH/P610/x86_64/fp2add610.cl
    examples/PQCrypto-SIDH/P610/x86_64/fp2div2_610.cl
    examples/PQCrypto-SIDH/P610/x86_64/fp2mul610_c0_mont.cl
    examples/PQCrypto-SIDH/P610/x86_64/fp2mul610_c1_mont.cl
    examples/PQCrypto-SIDH/P610/x86_64/fp2mul610_mont.cl
    examples/PQCrypto-SIDH/P610/x86_64/fp2neg610.cl
    examples/PQCrypto-SIDH/P610/x86_64/fp2sqr610_c0_mont.cl
    examples/PQCrypto-SIDH/P610/x86_64/fp2sqr610_c1_mont.cl
    examples/PQCrypto-SIDH/P610/x86_64/fp2sqr610_mont.cl
    examples/PQCrypto-SIDH/P610/x86_64/fp2sub610.cl
    examples/PQCrypto-SIDH/P610/x86_64/fpadd610-2.cl
    examples/PQCrypto-SIDH/P610/x86_64/fpadd610.cl
    examples/PQCrypto-SIDH/P610/x86_64/fpdiv2_610.cl
    examples/PQCrypto-SIDH/P610/x86_64/fpmul610_mont.cl
    examples/PQCrypto-SIDH/P610/x86_64/fpneg610.cl
    examples/PQCrypto-SIDH/P610/x86_64/fpsqr610_mont.cl
    examples/PQCrypto-SIDH/P610/x86_64/fpsub610.cl
    examples/PQCrypto-SIDH/P751/arm64/fp2add751.cl
    examples/PQCrypto-SIDH/P751/arm64/fp2mul751_mont.cl
    examples/PQCrypto-SIDH/P751/arm64/fp2neg751.cl
    examples/PQCrypto-SIDH/P751/arm64/fp2sqr751_mont.cl
    examples/PQCrypto-SIDH/P751/arm64/fp2sub751.cl
    examples/PQCrypto-SIDH/P751/arm64/fp2zero751.cl
    examples/PQCrypto-SIDH/P751/arm64/fpadd751.cl
    examples/PQCrypto-SIDH/P751/arm64/fpmul751_mont.cl
    examples/PQCrypto-SIDH/P751/arm64/fpneg751.cl
    examples/PQCrypto-SIDH/P751/arm64/fpsqr751_mont.cl
    examples/PQCrypto-SIDH/P751/arm64/fpsub751.cl
    examples/PQCrypto-SIDH/P751/arm64/fpzero751.cl
    examples/PQCrypto-SIDH/P751/x86_64/fp2add751.cl
    examples/PQCrypto-SIDH/P751/x86_64/fp2mul751_mont.cl
    examples/PQCrypto-SIDH/P751/x86_64/fp2neg751.cl
    examples/PQCrypto-SIDH/P751/x86_64/fp2sqr751_mont.cl
    examples/PQCrypto-SIDH/P751/x86_64/fp2sub751.cl
    examples/PQCrypto-SIDH/P751/x86_64/fpadd751.cl
    examples/PQCrypto-SIDH/P751/x86_64/fpdiv2_751.cl
    examples/PQCrypto-SIDH/P751/x86_64/fpmul751_mont.cl
    examples/PQCrypto-SIDH/P751/x86_64/fpneg751.cl
    examples/PQCrypto-SIDH/P751/x86_64/fpsqr751_mont.cl
    examples/PQCrypto-SIDH/P751/x86_64/fpsub751.cl
    examples/boringssl/x25519_x86_64/x25519_x86_64_ladderstep_tune.cl
    examples/boringssl/x25519_x86_64/x25519_x86_64_ladderstep_tune1.cl
    examples/boringssl/x25519_x86_64/x25519_x86_64_ladderstep_tune2.cl
    examples/boringssl/x25519_x86_64/x25519_x86_64_ladderstep_tune3.cl
    examples/boringssl/x25519_x86_64/x25519_x86_64_ladderstep_tune3_1.cl
    examples/boringssl/x25519_x86_64/x25519_x86_64_ladderstep_tune3_2.cl
    examples/boringssl/x25519_x86_64/x25519_x86_64_mul_chains.cl
    examples/boringssl/x25519_x86_64/x25519_x86_64_square_chains.cl
    examples/pqm4/kyber/invntt_fast_tuned.cl
    examples/pqm4/kyber/ntt_fast.cl
    examples/pqm4/ntruhps2048509/refactored/__asm_final_map.cl
    examples/pqm4/ntruhps2048509/refactored/__asm_intt_32.cl
    examples/pqm4/ntruhps2048509/refactored/__asm_ntt_0_1_2_3_32.cl
    examples/pqm4/ntruhps2048509/refactored/__asm_ntt_0_1_2_3_small_32.cl
    examples/pqm4/ntruhps2048509/refactored/__asm_ntt_4_5_6_7_32.cl
    examples/pqm4/ntruhps4096821/asm_3x2block_ntt.cl
    examples/pqm4/ntruhps4096821/asm_Good_3x2.cl
    examples/pqm4/ntruhps4096821/asm_ntt.cl
    examples/pqm4/saber/m4fspeed/asm_negacyclic_intt_32.cl
    examples/pqm4/saber/m4fspeed/asm_negacyclic_ntt_32.cl
)

CL=./_build/default/cv.exe
TMP=/tmp

num_file=0
num_ok=0
num_failed=0
for file in ${FILES[@]}; do
    tmpfile="${TMP}/`basename ${file}`"
    echo "${file}"

    num_file=$((num_file+1))

    echo -n "  Parsing file ... "
    ${CL} -p ${file} 2>/dev/null 1>${tmpfile}
    if [[ $? == 0 ]]; then
        echo -e "\t\t\t[OK]"
    else
        echo -e "\t\t\t[Fail]"
        num_failed=$((num_failed+1))
        continue
    fi

    echo -n "  Parsing string output ... "
    ${CL} -p ${tmpfile} 2>/dev/null 1>/dev/null
    if [[ $? == 0 ]]; then
        echo -e "\t\t[OK]"
    else
        echo -e "\t\t[Fail]"
        num_failed=$((num_failed+1))
        continue
    fi

    echo -n "  Parsing SSA form ... "
    ${CL} -pssa ${file} 2>/dev/null 1>${tmpfile}
    ${CL} -p ${tmpfile} 2>/dev/null 1>/dev/null
    if [[ $? == 0 ]]; then
        echo -e "\t\t\t[OK]"
    else
        echo -e "\t\t\t[Fail]"
        num_failed=$((num_failed+1))
        continue
    fi

    num_ok=$((num_ok+1))
    rm ${tmpfile}
done

echo
echo "----- Summary -----"
echo "# of files:  ${num_file}"
echo "# of OK:     ${num_ok}"
echo "# of Fail:   ${num_failed}"
