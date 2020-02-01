project('cpp-abstraction-penalty-suite')

run_benchmarks_suite_prog = find_program('scripts/run_benchmarks_suite.py')
generate_plots = find_program('scripts/generate_plots.py')

gnuplot_prog = find_program(['gnuplot', 'C:/Program Files/gnuplot/bin/gnuplot'],
            required: false)

run_target('run_benchmarks_suite',
            command: [run_benchmarks_suite_prog])

if gnuplot_prog.found()
    run_target('generate_plots', 
            command: [generate_plots, gnuplot_prog.path()])
    generate_org_table_prog = find_program('scripts/benchmars_table_generator.py')
    run_target('generate_readme_org', command: [generate_org_table_prog])

    # Copy benchmarks results from build directory
    copy_bench_results_to_this_project_prog = find_program('scripts/copy_benchmarks_results_to_this_project.py')
    run_target('copy_benchmarks_results_to_this_project',
               command: [copy_bench_results_to_this_project_prog])

    # Installation
    install_data('README.org',
             install_dir : meson.source_root() / '..')
    install_subdir('.benchmarks_results', install_dir: meson.source_root() / '..')
else
    message('gnuplot not found. Target generate_plots will not be added.')
endif

