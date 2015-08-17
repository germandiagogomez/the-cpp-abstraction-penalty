#!/usr/bin/env sh


#This script is invoked from ../Makefile in makefile target benchmark
TARGETS=${@:1}

for target in ${TARGETS}; do
    for i in $(seq 1 5); do
        "./${target}"  >> ${target}-benchdata.dat
        printf " " >> ${target}-benchdata.dat
    done
    sort -t' ' ${target}-benchdata.dat -o ${target}-benchdata.dat
    tr '\n' ' ' < ${target}-benchdata.dat > ${target}.dat
    printf "${target}\n" >> ${target}.dat
    rm ${target}-benchdata.dat
done
