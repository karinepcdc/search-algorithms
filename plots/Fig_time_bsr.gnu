# plots

reset
set size 0.85
set origin 0,0
set terminal epslatex colour  10
set output 'fig.eps'
#set print 'fitpar.dat'   #set print file

TITLE = "Binary search (recursive) results: Execution Time analysis" ##TITLE##
#set title TITLE offset char 0, char -0.2

##set nokey   #set key at 0.04,2
set key r noinvert samplen 1 spacing 3 width 2 height 0 

##configure (x,y) coordinates
set xtics auto
set mxtics 5
set xrange [0:100000000]
set xlabel "\\Large{\\rotatebox{0}{Array size $N$}}" offset 0,0

set ytics auto
set mytics 5
set yrange [0:800]
set ylabel "\\Large{\\rotatebox{0}{Execution time $t$ (ns)}}" offset 1,0

##include labels
#set label 1 "$U_0=0.0$"  at 0.52,0.4 front   ##LABEL1##

f(x)= a*log(b*x)

FIT_LIMIT =1e-20
fit f(x) "data/bsearch_rec_time.dat"  u 1:2 via a,b

#print a,b


plot "data/bsearch_rec_time.dat"   u 1:2   t"" w lp lt 1 lc 0 pt 1 ps 1, \
     f(x) t"f(x)= a*log(b*x)" lt 1 lw 2 lc 7


##run latex figures
set output 'fig.tex'
rep
set term x11

!latex 'figure-gnuplot.tex'
!dvipdf 'figure-gnuplot.dvi'
!pdfcrop 'figure-gnuplot.pdf'    
!mv figure-gnuplot-crop.pdf bsearch_rec_time.pdf ##FIGNAMEPDF##

!rm figure-gnuplot.dvi fig.eps figure-gnuplot.aux figure-gnuplot.log fig.tex figure-gnuplot.pdf

set term x11
