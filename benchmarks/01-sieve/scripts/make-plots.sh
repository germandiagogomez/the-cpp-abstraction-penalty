#!/usr/bin/env sh

srcdir=$1
plotdir=$2
shift
shift

COMPILERS=${@:1}
EXECUTABLES="raw_sieve ranges_sieve"


for compiler in ${COMPILERS}; do
    make benchmark CXX=${compiler} builddir=build-${compiler}
done

for compiler in ${COMPILERS}; do
    for executable in ${EXECUTABLES}; do
        cat build-${compiler}/${executable}.dat >> ${plotdir}/all-benchmarks.dat
    done
done

gnuplot -e "output_plot='${plotdir}/benchmark.png'" ${srcdir}/scripts/plot_data.plt
