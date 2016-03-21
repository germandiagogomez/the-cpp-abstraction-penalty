#include <limits>
#include <tuple>
#include <iostream>
#include <cassert>
#include <random>
#include <cstdio>
#include <algorithm>
#include <string>
#include <vector>
#include <chrono>

#include "util/benchutil.hpp"
#include "util/random_generate.hpp"


namespace s = std;

namespace c = std::chrono;

using benchmarks::util::generate_ints_string;


int read_numbers(s::string const & data) {
    int num_read{};
    int num_ints_read = 0;

    const char * beg = data.c_str();
    int offset = 0;
    int read_chars{};
    while (sscanf(beg + offset, "%d%n", &num_read, &read_chars) == 1) {
        ++num_ints_read;
        offset += read_chars;
    }
    return num_ints_read;
}


int main(int argc, char * argv[]) {
    using namespace std;
    using namespace benchmarks::util;
    int times_exe = std::stoi(argv[1]);
    int num_of_ints = std::stoi(argv[2]);

    std::vector<std::chrono::milliseconds> times;
    times.reserve(times_exe);


    for (int i = 0; i < times_exe; ++i) {
        c::milliseconds total_time;
        auto numbers_string = generate_ints_string(num_of_ints);
        int nums_read = 0;

        std::tie(total_time, nums_read) =
            time_it_milliseconds([&numbers_string]() {  return read_numbers(numbers_string); });
        assert(nums_read == num_of_ints);
        times.push_back(total_time);
    }


    sort(begin(times), end(times));
    std::cout << times[times.size()/2].count() << ' ';
}
