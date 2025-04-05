set terminal png size 1080,1080
set title "Numerical Iteration Methods"
set xlabel "Number of Iterations"
set ylabel "f(x)"
set output "img.png"


plot "data.dat" using 1:2 title "Bisection Method" smooth csplines  with linespoint lt 7 lc 8 dt 1 lw 1,\
'' using 1:3 title "Secant Method" smooth csplines  with linespoint lt 7 lc 7 dt 1 lw 1,\
'' using 1:4 title "Newton Raphson Method" smooth csplines with linespoint lt 7 lc 2 dt 1 lw 1,\
'' using 1:5 title "Fixed Point Method" smooth csplines with linespoint lt 7 lc 1 dt 1 lw 1

set terminal png size 1080,1080
set title "Euler's Method"
set xlabel "Step size"
set ylabel "y(x)"
set grid xtics ytics
set xtics 30
set ytics 100
set output "euler_img.png"

plot "euler_data.dat" using 1:2 title "Euler'rs Method" with linespoint lt 7 lc 8 lw 2,\
'' using 1:3 title "Exact" with linespoint lt 7 lc 2 lw 2
