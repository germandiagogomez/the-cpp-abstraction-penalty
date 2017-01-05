if (UNIX)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_COMPILER_FLAGS} -std=c++14")
endif()

set(TCPPAP_BENCHMARK_TITLE "qsort vs stl sort")
set(TCPPAP_BENCHMARK_NAME 05-qsort-vs-stl-sort)
set(TCPPAP_OLD_STYLE_SOURCES qsort.cpp)
set(TCPPAP_MODERNCPP_STYLE_SOURCES stl_sort.cpp)
set(TCPPAP_INCLUDES ${TCPPAP_BENCHMARKS_DIR}/)

#Example benchmark parameters
set(TCPPAP_PROGRAM_ARGS 5 10000000)

include(MakeBenchmark)
