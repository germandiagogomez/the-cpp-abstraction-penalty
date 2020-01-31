# Data to fill in for your benchmark
benchmark_title = 'memset vs std::fill'
benchmark_name = 'memset-vs-fill'
old_cpp_style_sources = 'use_memset.cpp'
modern_cpp_style_sources = 'use_std_fill.cpp'
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
bench_size = '1000'


# Benchmark targets
benchmark('bench!' + old_exe_name, old_exe, args: [times_exe, bench_size])
benchmark('bench!' + modern_exe_name, modern_exe, args: [times_exe, bench_size])
