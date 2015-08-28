#include <tuple>
#include <limits>
#include <cassert>
#include <random>
#include <sstream>
#include <algorithm>
#include <string>
#include <vector>
#include <chrono>
#include <iostream>

namespace c = std::chrono;
namespace s = std;


template <class F>
auto time_it(F && f) {
    auto start = c::high_resolution_clock::now();
    auto res = f();
    auto end = c::high_resolution_clock::now();

    return std::make_tuple(
        c::duration_cast<c::milliseconds>(end - start),
        res);
}


int generate_int() {
    static s::random_device rd;
    static s::mt19937 mt(rd());
    static s::uniform_int_distribution<int> dist(
        s::numeric_limits<int>::min(),
        s::numeric_limits<int>::max());

    return dist(mt);
}


auto generate_ints(int n) {
    s::vector<s::string> numbers(n);

    s::generate(s::begin(numbers),
                s::end(numbers),
                [] { return s::to_string(generate_int()); });

    s::string result;
    for (auto const & s : numbers) {
        result += s;
        result += ' ';
    }
    return result;
}


int read_numbers(s::string const & data) {
    std::istringstream buff_data{data};
    int num_ints_read = 0;
    int num_read{};
    while (buff_data >> num_read) ++num_ints_read;

    return num_ints_read;
}

int main(int argc, char * argv[]) {
    using namespace std;
    int times_exe = std::stoi(argv[1]);
    int num_of_ints = std::stoi(argv[2]);

    std::vector<std::chrono::milliseconds> times;
    times.reserve(times_exe);


    for (int i = 0; i < times_exe; ++i) {
        c::milliseconds total_time;
        auto numbers_string = generate_ints(num_of_ints);
        int nums_read = 0;

        std::tie(total_time, nums_read) =
            time_it([&numbers_string]() {  return read_numbers(numbers_string); });
        assert(nums_read == num_of_ints);
        times.push_back(total_time);
    }


    sort(begin(times), end(times));
    std::cout << times[times.size()/2].count() << ' ';
}
