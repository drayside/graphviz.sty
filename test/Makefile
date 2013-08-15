.PHONY: all clean clobber

TPDF = $(shell find . -maxdepth 1 -type f -name 'pdf*.tex' | sort)
TPS = $(shell find . -maxdepth 1 -type f -name 'ps*.tex' | sort)
PS = $(TPS:.tex=.ps) 
PDF = $(TPDF:.tex=.pdf)


all: $(PS) $(PDF)

%.pdf: %.tex
	pdflatex -shell-escape $<
	pdflatex -shell-escape $<

%.dvi: %.tex
	latex -shell-escape $<
	latex -shell-escape $<

%.ps: %.dvi
	dvips $<

clean:
	rm -rf ./tmp
	rm -f master.gvpr
	rm -f master.graphviz
	rm -f *~
	rm -f *.dot
	rm -f *.ps
	rm -f *.pdf
	rm -f *.aux 
	rm -f *.glo 
	rm -f *.gls 
	rm -f *.idx 
	rm -f *.ilg 
	rm -f *.log 
	rm -f *.dvi 

clobber: clean
	rm -f $(PS)
	rm -f $(PDF)
