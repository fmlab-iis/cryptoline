#!/bin/bash

CL="./_build/default/cv.exe"
BENCHMARKS_PATH="examples/tches2022"
BENCHMARKS=(
  "Kyber|AVX2|normal|kyber768/avx2/PQCLEAN_KYBER768_AVX2_polyvec_ntt.cl|-v -isafety -jobs 24 -slicing -no_carry_constraint"
  "Kyber|AVX2|inverse|kyber768/avx2/PQCLEAN_KYBER768_AVX2_polyvec_invntt_tomont2.cl|-v -isafety -jobs 32 -slicing -no_carry_constraint"
  "Kyber|Cortex m4|normal|kyber768/pqm4/ntt_fast.cl|-v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint"
  "Kyber|Cortex M4|inverse|kyber768/pqm4/invntt_fast_tuned.cl|-v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint"
  "ntru2048509|AVX2|normal|ntruhps2048509/avx2/nttmul_poly_ntt.cl|-v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint"
  "ntru2048509|AVX2|inverse|ntruhps2048509/avx2/nttmul_poly_invntt_tomont2.cl|-v -isafety -jobs 24 -isafety_timeout 14400 -slicing -no_carry_constraint"
  "ntru2048509|Cortex M4|normal|ntruhps2048509/pqm4/__asm_ntt_0_1_2_3_32.cl|-v -isafety -slicing -no_carry_constraint -jobs 32"
  "ntru2048509|Cortex M4|normal|ntruhps2048509/pqm4/__asm_ntt_4_5_6_7_32.cl|-v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint"
  "ntru2048509|Cortex M4|inverse|ntruhps2048509/pqm4/__asm_intt_32.cl|-v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint"
  "ntru2048509|Cortex M4|inverse|ntruhps2048509/pqm4/__asm_final_map.cl|-v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint"
  "Saber|AVX2|normal|saber/avx2/test_sabermul_nttmul_poly_ntt.cl|-v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint"
  "Saber|AVX2|inverse|saber/avx2/test_sabermul_nttmul_poly_invntt_tomont.cl|-v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint"
  "Saber|Cortex M4|normal|saber/pqm4/asm_negacyclic_ntt_32.cl|-v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint"
  "Saber|Cortex M4|inverse|saber/pqm4/asm_negacyclic_intt_32.cl|-v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint"
)
OUT=results
SUMMARY="${OUT}/summary.log"
FAILED=0

for pair in "${BENCHMARKS[@]}"; do
  file=`echo ${pair} | cut -d '|' -f 4`
  flags=`echo ${pair} | cut -d '|' -f 5`

  d="${OUT}/`dirname ${file}`"
  n=`basename ${file}`
  t=${d}/${n/.cl/_debug.log}
  l=${d}/${n/.cl/.log}
  s=${d}/${n/.cl/_summary.log}
  mkdir -p ${d}

  echo "Verifying ${BENCHMARKS_PATH}/${file}"
  ${CL} ${flags} -o ${t} ${BENCHMARKS_PATH}/${file} &> ${l}

  time_parsing=`grep "Parsing Cryptoline file:" ${l} | grep -oE "[0-9.]+"`
  time_well_formed=`grep "Checking well-formedness:" ${l} | grep -oE "[0-9.]+"`
  time_ssa=`grep "Transforming to SSA form:" ${l} | grep -oE "[0-9.]+"`
  time_norm=`grep "Normalizing specification:" ${l} | grep -oE "[0-9.]+"`
  time_rewrite=`grep "Rewriting assignments:" ${l} | grep -oE "[0-9.]+"`
  time_safety=`grep "Verifying program safety:" ${l} | grep -oE "[0-9.]+"`
  if [[ "${time_safety}" == "" ]]; then
    time_safety=`grep "Overall" ${l} | grep -oE "[0-9.]+"`
  fi
  time_rng_assert=`grep "Verifying range assertions:" ${l} | grep -oE "[0-9.]+"`
  time_rng_spec=`grep "Verifying range specification:" ${l} | grep -oE "[0-9.]+"`
  time_vpc=`grep "Rewriting value-preserved casting:" ${l} | grep -oE "[0-9.]+"`
  time_alg_assert=`grep "Verifying algebraic assertions:" ${l} | grep -oE "[0-9.]+"`
  time_alg_spec=`grep "Verifying algebraic specification:" ${l} | grep -oE "[0-9.]+"`
  time_total=`grep -E "Verification result:.*\[OK\]" ${l} | grep -oE "[0-9.]+"`

  if [[ "$time_total" == "" ]]; then
    FAILED=1
    echo "Failed"
    break
  fi

  time_safety=${time_safety:=0}
  time_rng_assert=${time_rng_assert:=0}
  time_rng_spec=${time_rng_spec:=0}
  time_vpc=${time_vpc:=0}
  time_alg_assert=${time_alg_assert:=0}
  time_alg_spec=${time_alg_spec:=0}

  time_alg=`echo "${time_alg_assert} + ${time_alg_spec}" | bc`
  time_rng=`echo "${time_rng_assert} + ${time_rng_spec}" | bc`

  echo "Algebra time: ${time_alg} seconds" > ${s}
  echo "Overflow time: ${time_safety} seconds" >> ${s}
  echo "Range time: ${time_rng} seconds" >> ${s}
  echo "Total time: ${time_total} seconds" >> ${s}

done

if [[ ${FAILED} == 0 ]]; then
  echo "All finished. See ${SUMMARY} for more details."
fi
