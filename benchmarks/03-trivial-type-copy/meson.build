benchmark_title = 'FormattedRead'
benchmark_name = '03-trivial-type-copy'
old_cpp_style_sources = 'use_memcpy.cpp'
modern_cpp_style_sources = 'use_std_copy.cpp'

inc = include_directories('..')
program_args = '5'

old_exe_name = 'old_style-' + benchmark_title
old_exe = executable(old_exe_name, old_cpp_style_sources,
                        include_directories: inc)
modern_exe = executable('modern_cpp-' + benchmark_title, modern_cpp_style_sources,
                        include_directories: inc)

run_target('execute-' + old_exe_name,
    command : [old_exe, program_args],
    depends : old_exe)
# add_custom_target(execute_${OLD_STYLE_EXE} 
#   ${OLD_STYLE_EXE} ${TCPPAP_PROGRAM_ARGS} >> ${CMAKE_BINARY_DIR}/${OLD_STYLE_EXE}.dat
#   DEPENDS ${OLD_STYLE_EXE} 
#   COMMENT "Executing ${OLD_STYLE_EXE} ${TCPPAP_PROGRAM_ARGS}")

# add_custom_target(execute_${MODERNCPP_STYLE_EXE} 
#   ${MODERNCPP_STYLE_EXE} ${TCPPAP_PROGRAM_ARGS} >> ${CMAKE_BINARY_DIR}/${MODERNCPP_STYLE_EXE}.dat
#   DEPENDS ${MODERNCPP_STYLE_EXE}
#   COMMENT "Executing ${MODERNCPP_STYLE_EXE} ${TCPPAP_PROGRAM_ARGS}")


# add_dependencies(benchmarks execute_${OLD_STYLE_EXE} execute_${MODERNCPP_STYLE_EXE})

# set(_TCPPAP_OLD_STYLE_SOURCES_GITHUB_PATH
#   benchmarks/${TCPPAP_BENCHMARK_NAME}/${TCPPAP_OLD_STYLE_SOURCES})

# set(_TCPPAP_MODERNCPP_STYLE_SOURCES_GITHUB_PATH
#   benchmarks/${TCPPAP_BENCHMARK_NAME}/${TCPPAP_MODERNCPP_STYLE_SOURCES})


# set(_TCPPAP_OLD_STYLE_ASSEMBLY_GITHUB_PATH
#   plots/assembly/assembly-${TCPPAP_CXX_COMPILER_ID}/${TCPPAP_OLD_STYLE_SOURCES}.s)

# set(_TCPPAP_MODERNCPP_STYLE_ASSEMBLY_GITHUB_PATH
#   plots/assembly/assembly-${TCPPAP_CXX_COMPILER_ID}/${TCPPAP_MODERNCPP_STYLE_SOURCES}.s)

# add_library(_${OLD_STYLE_EXE}_assembly OBJECT ${TCPPAP_OLD_STYLE_SOURCES})
# set_target_properties(_${OLD_STYLE_EXE}_assembly PROPERTIES COMPILE_FLAGS "-S")
# target_include_directories(
#   _${OLD_STYLE_EXE}_assembly
#   PRIVATE
#   ${TCPPAP_INCLUDES}
#   ${TCPPAP_OLD_STYLE_INCLUDES})


# add_library(_${MODERNCPP_STYLE_EXE}_assembly OBJECT ${TCPPAP_MODERNCPP_STYLE_SOURCES})
# set_target_properties(_${MODERNCPP_STYLE_EXE}_assembly PROPERTIES COMPILE_FLAGS "-S")
# target_include_directories(
#   _${MODERNCPP_STYLE_EXE}_assembly
#   PRIVATE
#   ${TCPPAP_INCLUDES}
#   ${TCPPAP_MODERNCPP_STYLE_INCLUDES})


# add_custom_target(${OLD_STYLE_EXE}_assembly
#   COMMAND cmake --build ${CMAKE_BINARY_DIR} --target _${OLD_STYLE_EXE}_assembly
#   COMMAND ${CMAKE_COMMAND} -E copy 
#   ${CMAKE_CURRENT_BINARY_DIR}/CMakeFiles/_${OLD_STYLE_EXE}_assembly.dir/${TCPPAP_OLD_STYLE_SOURCES}.o
#   ${CMAKE_BINARY_DIR}/${TCPPAP_OLD_STYLE_SOURCES}.s)


# add_custom_target(${MODERNCPP_STYLE_EXE}_assembly
#   COMMAND cmake --build ${CMAKE_BINARY_DIR} --target _${MODERNCPP_STYLE_EXE}_assembly
#   COMMAND ${CMAKE_COMMAND} -E copy 
#   ${CMAKE_CURRENT_BINARY_DIR}/CMakeFiles/_${MODERNCPP_STYLE_EXE}_assembly.dir/${TCPPAP_MODERNCPP_STYLE_SOURCES}.o
#   ${CMAKE_BINARY_DIR}/${TCPPAP_MODERNCPP_STYLE_SOURCES}.s)

# add_dependencies(assembly_files ${OLD_STYLE_EXE}_assembly ${MODERNCPP_STYLE_EXE}_assembly)
# configure_file(${CMAKE_CURRENT_LIST_DIR}/../scripts/bench-result.org.in bench-result.org @ONLY)
  
