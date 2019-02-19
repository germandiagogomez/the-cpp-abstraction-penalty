#include <cstring>
#include <iostream>
#include <algorithm>
#include <type_traits>
#include <fstream>
#include <vector>
#include "util/benchutil.hpp"
#include "util/random_generate.hpp"


namespace c = std::chrono;
namespace s = std;
using namespace benchmarks::util;


struct trivial_type {
    unsigned char field1;
};



static_assert(std::is_trivially_copyable<trivial_type>{}, "");

int main(int argc, char * argv[]) {
    using namespace std;
    using namespace benchmarks::util;

    int times_exe = std::stoi(argv[1]);
    int num_of_structs = std::stoi(argv[2]);

    vector<std::chrono::milliseconds> times;
    times.reserve(times_exe);

    auto pick_a_struct = int_generator(0, 0);
    for (int i = 0; i < times_exe; ++i) {
        c::milliseconds total_time;
        vector<trivial_type> src_vec(num_of_structs);

        auto generated_uchar = static_cast<unsigned char>(generate_ints(1)[0]);
        trivial_type res;
        tie(total_time, res) =
            time_it_milliseconds([&]() mutable {
                                     std::memset(src_vec.data(),
                                                 generated_uchar, src_vec.size());
                                     return src_vec[pick_a_struct()];
                                 });
        times.push_back(total_time);

        for (auto v : src_vec)
        std::ofstream("do_not_optimize.txt") << v.field1;
    }

    sort(begin(times), end(times));
    std::cout << times[times.size()/2].count() << ' ';

}
