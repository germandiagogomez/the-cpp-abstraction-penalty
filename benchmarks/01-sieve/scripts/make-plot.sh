#!/usr/bin/env sh

plotdir=$1
shift

get_script_dir () {
    SOURCE="${BASH_SOURCE[0]}"
    while [ -h "$SOURCE" ]; do
        DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
        SOURCE="$( readlink "$SOURCE" )"
        [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
    done
    $( cd -P "$( dirname "$SOURCE" )" )
    pwd
}

COMPILERS=${@:1}
EXECUTABLES="raw_sieve ranges_sieve"
SCRIPTDIR=`get_script_dir`

mkdir ${plotdir}
for compiler in ${COMPILERS}; do
    mkdir build-${compiler} && cd build-${compiler} && ../configure
    make benchmark CXX=${compiler} -j`sysctl -n hw.ncpu`
    cd ..
done

for compiler in ${COMPILERS}; do
    for executable in ${EXECUTABLES}; do
        cat build-${compiler}/${executable}.dat >> ${plotdir}/all-benchmarks.dat
    done
done

gnuplot -e "output_plot='${plotdir}/benchmark.png';filename='${plotdir}/all-benchmarks.dat'" ${SCRIPTDIR}/scripts/plot_data.plt
