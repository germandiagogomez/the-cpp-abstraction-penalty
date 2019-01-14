if (UNIX)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_COMPILER_FLAGS} -std=c++14")
endif()

set(TCPPAP_BENCHMARK_TITLE "memcmp vs std::equal")
set(TCPPAP_BENCHMARK_NAME 06-memcmp-vs-equal)
set(TCPPAP_OLD_STYLE_SOURCES use_memcmp.cpp)
set(TCPPAP_MODERNCPP_STYLE_SOURCES use_std_equal.cpp)
set(TCPPAP_INCLUDES ${TCPPAP_BENCHMARKS_DIR}/)

set(TCPPAP_PROGRAM_ARGS 5 100000)

include(MakeBenchmark)
