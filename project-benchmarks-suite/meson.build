project('cpp-abstraction-penalty-suite')

run_benchmarks_suite_prog = find_program('scripts/run_benchmarks_suite.py')
generate_plots = find_program('scripts/generate_plots.py')

gnu_plot_dirs = build_machine.system() == 'windows' ? ['C:/Program Files/gnuplot/bin/'] : ['/usr/bin']
gnuplot_prog = find_program('gnuplot', dirs: gnu_plot_dirs,
                            required: false)


config_names = get_option('benchmarks-configurations')

if host_machine.system() == 'linux'
  ls_cpu_prog = find_program('lscpu', required: true)
  ls_mem_prog = find_program('lsmem', required: true)
elif host_machine.system() == 'windows'
  #TODO
  ls_cpu_prog = find_program('lscpu', required: true)
  ls_mem_prog = find_program('lsmem', required: true)
else
  error('Unrecognized platform')
endif


run_target('run_benchmarks_suite',
           command: [run_benchmarks_suite_prog, ls_cpu_prog.path(), ls_mem_prog.path(), config_names])


if gnuplot_prog.found()
  git_prog = find_program('git')

  git_current_branch = run_command(git_prog, 'branch', '--show-current', check: true).stdout().strip()
  github_url = 'https://github.com/germandiagogomez/the-cpp-abstraction-penalty/' + 'tree/' + git_current_branch + '/'

  run_target('generate_plots',
             command: [generate_plots, gnuplot_prog.path(), github_url, config_names])
  
  generate_org_table_prog = find_program('scripts/benchmars_table_generator.py')
  run_target('generate_readme_org', command: [generate_org_table_prog, config_names])

  # Copy benchmarks results from build directory
  copy_bench_results_to_this_project_prog = find_program('scripts/copy_benchmarks_results_to_this_project.py')
  run_target('copy_benchmarks_results',
             command: [copy_bench_results_to_this_project_prog, config_names])

  # Installation
  install_data('README.org',
               install_dir : meson.source_root() / '..')
  install_subdir('.benchmarks_results', install_dir: meson.source_root() / '..')
else
  warning('gnuplot not found. Target generate_plots will not be added.')
endif
