#!/usr/bin/env python3
import platform
import os.path as op

from util import BUILD_DIR_BASE


with open(op.join(BUILD_DIR_BASE, '!machine-info.txt'))