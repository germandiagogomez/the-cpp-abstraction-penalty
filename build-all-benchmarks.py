#!/usr/bin/env python3
import subprocess as sp
import os.path as op
import os
import sys


COMPILERS = ('clang++', 'g++')


if __name__ == '__main__':
    if len(sys.argv) == 1:
        old_working_dir = os.getcwd()
        for compiler in COMPILERS:
            build_dir = op.join('build-all', 'build-{}'.format(compiler))
            os.makedirs(build_dir)
            os.chdir(build_dir)
            sp.run(['cmake', '-DCMAKE_CXX_COMPILER={}'.format(compiler),
                   '../..'])
            sp.run(['make', '-j5'])
            os.chdir(old_working_dir)

                
