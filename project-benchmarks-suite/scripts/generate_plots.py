#!/usr/bin/env python3
'''This script is assumed to run from the project root'''
import subprocess as sp
import os.path as op
import os
import sys
import json
from pathlib import Path
from util import *

os.chdir(op.join(os.environ['MESON_SOURCE_ROOT'], '..'))
GNUPLOT = sys.argv[1]
GITHUB_URL = sys.argv[2]
PLOTS_DIR = op.join(BUILD_DIR_BASE, '.benchmarks_results', '!'.join(CONFIG_NAMES), 'plots')
RESULTS_ORG_DIR = op.join(BUILD_DIR_BASE, '.benchmarks_results', '!'.join(CONFIG_NAMES))
NATIVE_FILES = ('native-files/gcc.txt', 'native-files/clang.txt')
CONFIG_NAMES = [op.splitext(op.basename(native_file_name))[0] for native_file_name in NATIVE_FILES]
FINAL_PLOTS_DIR = op.join(GITHUB_URL, FINAL_OUTPUT_DIR_BASE, 'plots')


def generate_plot(benchmark_name, **kwargs):
    os.makedirs(PLOTS_DIR, exist_ok=True)

    benchmark_title = benchmark_name.replace('-', ' ').replace('_', ' ').capitalize()
    filename = op.join(BUILD_DIR_BASE, 'bench-results', benchmark_name) + '.txt'
    png_file = op.join(PLOTS_DIR, benchmark_name) + '.png'
    bench_plotter = op.join(MESON_SOURCE_ROOT, 'scripts', 'bench_plotter.plt')
    command = [f'{GNUPLOT}', '-e', f"filename='{filename}';output_plot='{png_file}';benchmark_title='{benchmark_title}'", bench_plotter]
    print(command)
    result = run_command(command, **kwargs)

# - Sieve
#    - [[benchmarks/01-sieve/raw_sieve.cpp]] -> [[plots/assembly/assembly-clang++/raw_sieve.cpp.s]]
#    - [[benchmarks/01-sieve/ranges_sieve.cpp]] -> [[plots/assembly/assembly-clang++/ranges_sieve.cpp.s]]


# #+CAPTION: Sieve benchmark result.
# #+NAME: fig:01-sieve-bench


# [[plots/01-sieve.png]]

def generate_org_benchmark_result(benchmark_name):
    benchmark_title = benchmark_name.replace('-', ' ').replace('_', ' ').capitalize()
    config_folder = '!'.join(CONFIG_NAMES)
    org_link = generate_org_link(op.join(f'{FINAL_PLOTS_DIR}', f'{config_folder}', benchmark_name + '.png'))
    return ''.join([' - ' + benchmark_title, '\n',
                    f'{org_link}'
                    ])


if not checkpoint_exists('.plots_generated'):
    try:
        bench_results = []
        for benchmark_name in get_benchmarks_names(op.join(BUILD_DIR_BASE, CONFIG_NAMES[0])):
            generate_plot(benchmark_name) 
            bench_results.append(generate_org_benchmark_result(benchmark_name))

        config_folder = '!'.join(CONFIG_NAMES)
        os.makedirs(op.join(BUILD_DIR_BASE, '.benchmarks_results', config_folder), exist_ok=True)
        
        with open(op.join(BUILD_DIR_BASE, '.benchmarks_results', config_folder, 'results.org'), 'w') as out_file:
            out_file.write('\n\n'.join(bench_results))
            save_checkpoint('.plots_generated')
    except Exception as e:
        print(f'Exception: {e}')
        raise
    print(f'Done generating plots for benchmark suite. You can access them in {PLOTS_DIR}')
