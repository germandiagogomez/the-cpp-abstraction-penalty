#include <vector>
#include <algorithm>
#include <string>
#include <bitset>
#include <chrono>
#include <iostream>

#include "util/benchutil.hpp"

namespace c = std::chrono;

/** Sieve table for the first UpToNumber natural numbers */
template <std::size_t UpToNumber>
class sieve_table {
public:
    void set(std::size_t nat_number, bool value = true) noexcept {
        repr_.set((nat_number / 2) - 1, value);
    }

    constexpr std::size_t size() const noexcept {
        return repr_.size();
    }

private:
    std::bitset<(UpToNumber/2) - 1> repr_;
};


constexpr std::size_t ct_sqrt(std::size_t n, std::size_t i = 1) noexcept {
    return n == i ? n : (i * i < n ? ct_sqrt(n, i + 1) : i);
}


template <std::size_t NatNumber>
void mark_sieve_for_number(sieve_table<NatNumber> & table, int current_number) noexcept {
    std::size_t sieve_start = current_number * current_number;
    table.set(sieve_start);

    std::size_t step_size = 2 * current_number;
    sieve_start += step_size;

    std::size_t sieve_end = NatNumber;
    for (std::size_t i = sieve_start; i <= sieve_end;
         i += step_size) {
        if (i % current_number == 0)
            table.set(i);
    }
}


template <std::size_t NatNumber>
sieve_table<NatNumber> execute_sieve() noexcept {
    sieve_table<NatNumber> table;

    for (int i = 3; i < ct_sqrt(NatNumber); i += 2) {
        mark_sieve_for_number(table, i);
    }
    return table;
}


int main(int argc, char * argv[]) {
    using namespace std;
    using namespace benchmarks::util;

    int times_exe = std::stoi(argv[1]);


    std::vector<std::chrono::milliseconds> times;
    times.reserve(times_exe);

    for (int i = 0; i < times_exe; ++i) {
        c::milliseconds total_time;
        std::tie(total_time, std::ignore) =
            time_it([] { return execute_sieve<100'000'000u>(); });
        times.push_back(total_time);
    }


    sort(begin(times), end(times));
    std::cout << times[times.size()/2].count() << ' ';
}
