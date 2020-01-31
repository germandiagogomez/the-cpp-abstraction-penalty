#!/usr/bin/env python3

import subprocess as sp
import os

for k, v in os.environ.items():
    if k.startswith('MESON'):
        print(k, v)
