reset
set ylabel "microseconds"
set terminal png
set output output_plot
set grid ytics


set style fill solid 1.00 border 0
set style line 1 lc rgb "yellow"
set style line 2 lc rgb "blue"
set style data histograms
set bars 0.5
set key left
set yrange [0:*]

set xtics ("clang" 0.15, "g++-5" 1.15)

plot "plot-output/all-benchmarks.dat" every 2 u 3 title "raw sieve", \
     "" every 2::1 u 3 title "ranges sieve"

      
      
     

