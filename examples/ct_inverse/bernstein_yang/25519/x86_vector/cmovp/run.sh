#!/bin/bash

for i in {0..19}
do
    echo \($i\)
    ~/cryptoline/verify.sh -disable_safety $i-loop20.cl | grep "Verification result"
done
