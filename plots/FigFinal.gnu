#graficos: Encontrando o ponto crítico

reset
set size 0.85
set origin 0,0
set terminal epslatex colour  10
set output 'fig.eps'
set print 'fitpar.dat'   #set print file


TITLE = "Finite size scaling: $\\langle W^2\\rangle/dim$ vs $T$" ##TITLE##
#set title TITLE offset char 0, char -0.2

##set nokey   #set key at 0.04,2
set key r noinvert samplen 1 spacing 3 width 2 height 1.6

##look
#set bars small
#set style fill transparent pattern 7

##configure (x,y) coordinates
set xtics 2
set mxtics 2
set xrange [0:25]
set xlabel "\\Large{\\rotatebox{0}{$\\frac{\\Delta}{t}$}}" offset 0,0

set ytics auto
set mytics 5
set yrange [0.0:2.1]
set ylabel "\\Large{\\rotatebox{-90}{$\\frac{T_c}{t}$}}" offset 1.5,0

e=31
g(x)= (13 < x && x < 35 ) ? d*(e-x)**f : 1/0

FIT_LIMIT =1e-20
fit g(x) "tcVSdelta.dat"  u 1:2 ev ::7 via d,e,f

print d,e,f

##include labels
#set label 1 "$(\\Delta_c-\\Delta)^\%.3g$",f at 20,0.15 front   ##LABEL1##
#set arrow from 0.043,0.32 to 0.043,0.52 nohead lw 0.5 lt 3 lc 0 front


#J=1
plot    "tcVSdelta.dat" u 1:2:3 t"" w yerror lt 1 lw 0.5 lc 0 pt 6 ps 1, \
	 g(x) t"" lt 1 lc 3

 
######################################
# zoom

set origin 0.345,0.39
set size 0.48,0.48

set xtics 2 offset 0 
set mxtics 2
set xrange [16:24]

set ytics 0.05
set mytics 5
set yrange [0.0:0.2]

unset key
#set nolabel 1
set label 1 "$(\\Delta_c-\\Delta)^{\%.3g}$",f at 19,0.15 front   ##LABEL1##
set xlabel ""
set ylabel ""
#set label 1 "(a)" at 0.0864,0.328 front
#set label 7 "\\tiny{$P_{c}$}" at 0.0615,0.375


e=31
g(x)= (14 < x && x < 35 ) ? d*(e-x)**f : 1/0

FIT_LIMIT =1e-20
fit g(x) "tcVSdelta.dat"  u 1:2 ev ::7 via d,e,f

plot    "tcVSdelta.dat"   u 1:2:3   t"" w yerror lt 1 lw 0.5 lc 0 pt 6 ps 1.2, \
	g(x) t"" lt 1 lc 3 lw 0.5


unset multiplot
######################################

##run latex figures
##set output 'fig.tex'
rep

set output
set term x11

!latex 'figure-gnuplot.tex'
!dvips 'figure-gnuplot.dvi'
!dvipdf 'figure-gnuplot.dvi'
!pdfcrop --margins '1 1 1 1' 'figure-gnuplot.pdf'    
!mv figure-gnuplot-crop.pdf conc-w.pdf
!ps2epsi figure-gnuplot.ps   
!cp  figure-gnuplot.epsi conc-w.eps

!mv conc-w.eps hardcore.eps ##FIGNAMEEPS##
!mv conc-w.pdf hardcore.pdf ##FIGNAMEPDF##
!rm figure-gnuplot.dvi figure-gnuplot.ps figure-gnuplot.epsi figure-gnuplot.aux figure-gnuplot.log fig.eps fig.tex figure-gnuplot.pdf

set term x11
