srcdir := $(dir $(realpath $(lastword $(MAKEFILE_LIST))))

include $(srcdir)/base_makefile.mk

COMPILERS := clang++-3.6 g++

define plot-benchmark-compiler
plot-benchmark-$(1): CXX := $(1)
plot-benchmark-$(1): benchmark-$(1)
endef


plot: $(foreach compiler,$(COMPILERS), plot-benchmark-$(compiler))


$(foreach compiler,$(COMPILERS),$(eval $(call plot-benchmark-compiler,$(compiler))))
