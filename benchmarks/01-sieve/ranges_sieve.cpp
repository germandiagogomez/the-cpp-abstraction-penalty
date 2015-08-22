#include <algorithm>
#include <string>
#include <bitset>
#include <vector>
#include <chrono>
#include <iostream>
#include <tuple>
#include "range/v3/view/iota.hpp"
#include "range/v3/view/stride.hpp"
#include "range/v3/view/filter.hpp"
#include "range/v3/view/take.hpp"
#include "range/v3/algorithm/for_each.hpp"
#include "range/v3/range_for.hpp"

namespace v = ranges::view;
namespace a = ranges::action;
namespace r = ranges;
namespace c = std::chrono;

template <class F>
auto time_it(F && f) {
    auto start = c::high_resolution_clock::now();
    auto res = f();
    auto end = c::high_resolution_clock::now();

    return std::make_tuple(
        c::duration_cast<c::milliseconds>(end - start),
        res);
}


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
auto mark_sieve_for_number(int current_number) noexcept {
    std::size_t sieve_start = current_number * current_number;
    std::size_t step_size = 2 * current_number;
    std::size_t sieve_end = NatNumber + 1;

    return
        v::stride(v::ints(sieve_start, sieve_end), step_size) |
        v::filter([current_number](int i) {
                return i % current_number == 0;
            });
}


template <std::size_t NatNumber>
sieve_table<NatNumber> execute_sieve() noexcept {
    sieve_table<NatNumber> table{};

    r::for_each(v::stride(v::ints((std::size_t)3u, ct_sqrt(NatNumber)), 2),
                [&table](auto i) {
                    RANGES_FOR(auto i, mark_sieve_for_number<NatNumber>(i))
                        table.set(i);
                });
    return table;
}


int main(int argc, char * argv[]) {
    using namespace std;

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
    for_each(begin(times), end(times),
             [](auto v) { std::cout << v.count() << ' '; });

    std::cout << argv[0] << '\n';
}
