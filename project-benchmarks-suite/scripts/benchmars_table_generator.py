#!/usr/bin/env python3

from util import *
from typing import List
import itertools as it
import os.path as op
import shutil 

BENCHMARKS_ALREADY_INSTALLED_FILE = op.join(BUILD_OUTPUT_DIR_BASE, '.benchmarks_already_installed')

class BenchmarksTableGenerator:
    def __init__(self, config_names: List[str]):
        self.config_names = tuple(config_names)
        self._can_generate_new_table = True
        if BenchmarksTableGenerator._benchmarks_results_exist_for_configs_combination(config_names):
            self._can_generate_new_table = False
        self._existing_config_names = BenchmarksTableGenerator._get_existing_config_names()

    @staticmethod
    def _get_existing_config_names():
        try:
            shutil.copy(op.join(FINAL_OUTPUT_DIR_BASE, '.benchmarks_already_installed'),
                        BENCHMARKS_ALREADY_INSTALLED_FILE)
            with open(BENCHMARKS_ALREADY_INSTALLED_FILE, 'r') as f:
                return [tuple(line.strip().split('!')) for line in f]
        except FileNotFoundError:
            return []

    @staticmethod
    def _benchmarks_results_exist_for_configs_combination(config_names):
        try:
            with open(BENCHMARKS_ALREADY_INSTALLED_FILE, 'r') as f:
                for line in f:
                    if line.strip() == '!'.join(config_names):
                        return True
        except FileNotFoundError:
            return False

    @staticmethod
    def _generate_org_link(link, display):
        return f'[[{link}][{display}]]'

    @staticmethod 
    def _generate_configuration_host_details_entry(config_name):
        config_file_detail_link = op.join(FINAL_OUTPUT_DIR_BASE, 'config_details', config_name + '.txt')
        display = config_name
        return BenchmarksTableGenerator._generate_org_link(config_file_detail_link, display)


    @staticmethod
    def _generate_benchmarks_results_entry(config_names):
        return BenchmarksTableGenerator._generate_org_link(op.join(FINAL_OUTPUT_DIR_BASE, '!'.join(config_names), 'results.org'), 'Results')


    @staticmethod
    def _generate_configuration_file_entry(config_name):
        config_file_link = get_native_file_for_config(config_name) 
        user_display = config_name
        return BenchmarksTableGenerator._generate_org_link(config_file_link, user_display)

    @staticmethod
    def _generate_org_entry(config_names):
        configuration_files_list = [BenchmarksTableGenerator._generate_configuration_file_entry(config_name) for config_name in config_names]
        configuration_hosts_details_list = [BenchmarksTableGenerator._generate_configuration_host_details_entry(config_name) for config_name in config_names]
        bench_results = BenchmarksTableGenerator._generate_benchmarks_results_entry(config_names)

        configuration_files = ' '.join(configuration_files_list)
        configuration_hosts_details = ' '.join(configuration_hosts_details_list)
        return '|' + '|'.join([configuration_files, configuration_hosts_details]) + '|' + bench_results + '|'

    
    def update_org_table(self):
        table_rows = []
        if self._can_generate_new_table:
            config_pairs = sorted(it.chain(self._existing_config_names, [self.config_names]), key=lambda e: e[0] + '!' + e[1])
            for config_pair in config_pairs:
                table_rows.append(BenchmarksTableGenerator._generate_org_entry(config_pair))
            
            with open(BENCHMARKS_ALREADY_INSTALLED_FILE, 'w') as already_gen_f:
                for config_pair in config_pairs:
                    already_gen_f.write('!'.join(config_pair))
            return '\n'.join(table_rows)
        else:
            for config_pair in sorted(self._existing_config_names, key=lambda e: e[0] + '!' + e[1]):
                table_rows.append(BenchmarksTableGenerator._generate_org_entry(config_pair))
            return '\n'.join(table_rows)

if __name__ == '__main__':
    os.chdir(op.join(os.environ['MESON_SOURCE_ROOT'], '..'))
    table_gen = BenchmarksTableGenerator(CONFIG_NAMES)
    new_table = table_gen.update_org_table()
    with open(op.join(MESON_SOURCE_ROOT, 'README.org.in'), 'r') as in_file:
        with open(op.join(MESON_SOURCE_ROOT, 'README.org'), 'w') as out_file:
            out_file.write(''.join(in_file.readlines()))
            out_file.write(new_table)
            print(new_table)
