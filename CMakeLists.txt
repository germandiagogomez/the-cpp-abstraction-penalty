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

# $(builddir)/benchmark.png: $(foreach comp,$(COMPILERS), $(builddir)/benchmark-$(comp))
# 	$(file > $(builddir)/all-benchmarks.dat,Compiler $(subst _,-,$(PROGRAMS_BASIC_NAMES)))
# 	$(foreach comp,$(COMPILERS),$(file >> $(builddir)/all-benchmarks.dat,$(comp) $(shell $(CAT) $(addsuffix -$(comp).dat,$(PROGRAMS_BASIC_NAMES)))))
# 	@gnuplot -e "output_plot='$(builddir)/benchmark.png';filename='$(builddir)/all-benchmarks.dat'" $(srcdir)/scripts/plot_data.plt
# 	$(info Plot $@ created)
#add_subdirectory(${BENCHMARKS_DIR}/01-sieve)
