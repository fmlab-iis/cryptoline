#!/bin/bash

for i in {0..19}
do
    for j in {1..3}
    do
        echo \($i, $j\)
        ~/cryptoline/verify.sh -disable_safety $i-$j-loop20.cl | grep "Verification result"
    done
done
