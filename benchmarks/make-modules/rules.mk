.SUFFIXES:
.DELETE_ON_ERROR:


objdir := .objs


BENCHMARK_TIMES := 5


define make-suffixed-objects
$(objdir)/%-$(1).o:%.cpp | $$(objdir)
	$$(CXX) -std=c++14 $$($$(basename $$(<F))_INCLUDES) $$(CPPFLAGS) $$(CXXFLAGS) -c $$< -o $$@
endef


define make-program
$(1): $$(objdir)/$(1).o
	$$(CXX) $$< -o $$@
endef

$(objdir)/%.o:%.cpp | $(objdir)
	$(CXX) -std=c++14 $($(basename $(<F))_INCLUDES) $(CPPFLAGS) $(CXXFLAGS) -c $< -o $@


$(objdir):
	$(MKDIR_P) $@

%.dat: %
	$(info Executing './$< $(BENCHMARK_TIMES) $(BENCHMARK_SIZE)' for generating benchmark file $@)
	$(file > $@,$(shell ./$< $(BENCHMARK_TIMES) $(BENCHMARK_SIZE)))

-include $(foreach dep,$(SOURCES:.cpp=.d), $(objdir)/$(dep))
