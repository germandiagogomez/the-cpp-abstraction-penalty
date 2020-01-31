#!/usr/bin/env python3
'''This script is assumed to run from the project root'''

import subprocess as sp
import functools
import itertools as it
import os.path as op
import os
import shutil
import glob
import sys
import collections as col
import json
from typing import Dict
from typing import List
from deepmerge import always_merger

BUILD_DIR_BASE = 'build-all'
NATIVE_FILES = ('native-files/msvc2019.txt', 'native-files/msvc2019-2.txt')
build_dirs = [f'{BUILD_DIR_BASE}/' + op.splitext(op.basename(native_file_name))[0] for native_file_name in NATIVE_FILES]
config_names = [op.splitext(op.basename(native_file_name))[0] for native_file_name in NATIVE_FILES]
OUTPUT_DATA_DIR= op.join(BUILD_DIR_BASE, 'bench-results')

def run_command(command, message, verbose=False, raise_error=True):
    print(f'{message}...', end='', flush=True)
    result = sp.run(command.split(), capture_output=not verbose)
    if result.returncode != 0:
        print('FAILED')
        if raise_error:
            raise RuntimeError(f'Error: {result.returncode}')
        else:
            return result.returncode
    else:
        print('OK')


def configure_meson(native_file_name, build_dir, *, verbose, **kwargs):
    return run_command(f'meson --native-file {native_file_name} ' +
     f'{build_dir}',
     f'Configuring build dir for {native_file_name}', **kwargs)


def run_benchmarks_for(build_dir, **kwargs):
    return run_command(f'ninja -C {build_dir} benchmark', f'Running benchmarks for {build_dir}',
                        **kwargs)

def rec_defaultdict():
    return col.defaultdict(rec_defaultdict)
    
def gather_bench_results_per_benchmark(build_dir, config_name, **kwargs):
    benchmark_file = op.join(build_dir, 'meson-logs/benchmarklog.json')
    def sort_by_benchmark(bench):
        return bench['name'].split('!')[2]
    benchmarks_dict = rec_defaultdict()
    with open(benchmark_file) as f:
        all_benchmarks = sorted((json.loads(obj) for obj in f), key=sort_by_benchmark)
        for k, g in it.groupby(all_benchmarks, sort_by_benchmark):
            for group_elem in g:
                style, bench_name = group_elem['name'].split('!')[1:3]
                benchmarks_dict[bench_name][config_name][style] = int(group_elem['stdout'].strip())    
    return benchmarks_dict


def print_bench_results(bench_results):
    for benchmark, config in bench_results.items():
        print(f'Benchmark: {benchmark}')
        for config, results in config.items():
            print(f'\tConfig: {config}. Results: {results}')


def write_output_data_file_for_plotting(bench_name, all_benchmarks, config_names=config_names, outdir=OUTPUT_DATA_DIR):
    os.makedirs(outdir, exist_ok=True)
    benchmark_name_results = all_benchmarks[bench_name]
    with open(op.join(outdir, bench_name + '.txt'), 'w') as out:
        out.write(' '.join([bench_name, 'old_style', 'modern_style']) + '\n')
        for config_name in config_names:           
            out.write(' '.join([config_name, str(benchmark_name_results[config_name]['old_style']),
                    str(benchmark_name_results[config_name]['modern_style'])]) + '\n')

#Configure and run all benchmarks
for i, native_file in enumerate(NATIVE_FILES):
    configure_meson(native_file, build_dirs[i], verbose=True, raise_error=False)
    run_benchmarks_for(build_dirs[i], verbose=True)    

bench_results = rec_defaultdict()
for i, build_dir in enumerate(build_dirs):
    bench_results = always_merger.merge(bench_results, gather_bench_results_per_benchmark(build_dir, config_names[i]))
write_output_data_file_for_plotting('trivial-type-copy', bench_results)