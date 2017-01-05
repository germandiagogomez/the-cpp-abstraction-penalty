#include <algorithm>
#include <cstdlib>
#include <string>
#include <vector>
#include <chrono>
#include <iostream>
#include "util/benchutil.hpp"
#include "util/random_generate.hpp"

using namespace std;
namespace c = std::chrono;
using namespace benchmarks::util;

int greater_than(const void* p1, const void* p2) {
    const double * lhs = (const double *)p1;
    const double * rhs = (const double *)p2;
    
    if (*lhs > *rhs)
        return -1;
    else if (*lhs < *rhs)
        return 1;
    return 0;
}

int main(int argc, char * argv[]) {
    int times_exe = std::stoi(argv[1]);
    int data_size = std::stoi(argv[2]);

    vector<std::chrono::milliseconds> times;
    times.reserve(times_exe);

    for (int i = 0; i < times_exe; ++i) {
        c::milliseconds total_time;
        auto data = generate_doubles(data_size);
        int dummy = -1;
        tie(total_time, dummy) =
            time_it_milliseconds([&]() mutable {
                    qsort(data.data(),
                          data.size(),
                          sizeof(double),
                          &greater_than);
                    return 0;
                });

        times.push_back(total_time);
    }
    sort(begin(times), end(times));
    std::cout << times[times.size()/2].count() << ' ';
}
