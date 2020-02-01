#!/usr/bin/env python3
'''This script is assumed to run from the project root'''
import shutil
from util import *

if __name__ == '__main__':
    os.chdir(op.join(os.environ['MESON_SOURCE_ROOT'], '..'))
    shutil.copytree(BUILD_OUTPUT_DIR_BASE, op.join(MESON_SOURCE_ROOT, '.benchmarks_results'), dirs_exist_ok=True)