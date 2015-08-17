#!/usr/bin/env sh

COMPILERS=${@:1}
EXECUTABLES="raw_sieve ranges_sieve"

for compiler in ${COMPILERS}; do
    make benchmark CXX=${compiler}
done

for compiler in ${COMPILERS}; do
    for executable in ${EXECUTABLES}; do
        cat ${executable}-${compiler}.dat >> all-benchmarks.dat
    done
done



#gnuplot scripts/plot_data.plt
