#Compiler

CXX := clang++-3.6
CPPFLAGS := -DNDEBUG
CXXFLAGS := -std=c++14 -O3
CPPFLAGS += -MMD -MP

GNUPLOT := gnuplot
CAT     := cat
LN_S    := ln -s
CP      := cp
