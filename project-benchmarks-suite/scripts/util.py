#!/usr/bin/env python3
from pathlib import Path
import os.path as op
import subprocess as sp
import json
import os


MESONINTROSPECT = ['meson', 'introspect']
BUILD_DIR_BASE = 'build-all'
MESON_SOURCE_ROOT = os.environ['MESON_SOURCE_ROOT']

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
