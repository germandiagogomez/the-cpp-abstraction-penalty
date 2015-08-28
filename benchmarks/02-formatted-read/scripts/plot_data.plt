reset
set ylabel "milliseconds"
set terminal png
set output output_plot
set grid ytics

set key left
set style fill solid 1.00 border 0
set style line 1 lc rgb "yellow"
set style line 2 lc rgb "blue"
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set yrange [0:*]
set xtic scale 0


plot filename using 2:xtic(1) ti col, '' u 3 ti col
      
      
     

