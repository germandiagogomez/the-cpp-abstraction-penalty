#!/usr/bin/env python3
import subprocess as sp
import functools
import itertools as it
import os.path as op
import os
import shutil
import glob
import sys
import collections as col

COMPILERS = ('clang++', 'g++')
ROOT_BUILD_DIR = 'build-all'
PLOT_FILE_TEMPLATE = 'scripts/plot_data.plt'
BENCHMARKS_DIR = 'benchmarks'
PLOTS_DIR = 'plots'
FIELDS_SEP = '--'

def get_build_dir(compiler):
    return FIELDS_SEP.join(['build', compiler])


def create_directories_for_compilers(compilers):
    for compiler in compilers:
        build_dir = op.join(ROOT_BUILD_DIR, get_build_dir(compiler))
        os.makedirs(build_dir)


def run_benchmarks_for_compilers(compilers):
    old_working_dir = os.getcwd()
    for compiler in compilers:
        build_dir = op.join(ROOT_BUILD_DIR, get_build_dir(compiler))
        os.chdir(build_dir)
        sp.call(['cmake', '-DCMAKE_CXX_COMPILER={}'.format(compiler),
                '-DTCPPAP_CXX_COMPILER_ID={}'.format(compiler),
                '../..'])
        sp.call(['make', '-j5'])
        os.chdir(old_working_dir)


def generate_benchmark_files(compilers):
    all_compilers_dirs = (op.join(ROOT_BUILD_DIR, get_build_dir(compiler))
                                  for compiler in compilers)
    all_dat_files = functools.reduce(it.chain,
                    (glob.iglob(op.join(files_dir, '*.dat')) for
                    files_dir in all_compilers_dirs))

    all_dat_files_sorted = sorted(all_dat_files,
                                  key=lambda k: FIELDS_SEP.join(op.basename(k).split(FIELDS_SEP)[0:1]))

    dat_files_per_benchmark = it.groupby(all_dat_files_sorted,
                                         lambda k: FIELDS_SEP.join(op.basename(k).split(FIELDS_SEP)[0:1]))

    for benchmark_name, bench_files in dat_files_per_benchmark:
        with open(op.join(ROOT_BUILD_DIR, benchmark_name + '.dat'), "wt",
            encoding='utf-8') as out:
            out.write("Compiler moderncpp old-style\n")
            sorted_bench_files = sorted(bench_files,
                                        key=lambda k: k.split(FIELDS_SEP)[-1].replace('.dat', ''))
            for compiler, fnames in it.groupby(sorted_bench_files,
                                               lambda k: k.split(FIELDS_SEP)[-1].replace('.dat', '')):
                out.write(compiler + ' ')
                for fname in fnames:
                    with open(fname, "rt",
                              encoding='utf-8') as bfile:
                        out.write(bfile.read().strip() + ' ')
                out.write('\n')
    
    
def generate_plot(benchmark_name):
    benchmark_file = op.join(ROOT_BUILD_DIR, benchmark_name + '.dat')
    output_plot = op.join(ROOT_BUILD_DIR, benchmark_name + '.png')
    benchmark_title = \
        ' '.join(benchmark_name.replace('_', ' ').replace('-', ' ').split(' ')[1:]).capitalize()
    
    plot_command = \
    '''
    gnuplot -e "output_plot='{output_plot}';filename='{benchmark_file}';benchmark_title='{benchmark_title}'" \\
    {plot_file}
    '''.format(benchmark_file=benchmark_file,
               output_plot=output_plot,
               plot_file=PLOT_FILE_TEMPLATE,
               benchmark_title=benchmark_title)
    print(plot_command)
    sp.call(plot_command, shell=True)


def generate_plots(root_dir):
    for benchmark_name in os.listdir(root_dir):
        if benchmark_name[0].isdigit():
            generate_plot(benchmark_name)
            

def correct_benchmark_result_org_paths(filename_in, filename_out):
    file_lines = []
    with open(filename_in, "r") as f:
        #TODO: Replace org links with relative paths
        pass
                
    
def copy_plots(plots_source_dir, plots_dest_dir):
    for f in os.listdir(plots_source_dir):
        if f[0].isdigit() and \
           f.endswith('.png'):
            shutil.copyfile(op.join(plots_source_dir, f),
                            op.join(plots_dest_dir, f))
            

#TODO: A decent command line
if __name__ == '__main__':
    if len(sys.argv) != 1:
        COMPILERS = sys.argv[1:]
        
    create_directories_for_compilers(COMPILERS)
    run_benchmarks_for_compilers(COMPILERS)

    generate_benchmark_files(COMPILERS)
    generate_plots(BENCHMARKS_DIR)
    #copy_plots('build-all', PLOTS_DIR)
        
