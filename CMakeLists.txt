cmake_minimum_required(VERSION 3.0.0 FATAL_ERROR)

project(the-cpp-abstraction-penalty)

set (CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake")
if (NOT TCPPAP_CXX_COMPILER_ID)
  set(TCPPAP_CXX_COMPILER_ID "${CMAKE_CXX_COMPILER_ID}")
endif()

set(BENCHMARKS_DIR benchmarks)
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR})
set(CMAKE_BUILD_TYPE Release)
set(TCPPAP_BENCHMARKS_DIR ${PROJECT_SOURCE_DIR}/${BENCHMARKS_DIR})

set(TCPPAP_MODULES_DIR
  ${PROJECT_SOURCE_DIR}/submodules/)
  
set(BENCHMARK_NAMES
  01-sieve
  02-formatted_read)



find_package(PythonInterp REQUIRED)
find_package(Gnuplot REQUIRED)


foreach (BENCHMARK ${BENCHMARK_NAMES})
  add_subdirectory(${BENCHMARKS_DIR}/${BENCHMARK})
endforeach(BENCHMARK)

