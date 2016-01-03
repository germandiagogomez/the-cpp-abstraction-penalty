cmake_minimum_required(VERSION 3.0.0 FATAL_ERROR)

project(Sieve)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_COMPILER_FLAGS} -std=c++14")

set(CMAKE_BUILD_TYPE Release)

set(OLD_STYLE_EXE raw_sieve-${CMAKE_CXX_COMPILER_ID})
set(MODERNCPP_STYLE_EXE ranges_sieve-${CMAKE_CXX_COMPILER_ID})


add_executable(${MODERNCPP_STYLE_EXE} ranges_sieve.cpp)
target_include_directories(
  ${MODERNCPP_STYLE_EXE}
  PRIVATE ${PROJECT_SOURCE_DIR}/../../submodules/range-v3/include ${PROJECT_SOURCE_DIR}/..)

add_executable(${OLD_STYLE_EXE} raw_sieve.cpp)

target_include_directories(
  ${OLD_STYLE_EXE}
  PRIVATE
  ${PROJECT_SOURCE_DIR}/..)


add_custom_command(TARGET ${MODERNCPP_STYLE_EXE}
  POST_BUILD
  COMMAND cmake -E remove -f ${MODERNCPP_STYLE_EXE}.dat
  COMMAND ${MODERNCPP_STYLE_EXE} 5 >> ${CMAKE_BINARY_DIR}/${MODERNCPP_STYLE_EXE}.dat
  COMMENT "Executing ${MODERNCPP_STYLE_EXE} 5"
  VERBATIM)

add_custom_command(TARGET ${OLD_STYLE_EXE}
  POST_BUILD
    COMMAND cmake -E remove -f ${OLD_STYLE_EXE}.dat
    COMMAND ${OLD_STYLE_EXE} 5 >> ${CMAKE_BINARY_DIR}/${OLD_STYLE_EXE}.dat
    COMMENT "Executing ${OLD_STYLE_EXE} 5")
		 
  
