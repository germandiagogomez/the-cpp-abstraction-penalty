cmake_minimum_required(VERSION 3.0.0 FATAL_ERROR)

project(the-cpp-abstraction-penalty)

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR})

set(BENCHMARK_NAMES 01-sieve)
set(BENCHMARKS_DIR benchmarks)

find_package(PythonInterp REQUIRED)
find_package(Gnuplot REQUIRED)


foreach (BENCHMARK ${BENCHMARK_NAMES})
  add_subdirectory(${BENCHMARKS_DIR}/${BENCHMARK})
endforeach(BENCHMARK)

