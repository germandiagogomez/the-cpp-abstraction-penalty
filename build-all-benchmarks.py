#!/usr/bin/env python3
import subprocess as sp
import functools
import itertools as it
import os.path as op
import os
import glob
import sys
import collections as col

COMPILERS = ('clang++', 'g++')
ROOT_BUILD_DIR = 'build-all'
PLOT_FILE = 'scripts/plot_data.plt'


def create_directories_for_compilers(compilers):
    for compiler in compilers:
        build_dir = op.join(ROOT_BUILD_DIR, 'build-{}'.format(compiler))
        os.makedirs(build_dir)


def run_benchmarks_for_compilers(compilers):
    old_working_dir = os.getcwd()
    for compiler in compilers:
        build_dir = op.join(ROOT_BUILD_DIR, 'build-{}'.format(compiler))
        os.chdir(build_dir)
        sp.run(['cmake', '-DCMAKE_CXX_COMPILER={}'.format(compiler),
                '-DTCPPAP_CXX_COMPILER_ID={}'.format(compiler),
                '../..'])
        sp.run(['make', '-j5'])
        os.chdir(old_working_dir)


def generate_benchmark_files(compilers):
    all_compilers_dirs = (op.join(ROOT_BUILD_DIR, 'build-{}'.format(compiler))
                                  for compiler in compilers)
    all_dat_files = functools.reduce(it.chain,
                    (glob.iglob(op.join(files_dir, '*.dat')) for
                    files_dir in all_compilers_dirs))

    all_dat_files_sorted = sorted(all_dat_files,
                                  key=lambda k: '-'.join(op.basename(k).split('-')[0:2]))
    
    dat_files_per_benchmark = it.groupby(all_dat_files_sorted,
                                         lambda k: '-'.join(op.basename(k).split('-')[0:2]))

    for benchmark_name, bench_files in dat_files_per_benchmark:
        with open(op.join(ROOT_BUILD_DIR, '{}.dat'.format(benchmark_name)), "wt",
            encoding='utf-8') as out:
            out.write("Compiler moderncpp old-style\n")
            sorted_bench_files = sorted(bench_files,
                                        key=lambda k: k.split('-')[-1].split('.')[-2])
            for compiler, fnames in it.groupby(sorted_bench_files,
                                               lambda k: k.split('-')[-1].split('.')[-2]):
                out.write(compiler + ' ')
                for fname in fnames:
                    with open(fname, "rt",
                              encoding='utf-8') as bfile:
                        out.write(bfile.read().strip() + ' ')
                out.write('\n')
    
    
def generate_plot(benchmark_name):
    benchmark_file = op.join(ROOT_BUILD_DIR, benchmark_name + '.dat')
    output_plot = op.join(ROOT_BUILD_DIR, benchmark_name + '.png')
    plot_command = \
    '''
    gnuplot -e "output_plot='{output_plot}';filename='{benchmark_file}'" {plot_file}
    '''.format(benchmark_file=benchmark_file,
               output_plot=output_plot,
               plot_file=PLOT_FILE)
               
    sp.run(plot_command, shell=True)

    
if __name__ == '__main__':
    if len(sys.argv) != 1:
        COMPILERS = sys.argv[1:]
        
    create_directories_for_compilers(COMPILERS)
    run_benchmarks_for_compilers(COMPILERS)
    generate_benchmark_files(COMPILERS)
    generate_plot('01-sieve')
    generate_plot('02-formatted_read')

    
        
