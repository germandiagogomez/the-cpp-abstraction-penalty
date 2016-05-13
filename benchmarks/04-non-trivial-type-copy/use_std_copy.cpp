#include <algorithm>
#include <iostream>
#include <fstream>
#include "util/benchutil.hpp"
#include "util/random_generate.hpp"


namespace c = std::chrono;
namespace s = std;
using namespace benchmarks::util;

struct non_trivial_type {
  int field1;
  double field2;

  non_trivial_type() = default;
  non_trivial_type(int f1, double f2) : field1(f1), field2(f2) {}
  
  virtual  ~non_trivial_type() {}
};


static_assert(!std::is_trivially_copyable<non_trivial_type>{}, "");


int main(int argc, char * argv[]) {
  using namespace std;
  using namespace benchmarks::util;

  int times_exe = std::stoi(argv[1]);
  int num_of_structs = std::stoi(argv[2]);

  vector<std::chrono::milliseconds> times;
  times.reserve(times_exe);

  auto pick_a_struct = int_generator(0, num_of_structs - 1);
  
  for (int i = 0; i < times_exe; ++i) {
    c::milliseconds total_time;
    vector<non_trivial_type> src_vec(num_of_structs);
    vector<non_trivial_type> dest_vec(num_of_structs);

    auto generated_ints = generate_ints(num_of_structs);
    auto generated_doubles = generate_doubles(num_of_structs);

    for (std::size_t i = 0; i < num_of_structs; ++i)
      src_vec[i] = non_trivial_type{generated_ints[i], generated_doubles[i]};

    non_trivial_type res;
    tie(total_time, res) =
    time_it_milliseconds([&]() -> non_trivial_type {
	std::copy(begin(src_vec),
	 	  end(src_vec),
		  begin(dest_vec));
	
	return dest_vec[pick_a_struct()];
      });
    
    
    times.push_back(total_time);
    std::ofstream("do_not_optimize_away.txt") << res.field1; 
  }

  sort(begin(times), end(times));
  std::cout << times[times.size()/2].count() << ' ';
}
