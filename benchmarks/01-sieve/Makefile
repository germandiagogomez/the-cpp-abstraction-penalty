CXX := clang++
CPPFLAGS := -DNDEBUG
CXXFLAGS := -std=c++14 -O3
INCLUDES := -I/Users/germandiago/range-v3/include


TARGETS := raw_sieve-$(CXX) ranges_sieve-$(CXX)
CLEANFILES := raw_sieve-$(CXX).dat ranges_sieve-$(CXX).dat \
		$(TARGETS) data.dat

all: $(TARGETS)


raw_sieve-$(CXX): raw_sieve.cpp
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) $< -o $@


ranges_sieve-$(CXX): ranges_sieve.cpp
	$(CXX) $(CPPFLAGS) $(INCLUDES) $(CXXFLAGS) $< -o $@


benchmark: $(TARGETS)
	-rm -f raw_sieve-$(CXX)-benchdata.dat ranges_sieve-$(CXX)-benchdata.dat
	./scripts/execute-benchmarks.sh $(TARGETS)


clean:
	-rm -rf $(CLEANFILES)




.PHONY: clean benchmark
