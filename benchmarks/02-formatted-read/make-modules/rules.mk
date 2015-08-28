.SUFFIXES:
.DELETE_ON_ERROR:

BENCHMARK_SIZE = 100000
BENCHMARK_TIMES = 5

objdir := .objs

define make-suffixed-objects
$(objdir)/%-$(1).o:%.cpp | $$(objdir)
	$$(CXX) $$($$(basename $$(<F))_INCLUDES) $$(CPPFLAGS) $$(CXXFLAGS) -c $$< -o $$@
endef


define make-program
$(1): $$(objdir)/$(1).o
	$$(CXX) $$< -o $$@
endef

$(objdir)/%.o:%.cpp | $(objdir)
	$(CXX) $($(basename $(<F))_INCLUDES) $(CPPFLAGS) $(CXXFLAGS) -c $< -o $@


$(objdir):
	$(MKDIR_P) $@

%.dat: %
	$(info Executing './$< $(BENCHMARK_TIMES) $(BENCHMARK_SIZE)' for generating benchmark file $@)
	$(file > $@,$(shell ./$< $(BENCHMARK_TIMES) $(BENCHMARK_SIZE)))

-include $(foreach dep,$(SOURCES:.cpp=.d), $(objdir)/$(dep))
