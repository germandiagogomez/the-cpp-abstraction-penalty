#!/usr/bin/env python3
import sys
import os
import os.path

BENCHMARKS_DIR = sys.argv[1]
for root, dirs, files in os.walk(BENCHMARKS_DIR, False):
    #for d1 in (d for d in dirs if d[0].isdigit()):
    for d1 in (d for d in dirs if d.startswith('02') or d.startswith('03')):
        print(d1)
