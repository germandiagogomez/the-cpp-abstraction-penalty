#include <tuple>

#include <cassert>
#include <sstream>
#include <algorithm>
#include <string>
#include <vector>
#include <chrono>
#include <iostream>

#include "util/benchutil.hpp"
#include "util/random_generate.hpp"


namespace c = std::chrono;
namespace s = std;
using namespace benchmarks::util;


int read_numbers(s::string const & data) {
    std::istringstream buff_data{data};
    int num_ints_read = 0;
    int num_read{};
    while (buff_data >> num_read) ++num_ints_read;

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
        auto numbers_string = generate_ints(num_of_ints);
        int nums_read = 0;

        std::tie(total_time, nums_read) =
	  time_it_milliseconds([&numbers_string]() {  return read_numbers(numbers_string); });
        assert(nums_read == num_of_ints);
        times.push_back(total_time);
    }


    sort(begin(times), end(times));
    std::cout << times[times.size()/2].count() << ' ';
}
