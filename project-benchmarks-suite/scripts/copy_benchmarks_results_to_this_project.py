#!/usr/bin/env python3
'''This script is assumed to run from the project root'''
import shutil
from pathlib import Path
from util import *
import sys

CONFIG_NAMES = [op.splitext(op.basename(native_file_name))[0]  for native_file_name in sys.argv[1:]]

if __name__ == '__main__':
    os.chdir(op.join(os.environ['MESON_SOURCE_ROOT'], '..'))
    for cfg in CONFIG_NAMES:
        source_path = str(Path(os.environ['MESON_SOURCE_ROOT']) / '../build-all' / cfg / 'configuration_info.md')
        dest_path = str(Path(BUILD_OUTPUT_DIR_BASE) / 'config_details'/ cfg) + '.md'
        Path(dest_path).parent.mkdir(exist_ok=True, parents=True)
        shutil.copyfile(source_path, dest_path)

    shutil.copytree(BUILD_OUTPUT_DIR_BASE, op.join(MESON_SOURCE_ROOT, '.benchmarks_results'), dirs_exist_ok=True)
