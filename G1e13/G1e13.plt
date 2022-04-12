 set  styl data lines

 set xlabel "n"

 set ylabel "diferencias"

 set xzeroaxis

 #set key bottom

 set key left

 #set xrange [-0.1:1.57]
 #set yrange [-1.5:1.5]



 ###################################################################################

 set terminal wxt size 800,600 enhanced font 'Helvetica,12 ' persist
 set grid               # enable the grid
 set title " Diferencia ( suma1 - n * 0.1_{wp }) [caso b)]"

 plot 'datossal/a_y_suma_b.dat' u 1:4 w p t "diferencia (suma1 - n * 0.1_{wp})"

 set terminal pngcairo enhanced size 900,675

 set output "grafs/PG1e13-a-y-b.png "

 replot



 ####################################################################################

 set terminal wxt 2 size 800,600 enhanced font 'Helvetica,12' persist



 set title " Diferencia (suma2 - n * 100._{wp}) [(caso c)]"


 plot 'datossal/a_y_suma_c.dat' u 1:4 w p   t " diferencia ( suma2 - n * 100._{wp })"



 set terminal pngcairo enhanced size 900,675

 set output "grafs/PG1e13-a-y-c.png "



 replot


 #########################################################################################


 set terminal wxt 3 size 800,600 enhanced font 'Helvetica,12' persist


 set grid               # enable the grid

 set title "Problema 13, Guía 1"

 plot "datossal/a_y_suma_b.dat" u 1:4 w p  t "diferencia (suma1 - n * 0.1 _{wp})", \
 "datossal/a_y_suma_c.dat" u ($1 *1000):4 w p  t "diferencia (suma2 - n * 100._{wp})"

 set terminal pngcairo enhanced size 900,675

 set output "grafs/PG1e13-a-b-y-c.png"

 replot



##############################################################################################################

 set terminal wxt 4 size 800,600 enhanced font 'Helvetica,12 ' persist

 set grid               # enable the grid

 set logscale x

 set title "Problema 13, Guía 1"



 plot 'datossal/a_y_suma_b.dat' u 1:4 w p  t " diferencia (suma1 - n * 0.1_{wp})", \
'datossal/a_y_suma_c.dat' u ($1*1000):4 w p  t  " diferencia (suma2 - n * 100._{wp})"


 set terminal pngcairo enhanced size 900,675

 set output "grafs/PG1e13-a-b-y-c-logx.png "

 replot



 ###########################################################################################################

 set terminal wxt 5 size 800,600 enhanced font 'Helvetica,12' persist

 set grid               # enable the grid

 set logscale x

 set logscale y

 set title "Problema 13, Guía 1"



 plot 'datossal/a_y_suma_b.dat' u 1:(abs($4)) w p t "módulo de la diferencia ( suma1 - n * 0.1_{wp})", \
 'datossal/a_y_suma_c.dat' u ($1 *1000) :(abs($4)) w p  t "módulo de la diferencia ( suma2 - n * 100._{wp})"



 set terminal pngcairo enhanced size 900,675
 set grid               # enable the grid
 set output "grafs/PG1e13-a-b-y-c-logx-logy.png "

 replot



 exit
