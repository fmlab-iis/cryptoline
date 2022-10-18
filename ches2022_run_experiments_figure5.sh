#!/bin/bash

CL="./_build/default/cv.exe"
BENCHMARKS_PATH="examples/ches2022"
BENCHMARKS=(
  "0|kyber768-avx2-cuts/PQCLEAN_KYBER768_AVX2_polyvec_ntt_00_cuts.cl|-v -isafety -jobs 24 -slicing -no_carry_constraint"
  "1|kyber768-avx2-cuts/PQCLEAN_KYBER768_AVX2_polyvec_ntt_01_cuts.cl|-v -isafety -jobs 24 -slicing -no_carry_constraint"
  "3|kyber768-avx2-cuts/PQCLEAN_KYBER768_AVX2_polyvec_ntt_03_cuts.cl|-v -isafety -jobs 24 -slicing -no_carry_constraint"
  "4|kyber768-avx2-cuts/PQCLEAN_KYBER768_AVX2_polyvec_ntt_04_cuts.cl|-v -isafety -jobs 24 -slicing -no_carry_constraint"
  "6|kyber768-avx2-cuts/PQCLEAN_KYBER768_AVX2_polyvec_ntt_06_cuts.cl|-v -isafety -jobs 24 -slicing -no_carry_constraint"
  "8|kyber768-avx2-cuts/PQCLEAN_KYBER768_AVX2_polyvec_ntt_08_cuts.cl|-v -isafety -jobs 24 -slicing -no_carry_constraint"
  "10|kyber768-avx2-cuts/PQCLEAN_KYBER768_AVX2_polyvec_ntt_10_cuts.cl|-v -isafety -jobs 24 -slicing -no_carry_constraint"
  "14|kyber768-avx2-cuts/PQCLEAN_KYBER768_AVX2_polyvec_ntt_14_cuts.cl|-v -isafety -jobs 24 -slicing -no_carry_constraint"
)
OUT="results-figure5"
SUMMARY="${OUT}/summary.log"
FAILED=0

rm -f ${SUMMARY}

for pair in "${BENCHMARKS[@]}"; do
  numcuts=`echo ${pair} | cut -d '|' -f 1`
  file=`echo ${pair} | cut -d '|' -f 2`
  flags=`echo ${pair} | cut -d '|' -f 3`

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

  echo "Kyber768 AVX2 normal ${numcuts} cuts:" >> ${SUMMARY}
  echo "  - Algebra time: ${time_alg} seconds" >> ${SUMMARY}
  echo "  - Overflow time: ${time_safety} seconds" >> ${SUMMARY}
  echo "  - Range time: ${time_rng} seconds" >> ${SUMMARY}
  echo "  - Total time: ${time_total} seconds" >> ${SUMMARY}
  echo "" >> ${SUMMARY}
done

if [[ ${FAILED} == 0 ]]; then
  echo "All finished. See ${SUMMARY} for more details."
fi
