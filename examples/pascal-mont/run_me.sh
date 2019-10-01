#!/bin/bash
# convert macc a?, b? to macc aa?, b?
# convert macc u$2, 1 to macc uu$2, 1

cat $1 | \
sed "s/macc\ \ta\([0-9]*\),\tb\([0-9]*\)/macc\ \taa\1,\tb\2/" | \
sed "s/macc\ \tu$2,\t1/macc\ \tuu$2,\t1/"
