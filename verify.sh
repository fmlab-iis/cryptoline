#!/bin/bash

# BASEDIR=$(dirname $(realpath "$0"))
# VERIFIER=$BASEDIR/_build/default/cv.exe

# if [ ! -e $VERIFIER ]
# then
#     echo "Verifier does not exists."
#     echo "Please build the verifier first."
#     exit 1
# fi
cv_name='cv'
cv_cli_name='cv_cli'

cv_path=''
cv_cli_path=''

if which ${cv_name} >/dev/null; then
    cv_path=`which ${cv_name}`
else
    echo "run following command first"
    echo "dune build"
    echo "dune install"
    exit 1
fi

if which ${cv_cli_name} > /dev/null; then
    cv_cli_path=`which ${cv_cli_name}`
else
    echo "run following command first"
    echo "dune build"
    echo "dune install"
    exit 1
fi

VERIFIER=$cv_path

function requote() {
  local res=""
  for x in "${@}" ; do
    # try to figure out if quoting was required for the $x:
    grep -q "[[:space:]]" <<< "$x" && res="${res} \"${x}\"" || res="${res} ${x}"
  done
  # remove first space and print:
  sed -e 's/^ //' <<< "${res}"
}

echo "===== System Information ====="

kernel=`uname -s`

machine=`uname -n`
echo "Machine: ${machine}"

os=`uname -mnrsv`
echo "Operating System: ${os}"

if [[ "${kernel}" == "Linux" ]]; then
  cpu=`cat /proc/cpuinfo  | grep "model name" | head -n 1 | awk '{print $4 " " $5 " " $6 " " $7 " " $8 " " $9}'`
  mem=`cat /proc/meminfo | grep MemTotal | awk '{print $2 " kB"}'`
elif [[ "${kernel}" == "Darwin" ]]; then
  cpu=`sysctl -n machdep.cpu.brand_string`
  mem=`sysctl -n hw.memsize`
  mem="$((mem/1000)) kB"
fi
echo "CPU Model: ${cpu}"
echo "Memory: ${mem}"

singular="Singular"
boolector="boolector"
z3="z3"
idx=1
for arg in "$@"; do
    idx=$((idx + 1))
    if [[ "${arg}" == "-singular" ]]; then
        if [[ $idx -lt $# ]]; then
            singular=${!idx}
        fi
    fi
    if [[ "${arg}" == "-boolector" ]]; then
        if [[ $idx -lt $# ]]; then
            boolector=${!idx}
        fi
    fi
    if [[ "${arg}" == "-z3" ]]; then
        if [[ $idx -lt $# ]]; then
            z3=${!idx}
        fi
    fi
done
singular=`which "${singular}"`
boolector=`which "${boolector}"`
z3=`which "${z3}"`
singular_version=`echo "exit;" | ${singular} -v | head -n 1 2>/dev/null`
boolector_version=`${boolector} --version 2>/dev/null`
z3_version=`${z3} --version 2>/dev/null`
echo -n "Singular: "
if [[ "${singular}" == "" ]]; then
    echo "unavailable"
else
    echo "path=${singular}, version=${singular_version}"
fi
echo -n "Boolector: "
if [[ "${boolector}" == "" ]]; then
    echo "unavailable"
else
    echo "path=${boolector}, version=${boolector_version}"
fi
echo -n "Z3: "
if [[ "${z3}" == "" ]]; then
    echo "unavailable"
else
    echo "path=${z3}, version=${z3_version}"
fi

echo "===== Verification ====="

echo Arguments: $(requote "$@")

${VERIFIER} "$@"
