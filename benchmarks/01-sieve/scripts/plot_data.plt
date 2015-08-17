reset
set ylabel "microseconds"
set terminal png
set output "output.png"
set grid ytics


set style fill solid 1.00 border 0
set style line 1 lc rgb "yellow"
set style line 2 lc rgb "blue"
set style data histograms
set bars 0.5
set key left
set yrange [0:*]
set key autotitle columnhead
unset xtics
set xtics ("clang" 0.15, "gcc" 1.15)

#plot "data.dat" every :2:2::2 u 1 title "ranges sieve", \
     #"" every :2:2:1:2 u 1 title "raw sieve"

      
      
     

