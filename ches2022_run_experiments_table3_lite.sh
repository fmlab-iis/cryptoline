#!/bin/bash

CL="./_build/default/cv.exe"
BENCHMARKS_PATH="examples/ches2022"
BENCHMARKS=(
  "Kyber768|AVX2|normal|kyber768/avx2/PQCLEAN_KYBER768_AVX2_polyvec_ntt.cl|-v -isafety -jobs 2 -slicing -no_carry_constraint"
  "Kyber768|Cortex-M4|normal|kyber768/pqm4/ntt_fast.cl|-v -isafety -isafety_timeout 14400 -jobs 2 -slicing -no_carry_constraint"
  "Saber|AVX2|normal|saber/avx2/test_sabermul_nttmul_poly_ntt.cl|-v -isafety -isafety_timeout 14400 -jobs 2 -slicing -no_carry_constraint"
)
OUT="results-table3-lite"
SUMMARY="${OUT}/summary.log"
FAILED=0

for pair in "${BENCHMARKS[@]}"; do
  alg=`echo ${pair} | cut -d '|' -f 1`
  arch=`echo ${pair} | cut -d '|' -f 2`
  direction=`echo ${pair} | cut -d '|' -f 3`
  file=`echo ${pair} | cut -d '|' -f 4`
  flags=`echo ${pair} | cut -d '|' -f 5`

  d="${OUT}/${alg}/${arch}/${direction}"
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
  rm -f ${SUMMARY}
  for pair in "${BENCHMARKS[@]}"; do
    alg=`echo ${pair} | cut -d '|' -f 1`
    arch=`echo ${pair} | cut -d '|' -f 2`
    direction=`echo ${pair} | cut -d '|' -f 3`
    time_alg=0
    time_safety=0
    time_rng=0
    time_total=0
    for file in `ls ${OUT}/${alg}/${arch}/${direction}/*_summary.log`; do
      s=`grep "Algebra time:" ${file} | grep -o "[[:digit:]]*\.[[:digit:]]*"`
      time_alg=`echo "${time_alg} + ${s}" | bc`
      s=`grep "Overflow time:" ${file} | grep -o "[[:digit:]]*\.[[:digit:]]*"`
      time_safety=`echo "${time_safety} + ${s}" | bc`
      s=`grep "Range time:" ${file} | grep -o "[[:digit:]]*\.[[:digit:]]*"`
      time_rng=`echo "${time_rng} + ${s}" | bc`
      s=`grep "Total time:" ${file} | grep -o "[[:digit:]]*\.[[:digit:]]*"`
      time_total=`echo "${time_total} + ${s}" | bc`
    done
    echo "${alg} ${arch} ${direction}:" >> ${SUMMARY}
    echo "  - Algebra time: ${time_alg} seconds" >> ${SUMMARY}
    echo "  - Overflow time: ${time_safety} seconds" >> ${SUMMARY}
    echo "  - Range time: ${time_rng} seconds" >> ${SUMMARY}
    echo "  - Total time: ${time_total} seconds" >> ${SUMMARY}
    echo "" >> ${SUMMARY}
  done
  echo "All finished. See ${SUMMARY} for more details."
fi
