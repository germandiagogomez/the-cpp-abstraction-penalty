.SUFFIXES:
.DELETE_ON_ERROR:

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
	$(info Executing './$< 5' for generating benchmark file $@)
	$(file > $@,$(shell ./$< 5))

-include $(foreach dep,$(SOURCES:.cpp=.d), $(objdir)/$(dep))
