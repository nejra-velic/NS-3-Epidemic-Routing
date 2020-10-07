set terminal png
set output "results1.png"
set title "CDF for varying transmission range"
set xlabel "Packet delivery latency [s]"
set ylabel "Percent of packet delivered"
set border linewidth 2


set grid ytics
set grid xtics
set logscale x 10

set key outside
set style line 1 linecolor rgb 'red' linetype 1 linewidth 1
set style line 2 linecolor rgb 'blue' linetype 1 linewidth 1
plot "results250.dat" using 1:2 with lines title "250 m", \
     "results100.dat" using 1:2 with lines  title "100 m", \
     "results50.dat" using 1:2 with lines  title "50 m", \
	"results25.dat" using 1:2 with lines  title "50 m"


