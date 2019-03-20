# plots

reset
set size 0.85
set origin 0,0
set terminal epslatex colour  10
set output 'fig.eps'
#set print 'fitpar.dat'   #set print file

TITLE = "Linear search results: Execution Time analysis" ##TITLE##
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
#set yrange [0:20000]
set ylabel "\\Large{\\rotatebox{0}{Execution time $t$ ($\\mu$s)}}" offset 1,0

##include labels
#set label 1 "$U_0=0.0$"  at 0.52,0.4 front   ##LABEL1##

f(x)= a + b*x

FIT_LIMIT =1e-20
fit f(x) "data/lsearch_time.dat"  u 1:2 via a,b

#print a,b


plot "data/lsearch_time.dat"   u 1:2   t"" lt 0 lc 3 pt 2 ps 1.5, \
     f(x) lt 1 lc 1


##run latex figures
set output 'fig.tex'
rep
set term x11

!latex 'figure-gnuplot.tex'
!dvips 'figure-gnuplot.dvi'
!dvipdf 'figure-gnuplot.dvi'
!pdfcrop 'figure-gnuplot.pdf'    #pdfcrop não funciona!
!mv figure-gnuplot-crop.pdf conc-w.pdf
!ps2epsi figure-gnuplot.ps   
!cp  figure-gnuplot.epsi conc-w.eps

!mv conc-w.eps lsearch_time.eps ##FIGNAMEEPS##
!mv conc-w.pdf lsearch_time.pdf ##FIGNAMEPDF##
!rm figure-gnuplot.dvi figure-gnuplot.ps figure-gnuplot.epsi figure-gnuplot.aux figure-gnuplot.log fig.eps fig.tex figure-gnuplot.pdf

set term x11
