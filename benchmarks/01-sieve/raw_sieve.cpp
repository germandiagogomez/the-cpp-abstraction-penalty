#include <bitset>
#include <chrono>
#include <tuple>
#include <iostream>

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
    void set(std::size_t nat_number, bool value = true) {
        repr_.set((nat_number / 2) - 1, value);
    }

    constexpr std::size_t size() const {
        return repr_.size();
    }

private:
    std::bitset<(UpToNumber/2) - 1> repr_;
};


constexpr std::size_t ct_sqrt(std::size_t n, std::size_t i = 1) {
    return n == i ? n : (i * i < n ? ct_sqrt(n, i + 1) : i);
}


template <std::size_t NatNumber>
void mark_sieve_for_number(sieve_table<NatNumber> & table, int current_number) {
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
sieve_table<NatNumber> execute_sieve() {
    sieve_table<NatNumber> table;

    for (int i = 3; i < ct_sqrt(NatNumber); i += 2) {
        mark_sieve_for_number(table, i);
    }
    return table;
}


int main() {
    c::milliseconds total_time;
    std::tie(total_time, std::ignore) =
        time_it([] { return execute_sieve<100'000'000u>(); });

    std::cout << total_time.count() << "ms" << std::endl;
}
