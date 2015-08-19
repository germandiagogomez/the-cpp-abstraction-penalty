CXX := clang++
CPPFLAGS := -DNDEBUG
CXXFLAGS := -std=c++14 -O3

srcdir := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
VPATH := $(srcdir)

builddir := build-$(CXX)
objdir := $(builddir)/.objs


MKDIR_P := mkdir -p
SOURCES := raw_sieve.cpp ranges_sieve.cpp
TARGETS := $(foreach s,$(SOURCES:.cpp=),$(builddir)/$(s))
OBJECTS := $(foreach s,$(SOURCES:.cpp=.o),$(objdir)/$(s))
ranges_sieve_INCLUDES := -I/Users/germandiago/range-v3/include


all: $(TARGETS)

$(TARGETS): $(builddir)/% : $(objdir)/%.o
	$(CXX) $< -o $@

$(objdir)/%.o:%.cpp | $(objdir)
	$(CXX) $($(basename $(notdir $@))_INCLUDES) $(CPPFLAGS) $(CXXFLAGS) -c $< -o $@

$(objdir):
	$(MKDIR_P) $@

benchmark: $(TARGETS)
	$(srcdir)/scripts/execute-benchmarks.sh $(TARGETS)

clean:
	-rm -rf $(builddir)

.PHONY: all benchmark clean
