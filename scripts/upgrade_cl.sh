#!/bin/bash

FILE=$1

if [[ "${FILE}" == "" ]]; then
  echo "Usage: ${0} FILE"
  echo
  echo "Upgrade Cryptoline programs to the new syntax."
  echo "Do not redirect the output back to the input file."
  exit
elif ! [[ -e "${FILE}" ]]; then
  echo "File ${FILE} does not exist."
  exit
elif ! [[ -f "${FILE}" ]]; then
  echo "File ${FILE} is not a regular file."
  exit
elif ! [[ -r "${FILE}" ]]; then
  echo "File ${FILE} is not readable."
  exit
fi

case "$(uname -s)" in
  Darwin)
    SED=gsed
    ;;
  *)
    SED=sed
    ;;
esac

${SED} \
    -e 's/(bvVar\s\+\([a-zA-Z_][a-zA-Z0-9_]*\))/\1/g' \
    -e 's/(bvConst\s\+(\([ ]*-[ ]*[0-9][0-9]*\)))/(\1)/g' \
    -e 's/(bvConst\s\+\([ ]*-[ ]*[0-9][0-9]*\))/(\1)/g' \
    -e 's/(bvConst\s\+\(\.*\))/\1/g' \
    -e 's/(bvConst &\([a-zA-Z_][a-zA-Z0-9_]*\))/$\1/g' \
    \
    -e 's/\<bvAssign\>/mov/g' \
    -e 's/\<bvAdd\>/add/g' \
    -e 's/\<bvAddC\>/adds/g' \
    -e 's/\<bvAdc\>/adc/g' \
    -e 's/\<bvAdcC\>/adcs/g' \
    -e 's/\<bvSub\>/sub/g' \
    -e 's/\<bvSubC\>/subb/g' \
    -e 's/\<bvSbb\>/sbb/g' \
    -e 's/\<bvSbbC\>/sbbs/g' \
    -e 's/\<bvMul\>/mul/g' \
    -e 's/\<bvMulf\>/mull/g' \
    -e 's/\<bvSplit\>/split/g' \
    -e 's/\<bvUadd\>/uadd/g' \
    -e 's/\<bvUaddC\>/uadds/g' \
    -e 's/\<bvUadc\>/uadc/g' \
    -e 's/\<bvUadcC\>/uadcs/g' \
    -e 's/\<bvUsub\>/usub/g' \
    -e 's/\<bvUsubC\>/usubb/g' \
    -e 's/\<bvUsbb\>/usbb/g' \
    -e 's/\<bvUsbbC\>/usbbs/g' \
    -e 's/\<bvUmul\>/umul/g' \
    -e 's/\<bvUmulf\>/umull/g' \
    -e 's/\<bvUsplit\>/usplit/g' \
    -e 's/\<bvSadd\>/sadd/g' \
    -e 's/\<bvSaddC\>/sadds/g' \
    -e 's/\<bvSadc\>/sadc/g' \
    -e 's/\<bvSadcC\>/sadcs/g' \
    -e 's/\<bvSsub\>/ssub/g' \
    -e 's/\<bvSsubC\>/ssubb/g' \
    -e 's/\<bvSsbb\>/ssbb/g' \
    -e 's/\<bvSsbbC\>/ssbbs/g' \
    -e 's/\<bvSmul\>/smul/g' \
    -e 's/\<bvSmulf\>/smull/g' \
    -e 's/\<bvSsplit\>/ssplit/g' \
    -e 's/\<bvShl\>/shl/g' \
    -e 's/\<bvConcatShl\>/cshl/g' \
    -e 's/\<bvSet\>/set/g' \
    -e 's/\<bvClear\>/clear/g' \
    -e 's/\<bvNondet\>/nondet/g' \
    -e 's/\<bvCmove\>/cmov/g' \
    -e 's/\<bvAndb\>/and/g' \
    -e 's/\<bvOrb\>/or/g' \
    -e 's/\<bvNotb\>/not/g' \
    -e 's/\<bvAssert\>/assert/g' \
    -e 's/\<bvAssume\>/assume/g' \
    -e 's/\<bveCut\>/ecut/g' \
    -e 's/\<bvecut\>/ecut/g' \
    -e 's/\<bvrCut\>/rcut/g' \
    -e 's/\<bvrcut\>/rcut/g' \
    -e 's/\<bvGhost\>/ghost/g' \
    \
    -e 's/(bvVar\s\+\([a-zA-Z_][a-zA-Z0-9_]*\))\|bvVar\s\+\([a-zA-Z_][a-zA-Z0-9_]*\)/\1\2/g' \
    -e 's/(bvvar\s\+\([a-zA-Z_][a-zA-Z0-9_]*\))\|bvvar\s\+\([a-zA-Z_][a-zA-Z0-9_]*\)/\1\2/g' \
    -e 's/(bveVar\s\+\([a-zA-Z_][a-zA-Z0-9_]*\))\|bveVar\s\+\([a-zA-Z_][a-zA-Z0-9_]*\)/\1\2/g' \
    -e 's/(bvevar\s\+\([a-zA-Z_][a-zA-Z0-9_]*\))\|bvevar\s\+\([a-zA-Z_][a-zA-Z0-9_]*\)/\1\2/g' \
    -e 's/(bvrVar\s\+\([a-zA-Z_][a-zA-Z0-9_]*\))\|bvrVar\s\+\([a-zA-Z_][a-zA-Z0-9_]*\)/\1\2/g' \
    -e 's/(bvrvar\s\+\([a-zA-Z_][a-zA-Z0-9_]*\))\|bvrvar\s\+\([a-zA-Z_][a-zA-Z0-9_]*\)/\1\2/g' \
    -e 's/(bvconst\s\+\([0-9][0-9]*\)\s\+(\(\([( ]*[-+]*[0-9][0-9]*[-+*^ ][0-9][0-9]*[) ]*\([-+*^ ][0-9][0-9]*[) ]*\)*\)\)))/const \1 (\2)/g' \
    -e 's/(bvconst\s\+\([0-9][0-9]*\)\s\+\(\([( ]*[-+]*[0-9][0-9]*[-+*^ ][0-9][0-9]*[) ]*\([-+*^ ][0-9][0-9]*[) ]*\)*\)\))/const \1 (\2)/g' \
    -e 's/(bvconst\s\+\([0-9][0-9]*\)\s\+\([0-9][0-9]*\))/const \1 \2/g' \
    -e 's/(bvconst\s\+\([0-9][0-9]*\)\s\+\(0x[0-9a-fA-F][0-9a-fA-F]*\))/const \1 \2/g' \
    -e 's/bvconst\s\+\([0-9][0-9]*\)\s\+(\(\([( ]*[-+]*[0-9][0-9]*[-+*^ ][0-9][0-9]*[) ]*\([-+*^ ][0-9][0-9]*[) ]*\)*\)\))/const \1 (\2)/g' \
    -e 's/bvconst\s\+\([0-9][0-9]*\)\s\+\(\([( ]*[-+]*[0-9][0-9]*[-+*^ ][0-9][0-9]*[) ]*\([-+*^ ][0-9][0-9]*[) ]*\)*\)\)/const \1 (\2)/g' \
    -e 's/bvconst\s\+\([0-9][0-9]*\)\s\+\([0-9][0-9]*\)/const \1 \2/g' \
    -e 's/bvconst\s\+\([0-9][0-9]*\)\s\+\([ ]*-[ ]*[0-9][0-9]*\)/const \1 (\2)/g' \
    -e 's/bvconst\s\+\([0-9][0-9]*\)\s\+\(0x[0-9a-fA-F][0-9a-fA-F]*\)/const \1 \2/g' \
    -e 's/(bvConst\s\+(\(\([( ]*[-+]*[0-9][0-9]*[-+*^ ][0-9][0-9]*[) ]*\([-+*^ ][0-9][0-9]*[) ]*\)*\)\)))/(\1)/g' \
    -e 's/(bvConst\s\+\(\([( ]*[-+]*[0-9][0-9]*[-+*^ ][0-9][0-9]*[) ]*\([-+*^ ][0-9][0-9]*[) ]*\)*\)\))/(\1)/g' \
    -e 's/(bvConst\s\+\([0-9][0-9]*\))/\1/g' \
    -e 's/(bvConst\s\+\([ ]*-[ ]*[0-9][0-9]*\))/(\1)/g' \
    -e 's/(bvConst\s\+\(0x[0-9a-fA-F][0-9a-fA-F]*\))/\1/g' \
    -e 's/bvConst\s\+(\(\([( ]*[-+]*[0-9][0-9]*[-+*^ ][0-9][0-9]*[) ]*\([-+*^ ][0-9][0-9]*[) ]*\)*\)\))/(\1)/g' \
    -e 's/bvConst\s\+\(\([( ]*[-+]*[0-9][0-9]*[-+*^ ][0-9][0-9]*[) ]*\([-+*^ ][0-9][0-9]*[) ]*\)*\)\)/(\1)/g' \
    -e 's/bvConst\s\+\([0-9][0-9]*\)/\1/g' \
    -e 's/bvConst\s\+\([ ]*-[ ]*[0-9][0-9]*\)/(\1)/g' \
    -e 's/bvConst\s\+\(0x[0-9a-fA-F][0-9a-fA-F]*\)/\1/g' \
    -e 's/(bvconst\s\+(\(\([( ]*[-+]*[0-9][0-9]*[-+*^ ][0-9][0-9]*[) ]*\([-+*^ ][0-9][0-9]*[) ]*\)*\)\)))/(\1)/g' \
    -e 's/(bvconst\s\+\(\([( ]*[-+]*[0-9][0-9]*[-+*^ ][0-9][0-9]*[) ]*\([-+*^ ][0-9][0-9]*[) ]*\)*\)\))/(\1)/g' \
    -e 's/(bvconst\s\+\([0-9][0-9]*\))/\1/g' \
    -e 's/(bvconst\s\+\([ ]*-[ ]*[0-9][0-9]*\))/(\1)/g' \
    -e 's/(bvconst\s\+\(0x[0-9a-fA-F][0-9a-fA-F]*\))/\1/g' \
    -e 's/bvconst\s\+(\(\([( ]*[-+]*[0-9][0-9]*[-+*^ ][0-9][0-9]*[) ]*\([-+*^ ][0-9][0-9]*[) ]*\)*\)\))/(\1)/g' \
    -e 's/bvconst\s\+\(\([( ]*[-+]*[0-9][0-9]*[-+*^ ][0-9][0-9]*[) ]*\([-+*^ ][0-9][0-9]*[) ]*\)*\)\)/(\1)/g' \
    -e 's/bvconst\s\+\([0-9][0-9]*\)/\1/g' \
    -e 's/bvconst\s\+\([ ]*-[ ]*[0-9][0-9]*\)/(\1)/g' \
    -e 's/bvconst\s\+\(0x[0-9a-fA-F][0-9a-fA-F]*\)/\1/g' \
    -e 's/(bveConst\s\+(\(\([( ]*[-+]*[0-9][0-9]*[-+*^ ][0-9][0-9]*[) ]*\([-+*^ ][0-9][0-9]*[) ]*\)*\)\)))/(\1)/g' \
    -e 's/(bveConst\s\+\(\([( ]*[-+]*[0-9][0-9]*[-+*^ ][0-9][0-9]*[) ]*\([-+*^ ][0-9][0-9]*[) ]*\)*\)\))/(\1)/g' \
    -e 's/(bveConst\s\+\([0-9][0-9]*\))/\1/g' \
    -e 's/(bveConst\s\+\([ ]*-[ ]*[0-9][0-9]*\))/(\1)/g' \
    -e 's/(bveConst\s\+\(0x[0-9a-fA-F][0-9a-fA-F]*\))/\1/g' \
    -e 's/bveConst\s\+(\(\([( ]*[-+]*[0-9][0-9]*[-+*^ ][0-9][0-9]*[) ]*\([-+*^ ][0-9][0-9]*[) ]*\)*\)\))/(\1)/g' \
    -e 's/bveConst\s\+\(\([( ]*[-+]*[0-9][0-9]*[-+*^ ][0-9][0-9]*[) ]*\([-+*^ ][0-9][0-9]*[) ]*\)*\)\)/(\1)/g' \
    -e 's/bveConst\s\+\([0-9][0-9]*\)/\1/g' \
    -e 's/bveConst\s\+\([ ]*-[ ]*[0-9][0-9]*\)/(\1)/g' \
    -e 's/bveConst\s\+\(0x[0-9a-fA-F][0-9a-fA-F]*\)/\1/g' \
    -e 's/(bveconst\s\+(\(\([( ]*[-+]*[0-9][0-9]*[-+*^ ][0-9][0-9]*[) ]*\([-+*^ ][0-9][0-9]*[) ]*\)*\)\)))/(\1)/g' \
    -e 's/(bveconst\s\+\(\([( ]*[-+]*[0-9][0-9]*[-+*^ ][0-9][0-9]*[) ]*\([-+*^ ][0-9][0-9]*[) ]*\)*\)\))/(\1)/g' \
    -e 's/(bveconst\s\+\([0-9][0-9]*\))/\1/g' \
    -e 's/(bveconst\s\+\([ ]*-[ ]*[0-9][0-9]*\))/(\1)/g' \
    -e 's/(bveconst\s\+\(0x[0-9a-fA-F][0-9a-fA-F]*\))/\1/g' \
    -e 's/bveconst\s\+(\(\([( ]*[-+]*[0-9][0-9]*[-+*^ ][0-9][0-9]*[) ]*\([-+*^ ][0-9][0-9]*[) ]*\)*\)\))/(\1)/g' \
    -e 's/bveconst\s\+\(\([( ]*[-+]*[0-9][0-9]*[-+*^ ][0-9][0-9]*[) ]*\([-+*^ ][0-9][0-9]*[) ]*\)*\)\)/(\1)/g' \
    -e 's/bveconst\s\+\([0-9][0-9]*\)/\1/g' \
    -e 's/bveconst\s\+\([ ]*-[ ]*[0-9][0-9]*\)/(\1)/g' \
    -e 's/bveconst\s\+\(0x[0-9a-fA-F][0-9a-fA-F]*\)/\1/g' \
    -e 's/(bvrConst\s\+\([0-9][0-9]*\)\s\+(\(\([( ]*[-+]*[0-9][0-9]*[-+*^ ][0-9][0-9]*[) ]*\([-+*^ ][0-9][0-9]*[) ]*\)*\)\)))/const \1 (\2)/g' \
    -e 's/(bvrConst\s\+\([0-9][0-9]*\)\s\+\(\([( ]*[-+]*[0-9][0-9]*[-+*^ ][0-9][0-9]*[) ]*\([-+*^ ][0-9][0-9]*[) ]*\)*\)\))/const \1 (\2)/g' \
    -e 's/(bvrConst\s\+\([0-9][0-9]*\)\s\+\([0-9][0-9]*\))/const \1 \2/g' \
    -e 's/(bvrConst\s\+\([0-9][0-9]*\)\s\+\([ ]*-[ ]*[0-9][0-9]*\))/const \1 (\2)/g' \
    -e 's/(bvrConst\s\+\([0-9][0-9]*\)\s\+\(0x[0-9a-fA-F][0-9a-fA-F]*\))/const \1 \2/g' \
    -e 's/bvrConst\s\+\([0-9][0-9]*\)\s\+(\(\([( ]*[-+]*[0-9][0-9]*[-+*^ ][0-9][0-9]*[) ]*\([-+*^ ][0-9][0-9]*[) ]*\)*\)\))/const \1 (\2)/g' \
    -e 's/bvrConst\s\+\([0-9][0-9]*\)\s\+\(\([( ]*[-+]*[0-9][0-9]*[-+*^ ][0-9][0-9]*[) ]*\([-+*^ ][0-9][0-9]*[) ]*\)*\)\)/const \1 (\2)/g' \
    -e 's/bvrConst\s\+\([0-9][0-9]*\)\s\+\([0-9][0-9]*\)/const \1 \2/g' \
    -e 's/bvrConst\s\+\([0-9][0-9]*\)\s\+\([ ]*-[ ]*[0-9][0-9]*\)/const \1 (\2)/g' \
    -e 's/bvrConst\s\+\([0-9][0-9]*\)\s\+\(0x[0-9a-fA-F][0-9a-fA-F]*\)/const \1 \2/g' \
    -e 's/(bvrconst\s\+\([0-9][0-9]*\)\s\+(\(\([( ]*[-+]*[0-9][0-9]*[-+*^ ][0-9][0-9]*[) ]*\([-+*^ ][0-9][0-9]*[) ]*\)*\)\)))/const \1 (\2)/g' \
    -e 's/(bvrconst\s\+\([0-9][0-9]*\)\s\+\(\([( ]*[-+]*[0-9][0-9]*[-+*^ ][0-9][0-9]*[) ]*\([-+*^ ][0-9][0-9]*[) ]*\)*\)\))/const \1 (\2)/g' \
    -e 's/(bvrconst\s\+\([0-9][0-9]*\)\s\+\([0-9][0-9]*\))/const \1 \2/g' \
    -e 's/(bvrconst\s\+\([0-9][0-9]*\)\s\+\([ ]*-[ ]*[0-9][0-9]*\))/const \1 (\2)/g' \
    -e 's/(bvrconst\s\+\([0-9][0-9]*\)\s\+\(0x[0-9a-fA-F][0-9a-fA-F]*\))/const \1 \2/g' \
    -e 's/bvrconst\s\+\([0-9][0-9]*\)\s\+(\(\([( ]*[-+]*[0-9][0-9]*[-+*^ ][0-9][0-9]*[) ]*\([-+*^ ][0-9][0-9]*[) ]*\)*\)\))/const \1 (\2)/g' \
    -e 's/bvrconst\s\+\([0-9][0-9]*\)\s\+\(\([( ]*[-+]*[0-9][0-9]*[-+*^ ][0-9][0-9]*[) ]*\([-+*^ ][0-9][0-9]*[) ]*\)*\)\)/const \1 (\2)/g' \
    -e 's/bvrconst\s\+\([0-9][0-9]*\)\s\+\([0-9][0-9]*\)/const \1 \2/g' \
    -e 's/bvrconst\s\+\([0-9][0-9]*\)\s\+\([ ]*-[ ]*[0-9][0-9]*\)/const \1 (\2)/g' \
    -e 's/bvrconst\s\+\([0-9][0-9]*\)\s\+\(0x[0-9a-fA-F][0-9a-fA-F]*\)/const \1 \2/g' \
    -e 's/\<bvNeg\>/neg/g' \
    -e 's/\<bvneg\>/neg/g' \
    -e 's/\<bvnegb\>/neg/g' \
    -e 's/\<bveNeg\>/neg/g' \
    -e 's/\<bveneg\>/neg/g' \
    -e 's/\<bvrNeg\>/neg/g' \
    -e 's/\<bvrneg\>/neg/g' \
    -e 's/\<bvnot\>/not/g' \
    -e 's/\<bvrNot\>/not/g' \
    -e 's/\<bvrnot\>/not/g' \
    -e 's/\<bvadd\>/add/g' \
    -e 's/\<bveAdd\>/add/g' \
    -e 's/\<bveadd\>/add/g' \
    -e 's/\<bvrAdd\>/add/g' \
    -e 's/\<bvradd\>/add/g' \
    -e 's/\<bvsub\>/sub/g' \
    -e 's/\<bveSub\>/sub/g' \
    -e 's/\<bvesub\>/sub/g' \
    -e 's/\<bvrSub\>/sub/g' \
    -e 's/\<bvrsub\>/sub/g' \
    -e 's/\<bvmul\>/mul/g' \
    -e 's/\<bveMul\>/mul/g' \
    -e 's/\<bvemul\>/mul/g' \
    -e 's/\<bvrMul\>/mul/g' \
    -e 's/\<bvrmul\>/mul/g' \
    -e 's/\<bvSq\>/sq/g' \
    -e 's/\<bvsq\>/sq/g' \
    -e 's/\<bveSq\>/sq/g' \
    -e 's/\<bvesq\>/sq/g' \
    -e 's/\<bvrSq\>/sq/g' \
    -e 's/\<bvrsq\>/sq/g' \
    -e 's/\<bvadds\>/add/g' \
    -e 's/\<bveadds\>/add/g' \
    -e 's/\<bvradds\>/add/g' \
    -e 's/\<bvmuls\>/mul/g' \
    -e 's/\<bvemuls\>/mul/g' \
    -e 's/\<bvrmuls\>/mul/g' \
    -e 's/\<bvExt\>/uext/g' \
    -e 's/\<bvext\>/uext/g' \
    -e 's/\<bvrExt\>/uext/g' \
    -e 's/\<bvrext\>/uext/g' \
    -e 's/\<bvUext\>/uext/g' \
    -e 's/\<bvuext\>/uext/g' \
    -e 's/\<bvrUext\>/uext/g' \
    -e 's/\<bvruext\>/uext/g' \
    -e 's/\<bvSext\>/sext/g' \
    -e 's/\<bvsext\>/sext/g' \
    -e 's/\<bvrSext\>/sext/g' \
    -e 's/\<bvrsext\>/sext/g' \
    -e 's/\<bvUmod\>/umod/g' \
    -e 's/\<bvumod\>/umod/g' \
    -e 's/\<bvrUmod\>/umod/g' \
    -e 's/\<bvrumod\>/umod/g' \
    -e 's/\<bvMod\>/umod/g' \
    -e 's/\<bvmod\>/umod/g' \
    -e 's/\<bvrMod\>/umod/g' \
    -e 's/\<bvrmod\>/umod/g' \
    -e 's/\<bvSrem\>/srem/g' \
    -e 's/\<bvsrem\>/srem/g' \
    -e 's/\<bvrSrem\>/srem/g' \
    -e 's/\<bvrsrem\>/srem/g' \
    -e 's/\<bvSmod\>/smod/g' \
    -e 's/\<bvsmod\>/smod/g' \
    -e 's/\<bvrSmod\>/smod/g' \
    -e 's/\<bvrsmod\>/smod/g' \
    -e 's/\<bvrAndb\>/and/g' \
    -e 's/\<bvrandb\>/and/g' \
    -e 's/\<bvrOrb\>/or/g' \
    -e 's/\<bvrorb\>/or/g' \
    -e 's/\<bvrXorb\>/xor/g' \
    -e 's/\<bvrxorb\>/xor/g' \
    \
    -e 's/\<bvTrue\>/true/g' \
    -e 's/\<bvtrue\>/true/g' \
    -e 's/\<bveTrue\>/true/g' \
    -e 's/\<bvetrue\>/true/g' \
    -e 's/\<bvrTrue\>/true/g' \
    -e 's/\<bvrtrue\>/true/g' \
    -e 's/\<bvEq\>/eq/g' \
    -e 's/\<bveq\>/eq/g' \
    -e 's/\<bveEq\>/eq/g' \
    -e 's/\<bveeq\>/eq/g' \
    -e 's/\<bvrEq\>/eq/g' \
    -e 's/\<bvreq\>/eq/g' \
    -e 's/\<bvEqMod\>/eqmod/g' \
    -e 's/\<bveqmod\>/eqmod/g' \
    -e 's/\<bveEqMod\>/eqmod/g' \
    -e 's/\<bveeqmod\>/eqmod/g' \
    -e 's/\<bvrEqMod\>/eqmod/g' \
    -e 's/\<bvreqmod\>/eqmod/g' \
    -e 's/\<bveAnd\>/and/g' \
    -e 's/\<bveand\>/and/g' \
    -e 's/\<bvrAnd\>/and/g' \
    -e 's/\<bvrand\>/and/g' \
    -e 's/\<bvAnds\>/and/g' \
    -e 's/\<bvands\>/and/g' \
    -e 's/\<bveAnds\>/and/g' \
    -e 's/\<bveands\>/and/g' \
    -e 's/\<bvrAnds\>/and/g' \
    -e 's/\<bvrAnds\>/and/g' \
    -e 's/\<bvrands\>/and/g' \
    -e 's/\<bvors\>/or/g' \
    -e 's/\<bvors\>/or/g' \
    -e 's/\<bvrors\>/or/g' \
    -e 's/\<bvrors\>/or/g' \
    -e 's/\<bvrors\>/or/g' \
    -e 's/\<bvUlt\>/ult/g' \
    -e 's/\<bvult\>/ult/g' \
    -e 's/\<bvrUlt\>/ult/g' \
    -e 's/\<bvrult\>/ult/g' \
    -e 's/\<bvUle\>/ule/g' \
    -e 's/\<bvule\>/ule/g' \
    -e 's/\<bvrUle\>/ule/g' \
    -e 's/\<bvrule\>/ule/g' \
    -e 's/\<bvUgt\>/ugt/g' \
    -e 's/\<bvugt\>/ugt/g' \
    -e 's/\<bvrUgt\>/ugt/g' \
    -e 's/\<bvrugt\>/ugt/g' \
    -e 's/\<bvUge\>/uge/g' \
    -e 's/\<bvuge\>/uge/g' \
    -e 's/\<bvrUge\>/uge/g' \
    -e 's/\<bvruge\>/uge/g' \
    -e 's/\<bvSlt\>/slt/g' \
    -e 's/\<bvslt\>/slt/g' \
    -e 's/\<bvrSlt\>/slt/g' \
    -e 's/\<bvrslt\>/slt/g' \
    -e 's/\<bvSle\>/sle/g' \
    -e 's/\<bvsle\>/sle/g' \
    -e 's/\<bvrSle\>/sle/g' \
    -e 's/\<bvrsle\>/sle/g' \
    -e 's/\<bvSgt\>/sgt/g' \
    -e 's/\<bvsgt\>/sgt/g' \
    -e 's/\<bvrSgt\>/sgt/g' \
    -e 's/\<bvrsgt\>/sgt/g' \
    -e 's/\<bvSge\>/sge/g' \
    -e 's/\<bvsge\>/sge/g' \
    -e 's/\<bvrSge\>/sge/g' \
    -e 's/\<bvrsge\>/sge/g' \
    \
    -e 's/\<bvvars\>/vars/g' \
    -e 's/\<bvevars\>/vars/g' \
    -e 's/\<bvrvars\>/vars/g' \
    \
    -e 's/&\([a-zA-Z_][a-zA-Z0-9_]*\)/$\1/g' \
    -e 's/\^/**/g' \
    -e 's/\(\s\s*\)|/\1\&\&/g' \
    -e 's/^|/\&\&/g' \
    ${FILE}
