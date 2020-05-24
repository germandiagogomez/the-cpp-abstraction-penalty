benchmark_title = 'Sieve'
benchmark_name = '01-sieve'
old_cpp_style_sources = 'raw_sieve.cpp'
modern_cpp_style_sources = 'ranges_sieve.cpp'

inc = []
inc = include_directories(meson.source_root() / 'submodules' / 'range-v3' / 'include',
                          '..')
program_args = '5'

old_exe = executable('old_style-' + benchmark_title, old_cpp_style_sources,
                        include_directories: inc)
modern_exe = executable('modern_cpp-' + benchmark_title, modern_cpp_style_sources,
                        include_directories: inc)

  
