CXX := clang++
CPPFLAGS := -DNDEBUG
CXXFLAGS := -std=c++14 -O3

CPPFLAGS += -MMD -MP

srcdir := $(dir $(realpath $(lastword $(MAKEFILE_LIST))))
VPATH := $(srcdir)

base_builddir := $(CURDIR)/build
builddir := $(base_builddir)-$(CXX)
plotdir := $(CURDIR)/plot-output
objdir := $(builddir)/.objs


MKDIR_P := mkdir -p
SOURCES := $(notdir $(wildcard $(srcdir)/*.cpp))
TARGETS := $(foreach s,$(SOURCES:.cpp=),$(builddir)/$(s))
OBJECTS := $(foreach s,$(SOURCES:.cpp=.o),$(objdir)/$(s))
ranges_sieve_INCLUDES := -I/Users/germandiago/range-v3/include

COMPILERS := clang++ g++-5


all: $(TARGETS)

plot: | $(plotdir)
	$(srcdir)/scripts/make-plots.sh $(srcdir) $(plotdir) $(COMPILERS)
$(TARGETS): $(builddir)/% : $(objdir)/%.o
	$(CXX) $< -o $@


$(plotdir):
	mkdir $@

$(objdir)/%.o:%.cpp | $(objdir)
	$(CXX) $($(basename $(notdir $@))_INCLUDES) $(CPPFLAGS) $(CXXFLAGS) -c $< -o $@


$(objdir):
	$(MKDIR_P) $@

benchmark: del-benchfiles $(TARGETS)
	$(srcdir)/scripts/execute-benchmarks.sh $(CXX) $(TARGETS)


del-benchfiles:
	-rm -rf $(TARGETS).dat


clean-except-plotdata:
	-rm -rf $(foreach comp,$(COMPILERS),$(base_builddir)-$(comp))

clean:
	-rm -rf $(foreach comp,$(COMPILERS),$(base_builddir)-$(comp)) $(plotdir)




.PHONY: all benchmark clean del-benchfiles plot


-include $(foreach dep,$(SOURCES:.cpp=.d), $(objdir)/$(dep))
