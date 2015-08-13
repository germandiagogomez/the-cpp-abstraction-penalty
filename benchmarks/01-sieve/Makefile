CXX := clang++
CPPFLAGS := -DNDEBUG
CXXFLAGS := -std=c++14 -O3
INCLUDES := -I/Users/germandiago/range-v3/include

all: raw_sieve-$(CXX) ranges_sieve-$(CXX)


raw_sieve-$(CXX): raw_sieve.cpp
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) $< -o $@


ranges_sieve-$(CXX): ranges_sieve.cpp
	$(CXX) $(CPPFLAGS) $(INCLUDES) $(CXXFLAGS) $< -o $@

clean:
	-rm -rf raw_sieve-$(CXX) ranges_sieve-$(CXX)



.PHONY: clean
