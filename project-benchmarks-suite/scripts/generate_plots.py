#!/usr/bin/env python3
'''This script is assumed to run from the project root'''
import subprocess as sp
import os.path as op
import os
import sys
import json
from pathlib import Path
from util import *
from itertools import groupby
from collections import defaultdict

os.chdir(op.join(os.environ['MESON_SOURCE_ROOT'], '..'))

GNUPLOT = sys.argv[1]
CONFIG_NAMES = [op.splitext(op.basename(native_file_name))[0]  for native_file_name in sys.argv[3:]]
BUILD_DIRS = [get_build_dir_for_config(config_name) for config_name in CONFIG_NAMES]
NATIVE_FILES = [op.join(NATIVE_FILES_DIR, config + '.txt') for config in CONFIG_NAMES]
GITHUB_URL = sys.argv[2]
PLOTS_DIR = op.join(BUILD_DIR_BASE, '.benchmarks_results', '!'.join(CONFIG_NAMES), 'plots')
print(PLOTS_DIR)
RESULTS_ORG_DIR = op.join(BUILD_DIR_BASE, '.benchmarks_results', '!'.join(CONFIG_NAMES))
MESONINTROSPECT = os.environ['MESONINTROSPECT']
DIR_TO_INTROSPECT_BASE = Path(os.environ['MESON_SOURCE_ROOT']).parent / 'build-all'


def get_targets_sources(dir_to_introspect):
    introspect_cmd = MESONINTROSPECT + f' --targets -i {dir_to_introspect}'
    process_result = sp.run(introspect_cmd.split(' '), capture_output=True)
    if process_result.returncode != 0:
        raise RuntimeError(f'Error invoking {introspect_cmd}')
    introspection_array = json.loads(process_result.stdout)
    objects_to_analyze = list(obj for obj in introspection_array if obj['name'].startswith(('old_style', 'modern_style')) and obj['type'] == 'executable')

    target_to_sources = {obj['name'] : obj['target_sources'][0]['sources'] for obj in objects_to_analyze}

    def benchmark_key(target_to_source):
        return target_to_source[0].split('!')[1]

    def defaultdictvalue():
        return [None] * 2

    # https://github.com/germandiagogomez/the-cpp-abstraction-penalty/tree/master/benchmarks
    benchmarks_to_sources = defaultdict(defaultdictvalue) # Dict[BenchmarkName, [old, modern]
    for k, g in groupby(target_to_sources.items(), benchmark_key):
        for item_key, val in g:
            path_parts = Path(val[0]).parts
            path_from_project_root = Path(*Path(val[0]).parts[len(path_parts) - 3:])
            benchmarks_to_sources[k][0 if item_key.startswith('old') else 1] = str(path_from_project_root)
    return benchmarks_to_sources
    #print(target_to_sources)

    
def generate_plot(benchmark_name, **kwargs):
    os.makedirs(PLOTS_DIR, exist_ok=True)

    benchmark_title = benchmark_name.replace('-', ' ').replace('_', ' ').capitalize()
    filename = op.join(BUILD_DIR_BASE, 'bench-results', benchmark_name) + '.txt'
    png_file = op.join(PLOTS_DIR, benchmark_name) + '.png'
    bench_plotter = op.join(MESON_SOURCE_ROOT, 'scripts', 'bench_plotter.plt')
    command = [f'{GNUPLOT}', '-e', f"filename='{filename}';output_plot='{png_file}';benchmark_title='{benchmark_title}'", bench_plotter]
    result = run_command(command, **kwargs)

# - Sieve
#    - [[benchmarks/01-sieve/raw_sieve.cpp]] -> [[plots/assembly/assembly-clang++/raw_sieve.cpp.s]]
#    - [[benchmarks/01-sieve/ranges_sieve.cpp]] -> [[plots/assembly/assembly-clang++/ranges_sieve.cpp.s]]


# #+CAPTION: Sieve benchmark result.
# #+NAME: fig:01-sieve-bench


# [[plots/01-sieve.png]]

def generate_org_benchmark_result(benchmark_name, benchmarks_sources):
    benchmark_title = benchmark_name.replace('-', ' ').replace('_', ' ').capitalize()
    config_folder = '!'.join(CONFIG_NAMES)
    final_plots_dir = 'plots'
    benchmark_link = final_plots_dir + '/' + benchmark_name + '.png'
    org_link = generate_org_link(benchmark_link)

    old_source_link = generate_org_link(GITHUB_URL + benchmarks_sources[benchmark_name][0], str(Path(benchmarks_sources[benchmark_name][0]).name))
    modern_source_link = generate_org_link(GITHUB_URL + benchmarks_sources[benchmark_name][1], str(Path(benchmarks_sources[benchmark_name][1]).name))
    
    return ''.join([' - ' + benchmark_title, '\n',
                    f'   - Old style source: {old_source_link}', '\n',
                    f'   - Modern style source: {modern_source_link}', '\n',
                    f'{org_link}'
                    ])


if not checkpoint_exists('.plots_generated'):
    try:
        bench_results = []
        bench_sources = get_targets_sources(DIR_TO_INTROSPECT_BASE / CONFIG_NAMES[0])
        for benchmark_name in get_benchmarks_names(op.join(BUILD_DIR_BASE, CONFIG_NAMES[0])):
            generate_plot(benchmark_name) 
            bench_results.append(generate_org_benchmark_result(benchmark_name, bench_sources))

        config_folder = '!'.join(CONFIG_NAMES)
        os.makedirs(op.join(BUILD_DIR_BASE, '.benchmarks_results', config_folder), exist_ok=True)
        
        with open(op.join(BUILD_DIR_BASE, '.benchmarks_results', config_folder, 'results.org'), 'w') as out_file:
            out_file.write('\n\n'.join(bench_results))
            save_checkpoint('.plots_generated')
    except Exception as e:
        print(f'Exception: {e}')
        raise
    print(f'Done generating plots for benchmark suite. You can access them in {PLOTS_DIR}')
