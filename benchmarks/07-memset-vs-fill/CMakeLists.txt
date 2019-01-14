if (UNIX)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_COMPILER_FLAGS} -std=c++14")
endif()

set(TCPPAP_BENCHMARK_TITLE "memset vs std::fill")
set(TCPPAP_BENCHMARK_NAME 07-memset-vs-fill)
set(TCPPAP_OLD_STYLE_SOURCES use_memset.cpp)
set(TCPPAP_MODERNCPP_STYLE_SOURCES use_std_fill.cpp)
set(TCPPAP_INCLUDES ${TCPPAP_BENCHMARKS_DIR}/)

set(TCPPAP_PROGRAM_ARGS 5 10000000)

include(MakeBenchmark)
