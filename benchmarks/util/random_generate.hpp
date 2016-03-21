#ifndef BENCHMARKS_RANDOM_GENERATE_HPP_
#define BENCHMARKS_RANDOM_GENERATE_HPP_

#include <algorithm>
#include <random>
#include <limits>
#include <string>


namespace benchmarks {

namespace util {


auto double_generator() {
    namespace s = std;

    static s::random_device rd;
    s::mt19937 mt(rd());
    s::uniform_real_distribution<double> dist(
        s::numeric_limits<double>::min(),
        s::numeric_limits<double>::max());

    return [mt, dist]() mutable { return dist(mt); };
}


std::vector<double> generate_doubles
(unsigned int how_many) {
  using namespace std;
  vector<double> res(how_many);

  generate(begin(res), end(res),
	   double_generator());

  return res;
}

  
auto int_generator(int lower_bound_inclusive =
		 std::numeric_limits<int>::min(),
		 int upper_bound_inclusive =
		 std::numeric_limits<int>::max()) {
    namespace s = std;

    int const lbi = lower_bound_inclusive;
    int const ubi = upper_bound_inclusive;
    
    static s::random_device rd;
    s::mt19937 mt(rd());
    s::uniform_int_distribution<int>
      dist(lbi, ubi);
    
    return [dist, mt]() mutable { return dist(mt); };
}


std::vector<int> generate_ints
(unsigned int how_many) {
  using namespace std;
  vector<int> res(how_many);
  generate(begin(res), end(res),
	   int_generator());
  return res;
}
  

std::string generate_ints_string(int n) {
    namespace s = std;

    s::vector<int> numbers(n);
    s::generate(s::begin(numbers),
    		s::end(numbers),
		int_generator());
    
    s::string result;
    for (auto const & s : numbers) {
      result += s::to_string(s);
      result += ' ';
    }
    return result;
}


} //ns util

} //ns benchmarks

#endif
