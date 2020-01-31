project('the-cpp-abstraction-penalty', 'cpp',
        meson_version : '>=0.53', version : '1.0',
        default_options: ['cpp_std=c++17', 'buildtype=release'])

benchmarks_dir = 'benchmarks'
c = run_command('get_benchmarks.py', meson.source_root() / benchmarks_dir, check: true)

benchmarks = c.stdout().strip().split()
foreach bench_dir : benchmarks
    subdir(benchmarks_dir / bench_dir)
endforeach

# plots_dir = meson.source_root() / 'plots'

pymod = import('python')

# if (NOT TCPPAP_CXX_COMPILER_ID)
#   set(TCPPAP_CXX_COMPILER_ID "${CMAKE_CXX_COMPILER_ID}")
# endif()

# set(BENCHMARKS_DIR benchmarks)

# set(TCPPAP_MODULES_DIR
#   ${PROJECT_SOURCE_DIR}/submodules/)

# subdirlist(BENCHMARKS_NAMES ${PROJECT_SOURCE_DIR}/${BENCHMARKS_DIR} [0-9]+.*)

# find_package(PythonInterp REQUIRED)
# find_package(Gnuplot REQUIRED)

# add_custom_target(benchmarks)
# add_custom_target(assembly_files)

# foreach (BENCHMARK ${BENCHMARKS_NAMES})
#   add_subdirectory(${BENCHMARKS_DIR}/${BENCHMARK})
# endforeach(BENCHMARK)

  
# if (UNIX)
#   find_program(CAT NAMES cat)
# elseif (WIN32)
#   find_program(CAT NAMES type)
# endif()

# get_filename_component(COMPILER_NAME ${CMAKE_CXX_COMPILER} NAME)

# if (CAT)
#   set (BENCH_RESULTS)
#   foreach (BENCHMARK ${BENCHMARKS_NAMES})
#     list (APPEND BENCH_RESULTS ${PROJECT_BINARY_DIR}/benchmarks/${BENCHMARK}/bench-result.org)
#   endforeach()

#   add_custom_target(update_readme_org_results
#     COMMAND ${CAT} ${PROJECT_SOURCE_DIR}/README.org.in ${BENCH_RESULTS} > ${CMAKE_SOURCE_DIR}/README.org.new)
# else()
#   message(FATAL_ERROR "cat or type program not found.")
# endif()

