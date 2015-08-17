#!/usr/bin/env sh


NAMES="raw_sieve-clang++-benchdata.dat ranges_sieve-clang++-benchdata.dat raw_sieve-g++-5-benchdata.dat ranges_sieve-g++-5-benchdata.dat"

make benchmark
make benchmark g++-5

cat ${NAMES} > data.dat
#gnuplot scripts/plot_data.plt
