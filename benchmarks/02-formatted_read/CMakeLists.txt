if (UNIX)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_COMPILER_FLAGS} -std=c++14")
endif()

set(TCPPAP_BENCHMARK_NAME 02-formatted_read)
set(TCPPAP_OLD_STYLE_SOURCES sscanf_formatted_read.cpp)
set(TCPPAP_MODERNCPP_STYLE_SOURCES stringstream_formatted_read.cpp)
set(TCPPAP_INCLUDES ${TCPPAP_BENCHMARKS_DIR}/)

set(TCPPAP_PROGRAM_ARGS 5 100000)

include(MakeBenchMark)
