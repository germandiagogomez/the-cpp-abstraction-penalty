#ifndef BENCHMARKS_UTIL_BENCHUTIL_HPP_
#define BENCHMARKS_UTIL_BENCHUTIL_HPP_


#include <chrono>
#include <tuple>


namespace benchmarks {

namespace util {

template <class F>
auto time_it_milliseconds(F && f) {
    namespace c = std::chrono;

    auto start = c::high_resolution_clock::now();
    auto res = f();
    auto end = c::high_resolution_clock::now();

    return std::make_tuple(
        c::duration_cast<c::milliseconds>(end - start),
        res);
}


}

}

#endif
