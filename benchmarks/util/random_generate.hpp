#ifndef BENCHMARKS_RANDOM_GENERATE_HPP_
#define BENCHMARKS_RANDOM_GENERATE_HPP_


#include <random>
#include <limits>
#include <string>

namespace benchmarks {

namespace util {


int generate_int() {
    namespace s = std;

    static s::random_device rd;
    static s::mt19937 mt(rd());
    static s::uniform_int_distribution<int> dist(
        s::numeric_limits<int>::min(),
        s::numeric_limits<int>::max());

    return dist(mt);
}


std::string generate_ints(int n) {
    namespace s = std;

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


} //ns util

} //ns benchmarks

#endif
