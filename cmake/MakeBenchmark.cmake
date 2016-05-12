cmake_minimum_required(VERSION 3.0.0 FATAL_ERROR)

project(${TCPPAP_BENCHMARK_NAME})

if (NOT TCPPAP_CXX_COMPILER_ID)
  set(TCPPAP_CXX_COMPILER_ID "${CMAKE_CXX_COMPILER_ID}")
endif()
  
set(PLOTS_DIR ${CMAKE_SOURCE_DIR}/plots)
set(PLOTS_BASE_DIR plots)


if (UNIX)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_COMPILER_FLAGS} -std=c++14")
endif()


set(OLD_STYLE_EXE ${PROJECT_NAME}--old-style--${TCPPAP_CXX_COMPILER_ID})
set(MODERNCPP_STYLE_EXE ${PROJECT_NAME}--moderncpp--${TCPPAP_CXX_COMPILER_ID})

add_executable(${MODERNCPP_STYLE_EXE} ${TCPPAP_MODERNCPP_STYLE_SOURCES})

target_include_directories(
  ${MODERNCPP_STYLE_EXE}
  PRIVATE
  ${TCPPAP_INCLUDES}
  ${TCPPAP_MODERNCPP_STYLE_INCLUDES})

add_executable(${OLD_STYLE_EXE} ${TCPPAP_OLD_STYLE_SOURCES})

target_include_directories(
  ${OLD_STYLE_EXE}
  PRIVATE
  ${TCPPAP_INCLUDES}
  ${TCPPAP_OLD_STYLE_INCLUDES})

add_custom_target(execute_${OLD_STYLE_EXE} ALL
  ${MODERNCPP_STYLE_EXE} ${TCPPAP_PROGRAM_ARGS} >> ${CMAKE_BINARY_DIR}/${MODERNCPP_STYLE_EXE}.dat
  DEPENDS ${MODERNCPP_STYLE_EXE} 
  COMMENT "Executing ${MODERNCPP_STYLE_EXE} ${TCPPAP_PROGRAM_ARGS}")

add_custom_target(execute_${MODERNCPP_STYLE_EXE} ALL
  ${OLD_STYLE_EXE} ${TCPPAP_PROGRAM_ARGS} >> ${CMAKE_BINARY_DIR}/${OLD_STYLE_EXE}.dat
  DEPENDS ${OLD_STYLE_EXE}
  COMMENT "Executing ${OLD_STYLE_EXE} ${TCPPAP_PROGRAM_ARGS}")

configure_file(${CMAKE_CURRENT_LIST_DIR}/../scripts/bench-result.org.in bench-result.org @ONLY)
  

