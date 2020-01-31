project('cpp-abstraction-penalty-suite')

run_benchmarks_suite_prog = find_program('scripts/run_benchmarks_suite.py')
generate_plots = find_program('scripts/generate_plots.py')

gnuplot_prog = find_program(['gnuplot', 'C:/Program Files/gnuplot/bin/gnuplot'],
            required: false)

run_benchmarks_suite = run_target('run_benchmarks_suite',
            command: [run_benchmarks_suite_prog])

if gnuplot_prog.found()
    run_target('generate_plots', 
            command: [generate_plots, gnuplot_prog.path()])
else
    message('gnuplot not found. Target generate_plots will not be added.')
endif