#!/usr/bin/env sh


#This script is invoked from ../Makefile in makefile target benchmark
TARGETS=${@:1}

for target in ${TARGETS}; do
    for i in $(seq 1 5); do
        "./${target}"  >> ${target}-benchdata.dat
    done
    sort ${target}-benchdata.dat -o ${target}-benchdata.dat
    tr '\n' ' ' < ${target}-benchdata.dat > ${target}.dat
    echo "${target}" >> ${target}.dat
    rm ${target}-benchdata.dat
done
