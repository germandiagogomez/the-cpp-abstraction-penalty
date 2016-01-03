#!/usr/bin/env python3
import subprocess as sp
import functools
import itertools as it
import os.path as op
import os
import glob
import sys


COMPILERS = ('clang++', 'g++')
ROOT_BUILD_DIR = 'build-all'


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
    all_dat_files = functools.reduce(it.chain, (sorted(glob.iglob(op.join(files_dir, '*.dat'))) for
                        files_dir in all_compilers_dirs))

    dat_files_per_benchmark = it.groupby(all_dat_files,
                                         lambda k: '-'.join(op.basename(k).split('-')[0:2]))
    
    for benchmark_name, bench_files in dat_files_per_benchmark:
        with open(op.join(ROOT_BUILD_DIR, '{}.dat'.format(benchmark_name)), "wt",
                  encoding='utf-8') as out:
            out.write("Compiler moderncpp old-style\n")
            for compiler, fnames in it.groupby(bench_files,
                                           lambda k: k.split('-')[-1].split('.')[-2]):
                out.write(compiler + ' ')
                for fname in fnames:
                    with open(fname, "rt",
                              encoding='utf-8') as bfile:
                        out.write(bfile.read().strip() + ' ')
                out.write('\n')
        

if __name__ == '__main__':
    if len(sys.argv) == 1:
        create_directories_for_compilers(COMPILERS)
        run_benchmarks_for_compilers(COMPILERS)
        generate_benchmark_files(COMPILERS)
