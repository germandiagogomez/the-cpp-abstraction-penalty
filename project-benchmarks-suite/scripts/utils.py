#!/usr/bin/env python3
from pathlib import Path
import os.path as op

def save_checkpoint(checkpoint_name):
    Path(op.join(BUILD_DIR_BASE, checkpoint_name)).touch()

def checkpoint_exists(checkpoint_name):
    return op.exists(op.join(BUILD_DIR_BASE, checkpoint_name))