cmake_minimum_required(VERSION 3.0.0 FATAL_ERROR)

#Inserted comment to test github hook
project(the-cpp-abstraction-penalty)
set (CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake/")

include(SubdirList)

if (NOT TCPPAP_CXX_COMPILER_ID)
  set(TCPPAP_CXX_COMPILER_ID "${CMAKE_CXX_COMPILER_ID}")
endif()

set(BENCHMARKS_DIR benchmarks)
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR})
set(CMAKE_BUILD_TYPE Release)
set(TCPPAP_BENCHMARKS_DIR ${PROJECT_SOURCE_DIR}/${BENCHMARKS_DIR})

set(TCPPAP_MODULES_DIR
  ${PROJECT_SOURCE_DIR}/submodules/)

subdirlist(BENCHMARKS_NAMES ${PROJECT_SOURCE_DIR}/${BENCHMARKS_DIR} [0-9]+.*)

find_package(PythonInterp REQUIRED)
find_package(Gnuplot REQUIRED)

add_custom_target(benchmarks)
add_custom_target(assembly_files)

foreach (BENCHMARK ${BENCHMARKS_NAMES})
  add_subdirectory(${BENCHMARKS_DIR}/${BENCHMARK})
endforeach(BENCHMARK)

  
if (UNIX)
  find_program(CAT NAMES cat)
elseif (WIN32)
  find_program(CAT NAMES type)
endif()

get_filename_component(COMPILER_NAME ${CMAKE_CXX_COMPILER} NAME)

if (CAT)
  set (BENCH_RESULTS)
  foreach (BENCHMARK ${BENCHMARKS_NAMES})
    list (APPEND BENCH_RESULTS ${PROJECT_BINARY_DIR}/benchmarks/${BENCHMARK}/bench-result.org)
  endforeach()

  add_custom_target(update_readme_org_results
    COMMAND ${CAT} ${PROJECT_SOURCE_DIR}/README.org.in ${BENCH_RESULTS} > ${CMAKE_SOURCE_DIR}/README.org.new)
else()
  message(FATAL_ERROR "cat or type program not found.")
endif()

