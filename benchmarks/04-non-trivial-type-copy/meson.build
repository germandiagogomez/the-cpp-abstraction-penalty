# Data to fill in for your benchmark
benchmark_title = 'Non-Trivial memory copy'
benchmark_name = 'non-trivial-type-copy'
old_cpp_style_sources = 'use_for_loop.cpp'
modern_cpp_style_sources = 'use_std_copy.cpp'
old_exe_name = 'old_style!' + benchmark_name
modern_exe_name = 'modern_style!' + benchmark_name

inc = include_directories('..')


# Executables for benchmarks
old_exe = executable(old_exe_name, old_cpp_style_sources,
                        include_directories: inc)

modern_exe = executable(modern_exe_name, modern_cpp_style_sources,
                        include_directories: inc)


# Number of executions and size of benchmark
times_exe = '5' 
bench_size = '10000000'


# Benchmark targets
benchmark('bench!' + old_exe_name, old_exe, args: [times_exe, bench_size])
benchmark('bench!' + modern_exe_name, modern_exe, args: [times_exe, bench_size])
