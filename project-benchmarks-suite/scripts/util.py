#!/usr/bin/env python3
from pathlib import Path
import os.path as op
import subprocess as sp
import json
import os

def get_build_dir_for_config(config_name):
    return op.join(BUILD_DIR_BASE, config_name)

# NOTE: ALL relative routes start at the repository root, even for scripts invoked
# from project-benchmarks-suite
MESONINTROSPECT = ['meson', 'introspect']
BUILD_DIR_BASE = 'build-all'
MESON_SOURCE_ROOT = os.environ['MESON_SOURCE_ROOT']
NATIVE_FILES_DIR = 'native-files'
NATIVE_FILES = (op.join(NATIVE_FILES_DIR, 'gcc.txt'), op.join(NATIVE_FILES_DIR, 'clang.txt'))
CONFIG_NAMES = [op.splitext(op.basename(native_file_name))[0] for native_file_name in NATIVE_FILES]
BUILD_DIRS = [get_build_dir_for_config(config_name) for config_name in CONFIG_NAMES]
OUTPUT_DATA_DIR = op.join(BUILD_DIR_BASE, 'bench-results')
BUILD_OUTPUT_DIR_BASE = op.join(BUILD_DIR_BASE, '.benchmarks_results')
FINAL_OUTPUT_DIR_BASE = '.benchmarks_results'


def run_command(command, message=None, verbose=False, raise_error=True):
    if message and not verbose:
        print(f'{message}...', end='', flush=True)
    if verbose:
        print(command)
    result = sp.run(command, capture_output=not verbose)
    if result.returncode != 0:
        print('FAILED')
        if raise_error:
            raise RuntimeError(f'Error: {result.returncode}')
        else:
            return result
    else:
        if message and not verbose:
            print('OK')
    return result


def save_checkpoint(checkpoint_name):
    Path(op.join(BUILD_DIR_BASE, checkpoint_name)).touch()


def checkpoint_exists(checkpoint_name):
    return op.exists(op.join(BUILD_DIR_BASE, checkpoint_name))


def get_benchmarks_names(build_dir):
    command = MESONINTROSPECT + ['--benchmarks',  f'{build_dir}']
    result = run_command(command)
    return iter(set(sorted(t['name'].split('!')[2] for t in json.loads(result.stdout.strip()))))

def get_native_file_for_config(config_name):
    return op.join(NATIVE_FILES_DIR, config_name + '.txt')


def generate_org_link(link, display=None):
    return f'[[{link}]' + (f'[{display}]' if display is not None else '') + ']' 
