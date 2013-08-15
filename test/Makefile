P = main

all: $(P).pdf $(P).ps

$(P).ps: $(P).dvi
	dvips $<

$(P).dvi: $(P).tex
	echo "\\usepackage[ps]{graphviz}" > options.tex
	latex -shell-escape $<
	latex -shell-escape $<

$(P).pdf: $(P).tex
	echo "\\usepackage[pdf]{graphviz}" > options.tex
	pdflatex -shell-escape $<
	pdflatex -shell-escape $<

clean:
	rm -f *~
	rm -f *.dot
	rm -f *.ps
	rm -f *.pdf
	rm -f options.tex
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
	rm -f $(P).ps
