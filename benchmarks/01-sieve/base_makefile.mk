.SUFFIXES:
.DELETE_ON_ERROR:

CXX := clang++
CPPFLAGS := -DNDEBUG
CXXFLAGS := -std=c++14 -O3

CPPFLAGS += -MMD -MP
VPATH := $(srcdir)

objdir := .objs

MKDIR_P := mkdir -p
SOURCES := $(notdir $(wildcard $(srcdir)/*.cpp))
TARGETS := $(SOURCES:.cpp=)


ranges_sieve-$(CXX)_INCLUDES := -I$(srcdir)/../../submodules/range-v3/include

$(TARGETS): % : $(objdir)/%-$(CXX).o
	$(CXX) $< -o $@

%-${CXX}.dat: %
	$(info Executing './$< 5' for generating benchmark file $@)
	$(file > $@,$(shell ./$< 5))


$(objdir)/%-$(CXX).o:%.cpp | $(objdir)
	$(CXX) $($(basename $(<F))-$(CXX)_INCLUDES) $(CPPFLAGS) $(CXXFLAGS) -c $< -o $@

$(objdir):
	$(MKDIR_P) $@


benchmark-clang++-3.6: $(SOURCES:%.cpp=%-$(CXX).dat)


.PHONY: all

-include $(foreach dep,$(SOURCES:.cpp=.d), $(objdir)/$(dep))

.PHONY: print-vars
print-vars:
	@$(foreach V,$(sort $(.VARIABLES)),$(if $(filter-out environment% default automatic,$(origin $V)),$(info $V=$(value $V))))
