P = graphviz

all: $(P).sty $(P).pdf $(P).ps

dist: all clean 
	zip -r $(P).zip *

$(P).sty: $(P).dtx
	latex $(P).ins

$(P).ps: $(P).dvi
	dvips $(P).dvi

$(P).pdf: $(P).ps
	ps2pdf $(P).ps

dvi: $(P).dvi

$(P).dvi: $(P).dtx $(P).sty
	latex -shell-escape $(P).dtx
	makeindex -s gglo.ist -o $(P).gls $(P).glo
	latex -shell-escape $(P).dtx

#dotps: $(P).dvi
#	dot -Tps -o MyGraph.ps MyGraph.dot
#	dot -Tps -o MyGraph2.ps MyGraph2.dot

clean:
	rm -f *~
	rm -f *.dot
	rm -f *.ps
	rm -f *.psbackup
	rm -f $(P).aux 
	rm -f $(P).glo 
	rm -f $(P).gls 
	rm -f $(P).idx 
	rm -f $(P).ilg 
	rm -f $(P).log 
	rm -f $(P).dvi 
	rm -f $(P).zip 

clobber: clean
	rm -f $(P).pdf
	rm -f $(P).sty
